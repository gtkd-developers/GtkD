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

/*
 * Conversion parameters:
 * inFile  = gstreamer-Gst.html
 * outPack = gstreamer
 * outFile = gstreamer
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = GStreamer
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Str
 * 	- glib.OptionGroup
 * structWrap:
 * 	- GOptionGroup* -> OptionGroup
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.gstreamer;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.OptionGroup;




/**
 * GStreamer is a framework for constructing graphs of various filters
 * (termed elements here) that will handle streaming media. Any discreet
 * (packetizable) media type is supported, with provisions for automatically
 * determining source type. Formatting/framing information is provided with
 * a powerful negotiation framework. Plugins are heavily used to provide for
 * all elements, allowing one to construct plugins outside of the GST
 * library, even released binary-only if license require (please don't).
 * GStreamer covers a wide range of use cases including: playback, recording,
 * editing, serving streams, voice over ip and video calls.
 *
 * The GStreamer library should be initialized with
 * gst_init() before it can be used. You should pass pointers to the main argc
 * and argv variables so that GStreamer can process its own command line
 * options, as shown in the following example.
 *
 * $(DDOC_COMMENT example)
 *
 * It's allowed to pass two NULL pointers to gst_init() in case you don't want
 * to pass the command line args to GStreamer.
 *
 * You can also use GOption to initialize your own parameters as shown in
 * the next code fragment:
 *
 * $(DDOC_COMMENT example)
 *
 * Use gst_version() to query the library version at runtime or use the
 * GST_VERSION_* macros to find the version at compile time. Optionally
 * gst_version_string() returns a printable string.
 *
 * The gst_deinit() call is used to clean up all internal resources used
 * by GStreamer. It is mostly used in unit tests
 * to check for leaks.
 *
 * Last reviewed on 2006-08-11 (0.10.10)
 */
public class GStreamer
{
	
	/**
	 */
	
	/**
	 * Initializes the GStreamer library, setting up internal path lists,
	 * registering built-in elements, and loading standard plugins.
	 * Unless the plugin registry is disabled at compile time, the registry will be
	 * loaded. By default this will also check if the registry cache needs to be
	 * updated and rescan all plugins if needed. See gst_update_registry() for
	 * details and section
	 * Running GStreamer Applications
	 * for how to disable automatic registry updates.
	 * Note
	 * This function will terminate your program if it was unable to initialize
	 * GStreamer for some reason. If you want your program to fall back,
	 * use gst_init_check() instead.
	 * WARNING: This function does not work in the same way as corresponding
	 * functions in other glib-style libraries, such as gtk_init(). In
	 * particular, unknown command line options cause this function to
	 * abort program execution.
	 * Params:
	 * argv = pointer to application's argv. [inout][array length=argc][allow-none]
	 */
	public static void init(ref string[] argv)
	{
		// void gst_init (int *argc,  char **argv[]);
		char** outargv = Str.toStringzArray(argv);
		int argc = cast(int) argv.length;
		
		gst_init(&argc, &outargv);
		
		argv = null;
		foreach ( cstr; outargv[0 .. argc] )
		{
			argv ~= Str.toString(cstr);
		}
	}
	
	/**
	 * Initializes the GStreamer library, setting up internal path lists,
	 * registering built-in elements, and loading standard plugins.
	 * This function will return FALSE if GStreamer could not be initialized
	 * for some reason. If you want your program to fail fatally,
	 * use gst_init() instead.
	 * Params:
	 * argv = pointer to application's argv. [inout][array length=argc][allow-none]
	 * Returns: TRUE if GStreamer could be initialized.
	 * Throws: GException on failure.
	 */
	public static int initCheck(ref string[] argv)
	{
		// gboolean gst_init_check (int *argc,  char **argv[],  GError **err);
		char** outargv = Str.toStringzArray(argv);
		int argc = cast(int) argv.length;
		GError* err = null;
		
		auto p = gst_init_check(&argc, &outargv, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		argv = null;
		foreach ( cstr; outargv[0 .. argc] )
		{
			argv ~= Str.toString(cstr);
		}
		return p;
	}
	
	/**
	 * Returns a GOptionGroup with GStreamer's argument specifications. The
	 * group is set up to use standard GOption callbacks, so when using this
	 * group in combination with GOption parsing methods, all argument parsing
	 * and initialization is automated.
	 * This function is useful if you want to integrate GStreamer with other
	 * libraries that use GOption (see g_option_context_add_group() ).
	 * If you use this function, you should make sure you initialise the GLib
	 * threading system as one of the very first things in your program
	 * (see the example at the beginning of this section).
	 * Returns: a pointer to GStreamer's option group. [transfer full]
	 */
	public static OptionGroup initGetOptionGroup()
	{
		// GOptionGroup * gst_init_get_option_group (void);
		auto p = gst_init_get_option_group();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(OptionGroup)(cast(GOptionGroup*) p);
	}
	
	/**
	 * Use this function to check if GStreamer has been initialized with gst_init()
	 * or gst_init_check().
	 * Returns: TRUE if initialization has been done, FALSE otherwise.
	 */
	public static int isInitialized()
	{
		// gboolean gst_is_initialized (void);
		return gst_is_initialized();
	}
	
	/**
	 * Clean up any resources created by GStreamer in gst_init().
	 * It is normally not needed to call this function in a normal application
	 * as the resources will automatically be freed when the program terminates.
	 * This function is therefore mostly used by testsuites and other memory
	 * profiling tools.
	 * After this call GStreamer (including this method) should not be used anymore.
	 */
	public static void deinit()
	{
		// void gst_deinit (void);
		gst_deinit();
	}
	
	/**
	 * Gets the version number of the GStreamer library.
	 * Params:
	 * major = pointer to a guint to store the major version number. [out]
	 * minor = pointer to a guint to store the minor version number. [out]
	 * micro = pointer to a guint to store the micro version number. [out]
	 * nano = pointer to a guint to store the nano version number. [out]
	 */
	public static void versio(ref uint major, ref uint minor, ref uint micro, ref uint nano)
	{
		// void gst_version (guint *major,  guint *minor,  guint *micro,  guint *nano);
		gst_version(&major, &minor, &micro, &nano);
	}
	
	/**
	 * This function returns a string that is useful for describing this version
	 * of GStreamer to the outside world: user agent strings, logging, ...
	 * Returns: a newly allocated string describing this version of GStreamer. [transfer full]
	 */
	public static string versionString()
	{
		// gchar * gst_version_string (void);
		return Str.toString(gst_version_string());
	}
	
	/**
	 * Some functions in the GStreamer core might install a custom SIGSEGV handler
	 * to better catch and report errors to the application. Currently this feature
	 * is enabled by default when loading plugins.
	 * Applications might want to disable this behaviour with the
	 * gst_segtrap_set_enabled() function. This is typically done if the application
	 * wants to install its own handler without GStreamer interfering.
	 * Returns: TRUE if GStreamer is allowed to install a custom SIGSEGV handler.
	 */
	public static int segtrapIsEnabled()
	{
		// gboolean gst_segtrap_is_enabled (void);
		return gst_segtrap_is_enabled();
	}
	
	/**
	 * Applications might want to disable/enable the SIGSEGV handling of
	 * the GStreamer core. See gst_segtrap_is_enabled() for more information.
	 * Params:
	 * enabled = whether a custom SIGSEGV handler should be installed.
	 */
	public static void segtrapSetEnabled(int enabled)
	{
		// void gst_segtrap_set_enabled (gboolean enabled);
		gst_segtrap_set_enabled(enabled);
	}
	
	/**
	 * By default GStreamer will perform scanning and rebuilding of the
	 * registry file using a helper child process.
	 * Applications might want to disable this behaviour with the
	 * gst_registry_fork_set_enabled() function, in which case new plugins
	 * are scanned (and loaded) into the application process.
	 * Returns: TRUE if GStreamer will use the child helper process when rebuilding the registry.
	 */
	public static int registryForkIsEnabled()
	{
		// gboolean gst_registry_fork_is_enabled (void);
		return gst_registry_fork_is_enabled();
	}
	
	/**
	 * Applications might want to disable/enable spawning of a child helper process
	 * when rebuilding the registry. See gst_registry_fork_is_enabled() for more
	 * information.
	 * Params:
	 * enabled = whether rebuilding the registry can use a temporary child helper process.
	 */
	public static void registryForkSetEnabled(int enabled)
	{
		// void gst_registry_fork_set_enabled (gboolean enabled);
		gst_registry_fork_set_enabled(enabled);
	}
	
	/**
	 * Forces GStreamer to re-scan its plugin paths and update the default
	 * plugin registry.
	 * Applications will almost never need to call this function, it is only
	 * useful if the application knows new plugins have been installed (or old
	 * ones removed) since the start of the application (or, to be precise, the
	 * first call to gst_init()) and the application wants to make use of any
	 * newly-installed plugins without restarting the application.
	 * Applications should assume that the registry update is neither atomic nor
	 * thread-safe and should therefore not have any dynamic pipelines running
	 * (including the playbin and decodebin elements) and should also not create
	 * any elements or access the GStreamer registry while the update is in
	 * progress.
	 * Note that this function may block for a significant amount of time.
	 * Returns: TRUE if the registry has been updated successfully (does not imply that there were changes), otherwise FALSE.
	 */
	public static int updateRegistry()
	{
		// gboolean gst_update_registry (void);
		return gst_update_registry();
	}
}
