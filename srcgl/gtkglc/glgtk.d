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

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkglc.glgtktypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// glgtk.GLtInit

	Linker.link(gtk_gl_init, \"gtk_gl_init\", LIBRARY.GLGTK);
	Linker.link(gtk_gl_init_check, \"gtk_gl_init_check\", LIBRARY.GLGTK);

	// glgtk.

	Linker.link(gtk_widget_set_gl_capability, \"gtk_widget_set_gl_capability\", LIBRARY.GLGTK);
	Linker.link(gtk_widget_is_gl_capable, \"gtk_widget_is_gl_capable\", LIBRARY.GLGTK);
	Linker.link(gtk_widget_get_gl_config, \"gtk_widget_get_gl_config\", LIBRARY.GLGTK);
	Linker.link(gtk_widget_create_gl_context, \"gtk_widget_create_gl_context\", LIBRARY.GLGTK);
	Linker.link(gtk_widget_get_gl_context, \"gtk_widget_get_gl_context\", LIBRARY.GLGTK);
	Linker.link(gtk_widget_get_gl_window, \"gtk_widget_get_gl_window\", LIBRARY.GLGTK);

	// glgtk.

}");

mixin( gshared ~"extern(C)
{
	// glgtk.GLtInit

	void function(int* argc, char*** argv) c_gtk_gl_init;
	gboolean function(int* argc, char*** argv) c_gtk_gl_init_check;

	// glgtk.

	gboolean function(GtkWidget* widget, GdkGLConfig* glconfig, GdkGLContext* shareList, gboolean direct, int renderType) c_gtk_widget_set_gl_capability;
	gboolean function(GtkWidget* widget) c_gtk_widget_is_gl_capable;
	GdkGLConfig* function(GtkWidget* widget) c_gtk_widget_get_gl_config;
	GdkGLContext* function(GtkWidget* widget, GdkGLContext* shareList, gboolean direct, int renderType) c_gtk_widget_create_gl_context;
	GdkGLContext* function(GtkWidget* widget) c_gtk_widget_get_gl_context;
	GdkGLWindow* function(GtkWidget* widget) c_gtk_widget_get_gl_window;

	// glgtk.

}");

// glgtk.GLtInit

alias c_gtk_gl_init  gtk_gl_init;
alias c_gtk_gl_init_check  gtk_gl_init_check;

// glgtk.

alias c_gtk_widget_set_gl_capability  gtk_widget_set_gl_capability;
alias c_gtk_widget_is_gl_capable  gtk_widget_is_gl_capable;
alias c_gtk_widget_get_gl_config  gtk_widget_get_gl_config;
alias c_gtk_widget_create_gl_context  gtk_widget_create_gl_context;
alias c_gtk_widget_get_gl_context  gtk_widget_get_gl_context;
alias c_gtk_widget_get_gl_window  gtk_widget_get_gl_window;

// glgtk.

