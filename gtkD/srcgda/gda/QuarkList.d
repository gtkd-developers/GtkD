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
 * imports:
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaQuarkList* -> QuarkList
 * module aliases:
 * local aliases:
 */

module gda.QuarkList;

private import gdac.gdatypes;

private import gdac.gda;






/**
 * Description
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
		assert(gdaQuarkList !is null, "struct gdaQuarkList is null on constructor");
		this.gdaQuarkList = gdaQuarkList;
	}
	
	/**
	 */
	
	
	
	/**
	 * Returns :
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
	 * Returns :
	 *  the newly created GdaQuarkList.
	 */
	public this ()
	{
		// GdaQuarkList* gda_quark_list_new (void);
		this(cast(GdaQuarkList*)gda_quark_list_new() );
	}
	
	/**
	 * Creates a new GdaQuarkList given a connection string.
	 * string :
	 *  a connection string.
	 * Returns :
	 *  the newly created GdaQuarkList.
	 */
	public this (char[] string)
	{
		// GdaQuarkList* gda_quark_list_new_from_string (const gchar *string);
		this(cast(GdaQuarkList*)gda_quark_list_new_from_string(Str.toStringz(string)) );
	}
	
	/**
	 * Creates a new GdaQuarkList from an existing one.
	 * qlist :
	 *  quark_list to get a copy from.
	 * Returns :
	 *  a newly allocated GdaQuarkList with a copy of the data in qlist.
	 */
	public QuarkList copy()
	{
		// GdaQuarkList* gda_quark_list_copy (GdaQuarkList *qlist);
		return new QuarkList( gda_quark_list_copy(gdaQuarkList) );
	}
	
	/**
	 * Releases all memory occupied by the given GdaQuarkList.
	 * qlist :
	 *  a GdaQuarkList.
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
	 * qlist :
	 *  a GdaQuarkList.
	 * string :
	 *  a connection string.
	 * cleanup :
	 *  whether to cleanup the previous content or not.
	 */
	public void addFromString(char[] string, int cleanup)
	{
		// void gda_quark_list_add_from_string (GdaQuarkList *qlist,  const gchar *string,  gboolean cleanup);
		gda_quark_list_add_from_string(gdaQuarkList, Str.toStringz(string), cleanup);
	}
	
	/**
	 * Searches for the value identified by name in the given GdaQuarkList.
	 * qlist :
	 *  a GdaQuarkList.
	 * name :
	 *  the name of the value to search for.
	 * Returns :
	 *  the value associated with the given key if found, or NULL
	 * if not found.
	 */
	public char[] find(char[] name)
	{
		// const gchar* gda_quark_list_find (GdaQuarkList *qlist,  const gchar *name);
		return Str.toString(gda_quark_list_find(gdaQuarkList, Str.toStringz(name)) );
	}
	
	/**
	 * Removes an entry from the GdaQuarkList, given its name.
	 * qlist :
	 *  a GdaQuarkList structure.
	 * name :
	 *  an entry name.
	 */
	public void remove(char[] name)
	{
		// void gda_quark_list_remove (GdaQuarkList *qlist,  const gchar *name);
		gda_quark_list_remove(gdaQuarkList, Str.toStringz(name));
	}
	
	/**
	 * Removes all strings in the given GdaQuarkList.
	 * qlist :
	 *  a GdaQuarkList.
	 */
	public void clear()
	{
		// void gda_quark_list_clear (GdaQuarkList *qlist);
		gda_quark_list_clear(gdaQuarkList);
	}
}
