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
 * inFile  = gio-GResource.html
 * outPack = gio
 * outFile = Resource
 * strct   = GResource
 * realStrct=
 * ctorStrct=
 * clss    = Resource
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_permission_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Bytes
 * 	- gio.InputStream
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GBytes* -> Bytes
 * 	- GInputStream* -> InputStream
 * 	- GResource* -> Resource
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Resource;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.Bytes;
private import gio.InputStream;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * Applications and libraries often contain binary or textual data that is really part of the
 * application, rather than user data. For instance GtkBuilder .ui files, splashscreen images,
 * GMenu markup xml, CSS files, icons, etc. These are often shipped as files in $datadir/appname, or
 * manually included as literal strings in the code.
 * The GResource API and the glib-compile-resources program
 * provide a convenient and efficient alternative to this which has some nice properties. You
 * maintain the files as normal files, so its easy to edit them, but during the build the files
 * are combined into a binary bundle that is linked into the executable. This means that loading
 * the resource files are efficient (as they are already in memory, shared with other instances) and
 * simple (no need to check for things like I/O errors or locate the files in the filesystem). It
 * also makes it easier to create relocatable applications.
 * Resource files can also be marked as compressed. Such files will be included in the resource bundle
 * in a compressed form, but will be automatically uncompressed when the resource is used. This
 * is very useful e.g. for larger text files that are parsed once (or rarely) and then thrown away.
 * Resource files can also be marked to be preprocessed, by setting the value of the
 * preprocess attribute to a comma-separated list of preprocessing options.
 * The only options currently supported are:
 * xml-stripblanks which will use xmllint to strip
 * ignorable whitespace from the xml file. For this to work, the XMLLINT
 * environment variable must be set to the full path to the xmllint executable, or xmllint
 * must be in the PATH; otherwise the preprocessing step is skipped.
 * to-pixdata which will use gdk-pixbuf-pixdata to convert
 * images to the GdkPixdata format, which allows you to create pixbufs directly using the data inside
 * the resource file, rather than an (uncompressed) copy if it. For this, the gdk-pixbuf-pixdata
 * program must be in the PATH, or the GDK_PIXBUF_PIXDATA environment variable must be
 * set to the full path to the gdk-pixbuf-pixdata executable; otherwise the resource compiler will
 * abort.
 * Resource bundles are created by the glib-compile-resources program
 * which takes an xml file that describes the bundle, and a set of files that the xml references. These
 * are combined into a binary resource bundle.
 * $(DDOC_COMMENT example)
 * This will create a resource bundle with the following files:
 * /org/gtk/Example/data/splashscreen.png
 * /org/gtk/Example/dialog.ui
 * /org/gtk/Example/menumarkup.xml
 * Note that all resources in the process share the same namespace, so use java-style
 * path prefixes (like in the above example) to avoid conflicts.
 * You can then use glib-compile-resources to compile the xml to a
 * binary bundle that you can load with g_resource_load(). However, its more common to use the --generate-source and
 * --generate-header arguments to create a source file and header to link directly into your application.
 * Once a GResource has been created and registered all the data in it can be accessed globally in the process by
 * using API calls like g_resources_open_stream() to stream the data or g_resources_lookup_data() to get a direct pointer
 * to the data. You can also use uris like "resource:///org/gtk/Example/data/splashscreen.png" with GFile to access
 * the resource data.
 * There are two forms of the generated source, the default version uses the compiler support for constructor
 * and destructor functions (where available) to automatically create and register the GResource on startup
 * or library load time. If you pass --manual-register two functions to register/unregister the resource is instead
 * created. This requires an explicit initialization call in your application/library, but it works on all platforms,
 * even on the minor ones where this is not available. (Constructor support is available for at least Win32, MacOS and Linux.)
 * Note that resource data can point directly into the data segment of e.g. a library, so if you are unloading libraries
 * during runtime you need to be very careful with keeping around pointers to data from a resource, as this goes away
 * when the library is unloaded. However, in practice this is not generally a problem, since most resource accesses
 * is for your own resources, and resource data is often used once, during parsing, and then released.
 */
public class Resource
{
	
	/** the main Gtk struct */
	protected GResource* gResource;
	
	
	public GResource* getResourceStruct()
	{
		return gResource;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gResource;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GResource* gResource)
	{
		this.gResource = gResource;
	}
	
	~this()
	{
		if ( Linker.isLoaded(LIBRARY.GIO) && gResource != null)
		{
			g_resource_unref(gResource);
		}
	}
	
	/**
	 */
	
	/**
	 * Loads a binary resource bundle and creates a GResource representation of it, allowing
	 * you to query it for data.
	 * If you want to use this resource in the global resource namespace you need
	 * to register it with g_resources_register().
	 * Since 2.32
	 * Params:
	 * filename = the path of a filename to load, in the GLib filename encoding. [type filename]
	 * Returns: a new GResource, or NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public static Resource gResourceLoad(string filename)
	{
		// GResource * g_resource_load (const gchar *filename,  GError **error);
		GError* err = null;
		
		auto p = g_resource_load(Str.toStringz(filename), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Resource)(cast(GResource*) p);
	}
	
	/**
	 * Creates a GResource from a reference to the binary resource bundle.
	 * This will keep a reference to data while the resource lives, so
	 * the data should not be modified or freed.
	 * If you want to use this resource in the global resource namespace you need
	 * to register it with g_resources_register().
	 * Since 2.32
	 * Params:
	 * data = A GBytes
	 * Returns: a new GResource, or NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public static Resource gResourceNewFromData(Bytes data)
	{
		// GResource * g_resource_new_from_data (GBytes *data,  GError **error);
		GError* err = null;
		
		auto p = g_resource_new_from_data((data is null) ? null : data.getBytesStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Resource)(cast(GResource*) p);
	}
	
	/**
	 * Atomically increments the reference count of array by one. This
	 * function is MT-safe and may be called from any thread.
	 * Since 2.32
	 * Returns: The passed in GResource
	 */
	public Resource gResourceRef()
	{
		// GResource * g_resource_ref (GResource *resource);
		auto p = g_resource_ref(gResource);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Resource)(cast(GResource*) p);
	}
	
	/**
	 * Atomically decrements the reference count of resource by one. If the
	 * reference count drops to 0, all memory allocated by the array is
	 * released. This function is MT-safe and may be called from any
	 * thread.
	 * Since 2.32
	 */
	public void gResourceUnref()
	{
		// void g_resource_unref (GResource *resource);
		g_resource_unref(gResource);
	}
	
	/**
	 * Looks for a file at the specified path in the resource and
	 * returns a GBytes that lets you directly access the data in
	 * memory.
	 * The data is always followed by a zero byte, so you
	 * can safely use the data as a C string. However, that byte
	 * is not included in the size of the GBytes.
	 * For uncompressed resource files this is a pointer directly into
	 * the resource bundle, which is typically in some readonly data section
	 * in the program binary. For compressed files we allocate memory on
	 * the heap and automatically uncompress the data.
	 * lookup_flags controls the behaviour of the lookup.
	 * Since 2.32
	 * Params:
	 * path = A pathname inside the resource
	 * lookupFlags = A GResourceLookupFlags
	 * Returns: GBytes or NULL on error. Free the returned object with g_bytes_unref(). [transfer full]
	 * Throws: GException on failure.
	 */
	public Bytes gResourceLookupData(string path, GResourceLookupFlags lookupFlags)
	{
		// GBytes * g_resource_lookup_data (GResource *resource,  const char *path,  GResourceLookupFlags lookup_flags,  GError **error);
		GError* err = null;
		
		auto p = g_resource_lookup_data(gResource, Str.toStringz(path), lookupFlags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Bytes)(cast(GBytes*) p);
	}
	
	/**
	 * Looks for a file at the specified path in the resource and
	 * returns a GInputStream that lets you read the data.
	 * lookup_flags controls the behaviour of the lookup.
	 * Since 2.32
	 * Params:
	 * path = A pathname inside the resource
	 * lookupFlags = A GResourceLookupFlags
	 * Returns: GInputStream or NULL on error. Free the returned object with g_object_unref(). [transfer full]
	 * Throws: GException on failure.
	 */
	public InputStream gResourceOpenStream(string path, GResourceLookupFlags lookupFlags)
	{
		// GInputStream * g_resource_open_stream (GResource *resource,  const char *path,  GResourceLookupFlags lookup_flags,  GError **error);
		GError* err = null;
		
		auto p = g_resource_open_stream(gResource, Str.toStringz(path), lookupFlags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) p);
	}
	
	/**
	 * Returns all the names of children at the specified path in the resource.
	 * The return result is a NULL terminated list of strings which should
	 * be released with g_strfreev().
	 * lookup_flags controls the behaviour of the lookup.
	 * Since 2.32
	 * Params:
	 * path = A pathname inside the resource
	 * lookupFlags = A GResourceLookupFlags
	 * Returns: an array of constant strings. [array zero-terminated=1][transfer full]
	 * Throws: GException on failure.
	 */
	public string[] gResourceEnumerateChildren(string path, GResourceLookupFlags lookupFlags)
	{
		// char ** g_resource_enumerate_children (GResource *resource,  const char *path,  GResourceLookupFlags lookup_flags,  GError **error);
		GError* err = null;
		
		auto p = g_resource_enumerate_children(gResource, Str.toStringz(path), lookupFlags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toStringArray(p);
	}
	
	/**
	 * Looks for a file at the specified path in the resource and
	 * if found returns information about it.
	 * lookup_flags controls the behaviour of the lookup.
	 * Since 2.32
	 * Params:
	 * path = A pathname inside the resource
	 * lookupFlags = A GResourceLookupFlags
	 * size = a location to place the length of the contents of the file,
	 * or NULL if the length is not needed. [out][allow-none]
	 * flags = a location to place the flags about the file,
	 * or NULL if the length is not needed. [out][allow-none]
	 * Returns: TRUE if the file was found. FALSE if there were errors
	 * Throws: GException on failure.
	 */
	public int gResourceGetInfo(string path, GResourceLookupFlags lookupFlags, out gsize size, out uint flags)
	{
		// gboolean g_resource_get_info (GResource *resource,  const char *path,  GResourceLookupFlags lookup_flags,  gsize *size,  guint32 *flags,  GError **error);
		GError* err = null;
		
		auto p = g_resource_get_info(gResource, Str.toStringz(path), lookupFlags, &size, &flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Registers the resource with the process-global set of resources.
	 * Once a resource is registered the files in it can be accessed
	 * with the global resource lookup functions like g_resources_lookup_data().
	 * Since 2.32
	 */
	public void gResourcesRegister()
	{
		// void g_resources_register (GResource *resource);
		g_resources_register(gResource);
	}
	
	/**
	 * Unregisters the resource from the process-global set of resources.
	 * Since 2.32
	 */
	public void gResourcesUnregister()
	{
		// void g_resources_unregister (GResource *resource);
		g_resources_unregister(gResource);
	}
	
	/**
	 * Looks for a file at the specified path in the set of
	 * globally registered resources and returns a GBytes that
	 * lets you directly access the data in memory.
	 * The data is always followed by a zero byte, so you
	 * can safely use the data as a C string. However, that byte
	 * is not included in the size of the GBytes.
	 * For uncompressed resource files this is a pointer directly into
	 * the resource bundle, which is typically in some readonly data section
	 * in the program binary. For compressed files we allocate memory on
	 * the heap and automatically uncompress the data.
	 * lookup_flags controls the behaviour of the lookup.
	 * Since 2.32
	 * Params:
	 * path = A pathname inside the resource
	 * lookupFlags = A GResourceLookupFlags
	 * Returns: GBytes or NULL on error. Free the returned object with g_bytes_unref(). [transfer full]
	 * Throws: GException on failure.
	 */
	public static Bytes gResourcesLookupData(string path, GResourceLookupFlags lookupFlags)
	{
		// GBytes * g_resources_lookup_data (const char *path,  GResourceLookupFlags lookup_flags,  GError **error);
		GError* err = null;
		
		auto p = g_resources_lookup_data(Str.toStringz(path), lookupFlags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Bytes)(cast(GBytes*) p);
	}
	
	/**
	 * Looks for a file at the specified path in the set of
	 * globally registered resources and returns a GInputStream
	 * that lets you read the data.
	 * lookup_flags controls the behaviour of the lookup.
	 * Since 2.32
	 * Params:
	 * path = A pathname inside the resource
	 * lookupFlags = A GResourceLookupFlags
	 * Returns: GInputStream or NULL on error. Free the returned object with g_object_unref(). [transfer full]
	 * Throws: GException on failure.
	 */
	public static InputStream gResourcesOpenStream(string path, GResourceLookupFlags lookupFlags)
	{
		// GInputStream * g_resources_open_stream (const char *path,  GResourceLookupFlags lookup_flags,  GError **error);
		GError* err = null;
		
		auto p = g_resources_open_stream(Str.toStringz(path), lookupFlags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) p);
	}
	
	/**
	 * Returns all the names of children at the specified path in the set of
	 * globally registered resources.
	 * The return result is a NULL terminated list of strings which should
	 * be released with g_strfreev().
	 * lookup_flags controls the behaviour of the lookup.
	 * Since 2.32
	 * Params:
	 * path = A pathname inside the resource
	 * lookupFlags = A GResourceLookupFlags
	 * Returns: an array of constant strings. [array zero-terminated=1][transfer full]
	 * Throws: GException on failure.
	 */
	public static string[] gResourcesEnumerateChildren(string path, GResourceLookupFlags lookupFlags)
	{
		// char ** g_resources_enumerate_children (const char *path,  GResourceLookupFlags lookup_flags,  GError **error);
		GError* err = null;
		
		auto p = g_resources_enumerate_children(Str.toStringz(path), lookupFlags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toStringArray(p);
	}
	
	/**
	 * Looks for a file at the specified path in the set of
	 * globally registered resources and if found returns information about it.
	 * lookup_flags controls the behaviour of the lookup.
	 * Since 2.32
	 * Params:
	 * path = A pathname inside the resource
	 * lookupFlags = A GResourceLookupFlags
	 * size = a location to place the length of the contents of the file,
	 * or NULL if the length is not needed. [out][allow-none]
	 * flags = a location to place the flags about the file,
	 * or NULL if the length is not needed. [out][allow-none]
	 * Returns: TRUE if the file was found. FALSE if there were errors
	 * Throws: GException on failure.
	 */
	public static int gResourcesGetInfo(string path, GResourceLookupFlags lookupFlags, gsize* size, uint* flags)
	{
		// gboolean g_resources_get_info (const char *path,  GResourceLookupFlags lookup_flags,  gsize *size,  guint32 *flags,  GError **error);
		GError* err = null;
		
		auto p = g_resources_get_info(Str.toStringz(path), lookupFlags, size, flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
