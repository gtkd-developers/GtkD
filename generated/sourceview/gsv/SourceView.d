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
private import gsv.SpaceDrawer;
private import gsvc.gsv;
public  import gsvc.gsvtypes;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.TextIter;
private import gtk.TextView;
private import gtk.Widget;
private import std.algorithm;


/** */
public class SourceView : TextView
{
	/** the main Gtk struct */
	protected GtkSourceView* gtkSourceView;

	/** Get the main Gtk struct */
	public GtkSourceView* getSourceViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
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

	/** */
	public static GType getType()
	{
		return gtk_source_view_get_type();
	}

	/**
	 * Creates a new #GtkSourceView.
	 *
	 * By default, an empty #GtkSourceBuffer will be lazily created and can be
	 * retrieved with gtk_text_view_get_buffer().
	 *
	 * If you want to specify your own buffer, either override the
	 * #GtkTextViewClass create_buffer factory method, or use
	 * gtk_source_view_new_with_buffer().
	 *
	 * Returns: a new #GtkSourceView.
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
	 * Returns: a new #GtkSourceView.
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
	 * Returns whether auto-indentation of text is enabled.
	 *
	 * Returns: %TRUE if auto indentation is enabled.
	 */
	public bool getAutoIndent()
	{
		return gtk_source_view_get_auto_indent(gtkSourceView) != 0;
	}

	/**
	 * Returns the #GtkSourceBackgroundPatternType specifying if and how
	 * the background pattern should be displayed for this @view.
	 *
	 * Returns: the #GtkSourceBackgroundPatternType.
	 *
	 * Since: 3.16
	 */
	public GtkSourceBackgroundPatternType getBackgroundPattern()
	{
		return gtk_source_view_get_background_pattern(gtkSourceView);
	}

	/**
	 * Gets the #GtkSourceCompletion associated with @view. The returned object is
	 * guaranteed to be the same for the lifetime of @view. Each #GtkSourceView
	 * object has a different #GtkSourceCompletion.
	 *
	 * Returns: the #GtkSourceCompletion associated with @view.
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
	 * Deprecated: Use gtk_source_space_drawer_get_types_for_locations()
	 * instead.
	 *
	 * Returns: the #GtkSourceDrawSpacesFlags, 0 if no spaces should be drawn.
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
	 * Returns: the #GtkSourceGutter.
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
	 * Returns: %TRUE if the current line is highlighted.
	 */
	public bool getHighlightCurrentLine()
	{
		return gtk_source_view_get_highlight_current_line(gtkSourceView) != 0;
	}

	/**
	 * Returns whether when the tab key is pressed the current selection
	 * should get indented instead of replaced with the \t character.
	 *
	 * Returns: %TRUE if the selection is indented when tab is pressed.
	 */
	public bool getIndentOnTab()
	{
		return gtk_source_view_get_indent_on_tab(gtkSourceView) != 0;
	}

	/**
	 * Returns the number of spaces to use for each step of indent.
	 * See gtk_source_view_set_indent_width() for details.
	 *
	 * Returns: indent width.
	 */
	public int getIndentWidth()
	{
		return gtk_source_view_get_indent_width(gtkSourceView);
	}

	/**
	 * Returns whether when inserting a tabulator character it should
	 * be replaced by a group of space characters.
	 *
	 * Returns: %TRUE if spaces are inserted instead of tabs.
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
	 * Returns: #GtkSourceMarkAttributes for the @category.
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
	 * Returns: the position of the right margin.
	 */
	public uint getRightMarginPosition()
	{
		return gtk_source_view_get_right_margin_position(gtkSourceView);
	}

	/**
	 * Returns whether line marks are displayed beside the text.
	 *
	 * Returns: %TRUE if the line marks are displayed.
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
	 * Returns: %TRUE if the line numbers are displayed.
	 */
	public bool getShowLineNumbers()
	{
		return gtk_source_view_get_show_line_numbers(gtkSourceView) != 0;
	}

	/**
	 * Returns whether a right margin is displayed.
	 *
	 * Returns: %TRUE if the right margin is shown.
	 */
	public bool getShowRightMargin()
	{
		return gtk_source_view_get_show_right_margin(gtkSourceView) != 0;
	}

	/**
	 * Returns %TRUE if pressing the Backspace key will try to delete spaces
	 * up to the previous tab stop.
	 *
	 * Returns: %TRUE if smart Backspace handling is enabled.
	 *
	 * Since: 3.18
	 */
	public bool getSmartBackspace()
	{
		return gtk_source_view_get_smart_backspace(gtkSourceView) != 0;
	}

	/**
	 * Returns a #GtkSourceSmartHomeEndType end value specifying
	 * how the cursor will move when HOME and END keys are pressed.
	 *
	 * Returns: a #GtkSourceSmartHomeEndType value.
	 */
	public GtkSourceSmartHomeEndType getSmartHomeEnd()
	{
		return gtk_source_view_get_smart_home_end(gtkSourceView);
	}

	/**
	 * Gets the #GtkSourceSpaceDrawer associated with @view. The returned object is
	 * guaranteed to be the same for the lifetime of @view. Each #GtkSourceView
	 * object has a different #GtkSourceSpaceDrawer.
	 *
	 * Returns: the #GtkSourceSpaceDrawer associated with @view.
	 *
	 * Since: 3.24
	 */
	public SpaceDrawer getSpaceDrawer()
	{
		auto p = gtk_source_view_get_space_drawer(gtkSourceView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SpaceDrawer)(cast(GtkSourceSpaceDrawer*) p);
	}

	/**
	 * Returns the width of tabulation in characters.
	 *
	 * Returns: width of tab.
	 */
	public uint getTabWidth()
	{
		return gtk_source_view_get_tab_width(gtkSourceView);
	}

	/**
	 * Determines the visual column at @iter taking into consideration the
	 * #GtkSourceView:tab-width of @view.
	 *
	 * Params:
	 *     iter = a position in @view.
	 *
	 * Returns: the visual column at @iter.
	 */
	public uint getVisualColumn(TextIter iter)
	{
		return gtk_source_view_get_visual_column(gtkSourceView, (iter is null) ? null : iter.getTextIterStruct());
	}

	/**
	 * Insert one indentation level at the beginning of the
	 * specified lines.
	 *
	 * Params:
	 *     start = #GtkTextIter of the first line to indent
	 *     end = #GtkTextIter of the last line to indent
	 *
	 * Since: 3.16
	 */
	public void indentLines(TextIter start, TextIter end)
	{
		gtk_source_view_indent_lines(gtkSourceView, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * If %TRUE auto-indentation of text is enabled.
	 *
	 * When Enter is pressed to create a new line, the auto-indentation inserts the
	 * same indentation as the previous line. This is <emphasis>not</emphasis> a
	 * "smart indentation" where an indentation level is added or removed depending
	 * on the context.
	 *
	 * Params:
	 *     enable = whether to enable auto indentation.
	 */
	public void setAutoIndent(bool enable)
	{
		gtk_source_view_set_auto_indent(gtkSourceView, enable);
	}

	/**
	 * Set if and how the background pattern should be displayed.
	 *
	 * Params:
	 *     backgroundPattern = the #GtkSourceBackgroundPatternType.
	 *
	 * Since: 3.16
	 */
	public void setBackgroundPattern(GtkSourceBackgroundPatternType backgroundPattern)
	{
		gtk_source_view_set_background_pattern(gtkSourceView, backgroundPattern);
	}

	/**
	 * Set if and how the spaces should be visualized. Specifying @flags as 0 will
	 * disable display of spaces.
	 *
	 * For a finer-grained method, there is also the GtkSourceTag's
	 * #GtkSourceTag:draw-spaces property.
	 *
	 * Deprecated: Use gtk_source_space_drawer_set_types_for_locations()
	 * instead.
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
	 * If @highlight is %TRUE the current line will be highlighted.
	 *
	 * Params:
	 *     highlight = whether to highlight the current line.
	 */
	public void setHighlightCurrentLine(bool highlight)
	{
		gtk_source_view_set_highlight_current_line(gtkSourceView, highlight);
	}

	/**
	 * If %TRUE, when the tab key is pressed when several lines are selected, the
	 * selected lines are indented of one level instead of being replaced with a \t
	 * character. Shift+Tab unindents the selection.
	 *
	 * If the first or last line is not selected completely, it is also indented or
	 * unindented.
	 *
	 * When the selection doesn't span several lines, the tab key always replaces
	 * the selection with a normal \t character.
	 *
	 * Params:
	 *     enable = whether to indent a block when tab is pressed.
	 */
	public void setIndentOnTab(bool enable)
	{
		gtk_source_view_set_indent_on_tab(gtkSourceView, enable);
	}

	/**
	 * Sets the number of spaces to use for each step of indent when the tab key is
	 * pressed. If @width is -1, the value of the #GtkSourceView:tab-width property
	 * will be used.
	 *
	 * The #GtkSourceView:indent-width interacts with the
	 * #GtkSourceView:insert-spaces-instead-of-tabs property and
	 * #GtkSourceView:tab-width. An example will be clearer: if the
	 * #GtkSourceView:indent-width is 4 and
	 * #GtkSourceView:tab-width is 8 and
	 * #GtkSourceView:insert-spaces-instead-of-tabs is %FALSE, then pressing the tab
	 * key at the beginning of a line will insert 4 spaces. So far so good. Pressing
	 * the tab key a second time will remove the 4 spaces and insert a \t character
	 * instead (since #GtkSourceView:tab-width is 8). On the other hand, if
	 * #GtkSourceView:insert-spaces-instead-of-tabs is %TRUE, the second tab key
	 * pressed will insert 4 more spaces for a total of 8 spaces in the
	 * #GtkTextBuffer.
	 *
	 * The test-widget program (available in the GtkSourceView repository) may be
	 * useful to better understand the indentation settings (enable the space
	 * drawing!).
	 *
	 * Params:
	 *     width = indent width in characters.
	 */
	public void setIndentWidth(int width)
	{
		gtk_source_view_set_indent_width(gtkSourceView, width);
	}

	/**
	 * If %TRUE a tab key pressed is replaced by a group of space characters. Of
	 * course it is still possible to insert a real \t programmatically with the
	 * #GtkTextBuffer API.
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
	 * When set to %TRUE, pressing the Backspace key will try to delete spaces
	 * up to the previous tab stop.
	 *
	 * Params:
	 *     smartBackspace = whether to enable smart Backspace handling.
	 *
	 * Since: 3.18
	 */
	public void setSmartBackspace(bool smartBackspace)
	{
		gtk_source_view_set_smart_backspace(gtkSourceView, smartBackspace);
	}

	/**
	 * Set the desired movement of the cursor when HOME and END keys
	 * are pressed.
	 *
	 * Params:
	 *     smartHomeEnd = the desired behavior among #GtkSourceSmartHomeEndType.
	 */
	public void setSmartHomeEnd(GtkSourceSmartHomeEndType smartHomeEnd)
	{
		gtk_source_view_set_smart_home_end(gtkSourceView, smartHomeEnd);
	}

	/**
	 * Sets the width of tabulation in characters. The #GtkTextBuffer still contains
	 * \t characters, but they can take a different visual width in a #GtkSourceView
	 * widget.
	 *
	 * Params:
	 *     width = width of tab in characters.
	 */
	public void setTabWidth(uint width)
	{
		gtk_source_view_set_tab_width(gtkSourceView, width);
	}

	/**
	 * Removes one indentation level at the beginning of the
	 * specified lines.
	 *
	 * Params:
	 *     start = #GtkTextIter of the first line to indent
	 *     end = #GtkTextIter of the last line to indent
	 *
	 * Since: 3.16
	 */
	public void unindentLines(TextIter start, TextIter end)
	{
		gtk_source_view_unindent_lines(gtkSourceView, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	protected class OnChangeCaseDelegateWrapper
	{
		void delegate(GtkSourceChangeCaseType, SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(GtkSourceChangeCaseType, SourceView) dlg)
		{
			this.dlg = dlg;
			onChangeCaseListeners ~= this;
		}
		
		void remove(OnChangeCaseDelegateWrapper source)
		{
			foreach(index, wrapper; onChangeCaseListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onChangeCaseListeners[index] = null;
					onChangeCaseListeners = std.algorithm.remove(onChangeCaseListeners, index);
					break;
				}
			}
		}
	}
	OnChangeCaseDelegateWrapper[] onChangeCaseListeners;

	/**
	 * Keybinding signal to change case of the text at the current cursor position.
	 *
	 * Params:
	 *     caseType = the case to use
	 *
	 * Since: 3.16
	 */
	gulong addOnChangeCase(void delegate(GtkSourceChangeCaseType, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnChangeCaseDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"change-case",
			cast(GCallback)&callBackChangeCase,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackChangeCaseDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackChangeCase(GtkSourceView* sourceviewStruct, GtkSourceChangeCaseType caseType, OnChangeCaseDelegateWrapper wrapper)
	{
		wrapper.dlg(caseType, wrapper.outer);
	}
	
	extern(C) static void callBackChangeCaseDestroy(OnChangeCaseDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnChangeNumberDelegateWrapper
	{
		void delegate(int, SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(int, SourceView) dlg)
		{
			this.dlg = dlg;
			onChangeNumberListeners ~= this;
		}
		
		void remove(OnChangeNumberDelegateWrapper source)
		{
			foreach(index, wrapper; onChangeNumberListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onChangeNumberListeners[index] = null;
					onChangeNumberListeners = std.algorithm.remove(onChangeNumberListeners, index);
					break;
				}
			}
		}
	}
	OnChangeNumberDelegateWrapper[] onChangeNumberListeners;

	/**
	 * Keybinding signal to edit a number at the current cursor position.
	 *
	 * Params:
	 *     count = the number to add to the number at the current position
	 *
	 * Since: 3.16
	 */
	gulong addOnChangeNumber(void delegate(int, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnChangeNumberDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"change-number",
			cast(GCallback)&callBackChangeNumber,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackChangeNumberDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackChangeNumber(GtkSourceView* sourceviewStruct, int count, OnChangeNumberDelegateWrapper wrapper)
	{
		wrapper.dlg(count, wrapper.outer);
	}
	
	extern(C) static void callBackChangeNumberDestroy(OnChangeNumberDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnJoinLinesDelegateWrapper
	{
		void delegate(SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(SourceView) dlg)
		{
			this.dlg = dlg;
			onJoinLinesListeners ~= this;
		}
		
		void remove(OnJoinLinesDelegateWrapper source)
		{
			foreach(index, wrapper; onJoinLinesListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onJoinLinesListeners[index] = null;
					onJoinLinesListeners = std.algorithm.remove(onJoinLinesListeners, index);
					break;
				}
			}
		}
	}
	OnJoinLinesDelegateWrapper[] onJoinLinesListeners;

	/**
	 * Keybinding signal to join the lines currently selected.
	 *
	 * Since: 3.16
	 */
	gulong addOnJoinLines(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnJoinLinesDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"join-lines",
			cast(GCallback)&callBackJoinLines,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackJoinLinesDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackJoinLines(GtkSourceView* sourceviewStruct, OnJoinLinesDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackJoinLinesDestroy(OnJoinLinesDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnLineMarkActivatedDelegateWrapper
	{
		void delegate(TextIter, Event, SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(TextIter, Event, SourceView) dlg)
		{
			this.dlg = dlg;
			onLineMarkActivatedListeners ~= this;
		}
		
		void remove(OnLineMarkActivatedDelegateWrapper source)
		{
			foreach(index, wrapper; onLineMarkActivatedListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onLineMarkActivatedListeners[index] = null;
					onLineMarkActivatedListeners = std.algorithm.remove(onLineMarkActivatedListeners, index);
					break;
				}
			}
		}
	}
	OnLineMarkActivatedDelegateWrapper[] onLineMarkActivatedListeners;

	/**
	 * Emitted when a line mark has been activated (for instance when there
	 * was a button press in the line marks gutter). You can use @iter to
	 * determine on which line the activation took place.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     event = the #GdkEvent that activated the event
	 */
	gulong addOnLineMarkActivated(void delegate(TextIter, Event, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnLineMarkActivatedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"line-mark-activated",
			cast(GCallback)&callBackLineMarkActivated,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackLineMarkActivatedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackLineMarkActivated(GtkSourceView* sourceviewStruct, GtkTextIter* iter, GdkEvent* event, OnLineMarkActivatedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(TextIter)(iter), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackLineMarkActivatedDestroy(OnLineMarkActivatedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMoveLinesDelegateWrapper
	{
		void delegate(bool, int, SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(bool, int, SourceView) dlg)
		{
			this.dlg = dlg;
			onMoveLinesListeners ~= this;
		}
		
		void remove(OnMoveLinesDelegateWrapper source)
		{
			foreach(index, wrapper; onMoveLinesListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onMoveLinesListeners[index] = null;
					onMoveLinesListeners = std.algorithm.remove(onMoveLinesListeners, index);
					break;
				}
			}
		}
	}
	OnMoveLinesDelegateWrapper[] onMoveLinesListeners;

	/**
	 * The ::move-lines signal is a keybinding which gets emitted
	 * when the user initiates moving a line. The default binding key
	 * is Alt+Up/Down arrow. And moves the currently selected lines,
	 * or the current line by @count. For the moment, only
	 * @count of -1 or 1 is valid.
	 *
	 * The @copy parameter is deprecated, it has never been used by
	 * GtkSourceView (the value is always %FALSE) and was buggy.
	 *
	 * Params:
	 *     copy = %TRUE if the line should be copied, %FALSE if it should be
	 *         moved. This parameter is deprecated and will be removed in a later
	 *         version, it should be always %FALSE.
	 *     count = the number of lines to move over. Only 1 and -1 are
	 *         supported.
	 *
	 * Since: 2.10
	 */
	gulong addOnMoveLines(void delegate(bool, int, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMoveLinesDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"move-lines",
			cast(GCallback)&callBackMoveLines,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMoveLinesDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMoveLines(GtkSourceView* sourceviewStruct, bool copy, int count, OnMoveLinesDelegateWrapper wrapper)
	{
		wrapper.dlg(copy, count, wrapper.outer);
	}
	
	extern(C) static void callBackMoveLinesDestroy(OnMoveLinesDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMoveToMatchingBracketDelegateWrapper
	{
		void delegate(bool, SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(bool, SourceView) dlg)
		{
			this.dlg = dlg;
			onMoveToMatchingBracketListeners ~= this;
		}
		
		void remove(OnMoveToMatchingBracketDelegateWrapper source)
		{
			foreach(index, wrapper; onMoveToMatchingBracketListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onMoveToMatchingBracketListeners[index] = null;
					onMoveToMatchingBracketListeners = std.algorithm.remove(onMoveToMatchingBracketListeners, index);
					break;
				}
			}
		}
	}
	OnMoveToMatchingBracketDelegateWrapper[] onMoveToMatchingBracketListeners;

	/**
	 * Keybinding signal to move the cursor to the matching bracket.
	 *
	 * Params:
	 *     extendSelection = %TRUE if the move should extend the selection
	 *
	 * Since: 3.16
	 */
	gulong addOnMoveToMatchingBracket(void delegate(bool, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMoveToMatchingBracketDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"move-to-matching-bracket",
			cast(GCallback)&callBackMoveToMatchingBracket,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMoveToMatchingBracketDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMoveToMatchingBracket(GtkSourceView* sourceviewStruct, bool extendSelection, OnMoveToMatchingBracketDelegateWrapper wrapper)
	{
		wrapper.dlg(extendSelection, wrapper.outer);
	}
	
	extern(C) static void callBackMoveToMatchingBracketDestroy(OnMoveToMatchingBracketDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMoveWordsDelegateWrapper
	{
		void delegate(int, SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(int, SourceView) dlg)
		{
			this.dlg = dlg;
			onMoveWordsListeners ~= this;
		}
		
		void remove(OnMoveWordsDelegateWrapper source)
		{
			foreach(index, wrapper; onMoveWordsListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onMoveWordsListeners[index] = null;
					onMoveWordsListeners = std.algorithm.remove(onMoveWordsListeners, index);
					break;
				}
			}
		}
	}
	OnMoveWordsDelegateWrapper[] onMoveWordsListeners;

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
	gulong addOnMoveWords(void delegate(int, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMoveWordsDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"move-words",
			cast(GCallback)&callBackMoveWords,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMoveWordsDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMoveWords(GtkSourceView* sourceviewStruct, int count, OnMoveWordsDelegateWrapper wrapper)
	{
		wrapper.dlg(count, wrapper.outer);
	}
	
	extern(C) static void callBackMoveWordsDestroy(OnMoveWordsDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnRedoDelegateWrapper
	{
		void delegate(SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(SourceView) dlg)
		{
			this.dlg = dlg;
			onRedoListeners ~= this;
		}
		
		void remove(OnRedoDelegateWrapper source)
		{
			foreach(index, wrapper; onRedoListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onRedoListeners[index] = null;
					onRedoListeners = std.algorithm.remove(onRedoListeners, index);
					break;
				}
			}
		}
	}
	OnRedoDelegateWrapper[] onRedoListeners;

	/** */
	gulong addOnRedo(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnRedoDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"redo",
			cast(GCallback)&callBackRedo,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackRedoDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackRedo(GtkSourceView* sourceviewStruct, OnRedoDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackRedoDestroy(OnRedoDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnShowCompletionDelegateWrapper
	{
		void delegate(SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(SourceView) dlg)
		{
			this.dlg = dlg;
			onShowCompletionListeners ~= this;
		}
		
		void remove(OnShowCompletionDelegateWrapper source)
		{
			foreach(index, wrapper; onShowCompletionListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onShowCompletionListeners[index] = null;
					onShowCompletionListeners = std.algorithm.remove(onShowCompletionListeners, index);
					break;
				}
			}
		}
	}
	OnShowCompletionDelegateWrapper[] onShowCompletionListeners;

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
	gulong addOnShowCompletion(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnShowCompletionDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"show-completion",
			cast(GCallback)&callBackShowCompletion,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackShowCompletionDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackShowCompletion(GtkSourceView* sourceviewStruct, OnShowCompletionDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackShowCompletionDestroy(OnShowCompletionDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnSmartHomeEndDelegateWrapper
	{
		void delegate(TextIter, int, SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(TextIter, int, SourceView) dlg)
		{
			this.dlg = dlg;
			onSmartHomeEndListeners ~= this;
		}
		
		void remove(OnSmartHomeEndDelegateWrapper source)
		{
			foreach(index, wrapper; onSmartHomeEndListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onSmartHomeEndListeners[index] = null;
					onSmartHomeEndListeners = std.algorithm.remove(onSmartHomeEndListeners, index);
					break;
				}
			}
		}
	}
	OnSmartHomeEndDelegateWrapper[] onSmartHomeEndListeners;

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
	gulong addOnSmartHomeEnd(void delegate(TextIter, int, SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnSmartHomeEndDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"smart-home-end",
			cast(GCallback)&callBackSmartHomeEnd,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackSmartHomeEndDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackSmartHomeEnd(GtkSourceView* sourceviewStruct, GtkTextIter* iter, int count, OnSmartHomeEndDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(TextIter)(iter), count, wrapper.outer);
	}
	
	extern(C) static void callBackSmartHomeEndDestroy(OnSmartHomeEndDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnUndoDelegateWrapper
	{
		void delegate(SourceView) dlg;
		gulong handlerId;
		
		this(void delegate(SourceView) dlg)
		{
			this.dlg = dlg;
			onUndoListeners ~= this;
		}
		
		void remove(OnUndoDelegateWrapper source)
		{
			foreach(index, wrapper; onUndoListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onUndoListeners[index] = null;
					onUndoListeners = std.algorithm.remove(onUndoListeners, index);
					break;
				}
			}
		}
	}
	OnUndoDelegateWrapper[] onUndoListeners;

	/** */
	gulong addOnUndo(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnUndoDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"undo",
			cast(GCallback)&callBackUndo,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackUndoDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackUndo(GtkSourceView* sourceviewStruct, OnUndoDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackUndoDestroy(OnUndoDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
