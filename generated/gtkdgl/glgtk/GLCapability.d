/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
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

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module glgtk.GLCapability;

private import gtkglc.glgtk;
public  import gtkglc.glgtktypes;


/** */
public import cairo.Context;
public import gdk.Event;
public import glgdk.GLWindow;
public import glgtk.GLWidget;
public import glgtk.GLWidget : widgetSetGlCapability = setGlCapability;

template GLCapability()
{
	GLfloat width = 0;
	GLfloat height = 0;
	
	GLfloat getGlWidth()
	{
		return width;
	}
	GLfloat getGlHeight()
	{
		return height;
	}
	
	/**
	 * Sets the GL capabilities for the widget
	 */
	bool setGlCapability(GLConfig glConfig = null, int renderType = GdkGLRenderType.RGBA_TYPE)
	{
		if ( glConfig is null )
		{
			glConfig = new GLConfig(
				GdkGLConfigMode.RGB
				| GdkGLConfigMode.DEPTH
				| GdkGLConfigMode.DOUBLE,
				GdkGLConfigMode.RGB
				| GdkGLConfigMode.DEPTH
			);
		}
		return setGlCapability(this, glConfig, null, true, renderType);
	}
	
	/**
	 * Set the GL capabilities for the widget
	 */
	bool setGlCapability(Widget widget, GLConfig glConfig, GLContext shareList, bool direct, int renderType)
	{
		if(!widgetSetGlCapability(widget, glConfig, shareList, direct, renderType))
			return false;
		
		addOnRealize(&realizeFrame);
		addOnUnrealize(&realizeFrame);
		addOnDraw(&drawFrame);
		addOnConfigure(&configureFrame);
		addOnMap(&mapFrame);
		addOnUnmap(&unmapFrame);
		addOnVisibilityNotify(&visibilityFrame);
		return true;
	}
	
	/**
	 * The widget should use this method to redraw it self at any time
	 */
	bool drawFrame()
	{
		return drawFrame(getScopedGobject!Context(null, true), this);
	}
	
	bool alreadyRealized;
	
	bool getAlreadyRealized()
	{
		return alreadyRealized;
	}
	
	void realizeFrame(Widget widget)
	{
		alreadyRealized = true;
		
		GLContext context = getGlContext(widget);
		GLWindow drawable = getGlWindow(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !context.makeCurrent(drawable, drawable) )
		{
			return;
		}
		
		/*** do user actions ***/
		typeof(this).initGL();
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		context.releaseCurrent();
		/*** OpenGL END ***/
	}
	
	bool drawFrame(Scoped!Context cr, Widget widget)
	{
		GLContext context = getGlContext(widget);
		GLWindow drawable = getGlWindow(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !context.makeCurrent(drawable, drawable) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bool consumeEvent = typeof(this).drawGL();
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		context.releaseCurrent();
		/*** OpenGL END ***/
		
		return consumeEvent;
	}
	
	bool configureFrame(Event event, Widget widget)
	{
		if ( event.type == GdkEventType.CONFIGURE )
		{
			width = event.configure.width;
			height = event.configure.height;
		}
		
		GLContext context = getGlContext(widget);
		GLWindow drawable = getGlWindow(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !context.makeCurrent(drawable, drawable) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bool consumeEvent = typeof(this).resizeGL(event);
		
		/*** Seems to be the default on Linux, but not on Windows ***/
		version(Windows)
		{
			typeof(this).drawGL();
		}
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		context.releaseCurrent();
		/*** OpenGL END ***/
		
		return consumeEvent;
	}
	
	void mapFrame(Widget widget)
	{
		GLContext context = getGlContext(widget);
		GLWindow drawable = getGlWindow(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !context.makeCurrent(drawable, drawable) )
		{
			return;
		}
		
		/*** do user actions ***/
		typeof(this).onMap();
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		context.releaseCurrent();
		/*** OpenGL END ***/
	}
	
	void unmapFrame(Widget widget)
	{
		GLContext context = getGlContext(widget);
		GLWindow drawable = getGlWindow(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !context.makeCurrent(drawable, drawable) )
		{
			return;
		}
		
		/*** do user actions ***/
		typeof(this).onUnmap();
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		context.releaseCurrent();
		/*** OpenGL END ***/
	}
	
	bool visibilityFrame(Event event, Widget widget)
	{
		GLContext context = getGlContext(widget);
		GLWindow drawable = getGlWindow(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !context.makeCurrent(drawable, drawable) )
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
		
		context.releaseCurrent();
		/*** OpenGL END ***/
		
		return consumeEvent;
	}
	
	void onMap()
	{
		return;
	}
	
	void onUnmap()
	{
		return;
	}
	
	bool onVisibility(Event event)
	{
		return true;
	}
}

/**
 */
