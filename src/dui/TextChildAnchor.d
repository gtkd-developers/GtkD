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

module dui.TextChildAnchor;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.ObjectG;
private import dui.ListG;

public:

alias GObject GtkTextChildAnchor;

public:

private:
extern(C)
{
	GType gtk_text_child_anchor_get_type();

	GtkTextChildAnchor * gtk_text_child_anchor_new();

	GList * gtk_text_child_anchor_get_widgets(GtkTextChildAnchor * anchor);
	gboolean gtk_text_child_anchor_get_deleted(GtkTextChildAnchor * anchor);

};


/**
 *	A tag that can be applied to text in a GtkTextBuffer
 */
public:
class TextChildAnchor :
		ObjectG
{


	debug(status)
	{
		int complete(){return ST_ALMOST;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "A tag that can be applied to text in a GtkTextBuffer";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_text_child_anchor_get_type();
	}

	package:
	this(GtkTextChildAnchor * gtkTextChildAnchor)
	{
		super(cast(GObject *) gtkTextChildAnchor);
	}

	public:

	/**
	 * Creates a new TextChildAnchor
	 */
	this()
	{
		this(gtk_text_child_anchor_new());
	}

	/**
	 * Gets a list of widgets
	 * @return a list of widgets
	 */
	ListG getWidgets()
	{
		return new ListG(gtk_text_child_anchor_get_widgets(obj()));
	}
	
	/**
	 * Gets the deleted state
	 * @return the deleted state
	 */
	bit getDeleted()
	{
		return gtk_text_child_anchor_get_deleted(obj()) == 0 ? false : true;
	}

}
