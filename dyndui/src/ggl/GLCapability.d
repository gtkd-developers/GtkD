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

module ggl.GLCapability;

// SNEAKY MIXIN PROBLEM:
//
// These need to be public imports
// or GLCompatibility will not compile
// as a mixin in other modules!
 
import std.stdio;
import ggl.GLWidget;
import event.Event;
import lib.gl;

template GLCapability()
{
	//GLContext widgetGLContext;
	//GLDrawable widgetGLDrawable;
	/**
	 * Sets the GL capabilities for the widget
	 */
	bit setGLCapability(GLConfig glConfig = null, int renderType = GLRenderType.RGBA_TYPE)
	{
		if ( glConfig === null )
		{
			glConfig = new GLConfig(GLConfigMode.RGB | GLConfigMode.DEPTH | GLConfigMode.DOUBLE,
									 GLConfigMode.RGB | GLConfigMode.DEPTH);		}
		bit ok = setGLCapability(this, glConfig, null, true, renderType);
		
		//GLContext widgetGLContext = GLWidget.getGLContext(widget);
		//GLDrawable widgetGLDrawable = GLWidget.getGLDrawable(widget);

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
		//printf("GLCapabilityT.realizeFrame \n" );	
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.begin(context) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bit consumeEvent = typeof(this).drawGL(null);
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		drawable.end();
		/*** OpenGL END ***/
		return true;

	}
	
	bit realizeFrame(Widget widget, Event event)
	{
		
		//printf("GLCapabilityT.realizeFrame \n" );	
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.begin(context) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bit consumeEvent = typeof(this).initGL(event);
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		drawable.end();
		/*** OpenGL END ***/

		return consumeEvent;
	}
	
	bit exposeFrame(Widget widget, EventExpose event)
	{
		//printf("GLCapabilityT.exposeFrame exposeFrame\n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.begin(context) )
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
		
		drawable.end();
		/*** OpenGL END ***/

		return consumeEvent;
	}
	
	private import std.gc;
	
	bit configureFrame(Widget widget, EventConfigure event)
	{
		std.gc.disable();
		writefln("configureFrame 1");
		//printf("GLCapabilityT.configureFrame \n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.begin(context) )
		{
			return false;
		}
		
		writefln("configureFrame 2");
		/*** do user actions ***/
		bit consumeEvent = typeof(this).resizeGL(event);
		printf("here\n");
		writefln("configureFrame 3");
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
		writefln("configureFrame 4");
			drawable.swapBuffers();
		writefln("configureFrame 5");
		}
		else
		{
		writefln("configureFrame 6");
			glFlush ();
		writefln("configureFrame 7");
		}
		
		writefln("configureFrame 8");
		drawable.end();
		writefln("configureFrame 9");
		/*** OpenGL END ***/

		std.gc.enable();
		return consumeEvent;
	}
	
	bit mapFrame(Widget widget, Event event)
	{
		//printf("GLCapabilityT.mapFrame \n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.begin(context) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bit consumeEvent = typeof(this).map(event);
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		drawable.end();
		/*** OpenGL END ***/

		return consumeEvent;
	}
	
	bit unmapFrame(Widget widget, Event event)
	{
		//printf("GLCapabilityT.unmapFrame \n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.begin(context) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bit consumeEvent = typeof(this).unmap(event);
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		drawable.end();
		/*** OpenGL END ***/

		return consumeEvent;
	}
	
	bit visibilityFrame(Widget widget, EventVisibility event)
	{
		//printf("GLCapabilityT.visibilityFrame \n" );
		GLContext context = GLWidget.getGLContext(widget);
		GLDrawable drawable = GLWidget.getGLDrawable(widget);
		
		/*** OpenGL BEGIN ***/
		if ( !drawable.begin(context) )
		{
			return false;
		}
		
		/*** do user actions ***/
		bit consumeEvent = typeof(this).visibility(event);
		
		/*** flush ***/
		if ( drawable.isDoubleBuffered() )
		{
			drawable.swapBuffers();
		}
		else
		{
			glFlush ();
		}
		
		drawable.end();
		/*** OpenGL END ***/

		return consumeEvent;
	}
	
	bit map(Event event)
	{
		//printf("GLCapabilityT.map \n" );
		return true;
	}
	
	bit unmap(Event event)
	{
		//printf("GLCapabilityT.unmap \n" );
		return true;
	}
	
	bit visibility(EventVisibility event)
	{
		//printf("GLCapabilityT.visibility \n" );
		return true;
	}
}
