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
 * inFile  = GFileEnumerator.html
 * outPack = gio
 * outFile = FileEnumerator
 * strct   = GFileEnumerator
 * realStrct=
 * ctorStrct=
 * clss    = FileEnumerator
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_file_enumerator_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.File
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GFile* -> File
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.FileEnumerator;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.File;



private import gobject.ObjectG;

/**
 * Description
 * GFileEnumerator allows you to operate on a set of GFiles,
 * returning a GFileInfo structure for each file enumerated (e.g.
 * g_file_enumerate_children() will return a GFileEnumerator for each
 * of the children within a directory).
 * To get the next file's information from a GFileEnumerator, use
 * g_file_enumerator_next_file() or its asynchronous version,
 * g_file_enumerator_next_files_async(). Note that the asynchronous
 * version will return a list of GFileInfos, whereas the
 * synchronous will only return the next file in the enumerator.
 * To close a GFileEnumerator, use g_file_enumerator_close(), or
 * its asynchronous version, g_file_enumerator_close_async(). Once
 * a GFileEnumerator is closed, no further actions may be performed
 * on it, and it should be freed with g_object_unref().
 */
public class FileEnumerator : ObjectG
{
	
	/** the main Gtk struct */
	protected GFileEnumerator* gFileEnumerator;
	
	
	public GFileEnumerator* getFileEnumeratorStruct()
	{
		return gFileEnumerator;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFileEnumerator;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GFileEnumerator* gFileEnumerator)
	{
		super(cast(GObject*)gFileEnumerator);
		this.gFileEnumerator = gFileEnumerator;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gFileEnumerator = cast(GFileEnumerator*)obj;
	}
	
	/**
	 */
	
	/**
	 * Returns information for the next file in the enumerated object.
	 * Will block until the information is available. The GFileInfo
	 * returned from this function will contain attributes that match the
	 * attribute string that was passed when the GFileEnumerator was created.
	 * On error, returns NULL and sets error to the error. If the
	 * enumerator is at the end, NULL will be returned and error will
	 * be unset.
	 * Params:
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: A GFileInfo or NULL on error or end of enumerator. Free the returned object with g_object_unref() when no longer needed. [transfer full]
	 * Throws: GException on failure.
	 */
	public GFileInfo* nextFile(Cancellable cancellable)
	{
		// GFileInfo * g_file_enumerator_next_file (GFileEnumerator *enumerator,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_file_enumerator_next_file(gFileEnumerator, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Releases all resources used by this enumerator, making the
	 * enumerator return G_IO_ERROR_CLOSED on all calls.
	 * This will be automatically called when the last reference
	 * is dropped, but you might want to call this function to make
	 * sure resources are released as early as possible.
	 * Params:
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE on success or FALSE on error.
	 * Throws: GException on failure.
	 */
	public int close(Cancellable cancellable)
	{
		// gboolean g_file_enumerator_close (GFileEnumerator *enumerator,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_file_enumerator_close(gFileEnumerator, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Request information for a number of files from the enumerator asynchronously.
	 * When all i/o for the operation is finished the callback will be called with
	 * the requested information.
	 * The callback can be called with less than num_files files in case of error
	 * or at the end of the enumerator. In case of a partial error the callback will
	 * be called with any succeeding items and no error, and on the next request the
	 * error will be reported. If a request is cancelled the callback will be called
	 * with G_IO_ERROR_CANCELLED.
	 * During an async request no other sync and async calls are allowed, and will
	 * result in G_IO_ERROR_PENDING errors.
	 * Any outstanding i/o request with higher priority (lower numerical value) will
	 * be executed before an outstanding request with lower priority. Default
	 * priority is G_PRIORITY_DEFAULT.
	 * Params:
	 * numFiles = the number of file info objects to request
	 * ioPriority = the io priority
	 * of the request.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 */
	public void nextFilesAsync(int numFiles, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_file_enumerator_next_files_async (GFileEnumerator *enumerator,  int num_files,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_file_enumerator_next_files_async(gFileEnumerator, numFiles, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes the asynchronous operation started with g_file_enumerator_next_files_async().
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: a GList of GFileInfos. You must free the list with g_list_free() and unref the infos with g_object_unref() when you're done with them. [transfer full][element-type Gio.FileInfo]
	 * Throws: GException on failure.
	 */
	public ListG nextFilesFinish(AsyncResultIF result)
	{
		// GList * g_file_enumerator_next_files_finish (GFileEnumerator *enumerator,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_file_enumerator_next_files_finish(gFileEnumerator, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Asynchronously closes the file enumerator.
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned in
	 * g_file_enumerator_close_finish().
	 * Params:
	 * ioPriority = the I/O priority
	 * of the request.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 */
	public void closeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_file_enumerator_close_async (GFileEnumerator *enumerator,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_file_enumerator_close_async(gFileEnumerator, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes closing a file enumerator, started from g_file_enumerator_close_async().
	 * If the file enumerator was already closed when g_file_enumerator_close_async()
	 * was called, then this function will report G_IO_ERROR_CLOSED in error, and
	 * return FALSE. If the file enumerator had pending operation when the close
	 * operation was started, then this function will report G_IO_ERROR_PENDING, and
	 * return FALSE. If cancellable was not NULL, then the operation may have been
	 * cancelled by triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be set, and FALSE will be
	 * returned.
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: TRUE if the close operation has finished successfully.
	 * Throws: GException on failure.
	 */
	public int closeFinish(AsyncResultIF result)
	{
		// gboolean g_file_enumerator_close_finish (GFileEnumerator *enumerator,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_file_enumerator_close_finish(gFileEnumerator, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Checks if the file enumerator has been closed.
	 * Returns: TRUE if the enumerator is closed.
	 */
	public int isClosed()
	{
		// gboolean g_file_enumerator_is_closed (GFileEnumerator *enumerator);
		return g_file_enumerator_is_closed(gFileEnumerator);
	}
	
	/**
	 * Checks if the file enumerator has pending operations.
	 * Returns: TRUE if the enumerator has pending operations.
	 */
	public int hasPending()
	{
		// gboolean g_file_enumerator_has_pending (GFileEnumerator *enumerator);
		return g_file_enumerator_has_pending(gFileEnumerator);
	}
	
	/**
	 * Sets the file enumerator as having pending operations.
	 * Params:
	 * pending = a boolean value.
	 */
	public void setPending(int pending)
	{
		// void g_file_enumerator_set_pending (GFileEnumerator *enumerator,  gboolean pending);
		g_file_enumerator_set_pending(gFileEnumerator, pending);
	}
	
	/**
	 * Get the GFile container which is being enumerated.
	 * Since 2.18
	 * Returns: the GFile which is being enumerated. [transfer none]
	 */
	public File getContainer()
	{
		// GFile * g_file_enumerator_get_container (GFileEnumerator *enumerator);
		auto p = g_file_enumerator_get_container(gFileEnumerator);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
}
