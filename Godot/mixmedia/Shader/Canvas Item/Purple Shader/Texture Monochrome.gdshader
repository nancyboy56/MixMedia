shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	COLOR = texture(TEXTURE, UV);
	// Called for every pixel the material is visible on.
	float average = (COLOR.r +COLOR.g + COLOR.b) / 3.0;
	// just read from texture
	
	COLOR = vec4(average, average, average, 1);
	
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
