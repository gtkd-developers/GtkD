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
 * 	- gda_parameter_list_get_type
 * 	- gda_parameter_list_new
 * 	- gda_parameter_list_free
 * 	- gda_parameter_list_copy
 * 	- gda_parameter_list_add_parameter
 * 	- gda_parameter_list_get_names
 * 	- gda_parameter_list_find
 * 	- gda_parameter_list_clear
 * 	- gda_parameter_list_get_length
 * imports:
 * 	- glib.ListG
 * 	- gda.Value
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaParameter* -> Parameter
 * 	- GdaValue* -> Value
 * module aliases:
 * local aliases:
 */

module gda.Parameter;

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
		version(noAssert)
		{
			if ( gdaParameter is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdaParameter is null on constructor").newline;
				}
				else
				{
					printf("struct gdaParameter is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdaParameter !is null, "struct gdaParameter is null on constructor");
		}
		this.gdaParameter = gdaParameter;
	}
	
	/**
	 */
	
	
	
	/**
	 * Returns :
	 */
	public static GType getType()
	{
		// GType gda_parameter_get_type (void);
		return gda_parameter_get_type();
	}
	
	/**
	 * Creates a new GdaParameter object, which is usually used
	 * with GdaParameterList.
	 * name :
	 *  name for the parameter being created.
	 * value :
	 *  a GdaValue for this parameter.
	 * Returns :
	 *  the newly created GdaParameter.
	 */
	public this (char[] name, Value value)
	{
		// GdaParameter* gda_parameter_new_from_value (const gchar *name,  const GdaValue *value);
		this(cast(GdaParameter*)gda_parameter_new_from_value(Str.toStringz(name), (value is null) ? null : value.getValueStruct()) );
	}
	
	/**
	 * Creates a new GdaParameter from a gboolean value.
	 * name :
	 *  name for the parameter being created.
	 * value :
	 *  a boolean value.
	 * Returns :
	 *  the newly created GdaParameter.
	 */
	public this (char[] name, int value)
	{
		// GdaParameter* gda_parameter_new_boolean (const gchar *name,  gboolean value);
		this(cast(GdaParameter*)gda_parameter_new_boolean(Str.toStringz(name), value) );
	}
	
	/**
	 * Creates a new GdaParameter from a gdouble value.
	 * name :
	 *  name for the parameter being created.
	 * value :
	 *  a gdouble value.
	 * Returns :
	 *  the newly created GdaParameter.
	 */
	public this (char[] name, double value)
	{
		// GdaParameter* gda_parameter_new_double (const gchar *name,  gdouble value);
		this(cast(GdaParameter*)gda_parameter_new_double(Str.toStringz(name), value) );
	}
	
	/**
	 * Creates a new GdaParameter from a GObject.
	 * name :
	 *  name for the parameter being created.
	 * value :
	 *  a GObject value.
	 * Returns :
	 *  the newly created GdaParameter.
	 */
	public this (char[] name, GObject* value)
	{
		// GdaParameter* gda_parameter_new_gobject (const gchar *name,  const GObject *value);
		this(cast(GdaParameter*)gda_parameter_new_gobject(Str.toStringz(name), value) );
	}
	
	/**
	 * Creates a new GdaParameter from a string.
	 * name :
	 *  name for the parameter being created.
	 * value :
	 *  string value.
	 * Returns :
	 *  the newly created GdaParameter.
	 */
	public this (char[] name, char[] value)
	{
		// GdaParameter* gda_parameter_new_string (const gchar *name,  const gchar *value);
		this(cast(GdaParameter*)gda_parameter_new_string(Str.toStringz(name), Str.toStringz(value)) );
	}
	
	/**
	 * Creates a new GdaParameter from an existing one.
	 * param :
	 *  parameter to get a copy from.
	 * Returns :
	 *  a newly allocated GdaParameter with a copy of the data in param.
	 */
	public Parameter copy()
	{
		// GdaParameter* gda_parameter_copy (GdaParameter *param);
		return new Parameter( gda_parameter_copy(gdaParameter) );
	}
	
	/**
	 * Releases all memory occupied by the given GdaParameter.
	 * param :
	 *  the GdaParameter to be freed.
	 */
	public void free()
	{
		// void gda_parameter_free (GdaParameter *param);
		gda_parameter_free(gdaParameter);
	}
	
	/**
	 * param :
	 *  a GdaParameter object.
	 * Returns :
	 *  the name of the given GdaParameter.
	 */
	public char[] getName()
	{
		// const gchar* gda_parameter_get_name (GdaParameter *param);
		return Str.toString(gda_parameter_get_name(gdaParameter) );
	}
	
	/**
	 * Sets the name of the given GdaParameter.
	 * param :
	 *  a GdaParameter.
	 * name :
	 *  new name for the parameter.
	 */
	public void setName(char[] name)
	{
		// void gda_parameter_set_name (GdaParameter *param,  const gchar *name);
		gda_parameter_set_name(gdaParameter, Str.toStringz(name));
	}
	
	/**
	 * param :
	 *  a GdaParameter.
	 * Returns :
	 *  the value stored in the given param.
	 */
	public Value getValue()
	{
		// const GdaValue* gda_parameter_get_value (GdaParameter *param);
		return new Value( gda_parameter_get_value(gdaParameter) );
	}
	
	/**
	 * Stores the given value in the given param.
	 * param :
	 *  a GdaParameter.
	 * value :
	 *  a GdaValue.
	 */
	public void setValue(Value value)
	{
		// void gda_parameter_set_value (GdaParameter *param,  GdaValue *value);
		gda_parameter_set_value(gdaParameter, (value is null) ? null : value.getValueStruct());
	}
	
	
	
	
	
	
	
	
	
	
	
}
