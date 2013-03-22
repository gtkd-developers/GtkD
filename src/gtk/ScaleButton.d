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
 * inFile  = GtkScaleButton.html
 * outPack = gtk
 * outFile = ScaleButton
 * strct   = GtkScaleButton
 * realStrct=
 * ctorStrct=
 * clss    = ScaleButton
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- OrientableIF
 * prefixes:
 * 	- gtk_scale_button_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_scale_button_set_orientation
 * 	- gtk_scale_button_get_orientation
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Adjustment
 * 	- gtk.Widget
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ScaleButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Adjustment;
private import gtk.Widget;
private import gtk.OrientableIF;
private import gtk.OrientableT;



private import gtk.Button;

/**
 * GtkScaleButton provides a button which pops up a scale widget.
 * This kind of widget is commonly used for volume controls in multimedia
 * applications, and GTK+ provides a GtkVolumeButton subclass that
 * is tailored for this use case.
 */
public class ScaleButton : Button, OrientableIF
{
	
	/** the main Gtk struct */
	protected GtkScaleButton* gtkScaleButton;
	
	
	public GtkScaleButton* getScaleButtonStruct()
	{
		return gtkScaleButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkScaleButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkScaleButton* gtkScaleButton)
	{
		super(cast(GtkButton*)gtkScaleButton);
		this.gtkScaleButton = gtkScaleButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkScaleButton = cast(GtkScaleButton*)obj;
	}
	
	// add the Orientable capabilities
	mixin OrientableT!(GtkScaleButton);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ScaleButton)[] onPopdownListeners;
	/**
	 * The ::popdown signal is a
	 * keybinding signal
	 * which gets emitted to popdown the scale widget.
	 * The default binding for this signal is Escape.
	 * Since 2.12
	 */
	void addOnPopdown(void delegate(ScaleButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("popdown" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"popdown",
			cast(GCallback)&callBackPopdown,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["popdown"] = 1;
		}
		onPopdownListeners ~= dlg;
	}
	extern(C) static void callBackPopdown(GtkScaleButton* buttonStruct, ScaleButton _scaleButton)
	{
		foreach ( void delegate(ScaleButton) dlg ; _scaleButton.onPopdownListeners )
		{
			dlg(_scaleButton);
		}
	}
	
	void delegate(ScaleButton)[] onPopupListeners;
	/**
	 * The ::popup signal is a
	 * keybinding signal
	 * which gets emitted to popup the scale widget.
	 * The default bindings for this signal are Space, Enter and Return.
	 * Since 2.12
	 */
	void addOnPopup(void delegate(ScaleButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("popup" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"popup",
			cast(GCallback)&callBackPopup,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["popup"] = 1;
		}
		onPopupListeners ~= dlg;
	}
	extern(C) static void callBackPopup(GtkScaleButton* buttonStruct, ScaleButton _scaleButton)
	{
		foreach ( void delegate(ScaleButton) dlg ; _scaleButton.onPopupListeners )
		{
			dlg(_scaleButton);
		}
	}
	
	void delegate(gdouble, ScaleButton)[] onValueChangedListeners;
	/**
	 * The ::value-changed signal is emitted when the value field has
	 * changed.
	 * Since 2.12
	 */
	void addOnValueChanged(void delegate(gdouble, ScaleButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("value-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"value-changed",
			cast(GCallback)&callBackValueChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["value-changed"] = 1;
		}
		onValueChangedListeners ~= dlg;
	}
	extern(C) static void callBackValueChanged(GtkScaleButton* buttonStruct, gdouble value, ScaleButton _scaleButton)
	{
		foreach ( void delegate(gdouble, ScaleButton) dlg ; _scaleButton.onValueChangedListeners )
		{
			dlg(value, _scaleButton);
		}
	}
	
	
	/**
	 * Creates a GtkScaleButton, with a range between min and max, with
	 * a stepping of step.
	 * Since 2.12
	 * Params:
	 * size = a stock icon size. [type int]
	 * min = the minimum value of the scale (usually 0)
	 * max = the maximum value of the scale (usually 100)
	 * step = the stepping of value when a scroll-wheel event,
	 * or up/down arrow event occurs (usually 2)
	 * icons = a NULL-terminated
	 * array of icon names, or NULL if you want to set the list
	 * later with gtk_scale_button_set_icons(). [allow-none][array zero-terminated=1]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GtkIconSize size, double min, double max, double step, string[] icons)
	{
		// GtkWidget * gtk_scale_button_new (GtkIconSize size,  gdouble min,  gdouble max,  gdouble step,  const gchar **icons);
		auto p = gtk_scale_button_new(size, min, max, step, Str.toStringzArray(icons));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_scale_button_new(size, min, max, step, Str.toStringzArray(icons))");
		}
		this(cast(GtkScaleButton*) p);
	}
	
	/**
	 * Sets the GtkAdjustment to be used as a model
	 * for the GtkScaleButton's scale.
	 * See gtk_range_set_adjustment() for details.
	 * Since 2.12
	 * Params:
	 * adjustment = a GtkAdjustment
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		// void gtk_scale_button_set_adjustment (GtkScaleButton *button,  GtkAdjustment *adjustment);
		gtk_scale_button_set_adjustment(gtkScaleButton, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Sets the icons to be used by the scale button.
	 * For details, see the "icons" property.
	 * Since 2.12
	 * Params:
	 * icons = a NULL-terminated array of icon names. [array zero-terminated=1]
	 */
	public void setIcons(string[] icons)
	{
		// void gtk_scale_button_set_icons (GtkScaleButton *button,  const gchar **icons);
		gtk_scale_button_set_icons(gtkScaleButton, Str.toStringzArray(icons));
	}
	
	/**
	 * Sets the current value of the scale; if the value is outside
	 * the minimum or maximum range values, it will be clamped to fit
	 * inside them. The scale button emits the "value-changed"
	 * signal if the value changes.
	 * Since 2.12
	 * Params:
	 * value = new value of the scale button
	 */
	public void setValue(double value)
	{
		// void gtk_scale_button_set_value (GtkScaleButton *button,  gdouble value);
		gtk_scale_button_set_value(gtkScaleButton, value);
	}
	
	/**
	 * Gets the GtkAdjustment associated with the GtkScaleButton's scale.
	 * See gtk_range_get_adjustment() for details.
	 * Since 2.12
	 * Returns: the adjustment associated with the scale. [transfer none]
	 */
	public Adjustment getAdjustment()
	{
		// GtkAdjustment * gtk_scale_button_get_adjustment (GtkScaleButton *button);
		auto p = gtk_scale_button_get_adjustment(gtkScaleButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Gets the current value of the scale button.
	 * Since 2.12
	 * Returns: current value of the scale button
	 */
	public double getValue()
	{
		// gdouble gtk_scale_button_get_value (GtkScaleButton *button);
		return gtk_scale_button_get_value(gtkScaleButton);
	}
	
	/**
	 * Retrieves the popup of the GtkScaleButton.
	 * Since 2.14
	 * Returns: the popup of the GtkScaleButton. [transfer none]
	 */
	public Widget getPopup()
	{
		// GtkWidget * gtk_scale_button_get_popup (GtkScaleButton *button);
		auto p = gtk_scale_button_get_popup(gtkScaleButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Retrieves the plus button of the GtkScaleButton.
	 * Since 2.14
	 * Returns: the plus button of the GtkScaleButton. [transfer none]
	 */
	public Widget getPlusButton()
	{
		// GtkWidget * gtk_scale_button_get_plus_button (GtkScaleButton *button);
		auto p = gtk_scale_button_get_plus_button(gtkScaleButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Retrieves the minus button of the GtkScaleButton.
	 * Since 2.14
	 * Returns: the minus button of the GtkScaleButton. [transfer none]
	 */
	public Widget getMinusButton()
	{
		// GtkWidget * gtk_scale_button_get_minus_button (GtkScaleButton *button);
		auto p = gtk_scale_button_get_minus_button(gtkScaleButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
}
