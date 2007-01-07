/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = glgtk
 * outFile = GLCapability
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = 
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module glgtk.GLCapability;

private import glgtk.glgtktypes;

private import lib.glgtk;


/**
 */

// SNEAKY MIXIN PROBLEM:
//
// These need to be public imports
// or GLCompatibility will not compile
// as a mixin in other modules!

// May as well be explicit about it:


public import std.stdio;
public import glgtk.GLWidget;
private import glgdk.GLDrawable;
public import gdk.Event;
public import lib.gl;


template GLCapability()
{
	
	GLfloat width = 0;
	GLfloat height = 0;
	
	GLfloat getGLWidth()
	{
		return width;
	}
	GLfloat getGLHeight()
	{
		return height;
	}
	
	
	/**
	 * Sets the GL capabilities for the widget
	 */
	bit setGLCapability(GLConfig glConfig = null, int renderType = GLRenderType.RGBA_TYPE)
	{
		if ( glConfig is null )
		{
			glConfig = new GLConfig(
			GLConfigMode.MODE_RGB
			| GLConfigMode.MODE_DEPTH
			| GLConfigMode.MODE_DOUBLE,
			GLConfigMode.MODE_RGB
			| GLConfigMode.MODE_DEPTH
			);
		}
		bit ok = setGLCapability(this, glConfig, null, true, renderType);
		
		return ok;
	}
	
	/**
	 * Set the GL capabilities for the widget
	 */
	bit setGLCapability(Widget widget, GLConfig glConfig, GLContext shareList, bit direct, int renderType)
	{
		GLWidget.setGLCapability(widget, glConfig, shareList, direct, renderType);
		
		addOnRealize(&realizeFrame);
		addOnUnrealize(&realizeFrame);
		addOnExpose(&exposeFrame);
		addOnConfigure(&configureFrame);
		addOnMap(&mapFrame);
		addOnUnmap(&unmapFrame);
		addOnVisibilityNotify(&visibilityFrame);
		return true;
	}
	
	/**
	 * The widget should use this method to redraw it self at any time
	 */
	public bit glDrawFrame()
	{
		return glDrawFrame(this);
	}

	/**
	 * The application should use this method to redraw the scene at any time
	 */
	bit glDrawFrame(Widget widget)
	{
		debug(drawFrame)printf("GLCapabilityT.glDrawFrame 1\n" );
		GLContext context = GLWidget.getGLContext(widget);
		debug(drawFrame)printf("GLCapabilityT.glDrawFrame 2\n" );
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		debug(drawFrame)printf("GLCapabilityT.glDrawFrame 3\n" );
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.glBegin(context) )
		{
			debug(drawFrame)printf("GLCapabilityT.glDrawFrame 4\n" );
			return false;
		}
		debug(drawFrame)printf("GLCapabilityT.glDrawFrame 5\n" );
		
		/*** do user actions ***/
		bit consumeEvent = typeof(this).drawGL(null);
		
		debug(drawFrame)printf("GLCapabilityT.glDrawFrame 6\n" );
		//writefln("glDrawFrame");
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			debug(drawFrame)printf("GLCapabilityT.glDrawFrame 7\n" );
			drawable.swapBuffers();
		}
		else
		{
			debug(drawFrame)printf("GLCapabilityT.glDrawFrame 8\n" );
			glFlush ();
		}

		debug(drawFrame)printf("GLCapabilityT.glDrawFrame 9\n" );
		drawable.glEnd();
		debug(drawFrame)printf("GLCapabilityT.glDrawFrame 10\n" );
		

		
		/*** OpenGL END ***/
		return true;
		
	}
	
	bool alreadyRealized;
	
	bool getAlreadyRealized()
	{
		return alreadyRealized;
	}
	
	void realizeFrame(Widget widget)
	{
		if ( alreadyRealized ) 
		{
		//	return;
		}
		alreadyRealized = true;
		printf("GLCapabilityT.realizeFrame \n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.glBegin(context) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bit consumeEvent = typeof(this).initGL();
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		drawable.glEnd();
		/*** OpenGL END ***/
		
		//return consumeEvent;
	}
	
	int exposeFrame(GdkEventExpose* event, Widget widget)
	{
		//printf("GLCapabilityT.exposeFrame exposeFrame\n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.glBegin(context) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bit consumeEvent = typeof(this).drawGL(event);
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		drawable.glEnd();
		/*** OpenGL END ***/
		
		return consumeEvent;
	}
	
	private import std.gc;
	
	int configureFrame(GdkEventConfigure* event, Widget widget)
	{
		if ( event != null )
		{
			width = event.width;
			height = event.height;
		}
		std.gc.disable();
		//writefln("configureFrame 1");
		//printf("GLCapabilityT.configureFrame \n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.glBegin(context) )
		{
			return false;
		}
		
		//writefln("configureFrame 2");
		/*** do user actions ***/
		int consumeEvent = typeof(this).resizeGL(event);
		//printf("here\n");
		//writefln("configureFrame 3");
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			//writefln("configureFrame 4");
			drawable.swapBuffers();
			//writefln("configureFrame 5");
		}
		else
		{
			//writefln("configureFrame 6");
			glFlush ();
			//writefln("configureFrame 7");
		}
		
		//writefln("configureFrame 8");
		drawable.glEnd();
		//writefln("configureFrame 9");
		/*** OpenGL END ***/
		
		std.gc.enable();
		return consumeEvent;
	}
	
	void mapFrame(Widget widget)
	{
		//printf("GLCapabilityT.mapFrame \n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.glBegin(context) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bit consumeEvent = typeof(this).onMap();
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		drawable.glEnd();
		/*** OpenGL END ***/
		
		//return consumeEvent;
	}
	
	void unmapFrame(Widget widget)
	{
		//printf("GLCapabilityT.unmapFrame \n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.glBegin(context) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bit consumeEvent = typeof(this).onUnmap();
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		drawable.glEnd();
		/*** OpenGL END ***/
		
		//return consumeEvent;
	}
	
	int visibilityFrame(GdkEventVisibility* event, Widget widget)
	{
		//printf("GLCapabilityT.visibilityFrame \n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.glBegin(context) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bool consumeEvent = typeof(this).onVisibility(event);
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		drawable.glEnd();
		/*** OpenGL END ***/
		
		return consumeEvent;
	}
	
	bit onMap()
	{
		//printf("GLCapabilityT.map \n" );
		return true;
	}
	
	bit onUnmap()
	{
		//printf("GLCapabilityT.unmap \n" );
		return true;
	}
	
	bool onVisibility(GdkEventVisibility* event)
	{
		//printf("GLCapabilityT.visibility \n" );
		return true;
	}
}

/**
 */

