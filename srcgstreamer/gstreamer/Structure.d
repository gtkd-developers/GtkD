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
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.Date
 * 	- gobject.Value
 * 	- gstreamer.DateTime
 * structWrap:
 * 	- GDate* -> Date
 * 	- GValue* -> Value
 * 	- GstDateTime* -> DateTime
 * 	- GstStructure* -> Structure
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gstreamer.Structure;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.Date;
private import gobject.Value;
private import gstreamer.DateTime;




/**
 * A GstStructure is a collection of key/value pairs. The keys are expressed
 * as GQuarks and the values can be of any GType.
 *
 * In addition to the key/value pairs, a GstStructure also has a name. The name
 * starts with a letter and can be filled by letters, numbers and any of "/-_.:".
 *
 * GstStructure is used by various GStreamer subsystems to store information
 * in a flexible and extensible way. A GstStructure does not have a refcount
 * because it usually is part of a higher level object such as GstCaps,
 * GstMessage, GstEvent, GstQuery. It provides a means to enforce mutability
 * using the refcount of the parent with the gst_structure_set_parent_refcount()
 * method.
 *
 * A GstStructure can be created with gst_structure_new_empty() or
 * gst_structure_new(), which both take a name and an optional set of
 * key/value pairs along with the types of the values.
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
 * Strings in structures must be ASCII or UTF-8 encoded. Other encodings are
 * not allowed. Strings must not be empty either, but may be NULL.
 *
 * Last reviewed on 2012-03-29 (0.11.3)
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
		this.gstStructure = gstStructure;
	}
	
	/**
	 */
	
	/**
	 * Creates a new, empty GstStructure with the given name.
	 * See gst_structure_set_name() for constraints on the name parameter.
	 * Free-function: gst_structure_free
	 * Params:
	 * name = name of new structure
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name)
	{
		// GstStructure * gst_structure_new_empty (const gchar *name);
		auto p = gst_structure_new_empty(Str.toStringz(name));
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_structure_new_empty(Str.toStringz(name))");
		}
		this(cast(GstStructure*) p);
	}
	
	/**
	 * Creates a new, empty GstStructure with the given name as a GQuark.
	 * Free-function: gst_structure_free
	 * Params:
	 * quark = name of new structure
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GQuark quark)
	{
		// GstStructure * gst_structure_new_id_empty (GQuark quark);
		auto p = gst_structure_new_id_empty(quark);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_structure_new_id_empty(quark)");
		}
		this(cast(GstStructure*) p);
	}
	
	/**
	 * Creates a new GstStructure with the given name. Structure fields
	 * are set according to the varargs in a manner similar to
	 * gst_structure_new().
	 * See gst_structure_set_name() for constraints on the name parameter.
	 * Free-function: gst_structure_free
	 * Params:
	 * name = name of new structure
	 * firstfield = name of first field to set
	 * varargs = variable argument list
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string firstfield, void* varargs)
	{
		// GstStructure * gst_structure_new_valist (const gchar *name,  const gchar *firstfield,  va_list varargs);
		auto p = gst_structure_new_valist(Str.toStringz(name), Str.toStringz(firstfield), varargs);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_structure_new_valist(Str.toStringz(name), Str.toStringz(firstfield), varargs)");
		}
		this(cast(GstStructure*) p);
	}
	
	/**
	 * Duplicates a GstStructure and all its fields and values.
	 * Free-function: gst_structure_free
	 * Returns: a new GstStructure. [transfer none]
	 */
	public Structure copy()
	{
		// GstStructure * gst_structure_copy (const GstStructure *structure);
		auto p = gst_structure_copy(gstStructure);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Frees a GstStructure and all its fields and values. The structure must not
	 * have a parent when this function is called.
	 */
	public void free()
	{
		// void gst_structure_free (GstStructure *structure);
		gst_structure_free(gstStructure);
	}
	
	/**
	 * Get the name of structure as a string.
	 * Returns: the name of the structure.
	 */
	public string getName()
	{
		// const gchar * gst_structure_get_name (const GstStructure *structure);
		return Str.toString(gst_structure_get_name(gstStructure));
	}
	
	/**
	 * Checks if the structure has the given name
	 * Params:
	 * name = structure name to check for
	 * Returns: TRUE if name matches the name of the structure.
	 */
	public int hasName(string name)
	{
		// gboolean gst_structure_has_name (const GstStructure *structure,  const gchar *name);
		return gst_structure_has_name(gstStructure, Str.toStringz(name));
	}
	
	/**
	 * Sets the name of the structure to the given name. The string
	 * provided is copied before being used. It must not be empty, start with a
	 * letter and can be followed by letters, numbers and any of "/-_.:".
	 * Params:
	 * name = the new name of the structure
	 */
	public void setName(string name)
	{
		// void gst_structure_set_name (GstStructure *structure,  const gchar *name);
		gst_structure_set_name(gstStructure, Str.toStringz(name));
	}
	
	/**
	 * Get the name of structure as a GQuark.
	 * Returns: the quark representing the name of the structure.
	 */
	public GQuark getNameId()
	{
		// GQuark gst_structure_get_name_id (const GstStructure *structure);
		return gst_structure_get_name_id(gstStructure);
	}
	
	/**
	 * Parses the variable arguments and reads fields from structure accordingly.
	 * valist-variant of gst_structure_id_get(). Look at the documentation of
	 * gst_structure_id_get() for more details.
	 * Params:
	 * firstFieldId = the quark of the first field to read
	 * args = variable arguments
	 * Returns: TRUE, or FALSE if there was a problem reading any of the fields
	 */
	public int idGetValist(GQuark firstFieldId, void* args)
	{
		// gboolean gst_structure_id_get_valist (const GstStructure *structure,  GQuark first_field_id,  va_list args);
		return gst_structure_id_get_valist(gstStructure, firstFieldId, args);
	}
	
	/**
	 * Get the value of the field with GQuark field.
	 * Params:
	 * field = the GQuark of the field to get
	 * Returns: the GValue corresponding to the field with the given name identifier.
	 */
	public Value idGetValue(GQuark field)
	{
		// const GValue * gst_structure_id_get_value (const GstStructure *structure,  GQuark field);
		auto p = gst_structure_id_get_value(gstStructure, field);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
	
	/**
	 * Sets the field with the given GQuark field to value. If the field
	 * does not exist, it is created. If the field exists, the previous
	 * value is replaced and freed.
	 * Params:
	 * field = a GQuark representing a field
	 * value = the new value of the field
	 */
	public void idSetValue(GQuark field, Value value)
	{
		// void gst_structure_id_set_value (GstStructure *structure,  GQuark field,  const GValue *value);
		gst_structure_id_set_value(gstStructure, field, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets the field with the given GQuark field to value. If the field
	 * does not exist, it is created. If the field exists, the previous
	 * value is replaced and freed.
	 * Params:
	 * field = a GQuark representing a field
	 * value = the new value of the field. [transfer full]
	 */
	public void idTakeValue(GQuark field, Value value)
	{
		// void gst_structure_id_take_value (GstStructure *structure,  GQuark field,  GValue *value);
		gst_structure_id_take_value(gstStructure, field, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Parses the variable arguments and reads fields from structure accordingly.
	 * valist-variant of gst_structure_get(). Look at the documentation of
	 * gst_structure_get() for more details.
	 * Params:
	 * firstFieldname = the name of the first field to read
	 * args = variable arguments
	 * Returns: TRUE, or FALSE if there was a problem reading any of the fields
	 */
	public int getValist(string firstFieldname, void* args)
	{
		// gboolean gst_structure_get_valist (const GstStructure *structure,  const char *first_fieldname,  va_list args);
		return gst_structure_get_valist(gstStructure, Str.toStringz(firstFieldname), args);
	}
	
	/**
	 * Get the value of the field with name fieldname.
	 * Params:
	 * fieldname = the name of the field to get
	 * Returns: the GValue corresponding to the field with the given name.
	 */
	public Value getValue(string fieldname)
	{
		// const GValue * gst_structure_get_value (const GstStructure *structure,  const gchar *fieldname);
		auto p = gst_structure_get_value(gstStructure, Str.toStringz(fieldname));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
	
	/**
	 * Sets the field with the given name field to value. If the field
	 * does not exist, it is created. If the field exists, the previous
	 * value is replaced and freed.
	 * Params:
	 * fieldname = the name of the field to set
	 * value = the new value of the field
	 */
	public void setValue(string fieldname, Value value)
	{
		// void gst_structure_set_value (GstStructure *structure,  const gchar *fieldname,  const GValue *value);
		gst_structure_set_value(gstStructure, Str.toStringz(fieldname), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets the field with the given name field to value. If the field
	 * does not exist, it is created. If the field exists, the previous
	 * value is replaced and freed. The function will take ownership of value.
	 * Params:
	 * fieldname = the name of the field to set
	 * value = the new value of the field. [transfer full]
	 */
	public void takeValue(string fieldname, Value value)
	{
		// void gst_structure_take_value (GstStructure *structure,  const gchar *fieldname,  GValue *value);
		gst_structure_take_value(gstStructure, Str.toStringz(fieldname), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * va_list form of gst_structure_set().
	 * Params:
	 * fieldname = the name of the field to set
	 * varargs = variable arguments
	 */
	public void setValist(string fieldname, void* varargs)
	{
		// void gst_structure_set_valist (GstStructure *structure,  const gchar *fieldname,  va_list varargs);
		gst_structure_set_valist(gstStructure, Str.toStringz(fieldname), varargs);
	}
	
	/**
	 * va_list form of gst_structure_id_set().
	 * Params:
	 * fieldname = the name of the field to set
	 * varargs = variable arguments
	 */
	public void idSetValist(GQuark fieldname, void* varargs)
	{
		// void gst_structure_id_set_valist (GstStructure *structure,  GQuark fieldname,  va_list varargs);
		gst_structure_id_set_valist(gstStructure, fieldname, varargs);
	}
	
	/**
	 * Removes the field with the given name. If the field with the given
	 * name does not exist, the structure is unchanged.
	 * Params:
	 * fieldname = the name of the field to remove
	 */
	public void removeField(string fieldname)
	{
		// void gst_structure_remove_field (GstStructure *structure,  const gchar *fieldname);
		gst_structure_remove_field(gstStructure, Str.toStringz(fieldname));
	}
	
	/**
	 * va_list form of gst_structure_remove_fields().
	 * Params:
	 * fieldname = the name of the field to remove
	 * varargs = NULL-terminated list of more fieldnames to remove
	 */
	public void removeFieldsValist(string fieldname, void* varargs)
	{
		// void gst_structure_remove_fields_valist (GstStructure *structure,  const gchar *fieldname,  va_list varargs);
		gst_structure_remove_fields_valist(gstStructure, Str.toStringz(fieldname), varargs);
	}
	
	/**
	 * Removes all fields in a GstStructure.
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
	 * Params:
	 * fieldname = the name of the field
	 * Returns: the GValue of the field
	 */
	public GType getFieldType(string fieldname)
	{
		// GType gst_structure_get_field_type (const GstStructure *structure,  const gchar *fieldname);
		return gst_structure_get_field_type(gstStructure, Str.toStringz(fieldname));
	}
	
	/**
	 * Calls the provided function once for each field in the GstStructure. The
	 * function must not modify the fields. Also see gst_structure_map_in_place().
	 * Params:
	 * func = a function to call for each field. [scope call]
	 * userData = private data. [closure]
	 * Returns: TRUE if the supplied function returns TRUE For each of the fields, FALSE otherwise.
	 */
	public int foreac(GstStructureForeachFunc func, void* userData)
	{
		// gboolean gst_structure_foreach (const GstStructure *structure,  GstStructureForeachFunc func,  gpointer user_data);
		return gst_structure_foreach(gstStructure, func, userData);
	}
	
	/**
	 * Get the number of fields in the structure.
	 * Returns: the number of fields in the structure
	 */
	public int nFields()
	{
		// gint gst_structure_n_fields (const GstStructure *structure);
		return gst_structure_n_fields(gstStructure);
	}
	
	/**
	 * Check if structure contains a field named fieldname.
	 * Params:
	 * fieldname = the name of a field
	 * Returns: TRUE if the structure contains a field with the given name
	 */
	public int hasField(string fieldname)
	{
		// gboolean gst_structure_has_field (const GstStructure *structure,  const gchar *fieldname);
		return gst_structure_has_field(gstStructure, Str.toStringz(fieldname));
	}
	
	/**
	 * Check if structure contains a field named fieldname and with GType type.
	 * Params:
	 * fieldname = the name of a field
	 * type = the type of a value
	 * Returns: TRUE if the structure contains a field with the given name and type
	 */
	public int hasFieldTyped(string fieldname, GType type)
	{
		// gboolean gst_structure_has_field_typed (const GstStructure *structure,  const gchar *fieldname,  GType type);
		return gst_structure_has_field_typed(gstStructure, Str.toStringz(fieldname), type);
	}
	
	/**
	 * Tests if the two GstStructure are equal.
	 * Params:
	 * structure2 = a GstStructure.
	 * Returns: TRUE if the two structures have the same name and field.
	 */
	public int isEqual(Structure structure2)
	{
		// gboolean gst_structure_is_equal (const GstStructure *structure1,  const GstStructure *structure2);
		return gst_structure_is_equal(gstStructure, (structure2 is null) ? null : structure2.getStructureStruct());
	}
	
	/**
	 * Checks if subset is a subset of superset, i.e. has the same
	 * structure name and for all fields that are existing in superset,
	 * subset has a value that is a subset of the value in superset.
	 * Params:
	 * superset = a potentially greater GstStructure
	 * Returns: TRUE if subset is a subset of superset
	 */
	public int isSubset(Structure superset)
	{
		// gboolean gst_structure_is_subset (const GstStructure *subset,  const GstStructure *superset);
		return gst_structure_is_subset(gstStructure, (superset is null) ? null : superset.getStructureStruct());
	}
	
	/**
	 * Tries intersecting struct1 and struct2 and reports whether the result
	 * would not be empty.
	 * Params:
	 * struct2 = a GstStructure
	 * Returns: TRUE if intersection would not be empty
	 */
	public int canIntersect(Structure struct2)
	{
		// gboolean gst_structure_can_intersect (const GstStructure *struct1,  const GstStructure *struct2);
		return gst_structure_can_intersect(gstStructure, (struct2 is null) ? null : struct2.getStructureStruct());
	}
	
	/**
	 * Interesects struct1 and struct2 and returns the intersection.
	 * Params:
	 * struct2 = a GstStructure
	 * Returns: Intersection of struct1 and struct2
	 */
	public Structure intersect(Structure struct2)
	{
		// GstStructure * gst_structure_intersect (const GstStructure *struct1,  const GstStructure *struct2);
		auto p = gst_structure_intersect(gstStructure, (struct2 is null) ? null : struct2.getStructureStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Check if structure contains a field named field.
	 * Params:
	 * field = GQuark of the field name
	 * Returns: TRUE if the structure contains a field with the given name
	 */
	public int idHasField(GQuark field)
	{
		// gboolean gst_structure_id_has_field (const GstStructure *structure,  GQuark field);
		return gst_structure_id_has_field(gstStructure, field);
	}
	
	/**
	 * Check if structure contains a field named field and with GType type.
	 * Params:
	 * field = GQuark of the field name
	 * type = the type of a value
	 * Returns: TRUE if the structure contains a field with the given name and type
	 */
	public int idHasFieldTyped(GQuark field, GType type)
	{
		// gboolean gst_structure_id_has_field_typed (const GstStructure *structure,  GQuark field,  GType type);
		return gst_structure_id_has_field_typed(gstStructure, field, type);
	}
	
	/**
	 * Sets the boolean pointed to by value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * Params:
	 * fieldname = the name of a field
	 * value = a pointer to a gboolean to set. [out]
	 * Returns: TRUE if the value could be set correctly. If there was no field with fieldname or the existing field did not contain a boolean, this function returns FALSE.
	 */
	public int getBoolean(string fieldname, out int value)
	{
		// gboolean gst_structure_get_boolean (const GstStructure *structure,  const gchar *fieldname,  gboolean *value);
		return gst_structure_get_boolean(gstStructure, Str.toStringz(fieldname), &value);
	}
	
	/**
	 * Sets the int pointed to by value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * Params:
	 * fieldname = the name of a field
	 * value = a pointer to an int to set. [out]
	 * Returns: TRUE if the value could be set correctly. If there was no field with fieldname or the existing field did not contain an int, this function returns FALSE.
	 */
	public int getInt(string fieldname, out int value)
	{
		// gboolean gst_structure_get_int (const GstStructure *structure,  const gchar *fieldname,  gint *value);
		return gst_structure_get_int(gstStructure, Str.toStringz(fieldname), &value);
	}
	
	/**
	 * Sets the uint pointed to by value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * Params:
	 * fieldname = the name of a field
	 * value = a pointer to a uint to set. [out]
	 * Returns: TRUE if the value could be set correctly. If there was no field with fieldname or the existing field did not contain a uint, this function returns FALSE.
	 */
	public int getUint(string fieldname, out uint value)
	{
		// gboolean gst_structure_get_uint (const GstStructure *structure,  const gchar *fieldname,  guint *value);
		return gst_structure_get_uint(gstStructure, Str.toStringz(fieldname), &value);
	}
	
	/**
	 * Sets the double pointed to by value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * Params:
	 * fieldname = the name of a field
	 * value = a pointer to a gdouble to set. [out]
	 * Returns: TRUE if the value could be set correctly. If there was no field with fieldname or the existing field did not contain a double, this function returns FALSE.
	 */
	public int getDouble(string fieldname, out double value)
	{
		// gboolean gst_structure_get_double (const GstStructure *structure,  const gchar *fieldname,  gdouble *value);
		return gst_structure_get_double(gstStructure, Str.toStringz(fieldname), &value);
	}
	
	/**
	 * Finds the field corresponding to fieldname, and returns the string
	 * contained in the field's value. Caller is responsible for making
	 * sure the field exists and has the correct type.
	 * The string should not be modified, and remains valid until the next
	 * call to a gst_structure_*() function with the given structure.
	 * Params:
	 * fieldname = the name of a field
	 * Returns: a pointer to the string or NULL when the field did not exist or did not contain a string.
	 */
	public string getString(string fieldname)
	{
		// const gchar * gst_structure_get_string (const GstStructure *structure,  const gchar *fieldname);
		return Str.toString(gst_structure_get_string(gstStructure, Str.toStringz(fieldname)));
	}
	
	/**
	 * Sets the date pointed to by value corresponding to the date of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * On success value will point to a newly-allocated copy of the date which
	 * should be freed with g_date_free() when no longer needed (note: this is
	 * inconsistent with e.g. gst_structure_get_string() which doesn't return a
	 * copy of the string).
	 * Params:
	 * fieldname = the name of a field
	 * value = a pointer to a GDate to set. [out callee-allocates]
	 * Returns: TRUE if the value could be set correctly. If there was no field with fieldname or the existing field did not contain a data, this function returns FALSE.
	 */
	public int getDate(string fieldname, out Date value)
	{
		// gboolean gst_structure_get_date (const GstStructure *structure,  const gchar *fieldname,  GDate **value);
		GDate* outvalue = null;
		
		auto p = gst_structure_get_date(gstStructure, Str.toStringz(fieldname), &outvalue);
		
		value = ObjectG.getDObject!(Date)(outvalue);
		return p;
	}
	
	/**
	 * Sets the datetime pointed to by value corresponding to the datetime of the
	 * given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * On success value will point to a reference of the datetime which
	 * should be unreffed with gst_date_time_unref() when no longer needed
	 * (note: this is inconsistent with e.g. gst_structure_get_string()
	 * which doesn't return a copy of the string).
	 * Params:
	 * fieldname = the name of a field
	 * value = a pointer to a GstDateTime to set. [out callee-allocates]
	 * Returns: TRUE if the value could be set correctly. If there was no field with fieldname or the existing field did not contain a data, this function returns FALSE.
	 */
	public int getDateTime(string fieldname, out DateTime value)
	{
		// gboolean gst_structure_get_date_time (const GstStructure *structure,  const gchar *fieldname,  GstDateTime **value);
		GstDateTime* outvalue = null;
		
		auto p = gst_structure_get_date_time(gstStructure, Str.toStringz(fieldname), &outvalue);
		
		value = ObjectG.getDObject!(DateTime)(outvalue);
		return p;
	}
	
	/**
	 * Sets the clock time pointed to by value corresponding to the clock time
	 * of the given field. Caller is responsible for making sure the field exists
	 * and has the correct type.
	 * Params:
	 * fieldname = the name of a field
	 * value = a pointer to a GstClockTime to set. [out]
	 * Returns: TRUE if the value could be set correctly. If there was no field with fieldname or the existing field did not contain a GstClockTime, this function returns FALSE.
	 */
	public int getClockTime(string fieldname, out GstClockTime value)
	{
		// gboolean gst_structure_get_clock_time (const GstStructure *structure,  const gchar *fieldname,  GstClockTime *value);
		return gst_structure_get_clock_time(gstStructure, Str.toStringz(fieldname), &value);
	}
	
	/**
	 * Sets the int pointed to by value corresponding to the value of the
	 * given field. Caller is responsible for making sure the field exists,
	 * has the correct type and that the enumtype is correct.
	 * Params:
	 * fieldname = the name of a field
	 * enumtype = the enum type of a field
	 * value = a pointer to an int to set. [out]
	 * Returns: TRUE if the value could be set correctly. If there was no field with fieldname or the existing field did not contain an enum of the given type, this function returns FALSE.
	 */
	public int getEnum(string fieldname, GType enumtype, out int value)
	{
		// gboolean gst_structure_get_enum (const GstStructure *structure,  const gchar *fieldname,  GType enumtype,  gint *value);
		return gst_structure_get_enum(gstStructure, Str.toStringz(fieldname), enumtype, &value);
	}
	
	/**
	 * Sets the integers pointed to by value_numerator and value_denominator
	 * corresponding to the value of the given field. Caller is responsible
	 * for making sure the field exists and has the correct type.
	 * Params:
	 * fieldname = the name of a field
	 * valueNumerator = a pointer to an int to set. [out]
	 * valueDenominator = a pointer to an int to set. [out]
	 * Returns: TRUE if the values could be set correctly. If there was no field with fieldname or the existing field did not contain a GstFraction, this function returns FALSE.
	 */
	public int getFraction(string fieldname, out int valueNumerator, out int valueDenominator)
	{
		// gboolean gst_structure_get_fraction (const GstStructure *structure,  const gchar *fieldname,  gint *value_numerator,  gint *value_denominator);
		return gst_structure_get_fraction(gstStructure, Str.toStringz(fieldname), &valueNumerator, &valueDenominator);
	}
	
	/**
	 * Calls the provided function once for each field in the GstStructure. In
	 * contrast to gst_structure_foreach(), the function may modify but not delete the
	 * fields. The structure must be mutable.
	 * Params:
	 * func = a function to call for each field. [scope call]
	 * userData = private data. [closure]
	 * Returns: TRUE if the supplied function returns TRUE For each of the fields, FALSE otherwise.
	 */
	public int mapInPlace(GstStructureMapFunc func, void* userData)
	{
		// gboolean gst_structure_map_in_place (GstStructure *structure,  GstStructureMapFunc func,  gpointer user_data);
		return gst_structure_map_in_place(gstStructure, func, userData);
	}
	
	/**
	 * Get the name of the given field number, counting from 0 onwards.
	 * Params:
	 * index = the index to get the name of
	 * Returns: the name of the given field number
	 */
	public string nthFieldName(uint index)
	{
		// const gchar * gst_structure_nth_field_name (const GstStructure *structure,  guint index);
		return Str.toString(gst_structure_nth_field_name(gstStructure, index));
	}
	
	/**
	 * Sets the parent_refcount field of GstStructure. This field is used to
	 * determine whether a structure is mutable or not. This function should only be
	 * called by code implementing parent objects of GstStructure, as described in
	 * the MT Refcounting section of the design documents.
	 * Params:
	 * refcount = a pointer to the parent's refcount. [in]
	 * Returns: TRUE if the parent refcount could be set.
	 */
	public int setParentRefcount(int* refcount)
	{
		// gboolean gst_structure_set_parent_refcount (GstStructure *structure,  gint *refcount);
		return gst_structure_set_parent_refcount(gstStructure, refcount);
	}
	
	/**
	 * Converts structure to a human-readable string representation.
	 * Returns: a pointer to string allocated by g_malloc(). g_free() after usage. [transfer full]
	 */
	public override string toString()
	{
		// gchar * gst_structure_to_string (const GstStructure *structure);
		return Str.toString(gst_structure_to_string(gstStructure));
	}
	
	/**
	 * Creates a GstStructure from a string representation.
	 * If end is not NULL, a pointer to the place inside the given string
	 * where parsing ended will be returned.
	 * Free-function: gst_structure_free
	 * Params:
	 * string = a string representation of a GstStructure.
	 * end = pointer to store the end of the string in. [out][allow-none][transfer none]
	 * Returns: a new GstStructure or NULL when the string could not be parsed. Free with gst_structure_free() after use. [transfer full]
	 */
	public static Structure fromString(string string, out string end)
	{
		// GstStructure * gst_structure_from_string (const gchar *string,  gchar **end);
		char* outend = null;
		
		auto p = gst_structure_from_string(Str.toStringz(string), &outend);
		
		end = Str.toString(outend);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Fixate all values in structure using gst_value_fixate().
	 * structure will be modified in-place and should be writable.
	 */
	public void fixate()
	{
		// void gst_structure_fixate (GstStructure *structure);
		gst_structure_fixate(gstStructure);
	}
	
	/**
	 * Fixates a GstStructure by changing the given field with its fixated value.
	 * Params:
	 * fieldName = a field in structure
	 * Returns: TRUE if the structure field could be fixated
	 */
	public int fixateField(string fieldName)
	{
		// gboolean gst_structure_fixate_field (GstStructure *structure,  const char *field_name);
		return gst_structure_fixate_field(gstStructure, Str.toStringz(fieldName));
	}
	
	/**
	 * Fixates a GstStructure by changing the given field to the nearest
	 * integer to target that is a subset of the existing field.
	 * Params:
	 * fieldName = a field in structure
	 * target = the target value of the fixation
	 * Returns: TRUE if the structure could be fixated
	 */
	public int fixateFieldNearestInt(string fieldName, int target)
	{
		// gboolean gst_structure_fixate_field_nearest_int  (GstStructure *structure,  const char *field_name,  int target);
		return gst_structure_fixate_field_nearest_int(gstStructure, Str.toStringz(fieldName), target);
	}
	
	/**
	 * Fixates a GstStructure by changing the given field to the nearest
	 * double to target that is a subset of the existing field.
	 * Params:
	 * fieldName = a field in structure
	 * target = the target value of the fixation
	 * Returns: TRUE if the structure could be fixated
	 */
	public int fixateFieldNearestDouble(string fieldName, double target)
	{
		// gboolean gst_structure_fixate_field_nearest_double  (GstStructure *structure,  const char *field_name,  double target);
		return gst_structure_fixate_field_nearest_double(gstStructure, Str.toStringz(fieldName), target);
	}
	
	/**
	 * Fixates a GstStructure by changing the given field to the nearest
	 * fraction to target_numerator/target_denominator that is a subset
	 * of the existing field.
	 * Params:
	 * fieldName = a field in structure
	 * targetNumerator = The numerator of the target value of the fixation
	 * targetDenominator = The denominator of the target value of the fixation
	 * Returns: TRUE if the structure could be fixated
	 */
	public int fixateFieldNearestFraction(string fieldName, int targetNumerator, int targetDenominator)
	{
		// gboolean gst_structure_fixate_field_nearest_fraction  (GstStructure *structure,  const char *field_name,  const gint target_numerator,  const gint target_denominator);
		return gst_structure_fixate_field_nearest_fraction(gstStructure, Str.toStringz(fieldName), targetNumerator, targetDenominator);
	}
	
	/**
	 * Fixates a GstStructure by changing the given field_name field to the given
	 * target boolean if that field is not fixed yet.
	 * Params:
	 * fieldName = a field in structure
	 * target = the target value of the fixation
	 * Returns: TRUE if the structure could be fixated
	 */
	public int fixateFieldBoolean(string fieldName, int target)
	{
		// gboolean gst_structure_fixate_field_boolean (GstStructure *structure,  const char *field_name,  gboolean target);
		return gst_structure_fixate_field_boolean(gstStructure, Str.toStringz(fieldName), target);
	}
	
	/**
	 * Fixates a GstStructure by changing the given field_name field to the given
	 * target string if that field is not fixed yet.
	 * Params:
	 * fieldName = a field in structure
	 * target = the target value of the fixation
	 * Returns: TRUE if the structure could be fixated
	 */
	public int fixateFieldString(string fieldName, string target)
	{
		// gboolean gst_structure_fixate_field_string (GstStructure *structure,  const char *field_name,  const gchar *target);
		return gst_structure_fixate_field_string(gstStructure, Str.toStringz(fieldName), Str.toStringz(target));
	}
}
