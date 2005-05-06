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
private import lib.glib;

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
