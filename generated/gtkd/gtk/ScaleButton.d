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


module gtk.ScaleButton;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Adjustment;
private import gtk.Button;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkScaleButton provides a button which pops up a scale widget.
 * This kind of widget is commonly used for volume controls in multimedia
 * applications, and GTK+ provides a #GtkVolumeButton subclass that
 * is tailored for this use case.
 * 
 * # CSS nodes
 * 
 * GtkScaleButton has a single CSS node with name button. To differentiate
 * it from a plain #GtkButton, it gets the .scale style class.
 */
public class ScaleButton : Button, OrientableIF
{
	/** the main Gtk struct */
	protected GtkScaleButton* gtkScaleButton;

	/** Get the main Gtk struct */
	public GtkScaleButton* getScaleButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkScaleButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkScaleButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkScaleButton* gtkScaleButton, bool ownedRef = false)
	{
		this.gtkScaleButton = gtkScaleButton;
		super(cast(GtkButton*)gtkScaleButton, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkScaleButton);


	/** */
	public static GType getType()
	{
		return gtk_scale_button_get_type();
	}

	/**
	 * Creates a #GtkScaleButton, with a range between @min and @max, with
	 * a stepping of @step.
	 *
	 * Params:
	 *     size = a stock icon size (#GtkIconSize)
	 *     min = the minimum value of the scale (usually 0)
	 *     max = the maximum value of the scale (usually 100)
	 *     step = the stepping of value when a scroll-wheel event,
	 *         or up/down arrow event occurs (usually 2)
	 *     icons = a %NULL-terminated
	 *         array of icon names, or %NULL if you want to set the list
	 *         later with gtk_scale_button_set_icons()
	 *
	 * Returns: a new #GtkScaleButton
	 *
	 * Since: 2.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkIconSize size, double min, double max, double step, string[] icons)
	{
		auto p = gtk_scale_button_new(size, min, max, step, Str.toStringzArray(icons));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkScaleButton*) p);
	}

	/**
	 * Gets the #GtkAdjustment associated with the #GtkScaleButton’s scale.
	 * See gtk_range_get_adjustment() for details.
	 *
	 * Returns: the adjustment associated with the scale
	 *
	 * Since: 2.12
	 */
	public Adjustment getAdjustment()
	{
		auto p = gtk_scale_button_get_adjustment(gtkScaleButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Retrieves the minus button of the #GtkScaleButton.
	 *
	 * Returns: the minus button of the #GtkScaleButton as a #GtkButton
	 *
	 * Since: 2.14
	 */
	public Button getMinusButton()
	{
		auto p = gtk_scale_button_get_minus_button(gtkScaleButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Button)(cast(GtkButton*) p);
	}

	/**
	 * Retrieves the plus button of the #GtkScaleButton.
	 *
	 * Returns: the plus button of the #GtkScaleButton as a #GtkButton
	 *
	 * Since: 2.14
	 */
	public Button getPlusButton()
	{
		auto p = gtk_scale_button_get_plus_button(gtkScaleButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Button)(cast(GtkButton*) p);
	}

	/**
	 * Retrieves the popup of the #GtkScaleButton.
	 *
	 * Returns: the popup of the #GtkScaleButton
	 *
	 * Since: 2.14
	 */
	public Widget getPopup()
	{
		auto p = gtk_scale_button_get_popup(gtkScaleButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the current value of the scale button.
	 *
	 * Returns: current value of the scale button
	 *
	 * Since: 2.12
	 */
	public double getValue()
	{
		return gtk_scale_button_get_value(gtkScaleButton);
	}

	/**
	 * Sets the #GtkAdjustment to be used as a model
	 * for the #GtkScaleButton’s scale.
	 * See gtk_range_set_adjustment() for details.
	 *
	 * Params:
	 *     adjustment = a #GtkAdjustment
	 *
	 * Since: 2.12
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		gtk_scale_button_set_adjustment(gtkScaleButton, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/**
	 * Sets the icons to be used by the scale button.
	 * For details, see the #GtkScaleButton:icons property.
	 *
	 * Params:
	 *     icons = a %NULL-terminated array of icon names
	 *
	 * Since: 2.12
	 */
	public void setIcons(string[] icons)
	{
		gtk_scale_button_set_icons(gtkScaleButton, Str.toStringzArray(icons));
	}

	/**
	 * Sets the current value of the scale; if the value is outside
	 * the minimum or maximum range values, it will be clamped to fit
	 * inside them. The scale button emits the #GtkScaleButton::value-changed
	 * signal if the value changes.
	 *
	 * Params:
	 *     value = new value of the scale button
	 *
	 * Since: 2.12
	 */
	public void setValue(double value)
	{
		gtk_scale_button_set_value(gtkScaleButton, value);
	}

	/**
	 * The ::popdown signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to popdown the scale widget.
	 *
	 * The default binding for this signal is Escape.
	 *
	 * Since: 2.12
	 */
	gulong addOnPopdown(void delegate(ScaleButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popdown", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::popup signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to popup the scale widget.
	 *
	 * The default bindings for this signal are Space, Enter and Return.
	 *
	 * Since: 2.12
	 */
	gulong addOnPopup(void delegate(ScaleButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::value-changed signal is emitted when the value field has
	 * changed.
	 *
	 * Params:
	 *     value = the new value
	 *
	 * Since: 2.12
	 */
	gulong addOnValueChanged(void delegate(double, ScaleButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "value-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
