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
private import gtk.Container;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


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
public class ActionBar : Container
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
		super(cast(GtkContainer*)gtkActionBar, ownedRef);
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
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_action_bar_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkActionBar*) __p);
	}

	/**
	 * Retrieves the center bar widget of the bar.
	 *
	 * Returns: the center #GtkWidget or %NULL.
	 */
	public Widget getCenterWidget()
	{
		auto __p = gtk_action_bar_get_center_widget(gtkActionBar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the value of the #GtkActionBar:revealed property.
	 *
	 * Returns: the current value of the #GtkActionBar:revealed property.
	 */
	public bool getRevealed()
	{
		return gtk_action_bar_get_revealed(gtkActionBar) != 0;
	}

	/**
	 * Adds @child to @action_bar, packed with reference to the
	 * end of the @action_bar.
	 *
	 * Params:
	 *     child = the #GtkWidget to be added to @action_bar
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
	 */
	public void setCenterWidget(Widget centerWidget)
	{
		gtk_action_bar_set_center_widget(gtkActionBar, (centerWidget is null) ? null : centerWidget.getWidgetStruct());
	}

	/**
	 * Sets the #GtkActionBar:revealed property to @revealed. Changing this will
	 * make @action_bar reveal (%TRUE) or conceal (%FALSE) itself via a sliding
	 * transition.
	 *
	 * Note: this does not show or hide @action_bar in the #GtkWidget:visible sense,
	 * so revealing has no effect if #GtkWidget:visible is %FALSE.
	 *
	 * Params:
	 *     revealed = The new value of the property
	 */
	public void setRevealed(bool revealed)
	{
		gtk_action_bar_set_revealed(gtkActionBar, revealed);
	}
}
