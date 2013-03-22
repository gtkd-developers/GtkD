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
 * inFile  = libgda-gda-field.html
 * outPack = gda
 * outFile = FieldAttributes
 * strct   = GdaFieldAttributes
 * realStrct=
 * ctorStrct=
 * clss    = FieldAttributes
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_field_attributes_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gda.Value
 * structWrap:
 * 	- GdaFieldAttributes* -> FieldAttributes
 * 	- GdaValue* -> Value
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.FieldAttributes;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gda.Value;




/**
 */
public class FieldAttributes
{
	
	/** the main Gtk struct */
	protected GdaFieldAttributes* gdaFieldAttributes;
	
	
	public GdaFieldAttributes* getFieldAttributesStruct()
	{
		return gdaFieldAttributes;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaFieldAttributes;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaFieldAttributes* gdaFieldAttributes)
	{
		this.gdaFieldAttributes = gdaFieldAttributes;
	}
	
	/**
	 */
	
	/**
	 * Returns:
	 */
	public static GType getType()
	{
		// GType gda_field_attributes_get_type (void);
		return gda_field_attributes_get_type();
	}
	
	/**
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GdaFieldAttributes* gda_field_attributes_new (void);
		auto p = gda_field_attributes_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_field_attributes_new()");
		}
		this(cast(GdaFieldAttributes*) p);
	}
	
	/**
	 * Creates a new GdaFieldAttributes object from an existing one.
	 * Returns: a newly allocated GdaFieldAttributes with a copy of the data in fa.
	 */
	public FieldAttributes copy()
	{
		// GdaFieldAttributes* gda_field_attributes_copy (GdaFieldAttributes *fa);
		auto p = gda_field_attributes_copy(gdaFieldAttributes);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FieldAttributes)(cast(GdaFieldAttributes*) p);
	}
	
	/**
	 * Deallocates all memory associated to the given GdaFieldAttributes object.
	 */
	public void free()
	{
		// void gda_field_attributes_free (GdaFieldAttributes *fa);
		gda_field_attributes_free(gdaFieldAttributes);
	}
	
	/**
	 * Tests whether two field attributes are equal.
	 * Params:
	 * rhs = another GdaFieldAttributes
	 * Returns: TRUE if the field attributes contain the same information.
	 */
	public int equal(FieldAttributes rhs)
	{
		// gboolean gda_field_attributes_equal (const GdaFieldAttributes *lhs,  const GdaFieldAttributes *rhs);
		return gda_field_attributes_equal(gdaFieldAttributes, (rhs is null) ? null : rhs.getFieldAttributesStruct());
	}
	
	/**
	 * Returns: the defined size of fa.
	 */
	public glong getDefinedSize()
	{
		// glong gda_field_attributes_get_defined_size  (GdaFieldAttributes *fa);
		return gda_field_attributes_get_defined_size(gdaFieldAttributes);
	}
	
	/**
	 * Sets the defined size of a GdaFieldAttributes.
	 * Params:
	 * size = the defined size we want to set.
	 */
	public void setDefinedSize(glong size)
	{
		// void gda_field_attributes_set_defined_size  (GdaFieldAttributes *fa,  glong size);
		gda_field_attributes_set_defined_size(gdaFieldAttributes, size);
	}
	
	/**
	 * Returns: the name of fa.
	 */
	public string getName()
	{
		// const gchar* gda_field_attributes_get_name (GdaFieldAttributes *fa);
		return Str.toString(gda_field_attributes_get_name(gdaFieldAttributes));
	}
	
	/**
	 * Sets the name of fa to name.
	 * Params:
	 * name = the new name of fa.
	 */
	public void setName(string name)
	{
		// void gda_field_attributes_set_name (GdaFieldAttributes *fa,  const gchar *name);
		gda_field_attributes_set_name(gdaFieldAttributes, Str.toStringz(name));
	}
	
	/**
	 * Returns: the name of the table to which this field belongs.
	 */
	public string getTable()
	{
		// const gchar* gda_field_attributes_get_table (GdaFieldAttributes *fa);
		return Str.toString(gda_field_attributes_get_table(gdaFieldAttributes));
	}
	
	/**
	 * Sets the name of the table to which the given field belongs.
	 * Params:
	 * table = table name.
	 */
	public void setTable(string table)
	{
		// void gda_field_attributes_set_table (GdaFieldAttributes *fa,  const gchar *table);
		gda_field_attributes_set_table(gdaFieldAttributes, Str.toStringz(table));
	}
	
	/**
	 * Returns: fa's caption.
	 */
	public string getCaption()
	{
		// const gchar* gda_field_attributes_get_caption (GdaFieldAttributes *fa);
		return Str.toString(gda_field_attributes_get_caption(gdaFieldAttributes));
	}
	
	/**
	 * Sets fa's caption.
	 * Params:
	 * caption = caption.
	 */
	public void setCaption(string caption)
	{
		// void gda_field_attributes_set_caption (GdaFieldAttributes *fa,  const gchar *caption);
		gda_field_attributes_set_caption(gdaFieldAttributes, Str.toStringz(caption));
	}
	
	/**
	 * Returns: the number of decimals of fa.
	 */
	public glong getScale()
	{
		// glong gda_field_attributes_get_scale (GdaFieldAttributes *fa);
		return gda_field_attributes_get_scale(gdaFieldAttributes);
	}
	
	/**
	 * Sets the scale of fa to scale.
	 * Params:
	 * scale = number of decimals.
	 */
	public void setScale(glong scale)
	{
		// void gda_field_attributes_set_scale (GdaFieldAttributes *fa,  glong scale);
		gda_field_attributes_set_scale(gdaFieldAttributes, scale);
	}
	
	/**
	 * Returns: the type of fa.
	 */
	public GdaValueType getGdatype()
	{
		// GdaValueType gda_field_attributes_get_gdatype (GdaFieldAttributes *fa);
		return gda_field_attributes_get_gdatype(gdaFieldAttributes);
	}
	
	/**
	 * Sets the type of fa to type.
	 * Params:
	 * type = the new type of fa.
	 */
	public void setGdatype(GdaValueType type)
	{
		// void gda_field_attributes_set_gdatype (GdaFieldAttributes *fa,  GdaValueType type);
		gda_field_attributes_set_gdatype(gdaFieldAttributes, type);
	}
	
	/**
	 * Gets the 'allow null' flag of the given field attributes.
	 * Returns: whether the given field allows null values or not (TRUE or FALSE).
	 */
	public int getAllowNull()
	{
		// gboolean gda_field_attributes_get_allow_null (GdaFieldAttributes *fa);
		return gda_field_attributes_get_allow_null(gdaFieldAttributes);
	}
	
	/**
	 * Sets the 'allow null' flag of the given field attributes.
	 * Params:
	 * allow = whether the given field should allows null values or not.
	 */
	public void setAllowNull(int allow)
	{
		// void gda_field_attributes_set_allow_null (GdaFieldAttributes *fa,  gboolean allow);
		gda_field_attributes_set_allow_null(gdaFieldAttributes, allow);
	}
	
	/**
	 * Returns: whether if the given field is a primary key (TRUE or FALSE).
	 */
	public int getPrimaryKey()
	{
		// gboolean gda_field_attributes_get_primary_key  (GdaFieldAttributes *fa);
		return gda_field_attributes_get_primary_key(gdaFieldAttributes);
	}
	
	/**
	 * Sets the 'primary key' flag of the given field attributes.
	 * Params:
	 * pk = whether if the given field should be a primary key.
	 */
	public void setPrimaryKey(int pk)
	{
		// void gda_field_attributes_set_primary_key  (GdaFieldAttributes *fa,  gboolean pk);
		gda_field_attributes_set_primary_key(gdaFieldAttributes, pk);
	}
	
	/**
	 * Returns: whether if the given field is an unique key (TRUE or FALSE).
	 */
	public int getUniqueKey()
	{
		// gboolean gda_field_attributes_get_unique_key (GdaFieldAttributes *fa);
		return gda_field_attributes_get_unique_key(gdaFieldAttributes);
	}
	
	/**
	 * Sets the 'unique key' flag of the given field attributes.
	 * Params:
	 * uk = whether if the given field should be an unique key.
	 */
	public void setUniqueKey(int uk)
	{
		// void gda_field_attributes_set_unique_key (GdaFieldAttributes *fa,  gboolean uk);
		gda_field_attributes_set_unique_key(gdaFieldAttributes, uk);
	}
	
	/**
	 * Returns: fa's references.
	 */
	public string getReferences()
	{
		// const gchar* gda_field_attributes_get_references (GdaFieldAttributes *fa);
		return Str.toString(gda_field_attributes_get_references(gdaFieldAttributes));
	}
	
	/**
	 * Sets fa's references.
	 * Params:
	 * ref = references.
	 */
	public void setReferences(string doref)
	{
		// void gda_field_attributes_set_references (GdaFieldAttributes *fa,  const gchar *ref);
		gda_field_attributes_set_references(gdaFieldAttributes, Str.toStringz(doref));
	}
	
	/**
	 * Returns: whether the given field is an auto incremented one (TRUE or FALSE).
	 */
	public int getAutoIncrement()
	{
		// gboolean gda_field_attributes_get_auto_increment  (GdaFieldAttributes *fa);
		return gda_field_attributes_get_auto_increment(gdaFieldAttributes);
	}
	
	/**
	 * Sets the auto increment flag for the given field.
	 * Params:
	 * isAuto = auto increment status.
	 */
	public void setAutoIncrement(int isAuto)
	{
		// void gda_field_attributes_set_auto_increment  (GdaFieldAttributes *fa,  gboolean is_auto);
		gda_field_attributes_set_auto_increment(gdaFieldAttributes, isAuto);
	}
	
	/**
	 * Returns: the position of the field the attributes refer to in the containing data model.
	 */
	public int getPosition()
	{
		// gint gda_field_attributes_get_position (GdaFieldAttributes *fa);
		return gda_field_attributes_get_position(gdaFieldAttributes);
	}
	
	/**
	 * Sets the position of the field the attributes refer to in the containing
	 * data model.
	 * Params:
	 * position = the wanted position of the field in the containing data model.
	 */
	public void setPosition(int position)
	{
		// void gda_field_attributes_set_position (GdaFieldAttributes *fa,  gint position);
		gda_field_attributes_set_position(gdaFieldAttributes, position);
	}
	
	/**
	 * Params:
	 * fa = a GdaFieldAttributes.
	 * Returns: fa's default value, as a GdaValue object.
	 */
	public Value getDefaultValue()
	{
		// const GdaValue* gda_field_attributes_get_default_value  (GdaFieldAttributes *fa);
		auto p = gda_field_attributes_get_default_value(gdaFieldAttributes);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GdaValue*) p);
	}
	
	/**
	 * Sets fa's default GdaValue.
	 * Params:
	 * fa = a GdaFieldAttributes.
	 * defaultValue = default GdaValue for the field
	 */
	public void setDefaultValue(Value defaultValue)
	{
		// void gda_field_attributes_set_default_value  (GdaFieldAttributes *fa,  const GdaValue *default_value);
		gda_field_attributes_set_default_value(gdaFieldAttributes, (defaultValue is null) ? null : defaultValue.getValueStruct());
	}
}
