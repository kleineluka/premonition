// ----------------------------------------
// PREMONITIONS: Compact Material State
// Source Material: Main 4
// Active Keywords:
// - _ANIMEMODE_RAMP
// - _BACKLACE_DEPTH_RIMLIGHT
// - _BACKLACE_TOON
// - _SPECULARMODE_STANDARD
// - BSSBLOOMFOGTYPE_HEIGHT
// - VIGNETTE_MASKED
// - _IRIDESCENCEMODE_PROCEDURAL
// - _LIGHTINGMODE_FLAT
// - _OVERRIDERENDERQUEUE_ON
// - _RIM2STYLE_POIYOMI
// - _RIMSTYLE_POIYOMI
// - _STOCHASTICMODE_DELIOT_HEITZ
// - _TPS_ANIMATEDTOGGLE_ON
// ----------------------------------------


Shader "luka/indev/backlace_poo"
{
Properties
{





[Enum(Opaque, 0, Cutout, 1, Fade, 2, OpaqueFade, 3, Transparent, 4, Premultiply, 5, Additive, 6, Soft Additive, 7, Multiplicative, 8, 2Multiplicative, 9)] _BlendMode ("Rendering Mode", Float) = 0

[Toggle] _OverrideBaseBlend ("Override Base Blend", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("Src Blend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("Dst Blend", Float) = 0
[Enum(UnityEngine.Rendering.BlendOp)] _BlendOp ("Blend Operation", Float) = 0

[Toggle] _OverrideAddBlend ("Override Additive Blend", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _AddSrcBlend ("Additive Src Blend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _AddDstBlend ("Additive Dst Blend", Float) = 1
[Enum(UnityEngine.Rendering.BlendOp)] _AddBlendOp ("Additive Blend Operation", Float) = 0

[Toggle] _OverrideZWrite ("Override ZWrite", Float) = 0
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 1

[Toggle] _OverrideRenderQueue ("Override Render Queue", Float) = 0

[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Int) = 2

[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Int) = 3

[IntRange] _StencilRef ("Stencil Reference", Range(0, 255)) = 0
[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Comparison", Int) = 8 
[Enum(UnityEngine.Rendering.StencilOp)] _StencilPass ("Stencil Pass Op", Int) = 0 
[Enum(UnityEngine.Rendering.StencilOp)] _StencilFail ("Stencil Fail Op", Int) = 0 
[Enum(UnityEngine.Rendering.StencilOp)] _StencilZFail ("Stencil ZFail Op", Int) = 0 

[IntRange] _OutlineStencilRef ("Outline Stencil Reference", Range(0, 255)) = 0
[Enum(UnityEngine.Rendering.CompareFunction)] _OutlineStencilComp ("Outline Stencil Comparison", Int) = 8 
[Enum(UnityEngine.Rendering.StencilOp)] _OutlineStencilPass ("Outline Stencil Pass Op", Int) = 0 
[Enum(UnityEngine.Rendering.StencilOp)] _OutlineStencilFail ("Outline Stencil Fail Op", Int) = 0 
[Enum(UnityEngine.Rendering.StencilOp)] _OutlineStencilZFail ("Outline Stencil ZFail Op", Int) = 0 

[Enum(Toon, 0, Double Sided, 1, Unlit, 2, Particle, 3, Matcap, 4, Sprite, 5, Hidden, 6)] _VRCFallback ("VRChat Fallback", Int) = 0

[Enum(Disabled, 0, Enabled, 1)] _ToggleFlipNormals ("Flip Backface Normals", Int) = 0




_MainTex ("Main texture", 2D) = "white" { }
_Color ("Albedo color", Color) = (1, 1, 1, 1)
_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
_BumpMap ("Normal map", 2D) = "bump" { }
_BumpScale ("Normal map scale", Float) = 1
_Alpha ("Alpha", Range(0, 1)) = 1.0
[Enum(Early, 0, Late, 1)] _DecalStage ("Decal Stage", Int) = 1




_UV_Offset_X ("UV Offset X", Float) = 0
_UV_Offset_Y ("UV Offset Y", Float) = 0
_UV_Scale_X ("UV Scale X", Float) = 1
_UV_Scale_Y ("UV Scale Y", Float) = 1
_UV_Rotation ("UV Rotation", Range(0, 360)) = 0
_UV_Scroll_X_Speed ("UV Scroll X Speed", Float) = 0
_UV_Scroll_Y_Speed ("UV Scroll Y Speed", Float) = 0




[Toggle(_BACKLACE_UV_EFFECTS)] _ToggleUVEffects ("Enable UV Effects", Float) = 0.0

[Enum(Disabled, 0, Enabled, 1)] _UVTriplanarMapping ("Enable Triplanar Mapping", Float) = 0.0
_UVTriplanarPosition ("World Position (XYZ)", Vector) = (0, 0, 0, 0)
_UVTriplanarScale ("World Scale", Float) = 1.0
_UVTriplanarRotation ("World Rotation (XYZ)", Vector) = (0, 0, 0, 0)
_UVTriplanarSharpness ("Triplanar Blend Sharpness", Range(1, 10)) = 2.0

[Enum(Disabled, 0, Enabled, 1)] _UVScreenspaceMapping ("Enable Screenspace Mapping", Float) = 0.0
_UVScreenspaceTiling ("Screenspace Tiling", Float) = 1.0

[Enum(Disabled, 0, Enabled, 1)] _UVFlipbook ("Enable Flipbook Animation", Float) = 0.0
_UVFlipbookRows ("Flipbook Rows", Int) = 1
_UVFlipbookColumns ("Flipbook Columns", Int) = 1
_UVFlipbookFrames ("Total Frames", Int) = 1
_UVFlipbookFPS ("Flipbook FPS", Float) = 30.0
_UVFlipbookScrub ("Manual Scrub", Float) = 0.0

[Enum(Disabled, 0, Enabled, 1)] _UVFlowmap ("Enable Flowmap", Float) = 0.0
_UVFlowmapTex ("Flowmap Texture (RG)", 2D) = "gray" { }
_UVFlowmapStrength ("Flowmap Strength", Range(0, 1)) = 0.5
_UVFlowmapSpeed ("Flowmap Speed", Float) = 1.0
_UVFlowmapDistortion ("Flowmap Distortion", Range(0, 1)) = 0.5




_VertexManipulationPosition ("World Position (XYZ)", Vector) = (0, 0, 0, 0)
_VertexManipulationScale ("World Scale (XYZ)", Vector) = (1, 1, 1, 0)




[Toggle(_BACKLACE_EMISSION)] _ToggleEmission ("Enable Emission", Float) = 0.0
[HDR] _EmissionColor ("Emission Color", Color) = (0, 0, 0, 1)
_EmissionMap ("Emission Map (Mask)", 2D) = "black" { }
[IntRange] _UseAlbedoAsEmission ("Use Albedo for Emission", Range(0, 1)) = 0.0
_EmissionStrength ("Emission Strength", Float) = 1.0




[Enum(Disabled, 0, Enabled, 1)] _EnableBaseLightLimit ("Enable Base Pass Limit", Range(0, 1)) = 0.0
_BaseLightMin ("Base Light Min", Float) = 0.0
_BaseLightMax ("Base Light Max", Float) = 2.0
[Enum(Disabled, 0, Enabled, 1)] _EnableAddLightLimit ("Enable Add Pass Limit", Range(0, 1)) = 0.0
_AddLightMin ("Add Light Min", Float) = 0.0
_AddLightMax ("Add Light Max", Float) = 2.0
_GreyscaleLighting ("Greyscale Lighting", Range(0, 1)) = 0.0
_ForceLightColor ("Force Light Color", Range(0, 1)) = 0.0
_ForcedLightColor ("Forced Light Color", Color) = (1, 1, 1, 1)




[Enum(Backlace, 0, PoiCustom, 1, OpenLit, 2, Standard, 3, Mochie, 4)] _LightingColorMode ("Light Color Mode", Int) = 0
[Enum(Backlace, 0, Forced World Direction, 1, View Direction, 2)] _LightingDirectionMode ("Light Direction Mode", Int) = 0
_ForcedLightDirection ("Forced Light Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
_ViewDirectionOffsetX ("View Direction Offset X", Float) = 0.0
_ViewDirectionOffsetY ("View Direction Offset Y", Float) = 0.0
_DirectIntensity ("RT Direct Intensity", Float) = 1.0
_IndirectIntensity ("RT Indirect Intensity", Float) = 1.0
_VertexIntensity ("RT Vertex Intensity", Float) = 1.0
_AdditiveIntensity ("RT Additive Intensity", Float) = 1.0
_BakedDirectIntensity ("Baked Direct Intensity", Float) = 1.0
_BakedIndirectIntensity ("Baked Indirect Intensity", Float) = 1.0




[Toggle(_BACKLACE_TOON)] _ToggleAnimeLighting ("Enable Anime Lighting", Float) = 0.0
[KeywordEnum(Ramp, Procedural)] _AnimeMode ("Anime Mode", Int) = 0

_Ramp ("Toon Ramp", 2D) = "white" { }
_RampColor ("Ramp Color", Color) = (1, 1, 1, 1)
_RampOffset ("Ramp Offset", Range(-1, 1)) = 0
_ShadowIntensity ("Shadow intensity", Range(0, 1)) = 0.6
_OcclusionOffsetIntensity ("Occlusion Offset Intensity", Range(0, 1)) = 0
_RampMin ("Ramp Min", Color) = (0.003921569, 0.003921569, 0.003921569, 0.003921569)

[HDR] _AnimeShadowColor ("Core Shadow Color", Color) = (0.5, 0.5, 1, 1) 
_AnimeShadowThreshold ("Core Shadow Threshold", Range(0, 1)) = 0.3 
[HDR] _AnimeHalftoneColor ("Halftone Color", Color) = (0.8, 0.8, 1, 1) 
_AnimeHalftoneThreshold ("Halftone Threshold", Range(0, 1)) = 0.6 
_AnimeShadowSoftness ("Shadow Softness", Range(0.001, 1)) = 0.02

[Enum(Disabled, 0, Enabled, 1)] _ToggleAmbientGradient ("Enable Ambient Gradient", Float) = 0.0
_AnimeOcclusionToShadow ("Occlusion To Shadow", Range(0, 1)) = 0.5
_AmbientUp ("Sky Ambient", Color) = (0.8, 0.8, 1, 1)
_AmbientSkyThreshold ("Sky Threshold", Range(0, 1)) = 0.5
_AmbientDown ("Ground Ambient", Color) = (1, 0.9, 0.8, 1)
_AmbientGroundThreshold ("Ground Threshold", Range(0, 1)) = 0.5
_AmbientIntensity ("Gradient Intensity", Range(0, 1)) = 0.25

[Enum(Disabled, 0, Raw Light, 1, Tuned Light, 2, Ramp Based, 3)] _TintMaskSource ("Tint Mask Source", Int) = 0
[HDR] _LitTint ("Lit Area Tint", Color) = (1, 1, 1, 0.75)
_LitThreshold ("Lit Coverage", Range(0, 1)) = 0.6
[HDR] _ShadowTint ("Shadow Area Tint", Color) = (1, 1, 1, 0.75)
_ShadowThreshold ("Shadow Coverage", Range(0, 1)) = 0.4




[Toggle(_BACKLACE_SPECULAR)] _ToggleSpecular ("Enable Specular", Float) = 0.0
[Toggle(_BACKLACE_VERTEX_SPECULAR)] _ToggleVertexSpecular ("Enable Vertex Specular", Float) = 0.0
[KeywordEnum(Standard, Anisotropic, Toon, Hair, Cloth)] _SpecularMode ("Specular Mode", Float) = 0
_MSSO ("MSSO", 2D) = "white" { }
_Metallic ("Metallic", Range(0, 1)) = 0
_Glossiness ("Glossiness", Range(0, 1)) = 0
_Occlusion ("Occlusion", Range(0, 1)) = 1
[PowerSlider(2.0)] _SpecularIntensity ("Specular Intensity", Range(0.01, 25)) = 1.0
_Specular ("Specular", Range(0, 1)) = 0.5
_SpecularTintTexture ("Specular Tint Texture", 2D) = "white" { }
_SpecularTint ("Specular Tint", Color) = (1, 1, 1, 1)
_TangentMap ("Tangent Map", 2D) = "white" { }
_Anisotropy ("Ansotropy", Range(-1, 1)) = 0
[Enum(Disabled, 0, Enabled, 1)] _ReplaceSpecular ("Replace Specular", Range(0, 1)) = 0

_HighlightRamp ("Highlight Ramp", 2D) = "white" { }
_HighlightRampColor ("Highlight Color", Color) = (1, 1, 1, 1)
_HighlightIntensity ("Highlight Intensity", Float) = 1.0
_HighlightRampOffset ("Highlight Ramp Offset", Range(-1, 1)) = 0.0
_HighlightHardness ("Highlight Hardness", Range(0.01, 10)) = 0.1

[NoScaleOffset] _HairFlowMap ("Hair Flow/Tangent Map (RG)", 2D) = "gray" { }
_PrimarySpecularShift ("Primary Specular Shift", Range(-1, 1)) = 0
_SecondarySpecularShift ("Secondary Specular Shift", Range(-1, 1)) = 0.1
[HDR] _SecondarySpecularColor ("Secondary Specular Color", Color) = (1, 1, 1, 1)
_SpecularExponent ("Specular Exponent", Range(1, 256)) = 64

_SheenColor ("Sheen Color", Color) = (1, 1, 1, 1)
_SheenIntensity ("Sheen Intensity", Float) = 0.5
_SheenRoughness ("Sheen Roughness", Float) = 0.5




[Toggle(_BACKLACE_RIMLIGHT)] _ToggleRimlight ("Enable Rim Lighting", Float) = 0.0
[HDR] _RimColor ("Rim Color", Color) = (1, 1, 1, 1)
_RimWidth ("Rim Width", Range(20, 0.1)) = 2.5
_RimIntensity ("Rim Intensity", Float) = 1.0
[Enum(Disabled, 0, Enabled, 1)] _RimLightBased ("Light-Based Rim", Range(0, 1)) = 0.0




[Toggle(_BACKLACE_CLEARCOAT)] _ToggleClearcoat ("Enable Clear Coat", Float) = 0.0
_ClearcoatStrength ("Strength", Range(0, 1)) = 1.0
_ClearcoatReflectionStrength ("Reflection Strength", Range(0, 2)) = 1.0
[NoScaleOffset] _ClearcoatMap ("Mask (R=Strength, G=Roughness)", 2D) = "white" { }
_ClearcoatRoughness ("Roughness", Range(0, 1)) = 0.1
_ClearcoatColor ("Color", Color) = (1, 1, 1, 1)




[Toggle(_BACKLACE_MATCAP)] _ToggleMatcap ("Enable Matcap", Float) = 0.0
[NoScaleOffset] _MatcapTex ("Matcap Texture", 2D) = "white" { }
[HDR] _MatcapTint ("Matcap Tint", Color) = (1, 1, 1, 1)
_MatcapIntensity ("Matcap Intensity", Range(0, 2)) = 1.0
[Enum(Additive, 0, Multiply, 1, Replace, 2)] _MatcapBlendMode ("Blend Mode", Int) = 0
[NoScaleOffset] _MatcapMask ("Matcap Mask (R)", 2D) = "white" { }
[Enum(Disabled, 0, Enabled, 1)] _MatcapSmoothnessEnabled ("Enable Smoothness", Float) = 0.0
_MatcapSmoothness ("Smoothness", Range(0, 1)) = 0.0




[Toggle(_BACKLACE_DECAL1)] _Decal1Enable ("Enable Decal 1", Float) = 0.0
[NoScaleOffset] _Decal1Tex ("Decal Texture (A=Mask)", 2D) = "white" { }
_Decal1Tint ("Tint", Color) = (1, 1, 1, 1)
[Enum(Additive, 0, Multiply, 1, Alpha Blend, 2)] _Decal1BlendMode ("Blend Mode", Int) = 2
[Enum(Disabled, 0, Enabled, 1)] _Decal1IsTriplanar ("Use Triplanar Mapping", Float) = 0.0
_Decal1Position ("UV Position (XY)", Vector) = (0.5, 0.5, 0, 0)
_Decal1Scale ("UV Scale (XY)", Vector) = (0.25, 0.25, 0, 0)
_Decal1Rotation ("UV Rotation", Range(0, 360)) = 0
_Decal1TriplanarPosition ("World Position (XYZ)", Vector) = (0, 0, 0, 0)
_Decal1TriplanarScale ("World Scale", Float) = 1.0
_Decal1TriplanarRotation ("World Rotation (XYZ)", Vector) = (0, 0, 0, 0)
_Decal1TriplanarSharpness ("Triplanar Blend Sharpness", Range(1, 10)) = 2.0
[Enum(Disabled, 0, Enabled, 1)] _Decal1Repeat ("Repeat Pattern", Float) = 0.0
_Decal1Scroll ("Scroll Speed (XY)", Vector) = (0, 0, 0, 0)
_Decal1HueShift ("Hue Shift", Range(0, 2)) = 0.0
[Enum(Disabled, 0, Enabled, 1)] _Decal1AutoCycleHue ("Auto Cycle Hue", Float) = 0.0
_Decal1CycleSpeed ("Cycle Speed", Float) = 0.1




[Toggle(_BACKLACE_DECAL2)] _Decal2Enable ("Enable Decal 2", Float) = 0.0
[NoScaleOffset] _Decal2Tex ("Decal Texture (A=Mask)", 2D) = "white" { }
_Decal2Tint ("Tint", Color) = (1, 1, 1, 1)
[Enum(Additive, 0, Multiply, 1, Alpha Blend, 2)] _Decal2BlendMode ("Blend Mode", Int) = 2
[Enum(Disabled, 0, Enabled, 1)] _Decal2IsTriplanar ("Use Triplanar Mapping", Float) = 0.0
_Decal2Position ("UV Position (XY)", Vector) = (0.5, 0.5, 0, 0)
_Decal2Scale ("UV Scale (XY)", Vector) = (0.25, 0.25, 0, 0)
_Decal2Rotation ("UV Rotation", Range(0, 360)) = 0
_Decal2TriplanarPosition ("World Position (XYZ)", Vector) = (0, 0, 0, 0)
_Decal2TriplanarScale ("World Scale", Float) = 1.0
_Decal2TriplanarRotation ("World Rotation (XYZ)", Vector) = (0, 0, 0, 0)
_Decal2TriplanarSharpness ("Triplanar Blend Sharpness", Range(1, 10)) = 2.0
[Enum(Disabled, 0, Enabled, 1)] _Decal2Repeat ("Repeat Pattern", Float) = 0.0
_Decal2Scroll ("Scroll Speed (XY)", Vector) = (0, 0, 0, 0)
_Decal2HueShift ("Hue Shift", Range(0, 2)) = 0.0
[Enum(Disabled, 0, Enabled, 1)] _Decal2AutoCycleHue ("Auto Cycle Hue", Float) = 0.0
_Decal2CycleSpeed ("Cycle Speed", Float) = 0.1




[Toggle(_BACKLACE_POST_PROCESSING)] _TogglePostProcessing ("Enable Post Processing", Float) = 0.0
[HDR] _RGBColor ("RGB Tint", Color) = (1, 1, 1, 1)
_RGBBlendMode ("RGB Multiply/Replace", Range(0, 1)) = 0.0
[Enum(Disabled, 0, Additive, 1, Multiply, 2)] _HSVMode ("HSV Mode", Float) = 0.0
_HSVHue ("Hue", Float) = 0.0
_HSVSaturation ("Saturation", Float) = 1.0
_HSVValue ("Value (Brightness)", Float) = 1.0
[Enum(Disabled, 0, Enabled, 1)] _ToggleHueShift ("Enable Hue Shift", Range(0, 1)) = 0.0
_HueShift ("Hue Shift", Range(-1, 1)) = 0.0
[Enum(Disabled, 0, Enabled, 1)] _ToggleAutoCycle ("Enable Auto Cycle Hue", Float) = 0.0
_AutoCycleSpeed ("Auto Cycle Speed", Float) = 0.1
[NoScaleOffset] _ColorGradingLUT ("Color Grading LUT", 2D) = "white" { }
_ColorGradingIntensity ("Grading Intensity", Range(0, 1)) = 0.0
_BlackAndWhite ("Black and White", Range(0, 1)) = 0.0
_Brightness ("Brightness", Range(0, 2)) = 1.0




[Toggle(_BACKLACE_CUBEMAP)] _ToggleCubemap ("Enable Cubemap", Float) = 0.0
[NoScaleOffset] _CubemapTex ("Cubemap", Cube) = "" { }
[HDR] _CubemapTint ("Cubemap Tint", Color) = (1, 1, 1, 1)
_CubemapIntensity ("Cubemap Intensity", Range(0, 2)) = 1.0
[Enum(Additive, 0, Multiply, 1, Replace, 2)] _CubemapBlendMode ("Blend Mode", Int) = 0




[Toggle(_BACKLACE_PARALLAX)] _ToggleParallax ("Enable Parallax Mapping", Float) = 0.0
[Enum(Fast, 0, Fancy, 1)] _ParallaxMode ("Parallax Mode", Int) = 0
[NoScaleOffset] _ParallaxMap ("Height Map (R)", 2D) = "black" { }
_ParallaxStrength ("Parallax Strength", Range(0, 0.1)) = 0.02
_ParallaxSteps ("High Quality Steps", Range(4, 64)) = 16
[Toggle(_BACKLACE_PARALLAX_SHADOWS)] _ToggleParallaxShadows ("Enable Self-Shadowing", Float) = 0.0
_ParallaxShadowSteps ("Shadow Quality Steps", Range(2, 16)) = 8
_ParallaxShadowStrength ("Shadow Strength", Range(0, 1)) = 0.75




[Toggle(_BACKLACE_SSS)] _ToggleSSS ("Enable Subsurface Scattering", Float) = 0.0
_SSSColor ("SSS Color", Color) = (1, 0.8, 0.7, 1)
_SSSStrength ("SSS Strength", Range(0, 5)) = 1.0
_SSSPower ("SSS Power", Range(0.1, 10)) = 2.0
_SSSDistortion ("SSS Distortion", Range(0, 1)) = 0.5
[NoScaleOffset] _SSSThicknessMap ("SSS Thickness Map (R)", 2D) = "white" { }
_SSSThickness ("SSS Thickness Attenuation", Range(0, 2)) = 1.0




[Toggle(_BACKLACE_SHADOW_MAP)] _ToggleShadowMap ("Enable Shadow Map", Float) = 0.0
[NoScaleOffset] _ShadowMap ("Shadow Map (R=Mask)", 2D) = "white" { }
_ShadowMapIntensity ("Intensity", Range(0, 1)) = 1.0




[Toggle(_BACKLACE_DETAIL)] _ToggleDetail ("Enable Detail Maps", Float) = 0.0
[NoScaleOffset] _DetailAlbedoMap ("Detail Albedo (A=Strength)", 2D) = "gray" { }
[NoScaleOffset] _DetailNormalMap ("Detail Normal Map", 2D) = "bump" { }
_DetailTiling ("Detail Tiling", Float) = 16
_DetailNormalStrength ("Detail Normal Strength", Range(0, 2)) = 1.0




[Toggle(_BACKLACE_DISSOLVE)] _ToggleDissolve ("Enable Dissolve", Float) = 0.0
_DissolveProgress ("Dissolve Progress", Range(0, 2.0)) = 0.0
[Enum(Noise, 0, Directional, 1, Voxel, 2)] _DissolveType ("Dissolve Type", Int) = 0

[HDR] _DissolveEdgeColor ("Edge Color", Color) = (1, 0.5, 0, 1)
_DissolveEdgeWidth ("Edge Width", Range(0.001, 0.25)) = 0.05
[Enum(Glow, 0, Smooth Fade, 1)] _DissolveEdgeMode ("Edge Mode", Float) = 0
_DissolveEdgeSharpness ("Edge Sharpness", Range(0.0, 1.0)) = 0.0

[NoScaleOffset] _DissolveNoiseTex ("Noise Texture (R)", 2D) = "gray" { }
_DissolveNoiseScale ("Noise Scale", Float) = 5.0

_DissolveDirection ("Wipe Direction (XYZ)", Vector) = (0, 1, 0, 0)
[Enum(Local Space, 0, World Space, 1)] _DissolveDirectionSpace ("Wipe Space", Int) = 0
_DissolveDirectionBounds ("Wipe Bounds Size", Float) = 1.0

_DissolveVoxelDensity ("Voxel Density", Float) = 20.0




[Toggle(_BACKLACE_PATHING)] _TogglePathing ("Enable Pathing", Float) = 0.0
[Enum(Albedo UV, 0, Triplanar, 1)] _PathingMappingMode ("Mapping Mode", Int) = 0
[NoScaleOffset] _PathingMap ("Path Map (R)", 2D) = "black" { }
_PathingScale ("Path Scale", Float) = 1.0
[Enum(Additive, 0, Multiply, 1, Alpha Blend, 2)] _PathingBlendMode ("Blend Mode", Int) = 0
[Enum(Colour, 0, Texture, 1, Gradient, 2)] _PathingColorMode ("Color Mode", Int) = 0
_PathingTexture ("Path Texture", 2D) = "white" { }
[HDR] _PathingColor ("Path Color", Color) = (0, 1, 1, 1)
[HDR] _PathingColor2 ("Secondary Color", Color) = (1, 0, 0, 1)
_PathingEmission ("Emission Strength", Float) = 2.0
[Enum(Fill, 0, Path, 1, Loop, 2, PingPong, 3, Trail, 4, Converge, 5)] _PathingType ("Path Type", Int) = 1
_PathingSpeed ("Speed", Float) = 0.5
_PathingWidth ("Path Width", Range(0.001, 0.5)) = 0.1
_PathingSoftness ("Softness", Range(0.001, 1.0)) = 0.5
_PathingOffset ("Time Offset", Range(0, 1)) = 0.0




[Toggle(_BACKLACE_DEPTH_RIMLIGHT)] _ToggleDepthRim ("Enable Depth Rim Lighting", Float) = 0.0
[HDR] _DepthRimColor ("Color", Color) = (0.5, 0.75, 1, 1)
_DepthRimWidth ("Width", Range(0, 0.5)) = 0.1
_DepthRimThreshold ("Threshold", Range(0.01, 1)) = 0.1
_DepthRimSharpness ("Sharpness", Range(0.01, 1)) = 0.1
[Enum(Additive, 0, Replace, 1, Multiply, 2)] _DepthRimBlendMode ("Blend Mode", Int) = 0




[Toggle(_BACKLACE_AUDIOLINK)] _ToggleAudioLink ("Enable AudioLink", Float) = 0.0
_AudioLinkFallback ("Fallback Level", Range(0, 1)) = 1.0
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkEmissionBand ("Emission Band", Float) = 0
_AudioLinkEmissionStrength (" Strength", Range(0, 10)) = 1.0
_AudioLinkEmissionRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkRimBand ("Rim Light Band", Float) = 0
_AudioLinkRimStrength (" Strength", Range(0, 10)) = 1.0
_AudioLinkRimRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkHueShiftBand ("Hue Shift Band", Float) = 0
_AudioLinkHueShiftStrength (" Strength", Range(0, 1)) = 0.2
_AudioLinkHueShiftRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkDecalHueBand ("Decal Hue Band", Float) = 0
_AudioLinkDecalHueStrength (" Strength", Range(0, 10)) = 2.0
_AudioLinkDecalHueRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkDecalEmissionBand ("Decal Emission Band", Float) = 0
_AudioLinkDecalEmissionStrength (" Strength", Range(0, 10)) = 2.0
_AudioLinkDecalEmissionRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkDecalOpacityBand ("Decal Opacity Band", Float) = 0
_AudioLinkDecalOpacityStrength (" Strength", Range(0, 10)) = 2.0
_AudioLinkDecalOpacityRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkVertexBand ("Vertex Grow/Shrink Band", Float) = 0
_AudioLinkVertexStrength (" Strength", Range(-0.2, 0.2)) = 0.05
_AudioLinkVertexRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkOutlineBand ("Outline Band", Float) = 0
_AudioLinkOutlineStrength (" Strength", Range(0, 0.1)) = 0.01
_AudioLinkOutlineRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkMatcapBand ("Matcap Band", Float) = 0
_AudioLinkMatcapStrength (" Strength", Range(0, 5)) = 1.0
_AudioLinkMatcapRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkPathingBand ("Pathing Band", Float) = 0
_AudioLinkPathingStrength (" Strength", Range(0, 0.5)) = 0.1
_AudioLinkPathingRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkGlitterBand ("Glitter Band", Float) = 0
_AudioLinkGlitterStrength (" Strength", Range(0, 1)) = 1.0
_AudioLinkGlitterRange (" Min/Max", Vector) = (0, 1, 0, 0)
[Enum(Disabled, 0, Bass, 1, Low Mids, 2, High Mids, 3, Treble, 4, Overall, 5)] _AudioLinkIridescenceBand ("Iridescence Band", Float) = 0
_AudioLinkIridescenceStrength (" Strength", Range(0, 5)) = 1.0
_AudioLinkIridescenceRange (" Min/Max", Vector) = (0, 1, 0, 0)




[Toggle(_BACKLACE_LTCGI)] _ToggleLTCGI ("Enable LTCGI", Float) = 0.0




[Toggle(_BACKLACE_GLITTER)] _ToggleGlitter ("Enable Glitter", Float) = 0.0
[Enum(Procedural, 0, Texture, 1)] _GlitterMode ("Mode", Range(0, 1)) = 0.0
[NoScaleOffset] _GlitterNoiseTex ("Noise Texture (R)", 2D) = "gray" { }
[NoScaleOffset] _GlitterMask ("Mask (R)", 2D) = "white" { }
_GlitterTint ("Tint", Color) = (1, 1, 1, 1)
_GlitterFrequency ("Density", Float) = 50.0
_GlitterThreshold ("Density Threshold", Range(0.01, 1.0)) = 0.5
_GlitterSize ("Size", Range(0.01, 0.5)) = 0.1
_GlitterFlickerSpeed ("Flicker Speed", Range(0, 5)) = 1.0
_GlitterBrightness ("Brightness", Range(0, 10)) = 2.0
_GlitterContrast ("Contrast", Range(1, 256)) = 128.0
_ToggleGlitterRainbow ("Enable Rainbow", Range(0, 1)) = 0.0
_GlitterRainbowSpeed ("Rainbow Speed", Range(0, 5)) = 0.1




[Toggle(_BACKLACE_DISTANCE_FADE)] _ToggleDistanceFade ("Enable Distance Fading", Float) = 0.0
[Enum(World Position, 0, Object Center, 1)] _DistanceFadeReference ("Fade Reference Point", Range(0, 1)) = 0
[Enum(Disabled, 0, Enabled, 1)] _ToggleNearFade ("Enable Near Fade", Float) = 0.0
[Enum(Transparent, 0, Dither, 1)] _NearFadeMode ("Near Fade Mode", Float) = 0.0
_NearFadeDitherScale ("Near Fade Dither Scale", Range(100, 0.1)) = 10
_NearFadeStart ("Near Fade Start", Float) = 0.5
_NearFadeEnd ("Near Fade End", Float) = 0.0
[Enum(Disabled, 0, Enabled, 1)] _ToggleFarFade ("Enable Far Fade", Float) = 0.0
_FarFadeStart ("Far Fade Start", Float) = 20.0
_FarFadeEnd ("Far Fade End", Float) = 50.0




[Toggle(_BACKLACE_IRIDESCENCE)] _ToggleIridescence ("Enable Iridescence", Float) = 0.0
[Enum(Texture, 0, Procedural, 1)] _IridescenceMode ("Mode", Int) = 0
[NoScaleOffset] _IridescenceMask ("Mask (R)", 2D) = "white" { }
[HDR] _IridescenceTint ("Tint", Color) = (1, 1, 1, 1)
_IridescenceIntensity ("Intensity", Range(0, 5)) = 1.0
[Enum(Additive, 0, Screen, 1, Alpha Blend, 2)] _IridescenceBlendMode ("Blend Mode", Int) = 0
_IridescenceParallax ("View Parallax", Range(0, 1)) = 0.5
[NoScaleOffset] _IridescenceRamp ("Color Ramp", 2D) = "white" { }
_IridescencePower ("Power", Range(0.1, 10)) = 1.0
_IridescenceFrequency ("Rainbow Frequency", Range(0.1, 20)) = 5.0




[Toggle(_BACKLACE_SHADOW_TEXTURE)] _ToggleShadowTexture ("Enable Shadow Texture", Float) = 0.0
[Enum(UV Albedo, 0, Screen Pattern, 1, Triplanar Pattern, 2)] _ShadowTextureMappingMode ("Shadow Mode", Int) = 0
[Enum(Additive, 0, Multiply, 1, Alpha Blend, 2)] _ShadowTextureBlendMode ("Blend Mode", Int) = 1
_ShadowTextureIntensity ("Shadow Intensity", Range(0, 1)) = 1.0
[NoScaleOffset] _ShadowTex ("Shadow Texture / Pattern", 2D) = "white" { }
_ShadowPatternColor ("Pattern Tint", Color) = (0, 0, 0, 1)
_ShadowPatternScale ("Pattern Scale / Tiling", Float) = 5.0
_ShadowPatternTriplanarSharpness ("Triplanar Blend Sharpness", Range(1, 10)) = 2.0
_ShadowPatternTransparency ("Pattern Transparency", Range(0, 1)) = 1




[Toggle(_BACKLACE_FLAT_MODEL)] _ToggleFlatModel ("Enable Flat Model", Float) = 0.0
[Enum(Disabled, 0, Enabled, 1)] _FlatModeAutoflip ("Auto-Flip", Float) = 0.0
_FlatModel ("Flat Model Strength", Range(0, 1)) = 0.0
_FlatModelDepthCorrection ("Depth Correction", Range(-0.2, 0.2)) = -0.1
_FlatModelFacing ("Facing Direction", Range(-1, 1)) = 0.0
[Enum(Disabled, 1, Enabled, 0)] _FlatModelLockAxis ("Follow Camera", Range(0, 1)) = 1.0




[Toggle(_BACKLACE_WORLD_EFFECT)] _ToggleWorldEffect ("Enable World Effect", Float) = 0.0
[Enum(Alpha Blend, 0, Additive, 1, Multiply, 2)] _WorldEffectBlendMode ("Blend Mode", Int) = 0
[NoScaleOffset] _WorldEffectTex ("Effect Texture (A=Mask)", 2D) = "white" { }
[NoScaleOffset] _WorldEffectMask ("Effect Mask (R)", 2D) = "white" { }
[HDR] _WorldEffectColor ("Effect Color", Color) = (1, 1, 1, 1)
_WorldEffectDirection ("Effect Direction (XYZ)", Vector) = (0, 1, 0, 0)
_WorldEffectScale ("Effect Scale", Float) = 1.0
_WorldEffectBlendSharpness ("Directional Blend Sharpness", Range(0.1, 20)) = 4.0
_WorldEffectIntensity ("Effect Intensity", Range(0, 2)) = 1.0
_WorldEffectPosition ("World Position (XYZ)", Vector) = (0, 0, 0, 0)
_WorldEffectRotation ("World Rotation (XYZ)", Vector) = (0, 0, 0, 0)




[Toggle(_BACKLACE_VRCHAT_MIRROR)] _ToggleMirrorDetection ("Enable VRChat Mirror Detection", Float) = 0.0
[Enum(Texture, 0, Hide, 1, Only Show, 2)] _MirrorDetectionMode ("Mirror Mode", Int) = 0
_MirrorDetectionTexture ("Mirror Detection Texture", 2D) = "white" { }




[Toggle(_BACKLACE_TOUCH_REACTIVE)] _ToggleTouchReactive ("Enable Touch Reactive", Float) = 0.0
[HDR] _TouchColor ("Touch Color", Color) = (1, 0, 1, 1)
_TouchRadius ("Touch Radius", Range(0, .5)) = 0.1
_TouchHardness ("Touch Hardness", Range(0.01, 10)) = 2.0
[Enum(Additive, 0, Replace, 1, Multiply, 2, Rainbow, 3)] _TouchMode ("Touch Mode", Float) = 0.0
_TouchRainbowSpeed ("Touch Rainbow Speed", Float) = 0.1
_TouchRainbowSpread ("Touch Rainbow Spread", Float) = 1.0




[Toggle(_BACKLACE_REFRACTION)] _ToggleRefraction ("Enable Refraction Effect", Float) = 0.0
[NoScaleOffset] _RefractionMask ("Mask (R=Strength)", 2D) = "white" { }
_RefractionTint ("Refraction Tint", Color) = (0.8, 0.9, 1.0, 0.5)
_RefractionIOR ("Refraction Strength", Range(0.0, 1.0)) = 0.1
_RefractionFresnel ("Fresnel Power", Range(0.1, 20)) = 5.0
_RefractionOpacity ("Refraction Opacity", Range(0, 1)) = 0.5
_RefractionSeeThrough ("See Through Strength", Range(0, 1)) = 0
[Enum(Reverse Fresnel, 0, Fresnel, 1, Soft Fresnel, 2, Manual, 3)] _RefractionMode ("Refraction Mode", Float) = 0.0
_RefractionMixStrength ("Mix Strength", Float) = 0
_RefractionBlendMode ("Refraction Additive<->Replace", Range(0, 1)) = 0

[NoScaleOffset] _CausticsTex ("Internal Caustics Texture", 2D) = "gray" { }
_CausticsColor ("Caustics Color", Color) = (1, 1, 1, 1)
_CausticsTiling ("Caustics Tiling", Float) = 2.0
_CausticsSpeed ("Caustics Animation Speed", Range(0, 3)) = 0.2
_CausticsIntensity ("Caustics Intensity", Range(0, 5)) = 1.5

[NoScaleOffset] _DistortionNoiseTex ("Distortion Noise (RG)", 2D) = "gray" { }
_DistortionNoiseTiling ("Distortion Noise Tiling", Float) = 5.0
_DistortionNoiseStrength ("Distortion Noise Strength", Range(0, 1.0)) = 0.2

[Enum(Disabled, 0, Chromatic Aberration, 1, Blur, 2)] _RefractionDistortionMode ("Blur Mode", Int) = 1
_RefractionCAStrength ("Chromatic Aberration Strength", Range(0, 5)) = 2
_RefractionBlurStrength ("Blur Strength", Range(0, 0.5)) = 0.05
[Enum(Disabled, 0, Enabled, 1)] _RefractionCAUseFresnel ("Use Fresnel for CA", Int) = 0.0
_RefractionCAEdgeFade ("CA Fresnel Power", Range(0.1, 10)) = 2.0




[Toggle(_BACKLACE_VERTEX_DISTORTION)] _ToggleVertexDistortion ("Enable Vertex Distortion", Float) = 0.0
[Enum(Wave, 0, Jumble, 1, Wind, 2, Breathing, 3)] _VertexDistortionMode ("Distortion Mode", Int) = 0
[Enum(Disabled, 0, Red, 1, Green, 2, Blue, 3, All, 4)] _VertexDistortionColorMask ("Color Channel Mask", Int) = 0

_VertexDistortionStrength ("Distortion Strength", Vector) = (0.1, 0.1, 0.1, 0)
_VertexDistortionSpeed ("Distortion Speed", Vector) = (1, 1, 1, 0)
_VertexDistortionFrequency ("Distortion Frequency", Vector) = (1, 1, 1, 0)

_WindStrength ("Wind Strength", Range(0, 1)) = 0.1
_WindSpeed ("Wind Speed", Range(0, 5)) = 1.0
_WindScale ("Wind Noise Scale", Float) = 1.0
_WindDirection ("Wind Direction (XYZ)", Vector) = (1, 0, 0, 0)
[NoScaleOffset] _WindNoiseTex ("Wind Noise Texture (R)", 2D) = "gray" { }

_BreathingStrength ("Breathing Strength", Range(0, 0.1)) = 0.01
_BreathingSpeed ("Breathing Speed", Range(0, 5)) = 1.0




[Toggle(_BACKLACE_SSR)] _ToggleSSR ("Enable Screen Space Reflections", Float) = 0.0
[Enum(Planar, 0, Raymarched, 1)] _SSRMode ("Reflection Mode", Int) = 0
[NoScaleOffset] _SSRMask ("Mask (R)", 2D) = "white" { }
[HDR] _SSRTint ("Reflection Tint", Color) = (1, 1, 1, 1)
_SSRIntensity ("Intensity", Range(0, 2)) = 1.0
[Enum(Additive, 0, Alpha Blend, 1, Multiply, 2, Screen, 3)] _SSRBlendMode ("Blend Mode", Int) = 0
_SSRFresnelPower ("Fresnel Power", Range(0.1, 20)) = 5.0
_SSRFresnelScale ("Fresnel Scale", Range(0, 2)) = 1.0
_SSRFresnelBias ("Fresnel Bias", Range(0, 1)) = 0.0
_SSRCoverage ("Coverage", Range(0, 1)) = 0.0

_SSRParallax ("Parallax Strength", Range(0, 1)) = 0.1
[NoScaleOffset] _SSRDistortionMap ("Distortion Map (RG)", 2D) = "gray" { }
_SSRDistortionStrength ("Distortion Strength", Range(0, 0.25)) = 0.01
_SSRWorldDistortion ("World Distortion Strength", Range(0, 1)) = 0.0
_SSRBlur ("Blur Strength", Range(0, 10)) = 1.0

[IntRange] _SSRMaxSteps ("Max Steps", Range(1, 50)) = 25
_SSRStepSize ("Step Size", Float) = 0.05
_SSREdgeFade ("Edge Fade", Range(0.01, 1)) = 0.1
[Enum(Disabled, 0, Enabled, 1)] _SSRCamFade ("Enable Camera Distance Fade", Int) = 0.0
_SSRCamFadeStart ("SSR Camera Fade Start", Float) = 20.0
_SSRCamFadeEnd ("SSR Camera Fade End", Float) = 50.0
_SSRFlipUV ("Flip Reflection UV", Range(0, 1)) = 0 
[Enum(Disabled, 0, Enabled, 1)] _SSRAdaptiveStep ("Enable Adaptive Step Size", Int) = 1
_SSRThickness ("Culling Thickness", Float) = 0.01
[Enum(Stretch, 0, Fade, 1, Cutoff, 2, Mirror, 3)] _SSROutOfViewMode ("Out Of View Mode", Int) = 0




[Toggle(_BACKLACE_DITHER)] _ToggleDither ("Enable Dither", Float) = 0.0
[Enum(Screen, 0, World, 1, UV, 2)] _DitherSpace ("Dither Space", Int) = 0
_DitherAmount ("Dither Amount", Range(0, 1)) = 0
_DitherScale ("Dither Scale", Range(100, 0.1)) = 10




[Toggle(_BACKLACE_PS1)] _TogglePS1 ("Enable Low Precision (PS1)", Float) = 0.0
[Enum(Disabled, 0, World Space, 1, Screen Space, 2)] _PS1Rounding ("Rounding Style", Int) = 0.0
_PS1RoundingPrecision ("Rounding Precision", Float) = 64
[Enum(Disabled, 0, Enabled, 1)] _PS1Affine ("Enable Affine Texture Mapping", Int) = 0.0
[Enum(Disabled, 0, Enabled, 1)] _PS1Compression ("Enable Color Compression", Int) = 0.0
_PS1CompressionPrecision ("Color Compression Precision", Float) = 32




_OutlineColor ("Outline Color", Color) = (0, 0, 0, 1)
_OutlineWidth ("Outline Width", Range(0, 0.1)) = 0.005
[Enum(Disabled, 0, Enabled, 1)] _OutlineVertexColorMask ("Use Vertex Color (R) Mask", Float) = 0.0
[Enum(Disabled, 0, Enabled, 1)] _OutlineDistanceFade ("Enable Distance Fade", Float) = 0.0
_OutlineFadeStart ("Fade Start Distance", Float) = 10.0
_OutlineFadeEnd ("Fade End Distance", Float) = 15.0
[Enum(Disabled, 0, Enabled, 1)] _OutlineHueShift ("Enable Hue Shift", Float) = 0.0
_OutlineHueShiftSpeed ("Hue Shift Speed", Float) = 0.2
_OutlineOpacity ("Outline Opacity", Range(0, 1)) = 1.0




[Enum(Disabled, 0, Enabled, 1)] _IndirectOverride ("Indirect Override", Float) = 0.0
[Enum(Disabled, 0, Cubemap, 1)] _IndirectFallbackMode ("Indirect Fallback Mode", Float) = 0.0
_FallbackCubemap ("Fallback Cubemap", Cube) = "" { }




[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _MainTex_UV ("Main texture UV set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _BumpMap_UV ("Bump map UV set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _MSSO_UV ("MSSO UV set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _SpecularTintTexture_UV ("Specular Tint UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _TangentMap_UV ("Tangent Map UV", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _EmissionMap_UV ("Emission Map UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _ClearcoatMap_UV ("Clear Coat Map UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _MatcapMask_UV ("Clear Coat Map UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _ParallaxMap_UV ("Height Map UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _ThicknessMap_UV ("Thickness Map UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _DetailMap_UV ("Detail Map UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _Decal1_UV ("Deca; 1 UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _Decal2_UV ("Decal 2 UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _Glitter_UV ("Glitter UV Set", Int) = 0.0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _IridescenceMask_UV ("Iridescence Mask UV Set", Int) = 0.0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _GlitterMask_UV ("Glitter Mask UV Set", Int) = 0.0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _HairFlowMap_UV ("Hair Flow Map UV Set", Int) = 0.0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _ShadowTex_UV ("Shadow Texture UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _Flowmap_UV ("Flowmap UV Set", Int) = 0.0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _MirrorDetectionTexture_UV ("Mirror Detection Texture UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _RefractionMask_UV ("Refraction Mask UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _PathingMap_UV ("Pathing Map UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _ShadowMap_UV ("Shadow Map UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _PathingTexture_UV ("Pathing Texture UV Set", Int) = 0
[Enum(Zero, 0, One, 1, Two, 2, Three, 3)] _Dither_UV ("Dither UV Set", Int) = 0
}
SubShader
{


Tags { "RenderType" = "Transparent" "Queue" = "Transparent" "VRCFallback"="Toon" "Backlace"="1.0.0" }
Blend [_SrcBlend] [_DstBlend]
ZWrite [_ZWrite]
Cull [_Cull]
Stencil { Ref [_StencilRef] Comp [_StencilComp] Pass [_StencilPass] Fail [_StencilFail] ZFail [_StencilZFail] }
GrabPass { Tags { "LightMode" = "ForwardBase" } "_BacklaceGP" } 

Pass
{
Name "Outline"
Tags { "LightMode" = "Always" }
Cull Front
ZWrite Off
Blend SrcAlpha OneMinusSrcAlpha
Stencil { Ref [_OutlineStencilRef] Comp [_OutlineStencilComp] Pass [_OutlineStencilPass] Fail [_OutlineStencilFail] ZFail [_OutlineStencilZFail] }
CGPROGRAM
#ifndef UNITY_PASS_OUTLINE
#define UNITY_PASS_OUTLINE
#endif 


#ifndef BACKLACE_OUTLINE_CGINC
#define BACKLACE_OUTLINE_CGINC

#pragma vertex vert
#pragma fragment frag


#include "UnityCG.cginc"


#ifndef BACKLACE_UNIVERSAL_CGINC
#define BACKLACE_UNIVERSAL_CGINC

#define BACKLACE_TRANSFORM_TEX(set, name) (set[name##_UV].xy * name##_ST.xy + name##_ST.zw)

struct BacklaceSurfaceData
{

float4 FinalColor;

float4 Albedo;
float3 NormalDir;
float3 TangentDir;
float3 BitangentDir;

float Metallic;
float Glossiness;
float Roughness;
float SquareRoughness;
float Specular;
float OneMinusReflectivity;
float Occlusion;

float3 ViewDir;
float3 LightDir;
float3 HalfDir;
float3 ReflectDir;

float NdotL;
float UnmaxedNdotL;
float NdotV;
float NdotH;
float LdotH;

float4 LightColor;
float4 SpecLightColor;
float3 IndirectDiffuse;
float3 Diffuse;
float3 DirectSpecular;
float3 IndirectSpecular;
float3 VertexDirectDiffuse;
float Attenuation;

float3 SpecularColor;
float3 EnergyCompensation;
float3 Dfg;
float3 CustomIndirect;

float2 ScreenCoords;
bool IsFrontFace;
};

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD) || defined(UNITY_PASS_META) || defined(_BLENDMODE_CUTOUT) || defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
#ifndef UNITY_PASS_OUTLINE

float2 Uvs[4];
void LoadUVs()
{
Uvs[0] = FragData.uv;
Uvs[1] = FragData.uv1;
Uvs[2] = FragData.uv2;
Uvs[3] = FragData.uv3;
}
void SampleAlbedo(inout BacklaceSurfaceData Surface)
{
Surface.Albedo = UNITY_SAMPLE_TEX2D(_MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _MainTex)) * _Color;
}
#endif 
#endif 

inline float remap(float value, float oldMin, float oldMax, float newMin, float newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float2 remap(float2 value, float2 oldMin, float2 oldMax, float2 newMin, float2 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float3 remap(float3 value, float3 oldMin, float3 oldMax, float3 newMin, float3 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float4 remap(float4 value, float4 oldMin, float4 oldMax, float4 newMin, float4 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline half Pow5(half x)
{
return x * x * x * x * x;
}

float sqr(float x)
{
return x * x;
}

inline float GetLuma(float3 color)
{
return dot(color, float3(0.299, 0.587, 0.114));
}


float fastpow(float x, float p)
{
return exp2(p * log2(x));
}

float Hash(float2 p)
{
float3 p3 = frac(float3(p.xyx) * .1031);
p3 += dot(p3, p3.yzx + 33.33);
return frac((p3.x + p3.y) * p3.z);
}

float2 Hash2(float2 p)
{
return float2(Hash(p), Hash(p + 0.123));
}

float3 HSVtoRGB(float3 c)
{
float4 K = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
float3 p = abs(frac(c.xxx + K.xyz) * 6.0 - K.www);
return c.z * lerp(K.xxx, saturate(p - K.xxx), c.y);
}

float3 RGBtoHSV(float3 c) {
float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
float4 p = lerp(float4(c.bg, K.wz), float4(c.gb, K.xy), step(c.b, c.g));
float4 q = lerp(float4(p.xyw, c.r), float4(c.r, p.yzx), step(p.x, c.r));
float d = q.x - min(q.w, q.y);
float E = 1e-10;
return float3(abs(q.z + (q.w - q.y) / (6.0 * d + E)), d / (q.x + E), q.x);
}

inline half3 FresnelTerm(half3 F0, half cosA)
{
half t = Pow5(1 - cosA);
return F0 + (1 - F0) * t;
}

float GTR2(float NdotH, float a)
{
float a2 = a * a;
float NdotH2 = NdotH * NdotH;
float denominator = NdotH2 * (a2 - 1.0) + 1.0;
denominator = UNITY_PI * denominator * denominator + 1e-7f;
return a2 / denominator;
}

float smithG_GGX(float NdotV, float alphaG)
{
float a = alphaG * alphaG;
float b = NdotV * NdotV;
return 1 / (NdotV + sqrt(a + b - a * b) + 1e-7f);
}

float3 ApplyHueShift(float3 inColor, float baseShift, float autoCycleToggle, float autoCycleSpeed)
{
float totalShift = baseShift;
if (autoCycleToggle > 0)
{
totalShift += frac(_Time.y * autoCycleSpeed);
}
float3 hsv = RGBtoHSV(inColor);
hsv.x = frac(hsv.x + totalShift);
return HSVtoRGB(hsv);
}

float3 Sinebow(float val)
{
val = 0.5 - val * 0.5; 
float3 sinebowColor = sin((val * UNITY_PI) + float3(0.0, 0.333 * UNITY_PI, 0.666 * UNITY_PI));
return sinebowColor * sinebowColor;
}

float3 GetCameraPos()
{
#if UNITY_SINGLE_PASS_STEREO
return (unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1]) * 0.5;
#else 
return _WorldSpaceCameraPos;
#endif 
}

float3 RotateVector(float3 pos, float3 rotation)
{
float3 angles = rotation * (UNITY_PI / 180.0);
float3 s, c;
sincos(angles, s, c);
float3x3 rotX = float3x3(1, 0, 0, 0, c.x, -s.x, 0, s.x, c.x);
float3x3 rotY = float3x3(c.y, 0, s.y, 0, 1, 0, -s.y, 0, c.y);
float3x3 rotZ = float3x3(c.z, -s.z, 0, s.z, c.z, 0, 0, 0, 1);
return mul(rotZ, mul(rotY, mul(rotX, pos)));
}

void GetTriplanarUVsAndWeights(
float3 worldPos, float3 normal,
float3 position, float scale, float3 rotation, float sharpness,
out float2 uvX, out float2 uvY, out float2 uvZ, out float3 weights)
{
float3 localPos = RotateVector(worldPos - position, -rotation);
weights = pow(abs(normal), sharpness);
weights /= dot(weights, 1.0.xxx); 
uvX = localPos.yz / scale;
uvY = localPos.xz / scale;
uvZ = localPos.xy / scale;
}

float4 SampleTriplanar(
Texture2D tex, SamplerState texSampler,
float2 uvX, float2 uvY, float2 uvZ, float3 weights,
bool isTiling, float2 scroll)
{
float4 sampleX, sampleY, sampleZ;
float2 scrollOffset = scroll * _Time.y;
if (isTiling)
{

sampleX = tex.Sample(texSampler, frac(uvX + scrollOffset));
sampleY = tex.Sample(texSampler, frac(uvY + scrollOffset));
sampleZ = tex.Sample(texSampler, frac(uvZ + scrollOffset));
}
else
{

uvX += 0.5;
uvY += 0.5;
uvZ += 0.5;
sampleX = 0;
if (all(saturate(uvX) == uvX))
{
sampleX = tex.Sample(texSampler, uvX);
}
sampleY = 0;
if (all(saturate(uvY) == uvY))
{
sampleY = tex.Sample(texSampler, uvY);
}
sampleZ = 0;
if (all(saturate(uvZ) == uvZ))
{
sampleZ = tex.Sample(texSampler, uvZ);
}
}
return sampleX * weights.x + sampleY * weights.y + sampleZ * weights.z;
}

float4 SampleTextureTriplanar(Texture2D tex, SamplerState texSampler, float3 worldPos,
float3 normal, float3 position, float scale, float3 rotation,
float sharpness, bool isTiling, float2 scroll)
{

float2 uvX, uvY, uvZ;
float3 weights;
GetTriplanarUVsAndWeights(worldPos, normal, position, scale, rotation, sharpness, uvX, uvY, uvZ, weights);

return SampleTriplanar(tex, texSampler, uvX, uvY, uvZ, weights, isTiling, scroll);
}
float2 ApplyFlipbook(float2 uvs, float columns, float rows, float totalFrames, float fps, float scrub)
{
float frame = floor(frac(fps * _Time.y + scrub) * totalFrames);
float col = fmod(frame, columns);
float row = floor(frame / columns);
float2 cellSize = 1.0 / float2(columns, rows);
row = (rows - 1) - row;
float2 outputUVs = (uvs * cellSize) + float2(col, row) * cellSize;
return outputUVs;
}

float2 ManipulateUVs(float2 uv, float rotation, float scalex, float scaley, float offsetx, float offsety, float scrollx, float scrolly)
{
float2 finalUV = uv;
if (rotation != 0)
{
finalUV = uv - 0.5;
float angle = -rotation * (UNITY_PI / 180.0);
float s = sin(angle);
float c = cos(angle);
float2x2 rotationMatrix = float2x2(c, -s, s, c);
finalUV = mul(rotationMatrix, finalUV);
finalUV += 0.5;
}
finalUV *= float2(scalex, scaley);
finalUV += float2(offsetx, offsety);
finalUV += float2(scrollx, scrolly) * _Time.y;
return finalUV;
}

float GetTiltedCheckerboardPattern(float2 screenPos, float scale)
{
float u = screenPos.x + screenPos.y;
float v = screenPos.x - screenPos.y;
float2 gridPos = floor(float2(u, v) / scale);
return fmod(gridPos.x + gridPos.y, 2.0);
}

#if defined(_BACKLACE_DECAL1) || defined(_BACKLACE_DECAL2)
void ApplyDecal_UVSpace(inout float4 baseAlbedo, float2 baseUV, Texture2D decalTex, SamplerState decalSampler, float4 tint, float2 position, float2 scale, float rotation, int blendMode, float repeat, float2 scroll, float hueShift, float autoCycle, float cycleSpeed, float alHue, float alEmission, float alOpacity)
{
baseUV += scroll * _Time.y;
float angle = -rotation * (UNITY_PI / 180.0);
float s = sin(angle);
float c = cos(angle);
float2x2 rotationMatrix = float2x2(c, -s, s, c);
float2 localUV = baseUV - position;
localUV = mul(rotationMatrix, localUV);
localUV /= max(scale, 0.0001);
localUV += 0.5;
if (repeat == 1) 
{
localUV = frac(localUV);
}
else 
{
if (any(saturate(localUV) != localUV))
{
return;
}
}
float4 decalColor = decalTex.Sample(decalSampler, localUV) * tint;
decalColor.rgb = ApplyHueShift(decalColor.rgb, hueShift + alHue, autoCycle, cycleSpeed);
decalColor.a *= alOpacity;
decalColor.rgb *= alEmission;
switch(blendMode)
{
case 0: baseAlbedo.rgb += decalColor.rgb * decalColor.a; break; 
case 1: baseAlbedo.rgb = lerp(baseAlbedo.rgb, baseAlbedo.rgb * decalColor.rgb, decalColor.a); break; 
case 2: baseAlbedo.rgb = lerp(baseAlbedo.rgb, decalColor.rgb, decalColor.a); break; 
}
}
void ApplyDecal_Triplanar(inout float4 baseAlbedo, float3 worldPos, float3 normal, Texture2D decalTex, SamplerState decalSampler, float4 tint, float3 position, float scale, float3 rotation, float sharpness, int blendMode, float repeat, float2 scroll, float hueShift, float autoCycle, float cycleSpeed, float alHue, float alEmission, float alOpacity)
{
float4 decalColor = SampleTextureTriplanar(decalTex, decalSampler, worldPos, normal, position, scale, rotation, sharpness, repeat > 0.5, scroll);
decalColor *= tint;
if (hueShift != 0) {
decalColor.rgb = ApplyHueShift(decalColor.rgb, hueShift + alHue, autoCycle, cycleSpeed);
}
decalColor.a *= alOpacity;
decalColor.rgb *= alEmission;
switch(blendMode)
{
case 0: baseAlbedo.rgb += decalColor.rgb * decalColor.a; break;
case 1: baseAlbedo.rgb = lerp(baseAlbedo.rgb, baseAlbedo.rgb * decalColor.rgb, decalColor.a); break;
case 2: baseAlbedo.rgb = lerp(baseAlbedo.rgb, decalColor.rgb, decalColor.a); break;
}
}

#if defined(_BACKLACE_DECAL1)
void ApplyDecal1(inout BacklaceSurfaceData Surface, FragmentData i, float2 Uvs[4])
{
float alHue = 0;
float alEmission = 1;
float alOpacity = 1;
#if defined(_BACKLACE_AUDIOLINK)
alHue = i.alChannel2.w;
alEmission = i.alChannel3.x;
alOpacity = i.alChannel3.y;
#endif 
float4 decalApplied = (_DecalStage == 0) ? Surface.Albedo : float4(Surface.FinalColor.rgb, 1.0);
[branch] if (_Decal1IsTriplanar == 1)
{
ApplyDecal_Triplanar(decalApplied, i.worldPos, Surface.NormalDir, _Decal1Tex, sampler_Decal1Tex, _Decal1Tint, _Decal1TriplanarPosition.xyz, _Decal1TriplanarScale, _Decal1TriplanarRotation.xyz, _Decal1TriplanarSharpness, _Decal1BlendMode, _Decal1Repeat, _Decal1Scroll.xy, _Decal1HueShift, _Decal1AutoCycleHue, _Decal1CycleSpeed, alHue, alEmission, alOpacity);
}
else
{
ApplyDecal_UVSpace(decalApplied, Uvs[_Decal1_UV], _Decal1Tex, sampler_Decal1Tex, _Decal1Tint, _Decal1Position.xy, _Decal1Scale.xy, _Decal1Rotation, _Decal1BlendMode, _Decal1Repeat, _Decal1Scroll, _Decal1HueShift, _Decal1AutoCycleHue, _Decal1CycleSpeed, alHue, alEmission, alOpacity);
}
[branch] if (_DecalStage == 0) 
{
Surface.Albedo = decalApplied;
}
else 
{
Surface.FinalColor.rgb = decalApplied.rgb;
}
}
#endif 

#if defined(_BACKLACE_DECAL2)
void ApplyDecal2(inout BacklaceSurfaceData Surface, FragmentData i, float2 Uvs[4])
{
float alHue = 0;
float alEmission = 1;
float alOpacity = 1;
#if defined(_BACKLACE_AUDIOLINK)
alHue = i.alChannel2.w;
alEmission = i.alChannel3.x;
alOpacity = i.alChannel3.y;
#endif 
float4 decalApplied = (_DecalStage == 0) ? Surface.Albedo : float4(Surface.FinalColor.rgb, 1.0);
[branch] if (_Decal2IsTriplanar == 1)
{
ApplyDecal_Triplanar(decalApplied, i.worldPos, Surface.NormalDir, _Decal2Tex, sampler_Decal2Tex, _Decal2Tint, _Decal2TriplanarPosition.xyz, _Decal2TriplanarScale, _Decal2TriplanarRotation.xyz, _Decal2TriplanarSharpness, _Decal2BlendMode, _Decal2Repeat, _Decal2Scroll, _Decal2HueShift, _Decal2AutoCycleHue, _Decal2CycleSpeed, alHue, alEmission, alOpacity);
}
else
{
ApplyDecal_UVSpace(decalApplied, Uvs[_Decal2_UV], _Decal2Tex, sampler_Decal2Tex, _Decal2Tint, _Decal2Position.xy, _Decal2Scale.xy, _Decal2Rotation, _Decal2BlendMode, _Decal2Repeat, _Decal2Scroll, _Decal2HueShift, _Decal2AutoCycleHue, _Decal2CycleSpeed, alHue, alEmission, alOpacity);
}
[branch] if (_DecalStage == 0) 
{
Surface.Albedo = decalApplied;
}
else 
{
Surface.FinalColor.rgb = decalApplied.rgb;
}
}
#endif 
#endif 

#if defined(_BACKLACE_UV_EFFECTS)
void ApplyUVEffects(inout float2 uv, in BacklaceSurfaceData Surface)
{

[branch] if (_UVTriplanarMapping == 1)
{
float2 uvX, uvY, uvZ;
float3 weights;
GetTriplanarUVsAndWeights(
FragData.worldPos, Surface.NormalDir,
_UVTriplanarPosition, _UVTriplanarScale, _UVTriplanarRotation, _UVTriplanarSharpness,
uvX, uvY, uvZ, weights
);
uv = uvX * weights.x + uvY * weights.y + uvZ * weights.z;
}

[branch] if (_UVScreenspaceMapping == 1)
{
uv = frac(Surface.ScreenCoords * _UVScreenspaceTiling);
}

[branch] if (_UVFlipbook == 1) {
uv = ApplyFlipbook(uv, _UVFlipbookColumns, _UVFlipbookRows, _UVFlipbookFrames, _UVFlipbookFPS, _UVFlipbookScrub);
}

[branch] if (_UVFlowmap == 1) {
float2 flow = UNITY_SAMPLE_TEX2D(_UVFlowmapTex, uv).rg * 2.0 - 1.0;
uv += flow * _UVFlowmapStrength * frac(_Time.y * _UVFlowmapSpeed);
}
}
#endif 

#if defined(_BACKLACE_DISSOLVE)
float _DissolveProgress;
UNITY_DECLARE_TEX2D(_DissolveNoiseTex);
float _DissolveNoiseScale;
float4 _DissolveEdgeColor;
int _DissolveType;
float _DissolveEdgeWidth;
float4 _DissolveDirection;
int _DissolveDirectionSpace;
float _DissolveDirectionBounds;
float _DissolveVoxelDensity;
float _DissolveEdgeSharpness;
float _DissolveEdgeMode;
float GetDissolveMapValue(float3 worldPos, float3 vertexPos, float3 normalDir)
{
float dissolveMapValue = 0;
switch(_DissolveType)
{
case 0: 
{
dissolveMapValue = SampleTextureTriplanar(
_DissolveNoiseTex, sampler_DissolveNoiseTex,
worldPos, normalDir,
float3(0,0,0), _DissolveNoiseScale, float3(0,0,0),
2.0, true, float2(0, 0)
).r;
break;
}
case 1: 
{
float3 position = (_DissolveDirectionSpace == 0) ? vertexPos : worldPos;
float3 direction = normalize(_DissolveDirection.xyz);
dissolveMapValue = dot(position, direction) / max(_DissolveDirectionBounds, 0.001);
dissolveMapValue = saturate(dissolveMapValue * 0.5 + 0.5); 
break;
}
case 2: 
{
float3 voxelID = floor(worldPos * _DissolveVoxelDensity);
dissolveMapValue = Hash(voxelID.xy + voxelID.z);
break;
}
}
return dissolveMapValue;
}
#endif 

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD) || defined(UNITY_PASS_META)

void SampleMSSO(inout BacklaceSurfaceData Surface)
{
Msso = UNITY_SAMPLE_TEX2D_SAMPLER(_MSSO, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _MSSO));
Surface.Occlusion = lerp(1, Msso.a, _Occlusion);
}

#if defined(_BACKLACE_SPECULAR)

void GetSampleData(inout BacklaceSurfaceData Surface)
{
Surface.Metallic = Msso.r * _Metallic;
Surface.Glossiness = Msso.g * _Glossiness;
Surface.Specular = Msso.b * _Specular;
Surface.Roughness = 1 - Surface.Glossiness;
Surface.SquareRoughness = max(Surface.Roughness * Surface.Roughness, 0.002);
}

void SetupAlbedoAndSpecColor(inout BacklaceSurfaceData Surface)
{
float3 specularTint = (UNITY_SAMPLE_TEX2D_SAMPLER(_SpecularTintTexture, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _SpecularTintTexture)).rgb * _SpecularTint).rgb;
float sp = Surface.Specular;
Surface.SpecularColor = lerp(float3(sp, sp, sp), Surface.Albedo.rgb, Surface.Metallic);
if (_ReplaceSpecular == 1)
{
Surface.SpecularColor = specularTint;
}
else
{
Surface.SpecularColor *= specularTint;
}
Surface.OneMinusReflectivity = (1 - sp) - (Surface.Metallic * (1 - sp));
Surface.Albedo.rgb *= Surface.OneMinusReflectivity;
}
#endif 

#if defined(_BACKLACE_EMISSION)

void CalculateEmission(inout BacklaceSurfaceData Surface)
{
float3 baseEmission = _EmissionColor.rgb;
[branch] if (_UseAlbedoAsEmission > 0)
{
baseEmission = lerp(baseEmission, Surface.Albedo.rgb, _UseAlbedoAsEmission);
}
float3 emissionMap = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _EmissionMap)).rgb;
Emission = baseEmission * emissionMap * _EmissionStrength;
}
#endif 
#endif 
#endif 




#ifndef BACKLACE_EFFECTS_CGINC
#define BACKLACE_EFFECTS_CGINC

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD)
#if defined(_BACKLACE_DISSOLVE)

void ApplyDissolve(inout BacklaceSurfaceData Surface, FragmentData i)
{
float dissolveMapValue = GetDissolveMapValue(i.worldPos, i.vertex.xyz, Surface.NormalDir);
float halfWidth = max(_DissolveEdgeWidth, 0.0001) * 0.5;
if (_DissolveEdgeMode == 0) 
{
float fadeIn = smoothstep(0.0, halfWidth, _DissolveProgress);
float fadeOut = 1.0 - smoothstep(1.0 - halfWidth, 1.0, _DissolveProgress);
float masterIntensity = fadeIn * fadeOut;
float distanceFromLine = abs(dissolveMapValue - _DissolveProgress);
float baseGradient = 1.0 - smoothstep(0, halfWidth, distanceFromLine);
float hardnessPower = lerp(1.0, 16.0, _DissolveEdgeSharpness);
float edgeGlow = pow(baseGradient, hardnessPower);
edgeGlow *= masterIntensity;
float surfaceAlpha = step(_DissolveProgress, dissolveMapValue);
Surface.FinalColor.rgb += _DissolveEdgeColor.rgb * edgeGlow * _DissolveEdgeColor.a;
Surface.FinalColor.a = max(surfaceAlpha, edgeGlow * _DissolveEdgeColor.a);
}
else 
{
float startEdge = _DissolveProgress - halfWidth;
float endEdge = _DissolveProgress + halfWidth;
float alpha = saturate(smoothstep(startEdge, endEdge, dissolveMapValue));
Surface.FinalColor.a = alpha;
}
}
#endif 
#endif 

#if defined(_BACKLACE_POST_PROCESSING)
UNITY_DECLARE_TEX2D(_ColorGradingLUT);
float4 _RGBColor;
float _RGBBlendMode;
float _HSVMode;
float _HSVHue;
float _HSVSaturation;
float _HSVValue;
float _ToggleHueShift;
float _HueShift;
float _ToggleAutoCycle;
float _AutoCycleSpeed;
float _ColorGradingIntensity;
float _BlackAndWhite;
float _Brightness;
void ApplyPostProcessing(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 finalColor = Surface.FinalColor.rgb;

float3 tintedColor = lerp(finalColor * _RGBColor.rgb, _RGBColor.rgb, _RGBBlendMode);
finalColor = tintedColor;

float3 hsv = RGBtoHSV(finalColor);
[branch] if (_HSVMode == 1) 
{
hsv.x = frac(hsv.x + _HSVHue);
hsv.y += _HSVSaturation - 1.0;
hsv.z += _HSVValue - 1.0;
}
else if (_HSVMode == 2) 
{
hsv.x = frac(hsv.x + _HSVHue);
hsv.y *= _HSVSaturation;
hsv.z *= _HSVValue;
}
finalColor = HSVtoRGB(saturate(hsv));

[branch] if (_ToggleHueShift > 0)
{
#if defined(_BACKLACE_AUDIOLINK)
finalColor = ApplyHueShift(finalColor, _HueShift + i.alChannel1.z, _ToggleAutoCycle, _AutoCycleSpeed);
#else 
finalColor = ApplyHueShift(finalColor, _HueShift, _ToggleAutoCycle, _AutoCycleSpeed);
#endif 
}

[branch] if (_ColorGradingIntensity > 0)
{
float3 gradedColor = UNITY_SAMPLE_TEX2D(_ColorGradingLUT, finalColor.rg).rgb;
finalColor = lerp(finalColor, gradedColor, _ColorGradingIntensity);
}

[branch] if (_BlackAndWhite > 0)
{
float luma = GetLuma(finalColor);
finalColor = lerp(finalColor, float3(luma, luma, luma), _BlackAndWhite);
}

finalColor *= _Brightness;
Surface.FinalColor.rgb = finalColor;
}
#endif 

#if defined(_BACKLACE_DETAIL)
UNITY_DECLARE_TEX2D(_DetailAlbedoMap);
UNITY_DECLARE_TEX2D(_DetailNormalMap);
float _DetailMap_UV;
float _DetailTiling;
float _DetailNormalStrength;
void ApplyDetailMaps(inout BacklaceSurfaceData Surface)
{
float2 detailUV = Uvs[_DetailMap_UV] * _DetailTiling;
float4 detailAlbedo = UNITY_SAMPLE_TEX2D(_DetailAlbedoMap, detailUV);
Surface.Albedo.rgb *= detailAlbedo.rgb * 2 * detailAlbedo.a;
float3 detailNormalTS = UnpackScaleNormal(UNITY_SAMPLE_TEX2D(_DetailNormalMap, detailUV), _DetailNormalStrength);
float3 baseNormalTS = NormalMap;
NormalMap = normalize(float3(baseNormalTS.xy + detailNormalTS.xy, baseNormalTS.z * detailNormalTS.z));
}
#endif 

#if defined(_BACKLACE_SSS)
float _ThicknessMap_UV;
float4 _SSSColor;
float _SSSStrength;
float _SSSPower;
float _SSSDistortion;
UNITY_DECLARE_TEX2D(_SSSThicknessMap);
float _SSSThickness;
void ApplySubsurfaceScattering(inout BacklaceSurfaceData Surface)
{
float thickness = UNITY_SAMPLE_TEX2D(_SSSThicknessMap, Uvs[_ThicknessMap_UV]).r * _SSSThickness;
float3 scatterDir = normalize(Surface.LightDir + Surface.NormalDir * _SSSDistortion);
float scatterDot = dot(Surface.ViewDir, -scatterDir);
scatterDot = saturate(scatterDot);
float scatterFalloff = pow(scatterDot, _SSSPower);
float3 sss = Surface.LightColor.rgb * _SSSColor.rgb * scatterFalloff * _SSSStrength * thickness;
Surface.Diffuse += sss;
}
#endif 

#if defined(_BACKLACE_PARALLAX)
UNITY_DECLARE_TEX2D(_ParallaxMap);
float _ParallaxMap_UV;
float _ParallaxStrength;
float _ParallaxMode;
float _ParallaxSteps;
#if defined(_BACKLACE_PARALLAX_SHADOWS)
float ParallaxShadow;
float _ParallaxShadowSteps;
float _ParallaxShadowStrength;
#endif 
void ApplyParallax_Fast(inout float2 uv, in BacklaceSurfaceData Surface)
{
float height = UNITY_SAMPLE_TEX2D(_ParallaxMap, uv).r;
float3 viewDirTS = float3(dot(Surface.ViewDir, Surface.TangentDir), dot(Surface.ViewDir, Surface.BitangentDir), 0);
float2 offset = viewDirTS.xy * (height * _ParallaxStrength);
uv -= offset;
}
void ApplyParallax_Fancy(inout float2 uv, inout BacklaceSurfaceData Surface)
{
float3 viewDirTS = float3(dot(Surface.ViewDir, Surface.TangentDir), dot(Surface.ViewDir, Surface.BitangentDir), dot(Surface.ViewDir, Surface.NormalDir));
float numSteps = _ParallaxSteps;
float stepSize = 1.0 / numSteps;
float2 step = -viewDirTS.xy * _ParallaxStrength * stepSize;
float currentHeight = 1.0;
float2 currentUVOffset = 0;
float surfaceHeight = 1.0;
[loop] for (int i = 0; i < numSteps; i++)
{
currentHeight -= stepSize;
currentUVOffset += step;
surfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + currentUVOffset, 0).r;
if (surfaceHeight > currentHeight)
{
currentUVOffset -= step;
currentHeight += stepSize;
float prevSurfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + currentUVOffset, 0).r;
float distanceToSurface = currentHeight - surfaceHeight;
float distanceBetweenSamples = surfaceHeight - prevSurfaceHeight;
currentUVOffset += step * (distanceToSurface / max(distanceBetweenSamples, 0.001));
uv += currentUVOffset;
surfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv, 0).r;
break;
}
}
#if defined(_BACKLACE_PARALLAX_SHADOWS)
ParallaxShadow = 1.0;
float3 lightDirTS = float3(dot(Surface.LightDir, Surface.TangentDir), dot(Surface.LightDir, Surface.BitangentDir), dot(Surface.LightDir, Surface.NormalDir));
float shadowSteps = _ParallaxShadowSteps;
float shadowStepSize = 1.0 / shadowSteps;
float2 shadowStep = lightDirTS.xy * _ParallaxStrength * shadowStepSize;
float shadowRayHeight = surfaceHeight + shadowStepSize;
[loop] for (int j = 0; j < shadowSteps; j++)
{
float shadowSampleHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + shadowStep * j, 0).r;
if (shadowSampleHeight > shadowRayHeight)
{
ParallaxShadow = 0.0;
break;
}
shadowRayHeight += shadowStepSize;
}
ParallaxShadow = lerp(1.0, ParallaxShadow, _ParallaxShadowStrength);
#endif 
}
#endif 

#if defined(_BACKLACE_CUBEMAP)
samplerCUBE _CubemapTex;
float4 _CubemapTint;
float _CubemapIntensity;
int _CubemapBlendMode;
void ApplyCubemap(inout BacklaceSurfaceData Surface)
{
float3 cubemapColor = texCUBE(_CubemapTex, Surface.ReflectDir).rgb * _CubemapTint.rgb;
float intensity = _CubemapIntensity;
switch(_CubemapBlendMode)
{
case 0: 
Surface.FinalColor.rgb += cubemapColor * intensity;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * cubemapColor, intensity);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, cubemapColor, intensity);
break;
}
}
#endif 

#if defined(_BACKLACE_MATCAP)
UNITY_DECLARE_TEX2D(_MatcapTex);
UNITY_DECLARE_TEX2D(_MatcapMask);
float4 _MatcapTex_ST;
float _MatcapIntensity;
float3 _MatcapTint;
float _MatcapSmoothnessEnabled;
float _MatcapSmoothness;
float _MatcapMask_UV;
int _MatcapBlendMode;
void ApplyMatcap(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 matcapColor;
[branch] if (_MatcapSmoothnessEnabled == 1)
{

float mipLevel = _MatcapSmoothness * 10.0;
matcapColor = UNITY_SAMPLE_TEX2D_LOD(_MatcapTex, i.matcapUV, mipLevel).rgb;
}
else
{
matcapColor = UNITY_SAMPLE_TEX2D(_MatcapTex, i.matcapUV).rgb;
}
matcapColor *= _MatcapTint.rgb;
float mask = UNITY_SAMPLE_TEX2D(_MatcapMask, Uvs[_MatcapMask_UV]).r;
float finalMatcapIntensity = _MatcapIntensity;
#if defined(_BACKLACE_AUDIOLINK)
finalMatcapIntensity *= i.alChannel1.w;
#endif 
float3 finalMatcap = matcapColor * finalMatcapIntensity * mask;
switch(_MatcapBlendMode)
{
case 0: 
Surface.FinalColor.rgb += finalMatcap;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * matcapColor, mask * _MatcapIntensity);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, matcapColor * _MatcapIntensity, mask);
break;
}
}
#endif 

#if defined(_BACKLACE_RIMLIGHT)
float3 Rimlight;
float4 _RimColor;
float _RimWidth;
float _RimIntensity;
float _RimLightBased;
void CalculateRimlight(inout BacklaceSurfaceData Surface)
{
float fresnel = 1 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
fresnel = pow(fresnel, _RimWidth);
[branch] if (_RimLightBased > 0)
{
fresnel *= Surface.NdotL;
}
Rimlight = fresnel * _RimColor.rgb * _RimIntensity;
}
#endif 

#if defined(_BACKLACE_CLEARCOAT)
UNITY_DECLARE_TEX2D(_ClearcoatMap);
float4 _ClearcoatMap_ST;
float _ClearcoatStrength;
float _ClearcoatRoughness;
float _ClearcoatReflectionStrength;
float _ClearcoatMap_UV;
float4 _ClearcoatColor;
void CalculateClearcoat(inout BacklaceSurfaceData Surface, out float3 highlight, out float3 occlusion)
{
float4 clearcoatMap = UNITY_SAMPLE_TEX2D(_ClearcoatMap, Uvs[_ClearcoatMap_UV]);
float mask = _ClearcoatStrength * clearcoatMap.r;
float roughness = _ClearcoatRoughness * clearcoatMap.g;
float3 F0 = lerp(0.04, 1.0, _ClearcoatReflectionStrength);
float3 fresnel = FresnelTerm(F0, Surface.LdotH);
float squareRoughness = max(roughness * roughness, 0.002);
float distribution = GTR2(Surface.NdotH, squareRoughness);
float geometry = smithG_GGX(Surface.NdotL, squareRoughness) * smithG_GGX(Surface.NdotV, squareRoughness);
float3 clearcoatSpec = fresnel * distribution * geometry;
highlight = clearcoatSpec * lerp(Surface.LightColor.rgb, Surface.LightColor.rgb * _ClearcoatColor.rgb, _ClearcoatColor.a) * mask;
float3 occlusionTint = lerp(1.0, _ClearcoatColor.rgb, fresnel);
occlusion = lerp(1.0, occlusionTint, mask);
}
#if defined(_BACKLACE_VERTEX_SPECULAR) && defined(VERTEXLIGHT_ON)
void AddClearcoatVertex(inout BacklaceSurfaceData Surface)
{
float3 VLightDir = normalize(VertexLightDir);
if (dot(VLightDir, VLightDir) < 0.01) return;
float3 F0 = lerp(0.04, 1.0, _ClearcoatReflectionStrength);
float3 fresnel = FresnelTerm(F0, saturate(dot(normalize(VLightDir + Surface.ViewDir), VLightDir)));
float roughness = _ClearcoatRoughness; 
float squareRoughness = max(roughness * roughness, 0.002);
float distribution = GTR2(saturate(dot(Surface.NormalDir, normalize(VLightDir + Surface.ViewDir))), squareRoughness);
float geometry = smithG_GGX(saturate(dot(Surface.NormalDir, VLightDir)), squareRoughness) * smithG_GGX(Surface.NdotV, squareRoughness);
float3 clearcoatV_Spec = fresnel * distribution * geometry;
Surface.FinalColor.rgb += clearcoatV_Spec * Surface.VertexDirectDiffuse * _ClearcoatColor.rgb * _ClearcoatStrength;
}
#endif 
#endif 

#if defined(_BACKLACE_DEPTH_RIMLIGHT)
#ifndef BACKLACE_DEPTH
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif 
float4 _DepthRimColor;
float _DepthRimWidth;
float _DepthRimThreshold;
float _DepthRimSharpness;
int _DepthRimBlendMode;

static const int2 sobelPoints[9] = {
int2(-1, -1), int2(0, -1), int2(1, -1),
int2(-1, 0), int2(0, 0), int2(1, 0),
int2(-1, 1), int2(0, 1), int2(1, 1)
};

float ScaleRimWidth(float z) {
float scale = 1.0 / z;
return _DepthRimWidth * 50.0 / _ScreenParams.y * scale;
}
void ApplyDepthRim(inout BacklaceSurfaceData Surface, FragmentData i)
{
float sceneDepthRaw = tex2D(_CameraDepthTexture, float2(i.scrPos.xy / i.scrPos.w)).r;
float sceneDepthLinear = LinearEyeDepth(sceneDepthRaw);
float modelDepthLinear = i.scrPos.w;;
float depthStatus = 0;
[unroll(9)]
for (int idx = 0; idx < 9; idx++)
{
float2 offset = sobelPoints[idx] * ScaleRimWidth(modelDepthLinear);
float sampleDepthRaw = tex2D(_CameraDepthTexture, float2(i.scrPos.xy / i.scrPos.w) + offset).r;
float sampleDepthLinear = LinearEyeDepth(sampleDepthRaw);
depthStatus += step(modelDepthLinear + _DepthRimThreshold, sampleDepthLinear);
}
float edgeFactor = depthStatus / 9.0;
edgeFactor = pow(edgeFactor, _DepthRimSharpness);
float rimIntensity = edgeFactor * _DepthRimColor.a;
switch(_DepthRimBlendMode)
{
case 0: 
Surface.FinalColor.rgb += _DepthRimColor.rgb * rimIntensity;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, _DepthRimColor.rgb, rimIntensity);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * _DepthRimColor.rgb, rimIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_PATHING)
UNITY_DECLARE_TEX2D(_PathingMap);
float2 _PathingMap_ST;
float4 _PathingColor;
float _PathingEmission;
int _PathingType;
float _PathingSpeed;
float _PathingWidth;
float _PathingSoftness;
float _PathingOffset;
float _PathingMap_UV;
float _PathingScale;
int _PathingBlendMode;
int _PathingMappingMode;
int _PathingColorMode;
float4 _PathingColor2;
UNITY_DECLARE_TEX2D(_PathingTexture);
float _PathingTexture_UV;
void ApplyPathing(inout BacklaceSurfaceData Surface, FragmentData i)
{
float pathValue;
if (_PathingMappingMode == 0) 
{
pathValue = UNITY_SAMPLE_TEX2D(_PathingMap, frac(Uvs[_PathingMap_UV] * _PathingScale)).r;
}
else 
{
pathValue = SampleTextureTriplanar(
_PathingMap, sampler_PathingMap,
FragData.worldPos, Surface.NormalDir,
float3(0, 0, 0), _PathingScale, float3(0, 0, 0),
2.0, true, float2(0, 0)
).r;
}
float pathTime = frac(_Time.y * _PathingSpeed + _PathingOffset);
float pathAlpha = 0;
switch(_PathingType)
{
case 1: 
pathAlpha = 1.0 - saturate(abs(pathTime - pathValue) / _PathingWidth);
break;
case 2: 
float loop_dist = abs(pathTime - pathValue);
loop_dist = min(loop_dist, 1.0 - loop_dist);
pathAlpha = 1.0 - saturate(loop_dist / _PathingWidth);
break;
case 3: 
pathTime = 1.0 - abs(1.0 - 2.0 * pathTime); 
pathAlpha = 1.0 - saturate(abs(pathTime - pathValue) / _PathingWidth);
break;
case 4: 
float trail_dist = pathTime - pathValue;
pathAlpha = smoothstep(0, _PathingWidth, trail_dist) - smoothstep(_PathingWidth, _PathingWidth + 0.001, trail_dist);
break;
case 5: 
float convergeTime = abs(1.0 - 2.0 * pathTime); 
float convergeDist = abs(convergeTime - (abs(1.0 - 2.0 * pathValue)));
pathAlpha = 1.0 - saturate(convergeDist / _PathingWidth);
break;
default: 
pathAlpha = pathTime > pathValue;
break;
}
pathAlpha = smoothstep(0, _PathingSoftness, pathAlpha);
#if defined(_BACKLACE_AUDIOLINK)
pathAlpha *= i.alChannel2.x;
#endif 
if (pathAlpha <= 0.001) return;

float3 pathEmission = pathAlpha * _PathingEmission;
float pathBlend = _PathingColor.a;
switch(_PathingColorMode)
{
case 1: 
float4 pathSample = UNITY_SAMPLE_TEX2D(_PathingTexture, Uvs[_PathingTexture_UV]);
pathEmission *= pathSample.rgb;
pathBlend = pathSample.a;
break;
case 2: 
float4 pathGradinet = lerp(_PathingColor, _PathingColor2, pathValue);
pathEmission *= pathGradinet.rgb;
pathBlend = pathGradinet.a;
break;
default: 
pathEmission *= _PathingColor.rgb;
break;
}
switch(_PathingBlendMode)
{
case 0: 
Surface.FinalColor.rgb += pathEmission;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * pathEmission.rgb, pathAlpha);
break;
case 2: 
float blendIntensity = pathAlpha * pathBlend;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, pathEmission.rgb, blendIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_GLITTER)

UNITY_DECLARE_TEX2D(_GlitterMask);
UNITY_DECLARE_TEX2D(_GlitterNoiseTex);
float _Glitter_UV;
float _GlitterMask_UV;
float _ToggleGlitterRainbow;
float _GlitterMode;
float4 _GlitterTint;
float _GlitterFrequency;
float _GlitterThreshold;
float _GlitterSize;
float _GlitterFlickerSpeed;
float _GlitterBrightness;
float _GlitterContrast;
float _GlitterRainbowSpeed;

void ApplyGlitter(inout BacklaceSurfaceData Surface)
{
float3 final_glitter = 0;
float unique_flake_id = 0;
float glitter_mask = 0;
float2 uv = Uvs[_Glitter_UV] * _GlitterFrequency;
float2 i_uv = floor(uv);
float2 f_uv = frac(uv);
[branch] if (_GlitterMode == 0) 
{
float min_dist = 1.0;
float2 closest_point_id = 0;
for (int y = -1; y <= 1; y++)
{
for (int x = -1; x <= 1; x++)
{
float2 neighbor_offset = float2(x, y);
float2 point_pos = Hash2(i_uv + neighbor_offset);
float dist = length(neighbor_offset +point_pos - f_uv);
if (dist < min_dist)
{
min_dist = dist;
closest_point_id = i_uv + neighbor_offset;
}
}
}
unique_flake_id = Hash(closest_point_id);
if (unique_flake_id < _GlitterThreshold) return;
glitter_mask = saturate((_GlitterSize - min_dist) / max(fwidth(min_dist), 0.001));
}
else if (_GlitterMode == 1) 
{

float noise_val = UNITY_SAMPLE_TEX2D_LOD(_GlitterNoiseTex, i_uv / _GlitterFrequency, 0).r;
if (noise_val < _GlitterThreshold) return;
float dist_from_center = length(f_uv - 0.5);
glitter_mask = saturate((_GlitterSize - dist_from_center) / max(fwidth(dist_from_center), 0.001));
unique_flake_id = Hash(i_uv);
}
if (glitter_mask <= 0) return;
float time = _Time.y * _GlitterFlickerSpeed + unique_flake_id * 100;
float3 glitter_normal = normalize(float3(sin(time * 1.2), cos(time * 1.7), sin(time * 1.5)));
float sparkle = fastpow(saturate(dot(Surface.ViewDir, glitter_normal)), _GlitterContrast);
float3 glitter_color = _GlitterTint.rgb;
if (_ToggleGlitterRainbow > 0)
{
float rainbow_time = _Time.y * _GlitterRainbowSpeed;
glitter_color = lerp(glitter_color, Sinebow(unique_flake_id + rainbow_time), _ToggleGlitterRainbow);
}
float finalGlitterBrightness = _GlitterBrightness;
#if defined(_BACKLACE_AUDIOLINK)
finalGlitterBrightness *= i.alChannel2.y;
#endif 
final_glitter = glitter_mask * glitter_color * finalGlitterBrightness;
float mask_val = UNITY_SAMPLE_TEX2D(_GlitterMask, Uvs[_GlitterMask_UV]).r;
sparkle *= mask_val;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, final_glitter, sparkle);
}
#endif 

#if defined(_BACKLACE_DISTANCE_FADE)

float _DistanceFadeReference;
float _ToggleNearFade;
float _NearFadeMode;
float _NearFadeDitherScale;
float _NearFadeStart;
float _NearFadeEnd;
float _ToggleFarFade;
float _FarFadeStart;
float _FarFadeEnd;

void CalculateDistanceFade(FragmentData i, inout bool isNearFading, out float fade_factor)
{
fade_factor = 1.0;
float3 referencePos = _DistanceFadeReference == 1 ? i.worldObjectCenter : i.worldPos;
float view_dist = distance(referencePos, GetCameraPos());
isNearFading = false;
if (_ToggleNearFade == 1 && _NearFadeStart > _NearFadeEnd)
{
float nearFade = smoothstep(_NearFadeEnd, _NearFadeStart, view_dist);
fade_factor *= nearFade;
isNearFading = nearFade < 1.0;
}
if (_ToggleFarFade == 1 && _FarFadeEnd > _FarFadeStart)
{
float farFade = 1.0 - smoothstep(_FarFadeStart, _FarFadeEnd, view_dist);
fade_factor *= farFade;
}
}

float ApplyDistanceFadePre(bool isNearFading, float fade_factor)
{
if (_NearFadeMode == 0) { 
if (fade_factor == 0) {
return -1; 
}
}
return fade_factor; 
}

void ApplyDistanceFadePost(FragmentData i, float fade_factor, bool isNearFading, inout BacklaceSurfaceData Surface)
{
[branch] if (_NearFadeMode == 1 && isNearFading) {
float pattern = GetTiltedCheckerboardPattern(Surface.ScreenCoords * _ScreenParams.xy, _NearFadeDitherScale);
Surface.FinalColor.a *= step(fade_factor, pattern);
} else {

Surface.FinalColor.a *= fade_factor;
}
}
#endif 

#if defined(_BACKLACE_IRIDESCENCE)
UNITY_DECLARE_TEX2D(_IridescenceMask);
float _IridescenceMask_UV;
float4 _IridescenceTint;
float _IridescenceIntensity;
int _IridescenceBlendMode;
UNITY_DECLARE_TEX2D(_IridescenceRamp);
float _IridescencePower;
float _IridescenceFrequency;
float _IridescenceMode;
float _IridescenceParallax;;
void ApplyIridescence(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 shiftedNormal = normalize(Surface.NormalDir + Surface.ViewDir * _IridescenceParallax);
float fresnel_base = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
float fresnel_shifted = 1.0 - saturate(dot(shiftedNormal, Surface.ViewDir));
float interference = abs(fresnel_shifted - fresnel_base);
float3 iridescenceColor = 0;
float finalFresnel = pow(interference, _IridescencePower);
if (_IridescenceMode == 0) 
{
iridescenceColor = UNITY_SAMPLE_TEX2D(_IridescenceRamp, float2(finalFresnel, 0.5)).rgb;
}
else if (_IridescenceMode == 1) 
{
float hue = finalFresnel * _IridescenceFrequency;
iridescenceColor = Sinebow(hue);
}
float mask = UNITY_SAMPLE_TEX2D(_IridescenceMask, Uvs[_IridescenceMask_UV]).r;
float finalIridescenceIntensity = _IridescenceIntensity;
#if defined(_BACKLACE_AUDIOLINK)
finalIridescenceIntensity *= i.alChannel2.z;
#endif 
float finalIntensity = finalIridescenceIntensity * pow(fresnel_base, 2.0) * mask;
iridescenceColor *= _IridescenceTint.rgb * finalIntensity;
[branch] switch(_IridescenceBlendMode)
{
case 0: 
Surface.FinalColor.rgb += iridescenceColor;
break;
case 1: 
Surface.FinalColor.rgb = 1.0 - (1.0 - Surface.FinalColor.rgb) * (1.0 - iridescenceColor);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, iridescenceColor, finalIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_SHADOW_TEXTURE)
UNITY_DECLARE_TEX2D(_ShadowTex);
float _ShadowTex_UV;
float4 _ShadowPatternColor;
float _ShadowPatternScale;
float _ShadowTextureIntensity;
int _ShadowTextureMappingMode;
float _ShadowPatternTriplanarSharpness;
float _ShadowPatternTransparency;
int _ShadowTextureBlendMode;
float3 GetTexturedShadowColor(inout BacklaceSurfaceData Surface, float3 shadowTint)
{
float3 texturedShadow;
float blendFactor;
float3 albedoTintedShadow = shadowTint * Surface.Albedo.rgb;
float shadowMask = 1.0 - Surface.NdotL;
switch(_ShadowTextureMappingMode)
{
case 0: 
{
float4 shadowAlbedoSample = UNITY_SAMPLE_TEX2D(_ShadowTex, Uvs[_ShadowTex_UV]);
texturedShadow = shadowAlbedoSample.rgb;
blendFactor = shadowAlbedoSample.a * shadowMask;
break;
}
case 1: 
{
float2 screenUVs = frac(Surface.ScreenCoords * _ShadowPatternScale);
float4 patternSample = UNITY_SAMPLE_TEX2D(_ShadowTex, screenUVs);
texturedShadow = albedoTintedShadow;
blendFactor = patternSample.r * patternSample.a * shadowMask;
break;
}
case 2: 
{
float4 patternSample = SampleTextureTriplanar(
_ShadowTex, sampler_MainTex,
FragData.worldPos, Surface.NormalDir,
float3(0, 0, 0), _ShadowPatternScale, float3(0, 0, 0),
_ShadowPatternTriplanarSharpness, true, float2(0, 0)
);
texturedShadow = albedoTintedShadow;
blendFactor = patternSample.r * patternSample.a * shadowMask;
break;
}
}
float3 baseShadowColour = Surface.Albedo.rgb * lerp(Surface.IndirectDiffuse, 1.0, _ShadowPatternTransparency);
float3 finalShadowColor;
switch(_ShadowTextureBlendMode)
{
case 0: 
finalShadowColor = baseShadowColour + texturedShadow * blendFactor;
break;
case 1: 
finalShadowColor = lerp(baseShadowColour, baseShadowColour * texturedShadow, blendFactor);
break;
default: 
finalShadowColor = lerp(baseShadowColour, texturedShadow, blendFactor);
break;
}
float3 originalShadowColor = Surface.Albedo.rgb * Surface.IndirectDiffuse;
return lerp(originalShadowColor, finalShadowColor, _ShadowTextureIntensity);
}
float3 GetTexturedShadowColor(inout BacklaceSurfaceData Surface)
{
return GetTexturedShadowColor(Surface, _ShadowPatternColor.rgb);
}
#endif 

#if defined(_BACKLACE_FLAT_MODEL)
float _FlatModel;
float _FlatModelDepthCorrection;
float _FlatModelFacing;
float _FlatModelLockAxis;
float _FlatModelEnable;
float _FlatModeAutoflip;

void FlattenModel(inout float4 vertex, float3 normal, out float4 finalClipPos, out float3 finalWorldPos, out float3 finalWorldNormal)
{
float facingAngle = _FlatModelFacing * - UNITY_PI / 2.0;
float s, c;
sincos(facingAngle, s, c);
float3 targetFwd_object = float3(s, 0, c);
float3 camPos_object = mul(unity_WorldToObject, float4(GetCameraPos(), 1.0)).xyz;
float flipSign = sign(dot(camPos_object, targetFwd_object));
if (flipSign == 0.0) flipSign = 1.0;
if (_FlatModeAutoflip == 0) flipSign = 1.0;
float3 virtualCamDir_object = targetFwd_object * flipSign * length(camPos_object);
float3 virtualCamPos_world = mul(unity_ObjectToWorld, float4(virtualCamDir_object, 1.0)).xyz;
float3 finalCamPos_world = lerp(GetCameraPos(), virtualCamPos_world, _FlatModelLockAxis);
float3 worldObjectPivot = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
float3 billboardFwd = normalize(finalCamPos_world - worldObjectPivot);
float3 billboardUp = float3(0, 1, 0);
float3 billboardRight = normalize(cross(billboardUp, billboardFwd));
billboardUp = cross(billboardFwd, billboardRight);
float3 flattenedWorldPos = worldObjectPivot;

flattenedWorldPos += billboardRight * vertex.x;
flattenedWorldPos += billboardUp * vertex.y;
flattenedWorldPos -= billboardFwd * vertex.z * _FlatModelDepthCorrection;
float3 originalWorldPos = mul(unity_ObjectToWorld, vertex).xyz;
finalWorldPos = lerp(originalWorldPos, flattenedWorldPos, _FlatModel);
finalClipPos = UnityWorldToClipPos(float4(finalWorldPos, 1.0));
finalWorldNormal = UnityObjectToWorldNormal(normal);
}
#endif 

#if defined(_BACKLACE_WORLD_EFFECT)
UNITY_DECLARE_TEX2D(_WorldEffectTex);
float4 _WorldEffectColor;
float4 _WorldEffectDirection;
float _WorldEffectScale;
float _WorldEffectBlendSharpness;
float _WorldEffectIntensity;
int _WorldEffectBlendMode;
float3 _WorldEffectPosition;
float3 _WorldEffectRotation;
UNITY_DECLARE_TEX2D(_WorldEffectMask);
void ApplyWorldAlignedEffect(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 effectDir = normalize(_WorldEffectDirection.xyz);
float directionMask = saturate(dot(Surface.NormalDir, effectDir));
directionMask = pow(directionMask, _WorldEffectBlendSharpness);
if (directionMask <= 0.001)
{
return;
}
float4 effectSample = SampleTextureTriplanar(
_WorldEffectTex, sampler_WorldEffectTex,
i.worldPos, Surface.NormalDir,
_WorldEffectPosition, _WorldEffectScale, _WorldEffectRotation,
1.0,
true,
float2(0, 0)
);
float3 finalEffectColor = effectSample.rgb * _WorldEffectColor.rgb;
float mask = UNITY_SAMPLE_TEX2D(_WorldEffectMask, Uvs[0]).r;
float blendStrength = directionMask * effectSample.a * _WorldEffectIntensity * mask;
switch(_WorldEffectBlendMode)
{
case 1: 
Surface.FinalColor.rgb += finalEffectColor * blendStrength;
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * finalEffectColor, blendStrength);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalEffectColor, blendStrength);
break;
}
}
#endif 

#if defined(_BACKLACE_VRCHAT_MIRROR)
UNITY_DECLARE_TEX2D(_MirrorDetectionTexture);
float _MirrorDetectionTexture_UV;
float _MirrorDetectionMode; 
float _VRChatMirrorMode; 
bool IsInMirrorView()
{
if (_VRChatMirrorMode > 0.5) return true;

return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
}

#ifndef UNITY_PASS_OUTLINE

void ApplyMirrorDetectionPre(inout BacklaceSurfaceData Surface)
{
if (_MirrorDetectionMode == 0 && IsInMirrorView()) 
{
float mask = UNITY_SAMPLE_TEX2D(_MirrorDetectionTexture, Uvs[_MirrorDetectionTexture_UV]).r;
Surface.FinalColor.a *= mask;
}
}

void ApplyMirrorDetectionPost(inout BacklaceSurfaceData Surface)
{
if (_MirrorDetectionMode == 1 && IsInMirrorView()) 
{
Surface.FinalColor.a = 0;
}
else if (_MirrorDetectionMode == 2 && !IsInMirrorView()) 
{
Surface.FinalColor.a = 0;
}
}
#endif 
#endif 

#if defined(_BACKLACE_TOUCH_REACTIVE)
#ifndef BACKLACE_DEPTH 
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif 
float4 _TouchColor;
float _TouchRadius;
float _TouchHardness;
int _TouchMode; 
float _TouchRainbowSpeed;
float _TouchRainbowSpread;
void ApplyTouchReactive(inout BacklaceSurfaceData Surface, FragmentData i)
{
float sceneDepthRaw = tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.scrPos)).r;
float sceneDepthLinear = LinearEyeDepth(sceneDepthRaw);
float depthDifference = sceneDepthLinear - i.scrPos.w;
float intersect = 1.0 - smoothstep(0, _TouchRadius, depthDifference);
if (intersect <= 0) return;
intersect = fastpow(intersect, _TouchHardness);
float3 touchEffect = _TouchColor.rgb * intersect * _TouchColor.a;
switch (_TouchMode) {
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, touchEffect, intersect);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * touchEffect, intersect);
break;
case 3: 
float time = _Time.y * _TouchRainbowSpeed;
float3 rainbowColor = Sinebow(depthDifference * _TouchRainbowSpread + time);
touchEffect = rainbowColor * intersect * _TouchColor.a;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, touchEffect, intersect);
break;
default: 
Surface.FinalColor.rgb += touchEffect;
break;
}
}
#endif 

#if defined(_BACKLACE_VERTEX_DISTORTION)
int _VertexDistortionMode;
int _VertexDistortionColorMask; 
float3 _VertexDistortionStrength;
float3 _VertexDistortionSpeed;
float3 _VertexDistortionFrequency;
float _WindStrength;
float _WindSpeed;
float _WindScale;
float4 _WindDirection;
UNITY_DECLARE_TEX2D(_WindNoiseTex);
float _BreathingStrength;
float _BreathingSpeed;
void DistortVertex(inout float4 vertex, float3 worldPos, float4 vertexColor)
{
float time = _Time.y;
float3 distortion = 0;

float mask = 1.0;
switch (_VertexDistortionColorMask)
{
case 1: 
mask = vertexColor.r;
break;
case 2: 
mask = vertexColor.g;
break;
case 3: 
mask = vertexColor.b;
break;
case 4: 
mask = (vertexColor.r + vertexColor.g + vertexColor.b) / 3.0;
break;
default: 
mask = 1.0;
break;
}

switch(_VertexDistortionMode)
{
case 0: 
{
distortion.x = sin(vertex.y * _VertexDistortionFrequency.x + time * _VertexDistortionSpeed.x) * _VertexDistortionStrength.x;
distortion.y = sin(vertex.x * _VertexDistortionFrequency.y + time * _VertexDistortionSpeed.y) * _VertexDistortionStrength.y;
distortion.z = sin(vertex.x * _VertexDistortionFrequency.z + time * _VertexDistortionSpeed.z) * _VertexDistortionStrength.z;
break;
}
case 1: 
{
float offsetX = sin(vertex.x * _VertexDistortionFrequency.x) * cos(vertex.y * _VertexDistortionFrequency.x) * _VertexDistortionStrength.x;
float offsetY = cos(vertex.y * _VertexDistortionFrequency.y) * sin(vertex.z * _VertexDistortionFrequency.y) * _VertexDistortionStrength.y;
float offsetZ = sin(vertex.z * _VertexDistortionFrequency.z) * cos(vertex.x * _VertexDistortionFrequency.z) * _VertexDistortionStrength.z;
distortion = float3(offsetX, offsetY, offsetZ) * sin(time * _VertexDistortionSpeed.x); 
break;
}
case 2: 
{
float2 windUV = worldPos.xz * _WindScale + (_Time.y * _WindSpeed * _WindDirection.xz);
float noise = UNITY_SAMPLE_TEX2D_LOD(_WindNoiseTex, windUV, 0).r * 2.0 - 1.0;
float sineWave = sin(_Time.y * _WindSpeed + worldPos.x + worldPos.z);
distortion = normalize(_WindDirection.xyz) * (noise + sineWave) * _WindStrength * mask;
break;
}
case 3: 
{
float breath = (sin(_Time.y * _BreathingSpeed) + 1.0) * 0.5;
float3 localNormal = normalize(vertex.xyz);
distortion = localNormal * breath * _BreathingStrength * mask;
break;
}
}
vertex.xyz += distortion;
}
#endif 

#if defined(_BACKLACE_DITHER)
float _DitherAmount;
float _DitherScale;
float _DitherSpace;
int _Dither_UV;
void ApplyDither(inout BacklaceSurfaceData Surface, float2 worldPos, float2 uvs)
{
float2 ditherUV = 0;
switch (_DitherSpace) {
case 1: 
ditherUV = frac(worldPos) * _ScreenParams.xy;
break;
case 2: 
ditherUV = uvs * _ScreenParams.xy; 
break;
default: 
ditherUV = Surface.ScreenCoords * _ScreenParams.xy;
break;
}
float pattern = GetTiltedCheckerboardPattern(ditherUV, _DitherScale);
Surface.FinalColor.a = lerp(Surface.FinalColor.a, Surface.FinalColor.a * pattern, _DitherAmount);
}
#endif 

#if defined(_BACKLACE_PS1)
int _PS1Rounding;
float _PS1RoundingPrecision;
int _PS1Affine;
int _PS1Compression;
float _PS1CompressionPrecision;
void ApplyPS1Vertex(inout FragmentData i, in VertexData v)
{
if (_PS1Rounding == 1)
{
float4 worldPos = mul(unity_ObjectToWorld, v.vertex);
worldPos.xyz = ceil(worldPos.xyz * _PS1RoundingPrecision) / _PS1RoundingPrecision;
i.pos = mul(UNITY_MATRIX_VP, worldPos);
}
else if (_PS1Rounding == 2)
{
float4 pos = i.pos;
pos.xy /= pos.w;
pos.xy = round(pos.xy * _PS1RoundingPrecision) / _PS1RoundingPrecision;
pos.xy *= pos.w;
i.pos = pos;
}
if (_PS1Affine == 1)
{
i.affineUV = float4(v.uv.x, v.uv.y, 0, 0) * i.pos.w;
}
}
void ApplyPS1AffineUV(inout float2 uv, in FragmentData i)
{
if (_PS1Affine == 1)
{
uv = i.affineUV.xy / i.pos.w;
}
}
void ApplyPS1ColorCompression(inout float4 finalColor)
{
if (_PS1Compression == 1)
{
finalColor.rgb = floor(finalColor.rgb * _PS1CompressionPrecision) / _PS1CompressionPrecision;
}
}
#endif 

#if defined(BACKLACE_GRABPASS)
UNITY_DECLARE_SCREENSPACE_TEXTURE(_BacklaceGP);
float4 _BacklaceGP_TexelSize;

#if defined(_BACKLACE_REFRACTION)
UNITY_DECLARE_TEX2D(_RefractionMask);
float _RefractionMask_UV;
float4 _RefractionTint;
float _RefractionIOR;
float _RefractionFresnel;
UNITY_DECLARE_TEX2D(_CausticsTex);
float _CausticsTiling;
float _CausticsSpeed;
float _CausticsIntensity;
UNITY_DECLARE_TEX2D(_DistortionNoiseTex);
float _DistortionNoiseTiling;
float _DistortionNoiseStrength;
int _RefractionDistortionMode;
float _RefractionCAStrength;
float _RefractionBlurStrength;
float _RefractionOpacity;
float _RefractionMixStrength;
int _RefractionCAUseFresnel;
float _RefractionCAEdgeFade;
float _RefractionMode; 
float4 _CausticsColor;
float _RefractionBlendMode;
float _RefractionSeeThrough;
void ApplyRefraction(inout BacklaceSurfaceData Surface, FragmentData i)
{
float fresnel = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
fresnel = pow(fresnel, _RefractionFresnel);
float2 noise = (SampleTextureTriplanar(_DistortionNoiseTex, sampler_DistortionNoiseTex, i.worldPos, Surface.NormalDir, float3(0, 0, 0), _DistortionNoiseTiling, float3(0, 0, 0), 2.0, true, float2(0, 0)).rg * 2.0 - 1.0) * _DistortionNoiseStrength;
float3 distortionNormal = Surface.NormalDir + float3(noise.x, noise.y, 0);
float3 refractionVector = distortionNormal * _RefractionIOR;
float4 screenPos = i.scrPos;
float2 baseUV = screenPos.xy / screenPos.w;
float2 distortedUV = baseUV + refractionVector.xy;
float3 refractedColor = 0;
switch(_RefractionDistortionMode)
{
case 1: 
{
float caOffset = _RefractionBlurStrength;
if (_RefractionCAUseFresnel == 1)
{
float caFresnel = fastpow(fresnel, _RefractionCAEdgeFade);
caOffset *= caFresnel;
}
refractedColor.r = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV + float2(caOffset, 0)).r * _RefractionCAStrength;
refractedColor.g = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).g;
refractedColor.b = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV - float2(caOffset, 0)).b * _RefractionCAStrength;
break;
}
case 2: 
{
const int BLUR_SAMPLES = 8;
float2 blurOffset = _BacklaceGP_TexelSize.xy * _RefractionBlurStrength;
refractedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).rgb;
[unroll]
for (int i = 0; i < BLUR_SAMPLES; i++)
{
float angle = (float)i / BLUR_SAMPLES * 2.0 * UNITY_PI;
float s, c;
sincos(angle, s, c);
float2 offset = float2(c, s) * blurOffset;
refractedColor += UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV + offset).rgb;
}
refractedColor /= (BLUR_SAMPLES + 1);
break;
}
default: 
{
refractedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).rgb;
break;
}
}
float3 reflectionVector = reflect(-Surface.ViewDir, Surface.NormalDir);
float2 causticsUV = reflectionVector.xy * _CausticsTiling + (_Time.y * _CausticsSpeed);
float3 caustics = UNITY_SAMPLE_TEX2D(_CausticsTex, causticsUV).rgb * _CausticsIntensity;
float mask = UNITY_SAMPLE_TEX2D(_RefractionMask, Uvs[_RefractionMask_UV]).r;
float3 crystalColor = lerp(_RefractionTint.rgb + caustics, lerp(_RefractionTint.rgb, _CausticsColor.rgb, caustics), _RefractionBlendMode);
float3 finalColor;
switch(int(_RefractionMode))
{
case 1: 
finalColor = lerp(refractedColor, crystalColor, fresnel * _RefractionMixStrength);
break;
case 2: 
finalColor = lerp(refractedColor, crystalColor, fastpow(fresnel, _RefractionMixStrength));
break;
case 3: 
finalColor = lerp(refractedColor, crystalColor, _RefractionMixStrength);
break;
default: 
finalColor = lerp(refractedColor, crystalColor, (1.0 - fresnel) * _RefractionMixStrength);
break;
}
finalColor = lerp(finalColor, _RefractionTint.rgb, _RefractionTint.a * (1.0 - fresnel));
float finalAlpha = lerp(_RefractionTint.a, 1.0, fresnel) * mask;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalColor, finalAlpha);
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, refractedColor, _RefractionSeeThrough); 
Surface.FinalColor.a = finalAlpha * _RefractionOpacity;
}
#endif 

#if defined(_BACKLACE_SSR)
float _SSRMode;
UNITY_DECLARE_TEX2D(_SSRMask);
float4 _SSRTint;
float _SSRIntensity;
int _SSRBlendMode;
float _SSRFresnelPower;
float _SSRFresnelScale;
float _SSRFresnelBias;
float _SSRCoverage;

float _SSRParallax;
UNITY_DECLARE_TEX2D(_SSRDistortionMap);
float _SSRDistortionStrength;
float _SSRBlur;
float _SSRWorldDistortion;

int _SSRMaxSteps;
float _SSRStepSize;
float _SSREdgeFade;
float _SSRThickness;
float _SSRAdaptiveStep;
float _SSRFlipUV;
int _SSROutOfViewMode;
int _SSRCamFade;
float _SSRCamFadeStart;
float _SSRCamFadeEnd;
#ifndef BACKLACE_DEPTH
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif

float3 GetSSRMarched(inout BacklaceSurfaceData Surface, FragmentData i)
{
#if UNITY_SINGLE_PASS_STEREO
float x_min = 0.5 * unity_StereoEyeIndex;
float x_max = 0.5 + 0.5 * unity_StereoEyeIndex;
#else 
float x_min = 0.0;
float x_max = 1.0;
#endif 
float3 viewPos = mul(UNITY_MATRIX_V, float4(i.worldPos, 1.0)).xyz;
float3 viewRefl = mul((float3x3)UNITY_MATRIX_V, Surface.ReflectDir);
float3 currentRayPos = viewPos + viewRefl * (UNITY_MATRIX_P._33 * 0.1);
float3 prevRayPos = viewPos;
[loop] for (int j = 0; j < _SSRMaxSteps; j++)
{
float4 screenPos = mul(UNITY_MATRIX_P, float4(currentRayPos, 1.0));
float2 screenUV = (screenPos.xy / screenPos.w) * 0.5 + 0.5;
if (screenUV.x > x_max || screenUV.x < x_min || screenUV.y > 1.0 || screenUV.y < 0.0)
{
return 0;
}

float sceneDepth = LinearEyeDepth(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(screenPos)).r);
float rayDepth = -currentRayPos.z;
if (rayDepth > sceneDepth - _SSRThickness)
{
float4 finalClipPos = mul(UNITY_MATRIX_P, float4(currentRayPos, 1.0));
finalClipPos.y = lerp(finalClipPos.y, -finalClipPos.y + finalClipPos.w, _SSRFlipUV);
float fadeFactor = 1.0;
float2 finalUV = finalClipPos.xy / finalClipPos.w;
switch (_SSROutOfViewMode)
{
case 1: 
fadeFactor = smoothstep(x_min, x_min + 0.05, finalUV.x) * smoothstep(1.0 - x_max, 1.0 - x_max + 0.05, finalUV.x);
fadeFactor *= smoothstep(0.0, 0.05, finalUV.y) * smoothstep(1.0, 1.0 - 0.05, finalUV.y);
break;
case 2: 
if (finalUV.x < x_min || finalUV.x > x_max || finalUV.y < 0.0 || finalUV.y > 1.0) fadeFactor = 0;
break;
case 3: 
if (finalUV.x < x_min) finalUV.x = x_min + (x_min - finalUV.x);
if (finalUV.x > x_max) finalUV.x = x_max - (finalUV.x - x_max);
if (finalUV.y < 0.0) finalUV.y = -finalUV.y;
if (finalUV.y > 1.0) finalUV.y = 1.0 - (finalUV.y - 1.0);
break;
}
float3 reflection = tex2D(_BacklaceGP, finalUV).rgb;
finalUV = finalUV * 0.5 + 0.5;
float2 fade = smoothstep(0.0, _SSREdgeFade, finalUV) * (1.0 - smoothstep(1.0 - _SSREdgeFade, 1.0, finalUV));
reflection *= fade.x * fade.y * fadeFactor;
return reflection;
}

float depthDifference = sceneDepth - rayDepth;
float step = (_SSRAdaptiveStep) ? clamp(depthDifference * _SSRStepSize, 0.02, 0.5) : _SSRStepSize;
prevRayPos = currentRayPos;
currentRayPos += viewRefl * step;
}
return 0; 
}

float3 GetSSRPlanar(inout BacklaceSurfaceData Surface, FragmentData i)
{
float2 screenUV = i.scrPos.xy / i.scrPos.w;
float2 distortionUV = lerp(screenUV, i.worldPos.xy, _SSRWorldDistortion);
float2 distortionOffset = (UNITY_SAMPLE_TEX2D(_SSRDistortionMap, distortionUV).rg * 2.0 - 1.0) * _SSRDistortionStrength;
float3 viewSpaceReflection = mul((float3x3)UNITY_MATRIX_V, Surface.ReflectDir);
float parallax = _SSRParallax * saturate(1.0 - viewSpaceReflection.z);
float2 reflectionOffset = viewSpaceReflection.xy * parallax;
float2 reflectionUV = screenUV + reflectionOffset +distortionOffset;
const int SSR_BLUR_SAMPLES = 8;
float3 reflectedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, reflectionUV).rgb;
float2 blurOffset = _BacklaceGP_TexelSize.xy * _SSRBlur;
[unroll]
for (int k = 0; k < SSR_BLUR_SAMPLES; k++)
{
float angle = (float)k / SSR_BLUR_SAMPLES * 2.0 * UNITY_PI;
float s, c;
sincos(angle, s, c);
float2 offset = float2(c, s) * blurOffset;
reflectedColor += UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, reflectionUV + offset).rgb;
}
reflectedColor /= (SSR_BLUR_SAMPLES + 1);
return reflectedColor;
}

void ApplyScreenSpaceReflections(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 reflectedColor;

[branch] if (_SSRMode == 1)
{
reflectedColor = GetSSRMarched(Surface, i);
}
else
{
reflectedColor = GetSSRPlanar(Surface, i);
}

float fadeFactor = 1.0;
if (_SSRCamFade == 1)
{
float camDistance = distance(i.worldPos, GetCameraPos());
fadeFactor *= 1.0 - saturate((camDistance - _SSRCamFadeStart) / (_SSRCamFadeEnd - _SSRCamFadeStart));
}

float fresnel_base = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
float fresnel_powered = pow(fresnel_base, _SSRFresnelPower);
float fresnel = saturate(_SSRFresnelBias + fresnel_powered * _SSRFresnelScale + _SSRCoverage);
float mask = UNITY_SAMPLE_TEX2D(_SSRMask, Uvs[0]).r;
float finalStrength = fresnel * mask * _SSRIntensity * fadeFactor;
float3 finalReflection = reflectedColor * _SSRTint.rgb;
[branch] switch((int)_SSRBlendMode)
{
case 0: 
Surface.FinalColor.rgb += finalReflection * finalStrength;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalReflection, finalStrength);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * finalReflection, finalStrength);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, 1.0 - (1.0 - Surface.FinalColor.rgb) * (1.0 - finalReflection), finalStrength);
break;
}
}
#endif 
#endif 
#endif 



float _Alpha;
float4 _OutlineColor;
float _OutlineWidth;
int _OutlineVertexColorMask;
int _OutlineDistanceFade;
float _OutlineFadeStart;
float _OutlineFadeEnd;
float _OutlineHueShiftSpeed;
int _OutlineHueShift;
float _OutlineOpacity;
UNITY_DECLARE_TEX2D(_MainTex);
float4 _MainTex_ST;
float _Cutoff;
float _MainTex_UV;

float3 _VertexManipulationPosition;
float3 _VertexManipulationScale;

struct appdata
{
float4 vertex : POSITION;
float3 normal : NORMAL;
float2 uv : TEXCOORD0;
fixed4 color : COLOR;
};
struct v2f
{
float4 pos : SV_POSITION;
float3 worldPos : TEXCOORD0;
float2 uv : TEXCOORD1;
float4 screenPos : TEXCOORD2;
float4 vertex : TEXCOORD3;
float3 normal : TEXCOORD4;
};

v2f vert(appdata v)
{
v2f o;

v.vertex.xyz *= _VertexManipulationScale;
v.vertex.xyz += _VertexManipulationPosition;
#if defined(_BACKLACE_VERTEX_DISTORTION)
DistortVertex(v.vertex, mul(unity_ObjectToWorld, v.vertex).xyz, v.color);
#endif 

o.vertex = v.vertex;
o.normal = v.normal;
o.uv = v.uv;
float4 worldPos = mul(unity_ObjectToWorld, v.vertex);
float3 worldNormal = UnityObjectToWorldNormal(v.normal);

#if defined(_BACKLACE_FLAT_MODEL)
float4 finalClipPos;
float3 finalWorldPos;
float3 finalWorldNormal;
FlattenModel(v.vertex, v.normal, finalClipPos, finalWorldPos, finalWorldNormal);
worldPos.xyz = finalWorldPos;
worldNormal = finalWorldNormal;
#endif

float mask = lerp(1.0, v.color.r, _OutlineVertexColorMask);
float4 viewPos = mul(UNITY_MATRIX_V, worldPos);
float3 viewNormal = mul((float3x3)UNITY_MATRIX_V, worldNormal);
viewNormal = normalize(viewNormal);
viewPos.xyz += viewNormal * _OutlineWidth * mask * viewPos.w;
o.pos = mul(UNITY_MATRIX_P, viewPos);
o.worldPos = worldPos.xyz;
o.screenPos = ComputeScreenPos(o.pos); 
return o;
}

fixed4 frag(v2f i) : SV_Target
{
float baseAlpha = UNITY_SAMPLE_TEX2D(_MainTex, i.uv).a;

#if defined(_BLENDMODE_CUTOUT)
float4 mainTex = UNITY_SAMPLE_TEX2D(_MainTex, i.uv);
clip(mainTex.a - _Cutoff);
#endif 

#if defined(_BACKLACE_DISSOLVE)
float3 worldNormal = UnityObjectToWorldNormal(i.normal);
float dissolveMapValue = GetDissolveMapValue(i.worldPos, i.vertex.xyz, worldNormal);
clip(dissolveMapValue - _DissolveProgress);
#endif

#if defined(_BACKLACE_VRCHAT_MIRROR)
if ((_MirrorDetectionMode == 1 && IsInMirrorView()) || (_MirrorDetectionMode == 2 && !IsInMirrorView()))
{
clip(-1);
}
#endif 

#if defined(_BACKLACE_DITHER)
float ditheredAlpha = lerp(baseAlpha, 0.0, _DitherAmount);
float2 ditherUV = 0;
switch (_DitherSpace) {
case 1: 
ditherUV = frac(i.worldPos.xy) * _ScreenParams.xy;
break;
case 2: 
ditherUV = i.uv * _ScreenParams.xy;
break;
default: 
ditherUV = i.screenPos.xy / i.screenPos.w * _ScreenParams.xy;
break;
}
float pattern = 1.0 - GetTiltedCheckerboardPattern(ditherUV, _DitherScale);
clip(ditheredAlpha - pattern);
#endif 

fixed4 finalColor = _OutlineColor;
if (_OutlineHueShift == 1)
{
float3 rainbow = Sinebow(_Time.y * _OutlineHueShiftSpeed);
finalColor.rgb = rainbow;
}
if (_OutlineDistanceFade == 1)
{
float dist = distance(i.worldPos, GetCameraPos());
float fadeFactor = 1.0 - smoothstep(_OutlineFadeStart, _OutlineFadeEnd, dist);
finalColor.a *= saturate(fadeFactor);
}
finalColor.a *= _OutlineOpacity;
finalColor.a *= _Alpha;
finalColor.a *= baseAlpha;
clip(finalColor.a - 0.001);
return finalColor;
}
#endif 


ENDCG
}
Pass
{
Name "ForwardBase"
ZTest [_ZTest]
Tags { "LightMode" = "ForwardBase" }
CGPROGRAM
    // --- Premonitions: Baked Keywords ---
    #define _ANIMEMODE_RAMP
    #define _BACKLACE_DEPTH_RIMLIGHT
    #define _BACKLACE_TOON
    #define _SPECULARMODE_STANDARD
    // ------------------------------------
#ifndef UNITY_PASS_FORWARDBASE
#define UNITY_PASS_FORWARDBASE
#endif 
#ifndef BACKLACE_GRABPASS
#define BACKLACE_GRABPASS
#endif 


#ifndef BACKLACE_FORWARD_CGINC
#define BACKLACE_FORWARD_CGINC



#ifndef BACKLACE_KEYWORDS_CGINC
#define BACKLACE_KEYWORDS_CGINC




#endif 



#pragma target 5.0
#pragma vertex Vertex

#pragma fragment Fragment
#pragma multi_compile_fog
#pragma multi_compile_instancing

#if defined(UNITY_PASS_FORWARDBASE)
#pragma multi_compile_fwdbase
#pragma multi_compile _ VERTEXLIGHT_ON
#elif defined(UNITY_PASS_FORWARDADD)
#pragma multi_compile_fwdadd_fullshadows
#endif 

#include "UnityCG.cginc"
#include "UnityLightingCommon.cginc"

#include "UnityStandardUtils.cginc"

#include "AutoLight.cginc"

#if defined(_BACKLACE_AUDIOLINK)


#ifndef BACKLACE_AUDIOLINK_CGINC
#define BACKLACE_AUDIOLINK_CGINC

#define ALPASS_DFT uint2(0, 4) 
#define ALPASS_WAVEFORM uint2(0, 6) 
#define ALPASS_AUDIOLINK uint2(0, 0) 
#define ALPASS_AUDIOBASS uint2(0, 0) 
#define ALPASS_AUDIOLOWMIDS uint2(0, 1) 
#define ALPASS_AUDIOHIGHMIDS uint2(0, 2) 
#define ALPASS_AUDIOTREBLE uint2(0, 3) 
#define ALPASS_AUDIOLINKHISTORY uint2(1, 0) 
#define ALPASS_GENERALVU uint2(0, 22) 
#define ALPASS_GENERALVU_INSTANCE_TIME uint2(2, 22)
#define ALPASS_GENERALVU_LOCAL_TIME uint2(3, 22)
#define ALPASS_GENERALVU_NETWORK_TIME uint2(4, 22)
#define ALPASS_GENERALVU_PLAYERINFO uint2(6, 22)
#define ALPASS_THEME_COLOR0 uint2(0, 23)
#define ALPASS_THEME_COLOR1 uint2(1, 23)
#define ALPASS_THEME_COLOR2 uint2(2, 23)
#define ALPASS_THEME_COLOR3 uint2(3, 23)
#define ALPASS_GENERALVU_UNIX_DAYS uint2(5, 23)
#define ALPASS_GENERALVU_UNIX_SECONDS uint2(6, 23)
#define ALPASS_GENERALVU_SOURCE_POS uint2(7, 23)
#define ALPASS_MEDIASTATE uint2(5, 22)
#define ALPASS_CCINTERNAL uint2(12, 22) 
#define ALPASS_CCCOLORS uint2(25, 22) 
#define ALPASS_CCSTRIP uint2(0, 24) 
#define ALPASS_CCLIGHTS uint2(0, 25) 
#define ALPASS_AUTOCORRELATOR uint2(0, 27) 
#define ALPASS_FILTEREDAUDIOLINK uint2(0, 28) 
#define ALPASS_CHRONOTENSITY uint2(16, 28) 
#define ALPASS_FILTEREDVU uint2(24, 28) 
#define ALPASS_FILTEREDVU_INTENSITY uint2(24, 28) 
#define ALPASS_FILTEREDVU_MARKER uint2(24, 29) 
#define ALPASS_GLOBAL_STRINGS uint2(40, 28) 


#define AUDIOLINK_SAMPHIST 3069 
#define AUDIOLINK_SAMPLEDATA24 2046
#define AUDIOLINK_EXPBINS 24
#define AUDIOLINK_EXPOCT 10
#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
#define AUDIOLINK_WIDTH 128
#define AUDIOLINK_SPS 48000 
#define AUDIOLINK_ROOTNOTE 0
#define AUDIOLINK_4BAND_FREQFLOOR 0.123
#define AUDIOLINK_4BAND_FREQCEILING 1
#define AUDIOLINK_BOTTOM_FREQUENCY 13.75
#define AUDIOLINK_BASE_AMPLITUDE 2.5
#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
#define AUDIOLINK_DFT_Q 4.0
#define AUDIOLINK_TREBLE_CORRECTION 5.0
#define AUDIOLINK_4BAND_TARGET_RATE 90.0
#define AUDIOLINK_LUT {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, \
0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, \
0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, \
0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.001, 0.002, 0.003, 0.004, 0.005, 0.006, \
0.008, 0.01, 0.012, 0.014, 0.017, 0.02, 0.022, 0.025, 0.029, 0.032, 0.036, \
0.04, 0.044, 0.048, 0.053, 0.057, 0.062, 0.067, 0.072, 0.078, 0.083, 0.089, \
0.095, 0.101, 0.107, 0.114, 0.121, 0.128, 0.135, 0.142, 0.149, 0.157, 0.164, \
0.172, 0.18, 0.188, 0.196, 0.205, 0.213, 0.222, 0.23, 0.239, 0.248, 0.257, \
0.266, 0.276, 0.285, 0.294, 0.304, 0.313, 0.323, 0.333, 0.342, 0.352, 0.362, \
0.372, 0.381, 0.391, 0.401, 0.411, 0.421, 0.431, 0.441, 0.451, 0.46, 0.47, \
0.48, 0.49, 0.499, 0.509, 0.519, 0.528, 0.538, 0.547, 0.556, 0.565, 0.575, \
0.584, 0.593, 0.601, 0.61, 0.619, 0.627, 0.636, 0.644, 0.652, 0.66, 0.668, \
0.676, 0.684, 0.691, 0.699, 0.706, 0.713, 0.72, 0.727, 0.734, 0.741, 0.747, \
0.754, 0.76, 0.766, 0.772, 0.778, 0.784, 0.79, 0.795, 0.801, 0.806, 0.811, \
0.816, 0.821, 0.826, 0.831, 0.835, 0.84, 0.844, 0.848, 0.853, 0.857, 0.861, \
0.864, 0.868, 0.872, 0.875, 0.879, 0.882, 0.885, 0.888, 0.891, 0.894, 0.897, \
0.899, 0.902, 0.904, 0.906, 0.909, 0.911, 0.913, 0.914, 0.916, 0.918, 0.919, \
0.921, 0.922, 0.924, 0.925, 0.926, 0.927, 0.928, 0.928, 0.929, 0.929, 0.93, \
0.93, 0.93, 0.931, 0.931, 0.93, 0.93, 0.93, 0.93, 0.929, 0.929, 0.928, 0.927, \
0.926, 0.925, 0.924, 0.923, 0.922, 0.92, 0.919, 0.917, 0.915, 0.913, 0.911, \
0.909, 0.907, 0.905, 0.903, 0.9}

#define AUDIOLINK_STRING_MAX_CHARS 32
#define AUDIOLINK_STRING_LOCALPLAYER 0
#define AUDIOLINK_STRING_MASTER 1
#define AUDIOLINK_STRING_CUSTOM1 2
#define AUDIOLINK_STRING_CUSTOM2 3

#define COLORCHORD_EMAXBIN 192
#define COLORCHORD_NOTE_CLOSEST 3.0
#define COLORCHORD_NEW_NOTE_GAIN 8.0
#define COLORCHORD_MAX_NOTES 10



#ifndef glsl_mod
#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
#endif
uniform float4 _AudioTexture_TexelSize;
#ifdef SHADER_TARGET_SURFACE_ANALYSIS
#define AUDIOLINK_STANDARD_INDEXING
#endif

#ifdef AUDIOLINK_STANDARD_INDEXING
sampler2D _AudioTexture;
#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
#else
uniform Texture2D<float4> _AudioTexture;
#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
#endif

float4 AudioLinkDataMultiline(uint2 xycoord)
{
return AudioLinkData(uint2(xycoord.x % AUDIOLINK_WIDTH, xycoord.y + xycoord.x / AUDIOLINK_WIDTH));
}

float4 AudioLinkLerp(float2 xy)
{
return lerp(AudioLinkData(xy), AudioLinkData(xy + int2(1, 0)), frac(xy.x));
}

float4 AudioLinkLerpMultiline(float2 xy)
{
return lerp(AudioLinkDataMultiline(xy), AudioLinkDataMultiline(xy + float2(1, 0)), frac(xy.x));
}

bool AudioLinkIsAvailable()
{
#if !defined(AUDIOLINK_STANDARD_INDEXING)
int width, height;
_AudioTexture.GetDimensions(width, height);
return width > 16;
#else
return _AudioTexture_TexelSize.z > 16;
#endif
}


float AudioLinkGetVersion()
{
int2 dims;
#if !defined(AUDIOLINK_STANDARD_INDEXING)
_AudioTexture.GetDimensions(dims.x, dims.y);
#else
dims = _AudioTexture_TexelSize.zw;
#endif
if (dims.x >= 128)
return AudioLinkData(ALPASS_GENERALVU).x;
else if (dims.x > 16)
return 1;
else
return 0;
}
float AudioLinkGetVersionMajor()
{
return AudioLinkData(ALPASS_GENERALVU).y;
}
float AudioLinkGetVersionMinor()
{

if (AudioLinkGetVersionMajor() > 0)
{
return AudioLinkData(ALPASS_GENERALVU).w;
}

else
{
int2 dims;
#if !defined(AUDIOLINK_STANDARD_INDEXING)
_AudioTexture.GetDimensions(dims.x, dims.y);
#else
dims = _AudioTexture_TexelSize.zw;
#endif
if (dims.x >= 128)
return AudioLinkData(ALPASS_GENERALVU).x;
else if (dims.x > 16)
return 1;
else
return 0;
}
}

#define AudioLinkGetSelfPixelData(xy) _SelfTexture2D[xy]

uint AudioLinkDecodeDataAsUInt(uint2 indexloc)
{
uint4 rpx = AudioLinkData(indexloc);
return rpx.x + rpx.y * 1024 + rpx.z * 1048576 + rpx.w * 1073741824;
}


float AudioLinkDecodeDataAsSeconds(uint2 indexloc)
{
uint time = AudioLinkDecodeDataAsUInt(indexloc) & 0x7ffffff;

return float(time / 1000) + float(time % 1000) / 1000.;
}
#define ALDecodeDataAsSeconds(x) AudioLinkDecodeDataAsSeconds(x)
#define ALDecodeDataAsUInt(x) AudioLinkDecodeDataAsUInt(x)
float AudioLinkRemap(float t, float a, float b, float u, float v)
{
return ((t - a) / (b - a)) * (v - u) + u;
}
float3 AudioLinkHSVtoRGB(float3 HSV)
{
float3 RGB = 0;
float C = HSV.z * HSV.y;
float H = HSV.x * 6;
float X = C * (1 - abs(fmod(H, 2) - 1));
if (HSV.y != 0)
{
float I = floor(H);
if (I == 0)
{
RGB = float3(C, X, 0);
}
else if (I == 1)
{
RGB = float3(X, C, 0);
}
else if (I == 2)
{
RGB = float3(0, C, X);
}
else if (I == 3)
{
RGB = float3(0, X, C);
}
else if (I == 4)
{
RGB = float3(X, 0, C);
}
else
{
RGB = float3(C, 0, X);
}
}
float M = HSV.z - C;
return RGB + M;
}
float3 AudioLinkCCtoRGB(float bin, float intensity, int rootNote)
{
float note = bin / AUDIOLINK_EXPBINS;
float hue = 0.0;
note *= 12.0;
note = glsl_mod(4. - note + rootNote, 12.0);
{
if (note < 4.0)
{

hue = (note) / 24.0;
}
else if (note < 8.0)
{


hue = (note - 2.0) / 12.0;
}
else
{


hue = (note - 4.0) / 8.0;
}
}
float val = intensity - 0.1;
return AudioLinkHSVtoRGB(float3(fmod(hue, 1.0), 1.0, clamp(val, 0.0, 1.0)));
}

float4 AudioLinkGetAmplitudeAtFrequency(float hertz)
{
float note = AUDIOLINK_EXPBINS * log2(hertz / AUDIOLINK_BOTTOM_FREQUENCY);
return AudioLinkLerpMultiline(ALPASS_DFT + float2(note, 0));
}

float4 AudioLinkGetAmplitudeAtQuarterNote(float octave, float quarter)
{
return AudioLinkLerpMultiline(ALPASS_DFT + float2(octave * AUDIOLINK_EXPBINS + quarter, 0));
}

float4 AudioLinkGetAmplitudeAtNote(float octave, float note)
{
float quarter = note * 2.0;
return AudioLinkGetAmplitudeAtQuarterNote(octave, quarter);
}

float4 AudioLinkGetAmplitudesAtQuarterNote(float quarter)
{
float amplitude = 0;
UNITY_UNROLL
for (int i = 0; i < AUDIOLINK_EXPOCT; i++)
{
amplitude += AudioLinkGetAmplitudeAtQuarterNote(i, quarter);
}
return amplitude;
}

float4 AudioLinkGetAmplitudesAtNote(float note)
{
float quarter = note * 2.0;
return AudioLinkGetAmplitudesAtQuarterNote(quarter);
}


float AudioLinkGetChronoTime(uint index, uint band)
{
return (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(index, band))) / 100000.0;
}


float AudioLinkGetChronoTimeNormalized(uint index, uint band, float speed)
{
return frac(AudioLinkGetChronoTime(index, band) * speed);
}


float AudioLinkGetChronoTimeInterval(uint index, uint band, float speed, float interval)
{
return AudioLinkGetChronoTimeNormalized(index, band, speed) * interval;
}

float3 AudioLinkGetTimeOfDay()
{
float value = AudioLinkDecodeDataAsSeconds(ALPASS_GENERALVU_UNIX_SECONDS);
float hour = floor(value / 3600.0);
float minute = floor(value / 60.0) % 60.0;
float second = value % 60.0;
return float3(hour, minute, second);
}




uint AudioLinkGetGlobalStringChar(uint stringIndex, uint charIndex)
{
uint4 fourChars = asuint(AudioLinkData(ALPASS_GLOBAL_STRINGS + uint2(charIndex / 4, stringIndex)));
return fourChars[charIndex % 4];
}


uint AudioLinkGetLocalPlayerNameChar(uint charIndex)
{
return AudioLinkGetGlobalStringChar(AUDIOLINK_STRING_LOCALPLAYER, charIndex);
}


uint AudioLinkGetMasterNameChar(uint charIndex)
{
return AudioLinkGetGlobalStringChar(AUDIOLINK_STRING_MASTER, charIndex);
}


uint AudioLinkGetCustomString1Char(uint charIndex)
{
return AudioLinkGetGlobalStringChar(AUDIOLINK_STRING_CUSTOM1, charIndex);
}


uint AudioLinkGetCustomString2Char(uint charIndex)
{
return AudioLinkGetGlobalStringChar(AUDIOLINK_STRING_CUSTOM2, charIndex);
}

float4 AudioLinkGetAudioSourcePosition()
{
return float4(AudioLinkData(ALPASS_GENERALVU_SOURCE_POS).xyz, 1);
}
#if defined(_BACKLACE_AUDIOLINK)
struct BacklaceAudioLinkData
{
float emission;
float rim;
float hueShift;
float decalHue;
float decalEmission;
float decalOpacity;
float matcap;
float pathing;
float glitter;
float iridescence;
float vertexScale;
float outlineWidth;
};
float _AudioLinkFallback;
float _AudioLinkEmissionBand, _AudioLinkEmissionStrength;
float2 _AudioLinkEmissionRange;
float _AudioLinkRimBand, _AudioLinkRimStrength;
float2 _AudioLinkRimRange;
float _AudioLinkHueShiftBand, _AudioLinkHueShiftStrength;
float2 _AudioLinkHueShiftRange;
float _AudioLinkDecalHueBand, _AudioLinkDecalHueStrength;
float2 _AudioLinkDecalHueRange;
float _AudioLinkDecalEmissionBand, _AudioLinkDecalEmissionStrength;
float2 _AudioLinkDecalEmissionRange;
float _AudioLinkDecalOpacityBand, _AudioLinkDecalOpacityStrength;
float2 _AudioLinkDecalOpacityRange;
float _AudioLinkVertexBand, _AudioLinkVertexStrength;
float2 _AudioLinkVertexRange;
float _AudioLinkOutlineBand, _AudioLinkOutlineStrength;
float2 _AudioLinkOutlineRange;
float _AudioLinkMatcapBand, _AudioLinkMatcapStrength;
float2 _AudioLinkMatcapRange;
float _AudioLinkPathingBand, _AudioLinkPathingStrength;
float2 _AudioLinkPathingRange;
float _AudioLinkGlitterBand, _AudioLinkGlitterStrength;
float2 _AudioLinkGlitterRange;
float _AudioLinkIridescenceBand, _AudioLinkIridescenceStrength;
float2 _AudioLinkIridescenceRange;
float GetAudioLinkBandValue(float band)
{
if (band < 1) return _AudioLinkFallback;
float value = 0;
switch((int)band - 1)
{
case 0: value = AudioLinkData(ALPASS_AUDIOBASS).r; break; 
case 1: value = AudioLinkData(ALPASS_AUDIOLOWMIDS).r; break; 
case 2: value = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r; break; 
case 3: value = AudioLinkData(ALPASS_AUDIOTREBLE).r; break; 
case 4: value = AudioLinkData(ALPASS_GENERALVU).z; break; 
}
return value;
}
float CalculateAudioLinkEffect(float band, float2 range, float strength)
{
float raw = GetAudioLinkBandValue(band);
return lerp(range.x, range.y, raw) * strength;
}
BacklaceAudioLinkData CalculateAudioLinkEffects() {
BacklaceAudioLinkData data = (BacklaceAudioLinkData)0;
if (!AudioLinkIsAvailable())
{
data.emission = _AudioLinkFallback;
data.rim = _AudioLinkFallback;
data.hueShift = _AudioLinkFallback;
data.decalHue = _AudioLinkFallback;
data.decalEmission = _AudioLinkFallback;
data.decalOpacity = _AudioLinkFallback;
data.vertexScale = _AudioLinkFallback;
data.outlineWidth = _AudioLinkFallback;
data.matcap = _AudioLinkFallback;
data.pathing = _AudioLinkFallback;
data.glitter = _AudioLinkFallback;
data.iridescence = _AudioLinkFallback;
return data;
}
data.emission = CalculateAudioLinkEffect(_AudioLinkEmissionBand, _AudioLinkEmissionRange, _AudioLinkEmissionStrength);
data.rim = CalculateAudioLinkEffect(_AudioLinkRimBand, _AudioLinkRimRange, _AudioLinkRimStrength);
data.hueShift = CalculateAudioLinkEffect(_AudioLinkHueShiftBand, _AudioLinkHueShiftRange, _AudioLinkHueShiftStrength);
data.decalHue = CalculateAudioLinkEffect(_AudioLinkDecalHueBand, _AudioLinkDecalHueRange, _AudioLinkDecalHueStrength);
data.decalEmission = CalculateAudioLinkEffect(_AudioLinkDecalEmissionBand, _AudioLinkDecalEmissionRange, _AudioLinkDecalEmissionStrength);
data.decalOpacity = CalculateAudioLinkEffect(_AudioLinkDecalOpacityBand, _AudioLinkDecalOpacityRange, _AudioLinkDecalOpacityStrength);
data.vertexScale = CalculateAudioLinkEffect(_AudioLinkVertexBand, _AudioLinkVertexRange, _AudioLinkVertexStrength);
data.outlineWidth = CalculateAudioLinkEffect(_AudioLinkOutlineBand, _AudioLinkOutlineRange, _AudioLinkOutlineStrength);
data.matcap = CalculateAudioLinkEffect(_AudioLinkMatcapBand, _AudioLinkMatcapRange, _AudioLinkMatcapStrength);
data.pathing = CalculateAudioLinkEffect(_AudioLinkPathingBand, _AudioLinkPathingRange, _AudioLinkPathingStrength);
data.glitter = CalculateAudioLinkEffect(_AudioLinkGlitterBand, _AudioLinkGlitterRange, _AudioLinkGlitterStrength);
data.iridescence = CalculateAudioLinkEffect(_AudioLinkIridescenceBand, _AudioLinkIridescenceRange, _AudioLinkIridescenceStrength);
return data;
}
#endif 
#endif 


#endif 

#if defined(_BACKLACE_LTCGI)


#ifndef BACKLACE_LTCGI_CGINC
#define BACKLACE_LTCGI_CGINC


#include "Packages/at.pimaker.ltcgi/Shaders/LTCGI.cginc"

#endif 


#endif 

struct VertexData
{
float4 vertex : POSITION;
float2 uv : TEXCOORD0;
float2 uv1 : TEXCOORD1;
float2 uv2 : TEXCOORD2;
float2 uv3 : TEXCOORD3;
float3 normal : NORMAL;
float4 tangentDir : TANGENT;
#if defined(_BACKLACE_VERTEX_DISTORTION)
fixed4 color : COLOR;
#endif 
UNITY_VERTEX_INPUT_INSTANCE_ID
};
struct FragmentData
{
float4 pos : SV_POSITION;
float3 normal : NORMAL;
float4 tangentDir : TANGENT;
float2 uv : TEXCOORD0;
float2 uv1 : TEXCOORD1;
float2 uv2 : TEXCOORD2;
float2 uv3 : TEXCOORD3;
float3 worldPos : TEXCOORD4;
float4 vertex : TEXCOORD5;
UNITY_SHADOW_COORDS(6)
UNITY_FOG_COORDS(7)
#if defined(LIGHTMAP_ON)
float2 lightmapUV : TEXCOORD8;
#endif 
#if defined(DYNAMICLIGHTMAP_ON)
float2 dynamicLightmapUV : TEXCOORD9;
#endif 
#if defined(_BACKLACE_MATCAP)
float2 matcapUV : TEXCOORD10;
#endif 
float3 worldObjectCenter : TEXCOORD11;
float4 scrPos : TEXCOORD12; 
#if defined(_BACKLACE_AUDIOLINK)
float4 alChannel1 : TEXCOORD13; 
float4 alChannel2 : TEXCOORD14; 
float2 alChannel3 : TEXCOORD15; 
#endif 
#if defined(_BACKLACE_PS1)
float4 affineUV : TEXCOORD16;
#endif 
UNITY_VERTEX_OUTPUT_STEREO
};
struct Unity_GlossyEnvironmentData
{
half roughness; 
half3 reflUVW;
};



#ifndef BACKLACE_PROPERTIES_CGINC
#define BACKLACE_PROPERTIES_CGINC

FragmentData FragData;
float3 NormalMap;
float3 Lightmap;
float GFS;
float3 NDF;
float3 DynamicLightmap;
float4 LightmapDirection;
float4 DynamicLightmapDirection;
float4 Msso;
float RoughnessSquared;
float RampAttenuation;
float LightAttenuation;

float _Alpha;
UNITY_DECLARE_TEX2D(_MainTex);
float4 _MainTex_ST;
UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
float4 _BumpMap_ST;
float4 _Color;
float _Cutoff;
float _BumpScale;
int _IndirectFallbackMode;
int _IndirectOverride;
int _FlipBackfaceNormals;

float _Occlusion;
float _Metallic;
float _Glossiness;
float _Specular;
float _SpecularIntensity;
float _ReplaceSpecular;
float _Anisotropy;
float _EnableSpecular;
samplerCUBE _FallbackCubemap;
UNITY_DECLARE_TEX2D_NOSAMPLER(_MSSO);
UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularTintTexture);
UNITY_DECLARE_TEX2D_NOSAMPLER(_TangentMap);
float4 _MSSO_ST;
float4 _SpecularTintTexture_ST;
float4 _SpecularTint;
float4 _TangentMap_ST;

float _LightingColorMode;
float _LightingDirectionMode;
float4 _ForcedLightDirection;
float _ViewDirectionOffsetX;
float _ViewDirectionOffsetY;
float _GreyscaleLighting;
float _ForceLightColor;
float4 _ForcedLightColor;

float _MainTex_UV;
float _MSSO_UV;
float _BumpMap_UV;
float _TangentMap_UV;
float _SpecularTintTexture_UV;

float _DirectIntensity;
float _IndirectIntensity;
float _VertexIntensity;
float _AdditiveIntensity;
float _BakedDirectIntensity;
float _BakedIndirectIntensity;

float _UV_Offset_X;
float _UV_Offset_Y;
float _UV_Scale_X;
float _UV_Scale_Y;
float _UV_Rotation;
float _UV_Scroll_X_Speed;
float _UV_Scroll_Y_Speed;

float3 _VertexManipulationPosition;
float3 _VertexManipulationScale;

#if defined(_BLENDMODE_FADE) || defined(_BACKLACE_DISTANCE_FADE)
sampler3D _DitherMaskLOD;
#endif 

#if defined(UNITY_PASS_FORWARDBASE)
float _EnableBaseLightLimit;
float _BaseLightMin;
float _BaseLightMax;
#endif 

#if defined(UNITY_PASS_FORWARDADD)
float _EnableAddLightLimit;
float _AddLightMin;
float _AddLightMax;
#endif 

#if defined(_BACKLACE_TOON)
float _TintMaskSource;
float4 _LitTint;
float4 _ShadowTint;
float _ShadowThreshold;
float _LitThreshold;
float _ToggleAmbientGradient;
float4 _AmbientUp;
float4 _AmbientDown;
float _AmbientIntensity;
float _AmbientSkyThreshold;
float _AmbientGroundThreshold;
#if defined(_ANIMEMODE_RAMP)
UNITY_DECLARE_TEX2D(_Ramp);
float _Ramp_UV;
float4 _RampColor;
float _RampOffset;
float _ShadowIntensity;
float _OcclusionOffsetIntensity;
float3 _RampMin;
#elif defined(_ANIMEMODE_PROCEDURAL)
float4 _AnimeShadowColor;
float _AnimeShadowThreshold;
float4 _AnimeHalftoneColor;
float _AnimeHalftoneThreshold;
float _AnimeShadowSoftness;
float _AnimeOcclusionToShadow;
#endif 
#endif 

#if defined(_BACKLACE_EMISSION)
float3 Emission;
float4 _EmissionColor;
float4 _EmissionMap_ST;
float _UseAlbedoAsEmission;
float _EmissionStrength;
float _EmissionMap_UV;
UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
#endif 

#if defined(_BACKLACE_SPECULAR)

#if defined(_SPECULARMODE_TOON) 
UNITY_DECLARE_TEX2D(_HighlightRamp);
float4 _HighlightRampColor;
float _HighlightIntensity;
float _HighlightRampOffset;
float _HighlightHardness;
#elif defined(_SPECULARMODE_HAIR) 
UNITY_DECLARE_TEX2D(_HairFlowMap);
float _HairFlowMap_UV;
float _PrimarySpecularShift;
float _SecondarySpecularShift;
float4 _SecondarySpecularColor;
float _SpecularExponent;
#elif defined(_SPECULARMODE_CLOTH) 
float4 _SheenColor;
float _SheenIntensity;
float _SheenRoughness;
#endif 

#if defined(_BACKLACE_VERTEX_SPECULAR) 
float3 VertexLightDir;
#endif 
#endif 

#if defined(_BACKLACE_DECAL1)
UNITY_DECLARE_TEX2D(_Decal1Tex);
float4 _Decal1Tint;
float2 _Decal1Position;
float2 _Decal1Scale;
float _Decal1Rotation;
float _Decal1_UV;
float _Decal1TriplanarSharpness;
int _Decal1BlendMode;
float _Decal1IsTriplanar;
float3 _Decal1TriplanarPosition;
float _Decal1TriplanarScale;
float3 _Decal1TriplanarRotation;
float _Decal1Repeat;
float2 _Decal1Scroll;
float _Decal1HueShift;
float _Decal1AutoCycleHue;
float _Decal1CycleSpeed;
#endif 

#if defined(_BACKLACE_DECAL2)
UNITY_DECLARE_TEX2D(_Decal2Tex);
float4 _Decal2Tint;
float2 _Decal2Position;
float2 _Decal2Scale;
float _Decal2Rotation;
float _Decal2_UV;
float _Decal2TriplanarSharpness;
int _Decal2BlendMode;
float _Decal2IsTriplanar;
float3 _Decal2TriplanarPosition;
float _Decal2TriplanarScale;
float3 _Decal2TriplanarRotation;
float _Decal2Repeat;
float2 _Decal2Scroll;
float _Decal2HueShift;
float _Decal2AutoCycleHue;
float _Decal2CycleSpeed;
#endif 

#if defined(_BACKLACE_UV_EFFECTS)

float _UVTriplanarMapping;
float3 _UVTriplanarPosition;
float _UVTriplanarScale;
float3 _UVTriplanarRotation;
float _UVTriplanarSharpness;

float _UVScreenspaceMapping;
float _UVScreenspaceTiling;

float _UVFlipbook;
float _UVFlipbookRows;
float _UVFlipbookColumns;
float _UVFlipbookFrames;
float _UVFlipbookFPS;
float _UVFlipbookScrub;

float _UVFlowmap;
UNITY_DECLARE_TEX2D(_UVFlowmapTex);
float _UVFlowmapStrength;
float _UVFlowmapSpeed;
float _UVFlowmapDistortion;
float _UVFlowmap_UV;
#endif 

#if defined(_BACKLACE_SHADOW_MAP)
UNITY_DECLARE_TEX2D(_ShadowMap);
float _ShadowMap_UV;
float _ShadowMapIntensity;
#endif 
#endif 




#ifndef BACKLACE_UNIVERSAL_CGINC
#define BACKLACE_UNIVERSAL_CGINC

#define BACKLACE_TRANSFORM_TEX(set, name) (set[name##_UV].xy * name##_ST.xy + name##_ST.zw)

struct BacklaceSurfaceData
{

float4 FinalColor;

float4 Albedo;
float3 NormalDir;
float3 TangentDir;
float3 BitangentDir;

float Metallic;
float Glossiness;
float Roughness;
float SquareRoughness;
float Specular;
float OneMinusReflectivity;
float Occlusion;

float3 ViewDir;
float3 LightDir;
float3 HalfDir;
float3 ReflectDir;

float NdotL;
float UnmaxedNdotL;
float NdotV;
float NdotH;
float LdotH;

float4 LightColor;
float4 SpecLightColor;
float3 IndirectDiffuse;
float3 Diffuse;
float3 DirectSpecular;
float3 IndirectSpecular;
float3 VertexDirectDiffuse;
float Attenuation;

float3 SpecularColor;
float3 EnergyCompensation;
float3 Dfg;
float3 CustomIndirect;

float2 ScreenCoords;
bool IsFrontFace;
};

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD) || defined(UNITY_PASS_META) || defined(_BLENDMODE_CUTOUT) || defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
#ifndef UNITY_PASS_OUTLINE

float2 Uvs[4];
void LoadUVs()
{
Uvs[0] = FragData.uv;
Uvs[1] = FragData.uv1;
Uvs[2] = FragData.uv2;
Uvs[3] = FragData.uv3;
}
void SampleAlbedo(inout BacklaceSurfaceData Surface)
{
Surface.Albedo = UNITY_SAMPLE_TEX2D(_MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _MainTex)) * _Color;
}
#endif 
#endif 

inline float remap(float value, float oldMin, float oldMax, float newMin, float newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float2 remap(float2 value, float2 oldMin, float2 oldMax, float2 newMin, float2 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float3 remap(float3 value, float3 oldMin, float3 oldMax, float3 newMin, float3 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float4 remap(float4 value, float4 oldMin, float4 oldMax, float4 newMin, float4 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline half Pow5(half x)
{
return x * x * x * x * x;
}

float sqr(float x)
{
return x * x;
}

inline float GetLuma(float3 color)
{
return dot(color, float3(0.299, 0.587, 0.114));
}


float fastpow(float x, float p)
{
return exp2(p * log2(x));
}

float Hash(float2 p)
{
float3 p3 = frac(float3(p.xyx) * .1031);
p3 += dot(p3, p3.yzx + 33.33);
return frac((p3.x + p3.y) * p3.z);
}

float2 Hash2(float2 p)
{
return float2(Hash(p), Hash(p + 0.123));
}

float3 HSVtoRGB(float3 c)
{
float4 K = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
float3 p = abs(frac(c.xxx + K.xyz) * 6.0 - K.www);
return c.z * lerp(K.xxx, saturate(p - K.xxx), c.y);
}

float3 RGBtoHSV(float3 c) {
float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
float4 p = lerp(float4(c.bg, K.wz), float4(c.gb, K.xy), step(c.b, c.g));
float4 q = lerp(float4(p.xyw, c.r), float4(c.r, p.yzx), step(p.x, c.r));
float d = q.x - min(q.w, q.y);
float E = 1e-10;
return float3(abs(q.z + (q.w - q.y) / (6.0 * d + E)), d / (q.x + E), q.x);
}

inline half3 FresnelTerm(half3 F0, half cosA)
{
half t = Pow5(1 - cosA);
return F0 + (1 - F0) * t;
}

float GTR2(float NdotH, float a)
{
float a2 = a * a;
float NdotH2 = NdotH * NdotH;
float denominator = NdotH2 * (a2 - 1.0) + 1.0;
denominator = UNITY_PI * denominator * denominator + 1e-7f;
return a2 / denominator;
}

float smithG_GGX(float NdotV, float alphaG)
{
float a = alphaG * alphaG;
float b = NdotV * NdotV;
return 1 / (NdotV + sqrt(a + b - a * b) + 1e-7f);
}

float3 ApplyHueShift(float3 inColor, float baseShift, float autoCycleToggle, float autoCycleSpeed)
{
float totalShift = baseShift;
if (autoCycleToggle > 0)
{
totalShift += frac(_Time.y * autoCycleSpeed);
}
float3 hsv = RGBtoHSV(inColor);
hsv.x = frac(hsv.x + totalShift);
return HSVtoRGB(hsv);
}

float3 Sinebow(float val)
{
val = 0.5 - val * 0.5; 
float3 sinebowColor = sin((val * UNITY_PI) + float3(0.0, 0.333 * UNITY_PI, 0.666 * UNITY_PI));
return sinebowColor * sinebowColor;
}

float3 GetCameraPos()
{
#if UNITY_SINGLE_PASS_STEREO
return (unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1]) * 0.5;
#else 
return _WorldSpaceCameraPos;
#endif 
}

float3 RotateVector(float3 pos, float3 rotation)
{
float3 angles = rotation * (UNITY_PI / 180.0);
float3 s, c;
sincos(angles, s, c);
float3x3 rotX = float3x3(1, 0, 0, 0, c.x, -s.x, 0, s.x, c.x);
float3x3 rotY = float3x3(c.y, 0, s.y, 0, 1, 0, -s.y, 0, c.y);
float3x3 rotZ = float3x3(c.z, -s.z, 0, s.z, c.z, 0, 0, 0, 1);
return mul(rotZ, mul(rotY, mul(rotX, pos)));
}

void GetTriplanarUVsAndWeights(
float3 worldPos, float3 normal,
float3 position, float scale, float3 rotation, float sharpness,
out float2 uvX, out float2 uvY, out float2 uvZ, out float3 weights)
{
float3 localPos = RotateVector(worldPos - position, -rotation);
weights = pow(abs(normal), sharpness);
weights /= dot(weights, 1.0.xxx); 
uvX = localPos.yz / scale;
uvY = localPos.xz / scale;
uvZ = localPos.xy / scale;
}

float4 SampleTriplanar(
Texture2D tex, SamplerState texSampler,
float2 uvX, float2 uvY, float2 uvZ, float3 weights,
bool isTiling, float2 scroll)
{
float4 sampleX, sampleY, sampleZ;
float2 scrollOffset = scroll * _Time.y;
if (isTiling)
{

sampleX = tex.Sample(texSampler, frac(uvX + scrollOffset));
sampleY = tex.Sample(texSampler, frac(uvY + scrollOffset));
sampleZ = tex.Sample(texSampler, frac(uvZ + scrollOffset));
}
else
{

uvX += 0.5;
uvY += 0.5;
uvZ += 0.5;
sampleX = 0;
if (all(saturate(uvX) == uvX))
{
sampleX = tex.Sample(texSampler, uvX);
}
sampleY = 0;
if (all(saturate(uvY) == uvY))
{
sampleY = tex.Sample(texSampler, uvY);
}
sampleZ = 0;
if (all(saturate(uvZ) == uvZ))
{
sampleZ = tex.Sample(texSampler, uvZ);
}
}
return sampleX * weights.x + sampleY * weights.y + sampleZ * weights.z;
}

float4 SampleTextureTriplanar(Texture2D tex, SamplerState texSampler, float3 worldPos,
float3 normal, float3 position, float scale, float3 rotation,
float sharpness, bool isTiling, float2 scroll)
{

float2 uvX, uvY, uvZ;
float3 weights;
GetTriplanarUVsAndWeights(worldPos, normal, position, scale, rotation, sharpness, uvX, uvY, uvZ, weights);

return SampleTriplanar(tex, texSampler, uvX, uvY, uvZ, weights, isTiling, scroll);
}
float2 ApplyFlipbook(float2 uvs, float columns, float rows, float totalFrames, float fps, float scrub)
{
float frame = floor(frac(fps * _Time.y + scrub) * totalFrames);
float col = fmod(frame, columns);
float row = floor(frame / columns);
float2 cellSize = 1.0 / float2(columns, rows);
row = (rows - 1) - row;
float2 outputUVs = (uvs * cellSize) + float2(col, row) * cellSize;
return outputUVs;
}

float2 ManipulateUVs(float2 uv, float rotation, float scalex, float scaley, float offsetx, float offsety, float scrollx, float scrolly)
{
float2 finalUV = uv;
if (rotation != 0)
{
finalUV = uv - 0.5;
float angle = -rotation * (UNITY_PI / 180.0);
float s = sin(angle);
float c = cos(angle);
float2x2 rotationMatrix = float2x2(c, -s, s, c);
finalUV = mul(rotationMatrix, finalUV);
finalUV += 0.5;
}
finalUV *= float2(scalex, scaley);
finalUV += float2(offsetx, offsety);
finalUV += float2(scrollx, scrolly) * _Time.y;
return finalUV;
}

float GetTiltedCheckerboardPattern(float2 screenPos, float scale)
{
float u = screenPos.x + screenPos.y;
float v = screenPos.x - screenPos.y;
float2 gridPos = floor(float2(u, v) / scale);
return fmod(gridPos.x + gridPos.y, 2.0);
}

#if defined(_BACKLACE_DECAL1) || defined(_BACKLACE_DECAL2)
void ApplyDecal_UVSpace(inout float4 baseAlbedo, float2 baseUV, Texture2D decalTex, SamplerState decalSampler, float4 tint, float2 position, float2 scale, float rotation, int blendMode, float repeat, float2 scroll, float hueShift, float autoCycle, float cycleSpeed, float alHue, float alEmission, float alOpacity)
{
baseUV += scroll * _Time.y;
float angle = -rotation * (UNITY_PI / 180.0);
float s = sin(angle);
float c = cos(angle);
float2x2 rotationMatrix = float2x2(c, -s, s, c);
float2 localUV = baseUV - position;
localUV = mul(rotationMatrix, localUV);
localUV /= max(scale, 0.0001);
localUV += 0.5;
if (repeat == 1) 
{
localUV = frac(localUV);
}
else 
{
if (any(saturate(localUV) != localUV))
{
return;
}
}
float4 decalColor = decalTex.Sample(decalSampler, localUV) * tint;
decalColor.rgb = ApplyHueShift(decalColor.rgb, hueShift + alHue, autoCycle, cycleSpeed);
decalColor.a *= alOpacity;
decalColor.rgb *= alEmission;
switch(blendMode)
{
case 0: baseAlbedo.rgb += decalColor.rgb * decalColor.a; break; 
case 1: baseAlbedo.rgb = lerp(baseAlbedo.rgb, baseAlbedo.rgb * decalColor.rgb, decalColor.a); break; 
case 2: baseAlbedo.rgb = lerp(baseAlbedo.rgb, decalColor.rgb, decalColor.a); break; 
}
}
void ApplyDecal_Triplanar(inout float4 baseAlbedo, float3 worldPos, float3 normal, Texture2D decalTex, SamplerState decalSampler, float4 tint, float3 position, float scale, float3 rotation, float sharpness, int blendMode, float repeat, float2 scroll, float hueShift, float autoCycle, float cycleSpeed, float alHue, float alEmission, float alOpacity)
{
float4 decalColor = SampleTextureTriplanar(decalTex, decalSampler, worldPos, normal, position, scale, rotation, sharpness, repeat > 0.5, scroll);
decalColor *= tint;
if (hueShift != 0) {
decalColor.rgb = ApplyHueShift(decalColor.rgb, hueShift + alHue, autoCycle, cycleSpeed);
}
decalColor.a *= alOpacity;
decalColor.rgb *= alEmission;
switch(blendMode)
{
case 0: baseAlbedo.rgb += decalColor.rgb * decalColor.a; break;
case 1: baseAlbedo.rgb = lerp(baseAlbedo.rgb, baseAlbedo.rgb * decalColor.rgb, decalColor.a); break;
case 2: baseAlbedo.rgb = lerp(baseAlbedo.rgb, decalColor.rgb, decalColor.a); break;
}
}

#if defined(_BACKLACE_DECAL1)
void ApplyDecal1(inout BacklaceSurfaceData Surface, FragmentData i, float2 Uvs[4])
{
float alHue = 0;
float alEmission = 1;
float alOpacity = 1;
#if defined(_BACKLACE_AUDIOLINK)
alHue = i.alChannel2.w;
alEmission = i.alChannel3.x;
alOpacity = i.alChannel3.y;
#endif 
float4 decalApplied = (_DecalStage == 0) ? Surface.Albedo : float4(Surface.FinalColor.rgb, 1.0);
[branch] if (_Decal1IsTriplanar == 1)
{
ApplyDecal_Triplanar(decalApplied, i.worldPos, Surface.NormalDir, _Decal1Tex, sampler_Decal1Tex, _Decal1Tint, _Decal1TriplanarPosition.xyz, _Decal1TriplanarScale, _Decal1TriplanarRotation.xyz, _Decal1TriplanarSharpness, _Decal1BlendMode, _Decal1Repeat, _Decal1Scroll.xy, _Decal1HueShift, _Decal1AutoCycleHue, _Decal1CycleSpeed, alHue, alEmission, alOpacity);
}
else
{
ApplyDecal_UVSpace(decalApplied, Uvs[_Decal1_UV], _Decal1Tex, sampler_Decal1Tex, _Decal1Tint, _Decal1Position.xy, _Decal1Scale.xy, _Decal1Rotation, _Decal1BlendMode, _Decal1Repeat, _Decal1Scroll, _Decal1HueShift, _Decal1AutoCycleHue, _Decal1CycleSpeed, alHue, alEmission, alOpacity);
}
[branch] if (_DecalStage == 0) 
{
Surface.Albedo = decalApplied;
}
else 
{
Surface.FinalColor.rgb = decalApplied.rgb;
}
}
#endif 

#if defined(_BACKLACE_DECAL2)
void ApplyDecal2(inout BacklaceSurfaceData Surface, FragmentData i, float2 Uvs[4])
{
float alHue = 0;
float alEmission = 1;
float alOpacity = 1;
#if defined(_BACKLACE_AUDIOLINK)
alHue = i.alChannel2.w;
alEmission = i.alChannel3.x;
alOpacity = i.alChannel3.y;
#endif 
float4 decalApplied = (_DecalStage == 0) ? Surface.Albedo : float4(Surface.FinalColor.rgb, 1.0);
[branch] if (_Decal2IsTriplanar == 1)
{
ApplyDecal_Triplanar(decalApplied, i.worldPos, Surface.NormalDir, _Decal2Tex, sampler_Decal2Tex, _Decal2Tint, _Decal2TriplanarPosition.xyz, _Decal2TriplanarScale, _Decal2TriplanarRotation.xyz, _Decal2TriplanarSharpness, _Decal2BlendMode, _Decal2Repeat, _Decal2Scroll, _Decal2HueShift, _Decal2AutoCycleHue, _Decal2CycleSpeed, alHue, alEmission, alOpacity);
}
else
{
ApplyDecal_UVSpace(decalApplied, Uvs[_Decal2_UV], _Decal2Tex, sampler_Decal2Tex, _Decal2Tint, _Decal2Position.xy, _Decal2Scale.xy, _Decal2Rotation, _Decal2BlendMode, _Decal2Repeat, _Decal2Scroll, _Decal2HueShift, _Decal2AutoCycleHue, _Decal2CycleSpeed, alHue, alEmission, alOpacity);
}
[branch] if (_DecalStage == 0) 
{
Surface.Albedo = decalApplied;
}
else 
{
Surface.FinalColor.rgb = decalApplied.rgb;
}
}
#endif 
#endif 

#if defined(_BACKLACE_UV_EFFECTS)
void ApplyUVEffects(inout float2 uv, in BacklaceSurfaceData Surface)
{

[branch] if (_UVTriplanarMapping == 1)
{
float2 uvX, uvY, uvZ;
float3 weights;
GetTriplanarUVsAndWeights(
FragData.worldPos, Surface.NormalDir,
_UVTriplanarPosition, _UVTriplanarScale, _UVTriplanarRotation, _UVTriplanarSharpness,
uvX, uvY, uvZ, weights
);
uv = uvX * weights.x + uvY * weights.y + uvZ * weights.z;
}

[branch] if (_UVScreenspaceMapping == 1)
{
uv = frac(Surface.ScreenCoords * _UVScreenspaceTiling);
}

[branch] if (_UVFlipbook == 1) {
uv = ApplyFlipbook(uv, _UVFlipbookColumns, _UVFlipbookRows, _UVFlipbookFrames, _UVFlipbookFPS, _UVFlipbookScrub);
}

[branch] if (_UVFlowmap == 1) {
float2 flow = UNITY_SAMPLE_TEX2D(_UVFlowmapTex, uv).rg * 2.0 - 1.0;
uv += flow * _UVFlowmapStrength * frac(_Time.y * _UVFlowmapSpeed);
}
}
#endif 

#if defined(_BACKLACE_DISSOLVE)
float _DissolveProgress;
UNITY_DECLARE_TEX2D(_DissolveNoiseTex);
float _DissolveNoiseScale;
float4 _DissolveEdgeColor;
int _DissolveType;
float _DissolveEdgeWidth;
float4 _DissolveDirection;
int _DissolveDirectionSpace;
float _DissolveDirectionBounds;
float _DissolveVoxelDensity;
float _DissolveEdgeSharpness;
float _DissolveEdgeMode;
float GetDissolveMapValue(float3 worldPos, float3 vertexPos, float3 normalDir)
{
float dissolveMapValue = 0;
switch(_DissolveType)
{
case 0: 
{
dissolveMapValue = SampleTextureTriplanar(
_DissolveNoiseTex, sampler_DissolveNoiseTex,
worldPos, normalDir,
float3(0,0,0), _DissolveNoiseScale, float3(0,0,0),
2.0, true, float2(0, 0)
).r;
break;
}
case 1: 
{
float3 position = (_DissolveDirectionSpace == 0) ? vertexPos : worldPos;
float3 direction = normalize(_DissolveDirection.xyz);
dissolveMapValue = dot(position, direction) / max(_DissolveDirectionBounds, 0.001);
dissolveMapValue = saturate(dissolveMapValue * 0.5 + 0.5); 
break;
}
case 2: 
{
float3 voxelID = floor(worldPos * _DissolveVoxelDensity);
dissolveMapValue = Hash(voxelID.xy + voxelID.z);
break;
}
}
return dissolveMapValue;
}
#endif 

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD) || defined(UNITY_PASS_META)

void SampleMSSO(inout BacklaceSurfaceData Surface)
{
Msso = UNITY_SAMPLE_TEX2D_SAMPLER(_MSSO, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _MSSO));
Surface.Occlusion = lerp(1, Msso.a, _Occlusion);
}

#if defined(_BACKLACE_SPECULAR)

void GetSampleData(inout BacklaceSurfaceData Surface)
{
Surface.Metallic = Msso.r * _Metallic;
Surface.Glossiness = Msso.g * _Glossiness;
Surface.Specular = Msso.b * _Specular;
Surface.Roughness = 1 - Surface.Glossiness;
Surface.SquareRoughness = max(Surface.Roughness * Surface.Roughness, 0.002);
}

void SetupAlbedoAndSpecColor(inout BacklaceSurfaceData Surface)
{
float3 specularTint = (UNITY_SAMPLE_TEX2D_SAMPLER(_SpecularTintTexture, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _SpecularTintTexture)).rgb * _SpecularTint).rgb;
float sp = Surface.Specular;
Surface.SpecularColor = lerp(float3(sp, sp, sp), Surface.Albedo.rgb, Surface.Metallic);
if (_ReplaceSpecular == 1)
{
Surface.SpecularColor = specularTint;
}
else
{
Surface.SpecularColor *= specularTint;
}
Surface.OneMinusReflectivity = (1 - sp) - (Surface.Metallic * (1 - sp));
Surface.Albedo.rgb *= Surface.OneMinusReflectivity;
}
#endif 

#if defined(_BACKLACE_EMISSION)

void CalculateEmission(inout BacklaceSurfaceData Surface)
{
float3 baseEmission = _EmissionColor.rgb;
[branch] if (_UseAlbedoAsEmission > 0)
{
baseEmission = lerp(baseEmission, Surface.Albedo.rgb, _UseAlbedoAsEmission);
}
float3 emissionMap = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _EmissionMap)).rgb;
Emission = baseEmission * emissionMap * _EmissionStrength;
}
#endif 
#endif 
#endif 




#ifndef BACKLACE_LIGHTING_CGINC
#define BACKLACE_LIGHTING_CGINC

struct BacklaceLightData
{
float3 directColor;
float3 indirectColor;
float3 direction;
float attenuation;
};

half3 Unity_SafeNormalize(half3 inVec)
{
half dp3 = max(0.001f, dot(inVec, inVec));
return inVec * rsqrt(dp3);
}

half3 GetSHLength()
{
half3 x, x1;
x.r = length(unity_SHAr);
x.g = length(unity_SHAg);
x.b = length(unity_SHAb);
x1.r = length(unity_SHBr);
x1.g = length(unity_SHBg);
x1.b = length(unity_SHBb);
return x + x1;
}

float FadeShadows(FragmentData i, float attenuation)
{
#if HANDLE_SHADOWS_BLENDING_IN_GI && !defined(SHADOWS_SHADOWMASK)
float viewZ = dot(_WorldSpaceCameraPos - i.worldPos, UNITY_MATRIX_V[2].xyz);
float shadowFadeDistance = UnityComputeShadowFadeDistance(i.worldPos, viewZ);
float shadowFade = UnityComputeShadowFade(shadowFadeDistance);
attenuation = saturate(attenuation + shadowFade);
#endif 
#if defined(LIGHTMAP_ON) && defined(SHADOWS_SHADOWMASK)
float viewZ = dot(_WorldSpaceCameraPos - i.worldPos, UNITY_MATRIX_V[2].xyz);
float shadowFadeDistance = UnityComputeShadowFadeDistance(i.worldPos, viewZ);
float shadowFade = UnityComputeShadowFade(shadowFadeDistance);
float bakedAttenuation = UnitySampleBakedOcclusion(i.lightmapUV, i.worldPos);
attenuation = UnityMixRealtimeAndBakedShadows(attenuation, bakedAttenuation, shadowFade);
#endif 
return attenuation;
}

float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
{
float R0 = max(0, L0);
float3 R1 = 0.5f * L1;
float lenR1 = length(R1);
float q = dot(normalize(R1), n) * 0.5 + 0.5;
q = saturate(q);
float p = 1.0f + 2.0f * lenR1 / R0;
float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
}

half3 BetterSH9(half4 normal)
{
float3 indirect;
float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
indirect = max(0, indirect);
indirect += SHEvalLinearL2(normal);
return indirect;
}

float NonlinearSH(float L0, float3 L1, float3 normal)
{
float R0 = L0;
float3 R1 = 0.5f * L1;
float lenR1 = length(R1);
float q = dot(normalize(R1), normal) * 0.5 + 0.5;
q = max(0, q);
float p = 1.0f + 2.0f * lenR1 / R0;
float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
}

float3 ShadeSHNL(float3 normal)
{
float3 indirect;
indirect.r = NonlinearSH(unity_SHAr.w, unity_SHAr.xyz, normal);
indirect.g = NonlinearSH(unity_SHAg.w, unity_SHAg.xyz, normal);
indirect.b = NonlinearSH(unity_SHAb.w, unity_SHAb.xyz, normal);
return max(0, indirect);
}

void OpenLitShadeSH9ToonDouble(float3 lightDirection, out float3 shMax, out float3 shMin)
{
#if !defined(LIGHTMAP_ON)
float3 N = lightDirection * 0.666666;
float4 vB = N.xyzz * N.yzzx;
float3 res = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
res.r += dot(unity_SHBr, vB);
res.g += dot(unity_SHBg, vB);
res.b += dot(unity_SHBb, vB);
res += unity_SHC.rgb * (N.x * N.x - N.y * N.y);
float3 l1;
l1.r = dot(unity_SHAr.rgb, N);
l1.g = dot(unity_SHAg.rgb, N);
l1.b = dot(unity_SHAb.rgb, N);
shMax = res + l1;
shMin = res - l1;
#if defined(UNITY_COLORSPACE_GAMMA)
shMax = LinearToGammaSpace(shMax);
shMin = LinearToGammaSpace(shMin);
#endif 
#else 
shMax = 0.0;
shMin = 0.0;
#endif 
}

float3 GetUniversalIndirectLight(float3 normal)
{
float3 indirectColor = float3(0, 0, 0);
#if defined(UNITY_PASS_FORWARDBASE)
indirectColor = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
#if defined(LIGHTMAP_ON)
float3 indirectBaked = DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, FragData.lightmapUV));
#if defined(DIRLIGHTMAP_COMBINED)
float3 combinedBaked = DecodeDirectionalLightmap(indirectBaked, LightmapDirection, normal);
float3 directBaked = combinedBaked - indirectBaked;
indirectColor = (indirectBaked * _BakedIndirectIntensity) + (directBaked * _BakedDirectIntensity);
#else
indirectColor = indirectBaked * _BakedIndirectIntensity;
#endif
#endif
#if defined(DYNAMICLIGHTMAP_ON)
#if defined(DIRLIGHTMAP_COMBINED)
indirectColor += DecodeDirectionalLightmap(DynamicLightmap, DynamicLightmapDirection, normal);
#else
indirectColor += DynamicLightmap;
#endif
#endif
#endif
return indirectColor;
}

void GetBacklaceLightColor(inout BacklaceLightData lightData, float3 normal)
{
#if defined(UNITY_PASS_FORWARDBASE)
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = GetUniversalIndirectLight(normal);
lightData.directColor = lerp(GetSHLength(), lightData.directColor, .75);
if (any(_WorldSpaceLightPos0.xyz) == 0 || _LightColor0.a < 0.01)
{
#if defined(_BACKLACE_TOON)
lightData.directColor = lightData.indirectColor;
lightData.indirectColor = 0;
#endif 
}
#else 
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = 0;
#endif
}

void GetPoiyomiLightColor(inout BacklaceLightData lightData, float3 normal)
{
#if defined(UNITY_PASS_FORWARDBASE)
float3 ambientMagic = max(BetterSH9(normalize(unity_SHAr + unity_SHAg + unity_SHAb)), 0);
float3 normalLight = _LightColor0.rgb + BetterSH9(float4(0, 0, 0, 1));
float magicLuma = GetLuma(ambientMagic);
float normalLuma = GetLuma(normalLight);
float totalLuma = magicLuma + normalLuma;
if (totalLuma > 0.0001)
{
float magicRatio = magicLuma / totalLuma;
float normalRatio = normalLuma / totalLuma;
float targetLuma = GetLuma(ambientMagic * magicRatio + normalLight * normalRatio);
float3 properLightColor = ambientMagic + normalLight;
float properLuminance = GetLuma(properLightColor);
lightData.directColor = properLightColor * max(0.0001, (targetLuma / properLuminance));
}
else
{
lightData.directColor = float3(0, 0, 0);
}
lightData.indirectColor = GetUniversalIndirectLight(normal);
bool lightExists = any(_WorldSpaceLightPos0.xyz) && _LightColor0.a > 0.01;
#if defined(_BACKLACE_TOON)
if (!lightExists > 0)
{
lightData.directColor = lightData.indirectColor;
lightData.indirectColor = 0;
}
#endif 
#else 
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = 0;
#endif
}

void GetOpenLitLightColor(inout BacklaceLightData lightData, float3 normal)
{
#if defined(UNITY_PASS_FORWARDBASE)
float3 directSH, indirectSH_OpenLit;
OpenLitShadeSH9ToonDouble(normal, directSH, indirectSH_OpenLit);
lightData.directColor = directSH + _LightColor0.rgb;
lightData.indirectColor = GetUniversalIndirectLight(normal);
bool lightExists = any(_WorldSpaceLightPos0.xyz) && _LightColor0.a > 0.01;
#if defined(_BACKLACE_TOON)
if (!lightExists)
{
lightData.directColor = lightData.indirectColor;
lightData.indirectColor = 0;
}
#endif 
#else 
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = 0;
#endif
}

void GetStandardLightColor(inout BacklaceLightData lightData, float3 normal)
{
#if defined(UNITY_PASS_FORWARDBASE)
bool lightExists = any(_WorldSpaceLightPos0.xyz) && _LightColor0.a > 0.01;
lightData.indirectColor = GetUniversalIndirectLight(normal);
if (lightExists)
{
lightData.directColor = _LightColor0.rgb;
}
else
{
lightData.directColor = float3(0, 0, 0);
}
#if defined(_BACKLACE_TOON)
if (!lightExists)
{
lightData.directColor = lightData.indirectColor;
lightData.indirectColor = 0;
}
#endif 
#else 
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = 0;
#endif
}

void GetMochieLightColor(inout BacklaceLightData lightData, float3 normal)
{
#if defined(UNITY_PASS_FORWARDBASE)
bool lightExists = any(_WorldSpaceLightPos0.xyz);
lightData.indirectColor = GetUniversalIndirectLight(normal);
if (lightExists)
{
lightData.directColor = _LightColor0.rgb;
}
else
{
lightData.directColor = ShadeSHNL(normal);
}
if (!lightExists || _LightColor0.a < 0.01)
{
#if defined(_BACKLACE_TOON)
lightData.directColor = lightData.indirectColor;
lightData.indirectColor = 0;
#endif 
}
#else 
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = 0;
#endif
}

float3 GetBacklaceLightDirection()
{
return normalize(UnityWorldSpaceLightDir(FragData.worldPos));
}

float3 GetForcedWorldLightDirection()
{
return normalize(_ForcedLightDirection.xyz);
}

float3 GetViewLightDirection()
{
float3 viewLightDirection = -UNITY_MATRIX_V[2].xyz;
viewLightDirection += UNITY_MATRIX_V[0].xyz * _ViewDirectionOffsetX; 
viewLightDirection += UNITY_MATRIX_V[1].xyz * _ViewDirectionOffsetY; 
return normalize(viewLightDirection);
}

float3 LimitLightBrightness(float3 lightColor, float minVal, float maxVal)
{

float brightness = max(lightColor.r, max(lightColor.g, lightColor.b));

if (brightness > 0.0001)
{
float newBrightness = clamp(brightness, minVal, maxVal);
float scale = newBrightness / brightness;
return lightColor * scale;
}
return lightColor;
}

void GetForwardAddLightData(out BacklaceLightData lightData)
{
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = float3(0, 0, 0);
lightData.direction = normalize(_WorldSpaceLightPos0.xyz - FragData.worldPos.xyz * _WorldSpaceLightPos0.w);
#if defined(POINT) || defined(POINT_COOKIE)
unityShadowCoord3 lightCoord = mul(unity_WorldToLight, float4(FragData.worldPos, 1)).xyz;
lightData.attenuation = tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
#if defined(POINT_COOKIE)
lightData.attenuation *= texCUBE(_LightTexture0, lightCoord).w;
#endif
#elif defined(SPOT)
unityShadowCoord4 lightCoord = mul(unity_WorldToLight, float4(FragData.worldPos, 1));
lightData.attenuation = (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
#else
UNITY_LIGHT_ATTENUATION(atten, FragData, FragData.worldPos);
lightData.attenuation = atten;
#endif
lightData.attenuation *= UNITY_SHADOW_ATTENUATION(FragData, FragData.worldPos);
}

void GetLightData(inout BacklaceSurfaceData Surface)
{
BacklaceLightData lightData;
#if defined(UNITY_PASS_FORWARDBASE)
UNITY_LIGHT_ATTENUATION(attenuation, FragData, FragData.worldPos);
lightData.attenuation = FadeShadows(FragData, attenuation);
switch(_LightingDirectionMode)
{
case 1: lightData.direction = GetForcedWorldLightDirection(); break;
case 2: lightData.direction = GetViewLightDirection(); break;
case 0: default: lightData.direction = GetBacklaceLightDirection(); break;
}
if (any(_WorldSpaceLightPos0.xyz) == 0 || _LightColor0.a < 0.01)
{
lightData.direction = normalize(unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz);
}
Surface.LightDir = lightData.direction;
Surface.HalfDir = Unity_SafeNormalize(Surface.LightDir + Surface.ViewDir);
switch(_LightingColorMode)
{
case 1: GetPoiyomiLightColor(lightData, Surface.NormalDir); break;
case 2: GetOpenLitLightColor(lightData, Surface.NormalDir); break;
case 3: GetStandardLightColor(lightData, Surface.NormalDir); break;
case 4: GetMochieLightColor(lightData, Surface.NormalDir); break;
case 0: default: GetBacklaceLightColor(lightData, Surface.NormalDir); break;
}
#else 
GetForwardAddLightData(lightData);
Surface.LightDir = lightData.direction;
Surface.HalfDir = Unity_SafeNormalize(Surface.LightDir + Surface.ViewDir);
switch(_LightingColorMode)
{
case 1: GetPoiyomiLightColor(lightData, Surface.NormalDir); break;
case 2: GetOpenLitLightColor(lightData, Surface.NormalDir); break;
case 3: GetStandardLightColor(lightData, Surface.NormalDir); break;
case 4: GetMochieLightColor(lightData, Surface.NormalDir); break;
case 0: default: GetBacklaceLightColor(lightData, Surface.NormalDir); break;
}
#endif

float3 finalDirectColor = lightData.directColor;
float3 finalIndirectColor = lightData.indirectColor;

#if defined(UNITY_PASS_FORWARDBASE)
finalDirectColor *= _DirectIntensity;
finalIndirectColor *= _IndirectIntensity;
if (_EnableBaseLightLimit == 1)
{
finalDirectColor = LimitLightBrightness(finalDirectColor, _BaseLightMin, _BaseLightMax);
finalIndirectColor = LimitLightBrightness(finalIndirectColor, _BaseLightMin, _BaseLightMax);
}
#else 
finalDirectColor *= _AdditiveIntensity;
if (_EnableAddLightLimit == 1)
{
finalDirectColor = LimitLightBrightness(finalDirectColor, _AddLightMin, _AddLightMax);
}
#endif 

float3 combinedLight = finalDirectColor;
if (_GreyscaleLighting != 0)
{
float luma = GetLuma(combinedLight);
combinedLight = lerp(combinedLight, float3(luma, luma, luma), _GreyscaleLighting);
}
if (_ForceLightColor != 0)
{
combinedLight = lerp(combinedLight, _ForcedLightColor.rgb, _ForceLightColor);
}

Surface.LightColor = float4(combinedLight, lightData.attenuation);
Surface.SpecLightColor = Surface.LightColor;
Surface.IndirectDiffuse = finalIndirectColor;
}
#endif 




#ifndef BACKLACE_EFFECTS_CGINC
#define BACKLACE_EFFECTS_CGINC

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD)
#if defined(_BACKLACE_DISSOLVE)

void ApplyDissolve(inout BacklaceSurfaceData Surface, FragmentData i)
{
float dissolveMapValue = GetDissolveMapValue(i.worldPos, i.vertex.xyz, Surface.NormalDir);
float halfWidth = max(_DissolveEdgeWidth, 0.0001) * 0.5;
if (_DissolveEdgeMode == 0) 
{
float fadeIn = smoothstep(0.0, halfWidth, _DissolveProgress);
float fadeOut = 1.0 - smoothstep(1.0 - halfWidth, 1.0, _DissolveProgress);
float masterIntensity = fadeIn * fadeOut;
float distanceFromLine = abs(dissolveMapValue - _DissolveProgress);
float baseGradient = 1.0 - smoothstep(0, halfWidth, distanceFromLine);
float hardnessPower = lerp(1.0, 16.0, _DissolveEdgeSharpness);
float edgeGlow = pow(baseGradient, hardnessPower);
edgeGlow *= masterIntensity;
float surfaceAlpha = step(_DissolveProgress, dissolveMapValue);
Surface.FinalColor.rgb += _DissolveEdgeColor.rgb * edgeGlow * _DissolveEdgeColor.a;
Surface.FinalColor.a = max(surfaceAlpha, edgeGlow * _DissolveEdgeColor.a);
}
else 
{
float startEdge = _DissolveProgress - halfWidth;
float endEdge = _DissolveProgress + halfWidth;
float alpha = saturate(smoothstep(startEdge, endEdge, dissolveMapValue));
Surface.FinalColor.a = alpha;
}
}
#endif 
#endif 

#if defined(_BACKLACE_POST_PROCESSING)
UNITY_DECLARE_TEX2D(_ColorGradingLUT);
float4 _RGBColor;
float _RGBBlendMode;
float _HSVMode;
float _HSVHue;
float _HSVSaturation;
float _HSVValue;
float _ToggleHueShift;
float _HueShift;
float _ToggleAutoCycle;
float _AutoCycleSpeed;
float _ColorGradingIntensity;
float _BlackAndWhite;
float _Brightness;
void ApplyPostProcessing(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 finalColor = Surface.FinalColor.rgb;

float3 tintedColor = lerp(finalColor * _RGBColor.rgb, _RGBColor.rgb, _RGBBlendMode);
finalColor = tintedColor;

float3 hsv = RGBtoHSV(finalColor);
[branch] if (_HSVMode == 1) 
{
hsv.x = frac(hsv.x + _HSVHue);
hsv.y += _HSVSaturation - 1.0;
hsv.z += _HSVValue - 1.0;
}
else if (_HSVMode == 2) 
{
hsv.x = frac(hsv.x + _HSVHue);
hsv.y *= _HSVSaturation;
hsv.z *= _HSVValue;
}
finalColor = HSVtoRGB(saturate(hsv));

[branch] if (_ToggleHueShift > 0)
{
#if defined(_BACKLACE_AUDIOLINK)
finalColor = ApplyHueShift(finalColor, _HueShift + i.alChannel1.z, _ToggleAutoCycle, _AutoCycleSpeed);
#else 
finalColor = ApplyHueShift(finalColor, _HueShift, _ToggleAutoCycle, _AutoCycleSpeed);
#endif 
}

[branch] if (_ColorGradingIntensity > 0)
{
float3 gradedColor = UNITY_SAMPLE_TEX2D(_ColorGradingLUT, finalColor.rg).rgb;
finalColor = lerp(finalColor, gradedColor, _ColorGradingIntensity);
}

[branch] if (_BlackAndWhite > 0)
{
float luma = GetLuma(finalColor);
finalColor = lerp(finalColor, float3(luma, luma, luma), _BlackAndWhite);
}

finalColor *= _Brightness;
Surface.FinalColor.rgb = finalColor;
}
#endif 

#if defined(_BACKLACE_DETAIL)
UNITY_DECLARE_TEX2D(_DetailAlbedoMap);
UNITY_DECLARE_TEX2D(_DetailNormalMap);
float _DetailMap_UV;
float _DetailTiling;
float _DetailNormalStrength;
void ApplyDetailMaps(inout BacklaceSurfaceData Surface)
{
float2 detailUV = Uvs[_DetailMap_UV] * _DetailTiling;
float4 detailAlbedo = UNITY_SAMPLE_TEX2D(_DetailAlbedoMap, detailUV);
Surface.Albedo.rgb *= detailAlbedo.rgb * 2 * detailAlbedo.a;
float3 detailNormalTS = UnpackScaleNormal(UNITY_SAMPLE_TEX2D(_DetailNormalMap, detailUV), _DetailNormalStrength);
float3 baseNormalTS = NormalMap;
NormalMap = normalize(float3(baseNormalTS.xy + detailNormalTS.xy, baseNormalTS.z * detailNormalTS.z));
}
#endif 

#if defined(_BACKLACE_SSS)
float _ThicknessMap_UV;
float4 _SSSColor;
float _SSSStrength;
float _SSSPower;
float _SSSDistortion;
UNITY_DECLARE_TEX2D(_SSSThicknessMap);
float _SSSThickness;
void ApplySubsurfaceScattering(inout BacklaceSurfaceData Surface)
{
float thickness = UNITY_SAMPLE_TEX2D(_SSSThicknessMap, Uvs[_ThicknessMap_UV]).r * _SSSThickness;
float3 scatterDir = normalize(Surface.LightDir + Surface.NormalDir * _SSSDistortion);
float scatterDot = dot(Surface.ViewDir, -scatterDir);
scatterDot = saturate(scatterDot);
float scatterFalloff = pow(scatterDot, _SSSPower);
float3 sss = Surface.LightColor.rgb * _SSSColor.rgb * scatterFalloff * _SSSStrength * thickness;
Surface.Diffuse += sss;
}
#endif 

#if defined(_BACKLACE_PARALLAX)
UNITY_DECLARE_TEX2D(_ParallaxMap);
float _ParallaxMap_UV;
float _ParallaxStrength;
float _ParallaxMode;
float _ParallaxSteps;
#if defined(_BACKLACE_PARALLAX_SHADOWS)
float ParallaxShadow;
float _ParallaxShadowSteps;
float _ParallaxShadowStrength;
#endif 
void ApplyParallax_Fast(inout float2 uv, in BacklaceSurfaceData Surface)
{
float height = UNITY_SAMPLE_TEX2D(_ParallaxMap, uv).r;
float3 viewDirTS = float3(dot(Surface.ViewDir, Surface.TangentDir), dot(Surface.ViewDir, Surface.BitangentDir), 0);
float2 offset = viewDirTS.xy * (height * _ParallaxStrength);
uv -= offset;
}
void ApplyParallax_Fancy(inout float2 uv, inout BacklaceSurfaceData Surface)
{
float3 viewDirTS = float3(dot(Surface.ViewDir, Surface.TangentDir), dot(Surface.ViewDir, Surface.BitangentDir), dot(Surface.ViewDir, Surface.NormalDir));
float numSteps = _ParallaxSteps;
float stepSize = 1.0 / numSteps;
float2 step = -viewDirTS.xy * _ParallaxStrength * stepSize;
float currentHeight = 1.0;
float2 currentUVOffset = 0;
float surfaceHeight = 1.0;
[loop] for (int i = 0; i < numSteps; i++)
{
currentHeight -= stepSize;
currentUVOffset += step;
surfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + currentUVOffset, 0).r;
if (surfaceHeight > currentHeight)
{
currentUVOffset -= step;
currentHeight += stepSize;
float prevSurfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + currentUVOffset, 0).r;
float distanceToSurface = currentHeight - surfaceHeight;
float distanceBetweenSamples = surfaceHeight - prevSurfaceHeight;
currentUVOffset += step * (distanceToSurface / max(distanceBetweenSamples, 0.001));
uv += currentUVOffset;
surfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv, 0).r;
break;
}
}
#if defined(_BACKLACE_PARALLAX_SHADOWS)
ParallaxShadow = 1.0;
float3 lightDirTS = float3(dot(Surface.LightDir, Surface.TangentDir), dot(Surface.LightDir, Surface.BitangentDir), dot(Surface.LightDir, Surface.NormalDir));
float shadowSteps = _ParallaxShadowSteps;
float shadowStepSize = 1.0 / shadowSteps;
float2 shadowStep = lightDirTS.xy * _ParallaxStrength * shadowStepSize;
float shadowRayHeight = surfaceHeight + shadowStepSize;
[loop] for (int j = 0; j < shadowSteps; j++)
{
float shadowSampleHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + shadowStep * j, 0).r;
if (shadowSampleHeight > shadowRayHeight)
{
ParallaxShadow = 0.0;
break;
}
shadowRayHeight += shadowStepSize;
}
ParallaxShadow = lerp(1.0, ParallaxShadow, _ParallaxShadowStrength);
#endif 
}
#endif 

#if defined(_BACKLACE_CUBEMAP)
samplerCUBE _CubemapTex;
float4 _CubemapTint;
float _CubemapIntensity;
int _CubemapBlendMode;
void ApplyCubemap(inout BacklaceSurfaceData Surface)
{
float3 cubemapColor = texCUBE(_CubemapTex, Surface.ReflectDir).rgb * _CubemapTint.rgb;
float intensity = _CubemapIntensity;
switch(_CubemapBlendMode)
{
case 0: 
Surface.FinalColor.rgb += cubemapColor * intensity;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * cubemapColor, intensity);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, cubemapColor, intensity);
break;
}
}
#endif 

#if defined(_BACKLACE_MATCAP)
UNITY_DECLARE_TEX2D(_MatcapTex);
UNITY_DECLARE_TEX2D(_MatcapMask);
float4 _MatcapTex_ST;
float _MatcapIntensity;
float3 _MatcapTint;
float _MatcapSmoothnessEnabled;
float _MatcapSmoothness;
float _MatcapMask_UV;
int _MatcapBlendMode;
void ApplyMatcap(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 matcapColor;
[branch] if (_MatcapSmoothnessEnabled == 1)
{

float mipLevel = _MatcapSmoothness * 10.0;
matcapColor = UNITY_SAMPLE_TEX2D_LOD(_MatcapTex, i.matcapUV, mipLevel).rgb;
}
else
{
matcapColor = UNITY_SAMPLE_TEX2D(_MatcapTex, i.matcapUV).rgb;
}
matcapColor *= _MatcapTint.rgb;
float mask = UNITY_SAMPLE_TEX2D(_MatcapMask, Uvs[_MatcapMask_UV]).r;
float finalMatcapIntensity = _MatcapIntensity;
#if defined(_BACKLACE_AUDIOLINK)
finalMatcapIntensity *= i.alChannel1.w;
#endif 
float3 finalMatcap = matcapColor * finalMatcapIntensity * mask;
switch(_MatcapBlendMode)
{
case 0: 
Surface.FinalColor.rgb += finalMatcap;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * matcapColor, mask * _MatcapIntensity);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, matcapColor * _MatcapIntensity, mask);
break;
}
}
#endif 

#if defined(_BACKLACE_RIMLIGHT)
float3 Rimlight;
float4 _RimColor;
float _RimWidth;
float _RimIntensity;
float _RimLightBased;
void CalculateRimlight(inout BacklaceSurfaceData Surface)
{
float fresnel = 1 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
fresnel = pow(fresnel, _RimWidth);
[branch] if (_RimLightBased > 0)
{
fresnel *= Surface.NdotL;
}
Rimlight = fresnel * _RimColor.rgb * _RimIntensity;
}
#endif 

#if defined(_BACKLACE_CLEARCOAT)
UNITY_DECLARE_TEX2D(_ClearcoatMap);
float4 _ClearcoatMap_ST;
float _ClearcoatStrength;
float _ClearcoatRoughness;
float _ClearcoatReflectionStrength;
float _ClearcoatMap_UV;
float4 _ClearcoatColor;
void CalculateClearcoat(inout BacklaceSurfaceData Surface, out float3 highlight, out float3 occlusion)
{
float4 clearcoatMap = UNITY_SAMPLE_TEX2D(_ClearcoatMap, Uvs[_ClearcoatMap_UV]);
float mask = _ClearcoatStrength * clearcoatMap.r;
float roughness = _ClearcoatRoughness * clearcoatMap.g;
float3 F0 = lerp(0.04, 1.0, _ClearcoatReflectionStrength);
float3 fresnel = FresnelTerm(F0, Surface.LdotH);
float squareRoughness = max(roughness * roughness, 0.002);
float distribution = GTR2(Surface.NdotH, squareRoughness);
float geometry = smithG_GGX(Surface.NdotL, squareRoughness) * smithG_GGX(Surface.NdotV, squareRoughness);
float3 clearcoatSpec = fresnel * distribution * geometry;
highlight = clearcoatSpec * lerp(Surface.LightColor.rgb, Surface.LightColor.rgb * _ClearcoatColor.rgb, _ClearcoatColor.a) * mask;
float3 occlusionTint = lerp(1.0, _ClearcoatColor.rgb, fresnel);
occlusion = lerp(1.0, occlusionTint, mask);
}
#if defined(_BACKLACE_VERTEX_SPECULAR) && defined(VERTEXLIGHT_ON)
void AddClearcoatVertex(inout BacklaceSurfaceData Surface)
{
float3 VLightDir = normalize(VertexLightDir);
if (dot(VLightDir, VLightDir) < 0.01) return;
float3 F0 = lerp(0.04, 1.0, _ClearcoatReflectionStrength);
float3 fresnel = FresnelTerm(F0, saturate(dot(normalize(VLightDir + Surface.ViewDir), VLightDir)));
float roughness = _ClearcoatRoughness; 
float squareRoughness = max(roughness * roughness, 0.002);
float distribution = GTR2(saturate(dot(Surface.NormalDir, normalize(VLightDir + Surface.ViewDir))), squareRoughness);
float geometry = smithG_GGX(saturate(dot(Surface.NormalDir, VLightDir)), squareRoughness) * smithG_GGX(Surface.NdotV, squareRoughness);
float3 clearcoatV_Spec = fresnel * distribution * geometry;
Surface.FinalColor.rgb += clearcoatV_Spec * Surface.VertexDirectDiffuse * _ClearcoatColor.rgb * _ClearcoatStrength;
}
#endif 
#endif 

#if defined(_BACKLACE_DEPTH_RIMLIGHT)
#ifndef BACKLACE_DEPTH
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif 
float4 _DepthRimColor;
float _DepthRimWidth;
float _DepthRimThreshold;
float _DepthRimSharpness;
int _DepthRimBlendMode;

static const int2 sobelPoints[9] = {
int2(-1, -1), int2(0, -1), int2(1, -1),
int2(-1, 0), int2(0, 0), int2(1, 0),
int2(-1, 1), int2(0, 1), int2(1, 1)
};

float ScaleRimWidth(float z) {
float scale = 1.0 / z;
return _DepthRimWidth * 50.0 / _ScreenParams.y * scale;
}
void ApplyDepthRim(inout BacklaceSurfaceData Surface, FragmentData i)
{
float sceneDepthRaw = tex2D(_CameraDepthTexture, float2(i.scrPos.xy / i.scrPos.w)).r;
float sceneDepthLinear = LinearEyeDepth(sceneDepthRaw);
float modelDepthLinear = i.scrPos.w;;
float depthStatus = 0;
[unroll(9)]
for (int idx = 0; idx < 9; idx++)
{
float2 offset = sobelPoints[idx] * ScaleRimWidth(modelDepthLinear);
float sampleDepthRaw = tex2D(_CameraDepthTexture, float2(i.scrPos.xy / i.scrPos.w) + offset).r;
float sampleDepthLinear = LinearEyeDepth(sampleDepthRaw);
depthStatus += step(modelDepthLinear + _DepthRimThreshold, sampleDepthLinear);
}
float edgeFactor = depthStatus / 9.0;
edgeFactor = pow(edgeFactor, _DepthRimSharpness);
float rimIntensity = edgeFactor * _DepthRimColor.a;
switch(_DepthRimBlendMode)
{
case 0: 
Surface.FinalColor.rgb += _DepthRimColor.rgb * rimIntensity;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, _DepthRimColor.rgb, rimIntensity);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * _DepthRimColor.rgb, rimIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_PATHING)
UNITY_DECLARE_TEX2D(_PathingMap);
float2 _PathingMap_ST;
float4 _PathingColor;
float _PathingEmission;
int _PathingType;
float _PathingSpeed;
float _PathingWidth;
float _PathingSoftness;
float _PathingOffset;
float _PathingMap_UV;
float _PathingScale;
int _PathingBlendMode;
int _PathingMappingMode;
int _PathingColorMode;
float4 _PathingColor2;
UNITY_DECLARE_TEX2D(_PathingTexture);
float _PathingTexture_UV;
void ApplyPathing(inout BacklaceSurfaceData Surface, FragmentData i)
{
float pathValue;
if (_PathingMappingMode == 0) 
{
pathValue = UNITY_SAMPLE_TEX2D(_PathingMap, frac(Uvs[_PathingMap_UV] * _PathingScale)).r;
}
else 
{
pathValue = SampleTextureTriplanar(
_PathingMap, sampler_PathingMap,
FragData.worldPos, Surface.NormalDir,
float3(0, 0, 0), _PathingScale, float3(0, 0, 0),
2.0, true, float2(0, 0)
).r;
}
float pathTime = frac(_Time.y * _PathingSpeed + _PathingOffset);
float pathAlpha = 0;
switch(_PathingType)
{
case 1: 
pathAlpha = 1.0 - saturate(abs(pathTime - pathValue) / _PathingWidth);
break;
case 2: 
float loop_dist = abs(pathTime - pathValue);
loop_dist = min(loop_dist, 1.0 - loop_dist);
pathAlpha = 1.0 - saturate(loop_dist / _PathingWidth);
break;
case 3: 
pathTime = 1.0 - abs(1.0 - 2.0 * pathTime); 
pathAlpha = 1.0 - saturate(abs(pathTime - pathValue) / _PathingWidth);
break;
case 4: 
float trail_dist = pathTime - pathValue;
pathAlpha = smoothstep(0, _PathingWidth, trail_dist) - smoothstep(_PathingWidth, _PathingWidth + 0.001, trail_dist);
break;
case 5: 
float convergeTime = abs(1.0 - 2.0 * pathTime); 
float convergeDist = abs(convergeTime - (abs(1.0 - 2.0 * pathValue)));
pathAlpha = 1.0 - saturate(convergeDist / _PathingWidth);
break;
default: 
pathAlpha = pathTime > pathValue;
break;
}
pathAlpha = smoothstep(0, _PathingSoftness, pathAlpha);
#if defined(_BACKLACE_AUDIOLINK)
pathAlpha *= i.alChannel2.x;
#endif 
if (pathAlpha <= 0.001) return;

float3 pathEmission = pathAlpha * _PathingEmission;
float pathBlend = _PathingColor.a;
switch(_PathingColorMode)
{
case 1: 
float4 pathSample = UNITY_SAMPLE_TEX2D(_PathingTexture, Uvs[_PathingTexture_UV]);
pathEmission *= pathSample.rgb;
pathBlend = pathSample.a;
break;
case 2: 
float4 pathGradinet = lerp(_PathingColor, _PathingColor2, pathValue);
pathEmission *= pathGradinet.rgb;
pathBlend = pathGradinet.a;
break;
default: 
pathEmission *= _PathingColor.rgb;
break;
}
switch(_PathingBlendMode)
{
case 0: 
Surface.FinalColor.rgb += pathEmission;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * pathEmission.rgb, pathAlpha);
break;
case 2: 
float blendIntensity = pathAlpha * pathBlend;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, pathEmission.rgb, blendIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_GLITTER)

UNITY_DECLARE_TEX2D(_GlitterMask);
UNITY_DECLARE_TEX2D(_GlitterNoiseTex);
float _Glitter_UV;
float _GlitterMask_UV;
float _ToggleGlitterRainbow;
float _GlitterMode;
float4 _GlitterTint;
float _GlitterFrequency;
float _GlitterThreshold;
float _GlitterSize;
float _GlitterFlickerSpeed;
float _GlitterBrightness;
float _GlitterContrast;
float _GlitterRainbowSpeed;

void ApplyGlitter(inout BacklaceSurfaceData Surface)
{
float3 final_glitter = 0;
float unique_flake_id = 0;
float glitter_mask = 0;
float2 uv = Uvs[_Glitter_UV] * _GlitterFrequency;
float2 i_uv = floor(uv);
float2 f_uv = frac(uv);
[branch] if (_GlitterMode == 0) 
{
float min_dist = 1.0;
float2 closest_point_id = 0;
for (int y = -1; y <= 1; y++)
{
for (int x = -1; x <= 1; x++)
{
float2 neighbor_offset = float2(x, y);
float2 point_pos = Hash2(i_uv + neighbor_offset);
float dist = length(neighbor_offset +point_pos - f_uv);
if (dist < min_dist)
{
min_dist = dist;
closest_point_id = i_uv + neighbor_offset;
}
}
}
unique_flake_id = Hash(closest_point_id);
if (unique_flake_id < _GlitterThreshold) return;
glitter_mask = saturate((_GlitterSize - min_dist) / max(fwidth(min_dist), 0.001));
}
else if (_GlitterMode == 1) 
{

float noise_val = UNITY_SAMPLE_TEX2D_LOD(_GlitterNoiseTex, i_uv / _GlitterFrequency, 0).r;
if (noise_val < _GlitterThreshold) return;
float dist_from_center = length(f_uv - 0.5);
glitter_mask = saturate((_GlitterSize - dist_from_center) / max(fwidth(dist_from_center), 0.001));
unique_flake_id = Hash(i_uv);
}
if (glitter_mask <= 0) return;
float time = _Time.y * _GlitterFlickerSpeed + unique_flake_id * 100;
float3 glitter_normal = normalize(float3(sin(time * 1.2), cos(time * 1.7), sin(time * 1.5)));
float sparkle = fastpow(saturate(dot(Surface.ViewDir, glitter_normal)), _GlitterContrast);
float3 glitter_color = _GlitterTint.rgb;
if (_ToggleGlitterRainbow > 0)
{
float rainbow_time = _Time.y * _GlitterRainbowSpeed;
glitter_color = lerp(glitter_color, Sinebow(unique_flake_id + rainbow_time), _ToggleGlitterRainbow);
}
float finalGlitterBrightness = _GlitterBrightness;
#if defined(_BACKLACE_AUDIOLINK)
finalGlitterBrightness *= i.alChannel2.y;
#endif 
final_glitter = glitter_mask * glitter_color * finalGlitterBrightness;
float mask_val = UNITY_SAMPLE_TEX2D(_GlitterMask, Uvs[_GlitterMask_UV]).r;
sparkle *= mask_val;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, final_glitter, sparkle);
}
#endif 

#if defined(_BACKLACE_DISTANCE_FADE)

float _DistanceFadeReference;
float _ToggleNearFade;
float _NearFadeMode;
float _NearFadeDitherScale;
float _NearFadeStart;
float _NearFadeEnd;
float _ToggleFarFade;
float _FarFadeStart;
float _FarFadeEnd;

void CalculateDistanceFade(FragmentData i, inout bool isNearFading, out float fade_factor)
{
fade_factor = 1.0;
float3 referencePos = _DistanceFadeReference == 1 ? i.worldObjectCenter : i.worldPos;
float view_dist = distance(referencePos, GetCameraPos());
isNearFading = false;
if (_ToggleNearFade == 1 && _NearFadeStart > _NearFadeEnd)
{
float nearFade = smoothstep(_NearFadeEnd, _NearFadeStart, view_dist);
fade_factor *= nearFade;
isNearFading = nearFade < 1.0;
}
if (_ToggleFarFade == 1 && _FarFadeEnd > _FarFadeStart)
{
float farFade = 1.0 - smoothstep(_FarFadeStart, _FarFadeEnd, view_dist);
fade_factor *= farFade;
}
}

float ApplyDistanceFadePre(bool isNearFading, float fade_factor)
{
if (_NearFadeMode == 0) { 
if (fade_factor == 0) {
return -1; 
}
}
return fade_factor; 
}

void ApplyDistanceFadePost(FragmentData i, float fade_factor, bool isNearFading, inout BacklaceSurfaceData Surface)
{
[branch] if (_NearFadeMode == 1 && isNearFading) {
float pattern = GetTiltedCheckerboardPattern(Surface.ScreenCoords * _ScreenParams.xy, _NearFadeDitherScale);
Surface.FinalColor.a *= step(fade_factor, pattern);
} else {

Surface.FinalColor.a *= fade_factor;
}
}
#endif 

#if defined(_BACKLACE_IRIDESCENCE)
UNITY_DECLARE_TEX2D(_IridescenceMask);
float _IridescenceMask_UV;
float4 _IridescenceTint;
float _IridescenceIntensity;
int _IridescenceBlendMode;
UNITY_DECLARE_TEX2D(_IridescenceRamp);
float _IridescencePower;
float _IridescenceFrequency;
float _IridescenceMode;
float _IridescenceParallax;;
void ApplyIridescence(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 shiftedNormal = normalize(Surface.NormalDir + Surface.ViewDir * _IridescenceParallax);
float fresnel_base = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
float fresnel_shifted = 1.0 - saturate(dot(shiftedNormal, Surface.ViewDir));
float interference = abs(fresnel_shifted - fresnel_base);
float3 iridescenceColor = 0;
float finalFresnel = pow(interference, _IridescencePower);
if (_IridescenceMode == 0) 
{
iridescenceColor = UNITY_SAMPLE_TEX2D(_IridescenceRamp, float2(finalFresnel, 0.5)).rgb;
}
else if (_IridescenceMode == 1) 
{
float hue = finalFresnel * _IridescenceFrequency;
iridescenceColor = Sinebow(hue);
}
float mask = UNITY_SAMPLE_TEX2D(_IridescenceMask, Uvs[_IridescenceMask_UV]).r;
float finalIridescenceIntensity = _IridescenceIntensity;
#if defined(_BACKLACE_AUDIOLINK)
finalIridescenceIntensity *= i.alChannel2.z;
#endif 
float finalIntensity = finalIridescenceIntensity * pow(fresnel_base, 2.0) * mask;
iridescenceColor *= _IridescenceTint.rgb * finalIntensity;
[branch] switch(_IridescenceBlendMode)
{
case 0: 
Surface.FinalColor.rgb += iridescenceColor;
break;
case 1: 
Surface.FinalColor.rgb = 1.0 - (1.0 - Surface.FinalColor.rgb) * (1.0 - iridescenceColor);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, iridescenceColor, finalIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_SHADOW_TEXTURE)
UNITY_DECLARE_TEX2D(_ShadowTex);
float _ShadowTex_UV;
float4 _ShadowPatternColor;
float _ShadowPatternScale;
float _ShadowTextureIntensity;
int _ShadowTextureMappingMode;
float _ShadowPatternTriplanarSharpness;
float _ShadowPatternTransparency;
int _ShadowTextureBlendMode;
float3 GetTexturedShadowColor(inout BacklaceSurfaceData Surface, float3 shadowTint)
{
float3 texturedShadow;
float blendFactor;
float3 albedoTintedShadow = shadowTint * Surface.Albedo.rgb;
float shadowMask = 1.0 - Surface.NdotL;
switch(_ShadowTextureMappingMode)
{
case 0: 
{
float4 shadowAlbedoSample = UNITY_SAMPLE_TEX2D(_ShadowTex, Uvs[_ShadowTex_UV]);
texturedShadow = shadowAlbedoSample.rgb;
blendFactor = shadowAlbedoSample.a * shadowMask;
break;
}
case 1: 
{
float2 screenUVs = frac(Surface.ScreenCoords * _ShadowPatternScale);
float4 patternSample = UNITY_SAMPLE_TEX2D(_ShadowTex, screenUVs);
texturedShadow = albedoTintedShadow;
blendFactor = patternSample.r * patternSample.a * shadowMask;
break;
}
case 2: 
{
float4 patternSample = SampleTextureTriplanar(
_ShadowTex, sampler_MainTex,
FragData.worldPos, Surface.NormalDir,
float3(0, 0, 0), _ShadowPatternScale, float3(0, 0, 0),
_ShadowPatternTriplanarSharpness, true, float2(0, 0)
);
texturedShadow = albedoTintedShadow;
blendFactor = patternSample.r * patternSample.a * shadowMask;
break;
}
}
float3 baseShadowColour = Surface.Albedo.rgb * lerp(Surface.IndirectDiffuse, 1.0, _ShadowPatternTransparency);
float3 finalShadowColor;
switch(_ShadowTextureBlendMode)
{
case 0: 
finalShadowColor = baseShadowColour + texturedShadow * blendFactor;
break;
case 1: 
finalShadowColor = lerp(baseShadowColour, baseShadowColour * texturedShadow, blendFactor);
break;
default: 
finalShadowColor = lerp(baseShadowColour, texturedShadow, blendFactor);
break;
}
float3 originalShadowColor = Surface.Albedo.rgb * Surface.IndirectDiffuse;
return lerp(originalShadowColor, finalShadowColor, _ShadowTextureIntensity);
}
float3 GetTexturedShadowColor(inout BacklaceSurfaceData Surface)
{
return GetTexturedShadowColor(Surface, _ShadowPatternColor.rgb);
}
#endif 

#if defined(_BACKLACE_FLAT_MODEL)
float _FlatModel;
float _FlatModelDepthCorrection;
float _FlatModelFacing;
float _FlatModelLockAxis;
float _FlatModelEnable;
float _FlatModeAutoflip;

void FlattenModel(inout float4 vertex, float3 normal, out float4 finalClipPos, out float3 finalWorldPos, out float3 finalWorldNormal)
{
float facingAngle = _FlatModelFacing * - UNITY_PI / 2.0;
float s, c;
sincos(facingAngle, s, c);
float3 targetFwd_object = float3(s, 0, c);
float3 camPos_object = mul(unity_WorldToObject, float4(GetCameraPos(), 1.0)).xyz;
float flipSign = sign(dot(camPos_object, targetFwd_object));
if (flipSign == 0.0) flipSign = 1.0;
if (_FlatModeAutoflip == 0) flipSign = 1.0;
float3 virtualCamDir_object = targetFwd_object * flipSign * length(camPos_object);
float3 virtualCamPos_world = mul(unity_ObjectToWorld, float4(virtualCamDir_object, 1.0)).xyz;
float3 finalCamPos_world = lerp(GetCameraPos(), virtualCamPos_world, _FlatModelLockAxis);
float3 worldObjectPivot = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
float3 billboardFwd = normalize(finalCamPos_world - worldObjectPivot);
float3 billboardUp = float3(0, 1, 0);
float3 billboardRight = normalize(cross(billboardUp, billboardFwd));
billboardUp = cross(billboardFwd, billboardRight);
float3 flattenedWorldPos = worldObjectPivot;

flattenedWorldPos += billboardRight * vertex.x;
flattenedWorldPos += billboardUp * vertex.y;
flattenedWorldPos -= billboardFwd * vertex.z * _FlatModelDepthCorrection;
float3 originalWorldPos = mul(unity_ObjectToWorld, vertex).xyz;
finalWorldPos = lerp(originalWorldPos, flattenedWorldPos, _FlatModel);
finalClipPos = UnityWorldToClipPos(float4(finalWorldPos, 1.0));
finalWorldNormal = UnityObjectToWorldNormal(normal);
}
#endif 

#if defined(_BACKLACE_WORLD_EFFECT)
UNITY_DECLARE_TEX2D(_WorldEffectTex);
float4 _WorldEffectColor;
float4 _WorldEffectDirection;
float _WorldEffectScale;
float _WorldEffectBlendSharpness;
float _WorldEffectIntensity;
int _WorldEffectBlendMode;
float3 _WorldEffectPosition;
float3 _WorldEffectRotation;
UNITY_DECLARE_TEX2D(_WorldEffectMask);
void ApplyWorldAlignedEffect(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 effectDir = normalize(_WorldEffectDirection.xyz);
float directionMask = saturate(dot(Surface.NormalDir, effectDir));
directionMask = pow(directionMask, _WorldEffectBlendSharpness);
if (directionMask <= 0.001)
{
return;
}
float4 effectSample = SampleTextureTriplanar(
_WorldEffectTex, sampler_WorldEffectTex,
i.worldPos, Surface.NormalDir,
_WorldEffectPosition, _WorldEffectScale, _WorldEffectRotation,
1.0,
true,
float2(0, 0)
);
float3 finalEffectColor = effectSample.rgb * _WorldEffectColor.rgb;
float mask = UNITY_SAMPLE_TEX2D(_WorldEffectMask, Uvs[0]).r;
float blendStrength = directionMask * effectSample.a * _WorldEffectIntensity * mask;
switch(_WorldEffectBlendMode)
{
case 1: 
Surface.FinalColor.rgb += finalEffectColor * blendStrength;
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * finalEffectColor, blendStrength);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalEffectColor, blendStrength);
break;
}
}
#endif 

#if defined(_BACKLACE_VRCHAT_MIRROR)
UNITY_DECLARE_TEX2D(_MirrorDetectionTexture);
float _MirrorDetectionTexture_UV;
float _MirrorDetectionMode; 
float _VRChatMirrorMode; 
bool IsInMirrorView()
{
if (_VRChatMirrorMode > 0.5) return true;

return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
}

#ifndef UNITY_PASS_OUTLINE

void ApplyMirrorDetectionPre(inout BacklaceSurfaceData Surface)
{
if (_MirrorDetectionMode == 0 && IsInMirrorView()) 
{
float mask = UNITY_SAMPLE_TEX2D(_MirrorDetectionTexture, Uvs[_MirrorDetectionTexture_UV]).r;
Surface.FinalColor.a *= mask;
}
}

void ApplyMirrorDetectionPost(inout BacklaceSurfaceData Surface)
{
if (_MirrorDetectionMode == 1 && IsInMirrorView()) 
{
Surface.FinalColor.a = 0;
}
else if (_MirrorDetectionMode == 2 && !IsInMirrorView()) 
{
Surface.FinalColor.a = 0;
}
}
#endif 
#endif 

#if defined(_BACKLACE_TOUCH_REACTIVE)
#ifndef BACKLACE_DEPTH 
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif 
float4 _TouchColor;
float _TouchRadius;
float _TouchHardness;
int _TouchMode; 
float _TouchRainbowSpeed;
float _TouchRainbowSpread;
void ApplyTouchReactive(inout BacklaceSurfaceData Surface, FragmentData i)
{
float sceneDepthRaw = tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.scrPos)).r;
float sceneDepthLinear = LinearEyeDepth(sceneDepthRaw);
float depthDifference = sceneDepthLinear - i.scrPos.w;
float intersect = 1.0 - smoothstep(0, _TouchRadius, depthDifference);
if (intersect <= 0) return;
intersect = fastpow(intersect, _TouchHardness);
float3 touchEffect = _TouchColor.rgb * intersect * _TouchColor.a;
switch (_TouchMode) {
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, touchEffect, intersect);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * touchEffect, intersect);
break;
case 3: 
float time = _Time.y * _TouchRainbowSpeed;
float3 rainbowColor = Sinebow(depthDifference * _TouchRainbowSpread + time);
touchEffect = rainbowColor * intersect * _TouchColor.a;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, touchEffect, intersect);
break;
default: 
Surface.FinalColor.rgb += touchEffect;
break;
}
}
#endif 

#if defined(_BACKLACE_VERTEX_DISTORTION)
int _VertexDistortionMode;
int _VertexDistortionColorMask; 
float3 _VertexDistortionStrength;
float3 _VertexDistortionSpeed;
float3 _VertexDistortionFrequency;
float _WindStrength;
float _WindSpeed;
float _WindScale;
float4 _WindDirection;
UNITY_DECLARE_TEX2D(_WindNoiseTex);
float _BreathingStrength;
float _BreathingSpeed;
void DistortVertex(inout float4 vertex, float3 worldPos, float4 vertexColor)
{
float time = _Time.y;
float3 distortion = 0;

float mask = 1.0;
switch (_VertexDistortionColorMask)
{
case 1: 
mask = vertexColor.r;
break;
case 2: 
mask = vertexColor.g;
break;
case 3: 
mask = vertexColor.b;
break;
case 4: 
mask = (vertexColor.r + vertexColor.g + vertexColor.b) / 3.0;
break;
default: 
mask = 1.0;
break;
}

switch(_VertexDistortionMode)
{
case 0: 
{
distortion.x = sin(vertex.y * _VertexDistortionFrequency.x + time * _VertexDistortionSpeed.x) * _VertexDistortionStrength.x;
distortion.y = sin(vertex.x * _VertexDistortionFrequency.y + time * _VertexDistortionSpeed.y) * _VertexDistortionStrength.y;
distortion.z = sin(vertex.x * _VertexDistortionFrequency.z + time * _VertexDistortionSpeed.z) * _VertexDistortionStrength.z;
break;
}
case 1: 
{
float offsetX = sin(vertex.x * _VertexDistortionFrequency.x) * cos(vertex.y * _VertexDistortionFrequency.x) * _VertexDistortionStrength.x;
float offsetY = cos(vertex.y * _VertexDistortionFrequency.y) * sin(vertex.z * _VertexDistortionFrequency.y) * _VertexDistortionStrength.y;
float offsetZ = sin(vertex.z * _VertexDistortionFrequency.z) * cos(vertex.x * _VertexDistortionFrequency.z) * _VertexDistortionStrength.z;
distortion = float3(offsetX, offsetY, offsetZ) * sin(time * _VertexDistortionSpeed.x); 
break;
}
case 2: 
{
float2 windUV = worldPos.xz * _WindScale + (_Time.y * _WindSpeed * _WindDirection.xz);
float noise = UNITY_SAMPLE_TEX2D_LOD(_WindNoiseTex, windUV, 0).r * 2.0 - 1.0;
float sineWave = sin(_Time.y * _WindSpeed + worldPos.x + worldPos.z);
distortion = normalize(_WindDirection.xyz) * (noise + sineWave) * _WindStrength * mask;
break;
}
case 3: 
{
float breath = (sin(_Time.y * _BreathingSpeed) + 1.0) * 0.5;
float3 localNormal = normalize(vertex.xyz);
distortion = localNormal * breath * _BreathingStrength * mask;
break;
}
}
vertex.xyz += distortion;
}
#endif 

#if defined(_BACKLACE_DITHER)
float _DitherAmount;
float _DitherScale;
float _DitherSpace;
int _Dither_UV;
void ApplyDither(inout BacklaceSurfaceData Surface, float2 worldPos, float2 uvs)
{
float2 ditherUV = 0;
switch (_DitherSpace) {
case 1: 
ditherUV = frac(worldPos) * _ScreenParams.xy;
break;
case 2: 
ditherUV = uvs * _ScreenParams.xy; 
break;
default: 
ditherUV = Surface.ScreenCoords * _ScreenParams.xy;
break;
}
float pattern = GetTiltedCheckerboardPattern(ditherUV, _DitherScale);
Surface.FinalColor.a = lerp(Surface.FinalColor.a, Surface.FinalColor.a * pattern, _DitherAmount);
}
#endif 

#if defined(_BACKLACE_PS1)
int _PS1Rounding;
float _PS1RoundingPrecision;
int _PS1Affine;
int _PS1Compression;
float _PS1CompressionPrecision;
void ApplyPS1Vertex(inout FragmentData i, in VertexData v)
{
if (_PS1Rounding == 1)
{
float4 worldPos = mul(unity_ObjectToWorld, v.vertex);
worldPos.xyz = ceil(worldPos.xyz * _PS1RoundingPrecision) / _PS1RoundingPrecision;
i.pos = mul(UNITY_MATRIX_VP, worldPos);
}
else if (_PS1Rounding == 2)
{
float4 pos = i.pos;
pos.xy /= pos.w;
pos.xy = round(pos.xy * _PS1RoundingPrecision) / _PS1RoundingPrecision;
pos.xy *= pos.w;
i.pos = pos;
}
if (_PS1Affine == 1)
{
i.affineUV = float4(v.uv.x, v.uv.y, 0, 0) * i.pos.w;
}
}
void ApplyPS1AffineUV(inout float2 uv, in FragmentData i)
{
if (_PS1Affine == 1)
{
uv = i.affineUV.xy / i.pos.w;
}
}
void ApplyPS1ColorCompression(inout float4 finalColor)
{
if (_PS1Compression == 1)
{
finalColor.rgb = floor(finalColor.rgb * _PS1CompressionPrecision) / _PS1CompressionPrecision;
}
}
#endif 

#if defined(BACKLACE_GRABPASS)
UNITY_DECLARE_SCREENSPACE_TEXTURE(_BacklaceGP);
float4 _BacklaceGP_TexelSize;

#if defined(_BACKLACE_REFRACTION)
UNITY_DECLARE_TEX2D(_RefractionMask);
float _RefractionMask_UV;
float4 _RefractionTint;
float _RefractionIOR;
float _RefractionFresnel;
UNITY_DECLARE_TEX2D(_CausticsTex);
float _CausticsTiling;
float _CausticsSpeed;
float _CausticsIntensity;
UNITY_DECLARE_TEX2D(_DistortionNoiseTex);
float _DistortionNoiseTiling;
float _DistortionNoiseStrength;
int _RefractionDistortionMode;
float _RefractionCAStrength;
float _RefractionBlurStrength;
float _RefractionOpacity;
float _RefractionMixStrength;
int _RefractionCAUseFresnel;
float _RefractionCAEdgeFade;
float _RefractionMode; 
float4 _CausticsColor;
float _RefractionBlendMode;
float _RefractionSeeThrough;
void ApplyRefraction(inout BacklaceSurfaceData Surface, FragmentData i)
{
float fresnel = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
fresnel = pow(fresnel, _RefractionFresnel);
float2 noise = (SampleTextureTriplanar(_DistortionNoiseTex, sampler_DistortionNoiseTex, i.worldPos, Surface.NormalDir, float3(0, 0, 0), _DistortionNoiseTiling, float3(0, 0, 0), 2.0, true, float2(0, 0)).rg * 2.0 - 1.0) * _DistortionNoiseStrength;
float3 distortionNormal = Surface.NormalDir + float3(noise.x, noise.y, 0);
float3 refractionVector = distortionNormal * _RefractionIOR;
float4 screenPos = i.scrPos;
float2 baseUV = screenPos.xy / screenPos.w;
float2 distortedUV = baseUV + refractionVector.xy;
float3 refractedColor = 0;
switch(_RefractionDistortionMode)
{
case 1: 
{
float caOffset = _RefractionBlurStrength;
if (_RefractionCAUseFresnel == 1)
{
float caFresnel = fastpow(fresnel, _RefractionCAEdgeFade);
caOffset *= caFresnel;
}
refractedColor.r = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV + float2(caOffset, 0)).r * _RefractionCAStrength;
refractedColor.g = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).g;
refractedColor.b = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV - float2(caOffset, 0)).b * _RefractionCAStrength;
break;
}
case 2: 
{
const int BLUR_SAMPLES = 8;
float2 blurOffset = _BacklaceGP_TexelSize.xy * _RefractionBlurStrength;
refractedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).rgb;
[unroll]
for (int i = 0; i < BLUR_SAMPLES; i++)
{
float angle = (float)i / BLUR_SAMPLES * 2.0 * UNITY_PI;
float s, c;
sincos(angle, s, c);
float2 offset = float2(c, s) * blurOffset;
refractedColor += UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV + offset).rgb;
}
refractedColor /= (BLUR_SAMPLES + 1);
break;
}
default: 
{
refractedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).rgb;
break;
}
}
float3 reflectionVector = reflect(-Surface.ViewDir, Surface.NormalDir);
float2 causticsUV = reflectionVector.xy * _CausticsTiling + (_Time.y * _CausticsSpeed);
float3 caustics = UNITY_SAMPLE_TEX2D(_CausticsTex, causticsUV).rgb * _CausticsIntensity;
float mask = UNITY_SAMPLE_TEX2D(_RefractionMask, Uvs[_RefractionMask_UV]).r;
float3 crystalColor = lerp(_RefractionTint.rgb + caustics, lerp(_RefractionTint.rgb, _CausticsColor.rgb, caustics), _RefractionBlendMode);
float3 finalColor;
switch(int(_RefractionMode))
{
case 1: 
finalColor = lerp(refractedColor, crystalColor, fresnel * _RefractionMixStrength);
break;
case 2: 
finalColor = lerp(refractedColor, crystalColor, fastpow(fresnel, _RefractionMixStrength));
break;
case 3: 
finalColor = lerp(refractedColor, crystalColor, _RefractionMixStrength);
break;
default: 
finalColor = lerp(refractedColor, crystalColor, (1.0 - fresnel) * _RefractionMixStrength);
break;
}
finalColor = lerp(finalColor, _RefractionTint.rgb, _RefractionTint.a * (1.0 - fresnel));
float finalAlpha = lerp(_RefractionTint.a, 1.0, fresnel) * mask;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalColor, finalAlpha);
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, refractedColor, _RefractionSeeThrough); 
Surface.FinalColor.a = finalAlpha * _RefractionOpacity;
}
#endif 

#if defined(_BACKLACE_SSR)
float _SSRMode;
UNITY_DECLARE_TEX2D(_SSRMask);
float4 _SSRTint;
float _SSRIntensity;
int _SSRBlendMode;
float _SSRFresnelPower;
float _SSRFresnelScale;
float _SSRFresnelBias;
float _SSRCoverage;

float _SSRParallax;
UNITY_DECLARE_TEX2D(_SSRDistortionMap);
float _SSRDistortionStrength;
float _SSRBlur;
float _SSRWorldDistortion;

int _SSRMaxSteps;
float _SSRStepSize;
float _SSREdgeFade;
float _SSRThickness;
float _SSRAdaptiveStep;
float _SSRFlipUV;
int _SSROutOfViewMode;
int _SSRCamFade;
float _SSRCamFadeStart;
float _SSRCamFadeEnd;
#ifndef BACKLACE_DEPTH
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif

float3 GetSSRMarched(inout BacklaceSurfaceData Surface, FragmentData i)
{
#if UNITY_SINGLE_PASS_STEREO
float x_min = 0.5 * unity_StereoEyeIndex;
float x_max = 0.5 + 0.5 * unity_StereoEyeIndex;
#else 
float x_min = 0.0;
float x_max = 1.0;
#endif 
float3 viewPos = mul(UNITY_MATRIX_V, float4(i.worldPos, 1.0)).xyz;
float3 viewRefl = mul((float3x3)UNITY_MATRIX_V, Surface.ReflectDir);
float3 currentRayPos = viewPos + viewRefl * (UNITY_MATRIX_P._33 * 0.1);
float3 prevRayPos = viewPos;
[loop] for (int j = 0; j < _SSRMaxSteps; j++)
{
float4 screenPos = mul(UNITY_MATRIX_P, float4(currentRayPos, 1.0));
float2 screenUV = (screenPos.xy / screenPos.w) * 0.5 + 0.5;
if (screenUV.x > x_max || screenUV.x < x_min || screenUV.y > 1.0 || screenUV.y < 0.0)
{
return 0;
}

float sceneDepth = LinearEyeDepth(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(screenPos)).r);
float rayDepth = -currentRayPos.z;
if (rayDepth > sceneDepth - _SSRThickness)
{
float4 finalClipPos = mul(UNITY_MATRIX_P, float4(currentRayPos, 1.0));
finalClipPos.y = lerp(finalClipPos.y, -finalClipPos.y + finalClipPos.w, _SSRFlipUV);
float fadeFactor = 1.0;
float2 finalUV = finalClipPos.xy / finalClipPos.w;
switch (_SSROutOfViewMode)
{
case 1: 
fadeFactor = smoothstep(x_min, x_min + 0.05, finalUV.x) * smoothstep(1.0 - x_max, 1.0 - x_max + 0.05, finalUV.x);
fadeFactor *= smoothstep(0.0, 0.05, finalUV.y) * smoothstep(1.0, 1.0 - 0.05, finalUV.y);
break;
case 2: 
if (finalUV.x < x_min || finalUV.x > x_max || finalUV.y < 0.0 || finalUV.y > 1.0) fadeFactor = 0;
break;
case 3: 
if (finalUV.x < x_min) finalUV.x = x_min + (x_min - finalUV.x);
if (finalUV.x > x_max) finalUV.x = x_max - (finalUV.x - x_max);
if (finalUV.y < 0.0) finalUV.y = -finalUV.y;
if (finalUV.y > 1.0) finalUV.y = 1.0 - (finalUV.y - 1.0);
break;
}
float3 reflection = tex2D(_BacklaceGP, finalUV).rgb;
finalUV = finalUV * 0.5 + 0.5;
float2 fade = smoothstep(0.0, _SSREdgeFade, finalUV) * (1.0 - smoothstep(1.0 - _SSREdgeFade, 1.0, finalUV));
reflection *= fade.x * fade.y * fadeFactor;
return reflection;
}

float depthDifference = sceneDepth - rayDepth;
float step = (_SSRAdaptiveStep) ? clamp(depthDifference * _SSRStepSize, 0.02, 0.5) : _SSRStepSize;
prevRayPos = currentRayPos;
currentRayPos += viewRefl * step;
}
return 0; 
}

float3 GetSSRPlanar(inout BacklaceSurfaceData Surface, FragmentData i)
{
float2 screenUV = i.scrPos.xy / i.scrPos.w;
float2 distortionUV = lerp(screenUV, i.worldPos.xy, _SSRWorldDistortion);
float2 distortionOffset = (UNITY_SAMPLE_TEX2D(_SSRDistortionMap, distortionUV).rg * 2.0 - 1.0) * _SSRDistortionStrength;
float3 viewSpaceReflection = mul((float3x3)UNITY_MATRIX_V, Surface.ReflectDir);
float parallax = _SSRParallax * saturate(1.0 - viewSpaceReflection.z);
float2 reflectionOffset = viewSpaceReflection.xy * parallax;
float2 reflectionUV = screenUV + reflectionOffset +distortionOffset;
const int SSR_BLUR_SAMPLES = 8;
float3 reflectedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, reflectionUV).rgb;
float2 blurOffset = _BacklaceGP_TexelSize.xy * _SSRBlur;
[unroll]
for (int k = 0; k < SSR_BLUR_SAMPLES; k++)
{
float angle = (float)k / SSR_BLUR_SAMPLES * 2.0 * UNITY_PI;
float s, c;
sincos(angle, s, c);
float2 offset = float2(c, s) * blurOffset;
reflectedColor += UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, reflectionUV + offset).rgb;
}
reflectedColor /= (SSR_BLUR_SAMPLES + 1);
return reflectedColor;
}

void ApplyScreenSpaceReflections(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 reflectedColor;

[branch] if (_SSRMode == 1)
{
reflectedColor = GetSSRMarched(Surface, i);
}
else
{
reflectedColor = GetSSRPlanar(Surface, i);
}

float fadeFactor = 1.0;
if (_SSRCamFade == 1)
{
float camDistance = distance(i.worldPos, GetCameraPos());
fadeFactor *= 1.0 - saturate((camDistance - _SSRCamFadeStart) / (_SSRCamFadeEnd - _SSRCamFadeStart));
}

float fresnel_base = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
float fresnel_powered = pow(fresnel_base, _SSRFresnelPower);
float fresnel = saturate(_SSRFresnelBias + fresnel_powered * _SSRFresnelScale + _SSRCoverage);
float mask = UNITY_SAMPLE_TEX2D(_SSRMask, Uvs[0]).r;
float finalStrength = fresnel * mask * _SSRIntensity * fadeFactor;
float3 finalReflection = reflectedColor * _SSRTint.rgb;
[branch] switch((int)_SSRBlendMode)
{
case 0: 
Surface.FinalColor.rgb += finalReflection * finalStrength;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalReflection, finalStrength);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * finalReflection, finalStrength);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, 1.0 - (1.0 - Surface.FinalColor.rgb) * (1.0 - finalReflection), finalStrength);
break;
}
}
#endif 
#endif 
#endif 




#ifndef BACKLACE_SHADING_CGINC
#define BACKLACE_SHADING_CGINC

void ClipAlpha(inout BacklaceSurfaceData Surface)
{
#if defined(_BLENDMODE_CUTOUT)
clip(Surface.Albedo.a - _Cutoff);
#elif defined(_BLENDMODE_FADE)
float dither = tex3D(_DitherMaskLOD, float3(FragData.pos.xy * 0.25, Surface.Albedo.a * 0.9375)).a;
clip(dither - 0.01);
#endif 
}

void SampleNormal()
{
NormalMap = UnpackScaleNormal(UNITY_SAMPLE_TEX2D_SAMPLER(_BumpMap, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _BumpMap)), _BumpScale);
}

void CalculateNormals(inout float3 normal, inout float3 tangent, inout float3 bitangent, float3 normalmap)
{
float3x3 tbn = float3x3(tangent, bitangent, normal);
normal = normalize(mul(normalmap, tbn));
tangent = normalize(cross(bitangent, normal));
bitangent = normalize(cross(normal, tangent));
}

void GetGeometryVectors(inout BacklaceSurfaceData Surface, FragmentData FragData)
{
Surface.NormalDir = normalize(FragData.normal);
Surface.TangentDir = normalize(UnityObjectToWorldDir(FragData.tangentDir.xyz));
Surface.BitangentDir = normalize(cross(Surface.NormalDir, Surface.TangentDir) * FragData.tangentDir.w * unity_WorldTransformParams.w);
[branch] if (_FlipBackfaceNormals == 1 && !Surface.IsFrontFace)
{
Surface.NormalDir *= -1;
Surface.TangentDir *= -1;
Surface.BitangentDir *= -1;
}
Surface.ViewDir = normalize(UnityWorldSpaceViewDir(FragData.worldPos));
Surface.ScreenCoords = FragData.pos.xy / _ScreenParams.xy;
}

void GetDirectionVectors(inout BacklaceSurfaceData Surface)
{
CalculateNormals(Surface.NormalDir, Surface.TangentDir, Surface.BitangentDir, NormalMap);
Surface.LightDir = normalize(UnityWorldSpaceLightDir(FragData.worldPos));
Surface.ReflectDir = reflect(-Surface.ViewDir, Surface.NormalDir);
Surface.HalfDir = Unity_SafeNormalize(Surface.LightDir + Surface.ViewDir);
}

void GetDotProducts(inout BacklaceSurfaceData Surface)
{
Surface.UnmaxedNdotL = dot(Surface.NormalDir, Surface.LightDir);
Surface.UnmaxedNdotL = min(Surface.UnmaxedNdotL, Surface.LightColor.a);
#if defined(_BACKLACE_SHADOW_MAP)
float shadowMask = UNITY_SAMPLE_TEX2D(_ShadowMap, Uvs[_ShadowMap_UV]).r;
Surface.UnmaxedNdotL -= (shadowMask * _ShadowMapIntensity);
#endif 
Surface.NdotL = max(Surface.UnmaxedNdotL, 0);
Surface.NdotV = abs(dot(Surface.NormalDir, Surface.ViewDir));
Surface.NdotH = max(dot(Surface.NormalDir, Surface.HalfDir), 0);
Surface.LdotH = max(dot(Surface.LightDir, Surface.HalfDir), 0);
}

void PremultiplyAlpha(inout BacklaceSurfaceData Surface)
{
#if defined(_BLENDMODE_PREMULTIPLY)
Surface.Albedo.rgb *= Surface.Albedo.a;
#endif
}

float DisneyDiffuse(half perceptualRoughness, inout BacklaceSurfaceData Surface)
{
float fd90 = 0.5 + 2 * Surface.LdotH * Surface.LdotH * perceptualRoughness;

float lightScatter = (1 + (fd90 - 1) * Pow5(1 - Surface.NdotL));
float viewScatter = (1 + (fd90 - 1) * Pow5(1 - Surface.NdotV));
return lightScatter * viewScatter;
}

void GetPBRDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.Diffuse = 0;
float ramp = DisneyDiffuse(Surface.Roughness, Surface) * Surface.NdotL;
#if defined(_BACKLACE_PARALLAX) && defined(_BACKLACE_PARALLAX_SHADOWS)
ramp *= ParallaxShadow;
#endif 
#if defined(_BACKLACE_LTCGI)
float2 ltcgi_lmUV = 0;
#if defined(LIGHTMAP_ON)
ltcgi_lmUV = FragData.lightmapUV;
#endif
LTCGI_Contribution(
FragData.worldPos,
Surface.NormalDir,
Surface.ViewDir,
Surface.Roughness,
ltcgi_lmUV,
Surface.IndirectDiffuse,
Surface.IndirectSpecular
);
#endif 
Surface.Diffuse = Surface.Albedo * (Surface.LightColor.rgb * Surface.LightColor.a * ramp + Surface.IndirectDiffuse);
Surface.Attenuation = ramp;
#if defined(_BACKLACE_SHADOW_TEXTURE)
float3 litColor = Surface.Diffuse;
float3 shadowColor = GetTexturedShadowColor(Surface);
Surface.Diffuse = lerp(shadowColor, litColor, Surface.Attenuation);
#endif 
}

void Shade4PointLights(float3 normal, float3 worldPos, out float3 color, out float3 direction)
{
float4 toLightX = unity_4LightPosX0 - worldPos.x;
float4 toLightY = unity_4LightPosY0 - worldPos.y;
float4 toLightZ = unity_4LightPosZ0 - worldPos.z;
float4 lengthSq = 0;
lengthSq += toLightX * toLightX;
lengthSq += toLightY * toLightY;
lengthSq += toLightZ * toLightZ;
float4 ndl = 0;
ndl += toLightX * normal.x;
ndl += toLightY * normal.y;
ndl += toLightZ * normal.z;
float4 corr = rsqrt(lengthSq);
ndl = max(0, ndl * corr);
float4 atten = 1.0 / (1.0 + lengthSq * unity_4LightAtten0);
float4 diff = ndl * atten;
color = 0;
color += unity_LightColor[0].rgb * diff.x;
color += unity_LightColor[1].rgb * diff.y;
color += unity_LightColor[2].rgb * diff.z;
color += unity_LightColor[3].rgb * diff.w;
direction = 0;
#if defined(_BACKLACE_SPECULAR) && defined(_BACKLACE_VERTEX_SPECULAR)
direction += (float3(toLightX.x, toLightY.x, toLightZ.x) * corr.x) * dot(unity_LightColor[0].rgb, 1) * diff.x;
direction += (float3(toLightX.y, toLightY.y, toLightZ.y) * corr.y) * dot(unity_LightColor[1].rgb, 1) * diff.y;
direction += (float3(toLightX.z, toLightY.z, toLightZ.z) * corr.z) * dot(unity_LightColor[2].rgb, 1) * diff.z;
direction += (float3(toLightX.w, toLightY.w, toLightZ.w) * corr.w) * dot(unity_LightColor[3].rgb, 1) * diff.w;
#endif 
}

#if defined(_BACKLACE_TOON)

void ApplyAmbientGradient(inout BacklaceSurfaceData Surface)
{
[branch] if (_ToggleAmbientGradient == 1) {
float3 worldNormal = normalize(FragData.normal);
float updownGradient = worldNormal.y * 0.5 + 0.5; 
float skyMask = smoothstep(_AmbientSkyThreshold, 1.0, updownGradient);
float groundMask = smoothstep(_AmbientGroundThreshold, 0.0, updownGradient);
float3 skyGradientColor = _AmbientUp.rgb * skyMask;
float3 groundGradientColor = _AmbientDown.rgb * groundMask;
Surface.Diffuse += (skyGradientColor + groundGradientColor) * _AmbientIntensity;
}
}

void ApplyAreaTint(inout BacklaceSurfaceData Surface)
{
[branch] if (_TintMaskSource != 0)
{
float finalMask;
switch(_TintMaskSource)
{
case 2: 
{
float rawMask = Surface.UnmaxedNdotL * 0.5 + 0.5;
finalMask = smoothstep(_ShadowThreshold, max(_ShadowThreshold, _LitThreshold), rawMask);
break;
}
case 1: 
{
finalMask = Surface.UnmaxedNdotL * 0.5 + 0.5;
break;
}
default: 
{
finalMask = Surface.Attenuation;
break;
}
}
float shadowInfluence = (1 - finalMask) * _ShadowTint.a;
Surface.Diffuse.rgb = lerp(Surface.Diffuse.rgb, Surface.Diffuse.rgb * _ShadowTint.rgb, shadowInfluence);
float litInfluence = finalMask * _LitTint.a;
Surface.Diffuse.rgb = lerp(Surface.Diffuse.rgb, Surface.Diffuse.rgb * _LitTint.rgb, litInfluence);
}
}
#if defined(_ANIMEMODE_RAMP)

float4 RampDotL(inout BacklaceSurfaceData Surface)
{
float offset = _RampOffset + (Surface.Occlusion * _OcclusionOffsetIntensity) - _OcclusionOffsetIntensity;
float newMin = max(offset, 0);
float newMax = max(offset +1, 0);
float rampUv = remap(Surface.UnmaxedNdotL, -1, 1, newMin, newMax);
float3 ramp = UNITY_SAMPLE_TEX2D(_Ramp, float2(rampUv, rampUv)).rgb;
ramp *= _RampColor.rgb;
float intensity = max(_ShadowIntensity, 0.001);
ramp = remap(ramp, float3(0, 0, 0), float3(1, 1, 1), 1 - intensity, float3(1, 1, 1));
float3 rmin = remap(_RampMin, 0, 1, 1 - intensity, 1);
float3 rampA = remap(ramp, rmin, 1, 0, 1);
float rampGrey = max(max(rampA.r, rampA.g), rampA.b);
#if defined(DIRECTIONAL) || defined(DIRECTIONAL_COOKIE)
return float4(ramp, rampGrey);
#else 
return float4(rampA, rampGrey);
#endif 
}

void RampDotLVertLight(float3 normal, float3 worldPos, float occlusion, out float3 color, out float3 direction)
{

float4 toLightX = unity_4LightPosX0 - worldPos.x;
float4 toLightY = unity_4LightPosY0 - worldPos.y;
float4 toLightZ = unity_4LightPosZ0 - worldPos.z;
float4 lengthSq = 0;
lengthSq += toLightX * toLightX;
lengthSq += toLightY * toLightY;
lengthSq += toLightZ * toLightZ;
float4 ndl = 0;
ndl += toLightX * normal.x;
ndl += toLightY * normal.y;
ndl += toLightZ * normal.z;

float4 corr = rsqrt(lengthSq);
ndl = ndl * corr;

float4 atten = 1.0 / (1.0 + lengthSq * unity_4LightAtten0);
float4 atten2 = saturate(1 - (lengthSq * unity_4LightAtten0 / 25));
atten = min(atten, atten2 * atten2);

float offset = _RampOffset + (occlusion * _OcclusionOffsetIntensity) - _OcclusionOffsetIntensity;

float newMin = max(offset, 0);
float newMax = max(offset +1, 0);
float4 rampUv = remap(ndl, float4(-1, -1, -1, -1), float4(1, 1, 1, 1), float4(newMin, newMin, newMin, newMin), float4(newMax, newMax, newMax, newMax));
float intensity = max(_ShadowIntensity, 0.001);
float3 rmin = remap(_RampMin, 0, 1, 1 - intensity, 1);
float3 ramp0 = remap(remap(UNITY_SAMPLE_TEX2D(_Ramp, float2(rampUv.x, rampUv.x)).rgb * _RampColor.rgb, float3(0, 0, 0), float3(1, 1, 1), 1 - intensity, float3(1, 1, 1)), rmin, 1, 0, 1).rgb * unity_LightColor[0].rgb * atten.r;
float3 ramp1 = remap(remap(UNITY_SAMPLE_TEX2D(_Ramp, float2(rampUv.y, rampUv.y)).rgb * _RampColor.rgb, float3(0, 0, 0), float3(1, 1, 1), 1 - intensity, float3(1, 1, 1)), rmin, 1, 0, 1).rgb * unity_LightColor[1].rgb * atten.g;
float3 ramp2 = remap(remap(UNITY_SAMPLE_TEX2D(_Ramp, float2(rampUv.z, rampUv.z)).rgb * _RampColor.rgb, float3(0, 0, 0), float3(1, 1, 1), 1 - intensity, float3(1, 1, 1)), rmin, 1, 0, 1).rgb * unity_LightColor[2].rgb * atten.b;
float3 ramp3 = remap(remap(UNITY_SAMPLE_TEX2D(_Ramp, float2(rampUv.w, rampUv.w)).rgb * _RampColor.rgb, float3(0, 0, 0), float3(1, 1, 1), 1 - intensity, float3(1, 1, 1)), rmin, 1, 0, 1).rgb * unity_LightColor[3].rgb * atten.a;
color = ramp0 + ramp1 + ramp2 + ramp3;

direction = 0;
#if defined(_BACKLACE_SPECULAR) && defined(_BACKLACE_VERTEX_SPECULAR)
direction += (float3(toLightX.x, toLightY.x, toLightZ.x) * corr.x) * dot(ramp0, 1);
direction += (float3(toLightX.y, toLightY.y, toLightZ.y) * corr.y) * dot(ramp1, 1);
direction += (float3(toLightX.z, toLightY.z, toLightZ.z) * corr.z) * dot(ramp2, 1);
direction += (float3(toLightX.w, toLightY.w, toLightZ.w) * corr.w) * dot(ramp3, 1);
#endif 
}

void GetRampDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.Diffuse = 0;
float4 ramp = RampDotL(Surface);
#if defined(_BACKLACE_PARALLAX) && defined(_BACKLACE_PARALLAX_SHADOWS)
ramp *= ParallaxShadow;
#endif 
#if defined(_BACKLACE_LTCGI)
float2 ltcgi_lmUV = 0;
#if defined(LIGHTMAP_ON)
ltcgi_lmUV = FragData.lightmapUV;
#endif
LTCGI_Contribution(
FragData.worldPos,
Surface.NormalDir,
Surface.ViewDir,
Surface.Roughness,
ltcgi_lmUV,
Surface.IndirectDiffuse,
Surface.IndirectSpecular
);
#endif 
#if defined(_BACKLACE_SHADOW_TEXTURE)
float3 litColor;
#if defined(DIRECTIONAL) || defined(DIRECTIONAL_COOKIE)
litColor = Surface.Albedo * (Surface.LightColor.rgb + Surface.IndirectDiffuse);
#else 
litColor = Surface.Albedo * Surface.LightColor.rgb * Surface.LightColor.a;
#endif 
float3 shadowColor = GetTexturedShadowColor(Surface);
Surface.Diffuse = lerp(shadowColor, litColor, GetLuma(ramp.rgb));
#else 

#if defined(DIRECTIONAL) || defined(DIRECTIONAL_COOKIE)
Surface.Diffuse = Surface.Albedo * ramp.rgb * (Surface.LightColor.rgb + Surface.IndirectDiffuse);
#else 
Surface.Diffuse = Surface.Albedo * ramp.rgb * Surface.LightColor.rgb * Surface.LightColor.a;
#endif 
#endif 
Surface.Attenuation = ramp.a; 
ApplyAmbientGradient(Surface);
ApplyAreaTint(Surface);
}

void GetRampVertexDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.VertexDirectDiffuse = 0;
#if defined(VERTEXLIGHT_ON)
#if defined(_BACKLACE_VERTEX_SPECULAR)
RampDotLVertLight(Surface.NormalDir, FragData.worldPos, Surface.Occlusion, VertexDirectDiffuse, VertexLightDir);
#else
float3 ignoredDir;
RampDotLVertLight(Surface.NormalDir, FragData.worldPos, Surface.Occlusion, VertexDirectDiffuse, ignoredDir);
#endif
Surface.VertexDirectDiffuse *= Surface.Albedo * _VertexIntensity;
#endif
}
#elif defined(_ANIMEMODE_PROCEDURAL) 

void AnimeVertLight(float3 normal, float3 worldPos, float occlusion, out float3 color, out float3 direction)
{
Shade4PointLights(normal, worldPos, color, direction);
float luma = GetLuma(color);
float shadowMask = step(_AnimeHalftoneThreshold, luma + (1.0 - occlusion) * _AnimeOcclusionToShadow * 0.1);
color = lerp(color * _AnimeShadowColor.rgb, color, shadowMask);
}

void GetProceduralDiffuse(inout BacklaceSurfaceData Surface)
{
float lightTerm = saturate(Surface.UnmaxedNdotL * 0.5 + 0.5);
lightTerm = saturate(lightTerm - (1.0 - Surface.Occlusion) * _AnimeOcclusionToShadow);
#if defined(_BACKLACE_LTCGI)
float2 ltcgi_lmUV = 0;
#if defined(LIGHTMAP_ON)
ltcgi_lmUV = FragData.lightmapUV;
#endif
LTCGI_Contribution(
FragData.worldPos,
Surface.NormalDir,
Surface.ViewDir,
Surface.Roughness,
ltcgi_lmUV,
Surface.IndirectDiffuse,
Surface.IndirectSpecular
);
float3 finalColor = Surface.Albedo.rgb * Surface.IndirectDiffuse;
#else 
float3 finalColor = Surface.Albedo.rgb * unity_AmbientSky.rgb;
#endif 
float halftoneShadow = smoothstep(_AnimeHalftoneThreshold + _AnimeShadowSoftness, _AnimeHalftoneThreshold - _AnimeShadowSoftness, lightTerm);
float coreShadow = smoothstep(_AnimeShadowThreshold + _AnimeShadowSoftness, _AnimeShadowThreshold - _AnimeShadowSoftness, lightTerm);
#if defined(_BACKLACE_SHADOW_TEXTURE)
float3 texturedHalftone = GetTexturedShadowColor(Surface, _AnimeHalftoneColor.rgb * _ShadowPatternColor.rgb);
float3 texturedCore = GetTexturedShadowColor(Surface, _AnimeShadowColor.rgb * _ShadowPatternColor.rgb);
finalColor = lerp(finalColor, texturedHalftone, halftoneShadow);
finalColor = lerp(finalColor, texturedCore, coreShadow);
#else 

finalColor = lerp(finalColor, Surface.Albedo.rgb * _AnimeHalftoneColor.rgb, halftoneShadow);
finalColor = lerp(finalColor, Surface.Albedo.rgb * _AnimeShadowColor.rgb, coreShadow);
#endif 
float3 directLight = Surface.LightColor.rgb * Surface.Albedo.rgb;
float lightMask = 1.0 - halftoneShadow;
finalColor = lerp(finalColor, directLight, lightMask);
Surface.Diffuse = finalColor;
ApplyAmbientGradient(Surface);
#if defined(_BACKLACE_PARALLAX) && defined(_BACKLACE_PARALLAX_SHADOWS)
Surface.Diffuse *= ParallaxShadow;
#endif
Surface.Attenuation = lightMask;
ApplyAreaTint(Surface);
}

void GetProceduralVertexDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.VertexDirectDiffuse = 0;
#if defined(VERTEXLIGHT_ON)
#if defined(_BACKLACE_VERTEX_SPECULAR)
AnimeVertLight(Surface.NormalDir, FragData.worldPos, Surface.Occlusion, Surface.VertexDirectDiffuse, VertexLightDir);
#else
float3 ignoredDir;
AnimeVertLight(Surface.NormalDir, FragData.worldPos, Surface.Occlusion, Surface.VertexDirectDiffuse, ignoredDir);
#endif
Surface.VertexDirectDiffuse *= Surface.Albedo * _VertexIntensity;
#endif
}
#endif 

void GetAnimeDiffuse(inout BacklaceSurfaceData Surface)
{
#if defined(_ANIMEMODE_RAMP)

GetRampDiffuse(Surface);
GetRampVertexDiffuse(Surface);
#elif defined(_ANIMEMODE_PROCEDURAL) 

GetProceduralDiffuse(Surface);
GetProceduralVertexDiffuse(Surface);
#endif 
}
#endif 

void GetPBRVertexDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.VertexDirectDiffuse = 0;
#if defined(VERTEXLIGHT_ON)
#if defined(_BACKLACE_VERTEX_SPECULAR)
Shade4PointLights(Surface.NormalDir, FragData.worldPos, Surface.VertexDirectDiffuse, VertexLightDir);
#else
float3 ignoredDir;
Shade4PointLights(Surface.NormalDir, FragData.worldPos, Surface.VertexDirectDiffuse, ignoredDir);
#endif
Surface.VertexDirectDiffuse *= Surface.Albedo * _VertexIntensity;
#endif
}

void AddDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.FinalColor.rgb += Surface.Diffuse + Surface.VertexDirectDiffuse;
}

void AddAlpha(inout BacklaceSurfaceData Surface)
{


if (Surface.FinalColor.a == -1) {
Surface.FinalColor.a = Surface.Albedo.a;
} else {
Surface.FinalColor.a *= Surface.Albedo.a;
}
}

#if defined(_BACKLACE_SPECULAR)

half4 Unity_GlossyEnvironment(UNITY_ARGS_TEXCUBE(tex), half4 hdr, Unity_GlossyEnvironmentData glossIn)
{
half perceptualRoughness = glossIn.roughness;
perceptualRoughness = perceptualRoughness * (1.7 - 0.7 * perceptualRoughness);
half mip = perceptualRoughness * UNITY_SPECCUBE_LOD_STEPS;
half3 R = glossIn.reflUVW;
half4 rgbm = UNITY_SAMPLE_TEXCUBE_LOD(tex, R, mip);
return float4(DecodeHDR(rgbm, hdr), rgbm.a);
}

void GetFallbackCubemap(inout BacklaceSurfaceData Surface)
{
Surface.CustomIndirect = texCUBElod(_FallbackCubemap, half4(Surface.ReflectDir.xyz, remap(Surface.SquareRoughness, 1, 0, 5, 0))).rgb;
}

float3 GetModifiedTangent(float3 tangentTS, float3 tangentDir)
{
return lerp(tangentTS, tangentDir, step(1.0, tangentTS.z));
}

float GTR2_aniso(float NdotH, float HdotX, float HdotY, float ax, float ay)
{
float denominator = sqr(sqr(HdotX / ax) + sqr(HdotY / ay) + sqr(NdotH));
return 1.0 / (UNITY_PI * ax * ay * denominator);
}

float smithG_GGX_aniso(float NdotV, float VdotX, float VdotY, float ax, float ay)
{
return 1 / (NdotV + sqrt(sqr(VdotX * ax) + sqr(VdotY * ay) + sqr(NdotV)));
}

float3 ShiftTangent(float3 T, float3 N, float shift)
{
return normalize(T + shift * N);
}

void SetupDFG(inout BacklaceSurfaceData Surface)
{
Surface.EnergyCompensation = 1.0;
}

void StandardDirectSpecular(float ndotH, float ndotL, float ndotV, out float outNDF, out float outGFS, inout BacklaceSurfaceData Surface)
{
outNDF = 0;
outGFS = 0;
outNDF = GTR2(ndotH, Surface.SquareRoughness);
outGFS = smithG_GGX(max(ndotL, lerp(0.3, 0, Surface.SquareRoughness)), Surface.Roughness) * smithG_GGX(ndotV, Surface.Roughness);
}
#if defined(_SPECULARMODE_ANISOTROPIC) 

void AnisotropicDirectSpecular(float3 tangentDir, float3 bitangentDir, float3 lightDir, float3 halfDir, float ndotH, float ndotL, float ndotV, out float outNDF, out float outGFS, inout BacklaceSurfaceData Surface)
{
outNDF = 0;
outGFS = 0;
float4 tangentTS = UNITY_SAMPLE_TEX2D_SAMPLER(_TangentMap, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _TangentMap));
float anisotropy = tangentTS.a * _Anisotropy;
float3 tangent = GetModifiedTangent(tangentTS.rgb, tangentDir);
float3 anisotropyDirection = anisotropy >= 0.0 ? bitangentDir : tangentDir;
float3 anisotropicTangent = cross(anisotropyDirection, Surface.ViewDir);
float3 anisotropicNormal = cross(anisotropicTangent, anisotropyDirection);
float bendFactor = abs(anisotropy) * saturate(1 - (Pow5(1 - Surface.SquareRoughness)));
float3 bentNormal = normalize(lerp(Surface.NormalDir, anisotropicNormal, bendFactor));
Surface.ReflectDir = reflect(-Surface.ViewDir, bentNormal);
float TdotH = dot(tangent, halfDir);
float TdotL = dot(tangent, lightDir);
float BdotH = dot(bitangentDir, halfDir);
float BdotL = dot(bitangentDir, lightDir);
float TdotV = dot(Surface.ViewDir, tangent);
float BdotV = dot(bitangentDir, Surface.ViewDir);
float ax = max(Surface.SquareRoughness * (1.0 + anisotropy), 0.005);
float ay = max(Surface.SquareRoughness * (1.0 - anisotropy), 0.005);
outNDF = GTR2_aniso(ndotH, TdotH, BdotH, ax, ay) * UNITY_PI;
outGFS = smithG_GGX_aniso(ndotL, TdotL, BdotL, ax, ay);
outGFS *= smithG_GGX_aniso(ndotV, TdotV, BdotV, ax, ay);
}
#elif defined(_SPECULARMODE_TOON) 

float3 ApplyToonHighlights(float3 F_Term, float ndotH, inout BacklaceSurfaceData Surface)
{
float hardness = _HighlightHardness * 200 + 1;
float highlightGradient = pow(ndotH, hardness);
float rampUV = saturate(highlightGradient + _HighlightRampOffset);
float3 rampColor = UNITY_SAMPLE_TEX2D(_HighlightRamp, float2(rampUV, rampUV)).rgb;
return rampColor * _HighlightRampColor.rgb * _HighlightIntensity * F_Term;
}
#elif defined(_SPECULARMODE_HAIR) 

float3 HairDirectSpecular(float3 tangentDir, float3 lightDir, inout BacklaceSurfaceData Surface)
{
float2 flow = UNITY_SAMPLE_TEX2D(_HairFlowMap, Uvs[_HairFlowMap_UV]).rg * 2 - 1;
float3 hairTangent = normalize(flow.x * Surface.TangentDir + flow.y * Surface.BitangentDir);
float3 shiftedTangent1 = normalize(hairTangent + Surface.NormalDir * _PrimarySpecularShift);
float dotT1L = dot(shiftedTangent1, lightDir);
float dotT1V = dot(shiftedTangent1, Surface.ViewDir);
float sinT1L = sqrt(1.0 - dotT1L * dotT1L);
float sinT1V = sqrt(1.0 - dotT1V * dotT1V);
float primarySpec = pow(saturate(dotT1L * dotT1V + sinT1L * sinT1V), _SpecularExponent);
float3 shiftedTangent2 = normalize(hairTangent + Surface.NormalDir * _SecondarySpecularShift);
float dotT2L = dot(shiftedTangent2, lightDir);
float dotT2V = dot(shiftedTangent2, Surface.ViewDir);
float sinT2L = sqrt(1.0 - dotT2L * dotT2L);
float sinT2V = sqrt(1.0 - dotT2V * dotT2V);
float secondarySpec = pow(saturate(dotT2L * dotT2V + sinT2L * sinT2V), _SpecularExponent);
float3 secondaryColor = Surface.Albedo.rgb * _SecondarySpecularColor.rgb;
return (primarySpec * Surface.SpecularColor) + (secondarySpec * secondaryColor);
}
#elif defined(_SPECULARMODE_CLOTH)

float CharlieSheenNDF(float roughness, float NdotH)
{
float invAlpha = 1.0 / roughness;
float cos2h = NdotH * NdotH;
float sin2h = max(1.0 - cos2h, 0.0078125); 

return (2.0 + invAlpha) * pow(sin2h, invAlpha * 0.5) / (2.0 * UNITY_PI);
}
#endif 

void GetIndirectSpecular(inout BacklaceSurfaceData Surface)
{
Unity_GlossyEnvironmentData envData;
envData.roughness = Surface.Roughness;
envData.reflUVW = BoxProjectedCubemapDirection(Surface.ReflectDir, FragData.worldPos, unity_SpecCube0_ProbePosition, unity_SpecCube0_BoxMin, unity_SpecCube0_BoxMax);
float4 indirectSpecularRGBA = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData);
#if defined(UNITY_SPECCUBE_BLENDING) && !defined(SHADER_API_MOBILE)
UNITY_BRANCH
if (unity_SpecCube0_BoxMin.w < 0.99999)
{
envData.reflUVW = BoxProjectedCubemapDirection(Surface.ReflectDir, FragData.worldPos, unity_SpecCube1_ProbePosition, unity_SpecCube1_BoxMin, unity_SpecCube1_BoxMax);
float4 indirectSpecularRGBA1 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0), unity_SpecCube1_HDR, envData);
indirectSpecularRGBA = lerp(indirectSpecularRGBA1, indirectSpecularRGBA, unity_SpecCube0_BoxMin.w);
}
#endif
Surface.IndirectSpecular = indirectSpecularRGBA.rgb;
if ((_IndirectFallbackMode > 0 && indirectSpecularRGBA.a == 0) || (_IndirectOverride == 1))
{


half lightColGrey = max((Surface.LightColor.r + Surface.LightColor.g + Surface.LightColor.b) / 3, (Surface.IndirectDiffuse.r + Surface.IndirectDiffuse.g + Surface.IndirectDiffuse.b) / 3);
Surface.IndirectSpecular = Surface.CustomIndirect * min(lightColGrey, 1);
}
float horizon = min(1 + Surface.NdotH, 1.0);
Surface.IndirectSpecular *= Surface.EnergyCompensation * horizon * horizon * Surface.SpecularColor;
#if defined(_BACKLACE_CLEARCOAT)
Surface.IndirectSpecular *= _ClearcoatReflectionStrength;
#endif 
}

void AddIndirectSpecular(inout BacklaceSurfaceData Surface)
{
Surface.FinalColor.rgb += Surface.IndirectSpecular * clamp(pow(Surface.NdotV + Surface.Occlusion, exp2(-16.0 * Surface.SquareRoughness - 1.0)) - 1.0 + Surface.Occlusion, 0.0, 1.0);
}

float3 CalculateDirectSpecular(float3 tangentDir, float3 bitangentDir, float3 lightDir, float3 halfDir, float ndotH, float ndotL, float ndotV, float ldotH, float attenuation, inout BacklaceSurfaceData Surface)
{
if (ndotL <= 0)
{
return 0.0;
}
float NDF_Term, GFS_Term;
float3 F_Term = FresnelTerm(Surface.SpecularColor, ldotH);
float3 specTerm = 0; 
#if defined(_SPECULARMODE_STANDARD)
StandardDirectSpecular(ndotH, ndotL, ndotV, NDF_Term, GFS_Term, Surface);
float3 numerator = NDF_Term * GFS_Term * F_Term;
float denominator = 4.0 * ndotV * ndotL;
specTerm = numerator / max(denominator, 0.001);
#elif defined(_SPECULARMODE_ANISOTROPIC)
AnisotropicDirectSpecular(tangentDir, bitangentDir, lightDir, halfDir, ndotH, ndotL, ndotV, NDF_Term, GFS_Term, Surface);
F_Term = FresnelTerm(Surface.SpecularColor, ldotH);
float3 numerator = NDF_Term * GFS_Term * F_Term;
float denominator = 4.0 * ndotV * ndotL;
specTerm = numerator / max(denominator, 0.001);
#elif defined(_SPECULARMODE_TOON)
StandardDirectSpecular(ndotH, ndotL, ndotV, NDF_Term, GFS_Term, Surface);
float3 ToonHighlight_Term = ApplyToonHighlights(F_Term, ndotH, Surface);
float3 numerator = GFS_Term * F_Term * ToonHighlight_Term;
float denominator = 4.0 * ndotV * ndotL;
specTerm = numerator / max(denominator, 0.001);
#elif defined(_SPECULARMODE_HAIR)
specTerm = HairDirectSpecular(tangentDir, lightDir, Surface);
#elif defined(_SPECULARMODE_CLOTH)
NDF_Term = CharlieSheenNDF(Surface.Roughness * _SheenRoughness, ndotH);
specTerm = NDF_Term * _SheenColor.rgb * _SheenColor.a * _SheenIntensity;
specTerm *= ndotL;
return max(0, specTerm * attenuation); 
#endif 

specTerm *= _SpecularIntensity * ndotL * Surface.EnergyCompensation;
#ifdef UNITY_COLORSPACE_GAMMA
specTerm = sqrt(max(1e-4h, specTerm));
#endif
specTerm = max(0, specTerm * attenuation);
specTerm *= any(Surface.SpecularColor) ? 1.0 : 0.0;
return specTerm;
}

void AddDirectSpecular(inout BacklaceSurfaceData Surface)
{
Surface.FinalColor.rgb += Surface.DirectSpecular * Surface.SpecLightColor.rgb * Surface.SpecLightColor.a;
}

#if defined(_BACKLACE_VERTEX_SPECULAR)
void AddVertexSpecular(inout BacklaceSurfaceData Surface)
{
float3 VLightDir = normalize(VertexLightDir);
if (dot(VLightDir, VLightDir) < 0.01) return;
float3 V_HalfDir = normalize(VLightDir + Surface.ViewDir);
float V_NdotL = saturate(dot(Surface.NormalDir, VLightDir));
float V_NdotH = saturate(dot(Surface.NormalDir, V_HalfDir));
float V_LdotH = saturate(dot(VLightDir, V_HalfDir));

float3 VertexSpecular = CalculateDirectSpecular(Surface.TangentDir, Surface.BitangentDir, VLightDir, V_HalfDir, V_NdotH, V_NdotL, Surface.NdotV, V_LdotH, 1.0, Surface);
Surface.FinalColor.rgb += VertexSpecular * Surface.VertexDirectDiffuse;
}
#endif 
#endif 
#endif 




#ifndef BACKLACE_FRAGMENT_CGINC
#define BACKLACE_FRAGMENT_CGINC

float4 Fragment(FragmentData i, uint facing : SV_IsFrontFace) : SV_TARGET
{
BacklaceSurfaceData Surface = (BacklaceSurfaceData)0;
Surface.IsFrontFace = (facing == 1);
Surface.FinalColor.a = -1.0; 
FragData = i;
LoadUVs();
Uvs[0] = ManipulateUVs(FragData.uv, _UV_Rotation, _UV_Scale_X, _UV_Scale_Y, _UV_Offset_X, _UV_Offset_Y, _UV_Scroll_X_Speed, _UV_Scroll_Y_Speed);
#if defined(_BACKLACE_PS1)
ApplyPS1AffineUV(Uvs[0], i);
#endif 
GetGeometryVectors(Surface, FragData);
#if defined(_BACKLACE_UV_EFFECTS)
ApplyUVEffects(Uvs[0], Surface);
#endif 
#if defined(_BACKLACE_DISTANCE_FADE)
bool isNearFading;
float fadeFactor;
CalculateDistanceFade(i, isNearFading, fadeFactor);
if(ApplyDistanceFadePre(isNearFading, fadeFactor) == -1) {
discard; 
}
#endif 
#if defined(_BACKLACE_PARALLAX)
float2 parallax_uv = Uvs[_ParallaxMap_UV];
[branch] if (_ParallaxMode == 0) 
{
ApplyParallax_Fast(parallax_uv, Surface);
}
else if (_ParallaxMode == 1) 
{
ApplyParallax_Fancy(parallax_uv, Surface);
}
Uvs[0] = parallax_uv;
#endif 
SampleAlbedo(Surface);
#if defined(_BACKLACE_VRCHAT_MIRROR)
ApplyMirrorDetectionPre(Surface);
#endif 
#if defined(_BACKLACE_DECAL1)
[branch] if (_DecalStage == 0) 
{
ApplyDecal1(Surface, FragData, Uvs);
}
#endif 
#if defined(_BACKLACE_DECAL2)
[branch] if (_DecalStage == 0) 
{
ApplyDecal2(Surface, FragData, Uvs);
}
#endif 
ClipAlpha(Surface);
SampleNormal();
#if defined(_BACKLACE_DETAIL)
ApplyDetailMaps(Surface);
#endif 
SampleMSSO(Surface);
#if defined(_BACKLACE_EMISSION)
CalculateEmission(Surface);
#endif
#if defined(_BACKLACE_SPECULAR)
GetSampleData(Surface);
#endif 
GetDirectionVectors(Surface);
GetLightData(Surface);
GetDotProducts(Surface);
#if defined(_BACKLACE_SPECULAR)
SetupAlbedoAndSpecColor(Surface);
SetupDFG(Surface);
#endif 
PremultiplyAlpha(Surface);
#if defined(_BACKLACE_TOON) 
GetAnimeDiffuse(Surface); 
#else 
GetPBRDiffuse(Surface);
GetPBRVertexDiffuse(Surface);
#endif 
#if defined(_BACKLACE_SSS)
ApplySubsurfaceScattering(Surface);
#endif 
#if defined(_BACKLACE_SPECULAR)
Surface.DirectSpecular = CalculateDirectSpecular(Surface.TangentDir, Surface.BitangentDir, Surface.LightDir, Surface.HalfDir, Surface.NdotH, Surface.NdotL, Surface.NdotV, Surface.LdotH, Surface.Attenuation, Surface);
[branch] if (_IndirectFallbackMode == 1)
{
GetFallbackCubemap(Surface);
}
GetIndirectSpecular(Surface);
#endif 
AddDiffuse(Surface);
#if defined(_BACKLACE_TOUCH_REACTIVE)
ApplyTouchReactive(Surface, i);
#endif 
#if defined(_BACKLACE_POST_PROCESSING)
ApplyPostProcessing(Surface, i);
#endif 
#if defined(_BACKLACE_SPECULAR)
AddDirectSpecular(Surface);
AddIndirectSpecular(Surface);
#if defined(_BACKLACE_VERTEX_SPECULAR) && defined(VERTEXLIGHT_ON)
AddVertexSpecular(Surface);
#endif 
#endif 
#if defined(_BACKLACE_RIMLIGHT)
CalculateRimlight(Surface);
#if defined(_BACKLACE_AUDIOLINK)
Rimlight *= i.alChannel1.y;
#endif 
Surface.FinalColor.rgb += Rimlight;
#endif 
#if defined(_BACKLACE_DEPTH_RIMLIGHT)
ApplyDepthRim(Surface, i);
#endif 
#if defined(_BACKLACE_EMISSION)
#if defined(_BACKLACE_AUDIOLINK)
Surface.FinalColor.rgb += (Emission * i.alChannel1.x);
#else 
Surface.FinalColor.rgb += Emission;
#endif 
#endif 
#if defined(_BACKLACE_PATHING)
ApplyPathing(Surface, i);
#endif 
#if defined(_BACKLACE_IRIDESCENCE)
ApplyIridescence(Surface, i);
#endif 
#if defined(BACKLACE_GRABPASS)
#if defined(_BACKLACE_REFRACTION)
ApplyRefraction(Surface, i);
#endif 
#if defined(_BACKLACE_SSR)
ApplyScreenSpaceReflections(Surface, i);
#endif 
#endif 
#if defined(_BACKLACE_GLITTER)
ApplyGlitter(Surface);
#endif 
#if defined(_BACKLACE_WORLD_EFFECT)
ApplyWorldAlignedEffect(Surface, i);
#endif 
#if defined(_BACKLACE_MATCAP)
ApplyMatcap(Surface, i);
#endif 
#if defined(_BACKLACE_CUBEMAP)
ApplyCubemap(Surface);
#endif 
#if defined(_BACKLACE_CLEARCOAT)
float3 baseColor = Surface.FinalColor.rgb;
float3 clearcoatHighlight;
float3 clearcoatAttenuation;
CalculateClearcoat(Surface, clearcoatHighlight, clearcoatAttenuation);
Surface.FinalColor.rgb = (baseColor * clearcoatAttenuation) + clearcoatHighlight;
#if defined(_BACKLACE_VERTEX_SPECULAR) && defined(VERTEXLIGHT_ON)
AddClearcoatVertex(Surface);
#endif 
#endif 
#if defined(_BACKLACE_PS1)
ApplyPS1ColorCompression(Surface.FinalColor);
#endif 
#if defined(_BACKLACE_DECAL1)
[branch] if (_DecalStage == 1) 
{
ApplyDecal1(Surface, FragData, Uvs);
}
#endif 
#if defined(_BACKLACE_DECAL2)
[branch] if (_DecalStage == 1) 
{
ApplyDecal2(Surface, FragData, Uvs);
}
#endif 
AddAlpha(Surface);
#if defined(_BACKLACE_DISTANCE_FADE)
ApplyDistanceFadePost(i, fadeFactor, isNearFading, Surface);
#endif 
#if defined(_BACKLACE_DITHER)
ApplyDither(Surface, i.worldPos.xy, Uvs[_Dither_UV]);
#endif 
#if defined(_BACKLACE_VRCHAT_MIRROR)
ApplyMirrorDetectionPost(Surface); 
#endif 
#if defined(_BACKLACE_DISSOLVE) 
ApplyDissolve(Surface, i);
#endif 
Surface.FinalColor.a *= _Alpha;
return Surface.FinalColor;
}
#endif 





#ifndef BACKLACE_VERTEX_CGINC
#define BACKLACE_VERTEX_CGINC
FragmentData Vertex(VertexData v)
{
FragmentData i;
UNITY_SETUP_INSTANCE_ID(v);
UNITY_INITIALIZE_OUTPUT(FragmentData, i);
UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(i);

#if defined(_BACKLACE_AUDIOLINK)
BacklaceAudioLinkData al_data = CalculateAudioLinkEffects();
i.alChannel1 = float4(al_data.emission, al_data.rim, al_data.hueShift, al_data.matcap);
i.alChannel2 = float4(al_data.pathing, al_data.glitter, al_data.iridescence, al_data.decalHue);
i.alChannel3 = float2(al_data.decalEmission, al_data.decalOpacity);
v.vertex.xyz *= _VertexManipulationScale * (al_data.vertexScale); 
#else 
v.vertex.xyz *= _VertexManipulationScale; 
#endif 

v.vertex.xyz += _VertexManipulationPosition; 

#if defined(_BACKLACE_VERTEX_DISTORTION)
DistortVertex(v.vertex, mul(unity_ObjectToWorld, v.vertex).xyz, v.color);
#endif 

i.vertex = v.vertex;
i.pos = UnityObjectToClipPos(v.vertex);
i.normal = UnityObjectToWorldNormal(v.normal);
i.worldPos = mul(unity_ObjectToWorld, v.vertex);
i.worldObjectCenter = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
i.tangentDir = v.tangentDir;
i.uv = v.uv;
i.uv1 = v.uv1;
i.uv2 = v.uv2;
i.uv3 = v.uv3;

#if defined(_BACKLACE_PS1)
ApplyPS1Vertex(i, v);
#endif 

i.scrPos = ComputeScreenPos(i.pos);

#if defined(_BACKLACE_FLAT_MODEL)
FlattenModel(v.vertex, v.normal, i.pos, i.worldPos, i.normal);
#endif 
UNITY_TRANSFER_SHADOW(i, v.uv);
UNITY_TRANSFER_FOG(i, i.pos);
#if defined(LIGHTMAP_ON)
i.lightmapUV = v.uv1 * unity_LightmapST.xy + unity_LightmapST.zw;
#endif 
#if defined(DYNAMICLIGHTMAP_ON)
i.dynamicLightmapUV = v.uv2 * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
#endif 
#if defined(_BACKLACE_MATCAP)
float3 worldN = UnityObjectToWorldNormal(v.normal);
float3 viewN = mul((float3x3)UNITY_MATRIX_V, worldN);
i.matcapUV = viewN.xy * 0.5 + 0.5;
#endif 
return i;
}
#endif 


#endif 


ENDCG
}
Pass
{
Name "ForwardAdd"
Tags { "LightMode" = "ForwardAdd" }
Blend [_SrcBlend] One 
Fog { Color(0, 0, 0, 0) } 
ZWrite Off 
CGPROGRAM
    // --- Premonitions: Baked Keywords ---
    #define _ANIMEMODE_RAMP
    #define _BACKLACE_DEPTH_RIMLIGHT
    #define _BACKLACE_TOON
    #define _SPECULARMODE_STANDARD
    // ------------------------------------
#ifndef UNITY_PASS_FORWARDADD
#define UNITY_PASS_FORWARDADD
#endif 
#ifndef BACKLACE_GRABPASS
#define BACKLACE_GRABPASS
#endif 


#ifndef BACKLACE_FORWARD_CGINC
#define BACKLACE_FORWARD_CGINC



#ifndef BACKLACE_KEYWORDS_CGINC
#define BACKLACE_KEYWORDS_CGINC




#endif 



#pragma target 5.0
#pragma vertex Vertex

#pragma fragment Fragment
#pragma multi_compile_fog
#pragma multi_compile_instancing

#if defined(UNITY_PASS_FORWARDBASE)
#pragma multi_compile_fwdbase
#pragma multi_compile _ VERTEXLIGHT_ON
#elif defined(UNITY_PASS_FORWARDADD)
#pragma multi_compile_fwdadd_fullshadows
#endif 

#include "UnityCG.cginc"
#include "UnityLightingCommon.cginc"

#include "UnityStandardUtils.cginc"

#include "AutoLight.cginc"

#if defined(_BACKLACE_AUDIOLINK)


#ifndef BACKLACE_AUDIOLINK_CGINC
#define BACKLACE_AUDIOLINK_CGINC

#define ALPASS_DFT uint2(0, 4) 
#define ALPASS_WAVEFORM uint2(0, 6) 
#define ALPASS_AUDIOLINK uint2(0, 0) 
#define ALPASS_AUDIOBASS uint2(0, 0) 
#define ALPASS_AUDIOLOWMIDS uint2(0, 1) 
#define ALPASS_AUDIOHIGHMIDS uint2(0, 2) 
#define ALPASS_AUDIOTREBLE uint2(0, 3) 
#define ALPASS_AUDIOLINKHISTORY uint2(1, 0) 
#define ALPASS_GENERALVU uint2(0, 22) 
#define ALPASS_GENERALVU_INSTANCE_TIME uint2(2, 22)
#define ALPASS_GENERALVU_LOCAL_TIME uint2(3, 22)
#define ALPASS_GENERALVU_NETWORK_TIME uint2(4, 22)
#define ALPASS_GENERALVU_PLAYERINFO uint2(6, 22)
#define ALPASS_THEME_COLOR0 uint2(0, 23)
#define ALPASS_THEME_COLOR1 uint2(1, 23)
#define ALPASS_THEME_COLOR2 uint2(2, 23)
#define ALPASS_THEME_COLOR3 uint2(3, 23)
#define ALPASS_GENERALVU_UNIX_DAYS uint2(5, 23)
#define ALPASS_GENERALVU_UNIX_SECONDS uint2(6, 23)
#define ALPASS_GENERALVU_SOURCE_POS uint2(7, 23)
#define ALPASS_MEDIASTATE uint2(5, 22)
#define ALPASS_CCINTERNAL uint2(12, 22) 
#define ALPASS_CCCOLORS uint2(25, 22) 
#define ALPASS_CCSTRIP uint2(0, 24) 
#define ALPASS_CCLIGHTS uint2(0, 25) 
#define ALPASS_AUTOCORRELATOR uint2(0, 27) 
#define ALPASS_FILTEREDAUDIOLINK uint2(0, 28) 
#define ALPASS_CHRONOTENSITY uint2(16, 28) 
#define ALPASS_FILTEREDVU uint2(24, 28) 
#define ALPASS_FILTEREDVU_INTENSITY uint2(24, 28) 
#define ALPASS_FILTEREDVU_MARKER uint2(24, 29) 
#define ALPASS_GLOBAL_STRINGS uint2(40, 28) 


#define AUDIOLINK_SAMPHIST 3069 
#define AUDIOLINK_SAMPLEDATA24 2046
#define AUDIOLINK_EXPBINS 24
#define AUDIOLINK_EXPOCT 10
#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
#define AUDIOLINK_WIDTH 128
#define AUDIOLINK_SPS 48000 
#define AUDIOLINK_ROOTNOTE 0
#define AUDIOLINK_4BAND_FREQFLOOR 0.123
#define AUDIOLINK_4BAND_FREQCEILING 1
#define AUDIOLINK_BOTTOM_FREQUENCY 13.75
#define AUDIOLINK_BASE_AMPLITUDE 2.5
#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
#define AUDIOLINK_DFT_Q 4.0
#define AUDIOLINK_TREBLE_CORRECTION 5.0
#define AUDIOLINK_4BAND_TARGET_RATE 90.0
#define AUDIOLINK_LUT {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, \
0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, \
0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, \
0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.001, 0.002, 0.003, 0.004, 0.005, 0.006, \
0.008, 0.01, 0.012, 0.014, 0.017, 0.02, 0.022, 0.025, 0.029, 0.032, 0.036, \
0.04, 0.044, 0.048, 0.053, 0.057, 0.062, 0.067, 0.072, 0.078, 0.083, 0.089, \
0.095, 0.101, 0.107, 0.114, 0.121, 0.128, 0.135, 0.142, 0.149, 0.157, 0.164, \
0.172, 0.18, 0.188, 0.196, 0.205, 0.213, 0.222, 0.23, 0.239, 0.248, 0.257, \
0.266, 0.276, 0.285, 0.294, 0.304, 0.313, 0.323, 0.333, 0.342, 0.352, 0.362, \
0.372, 0.381, 0.391, 0.401, 0.411, 0.421, 0.431, 0.441, 0.451, 0.46, 0.47, \
0.48, 0.49, 0.499, 0.509, 0.519, 0.528, 0.538, 0.547, 0.556, 0.565, 0.575, \
0.584, 0.593, 0.601, 0.61, 0.619, 0.627, 0.636, 0.644, 0.652, 0.66, 0.668, \
0.676, 0.684, 0.691, 0.699, 0.706, 0.713, 0.72, 0.727, 0.734, 0.741, 0.747, \
0.754, 0.76, 0.766, 0.772, 0.778, 0.784, 0.79, 0.795, 0.801, 0.806, 0.811, \
0.816, 0.821, 0.826, 0.831, 0.835, 0.84, 0.844, 0.848, 0.853, 0.857, 0.861, \
0.864, 0.868, 0.872, 0.875, 0.879, 0.882, 0.885, 0.888, 0.891, 0.894, 0.897, \
0.899, 0.902, 0.904, 0.906, 0.909, 0.911, 0.913, 0.914, 0.916, 0.918, 0.919, \
0.921, 0.922, 0.924, 0.925, 0.926, 0.927, 0.928, 0.928, 0.929, 0.929, 0.93, \
0.93, 0.93, 0.931, 0.931, 0.93, 0.93, 0.93, 0.93, 0.929, 0.929, 0.928, 0.927, \
0.926, 0.925, 0.924, 0.923, 0.922, 0.92, 0.919, 0.917, 0.915, 0.913, 0.911, \
0.909, 0.907, 0.905, 0.903, 0.9}

#define AUDIOLINK_STRING_MAX_CHARS 32
#define AUDIOLINK_STRING_LOCALPLAYER 0
#define AUDIOLINK_STRING_MASTER 1
#define AUDIOLINK_STRING_CUSTOM1 2
#define AUDIOLINK_STRING_CUSTOM2 3

#define COLORCHORD_EMAXBIN 192
#define COLORCHORD_NOTE_CLOSEST 3.0
#define COLORCHORD_NEW_NOTE_GAIN 8.0
#define COLORCHORD_MAX_NOTES 10



#ifndef glsl_mod
#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
#endif
uniform float4 _AudioTexture_TexelSize;
#ifdef SHADER_TARGET_SURFACE_ANALYSIS
#define AUDIOLINK_STANDARD_INDEXING
#endif

#ifdef AUDIOLINK_STANDARD_INDEXING
sampler2D _AudioTexture;
#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
#else
uniform Texture2D<float4> _AudioTexture;
#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
#endif

float4 AudioLinkDataMultiline(uint2 xycoord)
{
return AudioLinkData(uint2(xycoord.x % AUDIOLINK_WIDTH, xycoord.y + xycoord.x / AUDIOLINK_WIDTH));
}

float4 AudioLinkLerp(float2 xy)
{
return lerp(AudioLinkData(xy), AudioLinkData(xy + int2(1, 0)), frac(xy.x));
}

float4 AudioLinkLerpMultiline(float2 xy)
{
return lerp(AudioLinkDataMultiline(xy), AudioLinkDataMultiline(xy + float2(1, 0)), frac(xy.x));
}

bool AudioLinkIsAvailable()
{
#if !defined(AUDIOLINK_STANDARD_INDEXING)
int width, height;
_AudioTexture.GetDimensions(width, height);
return width > 16;
#else
return _AudioTexture_TexelSize.z > 16;
#endif
}


float AudioLinkGetVersion()
{
int2 dims;
#if !defined(AUDIOLINK_STANDARD_INDEXING)
_AudioTexture.GetDimensions(dims.x, dims.y);
#else
dims = _AudioTexture_TexelSize.zw;
#endif
if (dims.x >= 128)
return AudioLinkData(ALPASS_GENERALVU).x;
else if (dims.x > 16)
return 1;
else
return 0;
}
float AudioLinkGetVersionMajor()
{
return AudioLinkData(ALPASS_GENERALVU).y;
}
float AudioLinkGetVersionMinor()
{

if (AudioLinkGetVersionMajor() > 0)
{
return AudioLinkData(ALPASS_GENERALVU).w;
}

else
{
int2 dims;
#if !defined(AUDIOLINK_STANDARD_INDEXING)
_AudioTexture.GetDimensions(dims.x, dims.y);
#else
dims = _AudioTexture_TexelSize.zw;
#endif
if (dims.x >= 128)
return AudioLinkData(ALPASS_GENERALVU).x;
else if (dims.x > 16)
return 1;
else
return 0;
}
}

#define AudioLinkGetSelfPixelData(xy) _SelfTexture2D[xy]

uint AudioLinkDecodeDataAsUInt(uint2 indexloc)
{
uint4 rpx = AudioLinkData(indexloc);
return rpx.x + rpx.y * 1024 + rpx.z * 1048576 + rpx.w * 1073741824;
}


float AudioLinkDecodeDataAsSeconds(uint2 indexloc)
{
uint time = AudioLinkDecodeDataAsUInt(indexloc) & 0x7ffffff;

return float(time / 1000) + float(time % 1000) / 1000.;
}
#define ALDecodeDataAsSeconds(x) AudioLinkDecodeDataAsSeconds(x)
#define ALDecodeDataAsUInt(x) AudioLinkDecodeDataAsUInt(x)
float AudioLinkRemap(float t, float a, float b, float u, float v)
{
return ((t - a) / (b - a)) * (v - u) + u;
}
float3 AudioLinkHSVtoRGB(float3 HSV)
{
float3 RGB = 0;
float C = HSV.z * HSV.y;
float H = HSV.x * 6;
float X = C * (1 - abs(fmod(H, 2) - 1));
if (HSV.y != 0)
{
float I = floor(H);
if (I == 0)
{
RGB = float3(C, X, 0);
}
else if (I == 1)
{
RGB = float3(X, C, 0);
}
else if (I == 2)
{
RGB = float3(0, C, X);
}
else if (I == 3)
{
RGB = float3(0, X, C);
}
else if (I == 4)
{
RGB = float3(X, 0, C);
}
else
{
RGB = float3(C, 0, X);
}
}
float M = HSV.z - C;
return RGB + M;
}
float3 AudioLinkCCtoRGB(float bin, float intensity, int rootNote)
{
float note = bin / AUDIOLINK_EXPBINS;
float hue = 0.0;
note *= 12.0;
note = glsl_mod(4. - note + rootNote, 12.0);
{
if (note < 4.0)
{

hue = (note) / 24.0;
}
else if (note < 8.0)
{


hue = (note - 2.0) / 12.0;
}
else
{


hue = (note - 4.0) / 8.0;
}
}
float val = intensity - 0.1;
return AudioLinkHSVtoRGB(float3(fmod(hue, 1.0), 1.0, clamp(val, 0.0, 1.0)));
}

float4 AudioLinkGetAmplitudeAtFrequency(float hertz)
{
float note = AUDIOLINK_EXPBINS * log2(hertz / AUDIOLINK_BOTTOM_FREQUENCY);
return AudioLinkLerpMultiline(ALPASS_DFT + float2(note, 0));
}

float4 AudioLinkGetAmplitudeAtQuarterNote(float octave, float quarter)
{
return AudioLinkLerpMultiline(ALPASS_DFT + float2(octave * AUDIOLINK_EXPBINS + quarter, 0));
}

float4 AudioLinkGetAmplitudeAtNote(float octave, float note)
{
float quarter = note * 2.0;
return AudioLinkGetAmplitudeAtQuarterNote(octave, quarter);
}

float4 AudioLinkGetAmplitudesAtQuarterNote(float quarter)
{
float amplitude = 0;
UNITY_UNROLL
for (int i = 0; i < AUDIOLINK_EXPOCT; i++)
{
amplitude += AudioLinkGetAmplitudeAtQuarterNote(i, quarter);
}
return amplitude;
}

float4 AudioLinkGetAmplitudesAtNote(float note)
{
float quarter = note * 2.0;
return AudioLinkGetAmplitudesAtQuarterNote(quarter);
}


float AudioLinkGetChronoTime(uint index, uint band)
{
return (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(index, band))) / 100000.0;
}


float AudioLinkGetChronoTimeNormalized(uint index, uint band, float speed)
{
return frac(AudioLinkGetChronoTime(index, band) * speed);
}


float AudioLinkGetChronoTimeInterval(uint index, uint band, float speed, float interval)
{
return AudioLinkGetChronoTimeNormalized(index, band, speed) * interval;
}

float3 AudioLinkGetTimeOfDay()
{
float value = AudioLinkDecodeDataAsSeconds(ALPASS_GENERALVU_UNIX_SECONDS);
float hour = floor(value / 3600.0);
float minute = floor(value / 60.0) % 60.0;
float second = value % 60.0;
return float3(hour, minute, second);
}




uint AudioLinkGetGlobalStringChar(uint stringIndex, uint charIndex)
{
uint4 fourChars = asuint(AudioLinkData(ALPASS_GLOBAL_STRINGS + uint2(charIndex / 4, stringIndex)));
return fourChars[charIndex % 4];
}


uint AudioLinkGetLocalPlayerNameChar(uint charIndex)
{
return AudioLinkGetGlobalStringChar(AUDIOLINK_STRING_LOCALPLAYER, charIndex);
}


uint AudioLinkGetMasterNameChar(uint charIndex)
{
return AudioLinkGetGlobalStringChar(AUDIOLINK_STRING_MASTER, charIndex);
}


uint AudioLinkGetCustomString1Char(uint charIndex)
{
return AudioLinkGetGlobalStringChar(AUDIOLINK_STRING_CUSTOM1, charIndex);
}


uint AudioLinkGetCustomString2Char(uint charIndex)
{
return AudioLinkGetGlobalStringChar(AUDIOLINK_STRING_CUSTOM2, charIndex);
}

float4 AudioLinkGetAudioSourcePosition()
{
return float4(AudioLinkData(ALPASS_GENERALVU_SOURCE_POS).xyz, 1);
}
#if defined(_BACKLACE_AUDIOLINK)
struct BacklaceAudioLinkData
{
float emission;
float rim;
float hueShift;
float decalHue;
float decalEmission;
float decalOpacity;
float matcap;
float pathing;
float glitter;
float iridescence;
float vertexScale;
float outlineWidth;
};
float _AudioLinkFallback;
float _AudioLinkEmissionBand, _AudioLinkEmissionStrength;
float2 _AudioLinkEmissionRange;
float _AudioLinkRimBand, _AudioLinkRimStrength;
float2 _AudioLinkRimRange;
float _AudioLinkHueShiftBand, _AudioLinkHueShiftStrength;
float2 _AudioLinkHueShiftRange;
float _AudioLinkDecalHueBand, _AudioLinkDecalHueStrength;
float2 _AudioLinkDecalHueRange;
float _AudioLinkDecalEmissionBand, _AudioLinkDecalEmissionStrength;
float2 _AudioLinkDecalEmissionRange;
float _AudioLinkDecalOpacityBand, _AudioLinkDecalOpacityStrength;
float2 _AudioLinkDecalOpacityRange;
float _AudioLinkVertexBand, _AudioLinkVertexStrength;
float2 _AudioLinkVertexRange;
float _AudioLinkOutlineBand, _AudioLinkOutlineStrength;
float2 _AudioLinkOutlineRange;
float _AudioLinkMatcapBand, _AudioLinkMatcapStrength;
float2 _AudioLinkMatcapRange;
float _AudioLinkPathingBand, _AudioLinkPathingStrength;
float2 _AudioLinkPathingRange;
float _AudioLinkGlitterBand, _AudioLinkGlitterStrength;
float2 _AudioLinkGlitterRange;
float _AudioLinkIridescenceBand, _AudioLinkIridescenceStrength;
float2 _AudioLinkIridescenceRange;
float GetAudioLinkBandValue(float band)
{
if (band < 1) return _AudioLinkFallback;
float value = 0;
switch((int)band - 1)
{
case 0: value = AudioLinkData(ALPASS_AUDIOBASS).r; break; 
case 1: value = AudioLinkData(ALPASS_AUDIOLOWMIDS).r; break; 
case 2: value = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r; break; 
case 3: value = AudioLinkData(ALPASS_AUDIOTREBLE).r; break; 
case 4: value = AudioLinkData(ALPASS_GENERALVU).z; break; 
}
return value;
}
float CalculateAudioLinkEffect(float band, float2 range, float strength)
{
float raw = GetAudioLinkBandValue(band);
return lerp(range.x, range.y, raw) * strength;
}
BacklaceAudioLinkData CalculateAudioLinkEffects() {
BacklaceAudioLinkData data = (BacklaceAudioLinkData)0;
if (!AudioLinkIsAvailable())
{
data.emission = _AudioLinkFallback;
data.rim = _AudioLinkFallback;
data.hueShift = _AudioLinkFallback;
data.decalHue = _AudioLinkFallback;
data.decalEmission = _AudioLinkFallback;
data.decalOpacity = _AudioLinkFallback;
data.vertexScale = _AudioLinkFallback;
data.outlineWidth = _AudioLinkFallback;
data.matcap = _AudioLinkFallback;
data.pathing = _AudioLinkFallback;
data.glitter = _AudioLinkFallback;
data.iridescence = _AudioLinkFallback;
return data;
}
data.emission = CalculateAudioLinkEffect(_AudioLinkEmissionBand, _AudioLinkEmissionRange, _AudioLinkEmissionStrength);
data.rim = CalculateAudioLinkEffect(_AudioLinkRimBand, _AudioLinkRimRange, _AudioLinkRimStrength);
data.hueShift = CalculateAudioLinkEffect(_AudioLinkHueShiftBand, _AudioLinkHueShiftRange, _AudioLinkHueShiftStrength);
data.decalHue = CalculateAudioLinkEffect(_AudioLinkDecalHueBand, _AudioLinkDecalHueRange, _AudioLinkDecalHueStrength);
data.decalEmission = CalculateAudioLinkEffect(_AudioLinkDecalEmissionBand, _AudioLinkDecalEmissionRange, _AudioLinkDecalEmissionStrength);
data.decalOpacity = CalculateAudioLinkEffect(_AudioLinkDecalOpacityBand, _AudioLinkDecalOpacityRange, _AudioLinkDecalOpacityStrength);
data.vertexScale = CalculateAudioLinkEffect(_AudioLinkVertexBand, _AudioLinkVertexRange, _AudioLinkVertexStrength);
data.outlineWidth = CalculateAudioLinkEffect(_AudioLinkOutlineBand, _AudioLinkOutlineRange, _AudioLinkOutlineStrength);
data.matcap = CalculateAudioLinkEffect(_AudioLinkMatcapBand, _AudioLinkMatcapRange, _AudioLinkMatcapStrength);
data.pathing = CalculateAudioLinkEffect(_AudioLinkPathingBand, _AudioLinkPathingRange, _AudioLinkPathingStrength);
data.glitter = CalculateAudioLinkEffect(_AudioLinkGlitterBand, _AudioLinkGlitterRange, _AudioLinkGlitterStrength);
data.iridescence = CalculateAudioLinkEffect(_AudioLinkIridescenceBand, _AudioLinkIridescenceRange, _AudioLinkIridescenceStrength);
return data;
}
#endif 
#endif 


#endif 

#if defined(_BACKLACE_LTCGI)


#ifndef BACKLACE_LTCGI_CGINC
#define BACKLACE_LTCGI_CGINC


#include "Packages/at.pimaker.ltcgi/Shaders/LTCGI.cginc"

#endif 


#endif 

struct VertexData
{
float4 vertex : POSITION;
float2 uv : TEXCOORD0;
float2 uv1 : TEXCOORD1;
float2 uv2 : TEXCOORD2;
float2 uv3 : TEXCOORD3;
float3 normal : NORMAL;
float4 tangentDir : TANGENT;
#if defined(_BACKLACE_VERTEX_DISTORTION)
fixed4 color : COLOR;
#endif 
UNITY_VERTEX_INPUT_INSTANCE_ID
};
struct FragmentData
{
float4 pos : SV_POSITION;
float3 normal : NORMAL;
float4 tangentDir : TANGENT;
float2 uv : TEXCOORD0;
float2 uv1 : TEXCOORD1;
float2 uv2 : TEXCOORD2;
float2 uv3 : TEXCOORD3;
float3 worldPos : TEXCOORD4;
float4 vertex : TEXCOORD5;
UNITY_SHADOW_COORDS(6)
UNITY_FOG_COORDS(7)
#if defined(LIGHTMAP_ON)
float2 lightmapUV : TEXCOORD8;
#endif 
#if defined(DYNAMICLIGHTMAP_ON)
float2 dynamicLightmapUV : TEXCOORD9;
#endif 
#if defined(_BACKLACE_MATCAP)
float2 matcapUV : TEXCOORD10;
#endif 
float3 worldObjectCenter : TEXCOORD11;
float4 scrPos : TEXCOORD12; 
#if defined(_BACKLACE_AUDIOLINK)
float4 alChannel1 : TEXCOORD13; 
float4 alChannel2 : TEXCOORD14; 
float2 alChannel3 : TEXCOORD15; 
#endif 
#if defined(_BACKLACE_PS1)
float4 affineUV : TEXCOORD16;
#endif 
UNITY_VERTEX_OUTPUT_STEREO
};
struct Unity_GlossyEnvironmentData
{
half roughness; 
half3 reflUVW;
};



#ifndef BACKLACE_PROPERTIES_CGINC
#define BACKLACE_PROPERTIES_CGINC

FragmentData FragData;
float3 NormalMap;
float3 Lightmap;
float GFS;
float3 NDF;
float3 DynamicLightmap;
float4 LightmapDirection;
float4 DynamicLightmapDirection;
float4 Msso;
float RoughnessSquared;
float RampAttenuation;
float LightAttenuation;

float _Alpha;
UNITY_DECLARE_TEX2D(_MainTex);
float4 _MainTex_ST;
UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
float4 _BumpMap_ST;
float4 _Color;
float _Cutoff;
float _BumpScale;
int _IndirectFallbackMode;
int _IndirectOverride;
int _FlipBackfaceNormals;

float _Occlusion;
float _Metallic;
float _Glossiness;
float _Specular;
float _SpecularIntensity;
float _ReplaceSpecular;
float _Anisotropy;
float _EnableSpecular;
samplerCUBE _FallbackCubemap;
UNITY_DECLARE_TEX2D_NOSAMPLER(_MSSO);
UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularTintTexture);
UNITY_DECLARE_TEX2D_NOSAMPLER(_TangentMap);
float4 _MSSO_ST;
float4 _SpecularTintTexture_ST;
float4 _SpecularTint;
float4 _TangentMap_ST;

float _LightingColorMode;
float _LightingDirectionMode;
float4 _ForcedLightDirection;
float _ViewDirectionOffsetX;
float _ViewDirectionOffsetY;
float _GreyscaleLighting;
float _ForceLightColor;
float4 _ForcedLightColor;

float _MainTex_UV;
float _MSSO_UV;
float _BumpMap_UV;
float _TangentMap_UV;
float _SpecularTintTexture_UV;

float _DirectIntensity;
float _IndirectIntensity;
float _VertexIntensity;
float _AdditiveIntensity;
float _BakedDirectIntensity;
float _BakedIndirectIntensity;

float _UV_Offset_X;
float _UV_Offset_Y;
float _UV_Scale_X;
float _UV_Scale_Y;
float _UV_Rotation;
float _UV_Scroll_X_Speed;
float _UV_Scroll_Y_Speed;

float3 _VertexManipulationPosition;
float3 _VertexManipulationScale;

#if defined(_BLENDMODE_FADE) || defined(_BACKLACE_DISTANCE_FADE)
sampler3D _DitherMaskLOD;
#endif 

#if defined(UNITY_PASS_FORWARDBASE)
float _EnableBaseLightLimit;
float _BaseLightMin;
float _BaseLightMax;
#endif 

#if defined(UNITY_PASS_FORWARDADD)
float _EnableAddLightLimit;
float _AddLightMin;
float _AddLightMax;
#endif 

#if defined(_BACKLACE_TOON)
float _TintMaskSource;
float4 _LitTint;
float4 _ShadowTint;
float _ShadowThreshold;
float _LitThreshold;
float _ToggleAmbientGradient;
float4 _AmbientUp;
float4 _AmbientDown;
float _AmbientIntensity;
float _AmbientSkyThreshold;
float _AmbientGroundThreshold;
#if defined(_ANIMEMODE_RAMP)
UNITY_DECLARE_TEX2D(_Ramp);
float _Ramp_UV;
float4 _RampColor;
float _RampOffset;
float _ShadowIntensity;
float _OcclusionOffsetIntensity;
float3 _RampMin;
#elif defined(_ANIMEMODE_PROCEDURAL)
float4 _AnimeShadowColor;
float _AnimeShadowThreshold;
float4 _AnimeHalftoneColor;
float _AnimeHalftoneThreshold;
float _AnimeShadowSoftness;
float _AnimeOcclusionToShadow;
#endif 
#endif 

#if defined(_BACKLACE_EMISSION)
float3 Emission;
float4 _EmissionColor;
float4 _EmissionMap_ST;
float _UseAlbedoAsEmission;
float _EmissionStrength;
float _EmissionMap_UV;
UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
#endif 

#if defined(_BACKLACE_SPECULAR)

#if defined(_SPECULARMODE_TOON) 
UNITY_DECLARE_TEX2D(_HighlightRamp);
float4 _HighlightRampColor;
float _HighlightIntensity;
float _HighlightRampOffset;
float _HighlightHardness;
#elif defined(_SPECULARMODE_HAIR) 
UNITY_DECLARE_TEX2D(_HairFlowMap);
float _HairFlowMap_UV;
float _PrimarySpecularShift;
float _SecondarySpecularShift;
float4 _SecondarySpecularColor;
float _SpecularExponent;
#elif defined(_SPECULARMODE_CLOTH) 
float4 _SheenColor;
float _SheenIntensity;
float _SheenRoughness;
#endif 

#if defined(_BACKLACE_VERTEX_SPECULAR) 
float3 VertexLightDir;
#endif 
#endif 

#if defined(_BACKLACE_DECAL1)
UNITY_DECLARE_TEX2D(_Decal1Tex);
float4 _Decal1Tint;
float2 _Decal1Position;
float2 _Decal1Scale;
float _Decal1Rotation;
float _Decal1_UV;
float _Decal1TriplanarSharpness;
int _Decal1BlendMode;
float _Decal1IsTriplanar;
float3 _Decal1TriplanarPosition;
float _Decal1TriplanarScale;
float3 _Decal1TriplanarRotation;
float _Decal1Repeat;
float2 _Decal1Scroll;
float _Decal1HueShift;
float _Decal1AutoCycleHue;
float _Decal1CycleSpeed;
#endif 

#if defined(_BACKLACE_DECAL2)
UNITY_DECLARE_TEX2D(_Decal2Tex);
float4 _Decal2Tint;
float2 _Decal2Position;
float2 _Decal2Scale;
float _Decal2Rotation;
float _Decal2_UV;
float _Decal2TriplanarSharpness;
int _Decal2BlendMode;
float _Decal2IsTriplanar;
float3 _Decal2TriplanarPosition;
float _Decal2TriplanarScale;
float3 _Decal2TriplanarRotation;
float _Decal2Repeat;
float2 _Decal2Scroll;
float _Decal2HueShift;
float _Decal2AutoCycleHue;
float _Decal2CycleSpeed;
#endif 

#if defined(_BACKLACE_UV_EFFECTS)

float _UVTriplanarMapping;
float3 _UVTriplanarPosition;
float _UVTriplanarScale;
float3 _UVTriplanarRotation;
float _UVTriplanarSharpness;

float _UVScreenspaceMapping;
float _UVScreenspaceTiling;

float _UVFlipbook;
float _UVFlipbookRows;
float _UVFlipbookColumns;
float _UVFlipbookFrames;
float _UVFlipbookFPS;
float _UVFlipbookScrub;

float _UVFlowmap;
UNITY_DECLARE_TEX2D(_UVFlowmapTex);
float _UVFlowmapStrength;
float _UVFlowmapSpeed;
float _UVFlowmapDistortion;
float _UVFlowmap_UV;
#endif 

#if defined(_BACKLACE_SHADOW_MAP)
UNITY_DECLARE_TEX2D(_ShadowMap);
float _ShadowMap_UV;
float _ShadowMapIntensity;
#endif 
#endif 




#ifndef BACKLACE_UNIVERSAL_CGINC
#define BACKLACE_UNIVERSAL_CGINC

#define BACKLACE_TRANSFORM_TEX(set, name) (set[name##_UV].xy * name##_ST.xy + name##_ST.zw)

struct BacklaceSurfaceData
{

float4 FinalColor;

float4 Albedo;
float3 NormalDir;
float3 TangentDir;
float3 BitangentDir;

float Metallic;
float Glossiness;
float Roughness;
float SquareRoughness;
float Specular;
float OneMinusReflectivity;
float Occlusion;

float3 ViewDir;
float3 LightDir;
float3 HalfDir;
float3 ReflectDir;

float NdotL;
float UnmaxedNdotL;
float NdotV;
float NdotH;
float LdotH;

float4 LightColor;
float4 SpecLightColor;
float3 IndirectDiffuse;
float3 Diffuse;
float3 DirectSpecular;
float3 IndirectSpecular;
float3 VertexDirectDiffuse;
float Attenuation;

float3 SpecularColor;
float3 EnergyCompensation;
float3 Dfg;
float3 CustomIndirect;

float2 ScreenCoords;
bool IsFrontFace;
};

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD) || defined(UNITY_PASS_META) || defined(_BLENDMODE_CUTOUT) || defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
#ifndef UNITY_PASS_OUTLINE

float2 Uvs[4];
void LoadUVs()
{
Uvs[0] = FragData.uv;
Uvs[1] = FragData.uv1;
Uvs[2] = FragData.uv2;
Uvs[3] = FragData.uv3;
}
void SampleAlbedo(inout BacklaceSurfaceData Surface)
{
Surface.Albedo = UNITY_SAMPLE_TEX2D(_MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _MainTex)) * _Color;
}
#endif 
#endif 

inline float remap(float value, float oldMin, float oldMax, float newMin, float newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float2 remap(float2 value, float2 oldMin, float2 oldMax, float2 newMin, float2 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float3 remap(float3 value, float3 oldMin, float3 oldMax, float3 newMin, float3 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float4 remap(float4 value, float4 oldMin, float4 oldMax, float4 newMin, float4 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline half Pow5(half x)
{
return x * x * x * x * x;
}

float sqr(float x)
{
return x * x;
}

inline float GetLuma(float3 color)
{
return dot(color, float3(0.299, 0.587, 0.114));
}


float fastpow(float x, float p)
{
return exp2(p * log2(x));
}

float Hash(float2 p)
{
float3 p3 = frac(float3(p.xyx) * .1031);
p3 += dot(p3, p3.yzx + 33.33);
return frac((p3.x + p3.y) * p3.z);
}

float2 Hash2(float2 p)
{
return float2(Hash(p), Hash(p + 0.123));
}

float3 HSVtoRGB(float3 c)
{
float4 K = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
float3 p = abs(frac(c.xxx + K.xyz) * 6.0 - K.www);
return c.z * lerp(K.xxx, saturate(p - K.xxx), c.y);
}

float3 RGBtoHSV(float3 c) {
float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
float4 p = lerp(float4(c.bg, K.wz), float4(c.gb, K.xy), step(c.b, c.g));
float4 q = lerp(float4(p.xyw, c.r), float4(c.r, p.yzx), step(p.x, c.r));
float d = q.x - min(q.w, q.y);
float E = 1e-10;
return float3(abs(q.z + (q.w - q.y) / (6.0 * d + E)), d / (q.x + E), q.x);
}

inline half3 FresnelTerm(half3 F0, half cosA)
{
half t = Pow5(1 - cosA);
return F0 + (1 - F0) * t;
}

float GTR2(float NdotH, float a)
{
float a2 = a * a;
float NdotH2 = NdotH * NdotH;
float denominator = NdotH2 * (a2 - 1.0) + 1.0;
denominator = UNITY_PI * denominator * denominator + 1e-7f;
return a2 / denominator;
}

float smithG_GGX(float NdotV, float alphaG)
{
float a = alphaG * alphaG;
float b = NdotV * NdotV;
return 1 / (NdotV + sqrt(a + b - a * b) + 1e-7f);
}

float3 ApplyHueShift(float3 inColor, float baseShift, float autoCycleToggle, float autoCycleSpeed)
{
float totalShift = baseShift;
if (autoCycleToggle > 0)
{
totalShift += frac(_Time.y * autoCycleSpeed);
}
float3 hsv = RGBtoHSV(inColor);
hsv.x = frac(hsv.x + totalShift);
return HSVtoRGB(hsv);
}

float3 Sinebow(float val)
{
val = 0.5 - val * 0.5; 
float3 sinebowColor = sin((val * UNITY_PI) + float3(0.0, 0.333 * UNITY_PI, 0.666 * UNITY_PI));
return sinebowColor * sinebowColor;
}

float3 GetCameraPos()
{
#if UNITY_SINGLE_PASS_STEREO
return (unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1]) * 0.5;
#else 
return _WorldSpaceCameraPos;
#endif 
}

float3 RotateVector(float3 pos, float3 rotation)
{
float3 angles = rotation * (UNITY_PI / 180.0);
float3 s, c;
sincos(angles, s, c);
float3x3 rotX = float3x3(1, 0, 0, 0, c.x, -s.x, 0, s.x, c.x);
float3x3 rotY = float3x3(c.y, 0, s.y, 0, 1, 0, -s.y, 0, c.y);
float3x3 rotZ = float3x3(c.z, -s.z, 0, s.z, c.z, 0, 0, 0, 1);
return mul(rotZ, mul(rotY, mul(rotX, pos)));
}

void GetTriplanarUVsAndWeights(
float3 worldPos, float3 normal,
float3 position, float scale, float3 rotation, float sharpness,
out float2 uvX, out float2 uvY, out float2 uvZ, out float3 weights)
{
float3 localPos = RotateVector(worldPos - position, -rotation);
weights = pow(abs(normal), sharpness);
weights /= dot(weights, 1.0.xxx); 
uvX = localPos.yz / scale;
uvY = localPos.xz / scale;
uvZ = localPos.xy / scale;
}

float4 SampleTriplanar(
Texture2D tex, SamplerState texSampler,
float2 uvX, float2 uvY, float2 uvZ, float3 weights,
bool isTiling, float2 scroll)
{
float4 sampleX, sampleY, sampleZ;
float2 scrollOffset = scroll * _Time.y;
if (isTiling)
{

sampleX = tex.Sample(texSampler, frac(uvX + scrollOffset));
sampleY = tex.Sample(texSampler, frac(uvY + scrollOffset));
sampleZ = tex.Sample(texSampler, frac(uvZ + scrollOffset));
}
else
{

uvX += 0.5;
uvY += 0.5;
uvZ += 0.5;
sampleX = 0;
if (all(saturate(uvX) == uvX))
{
sampleX = tex.Sample(texSampler, uvX);
}
sampleY = 0;
if (all(saturate(uvY) == uvY))
{
sampleY = tex.Sample(texSampler, uvY);
}
sampleZ = 0;
if (all(saturate(uvZ) == uvZ))
{
sampleZ = tex.Sample(texSampler, uvZ);
}
}
return sampleX * weights.x + sampleY * weights.y + sampleZ * weights.z;
}

float4 SampleTextureTriplanar(Texture2D tex, SamplerState texSampler, float3 worldPos,
float3 normal, float3 position, float scale, float3 rotation,
float sharpness, bool isTiling, float2 scroll)
{

float2 uvX, uvY, uvZ;
float3 weights;
GetTriplanarUVsAndWeights(worldPos, normal, position, scale, rotation, sharpness, uvX, uvY, uvZ, weights);

return SampleTriplanar(tex, texSampler, uvX, uvY, uvZ, weights, isTiling, scroll);
}
float2 ApplyFlipbook(float2 uvs, float columns, float rows, float totalFrames, float fps, float scrub)
{
float frame = floor(frac(fps * _Time.y + scrub) * totalFrames);
float col = fmod(frame, columns);
float row = floor(frame / columns);
float2 cellSize = 1.0 / float2(columns, rows);
row = (rows - 1) - row;
float2 outputUVs = (uvs * cellSize) + float2(col, row) * cellSize;
return outputUVs;
}

float2 ManipulateUVs(float2 uv, float rotation, float scalex, float scaley, float offsetx, float offsety, float scrollx, float scrolly)
{
float2 finalUV = uv;
if (rotation != 0)
{
finalUV = uv - 0.5;
float angle = -rotation * (UNITY_PI / 180.0);
float s = sin(angle);
float c = cos(angle);
float2x2 rotationMatrix = float2x2(c, -s, s, c);
finalUV = mul(rotationMatrix, finalUV);
finalUV += 0.5;
}
finalUV *= float2(scalex, scaley);
finalUV += float2(offsetx, offsety);
finalUV += float2(scrollx, scrolly) * _Time.y;
return finalUV;
}

float GetTiltedCheckerboardPattern(float2 screenPos, float scale)
{
float u = screenPos.x + screenPos.y;
float v = screenPos.x - screenPos.y;
float2 gridPos = floor(float2(u, v) / scale);
return fmod(gridPos.x + gridPos.y, 2.0);
}

#if defined(_BACKLACE_DECAL1) || defined(_BACKLACE_DECAL2)
void ApplyDecal_UVSpace(inout float4 baseAlbedo, float2 baseUV, Texture2D decalTex, SamplerState decalSampler, float4 tint, float2 position, float2 scale, float rotation, int blendMode, float repeat, float2 scroll, float hueShift, float autoCycle, float cycleSpeed, float alHue, float alEmission, float alOpacity)
{
baseUV += scroll * _Time.y;
float angle = -rotation * (UNITY_PI / 180.0);
float s = sin(angle);
float c = cos(angle);
float2x2 rotationMatrix = float2x2(c, -s, s, c);
float2 localUV = baseUV - position;
localUV = mul(rotationMatrix, localUV);
localUV /= max(scale, 0.0001);
localUV += 0.5;
if (repeat == 1) 
{
localUV = frac(localUV);
}
else 
{
if (any(saturate(localUV) != localUV))
{
return;
}
}
float4 decalColor = decalTex.Sample(decalSampler, localUV) * tint;
decalColor.rgb = ApplyHueShift(decalColor.rgb, hueShift + alHue, autoCycle, cycleSpeed);
decalColor.a *= alOpacity;
decalColor.rgb *= alEmission;
switch(blendMode)
{
case 0: baseAlbedo.rgb += decalColor.rgb * decalColor.a; break; 
case 1: baseAlbedo.rgb = lerp(baseAlbedo.rgb, baseAlbedo.rgb * decalColor.rgb, decalColor.a); break; 
case 2: baseAlbedo.rgb = lerp(baseAlbedo.rgb, decalColor.rgb, decalColor.a); break; 
}
}
void ApplyDecal_Triplanar(inout float4 baseAlbedo, float3 worldPos, float3 normal, Texture2D decalTex, SamplerState decalSampler, float4 tint, float3 position, float scale, float3 rotation, float sharpness, int blendMode, float repeat, float2 scroll, float hueShift, float autoCycle, float cycleSpeed, float alHue, float alEmission, float alOpacity)
{
float4 decalColor = SampleTextureTriplanar(decalTex, decalSampler, worldPos, normal, position, scale, rotation, sharpness, repeat > 0.5, scroll);
decalColor *= tint;
if (hueShift != 0) {
decalColor.rgb = ApplyHueShift(decalColor.rgb, hueShift + alHue, autoCycle, cycleSpeed);
}
decalColor.a *= alOpacity;
decalColor.rgb *= alEmission;
switch(blendMode)
{
case 0: baseAlbedo.rgb += decalColor.rgb * decalColor.a; break;
case 1: baseAlbedo.rgb = lerp(baseAlbedo.rgb, baseAlbedo.rgb * decalColor.rgb, decalColor.a); break;
case 2: baseAlbedo.rgb = lerp(baseAlbedo.rgb, decalColor.rgb, decalColor.a); break;
}
}

#if defined(_BACKLACE_DECAL1)
void ApplyDecal1(inout BacklaceSurfaceData Surface, FragmentData i, float2 Uvs[4])
{
float alHue = 0;
float alEmission = 1;
float alOpacity = 1;
#if defined(_BACKLACE_AUDIOLINK)
alHue = i.alChannel2.w;
alEmission = i.alChannel3.x;
alOpacity = i.alChannel3.y;
#endif 
float4 decalApplied = (_DecalStage == 0) ? Surface.Albedo : float4(Surface.FinalColor.rgb, 1.0);
[branch] if (_Decal1IsTriplanar == 1)
{
ApplyDecal_Triplanar(decalApplied, i.worldPos, Surface.NormalDir, _Decal1Tex, sampler_Decal1Tex, _Decal1Tint, _Decal1TriplanarPosition.xyz, _Decal1TriplanarScale, _Decal1TriplanarRotation.xyz, _Decal1TriplanarSharpness, _Decal1BlendMode, _Decal1Repeat, _Decal1Scroll.xy, _Decal1HueShift, _Decal1AutoCycleHue, _Decal1CycleSpeed, alHue, alEmission, alOpacity);
}
else
{
ApplyDecal_UVSpace(decalApplied, Uvs[_Decal1_UV], _Decal1Tex, sampler_Decal1Tex, _Decal1Tint, _Decal1Position.xy, _Decal1Scale.xy, _Decal1Rotation, _Decal1BlendMode, _Decal1Repeat, _Decal1Scroll, _Decal1HueShift, _Decal1AutoCycleHue, _Decal1CycleSpeed, alHue, alEmission, alOpacity);
}
[branch] if (_DecalStage == 0) 
{
Surface.Albedo = decalApplied;
}
else 
{
Surface.FinalColor.rgb = decalApplied.rgb;
}
}
#endif 

#if defined(_BACKLACE_DECAL2)
void ApplyDecal2(inout BacklaceSurfaceData Surface, FragmentData i, float2 Uvs[4])
{
float alHue = 0;
float alEmission = 1;
float alOpacity = 1;
#if defined(_BACKLACE_AUDIOLINK)
alHue = i.alChannel2.w;
alEmission = i.alChannel3.x;
alOpacity = i.alChannel3.y;
#endif 
float4 decalApplied = (_DecalStage == 0) ? Surface.Albedo : float4(Surface.FinalColor.rgb, 1.0);
[branch] if (_Decal2IsTriplanar == 1)
{
ApplyDecal_Triplanar(decalApplied, i.worldPos, Surface.NormalDir, _Decal2Tex, sampler_Decal2Tex, _Decal2Tint, _Decal2TriplanarPosition.xyz, _Decal2TriplanarScale, _Decal2TriplanarRotation.xyz, _Decal2TriplanarSharpness, _Decal2BlendMode, _Decal2Repeat, _Decal2Scroll, _Decal2HueShift, _Decal2AutoCycleHue, _Decal2CycleSpeed, alHue, alEmission, alOpacity);
}
else
{
ApplyDecal_UVSpace(decalApplied, Uvs[_Decal2_UV], _Decal2Tex, sampler_Decal2Tex, _Decal2Tint, _Decal2Position.xy, _Decal2Scale.xy, _Decal2Rotation, _Decal2BlendMode, _Decal2Repeat, _Decal2Scroll, _Decal2HueShift, _Decal2AutoCycleHue, _Decal2CycleSpeed, alHue, alEmission, alOpacity);
}
[branch] if (_DecalStage == 0) 
{
Surface.Albedo = decalApplied;
}
else 
{
Surface.FinalColor.rgb = decalApplied.rgb;
}
}
#endif 
#endif 

#if defined(_BACKLACE_UV_EFFECTS)
void ApplyUVEffects(inout float2 uv, in BacklaceSurfaceData Surface)
{

[branch] if (_UVTriplanarMapping == 1)
{
float2 uvX, uvY, uvZ;
float3 weights;
GetTriplanarUVsAndWeights(
FragData.worldPos, Surface.NormalDir,
_UVTriplanarPosition, _UVTriplanarScale, _UVTriplanarRotation, _UVTriplanarSharpness,
uvX, uvY, uvZ, weights
);
uv = uvX * weights.x + uvY * weights.y + uvZ * weights.z;
}

[branch] if (_UVScreenspaceMapping == 1)
{
uv = frac(Surface.ScreenCoords * _UVScreenspaceTiling);
}

[branch] if (_UVFlipbook == 1) {
uv = ApplyFlipbook(uv, _UVFlipbookColumns, _UVFlipbookRows, _UVFlipbookFrames, _UVFlipbookFPS, _UVFlipbookScrub);
}

[branch] if (_UVFlowmap == 1) {
float2 flow = UNITY_SAMPLE_TEX2D(_UVFlowmapTex, uv).rg * 2.0 - 1.0;
uv += flow * _UVFlowmapStrength * frac(_Time.y * _UVFlowmapSpeed);
}
}
#endif 

#if defined(_BACKLACE_DISSOLVE)
float _DissolveProgress;
UNITY_DECLARE_TEX2D(_DissolveNoiseTex);
float _DissolveNoiseScale;
float4 _DissolveEdgeColor;
int _DissolveType;
float _DissolveEdgeWidth;
float4 _DissolveDirection;
int _DissolveDirectionSpace;
float _DissolveDirectionBounds;
float _DissolveVoxelDensity;
float _DissolveEdgeSharpness;
float _DissolveEdgeMode;
float GetDissolveMapValue(float3 worldPos, float3 vertexPos, float3 normalDir)
{
float dissolveMapValue = 0;
switch(_DissolveType)
{
case 0: 
{
dissolveMapValue = SampleTextureTriplanar(
_DissolveNoiseTex, sampler_DissolveNoiseTex,
worldPos, normalDir,
float3(0,0,0), _DissolveNoiseScale, float3(0,0,0),
2.0, true, float2(0, 0)
).r;
break;
}
case 1: 
{
float3 position = (_DissolveDirectionSpace == 0) ? vertexPos : worldPos;
float3 direction = normalize(_DissolveDirection.xyz);
dissolveMapValue = dot(position, direction) / max(_DissolveDirectionBounds, 0.001);
dissolveMapValue = saturate(dissolveMapValue * 0.5 + 0.5); 
break;
}
case 2: 
{
float3 voxelID = floor(worldPos * _DissolveVoxelDensity);
dissolveMapValue = Hash(voxelID.xy + voxelID.z);
break;
}
}
return dissolveMapValue;
}
#endif 

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD) || defined(UNITY_PASS_META)

void SampleMSSO(inout BacklaceSurfaceData Surface)
{
Msso = UNITY_SAMPLE_TEX2D_SAMPLER(_MSSO, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _MSSO));
Surface.Occlusion = lerp(1, Msso.a, _Occlusion);
}

#if defined(_BACKLACE_SPECULAR)

void GetSampleData(inout BacklaceSurfaceData Surface)
{
Surface.Metallic = Msso.r * _Metallic;
Surface.Glossiness = Msso.g * _Glossiness;
Surface.Specular = Msso.b * _Specular;
Surface.Roughness = 1 - Surface.Glossiness;
Surface.SquareRoughness = max(Surface.Roughness * Surface.Roughness, 0.002);
}

void SetupAlbedoAndSpecColor(inout BacklaceSurfaceData Surface)
{
float3 specularTint = (UNITY_SAMPLE_TEX2D_SAMPLER(_SpecularTintTexture, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _SpecularTintTexture)).rgb * _SpecularTint).rgb;
float sp = Surface.Specular;
Surface.SpecularColor = lerp(float3(sp, sp, sp), Surface.Albedo.rgb, Surface.Metallic);
if (_ReplaceSpecular == 1)
{
Surface.SpecularColor = specularTint;
}
else
{
Surface.SpecularColor *= specularTint;
}
Surface.OneMinusReflectivity = (1 - sp) - (Surface.Metallic * (1 - sp));
Surface.Albedo.rgb *= Surface.OneMinusReflectivity;
}
#endif 

#if defined(_BACKLACE_EMISSION)

void CalculateEmission(inout BacklaceSurfaceData Surface)
{
float3 baseEmission = _EmissionColor.rgb;
[branch] if (_UseAlbedoAsEmission > 0)
{
baseEmission = lerp(baseEmission, Surface.Albedo.rgb, _UseAlbedoAsEmission);
}
float3 emissionMap = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _EmissionMap)).rgb;
Emission = baseEmission * emissionMap * _EmissionStrength;
}
#endif 
#endif 
#endif 




#ifndef BACKLACE_LIGHTING_CGINC
#define BACKLACE_LIGHTING_CGINC

struct BacklaceLightData
{
float3 directColor;
float3 indirectColor;
float3 direction;
float attenuation;
};

half3 Unity_SafeNormalize(half3 inVec)
{
half dp3 = max(0.001f, dot(inVec, inVec));
return inVec * rsqrt(dp3);
}

half3 GetSHLength()
{
half3 x, x1;
x.r = length(unity_SHAr);
x.g = length(unity_SHAg);
x.b = length(unity_SHAb);
x1.r = length(unity_SHBr);
x1.g = length(unity_SHBg);
x1.b = length(unity_SHBb);
return x + x1;
}

float FadeShadows(FragmentData i, float attenuation)
{
#if HANDLE_SHADOWS_BLENDING_IN_GI && !defined(SHADOWS_SHADOWMASK)
float viewZ = dot(_WorldSpaceCameraPos - i.worldPos, UNITY_MATRIX_V[2].xyz);
float shadowFadeDistance = UnityComputeShadowFadeDistance(i.worldPos, viewZ);
float shadowFade = UnityComputeShadowFade(shadowFadeDistance);
attenuation = saturate(attenuation + shadowFade);
#endif 
#if defined(LIGHTMAP_ON) && defined(SHADOWS_SHADOWMASK)
float viewZ = dot(_WorldSpaceCameraPos - i.worldPos, UNITY_MATRIX_V[2].xyz);
float shadowFadeDistance = UnityComputeShadowFadeDistance(i.worldPos, viewZ);
float shadowFade = UnityComputeShadowFade(shadowFadeDistance);
float bakedAttenuation = UnitySampleBakedOcclusion(i.lightmapUV, i.worldPos);
attenuation = UnityMixRealtimeAndBakedShadows(attenuation, bakedAttenuation, shadowFade);
#endif 
return attenuation;
}

float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
{
float R0 = max(0, L0);
float3 R1 = 0.5f * L1;
float lenR1 = length(R1);
float q = dot(normalize(R1), n) * 0.5 + 0.5;
q = saturate(q);
float p = 1.0f + 2.0f * lenR1 / R0;
float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
}

half3 BetterSH9(half4 normal)
{
float3 indirect;
float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
indirect = max(0, indirect);
indirect += SHEvalLinearL2(normal);
return indirect;
}

float NonlinearSH(float L0, float3 L1, float3 normal)
{
float R0 = L0;
float3 R1 = 0.5f * L1;
float lenR1 = length(R1);
float q = dot(normalize(R1), normal) * 0.5 + 0.5;
q = max(0, q);
float p = 1.0f + 2.0f * lenR1 / R0;
float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
}

float3 ShadeSHNL(float3 normal)
{
float3 indirect;
indirect.r = NonlinearSH(unity_SHAr.w, unity_SHAr.xyz, normal);
indirect.g = NonlinearSH(unity_SHAg.w, unity_SHAg.xyz, normal);
indirect.b = NonlinearSH(unity_SHAb.w, unity_SHAb.xyz, normal);
return max(0, indirect);
}

void OpenLitShadeSH9ToonDouble(float3 lightDirection, out float3 shMax, out float3 shMin)
{
#if !defined(LIGHTMAP_ON)
float3 N = lightDirection * 0.666666;
float4 vB = N.xyzz * N.yzzx;
float3 res = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
res.r += dot(unity_SHBr, vB);
res.g += dot(unity_SHBg, vB);
res.b += dot(unity_SHBb, vB);
res += unity_SHC.rgb * (N.x * N.x - N.y * N.y);
float3 l1;
l1.r = dot(unity_SHAr.rgb, N);
l1.g = dot(unity_SHAg.rgb, N);
l1.b = dot(unity_SHAb.rgb, N);
shMax = res + l1;
shMin = res - l1;
#if defined(UNITY_COLORSPACE_GAMMA)
shMax = LinearToGammaSpace(shMax);
shMin = LinearToGammaSpace(shMin);
#endif 
#else 
shMax = 0.0;
shMin = 0.0;
#endif 
}

float3 GetUniversalIndirectLight(float3 normal)
{
float3 indirectColor = float3(0, 0, 0);
#if defined(UNITY_PASS_FORWARDBASE)
indirectColor = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
#if defined(LIGHTMAP_ON)
float3 indirectBaked = DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, FragData.lightmapUV));
#if defined(DIRLIGHTMAP_COMBINED)
float3 combinedBaked = DecodeDirectionalLightmap(indirectBaked, LightmapDirection, normal);
float3 directBaked = combinedBaked - indirectBaked;
indirectColor = (indirectBaked * _BakedIndirectIntensity) + (directBaked * _BakedDirectIntensity);
#else
indirectColor = indirectBaked * _BakedIndirectIntensity;
#endif
#endif
#if defined(DYNAMICLIGHTMAP_ON)
#if defined(DIRLIGHTMAP_COMBINED)
indirectColor += DecodeDirectionalLightmap(DynamicLightmap, DynamicLightmapDirection, normal);
#else
indirectColor += DynamicLightmap;
#endif
#endif
#endif
return indirectColor;
}

void GetBacklaceLightColor(inout BacklaceLightData lightData, float3 normal)
{
#if defined(UNITY_PASS_FORWARDBASE)
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = GetUniversalIndirectLight(normal);
lightData.directColor = lerp(GetSHLength(), lightData.directColor, .75);
if (any(_WorldSpaceLightPos0.xyz) == 0 || _LightColor0.a < 0.01)
{
#if defined(_BACKLACE_TOON)
lightData.directColor = lightData.indirectColor;
lightData.indirectColor = 0;
#endif 
}
#else 
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = 0;
#endif
}

void GetPoiyomiLightColor(inout BacklaceLightData lightData, float3 normal)
{
#if defined(UNITY_PASS_FORWARDBASE)
float3 ambientMagic = max(BetterSH9(normalize(unity_SHAr + unity_SHAg + unity_SHAb)), 0);
float3 normalLight = _LightColor0.rgb + BetterSH9(float4(0, 0, 0, 1));
float magicLuma = GetLuma(ambientMagic);
float normalLuma = GetLuma(normalLight);
float totalLuma = magicLuma + normalLuma;
if (totalLuma > 0.0001)
{
float magicRatio = magicLuma / totalLuma;
float normalRatio = normalLuma / totalLuma;
float targetLuma = GetLuma(ambientMagic * magicRatio + normalLight * normalRatio);
float3 properLightColor = ambientMagic + normalLight;
float properLuminance = GetLuma(properLightColor);
lightData.directColor = properLightColor * max(0.0001, (targetLuma / properLuminance));
}
else
{
lightData.directColor = float3(0, 0, 0);
}
lightData.indirectColor = GetUniversalIndirectLight(normal);
bool lightExists = any(_WorldSpaceLightPos0.xyz) && _LightColor0.a > 0.01;
#if defined(_BACKLACE_TOON)
if (!lightExists > 0)
{
lightData.directColor = lightData.indirectColor;
lightData.indirectColor = 0;
}
#endif 
#else 
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = 0;
#endif
}

void GetOpenLitLightColor(inout BacklaceLightData lightData, float3 normal)
{
#if defined(UNITY_PASS_FORWARDBASE)
float3 directSH, indirectSH_OpenLit;
OpenLitShadeSH9ToonDouble(normal, directSH, indirectSH_OpenLit);
lightData.directColor = directSH + _LightColor0.rgb;
lightData.indirectColor = GetUniversalIndirectLight(normal);
bool lightExists = any(_WorldSpaceLightPos0.xyz) && _LightColor0.a > 0.01;
#if defined(_BACKLACE_TOON)
if (!lightExists)
{
lightData.directColor = lightData.indirectColor;
lightData.indirectColor = 0;
}
#endif 
#else 
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = 0;
#endif
}

void GetStandardLightColor(inout BacklaceLightData lightData, float3 normal)
{
#if defined(UNITY_PASS_FORWARDBASE)
bool lightExists = any(_WorldSpaceLightPos0.xyz) && _LightColor0.a > 0.01;
lightData.indirectColor = GetUniversalIndirectLight(normal);
if (lightExists)
{
lightData.directColor = _LightColor0.rgb;
}
else
{
lightData.directColor = float3(0, 0, 0);
}
#if defined(_BACKLACE_TOON)
if (!lightExists)
{
lightData.directColor = lightData.indirectColor;
lightData.indirectColor = 0;
}
#endif 
#else 
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = 0;
#endif
}

void GetMochieLightColor(inout BacklaceLightData lightData, float3 normal)
{
#if defined(UNITY_PASS_FORWARDBASE)
bool lightExists = any(_WorldSpaceLightPos0.xyz);
lightData.indirectColor = GetUniversalIndirectLight(normal);
if (lightExists)
{
lightData.directColor = _LightColor0.rgb;
}
else
{
lightData.directColor = ShadeSHNL(normal);
}
if (!lightExists || _LightColor0.a < 0.01)
{
#if defined(_BACKLACE_TOON)
lightData.directColor = lightData.indirectColor;
lightData.indirectColor = 0;
#endif 
}
#else 
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = 0;
#endif
}

float3 GetBacklaceLightDirection()
{
return normalize(UnityWorldSpaceLightDir(FragData.worldPos));
}

float3 GetForcedWorldLightDirection()
{
return normalize(_ForcedLightDirection.xyz);
}

float3 GetViewLightDirection()
{
float3 viewLightDirection = -UNITY_MATRIX_V[2].xyz;
viewLightDirection += UNITY_MATRIX_V[0].xyz * _ViewDirectionOffsetX; 
viewLightDirection += UNITY_MATRIX_V[1].xyz * _ViewDirectionOffsetY; 
return normalize(viewLightDirection);
}

float3 LimitLightBrightness(float3 lightColor, float minVal, float maxVal)
{

float brightness = max(lightColor.r, max(lightColor.g, lightColor.b));

if (brightness > 0.0001)
{
float newBrightness = clamp(brightness, minVal, maxVal);
float scale = newBrightness / brightness;
return lightColor * scale;
}
return lightColor;
}

void GetForwardAddLightData(out BacklaceLightData lightData)
{
lightData.directColor = _LightColor0.rgb;
lightData.indirectColor = float3(0, 0, 0);
lightData.direction = normalize(_WorldSpaceLightPos0.xyz - FragData.worldPos.xyz * _WorldSpaceLightPos0.w);
#if defined(POINT) || defined(POINT_COOKIE)
unityShadowCoord3 lightCoord = mul(unity_WorldToLight, float4(FragData.worldPos, 1)).xyz;
lightData.attenuation = tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
#if defined(POINT_COOKIE)
lightData.attenuation *= texCUBE(_LightTexture0, lightCoord).w;
#endif
#elif defined(SPOT)
unityShadowCoord4 lightCoord = mul(unity_WorldToLight, float4(FragData.worldPos, 1));
lightData.attenuation = (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
#else
UNITY_LIGHT_ATTENUATION(atten, FragData, FragData.worldPos);
lightData.attenuation = atten;
#endif
lightData.attenuation *= UNITY_SHADOW_ATTENUATION(FragData, FragData.worldPos);
}

void GetLightData(inout BacklaceSurfaceData Surface)
{
BacklaceLightData lightData;
#if defined(UNITY_PASS_FORWARDBASE)
UNITY_LIGHT_ATTENUATION(attenuation, FragData, FragData.worldPos);
lightData.attenuation = FadeShadows(FragData, attenuation);
switch(_LightingDirectionMode)
{
case 1: lightData.direction = GetForcedWorldLightDirection(); break;
case 2: lightData.direction = GetViewLightDirection(); break;
case 0: default: lightData.direction = GetBacklaceLightDirection(); break;
}
if (any(_WorldSpaceLightPos0.xyz) == 0 || _LightColor0.a < 0.01)
{
lightData.direction = normalize(unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz);
}
Surface.LightDir = lightData.direction;
Surface.HalfDir = Unity_SafeNormalize(Surface.LightDir + Surface.ViewDir);
switch(_LightingColorMode)
{
case 1: GetPoiyomiLightColor(lightData, Surface.NormalDir); break;
case 2: GetOpenLitLightColor(lightData, Surface.NormalDir); break;
case 3: GetStandardLightColor(lightData, Surface.NormalDir); break;
case 4: GetMochieLightColor(lightData, Surface.NormalDir); break;
case 0: default: GetBacklaceLightColor(lightData, Surface.NormalDir); break;
}
#else 
GetForwardAddLightData(lightData);
Surface.LightDir = lightData.direction;
Surface.HalfDir = Unity_SafeNormalize(Surface.LightDir + Surface.ViewDir);
switch(_LightingColorMode)
{
case 1: GetPoiyomiLightColor(lightData, Surface.NormalDir); break;
case 2: GetOpenLitLightColor(lightData, Surface.NormalDir); break;
case 3: GetStandardLightColor(lightData, Surface.NormalDir); break;
case 4: GetMochieLightColor(lightData, Surface.NormalDir); break;
case 0: default: GetBacklaceLightColor(lightData, Surface.NormalDir); break;
}
#endif

float3 finalDirectColor = lightData.directColor;
float3 finalIndirectColor = lightData.indirectColor;

#if defined(UNITY_PASS_FORWARDBASE)
finalDirectColor *= _DirectIntensity;
finalIndirectColor *= _IndirectIntensity;
if (_EnableBaseLightLimit == 1)
{
finalDirectColor = LimitLightBrightness(finalDirectColor, _BaseLightMin, _BaseLightMax);
finalIndirectColor = LimitLightBrightness(finalIndirectColor, _BaseLightMin, _BaseLightMax);
}
#else 
finalDirectColor *= _AdditiveIntensity;
if (_EnableAddLightLimit == 1)
{
finalDirectColor = LimitLightBrightness(finalDirectColor, _AddLightMin, _AddLightMax);
}
#endif 

float3 combinedLight = finalDirectColor;
if (_GreyscaleLighting != 0)
{
float luma = GetLuma(combinedLight);
combinedLight = lerp(combinedLight, float3(luma, luma, luma), _GreyscaleLighting);
}
if (_ForceLightColor != 0)
{
combinedLight = lerp(combinedLight, _ForcedLightColor.rgb, _ForceLightColor);
}

Surface.LightColor = float4(combinedLight, lightData.attenuation);
Surface.SpecLightColor = Surface.LightColor;
Surface.IndirectDiffuse = finalIndirectColor;
}
#endif 




#ifndef BACKLACE_EFFECTS_CGINC
#define BACKLACE_EFFECTS_CGINC

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD)
#if defined(_BACKLACE_DISSOLVE)

void ApplyDissolve(inout BacklaceSurfaceData Surface, FragmentData i)
{
float dissolveMapValue = GetDissolveMapValue(i.worldPos, i.vertex.xyz, Surface.NormalDir);
float halfWidth = max(_DissolveEdgeWidth, 0.0001) * 0.5;
if (_DissolveEdgeMode == 0) 
{
float fadeIn = smoothstep(0.0, halfWidth, _DissolveProgress);
float fadeOut = 1.0 - smoothstep(1.0 - halfWidth, 1.0, _DissolveProgress);
float masterIntensity = fadeIn * fadeOut;
float distanceFromLine = abs(dissolveMapValue - _DissolveProgress);
float baseGradient = 1.0 - smoothstep(0, halfWidth, distanceFromLine);
float hardnessPower = lerp(1.0, 16.0, _DissolveEdgeSharpness);
float edgeGlow = pow(baseGradient, hardnessPower);
edgeGlow *= masterIntensity;
float surfaceAlpha = step(_DissolveProgress, dissolveMapValue);
Surface.FinalColor.rgb += _DissolveEdgeColor.rgb * edgeGlow * _DissolveEdgeColor.a;
Surface.FinalColor.a = max(surfaceAlpha, edgeGlow * _DissolveEdgeColor.a);
}
else 
{
float startEdge = _DissolveProgress - halfWidth;
float endEdge = _DissolveProgress + halfWidth;
float alpha = saturate(smoothstep(startEdge, endEdge, dissolveMapValue));
Surface.FinalColor.a = alpha;
}
}
#endif 
#endif 

#if defined(_BACKLACE_POST_PROCESSING)
UNITY_DECLARE_TEX2D(_ColorGradingLUT);
float4 _RGBColor;
float _RGBBlendMode;
float _HSVMode;
float _HSVHue;
float _HSVSaturation;
float _HSVValue;
float _ToggleHueShift;
float _HueShift;
float _ToggleAutoCycle;
float _AutoCycleSpeed;
float _ColorGradingIntensity;
float _BlackAndWhite;
float _Brightness;
void ApplyPostProcessing(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 finalColor = Surface.FinalColor.rgb;

float3 tintedColor = lerp(finalColor * _RGBColor.rgb, _RGBColor.rgb, _RGBBlendMode);
finalColor = tintedColor;

float3 hsv = RGBtoHSV(finalColor);
[branch] if (_HSVMode == 1) 
{
hsv.x = frac(hsv.x + _HSVHue);
hsv.y += _HSVSaturation - 1.0;
hsv.z += _HSVValue - 1.0;
}
else if (_HSVMode == 2) 
{
hsv.x = frac(hsv.x + _HSVHue);
hsv.y *= _HSVSaturation;
hsv.z *= _HSVValue;
}
finalColor = HSVtoRGB(saturate(hsv));

[branch] if (_ToggleHueShift > 0)
{
#if defined(_BACKLACE_AUDIOLINK)
finalColor = ApplyHueShift(finalColor, _HueShift + i.alChannel1.z, _ToggleAutoCycle, _AutoCycleSpeed);
#else 
finalColor = ApplyHueShift(finalColor, _HueShift, _ToggleAutoCycle, _AutoCycleSpeed);
#endif 
}

[branch] if (_ColorGradingIntensity > 0)
{
float3 gradedColor = UNITY_SAMPLE_TEX2D(_ColorGradingLUT, finalColor.rg).rgb;
finalColor = lerp(finalColor, gradedColor, _ColorGradingIntensity);
}

[branch] if (_BlackAndWhite > 0)
{
float luma = GetLuma(finalColor);
finalColor = lerp(finalColor, float3(luma, luma, luma), _BlackAndWhite);
}

finalColor *= _Brightness;
Surface.FinalColor.rgb = finalColor;
}
#endif 

#if defined(_BACKLACE_DETAIL)
UNITY_DECLARE_TEX2D(_DetailAlbedoMap);
UNITY_DECLARE_TEX2D(_DetailNormalMap);
float _DetailMap_UV;
float _DetailTiling;
float _DetailNormalStrength;
void ApplyDetailMaps(inout BacklaceSurfaceData Surface)
{
float2 detailUV = Uvs[_DetailMap_UV] * _DetailTiling;
float4 detailAlbedo = UNITY_SAMPLE_TEX2D(_DetailAlbedoMap, detailUV);
Surface.Albedo.rgb *= detailAlbedo.rgb * 2 * detailAlbedo.a;
float3 detailNormalTS = UnpackScaleNormal(UNITY_SAMPLE_TEX2D(_DetailNormalMap, detailUV), _DetailNormalStrength);
float3 baseNormalTS = NormalMap;
NormalMap = normalize(float3(baseNormalTS.xy + detailNormalTS.xy, baseNormalTS.z * detailNormalTS.z));
}
#endif 

#if defined(_BACKLACE_SSS)
float _ThicknessMap_UV;
float4 _SSSColor;
float _SSSStrength;
float _SSSPower;
float _SSSDistortion;
UNITY_DECLARE_TEX2D(_SSSThicknessMap);
float _SSSThickness;
void ApplySubsurfaceScattering(inout BacklaceSurfaceData Surface)
{
float thickness = UNITY_SAMPLE_TEX2D(_SSSThicknessMap, Uvs[_ThicknessMap_UV]).r * _SSSThickness;
float3 scatterDir = normalize(Surface.LightDir + Surface.NormalDir * _SSSDistortion);
float scatterDot = dot(Surface.ViewDir, -scatterDir);
scatterDot = saturate(scatterDot);
float scatterFalloff = pow(scatterDot, _SSSPower);
float3 sss = Surface.LightColor.rgb * _SSSColor.rgb * scatterFalloff * _SSSStrength * thickness;
Surface.Diffuse += sss;
}
#endif 

#if defined(_BACKLACE_PARALLAX)
UNITY_DECLARE_TEX2D(_ParallaxMap);
float _ParallaxMap_UV;
float _ParallaxStrength;
float _ParallaxMode;
float _ParallaxSteps;
#if defined(_BACKLACE_PARALLAX_SHADOWS)
float ParallaxShadow;
float _ParallaxShadowSteps;
float _ParallaxShadowStrength;
#endif 
void ApplyParallax_Fast(inout float2 uv, in BacklaceSurfaceData Surface)
{
float height = UNITY_SAMPLE_TEX2D(_ParallaxMap, uv).r;
float3 viewDirTS = float3(dot(Surface.ViewDir, Surface.TangentDir), dot(Surface.ViewDir, Surface.BitangentDir), 0);
float2 offset = viewDirTS.xy * (height * _ParallaxStrength);
uv -= offset;
}
void ApplyParallax_Fancy(inout float2 uv, inout BacklaceSurfaceData Surface)
{
float3 viewDirTS = float3(dot(Surface.ViewDir, Surface.TangentDir), dot(Surface.ViewDir, Surface.BitangentDir), dot(Surface.ViewDir, Surface.NormalDir));
float numSteps = _ParallaxSteps;
float stepSize = 1.0 / numSteps;
float2 step = -viewDirTS.xy * _ParallaxStrength * stepSize;
float currentHeight = 1.0;
float2 currentUVOffset = 0;
float surfaceHeight = 1.0;
[loop] for (int i = 0; i < numSteps; i++)
{
currentHeight -= stepSize;
currentUVOffset += step;
surfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + currentUVOffset, 0).r;
if (surfaceHeight > currentHeight)
{
currentUVOffset -= step;
currentHeight += stepSize;
float prevSurfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + currentUVOffset, 0).r;
float distanceToSurface = currentHeight - surfaceHeight;
float distanceBetweenSamples = surfaceHeight - prevSurfaceHeight;
currentUVOffset += step * (distanceToSurface / max(distanceBetweenSamples, 0.001));
uv += currentUVOffset;
surfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv, 0).r;
break;
}
}
#if defined(_BACKLACE_PARALLAX_SHADOWS)
ParallaxShadow = 1.0;
float3 lightDirTS = float3(dot(Surface.LightDir, Surface.TangentDir), dot(Surface.LightDir, Surface.BitangentDir), dot(Surface.LightDir, Surface.NormalDir));
float shadowSteps = _ParallaxShadowSteps;
float shadowStepSize = 1.0 / shadowSteps;
float2 shadowStep = lightDirTS.xy * _ParallaxStrength * shadowStepSize;
float shadowRayHeight = surfaceHeight + shadowStepSize;
[loop] for (int j = 0; j < shadowSteps; j++)
{
float shadowSampleHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + shadowStep * j, 0).r;
if (shadowSampleHeight > shadowRayHeight)
{
ParallaxShadow = 0.0;
break;
}
shadowRayHeight += shadowStepSize;
}
ParallaxShadow = lerp(1.0, ParallaxShadow, _ParallaxShadowStrength);
#endif 
}
#endif 

#if defined(_BACKLACE_CUBEMAP)
samplerCUBE _CubemapTex;
float4 _CubemapTint;
float _CubemapIntensity;
int _CubemapBlendMode;
void ApplyCubemap(inout BacklaceSurfaceData Surface)
{
float3 cubemapColor = texCUBE(_CubemapTex, Surface.ReflectDir).rgb * _CubemapTint.rgb;
float intensity = _CubemapIntensity;
switch(_CubemapBlendMode)
{
case 0: 
Surface.FinalColor.rgb += cubemapColor * intensity;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * cubemapColor, intensity);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, cubemapColor, intensity);
break;
}
}
#endif 

#if defined(_BACKLACE_MATCAP)
UNITY_DECLARE_TEX2D(_MatcapTex);
UNITY_DECLARE_TEX2D(_MatcapMask);
float4 _MatcapTex_ST;
float _MatcapIntensity;
float3 _MatcapTint;
float _MatcapSmoothnessEnabled;
float _MatcapSmoothness;
float _MatcapMask_UV;
int _MatcapBlendMode;
void ApplyMatcap(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 matcapColor;
[branch] if (_MatcapSmoothnessEnabled == 1)
{

float mipLevel = _MatcapSmoothness * 10.0;
matcapColor = UNITY_SAMPLE_TEX2D_LOD(_MatcapTex, i.matcapUV, mipLevel).rgb;
}
else
{
matcapColor = UNITY_SAMPLE_TEX2D(_MatcapTex, i.matcapUV).rgb;
}
matcapColor *= _MatcapTint.rgb;
float mask = UNITY_SAMPLE_TEX2D(_MatcapMask, Uvs[_MatcapMask_UV]).r;
float finalMatcapIntensity = _MatcapIntensity;
#if defined(_BACKLACE_AUDIOLINK)
finalMatcapIntensity *= i.alChannel1.w;
#endif 
float3 finalMatcap = matcapColor * finalMatcapIntensity * mask;
switch(_MatcapBlendMode)
{
case 0: 
Surface.FinalColor.rgb += finalMatcap;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * matcapColor, mask * _MatcapIntensity);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, matcapColor * _MatcapIntensity, mask);
break;
}
}
#endif 

#if defined(_BACKLACE_RIMLIGHT)
float3 Rimlight;
float4 _RimColor;
float _RimWidth;
float _RimIntensity;
float _RimLightBased;
void CalculateRimlight(inout BacklaceSurfaceData Surface)
{
float fresnel = 1 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
fresnel = pow(fresnel, _RimWidth);
[branch] if (_RimLightBased > 0)
{
fresnel *= Surface.NdotL;
}
Rimlight = fresnel * _RimColor.rgb * _RimIntensity;
}
#endif 

#if defined(_BACKLACE_CLEARCOAT)
UNITY_DECLARE_TEX2D(_ClearcoatMap);
float4 _ClearcoatMap_ST;
float _ClearcoatStrength;
float _ClearcoatRoughness;
float _ClearcoatReflectionStrength;
float _ClearcoatMap_UV;
float4 _ClearcoatColor;
void CalculateClearcoat(inout BacklaceSurfaceData Surface, out float3 highlight, out float3 occlusion)
{
float4 clearcoatMap = UNITY_SAMPLE_TEX2D(_ClearcoatMap, Uvs[_ClearcoatMap_UV]);
float mask = _ClearcoatStrength * clearcoatMap.r;
float roughness = _ClearcoatRoughness * clearcoatMap.g;
float3 F0 = lerp(0.04, 1.0, _ClearcoatReflectionStrength);
float3 fresnel = FresnelTerm(F0, Surface.LdotH);
float squareRoughness = max(roughness * roughness, 0.002);
float distribution = GTR2(Surface.NdotH, squareRoughness);
float geometry = smithG_GGX(Surface.NdotL, squareRoughness) * smithG_GGX(Surface.NdotV, squareRoughness);
float3 clearcoatSpec = fresnel * distribution * geometry;
highlight = clearcoatSpec * lerp(Surface.LightColor.rgb, Surface.LightColor.rgb * _ClearcoatColor.rgb, _ClearcoatColor.a) * mask;
float3 occlusionTint = lerp(1.0, _ClearcoatColor.rgb, fresnel);
occlusion = lerp(1.0, occlusionTint, mask);
}
#if defined(_BACKLACE_VERTEX_SPECULAR) && defined(VERTEXLIGHT_ON)
void AddClearcoatVertex(inout BacklaceSurfaceData Surface)
{
float3 VLightDir = normalize(VertexLightDir);
if (dot(VLightDir, VLightDir) < 0.01) return;
float3 F0 = lerp(0.04, 1.0, _ClearcoatReflectionStrength);
float3 fresnel = FresnelTerm(F0, saturate(dot(normalize(VLightDir + Surface.ViewDir), VLightDir)));
float roughness = _ClearcoatRoughness; 
float squareRoughness = max(roughness * roughness, 0.002);
float distribution = GTR2(saturate(dot(Surface.NormalDir, normalize(VLightDir + Surface.ViewDir))), squareRoughness);
float geometry = smithG_GGX(saturate(dot(Surface.NormalDir, VLightDir)), squareRoughness) * smithG_GGX(Surface.NdotV, squareRoughness);
float3 clearcoatV_Spec = fresnel * distribution * geometry;
Surface.FinalColor.rgb += clearcoatV_Spec * Surface.VertexDirectDiffuse * _ClearcoatColor.rgb * _ClearcoatStrength;
}
#endif 
#endif 

#if defined(_BACKLACE_DEPTH_RIMLIGHT)
#ifndef BACKLACE_DEPTH
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif 
float4 _DepthRimColor;
float _DepthRimWidth;
float _DepthRimThreshold;
float _DepthRimSharpness;
int _DepthRimBlendMode;

static const int2 sobelPoints[9] = {
int2(-1, -1), int2(0, -1), int2(1, -1),
int2(-1, 0), int2(0, 0), int2(1, 0),
int2(-1, 1), int2(0, 1), int2(1, 1)
};

float ScaleRimWidth(float z) {
float scale = 1.0 / z;
return _DepthRimWidth * 50.0 / _ScreenParams.y * scale;
}
void ApplyDepthRim(inout BacklaceSurfaceData Surface, FragmentData i)
{
float sceneDepthRaw = tex2D(_CameraDepthTexture, float2(i.scrPos.xy / i.scrPos.w)).r;
float sceneDepthLinear = LinearEyeDepth(sceneDepthRaw);
float modelDepthLinear = i.scrPos.w;;
float depthStatus = 0;
[unroll(9)]
for (int idx = 0; idx < 9; idx++)
{
float2 offset = sobelPoints[idx] * ScaleRimWidth(modelDepthLinear);
float sampleDepthRaw = tex2D(_CameraDepthTexture, float2(i.scrPos.xy / i.scrPos.w) + offset).r;
float sampleDepthLinear = LinearEyeDepth(sampleDepthRaw);
depthStatus += step(modelDepthLinear + _DepthRimThreshold, sampleDepthLinear);
}
float edgeFactor = depthStatus / 9.0;
edgeFactor = pow(edgeFactor, _DepthRimSharpness);
float rimIntensity = edgeFactor * _DepthRimColor.a;
switch(_DepthRimBlendMode)
{
case 0: 
Surface.FinalColor.rgb += _DepthRimColor.rgb * rimIntensity;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, _DepthRimColor.rgb, rimIntensity);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * _DepthRimColor.rgb, rimIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_PATHING)
UNITY_DECLARE_TEX2D(_PathingMap);
float2 _PathingMap_ST;
float4 _PathingColor;
float _PathingEmission;
int _PathingType;
float _PathingSpeed;
float _PathingWidth;
float _PathingSoftness;
float _PathingOffset;
float _PathingMap_UV;
float _PathingScale;
int _PathingBlendMode;
int _PathingMappingMode;
int _PathingColorMode;
float4 _PathingColor2;
UNITY_DECLARE_TEX2D(_PathingTexture);
float _PathingTexture_UV;
void ApplyPathing(inout BacklaceSurfaceData Surface, FragmentData i)
{
float pathValue;
if (_PathingMappingMode == 0) 
{
pathValue = UNITY_SAMPLE_TEX2D(_PathingMap, frac(Uvs[_PathingMap_UV] * _PathingScale)).r;
}
else 
{
pathValue = SampleTextureTriplanar(
_PathingMap, sampler_PathingMap,
FragData.worldPos, Surface.NormalDir,
float3(0, 0, 0), _PathingScale, float3(0, 0, 0),
2.0, true, float2(0, 0)
).r;
}
float pathTime = frac(_Time.y * _PathingSpeed + _PathingOffset);
float pathAlpha = 0;
switch(_PathingType)
{
case 1: 
pathAlpha = 1.0 - saturate(abs(pathTime - pathValue) / _PathingWidth);
break;
case 2: 
float loop_dist = abs(pathTime - pathValue);
loop_dist = min(loop_dist, 1.0 - loop_dist);
pathAlpha = 1.0 - saturate(loop_dist / _PathingWidth);
break;
case 3: 
pathTime = 1.0 - abs(1.0 - 2.0 * pathTime); 
pathAlpha = 1.0 - saturate(abs(pathTime - pathValue) / _PathingWidth);
break;
case 4: 
float trail_dist = pathTime - pathValue;
pathAlpha = smoothstep(0, _PathingWidth, trail_dist) - smoothstep(_PathingWidth, _PathingWidth + 0.001, trail_dist);
break;
case 5: 
float convergeTime = abs(1.0 - 2.0 * pathTime); 
float convergeDist = abs(convergeTime - (abs(1.0 - 2.0 * pathValue)));
pathAlpha = 1.0 - saturate(convergeDist / _PathingWidth);
break;
default: 
pathAlpha = pathTime > pathValue;
break;
}
pathAlpha = smoothstep(0, _PathingSoftness, pathAlpha);
#if defined(_BACKLACE_AUDIOLINK)
pathAlpha *= i.alChannel2.x;
#endif 
if (pathAlpha <= 0.001) return;

float3 pathEmission = pathAlpha * _PathingEmission;
float pathBlend = _PathingColor.a;
switch(_PathingColorMode)
{
case 1: 
float4 pathSample = UNITY_SAMPLE_TEX2D(_PathingTexture, Uvs[_PathingTexture_UV]);
pathEmission *= pathSample.rgb;
pathBlend = pathSample.a;
break;
case 2: 
float4 pathGradinet = lerp(_PathingColor, _PathingColor2, pathValue);
pathEmission *= pathGradinet.rgb;
pathBlend = pathGradinet.a;
break;
default: 
pathEmission *= _PathingColor.rgb;
break;
}
switch(_PathingBlendMode)
{
case 0: 
Surface.FinalColor.rgb += pathEmission;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * pathEmission.rgb, pathAlpha);
break;
case 2: 
float blendIntensity = pathAlpha * pathBlend;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, pathEmission.rgb, blendIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_GLITTER)

UNITY_DECLARE_TEX2D(_GlitterMask);
UNITY_DECLARE_TEX2D(_GlitterNoiseTex);
float _Glitter_UV;
float _GlitterMask_UV;
float _ToggleGlitterRainbow;
float _GlitterMode;
float4 _GlitterTint;
float _GlitterFrequency;
float _GlitterThreshold;
float _GlitterSize;
float _GlitterFlickerSpeed;
float _GlitterBrightness;
float _GlitterContrast;
float _GlitterRainbowSpeed;

void ApplyGlitter(inout BacklaceSurfaceData Surface)
{
float3 final_glitter = 0;
float unique_flake_id = 0;
float glitter_mask = 0;
float2 uv = Uvs[_Glitter_UV] * _GlitterFrequency;
float2 i_uv = floor(uv);
float2 f_uv = frac(uv);
[branch] if (_GlitterMode == 0) 
{
float min_dist = 1.0;
float2 closest_point_id = 0;
for (int y = -1; y <= 1; y++)
{
for (int x = -1; x <= 1; x++)
{
float2 neighbor_offset = float2(x, y);
float2 point_pos = Hash2(i_uv + neighbor_offset);
float dist = length(neighbor_offset +point_pos - f_uv);
if (dist < min_dist)
{
min_dist = dist;
closest_point_id = i_uv + neighbor_offset;
}
}
}
unique_flake_id = Hash(closest_point_id);
if (unique_flake_id < _GlitterThreshold) return;
glitter_mask = saturate((_GlitterSize - min_dist) / max(fwidth(min_dist), 0.001));
}
else if (_GlitterMode == 1) 
{

float noise_val = UNITY_SAMPLE_TEX2D_LOD(_GlitterNoiseTex, i_uv / _GlitterFrequency, 0).r;
if (noise_val < _GlitterThreshold) return;
float dist_from_center = length(f_uv - 0.5);
glitter_mask = saturate((_GlitterSize - dist_from_center) / max(fwidth(dist_from_center), 0.001));
unique_flake_id = Hash(i_uv);
}
if (glitter_mask <= 0) return;
float time = _Time.y * _GlitterFlickerSpeed + unique_flake_id * 100;
float3 glitter_normal = normalize(float3(sin(time * 1.2), cos(time * 1.7), sin(time * 1.5)));
float sparkle = fastpow(saturate(dot(Surface.ViewDir, glitter_normal)), _GlitterContrast);
float3 glitter_color = _GlitterTint.rgb;
if (_ToggleGlitterRainbow > 0)
{
float rainbow_time = _Time.y * _GlitterRainbowSpeed;
glitter_color = lerp(glitter_color, Sinebow(unique_flake_id + rainbow_time), _ToggleGlitterRainbow);
}
float finalGlitterBrightness = _GlitterBrightness;
#if defined(_BACKLACE_AUDIOLINK)
finalGlitterBrightness *= i.alChannel2.y;
#endif 
final_glitter = glitter_mask * glitter_color * finalGlitterBrightness;
float mask_val = UNITY_SAMPLE_TEX2D(_GlitterMask, Uvs[_GlitterMask_UV]).r;
sparkle *= mask_val;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, final_glitter, sparkle);
}
#endif 

#if defined(_BACKLACE_DISTANCE_FADE)

float _DistanceFadeReference;
float _ToggleNearFade;
float _NearFadeMode;
float _NearFadeDitherScale;
float _NearFadeStart;
float _NearFadeEnd;
float _ToggleFarFade;
float _FarFadeStart;
float _FarFadeEnd;

void CalculateDistanceFade(FragmentData i, inout bool isNearFading, out float fade_factor)
{
fade_factor = 1.0;
float3 referencePos = _DistanceFadeReference == 1 ? i.worldObjectCenter : i.worldPos;
float view_dist = distance(referencePos, GetCameraPos());
isNearFading = false;
if (_ToggleNearFade == 1 && _NearFadeStart > _NearFadeEnd)
{
float nearFade = smoothstep(_NearFadeEnd, _NearFadeStart, view_dist);
fade_factor *= nearFade;
isNearFading = nearFade < 1.0;
}
if (_ToggleFarFade == 1 && _FarFadeEnd > _FarFadeStart)
{
float farFade = 1.0 - smoothstep(_FarFadeStart, _FarFadeEnd, view_dist);
fade_factor *= farFade;
}
}

float ApplyDistanceFadePre(bool isNearFading, float fade_factor)
{
if (_NearFadeMode == 0) { 
if (fade_factor == 0) {
return -1; 
}
}
return fade_factor; 
}

void ApplyDistanceFadePost(FragmentData i, float fade_factor, bool isNearFading, inout BacklaceSurfaceData Surface)
{
[branch] if (_NearFadeMode == 1 && isNearFading) {
float pattern = GetTiltedCheckerboardPattern(Surface.ScreenCoords * _ScreenParams.xy, _NearFadeDitherScale);
Surface.FinalColor.a *= step(fade_factor, pattern);
} else {

Surface.FinalColor.a *= fade_factor;
}
}
#endif 

#if defined(_BACKLACE_IRIDESCENCE)
UNITY_DECLARE_TEX2D(_IridescenceMask);
float _IridescenceMask_UV;
float4 _IridescenceTint;
float _IridescenceIntensity;
int _IridescenceBlendMode;
UNITY_DECLARE_TEX2D(_IridescenceRamp);
float _IridescencePower;
float _IridescenceFrequency;
float _IridescenceMode;
float _IridescenceParallax;;
void ApplyIridescence(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 shiftedNormal = normalize(Surface.NormalDir + Surface.ViewDir * _IridescenceParallax);
float fresnel_base = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
float fresnel_shifted = 1.0 - saturate(dot(shiftedNormal, Surface.ViewDir));
float interference = abs(fresnel_shifted - fresnel_base);
float3 iridescenceColor = 0;
float finalFresnel = pow(interference, _IridescencePower);
if (_IridescenceMode == 0) 
{
iridescenceColor = UNITY_SAMPLE_TEX2D(_IridescenceRamp, float2(finalFresnel, 0.5)).rgb;
}
else if (_IridescenceMode == 1) 
{
float hue = finalFresnel * _IridescenceFrequency;
iridescenceColor = Sinebow(hue);
}
float mask = UNITY_SAMPLE_TEX2D(_IridescenceMask, Uvs[_IridescenceMask_UV]).r;
float finalIridescenceIntensity = _IridescenceIntensity;
#if defined(_BACKLACE_AUDIOLINK)
finalIridescenceIntensity *= i.alChannel2.z;
#endif 
float finalIntensity = finalIridescenceIntensity * pow(fresnel_base, 2.0) * mask;
iridescenceColor *= _IridescenceTint.rgb * finalIntensity;
[branch] switch(_IridescenceBlendMode)
{
case 0: 
Surface.FinalColor.rgb += iridescenceColor;
break;
case 1: 
Surface.FinalColor.rgb = 1.0 - (1.0 - Surface.FinalColor.rgb) * (1.0 - iridescenceColor);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, iridescenceColor, finalIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_SHADOW_TEXTURE)
UNITY_DECLARE_TEX2D(_ShadowTex);
float _ShadowTex_UV;
float4 _ShadowPatternColor;
float _ShadowPatternScale;
float _ShadowTextureIntensity;
int _ShadowTextureMappingMode;
float _ShadowPatternTriplanarSharpness;
float _ShadowPatternTransparency;
int _ShadowTextureBlendMode;
float3 GetTexturedShadowColor(inout BacklaceSurfaceData Surface, float3 shadowTint)
{
float3 texturedShadow;
float blendFactor;
float3 albedoTintedShadow = shadowTint * Surface.Albedo.rgb;
float shadowMask = 1.0 - Surface.NdotL;
switch(_ShadowTextureMappingMode)
{
case 0: 
{
float4 shadowAlbedoSample = UNITY_SAMPLE_TEX2D(_ShadowTex, Uvs[_ShadowTex_UV]);
texturedShadow = shadowAlbedoSample.rgb;
blendFactor = shadowAlbedoSample.a * shadowMask;
break;
}
case 1: 
{
float2 screenUVs = frac(Surface.ScreenCoords * _ShadowPatternScale);
float4 patternSample = UNITY_SAMPLE_TEX2D(_ShadowTex, screenUVs);
texturedShadow = albedoTintedShadow;
blendFactor = patternSample.r * patternSample.a * shadowMask;
break;
}
case 2: 
{
float4 patternSample = SampleTextureTriplanar(
_ShadowTex, sampler_MainTex,
FragData.worldPos, Surface.NormalDir,
float3(0, 0, 0), _ShadowPatternScale, float3(0, 0, 0),
_ShadowPatternTriplanarSharpness, true, float2(0, 0)
);
texturedShadow = albedoTintedShadow;
blendFactor = patternSample.r * patternSample.a * shadowMask;
break;
}
}
float3 baseShadowColour = Surface.Albedo.rgb * lerp(Surface.IndirectDiffuse, 1.0, _ShadowPatternTransparency);
float3 finalShadowColor;
switch(_ShadowTextureBlendMode)
{
case 0: 
finalShadowColor = baseShadowColour + texturedShadow * blendFactor;
break;
case 1: 
finalShadowColor = lerp(baseShadowColour, baseShadowColour * texturedShadow, blendFactor);
break;
default: 
finalShadowColor = lerp(baseShadowColour, texturedShadow, blendFactor);
break;
}
float3 originalShadowColor = Surface.Albedo.rgb * Surface.IndirectDiffuse;
return lerp(originalShadowColor, finalShadowColor, _ShadowTextureIntensity);
}
float3 GetTexturedShadowColor(inout BacklaceSurfaceData Surface)
{
return GetTexturedShadowColor(Surface, _ShadowPatternColor.rgb);
}
#endif 

#if defined(_BACKLACE_FLAT_MODEL)
float _FlatModel;
float _FlatModelDepthCorrection;
float _FlatModelFacing;
float _FlatModelLockAxis;
float _FlatModelEnable;
float _FlatModeAutoflip;

void FlattenModel(inout float4 vertex, float3 normal, out float4 finalClipPos, out float3 finalWorldPos, out float3 finalWorldNormal)
{
float facingAngle = _FlatModelFacing * - UNITY_PI / 2.0;
float s, c;
sincos(facingAngle, s, c);
float3 targetFwd_object = float3(s, 0, c);
float3 camPos_object = mul(unity_WorldToObject, float4(GetCameraPos(), 1.0)).xyz;
float flipSign = sign(dot(camPos_object, targetFwd_object));
if (flipSign == 0.0) flipSign = 1.0;
if (_FlatModeAutoflip == 0) flipSign = 1.0;
float3 virtualCamDir_object = targetFwd_object * flipSign * length(camPos_object);
float3 virtualCamPos_world = mul(unity_ObjectToWorld, float4(virtualCamDir_object, 1.0)).xyz;
float3 finalCamPos_world = lerp(GetCameraPos(), virtualCamPos_world, _FlatModelLockAxis);
float3 worldObjectPivot = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
float3 billboardFwd = normalize(finalCamPos_world - worldObjectPivot);
float3 billboardUp = float3(0, 1, 0);
float3 billboardRight = normalize(cross(billboardUp, billboardFwd));
billboardUp = cross(billboardFwd, billboardRight);
float3 flattenedWorldPos = worldObjectPivot;

flattenedWorldPos += billboardRight * vertex.x;
flattenedWorldPos += billboardUp * vertex.y;
flattenedWorldPos -= billboardFwd * vertex.z * _FlatModelDepthCorrection;
float3 originalWorldPos = mul(unity_ObjectToWorld, vertex).xyz;
finalWorldPos = lerp(originalWorldPos, flattenedWorldPos, _FlatModel);
finalClipPos = UnityWorldToClipPos(float4(finalWorldPos, 1.0));
finalWorldNormal = UnityObjectToWorldNormal(normal);
}
#endif 

#if defined(_BACKLACE_WORLD_EFFECT)
UNITY_DECLARE_TEX2D(_WorldEffectTex);
float4 _WorldEffectColor;
float4 _WorldEffectDirection;
float _WorldEffectScale;
float _WorldEffectBlendSharpness;
float _WorldEffectIntensity;
int _WorldEffectBlendMode;
float3 _WorldEffectPosition;
float3 _WorldEffectRotation;
UNITY_DECLARE_TEX2D(_WorldEffectMask);
void ApplyWorldAlignedEffect(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 effectDir = normalize(_WorldEffectDirection.xyz);
float directionMask = saturate(dot(Surface.NormalDir, effectDir));
directionMask = pow(directionMask, _WorldEffectBlendSharpness);
if (directionMask <= 0.001)
{
return;
}
float4 effectSample = SampleTextureTriplanar(
_WorldEffectTex, sampler_WorldEffectTex,
i.worldPos, Surface.NormalDir,
_WorldEffectPosition, _WorldEffectScale, _WorldEffectRotation,
1.0,
true,
float2(0, 0)
);
float3 finalEffectColor = effectSample.rgb * _WorldEffectColor.rgb;
float mask = UNITY_SAMPLE_TEX2D(_WorldEffectMask, Uvs[0]).r;
float blendStrength = directionMask * effectSample.a * _WorldEffectIntensity * mask;
switch(_WorldEffectBlendMode)
{
case 1: 
Surface.FinalColor.rgb += finalEffectColor * blendStrength;
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * finalEffectColor, blendStrength);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalEffectColor, blendStrength);
break;
}
}
#endif 

#if defined(_BACKLACE_VRCHAT_MIRROR)
UNITY_DECLARE_TEX2D(_MirrorDetectionTexture);
float _MirrorDetectionTexture_UV;
float _MirrorDetectionMode; 
float _VRChatMirrorMode; 
bool IsInMirrorView()
{
if (_VRChatMirrorMode > 0.5) return true;

return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
}

#ifndef UNITY_PASS_OUTLINE

void ApplyMirrorDetectionPre(inout BacklaceSurfaceData Surface)
{
if (_MirrorDetectionMode == 0 && IsInMirrorView()) 
{
float mask = UNITY_SAMPLE_TEX2D(_MirrorDetectionTexture, Uvs[_MirrorDetectionTexture_UV]).r;
Surface.FinalColor.a *= mask;
}
}

void ApplyMirrorDetectionPost(inout BacklaceSurfaceData Surface)
{
if (_MirrorDetectionMode == 1 && IsInMirrorView()) 
{
Surface.FinalColor.a = 0;
}
else if (_MirrorDetectionMode == 2 && !IsInMirrorView()) 
{
Surface.FinalColor.a = 0;
}
}
#endif 
#endif 

#if defined(_BACKLACE_TOUCH_REACTIVE)
#ifndef BACKLACE_DEPTH 
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif 
float4 _TouchColor;
float _TouchRadius;
float _TouchHardness;
int _TouchMode; 
float _TouchRainbowSpeed;
float _TouchRainbowSpread;
void ApplyTouchReactive(inout BacklaceSurfaceData Surface, FragmentData i)
{
float sceneDepthRaw = tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.scrPos)).r;
float sceneDepthLinear = LinearEyeDepth(sceneDepthRaw);
float depthDifference = sceneDepthLinear - i.scrPos.w;
float intersect = 1.0 - smoothstep(0, _TouchRadius, depthDifference);
if (intersect <= 0) return;
intersect = fastpow(intersect, _TouchHardness);
float3 touchEffect = _TouchColor.rgb * intersect * _TouchColor.a;
switch (_TouchMode) {
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, touchEffect, intersect);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * touchEffect, intersect);
break;
case 3: 
float time = _Time.y * _TouchRainbowSpeed;
float3 rainbowColor = Sinebow(depthDifference * _TouchRainbowSpread + time);
touchEffect = rainbowColor * intersect * _TouchColor.a;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, touchEffect, intersect);
break;
default: 
Surface.FinalColor.rgb += touchEffect;
break;
}
}
#endif 

#if defined(_BACKLACE_VERTEX_DISTORTION)
int _VertexDistortionMode;
int _VertexDistortionColorMask; 
float3 _VertexDistortionStrength;
float3 _VertexDistortionSpeed;
float3 _VertexDistortionFrequency;
float _WindStrength;
float _WindSpeed;
float _WindScale;
float4 _WindDirection;
UNITY_DECLARE_TEX2D(_WindNoiseTex);
float _BreathingStrength;
float _BreathingSpeed;
void DistortVertex(inout float4 vertex, float3 worldPos, float4 vertexColor)
{
float time = _Time.y;
float3 distortion = 0;

float mask = 1.0;
switch (_VertexDistortionColorMask)
{
case 1: 
mask = vertexColor.r;
break;
case 2: 
mask = vertexColor.g;
break;
case 3: 
mask = vertexColor.b;
break;
case 4: 
mask = (vertexColor.r + vertexColor.g + vertexColor.b) / 3.0;
break;
default: 
mask = 1.0;
break;
}

switch(_VertexDistortionMode)
{
case 0: 
{
distortion.x = sin(vertex.y * _VertexDistortionFrequency.x + time * _VertexDistortionSpeed.x) * _VertexDistortionStrength.x;
distortion.y = sin(vertex.x * _VertexDistortionFrequency.y + time * _VertexDistortionSpeed.y) * _VertexDistortionStrength.y;
distortion.z = sin(vertex.x * _VertexDistortionFrequency.z + time * _VertexDistortionSpeed.z) * _VertexDistortionStrength.z;
break;
}
case 1: 
{
float offsetX = sin(vertex.x * _VertexDistortionFrequency.x) * cos(vertex.y * _VertexDistortionFrequency.x) * _VertexDistortionStrength.x;
float offsetY = cos(vertex.y * _VertexDistortionFrequency.y) * sin(vertex.z * _VertexDistortionFrequency.y) * _VertexDistortionStrength.y;
float offsetZ = sin(vertex.z * _VertexDistortionFrequency.z) * cos(vertex.x * _VertexDistortionFrequency.z) * _VertexDistortionStrength.z;
distortion = float3(offsetX, offsetY, offsetZ) * sin(time * _VertexDistortionSpeed.x); 
break;
}
case 2: 
{
float2 windUV = worldPos.xz * _WindScale + (_Time.y * _WindSpeed * _WindDirection.xz);
float noise = UNITY_SAMPLE_TEX2D_LOD(_WindNoiseTex, windUV, 0).r * 2.0 - 1.0;
float sineWave = sin(_Time.y * _WindSpeed + worldPos.x + worldPos.z);
distortion = normalize(_WindDirection.xyz) * (noise + sineWave) * _WindStrength * mask;
break;
}
case 3: 
{
float breath = (sin(_Time.y * _BreathingSpeed) + 1.0) * 0.5;
float3 localNormal = normalize(vertex.xyz);
distortion = localNormal * breath * _BreathingStrength * mask;
break;
}
}
vertex.xyz += distortion;
}
#endif 

#if defined(_BACKLACE_DITHER)
float _DitherAmount;
float _DitherScale;
float _DitherSpace;
int _Dither_UV;
void ApplyDither(inout BacklaceSurfaceData Surface, float2 worldPos, float2 uvs)
{
float2 ditherUV = 0;
switch (_DitherSpace) {
case 1: 
ditherUV = frac(worldPos) * _ScreenParams.xy;
break;
case 2: 
ditherUV = uvs * _ScreenParams.xy; 
break;
default: 
ditherUV = Surface.ScreenCoords * _ScreenParams.xy;
break;
}
float pattern = GetTiltedCheckerboardPattern(ditherUV, _DitherScale);
Surface.FinalColor.a = lerp(Surface.FinalColor.a, Surface.FinalColor.a * pattern, _DitherAmount);
}
#endif 

#if defined(_BACKLACE_PS1)
int _PS1Rounding;
float _PS1RoundingPrecision;
int _PS1Affine;
int _PS1Compression;
float _PS1CompressionPrecision;
void ApplyPS1Vertex(inout FragmentData i, in VertexData v)
{
if (_PS1Rounding == 1)
{
float4 worldPos = mul(unity_ObjectToWorld, v.vertex);
worldPos.xyz = ceil(worldPos.xyz * _PS1RoundingPrecision) / _PS1RoundingPrecision;
i.pos = mul(UNITY_MATRIX_VP, worldPos);
}
else if (_PS1Rounding == 2)
{
float4 pos = i.pos;
pos.xy /= pos.w;
pos.xy = round(pos.xy * _PS1RoundingPrecision) / _PS1RoundingPrecision;
pos.xy *= pos.w;
i.pos = pos;
}
if (_PS1Affine == 1)
{
i.affineUV = float4(v.uv.x, v.uv.y, 0, 0) * i.pos.w;
}
}
void ApplyPS1AffineUV(inout float2 uv, in FragmentData i)
{
if (_PS1Affine == 1)
{
uv = i.affineUV.xy / i.pos.w;
}
}
void ApplyPS1ColorCompression(inout float4 finalColor)
{
if (_PS1Compression == 1)
{
finalColor.rgb = floor(finalColor.rgb * _PS1CompressionPrecision) / _PS1CompressionPrecision;
}
}
#endif 

#if defined(BACKLACE_GRABPASS)
UNITY_DECLARE_SCREENSPACE_TEXTURE(_BacklaceGP);
float4 _BacklaceGP_TexelSize;

#if defined(_BACKLACE_REFRACTION)
UNITY_DECLARE_TEX2D(_RefractionMask);
float _RefractionMask_UV;
float4 _RefractionTint;
float _RefractionIOR;
float _RefractionFresnel;
UNITY_DECLARE_TEX2D(_CausticsTex);
float _CausticsTiling;
float _CausticsSpeed;
float _CausticsIntensity;
UNITY_DECLARE_TEX2D(_DistortionNoiseTex);
float _DistortionNoiseTiling;
float _DistortionNoiseStrength;
int _RefractionDistortionMode;
float _RefractionCAStrength;
float _RefractionBlurStrength;
float _RefractionOpacity;
float _RefractionMixStrength;
int _RefractionCAUseFresnel;
float _RefractionCAEdgeFade;
float _RefractionMode; 
float4 _CausticsColor;
float _RefractionBlendMode;
float _RefractionSeeThrough;
void ApplyRefraction(inout BacklaceSurfaceData Surface, FragmentData i)
{
float fresnel = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
fresnel = pow(fresnel, _RefractionFresnel);
float2 noise = (SampleTextureTriplanar(_DistortionNoiseTex, sampler_DistortionNoiseTex, i.worldPos, Surface.NormalDir, float3(0, 0, 0), _DistortionNoiseTiling, float3(0, 0, 0), 2.0, true, float2(0, 0)).rg * 2.0 - 1.0) * _DistortionNoiseStrength;
float3 distortionNormal = Surface.NormalDir + float3(noise.x, noise.y, 0);
float3 refractionVector = distortionNormal * _RefractionIOR;
float4 screenPos = i.scrPos;
float2 baseUV = screenPos.xy / screenPos.w;
float2 distortedUV = baseUV + refractionVector.xy;
float3 refractedColor = 0;
switch(_RefractionDistortionMode)
{
case 1: 
{
float caOffset = _RefractionBlurStrength;
if (_RefractionCAUseFresnel == 1)
{
float caFresnel = fastpow(fresnel, _RefractionCAEdgeFade);
caOffset *= caFresnel;
}
refractedColor.r = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV + float2(caOffset, 0)).r * _RefractionCAStrength;
refractedColor.g = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).g;
refractedColor.b = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV - float2(caOffset, 0)).b * _RefractionCAStrength;
break;
}
case 2: 
{
const int BLUR_SAMPLES = 8;
float2 blurOffset = _BacklaceGP_TexelSize.xy * _RefractionBlurStrength;
refractedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).rgb;
[unroll]
for (int i = 0; i < BLUR_SAMPLES; i++)
{
float angle = (float)i / BLUR_SAMPLES * 2.0 * UNITY_PI;
float s, c;
sincos(angle, s, c);
float2 offset = float2(c, s) * blurOffset;
refractedColor += UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV + offset).rgb;
}
refractedColor /= (BLUR_SAMPLES + 1);
break;
}
default: 
{
refractedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).rgb;
break;
}
}
float3 reflectionVector = reflect(-Surface.ViewDir, Surface.NormalDir);
float2 causticsUV = reflectionVector.xy * _CausticsTiling + (_Time.y * _CausticsSpeed);
float3 caustics = UNITY_SAMPLE_TEX2D(_CausticsTex, causticsUV).rgb * _CausticsIntensity;
float mask = UNITY_SAMPLE_TEX2D(_RefractionMask, Uvs[_RefractionMask_UV]).r;
float3 crystalColor = lerp(_RefractionTint.rgb + caustics, lerp(_RefractionTint.rgb, _CausticsColor.rgb, caustics), _RefractionBlendMode);
float3 finalColor;
switch(int(_RefractionMode))
{
case 1: 
finalColor = lerp(refractedColor, crystalColor, fresnel * _RefractionMixStrength);
break;
case 2: 
finalColor = lerp(refractedColor, crystalColor, fastpow(fresnel, _RefractionMixStrength));
break;
case 3: 
finalColor = lerp(refractedColor, crystalColor, _RefractionMixStrength);
break;
default: 
finalColor = lerp(refractedColor, crystalColor, (1.0 - fresnel) * _RefractionMixStrength);
break;
}
finalColor = lerp(finalColor, _RefractionTint.rgb, _RefractionTint.a * (1.0 - fresnel));
float finalAlpha = lerp(_RefractionTint.a, 1.0, fresnel) * mask;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalColor, finalAlpha);
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, refractedColor, _RefractionSeeThrough); 
Surface.FinalColor.a = finalAlpha * _RefractionOpacity;
}
#endif 

#if defined(_BACKLACE_SSR)
float _SSRMode;
UNITY_DECLARE_TEX2D(_SSRMask);
float4 _SSRTint;
float _SSRIntensity;
int _SSRBlendMode;
float _SSRFresnelPower;
float _SSRFresnelScale;
float _SSRFresnelBias;
float _SSRCoverage;

float _SSRParallax;
UNITY_DECLARE_TEX2D(_SSRDistortionMap);
float _SSRDistortionStrength;
float _SSRBlur;
float _SSRWorldDistortion;

int _SSRMaxSteps;
float _SSRStepSize;
float _SSREdgeFade;
float _SSRThickness;
float _SSRAdaptiveStep;
float _SSRFlipUV;
int _SSROutOfViewMode;
int _SSRCamFade;
float _SSRCamFadeStart;
float _SSRCamFadeEnd;
#ifndef BACKLACE_DEPTH
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif

float3 GetSSRMarched(inout BacklaceSurfaceData Surface, FragmentData i)
{
#if UNITY_SINGLE_PASS_STEREO
float x_min = 0.5 * unity_StereoEyeIndex;
float x_max = 0.5 + 0.5 * unity_StereoEyeIndex;
#else 
float x_min = 0.0;
float x_max = 1.0;
#endif 
float3 viewPos = mul(UNITY_MATRIX_V, float4(i.worldPos, 1.0)).xyz;
float3 viewRefl = mul((float3x3)UNITY_MATRIX_V, Surface.ReflectDir);
float3 currentRayPos = viewPos + viewRefl * (UNITY_MATRIX_P._33 * 0.1);
float3 prevRayPos = viewPos;
[loop] for (int j = 0; j < _SSRMaxSteps; j++)
{
float4 screenPos = mul(UNITY_MATRIX_P, float4(currentRayPos, 1.0));
float2 screenUV = (screenPos.xy / screenPos.w) * 0.5 + 0.5;
if (screenUV.x > x_max || screenUV.x < x_min || screenUV.y > 1.0 || screenUV.y < 0.0)
{
return 0;
}

float sceneDepth = LinearEyeDepth(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(screenPos)).r);
float rayDepth = -currentRayPos.z;
if (rayDepth > sceneDepth - _SSRThickness)
{
float4 finalClipPos = mul(UNITY_MATRIX_P, float4(currentRayPos, 1.0));
finalClipPos.y = lerp(finalClipPos.y, -finalClipPos.y + finalClipPos.w, _SSRFlipUV);
float fadeFactor = 1.0;
float2 finalUV = finalClipPos.xy / finalClipPos.w;
switch (_SSROutOfViewMode)
{
case 1: 
fadeFactor = smoothstep(x_min, x_min + 0.05, finalUV.x) * smoothstep(1.0 - x_max, 1.0 - x_max + 0.05, finalUV.x);
fadeFactor *= smoothstep(0.0, 0.05, finalUV.y) * smoothstep(1.0, 1.0 - 0.05, finalUV.y);
break;
case 2: 
if (finalUV.x < x_min || finalUV.x > x_max || finalUV.y < 0.0 || finalUV.y > 1.0) fadeFactor = 0;
break;
case 3: 
if (finalUV.x < x_min) finalUV.x = x_min + (x_min - finalUV.x);
if (finalUV.x > x_max) finalUV.x = x_max - (finalUV.x - x_max);
if (finalUV.y < 0.0) finalUV.y = -finalUV.y;
if (finalUV.y > 1.0) finalUV.y = 1.0 - (finalUV.y - 1.0);
break;
}
float3 reflection = tex2D(_BacklaceGP, finalUV).rgb;
finalUV = finalUV * 0.5 + 0.5;
float2 fade = smoothstep(0.0, _SSREdgeFade, finalUV) * (1.0 - smoothstep(1.0 - _SSREdgeFade, 1.0, finalUV));
reflection *= fade.x * fade.y * fadeFactor;
return reflection;
}

float depthDifference = sceneDepth - rayDepth;
float step = (_SSRAdaptiveStep) ? clamp(depthDifference * _SSRStepSize, 0.02, 0.5) : _SSRStepSize;
prevRayPos = currentRayPos;
currentRayPos += viewRefl * step;
}
return 0; 
}

float3 GetSSRPlanar(inout BacklaceSurfaceData Surface, FragmentData i)
{
float2 screenUV = i.scrPos.xy / i.scrPos.w;
float2 distortionUV = lerp(screenUV, i.worldPos.xy, _SSRWorldDistortion);
float2 distortionOffset = (UNITY_SAMPLE_TEX2D(_SSRDistortionMap, distortionUV).rg * 2.0 - 1.0) * _SSRDistortionStrength;
float3 viewSpaceReflection = mul((float3x3)UNITY_MATRIX_V, Surface.ReflectDir);
float parallax = _SSRParallax * saturate(1.0 - viewSpaceReflection.z);
float2 reflectionOffset = viewSpaceReflection.xy * parallax;
float2 reflectionUV = screenUV + reflectionOffset +distortionOffset;
const int SSR_BLUR_SAMPLES = 8;
float3 reflectedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, reflectionUV).rgb;
float2 blurOffset = _BacklaceGP_TexelSize.xy * _SSRBlur;
[unroll]
for (int k = 0; k < SSR_BLUR_SAMPLES; k++)
{
float angle = (float)k / SSR_BLUR_SAMPLES * 2.0 * UNITY_PI;
float s, c;
sincos(angle, s, c);
float2 offset = float2(c, s) * blurOffset;
reflectedColor += UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, reflectionUV + offset).rgb;
}
reflectedColor /= (SSR_BLUR_SAMPLES + 1);
return reflectedColor;
}

void ApplyScreenSpaceReflections(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 reflectedColor;

[branch] if (_SSRMode == 1)
{
reflectedColor = GetSSRMarched(Surface, i);
}
else
{
reflectedColor = GetSSRPlanar(Surface, i);
}

float fadeFactor = 1.0;
if (_SSRCamFade == 1)
{
float camDistance = distance(i.worldPos, GetCameraPos());
fadeFactor *= 1.0 - saturate((camDistance - _SSRCamFadeStart) / (_SSRCamFadeEnd - _SSRCamFadeStart));
}

float fresnel_base = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
float fresnel_powered = pow(fresnel_base, _SSRFresnelPower);
float fresnel = saturate(_SSRFresnelBias + fresnel_powered * _SSRFresnelScale + _SSRCoverage);
float mask = UNITY_SAMPLE_TEX2D(_SSRMask, Uvs[0]).r;
float finalStrength = fresnel * mask * _SSRIntensity * fadeFactor;
float3 finalReflection = reflectedColor * _SSRTint.rgb;
[branch] switch((int)_SSRBlendMode)
{
case 0: 
Surface.FinalColor.rgb += finalReflection * finalStrength;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalReflection, finalStrength);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * finalReflection, finalStrength);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, 1.0 - (1.0 - Surface.FinalColor.rgb) * (1.0 - finalReflection), finalStrength);
break;
}
}
#endif 
#endif 
#endif 




#ifndef BACKLACE_SHADING_CGINC
#define BACKLACE_SHADING_CGINC

void ClipAlpha(inout BacklaceSurfaceData Surface)
{
#if defined(_BLENDMODE_CUTOUT)
clip(Surface.Albedo.a - _Cutoff);
#elif defined(_BLENDMODE_FADE)
float dither = tex3D(_DitherMaskLOD, float3(FragData.pos.xy * 0.25, Surface.Albedo.a * 0.9375)).a;
clip(dither - 0.01);
#endif 
}

void SampleNormal()
{
NormalMap = UnpackScaleNormal(UNITY_SAMPLE_TEX2D_SAMPLER(_BumpMap, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _BumpMap)), _BumpScale);
}

void CalculateNormals(inout float3 normal, inout float3 tangent, inout float3 bitangent, float3 normalmap)
{
float3x3 tbn = float3x3(tangent, bitangent, normal);
normal = normalize(mul(normalmap, tbn));
tangent = normalize(cross(bitangent, normal));
bitangent = normalize(cross(normal, tangent));
}

void GetGeometryVectors(inout BacklaceSurfaceData Surface, FragmentData FragData)
{
Surface.NormalDir = normalize(FragData.normal);
Surface.TangentDir = normalize(UnityObjectToWorldDir(FragData.tangentDir.xyz));
Surface.BitangentDir = normalize(cross(Surface.NormalDir, Surface.TangentDir) * FragData.tangentDir.w * unity_WorldTransformParams.w);
[branch] if (_FlipBackfaceNormals == 1 && !Surface.IsFrontFace)
{
Surface.NormalDir *= -1;
Surface.TangentDir *= -1;
Surface.BitangentDir *= -1;
}
Surface.ViewDir = normalize(UnityWorldSpaceViewDir(FragData.worldPos));
Surface.ScreenCoords = FragData.pos.xy / _ScreenParams.xy;
}

void GetDirectionVectors(inout BacklaceSurfaceData Surface)
{
CalculateNormals(Surface.NormalDir, Surface.TangentDir, Surface.BitangentDir, NormalMap);
Surface.LightDir = normalize(UnityWorldSpaceLightDir(FragData.worldPos));
Surface.ReflectDir = reflect(-Surface.ViewDir, Surface.NormalDir);
Surface.HalfDir = Unity_SafeNormalize(Surface.LightDir + Surface.ViewDir);
}

void GetDotProducts(inout BacklaceSurfaceData Surface)
{
Surface.UnmaxedNdotL = dot(Surface.NormalDir, Surface.LightDir);
Surface.UnmaxedNdotL = min(Surface.UnmaxedNdotL, Surface.LightColor.a);
#if defined(_BACKLACE_SHADOW_MAP)
float shadowMask = UNITY_SAMPLE_TEX2D(_ShadowMap, Uvs[_ShadowMap_UV]).r;
Surface.UnmaxedNdotL -= (shadowMask * _ShadowMapIntensity);
#endif 
Surface.NdotL = max(Surface.UnmaxedNdotL, 0);
Surface.NdotV = abs(dot(Surface.NormalDir, Surface.ViewDir));
Surface.NdotH = max(dot(Surface.NormalDir, Surface.HalfDir), 0);
Surface.LdotH = max(dot(Surface.LightDir, Surface.HalfDir), 0);
}

void PremultiplyAlpha(inout BacklaceSurfaceData Surface)
{
#if defined(_BLENDMODE_PREMULTIPLY)
Surface.Albedo.rgb *= Surface.Albedo.a;
#endif
}

float DisneyDiffuse(half perceptualRoughness, inout BacklaceSurfaceData Surface)
{
float fd90 = 0.5 + 2 * Surface.LdotH * Surface.LdotH * perceptualRoughness;

float lightScatter = (1 + (fd90 - 1) * Pow5(1 - Surface.NdotL));
float viewScatter = (1 + (fd90 - 1) * Pow5(1 - Surface.NdotV));
return lightScatter * viewScatter;
}

void GetPBRDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.Diffuse = 0;
float ramp = DisneyDiffuse(Surface.Roughness, Surface) * Surface.NdotL;
#if defined(_BACKLACE_PARALLAX) && defined(_BACKLACE_PARALLAX_SHADOWS)
ramp *= ParallaxShadow;
#endif 
#if defined(_BACKLACE_LTCGI)
float2 ltcgi_lmUV = 0;
#if defined(LIGHTMAP_ON)
ltcgi_lmUV = FragData.lightmapUV;
#endif
LTCGI_Contribution(
FragData.worldPos,
Surface.NormalDir,
Surface.ViewDir,
Surface.Roughness,
ltcgi_lmUV,
Surface.IndirectDiffuse,
Surface.IndirectSpecular
);
#endif 
Surface.Diffuse = Surface.Albedo * (Surface.LightColor.rgb * Surface.LightColor.a * ramp + Surface.IndirectDiffuse);
Surface.Attenuation = ramp;
#if defined(_BACKLACE_SHADOW_TEXTURE)
float3 litColor = Surface.Diffuse;
float3 shadowColor = GetTexturedShadowColor(Surface);
Surface.Diffuse = lerp(shadowColor, litColor, Surface.Attenuation);
#endif 
}

void Shade4PointLights(float3 normal, float3 worldPos, out float3 color, out float3 direction)
{
float4 toLightX = unity_4LightPosX0 - worldPos.x;
float4 toLightY = unity_4LightPosY0 - worldPos.y;
float4 toLightZ = unity_4LightPosZ0 - worldPos.z;
float4 lengthSq = 0;
lengthSq += toLightX * toLightX;
lengthSq += toLightY * toLightY;
lengthSq += toLightZ * toLightZ;
float4 ndl = 0;
ndl += toLightX * normal.x;
ndl += toLightY * normal.y;
ndl += toLightZ * normal.z;
float4 corr = rsqrt(lengthSq);
ndl = max(0, ndl * corr);
float4 atten = 1.0 / (1.0 + lengthSq * unity_4LightAtten0);
float4 diff = ndl * atten;
color = 0;
color += unity_LightColor[0].rgb * diff.x;
color += unity_LightColor[1].rgb * diff.y;
color += unity_LightColor[2].rgb * diff.z;
color += unity_LightColor[3].rgb * diff.w;
direction = 0;
#if defined(_BACKLACE_SPECULAR) && defined(_BACKLACE_VERTEX_SPECULAR)
direction += (float3(toLightX.x, toLightY.x, toLightZ.x) * corr.x) * dot(unity_LightColor[0].rgb, 1) * diff.x;
direction += (float3(toLightX.y, toLightY.y, toLightZ.y) * corr.y) * dot(unity_LightColor[1].rgb, 1) * diff.y;
direction += (float3(toLightX.z, toLightY.z, toLightZ.z) * corr.z) * dot(unity_LightColor[2].rgb, 1) * diff.z;
direction += (float3(toLightX.w, toLightY.w, toLightZ.w) * corr.w) * dot(unity_LightColor[3].rgb, 1) * diff.w;
#endif 
}

#if defined(_BACKLACE_TOON)

void ApplyAmbientGradient(inout BacklaceSurfaceData Surface)
{
[branch] if (_ToggleAmbientGradient == 1) {
float3 worldNormal = normalize(FragData.normal);
float updownGradient = worldNormal.y * 0.5 + 0.5; 
float skyMask = smoothstep(_AmbientSkyThreshold, 1.0, updownGradient);
float groundMask = smoothstep(_AmbientGroundThreshold, 0.0, updownGradient);
float3 skyGradientColor = _AmbientUp.rgb * skyMask;
float3 groundGradientColor = _AmbientDown.rgb * groundMask;
Surface.Diffuse += (skyGradientColor + groundGradientColor) * _AmbientIntensity;
}
}

void ApplyAreaTint(inout BacklaceSurfaceData Surface)
{
[branch] if (_TintMaskSource != 0)
{
float finalMask;
switch(_TintMaskSource)
{
case 2: 
{
float rawMask = Surface.UnmaxedNdotL * 0.5 + 0.5;
finalMask = smoothstep(_ShadowThreshold, max(_ShadowThreshold, _LitThreshold), rawMask);
break;
}
case 1: 
{
finalMask = Surface.UnmaxedNdotL * 0.5 + 0.5;
break;
}
default: 
{
finalMask = Surface.Attenuation;
break;
}
}
float shadowInfluence = (1 - finalMask) * _ShadowTint.a;
Surface.Diffuse.rgb = lerp(Surface.Diffuse.rgb, Surface.Diffuse.rgb * _ShadowTint.rgb, shadowInfluence);
float litInfluence = finalMask * _LitTint.a;
Surface.Diffuse.rgb = lerp(Surface.Diffuse.rgb, Surface.Diffuse.rgb * _LitTint.rgb, litInfluence);
}
}
#if defined(_ANIMEMODE_RAMP)

float4 RampDotL(inout BacklaceSurfaceData Surface)
{
float offset = _RampOffset + (Surface.Occlusion * _OcclusionOffsetIntensity) - _OcclusionOffsetIntensity;
float newMin = max(offset, 0);
float newMax = max(offset +1, 0);
float rampUv = remap(Surface.UnmaxedNdotL, -1, 1, newMin, newMax);
float3 ramp = UNITY_SAMPLE_TEX2D(_Ramp, float2(rampUv, rampUv)).rgb;
ramp *= _RampColor.rgb;
float intensity = max(_ShadowIntensity, 0.001);
ramp = remap(ramp, float3(0, 0, 0), float3(1, 1, 1), 1 - intensity, float3(1, 1, 1));
float3 rmin = remap(_RampMin, 0, 1, 1 - intensity, 1);
float3 rampA = remap(ramp, rmin, 1, 0, 1);
float rampGrey = max(max(rampA.r, rampA.g), rampA.b);
#if defined(DIRECTIONAL) || defined(DIRECTIONAL_COOKIE)
return float4(ramp, rampGrey);
#else 
return float4(rampA, rampGrey);
#endif 
}

void RampDotLVertLight(float3 normal, float3 worldPos, float occlusion, out float3 color, out float3 direction)
{

float4 toLightX = unity_4LightPosX0 - worldPos.x;
float4 toLightY = unity_4LightPosY0 - worldPos.y;
float4 toLightZ = unity_4LightPosZ0 - worldPos.z;
float4 lengthSq = 0;
lengthSq += toLightX * toLightX;
lengthSq += toLightY * toLightY;
lengthSq += toLightZ * toLightZ;
float4 ndl = 0;
ndl += toLightX * normal.x;
ndl += toLightY * normal.y;
ndl += toLightZ * normal.z;

float4 corr = rsqrt(lengthSq);
ndl = ndl * corr;

float4 atten = 1.0 / (1.0 + lengthSq * unity_4LightAtten0);
float4 atten2 = saturate(1 - (lengthSq * unity_4LightAtten0 / 25));
atten = min(atten, atten2 * atten2);

float offset = _RampOffset + (occlusion * _OcclusionOffsetIntensity) - _OcclusionOffsetIntensity;

float newMin = max(offset, 0);
float newMax = max(offset +1, 0);
float4 rampUv = remap(ndl, float4(-1, -1, -1, -1), float4(1, 1, 1, 1), float4(newMin, newMin, newMin, newMin), float4(newMax, newMax, newMax, newMax));
float intensity = max(_ShadowIntensity, 0.001);
float3 rmin = remap(_RampMin, 0, 1, 1 - intensity, 1);
float3 ramp0 = remap(remap(UNITY_SAMPLE_TEX2D(_Ramp, float2(rampUv.x, rampUv.x)).rgb * _RampColor.rgb, float3(0, 0, 0), float3(1, 1, 1), 1 - intensity, float3(1, 1, 1)), rmin, 1, 0, 1).rgb * unity_LightColor[0].rgb * atten.r;
float3 ramp1 = remap(remap(UNITY_SAMPLE_TEX2D(_Ramp, float2(rampUv.y, rampUv.y)).rgb * _RampColor.rgb, float3(0, 0, 0), float3(1, 1, 1), 1 - intensity, float3(1, 1, 1)), rmin, 1, 0, 1).rgb * unity_LightColor[1].rgb * atten.g;
float3 ramp2 = remap(remap(UNITY_SAMPLE_TEX2D(_Ramp, float2(rampUv.z, rampUv.z)).rgb * _RampColor.rgb, float3(0, 0, 0), float3(1, 1, 1), 1 - intensity, float3(1, 1, 1)), rmin, 1, 0, 1).rgb * unity_LightColor[2].rgb * atten.b;
float3 ramp3 = remap(remap(UNITY_SAMPLE_TEX2D(_Ramp, float2(rampUv.w, rampUv.w)).rgb * _RampColor.rgb, float3(0, 0, 0), float3(1, 1, 1), 1 - intensity, float3(1, 1, 1)), rmin, 1, 0, 1).rgb * unity_LightColor[3].rgb * atten.a;
color = ramp0 + ramp1 + ramp2 + ramp3;

direction = 0;
#if defined(_BACKLACE_SPECULAR) && defined(_BACKLACE_VERTEX_SPECULAR)
direction += (float3(toLightX.x, toLightY.x, toLightZ.x) * corr.x) * dot(ramp0, 1);
direction += (float3(toLightX.y, toLightY.y, toLightZ.y) * corr.y) * dot(ramp1, 1);
direction += (float3(toLightX.z, toLightY.z, toLightZ.z) * corr.z) * dot(ramp2, 1);
direction += (float3(toLightX.w, toLightY.w, toLightZ.w) * corr.w) * dot(ramp3, 1);
#endif 
}

void GetRampDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.Diffuse = 0;
float4 ramp = RampDotL(Surface);
#if defined(_BACKLACE_PARALLAX) && defined(_BACKLACE_PARALLAX_SHADOWS)
ramp *= ParallaxShadow;
#endif 
#if defined(_BACKLACE_LTCGI)
float2 ltcgi_lmUV = 0;
#if defined(LIGHTMAP_ON)
ltcgi_lmUV = FragData.lightmapUV;
#endif
LTCGI_Contribution(
FragData.worldPos,
Surface.NormalDir,
Surface.ViewDir,
Surface.Roughness,
ltcgi_lmUV,
Surface.IndirectDiffuse,
Surface.IndirectSpecular
);
#endif 
#if defined(_BACKLACE_SHADOW_TEXTURE)
float3 litColor;
#if defined(DIRECTIONAL) || defined(DIRECTIONAL_COOKIE)
litColor = Surface.Albedo * (Surface.LightColor.rgb + Surface.IndirectDiffuse);
#else 
litColor = Surface.Albedo * Surface.LightColor.rgb * Surface.LightColor.a;
#endif 
float3 shadowColor = GetTexturedShadowColor(Surface);
Surface.Diffuse = lerp(shadowColor, litColor, GetLuma(ramp.rgb));
#else 

#if defined(DIRECTIONAL) || defined(DIRECTIONAL_COOKIE)
Surface.Diffuse = Surface.Albedo * ramp.rgb * (Surface.LightColor.rgb + Surface.IndirectDiffuse);
#else 
Surface.Diffuse = Surface.Albedo * ramp.rgb * Surface.LightColor.rgb * Surface.LightColor.a;
#endif 
#endif 
Surface.Attenuation = ramp.a; 
ApplyAmbientGradient(Surface);
ApplyAreaTint(Surface);
}

void GetRampVertexDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.VertexDirectDiffuse = 0;
#if defined(VERTEXLIGHT_ON)
#if defined(_BACKLACE_VERTEX_SPECULAR)
RampDotLVertLight(Surface.NormalDir, FragData.worldPos, Surface.Occlusion, VertexDirectDiffuse, VertexLightDir);
#else
float3 ignoredDir;
RampDotLVertLight(Surface.NormalDir, FragData.worldPos, Surface.Occlusion, VertexDirectDiffuse, ignoredDir);
#endif
Surface.VertexDirectDiffuse *= Surface.Albedo * _VertexIntensity;
#endif
}
#elif defined(_ANIMEMODE_PROCEDURAL) 

void AnimeVertLight(float3 normal, float3 worldPos, float occlusion, out float3 color, out float3 direction)
{
Shade4PointLights(normal, worldPos, color, direction);
float luma = GetLuma(color);
float shadowMask = step(_AnimeHalftoneThreshold, luma + (1.0 - occlusion) * _AnimeOcclusionToShadow * 0.1);
color = lerp(color * _AnimeShadowColor.rgb, color, shadowMask);
}

void GetProceduralDiffuse(inout BacklaceSurfaceData Surface)
{
float lightTerm = saturate(Surface.UnmaxedNdotL * 0.5 + 0.5);
lightTerm = saturate(lightTerm - (1.0 - Surface.Occlusion) * _AnimeOcclusionToShadow);
#if defined(_BACKLACE_LTCGI)
float2 ltcgi_lmUV = 0;
#if defined(LIGHTMAP_ON)
ltcgi_lmUV = FragData.lightmapUV;
#endif
LTCGI_Contribution(
FragData.worldPos,
Surface.NormalDir,
Surface.ViewDir,
Surface.Roughness,
ltcgi_lmUV,
Surface.IndirectDiffuse,
Surface.IndirectSpecular
);
float3 finalColor = Surface.Albedo.rgb * Surface.IndirectDiffuse;
#else 
float3 finalColor = Surface.Albedo.rgb * unity_AmbientSky.rgb;
#endif 
float halftoneShadow = smoothstep(_AnimeHalftoneThreshold + _AnimeShadowSoftness, _AnimeHalftoneThreshold - _AnimeShadowSoftness, lightTerm);
float coreShadow = smoothstep(_AnimeShadowThreshold + _AnimeShadowSoftness, _AnimeShadowThreshold - _AnimeShadowSoftness, lightTerm);
#if defined(_BACKLACE_SHADOW_TEXTURE)
float3 texturedHalftone = GetTexturedShadowColor(Surface, _AnimeHalftoneColor.rgb * _ShadowPatternColor.rgb);
float3 texturedCore = GetTexturedShadowColor(Surface, _AnimeShadowColor.rgb * _ShadowPatternColor.rgb);
finalColor = lerp(finalColor, texturedHalftone, halftoneShadow);
finalColor = lerp(finalColor, texturedCore, coreShadow);
#else 

finalColor = lerp(finalColor, Surface.Albedo.rgb * _AnimeHalftoneColor.rgb, halftoneShadow);
finalColor = lerp(finalColor, Surface.Albedo.rgb * _AnimeShadowColor.rgb, coreShadow);
#endif 
float3 directLight = Surface.LightColor.rgb * Surface.Albedo.rgb;
float lightMask = 1.0 - halftoneShadow;
finalColor = lerp(finalColor, directLight, lightMask);
Surface.Diffuse = finalColor;
ApplyAmbientGradient(Surface);
#if defined(_BACKLACE_PARALLAX) && defined(_BACKLACE_PARALLAX_SHADOWS)
Surface.Diffuse *= ParallaxShadow;
#endif
Surface.Attenuation = lightMask;
ApplyAreaTint(Surface);
}

void GetProceduralVertexDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.VertexDirectDiffuse = 0;
#if defined(VERTEXLIGHT_ON)
#if defined(_BACKLACE_VERTEX_SPECULAR)
AnimeVertLight(Surface.NormalDir, FragData.worldPos, Surface.Occlusion, Surface.VertexDirectDiffuse, VertexLightDir);
#else
float3 ignoredDir;
AnimeVertLight(Surface.NormalDir, FragData.worldPos, Surface.Occlusion, Surface.VertexDirectDiffuse, ignoredDir);
#endif
Surface.VertexDirectDiffuse *= Surface.Albedo * _VertexIntensity;
#endif
}
#endif 

void GetAnimeDiffuse(inout BacklaceSurfaceData Surface)
{
#if defined(_ANIMEMODE_RAMP)

GetRampDiffuse(Surface);
GetRampVertexDiffuse(Surface);
#elif defined(_ANIMEMODE_PROCEDURAL) 

GetProceduralDiffuse(Surface);
GetProceduralVertexDiffuse(Surface);
#endif 
}
#endif 

void GetPBRVertexDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.VertexDirectDiffuse = 0;
#if defined(VERTEXLIGHT_ON)
#if defined(_BACKLACE_VERTEX_SPECULAR)
Shade4PointLights(Surface.NormalDir, FragData.worldPos, Surface.VertexDirectDiffuse, VertexLightDir);
#else
float3 ignoredDir;
Shade4PointLights(Surface.NormalDir, FragData.worldPos, Surface.VertexDirectDiffuse, ignoredDir);
#endif
Surface.VertexDirectDiffuse *= Surface.Albedo * _VertexIntensity;
#endif
}

void AddDiffuse(inout BacklaceSurfaceData Surface)
{
Surface.FinalColor.rgb += Surface.Diffuse + Surface.VertexDirectDiffuse;
}

void AddAlpha(inout BacklaceSurfaceData Surface)
{


if (Surface.FinalColor.a == -1) {
Surface.FinalColor.a = Surface.Albedo.a;
} else {
Surface.FinalColor.a *= Surface.Albedo.a;
}
}

#if defined(_BACKLACE_SPECULAR)

half4 Unity_GlossyEnvironment(UNITY_ARGS_TEXCUBE(tex), half4 hdr, Unity_GlossyEnvironmentData glossIn)
{
half perceptualRoughness = glossIn.roughness;
perceptualRoughness = perceptualRoughness * (1.7 - 0.7 * perceptualRoughness);
half mip = perceptualRoughness * UNITY_SPECCUBE_LOD_STEPS;
half3 R = glossIn.reflUVW;
half4 rgbm = UNITY_SAMPLE_TEXCUBE_LOD(tex, R, mip);
return float4(DecodeHDR(rgbm, hdr), rgbm.a);
}

void GetFallbackCubemap(inout BacklaceSurfaceData Surface)
{
Surface.CustomIndirect = texCUBElod(_FallbackCubemap, half4(Surface.ReflectDir.xyz, remap(Surface.SquareRoughness, 1, 0, 5, 0))).rgb;
}

float3 GetModifiedTangent(float3 tangentTS, float3 tangentDir)
{
return lerp(tangentTS, tangentDir, step(1.0, tangentTS.z));
}

float GTR2_aniso(float NdotH, float HdotX, float HdotY, float ax, float ay)
{
float denominator = sqr(sqr(HdotX / ax) + sqr(HdotY / ay) + sqr(NdotH));
return 1.0 / (UNITY_PI * ax * ay * denominator);
}

float smithG_GGX_aniso(float NdotV, float VdotX, float VdotY, float ax, float ay)
{
return 1 / (NdotV + sqrt(sqr(VdotX * ax) + sqr(VdotY * ay) + sqr(NdotV)));
}

float3 ShiftTangent(float3 T, float3 N, float shift)
{
return normalize(T + shift * N);
}

void SetupDFG(inout BacklaceSurfaceData Surface)
{
Surface.EnergyCompensation = 1.0;
}

void StandardDirectSpecular(float ndotH, float ndotL, float ndotV, out float outNDF, out float outGFS, inout BacklaceSurfaceData Surface)
{
outNDF = 0;
outGFS = 0;
outNDF = GTR2(ndotH, Surface.SquareRoughness);
outGFS = smithG_GGX(max(ndotL, lerp(0.3, 0, Surface.SquareRoughness)), Surface.Roughness) * smithG_GGX(ndotV, Surface.Roughness);
}
#if defined(_SPECULARMODE_ANISOTROPIC) 

void AnisotropicDirectSpecular(float3 tangentDir, float3 bitangentDir, float3 lightDir, float3 halfDir, float ndotH, float ndotL, float ndotV, out float outNDF, out float outGFS, inout BacklaceSurfaceData Surface)
{
outNDF = 0;
outGFS = 0;
float4 tangentTS = UNITY_SAMPLE_TEX2D_SAMPLER(_TangentMap, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _TangentMap));
float anisotropy = tangentTS.a * _Anisotropy;
float3 tangent = GetModifiedTangent(tangentTS.rgb, tangentDir);
float3 anisotropyDirection = anisotropy >= 0.0 ? bitangentDir : tangentDir;
float3 anisotropicTangent = cross(anisotropyDirection, Surface.ViewDir);
float3 anisotropicNormal = cross(anisotropicTangent, anisotropyDirection);
float bendFactor = abs(anisotropy) * saturate(1 - (Pow5(1 - Surface.SquareRoughness)));
float3 bentNormal = normalize(lerp(Surface.NormalDir, anisotropicNormal, bendFactor));
Surface.ReflectDir = reflect(-Surface.ViewDir, bentNormal);
float TdotH = dot(tangent, halfDir);
float TdotL = dot(tangent, lightDir);
float BdotH = dot(bitangentDir, halfDir);
float BdotL = dot(bitangentDir, lightDir);
float TdotV = dot(Surface.ViewDir, tangent);
float BdotV = dot(bitangentDir, Surface.ViewDir);
float ax = max(Surface.SquareRoughness * (1.0 + anisotropy), 0.005);
float ay = max(Surface.SquareRoughness * (1.0 - anisotropy), 0.005);
outNDF = GTR2_aniso(ndotH, TdotH, BdotH, ax, ay) * UNITY_PI;
outGFS = smithG_GGX_aniso(ndotL, TdotL, BdotL, ax, ay);
outGFS *= smithG_GGX_aniso(ndotV, TdotV, BdotV, ax, ay);
}
#elif defined(_SPECULARMODE_TOON) 

float3 ApplyToonHighlights(float3 F_Term, float ndotH, inout BacklaceSurfaceData Surface)
{
float hardness = _HighlightHardness * 200 + 1;
float highlightGradient = pow(ndotH, hardness);
float rampUV = saturate(highlightGradient + _HighlightRampOffset);
float3 rampColor = UNITY_SAMPLE_TEX2D(_HighlightRamp, float2(rampUV, rampUV)).rgb;
return rampColor * _HighlightRampColor.rgb * _HighlightIntensity * F_Term;
}
#elif defined(_SPECULARMODE_HAIR) 

float3 HairDirectSpecular(float3 tangentDir, float3 lightDir, inout BacklaceSurfaceData Surface)
{
float2 flow = UNITY_SAMPLE_TEX2D(_HairFlowMap, Uvs[_HairFlowMap_UV]).rg * 2 - 1;
float3 hairTangent = normalize(flow.x * Surface.TangentDir + flow.y * Surface.BitangentDir);
float3 shiftedTangent1 = normalize(hairTangent + Surface.NormalDir * _PrimarySpecularShift);
float dotT1L = dot(shiftedTangent1, lightDir);
float dotT1V = dot(shiftedTangent1, Surface.ViewDir);
float sinT1L = sqrt(1.0 - dotT1L * dotT1L);
float sinT1V = sqrt(1.0 - dotT1V * dotT1V);
float primarySpec = pow(saturate(dotT1L * dotT1V + sinT1L * sinT1V), _SpecularExponent);
float3 shiftedTangent2 = normalize(hairTangent + Surface.NormalDir * _SecondarySpecularShift);
float dotT2L = dot(shiftedTangent2, lightDir);
float dotT2V = dot(shiftedTangent2, Surface.ViewDir);
float sinT2L = sqrt(1.0 - dotT2L * dotT2L);
float sinT2V = sqrt(1.0 - dotT2V * dotT2V);
float secondarySpec = pow(saturate(dotT2L * dotT2V + sinT2L * sinT2V), _SpecularExponent);
float3 secondaryColor = Surface.Albedo.rgb * _SecondarySpecularColor.rgb;
return (primarySpec * Surface.SpecularColor) + (secondarySpec * secondaryColor);
}
#elif defined(_SPECULARMODE_CLOTH)

float CharlieSheenNDF(float roughness, float NdotH)
{
float invAlpha = 1.0 / roughness;
float cos2h = NdotH * NdotH;
float sin2h = max(1.0 - cos2h, 0.0078125); 

return (2.0 + invAlpha) * pow(sin2h, invAlpha * 0.5) / (2.0 * UNITY_PI);
}
#endif 

void GetIndirectSpecular(inout BacklaceSurfaceData Surface)
{
Unity_GlossyEnvironmentData envData;
envData.roughness = Surface.Roughness;
envData.reflUVW = BoxProjectedCubemapDirection(Surface.ReflectDir, FragData.worldPos, unity_SpecCube0_ProbePosition, unity_SpecCube0_BoxMin, unity_SpecCube0_BoxMax);
float4 indirectSpecularRGBA = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData);
#if defined(UNITY_SPECCUBE_BLENDING) && !defined(SHADER_API_MOBILE)
UNITY_BRANCH
if (unity_SpecCube0_BoxMin.w < 0.99999)
{
envData.reflUVW = BoxProjectedCubemapDirection(Surface.ReflectDir, FragData.worldPos, unity_SpecCube1_ProbePosition, unity_SpecCube1_BoxMin, unity_SpecCube1_BoxMax);
float4 indirectSpecularRGBA1 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0), unity_SpecCube1_HDR, envData);
indirectSpecularRGBA = lerp(indirectSpecularRGBA1, indirectSpecularRGBA, unity_SpecCube0_BoxMin.w);
}
#endif
Surface.IndirectSpecular = indirectSpecularRGBA.rgb;
if ((_IndirectFallbackMode > 0 && indirectSpecularRGBA.a == 0) || (_IndirectOverride == 1))
{


half lightColGrey = max((Surface.LightColor.r + Surface.LightColor.g + Surface.LightColor.b) / 3, (Surface.IndirectDiffuse.r + Surface.IndirectDiffuse.g + Surface.IndirectDiffuse.b) / 3);
Surface.IndirectSpecular = Surface.CustomIndirect * min(lightColGrey, 1);
}
float horizon = min(1 + Surface.NdotH, 1.0);
Surface.IndirectSpecular *= Surface.EnergyCompensation * horizon * horizon * Surface.SpecularColor;
#if defined(_BACKLACE_CLEARCOAT)
Surface.IndirectSpecular *= _ClearcoatReflectionStrength;
#endif 
}

void AddIndirectSpecular(inout BacklaceSurfaceData Surface)
{
Surface.FinalColor.rgb += Surface.IndirectSpecular * clamp(pow(Surface.NdotV + Surface.Occlusion, exp2(-16.0 * Surface.SquareRoughness - 1.0)) - 1.0 + Surface.Occlusion, 0.0, 1.0);
}

float3 CalculateDirectSpecular(float3 tangentDir, float3 bitangentDir, float3 lightDir, float3 halfDir, float ndotH, float ndotL, float ndotV, float ldotH, float attenuation, inout BacklaceSurfaceData Surface)
{
if (ndotL <= 0)
{
return 0.0;
}
float NDF_Term, GFS_Term;
float3 F_Term = FresnelTerm(Surface.SpecularColor, ldotH);
float3 specTerm = 0; 
#if defined(_SPECULARMODE_STANDARD)
StandardDirectSpecular(ndotH, ndotL, ndotV, NDF_Term, GFS_Term, Surface);
float3 numerator = NDF_Term * GFS_Term * F_Term;
float denominator = 4.0 * ndotV * ndotL;
specTerm = numerator / max(denominator, 0.001);
#elif defined(_SPECULARMODE_ANISOTROPIC)
AnisotropicDirectSpecular(tangentDir, bitangentDir, lightDir, halfDir, ndotH, ndotL, ndotV, NDF_Term, GFS_Term, Surface);
F_Term = FresnelTerm(Surface.SpecularColor, ldotH);
float3 numerator = NDF_Term * GFS_Term * F_Term;
float denominator = 4.0 * ndotV * ndotL;
specTerm = numerator / max(denominator, 0.001);
#elif defined(_SPECULARMODE_TOON)
StandardDirectSpecular(ndotH, ndotL, ndotV, NDF_Term, GFS_Term, Surface);
float3 ToonHighlight_Term = ApplyToonHighlights(F_Term, ndotH, Surface);
float3 numerator = GFS_Term * F_Term * ToonHighlight_Term;
float denominator = 4.0 * ndotV * ndotL;
specTerm = numerator / max(denominator, 0.001);
#elif defined(_SPECULARMODE_HAIR)
specTerm = HairDirectSpecular(tangentDir, lightDir, Surface);
#elif defined(_SPECULARMODE_CLOTH)
NDF_Term = CharlieSheenNDF(Surface.Roughness * _SheenRoughness, ndotH);
specTerm = NDF_Term * _SheenColor.rgb * _SheenColor.a * _SheenIntensity;
specTerm *= ndotL;
return max(0, specTerm * attenuation); 
#endif 

specTerm *= _SpecularIntensity * ndotL * Surface.EnergyCompensation;
#ifdef UNITY_COLORSPACE_GAMMA
specTerm = sqrt(max(1e-4h, specTerm));
#endif
specTerm = max(0, specTerm * attenuation);
specTerm *= any(Surface.SpecularColor) ? 1.0 : 0.0;
return specTerm;
}

void AddDirectSpecular(inout BacklaceSurfaceData Surface)
{
Surface.FinalColor.rgb += Surface.DirectSpecular * Surface.SpecLightColor.rgb * Surface.SpecLightColor.a;
}

#if defined(_BACKLACE_VERTEX_SPECULAR)
void AddVertexSpecular(inout BacklaceSurfaceData Surface)
{
float3 VLightDir = normalize(VertexLightDir);
if (dot(VLightDir, VLightDir) < 0.01) return;
float3 V_HalfDir = normalize(VLightDir + Surface.ViewDir);
float V_NdotL = saturate(dot(Surface.NormalDir, VLightDir));
float V_NdotH = saturate(dot(Surface.NormalDir, V_HalfDir));
float V_LdotH = saturate(dot(VLightDir, V_HalfDir));

float3 VertexSpecular = CalculateDirectSpecular(Surface.TangentDir, Surface.BitangentDir, VLightDir, V_HalfDir, V_NdotH, V_NdotL, Surface.NdotV, V_LdotH, 1.0, Surface);
Surface.FinalColor.rgb += VertexSpecular * Surface.VertexDirectDiffuse;
}
#endif 
#endif 
#endif 




#ifndef BACKLACE_FRAGMENT_CGINC
#define BACKLACE_FRAGMENT_CGINC

float4 Fragment(FragmentData i, uint facing : SV_IsFrontFace) : SV_TARGET
{
BacklaceSurfaceData Surface = (BacklaceSurfaceData)0;
Surface.IsFrontFace = (facing == 1);
Surface.FinalColor.a = -1.0; 
FragData = i;
LoadUVs();
Uvs[0] = ManipulateUVs(FragData.uv, _UV_Rotation, _UV_Scale_X, _UV_Scale_Y, _UV_Offset_X, _UV_Offset_Y, _UV_Scroll_X_Speed, _UV_Scroll_Y_Speed);
#if defined(_BACKLACE_PS1)
ApplyPS1AffineUV(Uvs[0], i);
#endif 
GetGeometryVectors(Surface, FragData);
#if defined(_BACKLACE_UV_EFFECTS)
ApplyUVEffects(Uvs[0], Surface);
#endif 
#if defined(_BACKLACE_DISTANCE_FADE)
bool isNearFading;
float fadeFactor;
CalculateDistanceFade(i, isNearFading, fadeFactor);
if(ApplyDistanceFadePre(isNearFading, fadeFactor) == -1) {
discard; 
}
#endif 
#if defined(_BACKLACE_PARALLAX)
float2 parallax_uv = Uvs[_ParallaxMap_UV];
[branch] if (_ParallaxMode == 0) 
{
ApplyParallax_Fast(parallax_uv, Surface);
}
else if (_ParallaxMode == 1) 
{
ApplyParallax_Fancy(parallax_uv, Surface);
}
Uvs[0] = parallax_uv;
#endif 
SampleAlbedo(Surface);
#if defined(_BACKLACE_VRCHAT_MIRROR)
ApplyMirrorDetectionPre(Surface);
#endif 
#if defined(_BACKLACE_DECAL1)
[branch] if (_DecalStage == 0) 
{
ApplyDecal1(Surface, FragData, Uvs);
}
#endif 
#if defined(_BACKLACE_DECAL2)
[branch] if (_DecalStage == 0) 
{
ApplyDecal2(Surface, FragData, Uvs);
}
#endif 
ClipAlpha(Surface);
SampleNormal();
#if defined(_BACKLACE_DETAIL)
ApplyDetailMaps(Surface);
#endif 
SampleMSSO(Surface);
#if defined(_BACKLACE_EMISSION)
CalculateEmission(Surface);
#endif
#if defined(_BACKLACE_SPECULAR)
GetSampleData(Surface);
#endif 
GetDirectionVectors(Surface);
GetLightData(Surface);
GetDotProducts(Surface);
#if defined(_BACKLACE_SPECULAR)
SetupAlbedoAndSpecColor(Surface);
SetupDFG(Surface);
#endif 
PremultiplyAlpha(Surface);
#if defined(_BACKLACE_TOON) 
GetAnimeDiffuse(Surface); 
#else 
GetPBRDiffuse(Surface);
GetPBRVertexDiffuse(Surface);
#endif 
#if defined(_BACKLACE_SSS)
ApplySubsurfaceScattering(Surface);
#endif 
#if defined(_BACKLACE_SPECULAR)
Surface.DirectSpecular = CalculateDirectSpecular(Surface.TangentDir, Surface.BitangentDir, Surface.LightDir, Surface.HalfDir, Surface.NdotH, Surface.NdotL, Surface.NdotV, Surface.LdotH, Surface.Attenuation, Surface);
[branch] if (_IndirectFallbackMode == 1)
{
GetFallbackCubemap(Surface);
}
GetIndirectSpecular(Surface);
#endif 
AddDiffuse(Surface);
#if defined(_BACKLACE_TOUCH_REACTIVE)
ApplyTouchReactive(Surface, i);
#endif 
#if defined(_BACKLACE_POST_PROCESSING)
ApplyPostProcessing(Surface, i);
#endif 
#if defined(_BACKLACE_SPECULAR)
AddDirectSpecular(Surface);
AddIndirectSpecular(Surface);
#if defined(_BACKLACE_VERTEX_SPECULAR) && defined(VERTEXLIGHT_ON)
AddVertexSpecular(Surface);
#endif 
#endif 
#if defined(_BACKLACE_RIMLIGHT)
CalculateRimlight(Surface);
#if defined(_BACKLACE_AUDIOLINK)
Rimlight *= i.alChannel1.y;
#endif 
Surface.FinalColor.rgb += Rimlight;
#endif 
#if defined(_BACKLACE_DEPTH_RIMLIGHT)
ApplyDepthRim(Surface, i);
#endif 
#if defined(_BACKLACE_EMISSION)
#if defined(_BACKLACE_AUDIOLINK)
Surface.FinalColor.rgb += (Emission * i.alChannel1.x);
#else 
Surface.FinalColor.rgb += Emission;
#endif 
#endif 
#if defined(_BACKLACE_PATHING)
ApplyPathing(Surface, i);
#endif 
#if defined(_BACKLACE_IRIDESCENCE)
ApplyIridescence(Surface, i);
#endif 
#if defined(BACKLACE_GRABPASS)
#if defined(_BACKLACE_REFRACTION)
ApplyRefraction(Surface, i);
#endif 
#if defined(_BACKLACE_SSR)
ApplyScreenSpaceReflections(Surface, i);
#endif 
#endif 
#if defined(_BACKLACE_GLITTER)
ApplyGlitter(Surface);
#endif 
#if defined(_BACKLACE_WORLD_EFFECT)
ApplyWorldAlignedEffect(Surface, i);
#endif 
#if defined(_BACKLACE_MATCAP)
ApplyMatcap(Surface, i);
#endif 
#if defined(_BACKLACE_CUBEMAP)
ApplyCubemap(Surface);
#endif 
#if defined(_BACKLACE_CLEARCOAT)
float3 baseColor = Surface.FinalColor.rgb;
float3 clearcoatHighlight;
float3 clearcoatAttenuation;
CalculateClearcoat(Surface, clearcoatHighlight, clearcoatAttenuation);
Surface.FinalColor.rgb = (baseColor * clearcoatAttenuation) + clearcoatHighlight;
#if defined(_BACKLACE_VERTEX_SPECULAR) && defined(VERTEXLIGHT_ON)
AddClearcoatVertex(Surface);
#endif 
#endif 
#if defined(_BACKLACE_PS1)
ApplyPS1ColorCompression(Surface.FinalColor);
#endif 
#if defined(_BACKLACE_DECAL1)
[branch] if (_DecalStage == 1) 
{
ApplyDecal1(Surface, FragData, Uvs);
}
#endif 
#if defined(_BACKLACE_DECAL2)
[branch] if (_DecalStage == 1) 
{
ApplyDecal2(Surface, FragData, Uvs);
}
#endif 
AddAlpha(Surface);
#if defined(_BACKLACE_DISTANCE_FADE)
ApplyDistanceFadePost(i, fadeFactor, isNearFading, Surface);
#endif 
#if defined(_BACKLACE_DITHER)
ApplyDither(Surface, i.worldPos.xy, Uvs[_Dither_UV]);
#endif 
#if defined(_BACKLACE_VRCHAT_MIRROR)
ApplyMirrorDetectionPost(Surface); 
#endif 
#if defined(_BACKLACE_DISSOLVE) 
ApplyDissolve(Surface, i);
#endif 
Surface.FinalColor.a *= _Alpha;
return Surface.FinalColor;
}
#endif 





#ifndef BACKLACE_VERTEX_CGINC
#define BACKLACE_VERTEX_CGINC
FragmentData Vertex(VertexData v)
{
FragmentData i;
UNITY_SETUP_INSTANCE_ID(v);
UNITY_INITIALIZE_OUTPUT(FragmentData, i);
UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(i);

#if defined(_BACKLACE_AUDIOLINK)
BacklaceAudioLinkData al_data = CalculateAudioLinkEffects();
i.alChannel1 = float4(al_data.emission, al_data.rim, al_data.hueShift, al_data.matcap);
i.alChannel2 = float4(al_data.pathing, al_data.glitter, al_data.iridescence, al_data.decalHue);
i.alChannel3 = float2(al_data.decalEmission, al_data.decalOpacity);
v.vertex.xyz *= _VertexManipulationScale * (al_data.vertexScale); 
#else 
v.vertex.xyz *= _VertexManipulationScale; 
#endif 

v.vertex.xyz += _VertexManipulationPosition; 

#if defined(_BACKLACE_VERTEX_DISTORTION)
DistortVertex(v.vertex, mul(unity_ObjectToWorld, v.vertex).xyz, v.color);
#endif 

i.vertex = v.vertex;
i.pos = UnityObjectToClipPos(v.vertex);
i.normal = UnityObjectToWorldNormal(v.normal);
i.worldPos = mul(unity_ObjectToWorld, v.vertex);
i.worldObjectCenter = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
i.tangentDir = v.tangentDir;
i.uv = v.uv;
i.uv1 = v.uv1;
i.uv2 = v.uv2;
i.uv3 = v.uv3;

#if defined(_BACKLACE_PS1)
ApplyPS1Vertex(i, v);
#endif 

i.scrPos = ComputeScreenPos(i.pos);

#if defined(_BACKLACE_FLAT_MODEL)
FlattenModel(v.vertex, v.normal, i.pos, i.worldPos, i.normal);
#endif 
UNITY_TRANSFER_SHADOW(i, v.uv);
UNITY_TRANSFER_FOG(i, i.pos);
#if defined(LIGHTMAP_ON)
i.lightmapUV = v.uv1 * unity_LightmapST.xy + unity_LightmapST.zw;
#endif 
#if defined(DYNAMICLIGHTMAP_ON)
i.dynamicLightmapUV = v.uv2 * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
#endif 
#if defined(_BACKLACE_MATCAP)
float3 worldN = UnityObjectToWorldNormal(v.normal);
float3 viewN = mul((float3x3)UNITY_MATRIX_V, worldN);
i.matcapUV = viewN.xy * 0.5 + 0.5;
#endif 
return i;
}
#endif 


#endif 


ENDCG
}
Pass
{
Name "ShadowCaster"
Tags { "LightMode" = "ShadowCaster" }
ZWrite On
ZTest [_ZTest]
CGPROGRAM
#ifndef UNITY_PASS_SHADOWCASTER
#define UNITY_PASS_SHADOWCASTER
#endif 


#ifndef BACKLACE_SHADOW_CGINC
#define BACKLACE_SHADOW_CGINC

#pragma target 5.0
#pragma multi_compile_shadowcaster
#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
#pragma vertex Vertex
#pragma fragment Fragment


#include "UnityCG.cginc"

struct VertexData
{
float4 vertex : POSITION;
float3 normal : NORMAL;
float4 tangentDir : TANGENT;
float2 uv : TEXCOORD0;
float2 uv1 : TEXCOORD1;
float2 uv2 : TEXCOORD2;
float2 uv3 : TEXCOORD3;
};
struct VertexOutput
{
float4 pos : SV_POSITION;
#if defined(_BLENDMODE_CUTOUT) || defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
float2 uv : TEXCOORD0;
float2 uv1 : TEXCOORD1;
float2 uv2 : TEXCOORD2;
float2 uv3 : TEXCOORD3;
#endif 
#if defined(SHADOWS_CUBE)
float3 lightVec : TEXCOORD4;
#endif 
float4 vertex : TEXCOORD5;
float3 worldPos : TEXCOORD6;
float3 normal : NORMAL;
};
struct FragmentData
{
#if defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
UNITY_VPOS_TYPE pos : VPOS;
#else
float4 pos : SV_POSITION;
#endif
#if defined(_BLENDMODE_CUTOUT) || defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
float2 uv : TEXCOORD0;
float2 uv1 : TEXCOORD1;
float2 uv2 : TEXCOORD2;
float2 uv3 : TEXCOORD3;
#endif 
#if defined(SHADOWS_CUBE)
float3 lightVec : TEXCOORD4;
#endif 
float4 vertex : TEXCOORD5;
float3 worldPos : TEXCOORD6;
float3 normal : NORMAL;
};

sampler3D _DitherMaskLOD;
FragmentData FragData;
UNITY_DECLARE_TEX2D(_MainTex);
float4 _MainTex_ST;
float4 _Color;
float _Cutoff;
float _MainTex_UV;
int _DecalStage;

float _UV_Offset_X;
float _UV_Offset_Y;
float _UV_Scale_X;
float _UV_Scale_Y;
float _UV_Rotation;
float _UV_Scroll_X_Speed;
float _UV_Scroll_Y_Speed;

float3 _VertexManipulationPosition;
float3 _VertexManipulationScale;

#if defined(_BACKLACE_UV_EFFECTS)

float _UVTriplanarMapping;
float3 _UVTriplanarPosition;
float _UVTriplanarScale;
float3 _UVTriplanarRotation;
float _UVTriplanarSharpness;

float _UVScreenspaceMapping;
float _UVScreenspaceTiling;

float _UVFlipbook;
float _UVFlipbookRows;
float _UVFlipbookColumns;
float _UVFlipbookFrames;
float _UVFlipbookFPS;
float _UVFlipbookScrub;

float _UVFlowmap;
UNITY_DECLARE_TEX2D(_UVFlowmapTex);
float _UVFlowmapStrength;
float _UVFlowmapSpeed;
float _UVFlowmapDistortion;
float _UVFlowmap_UV;
#endif 

#if defined(_BACKLACE_DECAL1)
UNITY_DECLARE_TEX2D(_Decal1Tex);
float4 _Decal1Tint;
float2 _Decal1Position;
float2 _Decal1Scale;
float _Decal1Rotation;
float _Decal1_UV;
float _Decal1TriplanarSharpness;
int _Decal1BlendMode;
float _Decal1IsTriplanar;
float3 _Decal1TriplanarPosition;
float _Decal1TriplanarScale;
float3 _Decal1TriplanarRotation;
float _Decal1Repeat;
float2 _Decal1Scroll;
float _Decal1HueShift;
float _Decal1AutoCycleHue;
float _Decal1CycleSpeed;
#endif 

#if defined(_BACKLACE_DECAL2)
UNITY_DECLARE_TEX2D(_Decal2Tex);
float4 _Decal2Tint;
float2 _Decal2Position;
float2 _Decal2Scale;
float _Decal2Rotation;
float _Decal2_UV;
float _Decal2TriplanarSharpness;
int _Decal2BlendMode;
float _Decal2IsTriplanar;
float3 _Decal2TriplanarPosition;
float _Decal2TriplanarScale;
float3 _Decal2TriplanarRotation;
float _Decal2Repeat;
float2 _Decal2Scroll;
float _Decal2HueShift;
float _Decal2AutoCycleHue;
float _Decal2CycleSpeed;
#endif 



#ifndef BACKLACE_UNIVERSAL_CGINC
#define BACKLACE_UNIVERSAL_CGINC

#define BACKLACE_TRANSFORM_TEX(set, name) (set[name##_UV].xy * name##_ST.xy + name##_ST.zw)

struct BacklaceSurfaceData
{

float4 FinalColor;

float4 Albedo;
float3 NormalDir;
float3 TangentDir;
float3 BitangentDir;

float Metallic;
float Glossiness;
float Roughness;
float SquareRoughness;
float Specular;
float OneMinusReflectivity;
float Occlusion;

float3 ViewDir;
float3 LightDir;
float3 HalfDir;
float3 ReflectDir;

float NdotL;
float UnmaxedNdotL;
float NdotV;
float NdotH;
float LdotH;

float4 LightColor;
float4 SpecLightColor;
float3 IndirectDiffuse;
float3 Diffuse;
float3 DirectSpecular;
float3 IndirectSpecular;
float3 VertexDirectDiffuse;
float Attenuation;

float3 SpecularColor;
float3 EnergyCompensation;
float3 Dfg;
float3 CustomIndirect;

float2 ScreenCoords;
bool IsFrontFace;
};

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD) || defined(UNITY_PASS_META) || defined(_BLENDMODE_CUTOUT) || defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
#ifndef UNITY_PASS_OUTLINE

float2 Uvs[4];
void LoadUVs()
{
Uvs[0] = FragData.uv;
Uvs[1] = FragData.uv1;
Uvs[2] = FragData.uv2;
Uvs[3] = FragData.uv3;
}
void SampleAlbedo(inout BacklaceSurfaceData Surface)
{
Surface.Albedo = UNITY_SAMPLE_TEX2D(_MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _MainTex)) * _Color;
}
#endif 
#endif 

inline float remap(float value, float oldMin, float oldMax, float newMin, float newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float2 remap(float2 value, float2 oldMin, float2 oldMax, float2 newMin, float2 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float3 remap(float3 value, float3 oldMin, float3 oldMax, float3 newMin, float3 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float4 remap(float4 value, float4 oldMin, float4 oldMax, float4 newMin, float4 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline half Pow5(half x)
{
return x * x * x * x * x;
}

float sqr(float x)
{
return x * x;
}

inline float GetLuma(float3 color)
{
return dot(color, float3(0.299, 0.587, 0.114));
}


float fastpow(float x, float p)
{
return exp2(p * log2(x));
}

float Hash(float2 p)
{
float3 p3 = frac(float3(p.xyx) * .1031);
p3 += dot(p3, p3.yzx + 33.33);
return frac((p3.x + p3.y) * p3.z);
}

float2 Hash2(float2 p)
{
return float2(Hash(p), Hash(p + 0.123));
}

float3 HSVtoRGB(float3 c)
{
float4 K = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
float3 p = abs(frac(c.xxx + K.xyz) * 6.0 - K.www);
return c.z * lerp(K.xxx, saturate(p - K.xxx), c.y);
}

float3 RGBtoHSV(float3 c) {
float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
float4 p = lerp(float4(c.bg, K.wz), float4(c.gb, K.xy), step(c.b, c.g));
float4 q = lerp(float4(p.xyw, c.r), float4(c.r, p.yzx), step(p.x, c.r));
float d = q.x - min(q.w, q.y);
float E = 1e-10;
return float3(abs(q.z + (q.w - q.y) / (6.0 * d + E)), d / (q.x + E), q.x);
}

inline half3 FresnelTerm(half3 F0, half cosA)
{
half t = Pow5(1 - cosA);
return F0 + (1 - F0) * t;
}

float GTR2(float NdotH, float a)
{
float a2 = a * a;
float NdotH2 = NdotH * NdotH;
float denominator = NdotH2 * (a2 - 1.0) + 1.0;
denominator = UNITY_PI * denominator * denominator + 1e-7f;
return a2 / denominator;
}

float smithG_GGX(float NdotV, float alphaG)
{
float a = alphaG * alphaG;
float b = NdotV * NdotV;
return 1 / (NdotV + sqrt(a + b - a * b) + 1e-7f);
}

float3 ApplyHueShift(float3 inColor, float baseShift, float autoCycleToggle, float autoCycleSpeed)
{
float totalShift = baseShift;
if (autoCycleToggle > 0)
{
totalShift += frac(_Time.y * autoCycleSpeed);
}
float3 hsv = RGBtoHSV(inColor);
hsv.x = frac(hsv.x + totalShift);
return HSVtoRGB(hsv);
}

float3 Sinebow(float val)
{
val = 0.5 - val * 0.5; 
float3 sinebowColor = sin((val * UNITY_PI) + float3(0.0, 0.333 * UNITY_PI, 0.666 * UNITY_PI));
return sinebowColor * sinebowColor;
}

float3 GetCameraPos()
{
#if UNITY_SINGLE_PASS_STEREO
return (unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1]) * 0.5;
#else 
return _WorldSpaceCameraPos;
#endif 
}

float3 RotateVector(float3 pos, float3 rotation)
{
float3 angles = rotation * (UNITY_PI / 180.0);
float3 s, c;
sincos(angles, s, c);
float3x3 rotX = float3x3(1, 0, 0, 0, c.x, -s.x, 0, s.x, c.x);
float3x3 rotY = float3x3(c.y, 0, s.y, 0, 1, 0, -s.y, 0, c.y);
float3x3 rotZ = float3x3(c.z, -s.z, 0, s.z, c.z, 0, 0, 0, 1);
return mul(rotZ, mul(rotY, mul(rotX, pos)));
}

void GetTriplanarUVsAndWeights(
float3 worldPos, float3 normal,
float3 position, float scale, float3 rotation, float sharpness,
out float2 uvX, out float2 uvY, out float2 uvZ, out float3 weights)
{
float3 localPos = RotateVector(worldPos - position, -rotation);
weights = pow(abs(normal), sharpness);
weights /= dot(weights, 1.0.xxx); 
uvX = localPos.yz / scale;
uvY = localPos.xz / scale;
uvZ = localPos.xy / scale;
}

float4 SampleTriplanar(
Texture2D tex, SamplerState texSampler,
float2 uvX, float2 uvY, float2 uvZ, float3 weights,
bool isTiling, float2 scroll)
{
float4 sampleX, sampleY, sampleZ;
float2 scrollOffset = scroll * _Time.y;
if (isTiling)
{

sampleX = tex.Sample(texSampler, frac(uvX + scrollOffset));
sampleY = tex.Sample(texSampler, frac(uvY + scrollOffset));
sampleZ = tex.Sample(texSampler, frac(uvZ + scrollOffset));
}
else
{

uvX += 0.5;
uvY += 0.5;
uvZ += 0.5;
sampleX = 0;
if (all(saturate(uvX) == uvX))
{
sampleX = tex.Sample(texSampler, uvX);
}
sampleY = 0;
if (all(saturate(uvY) == uvY))
{
sampleY = tex.Sample(texSampler, uvY);
}
sampleZ = 0;
if (all(saturate(uvZ) == uvZ))
{
sampleZ = tex.Sample(texSampler, uvZ);
}
}
return sampleX * weights.x + sampleY * weights.y + sampleZ * weights.z;
}

float4 SampleTextureTriplanar(Texture2D tex, SamplerState texSampler, float3 worldPos,
float3 normal, float3 position, float scale, float3 rotation,
float sharpness, bool isTiling, float2 scroll)
{

float2 uvX, uvY, uvZ;
float3 weights;
GetTriplanarUVsAndWeights(worldPos, normal, position, scale, rotation, sharpness, uvX, uvY, uvZ, weights);

return SampleTriplanar(tex, texSampler, uvX, uvY, uvZ, weights, isTiling, scroll);
}
float2 ApplyFlipbook(float2 uvs, float columns, float rows, float totalFrames, float fps, float scrub)
{
float frame = floor(frac(fps * _Time.y + scrub) * totalFrames);
float col = fmod(frame, columns);
float row = floor(frame / columns);
float2 cellSize = 1.0 / float2(columns, rows);
row = (rows - 1) - row;
float2 outputUVs = (uvs * cellSize) + float2(col, row) * cellSize;
return outputUVs;
}

float2 ManipulateUVs(float2 uv, float rotation, float scalex, float scaley, float offsetx, float offsety, float scrollx, float scrolly)
{
float2 finalUV = uv;
if (rotation != 0)
{
finalUV = uv - 0.5;
float angle = -rotation * (UNITY_PI / 180.0);
float s = sin(angle);
float c = cos(angle);
float2x2 rotationMatrix = float2x2(c, -s, s, c);
finalUV = mul(rotationMatrix, finalUV);
finalUV += 0.5;
}
finalUV *= float2(scalex, scaley);
finalUV += float2(offsetx, offsety);
finalUV += float2(scrollx, scrolly) * _Time.y;
return finalUV;
}

float GetTiltedCheckerboardPattern(float2 screenPos, float scale)
{
float u = screenPos.x + screenPos.y;
float v = screenPos.x - screenPos.y;
float2 gridPos = floor(float2(u, v) / scale);
return fmod(gridPos.x + gridPos.y, 2.0);
}

#if defined(_BACKLACE_DECAL1) || defined(_BACKLACE_DECAL2)
void ApplyDecal_UVSpace(inout float4 baseAlbedo, float2 baseUV, Texture2D decalTex, SamplerState decalSampler, float4 tint, float2 position, float2 scale, float rotation, int blendMode, float repeat, float2 scroll, float hueShift, float autoCycle, float cycleSpeed, float alHue, float alEmission, float alOpacity)
{
baseUV += scroll * _Time.y;
float angle = -rotation * (UNITY_PI / 180.0);
float s = sin(angle);
float c = cos(angle);
float2x2 rotationMatrix = float2x2(c, -s, s, c);
float2 localUV = baseUV - position;
localUV = mul(rotationMatrix, localUV);
localUV /= max(scale, 0.0001);
localUV += 0.5;
if (repeat == 1) 
{
localUV = frac(localUV);
}
else 
{
if (any(saturate(localUV) != localUV))
{
return;
}
}
float4 decalColor = decalTex.Sample(decalSampler, localUV) * tint;
decalColor.rgb = ApplyHueShift(decalColor.rgb, hueShift + alHue, autoCycle, cycleSpeed);
decalColor.a *= alOpacity;
decalColor.rgb *= alEmission;
switch(blendMode)
{
case 0: baseAlbedo.rgb += decalColor.rgb * decalColor.a; break; 
case 1: baseAlbedo.rgb = lerp(baseAlbedo.rgb, baseAlbedo.rgb * decalColor.rgb, decalColor.a); break; 
case 2: baseAlbedo.rgb = lerp(baseAlbedo.rgb, decalColor.rgb, decalColor.a); break; 
}
}
void ApplyDecal_Triplanar(inout float4 baseAlbedo, float3 worldPos, float3 normal, Texture2D decalTex, SamplerState decalSampler, float4 tint, float3 position, float scale, float3 rotation, float sharpness, int blendMode, float repeat, float2 scroll, float hueShift, float autoCycle, float cycleSpeed, float alHue, float alEmission, float alOpacity)
{
float4 decalColor = SampleTextureTriplanar(decalTex, decalSampler, worldPos, normal, position, scale, rotation, sharpness, repeat > 0.5, scroll);
decalColor *= tint;
if (hueShift != 0) {
decalColor.rgb = ApplyHueShift(decalColor.rgb, hueShift + alHue, autoCycle, cycleSpeed);
}
decalColor.a *= alOpacity;
decalColor.rgb *= alEmission;
switch(blendMode)
{
case 0: baseAlbedo.rgb += decalColor.rgb * decalColor.a; break;
case 1: baseAlbedo.rgb = lerp(baseAlbedo.rgb, baseAlbedo.rgb * decalColor.rgb, decalColor.a); break;
case 2: baseAlbedo.rgb = lerp(baseAlbedo.rgb, decalColor.rgb, decalColor.a); break;
}
}

#if defined(_BACKLACE_DECAL1)
void ApplyDecal1(inout BacklaceSurfaceData Surface, FragmentData i, float2 Uvs[4])
{
float alHue = 0;
float alEmission = 1;
float alOpacity = 1;
#if defined(_BACKLACE_AUDIOLINK)
alHue = i.alChannel2.w;
alEmission = i.alChannel3.x;
alOpacity = i.alChannel3.y;
#endif 
float4 decalApplied = (_DecalStage == 0) ? Surface.Albedo : float4(Surface.FinalColor.rgb, 1.0);
[branch] if (_Decal1IsTriplanar == 1)
{
ApplyDecal_Triplanar(decalApplied, i.worldPos, Surface.NormalDir, _Decal1Tex, sampler_Decal1Tex, _Decal1Tint, _Decal1TriplanarPosition.xyz, _Decal1TriplanarScale, _Decal1TriplanarRotation.xyz, _Decal1TriplanarSharpness, _Decal1BlendMode, _Decal1Repeat, _Decal1Scroll.xy, _Decal1HueShift, _Decal1AutoCycleHue, _Decal1CycleSpeed, alHue, alEmission, alOpacity);
}
else
{
ApplyDecal_UVSpace(decalApplied, Uvs[_Decal1_UV], _Decal1Tex, sampler_Decal1Tex, _Decal1Tint, _Decal1Position.xy, _Decal1Scale.xy, _Decal1Rotation, _Decal1BlendMode, _Decal1Repeat, _Decal1Scroll, _Decal1HueShift, _Decal1AutoCycleHue, _Decal1CycleSpeed, alHue, alEmission, alOpacity);
}
[branch] if (_DecalStage == 0) 
{
Surface.Albedo = decalApplied;
}
else 
{
Surface.FinalColor.rgb = decalApplied.rgb;
}
}
#endif 

#if defined(_BACKLACE_DECAL2)
void ApplyDecal2(inout BacklaceSurfaceData Surface, FragmentData i, float2 Uvs[4])
{
float alHue = 0;
float alEmission = 1;
float alOpacity = 1;
#if defined(_BACKLACE_AUDIOLINK)
alHue = i.alChannel2.w;
alEmission = i.alChannel3.x;
alOpacity = i.alChannel3.y;
#endif 
float4 decalApplied = (_DecalStage == 0) ? Surface.Albedo : float4(Surface.FinalColor.rgb, 1.0);
[branch] if (_Decal2IsTriplanar == 1)
{
ApplyDecal_Triplanar(decalApplied, i.worldPos, Surface.NormalDir, _Decal2Tex, sampler_Decal2Tex, _Decal2Tint, _Decal2TriplanarPosition.xyz, _Decal2TriplanarScale, _Decal2TriplanarRotation.xyz, _Decal2TriplanarSharpness, _Decal2BlendMode, _Decal2Repeat, _Decal2Scroll, _Decal2HueShift, _Decal2AutoCycleHue, _Decal2CycleSpeed, alHue, alEmission, alOpacity);
}
else
{
ApplyDecal_UVSpace(decalApplied, Uvs[_Decal2_UV], _Decal2Tex, sampler_Decal2Tex, _Decal2Tint, _Decal2Position.xy, _Decal2Scale.xy, _Decal2Rotation, _Decal2BlendMode, _Decal2Repeat, _Decal2Scroll, _Decal2HueShift, _Decal2AutoCycleHue, _Decal2CycleSpeed, alHue, alEmission, alOpacity);
}
[branch] if (_DecalStage == 0) 
{
Surface.Albedo = decalApplied;
}
else 
{
Surface.FinalColor.rgb = decalApplied.rgb;
}
}
#endif 
#endif 

#if defined(_BACKLACE_UV_EFFECTS)
void ApplyUVEffects(inout float2 uv, in BacklaceSurfaceData Surface)
{

[branch] if (_UVTriplanarMapping == 1)
{
float2 uvX, uvY, uvZ;
float3 weights;
GetTriplanarUVsAndWeights(
FragData.worldPos, Surface.NormalDir,
_UVTriplanarPosition, _UVTriplanarScale, _UVTriplanarRotation, _UVTriplanarSharpness,
uvX, uvY, uvZ, weights
);
uv = uvX * weights.x + uvY * weights.y + uvZ * weights.z;
}

[branch] if (_UVScreenspaceMapping == 1)
{
uv = frac(Surface.ScreenCoords * _UVScreenspaceTiling);
}

[branch] if (_UVFlipbook == 1) {
uv = ApplyFlipbook(uv, _UVFlipbookColumns, _UVFlipbookRows, _UVFlipbookFrames, _UVFlipbookFPS, _UVFlipbookScrub);
}

[branch] if (_UVFlowmap == 1) {
float2 flow = UNITY_SAMPLE_TEX2D(_UVFlowmapTex, uv).rg * 2.0 - 1.0;
uv += flow * _UVFlowmapStrength * frac(_Time.y * _UVFlowmapSpeed);
}
}
#endif 

#if defined(_BACKLACE_DISSOLVE)
float _DissolveProgress;
UNITY_DECLARE_TEX2D(_DissolveNoiseTex);
float _DissolveNoiseScale;
float4 _DissolveEdgeColor;
int _DissolveType;
float _DissolveEdgeWidth;
float4 _DissolveDirection;
int _DissolveDirectionSpace;
float _DissolveDirectionBounds;
float _DissolveVoxelDensity;
float _DissolveEdgeSharpness;
float _DissolveEdgeMode;
float GetDissolveMapValue(float3 worldPos, float3 vertexPos, float3 normalDir)
{
float dissolveMapValue = 0;
switch(_DissolveType)
{
case 0: 
{
dissolveMapValue = SampleTextureTriplanar(
_DissolveNoiseTex, sampler_DissolveNoiseTex,
worldPos, normalDir,
float3(0,0,0), _DissolveNoiseScale, float3(0,0,0),
2.0, true, float2(0, 0)
).r;
break;
}
case 1: 
{
float3 position = (_DissolveDirectionSpace == 0) ? vertexPos : worldPos;
float3 direction = normalize(_DissolveDirection.xyz);
dissolveMapValue = dot(position, direction) / max(_DissolveDirectionBounds, 0.001);
dissolveMapValue = saturate(dissolveMapValue * 0.5 + 0.5); 
break;
}
case 2: 
{
float3 voxelID = floor(worldPos * _DissolveVoxelDensity);
dissolveMapValue = Hash(voxelID.xy + voxelID.z);
break;
}
}
return dissolveMapValue;
}
#endif 

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD) || defined(UNITY_PASS_META)

void SampleMSSO(inout BacklaceSurfaceData Surface)
{
Msso = UNITY_SAMPLE_TEX2D_SAMPLER(_MSSO, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _MSSO));
Surface.Occlusion = lerp(1, Msso.a, _Occlusion);
}

#if defined(_BACKLACE_SPECULAR)

void GetSampleData(inout BacklaceSurfaceData Surface)
{
Surface.Metallic = Msso.r * _Metallic;
Surface.Glossiness = Msso.g * _Glossiness;
Surface.Specular = Msso.b * _Specular;
Surface.Roughness = 1 - Surface.Glossiness;
Surface.SquareRoughness = max(Surface.Roughness * Surface.Roughness, 0.002);
}

void SetupAlbedoAndSpecColor(inout BacklaceSurfaceData Surface)
{
float3 specularTint = (UNITY_SAMPLE_TEX2D_SAMPLER(_SpecularTintTexture, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _SpecularTintTexture)).rgb * _SpecularTint).rgb;
float sp = Surface.Specular;
Surface.SpecularColor = lerp(float3(sp, sp, sp), Surface.Albedo.rgb, Surface.Metallic);
if (_ReplaceSpecular == 1)
{
Surface.SpecularColor = specularTint;
}
else
{
Surface.SpecularColor *= specularTint;
}
Surface.OneMinusReflectivity = (1 - sp) - (Surface.Metallic * (1 - sp));
Surface.Albedo.rgb *= Surface.OneMinusReflectivity;
}
#endif 

#if defined(_BACKLACE_EMISSION)

void CalculateEmission(inout BacklaceSurfaceData Surface)
{
float3 baseEmission = _EmissionColor.rgb;
[branch] if (_UseAlbedoAsEmission > 0)
{
baseEmission = lerp(baseEmission, Surface.Albedo.rgb, _UseAlbedoAsEmission);
}
float3 emissionMap = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _EmissionMap)).rgb;
Emission = baseEmission * emissionMap * _EmissionStrength;
}
#endif 
#endif 
#endif 




#ifndef BACKLACE_EFFECTS_CGINC
#define BACKLACE_EFFECTS_CGINC

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD)
#if defined(_BACKLACE_DISSOLVE)

void ApplyDissolve(inout BacklaceSurfaceData Surface, FragmentData i)
{
float dissolveMapValue = GetDissolveMapValue(i.worldPos, i.vertex.xyz, Surface.NormalDir);
float halfWidth = max(_DissolveEdgeWidth, 0.0001) * 0.5;
if (_DissolveEdgeMode == 0) 
{
float fadeIn = smoothstep(0.0, halfWidth, _DissolveProgress);
float fadeOut = 1.0 - smoothstep(1.0 - halfWidth, 1.0, _DissolveProgress);
float masterIntensity = fadeIn * fadeOut;
float distanceFromLine = abs(dissolveMapValue - _DissolveProgress);
float baseGradient = 1.0 - smoothstep(0, halfWidth, distanceFromLine);
float hardnessPower = lerp(1.0, 16.0, _DissolveEdgeSharpness);
float edgeGlow = pow(baseGradient, hardnessPower);
edgeGlow *= masterIntensity;
float surfaceAlpha = step(_DissolveProgress, dissolveMapValue);
Surface.FinalColor.rgb += _DissolveEdgeColor.rgb * edgeGlow * _DissolveEdgeColor.a;
Surface.FinalColor.a = max(surfaceAlpha, edgeGlow * _DissolveEdgeColor.a);
}
else 
{
float startEdge = _DissolveProgress - halfWidth;
float endEdge = _DissolveProgress + halfWidth;
float alpha = saturate(smoothstep(startEdge, endEdge, dissolveMapValue));
Surface.FinalColor.a = alpha;
}
}
#endif 
#endif 

#if defined(_BACKLACE_POST_PROCESSING)
UNITY_DECLARE_TEX2D(_ColorGradingLUT);
float4 _RGBColor;
float _RGBBlendMode;
float _HSVMode;
float _HSVHue;
float _HSVSaturation;
float _HSVValue;
float _ToggleHueShift;
float _HueShift;
float _ToggleAutoCycle;
float _AutoCycleSpeed;
float _ColorGradingIntensity;
float _BlackAndWhite;
float _Brightness;
void ApplyPostProcessing(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 finalColor = Surface.FinalColor.rgb;

float3 tintedColor = lerp(finalColor * _RGBColor.rgb, _RGBColor.rgb, _RGBBlendMode);
finalColor = tintedColor;

float3 hsv = RGBtoHSV(finalColor);
[branch] if (_HSVMode == 1) 
{
hsv.x = frac(hsv.x + _HSVHue);
hsv.y += _HSVSaturation - 1.0;
hsv.z += _HSVValue - 1.0;
}
else if (_HSVMode == 2) 
{
hsv.x = frac(hsv.x + _HSVHue);
hsv.y *= _HSVSaturation;
hsv.z *= _HSVValue;
}
finalColor = HSVtoRGB(saturate(hsv));

[branch] if (_ToggleHueShift > 0)
{
#if defined(_BACKLACE_AUDIOLINK)
finalColor = ApplyHueShift(finalColor, _HueShift + i.alChannel1.z, _ToggleAutoCycle, _AutoCycleSpeed);
#else 
finalColor = ApplyHueShift(finalColor, _HueShift, _ToggleAutoCycle, _AutoCycleSpeed);
#endif 
}

[branch] if (_ColorGradingIntensity > 0)
{
float3 gradedColor = UNITY_SAMPLE_TEX2D(_ColorGradingLUT, finalColor.rg).rgb;
finalColor = lerp(finalColor, gradedColor, _ColorGradingIntensity);
}

[branch] if (_BlackAndWhite > 0)
{
float luma = GetLuma(finalColor);
finalColor = lerp(finalColor, float3(luma, luma, luma), _BlackAndWhite);
}

finalColor *= _Brightness;
Surface.FinalColor.rgb = finalColor;
}
#endif 

#if defined(_BACKLACE_DETAIL)
UNITY_DECLARE_TEX2D(_DetailAlbedoMap);
UNITY_DECLARE_TEX2D(_DetailNormalMap);
float _DetailMap_UV;
float _DetailTiling;
float _DetailNormalStrength;
void ApplyDetailMaps(inout BacklaceSurfaceData Surface)
{
float2 detailUV = Uvs[_DetailMap_UV] * _DetailTiling;
float4 detailAlbedo = UNITY_SAMPLE_TEX2D(_DetailAlbedoMap, detailUV);
Surface.Albedo.rgb *= detailAlbedo.rgb * 2 * detailAlbedo.a;
float3 detailNormalTS = UnpackScaleNormal(UNITY_SAMPLE_TEX2D(_DetailNormalMap, detailUV), _DetailNormalStrength);
float3 baseNormalTS = NormalMap;
NormalMap = normalize(float3(baseNormalTS.xy + detailNormalTS.xy, baseNormalTS.z * detailNormalTS.z));
}
#endif 

#if defined(_BACKLACE_SSS)
float _ThicknessMap_UV;
float4 _SSSColor;
float _SSSStrength;
float _SSSPower;
float _SSSDistortion;
UNITY_DECLARE_TEX2D(_SSSThicknessMap);
float _SSSThickness;
void ApplySubsurfaceScattering(inout BacklaceSurfaceData Surface)
{
float thickness = UNITY_SAMPLE_TEX2D(_SSSThicknessMap, Uvs[_ThicknessMap_UV]).r * _SSSThickness;
float3 scatterDir = normalize(Surface.LightDir + Surface.NormalDir * _SSSDistortion);
float scatterDot = dot(Surface.ViewDir, -scatterDir);
scatterDot = saturate(scatterDot);
float scatterFalloff = pow(scatterDot, _SSSPower);
float3 sss = Surface.LightColor.rgb * _SSSColor.rgb * scatterFalloff * _SSSStrength * thickness;
Surface.Diffuse += sss;
}
#endif 

#if defined(_BACKLACE_PARALLAX)
UNITY_DECLARE_TEX2D(_ParallaxMap);
float _ParallaxMap_UV;
float _ParallaxStrength;
float _ParallaxMode;
float _ParallaxSteps;
#if defined(_BACKLACE_PARALLAX_SHADOWS)
float ParallaxShadow;
float _ParallaxShadowSteps;
float _ParallaxShadowStrength;
#endif 
void ApplyParallax_Fast(inout float2 uv, in BacklaceSurfaceData Surface)
{
float height = UNITY_SAMPLE_TEX2D(_ParallaxMap, uv).r;
float3 viewDirTS = float3(dot(Surface.ViewDir, Surface.TangentDir), dot(Surface.ViewDir, Surface.BitangentDir), 0);
float2 offset = viewDirTS.xy * (height * _ParallaxStrength);
uv -= offset;
}
void ApplyParallax_Fancy(inout float2 uv, inout BacklaceSurfaceData Surface)
{
float3 viewDirTS = float3(dot(Surface.ViewDir, Surface.TangentDir), dot(Surface.ViewDir, Surface.BitangentDir), dot(Surface.ViewDir, Surface.NormalDir));
float numSteps = _ParallaxSteps;
float stepSize = 1.0 / numSteps;
float2 step = -viewDirTS.xy * _ParallaxStrength * stepSize;
float currentHeight = 1.0;
float2 currentUVOffset = 0;
float surfaceHeight = 1.0;
[loop] for (int i = 0; i < numSteps; i++)
{
currentHeight -= stepSize;
currentUVOffset += step;
surfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + currentUVOffset, 0).r;
if (surfaceHeight > currentHeight)
{
currentUVOffset -= step;
currentHeight += stepSize;
float prevSurfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + currentUVOffset, 0).r;
float distanceToSurface = currentHeight - surfaceHeight;
float distanceBetweenSamples = surfaceHeight - prevSurfaceHeight;
currentUVOffset += step * (distanceToSurface / max(distanceBetweenSamples, 0.001));
uv += currentUVOffset;
surfaceHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv, 0).r;
break;
}
}
#if defined(_BACKLACE_PARALLAX_SHADOWS)
ParallaxShadow = 1.0;
float3 lightDirTS = float3(dot(Surface.LightDir, Surface.TangentDir), dot(Surface.LightDir, Surface.BitangentDir), dot(Surface.LightDir, Surface.NormalDir));
float shadowSteps = _ParallaxShadowSteps;
float shadowStepSize = 1.0 / shadowSteps;
float2 shadowStep = lightDirTS.xy * _ParallaxStrength * shadowStepSize;
float shadowRayHeight = surfaceHeight + shadowStepSize;
[loop] for (int j = 0; j < shadowSteps; j++)
{
float shadowSampleHeight = _ParallaxMap.SampleLevel(sampler_ParallaxMap, uv + shadowStep * j, 0).r;
if (shadowSampleHeight > shadowRayHeight)
{
ParallaxShadow = 0.0;
break;
}
shadowRayHeight += shadowStepSize;
}
ParallaxShadow = lerp(1.0, ParallaxShadow, _ParallaxShadowStrength);
#endif 
}
#endif 

#if defined(_BACKLACE_CUBEMAP)
samplerCUBE _CubemapTex;
float4 _CubemapTint;
float _CubemapIntensity;
int _CubemapBlendMode;
void ApplyCubemap(inout BacklaceSurfaceData Surface)
{
float3 cubemapColor = texCUBE(_CubemapTex, Surface.ReflectDir).rgb * _CubemapTint.rgb;
float intensity = _CubemapIntensity;
switch(_CubemapBlendMode)
{
case 0: 
Surface.FinalColor.rgb += cubemapColor * intensity;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * cubemapColor, intensity);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, cubemapColor, intensity);
break;
}
}
#endif 

#if defined(_BACKLACE_MATCAP)
UNITY_DECLARE_TEX2D(_MatcapTex);
UNITY_DECLARE_TEX2D(_MatcapMask);
float4 _MatcapTex_ST;
float _MatcapIntensity;
float3 _MatcapTint;
float _MatcapSmoothnessEnabled;
float _MatcapSmoothness;
float _MatcapMask_UV;
int _MatcapBlendMode;
void ApplyMatcap(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 matcapColor;
[branch] if (_MatcapSmoothnessEnabled == 1)
{

float mipLevel = _MatcapSmoothness * 10.0;
matcapColor = UNITY_SAMPLE_TEX2D_LOD(_MatcapTex, i.matcapUV, mipLevel).rgb;
}
else
{
matcapColor = UNITY_SAMPLE_TEX2D(_MatcapTex, i.matcapUV).rgb;
}
matcapColor *= _MatcapTint.rgb;
float mask = UNITY_SAMPLE_TEX2D(_MatcapMask, Uvs[_MatcapMask_UV]).r;
float finalMatcapIntensity = _MatcapIntensity;
#if defined(_BACKLACE_AUDIOLINK)
finalMatcapIntensity *= i.alChannel1.w;
#endif 
float3 finalMatcap = matcapColor * finalMatcapIntensity * mask;
switch(_MatcapBlendMode)
{
case 0: 
Surface.FinalColor.rgb += finalMatcap;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * matcapColor, mask * _MatcapIntensity);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, matcapColor * _MatcapIntensity, mask);
break;
}
}
#endif 

#if defined(_BACKLACE_RIMLIGHT)
float3 Rimlight;
float4 _RimColor;
float _RimWidth;
float _RimIntensity;
float _RimLightBased;
void CalculateRimlight(inout BacklaceSurfaceData Surface)
{
float fresnel = 1 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
fresnel = pow(fresnel, _RimWidth);
[branch] if (_RimLightBased > 0)
{
fresnel *= Surface.NdotL;
}
Rimlight = fresnel * _RimColor.rgb * _RimIntensity;
}
#endif 

#if defined(_BACKLACE_CLEARCOAT)
UNITY_DECLARE_TEX2D(_ClearcoatMap);
float4 _ClearcoatMap_ST;
float _ClearcoatStrength;
float _ClearcoatRoughness;
float _ClearcoatReflectionStrength;
float _ClearcoatMap_UV;
float4 _ClearcoatColor;
void CalculateClearcoat(inout BacklaceSurfaceData Surface, out float3 highlight, out float3 occlusion)
{
float4 clearcoatMap = UNITY_SAMPLE_TEX2D(_ClearcoatMap, Uvs[_ClearcoatMap_UV]);
float mask = _ClearcoatStrength * clearcoatMap.r;
float roughness = _ClearcoatRoughness * clearcoatMap.g;
float3 F0 = lerp(0.04, 1.0, _ClearcoatReflectionStrength);
float3 fresnel = FresnelTerm(F0, Surface.LdotH);
float squareRoughness = max(roughness * roughness, 0.002);
float distribution = GTR2(Surface.NdotH, squareRoughness);
float geometry = smithG_GGX(Surface.NdotL, squareRoughness) * smithG_GGX(Surface.NdotV, squareRoughness);
float3 clearcoatSpec = fresnel * distribution * geometry;
highlight = clearcoatSpec * lerp(Surface.LightColor.rgb, Surface.LightColor.rgb * _ClearcoatColor.rgb, _ClearcoatColor.a) * mask;
float3 occlusionTint = lerp(1.0, _ClearcoatColor.rgb, fresnel);
occlusion = lerp(1.0, occlusionTint, mask);
}
#if defined(_BACKLACE_VERTEX_SPECULAR) && defined(VERTEXLIGHT_ON)
void AddClearcoatVertex(inout BacklaceSurfaceData Surface)
{
float3 VLightDir = normalize(VertexLightDir);
if (dot(VLightDir, VLightDir) < 0.01) return;
float3 F0 = lerp(0.04, 1.0, _ClearcoatReflectionStrength);
float3 fresnel = FresnelTerm(F0, saturate(dot(normalize(VLightDir + Surface.ViewDir), VLightDir)));
float roughness = _ClearcoatRoughness; 
float squareRoughness = max(roughness * roughness, 0.002);
float distribution = GTR2(saturate(dot(Surface.NormalDir, normalize(VLightDir + Surface.ViewDir))), squareRoughness);
float geometry = smithG_GGX(saturate(dot(Surface.NormalDir, VLightDir)), squareRoughness) * smithG_GGX(Surface.NdotV, squareRoughness);
float3 clearcoatV_Spec = fresnel * distribution * geometry;
Surface.FinalColor.rgb += clearcoatV_Spec * Surface.VertexDirectDiffuse * _ClearcoatColor.rgb * _ClearcoatStrength;
}
#endif 
#endif 

#if defined(_BACKLACE_DEPTH_RIMLIGHT)
#ifndef BACKLACE_DEPTH
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif 
float4 _DepthRimColor;
float _DepthRimWidth;
float _DepthRimThreshold;
float _DepthRimSharpness;
int _DepthRimBlendMode;

static const int2 sobelPoints[9] = {
int2(-1, -1), int2(0, -1), int2(1, -1),
int2(-1, 0), int2(0, 0), int2(1, 0),
int2(-1, 1), int2(0, 1), int2(1, 1)
};

float ScaleRimWidth(float z) {
float scale = 1.0 / z;
return _DepthRimWidth * 50.0 / _ScreenParams.y * scale;
}
void ApplyDepthRim(inout BacklaceSurfaceData Surface, FragmentData i)
{
float sceneDepthRaw = tex2D(_CameraDepthTexture, float2(i.scrPos.xy / i.scrPos.w)).r;
float sceneDepthLinear = LinearEyeDepth(sceneDepthRaw);
float modelDepthLinear = i.scrPos.w;;
float depthStatus = 0;
[unroll(9)]
for (int idx = 0; idx < 9; idx++)
{
float2 offset = sobelPoints[idx] * ScaleRimWidth(modelDepthLinear);
float sampleDepthRaw = tex2D(_CameraDepthTexture, float2(i.scrPos.xy / i.scrPos.w) + offset).r;
float sampleDepthLinear = LinearEyeDepth(sampleDepthRaw);
depthStatus += step(modelDepthLinear + _DepthRimThreshold, sampleDepthLinear);
}
float edgeFactor = depthStatus / 9.0;
edgeFactor = pow(edgeFactor, _DepthRimSharpness);
float rimIntensity = edgeFactor * _DepthRimColor.a;
switch(_DepthRimBlendMode)
{
case 0: 
Surface.FinalColor.rgb += _DepthRimColor.rgb * rimIntensity;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, _DepthRimColor.rgb, rimIntensity);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * _DepthRimColor.rgb, rimIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_PATHING)
UNITY_DECLARE_TEX2D(_PathingMap);
float2 _PathingMap_ST;
float4 _PathingColor;
float _PathingEmission;
int _PathingType;
float _PathingSpeed;
float _PathingWidth;
float _PathingSoftness;
float _PathingOffset;
float _PathingMap_UV;
float _PathingScale;
int _PathingBlendMode;
int _PathingMappingMode;
int _PathingColorMode;
float4 _PathingColor2;
UNITY_DECLARE_TEX2D(_PathingTexture);
float _PathingTexture_UV;
void ApplyPathing(inout BacklaceSurfaceData Surface, FragmentData i)
{
float pathValue;
if (_PathingMappingMode == 0) 
{
pathValue = UNITY_SAMPLE_TEX2D(_PathingMap, frac(Uvs[_PathingMap_UV] * _PathingScale)).r;
}
else 
{
pathValue = SampleTextureTriplanar(
_PathingMap, sampler_PathingMap,
FragData.worldPos, Surface.NormalDir,
float3(0, 0, 0), _PathingScale, float3(0, 0, 0),
2.0, true, float2(0, 0)
).r;
}
float pathTime = frac(_Time.y * _PathingSpeed + _PathingOffset);
float pathAlpha = 0;
switch(_PathingType)
{
case 1: 
pathAlpha = 1.0 - saturate(abs(pathTime - pathValue) / _PathingWidth);
break;
case 2: 
float loop_dist = abs(pathTime - pathValue);
loop_dist = min(loop_dist, 1.0 - loop_dist);
pathAlpha = 1.0 - saturate(loop_dist / _PathingWidth);
break;
case 3: 
pathTime = 1.0 - abs(1.0 - 2.0 * pathTime); 
pathAlpha = 1.0 - saturate(abs(pathTime - pathValue) / _PathingWidth);
break;
case 4: 
float trail_dist = pathTime - pathValue;
pathAlpha = smoothstep(0, _PathingWidth, trail_dist) - smoothstep(_PathingWidth, _PathingWidth + 0.001, trail_dist);
break;
case 5: 
float convergeTime = abs(1.0 - 2.0 * pathTime); 
float convergeDist = abs(convergeTime - (abs(1.0 - 2.0 * pathValue)));
pathAlpha = 1.0 - saturate(convergeDist / _PathingWidth);
break;
default: 
pathAlpha = pathTime > pathValue;
break;
}
pathAlpha = smoothstep(0, _PathingSoftness, pathAlpha);
#if defined(_BACKLACE_AUDIOLINK)
pathAlpha *= i.alChannel2.x;
#endif 
if (pathAlpha <= 0.001) return;

float3 pathEmission = pathAlpha * _PathingEmission;
float pathBlend = _PathingColor.a;
switch(_PathingColorMode)
{
case 1: 
float4 pathSample = UNITY_SAMPLE_TEX2D(_PathingTexture, Uvs[_PathingTexture_UV]);
pathEmission *= pathSample.rgb;
pathBlend = pathSample.a;
break;
case 2: 
float4 pathGradinet = lerp(_PathingColor, _PathingColor2, pathValue);
pathEmission *= pathGradinet.rgb;
pathBlend = pathGradinet.a;
break;
default: 
pathEmission *= _PathingColor.rgb;
break;
}
switch(_PathingBlendMode)
{
case 0: 
Surface.FinalColor.rgb += pathEmission;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * pathEmission.rgb, pathAlpha);
break;
case 2: 
float blendIntensity = pathAlpha * pathBlend;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, pathEmission.rgb, blendIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_GLITTER)

UNITY_DECLARE_TEX2D(_GlitterMask);
UNITY_DECLARE_TEX2D(_GlitterNoiseTex);
float _Glitter_UV;
float _GlitterMask_UV;
float _ToggleGlitterRainbow;
float _GlitterMode;
float4 _GlitterTint;
float _GlitterFrequency;
float _GlitterThreshold;
float _GlitterSize;
float _GlitterFlickerSpeed;
float _GlitterBrightness;
float _GlitterContrast;
float _GlitterRainbowSpeed;

void ApplyGlitter(inout BacklaceSurfaceData Surface)
{
float3 final_glitter = 0;
float unique_flake_id = 0;
float glitter_mask = 0;
float2 uv = Uvs[_Glitter_UV] * _GlitterFrequency;
float2 i_uv = floor(uv);
float2 f_uv = frac(uv);
[branch] if (_GlitterMode == 0) 
{
float min_dist = 1.0;
float2 closest_point_id = 0;
for (int y = -1; y <= 1; y++)
{
for (int x = -1; x <= 1; x++)
{
float2 neighbor_offset = float2(x, y);
float2 point_pos = Hash2(i_uv + neighbor_offset);
float dist = length(neighbor_offset +point_pos - f_uv);
if (dist < min_dist)
{
min_dist = dist;
closest_point_id = i_uv + neighbor_offset;
}
}
}
unique_flake_id = Hash(closest_point_id);
if (unique_flake_id < _GlitterThreshold) return;
glitter_mask = saturate((_GlitterSize - min_dist) / max(fwidth(min_dist), 0.001));
}
else if (_GlitterMode == 1) 
{

float noise_val = UNITY_SAMPLE_TEX2D_LOD(_GlitterNoiseTex, i_uv / _GlitterFrequency, 0).r;
if (noise_val < _GlitterThreshold) return;
float dist_from_center = length(f_uv - 0.5);
glitter_mask = saturate((_GlitterSize - dist_from_center) / max(fwidth(dist_from_center), 0.001));
unique_flake_id = Hash(i_uv);
}
if (glitter_mask <= 0) return;
float time = _Time.y * _GlitterFlickerSpeed + unique_flake_id * 100;
float3 glitter_normal = normalize(float3(sin(time * 1.2), cos(time * 1.7), sin(time * 1.5)));
float sparkle = fastpow(saturate(dot(Surface.ViewDir, glitter_normal)), _GlitterContrast);
float3 glitter_color = _GlitterTint.rgb;
if (_ToggleGlitterRainbow > 0)
{
float rainbow_time = _Time.y * _GlitterRainbowSpeed;
glitter_color = lerp(glitter_color, Sinebow(unique_flake_id + rainbow_time), _ToggleGlitterRainbow);
}
float finalGlitterBrightness = _GlitterBrightness;
#if defined(_BACKLACE_AUDIOLINK)
finalGlitterBrightness *= i.alChannel2.y;
#endif 
final_glitter = glitter_mask * glitter_color * finalGlitterBrightness;
float mask_val = UNITY_SAMPLE_TEX2D(_GlitterMask, Uvs[_GlitterMask_UV]).r;
sparkle *= mask_val;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, final_glitter, sparkle);
}
#endif 

#if defined(_BACKLACE_DISTANCE_FADE)

float _DistanceFadeReference;
float _ToggleNearFade;
float _NearFadeMode;
float _NearFadeDitherScale;
float _NearFadeStart;
float _NearFadeEnd;
float _ToggleFarFade;
float _FarFadeStart;
float _FarFadeEnd;

void CalculateDistanceFade(FragmentData i, inout bool isNearFading, out float fade_factor)
{
fade_factor = 1.0;
float3 referencePos = _DistanceFadeReference == 1 ? i.worldObjectCenter : i.worldPos;
float view_dist = distance(referencePos, GetCameraPos());
isNearFading = false;
if (_ToggleNearFade == 1 && _NearFadeStart > _NearFadeEnd)
{
float nearFade = smoothstep(_NearFadeEnd, _NearFadeStart, view_dist);
fade_factor *= nearFade;
isNearFading = nearFade < 1.0;
}
if (_ToggleFarFade == 1 && _FarFadeEnd > _FarFadeStart)
{
float farFade = 1.0 - smoothstep(_FarFadeStart, _FarFadeEnd, view_dist);
fade_factor *= farFade;
}
}

float ApplyDistanceFadePre(bool isNearFading, float fade_factor)
{
if (_NearFadeMode == 0) { 
if (fade_factor == 0) {
return -1; 
}
}
return fade_factor; 
}

void ApplyDistanceFadePost(FragmentData i, float fade_factor, bool isNearFading, inout BacklaceSurfaceData Surface)
{
[branch] if (_NearFadeMode == 1 && isNearFading) {
float pattern = GetTiltedCheckerboardPattern(Surface.ScreenCoords * _ScreenParams.xy, _NearFadeDitherScale);
Surface.FinalColor.a *= step(fade_factor, pattern);
} else {

Surface.FinalColor.a *= fade_factor;
}
}
#endif 

#if defined(_BACKLACE_IRIDESCENCE)
UNITY_DECLARE_TEX2D(_IridescenceMask);
float _IridescenceMask_UV;
float4 _IridescenceTint;
float _IridescenceIntensity;
int _IridescenceBlendMode;
UNITY_DECLARE_TEX2D(_IridescenceRamp);
float _IridescencePower;
float _IridescenceFrequency;
float _IridescenceMode;
float _IridescenceParallax;;
void ApplyIridescence(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 shiftedNormal = normalize(Surface.NormalDir + Surface.ViewDir * _IridescenceParallax);
float fresnel_base = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
float fresnel_shifted = 1.0 - saturate(dot(shiftedNormal, Surface.ViewDir));
float interference = abs(fresnel_shifted - fresnel_base);
float3 iridescenceColor = 0;
float finalFresnel = pow(interference, _IridescencePower);
if (_IridescenceMode == 0) 
{
iridescenceColor = UNITY_SAMPLE_TEX2D(_IridescenceRamp, float2(finalFresnel, 0.5)).rgb;
}
else if (_IridescenceMode == 1) 
{
float hue = finalFresnel * _IridescenceFrequency;
iridescenceColor = Sinebow(hue);
}
float mask = UNITY_SAMPLE_TEX2D(_IridescenceMask, Uvs[_IridescenceMask_UV]).r;
float finalIridescenceIntensity = _IridescenceIntensity;
#if defined(_BACKLACE_AUDIOLINK)
finalIridescenceIntensity *= i.alChannel2.z;
#endif 
float finalIntensity = finalIridescenceIntensity * pow(fresnel_base, 2.0) * mask;
iridescenceColor *= _IridescenceTint.rgb * finalIntensity;
[branch] switch(_IridescenceBlendMode)
{
case 0: 
Surface.FinalColor.rgb += iridescenceColor;
break;
case 1: 
Surface.FinalColor.rgb = 1.0 - (1.0 - Surface.FinalColor.rgb) * (1.0 - iridescenceColor);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, iridescenceColor, finalIntensity);
break;
}
}
#endif 

#if defined(_BACKLACE_SHADOW_TEXTURE)
UNITY_DECLARE_TEX2D(_ShadowTex);
float _ShadowTex_UV;
float4 _ShadowPatternColor;
float _ShadowPatternScale;
float _ShadowTextureIntensity;
int _ShadowTextureMappingMode;
float _ShadowPatternTriplanarSharpness;
float _ShadowPatternTransparency;
int _ShadowTextureBlendMode;
float3 GetTexturedShadowColor(inout BacklaceSurfaceData Surface, float3 shadowTint)
{
float3 texturedShadow;
float blendFactor;
float3 albedoTintedShadow = shadowTint * Surface.Albedo.rgb;
float shadowMask = 1.0 - Surface.NdotL;
switch(_ShadowTextureMappingMode)
{
case 0: 
{
float4 shadowAlbedoSample = UNITY_SAMPLE_TEX2D(_ShadowTex, Uvs[_ShadowTex_UV]);
texturedShadow = shadowAlbedoSample.rgb;
blendFactor = shadowAlbedoSample.a * shadowMask;
break;
}
case 1: 
{
float2 screenUVs = frac(Surface.ScreenCoords * _ShadowPatternScale);
float4 patternSample = UNITY_SAMPLE_TEX2D(_ShadowTex, screenUVs);
texturedShadow = albedoTintedShadow;
blendFactor = patternSample.r * patternSample.a * shadowMask;
break;
}
case 2: 
{
float4 patternSample = SampleTextureTriplanar(
_ShadowTex, sampler_MainTex,
FragData.worldPos, Surface.NormalDir,
float3(0, 0, 0), _ShadowPatternScale, float3(0, 0, 0),
_ShadowPatternTriplanarSharpness, true, float2(0, 0)
);
texturedShadow = albedoTintedShadow;
blendFactor = patternSample.r * patternSample.a * shadowMask;
break;
}
}
float3 baseShadowColour = Surface.Albedo.rgb * lerp(Surface.IndirectDiffuse, 1.0, _ShadowPatternTransparency);
float3 finalShadowColor;
switch(_ShadowTextureBlendMode)
{
case 0: 
finalShadowColor = baseShadowColour + texturedShadow * blendFactor;
break;
case 1: 
finalShadowColor = lerp(baseShadowColour, baseShadowColour * texturedShadow, blendFactor);
break;
default: 
finalShadowColor = lerp(baseShadowColour, texturedShadow, blendFactor);
break;
}
float3 originalShadowColor = Surface.Albedo.rgb * Surface.IndirectDiffuse;
return lerp(originalShadowColor, finalShadowColor, _ShadowTextureIntensity);
}
float3 GetTexturedShadowColor(inout BacklaceSurfaceData Surface)
{
return GetTexturedShadowColor(Surface, _ShadowPatternColor.rgb);
}
#endif 

#if defined(_BACKLACE_FLAT_MODEL)
float _FlatModel;
float _FlatModelDepthCorrection;
float _FlatModelFacing;
float _FlatModelLockAxis;
float _FlatModelEnable;
float _FlatModeAutoflip;

void FlattenModel(inout float4 vertex, float3 normal, out float4 finalClipPos, out float3 finalWorldPos, out float3 finalWorldNormal)
{
float facingAngle = _FlatModelFacing * - UNITY_PI / 2.0;
float s, c;
sincos(facingAngle, s, c);
float3 targetFwd_object = float3(s, 0, c);
float3 camPos_object = mul(unity_WorldToObject, float4(GetCameraPos(), 1.0)).xyz;
float flipSign = sign(dot(camPos_object, targetFwd_object));
if (flipSign == 0.0) flipSign = 1.0;
if (_FlatModeAutoflip == 0) flipSign = 1.0;
float3 virtualCamDir_object = targetFwd_object * flipSign * length(camPos_object);
float3 virtualCamPos_world = mul(unity_ObjectToWorld, float4(virtualCamDir_object, 1.0)).xyz;
float3 finalCamPos_world = lerp(GetCameraPos(), virtualCamPos_world, _FlatModelLockAxis);
float3 worldObjectPivot = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
float3 billboardFwd = normalize(finalCamPos_world - worldObjectPivot);
float3 billboardUp = float3(0, 1, 0);
float3 billboardRight = normalize(cross(billboardUp, billboardFwd));
billboardUp = cross(billboardFwd, billboardRight);
float3 flattenedWorldPos = worldObjectPivot;

flattenedWorldPos += billboardRight * vertex.x;
flattenedWorldPos += billboardUp * vertex.y;
flattenedWorldPos -= billboardFwd * vertex.z * _FlatModelDepthCorrection;
float3 originalWorldPos = mul(unity_ObjectToWorld, vertex).xyz;
finalWorldPos = lerp(originalWorldPos, flattenedWorldPos, _FlatModel);
finalClipPos = UnityWorldToClipPos(float4(finalWorldPos, 1.0));
finalWorldNormal = UnityObjectToWorldNormal(normal);
}
#endif 

#if defined(_BACKLACE_WORLD_EFFECT)
UNITY_DECLARE_TEX2D(_WorldEffectTex);
float4 _WorldEffectColor;
float4 _WorldEffectDirection;
float _WorldEffectScale;
float _WorldEffectBlendSharpness;
float _WorldEffectIntensity;
int _WorldEffectBlendMode;
float3 _WorldEffectPosition;
float3 _WorldEffectRotation;
UNITY_DECLARE_TEX2D(_WorldEffectMask);
void ApplyWorldAlignedEffect(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 effectDir = normalize(_WorldEffectDirection.xyz);
float directionMask = saturate(dot(Surface.NormalDir, effectDir));
directionMask = pow(directionMask, _WorldEffectBlendSharpness);
if (directionMask <= 0.001)
{
return;
}
float4 effectSample = SampleTextureTriplanar(
_WorldEffectTex, sampler_WorldEffectTex,
i.worldPos, Surface.NormalDir,
_WorldEffectPosition, _WorldEffectScale, _WorldEffectRotation,
1.0,
true,
float2(0, 0)
);
float3 finalEffectColor = effectSample.rgb * _WorldEffectColor.rgb;
float mask = UNITY_SAMPLE_TEX2D(_WorldEffectMask, Uvs[0]).r;
float blendStrength = directionMask * effectSample.a * _WorldEffectIntensity * mask;
switch(_WorldEffectBlendMode)
{
case 1: 
Surface.FinalColor.rgb += finalEffectColor * blendStrength;
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * finalEffectColor, blendStrength);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalEffectColor, blendStrength);
break;
}
}
#endif 

#if defined(_BACKLACE_VRCHAT_MIRROR)
UNITY_DECLARE_TEX2D(_MirrorDetectionTexture);
float _MirrorDetectionTexture_UV;
float _MirrorDetectionMode; 
float _VRChatMirrorMode; 
bool IsInMirrorView()
{
if (_VRChatMirrorMode > 0.5) return true;

return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
}

#ifndef UNITY_PASS_OUTLINE

void ApplyMirrorDetectionPre(inout BacklaceSurfaceData Surface)
{
if (_MirrorDetectionMode == 0 && IsInMirrorView()) 
{
float mask = UNITY_SAMPLE_TEX2D(_MirrorDetectionTexture, Uvs[_MirrorDetectionTexture_UV]).r;
Surface.FinalColor.a *= mask;
}
}

void ApplyMirrorDetectionPost(inout BacklaceSurfaceData Surface)
{
if (_MirrorDetectionMode == 1 && IsInMirrorView()) 
{
Surface.FinalColor.a = 0;
}
else if (_MirrorDetectionMode == 2 && !IsInMirrorView()) 
{
Surface.FinalColor.a = 0;
}
}
#endif 
#endif 

#if defined(_BACKLACE_TOUCH_REACTIVE)
#ifndef BACKLACE_DEPTH 
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif 
float4 _TouchColor;
float _TouchRadius;
float _TouchHardness;
int _TouchMode; 
float _TouchRainbowSpeed;
float _TouchRainbowSpread;
void ApplyTouchReactive(inout BacklaceSurfaceData Surface, FragmentData i)
{
float sceneDepthRaw = tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.scrPos)).r;
float sceneDepthLinear = LinearEyeDepth(sceneDepthRaw);
float depthDifference = sceneDepthLinear - i.scrPos.w;
float intersect = 1.0 - smoothstep(0, _TouchRadius, depthDifference);
if (intersect <= 0) return;
intersect = fastpow(intersect, _TouchHardness);
float3 touchEffect = _TouchColor.rgb * intersect * _TouchColor.a;
switch (_TouchMode) {
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, touchEffect, intersect);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * touchEffect, intersect);
break;
case 3: 
float time = _Time.y * _TouchRainbowSpeed;
float3 rainbowColor = Sinebow(depthDifference * _TouchRainbowSpread + time);
touchEffect = rainbowColor * intersect * _TouchColor.a;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, touchEffect, intersect);
break;
default: 
Surface.FinalColor.rgb += touchEffect;
break;
}
}
#endif 

#if defined(_BACKLACE_VERTEX_DISTORTION)
int _VertexDistortionMode;
int _VertexDistortionColorMask; 
float3 _VertexDistortionStrength;
float3 _VertexDistortionSpeed;
float3 _VertexDistortionFrequency;
float _WindStrength;
float _WindSpeed;
float _WindScale;
float4 _WindDirection;
UNITY_DECLARE_TEX2D(_WindNoiseTex);
float _BreathingStrength;
float _BreathingSpeed;
void DistortVertex(inout float4 vertex, float3 worldPos, float4 vertexColor)
{
float time = _Time.y;
float3 distortion = 0;

float mask = 1.0;
switch (_VertexDistortionColorMask)
{
case 1: 
mask = vertexColor.r;
break;
case 2: 
mask = vertexColor.g;
break;
case 3: 
mask = vertexColor.b;
break;
case 4: 
mask = (vertexColor.r + vertexColor.g + vertexColor.b) / 3.0;
break;
default: 
mask = 1.0;
break;
}

switch(_VertexDistortionMode)
{
case 0: 
{
distortion.x = sin(vertex.y * _VertexDistortionFrequency.x + time * _VertexDistortionSpeed.x) * _VertexDistortionStrength.x;
distortion.y = sin(vertex.x * _VertexDistortionFrequency.y + time * _VertexDistortionSpeed.y) * _VertexDistortionStrength.y;
distortion.z = sin(vertex.x * _VertexDistortionFrequency.z + time * _VertexDistortionSpeed.z) * _VertexDistortionStrength.z;
break;
}
case 1: 
{
float offsetX = sin(vertex.x * _VertexDistortionFrequency.x) * cos(vertex.y * _VertexDistortionFrequency.x) * _VertexDistortionStrength.x;
float offsetY = cos(vertex.y * _VertexDistortionFrequency.y) * sin(vertex.z * _VertexDistortionFrequency.y) * _VertexDistortionStrength.y;
float offsetZ = sin(vertex.z * _VertexDistortionFrequency.z) * cos(vertex.x * _VertexDistortionFrequency.z) * _VertexDistortionStrength.z;
distortion = float3(offsetX, offsetY, offsetZ) * sin(time * _VertexDistortionSpeed.x); 
break;
}
case 2: 
{
float2 windUV = worldPos.xz * _WindScale + (_Time.y * _WindSpeed * _WindDirection.xz);
float noise = UNITY_SAMPLE_TEX2D_LOD(_WindNoiseTex, windUV, 0).r * 2.0 - 1.0;
float sineWave = sin(_Time.y * _WindSpeed + worldPos.x + worldPos.z);
distortion = normalize(_WindDirection.xyz) * (noise + sineWave) * _WindStrength * mask;
break;
}
case 3: 
{
float breath = (sin(_Time.y * _BreathingSpeed) + 1.0) * 0.5;
float3 localNormal = normalize(vertex.xyz);
distortion = localNormal * breath * _BreathingStrength * mask;
break;
}
}
vertex.xyz += distortion;
}
#endif 

#if defined(_BACKLACE_DITHER)
float _DitherAmount;
float _DitherScale;
float _DitherSpace;
int _Dither_UV;
void ApplyDither(inout BacklaceSurfaceData Surface, float2 worldPos, float2 uvs)
{
float2 ditherUV = 0;
switch (_DitherSpace) {
case 1: 
ditherUV = frac(worldPos) * _ScreenParams.xy;
break;
case 2: 
ditherUV = uvs * _ScreenParams.xy; 
break;
default: 
ditherUV = Surface.ScreenCoords * _ScreenParams.xy;
break;
}
float pattern = GetTiltedCheckerboardPattern(ditherUV, _DitherScale);
Surface.FinalColor.a = lerp(Surface.FinalColor.a, Surface.FinalColor.a * pattern, _DitherAmount);
}
#endif 

#if defined(_BACKLACE_PS1)
int _PS1Rounding;
float _PS1RoundingPrecision;
int _PS1Affine;
int _PS1Compression;
float _PS1CompressionPrecision;
void ApplyPS1Vertex(inout FragmentData i, in VertexData v)
{
if (_PS1Rounding == 1)
{
float4 worldPos = mul(unity_ObjectToWorld, v.vertex);
worldPos.xyz = ceil(worldPos.xyz * _PS1RoundingPrecision) / _PS1RoundingPrecision;
i.pos = mul(UNITY_MATRIX_VP, worldPos);
}
else if (_PS1Rounding == 2)
{
float4 pos = i.pos;
pos.xy /= pos.w;
pos.xy = round(pos.xy * _PS1RoundingPrecision) / _PS1RoundingPrecision;
pos.xy *= pos.w;
i.pos = pos;
}
if (_PS1Affine == 1)
{
i.affineUV = float4(v.uv.x, v.uv.y, 0, 0) * i.pos.w;
}
}
void ApplyPS1AffineUV(inout float2 uv, in FragmentData i)
{
if (_PS1Affine == 1)
{
uv = i.affineUV.xy / i.pos.w;
}
}
void ApplyPS1ColorCompression(inout float4 finalColor)
{
if (_PS1Compression == 1)
{
finalColor.rgb = floor(finalColor.rgb * _PS1CompressionPrecision) / _PS1CompressionPrecision;
}
}
#endif 

#if defined(BACKLACE_GRABPASS)
UNITY_DECLARE_SCREENSPACE_TEXTURE(_BacklaceGP);
float4 _BacklaceGP_TexelSize;

#if defined(_BACKLACE_REFRACTION)
UNITY_DECLARE_TEX2D(_RefractionMask);
float _RefractionMask_UV;
float4 _RefractionTint;
float _RefractionIOR;
float _RefractionFresnel;
UNITY_DECLARE_TEX2D(_CausticsTex);
float _CausticsTiling;
float _CausticsSpeed;
float _CausticsIntensity;
UNITY_DECLARE_TEX2D(_DistortionNoiseTex);
float _DistortionNoiseTiling;
float _DistortionNoiseStrength;
int _RefractionDistortionMode;
float _RefractionCAStrength;
float _RefractionBlurStrength;
float _RefractionOpacity;
float _RefractionMixStrength;
int _RefractionCAUseFresnel;
float _RefractionCAEdgeFade;
float _RefractionMode; 
float4 _CausticsColor;
float _RefractionBlendMode;
float _RefractionSeeThrough;
void ApplyRefraction(inout BacklaceSurfaceData Surface, FragmentData i)
{
float fresnel = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
fresnel = pow(fresnel, _RefractionFresnel);
float2 noise = (SampleTextureTriplanar(_DistortionNoiseTex, sampler_DistortionNoiseTex, i.worldPos, Surface.NormalDir, float3(0, 0, 0), _DistortionNoiseTiling, float3(0, 0, 0), 2.0, true, float2(0, 0)).rg * 2.0 - 1.0) * _DistortionNoiseStrength;
float3 distortionNormal = Surface.NormalDir + float3(noise.x, noise.y, 0);
float3 refractionVector = distortionNormal * _RefractionIOR;
float4 screenPos = i.scrPos;
float2 baseUV = screenPos.xy / screenPos.w;
float2 distortedUV = baseUV + refractionVector.xy;
float3 refractedColor = 0;
switch(_RefractionDistortionMode)
{
case 1: 
{
float caOffset = _RefractionBlurStrength;
if (_RefractionCAUseFresnel == 1)
{
float caFresnel = fastpow(fresnel, _RefractionCAEdgeFade);
caOffset *= caFresnel;
}
refractedColor.r = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV + float2(caOffset, 0)).r * _RefractionCAStrength;
refractedColor.g = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).g;
refractedColor.b = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV - float2(caOffset, 0)).b * _RefractionCAStrength;
break;
}
case 2: 
{
const int BLUR_SAMPLES = 8;
float2 blurOffset = _BacklaceGP_TexelSize.xy * _RefractionBlurStrength;
refractedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).rgb;
[unroll]
for (int i = 0; i < BLUR_SAMPLES; i++)
{
float angle = (float)i / BLUR_SAMPLES * 2.0 * UNITY_PI;
float s, c;
sincos(angle, s, c);
float2 offset = float2(c, s) * blurOffset;
refractedColor += UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV + offset).rgb;
}
refractedColor /= (BLUR_SAMPLES + 1);
break;
}
default: 
{
refractedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, distortedUV).rgb;
break;
}
}
float3 reflectionVector = reflect(-Surface.ViewDir, Surface.NormalDir);
float2 causticsUV = reflectionVector.xy * _CausticsTiling + (_Time.y * _CausticsSpeed);
float3 caustics = UNITY_SAMPLE_TEX2D(_CausticsTex, causticsUV).rgb * _CausticsIntensity;
float mask = UNITY_SAMPLE_TEX2D(_RefractionMask, Uvs[_RefractionMask_UV]).r;
float3 crystalColor = lerp(_RefractionTint.rgb + caustics, lerp(_RefractionTint.rgb, _CausticsColor.rgb, caustics), _RefractionBlendMode);
float3 finalColor;
switch(int(_RefractionMode))
{
case 1: 
finalColor = lerp(refractedColor, crystalColor, fresnel * _RefractionMixStrength);
break;
case 2: 
finalColor = lerp(refractedColor, crystalColor, fastpow(fresnel, _RefractionMixStrength));
break;
case 3: 
finalColor = lerp(refractedColor, crystalColor, _RefractionMixStrength);
break;
default: 
finalColor = lerp(refractedColor, crystalColor, (1.0 - fresnel) * _RefractionMixStrength);
break;
}
finalColor = lerp(finalColor, _RefractionTint.rgb, _RefractionTint.a * (1.0 - fresnel));
float finalAlpha = lerp(_RefractionTint.a, 1.0, fresnel) * mask;
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalColor, finalAlpha);
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, refractedColor, _RefractionSeeThrough); 
Surface.FinalColor.a = finalAlpha * _RefractionOpacity;
}
#endif 

#if defined(_BACKLACE_SSR)
float _SSRMode;
UNITY_DECLARE_TEX2D(_SSRMask);
float4 _SSRTint;
float _SSRIntensity;
int _SSRBlendMode;
float _SSRFresnelPower;
float _SSRFresnelScale;
float _SSRFresnelBias;
float _SSRCoverage;

float _SSRParallax;
UNITY_DECLARE_TEX2D(_SSRDistortionMap);
float _SSRDistortionStrength;
float _SSRBlur;
float _SSRWorldDistortion;

int _SSRMaxSteps;
float _SSRStepSize;
float _SSREdgeFade;
float _SSRThickness;
float _SSRAdaptiveStep;
float _SSRFlipUV;
int _SSROutOfViewMode;
int _SSRCamFade;
float _SSRCamFadeStart;
float _SSRCamFadeEnd;
#ifndef BACKLACE_DEPTH
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
float4 _CameraDepthTexture_TexelSize;
#define BACKLACE_DEPTH
#endif

float3 GetSSRMarched(inout BacklaceSurfaceData Surface, FragmentData i)
{
#if UNITY_SINGLE_PASS_STEREO
float x_min = 0.5 * unity_StereoEyeIndex;
float x_max = 0.5 + 0.5 * unity_StereoEyeIndex;
#else 
float x_min = 0.0;
float x_max = 1.0;
#endif 
float3 viewPos = mul(UNITY_MATRIX_V, float4(i.worldPos, 1.0)).xyz;
float3 viewRefl = mul((float3x3)UNITY_MATRIX_V, Surface.ReflectDir);
float3 currentRayPos = viewPos + viewRefl * (UNITY_MATRIX_P._33 * 0.1);
float3 prevRayPos = viewPos;
[loop] for (int j = 0; j < _SSRMaxSteps; j++)
{
float4 screenPos = mul(UNITY_MATRIX_P, float4(currentRayPos, 1.0));
float2 screenUV = (screenPos.xy / screenPos.w) * 0.5 + 0.5;
if (screenUV.x > x_max || screenUV.x < x_min || screenUV.y > 1.0 || screenUV.y < 0.0)
{
return 0;
}

float sceneDepth = LinearEyeDepth(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(screenPos)).r);
float rayDepth = -currentRayPos.z;
if (rayDepth > sceneDepth - _SSRThickness)
{
float4 finalClipPos = mul(UNITY_MATRIX_P, float4(currentRayPos, 1.0));
finalClipPos.y = lerp(finalClipPos.y, -finalClipPos.y + finalClipPos.w, _SSRFlipUV);
float fadeFactor = 1.0;
float2 finalUV = finalClipPos.xy / finalClipPos.w;
switch (_SSROutOfViewMode)
{
case 1: 
fadeFactor = smoothstep(x_min, x_min + 0.05, finalUV.x) * smoothstep(1.0 - x_max, 1.0 - x_max + 0.05, finalUV.x);
fadeFactor *= smoothstep(0.0, 0.05, finalUV.y) * smoothstep(1.0, 1.0 - 0.05, finalUV.y);
break;
case 2: 
if (finalUV.x < x_min || finalUV.x > x_max || finalUV.y < 0.0 || finalUV.y > 1.0) fadeFactor = 0;
break;
case 3: 
if (finalUV.x < x_min) finalUV.x = x_min + (x_min - finalUV.x);
if (finalUV.x > x_max) finalUV.x = x_max - (finalUV.x - x_max);
if (finalUV.y < 0.0) finalUV.y = -finalUV.y;
if (finalUV.y > 1.0) finalUV.y = 1.0 - (finalUV.y - 1.0);
break;
}
float3 reflection = tex2D(_BacklaceGP, finalUV).rgb;
finalUV = finalUV * 0.5 + 0.5;
float2 fade = smoothstep(0.0, _SSREdgeFade, finalUV) * (1.0 - smoothstep(1.0 - _SSREdgeFade, 1.0, finalUV));
reflection *= fade.x * fade.y * fadeFactor;
return reflection;
}

float depthDifference = sceneDepth - rayDepth;
float step = (_SSRAdaptiveStep) ? clamp(depthDifference * _SSRStepSize, 0.02, 0.5) : _SSRStepSize;
prevRayPos = currentRayPos;
currentRayPos += viewRefl * step;
}
return 0; 
}

float3 GetSSRPlanar(inout BacklaceSurfaceData Surface, FragmentData i)
{
float2 screenUV = i.scrPos.xy / i.scrPos.w;
float2 distortionUV = lerp(screenUV, i.worldPos.xy, _SSRWorldDistortion);
float2 distortionOffset = (UNITY_SAMPLE_TEX2D(_SSRDistortionMap, distortionUV).rg * 2.0 - 1.0) * _SSRDistortionStrength;
float3 viewSpaceReflection = mul((float3x3)UNITY_MATRIX_V, Surface.ReflectDir);
float parallax = _SSRParallax * saturate(1.0 - viewSpaceReflection.z);
float2 reflectionOffset = viewSpaceReflection.xy * parallax;
float2 reflectionUV = screenUV + reflectionOffset +distortionOffset;
const int SSR_BLUR_SAMPLES = 8;
float3 reflectedColor = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, reflectionUV).rgb;
float2 blurOffset = _BacklaceGP_TexelSize.xy * _SSRBlur;
[unroll]
for (int k = 0; k < SSR_BLUR_SAMPLES; k++)
{
float angle = (float)k / SSR_BLUR_SAMPLES * 2.0 * UNITY_PI;
float s, c;
sincos(angle, s, c);
float2 offset = float2(c, s) * blurOffset;
reflectedColor += UNITY_SAMPLE_SCREENSPACE_TEXTURE(_BacklaceGP, reflectionUV + offset).rgb;
}
reflectedColor /= (SSR_BLUR_SAMPLES + 1);
return reflectedColor;
}

void ApplyScreenSpaceReflections(inout BacklaceSurfaceData Surface, FragmentData i)
{
float3 reflectedColor;

[branch] if (_SSRMode == 1)
{
reflectedColor = GetSSRMarched(Surface, i);
}
else
{
reflectedColor = GetSSRPlanar(Surface, i);
}

float fadeFactor = 1.0;
if (_SSRCamFade == 1)
{
float camDistance = distance(i.worldPos, GetCameraPos());
fadeFactor *= 1.0 - saturate((camDistance - _SSRCamFadeStart) / (_SSRCamFadeEnd - _SSRCamFadeStart));
}

float fresnel_base = 1.0 - saturate(dot(Surface.NormalDir, Surface.ViewDir));
float fresnel_powered = pow(fresnel_base, _SSRFresnelPower);
float fresnel = saturate(_SSRFresnelBias + fresnel_powered * _SSRFresnelScale + _SSRCoverage);
float mask = UNITY_SAMPLE_TEX2D(_SSRMask, Uvs[0]).r;
float finalStrength = fresnel * mask * _SSRIntensity * fadeFactor;
float3 finalReflection = reflectedColor * _SSRTint.rgb;
[branch] switch((int)_SSRBlendMode)
{
case 0: 
Surface.FinalColor.rgb += finalReflection * finalStrength;
break;
case 1: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, finalReflection, finalStrength);
break;
case 2: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, Surface.FinalColor.rgb * finalReflection, finalStrength);
break;
default: 
Surface.FinalColor.rgb = lerp(Surface.FinalColor.rgb, 1.0 - (1.0 - Surface.FinalColor.rgb) * (1.0 - finalReflection), finalStrength);
break;
}
}
#endif 
#endif 
#endif 


#if defined(_BLENDMODE_CUTOUT) || defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
float _DirectLightMode;
float _EnableSpecular;
float _IndirectFallbackMode;
void ClipShadowAlpha(inout BacklaceSurfaceData Surface)
{
#if defined(_BLENDMODE_CUTOUT)
clip(Surface.Albedo.a - _Cutoff);
#else 
#if defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
float dither = tex3D(_DitherMaskLOD, float3(FragData.pos.xy * 0.25, Surface.Albedo.a * 0.9375)).a; 
clip(dither - 0.01);
#endif 
#endif
}
#endif 

VertexOutput Vertex(VertexData v)
{
VertexOutput i;

v.vertex.xyz *= _VertexManipulationScale;
v.vertex.xyz += _VertexManipulationPosition;
#if defined(_BACKLACE_VERTEX_DISTORTION)
DistortVertex(v.vertex);
#endif 
i.vertex = v.vertex;
i.normal = UnityObjectToWorldNormal(v.normal);
i.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
#if defined(_BACKLACE_PARALLAX)
float3 parallaxWorldPos = i.worldPos;
float3 worldNormal = UnityObjectToWorldNormal(v.normal);
float3 worldTangent = UnityObjectToWorldDir(v.tangentDir.xyz);
float3 worldBitangent = cross(worldNormal, worldTangent) * v.tangentDir.w * unity_WorldTransformParams.w;
float3 lightDir = UnityWorldSpaceLightDir(parallaxWorldPos);
float3 viewDirForParallax = -lightDir;
float3x3 worldToTangent = float3x3(worldTangent, worldBitangent, worldNormal);
float3 viewDirTS = mul(worldToTangent, viewDirForParallax);
float2 parallaxUVs = v.uv;
float height = UNITY_SAMPLE_TEX2D_LOD(_ParallaxMap, parallaxUVs, 0).r;
float2 offset = viewDirTS.xy * (height * _ParallaxStrength);
parallaxWorldPos += offset.x * worldTangent + offset.y * worldBitangent;
v.vertex.xyz = mul(unity_WorldToObject, float4(parallaxWorldPos, 1)).xyz;
#endif 

#if defined(_BACKLACE_FLAT_MODEL)
float4 finalClipPos;
float3 finalWorldPos;
float3 finalWorldNormal;
FlattenModel(v, finalClipPos, finalWorldPos, finalWorldNormal);
i.pos = UnityClipSpaceShadowCasterPos(mul(unity_WorldToObject, float4(finalWorldPos, 1.0)).xyz, finalWorldNormal);
#else 

#if defined(SHADOWS_CUBE)
i.pos = UnityObjectToClipPos(v.vertex);
i.lightVec = mul(unity_ObjectToWorld, v.vertex).xyz - _LightPositionRange.xyz;
#else
i.pos = UnityClipSpaceShadowCasterPos(v.vertex.xyz, v.normal);
#endif
#endif
i.pos = UnityApplyLinearShadowBias(i.pos);
#if defined(_BLENDMODE_CUTOUT) || defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
i.uv = v.uv;
i.uv1 = v.uv1;
i.uv2 = v.uv2;
i.uv3 = v.uv3;
#endif 
return i;
}

float4 Fragment(FragmentData i) : SV_TARGET
{
BacklaceSurfaceData Surface = (BacklaceSurfaceData)0;
FragData = i;
#if defined(_BLENDMODE_CUTOUT) || defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
LoadUVs();
Uvs[0] = ManipulateUVs(FragData.uv, _UV_Rotation, _UV_Scale_X, _UV_Scale_Y, _UV_Offset_X, _UV_Offset_Y, _UV_Scroll_X_Speed, _UV_Scroll_Y_Speed);
#if defined(_BACKLACE_UV_EFFECTS)
ApplyUVEffects(Uvs[0], Surface);
#endif 
SampleAlbedo(Surface);
#if defined(_BACKLACE_DECAL1)
ApplyDecal1(Surface, FragData, Uvs);
#endif 
#if defined(_BACKLACE_DECAL2)
ApplyDecal2(Surface, FragData, Uvs);
#endif 
ClipShadowAlpha(Surface);
#endif 
#if defined(_BACKLACE_DISSOLVE)
float dissolveMapValue = GetDissolveMapValue(i.worldPos, i.vertex.xyz, i.normal);
clip(_DissolveProgress - dissolveMapValue); 
#endif
#if defined(SHADOWS_CUBE)
float depth = length(i.lightVec) + unity_LightShadowBias.x;
depth *= _LightPositionRange.w;
return UnityEncodeCubeShadowDepth(depth);
#else 
return 0;
#endif 
}
#endif 


ENDCG
}
Pass
{
Name "Meta"
Tags { "LightMode" = "Meta" }
Cull Off
CGPROGRAM
    // --- Premonitions: Baked Keywords ---
    #define _ANIMEMODE_RAMP
    #define _BACKLACE_DEPTH_RIMLIGHT
    #define _BACKLACE_TOON
    #define _SPECULARMODE_STANDARD
    // ------------------------------------
#ifndef UNITY_PASS_META
#define UNITY_PASS_META
#endif 


#ifndef BACKLACE_META_CGINC
#define BACKLACE_META_CGINC

#pragma vertex Vertex
#pragma fragment Fragment

#include "UnityCG.cginc"
#include "UnityStandardUtils.cginc"

#include "UnityMetaPass.cginc"




#ifndef BACKLACE_KEYWORDS_CGINC
#define BACKLACE_KEYWORDS_CGINC




#endif 



struct VertexData
{
float4 vertex : POSITION;
float3 normal : NORMAL;
float2 uv : TEXCOORD0;
float2 uv1 : TEXCOORD1;
float2 uv2 : TEXCOORD2;
float2 uv3 : TEXCOORD3;
};
struct FragmentData
{
float4 pos : SV_POSITION;
float2 uv : TEXCOORD0;
float2 uv1 : TEXCOORD1;
float2 uv2 : TEXCOORD2;
float2 uv3 : TEXCOORD3;
float4 vertex : TEXCOORD4;
float3 worldPos : TEXCOORD5;
float3 normal : NORMAL;
};

FragmentData FragData;
UNITY_DECLARE_TEX2D(_MainTex);
float4 _MainTex_ST;
float4 _Color;
float _MainTex_UV;

UNITY_DECLARE_TEX2D_NOSAMPLER(_MSSO);
float4 Msso;
float4 _MSSO_ST;
float _MSSO_UV;
float _Occlusion;

float _UV_Offset_X;
float _UV_Offset_Y;
float _UV_Scale_X;
float _UV_Scale_Y;
float _UV_Rotation;
float _UV_Scroll_X_Speed;
float _UV_Scroll_Y_Speed;

#if defined(_BACKLACE_UV_EFFECTS)

float _UVTriplanarMapping;
float3 _UVTriplanarPosition;
float _UVTriplanarScale;
float3 _UVTriplanarRotation;
float _UVTriplanarSharpness;

float _UVScreenspaceMapping;
float _UVScreenspaceTiling;

float _UVFlipbook;
float _UVFlipbookRows;
float _UVFlipbookColumns;
float _UVFlipbookFrames;
float _UVFlipbookFPS;
float _UVFlipbookScrub;

float _UVFlowmap;
UNITY_DECLARE_TEX2D(_UVFlowmapTex);
float _UVFlowmapStrength;
float _UVFlowmapSpeed;
float _UVFlowmapDistortion;
float _UVFlowmap_UV;
#endif 

#if defined(_BACKLACE_EMISSION)
UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
float4 _EmissionMap_ST;
float4 _EmissionColor;
float _EmissionStrength;
float _UseAlbedoAsEmission;
float _EmissionMap_UV;
float3 Emission;
#endif 

#if defined(_BACKLACE_SPECULAR)
UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularTintTexture);
float4 _SpecularTintTexture_ST;
float4 _SpecularTint;
float _SpecularTintTexture_UV;
float _Metallic;
float _Glossiness;
float _Specular;
float _ReplaceSpecular;
#endif 

#if defined(_BACKLACE_DETAIL)
UNITY_DECLARE_TEX2D(_DetailAlbedoMap);
UNITY_DECLARE_TEX2D(_DetailNormalMap);
float _DetailMap_UV;
float _DetailTiling;
float _DetailNormalStrength;
float3 NormalMap; 
#endif 

#if defined(_BACKLACE_DECAL1)
UNITY_DECLARE_TEX2D(_Decal1Tex);
float4 _Decal1Tint;
float2 _Decal1Position;
float2 _Decal1Scale;
float _Decal1Rotation;
float _Decal1_UV;
float _Decal1TriplanarSharpness;
int _Decal1BlendMode;
float _Decal1IsTriplanar;
float3 _Decal1TriplanarPosition;
float _Decal1TriplanarScale;
float3 _Decal1TriplanarRotation;
float _Decal1Repeat;
float2 _Decal1Scroll;
float _Decal1HueShift;
float _Decal1AutoCycleHue;
float _Decal1CycleSpeed;
#endif 

#if defined(_BACKLACE_DECAL2)
UNITY_DECLARE_TEX2D(_Decal2Tex);
float4 _Decal2Tint;
float2 _Decal2Position;
float2 _Decal2Scale;
float _Decal2Rotation;
float _Decal2_UV;
float _Decal2TriplanarSharpness;
int _Decal2BlendMode;
float _Decal2IsTriplanar;
float3 _Decal2TriplanarPosition;
float _Decal2TriplanarScale;
float3 _Decal2TriplanarRotation;
float _Decal2Repeat;
float2 _Decal2Scroll;
float _Decal2HueShift;
float _Decal2AutoCycleHue;
float _Decal2CycleSpeed;
#endif 



#ifndef BACKLACE_UNIVERSAL_CGINC
#define BACKLACE_UNIVERSAL_CGINC

#define BACKLACE_TRANSFORM_TEX(set, name) (set[name##_UV].xy * name##_ST.xy + name##_ST.zw)

struct BacklaceSurfaceData
{

float4 FinalColor;

float4 Albedo;
float3 NormalDir;
float3 TangentDir;
float3 BitangentDir;

float Metallic;
float Glossiness;
float Roughness;
float SquareRoughness;
float Specular;
float OneMinusReflectivity;
float Occlusion;

float3 ViewDir;
float3 LightDir;
float3 HalfDir;
float3 ReflectDir;

float NdotL;
float UnmaxedNdotL;
float NdotV;
float NdotH;
float LdotH;

float4 LightColor;
float4 SpecLightColor;
float3 IndirectDiffuse;
float3 Diffuse;
float3 DirectSpecular;
float3 IndirectSpecular;
float3 VertexDirectDiffuse;
float Attenuation;

float3 SpecularColor;
float3 EnergyCompensation;
float3 Dfg;
float3 CustomIndirect;

float2 ScreenCoords;
bool IsFrontFace;
};

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD) || defined(UNITY_PASS_META) || defined(_BLENDMODE_CUTOUT) || defined(_BLENDMODE_TRANSPARENT) || defined(_BLENDMODE_PREMULTIPLY) || defined(_BLENDMODE_FADE)
#ifndef UNITY_PASS_OUTLINE

float2 Uvs[4];
void LoadUVs()
{
Uvs[0] = FragData.uv;
Uvs[1] = FragData.uv1;
Uvs[2] = FragData.uv2;
Uvs[3] = FragData.uv3;
}
void SampleAlbedo(inout BacklaceSurfaceData Surface)
{
Surface.Albedo = UNITY_SAMPLE_TEX2D(_MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _MainTex)) * _Color;
}
#endif 
#endif 

inline float remap(float value, float oldMin, float oldMax, float newMin, float newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float2 remap(float2 value, float2 oldMin, float2 oldMax, float2 newMin, float2 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float3 remap(float3 value, float3 oldMin, float3 oldMax, float3 newMin, float3 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline float4 remap(float4 value, float4 oldMin, float4 oldMax, float4 newMin, float4 newMax)
{
return (value - oldMin) / (oldMax - oldMin) * (newMax - newMin) + newMin;
}

inline half Pow5(half x)
{
return x * x * x * x * x;
}

float sqr(float x)
{
return x * x;
}

inline float GetLuma(float3 color)
{
return dot(color, float3(0.299, 0.587, 0.114));
}


float fastpow(float x, float p)
{
return exp2(p * log2(x));
}

float Hash(float2 p)
{
float3 p3 = frac(float3(p.xyx) * .1031);
p3 += dot(p3, p3.yzx + 33.33);
return frac((p3.x + p3.y) * p3.z);
}

float2 Hash2(float2 p)
{
return float2(Hash(p), Hash(p + 0.123));
}

float3 HSVtoRGB(float3 c)
{
float4 K = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
float3 p = abs(frac(c.xxx + K.xyz) * 6.0 - K.www);
return c.z * lerp(K.xxx, saturate(p - K.xxx), c.y);
}

float3 RGBtoHSV(float3 c) {
float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
float4 p = lerp(float4(c.bg, K.wz), float4(c.gb, K.xy), step(c.b, c.g));
float4 q = lerp(float4(p.xyw, c.r), float4(c.r, p.yzx), step(p.x, c.r));
float d = q.x - min(q.w, q.y);
float E = 1e-10;
return float3(abs(q.z + (q.w - q.y) / (6.0 * d + E)), d / (q.x + E), q.x);
}

inline half3 FresnelTerm(half3 F0, half cosA)
{
half t = Pow5(1 - cosA);
return F0 + (1 - F0) * t;
}

float GTR2(float NdotH, float a)
{
float a2 = a * a;
float NdotH2 = NdotH * NdotH;
float denominator = NdotH2 * (a2 - 1.0) + 1.0;
denominator = UNITY_PI * denominator * denominator + 1e-7f;
return a2 / denominator;
}

float smithG_GGX(float NdotV, float alphaG)
{
float a = alphaG * alphaG;
float b = NdotV * NdotV;
return 1 / (NdotV + sqrt(a + b - a * b) + 1e-7f);
}

float3 ApplyHueShift(float3 inColor, float baseShift, float autoCycleToggle, float autoCycleSpeed)
{
float totalShift = baseShift;
if (autoCycleToggle > 0)
{
totalShift += frac(_Time.y * autoCycleSpeed);
}
float3 hsv = RGBtoHSV(inColor);
hsv.x = frac(hsv.x + totalShift);
return HSVtoRGB(hsv);
}

float3 Sinebow(float val)
{
val = 0.5 - val * 0.5; 
float3 sinebowColor = sin((val * UNITY_PI) + float3(0.0, 0.333 * UNITY_PI, 0.666 * UNITY_PI));
return sinebowColor * sinebowColor;
}

float3 GetCameraPos()
{
#if UNITY_SINGLE_PASS_STEREO
return (unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1]) * 0.5;
#else 
return _WorldSpaceCameraPos;
#endif 
}

float3 RotateVector(float3 pos, float3 rotation)
{
float3 angles = rotation * (UNITY_PI / 180.0);
float3 s, c;
sincos(angles, s, c);
float3x3 rotX = float3x3(1, 0, 0, 0, c.x, -s.x, 0, s.x, c.x);
float3x3 rotY = float3x3(c.y, 0, s.y, 0, 1, 0, -s.y, 0, c.y);
float3x3 rotZ = float3x3(c.z, -s.z, 0, s.z, c.z, 0, 0, 0, 1);
return mul(rotZ, mul(rotY, mul(rotX, pos)));
}

void GetTriplanarUVsAndWeights(
float3 worldPos, float3 normal,
float3 position, float scale, float3 rotation, float sharpness,
out float2 uvX, out float2 uvY, out float2 uvZ, out float3 weights)
{
float3 localPos = RotateVector(worldPos - position, -rotation);
weights = pow(abs(normal), sharpness);
weights /= dot(weights, 1.0.xxx); 
uvX = localPos.yz / scale;
uvY = localPos.xz / scale;
uvZ = localPos.xy / scale;
}

float4 SampleTriplanar(
Texture2D tex, SamplerState texSampler,
float2 uvX, float2 uvY, float2 uvZ, float3 weights,
bool isTiling, float2 scroll)
{
float4 sampleX, sampleY, sampleZ;
float2 scrollOffset = scroll * _Time.y;
if (isTiling)
{

sampleX = tex.Sample(texSampler, frac(uvX + scrollOffset));
sampleY = tex.Sample(texSampler, frac(uvY + scrollOffset));
sampleZ = tex.Sample(texSampler, frac(uvZ + scrollOffset));
}
else
{

uvX += 0.5;
uvY += 0.5;
uvZ += 0.5;
sampleX = 0;
if (all(saturate(uvX) == uvX))
{
sampleX = tex.Sample(texSampler, uvX);
}
sampleY = 0;
if (all(saturate(uvY) == uvY))
{
sampleY = tex.Sample(texSampler, uvY);
}
sampleZ = 0;
if (all(saturate(uvZ) == uvZ))
{
sampleZ = tex.Sample(texSampler, uvZ);
}
}
return sampleX * weights.x + sampleY * weights.y + sampleZ * weights.z;
}

float4 SampleTextureTriplanar(Texture2D tex, SamplerState texSampler, float3 worldPos,
float3 normal, float3 position, float scale, float3 rotation,
float sharpness, bool isTiling, float2 scroll)
{

float2 uvX, uvY, uvZ;
float3 weights;
GetTriplanarUVsAndWeights(worldPos, normal, position, scale, rotation, sharpness, uvX, uvY, uvZ, weights);

return SampleTriplanar(tex, texSampler, uvX, uvY, uvZ, weights, isTiling, scroll);
}
float2 ApplyFlipbook(float2 uvs, float columns, float rows, float totalFrames, float fps, float scrub)
{
float frame = floor(frac(fps * _Time.y + scrub) * totalFrames);
float col = fmod(frame, columns);
float row = floor(frame / columns);
float2 cellSize = 1.0 / float2(columns, rows);
row = (rows - 1) - row;
float2 outputUVs = (uvs * cellSize) + float2(col, row) * cellSize;
return outputUVs;
}

float2 ManipulateUVs(float2 uv, float rotation, float scalex, float scaley, float offsetx, float offsety, float scrollx, float scrolly)
{
float2 finalUV = uv;
if (rotation != 0)
{
finalUV = uv - 0.5;
float angle = -rotation * (UNITY_PI / 180.0);
float s = sin(angle);
float c = cos(angle);
float2x2 rotationMatrix = float2x2(c, -s, s, c);
finalUV = mul(rotationMatrix, finalUV);
finalUV += 0.5;
}
finalUV *= float2(scalex, scaley);
finalUV += float2(offsetx, offsety);
finalUV += float2(scrollx, scrolly) * _Time.y;
return finalUV;
}

float GetTiltedCheckerboardPattern(float2 screenPos, float scale)
{
float u = screenPos.x + screenPos.y;
float v = screenPos.x - screenPos.y;
float2 gridPos = floor(float2(u, v) / scale);
return fmod(gridPos.x + gridPos.y, 2.0);
}

#if defined(_BACKLACE_DECAL1) || defined(_BACKLACE_DECAL2)
void ApplyDecal_UVSpace(inout float4 baseAlbedo, float2 baseUV, Texture2D decalTex, SamplerState decalSampler, float4 tint, float2 position, float2 scale, float rotation, int blendMode, float repeat, float2 scroll, float hueShift, float autoCycle, float cycleSpeed, float alHue, float alEmission, float alOpacity)
{
baseUV += scroll * _Time.y;
float angle = -rotation * (UNITY_PI / 180.0);
float s = sin(angle);
float c = cos(angle);
float2x2 rotationMatrix = float2x2(c, -s, s, c);
float2 localUV = baseUV - position;
localUV = mul(rotationMatrix, localUV);
localUV /= max(scale, 0.0001);
localUV += 0.5;
if (repeat == 1) 
{
localUV = frac(localUV);
}
else 
{
if (any(saturate(localUV) != localUV))
{
return;
}
}
float4 decalColor = decalTex.Sample(decalSampler, localUV) * tint;
decalColor.rgb = ApplyHueShift(decalColor.rgb, hueShift + alHue, autoCycle, cycleSpeed);
decalColor.a *= alOpacity;
decalColor.rgb *= alEmission;
switch(blendMode)
{
case 0: baseAlbedo.rgb += decalColor.rgb * decalColor.a; break; 
case 1: baseAlbedo.rgb = lerp(baseAlbedo.rgb, baseAlbedo.rgb * decalColor.rgb, decalColor.a); break; 
case 2: baseAlbedo.rgb = lerp(baseAlbedo.rgb, decalColor.rgb, decalColor.a); break; 
}
}
void ApplyDecal_Triplanar(inout float4 baseAlbedo, float3 worldPos, float3 normal, Texture2D decalTex, SamplerState decalSampler, float4 tint, float3 position, float scale, float3 rotation, float sharpness, int blendMode, float repeat, float2 scroll, float hueShift, float autoCycle, float cycleSpeed, float alHue, float alEmission, float alOpacity)
{
float4 decalColor = SampleTextureTriplanar(decalTex, decalSampler, worldPos, normal, position, scale, rotation, sharpness, repeat > 0.5, scroll);
decalColor *= tint;
if (hueShift != 0) {
decalColor.rgb = ApplyHueShift(decalColor.rgb, hueShift + alHue, autoCycle, cycleSpeed);
}
decalColor.a *= alOpacity;
decalColor.rgb *= alEmission;
switch(blendMode)
{
case 0: baseAlbedo.rgb += decalColor.rgb * decalColor.a; break;
case 1: baseAlbedo.rgb = lerp(baseAlbedo.rgb, baseAlbedo.rgb * decalColor.rgb, decalColor.a); break;
case 2: baseAlbedo.rgb = lerp(baseAlbedo.rgb, decalColor.rgb, decalColor.a); break;
}
}

#if defined(_BACKLACE_DECAL1)
void ApplyDecal1(inout BacklaceSurfaceData Surface, FragmentData i, float2 Uvs[4])
{
float alHue = 0;
float alEmission = 1;
float alOpacity = 1;
#if defined(_BACKLACE_AUDIOLINK)
alHue = i.alChannel2.w;
alEmission = i.alChannel3.x;
alOpacity = i.alChannel3.y;
#endif 
float4 decalApplied = (_DecalStage == 0) ? Surface.Albedo : float4(Surface.FinalColor.rgb, 1.0);
[branch] if (_Decal1IsTriplanar == 1)
{
ApplyDecal_Triplanar(decalApplied, i.worldPos, Surface.NormalDir, _Decal1Tex, sampler_Decal1Tex, _Decal1Tint, _Decal1TriplanarPosition.xyz, _Decal1TriplanarScale, _Decal1TriplanarRotation.xyz, _Decal1TriplanarSharpness, _Decal1BlendMode, _Decal1Repeat, _Decal1Scroll.xy, _Decal1HueShift, _Decal1AutoCycleHue, _Decal1CycleSpeed, alHue, alEmission, alOpacity);
}
else
{
ApplyDecal_UVSpace(decalApplied, Uvs[_Decal1_UV], _Decal1Tex, sampler_Decal1Tex, _Decal1Tint, _Decal1Position.xy, _Decal1Scale.xy, _Decal1Rotation, _Decal1BlendMode, _Decal1Repeat, _Decal1Scroll, _Decal1HueShift, _Decal1AutoCycleHue, _Decal1CycleSpeed, alHue, alEmission, alOpacity);
}
[branch] if (_DecalStage == 0) 
{
Surface.Albedo = decalApplied;
}
else 
{
Surface.FinalColor.rgb = decalApplied.rgb;
}
}
#endif 

#if defined(_BACKLACE_DECAL2)
void ApplyDecal2(inout BacklaceSurfaceData Surface, FragmentData i, float2 Uvs[4])
{
float alHue = 0;
float alEmission = 1;
float alOpacity = 1;
#if defined(_BACKLACE_AUDIOLINK)
alHue = i.alChannel2.w;
alEmission = i.alChannel3.x;
alOpacity = i.alChannel3.y;
#endif 
float4 decalApplied = (_DecalStage == 0) ? Surface.Albedo : float4(Surface.FinalColor.rgb, 1.0);
[branch] if (_Decal2IsTriplanar == 1)
{
ApplyDecal_Triplanar(decalApplied, i.worldPos, Surface.NormalDir, _Decal2Tex, sampler_Decal2Tex, _Decal2Tint, _Decal2TriplanarPosition.xyz, _Decal2TriplanarScale, _Decal2TriplanarRotation.xyz, _Decal2TriplanarSharpness, _Decal2BlendMode, _Decal2Repeat, _Decal2Scroll, _Decal2HueShift, _Decal2AutoCycleHue, _Decal2CycleSpeed, alHue, alEmission, alOpacity);
}
else
{
ApplyDecal_UVSpace(decalApplied, Uvs[_Decal2_UV], _Decal2Tex, sampler_Decal2Tex, _Decal2Tint, _Decal2Position.xy, _Decal2Scale.xy, _Decal2Rotation, _Decal2BlendMode, _Decal2Repeat, _Decal2Scroll, _Decal2HueShift, _Decal2AutoCycleHue, _Decal2CycleSpeed, alHue, alEmission, alOpacity);
}
[branch] if (_DecalStage == 0) 
{
Surface.Albedo = decalApplied;
}
else 
{
Surface.FinalColor.rgb = decalApplied.rgb;
}
}
#endif 
#endif 

#if defined(_BACKLACE_UV_EFFECTS)
void ApplyUVEffects(inout float2 uv, in BacklaceSurfaceData Surface)
{

[branch] if (_UVTriplanarMapping == 1)
{
float2 uvX, uvY, uvZ;
float3 weights;
GetTriplanarUVsAndWeights(
FragData.worldPos, Surface.NormalDir,
_UVTriplanarPosition, _UVTriplanarScale, _UVTriplanarRotation, _UVTriplanarSharpness,
uvX, uvY, uvZ, weights
);
uv = uvX * weights.x + uvY * weights.y + uvZ * weights.z;
}

[branch] if (_UVScreenspaceMapping == 1)
{
uv = frac(Surface.ScreenCoords * _UVScreenspaceTiling);
}

[branch] if (_UVFlipbook == 1) {
uv = ApplyFlipbook(uv, _UVFlipbookColumns, _UVFlipbookRows, _UVFlipbookFrames, _UVFlipbookFPS, _UVFlipbookScrub);
}

[branch] if (_UVFlowmap == 1) {
float2 flow = UNITY_SAMPLE_TEX2D(_UVFlowmapTex, uv).rg * 2.0 - 1.0;
uv += flow * _UVFlowmapStrength * frac(_Time.y * _UVFlowmapSpeed);
}
}
#endif 

#if defined(_BACKLACE_DISSOLVE)
float _DissolveProgress;
UNITY_DECLARE_TEX2D(_DissolveNoiseTex);
float _DissolveNoiseScale;
float4 _DissolveEdgeColor;
int _DissolveType;
float _DissolveEdgeWidth;
float4 _DissolveDirection;
int _DissolveDirectionSpace;
float _DissolveDirectionBounds;
float _DissolveVoxelDensity;
float _DissolveEdgeSharpness;
float _DissolveEdgeMode;
float GetDissolveMapValue(float3 worldPos, float3 vertexPos, float3 normalDir)
{
float dissolveMapValue = 0;
switch(_DissolveType)
{
case 0: 
{
dissolveMapValue = SampleTextureTriplanar(
_DissolveNoiseTex, sampler_DissolveNoiseTex,
worldPos, normalDir,
float3(0,0,0), _DissolveNoiseScale, float3(0,0,0),
2.0, true, float2(0, 0)
).r;
break;
}
case 1: 
{
float3 position = (_DissolveDirectionSpace == 0) ? vertexPos : worldPos;
float3 direction = normalize(_DissolveDirection.xyz);
dissolveMapValue = dot(position, direction) / max(_DissolveDirectionBounds, 0.001);
dissolveMapValue = saturate(dissolveMapValue * 0.5 + 0.5); 
break;
}
case 2: 
{
float3 voxelID = floor(worldPos * _DissolveVoxelDensity);
dissolveMapValue = Hash(voxelID.xy + voxelID.z);
break;
}
}
return dissolveMapValue;
}
#endif 

#if defined(UNITY_PASS_FORWARDBASE) || defined(UNITY_PASS_FORWARDADD) || defined(UNITY_PASS_META)

void SampleMSSO(inout BacklaceSurfaceData Surface)
{
Msso = UNITY_SAMPLE_TEX2D_SAMPLER(_MSSO, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _MSSO));
Surface.Occlusion = lerp(1, Msso.a, _Occlusion);
}

#if defined(_BACKLACE_SPECULAR)

void GetSampleData(inout BacklaceSurfaceData Surface)
{
Surface.Metallic = Msso.r * _Metallic;
Surface.Glossiness = Msso.g * _Glossiness;
Surface.Specular = Msso.b * _Specular;
Surface.Roughness = 1 - Surface.Glossiness;
Surface.SquareRoughness = max(Surface.Roughness * Surface.Roughness, 0.002);
}

void SetupAlbedoAndSpecColor(inout BacklaceSurfaceData Surface)
{
float3 specularTint = (UNITY_SAMPLE_TEX2D_SAMPLER(_SpecularTintTexture, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _SpecularTintTexture)).rgb * _SpecularTint).rgb;
float sp = Surface.Specular;
Surface.SpecularColor = lerp(float3(sp, sp, sp), Surface.Albedo.rgb, Surface.Metallic);
if (_ReplaceSpecular == 1)
{
Surface.SpecularColor = specularTint;
}
else
{
Surface.SpecularColor *= specularTint;
}
Surface.OneMinusReflectivity = (1 - sp) - (Surface.Metallic * (1 - sp));
Surface.Albedo.rgb *= Surface.OneMinusReflectivity;
}
#endif 

#if defined(_BACKLACE_EMISSION)

void CalculateEmission(inout BacklaceSurfaceData Surface)
{
float3 baseEmission = _EmissionColor.rgb;
[branch] if (_UseAlbedoAsEmission > 0)
{
baseEmission = lerp(baseEmission, Surface.Albedo.rgb, _UseAlbedoAsEmission);
}
float3 emissionMap = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap, _MainTex, BACKLACE_TRANSFORM_TEX(Uvs, _EmissionMap)).rgb;
Emission = baseEmission * emissionMap * _EmissionStrength;
}
#endif 
#endif 
#endif 



FragmentData Vertex(VertexData v)
{
FragmentData i;
i.vertex = v.vertex;
i.pos = UnityMetaVertexPosition(v.vertex, v.uv1.xy, v.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);
i.uv = v.uv;
i.uv1 = v.uv1;
i.uv2 = v.uv2;
i.uv3 = v.uv3;
i.worldPos = mul(unity_ObjectToWorld, v.vertex);
i.normal = UnityObjectToWorldNormal(v.normal);
return i;
}

float4 Fragment(FragmentData i) : SV_TARGET
{
BacklaceSurfaceData Surface = (BacklaceSurfaceData)0;
Surface.NormalDir = i.normal; 
FragData = i;
UnityMetaInput surfaceData;
UNITY_INITIALIZE_OUTPUT(UnityMetaInput, surfaceData);
LoadUVs();
Uvs[0] = ManipulateUVs(FragData.uv, _UV_Rotation, _UV_Scale_X, _UV_Scale_Y, _UV_Offset_X, _UV_Offset_Y, _UV_Scroll_X_Speed, _UV_Scroll_Y_Speed);
#if defined(_BACKLACE_UV_EFFECTS)
ApplyUVEffects(Uvs[0], Surface);
#endif 
SampleAlbedo(Surface);
#if defined(_BACKLACE_DETAIL)
ApplyDetailMaps(Surface);
#endif 
#if defined(_BACKLACE_DECAL1)
ApplyDecal1(Surface, FragData, Uvs);
#endif 
#if defined(_BACKLACE_DECAL2)
ApplyDecal2(Surface, FragData, Uvs);
#endif 
#if defined(_BACKLACE_EMISSION)
CalculateEmission(Surface);
surfaceData.Emission = Emission;
#else 
surfaceData.Emission = 0;
#endif 
#if defined(_BACKLACE_SPECULAR)
SampleMSSO(Surface);
GetSampleData(Surface);
SetupAlbedoAndSpecColor(Surface);
#endif 
surfaceData.Albedo = Surface.Albedo.rgb;
#if defined(_BACKLACE_SPECULAR)
surfaceData.Albedo += Surface.SpecularColor * Surface.Roughness * Surface.Roughness * 0.5;
#endif 
return UnityMetaFragment(surfaceData);
}
#endif 


ENDCG
}

}
CustomEditor "Luka.Backlace.Interface"
}