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


module peas.ObjectModule;

private import glib.ConstructionException;
private import glib.Module;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.TypeModule;
private import gobject.TypePluginIF;
private import gobject.TypePluginT;
private import peas.c.functions;
public  import peas.c.types;


/**
 * The #PeasObjectModule structure contains only private data and should only
 * be accessed using the provided API.
 */
public class ObjectModule : TypeModule
{
	/** the main Gtk struct */
	protected PeasObjectModule* peasObjectModule;

	/** Get the main Gtk struct */
	public PeasObjectModule* getObjectModuleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return peasObjectModule;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)peasObjectModule;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PeasObjectModule* peasObjectModule, bool ownedRef = false)
	{
		this.peasObjectModule = peasObjectModule;
		super(cast(GTypeModule*)peasObjectModule, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return peas_object_module_get_type();
	}

	/**
	 * Creates a new #PeasObjectModule.
	 *
	 * Params:
	 *     moduleName = The module name.
	 *     path = The path.
	 *     resident = If the module should be resident.
	 *
	 * Returns: a new #PeasObjectModule.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string moduleName, string path, bool resident)
	{
		auto p = peas_object_module_new(Str.toStringz(moduleName), Str.toStringz(path), resident);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PeasObjectModule*) p, true);
	}

	/**
	 * Creates a new #PeasObjectModule for an embedded plugin.
	 *
	 * Params:
	 *     moduleName = The module name.
	 *
	 * Returns: a new #PeasObjectModule.
	 *
	 * Since: 1.18
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string moduleName, string symbol)
	{
		auto p = peas_object_module_new_embedded(Str.toStringz(moduleName), Str.toStringz(symbol));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_embedded");
		}

		this(cast(PeasObjectModule*) p, true);
	}

	/**
	 * Creates a new #PeasObjectModule.
	 *
	 * Params:
	 *     moduleName = The module name.
	 *     path = The path.
	 *     resident = If the module should be resident.
	 *     localLinkage = Whether to load the module with local linkage.
	 *
	 * Returns: a new #PeasObjectModule.
	 *
	 *     Since 1.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string moduleName, string path, bool resident, bool localLinkage)
	{
		auto p = peas_object_module_new_full(Str.toStringz(moduleName), Str.toStringz(path), resident, localLinkage);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(PeasObjectModule*) p, true);
	}

	/**
	 * Creates an object for the @exten_type passing @n_parameters
	 * and @parameters to the #PeasFactoryFunc. If @module does
	 * not provide a #PeasFactoryFunc for @exten_type then
	 * %NULL is returned.
	 *
	 * Since libpeas 1.22, @exten_type can be an Abstract #GType
	 * and not just an Interface #GType.
	 *
	 * Params:
	 *     extenType = The #GType of the extension.
	 *     parameters = The parameters.
	 *
	 * Returns: The created object, or %NULL.
	 */
	public ObjectG createObject(GType extenType, GParameter[] parameters)
	{
		auto p = peas_object_module_create_object(peasObjectModule, extenType, cast(uint)parameters.length, parameters.ptr);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p, true);
	}

	/**
	 * Gets the library.
	 *
	 * Returns: the library.
	 */
	public Module getLibrary()
	{
		auto p = peas_object_module_get_library(peasObjectModule);

		if(p is null)
		{
			return null;
		}

		return new Module(cast(GModule*) p);
	}

	/**
	 * Gets the module name.
	 *
	 * Returns: the module name.
	 */
	public string getModuleName()
	{
		return Str.toString(peas_object_module_get_module_name(peasObjectModule));
	}

	/**
	 * Gets the path.
	 *
	 * Returns: the path.
	 */
	public string getPath()
	{
		return Str.toString(peas_object_module_get_path(peasObjectModule));
	}

	/**
	 * Gets the symbol name used to register extension implementations.
	 *
	 * Returns: the symbol name.
	 *
	 * Since: 1.18
	 */
	public string getSymbol()
	{
		return Str.toString(peas_object_module_get_symbol(peasObjectModule));
	}

	/**
	 * Determines if the module provides an extension for @exten_type.
	 *
	 * Since libpeas 1.22, @exten_type can be an Abstract #GType
	 * and not just an Interface #GType.
	 *
	 * Params:
	 *     extenType = The #GType of the extension.
	 *
	 * Returns: if the module provides an extension for @exten_type.
	 */
	public bool providesObject(GType extenType)
	{
		return peas_object_module_provides_object(peasObjectModule, extenType) != 0;
	}

	/**
	 * Register an implementation for an extension type through a factory
	 * function @factory_func which will instantiate the extension when
	 * requested.
	 *
	 * This method is primarily meant to be used by native bindings (like gtkmm),
	 * creating native types which cannot be instantiated correctly using
	 * g_object_new().  For other uses, you will usually prefer relying on
	 * peas_object_module_register_extension_type().
	 *
	 * Since libpeas 1.22, @exten_type can be an Abstract #GType
	 * and not just an Interface #GType.
	 *
	 * Params:
	 *     extenType = The #GType of the extension you implement.
	 *     factoryFunc = The #PeasFactoryFunc that will create the @exten_type
	 *         instance when requested.
	 *     userData = Data to pass to @func calls.
	 *     destroyFunc = A #GDestroyNotify for @user_data.
	 */
	public void registerExtensionFactory(GType extenType, PeasFactoryFunc factoryFunc, void* userData, GDestroyNotify destroyFunc)
	{
		peas_object_module_register_extension_factory(peasObjectModule, extenType, factoryFunc, userData, destroyFunc);
	}

	/**
	 * Register @impl_type as an extension which implements @extension_type.
	 *
	 * Since libpeas 1.22, @exten_type can be an Abstract #GType
	 * and not just an Interface #GType.
	 *
	 * Params:
	 *     extenType = The #GType of the extension you implement.
	 *     implType = The #GType of your implementation of @exten_type.
	 */
	public void registerExtensionType(GType extenType, GType implType)
	{
		peas_object_module_register_extension_type(peasObjectModule, extenType, implType);
	}
}
