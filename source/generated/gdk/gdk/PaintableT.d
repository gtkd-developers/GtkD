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


module gdk.PaintableT;

public  import gdk.PaintableIF;
public  import gdk.Snapshot;
public  import gdk.c.functions;
public  import gdk.c.types;
public  import glib.ConstructionException;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import std.algorithm;


/**
 * `GdkPaintable` is a simple interface used by GTK to represent content that
 * can be painted.
 * 
 * The content of a `GdkPaintable` can be painted anywhere at any size
 * without requiring any sort of layout. The interface is inspired by
 * similar concepts elsewhere, such as
 * [ClutterContent](https://developer.gnome.org/clutter/stable/ClutterContent.html),
 * [HTML/CSS Paint Sources](https://www.w3.org/TR/css-images-4/#paint-source),
 * or [SVG Paint Servers](https://www.w3.org/TR/SVG2/pservers.html).
 * 
 * A `GdkPaintable` can be snapshot at any time and size using
 * [method@Gdk.Paintable.snapshot]. How the paintable interprets that size and
 * if it scales or centers itself into the given rectangle is implementation
 * defined, though if you are implementing a `GdkPaintable` and don't know what
 * to do, it is suggested that you scale your paintable ignoring any potential
 * aspect ratio.
 * 
 * The contents that a `GdkPaintable` produces may depend on the [class@GdkSnapshot]
 * passed to it. For example, paintables may decide to use more detailed images
 * on higher resolution screens or when OpenGL is available. A `GdkPaintable`
 * will however always produce the same output for the same snapshot.
 * 
 * A `GdkPaintable` may change its contents, meaning that it will now produce
 * a different output with the same snapshot. Once that happens, it will call
 * [method@Gdk.Paintable.invalidate_contents] which will emit the
 * [signal@GdkPaintable::invalidate-contents] signal. If a paintable is known
 * to never change its contents, it will set the %GDK_PAINTABLE_STATIC_CONTENTS
 * flag. If a consumer cannot deal with changing contents, it may call
 * [method@Gdk.Paintable.get_current_image] which will return a static
 * paintable and use that.
 * 
 * A paintable can report an intrinsic (or preferred) size or aspect ratio it
 * wishes to be rendered at, though it doesn't have to. Consumers of the interface
 * can use this information to layout thepaintable appropriately. Just like the
 * contents, the size of a paintable can change. A paintable will indicate this
 * by calling [method@Gdk.Paintable.invalidate_size] which will emit the
 * [signal@GdkPaintable::invalidate-size] signal. And just like for contents,
 * if a paintable is known to never change its size, it will set the
 * %GDK_PAINTABLE_STATIC_SIZE flag.
 * 
 * Besides API for applications, there are some functions that are only
 * useful for implementing subclasses and should not be used by applications:
 * [method@Gdk.Paintable.invalidate_contents],
 * [method@Gdk.Paintable.invalidate_size],
 * [func@Gdk.Paintable.new_empty].
 */
public template PaintableT(TStruct)
{
	/** Get the main Gtk struct */
	public GdkPaintable* getPaintableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GdkPaintable*)getStruct();
	}


	/**
	 * Compute a concrete size for the `GdkPaintable`.
	 *
	 * Applies the sizing algorithm outlined in the
	 * [CSS Image spec](https://drafts.csswg.org/css-images-3/#default-sizing)
	 * to the given @paintable. See that link for more details.
	 *
	 * It is not necessary to call this function when both @specified_width
	 * and @specified_height are known, but it is useful to call this
	 * function in GtkWidget:measure implementations to compute the
	 * other dimension when only one dimension is given.
	 *
	 * Params:
	 *     specifiedWidth = the width @paintable could be drawn into or
	 *         0.0 if unknown
	 *     specifiedHeight = the height @paintable could be drawn into or
	 *         0.0 if unknown
	 *     defaultWidth = the width @paintable would be drawn into if
	 *         no other constraints were given
	 *     defaultHeight = the height @paintable would be drawn into if
	 *         no other constraints were given
	 *     concreteWidth = will be set to the concrete width computed
	 *     concreteHeight = will be set to the concrete height computed
	 */
	public void computeConcreteSize(double specifiedWidth, double specifiedHeight, double defaultWidth, double defaultHeight, out double concreteWidth, out double concreteHeight)
	{
		gdk_paintable_compute_concrete_size(getPaintableStruct(), specifiedWidth, specifiedHeight, defaultWidth, defaultHeight, &concreteWidth, &concreteHeight);
	}

	/**
	 * Gets an immutable paintable for the current contents displayed by @paintable.
	 *
	 * This is useful when you want to retain the current state of an animation,
	 * for example to take a screenshot of a running animation.
	 *
	 * If the @paintable is already immutable, it will return itself.
	 *
	 * Returns: An immutable paintable for the current
	 *     contents of @paintable
	 */
	public PaintableIF getCurrentImage()
	{
		auto __p = gdk_paintable_get_current_image(getPaintableStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
	}

	/**
	 * Get flags for the paintable.
	 *
	 * This is oftentimes useful for optimizations.
	 *
	 * See [flags@Gdk.PaintableFlags] for the flags and what they mean.
	 *
	 * Returns: The `GdkPaintableFlags` for this paintable
	 */
	public GdkPaintableFlags getFlags()
	{
		return gdk_paintable_get_flags(getPaintableStruct());
	}

	/**
	 * Gets the preferred aspect ratio the @paintable would like to be displayed at.
	 *
	 * The aspect ratio is the width divided by the height, so a value of 0.5
	 * means that the @paintable prefers to be displayed twice as high as it
	 * is wide. Consumers of this interface can use this to preserve aspect
	 * ratio when displaying the paintable.
	 *
	 * This is a purely informational value and does not in any way limit the
	 * values that may be passed to [method@Gdk.Paintable.snapshot].
	 *
	 * Usually when a @paintable returns nonzero values from
	 * [method@Gdk.Paintable.get_intrinsic_width] and
	 * [method@Gdk.Paintable.get_intrinsic_height] the aspect ratio
	 * should conform to those values, though that is not required.
	 *
	 * If the @paintable does not have a preferred aspect ratio,
	 * it returns 0. Negative values are never returned.
	 *
	 * Returns: the intrinsic aspect ratio of @paintable or 0 if none.
	 */
	public double getIntrinsicAspectRatio()
	{
		return gdk_paintable_get_intrinsic_aspect_ratio(getPaintableStruct());
	}

	/**
	 * Gets the preferred height the @paintable would like to be displayed at.
	 *
	 * Consumers of this interface can use this to reserve enough space to draw
	 * the paintable.
	 *
	 * This is a purely informational value and does not in any way limit the
	 * values that may be passed to [method@Gdk.Paintable.snapshot].
	 *
	 * If the @paintable does not have a preferred height, it returns 0.
	 * Negative values are never returned.
	 *
	 * Returns: the intrinsic height of @paintable or 0 if none.
	 */
	public int getIntrinsicHeight()
	{
		return gdk_paintable_get_intrinsic_height(getPaintableStruct());
	}

	/**
	 * Gets the preferred width the @paintable would like to be displayed at.
	 *
	 * Consumers of this interface can use this to reserve enough space to draw
	 * the paintable.
	 *
	 * This is a purely informational value and does not in any way limit the
	 * values that may be passed to [method@Gdk.Paintable.snapshot].
	 *
	 * If the @paintable does not have a preferred width, it returns 0.
	 * Negative values are never returned.
	 *
	 * Returns: the intrinsic width of @paintable or 0 if none.
	 */
	public int getIntrinsicWidth()
	{
		return gdk_paintable_get_intrinsic_width(getPaintableStruct());
	}

	/**
	 * Called by implementations of `GdkPaintable` to invalidate their contents.
	 *
	 * Unless the contents are invalidated, implementations must guarantee that
	 * multiple calls of [method@Gdk.Paintable.snapshot] produce the same output.
	 *
	 * This function will emit the [signal@Gdk.Paintable::invalidate-contents]
	 * signal.
	 *
	 * If a @paintable reports the %GDK_PAINTABLE_STATIC_CONTENTS flag,
	 * it must not call this function.
	 */
	public void invalidateContents()
	{
		gdk_paintable_invalidate_contents(getPaintableStruct());
	}

	/**
	 * Called by implementations of `GdkPaintable` to invalidate their size.
	 *
	 * As long as the size is not invalidated, @paintable must return the same
	 * values for its intrinsic width, height and aspect ratio.
	 *
	 * This function will emit the [signal@Gdk.Paintable::invalidate-size]
	 * signal.
	 *
	 * If a @paintable reports the %GDK_PAINTABLE_STATIC_SIZE flag,
	 * it must not call this function.
	 */
	public void invalidateSize()
	{
		gdk_paintable_invalidate_size(getPaintableStruct());
	}

	/**
	 * Snapshots the given paintable with the given @width and @height.
	 *
	 * The paintable is drawn at the current (0,0) offset of the @snapshot.
	 * If @width and @height are not larger than zero, this function will
	 * do nothing.
	 *
	 * Params:
	 *     snapshot = a `GdkSnapshot` to snapshot to
	 *     width = width to snapshot in
	 *     height = height to snapshot in
	 */
	public void snapshot(Snapshot snapshot, double width, double height)
	{
		gdk_paintable_snapshot(getPaintableStruct(), (snapshot is null) ? null : snapshot.getSnapshotStruct(), width, height);
	}

	/**
	 * Emitted when the contents of the @paintable change.
	 *
	 * Examples for such an event would be videos changing to the next frame or
	 * the icon theme for an icon changing.
	 */
	gulong addOnInvalidateContents(void delegate(PaintableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "invalidate-contents", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the intrinsic size of the @paintable changes.
	 *
	 * This means the values reported by at least one of
	 * [method@Gdk.Paintable.get_intrinsic_width],
	 * [method@Gdk.Paintable.get_intrinsic_height] or
	 * [method@Gdk.Paintable.get_intrinsic_aspect_ratio]
	 * has changed.
	 *
	 * Examples for such an event would be a paintable displaying
	 * the contents of a toplevel surface being resized.
	 */
	gulong addOnInvalidateSize(void delegate(PaintableIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "invalidate-size", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
