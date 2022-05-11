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


module gtk.Video;

private import gio.FileIF;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.MediaStream;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkVideo` is a widget to show a `GtkMediaStream` with media controls.
 * 
 * ![An example GtkVideo](video.png)
 * 
 * The controls are available separately as [class@Gtk.MediaControls].
 * If you just want to display a video without controls, you can treat it
 * like any other paintable and for example put it into a [class@Gtk.Picture].
 * 
 * `GtkVideo` aims to cover use cases such as previews, embedded animations,
 * etc. It supports autoplay, looping, and simple media controls. It does
 * not have support for video overlays, multichannel audio, device
 * selection, or input. If you are writing a full-fledged video player,
 * you may want to use the [iface@Gdk.Paintable] API and a media framework
 * such as Gstreamer directly.
 */
public class Video : Widget
{
	/** the main Gtk struct */
	protected GtkVideo* gtkVideo;

	/** Get the main Gtk struct */
	public GtkVideo* getVideoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkVideo;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkVideo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkVideo* gtkVideo, bool ownedRef = false)
	{
		this.gtkVideo = gtkVideo;
		super(cast(GtkWidget*)gtkVideo, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_video_get_type();
	}

	/**
	 * Creates a new empty `GtkVideo`.
	 *
	 * Returns: a new `GtkVideo`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_video_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkVideo*) __p);
	}

	/**
	 * Creates a `GtkVideo` to play back the given @file.
	 *
	 * Params:
	 *     file = a `GFile`
	 *
	 * Returns: a new `GtkVideo`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileIF file)
	{
		auto __p = gtk_video_new_for_file((file is null) ? null : file.getFileStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_file");
		}

		this(cast(GtkVideo*) __p);
	}

	/**
	 * Creates a `GtkVideo` to play back the given @filename.
	 *
	 * This is a utility function that calls [ctor@Gtk.Video.new_for_file],
	 * See that function for details.
	 *
	 * Params:
	 *     filename = filename to play back
	 *
	 * Returns: a new `GtkVideo`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename)
	{
		auto __p = gtk_video_new_for_filename(Str.toStringz(filename));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_filename");
		}

		this(cast(GtkVideo*) __p);
	}

	/**
	 * Creates a `GtkVideo` to play back the given @stream.
	 *
	 * Params:
	 *     stream = a `GtkMediaStream`
	 *
	 * Returns: a new `GtkVideo`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(MediaStream stream)
	{
		auto __p = gtk_video_new_for_media_stream((stream is null) ? null : stream.getMediaStreamStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_media_stream");
		}

		this(cast(GtkVideo*) __p);
	}

	/**
	 * Returns %TRUE if videos have been set to loop.
	 *
	 * Returns: %TRUE if streams should autoplay
	 */
	public bool getAutoplay()
	{
		return gtk_video_get_autoplay(gtkVideo) != 0;
	}

	/**
	 * Gets the file played by @self or %NULL if not playing back
	 * a file.
	 *
	 * Returns: The file played by @self
	 */
	public FileIF getFile()
	{
		auto __p = gtk_video_get_file(gtkVideo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p);
	}

	/**
	 * Returns %TRUE if videos have been set to loop.
	 *
	 * Returns: %TRUE if streams should loop
	 */
	public bool getLoop()
	{
		return gtk_video_get_loop(gtkVideo) != 0;
	}

	/**
	 * Gets the media stream managed by @self or %NULL if none.
	 *
	 * Returns: The media stream managed by @self
	 */
	public MediaStream getMediaStream()
	{
		auto __p = gtk_video_get_media_stream(gtkVideo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MediaStream)(cast(GtkMediaStream*) __p);
	}

	/**
	 * Sets whether @self automatically starts playback when it
	 * becomes visible or when a new file gets loaded.
	 *
	 * Params:
	 *     autoplay = whether media streams should autoplay
	 */
	public void setAutoplay(bool autoplay)
	{
		gtk_video_set_autoplay(gtkVideo, autoplay);
	}

	/**
	 * Makes @self play the given @file.
	 *
	 * Params:
	 *     file = the file to play
	 */
	public void setFile(FileIF file)
	{
		gtk_video_set_file(gtkVideo, (file is null) ? null : file.getFileStruct());
	}

	/**
	 * Makes @self play the given @filename.
	 *
	 * This is a utility function that calls gtk_video_set_file(),
	 *
	 * Params:
	 *     filename = the filename to play
	 */
	public void setFilename(string filename)
	{
		gtk_video_set_filename(gtkVideo, Str.toStringz(filename));
	}

	/**
	 * Sets whether new files loaded by @self should be set to loop.
	 *
	 * Params:
	 *     loop = whether media streams should loop
	 */
	public void setLoop(bool loop)
	{
		gtk_video_set_loop(gtkVideo, loop);
	}

	/**
	 * Sets the media stream to be played back.
	 *
	 * @self will take full control of managing the media stream. If you
	 * want to manage a media stream yourself, consider using a
	 * [class@Gtk.Picture] for display.
	 *
	 * If you want to display a file, consider using [method@Gtk.Video.set_file]
	 * instead.
	 *
	 * Params:
	 *     stream = The media stream to play or %NULL to unset
	 */
	public void setMediaStream(MediaStream stream)
	{
		gtk_video_set_media_stream(gtkVideo, (stream is null) ? null : stream.getMediaStreamStruct());
	}

	/**
	 * Makes @self play the resource at the given @resource_path.
	 *
	 * This is a utility function that calls [method@Gtk.Video.set_file].
	 *
	 * Params:
	 *     resourcePath = the resource to set
	 */
	public void setResource(string resourcePath)
	{
		gtk_video_set_resource(gtkVideo, Str.toStringz(resourcePath));
	}
}
