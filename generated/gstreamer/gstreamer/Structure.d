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


module gstreamer.Structure;

private import glib.ConstructionException;
private import glib.Date;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Value;
private import gobject.ValueArray;
private import gstreamer.DateTime;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import gtkd.Loader;


/**
 * A #GstStructure is a collection of key/value pairs. The keys are expressed as
 * GQuarks and the values can be of any GType.
 * 
 * In addition to the key/value pairs, a #GstStructure also has a name. The name
 * starts with a letter and can be filled by letters, numbers and any of
 * "/-_.:".
 * 
 * #GstStructure is used by various GStreamer subsystems to store information in
 * a flexible and extensible way. A #GstStructure does not have a refcount
 * because it usually is part of a higher level object such as #GstCaps,
 * #GstMessage, #GstEvent, #GstQuery. It provides a means to enforce mutability
 * using the refcount of the parent with the gst_structure_set_parent_refcount()
 * method.
 * 
 * A #GstStructure can be created with gst_structure_new_empty() or
 * gst_structure_new(), which both take a name and an optional set of key/value
 * pairs along with the types of the values.
 * 
 * Field values can be changed with gst_structure_set_value() or
 * gst_structure_set().
 * 
 * Field values can be retrieved with gst_structure_get_value() or the more
 * convenient gst_structure_get_*() functions.
 * 
 * Fields can be removed with gst_structure_remove_field() or
 * gst_structure_remove_fields().
 * 
 * Strings in structures must be ASCII or UTF-8 encoded. Other encodings are not
 * allowed. Strings may be %NULL however.
 * 
 * ## The serialization format
 * 
 * GstStructure serialization format serialize the GstStructure name,
 * keys/GType/values in a comma separated list with the structure name as first
 * field without value followed by separated key/value pairs in the form
 * `key=value`, for example:
 * 
 * ```
 * a-structure, key=value
 * ````
 * 
 * The values type will be inferred if not explicitly specified with the
 * `(GTypeName)value` syntax, for example the following struct will have one
 * field called 'is-string' which has the string 'true' as a value:
 * 
 * ```
 * a-struct, field-is-string=(string)true, field-is-boolean=true
 * ```
 * 
 * *Note*: without specifying `(string), `field-is-string` type would have been
 * inferred as boolean.
 * 
 * *Note*: we specified `(string)` as a type even if `gchararray` is the actual
 * GType name as for convenience some well known types have been aliased or
 * abbreviated.
 * 
 * To avoid specifying the type, you can give some hints to the "type system".
 * For example to specify a value as a double, you should add a decimal (ie. `1`
 * is an `int` while `1.0` is a `double`).
 * 
 * *Note*: when a structure is serialized with #gst_structure_to_string, all
 * values are explicitly typed.
 * 
 * Some types have special delimiters:
 * 
 * - [GstValueArray](GST_TYPE_ARRAY) are inside curly brackets (`{` and `}`).
 * For example `a-structure, array={1, 2, 3}`
 * - Ranges are inside brackets (`[` and `]`). For example `a-structure,
 * range=[1, 6, 2]` 1 being the min value, 6 the maximum and 2 the step. To
 * specify a #GST_TYPE_INT64_RANGE you need to explicitly specify it like:
 * `a-structure, a-int64-range=(gint64) [1, 5]`
 * - [GstValueList](GST_TYPE_LIST) are inside "less and greater than" (`<` and
 * `>`). For example `a-structure, list=<1, 2, 3>
 * 
 * Structures are delimited either by a null character `\0` or a semicolon `;`
 * the latter allowing to store multiple structures in the same string (see
 * #GstCaps).
 * 
 * Quotes are used as "default" delimiters and can be used around any types that
 * don't use other delimiters (for example `a-struct, i=(int)"1"`). They are use
 * to allow adding spaces or special characters (such as delimiters,
 * semicolumns, etc..) inside strings and you can use backslashes `\` to escape
 * characters inside them, for example:
 * 
 * ```
 * a-struct, special="\"{[(;)]}\" can be used inside quotes"
 * ```
 * 
 * They also allow for nested structure, such as:
 * 
 * ```
 * a-struct, nested=(GstStructure)"nested-struct, nested=true"
 * ```
 * 
 * Since 1.20, nested structures and caps can be specified using brackets (`[`
 * and `]`), for example:
 * 
 * ```
 * a-struct, nested=[nested-struct, nested=true]
 * ```
 * 
 * > *note*: gst_structure_to_string() won't use that syntax for backward
 * > compatibility reason, gst_structure_serialize() has been added for
 * > that purpose.
 */
public class Structure
{
	/** the main Gtk struct */
	protected GstStructure* gstStructure;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstStructure* getStructureStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstStructure;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstStructure;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstStructure* gstStructure, bool ownedRef = false)
	{
		this.gstStructure = gstStructure;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			gst_structure_free(gstStructure);
	}

	public static Structure fromString(string name)
	{
		auto p = gst_structure_new_from_string(Str.toStringz(name));

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_structure_new_from_string(Str.toStringz(name))");
		}

		return new Structure(cast(GstStructure*)p); //, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_structure_get_type();
	}

	/**
	 * Creates a #GstStructure from a string representation.
	 * If end is not %NULL, a pointer to the place inside the given string
	 * where parsing ended will be returned.
	 *
	 * Free-function: gst_structure_free
	 *
	 * Params:
	 *     string_ = a string representation of a #GstStructure.
	 *     end = pointer to store the end of the string in.
	 *
	 * Returns: a new #GstStructure or %NULL
	 *     when the string could not be parsed. Free with
	 *     gst_structure_free() after use.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_, out string end)
	{
		char* outend = null;

		auto __p = gst_structure_from_string(Str.toStringz(string_), &outend);

		if(__p is null)
		{
			throw new ConstructionException("null returned by from_string");
		}

		end = Str.toString(outend);

		this(cast(GstStructure*) __p);
	}

	/**
	 * Creates a new, empty #GstStructure with the given @name.
	 *
	 * See gst_structure_set_name() for constraints on the @name parameter.
	 *
	 * Free-function: gst_structure_free
	 *
	 * Params:
	 *     name = name of new structure
	 *
	 * Returns: a new, empty #GstStructure
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name)
	{
		auto __p = gst_structure_new_empty(Str.toStringz(name));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_empty");
		}

		this(cast(GstStructure*) __p);
	}

	/**
	 * Creates a new, empty #GstStructure with the given name as a GQuark.
	 *
	 * Free-function: gst_structure_free
	 *
	 * Params:
	 *     quark = name of new structure
	 *
	 * Returns: a new, empty #GstStructure
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GQuark quark)
	{
		auto __p = gst_structure_new_id_empty(quark);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_id_empty");
		}

		this(cast(GstStructure*) __p);
	}

	/**
	 * Creates a new #GstStructure with the given @name.  Structure fields
	 * are set according to the varargs in a manner similar to
	 * gst_structure_new().
	 *
	 * See gst_structure_set_name() for constraints on the @name parameter.
	 *
	 * Free-function: gst_structure_free
	 *
	 * Params:
	 *     name = name of new structure
	 *     firstfield = name of first field to set
	 *     varargs = variable argument list
	 *
	 * Returns: a new #GstStructure
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string firstfield, void* varargs)
	{
		auto __p = gst_structure_new_valist(Str.toStringz(name), Str.toStringz(firstfield), varargs);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_valist");
		}

		this(cast(GstStructure*) __p);
	}

	/**
	 * Tries intersecting @struct1 and @struct2 and reports whether the result
	 * would not be empty.
	 *
	 * Params:
	 *     struct2 = a #GstStructure
	 *
	 * Returns: %TRUE if intersection would not be empty
	 */
	public bool canIntersect(Structure struct2)
	{
		return gst_structure_can_intersect(gstStructure, (struct2 is null) ? null : struct2.getStructureStruct()) != 0;
	}

	/**
	 * Duplicates a #GstStructure and all its fields and values.
	 *
	 * Free-function: gst_structure_free
	 *
	 * Returns: a new #GstStructure.
	 */
	public Structure copy()
	{
		auto __p = gst_structure_copy(gstStructure);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) __p, true);
	}

	/**
	 * Calls the provided function once for each field in the #GstStructure. In
	 * contrast to gst_structure_foreach(), the function may modify the fields.
	 * In contrast to gst_structure_map_in_place(), the field is removed from
	 * the structure if %FALSE is returned from the function.
	 * The structure must be mutable.
	 *
	 * Params:
	 *     func = a function to call for each field
	 *     userData = private data
	 *
	 * Since: 1.6
	 */
	public void filterAndMapInPlace(GstStructureFilterMapFunc func, void* userData)
	{
		gst_structure_filter_and_map_in_place(gstStructure, func, userData);
	}

	/**
	 * Fixate all values in @structure using gst_value_fixate().
	 * @structure will be modified in-place and should be writable.
	 */
	public void fixate()
	{
		gst_structure_fixate(gstStructure);
	}

	/**
	 * Fixates a #GstStructure by changing the given field with its fixated value.
	 *
	 * Params:
	 *     fieldName = a field in @structure
	 *
	 * Returns: %TRUE if the structure field could be fixated
	 */
	public bool fixateField(string fieldName)
	{
		return gst_structure_fixate_field(gstStructure, Str.toStringz(fieldName)) != 0;
	}

	/**
	 * Fixates a #GstStructure by changing the given @field_name field to the given
	 * @target boolean if that field is not fixed yet.
	 *
	 * Params:
	 *     fieldName = a field in @structure
	 *     target = the target value of the fixation
	 *
	 * Returns: %TRUE if the structure could be fixated
	 */
	public bool fixateFieldBoolean(string fieldName, bool target)
	{
		return gst_structure_fixate_field_boolean(gstStructure, Str.toStringz(fieldName), target) != 0;
	}

	/**
	 * Fixates a #GstStructure by changing the given field to the nearest
	 * double to @target that is a subset of the existing field.
	 *
	 * Params:
	 *     fieldName = a field in @structure
	 *     target = the target value of the fixation
	 *
	 * Returns: %TRUE if the structure could be fixated
	 */
	public bool fixateFieldNearestDouble(string fieldName, double target)
	{
		return gst_structure_fixate_field_nearest_double(gstStructure, Str.toStringz(fieldName), target) != 0;
	}

	/**
	 * Fixates a #GstStructure by changing the given field to the nearest
	 * fraction to @target_numerator/@target_denominator that is a subset
	 * of the existing field.
	 *
	 * Params:
	 *     fieldName = a field in @structure
	 *     targetNumerator = The numerator of the target value of the fixation
	 *     targetDenominator = The denominator of the target value of the fixation
	 *
	 * Returns: %TRUE if the structure could be fixated
	 */
	public bool fixateFieldNearestFraction(string fieldName, int targetNumerator, int targetDenominator)
	{
		return gst_structure_fixate_field_nearest_fraction(gstStructure, Str.toStringz(fieldName), targetNumerator, targetDenominator) != 0;
	}

	/**
	 * Fixates a #GstStructure by changing the given field to the nearest
	 * integer to @target that is a subset of the existing field.
	 *
	 * Params:
	 *     fieldName = a field in @structure
	 *     target = the target value of the fixation
	 *
	 * Returns: %TRUE if the structure could be fixated
	 */
	public bool fixateFieldNearestInt(string fieldName, int target)
	{
		return gst_structure_fixate_field_nearest_int(gstStructure, Str.toStringz(fieldName), target) != 0;
	}

	/**
	 * Fixates a #GstStructure by changing the given @field_name field to the given
	 * @target string if that field is not fixed yet.
	 *
	 * Params:
	 *     fieldName = a field in @structure
	 *     target = the target value of the fixation
	 *
	 * Returns: %TRUE if the structure could be fixated
	 */
	public bool fixateFieldString(string fieldName, string target)
	{
		return gst_structure_fixate_field_string(gstStructure, Str.toStringz(fieldName), Str.toStringz(target)) != 0;
	}

	alias foreac = foreach_;
	/**
	 * Calls the provided function once for each field in the #GstStructure. The
	 * function must not modify the fields. Also see gst_structure_map_in_place()
	 * and gst_structure_filter_and_map_in_place().
	 *
	 * Params:
	 *     func = a function to call for each field
	 *     userData = private data
	 *
	 * Returns: %TRUE if the supplied function returns %TRUE For each of the fields,
	 *     %FALSE otherwise.
	 */
	public bool foreach_(GstStructureForeachFunc func, void* userData)
	{
		return gst_structure_foreach(gstStructure, func, userData) != 0;
	}

	/**
	 * Frees a #GstStructure and all its fields and values. The structure must not
	 * have a parent when this function is called.
	 */
	public void free()
	{
		gst_structure_free(gstStructure);
		ownedRef = false;
	}

	/**
	 * This is useful in language bindings where unknown #GValue types are not
	 * supported. This function will convert the %GST_TYPE_ARRAY into a newly
	 * allocated #GValueArray and return it through @array. Be aware that this is
	 * slower then getting the #GValue directly.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     array = a pointer to a #GValueArray
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a %GST_TYPE_ARRAY,
	 *     this function returns %FALSE.
	 *
	 * Since: 1.12
	 */
	public bool getArray(string fieldname, out ValueArray array)
	{
		GValueArray* outarray = null;

		auto __p = gst_structure_get_array(gstStructure, Str.toStringz(fieldname), &outarray) != 0;

		array = ObjectG.getDObject!(ValueArray)(outarray);

		return __p;
	}

	/**
	 * Sets the boolean pointed to by @value corresponding to the value of the
	 * given field.  Caller is responsible for making sure the field exists
	 * and has the correct type.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     value = a pointer to a #gboolean to set
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a boolean, this
	 *     function returns %FALSE.
	 */
	public bool getBoolean(string fieldname, out bool value)
	{
		int outvalue;

		auto __p = gst_structure_get_boolean(gstStructure, Str.toStringz(fieldname), &outvalue) != 0;

		value = (outvalue == 1);

		return __p;
	}

	/**
	 * Sets the clock time pointed to by @value corresponding to the clock time
	 * of the given field.  Caller is responsible for making sure the field exists
	 * and has the correct type.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     value = a pointer to a #GstClockTime to set
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a #GstClockTime, this
	 *     function returns %FALSE.
	 */
	public bool getClockTime(string fieldname, out GstClockTime value)
	{
		return gst_structure_get_clock_time(gstStructure, Str.toStringz(fieldname), &value) != 0;
	}

	/**
	 * Sets the date pointed to by @value corresponding to the date of the
	 * given field.  Caller is responsible for making sure the field exists
	 * and has the correct type.
	 *
	 * On success @value will point to a newly-allocated copy of the date which
	 * should be freed with g_date_free() when no longer needed (note: this is
	 * inconsistent with e.g. gst_structure_get_string() which doesn't return a
	 * copy of the string).
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     value = a pointer to a #GDate to set
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a data, this function
	 *     returns %FALSE.
	 */
	public bool getDate(string fieldname, out Date value)
	{
		GDate* outvalue = null;

		auto __p = gst_structure_get_date(gstStructure, Str.toStringz(fieldname), &outvalue) != 0;

		value = new Date(outvalue);

		return __p;
	}

	/**
	 * Sets the datetime pointed to by @value corresponding to the datetime of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 *
	 * On success @value will point to a reference of the datetime which
	 * should be unreffed with gst_date_time_unref() when no longer needed
	 * (note: this is inconsistent with e.g. gst_structure_get_string()
	 * which doesn't return a copy of the string).
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     value = a pointer to a #GstDateTime to set
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a data, this function
	 *     returns %FALSE.
	 */
	public bool getDateTime(string fieldname, out DateTime value)
	{
		GstDateTime* outvalue = null;

		auto __p = gst_structure_get_date_time(gstStructure, Str.toStringz(fieldname), &outvalue) != 0;

		value = ObjectG.getDObject!(DateTime)(outvalue);

		return __p;
	}

	/**
	 * Sets the double pointed to by @value corresponding to the value of the
	 * given field.  Caller is responsible for making sure the field exists
	 * and has the correct type.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     value = a pointer to a gdouble to set
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a double, this
	 *     function returns %FALSE.
	 */
	public bool getDouble(string fieldname, out double value)
	{
		return gst_structure_get_double(gstStructure, Str.toStringz(fieldname), &value) != 0;
	}

	/**
	 * Sets the int pointed to by @value corresponding to the value of the
	 * given field.  Caller is responsible for making sure the field exists,
	 * has the correct type and that the enumtype is correct.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     enumtype = the enum type of a field
	 *     value = a pointer to an int to set
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain an enum of the given
	 *     type, this function returns %FALSE.
	 */
	public bool getEnum(string fieldname, GType enumtype, out int value)
	{
		return gst_structure_get_enum(gstStructure, Str.toStringz(fieldname), enumtype, &value) != 0;
	}

	/**
	 * Finds the field with the given name, and returns the type of the
	 * value it contains.  If the field is not found, G_TYPE_INVALID is
	 * returned.
	 *
	 * Params:
	 *     fieldname = the name of the field
	 *
	 * Returns: the #GValue of the field
	 */
	public GType getFieldType(string fieldname)
	{
		return gst_structure_get_field_type(gstStructure, Str.toStringz(fieldname));
	}

	/**
	 * Read the GstFlagSet flags and mask out of the structure into the
	 * provided pointers.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     valueFlags = a pointer to a guint for the flags field
	 *     valueMask = a pointer to a guint for the mask field
	 *
	 * Returns: %TRUE if the values could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a GstFlagSet, this
	 *     function returns %FALSE.
	 *
	 * Since: 1.6
	 */
	public bool getFlagset(string fieldname, out uint valueFlags, out uint valueMask)
	{
		return gst_structure_get_flagset(gstStructure, Str.toStringz(fieldname), &valueFlags, &valueMask) != 0;
	}

	/**
	 * Sets the integers pointed to by @value_numerator and @value_denominator
	 * corresponding to the value of the given field.  Caller is responsible
	 * for making sure the field exists and has the correct type.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     valueNumerator = a pointer to an int to set
	 *     valueDenominator = a pointer to an int to set
	 *
	 * Returns: %TRUE if the values could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a GstFraction, this
	 *     function returns %FALSE.
	 */
	public bool getFraction(string fieldname, out int valueNumerator, out int valueDenominator)
	{
		return gst_structure_get_fraction(gstStructure, Str.toStringz(fieldname), &valueNumerator, &valueDenominator) != 0;
	}

	/**
	 * Sets the int pointed to by @value corresponding to the value of the
	 * given field.  Caller is responsible for making sure the field exists
	 * and has the correct type.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     value = a pointer to an int to set
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain an int, this function
	 *     returns %FALSE.
	 */
	public bool getInt(string fieldname, out int value)
	{
		return gst_structure_get_int(gstStructure, Str.toStringz(fieldname), &value) != 0;
	}

	/**
	 * Sets the #gint64 pointed to by @value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     value = a pointer to a #gint64 to set
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a #gint64, this function
	 *     returns %FALSE.
	 *
	 * Since: 1.4
	 */
	public bool getInt64(string fieldname, out long value)
	{
		return gst_structure_get_int64(gstStructure, Str.toStringz(fieldname), &value) != 0;
	}

	/**
	 * This is useful in language bindings where unknown #GValue types are not
	 * supported. This function will convert the %GST_TYPE_LIST into a newly
	 * allocated GValueArray and return it through @array. Be aware that this is
	 * slower then getting the #GValue directly.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     array = a pointer to a #GValueArray
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a %GST_TYPE_LIST, this
	 *     function returns %FALSE.
	 *
	 * Since: 1.12
	 */
	public bool getList(string fieldname, out ValueArray array)
	{
		GValueArray* outarray = null;

		auto __p = gst_structure_get_list(gstStructure, Str.toStringz(fieldname), &outarray) != 0;

		array = ObjectG.getDObject!(ValueArray)(outarray);

		return __p;
	}

	/**
	 * Get the name of @structure as a string.
	 *
	 * Returns: the name of the structure.
	 */
	public string getName()
	{
		return Str.toString(gst_structure_get_name(gstStructure));
	}

	/**
	 * Get the name of @structure as a GQuark.
	 *
	 * Returns: the quark representing the name of the structure.
	 */
	public GQuark getNameId()
	{
		return gst_structure_get_name_id(gstStructure);
	}

	/**
	 * Finds the field corresponding to @fieldname, and returns the string
	 * contained in the field's value.  Caller is responsible for making
	 * sure the field exists and has the correct type.
	 *
	 * The string should not be modified, and remains valid until the next
	 * call to a gst_structure_*() function with the given structure.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *
	 * Returns: a pointer to the string or %NULL when the
	 *     field did not exist or did not contain a string.
	 */
	public string getString(string fieldname)
	{
		return Str.toString(gst_structure_get_string(gstStructure, Str.toStringz(fieldname)));
	}

	/**
	 * Sets the uint pointed to by @value corresponding to the value of the
	 * given field.  Caller is responsible for making sure the field exists
	 * and has the correct type.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     value = a pointer to a uint to set
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a uint, this function
	 *     returns %FALSE.
	 */
	public bool getUint(string fieldname, out uint value)
	{
		return gst_structure_get_uint(gstStructure, Str.toStringz(fieldname), &value) != 0;
	}

	/**
	 * Sets the #guint64 pointed to by @value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     value = a pointer to a #guint64 to set
	 *
	 * Returns: %TRUE if the value could be set correctly. If there was no field
	 *     with @fieldname or the existing field did not contain a #guint64, this function
	 *     returns %FALSE.
	 *
	 * Since: 1.4
	 */
	public bool getUint64(string fieldname, out ulong value)
	{
		return gst_structure_get_uint64(gstStructure, Str.toStringz(fieldname), &value) != 0;
	}

	/**
	 * Parses the variable arguments and reads fields from @structure accordingly.
	 * valist-variant of gst_structure_get(). Look at the documentation of
	 * gst_structure_get() for more details.
	 *
	 * Params:
	 *     firstFieldname = the name of the first field to read
	 *     args = variable arguments
	 *
	 * Returns: %TRUE, or %FALSE if there was a problem reading any of the fields
	 */
	public bool getValist(string firstFieldname, void* args)
	{
		return gst_structure_get_valist(gstStructure, Str.toStringz(firstFieldname), args) != 0;
	}

	/**
	 * Get the value of the field with name @fieldname.
	 *
	 * Params:
	 *     fieldname = the name of the field to get
	 *
	 * Returns: the #GValue corresponding to the field with the given
	 *     name.
	 */
	public Value getValue(string fieldname)
	{
		auto __p = gst_structure_get_value(gstStructure, Str.toStringz(fieldname));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) __p);
	}

	/**
	 * Check if @structure contains a field named @fieldname.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *
	 * Returns: %TRUE if the structure contains a field with the given name
	 */
	public bool hasField(string fieldname)
	{
		return gst_structure_has_field(gstStructure, Str.toStringz(fieldname)) != 0;
	}

	/**
	 * Check if @structure contains a field named @fieldname and with GType @type.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     type = the type of a value
	 *
	 * Returns: %TRUE if the structure contains a field with the given name and type
	 */
	public bool hasFieldTyped(string fieldname, GType type)
	{
		return gst_structure_has_field_typed(gstStructure, Str.toStringz(fieldname), type) != 0;
	}

	/**
	 * Checks if the structure has the given name
	 *
	 * Params:
	 *     name = structure name to check for
	 *
	 * Returns: %TRUE if @name matches the name of the structure.
	 */
	public bool hasName(string name)
	{
		return gst_structure_has_name(gstStructure, Str.toStringz(name)) != 0;
	}

	/**
	 * Parses the variable arguments and reads fields from @structure accordingly.
	 * valist-variant of gst_structure_id_get(). Look at the documentation of
	 * gst_structure_id_get() for more details.
	 *
	 * Params:
	 *     firstFieldId = the quark of the first field to read
	 *     args = variable arguments
	 *
	 * Returns: %TRUE, or %FALSE if there was a problem reading any of the fields
	 */
	public bool idGetValist(GQuark firstFieldId, void* args)
	{
		return gst_structure_id_get_valist(gstStructure, firstFieldId, args) != 0;
	}

	/**
	 * Get the value of the field with GQuark @field.
	 *
	 * Params:
	 *     field = the #GQuark of the field to get
	 *
	 * Returns: the #GValue corresponding to the field with the given
	 *     name identifier.
	 */
	public Value idGetValue(GQuark field)
	{
		auto __p = gst_structure_id_get_value(gstStructure, field);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) __p);
	}

	/**
	 * Check if @structure contains a field named @field.
	 *
	 * Params:
	 *     field = #GQuark of the field name
	 *
	 * Returns: %TRUE if the structure contains a field with the given name
	 */
	public bool idHasField(GQuark field)
	{
		return gst_structure_id_has_field(gstStructure, field) != 0;
	}

	/**
	 * Check if @structure contains a field named @field and with GType @type.
	 *
	 * Params:
	 *     field = #GQuark of the field name
	 *     type = the type of a value
	 *
	 * Returns: %TRUE if the structure contains a field with the given name and type
	 */
	public bool idHasFieldTyped(GQuark field, GType type)
	{
		return gst_structure_id_has_field_typed(gstStructure, field, type) != 0;
	}

	/**
	 * va_list form of gst_structure_id_set().
	 *
	 * Params:
	 *     fieldname = the name of the field to set
	 *     varargs = variable arguments
	 */
	public void idSetValist(GQuark fieldname, void* varargs)
	{
		gst_structure_id_set_valist(gstStructure, fieldname, varargs);
	}

	/**
	 * Sets the field with the given GQuark @field to @value.  If the field
	 * does not exist, it is created.  If the field exists, the previous
	 * value is replaced and freed.
	 *
	 * Params:
	 *     field = a #GQuark representing a field
	 *     value = the new value of the field
	 */
	public void idSetValue(GQuark field, Value value)
	{
		gst_structure_id_set_value(gstStructure, field, (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Sets the field with the given GQuark @field to @value.  If the field
	 * does not exist, it is created.  If the field exists, the previous
	 * value is replaced and freed.
	 *
	 * Params:
	 *     field = a #GQuark representing a field
	 *     value = the new value of the field
	 */
	public void idTakeValue(GQuark field, Value value)
	{
		gst_structure_id_take_value(gstStructure, field, (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Intersects @struct1 and @struct2 and returns the intersection.
	 *
	 * Params:
	 *     struct2 = a #GstStructure
	 *
	 * Returns: Intersection of @struct1 and @struct2
	 */
	public Structure intersect(Structure struct2)
	{
		auto __p = gst_structure_intersect(gstStructure, (struct2 is null) ? null : struct2.getStructureStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) __p, true);
	}

	/**
	 * Tests if the two #GstStructure are equal.
	 *
	 * Params:
	 *     structure2 = a #GstStructure.
	 *
	 * Returns: %TRUE if the two structures have the same name and field.
	 */
	public bool isEqual(Structure structure2)
	{
		return gst_structure_is_equal(gstStructure, (structure2 is null) ? null : structure2.getStructureStruct()) != 0;
	}

	/**
	 * Checks if @subset is a subset of @superset, i.e. has the same
	 * structure name and for all fields that are existing in @superset,
	 * @subset has a value that is a subset of the value in @superset.
	 *
	 * Params:
	 *     superset = a potentially greater #GstStructure
	 *
	 * Returns: %TRUE if @subset is a subset of @superset
	 */
	public bool isSubset(Structure superset)
	{
		return gst_structure_is_subset(gstStructure, (superset is null) ? null : superset.getStructureStruct()) != 0;
	}

	/**
	 * Calls the provided function once for each field in the #GstStructure. In
	 * contrast to gst_structure_foreach(), the function may modify but not delete the
	 * fields. The structure must be mutable.
	 *
	 * Params:
	 *     func = a function to call for each field
	 *     userData = private data
	 *
	 * Returns: %TRUE if the supplied function returns %TRUE For each of the fields,
	 *     %FALSE otherwise.
	 */
	public bool mapInPlace(GstStructureMapFunc func, void* userData)
	{
		return gst_structure_map_in_place(gstStructure, func, userData) != 0;
	}

	/**
	 * Get the number of fields in the structure.
	 *
	 * Returns: the number of fields in the structure
	 */
	public int nFields()
	{
		return gst_structure_n_fields(gstStructure);
	}

	/**
	 * Get the name of the given field number, counting from 0 onwards.
	 *
	 * Params:
	 *     index = the index to get the name of
	 *
	 * Returns: the name of the given field number
	 */
	public string nthFieldName(uint index)
	{
		return Str.toString(gst_structure_nth_field_name(gstStructure, index));
	}

	/**
	 * Removes all fields in a GstStructure.
	 */
	public void removeAllFields()
	{
		gst_structure_remove_all_fields(gstStructure);
	}

	/**
	 * Removes the field with the given name.  If the field with the given
	 * name does not exist, the structure is unchanged.
	 *
	 * Params:
	 *     fieldname = the name of the field to remove
	 */
	public void removeField(string fieldname)
	{
		gst_structure_remove_field(gstStructure, Str.toStringz(fieldname));
	}

	/**
	 * va_list form of gst_structure_remove_fields().
	 *
	 * Params:
	 *     fieldname = the name of the field to remove
	 *     varargs = %NULL-terminated list of more fieldnames to remove
	 */
	public void removeFieldsValist(string fieldname, void* varargs)
	{
		gst_structure_remove_fields_valist(gstStructure, Str.toStringz(fieldname), varargs);
	}

	/**
	 * Converts @structure to a human-readable string representation.
	 *
	 * This version of the caps serialization function introduces support for nested
	 * structures and caps but the resulting strings won't be parsable with
	 * GStreamer prior to 1.20 unless #GST_SERIALIZE_FLAG_BACKWARD_COMPAT is passed
	 * as @flag.
	 *
	 * Free-function: g_free
	 *
	 * Params:
	 *     flags = The flags to use to serialize structure
	 *
	 * Returns: a pointer to string allocated by g_malloc().
	 *     g_free() after usage.
	 *
	 * Since: 1.20
	 */
	public string serialize(GstSerializeFlags flags)
	{
		auto retStr = gst_structure_serialize(gstStructure, flags);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This is useful in language bindings where unknown GValue types are not
	 * supported. This function will convert a @array to %GST_TYPE_ARRAY and set
	 * the field specified by @fieldname.  Be aware that this is slower then using
	 * %GST_TYPE_ARRAY in a #GValue directly.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     array = a pointer to a #GValueArray
	 *
	 * Since: 1.12
	 */
	public void setArray(string fieldname, ValueArray array)
	{
		gst_structure_set_array(gstStructure, Str.toStringz(fieldname), (array is null) ? null : array.getValueArrayStruct());
	}

	/**
	 * This is useful in language bindings where unknown GValue types are not
	 * supported. This function will convert a @array to %GST_TYPE_LIST and set
	 * the field specified by @fieldname. Be aware that this is slower then using
	 * %GST_TYPE_LIST in a #GValue directly.
	 *
	 * Params:
	 *     fieldname = the name of a field
	 *     array = a pointer to a #GValueArray
	 *
	 * Since: 1.12
	 */
	public void setList(string fieldname, ValueArray array)
	{
		gst_structure_set_list(gstStructure, Str.toStringz(fieldname), (array is null) ? null : array.getValueArrayStruct());
	}

	/**
	 * Sets the name of the structure to the given @name.  The string
	 * provided is copied before being used. It must not be empty, start with a
	 * letter and can be followed by letters, numbers and any of "/-_.:".
	 *
	 * Params:
	 *     name = the new name of the structure
	 */
	public void setName(string name)
	{
		gst_structure_set_name(gstStructure, Str.toStringz(name));
	}

	/**
	 * Sets the parent_refcount field of #GstStructure. This field is used to
	 * determine whether a structure is mutable or not. This function should only be
	 * called by code implementing parent objects of #GstStructure, as described in
	 * the MT Refcounting section of the design documents.
	 *
	 * Params:
	 *     refcount = a pointer to the parent's refcount
	 *
	 * Returns: %TRUE if the parent refcount could be set.
	 */
	public bool setParentRefcount(int* refcount)
	{
		return gst_structure_set_parent_refcount(gstStructure, refcount) != 0;
	}

	/**
	 * va_list form of gst_structure_set().
	 *
	 * Params:
	 *     fieldname = the name of the field to set
	 *     varargs = variable arguments
	 */
	public void setValist(string fieldname, void* varargs)
	{
		gst_structure_set_valist(gstStructure, Str.toStringz(fieldname), varargs);
	}

	/**
	 * Sets the field with the given name @field to @value.  If the field
	 * does not exist, it is created.  If the field exists, the previous
	 * value is replaced and freed.
	 *
	 * Params:
	 *     fieldname = the name of the field to set
	 *     value = the new value of the field
	 */
	public void setValue(string fieldname, Value value)
	{
		gst_structure_set_value(gstStructure, Str.toStringz(fieldname), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Sets the field with the given name @field to @value.  If the field
	 * does not exist, it is created.  If the field exists, the previous
	 * value is replaced and freed. The function will take ownership of @value.
	 *
	 * Params:
	 *     fieldname = the name of the field to set
	 *     value = the new value of the field
	 */
	public void takeValue(string fieldname, Value value)
	{
		gst_structure_take_value(gstStructure, Str.toStringz(fieldname), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Converts @structure to a human-readable string representation.
	 *
	 * For debugging purposes its easier to do something like this: |[<!--
	 * language="C" --> GST_LOG ("structure is %" GST_PTR_FORMAT, structure);
	 * ]|
	 * This prints the structure in human readable form.
	 *
	 * This function will lead to unexpected results when there are nested #GstCaps
	 * / #GstStructure deeper than one level, you should user
	 * gst_structure_serialize() instead for those cases.
	 *
	 * Free-function: g_free
	 *
	 * Returns: a pointer to string allocated by g_malloc().
	 *     g_free() after usage.
	 */
	public override string toString()
	{
		auto retStr = gst_structure_to_string(gstStructure);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Atomically modifies a pointer to point to a new structure.
	 * The #GstStructure @oldstr_ptr is pointing to is freed and
	 * @newstr is taken ownership over.
	 *
	 * Either @newstr and the value pointed to by @oldstr_ptr may be %NULL.
	 *
	 * It is a programming error if both @newstr and the value pointed to by
	 * @oldstr_ptr refer to the same, non-%NULL structure.
	 *
	 * Params:
	 *     oldstrPtr = pointer to a place of
	 *         a #GstStructure to take
	 *     newstr = a new #GstStructure
	 *
	 * Returns: %TRUE if @newstr was different from @oldstr_ptr
	 *
	 * Since: 1.18
	 */
	public static bool take(ref Structure oldstrPtr, Structure newstr)
	{
		GstStructure* outoldstrPtr = oldstrPtr.getStructureStruct();

		auto __p = gst_structure_take(&outoldstrPtr, (newstr is null) ? null : newstr.getStructureStruct(true)) != 0;

		oldstrPtr = ObjectG.getDObject!(Structure)(outoldstrPtr);

		return __p;
	}
}
