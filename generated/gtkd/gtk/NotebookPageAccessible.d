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


module gtk.NotebookPageAccessible;

private import atk.ComponentIF;
private import atk.ComponentT;
private import atk.ObjectAtk;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.NotebookAccessible;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class NotebookPageAccessible : ObjectAtk, ComponentIF
{
	/** the main Gtk struct */
	protected GtkNotebookPageAccessible* gtkNotebookPageAccessible;

	/** Get the main Gtk struct */
	public GtkNotebookPageAccessible* getNotebookPageAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkNotebookPageAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkNotebookPageAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkNotebookPageAccessible* gtkNotebookPageAccessible, bool ownedRef = false)
	{
		this.gtkNotebookPageAccessible = gtkNotebookPageAccessible;
		super(cast(AtkObject*)gtkNotebookPageAccessible, ownedRef);
	}

	// add the Component capabilities
	mixin ComponentT!(GtkNotebookPageAccessible);


	/** */
	public static GType getType()
	{
		return gtk_notebook_page_accessible_get_type();
	}

	/** */
	public this(NotebookAccessible notebook, Widget child)
	{
		auto p = gtk_notebook_page_accessible_new((notebook is null) ? null : notebook.getNotebookAccessibleStruct(), (child is null) ? null : child.getWidgetStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkNotebookPageAccessible*) p, true);
	}

	/** */
	public void invalidate()
	{
		gtk_notebook_page_accessible_invalidate(gtkNotebookPageAccessible);
	}
}
