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


module gstreamer.TracerFactory;

private import glib.ListG;
private import gstreamer.PluginFeature;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * Use gst_tracer_factory_get_list() to get a list of tracer factories known to
 * GStreamer.
 *
 * Since: 1.8
 */
public class TracerFactory : PluginFeature
{
	/** the main Gtk struct */
	protected GstTracerFactory* gstTracerFactory;

	/** Get the main Gtk struct */
	public GstTracerFactory* getTracerFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstTracerFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstTracerFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstTracerFactory* gstTracerFactory, bool ownedRef = false)
	{
		this.gstTracerFactory = gstTracerFactory;
		super(cast(GstPluginFeature*)gstTracerFactory, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_tracer_factory_get_type();
	}

	/**
	 * Gets the list of all registered tracer factories. You must free the
	 * list using gst_plugin_feature_list_free().
	 *
	 * The returned factories are sorted by factory name.
	 *
	 * Free-function: gst_plugin_feature_list_free
	 *
	 * Returns: the list of all
	 *     registered #GstTracerFactory.
	 *
	 * Since: 1.8
	 */
	public static ListG getList()
	{
		auto __p = gst_tracer_factory_get_list();

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Get the #GType for elements managed by this factory. The type can
	 * only be retrieved if the element factory is loaded, which can be
	 * assured with gst_plugin_feature_load().
	 *
	 * Returns: the #GType for tracers managed by this factory or 0 if
	 *     the factory is not loaded.
	 *
	 * Since: 1.14
	 */
	public GType getTracerType()
	{
		return gst_tracer_factory_get_tracer_type(gstTracerFactory);
	}
}
