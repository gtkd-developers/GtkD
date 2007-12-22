/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gstreamer-GstStructure.html
 * outPack = gstreamer
 * outFile = Structure
 * strct   = GstStructure
 * realStrct=
 * ctorStrct=
 * clss    = Structure
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_structure_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gobject.Value
 * structWrap:
 * 	- GValue* -> Value
 * 	- GstStructure* -> Structure
 * module aliases:
 * local aliases:
 */

module gstreamer.Structure;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;


private import glib.Str;
private import gobject.Value;




/**
 * Description
 * A GstStructure is a collection of key/value pairs. The keys are expressed
 * as GQuarks and the values can be of any GType.
 * In addition to the key/value pairs, a GstStructure also has a name.
 * GstStructure is used by various GStreamer subsystems to store information
 * in a flexible and extensible way. A GstStructure does not have a refcount
 * because it usually is part of a higher level object such as GstCaps. It
 * provides a means to enforce mutability using the refcount of the parent
 * with the gst_structure_set_parent_refcount() method.
 * A GstStructure can be created with gst_structure_empty_new() or
 * gst_structure_new(), which both take a name and an optional set of
 * key/value pairs along with the types of the values.
 * Field values can be changed with gst_structure_set_value() or
 * gst_structure_set().
 * Field values can be retrieved with gst_structure_get_value() or the more
 * convenient gst_structure_get_*() functions.
 * Fields can be removed with gst_structure_remove_field() or
 * gst_structure_remove_fields().
 * Last reviewed on 2005-11-09 (0.9.4)
 */
public class Structure
{
	
	/** the main Gtk struct */
	protected GstStructure* gstStructure;
	
	
	public GstStructure* getStructureStruct()
	{
		return gstStructure;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstStructure;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstStructure* gstStructure)
	{
		version(noAssert)
		{
			if ( gstStructure is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstStructure is null on constructor").newline;
				}
				else
				{
					printf("struct gstStructure is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstStructure !is null, "struct gstStructure is null on constructor");
		}
		this.gstStructure = gstStructure;
	}
	
	/**
	 */
	
	
	
	
	/**
	 * Creates a new, empty GstStructure with the given name.
	 * name:
	 *  name of new structure
	 * Returns:
	 *  a new, empty GstStructure
	 */
	public static Structure emptyNew(char[] name)
	{
		// GstStructure* gst_structure_empty_new (const gchar *name);
		return new Structure( gst_structure_empty_new(Str.toStringz(name)) );
	}
	
	/**
	 * Creates a new, empty GstStructure with the given name as a GQuark.
	 * quark:
	 *  name of new structure
	 * Returns:
	 *  a new, empty GstStructure
	 */
	public static Structure idEmptyNew(GQuark quark)
	{
		// GstStructure* gst_structure_id_empty_new (GQuark quark);
		return new Structure( gst_structure_id_empty_new(quark) );
	}
	
	/**
	 * Creates a new GstStructure with the given name. Parses the
	 * list of variable arguments and sets fields to the values listed.
	 * Variable arguments should be passed as field name, field type,
	 * and value. Last variable argument should be NULL.
	 * name:
	 *  name of new structure
	 * firstfield:
	 *  name of first field to set
	 * ...:
	 *  additional arguments
	 * Returns:
	 *  a new GstStructure
	 */
	public this (char[] name, char[] firstfield, ... )
	{
		// GstStructure* gst_structure_new (const gchar *name,  const gchar *firstfield,  ...);
		this(cast(GstStructure*)gst_structure_new(Str.toStringz(name), Str.toStringz(firstfield)) );
	}
	
	/**
	 * Creates a new GstStructure with the given name. Structure fields
	 * are set according to the varargs in a manner similar to
	 * gst_structure_new.
	 * name:
	 *  name of new structure
	 * firstfield:
	 *  name of first field to set
	 * varargs:
	 *  variable argument list
	 * Returns:
	 *  a new GstStructure
	 */
	public this (char[] name, char[] firstfield, void* varargs)
	{
		// GstStructure* gst_structure_new_valist (const gchar *name,  const gchar *firstfield,  va_list varargs);
		this(cast(GstStructure*)gst_structure_new_valist(Str.toStringz(name), Str.toStringz(firstfield), varargs) );
	}
	
	/**
	 * Duplicates a GstStructure and all its fields and values.
	 * structure:
	 *  a GstStructure to duplicate
	 * Returns:
	 *  a new GstStructure.
	 */
	public Structure copy()
	{
		// GstStructure* gst_structure_copy (const GstStructure *structure);
		return new Structure( gst_structure_copy(gstStructure) );
	}
	
	/**
	 * Frees a GstStructure and all its fields and values. The structure must not
	 * have a parent when this function is called.
	 * structure:
	 *  the GstStructure to free
	 */
	public void free()
	{
		// void gst_structure_free (GstStructure *structure);
		gst_structure_free(gstStructure);
	}
	
	/**
	 * Get the name of structure as a string.
	 * structure:
	 *  a GstStructure
	 * Returns:
	 *  the name of the structure.
	 */
	public char[] getName()
	{
		// const gchar* gst_structure_get_name (const GstStructure *structure);
		return Str.toString(gst_structure_get_name(gstStructure) );
	}
	
	/**
	 * Checks if the structure has the given name
	 * structure:
	 *  a GstStructure
	 * name:
	 *  structure name to check for
	 * Returns:
	 *  TRUE if name matches the name of the structure.
	 */
	public int hasName(char[] name)
	{
		// gboolean gst_structure_has_name (const GstStructure *structure,  const gchar *name);
		return gst_structure_has_name(gstStructure, Str.toStringz(name));
	}
	
	/**
	 * Sets the name of the structure to the given name. The string
	 * provided is copied before being used.
	 * structure:
	 *  a GstStructure
	 * name:
	 *  the new name of the structure
	 */
	public void setName(char[] name)
	{
		// void gst_structure_set_name (GstStructure *structure,  const gchar *name);
		gst_structure_set_name(gstStructure, Str.toStringz(name));
	}
	
	/**
	 * Get the name of structure as a GQuark.
	 * structure:
	 *  a GstStructure
	 * Returns:
	 *  the quark representing the name of the structure.
	 */
	public GQuark getNameId()
	{
		// GQuark gst_structure_get_name_id (const GstStructure *structure);
		return gst_structure_get_name_id(gstStructure);
	}
	
	/**
	 * Get the value of the field with GQuark field.
	 * structure:
	 *  a GstStructure
	 * field:
	 *  the GQuark of the field to get
	 * Returns:
	 *  the GValue corresponding to the field with the given name
	 *  identifier.
	 */
	public Value idGetValue(GQuark field)
	{
		// const GValue* gst_structure_id_get_value (const GstStructure *structure,  GQuark field);
		return new Value( gst_structure_id_get_value(gstStructure, field) );
	}
	
	/**
	 * Sets the field with the given GQuark field to value. If the field
	 * does not exist, it is created. If the field exists, the previous
	 * value is replaced and freed.
	 * structure:
	 *  a GstStructure
	 * field:
	 *  a GQuark representing a field
	 * value:
	 *  the new value of the field
	 */
	public void idSetValue(GQuark field, Value value)
	{
		// void gst_structure_id_set_value (GstStructure *structure,  GQuark field,  const GValue *value);
		gst_structure_id_set_value(gstStructure, field, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Get the value of the field with name fieldname.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of the field to get
	 * Returns:
	 *  the GValue corresponding to the field with the given name.
	 */
	public Value getValue(char[] fieldname)
	{
		// const GValue* gst_structure_get_value (const GstStructure *structure,  const gchar *fieldname);
		return new Value( gst_structure_get_value(gstStructure, Str.toStringz(fieldname)) );
	}
	
	/**
	 * Sets the field with the given name field to value. If the field
	 * does not exist, it is created. If the field exists, the previous
	 * value is replaced and freed.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of the field to set
	 * value:
	 *  the new value of the field
	 */
	public void setValue(char[] fieldname, Value value)
	{
		// void gst_structure_set_value (GstStructure *structure,  const gchar *fieldname,  const GValue *value);
		gst_structure_set_value(gstStructure, Str.toStringz(fieldname), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Parses the variable arguments and sets fields accordingly.
	 * Variable arguments should be in the form field name, field type
	 * (as a GType), value(s). The last variable argument should be NULL.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of the field to set
	 * ...:
	 *  variable arguments
	 */
	public void set(char[] fieldname, ... )
	{
		// void gst_structure_set (GstStructure *structure,  const gchar *fieldname,  ...);
		gst_structure_set(gstStructure, Str.toStringz(fieldname));
	}
	
	/**
	 * va_list form of gst_structure_set().
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of the field to set
	 * varargs:
	 *  variable arguments
	 */
	public void setValist(char[] fieldname, void* varargs)
	{
		// void gst_structure_set_valist (GstStructure *structure,  const gchar *fieldname,  va_list varargs);
		gst_structure_set_valist(gstStructure, Str.toStringz(fieldname), varargs);
	}
	
	/**
	 * Identical to gst_structure_set, except that field names are
	 * passed using the GQuark for the field name. This allows more efficient
	 * setting of the structure if the caller already knows the associated
	 * quark values.
	 * The last variable argument must be NULL.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the GQuark for the name of the field to set
	 * ...:
	 *  variable arguments
	 * Since 0.10.10
	 */
	public void idSet(GQuark fieldname, ... )
	{
		// void gst_structure_id_set (GstStructure *structure,  GQuark fieldname,  ...);
		gst_structure_id_set(gstStructure, fieldname);
	}
	
	/**
	 * va_list form of gst_structure_id_set().
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of the field to set
	 * varargs:
	 *  variable arguments
	 * Since 0.10.10
	 */
	public void idSetValist(GQuark fieldname, void* varargs)
	{
		// void gst_structure_id_set_valist (GstStructure *structure,  GQuark fieldname,  va_list varargs);
		gst_structure_id_set_valist(gstStructure, fieldname, varargs);
	}
	
	/**
	 * Removes the field with the given name. If the field with the given
	 * name does not exist, the structure is unchanged.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of the field to remove
	 */
	public void removeField(char[] fieldname)
	{
		// void gst_structure_remove_field (GstStructure *structure,  const gchar *fieldname);
		gst_structure_remove_field(gstStructure, Str.toStringz(fieldname));
	}
	
	/**
	 * Removes the fields with the given names. If a field does not exist, the
	 * argument is ignored.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of the field to remove
	 * ...:
	 *  NULL-terminated list of more fieldnames to remove
	 */
	public void removeFields(char[] fieldname, ... )
	{
		// void gst_structure_remove_fields (GstStructure *structure,  const gchar *fieldname,  ...);
		gst_structure_remove_fields(gstStructure, Str.toStringz(fieldname));
	}
	
	/**
	 * va_list form of gst_structure_remove_fields().
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of the field to remove
	 * varargs:
	 *  NULL-terminated list of more fieldnames to remove
	 */
	public void removeFieldsValist(char[] fieldname, void* varargs)
	{
		// void gst_structure_remove_fields_valist  (GstStructure *structure,  const gchar *fieldname,  va_list varargs);
		gst_structure_remove_fields_valist(gstStructure, Str.toStringz(fieldname), varargs);
	}
	
	/**
	 * Removes all fields in a GstStructure.
	 * structure:
	 *  a GstStructure
	 */
	public void removeAllFields()
	{
		// void gst_structure_remove_all_fields (GstStructure *structure);
		gst_structure_remove_all_fields(gstStructure);
	}
	
	/**
	 * Finds the field with the given name, and returns the type of the
	 * value it contains. If the field is not found, G_TYPE_INVALID is
	 * returned.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of the field
	 * Returns:
	 *  the GValue of the field
	 */
	public GType getFieldType(char[] fieldname)
	{
		// GType gst_structure_get_field_type (const GstStructure *structure,  const gchar *fieldname);
		return gst_structure_get_field_type(gstStructure, Str.toStringz(fieldname));
	}
	
	/**
	 * Calls the provided function once for each field in the GstStructure. The
	 * function must not modify the fields. Also see gst_structure_map_in_place().
	 * structure:
	 *  a GstStructure
	 * func:
	 *  a function to call for each field
	 * user_data:
	 *  private data
	 * Returns:
	 *  TRUE if the supplied function returns TRUE For each of the fields,
	 * FALSE otherwise.
	 */
	public int foreac(GstStructureForeachFunc func, void* userData)
	{
		// gboolean gst_structure_foreach (const GstStructure *structure,  GstStructureForeachFunc func,  gpointer user_data);
		return gst_structure_foreach(gstStructure, func, userData);
	}
	
	/**
	 * Get the number of fields in the structure.
	 * structure:
	 *  a GstStructure
	 * Returns:
	 *  the number of fields in the structure
	 */
	public int nFields()
	{
		// gint gst_structure_n_fields (const GstStructure *structure);
		return gst_structure_n_fields(gstStructure);
	}
	
	/**
	 * Check if structure contains a field named fieldname.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * Returns:
	 *  TRUE if the structure contains a field with the given name
	 */
	public int hasField(char[] fieldname)
	{
		// gboolean gst_structure_has_field (const GstStructure *structure,  const gchar *fieldname);
		return gst_structure_has_field(gstStructure, Str.toStringz(fieldname));
	}
	
	/**
	 * Check if structure contains a field named fieldname and with GType type.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * type:
	 *  the type of a value
	 * Returns:
	 *  TRUE if the structure contains a field with the given name and type
	 */
	public int hasFieldTyped(char[] fieldname, GType type)
	{
		// gboolean gst_structure_has_field_typed (const GstStructure *structure,  const gchar *fieldname,  GType type);
		return gst_structure_has_field_typed(gstStructure, Str.toStringz(fieldname), type);
	}
	
	/**
	 * Sets the boolean pointed to by value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * value:
	 *  a pointer to a gboolean to set
	 * Returns:
	 *  TRUE if the value could be set correctly. If there was no field
	 * with fieldname or the existing field did not contain a boolean, this
	 * function returns FALSE.
	 */
	public int getBoolean(char[] fieldname, int* value)
	{
		// gboolean gst_structure_get_boolean (const GstStructure *structure,  const gchar *fieldname,  gboolean *value);
		return gst_structure_get_boolean(gstStructure, Str.toStringz(fieldname), value);
	}
	
	/**
	 * Sets the int pointed to by value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * Returns: TRUE if the value could be set correctly. If there was no field
	 * with fieldname or the existing field did not contain an int, this function
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * value:
	 *  a pointer to an int to set
	 * Returns:
	 * FALSE.
	 */
	public int getInt(char[] fieldname, int* value)
	{
		// gboolean gst_structure_get_int (const GstStructure *structure,  const gchar *fieldname,  gint *value);
		return gst_structure_get_int(gstStructure, Str.toStringz(fieldname), value);
	}
	
	/**
	 * Sets the GstFourcc pointed to by value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * Returns: TRUE if the value could be set correctly. If there was no field
	 * with fieldname or the existing field did not contain a fourcc, this function
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * value:
	 *  a pointer to a GstFourcc to set
	 * Returns:
	 * FALSE.
	 */
	public int getFourcc(char[] fieldname, uint* value)
	{
		// gboolean gst_structure_get_fourcc (const GstStructure *structure,  const gchar *fieldname,  guint32 *value);
		return gst_structure_get_fourcc(gstStructure, Str.toStringz(fieldname), value);
	}
	
	/**
	 * Sets the double pointed to by value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * value:
	 *  a pointer to a GstFourcc to set
	 * Returns:
	 *  TRUE if the value could be set correctly. If there was no field
	 * with fieldname or the existing field did not contain a double, this
	 * function returns FALSE.
	 */
	public int getDouble(char[] fieldname, double* value)
	{
		// gboolean gst_structure_get_double (const GstStructure *structure,  const gchar *fieldname,  gdouble *value);
		return gst_structure_get_double(gstStructure, Str.toStringz(fieldname), value);
	}
	
	/**
	 * Finds the field corresponding to fieldname, and returns the string
	 * contained in the field's value. Caller is responsible for making
	 * sure the field exists and has the correct type.
	 * The string should not be modified, and remains valid until the next
	 * call to a gst_structure_*() function with the given structure.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * Returns:
	 *  a pointer to the string or NULL when the field did not exist
	 * or did not contain a string.
	 */
	public char[] getString(char[] fieldname)
	{
		// const gchar* gst_structure_get_string (const GstStructure *structure,  const gchar *fieldname);
		return Str.toString(gst_structure_get_string(gstStructure, Str.toStringz(fieldname)) );
	}
	
	/**
	 * Sets the date pointed to by value corresponding to the date of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * Returns: TRUE if the value could be set correctly. If there was no field
	 * with fieldname or the existing field did not contain a data, this function
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * value:
	 *  a pointer to a GDate to set
	 * Returns:
	 * FALSE.
	 */
	public int getDate(char[] fieldname, GDate** value)
	{
		// gboolean gst_structure_get_date (const GstStructure *structure,  const gchar *fieldname,  GDate **value);
		return gst_structure_get_date(gstStructure, Str.toStringz(fieldname), value);
	}
	
	/**
	 * Sets the clock time pointed to by value corresponding to the clock time
	 * of the given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * value:
	 *  a pointer to a GstClockTime to set
	 * Returns:
	 *  TRUE if the value could be set correctly. If there was no field
	 * with fieldname or the existing field did not contain a GstClockTime, this
	 * function returns FALSE.
	 */
	public int getClockTime(char[] fieldname, GstClockTime* value)
	{
		// gboolean gst_structure_get_clock_time (const GstStructure *structure,  const gchar *fieldname,  GstClockTime *value);
		return gst_structure_get_clock_time(gstStructure, Str.toStringz(fieldname), value);
	}
	
	/**
	 * Sets the int pointed to by value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists,
	 * has the correct type and that the enumtype is correct.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * enumtype:
	 *  the enum type of a field
	 * value:
	 *  a pointer to an int to set
	 * Returns:
	 *  TRUE if the value could be set correctly. If there was no field
	 * with fieldname or the existing field did not contain an enum of the given
	 * type, this function returns FALSE.
	 */
	public int getEnum(char[] fieldname, GType enumtype, int* value)
	{
		// gboolean gst_structure_get_enum (const GstStructure *structure,  const gchar *fieldname,  GType enumtype,  gint *value);
		return gst_structure_get_enum(gstStructure, Str.toStringz(fieldname), enumtype, value);
	}
	
	/**
	 * Sets the integers pointed to by value_numerator and value_denominator
	 * corresponding to the value of the given field. Caller is responsible
	 * for making sure the field exists and has the correct type.
	 * structure:
	 *  a GstStructure
	 * fieldname:
	 *  the name of a field
	 * value_numerator:
	 *  a pointer to an int to set
	 * value_denominator:
	 *  a pointer to an int to set
	 * Returns:
	 *  TRUE if the values could be set correctly. If there was no field
	 * with fieldname or the existing field did not contain a GstFraction, this
	 * function returns FALSE.
	 */
	public int getFraction(char[] fieldname, int* valueNumerator, int* valueDenominator)
	{
		// gboolean gst_structure_get_fraction (const GstStructure *structure,  const gchar *fieldname,  gint *value_numerator,  gint *value_denominator);
		return gst_structure_get_fraction(gstStructure, Str.toStringz(fieldname), valueNumerator, valueDenominator);
	}
	
	/**
	 * Calls the provided function once for each field in the GstStructure. In
	 * contrast to gst_structure_foreach(), the function may modify but not delete the
	 * fields. The structure must be mutable.
	 * structure:
	 *  a GstStructure
	 * func:
	 *  a function to call for each field
	 * user_data:
	 *  private data
	 * Returns:
	 *  TRUE if the supplied function returns TRUE For each of the fields,
	 * FALSE otherwise.
	 */
	public int mapInPlace(GstStructureMapFunc func, void* userData)
	{
		// gboolean gst_structure_map_in_place (GstStructure *structure,  GstStructureMapFunc func,  gpointer user_data);
		return gst_structure_map_in_place(gstStructure, func, userData);
	}
	
	/**
	 * Get the name of the given field number, counting from 0 onwards.
	 * structure:
	 *  a GstStructure
	 * index:
	 *  the index to get the name of
	 * Returns:
	 *  the name of the given field number
	 */
	public char[] nthFieldName(uint index)
	{
		// const gchar* gst_structure_nth_field_name (const GstStructure *structure,  guint index);
		return Str.toString(gst_structure_nth_field_name(gstStructure, index) );
	}
	
	/**
	 * Sets the parent_refcount field of GstStructure. This field is used to
	 * determine whether a structure is mutable or not. This function should only be
	 * called by code implementing parent objects of GstStructure, as described in
	 * the MT Refcounting section of the design documents.
	 * structure:
	 *  a GstStructure
	 * refcount:
	 *  a pointer to the parent's refcount
	 */
	public void setParentRefcount(int* refcount)
	{
		// void gst_structure_set_parent_refcount  (GstStructure *structure,  gint *refcount);
		gst_structure_set_parent_refcount(gstStructure, refcount);
	}
	
	/**
	 * Converts structure to a human-readable string representation.
	 * structure:
	 *  a GstStructure
	 * Returns:
	 *  a pointer to string allocated by g_malloc(). g_free() after
	 * usage.
	 */
	public char[] toString()
	{
		// gchar* gst_structure_to_string (const GstStructure *structure);
		return Str.toString(gst_structure_to_string(gstStructure) );
	}
	
	/**
	 * Creates a GstStructure from a string representation.
	 * If end is not NULL, a pointer to the place inside the given string
	 * where parsing ended will be returned.
	 * string:
	 *  a string representation of a GstStructure.
	 * end:
	 *  pointer to store the end of the string in.
	 * Returns:
	 *  a new GstStructure or NULL when the string could not
	 * be parsed. Free after usage.
	 */
	public static Structure fromString(char[] string, char** end)
	{
		// GstStructure* gst_structure_from_string (const gchar *string,  gchar **end);
		return new Structure( gst_structure_from_string(Str.toStringz(string), end) );
	}
	
	/**
	 * Fixates a GstStructure by changing the given field to the nearest
	 * integer to target that is a subset of the existing field.
	 * structure:
	 *  a GstStructure
	 * field_name:
	 *  a field in structure
	 * target:
	 *  the target value of the fixation
	 * Returns:
	 *  TRUE if the structure could be fixated
	 */
	public int fixateFieldNearestInt(char[] fieldName, int target)
	{
		// gboolean gst_structure_fixate_field_nearest_int  (GstStructure *structure,  const char *field_name,  int target);
		return gst_structure_fixate_field_nearest_int(gstStructure, Str.toStringz(fieldName), target);
	}
	
	/**
	 * Fixates a GstStructure by changing the given field to the nearest
	 * double to target that is a subset of the existing field.
	 * structure:
	 *  a GstStructure
	 * field_name:
	 *  a field in structure
	 * target:
	 *  the target value of the fixation
	 * Returns:
	 *  TRUE if the structure could be fixated
	 */
	public int fixateFieldNearestDouble(char[] fieldName, double target)
	{
		// gboolean gst_structure_fixate_field_nearest_double  (GstStructure *structure,  const char *field_name,  double target);
		return gst_structure_fixate_field_nearest_double(gstStructure, Str.toStringz(fieldName), target);
	}
	
	/**
	 * Fixates a GstStructure by changing the given field to the nearest
	 * fraction to target_numerator/target_denominator that is a subset
	 * of the existing field.
	 * structure:
	 *  a GstStructure
	 * field_name:
	 *  a field in structure
	 * target_numerator:
	 *  The numerator of the target value of the fixation
	 * target_denominator:
	 *  The denominator of the target value of the fixation
	 * Returns:
	 *  TRUE if the structure could be fixated
	 */
	public int fixateFieldNearestFraction(char[] fieldName, int targetNumerator, int targetDenominator)
	{
		// gboolean gst_structure_fixate_field_nearest_fraction  (GstStructure *structure,  const char *field_name,  const gint target_numerator,  const gint target_denominator);
		return gst_structure_fixate_field_nearest_fraction(gstStructure, Str.toStringz(fieldName), targetNumerator, targetDenominator);
	}
	
	/**
	 * Fixates a GstStructure by changing the given field_name field to the given
	 * target boolean if that field is not fixed yet.
	 * structure:
	 *  a GstStructure
	 * field_name:
	 *  a field in structure
	 * target:
	 *  the target value of the fixation
	 * Returns:
	 *  TRUE if the structure could be fixated
	 * See Also
	 * GstCaps, GstMessage, GstEvent, GstQuery
	 */
	public int fixateFieldBoolean(char[] fieldName, int target)
	{
		// gboolean gst_structure_fixate_field_boolean  (GstStructure *structure,  const char *field_name,  gboolean target);
		return gst_structure_fixate_field_boolean(gstStructure, Str.toStringz(fieldName), target);
	}
}
