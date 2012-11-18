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
 * inFile  = libgda-gda-parameter.html
 * outPack = gda
 * outFile = Parameter
 * strct   = GdaParameter
 * realStrct=
 * ctorStrct=
 * clss    = Parameter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_parameter_
 * omit structs:
 * omit prefixes:
 * 	- gda_parameter_list_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gda.Value
 * structWrap:
 * 	- GObject* -> ObjectG
 * 	- GdaParameter* -> Parameter
 * 	- GdaValue* -> Value
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.Parameter;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ObjectG;
private import gda.Value;




/**
 * Description
 *  Parameters are the way clients have to send an unlimited number
 *  of arguments to the providers.
 */
public class Parameter
{
	
	/** the main Gtk struct */
	protected GdaParameter* gdaParameter;
	
	
	public GdaParameter* getParameterStruct()
	{
		return gdaParameter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaParameter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaParameter* gdaParameter)
	{
		this.gdaParameter = gdaParameter;
	}
	
	/**
	 */
	
	/**
	 * Returns:
	 */
	public static GType getType()
	{
		// GType gda_parameter_get_type (void);
		return gda_parameter_get_type();
	}
	
	/**
	 * Creates a new GdaParameter object, which is usually used
	 * with GdaParameterList.
	 * Params:
	 * name = name for the parameter being created.
	 * value = a GdaValue for this parameter.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, Value value)
	{
		// GdaParameter* gda_parameter_new_from_value (const gchar *name,  const GdaValue *value);
		auto p = gda_parameter_new_from_value(Str.toStringz(name), (value is null) ? null : value.getValueStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_parameter_new_from_value(Str.toStringz(name), (value is null) ? null : value.getValueStruct())");
		}
		this(cast(GdaParameter*) p);
	}
	
	/**
	 * Creates a new GdaParameter from a gboolean value.
	 * Params:
	 * name = name for the parameter being created.
	 * value = a boolean value.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, int value)
	{
		// GdaParameter* gda_parameter_new_boolean (const gchar *name,  gboolean value);
		auto p = gda_parameter_new_boolean(Str.toStringz(name), value);
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_parameter_new_boolean(Str.toStringz(name), value)");
		}
		this(cast(GdaParameter*) p);
	}
	
	/**
	 * Creates a new GdaParameter from a gdouble value.
	 * Params:
	 * name = name for the parameter being created.
	 * value = a gdouble value.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, double value)
	{
		// GdaParameter* gda_parameter_new_double (const gchar *name,  gdouble value);
		auto p = gda_parameter_new_double(Str.toStringz(name), value);
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_parameter_new_double(Str.toStringz(name), value)");
		}
		this(cast(GdaParameter*) p);
	}
	
	/**
	 * Creates a new GdaParameter from a GObject.
	 * Params:
	 * name = name for the parameter being created.
	 * value = a GObject value.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, ObjectG value)
	{
		// GdaParameter* gda_parameter_new_gobject (const gchar *name,  const GObject *value);
		auto p = gda_parameter_new_gobject(Str.toStringz(name), (value is null) ? null : value.getObjectGStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_parameter_new_gobject(Str.toStringz(name), (value is null) ? null : value.getObjectGStruct())");
		}
		this(cast(GdaParameter*) p);
	}
	
	/**
	 * Creates a new GdaParameter from a string.
	 * Params:
	 * name = name for the parameter being created.
	 * value = string value.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string value)
	{
		// GdaParameter* gda_parameter_new_string (const gchar *name,  const gchar *value);
		auto p = gda_parameter_new_string(Str.toStringz(name), Str.toStringz(value));
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_parameter_new_string(Str.toStringz(name), Str.toStringz(value))");
		}
		this(cast(GdaParameter*) p);
	}
	
	/**
	 * Creates a new GdaParameter from an existing one.
	 * Returns: a newly allocated GdaParameter with a copy of the data in param.
	 */
	public Parameter copy()
	{
		// GdaParameter* gda_parameter_copy (GdaParameter *param);
		auto p = gda_parameter_copy(gdaParameter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Parameter)(cast(GdaParameter*) p);
	}
	
	/**
	 * Releases all memory occupied by the given GdaParameter.
	 */
	public void free()
	{
		// void gda_parameter_free (GdaParameter *param);
		gda_parameter_free(gdaParameter);
	}
	
	/**
	 * Returns: the name of the given GdaParameter.
	 */
	public string getName()
	{
		// const gchar* gda_parameter_get_name (GdaParameter *param);
		return Str.toString(gda_parameter_get_name(gdaParameter));
	}
	
	/**
	 * Sets the name of the given GdaParameter.
	 * Params:
	 * name = new name for the parameter.
	 */
	public void setName(string name)
	{
		// void gda_parameter_set_name (GdaParameter *param,  const gchar *name);
		gda_parameter_set_name(gdaParameter, Str.toStringz(name));
	}
	
	/**
	 * Returns: the value stored in the given param.
	 */
	public Value getValue()
	{
		// const GdaValue* gda_parameter_get_value (GdaParameter *param);
		auto p = gda_parameter_get_value(gdaParameter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GdaValue*) p);
	}
	
	/**
	 * Stores the given value in the given param.
	 * Params:
	 * value = a GdaValue.
	 */
	public void setValue(Value value)
	{
		// void gda_parameter_set_value (GdaParameter *param,  GdaValue *value);
		gda_parameter_set_value(gdaParameter, (value is null) ? null : value.getValueStruct());
	}
}
