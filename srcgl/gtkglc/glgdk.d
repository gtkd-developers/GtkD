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


module gtkglc.glgdk;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkglc.glgdktypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// glgdk.GLdInit

	Linker.link(gdk_gl_init, \"gdk_gl_init\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_init_check, \"gdk_gl_init_check\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_parse_args, \"gdk_gl_parse_args\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLQuery

	Linker.link(gdk_gl_query_extension, \"gdk_gl_query_extension\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_query_extension_for_display, \"gdk_gl_query_extension_for_display\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_query_version, \"gdk_gl_query_version\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_query_version_for_display, \"gdk_gl_query_version_for_display\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_query_gl_extension, \"gdk_gl_query_gl_extension\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_get_proc_address, \"gdk_gl_get_proc_address\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLConfig

	Linker.link(gdk_gl_config_new, \"gdk_gl_config_new\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_new_for_screen, \"gdk_gl_config_new_for_screen\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_new_by_mode, \"gdk_gl_config_new_by_mode\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_new_by_mode_for_screen, \"gdk_gl_config_new_by_mode_for_screen\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_screen, \"gdk_gl_config_get_screen\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_attrib, \"gdk_gl_config_get_attrib\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_colormap, \"gdk_gl_config_get_colormap\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_visual, \"gdk_gl_config_get_visual\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_depth, \"gdk_gl_config_get_depth\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_layer_plane, \"gdk_gl_config_get_layer_plane\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_n_aux_buffers, \"gdk_gl_config_get_n_aux_buffers\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_get_n_sample_buffers, \"gdk_gl_config_get_n_sample_buffers\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_is_rgba, \"gdk_gl_config_is_rgba\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_is_double_buffered, \"gdk_gl_config_is_double_buffered\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_is_stereo, \"gdk_gl_config_is_stereo\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_has_alpha, \"gdk_gl_config_has_alpha\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_has_depth_buffer, \"gdk_gl_config_has_depth_buffer\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_has_stencil_buffer, \"gdk_gl_config_has_stencil_buffer\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_config_has_accum_buffer, \"gdk_gl_config_has_accum_buffer\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLContext

	Linker.link(gdk_gl_context_new, \"gdk_gl_context_new\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_destroy, \"gdk_gl_context_destroy\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_copy, \"gdk_gl_context_copy\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_get_gl_drawable, \"gdk_gl_context_get_gl_drawable\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_get_gl_config, \"gdk_gl_context_get_gl_config\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_get_share_list, \"gdk_gl_context_get_share_list\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_is_direct, \"gdk_gl_context_is_direct\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_get_render_type, \"gdk_gl_context_get_render_type\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_context_get_current, \"gdk_gl_context_get_current\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLDrawable

	Linker.link(gdk_gl_drawable_make_current, \"gdk_gl_drawable_make_current\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_is_double_buffered, \"gdk_gl_drawable_is_double_buffered\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_swap_buffers, \"gdk_gl_drawable_swap_buffers\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_wait_gl, \"gdk_gl_drawable_wait_gl\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_wait_gdk, \"gdk_gl_drawable_wait_gdk\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_gl_begin, \"gdk_gl_drawable_gl_begin\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_gl_end, \"gdk_gl_drawable_gl_end\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_get_gl_config, \"gdk_gl_drawable_get_gl_config\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_get_size, \"gdk_gl_drawable_get_size\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_drawable_get_current, \"gdk_gl_drawable_get_current\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLPixmap

	Linker.link(gdk_gl_pixmap_new, \"gdk_gl_pixmap_new\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_pixmap_destroy, \"gdk_gl_pixmap_destroy\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_pixmap_get_pixmap, \"gdk_gl_pixmap_get_pixmap\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_set_gl_capability, \"gdk_pixmap_set_gl_capability\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_unset_gl_capability, \"gdk_pixmap_unset_gl_capability\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_is_gl_capable, \"gdk_pixmap_is_gl_capable\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_get_gl_pixmap, \"gdk_pixmap_get_gl_pixmap\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLWindow

	Linker.link(gdk_gl_window_new, \"gdk_gl_window_new\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_window_destroy, \"gdk_gl_window_destroy\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_window_get_window, \"gdk_gl_window_get_window\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_gl_capability, \"gdk_window_set_gl_capability\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unset_gl_capability, \"gdk_window_unset_gl_capability\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_gl_capable, \"gdk_window_is_gl_capable\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_gl_window, \"gdk_window_get_gl_window\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLFont

	Linker.link(gdk_gl_font_use_pango_font, \"gdk_gl_font_use_pango_font\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_font_use_pango_font_for_display, \"gdk_gl_font_use_pango_font_for_display\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.GLDraw

	Linker.link(gdk_gl_draw_cube, \"gdk_gl_draw_cube\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_sphere, \"gdk_gl_draw_sphere\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_cone, \"gdk_gl_draw_cone\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_torus, \"gdk_gl_draw_torus\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_tetrahedron, \"gdk_gl_draw_tetrahedron\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_octahedron, \"gdk_gl_draw_octahedron\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_dodecahedron, \"gdk_gl_draw_dodecahedron\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_icosahedron, \"gdk_gl_draw_icosahedron\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_draw_teapot, \"gdk_gl_draw_teapot\", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);

	// glgdk.


	// glgdk.

}");

mixin( gshared ~"extern(C)
{
	// glgdk.GLdInit

	void function(int* argc, char*** argv) c_gdk_gl_init;
	gboolean function(int* argc, char*** argv) c_gdk_gl_init_check;
	gboolean function(int* argc, char*** argv) c_gdk_gl_parse_args;

	// glgdk.GLQuery

	gboolean function() c_gdk_gl_query_extension;
	gboolean function(GdkDisplay* display) c_gdk_gl_query_extension_for_display;
	gboolean function(int* major, int* minor) c_gdk_gl_query_version;
	gboolean function(GdkDisplay* display, int* major, int* minor) c_gdk_gl_query_version_for_display;
	gboolean function(char* extension) c_gdk_gl_query_gl_extension;
	GdkGLProc function(char* procName) c_gdk_gl_get_proc_address;

	// glgdk.GLConfig

	GdkGLConfig* function(int* attribList) c_gdk_gl_config_new;
	GdkGLConfig* function(GdkScreen* screen, int* attribList) c_gdk_gl_config_new_for_screen;
	GdkGLConfig* function(GdkGLConfigMode mode) c_gdk_gl_config_new_by_mode;
	GdkGLConfig* function(GdkScreen* screen, GdkGLConfigMode mode) c_gdk_gl_config_new_by_mode_for_screen;
	GdkScreen* function(GdkGLConfig* glconfig) c_gdk_gl_config_get_screen;
	gboolean function(GdkGLConfig* glconfig, int attribute, int* value) c_gdk_gl_config_get_attrib;
	GdkColormap* function(GdkGLConfig* glconfig) c_gdk_gl_config_get_colormap;
	GdkVisual* function(GdkGLConfig* glconfig) c_gdk_gl_config_get_visual;
	gint function(GdkGLConfig* glconfig) c_gdk_gl_config_get_depth;
	gint function(GdkGLConfig* glconfig) c_gdk_gl_config_get_layer_plane;
	gint function(GdkGLConfig* glconfig) c_gdk_gl_config_get_n_aux_buffers;
	gint function(GdkGLConfig* glconfig) c_gdk_gl_config_get_n_sample_buffers;
	gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_is_rgba;
	gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_is_double_buffered;
	gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_is_stereo;
	gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_has_alpha;
	gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_has_depth_buffer;
	gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_has_stencil_buffer;
	gboolean function(GdkGLConfig* glconfig) c_gdk_gl_config_has_accum_buffer;

	// glgdk.GLContext

	GdkGLContext* function(GdkGLDrawable* gldrawable, GdkGLContext* shareList, gboolean direct, int renderType) c_gdk_gl_context_new;
	void function(GdkGLContext* glcontext) c_gdk_gl_context_destroy;
	gboolean function(GdkGLContext* glcontext, GdkGLContext* src, ulong mask) c_gdk_gl_context_copy;
	GdkGLDrawable* function(GdkGLContext* glcontext) c_gdk_gl_context_get_gl_drawable;
	GdkGLConfig* function(GdkGLContext* glcontext) c_gdk_gl_context_get_gl_config;
	GdkGLContext* function(GdkGLContext* glcontext) c_gdk_gl_context_get_share_list;
	gboolean function(GdkGLContext* glcontext) c_gdk_gl_context_is_direct;
	int function(GdkGLContext* glcontext) c_gdk_gl_context_get_render_type;
	GdkGLContext* function() c_gdk_gl_context_get_current;

	// glgdk.GLDrawable

	gboolean function(GdkGLDrawable* gldrawable, GdkGLContext* glcontext) c_gdk_gl_drawable_make_current;
	gboolean function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_is_double_buffered;
	void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_swap_buffers;
	void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_wait_gl;
	void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_wait_gdk;
	gboolean function(GdkGLDrawable* gldrawable, GdkGLContext* glcontext) c_gdk_gl_drawable_gl_begin;
	void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_gl_end;
	GdkGLConfig* function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_get_gl_config;
	void function(GdkGLDrawable* gldrawable, gint* width, gint* height) c_gdk_gl_drawable_get_size;
	GdkGLDrawable* function() c_gdk_gl_drawable_get_current;

	// glgdk.GLPixmap

	GdkGLPixmap* function(GdkGLConfig* glconfig, GdkPixmap* pixmap, int* attribList) c_gdk_gl_pixmap_new;
	void function(GdkGLPixmap* glpixmap) c_gdk_gl_pixmap_destroy;
	GdkPixmap* function(GdkGLPixmap* glpixmap) c_gdk_gl_pixmap_get_pixmap;
	GdkGLPixmap* function(GdkPixmap* pixmap, GdkGLConfig* glconfig, int* attribList) c_gdk_pixmap_set_gl_capability;
	void function(GdkPixmap* pixmap) c_gdk_pixmap_unset_gl_capability;
	gboolean function(GdkPixmap* pixmap) c_gdk_pixmap_is_gl_capable;
	GdkGLPixmap* function(GdkPixmap* pixmap) c_gdk_pixmap_get_gl_pixmap;

	// glgdk.GLWindow

	GdkGLWindow* function(GdkGLConfig* glconfig, GdkWindow* window, int* attribList) c_gdk_gl_window_new;
	void function(GdkGLWindow* glwindow) c_gdk_gl_window_destroy;
	GdkWindow* function(GdkGLWindow* glwindow) c_gdk_gl_window_get_window;
	GdkGLWindow* function(GdkWindow* window, GdkGLConfig* glconfig, int* attribList) c_gdk_window_set_gl_capability;
	void function(GdkWindow* window) c_gdk_window_unset_gl_capability;
	gboolean function(GdkWindow* window) c_gdk_window_is_gl_capable;
	GdkGLWindow* function(GdkWindow* window) c_gdk_window_get_gl_window;

	// glgdk.GLFont

	PangoFont* function(PangoFontDescription* fontDesc, int first, int count, int listBase) c_gdk_gl_font_use_pango_font;
	PangoFont* function(GdkDisplay* display, PangoFontDescription* fontDesc, int first, int count, int listBase) c_gdk_gl_font_use_pango_font_for_display;

	// glgdk.GLDraw

	void function(gboolean solid, double size) c_gdk_gl_draw_cube;
	void function(gboolean solid, double radius, int slices, int stacks) c_gdk_gl_draw_sphere;
	void function(gboolean solid, double base, double height, int slices, int stacks) c_gdk_gl_draw_cone;
	void function(gboolean solid, double innerRadius, double outerRadius, int nsides, int rings) c_gdk_gl_draw_torus;
	void function(gboolean solid) c_gdk_gl_draw_tetrahedron;
	void function(gboolean solid) c_gdk_gl_draw_octahedron;
	void function(gboolean solid) c_gdk_gl_draw_dodecahedron;
	void function(gboolean solid) c_gdk_gl_draw_icosahedron;
	void function(gboolean solid, double scale) c_gdk_gl_draw_teapot;

	// glgdk.


	// glgdk.

}");

// glgdk.GLdInit

alias c_gdk_gl_init  gdk_gl_init;
alias c_gdk_gl_init_check  gdk_gl_init_check;
alias c_gdk_gl_parse_args  gdk_gl_parse_args;

// glgdk.GLQuery

alias c_gdk_gl_query_extension  gdk_gl_query_extension;
alias c_gdk_gl_query_extension_for_display  gdk_gl_query_extension_for_display;
alias c_gdk_gl_query_version  gdk_gl_query_version;
alias c_gdk_gl_query_version_for_display  gdk_gl_query_version_for_display;
alias c_gdk_gl_query_gl_extension  gdk_gl_query_gl_extension;
alias c_gdk_gl_get_proc_address  gdk_gl_get_proc_address;

// glgdk.GLConfig

alias c_gdk_gl_config_new  gdk_gl_config_new;
alias c_gdk_gl_config_new_for_screen  gdk_gl_config_new_for_screen;
alias c_gdk_gl_config_new_by_mode  gdk_gl_config_new_by_mode;
alias c_gdk_gl_config_new_by_mode_for_screen  gdk_gl_config_new_by_mode_for_screen;
alias c_gdk_gl_config_get_screen  gdk_gl_config_get_screen;
alias c_gdk_gl_config_get_attrib  gdk_gl_config_get_attrib;
alias c_gdk_gl_config_get_colormap  gdk_gl_config_get_colormap;
alias c_gdk_gl_config_get_visual  gdk_gl_config_get_visual;
alias c_gdk_gl_config_get_depth  gdk_gl_config_get_depth;
alias c_gdk_gl_config_get_layer_plane  gdk_gl_config_get_layer_plane;
alias c_gdk_gl_config_get_n_aux_buffers  gdk_gl_config_get_n_aux_buffers;
alias c_gdk_gl_config_get_n_sample_buffers  gdk_gl_config_get_n_sample_buffers;
alias c_gdk_gl_config_is_rgba  gdk_gl_config_is_rgba;
alias c_gdk_gl_config_is_double_buffered  gdk_gl_config_is_double_buffered;
alias c_gdk_gl_config_is_stereo  gdk_gl_config_is_stereo;
alias c_gdk_gl_config_has_alpha  gdk_gl_config_has_alpha;
alias c_gdk_gl_config_has_depth_buffer  gdk_gl_config_has_depth_buffer;
alias c_gdk_gl_config_has_stencil_buffer  gdk_gl_config_has_stencil_buffer;
alias c_gdk_gl_config_has_accum_buffer  gdk_gl_config_has_accum_buffer;

// glgdk.GLContext

alias c_gdk_gl_context_new  gdk_gl_context_new;
alias c_gdk_gl_context_destroy  gdk_gl_context_destroy;
alias c_gdk_gl_context_copy  gdk_gl_context_copy;
alias c_gdk_gl_context_get_gl_drawable  gdk_gl_context_get_gl_drawable;
alias c_gdk_gl_context_get_gl_config  gdk_gl_context_get_gl_config;
alias c_gdk_gl_context_get_share_list  gdk_gl_context_get_share_list;
alias c_gdk_gl_context_is_direct  gdk_gl_context_is_direct;
alias c_gdk_gl_context_get_render_type  gdk_gl_context_get_render_type;
alias c_gdk_gl_context_get_current  gdk_gl_context_get_current;

// glgdk.GLDrawable

alias c_gdk_gl_drawable_make_current  gdk_gl_drawable_make_current;
alias c_gdk_gl_drawable_is_double_buffered  gdk_gl_drawable_is_double_buffered;
alias c_gdk_gl_drawable_swap_buffers  gdk_gl_drawable_swap_buffers;
alias c_gdk_gl_drawable_wait_gl  gdk_gl_drawable_wait_gl;
alias c_gdk_gl_drawable_wait_gdk  gdk_gl_drawable_wait_gdk;
alias c_gdk_gl_drawable_gl_begin  gdk_gl_drawable_gl_begin;
alias c_gdk_gl_drawable_gl_end  gdk_gl_drawable_gl_end;
alias c_gdk_gl_drawable_get_gl_config  gdk_gl_drawable_get_gl_config;
alias c_gdk_gl_drawable_get_size  gdk_gl_drawable_get_size;
alias c_gdk_gl_drawable_get_current  gdk_gl_drawable_get_current;

// glgdk.GLPixmap

alias c_gdk_gl_pixmap_new  gdk_gl_pixmap_new;
alias c_gdk_gl_pixmap_destroy  gdk_gl_pixmap_destroy;
alias c_gdk_gl_pixmap_get_pixmap  gdk_gl_pixmap_get_pixmap;
alias c_gdk_pixmap_set_gl_capability  gdk_pixmap_set_gl_capability;
alias c_gdk_pixmap_unset_gl_capability  gdk_pixmap_unset_gl_capability;
alias c_gdk_pixmap_is_gl_capable  gdk_pixmap_is_gl_capable;
alias c_gdk_pixmap_get_gl_pixmap  gdk_pixmap_get_gl_pixmap;

// glgdk.GLWindow

alias c_gdk_gl_window_new  gdk_gl_window_new;
alias c_gdk_gl_window_destroy  gdk_gl_window_destroy;
alias c_gdk_gl_window_get_window  gdk_gl_window_get_window;
alias c_gdk_window_set_gl_capability  gdk_window_set_gl_capability;
alias c_gdk_window_unset_gl_capability  gdk_window_unset_gl_capability;
alias c_gdk_window_is_gl_capable  gdk_window_is_gl_capable;
alias c_gdk_window_get_gl_window  gdk_window_get_gl_window;

// glgdk.GLFont

alias c_gdk_gl_font_use_pango_font  gdk_gl_font_use_pango_font;
alias c_gdk_gl_font_use_pango_font_for_display  gdk_gl_font_use_pango_font_for_display;

// glgdk.GLDraw

alias c_gdk_gl_draw_cube  gdk_gl_draw_cube;
alias c_gdk_gl_draw_sphere  gdk_gl_draw_sphere;
alias c_gdk_gl_draw_cone  gdk_gl_draw_cone;
alias c_gdk_gl_draw_torus  gdk_gl_draw_torus;
alias c_gdk_gl_draw_tetrahedron  gdk_gl_draw_tetrahedron;
alias c_gdk_gl_draw_octahedron  gdk_gl_draw_octahedron;
alias c_gdk_gl_draw_dodecahedron  gdk_gl_draw_dodecahedron;
alias c_gdk_gl_draw_icosahedron  gdk_gl_draw_icosahedron;
alias c_gdk_gl_draw_teapot  gdk_gl_draw_teapot;

// glgdk.


// glgdk.

