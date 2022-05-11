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


module gtk.MediaControls;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.MediaStream;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkMediaControls` is a widget to show controls for a video.
 * 
 * ![An example GtkMediaControls](media-controls.png)
 * 
 * Usually, `GtkMediaControls` is used as part of [class@Gtk.Video].
 */
public class MediaControls : Widget
{
	/** the main Gtk struct */
	protected GtkMediaControls* gtkMediaControls;

	/** Get the main Gtk struct */
	public GtkMediaControls* getMediaControlsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMediaControls;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMediaControls;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMediaControls* gtkMediaControls, bool ownedRef = false)
	{
		this.gtkMediaControls = gtkMediaControls;
		super(cast(GtkWidget*)gtkMediaControls, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_media_controls_get_type();
	}

	/**
	 * Creates a new `GtkMediaControls` managing the @stream passed to it.
	 *
	 * Params:
	 *     stream = a `GtkMediaStream` to manage
	 *
	 * Returns: a new `GtkMediaControls`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(MediaStream stream)
	{
		auto __p = gtk_media_controls_new((stream is null) ? null : stream.getMediaStreamStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMediaControls*) __p);
	}

	/**
	 * Gets the media stream managed by @controls or %NULL if none.
	 *
	 * Returns: The media stream managed by @controls
	 */
	public MediaStream getMediaStream()
	{
		auto __p = gtk_media_controls_get_media_stream(gtkMediaControls);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MediaStream)(cast(GtkMediaStream*) __p);
	}

	/**
	 * Sets the stream that is controlled by @controls.
	 *
	 * Params:
	 *     stream = a `GtkMediaStream`
	 */
	public void setMediaStream(MediaStream stream)
	{
		gtk_media_controls_set_media_stream(gtkMediaControls, (stream is null) ? null : stream.getMediaStreamStruct());
	}
}
