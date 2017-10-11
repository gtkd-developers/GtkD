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


module peas.PluginManager;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Box;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import peas.Engine;
private import peas.c.functions;
public  import peas.c.types;


/**
 * The #PeasGtkPluginManager structure contains only private data
 * and should only be accessed using the provided API.
 */
public class PluginManager : Box
{
	/** the main Gtk struct */
	protected PeasGtkPluginManager* peasGtkPluginManager;

	/** Get the main Gtk struct */
	public PeasGtkPluginManager* getPluginManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return peasGtkPluginManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)peasGtkPluginManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PeasGtkPluginManager* peasGtkPluginManager, bool ownedRef = false)
	{
		this.peasGtkPluginManager = peasGtkPluginManager;
		super(cast(GtkBox*)peasGtkPluginManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return peas_gtk_plugin_manager_get_type();
	}

	/**
	 * Creates a new plugin manager for the given #PeasEngine.
	 *
	 * If @engine is %NULL, then the default engine will be used.
	 *
	 * Params:
	 *     engine = A #PeasEngine, or %NULL.
	 *
	 * Returns: the new #PeasGtkPluginManager.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Engine engine)
	{
		auto p = peas_gtk_plugin_manager_new((engine is null) ? null : engine.getEngineStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PeasGtkPluginManager*) p);
	}

	/**
	 * Returns the #PeasGtkPluginManagerView of @pm.
	 *
	 * Returns: the #GtkTreeView of @pm.
	 */
	public Widget getView()
	{
		auto p = peas_gtk_plugin_manager_get_view(peasGtkPluginManager);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
}
