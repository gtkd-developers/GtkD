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


module sourceview.FileSaver;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.FileIF;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import sourceview.Buffer;
private import sourceview.Encoding;
private import sourceview.File;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Save a [class@Buffer] into a file.
 * 
 * A `GtkSourceFileSaver` object permits to save a [class@Buffer] into a
 * [iface@Gio.File].
 * 
 * A file saver should be used only for one save operation, including errors
 * handling. If an error occurs, you can reconfigure the saver and relaunch the
 * operation with [method@FileSaver.save_async].
 */
public class FileSaver : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceFileSaver* gtkSourceFileSaver;

	/** Get the main Gtk struct */
	public GtkSourceFileSaver* getFileSaverStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceFileSaver;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceFileSaver;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceFileSaver* gtkSourceFileSaver, bool ownedRef = false)
	{
		this.gtkSourceFileSaver = gtkSourceFileSaver;
		super(cast(GObject*)gtkSourceFileSaver, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_file_saver_get_type();
	}

	/**
	 * Creates a new #GtkSourceFileSaver object. The @buffer will be saved to the
	 * [class@File]'s location.
	 *
	 * This constructor is suitable for a simple "save" operation, when the @file
	 * already contains a non-%NULL [property@File:location].
	 *
	 * Params:
	 *     buffer = the #GtkSourceBuffer to save.
	 *     file = the #GtkSourceFile.
	 *
	 * Returns: a new #GtkSourceFileSaver object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer buffer, File file)
	{
		auto __p = gtk_source_file_saver_new((buffer is null) ? null : buffer.getBufferStruct(), (file is null) ? null : file.getFileStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceFileSaver*) __p, true);
	}

	/**
	 * Creates a new #GtkSourceFileSaver object with a target location.
	 *
	 * When the file saving is finished successfully, @target_location is set to the @file's
	 * [property@File:location] property. If an error occurs, the previous valid
	 * location is still available in [class@File].
	 *
	 * This constructor is suitable for a "save as" operation, or for saving a new
	 * buffer for the first time.
	 *
	 * Params:
	 *     buffer = the #GtkSourceBuffer to save.
	 *     file = the #GtkSourceFile.
	 *     targetLocation = the #GFile where to save the buffer to.
	 *
	 * Returns: a new #GtkSourceFileSaver object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer buffer, File file, FileIF targetLocation)
	{
		auto __p = gtk_source_file_saver_new_with_target((buffer is null) ? null : buffer.getBufferStruct(), (file is null) ? null : file.getFileStruct(), (targetLocation is null) ? null : targetLocation.getFileStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_target");
		}

		this(cast(GtkSourceFileSaver*) __p, true);
	}

	/**
	 * Returns: the #GtkSourceBuffer to save.
	 */
	public Buffer getBuffer()
	{
		auto __p = gtk_source_file_saver_get_buffer(gtkSourceFileSaver);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GtkSourceBuffer*) __p);
	}

	/**
	 * Returns: the compression type.
	 */
	public GtkSourceCompressionType getCompressionType()
	{
		return gtk_source_file_saver_get_compression_type(gtkSourceFileSaver);
	}

	/**
	 * Returns: the encoding.
	 */
	public Encoding getEncoding()
	{
		auto __p = gtk_source_file_saver_get_encoding(gtkSourceFileSaver);

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
		auto __p = gtk_source_file_saver_get_file(gtkSourceFileSaver);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(File)(cast(GtkSourceFile*) __p);
	}

	/**
	 * Returns: the flags.
	 */
	public GtkSourceFileSaverFlags getFlags()
	{
		return gtk_source_file_saver_get_flags(gtkSourceFileSaver);
	}

	/**
	 * Returns: the #GFile where to save the buffer to.
	 */
	public FileIF getLocation()
	{
		auto __p = gtk_source_file_saver_get_location(gtkSourceFileSaver);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p);
	}

	/**
	 * Returns: the newline type.
	 */
	public GtkSourceNewlineType getNewlineType()
	{
		return gtk_source_file_saver_get_newline_type(gtkSourceFileSaver);
	}

	/**
	 * Saves asynchronously the buffer into the file.
	 *
	 * See the [iface@Gio.AsyncResult] documentation to know how to use this function.
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
	public void saveAsync(int ioPriority, Cancellable cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GDestroyNotify progressCallbackNotify, GAsyncReadyCallback callback, void* userData)
	{
		gtk_source_file_saver_save_async(gtkSourceFileSaver, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), progressCallback, progressCallbackData, progressCallbackNotify, callback, userData);
	}

	/**
	 * Finishes a file saving started with [method@FileSaver.save_async].
	 *
	 * If the file has been saved successfully, the following [class@File]
	 * properties will be updated: the location, the encoding, the newline type and
	 * the compression type.
	 *
	 * Since the 3.20 version, [method@Gtk.TextBuffer.set_modified] is called with %FALSE
	 * if the file has been saved successfully.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: whether the file was saved successfully.
	 *
	 * Throws: GException on failure.
	 */
	public bool saveFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = gtk_source_file_saver_save_finish(gtkSourceFileSaver, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets the compression type. By default the compression type is taken from the
	 * #GtkSourceFile.
	 *
	 * Params:
	 *     compressionType = the new compression type.
	 */
	public void setCompressionType(GtkSourceCompressionType compressionType)
	{
		gtk_source_file_saver_set_compression_type(gtkSourceFileSaver, compressionType);
	}

	/**
	 * Sets the encoding. If @encoding is %NULL, the UTF-8 encoding will be set.
	 *
	 * By default the encoding is taken from the #GtkSourceFile.
	 *
	 * Params:
	 *     encoding = the new encoding, or %NULL for UTF-8.
	 */
	public void setEncoding(Encoding encoding)
	{
		gtk_source_file_saver_set_encoding(gtkSourceFileSaver, (encoding is null) ? null : encoding.getEncodingStruct());
	}

	/** */
	public void setFlags(GtkSourceFileSaverFlags flags)
	{
		gtk_source_file_saver_set_flags(gtkSourceFileSaver, flags);
	}

	/**
	 * Sets the newline type. By default the newline type is taken from the
	 * #GtkSourceFile.
	 *
	 * Params:
	 *     newlineType = the new newline type.
	 */
	public void setNewlineType(GtkSourceNewlineType newlineType)
	{
		gtk_source_file_saver_set_newline_type(gtkSourceFileSaver, newlineType);
	}
}
