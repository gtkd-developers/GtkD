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

module gsvc.gsvtypes;


public import gtkc.gtktypes;

enum GtkSourceBracketMatchType
{
	NONE,
	OUT_OF_RANGE,
	NOT_FOUND,
	FOUND
}
alias GtkSourceBracketMatchType SourceBracketMatchType;
/**
 * GTK_SOURCE_COMPLETION_ACTIVATION_NONE
 * none.
 * GTK_SOURCE_COMPLETION_ACTIVATION_INTERACTIVE
 * interactive activation
 * GTK_SOURCE_COMPLETION_ACTIVATION_USER_REQUESTED
 * user requested activation
 * (e.g. through a keyboard accelerator from the view)
 */
public enum GtkSourceCompletionActivation
{
	NONE = 0,
	INTERACTIVE = 1 << 0,
	USER_REQUESTED = 1 << 1
}
alias GtkSourceCompletionActivation SourceCompletionActivation;

/**
 * GTK_SOURCE_GUTTER_RENDERER_STATE_NORMAL
 * normal state
 * GTK_SOURCE_GUTTER_RENDERER_STATE_CURSOR
 * area in the renderer represents the
 * line on which the insert cursor is currently positioned
 * GTK_SOURCE_GUTTER_RENDERER_STATE_PRELIT
 * the mouse pointer is currently
 * over the activatable area of the renderer
 * GTK_SOURCE_GUTTER_RENDERER_STATE_SELECTED
 * area in the renderer represents
 * a line in the buffer which contains part of the selection
 */
public enum GtkSourceGutterRendererState
{
	NORMAL = 0,
	CURSOR = 1 << 0,
	PRELIT = 1 << 1,
	SELECTED = 1 << 2
}
alias GtkSourceGutterRendererState SourceGutterRendererState;

public enum GtkSourceGutterRendererAlignmentMode
{
	MODE_CELL,
	MODE_FIRST,
	MODE_LAST
}
alias GtkSourceGutterRendererAlignmentMode SourceGutterRendererAlignmentMode;

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
 * GtkSourceDrawSpacesFlags determine what kind of spaces whould be drawn. If none
 * of GTK_SOURCE_DRAW_SPACES_LEADING, GTK_SOURCE_DRAW_SPACES_TEXT or
 * GTK_SOURCE_DRAW_SPACES_TRAILING is specified, whitespaces at any position in
 * the line will be drawn (i.e. it has the same effect as specifying all of them).
 * GTK_SOURCE_DRAW_SPACES_SPACE
 * whether the space character should be drawn.
 * GTK_SOURCE_DRAW_SPACES_TAB
 * whether the tab character should be drawn.
 * GTK_SOURCE_DRAW_SPACES_NEWLINE
 * whether the line breaks should be drawn.
 * GTK_SOURCE_DRAW_SPACES_NBSP
 * whether the non-breaking whitespaces should be drawn.
 * GTK_SOURCE_DRAW_SPACES_LEADING
 * whether leading whitespaces should be drawn.
 * GTK_SOURCE_DRAW_SPACES_TEXT
 * whether whitespaces inside text should be drawn.
 * GTK_SOURCE_DRAW_SPACES_TRAILING
 * whether trailing whitespaces should be drawn.
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

public struct GtkTextViewClass{}

public struct GtkTextBufferClass{}

/**
 * Main Gtk struct.
 */
public struct GtkSourceBuffer{}


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
public struct GtkSourceGutterRenderer
{
	GInitiallyUnowned parent;
}


/**
 * Main Gtk struct.
 */
public struct GtkSourceGutterRendererText{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceGutterRendererPixbuf{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceMark{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceMarkAttributes{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceView{}


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


/**
 * Main Gtk struct.
 */
public struct GtkSourceUndoManager{}

