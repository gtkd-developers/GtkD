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


module gstreamer.DeviceProviderFactory;

private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gstreamer.DeviceProvider;
private import gstreamer.PluginFeature;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * #GstDeviceProviderFactory is used to create instances of device providers. A
 * GstDeviceProviderfactory can be added to a #GstPlugin as it is also a
 * #GstPluginFeature.
 * 
 * Use the gst_device_provider_factory_find() and
 * gst_device_provider_factory_get() functions to create device
 * provider instances or use gst_device_provider_factory_get_by_name() as a
 * convenient shortcut.
 *
 * Since: 1.4
 */
public class DeviceProviderFactory : PluginFeature
{
	/** the main Gtk struct */
	protected GstDeviceProviderFactory* gstDeviceProviderFactory;

	/** Get the main Gtk struct */
	public GstDeviceProviderFactory* getDeviceProviderFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstDeviceProviderFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstDeviceProviderFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstDeviceProviderFactory* gstDeviceProviderFactory, bool ownedRef = false)
	{
		this.gstDeviceProviderFactory = gstDeviceProviderFactory;
		super(cast(GstPluginFeature*)gstDeviceProviderFactory, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_device_provider_factory_get_type();
	}

	/**
	 * Search for an device provider factory of the given name. Refs the returned
	 * device provider factory; caller is responsible for unreffing.
	 *
	 * Params:
	 *     name = name of factory to find
	 *
	 * Returns: #GstDeviceProviderFactory if
	 *     found, %NULL otherwise
	 *
	 * Since: 1.4
	 */
	public static DeviceProviderFactory find(string name)
	{
		auto __p = gst_device_provider_factory_find(Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DeviceProviderFactory)(cast(GstDeviceProviderFactory*) __p, true);
	}

	/**
	 * Returns the device provider of the type defined by the given device
	 * provider factory.
	 *
	 * Params:
	 *     factoryname = a named factory to instantiate
	 *
	 * Returns: a #GstDeviceProvider or %NULL
	 *     if unable to create device provider
	 *
	 * Since: 1.4
	 */
	public static DeviceProvider getByName(string factoryname)
	{
		auto __p = gst_device_provider_factory_get_by_name(Str.toStringz(factoryname));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DeviceProvider)(cast(GstDeviceProvider*) __p, true);
	}

	/**
	 * Get a list of factories with a rank greater or equal to @minrank.
	 * The list of factories is returned by decreasing rank.
	 *
	 * Params:
	 *     minrank = Minimum rank
	 *
	 * Returns: a #GList of #GstDeviceProviderFactory device providers. Use
	 *     gst_plugin_feature_list_free() after usage.
	 *
	 * Since: 1.4
	 */
	public static ListG listGetDeviceProviders(GstRank minrank)
	{
		auto __p = gst_device_provider_factory_list_get_device_providers(minrank);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Returns the device provider of the type defined by the given device
	 * providerfactory.
	 *
	 * Returns: the #GstDeviceProvider or %NULL
	 *     if the device provider couldn't be created
	 *
	 * Since: 1.4
	 */
	public DeviceProvider get()
	{
		auto __p = gst_device_provider_factory_get(gstDeviceProviderFactory);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DeviceProvider)(cast(GstDeviceProvider*) __p, true);
	}

	/**
	 * Get the #GType for device providers managed by this factory. The type can
	 * only be retrieved if the device provider factory is loaded, which can be
	 * assured with gst_plugin_feature_load().
	 *
	 * Returns: the #GType for device providers managed by this factory.
	 *
	 * Since: 1.4
	 */
	public GType getDeviceProviderType()
	{
		return gst_device_provider_factory_get_device_provider_type(gstDeviceProviderFactory);
	}

	/**
	 * Get the metadata on @factory with @key.
	 *
	 * Params:
	 *     key = a key
	 *
	 * Returns: the metadata with @key on @factory or %NULL
	 *     when there was no metadata with the given @key.
	 *
	 * Since: 1.4
	 */
	public string getMetadata(string key)
	{
		return Str.toString(gst_device_provider_factory_get_metadata(gstDeviceProviderFactory, Str.toStringz(key)));
	}

	/**
	 * Get the available keys for the metadata on @factory.
	 *
	 * Returns: a %NULL-terminated array of key strings, or %NULL when there is no
	 *     metadata. Free with g_strfreev() when no longer needed.
	 *
	 * Since: 1.4
	 */
	public string[] getMetadataKeys()
	{
		auto retStr = gst_device_provider_factory_get_metadata_keys(gstDeviceProviderFactory);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Check if @factory matches all of the given @classes
	 *
	 * Params:
	 *     classes = a "/" separate list of classes to match, only match
	 *         if all classes are matched
	 *
	 * Returns: %TRUE if @factory matches or if @classes is %NULL.
	 *
	 * Since: 1.4
	 */
	public bool hasClasses(string classes)
	{
		return gst_device_provider_factory_has_classes(gstDeviceProviderFactory, Str.toStringz(classes)) != 0;
	}

	/**
	 * Check if @factory matches all of the given classes
	 *
	 * Params:
	 *     classes = a %NULL terminated array
	 *         of classes to match, only match if all classes are matched
	 *
	 * Returns: %TRUE if @factory matches.
	 *
	 * Since: 1.4
	 */
	public bool hasClassesv(string[] classes)
	{
		return gst_device_provider_factory_has_classesv(gstDeviceProviderFactory, Str.toStringzArray(classes)) != 0;
	}
}
