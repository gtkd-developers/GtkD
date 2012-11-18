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
 * inFile  = GVfs.html
 * outPack = gio
 * outFile = Vfs
 * strct   = GVfs
 * realStrct=
 * ctorStrct=
 * clss    = Vfs
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_vfs_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.File
 * structWrap:
 * 	- GFile* -> File
 * 	- GVfs* -> Vfs
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Vfs;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.File;



private import gobject.ObjectG;

/**
 * Description
 * Entry point for using GIO functionality.
 */
public class Vfs : ObjectG
{
	
	/** the main Gtk struct */
	protected GVfs* gVfs;
	
	
	public GVfs* getVfsStruct()
	{
		return gVfs;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gVfs;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GVfs* gVfs)
	{
		super(cast(GObject*)gVfs);
		this.gVfs = gVfs;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gVfs = cast(GVfs*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets a GFile for path.
	 * Params:
	 * path = a string containing a VFS path.
	 * Returns: a GFile. Free the returned object with g_object_unref(). [transfer full]
	 */
	public File getFileForPath(string path)
	{
		// GFile * g_vfs_get_file_for_path (GVfs *vfs,  const char *path);
		auto p = g_vfs_get_file_for_path(gVfs, Str.toStringz(path));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Gets a GFile for uri.
	 * This operation never fails, but the returned object
	 * might not support any I/O operation if the URI
	 * is malformed or if the URI scheme is not supported.
	 * Params:
	 * uri = a string containing a URI
	 * Returns: a GFile. Free the returned object with g_object_unref(). [transfer full]
	 */
	public File getFileForUri(string uri)
	{
		// GFile * g_vfs_get_file_for_uri (GVfs *vfs,  const char *uri);
		auto p = g_vfs_get_file_for_uri(gVfs, Str.toStringz(uri));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * This operation never fails, but the returned object might
	 * not support any I/O operations if the parse_name cannot
	 * be parsed by the GVfs module.
	 * Params:
	 * parseName = a string to be parsed by the VFS module.
	 * Returns: a GFile for the given parse_name. Free the returned object with g_object_unref(). [transfer full]
	 */
	public File parseName(string parseName)
	{
		// GFile * g_vfs_parse_name (GVfs *vfs,  const char *parse_name);
		auto p = g_vfs_parse_name(gVfs, Str.toStringz(parseName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Gets the default GVfs for the system.
	 * Returns: a GVfs. [transfer none]
	 */
	public static Vfs getDefault()
	{
		// GVfs * g_vfs_get_default (void);
		auto p = g_vfs_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Vfs)(cast(GVfs*) p);
	}
	
	/**
	 * Gets the local GVfs for the system.
	 * Returns: a GVfs. [transfer none]
	 */
	public static Vfs getLocal()
	{
		// GVfs * g_vfs_get_local (void);
		auto p = g_vfs_get_local();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Vfs)(cast(GVfs*) p);
	}
	
	/**
	 * Checks if the VFS is active.
	 * Returns: TRUE if construction of the vfs was successful and it is now active.
	 */
	public int isActive()
	{
		// gboolean g_vfs_is_active (GVfs *vfs);
		return g_vfs_is_active(gVfs);
	}
	
	/**
	 * Gets a list of URI schemes supported by vfs.
	 * Returns: a NULL-terminated array of strings. The returned array belongs to GIO and must not be freed or modified. [transfer none]
	 */
	public string[] getSupportedUriSchemes()
	{
		// const gchar * const * g_vfs_get_supported_uri_schemes (GVfs *vfs);
		return Str.toStringArray(g_vfs_get_supported_uri_schemes(gVfs));
	}
}
