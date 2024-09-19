shader_type canvas_item;

uniform float xWaveAmount: hint_range(-100, 500) = 100;
uniform float xWaveSpeed: hint_range(-10,10) =1;
uniform float yWaveAmount: hint_range(-100, 500) = 100;
uniform float yWaveSpped: hint_range(-10,10) =1;
uniform float xOffset: hint_range(-100,100) =0;
uniform float yOffset: hint_range(-100,100) =0;
#define TAU 6.283185307179586476925287

void vertex() {
	// Called for every vertex the material is visible on.
	VERTEX += vec2(cos(TIME * xWaveSpeed *TAU )*xWaveAmount + xOffset, sin(TIME * yWaveSpped *TAU)*yWaveAmount  + yOffset);
}

void fragment() {
	// Called for every pixel the material is visible on.
	COLOR = texture(TEXTURE, UV);
	COLOR =COLOR.rgga;
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
