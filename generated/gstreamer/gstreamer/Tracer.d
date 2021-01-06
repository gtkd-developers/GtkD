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


module gstreamer.Tracer;

private import glib.Str;
private import gstreamer.ObjectGst;
private import gstreamer.Plugin;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * Tracing modules will subclass #GstTracer and register through
 * gst_tracer_register(). Modules can attach to various hook-types - see
 * gst_tracing_register_hook(). When invoked they receive hook specific
 * contextual data, which they must not modify.
 *
 * Since: 1.8
 */
public class Tracer : ObjectGst
{
	/** the main Gtk struct */
	protected GstTracer* gstTracer;

	/** Get the main Gtk struct */
	public GstTracer* getTracerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstTracer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstTracer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstTracer* gstTracer, bool ownedRef = false)
	{
		this.gstTracer = gstTracer;
		super(cast(GstObject*)gstTracer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_tracer_get_type();
	}

	/**
	 * Create a new tracer-factory  capable of instantiating objects of the
	 * @type and add the factory to @plugin.
	 *
	 * Params:
	 *     plugin = A #GstPlugin, or %NULL for a static typefind function
	 *     name = The name for registering
	 *     type = GType of tracer to register
	 *
	 * Returns: %TRUE, if the registering succeeded, %FALSE on error
	 */
	public static bool register(Plugin plugin, string name, GType type)
	{
		return gst_tracer_register((plugin is null) ? null : plugin.getPluginStruct(), Str.toStringz(name), type) != 0;
	}
}
