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


module gtkglc.glgdk;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkglc.glgdktypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// glgdk.GLdInit

	Linker.link(gdk_gl_init, "gdk_gl_init", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_init_check, "gdk_gl_init_check", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_parse_args, "gdk_gl_parse_args", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLQuery

	Linker.link(gdk_gl_query_extension, "gdk_gl_query_extension", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_query_extension_for_display, "gdk_gl_query_extension_for_display", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_query_version, "gdk_gl_query_version", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_query_version_for_display, "gdk_gl_query_version_for_display", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_query_gl_extension, "gdk_gl_query_gl_extension", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_get_proc_address, "gdk_gl_get_proc_address", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLConfig

	Linker.link(gdk_gl_config_new, "gdk_gl_config_new", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_new_for_screen, "gdk_gl_config_new_for_screen", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_new_by_mode, "gdk_gl_config_new_by_mode", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_new_by_mode_for_screen, "gdk_gl_config_new_by_mode_for_screen", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_screen, "gdk_gl_config_get_screen", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_attrib, "gdk_gl_config_get_attrib", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_colormap, "gdk_gl_config_get_colormap", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_visual, "gdk_gl_config_get_visual", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_depth, "gdk_gl_config_get_depth", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_layer_plane, "gdk_gl_config_get_layer_plane", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_n_aux_buffers, "gdk_gl_config_get_n_aux_buffers", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_n_sample_buffers, "gdk_gl_config_get_n_sample_buffers", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_is_rgba, "gdk_gl_config_is_rgba", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_is_double_buffered, "gdk_gl_config_is_double_buffered", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_is_stereo, "gdk_gl_config_is_stereo", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_has_alpha, "gdk_gl_config_has_alpha", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_has_depth_buffer, "gdk_gl_config_has_depth_buffer", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_has_stencil_buffer, "gdk_gl_config_has_stencil_buffer", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_has_accum_buffer, "gdk_gl_config_has_accum_buffer", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLContext

	Linker.link(gdk_gl_context_new, "gdk_gl_context_new", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_destroy, "gdk_gl_context_destroy", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_copy, "gdk_gl_context_copy", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_get_gl_drawable, "gdk_gl_context_get_gl_drawable", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_get_gl_config, "gdk_gl_context_get_gl_config", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_get_share_list, "gdk_gl_context_get_share_list", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_is_direct, "gdk_gl_context_is_direct", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_get_render_type, "gdk_gl_context_get_render_type", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_get_current, "gdk_gl_context_get_current", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLDrawable

	Linker.link(gdk_gl_drawable_make_current, "gdk_gl_drawable_make_current", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_is_double_buffered, "gdk_gl_drawable_is_double_buffered", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_swap_buffers, "gdk_gl_drawable_swap_buffers", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_wait_gl, "gdk_gl_drawable_wait_gl", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_wait_gdk, "gdk_gl_drawable_wait_gdk", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_gl_begin, "gdk_gl_drawable_gl_begin", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_gl_end, "gdk_gl_drawable_gl_end", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_get_gl_config, "gdk_gl_drawable_get_gl_config", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_get_size, "gdk_gl_drawable_get_size", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_get_current, "gdk_gl_drawable_get_current", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLPixmap

	Linker.link(gdk_gl_pixmap_new, "gdk_gl_pixmap_new", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_pixmap_destroy, "gdk_gl_pixmap_destroy", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_pixmap_get_pixmap, "gdk_gl_pixmap_get_pixmap", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_set_gl_capability, "gdk_pixmap_set_gl_capability", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_unset_gl_capability, "gdk_pixmap_unset_gl_capability", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_is_gl_capable, "gdk_pixmap_is_gl_capable", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_get_gl_pixmap, "gdk_pixmap_get_gl_pixmap", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLWindow

	Linker.link(gdk_gl_window_new, "gdk_gl_window_new", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_window_destroy, "gdk_gl_window_destroy", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_window_get_window, "gdk_gl_window_get_window", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_gl_capability, "gdk_window_set_gl_capability", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unset_gl_capability, "gdk_window_unset_gl_capability", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_gl_capable, "gdk_window_is_gl_capable", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_gl_window, "gdk_window_get_gl_window", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLFont

	Linker.link(gdk_gl_font_use_pango_font, "gdk_gl_font_use_pango_font", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_font_use_pango_font_for_display, "gdk_gl_font_use_pango_font_for_display", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLDraw

	Linker.link(gdk_gl_draw_cube, "gdk_gl_draw_cube", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_sphere, "gdk_gl_draw_sphere", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_cone, "gdk_gl_draw_cone", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_torus, "gdk_gl_draw_torus", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_tetrahedron, "gdk_gl_draw_tetrahedron", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_octahedron, "gdk_gl_draw_octahedron", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_dodecahedron, "gdk_gl_draw_dodecahedron", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_icosahedron, "gdk_gl_draw_icosahedron", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_teapot, "gdk_gl_draw_teapot", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.


	// glgdk.

}

extern(C)
{
	
	// glgdk.GLdInit
	
	typedef void function(int* argc, char*** argv) c_gdk_gl_init;
	typedef gboolean function(int* argc, char*** argv) c_gdk_gl_init_check;
	typedef gboolean function(int* argc, char*** argv) c_gdk_gl_parse_args;
	
	// glgdk.GLQuery
	
	typedef gboolean function() c_gdk_gl_query_extension;
	typedef gboolean function(GdkDisplay* display) c_gdk_gl_query_extension_for_display;
	typedef gboolean function(int* major, int* minor) c_gdk_gl_query_version;
	typedef gboolean function(GdkDisplay* display, int* major, int* minor) c_gdk_gl_query_version_for_display;
	typedef gboolean function(char* extension) c_gdk_gl_query_gl_extension;
	typedef GdkGLProc function(char* procName) c_gdk_gl_get_proc_address;
	
	// glgdk.GLConfig
	
	typedef GdkGLConfig* function(int* attribList) c_gdk_gl_config_new;
	typedef GdkGLConfig* function(GdkScreen* screen, int* attribList) c_gdk_gl_config_new_for_screen;
	typedef GdkGLConfig* function(GdkGLConfigMode mode) c_gdk_gl_config_new_by_mode;
	typedef GdkGLConfig* function(GdkScreen* screen, GdkGLConfigMode mode) c_gdk_gl_config_new_by_mode_for_screen;
	typedef GdkScreen* function(GdkGLConfig* glconfig) c_gdk_gl_config_get_screen;
	typedef gboolean function(GdkGLConfig* glconfig, int attribute, int* value) c_gdk_gl_config_get_attrib;
	typedef GdkColormap* function(GdkGLConfig* glconfig) c_gdk_gl_config_get_colormap;
	typedef GdkVisual* function(GdkGLConfig* glconfig) c_gdk_gl_config_get_visual;
	typedef gint function(GdkGLConfig* glconfig) c_gdk_gl_config_get_depth;
	typedef gint function(GdkGLConfig* glconfig) c_gdk_gl_config_get_layer_plane;
	typedef gint function(GdkGLConfig* glconfig) c_gdk_gl_config_get_n_aux_buffers;
	typedef gint function(GdkGLConfig* glconfig) c_gdk_gl_config_get_n_sample_buffers;
	typedef gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_is_rgba;
	typedef gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_is_double_buffered;
	typedef gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_is_stereo;
	typedef gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_has_alpha;
	typedef gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_has_depth_buffer;
	typedef gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_has_stencil_buffer;
	typedef gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_has_accum_buffer;
	
	// glgdk.GLContext
	
	typedef GdkGLContext* function(GdkGLDrawable* gldrawable, GdkGLContext* shareList, gboolean direct, int renderType) c_gdk_gl_context_new;
	typedef void function(GdkGLContext* glcontext) c_gdk_gl_context_destroy;
	typedef gboolean function(GdkGLContext* glcontext, GdkGLContext* src, ulong mask) c_gdk_gl_context_copy;
	typedef GdkGLDrawable* function(GdkGLContext* glcontext) c_gdk_gl_context_get_gl_drawable;
	typedef GdkGLConfig* function(GdkGLContext* glcontext) c_gdk_gl_context_get_gl_config;
	typedef GdkGLContext* function(GdkGLContext* glcontext) c_gdk_gl_context_get_share_list;
	typedef gboolean function(GdkGLContext* glcontext) c_gdk_gl_context_is_direct;
	typedef int function(GdkGLContext* glcontext) c_gdk_gl_context_get_render_type;
	typedef GdkGLContext* function() c_gdk_gl_context_get_current;
	
	// glgdk.GLDrawable
	
	typedef gboolean function(GdkGLDrawable* gldrawable, GdkGLContext* glcontext) c_gdk_gl_drawable_make_current;
	typedef gboolean function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_is_double_buffered;
	typedef void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_swap_buffers;
	typedef void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_wait_gl;
	typedef void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_wait_gdk;
	typedef gboolean function(GdkGLDrawable* gldrawable, GdkGLContext* glcontext) c_gdk_gl_drawable_gl_begin;
	typedef void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_gl_end;
	typedef GdkGLConfig* function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_get_gl_config;
	typedef void function(GdkGLDrawable* gldrawable, gint* width, gint* height) c_gdk_gl_drawable_get_size;
	typedef GdkGLDrawable* function() c_gdk_gl_drawable_get_current;
	
	// glgdk.GLPixmap
	
	typedef GdkGLPixmap* function(GdkGLConfig* glconfig, GdkPixmap* pixmap, int* attribList) c_gdk_gl_pixmap_new;
	typedef void function(GdkGLPixmap* glpixmap) c_gdk_gl_pixmap_destroy;
	typedef GdkPixmap* function(GdkGLPixmap* glpixmap) c_gdk_gl_pixmap_get_pixmap;
	typedef GdkGLPixmap* function(GdkPixmap* pixmap, GdkGLConfig* glconfig, int* attribList) c_gdk_pixmap_set_gl_capability;
	typedef void function(GdkPixmap* pixmap) c_gdk_pixmap_unset_gl_capability;
	typedef gboolean function(GdkPixmap* pixmap) c_gdk_pixmap_is_gl_capable;
	typedef GdkGLPixmap* function(GdkPixmap* pixmap) c_gdk_pixmap_get_gl_pixmap;
	
	// glgdk.GLWindow
	
	typedef GdkGLWindow* function(GdkGLConfig* glconfig, GdkWindow* window, int* attribList) c_gdk_gl_window_new;
	typedef void function(GdkGLWindow* glwindow) c_gdk_gl_window_destroy;
	typedef GdkWindow* function(GdkGLWindow* glwindow) c_gdk_gl_window_get_window;
	typedef GdkGLWindow* function(GdkWindow* window, GdkGLConfig* glconfig, int* attribList) c_gdk_window_set_gl_capability;
	typedef void function(GdkWindow* window) c_gdk_window_unset_gl_capability;
	typedef gboolean function(GdkWindow* window) c_gdk_window_is_gl_capable;
	typedef GdkGLWindow* function(GdkWindow* window) c_gdk_window_get_gl_window;
	
	// glgdk.GLFont
	
	typedef PangoFont* function(PangoFontDescription* fontDesc, int first, int count, int listBase) c_gdk_gl_font_use_pango_font;
	typedef PangoFont* function(GdkDisplay* display, PangoFontDescription* fontDesc, int first, int count, int listBase) c_gdk_gl_font_use_pango_font_for_display;
	
	// glgdk.GLDraw
	
	typedef void function(gboolean solid, double size) c_gdk_gl_draw_cube;
	typedef void function(gboolean solid, double radius, int slices, int stacks) c_gdk_gl_draw_sphere;
	typedef void function(gboolean solid, double base, double height, int slices, int stacks) c_gdk_gl_draw_cone;
	typedef void function(gboolean solid, double innerRadius, double outerRadius, int nsides, int rings) c_gdk_gl_draw_torus;
	typedef void function(gboolean solid) c_gdk_gl_draw_tetrahedron;
	typedef void function(gboolean solid) c_gdk_gl_draw_octahedron;
	typedef void function(gboolean solid) c_gdk_gl_draw_dodecahedron;
	typedef void function(gboolean solid) c_gdk_gl_draw_icosahedron;
	typedef void function(gboolean solid, double scale) c_gdk_gl_draw_teapot;
	
	// glgdk.
	
	
	// glgdk.
	
}

// glgdk.GLdInit

c_gdk_gl_init  gdk_gl_init;
c_gdk_gl_init_check  gdk_gl_init_check;
c_gdk_gl_parse_args  gdk_gl_parse_args;

// glgdk.GLQuery

c_gdk_gl_query_extension  gdk_gl_query_extension;
c_gdk_gl_query_extension_for_display  gdk_gl_query_extension_for_display;
c_gdk_gl_query_version  gdk_gl_query_version;
c_gdk_gl_query_version_for_display  gdk_gl_query_version_for_display;
c_gdk_gl_query_gl_extension  gdk_gl_query_gl_extension;
c_gdk_gl_get_proc_address  gdk_gl_get_proc_address;

// glgdk.GLConfig

c_gdk_gl_config_new  gdk_gl_config_new;
c_gdk_gl_config_new_for_screen  gdk_gl_config_new_for_screen;
c_gdk_gl_config_new_by_mode  gdk_gl_config_new_by_mode;
c_gdk_gl_config_new_by_mode_for_screen  gdk_gl_config_new_by_mode_for_screen;
c_gdk_gl_config_get_screen  gdk_gl_config_get_screen;
c_gdk_gl_config_get_attrib  gdk_gl_config_get_attrib;
c_gdk_gl_config_get_colormap  gdk_gl_config_get_colormap;
c_gdk_gl_config_get_visual  gdk_gl_config_get_visual;
c_gdk_gl_config_get_depth  gdk_gl_config_get_depth;
c_gdk_gl_config_get_layer_plane  gdk_gl_config_get_layer_plane;
c_gdk_gl_config_get_n_aux_buffers  gdk_gl_config_get_n_aux_buffers;
c_gdk_gl_config_get_n_sample_buffers  gdk_gl_config_get_n_sample_buffers;
c_gdk_gl_config_is_rgba  gdk_gl_config_is_rgba;
c_gdk_gl_config_is_double_buffered  gdk_gl_config_is_double_buffered;
c_gdk_gl_config_is_stereo  gdk_gl_config_is_stereo;
c_gdk_gl_config_has_alpha  gdk_gl_config_has_alpha;
c_gdk_gl_config_has_depth_buffer  gdk_gl_config_has_depth_buffer;
c_gdk_gl_config_has_stencil_buffer  gdk_gl_config_has_stencil_buffer;
c_gdk_gl_config_has_accum_buffer  gdk_gl_config_has_accum_buffer;

// glgdk.GLContext

c_gdk_gl_context_new  gdk_gl_context_new;
c_gdk_gl_context_destroy  gdk_gl_context_destroy;
c_gdk_gl_context_copy  gdk_gl_context_copy;
c_gdk_gl_context_get_gl_drawable  gdk_gl_context_get_gl_drawable;
c_gdk_gl_context_get_gl_config  gdk_gl_context_get_gl_config;
c_gdk_gl_context_get_share_list  gdk_gl_context_get_share_list;
c_gdk_gl_context_is_direct  gdk_gl_context_is_direct;
c_gdk_gl_context_get_render_type  gdk_gl_context_get_render_type;
c_gdk_gl_context_get_current  gdk_gl_context_get_current;

// glgdk.GLDrawable

c_gdk_gl_drawable_make_current  gdk_gl_drawable_make_current;
c_gdk_gl_drawable_is_double_buffered  gdk_gl_drawable_is_double_buffered;
c_gdk_gl_drawable_swap_buffers  gdk_gl_drawable_swap_buffers;
c_gdk_gl_drawable_wait_gl  gdk_gl_drawable_wait_gl;
c_gdk_gl_drawable_wait_gdk  gdk_gl_drawable_wait_gdk;
c_gdk_gl_drawable_gl_begin  gdk_gl_drawable_gl_begin;
c_gdk_gl_drawable_gl_end  gdk_gl_drawable_gl_end;
c_gdk_gl_drawable_get_gl_config  gdk_gl_drawable_get_gl_config;
c_gdk_gl_drawable_get_size  gdk_gl_drawable_get_size;
c_gdk_gl_drawable_get_current  gdk_gl_drawable_get_current;

// glgdk.GLPixmap

c_gdk_gl_pixmap_new  gdk_gl_pixmap_new;
c_gdk_gl_pixmap_destroy  gdk_gl_pixmap_destroy;
c_gdk_gl_pixmap_get_pixmap  gdk_gl_pixmap_get_pixmap;
c_gdk_pixmap_set_gl_capability  gdk_pixmap_set_gl_capability;
c_gdk_pixmap_unset_gl_capability  gdk_pixmap_unset_gl_capability;
c_gdk_pixmap_is_gl_capable  gdk_pixmap_is_gl_capable;
c_gdk_pixmap_get_gl_pixmap  gdk_pixmap_get_gl_pixmap;

// glgdk.GLWindow

c_gdk_gl_window_new  gdk_gl_window_new;
c_gdk_gl_window_destroy  gdk_gl_window_destroy;
c_gdk_gl_window_get_window  gdk_gl_window_get_window;
c_gdk_window_set_gl_capability  gdk_window_set_gl_capability;
c_gdk_window_unset_gl_capability  gdk_window_unset_gl_capability;
c_gdk_window_is_gl_capable  gdk_window_is_gl_capable;
c_gdk_window_get_gl_window  gdk_window_get_gl_window;

// glgdk.GLFont

c_gdk_gl_font_use_pango_font  gdk_gl_font_use_pango_font;
c_gdk_gl_font_use_pango_font_for_display  gdk_gl_font_use_pango_font_for_display;

// glgdk.GLDraw

c_gdk_gl_draw_cube  gdk_gl_draw_cube;
c_gdk_gl_draw_sphere  gdk_gl_draw_sphere;
c_gdk_gl_draw_cone  gdk_gl_draw_cone;
c_gdk_gl_draw_torus  gdk_gl_draw_torus;
c_gdk_gl_draw_tetrahedron  gdk_gl_draw_tetrahedron;
c_gdk_gl_draw_octahedron  gdk_gl_draw_octahedron;
c_gdk_gl_draw_dodecahedron  gdk_gl_draw_dodecahedron;
c_gdk_gl_draw_icosahedron  gdk_gl_draw_icosahedron;
c_gdk_gl_draw_teapot  gdk_gl_draw_teapot;

// glgdk.


// glgdk.

