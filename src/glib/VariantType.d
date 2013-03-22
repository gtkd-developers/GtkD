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
 * inFile  = glib-GVariantType.html
 * outPack = glib
 * outFile = VariantType
 * strct   = GVariantType
 * realStrct=
 * ctorStrct=
 * clss    = VariantType
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_variant_type_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_variant_type_new_maybe
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GVariantType* -> VariantType
 * module aliases:
 * local aliases:
 * 	- string -> str
 * overrides:
 */

module glib.VariantType;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import gtkc.paths;
private import gtkc.Loader;




/**
 * This section introduces the GVariant type system. It is based, in
 * large part, on the D-Bus type system, with two major changes and some minor
 * lifting of restrictions. The DBus
 * specification, therefore, provides a significant amount of
 * information that is useful when working with GVariant.
 *
 * The first major change with respect to the D-Bus type system is the
 * introduction of maybe (or "nullable") types. Any type in GVariant can be
 * converted to a maybe type, in which case, "nothing" (or "null") becomes a
 * valid value. Maybe types have been added by introducing the
 * character "m" to type strings.
 *
 * The second major change is that the GVariant type system supports the
 * concept of "indefinite types" -- types that are less specific than
 * the normal types found in D-Bus. For example, it is possible to speak
 * of "an array of any type" in GVariant, where the D-Bus type system
 * would require you to speak of "an array of integers" or "an array of
 * strings". Indefinite types have been added by introducing the
 * characters "*", "?" and
 * "r" to type strings.
 *
 * Finally, all arbitrary restrictions relating to the complexity of
 * types are lifted along with the restriction that dictionary entries
 * may only appear nested inside of arrays.
 *
 * Just as in D-Bus, GVariant types are described with strings ("type
 * strings"). Subject to the differences mentioned above, these strings
 * are of the same form as those found in DBus. Note, however: D-Bus
 * always works in terms of messages and therefore individual type
 * strings appear nowhere in its interface. Instead, "signatures"
 * are a concatenation of the strings of the type of each argument in a
 * message. GVariant deals with single values directly so GVariant type
 * strings always describe the type of exactly one value. This means
 * that a D-Bus signature string is generally not a valid GVariant type
 * string -- except in the case that it is the signature of a message
 * containing exactly one argument.
 *
 * An indefinite type is similar in spirit to what may be called an
 * abstract type in other type systems. No value can exist that has an
 * indefinite type as its type, but values can exist that have types
 * that are subtypes of indefinite types. That is to say,
 * g_variant_get_type() will never return an indefinite type, but
 * calling g_variant_is_of_type() with an indefinite type may return
 * TRUE. For example, you cannot have a value that represents "an
 * array of no particular type", but you can have an "array of integers"
 * which certainly matches the type of "an array of no particular type",
 * since "array of integers" is a subtype of "array of no particular
 * type".
 *
 * This is similar to how instances of abstract classes may not
 * directly exist in other type systems, but instances of their
 * non-abstract subtypes may. For example, in GTK, no object that has
 * the type of GtkBin can exist (since GtkBin is an abstract class),
 * but a GtkWindow can certainly be instantiated, and you would say
 * that the GtkWindow is a GtkBin (since GtkWindow is a subclass of
 * GtkBin).
 *
 * A detailed description of GVariant type strings is given here:
 *
 * GVariant Type Strings
 *
 *  A GVariant type string can be any of the following:
 *
 *  any basic type string (listed below)
 *
 *  "v", "r" or
 *  "*"
 *
 *  one of the characters 'a' or
 *  'm', followed by another type string
 *
 *  the character '(', followed by a concatenation
 *  of zero or more other type strings, followed by the character
 *  ')'
 *
 *  the character '{', followed by a basic type
 *  string (see below), followed by another type string, followed by
 *  the character '}'
 *
 *  A basic type string describes a basic type (as per
 *  g_variant_type_is_basic()) and is always a single
 *  character in length. The valid basic type strings are
 *  "b", "y",
 *  "n", "q",
 *  "i", "u",
 *  "x", "t",
 *  "h", "d",
 *  "s", "o",
 *  "g" and "?".
 *
 *  The above definition is recursive to arbitrary depth.
 *  "aaaaai" and "(ui(nq((y)))s)"
 *  are both valid type strings, as is
 *  "a(aa(ui)(qna{ya(yd)}))".
 *
 *  The meaning of each of the characters is as follows:
 *
 *  Character
 *
 *  Meaning
 *
 *  b
 *
 *  the type string of G_VARIANT_TYPE_BOOLEAN; a boolean value.
 *
 *  y
 *
 *  the type string of G_VARIANT_TYPE_BYTE; a byte.
 *
 *  n
 *
 *  the type string of G_VARIANT_TYPE_INT16; a signed 16 bit
 *  integer.
 *
 *  q
 *
 *  the type string of G_VARIANT_TYPE_UINT16; an unsigned 16 bit
 *  integer.
 *
 *  i
 *
 *  the type string of G_VARIANT_TYPE_INT32; a signed 32 bit
 *  integer.
 *
 *  u
 *
 *  the type string of G_VARIANT_TYPE_UINT32; an unsigned 32 bit
 *  integer.
 *
 *  x
 *
 *  the type string of G_VARIANT_TYPE_INT64; a signed 64 bit
 *  integer.
 *
 *  t
 *
 *  the type string of G_VARIANT_TYPE_UINT64; an unsigned 64 bit
 *  integer.
 *
 *  h
 *
 *  the type string of G_VARIANT_TYPE_HANDLE; a signed 32 bit
 *  value that, by convention, is used as an index into an array
 *  of file descriptors that are sent alongside a D-Bus message.
 *
 *  d
 *
 *  the type string of G_VARIANT_TYPE_DOUBLE; a double precision
 *  floating point value.
 *
 *  s
 *
 *  the type string of G_VARIANT_TYPE_STRING; a string.
 *
 *  o
 *
 *  the type string of G_VARIANT_TYPE_OBJECT_PATH; a string in
 *  the form of a D-Bus object path.
 *
 *  g
 *
 *  the type string of G_VARIANT_TYPE_STRING; a string in the
 *  form of a D-Bus type signature.
 *
 *  ?
 *
 *  the type string of G_VARIANT_TYPE_BASIC; an indefinite type
 *  that is a supertype of any of the basic types.
 *
 *  v
 *
 *  the type string of G_VARIANT_TYPE_VARIANT; a container type
 *  that contain any other type of value.
 *
 *  a
 *
 *  used as a prefix on another type string to mean an array of
 *  that type; the type string "ai", for
 *  example, is the type of an array of 32 bit signed integers.
 *
 *  m
 *
 *  used as a prefix on another type string to mean a "maybe", or
 *  "nullable", version of that type; the type string
 *  "ms", for example, is the type of a value
 *  that maybe contains a string, or maybe contains nothing.
 *
 *  ()
 *
 *  used to enclose zero or more other concatenated type strings
 *  to create a tuple type; the type string
 *  "(is)", for example, is the type of a pair
 *  of an integer and a string.
 *
 *  r
 *
 *  the type string of G_VARIANT_TYPE_TUPLE; an indefinite type
 *  that is a supertype of any tuple type, regardless of the
 *  number of items.
 *
 *  {}
 *
 *  used to enclose a basic type string concatenated with another
 *  type string to create a dictionary entry type, which usually
 *  appears inside of an array to form a dictionary; the type
 *  string "a{sd}", for example, is the type of
 *  a dictionary that maps strings to double precision floating
 *  point values.
 *
 *  The first type (the basic type) is the key type and the second
 *  type is the value type. The reason that the first type is
 *  restricted to being a basic type is so that it can easily be
 *  hashed.
 *
 *  *
 *
 *  the type string of G_VARIANT_TYPE_ANY; the indefinite type
 *  that is a supertype of all types. Note that, as with all type
 *  strings, this character represents exactly one type. It
 *  cannot be used inside of tuples to mean "any number of items".
 *
 *  Any type string of a container that contains an indefinite type is,
 *  itself, an indefinite type. For example, the type string
 *  "a*" (corresponding to G_VARIANT_TYPE_ARRAY) is
 *  an indefinite type that is a supertype of every array type.
 *  "(*s)" is a supertype of all tuples that
 *  contain exactly two items where the second item is a string.
 *
 *  "a{?*}" is an indefinite type that is a
 *  supertype of all arrays containing dictionary entries where the key
 *  is any basic type and the value is any type at all. This is, by
 *  definition, a dictionary, so this type string corresponds to
 *  G_VARIANT_TYPE_DICTIONARY. Note that, due to the restriction that
 *  the key of a dictionary entry must be a basic type,
 *  "{**}" is not a valid type string.
 */
public class VariantType
{
	
	/** the main Gtk struct */
	protected GVariantType* gVariantType;
	
	
	public GVariantType* getVariantTypeStruct()
	{
		return gVariantType;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gVariantType;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GVariantType* gVariantType)
	{
		this.gVariantType = gVariantType;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GLIB) && gVariantType !is null )
		{
			g_variant_type_free(gVariantType);
		}
	}
	
	/**
	 * Constructs the type corresponding to a maybe instance containing
	 * type type or Nothing.
	 * It is appropriate to call g_variant_type_free() on the return value.
	 * Since 2.24
	 * Params:
	 * element = a GVariantType
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static VariantType newMaybe(VariantType element)
	{
		// GVariantType * g_variant_type_new_maybe (const GVariantType *element);
		auto p = g_variant_type_new_maybe((element is null) ? null : element.getVariantTypeStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_type_new_maybe((element is null) ? null : element.getVariantTypeStruct())");
		}
		return new VariantType(cast(GVariantType*) p);
	}
	
	/**
	 */
	
	/**
	 * Frees a GVariantType that was allocated with
	 * g_variant_type_copy(), g_variant_type_new() or one of the container
	 * type constructor functions.
	 * In the case that type is NULL, this function does nothing.
	 * Since 2.24
	 */
	public void free()
	{
		// void g_variant_type_free (GVariantType *type);
		g_variant_type_free(gVariantType);
	}
	
	/**
	 * Makes a copy of a GVariantType. It is appropriate to call
	 * g_variant_type_free() on the return value. type may not be NULL.
	 * Since 2.24. [transfer full]
	 * Returns: a new GVariantType
	 */
	public VariantType copy()
	{
		// GVariantType * g_variant_type_copy (const GVariantType *type);
		auto p = g_variant_type_copy(gVariantType);
		
		if(p is null)
		{
			return null;
		}
		
		return new VariantType(cast(GVariantType*) p);
	}
	
	/**
	 * Creates a new GVariantType corresponding to the type string given
	 * by type_string. It is appropriate to call g_variant_type_free() on
	 * the return value.
	 * It is a programmer error to call this function with an invalid type
	 * string. Use g_variant_type_string_is_valid() if you are unsure.
	 * Since 2.24
	 * Params:
	 * typeString = a valid GVariant type string
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string typeString)
	{
		// GVariantType * g_variant_type_new (const gchar *type_string);
		auto p = g_variant_type_new(Str.toStringz(typeString));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_type_new(Str.toStringz(typeString))");
		}
		this(cast(GVariantType*) p);
	}
	
	/**
	 * Checks if type_string is a valid GVariant type string. This call is
	 * equivalent to calling g_variant_type_string_scan() and confirming
	 * that the following character is a nul terminator.
	 * Since 2.24
	 * Params:
	 * typeString = a pointer to any string
	 * Returns: TRUE if type_string is exactly one valid type string
	 */
	public static int stringIsValid(string typeString)
	{
		// gboolean g_variant_type_string_is_valid (const gchar *type_string);
		return g_variant_type_string_is_valid(Str.toStringz(typeString));
	}
	
	/**
	 * Scan for a single complete and valid GVariant type string in string.
	 * The memory pointed to by limit (or bytes beyond it) is never
	 * accessed.
	 * If a valid type string is found, endptr is updated to point to the
	 * first character past the end of the string that was found and TRUE
	 * is returned.
	 * If there is no valid type string starting at string, or if the type
	 * string does not end before limit then FALSE is returned.
	 * For the simple case of checking if a string is a valid type string,
	 * see g_variant_type_string_is_valid().
	 * Since 2.24
	 * Params:
	 * string = a pointer to any string
	 * limit = the end of string, or NULL. [allow-none]
	 * endptr = location to store the end pointer, or NULL. [out][allow-none]
	 * Returns: TRUE if a valid type string was found
	 */
	public static int stringScan(string str, string limit, out string endptr)
	{
		// gboolean g_variant_type_string_scan (const gchar *string,  const gchar *limit,  const gchar **endptr);
		char* outendptr = null;
		
		auto p = g_variant_type_string_scan(Str.toStringz(str), Str.toStringz(limit), &outendptr);
		
		endptr = Str.toString(outendptr);
		return p;
	}
	
	/**
	 * Returns the length of the type string corresponding to the given
	 * type. This function must be used to determine the valid extent of
	 * the memory region returned by g_variant_type_peek_string().
	 * Since 2.24
	 * Returns: the length of the corresponding type string
	 */
	public gsize getStringLength()
	{
		// gsize g_variant_type_get_string_length (const GVariantType *type);
		return g_variant_type_get_string_length(gVariantType);
	}
	
	/**
	 * Returns the type string corresponding to the given type. The
	 * result is not nul-terminated; in order to determine its length you
	 * must call g_variant_type_get_string_length().
	 * To get a nul-terminated string, see g_variant_type_dup_string().
	 * Since 2.24
	 * Returns: the corresponding type string (not nul-terminated)
	 */
	public string peekString()
	{
		// const gchar * g_variant_type_peek_string (const GVariantType *type);
		return Str.toString(g_variant_type_peek_string(gVariantType));
	}
	
	/**
	 * Returns a newly-allocated copy of the type string corresponding to
	 * type. The returned string is nul-terminated. It is appropriate to
	 * call g_free() on the return value.
	 * Since 2.24. [transfer full]
	 * Returns: the corresponding type string
	 */
	public string dupString()
	{
		// gchar * g_variant_type_dup_string (const GVariantType *type);
		return Str.toString(g_variant_type_dup_string(gVariantType));
	}
	
	/**
	 * Determines if the given type is definite (ie: not indefinite).
	 * A type is definite if its type string does not contain any indefinite
	 * type characters ('*', '?', or 'r').
	 * A GVariant instance may not have an indefinite type, so calling
	 * this function on the result of g_variant_get_type() will always
	 * result in TRUE being returned. Calling this function on an
	 * indefinite type like G_VARIANT_TYPE_ARRAY, however, will result in
	 * FALSE being returned.
	 * Since 2.24
	 * Returns: TRUE if type is definite
	 */
	public int isDefinite()
	{
		// gboolean g_variant_type_is_definite (const GVariantType *type);
		return g_variant_type_is_definite(gVariantType);
	}
	
	/**
	 * Determines if the given type is a container type.
	 * Container types are any array, maybe, tuple, or dictionary
	 * entry types plus the variant type.
	 * This function returns TRUE for any indefinite type for which every
	 * definite subtype is a container -- G_VARIANT_TYPE_ARRAY, for
	 * example.
	 * Since 2.24
	 * Returns: TRUE if type is a container type
	 */
	public int isContainer()
	{
		// gboolean g_variant_type_is_container (const GVariantType *type);
		return g_variant_type_is_container(gVariantType);
	}
	
	/**
	 * Determines if the given type is a basic type.
	 * Basic types are booleans, bytes, integers, doubles, strings, object
	 * paths and signatures.
	 * Only a basic type may be used as the key of a dictionary entry.
	 * This function returns FALSE for all indefinite types except
	 * G_VARIANT_TYPE_BASIC.
	 * Since 2.24
	 * Returns: TRUE if type is a basic type
	 */
	public int isBasic()
	{
		// gboolean g_variant_type_is_basic (const GVariantType *type);
		return g_variant_type_is_basic(gVariantType);
	}
	
	/**
	 * Determines if the given type is a maybe type. This is true if the
	 * type string for type starts with an 'm'.
	 * This function returns TRUE for any indefinite type for which every
	 * definite subtype is a maybe type -- G_VARIANT_TYPE_MAYBE, for
	 * example.
	 * Since 2.24
	 * Returns: TRUE if type is a maybe type
	 */
	public int isMaybe()
	{
		// gboolean g_variant_type_is_maybe (const GVariantType *type);
		return g_variant_type_is_maybe(gVariantType);
	}
	
	/**
	 * Determines if the given type is an array type. This is true if the
	 * type string for type starts with an 'a'.
	 * This function returns TRUE for any indefinite type for which every
	 * definite subtype is an array type -- G_VARIANT_TYPE_ARRAY, for
	 * example.
	 * Since 2.24
	 * Returns: TRUE if type is an array type
	 */
	public int isArray()
	{
		// gboolean g_variant_type_is_array (const GVariantType *type);
		return g_variant_type_is_array(gVariantType);
	}
	
	/**
	 * Determines if the given type is a tuple type. This is true if the
	 * type string for type starts with a '(' or if type is
	 * G_VARIANT_TYPE_TUPLE.
	 * This function returns TRUE for any indefinite type for which every
	 * definite subtype is a tuple type -- G_VARIANT_TYPE_TUPLE, for
	 * example.
	 * Since 2.24
	 * Returns: TRUE if type is a tuple type
	 */
	public int isTuple()
	{
		// gboolean g_variant_type_is_tuple (const GVariantType *type);
		return g_variant_type_is_tuple(gVariantType);
	}
	
	/**
	 * Determines if the given type is a dictionary entry type. This is
	 * true if the type string for type starts with a '{'.
	 * This function returns TRUE for any indefinite type for which every
	 * definite subtype is a dictionary entry type --
	 * G_VARIANT_TYPE_DICT_ENTRY, for example.
	 * Since 2.24
	 * Returns: TRUE if type is a dictionary entry type
	 */
	public int isDictEntry()
	{
		// gboolean g_variant_type_is_dict_entry (const GVariantType *type);
		return g_variant_type_is_dict_entry(gVariantType);
	}
	
	/**
	 * Determines if the given type is the variant type.
	 * Since 2.24
	 * Returns: TRUE if type is the variant type
	 */
	public int isVariant()
	{
		// gboolean g_variant_type_is_variant (const GVariantType *type);
		return g_variant_type_is_variant(gVariantType);
	}
	
	/**
	 * Hashes type.
	 * The argument type of type is only gconstpointer to allow use with
	 * GHashTable without function pointer casting. A valid
	 * GVariantType must be provided.
	 * Since 2.24
	 * Params:
	 * type = a GVariantType. [type GVariantType]
	 * Returns: the hash value
	 */
	public static uint hash(void* type)
	{
		// guint g_variant_type_hash (gconstpointer type);
		return g_variant_type_hash(type);
	}
	
	/**
	 * Compares type1 and type2 for equality.
	 * Only returns TRUE if the types are exactly equal. Even if one type
	 * is an indefinite type and the other is a subtype of it, FALSE will
	 * be returned if they are not exactly equal. If you want to check for
	 * subtypes, use g_variant_type_is_subtype_of().
	 * The argument types of type1 and type2 are only gconstpointer to
	 * allow use with GHashTable without function pointer casting. For
	 * both arguments, a valid GVariantType must be provided.
	 * Since 2.24
	 * Params:
	 * type1 = a GVariantType. [type GVariantType]
	 * type2 = a GVariantType. [type GVariantType]
	 * Returns: TRUE if type1 and type2 are exactly equal
	 */
	public static int equal(void* type1, void* type2)
	{
		// gboolean g_variant_type_equal (gconstpointer type1,  gconstpointer type2);
		return g_variant_type_equal(type1, type2);
	}
	
	/**
	 * Checks if type is a subtype of supertype.
	 * This function returns TRUE if type is a subtype of supertype. All
	 * types are considered to be subtypes of themselves. Aside from that,
	 * only indefinite types can have subtypes.
	 * Since 2.24
	 * Params:
	 * type = a GVariantType
	 * supertype = a GVariantType
	 * Returns: TRUE if type is a subtype of supertype
	 */
	public int isSubtypeOf(VariantType supertype)
	{
		// gboolean g_variant_type_is_subtype_of (const GVariantType *type,  const GVariantType *supertype);
		return g_variant_type_is_subtype_of(gVariantType, (supertype is null) ? null : supertype.getVariantTypeStruct());
	}
	
	/**
	 * Constructs the type corresponding to an array of elements of the
	 * type type.
	 * It is appropriate to call g_variant_type_free() on the return value.
	 * Since 2.24. [transfer full]
	 * Params:
	 * element = a GVariantType
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (VariantType element)
	{
		// GVariantType * g_variant_type_new_array (const GVariantType *element);
		auto p = g_variant_type_new_array((element is null) ? null : element.getVariantTypeStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_type_new_array((element is null) ? null : element.getVariantTypeStruct())");
		}
		this(cast(GVariantType*) p);
	}
	
	/**
	 * Constructs a new tuple type, from items.
	 * length is the number of items in items, or -1 to indicate that
	 * items is NULL-terminated.
	 * It is appropriate to call g_variant_type_free() on the return value.
	 * Since 2.24. [transfer full]
	 * Params:
	 * items = an array of GVariantTypes, one for each item. [array length=length]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (VariantType[] items)
	{
		// GVariantType * g_variant_type_new_tuple (const GVariantType * const *items,  gint length);
		
		GVariantType*[] itemsArray = new GVariantType*[items.length];
		for ( int i = 0; i < items.length ; i++ )
		{
			itemsArray[i] = items[i].getVariantTypeStruct();
		}
		
		auto p = g_variant_type_new_tuple(itemsArray.ptr, cast(int) items.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_type_new_tuple(itemsArray.ptr, cast(int) items.length)");
		}
		this(cast(GVariantType*) p);
	}
	
	/**
	 * Constructs the type corresponding to a dictionary entry with a key
	 * of type key and a value of type value.
	 * It is appropriate to call g_variant_type_free() on the return value.
	 * Since 2.24. [transfer full]
	 * Params:
	 * key = a basic GVariantType
	 * value = a GVariantType
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (VariantType key, VariantType value)
	{
		// GVariantType * g_variant_type_new_dict_entry (const GVariantType *key,  const GVariantType *value);
		auto p = g_variant_type_new_dict_entry((key is null) ? null : key.getVariantTypeStruct(), (value is null) ? null : value.getVariantTypeStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_type_new_dict_entry((key is null) ? null : key.getVariantTypeStruct(), (value is null) ? null : value.getVariantTypeStruct())");
		}
		this(cast(GVariantType*) p);
	}
	
	/**
	 * Determines the element type of an array or maybe type.
	 * This function may only be used with array or maybe types.
	 * Since 2.24. [transfer none]
	 * Returns: the element type of type
	 */
	public VariantType element()
	{
		// const GVariantType * g_variant_type_element (const GVariantType *type);
		auto p = g_variant_type_element(gVariantType);
		
		if(p is null)
		{
			return null;
		}
		
		return new VariantType(cast(GVariantType*) p);
	}
	
	/**
	 * Determines the number of items contained in a tuple or
	 * dictionary entry type.
	 * This function may only be used with tuple or dictionary entry types,
	 * but must not be used with the generic tuple type
	 * G_VARIANT_TYPE_TUPLE.
	 * In the case of a dictionary entry type, this function will always
	 * return 2.
	 * Since 2.24
	 * Returns: the number of items in type
	 */
	public gsize nItems()
	{
		// gsize g_variant_type_n_items (const GVariantType *type);
		return g_variant_type_n_items(gVariantType);
	}
	
	/**
	 * Determines the first item type of a tuple or dictionary entry
	 * type.
	 * This function may only be used with tuple or dictionary entry types,
	 * but must not be used with the generic tuple type
	 * G_VARIANT_TYPE_TUPLE.
	 * In the case of a dictionary entry type, this returns the type of
	 * the key.
	 * NULL is returned in case of type being G_VARIANT_TYPE_UNIT.
	 * This call, together with g_variant_type_next() provides an iterator
	 * interface over tuple and dictionary entry types.
	 * Since 2.24. [transfer none]
	 * Returns: the first item type of type, or NULL
	 */
	public VariantType first()
	{
		// const GVariantType * g_variant_type_first (const GVariantType *type);
		auto p = g_variant_type_first(gVariantType);
		
		if(p is null)
		{
			return null;
		}
		
		return new VariantType(cast(GVariantType*) p);
	}
	
	/**
	 * Determines the next item type of a tuple or dictionary entry
	 * type.
	 * type must be the result of a previous call to
	 * g_variant_type_first() or g_variant_type_next().
	 * If called on the key type of a dictionary entry then this call
	 * returns the value type. If called on the value type of a dictionary
	 * entry then this call returns NULL.
	 * For tuples, NULL is returned when type is the last item in a tuple.
	 * Since 2.24. [transfer none]
	 * Returns: the next GVariantType after type, or NULL
	 */
	public VariantType next()
	{
		// const GVariantType * g_variant_type_next (const GVariantType *type);
		auto p = g_variant_type_next(gVariantType);
		
		if(p is null)
		{
			return null;
		}
		
		return new VariantType(cast(GVariantType*) p);
	}
	
	/**
	 * Determines the key type of a dictionary entry type.
	 * This function may only be used with a dictionary entry type. Other
	 * than the additional restriction, this call is equivalent to
	 * g_variant_type_first().
	 * Since 2.24. [transfer none]
	 * Returns: the key type of the dictionary entry
	 */
	public VariantType key()
	{
		// const GVariantType * g_variant_type_key (const GVariantType *type);
		auto p = g_variant_type_key(gVariantType);
		
		if(p is null)
		{
			return null;
		}
		
		return new VariantType(cast(GVariantType*) p);
	}
	
	/**
	 * Determines the value type of a dictionary entry type.
	 * This function may only be used with a dictionary entry type.
	 * Since 2.24. [transfer none]
	 * Returns: the value type of the dictionary entry
	 */
	public VariantType value()
	{
		// const GVariantType * g_variant_type_value (const GVariantType *type);
		auto p = g_variant_type_value(gVariantType);
		
		if(p is null)
		{
			return null;
		}
		
		return new VariantType(cast(GVariantType*) p);
	}
}
