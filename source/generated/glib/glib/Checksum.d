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


module glib.Checksum;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * An opaque structure representing a checksumming operation.
 * 
 * To create a new GChecksum, use g_checksum_new(). To free
 * a GChecksum, use g_checksum_free().
 *
 * Since: 2.16
 */
public class Checksum
{
	/** the main Gtk struct */
	protected GChecksum* gChecksum;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GChecksum* getChecksumStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gChecksum;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gChecksum;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GChecksum* gChecksum, bool ownedRef = false)
	{
		this.gChecksum = gChecksum;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_checksum_free(gChecksum);
	}

	/**
	 * Gets the digest from checksum as a raw binary vector and places it
	 * into buffer. The size of the digest depends on the type of checksum.
	 *
	 * Once this function has been called, the Checksum is closed and can
	 * no longer be updated with update().
	 *
	 * Params:
	 *     buffer = output buffer
	 *     digestLen = an inout parameter. The caller initializes it to the size of buffer.
	 *         After the call it contains the length of the digest.
	 *
	 * Since: 2.16
	 */
	public void getDigest(ref ubyte[] buffer)
	{
		size_t digestLen = buffer.length;

		g_checksum_get_digest(gChecksum, buffer.ptr, &digestLen);

		buffer = buffer[0 .. digestLen];
	}

	/**
	 */

	/**
	 * Creates a new #GChecksum, using the checksum algorithm @checksum_type.
	 * If the @checksum_type is not known, %NULL is returned.
	 * A #GChecksum can be used to compute the checksum, or digest, of an
	 * arbitrary binary blob, using different hashing algorithms.
	 *
	 * A #GChecksum works by feeding a binary blob through g_checksum_update()
	 * until there is data to be checked; the digest can then be extracted
	 * using g_checksum_get_string(), which will return the checksum as a
	 * hexadecimal string; or g_checksum_get_digest(), which will return a
	 * vector of raw bytes. Once either g_checksum_get_string() or
	 * g_checksum_get_digest() have been called on a #GChecksum, the checksum
	 * will be closed and it won't be possible to call g_checksum_update()
	 * on it anymore.
	 *
	 * Params:
	 *     checksumType = the desired type of checksum
	 *
	 * Returns: the newly created #GChecksum, or %NULL.
	 *     Use g_checksum_free() to free the memory allocated by it.
	 *
	 * Since: 2.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GChecksumType checksumType)
	{
		auto __p = g_checksum_new(checksumType);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GChecksum*) __p);
	}

	/**
	 * Copies a #GChecksum. If @checksum has been closed, by calling
	 * g_checksum_get_string() or g_checksum_get_digest(), the copied
	 * checksum will be closed as well.
	 *
	 * Returns: the copy of the passed #GChecksum. Use
	 *     g_checksum_free() when finished using it.
	 *
	 * Since: 2.16
	 */
	public Checksum copy()
	{
		auto __p = g_checksum_copy(gChecksum);

		if(__p is null)
		{
			return null;
		}

		return new Checksum(cast(GChecksum*) __p, true);
	}

	/**
	 * Frees the memory allocated for @checksum.
	 *
	 * Since: 2.16
	 */
	public void free()
	{
		g_checksum_free(gChecksum);
		ownedRef = false;
	}

	/**
	 * Gets the digest as a hexadecimal string.
	 *
	 * Once this function has been called the #GChecksum can no longer be
	 * updated with g_checksum_update().
	 *
	 * The hexadecimal characters will be lower case.
	 *
	 * Returns: the hexadecimal representation of the checksum. The
	 *     returned string is owned by the checksum and should not be modified
	 *     or freed.
	 *
	 * Since: 2.16
	 */
	public string getString()
	{
		return Str.toString(g_checksum_get_string(gChecksum));
	}

	/**
	 * Resets the state of the @checksum back to its initial state.
	 *
	 * Since: 2.18
	 */
	public void reset()
	{
		g_checksum_reset(gChecksum);
	}

	/**
	 * Feeds @data into an existing #GChecksum. The checksum must still be
	 * open, that is g_checksum_get_string() or g_checksum_get_digest() must
	 * not have been called on @checksum.
	 *
	 * Params:
	 *     data = buffer used to compute the checksum
	 *
	 * Since: 2.16
	 */
	public void update(char[] data)
	{
		g_checksum_update(gChecksum, data.ptr, cast(ptrdiff_t)data.length);
	}

	/**
	 * Gets the length in bytes of digests of type @checksum_type
	 *
	 * Params:
	 *     checksumType = a #GChecksumType
	 *
	 * Returns: the checksum length, or -1 if @checksum_type is
	 *     not supported.
	 *
	 * Since: 2.16
	 */
	public static ptrdiff_t typeGetLength(GChecksumType checksumType)
	{
		return g_checksum_type_get_length(checksumType);
	}

	/**
	 * Computes the checksum for a binary @data. This is a
	 * convenience wrapper for g_checksum_new(), g_checksum_get_string()
	 * and g_checksum_free().
	 *
	 * The hexadecimal string returned will be in lower case.
	 *
	 * Params:
	 *     checksumType = a #GChecksumType
	 *     data = binary blob to compute the digest of
	 *
	 * Returns: the digest of the binary data as a
	 *     string in hexadecimal, or %NULL if g_checksum_new() fails for
	 *     @checksum_type. The returned string should be freed with g_free() when
	 *     done using it.
	 *
	 * Since: 2.34
	 */
	public static string computeChecksumForBytes(GChecksumType checksumType, Bytes data)
	{
		auto retStr = g_compute_checksum_for_bytes(checksumType, (data is null) ? null : data.getBytesStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Computes the checksum for a binary @data of @length. This is a
	 * convenience wrapper for g_checksum_new(), g_checksum_get_string()
	 * and g_checksum_free().
	 *
	 * The hexadecimal string returned will be in lower case.
	 *
	 * Params:
	 *     checksumType = a #GChecksumType
	 *     data = binary blob to compute the digest of
	 *
	 * Returns: the digest of the binary data as a
	 *     string in hexadecimal, or %NULL if g_checksum_new() fails for
	 *     @checksum_type. The returned string should be freed with g_free() when
	 *     done using it.
	 *
	 * Since: 2.16
	 */
	public static string computeChecksumForData(GChecksumType checksumType, char[] data)
	{
		auto retStr = g_compute_checksum_for_data(checksumType, data.ptr, cast(size_t)data.length);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Computes the checksum of a string.
	 *
	 * The hexadecimal string returned will be in lower case.
	 *
	 * Params:
	 *     checksumType = a #GChecksumType
	 *     str = the string to compute the checksum of
	 *     length = the length of the string, or -1 if the string is null-terminated.
	 *
	 * Returns: the checksum as a hexadecimal string,
	 *     or %NULL if g_checksum_new() fails for @checksum_type. The returned string
	 *     should be freed with g_free() when done using it.
	 *
	 * Since: 2.16
	 */
	public static string computeChecksumForString(GChecksumType checksumType, string str, ptrdiff_t length)
	{
		auto retStr = g_compute_checksum_for_string(checksumType, Str.toStringz(str), length);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
