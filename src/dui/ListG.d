/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.ListG;

private import dui.Utils;
private import def.Types;
private import dui.OGTK;

alias void GAllocator;
alias void * GCompareFunc;
alias void * GCompareDataFunc;
alias void * GFunc;

private:


extern (C) void g_list_push_allocator(GAllocator * allocator);
extern (C) void g_list_pop_allocator();
extern (C) GList * g_list_alloc();
extern (C) void g_list_free(GList * list);
extern (C) void g_list_free_1(GList * list);
extern (C) GList * g_list_append(GList * list, gpointer data);
extern (C) GList * g_list_prepend(GList * list, gpointer data);
extern (C) GList * g_list_insert(GList * list, gpointer data, gint position);
extern (C) GList * g_list_insert_sorted(GList * list, gpointer data, GCompareFunc func);
extern (C) GList * g_list_insert_before(GList * list, GList * sibling, gpointer data);
extern (C) GList * g_list_concat(GList * list1, GList * list2);
extern (C) GList * g_list_remove(GList * list, gconstpointer data);
extern (C) GList * g_list_remove_all(GList * list, gconstpointer data);
extern (C) GList * g_list_remove_link(GList * list, GList * llink);
extern (C) GList * g_list_delete_link(GList * list, GList * link_);
extern (C) GList * g_list_reverse(GList * list);
extern (C) GList * g_list_copy(GList * list);
extern (C) GList * g_list_nth(GList * list, guint n);
extern (C) GList * g_list_find(GList * list, gconstpointer data);
extern (C) GList * g_list_find_custom(GList * list, gconstpointer data, GCompareFunc func);
extern (C) gint g_list_position(GList * list, GList * llink);
extern (C) gint g_list_index(GList * list, gconstpointer data);
extern (C) GList * g_list_last(GList * list);
extern (C) guint g_list_length(GList * list);
extern (C) void g_list_foreach(GList * list, GFunc func, gpointer user_data);
extern (C) GList * g_list_sort(GList * list, GCompareFunc compare_func);
extern (C) GList * g_list_sort_with_data(GList * list, GCompareDataFunc compare_func, gpointer user_data);
extern (C) gpointer g_list_nth_data(GList * list, guint n);

extern (C) GList * g_list_nth_prev(GList * list, guint n);
extern (C) GList * g_list_first(GList * list);

/**
 * A double linked list.
 * This is not intended to be used outside the context of the GTK.
 */
public:
class ListG
{

	private import dool.String;

	debug(status)
	{
		int complete(){return ST_AGAIG;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A double linked list";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	GList * gList;

	public:

	/**
	 * Creates a new ListG
	 */
	this()
	{
		
	}
	

	/**
	 * Lists are created from a null node
	 * @param gList pass null to create a new list ???
	 */
	this(GList * gList)
	{
		this.gList = gList;
	}

	/**
	 * Creates a list from an array of OGTK
	 * @param gtks the array of OGTK
	 */
	this(OGTK[] gtks)
	{
		foreach(OGTK o; gtks)
		{
			g_list_append(obj(), o.gtk());
		}
	}
	

	/**
	 * Gets our GObject list
	 */
	GList * obj()
	{
		return gList;
	}

	/**
	 * Getst the length of this list
	 * @return the length of this list
	 */
	guint length()
	{
		return g_list_length(obj());
	}

	/**
	 * Gets the nth element of this list
	 * @return a pointer the the nth element of this list
	 */
	gpointer nthData(guint n)
	{
		return g_list_nth_data(obj(), n);
	}

	/+
	extern (C) void g_list_push_allocator(GAllocator * allocator);
	extern (C) void g_list_pop_allocator();
	extern (C) GList * g_list_alloc();
	extern (C) void g_list_free(GList * list);
	extern (C) void g_list_free_1(GList * list);
	+/
	
	/**
	 * Appends an entry to this list
	 * @param str the text to append
	 */
	void append(String str)
	{
		gList = g_list_append(obj(), str.toStringz());
	}


	/+
	extern (C) GList * g_list_prepend(GList * list, gpointer data);
	extern (C) GList * g_list_insert(GList * list, gpointer data, gint position);
	extern (C) GList * g_list_insert_sorted(GList * list, gpointer data, GCompareFunc func);
	extern (C) GList * g_list_insert_before(GList * list, GList * sibling, gpointer data);
	extern (C) GList * g_list_concat(GList * list1, GList * list2);
	extern (C) GList * g_list_remove(GList * list, gconstpointer data);
	extern (C) GList * g_list_remove_all(GList * list, gconstpointer data);
	extern (C) GList * g_list_remove_link(GList * list, GList * llink);
	extern (C) GList * g_list_delete_link(GList * list, GList * link_);
	extern (C) GList * g_list_reverse(GList * list);
	extern (C) GList * g_list_copy(GList * list);
	extern (C) GList * g_list_nth(GList * list, guint n);
	extern (C) GList * g_list_find(GList * list, gconstpointer data);
	extern (C) GList * g_list_find_custom(GList * list, gconstpointer data, GCompareFunc func);
	extern (C) gint g_list_position(GList * list, GList * llink);
	extern (C) gint g_list_index(GList * list, gconstpointer data);
	extern (C) GList * g_list_last(GList * list);
	// DONE extern (C) guint g_list_length(GList * list);
	extern (C) void g_list_foreach(GList * list, GFunc func, gpointer user_data);
	extern (C) GList * g_list_sort(GList * list, GCompareFunc compare_func);
	extern (C) GList * g_list_sort_with_data(GList * list, GCompareDataFunc compare_func, gpointer user_data);
	// DONE extern (C) gpointer g_list_nth_data(GList * list, guint n);
	
	extern (C) GList * g_list_nth_prev(GList * list, guint n);
	extern (C) GList * g_list_first(GList * list);
	+/
}
