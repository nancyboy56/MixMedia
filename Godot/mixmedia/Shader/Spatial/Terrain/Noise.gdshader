shader_type spatial;

uniform sampler2D noise;
uniform float scale: hint_range(0.0, 100) =4;



#define TAU 6.283185307179586476925287

void vertex() {
	// bc the planemesh have coordinates that are in the range [-1,1] ?
	// so we need to normalise, really remap to a range of -1 to 1
	VERTEX.y += texture(noise, (VERTEX.xz/2.0 + 0.5)/ scale ).x;
  	 

}

void fragment() {
	// Called for every pixel the material is visible on.
	
	//COLOR.r = 0.2;
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
