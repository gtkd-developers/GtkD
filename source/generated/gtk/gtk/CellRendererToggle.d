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


module gtk.CellRendererToggle;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellRenderer;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * Renders a toggle button in a cell
 * 
 * `GtkCellRendererToggle` renders a toggle button in a cell. The
 * button is drawn as a radio or a checkbutton, depending on the
 * `GtkCellRendererToggle:radio` property.
 * When activated, it emits the `GtkCellRendererToggle::toggled` signal.
 */
public class CellRendererToggle : CellRenderer
{
	/** the main Gtk struct */
	protected GtkCellRendererToggle* gtkCellRendererToggle;

	/** Get the main Gtk struct */
	public GtkCellRendererToggle* getCellRendererToggleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellRendererToggle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererToggle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellRendererToggle* gtkCellRendererToggle, bool ownedRef = false)
	{
		this.gtkCellRendererToggle = gtkCellRendererToggle;
		super(cast(GtkCellRenderer*)gtkCellRendererToggle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_cell_renderer_toggle_get_type();
	}

	/**
	 * Creates a new `GtkCellRendererToggle`. Adjust rendering
	 * parameters using object properties. Object properties can be set
	 * globally (with g_object_set()). Also, with `GtkTreeViewColumn`, you
	 * can bind a property to a value in a `GtkTreeModel`. For example, you
	 * can bind the “active” property on the cell renderer to a boolean value
	 * in the model, thus causing the check button to reflect the state of
	 * the model.
	 *
	 * Returns: the new cell renderer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_cell_renderer_toggle_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCellRendererToggle*) __p);
	}

	/**
	 * Returns whether the cell renderer is activatable. See
	 * gtk_cell_renderer_toggle_set_activatable().
	 *
	 * Returns: %TRUE if the cell renderer is activatable.
	 */
	public bool getActivatable()
	{
		return gtk_cell_renderer_toggle_get_activatable(gtkCellRendererToggle) != 0;
	}

	/**
	 * Returns whether the cell renderer is active. See
	 * gtk_cell_renderer_toggle_set_active().
	 *
	 * Returns: %TRUE if the cell renderer is active.
	 */
	public bool getActive()
	{
		return gtk_cell_renderer_toggle_get_active(gtkCellRendererToggle) != 0;
	}

	/**
	 * Returns whether we’re rendering radio toggles rather than checkboxes.
	 *
	 * Returns: %TRUE if we’re rendering radio toggles rather than checkboxes
	 */
	public bool getRadio()
	{
		return gtk_cell_renderer_toggle_get_radio(gtkCellRendererToggle) != 0;
	}

	/**
	 * Makes the cell renderer activatable.
	 *
	 * Params:
	 *     setting = the value to set.
	 */
	public void setActivatable(bool setting)
	{
		gtk_cell_renderer_toggle_set_activatable(gtkCellRendererToggle, setting);
	}

	/**
	 * Activates or deactivates a cell renderer.
	 *
	 * Params:
	 *     setting = the value to set.
	 */
	public void setActive(bool setting)
	{
		gtk_cell_renderer_toggle_set_active(gtkCellRendererToggle, setting);
	}

	/**
	 * If @radio is %TRUE, the cell renderer renders a radio toggle
	 * (i.e. a toggle in a group of mutually-exclusive toggles).
	 * If %FALSE, it renders a check toggle (a standalone boolean option).
	 * This can be set globally for the cell renderer, or changed just
	 * before rendering each cell in the model (for `GtkTreeView`, you set
	 * up a per-row setting using `GtkTreeViewColumn` to associate model
	 * columns with cell renderer properties).
	 *
	 * Params:
	 *     radio = %TRUE to make the toggle look like a radio button
	 */
	public void setRadio(bool radio)
	{
		gtk_cell_renderer_toggle_set_radio(gtkCellRendererToggle, radio);
	}

	/**
	 * The ::toggled signal is emitted when the cell is toggled.
	 *
	 * It is the responsibility of the application to update the model
	 * with the correct value to store at @path.  Often this is simply the
	 * opposite of the value currently stored at @path.
	 *
	 * Params:
	 *     path = string representation of `GtkTreePath` describing the
	 *         event location
	 */
	gulong addOnToggled(void delegate(string, CellRendererToggle) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
