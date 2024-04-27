package;

import glfw.GLFW.*;
import opengl.GL.*;

class Global {
	private static var _lastTick:Float = 0.0;

	public static function main() {
		if (glfwInit() != 0) {
			var window = glfwCreateWindow(640, 480, "Hello World", null, null);
			glfwMakeContextCurrent(window);

			while (glfwWindowShouldClose(window) != GLFW_TRUE) {
				// var width:Int = 0;
				// var height:Int = 0;

				// glfwGetFramebufferSize(window, cpp.Pointer.addressOf(width), cpp.Pointer.addressOf(height));

				glClearColor(0.0, 0.0, 0.0, 1.0);
				glClear(GL_COLOR_BUFFER_BIT);

				glfwSwapBuffers(window);

				glfwPollEvents();
			}

			glfwTerminate();
		} else {
			throw 'GLFW init fail';
		}
	}
}
