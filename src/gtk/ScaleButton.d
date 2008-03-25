/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_scale_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.Adjustment
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

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Widget;
private import gtk.Adjustment;



private import gtk.Button;

/**
 * Description
 * GtkScaleButton provides a button which pops up a scale widget.
 * This kind of widget is commonly used for volume controls in multimedia
 * applications, and GTK+ provides a GtkVolumeButton subclass that
 * is tailored for this use case.
 */
public class ScaleButton : Button
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
		if(gtkScaleButton is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkScaleButton passed to constructor.");
			else return;
		}
		super(cast(GtkButton*)gtkScaleButton);
		this.gtkScaleButton = gtkScaleButton;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
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
	extern(C) static void callBackPopdown(GtkScaleButton* buttonStruct, ScaleButton scaleButton)
	{
		bool consumed = false;
		
		foreach ( void delegate(ScaleButton) dlg ; scaleButton.onPopdownListeners )
		{
			dlg(scaleButton);
		}
		
		return consumed;
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
	extern(C) static void callBackPopup(GtkScaleButton* buttonStruct, ScaleButton scaleButton)
	{
		bool consumed = false;
		
		foreach ( void delegate(ScaleButton) dlg ; scaleButton.onPopupListeners )
		{
			dlg(scaleButton);
		}
		
		return consumed;
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
	extern(C) static void callBackValueChanged(GtkScaleButton* buttonStruct, gdouble value, ScaleButton scaleButton)
	{
		bool consumed = false;
		
		foreach ( void delegate(gdouble, ScaleButton) dlg ; scaleButton.onValueChangedListeners )
		{
			dlg(value, scaleButton);
		}
		
		return consumed;
	}
	
	
	/**
	 * Creates a GtkScaleButton, with a range between min and max, with
	 * a stepping of step.
	 * Since 2.12
	 * Params:
	 * size =  a stock icon size
	 * min =  the minimum value of the scale (usually 0)
	 * max =  the maximum value of the scale (usually 100)
	 * step =  the stepping of value when a scroll-wheel event,
	 *  or up/down arrow event occurs (usually 2)
	 * icons =  a NULL-terminated array of icon names, or NULL if
	 *  you want to set the list later with gtk_scale_button_set_icons()
	 */
	public this (GtkIconSize size, double min, double max, double step, char** icons)
	{
		// GtkWidget* gtk_scale_button_new (GtkIconSize size,  gdouble min,  gdouble max,  gdouble step,  const gchar **icons);
		auto p = gtk_scale_button_new(size, min, max, step, icons);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkScaleButton*) p);
	}
	
	/**
	 * Sets the GtkAdjustment to be used as a model
	 * for the GtkScaleButton's scale.
	 * See gtk_range_set_adjustment() for details.
	 * Since 2.12
	 * Params:
	 * adjustment =  a GtkAdjustment
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
	 * icons =  a NULL-terminated array of icon names
	 */
	public void setIcons(char** icons)
	{
		// void gtk_scale_button_set_icons (GtkScaleButton *button,  const gchar **icons);
		gtk_scale_button_set_icons(gtkScaleButton, icons);
	}
	
	/**
	 * Sets the current value of the scale; if the value is outside
	 * the minimum or maximum range values, it will be clamped to fit
	 * inside them. The scale button emits the "value-changed"
	 * signal if the value changes.
	 * Since 2.12
	 * Params:
	 * value =  new value of the scale button
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
	 * Returns: the adjustment associated with the scale
	 */
	public Adjustment getAdjustment()
	{
		// GtkAdjustment* gtk_scale_button_get_adjustment (GtkScaleButton *button);
		auto p = gtk_scale_button_get_adjustment(gtkScaleButton);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Adjustment(cast(GtkAdjustment*) p);
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
}
