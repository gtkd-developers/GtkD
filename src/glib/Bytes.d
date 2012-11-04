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
 * outPack = glib
 * outFile = Bytes
 * strct   = GBytes
 * realStrct=
 * ctorStrct=
 * clss    = Bytes
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_bytes_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_bytes_new_take
 * 	- g_bytes_new_static
 * omit signals:
 * imports:
 * 	- glib.ByteArray
 * structWrap:
 * 	- GByteArray* -> ByteArray
 * 	- GBytes* -> Bytes
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Bytes;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.ByteArray;




/**
 * Description
 * GByteArray is a mutable array of bytes based on GArray, to provide arrays
 * of bytes which grow automatically as elements are added.
 * To create a new GByteArray use g_byte_array_new(). To add elements to a
 * GByteArray, use g_byte_array_append(), and g_byte_array_prepend().
 * To set the size of a GByteArray, use g_byte_array_set_size().
 * To free a GByteArray, use g_byte_array_free().
 * $(DDOC_COMMENT example)
 * See GBytes if you are interested in an immutable object representing a
 * sequence of bytes.
 */
public class Bytes
{
	
	/** the main Gtk struct */
	protected GBytes* gBytes;
	
	
	public GBytes* getBytesStruct()
	{
		return gBytes;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gBytes;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GBytes* gBytes)
	{
		this.gBytes = gBytes;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GBytes from data.
	 * data is copied.
	 * Since 2.32
	 * Params:
	 * data = the data to be used for the bytes. [array length=size]
	 * size = the size of data
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (void* data, gsize size)
	{
		// GBytes * g_bytes_new (gconstpointer data,  gsize size);
		auto p = g_bytes_new(data, size);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_bytes_new(data, size)");
		}
		this(cast(GBytes*) p);
	}
	
	/**
	 * Creates a GBytes from data.
	 * When the last reference is dropped, free_func will be called with the
	 * user_data argument.
	 * data must not be modified after this call is made until free_func has
	 * been called to indicate that the bytes is no longer in use.
	 * Since 2.32
	 * Params:
	 * data = the data to be used for the bytes. [array length=size]
	 * size = the size of data
	 * freeFunc = the function to call to release the data
	 * userData = data to pass to free_func
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (void* data, gsize size, GDestroyNotify freeFunc, void* userData)
	{
		// GBytes * g_bytes_new_with_free_func (gconstpointer data,  gsize size,  GDestroyNotify free_func,  gpointer user_data);
		auto p = g_bytes_new_with_free_func(data, size, freeFunc, userData);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_bytes_new_with_free_func(data, size, freeFunc, userData)");
		}
		this(cast(GBytes*) p);
	}
	
	/**
	 * Creates a GBytes which is a subsection of another GBytes. The offset +
	 * length may not be longer than the size of bytes.
	 * A reference to bytes will be held by the newly created GBytes until
	 * the byte data is no longer needed.
	 * Since 2.32
	 * Params:
	 * bytes = a GBytes
	 * offset = offset which subsection starts at
	 * length = length of subsection
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Bytes bytes, gsize offset, gsize length)
	{
		// GBytes * g_bytes_new_from_bytes (GBytes *bytes,  gsize offset,  gsize length);
		auto p = g_bytes_new_from_bytes((bytes is null) ? null : bytes.getBytesStruct(), offset, length);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_bytes_new_from_bytes((bytes is null) ? null : bytes.getBytesStruct(), offset, length)");
		}
		this(cast(GBytes*) p);
	}
	
	/**
	 * Get the byte data in the GBytes. This data should not be modified.
	 * This function will always return the same pointer for a given GBytes.
	 * Since 2.32
	 * Returns: a pointer to the byte data. [array length=size][type guint8]
	 */
	public void[] getData()
	{
		// gconstpointer g_bytes_get_data (GBytes *bytes,  gsize *size);
		gsize size;
		auto p = g_bytes_get_data(gBytes, &size);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. size];
	}
	
	/**
	 * Get the size of the byte data in the GBytes.
	 * This function will always return the same value for a given GBytes.
	 * Since 2.32
	 * Returns: the size
	 */
	public gsize getSize()
	{
		// gsize g_bytes_get_size (GBytes *bytes);
		return g_bytes_get_size(gBytes);
	}
	
	/**
	 * Creates an integer hash code for the byte data in the GBytes.
	 * This function can be passed to g_hash_table_new() as the key_equal_func
	 * parameter, when using non-NULL GBytes pointers as keys in a GHashTable.
	 * Since 2.32
	 * Params:
	 * bytes = a pointer to a GBytes key. [type GLib.Bytes]
	 * Returns: a hash value corresponding to the key.
	 */
	public static uint hash(void* bytes)
	{
		// guint g_bytes_hash (gconstpointer bytes);
		return g_bytes_hash(bytes);
	}
	
	/**
	 * Compares the two GBytes values being pointed to and returns
	 * TRUE if they are equal.
	 * This function can be passed to g_hash_table_new() as the key_equal_func
	 * parameter, when using non-NULL GBytes pointers as keys in a GHashTable.
	 * Since 2.32
	 * Params:
	 * bytes1 = a pointer to a GBytes. [type GLib.Bytes]
	 * bytes2 = a pointer to a GBytes to compare with bytes1. [type GLib.Bytes]
	 * Returns: TRUE if the two keys match.
	 */
	public static int equal(void* bytes1, void* bytes2)
	{
		// gboolean g_bytes_equal (gconstpointer bytes1,  gconstpointer bytes2);
		return g_bytes_equal(bytes1, bytes2);
	}
	
	/**
	 * Compares the two GBytes values.
	 * This function can be used to sort GBytes instances in lexographical order.
	 * Since 2.32
	 * Params:
	 * bytes1 = a pointer to a GBytes. [type GLib.Bytes]
	 * bytes2 = a pointer to a GBytes to compare with bytes1. [type GLib.Bytes]
	 * Returns: a negative value if bytes2 is lesser, a positive value if bytes2 is greater, and zero if bytes2 is equal to bytes1
	 */
	public static int compare(void* bytes1, void* bytes2)
	{
		// gint g_bytes_compare (gconstpointer bytes1,  gconstpointer bytes2);
		return g_bytes_compare(bytes1, bytes2);
	}
	
	/**
	 * Increase the reference count on bytes.
	 * Since 2.32
	 * Returns: the GBytes
	 */
	public Bytes doref()
	{
		// GBytes * g_bytes_ref (GBytes *bytes);
		auto p = g_bytes_ref(gBytes);
		
		if(p is null)
		{
			return null;
		}
		
		return new Bytes(cast(GBytes*) p);
	}
	
	/**
	 * Releases a reference on bytes. This may result in the bytes being
	 * freed.
	 * Since 2.32
	 */
	public void unref()
	{
		// void g_bytes_unref (GBytes *bytes);
		g_bytes_unref(gBytes);
	}
	
	/**
	 * Unreferences the bytes, and returns a pointer the same byte data
	 * contents.
	 * As an optimization, the byte data is returned without copying if this was
	 * the last reference to bytes and bytes was created with g_bytes_new(),
	 * g_bytes_new_take() or g_byte_array_free_to_bytes(). In all other cases the
	 * data is copied.
	 * Since 2.32
	 * Returns: a pointer to the same byte data, which should be freed with g_free(). [transfer full]
	 */
	public void[] unrefToData()
	{
		// gpointer g_bytes_unref_to_data (GBytes *bytes,  gsize *size);
		gsize size;
		auto p = g_bytes_unref_to_data(gBytes, &size);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. size];
	}
	
	/**
	 * Unreferences the bytes, and returns a new mutable GByteArray containing
	 * the same byte data.
	 * As an optimization, the byte data is transferred to the array without copying
	 * if this was the last reference to bytes and bytes was created with
	 * g_bytes_new(), g_bytes_new_take() or g_byte_array_free_to_bytes(). In all
	 * other cases the data is copied.
	 * Since 2.32
	 * Returns: a new mutable GByteArray containing the same byte data. [transfer full]
	 */
	public ByteArray unrefToArray()
	{
		// GByteArray * g_bytes_unref_to_array (GBytes *bytes);
		auto p = g_bytes_unref_to_array(gBytes);
		
		if(p is null)
		{
			return null;
		}
		
		return new ByteArray(cast(GByteArray*) p);
	}
}
