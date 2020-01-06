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


module glib.RandG;

private import glib.ConstructionException;
private import glib.c.functions;
public  import glib.c.types;


/**
 * The GRand struct is an opaque data structure. It should only be
 * accessed through the g_rand_* functions.
 */
public class RandG
{
	/** the main Gtk struct */
	protected GRand* gRand;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GRand* getRandGStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gRand;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gRand;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GRand* gRand, bool ownedRef = false)
	{
		this.gRand = gRand;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_rand_free(gRand);
	}


	/**
	 * Copies a #GRand into a new one with the same exact state as before.
	 * This way you can take a snapshot of the random number generator for
	 * replaying later.
	 *
	 * Returns: the new #GRand
	 *
	 * Since: 2.4
	 */
	public RandG copy()
	{
		auto __p = g_rand_copy(gRand);

		if(__p is null)
		{
			return null;
		}

		return new RandG(cast(GRand*) __p);
	}

	/**
	 * Returns the next random #gdouble from @rand_ equally distributed over
	 * the range [0..1).
	 *
	 * Returns: a random number
	 */
	public double randDouble()
	{
		return g_rand_double(gRand);
	}

	/**
	 * Returns the next random #gdouble from @rand_ equally distributed over
	 * the range [@begin..@end).
	 *
	 * Params:
	 *     begin = lower closed bound of the interval
	 *     end = upper open bound of the interval
	 *
	 * Returns: a random number
	 */
	public double doubleRange(double begin, double end)
	{
		return g_rand_double_range(gRand, begin, end);
	}

	/**
	 * Frees the memory allocated for the #GRand.
	 */
	public void free()
	{
		g_rand_free(gRand);
		ownedRef = false;
	}

	/**
	 * Returns the next random #guint32 from @rand_ equally distributed over
	 * the range [0..2^32-1].
	 *
	 * Returns: a random number
	 */
	public uint randInt()
	{
		return g_rand_int(gRand);
	}

	/**
	 * Returns the next random #gint32 from @rand_ equally distributed over
	 * the range [@begin..@end-1].
	 *
	 * Params:
	 *     begin = lower closed bound of the interval
	 *     end = upper open bound of the interval
	 *
	 * Returns: a random number
	 */
	public int intRange(int begin, int end)
	{
		return g_rand_int_range(gRand, begin, end);
	}

	/**
	 * Sets the seed for the random number generator #GRand to @seed.
	 *
	 * Params:
	 *     seed = a value to reinitialize the random number generator
	 */
	public void setSeed(uint seed)
	{
		g_rand_set_seed(gRand, seed);
	}

	/**
	 * Initializes the random number generator by an array of longs.
	 * Array can be of arbitrary size, though only the first 624 values
	 * are taken.  This function is useful if you have many low entropy
	 * seeds, or if you require more then 32 bits of actual entropy for
	 * your application.
	 *
	 * Params:
	 *     seed = array to initialize with
	 *     seedLength = length of array
	 *
	 * Since: 2.4
	 */
	public void setSeedArray(uint* seed, uint seedLength)
	{
		g_rand_set_seed_array(gRand, seed, seedLength);
	}

	/**
	 * Creates a new random number generator initialized with a seed taken
	 * either from `/dev/urandom` (if existing) or from the current time
	 * (as a fallback).
	 *
	 * On Windows, the seed is taken from rand_s().
	 *
	 * Returns: the new #GRand
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_rand_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GRand*) __p);
	}

	/**
	 * Creates a new random number generator initialized with @seed.
	 *
	 * Params:
	 *     seed = a value to initialize the random number generator
	 *
	 * Returns: the new #GRand
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint seed)
	{
		auto __p = g_rand_new_with_seed(seed);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_seed");
		}

		this(cast(GRand*) __p);
	}

	/**
	 * Creates a new random number generator initialized with @seed.
	 *
	 * Params:
	 *     seed = an array of seeds to initialize the random number generator
	 *
	 * Returns: the new #GRand
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint[] seed)
	{
		auto __p = g_rand_new_with_seed_array(seed.ptr, cast(uint)seed.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_seed_array");
		}

		this(cast(GRand*) __p);
	}

	/**
	 * Returns a random #gdouble equally distributed over the range [0..1).
	 *
	 * Returns: a random number
	 */
	public static double randomDouble()
	{
		return g_random_double();
	}

	/**
	 * Returns a random #gdouble equally distributed over the range
	 * [@begin..@end).
	 *
	 * Params:
	 *     begin = lower closed bound of the interval
	 *     end = upper open bound of the interval
	 *
	 * Returns: a random number
	 */
	public static double randomDoubleRange(double begin, double end)
	{
		return g_random_double_range(begin, end);
	}

	/**
	 * Return a random #guint32 equally distributed over the range
	 * [0..2^32-1].
	 *
	 * Returns: a random number
	 */
	public static uint randomInt()
	{
		return g_random_int();
	}

	/**
	 * Returns a random #gint32 equally distributed over the range
	 * [@begin..@end-1].
	 *
	 * Params:
	 *     begin = lower closed bound of the interval
	 *     end = upper open bound of the interval
	 *
	 * Returns: a random number
	 */
	public static int randomIntRange(int begin, int end)
	{
		return g_random_int_range(begin, end);
	}

	/**
	 * Sets the seed for the global random number generator, which is used
	 * by the g_random_* functions, to @seed.
	 *
	 * Params:
	 *     seed = a value to reinitialize the global random number generator
	 */
	public static void randomSetSeed(uint seed)
	{
		g_random_set_seed(seed);
	}
}
