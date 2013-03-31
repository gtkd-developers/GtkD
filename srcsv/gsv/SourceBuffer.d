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
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListSG
 * 	- gsv.SourceLanguage
 * 	- gsv.SourceMark
 * 	- gsv.SourceStyleScheme
 * 	- gsv.SourceUndoManager
 * 	- gsv.SourceUndoManagerIF
 * 	- gtk.TextIter
 * 	- gtk.TextTagTable
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkSourceLanguage* -> SourceLanguage
 * 	- GtkSourceMark* -> SourceMark
 * 	- GtkSourceStyleScheme* -> SourceStyleScheme
 * 	- GtkSourceUndoManager* -> SourceUndoManagerIF
 * 	- GtkTextIter* -> TextIter
 * 	- GtkTextTagTable* -> TextTagTable
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceBuffer;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListSG;
private import gsv.SourceLanguage;
private import gsv.SourceMark;
private import gsv.SourceStyleScheme;
private import gsv.SourceUndoManager;
private import gsv.SourceUndoManagerIF;
private import gtk.TextIter;
private import gtk.TextTagTable;



private import gtk.TextBuffer;

/**
 * The GtkSourceBuffer object is the model for GtkSourceView widgets.
 * It extends the GtkTextBuffer object by adding features useful to display
 * and edit source code as syntax highlighting and bracket matching. It
 * also implements support for undo/redo operations.
 *
 * To create a GtkSourceBuffer use gtk_source_buffer_new() or
 * gtk_source_buffer_new_with_language(). The second form is just a convenience
 * function which allows you to initially set a GtkSourceLanguage.
 *
 * By default highlighting is enabled, but you can disable it with
 * gtk_source_buffer_set_highlight_syntax().
 */
public class SourceBuffer : TextBuffer
{
	
	/** the main Gtk struct */
	protected GtkSourceBuffer* gtkSourceBuffer;
	
	
	public GtkSourceBuffer* getSourceBufferStruct()
	{
		return gtkSourceBuffer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceBuffer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceBuffer* gtkSourceBuffer)
	{
		super(cast(GtkTextBuffer*)gtkSourceBuffer);
		this.gtkSourceBuffer = gtkSourceBuffer;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceBuffer = cast(GtkSourceBuffer*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(TextIter, GtkSourceBracketMatchType, SourceBuffer)[] onBracketMatchedListeners;
	/**
	 * Sets iter to a valid iterator pointing to the matching bracket
	 * if state is GTK_SOURCE_BRACKET_MATCH_FOUND. Otherwise iter is
	 * meaningless.
	 * Since 2.12
	 */
	void addOnBracketMatched(void delegate(TextIter, GtkSourceBracketMatchType, SourceBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("bracket-matched" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"bracket-matched",
			cast(GCallback)&callBackBracketMatched,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["bracket-matched"] = 1;
		}
		onBracketMatchedListeners ~= dlg;
	}
	extern(C) static void callBackBracketMatched(GtkSourceBuffer* bufferStruct, GtkTextIter* iter, GtkSourceBracketMatchType state, SourceBuffer _sourceBuffer)
	{
		foreach ( void delegate(TextIter, GtkSourceBracketMatchType, SourceBuffer) dlg ; _sourceBuffer.onBracketMatchedListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(iter), state, _sourceBuffer);
		}
	}
	
	void delegate(TextIter, TextIter, SourceBuffer)[] onHighlightUpdatedListeners;
	/**
	 */
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
	extern(C) static void callBackHighlightUpdated(GtkSourceBuffer* sourcebufferStruct, GtkTextIter* arg1, GtkTextIter* arg2, SourceBuffer _sourceBuffer)
	{
		foreach ( void delegate(TextIter, TextIter, SourceBuffer) dlg ; _sourceBuffer.onHighlightUpdatedListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(arg1), ObjectG.getDObject!(TextIter)(arg2), _sourceBuffer);
		}
	}
	
	void delegate(SourceBuffer)[] onRedoListeners;
	/**
	 */
	void addOnRedo(void delegate(SourceBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("redo" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"redo",
			cast(GCallback)&callBackRedo,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["redo"] = 1;
		}
		onRedoListeners ~= dlg;
	}
	extern(C) static void callBackRedo(GtkSourceBuffer* sourcebufferStruct, SourceBuffer _sourceBuffer)
	{
		foreach ( void delegate(SourceBuffer) dlg ; _sourceBuffer.onRedoListeners )
		{
			dlg(_sourceBuffer);
		}
	}
	
	void delegate(GtkTextMark*, SourceBuffer)[] onSourceMarkUpdatedListeners;
	/**
	 * The ::source_mark_updated signal is emitted each time
	 * a mark is added to, moved or removed from the buffer.
	 */
	void addOnSourceMarkUpdated(void delegate(GtkTextMark*, SourceBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("source-mark-updated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"source-mark-updated",
			cast(GCallback)&callBackSourceMarkUpdated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["source-mark-updated"] = 1;
		}
		onSourceMarkUpdatedListeners ~= dlg;
	}
	extern(C) static void callBackSourceMarkUpdated(GtkSourceBuffer* bufferStruct, GtkTextMark* arg1, SourceBuffer _sourceBuffer)
	{
		foreach ( void delegate(GtkTextMark*, SourceBuffer) dlg ; _sourceBuffer.onSourceMarkUpdatedListeners )
		{
			dlg(arg1, _sourceBuffer);
		}
	}
	
	void delegate(SourceBuffer)[] onUndoListeners;
	/**
	 * See Also
	 * GtkTextBuffer,GtkSourceView
	 */
	void addOnUndo(void delegate(SourceBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("undo" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"undo",
			cast(GCallback)&callBackUndo,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["undo"] = 1;
		}
		onUndoListeners ~= dlg;
	}
	extern(C) static void callBackUndo(GtkSourceBuffer* sourcebufferStruct, SourceBuffer _sourceBuffer)
	{
		foreach ( void delegate(SourceBuffer) dlg ; _sourceBuffer.onUndoListeners )
		{
			dlg(_sourceBuffer);
		}
	}
	
	
	/**
	 * Creates a new source buffer.
	 * Params:
	 * table = a GtkTextTagTable, or NULL to create a new one. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TextTagTable table)
	{
		// GtkSourceBuffer * gtk_source_buffer_new (GtkTextTagTable *table);
		auto p = gtk_source_buffer_new((table is null) ? null : table.getTextTagTableStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_buffer_new((table is null) ? null : table.getTextTagTableStruct())");
		}
		this(cast(GtkSourceBuffer*) p);
	}
	
	/**
	 * Creates a new source buffer using the highlighting patterns in
	 * language. This is equivalent to creating a new source buffer with
	 * a new tag table and then calling gtk_source_buffer_set_language().
	 * Params:
	 * language = a GtkSourceLanguage.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (SourceLanguage language)
	{
		// GtkSourceBuffer * gtk_source_buffer_new_with_language (GtkSourceLanguage *language);
		auto p = gtk_source_buffer_new_with_language((language is null) ? null : language.getSourceLanguageStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_buffer_new_with_language((language is null) ? null : language.getSourceLanguageStruct())");
		}
		this(cast(GtkSourceBuffer*) p);
	}
	
	/**
	 * Controls whether syntax is highlighted in the buffer. If highlight
	 * is TRUE, the text will be highlighted according to the syntax
	 * patterns specified in the language set with
	 * gtk_source_buffer_set_language(). If highlight is FALSE, syntax highlighting
	 * is disabled and all the GtkTextTag objects that have been added by the
	 * syntax highlighting engine are removed from the buffer.
	 * Params:
	 * highlight = TRUE to enable syntax highlighting, FALSE to disable it.
	 */
	public void setHighlightSyntax(int highlight)
	{
		// void gtk_source_buffer_set_highlight_syntax  (GtkSourceBuffer *buffer,  gboolean highlight);
		gtk_source_buffer_set_highlight_syntax(gtkSourceBuffer, highlight);
	}
	
	/**
	 * Determines whether syntax highlighting is activated in the source
	 * buffer.
	 * Returns: TRUE if syntax highlighting is enabled, FALSE otherwise.
	 */
	public int getHighlightSyntax()
	{
		// gboolean gtk_source_buffer_get_highlight_syntax  (GtkSourceBuffer *buffer);
		return gtk_source_buffer_get_highlight_syntax(gtkSourceBuffer);
	}
	
	/**
	 * Associate a GtkSourceLanguage with the buffer. If language is
	 * not-NULL and syntax highlighting is enabled (see gtk_source_buffer_set_highlight_syntax()),
	 * the syntax patterns defined in language will be used to highlight the text
	 * contained in the buffer. If language is NULL, the text contained in the
	 * buffer is not highlighted.
	 * The buffer holds a reference to language.
	 * Params:
	 * language = a GtkSourceLanguage to set, or NULL. [allow-none]
	 */
	public void setLanguage(SourceLanguage language)
	{
		// void gtk_source_buffer_set_language (GtkSourceBuffer *buffer,  GtkSourceLanguage *language);
		gtk_source_buffer_set_language(gtkSourceBuffer, (language is null) ? null : language.getSourceLanguageStruct());
	}
	
	/**
	 * Returns the GtkSourceLanguage associated with the buffer,
	 * see gtk_source_buffer_set_language(). The returned object should not be
	 * unreferenced by the user.
	 * Returns: the GtkSourceLanguage associated with the buffer, or NULL. [transfer none]
	 */
	public SourceLanguage getLanguage()
	{
		// GtkSourceLanguage * gtk_source_buffer_get_language (GtkSourceBuffer *buffer);
		auto p = gtk_source_buffer_get_language(gtkSourceBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceLanguage)(cast(GtkSourceLanguage*) p);
	}
	
	/**
	 * Controls the bracket match highlighting function in the buffer. If
	 * activated, when you position your cursor over a bracket character
	 * (a parenthesis, a square bracket, etc.) the matching opening or
	 * closing bracket character will be highlighted.
	 * Params:
	 * highlight = TRUE if you want matching brackets highlighted.
	 */
	public void setHighlightMatchingBrackets(int highlight)
	{
		// void gtk_source_buffer_set_highlight_matching_brackets  (GtkSourceBuffer *buffer,  gboolean highlight);
		gtk_source_buffer_set_highlight_matching_brackets(gtkSourceBuffer, highlight);
	}
	
	/**
	 * Determines whether bracket match highlighting is activated for the
	 * source buffer.
	 * Returns: TRUE if the source buffer will highlight matching brackets.
	 */
	public int getHighlightMatchingBrackets()
	{
		// gboolean gtk_source_buffer_get_highlight_matching_brackets  (GtkSourceBuffer *buffer);
		return gtk_source_buffer_get_highlight_matching_brackets(gtkSourceBuffer);
	}
	
	/**
	 * Sets style scheme used by the buffer. If scheme is NULL no
	 * style scheme is used.
	 * Params:
	 * scheme = a GtkSourceStyleScheme or NULL. [allow-none]
	 */
	public void setStyleScheme(SourceStyleScheme scheme)
	{
		// void gtk_source_buffer_set_style_scheme (GtkSourceBuffer *buffer,  GtkSourceStyleScheme *scheme);
		gtk_source_buffer_set_style_scheme(gtkSourceBuffer, (scheme is null) ? null : scheme.getSourceStyleSchemeStruct());
	}
	
	/**
	 * Returns the GtkSourceStyleScheme associated with the buffer,
	 * see gtk_source_buffer_set_style_scheme().
	 * The returned object should not be unreferenced by the user.
	 * Returns: the GtkSourceStyleScheme associated with the buffer, or NULL. [transfer none]
	 */
	public SourceStyleScheme getStyleScheme()
	{
		// GtkSourceStyleScheme * gtk_source_buffer_get_style_scheme  (GtkSourceBuffer *buffer);
		auto p = gtk_source_buffer_get_style_scheme(gtkSourceBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceStyleScheme)(cast(GtkSourceStyleScheme*) p);
	}
	
	/**
	 * Determines the number of undo levels the buffer will track for
	 * buffer edits.
	 * Returns: the maximum number of possible undo levels or -1 if no limit is set.
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
	 * If max_undo_levels is -1, no limit is set.
	 * A new action is started whenever the function
	 * gtk_text_buffer_begin_user_action() is called. In general, this
	 * happens whenever the user presses any key which modifies the
	 * buffer, but the undo manager will try to merge similar consecutive
	 * actions, such as multiple character insertions into one action.
	 * But, inserting a newline does start a new action.
	 * Params:
	 * maxUndoLevels = the desired maximum number of undo levels.
	 */
	public void setMaxUndoLevels(int maxUndoLevels)
	{
		// void gtk_source_buffer_set_max_undo_levels  (GtkSourceBuffer *buffer,  gint max_undo_levels);
		gtk_source_buffer_set_max_undo_levels(gtkSourceBuffer, maxUndoLevels);
	}
	
	/**
	 * Redoes the last undo operation. Use gtk_source_buffer_can_redo()
	 * to check whether a call to this function will have any effect.
	 */
	public void redo()
	{
		// void gtk_source_buffer_redo (GtkSourceBuffer *buffer);
		gtk_source_buffer_redo(gtkSourceBuffer);
	}
	
	/**
	 * Undoes the last user action which modified the buffer. Use
	 * gtk_source_buffer_can_undo() to check whether a call to this
	 * function will have any effect.
	 * Actions are defined as groups of operations between a call to
	 * gtk_text_buffer_begin_user_action() and
	 * gtk_text_buffer_end_user_action(), or sequences of similar edits
	 * (inserts or deletes) on the same line.
	 */
	public void undo()
	{
		// void gtk_source_buffer_undo (GtkSourceBuffer *buffer);
		gtk_source_buffer_undo(gtkSourceBuffer);
	}
	
	/**
	 * Determines whether a source buffer can redo the last action
	 * (i.e. if the last operation was an undo).
	 * Returns: TRUE if a redo is possible.
	 */
	public int canRedo()
	{
		// gboolean gtk_source_buffer_can_redo (GtkSourceBuffer *buffer);
		return gtk_source_buffer_can_redo(gtkSourceBuffer);
	}
	
	/**
	 * Determines whether a source buffer can undo the last action.
	 * Returns: TRUE if it's possible to undo the last action.
	 */
	public int canUndo()
	{
		// gboolean gtk_source_buffer_can_undo (GtkSourceBuffer *buffer);
		return gtk_source_buffer_can_undo(gtkSourceBuffer);
	}
	
	/**
	 * Marks the beginning of a not undoable action on the buffer,
	 * disabling the undo manager. Typically you would call this function
	 * before initially setting the contents of the buffer (e.g. when
	 * loading a file in a text editor).
	 * You may nest gtk_source_buffer_begin_not_undoable_action() /
	 * gtk_source_buffer_end_not_undoable_action() blocks.
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
	 */
	public void endNotUndoableAction()
	{
		// void gtk_source_buffer_end_not_undoable_action  (GtkSourceBuffer *buffer);
		gtk_source_buffer_end_not_undoable_action(gtkSourceBuffer);
	}
	
	/**
	 * Forces buffer to analyze and highlight the given area synchronously.
	 * Note
	 *  This is a potentially slow operation and should be used only
	 *  when you need to make sure that some text not currently
	 *  visible is highlighted, for instance before printing.
	 * Params:
	 * start = start of the area to highlight.
	 * end = end of the area to highlight.
	 */
	public void ensureHighlight(TextIter start, TextIter end)
	{
		// void gtk_source_buffer_ensure_highlight (GtkSourceBuffer *buffer,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_source_buffer_ensure_highlight(gtkSourceBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Creates a source mark in the buffer of category category. A source mark is
	 * a GtkTextMark but organised into categories. Depending on the category
	 * a pixbuf can be specified that will be displayed along the line of the mark.
	 * Like a GtkTextMark, a GtkSourceMark can be anonymous if the
	 * passed name is NULL. Also, the buffer owns the marks so you
	 * shouldn't unreference it.
	 * Marks always have left gravity and are moved to the beginning of
	 * the line when the user deletes the line they were in.
	 * Typical uses for a source mark are bookmarks, breakpoints, current
	 * executing instruction indication in a source file, etc..
	 * Since 2.2
	 * Params:
	 * name = the name of the mark, or NULL. [allow-none]
	 * category = a string defining the mark category.
	 * where = location to place the mark.
	 * Returns: a new GtkSourceMark, owned by the buffer. [transfer none]
	 */
	public SourceMark createSourceMark(string name, string category, TextIter where)
	{
		// GtkSourceMark * gtk_source_buffer_create_source_mark  (GtkSourceBuffer *buffer,  const gchar *name,  const gchar *category,  const GtkTextIter *where);
		auto p = gtk_source_buffer_create_source_mark(gtkSourceBuffer, Str.toStringz(name), Str.toStringz(category), (where is null) ? null : where.getTextIterStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceMark)(cast(GtkSourceMark*) p);
	}
	
	/**
	 * Moves iter to the position of the next GtkSourceMark of the given
	 * category. Returns TRUE if iter was moved. If category is NULL, the
	 * next source mark can be of any category.
	 * Since 2.2
	 * Params:
	 * iter = an iterator.
	 * category = category to search for, or NULL. [allow-none]
	 * Returns: whether iter was moved.
	 */
	public int forwardIterToSourceMark(TextIter iter, string category)
	{
		// gboolean gtk_source_buffer_forward_iter_to_source_mark  (GtkSourceBuffer *buffer,  GtkTextIter *iter,  const gchar *category);
		return gtk_source_buffer_forward_iter_to_source_mark(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(category));
	}
	
	/**
	 * Moves iter to the position of the previous GtkSourceMark of the given
	 * category. Returns TRUE if iter was moved. If category is NULL, the
	 * previous source mark can be of any category.
	 * Since 2.2
	 * Params:
	 * iter = an iterator.
	 * category = category to search for, or NULL. [allow-none]
	 * Returns: whether iter was moved.
	 */
	public int backwardIterToSourceMark(TextIter iter, string category)
	{
		// gboolean gtk_source_buffer_backward_iter_to_source_mark  (GtkSourceBuffer *buffer,  GtkTextIter *iter,  const gchar *category);
		return gtk_source_buffer_backward_iter_to_source_mark(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(category));
	}
	
	/**
	 * Returns the list of marks of the given category at line.
	 * If category is NULL, all marks at line are returned.
	 * Since 2.2
	 * Params:
	 * line = a line number.
	 * category = category to search for, or NULL. [allow-none]
	 * Returns: a newly allocated GSList. [element-type GtkSource.Mark][transfer container]
	 */
	public ListSG getSourceMarksAtLine(int line, string category)
	{
		// GSList * gtk_source_buffer_get_source_marks_at_line  (GtkSourceBuffer *buffer,  gint line,  const gchar *category);
		auto p = gtk_source_buffer_get_source_marks_at_line(gtkSourceBuffer, line, Str.toStringz(category));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Returns the list of marks of the given category at iter. If category
	 * is NULL it returns all marks at iter.
	 * Since 2.2
	 * Params:
	 * iter = an iterator.
	 * category = category to search for, or NULL. [allow-none]
	 * Returns: a newly allocated GSList. [element-type GtkSource.Mark][transfer container]
	 */
	public ListSG getSourceMarksAtIter(TextIter iter, string category)
	{
		// GSList * gtk_source_buffer_get_source_marks_at_iter  (GtkSourceBuffer *buffer,  GtkTextIter *iter,  const gchar *category);
		auto p = gtk_source_buffer_get_source_marks_at_iter(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(category));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Remove all marks of category between start and end from the buffer.
	 * If category is NULL, all marks in the range will be removed.
	 * Since 2.2
	 * Params:
	 * start = a GtkTextIter.
	 * end = a GtkTextIter.
	 * category = category to search for, or NULL. [allow-none]
	 */
	public void removeSourceMarks(TextIter start, TextIter end, string category)
	{
		// void gtk_source_buffer_remove_source_marks  (GtkSourceBuffer *buffer,  const GtkTextIter *start,  const GtkTextIter *end,  const gchar *category);
		gtk_source_buffer_remove_source_marks(gtkSourceBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), Str.toStringz(category));
	}
	
	/**
	 * Check if the class context_klass is set on iter.
	 * Since 2.10
	 * Params:
	 * iter = a GtkTextIter.
	 * contextClass = class to search for.
	 */
	public int iterHasContextClass(TextIter iter, string contextClass)
	{
		// gboolean gtk_source_buffer_iter_has_context_class  (GtkSourceBuffer *buffer,  const GtkTextIter *iter,  const gchar *context_class);
		return gtk_source_buffer_iter_has_context_class(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(contextClass));
	}
	
	/**
	 * Get all defined context classes at iter.
	 * Since 2.10
	 * Params:
	 * iter = a GtkTextIter.
	 * Returns: a new NULL terminated array of context class names. Use g_strfreev() to free the array if it is no longer needed. [array zero-terminated=1][transfer full]
	 */
	public string[] getContextClassesAtIter(TextIter iter)
	{
		// gchar ** gtk_source_buffer_get_context_classes_at_iter  (GtkSourceBuffer *buffer,  const GtkTextIter *iter);
		return Str.toStringArray(gtk_source_buffer_get_context_classes_at_iter(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct()));
	}
	
	/**
	 * Moves forward to the next toggle (on or off) of the context class. If no
	 * matching context class toggles are found, returns FALSE, otherwise TRUE.
	 * Does not return toggles located at iter, only toggles after iter. Sets
	 * iter to the location of the toggle, or to the end of the buffer if no
	 * toggle is found.
	 * Since 2.10
	 * Params:
	 * iter = a GtkTextIter.
	 * contextClass = the context class.
	 * Returns: whether we found a context class toggle after iter
	 */
	public int iterForwardToContextClassToggle(TextIter iter, string contextClass)
	{
		// gboolean gtk_source_buffer_iter_forward_to_context_class_toggle  (GtkSourceBuffer *buffer,  GtkTextIter *iter,  const gchar *context_class);
		return gtk_source_buffer_iter_forward_to_context_class_toggle(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(contextClass));
	}
	
	/**
	 * Moves backward to the next toggle (on or off) of the context class. If no
	 * matching context class toggles are found, returns FALSE, otherwise TRUE.
	 * Does not return toggles located at iter, only toggles after iter. Sets
	 * iter to the location of the toggle, or to the end of the buffer if no
	 * toggle is found.
	 * Since 2.10
	 * Params:
	 * iter = a GtkTextIter.
	 * contextClass = the context class.
	 * Returns: whether we found a context class toggle before iter
	 */
	public int iterBackwardToContextClassToggle(TextIter iter, string contextClass)
	{
		// gboolean gtk_source_buffer_iter_backward_to_context_class_toggle  (GtkSourceBuffer *buffer,  GtkTextIter *iter,  const gchar *context_class);
		return gtk_source_buffer_iter_backward_to_context_class_toggle(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(contextClass));
	}
	
	/**
	 * Returns the GtkSourceUndoManager associated with the buffer,
	 * see gtk_source_buffer_set_undo_manager(). The returned object should not be
	 * unreferenced by the user.
	 * Returns: the GtkSourceUndoManager associated with the buffer, or NULL. [transfer none]
	 */
	public SourceUndoManagerIF getUndoManager()
	{
		// GtkSourceUndoManager * gtk_source_buffer_get_undo_manager  (GtkSourceBuffer *buffer);
		auto p = gtk_source_buffer_get_undo_manager(gtkSourceBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceUndoManager)(cast(GtkSourceUndoManager*) p);
	}
	
	/**
	 * Set the buffer undo manager. If manager is NULL the default undo manager
	 * will be set.
	 * Params:
	 * manager = A GtkSourceUndoManager or NULL. [allow-none]
	 */
	public void setUndoManager(SourceUndoManagerIF manager)
	{
		// void gtk_source_buffer_set_undo_manager (GtkSourceBuffer *buffer,  GtkSourceUndoManager *manager);
		gtk_source_buffer_set_undo_manager(gtkSourceBuffer, (manager is null) ? null : manager.getSourceUndoManagerTStruct());
	}
}
