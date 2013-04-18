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

/**
 * GTK_SOURCE_BRACKET_MATCH_NONE
 * there is no bracket to match.
 * GTK_SOURCE_BRACKET_MATCH_OUT_OF_RANGE
 * matching a bracket
 *  failed because the maximum range was reached.
 * GTK_SOURCE_BRACKET_MATCH_NOT_FOUND
 * a matching bracket was not found.
 * GTK_SOURCE_BRACKET_MATCH_FOUND
 * a matching bracket was found.
 */
public enum GtkSourceBracketMatchType
{
	NONE,
	OUT_OF_RANGE,
	NOT_FOUND,
	FOUND
}
alias GtkSourceBracketMatchType SourceBracketMatchType;

/**
 * An error code used with GTK_SOURCE_COMPLETION_ERROR in a GError returned
 * from a completion-related function.
 * GTK_SOURCE_COMPLETION_ERROR_ALREADY_BOUND
 * The GtkSourceCompletionProvider
 * is already bound to the GtkSourceCompletion object.
 * GTK_SOURCE_COMPLETION_ERROR_NOT_BOUND
 * The GtkSourceCompletionProvider is
 * not bound to the GtkSourceCompletion object.
 */
public enum GtkSourceCompletionError
{
	ALREADY_BOUND = 0,
	NOT_BOUND
}
alias GtkSourceCompletionError SourceCompletionError;

/**
 * GTK_SOURCE_COMPLETION_ACTIVATION_NONE
 * None.
 * GTK_SOURCE_COMPLETION_ACTIVATION_INTERACTIVE
 * Interactive activation. By
 * default, it occurs on each insertion in the GtkTextBuffer. This can be
 * blocked temporarily with gtk_source_completion_block_interactive().
 * GTK_SOURCE_COMPLETION_ACTIVATION_USER_REQUESTED
 * User requested activation.
 * By default, it occurs when the user presses
 * Control+space.
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

/**
 * GTK_SOURCE_GUTTER_RENDERER_ALIGNMENT_MODE_CELL
 * GTK_SOURCE_GUTTER_RENDERER_ALIGNMENT_MODE_FIRST
 * GTK_SOURCE_GUTTER_RENDERER_ALIGNMENT_MODE_LAST
 */
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
	ALL = 0x7f
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
 * The virtual function table for GtkSourceCompletionProposal.
 * GTypeInterface parent;
 * The parent interface.
 * get_label ()
 * The virtual function pointer for gtk_source_completion_proposal_get_label().
 * By default, NULL is returned.
 * get_markup ()
 * The virtual function pointer for gtk_source_completion_proposal_get_markup().
 * By default, NULL is returned.
 * get_text ()
 * The virtual function pointer for gtk_source_completion_proposal_get_text().
 * By default, NULL is returned.
 * get_icon ()
 * The virtual function pointer for gtk_source_completion_proposal_get_icon().
 * By default, NULL is returned.
 * get_info ()
 * The virtual function pointer for gtk_source_completion_proposal_get_info().
 * By default, NULL is returned.
 * hash ()
 * The virtual function pointer for gtk_source_completion_proposal_hash().
 * By default, it uses a direct hash (g_direct_hash()).
 * equal ()
 * The virtual function pointer for gtk_source_completion_proposal_equal().
 * By default, it uses direct equality (g_direct_equal()).
 * changed ()
 * The function pointer for the "changed" signal.
 */
public struct GtkSourceCompletionProposalIface
{
	GTypeInterface parent;
	/+* Interface functions +/
	extern(C) char * function(GtkSourceCompletionProposal* proposal) getLabel;
	extern(C) char * function(GtkSourceCompletionProposal* proposal) getMarkup;
	extern(C) char * function(GtkSourceCompletionProposal* proposal) getText;
	extern(C) GdkPixbuf * function(GtkSourceCompletionProposal* proposal) getIcon;
	extern(C) char * function(GtkSourceCompletionProposal* proposal) getInfo;
	extern(C) uint function(GtkSourceCompletionProposal* proposal) hash;
	extern(C) int function(GtkSourceCompletionProposal* proposal, GtkSourceCompletionProposal* other) equal;
	/+* Signals +/
	extern(C) void function(GtkSourceCompletionProposal* proposal) changed;
}


/**
 * Main Gtk struct.
 */
public struct GtkSourceCompletionProvider{}


/**
 * The virtual function table for GtkSourceCompletionProvider.
 * GTypeInterface g_iface;
 * The parent interface.
 * get_name ()
 * The virtual function pointer for gtk_source_completion_provider_get_name().
 * Must be implemented.
 * get_icon ()
 * The virtual function pointer for gtk_source_completion_provider_get_icon().
 * By default, NULL is returned.
 * populate ()
 * The virtual function pointer for gtk_source_completion_provider_populate().
 * Add no proposals by default.
 * match ()
 * The virtual function pointer for gtk_source_completion_provider_match().
 * By default, TRUE is returned.
 * get_activation ()
 * The virtual function pointer for gtk_source_completion_provider_get_activation().
 * The combination of all GtkSourceCompletionActivation is returned by default.
 * get_info_widget ()
 * The virtual function pointer for gtk_source_completion_provider_get_info_widget().
 * By default, NULL is returned.
 * update_info ()
 * The virtual function pointer for gtk_source_completion_provider_update_info().
 * Does nothing by default.
 * get_start_iter ()
 * The virtual function pointer for gtk_source_completion_provider_get_start_iter().
 * By default, FALSE is returned.
 * activate_proposal ()
 * The virtual function pointer for gtk_source_completion_provider_activate_proposal().
 * By default, FALSE is returned.
 * get_interactive_delay ()
 * The virtual function pointer for gtk_source_completion_provider_get_interactive_delay().
 * By default, -1 is returned.
 * get_priority ()
 * The virtual function pointer for gtk_source_completion_provider_get_priority().
 * By default, 0 is returned.
 */
public struct GtkSourceCompletionProviderIface
{
	GTypeInterface gIface;
	extern(C) char * function(GtkSourceCompletionProvider* provider) getName;
	extern(C) GdkPixbuf * function(GtkSourceCompletionProvider* provider) getIcon;
	extern(C) void function(GtkSourceCompletionProvider* provider, GtkSourceCompletionContext* context) populate;
	extern(C) int function(GtkSourceCompletionProvider* provider, GtkSourceCompletionContext* context) match;
	extern(C) GtkSourceCompletionActivation function(GtkSourceCompletionProvider* provider) getActivation;
	extern(C) GtkWidget * function(GtkSourceCompletionProvider* provider, GtkSourceCompletionProposal* proposal) getInfoWidget;
	extern(C) void function(GtkSourceCompletionProvider* provider, GtkSourceCompletionProposal* proposal, GtkSourceCompletionInfo* info) updateInfo;
	extern(C) int function(GtkSourceCompletionProvider* provider, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal, GtkTextIter* iter) getStartIter;
	extern(C) int function(GtkSourceCompletionProvider* provider, GtkSourceCompletionProposal* proposal, GtkTextIter* iter) activateProposal;
	extern(C) int function(GtkSourceCompletionProvider* provider) getInteractiveDelay;
	extern(C) int function(GtkSourceCompletionProvider* provider) getPriority;
}


/**
 * Main Gtk struct.
 */
public struct GtkSourceCompletionWords{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceGutter{}


/**
 * Main Gtk struct.
 */
public struct GtkSourceGutterRenderer{}


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

