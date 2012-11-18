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
 * inFile  = GtkScale.html
 * outPack = gtk
 * outFile = Scale
 * strct   = GtkScale
 * realStrct=
 * ctorStrct=
 * clss    = Scale
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_scale_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Adjustment
 * 	- pango.PgLayout
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * 	- PangoLayout* -> PgLayout
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Scale;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Adjustment;
private import pango.PgLayout;



private import gtk.Range;

/**
 * Description
 * A GtkScale is a slider control used to select a numeric value.
 * To use it, you'll probably want to investigate the methods on
 * its base class, GtkRange, in addition to the methods for GtkScale itself.
 * To set the value of a scale, you would normally use gtk_range_set_value().
 * To detect changes to the value, you would normally use the
 * "value-changed" signal.
 * Note that using the same upper and lower bounds for the GtkScale (through
 * the GtkRange methods) will hide the slider itself. This is useful for
 * applications that want to show an undeterminate value on the scale, without
 * changing the layout of the application (such as movie or music players).
 * GtkScale as GtkBuildable
 * GtkScale supports a custom <marks> element, which
 * can contain multiple <mark> elements. The "value" and "position"
 * attributes have the same meaning as gtk_scale_add_mark() parameters of the
 * same name. If the element is not empty, its content is taken as the markup
 * to show at the mark. It can be translated with the usual "translatable and
 * "context" attributes.
 */
public class Scale : Range
{
	
	/** the main Gtk struct */
	protected GtkScale* gtkScale;
	
	
	public GtkScale* getScaleStruct()
	{
		return gtkScale;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkScale;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkScale* gtkScale)
	{
		super(cast(GtkRange*)gtkScale);
		this.gtkScale = gtkScale;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkScale = cast(GtkScale*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	string delegate(gdouble, Scale)[] onFormatValueListeners;
	/**
	 * Signal which allows you to change how the scale value is displayed.
	 * Connect a signal handler which returns an allocated string representing
	 * value. That string will then be used to display the scale's value.
	 * Here's an example signal handler which displays a value 1.0 as
	 * with "-->1.0<--".
	 * $(DDOC_COMMENT example)
	 */
	void addOnFormatValue(string delegate(gdouble, Scale) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("format-value" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"format-value",
			cast(GCallback)&callBackFormatValue,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["format-value"] = 1;
		}
		onFormatValueListeners ~= dlg;
	}
	extern(C) static void callBackFormatValue(GtkScale* scaleStruct, gdouble value, Scale _scale)
	{
		foreach ( string delegate(gdouble, Scale) dlg ; _scale.onFormatValueListeners )
		{
			dlg(value, _scale);
		}
	}
	
	
	/**
	 * Creates a new GtkScale.
	 * Params:
	 * orientation = the scale's orientation.
	 * adjustment = the GtkAdjustment which sets the range
	 * of the scale, or NULL to create a new adjustment. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GtkOrientation orientation, Adjustment adjustment)
	{
		// GtkWidget * gtk_scale_new (GtkOrientation orientation,  GtkAdjustment *adjustment);
		auto p = gtk_scale_new(orientation, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_scale_new(orientation, (adjustment is null) ? null : adjustment.getAdjustmentStruct())");
		}
		this(cast(GtkScale*) p);
	}
	
	/**
	 * Creates a new scale widget with the given orientation that lets the
	 * user input a number between min and max (including min and max)
	 * with the increment step. step must be nonzero; it's the distance
	 * the slider moves when using the arrow keys to adjust the scale
	 * value.
	 * Note that the way in which the precision is derived works best if step
	 * is a power of ten. If the resulting precision is not suitable for your
	 * needs, use gtk_scale_set_digits() to correct it.
	 * Params:
	 * orientation = the scale's orientation.
	 * min = minimum value
	 * max = maximum value
	 * step = step increment (tick size) used with keyboard shortcuts
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GtkOrientation orientation, double min, double max, double step)
	{
		// GtkWidget * gtk_scale_new_with_range (GtkOrientation orientation,  gdouble min,  gdouble max,  gdouble step);
		auto p = gtk_scale_new_with_range(orientation, min, max, step);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_scale_new_with_range(orientation, min, max, step)");
		}
		this(cast(GtkScale*) p);
	}
	
	/**
	 * Sets the number of decimal places that are displayed in the value.
	 * Also causes the value of the adjustment to be rounded off to this
	 * number of digits, so the retrieved value matches the value the user saw.
	 * Params:
	 * digits = the number of decimal places to display,
	 * e.g. use 1 to display 1.0, 2 to display 1.00, etc
	 */
	public void setDigits(int digits)
	{
		// void gtk_scale_set_digits (GtkScale *scale,  gint digits);
		gtk_scale_set_digits(gtkScale, digits);
	}
	
	/**
	 * Specifies whether the current value is displayed as a string next
	 * to the slider.
	 * Params:
	 * drawValue = TRUE to draw the value
	 */
	public void setDrawValue(int drawValue)
	{
		// void gtk_scale_set_draw_value (GtkScale *scale,  gboolean draw_value);
		gtk_scale_set_draw_value(gtkScale, drawValue);
	}
	
	/**
	 * If has_origin is set to TRUE (the default),
	 * the scale will highlight the part of the scale
	 * between the origin (bottom or left side) of the scale
	 * and the current value.
	 * Params:
	 * hasOrigin = TRUE if the scale has an origin
	 * Since 3.4
	 */
	public void setHasOrigin(int hasOrigin)
	{
		// void gtk_scale_set_has_origin (GtkScale *scale,  gboolean has_origin);
		gtk_scale_set_has_origin(gtkScale, hasOrigin);
	}
	
	/**
	 * Sets the position in which the current value is displayed.
	 * Params:
	 * pos = the position in which the current value is displayed
	 */
	public void setValuePos(GtkPositionType pos)
	{
		// void gtk_scale_set_value_pos (GtkScale *scale,  GtkPositionType pos);
		gtk_scale_set_value_pos(gtkScale, pos);
	}
	
	/**
	 * Gets the number of decimal places that are displayed in the value.
	 * Returns: the number of decimal places that are displayed
	 */
	public int getDigits()
	{
		// gint gtk_scale_get_digits (GtkScale *scale);
		return gtk_scale_get_digits(gtkScale);
	}
	
	/**
	 * Returns whether the current value is displayed as a string
	 * next to the slider.
	 * Returns: whether the current value is displayed as a string
	 */
	public int getDrawValue()
	{
		// gboolean gtk_scale_get_draw_value (GtkScale *scale);
		return gtk_scale_get_draw_value(gtkScale);
	}
	
	/**
	 * Returns whether the scale has an origin.
	 * Returns: TRUE if the scale has an origin. Since 3.4
	 */
	public int getHasOrigin()
	{
		// gboolean gtk_scale_get_has_origin (GtkScale *scale);
		return gtk_scale_get_has_origin(gtkScale);
	}
	
	/**
	 * Gets the position in which the current value is displayed.
	 * Returns: the position in which the current value is displayed
	 */
	public GtkPositionType getValuePos()
	{
		// GtkPositionType gtk_scale_get_value_pos (GtkScale *scale);
		return gtk_scale_get_value_pos(gtkScale);
	}
	
	/**
	 * Gets the PangoLayout used to display the scale. The returned
	 * object is owned by the scale so does not need to be freed by
	 * the caller.
	 * Since 2.4
	 * Returns: the PangoLayout for this scale, or NULL if the "draw-value" property is FALSE. [transfer none]
	 */
	public PgLayout getLayout()
	{
		// PangoLayout * gtk_scale_get_layout (GtkScale *scale);
		auto p = gtk_scale_get_layout(gtkScale);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}
	
	/**
	 * Obtains the coordinates where the scale will draw the
	 * PangoLayout representing the text in the scale. Remember
	 * when using the PangoLayout function you need to convert to
	 * and from pixels using PANGO_PIXELS() or PANGO_SCALE.
	 * If the "draw-value" property is FALSE, the return
	 * values are undefined.
	 * Since 2.4
	 * Params:
	 * x = location to store X offset of layout, or NULL. [out][allow-none]
	 * y = location to store Y offset of layout, or NULL. [out][allow-none]
	 */
	public void getLayoutOffsets(out int x, out int y)
	{
		// void gtk_scale_get_layout_offsets (GtkScale *scale,  gint *x,  gint *y);
		gtk_scale_get_layout_offsets(gtkScale, &x, &y);
	}
	
	/**
	 * Adds a mark at value.
	 * A mark is indicated visually by drawing a tick mark next to the scale,
	 * and GTK+ makes it easy for the user to position the scale exactly at the
	 * marks value.
	 * If markup is not NULL, text is shown next to the tick mark.
	 * To remove marks from a scale, use gtk_scale_clear_marks().
	 * Since 2.16
	 * Params:
	 * value = the value at which the mark is placed, must be between
	 * the lower and upper limits of the scales' adjustment
	 * position = where to draw the mark. For a horizontal scale, GTK_POS_TOP
	 * and GTK_POS_LEFT are drawn above the scale, anything else below.
	 * For a vertical scale, GTK_POS_LEFT and GTK_POS_TOP are drawn to
	 * the left of the scale, anything else to the right.
	 * markup = Text to be shown at the mark, using Pango markup, or NULL. [allow-none]
	 */
	public void addMark(double value, GtkPositionType position, string markup)
	{
		// void gtk_scale_add_mark (GtkScale *scale,  gdouble value,  GtkPositionType position,  const gchar *markup);
		gtk_scale_add_mark(gtkScale, value, position, Str.toStringz(markup));
	}
	
	/**
	 * Removes any marks that have been added with gtk_scale_add_mark().
	 * Since 2.16
	 */
	public void clearMarks()
	{
		// void gtk_scale_clear_marks (GtkScale *scale);
		gtk_scale_clear_marks(gtkScale);
	}
}
