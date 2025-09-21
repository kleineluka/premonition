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

        public static void LockMaterial(Material sourceMaterial, CompilerSettings settings)
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
            // generate the name for this locked shader
            string lockedShaderName = Helpers.GetLockedShaderName(settings.shaderNameType, settings.customShaderName, settings.randomNameLength);
            string sourceFileName = Path.GetFileNameWithoutExtension(sourceShaderPath);
            string lockedShaderPath = Path.GetDirectoryName(sourceShaderPath) + "/" + settings.lockedShaderFolder + "/" + sourceFileName + lockedShaderName + ".shader";
            // make the locked directory if it doesn't exist
            string lockedDirectory = Path.GetDirectoryName(lockedShaderPath);
            if (!Directory.Exists(lockedDirectory)) Directory.CreateDirectory(lockedDirectory);
            // FIRST STEP: take the shader and inline all its includes
            string inlinedShaderCode = ShaderBuilder.BuildSingleFileShader(sourceShaderPath, settings);
            if (string.IsNullOrEmpty(inlinedShaderCode))
            {
                Debug.LogError("Premonitions: Failed to process the shader includes.");
                return;
            }
            // SECOND STEP: split each pass into its own string
            ShaderParts shaderParts = ShaderParser.SplitShaderIntoParts(inlinedShaderCode);
            // THIRD STEP: grab all shader_feature/multi_compile directives activated in the material
            string[] activeKeywords = sourceMaterial.shaderKeywords;
            shaderParts = Helpers.AddPreProcessorInfo(settings, sourceMaterial, activeKeywords, shaderParts);
            // FOURTH STEP: for each pass, remove unused shader_features/multi_compiles



            // FIFTH STEP: for each pass, remove those keyword declarations to prevent extra compiling after locking
            // SIXTH STEP: for each pass, remove unused functions
            // SEVENTH STEP: for each pass, remove unused variables
            // EIGHTH STEP: for each pass, apply whitespace optimizations
            // NINTH STEP: apply final optimizations (remove comments excluding PREMONITIONS comments actually this will have to go earlier, rename shader, etc)
            // TENTH STEP: save the locked shader asset


            

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
            CompilerSettings settings = new CompilerSettings();
            LockMaterial(material, settings);
        }
    }

}
#endif // UNITY_EDITOR