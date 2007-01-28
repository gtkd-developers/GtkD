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
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.Alignment;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import gtk.Widget;



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
 */
private import gtk.Bin;
public class Alignment : Bin
{
	
	/** the main Gtk struct */
	protected GtkAlignment* gtkAlignment;
	
	
	public GtkAlignment* getAlignmentStruct()
	{
		return gtkAlignment;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	public static Alignment center(Widget widget)
	{
		Alignment a = new Alignment(0.5, 0.5, 0, 0);
		a.add(widget);
		return a;
	}
	
	public static Alignment north(Widget widget)
	{
		Alignment a = new Alignment(0.5, 0.0, 0, 0);
		a.add(widget);
		return a;
	}
	
	public static Alignment south(Widget widget)
	{
		Alignment a = new Alignment(0.5, 1.0, 0, 0);
		a.add(widget);
		return a;
	}
	
	public static Alignment east(Widget widget)
	{
		Alignment a = new Alignment(1.0, 0.5, 0, 0);
		a.add(widget);
		return a;
	}
	
	public static Alignment west(Widget widget)
	{
		Alignment a = new Alignment(0.0, 0.5, 0, 0);
		a.add(widget);
		return a;
	}

	public static Alignment northWest(Widget widget)
	{
		Alignment a = new Alignment(0.0, 0.0, 0, 0);
		a.add(widget);
		return a;
	}

	public static Alignment southWest(Widget widget)
	{
		Alignment a = new Alignment(0.0, 0.5, 0, 0);
		a.add(widget);
		return a;
	}

	public static Alignment northEast(Widget widget)
	{
		Alignment a = new Alignment(1.0, 0.0, 0, 0);
		a.add(widget);
		return a;
	}

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
	 * xalign:
	 * the horizontal alignment of the child widget, from 0 (left) to 1
	 * (right).
	 * yalign:
	 * the vertical alignment of the child widget, from 0 (top) to 1
	 * (bottom).
	 * xscale:
	 * the amount that the child widget expands horizontally to fill up
	 * unused space, from 0 to 1.
	 * A value of 0 indicates that the child widget should never expand.
	 * A value of 1 indicates that the child widget will expand to fill all of the
	 * space allocated for the GtkAlignment.
	 * yscale:
	 * the amount that the child widget expands vertically to fill up
	 * unused space, from 0 to 1. The values are similar to xscale.
	 * Returns:
	 * the new GtkAlignment.
	 */
	public this (float xalign, float yalign, float xscale, float yscale)
	{
		// GtkWidget* gtk_alignment_new (gfloat xalign,  gfloat yalign,  gfloat xscale,  gfloat yscale);
		this(cast(GtkAlignment*)gtk_alignment_new(xalign, yalign, xscale, yscale) );
	}
	
	/**
	 * Sets the GtkAlignment values.
	 * alignment:
	 * a GtkAlignment.
	 * xalign:
	 * the horizontal alignment of the child widget, from 0 (left) to 1
	 * (right).
	 * yalign:
	 * the vertical alignment of the child widget, from 0 (top) to 1
	 * (bottom).
	 * xscale:
	 * the amount that the child widget expands horizontally to fill up
	 * unused space, from 0 to 1.
	 * A value of 0 indicates that the child widget should never expand.
	 * A value of 1 indicates that the child widget will expand to fill all of the
	 * space allocated for the GtkAlignment.
	 * yscale:
	 * the amount that the child widget expands vertically to fill up
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
	 * alignment:
	 *  a GtkAlignment
	 * padding_top:
	 *  location to store the padding for the top of the widget, or NULL
	 * padding_bottom:
	 *  location to store the padding for the bottom of the widget, or NULL
	 * padding_left:
	 *  location to store the padding for the left of the widget, or NULL
	 * padding_right:
	 *  location to store the padding for the right of the widget, or NULL
	 * Since 2.4
	 */
	public void getPadding(uint* paddingTop, uint* paddingBottom, uint* paddingLeft, uint* paddingRight)
	{
		// void gtk_alignment_get_padding (GtkAlignment *alignment,  guint *padding_top,  guint *padding_bottom,  guint *padding_left,  guint *padding_right);
		gtk_alignment_get_padding(gtkAlignment, paddingTop, paddingBottom, paddingLeft, paddingRight);
	}
	
	/**
	 * Sets the padding on the different sides of the widget.
	 * The padding adds blank space to the sides of the widget. For instance,
	 * this can be used to indent the child widget towards the right by adding
	 * padding on the left.
	 * alignment:
	 *  a GtkAlignment
	 * padding_top:
	 *  the padding at the top of the widget
	 * padding_bottom:
	 *  the padding at the bottom of the widget
	 * padding_left:
	 *  the padding at the left of the widget
	 * padding_right:
	 *  the padding at the right of the widget.
	 * Since 2.4
	 * Property Details
	 * The "bottom-padding" property
	 *  "bottom-padding" guint : Read / Write
	 * The padding to insert at the bottom of the widget.
	 * Allowed values: <= G_MAXINT
	 * Default value: 0
	 * Since 2.4
	 */
	public void setPadding(uint paddingTop, uint paddingBottom, uint paddingLeft, uint paddingRight)
	{
		// void gtk_alignment_set_padding (GtkAlignment *alignment,  guint padding_top,  guint padding_bottom,  guint padding_left,  guint padding_right);
		gtk_alignment_set_padding(gtkAlignment, paddingTop, paddingBottom, paddingLeft, paddingRight);
	}
	
	
	
	
	
	
	
}
