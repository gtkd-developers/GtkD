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
 * inFile  = GtkAlignment.html
 * outPack = gtk
 * outFile = Alignment
 * strct   = GtkAlignment
 * realStrct=
 * ctorStrct=
 * clss    = Alignment
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_alignment_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Alignment;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.Widget;



private import gtk.Bin;

/**
 * Description
 * The GtkAlignment widget controls the alignment and size of its child widget.
 * It has four settings: xscale, yscale, xalign, and yalign.
 * The scale settings are used to specify how much the child widget should
 * expand to fill the space allocated to the GtkAlignment.
 * The values can range from 0 (meaning the child doesn't expand at all) to
 * 1 (meaning the child expands to fill all of the available space).
 * The align settings are used to place the child widget within the available
 * area. The values range from 0 (top or left) to 1 (bottom or right).
 * Of course, if the scale settings are both set to 1, the alignment settings
 * have no effect.
 * Note
 * Note that the desired effect can in most cases be achieved by using the
 * "halign", "valign" and "margin" properties
 * on the child widget, so GtkAlignment should not be used in new code.
 */
public class Alignment : Bin
{
	
	/** the main Gtk struct */
	protected GtkAlignment* gtkAlignment;
	
	
	public GtkAlignment* getAlignmentStruct()
	{
		return gtkAlignment;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAlignment;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAlignment* gtkAlignment)
	{
		super(cast(GtkBin*)gtkAlignment);
		this.gtkAlignment = gtkAlignment;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkAlignment = cast(GtkAlignment*)obj;
	}
	
	/** */
	public static Alignment center(Widget widget)
	{
		Alignment a = new Alignment(0.5, 0.5, 0, 0);
		a.add(widget);
		return a;
	}
	
	/** */
	public static Alignment north(Widget widget)
	{
		Alignment a = new Alignment(0.5, 0.0, 0, 0);
		a.add(widget);
		return a;
	}
	
	/** */
	public static Alignment south(Widget widget)
	{
		Alignment a = new Alignment(0.5, 1.0, 0, 0);
		a.add(widget);
		return a;
	}
	
	/** */
	public static Alignment east(Widget widget)
	{
		Alignment a = new Alignment(1.0, 0.5, 0, 0);
		a.add(widget);
		return a;
	}
	
	/** */
	public static Alignment west(Widget widget)
	{
		Alignment a = new Alignment(0.0, 0.5, 0, 0);
		a.add(widget);
		return a;
	}
	
	/** */
	public static Alignment northWest(Widget widget)
	{
		Alignment a = new Alignment(0.0, 0.0, 0, 0);
		a.add(widget);
		return a;
	}
	
	/** */
	public static Alignment southWest(Widget widget)
	{
		Alignment a = new Alignment(0.0, 0.5, 0, 0);
		a.add(widget);
		return a;
	}
	
	/** */
	public static Alignment northEast(Widget widget)
	{
		Alignment a = new Alignment(1.0, 0.0, 0, 0);
		a.add(widget);
		return a;
	}
	
	/** */
	public static Alignment southEast(Widget widget)
	{
		Alignment a = new Alignment(1.0, 1.0, 0, 0);
		a.add(widget);
		return a;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkAlignment.
	 * Params:
	 * xalign = the horizontal alignment of the child widget, from 0 (left) to 1
	 * (right).
	 * yalign = the vertical alignment of the child widget, from 0 (top) to 1
	 * (bottom).
	 * xscale = the amount that the child widget expands horizontally to fill up
	 * unused space, from 0 to 1.
	 * A value of 0 indicates that the child widget should never expand.
	 * A value of 1 indicates that the child widget will expand to fill all of the
	 * space allocated for the GtkAlignment.
	 * yscale = the amount that the child widget expands vertically to fill up
	 * unused space, from 0 to 1. The values are similar to xscale.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (float xalign, float yalign, float xscale, float yscale)
	{
		// GtkWidget * gtk_alignment_new (gfloat xalign,  gfloat yalign,  gfloat xscale,  gfloat yscale);
		auto p = gtk_alignment_new(xalign, yalign, xscale, yscale);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_alignment_new(xalign, yalign, xscale, yscale)");
		}
		this(cast(GtkAlignment*) p);
	}
	
	/**
	 * Sets the GtkAlignment values.
	 * Params:
	 * xalign = the horizontal alignment of the child widget, from 0 (left) to 1
	 * (right).
	 * yalign = the vertical alignment of the child widget, from 0 (top) to 1
	 * (bottom).
	 * xscale = the amount that the child widget expands horizontally to fill up
	 * unused space, from 0 to 1.
	 * A value of 0 indicates that the child widget should never expand.
	 * A value of 1 indicates that the child widget will expand to fill all of the
	 * space allocated for the GtkAlignment.
	 * yscale = the amount that the child widget expands vertically to fill up
	 * unused space, from 0 to 1. The values are similar to xscale.
	 */
	public void set(float xalign, float yalign, float xscale, float yscale)
	{
		// void gtk_alignment_set (GtkAlignment *alignment,  gfloat xalign,  gfloat yalign,  gfloat xscale,  gfloat yscale);
		gtk_alignment_set(gtkAlignment, xalign, yalign, xscale, yscale);
	}
	
	/**
	 * Gets the padding on the different sides of the widget.
	 * See gtk_alignment_set_padding().
	 * Since 2.4
	 * Params:
	 * paddingTop = location to store the padding for
	 * the top of the widget, or NULL. [out][allow-none]
	 * paddingBottom = location to store the padding
	 * for the bottom of the widget, or NULL. [out][allow-none]
	 * paddingLeft = location to store the padding
	 * for the left of the widget, or NULL. [out][allow-none]
	 * paddingRight = location to store the padding
	 * for the right of the widget, or NULL. [out][allow-none]
	 */
	public void getPadding(out uint paddingTop, out uint paddingBottom, out uint paddingLeft, out uint paddingRight)
	{
		// void gtk_alignment_get_padding (GtkAlignment *alignment,  guint *padding_top,  guint *padding_bottom,  guint *padding_left,  guint *padding_right);
		gtk_alignment_get_padding(gtkAlignment, &paddingTop, &paddingBottom, &paddingLeft, &paddingRight);
	}
	
	/**
	 * Sets the padding on the different sides of the widget.
	 * The padding adds blank space to the sides of the widget. For instance,
	 * this can be used to indent the child widget towards the right by adding
	 * padding on the left.
	 * Since 2.4
	 * Params:
	 * paddingTop = the padding at the top of the widget
	 * paddingBottom = the padding at the bottom of the widget
	 * paddingLeft = the padding at the left of the widget
	 * paddingRight = the padding at the right of the widget.
	 */
	public void setPadding(uint paddingTop, uint paddingBottom, uint paddingLeft, uint paddingRight)
	{
		// void gtk_alignment_set_padding (GtkAlignment *alignment,  guint padding_top,  guint padding_bottom,  guint padding_left,  guint padding_right);
		gtk_alignment_set_padding(gtkAlignment, paddingTop, paddingBottom, paddingLeft, paddingRight);
	}
}
