shader_type canvas_item;

#define TAU 6.283185307179586476925287
#define IF_LIGHTING
//you can undef!!!!!!!!!!!
#undef THIS_DOES_NOT_EXIST
#define SHADOW_QUALITY_MEDIUM
// send information from the vertex to frag shader
//cant be used in other functions
varying vec3 some_light;

group_uniforms groupz.groupiez;
//can add hints to the shaders
uniform vec4 color : source_color;
uniform float amount : hint_range(0, 1);
uniform vec4 other_color : source_color = vec4(1.0); // Default values go after the hint.
uniform sampler2D image : source_color;



void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	
	

	#if defined(SHADOW_QUALITY_HIGH)
	// High shadow quality.
	#elif defined(SHADOW_QUALITY_MEDIUM)
	// Medium shadow quality.
	#else
	// Low shadow quality.
	#endif

	#ifdef IF_LIGHTING
		//do a thing
	#endif
	
	#define USE_LIGHT

	#ifndef USE_LIGHT
	// Evaluates to `false`. This portion won't be included in the final shader.
	#endif

	#ifndef USE_COLOR
	// Evaluates to `true`. This portion will be included in the final shader.
	#endif
	COLOR = texture(TEXTURE, UV);
	COLOR =COLOR.gbba;
	
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
