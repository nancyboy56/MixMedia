shader_type spatial;
uniform float xFrequencey: hint_range(0, 2) =1;
uniform float zFrequency: hint_range(0, 2) =1;
uniform float height: hint_range(-5, 5) =1;

#define TAU 6.283185307179586476925287

void vertex() {
	// Called for every vertex the material is visible on.
	VERTEX.y += cos(VERTEX.x * xFrequencey* TAU) *height *sin(VERTEX.z *TAU* zFrequency);

}

void fragment() {
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
