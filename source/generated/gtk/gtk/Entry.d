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

private import gdk.ContentProvider;
private import gdk.PaintableIF;
private import gio.IconIF;
private import gio.MenuModel;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellEditableIF;
private import gtk.CellEditableT;
private import gtk.EditableIF;
private import gtk.EditableT;
private import gtk.EntryBuffer;
private import gtk.EntryCompletion;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import pango.PgAttributeList;
private import pango.PgTabArray;
private import std.algorithm;


/**
 * `GtkEntry` is a single line text entry widget.
 * 
 * ![An example GtkEntry](entry.png)
 * 
 * A fairly large set of key bindings are supported by default. If the
 * entered text is longer than the allocation of the widget, the widget
 * will scroll so that the cursor position is visible.
 * 
 * When using an entry for passwords and other sensitive information, it
 * can be put into “password mode” using [method@Gtk.Entry.set_visibility].
 * In this mode, entered text is displayed using a “invisible” character.
 * By default, GTK picks the best invisible character that is available
 * in the current font, but it can be changed with
 * [method@Gtk.Entry.set_invisible_char].
 * 
 * `GtkEntry` has the ability to display progress or activity
 * information behind the text. To make an entry display such information,
 * use [method@Gtk.Entry.set_progress_fraction] or
 * [method@Gtk.Entry.set_progress_pulse_step].
 * 
 * Additionally, `GtkEntry` can show icons at either side of the entry.
 * These icons can be activatable by clicking, can be set up as drag source
 * and can have tooltips. To add an icon, use
 * [method@Gtk.Entry.set_icon_from_gicon] or one of the various other functions
 * that set an icon from an icon name or a paintable. To trigger an action when
 * the user clicks an icon, connect to the [signal@Gtk.Entry::icon-press] signal.
 * To allow DND operations from an icon, use
 * [method@Gtk.Entry.set_icon_drag_source]. To set a tooltip on an icon, use
 * [method@Gtk.Entry.set_icon_tooltip_text] or the corresponding function
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
 * ```
 * entry[.flat][.warning][.error]
 * ├── text[.readonly]
 * ├── image.left
 * ├── image.right
 * ╰── [progress[.pulse]]
 * ```
 * 
 * `GtkEntry` has a main node with the name entry. Depending on the properties
 * of the entry, the style classes .read-only and .flat may appear. The style
 * classes .warning and .error may also be used with entries.
 * 
 * When the entry shows icons, it adds subnodes with the name image and the
 * style class .left or .right, depending on where the icon appears.
 * 
 * When the entry shows progress, it adds a subnode with the name progress.
 * The node has the style class .pulse when the shown progress is pulsing.
 * 
 * For all the subnodes added to the text node in various situations,
 * see [class@Gtk.Text].
 * 
 * # GtkEntry as GtkBuildable
 * 
 * The `GtkEntry` implementation of the `GtkBuildable` interface supports a
 * custom <attributes> element, which supports any number of <attribute>
 * elements. The <attribute> element has attributes named “name“, “value“,
 * “start“ and “end“ and allows you to specify `PangoAttribute` values for
 * this label.
 * 
 * An example of a UI definition fragment specifying Pango attributes:
 * ```xml
 * <object class="GtkEntry">
 * <attributes>
 * <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
 * <attribute name="background" value="red" start="5" end="10"/>
 * </attributes>
 * </object>
 * ```
 * 
 * The start and end attributes specify the range of characters to which the
 * Pango attribute applies. If start and end are not specified, the attribute
 * is applied to the whole text. Note that specifying ranges does not make much
 * sense with translatable attributes. Use markup embedded in the translatable
 * content instead.
 * 
 * # Accessibility
 * 
 * `GtkEntry` uses the %GTK_ACCESSIBLE_ROLE_TEXT_BOX role.
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
	public static GType getType()
	{
		return gtk_entry_get_type();
	}

	/**
	 * Creates a new entry.
	 *
	 * Returns: a new `GtkEntry`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_entry_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEntry*) __p);
	}

	/**
	 * Creates a new entry with the specified text buffer.
	 *
	 * Params:
	 *     buffer = The buffer to use for the new `GtkEntry`.
	 *
	 * Returns: a new `GtkEntry`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(EntryBuffer buffer)
	{
		auto __p = gtk_entry_new_with_buffer((buffer is null) ? null : buffer.getEntryBufferStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_buffer");
		}

		this(cast(GtkEntry*) __p);
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
	 * See also: [property@Gtk.Editable:xalign]
	 *
	 * Returns: the alignment
	 */
	public float getAlignment()
	{
		return gtk_entry_get_alignment(gtkEntry);
	}

	/**
	 * Gets the attribute list of the `GtkEntry`.
	 *
	 * See [method@Gtk.Entry.set_attributes].
	 *
	 * Returns: the attribute list
	 */
	public PgAttributeList getAttributes()
	{
		auto __p = gtk_entry_get_attributes(gtkEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p);
	}

	/**
	 * Get the `GtkEntryBuffer` object which holds the text for
	 * this widget.
	 *
	 * Returns: A `GtkEntryBuffer` object.
	 */
	public EntryBuffer getBuffer()
	{
		auto __p = gtk_entry_get_buffer(gtkEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(EntryBuffer)(cast(GtkEntryBuffer*) __p);
	}

	/**
	 * Returns the auxiliary completion object currently
	 * in use by @entry.
	 *
	 * Returns: The auxiliary
	 *     completion object currently in use by @entry
	 */
	public EntryCompletion getCompletion()
	{
		auto __p = gtk_entry_get_completion(gtkEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(EntryCompletion)(cast(GtkEntryCompletion*) __p);
	}

	/**
	 * Returns the index of the icon which is the source of the
	 * current  DND operation, or -1.
	 *
	 * Returns: index of the icon which is the source of the
	 *     current DND operation, or -1.
	 */
	public int getCurrentIconDragSource()
	{
		return gtk_entry_get_current_icon_drag_source(gtkEntry);
	}

	/**
	 * Gets the menu model set with gtk_entry_set_extra_menu().
	 *
	 * Returns: the menu model
	 */
	public MenuModel getExtraMenu()
	{
		auto __p = gtk_entry_get_extra_menu(gtkEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p);
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
	 */
	public bool getIconActivatable(GtkEntryIconPosition iconPos)
	{
		return gtk_entry_get_icon_activatable(gtkEntry, iconPos) != 0;
	}

	/**
	 * Gets the area where entry’s icon at @icon_pos is drawn.
	 *
	 * This function is useful when drawing something to the
	 * entry in a draw callback.
	 *
	 * If the entry is not realized or has no icon at the given
	 * position, @icon_area is filled with zeros. Otherwise,
	 * @icon_area will be filled with the icon's allocation,
	 * relative to @entry's allocation.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *     iconArea = Return location for the icon’s area
	 */
	public void getIconArea(GtkEntryIconPosition iconPos, out GdkRectangle iconArea)
	{
		gtk_entry_get_icon_area(gtkEntry, iconPos, &iconArea);
	}

	/**
	 * Finds the icon at the given position and return its index.
	 *
	 * The position’s coordinates are relative to the @entry’s
	 * top left corner. If @x, @y doesn’t lie inside an icon,
	 * -1 is returned. This function is intended for use in a
	 * [signal@Gtk.Widget::query-tooltip] signal handler.
	 *
	 * Params:
	 *     x = the x coordinate of the position to find, relative to @entry
	 *     y = the y coordinate of the position to find, relative to @entry
	 *
	 * Returns: the index of the icon at the given position, or -1
	 */
	public int getIconAtPos(int x, int y)
	{
		return gtk_entry_get_icon_at_pos(gtkEntry, x, y);
	}

	/**
	 * Retrieves the `GIcon` used for the icon.
	 *
	 * %NULL will be returned if there is no icon or if the icon was
	 * set by some other method (e.g., by `GdkPaintable` or icon name).
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: A `GIcon`
	 */
	public IconIF getIconGicon(GtkEntryIconPosition iconPos)
	{
		auto __p = gtk_entry_get_icon_gicon(gtkEntry, iconPos);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p);
	}

	/**
	 * Retrieves the icon name used for the icon.
	 *
	 * %NULL is returned if there is no icon or if the icon was set
	 * by some other method (e.g., by `GdkPaintable` or gicon).
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: An icon name
	 */
	public string getIconName(GtkEntryIconPosition iconPos)
	{
		return Str.toString(gtk_entry_get_icon_name(gtkEntry, iconPos));
	}

	/**
	 * Retrieves the `GdkPaintable` used for the icon.
	 *
	 * If no `GdkPaintable` was used for the icon, %NULL is returned.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: A `GdkPaintable`
	 *     if no icon is set for this position or the icon set is not
	 *     a `GdkPaintable`.
	 */
	public PaintableIF getIconPaintable(GtkEntryIconPosition iconPos)
	{
		auto __p = gtk_entry_get_icon_paintable(gtkEntry, iconPos);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p);
	}

	/**
	 * Returns whether the icon appears sensitive or insensitive.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: %TRUE if the icon is sensitive.
	 */
	public bool getIconSensitive(GtkEntryIconPosition iconPos)
	{
		return gtk_entry_get_icon_sensitive(gtkEntry, iconPos) != 0;
	}

	/**
	 * Gets the type of representation being used by the icon
	 * to store image data.
	 *
	 * If the icon has no image data, the return value will
	 * be %GTK_IMAGE_EMPTY.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *
	 * Returns: image representation being used
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
	 * Returns: the tooltip text
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
	 * Returns: the tooltip text
	 */
	public string getIconTooltipText(GtkEntryIconPosition iconPos)
	{
		auto retStr = gtk_entry_get_icon_tooltip_text(gtkEntry, iconPos);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the input hints of this `GtkEntry`.
	 *
	 * Returns: the input hints
	 */
	public GtkInputHints getInputHints()
	{
		return gtk_entry_get_input_hints(gtkEntry);
	}

	/**
	 * Gets the input purpose of the `GtkEntry`.
	 *
	 * Returns: the input purpose
	 */
	public GtkInputPurpose getInputPurpose()
	{
		return gtk_entry_get_input_purpose(gtkEntry);
	}

	/**
	 * Retrieves the character displayed in place of the actual text
	 * in “password mode”.
	 *
	 * Returns: the current invisible char, or 0, if the entry does not
	 *     show invisible text at all.
	 */
	public dchar getInvisibleChar()
	{
		return gtk_entry_get_invisible_char(gtkEntry);
	}

	/**
	 * Retrieves the maximum allowed length of the text in @entry.
	 *
	 * See [method@Gtk.Entry.set_max_length].
	 *
	 * Returns: the maximum allowed number of characters
	 *     in `GtkEntry`, or 0 if there is no maximum.
	 */
	public int getMaxLength()
	{
		return gtk_entry_get_max_length(gtkEntry);
	}

	/**
	 * Gets whether the `GtkEntry` is in overwrite mode.
	 *
	 * Returns: whether the text is overwritten when typing.
	 */
	public bool getOverwriteMode()
	{
		return gtk_entry_get_overwrite_mode(gtkEntry) != 0;
	}

	/**
	 * Retrieves the text that will be displayed when @entry
	 * is empty and unfocused
	 *
	 * Returns: a pointer to the
	 *     placeholder text as a string. This string points to
	 *     internally allocated storage in the widget and must
	 *     not be freed, modified or stored. If no placeholder
	 *     text has been set, %NULL will be returned.
	 */
	public string getPlaceholderText()
	{
		return Str.toString(gtk_entry_get_placeholder_text(gtkEntry));
	}

	/**
	 * Returns the current fraction of the task that’s been completed.
	 *
	 * See [method@Gtk.Entry.set_progress_fraction].
	 *
	 * Returns: a fraction from 0.0 to 1.0
	 */
	public double getProgressFraction()
	{
		return gtk_entry_get_progress_fraction(gtkEntry);
	}

	/**
	 * Retrieves the pulse step set with
	 * gtk_entry_set_progress_pulse_step().
	 *
	 * Returns: a fraction from 0.0 to 1.0
	 */
	public double getProgressPulseStep()
	{
		return gtk_entry_get_progress_pulse_step(gtkEntry);
	}

	/**
	 * Gets the tabstops of the `GtkEntry.
	 *
	 * See [method@Gtk.Entry.set_tabs].
	 *
	 * Returns: the tabstops
	 */
	public PgTabArray getTabs()
	{
		auto __p = gtk_entry_get_tabs(gtkEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) __p);
	}

	/**
	 * Retrieves the current length of the text in @entry.
	 *
	 * This is equivalent to getting @entry's `GtkEntryBuffer`
	 * and calling [method@Gtk.EntryBuffer.get_length] on it.
	 *
	 * Returns: the current number of characters
	 *     in `GtkEntry`, or 0 if there are none.
	 */
	public ushort getTextLength()
	{
		return gtk_entry_get_text_length(gtkEntry);
	}

	/**
	 * Retrieves whether the text in @entry is visible.
	 *
	 * See [method@Gtk.Entry.set_visibility].
	 *
	 * Returns: %TRUE if the text is currently visible
	 */
	public bool getVisibility()
	{
		return gtk_entry_get_visibility(gtkEntry) != 0;
	}

	/**
	 * Causes @entry to have keyboard focus.
	 *
	 * It behaves like [method@Gtk.Widget.grab_focus], except that it doesn't
	 * select the contents of the entry. You only want to call this on some
	 * special entries which the user usually doesn't want to replace all text
	 * in, such as search-as-you-type entries.
	 *
	 * Returns: %TRUE if focus is now inside @self
	 */
	public bool grabFocusWithoutSelecting()
	{
		return gtk_entry_grab_focus_without_selecting(gtkEntry) != 0;
	}

	/**
	 * Indicates that some progress is made, but you don’t
	 * know how much.
	 *
	 * Causes the entry’s progress indicator to enter “activity
	 * mode”, where a block bounces back and forth. Each call to
	 * gtk_entry_progress_pulse() causes the block to move by a
	 * little bit (the amount of movement per pulse is determined
	 * by [method@Gtk.Entry.set_progress_pulse_step]).
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
	 */
	public void resetImContext()
	{
		gtk_entry_reset_im_context(gtkEntry);
	}

	/**
	 * Sets whether pressing Enter in the @entry will activate the default
	 * widget for the window containing the entry.
	 *
	 * This usually means that the dialog containing the entry will be closed,
	 * since the default widget is usually one of the dialog buttons.
	 *
	 * Params:
	 *     setting = %TRUE to activate window’s default widget on Enter keypress
	 */
	public void setActivatesDefault(bool setting)
	{
		gtk_entry_set_activates_default(gtkEntry, setting);
	}

	/**
	 * Sets the alignment for the contents of the entry.
	 *
	 * This controls the horizontal positioning of the contents when
	 * the displayed text is shorter than the width of the entry.
	 *
	 * See also: [property@Gtk.Editable:xalign]
	 *
	 * Params:
	 *     xalign = The horizontal alignment, from 0 (left) to 1 (right).
	 *         Reversed for RTL layouts
	 */
	public void setAlignment(float xalign)
	{
		gtk_entry_set_alignment(gtkEntry, xalign);
	}

	/**
	 * Sets a `PangoAttrList`.
	 *
	 * The attributes in the list are applied to the entry text.
	 *
	 * Since the attributes will be applies to text that changes
	 * as the user types, it makes most sense to use attributes
	 * with unlimited extent.
	 *
	 * Params:
	 *     attrs = a `PangoAttrList`
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		gtk_entry_set_attributes(gtkEntry, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}

	/**
	 * Set the `GtkEntryBuffer` object which holds the text for
	 * this widget.
	 *
	 * Params:
	 *     buffer = a `GtkEntryBuffer`
	 */
	public void setBuffer(EntryBuffer buffer)
	{
		gtk_entry_set_buffer(gtkEntry, (buffer is null) ? null : buffer.getEntryBufferStruct());
	}

	/**
	 * Sets @completion to be the auxiliary completion object
	 * to use with @entry.
	 *
	 * All further configuration of the completion mechanism is
	 * done on @completion using the `GtkEntryCompletion` API.
	 * Completion is disabled if @completion is set to %NULL.
	 *
	 * Params:
	 *     completion = The `GtkEntryCompletion`
	 */
	public void setCompletion(EntryCompletion completion)
	{
		gtk_entry_set_completion(gtkEntry, (completion is null) ? null : completion.getEntryCompletionStruct());
	}

	/**
	 * Sets a menu model to add when constructing
	 * the context menu for @entry.
	 *
	 * Params:
	 *     model = a `GMenuModel`
	 */
	public void setExtraMenu(MenuModel model)
	{
		gtk_entry_set_extra_menu(gtkEntry, (model is null) ? null : model.getMenuModelStruct());
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
	 */
	public void setIconActivatable(GtkEntryIconPosition iconPos, bool activatable)
	{
		gtk_entry_set_icon_activatable(gtkEntry, iconPos, activatable);
	}

	/**
	 * Sets up the icon at the given position as drag source.
	 *
	 * This makes it so that GTK will start a drag
	 * operation when the user clicks and drags the icon.
	 *
	 * Params:
	 *     iconPos = icon position
	 *     provider = a `GdkContentProvider`
	 *     actions = a bitmask of the allowed drag actions
	 */
	public void setIconDragSource(GtkEntryIconPosition iconPos, ContentProvider provider, GdkDragAction actions)
	{
		gtk_entry_set_icon_drag_source(gtkEntry, iconPos, (provider is null) ? null : provider.getContentProviderStruct(), actions);
	}

	/**
	 * Sets the icon shown in the entry at the specified position
	 * from the current icon theme.
	 *
	 * If the icon isn’t known, a “broken image” icon will be
	 * displayed instead.
	 *
	 * If @icon is %NULL, no icon will be shown in the
	 * specified position.
	 *
	 * Params:
	 *     iconPos = The position at which to set the icon
	 *     icon = The icon to set
	 */
	public void setIconFromGicon(GtkEntryIconPosition iconPos, IconIF icon)
	{
		gtk_entry_set_icon_from_gicon(gtkEntry, iconPos, (icon is null) ? null : icon.getIconStruct());
	}

	/**
	 * Sets the icon shown in the entry at the specified position
	 * from the current icon theme.
	 *
	 * If the icon name isn’t known, a “broken image” icon will be
	 * displayed instead.
	 *
	 * If @icon_name is %NULL, no icon will be shown in the
	 * specified position.
	 *
	 * Params:
	 *     iconPos = The position at which to set the icon
	 *     iconName = An icon name
	 */
	public void setIconFromIconName(GtkEntryIconPosition iconPos, string iconName)
	{
		gtk_entry_set_icon_from_icon_name(gtkEntry, iconPos, Str.toStringz(iconName));
	}

	/**
	 * Sets the icon shown in the specified position using a `GdkPaintable`.
	 *
	 * If @paintable is %NULL, no icon will be shown in the specified position.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *     paintable = A `GdkPaintable`
	 */
	public void setIconFromPaintable(GtkEntryIconPosition iconPos, PaintableIF paintable)
	{
		gtk_entry_set_icon_from_paintable(gtkEntry, iconPos, (paintable is null) ? null : paintable.getPaintableStruct());
	}

	/**
	 * Sets the sensitivity for the specified icon.
	 *
	 * Params:
	 *     iconPos = Icon position
	 *     sensitive = Specifies whether the icon should appear
	 *         sensitive or insensitive
	 */
	public void setIconSensitive(GtkEntryIconPosition iconPos, bool sensitive)
	{
		gtk_entry_set_icon_sensitive(gtkEntry, iconPos, sensitive);
	}

	/**
	 * Sets @tooltip as the contents of the tooltip for the icon at
	 * the specified position.
	 *
	 * @tooltip is assumed to be marked up with Pango Markup.
	 *
	 * Use %NULL for @tooltip to remove an existing tooltip.
	 *
	 * See also [method@Gtk.Widget.set_tooltip_markup] and
	 * [method@Gtk.Entry.set_icon_tooltip_text].
	 *
	 * Params:
	 *     iconPos = the icon position
	 *     tooltip = the contents of the tooltip for the icon
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
	 * See also [method@Gtk.Widget.set_tooltip_text] and
	 * [method@Gtk.Entry.set_icon_tooltip_markup].
	 *
	 * If you unset the widget tooltip via
	 * [method@Gtk.Widget.set_tooltip_text] or
	 * [method@Gtk.Widget.set_tooltip_markup], this sets
	 * [property@Gtk.Widget:has-tooltip] to %FALSE, which suppresses
	 * icon tooltips too. You can resolve this by then calling
	 * [method@Gtk.Widget.set_has_tooltip] to set
	 * [property@Gtk.Widget:has-tooltip] back to %TRUE, or
	 * setting at least one non-empty tooltip on any icon
	 * achieves the same result.
	 *
	 * Params:
	 *     iconPos = the icon position
	 *     tooltip = the contents of the tooltip for the icon
	 */
	public void setIconTooltipText(GtkEntryIconPosition iconPos, string tooltip)
	{
		gtk_entry_set_icon_tooltip_text(gtkEntry, iconPos, Str.toStringz(tooltip));
	}

	/**
	 * Set additional hints which allow input methods to
	 * fine-tune their behavior.
	 *
	 * Params:
	 *     hints = the hints
	 */
	public void setInputHints(GtkInputHints hints)
	{
		gtk_entry_set_input_hints(gtkEntry, hints);
	}

	/**
	 * Sets the input purpose which can be used by input methods
	 * to adjust their behavior.
	 *
	 * Params:
	 *     purpose = the purpose
	 */
	public void setInputPurpose(GtkInputPurpose purpose)
	{
		gtk_entry_set_input_purpose(gtkEntry, purpose);
	}

	/**
	 * Sets the character to use in place of the actual text
	 * in “password mode”.
	 *
	 * See [method@Gtk.Entry.set_visibility] for how to enable
	 * “password mode”.
	 *
	 * By default, GTK picks the best invisible char available in
	 * the current font. If you set the invisible char to 0, then
	 * the user will get no feedback at all; there will be no text
	 * on the screen as they type.
	 *
	 * Params:
	 *     ch = a Unicode character
	 */
	public void setInvisibleChar(dchar ch)
	{
		gtk_entry_set_invisible_char(gtkEntry, ch);
	}

	/**
	 * Sets the maximum allowed length of the contents of the widget.
	 *
	 * If the current contents are longer than the given length, then
	 * they will be truncated to fit. The length is is in characters.
	 *
	 * This is equivalent to getting @entry's `GtkEntryBuffer` and
	 * calling [method@Gtk.EntryBuffer.set_max_length] on it.
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
	 * Sets whether the text is overwritten when typing in the `GtkEntry`.
	 *
	 * Params:
	 *     overwrite = new value
	 */
	public void setOverwriteMode(bool overwrite)
	{
		gtk_entry_set_overwrite_mode(gtkEntry, overwrite);
	}

	/**
	 * Sets text to be displayed in @entry when it is empty.
	 *
	 * This can be used to give a visual hint of the expected
	 * contents of the `GtkEntry`.
	 *
	 * Params:
	 *     text = a string to be displayed when @entry is empty and unfocused
	 */
	public void setPlaceholderText(string text)
	{
		gtk_entry_set_placeholder_text(gtkEntry, Str.toStringz(text));
	}

	/**
	 * Causes the entry’s progress indicator to “fill in” the given
	 * fraction of the bar.
	 *
	 * The fraction should be between 0.0 and 1.0, inclusive.
	 *
	 * Params:
	 *     fraction = fraction of the task that’s been completed
	 */
	public void setProgressFraction(double fraction)
	{
		gtk_entry_set_progress_fraction(gtkEntry, fraction);
	}

	/**
	 * Sets the fraction of total entry width to move the progress
	 * bouncing block for each pulse.
	 *
	 * Use [method@Gtk.Entry.progress_pulse] to pulse
	 * the progress.
	 *
	 * Params:
	 *     fraction = fraction between 0.0 and 1.0
	 */
	public void setProgressPulseStep(double fraction)
	{
		gtk_entry_set_progress_pulse_step(gtkEntry, fraction);
	}

	/**
	 * Sets a `PangoTabArray`.
	 *
	 * The tabstops in the array are applied to the entry text.
	 *
	 * Params:
	 *     tabs = a `PangoTabArray`
	 */
	public void setTabs(PgTabArray tabs)
	{
		gtk_entry_set_tabs(gtkEntry, (tabs is null) ? null : tabs.getPgTabArrayStruct());
	}

	/**
	 * Sets whether the contents of the entry are visible or not.
	 *
	 * When visibility is set to %FALSE, characters are displayed
	 * as the invisible char, and will also appear that way when
	 * the text in the entry widget is copied elsewhere.
	 *
	 * By default, GTK picks the best invisible character available
	 * in the current font, but it can be changed with
	 * [method@Gtk.Entry.set_invisible_char].
	 *
	 * Note that you probably want to set [property@Gtk.Entry:input-purpose]
	 * to %GTK_INPUT_PURPOSE_PASSWORD or %GTK_INPUT_PURPOSE_PIN to
	 * inform input methods about the purpose of this entry,
	 * in addition to setting visibility to %FALSE.
	 *
	 * Params:
	 *     visible = %TRUE if the contents of the entry are displayed as plaintext
	 */
	public void setVisibility(bool visible)
	{
		gtk_entry_set_visibility(gtkEntry, visible);
	}

	/**
	 * Unsets the invisible char, so that the default invisible char
	 * is used again. See [method@Gtk.Entry.set_invisible_char].
	 */
	public void unsetInvisibleChar()
	{
		gtk_entry_unset_invisible_char(gtkEntry);
	}

	/**
	 * Emitted when the entry is activated.
	 *
	 * The keybindings for this signal are all forms of the Enter key.
	 */
	gulong addOnActivate(void delegate(Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when an activatable icon is clicked.
	 *
	 * Params:
	 *     iconPos = The position of the clicked icon
	 */
	gulong addOnIconPress(void delegate(GtkEntryIconPosition, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "icon-press", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted on the button release from a mouse click
	 * over an activatable icon.
	 *
	 * Params:
	 *     iconPos = The position of the clicked icon
	 */
	gulong addOnIconRelease(void delegate(GtkEntryIconPosition, Entry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "icon-release", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
