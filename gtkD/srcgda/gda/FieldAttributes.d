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
 * imports:
 * 	- glib.ListG
 * 	- gda.Value
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaConnection* -> Connection
 * 	- GdaFieldAttributes* -> FieldAttributes
 * 	- GdaValue* -> Value
 * module aliases:
 * local aliases:
 */

module gda.FieldAttributes;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gdac.gdatypes;

private import gdac.gda;


private import glib.ListG;
private import gda.Value;




/**
 * Description
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
		version(noAssert)
		{
			if ( gdaFieldAttributes is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdaFieldAttributes is null on constructor").newline;
				}
				else
				{
					printf("struct gdaFieldAttributes is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdaFieldAttributes !is null, "struct gdaFieldAttributes is null on constructor");
		}
		this.gdaFieldAttributes = gdaFieldAttributes;
	}
	
	/**
	 */
	
	
	
	
	/**
	 * Returns :
	 */
	public static GType getType()
	{
		// GType gda_field_attributes_get_type (void);
		return gda_field_attributes_get_type();
	}
	
	/**
	 * Returns :
	 *  a newly allocated GdaFieldAttributes object.
	 */
	public this ()
	{
		// GdaFieldAttributes* gda_field_attributes_new (void);
		this(cast(GdaFieldAttributes*)gda_field_attributes_new() );
	}
	
	/**
	 * Creates a new GdaFieldAttributes object from an existing one.
	 * fa :
	 *  attributes to get a copy from.
	 * Returns :
	 *  a newly allocated GdaFieldAttributes with a copy of the data
	 * in fa.
	 */
	public FieldAttributes copy()
	{
		// GdaFieldAttributes* gda_field_attributes_copy (GdaFieldAttributes *fa);
		return new FieldAttributes( gda_field_attributes_copy(gdaFieldAttributes) );
	}
	
	/**
	 * Deallocates all memory associated to the given GdaFieldAttributes object.
	 * fa :
	 *  the resource to free.
	 */
	public void free()
	{
		// void gda_field_attributes_free (GdaFieldAttributes *fa);
		gda_field_attributes_free(gdaFieldAttributes);
	}
	
	/**
	 * Tests whether two field attributes are equal.
	 * lhs :
	 *  a GdaFieldAttributes
	 * rhs :
	 *  another GdaFieldAttributes
	 * Returns :
	 *  TRUE if the field attributes contain the same information.
	 */
	public int equal(FieldAttributes rhs)
	{
		// gboolean gda_field_attributes_equal (const GdaFieldAttributes *lhs,  const GdaFieldAttributes *rhs);
		return gda_field_attributes_equal(gdaFieldAttributes, (rhs is null) ? null : rhs.getFieldAttributesStruct());
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  the defined size of fa.
	 */
	public int getDefinedSize()
	{
		// glong gda_field_attributes_get_defined_size  (GdaFieldAttributes *fa);
		return gda_field_attributes_get_defined_size(gdaFieldAttributes);
	}
	
	/**
	 * Sets the defined size of a GdaFieldAttributes.
	 * fa :
	 *  a GdaFieldAttributes.
	 * size :
	 *  the defined size we want to set.
	 */
	public void setDefinedSize(int size)
	{
		// void gda_field_attributes_set_defined_size  (GdaFieldAttributes *fa,  glong size);
		gda_field_attributes_set_defined_size(gdaFieldAttributes, size);
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  the name of fa.
	 */
	public char[] getName()
	{
		// const gchar* gda_field_attributes_get_name (GdaFieldAttributes *fa);
		return Str.toString(gda_field_attributes_get_name(gdaFieldAttributes) );
	}
	
	/**
	 * Sets the name of fa to name.
	 * fa :
	 *  a GdaFieldAttributes.
	 * name :
	 *  the new name of fa.
	 */
	public void setName(char[] name)
	{
		// void gda_field_attributes_set_name (GdaFieldAttributes *fa,  const gchar *name);
		gda_field_attributes_set_name(gdaFieldAttributes, Str.toStringz(name));
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  the name of the table to which this field belongs.
	 */
	public char[] getTable()
	{
		// const gchar* gda_field_attributes_get_table (GdaFieldAttributes *fa);
		return Str.toString(gda_field_attributes_get_table(gdaFieldAttributes) );
	}
	
	/**
	 * Sets the name of the table to which the given field belongs.
	 * fa :
	 *  a GdaFieldAttributes.
	 * table :
	 *  table name.
	 */
	public void setTable(char[] table)
	{
		// void gda_field_attributes_set_table (GdaFieldAttributes *fa,  const gchar *table);
		gda_field_attributes_set_table(gdaFieldAttributes, Str.toStringz(table));
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  fa's caption.
	 */
	public char[] getCaption()
	{
		// const gchar* gda_field_attributes_get_caption (GdaFieldAttributes *fa);
		return Str.toString(gda_field_attributes_get_caption(gdaFieldAttributes) );
	}
	
	/**
	 * Sets fa's caption.
	 * fa :
	 *  a GdaFieldAttributes.
	 * caption :
	 *  caption.
	 */
	public void setCaption(char[] caption)
	{
		// void gda_field_attributes_set_caption (GdaFieldAttributes *fa,  const gchar *caption);
		gda_field_attributes_set_caption(gdaFieldAttributes, Str.toStringz(caption));
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  the number of decimals of fa.
	 */
	public int getScale()
	{
		// glong gda_field_attributes_get_scale (GdaFieldAttributes *fa);
		return gda_field_attributes_get_scale(gdaFieldAttributes);
	}
	
	/**
	 * Sets the scale of fa to scale.
	 * fa :
	 *  a GdaFieldAttributes.
	 * scale :
	 *  number of decimals.
	 */
	public void setScale(int scale)
	{
		// void gda_field_attributes_set_scale (GdaFieldAttributes *fa,  glong scale);
		gda_field_attributes_set_scale(gdaFieldAttributes, scale);
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  the type of fa.
	 */
	public GdaValueType getGdatype()
	{
		// GdaValueType gda_field_attributes_get_gdatype (GdaFieldAttributes *fa);
		return gda_field_attributes_get_gdatype(gdaFieldAttributes);
	}
	
	/**
	 * Sets the type of fa to type.
	 * fa :
	 *  a GdaFieldAttributes.
	 * type :
	 *  the new type of fa.
	 */
	public void setGdatype(GdaValueType type)
	{
		// void gda_field_attributes_set_gdatype (GdaFieldAttributes *fa,  GdaValueType type);
		gda_field_attributes_set_gdatype(gdaFieldAttributes, type);
	}
	
	/**
	 * Gets the 'allow null' flag of the given field attributes.
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  whether the given field allows null values or not (TRUE or FALSE).
	 */
	public int getAllowNull()
	{
		// gboolean gda_field_attributes_get_allow_null (GdaFieldAttributes *fa);
		return gda_field_attributes_get_allow_null(gdaFieldAttributes);
	}
	
	/**
	 * Sets the 'allow null' flag of the given field attributes.
	 * fa :
	 *  a GdaFieldAttributes.
	 * allow :
	 *  whether the given field should allows null values or not.
	 */
	public void setAllowNull(int allow)
	{
		// void gda_field_attributes_set_allow_null (GdaFieldAttributes *fa,  gboolean allow);
		gda_field_attributes_set_allow_null(gdaFieldAttributes, allow);
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  whether if the given field is a primary key (TRUE or FALSE).
	 */
	public int getPrimaryKey()
	{
		// gboolean gda_field_attributes_get_primary_key  (GdaFieldAttributes *fa);
		return gda_field_attributes_get_primary_key(gdaFieldAttributes);
	}
	
	/**
	 * Sets the 'primary key' flag of the given field attributes.
	 * fa :
	 *  a GdaFieldAttributes.
	 * pk :
	 *  whether if the given field should be a primary key.
	 */
	public void setPrimaryKey(int pk)
	{
		// void gda_field_attributes_set_primary_key  (GdaFieldAttributes *fa,  gboolean pk);
		gda_field_attributes_set_primary_key(gdaFieldAttributes, pk);
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  whether if the given field is an unique key (TRUE or FALSE).
	 */
	public int getUniqueKey()
	{
		// gboolean gda_field_attributes_get_unique_key (GdaFieldAttributes *fa);
		return gda_field_attributes_get_unique_key(gdaFieldAttributes);
	}
	
	/**
	 * Sets the 'unique key' flag of the given field attributes.
	 * fa :
	 *  a GdaFieldAttributes.
	 * uk :
	 *  whether if the given field should be an unique key.
	 */
	public void setUniqueKey(int uk)
	{
		// void gda_field_attributes_set_unique_key (GdaFieldAttributes *fa,  gboolean uk);
		gda_field_attributes_set_unique_key(gdaFieldAttributes, uk);
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  fa's references.
	 */
	public char[] getReferences()
	{
		// const gchar* gda_field_attributes_get_references (GdaFieldAttributes *fa);
		return Str.toString(gda_field_attributes_get_references(gdaFieldAttributes) );
	}
	
	/**
	 * Sets fa's references.
	 * fa :
	 *  a GdaFieldAttributes.
	 * ref :
	 *  references.
	 */
	public void setReferences(char[] doref)
	{
		// void gda_field_attributes_set_references (GdaFieldAttributes *fa,  const gchar *ref);
		gda_field_attributes_set_references(gdaFieldAttributes, Str.toStringz(doref));
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  whether the given field is an auto incremented one (TRUE or FALSE).
	 */
	public int getAutoIncrement()
	{
		// gboolean gda_field_attributes_get_auto_increment  (GdaFieldAttributes *fa);
		return gda_field_attributes_get_auto_increment(gdaFieldAttributes);
	}
	
	/**
	 * Sets the auto increment flag for the given field.
	 * fa :
	 *  a GdaFieldAttributes.
	 * is_auto :
	 *  auto increment status.
	 */
	public void setAutoIncrement(int isAuto)
	{
		// void gda_field_attributes_set_auto_increment  (GdaFieldAttributes *fa,  gboolean is_auto);
		gda_field_attributes_set_auto_increment(gdaFieldAttributes, isAuto);
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  the position of the field the attributes refer to in the
	 * containing data model.
	 */
	public int getPosition()
	{
		// gint gda_field_attributes_get_position (GdaFieldAttributes *fa);
		return gda_field_attributes_get_position(gdaFieldAttributes);
	}
	
	/**
	 * Sets the position of the field the attributes refer to in the containing
	 * data model.
	 * fa :
	 *  a GdaFieldAttributes.
	 * position :
	 *  the wanted position of the field in the containing data model.
	 */
	public void setPosition(int position)
	{
		// void gda_field_attributes_set_position (GdaFieldAttributes *fa,  gint position);
		gda_field_attributes_set_position(gdaFieldAttributes, position);
	}
	
	/**
	 * fa :
	 *  a GdaFieldAttributes.
	 * Returns :
	 *  fa's default value, as a GdaValue object.
	 */
	public Value getDefaultValue()
	{
		// const GdaValue* gda_field_attributes_get_default_value  (GdaFieldAttributes *fa);
		return new Value( gda_field_attributes_get_default_value(gdaFieldAttributes) );
	}
	
	/**
	 * Sets fa's default GdaValue.
	 * fa :
	 *  a GdaFieldAttributes.
	 * default_value :
	 *  default GdaValue for the field
	 */
	public void setDefaultValue(Value defaultValue)
	{
		// void gda_field_attributes_set_default_value  (GdaFieldAttributes *fa,  const GdaValue *default_value);
		gda_field_attributes_set_default_value(gdaFieldAttributes, (defaultValue is null) ? null : defaultValue.getValueStruct());
	}
}
