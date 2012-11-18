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
 * inFile  = GAsyncResult.html
 * outPack = gio
 * outFile = AsyncResultT
 * strct   = GAsyncResult
 * realStrct=
 * ctorStrct=
 * clss    = AsyncResultT
 * interf  = AsyncResultIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_async_result_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ObjectG
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * 	- GObject* -> ObjectG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.AsyncResultT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import gobject.ObjectG;
public import glib.ErrorG;
public import glib.GException;




/**
 * Description
 * Provides a base class for implementing asynchronous function results.
 * Asynchronous operations are broken up into two separate operations
 * which are chained together by a GAsyncReadyCallback. To begin
 * an asynchronous operation, provide a GAsyncReadyCallback to the
 * asynchronous function. This callback will be triggered when the
 * operation has completed, and will be passed a GAsyncResult instance
 * filled with the details of the operation's success or failure, the
 * object the asynchronous function was started for and any error codes
 * returned. The asynchronous callback function is then expected to call
 * the corresponding "_finish()" function, passing the object the
 * function was called for, the GAsyncResult instance, and (optionally)
 * an error to grab any error conditions that may have occurred.
 * The "_finish()" function for an operation takes the generic result
 * (of type GAsyncResult) and returns the specific result that the
 * operation in question yields (e.g. a GFileEnumerator for a
 * "enumerate children" operation). If the result or error status of the
 * operation is not needed, there is no need to call the "_finish()"
 * function; GIO will take care of cleaning up the result and error
 * information after the GAsyncReadyCallback returns. You can pass
 * NULL for the GAsyncReadyCallback if you don't need to take any
 * action at all after the operation completes. Applications may also
 * take a reference to the GAsyncResult and call "_finish()" later;
 * however, the "_finish()" function may be called at most once.
 * Example of a typical asynchronous operation flow:
 * $(DDOC_COMMENT example)
 * The callback for an asynchronous operation is called only once, and is
 * always called, even in the case of a cancelled operation. On cancellation
 * the result is a G_IO_ERROR_CANCELLED error.
 */
public template AsyncResultT(TStruct)
{
	
	/** the main Gtk struct */
	protected GAsyncResult* gAsyncResult;
	
	
	public GAsyncResult* getAsyncResultTStruct()
	{
		return cast(GAsyncResult*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Gets the user data from a GAsyncResult.
	 * Returns: the user data for res. [transfer full]
	 */
	public void* getUserData()
	{
		// gpointer g_async_result_get_user_data (GAsyncResult *res);
		return g_async_result_get_user_data(getAsyncResultTStruct());
	}
	
	/**
	 * Gets the source object from a GAsyncResult.
	 * Returns: a new reference to the source object for the res, or NULL if there is none. [transfer full]
	 */
	public ObjectG getSourceObject()
	{
		// GObject * g_async_result_get_source_object (GAsyncResult *res);
		auto p = g_async_result_get_source_object(getAsyncResultTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
	}
	
	/**
	 * Checks if res has the given source_tag (generally a function
	 * pointer indicating the function res was created by).
	 * Since 2.34
	 * Params:
	 * sourceTag = an application-defined tag
	 * Returns: TRUE if res has the indicated source_tag, FALSE if not.
	 */
	public int isTagged(void* sourceTag)
	{
		// gboolean g_async_result_is_tagged (GAsyncResult *res,  gpointer source_tag);
		return g_async_result_is_tagged(getAsyncResultTStruct(), sourceTag);
	}
	
	/**
	 * If res is a GSimpleAsyncResult, this is equivalent to
	 * g_simple_async_result_propagate_error(). Otherwise it returns
	 * FALSE.
	 * This can be used for legacy error handling in async
	 * _finish() wrapper functions that traditionally
	 * handled GSimpleAsyncResult error returns themselves rather than
	 * calling into the virtual method. This should not be used in new
	 * code; GAsyncResult errors that are set by virtual methods should
	 * also be extracted by virtual methods, to enable subclasses to chain
	 * up correctly.
	 * Since 2.34
	 * Returns: TRUE if error is has been filled in with an error from res, FALSE if not.
	 */
	public int legacyPropagateError()
	{
		// gboolean g_async_result_legacy_propagate_error  (GAsyncResult *res,  GError **error);
		GError* err = null;
		
		auto p = g_async_result_legacy_propagate_error(getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
