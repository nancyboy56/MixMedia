shader_type canvas_item;
uniform float greenStrength =1.0;
uniform float colourStrength =1.0;



void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	COLOR = texture(TEXTURE, UV);
	// Called for every pixel the material is visible on.
	
	float alpha = colourStrength * (COLOR.r +COLOR.b) - greenStrength * COLOR.g;
	COLOR = vec4(COLOR.rgb,alpha);
	
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
