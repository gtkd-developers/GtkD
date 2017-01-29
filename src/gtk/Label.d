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

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Menu;
private import gtk.Misc;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import pango.PgAttributeList;
private import pango.PgLayout;
private import std.algorithm;


/**
 * The #GtkLabel widget displays a small amount of text. As the name
 * implies, most labels are used to label another widget such as a
 * #GtkButton, a #GtkMenuItem, or a #GtkComboBox.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * label
 * ├── [selection]
 * ├── [link]
 * ┊
 * ╰── [link]
 * ]|
 * 
 * GtkLabel has a single CSS node with the name label. A wide variety
 * of style classes may be applied to labels, such as .title, .subtitle,
 * .dim-label, etc. In the #GtkShortcutsWindow, labels are used wth the
 * .keycap style class.
 * 
 * If the label has a selection, it gets a subnode with name selection.
 * 
 * If the label has links, there is one subnode per link. These subnodes
 * carry the link or visited state depending on whether they have been
 * visited.
 * 
 * # GtkLabel as GtkBuildable
 * 
 * The GtkLabel implementation of the GtkBuildable interface supports a
 * custom <attributes> element, which supports any number of <attribute>
 * elements. The <attribute> element has attributes named “name“, “value“,
 * “start“ and “end“ and allows you to specify #PangoAttribute values for
 * this label.
 * 
 * An example of a UI definition fragment specifying Pango attributes:
 * |[
 * <object class="GtkLabel">
 * <attributes>
 * <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
 * <attribute name="background" value="red" start="5" end="10"/>"
 * </attributes>
 * </object>
 * ]|
 * 
 * The start and end attributes specify the range of characters to which the
 * Pango attribute applies. If start and end are not specified, the attribute is
 * applied to the whole text. Note that specifying ranges does not make much
 * sense with translatable attributes. Use markup embedded in the translatable
 * content instead.
 * 
 * # Mnemonics
 * 
 * Labels may contain “mnemonics”. Mnemonics are
 * underlined characters in the label, used for keyboard navigation.
 * Mnemonics are created by providing a string with an underscore before
 * the mnemonic character, such as `"_File"`, to the
 * functions gtk_label_new_with_mnemonic() or
 * gtk_label_set_text_with_mnemonic().
 * 
 * Mnemonics automatically activate any activatable widget the label is
 * inside, such as a #GtkButton; if the label is not inside the
 * mnemonic’s target widget, you have to tell the label about the target
 * using gtk_label_set_mnemonic_widget(). Here’s a simple example where
 * the label is inside a button:
 * 
 * |[<!-- language="C" -->
 * // Pressing Alt+H will activate this button
 * button = gtk_button_new ();
 * label = gtk_label_new_with_mnemonic ("_Hello");
 * gtk_container_add (GTK_CONTAINER (button), label);
 * ]|
 * 
 * There’s a convenience function to create buttons with a mnemonic label
 * already inside:
 * 
 * |[<!-- language="C" -->
 * // Pressing Alt+H will activate this button
 * button = gtk_button_new_with_mnemonic ("_Hello");
 * ]|
 * 
 * To create a mnemonic for a widget alongside the label, such as a
 * #GtkEntry, you have to point the label at the entry with
 * gtk_label_set_mnemonic_widget():
 * 
 * |[<!-- language="C" -->
 * // Pressing Alt+H will focus the entry
 * entry = gtk_entry_new ();
 * label = gtk_label_new_with_mnemonic ("_Hello");
 * gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
 * ]|
 * 
 * # Markup (styled text)
 * 
 * To make it easy to format text in a label (changing colors,
 * fonts, etc.), label text can be provided in a simple
 * [markup format][PangoMarkupFormat].
 * 
 * Here’s how to create a label with a small font:
 * |[<!-- language="C" -->
 * label = gtk_label_new (NULL);
 * gtk_label_set_markup (GTK_LABEL (label), "<small>Small text</small>");
 * ]|
 * 
 * (See [complete documentation][PangoMarkupFormat] of available
 * tags in the Pango manual.)
 * 
 * The markup passed to gtk_label_set_markup() must be valid; for example,
 * literal <, > and & characters must be escaped as &lt;, &gt;, and &amp;.
 * If you pass text obtained from the user, file, or a network to
 * gtk_label_set_markup(), you’ll want to escape it with
 * g_markup_escape_text() or g_markup_printf_escaped().
 * 
 * Markup strings are just a convenient way to set the #PangoAttrList on
 * a label; gtk_label_set_attributes() may be a simpler way to set
 * attributes in some cases. Be careful though; #PangoAttrList tends to
 * cause internationalization problems, unless you’re applying attributes
 * to the entire string (i.e. unless you set the range of each attribute
 * to [0, %G_MAXINT)). The reason is that specifying the start_index and
 * end_index for a #PangoAttribute requires knowledge of the exact string
 * being displayed, so translations will cause problems.
 * 
 * # Selectable labels
 * 
 * Labels can be made selectable with gtk_label_set_selectable().
 * Selectable labels allow the user to copy the label contents to
 * the clipboard. Only labels that contain useful-to-copy information
 * — such as error messages — should be made selectable.
 * 
 * # Text layout # {#label-text-layout}
 * 
 * A label can contain any number of paragraphs, but will have
 * performance problems if it contains more than a small number.
 * Paragraphs are separated by newlines or other paragraph separators
 * understood by Pango.
 * 
 * Labels can automatically wrap text if you call
 * gtk_label_set_line_wrap().
 * 
 * gtk_label_set_justify() sets how the lines in a label align
 * with one another. If you want to set how the label as a whole
 * aligns in its available space, see the #GtkWidget:halign and
 * #GtkWidget:valign properties.
 * 
 * The #GtkLabel:width-chars and #GtkLabel:max-width-chars properties
 * can be used to control the size allocation of ellipsized or wrapped
 * labels. For ellipsizing labels, if either is specified (and less
 * than the actual text size), it is used as the minimum width, and the actual
 * text size is used as the natural width of the label. For wrapping labels,
 * width-chars is used as the minimum width, if specified, and max-width-chars
 * is used as the natural width. Even if max-width-chars specified, wrapping
 * labels will be rewrapped to use all of the available width.
 * 
 * Note that the interpretation of #GtkLabel:width-chars and
 * #GtkLabel:max-width-chars has changed a bit with the introduction of
 * [width-for-height geometry management.][geometry-management]
 * 
 * # Links
 * 
 * Since 2.18, GTK+ supports markup for clickable hyperlinks in addition
 * to regular Pango markup. The markup for links is borrowed from HTML,
 * using the `<a>` with “href“ and “title“ attributes. GTK+ renders links
 * similar to the way they appear in web browsers, with colored, underlined
 * text. The “title“ attribute is displayed as a tooltip on the link.
 * 
 * An example looks like this:
 * 
 * |[<!-- language="C" -->
 * const gchar *text =
 * "Go to the"
 * "<a href=\"http://www.gtk.org title="&lt;i&gt;Our&lt;/i&gt; website\">"
 * "GTK+ website</a> for more...";
 * gtk_label_set_markup (label, text);
 * ]|
 * 
 * It is possible to implement custom handling for links and their tooltips with
 * the #GtkLabel::activate-link signal and the gtk_label_get_current_uri() function.
 */
public class Label : Misc
{
	/** the main Gtk struct */
	protected GtkLabel* gtkLabel;

	/** Get the main Gtk struct */
	public GtkLabel* getLabelStruct()
	{
		return gtkLabel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLabel;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkLabel = cast(GtkLabel*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkLabel* gtkLabel, bool ownedRef = false)
	{
		this.gtkLabel = gtkLabel;
		super(cast(GtkMisc*)gtkLabel, ownedRef);
	}

	/**
	 * Creates a new GtkLabel, containing the text in str.
	 * If characters in str are preceded by an underscore, they are
	 * underlined. If you need a literal underscore character in a label, use
	 * '__' (two underscores). The first underlined character represents a
	 * keyboard accelerator called a mnemonic. The mnemonic key can be used
	 * to activate another widget, chosen automatically, or explicitly using
	 * setMnemonicWidget().
	 *
	 * If setMnemonicWidget() is not called, then the first activatable ancestor of the Label
	 * will be chosen as the mnemonic widget. For instance, if the
	 * label is inside a button or menu item, the button or menu item will
	 * automatically become the mnemonic widget and be activated by
	 * the mnemonic.
	 * Params:
	 *  str = The text of the label, with an underscore in front of the
	 *  mnemonic character
	 *  mnemonic = when false uses the literal text passed in without mnemonic
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string str, bool mnemonic=true)
	{
		GtkLabel* p;
		
		if ( mnemonic )
		{
			// GtkWidget* gtk_label_new_with_mnemonic (const gchar *str);
			p = cast(GtkLabel*)gtk_label_new_with_mnemonic(Str.toStringz(str));
		}
		else
		{
			// GtkWidget* gtk_label_new (const gchar *str);
			p = cast(GtkLabel*)gtk_label_new(Str.toStringz(str));
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_label_new");
		}
		
		this(p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_label_get_type();
	}

	/**
	 * Gets the angle of rotation for the label. See
	 * gtk_label_set_angle().
	 *
	 * Return: the angle of rotation for the label
	 *
	 * Since: 2.6
	 */
	public double getAngle()
	{
		return gtk_label_get_angle(gtkLabel);
	}

	/**
	 * Gets the attribute list that was set on the label using
	 * gtk_label_set_attributes(), if any. This function does
	 * not reflect attributes that come from the labels markup
	 * (see gtk_label_set_markup()). If you want to get the
	 * effective attributes for the label, use
	 * pango_layout_get_attribute (gtk_label_get_layout (label)).
	 *
	 * Return: the attribute list, or %NULL
	 *     if none was set.
	 */
	public PgAttributeList getAttributes()
	{
		auto p = gtk_label_get_attributes(gtkLabel);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) p);
	}

	/**
	 * Returns the URI for the currently active link in the label.
	 * The active link is the one under the mouse pointer or, in a
	 * selectable label, the link in which the text cursor is currently
	 * positioned.
	 *
	 * This function is intended for use in a #GtkLabel::activate-link handler
	 * or for use in a #GtkWidget::query-tooltip handler.
	 *
	 * Return: the currently active URI. The string is owned by GTK+ and must
	 *     not be freed or modified.
	 *
	 * Since: 2.18
	 */
	public string getCurrentUri()
	{
		return Str.toString(gtk_label_get_current_uri(gtkLabel));
	}

	/**
	 * Returns the ellipsizing position of the label. See gtk_label_set_ellipsize().
	 *
	 * Return: #PangoEllipsizeMode
	 *
	 * Since: 2.6
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		return gtk_label_get_ellipsize(gtkLabel);
	}

	/**
	 * Returns the justification of the label. See gtk_label_set_justify().
	 *
	 * Return: #GtkJustification
	 */
	public GtkJustification getJustify()
	{
		return gtk_label_get_justify(gtkLabel);
	}

	/**
	 * Fetches the text from a label widget including any embedded
	 * underlines indicating mnemonics and Pango markup. (See
	 * gtk_label_get_text()).
	 *
	 * Return: the text of the label widget. This string is
	 *     owned by the widget and must not be modified or freed.
	 */
	public string getLabel()
	{
		return Str.toString(gtk_label_get_label(gtkLabel));
	}

	/**
	 * Gets the #PangoLayout used to display the label.
	 * The layout is useful to e.g. convert text positions to
	 * pixel positions, in combination with gtk_label_get_layout_offsets().
	 * The returned layout is owned by the @label so need not be
	 * freed by the caller. The @label is free to recreate its layout at
	 * any time, so it should be considered read-only.
	 *
	 * Return: the #PangoLayout for this label
	 */
	public PgLayout getLayout()
	{
		auto p = gtk_label_get_layout(gtkLabel);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}

	/**
	 * Obtains the coordinates where the label will draw the #PangoLayout
	 * representing the text in the label; useful to convert mouse events
	 * into coordinates inside the #PangoLayout, e.g. to take some action
	 * if some part of the label is clicked. Of course you will need to
	 * create a #GtkEventBox to receive the events, and pack the label
	 * inside it, since labels are windowless (they return %FALSE from
	 * gtk_widget_get_has_window()). Remember
	 * when using the #PangoLayout functions you need to convert to
	 * and from pixels using PANGO_PIXELS() or #PANGO_SCALE.
	 *
	 * Params:
	 *     x = location to store X offset of layout, or %NULL
	 *     y = location to store Y offset of layout, or %NULL
	 */
	public void getLayoutOffsets(out int x, out int y)
	{
		gtk_label_get_layout_offsets(gtkLabel, &x, &y);
	}

	/**
	 * Returns whether lines in the label are automatically wrapped.
	 * See gtk_label_set_line_wrap().
	 *
	 * Return: %TRUE if the lines of the label are automatically wrapped.
	 */
	public bool getLineWrap()
	{
		return gtk_label_get_line_wrap(gtkLabel) != 0;
	}

	/**
	 * Returns line wrap mode used by the label. See gtk_label_set_line_wrap_mode().
	 *
	 * Return: %TRUE if the lines of the label are automatically wrapped.
	 *
	 * Since: 2.10
	 */
	public PangoWrapMode getLineWrapMode()
	{
		return gtk_label_get_line_wrap_mode(gtkLabel);
	}

	/**
	 * Gets the number of lines to which an ellipsized, wrapping
	 * label should be limited. See gtk_label_set_lines().
	 *
	 * Return: The number of lines
	 *
	 * Since: 3.10
	 */
	public int getLines()
	{
		return gtk_label_get_lines(gtkLabel);
	}

	/**
	 * Retrieves the desired maximum width of @label, in characters. See
	 * gtk_label_set_width_chars().
	 *
	 * Return: the maximum width of the label in characters.
	 *
	 * Since: 2.6
	 */
	public int getMaxWidthChars()
	{
		return gtk_label_get_max_width_chars(gtkLabel);
	}

	/**
	 * If the label has been set so that it has an mnemonic key this function
	 * returns the keyval used for the mnemonic accelerator. If there is no
	 * mnemonic set up it returns #GDK_KEY_VoidSymbol.
	 *
	 * Return: GDK keyval usable for accelerators, or #GDK_KEY_VoidSymbol
	 */
	public uint getMnemonicKeyval()
	{
		return gtk_label_get_mnemonic_keyval(gtkLabel);
	}

	/**
	 * Retrieves the target of the mnemonic (keyboard shortcut) of this
	 * label. See gtk_label_set_mnemonic_widget().
	 *
	 * Return: the target of the label’s mnemonic,
	 *     or %NULL if none has been set and the default algorithm will be used.
	 */
	public Widget getMnemonicWidget()
	{
		auto p = gtk_label_get_mnemonic_widget(gtkLabel);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the value set by gtk_label_set_selectable().
	 *
	 * Return: %TRUE if the user can copy text from the label
	 */
	public bool getSelectable()
	{
		return gtk_label_get_selectable(gtkLabel) != 0;
	}

	/**
	 * Gets the selected range of characters in the label, returning %TRUE
	 * if there’s a selection.
	 *
	 * Params:
	 *     start = return location for start of selection, as a character offset
	 *     end = return location for end of selection, as a character offset
	 *
	 * Return: %TRUE if selection is non-empty
	 */
	public bool getSelectionBounds(out int start, out int end)
	{
		return gtk_label_get_selection_bounds(gtkLabel, &start, &end) != 0;
	}

	/**
	 * Returns whether the label is in single line mode.
	 *
	 * Return: %TRUE when the label is in single line mode.
	 *
	 * Since: 2.6
	 */
	public bool getSingleLineMode()
	{
		return gtk_label_get_single_line_mode(gtkLabel) != 0;
	}

	/**
	 * Fetches the text from a label widget, as displayed on the
	 * screen. This does not include any embedded underlines
	 * indicating mnemonics or Pango markup. (See gtk_label_get_label())
	 *
	 * Return: the text in the label widget. This is the internal
	 *     string used by the label, and must not be modified.
	 */
	public string getText()
	{
		return Str.toString(gtk_label_get_text(gtkLabel));
	}

	/**
	 * Returns whether the label is currently keeping track
	 * of clicked links.
	 *
	 * Return: %TRUE if clicked links are remembered
	 *
	 * Since: 2.18
	 */
	public bool getTrackVisitedLinks()
	{
		return gtk_label_get_track_visited_links(gtkLabel) != 0;
	}

	/**
	 * Returns whether the label’s text is interpreted as marked up with
	 * the [Pango text markup language][PangoMarkupFormat].
	 * See gtk_label_set_use_markup ().
	 *
	 * Return: %TRUE if the label’s text will be parsed for markup.
	 */
	public bool getUseMarkup()
	{
		return gtk_label_get_use_markup(gtkLabel) != 0;
	}

	/**
	 * Returns whether an embedded underline in the label indicates a
	 * mnemonic. See gtk_label_set_use_underline().
	 *
	 * Return: %TRUE whether an embedded underline in the label indicates
	 *     the mnemonic accelerator keys.
	 */
	public bool getUseUnderline()
	{
		return gtk_label_get_use_underline(gtkLabel) != 0;
	}

	/**
	 * Retrieves the desired width of @label, in characters. See
	 * gtk_label_set_width_chars().
	 *
	 * Return: the width of the label in characters.
	 *
	 * Since: 2.6
	 */
	public int getWidthChars()
	{
		return gtk_label_get_width_chars(gtkLabel);
	}

	/**
	 * Gets the #GtkLabel:xalign property for @label.
	 *
	 * Return: the xalign property
	 *
	 * Since: 3.16
	 */
	public float getXalign()
	{
		return gtk_label_get_xalign(gtkLabel);
	}

	/**
	 * Gets the #GtkLabel:yalign property for @label.
	 *
	 * Return: the yalign property
	 *
	 * Since: 3.16
	 */
	public float getYalign()
	{
		return gtk_label_get_yalign(gtkLabel);
	}

	/**
	 * Selects a range of characters in the label, if the label is selectable.
	 * See gtk_label_set_selectable(). If the label is not selectable,
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
	 * Sets the angle of rotation for the label. An angle of 90 reads from
	 * from bottom to top, an angle of 270, from top to bottom. The angle
	 * setting for the label is ignored if the label is selectable,
	 * wrapped, or ellipsized.
	 *
	 * Params:
	 *     angle = the angle that the baseline of the label makes with
	 *         the horizontal, in degrees, measured counterclockwise
	 *
	 * Since: 2.6
	 */
	public void setAngle(double angle)
	{
		gtk_label_set_angle(gtkLabel, angle);
	}

	/**
	 * Sets a #PangoAttrList; the attributes in the list are applied to the
	 * label text.
	 *
	 * The attributes set with this function will be applied
	 * and merged with any other attributes previously effected by way
	 * of the #GtkLabel:use-underline or #GtkLabel:use-markup properties.
	 * While it is not recommended to mix markup strings with manually set
	 * attributes, if you must; know that the attributes will be applied
	 * to the label after the markup string is parsed.
	 *
	 * Params:
	 *     attrs = a #PangoAttrList, or %NULL
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		gtk_label_set_attributes(gtkLabel, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}

	/**
	 * Sets the mode used to ellipsize (add an ellipsis: "...") to the text
	 * if there is not enough space to render the entire string.
	 *
	 * Params:
	 *     mode = a #PangoEllipsizeMode
	 *
	 * Since: 2.6
	 */
	public void setEllipsize(PangoEllipsizeMode mode)
	{
		gtk_label_set_ellipsize(gtkLabel, mode);
	}

	/**
	 * Sets the alignment of the lines in the text of the label relative to
	 * each other. %GTK_JUSTIFY_LEFT is the default value when the widget is
	 * first created with gtk_label_new(). If you instead want to set the
	 * alignment of the label as a whole, use gtk_widget_set_halign() instead.
	 * gtk_label_set_justify() has no effect on labels containing only a
	 * single line.
	 *
	 * Params:
	 *     jtype = a #GtkJustification
	 */
	public void setJustify(GtkJustification jtype)
	{
		gtk_label_set_justify(gtkLabel, jtype);
	}

	/**
	 * Sets the text of the label. The label is interpreted as
	 * including embedded underlines and/or Pango markup depending
	 * on the values of the #GtkLabel:use-underline and
	 * #GtkLabel:use-markup properties.
	 *
	 * Params:
	 *     str = the new text to set for the label
	 */
	public void setLabel(string str)
	{
		gtk_label_set_label(gtkLabel, Str.toStringz(str));
	}

	/**
	 * Toggles line wrapping within the #GtkLabel widget. %TRUE makes it break
	 * lines if text exceeds the widget’s size. %FALSE lets the text get cut off
	 * by the edge of the widget if it exceeds the widget size.
	 *
	 * Note that setting line wrapping to %TRUE does not make the label
	 * wrap at its parent container’s width, because GTK+ widgets
	 * conceptually can’t make their requisition depend on the parent
	 * container’s size. For a label that wraps at a specific position,
	 * set the label’s width using gtk_widget_set_size_request().
	 *
	 * Params:
	 *     wrap = the setting
	 */
	public void setLineWrap(bool wrap)
	{
		gtk_label_set_line_wrap(gtkLabel, wrap);
	}

	/**
	 * If line wrapping is on (see gtk_label_set_line_wrap()) this controls how
	 * the line wrapping is done. The default is %PANGO_WRAP_WORD which means
	 * wrap on word boundaries.
	 *
	 * Params:
	 *     wrapMode = the line wrapping mode
	 *
	 * Since: 2.10
	 */
	public void setLineWrapMode(PangoWrapMode wrapMode)
	{
		gtk_label_set_line_wrap_mode(gtkLabel, wrapMode);
	}

	/**
	 * Sets the number of lines to which an ellipsized, wrapping label
	 * should be limited. This has no effect if the label is not wrapping
	 * or ellipsized. Set this to -1 if you don’t want to limit the
	 * number of lines.
	 *
	 * Params:
	 *     lines = the desired number of lines, or -1
	 *
	 * Since: 3.10
	 */
	public void setLines(int lines)
	{
		gtk_label_set_lines(gtkLabel, lines);
	}

	/**
	 * Parses @str which is marked up with the
	 * [Pango text markup language][PangoMarkupFormat], setting the
	 * label’s text and attribute list based on the parse results.
	 *
	 * If the @str is external data, you may need to escape it with
	 * g_markup_escape_text() or g_markup_printf_escaped():
	 *
	 * |[<!-- language="C" -->
	 * const char *format = "<span style=\"italic\">\%s</span>";
	 * char *markup;
	 *
	 * markup = g_markup_printf_escaped (format, str);
	 * gtk_label_set_markup (GTK_LABEL (label), markup);
	 * g_free (markup);
	 * ]|
	 *
	 * This function will set the #GtkLabel:use-markup property to %TRUE as
	 * a side effect.
	 *
	 * If you set the label contents using the #GtkLabel:label property you
	 * should also ensure that you set the #GtkLabel:use-markup property
	 * accordingly.
	 *
	 * See also: gtk_label_set_text()
	 *
	 * Params:
	 *     str = a markup string (see [Pango markup format][PangoMarkupFormat])
	 */
	public void setMarkup(string str)
	{
		gtk_label_set_markup(gtkLabel, Str.toStringz(str));
	}

	/**
	 * Parses @str which is marked up with the
	 * [Pango text markup language][PangoMarkupFormat],
	 * setting the label’s text and attribute list based on the parse results.
	 * If characters in @str are preceded by an underscore, they are underlined
	 * indicating that they represent a keyboard accelerator called a mnemonic.
	 *
	 * The mnemonic key can be used to activate another widget, chosen
	 * automatically, or explicitly using gtk_label_set_mnemonic_widget().
	 *
	 * Params:
	 *     str = a markup string (see
	 *         [Pango markup format][PangoMarkupFormat])
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
	 *
	 * Since: 2.6
	 */
	public void setMaxWidthChars(int nChars)
	{
		gtk_label_set_max_width_chars(gtkLabel, nChars);
	}

	/**
	 * If the label has been set so that it has an mnemonic key (using
	 * i.e. gtk_label_set_markup_with_mnemonic(),
	 * gtk_label_set_text_with_mnemonic(), gtk_label_new_with_mnemonic()
	 * or the “use_underline” property) the label can be associated with a
	 * widget that is the target of the mnemonic. When the label is inside
	 * a widget (like a #GtkButton or a #GtkNotebook tab) it is
	 * automatically associated with the correct widget, but sometimes
	 * (i.e. when the target is a #GtkEntry next to the label) you need to
	 * set it explicitly using this function.
	 *
	 * The target widget will be accelerated by emitting the
	 * GtkWidget::mnemonic-activate signal on it. The default handler for
	 * this signal will activate the widget if there are no mnemonic collisions
	 * and toggle focus between the colliding widgets otherwise.
	 *
	 * Params:
	 *     widget = the target #GtkWidget
	 */
	public void setMnemonicWidget(Widget widget)
	{
		gtk_label_set_mnemonic_widget(gtkLabel, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * The pattern of underlines you want under the existing text within the
	 * #GtkLabel widget.  For example if the current text of the label says
	 * “FooBarBaz” passing a pattern of “___   ___” will underline
	 * “Foo” and “Baz” but not “Bar”.
	 *
	 * Params:
	 *     pattern = The pattern as described above.
	 */
	public void setPattern(string pattern)
	{
		gtk_label_set_pattern(gtkLabel, Str.toStringz(pattern));
	}

	/**
	 * Selectable labels allow the user to select text from the label, for
	 * copy-and-paste.
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
	 *
	 * Since: 2.6
	 */
	public void setSingleLineMode(bool singleLineMode)
	{
		gtk_label_set_single_line_mode(gtkLabel, singleLineMode);
	}

	/**
	 * Sets the text within the #GtkLabel widget. It overwrites any text that
	 * was there before.
	 *
	 * This function will clear any previously set mnemonic accelerators, and
	 * set the #GtkLabel:use-underline property to %FALSE as a side effect.
	 *
	 * This function will set the #GtkLabel:use-markup property to %FALSE
	 * as a side effect.
	 *
	 * See also: gtk_label_set_markup()
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
	 * If characters in @str are preceded by an underscore, they are underlined
	 * indicating that they represent a keyboard accelerator called a mnemonic.
	 * The mnemonic key can be used to activate another widget, chosen
	 * automatically, or explicitly using gtk_label_set_mnemonic_widget().
	 *
	 * Params:
	 *     str = a string
	 */
	public void setTextWithMnemonic(string str)
	{
		gtk_label_set_text_with_mnemonic(gtkLabel, Str.toStringz(str));
	}

	/**
	 * Sets whether the label should keep track of clicked
	 * links (and use a different color for them).
	 *
	 * Params:
	 *     trackLinks = %TRUE to track visited links
	 *
	 * Since: 2.18
	 */
	public void setTrackVisitedLinks(bool trackLinks)
	{
		gtk_label_set_track_visited_links(gtkLabel, trackLinks);
	}

	/**
	 * Sets whether the text of the label contains markup in
	 * [Pango’s text markup language][PangoMarkupFormat].
	 * See gtk_label_set_markup().
	 *
	 * Params:
	 *     setting = %TRUE if the label’s text should be parsed for markup.
	 */
	public void setUseMarkup(bool setting)
	{
		gtk_label_set_use_markup(gtkLabel, setting);
	}

	/**
	 * If true, an underline in the text indicates the next character should be
	 * used for the mnemonic accelerator key.
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
	 *
	 * Since: 2.6
	 */
	public void setWidthChars(int nChars)
	{
		gtk_label_set_width_chars(gtkLabel, nChars);
	}

	/**
	 * Sets the #GtkLabel:xalign property for @label.
	 *
	 * Params:
	 *     xalign = the new xalign value, between 0 and 1
	 *
	 * Since: 3.16
	 */
	public void setXalign(float xalign)
	{
		gtk_label_set_xalign(gtkLabel, xalign);
	}

	/**
	 * Sets the #GtkLabel:yalign property for @label.
	 *
	 * Params:
	 *     yalign = the new yalign value, between 0 and 1
	 *
	 * Since: 3.16
	 */
	public void setYalign(float yalign)
	{
		gtk_label_set_yalign(gtkLabel, yalign);
	}

	protected class OnActivateCurrentLinkDelegateWrapper
	{
		static OnActivateCurrentLinkDelegateWrapper[] listeners;
		void delegate(Label) dlg;
		gulong handlerId;
		
		this(void delegate(Label) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnActivateCurrentLinkDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * A [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user activates a link in the label.
	 *
	 * Applications may also emit the signal with g_signal_emit_by_name()
	 * if they need to control activation of URIs programmatically.
	 *
	 * The default bindings for this signal are all forms of the Enter key.
	 *
	 * Since: 2.18
	 */
	gulong addOnActivateCurrentLink(void delegate(Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnActivateCurrentLinkDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"activate-current-link",
			cast(GCallback)&callBackActivateCurrentLink,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackActivateCurrentLinkDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackActivateCurrentLink(GtkLabel* labelStruct, OnActivateCurrentLinkDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackActivateCurrentLinkDestroy(OnActivateCurrentLinkDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnActivateLinkDelegateWrapper
	{
		static OnActivateLinkDelegateWrapper[] listeners;
		bool delegate(string, Label) dlg;
		gulong handlerId;
		
		this(bool delegate(string, Label) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnActivateLinkDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The signal which gets emitted to activate a URI.
	 * Applications may connect to it to override the default behaviour,
	 * which is to call gtk_show_uri().
	 *
	 * Params:
	 *     uri = the URI that is activated
	 *
	 * Return: %TRUE if the link has been activated
	 *
	 * Since: 2.18
	 */
	gulong addOnActivateLink(bool delegate(string, Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnActivateLinkDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"activate-link",
			cast(GCallback)&callBackActivateLink,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackActivateLinkDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static int callBackActivateLink(GtkLabel* labelStruct, char* uri, OnActivateLinkDelegateWrapper wrapper)
	{
		return wrapper.dlg(Str.toString(uri), wrapper.outer);
	}
	
	extern(C) static void callBackActivateLinkDestroy(OnActivateLinkDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnCopyClipboardDelegateWrapper
	{
		static OnCopyClipboardDelegateWrapper[] listeners;
		void delegate(Label) dlg;
		gulong handlerId;
		
		this(void delegate(Label) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnCopyClipboardDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The ::copy-clipboard signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to copy the selection to the clipboard.
	 *
	 * The default binding for this signal is Ctrl-c.
	 */
	gulong addOnCopyClipboard(void delegate(Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnCopyClipboardDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"copy-clipboard",
			cast(GCallback)&callBackCopyClipboard,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackCopyClipboardDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackCopyClipboard(GtkLabel* labelStruct, OnCopyClipboardDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackCopyClipboardDestroy(OnCopyClipboardDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMoveCursorDelegateWrapper
	{
		static OnMoveCursorDelegateWrapper[] listeners;
		void delegate(GtkMovementStep, int, bool, Label) dlg;
		gulong handlerId;
		
		this(void delegate(GtkMovementStep, int, bool, Label) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnMoveCursorDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The ::move-cursor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates a cursor movement.
	 * If the cursor is not visible in @entry, this signal causes
	 * the viewport to be moved instead.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 *
	 * The default bindings for this signal come in two variants,
	 * the variant with the Shift modifier extends the selection,
	 * the variant without the Shift modifer does not.
	 * There are too many key combinations to list them all here.
	 * - Arrow keys move by individual characters/lines
	 * - Ctrl-arrow key combinations move by words/paragraphs
	 * - Home/End keys move to the ends of the buffer
	 *
	 * Params:
	 *     step = the granularity of the move, as a #GtkMovementStep
	 *     count = the number of @step units to move
	 *     extendSelection = %TRUE if the move should extend the selection
	 */
	gulong addOnMoveCursor(void delegate(GtkMovementStep, int, bool, Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMoveCursorDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMoveCursorDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMoveCursor(GtkLabel* labelStruct, GtkMovementStep step, int count, bool extendSelection, OnMoveCursorDelegateWrapper wrapper)
	{
		wrapper.dlg(step, count, extendSelection, wrapper.outer);
	}
	
	extern(C) static void callBackMoveCursorDestroy(OnMoveCursorDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnPopulatePopupDelegateWrapper
	{
		static OnPopulatePopupDelegateWrapper[] listeners;
		void delegate(Menu, Label) dlg;
		gulong handlerId;
		
		this(void delegate(Menu, Label) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnPopulatePopupDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The ::populate-popup signal gets emitted before showing the
	 * context menu of the label. Note that only selectable labels
	 * have context menus.
	 *
	 * If you need to add items to the context menu, connect
	 * to this signal and append your menuitems to the @menu.
	 *
	 * Params:
	 *     menu = the menu that is being populated
	 */
	gulong addOnPopulatePopup(void delegate(Menu, Label) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnPopulatePopupDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"populate-popup",
			cast(GCallback)&callBackPopulatePopup,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackPopulatePopupDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackPopulatePopup(GtkLabel* labelStruct, GtkMenu* menu, OnPopulatePopupDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Menu)(menu), wrapper.outer);
	}
	
	extern(C) static void callBackPopulatePopupDestroy(OnPopulatePopupDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
