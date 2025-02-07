
#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;

out vec3 mynormal;
out vec4 myvertex;
out vec2 TexCoords;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	TexCoords = texCoords;
    gl_Position = projection *view*model* vec4(position, 1.0f);
	mynormal = normal;
	myvertex = vec4(position,1.0f);

} 