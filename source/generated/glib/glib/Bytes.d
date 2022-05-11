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


module glib.Bytes;

private import glib.ByteArray;
private import glib.ConstructionException;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * A simple refcounted data type representing an immutable sequence of zero or
 * more bytes from an unspecified origin.
 * 
 * The purpose of a #GBytes is to keep the memory region that it holds
 * alive for as long as anyone holds a reference to the bytes.  When
 * the last reference count is dropped, the memory is released. Multiple
 * unrelated callers can use byte data in the #GBytes without coordinating
 * their activities, resting assured that the byte data will not change or
 * move while they hold a reference.
 * 
 * A #GBytes can come from many different origins that may have
 * different procedures for freeing the memory region.  Examples are
 * memory from g_malloc(), from memory slices, from a #GMappedFile or
 * memory from other allocators.
 * 
 * #GBytes work well as keys in #GHashTable. Use g_bytes_equal() and
 * g_bytes_hash() as parameters to g_hash_table_new() or g_hash_table_new_full().
 * #GBytes can also be used as keys in a #GTree by passing the g_bytes_compare()
 * function to g_tree_new().
 * 
 * The data pointed to by this bytes must not be modified. For a mutable
 * array of bytes see #GByteArray. Use g_bytes_unref_to_array() to create a
 * mutable array for a #GBytes sequence. To create an immutable #GBytes from
 * a mutable #GByteArray, use the g_byte_array_free_to_bytes() function.
 *
 * Since: 2.32
 */
public class Bytes
{
	/** the main Gtk struct */
	protected GBytes* gBytes;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GBytes* getBytesStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gBytes;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gBytes;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GBytes* gBytes, bool ownedRef = false)
	{
		this.gBytes = gBytes;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_bytes_unref(gBytes);
	}


	/**
	 * Creates a new #GBytes from @data.
	 *
	 * @data is copied. If @size is 0, @data may be %NULL.
	 *
	 * Params:
	 *     data = the data to be used for the bytes
	 *
	 * Returns: a new #GBytes
	 *
	 * Since: 2.32
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data)
	{
		auto __p = g_bytes_new(data.ptr, cast(size_t)data.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GBytes*) __p);
	}

	/**
	 * Creates a #GBytes from @data.
	 *
	 * When the last reference is dropped, @free_func will be called with the
	 * @user_data argument.
	 *
	 * @data must not be modified after this call is made until @free_func has
	 * been called to indicate that the bytes is no longer in use.
	 *
	 * @data may be %NULL if @size is 0.
	 *
	 * Params:
	 *     data = the data to be used for the bytes
	 *     freeFunc = the function to call to release the data
	 *     userData = data to pass to @free_func
	 *
	 * Returns: a new #GBytes
	 *
	 * Since: 2.32
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data, GDestroyNotify freeFunc, void* userData)
	{
		auto __p = g_bytes_new_with_free_func(data.ptr, cast(size_t)data.length, freeFunc, userData);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_free_func");
		}

		this(cast(GBytes*) __p);
	}

	/**
	 * Compares the two #GBytes values.
	 *
	 * This function can be used to sort GBytes instances in lexicographical order.
	 *
	 * If @bytes1 and @bytes2 have different length but the shorter one is a
	 * prefix of the longer one then the shorter one is considered to be less than
	 * the longer one. Otherwise the first byte where both differ is used for
	 * comparison. If @bytes1 has a smaller value at that position it is
	 * considered less, otherwise greater than @bytes2.
	 *
	 * Params:
	 *     bytes2 = a pointer to a #GBytes to compare with @bytes1
	 *
	 * Returns: a negative value if @bytes1 is less than @bytes2, a positive value
	 *     if @bytes1 is greater than @bytes2, and zero if @bytes1 is equal to
	 *     @bytes2
	 *
	 * Since: 2.32
	 */
	public int compare(Bytes bytes2)
	{
		return g_bytes_compare(gBytes, (bytes2 is null) ? null : bytes2.getBytesStruct());
	}

	/**
	 * Compares the two #GBytes values being pointed to and returns
	 * %TRUE if they are equal.
	 *
	 * This function can be passed to g_hash_table_new() as the @key_equal_func
	 * parameter, when using non-%NULL #GBytes pointers as keys in a #GHashTable.
	 *
	 * Params:
	 *     bytes2 = a pointer to a #GBytes to compare with @bytes1
	 *
	 * Returns: %TRUE if the two keys match.
	 *
	 * Since: 2.32
	 */
	public bool equal(Bytes bytes2)
	{
		return g_bytes_equal(gBytes, (bytes2 is null) ? null : bytes2.getBytesStruct()) != 0;
	}

	/**
	 * Get the byte data in the #GBytes. This data should not be modified.
	 *
	 * This function will always return the same pointer for a given #GBytes.
	 *
	 * %NULL may be returned if @size is 0. This is not guaranteed, as the #GBytes
	 * may represent an empty string with @data non-%NULL and @size as 0. %NULL will
	 * not be returned if @size is non-zero.
	 *
	 * Returns: a pointer to the byte data, or %NULL
	 *
	 * Since: 2.32
	 */
	public ubyte[] getData()
	{
		size_t size;

		auto __p = g_bytes_get_data(gBytes, &size);

		return cast(ubyte[])__p[0 .. size];
	}

	/**
	 * Gets a pointer to a region in @bytes.
	 *
	 * The region starts at @offset many bytes from the start of the data
	 * and contains @n_elements many elements of @element_size size.
	 *
	 * @n_elements may be zero, but @element_size must always be non-zero.
	 * Ideally, @element_size is a static constant (eg: sizeof a struct).
	 *
	 * This function does careful bounds checking (including checking for
	 * arithmetic overflows) and returns a non-%NULL pointer if the
	 * specified region lies entirely within the @bytes. If the region is
	 * in some way out of range, or if an overflow has occurred, then %NULL
	 * is returned.
	 *
	 * Note: it is possible to have a valid zero-size region. In this case,
	 * the returned pointer will be equal to the base pointer of the data of
	 * @bytes, plus @offset.  This will be non-%NULL except for the case
	 * where @bytes itself was a zero-sized region.  Since it is unlikely
	 * that you will be using this function to check for a zero-sized region
	 * in a zero-sized @bytes, %NULL effectively always means "error".
	 *
	 * Params:
	 *     elementSize = a non-zero element size
	 *     offset = an offset to the start of the region within the @bytes
	 *     nElements = the number of elements in the region
	 *
	 * Returns: the requested region, or %NULL in case of an error
	 *
	 * Since: 2.70
	 */
	public void* getRegion(size_t elementSize, size_t offset, size_t nElements)
	{
		return g_bytes_get_region(gBytes, elementSize, offset, nElements);
	}

	/**
	 * Get the size of the byte data in the #GBytes.
	 *
	 * This function will always return the same value for a given #GBytes.
	 *
	 * Returns: the size
	 *
	 * Since: 2.32
	 */
	public size_t getSize()
	{
		return g_bytes_get_size(gBytes);
	}

	/**
	 * Creates an integer hash code for the byte data in the #GBytes.
	 *
	 * This function can be passed to g_hash_table_new() as the @key_hash_func
	 * parameter, when using non-%NULL #GBytes pointers as keys in a #GHashTable.
	 *
	 * Returns: a hash value corresponding to the key.
	 *
	 * Since: 2.32
	 */
	public uint hash()
	{
		return g_bytes_hash(gBytes);
	}

	/**
	 * Creates a #GBytes which is a subsection of another #GBytes. The @offset +
	 * @length may not be longer than the size of @bytes.
	 *
	 * A reference to @bytes will be held by the newly created #GBytes until
	 * the byte data is no longer needed.
	 *
	 * Since 2.56, if @offset is 0 and @length matches the size of @bytes, then
	 * @bytes will be returned with the reference count incremented by 1. If @bytes
	 * is a slice of another #GBytes, then the resulting #GBytes will reference
	 * the same #GBytes instead of @bytes. This allows consumers to simplify the
	 * usage of #GBytes when asynchronously writing to streams.
	 *
	 * Params:
	 *     offset = offset which subsection starts at
	 *     length = length of subsection
	 *
	 * Returns: a new #GBytes
	 *
	 * Since: 2.32
	 */
	public Bytes newFromBytes(size_t offset, size_t length)
	{
		auto __p = g_bytes_new_from_bytes(gBytes, offset, length);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	alias doref = ref_;
	/**
	 * Increase the reference count on @bytes.
	 *
	 * Returns: the #GBytes
	 *
	 * Since: 2.32
	 */
	public Bytes ref_()
	{
		auto __p = g_bytes_ref(gBytes);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Releases a reference on @bytes.  This may result in the bytes being
	 * freed. If @bytes is %NULL, it will return immediately.
	 *
	 * Since: 2.32
	 */
	public void unref()
	{
		g_bytes_unref(gBytes);
	}

	/**
	 * Unreferences the bytes, and returns a new mutable #GByteArray containing
	 * the same byte data.
	 *
	 * As an optimization, the byte data is transferred to the array without copying
	 * if this was the last reference to bytes and bytes was created with
	 * g_bytes_new(), g_bytes_new_take() or g_byte_array_free_to_bytes(). In all
	 * other cases the data is copied.
	 *
	 * Do not use it if @bytes contains more than %G_MAXUINT
	 * bytes. #GByteArray stores the length of its data in #guint, which
	 * may be shorter than #gsize, that @bytes is using.
	 *
	 * Returns: a new mutable #GByteArray containing the same byte data
	 *
	 * Since: 2.32
	 */
	public ByteArray unrefToArray()
	{
		auto __p = g_bytes_unref_to_array(gBytes);

		if(__p is null)
		{
			return null;
		}

		return new ByteArray(cast(GByteArray*) __p, true);
	}

	/**
	 * Unreferences the bytes, and returns a pointer the same byte data
	 * contents.
	 *
	 * As an optimization, the byte data is returned without copying if this was
	 * the last reference to bytes and bytes was created with g_bytes_new(),
	 * g_bytes_new_take() or g_byte_array_free_to_bytes(). In all other cases the
	 * data is copied.
	 *
	 * Returns: a pointer to the same byte data, which should be
	 *     freed with g_free()
	 *
	 * Since: 2.32
	 */
	public ubyte[] unrefToData()
	{
		size_t size;

		auto __p = g_bytes_unref_to_data(gBytes, &size);

		return cast(ubyte[])__p[0 .. size];
	}
}
