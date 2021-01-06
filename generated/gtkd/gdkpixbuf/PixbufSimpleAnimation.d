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


module gdkpixbuf.PixbufSimpleAnimation;

private import gdkpixbuf.Pixbuf;
private import gdkpixbuf.PixbufAnimation;
private import gdkpixbuf.c.functions;
public  import gdkpixbuf.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * An opaque struct representing a simple animation.
 */
public class PixbufSimpleAnimation : PixbufAnimation
{
	/** the main Gtk struct */
	protected GdkPixbufSimpleAnim* gdkPixbufSimpleAnim;

	/** Get the main Gtk struct */
	public GdkPixbufSimpleAnim* getPixbufSimpleAnimationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkPixbufSimpleAnim;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPixbufSimpleAnim;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkPixbufSimpleAnim* gdkPixbufSimpleAnim, bool ownedRef = false)
	{
		this.gdkPixbufSimpleAnim = gdkPixbufSimpleAnim;
		super(cast(GdkPixbufAnimation*)gdkPixbufSimpleAnim, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_pixbuf_simple_anim_get_type();
	}

	/**
	 * Creates a new, empty animation.
	 *
	 * Params:
	 *     width = the width of the animation
	 *     height = the height of the animation
	 *     rate = the speed of the animation, in frames per second
	 *
	 * Returns: a newly allocated #GdkPixbufSimpleAnim
	 *
	 * Since: 2.8
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int width, int height, float rate)
	{
		auto __p = gdk_pixbuf_simple_anim_new(width, height, rate);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkPixbufSimpleAnim*) __p, true);
	}

	/**
	 * Adds a new frame to @animation. The @pixbuf must
	 * have the dimensions specified when the animation
	 * was constructed.
	 *
	 * Params:
	 *     pixbuf = the pixbuf to add
	 *
	 * Since: 2.8
	 */
	public void addFrame(Pixbuf pixbuf)
	{
		gdk_pixbuf_simple_anim_add_frame(gdkPixbufSimpleAnim, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Gets whether @animation should loop indefinitely when it reaches the end.
	 *
	 * Returns: %TRUE if the animation loops forever, %FALSE otherwise
	 *
	 * Since: 2.18
	 */
	public bool getLoop()
	{
		return gdk_pixbuf_simple_anim_get_loop(gdkPixbufSimpleAnim) != 0;
	}

	/**
	 * Sets whether @animation should loop indefinitely when it reaches the end.
	 *
	 * Params:
	 *     loop = whether to loop the animation
	 *
	 * Since: 2.18
	 */
	public void setLoop(bool loop)
	{
		gdk_pixbuf_simple_anim_set_loop(gdkPixbufSimpleAnim, loop);
	}
}
