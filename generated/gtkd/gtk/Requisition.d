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


module gtk.Requisition;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/**
 * A #GtkRequisition-struct represents the desired size of a widget. See
 * [GtkWidget’s geometry management section][geometry-management] for
 * more information.
 */
public final class Requisition
{
	/** the main Gtk struct */
	protected GtkRequisition* gtkRequisition;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkRequisition* getRequisitionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRequisition;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkRequisition;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRequisition* gtkRequisition, bool ownedRef = false)
	{
		this.gtkRequisition = gtkRequisition;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK) && ownedRef )
			gtk_requisition_free(gtkRequisition);
	}


	/**
	 * the widget’s desired width
	 */
	public @property int width()
	{
		return gtkRequisition.width;
	}

	/** Ditto */
	public @property void width(int value)
	{
		gtkRequisition.width = value;
	}

	/**
	 * the widget’s desired height
	 */
	public @property int height()
	{
		return gtkRequisition.height;
	}

	/** Ditto */
	public @property void height(int value)
	{
		gtkRequisition.height = value;
	}

	/** */
	public static GType getType()
	{
		return gtk_requisition_get_type();
	}

	/**
	 * Allocates a new #GtkRequisition-struct and initializes its elements to zero.
	 *
	 * Returns: a new empty #GtkRequisition. The newly allocated #GtkRequisition should
	 *     be freed with gtk_requisition_free().
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_requisition_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRequisition*) p);
	}

	/**
	 * Copies a #GtkRequisition.
	 *
	 * Returns: a copy of @requisition
	 */
	public Requisition copy()
	{
		auto p = gtk_requisition_copy(gtkRequisition);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Requisition)(cast(GtkRequisition*) p, true);
	}

	/**
	 * Frees a #GtkRequisition.
	 */
	public void free()
	{
		gtk_requisition_free(gtkRequisition);
		ownedRef = false;
	}
}
