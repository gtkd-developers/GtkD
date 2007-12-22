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
 * inFile  = libgda-gda-value.html
 * outPack = gda
 * outFile = Value
 * strct   = GdaValue
 * realStrct=
 * ctorStrct=
 * clss    = Value
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_value_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gda_value_new_boolean
 * 	- gda_value_new_timestamp_from_timet
 * 	- gda_value_new_tinyint
 * 	- gda_value_new_tinyuint
 * 	- gda_value_new_uinteger
 * imports:
 * 	- gobject.ObjectG
 * structWrap:
 * 	- GObject* -> ObjectG
 * 	- GdaValue* -> Value
 * module aliases:
 * local aliases:
 */

module gda.Value;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gdac.gdatypes;

private import gdac.gda;


private import gobject.ObjectG;




/**
 * Description
 */
public class Value
{
	
	/** the main Gtk struct */
	protected GdaValue* gdaValue;
	
	
	public GdaValue* getValueStruct()
	{
		return gdaValue;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaValue;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaValue* gdaValue)
	{
		version(noAssert)
		{
			if ( gdaValue is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdaValue is null on constructor").newline;
				}
				else
				{
					printf("struct gdaValue is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdaValue !is null, "struct gdaValue is null on constructor");
		}
		this.gdaValue = gdaValue;
	}
	
	public this (bool val)
	{
		// GdaValue* gda_value_new_boolean (gboolean val);
		this(cast(GdaValue*)gda_value_new_boolean(val) );
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Returns :
	 */
	public static GType getGtype()
	{
		// GType gda_value_get_gtype (void);
		return gda_value_get_gtype();
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_NULL.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this ()
	{
		// GdaValue* gda_value_new_null (void);
		this(cast(GdaValue*)gda_value_new_null() );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_BIGINT with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (long val)
	{
		// GdaValue* gda_value_new_bigint (gint64 val);
		this(cast(GdaValue*)gda_value_new_bigint(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_BIGUINT with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (ulong val)
	{
		// GdaValue* gda_value_new_biguint (guint64 val);
		this(cast(GdaValue*)gda_value_new_biguint(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_BINARY with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * size :
	 *  the size of the memory pool pointer to by val.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (void* val, int size)
	{
		// GdaValue* gda_value_new_binary (gconstpointer val,  glong size);
		this(cast(GdaValue*)gda_value_new_binary(val, size) );
	}
	
	/**
	 * val :
	 * Returns :
	 */
	public this (GdaBlob* val)
	{
		// GdaValue* gda_value_new_blob (const GdaBlob *val);
		this(cast(GdaValue*)gda_value_new_blob(val) );
	}
	
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_DATE with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (GdaDate* val)
	{
		// GdaValue* gda_value_new_date (const GdaDate *val);
		this(cast(GdaValue*)gda_value_new_date(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_DOUBLE with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (double val)
	{
		// GdaValue* gda_value_new_double (gdouble val);
		this(cast(GdaValue*)gda_value_new_double(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_GEOMETRIC_POINT with value
	 * val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (GdaGeometricPoint* val)
	{
		// GdaValue* gda_value_new_geometric_point (const GdaGeometricPoint *val);
		this(cast(GdaValue*)gda_value_new_geometric_point(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_GOBJECT with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (ObjectG val)
	{
		// GdaValue* gda_value_new_gobject (const GObject *val);
		this(cast(GdaValue*)gda_value_new_gobject((val is null) ? null : val.getObjectGStruct()) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_INTEGER with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (int val)
	{
		// GdaValue* gda_value_new_integer (gint val);
		this(cast(GdaValue*)gda_value_new_integer(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_LIST with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (GdaValueList* val)
	{
		// GdaValue* gda_value_new_list (const GdaValueList *val);
		this(cast(GdaValue*)gda_value_new_list(val) );
	}
	
	/**
	 * val :
	 * Returns :
	 */
	public this (GdaMoney* val)
	{
		// GdaValue* gda_value_new_money (const GdaMoney *val);
		this(cast(GdaValue*)gda_value_new_money(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_NUMERIC with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (GdaNumeric* val)
	{
		// GdaValue* gda_value_new_numeric (const GdaNumeric *val);
		this(cast(GdaValue*)gda_value_new_numeric(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_SINGLE with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (float val)
	{
		// GdaValue* gda_value_new_single (gfloat val);
		this(cast(GdaValue*)gda_value_new_single(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_SMALLINT with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (short val)
	{
		// GdaValue* gda_value_new_smallint (gshort val);
		this(cast(GdaValue*)gda_value_new_smallint(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_SMALLUINT with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (ushort val)
	{
		// GdaValue* gda_value_new_smalluint (gushort val);
		this(cast(GdaValue*)gda_value_new_smalluint(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_STRING with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (char[] val)
	{
		// GdaValue* gda_value_new_string (const gchar *val);
		this(cast(GdaValue*)gda_value_new_string(Str.toStringz(val)) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_TIME with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (GdaTime* val)
	{
		// GdaValue* gda_value_new_time (const GdaTime *val);
		this(cast(GdaValue*)gda_value_new_time(val) );
	}
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_TIMESTAMP with value val.
	 * val :
	 *  value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (GdaTimestamp* val)
	{
		// GdaValue* gda_value_new_timestamp (const GdaTimestamp *val);
		this(cast(GdaValue*)gda_value_new_timestamp(val) );
	}
	
	
	
	
	/**
	 * Makes a new GdaValue of type GDA_VALUE_TYPE_TYPE with value val.
	 * val :
	 *  Value to set for the new GdaValue.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (GdaValueType val)
	{
		// GdaValue* gda_value_new_type (GdaValueType val);
		this(cast(GdaValue*)gda_value_new_type(val) );
	}
	
	
	/**
	 * Makes a new GdaValue of type type from its string representation.
	 * as_string :
	 *  stringified representation of the value.
	 * type :
	 *  the new value type.
	 * Returns :
	 *  the newly created GdaValue or NULL if the string representation
	 * cannot be converted to the specified type.
	 */
	public this (char[] asString, GdaValueType type)
	{
		// GdaValue* gda_value_new_from_string (const gchar *as_string,  GdaValueType type);
		this(cast(GdaValue*)gda_value_new_from_string(Str.toStringz(asString), type) );
	}
	
	/**
	 * Creates a GdaValue from a XML representation of it. That XML
	 * node corresponds to the following string representation:
	 *  lt;value type="gdatype"gt;valuelt;/valuegt;
	 * node :
	 *  a XML node representing the value.
	 * Returns :
	 *  the newly created GdaValue.
	 */
	public this (xmlNodePtr node)
	{
		// GdaValue* gda_value_new_from_xml (const xmlNodePtr node);
		this(cast(GdaValue*)gda_value_new_from_xml(node) );
	}
	
	/**
	 * Deallocates all memory associated to a GdaValue.
	 * value :
	 *  the resource to free.
	 */
	public void free()
	{
		// void gda_value_free (GdaValue *value);
		gda_value_free(gdaValue);
	}
	
	/**
	 * Retrieves the type of the given value.
	 * value :
	 *  value to get the type from.
	 * Returns :
	 *  the GdaValueType of the value.
	 */
	public GdaValueType getType()
	{
		// GdaValueType gda_value_get_type (GdaValue *value);
		return gda_value_get_type(gdaValue);
	}
	
	
	/**
	 * Tests if a given value is of type GDA_VALUE_TYPE_NULL.
	 * value :
	 *  value to test.
	 * Returns :
	 *  a boolean that says whether or not value is of type
	 * GDA_VALUE_TYPE_NULL.
	 */
	public int isNull()
	{
		// gboolean gda_value_is_null (GdaValue *value);
		return gda_value_is_null(gdaValue);
	}
	
	/**
	 * Gets whether the value stored in the given GdaValue is of
	 * numeric type or not.
	 * value :
	 *  a GdaValue.
	 * Returns :
	 *  TRUE if a number, FALSE otherwise.
	 */
	public int isNumber()
	{
		// gboolean gda_value_is_number (GdaValue *value);
		return gda_value_is_number(gdaValue);
	}
	
	/**
	 * Creates a new GdaValue from an existing one.
	 * value :
	 *  value to get a copy from.
	 * Returns :
	 *  a newly allocated GdaValue with a copy of the data in value.
	 */
	public Value copy()
	{
		// GdaValue* gda_value_copy (GdaValue *value);
		return new Value( gda_value_copy(gdaValue) );
	}
	
	/**
	 * Gets the value stored in value.
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value contained in value.
	 */
	public long getBigint()
	{
		// gint64 gda_value_get_bigint (GdaValue *value);
		return gda_value_get_bigint(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setBigint(long val)
	{
		// void gda_value_set_bigint (GdaValue *value,  gint64 val);
		gda_value_set_bigint(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public ulong getBiguint()
	{
		// guint64 gda_value_get_biguint (GdaValue *value);
		return gda_value_get_biguint(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setBiguint(ulong val)
	{
		// void gda_value_set_biguint (GdaValue *value,  guint64 val);
		gda_value_set_biguint(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * size :
	 *  holder for length of data.
	 * Returns :
	 *  the value stored in value.
	 */
	public void* getBinary(int* size)
	{
		// const gpointer gda_value_get_binary (GdaValue *value,  glong *size);
		return gda_value_get_binary(gdaValue, size);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 * size :
	 *  the size of the memory pool pointed to by val.
	 */
	public void setBinary(void* val, int size)
	{
		// void gda_value_set_binary (GdaValue *value,  gconstpointer val,  glong size);
		gda_value_set_binary(gdaValue, val, size);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public GdaBlob* getBlob()
	{
		// const GdaBlob* gda_value_get_blob (GdaValue *value);
		return gda_value_get_blob(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setBlob(GdaBlob* val)
	{
		// void gda_value_set_blob (GdaValue *value,  const GdaBlob *val);
		gda_value_set_blob(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public int getBoolean()
	{
		// gboolean gda_value_get_boolean (GdaValue *value);
		return gda_value_get_boolean(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setBoolean(int val)
	{
		// void gda_value_set_boolean (GdaValue *value,  gboolean val);
		gda_value_set_boolean(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public GdaDate* getDate()
	{
		// const GdaDate* gda_value_get_date (GdaValue *value);
		return gda_value_get_date(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setDate(GdaDate* val)
	{
		// void gda_value_set_date (GdaValue *value,  const GdaDate *val);
		gda_value_set_date(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public double getDouble()
	{
		// gdouble gda_value_get_double (GdaValue *value);
		return gda_value_get_double(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setDouble(double val)
	{
		// void gda_value_set_double (GdaValue *value,  gdouble val);
		gda_value_set_double(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public GdaGeometricPoint* getGeometricPoint()
	{
		// const GdaGeometricPoint* gda_value_get_geometric_point (GdaValue *value);
		return gda_value_get_geometric_point(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setGeometricPoint(GdaGeometricPoint* val)
	{
		// void gda_value_set_geometric_point (GdaValue *value,  const GdaGeometricPoint *val);
		gda_value_set_geometric_point(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public ObjectG getGobject()
	{
		// const GObject* gda_value_get_gobject (GdaValue *value);
		return new ObjectG( gda_value_get_gobject(gdaValue) );
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setGobject(ObjectG val)
	{
		// void gda_value_set_gobject (GdaValue *value,  const GObject *val);
		gda_value_set_gobject(gdaValue, (val is null) ? null : val.getObjectGStruct());
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public int getInteger()
	{
		// gint gda_value_get_integer (GdaValue *value);
		return gda_value_get_integer(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setInteger(int val)
	{
		// void gda_value_set_integer (GdaValue *value,  gint val);
		gda_value_set_integer(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public GdaValueList* getList()
	{
		// const GdaValueList* gda_value_get_list (GdaValue *value);
		return gda_value_get_list(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setList(GdaValueList* val)
	{
		// void gda_value_set_list (GdaValue *value,  const GdaValueList *val);
		gda_value_set_list(gdaValue, val);
	}
	
	/**
	 * Sets the type of value to GDA_VALUE_TYPE_NULL.
	 * value :
	 *  a GdaValue that will store a value of type GDA_VALUE_TYPE_NULL.
	 */
	public void setNull()
	{
		// void gda_value_set_null (GdaValue *value);
		gda_value_set_null(gdaValue);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public GdaMoney* getMoney()
	{
		// const GdaMoney* gda_value_get_money (GdaValue *value);
		return gda_value_get_money(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setMoney(GdaMoney* val)
	{
		// void gda_value_set_money (GdaValue *value,  const GdaMoney *val);
		gda_value_set_money(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public GdaNumeric* getNumeric()
	{
		// const GdaNumeric* gda_value_get_numeric (GdaValue *value);
		return gda_value_get_numeric(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setNumeric(GdaNumeric* val)
	{
		// void gda_value_set_numeric (GdaValue *value,  const GdaNumeric *val);
		gda_value_set_numeric(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public float getSingle()
	{
		// gfloat gda_value_get_single (GdaValue *value);
		return gda_value_get_single(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setSingle(float val)
	{
		// void gda_value_set_single (GdaValue *value,  gfloat val);
		gda_value_set_single(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public short getSmallint()
	{
		// gshort gda_value_get_smallint (GdaValue *value);
		return gda_value_get_smallint(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setSmallint(short val)
	{
		// void gda_value_set_smallint (GdaValue *value,  gshort val);
		gda_value_set_smallint(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public ushort getSmalluint()
	{
		// gushort gda_value_get_smalluint (GdaValue *value);
		return gda_value_get_smalluint(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setSmalluint(ushort val)
	{
		// void gda_value_set_smalluint (GdaValue *value,  gushort val);
		gda_value_set_smalluint(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public char[] getString()
	{
		// const gchar* gda_value_get_string (GdaValue *value);
		return Str.toString(gda_value_get_string(gdaValue) );
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setString(char[] val)
	{
		// void gda_value_set_string (GdaValue *value,  const gchar *val);
		gda_value_set_string(gdaValue, Str.toStringz(val));
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public GdaTime* getTime()
	{
		// const GdaTime* gda_value_get_time (GdaValue *value);
		return gda_value_get_time(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setTime(GdaTime* val)
	{
		// void gda_value_set_time (GdaValue *value,  const GdaTime *val);
		gda_value_set_time(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public GdaTimestamp* getTimestamp()
	{
		// const GdaTimestamp* gda_value_get_timestamp (GdaValue *value);
		return gda_value_get_timestamp(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setTimestamp(GdaTimestamp* val)
	{
		// void gda_value_set_timestamp (GdaValue *value,  const GdaTimestamp *val);
		gda_value_set_timestamp(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public char getTinyint()
	{
		// gchar gda_value_get_tinyint (GdaValue *value);
		return gda_value_get_tinyint(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setTinyint(char val)
	{
		// void gda_value_set_tinyint (GdaValue *value,  gchar val);
		gda_value_set_tinyint(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public char getTinyuint()
	{
		// guchar gda_value_get_tinyuint (GdaValue *value);
		return gda_value_get_tinyuint(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setTinyuint(char val)
	{
		// void gda_value_set_tinyuint (GdaValue *value,  guchar val);
		gda_value_set_tinyuint(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public uint getUinteger()
	{
		// guint gda_value_get_uinteger (GdaValue *value);
		return gda_value_get_uinteger(gdaValue);
	}
	
	/**
	 * Stores val into value.
	 * value :
	 *  a GdaValue that will store val.
	 * val :
	 *  value to be stored in value.
	 */
	public void setUinteger(uint val)
	{
		// void gda_value_set_uinteger (GdaValue *value,  guint val);
		gda_value_set_uinteger(gdaValue, val);
	}
	
	/**
	 * value :
	 *  a GdaValue whose value we want to get.
	 * Returns :
	 *  the value stored in value.
	 */
	public GdaValueType getVtype()
	{
		// GdaValueType gda_value_get_vtype (GdaValue *value);
		return gda_value_get_vtype(gdaValue);
	}
	
	/**
	 * Stores type into value.
	 * value :
	 *  a GdaValue that will store type.
	 * type :
	 *  value to be stored in value.
	 */
	public void setVtype(GdaValueType type)
	{
		// void gda_value_set_vtype (GdaValue *value,  GdaValueType type);
		gda_value_set_vtype(gdaValue, type);
	}
	
	/**
	 * Stores the value data from its string representation as type.
	 * value :
	 *  a GdaValue that will store val.
	 * as_string :
	 *  the stringified representation of the value.
	 * type :
	 *  the type of the value
	 * Returns :
	 *  TRUE if the value has been properly converted to type from
	 * its string representation. FALSE otherwise.
	 */
	public int setFromString(char[] asString, GdaValueType type)
	{
		// gboolean gda_value_set_from_string (GdaValue *value,  const gchar *as_string,  GdaValueType type);
		return gda_value_set_from_string(gdaValue, Str.toStringz(asString), type);
	}
	
	/**
	 * Sets the value of a GdaValue from another GdaValue. This
	 * is different from gda_value_copy, which creates a new GdaValue.
	 * gda_value_set_from_value, on the other hand, copies the contents
	 * of copy into value, which must already be allocated.
	 * value :
	 *  a GdaValue.
	 * from :
	 *  the value to copy from.
	 * Returns :
	 *  TRUE if successful, FALSE otherwise.
	 */
	public int setFromValue(Value from)
	{
		// gboolean gda_value_set_from_value (GdaValue *value,  const GdaValue *from);
		return gda_value_set_from_value(gdaValue, (from is null) ? null : from.getValueStruct());
	}
	
	/**
	 * Compares two values of the same type.
	 * value1 :
	 *  a GdaValue to compare.
	 * value2 :
	 *  the other GdaValue to be compared to value1.
	 * Returns :
	 *  if both values have the same type, returns 0 if both contain
	 * the same value, an integer less than 0 if value1 is less than value2 or
	 * an integer greater than 0 if value1 is greater than value2.
	 */
	public int compare(Value value2)
	{
		// gint gda_value_compare (GdaValue *value1,  GdaValue *value2);
		return gda_value_compare(gdaValue, (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Converts a GdaValue to its string representation as indicated by this
	 * table:
	 * value :
	 *  a GdaValue.
	 * Returns :
	 *  a string formatted according to the printf() style indicated in
	 * the preceding table. Free the value with a g_free() when you've finished
	 * using it.
	 */
	public char[] stringify()
	{
		// gchar* gda_value_stringify (GdaValue *value);
		return Str.toString(gda_value_stringify(gdaValue) );
	}
	
	/**
	 * Serializes the given GdaValue to a XML node string.
	 * value :
	 *  a GdaValue.
	 * Returns :
	 *  the XML node. Once not needed anymore, you should free it.
	 */
	public xmlNodePtr toXml()
	{
		// xmlNodePtr gda_value_to_xml (GdaValue *value);
		return gda_value_to_xml(gdaValue);
	}
}
