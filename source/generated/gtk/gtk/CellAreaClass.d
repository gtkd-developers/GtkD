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


module gtk.CellAreaClass;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gtk.c.functions;
public  import gtk.c.types;


/** */
public class CellAreaClass
{
	/** the main Gtk struct */
	protected GtkCellAreaClass* gtkCellAreaClass;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkCellAreaClass* getCellAreaClassStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellAreaClass;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCellAreaClass;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellAreaClass* gtkCellAreaClass, bool ownedRef = false)
	{
		this.gtkCellAreaClass = gtkCellAreaClass;
		this.ownedRef = ownedRef;
	}


	/**
	 * Finds a cell property of a cell area class by name.
	 *
	 * Params:
	 *     propertyName = the name of the child property to find
	 *
	 * Returns: the `GParamSpec` of the child property
	 */
	public ParamSpec findCellProperty(string propertyName)
	{
		auto __p = gtk_cell_area_class_find_cell_property(gtkCellAreaClass, Str.toStringz(propertyName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) __p);
	}

	/**
	 * Installs a cell property on a cell area class.
	 *
	 * Params:
	 *     propertyId = the id for the property
	 *     pspec = the `GParamSpec` for the property
	 */
	public void installCellProperty(uint propertyId, ParamSpec pspec)
	{
		gtk_cell_area_class_install_cell_property(gtkCellAreaClass, propertyId, (pspec is null) ? null : pspec.getParamSpecStruct());
	}

	/**
	 * Returns all cell properties of a cell area class.
	 *
	 * Returns: a newly
	 *     allocated %NULL-terminated array of `GParamSpec`*.  The array
	 *     must be freed with g_free().
	 */
	public ParamSpec[] listCellProperties()
	{
		uint nProperties;

		auto __p = gtk_cell_area_class_list_cell_properties(gtkCellAreaClass, &nProperties);

		if(__p is null)
		{
			return null;
		}

		ParamSpec[] arr = new ParamSpec[nProperties];
		for(int i = 0; i < nProperties; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) __p[i]);
		}

		return arr;
	}
}
