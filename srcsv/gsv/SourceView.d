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
 * inFile  = GtkSourceView.html
 * outPack = gsv
 * outFile = SourceView
 * strct   = GtkSourceView
 * realStrct=
 * ctorStrct=
 * clss    = SourceView
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_view_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Event
 * 	- gsv.SourceBuffer
 * 	- gsv.SourceCompletion
 * 	- gsv.SourceGutter
 * 	- gsv.SourceMarkAttributes
 * 	- gtk.TextIter
 * 	- gtkc.gtk
 * structWrap:
 * 	- GdkEvent* -> Event
 * 	- GtkSourceBuffer* -> SourceBuffer
 * 	- GtkSourceCompletion* -> SourceCompletion
 * 	- GtkSourceGutter* -> SourceGutter
 * 	- GtkSourceMarkAttributes* -> SourceMarkAttributes
 * 	- GtkTextIter* -> TextIter
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceView;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gdk.Event;
private import gsv.SourceBuffer;
private import gsv.SourceCompletion;
private import gsv.SourceGutter;
private import gsv.SourceMarkAttributes;
private import gtk.TextIter;
private import gtkc.gtk;



private import gtk.TextView;

/**
 * Description
 * GtkSourceView is the main object of the GtkSourceView library. It provides
 * a text view which syntax highlighting, undo/redo and text marks. Use a
 * GtkSourceBuffer to display text with a GtkSourceView.
 */
public class SourceView : TextView
{
	
	/** the main Gtk struct */
	protected GtkSourceView* gtkSourceView;
	
	
	public GtkSourceView* getSourceViewStruct()
	{
		return gtkSourceView;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceView;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceView* gtkSourceView)
	{
		super(cast(GtkTextView*)gtkSourceView);
		this.gtkSourceView = gtkSourceView;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceView = cast(GtkSourceView*)obj;
	}
	
	/**
	 * Returns the GtkSourceBuffer being displayed by this source view.
	 * The reference count on the buffer is not incremented; the caller
	 * of this function won't own a new reference.
	 * Returns:
	 *  a GtkSourceBuffer
	 */
	public override SourceBuffer getBuffer()
	{
		// GtkSourceBuffer* gtk_text_view_get_buffer (GtkTextView *text_view);
		auto p = gtk_text_view_get_buffer(cast(GtkTextView*)gtkSourceView);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_text_view_get_buffer");
		}
		
		return new SourceBuffer( cast(GtkSourceBuffer*)p );
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(TextIter, Event, SourceView)[] onLineMarkActivatedListeners;
	/**
	 * Emitted when a line mark has been activated (for instance when there
	 * was a button press in the line marks gutter). You can use iter to
	 * determine on which line the activation took place.
	 */
	void addOnLineMarkActivated(void delegate(TextIter, Event, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("line-mark-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"line-mark-activated",
			cast(GCallback)&callBackLineMarkActivated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["line-mark-activated"] = 1;
		}
		onLineMarkActivatedListeners ~= dlg;
	}
	extern(C) static void callBackLineMarkActivated(GtkSourceView* viewStruct, GtkTextIter* iter, GdkEvent* event, SourceView _sourceView)
	{
		foreach ( void delegate(TextIter, Event, SourceView) dlg ; _sourceView.onLineMarkActivatedListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(iter), ObjectG.getDObject!(Event)(event), _sourceView);
		}
	}
	
	void delegate(gboolean, gint, SourceView)[] onMoveLinesListeners;
	/**
	 * The ::move-lines signal is a keybinding which gets emitted
	 * when the user initiates moving a line. The default binding key
	 * is Alt+Up/Down arrow. And moves the currently selected lines,
	 * or the current line by count. For the moment, only
	 * count of -1 or 1 is valid.
	 * TRUE if the line should be copied,
	 * FALSE if it should be moved
	 * Since 2.10
	 */
	void addOnMoveLines(void delegate(gboolean, gint, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-lines" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-lines",
			cast(GCallback)&callBackMoveLines,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-lines"] = 1;
		}
		onMoveLinesListeners ~= dlg;
	}
	extern(C) static void callBackMoveLines(GtkSourceView* viewStruct, gboolean copy, gint count, SourceView _sourceView)
	{
		foreach ( void delegate(gboolean, gint, SourceView) dlg ; _sourceView.onMoveLinesListeners )
		{
			dlg(copy, count, _sourceView);
		}
	}
	
	void delegate(gint, SourceView)[] onMoveWordsListeners;
	/**
	 * The ::move-words signal is a keybinding which gets emitted
	 * when the user initiates moving a word. The default binding key
	 * is Alt+Left/Right Arrow and moves the current selection, or the current
	 * word by one word.
	 * Since 3.0
	 */
	void addOnMoveWords(void delegate(gint, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-words" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-words",
			cast(GCallback)&callBackMoveWords,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-words"] = 1;
		}
		onMoveWordsListeners ~= dlg;
	}
	extern(C) static void callBackMoveWords(GtkSourceView* viewStruct, gint count, SourceView _sourceView)
	{
		foreach ( void delegate(gint, SourceView) dlg ; _sourceView.onMoveWordsListeners )
		{
			dlg(count, _sourceView);
		}
	}
	
	void delegate(SourceView)[] onRedoListeners;
	/**
	 */
	void addOnRedo(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackRedo(GtkSourceView* sourceviewStruct, SourceView _sourceView)
	{
		foreach ( void delegate(SourceView) dlg ; _sourceView.onRedoListeners )
		{
			dlg(_sourceView);
		}
	}
	
	void delegate(SourceView)[] onShowCompletionListeners;
	/**
	 * The ::show-completion signal is a key binding signal which gets
	 * emitted when the user requests a completion, by pressing
	 * Control+space.
	 * This will create a GtkSourceCompletionContext with the activation
	 * type as GTK_SOURCE_COMPLETION_ACTIVATION_USER_REQUESTED.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to activate the completion by
	 * another means, for example with another key binding or a menu entry.
	 */
	void addOnShowCompletion(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("show-completion" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show-completion",
			cast(GCallback)&callBackShowCompletion,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["show-completion"] = 1;
		}
		onShowCompletionListeners ~= dlg;
	}
	extern(C) static void callBackShowCompletion(GtkSourceView* viewStruct, SourceView _sourceView)
	{
		foreach ( void delegate(SourceView) dlg ; _sourceView.onShowCompletionListeners )
		{
			dlg(_sourceView);
		}
	}
	
	void delegate(TextIter, gint, SourceView)[] onSmartHomeEndListeners;
	/**
	 * Emitted when a the cursor was moved according to the smart home
	 * end setting. The signal is emitted after the cursor is moved, but
	 * during the GtkTextView::move-cursor action. This can be used to find
	 * out whether the cursor was moved by a normal home/end or by a smart
	 * home/end.
	 * Since 3.0
	 */
	void addOnSmartHomeEnd(void delegate(TextIter, gint, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("smart-home-end" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"smart-home-end",
			cast(GCallback)&callBackSmartHomeEnd,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["smart-home-end"] = 1;
		}
		onSmartHomeEndListeners ~= dlg;
	}
	extern(C) static void callBackSmartHomeEnd(GtkSourceView* viewStruct, GtkTextIter* iter, gint count, SourceView _sourceView)
	{
		foreach ( void delegate(TextIter, gint, SourceView) dlg ; _sourceView.onSmartHomeEndListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(iter), count, _sourceView);
		}
	}
	
	void delegate(SourceView)[] onUndoListeners;
	/**
	 * See Also
	 * GtkTextView,GtkSourceBuffer
	 */
	void addOnUndo(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackUndo(GtkSourceView* sourceviewStruct, SourceView _sourceView)
	{
		foreach ( void delegate(SourceView) dlg ; _sourceView.onUndoListeners )
		{
			dlg(_sourceView);
		}
	}
	
	
	/**
	 * Creates a new GtkSourceView. An empty default buffer will be
	 * created for you. If you want to specify your own buffer, consider
	 * gtk_source_view_new_with_buffer().
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_source_view_new (void);
		auto p = gtk_source_view_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_view_new()");
		}
		this(cast(GtkSourceView*) p);
	}
	
	/**
	 * Creates a new GtkSourceView widget displaying the buffer
	 * buffer. One buffer can be shared among many widgets.
	 * Params:
	 * buffer = a GtkSourceBuffer.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (SourceBuffer buffer)
	{
		// GtkWidget * gtk_source_view_new_with_buffer (GtkSourceBuffer *buffer);
		auto p = gtk_source_view_new_with_buffer((buffer is null) ? null : buffer.getSourceBufferStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_view_new_with_buffer((buffer is null) ? null : buffer.getSourceBufferStruct())");
		}
		this(cast(GtkSourceView*) p);
	}
	
	/**
	 * If TRUE auto indentation of text is enabled.
	 * Params:
	 * enable = whether to enable auto indentation.
	 */
	public void setAutoIndent(int enable)
	{
		// void gtk_source_view_set_auto_indent (GtkSourceView *view,  gboolean enable);
		gtk_source_view_set_auto_indent(gtkSourceView, enable);
	}
	
	/**
	 * Returns whether auto indentation of text is enabled.
	 * Returns: TRUE if auto indentation is enabled.
	 */
	public int getAutoIndent()
	{
		// gboolean gtk_source_view_get_auto_indent (GtkSourceView *view);
		return gtk_source_view_get_auto_indent(gtkSourceView);
	}
	
	/**
	 * If TRUE, when the tab key is pressed and there is a selection, the
	 * selected text is indented of one level instead of being replaced with
	 * the \t characters. Shift+Tab unindents the selection.
	 * Since 1.8
	 * Params:
	 * enable = whether to indent a block when tab is pressed.
	 */
	public void setIndentOnTab(int enable)
	{
		// void gtk_source_view_set_indent_on_tab (GtkSourceView *view,  gboolean enable);
		gtk_source_view_set_indent_on_tab(gtkSourceView, enable);
	}
	
	/**
	 * Returns whether when the tab key is pressed the current selection
	 * should get indented instead of replaced with the \t character.
	 * Since 1.8
	 * Returns: TRUE if the selection is indented when tab is pressed.
	 */
	public int getIndentOnTab()
	{
		// gboolean gtk_source_view_get_indent_on_tab (GtkSourceView *view);
		return gtk_source_view_get_indent_on_tab(gtkSourceView);
	}
	
	/**
	 * Sets the number of spaces to use for each step of indent.
	 * If width is -1, the value of the GtkSourceView::tab-width property
	 * will be used.
	 * Params:
	 * width = indent width in characters.
	 */
	public void setIndentWidth(int width)
	{
		// void gtk_source_view_set_indent_width (GtkSourceView *view,  gint width);
		gtk_source_view_set_indent_width(gtkSourceView, width);
	}
	
	/**
	 * Returns the number of spaces to use for each step of indent.
	 * See gtk_source_view_set_indent_width() for details.
	 * Returns: indent width.
	 */
	public int getIndentWidth()
	{
		// gint gtk_source_view_get_indent_width (GtkSourceView *view);
		return gtk_source_view_get_indent_width(gtkSourceView);
	}
	
	/**
	 * If TRUE any tabulator character inserted is replaced by a group
	 * of space characters.
	 * Params:
	 * enable = whether to insert spaces instead of tabs.
	 */
	public void setInsertSpacesInsteadOfTabs(int enable)
	{
		// void gtk_source_view_set_insert_spaces_instead_of_tabs  (GtkSourceView *view,  gboolean enable);
		gtk_source_view_set_insert_spaces_instead_of_tabs(gtkSourceView, enable);
	}
	
	/**
	 * Returns whether when inserting a tabulator character it should
	 * be replaced by a group of space characters.
	 * Returns: TRUE if spaces are inserted instead of tabs.
	 */
	public int getInsertSpacesInsteadOfTabs()
	{
		// gboolean gtk_source_view_get_insert_spaces_instead_of_tabs  (GtkSourceView *view);
		return gtk_source_view_get_insert_spaces_instead_of_tabs(gtkSourceView);
	}
	
	/**
	 * Set the desired movement of the cursor when HOME and END keys
	 * are pressed.
	 * Params:
	 * smartHe = the desired behavior among GtkSourceSmartHomeEndType.
	 */
	public void setSmartHomeEnd(GtkSourceSmartHomeEndType smartHe)
	{
		// void gtk_source_view_set_smart_home_end (GtkSourceView *view,  GtkSourceSmartHomeEndType smart_he);
		gtk_source_view_set_smart_home_end(gtkSourceView, smartHe);
	}
	
	/**
	 * Returns a GtkSourceSmartHomeEndType end value specifying
	 * how the cursor will move when HOME and END keys are pressed.
	 * Returns: a GtkSourceSmartHomeEndTypeend value.
	 */
	public GtkSourceSmartHomeEndType getSmartHomeEnd()
	{
		// GtkSourceSmartHomeEndType gtk_source_view_get_smart_home_end  (GtkSourceView *view);
		return gtk_source_view_get_smart_home_end(gtkSourceView);
	}
	
	/**
	 * Sets attributes and priority for the category.
	 * Params:
	 * category = the category.
	 * attributes = mark attributes.
	 * priority = priority of the category.
	 */
	public void setMarkAttributes(string category, SourceMarkAttributes attributes, int priority)
	{
		// void gtk_source_view_set_mark_attributes (GtkSourceView *view,  const gchar *category,  GtkSourceMarkAttributes *attributes,  gint priority);
		gtk_source_view_set_mark_attributes(gtkSourceView, Str.toStringz(category), (attributes is null) ? null : attributes.getSourceMarkAttributesStruct(), priority);
	}
	
	/**
	 * Gets attributes and priority for the category.
	 * Params:
	 * category = the category.
	 * priority = place where priority of the category will be stored.
	 * Returns: GtkSourceMarkAttributes for the category. The object belongs to view, so it must not be unreffed. [transfer none]
	 */
	public SourceMarkAttributes getMarkAttributes(string category, int* priority)
	{
		// GtkSourceMarkAttributes * gtk_source_view_get_mark_attributes  (GtkSourceView *view,  const gchar *category,  gint *priority);
		auto p = gtk_source_view_get_mark_attributes(gtkSourceView, Str.toStringz(category), priority);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceMarkAttributes)(cast(GtkSourceMarkAttributes*) p);
	}
	
	/**
	 * If hl is TRUE the current line is highlighted.
	 * Params:
	 * hl = whether to highlight the current line.
	 */
	public void setHighlightCurrentLine(int hl)
	{
		// void gtk_source_view_set_highlight_current_line  (GtkSourceView *view,  gboolean hl);
		gtk_source_view_set_highlight_current_line(gtkSourceView, hl);
	}
	
	/**
	 * Returns whether the current line is highlighted.
	 * Returns: TRUE if the current line is highlighted.
	 */
	public int getHighlightCurrentLine()
	{
		// gboolean gtk_source_view_get_highlight_current_line  (GtkSourceView *view);
		return gtk_source_view_get_highlight_current_line(gtkSourceView);
	}
	
	/**
	 * If TRUE line marks will be displayed beside the text.
	 * Since 2.2
	 * Params:
	 * show = whether line marks should be displayed.
	 */
	public void setShowLineMarks(int show)
	{
		// void gtk_source_view_set_show_line_marks (GtkSourceView *view,  gboolean show);
		gtk_source_view_set_show_line_marks(gtkSourceView, show);
	}
	
	/**
	 * Returns whether line marks are displayed beside the text.
	 * Since 2.2
	 * Returns: TRUE if the line marks are displayed.
	 */
	public int getShowLineMarks()
	{
		// gboolean gtk_source_view_get_show_line_marks (GtkSourceView *view);
		return gtk_source_view_get_show_line_marks(gtkSourceView);
	}
	
	/**
	 * If TRUE line numbers will be displayed beside the text.
	 * Params:
	 * show = whether line numbers should be displayed.
	 */
	public void setShowLineNumbers(int show)
	{
		// void gtk_source_view_set_show_line_numbers  (GtkSourceView *view,  gboolean show);
		gtk_source_view_set_show_line_numbers(gtkSourceView, show);
	}
	
	/**
	 * Returns whether line numbers are displayed beside the text.
	 * Returns: TRUE if the line numbers are displayed.
	 */
	public int getShowLineNumbers()
	{
		// gboolean gtk_source_view_get_show_line_numbers  (GtkSourceView *view);
		return gtk_source_view_get_show_line_numbers(gtkSourceView);
	}
	
	/**
	 * If TRUE a right margin is displayed.
	 * Params:
	 * show = whether to show a right margin.
	 */
	public void setShowRightMargin(int show)
	{
		// void gtk_source_view_set_show_right_margin  (GtkSourceView *view,  gboolean show);
		gtk_source_view_set_show_right_margin(gtkSourceView, show);
	}
	
	/**
	 * Returns whether a right margin is displayed.
	 * Returns: TRUE if the right margin is shown.
	 */
	public int getShowRightMargin()
	{
		// gboolean gtk_source_view_get_show_right_margin  (GtkSourceView *view);
		return gtk_source_view_get_show_right_margin(gtkSourceView);
	}
	
	/**
	 * Sets the position of the right margin in the given view.
	 * Params:
	 * pos = the width in characters where to position the right margin.
	 */
	public void setRightMarginPosition(uint pos)
	{
		// void gtk_source_view_set_right_margin_position  (GtkSourceView *view,  guint pos);
		gtk_source_view_set_right_margin_position(gtkSourceView, pos);
	}
	
	/**
	 * Gets the position of the right margin in the given view.
	 * Returns: the position of the right margin.
	 */
	public uint getRightMarginPosition()
	{
		// guint gtk_source_view_get_right_margin_position  (GtkSourceView *view);
		return gtk_source_view_get_right_margin_position(gtkSourceView);
	}
	
	/**
	 * Sets the width of tabulation in characters.
	 * Params:
	 * width = width of tab in characters.
	 */
	public void setTabWidth(uint width)
	{
		// void gtk_source_view_set_tab_width (GtkSourceView *view,  guint width);
		gtk_source_view_set_tab_width(gtkSourceView, width);
	}
	
	/**
	 * Returns the width of tabulation in characters.
	 * Returns: width of tab.
	 */
	public uint getTabWidth()
	{
		// guint gtk_source_view_get_tab_width (GtkSourceView *view);
		return gtk_source_view_get_tab_width(gtkSourceView);
	}
	
	/**
	 * Set if and how the spaces should be visualized. Specifying flags as 0 will
	 * disable display of spaces.
	 * Params:
	 * flags = GtkSourceDrawSpacesFlags specifing how white spaces should
	 * be displayed
	 */
	public void setDrawSpaces(GtkSourceDrawSpacesFlags flags)
	{
		// void gtk_source_view_set_draw_spaces (GtkSourceView *view,  GtkSourceDrawSpacesFlags flags);
		gtk_source_view_set_draw_spaces(gtkSourceView, flags);
	}
	
	/**
	 * Returns the GtkSourceDrawSpacesFlags specifying if and how spaces
	 * should be displayed for this view.
	 * Returns: the GtkSourceDrawSpacesFlags, 0 if no spaces should be drawn.
	 */
	public GtkSourceDrawSpacesFlags getDrawSpaces()
	{
		// GtkSourceDrawSpacesFlags gtk_source_view_get_draw_spaces  (GtkSourceView *view);
		return gtk_source_view_get_draw_spaces(gtkSourceView);
	}
	
	/**
	 * Gets the GtkSourceCompletion associated with view.
	 * Returns: the GtkSourceCompletion associated with view. [type GtkSource.Completion][transfer none]
	 */
	public SourceCompletion getCompletion()
	{
		// GtkSourceCompletion * gtk_source_view_get_completion (GtkSourceView *view);
		auto p = gtk_source_view_get_completion(gtkSourceView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceCompletion)(cast(GtkSourceCompletion*) p);
	}
	
	/**
	 * Returns the GtkSourceGutter object associated with window_type for view.
	 * Only GTK_TEXT_WINDOW_LEFT and GTK_TEXT_WINDOW_RIGHT are supported,
	 * respectively corresponding to the left and right gutter. The line numbers
	 * and mark category icons are rendered in the gutter corresponding to
	 * GTK_TEXT_WINDOW_LEFT.
	 * Since 2.8
	 * Params:
	 * windowType = the gutter window type.
	 * Returns: the GtkSourceGutter. [transfer none]
	 */
	public SourceGutter getGutter(GtkTextWindowType windowType)
	{
		// GtkSourceGutter * gtk_source_view_get_gutter (GtkSourceView *view,  GtkTextWindowType window_type);
		auto p = gtk_source_view_get_gutter(gtkSourceView, windowType);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceGutter)(cast(GtkSourceGutter*) p);
	}
}
