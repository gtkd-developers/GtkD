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


module gtk.Entry;

private import gdk.Event;
private import gdkpixbuf.Pixbuf;
private import gio.IconIF;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Adjustment;
private import gtk.Border;
private import gtk.CellEditableIF;
private import gtk.CellEditableT;
private import gtk.EditableIF;
private import gtk.EditableT;
private import gtk.EntryBuffer;
private import gtk.EntryCompletion;
private import gtk.TargetList;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import pango.PgAttributeList;
private import pango.PgLayout;
private import pango.PgTabArray;
private import std.algorithm;


/**
 * The #GtkEntry widget is a single line text entry
 * widget. A fairly large set of key bindings are supported
 * by default. If the entered text is longer than the allocation
 * of the widget, the widget will scroll so that the cursor
 * position is visible.
 * 
 * When using an entry for passwords and other sensitive information,
 * it can be put into “password mode” using gtk_entry_set_visibility().
 * In this mode, entered text is displayed using a “invisible” character.
 * By default, GTK+ picks the best invisible character that is available
 * in the current font, but it can be changed with
 * gtk_entry_set_invisible_char(). Since 2.16, GTK+ displays a warning
 * when Caps Lock or input methods might interfere with entering text in
 * a password entry. The warning can be turned off with the
 * #GtkEntry:caps-lock-warning property.
 * 
 * Since 2.16, GtkEntry has the ability to display progress or activity
 * information behind the text. To make an entry display such information,
 * use gtk_entry_set_progress_fraction() or gtk_entry_set_progress_pulse_step().
 * 
 * Additionally, GtkEntry can show icons at either side of the entry. These
 * icons can be activatable by clicking, can be set up as drag source and
 * can have tooltips. To add an icon, use gtk_entry_set_icon_from_gicon() or
 * one of the various other functions that set an icon from a stock id, an
 * icon name or a pixbuf. To trigger an action when the user clicks an icon,
 * connect to the #GtkEntry::icon-press signal. To allow DND operations
 * from an icon, use gtk_entry_set_icon_drag_source(). To set a tooltip on
 * an icon, use gtk_entry_set_icon_tooltip_text() or the corresponding function
 * for markup.
 * 
 * Note that functionality or information that is only available by clicking
 * on an icon in an entry may not be accessible at all to users which are not
 * able to use a mouse or other pointing device. It is therefore recommended
 * that any such functionality should also be available by other means, e.g.
 * via the context menu of the entry.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * entry
 * ├── image.left
 * ├── image.right
 * ├── undershoot.left
 * ├── undershoot.right
 * ├── [selection]
 * ├── [progress[.pulse]]
 * ╰── [window.popup]
 * ]|
 * 
 * GtkEntry has a main node with the name entry. Depending on the properties
 * of the entry, the style classes .read-only and .flat may appear. The style
 * classes .warning and .error may also be used with entries.
 * 
 * When the entry shows icons, it adds subnodes with the name image and the
 * style class .left or .right, depending on where the icon appears.
 * 
 * When the entry has a selection, it adds a subnode with the name selection.
 * 
 * When the entry shows progress, it adds a subnode with the name progress.
 * The node has the style class .pulse when the shown progress is pulsing.
 * 
 * The CSS node for a context menu is added as a subnode below entry as well.
 * 
 * The undershoot nodes are used to draw the underflow indication when content
 * is scrolled out of view. These nodes get the .left and .right style classes
 * added depending on where the indication is drawn.
 * 
 * When touch is used and touch selection handles are shown, they are using
 * CSS nodes with name cursor-handle. They get the .top or .bottom style class
 * depending on where they are shown in relation to the selection. If there is
 * just a single handle for the text cursor, it gets the style class
 * .insertion-cursor.
 */
public class Entry : Widget, CellEditableIF, EditableIF
{
	/** the main Gtk struct */
	protected GtkEntry* gtkEntry;

	/** Get the main Gtk struct */
	public GtkEntry* getEntryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEntry;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEntry;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEntry* gtkEntry, bool ownedRef = false)
	{
		this.gtkEntry = gtkEntry;
		super(cast(GtkWidget*)gtkEntry, ownedRef);
	}

	// add the CellEditable capabilities
	mixin CellEditableT!(GtkEntry);

	// add the Editable capabilities
	mixin EditableT!(GtkEntry);

	/** */
	public this (string text)
	{
		this();
		setText(text);
	}

	/** */
	public this (string text, int max)
	{
		this(text);
		setMaxLength(max);
	}

	/**
	 * Gets the stock id of action.
	 * Since 2.16
	 * Returns: the stock id
	 */
	public StockID getStockId(GtkEntryIconPosition iconPos)
	{
		return cast(StockID)Str.toString(gtk_entry_get_icon_stock(gtkEntry, iconPos));
	}

	/**
	 * Sets the stock id on action
	 * Since 2.16
	 * Params:
	 * stockId =  the stock id
	 */
	public void setStockId(GtkEntryIconPosition iconPos, StockID stockId)
	{
		// void gtk_entry_set_icon_from_stock (GtkEntry *entry, GtkEntryIconPosition icon_pos, const gchar *stock_id);
		gtk_entry_set_icon_from_stock(gtkEntry, iconPos, Str.toStringz(stockId));
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_entry_get_type();
	}

	/**
	 * Creates a new entry.
	 *
	 * Returns: a new #GtkEntry.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_entry_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEntry*) p);
	}

	/**
	 * Creates a new entry with the specified text buffer.
	 *
	 * Params:
	 *     buffer = The buffer to use for the new #GtkEntry.
	 *
	 * Returns: a new #GtkEntry
	 *
	 * Since: 2.18
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(EntryBuffer buffer)
	{
		auto p = gtk_entry_new_with_buffer((buffer is null) ? null : buffer.getEntryBufferStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_buffer");
		}

		this(cast(GtkEntry*) p);
	}

	/**
	 * Retrieves the value set by gtk_entry_set_activates_default().
	 *
	 * Returns: %TRUE if the entry will activate the default widget
	 */
	public bool getActivatesDefault()
	{
		return gtk_entry_get_activates_default(gtkEntry) != 0;
	}

	/**
	 * Gets the value set by gtk_entry_set_alignment().
	 *
	 * Returns: the alignment
	 *
	 * Since: 2.4
	 */
	public float getAlignment()
	{
		return gtk_entry_get_alignment(gtkEntry);
	}

	/**
	 * Gets the attribute list that was set on the entry using
	 * gtk_entry_set_attributes(), if any.
	 *
	 * Returns: the attribute list, or %NULL
	 *     if none was set.
	 *
	 * Since: 3.6
	 */
	public PgAttributeList getAttributes()
	{
		auto p = gtk_entry_get_attributes(gtkEntry);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) p);
	}

	/**
	 * Get the #GtkEntryBuffer object which holds the text for
	 * this widget.
	 *
	 * Returns: A #GtkEntryBuffer object.
	 *
	 * Since: 2.18
	 */
	public EntryBuffer getBuffer()
	{
		auto p = gtk_entry_get_buffer(gtkEntry);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(EntryBuffer)(cast(GtkEntryBuffer*) p);
	}

	/**
	 * Returns the auxiliary completion object currently in use by @entry.
	 *
	 * Returns: The auxiliary completion object currently
	 *     in use by @entry.
	 *
	 * Since: 2.4
	 */
	public EntryCompletion getCompletion()
	{
		auto p = gtk_entry_get_completion(gtkEntry);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(EntryCompletion)(cast(GtkEntryCompletion*) p);
	}

	/**
	 * Returns the index of the icon which is the source of the current
	 * DND operation, or -1.
	 *
	 * This function is meant to be used in a #GtkWidget::drag-data-get
	 * callback.
	 *
	 * Returns: index of the icon which is the source of the current
	 *     DND operation, or -1.
	 *
	 * Since: 2.16
	 */
	public int getCurrentIconDragSource()
	{
		return gtk_entry_get_current_icon_drag_source(gtkEntry);
	}

	/**
	 * Retrieves the horizontal cursor adjustment for the entry.
	 * See gtk_entry_set_cursor_hadjustment().
	 *
	 * Returns: the horizontal cursor adjustment, or %NULL
	 *     if none has been set.
	 *
	 * Since: 2.12
	 */
	public Adjustment getCursorHadjustment()
	{
		auto p = gtk_entry_get_cursor_hadjustment(gtkEntry);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Gets the value set by gtk_entry_set_has_frame().
	 *
	 * Returns: whether the entry has a beveled frame
	 */
	public bool getHasFrame()
	{
		return gtk_entry_get_has_frame(gtkEntry) != 0;
	}

	/**
	 * Returns whether the icon is activatable.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: %TRUE if the icon is activatable.
	 *
	 * Since: 2.16
	 */
	public bool getIconActivatable(GtkEntryIconPosition iconPos)
	{
		return gtk_entry_get_icon_activatable(gtkEntry, iconPos) != 0;
	}

	/**
	 * Gets the area where entry’s icon at @icon_pos is drawn.
	 * This function is useful when drawing something to the
	 * entry in a draw callback.
	 *
	 * If the entry is not realized or has no icon at the given position,
	 * @icon_area is filled with zeros. Otherwise, @icon_area will be filled
	 * with the icon’s allocation, relative to @entry’s allocation.
	 *
	 * See also gtk_entry_get_text_area()
	 *
	 * Params:
	 *     iconPos = Icon position
	 *     iconArea = Return location for the icon’s area
	 *
	 * Since: 3.0
	 */
	public void getIconArea(GtkEntryIconPosition iconPos, out GdkRectangle iconArea)
	{
		gtk_entry_get_icon_area(gtkEntry, iconPos, &iconArea);
	}

	/**
	 * Finds the icon at the given position and return its index. The
	 * position’s coordinates are relative to the @entry’s top left corner.
	 * If @x, @y doesn’t lie inside an icon, -1 is returned.
	 * This function is intended for use in a #GtkWidget::query-tooltip
	 * signal handler.
	 *
	 * Params:
	 *     x = the x coordinate of the position to find
	 *     y = the y coordinate of the position to find
	 *
	 * Returns: the index of the icon at the given position, or -1
	 *
	 * Since: 2.16
	 */
	public int getIconAtPos(int x, int y)
	{
		return gtk_entry_get_icon_at_pos(gtkEntry, x, y);
	}

	/**
	 * Retrieves the #GIcon used for the icon, or %NULL if there is
	 * no icon or if the icon was set by some other method (e.g., by
	 * stock, pixbuf, or icon name).
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: A #GIcon, or %NULL if no icon is set
	 *     or if the icon is not a #GIcon
	 *
	 * Since: 2.16
	 */
	public IconIF getIconGicon(GtkEntryIconPosition iconPos)
	{
		auto p = gtk_entry_get_icon_gicon(gtkEntry, iconPos);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) p);
	}

	/**
	 * Retrieves the icon name used for the icon, or %NULL if there is
	 * no icon or if the icon was set by some other method (e.g., by
	 * pixbuf, stock or gicon).
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: An icon name, or %NULL if no icon is set or if the icon
	 *     wasn’t set from an icon name
	 *
	 * Since: 2.16
	 */
	public string getIconName(GtkEntryIconPosition iconPos)
	{
		return Str.toString(gtk_entry_get_icon_name(gtkEntry, iconPos));
	}

	/**
	 * Retrieves the image used for the icon.
	 *
	 * Unlike the other methods of setting and getting icon data, this
	 * method will work regardless of whether the icon was set using a
	 * #GdkPixbuf, a #GIcon, a stock item, or an icon name.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: A #GdkPixbuf, or %NULL if no icon is
	 *     set for this position.
	 *
	 * Since: 2.16
	 */
	public Pixbuf getIconPixbuf(GtkEntryIconPosition iconPos)
	{
		auto p = gtk_entry_get_icon_pixbuf(gtkEntry, iconPos);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 * Returns whether the icon appears sensitive or insensitive.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: %TRUE if the icon is sensitive.
	 *
	 * Since: 2.16
	 */
	public bool getIconSensitive(GtkEntryIconPosition iconPos)
	{
		return gtk_entry_get_icon_sensitive(gtkEntry, iconPos) != 0;
	}

	/**
	 * Retrieves the stock id used for the icon, or %NULL if there is
	 * no icon or if the icon was set by some other method (e.g., by
	 * pixbuf, icon name or gicon).
	 *
	 * Deprecated: Use gtk_entry_get_icon_name() instead.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: A stock id, or %NULL if no icon is set or if the icon
	 *     wasn’t set from a stock id
	 *
	 * Since: 2.16
	 */
	public string getIconStock(GtkEntryIconPosition iconPos)
	{
		return Str.toString(gtk_entry_get_icon_stock(gtkEntry, iconPos));
	}

	/**
	 * Gets the type of representation being used by the icon
	 * to store image data. If the icon has no image data,
	 * the return value will be %GTK_IMAGE_EMPTY.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: image representation being used
	 *
	 * Since: 2.16
	 */
	public GtkImageType getIconStorageType(GtkEntryIconPosition iconPos)
	{
		return gtk_entry_get_icon_storage_type(gtkEntry, iconPos);
	}

	/**
	 * Gets the contents of the tooltip on the icon at the specified
	 * position in @entry.
	 *
	 * Params:
	 *     iconPos = the icon position
	 *
	 * Returns: the tooltip text, or %NULL. Free the returned
	 *     string with g_free() when done.
	 *
	 * Since: 2.16
	 */
	public string getIconTooltipMarkup(GtkEntryIconPosition iconPos)
	{
		auto retStr = gtk_entry_get_icon_tooltip_markup(gtkEntry, iconPos);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the contents of the tooltip on the icon at the specified
	 * position in @entry.
	 *
	 * Params:
	 *     iconPos = the icon position
	 *
	 * Returns: the tooltip text, or %NULL. Free the returned
	 *     string with g_free() when done.
	 *
	 * Since: 2.16
	 */
	public string getIconTooltipText(GtkEntryIconPosition iconPos)
	{
		auto retStr = gtk_entry_get_icon_tooltip_text(gtkEntry, iconPos);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This function returns the entry’s #GtkEntry:inner-border property. See
	 * gtk_entry_set_inner_border() for more information.
	 *
	 * Deprecated: Use the standard border and padding CSS properties (through
	 * objects like #GtkStyleContext and #GtkCssProvider); the value returned by
	 * this function is ignored by #GtkEntry.
	 *
	 * Returns: the entry’s #GtkBorder, or
	 *     %NULL if none was set.
	 *
	 * Since: 2.10
	 */
	public Border getInnerBorder()
	{
		auto p = gtk_entry_get_inner_border(gtkEntry);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Border)(cast(GtkBorder*) p);
	}

	/**
	 * Gets the value of the #GtkEntry:input-hints property.
	 *
	 * Since: 3.6
	 */
	public GtkInputHints getInputHints()
	{
		return gtk_entry_get_input_hints(gtkEntry);
	}

	/**
	 * Gets the value of the #GtkEntry:input-purpose property.
	 *
	 * Since: 3.6
	 */
	public GtkInputPurpose getInputPurpose()
	{
		return gtk_entry_get_input_purpose(gtkEntry);
	}

	/**
	 * Retrieves the character displayed in place of the real characters
	 * for entries with visibility set to false. See gtk_entry_set_invisible_char().
	 *
	 * Returns: the current invisible char, or 0, if the entry does not
	 *     show invisible text at all.
	 */
	public dchar getInvisibleChar()
	{
		return gtk_entry_get_invisible_char(gtkEntry);
	}

	/**
	 * Gets the #PangoLayout used to display the entry.
	 * The layout is useful to e.g. convert text positions to
	 * pixel positions, in combination with gtk_entry_get_layout_offsets().
	 * The returned layout is owned by the entry and must not be
	 * modified or freed by the caller.
	 *
	 * Keep in mind that the layout text may contain a preedit string, so
	 * gtk_entry_layout_index_to_text_index() and
	 * gtk_entry_text_index_to_layout_index() are needed to convert byte
	 * indices in the layout to byte indices in the entry contents.
	 *
	 * Returns: the #PangoLayout for this entry
	 */
	public PgLayout getLayout()
	{
		auto p = gtk_entry_get_layout(gtkEntry);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}

	/**
	 * Obtains the position of the #PangoLayout used to render text
	 * in the entry, in widget coordinates. Useful if you want to line
	 * up the text in an entry with some other text, e.g. when using the
	 * entry to implement editable cells in a sheet widget.
	 *
	 * Also useful to convert mouse events into coordinates inside the
	 * #PangoLayout, e.g. to take some action if some part of the entry text
	 * is clicked.
	 *
	 * Note that as the user scrolls around in the entry the offsets will
	 * change; you’ll need to connect to the “notify::scroll-offset”
	 * signal to track this. Remember when using the #PangoLayout
	 * functions you need to convert to and from pixels using
	 * PANGO_PIXELS() or #PANGO_SCALE.
	 *
	 * Keep in mind that the layout text may contain a preedit string, so
	 * gtk_entry_layout_index_to_text_index() and
	 * gtk_entry_text_index_to_layout_index() are needed to convert byte
	 * indices in the layout to byte indices in the entry contents.
	 *
	 * Params:
	 *     x = location to store X offset of layout, or %NULL
	 *     y = location to store Y offset of layout, or %NULL
	 */
	public void getLayoutOffsets(out int x, out int y)
	{
		gtk_entry_get_layout_offsets(gtkEntry, &x, &y);
	}

	/**
	 * Retrieves the maximum allowed length of the text in
	 * @entry. See gtk_entry_set_max_length().
	 *
	 * This is equivalent to getting @entry's #GtkEntryBuffer and
	 * calling gtk_entry_buffer_get_max_length() on it.
	 *
	 * Returns: the maximum allowed number of characters
	 *     in #GtkEntry, or 0 if there is no maximum.
	 */
	public int getMaxLength()
	{
		return gtk_entry_get_max_length(gtkEntry);
	}

	/**
	 * Retrieves the desired maximum width of @entry, in characters.
	 * See gtk_entry_set_max_width_chars().
	 *
	 * Returns: the maximum width of the entry, in characters
	 *
	 * Since: 3.12
	 */
	public int getMaxWidthChars()
	{
		return gtk_entry_get_max_width_chars(gtkEntry);
	}

	/**
	 * Gets the value set by gtk_entry_set_overwrite_mode().
	 *
	 * Returns: whether the text is overwritten when typing.
	 *
	 * Since: 2.14
	 */
	public bool getOverwriteMode()
	{
		return gtk_entry_get_overwrite_mode(gtkEntry) != 0;
	}

	/**
	 * Retrieves the text that will be displayed when @entry is empty and unfocused
	 *
	 * Returns: a pointer to the placeholder text as a string. This string points to internally allocated
	 *     storage in the widget and must not be freed, modified or stored.
	 *
	 * Since: 3.2
	 */
	public string getPlaceholderText()
	{
		return Str.toString(gtk_entry_get_placeholder_text(gtkEntry));
	}

	/**
	 * Returns the current fraction of the task that’s been completed.
	 * See gtk_entry_set_progress_fraction().
	 *
	 * Returns: a fraction from 0.0 to 1.0
	 *
	 * Since: 2.16
	 */
	public double getProgressFraction()
	{
		return gtk_entry_get_progress_fraction(gtkEntry);
	}

	/**
	 * Retrieves the pulse step set with gtk_entry_set_progress_pulse_step().
	 *
	 * Returns: a fraction from 0.0 to 1.0
	 *
	 * Since: 2.16
	 */
	public double getProgressPulseStep()
	{
		return gtk_entry_get_progress_pulse_step(gtkEntry);
	}

	/**
	 * Gets the tabstops that were set on the entry using gtk_entry_set_tabs(), if
	 * any.
	 *
	 * Returns: the tabstops, or %NULL if none was set.
	 *
	 * Since: 3.10
	 */
	public PgTabArray getTabs()
	{
		auto p = gtk_entry_get_tabs(gtkEntry);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) p);
	}

	/**
	 * Retrieves the contents of the entry widget.
	 * See also gtk_editable_get_chars().
	 *
	 * This is equivalent to getting @entry's #GtkEntryBuffer and calling
	 * gtk_entry_buffer_get_text() on it.
	 *
	 * Returns: a pointer to the contents of the widget as a
	 *     string. This string points to internally allocated
	 *     storage in the widget and must not be freed, modified or
	 *     stored.
	 */
	public string getText()
	{
		return Str.toString(gtk_entry_get_text(gtkEntry));
	}

	/**
	 * Gets the area where the entry’s text is drawn. This function is
	 * useful when drawing something to the entry in a draw callback.
	 *
	 * If the entry is not realized, @text_area is filled with zeros.
	 *
	 * See also gtk_entry_get_icon_area().
	 *
	 * Params:
	 *     textArea = Return location for the text area.
	 *
	 * Since: 3.0
	 */
	public void getTextArea(out GdkRectangle textArea)
	{
		gtk_entry_get_text_area(gtkEntry, &textArea);
	}

	/**
	 * Retrieves the current length of the text in
	 * @entry.
	 *
	 * This is equivalent to getting @entry's #GtkEntryBuffer and
	 * calling gtk_entry_buffer_get_length() on it.
	 *
	 * Returns: the current number of characters
	 *     in #GtkEntry, or 0 if there are none.
	 *
	 * Since: 2.14
	 */
	public ushort getTextLength()
	{
		return gtk_entry_get_text_length(gtkEntry);
	}

	/**
	 * Retrieves whether the text in @entry is visible. See
	 * gtk_entry_set_visibility().
	 *
	 * Returns: %TRUE if the text is currently visible
	 */
	public bool getVisibility()
	{
		return gtk_entry_get_visibility(gtkEntry) != 0;
	}

	/**
	 * Gets the value set by gtk_entry_set_width_chars().
	 *
	 * Returns: number of chars to request space for, or negative if unset
	 */
	public int getWidthChars()
	{
		return gtk_entry_get_width_chars(gtkEntry);
	}

	/**
	 * Causes @entry to have keyboard focus.
	 *
	 * It behaves like gtk_widget_grab_focus(),
	 * except that it doesn't select the contents of the entry.
	 * You only want to call this on some special entries
	 * which the user usually doesn't want to replace all text in,
	 * such as search-as-you-type entries.
	 *
	 * Since: 3.16
	 */
	public void grabFocusWithoutSelecting()
	{
		gtk_entry_grab_focus_without_selecting(gtkEntry);
	}

	/**
	 * Allow the #GtkEntry input method to internally handle key press
	 * and release events. If this function returns %TRUE, then no further
	 * processing should be done for this key event. See
	 * gtk_im_context_filter_keypress().
	 *
	 * Note that you are expected to call this function from your handler
	 * when overriding key event handling. This is needed in the case when
	 * you need to insert your own key handling between the input method
	 * and the default key event handling of the #GtkEntry.
	 * See gtk_text_view_reset_im_context() for an example of use.
	 *
	 * Params:
	 *     event = the key event
	 *
	 * Returns: %TRUE if the input method handled the key event.
	 *
	 * Since: 2.22
	 */
	public bool imContextFilterKeypress(GdkEventKey* event)
	{
		return gtk_entry_im_context_filter_keypress(gtkEntry, event) != 0;
	}

	/**
	 * Converts from a position in the entry’s #PangoLayout (returned by
	 * gtk_entry_get_layout()) to a position in the entry contents
	 * (returned by gtk_entry_get_text()).
	 *
	 * Params:
	 *     layoutIndex = byte index into the entry layout text
	 *
	 * Returns: byte index into the entry contents
	 */
	public int layoutIndexToTextIndex(int layoutIndex)
	{
		return gtk_entry_layout_index_to_text_index(gtkEntry, layoutIndex);
	}

	/**
	 * Indicates that some progress is made, but you don’t know how much.
	 * Causes the entry’s progress indicator to enter “activity mode,”
	 * where a block bounces back and forth. Each call to
	 * gtk_entry_progress_pulse() causes the block to move by a little bit
	 * (the amount of movement per pulse is determined by
	 * gtk_entry_set_progress_pulse_step()).
	 *
	 * Since: 2.16
	 */
	public void progressPulse()
	{
		gtk_entry_progress_pulse(gtkEntry);
	}

	/**
	 * Reset the input method context of the entry if needed.
	 *
	 * This can be necessary in the case where modifying the buffer
	 * would confuse on-going input method behavior.
	 *
	 * Since: 2.22
	 */
	public void resetImContext()
	{
		gtk_entry_reset_im_context(gtkEntry);
	}

	/**
	 * If @setting is %TRUE, pressing Enter in the @entry will activate the default
	 * widget for the window containing the entry. This usually means that
	 * the dialog box containing the entry will be closed, since the default
	 * widget is usually one of the dialog buttons.
	 *
	 * (For experts: if @setting is %TRUE, the entry calls
	 * gtk_window_activate_default() on the window containing the entry, in
	 * the default handler for the #GtkEntry::activate signal.)
	 *
	 * Params:
	 *     setting = %TRUE to activate window’s default widget on Enter keypress
	 */
	public void setActivatesDefault(bool setting)
	{
		gtk_entry_set_activates_default(gtkEntry, setting);
	}

	/**
	 * Sets the alignment for the contents of the entry. This controls
	 * the horizontal positioning of the contents when the displayed
	 * text is shorter than the width of the entry.
	 *
	 * Params:
	 *     xalign = The horizontal alignment, from 0 (left) to 1 (right).
	 *         Reversed for RTL layouts
	 *
	 * Since: 2.4
	 */
	public void setAlignment(float xalign)
	{
		gtk_entry_set_alignment(gtkEntry, xalign);
	}

	/**
	 * Sets a #PangoAttrList; the attributes in the list are applied to the
	 * entry text.
	 *
	 * Params:
	 *     attrs = a #PangoAttrList
	 *
	 * Since: 3.6
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		gtk_entry_set_attributes(gtkEntry, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}

	/**
	 * Set the #GtkEntryBuffer object which holds the text for
	 * this widget.
	 *
	 * Params:
	 *     buffer = a #GtkEntryBuffer
	 *
	 * Since: 2.18
	 */
	public void setBuffer(EntryBuffer buffer)
	{
		gtk_entry_set_buffer(gtkEntry, (buffer is null) ? null : buffer.getEntryBufferStruct());
	}

	/**
	 * Sets @completion to be the auxiliary completion object to use with @entry.
	 * All further configuration of the completion mechanism is done on
	 * @completion using the #GtkEntryCompletion API. Completion is disabled if
	 * @completion is set to %NULL.
	 *
	 * Params:
	 *     completion = The #GtkEntryCompletion or %NULL
	 *
	 * Since: 2.4
	 */
	public void setCompletion(EntryCompletion completion)
	{
		gtk_entry_set_completion(gtkEntry, (completion is null) ? null : completion.getEntryCompletionStruct());
	}

	/**
	 * Hooks up an adjustment to the cursor position in an entry, so that when
	 * the cursor is moved, the adjustment is scrolled to show that position.
	 * See gtk_scrolled_window_get_hadjustment() for a typical way of obtaining
	 * the adjustment.
	 *
	 * The adjustment has to be in pixel units and in the same coordinate system
	 * as the entry.
	 *
	 * Params:
	 *     adjustment = an adjustment which should be adjusted when the cursor
	 *         is moved, or %NULL
	 *
	 * Since: 2.12
	 */
	public void setCursorHadjustment(Adjustment adjustment)
	{
		gtk_entry_set_cursor_hadjustment(gtkEntry, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/**
	 * Sets whether the entry has a beveled frame around it.
	 *
	 * Params:
	 *     setting = new value
	 */
	public void setHasFrame(bool setting)
	{
		gtk_entry_set_has_frame(gtkEntry, setting);
	}

	/**
	 * Sets whether the icon is activatable.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *     activatable = %TRUE if the icon should be activatable
	 *
	 * Since: 2.16
	 */
	public void setIconActivatable(GtkEntryIconPosition iconPos, bool activatable)
	{
		gtk_entry_set_icon_activatable(gtkEntry, iconPos, activatable);
	}

	/**
	 * Sets up the icon at the given position so that GTK+ will start a drag
	 * operation when the user clicks and drags the icon.
	 *
	 * To handle the drag operation, you need to connect to the usual
	 * #GtkWidget::drag-data-get (or possibly #GtkWidget::drag-data-delete)
	 * signal, and use gtk_entry_get_current_icon_drag_source() in
	 * your signal handler to find out if the drag was started from
	 * an icon.
	 *
	 * By default, GTK+ uses the icon as the drag icon. You can use the
	 * #GtkWidget::drag-begin signal to set a different icon. Note that you
	 * have to use g_signal_connect_after() to ensure that your signal handler
	 * gets executed after the default handler.
	 *
	 * Params:
	 *     iconPos = icon position
	 *     targetList = the targets (data formats) in which the data can be provided
	 *     actions = a bitmask of the allowed drag actions
	 *
	 * Since: 2.16
	 */
	public void setIconDragSource(GtkEntryIconPosition iconPos, TargetList targetList, GdkDragAction actions)
	{
		gtk_entry_set_icon_drag_source(gtkEntry, iconPos, (targetList is null) ? null : targetList.getTargetListStruct(), actions);
	}

	/**
	 * Sets the icon shown in the entry at the specified position
	 * from the current icon theme.
	 * If the icon isn’t known, a “broken image” icon will be displayed
	 * instead.
	 *
	 * If @icon is %NULL, no icon will be shown in the specified position.
	 *
	 * Params:
	 *     iconPos = The position at which to set the icon
	 *     icon = The icon to set, or %NULL
	 *
	 * Since: 2.16
	 */
	public void setIconFromGicon(GtkEntryIconPosition iconPos, IconIF icon)
	{
		gtk_entry_set_icon_from_gicon(gtkEntry, iconPos, (icon is null) ? null : icon.getIconStruct());
	}

	/**
	 * Sets the icon shown in the entry at the specified position
	 * from the current icon theme.
	 *
	 * If the icon name isn’t known, a “broken image” icon will be displayed
	 * instead.
	 *
	 * If @icon_name is %NULL, no icon will be shown in the specified position.
	 *
	 * Params:
	 *     iconPos = The position at which to set the icon
	 *     iconName = An icon name, or %NULL
	 *
	 * Since: 2.16
	 */
	public void setIconFromIconName(GtkEntryIconPosition iconPos, string iconName)
	{
		gtk_entry_set_icon_from_icon_name(gtkEntry, iconPos, Str.toStringz(iconName));
	}

	/**
	 * Sets the icon shown in the specified position using a pixbuf.
	 *
	 * If @pixbuf is %NULL, no icon will be shown in the specified position.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *     pixbuf = A #GdkPixbuf, or %NULL
	 *
	 * Since: 2.16
	 */
	public void setIconFromPixbuf(GtkEntryIconPosition iconPos, Pixbuf pixbuf)
	{
		gtk_entry_set_icon_from_pixbuf(gtkEntry, iconPos, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Sets the icon shown in the entry at the specified position from
	 * a stock image.
	 *
	 * If @stock_id is %NULL, no icon will be shown in the specified position.
	 *
	 * Deprecated: Use gtk_entry_set_icon_from_icon_name() instead.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *     stockId = The name of the stock item, or %NULL
	 *
	 * Since: 2.16
	 */
	public void setIconFromStock(GtkEntryIconPosition iconPos, string stockId)
	{
		gtk_entry_set_icon_from_stock(gtkEntry, iconPos, Str.toStringz(stockId));
	}

	/**
	 * Sets the sensitivity for the specified icon.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *     sensitive = Specifies whether the icon should appear
	 *         sensitive or insensitive
	 *
	 * Since: 2.16
	 */
	public void setIconSensitive(GtkEntryIconPosition iconPos, bool sensitive)
	{
		gtk_entry_set_icon_sensitive(gtkEntry, iconPos, sensitive);
	}

	/**
	 * Sets @tooltip as the contents of the tooltip for the icon at
	 * the specified position. @tooltip is assumed to be marked up with
	 * the [Pango text markup language][PangoMarkupFormat].
	 *
	 * Use %NULL for @tooltip to remove an existing tooltip.
	 *
	 * See also gtk_widget_set_tooltip_markup() and
	 * gtk_entry_set_icon_tooltip_text().
	 *
	 * Params:
	 *     iconPos = the icon position
	 *     tooltip = the contents of the tooltip for the icon, or %NULL
	 *
	 * Since: 2.16
	 */
	public void setIconTooltipMarkup(GtkEntryIconPosition iconPos, string tooltip)
	{
		gtk_entry_set_icon_tooltip_markup(gtkEntry, iconPos, Str.toStringz(tooltip));
	}

	/**
	 * Sets @tooltip as the contents of the tooltip for the icon
	 * at the specified position.
	 *
	 * Use %NULL for @tooltip to remove an existing tooltip.
	 *
	 * See also gtk_widget_set_tooltip_text() and
	 * gtk_entry_set_icon_tooltip_markup().
	 *
	 * If you unset the widget tooltip via gtk_widget_set_tooltip_text() or
	 * gtk_widget_set_tooltip_markup(), this sets GtkWidget:has-tooltip to %FALSE,
	 * which suppresses icon tooltips too. You can resolve this by then calling
	 * gtk_widget_set_has_tooltip() to set GtkWidget:has-tooltip back to %TRUE, or
	 * setting at least one non-empty tooltip on any icon achieves the same result.
	 *
	 * Params:
	 *     iconPos = the icon position
	 *     tooltip = the contents of the tooltip for the icon, or %NULL
	 *
	 * Since: 2.16
	 */
	public void setIconTooltipText(GtkEntryIconPosition iconPos, string tooltip)
	{
		gtk_entry_set_icon_tooltip_text(gtkEntry, iconPos, Str.toStringz(tooltip));
	}

	/**
	 * Sets %entry’s inner-border property to @border, or clears it if %NULL
	 * is passed. The inner-border is the area around the entry’s text, but
	 * inside its frame.
	 *
	 * If set, this property overrides the inner-border style property.
	 * Overriding the style-provided border is useful when you want to do
	 * in-place editing of some text in a canvas or list widget, where
	 * pixel-exact positioning of the entry is important.
	 *
	 * Deprecated: Use the standard border and padding CSS properties (through
	 * objects like #GtkStyleContext and #GtkCssProvider); the value set with
	 * this function is ignored by #GtkEntry.
	 *
	 * Params:
	 *     border = a #GtkBorder, or %NULL
	 *
	 * Since: 2.10
	 */
	public void setInnerBorder(Border border)
	{
		gtk_entry_set_inner_border(gtkEntry, (border is null) ? null : border.getBorderStruct());
	}

	/**
	 * Sets the #GtkEntry:input-hints property, which
	 * allows input methods to fine-tune their behaviour.
	 *
	 * Params:
	 *     hints = the hints
	 *
	 * Since: 3.6
	 */
	public void setInputHints(GtkInputHints hints)
	{
		gtk_entry_set_input_hints(gtkEntry, hints);
	}

	/**
	 * Sets the #GtkEntry:input-purpose property which
	 * can be used by on-screen keyboards and other input
	 * methods to adjust their behaviour.
	 *
	 * Params:
	 *     purpose = the purpose
	 *
	 * Since: 3.6
	 */
	public void setInputPurpose(GtkInputPurpose purpose)
	{
		gtk_entry_set_input_purpose(gtkEntry, purpose);
	}

	/**
	 * Sets the character to use in place of the actual text when
	 * gtk_entry_set_visibility() has been called to set text visibility
	 * to %FALSE. i.e. this is the character used in “password mode” to
	 * show the user how many characters have been typed. By default, GTK+
	 * picks the best invisible char available in the current font. If you
	 * set the invisible char to 0, then the user will get no feedback
	 * at all; there will be no text on the screen as they type.
	 *
	 * Params:
	 *     ch = a Unicode character
	 */
	public void setInvisibleChar(dchar ch)
	{
		gtk_entry_set_invisible_char(gtkEntry, ch);
	}

	/**
	 * Sets the maximum allowed length of the contents of the widget. If
	 * the current contents are longer than the given length, then they
	 * will be truncated to fit.
	 *
	 * This is equivalent to getting @entry's #GtkEntryBuffer and
	 * calling gtk_entry_buffer_set_max_length() on it.
	 * ]|
	 *
	 * Params:
	 *     max = the maximum length of the entry, or 0 for no maximum.
	 *         (other than the maximum length of entries.) The value passed in will
	 *         be clamped to the range 0-65536.
	 */
	public void setMaxLength(int max)
	{
		gtk_entry_set_max_length(gtkEntry, max);
	}

	/**
	 * Sets the desired maximum width in characters of @entry.
	 *
	 * Params:
	 *     nChars = the new desired maximum width, in characters
	 *
	 * Since: 3.12
	 */
	public void setMaxWidthChars(int nChars)
	{
		gtk_entry_set_max_width_chars(gtkEntry, nChars);
	}

	/**
	 * Sets whether the text is overwritten when typing in the #GtkEntry.
	 *
	 * Params:
	 *     overwrite = new value
	 *
	 * Since: 2.14
	 */
	public void setOverwriteMode(bool overwrite)
	{
		gtk_entry_set_overwrite_mode(gtkEntry, overwrite);
	}

	/**
	 * Sets text to be displayed in @entry when it is empty and unfocused.
	 * This can be used to give a visual hint of the expected contents of
	 * the #GtkEntry.
	 *
	 * Note that since the placeholder text gets removed when the entry
	 * received focus, using this feature is a bit problematic if the entry
	 * is given the initial focus in a window. Sometimes this can be
	 * worked around by delaying the initial focus setting until the
	 * first key event arrives.
	 *
	 * Params:
	 *     text = a string to be displayed when @entry is empty and unfocused, or %NULL
	 *
	 * Since: 3.2
	 */
	public void setPlaceholderText(string text)
	{
		gtk_entry_set_placeholder_text(gtkEntry, Str.toStringz(text));
	}

	/**
	 * Causes the entry’s progress indicator to “fill in” the given
	 * fraction of the bar. The fraction should be between 0.0 and 1.0,
	 * inclusive.
	 *
	 * Params:
	 *     fraction = fraction of the task that’s been completed
	 *
	 * Since: 2.16
	 */
	public void setProgressFraction(double fraction)
	{
		gtk_entry_set_progress_fraction(gtkEntry, fraction);
	}

	/**
	 * Sets the fraction of total entry width to move the progress
	 * bouncing block for each call to gtk_entry_progress_pulse().
	 *
	 * Params:
	 *     fraction = fraction between 0.0 and 1.0
	 *
	 * Since: 2.16
	 */
	public void setProgressPulseStep(double fraction)
	{
		gtk_entry_set_progress_pulse_step(gtkEntry, fraction);
	}

	/**
	 * Sets a #PangoTabArray; the tabstops in the array are applied to the entry
	 * text.
	 *
	 * Params:
	 *     tabs = a #PangoTabArray
	 *
	 * Since: 3.10
	 */
	public void setTabs(PgTabArray tabs)
	{
		gtk_entry_set_tabs(gtkEntry, (tabs is null) ? null : tabs.getPgTabArrayStruct());
	}

	/**
	 * Sets the text in the widget to the given
	 * value, replacing the current contents.
	 *
	 * See gtk_entry_buffer_set_text().
	 *
	 * Params:
	 *     text = the new text
	 */
	public void setText(string text)
	{
		gtk_entry_set_text(gtkEntry, Str.toStringz(text));
	}

	/**
	 * Sets whether the contents of the entry are visible or not.
	 * When visibility is set to %FALSE, characters are displayed
	 * as the invisible char, and will also appear that way when
	 * the text in the entry widget is copied elsewhere.
	 *
	 * By default, GTK+ picks the best invisible character available
	 * in the current font, but it can be changed with
	 * gtk_entry_set_invisible_char().
	 *
	 * Note that you probably want to set #GtkEntry:input-purpose
	 * to %GTK_INPUT_PURPOSE_PASSWORD or %GTK_INPUT_PURPOSE_PIN to
	 * inform input methods about the purpose of this entry,
	 * in addition to setting visibility to %FALSE.
	 *
	 * Params:
	 *     visible = %TRUE if the contents of the entry are displayed
	 *         as plaintext
	 */
	public void setVisibility(bool visible)
	{
		gtk_entry_set_visibility(gtkEntry, visible);
	}

	/**
	 * Changes the size request of the entry to be about the right size
	 * for @n_chars characters. Note that it changes the size
	 * request, the size can still be affected by
	 * how you pack the widget into containers. If @n_chars is -1, the
	 * size reverts to the default entry size.
	 *
	 * Params:
	 *     nChars = width in chars
	 */
	public void setWidthChars(int nChars)
	{
		gtk_entry_set_width_chars(gtkEntry, nChars);
	}

	/**
	 * Converts from a position in the entry contents (returned
	 * by gtk_entry_get_text()) to a position in the
	 * entry’s #PangoLayout (returned by gtk_entry_get_layout(),
	 * with text retrieved via pango_layout_get_text()).
	 *
	 * Params:
	 *     textIndex = byte index into the entry contents
	 *
	 * Returns: byte index into the entry layout text
	 */
	public int textIndexToLayoutIndex(int textIndex)
	{
		return gtk_entry_text_index_to_layout_index(gtkEntry, textIndex);
	}

	/**
	 * Unsets the invisible char previously set with
	 * gtk_entry_set_invisible_char(). So that the
	 * default invisible char is used again.
	 *
	 * Since: 2.16
	 */
	public void unsetInvisibleChar()
	{
		gtk_entry_unset_invisible_char(gtkEntry);
	}

	/**
	 * The ::activate signal is emitted when the user hits
	 * the Enter key.
	 *
	 * While this signal is used as a
	 * [keybinding signal][GtkBindingSignal],
	 * it is also commonly used by applications to intercept
	 * activation of entries.
	 *
	 * The default bindings for this signal are all forms of the Enter key.
	 */
	gulong addOnActivate(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::backspace signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * The default bindings for this signal are
	 * Backspace and Shift-Backspace.
	 */
	gulong addOnBackspace(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "backspace", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::copy-clipboard signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to copy the selection to the clipboard.
	 *
	 * The default bindings for this signal are
	 * Ctrl-c and Ctrl-Insert.
	 */
	gulong addOnCopyClipboard(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "copy-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::cut-clipboard signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to cut the selection to the clipboard.
	 *
	 * The default bindings for this signal are
	 * Ctrl-x and Shift-Delete.
	 */
	gulong addOnCutClipboard(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cut-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::delete-from-cursor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates a text deletion.
	 *
	 * If the @type is %GTK_DELETE_CHARS, GTK+ deletes the selection
	 * if there is one, otherwise it deletes the requested number
	 * of characters.
	 *
	 * The default bindings for this signal are
	 * Delete for deleting a character and Ctrl-Delete for
	 * deleting a word.
	 *
	 * Params:
	 *     type = the granularity of the deletion, as a #GtkDeleteType
	 *     count = the number of @type units to delete
	 */
	gulong addOnDeleteFromCursor(void delegate(GtkDeleteType, int, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "delete-from-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::icon-press signal is emitted when an activatable icon
	 * is clicked.
	 *
	 * Params:
	 *     iconPos = The position of the clicked icon
	 *     event = the button press event
	 *
	 * Since: 2.16
	 */
	gulong addOnIconPress(void delegate(GtkEntryIconPosition, GdkEventButton*, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "icon-press", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::icon-press signal is emitted when an activatable icon
	 * is clicked.
	 *
	 * Params:
	 *     iconPos = The position of the clicked icon
	 *     event = the button press event
	 *
	 * Since: 2.16
	 */
	gulong addOnIconPress(void delegate(GtkEntryIconPosition, Event, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "icon-press", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::icon-release signal is emitted on the button release from a
	 * mouse click over an activatable icon.
	 *
	 * Params:
	 *     iconPos = The position of the clicked icon
	 *     event = the button release event
	 *
	 * Since: 2.16
	 */
	gulong addOnIconRelease(void delegate(GtkEntryIconPosition, GdkEventButton*, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "icon-release", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::icon-release signal is emitted on the button release from a
	 * mouse click over an activatable icon.
	 *
	 * Params:
	 *     iconPos = The position of the clicked icon
	 *     event = the button release event
	 *
	 * Since: 2.16
	 */
	gulong addOnIconRelease(void delegate(GtkEntryIconPosition, Event, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "icon-release", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::insert-at-cursor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates the insertion of a
	 * fixed string at the cursor.
	 *
	 * This signal has no default bindings.
	 *
	 * Params:
	 *     string_ = the string to insert
	 */
	gulong addOnInsertAtCursor(void delegate(string, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-at-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::insert-emoji signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to present the Emoji chooser for the @entry.
	 *
	 * The default bindings for this signal are Ctrl-. and Ctrl-;
	 *
	 * Since: 3.22.27
	 */
	gulong addOnInsertEmoji(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-emoji", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
	gulong addOnMoveCursor(void delegate(GtkMovementStep, int, bool, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::paste-clipboard signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to paste the contents of the clipboard
	 * into the text view.
	 *
	 * The default bindings for this signal are
	 * Ctrl-v and Shift-Insert.
	 */
	gulong addOnPasteClipboard(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "paste-clipboard", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::populate-popup signal gets emitted before showing the
	 * context menu of the entry.
	 *
	 * If you need to add items to the context menu, connect
	 * to this signal and append your items to the @widget, which
	 * will be a #GtkMenu in this case.
	 *
	 * If #GtkEntry:populate-all is %TRUE, this signal will
	 * also be emitted to populate touch popups. In this case,
	 * @widget will be a different container, e.g. a #GtkToolbar.
	 * The signal handler should not make assumptions about the
	 * type of @widget.
	 *
	 * Params:
	 *     widget = the container that is being populated
	 */
	gulong addOnPopulatePopup(void delegate(Widget, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "populate-popup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * If an input method is used, the typed text will not immediately
	 * be committed to the buffer. So if you are interested in the text,
	 * connect to this signal.
	 *
	 * Params:
	 *     preedit = the current preedit string
	 *
	 * Since: 2.20
	 */
	gulong addOnPreeditChanged(void delegate(string, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preedit-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::toggle-overwrite signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to toggle the overwrite mode of the entry.
	 *
	 * The default bindings for this signal is Insert.
	 */
	gulong addOnToggleOverwrite(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-overwrite", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
