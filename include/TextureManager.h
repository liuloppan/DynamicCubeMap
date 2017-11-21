#pragma once

//  #ifdef _WIN32
// #include "GL/glew.h"
//  #endif

#include <GLFW/glfw3.h>

#include "SOIL.h"


class TextureManager
{
public:
	TextureManager(const char * path);
	TextureManager(const char * path, int w, int h);
	~TextureManager();
	void bindTexture();

protected:
	void generateTexture(const char * path);

private:
	int width, height;
	unsigned char* image;
	GLuint texture;
};
