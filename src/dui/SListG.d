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

module dui.SListG;

private import def.Types;
private import dui.Utils;
private import dui.OGTK;
public:

alias void GAllocator;
alias void * GCompareFunc;
alias void * GCompareDataFunc;
alias void * GFunc;

private:

//extern (C) GType g_slist_get_type();
extern (C) void g_slist_push_allocator(GAllocator * allocator);
extern (C) void g_slist_pop_allocator();
extern (C) GSList * g_slist_alloc();
extern (C) void g_slist_free(GSList * list);
extern (C) void g_slist_free_1(GSList * list);
extern (C) GSList * g_slist_append(GSList * list, gpointer data);
extern (C) GSList * g_slist_prepend(GSList * list, gpointer data);
extern (C) GSList * g_slist_insert(GSList * list, gpointer data, gint position);
extern (C) GSList * g_slist_insert_sorted(GSList * list, gpointer data, GCompareFunc func);
extern (C) GSList * g_slist_insert_before(GSList * slist, GSList * sibling, gpointer data);
extern (C) GSList * g_slist_concat(GSList * list1, GSList * list2);
extern (C) GSList * g_slist_remove(GSList * list, gconstpointer data);
extern (C) GSList * g_slist_remove_all(GSList * list, gconstpointer data);
extern (C) GSList * g_slist_remove_link(GSList * list, GSList * link_);
extern (C) GSList * g_slist_delete_link(GSList * list, GSList * link_);
extern (C) GSList * g_slist_reverse(GSList * list);
extern (C) GSList * g_slist_copy(GSList * list);
extern (C) GSList * g_slist_nth(GSList * list, guint n);
extern (C) GSList * g_slist_find(GSList * list, gconstpointer data);
extern (C) GSList * g_slist_find_custom(GSList * list, gconstpointer data, GCompareFunc func);
extern (C) gint g_slist_position(GSList * list, GSList * llink);
extern (C) gint g_slist_index(GSList * list, gconstpointer data);
extern (C) GSList * g_slist_last(GSList * list);
extern (C) guint g_slist_length(GSList * list);
extern (C) void g_slist_foreach(GSList * list, GFunc func, gpointer user_data);
extern (C) GSList * g_slist_sort(GSList * list, GCompareFunc compare_func);
extern (C) GSList * g_slist_sort_with_data(GSList * list, GCompareDataFunc compare_func, gpointer user_data);
extern (C) gpointer g_slist_nth_data(GSList * list, guint n);

/**
 * A single linked list.
 * This is not intended to be used outside the GTK context.
 */
public:
class SListG
{

	public:

	debug(status)
	{
		int complete(){return ST_AGAIG;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A single linked list";}
		char[] author(){return "Antonio";}
	}
		
	GSList * gsList;

	this(GSList * gsList)
	{
		this.gsList = gsList;
	}

	public:
	
	/**
	 * Creates a new SListG
	 */
	this()
	{
		
	}

	/**
	 * Creates a list from an array of OGTK
	 * @param gtks the array of OGTK
	 */
	this(OGTK[] gtks)
	{
		foreach(OGTK o; gtks)
		{
			g_slist_append(obj(), o.gtk());
		}
	}
	

	/**
	 * Gets the GObject
	 * @return the GSList
	 */
	GSList * obj()
	{
		return gsList;
	}

	/**
	 * Appends an entry to this list
	 * @param str the text to append
	 */
	void append(char[] str)
	{
		
		gsList = g_slist_append(obj(), cChar(str));
	}

	/**
	 * Preppends an entry to this list
	 * @param str the text to append
	 */
	void prepend(char[] str)
	{
		
		gsList = g_slist_prepend(obj(), cChar(str));
	}

	/**
	 * Getst the length of this list
	 * @return the length of this list
	 */
	guint length()
	{
		return g_slist_length(obj());
	}

	/**
	 * Gets the nth element of this list
	 * @return a pointer the the nth element of this list
	 */
	gpointer nthData(guint n)
	{
		return g_slist_nth_data(obj(), n);
	}



}
