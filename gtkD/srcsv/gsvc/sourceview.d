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


module gsvc.sourceview;

private import std.stdio;
//private import gsvc.sourceviewtypes;
private import gsvc.gsvtypes;
private import gtkc.Loader;
private import gtkc.paths;
private import gtkc.gtktypes;

private Linker sourceview_Linker;

static this()
{
 sourceview_Linker = new Linker(libPath ~ importLibs[LIBRARY.GSV] );
 sourceview_Linker.link(sourceviewLinks);
 debug writefln("* Finished static this(): sourceview");
}

static ~this()
{
 delete sourceview_Linker;
 debug writefln("* Finished static ~this(): sourceview");
}

extern(C) 
{	
	// sourceview.SourceView
	
	GtkWidget* function()gtk_source_view_new;
	GtkWidget* function(GtkSourceBuffer* buffer)gtk_source_view_new_with_buffer;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_show_line_numbers;
	gboolean function(GtkSourceView* view)gtk_source_view_get_show_line_numbers;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_show_line_markers;
	gboolean function(GtkSourceView* view)gtk_source_view_get_show_line_markers;
	void function(GtkSourceView* view, guint width)gtk_source_view_set_tabs_width;
	guint function(GtkSourceView* view)gtk_source_view_get_tabs_width;
	void function(GtkSourceView* view, gboolean enable)gtk_source_view_set_auto_indent;
	gboolean function(GtkSourceView* view)gtk_source_view_get_auto_indent;
	void function(GtkSourceView* view, gboolean enable)gtk_source_view_set_insert_spaces_instead_of_tabs;
	gboolean function(GtkSourceView* view)gtk_source_view_get_insert_spaces_instead_of_tabs;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_show_margin;
	gboolean function(GtkSourceView* view)gtk_source_view_get_show_margin;
	void function(GtkSourceView* view, guint margin)gtk_source_view_set_margin;
	guint function(GtkSourceView* view)gtk_source_view_get_margin;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_highlight_current_line;
	gboolean function(GtkSourceView* view)gtk_source_view_get_highlight_current_line;
	void function(GtkSourceView* view, gchar* markerType, GdkPixbuf* pixbuf)gtk_source_view_set_marker_pixbuf;
	GdkPixbuf* function(GtkSourceView* view, gchar* markerType)gtk_source_view_get_marker_pixbuf;
	void function(GtkSourceView* view, gboolean enable)gtk_source_view_set_smart_home_end;
	gboolean function(GtkSourceView* view)gtk_source_view_get_smart_home_end;


}

Symbol[] sourceviewLinks = 
[

	{ "gtk_source_view_new",  cast(void**)& gtk_source_view_new},
	{ "gtk_source_view_new_with_buffer",  cast(void**)& gtk_source_view_new_with_buffer},
	{ "gtk_source_view_set_show_line_numbers",  cast(void**)& gtk_source_view_set_show_line_numbers},
	{ "gtk_source_view_get_show_line_numbers",  cast(void**)& gtk_source_view_get_show_line_numbers},
	{ "gtk_source_view_set_show_line_markers",  cast(void**)& gtk_source_view_set_show_line_markers},
	{ "gtk_source_view_get_show_line_markers",  cast(void**)& gtk_source_view_get_show_line_markers},
	{ "gtk_source_view_set_tabs_width",  cast(void**)& gtk_source_view_set_tabs_width},
	{ "gtk_source_view_get_tabs_width",  cast(void**)& gtk_source_view_get_tabs_width},
	{ "gtk_source_view_set_auto_indent",  cast(void**)& gtk_source_view_set_auto_indent},
	{ "gtk_source_view_get_auto_indent",  cast(void**)& gtk_source_view_get_auto_indent},
	{ "gtk_source_view_set_insert_spaces_instead_of_tabs",  cast(void**)& gtk_source_view_set_insert_spaces_instead_of_tabs},
	{ "gtk_source_view_get_insert_spaces_instead_of_tabs",  cast(void**)& gtk_source_view_get_insert_spaces_instead_of_tabs},
	{ "gtk_source_view_set_show_margin",  cast(void**)& gtk_source_view_set_show_margin},
	{ "gtk_source_view_get_show_margin",  cast(void**)& gtk_source_view_get_show_margin},
	{ "gtk_source_view_set_margin",  cast(void**)& gtk_source_view_set_margin},
	{ "gtk_source_view_get_margin",  cast(void**)& gtk_source_view_get_margin},
	{ "gtk_source_view_set_highlight_current_line",  cast(void**)& gtk_source_view_set_highlight_current_line},
	{ "gtk_source_view_get_highlight_current_line",  cast(void**)& gtk_source_view_get_highlight_current_line},
	{ "gtk_source_view_set_marker_pixbuf",  cast(void**)& gtk_source_view_set_marker_pixbuf},
	{ "gtk_source_view_get_marker_pixbuf",  cast(void**)& gtk_source_view_get_marker_pixbuf},
	{ "gtk_source_view_set_smart_home_end",  cast(void**)& gtk_source_view_set_smart_home_end},
	{ "gtk_source_view_get_smart_home_end",  cast(void**)& gtk_source_view_get_smart_home_end},

];