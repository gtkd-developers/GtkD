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

/*
 * Conversion parameters:
 * inFile  = GtkSourceBuffer.html
 * outPack = gsv
 * outFile = SourceBuffer
 * strct   = GtkSourceBuffer
 * realStrct=
 * ctorStrct=
 * clss    = SourceBuffer
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_buffer_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gsv.SourceTagTable
 * 	- gsv.SourceLanguage
 * 	- gsv.SourceTagStyle
 * 	- gsv.SourceMarker
 * 	- gtk.TextIter
 * 	- glib.Str
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkSourceLanguage* -> SourceLanguage
 * 	- GtkSourceMarker* -> SourceMarker
 * 	- GtkSourceTagStyle* -> SourceTagStyle
 * 	- GtkSourceTagTable* -> SourceTagTable
 * 	- GtkTextIter* -> TextIter
 * module aliases:
 * local aliases:
 */

module gsv.SourceBuffer;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gsvc.gsvtypes;

private import gsvc.gsv;


private import gsv.SourceTagTable;
private import gsv.SourceLanguage;
private import gsv.SourceTagStyle;
private import gsv.SourceMarker;
private import gtk.TextIter;
private import glib.Str;
private import glib.ListSG;




/**
 * Description
 * The GtkSourceBuffer object is the model for GtkSourceView widgets.
 * It extends the GtkTextBuffer object by adding features necessary to
 * display and edit source code: syntax highlighting, bracket matching
 * and markers. It also implements support for undo/redo operations.
 * To create a GtkSourceBuffer use gtk_source_buffer_new() or
 * gtk_source_buffer_new_with_language(). The second form is just a
 * convenience function which allows you to initially set a
 * GtkSourceLanguage.
 * By default highlighting is enabled, but you can disable it with
 * gtk_source_buffer_set_highlight(). This can be useful if you're not
 * using GtkSourceLanguage objects to set the highlighting patterns, and
 * instead you're manually adding GtkSourceTag objects to the buffer's
 * tag table.
 */
private import gtk.TextBuffer;
public class SourceBuffer : TextBuffer
{
	
	/** the main Gtk struct */
	protected GtkSourceBuffer* gtkSourceBuffer;
	
	
	public GtkSourceBuffer* getSourceBufferStruct()
	{
		return gtkSourceBuffer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceBuffer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceBuffer* gtkSourceBuffer)
	{
		version(noAssert)
		{
			if ( gtkSourceBuffer is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkSourceBuffer is null on constructor").newline;
				}
				else
				{
					printf("struct gtkSourceBuffer is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkSourceBuffer !is null, "struct gtkSourceBuffer is null on constructor");
		}
		super(cast(GtkTextBuffer*)gtkSourceBuffer);
		this.gtkSourceBuffer = gtkSourceBuffer;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(gboolean, SourceBuffer)[] onCanRedoListeners;
	void addOnCanRedo(void delegate(gboolean, SourceBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("can-redo" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"can-redo",
			cast(GCallback)&callBackCanRedo,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["can-redo"] = 1;
		}
		onCanRedoListeners ~= dlg;
	}
	extern(C) static void callBackCanRedo(GtkSourceBuffer* sourcebufferStruct, gboolean arg1, SourceBuffer sourceBuffer)
	{
		bool consumed = false;
		
		foreach ( void delegate(gboolean, SourceBuffer) dlg ; sourceBuffer.onCanRedoListeners )
		{
			dlg(arg1, sourceBuffer);
		}
		
		return consumed;
	}
	
	void delegate(gboolean, SourceBuffer)[] onCanUndoListeners;
	void addOnCanUndo(void delegate(gboolean, SourceBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("can-undo" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"can-undo",
			cast(GCallback)&callBackCanUndo,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["can-undo"] = 1;
		}
		onCanUndoListeners ~= dlg;
	}
	extern(C) static void callBackCanUndo(GtkSourceBuffer* sourcebufferStruct, gboolean arg1, SourceBuffer sourceBuffer)
	{
		bool consumed = false;
		
		foreach ( void delegate(gboolean, SourceBuffer) dlg ; sourceBuffer.onCanUndoListeners )
		{
			dlg(arg1, sourceBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextIter, TextIter, SourceBuffer)[] onHighlightUpdatedListeners;
	void addOnHighlightUpdated(void delegate(TextIter, TextIter, SourceBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("highlight-updated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"highlight-updated",
			cast(GCallback)&callBackHighlightUpdated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["highlight-updated"] = 1;
		}
		onHighlightUpdatedListeners ~= dlg;
	}
	extern(C) static void callBackHighlightUpdated(GtkSourceBuffer* sourcebufferStruct, GtkTextIter* arg1, GtkTextIter* arg2, SourceBuffer sourceBuffer)
	{
		bool consumed = false;
		
		foreach ( void delegate(TextIter, TextIter, SourceBuffer) dlg ; sourceBuffer.onHighlightUpdatedListeners )
		{
			dlg(new TextIter(arg1), new TextIter(arg2), sourceBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextIter, SourceBuffer)[] onMarkerUpdatedListeners;
	void addOnMarkerUpdated(void delegate(TextIter, SourceBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("marker-updated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"marker-updated",
			cast(GCallback)&callBackMarkerUpdated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["marker-updated"] = 1;
		}
		onMarkerUpdatedListeners ~= dlg;
	}
	extern(C) static void callBackMarkerUpdated(GtkSourceBuffer* sourcebufferStruct, GtkTextIter* arg1, SourceBuffer sourceBuffer)
	{
		bool consumed = false;
		
		foreach ( void delegate(TextIter, SourceBuffer) dlg ; sourceBuffer.onMarkerUpdatedListeners )
		{
			dlg(new TextIter(arg1), sourceBuffer);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new source buffer.
	 * table:
	 *  a GtkSourceTagTable, or NULL to create a new one.
	 * Returns:
	 *  a new source buffer.
	 */
	public this (SourceTagTable table)
	{
		// GtkSourceBuffer* gtk_source_buffer_new (GtkSourceTagTable *table);
		this(cast(GtkSourceBuffer*)gtk_source_buffer_new((table is null) ? null : table.getSourceTagTableStruct()) );
	}
	
	/**
	 * Creates a new source buffer using the highlighting patterns in
	 * language. This is equivalent to creating a new source buffer with
	 * the default tag table and then calling
	 * gtk_source_buffer_set_language().
	 * language:
	 *  a GtkSourceLanguage.
	 * Returns:
	 *  a new source buffer which will highlight text
	 * according to language.
	 */
	public this (SourceLanguage language)
	{
		// GtkSourceBuffer* gtk_source_buffer_new_with_language  (GtkSourceLanguage *language);
		this(cast(GtkSourceBuffer*)gtk_source_buffer_new_with_language((language is null) ? null : language.getSourceLanguageStruct()) );
	}
	
	/**
	 * Determines whether bracket match highlighting is activated for the
	 * source buffer.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * Returns:
	 *  TRUE if the source buffer will highlight matching
	 * brackets.
	 */
	public int getCheckBrackets()
	{
		// gboolean gtk_source_buffer_get_check_brackets  (GtkSourceBuffer *buffer);
		return gtk_source_buffer_get_check_brackets(gtkSourceBuffer);
	}
	
	/**
	 * Controls the bracket match highlighting function in the buffer. If
	 * activated, when you position your cursor over a bracket character
	 * (a parenthesis, a square bracket, etc.) the matching opening or
	 * closing bracket character will be highlighted. You can specify the
	 * style with the gtk_source_buffer_set_bracket_match_style()
	 * function.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * check_brackets:
	 *  TRUE if you want matching brackets highlighted.
	 */
	public void setCheckBrackets(int checkBrackets)
	{
		// void gtk_source_buffer_set_check_brackets  (GtkSourceBuffer *buffer,  gboolean check_brackets);
		gtk_source_buffer_set_check_brackets(gtkSourceBuffer, checkBrackets);
	}
	
	/**
	 * Sets the style used for highlighting matching brackets.
	 * source_buffer:
	 *  a GtkSourceBuffer.
	 * style:
	 *  the GtkSourceTagStyle specifying colors and text
	 * attributes.
	 */
	public void setBracketMatchStyle(SourceTagStyle style)
	{
		// void gtk_source_buffer_set_bracket_match_style  (GtkSourceBuffer *source_buffer,  const GtkSourceTagStyle *style);
		gtk_source_buffer_set_bracket_match_style(gtkSourceBuffer, (style is null) ? null : style.getSourceTagStyleStruct());
	}
	
	/**
	 * Determines whether text highlighting is activated in the source
	 * buffer.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * Returns:
	 *  TRUE if highlighting is enabled.
	 */
	public int getHighlight()
	{
		// gboolean gtk_source_buffer_get_highlight (GtkSourceBuffer *buffer);
		return gtk_source_buffer_get_highlight(gtkSourceBuffer);
	}
	
	/**
	 * Controls whether text is highlighted in the buffer. If highlight
	 * is TRUE, the text will be highlighted according to the patterns
	 * installed in the buffer (either set with
	 * gtk_source_buffer_set_language() or by adding individual
	 * GtkSourceTag tags to the buffer's tag table). Otherwise, any
	 * current highlighted text will be restored to the default buffer
	 * style.
	 * Tags not of GtkSourceTag type will not be removed by this option,
	 * and normal GtkTextTag priority settings apply when highlighting is
	 * enabled.
	 * If not using a GtkSourceLanguage for setting the highlighting
	 * patterns in the buffer, it is recommended for performance reasons
	 * that you add all the GtkSourceTag tags with highlighting disabled
	 * and enable it when finished.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * highlight:
	 *  TRUE if you want to activate highlighting.
	 */
	public void setHighlight(int highlight)
	{
		// void gtk_source_buffer_set_highlight (GtkSourceBuffer *buffer,  gboolean highlight);
		gtk_source_buffer_set_highlight(gtkSourceBuffer, highlight);
	}
	
	/**
	 * Determines the number of undo levels the buffer will track for
	 * buffer edits.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * Returns:
	 *  the maximum number of possible undo levels.
	 */
	public int getMaxUndoLevels()
	{
		// gint gtk_source_buffer_get_max_undo_levels  (GtkSourceBuffer *buffer);
		return gtk_source_buffer_get_max_undo_levels(gtkSourceBuffer);
	}
	
	/**
	 * Sets the number of undo levels for user actions the buffer will
	 * track. If the number of user actions exceeds the limit set by this
	 * function, older actions will be discarded.
	 * A new action is started whenever the function
	 * gtk_text_buffer_begin_user_action() is called. In general, this
	 * happens whenever the user presses any key which modifies the
	 * buffer, but the undo manager will try to merge similar consecutive
	 * actions, such as multiple character insertions into one action.
	 * But, inserting a newline does start a new action.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * max_undo_levels:
	 *  the desired maximum number of undo levels.
	 */
	public void setMaxUndoLevels(int maxUndoLevels)
	{
		// void gtk_source_buffer_set_max_undo_levels  (GtkSourceBuffer *buffer,  gint max_undo_levels);
		gtk_source_buffer_set_max_undo_levels(gtkSourceBuffer, maxUndoLevels);
	}
	
	/**
	 * Determines the GtkSourceLanguage used by the buffer. The returned
	 * object should not be unreferenced by the user.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * Returns:
	 *  the GtkSourceLanguage set by
	 * gtk_source_buffer_set_language(), or NULL.
	 */
	public SourceLanguage getLanguage()
	{
		// GtkSourceLanguage* gtk_source_buffer_get_language  (GtkSourceBuffer *buffer);
		return new SourceLanguage( gtk_source_buffer_get_language(gtkSourceBuffer) );
	}
	
	/**
	 * Sets the GtkSourceLanguage the source buffer will use, adding
	 * GtkSourceTag tags with the language's patterns and setting the
	 * escape character with gtk_source_buffer_set_escape_char(). Note
	 * that this will remove any GtkSourceTag tags currently in the
	 * buffer's tag table. The buffer holds a reference to the language
	 * set.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * language:
	 *  a GtkSourceLanguage to set, or NULL.
	 */
	public void setLanguage(SourceLanguage language)
	{
		// void gtk_source_buffer_set_language (GtkSourceBuffer *buffer,  GtkSourceLanguage *language);
		gtk_source_buffer_set_language(gtkSourceBuffer, (language is null) ? null : language.getSourceLanguageStruct());
	}
	
	/**
	 * Determines the escaping character used by the source buffer
	 * highlighting engine.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * Returns:
	 *  the UTF-8 character for the escape character the
	 * buffer is using.
	 */
	public gunichar getEscapeChar()
	{
		// gunichar gtk_source_buffer_get_escape_char  (GtkSourceBuffer *buffer);
		return gtk_source_buffer_get_escape_char(gtkSourceBuffer);
	}
	
	/**
	 * Sets the escape character to be used by the highlighting engine.
	 * When performing the initial analysis, the engine will discard a
	 * matching syntax pattern if it's prefixed with an odd number of
	 * escape characters. This allows for example to correctly highlight
	 * strings with escaped quotes embedded.
	 * This setting affects only syntax patterns (i.e. those defined in
	 * GtkSyntaxTag tags).
	 * buffer:
	 *  a GtkSourceBuffer.
	 * escape_char:
	 *  the escape character the buffer should use.
	 */
	public void setEscapeChar(gunichar escapeChar)
	{
		// void gtk_source_buffer_set_escape_char  (GtkSourceBuffer *buffer,  gunichar escape_char);
		gtk_source_buffer_set_escape_char(gtkSourceBuffer, escapeChar);
	}
	
	/**
	 * Determines whether a source buffer can undo the last action.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * Returns:
	 *  TRUE if it's possible to undo the last action.
	 */
	public int canUndo()
	{
		// gboolean gtk_source_buffer_can_undo (GtkSourceBuffer *buffer);
		return gtk_source_buffer_can_undo(gtkSourceBuffer);
	}
	
	/**
	 * Determines whether a source buffer can redo the last action
	 * (i.e. if the last operation was an undo).
	 * buffer:
	 *  a GtkSourceBuffer.
	 * Returns:
	 *  TRUE if a redo is possible.
	 */
	public int canRedo()
	{
		// gboolean gtk_source_buffer_can_redo (GtkSourceBuffer *buffer);
		return gtk_source_buffer_can_redo(gtkSourceBuffer);
	}
	
	/**
	 * Undoes the last user action which modified the buffer. Use
	 * gtk_source_buffer_can_undo() to check whether a call to this
	 * function will have any effect.
	 * Actions are defined as groups of operations between a call to
	 * gtk_text_buffer_begin_user_action() and
	 * gtk_text_buffer_end_user_action(), or sequences of similar edits
	 * (inserts or deletes) on the same line.
	 * buffer:
	 *  a GtkSourceBuffer.
	 */
	public void undo()
	{
		// void gtk_source_buffer_undo (GtkSourceBuffer *buffer);
		gtk_source_buffer_undo(gtkSourceBuffer);
	}
	
	/**
	 * Redoes the last undo operation. Use gtk_source_buffer_can_redo()
	 * to check whether a call to this function will have any effect.
	 * buffer:
	 *  a GtkSourceBuffer.
	 */
	public void redo()
	{
		// void gtk_source_buffer_redo (GtkSourceBuffer *buffer);
		gtk_source_buffer_redo(gtkSourceBuffer);
	}
	
	/**
	 * Marks the beginning of a not undoable action on the buffer,
	 * disabling the undo manager. Typically you would call this function
	 * before initially setting the contents of the buffer (e.g. when
	 * loading a file in a text editor).
	 * You may nest gtk_source_buffer_begin_not_undoable_action() /
	 * gtk_source_buffer_end_not_undoable_action() blocks.
	 * buffer:
	 *  a GtkSourceBuffer.
	 */
	public void beginNotUndoableAction()
	{
		// void gtk_source_buffer_begin_not_undoable_action  (GtkSourceBuffer *buffer);
		gtk_source_buffer_begin_not_undoable_action(gtkSourceBuffer);
	}
	
	/**
	 * Marks the end of a not undoable action on the buffer. When the
	 * last not undoable block is closed through the call to this
	 * function, the list of undo actions is cleared and the undo manager
	 * is re-enabled.
	 * buffer:
	 *  a GtkSourceBuffer.
	 */
	public void endNotUndoableAction()
	{
		// void gtk_source_buffer_end_not_undoable_action  (GtkSourceBuffer *buffer);
		gtk_source_buffer_end_not_undoable_action(gtkSourceBuffer);
	}
	
	/**
	 * Creates a marker in the buffer of type type. A marker is
	 * semantically very similar to a GtkTextMark, except it has a type
	 * which is used by the GtkSourceView displaying the buffer to show a
	 * pixmap on the left margin, at the line the marker is in. Because
	 * of this, a marker is generally associated to a line and not a
	 * character position. Markers are also accessible through a position
	 * or range in the buffer.
	 * Markers are implemented using GtkTextMark, so all characteristics
	 * and restrictions to marks apply to markers too. These includes
	 * life cycle issues and "mark-set" and "mark-deleted" signal
	 * emissions.
	 * Like a GtkTextMark, a GtkSourceMarker can be anonymous if the
	 * passed name is NULL. Also, the buffer owns the markers so you
	 * shouldn't unreference it.
	 * Markers always have left gravity and are moved to the beginning of
	 * the line when the user deletes the line they were in. Also, if the
	 * user deletes a region of text which contained lines with markers,
	 * those are deleted.
	 * Typical uses for a marker are bookmarks, breakpoints, current
	 * executing instruction indication in a source file, etc..
	 * buffer:
	 *  a GtkSourceBuffer.
	 * name:
	 *  the name of the marker, or NULL.
	 * type:
	 *  a string defining the marker type, or NULL.
	 * where:
	 *  location to place the marker.
	 * Returns:
	 *  a new GtkSourceMarker, owned by the buffer.
	 */
	public SourceMarker createMarker(char[] name, char[] type, TextIter where)
	{
		// GtkSourceMarker* gtk_source_buffer_create_marker  (GtkSourceBuffer *buffer,  const gchar *name,  const gchar *type,  const GtkTextIter *where);
		return new SourceMarker( gtk_source_buffer_create_marker(gtkSourceBuffer, Str.toStringz(name), Str.toStringz(type), (where is null) ? null : where.getTextIterStruct()) );
	}
	
	/**
	 * Moves marker to the new location where.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * marker:
	 *  a GtkSourceMarker in buffer.
	 * where:
	 *  the new location for the marker.
	 */
	public void moveMarker(SourceMarker marker, TextIter where)
	{
		// void gtk_source_buffer_move_marker (GtkSourceBuffer *buffer,  GtkSourceMarker *marker,  const GtkTextIter *where);
		gtk_source_buffer_move_marker(gtkSourceBuffer, (marker is null) ? null : marker.getSourceMarkerStruct(), (where is null) ? null : where.getTextIterStruct());
	}
	
	/**
	 * Deletes marker from the source buffer. The same conditions as for
	 * GtkTextMark apply here. The marker is no longer accessible from
	 * the buffer, but if you held a reference to it, it will not be
	 * destroyed.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * marker:
	 *  a GtkSourceMarker in the buffer.
	 */
	public void deleteMarker(SourceMarker marker)
	{
		// void gtk_source_buffer_delete_marker (GtkSourceBuffer *buffer,  GtkSourceMarker *marker);
		gtk_source_buffer_delete_marker(gtkSourceBuffer, (marker is null) ? null : marker.getSourceMarkerStruct());
	}
	
	/**
	 * Looks up the GtkSourceMarker named name in buffer, returning
	 * NULL if it doesn't exists.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * name:
	 *  name of the marker to retrieve.
	 * Returns:
	 *  the GtkSourceMarker whose name is name, or NULL.
	 */
	public SourceMarker getMarker(char[] name)
	{
		// GtkSourceMarker* gtk_source_buffer_get_marker  (GtkSourceBuffer *buffer,  const gchar *name);
		return new SourceMarker( gtk_source_buffer_get_marker(gtkSourceBuffer, Str.toStringz(name)) );
	}
	
	/**
	 * Returns an ordered (by position) GSList of
	 * GtkSourceMarker objects inside the region delimited by the
	 * GtkTextIter begin and end. The iters may be in any order.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * begin:
	 *  beginning of the range.
	 * end:
	 *  end of the range.
	 * Returns:
	 *  a GSList of the GtkSourceMarker inside the range.
	 */
	public ListSG getMarkersInRegion(TextIter begin, TextIter end)
	{
		// GSList* gtk_source_buffer_get_markers_in_region  (GtkSourceBuffer *buffer,  const GtkTextIter *begin,  const GtkTextIter *end);
		return new ListSG( gtk_source_buffer_get_markers_in_region(gtkSourceBuffer, (begin is null) ? null : begin.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct()) );
	}
	
	/**
	 * Returns the first (nearest to the top of the buffer) marker in
	 * buffer.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * Returns:
	 *  a reference to the first GtkSourceMarker, or NULL if
	 * there are no markers in the buffer.
	 */
	public SourceMarker getFirstMarker()
	{
		// GtkSourceMarker* gtk_source_buffer_get_first_marker  (GtkSourceBuffer *buffer);
		return new SourceMarker( gtk_source_buffer_get_first_marker(gtkSourceBuffer) );
	}
	
	/**
	 * Returns the last (nearest to the bottom of the buffer) marker in
	 * buffer.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * Returns:
	 *  a reference to the last GtkSourceMarker, or NULL if
	 * there are no markers in the buffer.
	 */
	public SourceMarker getLastMarker()
	{
		// GtkSourceMarker* gtk_source_buffer_get_last_marker  (GtkSourceBuffer *buffer);
		return new SourceMarker( gtk_source_buffer_get_last_marker(gtkSourceBuffer) );
	}
	
	/**
	 * Initializes iter at the location of marker.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * iter:
	 *  a GtkTextIter to initialize.
	 * marker:
	 *  a GtkSourceMarker of buffer.
	 */
	public void getIterAtMarker(TextIter iter, SourceMarker marker)
	{
		// void gtk_source_buffer_get_iter_at_marker  (GtkSourceBuffer *buffer,  GtkTextIter *iter,  GtkSourceMarker *marker);
		gtk_source_buffer_get_iter_at_marker(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(), (marker is null) ? null : marker.getSourceMarkerStruct());
	}
	
	/**
	 * Returns the nearest marker to the right of iter. If there are
	 * multiple markers at the same position, this function will always
	 * return the first one (from the internal linked list), even if
	 * starting the search exactly at its location. You can get the
	 * others using gtk_source_marker_next().
	 * buffer:
	 *  a GtkSourceBuffer.
	 * iter:
	 *  the location to start searching from.
	 * Returns:
	 *  the GtkSourceMarker nearest to the right of iter,
	 * or NULL if there are no more markers after iter.
	 */
	public SourceMarker getNextMarker(TextIter iter)
	{
		// GtkSourceMarker* gtk_source_buffer_get_next_marker  (GtkSourceBuffer *buffer,  GtkTextIter *iter);
		return new SourceMarker( gtk_source_buffer_get_next_marker(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct()) );
	}
	
	/**
	 * Returns the nearest marker to the left of iter. If there are
	 * multiple markers at the same position, this function will always
	 * return the last one (from the internal linked list), even if
	 * starting the search exactly at its location. You can get the
	 * others using gtk_source_marker_prev().
	 * buffer:
	 *  a GtkSourceBuffer.
	 * iter:
	 *  the location to start searching from.
	 * Returns:
	 *  the GtkSourceMarker nearest to the left of iter,
	 * or NULL if there are no more markers before iter.
	 * Property Details
	 * The "check-brackets" property
	 *  "check-brackets" gboolean : Read / Write
	 * Whether to check and highlight matching brackets.
	 * Default value: TRUE
	 */
	public SourceMarker getPrevMarker(TextIter iter)
	{
		// GtkSourceMarker* gtk_source_buffer_get_prev_marker  (GtkSourceBuffer *buffer,  GtkTextIter *iter);
		return new SourceMarker( gtk_source_buffer_get_prev_marker(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct()) );
	}
	
	
	
	
	
	
	
}
