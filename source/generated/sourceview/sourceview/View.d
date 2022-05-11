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


module sourceview.View;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.TextIter;
private import gtk.TextView;
private import gtk.Widget;
private import sourceview.Buffer;
private import sourceview.Completion;
private import sourceview.Gutter;
private import sourceview.Hover;
private import sourceview.IndenterIF;
private import sourceview.MarkAttributes;
private import sourceview.Snippet;
private import sourceview.SpaceDrawer;
private import sourceview.c.functions;
public  import sourceview.c.types;
private import std.algorithm;


/**
 * Subclass of [class@Gtk.TextView].
 * 
 * `GtkSourceView` is the main class of the GtkSourceView library.
 * Use a [class@Buffer] to display text with a `GtkSourceView`.
 * 
 * This class provides:
 * 
 * - Show the line numbers;
 * - Show a right margin;
 * - Highlight the current line;
 * - Indentation settings;
 * - Configuration for the Home and End keyboard keys;
 * - Configure and show line marks;
 * - And a few other things.
 * 
 * An easy way to test all these features is to use the test-widget mini-program
 * provided in the GtkSourceView repository, in the tests/ directory.
 * 
 * # GtkSourceView as GtkBuildable
 * 
 * The GtkSourceView implementation of the [iface@Gtk.Buildable] interface exposes the
 * [property@View:completion] object with the internal-child "completion".
 * 
 * An example of a UI definition fragment with GtkSourceView:
 * ```xml
 * <object class="GtkSourceView" id="source_view">
 * <property name="tab-width">4</property>
 * <property name="auto-indent">True</property>
 * <child internal-child="completion">
 * <object class="GtkSourceCompletion">
 * <property name="select-on-show">False</property>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * # Changing the Font
 * 
 * Gtk CSS provides the best way to change the font for a `GtkSourceView` in a
 * manner that allows for components like [class@Map] to scale the desired
 * font.
 * 
 * ```c
 * GtkCssProvider *provider = gtk_css_provider_new ();
 * gtk_css_provider_load_from_data (provider,
 * "textview { font-family: Monospace; font-size: 8pt; }",
 * -1,
 * NULL);
 * gtk_style_context_add_provider (gtk_widget_get_style_context (view),
 * GTK_STYLE_PROVIDER (provider),
 * GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
 * g_object_unref (provider);
 * ```
 * 
 * If you need to adjust the font or size of font within a portion of the
 * document only, you should use a [class@Gtk.TextTag] with the [property@Gtk.TextTag:family] or
 * [property@Gtk.TextTag:scale] set so that the font size may be scaled relative to
 * the default font set in CSS.
 */
public class View : TextView
{
	/** the main Gtk struct */
	protected GtkSourceView* gtkSourceView;

	/** Get the main Gtk struct */
	public GtkSourceView* getViewStruct(bool transferOwnership = false)
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

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceView* gtkSourceView, bool ownedRef = false)
	{
		this.gtkSourceView = gtkSourceView;
		super(cast(GtkTextView*)gtkSourceView, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_view_get_type();
	}

	/**
	 * Creates a new `GtkSourceView`.
	 *
	 * By default, an empty [class@Buffer] will be lazily created and can be
	 * retrieved with [method@Gtk.TextView.get_buffer].
	 *
	 * If you want to specify your own buffer, either override the
	 * [vfunc@Gtk.TextView.create_buffer] factory method, or use
	 * [ctor@View.new_with_buffer].
	 *
	 * Returns: a new #GtkSourceView.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_view_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceView*) __p);
	}

	/**
	 * Creates a new #GtkSourceView widget displaying the buffer @buffer.
	 *
	 * One buffer can be shared among many widgets.
	 *
	 * Params:
	 *     buffer = a #GtkSourceBuffer.
	 *
	 * Returns: a new #GtkSourceView.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer buffer)
	{
		auto __p = gtk_source_view_new_with_buffer((buffer is null) ? null : buffer.getBufferStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_buffer");
		}

		this(cast(GtkSourceView*) __p);
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
	 */
	public GtkSourceBackgroundPatternType getBackgroundPattern()
	{
		return gtk_source_view_get_background_pattern(gtkSourceView);
	}

	/**
	 * Gets the [class@Completion] associated with @view.
	 *
	 * The returned object is guaranteed to be the same for the lifetime of @view.
	 * Each `GtkSourceView` object has a different [class@Completion].
	 *
	 * Returns: the #GtkSourceCompletion associated with @view.
	 */
	public Completion getCompletion()
	{
		auto __p = gtk_source_view_get_completion(gtkSourceView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Completion)(cast(GtkSourceCompletion*) __p);
	}

	/**
	 * Gets the [property@View:enable-snippets] property.
	 *
	 * If %TRUE, matching snippets found in the [class@SnippetManager]
	 * may be expanded when the user presses Tab after a word in the [class@View].
	 *
	 * Returns: %TRUE if enabled
	 */
	public bool getEnableSnippets()
	{
		return gtk_source_view_get_enable_snippets(gtkSourceView) != 0;
	}

	/**
	 * Returns the [class@Gutter] object associated with @window_type for @view.
	 *
	 * Only %GTK_TEXT_WINDOW_LEFT and %GTK_TEXT_WINDOW_RIGHT are supported,
	 * respectively corresponding to the left and right gutter. The line numbers
	 * and mark category icons are rendered in the left gutter.
	 *
	 * Params:
	 *     windowType = the gutter window type.
	 *
	 * Returns: the #GtkSourceGutter.
	 */
	public override Gutter getGutter(GtkTextWindowType windowType)
	{
		auto __p = gtk_source_view_get_gutter(gtkSourceView, windowType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Gutter)(cast(GtkSourceGutter*) __p);
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
	 * Gets the [class@Hover] associated with @view.
	 *
	 * The returned object is guaranteed to be the same for the lifetime of @view.
	 * Each [class@View] object has a different [class@Hover].
	 *
	 * Returns: a #GtkSourceHover associated with @view.
	 */
	public Hover getHover()
	{
		auto __p = gtk_source_view_get_hover(gtkSourceView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Hover)(cast(GtkSourceHover*) __p);
	}

	/**
	 * Returns whether when the tab key is pressed the current selection
	 * should get indented instead of replaced with the `\t` character.
	 *
	 * Returns: %TRUE if the selection is indented when tab is pressed.
	 */
	public bool getIndentOnTab()
	{
		return gtk_source_view_get_indent_on_tab(gtkSourceView) != 0;
	}

	/**
	 * Returns the number of spaces to use for each step of indent.
	 *
	 * See [method@View.set_indent_width] for details.
	 *
	 * Returns: indent width.
	 */
	public int getIndentWidth()
	{
		return gtk_source_view_get_indent_width(gtkSourceView);
	}

	/**
	 * Gets the [property@View:indenter] property.
	 *
	 * Returns: a #GtkSourceIndenter or %NULL
	 */
	public IndenterIF getIndenter()
	{
		auto __p = gtk_source_view_get_indenter(gtkSourceView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IndenterIF)(cast(GtkSourceIndenter*) __p);
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
	public MarkAttributes getMarkAttributes(string category, int* priority)
	{
		auto __p = gtk_source_view_get_mark_attributes(gtkSourceView, Str.toStringz(category), priority);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MarkAttributes)(cast(GtkSourceMarkAttributes*) __p);
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
	 */
	public bool getSmartBackspace()
	{
		return gtk_source_view_get_smart_backspace(gtkSourceView) != 0;
	}

	/**
	 * Returns a [enum@SmartHomeEndType] end value specifying
	 * how the cursor will move when HOME and END keys are pressed.
	 *
	 * Returns: a #GtkSourceSmartHomeEndType value.
	 */
	public GtkSourceSmartHomeEndType getSmartHomeEnd()
	{
		return gtk_source_view_get_smart_home_end(gtkSourceView);
	}

	/**
	 * Gets the [class@SpaceDrawer] associated with @view.
	 *
	 * The returned object is guaranteed to be the same for the lifetime of @view.
	 * Each [class@View] object has a different [class@SpaceDrawer].
	 *
	 * Returns: the #GtkSourceSpaceDrawer associated with @view.
	 */
	public SpaceDrawer getSpaceDrawer()
	{
		auto __p = gtk_source_view_get_space_drawer(gtkSourceView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SpaceDrawer)(cast(GtkSourceSpaceDrawer*) __p);
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
	 * [property@View:tab-width] of @view.
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
	 * Inserts one indentation level at the beginning of the specified lines. The
	 * empty lines are not indented.
	 *
	 * Params:
	 *     start = #GtkTextIter of the first line to indent
	 *     end = #GtkTextIter of the last line to indent
	 */
	public void indentLines(TextIter start, TextIter end)
	{
		gtk_source_view_indent_lines(gtkSourceView, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Inserts a new snippet at @location
	 *
	 * If another snippet was already active, it will be paused and the new
	 * snippet will become active. Once the focus positions of @snippet have
	 * been exhausted, editing will return to the previous snippet.
	 *
	 * Params:
	 *     snippet = a #GtkSourceSnippet
	 *     location = a #GtkTextIter or %NULL for the cursor position
	 */
	public void pushSnippet(Snippet snippet, TextIter location)
	{
		gtk_source_view_push_snippet(gtkSourceView, (snippet is null) ? null : snippet.getSnippetStruct(), (location is null) ? null : location.getTextIterStruct());
	}

	/**
	 * If %TRUE auto-indentation of text is enabled.
	 *
	 * When Enter is pressed to create a new line, the auto-indentation inserts the
	 * same indentation as the previous line. This is **not** a
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
	 */
	public void setBackgroundPattern(GtkSourceBackgroundPatternType backgroundPattern)
	{
		gtk_source_view_set_background_pattern(gtkSourceView, backgroundPattern);
	}

	/**
	 * Sets the [property@View:enable-snippets] property.
	 *
	 * If @enable_snippets is %TRUE, matching snippets found in the
	 * [class@SnippetManager] may be expanded when the user presses
	 * Tab after a word in the [class@View].
	 *
	 * Params:
	 *     enableSnippets = if snippets should be enabled
	 */
	public void setEnableSnippets(bool enableSnippets)
	{
		gtk_source_view_set_enable_snippets(gtkSourceView, enableSnippets);
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
	 * selected lines are indented of one level instead of being replaced with a `\t`
	 * character. Shift+Tab unindents the selection.
	 *
	 * If the first or last line is not selected completely, it is also indented or
	 * unindented.
	 *
	 * When the selection doesn't span several lines, the tab key always replaces
	 * the selection with a normal `\t` character.
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
	 * pressed.
	 *
	 * If @width is -1, the value of the [property@View:tab-width] property
	 * will be used.
	 *
	 * The [property@View:indent-width] interacts with the
	 * [property@View:insert-spaces-instead-of-tabs] property and
	 * [property@View:tab-width]. An example will be clearer:
	 *
	 * If the [property@View:indent-width] is 4 and [property@View:tab-width] is 8 and
	 * [property@View:insert-spaces-instead-of-tabs] is %FALSE, then pressing the tab
	 * key at the beginning of a line will insert 4 spaces. So far so good. Pressing
	 * the tab key a second time will remove the 4 spaces and insert a `\t` character
	 * instead (since [property@View:tab-width] is 8). On the other hand, if
	 * [property@View:insert-spaces-instead-of-tabs] is %TRUE, the second tab key
	 * pressed will insert 4 more spaces for a total of 8 spaces in the
	 * [class@Gtk.TextBuffer].
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
	 * Sets the indenter for @view to @indenter.
	 *
	 * Note that the indenter will not be used unless #GtkSourceView:auto-indent
	 * has been set to %TRUE.
	 *
	 * Params:
	 *     indenter = a #GtkSourceIndenter or %NULL
	 */
	public void setIndenter(IndenterIF indenter)
	{
		gtk_source_view_set_indenter(gtkSourceView, (indenter is null) ? null : indenter.getIndenterStruct());
	}

	/**
	 * If %TRUE a tab key pressed is replaced by a group of space characters.
	 *
	 * Of course it is still possible to insert a real `\t` programmatically with the
	 * [class@Gtk.TextBuffer] API.
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
	public void setMarkAttributes(string category, MarkAttributes attributes, int priority)
	{
		gtk_source_view_set_mark_attributes(gtkSourceView, Str.toStringz(category), (attributes is null) ? null : attributes.getMarkAttributesStruct(), priority);
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
	 * Sets the width of tabulation in characters.
	 *
	 * The #GtkTextBuffer still contains `\t` characters,
	 * but they can take a different visual width in a [class@View] widget.
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
	 */
	public void unindentLines(TextIter start, TextIter end)
	{
		gtk_source_view_unindent_lines(gtkSourceView, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Keybinding signal to change case of the text at the current cursor position.
	 *
	 * Params:
	 *     caseType = the case to use
	 */
	gulong addOnChangeCase(void delegate(GtkSourceChangeCaseType, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "change-case", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Keybinding signal to edit a number at the current cursor position.
	 *
	 * Params:
	 *     count = the number to add to the number at the current position
	 */
	gulong addOnChangeNumber(void delegate(int, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "change-number", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Keybinding signal to join the lines currently selected.
	 */
	gulong addOnJoinLines(void delegate(View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "join-lines", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a line mark has been activated (for instance when there
	 * was a button press in the line marks gutter).
	 *
	 * You can use @iter to determine on which line the activation took place.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     button = the button that was pressed
	 *     state = the modifier state, if any
	 *     nPresses = the number of presses
	 */
	gulong addOnLineMarkActivated(void delegate(TextIter, uint, GdkModifierType, int, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "line-mark-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The signal is a keybinding which gets emitted when the user initiates moving a line.
	 *
	 * The default binding key is Alt+Up/Down arrow. And moves the currently selected lines,
	 * or the current line up or down by one line.
	 *
	 * Params:
	 *     down = %TRUE to move down, %FALSE to move up.
	 */
	gulong addOnMoveLines(void delegate(bool, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-lines", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Keybinding signal to move the cursor to the matching bracket.
	 *
	 * Params:
	 *     extendSelection = %TRUE if the move should extend the selection
	 */
	gulong addOnMoveToMatchingBracket(void delegate(bool, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-to-matching-bracket", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The signal is a keybinding which gets emitted when the user initiates moving a word.
	 *
	 * The default binding key is Alt+Left/Right Arrow and moves the current selection, or the current
	 * word by one word.
	 *
	 * Params:
	 *     count = the number of words to move over
	 */
	gulong addOnMoveWords(void delegate(int, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-words", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The signal is emitted to insert a new snippet into the view.
	 *
	 * If another snippet was active, it will be paused until all focus positions of @snippet have been exhausted.
	 *
	 * @location will be updated to point at the end of the snippet.
	 *
	 * Params:
	 *     snippet = a #GtkSourceSnippet
	 *     location = a #GtkTextIter
	 */
	gulong addOnPushSnippet(void delegate(Snippet, TextIter, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "push-snippet", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The signal is a key binding signal which gets
	 * emitted when the user requests a completion, by pressing
	 * <keycombo><keycap>Control</keycap><keycap>space</keycap></keycombo>.
	 *
	 * This will create a [class@CompletionContext] with the activation
	 * type as %GTK_SOURCE_COMPLETION_ACTIVATION_USER_REQUESTED.
	 *
	 * Applications should not connect to it, but may emit it with
	 * [func@GObject.signal_emit_by_name] if they need to activate the completion by
	 * another means, for example with another key binding or a menu entry.
	 */
	gulong addOnShowCompletion(void delegate(View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "show-completion", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a the cursor was moved according to the smart home end setting.
	 *
	 * The signal is emitted after the cursor is moved, but
	 * during the [signal@Gtk.TextView::move-cursor] action. This can be used to find
	 * out whether the cursor was moved by a normal home/end or by a smart
	 * home/end.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     count = the count
	 */
	gulong addOnSmartHomeEnd(void delegate(TextIter, int, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "smart-home-end", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
