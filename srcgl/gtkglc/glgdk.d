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

import std.stdio;
import gtkglc.glgdktypes;
import gtkc.Loader;
import gtkc.paths;

shared static this()
{
	// glgdk.GLConfig

	Linker.link(gdk_gl_config_get_type, "gdk_gl_config_get_type", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_new, "gdk_gl_config_new", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_new_by_mode, "gdk_gl_config_new_by_mode", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_new_by_mode_for_screen, "gdk_gl_config_new_by_mode_for_screen", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_new_for_display, "gdk_gl_config_new_for_display", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_new_for_screen, "gdk_gl_config_new_for_screen", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_get_attrib, "gdk_gl_config_get_attrib", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_get_depth, "gdk_gl_config_get_depth", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_get_layer_plane, "gdk_gl_config_get_layer_plane", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_get_n_aux_buffers, "gdk_gl_config_get_n_aux_buffers", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_get_n_sample_buffers, "gdk_gl_config_get_n_sample_buffers", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_get_screen, "gdk_gl_config_get_screen", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_get_visual, "gdk_gl_config_get_visual", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_has_accum_buffer, "gdk_gl_config_has_accum_buffer", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_has_alpha, "gdk_gl_config_has_alpha", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_has_depth_buffer, "gdk_gl_config_has_depth_buffer", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_has_stencil_buffer, "gdk_gl_config_has_stencil_buffer", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_is_double_buffered, "gdk_gl_config_is_double_buffered", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_is_rgba, "gdk_gl_config_is_rgba", LIBRARY.GLGDK);
	Linker.link(gdk_gl_config_is_stereo, "gdk_gl_config_is_stereo", LIBRARY.GLGDK);

	// glgdk.GLContext

	Linker.link(gdk_gl_context_get_type, "gdk_gl_context_get_type", LIBRARY.GLGDK);
	Linker.link(gdk_gl_context_new, "gdk_gl_context_new", LIBRARY.GLGDK);
	Linker.link(gdk_gl_context_get_current, "gdk_gl_context_get_current", LIBRARY.GLGDK);
	Linker.link(gdk_gl_context_release_current, "gdk_gl_context_release_current", LIBRARY.GLGDK);
	Linker.link(gdk_gl_context_copy, "gdk_gl_context_copy", LIBRARY.GLGDK);
	Linker.link(gdk_gl_context_get_gl_config, "gdk_gl_context_get_gl_config", LIBRARY.GLGDK);
	Linker.link(gdk_gl_context_get_gl_drawable, "gdk_gl_context_get_gl_drawable", LIBRARY.GLGDK);
	Linker.link(gdk_gl_context_get_render_type, "gdk_gl_context_get_render_type", LIBRARY.GLGDK);
	Linker.link(gdk_gl_context_get_share_list, "gdk_gl_context_get_share_list", LIBRARY.GLGDK);
	Linker.link(gdk_gl_context_is_direct, "gdk_gl_context_is_direct", LIBRARY.GLGDK);
	Linker.link(gdk_gl_context_make_current, "gdk_gl_context_make_current", LIBRARY.GLGDK);

	// glgdk.GLDrawable

	Linker.link(gdk_gl_drawable_get_type, "gdk_gl_drawable_get_type", LIBRARY.GLGDK);
	Linker.link(gdk_gl_drawable_get_gl_config, "gdk_gl_drawable_get_gl_config", LIBRARY.GLGDK);
	Linker.link(gdk_gl_drawable_is_double_buffered, "gdk_gl_drawable_is_double_buffered", LIBRARY.GLGDK);
	Linker.link(gdk_gl_drawable_swap_buffers, "gdk_gl_drawable_swap_buffers", LIBRARY.GLGDK);
	Linker.link(gdk_gl_drawable_wait_gdk, "gdk_gl_drawable_wait_gdk", LIBRARY.GLGDK);
	Linker.link(gdk_gl_drawable_wait_gl, "gdk_gl_drawable_wait_gl", LIBRARY.GLGDK);

	// glgdk.GLWindow

	Linker.link(gdk_gl_window_get_type, "gdk_gl_window_get_type", LIBRARY.GLGDK);
	Linker.link(gdk_gl_window_new, "gdk_gl_window_new", LIBRARY.GLGDK);
	Linker.link(gdk_window_get_gl_window, "gdk_window_get_gl_window", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_gl_capable, "gdk_window_is_gl_capable", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_gl_capability, "gdk_window_set_gl_capability", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unset_gl_capability, "gdk_window_unset_gl_capability", LIBRARY.GLGDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gl_window_get_window, "gdk_gl_window_get_window", LIBRARY.GLGDK);

	// glgdk.GLdInit

	Linker.link(gdk_gl_init, "gdk_gl_init", LIBRARY.GLGDK);
	Linker.link(gdk_gl_init_check, "gdk_gl_init_check", LIBRARY.GLGDK);

	// glgdk.GLQuery

	Linker.link(gdk_gl_query_version, "gdk_gl_query_version", LIBRARY.GLGDK);
	Linker.link(gdk_gl_query_version_for_display, "gdk_gl_query_version_for_display", LIBRARY.GLGDK);
	Linker.link(gdk_gl_get_proc_address, "gdk_gl_get_proc_address", LIBRARY.GLGDK);
	Linker.link(gdk_gl_query_extension, "gdk_gl_query_extension", LIBRARY.GLGDK);
	Linker.link(gdk_gl_query_extension_for_display, "gdk_gl_query_extension_for_display", LIBRARY.GLGDK);
	Linker.link(gdk_gl_query_gl_extension, "gdk_gl_query_gl_extension", LIBRARY.GLGDK);

	// glgdk.GLVersion

	Linker.link(gdk_gl_get_binary_age, "gdk_gl_get_binary_age", LIBRARY.GLGDK);
	Linker.link(gdk_gl_get_interface_age, "gdk_gl_get_interface_age", LIBRARY.GLGDK);
	Linker.link(gdk_gl_get_major_version, "gdk_gl_get_major_version", LIBRARY.GLGDK);
	Linker.link(gdk_gl_get_micro_version, "gdk_gl_get_micro_version", LIBRARY.GLGDK);
	Linker.link(gdk_gl_get_minor_version, "gdk_gl_get_minor_version", LIBRARY.GLGDK);
}

__gshared extern(C)
{

	// glgdk.GLConfig

	GType function() c_gdk_gl_config_get_type;
	GdkGLConfig* function(int* attribList, size_t nAttribs) c_gdk_gl_config_new;
	GdkGLConfig* function(GdkGLConfigMode mode) c_gdk_gl_config_new_by_mode;
	GdkGLConfig* function(GdkScreen* screen, GdkGLConfigMode mode) c_gdk_gl_config_new_by_mode_for_screen;
	GdkGLConfig* function(GdkDisplay* display, int* attribList, size_t nAttribs) c_gdk_gl_config_new_for_display;
	GdkGLConfig* function(GdkScreen* screen, int* attribList, size_t nAttribs) c_gdk_gl_config_new_for_screen;
	int function(GdkGLConfig* glconfig, int attribute, int* value) c_gdk_gl_config_get_attrib;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_get_depth;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_get_layer_plane;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_get_n_aux_buffers;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_get_n_sample_buffers;
	GdkScreen* function(GdkGLConfig* glconfig) c_gdk_gl_config_get_screen;
	GdkVisual* function(GdkGLConfig* glconfig) c_gdk_gl_config_get_visual;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_has_accum_buffer;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_has_alpha;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_has_depth_buffer;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_has_stencil_buffer;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_is_double_buffered;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_is_rgba;
	int function(GdkGLConfig* glconfig) c_gdk_gl_config_is_stereo;

	// glgdk.GLContext

	GType function() c_gdk_gl_context_get_type;
	GdkGLContext* function(GdkGLDrawable* gldrawable, GdkGLContext* shareList, int direct, int renderType) c_gdk_gl_context_new;
	GdkGLContext* function() c_gdk_gl_context_get_current;
	void function() c_gdk_gl_context_release_current;
	int function(GdkGLContext* glcontext, GdkGLContext* src, ulong mask) c_gdk_gl_context_copy;
	GdkGLConfig* function(GdkGLContext* glcontext) c_gdk_gl_context_get_gl_config;
	GdkGLDrawable* function(GdkGLContext* glcontext) c_gdk_gl_context_get_gl_drawable;
	int function(GdkGLContext* glcontext) c_gdk_gl_context_get_render_type;
	GdkGLContext* function(GdkGLContext* glcontext) c_gdk_gl_context_get_share_list;
	int function(GdkGLContext* glcontext) c_gdk_gl_context_is_direct;
	int function(GdkGLContext* glcontext, GdkGLDrawable* draw, GdkGLDrawable* read) c_gdk_gl_context_make_current;

	// glgdk.GLDrawable

	GType function() c_gdk_gl_drawable_get_type;
	GdkGLConfig* function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_get_gl_config;
	int function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_is_double_buffered;
	void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_swap_buffers;
	void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_wait_gdk;
	void function(GdkGLDrawable* gldrawable) c_gdk_gl_drawable_wait_gl;

	// glgdk.GLWindow

	GType function() c_gdk_gl_window_get_type;
	GdkGLWindow* function(GdkGLConfig* glconfig, GdkWindow* window, int* attribList) c_gdk_gl_window_new;
	GdkGLWindow* function(GdkWindow* window) c_gdk_window_get_gl_window;
	int function(GdkWindow* window) c_gdk_window_is_gl_capable;
	GdkGLWindow* function(GdkWindow* window, GdkGLConfig* glconfig, int* attribList) c_gdk_window_set_gl_capability;
	void function(GdkWindow* window) c_gdk_window_unset_gl_capability;
	GdkWindow* function(GdkGLWindow* glwindow) c_gdk_gl_window_get_window;

	// glgdk.GLdInit

	void function(int* argc, char*** argv) c_gdk_gl_init;
	int function(int* argc, char*** argv) c_gdk_gl_init_check;

	// glgdk.GLQuery

	int function(int* major, int* minor) c_gdk_gl_query_version;
	int function(GdkDisplay* display, int* major, int* minor) c_gdk_gl_query_version_for_display;
	GdkGLProc function(const(char)* procName) c_gdk_gl_get_proc_address;
	int function() c_gdk_gl_query_extension;
	int function(GdkDisplay* display) c_gdk_gl_query_extension_for_display;
	int function(const(char)* extension) c_gdk_gl_query_gl_extension;

	// glgdk.GLVersion

	int function() c_gdk_gl_get_binary_age;
	int function() c_gdk_gl_get_interface_age;
	int function() c_gdk_gl_get_major_version;
	int function() c_gdk_gl_get_micro_version;
	int function() c_gdk_gl_get_minor_version;
}


// glgdk.GLConfig

alias c_gdk_gl_config_get_type gdk_gl_config_get_type;
alias c_gdk_gl_config_new gdk_gl_config_new;
alias c_gdk_gl_config_new_by_mode gdk_gl_config_new_by_mode;
alias c_gdk_gl_config_new_by_mode_for_screen gdk_gl_config_new_by_mode_for_screen;
alias c_gdk_gl_config_new_for_display gdk_gl_config_new_for_display;
alias c_gdk_gl_config_new_for_screen gdk_gl_config_new_for_screen;
alias c_gdk_gl_config_get_attrib gdk_gl_config_get_attrib;
alias c_gdk_gl_config_get_depth gdk_gl_config_get_depth;
alias c_gdk_gl_config_get_layer_plane gdk_gl_config_get_layer_plane;
alias c_gdk_gl_config_get_n_aux_buffers gdk_gl_config_get_n_aux_buffers;
alias c_gdk_gl_config_get_n_sample_buffers gdk_gl_config_get_n_sample_buffers;
alias c_gdk_gl_config_get_screen gdk_gl_config_get_screen;
alias c_gdk_gl_config_get_visual gdk_gl_config_get_visual;
alias c_gdk_gl_config_has_accum_buffer gdk_gl_config_has_accum_buffer;
alias c_gdk_gl_config_has_alpha gdk_gl_config_has_alpha;
alias c_gdk_gl_config_has_depth_buffer gdk_gl_config_has_depth_buffer;
alias c_gdk_gl_config_has_stencil_buffer gdk_gl_config_has_stencil_buffer;
alias c_gdk_gl_config_is_double_buffered gdk_gl_config_is_double_buffered;
alias c_gdk_gl_config_is_rgba gdk_gl_config_is_rgba;
alias c_gdk_gl_config_is_stereo gdk_gl_config_is_stereo;

// glgdk.GLContext

alias c_gdk_gl_context_get_type gdk_gl_context_get_type;
alias c_gdk_gl_context_new gdk_gl_context_new;
alias c_gdk_gl_context_get_current gdk_gl_context_get_current;
alias c_gdk_gl_context_release_current gdk_gl_context_release_current;
alias c_gdk_gl_context_copy gdk_gl_context_copy;
alias c_gdk_gl_context_get_gl_config gdk_gl_context_get_gl_config;
alias c_gdk_gl_context_get_gl_drawable gdk_gl_context_get_gl_drawable;
alias c_gdk_gl_context_get_render_type gdk_gl_context_get_render_type;
alias c_gdk_gl_context_get_share_list gdk_gl_context_get_share_list;
alias c_gdk_gl_context_is_direct gdk_gl_context_is_direct;
alias c_gdk_gl_context_make_current gdk_gl_context_make_current;

// glgdk.GLDrawable

alias c_gdk_gl_drawable_get_type gdk_gl_drawable_get_type;
alias c_gdk_gl_drawable_get_gl_config gdk_gl_drawable_get_gl_config;
alias c_gdk_gl_drawable_is_double_buffered gdk_gl_drawable_is_double_buffered;
alias c_gdk_gl_drawable_swap_buffers gdk_gl_drawable_swap_buffers;
alias c_gdk_gl_drawable_wait_gdk gdk_gl_drawable_wait_gdk;
alias c_gdk_gl_drawable_wait_gl gdk_gl_drawable_wait_gl;

// glgdk.GLWindow

alias c_gdk_gl_window_get_type gdk_gl_window_get_type;
alias c_gdk_gl_window_new gdk_gl_window_new;
alias c_gdk_window_get_gl_window gdk_window_get_gl_window;
alias c_gdk_window_is_gl_capable gdk_window_is_gl_capable;
alias c_gdk_window_set_gl_capability gdk_window_set_gl_capability;
alias c_gdk_window_unset_gl_capability gdk_window_unset_gl_capability;
alias c_gdk_gl_window_get_window gdk_gl_window_get_window;

// glgdk.GLdInit

alias c_gdk_gl_init gdk_gl_init;
alias c_gdk_gl_init_check gdk_gl_init_check;

// glgdk.GLQuery

alias c_gdk_gl_query_version gdk_gl_query_version;
alias c_gdk_gl_query_version_for_display gdk_gl_query_version_for_display;
alias c_gdk_gl_get_proc_address gdk_gl_get_proc_address;
alias c_gdk_gl_query_extension gdk_gl_query_extension;
alias c_gdk_gl_query_extension_for_display gdk_gl_query_extension_for_display;
alias c_gdk_gl_query_gl_extension gdk_gl_query_gl_extension;

// glgdk.GLVersion

alias c_gdk_gl_get_binary_age gdk_gl_get_binary_age;
alias c_gdk_gl_get_interface_age gdk_gl_get_interface_age;
alias c_gdk_gl_get_major_version gdk_gl_get_major_version;
alias c_gdk_gl_get_micro_version gdk_gl_get_micro_version;
alias c_gdk_gl_get_minor_version gdk_gl_get_minor_version;
