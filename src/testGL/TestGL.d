/*
 * button.c:
 * Simple toggle button example.
 *
 * written by Naofumi Yasufuku  <naofumi@users.sourceforge.net>
 * adapted by Antonio Monteiro to the DUI toolkit <duitoolkit@yahoo.ca>
 * this example is released under GPL license
 */
/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
 USA
 */

module testGL.TestGL;

import dui.All;
import ggl.All;

private import std.math;

/**
 * A GL toggle button
 */
class GLTeaArea : DrawingArea
,IdleListener
{
	
	private import std.stdio;
	
	/** need to include the mixin to add GL capabilities to this widget */
	mixin GLCapability;

	bit animate = false;

	GLfloat angle = 0.0;
	GLfloat pos_y = 0.0;

	int idleID;
	
	this()
	{
		super(300, 300);
		setGLCapability();	// set the GL capabilities for this widget
		
		//addOnMap(&mapCallback);
		//addOnUnmap(&unmapCallback);
		addOnVisibilityNotify(&visibilityCallback);
		initGL();
	}		

	bit idleCallback()
	{
		angle += 1.0;
		if (angle >= 360.0)
		{
			angle -= 360.0;
		}
		
		pos_y = std.math.sin(angle * std.math.PI / 180.0);
		
		glDrawFrame(this);
		return true;
	}
	
	bit initGL(Event event=null)
	{
		writefln("initGL 1");
		//resizeGL(null);

		static GLfloat ambient[]  = [ 0.5, 0.0, 0.0, 1.0 ];
		static GLfloat diffuse[]  = [ 1.0, 1.0, 1.0, 1.0 ];
		static GLfloat position[] = [ 1.0, 1.0, 1.0, 0.0 ];
		static GLfloat lmodel_ambient[] = [0.2, 0.2, 0.2, 1.0];
		static GLfloat local_view[] = [0.0];
		
		//glLightfv (GL_LIGHT0, GL_AMBIENT, new float[ 0.0, 0.0, 0.0, 1.0 ]);
		glLightfv (GL_LIGHT0, GL_AMBIENT, ambient);
		glLightfv (GL_LIGHT0, GL_DIFFUSE, diffuse);
		glLightfv (GL_LIGHT0, GL_POSITION, position);
		glLightModelfv (GL_LIGHT_MODEL_AMBIENT, lmodel_ambient);
		glLightModelfv (GL_LIGHT_MODEL_LOCAL_VIEWER, local_view);
		glEnable (GL_LIGHTING);
		glEnable (GL_LIGHT0);
		glEnable (GL_DEPTH_TEST);
		//addIdle();
		writefln("initGL exit");
		return true;
	}		
	bit drawGL(EventExpose event = null)
	{
		glClearColor (1.0, 1.0, 1.0, 1.0);
		glClearDepth (1.0);

		/* brass */
		static GLfloat ambient[4]  = [ 0.329412, 0.223529, 0.027451, 1.0 ];
		static GLfloat diffuse[4]  = [ 0.780392, 0.568627, 0.113725, 1.0 ];
		static GLfloat specular[4] = [ 0.992157, 0.941176, 0.807843, 1.0 ];
		static GLfloat shininess   = 0.21794872 * 128.0;

		glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		
		glLoadIdentity ();
		glTranslatef (0.0, 0.0, -10.0);
		
		glPushMatrix ();
		glTranslatef (0.0, pos_y, 0.0);
		glRotatef (angle, 0.0, 1.0, 0.0);
		glMaterialfv (GL_FRONT, GL_AMBIENT, ambient);
		glMaterialfv (GL_FRONT, GL_DIFFUSE, diffuse);
		glMaterialfv (GL_FRONT, GL_SPECULAR, specular);
		glMaterialf (GL_FRONT, GL_SHININESS, shininess);
		//GLDraw.torus(true, 0.3, 0.6, 30, 30);
		GLDraw.teapot(true, 1.1);
		glPopMatrix ();

		return true;
	}

	bit resizeGL(EventConfigure event = null)
	{

		writefln("resizeGL 1");
		GLfloat w = getWidth();
		GLfloat h = getHeight();

		double aspect;

		glViewport (0, 0, cast(int)w, cast(int)h);
		
		glMatrixMode (GL_PROJECTION);
		glLoadIdentity ();
		writefln("w=%s h=%s",w,h);
		double x = w/h;
		double y = 1.0;
		if ( x > 1.0 )
		{
			y = h/w;
			x = 1.0;
		}
		glFrustum (-x, x, -y, y, 5.0, 60.0);

		glMatrixMode (GL_MODELVIEW);

		writefln("resizeGL exit");
		return true;
	}

	void addIdle()
	{
		if ( idleID == 0 )
		{
			idleID = Dispatcher.getDispatcher().addIdleListener(this);
		}
	}
	
	void removeIdle()
	{
		if ( idleID != 0 )
		{
			Dispatcher.getDispatcher().removeIdleListener(idleID);
			idleID = 0;
		}
	}

	bit mapCallback(Widget widget, Event event)
	{
		printf("GLToggleButton.mapCallback \n" );
		if (animate)
		{
			addIdle();
		}
		return true;
	}

	bit unmapCallback(Widget widget, Event event)
	{
		printf("GLToggleButton.unmapCallback \n");
		removeIdle();
		return true;
	}

	void toggleAnimate()
	{
		printf("GLToggleButton.buttonClickedCallback \n" );
		animate = !animate;

		if (animate)
		{
			addIdle();
		}
		else
		{
			removeIdle();
			draw();
		}
	}

	bit visibilityCallback(Widget widget, EventVisibility e)
	{
		printf("GLToggleButton.visibilityCallback \n" );
		if (animate)
		{
			if (e.getState() == VisibilityState.FULLY_OBSCURED)
			{
				removeIdle();
			}
			else
			{
				addIdle();
			}
		}
		
		return true;
	}

  
}



public:
class TestGL : MainWindow
{
	this(DUI dui)
	{
		super("DUI test GL");
		setReallocateRedraws(true);
		setBorderWidth(10);
		
		VBox box = new VBox(false, 0);
		GLTeaArea tea = new GLTeaArea();
		box.packStart(tea,true,true,3);
		ToggleButton toggleButton = new ToggleButton("Toggle Animation");
		box.packStart(toggleButton, false, true, 2);
		
		toggleButton.addOnClick( &tea.toggleAnimate);
		add(box);
		
		show();
	}
}
 
void main(char [][]args)
{
	DUI dui;

	dui = DUI.dui(args);
	GL.init(args);
	Dispatcher.getDispatcher();
		
	TestGL testGL = new TestGL(dui);

	dui.go();
	
}