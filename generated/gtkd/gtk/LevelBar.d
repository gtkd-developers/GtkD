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


module gtk.LevelBar;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The #GtkLevelBar is a bar widget that can be used
 * as a level indicator. Typical use cases are displaying the strength
 * of a password, or showing the charge level of a battery.
 * 
 * Use gtk_level_bar_set_value() to set the current value, and
 * gtk_level_bar_add_offset_value() to set the value offsets at which
 * the bar will be considered in a different state. GTK will add a few
 * offsets by default on the level bar: #GTK_LEVEL_BAR_OFFSET_LOW,
 * #GTK_LEVEL_BAR_OFFSET_HIGH and #GTK_LEVEL_BAR_OFFSET_FULL, with
 * values 0.25, 0.75 and 1.0 respectively.
 * 
 * Note that it is your responsibility to update preexisting offsets
 * when changing the minimum or maximum value. GTK+ will simply clamp
 * them to the new range.
 * 
 * ## Adding a custom offset on the bar
 * 
 * |[<!-- language="C" -->
 * 
 * static GtkWidget *
 * create_level_bar (void)
 * {
 * GtkWidget *widget;
 * GtkLevelBar *bar;
 * 
 * widget = gtk_level_bar_new ();
 * bar = GTK_LEVEL_BAR (widget);
 * 
 * // This changes the value of the default low offset
 * 
 * gtk_level_bar_add_offset_value (bar,
 * GTK_LEVEL_BAR_OFFSET_LOW,
 * 0.10);
 * 
 * // This adds a new offset to the bar; the application will
 * // be able to change its color CSS like this:
 * //
 * // levelbar block.my-offset {
 * //   background-color: magenta;
 * //   border-style: solid;
 * //   border-color: black;
 * //   border-style: 1px;
 * // }
 * 
 * gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);
 * 
 * return widget;
 * }
 * ]|
 * 
 * The default interval of values is between zero and one, but it’s possible to
 * modify the interval using gtk_level_bar_set_min_value() and
 * gtk_level_bar_set_max_value(). The value will be always drawn in proportion to
 * the admissible interval, i.e. a value of 15 with a specified interval between
 * 10 and 20 is equivalent to a value of 0.5 with an interval between 0 and 1.
 * When #GTK_LEVEL_BAR_MODE_DISCRETE is used, the bar level is rendered
 * as a finite number of separated blocks instead of a single one. The number
 * of blocks that will be rendered is equal to the number of units specified by
 * the admissible interval.
 * 
 * For instance, to build a bar rendered with five blocks, it’s sufficient to
 * set the minimum value to 0 and the maximum value to 5 after changing the indicator
 * mode to discrete.
 * 
 * GtkLevelBar was introduced in GTK+ 3.6.
 * 
 * # GtkLevelBar as GtkBuildable
 * 
 * The GtkLevelBar implementation of the GtkBuildable interface supports a
 * custom <offsets> element, which can contain any number of <offset> elements,
 * each of which must have name and value attributes.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * levelbar[.discrete]
 * ╰── trough
 * ├── block.filled.level-name
 * ┊
 * ├── block.empty
 * ┊
 * ]|
 * 
 * GtkLevelBar has a main CSS node with name levelbar and one of the style
 * classes .discrete or .continuous and a subnode with name trough. Below the
 * trough node are a number of nodes with name block and style class .filled
 * or .empty. In continuous mode, there is exactly one node of each, in discrete
 * mode, the number of filled and unfilled nodes corresponds to blocks that are
 * drawn. The block.filled nodes also get a style class .level-name corresponding
 * to the level for the current value.
 * 
 * In horizontal orientation, the nodes are always arranged from left to right,
 * regardless of text direction.
 */
public class LevelBar : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected GtkLevelBar* gtkLevelBar;

	/** Get the main Gtk struct */
	public GtkLevelBar* getLevelBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkLevelBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLevelBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkLevelBar* gtkLevelBar, bool ownedRef = false)
	{
		this.gtkLevelBar = gtkLevelBar;
		super(cast(GtkWidget*)gtkLevelBar, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkLevelBar);


	/** */
	public static GType getType()
	{
		return gtk_level_bar_get_type();
	}

	/**
	 * Creates a new #GtkLevelBar.
	 *
	 * Returns: a #GtkLevelBar.
	 *
	 * Since: 3.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_level_bar_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkLevelBar*) p);
	}

	/**
	 * Utility constructor that creates a new #GtkLevelBar for the specified
	 * interval.
	 *
	 * Params:
	 *     minValue = a positive value
	 *     maxValue = a positive value
	 *
	 * Returns: a #GtkLevelBar
	 *
	 * Since: 3.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double minValue, double maxValue)
	{
		auto p = gtk_level_bar_new_for_interval(minValue, maxValue);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_interval");
		}

		this(cast(GtkLevelBar*) p);
	}

	/**
	 * Adds a new offset marker on @self at the position specified by @value.
	 * When the bar value is in the interval topped by @value (or between @value
	 * and #GtkLevelBar:max-value in case the offset is the last one on the bar)
	 * a style class named `level-`@name will be applied
	 * when rendering the level bar fill.
	 * If another offset marker named @name exists, its value will be
	 * replaced by @value.
	 *
	 * Params:
	 *     name = the name of the new offset
	 *     value = the value for the new offset
	 *
	 * Since: 3.6
	 */
	public void addOffsetValue(string name, double value)
	{
		gtk_level_bar_add_offset_value(gtkLevelBar, Str.toStringz(name), value);
	}

	/**
	 * Return the value of the #GtkLevelBar:inverted property.
	 *
	 * Returns: %TRUE if the level bar is inverted
	 *
	 * Since: 3.8
	 */
	public bool getInverted()
	{
		return gtk_level_bar_get_inverted(gtkLevelBar) != 0;
	}

	/**
	 * Returns the value of the #GtkLevelBar:max-value property.
	 *
	 * Returns: a positive value
	 *
	 * Since: 3.6
	 */
	public double getMaxValue()
	{
		return gtk_level_bar_get_max_value(gtkLevelBar);
	}

	/**
	 * Returns the value of the #GtkLevelBar:min-value property.
	 *
	 * Returns: a positive value
	 *
	 * Since: 3.6
	 */
	public double getMinValue()
	{
		return gtk_level_bar_get_min_value(gtkLevelBar);
	}

	/**
	 * Returns the value of the #GtkLevelBar:mode property.
	 *
	 * Returns: a #GtkLevelBarMode
	 *
	 * Since: 3.6
	 */
	public GtkLevelBarMode getMode()
	{
		return gtk_level_bar_get_mode(gtkLevelBar);
	}

	/**
	 * Fetches the value specified for the offset marker @name in @self,
	 * returning %TRUE in case an offset named @name was found.
	 *
	 * Params:
	 *     name = the name of an offset in the bar
	 *     value = location where to store the value
	 *
	 * Returns: %TRUE if the specified offset is found
	 *
	 * Since: 3.6
	 */
	public bool getOffsetValue(string name, out double value)
	{
		return gtk_level_bar_get_offset_value(gtkLevelBar, Str.toStringz(name), &value) != 0;
	}

	/**
	 * Returns the value of the #GtkLevelBar:value property.
	 *
	 * Returns: a value in the interval between
	 *     #GtkLevelBar:min-value and #GtkLevelBar:max-value
	 *
	 * Since: 3.6
	 */
	public double getValue()
	{
		return gtk_level_bar_get_value(gtkLevelBar);
	}

	/**
	 * Removes an offset marker previously added with
	 * gtk_level_bar_add_offset_value().
	 *
	 * Params:
	 *     name = the name of an offset in the bar
	 *
	 * Since: 3.6
	 */
	public void removeOffsetValue(string name)
	{
		gtk_level_bar_remove_offset_value(gtkLevelBar, Str.toStringz(name));
	}

	/**
	 * Sets the value of the #GtkLevelBar:inverted property.
	 *
	 * Params:
	 *     inverted = %TRUE to invert the level bar
	 *
	 * Since: 3.8
	 */
	public void setInverted(bool inverted)
	{
		gtk_level_bar_set_inverted(gtkLevelBar, inverted);
	}

	/**
	 * Sets the value of the #GtkLevelBar:max-value property.
	 *
	 * You probably want to update preexisting level offsets after calling
	 * this function.
	 *
	 * Params:
	 *     value = a positive value
	 *
	 * Since: 3.6
	 */
	public void setMaxValue(double value)
	{
		gtk_level_bar_set_max_value(gtkLevelBar, value);
	}

	/**
	 * Sets the value of the #GtkLevelBar:min-value property.
	 *
	 * You probably want to update preexisting level offsets after calling
	 * this function.
	 *
	 * Params:
	 *     value = a positive value
	 *
	 * Since: 3.6
	 */
	public void setMinValue(double value)
	{
		gtk_level_bar_set_min_value(gtkLevelBar, value);
	}

	/**
	 * Sets the value of the #GtkLevelBar:mode property.
	 *
	 * Params:
	 *     mode = a #GtkLevelBarMode
	 *
	 * Since: 3.6
	 */
	public void setMode(GtkLevelBarMode mode)
	{
		gtk_level_bar_set_mode(gtkLevelBar, mode);
	}

	/**
	 * Sets the value of the #GtkLevelBar:value property.
	 *
	 * Params:
	 *     value = a value in the interval between
	 *         #GtkLevelBar:min-value and #GtkLevelBar:max-value
	 *
	 * Since: 3.6
	 */
	public void setValue(double value)
	{
		gtk_level_bar_set_value(gtkLevelBar, value);
	}

	/**
	 * Emitted when an offset specified on the bar changes value as an
	 * effect to gtk_level_bar_add_offset_value() being called.
	 *
	 * The signal supports detailed connections; you can connect to the
	 * detailed signal "changed::x" in order to only receive callbacks when
	 * the value of offset "x" changes.
	 *
	 * Params:
	 *     name = the name of the offset that changed value
	 *
	 * Since: 3.6
	 */
	gulong addOnOffsetChanged(void delegate(string, LevelBar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "offset-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
