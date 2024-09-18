shader_type canvas_item;
uniform float greenStrength =1.0;

struct hsv {
	float hue;
	float saturation;
	float value;
};

vec3 RGBtoHSV(vec3 rgb){
	float r =rgb.r;
	float g =rgb.g;
	float b =rgb.b;
	
	vec3 hsvColour = vec3(0.0,0.0,0.0);
	float maximum = max(max(rgb.r, rgb.g), rgb.b);
	float minimum = min(max(rgb.r, rgb.g), rgb.b);
	float c = maximum - minimum;
	
	
	float redHue = mod((g-b)/c, 6.0); 
	float greenHue = (b-r)/c + 2.0;
	float blueHue = (r-g)/c +4.0;
	
	float hue =0.0;
	hue = redHue*float(maximum==r) + greenHue* float(maximum==g) + blueHue *float(maximum ==b);
	//hue
	
	return hsvColour;
}

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	COLOR = texture(TEXTURE, UV);
	// Called for every pixel the material is visible on.
	
	float alpha = COLOR.g;
	COLOR = vec4(COLOR.rgb,  1.0 - alpha *greenStrength);
	
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
