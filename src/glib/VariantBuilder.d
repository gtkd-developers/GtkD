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
 * outFile = VariantBuilder
 * strct   = GVariantBuilder
 * realStrct=
 * ctorStrct=
 * clss    = VariantBuilder
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_variant_builder_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.Variant
 * 	- glib.VariantType
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GVariant* -> Variant
 * 	- GVariantBuilder* -> VariantBuilder
 * 	- GVariantType* -> VariantType
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.VariantBuilder;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import gtkc.paths;
private import gtkc.Loader;




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
public class VariantBuilder
{
	
	/** the main Gtk struct */
	protected GVariantBuilder* gVariantBuilder;
	
	
	public GVariantBuilder* getVariantBuilderStruct()
	{
		return gVariantBuilder;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gVariantBuilder;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GVariantBuilder* gVariantBuilder)
	{
		this.gVariantBuilder = gVariantBuilder;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GLIB) && gVariantBuilder !is null )
		{
			g_variant_builder_unref(gVariantBuilder);
		}
	}
	
	/**
	 */
	
	/**
	 * Decreases the reference count on builder.
	 * In the event that there are no more references, releases all memory
	 * associated with the GVariantBuilder.
	 * Don't call this on stack-allocated GVariantBuilder instances or bad
	 * things will happen.
	 * Since 2.24
	 */
	public void unref()
	{
		// void g_variant_builder_unref (GVariantBuilder *builder);
		g_variant_builder_unref(gVariantBuilder);
	}
	
	/**
	 * Increases the reference count on builder.
	 * Don't call this on stack-allocated GVariantBuilder instances or bad
	 * things will happen.
	 * Since 2.24
	 * Returns: a new reference to builder. [transfer full]
	 */
	public VariantBuilder doref()
	{
		// GVariantBuilder * g_variant_builder_ref (GVariantBuilder *builder);
		auto p = g_variant_builder_ref(gVariantBuilder);
		
		if(p is null)
		{
			return null;
		}
		
		return new VariantBuilder(cast(GVariantBuilder*) p);
	}
	
	/**
	 * Allocates and initialises a new GVariantBuilder.
	 * You should call g_variant_builder_unref() on the return value when it
	 * is no longer needed. The memory will not be automatically freed by
	 * any other call.
	 * In most cases it is easier to place a GVariantBuilder directly on
	 * the stack of the calling function and initialise it with
	 * g_variant_builder_init().
	 * Since 2.24
	 * Params:
	 * type = a container type
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (VariantType type)
	{
		// GVariantBuilder * g_variant_builder_new (const GVariantType *type);
		auto p = g_variant_builder_new((type is null) ? null : type.getVariantTypeStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_variant_builder_new((type is null) ? null : type.getVariantTypeStruct())");
		}
		this(cast(GVariantBuilder*) p);
	}
	
	/**
	 * Initialises a GVariantBuilder structure.
	 * type must be non-NULL. It specifies the type of container to
	 * construct. It can be an indefinite type such as
	 * G_VARIANT_TYPE_ARRAY or a definite type such as "as" or "(ii)".
	 * Maybe, array, tuple, dictionary entry and variant-typed values may be
	 * constructed.
	 * After the builder is initialised, values are added using
	 * g_variant_builder_add_value() or g_variant_builder_add().
	 * After all the child values are added, g_variant_builder_end() frees
	 * the memory associated with the builder and returns the GVariant that
	 * was created.
	 * This function completely ignores the previous contents of builder.
	 * On one hand this means that it is valid to pass in completely
	 * uninitialised memory. On the other hand, this means that if you are
	 * initialising over top of an existing GVariantBuilder you need to
	 * first call g_variant_builder_clear() in order to avoid leaking
	 * memory.
	 * You must not call g_variant_builder_ref() or
	 * g_variant_builder_unref() on a GVariantBuilder that was initialised
	 * with this function. If you ever pass a reference to a
	 * GVariantBuilder outside of the control of your own code then you
	 * should assume that the person receiving that reference may try to use
	 * reference counting; you should use g_variant_builder_new() instead of
	 * this function.
	 * Since 2.24
	 * Params:
	 * type = a container type
	 */
	public void init(VariantType type)
	{
		// void g_variant_builder_init (GVariantBuilder *builder,  const GVariantType *type);
		g_variant_builder_init(gVariantBuilder, (type is null) ? null : type.getVariantTypeStruct());
	}
	
	/**
	 * Releases all memory associated with a GVariantBuilder without
	 * freeing the GVariantBuilder structure itself.
	 * It typically only makes sense to do this on a stack-allocated
	 * GVariantBuilder if you want to abort building the value part-way
	 * through. This function need not be called if you call
	 * g_variant_builder_end() and it also doesn't need to be called on
	 * builders allocated with g_variant_builder_new (see
	 * g_variant_builder_unref() for that).
	 * This function leaves the GVariantBuilder structure set to all-zeros.
	 * It is valid to call this function on either an initialised
	 * GVariantBuilder or one that is set to all-zeros but it is not valid
	 * to call this function on uninitialised memory.
	 * Since 2.24
	 */
	public void clear()
	{
		// void g_variant_builder_clear (GVariantBuilder *builder);
		g_variant_builder_clear(gVariantBuilder);
	}
	
	/**
	 * Adds value to builder.
	 * It is an error to call this function in any way that would create an
	 * inconsistent value to be constructed. Some examples of this are
	 * putting different types of items into an array, putting the wrong
	 * types or number of items in a tuple, putting more than one value into
	 * a variant, etc.
	 * If value is a floating reference (see g_variant_ref_sink()),
	 * the builder instance takes ownership of value.
	 * Since 2.24
	 * Params:
	 * value = a GVariant
	 */
	public void addValue(Variant value)
	{
		// void g_variant_builder_add_value (GVariantBuilder *builder,  GVariant *value);
		g_variant_builder_add_value(gVariantBuilder, (value is null) ? null : value.getVariantStruct());
	}
	
	/**
	 * Ends the builder process and returns the constructed value.
	 * It is not permissible to use builder in any way after this call
	 * except for reference counting operations (in the case of a
	 * heap-allocated GVariantBuilder) or by reinitialising it with
	 * g_variant_builder_init() (in the case of stack-allocated).
	 * It is an error to call this function in any way that would create an
	 * inconsistent value to be constructed (ie: insufficient number of
	 * items added to a container with a specific number of children
	 * required). It is also an error to call this function if the builder
	 * was created with an indefinite array or maybe type and no children
	 * have been added; in this case it is impossible to infer the type of
	 * the empty array.
	 * Since 2.24
	 * Returns: a new, floating, GVariant. [transfer none]
	 */
	public Variant end()
	{
		// GVariant * g_variant_builder_end (GVariantBuilder *builder);
		auto p = g_variant_builder_end(gVariantBuilder);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Opens a subcontainer inside the given builder. When done adding
	 * items to the subcontainer, g_variant_builder_close() must be called.
	 * It is an error to call this function in any way that would cause an
	 * inconsistent value to be constructed (ie: adding too many values or
	 * a value of an incorrect type).
	 * Since 2.24
	 * Params:
	 * type = a GVariantType
	 */
	public void open(VariantType type)
	{
		// void g_variant_builder_open (GVariantBuilder *builder,  const GVariantType *type);
		g_variant_builder_open(gVariantBuilder, (type is null) ? null : type.getVariantTypeStruct());
	}
	
	/**
	 * Closes the subcontainer inside the given builder that was opened by
	 * the most recent call to g_variant_builder_open().
	 * It is an error to call this function in any way that would create an
	 * inconsistent value to be constructed (ie: too few values added to the
	 * subcontainer).
	 * Since 2.24
	 */
	public void close()
	{
		// void g_variant_builder_close (GVariantBuilder *builder);
		g_variant_builder_close(gVariantBuilder);
	}
}
