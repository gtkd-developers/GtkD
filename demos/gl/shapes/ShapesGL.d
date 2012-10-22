/*
 * button.c:
 * Simple toggle button example.
 *
 * written by Naofumi Yasufuku  <naofumi@users.sourceforge.net>
 * adapted by Antonio Monteiro to the gtkD toolkit <gtkDoolkit@yahoo.ca>
 * this example is released under GPL license
 */
/*
 * This file is part of gtkD.
 * 
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 * 
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

module ShapesGL;

import TrackBall;
import DrawGL;

import cairo.Context;
import glib.Idle;
import glib.Timeout;
import gdk.Event;
import gtk.Button;
import gtk.DrawingArea;
import gtk.Layout;
import gtk.Main;
import gtk.MainWindow;
import gtk.Menu;
import gtk.MenuItem;
import gtk.SeparatorMenuItem;
import gtk.VBox;
import gtk.Widget;
import glgdk.GLConfig;
import glgdk.GLContext;
import glgdk.GLdInit;
import glgdk.GLWindow;
import glgtk.GLCapability;
import glgtk.GLWidget;

import gtkc.glibtypes;
import gtkglc.gl;
import gtkglc.glu;
import gtkglc.glgdktypes;
import gtkglc.glgtktypes;

version (Tango)
{
    import tango.io.Stdout;
    import tango.math.Math;
}
else
{
    import std.math;
	import std.stdio;
}

const float DIG_2_RAD = (PI / 180.0);
const float RAD_2_DIG = (180.0 / PI);

const int ANIMATE_THRESHOLD = cast(int)25.0;

const float VIEW_SCALE_MAX = 2.0;
const float VIEW_SCALE_MIN = 0.5;

const int NUM_SHAPES = 9;

enum Shapes
{
	cube         = 0,
	sphere       = 1,
	cone         = 2,
	torus        = 3,
	tetrahedron  = 4,
	octahedron   = 5,
	dodecahedron = 6,
	icosahedron  = 7,
	teapot       = 8
}

static GLuint shape_list_base = 0;
static GLuint shape_current = 0;

struct MaterialProp
{
	GLfloat ambient[4];
	GLfloat diffuse[4];
	GLfloat specular[4];
	GLfloat shininess;
}

static MaterialProp mat_emerald = {
  [0.0215, 0.1745, 0.0215, 1.0],
  [0.07568, 0.61424, 0.07568, 1.0],
  [0.633, 0.727811, 0.633, 1.0],
  0.6
};

static MaterialProp mat_jade = {
  [0.135, 0.2225, 0.1575, 1.0],
  [0.54, 0.89, 0.63, 1.0],
  [0.316228, 0.316228, 0.316228, 1.0],
  0.1
};

static MaterialProp mat_obsidian = {
  [0.05375, 0.05, 0.06625, 1.0],
  [0.18275, 0.17, 0.22525, 1.0],
  [0.332741, 0.328634, 0.346435, 1.0],
  0.3
};

static MaterialProp mat_pearl = {
  [0.25, 0.20725, 0.20725, 1.0],
  [1.0, 0.829, 0.829, 1.0],
  [0.296648, 0.296648, 0.296648, 1.0],
  0.088
};

static MaterialProp mat_ruby = {
  [0.1745, 0.01175, 0.01175, 1.0],
  [0.61424, 0.04136, 0.04136, 1.0],
  [0.727811, 0.626959, 0.626959, 1.0],
  0.6
};

static MaterialProp mat_turquoise = {
  [0.1, 0.18725, 0.1745, 1.0],
  [0.396, 0.74151, 0.69102, 1.0],
  [0.297254, 0.30829, 0.306678, 1.0],
  0.1
};

static MaterialProp mat_brass = {
  [0.329412, 0.223529, 0.027451, 1.0],
  [0.780392, 0.568627, 0.113725, 1.0],
  [0.992157, 0.941176, 0.807843, 1.0],
  0.21794872
};

static MaterialProp mat_bronze = {
  [0.2125, 0.1275, 0.054, 1.0],
  [0.714, 0.4284, 0.18144, 1.0],
  [0.393548, 0.271906, 0.166721, 1.0],
  0.2
};

static MaterialProp mat_chrome = {
  [0.25, 0.25, 0.25, 1.0],
  [0.4, 0.4, 0.4, 1.0],
  [0.774597, 0.774597, 0.774597, 1.0],
  0.6
};

static MaterialProp mat_copper = {
  [0.19125, 0.0735, 0.0225, 1.0],
  [0.7038, 0.27048, 0.0828, 1.0],
  [0.256777, 0.137622, 0.086014, 1.0],
  0.1
};

static MaterialProp mat_gold = {
  [0.24725, 0.1995, 0.0745, 1.0],
  [0.75164, 0.60648, 0.22648, 1.0],
  [0.628281, 0.555802, 0.366065, 1.0],
  0.4
};

static MaterialProp mat_silver = {
  [0.19225, 0.19225, 0.19225, 1.0],
  [0.50754, 0.50754, 0.50754, 1.0],
  [0.508273, 0.508273, 0.508273, 1.0],
  0.4
};

static MaterialProp* mat_current;

static float view_quat_diff[4] = [ 0.0, 0.0, 0.0, 1.0 ];
static float view_quat[4] = [ 0.0, 0.0, 0.0, 1.0 ];
static float view_scale = 1.0;

static gboolean animate = false;

static void init_view()
{
  view_quat[0] = view_quat_diff[0] = 0.0;
  view_quat[1] = view_quat_diff[1] = 0.0;
  view_quat[2] = view_quat_diff[2] = 0.0;
  view_quat[3] = view_quat_diff[3] = 1.0;
  view_scale = 1.0;
}

/**
 * A GL toggle button
 */
class ShapesGL : DrawingArea
{
	TestGL testGL;
	bool animate = false;
	Idle mainIdle;
	Menu menu;
	
	/** need to include the mixin to add GL capabilities to this widget */
	mixin GLCapability;

	GLfloat width;
	GLfloat height;
	
	this(TestGL testGL)
	{
		mat_current = &mat_silver;

		this.testGL = testGL;
		setGLCapability();	// set the GL capabilities for this widget
	
		setSizeRequest(400,400);		
		addOnMap(&mapCallback);	                         // dispatcher.addMapListener(this,da);
		addOnVisibilityNotify(&visibilityCallback);      // dispatcher.addVisibilityListener(this,da);
		addOnButtonPress(&mouseButtonPressCallback);     // dispatcher.addMouseButtonListener(this,da);
		addOnButtonRelease(&mouseButtonReleaseCallback); // dispatcher.addMouseMotionListener(this,da);
		addOnMotionNotify(&motionNotifyCallback);
			
		menu = createPopupMenu();
	}		

	bool visibilityCallback(Event e, Widget widget)
	{
		if (animate)
		{
			if (e.visibility.state == VisibilityState.FULLY_OBSCURED)
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
	
	bool idleCallback()
	{
		return drawFrame();
	}
	
	bool drawGL()
	{
		float m[4][4];

		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		glLoadIdentity();
		
		/* View transformation. */
		glTranslatef(0.0, 0.0, -10.0);
		glScalef(view_scale, view_scale, view_scale);
		add_quats(view_quat_diff, view_quat, view_quat);
		build_rotmatrix(m, view_quat);
		glMultMatrixf(&m[0][0]);
		
		/* Render shape */
		glMaterialfv(GL_FRONT, GL_AMBIENT, mat_current.ambient.ptr);
		glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_current.diffuse.ptr);
		glMaterialfv(GL_FRONT, GL_SPECULAR, mat_current.specular.ptr);
		glMaterialf(GL_FRONT, GL_SHININESS, mat_current.shininess * 128.0);
		glCallList(shape_list_base + shape_current);

		return true;
	}

	bool resizeGL(Event e)
	{
		GLfloat w;
		GLfloat h;
		
		if ( e is null || e.type != GdkEventType.CONFIGURE )
		{
			w = getWidth();
			h = getHeight();
		}
		else
		{
			w = e.configure.width;
			h = e.configure.height;
		}
		
		width = w;
		height = h;

		GLfloat aspect;

		glViewport(0, 0, cast(int)w, cast(int)h);
		
		glMatrixMode(GL_PROJECTION);
		glLoadIdentity();

		double x = w/h;
		double y = 1.0;
		if ( x > 1.0 )
		{
			y = h/w;
			x = 1.0;
		}

		glFrustum (-x, x, -y, y, 5.0, 60.0);
		glMatrixMode(GL_MODELVIEW);
		
		return true;
	}
	
	void initGL()
	{
		static GLfloat ambient[] = [0.0, 0.0, 0.0, 1.0];
		static GLfloat diffuse[] = [1.0, 1.0, 1.0, 1.0];
		static GLfloat position[] = [0.0, 3.0, 3.0, 0.0];
		
		static GLfloat lmodel_ambient[] = [0.2, 0.2, 0.2, 1.0];
		static GLfloat local_view[] = [0.0];

		resizeGL(null);

		glClearColor(0.5, 0.5, 0.8, 1.0);
		glClearDepth(1.0);
		
		glLightfv(GL_LIGHT0, GL_AMBIENT, ambient.ptr);
		glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse.ptr);
		glLightfv(GL_LIGHT0, GL_POSITION, position.ptr);
		glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmodel_ambient.ptr);
		glLightModelfv(GL_LIGHT_MODEL_LOCAL_VIEWER, local_view.ptr);
		
		glFrontFace(GL_CW);
		glEnable(GL_LIGHTING);
		glEnable(GL_LIGHT0);
		glEnable(GL_AUTO_NORMAL);
		glEnable(GL_NORMALIZE);
		glEnable(GL_DEPTH_TEST);
		glDepthFunc(GL_LESS);
		
		/* Shape display lists */
		shape_list_base = glGenLists(2); //Shapes.max);
		
		int depth = 1;
		GLfloat none = 0.0;
		GLfloat step = 1.8 / depth;
		GLfloat size = step / 1.8;
		GLfloat back = -(depth-1)*step;
		GLfloat start;

		if ( depth % 2 == 1 )
		{
			start = -(depth-1)/2*step;
		}
		else
		{
			start = -depth/2*step+step/2;
		}

		void addCube(GLfloat tx, GLfloat ty, GLfloat tz)
		{
			if ( tx!=none || ty!=none || tz!=none )
			{
				glTranslatef(tx, ty, tz);
			}
			drawCube(true, size);
		}
		
		/* Cube */
		glNewList(shape_list_base + Shapes.cube, GL_COMPILE);
		glPushMatrix();

		for ( int z=0 ; z<depth ; z++ )
		{
			for ( int y=0 ; y<depth ; y++ )
			{
				if ( y==0 )
				{
					if ( z == 0 )
					{
						addCube(start,start,start);
					}
					else
					{
						addCube(back, back, step);
					}
				}
				else
				{
					addCube(back, step, none);
				}
				for ( int x=1 ; x<depth ; x++ )
				{
					addCube(step, none, none);
				}
			}
		}

		glPopMatrix();
		glEndList();
		
		/* Sphere */
		glNewList(shape_list_base + Shapes.sphere, GL_COMPILE);
			drawSphere(true, 1.0, 30, 30);
		glEndList();

		/* Cone */
		glNewList(shape_list_base + Shapes.cone, GL_COMPILE);
		glPushMatrix();
			glTranslatef(0.0, 0.0, -1.0);
			drawCone(true, 1.0, 2.0, 30, 30);
		glPopMatrix();
		glEndList();
		
		/* Torus */
		glNewList(shape_list_base + Shapes.torus, GL_COMPILE);
			drawTorus(true, 0.4, 0.8, 30, 30);
		glEndList();
		
		/* Tetrahedron */
		glNewList(shape_list_base + Shapes.tetrahedron, GL_COMPILE);
		glPushMatrix();
			glScalef(1.2, 1.2, 1.2);
			drawTetrahedron(true);
		glPopMatrix();
		glEndList();
		
		/* Octahedron */
		glNewList(shape_list_base + Shapes.octahedron, GL_COMPILE);
		glPushMatrix();
			glScalef(1.2, 1.2, 1.2);
			drawOctahedron(true);
		glPopMatrix();
		glEndList();
		
		/* Dodecahedron */
		glNewList(shape_list_base + Shapes.dodecahedron, GL_COMPILE);
		glPushMatrix();
			glScalef(0.7, 0.7, 0.7);
			drawDodecahedron(true);
		glPopMatrix();
		glEndList();
		
		/* Icosahedron */
		glNewList(shape_list_base + Shapes.icosahedron, GL_COMPILE);
		glPushMatrix();
			glScalef(1.2, 1.2, 1.2);
			drawIcosahedron(true);
		glPopMatrix();
		glEndList();
		
		/* Teapot */
		glNewList(shape_list_base + Shapes.teapot, GL_COMPILE);
			drawTeapot(true, 1.0);
		glEndList();
	}

	void mapCallback(Widget drawable)
	{
		if (animate)
		{
			addIdle();
		}
	}

	void unmapCallback(Widget drawable)
	{
		removeIdle();
	}
	
	void addIdle()
	{
		if ( mainIdle is null )
		{
			mainIdle = new Idle(&idleCallback);
		}
	}
	
	void removeIdle()
	{
		if ( mainIdle !is null )
		{
			mainIdle.stop();
			mainIdle = null;
		}
	}

	float begin_x = 0.0;
	float begin_y = 0.0;

	float dx = 0.0;
	float dy = 0.0;

	bool mouseButtonPressCallback(Event event, Widget widget)
	{
		if (event.button.button == 1)
		{
			if (animate)
			{
				toggleAnimation();
			}
		}
		
		begin_x = event.button.x;
		begin_y = event.button.y;
		
		return false;
	}
	
	bool mouseButtonReleaseCallback(Event event, Widget widget)
	{
		if (event.button.button == 1)
		{
			if (!animate && ((dx*dx + dy*dy) > ANIMATE_THRESHOLD))
			{
				toggleAnimation();
			}
		}
		else if (event.button.button == 3)
		{
			/* Popup menu. */
			menu.popup(null,null,null,null,event.button.button, event.button.time);
			return true;
		}
		
		dx = 0.0;
		dy = 0.0;
		
		return false;
	}

	bool motionNotifyCallback(Event event, Widget widget)
	{
		float w = width;
		float h = height;
		float x = event.motion.x;
		float y = event.motion.y;
		gboolean redraw = false;
		
		/* Rotation. */
		if (event.motion.state == ModifierType.BUTTON1_MASK )
		{
			trackball(view_quat_diff,
				(2.0 * begin_x - w) / w,
				(h - 2.0 * begin_y) / h,
				(2.0 * x - w) / w,
				(h - 2.0 * y) / h);
			
				dx = x - begin_x;
				dy = y - begin_y;
			
			redraw = true;
		}
		
		/* Scaling. */
		if (event.motion.state == ModifierType.BUTTON2_MASK )
		{
			view_scale = view_scale * (1.0 + (y - begin_y) / h);
			if (view_scale > VIEW_SCALE_MAX)
			{
				view_scale = VIEW_SCALE_MAX;
			}
			else if (view_scale < VIEW_SCALE_MIN)
			{
				view_scale = VIEW_SCALE_MIN;
			}
			
			redraw = true;
		}
		
		begin_x = x;
		begin_y = y;
		
		if (redraw && !animate)
		{
			queueDraw();
		}
		
		return true;
	}

	/* Toggle animation.*/
	void toggleAnimation()
	{
		animate = !animate;

		if (animate)
		{
			addIdle();
		}
		else
		{
			removeIdle();
			view_quat_diff[0] = 0.0;
			view_quat_diff[1] = 0.0;
			view_quat_diff[2] = 0.0;
			view_quat_diff[3] = 1.0;
			queueDraw();
		}

	}

	void activateItemCallback(MenuItem menuItem)
	{
		string action = menuItem.getActionName();
		version(Tango)
		{
			Stdout("activateItemCallback action = %s ")( action).newline;
		}
		else //version(Phobos)
		{
			writefln("activateItemCallback action = %s ", action);
		}
		
		switch(action)
		{
			case "shapes.Cube":shape_current = Shapes.cube; break;
			case "shapes.Sphere":shape_current = Shapes.sphere; break;
			case "shapes.Cone":shape_current = Shapes.cone; break;
			case "shapes.Torus":shape_current = Shapes.torus; break;
			case "shapes.Tetrahedron":shape_current = Shapes.tetrahedron; break;
			case "shapes.Octahedron":shape_current = Shapes.octahedron; break;
			case "shapes.Dodecahedron":shape_current = Shapes.dodecahedron; break;
			case "shapes.Icosahedron":shape_current = Shapes.icosahedron; break;
			case "shapes.Teapot":shape_current = Shapes.teapot; break;

			case "materials.Emerald":mat_current = &mat_emerald;break;
			case "materials.Jade":mat_current = &mat_jade;break;
			case "materials.Obsidian":mat_current = &mat_obsidian;break;
			case "materials.Pearl":mat_current = &mat_pearl;break;
			case "materials.Ruby":mat_current = &mat_ruby;break;
			case "materials.Turquoise":mat_current = &mat_turquoise;break;
			case "materials.Brass":mat_current = &mat_brass;break;
			case "materials.Bronze":mat_current = &mat_bronze;break;
			case "materials.Chrome":mat_current = &mat_chrome;break;
			case "materials.Copper":mat_current = &mat_copper;break;
			case "materials.Gold":mat_current = &mat_gold;break;
			case "materials.Silver":mat_current = &mat_silver;break;

			case "reset":init_view();break;
			case "fullScreen":testGL.fullscreen();break;
			case "unFullScreen":testGL.unfullscreen();break;
			default: break;
		}

		queueDraw();
	}

	/* Creates the popup menu.*/
	Menu createPopupMenu()
	{
		Menu shapes = new Menu();
		Menu materials = new Menu();
		Menu menu = new Menu();
		MenuItem item;

		/*
		 * Shapes submenu.
		 */
		
		menu.append(new MenuItem(&activateItemCallback, "Cube", "shapes.Cube"));
		menu.append(new MenuItem("Sphere", &activateItemCallback, "shapes.Sphere"));
		menu.append(new MenuItem("Cone", &activateItemCallback, "shapes.Cone"));
		menu.append(new MenuItem("Torus", &activateItemCallback, "shapes.Torus"));
		menu.append(new MenuItem("Tetrahedron", &activateItemCallback, "shapes.Tetrahedron"));
		menu.append(new MenuItem("Octahedron", &activateItemCallback, "shapes.Octahedron"));
		menu.append(new MenuItem("Dodecahedron", &activateItemCallback, "shapes.Dodecahedron"));
		menu.append(new MenuItem("Icosahedron", &activateItemCallback, "shapes.Icosahedron"));
		menu.append(new MenuItem("Teapot", &activateItemCallback, "shapes.Teapot"));
		
		/*
		 * Materials submenu.
		 */
		menu.append(new SeparatorMenuItem());
		
		menu.append(new MenuItem("Emerald", &activateItemCallback, "materials.Emerald"));
		menu.append(new MenuItem("Jade", &activateItemCallback, "materials.Jade"));
		menu.append(new MenuItem("Obsidian", &activateItemCallback, "materials.Obsidian"));
		menu.append(new MenuItem("Pearl", &activateItemCallback, "materials.Pearl"));
		menu.append(new MenuItem("Ruby", &activateItemCallback, "materials.Ruby"));
		menu.append(new MenuItem("Turquoise", &activateItemCallback, "materials.Turquoise"));
		menu.append(new MenuItem("Brass", &activateItemCallback, "materials.Brass"));
		menu.append(new MenuItem("Bronze", &activateItemCallback, "materials.Bronze"));
		menu.append(new MenuItem("Chrome", &activateItemCallback, "materials.Chrome"));
		menu.append(new MenuItem("Copper", &activateItemCallback, "materials.Copper"));
		menu.append(new MenuItem("Gold", &activateItemCallback, "materials.Gold"));
		menu.append(new MenuItem("Silver", &activateItemCallback, "materials.Silver"));

		/* reset */
		menu.append(new SeparatorMenuItem());
		menu.append(new MenuItem("Reset", &activateItemCallback, "reset"));	
		menu.append(new MenuItem("Fullscreen", &activateItemCallback, "fullScreen"));	
		menu.append(new MenuItem("un-Fullscreen", &activateItemCallback, "unFullScreen"));	

		/* Quit */
		menu.append(new SeparatorMenuItem());
		menu.append(new MenuItem("Cancel", &activateItemCallback, "quit"));	
		
		menu.showAll();
		
		return menu;
	}
}

class TestGL : MainWindow
{
	this()
	{
		super("GtkD ShapesGL (right-click for menu)");
		setReallocateRedraws(true);
		show();
	}
}
 
void main(string[] args)
{
	Main.init(args);

	GLdInit.init(args);
		
	TestGL testGL = new TestGL();
	
	testGL.add(new ShapesGL(testGL));
	testGL.showAll();
	
	Main.run();
}
