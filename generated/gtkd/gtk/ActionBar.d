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


module gtk.ActionBar;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Bin;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkActionBar is designed to present contextual actions. It is
 * expected to be displayed below the content and expand horizontally
 * to fill the area.
 * 
 * It allows placing children at the start or the end. In addition, it
 * contains an internal centered box which is centered with respect to
 * the full width of the box, even if the children at either side take
 * up different amounts of space.
 * 
 * # CSS nodes
 * 
 * GtkActionBar has a single CSS node with name actionbar.
 */
public class ActionBar : Bin
{
	/** the main Gtk struct */
	protected GtkActionBar* gtkActionBar;

	/** Get the main Gtk struct */
	public GtkActionBar* getActionBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkActionBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkActionBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkActionBar* gtkActionBar, bool ownedRef = false)
	{
		this.gtkActionBar = gtkActionBar;
		super(cast(GtkBin*)gtkActionBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_action_bar_get_type();
	}

	/**
	 * Creates a new #GtkActionBar widget.
	 *
	 * Returns: a new #GtkActionBar
	 *
	 * Since: 3.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_action_bar_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkActionBar*) p);
	}

	/**
	 * Retrieves the center bar widget of the bar.
	 *
	 * Returns: the center #GtkWidget or %NULL.
	 *
	 * Since: 3.12
	 */
	public Widget getCenterWidget()
	{
		auto p = gtk_action_bar_get_center_widget(gtkActionBar);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Adds @child to @action_bar, packed with reference to the
	 * end of the @action_bar.
	 *
	 * Params:
	 *     child = the #GtkWidget to be added to @action_bar
	 *
	 * Since: 3.12
	 */
	public void packEnd(Widget child)
	{
		gtk_action_bar_pack_end(gtkActionBar, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Adds @child to @action_bar, packed with reference to the
	 * start of the @action_bar.
	 *
	 * Params:
	 *     child = the #GtkWidget to be added to @action_bar
	 *
	 * Since: 3.12
	 */
	public void packStart(Widget child)
	{
		gtk_action_bar_pack_start(gtkActionBar, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the center widget for the #GtkActionBar.
	 *
	 * Params:
	 *     centerWidget = a widget to use for the center
	 *
	 * Since: 3.12
	 */
	public void setCenterWidget(Widget centerWidget)
	{
		gtk_action_bar_set_center_widget(gtkActionBar, (centerWidget is null) ? null : centerWidget.getWidgetStruct());
	}
}
