#if UNITY_EDITOR
#pragma warning disable CS0414

using UnityEngine;
using UnityEditor;
using System;
using System.IO;
using System.Text;
using System.Collections.Generic;

// Helpers.cs contains utility functions for the pre-processor
namespace Luka.Backlace.Premonition
{

    public static class Helpers
    {
        private static readonly System.Random random = new System.Random();

        // generate a random string of given length, using upper and lowercase letters
        public static string GenerateRandomName(int length)
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
        public static string GenerateTimestampName()
        {
            long timestamp = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
            return "_Locked_" + timestamp.ToString();
        }

        public static string GetLockedShaderName(ShaderNameType shaderNameType, string customShaderName, int randomNameLength)
        {
            string lockedShaderName;
            switch (shaderNameType)
            {
                case ShaderNameType.Custom:
                    lockedShaderName = customShaderName;
                    break;
                case ShaderNameType.Random:
                    lockedShaderName = GenerateRandomName(randomNameLength);
                    break;
                case ShaderNameType.Timestamp:
                default:
                    lockedShaderName = GenerateTimestampName();
                    break;
            }
            return lockedShaderName;
        }

        public static ShaderParts AddPreProcessorInfo(ProcessorSettings settings, Material sourceMaterial, string[] activeKeywords, ShaderParts shaderParts)
        {
            if (!settings.addCompilerComments || shaderParts == null) return shaderParts;
            var commentBlockBuilder = new StringBuilder();
            commentBlockBuilder.AppendLine("// ----------------------------------------");
            commentBlockBuilder.AppendLine("// PREMONITIONS: Locked Material State");
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

}
#endif // UNITY_EDITOR