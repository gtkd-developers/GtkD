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


module gtkglc.glgtk;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkglc.glgtktypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// glgtk.GLtInit

	Linker.link(gtk_gl_init, "gtk_gl_init", LIBRARY.GLGTK);
	Linker.link(gtk_gl_init_check, "gtk_gl_init_check", LIBRARY.GLGTK);
	Linker.link(gtk_gl_parse_args, "gtk_gl_parse_args", LIBRARY.GLGTK);

	// glgtk.GLWidget

	Linker.link(gtk_widget_set_gl_capability, "gtk_widget_set_gl_capability", LIBRARY.GLGTK);
	Linker.link(gtk_widget_is_gl_capable, "gtk_widget_is_gl_capable", LIBRARY.GLGTK);
	Linker.link(gtk_widget_get_gl_config, "gtk_widget_get_gl_config", LIBRARY.GLGTK);
	Linker.link(gtk_widget_create_gl_context, "gtk_widget_create_gl_context", LIBRARY.GLGTK);
	Linker.link(gtk_widget_get_gl_context, "gtk_widget_get_gl_context", LIBRARY.GLGTK);
	Linker.link(gtk_widget_get_gl_window, "gtk_widget_get_gl_window", LIBRARY.GLGTK);

	// glgtk.GLtVersion


	// glgtk.

}

extern(C)
{
	
	// glgtk.GLtInit
	
	typedef void function(int* argc, char*** argv) c_gtk_gl_init;
	typedef gboolean function(int* argc, char*** argv) c_gtk_gl_init_check;
	typedef gboolean function(int* argc, char*** argv) c_gtk_gl_parse_args;
	
	// glgtk.GLWidget
	
	typedef gboolean function(GtkWidget* widget, GdkGLConfig* glconfig, GdkGLContext* shareList, gboolean direct, int renderType) c_gtk_widget_set_gl_capability;
	typedef gboolean function(GtkWidget* widget) c_gtk_widget_is_gl_capable;
	typedef GdkGLConfig* function(GtkWidget* widget) c_gtk_widget_get_gl_config;
	typedef GdkGLContext* function(GtkWidget* widget, GdkGLContext* shareList, gboolean direct, int renderType) c_gtk_widget_create_gl_context;
	typedef GdkGLContext* function(GtkWidget* widget) c_gtk_widget_get_gl_context;
	typedef GdkGLWindow* function(GtkWidget* widget) c_gtk_widget_get_gl_window;
	
	// glgtk.GLtVersion
	
	
	// glgtk.
	
}

// glgtk.GLtInit

c_gtk_gl_init  gtk_gl_init;
c_gtk_gl_init_check  gtk_gl_init_check;
c_gtk_gl_parse_args  gtk_gl_parse_args;

// glgtk.GLWidget

c_gtk_widget_set_gl_capability  gtk_widget_set_gl_capability;
c_gtk_widget_is_gl_capable  gtk_widget_is_gl_capable;
c_gtk_widget_get_gl_config  gtk_widget_get_gl_config;
c_gtk_widget_create_gl_context  gtk_widget_create_gl_context;
c_gtk_widget_get_gl_context  gtk_widget_get_gl_context;
c_gtk_widget_get_gl_window  gtk_widget_get_gl_window;

// glgtk.GLtVersion


// glgtk.

