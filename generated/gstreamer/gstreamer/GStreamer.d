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


module gstreamer.GStreamer;

private import glib.ErrorG;
private import glib.GException;
private import glib.OptionGroup;
private import glib.Str;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/** */
public struct GStreamer
{

	/**
	 * Clean up any resources created by GStreamer in gst_init().
	 *
	 * It is normally not needed to call this function in a normal application
	 * as the resources will automatically be freed when the program terminates.
	 * This function is therefore mostly used by testsuites and other memory
	 * profiling tools.
	 *
	 * After this call GStreamer (including this method) should not be used anymore.
	 */
	public static void deinit()
	{
		gst_deinit();
	}

	/**
	 * Initializes the GStreamer library, setting up internal path lists,
	 * registering built-in elements, and loading standard plugins.
	 *
	 * Unless the plugin registry is disabled at compile time, the registry will be
	 * loaded. By default this will also check if the registry cache needs to be
	 * updated and rescan all plugins if needed. See gst_update_registry() for
	 * details and section
	 * <link linkend="gst-running">Running GStreamer Applications</link>
	 * for how to disable automatic registry updates.
	 *
	 * > This function will terminate your program if it was unable to initialize
	 * > GStreamer for some reason.  If you want your program to fall back,
	 * > use gst_init_check() instead.
	 *
	 * WARNING: This function does not work in the same way as corresponding
	 * functions in other glib-style libraries, such as gtk_init\(\). In
	 * particular, unknown command line options cause this function to
	 * abort program execution.
	 *
	 * Params:
	 *     argv = pointer to application's argv
	 */
	public static void init(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);

		gst_init(&argc, &outargv);

		argv = Str.toStringArray(outargv, argc);
	}

	/**
	 * Initializes the GStreamer library, setting up internal path lists,
	 * registering built-in elements, and loading standard plugins.
	 *
	 * This function will return %FALSE if GStreamer could not be initialized
	 * for some reason.  If you want your program to fail fatally,
	 * use gst_init() instead.
	 *
	 * Params:
	 *     argv = pointer to application's argv
	 *
	 * Returns: %TRUE if GStreamer could be initialized.
	 *
	 * Throws: GException on failure.
	 */
	public static bool initCheck(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);
		GError* err = null;

		auto p = gst_init_check(&argc, &outargv, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		argv = Str.toStringArray(outargv, argc);

		return p;
	}

	/**
	 * Returns a #GOptionGroup with GStreamer's argument specifications. The
	 * group is set up to use standard GOption callbacks, so when using this
	 * group in combination with GOption parsing methods, all argument parsing
	 * and initialization is automated.
	 *
	 * This function is useful if you want to integrate GStreamer with other
	 * libraries that use GOption (see g_option_context_add_group() ).
	 *
	 * If you use this function, you should make sure you initialise the GLib
	 * threading system as one of the very first things in your program
	 * (see the example at the beginning of this section).
	 *
	 * Returns: a pointer to GStreamer's option group.
	 */
	public static OptionGroup initGetOptionGroup()
	{
		auto p = gst_init_get_option_group();

		if(p is null)
		{
			return null;
		}

		return new OptionGroup(cast(GOptionGroup*) p, true);
	}

	/**
	 * Use this function to check if GStreamer has been initialized with gst_init()
	 * or gst_init_check().
	 *
	 * Returns: %TRUE if initialization has been done, %FALSE otherwise.
	 */
	public static bool isInitialized()
	{
		return gst_is_initialized() != 0;
	}

	/**
	 * Some functions in the GStreamer core might install a custom SIGSEGV handler
	 * to better catch and report errors to the application. Currently this feature
	 * is enabled by default when loading plugins.
	 *
	 * Applications might want to disable this behaviour with the
	 * gst_segtrap_set_enabled() function. This is typically done if the application
	 * wants to install its own handler without GStreamer interfering.
	 *
	 * Returns: %TRUE if GStreamer is allowed to install a custom SIGSEGV handler.
	 */
	public static bool segtrapIsEnabled()
	{
		return gst_segtrap_is_enabled() != 0;
	}

	/**
	 * Applications might want to disable/enable the SIGSEGV handling of
	 * the GStreamer core. See gst_segtrap_is_enabled() for more information.
	 *
	 * Params:
	 *     enabled = whether a custom SIGSEGV handler should be installed.
	 */
	public static void segtrapSetEnabled(bool enabled)
	{
		gst_segtrap_set_enabled(enabled);
	}

	/**
	 * Forces GStreamer to re-scan its plugin paths and update the default
	 * plugin registry.
	 *
	 * Applications will almost never need to call this function, it is only
	 * useful if the application knows new plugins have been installed (or old
	 * ones removed) since the start of the application (or, to be precise, the
	 * first call to gst_init()) and the application wants to make use of any
	 * newly-installed plugins without restarting the application.
	 *
	 * Applications should assume that the registry update is neither atomic nor
	 * thread-safe and should therefore not have any dynamic pipelines running
	 * (including the playbin and decodebin elements) and should also not create
	 * any elements or access the GStreamer registry while the update is in
	 * progress.
	 *
	 * Note that this function may block for a significant amount of time.
	 *
	 * Returns: %TRUE if the registry has been updated successfully (does not
	 *     imply that there were changes), otherwise %FALSE.
	 */
	public static bool updateRegistry()
	{
		return gst_update_registry() != 0;
	}

	/**
	 * Gets the version number of the GStreamer library.
	 *
	 * Params:
	 *     major = pointer to a guint to store the major version number
	 *     minor = pointer to a guint to store the minor version number
	 *     micro = pointer to a guint to store the micro version number
	 *     nano = pointer to a guint to store the nano version number
	 */
	public static void version_(out uint major, out uint minor, out uint micro, out uint nano)
	{
		gst_version(&major, &minor, &micro, &nano);
	}

	/**
	 * This function returns a string that is useful for describing this version
	 * of GStreamer to the outside world: user agent strings, logging, ...
	 *
	 * Returns: a newly allocated string describing this version
	 *     of GStreamer.
	 */
	public static string versionString()
	{
		auto retStr = gst_version_string();

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
