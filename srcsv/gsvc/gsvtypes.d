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
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

module gsvc.gsvtypes;


public import gtkc.gtktypes;

/**
 * GTK_SOURCE_SMART_HOME_END_DISABLED
 * smart-home-end disabled.
 * GTK_SOURCE_SMART_HOME_END_BEFORE
 * move to the first/last
 * non-whitespace character on the first press of the HOME/END keys and
 * to the beginning/end of the line on the second press.
 * GTK_SOURCE_SMART_HOME_END_AFTER
 * move to the beginning/end of the
 * line on the first press of the HOME/END keys and to the first/last
 * non-whitespace character on the second press.
 * GTK_SOURCE_SMART_HOME_END_ALWAYS
 * always move to the first/last
 * non-whitespace character when the HOME/END keys are pressed.
 */
public enum GtkSourceSmartHomeEndType
{
	DISABLED,
	BEFORE,
	AFTER,
	ALWAYS
}
alias GtkSourceSmartHomeEndType SourceSmartHomeEndType;

/**
 * GtkSourceDrawSpacesFlags determine what kind of spaces whould be drawn.
 * GTK_SOURCE_DRAW_SPACES_SPACE
 * whether the space character should be drawn.
 * GTK_SOURCE_DRAW_SPACES_TAB
 * whether the tab character should be drawn.
 * GTK_SOURCE_DRAW_SPACES_NEWLINE
 * whether the line breaks should be drawn.
 * GTK_SOURCE_DRAW_SPACES_NBSP
 * whether the non-breaking whitespaces should be drawn.
 * GTK_SOURCE_DRAW_SPACES_LEADING
 * GTK_SOURCE_DRAW_SPACES_TEXT
 * GTK_SOURCE_DRAW_SPACES_TRAILING
 * GTK_SOURCE_DRAW_SPACES_ALL
 * wheter all kind of spaces should be drawn.
 */
public enum GtkSourceDrawSpacesFlags
{
	SPACE = 1 << 0,
	TAB = 1 << 1,
	NEWLINE = 1 << 2,
	NBSP = 1 << 3,
	LEADING = 1 << 4,
	TEXT = 1 << 5,
	TRAILING = 1 << 6,
	ALL = (SPACE |
	TAB |
	NEWLINE |
	NBSP |
	LEADING |
	TEXT |
	TRAILING)
}
alias GtkSourceDrawSpacesFlags SourceDrawSpacesFlags;

/**
 * GTK_SOURCE_VIEW_GUTTER_POSITION_LINES
 * the gutter position of the lines
 * renderer
 * GTK_SOURCE_VIEW_GUTTER_POSITION_MARKS
 * the gutter position of the marks
 * renderer
 */
public enum GtkSourceViewGutterPosition
{
	LINES = -30,
	MARKS = -20
}
alias GtkSourceViewGutterPosition SourceViewGutterPosition;

public enum GtkSourceCompletionActivation
{
	NONE = 0,
	INTERACTIVE = 1 << 0,
	USER_REQUESTED = 1 << 1
}
alias GtkSourceCompletionActivation SourceCompletionActivation;

public enum GtkSourceSearchFlags
{
	VISIBLE_ONLY = 1 << 0,
	TEXT_ONLY = 1 << 1,
	CASE_INSENSITIVE = 1 << 2
	/+* Possible future plans: SEARCH_REGEXP +/
}
alias GtkSourceSearchFlags SourceSearchFlags;

public struct GtkTextViewClass{}

public struct GtkTextBufferClass{}

/**
 * Main Gtk struct.
 */
public struct GtkSourceView{}


public struct GtkSourceViewClass
{
	GtkTextViewClass parentClass;
	extern(C) void  function(GtkSourceView *view) undo;
	extern(C) void  function(GtkSourceView *view) redo;
	extern(C) void  function(GtkSourceView *view, GtkTextIter *iter,GdkEvent *event) lineMarkActivated;
	extern(C) void  function(GtkSourceView *view) showCompletion;
	extern(C) void  function(GtkSourceView *view,int copy,int step) moveLines;
	/+* Padding for future expansion +/
	extern(C) void  function() _GtkSourceReserved1;
}


/**
 * Main Gtk struct.
 */
public struct GtkSourceBuffer{}


public struct GtkSourceBufferClass
{
	GtkTextBufferClass parentClass;
	/+* Signals +/
	extern(C) void  function(GtkSourceBuffer *buffer) undo;
	extern(C) void  function(GtkSourceBuffer *buffer) redo;
	/+* Padding for future expansion +/
	extern(C) void  function() _GtkSourceReserved1;
	extern(C) void  function() _GtkSourceReserved2;
	extern(C) void  function() _GtkSourceReserved3;
	extern(C) void  function() _GtkSourceReserved4;
}


/**
 * Main Gtk struct.
 */
public struct GtkSourceCompletion{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceCompletionContext{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceCompletionInfo{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceCompletionItem{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceCompletionProposal{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceCompletionProvider{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceGutter{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceMark{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceLanguage{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceLanguageManager{}


/**
 * Main Gtk struct.
 */
public struct GtkSourcePrintCompositor{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceStyle{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceStyleScheme{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceStyleSchemeManager{}


/*
 * Function type for setting up a tooltip for GtkSourceMark.
 * mark  :
 * the GtkSourceMark
 * user_data  :
 * user data pointer which was passed to gtk_source_view_set_mark_category_tooltip_func()
 * Returns  :
 *  a newly-allocated string that is going to be shown as tooltip text.
 */
// gchar * (*GtkSourceViewMarkTooltipFunc) (GtkSourceMark *mark,  gpointer user_data);
public alias extern(C) char *  function (GtkSourceMark*, void*) GtkSourceViewMarkTooltipFunc;

/*
 */
// void (*GtkSourceGutterDataFunc) (GtkSourceGutter *gutter,  GtkCellRenderer *cell,  gint line_number,  gboolean current_line,  gpointer data);
public alias extern(C) void  function (GtkSourceGutter*, GtkCellRenderer*, int, int, void*) GtkSourceGutterDataFunc;

/*
 */
// void (*GtkSourceGutterSizeFunc) (GtkSourceGutter *gutter,  GtkCellRenderer *cell,  gpointer data);
public alias extern(C) void  function (GtkSourceGutter*, GtkCellRenderer*, void*) GtkSourceGutterSizeFunc;
