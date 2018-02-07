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


module gtk.ToggleToolButton;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ToolButton;
private import gtk.ToolItem;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkToggleToolButton is a #GtkToolItem that contains a toggle
 * button.
 * 
 * Use gtk_toggle_tool_button_new() to create a new GtkToggleToolButton.
 * 
 * # CSS nodes
 * 
 * GtkToggleToolButton has a single CSS node with name togglebutton.
 */
public class ToggleToolButton : ToolButton
{
	/** the main Gtk struct */
	protected GtkToggleToolButton* gtkToggleToolButton;

	/** Get the main Gtk struct */
	public GtkToggleToolButton* getToggleToolButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkToggleToolButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToggleToolButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkToggleToolButton* gtkToggleToolButton, bool ownedRef = false)
	{
		this.gtkToggleToolButton = gtkToggleToolButton;
		super(cast(GtkToolButton*)gtkToggleToolButton, ownedRef);
	}

	/**
	 * Creates a new GtkToggleToolButton containing the image and text
	 * from a stock item.
	 */
	public this(StockID stockId)
	{
		this(cast(string)stockId);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_toggle_tool_button_get_type();
	}

	/**
	 * Returns a new #GtkToggleToolButton
	 *
	 * Returns: a newly created #GtkToggleToolButton
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_toggle_tool_button_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkToggleToolButton*) p);
	}

	/**
	 * Creates a new #GtkToggleToolButton containing the image and text from a
	 * stock item. Some stock ids have preprocessor macros like #GTK_STOCK_OK
	 * and #GTK_STOCK_APPLY.
	 *
	 * It is an error if @stock_id is not a name of a stock item.
	 *
	 * Deprecated: Use gtk_toggle_tool_button_new() instead.
	 *
	 * Params:
	 *     stockId = the name of the stock item
	 *
	 * Returns: A new #GtkToggleToolButton
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string stockId)
	{
		auto p = gtk_toggle_tool_button_new_from_stock(Str.toStringz(stockId));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_stock");
		}

		this(cast(GtkToggleToolButton*) p);
	}

	/**
	 * Queries a #GtkToggleToolButton and returns its current state.
	 * Returns %TRUE if the toggle button is pressed in and %FALSE if it is raised.
	 *
	 * Returns: %TRUE if the toggle tool button is pressed in, %FALSE if not
	 *
	 * Since: 2.4
	 */
	public bool getActive()
	{
		return gtk_toggle_tool_button_get_active(gtkToggleToolButton) != 0;
	}

	/**
	 * Sets the status of the toggle tool button. Set to %TRUE if you
	 * want the GtkToggleButton to be “pressed in”, and %FALSE to raise it.
	 * This action causes the toggled signal to be emitted.
	 *
	 * Params:
	 *     isActive = whether @button should be active
	 *
	 * Since: 2.4
	 */
	public void setActive(bool isActive)
	{
		gtk_toggle_tool_button_set_active(gtkToggleToolButton, isActive);
	}

	/**
	 * Emitted whenever the toggle tool button changes state.
	 */
	gulong addOnToggled(void delegate(ToggleToolButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
