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


module gdkpixbuf.PixbufAnimationIter;

private import gdkpixbuf.Pixbuf;
private import gdkpixbuf.c.functions;
public  import gdkpixbuf.c.types;
private import glib.TimeVal;
private import gobject.ObjectG;


/**
 * An opaque object representing an iterator which points to a
 * certain position in an animation.
 */
public class PixbufAnimationIter : ObjectG
{
	/** the main Gtk struct */
	protected GdkPixbufAnimationIter* gdkPixbufAnimationIter;

	/** Get the main Gtk struct */
	public GdkPixbufAnimationIter* getPixbufAnimationIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkPixbufAnimationIter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPixbufAnimationIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkPixbufAnimationIter* gdkPixbufAnimationIter, bool ownedRef = false)
	{
		this.gdkPixbufAnimationIter = gdkPixbufAnimationIter;
		super(cast(GObject*)gdkPixbufAnimationIter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_pixbuf_animation_iter_get_type();
	}

	/**
	 * Possibly advances an animation to a new frame.
	 *
	 * Chooses the frame based on the start time passed to
	 * gdk_pixbuf_animation_get_iter().
	 *
	 * @current_time would normally come from g_get_current_time(), and
	 * must be greater than or equal to the time passed to
	 * gdk_pixbuf_animation_get_iter(), and must increase or remain
	 * unchanged each time gdk_pixbuf_animation_iter_get_pixbuf() is
	 * called. That is, you can't go backward in time; animations only
	 * play forward.
	 *
	 * As a shortcut, pass `NULL` for the current time and g_get_current_time()
	 * will be invoked on your behalf. So you only need to explicitly pass
	 * @current_time if you're doing something odd like playing the animation
	 * at double speed.
	 *
	 * If this function returns `FALSE`, there's no need to update the animation
	 * display, assuming the display had been rendered prior to advancing;
	 * if `TRUE`, you need to call gdk_pixbuf_animation_iter_get_pixbuf()
	 * and update the display with the new pixbuf.
	 *
	 * Params:
	 *     currentTime = current time
	 *
	 * Returns: `TRUE` if the image may need updating
	 */
	public bool advance(TimeVal currentTime)
	{
		return gdk_pixbuf_animation_iter_advance(gdkPixbufAnimationIter, (currentTime is null) ? null : currentTime.getTimeValStruct()) != 0;
	}

	/**
	 * Gets the number of milliseconds the current pixbuf should be displayed,
	 * or -1 if the current pixbuf should be displayed forever.
	 *
	 * The `g_timeout_add()` function conveniently takes a timeout in milliseconds,
	 * so you can use a timeout to schedule the next update.
	 *
	 * Note that some formats, like GIF, might clamp the timeout values in the
	 * image file to avoid updates that are just too quick. The minimum timeout
	 * for GIF images is currently 20 milliseconds.
	 *
	 * Returns: delay time in milliseconds (thousandths of a second)
	 */
	public int getDelayTime()
	{
		return gdk_pixbuf_animation_iter_get_delay_time(gdkPixbufAnimationIter);
	}

	/**
	 * Gets the current pixbuf which should be displayed.
	 *
	 * The pixbuf might not be the same size as the animation itself
	 * (gdk_pixbuf_animation_get_width(), gdk_pixbuf_animation_get_height()).
	 *
	 * This pixbuf should be displayed for gdk_pixbuf_animation_iter_get_delay_time()
	 * milliseconds.
	 *
	 * The caller of this function does not own a reference to the returned
	 * pixbuf; the returned pixbuf will become invalid when the iterator
	 * advances to the next frame, which may happen anytime you call
	 * gdk_pixbuf_animation_iter_advance().
	 *
	 * Copy the pixbuf to keep it (don't just add a reference), as it may get
	 * recycled as you advance the iterator.
	 *
	 * Returns: the pixbuf to be displayed
	 */
	public Pixbuf getPixbuf()
	{
		auto __p = gdk_pixbuf_animation_iter_get_pixbuf(gdkPixbufAnimationIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p);
	}

	/**
	 * Used to determine how to respond to the area_updated signal on
	 * #GdkPixbufLoader when loading an animation.
	 *
	 * The `::area_updated` signal is emitted for an area of the frame currently
	 * streaming in to the loader. So if you're on the currently loading frame,
	 * you will need to redraw the screen for the updated area.
	 *
	 * Returns: `TRUE` if the frame we're on is partially loaded, or the last frame
	 */
	public bool onCurrentlyLoadingFrame()
	{
		return gdk_pixbuf_animation_iter_on_currently_loading_frame(gdkPixbufAnimationIter) != 0;
	}
}
