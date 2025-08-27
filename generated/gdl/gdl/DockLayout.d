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


module gdl.DockLayout;

private import gdl.DockMaster;
private import gdl.c.functions;
public  import gdl.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;


/**
 * The GdlDockLayout struct contains only private fields
 * and should not be directly accessed.
 */
public class DockLayout : ObjectG
{
	/** the main Gtk struct */
	protected GdlDockLayout* gdlDockLayout;

	/** Get the main Gtk struct */
	public GdlDockLayout* getDockLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDockLayout;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlDockLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDockLayout* gdlDockLayout, bool ownedRef = false)
	{
		this.gdlDockLayout = gdlDockLayout;
		super(cast(GObject*)gdlDockLayout, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_dock_layout_get_type();
	}

	/**
	 * Creates a new #GdlDockLayout. Instead of setting @master
	 * directly with a master object, it is possible to use a #GdlDockObject, in
	 * this case the layout will be attached to the same master than the dock
	 * object.
	 *
	 * Params:
	 *     master = A master or a dock object to which the layout will be attached.
	 *
	 * Returns: New #GdlDockLayout item.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectG master)
	{
		auto __p = gdl_dock_layout_new((master is null) ? null : master.getObjectGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdlDockLayout*) __p, true);
	}

	/**
	 * Attach the @layout to the @master and delete the reference to
	 * the master that the layout attached previously.
	 *
	 * Deprecated 3.6: Use gdl_dock_layout_set_master() instead.
	 *
	 * Params:
	 *     master = The master object to which the layout will be attached
	 */
	public void attach(DockMaster master)
	{
		gdl_dock_layout_attach(gdlDockLayout, (master is null) ? null : master.getDockMasterStruct());
	}

	/**
	 * Deletes the layout with the given name from the memory.
	 * This will set #GdlDockLayout:dirty to %TRUE.
	 *
	 * Params:
	 *     name = The name of the layout to delete.
	 */
	public void deleteLayout(string name)
	{
		gdl_dock_layout_delete_layout(gdlDockLayout, Str.toStringz(name));
	}

	/**
	 * Get the list of layout names including or not the default layout.
	 *
	 * Params:
	 *     includeDefault = %TRUE to include the default layout.
	 *
	 * Returns: a #GList list
	 *     holding the layout names. You must first free each element in the list
	 *     with g_free(), then free the list itself with g_list_free().
	 */
	public ListG getLayouts(bool includeDefault)
	{
		auto __p = gdl_dock_layout_get_layouts(gdlDockLayout, includeDefault);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Retrieves the master of the object.
	 *
	 * Returns: a #GdlDockMaster object
	 *
	 * Since: 3.6
	 */
	public ObjectG getMaster()
	{
		auto __p = gdl_dock_layout_get_master(gdlDockLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Checks whether the XML tree in memory is different from the file where the layout was saved.
	 *
	 * Returns: %TRUE is the layout in the memory is different from the file, else %FALSE.
	 */
	public bool isDirty()
	{
		return gdl_dock_layout_is_dirty(gdlDockLayout) != 0;
	}

	/**
	 * Loads the layout from file with the given @filename.
	 * This will set #GdlDockLayout:dirty to %FALSE.
	 *
	 * Params:
	 *     filename = The name of the file to load.
	 *
	 * Returns: %TRUE if @layout successfully loaded else %FALSE
	 */
	public bool loadFromFile(string filename)
	{
		return gdl_dock_layout_load_from_file(gdlDockLayout, Str.toStringz(filename)) != 0;
	}

	/**
	 * Loads the layout with the given name from the memory.
	 * This will set #GdlDockLayout:dirty to %TRUE.
	 *
	 * See also gdl_dock_layout_load_from_file()
	 *
	 * Params:
	 *     name = The name of the layout to load or %NULL for a default layout name.
	 *
	 * Returns: %TRUE if layout successfully loaded else %FALSE
	 */
	public bool loadLayout(string name)
	{
		return gdl_dock_layout_load_layout(gdlDockLayout, Str.toStringz(name)) != 0;
	}

	/**
	 * Saves the @layout with the given name to the memory.
	 * This will set #GdlDockLayout:dirty to %TRUE.
	 *
	 * See also gdl_dock_layout_save_to_file().
	 *
	 * Params:
	 *     name = The name of the layout to save or %NULL for a default layout name.
	 */
	public void saveLayout(string name)
	{
		gdl_dock_layout_save_layout(gdlDockLayout, Str.toStringz(name));
	}

	/**
	 * This function saves the current layout in XML format to
	 * the file with the given @filename.
	 *
	 * Params:
	 *     filename = Name of the file we want to save in layout
	 *
	 * Returns: %TRUE if @layout successfuly save to the file, otherwise %FALSE.
	 */
	public bool saveToFile(string filename)
	{
		return gdl_dock_layout_save_to_file(gdlDockLayout, Str.toStringz(filename)) != 0;
	}

	/**
	 * Attach the @layout to the @master and delete the reference to
	 * the master that the layout attached previously. Instead of setting @master
	 * directly with the master object, it is possible to use a #GdlDockObject, in
	 * this case the layout will be attached to the same master than the dock
	 * object.
	 *
	 * Params:
	 *     master = The master object to which the layout will be attached
	 */
	public void setMaster(ObjectG master)
	{
		gdl_dock_layout_set_master(gdlDockLayout, (master is null) ? null : master.getObjectGStruct());
	}
}
