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


module gsv.SourceFileLoader;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.FileIF;
private import gio.InputStream;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListSG;
private import gobject.ObjectG;
private import gsv.SourceBuffer;
private import gsv.SourceEncoding;
private import gsv.SourceFile;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;


/** */
public class SourceFileLoader : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceFileLoader* gtkSourceFileLoader;

	/** Get the main Gtk struct */
	public GtkSourceFileLoader* getSourceFileLoaderStruct(bool transferOwnership = false)
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
	 * Creates a new #GtkSourceFileLoader object. The contents is read from the
	 * #GtkSourceFile's location. If not already done, call
	 * gtk_source_file_set_location() before calling this constructor. The previous
	 * location is anyway not needed, because as soon as the file loading begins,
	 * the @buffer is emptied.
	 *
	 * Params:
	 *     buffer = the #GtkSourceBuffer to load the contents into.
	 *     file = the #GtkSourceFile.
	 *
	 * Returns: a new #GtkSourceFileLoader object.
	 *
	 * Since: 3.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SourceBuffer buffer, SourceFile file)
	{
		auto p = gtk_source_file_loader_new((buffer is null) ? null : buffer.getSourceBufferStruct(), (file is null) ? null : file.getSourceFileStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceFileLoader*) p, true);
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
	 * Since: 3.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SourceBuffer buffer, SourceFile file, InputStream stream)
	{
		auto p = gtk_source_file_loader_new_from_stream((buffer is null) ? null : buffer.getSourceBufferStruct(), (file is null) ? null : file.getSourceFileStruct(), (stream is null) ? null : stream.getInputStreamStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_stream");
		}

		this(cast(GtkSourceFileLoader*) p, true);
	}

	/**
	 * Returns: the #GtkSourceBuffer to load the contents into.
	 *
	 * Since: 3.14
	 */
	public SourceBuffer getBuffer()
	{
		auto p = gtk_source_file_loader_get_buffer(gtkSourceFileLoader);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceBuffer)(cast(GtkSourceBuffer*) p);
	}

	/**
	 * Returns: the detected compression type.
	 *
	 * Since: 3.14
	 */
	public GtkSourceCompressionType getCompressionType()
	{
		return gtk_source_file_loader_get_compression_type(gtkSourceFileLoader);
	}

	/**
	 * Returns: the detected file encoding.
	 *
	 * Since: 3.14
	 */
	public SourceEncoding getEncoding()
	{
		auto p = gtk_source_file_loader_get_encoding(gtkSourceFileLoader);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceEncoding)(cast(GtkSourceEncoding*) p);
	}

	/**
	 * Returns: the #GtkSourceFile.
	 *
	 * Since: 3.14
	 */
	public SourceFile getFile()
	{
		auto p = gtk_source_file_loader_get_file(gtkSourceFileLoader);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceFile)(cast(GtkSourceFile*) p);
	}

	/**
	 * Returns: the #GInputStream to load, or %NULL
	 *     if a #GFile is used.
	 *
	 * Since: 3.14
	 */
	public InputStream getInputStream()
	{
		auto p = gtk_source_file_loader_get_input_stream(gtkSourceFileLoader);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) p);
	}

	/**
	 * Returns: the #GFile to load, or %NULL
	 *     if an input stream is used.
	 *
	 * Since: 3.14
	 */
	public FileIF getLocation()
	{
		auto p = gtk_source_file_loader_get_location(gtkSourceFileLoader);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) p);
	}

	/**
	 * Returns: the detected newline type.
	 *
	 * Since: 3.14
	 */
	public GtkSourceNewlineType getNewlineType()
	{
		return gtk_source_file_loader_get_newline_type(gtkSourceFileLoader);
	}

	/**
	 * Loads asynchronously the file or input stream contents into the
	 * #GtkSourceBuffer. See the #GAsyncResult documentation to know how to use this
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
	 *
	 * Since: 3.14
	 */
	public void loadAsync(int ioPriority, Cancellable cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GDestroyNotify progressCallbackNotify, GAsyncReadyCallback callback, void* userData)
	{
		gtk_source_file_loader_load_async(gtkSourceFileLoader, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), progressCallback, progressCallbackData, progressCallbackNotify, callback, userData);
	}

	/**
	 * Finishes a file loading started with gtk_source_file_loader_load_async().
	 *
	 * If the contents has been loaded, the following #GtkSourceFile properties will
	 * be updated: the location, the encoding, the newline type and the compression
	 * type.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: whether the contents has been loaded successfully.
	 *
	 * Since: 3.14
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto p = gtk_source_file_loader_load_finish(gtkSourceFileLoader, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Sets the candidate encodings for the file loading. The encodings are tried in
	 * the same order as the list.
	 *
	 * For convenience, @candidate_encodings can contain duplicates. Only the first
	 * occurrence of a duplicated encoding is kept in the list.
	 *
	 * By default the candidate encodings are (in that order in the list):
	 * 1. If set, the #GtkSourceFile's encoding as returned by
	 * gtk_source_file_get_encoding().
	 * 2. The default candidates as returned by
	 * gtk_source_encoding_get_default_candidates().
	 *
	 * Params:
	 *     candidateEncodings = a list of
	 *         #GtkSourceEncoding<!-- -->s.
	 *
	 * Since: 3.14
	 */
	public void setCandidateEncodings(ListSG candidateEncodings)
	{
		gtk_source_file_loader_set_candidate_encodings(gtkSourceFileLoader, (candidateEncodings is null) ? null : candidateEncodings.getListSGStruct());
	}
}
