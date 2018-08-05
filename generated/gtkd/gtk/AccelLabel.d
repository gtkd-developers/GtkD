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


module gtk.AccelLabel;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.Closure;
private import gobject.ObjectG;
private import gtk.Label;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkAccelLabel widget is a subclass of #GtkLabel that also displays an
 * accelerator key on the right of the label text, e.g. “Ctrl+S”.
 * It is commonly used in menus to show the keyboard short-cuts for commands.
 * 
 * The accelerator key to display is typically not set explicitly (although it
 * can be, with gtk_accel_label_set_accel()). Instead, the #GtkAccelLabel displays
 * the accelerators which have been added to a particular widget. This widget is
 * set by calling gtk_accel_label_set_accel_widget().
 * 
 * For example, a #GtkMenuItem widget may have an accelerator added to emit
 * the “activate” signal when the “Ctrl+S” key combination is pressed.
 * A #GtkAccelLabel is created and added to the #GtkMenuItem, and
 * gtk_accel_label_set_accel_widget() is called with the #GtkMenuItem as the
 * second argument. The #GtkAccelLabel will now display “Ctrl+S” after its label.
 * 
 * Note that creating a #GtkMenuItem with gtk_menu_item_new_with_label() (or
 * one of the similar functions for #GtkCheckMenuItem and #GtkRadioMenuItem)
 * automatically adds a #GtkAccelLabel to the #GtkMenuItem and calls
 * gtk_accel_label_set_accel_widget() to set it up for you.
 * 
 * A #GtkAccelLabel will only display accelerators which have %GTK_ACCEL_VISIBLE
 * set (see #GtkAccelFlags).
 * A #GtkAccelLabel can display multiple accelerators and even signal names,
 * though it is almost always used to display just one accelerator key.
 * 
 * ## Creating a simple menu item with an accelerator key.
 * 
 * |[<!-- language="C" -->
 * GtkWidget *window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
 * GtkWidget *menu = gtk_menu_new ();
 * GtkWidget *save_item;
 * GtkAccelGroup *accel_group;
 * 
 * // Create a GtkAccelGroup and add it to the window.
 * accel_group = gtk_accel_group_new ();
 * gtk_window_add_accel_group (GTK_WINDOW (window), accel_group);
 * 
 * // Create the menu item using the convenience function.
 * save_item = gtk_menu_item_new_with_label ("Save");
 * gtk_widget_show (save_item);
 * gtk_container_add (GTK_CONTAINER (menu), save_item);
 * 
 * // Now add the accelerator to the GtkMenuItem. Note that since we
 * // called gtk_menu_item_new_with_label() to create the GtkMenuItem
 * // the GtkAccelLabel is automatically set up to display the
 * // GtkMenuItem accelerators. We just need to make sure we use
 * // GTK_ACCEL_VISIBLE here.
 * gtk_widget_add_accelerator (save_item, "activate", accel_group,
 * GDK_KEY_s, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
 * ]|
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * label
 * ╰── accelerator
 * ]|
 * 
 * Like #GtkLabel, GtkAccelLabel has a main CSS node with the name label.
 * It adds a subnode with name accelerator.
 */
public class AccelLabel : Label
{
	/** the main Gtk struct */
	protected GtkAccelLabel* gtkAccelLabel;

	/** Get the main Gtk struct */
	public GtkAccelLabel* getAccelLabelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAccelLabel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAccelLabel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAccelLabel* gtkAccelLabel, bool ownedRef = false)
	{
		this.gtkAccelLabel = gtkAccelLabel;
		super(cast(GtkLabel*)gtkAccelLabel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_accel_label_get_type();
	}

	/**
	 * Creates a new #GtkAccelLabel.
	 *
	 * Params:
	 *     string_ = the label string. Must be non-%NULL.
	 *
	 * Returns: a new #GtkAccelLabel.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_)
	{
		auto p = gtk_accel_label_new(Str.toStringz(string_));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAccelLabel*) p);
	}

	/**
	 * Gets the keyval and modifier mask set with
	 * gtk_accel_label_set_accel().
	 *
	 * Params:
	 *     acceleratorKey = return location for the keyval
	 *     acceleratorMods = return location for the modifier mask
	 *
	 * Since: 3.12
	 */
	public void getAccel(out uint acceleratorKey, out GdkModifierType acceleratorMods)
	{
		gtk_accel_label_get_accel(gtkAccelLabel, &acceleratorKey, &acceleratorMods);
	}

	/**
	 * Fetches the widget monitored by this accelerator label. See
	 * gtk_accel_label_set_accel_widget().
	 *
	 * Returns: the object monitored by the accelerator label, or %NULL.
	 */
	public Widget getAccelWidget()
	{
		auto p = gtk_accel_label_get_accel_widget(gtkAccelLabel);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns the width needed to display the accelerator key(s).
	 * This is used by menus to align all of the #GtkMenuItem widgets, and shouldn't
	 * be needed by applications.
	 *
	 * Returns: the width needed to display the accelerator key(s).
	 */
	public uint getAccelWidth()
	{
		return gtk_accel_label_get_accel_width(gtkAccelLabel);
	}

	/**
	 * Recreates the string representing the accelerator keys.
	 * This should not be needed since the string is automatically updated whenever
	 * accelerators are added or removed from the associated widget.
	 *
	 * Returns: always returns %FALSE.
	 */
	public bool refetch()
	{
		return gtk_accel_label_refetch(gtkAccelLabel) != 0;
	}

	/**
	 * Manually sets a keyval and modifier mask as the accelerator rendered
	 * by @accel_label.
	 *
	 * If a keyval and modifier are explicitly set then these values are
	 * used regardless of any associated accel closure or widget.
	 *
	 * Providing an @accelerator_key of 0 removes the manual setting.
	 *
	 * Params:
	 *     acceleratorKey = a keyval, or 0
	 *     acceleratorMods = the modifier mask for the accel
	 *
	 * Since: 3.6
	 */
	public void setAccel(uint acceleratorKey, GdkModifierType acceleratorMods)
	{
		gtk_accel_label_set_accel(gtkAccelLabel, acceleratorKey, acceleratorMods);
	}

	/**
	 * Sets the closure to be monitored by this accelerator label. The closure
	 * must be connected to an accelerator group; see gtk_accel_group_connect().
	 * Passing %NULL for @accel_closure will dissociate @accel_label from its
	 * current closure, if any.
	 *
	 * Params:
	 *     accelClosure = the closure to monitor for accelerator changes,
	 *         or %NULL
	 */
	public void setAccelClosure(Closure accelClosure)
	{
		gtk_accel_label_set_accel_closure(gtkAccelLabel, (accelClosure is null) ? null : accelClosure.getClosureStruct());
	}

	/**
	 * Sets the widget to be monitored by this accelerator label. Passing %NULL for
	 * @accel_widget will dissociate @accel_label from its current widget, if any.
	 *
	 * Params:
	 *     accelWidget = the widget to be monitored, or %NULL
	 */
	public void setAccelWidget(Widget accelWidget)
	{
		gtk_accel_label_set_accel_widget(gtkAccelLabel, (accelWidget is null) ? null : accelWidget.getWidgetStruct());
	}
}
