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


module gsk.RoundedRect;

private import gobject.ObjectG;
private import graphene.Point;
private import graphene.Rect;
private import graphene.Size;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A rectangular region with rounded corners.
 * 
 * Application code should normalize rectangles using
 * [method@Gsk.RoundedRect.normalize]; this function will ensure that
 * the bounds of the rectangle are normalized and ensure that the corner
 * values are positive and the corners do not overlap.
 * 
 * All functions taking a `GskRoundedRect` as an argument will internally
 * operate on a normalized copy; all functions returning a `GskRoundedRect`
 * will always return a normalized one.
 * 
 * The algorithm used for normalizing corner sizes is described in
 * [the CSS specification](https://drafts.csswg.org/css-backgrounds-3/#border-radius).
 */
public class RoundedRect
{
	/** the main Gtk struct */
	protected GskRoundedRect* gskRoundedRect;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GskRoundedRect* getRoundedRectStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskRoundedRect;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gskRoundedRect;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskRoundedRect* gskRoundedRect, bool ownedRef = false)
	{
		this.gskRoundedRect = gskRoundedRect;
		this.ownedRef = ownedRef;
	}


	/**
	 * Checks if the given @point is inside the rounded rectangle.
	 *
	 * Params:
	 *     point = the point to check
	 *
	 * Returns: %TRUE if the @point is inside the rounded rectangle
	 */
	public bool containsPoint(Point point)
	{
		return gsk_rounded_rect_contains_point(gskRoundedRect, (point is null) ? null : point.getPointStruct()) != 0;
	}

	/**
	 * Checks if the given @rect is contained inside the rounded rectangle.
	 *
	 * Params:
	 *     rect = the rectangle to check
	 *
	 * Returns: %TRUE if the @rect is fully contained inside the rounded rectangle
	 */
	public bool containsRect(Rect rect)
	{
		return gsk_rounded_rect_contains_rect(gskRoundedRect, (rect is null) ? null : rect.getRectStruct()) != 0;
	}

	/**
	 * Initializes the given `GskRoundedRect` with the given values.
	 *
	 * This function will implicitly normalize the `GskRoundedRect`
	 * before returning.
	 *
	 * Params:
	 *     bounds = a `graphene_rect_t` describing the bounds
	 *     topLeft = the rounding radius of the top left corner
	 *     topRight = the rounding radius of the top right corner
	 *     bottomRight = the rounding radius of the bottom right corner
	 *     bottomLeft = the rounding radius of the bottom left corner
	 *
	 * Returns: the initialized rectangle
	 */
	public RoundedRect init(Rect bounds, Size topLeft, Size topRight, Size bottomRight, Size bottomLeft)
	{
		auto __p = gsk_rounded_rect_init(gskRoundedRect, (bounds is null) ? null : bounds.getRectStruct(), (topLeft is null) ? null : topLeft.getSizeStruct(), (topRight is null) ? null : topRight.getSizeStruct(), (bottomRight is null) ? null : bottomRight.getSizeStruct(), (bottomLeft is null) ? null : bottomLeft.getSizeStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RoundedRect)(cast(GskRoundedRect*) __p);
	}

	/**
	 * Initializes @self using the given @src rectangle.
	 *
	 * This function will not normalize the `GskRoundedRect`,
	 * so make sure the source is normalized.
	 *
	 * Params:
	 *     src = a `GskRoundedRect`
	 *
	 * Returns: the initialized rectangle
	 */
	public RoundedRect initCopy(RoundedRect src)
	{
		auto __p = gsk_rounded_rect_init_copy(gskRoundedRect, (src is null) ? null : src.getRoundedRectStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RoundedRect)(cast(GskRoundedRect*) __p);
	}

	/**
	 * Initializes @self to the given @bounds and sets the radius
	 * of all four corners to @radius.
	 *
	 * Params:
	 *     bounds = a `graphene_rect_t`
	 *     radius = the border radius
	 *
	 * Returns: the initialized rectangle
	 */
	public RoundedRect initFromRect(Rect bounds, float radius)
	{
		auto __p = gsk_rounded_rect_init_from_rect(gskRoundedRect, (bounds is null) ? null : bounds.getRectStruct(), radius);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RoundedRect)(cast(GskRoundedRect*) __p);
	}

	/**
	 * Checks if part of the given @rect is contained inside the rounded rectangle.
	 *
	 * Params:
	 *     rect = the rectangle to check
	 *
	 * Returns: %TRUE if the @rect intersects with the rounded rectangle
	 */
	public bool intersectsRect(Rect rect)
	{
		return gsk_rounded_rect_intersects_rect(gskRoundedRect, (rect is null) ? null : rect.getRectStruct()) != 0;
	}

	/**
	 * Checks if all corners of @self are right angles and the
	 * rectangle covers all of its bounds.
	 *
	 * This information can be used to decide if [ctor@Gsk.ClipNode.new]
	 * or [ctor@Gsk.RoundedClipNode.new] should be called.
	 *
	 * Returns: %TRUE if the rectangle is rectilinear
	 */
	public bool isRectilinear()
	{
		return gsk_rounded_rect_is_rectilinear(gskRoundedRect) != 0;
	}

	/**
	 * Normalizes the passed rectangle.
	 *
	 * This function will ensure that the bounds of the rectangle
	 * are normalized and ensure that the corner values are positive
	 * and the corners do not overlap.
	 *
	 * Returns: the normalized rectangle
	 */
	public RoundedRect normalize()
	{
		auto __p = gsk_rounded_rect_normalize(gskRoundedRect);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RoundedRect)(cast(GskRoundedRect*) __p);
	}

	/**
	 * Offsets the bound's origin by @dx and @dy.
	 *
	 * The size and corners of the rectangle are unchanged.
	 *
	 * Params:
	 *     dx = the horizontal offset
	 *     dy = the vertical offset
	 *
	 * Returns: the offset rectangle
	 */
	public RoundedRect offset(float dx, float dy)
	{
		auto __p = gsk_rounded_rect_offset(gskRoundedRect, dx, dy);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RoundedRect)(cast(GskRoundedRect*) __p);
	}

	/**
	 * Shrinks (or grows) the given rectangle by moving the 4 sides
	 * according to the offsets given.
	 *
	 * The corner radii will be changed in a way that tries to keep
	 * the center of the corner circle intact. This emulates CSS behavior.
	 *
	 * This function also works for growing rectangles if you pass
	 * negative values for the @top, @right, @bottom or @left.
	 *
	 * Params:
	 *     top = How far to move the top side downwards
	 *     right = How far to move the right side to the left
	 *     bottom = How far to move the bottom side upwards
	 *     left = How far to move the left side to the right
	 *
	 * Returns: the resized `GskRoundedRect`
	 */
	public RoundedRect shrink(float top, float right, float bottom, float left)
	{
		auto __p = gsk_rounded_rect_shrink(gskRoundedRect, top, right, bottom, left);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RoundedRect)(cast(GskRoundedRect*) __p);
	}
}
