#include "rend_sup.hpp"
#include "renderer.hpp"

#include <iostream>

/* Error handle */
void gl_clear_error()
{
	while(glGetError() != GL_NO_ERROR);
}

bool gl_log_call(const char *func, const char *file, int line)
{
	while(GLenum error = glGetError())
	{
		std::cout << "[OpenGL Error] (" << error <<  "): " << func << " "
				  << file << ": " << line << std::endl;
		return false;
	}
	return true;
}
/* END Error handle */

/* Renderer */

void Renderer::Clear() const
{
	GLCALL( glClear(GL_COLOR_BUFFER_BIT) );
}

void Renderer::Draw(const VertexArray &va, const IndexBuffer &ib,
					const Shader &shader) const
{
	shader.Bind();
	va.Bind();
	ib.Bind();

	GLCALL( glDrawElements(GL_TRIANGLES, ib.GetCount(),
						   GL_UNSIGNED_INT, nullptr) );
}

/* END Renderer */
