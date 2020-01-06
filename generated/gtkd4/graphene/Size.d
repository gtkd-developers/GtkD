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


module graphene.Size;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import graphene.c.functions;
public  import graphene.c.types;


/**
 * A size.
 *
 * Since: 1.0
 */
public final class Size
{
	/** the main Gtk struct */
	protected graphene_size_t* graphene_size;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public graphene_size_t* getSizeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return graphene_size;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)graphene_size;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (graphene_size_t* graphene_size, bool ownedRef = false)
	{
		this.graphene_size = graphene_size;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			graphene_size_free(graphene_size);
	}


	/**
	 * the width
	 */
	public @property float width()
	{
		return graphene_size.width;
	}

	/** Ditto */
	public @property void width(float value)
	{
		graphene_size.width = value;
	}

	/**
	 * the height
	 */
	public @property float height()
	{
		return graphene_size.height;
	}

	/** Ditto */
	public @property void height(float value)
	{
		graphene_size.height = value;
	}

	/** */
	public static GType getType()
	{
		return graphene_size_get_type();
	}

	/**
	 * Allocates a new #graphene_size_t.
	 *
	 * The contents of the returned value are undefined.
	 *
	 * Returns: the newly allocated #graphene_size_t
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = graphene_size_alloc();

		if(__p is null)
		{
			throw new ConstructionException("null returned by alloc");
		}

		this(cast(graphene_size_t*) __p);
	}

	/**
	 * Checks whether the two give #graphene_size_t are equal.
	 *
	 * Params:
	 *     b = a #graphene_size_t
	 *
	 * Returns: `true` if the sizes are equal
	 *
	 * Since: 1.0
	 */
	public bool equal(Size b)
	{
		return graphene_size_equal(graphene_size, (b is null) ? null : b.getSizeStruct()) != 0;
	}

	/**
	 * Frees the resources allocated by graphene_size_alloc().
	 *
	 * Since: 1.0
	 */
	public void free()
	{
		graphene_size_free(graphene_size);
		ownedRef = false;
	}

	/**
	 * Initializes a #graphene_size_t using the given @width and @height.
	 *
	 * Params:
	 *     width = the width
	 *     height = the height
	 *
	 * Returns: the initialized #graphene_size_t
	 *
	 * Since: 1.0
	 */
	public Size init(float width, float height)
	{
		auto __p = graphene_size_init(graphene_size, width, height);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Size)(cast(graphene_size_t*) __p);
	}

	/**
	 * Initializes a #graphene_size_t using the width and height of
	 * the given @src.
	 *
	 * Params:
	 *     src = a #graphene_size_t
	 *
	 * Returns: the initialized #graphene_size_t
	 *
	 * Since: 1.0
	 */
	public Size initFromSize(Size src)
	{
		auto __p = graphene_size_init_from_size(graphene_size, (src is null) ? null : src.getSizeStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Size)(cast(graphene_size_t*) __p);
	}

	/**
	 * Linearly interpolates the two given #graphene_size_t using the given
	 * interpolation @factor.
	 *
	 * Params:
	 *     b = a #graphene_size_t
	 *     factor = the linear interpolation factor
	 *     res = return location for the interpolated size
	 *
	 * Since: 1.0
	 */
	public void interpolate(Size b, double factor, out Size res)
	{
		graphene_size_t* outres = sliceNew!graphene_size_t();

		graphene_size_interpolate(graphene_size, (b is null) ? null : b.getSizeStruct(), factor, outres);

		res = ObjectG.getDObject!(Size)(outres, true);
	}

	/**
	 * Scales the components of a #graphene_size_t using the given @factor.
	 *
	 * Params:
	 *     factor = the scaling factor
	 *     res = return location for the scaled size
	 *
	 * Since: 1.0
	 */
	public void scale(float factor, out Size res)
	{
		graphene_size_t* outres = sliceNew!graphene_size_t();

		graphene_size_scale(graphene_size, factor, outres);

		res = ObjectG.getDObject!(Size)(outres, true);
	}

	/**
	 * A constant pointer to a zero #graphene_size_t, useful for
	 * equality checks and interpolations.
	 *
	 * Returns: a constant size
	 *
	 * Since: 1.0
	 */
	public static Size zero()
	{
		auto __p = graphene_size_zero();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Size)(cast(graphene_size_t*) __p);
	}
}
