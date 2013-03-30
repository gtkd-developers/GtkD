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
 * inFile  = glib-GVariant.html
 * outPack = glib
 * outFile = Variant
 * strct   = GVariant
 * realStrct=
 * ctorStrct=
 * clss    = Variant
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_variant_
 * omit structs:
 * omit prefixes:
 * 	- g_variant_iter_
 * 	- g_variant_builder_
 * omit code:
 * 	- g_variant_new_boolean
 * 	- g_variant_new_bytestring_array
 * 	- g_variant_new_object_path
 * 	- g_variant_new_signature
 * 	- g_variant_new_objv
 * 	- g_variant_new_bytestring
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Bytes
 * 	- glib.StringG
 * 	- glib.VariantType
 * structWrap:
 * 	- GBytes* -> Bytes
 * 	- GString* -> StringG
 * 	- GVariant* -> Variant
 * 	- GVariantType* -> VariantType
 * module aliases:
 * local aliases:
 * 	- byte -> b
 * overrides:
 */

module glib.Variant;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.Bytes;
private import glib.StringG;
private import glib.VariantType;




/**
 * GVariant is a variant datatype; it stores a value along with
 * information about the type of that value. The range of possible
 * values is determined by the type. The type system used by GVariant
 * is GVariantType.
 *
 * GVariant instances always have a type and a value (which are given
 * at construction time). The type and value of a GVariant instance
 * can never change other than by the GVariant itself being
 * destroyed. A GVariant cannot contain a pointer.
 *
 * GVariant is reference counted using g_variant_ref() and
 * g_variant_unref(). GVariant also has floating reference counts --
 * see g_variant_ref_sink().
 *
 * GVariant is completely threadsafe. A GVariant instance can be
 * concurrently accessed in any way from any number of threads without
 * problems.
 *
 * GVariant is heavily optimised for dealing with data in serialised
 * form. It works particularly well with data located in memory-mapped
 * files. It can perform nearly all deserialisation operations in a
 * small constant time, usually touching only a single memory page.
 * Serialised GVariant data can also be sent over the network.
 *
 * GVariant is largely compatible with D-Bus. Almost all types of
 * GVariant instances can be sent over D-Bus. See GVariantType for
 * exceptions. (However, GVariant's serialisation format is not the same
 * as the serialisation format of a D-Bus message body: use GDBusMessage,
 * in the gio library, for those.)
 *
 * For space-efficiency, the GVariant serialisation format does not
 * automatically include the variant's type or endianness, which must
 * either be implied from context (such as knowledge that a particular
 * file format always contains a little-endian G_VARIANT_TYPE_VARIANT)
 * or supplied out-of-band (for instance, a type and/or endianness
 * indicator could be placed at the beginning of a file, network message
 * or network stream).
 *
 * A GVariant's size is limited mainly by any lower level operating
 * system constraints, such as the number of bits in gsize. For
 * example, it is reasonable to have a 2GB file mapped into memory
 * with GMappedFile, and call g_variant_new_from_data() on it.
 *
 * For convenience to C programmers, GVariant features powerful
 * varargs-based value construction and destruction. This feature is
 * designed to be embedded in other libraries.
 *
 * There is a Python-inspired text language for describing GVariant
 * values. GVariant includes a printer for this language and a parser
 * with type inferencing.
 *
 * Memory Use
 *
 *  GVariant tries to be quite efficient with respect to memory use.
 *  This section gives a rough idea of how much memory is used by the
 *  current implementation. The information here is subject to change
 *  in the future.
 *
 *  The memory allocated by GVariant can be grouped into 4 broad
 *  purposes: memory for serialised data, memory for the type
 *  information cache, buffer management memory and memory for the
 *  GVariant structure itself.
 *
 * Serialised Data Memory
 *
 *  This is the memory that is used for storing GVariant data in
 *  serialised form. This is what would be sent over the network or
 *  what would end up on disk.
 *
 *  The amount of memory required to store a boolean is 1 byte. 16,
 *  32 and 64 bit integers and double precision floating point numbers
 *  use their "natural" size. Strings (including object path and
 *  signature strings) are stored with a nul terminator, and as such
 *  use the length of the string plus 1 byte.
 *
 *  Maybe types use no space at all to represent the null value and
 *  use the same amount of space (sometimes plus one byte) as the
 *  equivalent non-maybe-typed value to represent the non-null case.
 *
 *  Arrays use the amount of space required to store each of their
 *  members, concatenated. Additionally, if the items stored in an
 *  array are not of a fixed-size (ie: strings, other arrays, etc)
 *  then an additional framing offset is stored for each item. The
 *  size of this offset is either 1, 2 or 4 bytes depending on the
 *  overall size of the container. Additionally, extra padding bytes
 *  are added as required for alignment of child values.
 *
 *  Tuples (including dictionary entries) use the amount of space
 *  required to store each of their members, concatenated, plus one
 *  framing offset (as per arrays) for each non-fixed-sized item in
 *  the tuple, except for the last one. Additionally, extra padding
 *  bytes are added as required for alignment of child values.
 *
 *  Variants use the same amount of space as the item inside of the
 *  variant, plus 1 byte, plus the length of the type string for the
 *  item inside the variant.
 *
 *  As an example, consider a dictionary mapping strings to variants.
 *  In the case that the dictionary is empty, 0 bytes are required for
 *  the serialisation.
 *
 *  If we add an item "width" that maps to the int32 value of 500 then
 *  we will use 4 byte to store the int32 (so 6 for the variant
 *  containing it) and 6 bytes for the string. The variant must be
 *  aligned to 8 after the 6 bytes of the string, so that's 2 extra
 *  bytes. 6 (string) + 2 (padding) + 6 (variant) is 14 bytes used
 *  for the dictionary entry. An additional 1 byte is added to the
 *  array as a framing offset making a total of 15 bytes.
 *
 *  If we add another entry, "title" that maps to a nullable string
 *  that happens to have a value of null, then we use 0 bytes for the
 *  null value (and 3 bytes for the variant to contain it along with
 *  its type string) plus 6 bytes for the string. Again, we need 2
 *  padding bytes. That makes a total of 6 + 2 + 3 = 11 bytes.
 *
 *  We now require extra padding between the two items in the array.
 *  After the 14 bytes of the first item, that's 2 bytes required. We
 *  now require 2 framing offsets for an extra two bytes. 14 + 2 + 11
 *  + 2 = 29 bytes to encode the entire two-item dictionary.
 *
 * Type Information Cache
 *
 *  For each GVariant type that currently exists in the program a type
 *  information structure is kept in the type information cache. The
 *  type information structure is required for rapid deserialisation.
 *
 *  Continuing with the above example, if a GVariant exists with the
 *  type "a{sv}" then a type information struct will exist for
 *  "a{sv}", "{sv}", "s", and "v". Multiple uses of the same type
 *  will share the same type information. Additionally, all
 *  single-digit types are stored in read-only static memory and do
 *  not contribute to the writable memory footprint of a program using
 *  GVariant.
 *
 *  Aside from the type information structures stored in read-only
 *  memory, there are two forms of type information. One is used for
 *  container types where there is a single element type: arrays and
 *  maybe types. The other is used for container types where there
 *  are multiple element types: tuples and dictionary entries.
 *
 *  Array type info structures are 6 * sizeof (void *), plus the
 *  memory required to store the type string itself. This means that
 *  on 32bit systems, the cache entry for "a{sv}" would require 30
 *  bytes of memory (plus malloc overhead).
 *
 *  Tuple type info structures are 6 * sizeof (void *), plus 4 *
 *  sizeof (void *) for each item in the tuple, plus the memory
 *  required to store the type string itself. A 2-item tuple, for
 *  example, would have a type information structure that consumed
 *  writable memory in the size of 14 * sizeof (void *) (plus type
 *  string) This means that on 32bit systems, the cache entry for
 *  "{sv}" would require 61 bytes of memory (plus malloc overhead).
 *
 *  This means that in total, for our "a{sv}" example, 91 bytes of
 *  type information would be allocated.
 *
 *  The type information cache, additionally, uses a GHashTable to
 *  store and lookup the cached items and stores a pointer to this
 *  hash table in static storage. The hash table is freed when there
 *  are zero items in the type cache.
 *
 *  Although these sizes may seem large it is important to remember
 *  that a program will probably only have a very small number of
 *  different types of values in it and that only one type information
 *  structure is required for many different values of the same type.
 *
 * Buffer Management Memory
 *
 *  GVariant uses an internal buffer management structure to deal
 *  with the various different possible sources of serialised data
 *  that it uses. The buffer is responsible for ensuring that the
 *  correct call is made when the data is no longer in use by
 *  GVariant. This may involve a g_free() or a g_slice_free() or
 *  even g_mapped_file_unref().
 *
 *  One buffer management structure is used for each chunk of
 *  serialised data. The size of the buffer management structure is 4
 *  * (void *). On 32bit systems, that's 16 bytes.
 *
 * GVariant structure
 *
 *  The size of a GVariant structure is 6 * (void *). On 32 bit
 *  systems, that's 24 bytes.
 *
 *  GVariant structures only exist if they are explicitly created
 *  with API calls. For example, if a GVariant is constructed out of
 *  serialised data for the example given above (with the dictionary)
 *  then although there are 9 individual values that comprise the
 *  entire dictionary (two keys, two values, two variants containing
 *  the values, two dictionary entries, plus the dictionary itself),
 *  only 1 GVariant instance exists -- the one referring to the
 *  dictionary.
 *
 *  If calls are made to start accessing the other values then
 *  GVariant instances will exist for those values only for as long
 *  as they are in use (ie: until you call g_variant_unref()). The
 *  type information is shared. The serialised data and the buffer
 *  management structure for that serialised data is shared by the
 *  child.
 *
 * Summary
 *
 *  To put the entire example together, for our dictionary mapping
 *  strings to variants (with two entries, as given above), we are
 *  using 91 bytes of memory for type information, 29 byes of memory
 *  for the serialised data, 16 bytes for buffer management and 24
 *  bytes for the GVariant instance, or a total of 160 bytes, plus
 *  malloc overhead. If we were to use g_variant_get_child_value() to
 *  access the two dictionary entries, we would use an additional 48
 *  bytes. If we were to have other dictionaries of the same type, we
 *  would use more memory for the serialised data and buffer
 *  management for those dictionaries, but the type information would
 *  be shared.
 */
public class Variant
{
	
	/** the main Gtk struct */
	protected GVariant* gVariant;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GVariant* gVariant)
	{
		this.gVariant = gVariant;
	}
	
	/**
	 * Creates a new boolean GVariant instance -- either TRUE or FALSE.
	 * Since 2.24
	 * Params:
	 * boolean = a gboolean value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (bool boolean)
	{
		// GVariant * g_variant_new_boolean (gboolean boolean);
		auto p = g_variant_new_boolean(boolean);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_boolean(boolean)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a DBus object path GVariant with the contents of string.
	 * string must be a valid DBus object path.
	 * Use Variant.isObjectPath() if you're not sure.
	 * Since 2.24
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
	 * Since 2.24
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
	 * strings. If length is -1 then strv is NULL-terminated.
	 * Since 2.26
	 *
	 * Params:
	 *     strv   = an array of strings.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Variant fromByteStringArray(string[] strv)
	{
		// GVariant * g_variant_new_bytestring_array (const gchar * const *strv,  gssize length);
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
	 * Decreases the reference count of value. When its reference count
	 * drops to 0, the memory used by the variant is freed.
	 * Since 2.24
	 */
	public void unref()
	{
		// void g_variant_unref (GVariant *value);
		g_variant_unref(gVariant);
	}
	
	/**
	 * Increases the reference count of value.
	 * Since 2.24
	 * Returns: the same value
	 */
	public Variant doref()
	{
		// GVariant * g_variant_ref (GVariant *value);
		auto p = g_variant_ref(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * GVariant uses a floating reference count system. All functions with
	 * names starting with g_variant_new_ return floating
	 * references.
	 * Calling g_variant_ref_sink() on a GVariant with a floating reference
	 * will convert the floating reference into a full reference. Calling
	 * g_variant_ref_sink() on a non-floating GVariant results in an
	 * additional normal reference being added.
	 * In other words, if the value is floating, then this call "assumes
	 * ownership" of the floating reference, converting it to a normal
	 * reference. If the value is not floating, then this call adds a
	 * new normal reference increasing the reference count by one.
	 * All calls that result in a GVariant instance being inserted into a
	 * container will call g_variant_ref_sink() on the instance. This means
	 * that if the value was just created (and has only its floating
	 * reference) then the container will assume sole ownership of the value
	 * at that point and the caller will not need to unreference it. This
	 * makes certain common styles of programming much easier while still
	 * maintaining normal refcounting semantics in situations where values
	 * are not floating.
	 * Since 2.24
	 * Returns: the same value
	 */
	public Variant refSink()
	{
		// GVariant * g_variant_ref_sink (GVariant *value);
		auto p = g_variant_ref_sink(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Checks whether value has a floating reference count.
	 * This function should only ever be used to assert that a given variant
	 * is or is not floating, or for debug purposes. To acquire a reference
	 * to a variant that might be floating, always use g_variant_ref_sink()
	 * or g_variant_take_ref().
	 * See g_variant_ref_sink() for more information about floating reference
	 * counts.
	 * Since 2.26
	 * Returns: whether value is floating
	 */
	public int isFloating()
	{
		// gboolean g_variant_is_floating (GVariant *value);
		return g_variant_is_floating(gVariant);
	}
	
	/**
	 * If value is floating, sink it. Otherwise, do nothing.
	 * Typically you want to use g_variant_ref_sink() in order to
	 * automatically do the correct thing with respect to floating or
	 * non-floating references, but there is one specific scenario where
	 * this function is helpful.
	 * The situation where this function is helpful is when creating an API
	 * that allows the user to provide a callback function that returns a
	 * GVariant. We certainly want to allow the user the flexibility to
	 * return a non-floating reference from this callback (for the case
	 * where the value that is being returned already exists).
	 * At the same time, the style of the GVariant API makes it likely that
	 * for newly-created GVariant instances, the user can be saved some
	 * typing if they are allowed to return a GVariant with a floating
	 * reference.
	 * Using this function on the return value of the user's callback allows
	 * the user to do whichever is more convenient for them. The caller
	 * will alway receives exactly one full reference to the value: either
	 * the one that was returned in the first place, or a floating reference
	 * that has been converted to a full reference.
	 * This function has an odd interaction when combined with
	 * g_variant_ref_sink() running at the same time in another thread on
	 * the same GVariant instance. If g_variant_ref_sink() runs first then
	 * the result will be that the floating reference is converted to a hard
	 * reference. If g_variant_take_ref() runs first then the result will
	 * be that the floating reference is converted to a hard reference and
	 * an additional reference on top of that one is added. It is best to
	 * avoid this situation.
	 * Returns: the same value
	 */
	public Variant takeRef()
	{
		// GVariant * g_variant_take_ref (GVariant *value);
		auto p = g_variant_take_ref(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Determines the type of value.
	 * The return value is valid for the lifetime of value and must not
	 * be freed.
	 * Since 2.24
	 * Returns: a GVariantType
	 */
	public VariantType getType()
	{
		// const GVariantType * g_variant_get_type (GVariant *value);
		auto p = g_variant_get_type(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new VariantType(cast(GVariantType*) p);
	}
	
	/**
	 * Returns the type string of value. Unlike the result of calling
	 * g_variant_type_peek_string(), this string is nul-terminated. This
	 * string belongs to GVariant and must not be freed.
	 * Since 2.24
	 * Returns: the type string for the type of value
	 */
	public string getTypeString()
	{
		// const gchar * g_variant_get_type_string (GVariant *value);
		return Str.toString(g_variant_get_type_string(gVariant));
	}
	
	/**
	 * Checks if a value has a type matching the provided type.
	 * Since 2.24
	 * Params:
	 * type = a GVariantType
	 * Returns: TRUE if the type of value matches type
	 */
	public int isOfType(VariantType type)
	{
		// gboolean g_variant_is_of_type (GVariant *value,  const GVariantType *type);
		return g_variant_is_of_type(gVariant, (type is null) ? null : type.getVariantTypeStruct());
	}
	
	/**
	 * Checks if value is a container.
	 * Since 2.24
	 * Returns: TRUE if value is a container
	 */
	public int isContainer()
	{
		// gboolean g_variant_is_container (GVariant *value);
		return g_variant_is_container(gVariant);
	}
	
	/**
	 * Compares one and two.
	 * The types of one and two are gconstpointer only to allow use of
	 * this function with GTree, GPtrArray, etc. They must each be a
	 * GVariant.
	 * Comparison is only defined for basic types (ie: booleans, numbers,
	 * strings). For booleans, FALSE is less than TRUE. Numbers are
	 * ordered in the usual way. Strings are in ASCII lexographical order.
	 * It is a programmer error to attempt to compare container values or
	 * two values that have types that are not exactly equal. For example,
	 * you cannot compare a 32-bit signed integer with a 32-bit unsigned
	 * integer. Also note that this function is not particularly
	 * well-behaved when it comes to comparison of doubles; in particular,
	 * the handling of incomparable values (ie: NaN) is undefined.
	 * If you only require an equality comparison, g_variant_equal() is more
	 * general.
	 * Since 2.26
	 * Params:
	 * one = a basic-typed GVariant instance. [type GVariant]
	 * two = a GVariant instance of the same type. [type GVariant]
	 * Returns: negative value if a < b; zero if a = b; positive value if a > b.
	 */
	public static int compare(void* one, void* two)
	{
		// gint g_variant_compare (gconstpointer one,  gconstpointer two);
		return g_variant_compare(one, two);
	}
	
	/**
	 * Classifies value according to its top-level type.
	 * Since 2.24
	 * Returns: the GVariantClass of value
	 */
	public GVariantClass classify()
	{
		// GVariantClass g_variant_classify (GVariant *value);
		return g_variant_classify(gVariant);
	}
	
	/**
	 * Checks if calling g_variant_get() with format_string on value would
	 * be valid from a type-compatibility standpoint. format_string is
	 * assumed to be a valid format string (from a syntactic standpoint).
	 * If copy_only is TRUE then this function additionally checks that it
	 * would be safe to call g_variant_unref() on value immediately after
	 * the call to g_variant_get() without invalidating the result. This is
	 * only possible if deep copies are made (ie: there are no pointers to
	 * the data inside of the soon-to-be-freed GVariant instance). If this
	 * check fails then a g_critical() is printed and FALSE is returned.
	 * This function is meant to be used by functions that wish to provide
	 * Since 2.34
	 * Params:
	 * formatString = a valid GVariant format string
	 * copyOnly = TRUE to ensure the format string makes deep copies
	 * Returns: TRUE if format_string is safe to use
	 */
	public int checkFormatString(string formatString, int copyOnly)
	{
		// gboolean g_variant_check_format_string (GVariant *value,  const gchar *format_string,  gboolean copy_only);
		return g_variant_check_format_string(gVariant, Str.toStringz(formatString), copyOnly);
	}
	
	/**
	 * This function is intended to be used by libraries based on GVariant
	 * that want to provide g_variant_get()-like functionality to their
	 * users.
	 * The API is more general than g_variant_get() to allow a wider range
	 * of possible uses.
	 * format_string must still point to a valid format string, but it only
	 * need to be nul-terminated if endptr is NULL. If endptr is
	 * non-NULL then it is updated to point to the first character past the
	 * end of the format string.
	 * app is a pointer to a va_list. The arguments, according to
	 * format_string, are collected from this va_list and the list is left
	 * pointing to the argument following the last.
	 * These two generalisations allow mixing of multiple calls to
	 * g_variant_new_va() and g_variant_get_va() within a single actual
	 * varargs call by the user.
	 * format_string determines the C types that are used for unpacking
	 * the values and also determines if the values are copied or borrowed,
	 * see the section on
	 * GVariant Format Strings.
	 * Since 2.24
	 * Params:
	 * formatString = a string that is prefixed with a format string
	 * endptr = location to store the end pointer,
	 * or NULL. [allow-none][default NULL]
	 * app = a pointer to a va_list
	 */
	public void getVa(string formatString, out string endptr, void** app)
	{
		// void g_variant_get_va (GVariant *value,  const gchar *format_string,  const gchar **endptr,  va_list *app);
		char* outendptr = null;
		
		g_variant_get_va(gVariant, Str.toStringz(formatString), &outendptr, app);
		
		endptr = Str.toString(outendptr);
	}
	
	/**
	 * This function is intended to be used by libraries based on
	 * GVariant that want to provide g_variant_new()-like functionality
	 * to their users.
	 * The API is more general than g_variant_new() to allow a wider range
	 * of possible uses.
	 * format_string must still point to a valid format string, but it only
	 * needs to be nul-terminated if endptr is NULL. If endptr is
	 * non-NULL then it is updated to point to the first character past the
	 * end of the format string.
	 * app is a pointer to a va_list. The arguments, according to
	 * format_string, are collected from this va_list and the list is left
	 * pointing to the argument following the last.
	 * These two generalisations allow mixing of multiple calls to
	 * g_variant_new_va() and g_variant_get_va() within a single actual
	 * varargs call by the user.
	 * The return value will be floating if it was a newly created GVariant
	 * instance (for example, if the format string was "(ii)"). In the case
	 * that the format_string was '*', '?', 'r', or a format starting with
	 * '@' then the collected GVariant pointer will be returned unmodified,
	 * without adding any additional references.
	 * In order to behave correctly in all cases it is necessary for the
	 * calling function to g_variant_ref_sink() the return result before
	 * returning control to the user that originally provided the pointer.
	 * At this point, the caller will have their own full reference to the
	 * result. This can also be done by adding the result to a container,
	 * or by passing it to another g_variant_new() call.
	 * Since 2.24
	 * Params:
	 * formatString = a string that is prefixed with a format string
	 * endptr = location to store the end pointer,
	 * or NULL. [allow-none][default NULL]
	 * app = a pointer to a va_list
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string formatString, out string endptr, void** app)
	{
		// GVariant * g_variant_new_va (const gchar *format_string,  const gchar **endptr,  va_list *app);
		char* outendptr = null;
		
		auto p = g_variant_new_va(Str.toStringz(formatString), &outendptr, app);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_va(Str.toStringz(formatString), &outendptr, app)");
		}
		
		endptr = Str.toString(outendptr);
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new byte GVariant instance.
	 * Since 2.24
	 * Params:
	 * value = a guint8 value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (char value)
	{
		// GVariant * g_variant_new_byte (guchar value);
		auto p = g_variant_new_byte(value);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_byte(value)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new int16 GVariant instance.
	 * Since 2.24
	 * Params:
	 * value = a gint16 value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (short value)
	{
		// GVariant * g_variant_new_int16 (gint16 value);
		auto p = g_variant_new_int16(value);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_int16(value)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new uint16 GVariant instance.
	 * Since 2.24
	 * Params:
	 * value = a guint16 value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ushort value)
	{
		// GVariant * g_variant_new_uint16 (guint16 value);
		auto p = g_variant_new_uint16(value);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_uint16(value)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new int32 GVariant instance.
	 * Since 2.24
	 * Params:
	 * value = a gint32 value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int value)
	{
		// GVariant * g_variant_new_int32 (gint32 value);
		auto p = g_variant_new_int32(value);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_int32(value)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new uint32 GVariant instance.
	 * Since 2.24
	 * Params:
	 * value = a guint32 value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (uint value)
	{
		// GVariant * g_variant_new_uint32 (guint32 value);
		auto p = g_variant_new_uint32(value);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_uint32(value)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new int64 GVariant instance.
	 * Since 2.24
	 * Params:
	 * value = a gint64 value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (long value)
	{
		// GVariant * g_variant_new_int64 (gint64 value);
		auto p = g_variant_new_int64(value);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_int64(value)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new uint64 GVariant instance.
	 * Since 2.24
	 * Params:
	 * value = a guint64 value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ulong value)
	{
		// GVariant * g_variant_new_uint64 (guint64 value);
		auto p = g_variant_new_uint64(value);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_uint64(value)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new double GVariant instance.
	 * Since 2.24
	 * Params:
	 * value = a gdouble floating point value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (double value)
	{
		// GVariant * g_variant_new_double (gdouble value);
		auto p = g_variant_new_double(value);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_double(value)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a string GVariant with the contents of string.
	 * string must be valid utf8.
	 * Since 2.24
	 * Params:
	 * string = a normal utf8 nul-terminated string
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string string)
	{
		// GVariant * g_variant_new_string (const gchar *string);
		auto p = g_variant_new_string(Str.toStringz(string));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_string(Str.toStringz(string))");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Determines if a given string is a valid D-Bus object path. You
	 * should ensure that a string is a valid D-Bus object path before
	 * passing it to g_variant_new_object_path().
	 * A valid object path starts with '/' followed by zero or more
	 * sequences of characters separated by '/' characters. Each sequence
	 * must contain only the characters "[A-Z][a-z][0-9]_". No sequence
	 * (including the one following the final '/' character) may be empty.
	 * Since 2.24
	 * Params:
	 * string = a normal C nul-terminated string
	 * Returns: TRUE if string is a D-Bus object path
	 */
	public static int isObjectPath(string string)
	{
		// gboolean g_variant_is_object_path (const gchar *string);
		return g_variant_is_object_path(Str.toStringz(string));
	}
	
	/**
	 * Determines if a given string is a valid D-Bus type signature. You
	 * should ensure that a string is a valid D-Bus type signature before
	 * passing it to g_variant_new_signature().
	 * D-Bus type signatures consist of zero or more definite GVariantType
	 * strings in sequence.
	 * Since 2.24
	 * Params:
	 * string = a normal C nul-terminated string
	 * Returns: TRUE if string is a D-Bus type signature
	 */
	public static int isSignature(string string)
	{
		// gboolean g_variant_is_signature (const gchar *string);
		return g_variant_is_signature(Str.toStringz(string));
	}
	
	/**
	 * Boxes value. The result is a GVariant instance representing a
	 * variant containing the original value.
	 * If child is a floating reference (see g_variant_ref_sink()), the new
	 * instance takes ownership of child.
	 * Since 2.24
	 * Params:
	 * value = a GVariant instance
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Variant value)
	{
		// GVariant * g_variant_new_variant (GVariant *value);
		auto p = g_variant_new_variant((value is null) ? null : value.getVariantStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_variant((value is null) ? null : value.getVariantStruct())");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Constructs an array of strings GVariant from the given array of
	 * strings.
	 * If length is -1 then strv is NULL-terminated.
	 * Since 2.24
	 * Params:
	 * strv = an array of strings. [array length=length][element-type utf8]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string[] strv)
	{
		// GVariant * g_variant_new_strv (const gchar * const *strv,  gssize length);
		auto p = g_variant_new_strv(Str.toStringzArray(strv), cast(int) strv.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_strv(Str.toStringzArray(strv), cast(int) strv.length)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Returns the boolean value of value.
	 * It is an error to call this function with a value of any type
	 * other than G_VARIANT_TYPE_BOOLEAN.
	 * Since 2.24
	 * Returns: TRUE or FALSE
	 */
	public int getBoolean()
	{
		// gboolean g_variant_get_boolean (GVariant *value);
		return g_variant_get_boolean(gVariant);
	}
	
	/**
	 * Returns the byte value of value.
	 * It is an error to call this function with a value of any type
	 * other than G_VARIANT_TYPE_BYTE.
	 * Since 2.24
	 * Returns: a guchar
	 */
	public char getByte()
	{
		// guchar g_variant_get_byte (GVariant *value);
		return g_variant_get_byte(gVariant);
	}
	
	/**
	 * Returns the 16-bit signed integer value of value.
	 * It is an error to call this function with a value of any type
	 * other than G_VARIANT_TYPE_INT16.
	 * Since 2.24
	 * Returns: a gint16
	 */
	public short getInt16()
	{
		// gint16 g_variant_get_int16 (GVariant *value);
		return g_variant_get_int16(gVariant);
	}
	
	/**
	 * Returns the 16-bit unsigned integer value of value.
	 * It is an error to call this function with a value of any type
	 * other than G_VARIANT_TYPE_UINT16.
	 * Since 2.24
	 * Returns: a guint16
	 */
	public ushort getUint16()
	{
		// guint16 g_variant_get_uint16 (GVariant *value);
		return g_variant_get_uint16(gVariant);
	}
	
	/**
	 * Returns the 32-bit signed integer value of value.
	 * It is an error to call this function with a value of any type
	 * other than G_VARIANT_TYPE_INT32.
	 * Since 2.24
	 * Returns: a gint32
	 */
	public int getInt32()
	{
		// gint32 g_variant_get_int32 (GVariant *value);
		return g_variant_get_int32(gVariant);
	}
	
	/**
	 * Returns the 32-bit unsigned integer value of value.
	 * It is an error to call this function with a value of any type
	 * other than G_VARIANT_TYPE_UINT32.
	 * Since 2.24
	 * Returns: a guint32
	 */
	public uint getUint32()
	{
		// guint32 g_variant_get_uint32 (GVariant *value);
		return g_variant_get_uint32(gVariant);
	}
	
	/**
	 * Returns the 64-bit signed integer value of value.
	 * It is an error to call this function with a value of any type
	 * other than G_VARIANT_TYPE_INT64.
	 * Since 2.24
	 * Returns: a gint64
	 */
	public long getInt64()
	{
		// gint64 g_variant_get_int64 (GVariant *value);
		return g_variant_get_int64(gVariant);
	}
	
	/**
	 * Returns the 64-bit unsigned integer value of value.
	 * It is an error to call this function with a value of any type
	 * other than G_VARIANT_TYPE_UINT64.
	 * Since 2.24
	 * Returns: a guint64
	 */
	public ulong getUint64()
	{
		// guint64 g_variant_get_uint64 (GVariant *value);
		return g_variant_get_uint64(gVariant);
	}
	
	/**
	 * Returns the 32-bit signed integer value of value.
	 * It is an error to call this function with a value of any type other
	 * than G_VARIANT_TYPE_HANDLE.
	 * By convention, handles are indexes into an array of file descriptors
	 * that are sent alongside a D-Bus message. If you're not interacting
	 * with D-Bus, you probably don't need them.
	 * Since 2.24
	 * Returns: a gint32
	 */
	public int getHandle()
	{
		// gint32 g_variant_get_handle (GVariant *value);
		return g_variant_get_handle(gVariant);
	}
	
	/**
	 * Returns the double precision floating point value of value.
	 * It is an error to call this function with a value of any type
	 * other than G_VARIANT_TYPE_DOUBLE.
	 * Since 2.24
	 * Returns: a gdouble
	 */
	public double getDouble()
	{
		// gdouble g_variant_get_double (GVariant *value);
		return g_variant_get_double(gVariant);
	}
	
	/**
	 * Returns the string value of a GVariant instance with a string
	 * type. This includes the types G_VARIANT_TYPE_STRING,
	 * G_VARIANT_TYPE_OBJECT_PATH and G_VARIANT_TYPE_SIGNATURE.
	 * The string will always be utf8 encoded.
	 * If length is non-NULL then the length of the string (in bytes) is
	 * returned there. For trusted values, this information is already
	 * known. For untrusted values, a strlen() will be performed.
	 * It is an error to call this function with a value of any type
	 * other than those three.
	 * The return value remains valid as long as value exists.
	 * Since 2.24
	 * Params:
	 * length = a pointer to a gsize,
	 * to store the length. [allow-none][default 0][out]
	 * Returns: the constant string, utf8 encoded. [transfer none]
	 */
	public string getString(out gsize length)
	{
		// const gchar * g_variant_get_string (GVariant *value,  gsize *length);
		return Str.toString(g_variant_get_string(gVariant, &length));
	}
	
	/**
	 * Similar to g_variant_get_string() except that instead of returning
	 * a constant string, the string is duplicated.
	 * The string will always be utf8 encoded.
	 * The return value must be freed using g_free().
	 * Since 2.24
	 * Returns: a newly allocated string, utf8 encoded. [transfer full]
	 */
	public string dupString()
	{
		// gchar * g_variant_dup_string (GVariant *value,  gsize *length);
		gsize length;
		auto p = g_variant_dup_string(gVariant, &length);
		return Str.toString(p, length);
	}
	
	/**
	 * Unboxes value. The result is the GVariant instance that was
	 * contained in value.
	 * Since 2.24
	 * Returns: the item contained in the variant. [transfer full]
	 */
	public Variant getVariant()
	{
		// GVariant * g_variant_get_variant (GVariant *value);
		auto p = g_variant_get_variant(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Gets the contents of an array of strings GVariant. This call
	 * makes a shallow copy; the return result should be released with
	 * g_free(), but the individual strings must not be modified.
	 * If length is non-NULL then the number of elements in the result
	 * is stored there. In any case, the resulting array will be
	 * NULL-terminated.
	 * For an empty array, length will be set to 0 and a pointer to a
	 * NULL pointer will be returned.
	 * Since 2.24
	 * Returns: an array of constant strings. [array length=length zero-terminated=1][transfer container]
	 */
	public string[] getStrv()
	{
		// const gchar ** g_variant_get_strv (GVariant *value,  gsize *length);
		gsize length;
		auto p = g_variant_get_strv(gVariant, &length);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Gets the contents of an array of strings GVariant. This call
	 * makes a deep copy; the return result should be released with
	 * g_strfreev().
	 * If length is non-NULL then the number of elements in the result
	 * is stored there. In any case, the resulting array will be
	 * NULL-terminated.
	 * For an empty array, length will be set to 0 and a pointer to a
	 * NULL pointer will be returned.
	 * Since 2.24
	 * Returns: an array of strings. [array length=length zero-terminated=1][transfer full]
	 */
	public string[] dupStrv()
	{
		// gchar ** g_variant_dup_strv (GVariant *value,  gsize *length);
		gsize length;
		auto p = g_variant_dup_strv(gVariant, &length);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Gets the contents of an array of object paths GVariant. This call
	 * makes a shallow copy; the return result should be released with
	 * g_free(), but the individual strings must not be modified.
	 * If length is non-NULL then the number of elements in the result
	 * is stored there. In any case, the resulting array will be
	 * NULL-terminated.
	 * For an empty array, length will be set to 0 and a pointer to a
	 * NULL pointer will be returned.
	 * Since 2.30
	 * Returns: an array of constant strings. [array length=length zero-terminated=1][transfer container]
	 */
	public string[] getObjv()
	{
		// const gchar ** g_variant_get_objv (GVariant *value,  gsize *length);
		gsize length;
		auto p = g_variant_get_objv(gVariant, &length);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Gets the contents of an array of object paths GVariant. This call
	 * makes a deep copy; the return result should be released with
	 * g_strfreev().
	 * If length is non-NULL then the number of elements in the result
	 * is stored there. In any case, the resulting array will be
	 * NULL-terminated.
	 * For an empty array, length will be set to 0 and a pointer to a
	 * NULL pointer will be returned.
	 * Since 2.30
	 * Returns: an array of strings. [array length=length zero-terminated=1][transfer full]
	 */
	public string[] dupObjv()
	{
		// gchar ** g_variant_dup_objv (GVariant *value,  gsize *length);
		gsize length;
		auto p = g_variant_dup_objv(gVariant, &length);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Returns the string value of a GVariant instance with an
	 * array-of-bytes type. The string has no particular encoding.
	 * If the array does not end with a nul terminator character, the empty
	 * string is returned. For this reason, you can always trust that a
	 * non-NULL nul-terminated string will be returned by this function.
	 * If the array contains a nul terminator character somewhere other than
	 * the last byte then the returned string is the string, up to the first
	 * such nul character.
	 * It is an error to call this function with a value that is not an
	 * array of bytes.
	 * The return value remains valid as long as value exists.
	 * Since 2.26
	 * Returns: the constant string. [transfer none][array zero-terminated=1][element-type guint8]
	 */
	public string getBytestring()
	{
		// const gchar * g_variant_get_bytestring (GVariant *value);
		return Str.toString(g_variant_get_bytestring(gVariant));
	}
	
	/**
	 * Similar to g_variant_get_bytestring() except that instead of
	 * returning a constant string, the string is duplicated.
	 * The return value must be freed using g_free().
	 * Since 2.26
	 * Returns: a newly allocated string. [transfer full][array zero-terminated=1 length=length][element-type guint8]
	 */
	public string dupBytestring()
	{
		// gchar * g_variant_dup_bytestring (GVariant *value,  gsize *length);
		gsize length;
		auto p = g_variant_dup_bytestring(gVariant, &length);
		return Str.toString(p, length);
	}
	
	/**
	 * Gets the contents of an array of array of bytes GVariant. This call
	 * makes a shallow copy; the return result should be released with
	 * g_free(), but the individual strings must not be modified.
	 * If length is non-NULL then the number of elements in the result is
	 * stored there. In any case, the resulting array will be
	 * NULL-terminated.
	 * For an empty array, length will be set to 0 and a pointer to a
	 * NULL pointer will be returned.
	 * Since 2.26
	 * Returns: an array of constant strings. [array length=length][transfer container]
	 */
	public string[] getBytestringArray()
	{
		// const gchar ** g_variant_get_bytestring_array (GVariant *value,  gsize *length);
		gsize length;
		auto p = g_variant_get_bytestring_array(gVariant, &length);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Gets the contents of an array of array of bytes GVariant. This call
	 * makes a deep copy; the return result should be released with
	 * g_strfreev().
	 * If length is non-NULL then the number of elements in the result is
	 * stored there. In any case, the resulting array will be
	 * NULL-terminated.
	 * For an empty array, length will be set to 0 and a pointer to a
	 * NULL pointer will be returned.
	 * Since 2.26
	 * Returns: an array of strings. [array length=length][transfer full]
	 */
	public string[] dupBytestringArray()
	{
		// gchar ** g_variant_dup_bytestring_array (GVariant *value,  gsize *length);
		gsize length;
		auto p = g_variant_dup_bytestring_array(gVariant, &length);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Depending on if child is NULL, either wraps child inside of a
	 * maybe container or creates a Nothing instance for the given type.
	 * At least one of child_type and child must be non-NULL.
	 * If child_type is non-NULL then it must be a definite type.
	 * If they are both non-NULL then child_type must be the type
	 * of child.
	 * If child is a floating reference (see g_variant_ref_sink()), the new
	 * instance takes ownership of child.
	 * Since 2.24
	 * Params:
	 * childType = the GVariantType of the child, or NULL. [allow-none]
	 * child = the child value, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (VariantType childType, Variant child)
	{
		// GVariant * g_variant_new_maybe (const GVariantType *child_type,  GVariant *child);
		auto p = g_variant_new_maybe((childType is null) ? null : childType.getVariantTypeStruct(), (child is null) ? null : child.getVariantStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_maybe((childType is null) ? null : childType.getVariantTypeStruct(), (child is null) ? null : child.getVariantStruct())");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new GVariant array from children.
	 * child_type must be non-NULL if n_children is zero. Otherwise, the
	 * child type is determined by inspecting the first element of the
	 * children array. If child_type is non-NULL then it must be a
	 * definite type.
	 * The items of the array are taken from the children array. No entry
	 * in the children array may be NULL.
	 * All items in the array must have the same type, which must be the
	 * same as child_type, if given.
	 * If the children are floating references (see g_variant_ref_sink()), the
	 * new instance takes ownership of them as if via g_variant_ref_sink().
	 * Since 2.24
	 * Params:
	 * childType = the element type of the new array. [allow-none]
	 * children = an array of
	 * GVariant pointers, the children. [allow-none][array length=n_children]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (VariantType childType, Variant[] children)
	{
		// GVariant * g_variant_new_array (const GVariantType *child_type,  GVariant * const *children,  gsize n_children);
		
		GVariant*[] childrenArray = new GVariant*[children.length];
		for ( int i = 0; i < children.length ; i++ )
		{
			childrenArray[i] = children[i].getVariantStruct();
		}
		
		auto p = g_variant_new_array((childType is null) ? null : childType.getVariantTypeStruct(), childrenArray.ptr, cast(int) children.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_array((childType is null) ? null : childType.getVariantTypeStruct(), childrenArray.ptr, cast(int) children.length)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new tuple GVariant out of the items in children. The
	 * type is determined from the types of children. No entry in the
	 * children array may be NULL.
	 * If n_children is 0 then the unit tuple is constructed.
	 * If the children are floating references (see g_variant_ref_sink()), the
	 * new instance takes ownership of them as if via g_variant_ref_sink().
	 * Since 2.24
	 * Params:
	 * children = the items to make the tuple out of. [array length=n_children]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Variant[] children)
	{
		// GVariant * g_variant_new_tuple (GVariant * const *children,  gsize n_children);
		
		GVariant*[] childrenArray = new GVariant*[children.length];
		for ( int i = 0; i < children.length ; i++ )
		{
			childrenArray[i] = children[i].getVariantStruct();
		}
		
		auto p = g_variant_new_tuple(childrenArray.ptr, cast(int) children.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_tuple(childrenArray.ptr, cast(int) children.length)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Creates a new dictionary entry GVariant. key and value must be
	 * non-NULL. key must be a value of a basic type (ie: not a container).
	 * If the key or value are floating references (see g_variant_ref_sink()),
	 * the new instance takes ownership of them as if via g_variant_ref_sink().
	 * Since 2.24
	 * Params:
	 * key = a basic GVariant, the key
	 * value = a GVariant, the value
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Variant key, Variant value)
	{
		// GVariant * g_variant_new_dict_entry (GVariant *key,  GVariant *value);
		auto p = g_variant_new_dict_entry((key is null) ? null : key.getVariantStruct(), (value is null) ? null : value.getVariantStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_dict_entry((key is null) ? null : key.getVariantStruct(), (value is null) ? null : value.getVariantStruct())");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Provides access to the serialised data for an array of fixed-sized
	 * items.
	 * value must be an array with fixed-sized elements. Numeric types are
	 * fixed-size as are tuples containing only other fixed-sized types.
	 * element_size must be the size of a single element in the array. For
	 * example, if calling this function for an array of 32 bit integers,
	 * you might say sizeof (gint32). This value isn't used
	 * except for the purpose of a double-check that the form of the
	 * serialised data matches the caller's expectation.
	 * n_elements, which must be non-NULL is set equal to the number of
	 * items in the array.
	 * Since 2.32
	 * Params:
	 * elementType = the GVariantType of each element
	 * elements = a pointer to the fixed array of contiguous elements
	 * elementSize = the size of each element
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (VariantType elementType, void[] elements, gsize elementSize)
	{
		// GVariant * g_variant_new_fixed_array (const GVariantType *element_type,  gconstpointer elements,  gsize n_elements,  gsize element_size);
		auto p = g_variant_new_fixed_array((elementType is null) ? null : elementType.getVariantTypeStruct(), elements.ptr, cast(int) elements.length, elementSize);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_fixed_array((elementType is null) ? null : elementType.getVariantTypeStruct(), elements.ptr, cast(int) elements.length, elementSize)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Given a maybe-typed GVariant instance, extract its value. If the
	 * value is Nothing, then this function returns NULL.
	 * Since 2.24
	 * Returns: the contents of value, or NULL. [allow-none][transfer full]
	 */
	public Variant getMaybe()
	{
		// GVariant * g_variant_get_maybe (GVariant *value);
		auto p = g_variant_get_maybe(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Determines the number of children in a container GVariant instance.
	 * This includes variants, maybes, arrays, tuples and dictionary
	 * entries. It is an error to call this function on any other type of
	 * GVariant.
	 * For variants, the return value is always 1. For values with maybe
	 * types, it is always zero or one. For arrays, it is the length of the
	 * array. For tuples it is the number of tuple items (which depends
	 * only on the type). For dictionary entries, it is always 2
	 * This function is O(1).
	 * Since 2.24
	 * Returns: the number of children in the container
	 */
	public gsize nChildren()
	{
		// gsize g_variant_n_children (GVariant *value);
		return g_variant_n_children(gVariant);
	}
	
	/**
	 * Reads a child item out of a container GVariant instance. This
	 * includes variants, maybes, arrays, tuples and dictionary
	 * entries. It is an error to call this function on any other type of
	 * GVariant.
	 * It is an error if index_ is greater than the number of child items
	 * in the container. See g_variant_n_children().
	 * The returned value is never floating. You should free it with
	 * g_variant_unref() when you're done with it.
	 * This function is O(1).
	 * Since 2.24
	 * Params:
	 * index = the index of the child to fetch
	 * Returns: the child at the specified index. [transfer full]
	 */
	public Variant getChildValue(gsize index)
	{
		// GVariant * g_variant_get_child_value (GVariant *value,  gsize index_);
		auto p = g_variant_get_child_value(gVariant, index);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Looks up a value in a dictionary GVariant.
	 * This function works with dictionaries of the type
	 * a{s*} (and equally well with type
	 * a{o*}, but we only further discuss the string case
	 * for sake of clarity).
	 * In the event that dictionary has the type a{sv},
	 * the expected_type string specifies what type of value is expected to
	 * be inside of the variant. If the value inside the variant has a
	 * different type then NULL is returned. In the event that dictionary
	 * has a value type other than v then expected_type
	 * must directly match the key type and it is used to unpack the value
	 * directly or an error occurs.
	 * In either case, if key is not found in dictionary, NULL is
	 * returned.
	 * If the key is found and the value has the correct type, it is
	 * returned. If expected_type was specified then any non-NULL return
	 * value will have this type.
	 * Since 2.28
	 * Params:
	 * key = the key to lookup in the dictionary
	 * expectedType = a GVariantType, or NULL. [allow-none]
	 * Returns: the value of the dictionary key, or NULL. [transfer full]
	 */
	public Variant lookupValue(string key, VariantType expectedType)
	{
		// GVariant * g_variant_lookup_value (GVariant *dictionary,  const gchar *key,  const GVariantType *expected_type);
		auto p = g_variant_lookup_value(gVariant, Str.toStringz(key), (expectedType is null) ? null : expectedType.getVariantTypeStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Provides access to the serialised data for an array of fixed-sized
	 * items.
	 * value must be an array with fixed-sized elements. Numeric types are
	 * fixed-size, as are tuples containing only other fixed-sized types.
	 * element_size must be the size of a single element in the array,
	 * as given by the section on
	 * Serialised Data
	 * Memory.
	 * In particular, arrays of these fixed-sized types can be interpreted
	 * as an array of the given C type, with element_size set to
	 * Since 2.24
	 * Params:
	 * nElements = a pointer to the location to store the number of items. [out]
	 * elementSize = the size of each element
	 * Returns: a pointer to the fixed array. [array length=n_elements][transfer none]
	 */
	public void* getFixedArray(gsize* nElements, gsize elementSize)
	{
		// gconstpointer g_variant_get_fixed_array (GVariant *value,  gsize *n_elements,  gsize element_size);
		return g_variant_get_fixed_array(gVariant, nElements, elementSize);
	}
	
	/**
	 * Determines the number of bytes that would be required to store value
	 * with g_variant_store().
	 * If value has a fixed-sized type then this function always returned
	 * that fixed size.
	 * In the case that value is already in serialised form or the size has
	 * already been calculated (ie: this function has been called before)
	 * then this function is O(1). Otherwise, the size is calculated, an
	 * operation which is approximately O(n) in the number of values
	 * involved.
	 * Since 2.24
	 * Returns: the serialised size of value
	 */
	public gsize getSize()
	{
		// gsize g_variant_get_size (GVariant *value);
		return g_variant_get_size(gVariant);
	}
	
	/**
	 * Returns a pointer to the serialised form of a GVariant instance.
	 * The returned data may not be in fully-normalised form if read from an
	 * untrusted source. The returned data must not be freed; it remains
	 * valid for as long as value exists.
	 * If value is a fixed-sized value that was deserialised from a
	 * corrupted serialised container then NULL may be returned. In this
	 * case, the proper thing to do is typically to use the appropriate
	 * number of nul bytes in place of value. If value is not fixed-sized
	 * then NULL is never returned.
	 * In the case that value is already in serialised form, this function
	 * is O(1). If the value is not already in serialised form,
	 * serialisation occurs implicitly and is approximately O(n) in the size
	 * of the result.
	 * To deserialise the data returned by this function, in addition to the
	 * serialised data, you must know the type of the GVariant, and (if the
	 * machine might be different) the endianness of the machine that stored
	 * it. As a result, file formats or network messages that incorporate
	 * serialised GVariants must include this information either
	 * implicitly (for instance "the file always contains a
	 * G_VARIANT_TYPE_VARIANT and it is always in little-endian order") or
	 * explicitly (by storing the type and/or endianness in addition to the
	 * serialised data).
	 * Since 2.24
	 * Returns: the serialised form of value, or NULL. [transfer none]
	 */
	public void* getData()
	{
		// gconstpointer g_variant_get_data (GVariant *value);
		return g_variant_get_data(gVariant);
	}
	
	/**
	 * Returns a pointer to the serialised form of a GVariant instance.
	 * The semantics of this function are exactly the same as
	 * g_variant_get_data(), except that the returned GBytes holds
	 * a reference to the variant data.
	 * Since 2.36
	 * Returns: A new GBytes representing the variant data. [transfer full]
	 */
	public Bytes getDataAsBytes()
	{
		// GBytes * g_variant_get_data_as_bytes (GVariant *value);
		auto p = g_variant_get_data_as_bytes(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Bytes(cast(GBytes*) p);
	}
	
	/**
	 * Stores the serialised form of value at data. data should be
	 * large enough. See g_variant_get_size().
	 * The stored data is in machine native byte order but may not be in
	 * fully-normalised form if read from an untrusted source. See
	 * g_variant_get_normal_form() for a solution.
	 * As with g_variant_get_data(), to be able to deserialise the
	 * serialised variant successfully, its type and (if the destination
	 * machine might be different) its endianness must also be available.
	 * This function is approximately O(n) in the size of data.
	 * Since 2.24
	 * Params:
	 * data = the location to store the serialised data at
	 */
	public void store(void* data)
	{
		// void g_variant_store (GVariant *value,  gpointer data);
		g_variant_store(gVariant, data);
	}
	
	/**
	 * Creates a new GVariant instance from serialised data.
	 * type is the type of GVariant instance that will be constructed.
	 * The interpretation of data depends on knowing the type.
	 * data is not modified by this function and must remain valid with an
	 * unchanging value until such a time as notify is called with
	 * user_data. If the contents of data change before that time then
	 * the result is undefined.
	 * If data is trusted to be serialised data in normal form then
	 * trusted should be TRUE. This applies to serialised data created
	 * within this process or read from a trusted location on the disk (such
	 * as a file installed in /usr/lib alongside your application). You
	 * should set trusted to FALSE if data is read from the network, a
	 * file in the user's home directory, etc.
	 * If data was not stored in this machine's native endianness, any multi-byte
	 * numeric values in the returned variant will also be in non-native
	 * endianness. g_variant_byteswap() can be used to recover the original values.
	 * notify will be called with user_data when data is no longer
	 * needed. The exact time of this call is unspecified and might even be
	 * before this function returns.
	 * Since 2.24
	 * Params:
	 * type = a definite GVariantType
	 * data = the serialised data. [array length=size][element-type guint8]
	 * size = the size of data
	 * trusted = TRUE if data is definitely in normal form
	 * notify = function to call when data is no longer needed. [scope async]
	 * userData = data for notify
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (VariantType type, void* data, gsize size, int trusted, GDestroyNotify notify, void* userData)
	{
		// GVariant * g_variant_new_from_data (const GVariantType *type,  gconstpointer data,  gsize size,  gboolean trusted,  GDestroyNotify notify,  gpointer user_data);
		auto p = g_variant_new_from_data((type is null) ? null : type.getVariantTypeStruct(), data, size, trusted, notify, userData);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_from_data((type is null) ? null : type.getVariantTypeStruct(), data, size, trusted, notify, userData)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Constructs a new serialised-mode GVariant instance. This is the
	 * inner interface for creation of new serialised values that gets
	 * called from various functions in gvariant.c.
	 * A reference is taken on bytes.
	 * Since 2.36
	 * Params:
	 * type = a GVariantType
	 * bytes = a GBytes
	 * trusted = if the contents of bytes are trusted
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (VariantType type, Bytes bytes, int trusted)
	{
		// GVariant * g_variant_new_from_bytes (const GVariantType *type,  GBytes *bytes,  gboolean trusted);
		auto p = g_variant_new_from_bytes((type is null) ? null : type.getVariantTypeStruct(), (bytes is null) ? null : bytes.getBytesStruct(), trusted);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_from_bytes((type is null) ? null : type.getVariantTypeStruct(), (bytes is null) ? null : bytes.getBytesStruct(), trusted)");
		}
		this(cast(GVariant*) p);
	}
	
	/**
	 * Performs a byteswapping operation on the contents of value. The
	 * result is that all multi-byte numeric data contained in value is
	 * byteswapped. That includes 16, 32, and 64bit signed and unsigned
	 * integers as well as file handles and double precision floating point
	 * values.
	 * This function is an identity mapping on any value that does not
	 * contain multi-byte numeric data. That include strings, booleans,
	 * bytes and containers containing only these things (recursively).
	 * The returned value is always in normal form and is marked as trusted.
	 * Since 2.24
	 * Returns: the byteswapped form of value. [transfer full]
	 */
	public Variant byteswap()
	{
		// GVariant * g_variant_byteswap (GVariant *value);
		auto p = g_variant_byteswap(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Gets a GVariant instance that has the same value as value and is
	 * trusted to be in normal form.
	 * If value is already trusted to be in normal form then a new
	 * reference to value is returned.
	 * If value is not already trusted, then it is scanned to check if it
	 * is in normal form. If it is found to be in normal form then it is
	 * marked as trusted and a new reference to it is returned.
	 * If value is found not to be in normal form then a new trusted
	 * GVariant is created with the same value as value.
	 * It makes sense to call this function if you've received GVariant
	 * data from untrusted sources and you want to ensure your serialised
	 * output is definitely in normal form.
	 * Since 2.24
	 * Returns: a trusted GVariant. [transfer full]
	 */
	public Variant getNormalForm()
	{
		// GVariant * g_variant_get_normal_form (GVariant *value);
		auto p = g_variant_get_normal_form(gVariant);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Checks if value is in normal form.
	 * The main reason to do this is to detect if a given chunk of
	 * serialised data is in normal form: load the data into a GVariant
	 * using g_variant_new_from_data() and then use this function to
	 * check.
	 * If value is found to be in normal form then it will be marked as
	 * being trusted. If the value was already marked as being trusted then
	 * this function will immediately return TRUE.
	 * Since 2.24
	 * Returns: TRUE if value is in normal form
	 */
	public int isNormalForm()
	{
		// gboolean g_variant_is_normal_form (GVariant *value);
		return g_variant_is_normal_form(gVariant);
	}
	
	/**
	 * Generates a hash value for a GVariant instance.
	 * The output of this function is guaranteed to be the same for a given
	 * value only per-process. It may change between different processor
	 * architectures or even different versions of GLib. Do not use this
	 * function as a basis for building protocols or file formats.
	 * The type of value is gconstpointer only to allow use of this
	 * function with GHashTable. value must be a GVariant.
	 * Since 2.24
	 * Params:
	 * value = a basic GVariant value as a gconstpointer. [type GVariant]
	 * Returns: a hash value corresponding to value
	 */
	public static uint hash(void* value)
	{
		// guint g_variant_hash (gconstpointer value);
		return g_variant_hash(value);
	}
	
	/**
	 * Checks if one and two have the same type and value.
	 * The types of one and two are gconstpointer only to allow use of
	 * this function with GHashTable. They must each be a GVariant.
	 * Since 2.24
	 * Params:
	 * one = a GVariant instance. [type GVariant]
	 * two = a GVariant instance. [type GVariant]
	 * Returns: TRUE if one and two are equal
	 */
	public static int equal(void* one, void* two)
	{
		// gboolean g_variant_equal (gconstpointer one,  gconstpointer two);
		return g_variant_equal(one, two);
	}
	
	/**
	 * Pretty-prints value in the format understood by g_variant_parse().
	 * The format is described here.
	 * If type_annotate is TRUE, then type information is included in
	 * the output.
	 * Since 2.24
	 * Params:
	 * typeAnnotate = TRUE if type information should be included in
	 * the output
	 * Returns: a newly-allocated string holding the result. [transfer full]
	 */
	public string print(int typeAnnotate)
	{
		// gchar * g_variant_print (GVariant *value,  gboolean type_annotate);
		return Str.toString(g_variant_print(gVariant, typeAnnotate));
	}
	
	/**
	 * Behaves as g_variant_print(), but operates on a GString.
	 * If string is non-NULL then it is appended to and returned. Else,
	 * a new empty GString is allocated and it is returned.
	 * Since 2.24
	 * Params:
	 * string = a GString, or NULL. [allow-none][default NULL]
	 * typeAnnotate = TRUE if type information should be included in
	 * the output
	 * Returns: a GString containing the string
	 */
	public StringG printString(StringG string, int typeAnnotate)
	{
		// GString * g_variant_print_string (GVariant *value,  GString *string,  gboolean type_annotate);
		auto p = g_variant_print_string(gVariant, (string is null) ? null : string.getStringGStruct(), typeAnnotate);
		
		if(p is null)
		{
			return null;
		}
		
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Parses a GVariant from a text representation.
	 * A single GVariant is parsed from the content of text.
	 * The format is described here.
	 * The memory at limit will never be accessed and the parser behaves as
	 * if the character at limit is the nul terminator. This has the
	 * effect of bounding text.
	 * If endptr is non-NULL then text is permitted to contain data
	 * following the value that this function parses and endptr will be
	 * updated to point to the first character past the end of the text
	 * parsed by this function. If endptr is NULL and there is extra data
	 * then an error is returned.
	 * If type is non-NULL then the value will be parsed to have that
	 * type. This may result in additional parse errors (in the case that
	 * the parsed value doesn't fit the type) but may also result in fewer
	 * errors (in the case that the type would have been ambiguous, such as
	 * with empty arrays).
	 * In the event that the parsing is successful, the resulting GVariant
	 * is returned.
	 * In case of any error, NULL will be returned. If error is non-NULL
	 * then it will be set to reflect the error that occurred.
	 * Officially, the language understood by the parser is "any string
	 * produced by g_variant_print()".
	 * Params:
	 * type = a GVariantType, or NULL. [allow-none]
	 * text = a string containing a GVariant in text form
	 * limit = a pointer to the end of text, or NULL. [allow-none]
	 * endptr = a location to store the end pointer, or NULL. [allow-none]
	 * Returns: a reference to a GVariant, or NULL
	 * Throws: GException on failure.
	 */
	public static Variant parse(VariantType type, string text, string limit, out string endptr)
	{
		// GVariant * g_variant_parse (const GVariantType *type,  const gchar *text,  const gchar *limit,  const gchar **endptr,  GError **error);
		char* outendptr = null;
		GError* err = null;
		
		auto p = g_variant_parse((type is null) ? null : type.getVariantTypeStruct(), Str.toStringz(text), Str.toStringz(limit), &outendptr, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		endptr = Str.toString(outendptr);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Parses format and returns the result.
	 * This is the version of g_variant_new_parsed() intended to be used
	 * from libraries.
	 * The return value will be floating if it was a newly created GVariant
	 * instance. In the case that format simply specified the collection
	 * of a GVariant pointer (eg: format was "%*") then the collected
	 * GVariant pointer will be returned unmodified, without adding any
	 * additional references.
	 * In order to behave correctly in all cases it is necessary for the
	 * calling function to g_variant_ref_sink() the return result before
	 * returning control to the user that originally provided the pointer.
	 * At this point, the caller will have their own full reference to the
	 * result. This can also be done by adding the result to a container,
	 * or by passing it to another g_variant_new() call.
	 * Params:
	 * format = a text format GVariant
	 * app = a pointer to a va_list
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string format, void** app)
	{
		// GVariant * g_variant_new_parsed_va (const gchar *format,  va_list *app);
		auto p = g_variant_new_parsed_va(Str.toStringz(format), app);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_new_parsed_va(Str.toStringz(format), app)");
		}
		this(cast(GVariant*) p);
	}
}
