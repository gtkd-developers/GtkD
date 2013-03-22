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

/*
 * Conversion parameters:
 * inFile  = GtkAccelLabel.html
 * outPack = gtk
 * outFile = AccelLabel
 * strct   = GtkAccelLabel
 * realStrct=
 * ctorStrct=
 * clss    = AccelLabel
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_accel_label_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.Closure
 * 	- gtk.Widget
 * structWrap:
 * 	- GClosure* -> Closure
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.AccelLabel;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.Closure;
private import gtk.Widget;



private import gtk.Label;

/**
 * The GtkAccelLabel widget is a subclass of GtkLabel that also displays an
 * accelerator key on the right of the label text, e.g. 'Ctl+S'.
 * It is commonly used in menus to show the keyboard short-cuts for commands.
 *
 * The accelerator key to display is not set explicitly.
 * Instead, the GtkAccelLabel displays the accelerators which have been added to
 * a particular widget. This widget is set by calling
 * gtk_accel_label_set_accel_widget().
 *
 * For example, a GtkMenuItem widget may have an accelerator added to emit the
 * "activate" signal when the 'Ctl+S' key combination is pressed.
 * A GtkAccelLabel is created and added to the GtkMenuItem, and
 * gtk_accel_label_set_accel_widget() is called with the GtkMenuItem as the
 * second argument. The GtkAccelLabel will now display 'Ctl+S' after its label.
 *
 * Note that creating a GtkMenuItem with gtk_menu_item_new_with_label() (or
 * one of the similar functions for GtkCheckMenuItem and GtkRadioMenuItem)
 * automatically adds a GtkAccelLabel to the GtkMenuItem and calls
 * gtk_accel_label_set_accel_widget() to set it up for you.
 *
 * A GtkAccelLabel will only display accelerators which have GTK_ACCEL_VISIBLE
 * set (see GtkAccelFlags).
 * A GtkAccelLabel can display multiple accelerators and even signal names,
 * though it is almost always used to display just one accelerator key.
 *
 * $(DDOC_COMMENT example)
 */
public class AccelLabel : Label
{
	
	/** the main Gtk struct */
	protected GtkAccelLabel* gtkAccelLabel;
	
	
	public GtkAccelLabel* getAccelLabelStruct()
	{
		return gtkAccelLabel;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkAccelLabel = cast(GtkAccelLabel*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkAccelLabel.
	 * Params:
	 * string = the label string. Must be non-NULL.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string string)
	{
		// GtkWidget * gtk_accel_label_new (const gchar *string);
		auto p = gtk_accel_label_new(Str.toStringz(string));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_accel_label_new(Str.toStringz(string))");
		}
		this(cast(GtkAccelLabel*) p);
	}
	
	/**
	 * Sets the closure to be monitored by this accelerator label. The closure
	 * must be connected to an accelerator group; see gtk_accel_group_connect().
	 * Params:
	 * accelClosure = the closure to monitor for accelerator changes.
	 */
	public void setAccelClosure(Closure accelClosure)
	{
		// void gtk_accel_label_set_accel_closure (GtkAccelLabel *accel_label,  GClosure *accel_closure);
		gtk_accel_label_set_accel_closure(gtkAccelLabel, (accelClosure is null) ? null : accelClosure.getClosureStruct());
	}
	
	/**
	 * Fetches the widget monitored by this accelerator label. See
	 * gtk_accel_label_set_accel_widget().
	 * Returns: the object monitored by the accelerator label, or NULL. [transfer none]
	 */
	public Widget getAccelWidget()
	{
		// GtkWidget * gtk_accel_label_get_accel_widget (GtkAccelLabel *accel_label);
		auto p = gtk_accel_label_get_accel_widget(gtkAccelLabel);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Sets the widget to be monitored by this accelerator label.
	 * Params:
	 * accelWidget = the widget to be monitored.
	 */
	public void setAccelWidget(Widget accelWidget)
	{
		// void gtk_accel_label_set_accel_widget (GtkAccelLabel *accel_label,  GtkWidget *accel_widget);
		gtk_accel_label_set_accel_widget(gtkAccelLabel, (accelWidget is null) ? null : accelWidget.getWidgetStruct());
	}
	
	/**
	 * Returns the width needed to display the accelerator key(s).
	 * This is used by menus to align all of the GtkMenuItem widgets, and shouldn't
	 * be needed by applications.
	 * Returns: the width needed to display the accelerator key(s).
	 */
	public uint getAccelWidth()
	{
		// guint gtk_accel_label_get_accel_width (GtkAccelLabel *accel_label);
		return gtk_accel_label_get_accel_width(gtkAccelLabel);
	}
	
	/**
	 * Manually sets a keyval and modifier mask as the accelerator rendered
	 * by accel_label.
	 * If a keyval and modifier are explicitly set then these values are
	 * used regardless of any associated accel closure or widget.
	 * Providing an accelerator_key of 0 removes the manual setting.
	 * Params:
	 * acceleratorKey = a keyval, or 0
	 * acceleratorMods = the modifier mask for the accel
	 * Since 3.6
	 */
	public void setAccel(uint acceleratorKey, GdkModifierType acceleratorMods)
	{
		// void gtk_accel_label_set_accel (GtkAccelLabel *accel_label,  guint accelerator_key,  GdkModifierType accelerator_mods);
		gtk_accel_label_set_accel(gtkAccelLabel, acceleratorKey, acceleratorMods);
	}
	
	/**
	 * Recreates the string representing the accelerator keys.
	 * This should not be needed since the string is automatically updated whenever
	 * accelerators are added or removed from the associated widget.
	 * Returns: always returns FALSE.
	 */
	public int refetch()
	{
		// gboolean gtk_accel_label_refetch (GtkAccelLabel *accel_label);
		return gtk_accel_label_refetch(gtkAccelLabel);
	}
}
