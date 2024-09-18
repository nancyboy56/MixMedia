shader_type canvas_item;
uniform float strength =1;



void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	COLOR = texture(TEXTURE, UV);
	// Called for every pixel the material is visible on.
	float average = (COLOR.r +COLOR.g + COLOR.b) / 3.0;
	

	// just read from texture
	
	COLOR = vec4(COLOR.rgb, (1.0 - average) *strength);
	
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
