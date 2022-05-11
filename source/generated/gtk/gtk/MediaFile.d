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


module gtk.MediaFile;

private import gio.FileIF;
private import gio.InputStream;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.MediaStream;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkMediaFile` implements `GtkMediaStream` for files.
 * 
 * This provides a simple way to play back video files with GTK.
 * 
 * GTK provides a GIO extension point for `GtkMediaFile` implementations
 * to allow for external implementations using various media frameworks.
 * 
 * GTK itself includes implementations using GStreamer and ffmpeg.
 */
public class MediaFile : MediaStream
{
	/** the main Gtk struct */
	protected GtkMediaFile* gtkMediaFile;

	/** Get the main Gtk struct */
	public GtkMediaFile* getMediaFileStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMediaFile;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMediaFile;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMediaFile* gtkMediaFile, bool ownedRef = false)
	{
		this.gtkMediaFile = gtkMediaFile;
		super(cast(GtkMediaStream*)gtkMediaFile, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_media_file_get_type();
	}

	/**
	 * Creates a new empty media file.
	 *
	 * Returns: a new `GtkMediaFile`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_media_file_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMediaFile*) __p, true);
	}

	/**
	 * Creates a new media file to play @file.
	 *
	 * Params:
	 *     file = The file to play
	 *
	 * Returns: a new `GtkMediaFile` playing @file
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileIF file)
	{
		auto __p = gtk_media_file_new_for_file((file is null) ? null : file.getFileStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_file");
		}

		this(cast(GtkMediaFile*) __p, true);
	}

	/**
	 * Creates a new media file for the given filename.
	 *
	 * This is a utility function that converts the given @filename
	 * to a `GFile` and calls [ctor@Gtk.MediaFile.new_for_file].
	 *
	 * Params:
	 *     filename = filename to open
	 *
	 * Returns: a new `GtkMediaFile` playing @filename
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename)
	{
		auto __p = gtk_media_file_new_for_filename(Str.toStringz(filename));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_filename");
		}

		this(cast(GtkMediaFile*) __p, true);
	}

	/**
	 * Creates a new media file to play @stream.
	 *
	 * If you want the resulting media to be seekable,
	 * the stream should implement the `GSeekable` interface.
	 *
	 * Params:
	 *     stream = The stream to play
	 *
	 * Returns: a new `GtkMediaFile`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InputStream stream)
	{
		auto __p = gtk_media_file_new_for_input_stream((stream is null) ? null : stream.getInputStreamStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_input_stream");
		}

		this(cast(GtkMediaFile*) __p, true);
	}

	/**
	 * Resets the media file to be empty.
	 */
	public void clear()
	{
		gtk_media_file_clear(gtkMediaFile);
	}

	/**
	 * Returns the file that @self is currently playing from.
	 *
	 * When @self is not playing or not playing from a file,
	 * %NULL is returned.
	 *
	 * Returns: The currently playing file
	 */
	public FileIF getFile()
	{
		auto __p = gtk_media_file_get_file(gtkMediaFile);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p);
	}

	/**
	 * Returns the stream that @self is currently playing from.
	 *
	 * When @self is not playing or not playing from a stream,
	 * %NULL is returned.
	 *
	 * Returns: The currently playing stream
	 */
	public InputStream getInputStream()
	{
		auto __p = gtk_media_file_get_input_stream(gtkMediaFile);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p);
	}

	/**
	 * Sets the `GtkMediaFile` to play the given file.
	 *
	 * If any file is still playing, stop playing it.
	 *
	 * Params:
	 *     file = the file to play
	 */
	public void setFile(FileIF file)
	{
		gtk_media_file_set_file(gtkMediaFile, (file is null) ? null : file.getFileStruct());
	}

	/**
	 * Sets the `GtkMediaFile to play the given file.
	 *
	 * This is a utility function that converts the given @filename
	 * to a `GFile` and calls [method@Gtk.MediaFile.set_file].
	 *
	 * Params:
	 *     filename = name of file to play
	 */
	public void setFilename(string filename)
	{
		gtk_media_file_set_filename(gtkMediaFile, Str.toStringz(filename));
	}

	/**
	 * Sets the `GtkMediaFile` to play the given stream.
	 *
	 * If anything is still playing, stop playing it.
	 *
	 * Full control about the @stream is assumed for the duration of
	 * playback. The stream will not be closed.
	 *
	 * Params:
	 *     stream = the stream to play from
	 */
	public void setInputStream(InputStream stream)
	{
		gtk_media_file_set_input_stream(gtkMediaFile, (stream is null) ? null : stream.getInputStreamStruct());
	}

	/**
	 * Sets the `GtkMediaFile to play the given resource.
	 *
	 * This is a utility function that converts the given @resource_path
	 * to a `GFile` and calls [method@Gtk.MediaFile.set_file].
	 *
	 * Params:
	 *     resourcePath = path to resource to play
	 */
	public void setResource(string resourcePath)
	{
		gtk_media_file_set_resource(gtkMediaFile, Str.toStringz(resourcePath));
	}
}
