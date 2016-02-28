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


module glib.Variant;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.StringG;
private import glib.VariantIter;
private import glib.VariantType;
private import gtkc.glib;
public  import gtkc.glibtypes;


/**
 * #GVariant is a variant datatype; it stores a value along with
 * information about the type of that value.  The range of possible
 * values is determined by the type.  The type system used by #GVariant
 * is #GVariantType.
 * 
 * #GVariant instances always have a type and a value (which are given
 * at construction time).  The type and value of a #GVariant instance
 * can never change other than by the #GVariant itself being
 * destroyed.  A #GVariant cannot contain a pointer.
 * 
 * #GVariant is reference counted using g_variant_ref() and
 * g_variant_unref().  #GVariant also has floating reference counts --
 * see g_variant_ref_sink().
 * 
 * #GVariant is completely threadsafe.  A #GVariant instance can be
 * concurrently accessed in any way from any number of threads without
 * problems.
 * 
 * #GVariant is heavily optimised for dealing with data in serialised
 * form.  It works particularly well with data located in memory-mapped
 * files.  It can perform nearly all deserialisation operations in a
 * small constant time, usually touching only a single memory page.
 * Serialised #GVariant data can also be sent over the network.
 * 
 * #GVariant is largely compatible with D-Bus.  Almost all types of
 * #GVariant instances can be sent over D-Bus.  See #GVariantType for
 * exceptions.  (However, #GVariant's serialisation format is not the same
 * as the serialisation format of a D-Bus message body: use #GDBusMessage,
 * in the gio library, for those.)
 * 
 * For space-efficiency, the #GVariant serialisation format does not
 * automatically include the variant's length, type or endianness,
 * which must either be implied from context (such as knowledge that a
 * particular file format always contains a little-endian
 * %G_VARIANT_TYPE_VARIANT which occupies the whole length of the file)
 * or supplied out-of-band (for instance, a length, type and/or endianness
 * indicator could be placed at the beginning of a file, network message
 * or network stream).
 * 
 * A #GVariant's size is limited mainly by any lower level operating
 * system constraints, such as the number of bits in #gsize.  For
 * example, it is reasonable to have a 2GB file mapped into memory
 * with #GMappedFile, and call g_variant_new_from_data() on it.
 * 
 * For convenience to C programmers, #GVariant features powerful
 * varargs-based value construction and destruction.  This feature is
 * designed to be embedded in other libraries.
 * 
 * There is a Python-inspired text language for describing #GVariant
 * values.  #GVariant includes a printer for this language and a parser
 * with type inferencing.
 * 
 * ## Memory Use
 * 
 * #GVariant tries to be quite efficient with respect to memory use.
 * This section gives a rough idea of how much memory is used by the
 * current implementation.  The information here is subject to change
 * in the future.
 * 
 * The memory allocated by #GVariant can be grouped into 4 broad
 * purposes: memory for serialised data, memory for the type
 * information cache, buffer management memory and memory for the
 * #GVariant structure itself.
 * 
 * ## Serialised Data Memory
 * 
 * This is the memory that is used for storing GVariant data in
 * serialised form.  This is what would be sent over the network or
 * what would end up on disk, not counting any indicator of the
 * endianness, or of the length or type of the top-level variant.
 * 
 * The amount of memory required to store a boolean is 1 byte. 16,
 * 32 and 64 bit integers and double precision floating point numbers
 * use their "natural" size.  Strings (including object path and
 * signature strings) are stored with a nul terminator, and as such
 * use the length of the string plus 1 byte.
 * 
 * Maybe types use no space at all to represent the null value and
 * use the same amount of space (sometimes plus one byte) as the
 * equivalent non-maybe-typed value to represent the non-null case.
 * 
 * Arrays use the amount of space required to store each of their
 * members, concatenated.  Additionally, if the items stored in an
 * array are not of a fixed-size (ie: strings, other arrays, etc)
 * then an additional framing offset is stored for each item.  The
 * size of this offset is either 1, 2 or 4 bytes depending on the
 * overall size of the container.  Additionally, extra padding bytes
 * are added as required for alignment of child values.
 * 
 * Tuples (including dictionary entries) use the amount of space
 * required to store each of their members, concatenated, plus one
 * framing offset (as per arrays) for each non-fixed-sized item in
 * the tuple, except for the last one.  Additionally, extra padding
 * bytes are added as required for alignment of child values.
 * 
 * Variants use the same amount of space as the item inside of the
 * variant, plus 1 byte, plus the length of the type string for the
 * item inside the variant.
 * 
 * As an example, consider a dictionary mapping strings to variants.
 * In the case that the dictionary is empty, 0 bytes are required for
 * the serialisation.
 * 
 * If we add an item "width" that maps to the int32 value of 500 then
 * we will use 4 byte to store the int32 (so 6 for the variant
 * containing it) and 6 bytes for the string.  The variant must be
 * aligned to 8 after the 6 bytes of the string, so that's 2 extra
 * bytes.  6 (string) + 2 (padding) + 6 (variant) is 14 bytes used
 * for the dictionary entry.  An additional 1 byte is added to the
 * array as a framing offset making a total of 15 bytes.
 * 
 * If we add another entry, "title" that maps to a nullable string
 * that happens to have a value of null, then we use 0 bytes for the
 * null value (and 3 bytes for the variant to contain it along with
 * its type string) plus 6 bytes for the string.  Again, we need 2
 * padding bytes.  That makes a total of 6 + 2 + 3 = 11 bytes.
 * 
 * We now require extra padding between the two items in the array.
 * After the 14 bytes of the first item, that's 2 bytes required.
 * We now require 2 framing offsets for an extra two
 * bytes. 14 + 2 + 11 + 2 = 29 bytes to encode the entire two-item
 * dictionary.
 * 
 * ## Type Information Cache
 * 
 * For each GVariant type that currently exists in the program a type
 * information structure is kept in the type information cache.  The
 * type information structure is required for rapid deserialisation.
 * 
 * Continuing with the above example, if a #GVariant exists with the
 * type "a{sv}" then a type information struct will exist for
 * "a{sv}", "{sv}", "s", and "v".  Multiple uses of the same type
 * will share the same type information.  Additionally, all
 * single-digit types are stored in read-only static memory and do
 * not contribute to the writable memory footprint of a program using
 * #GVariant.
 * 
 * Aside from the type information structures stored in read-only
 * memory, there are two forms of type information.  One is used for
 * container types where there is a single element type: arrays and
 * maybe types.  The other is used for container types where there
 * are multiple element types: tuples and dictionary entries.
 * 
 * Array type info structures are 6 * sizeof (void *), plus the
 * memory required to store the type string itself.  This means that
 * on 32-bit systems, the cache entry for "a{sv}" would require 30
 * bytes of memory (plus malloc overhead).
 * 
 * Tuple type info structures are 6 * sizeof (void *), plus 4 *
 * sizeof (void *) for each item in the tuple, plus the memory
 * required to store the type string itself.  A 2-item tuple, for
 * example, would have a type information structure that consumed
 * writable memory in the size of 14 * sizeof (void *) (plus type
 * string)  This means that on 32-bit systems, the cache entry for
 * "{sv}" would require 61 bytes of memory (plus malloc overhead).
 * 
 * This means that in total, for our "a{sv}" example, 91 bytes of
 * type information would be allocated.
 * 
 * The type information cache, additionally, uses a #GHashTable to
 * store and lookup the cached items and stores a pointer to this
 * hash table in static storage.  The hash table is freed when there
 * are zero items in the type cache.
 * 
 * Although these sizes may seem large it is important to remember
 * that a program will probably only have a very small number of
 * different types of values in it and that only one type information
 * structure is required for many different values of the same type.
 * 
 * ## Buffer Management Memory
 * 
 * #GVariant uses an internal buffer management structure to deal
 * with the various different possible sources of serialised data
 * that it uses.  The buffer is responsible for ensuring that the
 * correct call is made when the data is no longer in use by
 * #GVariant.  This may involve a g_free() or a g_slice_free() or
 * even g_mapped_file_unref().
 * 
 * One buffer management structure is used for each chunk of
 * serialised data.  The size of the buffer management structure
 * is 4 * (void *).  On 32-bit systems, that's 16 bytes.
 * 
 * ## GVariant structure
 * 
 * The size of a #GVariant structure is 6 * (void *).  On 32-bit
 * systems, that's 24 bytes.
 * 
 * #GVariant structures only exist if they are explicitly created
 * with API calls.  For example, if a #GVariant is constructed out of
 * serialised data for the example given above (with the dictionary)
 * then although there are 9 individual values that comprise the
 * entire dictionary (two keys, two values, two variants containing
 * the values, two dictionary entries, plus the dictionary itself),
 * only 1 #GVariant instance exists -- the one referring to the
 * dictionary.
 * 
 * If calls are made to start accessing the other values then
 * #GVariant instances will exist for those values only for as long
 * as they are in use (ie: until you call g_variant_unref()).  The
 * type information is shared.  The serialised data and the buffer
 * management structure for that serialised data is shared by the
 * child.
 * 
 * ## Summary
 * 
 * To put the entire example together, for our dictionary mapping
 * strings to variants (with two entries, as given above), we are
 * using 91 bytes of memory for type information, 29 byes of memory
 * for the serialised data, 16 bytes for buffer management and 24
 * bytes for the #GVariant instance, or a total of 160 bytes, plus
 * malloc overhead.  If we were to use g_variant_get_child_value() to
 * access the two dictionary entries, we would use an additional 48
 * bytes.  If we were to have other dictionaries of the same type, we
 * would use more memory for the serialised data and buffer
 * management for those dictionaries, but the type information would
 * be shared.
 *
 * Since: 2.24
 */
public class Variant
{
	/** the main Gtk struct */
	protected GVariant* gVariant;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GVariant* getVariantStruct()
	{
		return gVariant;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gVariant;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GVariant* gVariant, bool ownedRef = false)
	{
		this.gVariant = gVariant;
		this.ownedRef = ownedRef;
	}

	/**
	 * Creates a DBus object path GVariant with the contents of string.
	 * string must be a valid DBus object path.
	 * Use Variant.isObjectPath() if you're not sure.
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Variant fromObjectPath(string path)
	{
		auto p = g_variant_new_object_path(Str.toStringz(path));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_object_path");
		}
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Creates a DBus type signature GVariant with the contents of string.
	 * string must be a valid DBus type signature.
	 * Use Variant.isSignature() if you're not sure.
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Variant fromSignature(string signature)
	{
		auto p = g_variant_new_signature(Str.toStringz(signature));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_signature");
		}
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Creates an array-of-bytes GVariant with the contents of string.
	 * This function is just like new Variant(string) except that the string
	 * need not be valid utf8.
	 *
	 * The nul terminator character at the end of the string is stored in
	 * the array.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Variant fromByteString(string byteString)
	{
		auto p = g_variant_new_bytestring(Str.toStringz(byteString));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_bytestring");
		}
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Constructs an array of object paths Variant from the given array
	 * of strings.
	 *
	 * Each string must be a valid Variant object path.
	 *
	 * Since: 2.30
	 *
	 * Params:
	 *     strv   = an array of strings.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Variant fromObjv(string[] strv)
	{
		// GVariant * g_variant_new_objv (const gchar * const *strv,  gssize length);
		auto p = g_variant_new_objv(Str.toStringzArray(strv), strv.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_objv(strv, length)");
		}
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Constructs an array of bytestring GVariant from the given array of
	 * strings. If length is -1 then strv is null-terminated.
	 *
	 * Since: 2.26
	 *
	 * Params:
	 *     strv   = an array of strings.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Variant fromByteStringArray(string[] strv)
	{
		auto p = g_variant_new_bytestring_array(Str.toStringzArray(strv), strv.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_bytestring_array(strv, length)");
		}
		return new Variant(cast(GVariant*) p);
	}

	/**
	 */

	/**
	 * Creates a new #GVariant array from @children.
	 *
	 * @child_type must be non-%NULL if @n_children is zero.  Otherwise, the
	 * child type is determined by inspecting the first element of the
	 * @children array.  If @child_type is non-%NULL then it must be a
	 * definite type.
	 *
	 * The items of the array are taken from the @children array.  No entry
	 * in the @children array may be %NULL.
	 *
	 * All items in the array must have the same type, which must be the
	 * same as @child_type, if given.
	 *
	 * If the @children are floating references (see g_variant_ref_sink()), the
	 * new instance takes ownership of them as if via g_variant_ref_sink().
	 *
	 * Params:
	 *     childType = the element type of the new array
	 *     children = an array of
	 *         #GVariant pointers, the children
	 *     nChildren = the length of @children
	 *
	 * Return: a floating reference to a new #GVariant array
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(VariantType childType, Variant[] children)
	{
		GVariant*[] childrenArray = new GVariant*[children.length];
		for ( int i = 0; i < children.length; i++ )
		{
			childrenArray[i] = children[i].getVariantStruct();
		}
		
		auto p = g_variant_new_array((childType is null) ? null : childType.getVariantTypeStruct(), childrenArray.ptr, cast(size_t)children.length);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_array");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new boolean #GVariant instance -- either %TRUE or %FALSE.
	 *
	 * Params:
	 *     value = a #gboolean value
	 *
	 * Return: a floating reference to a new boolean #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(bool value)
	{
		auto p = g_variant_new_boolean(value);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_boolean");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new byte #GVariant instance.
	 *
	 * Params:
	 *     value = a #guint8 value
	 *
	 * Return: a floating reference to a new byte #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(char value)
	{
		auto p = g_variant_new_byte(value);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_byte");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new dictionary entry #GVariant. @key and @value must be
	 * non-%NULL. @key must be a value of a basic type (ie: not a container).
	 *
	 * If the @key or @value are floating references (see g_variant_ref_sink()),
	 * the new instance takes ownership of them as if via g_variant_ref_sink().
	 *
	 * Params:
	 *     key = a basic #GVariant, the key
	 *     value = a #GVariant, the value
	 *
	 * Return: a floating reference to a new dictionary entry #GVariant
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Variant key, Variant value)
	{
		auto p = g_variant_new_dict_entry((key is null) ? null : key.getVariantStruct(), (value is null) ? null : value.getVariantStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_dict_entry");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new double #GVariant instance.
	 *
	 * Params:
	 *     value = a #gdouble floating point value
	 *
	 * Return: a floating reference to a new double #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double value)
	{
		auto p = g_variant_new_double(value);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_double");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Provides access to the serialised data for an array of fixed-sized
	 * items.
	 *
	 * @value must be an array with fixed-sized elements.  Numeric types are
	 * fixed-size as are tuples containing only other fixed-sized types.
	 *
	 * @element_size must be the size of a single element in the array.
	 * For example, if calling this function for an array of 32-bit integers,
	 * you might say sizeof(gint32). This value isn't used except for the purpose
	 * of a double-check that the form of the serialised data matches the caller's
	 * expectation.
	 *
	 * @n_elements, which must be non-%NULL is set equal to the number of
	 * items in the array.
	 *
	 * Params:
	 *     elementType = the #GVariantType of each element
	 *     elements = a pointer to the fixed array of contiguous elements
	 *     nElements = the number of elements
	 *     elementSize = the size of each element
	 *
	 * Return: a floating reference to a new array #GVariant instance
	 *
	 * Since: 2.32
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(VariantType elementType, void* elements, size_t nElements, size_t elementSize)
	{
		auto p = g_variant_new_fixed_array((elementType is null) ? null : elementType.getVariantTypeStruct(), elements, nElements, elementSize);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_fixed_array");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Constructs a new serialised-mode #GVariant instance.  This is the
	 * inner interface for creation of new serialised values that gets
	 * called from various functions in gvariant.c.
	 *
	 * A reference is taken on @bytes.
	 *
	 * Params:
	 *     type = a #GVariantType
	 *     bytes = a #GBytes
	 *     trusted = if the contents of @bytes are trusted
	 *
	 * Return: a new #GVariant with a floating reference
	 *
	 * Since: 2.36
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(VariantType type, Bytes bytes, bool trusted)
	{
		auto p = g_variant_new_from_bytes((type is null) ? null : type.getVariantTypeStruct(), (bytes is null) ? null : bytes.getBytesStruct(), trusted);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_bytes");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new #GVariant instance from serialised data.
	 *
	 * @type is the type of #GVariant instance that will be constructed.
	 * The interpretation of @data depends on knowing the type.
	 *
	 * @data is not modified by this function and must remain valid with an
	 * unchanging value until such a time as @notify is called with
	 * @user_data.  If the contents of @data change before that time then
	 * the result is undefined.
	 *
	 * If @data is trusted to be serialised data in normal form then
	 * @trusted should be %TRUE.  This applies to serialised data created
	 * within this process or read from a trusted location on the disk (such
	 * as a file installed in /usr/lib alongside your application).  You
	 * should set trusted to %FALSE if @data is read from the network, a
	 * file in the user's home directory, etc.
	 *
	 * If @data was not stored in this machine's native endianness, any multi-byte
	 * numeric values in the returned variant will also be in non-native
	 * endianness. g_variant_byteswap() can be used to recover the original values.
	 *
	 * @notify will be called with @user_data when @data is no longer
	 * needed.  The exact time of this call is unspecified and might even be
	 * before this function returns.
	 *
	 * Params:
	 *     type = a definite #GVariantType
	 *     data = the serialised data
	 *     size = the size of @data
	 *     trusted = %TRUE if @data is definitely in normal form
	 *     notify = function to call when @data is no longer needed
	 *     userData = data for @notify
	 *
	 * Return: a new floating #GVariant of type @type
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(VariantType type, ubyte[] data, bool trusted, GDestroyNotify notify, void* userData)
	{
		auto p = g_variant_new_from_data((type is null) ? null : type.getVariantTypeStruct(), data.ptr, cast(size_t)data.length, trusted, notify, userData);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_data");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new int16 #GVariant instance.
	 *
	 * Params:
	 *     value = a #gint16 value
	 *
	 * Return: a floating reference to a new int16 #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(short value)
	{
		auto p = g_variant_new_int16(value);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_int16");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new int32 #GVariant instance.
	 *
	 * Params:
	 *     value = a #gint32 value
	 *
	 * Return: a floating reference to a new int32 #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int value)
	{
		auto p = g_variant_new_int32(value);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_int32");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new int64 #GVariant instance.
	 *
	 * Params:
	 *     value = a #gint64 value
	 *
	 * Return: a floating reference to a new int64 #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(long value)
	{
		auto p = g_variant_new_int64(value);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_int64");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Depending on if @child is %NULL, either wraps @child inside of a
	 * maybe container or creates a Nothing instance for the given @type.
	 *
	 * At least one of @child_type and @child must be non-%NULL.
	 * If @child_type is non-%NULL then it must be a definite type.
	 * If they are both non-%NULL then @child_type must be the type
	 * of @child.
	 *
	 * If @child is a floating reference (see g_variant_ref_sink()), the new
	 * instance takes ownership of @child.
	 *
	 * Params:
	 *     childType = the #GVariantType of the child, or %NULL
	 *     child = the child value, or %NULL
	 *
	 * Return: a floating reference to a new #GVariant maybe instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(VariantType childType, Variant child)
	{
		auto p = g_variant_new_maybe((childType is null) ? null : childType.getVariantTypeStruct(), (child is null) ? null : child.getVariantStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_maybe");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Parses @format and returns the result.
	 *
	 * This is the version of g_variant_new_parsed() intended to be used
	 * from libraries.
	 *
	 * The return value will be floating if it was a newly created GVariant
	 * instance.  In the case that @format simply specified the collection
	 * of a #GVariant pointer (eg: @format was "%*") then the collected
	 * #GVariant pointer will be returned unmodified, without adding any
	 * additional references.
	 *
	 * Note that the arguments in @app must be of the correct width for their types
	 * specified in @format when collected into the #va_list. See
	 * the [GVariant varargs documentation][gvariant-varargs].
	 *
	 * In order to behave correctly in all cases it is necessary for the
	 * calling function to g_variant_ref_sink() the return result before
	 * returning control to the user that originally provided the pointer.
	 * At this point, the caller will have their own full reference to the
	 * result.  This can also be done by adding the result to a container,
	 * or by passing it to another g_variant_new() call.
	 *
	 * Params:
	 *     format = a text format #GVariant
	 *     app = a pointer to a #va_list
	 *
	 * Return: a new, usually floating, #GVariant
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string format, void** app)
	{
		auto p = g_variant_new_parsed_va(Str.toStringz(format), app);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_parsed_va");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a string #GVariant with the contents of @string.
	 *
	 * @string must be valid UTF-8, and must not be %NULL. To encode
	 * potentially-%NULL strings, use g_variant_new() with `ms` as the
	 * [format string][gvariant-format-strings-maybe-types].
	 *
	 * Params:
	 *     str = a normal UTF-8 nul-terminated string
	 *
	 * Return: a floating reference to a new string #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string str)
	{
		auto p = g_variant_new_string(Str.toStringz(str));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_string");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Constructs an array of strings #GVariant from the given array of
	 * strings.
	 *
	 * If @length is -1 then @strv is %NULL-terminated.
	 *
	 * Params:
	 *     strv = an array of strings
	 *     length = the length of @strv, or -1
	 *
	 * Return: a new floating #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string[] strv)
	{
		auto p = g_variant_new_strv(Str.toStringzArray(strv), cast(ptrdiff_t)strv.length);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_strv");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new tuple #GVariant out of the items in @children.  The
	 * type is determined from the types of @children.  No entry in the
	 * @children array may be %NULL.
	 *
	 * If @n_children is 0 then the unit tuple is constructed.
	 *
	 * If the @children are floating references (see g_variant_ref_sink()), the
	 * new instance takes ownership of them as if via g_variant_ref_sink().
	 *
	 * Params:
	 *     children = the items to make the tuple out of
	 *     nChildren = the length of @children
	 *
	 * Return: a floating reference to a new #GVariant tuple
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Variant[] children)
	{
		GVariant*[] childrenArray = new GVariant*[children.length];
		for ( int i = 0; i < children.length; i++ )
		{
			childrenArray[i] = children[i].getVariantStruct();
		}
		
		auto p = g_variant_new_tuple(childrenArray.ptr, cast(size_t)children.length);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_tuple");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new uint16 #GVariant instance.
	 *
	 * Params:
	 *     value = a #guint16 value
	 *
	 * Return: a floating reference to a new uint16 #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ushort value)
	{
		auto p = g_variant_new_uint16(value);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_uint16");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new uint32 #GVariant instance.
	 *
	 * Params:
	 *     value = a #guint32 value
	 *
	 * Return: a floating reference to a new uint32 #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint value)
	{
		auto p = g_variant_new_uint32(value);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_uint32");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Creates a new uint64 #GVariant instance.
	 *
	 * Params:
	 *     value = a #guint64 value
	 *
	 * Return: a floating reference to a new uint64 #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ulong value)
	{
		auto p = g_variant_new_uint64(value);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_uint64");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * This function is intended to be used by libraries based on
	 * #GVariant that want to provide g_variant_new()-like functionality
	 * to their users.
	 *
	 * The API is more general than g_variant_new() to allow a wider range
	 * of possible uses.
	 *
	 * @format_string must still point to a valid format string, but it only
	 * needs to be nul-terminated if @endptr is %NULL.  If @endptr is
	 * non-%NULL then it is updated to point to the first character past the
	 * end of the format string.
	 *
	 * @app is a pointer to a #va_list.  The arguments, according to
	 * @format_string, are collected from this #va_list and the list is left
	 * pointing to the argument following the last.
	 *
	 * Note that the arguments in @app must be of the correct width for their
	 * types specified in @format_string when collected into the #va_list.
	 * See the [GVariant varargs documentation][gvariant-varargs.
	 *
	 * These two generalisations allow mixing of multiple calls to
	 * g_variant_new_va() and g_variant_get_va() within a single actual
	 * varargs call by the user.
	 *
	 * The return value will be floating if it was a newly created GVariant
	 * instance (for example, if the format string was "(ii)").  In the case
	 * that the format_string was '*', '?', 'r', or a format starting with
	 * '@' then the collected #GVariant pointer will be returned unmodified,
	 * without adding any additional references.
	 *
	 * In order to behave correctly in all cases it is necessary for the
	 * calling function to g_variant_ref_sink() the return result before
	 * returning control to the user that originally provided the pointer.
	 * At this point, the caller will have their own full reference to the
	 * result.  This can also be done by adding the result to a container,
	 * or by passing it to another g_variant_new() call.
	 *
	 * Params:
	 *     formatString = a string that is prefixed with a format string
	 *     endptr = location to store the end pointer,
	 *         or %NULL
	 *     app = a pointer to a #va_list
	 *
	 * Return: a new, usually floating, #GVariant
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string formatString, string[] endptr, void** app)
	{
		auto p = g_variant_new_va(Str.toStringz(formatString), Str.toStringzArray(endptr), app);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_va");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Boxes @value.  The result is a #GVariant instance representing a
	 * variant containing the original value.
	 *
	 * If @child is a floating reference (see g_variant_ref_sink()), the new
	 * instance takes ownership of @child.
	 *
	 * Params:
	 *     value = a #GVariant instance
	 *
	 * Return: a floating reference to a new variant #GVariant instance
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Variant value)
	{
		auto p = g_variant_new_variant((value is null) ? null : value.getVariantStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_variant");
		}
		
		this(cast(GVariant*) p);
	}

	/**
	 * Performs a byteswapping operation on the contents of @value.  The
	 * result is that all multi-byte numeric data contained in @value is
	 * byteswapped.  That includes 16, 32, and 64bit signed and unsigned
	 * integers as well as file handles and double precision floating point
	 * values.
	 *
	 * This function is an identity mapping on any value that does not
	 * contain multi-byte numeric data.  That include strings, booleans,
	 * bytes and containers containing only these things (recursively).
	 *
	 * The returned value is always in normal form and is marked as trusted.
	 *
	 * Return: the byteswapped form of @value
	 *
	 * Since: 2.24
	 */
	public Variant byteswap()
	{
		auto p = g_variant_byteswap(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Checks if calling g_variant_get() with @format_string on @value would
	 * be valid from a type-compatibility standpoint.  @format_string is
	 * assumed to be a valid format string (from a syntactic standpoint).
	 *
	 * If @copy_only is %TRUE then this function additionally checks that it
	 * would be safe to call g_variant_unref() on @value immediately after
	 * the call to g_variant_get() without invalidating the result.  This is
	 * only possible if deep copies are made (ie: there are no pointers to
	 * the data inside of the soon-to-be-freed #GVariant instance).  If this
	 * check fails then a g_critical() is printed and %FALSE is returned.
	 *
	 * This function is meant to be used by functions that wish to provide
	 * varargs accessors to #GVariant values of uncertain values (eg:
	 * g_variant_lookup() or g_menu_model_get_item_attribute()).
	 *
	 * Params:
	 *     formatString = a valid #GVariant format string
	 *     copyOnly = %TRUE to ensure the format string makes deep copies
	 *
	 * Return: %TRUE if @format_string is safe to use
	 *
	 * Since: 2.34
	 */
	public bool checkFormatString(string formatString, bool copyOnly)
	{
		return g_variant_check_format_string(gVariant, Str.toStringz(formatString), copyOnly) != 0;
	}

	/**
	 * Classifies @value according to its top-level type.
	 *
	 * Return: the #GVariantClass of @value
	 *
	 * Since: 2.24
	 */
	public GVariantClass classify()
	{
		return g_variant_classify(gVariant);
	}

	/**
	 * Compares @one and @two.
	 *
	 * The types of @one and @two are #gconstpointer only to allow use of
	 * this function with #GTree, #GPtrArray, etc.  They must each be a
	 * #GVariant.
	 *
	 * Comparison is only defined for basic types (ie: booleans, numbers,
	 * strings).  For booleans, %FALSE is less than %TRUE.  Numbers are
	 * ordered in the usual way.  Strings are in ASCII lexographical order.
	 *
	 * It is a programmer error to attempt to compare container values or
	 * two values that have types that are not exactly equal.  For example,
	 * you cannot compare a 32-bit signed integer with a 32-bit unsigned
	 * integer.  Also note that this function is not particularly
	 * well-behaved when it comes to comparison of doubles; in particular,
	 * the handling of incomparable values (ie: NaN) is undefined.
	 *
	 * If you only require an equality comparison, g_variant_equal() is more
	 * general.
	 *
	 * Params:
	 *     two = a #GVariant instance of the same type
	 *
	 * Return: negative value if a < b;
	 *     zero if a = b;
	 *     positive value if a > b.
	 *
	 * Since: 2.26
	 */
	public int compare(Variant two)
	{
		return g_variant_compare(gVariant, (two is null) ? null : two.getVariantStruct());
	}

	/**
	 * Similar to g_variant_get_bytestring() except that instead of
	 * returning a constant string, the string is duplicated.
	 *
	 * The return value must be freed using g_free().
	 *
	 * Return: a newly allocated string
	 *
	 * Since: 2.26
	 */
	public string dupBytestring()
	{
		size_t length;
		
		auto retStr = g_variant_dup_bytestring(gVariant, &length);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr, length);
	}

	/**
	 * Gets the contents of an array of array of bytes #GVariant.  This call
	 * makes a deep copy; the return result should be released with
	 * g_strfreev().
	 *
	 * If @length is non-%NULL then the number of elements in the result is
	 * stored there.  In any case, the resulting array will be
	 * %NULL-terminated.
	 *
	 * For an empty array, @length will be set to 0 and a pointer to a
	 * %NULL pointer will be returned.
	 *
	 * Return: an array of strings
	 *
	 * Since: 2.26
	 */
	public string[] dupBytestringArray()
	{
		size_t length;
		
		auto retStr = g_variant_dup_bytestring_array(gVariant, &length);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Gets the contents of an array of object paths #GVariant.  This call
	 * makes a deep copy; the return result should be released with
	 * g_strfreev().
	 *
	 * If @length is non-%NULL then the number of elements in the result
	 * is stored there.  In any case, the resulting array will be
	 * %NULL-terminated.
	 *
	 * For an empty array, @length will be set to 0 and a pointer to a
	 * %NULL pointer will be returned.
	 *
	 * Return: an array of strings
	 *
	 * Since: 2.30
	 */
	public string[] dupObjv()
	{
		size_t length;
		
		auto retStr = g_variant_dup_objv(gVariant, &length);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Similar to g_variant_get_string() except that instead of returning
	 * a constant string, the string is duplicated.
	 *
	 * The string will always be UTF-8 encoded.
	 *
	 * The return value must be freed using g_free().
	 *
	 * Params:
	 *     length = a pointer to a #gsize, to store the length
	 *
	 * Return: a newly allocated string, UTF-8 encoded
	 *
	 * Since: 2.24
	 */
	public string dupString(out size_t length)
	{
		auto retStr = g_variant_dup_string(gVariant, &length);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the contents of an array of strings #GVariant.  This call
	 * makes a deep copy; the return result should be released with
	 * g_strfreev().
	 *
	 * If @length is non-%NULL then the number of elements in the result
	 * is stored there.  In any case, the resulting array will be
	 * %NULL-terminated.
	 *
	 * For an empty array, @length will be set to 0 and a pointer to a
	 * %NULL pointer will be returned.
	 *
	 * Return: an array of strings
	 *
	 * Since: 2.24
	 */
	public string[] dupStrv()
	{
		size_t length;
		
		auto retStr = g_variant_dup_strv(gVariant, &length);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Checks if @one and @two have the same type and value.
	 *
	 * The types of @one and @two are #gconstpointer only to allow use of
	 * this function with #GHashTable.  They must each be a #GVariant.
	 *
	 * Params:
	 *     two = a #GVariant instance
	 *
	 * Return: %TRUE if @one and @two are equal
	 *
	 * Since: 2.24
	 */
	public bool equal(Variant two)
	{
		return g_variant_equal(gVariant, (two is null) ? null : two.getVariantStruct()) != 0;
	}

	/**
	 * Returns the boolean value of @value.
	 *
	 * It is an error to call this function with a @value of any type
	 * other than %G_VARIANT_TYPE_BOOLEAN.
	 *
	 * Return: %TRUE or %FALSE
	 *
	 * Since: 2.24
	 */
	public bool getBoolean()
	{
		return g_variant_get_boolean(gVariant) != 0;
	}

	/**
	 * Returns the byte value of @value.
	 *
	 * It is an error to call this function with a @value of any type
	 * other than %G_VARIANT_TYPE_BYTE.
	 *
	 * Return: a #guchar
	 *
	 * Since: 2.24
	 */
	public char getByte()
	{
		return g_variant_get_byte(gVariant);
	}

	/**
	 * Returns the string value of a #GVariant instance with an
	 * array-of-bytes type.  The string has no particular encoding.
	 *
	 * If the array does not end with a nul terminator character, the empty
	 * string is returned.  For this reason, you can always trust that a
	 * non-%NULL nul-terminated string will be returned by this function.
	 *
	 * If the array contains a nul terminator character somewhere other than
	 * the last byte then the returned string is the string, up to the first
	 * such nul character.
	 *
	 * It is an error to call this function with a @value that is not an
	 * array of bytes.
	 *
	 * The return value remains valid as long as @value exists.
	 *
	 * Return: the constant string
	 *
	 * Since: 2.26
	 */
	public string getBytestring()
	{
		return Str.toString(g_variant_get_bytestring(gVariant));
	}

	/**
	 * Gets the contents of an array of array of bytes #GVariant.  This call
	 * makes a shallow copy; the return result should be released with
	 * g_free(), but the individual strings must not be modified.
	 *
	 * If @length is non-%NULL then the number of elements in the result is
	 * stored there.  In any case, the resulting array will be
	 * %NULL-terminated.
	 *
	 * For an empty array, @length will be set to 0 and a pointer to a
	 * %NULL pointer will be returned.
	 *
	 * Return: an array of constant strings
	 *
	 * Since: 2.26
	 */
	public string[] getBytestringArray()
	{
		size_t length;
		
		return Str.toStringArray(g_variant_get_bytestring_array(gVariant, &length));
	}

	/**
	 * Reads a child item out of a container #GVariant instance.  This
	 * includes variants, maybes, arrays, tuples and dictionary
	 * entries.  It is an error to call this function on any other type of
	 * #GVariant.
	 *
	 * It is an error if @index_ is greater than the number of child items
	 * in the container.  See g_variant_n_children().
	 *
	 * The returned value is never floating.  You should free it with
	 * g_variant_unref() when you're done with it.
	 *
	 * This function is O(1).
	 *
	 * Params:
	 *     index = the index of the child to fetch
	 *
	 * Return: the child at the specified index
	 *
	 * Since: 2.24
	 */
	public Variant getChildValue(size_t index)
	{
		auto p = g_variant_get_child_value(gVariant, index);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Returns a pointer to the serialised form of a #GVariant instance.
	 * The returned data may not be in fully-normalised form if read from an
	 * untrusted source.  The returned data must not be freed; it remains
	 * valid for as long as @value exists.
	 *
	 * If @value is a fixed-sized value that was deserialised from a
	 * corrupted serialised container then %NULL may be returned.  In this
	 * case, the proper thing to do is typically to use the appropriate
	 * number of nul bytes in place of @value.  If @value is not fixed-sized
	 * then %NULL is never returned.
	 *
	 * In the case that @value is already in serialised form, this function
	 * is O(1).  If the value is not already in serialised form,
	 * serialisation occurs implicitly and is approximately O(n) in the size
	 * of the result.
	 *
	 * To deserialise the data returned by this function, in addition to the
	 * serialised data, you must know the type of the #GVariant, and (if the
	 * machine might be different) the endianness of the machine that stored
	 * it. As a result, file formats or network messages that incorporate
	 * serialised #GVariants must include this information either
	 * implicitly (for instance "the file always contains a
	 * %G_VARIANT_TYPE_VARIANT and it is always in little-endian order") or
	 * explicitly (by storing the type and/or endianness in addition to the
	 * serialised data).
	 *
	 * Return: the serialised form of @value, or %NULL
	 *
	 * Since: 2.24
	 */
	public void* getData()
	{
		return g_variant_get_data(gVariant);
	}

	/**
	 * Returns a pointer to the serialised form of a #GVariant instance.
	 * The semantics of this function are exactly the same as
	 * g_variant_get_data(), except that the returned #GBytes holds
	 * a reference to the variant data.
	 *
	 * Return: A new #GBytes representing the variant data
	 *
	 * Since: 2.36
	 */
	public Bytes getDataAsBytes()
	{
		auto p = g_variant_get_data_as_bytes(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Bytes(cast(GBytes*) p, true);
	}

	/**
	 * Returns the double precision floating point value of @value.
	 *
	 * It is an error to call this function with a @value of any type
	 * other than %G_VARIANT_TYPE_DOUBLE.
	 *
	 * Return: a #gdouble
	 *
	 * Since: 2.24
	 */
	public double getDouble()
	{
		return g_variant_get_double(gVariant);
	}

	/**
	 * Provides access to the serialised data for an array of fixed-sized
	 * items.
	 *
	 * @value must be an array with fixed-sized elements.  Numeric types are
	 * fixed-size, as are tuples containing only other fixed-sized types.
	 *
	 * @element_size must be the size of a single element in the array,
	 * as given by the section on
	 * [serialized data memory][gvariant-serialised-data-memory].
	 *
	 * In particular, arrays of these fixed-sized types can be interpreted
	 * as an array of the given C type, with @element_size set to the size
	 * the appropriate type:
	 * - %G_VARIANT_TYPE_INT16 (etc.): #gint16 (etc.)
	 * - %G_VARIANT_TYPE_BOOLEAN: #guchar (not #gboolean!)
	 * - %G_VARIANT_TYPE_BYTE: #guchar
	 * - %G_VARIANT_TYPE_HANDLE: #guint32
	 * - %G_VARIANT_TYPE_DOUBLE: #gdouble
	 *
	 * For example, if calling this function for an array of 32-bit integers,
	 * you might say sizeof(gint32). This value isn't used except for the purpose
	 * of a double-check that the form of the serialised data matches the caller's
	 * expectation.
	 *
	 * @n_elements, which must be non-%NULL is set equal to the number of
	 * items in the array.
	 *
	 * Params:
	 *     elementSize = the size of each element
	 *
	 * Return: a pointer to
	 *     the fixed array
	 *
	 * Since: 2.24
	 */
	public void[] getFixedArray(size_t elementSize)
	{
		size_t nElements;
		
		auto p = g_variant_get_fixed_array(gVariant, &nElements, elementSize);
		
		return p[0 .. nElements];
	}

	/**
	 * Returns the 32-bit signed integer value of @value.
	 *
	 * It is an error to call this function with a @value of any type other
	 * than %G_VARIANT_TYPE_HANDLE.
	 *
	 * By convention, handles are indexes into an array of file descriptors
	 * that are sent alongside a D-Bus message.  If you're not interacting
	 * with D-Bus, you probably don't need them.
	 *
	 * Return: a #gint32
	 *
	 * Since: 2.24
	 */
	public int getHandle()
	{
		return g_variant_get_handle(gVariant);
	}

	/**
	 * Returns the 16-bit signed integer value of @value.
	 *
	 * It is an error to call this function with a @value of any type
	 * other than %G_VARIANT_TYPE_INT16.
	 *
	 * Return: a #gint16
	 *
	 * Since: 2.24
	 */
	public short getInt16()
	{
		return g_variant_get_int16(gVariant);
	}

	/**
	 * Returns the 32-bit signed integer value of @value.
	 *
	 * It is an error to call this function with a @value of any type
	 * other than %G_VARIANT_TYPE_INT32.
	 *
	 * Return: a #gint32
	 *
	 * Since: 2.24
	 */
	public int getInt32()
	{
		return g_variant_get_int32(gVariant);
	}

	/**
	 * Returns the 64-bit signed integer value of @value.
	 *
	 * It is an error to call this function with a @value of any type
	 * other than %G_VARIANT_TYPE_INT64.
	 *
	 * Return: a #gint64
	 *
	 * Since: 2.24
	 */
	public long getInt64()
	{
		return g_variant_get_int64(gVariant);
	}

	/**
	 * Given a maybe-typed #GVariant instance, extract its value.  If the
	 * value is Nothing, then this function returns %NULL.
	 *
	 * Return: the contents of @value, or %NULL
	 *
	 * Since: 2.24
	 */
	public Variant getMaybe()
	{
		auto p = g_variant_get_maybe(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Gets a #GVariant instance that has the same value as @value and is
	 * trusted to be in normal form.
	 *
	 * If @value is already trusted to be in normal form then a new
	 * reference to @value is returned.
	 *
	 * If @value is not already trusted, then it is scanned to check if it
	 * is in normal form.  If it is found to be in normal form then it is
	 * marked as trusted and a new reference to it is returned.
	 *
	 * If @value is found not to be in normal form then a new trusted
	 * #GVariant is created with the same value as @value.
	 *
	 * It makes sense to call this function if you've received #GVariant
	 * data from untrusted sources and you want to ensure your serialised
	 * output is definitely in normal form.
	 *
	 * Return: a trusted #GVariant
	 *
	 * Since: 2.24
	 */
	public Variant getNormalForm()
	{
		auto p = g_variant_get_normal_form(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Gets the contents of an array of object paths #GVariant.  This call
	 * makes a shallow copy; the return result should be released with
	 * g_free(), but the individual strings must not be modified.
	 *
	 * If @length is non-%NULL then the number of elements in the result
	 * is stored there.  In any case, the resulting array will be
	 * %NULL-terminated.
	 *
	 * For an empty array, @length will be set to 0 and a pointer to a
	 * %NULL pointer will be returned.
	 *
	 * Return: an array of constant strings
	 *
	 * Since: 2.30
	 */
	public string[] getObjv()
	{
		size_t length;
		
		return Str.toStringArray(g_variant_get_objv(gVariant, &length));
	}

	/**
	 * Determines the number of bytes that would be required to store @value
	 * with g_variant_store().
	 *
	 * If @value has a fixed-sized type then this function always returned
	 * that fixed size.
	 *
	 * In the case that @value is already in serialised form or the size has
	 * already been calculated (ie: this function has been called before)
	 * then this function is O(1).  Otherwise, the size is calculated, an
	 * operation which is approximately O(n) in the number of values
	 * involved.
	 *
	 * Return: the serialised size of @value
	 *
	 * Since: 2.24
	 */
	public size_t getSize()
	{
		return g_variant_get_size(gVariant);
	}

	/**
	 * Returns the string value of a #GVariant instance with a string
	 * type.  This includes the types %G_VARIANT_TYPE_STRING,
	 * %G_VARIANT_TYPE_OBJECT_PATH and %G_VARIANT_TYPE_SIGNATURE.
	 *
	 * The string will always be UTF-8 encoded, and will never be %NULL.
	 *
	 * If @length is non-%NULL then the length of the string (in bytes) is
	 * returned there.  For trusted values, this information is already
	 * known.  For untrusted values, a strlen() will be performed.
	 *
	 * It is an error to call this function with a @value of any type
	 * other than those three.
	 *
	 * The return value remains valid as long as @value exists.
	 *
	 * Params:
	 *     length = a pointer to a #gsize,
	 *         to store the length
	 *
	 * Return: the constant string, UTF-8 encoded
	 *
	 * Since: 2.24
	 */
	public string getString(out size_t length)
	{
		return Str.toString(g_variant_get_string(gVariant, &length));
	}

	/**
	 * Gets the contents of an array of strings #GVariant.  This call
	 * makes a shallow copy; the return result should be released with
	 * g_free(), but the individual strings must not be modified.
	 *
	 * If @length is non-%NULL then the number of elements in the result
	 * is stored there.  In any case, the resulting array will be
	 * %NULL-terminated.
	 *
	 * For an empty array, @length will be set to 0 and a pointer to a
	 * %NULL pointer will be returned.
	 *
	 * Return: an array of constant strings
	 *
	 * Since: 2.24
	 */
	public string[] getStrv()
	{
		size_t length;
		
		return Str.toStringArray(g_variant_get_strv(gVariant, &length));
	}

	/**
	 * Determines the type of @value.
	 *
	 * The return value is valid for the lifetime of @value and must not
	 * be freed.
	 *
	 * Return: a #GVariantType
	 *
	 * Since: 2.24
	 */
	public VariantType getType()
	{
		auto p = g_variant_get_type(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new VariantType(cast(GVariantType*) p);
	}

	/**
	 * Returns the type string of @value.  Unlike the result of calling
	 * g_variant_type_peek_string(), this string is nul-terminated.  This
	 * string belongs to #GVariant and must not be freed.
	 *
	 * Return: the type string for the type of @value
	 *
	 * Since: 2.24
	 */
	public string getTypeString()
	{
		return Str.toString(g_variant_get_type_string(gVariant));
	}

	/**
	 * Returns the 16-bit unsigned integer value of @value.
	 *
	 * It is an error to call this function with a @value of any type
	 * other than %G_VARIANT_TYPE_UINT16.
	 *
	 * Return: a #guint16
	 *
	 * Since: 2.24
	 */
	public ushort getUint16()
	{
		return g_variant_get_uint16(gVariant);
	}

	/**
	 * Returns the 32-bit unsigned integer value of @value.
	 *
	 * It is an error to call this function with a @value of any type
	 * other than %G_VARIANT_TYPE_UINT32.
	 *
	 * Return: a #guint32
	 *
	 * Since: 2.24
	 */
	public uint getUint32()
	{
		return g_variant_get_uint32(gVariant);
	}

	/**
	 * Returns the 64-bit unsigned integer value of @value.
	 *
	 * It is an error to call this function with a @value of any type
	 * other than %G_VARIANT_TYPE_UINT64.
	 *
	 * Return: a #guint64
	 *
	 * Since: 2.24
	 */
	public ulong getUint64()
	{
		return g_variant_get_uint64(gVariant);
	}

	/**
	 * This function is intended to be used by libraries based on #GVariant
	 * that want to provide g_variant_get()-like functionality to their
	 * users.
	 *
	 * The API is more general than g_variant_get() to allow a wider range
	 * of possible uses.
	 *
	 * @format_string must still point to a valid format string, but it only
	 * need to be nul-terminated if @endptr is %NULL.  If @endptr is
	 * non-%NULL then it is updated to point to the first character past the
	 * end of the format string.
	 *
	 * @app is a pointer to a #va_list.  The arguments, according to
	 * @format_string, are collected from this #va_list and the list is left
	 * pointing to the argument following the last.
	 *
	 * These two generalisations allow mixing of multiple calls to
	 * g_variant_new_va() and g_variant_get_va() within a single actual
	 * varargs call by the user.
	 *
	 * @format_string determines the C types that are used for unpacking
	 * the values and also determines if the values are copied or borrowed,
	 * see the section on
	 * [GVariant format strings][gvariant-format-strings-pointers].
	 *
	 * Params:
	 *     formatString = a string that is prefixed with a format string
	 *     endptr = location to store the end pointer,
	 *         or %NULL
	 *     app = a pointer to a #va_list
	 *
	 * Since: 2.24
	 */
	public void getVa(string formatString, string[] endptr, void** app)
	{
		g_variant_get_va(gVariant, Str.toStringz(formatString), Str.toStringzArray(endptr), app);
	}

	/**
	 * Unboxes @value.  The result is the #GVariant instance that was
	 * contained in @value.
	 *
	 * Return: the item contained in the variant
	 *
	 * Since: 2.24
	 */
	public Variant getVariant()
	{
		auto p = g_variant_get_variant(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Generates a hash value for a #GVariant instance.
	 *
	 * The output of this function is guaranteed to be the same for a given
	 * value only per-process.  It may change between different processor
	 * architectures or even different versions of GLib.  Do not use this
	 * function as a basis for building protocols or file formats.
	 *
	 * The type of @value is #gconstpointer only to allow use of this
	 * function with #GHashTable.  @value must be a #GVariant.
	 *
	 * Return: a hash value corresponding to @value
	 *
	 * Since: 2.24
	 */
	public uint hash()
	{
		return g_variant_hash(gVariant);
	}

	/**
	 * Checks if @value is a container.
	 *
	 * Return: %TRUE if @value is a container
	 *
	 * Since: 2.24
	 */
	public bool isContainer()
	{
		return g_variant_is_container(gVariant) != 0;
	}

	/**
	 * Checks whether @value has a floating reference count.
	 *
	 * This function should only ever be used to assert that a given variant
	 * is or is not floating, or for debug purposes. To acquire a reference
	 * to a variant that might be floating, always use g_variant_ref_sink()
	 * or g_variant_take_ref().
	 *
	 * See g_variant_ref_sink() for more information about floating reference
	 * counts.
	 *
	 * Return: whether @value is floating
	 *
	 * Since: 2.26
	 */
	public bool isFloating()
	{
		return g_variant_is_floating(gVariant) != 0;
	}

	/**
	 * Checks if @value is in normal form.
	 *
	 * The main reason to do this is to detect if a given chunk of
	 * serialised data is in normal form: load the data into a #GVariant
	 * using g_variant_new_from_data() and then use this function to
	 * check.
	 *
	 * If @value is found to be in normal form then it will be marked as
	 * being trusted.  If the value was already marked as being trusted then
	 * this function will immediately return %TRUE.
	 *
	 * Return: %TRUE if @value is in normal form
	 *
	 * Since: 2.24
	 */
	public bool isNormalForm()
	{
		return g_variant_is_normal_form(gVariant) != 0;
	}

	/**
	 * Checks if a value has a type matching the provided type.
	 *
	 * Params:
	 *     type = a #GVariantType
	 *
	 * Return: %TRUE if the type of @value matches @type
	 *
	 * Since: 2.24
	 */
	public bool isOfType(VariantType type)
	{
		return g_variant_is_of_type(gVariant, (type is null) ? null : type.getVariantTypeStruct()) != 0;
	}

	/**
	 * Creates a heap-allocated #GVariantIter for iterating over the items
	 * in @value.
	 *
	 * Use g_variant_iter_free() to free the return value when you no longer
	 * need it.
	 *
	 * A reference is taken to @value and will be released only when
	 * g_variant_iter_free() is called.
	 *
	 * Return: a new heap-allocated #GVariantIter
	 *
	 * Since: 2.24
	 */
	public VariantIter iterNew()
	{
		auto p = g_variant_iter_new(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new VariantIter(cast(GVariantIter*) p, true);
	}

	/**
	 * Looks up a value in a dictionary #GVariant.
	 *
	 * This function works with dictionaries of the type a{s*} (and equally
	 * well with type a{o*}, but we only further discuss the string case
	 * for sake of clarity).
	 *
	 * In the event that @dictionary has the type a{sv}, the @expected_type
	 * string specifies what type of value is expected to be inside of the
	 * variant. If the value inside the variant has a different type then
	 * %NULL is returned. In the event that @dictionary has a value type other
	 * than v then @expected_type must directly match the key type and it is
	 * used to unpack the value directly or an error occurs.
	 *
	 * In either case, if @key is not found in @dictionary, %NULL is returned.
	 *
	 * If the key is found and the value has the correct type, it is
	 * returned.  If @expected_type was specified then any non-%NULL return
	 * value will have this type.
	 *
	 * This function is currently implemented with a linear scan.  If you
	 * plan to do many lookups then #GVariantDict may be more efficient.
	 *
	 * Params:
	 *     key = the key to lookup in the dictionary
	 *     expectedType = a #GVariantType, or %NULL
	 *
	 * Return: the value of the dictionary key, or %NULL
	 *
	 * Since: 2.28
	 */
	public Variant lookupValue(string key, VariantType expectedType)
	{
		auto p = g_variant_lookup_value(gVariant, Str.toStringz(key), (expectedType is null) ? null : expectedType.getVariantTypeStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Determines the number of children in a container #GVariant instance.
	 * This includes variants, maybes, arrays, tuples and dictionary
	 * entries.  It is an error to call this function on any other type of
	 * #GVariant.
	 *
	 * For variants, the return value is always 1.  For values with maybe
	 * types, it is always zero or one.  For arrays, it is the length of the
	 * array.  For tuples it is the number of tuple items (which depends
	 * only on the type).  For dictionary entries, it is always 2
	 *
	 * This function is O(1).
	 *
	 * Return: the number of children in the container
	 *
	 * Since: 2.24
	 */
	public size_t nChildren()
	{
		return g_variant_n_children(gVariant);
	}

	/**
	 * Pretty-prints @value in the format understood by g_variant_parse().
	 *
	 * The format is described [here][gvariant-text].
	 *
	 * If @type_annotate is %TRUE, then type information is included in
	 * the output.
	 *
	 * Params:
	 *     typeAnnotate = %TRUE if type information should be included in
	 *         the output
	 *
	 * Return: a newly-allocated string holding the result.
	 *
	 * Since: 2.24
	 */
	public string print(bool typeAnnotate)
	{
		auto retStr = g_variant_print(gVariant, typeAnnotate);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Behaves as g_variant_print(), but operates on a #GString.
	 *
	 * If @string is non-%NULL then it is appended to and returned.  Else,
	 * a new empty #GString is allocated and it is returned.
	 *
	 * Params:
	 *     str = a #GString, or %NULL
	 *     typeAnnotate = %TRUE if type information should be included in
	 *         the output
	 *
	 * Return: a #GString containing the string
	 *
	 * Since: 2.24
	 */
	public StringG printString(StringG str, bool typeAnnotate)
	{
		auto p = g_variant_print_string(gVariant, (str is null) ? null : str.getStringGStruct(), typeAnnotate);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p, true);
	}

	/**
	 * Increases the reference count of @value.
	 *
	 * Return: the same @value
	 *
	 * Since: 2.24
	 */
	public Variant doref()
	{
		auto p = g_variant_ref(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * #GVariant uses a floating reference count system.  All functions with
	 * names starting with `g_variant_new_` return floating
	 * references.
	 *
	 * Calling g_variant_ref_sink() on a #GVariant with a floating reference
	 * will convert the floating reference into a full reference.  Calling
	 * g_variant_ref_sink() on a non-floating #GVariant results in an
	 * additional normal reference being added.
	 *
	 * In other words, if the @value is floating, then this call "assumes
	 * ownership" of the floating reference, converting it to a normal
	 * reference.  If the @value is not floating, then this call adds a
	 * new normal reference increasing the reference count by one.
	 *
	 * All calls that result in a #GVariant instance being inserted into a
	 * container will call g_variant_ref_sink() on the instance.  This means
	 * that if the value was just created (and has only its floating
	 * reference) then the container will assume sole ownership of the value
	 * at that point and the caller will not need to unreference it.  This
	 * makes certain common styles of programming much easier while still
	 * maintaining normal refcounting semantics in situations where values
	 * are not floating.
	 *
	 * Return: the same @value
	 *
	 * Since: 2.24
	 */
	public Variant refSink()
	{
		auto p = g_variant_ref_sink(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Stores the serialised form of @value at @data.  @data should be
	 * large enough.  See g_variant_get_size().
	 *
	 * The stored data is in machine native byte order but may not be in
	 * fully-normalised form if read from an untrusted source.  See
	 * g_variant_get_normal_form() for a solution.
	 *
	 * As with g_variant_get_data(), to be able to deserialise the
	 * serialised variant successfully, its type and (if the destination
	 * machine might be different) its endianness must also be available.
	 *
	 * This function is approximately O(n) in the size of @data.
	 *
	 * Params:
	 *     data = the location to store the serialised data at
	 *
	 * Since: 2.24
	 */
	public void store(void* data)
	{
		g_variant_store(gVariant, data);
	}

	/**
	 * If @value is floating, sink it.  Otherwise, do nothing.
	 *
	 * Typically you want to use g_variant_ref_sink() in order to
	 * automatically do the correct thing with respect to floating or
	 * non-floating references, but there is one specific scenario where
	 * this function is helpful.
	 *
	 * The situation where this function is helpful is when creating an API
	 * that allows the user to provide a callback function that returns a
	 * #GVariant.  We certainly want to allow the user the flexibility to
	 * return a non-floating reference from this callback (for the case
	 * where the value that is being returned already exists).
	 *
	 * At the same time, the style of the #GVariant API makes it likely that
	 * for newly-created #GVariant instances, the user can be saved some
	 * typing if they are allowed to return a #GVariant with a floating
	 * reference.
	 *
	 * Using this function on the return value of the user's callback allows
	 * the user to do whichever is more convenient for them.  The caller
	 * will alway receives exactly one full reference to the value: either
	 * the one that was returned in the first place, or a floating reference
	 * that has been converted to a full reference.
	 *
	 * This function has an odd interaction when combined with
	 * g_variant_ref_sink() running at the same time in another thread on
	 * the same #GVariant instance.  If g_variant_ref_sink() runs first then
	 * the result will be that the floating reference is converted to a hard
	 * reference.  If g_variant_take_ref() runs first then the result will
	 * be that the floating reference is converted to a hard reference and
	 * an additional reference on top of that one is added.  It is best to
	 * avoid this situation.
	 *
	 * Return: the same @value
	 */
	public Variant takeRef()
	{
		auto p = g_variant_take_ref(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Decreases the reference count of @value.  When its reference count
	 * drops to 0, the memory used by the variant is freed.
	 *
	 * Since: 2.24
	 */
	public void unref()
	{
		g_variant_unref(gVariant);
	}

	/**
	 * Determines if a given string is a valid D-Bus object path.  You
	 * should ensure that a string is a valid D-Bus object path before
	 * passing it to g_variant_new_object_path().
	 *
	 * A valid object path starts with '/' followed by zero or more
	 * sequences of characters separated by '/' characters.  Each sequence
	 * must contain only the characters "[A-Z][a-z][0-9]_".  No sequence
	 * (including the one following the final '/' character) may be empty.
	 *
	 * Params:
	 *     str = a normal C nul-terminated string
	 *
	 * Return: %TRUE if @string is a D-Bus object path
	 *
	 * Since: 2.24
	 */
	public static bool isObjectPath(string str)
	{
		return g_variant_is_object_path(Str.toStringz(str)) != 0;
	}

	/**
	 * Determines if a given string is a valid D-Bus type signature.  You
	 * should ensure that a string is a valid D-Bus type signature before
	 * passing it to g_variant_new_signature().
	 *
	 * D-Bus type signatures consist of zero or more definite #GVariantType
	 * strings in sequence.
	 *
	 * Params:
	 *     str = a normal C nul-terminated string
	 *
	 * Return: %TRUE if @string is a D-Bus type signature
	 *
	 * Since: 2.24
	 */
	public static bool isSignature(string str)
	{
		return g_variant_is_signature(Str.toStringz(str)) != 0;
	}

	/**
	 * Parses a #GVariant from a text representation.
	 *
	 * A single #GVariant is parsed from the content of @text.
	 *
	 * The format is described [here][gvariant-text].
	 *
	 * The memory at @limit will never be accessed and the parser behaves as
	 * if the character at @limit is the nul terminator.  This has the
	 * effect of bounding @text.
	 *
	 * If @endptr is non-%NULL then @text is permitted to contain data
	 * following the value that this function parses and @endptr will be
	 * updated to point to the first character past the end of the text
	 * parsed by this function.  If @endptr is %NULL and there is extra data
	 * then an error is returned.
	 *
	 * If @type is non-%NULL then the value will be parsed to have that
	 * type.  This may result in additional parse errors (in the case that
	 * the parsed value doesn't fit the type) but may also result in fewer
	 * errors (in the case that the type would have been ambiguous, such as
	 * with empty arrays).
	 *
	 * In the event that the parsing is successful, the resulting #GVariant
	 * is returned. It is never floating, and must be freed with
	 * g_variant_unref().
	 *
	 * In case of any error, %NULL will be returned.  If @error is non-%NULL
	 * then it will be set to reflect the error that occurred.
	 *
	 * Officially, the language understood by the parser is "any string
	 * produced by g_variant_print()".
	 *
	 * Params:
	 *     type = a #GVariantType, or %NULL
	 *     text = a string containing a GVariant in text form
	 *     limit = a pointer to the end of @text, or %NULL
	 *     endptr = a location to store the end pointer, or %NULL
	 *
	 * Return: a non-floating reference to a #GVariant, or %NULL
	 *
	 * Throws: GException on failure.
	 */
	public static Variant parse(VariantType type, string text, string limit, string[] endptr)
	{
		GError* err = null;
		
		auto p = g_variant_parse((type is null) ? null : type.getVariantTypeStruct(), Str.toStringz(text), Str.toStringz(limit), Str.toStringzArray(endptr), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Pretty-prints a message showing the context of a #GVariant parse
	 * error within the string for which parsing was attempted.
	 *
	 * The resulting string is suitable for output to the console or other
	 * monospace media where newlines are treated in the usual way.
	 *
	 * The message will typically look something like one of the following:
	 *
	 * |[
	 * unterminated string constant:
	 * (1, 2, 3, 'abc
	 * ^^^^
	 * ]|
	 *
	 * or
	 *
	 * |[
	 * unable to find a common type:
	 * [1, 2, 3, 'str']
	 * ^        ^^^^^
	 * ]|
	 *
	 * The format of the message may change in a future version.
	 *
	 * @error must have come from a failed attempt to g_variant_parse() and
	 * @source_str must be exactly the same string that caused the error.
	 * If @source_str was not nul-terminated when you passed it to
	 * g_variant_parse() then you must add nul termination before using this
	 * function.
	 *
	 * Params:
	 *     error = a #GError from the #GVariantParseError domain
	 *     sourceStr = the string that was given to the parser
	 *
	 * Return: the printed message
	 *
	 * Since: 2.40
	 */
	public static string parseErrorPrintContext(ErrorG error, string sourceStr)
	{
		auto retStr = g_variant_parse_error_print_context((error is null) ? null : error.getErrorGStruct(), Str.toStringz(sourceStr));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public static GQuark parseErrorQuark()
	{
		return g_variant_parse_error_quark();
	}

	/**
	 * Same as g_variant_error_quark().
	 *
	 * Deprecated: Use g_variant_parse_error_quark() instead.
	 */
	public static GQuark parserGetErrorQuark()
	{
		return g_variant_parser_get_error_quark();
	}
}
