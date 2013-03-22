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
 * inFile  = glib-Automatic-String-Completion.html
 * outPack = glib
 * outFile = StringCompletion
 * strct   = GCompletion
 * realStrct=
 * ctorStrct=
 * clss    = StringCompletion
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_completion_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * 	- glib.Str
 * structWrap:
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.StringCompletion;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.ListG;
private import glib.Str;




/**
 * GCompletion provides support for automatic completion of a string
 * using any group of target strings. It is typically used for file
 * name completion as is common in many UNIX shells.
 *
 * A GCompletion is created using g_completion_new(). Target items are
 * added and removed with g_completion_add_items(),
 * g_completion_remove_items() and g_completion_clear_items(). A
 * completion attempt is requested with g_completion_complete() or
 * g_completion_complete_utf8(). When no longer needed, the
 * GCompletion is freed with g_completion_free().
 *
 * Items in the completion can be simple strings (e.g. filenames), or
 * pointers to arbitrary data structures. If data structures are used
 * you must provide a GCompletionFunc in g_completion_new(), which
 * retrieves the item's string from the data structure. You can change
 * the way in which strings are compared by setting a different
 * GCompletionStrncmpFunc in g_completion_set_compare().
 *
 * GCompletion has been marked as deprecated, since this API is rarely
 * used and not very actively maintained.
 */
public class StringCompletion
{
	
	/** the main Gtk struct */
	protected GCompletion* gCompletion;
	
	
	public GCompletion* getStringCompletionStruct()
	{
		return gCompletion;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gCompletion;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GCompletion* gCompletion)
	{
		this.gCompletion = gCompletion;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GCompletion.
	 * Params:
	 * func = the function to be called to return the string representing
	 * an item in the GCompletion, or NULL if strings are going to
	 * be used as the GCompletion items.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GCompletionFunc func)
	{
		// GCompletion * g_completion_new (GCompletionFunc func);
		auto p = g_completion_new(func);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_completion_new(func)");
		}
		this(cast(GCompletion*) p);
	}
	
	/**
	 * Warning
	 * g_completion_add_items has been deprecated since version 2.26 and should not be used in newly-written code. Rarely used API
	 * Adds items to the GCompletion.
	 * Params:
	 * items = the list of items to add. [transfer none]
	 */
	public void addItems(ListG items)
	{
		// void g_completion_add_items (GCompletion *cmp,  GList *items);
		g_completion_add_items(gCompletion, (items is null) ? null : items.getListGStruct());
	}
	
	/**
	 * Warning
	 * g_completion_remove_items has been deprecated since version 2.26 and should not be used in newly-written code. Rarely used API
	 * Removes items from a GCompletion. The items are not freed, so if the memory
	 * was dynamically allocated, free items with g_list_free_full() after calling
	 * this function.
	 * Params:
	 * items = the items to remove. [transfer none]
	 */
	public void removeItems(ListG items)
	{
		// void g_completion_remove_items (GCompletion *cmp,  GList *items);
		g_completion_remove_items(gCompletion, (items is null) ? null : items.getListGStruct());
	}
	
	/**
	 * Warning
	 * g_completion_clear_items has been deprecated since version 2.26 and should not be used in newly-written code. Rarely used API
	 * Removes all items from the GCompletion. The items are not freed, so if the
	 * memory was dynamically allocated, it should be freed after calling this
	 * function.
	 */
	public void clearItems()
	{
		// void g_completion_clear_items (GCompletion *cmp);
		g_completion_clear_items(gCompletion);
	}
	
	/**
	 * Warning
	 * g_completion_complete has been deprecated since version 2.26 and should not be used in newly-written code. Rarely used API
	 * Attempts to complete the string prefix using the GCompletion
	 * target items.
	 * Params:
	 * prefix = the prefix string, typically typed by the user, which is
	 * compared with each of the items.
	 * newPrefix = if non-NULL, returns the longest prefix which is
	 * common to all items that matched prefix, or NULL if
	 * no items matched prefix. This string should be freed
	 * when no longer needed.
	 * Returns: the list of items whose strings begin with prefix. This should not be changed. [transfer none]
	 */
	public ListG complete(string prefix, out string newPrefix)
	{
		// GList * g_completion_complete (GCompletion *cmp,  const gchar *prefix,  gchar **new_prefix);
		char* outnewPrefix = null;
		
		auto p = g_completion_complete(gCompletion, Str.toStringz(prefix), &outnewPrefix);
		
		newPrefix = Str.toString(outnewPrefix);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Warning
	 * g_completion_complete_utf8 has been deprecated since version 2.26 and should not be used in newly-written code. Rarely used API
	 * Attempts to complete the string prefix using the GCompletion target items.
	 * In contrast to g_completion_complete(), this function returns the largest common
	 * prefix that is a valid UTF-8 string, omitting a possible common partial
	 * character.
	 * You should use this function instead of g_completion_complete() if your
	 * items are UTF-8 strings.
	 * Since 2.4
	 * Params:
	 * prefix = the prefix string, typically used by the user, which is compared
	 * with each of the items
	 * newPrefix = if non-NULL, returns the longest prefix which is common to all
	 * items that matched prefix, or NULL if no items matched prefix.
	 * This string should be freed when no longer needed.
	 * Returns: the list of items whose strings begin with prefix. This should not be changed. [element-type utf8][transfer none]
	 */
	public ListG completeUtf8(string prefix, out string newPrefix)
	{
		// GList * g_completion_complete_utf8 (GCompletion *cmp,  const gchar *prefix,  gchar **new_prefix);
		char* outnewPrefix = null;
		
		auto p = g_completion_complete_utf8(gCompletion, Str.toStringz(prefix), &outnewPrefix);
		
		newPrefix = Str.toString(outnewPrefix);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Warning
	 * g_completion_set_compare has been deprecated since version 2.26 and should not be used in newly-written code. Rarely used API
	 * Sets the function to use for string comparisons. The default string
	 * comparison function is strncmp().
	 * Params:
	 * cmp = a GCompletion.
	 * strncmpFunc = the string comparison function.
	 */
	public void setCompare(GCompletionStrncmpFunc strncmpFunc)
	{
		// void g_completion_set_compare (GCompletion *cmp,  GCompletionStrncmpFunc strncmp_func);
		g_completion_set_compare(gCompletion, strncmpFunc);
	}
	
	/**
	 * Warning
	 * g_completion_free has been deprecated since version 2.26 and should not be used in newly-written code. Rarely used API
	 * Frees all memory used by the GCompletion. The items are not freed, so if
	 * the memory was dynamically allocated, it should be freed after calling this
	 * function.
	 */
	public void free()
	{
		// void g_completion_free (GCompletion *cmp);
		g_completion_free(gCompletion);
	}
}
