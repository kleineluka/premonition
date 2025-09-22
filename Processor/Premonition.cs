#if UNITY_EDITOR
#pragma warning disable CS0414

using UnityEngine;
using UnityEditor;
using System;
using System.IO;
using System.Text;
using System.Collections.Generic;

// Premonition.cs is the main entry point for the pre-processor
namespace Luka.Backlace.Premonition
{

    public static class Processor
    {

        public static void lock_material(Material sourceMaterial, ProcessorSettings settings)
        {
            // sanity checks
            if (sourceMaterial == null || sourceMaterial.shader == null)
            {
                Debug.LogError("Premonitions: Invalid material or the material has no shader assigned.");
                return;
            }
            // get the path to the shader file
            string sourceShaderPath = AssetDatabase.GetAssetPath(sourceMaterial.shader);
            if (string.IsNullOrEmpty(sourceShaderPath) || !sourceShaderPath.EndsWith(".shader"))
            {
                Debug.LogError("Premonitions: Could not find the shader file for the material's shader.");
                return;
            }
            // get the path to the material file
            string sourceMaterialPath = AssetDatabase.GetAssetPath(sourceMaterial);
            if (string.IsNullOrEmpty(sourceMaterialPath))
            {
                Debug.LogError("Premonitions: Could not find the path for the source material.");
                return;
            }
            // generate the name for this locked shader
            string lockedShaderName = Naming.get_compact_name(settings.shaderNameType, settings.customShaderName, settings.randomNameLength);
            string sourceFileName = Path.GetFileNameWithoutExtension(sourceShaderPath);
            string lockedShaderPath = Path.GetDirectoryName(sourceMaterialPath) + "/" + settings.compactShaderFolder + "/" + sourceFileName + lockedShaderName + ".shader";
            // make the locked directory if it doesn't exist
            string lockedDirectory = Path.GetDirectoryName(lockedShaderPath);
            if (!Directory.Exists(lockedDirectory)) Directory.CreateDirectory(lockedDirectory);
            // take the shader and inline all its includes
            string inlinedShaderCode = ShaderBuilder.build_single_shader(sourceShaderPath, settings);
            if (string.IsNullOrEmpty(inlinedShaderCode))
            {
                Debug.LogError("Premonitions: Failed to process the shader includes.");
                return;
            }
            // now perform the first wave of optimisations on the whole shader file (ex. remove empty lines)
            if (settings.removeShaderComments) {
                inlinedShaderCode = Cleaner.remove_comments(inlinedShaderCode);
            }
            if (settings.removePropertyAttributes) {
                inlinedShaderCode = Cleaner.remove_header_attributes(inlinedShaderCode);
                inlinedShaderCode = Cleaner.remove_space_attributes(inlinedShaderCode);
            }
            if (settings.removeEmptyLines) {
                inlinedShaderCode = Cleaner.remove_empty_lines(inlinedShaderCode);
            }
            if (settings.optimizeWhitespace) {
                inlinedShaderCode = Cleaner.optimise_whitespace(inlinedShaderCode);
            }
            // split each pass into its own string
            ShaderParts shaderParts = ShaderParser.split_shader_parts(inlinedShaderCode);
            if (shaderParts == null || shaderParts.Passes.Count == 0)
            {
                Debug.LogError("Premonitions: Failed to parse the shader into passes.");
                return;
            }
            // 
            // grab all shader_feature/multi_compile directives activated in the material
            string[] activeKeywords = sourceMaterial.shaderKeywords;
            shaderParts = Markers.add_processor_info(settings, sourceMaterial, activeKeywords, shaderParts);
            // optimise each pass individually by removing unused keywords, etc.
            var optimisedPasses = new List<string>();
            foreach(var pass in shaderParts.Passes)
            {
                string optimisedPass = PassOptimiser.bake_defines(pass, activeKeywords, settings);
                optimisedPasses.Add(optimisedPass);
            }
            shaderParts.Passes = optimisedPasses;
            StringBuilder finalShaderBuilder = new StringBuilder();
            finalShaderBuilder.Append(shaderParts.PrePassContent);
            foreach (var pass in shaderParts.Passes)
            {
                finalShaderBuilder.Append(pass);
            }
            finalShaderBuilder.Append(shaderParts.PostPassContent);

            string finalShaderCode = finalShaderBuilder.ToString();
            // And finally, we write our new masterpiece to a file.
            File.WriteAllText(lockedShaderPath, finalShaderCode);
            AssetDatabase.Refresh();
        }

        // testing
        [MenuItem("Assets/Premonitions/Generate Inlined Shader", true)]
        private static bool ValidateGenerateLockedShader()
        {
            return Selection.activeObject is Material material && material.shader != null;
        }

        [MenuItem("Assets/Premonitions/Generate Inlined Shader", false, 1)]
        private static void GenerateLockedShaderFromMenu()
        {
            Material material = Selection.activeObject as Material;
            ProcessorSettings settings = new ProcessorSettings();
            lock_material(material, settings);
        }
    }

}
#endif // UNITY_EDITOR