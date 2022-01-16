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


module gtk.Scrollbar;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Adjustment;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * The `GtkScrollbar` widget is a horizontal or vertical scrollbar.
 * 
 * ![An example GtkScrollbar](scrollbar.png)
 * 
 * Its position and movement are controlled by the adjustment that is passed to
 * or created by [ctor@Gtk.Scrollbar.new]. See [class@Gtk.Adjustment] for more
 * details. The [property@Gtk.Adjustment:value] field sets the position of the
 * thumb and must be between [property@Gtk.Adjustment:lower] and
 * [property@Gtk.Adjustment:upper] - [property@Gtk.Adjustment:page-size].
 * The [property@Gtk.Adjustment:page-size] represents the size of the visible
 * scrollable area.
 * 
 * The fields [property@Gtk.Adjustment:step-increment] and
 * [property@Gtk.Adjustment:page-increment] fields are added to or subtracted
 * from the [property@Gtk.Adjustment:value] when the user asks to move by a step
 * (using e.g. the cursor arrow keys) or by a page (using e.g. the Page Down/Up
 * keys).
 * 
 * # CSS nodes
 * 
 * ```
 * scrollbar
 * ╰── range[.fine-tune]
 * ╰── trough
 * ╰── slider
 * ```
 * 
 * `GtkScrollbar` has a main CSS node with name scrollbar and a subnode for its
 * contents. The main node gets the .horizontal or .vertical style classes applied,
 * depending on the scrollbar's orientation.
 * 
 * The range node gets the style class .fine-tune added when the scrollbar is
 * in 'fine-tuning' mode.
 * 
 * Other style classes that may be added to scrollbars inside
 * [class@Gtk.ScrolledWindow] include the positional classes (.left, .right,
 * .top, .bottom) and style classes related to overlay scrolling (.overlay-indicator,
 * .dragging, .hovering).
 * 
 * # Accessibility
 * 
 * `GtkScrollbar` uses the %GTK_ACCESSIBLE_ROLE_SCROLLBAR role.
 */
public class Scrollbar : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected GtkScrollbar* gtkScrollbar;

	/** Get the main Gtk struct */
	public GtkScrollbar* getScrollbarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkScrollbar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkScrollbar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkScrollbar* gtkScrollbar, bool ownedRef = false)
	{
		this.gtkScrollbar = gtkScrollbar;
		super(cast(GtkWidget*)gtkScrollbar, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkScrollbar);


	/** */
	public static GType getType()
	{
		return gtk_scrollbar_get_type();
	}

	/**
	 * Creates a new scrollbar with the given orientation.
	 *
	 * Params:
	 *     orientation = the scrollbar’s orientation.
	 *     adjustment = the [class@Gtk.Adjustment] to use, or %NULL
	 *         to create a new adjustment.
	 *
	 * Returns: the new `GtkScrollbar`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation, Adjustment adjustment)
	{
		auto __p = gtk_scrollbar_new(orientation, (adjustment is null) ? null : adjustment.getAdjustmentStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkScrollbar*) __p);
	}

	/**
	 * Returns the scrollbar's adjustment.
	 *
	 * Returns: the scrollbar's adjustment
	 */
	public Adjustment getAdjustment()
	{
		auto __p = gtk_scrollbar_get_adjustment(gtkScrollbar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) __p);
	}

	/**
	 * Makes the scrollbar use the given adjustment.
	 *
	 * Params:
	 *     adjustment = the adjustment to set
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		gtk_scrollbar_set_adjustment(gtkScrollbar, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
}
