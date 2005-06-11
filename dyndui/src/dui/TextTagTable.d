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

module dui.TextTagTable;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.ObjectG;
private import dui.TextTag;
private import lib.gtk;

/**
 * A set of tags that can be used together
 */
public:
class TextTagTable :
		ObjectG
{


	debug(status)
	{
		int complete(){return ST_ALMOST;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "A set of tags that can be used together";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_text_tag_table_get_type();
	}

	package:
	this(GObject * gObject)
	{
		super(cast(GObject *) gObject);
	}

	public:

	/**
	 * Creates a new empty tag table
	 */
	this()
	{
		this(gtk_text_tag_table_new());
	}
	
	/**
	 * Adds a tag to this tag table
	 * @param tag the tag to add
	 */
	void add(TextTag tag)
	{
		gtk_text_tag_table_add(obj(), tag.obj());
	}
	
	/**
	 * removes a tag from this tag table
	 * @param tag the tag to remove
	 */
	void remove(TextTag tag)
	{
		gtk_text_tag_table_remove(obj(), tag.obj());
	}
	
	/**
	 * Gets a tag from this table by name
	 * @param name the tag name
	 */
	TextTag lookup(char[] name)
	{
		void* lk = gtk_text_tag_table_lookup(obj(), cChar(name));
		if ( lk  is  null )
		{
			return null;
		}
		return  new TextTag(cast(GtkTextTag*)lk);
	}
	
//  not like this...
//	instance ObjectG.TgetDUIObject(TextTag) getTag;
//	
//	/**
//	 * Gets a tag from this table by name
//	 * @param name the tag name
//	 */
//	TextTag lookup(char[] name)
//	{
//		return getTag(gtk_text_tag_table_lookup(obj(), cChar(name)));
//	}
//	
	//void gtk_text_tag_table_foreach(obj(), GtkTextTagTableForeach func, gpointer data);
	
	/**
	 * Gets the size of this tag table
	 * @return the number of entries on this tag table
	 */
	gint getSize()
	{
		return gtk_text_tag_table_get_size(obj());
	}


}
