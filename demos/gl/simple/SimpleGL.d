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

module simpleGL.SimpleGL;

private import gdk.Event;
private import gtk.DrawingArea;
private import gtk.Main;
private import gtk.MainWindow;
private import gtk.Widget;
private import glgdk.GLConfig;
private import glgdk.GLContext;
private import glgdk.GLdInit;
private import glgdk.GLWindow;
private import glgtk.GLCapability;
private import gtkglc.glgdktypes;

private import gtkglc.gl;
private import gtkglc.glu;

/**
 * This is a Simple class extending the DrawingArea widget.
 * A really simple Demo illustrating OpenGL with GtkD
 * It uses the GLCapability mixin to add the GL capabilities to the widget.
 * This example is provided under the terms of the GPL License.
 * Note the initialization of the GLCapabilities on the constructor.
 * 
 * @author pac@tuxfamily.org
 */
class SimpleGL : DrawingArea
{

	GLfloat width;
	GLfloat height;
	
	/** need to include the mixin to add GL capabilities to this widget */
	mixin GLCapability;

	/**
	 * Construct a simple DrawingArea and sets the GLCapabilities
	 */
	this()
	{
		super(300, 300);
		setGLCapability();	// set the GL capabilities for this widget
	}

	/**
	 * put any gl initializations here
	 * returns true to consume the event
	 */
	void initGL()
	{
		resizeGL(null);
	}
	
	/**
	 * This method is called every time the window must be paint or repaint
	 * This is where you put the OpenGL call to draw something.
	 * This method call be called directly by the application without an event object
	 * to force redrawing of the scene.
	 * returns true to consume the event
	 */
	bool drawGL()
	{
		glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		glLoadIdentity ();

		gluLookAt(0, 0, 10, 0, 0, 0, 0, 1,0); //Set the camera position

		//Just Draw a tri-colored triangle
		glBegin(GL_TRIANGLES);
		glColor3f(1.0f,0.0f,0.0f);
		glVertex3f( 0.0f, 1.0f, 0.0f);
		glColor3f(0.0f,1.0f,0.0f);
		glVertex3f(-1.0f,-1.0f, 0.0f);
		glColor3f(0.0f,0.0f,1.0f);
		glVertex3f( 1.0f,-1.0f, 0.0f);
		glEnd();
			
		return true;
	}

	/**
	 * This method is called when the window is resized
	 * returns true to consume the event
	 */
	bool resizeGL(Event event = null)
	{
		GLfloat w;
		GLfloat h;
		
		if ( event is null || event.type != GdkEventType.CONFIGURE )
		{
			w = getWidth();
			h = getHeight();
		}
		else
		{
			w = event.configure.width;
			h = event.configure.height;
		}
		
		width = w;
		height = h;
		
		glViewport (0, 0, cast(int)w, cast(int)h); //Adjust the viewport according to new window dimensions 

		/*
		 * Update the projection Matrix accoding to the new dimension
		 * and reset the OpenGL state to MODELVIEW
		 */
		glMatrixMode (GL_PROJECTION);
		glLoadIdentity ();
		gluPerspective(20, w/h, 0.1, 10);
		glMatrixMode (GL_MODELVIEW);

		return true;
	}
}
 
void main(string[] args)
{
	Main.init(args);

	GLdInit.init(args);
	
	SimpleGL simpleGL = new SimpleGL();
	MainWindow window = new MainWindow("Simplest OpenGL Example");
	window.add(simpleGL);
	window.showAll();
		
	Main.run();
}
