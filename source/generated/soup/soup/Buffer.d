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


module soup.Buffer;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.MemorySlice;
public  import glib.c.types;
private import gobject.ObjectG;
private import linker.Loader;
private import soup.c.functions;
public  import soup.c.types;


/**
 * A data buffer, generally used to represent a chunk of a
 * #SoupMessageBody.
 * 
 * @data is a #char because that's generally convenient; in some
 * situations you may need to cast it to #guchar or another type.
 */
public final class Buffer
{
	/** the main Gtk struct */
	protected SoupBuffer* soupBuffer;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupBuffer* getBufferStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupBuffer;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupBuffer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupBuffer* soupBuffer, bool ownedRef = false)
	{
		this.soupBuffer = soupBuffer;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_SOUP[0]) && ownedRef )
			soup_buffer_free(soupBuffer);
	}

	/**
	 * the data
	 */
	public @property ubyte [] data() {
		return cast(ubyte [])soupBuffer.data[0..getArrayLength(cast(ubyte *)soupBuffer.data)];
	}

	/** Ditto */
	public @property void data(ubyte [] value) {
		soupBuffer.data = cast(void *)value.ptr;
	}

	/**
	 */


	/**
	 * length of @data
	 */
	public @property size_t length()
	{
		return soupBuffer.length;
	}

	/** Ditto */
	public @property void length(size_t value)
	{
		soupBuffer.length = value;
	}

	/** */
	public static GType getType()
	{
		return soup_buffer_get_type();
	}

	/**
	 * Creates a new #SoupBuffer containing @length bytes from @data.
	 *
	 * Params:
	 *     use = how @data is to be used by the buffer
	 *     data = data
	 *
	 * Returns: the new #SoupBuffer.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SoupMemoryUse use, ubyte[] data)
	{
		auto __p = soup_buffer_new(use, data.ptr, cast(size_t)data.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupBuffer*) __p);
	}

	/**
	 * Creates a new #SoupBuffer containing @length bytes from @data.
	 *
	 * This function is exactly equivalent to soup_buffer_new() with
	 * %SOUP_MEMORY_TAKE as first argument; it exists mainly for
	 * convenience and simplifying language bindings.
	 *
	 * Params:
	 *     data = data
	 *
	 * Returns: the new #SoupBuffer.
	 *
	 * Since: 2.32
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(char[] data)
	{
		auto __p = soup_buffer_new_take(data.ptr, cast(size_t)data.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_take");
		}

		this(cast(SoupBuffer*) __p);
	}

	/**
	 * Creates a new #SoupBuffer containing @length bytes from @data. When
	 * the #SoupBuffer is freed, it will call @owner_dnotify, passing
	 * @owner to it. You must ensure that @data will remain valid until
	 * @owner_dnotify is called.
	 *
	 * For example, you could use this to create a buffer containing data
	 * returned from libxml without needing to do an extra copy:
	 *
	 * <informalexample><programlisting>
	 * xmlDocDumpMemory (doc, &xmlbody, &len);
	 * return soup_buffer_new_with_owner (xmlbody, len, xmlbody,
	 * (GDestroyNotify)xmlFree);
	 * </programlisting></informalexample>
	 *
	 * In this example, @data and @owner are the same, but in other cases
	 * they would be different (eg, @owner would be a object, and @data
	 * would be a pointer to one of the object's fields).
	 *
	 * Params:
	 *     data = data
	 *     owner = pointer to an object that owns @data
	 *     ownerDnotify = a function to free/unref @owner when
	 *         the buffer is freed
	 *
	 * Returns: the new #SoupBuffer.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data, void* owner, GDestroyNotify ownerDnotify)
	{
		auto __p = soup_buffer_new_with_owner(data.ptr, cast(size_t)data.length, owner, ownerDnotify);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_owner");
		}

		this(cast(SoupBuffer*) __p);
	}

	/**
	 * Makes a copy of @buffer. In reality, #SoupBuffer is a refcounted
	 * type, and calling soup_buffer_copy() will normally just increment
	 * the refcount on @buffer and return it. However, if @buffer was
	 * created with #SOUP_MEMORY_TEMPORARY memory, then soup_buffer_copy()
	 * will actually return a copy of it, so that the data in the copy
	 * will remain valid after the temporary buffer is freed.
	 *
	 * Returns: the new (or newly-reffed) buffer
	 */
	public Buffer copy()
	{
		auto __p = soup_buffer_copy(soupBuffer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(SoupBuffer*) __p, true);
	}

	/**
	 * Frees @buffer. (In reality, as described in the documentation for
	 * soup_buffer_copy(), this is actually an "unref" operation, and may
	 * or may not actually free @buffer.)
	 */
	public void free()
	{
		soup_buffer_free(soupBuffer);
		ownedRef = false;
	}

	/**
	 * Creates a #GBytes pointing to the same memory as @buffer. The
	 * #GBytes will hold a reference on @buffer to ensure that it is not
	 * freed while the #GBytes is still valid.
	 *
	 * Returns: a new #GBytes which has the same content
	 *     as the #SoupBuffer.
	 *
	 * Since: 2.40
	 */
	public Bytes getAsBytes()
	{
		auto __p = soup_buffer_get_as_bytes(soupBuffer);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * This function exists for use by language bindings, because it's not
	 * currently possible to get the right effect by annotating the fields
	 * of #SoupBuffer.
	 *
	 * Params:
	 *     data = the pointer
	 *         to the buffer data is stored here
	 *
	 * Since: 2.32
	 */
	public void getData(out ubyte[] data)
	{
		ubyte* outdata;
		size_t length;

		soup_buffer_get_data(soupBuffer, &outdata, &length);

		data = outdata[0 .. length];
	}

	/**
	 * Gets the "owner" object for a buffer created with
	 * soup_buffer_new_with_owner().
	 *
	 * Returns: the owner pointer
	 */
	public void* getOwner()
	{
		return soup_buffer_get_owner(soupBuffer);
	}

	/**
	 * Creates a new #SoupBuffer containing @length bytes "copied" from
	 * @parent starting at @offset. (Normally this will not actually copy
	 * any data, but will instead simply reference the same data as
	 * @parent does.)
	 *
	 * Params:
	 *     offset = offset within @parent to start at
	 *     length = number of bytes to copy from @parent
	 *
	 * Returns: the new #SoupBuffer.
	 */
	public Buffer newSubbuffer(size_t offset, size_t length)
	{
		auto __p = soup_buffer_new_subbuffer(soupBuffer, offset, length);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(SoupBuffer*) __p, true);
	}
}
