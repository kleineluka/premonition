# premonition 👁️
> *But I'm trying to see if my vision comes true or not...*

Generate compact shaders for a material with one click! 

## What is Premonition? 🔮

Premonition is a Unity editor utility that processes a material's shader to create a compact version of it, containing only the shader variants that are actually used by the material. This can significantly reduce shader compilation times and improve performance. It also makes the file sizes smaller, inlines all code into one file for distribution, and removes unnecessary parts of the shader code.

## Supported Settings 🕯️

Using Premonition requires passing a `ProcessorSettings` object. This object contains the following settings:

- `shaderNameType` - How to name the generated shader. Options are Timestamp, Random, or Custom.
- `addCompilerComments` - Whether to add comments in the shader code indicating which parts were added/modified for clarity.
- `removeShaderComments` - Whether to remove comments from the original shader code.
- `optimizeWhitespace` - Whether to optimize whitespace in the shader code.
- `removeEmptyLines` - Whether to remove empty lines from the shader code.
- `removePropertyAttributes` - Whether to remove attributes from shader properties (ex. [Header], [Space])
- `randomiseGrabpass` - Whether to randomise the name of GrabPasses to avoid conflicts.
- `hideShaderName` - Whether to hide the shader name in the generated shader (ex. `Shader "Hidden/..."`).
- `trackErrors` - Whether to add error tracking code to help debug issues.
- `addMarker` - Whether to add a marker comment to the generated shader to indicate it was processed by Premonition.
- `addDebug` - Whether to add a debug section to the generated shader with the Premonition settings used.
- `skipMarked` - Whether to skip processing if the shader already has a Premonitions marker.
- `naiveGrabpassDetection` - Whether to use a naive method for detecting GrabPasses (may over-hit but will catch more cases).
- `customShaderName` - The custom name to use if `shaderNameType` is set to Custom.
- `compactShaderFolder` - The folder to save the generated compact shaders in, relative to the material's folder.
- `randomNameLength` - The length of the random name to generate if `shaderNameType` is set to Random.
- `ignoreIncludes` - A list of include files to ignore when inlining includes (ex. `UnityCG.cginc`).
- `ignoreKeywords` - A list of shader keywords to ignore when determining which variants to keep (ex.`FOG_EXP2`).

## Adding to Your Shader 🪄

Add the `Processor` folder into wherever your shader editor is. In the namespace of the scripts of the project, replace `Luka.Example.Premonition` with whatever your namespace is, so for example, it could be `MyProject.Premonition`. You can then call the `Premonition.Processor.compact_material` function, passing in the material you want to process and a `ProcessorSettings` object with your desired settings.

## Return Values 🌠

The `compact_material` function returns a `CompactResultData` object containing the following fields: `Result`, `ShaderName`, and `ShaderPath`. `Result` is an enum of type `CompactResult` indicating the outcome of the operation. Possible values are: Success, AlreadyLocked, ErrorInliningIncludes, ErrorSplittingShader, InvalidMaterial, InvalidShader, ShaderNotFound, MaterialNotFound. `ShaderName` is the name of the generated shader and `ShaderPath` is the path to the generated shader file - of course, these will be null if the operation was not successful.