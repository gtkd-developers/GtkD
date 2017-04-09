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


module gtkglc.glgtk;

import std.stdio;
import gtkglc.glgtktypes;
import gtkd.Loader;
import gtkd.paths;

shared static this()
{
	// glgtk.GLtInit

	Linker.link(gtk_gl_init, "gtk_gl_init", LIBRARY.GLGTK);
	Linker.link(gtk_gl_init_check, "gtk_gl_init_check", LIBRARY.GLGTK);

	// glgtk.GLWidget

	Linker.link(gtk_widget_begin_gl, "gtk_widget_begin_gl", LIBRARY.GLGTK);
	Linker.link(gtk_widget_create_gl_context, "gtk_widget_create_gl_context", LIBRARY.GLGTK);
	Linker.link(gtk_widget_end_gl, "gtk_widget_end_gl", LIBRARY.GLGTK);
	Linker.link(gtk_widget_get_gl_config, "gtk_widget_get_gl_config", LIBRARY.GLGTK);
	Linker.link(gtk_widget_get_gl_context, "gtk_widget_get_gl_context", LIBRARY.GLGTK);
	Linker.link(gtk_widget_get_gl_window, "gtk_widget_get_gl_window", LIBRARY.GLGTK);
	Linker.link(gtk_widget_is_gl_capable, "gtk_widget_is_gl_capable", LIBRARY.GLGTK);
	Linker.link(gtk_widget_set_gl_capability, "gtk_widget_set_gl_capability", LIBRARY.GLGTK);
}

__gshared extern(C)
{

	// glgtk.GLtInit

	void function(int* argc, char*** argv) c_gtk_gl_init;
	int function(int* argc, char*** argv) c_gtk_gl_init_check;

	// glgtk.GLWidget

	int function(GtkWidget* widget) c_gtk_widget_begin_gl;
	GdkGLContext* function(GtkWidget* widget, GdkGLContext* shareList, int direct, int renderType) c_gtk_widget_create_gl_context;
	void function(GtkWidget* widget, int doSwap) c_gtk_widget_end_gl;
	GdkGLConfig* function(GtkWidget* widget) c_gtk_widget_get_gl_config;
	GdkGLContext* function(GtkWidget* widget) c_gtk_widget_get_gl_context;
	GdkGLWindow* function(GtkWidget* widget) c_gtk_widget_get_gl_window;
	int function(GtkWidget* widget) c_gtk_widget_is_gl_capable;
	int function(GtkWidget* widget, GdkGLConfig* glconfig, GdkGLContext* shareList, int direct, int renderType) c_gtk_widget_set_gl_capability;
}


// glgtk.GLtInit

alias c_gtk_gl_init gtk_gl_init;
alias c_gtk_gl_init_check gtk_gl_init_check;

// glgtk.GLWidget

alias c_gtk_widget_begin_gl gtk_widget_begin_gl;
alias c_gtk_widget_create_gl_context gtk_widget_create_gl_context;
alias c_gtk_widget_end_gl gtk_widget_end_gl;
alias c_gtk_widget_get_gl_config gtk_widget_get_gl_config;
alias c_gtk_widget_get_gl_context gtk_widget_get_gl_context;
alias c_gtk_widget_get_gl_window gtk_widget_get_gl_window;
alias c_gtk_widget_is_gl_capable gtk_widget_is_gl_capable;
alias c_gtk_widget_set_gl_capability gtk_widget_set_gl_capability;
