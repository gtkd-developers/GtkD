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

module ggl.GLArea;

private import dui.DrawingArea;
	
private import dui.Widget;
	
private import ggl.GLCapability;
private import ggl.GLConfig;
private import ggl.GLContext;
private import ggl.GLWidget;
private import ggl.GLDrawable;
private import ggl.Types;
private import event.Event;

/**
 * DO NOT USE. A Simple widget with OpenGL Capabilities.
 * Basic GL methods to overide are
 * - initGL
 * - drawGL
 * - resizeGL
 * \bug ** DO NOT USE ** subclassing GLArea doesn't work
 */
abstract class GLArea : DrawingArea
{	
	mixin GLCapability;
	
	/**
	 * Creates a GLArea with a default size and default render type
	 * @glConfig the GLConfig
	 * @width the width
	 * @heigth
	 * @renderType
	 */
	this(GLConfig glConfig = null,
		int width = 300, int height = 300,
		GLRenderType renderType = GLRenderType.RGBA_TYPE
		)
	{
		super(width, height);
		setGLCapability(this, glConfig, null, true, renderType);		
	}
	
	abstract bit initGL(Event event){return false;}
	//{
	//	printf("GLCapabilityT.initGL \n" );
	//	return true;
	//}
	
	abstract bit drawGL(EventExpose event){return false;}
	//{
	//	printf("GLCapabilityT.drawGL \n" );
	//	return true;
	//}
	
	abstract bit resizeGL(EventConfigure event){return false;}
	//{
	//	printf("GLCapabilityT.resizeGL \n" );
	//	return true;
	//}	
}
