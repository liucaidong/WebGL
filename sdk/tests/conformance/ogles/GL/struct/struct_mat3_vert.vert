
/*
Copyright (c) 2019 The Khronos Group Inc.
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE.txt file.
*/


attribute vec4 gtf_Vertex;
uniform mat4 gtf_ModelViewProjectionMatrix;
varying vec4 color;

struct sabcd
{
 mat3 a;
};

void main (void)
{
	sabcd s = sabcd(mat3(12.0, 29.0, 13.0, 26.0, 71.0, 63.0, 90.0, 118.0, 128.0) );
	float sum=0.0;

	sum = sum + s.a[0][0];
	sum = sum + s.a[0][1];
	sum = sum + s.a[0][2];

	sum = sum + s.a[1][0];
	sum = sum + s.a[1][1];
	sum = sum + s.a[1][2];

	sum = sum + s.a[2][0];
	sum = sum + s.a[2][1];
	sum = sum + s.a[2][2];

	color = vec4( vec3(  sum / 550.0  ), 1.0);
	gl_Position = gtf_ModelViewProjectionMatrix * gtf_Vertex;
}
