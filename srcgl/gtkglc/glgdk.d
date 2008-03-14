/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

// Adapted from John Reimer's DUI loader modules


module gtkglc.glgdk;

version(Tango)
{
	private import tango.stdc.stdio;
	debug private import tango.io.Stdout;
}
else
	private import std.stdio;

private import gtkglc.glgdktypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker glgdk_Linker;

static this()
{
 glgdk_Linker = new Linker(libPath ~ importLibs[LIBRARY.GLGDK] );
 glgdk_Linker.link(glgdkLinks);

 debug
 {
 	version(Tango) Stdout("* Finished static this(): glgdk").newline;
 	else writefln("* Finished static this(): glgdk");
 }
}

static ~this()
{
 delete glgdk_Linker;

 debug
 {
 	version(Tango) Stdout("* Finished static ~this(): glgdk").newline;
 	else writefln("* Finished static ~this(): glgdk");
 }
}

extern(C) 
{	
	// glgdk.GLdInit
	
	void function(int* argc, char*** argv)gdk_gl_init;
	gboolean function(int* argc, char*** argv)gdk_gl_init_check;
	gboolean function(int* argc, char*** argv)gdk_gl_parse_args;
	
	// glgdk.GLQuery
	
	gboolean function()gdk_gl_query_extension;
	gboolean function(GdkDisplay* display)gdk_gl_query_extension_for_display;
	gboolean function(int* major, int* minor)gdk_gl_query_version;
	gboolean function(GdkDisplay* display, int* major, int* minor)gdk_gl_query_version_for_display;
	gboolean function(char* extension)gdk_gl_query_gl_extension;
	GdkGLProc function(char* procName)gdk_gl_get_proc_address;
	
	// glgdk.GLConfig
	
	GdkGLConfig* function(int* attribList)gdk_gl_config_new;
	GdkGLConfig* function(GdkScreen* screen, int* attribList)gdk_gl_config_new_for_screen;
	GdkGLConfig* function(GdkGLConfigMode mode)gdk_gl_config_new_by_mode;
	GdkGLConfig* function(GdkScreen* screen, GdkGLConfigMode mode)gdk_gl_config_new_by_mode_for_screen;
	GdkScreen* function(GdkGLConfig* glconfig)gdk_gl_config_get_screen;
	gboolean function(GdkGLConfig* glconfig, int attribute, int* value)gdk_gl_config_get_attrib;
	GdkColormap* function(GdkGLConfig* glconfig)gdk_gl_config_get_colormap;
	GdkVisual* function(GdkGLConfig* glconfig)gdk_gl_config_get_visual;
	gint function(GdkGLConfig* glconfig)gdk_gl_config_get_depth;
	gint function(GdkGLConfig* glconfig)gdk_gl_config_get_layer_plane;
	gint function(GdkGLConfig* glconfig)gdk_gl_config_get_n_aux_buffers;
	gint function(GdkGLConfig* glconfig)gdk_gl_config_get_n_sample_buffers;
	gboolean function(GdkGLConfig* glconfig)gdk_gl_config_is_rgba;
	gboolean function(GdkGLConfig* glconfig)gdk_gl_config_is_double_buffered;
	gboolean function(GdkGLConfig* glconfig)gdk_gl_config_is_stereo;
	gboolean function(GdkGLConfig* glconfig)gdk_gl_config_has_alpha;
	gboolean function(GdkGLConfig* glconfig)gdk_gl_config_has_depth_buffer;
	gboolean function(GdkGLConfig* glconfig)gdk_gl_config_has_stencil_buffer;
	gboolean function(GdkGLConfig* glconfig)gdk_gl_config_has_accum_buffer;
	
	// glgdk.GLContext
	
	GdkGLContext* function(GdkGLDrawable* gldrawable, GdkGLContext* shareList, gboolean direct, int renderType)gdk_gl_context_new;
	void function(GdkGLContext* glcontext)gdk_gl_context_destroy;
	gboolean function(GdkGLContext* glcontext, GdkGLContext* src, ulong mask)gdk_gl_context_copy;
	GdkGLDrawable* function(GdkGLContext* glcontext)gdk_gl_context_get_gl_drawable;
	GdkGLConfig* function(GdkGLContext* glcontext)gdk_gl_context_get_gl_config;
	GdkGLContext* function(GdkGLContext* glcontext)gdk_gl_context_get_share_list;
	gboolean function(GdkGLContext* glcontext)gdk_gl_context_is_direct;
	int function(GdkGLContext* glcontext)gdk_gl_context_get_render_type;
	GdkGLContext* function()gdk_gl_context_get_current;
	
	// glgdk.GLDrawable
	
	gboolean function(GdkGLDrawable* gldrawable, GdkGLContext* glcontext)gdk_gl_drawable_make_current;
	gboolean function(GdkGLDrawable* gldrawable)gdk_gl_drawable_is_double_buffered;
	void function(GdkGLDrawable* gldrawable)gdk_gl_drawable_swap_buffers;
	void function(GdkGLDrawable* gldrawable)gdk_gl_drawable_wait_gl;
	void function(GdkGLDrawable* gldrawable)gdk_gl_drawable_wait_gdk;
	gboolean function(GdkGLDrawable* gldrawable, GdkGLContext* glcontext)gdk_gl_drawable_gl_begin;
	void function(GdkGLDrawable* gldrawable)gdk_gl_drawable_gl_end;
	GdkGLConfig* function(GdkGLDrawable* gldrawable)gdk_gl_drawable_get_gl_config;
	void function(GdkGLDrawable* gldrawable, gint* width, gint* height)gdk_gl_drawable_get_size;
	GdkGLDrawable* function()gdk_gl_drawable_get_current;
	
	// glgdk.GLPixmap
	
	GdkGLPixmap* function(GdkGLConfig* glconfig, GdkPixmap* pixmap, int* attribList)gdk_gl_pixmap_new;
	void function(GdkGLPixmap* glpixmap)gdk_gl_pixmap_destroy;
	GdkPixmap* function(GdkGLPixmap* glpixmap)gdk_gl_pixmap_get_pixmap;
	GdkGLPixmap* function(GdkPixmap* pixmap, GdkGLConfig* glconfig, int* attribList)gdk_pixmap_set_gl_capability;
	void function(GdkPixmap* pixmap)gdk_pixmap_unset_gl_capability;
	gboolean function(GdkPixmap* pixmap)gdk_pixmap_is_gl_capable;
	GdkGLPixmap* function(GdkPixmap* pixmap)gdk_pixmap_get_gl_pixmap;
	
	// glgdk.GLWindow
	
	GdkGLWindow* function(GdkGLConfig* glconfig, GdkWindow* window, int* attribList)gdk_gl_window_new;
	void function(GdkGLWindow* glwindow)gdk_gl_window_destroy;
	GdkWindow* function(GdkGLWindow* glwindow)gdk_gl_window_get_window;
	GdkGLWindow* function(GdkWindow* window, GdkGLConfig* glconfig, int* attribList)gdk_window_set_gl_capability;
	void function(GdkWindow* window)gdk_window_unset_gl_capability;
	gboolean function(GdkWindow* window)gdk_window_is_gl_capable;
	GdkGLWindow* function(GdkWindow* window)gdk_window_get_gl_window;
	
	// glgdk.GLFont
	
	PangoFont* function(PangoFontDescription* fontDesc, int first, int count, int listBase)gdk_gl_font_use_pango_font;
	PangoFont* function(GdkDisplay* display, PangoFontDescription* fontDesc, int first, int count, int listBase)gdk_gl_font_use_pango_font_for_display;
	
	// glgdk.GLDraw
	
	void function(gboolean solid, double size)gdk_gl_draw_cube;
	void function(gboolean solid, double radius, int slices, int stacks)gdk_gl_draw_sphere;
	void function(gboolean solid, double base, double height, int slices, int stacks)gdk_gl_draw_cone;
	void function(gboolean solid, double innerRadius, double outerRadius, int nsides, int rings)gdk_gl_draw_torus;
	void function(gboolean solid)gdk_gl_draw_tetrahedron;
	void function(gboolean solid)gdk_gl_draw_octahedron;
	void function(gboolean solid)gdk_gl_draw_dodecahedron;
	void function(gboolean solid)gdk_gl_draw_icosahedron;
	void function(gboolean solid, double scale)gdk_gl_draw_teapot;
	
	// glgdk.
	
	
	// glgdk.
	


}

Symbol[] glgdkLinks = 
[

	{ "gdk_gl_init",  cast(void**)& gdk_gl_init},
	{ "gdk_gl_init_check",  cast(void**)& gdk_gl_init_check},
	{ "gdk_gl_parse_args",  cast(void**)& gdk_gl_parse_args},
	{ "gdk_gl_query_extension",  cast(void**)& gdk_gl_query_extension},
	{ "gdk_gl_query_extension_for_display",  cast(void**)& gdk_gl_query_extension_for_display},
	{ "gdk_gl_query_version",  cast(void**)& gdk_gl_query_version},
	{ "gdk_gl_query_version_for_display",  cast(void**)& gdk_gl_query_version_for_display},
	{ "gdk_gl_query_gl_extension",  cast(void**)& gdk_gl_query_gl_extension},
	{ "gdk_gl_get_proc_address",  cast(void**)& gdk_gl_get_proc_address},
	{ "gdk_gl_config_new",  cast(void**)& gdk_gl_config_new},
	{ "gdk_gl_config_new_for_screen",  cast(void**)& gdk_gl_config_new_for_screen},
	{ "gdk_gl_config_new_by_mode",  cast(void**)& gdk_gl_config_new_by_mode},
	{ "gdk_gl_config_new_by_mode_for_screen",  cast(void**)& gdk_gl_config_new_by_mode_for_screen},
	{ "gdk_gl_config_get_screen",  cast(void**)& gdk_gl_config_get_screen},
	{ "gdk_gl_config_get_attrib",  cast(void**)& gdk_gl_config_get_attrib},
	{ "gdk_gl_config_get_colormap",  cast(void**)& gdk_gl_config_get_colormap},
	{ "gdk_gl_config_get_visual",  cast(void**)& gdk_gl_config_get_visual},
	{ "gdk_gl_config_get_depth",  cast(void**)& gdk_gl_config_get_depth},
	{ "gdk_gl_config_get_layer_plane",  cast(void**)& gdk_gl_config_get_layer_plane},
	{ "gdk_gl_config_get_n_aux_buffers",  cast(void**)& gdk_gl_config_get_n_aux_buffers},
	{ "gdk_gl_config_get_n_sample_buffers",  cast(void**)& gdk_gl_config_get_n_sample_buffers},
	{ "gdk_gl_config_is_rgba",  cast(void**)& gdk_gl_config_is_rgba},
	{ "gdk_gl_config_is_double_buffered",  cast(void**)& gdk_gl_config_is_double_buffered},
	{ "gdk_gl_config_is_stereo",  cast(void**)& gdk_gl_config_is_stereo},
	{ "gdk_gl_config_has_alpha",  cast(void**)& gdk_gl_config_has_alpha},
	{ "gdk_gl_config_has_depth_buffer",  cast(void**)& gdk_gl_config_has_depth_buffer},
	{ "gdk_gl_config_has_stencil_buffer",  cast(void**)& gdk_gl_config_has_stencil_buffer},
	{ "gdk_gl_config_has_accum_buffer",  cast(void**)& gdk_gl_config_has_accum_buffer},
	{ "gdk_gl_context_new",  cast(void**)& gdk_gl_context_new},
	{ "gdk_gl_context_destroy",  cast(void**)& gdk_gl_context_destroy},
	{ "gdk_gl_context_copy",  cast(void**)& gdk_gl_context_copy},
	{ "gdk_gl_context_get_gl_drawable",  cast(void**)& gdk_gl_context_get_gl_drawable},
	{ "gdk_gl_context_get_gl_config",  cast(void**)& gdk_gl_context_get_gl_config},
	{ "gdk_gl_context_get_share_list",  cast(void**)& gdk_gl_context_get_share_list},
	{ "gdk_gl_context_is_direct",  cast(void**)& gdk_gl_context_is_direct},
	{ "gdk_gl_context_get_render_type",  cast(void**)& gdk_gl_context_get_render_type},
	{ "gdk_gl_context_get_current",  cast(void**)& gdk_gl_context_get_current},
	{ "gdk_gl_drawable_make_current",  cast(void**)& gdk_gl_drawable_make_current},
	{ "gdk_gl_drawable_is_double_buffered",  cast(void**)& gdk_gl_drawable_is_double_buffered},
	{ "gdk_gl_drawable_swap_buffers",  cast(void**)& gdk_gl_drawable_swap_buffers},
	{ "gdk_gl_drawable_wait_gl",  cast(void**)& gdk_gl_drawable_wait_gl},
	{ "gdk_gl_drawable_wait_gdk",  cast(void**)& gdk_gl_drawable_wait_gdk},
	{ "gdk_gl_drawable_gl_begin",  cast(void**)& gdk_gl_drawable_gl_begin},
	{ "gdk_gl_drawable_gl_end",  cast(void**)& gdk_gl_drawable_gl_end},
	{ "gdk_gl_drawable_get_gl_config",  cast(void**)& gdk_gl_drawable_get_gl_config},
	{ "gdk_gl_drawable_get_size",  cast(void**)& gdk_gl_drawable_get_size},
	{ "gdk_gl_drawable_get_current",  cast(void**)& gdk_gl_drawable_get_current},
	{ "gdk_gl_pixmap_new",  cast(void**)& gdk_gl_pixmap_new},
	{ "gdk_gl_pixmap_destroy",  cast(void**)& gdk_gl_pixmap_destroy},
	{ "gdk_gl_pixmap_get_pixmap",  cast(void**)& gdk_gl_pixmap_get_pixmap},
	{ "gdk_pixmap_set_gl_capability",  cast(void**)& gdk_pixmap_set_gl_capability},
	{ "gdk_pixmap_unset_gl_capability",  cast(void**)& gdk_pixmap_unset_gl_capability},
	{ "gdk_pixmap_is_gl_capable",  cast(void**)& gdk_pixmap_is_gl_capable},
	{ "gdk_pixmap_get_gl_pixmap",  cast(void**)& gdk_pixmap_get_gl_pixmap},
	{ "gdk_gl_window_new",  cast(void**)& gdk_gl_window_new},
	{ "gdk_gl_window_destroy",  cast(void**)& gdk_gl_window_destroy},
	{ "gdk_gl_window_get_window",  cast(void**)& gdk_gl_window_get_window},
	{ "gdk_window_set_gl_capability",  cast(void**)& gdk_window_set_gl_capability},
	{ "gdk_window_unset_gl_capability",  cast(void**)& gdk_window_unset_gl_capability},
	{ "gdk_window_is_gl_capable",  cast(void**)& gdk_window_is_gl_capable},
	{ "gdk_window_get_gl_window",  cast(void**)& gdk_window_get_gl_window},
	{ "gdk_gl_font_use_pango_font",  cast(void**)& gdk_gl_font_use_pango_font},
	{ "gdk_gl_font_use_pango_font_for_display",  cast(void**)& gdk_gl_font_use_pango_font_for_display},
	{ "gdk_gl_draw_cube",  cast(void**)& gdk_gl_draw_cube},
	{ "gdk_gl_draw_sphere",  cast(void**)& gdk_gl_draw_sphere},
	{ "gdk_gl_draw_cone",  cast(void**)& gdk_gl_draw_cone},
	{ "gdk_gl_draw_torus",  cast(void**)& gdk_gl_draw_torus},
	{ "gdk_gl_draw_tetrahedron",  cast(void**)& gdk_gl_draw_tetrahedron},
	{ "gdk_gl_draw_octahedron",  cast(void**)& gdk_gl_draw_octahedron},
	{ "gdk_gl_draw_dodecahedron",  cast(void**)& gdk_gl_draw_dodecahedron},
	{ "gdk_gl_draw_icosahedron",  cast(void**)& gdk_gl_draw_icosahedron},
	{ "gdk_gl_draw_teapot",  cast(void**)& gdk_gl_draw_teapot},

];