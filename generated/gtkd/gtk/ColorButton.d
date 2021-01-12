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


module gtk.ColorButton;

private import gdk.RGBA;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ColorChooserIF;
private import gtk.ColorChooserT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * The #GtkColorButton is a button which displays the currently selected
 * color and allows to open a color selection dialog to change the color.
 * It is suitable widget for selecting a color in a preference dialog.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * colorbutton
 * ╰── button.color
 * ╰── [content]
 * ]|
 * 
 * GtkColorButton has a single CSS node with name colorbutton which
 * contains a button node. To differentiate it from a plain #GtkButton,
 * it gets the .color style class.
 */
public class ColorButton : Widget, ColorChooserIF
{
	/** the main Gtk struct */
	protected GtkColorButton* gtkColorButton;

	/** Get the main Gtk struct */
	public GtkColorButton* getColorButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkColorButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColorButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkColorButton* gtkColorButton, bool ownedRef = false)
	{
		this.gtkColorButton = gtkColorButton;
		super(cast(GtkWidget*)gtkColorButton, ownedRef);
	}

	// add the ColorChooser capabilities
	mixin ColorChooserT!(GtkColorButton);


	/** */
	public static GType getType()
	{
		return gtk_color_button_get_type();
	}

	/**
	 * Creates a new color button.
	 *
	 * This returns a widget in the form of a small button containing
	 * a swatch representing the current selected color. When the button
	 * is clicked, a color-selection dialog will open, allowing the user
	 * to select a color. The swatch will be updated to reflect the new
	 * color when the user finishes.
	 *
	 * Returns: a new color button
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_color_button_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkColorButton*) __p);
	}

	/**
	 * Creates a new color button.
	 *
	 * Params:
	 *     rgba = A #GdkRGBA to set the current color with
	 *
	 * Returns: a new color button
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RGBA rgba)
	{
		auto __p = gtk_color_button_new_with_rgba((rgba is null) ? null : rgba.getRGBAStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_rgba");
		}

		this(cast(GtkColorButton*) __p);
	}

	/**
	 * Gets whether the dialog is modal.
	 *
	 * Returns: %TRUE if the dialog is modal
	 */
	public bool getModal()
	{
		return gtk_color_button_get_modal(gtkColorButton) != 0;
	}

	/**
	 * Gets the title of the color selection dialog.
	 *
	 * Returns: An internal string, do not free the return value
	 */
	public string getTitle()
	{
		return Str.toString(gtk_color_button_get_title(gtkColorButton));
	}

	/**
	 * Sets whether the dialog should be modal.
	 *
	 * Params:
	 *     modal = %TRUE to make the dialog modal
	 */
	public void setModal(bool modal)
	{
		gtk_color_button_set_modal(gtkColorButton, modal);
	}

	/**
	 * Sets the title for the color selection dialog.
	 *
	 * Params:
	 *     title = String containing new window title
	 */
	public void setTitle(string title)
	{
		gtk_color_button_set_title(gtkColorButton, Str.toStringz(title));
	}

	/**
	 * The ::color-set signal is emitted when the user selects a color.
	 * When handling this signal, use gtk_color_chooser_get_rgba() to
	 * find out which color was just selected.
	 *
	 * Note that this signal is only emitted when the user
	 * changes the color. If you need to react to programmatic color changes
	 * as well, use the notify::color signal.
	 */
	gulong addOnColorSet(void delegate(ColorButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "color-set", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
