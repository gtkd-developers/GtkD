/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gdk-pixbuf-animation.html
 * outPack = gdkpixbuf
 * outFile = PixbufAnimation
 * strct   = GdkPixbufAnimation
 * realStrct=
 * ctorStrct=
 * clss    = PixbufAnimation
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_pixbuf_animation_
 * omit structs:
 * omit prefixes:
 * 	- gdk_pixbuf_simple_anim_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.TimeVal
 * 	- gdk.Pixbuf
 * 	- glib.Str
 * structWrap:
 * 	- GTimeVal* -> TimeVal
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixbufAnimation* -> PixbufAnimation
 * module aliases:
 * local aliases:
 */

module gdkpixbuf.PixbufAnimation;

public  import gtkc.gdkpixbuftypes;

private import gtkc.gdkpixbuf;


private import glib.TimeVal;
private import gdk.Pixbuf;
private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 *  The gdk-pixbuf library provides a simple mechanism to load and represent
 *  animations. An animation is conceptually a series of frames to be displayed
 *  over time. Each frame is the same size. The animation may not be represented
 *  as a series of frames internally; for example, it may be stored as a
 *  sprite and instructions for moving the sprite around a background. To display
 *  an animation you don't need to understand its representation, however; you just
 *  ask gdk-pixbuf what should be displayed at a given point in time.
 */
public class PixbufAnimation : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkPixbufAnimation* gdkPixbufAnimation;
	
	
	public GdkPixbufAnimation* getPixbufAnimationStruct()
	{
		return gdkPixbufAnimation;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkPixbufAnimation;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkPixbufAnimation* gdkPixbufAnimation)
	{
		if(gdkPixbufAnimation is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gdkPixbufAnimation passed to constructor.");
			else return;
		}
		super(cast(GObject*)gdkPixbufAnimation);
		this.gdkPixbufAnimation = gdkPixbufAnimation;
	}
	
	/**
	 */
	
	/**
	 * Creates a new animation by loading it from a file. The file format is
	 * detected automatically. If the file's format does not support multi-frame
	 * images, then an animation with a single frame will be created. Possible errors
	 * are in the GDK_PIXBUF_ERROR and G_FILE_ERROR domains.
	 * Params:
	 * filename =  Name of file to load, in the GLib file name encoding
	 * error =  return location for error
	 */
	public this (char[] filename, GError** error)
	{
		// GdkPixbufAnimation* gdk_pixbuf_animation_new_from_file (const char *filename,  GError **error);
		auto p = gdk_pixbuf_animation_new_from_file(Str.toStringz(filename), error);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GdkPixbufAnimation*) p);
	}
	
	/**
	 * Warning
	 * gdk_pixbuf_animation_ref is deprecated and should not be used in newly-written code. Use g_object_ref().
	 * Adds a reference to an animation.
	 * Returns: The same as the animation argument.
	 */
	public PixbufAnimation doref()
	{
		// GdkPixbufAnimation* gdk_pixbuf_animation_ref (GdkPixbufAnimation *animation);
		auto p = gdk_pixbuf_animation_ref(gdkPixbufAnimation);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PixbufAnimation(cast(GdkPixbufAnimation*) p);
	}
	
	/**
	 * Warning
	 * gdk_pixbuf_animation_unref is deprecated and should not be used in newly-written code. Use g_object_unref().
	 * Removes a reference from an animation.
	 */
	public void unref()
	{
		// void gdk_pixbuf_animation_unref (GdkPixbufAnimation *animation);
		gdk_pixbuf_animation_unref(gdkPixbufAnimation);
	}
	
	/**
	 * Queries the width of the bounding box of a pixbuf animation.
	 * Returns: Width of the bounding box of the animation.
	 */
	public int getWidth()
	{
		// int gdk_pixbuf_animation_get_width (GdkPixbufAnimation *animation);
		return gdk_pixbuf_animation_get_width(gdkPixbufAnimation);
	}
	
	/**
	 * Queries the height of the bounding box of a pixbuf animation.
	 * Returns: Height of the bounding box of the animation.
	 */
	public int getHeight()
	{
		// int gdk_pixbuf_animation_get_height (GdkPixbufAnimation *animation);
		return gdk_pixbuf_animation_get_height(gdkPixbufAnimation);
	}
	
	/**
	 * Get an iterator for displaying an animation. The iterator provides
	 * the frames that should be displayed at a given time.
	 * It should be freed after use with g_object_unref().
	 * start_time would normally come from g_get_current_time(), and
	 * marks the beginning of animation playback. After creating an
	 * iterator, you should immediately display the pixbuf returned by
	 * gdk_pixbuf_animation_iter_get_pixbuf(). Then, you should install a
	 * timeout (with g_timeout_add()) or by some other mechanism ensure
	 * that you'll update the image after
	 * gdk_pixbuf_animation_iter_get_delay_time() milliseconds. Each time
	 * the image is updated, you should reinstall the timeout with the new,
	 * possibly-changed delay time.
	 * As a shortcut, if start_time is NULL, the result of
	 * g_get_current_time() will be used automatically.
	 * To update the image (i.e. possibly change the result of
	 * gdk_pixbuf_animation_iter_get_pixbuf() to a new frame of the animation),
	 * call gdk_pixbuf_animation_iter_advance().
	 * If you're using GdkPixbufLoader, in addition to updating the image
	 * after the delay time, you should also update it whenever you
	 * receive the area_updated signal and
	 * gdk_pixbuf_animation_iter_on_currently_loading_frame() returns
	 * TRUE. In this case, the frame currently being fed into the loader
	 * has received new data, so needs to be refreshed. The delay time for
	 * a frame may also be modified after an area_updated signal, for
	 * example if the delay time for a frame is encoded in the data after
	 * the frame itself. So your timeout should be reinstalled after any
	 * area_updated signal.
	 * A delay time of -1 is possible, indicating "infinite."
	 * Params:
	 * startTime =  time when the animation starts playing
	 * Returns: an iterator to move over the animation
	 */
	public GdkPixbufAnimationIter* getIter(TimeVal startTime)
	{
		// GdkPixbufAnimationIter* gdk_pixbuf_animation_get_iter (GdkPixbufAnimation *animation,  const GTimeVal *start_time);
		return gdk_pixbuf_animation_get_iter(gdkPixbufAnimation, (startTime is null) ? null : startTime.getTimeValStruct());
	}
	
	/**
	 * If you load a file with gdk_pixbuf_animation_new_from_file() and it turns
	 * out to be a plain, unanimated image, then this function will return
	 * TRUE. Use gdk_pixbuf_animation_get_static_image() to retrieve
	 * the image.
	 * Returns: TRUE if the "animation" was really just an image
	 */
	public int isStaticImage()
	{
		// gboolean gdk_pixbuf_animation_is_static_image  (GdkPixbufAnimation *animation);
		return gdk_pixbuf_animation_is_static_image(gdkPixbufAnimation);
	}
	
	/**
	 * If an animation is really just a plain image (has only one frame),
	 * this function returns that image. If the animation is an animation,
	 * this function returns a reasonable thing to display as a static
	 * unanimated image, which might be the first frame, or something more
	 * sophisticated. If an animation hasn't loaded any frames yet, this
	 * function will return NULL.
	 * Returns: unanimated image representing the animation
	 */
	public Pixbuf getStaticImage()
	{
		// GdkPixbuf* gdk_pixbuf_animation_get_static_image  (GdkPixbufAnimation *animation);
		auto p = gdk_pixbuf_animation_get_static_image(gdkPixbufAnimation);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Pixbuf(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Possibly advances an animation to a new frame. Chooses the frame based
	 * on the start time passed to gdk_pixbuf_animation_get_iter().
	 * current_time would normally come from g_get_current_time(), and
	 * must be greater than or equal to the time passed to
	 * gdk_pixbuf_animation_get_iter(), and must increase or remain
	 * unchanged each time gdk_pixbuf_animation_iter_get_pixbuf() is
	 * called. That is, you can't go backward in time; animations only
	 * play forward.
	 * As a shortcut, pass NULL for the current time and g_get_current_time()
	 * will be invoked on your behalf. So you only need to explicitly pass
	 * current_time if you're doing something odd like playing the animation
	 * at double speed.
	 * If this function returns FALSE, there's no need to update the animation
	 * display, assuming the display had been rendered prior to advancing;
	 * if TRUE, you need to call gdk_animation_iter_get_pixbuf() and update the
	 * display with the new pixbuf.
	 * Params:
	 * iter =  a GdkPixbufAnimationIter
	 * currentTime =  current time
	 * Returns: TRUE if the image may need updating
	 */
	public static int iterAdvance(GdkPixbufAnimationIter* iter, TimeVal currentTime)
	{
		// gboolean gdk_pixbuf_animation_iter_advance (GdkPixbufAnimationIter *iter,  const GTimeVal *current_time);
		return gdk_pixbuf_animation_iter_advance(iter, (currentTime is null) ? null : currentTime.getTimeValStruct());
	}
	
	/**
	 * Gets the number of milliseconds the current pixbuf should be displayed,
	 * or -1 if the current pixbuf should be displayed forever. g_timeout_add()
	 * conveniently takes a timeout in milliseconds, so you can use a timeout
	 * to schedule the next update.
	 * Params:
	 * iter =  an animation iterator
	 * Returns: delay time in milliseconds (thousandths of a second)
	 */
	public static int iterGetDelayTime(GdkPixbufAnimationIter* iter)
	{
		// int gdk_pixbuf_animation_iter_get_delay_time  (GdkPixbufAnimationIter *iter);
		return gdk_pixbuf_animation_iter_get_delay_time(iter);
	}
	
	/**
	 * Used to determine how to respond to the area_updated signal on
	 * GdkPixbufLoader when loading an animation. area_updated is emitted
	 * for an area of the frame currently streaming in to the loader. So if
	 * you're on the currently loading frame, you need to redraw the screen for
	 * the updated area.
	 * Params:
	 * iter =  a GdkPixbufAnimationIter
	 * Returns: TRUE if the frame we're on is partially loaded, or the last frame
	 */
	public static int iterOnCurrentlyLoadingFrame(GdkPixbufAnimationIter* iter)
	{
		// gboolean gdk_pixbuf_animation_iter_on_currently_loading_frame  (GdkPixbufAnimationIter *iter);
		return gdk_pixbuf_animation_iter_on_currently_loading_frame(iter);
	}
	
	/**
	 * Gets the current pixbuf which should be displayed; the pixbuf will
	 * be the same size as the animation itself
	 * (gdk_pixbuf_animation_get_width(), gdk_pixbuf_animation_get_height()).
	 * This pixbuf should be displayed for
	 * gdk_pixbuf_animation_iter_get_delay_time() milliseconds. The caller
	 * of this function does not own a reference to the returned pixbuf;
	 * the returned pixbuf will become invalid when the iterator advances
	 * to the next frame, which may happen anytime you call
	 * gdk_pixbuf_animation_iter_advance(). Copy the pixbuf to keep it
	 * (don't just add a reference), as it may get recycled as you advance
	 * the iterator.
	 * Params:
	 * iter =  an animation iterator
	 * Returns: the pixbuf to be displayed
	 */
	public static Pixbuf iterGetPixbuf(GdkPixbufAnimationIter* iter)
	{
		// GdkPixbuf* gdk_pixbuf_animation_iter_get_pixbuf  (GdkPixbufAnimationIter *iter);
		auto p = gdk_pixbuf_animation_iter_get_pixbuf(iter);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Pixbuf(cast(GdkPixbuf*) p);
	}
}
