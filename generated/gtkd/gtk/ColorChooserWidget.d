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


module gtk.ColorChooserWidget;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Box;
private import gtk.ColorChooserIF;
private import gtk.ColorChooserT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkColorChooserWidget widget lets the user select a
 * color. By default, the chooser presents a predefined palette
 * of colors, plus a small number of settable custom colors.
 * It is also possible to select a different color with the
 * single-color editor. To enter the single-color editing mode,
 * use the context menu of any color of the palette, or use the
 * '+' button to add a new custom color.
 * 
 * The chooser automatically remembers the last selection, as well
 * as custom colors.
 * 
 * To change the initially selected color, use gtk_color_chooser_set_rgba().
 * To get the selected color use gtk_color_chooser_get_rgba().
 * 
 * The #GtkColorChooserWidget is used in the #GtkColorChooserDialog
 * to provide a dialog for selecting colors.
 * 
 * # CSS names
 * 
 * GtkColorChooserWidget has a single CSS node with name colorchooser.
 *
 * Since: 3.4
 */
public class ColorChooserWidget : Box, ColorChooserIF
{
	/** the main Gtk struct */
	protected GtkColorChooserWidget* gtkColorChooserWidget;

	/** Get the main Gtk struct */
	public GtkColorChooserWidget* getColorChooserWidgetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkColorChooserWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColorChooserWidget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkColorChooserWidget* gtkColorChooserWidget, bool ownedRef = false)
	{
		this.gtkColorChooserWidget = gtkColorChooserWidget;
		super(cast(GtkBox*)gtkColorChooserWidget, ownedRef);
	}

	// add the ColorChooser capabilities
	mixin ColorChooserT!(GtkColorChooserWidget);


	/** */
	public static GType getType()
	{
		return gtk_color_chooser_widget_get_type();
	}

	/**
	 * Creates a new #GtkColorChooserWidget.
	 *
	 * Returns: a new #GtkColorChooserWidget
	 *
	 * Since: 3.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_color_chooser_widget_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkColorChooserWidget*) __p);
	}
}
