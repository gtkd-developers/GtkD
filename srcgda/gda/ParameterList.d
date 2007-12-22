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
 * inFile  = 
 * outPack = gda
 * outFile = ParameterList
 * strct   = GdaParameterList
 * realStrct=
 * ctorStrct=
 * clss    = ParameterList
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_parameter_list_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gda_parameter_get_type
 * 	- gda_parameter_new_from_value
 * 	- gda_parameter_new_boolean
 * 	- gda_parameter_new_double
 * 	- gda_parameter_new_gobject
 * 	- gda_parameter_new_string
 * 	- gda_parameter_copy
 * 	- gda_parameter_free
 * 	- gda_parameter_get_name
 * 	- gda_parameter_set_name
 * 	- gda_parameter_get_value
 * 	- gda_parameter_set_value
 * imports:
 * 	- gda.Parameter
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaParameter* -> Parameter
 * 	- GdaParameterList* -> ParameterList
 * 	- GdaValue* -> Value
 * module aliases:
 * local aliases:
 */

module gda.ParameterList;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gdac.gdatypes;

private import gdac.gda;


private import gda.Parameter;
private import glib.ListG;




/**
 * Description
 *  Parameters are the way clients have to send an unlimited number
 *  of arguments to the providers.
 */
public class ParameterList
{
	
	/** the main Gtk struct */
	protected GdaParameterList* gdaParameterList;
	
	
	public GdaParameterList* getParameterListStruct()
	{
		return gdaParameterList;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaParameterList;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaParameterList* gdaParameterList)
	{
		version(noAssert)
		{
			if ( gdaParameterList is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdaParameterList is null on constructor").newline;
				}
				else
				{
					printf("struct gdaParameterList is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdaParameterList !is null, "struct gdaParameterList is null on constructor");
		}
		this.gdaParameterList = gdaParameterList;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Returns :
	 */
	public static GType getType()
	{
		// GType gda_parameter_list_get_type (void);
		return gda_parameter_list_get_type();
	}
	
	/**
	 * Creates a new GdaParameterList.
	 * Returns :
	 *  the newly created parameter list.
	 */
	public this ()
	{
		// GdaParameterList* gda_parameter_list_new (void);
		this(cast(GdaParameterList*)gda_parameter_list_new() );
	}
	
	/**
	 * Releases all memory occupied by the given GdaParameterList.
	 * plist :
	 *  a GdaParameterList.
	 */
	public void free()
	{
		// void gda_parameter_list_free (GdaParameterList *plist);
		gda_parameter_list_free(gdaParameterList);
	}
	
	/**
	 * Creates a new GdaParameterList from an existing one.
	 * plist :
	 *  parameter list to get a copy from.
	 * Returns :
	 *  a newly allocated GdaParameterList with a copy of the data in plist.
	 */
	public ParameterList copy()
	{
		// GdaParameterList* gda_parameter_list_copy (GdaParameterList *plist);
		return new ParameterList( gda_parameter_list_copy(gdaParameterList) );
	}
	
	/**
	 * Adds a new parameter to the given GdaParameterList. Note that param is,
	 * when calling this function, is owned by the GdaParameterList, so the
	 * caller should just forget about it and not try to free the parameter once
	 * it's been added to the GdaParameterList.
	 * plist :
	 *  a GdaParameterList.
	 * param :
	 *  the GdaParameter to be added to the list.
	 */
	public void addParameter(Parameter param)
	{
		// void gda_parameter_list_add_parameter (GdaParameterList *plist,  GdaParameter *param);
		gda_parameter_list_add_parameter(gdaParameterList, (param is null) ? null : param.getParameterStruct());
	}
	
	/**
	 * Gets the names of all parameters in the parameter list.
	 * plist :
	 *  a GdaParameterList.
	 * Returns :
	 *  a GList containing the names of the parameters. After
	 * using it, you should free this list by calling g_list_free.
	 */
	public ListG getNames()
	{
		// GList* gda_parameter_list_get_names (GdaParameterList *plist);
		return new ListG( gda_parameter_list_get_names(gdaParameterList) );
	}
	
	/**
	 * Gets a GdaParameter from the parameter list given its name.
	 * plist :
	 *  a GdaParameterList.
	 * name :
	 *  name of the parameter to search for.
	 * Returns :
	 *  the GdaParameter identified by name, if found, or NULL
	 * if not found.
	 */
	public Parameter find(char[] name)
	{
		// GdaParameter* gda_parameter_list_find (GdaParameterList *plist,  const gchar *name);
		return new Parameter( gda_parameter_list_find(gdaParameterList, Str.toStringz(name)) );
	}
	
	/**
	 * Clears the parameter list. This means removing all GdaParameter's currently
	 * being stored in the parameter list. After calling this function,
	 * the parameter list is empty.
	 * plist :
	 *  a GdaParameterList.
	 */
	public void clear()
	{
		// void gda_parameter_list_clear (GdaParameterList *plist);
		gda_parameter_list_clear(gdaParameterList);
	}
	
	/**
	 * plist :
	 *  a GdaParameterList.
	 * Returns :
	 *  the number of parameters stored in the given parameter list.
	 */
	public uint getLength()
	{
		// guint gda_parameter_list_get_length (GdaParameterList *plist);
		return gda_parameter_list_get_length(gdaParameterList);
	}
}
