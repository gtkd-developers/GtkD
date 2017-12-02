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


module gtk.ScrollableT;

public  import glib.MemorySlice;
public  import gobject.ObjectG;
public  import gtk.Adjustment;
public  import gtk.Border;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkScrollable is an interface that is implemented by widgets with native
 * scrolling ability.
 * 
 * To implement this interface you should override the
 * #GtkScrollable:hadjustment and #GtkScrollable:vadjustment properties.
 * 
 * ## Creating a scrollable widget
 * 
 * All scrollable widgets should do the following.
 * 
 * - When a parent widget sets the scrollable child widget’s adjustments,
 * the widget should populate the adjustments’
 * #GtkAdjustment:lower, #GtkAdjustment:upper,
 * #GtkAdjustment:step-increment, #GtkAdjustment:page-increment and
 * #GtkAdjustment:page-size properties and connect to the
 * #GtkAdjustment::value-changed signal.
 * 
 * - Because its preferred size is the size for a fully expanded widget,
 * the scrollable widget must be able to cope with underallocations.
 * This means that it must accept any value passed to its
 * #GtkWidgetClass.size_allocate() function.
 * 
 * - When the parent allocates space to the scrollable child widget,
 * the widget should update the adjustments’ properties with new values.
 * 
 * - When any of the adjustments emits the #GtkAdjustment::value-changed signal,
 * the scrollable widget should scroll its contents.
 */
public template ScrollableT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkScrollable* getScrollableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkScrollable*)getStruct();
	}


	/**
	 * Returns the size of a non-scrolling border around the
	 * outside of the scrollable. An example for this would
	 * be treeview headers. GTK+ can use this information to
	 * display overlayed graphics, like the overshoot indication,
	 * at the right position.
	 *
	 * Params:
	 *     border = return location for the results
	 *
	 * Returns: %TRUE if @border has been set
	 *
	 * Since: 3.16
	 */
	public bool getBorder(out Border border)
	{
		GtkBorder* outborder = sliceNew!GtkBorder();

		auto p = gtk_scrollable_get_border(getScrollableStruct(), outborder) != 0;

		border = ObjectG.getDObject!(Border)(outborder, true);

		return p;
	}

	/**
	 * Retrieves the #GtkAdjustment used for horizontal scrolling.
	 *
	 * Returns: horizontal #GtkAdjustment.
	 *
	 * Since: 3.0
	 */
	public Adjustment getHadjustment()
	{
		auto p = gtk_scrollable_get_hadjustment(getScrollableStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Gets the horizontal #GtkScrollablePolicy.
	 *
	 * Returns: The horizontal #GtkScrollablePolicy.
	 *
	 * Since: 3.0
	 */
	public GtkScrollablePolicy getHscrollPolicy()
	{
		return gtk_scrollable_get_hscroll_policy(getScrollableStruct());
	}

	/**
	 * Retrieves the #GtkAdjustment used for vertical scrolling.
	 *
	 * Returns: vertical #GtkAdjustment.
	 *
	 * Since: 3.0
	 */
	public Adjustment getVadjustment()
	{
		auto p = gtk_scrollable_get_vadjustment(getScrollableStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Gets the vertical #GtkScrollablePolicy.
	 *
	 * Returns: The vertical #GtkScrollablePolicy.
	 *
	 * Since: 3.0
	 */
	public GtkScrollablePolicy getVscrollPolicy()
	{
		return gtk_scrollable_get_vscroll_policy(getScrollableStruct());
	}

	/**
	 * Sets the horizontal adjustment of the #GtkScrollable.
	 *
	 * Params:
	 *     hadjustment = a #GtkAdjustment
	 *
	 * Since: 3.0
	 */
	public void setHadjustment(Adjustment hadjustment)
	{
		gtk_scrollable_set_hadjustment(getScrollableStruct(), (hadjustment is null) ? null : hadjustment.getAdjustmentStruct());
	}

	/**
	 * Sets the #GtkScrollablePolicy to determine whether
	 * horizontal scrolling should start below the minimum width or
	 * below the natural width.
	 *
	 * Params:
	 *     policy = the horizontal #GtkScrollablePolicy
	 *
	 * Since: 3.0
	 */
	public void setHscrollPolicy(GtkScrollablePolicy policy)
	{
		gtk_scrollable_set_hscroll_policy(getScrollableStruct(), policy);
	}

	/**
	 * Sets the vertical adjustment of the #GtkScrollable.
	 *
	 * Params:
	 *     vadjustment = a #GtkAdjustment
	 *
	 * Since: 3.0
	 */
	public void setVadjustment(Adjustment vadjustment)
	{
		gtk_scrollable_set_vadjustment(getScrollableStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());
	}

	/**
	 * Sets the #GtkScrollablePolicy to determine whether
	 * vertical scrolling should start below the minimum height or
	 * below the natural height.
	 *
	 * Params:
	 *     policy = the vertical #GtkScrollablePolicy
	 *
	 * Since: 3.0
	 */
	public void setVscrollPolicy(GtkScrollablePolicy policy)
	{
		gtk_scrollable_set_vscroll_policy(getScrollableStruct(), policy);
	}
}
