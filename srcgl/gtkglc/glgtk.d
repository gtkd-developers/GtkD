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


module gtkglc.glgtk;

version(Tango)
{
	private import tango.stdc.stdio;
	debug private import tango.io.Stdout;
}
else
	private import std.stdio;

private import gtkglc.glgtktypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker glgtk_Linker;

static this()
{
 glgtk_Linker = new Linker(libPath ~ importLibs[LIBRARY.GLGTK] );
 glgtk_Linker.link(glgtkLinks);

 debug
 {
 	version(Tango) Stdout("* Finished static this(): glgtk").newline;
 	else writefln("* Finished static this(): glgtk");
 }
}

static ~this()
{
 delete glgtk_Linker;

 debug
 {
 	version(Tango) Stdout("* Finished static ~this(): glgtk").newline;
 	else writefln("* Finished static ~this(): glgtk");
 }
}

extern(C) 
{	
	// glgtk.GLtInit
	
	void function(int* argc, char*** argv)gtk_gl_init;
	gboolean function(int* argc, char*** argv)gtk_gl_init_check;
	gboolean function(int* argc, char*** argv)gtk_gl_parse_args;
	
	// glgtk.GLWidget
	
	gboolean function(GtkWidget* widget, GdkGLConfig* glconfig, GdkGLContext* shareList, gboolean direct, int renderType)gtk_widget_set_gl_capability;
	gboolean function(GtkWidget* widget)gtk_widget_is_gl_capable;
	GdkGLConfig* function(GtkWidget* widget)gtk_widget_get_gl_config;
	GdkGLContext* function(GtkWidget* widget, GdkGLContext* shareList, gboolean direct, int renderType)gtk_widget_create_gl_context;
	GdkGLContext* function(GtkWidget* widget)gtk_widget_get_gl_context;
	GdkGLWindow* function(GtkWidget* widget)gtk_widget_get_gl_window;
	
	// glgtk.GLtVersion
	
	
	// glgtk.
	


}

Symbol[] glgtkLinks = 
[

	{ "gtk_gl_init",  cast(void**)& gtk_gl_init},
	{ "gtk_gl_init_check",  cast(void**)& gtk_gl_init_check},
	{ "gtk_gl_parse_args",  cast(void**)& gtk_gl_parse_args},
	{ "gtk_widget_set_gl_capability",  cast(void**)& gtk_widget_set_gl_capability},
	{ "gtk_widget_is_gl_capable",  cast(void**)& gtk_widget_is_gl_capable},
	{ "gtk_widget_get_gl_config",  cast(void**)& gtk_widget_get_gl_config},
	{ "gtk_widget_create_gl_context",  cast(void**)& gtk_widget_create_gl_context},
	{ "gtk_widget_get_gl_context",  cast(void**)& gtk_widget_get_gl_context},
	{ "gtk_widget_get_gl_window",  cast(void**)& gtk_widget_get_gl_window},

];