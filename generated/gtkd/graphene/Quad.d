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


module graphene.Quad;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.Point;
private import graphene.Rect;
private import graphene.c.functions;
public  import graphene.c.types;


/**
 * A 4 vertex quadrilateral, as represented by four #graphene_point_t.
 * 
 * The contents of a #graphene_quad_t are private and should never be
 * accessed directly.
 *
 * Since: 1.0
 */
public class Quad
{
	/** the main Gtk struct */
	protected graphene_quad_t* graphene_quad;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_quad_t* getQuadStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_quad;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_quad;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_quad_t* graphene_quad, bool ownedRef = false)
	{
		this.graphene_quad = graphene_quad;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			graphene_quad_free(graphene_quad);
	}


	/** */
	public static GType getType()
	{
		return graphene_quad_get_type();
	}

	/**
	 * Allocates a new #graphene_quad_t instance.
	 *
	 * The contents of the returned instance are undefined.
	 *
	 * Returns: the newly created #graphene_quad_t instance
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_quad_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_quad_t*) __p);
	}

	/**
	 * Computes the bounding rectangle of @q and places it into @r.
	 *
	 * Params:
	 *     r = return location for a #graphene_rect_t
	 *
	 * Since: 1.0
	 */
	public void bounds(out Rect r)
	{
		graphene_rect_t* outr = sliceNew!graphene_rect_t();

		graphene_quad_bounds(graphene_quad, outr);

		r = ObjectG.getDObject!(Rect)(outr, true);
	}

	/**
	 * Checks if the given #graphene_quad_t contains the given #graphene_point_t.
	 *
	 * Params:
	 *     p = a #graphene_point_t
	 *
	 * Returns: `true` if the point is inside the #graphene_quad_t
	 *
	 * Since: 1.0
	 */
	public bool contains(Point p)
	{
		return graphene_quad_contains(graphene_quad, (p is null) ? null : p.getPointStruct()) != 0;
	}

	/**
	 * Frees the resources allocated by graphene_quad_alloc()
	 *
	 * Since: 1.0
	 */
	public void free()
	{
		graphene_quad_free(graphene_quad);
		ownedRef = false;
	}

	/**
	 * Retrieves the point of a #graphene_quad_t at the given index.
	 *
	 * Params:
	 *     index = the index of the point to retrieve
	 *
	 * Returns: a #graphene_point_t
	 *
	 * Since: 1.0
	 */
	public Point getPoint(uint index)
	{
		auto __p = graphene_quad_get_point(graphene_quad, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Point)(cast(graphene_point_t*) __p);
	}

	/**
	 * Initializes a #graphene_quad_t with the given points.
	 *
	 * Params:
	 *     p1 = the first point of the quadrilateral
	 *     p2 = the second point of the quadrilateral
	 *     p3 = the third point of the quadrilateral
	 *     p4 = the fourth point of the quadrilateral
	 *
	 * Returns: the initialized #graphene_quad_t
	 *
	 * Since: 1.0
	 */
	public Quad init(Point p1, Point p2, Point p3, Point p4)
	{
		auto __p = graphene_quad_init(graphene_quad, (p1 is null) ? null : p1.getPointStruct(), (p2 is null) ? null : p2.getPointStruct(), (p3 is null) ? null : p3.getPointStruct(), (p4 is null) ? null : p4.getPointStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quad)(cast(graphene_quad_t*) __p);
	}

	/**
	 * Initializes a #graphene_quad_t using an array of points.
	 *
	 * Params:
	 *     points = an array of 4 #graphene_point_t
	 *
	 * Returns: the initialized #graphene_quad_t
	 *
	 * Since: 1.2
	 */
	public Quad initFromPoints(Point[4] points)
	{
		graphene_point_t[] pointsArray = new graphene_point_t[points.length];
		for ( int i = 0; i < points.length; i++ )
		{
			pointsArray[i] = *(points[i].getPointStruct());
		}

		auto __p = graphene_quad_init_from_points(graphene_quad, pointsArray.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quad)(cast(graphene_quad_t*) __p);
	}

	/**
	 * Initializes a #graphene_quad_t using the four corners of the
	 * given #graphene_rect_t.
	 *
	 * Params:
	 *     r = a #graphene_rect_t
	 *
	 * Returns: the initialized #graphene_quad_t
	 *
	 * Since: 1.0
	 */
	public Quad initFromRect(Rect r)
	{
		auto __p = graphene_quad_init_from_rect(graphene_quad, (r is null) ? null : r.getRectStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Quad)(cast(graphene_quad_t*) __p);
	}
}
