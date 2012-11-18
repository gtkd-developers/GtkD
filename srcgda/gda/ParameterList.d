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
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gda.Parameter
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaParameter* -> Parameter
 * 	- GdaParameterList* -> ParameterList
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.ParameterList;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;
private import gda.Parameter;




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
		this.gdaParameterList = gdaParameterList;
	}
	
	/**
	 */
	
	/**
	 * Returns:
	 */
	public static GType getType()
	{
		// GType gda_parameter_list_get_type (void);
		return gda_parameter_list_get_type();
	}
	
	/**
	 * Creates a new GdaParameterList.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GdaParameterList* gda_parameter_list_new (void);
		auto p = gda_parameter_list_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_parameter_list_new()");
		}
		this(cast(GdaParameterList*) p);
	}
	
	/**
	 * Releases all memory occupied by the given GdaParameterList.
	 */
	public void free()
	{
		// void gda_parameter_list_free (GdaParameterList *plist);
		gda_parameter_list_free(gdaParameterList);
	}
	
	/**
	 * Creates a new GdaParameterList from an existing one.
	 * Returns: a newly allocated GdaParameterList with a copy of the data in plist.
	 */
	public ParameterList copy()
	{
		// GdaParameterList* gda_parameter_list_copy (GdaParameterList *plist);
		auto p = gda_parameter_list_copy(gdaParameterList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParameterList)(cast(GdaParameterList*) p);
	}
	
	/**
	 * Adds a new parameter to the given GdaParameterList. Note that param is,
	 * when calling this function, is owned by the GdaParameterList, so the
	 * caller should just forget about it and not try to free the parameter once
	 * it's been added to the GdaParameterList.
	 * Params:
	 * param = the GdaParameter to be added to the list.
	 */
	public void addParameter(Parameter param)
	{
		// void gda_parameter_list_add_parameter (GdaParameterList *plist,  GdaParameter *param);
		gda_parameter_list_add_parameter(gdaParameterList, (param is null) ? null : param.getParameterStruct());
	}
	
	/**
	 * Gets the names of all parameters in the parameter list.
	 * Returns: a GList containing the names of the parameters. After using it, you should free this list by calling g_list_free.
	 */
	public ListG getNames()
	{
		// GList* gda_parameter_list_get_names (GdaParameterList *plist);
		auto p = gda_parameter_list_get_names(gdaParameterList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Gets a GdaParameter from the parameter list given its name.
	 * Params:
	 * name = name of the parameter to search for.
	 * Returns: the GdaParameter identified by name, if found, or NULL if not found.
	 */
	public Parameter find(string name)
	{
		// GdaParameter* gda_parameter_list_find (GdaParameterList *plist,  const gchar *name);
		auto p = gda_parameter_list_find(gdaParameterList, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Parameter)(cast(GdaParameter*) p);
	}
	
	/**
	 * Clears the parameter list. This means removing all GdaParameter's currently
	 * being stored in the parameter list. After calling this function,
	 * the parameter list is empty.
	 */
	public void clear()
	{
		// void gda_parameter_list_clear (GdaParameterList *plist);
		gda_parameter_list_clear(gdaParameterList);
	}
	
	/**
	 * Returns: the number of parameters stored in the given parameter list.
	 */
	public uint getLength()
	{
		// guint gda_parameter_list_get_length (GdaParameterList *plist);
		return gda_parameter_list_get_length(gdaParameterList);
	}
}
