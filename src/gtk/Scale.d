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
 * outFile = Scale
 * strct   = GtkScale
 * realStrct=
 * clss    = Scale
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_scale_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.Scale;

private import gtk.typedefs;

private import lib.gtk;


/**
 * Description
 * A GtkScale is a slider control used to select a numeric value.
 * To use it, you'll probably want to investigate the methods on
 * its base class, GtkRange, in addition to the methods for GtkScale itself.
 * To set the value of a scale, you would normally use gtk_range_set_value().
 * To detect changes to the value, you would normally use the "value_changed"
 * signal.
 * The GtkScale widget is an abstract class, used only for deriving the
 * subclasses GtkHScale and GtkVScale. To create a scale widget,
 * call gtk_hscale_new_with_range() or gtk_vscale_new_with_range().
 */
private import gtk.Range;
public class Scale : Range
{
	
	/** the main Gtk struct */
	protected GtkScale* gtkScale;
	
	
	public GtkScale* getScaleStruct()
	{
		return gtkScale;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	char[] delegate(gdouble, Scale)[] onFormatValueListeners;
	void addOnFormatValue(char[] delegate(gdouble, Scale) dlg)
	{
		if ( !("format-value" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"format-value",
			cast(GCallback)&callBackFormatValue,
			this,
			null,
			0);
			connectedSignals["format-value"] = 1;
		}
		onFormatValueListeners ~= dlg;
	}
	extern(C) static void callBackFormatValue(GtkScale* scaleStruct, gdouble arg1, Scale scale)
	{
		bit consumed = false;
		
		foreach ( char[] delegate(gdouble, Scale) dlg ; scale.onFormatValueListeners )
		{
			dlg(arg1, scale);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Sets the number of decimal places that are displayed in the value. Also causes
	 * the value of the adjustment to be rounded off to this number of digits, so the
	 * retrieved value matches the value the user saw.
	 * scale:
	 * a GtkScale.
	 * digits:
	 * the number of decimal places to display, e.g. use 1 to display 1.0,
	 * 2 to display 1.00 etc.
	 */
	public void setDigits(int digits)
	{
		// void gtk_scale_set_digits (GtkScale *scale,  gint digits);
		gtk_scale_set_digits(gtkScale, digits);
	}
	
	/**
	 * Specifies whether the current value is displayed as a string next to the
	 * slider.
	 * scale:
	 * a GtkScale.
	 * draw_value:
	 * a boolean.
	 */
	public void setDrawValue(int drawValue)
	{
		// void gtk_scale_set_draw_value (GtkScale *scale,  gboolean draw_value);
		gtk_scale_set_draw_value(gtkScale, drawValue);
	}
	
	/**
	 * Sets the position in which the current value is displayed.
	 * scale:
	 * a GtkScale.
	 * pos:
	 * the position in which the current value is displayed.
	 */
	public void setValuePos(GtkPositionType pos)
	{
		// void gtk_scale_set_value_pos (GtkScale *scale,  GtkPositionType pos);
		gtk_scale_set_value_pos(gtkScale, pos);
	}
	
	/**
	 * Gets the number of decimal places that are displayed in the value.
	 * scale:
	 * a GtkScale.
	 * Returns:
	 * the number of decimal places that are displayed.
	 */
	public int getDigits()
	{
		// gint gtk_scale_get_digits (GtkScale *scale);
		return gtk_scale_get_digits(gtkScale);
	}
	
	/**
	 * Returns whether the current value is displayed as a string next to the
	 * slider.
	 * scale:
	 * a GtkScale.
	 * Returns:
	 * whether the current value is displayed as a string.
	 */
	public int getDrawValue()
	{
		// gboolean gtk_scale_get_draw_value (GtkScale *scale);
		return gtk_scale_get_draw_value(gtkScale);
	}
	
	/**
	 * Gets the position in which the current value is displayed.
	 * scale:
	 * a GtkScale.
	 * Returns:
	 * the position in which the current value is displayed.
	 */
	public GtkPositionType getValuePos()
	{
		// GtkPositionType gtk_scale_get_value_pos (GtkScale *scale);
		return gtk_scale_get_value_pos(gtkScale);
	}
	
	/**
	 * Gets the PangoLayout used to display the scale. The returned object
	 * is owned by the scale so does not need to be freed by the caller.
	 * scale:
	 *  A GtkScale
	 * Returns:
	 *  the PangoLayout for this scale, or NULL if the draw_value property
	 *  is FALSE.
	 * Since 2.4
	 */
	public PangoLayout* getLayout()
	{
		// PangoLayout* gtk_scale_get_layout (GtkScale *scale);
		return gtk_scale_get_layout(gtkScale);
	}
	
	/**
	 * Obtains the coordinates where the scale will draw the PangoLayout
	 * representing the text in the scale. Remember
	 * when using the PangoLayout function you need to convert to
	 * and from pixels using PANGO_PIXELS() or PANGO_SCALE.
	 * If the draw_value property is FALSE, the return values are
	 * undefined.
	 * scale:
	 *  a GtkScale
	 * x:
	 *  location to store X offset of layout, or NULL
	 * y:
	 *  location to store Y offset of layout, or NULL
	 * Since 2.4
	 * Property Details
	 * The "digits" property
	 *  "digits" gint : Read / Write
	 * The number of decimal places that are displayed in the value.
	 * Allowed values: [-1,64]
	 * Default value: 1
	 */
	public void getLayoutOffsets(int* x, int* y)
	{
		// void gtk_scale_get_layout_offsets (GtkScale *scale,  gint *x,  gint *y);
		gtk_scale_get_layout_offsets(gtkScale, x, y);
	}
	
	
	
}
