/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module simpleGL.SimpleGL;

private import gtk.DrawingArea;
private import glgtk.GLCapability;
private import glgdk.GLDrawable;
private import glgdk.GLConfig;
private import glgdk.GLContext;
private import glgdk.glgdktypes;

private import lib.gl;
private import lib.glu;

private import gdk.Event;

private import gtk.Widget;

private import gtk.Duit;
private import gtk.MainWindow;

/**
 * This is a Simple class extending the DrawingArea widget.
 * A really simple Demo illustrating OpenGL with DUI
 * It uses the new GLCapability mixin to add the GL capabilities to the widget.
 * This example is provided under the terms of the GPL License.
 * Note the initialization of the GLCapabilities on the constructor.
 * 
 * @author pac@tuxfamily.org
 */
class SimpleGL : DrawingArea
{

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
	bit initGL()
	{
		resizeGL(null);
		return true;
	}
	
	/**
	 * This method is called every time the window must be paint or repaint
	 * This is where you put the OpenGL call to draw something.
	 * This method call be called directly by the application without an event object
	 * to force redrawing of the scene.
	 * returns true to consume the event
	 */
	bit drawGL(GdkEventExpose* event = null)
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
	bit resizeGL(GdkEventConfigure* event = null)
	{
		//writefln("SimpleGL.resizeGL");
		GLfloat w = getWidth();
		GLfloat h = getHeight();
		
		int width, height;
		getSizeRequest(&width, &height);
		w = width;
		h = height;
		
		//writefln("SimpleGL.resizeGL %s %s", w, h);
		
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
 
private import glgdk.GLdInit;

void main(char[][] args)
{
	Duit.init(args);

	GLdInit.init(null, null);
	
	SimpleGL simpleGL = new SimpleGL();
	MainWindow window = new MainWindow("Simplest OpenGL Example");
	window.add(simpleGL);
	window.showAll();
		
	Duit.main();

}
