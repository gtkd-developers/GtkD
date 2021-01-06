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


module gstreamer.DynamicTypeFactory;

private import glib.Str;
private import gstreamer.PluginFeature;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * #GstDynamicTypeFactory is used to represent a type that can be
 * automatically loaded the first time it is used. For example,
 * a non-standard type for use in caps fields.
 * 
 * In general, applications and plugins don't need to use the factory
 * beyond registering the type in a plugin init function. Once that is
 * done, the type is stored in the registry, and ready as soon as the
 * registry is loaded.
 * 
 * ## Registering a type for dynamic loading
 * 
 * |[<!-- language="C" -->
 * 
 * static gboolean
 * plugin_init (GstPlugin * plugin)
 * {
 * return gst_dynamic_type_register (plugin, GST_TYPE_CUSTOM_CAPS_FIELD);
 * }
 * ]|
 *
 * Since: 1.12
 */
public class DynamicTypeFactory : PluginFeature
{
	/** the main Gtk struct */
	protected GstDynamicTypeFactory* gstDynamicTypeFactory;

	/** Get the main Gtk struct */
	public GstDynamicTypeFactory* getDynamicTypeFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstDynamicTypeFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstDynamicTypeFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstDynamicTypeFactory* gstDynamicTypeFactory, bool ownedRef = false)
	{
		this.gstDynamicTypeFactory = gstDynamicTypeFactory;
		super(cast(GstPluginFeature*)gstDynamicTypeFactory, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_dynamic_type_factory_get_type();
	}

	/** */
	public static GType load(string factoryname)
	{
		return gst_dynamic_type_factory_load(Str.toStringz(factoryname));
	}
}
