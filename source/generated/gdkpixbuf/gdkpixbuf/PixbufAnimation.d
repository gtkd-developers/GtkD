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


module gdkpixbuf.PixbufAnimation;

private import gdkpixbuf.Pixbuf;
private import gdkpixbuf.PixbufAnimationIter;
private import gdkpixbuf.c.functions;
public  import gdkpixbuf.c.types;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InputStream;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.TimeVal;
private import gobject.ObjectG;


/**
 * An opaque object representing an animation.
 * 
 * The GdkPixBuf library provides a simple mechanism to load and
 * represent animations. An animation is conceptually a series of
 * frames to be displayed over time.
 * 
 * The animation may not be represented as a series of frames
 * internally; for example, it may be stored as a sprite and
 * instructions for moving the sprite around a background.
 * 
 * To display an animation you don't need to understand its
 * representation, however; you just ask `GdkPixbuf` what should
 * be displayed at a given point in time.
 */
public class PixbufAnimation : ObjectG
{
	/** the main Gtk struct */
	protected GdkPixbufAnimation* gdkPixbufAnimation;

	/** Get the main Gtk struct */
	public GdkPixbufAnimation* getPixbufAnimationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkPixbufAnimation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPixbufAnimation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkPixbufAnimation* gdkPixbufAnimation, bool ownedRef = false)
	{
		this.gdkPixbufAnimation = gdkPixbufAnimation;
		super(cast(GObject*)gdkPixbufAnimation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_pixbuf_animation_get_type();
	}

	/**
	 * Creates a new animation by loading it from a file.
	 *
	 * The file format is detected automatically.
	 *
	 * If the file's format does not support multi-frame images, then an animation
	 * with a single frame will be created.
	 *
	 * Possible errors are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
	 *
	 * Params:
	 *     filename = Name of file to load, in the GLib file
	 *         name encoding
	 *
	 * Returns: A newly-created animation
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_animation_new_from_file(Str.toStringz(filename), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}

		this(cast(GdkPixbufAnimation*) __p, true);
	}

	/**
	 * Creates a new animation by loading it from an input stream.
	 *
	 * The file format is detected automatically.
	 *
	 * If `NULL` is returned, then @error will be set.
	 *
	 * The @cancellable can be used to abort the operation from another thread.
	 * If the operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
	 * returned. Other possible errors are in the `GDK_PIXBUF_ERROR` and
	 * `G_IO_ERROR` domains.
	 *
	 * The stream is not closed.
	 *
	 * Params:
	 *     stream = a `GInputStream` to load the pixbuf from
	 *     cancellable = optional `GCancellable` object
	 *
	 * Returns: A newly-created animation
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InputStream stream, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_animation_new_from_stream((stream is null) ? null : stream.getInputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_stream");
		}

		this(cast(GdkPixbufAnimation*) __p, true);
	}

	/**
	 * Finishes an asynchronous pixbuf animation creation operation started with
	 * [func@GdkPixbuf.PixbufAnimation.new_from_stream_async].
	 *
	 * Params:
	 *     asyncResult = a #GAsyncResult
	 *
	 * Returns: the newly created animation
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(AsyncResultIF asyncResult)
	{
		GError* err = null;

		auto __p = gdk_pixbuf_animation_new_from_stream_finish((asyncResult is null) ? null : asyncResult.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_stream_finish");
		}

		this(cast(GdkPixbufAnimation*) __p, true);
	}

	/**
	 * Creates a new animation by asynchronously loading an image from an input stream.
	 *
	 * For more details see gdk_pixbuf_new_from_stream(), which is the synchronous
	 * version of this function.
	 *
	 * When the operation is finished, `callback` will be called in the main thread.
	 * You can then call gdk_pixbuf_animation_new_from_stream_finish() to get the
	 * result of the operation.
	 *
	 * Params:
	 *     stream = a #GInputStream from which to load the animation
	 *     cancellable = optional #GCancellable object
	 *     callback = a `GAsyncReadyCallback` to call when the pixbuf is loaded
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.28
	 */
	public static void newFromStreamAsync(InputStream stream, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_pixbuf_animation_new_from_stream_async((stream is null) ? null : stream.getInputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Queries the height of the bounding box of a pixbuf animation.
	 *
	 * Returns: Height of the bounding box of the animation.
	 */
	public int getHeight()
	{
		return gdk_pixbuf_animation_get_height(gdkPixbufAnimation);
	}

	/**
	 * Get an iterator for displaying an animation.
	 *
	 * The iterator provides the frames that should be displayed at a
	 * given time.
	 *
	 * @start_time would normally come from g_get_current_time(), and marks
	 * the beginning of animation playback. After creating an iterator, you
	 * should immediately display the pixbuf returned by
	 * gdk_pixbuf_animation_iter_get_pixbuf(). Then, you should install
	 * a timeout (with g_timeout_add()) or by some other mechanism ensure
	 * that you'll update the image after
	 * gdk_pixbuf_animation_iter_get_delay_time() milliseconds. Each time
	 * the image is updated, you should reinstall the timeout with the new,
	 * possibly-changed delay time.
	 *
	 * As a shortcut, if @start_time is `NULL`, the result of
	 * g_get_current_time() will be used automatically.
	 *
	 * To update the image (i.e. possibly change the result of
	 * gdk_pixbuf_animation_iter_get_pixbuf() to a new frame of the animation),
	 * call gdk_pixbuf_animation_iter_advance().
	 *
	 * If you're using #GdkPixbufLoader, in addition to updating the image
	 * after the delay time, you should also update it whenever you
	 * receive the area_updated signal and
	 * gdk_pixbuf_animation_iter_on_currently_loading_frame() returns
	 * `TRUE`. In this case, the frame currently being fed into the loader
	 * has received new data, so needs to be refreshed. The delay time for
	 * a frame may also be modified after an area_updated signal, for
	 * example if the delay time for a frame is encoded in the data after
	 * the frame itself. So your timeout should be reinstalled after any
	 * area_updated signal.
	 *
	 * A delay time of -1 is possible, indicating "infinite".
	 *
	 * Params:
	 *     startTime = time when the animation starts playing
	 *
	 * Returns: an iterator to move over the animation
	 */
	public PixbufAnimationIter getIter(TimeVal startTime)
	{
		auto __p = gdk_pixbuf_animation_get_iter(gdkPixbufAnimation, (startTime is null) ? null : startTime.getTimeValStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PixbufAnimationIter)(cast(GdkPixbufAnimationIter*) __p, true);
	}

	/**
	 * Retrieves a static image for the animation.
	 *
	 * If an animation is really just a plain image (has only one frame),
	 * this function returns that image.
	 *
	 * If the animation is an animation, this function returns a reasonable
	 * image to use as a static unanimated image, which might be the first
	 * frame, or something more sophisticated depending on the file format.
	 *
	 * If an animation hasn't loaded any frames yet, this function will
	 * return `NULL`.
	 *
	 * Returns: unanimated image representing the animation
	 */
	public Pixbuf getStaticImage()
	{
		auto __p = gdk_pixbuf_animation_get_static_image(gdkPixbufAnimation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p);
	}

	/**
	 * Queries the width of the bounding box of a pixbuf animation.
	 *
	 * Returns: Width of the bounding box of the animation.
	 */
	public int getWidth()
	{
		return gdk_pixbuf_animation_get_width(gdkPixbufAnimation);
	}

	/**
	 * Checks whether the animation is a static image.
	 *
	 * If you load a file with gdk_pixbuf_animation_new_from_file() and it
	 * turns out to be a plain, unanimated image, then this function will
	 * return `TRUE`. Use gdk_pixbuf_animation_get_static_image() to retrieve
	 * the image.
	 *
	 * Returns: `TRUE` if the "animation" was really just an image
	 */
	public bool isStaticImage()
	{
		return gdk_pixbuf_animation_is_static_image(gdkPixbufAnimation) != 0;
	}

	alias doref = ref_;
	/**
	 * Adds a reference to an animation.
	 *
	 * Deprecated: Use g_object_ref().
	 *
	 * Returns: The same as the @animation argument.
	 */
	public override PixbufAnimation ref_()
	{
		auto __p = gdk_pixbuf_animation_ref(gdkPixbufAnimation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PixbufAnimation)(cast(GdkPixbufAnimation*) __p);
	}

	/**
	 * Removes a reference from an animation.
	 *
	 * Deprecated: Use g_object_unref().
	 */
	public override void unref()
	{
		gdk_pixbuf_animation_unref(gdkPixbufAnimation);
	}
}
