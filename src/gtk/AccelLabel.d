/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = AccelLabel
 * strct   = GtkAccelLabel
 * realStrct=
 * clss    = AccelLabel
 * extend  = 
 * prefixes:
 * 	- gtk_accel_label_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gobject.Closure
 * 	- gtk.Widget
 * structWrap:
 * 	- GClosure* -> Closure
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.AccelLabel;

private import gtk.typedefs;

private import lib.gtk;

private import gobject.Closure;private import gtk.Widget;
/**
 * Description
 * The GtkAccelLabel widget is a subclass of GtkLabel that also displays an
 * accelerator key on the right of the label text, e.g. 'Ctl+S'.
 * It is commonly used in menus to show the keyboard short-cuts for commands.
 * The accelerator key to display is not set explicitly.
 * Instead, the GtkAccelLabel displays the accelerators which have been added to
 * a particular widget. This widget is set by calling
 * gtk_accel_label_set_accel_widget().
 * For example, a GtkMenuItem widget may have an accelerator added to emit the
 * "activate" signal when the 'Ctl+S' key combination is pressed.
 * A GtkAccelLabel is created and added to the GtkMenuItem, and
 * gtk_accel_label_set_accel_widget() is called with the GtkMenuItem as the
 * second argument. The GtkAccelLabel will now display 'Ctl+S' after its label.
 * Note that creating a GtkMenuItem with gtk_menu_item_new_with_label() (or
 * one of the similar functions for GtkCheckMenuItem and GtkRadioMenuItem)
 * automatically adds a GtkAccelLabel to the GtkMenuItem and calls
 * gtk_accel_label_set_accel_widget() to set it up for you.
 * A GtkAccelLabel will only display accelerators which have GTK_ACCEL_VISIBLE
 * set (see GtkAccelFlags).
 * A GtkAccelLabel can display multiple accelerators and even signal names,
 * though it is almost always used to display just one accelerator key.
 * Example1.Creating a simple menu item with an accelerator key.
 *  GtkWidget *save_item;
 *  GtkAccelGroup *accel_group;
 *  /+* Create a GtkAccelGroup and add it to the window. +/
 *  accel_group = gtk_accel_group_new ();
 *  gtk_window_add_accel_group (GTK_WINDOW (window), accel_group);
 *  /+* Create the menu item using the convenience function. +/
 *  save_item = gtk_menu_item_new_with_label ("Save");
 *  gtk_widget_show (save_item);
 *  gtk_container_add (GTK_CONTAINER (menu), save_item);
 *  /+* Now add the accelerator to the GtkMenuItem. Note that since we called
 *  gtk_menu_item_new_with_label() to create the GtkMenuItem the
 *  GtkAccelLabel is automatically set up to display the GtkMenuItem
 *  accelerators. We just need to make sure we use GTK_ACCEL_VISIBLE here. +/
 *  gtk_widget_add_accelerator (save_item, "activate", accel_group,
 *  GDK_s, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
 */
private import gtk.Label;
public class AccelLabel : Label
{
	
	/** the main Gtk struct */
	protected GtkAccelLabel* gtkAccelLabel;
	
	
	public GtkAccelLabel* getAccelLabelStruct()
	{
		return gtkAccelLabel;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkAccelLabel;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAccelLabel* gtkAccelLabel)
	{
		super(cast(GtkLabel*)gtkAccelLabel);
		this.gtkAccelLabel = gtkAccelLabel;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkAccelLabel.
	 * string:
	 * the label string. Must be non-NULL.
	 * Returns:
	 * a new GtkAccelLabel.
	 */
	public this (char[] string)
	{
		// GtkWidget* gtk_accel_label_new (const gchar *string);
		this(cast(GtkAccelLabel*)gtk_accel_label_new(std.string.toStringz(string)) );
	}
	
	/**
	 * Sets the closure to be monitored by this accelerator label. The closure
	 * must be connected to an accelerator group; see gtk_accel_group_connect().
	 * accel_label:
	 *  a GtkAccelLabel
	 * accel_closure:
	 *  the closure to monitor for accelerator changes.
	 */
	public void setAccelClosure(Closure accelClosure)
	{
		// void gtk_accel_label_set_accel_closure  (GtkAccelLabel *accel_label,  GClosure *accel_closure);
		gtk_accel_label_set_accel_closure(gtkAccelLabel, accelClosure.getClosureStruct());
	}
	
	/**
	 * Fetches the widget monitored by this accelerator label. See
	 * gtk_accel_label_set_accel_widget().
	 * accel_label:
	 *  a GtkAccelLabel
	 * Returns:
	 *  the object monitored by the accelerator label,
	 *  or NULL.
	 */
	public Widget getAccelWidget()
	{
		// GtkWidget* gtk_accel_label_get_accel_widget  (GtkAccelLabel *accel_label);
		return new Widget( gtk_accel_label_get_accel_widget(gtkAccelLabel) );
	}
	
	/**
	 * Sets the widget to be monitored by this accelerator label.
	 * accel_label:
	 *  a GtkAccelLabel
	 * accel_widget:
	 *  the widget to be monitored.
	 */
	public void setAccelWidget(Widget accelWidget)
	{
		// void gtk_accel_label_set_accel_widget  (GtkAccelLabel *accel_label,  GtkWidget *accel_widget);
		gtk_accel_label_set_accel_widget(gtkAccelLabel, accelWidget.getWidgetStruct());
	}
	
	/**
	 * Returns the width needed to display the accelerator key(s).
	 * This is used by menus to align all of the GtkMenuItem widgets, and shouldn't
	 * be needed by applications.
	 * accel_label:
	 * a GtkAccelLabel.
	 * Returns:
	 * the width needed to display the accelerator key(s).
	 */
	public uint getAccelWidth()
	{
		// guint gtk_accel_label_get_accel_width (GtkAccelLabel *accel_label);
		return gtk_accel_label_get_accel_width(gtkAccelLabel);
	}
	
	/**
	 * Recreates the string representing the accelerator keys.
	 * This should not be needed since the string is automatically updated whenever
	 * accelerators are added or removed from the associated widget.
	 * accel_label:
	 * a GtkAccelLabel.
	 * Returns:
	 * always returns FALSE.
	 * Property Details
	 * The "accel-closure" property
	 *  "accel-closure" GClosure : Read / Write
	 * The closure to be monitored for accelerator changes.
	 */
	public int refetch()
	{
		// gboolean gtk_accel_label_refetch (GtkAccelLabel *accel_label);
		return gtk_accel_label_refetch(gtkAccelLabel);
	}
	
}
