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


module sourceview.Buffer;

private import glib.ConstructionException;
private import glib.ListSG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.TextBuffer;
private import gtk.TextIter;
private import gtk.TextMark;
private import gtk.TextTag;
private import gtk.TextTagTable;
private import sourceview.Language;
private import sourceview.Mark;
private import sourceview.StyleScheme;
private import sourceview.c.functions;
public  import sourceview.c.types;
private import std.algorithm;


/**
 * Subclass of [class@Gtk.TextBuffer].
 * 
 * A `GtkSourceBuffer` object is the model for [class@View] widgets.
 * It extends the [class@Gtk.TextBuffer] class by adding features useful to display
 * and edit source code such as syntax highlighting and bracket matching.
 * 
 * To create a `GtkSourceBuffer` use [ctor@GtkSource.Buffer.new] or
 * [ctor@GtkSource.Buffer.new_with_language]. The second form is just a convenience
 * function which allows you to initially set a [class@Language]. You can also
 * directly create a [class@View] and get its [class@Buffer] with
 * [method@Gtk.TextView.get_buffer].
 * 
 * The highlighting is enabled by default, but you can disable it with
 * [method@Buffer.set_highlight_syntax].
 * 
 * # Context Classes:
 * 
 * It is possible to retrieve some information from the syntax highlighting
 * engine. The default context classes that are applied to regions of a
 * `GtkSourceBuffer`:
 * 
 * - **comment**: the region delimits a comment;
 * - **no-spell-check**: the region should not be spell checked;
 * - **path**: the region delimits a path to a file;
 * - **string**: the region delimits a string.
 * 
 * Custom language definition files can create their own context classes,
 * since the functions like [method@Buffer.iter_has_context_class] take
 * a string parameter as the context class.
 * 
 * `GtkSourceBuffer` provides an API to access the context classes:
 * [method@Buffer.iter_has_context_class],
 * [method@Buffer.get_context_classes_at_iter],
 * [method@Buffer.iter_forward_to_context_class_toggle] and
 * [method@Buffer.iter_backward_to_context_class_toggle].
 * 
 * And the [signal@GtkSource.Buffer::highlight-updated] signal permits to be notified
 * when a context class region changes.
 * 
 * Each context class has also an associated [class@Gtk.TextTag] with the name
 * `gtksourceview:context-classes:<name>`. For example to
 * retrieve the [class@Gtk.TextTag] for the string context class, one can write:
 * ```c
 * GtkTextTagTable *tag_table;
 * GtkTextTag *tag;
 * 
 * tag_table = gtk_text_buffer_get_tag_table (buffer);
 * tag = gtk_text_tag_table_lookup (tag_table, "gtksourceview:context-classes:string");
 * ```
 * 
 * The tag must be used for read-only purposes.
 * 
 * Accessing a context class via the associated [class@Gtk.TextTag] is less
 * convenient than the `GtkSourceBuffer` API, because:
 * 
 * - The tag doesn't always exist, you need to listen to the
 * [signal@Gtk.TextTagTable::tag-added] and [signal@Gtk.TextTagTable::tag-removed] signals.
 * - Instead of the [signal@GtkSource.Buffer::highlight-updated] signal, you can listen
 * to the [signal@Gtk.TextBuffer::apply-tag] and [signal@Gtk.TextBuffer::remove-tag] signals.
 * 
 * A possible use-case for accessing a context class via the associated
 * [class@Gtk.TextTag] is to read the region but without adding a hard dependency on the
 * GtkSourceView library (for example for a spell-checking library that wants to
 * read the no-spell-check region).
 */
public class Buffer : TextBuffer
{
	/** the main Gtk struct */
	protected GtkSourceBuffer* gtkSourceBuffer;

	/** Get the main Gtk struct */
	public GtkSourceBuffer* getBufferStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceBuffer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceBuffer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceBuffer* gtkSourceBuffer, bool ownedRef = false)
	{
		this.gtkSourceBuffer = gtkSourceBuffer;
		super(cast(GtkTextBuffer*)gtkSourceBuffer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_buffer_get_type();
	}

	/**
	 * Creates a new source buffer.
	 *
	 * Params:
	 *     table = a #GtkTextTagTable, or %NULL to create a new one.
	 *
	 * Returns: a new source buffer.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TextTagTable table)
	{
		auto __p = gtk_source_buffer_new((table is null) ? null : table.getTextTagTableStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceBuffer*) __p, true);
	}

	/**
	 * Creates a new source buffer using the highlighting patterns in `language`.
	 *
	 * This is equivalent to creating a new source buffer with
	 * a new tag table and then calling [method@Buffer.set_language].
	 *
	 * Params:
	 *     language = a #GtkSourceLanguage.
	 *
	 * Returns: a new source buffer which will highlight text
	 *     according to the highlighting patterns in `language`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Language language)
	{
		auto __p = gtk_source_buffer_new_with_language((language is null) ? null : language.getLanguageStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_language");
		}

		this(cast(GtkSourceBuffer*) __p, true);
	}

	/**
	 * Moves `iter` to the position of the previous [class@Mark] of the given
	 * category.
	 *
	 * Returns %TRUE if `iter` was moved. If `category` is NULL, the
	 * previous source mark can be of any category.
	 *
	 * Params:
	 *     iter = an iterator.
	 *     category = category to search for, or %NULL
	 *
	 * Returns: whether `iter` was moved.
	 */
	public bool backwardIterToSourceMark(ref TextIter iter, string category)
	{
		return gtk_source_buffer_backward_iter_to_source_mark(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(true), Str.toStringz(category)) != 0;
	}

	/**
	 * Changes the case of the text between the specified iterators.
	 *
	 * Since 5.4, this function will update the position of `start` and
	 * `end` to surround the modified text.
	 *
	 * Params:
	 *     caseType = how to change the case.
	 *     start = a #GtkTextIter.
	 *     end = a #GtkTextIter.
	 */
	public void changeCase(GtkSourceChangeCaseType caseType, TextIter start, TextIter end)
	{
		gtk_source_buffer_change_case(gtkSourceBuffer, caseType, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Creates a source mark in the `buffer` of category `category`.
	 *
	 * A source mark is a [class@Gtk.TextMark] but organized into categories.
	 * Depending on the category a pixbuf can be specified that will be displayed
	 * along the line of the mark.
	 *
	 * Like a [class@Gtk.TextMark], a [class@Mark] can be anonymous if the
	 * passed `name` is %NULL.  Also, the buffer owns the marks so you
	 * shouldn't unreference it.
	 *
	 * Marks always have left gravity and are moved to the beginning of
	 * the line when the user deletes the line they were in.
	 *
	 * Typical uses for a source mark are bookmarks, breakpoints, current
	 * executing instruction indication in a source file, etc..
	 *
	 * Params:
	 *     name = the name of the mark, or %NULL.
	 *     category = a string defining the mark category.
	 *     where = location to place the mark.
	 *
	 * Returns: a new [class@Mark], owned by the buffer.
	 */
	public Mark createSourceMark(string name, string category, TextIter where)
	{
		auto __p = gtk_source_buffer_create_source_mark(gtkSourceBuffer, Str.toStringz(name), Str.toStringz(category), (where is null) ? null : where.getTextIterStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Mark)(cast(GtkSourceMark*) __p);
	}

	/**
	 * Forces buffer to analyze and highlight the given area synchronously.
	 *
	 * **Note**:
	 *
	 * This is a potentially slow operation and should be used only
	 * when you need to make sure that some text not currently
	 * visible is highlighted, for instance before printing.
	 *
	 * Params:
	 *     start = start of the area to highlight.
	 *     end = end of the area to highlight.
	 */
	public void ensureHighlight(TextIter start, TextIter end)
	{
		gtk_source_buffer_ensure_highlight(gtkSourceBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Moves `iter` to the position of the next [class@Mark] of the given
	 * `category`.
	 *
	 * Returns %TRUE if `iter` was moved. If `category` is NULL, the
	 * next source mark can be of any category.
	 *
	 * Params:
	 *     iter = an iterator.
	 *     category = category to search for, or %NULL
	 *
	 * Returns: whether `iter` was moved.
	 */
	public bool forwardIterToSourceMark(ref TextIter iter, string category)
	{
		return gtk_source_buffer_forward_iter_to_source_mark(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(true), Str.toStringz(category)) != 0;
	}

	/**
	 * Get all defined context classes at @iter.
	 *
	 * See the [class@Buffer] description for the list of default context classes.
	 *
	 * Params:
	 *     iter = a #GtkTextIter.
	 *
	 * Returns: a new %NULL
	 *     terminated array of context class names.
	 *     Use g_strfreev() to free the array if it is no longer needed.
	 */
	public string[] getContextClassesAtIter(TextIter iter)
	{
		auto retStr = gtk_source_buffer_get_context_classes_at_iter(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct());

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Determines whether bracket match highlighting is activated for the
	 * source buffer.
	 *
	 * Returns: %TRUE if the source buffer will highlight matching
	 *     brackets.
	 */
	public bool getHighlightMatchingBrackets()
	{
		return gtk_source_buffer_get_highlight_matching_brackets(gtkSourceBuffer) != 0;
	}

	/**
	 * Determines whether syntax highlighting is activated in the source
	 * buffer.
	 *
	 * Returns: %TRUE if syntax highlighting is enabled, %FALSE otherwise.
	 */
	public bool getHighlightSyntax()
	{
		return gtk_source_buffer_get_highlight_syntax(gtkSourceBuffer) != 0;
	}

	/**
	 * Returns: whether the @buffer has an implicit trailing newline.
	 */
	public bool getImplicitTrailingNewline()
	{
		return gtk_source_buffer_get_implicit_trailing_newline(gtkSourceBuffer) != 0;
	}

	/**
	 * Returns the [class@Language] associated with the buffer,
	 * see [method@Buffer.set_language].
	 *
	 * The returned object should not be unreferenced by the user.
	 *
	 * Returns: the [class@Language] associated
	 *     with the buffer, or %NULL.
	 */
	public Language getLanguage()
	{
		auto __p = gtk_source_buffer_get_language(gtkSourceBuffer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Language)(cast(GtkSourceLanguage*) __p);
	}

	/**
	 * Returns the list of marks of the given category at @iter.
	 *
	 * If @category is %NULL it returns all marks at @iter.
	 *
	 * Params:
	 *     iter = an iterator.
	 *     category = category to search for, or %NULL
	 *
	 * Returns: a newly allocated #GSList.
	 */
	public ListSG getSourceMarksAtIter(TextIter iter, string category)
	{
		auto __p = gtk_source_buffer_get_source_marks_at_iter(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(category));

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Returns the list of marks of the given category at @line.
	 *
	 * If @category is %NULL, all marks at @line are returned.
	 *
	 * Params:
	 *     line = a line number.
	 *     category = category to search for, or %NULL
	 *
	 * Returns: a newly allocated #GSList.
	 */
	public ListSG getSourceMarksAtLine(int line, string category)
	{
		auto __p = gtk_source_buffer_get_source_marks_at_line(gtkSourceBuffer, line, Str.toStringz(category));

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Returns the [class@StyleScheme] associated with the buffer,
	 * see [method@Buffer.set_style_scheme].
	 *
	 * The returned object should not be unreferenced by the user.
	 *
	 * Returns: the [class@StyleScheme]
	 *     associated with the buffer, or %NULL.
	 */
	public StyleScheme getStyleScheme()
	{
		auto __p = gtk_source_buffer_get_style_scheme(gtkSourceBuffer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StyleScheme)(cast(GtkSourceStyleScheme*) __p);
	}

	/**
	 * Moves backward to the next toggle (on or off) of the context class.
	 *
	 * If no matching context class toggles are found, returns %FALSE, otherwise %TRUE.
	 * Does not return toggles located at @iter, only toggles after @iter. Sets
	 * @iter to the location of the toggle, or to the end of the buffer if no
	 * toggle is found.
	 *
	 * See the [class@Buffer] description for the list of default context classes.
	 *
	 * Params:
	 *     iter = a #GtkTextIter.
	 *     contextClass = the context class.
	 *
	 * Returns: whether we found a context class toggle before @iter
	 */
	public bool iterBackwardToContextClassToggle(ref TextIter iter, string contextClass)
	{
		return gtk_source_buffer_iter_backward_to_context_class_toggle(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(true), Str.toStringz(contextClass)) != 0;
	}

	/**
	 * Moves forward to the next toggle (on or off) of the context class.
	 *
	 * If no matching context class toggles are found, returns %FALSE, otherwise %TRUE.
	 * Does not return toggles located at @iter, only toggles after @iter. Sets
	 * @iter to the location of the toggle, or to the end of the buffer if no
	 * toggle is found.
	 *
	 * See the [class@Buffer] description for the list of default context classes.
	 *
	 * Params:
	 *     iter = a #GtkTextIter.
	 *     contextClass = the context class.
	 *
	 * Returns: whether we found a context class toggle after @iter
	 */
	public bool iterForwardToContextClassToggle(ref TextIter iter, string contextClass)
	{
		return gtk_source_buffer_iter_forward_to_context_class_toggle(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(true), Str.toStringz(contextClass)) != 0;
	}

	/**
	 * Check if the class @context_class is set on @iter.
	 *
	 * See the [class@Buffer] description for the list of default context classes.
	 *
	 * Params:
	 *     iter = a #GtkTextIter.
	 *     contextClass = class to search for.
	 *
	 * Returns: whether @iter has the context class.
	 */
	public bool iterHasContextClass(TextIter iter, string contextClass)
	{
		return gtk_source_buffer_iter_has_context_class(gtkSourceBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(contextClass)) != 0;
	}

	/**
	 * Joins the lines of text between the specified iterators.
	 *
	 * Params:
	 *     start = a #GtkTextIter.
	 *     end = a #GtkTextIter.
	 */
	public void joinLines(TextIter start, TextIter end)
	{
		gtk_source_buffer_join_lines(gtkSourceBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Remove all marks of @category between @start and @end from the buffer.
	 *
	 * If @category is NULL, all marks in the range will be removed.
	 *
	 * Params:
	 *     start = a #GtkTextIter.
	 *     end = a #GtkTextIter.
	 *     category = category to search for, or %NULL.
	 */
	public void removeSourceMarks(TextIter start, TextIter end, string category)
	{
		gtk_source_buffer_remove_source_marks(gtkSourceBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), Str.toStringz(category));
	}

	/**
	 * Controls the bracket match highlighting function in the buffer.
	 *
	 * If activated, when you position your cursor over a bracket character
	 * (a parenthesis, a square bracket, etc.) the matching opening or
	 * closing bracket character will be highlighted.
	 *
	 * Params:
	 *     highlight = %TRUE if you want matching brackets highlighted.
	 */
	public void setHighlightMatchingBrackets(bool highlight)
	{
		gtk_source_buffer_set_highlight_matching_brackets(gtkSourceBuffer, highlight);
	}

	/**
	 * Controls whether syntax is highlighted in the buffer.
	 *
	 * If @highlight is %TRUE, the text will be highlighted according to the syntax
	 * patterns specified in the [class@Language] set with [method@Buffer.set_language].
	 *
	 * If @highlight is %FALSE, syntax highlighting is disabled and all the
	 * [class@Gtk.TextTag] objects that have been added by the syntax highlighting engine
	 * are removed from the buffer.
	 *
	 * Params:
	 *     highlight = %TRUE to enable syntax highlighting, %FALSE to disable it.
	 */
	public void setHighlightSyntax(bool highlight)
	{
		gtk_source_buffer_set_highlight_syntax(gtkSourceBuffer, highlight);
	}

	/**
	 * Sets whether the @buffer has an implicit trailing newline.
	 *
	 * If an explicit trailing newline is present in a [class@Gtk.TextBuffer], [class@Gtk.TextView]
	 * shows it as an empty line. This is generally not what the user expects.
	 *
	 * If @implicit_trailing_newline is %TRUE (the default value):
	 * - when a [class@FileLoader] loads the content of a file into the @buffer,
	 * the trailing newline (if present in the file) is not inserted into the
	 * @buffer.
	 * - when a [class@FileSaver] saves the content of the @buffer into a file, a
	 * trailing newline is added to the file.
	 *
	 * On the other hand, if @implicit_trailing_newline is %FALSE, the file's
	 * content is not modified when loaded into the @buffer, and the @buffer's
	 * content is not modified when saved into a file.
	 *
	 * Params:
	 *     implicitTrailingNewline = the new value.
	 */
	public void setImplicitTrailingNewline(bool implicitTrailingNewline)
	{
		gtk_source_buffer_set_implicit_trailing_newline(gtkSourceBuffer, implicitTrailingNewline);
	}

	/**
	 * Associates a [class@Language] with the buffer.
	 *
	 * Note that a [class@Language] affects not only the syntax highlighting, but
	 * also the [context classes](./class.Buffer.html#context-classes). If you want to disable just the
	 * syntax highlighting, see [method@Buffer.set_highlight_syntax].
	 *
	 * The buffer holds a reference to @language.
	 *
	 * Params:
	 *     language = a #GtkSourceLanguage to set, or %NULL.
	 */
	public void setLanguage(Language language)
	{
		gtk_source_buffer_set_language(gtkSourceBuffer, (language is null) ? null : language.getLanguageStruct());
	}

	/**
	 * Sets a [class@StyleScheme] to be used by the buffer and the view.
	 *
	 * Note that a [class@StyleScheme] affects not only the syntax highlighting,
	 * but also other [class@View] features such as highlighting the current line,
	 * matching brackets, the line numbers, etc.
	 *
	 * Instead of setting a %NULL @scheme, it is better to disable syntax
	 * highlighting with [method@Buffer.set_highlight_syntax], and setting the
	 * [class@StyleScheme] with the "classic" or "tango" ID, because those two
	 * style schemes follow more closely the GTK theme (for example for the
	 * background color).
	 *
	 * The buffer holds a reference to @scheme.
	 *
	 * Params:
	 *     scheme = a #GtkSourceStyleScheme or %NULL.
	 */
	public void setStyleScheme(StyleScheme scheme)
	{
		gtk_source_buffer_set_style_scheme(gtkSourceBuffer, (scheme is null) ? null : scheme.getStyleSchemeStruct());
	}

	/**
	 * Sort the lines of text between the specified iterators.
	 *
	 * Params:
	 *     start = a #GtkTextIter.
	 *     end = a #GtkTextIter.
	 *     flags = #GtkSourceSortFlags specifying how the sort should behave
	 *     column = sort considering the text starting at the given column
	 */
	public void sortLines(TextIter start, TextIter end, GtkSourceSortFlags flags, int column)
	{
		gtk_source_buffer_sort_lines(gtkSourceBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), flags, column);
	}

	/**
	 * @iter is set to a valid iterator pointing to the matching bracket
	 * if @state is %GTK_SOURCE_BRACKET_MATCH_FOUND. Otherwise @iter is
	 * meaningless.
	 *
	 * The signal is emitted only when the @state changes, typically when
	 * the cursor moves.
	 *
	 * A use-case for this signal is to show messages in a [class@Gtk.Statusbar].
	 *
	 * Params:
	 *     iter = if found, the location of the matching bracket.
	 *     state = state of bracket matching.
	 */
	gulong addOnBracketMatched(void delegate(TextIter, GtkSourceBracketMatchType, Buffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "bracket-matched", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The "cursor-moved" signal is emitted when then insertion mark has moved.
	 */
	gulong addOnCursorMoved(void delegate(Buffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cursor-moved", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::highlight-updated signal is emitted when the syntax
	 * highlighting and [context classes](./class.Buffer.html#context-classes) are updated in a
	 * certain region of the @buffer.
	 *
	 * Params:
	 *     start = the start of the updated region
	 *     end = the end of the updated region
	 */
	gulong addOnHighlightUpdated(void delegate(TextIter, TextIter, Buffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "highlight-updated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::source-mark-updated signal is emitted each time
	 * a mark is added to, moved or removed from the @buffer.
	 *
	 * Params:
	 *     mark = the [class@Mark]
	 */
	gulong addOnSourceMarkUpdated(void delegate(TextMark, Buffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "source-mark-updated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
