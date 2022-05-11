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


module sourceview.FileLoader;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.FileIF;
private import gio.InputStream;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListSG;
private import gobject.ObjectG;
private import sourceview.Buffer;
private import sourceview.Encoding;
private import sourceview.File;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Load a file into a GtkSourceBuffer.
 * 
 * A `GtkSourceFileLoader` object permits to load the contents of a [iface@Gio.File] or a
 * [class@Gio.InputStream] into a [class@Buffer].
 * 
 * A file loader should be used only for one load operation, including errors
 * handling. If an error occurs, you can reconfigure the loader and relaunch the
 * operation with [method@FileLoader.load_async].
 * 
 * Running a `GtkSourceFileLoader` is an undoable action for the
 * [class@Buffer].
 * 
 * After a file loading, the buffer is reset to the contents provided by the
 * [iface@Gio.File] or [class@Gio.InputStream], so the buffer is set as “unmodified”, that is,
 * [method@Gtk.TextBuffer.set_modified] is called with %FALSE. If the contents isn't
 * saved somewhere (for example if you load from stdin), then you should
 * probably call [method@Gtk.TextBuffer.set_modified] with %TRUE after calling
 * [method@FileLoader.load_finish].
 */
public class FileLoader : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceFileLoader* gtkSourceFileLoader;

	/** Get the main Gtk struct */
	public GtkSourceFileLoader* getFileLoaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceFileLoader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceFileLoader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceFileLoader* gtkSourceFileLoader, bool ownedRef = false)
	{
		this.gtkSourceFileLoader = gtkSourceFileLoader;
		super(cast(GObject*)gtkSourceFileLoader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_file_loader_get_type();
	}

	/**
	 * Creates a new `GtkSourceFileLoader` object. The contents is read from the
	 * [class@File]'s location.
	 *
	 * If not already done, call [method@File.set_location] before calling this constructor.
	 * The previous location is anyway not needed, because as soon as the file loading begins,
	 * the @buffer is emptied.
	 *
	 * Params:
	 *     buffer = the #GtkSourceBuffer to load the contents into.
	 *     file = the #GtkSourceFile.
	 *
	 * Returns: a new #GtkSourceFileLoader object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer buffer, File file)
	{
		auto __p = gtk_source_file_loader_new((buffer is null) ? null : buffer.getBufferStruct(), (file is null) ? null : file.getFileStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceFileLoader*) __p, true);
	}

	/**
	 * Creates a new #GtkSourceFileLoader object. The contents is read from @stream.
	 *
	 * Params:
	 *     buffer = the #GtkSourceBuffer to load the contents into.
	 *     file = the #GtkSourceFile.
	 *     stream = the #GInputStream to load, e.g. stdin.
	 *
	 * Returns: a new #GtkSourceFileLoader object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer buffer, File file, InputStream stream)
	{
		auto __p = gtk_source_file_loader_new_from_stream((buffer is null) ? null : buffer.getBufferStruct(), (file is null) ? null : file.getFileStruct(), (stream is null) ? null : stream.getInputStreamStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_stream");
		}

		this(cast(GtkSourceFileLoader*) __p, true);
	}

	/**
	 * Returns: the #GtkSourceBuffer to load the contents into.
	 */
	public Buffer getBuffer()
	{
		auto __p = gtk_source_file_loader_get_buffer(gtkSourceFileLoader);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GtkSourceBuffer*) __p);
	}

	/**
	 * Returns: the detected compression type.
	 */
	public GtkSourceCompressionType getCompressionType()
	{
		return gtk_source_file_loader_get_compression_type(gtkSourceFileLoader);
	}

	/**
	 * Returns: the detected file encoding.
	 */
	public Encoding getEncoding()
	{
		auto __p = gtk_source_file_loader_get_encoding(gtkSourceFileLoader);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Encoding)(cast(GtkSourceEncoding*) __p);
	}

	/**
	 * Returns: the #GtkSourceFile.
	 */
	public File getFile()
	{
		auto __p = gtk_source_file_loader_get_file(gtkSourceFileLoader);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(File)(cast(GtkSourceFile*) __p);
	}

	/**
	 * Returns: the #GInputStream to load, or %NULL
	 *     if a #GFile is used.
	 */
	public InputStream getInputStream()
	{
		auto __p = gtk_source_file_loader_get_input_stream(gtkSourceFileLoader);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p);
	}

	/**
	 * Returns: the #GFile to load, or %NULL
	 *     if an input stream is used.
	 */
	public FileIF getLocation()
	{
		auto __p = gtk_source_file_loader_get_location(gtkSourceFileLoader);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p);
	}

	/**
	 * Returns: the detected newline type.
	 */
	public GtkSourceNewlineType getNewlineType()
	{
		return gtk_source_file_loader_get_newline_type(gtkSourceFileLoader);
	}

	/**
	 * Loads asynchronously the file or input stream contents into the [class@Buffer].
	 *
	 * See the [iface@Gio.AsyncResult] documentation to know how to use this
	 * function.
	 *
	 * Params:
	 *     ioPriority = the I/O priority of the request. E.g. %G_PRIORITY_LOW,
	 *         %G_PRIORITY_DEFAULT or %G_PRIORITY_HIGH.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     progressCallback = function to call back with
	 *         progress information, or %NULL if progress information is not needed.
	 *     progressCallbackData = user data to pass to @progress_callback.
	 *     progressCallbackNotify = function to call on
	 *         @progress_callback_data when the @progress_callback is no longer needed, or
	 *         %NULL.
	 *     callback = a #GAsyncReadyCallback to call when the request is
	 *         satisfied.
	 *     userData = user data to pass to @callback.
	 */
	public void loadAsync(int ioPriority, Cancellable cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GDestroyNotify progressCallbackNotify, GAsyncReadyCallback callback, void* userData)
	{
		gtk_source_file_loader_load_async(gtkSourceFileLoader, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), progressCallback, progressCallbackData, progressCallbackNotify, callback, userData);
	}

	/**
	 * Finishes a file loading started with [method@FileLoader.load_async].
	 *
	 * If the contents has been loaded, the following [class@File] properties will
	 * be updated: the location, the encoding, the newline type and the compression
	 * type.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: whether the contents has been loaded successfully.
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = gtk_source_file_loader_load_finish(gtkSourceFileLoader, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets the candidate encodings for the file loading.
	 *
	 * The encodings are tried in the same order as the list.
	 *
	 * For convenience, @candidate_encodings can contain duplicates. Only the first
	 * occurrence of a duplicated encoding is kept in the list.
	 *
	 * By default the candidate encodings are (in that order in the list):
	 *
	 * 1. If set, the [class@File]'s encoding as returned by [method@File.get_encoding].
	 * 2. The default candidates as returned by [func@Encoding.get_default_candidates].
	 *
	 * Params:
	 *     candidateEncodings = a list of
	 *         #GtkSourceEncoding<!-- -->s.
	 */
	public void setCandidateEncodings(ListSG candidateEncodings)
	{
		gtk_source_file_loader_set_candidate_encodings(gtkSourceFileLoader, (candidateEncodings is null) ? null : candidateEncodings.getListSGStruct());
	}
}
