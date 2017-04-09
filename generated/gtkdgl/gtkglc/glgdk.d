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
import gtkd.Loader;
import gtkd.paths;

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

	GType function() glc_gdk_gl_config_get_type;
	GdkGLConfig* function(int* attribList, size_t nAttribs) glc_gdk_gl_config_new;
	GdkGLConfig* function(GdkGLConfigMode mode) glc_gdk_gl_config_new_by_mode;
	GdkGLConfig* function(GdkScreen* screen, GdkGLConfigMode mode) glc_gdk_gl_config_new_by_mode_for_screen;
	GdkGLConfig* function(GdkDisplay* display, int* attribList, size_t nAttribs) glc_gdk_gl_config_new_for_display;
	GdkGLConfig* function(GdkScreen* screen, int* attribList, size_t nAttribs) glc_gdk_gl_config_new_for_screen;
	int function(GdkGLConfig* glconfig, int attribute, int* value) glc_gdk_gl_config_get_attrib;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_get_depth;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_get_layer_plane;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_get_n_aux_buffers;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_get_n_sample_buffers;
	GdkScreen* function(GdkGLConfig* glconfig) glc_gdk_gl_config_get_screen;
	GdkVisual* function(GdkGLConfig* glconfig) glc_gdk_gl_config_get_visual;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_has_accum_buffer;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_has_alpha;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_has_depth_buffer;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_has_stencil_buffer;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_is_double_buffered;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_is_rgba;
	int function(GdkGLConfig* glconfig) glc_gdk_gl_config_is_stereo;

	// glgdk.GLContext

	GType function() glc_gdk_gl_context_get_type;
	GdkGLContext* function(GdkGLDrawable* gldrawable, GdkGLContext* shareList, int direct, int renderType) glc_gdk_gl_context_new;
	GdkGLContext* function() glc_gdk_gl_context_get_current;
	void function() glc_gdk_gl_context_release_current;
	int function(GdkGLContext* glcontext, GdkGLContext* src, ulong mask) glc_gdk_gl_context_copy;
	GdkGLConfig* function(GdkGLContext* glcontext) glc_gdk_gl_context_get_gl_config;
	GdkGLDrawable* function(GdkGLContext* glcontext) glc_gdk_gl_context_get_gl_drawable;
	int function(GdkGLContext* glcontext) glc_gdk_gl_context_get_render_type;
	GdkGLContext* function(GdkGLContext* glcontext) glc_gdk_gl_context_get_share_list;
	int function(GdkGLContext* glcontext) glc_gdk_gl_context_is_direct;
	int function(GdkGLContext* glcontext, GdkGLDrawable* draw, GdkGLDrawable* read) glc_gdk_gl_context_make_current;

	// glgdk.GLDrawable

	GType function() glc_gdk_gl_drawable_get_type;
	GdkGLConfig* function(GdkGLDrawable* gldrawable) glc_gdk_gl_drawable_get_gl_config;
	int function(GdkGLDrawable* gldrawable) glc_gdk_gl_drawable_is_double_buffered;
	void function(GdkGLDrawable* gldrawable) glc_gdk_gl_drawable_swap_buffers;
	void function(GdkGLDrawable* gldrawable) glc_gdk_gl_drawable_wait_gdk;
	void function(GdkGLDrawable* gldrawable) glc_gdk_gl_drawable_wait_gl;

	// glgdk.GLWindow

	GType function() glc_gdk_gl_window_get_type;
	GdkGLWindow* function(GdkGLConfig* glconfig, GdkWindow* window, int* attribList) glc_gdk_gl_window_new;
	GdkGLWindow* function(GdkWindow* window) glc_gdk_window_get_gl_window;
	int function(GdkWindow* window) glc_gdk_window_is_gl_capable;
	GdkGLWindow* function(GdkWindow* window, GdkGLConfig* glconfig, int* attribList) glc_gdk_window_set_gl_capability;
	void function(GdkWindow* window) glc_gdk_window_unset_gl_capability;
	GdkWindow* function(GdkGLWindow* glwindow) glc_gdk_gl_window_get_window;

	// glgdk.GLdInit

	void function(int* argc, char*** argv) glc_gdk_gl_init;
	int function(int* argc, char*** argv) glc_gdk_gl_init_check;

	// glgdk.GLQuery

	int function(int* major, int* minor) glc_gdk_gl_query_version;
	int function(GdkDisplay* display, int* major, int* minor) glc_gdk_gl_query_version_for_display;
	GdkGLProc function(const(char)* procName) glc_gdk_gl_get_proc_address;
	int function() glc_gdk_gl_query_extension;
	int function(GdkDisplay* display) glc_gdk_gl_query_extension_for_display;
	int function(const(char)* extension) glc_gdk_gl_query_gl_extension;

	// glgdk.GLVersion

	int function() glc_gdk_gl_get_binary_age;
	int function() glc_gdk_gl_get_interface_age;
	int function() glc_gdk_gl_get_major_version;
	int function() glc_gdk_gl_get_micro_version;
	int function() glc_gdk_gl_get_minor_version;
}


// glgdk.GLConfig

alias glc_gdk_gl_config_get_type gdk_gl_config_get_type;
alias glc_gdk_gl_config_new gdk_gl_config_new;
alias glc_gdk_gl_config_new_by_mode gdk_gl_config_new_by_mode;
alias glc_gdk_gl_config_new_by_mode_for_screen gdk_gl_config_new_by_mode_for_screen;
alias glc_gdk_gl_config_new_for_display gdk_gl_config_new_for_display;
alias glc_gdk_gl_config_new_for_screen gdk_gl_config_new_for_screen;
alias glc_gdk_gl_config_get_attrib gdk_gl_config_get_attrib;
alias glc_gdk_gl_config_get_depth gdk_gl_config_get_depth;
alias glc_gdk_gl_config_get_layer_plane gdk_gl_config_get_layer_plane;
alias glc_gdk_gl_config_get_n_aux_buffers gdk_gl_config_get_n_aux_buffers;
alias glc_gdk_gl_config_get_n_sample_buffers gdk_gl_config_get_n_sample_buffers;
alias glc_gdk_gl_config_get_screen gdk_gl_config_get_screen;
alias glc_gdk_gl_config_get_visual gdk_gl_config_get_visual;
alias glc_gdk_gl_config_has_accum_buffer gdk_gl_config_has_accum_buffer;
alias glc_gdk_gl_config_has_alpha gdk_gl_config_has_alpha;
alias glc_gdk_gl_config_has_depth_buffer gdk_gl_config_has_depth_buffer;
alias glc_gdk_gl_config_has_stencil_buffer gdk_gl_config_has_stencil_buffer;
alias glc_gdk_gl_config_is_double_buffered gdk_gl_config_is_double_buffered;
alias glc_gdk_gl_config_is_rgba gdk_gl_config_is_rgba;
alias glc_gdk_gl_config_is_stereo gdk_gl_config_is_stereo;

// glgdk.GLContext

alias glc_gdk_gl_context_get_type gdk_gl_context_get_type;
alias glc_gdk_gl_context_new gdk_gl_context_new;
alias glc_gdk_gl_context_get_current gdk_gl_context_get_current;
alias glc_gdk_gl_context_release_current gdk_gl_context_release_current;
alias glc_gdk_gl_context_copy gdk_gl_context_copy;
alias glc_gdk_gl_context_get_gl_config gdk_gl_context_get_gl_config;
alias glc_gdk_gl_context_get_gl_drawable gdk_gl_context_get_gl_drawable;
alias glc_gdk_gl_context_get_render_type gdk_gl_context_get_render_type;
alias glc_gdk_gl_context_get_share_list gdk_gl_context_get_share_list;
alias glc_gdk_gl_context_is_direct gdk_gl_context_is_direct;
alias glc_gdk_gl_context_make_current gdk_gl_context_make_current;

// glgdk.GLDrawable

alias glc_gdk_gl_drawable_get_type gdk_gl_drawable_get_type;
alias glc_gdk_gl_drawable_get_gl_config gdk_gl_drawable_get_gl_config;
alias glc_gdk_gl_drawable_is_double_buffered gdk_gl_drawable_is_double_buffered;
alias glc_gdk_gl_drawable_swap_buffers gdk_gl_drawable_swap_buffers;
alias glc_gdk_gl_drawable_wait_gdk gdk_gl_drawable_wait_gdk;
alias glc_gdk_gl_drawable_wait_gl gdk_gl_drawable_wait_gl;

// glgdk.GLWindow

alias glc_gdk_gl_window_get_type gdk_gl_window_get_type;
alias glc_gdk_gl_window_new gdk_gl_window_new;
alias glc_gdk_window_get_gl_window gdk_window_get_gl_window;
alias glc_gdk_window_is_gl_capable gdk_window_is_gl_capable;
alias glc_gdk_window_set_gl_capability gdk_window_set_gl_capability;
alias glc_gdk_window_unset_gl_capability gdk_window_unset_gl_capability;
alias glc_gdk_gl_window_get_window gdk_gl_window_get_window;

// glgdk.GLdInit

alias glc_gdk_gl_init gdk_gl_init;
alias glc_gdk_gl_init_check gdk_gl_init_check;

// glgdk.GLQuery

alias glc_gdk_gl_query_version gdk_gl_query_version;
alias glc_gdk_gl_query_version_for_display gdk_gl_query_version_for_display;
alias glc_gdk_gl_get_proc_address gdk_gl_get_proc_address;
alias glc_gdk_gl_query_extension gdk_gl_query_extension;
alias glc_gdk_gl_query_extension_for_display gdk_gl_query_extension_for_display;
alias glc_gdk_gl_query_gl_extension gdk_gl_query_gl_extension;

// glgdk.GLVersion

alias glc_gdk_gl_get_binary_age gdk_gl_get_binary_age;
alias glc_gdk_gl_get_interface_age gdk_gl_get_interface_age;
alias glc_gdk_gl_get_major_version gdk_gl_get_major_version;
alias glc_gdk_gl_get_micro_version gdk_gl_get_micro_version;
alias glc_gdk_gl_get_minor_version gdk_gl_get_minor_version;
