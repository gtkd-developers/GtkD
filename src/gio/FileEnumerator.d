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


module gio.FileEnumerator;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.File;
private import gio.FileIF;
private import gio.FileInfo;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * #GFileEnumerator allows you to operate on a set of #GFiles,
 * returning a #GFileInfo structure for each file enumerated (e.g.
 * g_file_enumerate_children() will return a #GFileEnumerator for each
 * of the children within a directory).
 * 
 * To get the next file's information from a #GFileEnumerator, use
 * g_file_enumerator_next_file() or its asynchronous version,
 * g_file_enumerator_next_files_async(). Note that the asynchronous
 * version will return a list of #GFileInfos, whereas the
 * synchronous will only return the next file in the enumerator.
 * 
 * The ordering of returned files is unspecified for non-Unix
 * platforms; for more information, see g_dir_read_name().  On Unix,
 * when operating on local files, returned files will be sorted by
 * inode number.  Effectively you can assume that the ordering of
 * returned files will be stable between successive calls (and
 * applications) assuming the directory is unchanged.
 * 
 * If your application needs a specific ordering, such as by name or
 * modification time, you will have to implement that in your
 * application code.
 * 
 * To close a #GFileEnumerator, use g_file_enumerator_close(), or
 * its asynchronous version, g_file_enumerator_close_async(). Once
 * a #GFileEnumerator is closed, no further actions may be performed
 * on it, and it should be freed with g_object_unref().
 */
public class FileEnumerator : ObjectG
{
	/** the main Gtk struct */
	protected GFileEnumerator* gFileEnumerator;

	/** Get the main Gtk struct */
	public GFileEnumerator* getFileEnumeratorStruct()
	{
		return gFileEnumerator;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFileEnumerator;
	}

	protected override void setStruct(GObject* obj)
	{
		gFileEnumerator = cast(GFileEnumerator*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GFileEnumerator* gFileEnumerator, bool ownedRef = false)
	{
		this.gFileEnumerator = gFileEnumerator;
		super(cast(GObject*)gFileEnumerator, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_file_enumerator_get_type();
	}

	/**
	 * Releases all resources used by this enumerator, making the
	 * enumerator return %G_IO_ERROR_CLOSED on all calls.
	 *
	 * This will be automatically called when the last reference
	 * is dropped, but you might want to call this function to make
	 * sure resources are released as early as possible.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Return: #TRUE on success or #FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	public bool close(Cancellable cancellable)
	{
		GError* err = null;
		
		auto p = g_file_enumerator_close(gFileEnumerator, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Asynchronously closes the file enumerator.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned in
	 * g_file_enumerator_close_finish().
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void closeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_file_enumerator_close_async(gFileEnumerator, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes closing a file enumerator, started from g_file_enumerator_close_async().
	 *
	 * If the file enumerator was already closed when g_file_enumerator_close_async()
	 * was called, then this function will report %G_IO_ERROR_CLOSED in @error, and
	 * return %FALSE. If the file enumerator had pending operation when the close
	 * operation was started, then this function will report %G_IO_ERROR_PENDING, and
	 * return %FALSE.  If @cancellable was not %NULL, then the operation may have been
	 * cancelled by triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be set, and %FALSE will be
	 * returned.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Return: %TRUE if the close operation has finished successfully.
	 *
	 * Throws: GException on failure.
	 */
	public bool closeFinish(AsyncResultIF result)
	{
		GError* err = null;
		
		auto p = g_file_enumerator_close_finish(gFileEnumerator, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Return a new #GFile which refers to the file named by @info in the source
	 * directory of @enumerator.  This function is primarily intended to be used
	 * inside loops with g_file_enumerator_next_file().
	 *
	 * This is a convenience method that's equivalent to:
	 * |[<!-- language="C" -->
	 * gchar *name = g_file_info_get_name (info);
	 * GFile *child = g_file_get_child (g_file_enumerator_get_container (enumr),
	 * name);
	 * ]|
	 *
	 * Params:
	 *     info = a #GFileInfo gotten from g_file_enumerator_next_file()
	 *         or the async equivalents.
	 *
	 * Return: a #GFile for the #GFileInfo passed it.
	 *
	 * Since: 2.36
	 */
	public FileIF getChild(FileInfo info)
	{
		auto p = g_file_enumerator_get_child(gFileEnumerator, (info is null) ? null : info.getFileInfoStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File, FileIF)(cast(GFile*) p, true);
	}

	/**
	 * Get the #GFile container which is being enumerated.
	 *
	 * Return: the #GFile which is being enumerated.
	 *
	 * Since: 2.18
	 */
	public FileIF getContainer()
	{
		auto p = g_file_enumerator_get_container(gFileEnumerator);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File, FileIF)(cast(GFile*) p);
	}

	/**
	 * Checks if the file enumerator has pending operations.
	 *
	 * Return: %TRUE if the @enumerator has pending operations.
	 */
	public bool hasPending()
	{
		return g_file_enumerator_has_pending(gFileEnumerator) != 0;
	}

	/**
	 * Checks if the file enumerator has been closed.
	 *
	 * Return: %TRUE if the @enumerator is closed.
	 */
	public bool isClosed()
	{
		return g_file_enumerator_is_closed(gFileEnumerator) != 0;
	}

	/**
	 * This is a version of g_file_enumerator_next_file() that's easier to
	 * use correctly from C programs.  With g_file_enumerator_next_file(),
	 * the gboolean return value signifies "end of iteration or error", which
	 * requires allocation of a temporary #GError.
	 *
	 * In contrast, with this function, a %FALSE return from
	 * gs_file_enumerator_iterate() *always* means
	 * "error".  End of iteration is signaled by @out_info or @out_child being %NULL.
	 *
	 * Another crucial difference is that the references for @out_info and
	 * @out_child are owned by @direnum (they are cached as hidden
	 * properties).  You must not unref them in your own code.  This makes
	 * memory management significantly easier for C code in combination
	 * with loops.
	 *
	 * Finally, this function optionally allows retrieving a #GFile as
	 * well.
	 *
	 * You must specify at least one of @out_info or @out_child.
	 *
	 * The code pattern for correctly using g_file_enumerator_iterate() from C
	 * is:
	 *
	 * |[
	 * direnum = g_file_enumerate_children (file, ...);
	 * while (TRUE)
	 * {
	 * GFileInfo *info;
	 * if (!g_file_enumerator_iterate (direnum, &info, NULL, cancellable, error))
	 * goto out;
	 * if (!info)
	 * break;
	 * ... do stuff with "info"; do not unref it! ...
	 * }
	 *
	 * out:
	 * g_object_unref (direnum); // Note: frees the last @info
	 * ]|
	 *
	 * Params:
	 *     outInfo = Output location for the next #GFileInfo, or %NULL
	 *     outChild = Output location for the next #GFile, or %NULL
	 *     cancellable = a #GCancellable
	 *
	 * Since: 2.44
	 *
	 * Throws: GException on failure.
	 */
	public bool iterate(out FileInfo outInfo, out FileIF outChild, Cancellable cancellable)
	{
		GFileInfo* outoutInfo = null;
		GFile* outoutChild = null;
		GError* err = null;
		
		auto p = g_file_enumerator_iterate(gFileEnumerator, &outoutInfo, &outoutChild, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		outInfo = ObjectG.getDObject!(FileInfo)(outoutInfo);
		outChild = ObjectG.getDObject!(File, FileIF)(outoutChild);
		
		return p;
	}

	/**
	 * Returns information for the next file in the enumerated object.
	 * Will block until the information is available. The #GFileInfo
	 * returned from this function will contain attributes that match the
	 * attribute string that was passed when the #GFileEnumerator was created.
	 *
	 * See the documentation of #GFileEnumerator for information about the
	 * order of returned files.
	 *
	 * On error, returns %NULL and sets @error to the error. If the
	 * enumerator is at the end, %NULL will be returned and @error will
	 * be unset.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Return: A #GFileInfo or %NULL on error
	 *     or end of enumerator.  Free the returned object with
	 *     g_object_unref() when no longer needed.
	 *
	 * Throws: GException on failure.
	 */
	public FileInfo nextFile(Cancellable cancellable)
	{
		GError* err = null;
		
		auto p = g_file_enumerator_next_file(gFileEnumerator, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FileInfo)(cast(GFileInfo*) p, true);
	}

	/**
	 * Request information for a number of files from the enumerator asynchronously.
	 * When all i/o for the operation is finished the @callback will be called with
	 * the requested information.
	 *
	 * See the documentation of #GFileEnumerator for information about the
	 * order of returned files.
	 *
	 * The callback can be called with less than @num_files files in case of error
	 * or at the end of the enumerator. In case of a partial error the callback will
	 * be called with any succeeding items and no error, and on the next request the
	 * error will be reported. If a request is cancelled the callback will be called
	 * with %G_IO_ERROR_CANCELLED.
	 *
	 * During an async request no other sync and async calls are allowed, and will
	 * result in %G_IO_ERROR_PENDING errors.
	 *
	 * Any outstanding i/o request with higher priority (lower numerical value) will
	 * be executed before an outstanding request with lower priority. Default
	 * priority is %G_PRIORITY_DEFAULT.
	 *
	 * Params:
	 *     numFiles = the number of file info objects to request
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void nextFilesAsync(int numFiles, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_file_enumerator_next_files_async(gFileEnumerator, numFiles, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes the asynchronous operation started with g_file_enumerator_next_files_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Return: a #GList of #GFileInfos. You must free the list with
	 *     g_list_free() and unref the infos with g_object_unref() when you're
	 *     done with them.
	 *
	 * Throws: GException on failure.
	 */
	public ListG nextFilesFinish(AsyncResultIF result)
	{
		GError* err = null;
		
		auto p = g_file_enumerator_next_files_finish(gFileEnumerator, (result is null) ? null : result.getAsyncResultStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Sets the file enumerator as having pending operations.
	 *
	 * Params:
	 *     pending = a boolean value.
	 */
	public void setPending(bool pending)
	{
		g_file_enumerator_set_pending(gFileEnumerator, pending);
	}
}
