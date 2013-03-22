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
 * inFile  = GLoadableIcon.html
 * outPack = gio
 * outFile = LoadableIconIF
 * strct   = GLoadableIcon
 * realStrct=
 * ctorStrct=
 * clss    = LoadableIconT
 * interf  = LoadableIconIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_loadable_icon_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.InputStream
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GInputStream* -> InputStream
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.LoadableIconIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InputStream;




/**
 * Extends the GIcon interface and adds the ability to
 * load icons from streams.
 */
public interface LoadableIconIF
{
	
	
	public GLoadableIcon* getLoadableIconTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Loads a loadable icon. For the asynchronous version of this function,
	 * see g_loadable_icon_load_async().
	 * Params:
	 * size = an integer.
	 * type = a location to store the type of the
	 * loaded icon, NULL to ignore. [out][allow-none]
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: a GInputStream to read the icon from. [transfer full]
	 * Throws: GException on failure.
	 */
	public InputStream load(int size, out string type, Cancellable cancellable);
	
	/**
	 * Loads an icon asynchronously. To finish this function, see
	 * g_loadable_icon_load_finish(). For the synchronous, blocking
	 * version of this function, see g_loadable_icon_load().
	 * Params:
	 * size = an integer.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the
	 * request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 */
	public void loadAsync(int size, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);
	
	/**
	 * Finishes an asynchronous icon load started in g_loadable_icon_load_async().
	 * Params:
	 * res = a GAsyncResult.
	 * type = a location to store the type of the loaded icon, NULL to ignore.
	 * Returns: a GInputStream to read the icon from. [transfer full]
	 * Throws: GException on failure.
	 */
	public InputStream loadFinish(AsyncResultIF res, out string type);
}
