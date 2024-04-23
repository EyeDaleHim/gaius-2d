package;

import glfw.GLFW.*;

class Global {
	private static var _lastTick:Float = 0.0;

	public static function main() {
		if (glfwInit() != 0) {
			var window = glfwCreateWindow(640, 480, "Hello World", null, null);
			glfwMakeContextCurrent(window);

			/* Loop until the user closes the window */
			while (glfwWindowShouldClose(window) != GLFW_TRUE) {
				Sys.println('${glfwGetTime() - _lastTick}');
				_lastTick = glfwGetTime();
				/* Swap front and back buffers */
				glfwSwapBuffers(window);

				/* Poll for and process events */
				glfwPollEvents();
			}

			glfwTerminate();
		} else {
			throw 'GLFW init fail';
		}
	}
}
