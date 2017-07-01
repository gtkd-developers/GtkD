/*
 * This file is part of gtkD.
 *
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// To compile:
// [gdc] gdc CoreGL.d `pkg-config gtkd-3 gl --cflags --libs`
// [dmd] rdmd `pkg-config gtkd-3 --cflags` -L-lGL -L-ldl CoreGL.d

module coreGL.CoreGL;

import std.string;

import gio.Application : GioApplication = Application;
import gtk.Application;
import gtk.ApplicationWindow;
import gdk.GLContext;
import gtk.DrawingArea;
import gtk.GLArea;
import gtk.Widget;

import glcore;

int main(string[] args)
{
	Application application;

	void activateCoreGL(GioApplication app)
	{
    auto mainWnd = new ApplicationWindow(application);
    mainWnd.setTitle("Simplest GLArea + CoreGL Example");

    auto wnd = new CoreGL;
    mainWnd.add(wnd);
    mainWnd.showAll();
	}

	application = new Application("org.gtkd.demo.gl.core", GApplicationFlags.FLAGS_NONE);
	application.addOnActivate(&activateCoreGL);
	return application.run(args);
}

/**
 * A really simple Demo illustrating OpenGL core profile with GtkD
 * This example is provided under the terms of the GPL License.
 *
 * @author sebastien.alaiwan@gmail.com
 */
class CoreGL : GLArea
{
public:
  this()
  {
    setAutoRender(true);

    addEvents(GdkEventMask.BUTTON_PRESS_MASK);
    addEvents(GdkEventMask.SCROLL_MASK);

    addOnRender(&render);
    addOnRealize(&realize);
    addOnUnrealize(&unrealize);

    showAll();
  }

  GLuint m_Vao;
  GLuint m_Program;
  GLuint m_Mvp;

  void realize(Widget)
  {
    makeCurrent();
    GLuint position_index;
    GLuint color_index;
    initShaders(&m_Program, &m_Mvp, &position_index, &color_index);
    initBuffers(position_index, color_index);
  }

  void unrealize(Widget)
  {
    makeCurrent();
    glDeleteBuffers(1, &m_Vao);
    glDeleteProgram(m_Program);
  }

  bool render(GLContext c, GLArea a)
  {
    makeCurrent();

    glClearColor(0.3, 0.3, 0.3, 1);
    glClear(GL_COLOR_BUFFER_BIT);

    drawTriangle();

    glFlush();

    return true;
  }

  void drawTriangle()
  {
    immutable mvp = getIdentityMatrix();

    glUseProgram(m_Program);

    // update the "mvp" matrix we use in the shader
    glUniformMatrix4fv(m_Mvp, 1, GL_FALSE, mvp.ptr);

    glBindBuffer(GL_ARRAY_BUFFER, m_Vao);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 0, null);

    // draw the three vertices as a triangle
    glDrawArrays(GL_TRIANGLES, 0, 3);

    glDisableVertexAttribArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glUseProgram(0);
  }

  void initBuffers(uint position_index, uint color_index)
  {
    static immutable GLfloat[] vertex_data =
    [
      0.0f,   0.5f,   0.0f, 1.0f,
      0.5f, -0.366f, 0.0f, 1.0f,
      -0.5f, -0.366f, 0.0f, 1.0f,
    ];

    // we need to create a VAO to store the other buffers
    glGenVertexArrays(1, &m_Vao);
    glBindVertexArray(m_Vao);

    // this is the VBO that holds the vertex data
    GLuint buffer;
    glGenBuffers(1, &buffer);
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    glBufferData(GL_ARRAY_BUFFER, vertex_data.length * float.sizeof, vertex_data.ptr, GL_STATIC_DRAW);

    // reset the state; we will re-enable the VAO when needed
    glBindBuffer(GL_ARRAY_BUFFER, 0);
  }
}

void initShaders(uint* program_out, uint* mvp_location_out, uint* position_location_out, uint* color_location_out)
{
  const vertex = compileShader(GL_VERTEX_SHADER, VertShaderCode ~ "\0");
  scope(exit) glDeleteShader(vertex);

  const fragment = compileShader(GL_FRAGMENT_SHADER, FragShaderCode ~ "\0");
  scope(exit) glDeleteShader(fragment);

  const program = glCreateProgram();

  glAttachShader(program, vertex);
  scope(exit) glDetachShader(program, vertex);

  glAttachShader(program, fragment);
  scope(exit) glDetachShader(program, fragment);

  glLinkProgram(program);

  int status = 0;
  glGetProgramiv(program, GL_LINK_STATUS, &status);

  if(status == GL_FALSE)
  {
    int len = 0;
    glGetProgramiv(program, GL_INFO_LOG_LENGTH, &len);

    char[] buffer;
    buffer.length = len + 1;
    glGetProgramInfoLog(program, len, null, buffer.ptr);

    glDeleteProgram(program);

    throw new Exception(format("Linking failure in program: %s", buffer));
  }

  *program_out = program;
  *mvp_location_out = glGetUniformLocation(program, "mvp");
  *position_location_out = glGetAttribLocation(program, "position");
  *color_location_out = glGetAttribLocation(program, "color");
}

uint compileShader(int type, string source)
{
  const shader = glCreateShader(type);
  scope(failure) glDeleteShader(shader);
  const(char)*srcPtr = source.ptr;
  glShaderSource(shader, 1, &srcPtr, null);
  glCompileShader(shader);

  int status;
  glGetShaderiv(shader, GL_COMPILE_STATUS, &status);

  if(status == GL_FALSE)
  {
    int len;
    glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &len);

    char[] buffer;
    buffer.length = len + 1;
    glGetShaderInfoLog(shader, len, null, buffer.ptr);

    const sType = type == GL_VERTEX_SHADER ? "vertex" : "fragment";

    throw new Exception(format("Compilation failure in %s shader: %s", sType, buffer));
  }

  return shader;
}

float[16] getIdentityMatrix() pure
{
  float[4 * 4] mat;

  // identity matrix
  for(int x=0;x < 4;++x)
    for(int y=0;y < 4;++y)
      mat[x+y*4] = x==y ? 1 : 0;

  return mat;
}

immutable FragShaderCode = `
#version 130

smooth in vec4 vertexColor;

out vec4 outputColor;

void main() {
  outputColor = vertexColor;
}`;

immutable VertShaderCode = `
#version 130

in vec3 position;
in vec3 color;

uniform mat4 mvp;

smooth out vec4 vertexColor;

void main() {
  gl_Position = mvp * vec4(position, 1.0);
  vertexColor = vec4(color, 1.0);
}`;

