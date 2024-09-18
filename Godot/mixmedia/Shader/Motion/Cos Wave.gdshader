shader_type canvas_item;

uniform float circle: hint_range(-100, 500) = 100;
uniform float scale: hint_range(-10,10) =1;
#define TAU 6.283185307179586476925287

void vertex() {
	// Called for every vertex the material is visible on.
	VERTEX += vec2(cos(TIME * scale)*circle*TAU, sin(TIME * scale)*circle *TAU);
}

void fragment() {
	// Called for every pixel the material is visible on.
	COLOR = texture(TEXTURE, UV);
	COLOR =COLOR.rbga;
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
