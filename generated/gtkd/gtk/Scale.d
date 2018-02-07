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


module gtk.Scale;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Adjustment;
private import gtk.Range;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import pango.PgLayout;
private import std.algorithm;


/**
 * A GtkScale is a slider control used to select a numeric value.
 * To use it, you’ll probably want to investigate the methods on
 * its base class, #GtkRange, in addition to the methods for GtkScale itself.
 * To set the value of a scale, you would normally use gtk_range_set_value().
 * To detect changes to the value, you would normally use the
 * #GtkRange::value-changed signal.
 * 
 * Note that using the same upper and lower bounds for the #GtkScale (through
 * the #GtkRange methods) will hide the slider itself. This is useful for
 * applications that want to show an undeterminate value on the scale, without
 * changing the layout of the application (such as movie or music players).
 * 
 * # GtkScale as GtkBuildable
 * 
 * GtkScale supports a custom <marks> element, which can contain multiple
 * <mark> elements. The “value” and “position” attributes have the same
 * meaning as gtk_scale_add_mark() parameters of the same name. If the
 * element is not empty, its content is taken as the markup to show at
 * the mark. It can be translated with the usual ”translatable” and
 * “context” attributes.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * scale[.fine-tune][.marks-before][.marks-after]
 * ├── marks.top
 * │   ├── mark
 * │   ┊    ├── [label]
 * │   ┊    ╰── indicator
 * ┊   ┊
 * │   ╰── mark
 * ├── [value]
 * ├── contents
 * │   ╰── trough
 * │       ├── slider
 * │       ├── [highlight]
 * │       ╰── [fill]
 * ╰── marks.bottom
 * ├── mark
 * ┊    ├── indicator
 * ┊    ╰── [label]
 * ╰── mark
 * ]|
 * 
 * GtkScale has a main CSS node with name scale and a subnode for its contents,
 * with subnodes named trough and slider.
 * 
 * The main node gets the style class .fine-tune added when the scale is in
 * 'fine-tuning' mode.
 * 
 * If the scale has an origin (see gtk_scale_set_has_origin()), there is a
 * subnode with name highlight below the trough node that is used for rendering
 * the highlighted part of the trough.
 * 
 * If the scale is showing a fill level (see gtk_range_set_show_fill_level()),
 * there is a subnode with name fill below the trough node that is used for
 * rendering the filled in part of the trough.
 * 
 * If marks are present, there is a marks subnode before or after the contents
 * node, below which each mark gets a node with name mark. The marks nodes get
 * either the .top or .bottom style class.
 * 
 * The mark node has a subnode named indicator. If the mark has text, it also
 * has a subnode named label. When the mark is either above or left of the
 * scale, the label subnode is the first when present. Otherwise, the indicator
 * subnode is the first.
 * 
 * The main CSS node gets the 'marks-before' and/or 'marks-after' style classes
 * added depending on what marks are present.
 * 
 * If the scale is displaying the value (see #GtkScale:draw-value), there is
 * subnode with name value.
 */
public class Scale : Range
{
	/** the main Gtk struct */
	protected GtkScale* gtkScale;

	/** Get the main Gtk struct */
	public GtkScale* getScaleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkScale;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkScale;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkScale* gtkScale, bool ownedRef = false)
	{
		this.gtkScale = gtkScale;
		super(cast(GtkRange*)gtkScale, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_scale_get_type();
	}

	/**
	 * Creates a new #GtkScale.
	 *
	 * Params:
	 *     orientation = the scale’s orientation.
	 *     adjustment = the #GtkAdjustment which sets the range
	 *         of the scale, or %NULL to create a new adjustment.
	 *
	 * Returns: a new #GtkScale
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation, Adjustment adjustment)
	{
		auto p = gtk_scale_new(orientation, (adjustment is null) ? null : adjustment.getAdjustmentStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkScale*) p);
	}

	/**
	 * Creates a new scale widget with the given orientation that lets the
	 * user input a number between @min and @max (including @min and @max)
	 * with the increment @step.  @step must be nonzero; it’s the distance
	 * the slider moves when using the arrow keys to adjust the scale
	 * value.
	 *
	 * Note that the way in which the precision is derived works best if @step
	 * is a power of ten. If the resulting precision is not suitable for your
	 * needs, use gtk_scale_set_digits() to correct it.
	 *
	 * Params:
	 *     orientation = the scale’s orientation.
	 *     min = minimum value
	 *     max = maximum value
	 *     step = step increment (tick size) used with keyboard shortcuts
	 *
	 * Returns: a new #GtkScale
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation, double min, double max, double step)
	{
		auto p = gtk_scale_new_with_range(orientation, min, max, step);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_range");
		}

		this(cast(GtkScale*) p);
	}

	/**
	 * Adds a mark at @value.
	 *
	 * A mark is indicated visually by drawing a tick mark next to the scale,
	 * and GTK+ makes it easy for the user to position the scale exactly at the
	 * marks value.
	 *
	 * If @markup is not %NULL, text is shown next to the tick mark.
	 *
	 * To remove marks from a scale, use gtk_scale_clear_marks().
	 *
	 * Params:
	 *     value = the value at which the mark is placed, must be between
	 *         the lower and upper limits of the scales’ adjustment
	 *     position = where to draw the mark. For a horizontal scale, #GTK_POS_TOP
	 *         and %GTK_POS_LEFT are drawn above the scale, anything else below.
	 *         For a vertical scale, #GTK_POS_LEFT and %GTK_POS_TOP are drawn to
	 *         the left of the scale, anything else to the right.
	 *     markup = Text to be shown at the mark, using [Pango markup][PangoMarkupFormat], or %NULL
	 *
	 * Since: 2.16
	 */
	public void addMark(double value, GtkPositionType position, string markup)
	{
		gtk_scale_add_mark(gtkScale, value, position, Str.toStringz(markup));
	}

	/**
	 * Removes any marks that have been added with gtk_scale_add_mark().
	 *
	 * Since: 2.16
	 */
	public void clearMarks()
	{
		gtk_scale_clear_marks(gtkScale);
	}

	/**
	 * Gets the number of decimal places that are displayed in the value.
	 *
	 * Returns: the number of decimal places that are displayed
	 */
	public int getDigits()
	{
		return gtk_scale_get_digits(gtkScale);
	}

	/**
	 * Returns whether the current value is displayed as a string
	 * next to the slider.
	 *
	 * Returns: whether the current value is displayed as a string
	 */
	public bool getDrawValue()
	{
		return gtk_scale_get_draw_value(gtkScale) != 0;
	}

	/**
	 * Returns whether the scale has an origin.
	 *
	 * Returns: %TRUE if the scale has an origin.
	 *
	 * Since: 3.4
	 */
	public bool getHasOrigin()
	{
		return gtk_scale_get_has_origin(gtkScale) != 0;
	}

	/**
	 * Gets the #PangoLayout used to display the scale. The returned
	 * object is owned by the scale so does not need to be freed by
	 * the caller.
	 *
	 * Returns: the #PangoLayout for this scale,
	 *     or %NULL if the #GtkScale:draw-value property is %FALSE.
	 *
	 * Since: 2.4
	 */
	public PgLayout getLayout()
	{
		auto p = gtk_scale_get_layout(gtkScale);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}

	/**
	 * Obtains the coordinates where the scale will draw the
	 * #PangoLayout representing the text in the scale. Remember
	 * when using the #PangoLayout function you need to convert to
	 * and from pixels using PANGO_PIXELS() or #PANGO_SCALE.
	 *
	 * If the #GtkScale:draw-value property is %FALSE, the return
	 * values are undefined.
	 *
	 * Params:
	 *     x = location to store X offset of layout, or %NULL
	 *     y = location to store Y offset of layout, or %NULL
	 *
	 * Since: 2.4
	 */
	public void getLayoutOffsets(out int x, out int y)
	{
		gtk_scale_get_layout_offsets(gtkScale, &x, &y);
	}

	/**
	 * Gets the position in which the current value is displayed.
	 *
	 * Returns: the position in which the current value is displayed
	 */
	public GtkPositionType getValuePos()
	{
		return gtk_scale_get_value_pos(gtkScale);
	}

	/**
	 * Sets the number of decimal places that are displayed in the value. Also
	 * causes the value of the adjustment to be rounded to this number of digits,
	 * so the retrieved value matches the displayed one, if #GtkScale:draw-value is
	 * %TRUE when the value changes. If you want to enforce rounding the value when
	 * #GtkScale:draw-value is %FALSE, you can set #GtkRange:round-digits instead.
	 *
	 * Note that rounding to a small number of digits can interfere with
	 * the smooth autoscrolling that is built into #GtkScale. As an alternative,
	 * you can use the #GtkScale::format-value signal to format the displayed
	 * value yourself.
	 *
	 * Params:
	 *     digits = the number of decimal places to display,
	 *         e.g. use 1 to display 1.0, 2 to display 1.00, etc
	 */
	public void setDigits(int digits)
	{
		gtk_scale_set_digits(gtkScale, digits);
	}

	/**
	 * Specifies whether the current value is displayed as a string next
	 * to the slider.
	 *
	 * Params:
	 *     drawValue = %TRUE to draw the value
	 */
	public void setDrawValue(bool drawValue)
	{
		gtk_scale_set_draw_value(gtkScale, drawValue);
	}

	/**
	 * If #GtkScale:has-origin is set to %TRUE (the default), the scale will
	 * highlight the part of the trough between the origin (bottom or left side)
	 * and the current value.
	 *
	 * Params:
	 *     hasOrigin = %TRUE if the scale has an origin
	 *
	 * Since: 3.4
	 */
	public void setHasOrigin(bool hasOrigin)
	{
		gtk_scale_set_has_origin(gtkScale, hasOrigin);
	}

	/**
	 * Sets the position in which the current value is displayed.
	 *
	 * Params:
	 *     pos = the position in which the current value is displayed
	 */
	public void setValuePos(GtkPositionType pos)
	{
		gtk_scale_set_value_pos(gtkScale, pos);
	}

	/**
	 * Signal which allows you to change how the scale value is displayed.
	 * Connect a signal handler which returns an allocated string representing
	 * @value. That string will then be used to display the scale's value.
	 *
	 * If no user-provided handlers are installed, the value will be displayed on
	 * its own, rounded according to the value of the #GtkScale:digits property.
	 *
	 * Here's an example signal handler which displays a value 1.0 as
	 * with "-->1.0<--".
	 * |[<!-- language="C" -->
	 * static gchar*
	 * format_value_callback (GtkScale *scale,
	 * gdouble   value)
	 * {
	 * return g_strdup_printf ("-->\%0.*g<--",
	 * gtk_scale_get_digits (scale), value);
	 * }
	 * ]|
	 *
	 * Params:
	 *     value = the value to format
	 *
	 * Returns: allocated string representing @value
	 */
	gulong addOnFormatValue(string delegate(double, Scale) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "format-value", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
