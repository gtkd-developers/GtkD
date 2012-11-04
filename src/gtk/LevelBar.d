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
 * inFile  = GtkLevelBar.html
 * outPack = gtk
 * outFile = LevelBar
 * strct   = GtkLevelBar
 * realStrct=
 * ctorStrct=
 * clss    = LevelBar
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_level_bar_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.LevelBar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;



private import gtk.Widget;

/**
 * Description
 * The GtkLevelBar is a bar widget that can be used
 * as a level indicator. Typical use cases are displaying the strength
 * of a password, or showing the charge level of a battery.
 * Use gtk_level_bar_set_value() to set the current value, and
 * gtk_level_bar_add_offset_value() to set the value offsets at which
 * the bar will be considered in a different state. GTK will add two offsets
 * by default on the level bar: GTK_LEVEL_BAR_OFFSET_LOW and
 * GTK_LEVEL_BAR_OFFSET_HIGH, with values 0.25 and 0.75 respectively.
 * $(DDOC_COMMENT example)
 * The default interval of values is between zero and one, but it's possible to
 * modify the interval using gtk_level_bar_set_min_value() and
 * gtk_level_bar_set_max_value(). The value will be always drawn in proportion to
 * the admissible interval, i.e. a value of 15 with a specified interval between
 * 10 and 20 is equivalent to a value of 0.5 with an interval between 0 and 1.
 * When GTK_LEVEL_BAR_MODE_DISCRETE is used, the bar level is rendered
 * as a finite and number of separated blocks instead of a single one. The number
 * of blocks that will be rendered is equal to the number of units specified by
 * the admissible interval.
 * For instance, to build a bar rendered with five blocks, it's sufficient to
 * set the minimum value to 0 and the maximum value to 5 after changing the indicator
 * mode to discrete.
 */
public class LevelBar : Widget
{
	
	/** the main Gtk struct */
	protected GtkLevelBar* gtkLevelBar;
	
	
	public GtkLevelBar* getLevelBarStruct()
	{
		return gtkLevelBar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLevelBar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkLevelBar* gtkLevelBar)
	{
		super(cast(GtkWidget*)gtkLevelBar);
		this.gtkLevelBar = gtkLevelBar;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkLevelBar = cast(GtkLevelBar*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(string, LevelBar)[] onOffsetChangedListeners;
	/**
	 * Emitted when an offset specified on the bar changes value as an
	 * effect to gtk_level_bar_add_offset_value() being called.
	 * The signal supports detailed connections; you can connect to the
	 * detailed signal "changed::x" in order to only receive callbacks when
	 * the value of offset "x" changes.
	 * Since 3.6
	 */
	void addOnOffsetChanged(void delegate(string, LevelBar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("offset-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"offset-changed",
			cast(GCallback)&callBackOffsetChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["offset-changed"] = 1;
		}
		onOffsetChangedListeners ~= dlg;
	}
	extern(C) static void callBackOffsetChanged(GtkLevelBar* selfStruct, gchar* name, LevelBar _levelBar)
	{
		foreach ( void delegate(string, LevelBar) dlg ; _levelBar.onOffsetChangedListeners )
		{
			dlg(Str.toString(name), _levelBar);
		}
	}
	
	
	/**
	 * Creates a new GtkLevelBar.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_level_bar_new (void);
		auto p = gtk_level_bar_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_level_bar_new()");
		}
		this(cast(GtkLevelBar*) p);
	}
	
	/**
	 * Utility constructor that creates a new GtkLevelBar for the specified
	 * interval.
	 * Params:
	 * minValue = a positive value
	 * maxValue = a positive value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (double minValue, double maxValue)
	{
		// GtkWidget * gtk_level_bar_new_for_interval (gdouble min_value,  gdouble max_value);
		auto p = gtk_level_bar_new_for_interval(minValue, maxValue);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_level_bar_new_for_interval(minValue, maxValue)");
		}
		this(cast(GtkLevelBar*) p);
	}
	
	/**
	 * Sets the value of the "mode" property.
	 * Params:
	 * mode = a GtkLevelBarMode
	 * Since 3.6
	 */
	public void setMode(GtkLevelBarMode mode)
	{
		// void gtk_level_bar_set_mode (GtkLevelBar *self,  GtkLevelBarMode mode);
		gtk_level_bar_set_mode(gtkLevelBar, mode);
	}
	
	/**
	 * Returns the value of the "mode" property.
	 * Returns: a GtkLevelBarMode Since 3.6
	 */
	public GtkLevelBarMode getMode()
	{
		// GtkLevelBarMode gtk_level_bar_get_mode (GtkLevelBar *self);
		return gtk_level_bar_get_mode(gtkLevelBar);
	}
	
	/**
	 * Sets the value of the "value" property.
	 * Params:
	 * value = a value in the interval between
	 * "min-value" and "max-value"
	 * Since 3.6
	 */
	public void setValue(double value)
	{
		// void gtk_level_bar_set_value (GtkLevelBar *self,  gdouble value);
		gtk_level_bar_set_value(gtkLevelBar, value);
	}
	
	/**
	 * Returns the value of the "value" property.
	 * Returns: a value in the interval between "min-value" and "max-value" Since 3.6
	 */
	public double getValue()
	{
		// gdouble gtk_level_bar_get_value (GtkLevelBar *self);
		return gtk_level_bar_get_value(gtkLevelBar);
	}
	
	/**
	 * Sets the value of the "min-value" property.
	 * Params:
	 * value = a positive value
	 * Since 3.6
	 */
	public void setMinValue(double value)
	{
		// void gtk_level_bar_set_min_value (GtkLevelBar *self,  gdouble value);
		gtk_level_bar_set_min_value(gtkLevelBar, value);
	}
	
	/**
	 * Returns the value of the "min-value" property.
	 * Returns: a positive value Since 3.6
	 */
	public double getMinValue()
	{
		// gdouble gtk_level_bar_get_min_value (GtkLevelBar *self);
		return gtk_level_bar_get_min_value(gtkLevelBar);
	}
	
	/**
	 * Sets the value of the "max-value" property.
	 * Params:
	 * value = a positive value
	 * Since 3.6
	 */
	public void setMaxValue(double value)
	{
		// void gtk_level_bar_set_max_value (GtkLevelBar *self,  gdouble value);
		gtk_level_bar_set_max_value(gtkLevelBar, value);
	}
	
	/**
	 * Returns the value of the "max-value" property.
	 * Returns: a positive value Since 3.6
	 */
	public double getMaxValue()
	{
		// gdouble gtk_level_bar_get_max_value (GtkLevelBar *self);
		return gtk_level_bar_get_max_value(gtkLevelBar);
	}
	
	/**
	 * Adds a new offset marker on self at the position specified by value.
	 * When the bar value is in the interval topped by value (or between value
	 * and "max-value" in case the offset is the last one on the bar)
	 * a style class named level-name will be applied
	 * when rendering the level bar fill.
	 * If another offset marker named name exists, its value will be
	 * replaced by value.
	 * Params:
	 * name = the name of the new offset
	 * value = the value for the new offset
	 * Since 3.6
	 */
	public void addOffsetValue(string name, double value)
	{
		// void gtk_level_bar_add_offset_value (GtkLevelBar *self,  const gchar *name,  gdouble value);
		gtk_level_bar_add_offset_value(gtkLevelBar, Str.toStringz(name), value);
	}
	
	/**
	 * Removes an offset marker previously added with
	 * gtk_level_bar_add_offset_value().
	 * Params:
	 * name = the name of an offset in the bar. [allow-none]
	 * Since 3.6
	 */
	public void removeOffsetValue(string name)
	{
		// void gtk_level_bar_remove_offset_value (GtkLevelBar *self,  const gchar *name);
		gtk_level_bar_remove_offset_value(gtkLevelBar, Str.toStringz(name));
	}
	
	/**
	 * Fetches the value specified for the offset marker name in self,
	 * returning TRUE in case an offset named name was found.
	 * Params:
	 * name = the name of an offset in the bar. [allow-none]
	 * value = location where to store the value. [out]
	 * Returns: TRUE if the specified offset is found Since 3.6
	 */
	public int getOffsetValue(string name, out double value)
	{
		// gboolean gtk_level_bar_get_offset_value (GtkLevelBar *self,  const gchar *name,  gdouble *value);
		return gtk_level_bar_get_offset_value(gtkLevelBar, Str.toStringz(name), &value);
	}
}
