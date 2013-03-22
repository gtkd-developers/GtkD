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

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = gdkpixbuf
 * outFile = PixbufAnimationIter
 * strct   = GdkPixbufAnimationIter
 * realStrct=
 * ctorStrct=
 * clss    = PixbufAnimationIter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- gdk_pixbuf_animation_iter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdkpixbuf.PixbufAnimationIter;

public  import gtkc.gdkpixbuftypes;

private import gtkc.gdkpixbuf;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gdk.Pixbuf;



private import gobject.ObjectG;

/**
 * The GdkPixBuf library provides a simple mechanism to load and
 * represent animations. An animation is conceptually a series of
 * frames to be displayed over time. The animation may not be
 * represented as a series of frames internally; for example, it may
 * be stored as a sprite and instructions for moving the sprite around
 * a background. To display an animation you don't need to understand
 * its representation, however; you just ask GdkPixBuf what should
 * be displayed at a given point in time.
 */
public class PixbufAnimationIter : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkPixbufAnimationIter* gdkPixbufAnimationIter;
	
	
	public GdkPixbufAnimationIter* getPixbufAnimationIterStruct()
	{
		return gdkPixbufAnimationIter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPixbufAnimationIter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkPixbufAnimationIter* gdkPixbufAnimationIter)
	{
		super(cast(GObject*)gdkPixbufAnimationIter);
		this.gdkPixbufAnimationIter = gdkPixbufAnimationIter;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkPixbufAnimationIter = cast(GdkPixbufAnimationIter*)obj;
	}
	
	/**
	 */
	
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
	 * if TRUE, you need to call gdk_pixbuf_animation_iter_get_pixbuf()
	 * and update the display with the new pixbuf.
	 * Params:
	 * currentTime = current time. [allow-none]
	 * Returns: TRUE if the image may need updating
	 */
	public int advance(ref GTimeVal currentTime)
	{
		// gboolean gdk_pixbuf_animation_iter_advance (GdkPixbufAnimationIter *iter,  const GTimeVal *current_time);
		return gdk_pixbuf_animation_iter_advance(gdkPixbufAnimationIter, &currentTime);
	}
	
	/**
	 * Gets the number of milliseconds the current pixbuf should be displayed,
	 * or -1 if the current pixbuf should be displayed forever. g_timeout_add()
	 * conveniently takes a timeout in milliseconds, so you can use a timeout
	 * to schedule the next update.
	 * Returns: delay time in milliseconds (thousandths of a second)
	 */
	public int getDelayTime()
	{
		// int gdk_pixbuf_animation_iter_get_delay_time  (GdkPixbufAnimationIter *iter);
		return gdk_pixbuf_animation_iter_get_delay_time(gdkPixbufAnimationIter);
	}
	
	/**
	 * Used to determine how to respond to the area_updated signal on
	 * GdkPixbufLoader when loading an animation. area_updated is emitted
	 * for an area of the frame currently streaming in to the loader. So if
	 * you're on the currently loading frame, you need to redraw the screen for
	 * the updated area.
	 * Returns: TRUE if the frame we're on is partially loaded, or the last frame
	 */
	public int onCurrentlyLoadingFrame()
	{
		// gboolean gdk_pixbuf_animation_iter_on_currently_loading_frame  (GdkPixbufAnimationIter *iter);
		return gdk_pixbuf_animation_iter_on_currently_loading_frame(gdkPixbufAnimationIter);
	}
	
	/**
	 * Gets the current pixbuf which should be displayed; the pixbuf might not
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
	 * Returns: the pixbuf to be displayed. [transfer none]
	 */
	public Pixbuf getPixbuf()
	{
		// GdkPixbuf * gdk_pixbuf_animation_iter_get_pixbuf  (GdkPixbufAnimationIter *iter);
		auto p = gdk_pixbuf_animation_iter_get_pixbuf(gdkPixbufAnimationIter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
}
