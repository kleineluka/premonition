#if UNITY_EDITOR
#pragma warning disable CS0414

using UnityEngine;
using UnityEditor;
using System;
using System.IO;
using System.Text;
using System.Collections.Generic;

// Structures.cs contains shared data structures for the pre-processor
namespace Luka.Backlace.Premonition
{

    // different types of shader naming schemes
    public enum ShaderNameType
    {
        Timestamp = 0,
        Random = 1,
        Custom = 2
    }

    // settings to share between components of the pre-processor
    public class ProcessorSettings
    {
        public ShaderNameType shaderNameType = ShaderNameType.Timestamp;
        public bool addCompilerComments = true;
        public bool removeShaderComments = true;
        public bool removeDeadFunctions = true;
        public bool removeDeadVariables = true;
        public bool optimizeWhitespace = true;
        public bool randomiseGrabpass = true;
        public bool hideShaderName = true;
        public bool trackErrors = true;
        public bool addLockedMarker = true;
        public bool preventReLocking = true;
        public string customShaderName = "_CompactCustomNameExample";
        public string compactShaderFolder = "CompactShaders";
        public int randomNameLength = 16;
        public ProcessorSettings() { }
    }

    // container for various parts of a shader
    public class ShaderParts
    {
        public string PrePassContent { get; set; }
        public List<string> Passes { get; set; }
        public string PostPassContent { get; set; }

        public ShaderParts()
        {
            PrePassContent = "";
            Passes = new List<string>();
            PostPassContent = "";
        }
    }

}
#endif // UNITY_EDITOR