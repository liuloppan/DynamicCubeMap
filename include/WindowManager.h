#pragma once

#include <GLFW/glfw3.h>
#include <iostream>


class WindowManager
{
    public:
        
        WindowManager(GLFWwindow* &window, int width, int height);        
        void processInput(GLFWwindow *window);
        
    private:
       // void framebuffer_size_callback(GLFWwindow* window, int width, int height);
       // void createWindow(GLFWwindow* aWindow);
        void initGlfw();

};