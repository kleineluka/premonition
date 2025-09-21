#if UNITY_EDITOR
#pragma warning disable CS0414

using UnityEngine;
using UnityEditor;
using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Text.RegularExpressions;

// Helpers.cs contains utility functions for the pre-processor
namespace Luka.Backlace.Premonition
{

    // functions for generating shader names based on different naming schemes
    public static class Naming
    {
        private static readonly System.Random random = new System.Random();

        // generate a random string of given length, using upper and lowercase letters
        public static string get_random_name(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            var stringBuilder = new StringBuilder(length);
            for (int i = 0; i < length; i++)
            {
                stringBuilder.Append(chars[random.Next(chars.Length)]);
            }
            return "_Locked_" + stringBuilder.ToString();
        }

        // generate a simple name based on the current unix timestamp
        public static string get_timestamp_name()
        {
            long timestamp = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
            return "_Locked_" + timestamp.ToString();
        }

        // get the locked shader name based on the selected naming scheme
        public static string get_compact_name(ShaderNameType shaderNameType, string customShaderName, int randomNameLength)
        {
            string lockedShaderName;
            switch (shaderNameType)
            {
                case ShaderNameType.Custom:
                    lockedShaderName = customShaderName;
                    break;
                case ShaderNameType.Random:
                    lockedShaderName = get_random_name(randomNameLength);
                    break;
                case ShaderNameType.Timestamp:
                default:
                    lockedShaderName = get_timestamp_name();
                    break;
            }
            return lockedShaderName;
        }
    }

    // for leaving debug output and comments in the generated shader
    public class Markers
    {
        // add a comment block to the start of the shader with pre-processor info
        public static ShaderParts add_processor_info(ProcessorSettings settings, Material sourceMaterial, string[] activeKeywords, ShaderParts shaderParts)
        {
            if (!settings.addCompilerComments || shaderParts == null) return shaderParts;
            var commentBlockBuilder = new StringBuilder();
            commentBlockBuilder.AppendLine("// ----------------------------------------");
            commentBlockBuilder.AppendLine("// PREMONITIONS: Compact Material State");
            commentBlockBuilder.AppendLine($"// Source Material: {(sourceMaterial != null ? sourceMaterial.name : "Unknown")}");
            commentBlockBuilder.AppendLine("// Active Keywords:");
            if (activeKeywords != null && activeKeywords.Length > 0)
            {
                foreach (string keyword in activeKeywords)
                {
                    commentBlockBuilder.AppendLine($"// - {keyword}");
                }
            }
            else
            {
                commentBlockBuilder.AppendLine("// - None");
            }
            commentBlockBuilder.AppendLine("// ----------------------------------------");
            commentBlockBuilder.AppendLine();
            shaderParts.PrePassContent = commentBlockBuilder.ToString() + shaderParts.PrePassContent;
            return shaderParts;
        }
    }

    public static class Cleaner
    {
        // remove all comments from shader code
        public static string RemoveComments(string code)
        {
            var re = @"(@(?:""[^""]*"")+|""(?:[^""\\]|\\.)*""|'(?:[^'\\]|\\.)*')|//.*|/\*(?s:.*?)\*/";
            return Regex.Replace(code, re, "$1");
        }

        // trim excess whitespace from shader code
        public static string OptimizeWhitespace(string code)
        {
            // replace multiple spaces with a single space
            code = Regex.Replace(code, @"[ \t]+", " ");
            // replace multiple newlines with a single newline
            code = Regex.Replace(code, @"(\r\n|\r|\n)+", "\n");
            // trim leading and trailing whitespace from each line
            var lines = code.Split(new[] { "\r\n", "\r", "\n" }, StringSplitOptions.None);
            for (int i = 0; i < lines.Length; i++)
            {
                lines[i] = lines[i].Trim();
            }
            // rejoin lines
            code = string.Join("\n", lines);
            // trim leading and trailing whitespace from the entire code
            code = code.Trim();
            return code;
        }

        // remove all empty/whitespace-only lines from shader code
        public static string RemoveEmptyLines(string code)
        {
            return System.Text.RegularExpressions.Regex.Replace(code, @"^\s*$\r?\n", string.Empty, System.Text.RegularExpressions.RegexOptions.Multiline);
        }
    }

}
#endif // UNITY_EDITOR