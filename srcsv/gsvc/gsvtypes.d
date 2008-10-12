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

module gsvc.gsvtypes;


public import gtkc.gtktypes;

/**
 * GTK_SOURCE_SMART_HOME_END_DISABLED
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
 */
public enum GtkSourceDrawSpacesFlags
{
	SPACE = 1 << 0,
	TAB = 1 << 1,
	NEWLINE = 1 << 2,
	ALL = (SPACE |
	TAB |
	NEWLINE)
}
alias GtkSourceDrawSpacesFlags SourceDrawSpacesFlags;

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
	/+* Padding for future expansion +/
	extern(C) void  function() _GtkSourceReserved1;
	extern(C) void  function() _GtkSourceReserved2;
	extern(C) void  function() _GtkSourceReserved3;
	extern(C) void  function() _GtkSourceReserved4;
}


/**
 * Main Gtk struct.
 */
public struct GtkSourceBuffer{}


public struct GtkSourceBufferClass
{
	GtkTextBufferClass parentClass;
	/+* Padding for future expansion +/
	extern(C) void  function() _GtkSourceReserved1;
	extern(C) void  function() _GtkSourceReserved2;
	extern(C) void  function() _GtkSourceReserved3;
	extern(C) void  function() _GtkSourceReserved4;
	extern(C) void  function() _GtkSourceReserved5;
	extern(C) void  function() _GtkSourceReserved6;
}


/**
 * Main Gtk struct.
 */
public struct GtkSourceMark{}


/**
 * Main Gtk struct.
 * GtkSourceLanguage structure contains only
 * private members and should not be accessed directly.
 */
public struct GtkSourceLanguage{}


/**
 * Main Gtk struct.
 * GtkSourceLanguageManager structure contains only
 * private members and should not be accessed directly.
 */
public struct GtkSourceLanguageManager{}


/**
 * Main Gtk struct.
 */
public struct GtkSourcePrintCompositor{}


/**
 * Main Gtk struct.
 * The GtkSourceStyle structure is used to describe text attributes
 * which are set when given style is used.
 */
public struct GtkSourceStyle{}


/**
 * Main Gtk struct.
 * GtkSourceStyleScheme structure contains only
 * private members and should not be accessed directly.
 */
public struct GtkSourceStyleScheme{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceStyleSchemeManager{}

