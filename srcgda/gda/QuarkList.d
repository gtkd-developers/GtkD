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
 * inFile  = libgda-gda-quark-list.html
 * outPack = gda
 * outFile = QuarkList
 * strct   = GdaQuarkList
 * realStrct=
 * ctorStrct=
 * clss    = QuarkList
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_quark_list_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaQuarkList* -> QuarkList
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.QuarkList;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;




/**
 *  Parameter lists are used primary in the parsing and creation
 *  of connection strings.
 */
public class QuarkList
{
	
	/** the main Gtk struct */
	protected GdaQuarkList* gdaQuarkList;
	
	
	public GdaQuarkList* getQuarkListStruct()
	{
		return gdaQuarkList;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaQuarkList;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaQuarkList* gdaQuarkList)
	{
		this.gdaQuarkList = gdaQuarkList;
	}
	
	/**
	 */
	
	/**
	 * Returns:
	 */
	public static GType getType()
	{
		// GType gda_quark_list_get_type (void);
		return gda_quark_list_get_type();
	}
	
	/**
	 * Creates a new GdaQuarkList, which is a set of key->value pairs,
	 * very similar to GLib's GHashTable, but with the only purpose to
	 * make easier the parsing and creation of data source connection
	 * strings.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GdaQuarkList* gda_quark_list_new (void);
		auto p = gda_quark_list_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_quark_list_new()");
		}
		this(cast(GdaQuarkList*) p);
	}
	
	/**
	 * Creates a new GdaQuarkList given a connection string.
	 * Params:
	 * string = a connection string.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string string)
	{
		// GdaQuarkList* gda_quark_list_new_from_string (const gchar *string);
		auto p = gda_quark_list_new_from_string(Str.toStringz(string));
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_quark_list_new_from_string(Str.toStringz(string))");
		}
		this(cast(GdaQuarkList*) p);
	}
	
	/**
	 * Creates a new GdaQuarkList from an existing one.
	 * Returns: a newly allocated GdaQuarkList with a copy of the data in qlist.
	 */
	public QuarkList copy()
	{
		// GdaQuarkList* gda_quark_list_copy (GdaQuarkList *qlist);
		auto p = gda_quark_list_copy(gdaQuarkList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(QuarkList)(cast(GdaQuarkList*) p);
	}
	
	/**
	 * Releases all memory occupied by the given GdaQuarkList.
	 */
	public void free()
	{
		// void gda_quark_list_free (GdaQuarkList *qlist);
		gda_quark_list_free(gdaQuarkList);
	}
	
	/**
	 * Adds new key->value pairs from the given string. If cleanup is
	 * set to TRUE, the previous contents will be discarded before adding
	 * the new pairs.
	 * Params:
	 * string = a connection string.
	 * cleanup = whether to cleanup the previous content or not.
	 */
	public void addFromString(string string, int cleanup)
	{
		// void gda_quark_list_add_from_string (GdaQuarkList *qlist,  const gchar *string,  gboolean cleanup);
		gda_quark_list_add_from_string(gdaQuarkList, Str.toStringz(string), cleanup);
	}
	
	/**
	 * Searches for the value identified by name in the given GdaQuarkList.
	 * Params:
	 * name = the name of the value to search for.
	 * Returns: the value associated with the given key if found, or NULL if not found.
	 */
	public string find(string name)
	{
		// const gchar* gda_quark_list_find (GdaQuarkList *qlist,  const gchar *name);
		return Str.toString(gda_quark_list_find(gdaQuarkList, Str.toStringz(name)));
	}
	
	/**
	 * Removes an entry from the GdaQuarkList, given its name.
	 * Params:
	 * name = an entry name.
	 */
	public void remove(string name)
	{
		// void gda_quark_list_remove (GdaQuarkList *qlist,  const gchar *name);
		gda_quark_list_remove(gdaQuarkList, Str.toStringz(name));
	}
	
	/**
	 * Removes all strings in the given GdaQuarkList.
	 */
	public void clear()
	{
		// void gda_quark_list_clear (GdaQuarkList *qlist);
		gda_quark_list_clear(gdaQuarkList);
	}
}
