shader_type canvas_item;

uniform float speed: hint_range(0.0, 200) = 100;
#define TAU 6.283185307179586476925287

void vertex() {
	// Called for every vertex the material is visible on.
	VERTEX += vec2(cos(TIME)*speed, sin(TIME)*speed);
}

void fragment() {
	// Called for every pixel the material is visible on.
	COLOR = texture(TEXTURE, UV);
	COLOR =COLOR.gbba;
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
