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
 * outPack = gtk
 * outFile = TextChildAnchor
 * strct   = GtkTextChildAnchor
 * realStrct=
 * ctorStrct=
 * clss    = TextChildAnchor
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_text_child_anchor_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- backspace
 * 	- copy-clipboard
 * 	- cut-clipboard
 * 	- delete-from-cursor
 * 	- insert-at-cursor
 * 	- move-cursor
 * 	- move-viewport
 * 	- paste-clipboard
 * 	- populate-popup
 * 	- preedit-changed
 * 	- select-all
 * 	- set-anchor
 * 	- toggle-cursor-visible
 * 	- toggle-overwrite
 * imports:
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TextChildAnchor;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.ListG;




/**
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 */
public class TextChildAnchor
{
	
	/** the main Gtk struct */
	protected GtkTextChildAnchor* gtkTextChildAnchor;
	
	
	public GtkTextChildAnchor* getTextChildAnchorStruct()
	{
		return gtkTextChildAnchor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTextChildAnchor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTextChildAnchor* gtkTextChildAnchor)
	{
		this.gtkTextChildAnchor = gtkTextChildAnchor;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkTextChildAnchor. Usually you would then insert
	 * it into a GtkTextBuffer with gtk_text_buffer_insert_child_anchor().
	 * To perform the creation and insertion in one step, use the
	 * convenience function gtk_text_buffer_create_child_anchor().
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkTextChildAnchor * gtk_text_child_anchor_new (void);
		auto p = gtk_text_child_anchor_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_text_child_anchor_new()");
		}
		this(cast(GtkTextChildAnchor*) p);
	}
	
	/**
	 * Gets a list of all widgets anchored at this child anchor.
	 * The returned list should be freed with g_list_free().
	 * Returns: list of widgets anchored at anchor. [element-type GtkWidget][transfer container]
	 */
	public ListG getWidgets()
	{
		// GList * gtk_text_child_anchor_get_widgets (GtkTextChildAnchor *anchor);
		auto p = gtk_text_child_anchor_get_widgets(gtkTextChildAnchor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Determines whether a child anchor has been deleted from
	 * the buffer. Keep in mind that the child anchor will be
	 * unreferenced when removed from the buffer, so you need to
	 * hold your own reference (with g_object_ref()) if you plan
	 * to use this function — otherwise all deleted child anchors
	 * will also be finalized.
	 * Returns: TRUE if the child anchor has been deleted from its buffer
	 */
	public int getDeleted()
	{
		// gboolean gtk_text_child_anchor_get_deleted (GtkTextChildAnchor *anchor);
		return gtk_text_child_anchor_get_deleted(gtkTextChildAnchor);
	}
}
