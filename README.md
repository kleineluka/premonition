# premonition 👁️
> *But I'm trying to see if my vision comes true or not...*

Generate compact shaders for a material with one click! Stop Unity from compiling every possible shader variant and only keep the ones you need, alongside other cleanups~

## Supported Settings 🕯️

Using Premonition requires passing a `CompilerSettings` object. This object contains the following settings:

- `shaderNameType`: Determines how the new shader will be named. You can choose between `Timestamp`, `Custom`, or `Random`.
- `addCompilerComments`: Adds comments about the compilation process to the generated shader.
- `removeShaderComments`: Strip all comments from the original shader.
- `removeDeadFunctions`: Removes unused functions.
- `removeDeadVariables`: Removes unused variables.
- `optimizeWhitespace`: Removes unnecessary whitespace.
- `randomiseGrabpass`: Avoid fighting over GrabPass names by randomizing them.
- `hideShaderName`: Hide the compact shader variant.
- `trackErrors`: Comment any errors in the generated shader.
- `addLockedMarker`: Adds a marker to the generated shader to indicate it was created by Premonitions.
- `preventReLocking`: Prevents an already-compacted shader from being processed again.
- `customShaderName`: The custom name to use if `shaderNameType` is set to `Custom`.
- `compactShaderFolder`: The name of the folder to save the compacted shader in, relative to the material's location.
- `randomNameLength`: Sets the length of the name if `shaderNameType` is set to `Random`.