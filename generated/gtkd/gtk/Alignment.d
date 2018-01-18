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


module gtk.Alignment;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Bin;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkAlignment widget controls the alignment and size of its child widget.
 * It has four settings: xscale, yscale, xalign, and yalign.
 * 
 * The scale settings are used to specify how much the child widget should
 * expand to fill the space allocated to the #GtkAlignment.
 * The values can range from 0 (meaning the child doesn’t expand at all) to
 * 1 (meaning the child expands to fill all of the available space).
 * 
 * The align settings are used to place the child widget within the available
 * area. The values range from 0 (top or left) to 1 (bottom or right).
 * Of course, if the scale settings are both set to 1, the alignment settings
 * have no effect.
 * 
 * GtkAlignment has been deprecated in 3.14 and should not be used in
 * newly-written code. The desired effect can be achieved by using the
 * #GtkWidget:halign, #GtkWidget:valign and #GtkWidget:margin properties on the
 * child widget.
 */
public class Alignment : Bin
{
	/** the main Gtk struct */
	protected GtkAlignment* gtkAlignment;

	/** Get the main Gtk struct */
	public GtkAlignment* getAlignmentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAlignment;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAlignment;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAlignment* gtkAlignment, bool ownedRef = false)
	{
		this.gtkAlignment = gtkAlignment;
		super(cast(GtkBin*)gtkAlignment, ownedRef);
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

	/** */
	public static GType getType()
	{
		return gtk_alignment_get_type();
	}

	/**
	 * Creates a new #GtkAlignment.
	 *
	 * Deprecated: Use #GtkWidget alignment and margin properties
	 *
	 * Params:
	 *     xalign = the horizontal alignment of the child widget, from 0 (left) to 1
	 *         (right).
	 *     yalign = the vertical alignment of the child widget, from 0 (top) to 1
	 *         (bottom).
	 *     xscale = the amount that the child widget expands horizontally to fill up
	 *         unused space, from 0 to 1.
	 *         A value of 0 indicates that the child widget should never expand.
	 *         A value of 1 indicates that the child widget will expand to fill all of the
	 *         space allocated for the #GtkAlignment.
	 *     yscale = the amount that the child widget expands vertically to fill up
	 *         unused space, from 0 to 1. The values are similar to @xscale.
	 *
	 * Returns: the new #GtkAlignment
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(float xalign, float yalign, float xscale, float yscale)
	{
		auto p = gtk_alignment_new(xalign, yalign, xscale, yscale);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAlignment*) p);
	}

	/**
	 * Gets the padding on the different sides of the widget.
	 * See gtk_alignment_set_padding ().
	 *
	 * Deprecated: Use #GtkWidget alignment and margin properties
	 *
	 * Params:
	 *     paddingTop = location to store the padding for
	 *         the top of the widget, or %NULL
	 *     paddingBottom = location to store the padding
	 *         for the bottom of the widget, or %NULL
	 *     paddingLeft = location to store the padding
	 *         for the left of the widget, or %NULL
	 *     paddingRight = location to store the padding
	 *         for the right of the widget, or %NULL
	 *
	 * Since: 2.4
	 */
	public void getPadding(out uint paddingTop, out uint paddingBottom, out uint paddingLeft, out uint paddingRight)
	{
		gtk_alignment_get_padding(gtkAlignment, &paddingTop, &paddingBottom, &paddingLeft, &paddingRight);
	}

	/**
	 * Sets the #GtkAlignment values.
	 *
	 * Deprecated: Use #GtkWidget alignment and margin properties
	 *
	 * Params:
	 *     xalign = the horizontal alignment of the child widget, from 0 (left) to 1
	 *         (right).
	 *     yalign = the vertical alignment of the child widget, from 0 (top) to 1
	 *         (bottom).
	 *     xscale = the amount that the child widget expands horizontally to fill up
	 *         unused space, from 0 to 1.
	 *         A value of 0 indicates that the child widget should never expand.
	 *         A value of 1 indicates that the child widget will expand to fill all of the
	 *         space allocated for the #GtkAlignment.
	 *     yscale = the amount that the child widget expands vertically to fill up
	 *         unused space, from 0 to 1. The values are similar to @xscale.
	 */
	public void set(float xalign, float yalign, float xscale, float yscale)
	{
		gtk_alignment_set(gtkAlignment, xalign, yalign, xscale, yscale);
	}

	/**
	 * Sets the padding on the different sides of the widget.
	 * The padding adds blank space to the sides of the widget. For instance,
	 * this can be used to indent the child widget towards the right by adding
	 * padding on the left.
	 *
	 * Deprecated: Use #GtkWidget alignment and margin properties
	 *
	 * Params:
	 *     paddingTop = the padding at the top of the widget
	 *     paddingBottom = the padding at the bottom of the widget
	 *     paddingLeft = the padding at the left of the widget
	 *     paddingRight = the padding at the right of the widget.
	 *
	 * Since: 2.4
	 */
	public void setPadding(uint paddingTop, uint paddingBottom, uint paddingLeft, uint paddingRight)
	{
		gtk_alignment_set_padding(gtkAlignment, paddingTop, paddingBottom, paddingLeft, paddingRight);
	}
}
