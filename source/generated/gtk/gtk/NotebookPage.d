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


module gtk.NotebookPage;

private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkNotebookPage` is an auxiliary object used by `GtkNotebook`.
 */
public class NotebookPage : ObjectG
{
	/** the main Gtk struct */
	protected GtkNotebookPage* gtkNotebookPage;

	/** Get the main Gtk struct */
	public GtkNotebookPage* getNotebookPageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkNotebookPage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkNotebookPage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkNotebookPage* gtkNotebookPage, bool ownedRef = false)
	{
		this.gtkNotebookPage = gtkNotebookPage;
		super(cast(GObject*)gtkNotebookPage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_notebook_page_get_type();
	}

	/**
	 * Returns the notebook child to which @page belongs.
	 *
	 * Returns: the child to which @page belongs
	 */
	public Widget getChild()
	{
		auto __p = gtk_notebook_page_get_child(gtkNotebookPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}
}
