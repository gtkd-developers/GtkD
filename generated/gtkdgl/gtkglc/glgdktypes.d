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


module gtkglc.glgdktypes;

public import gtkc.glibtypes;
public import gtkc.gdktypes;

public enum GdkGLBufferMask
{
	FRONT_LEFT_BUFFER_BIT = 1,
	FRONT_RIGHT_BUFFER_BIT = 2,
	BACK_LEFT_BUFFER_BIT = 4,
	BACK_RIGHT_BUFFER_BIT = 8,
	AUX_BUFFERS_BIT = 16,
	DEPTH_BUFFER_BIT = 32,
	STENCIL_BUFFER_BIT = 64,
	ACCUM_BUFFER_BIT = 128,
}
alias GdkGLBufferMask GLBufferMask;

public enum GdkGLConfigAttrib
{
	USE_GL = 1,
	BUFFER_SIZE = 2,
	LEVEL = 3,
	RGBA = 4,
	DOUBLEBUFFER = 5,
	STEREO = 6,
	AUX_BUFFERS = 7,
	RED_SIZE = 8,
	GREEN_SIZE = 9,
	BLUE_SIZE = 10,
	ALPHA_SIZE = 11,
	DEPTH_SIZE = 12,
	STENCIL_SIZE = 13,
	ACCUM_RED_SIZE = 14,
	ACCUM_GREEN_SIZE = 15,
	ACCUM_BLUE_SIZE = 16,
	ACCUM_ALPHA_SIZE = 17,
	CONFIG_CAVEAT = 32,
	X_VISUAL_TYPE = 34,
	TRANSPARENT_TYPE = 35,
	TRANSPARENT_INDEX_VALUE = 36,
	TRANSPARENT_RED_VALUE = 37,
	TRANSPARENT_GREEN_VALUE = 38,
	TRANSPARENT_BLUE_VALUE = 39,
	TRANSPARENT_ALPHA_VALUE = 40,
	DRAWABLE_TYPE = 32784,
	RENDER_TYPE = 32785,
	X_RENDERABLE = 32786,
	FBCONFIG_ID = 32787,
	VISUAL_ID = 32779,
	SCREEN = 32780,
	SAMPLE_BUFFERS = 100000,
	SAMPLES = 100001,
}
alias GdkGLConfigAttrib GLConfigAttrib;

public enum GdkGLConfigCaveat
{
	CONFIG_CAVEAT_DONT_CARE = 4294967295,
	CONFIG_CAVEAT_NONE = 32768,
	SLOW_CONFIG = 32769,
	NON_CONFORMANT_CONFIG = 32781,
}
alias GdkGLConfigCaveat GLConfigCaveat;

public enum GdkGLConfigError
{
	BAD_SCREEN = 1,
	BAD_ATTRIBUTE = 2,
	NO_EXTENSION = 3,
	BAD_VISUAL = 4,
	BAD_CONTEXT = 5,
	BAD_VALUE = 6,
	BAD_ENUM = 7,
}
alias GdkGLConfigError GLConfigError;

public enum GdkGLConfigMode
{
	RGB = 0,
	RGBA = 0,
	INDEX = 1,
	SINGLE = 0,
	DOUBLE = 2,
	STEREO = 4,
	ALPHA = 8,
	DEPTH = 16,
	STENCIL = 32,
	ACCUM = 64,
	MULTISAMPLE = 128,
}
alias GdkGLConfigMode GLConfigMode;

public enum GdkGLDrawableAttrib
{
	PRESERVED_CONTENTS = 32795,
	WIDTH = 32797,
	HEIGHT = 32798,
	EVENT_MASK = 32799,
}
alias GdkGLDrawableAttrib GLDrawableAttrib;

public enum GdkGLDrawableTypeMask
{
	WINDOW_BIT = 1,
}
alias GdkGLDrawableTypeMask GLDrawableTypeMask;

public enum GdkGLRenderType
{
	RGBA_TYPE = 32788,
}
alias GdkGLRenderType GLRenderType;

public enum GdkGLRenderTypeMask
{
	RGBA_BIT = 1,
}
alias GdkGLRenderTypeMask GLRenderTypeMask;

public enum GdkGLTransparentType
{
	NONE = 32768,
	RGB = 32776,
}
alias GdkGLTransparentType GLTransparentType;

public enum GdkGLVisualType
{
	VISUAL_TYPE_DONT_CARE = 4294967295,
	TRUE_COLOR = 32770,
	DIRECT_COLOR = 32771,
}
alias GdkGLVisualType GLVisualType;
struct GdkGLConfigImpl;
struct GdkGLContextImpl;
struct GdkGLWindowImpl;

struct GdkGLConfig
{
	GObject parentInstance;
	GdkGLConfigImpl* impl;
}

struct GdkGLConfigClass
{
	GObjectClass parentClass;
}

struct GdkGLContextClass
{
	GObjectClass parentClass;
}

struct GdkGLDrawable;

struct GdkGLDrawableClass
{
	GTypeInterface baseIface;
	/** */
	extern(C) GdkGLContext* function(GdkGLDrawable* gldrawable, GdkGLContext* shareList, int direct, int renderType) createGlContext;
	/** */
	extern(C) int function(GdkGLDrawable* gldrawable) isDoubleBuffered;
	/** */
	extern(C) void function(GdkGLDrawable* gldrawable) swapBuffers;
	/** */
	extern(C) void function(GdkGLDrawable* gldrawable) waitGl;
	/** */
	extern(C) void function(GdkGLDrawable* gldrawable) waitGdk;
	/** */
	extern(C) GdkGLConfig* function(GdkGLDrawable* gldrawable) getGlConfig;
}

struct GdkGLWindow
{
	GObject parentInstance;
	GdkGLWindowImpl* impl;
	GdkWindow* window;
}

struct GdkGLWindowClass
{
	GObjectClass parentClass;
}

/** */
public alias extern(C) void function() GdkGLProc;
