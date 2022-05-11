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


module gtk.Label;

private import gio.MenuModel;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import pango.PgAttributeList;
private import pango.PgLayout;
private import std.algorithm;


/**
 * The `GtkLabel` widget displays a small amount of text.
 * 
 * As the name implies, most labels are used to label another widget
 * such as a [class@Button].
 * 
 * ![An example GtkLabel](label.png)
 * 
 * # CSS nodes
 * 
 * ```
 * label
 * ├── [selection]
 * ├── [link]
 * ┊
 * ╰── [link]
 * ```
 * 
 * `GtkLabel` has a single CSS node with the name label. A wide variety
 * of style classes may be applied to labels, such as .title, .subtitle,
 * .dim-label, etc. In the `GtkShortcutsWindow`, labels are used with the
 * .keycap style class.
 * 
 * If the label has a selection, it gets a subnode with name selection.
 * 
 * If the label has links, there is one subnode per link. These subnodes
 * carry the link or visited state depending on whether they have been
 * visited. In this case, label node also gets a .link style class.
 * 
 * # GtkLabel as GtkBuildable
 * 
 * The GtkLabel implementation of the GtkBuildable interface supports a
 * custom <attributes> element, which supports any number of <attribute>
 * elements. The <attribute> element has attributes named “name“, “value“,
 * “start“ and “end“ and allows you to specify [struct@Pango.Attribute]
 * values for this label.
 * 
 * An example of a UI definition fragment specifying Pango attributes:
 * ```xml
 * <object class="GtkLabel">
 * <attributes>
 * <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
 * <attribute name="background" value="red" start="5" end="10"/>
 * </attributes>
 * </object>
 * ```
 * 
 * The start and end attributes specify the range of characters to which the
 * Pango attribute applies. If start and end are not specified, the attribute is
 * applied to the whole text. Note that specifying ranges does not make much
 * sense with translatable attributes. Use markup embedded in the translatable
 * content instead.
 * 
 * # Accessibility
 * 
 * `GtkLabel` uses the %GTK_ACCESSIBLE_ROLE_LABEL role.
 * 
 * # Mnemonics
 * 
 * Labels may contain “mnemonics”. Mnemonics are underlined characters in the
 * label, used for keyboard navigation. Mnemonics are created by providing a
 * string with an underscore before the mnemonic character, such as `"_File"`,
 * to the functions [ctor@Gtk.Label.new_with_mnemonic] or
 * [method@Gtk.Label.set_text_with_mnemonic].
 * 
 * Mnemonics automatically activate any activatable widget the label is
 * inside, such as a [class@Gtk.Button]; if the label is not inside the
 * mnemonic’s target widget, you have to tell the label about the target
 * using [class@Gtk.Label.set_mnemonic_widget]. Here’s a simple example where
 * the label is inside a button:
 * 
 * ```c
 * // Pressing Alt+H will activate this button
 * GtkWidget *button = gtk_button_new ();
 * GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
 * gtk_button_set_child (GTK_BUTTON (button), label);
 * ```
 * 
 * There’s a convenience function to create buttons with a mnemonic label
 * already inside:
 * 
 * ```c
 * // Pressing Alt+H will activate this button
 * GtkWidget *button = gtk_button_new_with_mnemonic ("_Hello");
 * ```
 * 
 * To create a mnemonic for a widget alongside the label, such as a
 * [class@Gtk.Entry], you have to point the label at the entry with
 * [method@Gtk.Label.set_mnemonic_widget]:
 * 
 * ```c
 * // Pressing Alt+H will focus the entry
 * GtkWidget *entry = gtk_entry_new ();
 * GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
 * gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
 * ```
 * 
 * # Markup (styled text)
 * 
 * To make it easy to format text in a label (changing colors,
 * fonts, etc.), label text can be provided in a simple
 * markup format:
 * 
 * Here’s how to create a label with a small font:
 * ```c
 * GtkWidget *label = gtk_label_new (NULL);
 * gtk_label_set_markup (GTK_LABEL (label), "<small>Small text</small>");
 * ```
 * 
 * (See the Pango manual for complete documentation] of available
 * tags, [func@Pango.parse_markup])
 * 
 * The markup passed to gtk_label_set_markup() must be valid; for example,
 * literal <, > and & characters must be escaped as &lt;, &gt;, and &amp;.
 * If you pass text obtained from the user, file, or a network to
 * [method@Gtk.Label.set_markup], you’ll want to escape it with
 * g_markup_escape_text() or g_markup_printf_escaped().
 * 
 * Markup strings are just a convenient way to set the [struct@Pango.AttrList]
 * on a label; [method@Gtk.Label.set_attributes] may be a simpler way to set
 * attributes in some cases. Be careful though; [struct@Pango.AttrList] tends
 * to cause internationalization problems, unless you’re applying attributes
 * to the entire string (i.e. unless you set the range of each attribute
 * to [0, %G_MAXINT)). The reason is that specifying the start_index and
 * end_index for a [struct@Pango.Attribute] requires knowledge of the exact
 * string being displayed, so translations will cause problems.
 * 
 * # Selectable labels
 * 
 * Labels can be made selectable with [method@Gtk.Label.set_selectable].
 * Selectable labels allow the user to copy the label contents to
 * the clipboard. Only labels that contain useful-to-copy information
 * — such as error messages — should be made selectable.
 * 
 * # Text layout
 * 
 * A label can contain any number of paragraphs, but will have
 * performance problems if it contains more than a small number.
 * Paragraphs are separated by newlines or other paragraph separators
 * understood by Pango.
 * 
 * Labels can automatically wrap text if you call [method@Gtk.Label.set_wrap].
 * 
 * [method@Gtk.Label.set_justify] sets how the lines in a label align
 * with one another. If you want to set how the label as a whole aligns
 * in its available space, see the [property@Gtk.Widget:halign] and
 * [property@Gtk.Widget:valign] properties.
 * 
 * The [property@Gtk.Label:width-chars] and [property@Gtk.Label:max-width-chars]
 * properties can be used to control the size allocation of ellipsized or
 * wrapped labels. For ellipsizing labels, if either is specified (and less
 * than the actual text size), it is used as the minimum width, and the actual
 * text size is used as the natural width of the label. For wrapping labels,
 * width-chars is used as the minimum width, if specified, and max-width-chars
 * is used as the natural width. Even if max-width-chars specified, wrapping
 * labels will be rewrapped to use all of the available width.
 * 
 * # Links
 * 
 * GTK supports markup for clickable hyperlinks in addition to regular Pango
 * markup. The markup for links is borrowed from HTML, using the `<a>` with
 * “href“, “title“ and “class“ attributes. GTK renders links similar to the
 * way they appear in web browsers, with colored, underlined text. The “title“
 * attribute is displayed as a tooltip on the link. The “class“ attribute is
 * used as style class on the CSS node for the link.
 * 
 * An example looks like this:
 * 
 * ```c
 * const char *text =
 * "Go to the"
 * "<a href=\"http://www.gtk.org title=\"&lt;i&gt;Our&lt;/i&gt; website\">"
 * "GTK website</a> for more...";
 * GtkWidget *label = gtk_label_new (NULL);
 * gtk_label_set_markup (GTK_LABEL (label), text);
 * ```
 * 
 * It is possible to implement custom handling for links and their tooltips
 * with the [signal@Gtk.Label::activate-link] signal and the
 * [method@Gtk.Label.get_current_uri] function.
 */
public class Label : Widget
{
	/** the main Gtk struct */
	protected GtkLabel* gtkLabel;

	/** Get the main Gtk struct */
	public GtkLabel* getLabelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkLabel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLabel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkLabel* gtkLabel, bool ownedRef = false)
	{
		this.gtkLabel = gtkLabel;
		super(cast(GtkWidget*)gtkLabel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_label_get_type();
	}

	/**
	 * Creates a new `GtkLabel`, containing the text in @str.
	 *
	 * If characters in @str are preceded by an underscore, they are
	 * underlined. If you need a literal underscore character in a label, use
	 * '__' (two underscores). The first underlined character represents a
	 * keyboard accelerator called a mnemonic. The mnemonic key can be used
	 * to activate another widget, chosen automatically, or explicitly using
	 * [method@Gtk.Label.set_mnemonic_widget].
	 *
	 * If [method@Gtk.Label.set_mnemonic_widget] is not called, then the first
	 * activatable ancestor of the `GtkLabel` will be chosen as the mnemonic
	 * widget. For instance, if the label is inside a button or menu item,
	 * the button or menu item will automatically become the mnemonic widget
	 * and be activated by the mnemonic.
	 *
	 * Params:
	 *     str = The text of the label, with an underscore in front of the
	 *         mnemonic character
	 *
	 * Returns: the new `GtkLabel`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string str)
	{
		auto __p = gtk_label_new_with_mnemonic(Str.toStringz(str));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_mnemonic");
		}

		this(cast(GtkLabel*) __p);
	}

	/**
	 * Gets the labels attribute list.
	 *
	 * This is the [struct@Pango.AttrList] that was set on the label using
	 * [method@Gtk.Label.set_attributes], if any. This function does not
	 * reflect attributes that come from the labels markup (see
	 * [method@Gtk.Label.set_markup]). If you want to get the effective
	 * attributes for the label, use
	 * `pango_layout_get_attribute (gtk_label_get_layout (self))`.
	 *
	 * Returns: the attribute list
	 */
	public PgAttributeList getAttributes()
	{
		auto __p = gtk_label_get_attributes(gtkLabel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p);
	}

	/**
	 * Returns the URI for the currently active link in the label.
	 *
	 * The active link is the one under the mouse pointer or, in a
	 * selectable label, the link in which the text cursor is currently
	 * positioned.
	 *
	 * This function is intended for use in a [signal@Gtk.Label::activate-link]
	 * handler or for use in a [signal@Gtk.Widget::query-tooltip] handler.
	 *
	 * Returns: the currently active URI
	 */
	public string getCurrentUri()
	{
		return Str.toString(gtk_label_get_current_uri(gtkLabel));
	}

	/**
	 * Returns the ellipsizing position of the label.
	 *
	 * See [method@Gtk.Label.set_ellipsize].
	 *
	 * Returns: `PangoEllipsizeMode`
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		return gtk_label_get_ellipsize(gtkLabel);
	}

	/**
	 * Gets the extra menu model of @label.
	 *
	 * See [method@Gtk.Label.set_extra_menu].
	 *
	 * Returns: the menu model
	 */
	public MenuModel getExtraMenu()
	{
		auto __p = gtk_label_get_extra_menu(gtkLabel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p);
	}

	/**
	 * Returns the justification of the label.
	 *
	 * See [method@Gtk.Label.set_justify].
	 *
	 * Returns: `GtkJustification`
	 */
	public GtkJustification getJustify()
	{
		return gtk_label_get_justify(gtkLabel);
	}

	/**
	 * Fetches the text from a label.
	 *
	 * The returned text includes any embedded underlines indicating
	 * mnemonics and Pango markup. (See [method@Gtk.Label.get_text]).
	 *
	 * Returns: the text of the label widget. This string is
	 *     owned by the widget and must not be modified or freed.
	 */
	public string getLabel()
	{
		return Str.toString(gtk_label_get_label(gtkLabel));
	}

	/**
	 * Gets the `PangoLayout` used to display the label.
	 *
	 * The layout is useful to e.g. convert text positions to pixel
	 * positions, in combination with [method@Gtk.Label.get_layout_offsets].
	 * The returned layout is owned by the @label so need not be
	 * freed by the caller. The @label is free to recreate its layout
	 * at any time, so it should be considered read-only.
	 *
	 * Returns: the [class@Pango.Layout] for this label
	 */
	public PgLayout getLayout()
	{
		auto __p = gtk_label_get_layout(gtkLabel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) __p);
	}

	/**
	 * Obtains the coordinates where the label will draw its `PangoLayout`.
	 *
	 * The coordinates are useful to convert mouse events into coordinates
	 * inside the [class@Pango.Layout], e.g. to take some action if some part
	 * of the label is clicked. Remember when using the [class@Pango.Layout]
	 * functions you need to convert to and from pixels using PANGO_PIXELS()
	 * or [const@Pango.SCALE].
	 *
	 * Params:
	 *     x = location to store X offset of layout
	 *     y = location to store Y offset of layout
	 */
	public void getLayoutOffsets(out int x, out int y)
	{
		gtk_label_get_layout_offsets(gtkLabel, &x, &y);
	}

	/**
	 * Gets the number of lines to which an ellipsized, wrapping
	 * label should be limited.
	 *
	 * See [method@Gtk.Label.set_lines].
	 *
	 * Returns: The number of lines
	 */
	public int getLines()
	{
		return gtk_label_get_lines(gtkLabel);
	}

	/**
	 * Retrieves the desired maximum width of @label, in characters.
	 *
	 * See [method@Gtk.Label.set_width_chars].
	 *
	 * Returns: the maximum width of the label in characters.
	 */
	public int getMaxWidthChars()
	{
		return gtk_label_get_max_width_chars(gtkLabel);
	}

	/**
	 * Return the mnemonic accelerator.
	 *
	 * If the label has been set so that it has a mnemonic key this function
	 * returns the keyval used for the mnemonic accelerator. If there is no
	 * mnemonic set up it returns `GDK_KEY_VoidSymbol`.
	 *
	 * Returns: GDK keyval usable for accelerators, or `GDK_KEY_VoidSymbol`
	 */
	public uint getMnemonicKeyval()
	{
		return gtk_label_get_mnemonic_keyval(gtkLabel);
	}

	/**
	 * Retrieves the target of the mnemonic (keyboard shortcut) of this
	 * label.
	 *
	 * See [method@Gtk.Label.set_mnemonic_widget].
	 *
	 * Returns: the target of the label’s mnemonic,
	 *     or %NULL if none has been set and the default algorithm will be used.
	 */
	public Widget getMnemonicWidget()
	{
		auto __p = gtk_label_get_mnemonic_widget(gtkLabel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns line wrap mode used by the label.
	 *
	 * See [method@Gtk.Label.set_natural_wrap_mode].
	 *
	 * Returns: the natural line wrap mode
	 *
	 * Since: 4.6
	 */
	public GtkNaturalWrapMode getNaturalWrapMode()
	{
		return gtk_label_get_natural_wrap_mode(gtkLabel);
	}

	/**
	 * Returns whether the label is selectable.
	 *
	 * Returns: %TRUE if the user can copy text from the label
	 */
	public bool getSelectable()
	{
		return gtk_label_get_selectable(gtkLabel) != 0;
	}

	/**
	 * Gets the selected range of characters in the label.
	 *
	 * Params:
	 *     start = return location for start of selection, as a character offset
	 *     end = return location for end of selection, as a character offset
	 *
	 * Returns: %TRUE if selection is non-empty
	 */
	public bool getSelectionBounds(out int start, out int end)
	{
		return gtk_label_get_selection_bounds(gtkLabel, &start, &end) != 0;
	}

	/**
	 * Returns whether the label is in single line mode.
	 *
	 * Returns: %TRUE when the label is in single line mode.
	 */
	public bool getSingleLineMode()
	{
		return gtk_label_get_single_line_mode(gtkLabel) != 0;
	}

	/**
	 * Fetches the text from a label.
	 *
	 * The returned text is as it appears on screen. This does not include
	 * any embedded underlines indicating mnemonics or Pango markup. (See
	 * [method@Gtk.Label.get_label])
	 *
	 * Returns: the text in the label widget. This is the internal
	 *     string used by the label, and must not be modified.
	 */
	public string getText()
	{
		return Str.toString(gtk_label_get_text(gtkLabel));
	}

	/**
	 * Returns whether the label’s text is interpreted as Pango markup.
	 *
	 * See [method@Gtk.Label.set_use_markup].
	 *
	 * Returns: %TRUE if the label’s text will be parsed for markup.
	 */
	public bool getUseMarkup()
	{
		return gtk_label_get_use_markup(gtkLabel) != 0;
	}

	/**
	 * Returns whether an embedded underlines in the label indicate mnemonics.
	 *
	 * See [method@Gtk.Label.set_use_underline].
	 *
	 * Returns: %TRUE whether an embedded underline in the label indicates
	 *     the mnemonic accelerator keys.
	 */
	public bool getUseUnderline()
	{
		return gtk_label_get_use_underline(gtkLabel) != 0;
	}

	/**
	 * Retrieves the desired width of @label, in characters.
	 *
	 * See [method@Gtk.Label.set_width_chars].
	 *
	 * Returns: the width of the label in characters.
	 */
	public int getWidthChars()
	{
		return gtk_label_get_width_chars(gtkLabel);
	}

	/**
	 * Returns whether lines in the label are automatically wrapped.
	 *
	 * See [method@Gtk.Label.set_wrap].
	 *
	 * Returns: %TRUE if the lines of the label are automatically wrapped.
	 */
	public bool getWrap()
	{
		return gtk_label_get_wrap(gtkLabel) != 0;
	}

	/**
	 * Returns line wrap mode used by the label.
	 *
	 * See [method@Gtk.Label.set_wrap_mode].
	 *
	 * Returns: the line wrap mode
	 */
	public PangoWrapMode getWrapMode()
	{
		return gtk_label_get_wrap_mode(gtkLabel);
	}

	/**
	 * Gets the `xalign` of the label.
	 *
	 * See the [property@Gtk.Label:xalign] property.
	 *
	 * Returns: the xalign property
	 */
	public float getXalign()
	{
		return gtk_label_get_xalign(gtkLabel);
	}

	/**
	 * Gets the `yalign` of the label.
	 *
	 * See the [property@Gtk.Label:yalign] property.
	 *
	 * Returns: the yalign property
	 */
	public float getYalign()
	{
		return gtk_label_get_yalign(gtkLabel);
	}

	/**
	 * Selects a range of characters in the label, if the label is selectable.
	 *
	 * See [method@Gtk.Label.set_selectable]. If the label is not selectable,
	 * this function has no effect. If @start_offset or
	 * @end_offset are -1, then the end of the label will be substituted.
	 *
	 * Params:
	 *     startOffset = start offset (in characters not bytes)
	 *     endOffset = end offset (in characters not bytes)
	 */
	public void selectRegion(int startOffset, int endOffset)
	{
		gtk_label_select_region(gtkLabel, startOffset, endOffset);
	}

	/**
	 * Apply attributes to the label text.
	 *
	 * The attributes set with this function will be applied and merged with
	 * any other attributes previously effected by way of the
	 * [property@Gtk.Label:use-underline] or [property@Gtk.Label:use-markup]
	 * properties. While it is not recommended to mix markup strings with
	 * manually set attributes, if you must; know that the attributes will
	 * be applied to the label after the markup string is parsed.
	 *
	 * Params:
	 *     attrs = a [struct@Pango.AttrList]
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		gtk_label_set_attributes(gtkLabel, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}

	/**
	 * Sets the mode used to ellipsizei the text.
	 *
	 * The text will be ellipsized if there is not enough space
	 * to render the entire string.
	 *
	 * Params:
	 *     mode = a `PangoEllipsizeMode`
	 */
	public void setEllipsize(PangoEllipsizeMode mode)
	{
		gtk_label_set_ellipsize(gtkLabel, mode);
	}

	/**
	 * Sets a menu model to add when constructing
	 * the context menu for @label.
	 *
	 * Params:
	 *     model = a `GMenuModel`
	 */
	public void setExtraMenu(MenuModel model)
	{
		gtk_label_set_extra_menu(gtkLabel, (model is null) ? null : model.getMenuModelStruct());
	}

	/**
	 * Sets the alignment of the lines in the text of the label relative to
	 * each other.
	 *
	 * %GTK_JUSTIFY_LEFT is the default value when the widget is first created
	 * with [ctor@Gtk.Label.new]. If you instead want to set the alignment of
	 * the label as a whole, use [method@Gtk.Widget.set_halign] instead.
	 * [method@Gtk.Label.set_justify] has no effect on labels containing
	 * only a single line.
	 *
	 * Params:
	 *     jtype = a `GtkJustification`
	 */
	public void setJustify(GtkJustification jtype)
	{
		gtk_label_set_justify(gtkLabel, jtype);
	}

	/**
	 * Sets the text of the label.
	 *
	 * The label is interpreted as including embedded underlines and/or Pango
	 * markup depending on the values of the [property@Gtk.Label:use-underline]
	 * and [property@Gtk.Label:use-markup] properties.
	 *
	 * Params:
	 *     str = the new text to set for the label
	 */
	public void setLabel(string str)
	{
		gtk_label_set_label(gtkLabel, Str.toStringz(str));
	}

	/**
	 * Sets the number of lines to which an ellipsized, wrapping label
	 * should be limited.
	 *
	 * This has no effect if the label is not wrapping or ellipsized.
	 * Set this to -1 if you don’t want to limit the number of lines.
	 *
	 * Params:
	 *     lines = the desired number of lines, or -1
	 */
	public void setLines(int lines)
	{
		gtk_label_set_lines(gtkLabel, lines);
	}

	/**
	 * Sets the labels text and attributes from markup.
	 *
	 * The string must be marked up with Pango markup
	 * (see [func@Pango.parse_markup]).
	 *
	 * If the @str is external data, you may need to escape it
	 * with g_markup_escape_text() or g_markup_printf_escaped():
	 *
	 * ```c
	 * GtkWidget *self = gtk_label_new (NULL);
	 * const char *str = "...";
	 * const char *format = "<span style=\"italic\">\%s</span>";
	 * char *markup;
	 *
	 * markup = g_markup_printf_escaped (format, str);
	 * gtk_label_set_markup (GTK_LABEL (self), markup);
	 * g_free (markup);
	 * ```
	 *
	 * This function will set the [property@Gtk.Label:use-markup] property
	 * to %TRUE as a side effect.
	 *
	 * If you set the label contents using the [property@Gtk.Label:label]
	 * property you should also ensure that you set the
	 * [property@Gtk.Label:use-markup] property accordingly.
	 *
	 * See also: [method@Gtk.Label.set_text]
	 *
	 * Params:
	 *     str = a markup string
	 */
	public void setMarkup(string str)
	{
		gtk_label_set_markup(gtkLabel, Str.toStringz(str));
	}

	/**
	 * Sets the labels text, attributes and mnemonic from markup.
	 *
	 * Parses @str which is marked up with Pango markup (see [func@Pango.parse_markup]),
	 * setting the label’s text and attribute list based on the parse results.
	 * If characters in @str are preceded by an underscore, they are underlined
	 * indicating that they represent a keyboard accelerator called a mnemonic.
	 *
	 * The mnemonic key can be used to activate another widget, chosen
	 * automatically, or explicitly using [method@Gtk.Label.set_mnemonic_widget].
	 *
	 * Params:
	 *     str = a markup string
	 */
	public void setMarkupWithMnemonic(string str)
	{
		gtk_label_set_markup_with_mnemonic(gtkLabel, Str.toStringz(str));
	}

	/**
	 * Sets the desired maximum width in characters of @label to @n_chars.
	 *
	 * Params:
	 *     nChars = the new desired maximum width, in characters.
	 */
	public void setMaxWidthChars(int nChars)
	{
		gtk_label_set_max_width_chars(gtkLabel, nChars);
	}

	/**
	 * Associate the label with its mnemonic target.
	 *
	 * If the label has been set so that it has a mnemonic key (using
	 * i.e. [method@Gtk.Label.set_markup_with_mnemonic],
	 * [method@Gtk.Label.set_text_with_mnemonic],
	 * [ctor@Gtk.Label.new_with_mnemonic]
	 * or the [property@Gtk.Label:use_underline] property) the label can be
	 * associated with a widget that is the target of the mnemonic. When the
	 * label is inside a widget (like a [class@Gtk.Button] or a
	 * [class@Gtk.Notebook] tab) it is automatically associated with the correct
	 * widget, but sometimes (i.e. when the target is a [class@Gtk.Entry] next to
	 * the label) you need to set it explicitly using this function.
	 *
	 * The target widget will be accelerated by emitting the
	 * [signal@GtkWidget::mnemonic-activate] signal on it. The default handler for
	 * this signal will activate the widget if there are no mnemonic collisions
	 * and toggle focus between the colliding widgets otherwise.
	 *
	 * Params:
	 *     widget = the target `GtkWidget`, or %NULL to unset
	 */
	public void setMnemonicWidget(Widget widget)
	{
		gtk_label_set_mnemonic_widget(gtkLabel, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Select the line wrapping for the natural size request.
	 *
	 * This only affects the natural size requested, for the actual wrapping used,
	 * see the [property@Gtk.Label:wrap-mode] property.
	 *
	 * Params:
	 *     wrapMode = the line wrapping mode
	 *
	 * Since: 4.6
	 */
	public void setNaturalWrapMode(GtkNaturalWrapMode wrapMode)
	{
		gtk_label_set_natural_wrap_mode(gtkLabel, wrapMode);
	}

	/**
	 * Makes text in the label selectable.
	 *
	 * Selectable labels allow the user to select text from the label,
	 * for copy-and-paste.
	 *
	 * Params:
	 *     setting = %TRUE to allow selecting text in the label
	 */
	public void setSelectable(bool setting)
	{
		gtk_label_set_selectable(gtkLabel, setting);
	}

	/**
	 * Sets whether the label is in single line mode.
	 *
	 * Params:
	 *     singleLineMode = %TRUE if the label should be in single line mode
	 */
	public void setSingleLineMode(bool singleLineMode)
	{
		gtk_label_set_single_line_mode(gtkLabel, singleLineMode);
	}

	/**
	 * Sets the text within the `GtkLabel` widget.
	 *
	 * It overwrites any text that was there before.
	 *
	 * This function will clear any previously set mnemonic accelerators,
	 * and set the [property@Gtk.Label:use-underline property] to %FALSE as
	 * a side effect.
	 *
	 * This function will set the [property@Gtk.Label:use-markup] property
	 * to %FALSE as a side effect.
	 *
	 * See also: [method@Gtk.Label.set_markup]
	 *
	 * Params:
	 *     str = The text you want to set
	 */
	public void setText(string str)
	{
		gtk_label_set_text(gtkLabel, Str.toStringz(str));
	}

	/**
	 * Sets the label’s text from the string @str.
	 *
	 * If characters in @str are preceded by an underscore, they are underlined
	 * indicating that they represent a keyboard accelerator called a mnemonic.
	 * The mnemonic key can be used to activate another widget, chosen
	 * automatically, or explicitly using [method@Gtk.Label.set_mnemonic_widget].
	 *
	 * Params:
	 *     str = a string
	 */
	public void setTextWithMnemonic(string str)
	{
		gtk_label_set_text_with_mnemonic(gtkLabel, Str.toStringz(str));
	}

	/**
	 * Sets whether the text of the label contains markup.
	 *
	 * See [method@Gtk.Label.set_markup].
	 *
	 * Params:
	 *     setting = %TRUE if the label’s text should be parsed for markup.
	 */
	public void setUseMarkup(bool setting)
	{
		gtk_label_set_use_markup(gtkLabel, setting);
	}

	/**
	 * Sets whether underlines in the text indicate mnemonics.
	 *
	 * Params:
	 *     setting = %TRUE if underlines in the text indicate mnemonics
	 */
	public void setUseUnderline(bool setting)
	{
		gtk_label_set_use_underline(gtkLabel, setting);
	}

	/**
	 * Sets the desired width in characters of @label to @n_chars.
	 *
	 * Params:
	 *     nChars = the new desired width, in characters.
	 */
	public void setWidthChars(int nChars)
	{
		gtk_label_set_width_chars(gtkLabel, nChars);
	}

	/**
	 * Toggles line wrapping within the `GtkLabel` widget.
	 *
	 * %TRUE makes it break lines if text exceeds the widget’s size.
	 * %FALSE lets the text get cut off by the edge of the widget if
	 * it exceeds the widget size.
	 *
	 * Note that setting line wrapping to %TRUE does not make the label
	 * wrap at its parent container’s width, because GTK widgets
	 * conceptually can’t make their requisition depend on the parent
	 * container’s size. For a label that wraps at a specific position,
	 * set the label’s width using [method@Gtk.Widget.set_size_request].
	 *
	 * Params:
	 *     wrap = the setting
	 */
	public void setWrap(bool wrap)
	{
		gtk_label_set_wrap(gtkLabel, wrap);
	}

	/**
	 * Controls how line wrapping is done.
	 *
	 * This only affects the label if line wrapping is on. (See
	 * [method@Gtk.Label.set_wrap]) The default is %PANGO_WRAP_WORD
	 * which means wrap on word boundaries.
	 *
	 * For sizing behavior, also consider the [property@Gtk.Label:natural-wrap-mode]
	 * property.
	 *
	 * Params:
	 *     wrapMode = the line wrapping mode
	 */
	public void setWrapMode(PangoWrapMode wrapMode)
	{
		gtk_label_set_wrap_mode(gtkLabel, wrapMode);
	}

	/**
	 * Sets the `xalign` of the label.
	 *
	 * See the [property@Gtk.Label:xalign] property.
	 *
	 * Params:
	 *     xalign = the new xalign value, between 0 and 1
	 */
	public void setXalign(float xalign)
	{
		gtk_label_set_xalign(gtkLabel, xalign);
	}

	/**
	 * Sets the `yalign` of the label.
	 *
	 * See the [property@Gtk.Label:yalign] property.
	 *
	 * Params:
	 *     yalign = the new yalign value, between 0 and 1
	 */
	public void setYalign(float yalign)
	{
		gtk_label_set_yalign(gtkLabel, yalign);
	}

	/**
	 * Gets emitted when the user activates a link in the label.
	 *
	 * The ::activate-current-link is a [keybinding signal](class.SignalAction.html).
	 *
	 * Applications may also emit the signal with g_signal_emit_by_name()
	 * if they need to control activation of URIs programmatically.
	 *
	 * The default bindings for this signal are all forms of the Enter key.
	 */
	gulong addOnActivateCurrentLink(void delegate(Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-current-link", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted to activate a URI.
	 *
	 * Applications may connect to it to override the default behaviour,
	 * which is to call gtk_show_uri().
	 *
	 * Params:
	 *     uri = the URI that is activated
	 *
	 * Returns: %TRUE if the link has been activated
	 */
	gulong addOnActivateLink(bool delegate(string, Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-link", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted to copy the slection to the clipboard.
	 *
	 * The ::copy-clipboard signal is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default binding for this signal is Ctrl-c.
	 */
	gulong addOnCopyClipboard(void delegate(Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "copy-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when the user initiates a cursor movement.
	 *
	 * The ::move-cursor signal is a [keybinding signal](class.SignalAction.html).
	 * If the cursor is not visible in @entry, this signal causes the viewport to
	 * be moved instead.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 *
	 * The default bindings for this signal come in two variants,
	 * the variant with the Shift modifier extends the selection,
	 * the variant without the Shift modifier does not.
	 * There are too many key combinations to list them all here.
	 * - Arrow keys move by individual characters/lines
	 * - Ctrl-arrow key combinations move by words/paragraphs
	 * - Home/End keys move to the ends of the buffer
	 *
	 * Params:
	 *     step = the granularity of the move, as a `GtkMovementStep`
	 *     count = the number of @step units to move
	 *     extendSelection = %TRUE if the move should extend the selection
	 */
	gulong addOnMoveCursor(void delegate(GtkMovementStep, int, bool, Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
