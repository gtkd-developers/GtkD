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
 * Description
 * GCompletion provides support for automatic completion of a string
 * using any group of target strings. It is typically used for file
 * name completion as is common in many UNIX shells.
 * A GCompletion is created using g_completion_new(). Target items are
 * added and removed with g_completion_add_items(),
 * g_completion_remove_items() and g_completion_clear_items(). A
 * completion attempt is requested with g_completion_complete() or
 * g_completion_complete_utf8(). When no longer needed, the
 * GCompletion is freed with g_completion_free().
 * Items in the completion can be simple strings (e.g. filenames), or
 * pointers to arbitrary data structures. If data structures are used
 * you must provide a GCompletionFunc in g_completion_new(), which
 * retrieves the item's string from the data structure. You can change
 * the way in which strings are compared by setting a different
 * GCompletionStrncmpFunc in g_completion_set_compare().
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
		if(gCompletion is null)
		{
			this = null;
			return;
		}
		this.gCompletion = gCompletion;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GCompletion.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GCompletionFunc func)
	{
		// GCompletion* g_completion_new (GCompletionFunc func);
		auto p = g_completion_new(func);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_completion_new(func)");
		}
		this(cast(GCompletion*) p);
	}
	
	/**
	 * Adds items to the GCompletion.
	 */
	public void addItems(ListG items)
	{
		// void g_completion_add_items (GCompletion *cmp,  GList *items);
		g_completion_add_items(gCompletion, (items is null) ? null : items.getListGStruct());
	}
	
	/**
	 * Removes items from a GCompletion.
	 */
	public void removeItems(ListG items)
	{
		// void g_completion_remove_items (GCompletion *cmp,  GList *items);
		g_completion_remove_items(gCompletion, (items is null) ? null : items.getListGStruct());
	}
	
	/**
	 * Removes all items from the GCompletion.
	 */
	public void clearItems()
	{
		// void g_completion_clear_items (GCompletion *cmp);
		g_completion_clear_items(gCompletion);
	}
	
	/**
	 * Attempts to complete the string prefix using the GCompletion
	 * target items.
	 */
	public ListG complete(string prefix, out string newPrefix)
	{
		// GList* g_completion_complete (GCompletion *cmp,  const gchar *prefix,  gchar **new_prefix);
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
	 * Attempts to complete the string prefix using the GCompletion target items.
	 * In contrast to g_completion_complete(), this function returns the largest common
	 * prefix that is a valid UTF-8 string, omitting a possible common partial
	 * character.
	 * You should use this function instead of g_completion_complete() if your
	 * items are UTF-8 strings.
	 * Since 2.4
	 */
	public ListG completeUtf8(string prefix, out string newPrefix)
	{
		// GList* g_completion_complete_utf8 (GCompletion *cmp,  const gchar *prefix,  gchar **new_prefix);
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
	 * Sets the function to use for string comparisons. The default string
	 * comparison function is strncmp().
	 */
	public void setCompare(GCompletionStrncmpFunc strncmpFunc)
	{
		// void g_completion_set_compare (GCompletion *cmp,  GCompletionStrncmpFunc strncmp_func);
		g_completion_set_compare(gCompletion, strncmpFunc);
	}
	
	/**
	 * Frees all memory used by the GCompletion.
	 */
	public void free()
	{
		// void g_completion_free (GCompletion *cmp);
		g_completion_free(gCompletion);
	}
}
