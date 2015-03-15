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


module gsv.SourceView;

private import gdk.Event;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gsv.SourceBuffer;
private import gsv.SourceCompletion;
private import gsv.SourceGutter;
private import gsv.SourceMarkAttributes;
private import gsvc.gsv;
public  import gsvc.gsvtypes;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.TextIter;
private import gtk.TextView;
private import gtk.Widget;
public  import gtkc.gdktypes;


public class SourceView : TextView
{
	/** the main Gtk struct */
	protected GtkSourceView* gtkSourceView;

	/** Get the main Gtk struct */
	public GtkSourceView* getSourceViewStruct()
	{
		return gtkSourceView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceView;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkSourceView = cast(GtkSourceView*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceView* gtkSourceView, bool ownedRef = false)
	{
		this.gtkSourceView = gtkSourceView;
		super(cast(GtkTextView*)gtkSourceView, ownedRef);
	}

	/**
	 * Returns the GtkSourceBuffer being displayed by this source view.
	 * The reference count on the buffer is not incremented; the caller
	 * of this function won't own a new reference.
	 *
	 * Returns:
	 *  a GtkSourceBuffer
	 */
	public override SourceBuffer getBuffer()
	{
		auto p = gtk_text_view_get_buffer(cast(GtkTextView*)gtkSourceView);
		
		return ObjectG.getDObject!(SourceBuffer)(cast(GtkSourceBuffer*) p);
	}

	/**
	 */

	public static GType getType()
	{
		return gtk_source_view_get_type();
	}

	/**
	 * Creates a new #GtkSourceView. An empty default buffer will be
	 * created for you. If you want to specify your own buffer, consider
	 * gtk_source_view_new_with_buffer().
	 *
	 * Return: a new #GtkSourceView.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_view_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkSourceView*) p);
	}

	/**
	 * Creates a new #GtkSourceView widget displaying the buffer
	 * @buffer. One buffer can be shared among many widgets.
	 *
	 * Params:
	 *     buffer = a #GtkSourceBuffer.
	 *
	 * Return: a new #GtkSourceView.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SourceBuffer buffer)
	{
		auto p = gtk_source_view_new_with_buffer((buffer is null) ? null : buffer.getSourceBufferStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_buffer");
		}
		
		this(cast(GtkSourceView*) p);
	}

	/**
	 * Returns whether auto indentation of text is enabled.
	 *
	 * Return: %TRUE if auto indentation is enabled.
	 */
	public bool getAutoIndent()
	{
		return gtk_source_view_get_auto_indent(gtkSourceView) != 0;
	}

	/**
	 * Gets the #GtkSourceCompletion associated with @view.
	 *
	 * Return: the #GtkSourceCompletion associated with @view.
	 */
	public SourceCompletion getCompletion()
	{
		auto p = gtk_source_view_get_completion(gtkSourceView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceCompletion)(cast(GtkSourceCompletion*) p);
	}

	/**
	 * Returns the #GtkSourceDrawSpacesFlags specifying if and how spaces
	 * should be displayed for this @view.
	 *
	 * Return: the #GtkSourceDrawSpacesFlags, 0 if no spaces should be drawn.
	 */
	public GtkSourceDrawSpacesFlags getDrawSpaces()
	{
		return gtk_source_view_get_draw_spaces(gtkSourceView);
	}

	/**
	 * Returns the #GtkSourceGutter object associated with @window_type for @view.
	 * Only GTK_TEXT_WINDOW_LEFT and GTK_TEXT_WINDOW_RIGHT are supported,
	 * respectively corresponding to the left and right gutter. The line numbers
	 * and mark category icons are rendered in the left gutter.
	 *
	 * Params:
	 *     windowType = the gutter window type.
	 *
	 * Return: the #GtkSourceGutter.
	 *
	 * Since: 2.8
	 */
	public SourceGutter getGutter(GtkTextWindowType windowType)
	{
		auto p = gtk_source_view_get_gutter(gtkSourceView, windowType);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceGutter)(cast(GtkSourceGutter*) p);
	}

	/**
	 * Returns whether the current line is highlighted.
	 *
	 * Return: %TRUE if the current line is highlighted.
	 */
	public bool getHighlightCurrentLine()
	{
		return gtk_source_view_get_highlight_current_line(gtkSourceView) != 0;
	}

	/**
	 * Returns whether when the tab key is pressed the current selection
	 * should get indented instead of replaced with the \t character.
	 *
	 * Return: %TRUE if the selection is indented when tab is pressed.
	 *
	 * Since: 1.8
	 */
	public bool getIndentOnTab()
	{
		return gtk_source_view_get_indent_on_tab(gtkSourceView) != 0;
	}

	/**
	 * Returns the number of spaces to use for each step of indent.
	 * See gtk_source_view_set_indent_width() for details.
	 *
	 * Return: indent width.
	 */
	public int getIndentWidth()
	{
		return gtk_source_view_get_indent_width(gtkSourceView);
	}

	/**
	 * Returns whether when inserting a tabulator character it should
	 * be replaced by a group of space characters.
	 *
	 * Return: %TRUE if spaces are inserted instead of tabs.
	 */
	public bool getInsertSpacesInsteadOfTabs()
	{
		return gtk_source_view_get_insert_spaces_instead_of_tabs(gtkSourceView) != 0;
	}

	/**
	 * Gets attributes and priority for the @category.
	 *
	 * Params:
	 *     category = the category.
	 *     priority = place where priority of the category will be stored.
	 *
	 * Return: #GtkSourceMarkAttributes for the @category.
	 *     The object belongs to @view, so it must not be unreffed.
	 */
	public SourceMarkAttributes getMarkAttributes(string category, int* priority)
	{
		auto p = gtk_source_view_get_mark_attributes(gtkSourceView, Str.toStringz(category), priority);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceMarkAttributes)(cast(GtkSourceMarkAttributes*) p);
	}

	/**
	 * Gets the position of the right margin in the given @view.
	 *
	 * Return: the position of the right margin.
	 */
	public uint getRightMarginPosition()
	{
		return gtk_source_view_get_right_margin_position(gtkSourceView);
	}

	/**
	 * Returns whether line marks are displayed beside the text.
	 *
	 * Return: %TRUE if the line marks are displayed.
	 *
	 * Since: 2.2
	 */
	public bool getShowLineMarks()
	{
		return gtk_source_view_get_show_line_marks(gtkSourceView) != 0;
	}

	/**
	 * Returns whether line numbers are displayed beside the text.
	 *
	 * Return: %TRUE if the line numbers are displayed.
	 */
	public bool getShowLineNumbers()
	{
		return gtk_source_view_get_show_line_numbers(gtkSourceView) != 0;
	}

	/**
	 * Returns whether a right margin is displayed.
	 *
	 * Return: %TRUE if the right margin is shown.
	 */
	public bool getShowRightMargin()
	{
		return gtk_source_view_get_show_right_margin(gtkSourceView) != 0;
	}

	/**
	 * Returns a #GtkSourceSmartHomeEndType end value specifying
	 * how the cursor will move when HOME and END keys are pressed.
	 *
	 * Return: a #GtkSourceSmartHomeEndType value.
	 */
	public GtkSourceSmartHomeEndType getSmartHomeEnd()
	{
		return gtk_source_view_get_smart_home_end(gtkSourceView);
	}

	/**
	 * Returns the width of tabulation in characters.
	 *
	 * Return: width of tab.
	 */
	public uint getTabWidth()
	{
		return gtk_source_view_get_tab_width(gtkSourceView);
	}

	/**
	 * Determines the visual column at @iter taking into
	 * consideration the indent width of @view.
	 *
	 * Params:
	 *     iter = a position in @view.
	 *
	 * Return: the visual column at @iter.
	 */
	public uint getVisualColumn(TextIter iter)
	{
		return gtk_source_view_get_visual_column(gtkSourceView, (iter is null) ? null : iter.getTextIterStruct());
	}

	/**
	 * If %TRUE auto indentation of text is enabled.
	 *
	 * Params:
	 *     enable = whether to enable auto indentation.
	 */
	public void setAutoIndent(bool enable)
	{
		gtk_source_view_set_auto_indent(gtkSourceView, enable);
	}

	/**
	 * Set if and how the spaces should be visualized. Specifying @flags as 0 will
	 * disable display of spaces.
	 *
	 * Params:
	 *     flags = #GtkSourceDrawSpacesFlags specifing how white spaces should
	 *         be displayed
	 */
	public void setDrawSpaces(GtkSourceDrawSpacesFlags flags)
	{
		gtk_source_view_set_draw_spaces(gtkSourceView, flags);
	}

	/**
	 * If @hl is %TRUE the current line is highlighted.
	 *
	 * Params:
	 *     hl = whether to highlight the current line.
	 */
	public void setHighlightCurrentLine(bool hl)
	{
		gtk_source_view_set_highlight_current_line(gtkSourceView, hl);
	}

	/**
	 * If %TRUE, when the tab key is pressed and there is a selection, the
	 * selected text is indented of one level instead of being replaced with
	 * the \t characters. Shift+Tab unindents the selection.
	 *
	 * Params:
	 *     enable = whether to indent a block when tab is pressed.
	 *
	 * Since: 1.8
	 */
	public void setIndentOnTab(bool enable)
	{
		gtk_source_view_set_indent_on_tab(gtkSourceView, enable);
	}

	/**
	 * Sets the number of spaces to use for each step of indent.
	 * If @width is -1, the value of the #GtkSourceView:tab-width property
	 * will be used.
	 *
	 * Params:
	 *     width = indent width in characters.
	 */
	public void setIndentWidth(int width)
	{
		gtk_source_view_set_indent_width(gtkSourceView, width);
	}

	/**
	 * If %TRUE any tabulator character inserted is replaced by a group
	 * of space characters.
	 *
	 * Params:
	 *     enable = whether to insert spaces instead of tabs.
	 */
	public void setInsertSpacesInsteadOfTabs(bool enable)
	{
		gtk_source_view_set_insert_spaces_instead_of_tabs(gtkSourceView, enable);
	}

	/**
	 * Sets attributes and priority for the @category.
	 *
	 * Params:
	 *     category = the category.
	 *     attributes = mark attributes.
	 *     priority = priority of the category.
	 */
	public void setMarkAttributes(string category, SourceMarkAttributes attributes, int priority)
	{
		gtk_source_view_set_mark_attributes(gtkSourceView, Str.toStringz(category), (attributes is null) ? null : attributes.getSourceMarkAttributesStruct(), priority);
	}

	/**
	 * Sets the position of the right margin in the given @view.
	 *
	 * Params:
	 *     pos = the width in characters where to position the right margin.
	 */
	public void setRightMarginPosition(uint pos)
	{
		gtk_source_view_set_right_margin_position(gtkSourceView, pos);
	}

	/**
	 * If %TRUE line marks will be displayed beside the text.
	 *
	 * Params:
	 *     show = whether line marks should be displayed.
	 *
	 * Since: 2.2
	 */
	public void setShowLineMarks(bool show)
	{
		gtk_source_view_set_show_line_marks(gtkSourceView, show);
	}

	/**
	 * If %TRUE line numbers will be displayed beside the text.
	 *
	 * Params:
	 *     show = whether line numbers should be displayed.
	 */
	public void setShowLineNumbers(bool show)
	{
		gtk_source_view_set_show_line_numbers(gtkSourceView, show);
	}

	/**
	 * If %TRUE a right margin is displayed.
	 *
	 * Params:
	 *     show = whether to show a right margin.
	 */
	public void setShowRightMargin(bool show)
	{
		gtk_source_view_set_show_right_margin(gtkSourceView, show);
	}

	/**
	 * Set the desired movement of the cursor when HOME and END keys
	 * are pressed.
	 *
	 * Params:
	 *     smartHe = the desired behavior among #GtkSourceSmartHomeEndType.
	 */
	public void setSmartHomeEnd(GtkSourceSmartHomeEndType smartHe)
	{
		gtk_source_view_set_smart_home_end(gtkSourceView, smartHe);
	}

	/**
	 * Sets the width of tabulation in characters.
	 *
	 * Params:
	 *     width = width of tab in characters.
	 */
	public void setTabWidth(uint width)
	{
		gtk_source_view_set_tab_width(gtkSourceView, width);
	}

	int[string] connectedSignals;

	void delegate(TextIter, Event, SourceView)[] onLineMarkActivatedListeners;
	/**
	 * Emitted when a line mark has been activated (for instance when there
	 * was a button press in the line marks gutter). You can use @iter to
	 * determine on which line the activation took place.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     event = the #GdkEvent that activated the event
	 */
	void addOnLineMarkActivated(void delegate(TextIter, Event, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "line-mark-activated" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"line-mark-activated",
				cast(GCallback)&callBackLineMarkActivated,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["line-mark-activated"] = 1;
		}
		onLineMarkActivatedListeners ~= dlg;
	}
	extern(C) static void callBackLineMarkActivated(GtkSourceView* sourceviewStruct, GtkTextIter* iter, GdkEvent* event, SourceView _sourceview)
	{
		foreach ( void delegate(TextIter, Event, SourceView) dlg; _sourceview.onLineMarkActivatedListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(iter), ObjectG.getDObject!(Event)(event), _sourceview);
		}
	}

	void delegate(bool, int, SourceView)[] onMoveLinesListeners;
	/**
	 * The ::move-lines signal is a keybinding which gets emitted
	 * when the user initiates moving a line. The default binding key
	 * is Alt+Up/Down arrow. And moves the currently selected lines,
	 * or the current line by @count. For the moment, only
	 * @count of -1 or 1 is valid.
	 *
	 * Params:
	 *     copy = %TRUE if the line should be copied,
	 *         %FALSE if it should be moved
	 *     count = the number of lines to move over.
	 *
	 * Since: 2.10
	 */
	void addOnMoveLines(void delegate(bool, int, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "move-lines" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"move-lines",
				cast(GCallback)&callBackMoveLines,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["move-lines"] = 1;
		}
		onMoveLinesListeners ~= dlg;
	}
	extern(C) static void callBackMoveLines(GtkSourceView* sourceviewStruct, bool copy, int count, SourceView _sourceview)
	{
		foreach ( void delegate(bool, int, SourceView) dlg; _sourceview.onMoveLinesListeners )
		{
			dlg(copy, count, _sourceview);
		}
	}

	void delegate(int, SourceView)[] onMoveWordsListeners;
	/**
	 * The ::move-words signal is a keybinding which gets emitted
	 * when the user initiates moving a word. The default binding key
	 * is Alt+Left/Right Arrow and moves the current selection, or the current
	 * word by one word.
	 *
	 * Params:
	 *     count = the number of words to move over
	 *
	 * Since: 3.0
	 */
	void addOnMoveWords(void delegate(int, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "move-words" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"move-words",
				cast(GCallback)&callBackMoveWords,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["move-words"] = 1;
		}
		onMoveWordsListeners ~= dlg;
	}
	extern(C) static void callBackMoveWords(GtkSourceView* sourceviewStruct, int count, SourceView _sourceview)
	{
		foreach ( void delegate(int, SourceView) dlg; _sourceview.onMoveWordsListeners )
		{
			dlg(count, _sourceview);
		}
	}

	void delegate(SourceView)[] onRedoListeners;
	void addOnRedo(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "redo" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"redo",
				cast(GCallback)&callBackRedo,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["redo"] = 1;
		}
		onRedoListeners ~= dlg;
	}
	extern(C) static void callBackRedo(GtkSourceView* sourceviewStruct, SourceView _sourceview)
	{
		foreach ( void delegate(SourceView) dlg; _sourceview.onRedoListeners )
		{
			dlg(_sourceview);
		}
	}

	void delegate(SourceView)[] onShowCompletionListeners;
	/**
	 * The ::show-completion signal is a key binding signal which gets
	 * emitted when the user requests a completion, by pressing
	 * <keycombo><keycap>Control</keycap><keycap>space</keycap></keycombo>.
	 *
	 * This will create a #GtkSourceCompletionContext with the activation
	 * type as %GTK_SOURCE_COMPLETION_ACTIVATION_USER_REQUESTED.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to activate the completion by
	 * another means, for example with another key binding or a menu entry.
	 */
	void addOnShowCompletion(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "show-completion" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"show-completion",
				cast(GCallback)&callBackShowCompletion,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["show-completion"] = 1;
		}
		onShowCompletionListeners ~= dlg;
	}
	extern(C) static void callBackShowCompletion(GtkSourceView* sourceviewStruct, SourceView _sourceview)
	{
		foreach ( void delegate(SourceView) dlg; _sourceview.onShowCompletionListeners )
		{
			dlg(_sourceview);
		}
	}

	void delegate(TextIter, int, SourceView)[] onSmartHomeEndListeners;
	/**
	 * Emitted when a the cursor was moved according to the smart home
	 * end setting. The signal is emitted after the cursor is moved, but
	 * during the GtkTextView::move-cursor action. This can be used to find
	 * out whether the cursor was moved by a normal home/end or by a smart
	 * home/end.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     count = the count
	 *
	 * Since: 3.0
	 */
	void addOnSmartHomeEnd(void delegate(TextIter, int, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "smart-home-end" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"smart-home-end",
				cast(GCallback)&callBackSmartHomeEnd,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["smart-home-end"] = 1;
		}
		onSmartHomeEndListeners ~= dlg;
	}
	extern(C) static void callBackSmartHomeEnd(GtkSourceView* sourceviewStruct, GtkTextIter* iter, int count, SourceView _sourceview)
	{
		foreach ( void delegate(TextIter, int, SourceView) dlg; _sourceview.onSmartHomeEndListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(iter), count, _sourceview);
		}
	}

	void delegate(SourceView)[] onUndoListeners;
	void addOnUndo(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "undo" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"undo",
				cast(GCallback)&callBackUndo,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["undo"] = 1;
		}
		onUndoListeners ~= dlg;
	}
	extern(C) static void callBackUndo(GtkSourceView* sourceviewStruct, SourceView _sourceview)
	{
		foreach ( void delegate(SourceView) dlg; _sourceview.onUndoListeners )
		{
			dlg(_sourceview);
		}
	}
}
