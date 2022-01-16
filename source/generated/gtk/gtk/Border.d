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


module gtk.Border;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
private import linker.Loader;


/**
 * A struct that specifies a border around a rectangular area.
 * 
 * Each side can have different width.
 */
public final class Border
{
	/** the main Gtk struct */
	protected GtkBorder* gtkBorder;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkBorder* getBorderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBorder;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkBorder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBorder* gtkBorder, bool ownedRef = false)
	{
		this.gtkBorder = gtkBorder;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK[0]) && ownedRef )
			gtk_border_free(gtkBorder);
	}


	/**
	 * The width of the left border
	 */
	public @property short left()
	{
		return gtkBorder.left;
	}

	/** Ditto */
	public @property void left(short value)
	{
		gtkBorder.left = value;
	}

	/**
	 * The width of the right border
	 */
	public @property short right()
	{
		return gtkBorder.right;
	}

	/** Ditto */
	public @property void right(short value)
	{
		gtkBorder.right = value;
	}

	/**
	 * The width of the top border
	 */
	public @property short top()
	{
		return gtkBorder.top;
	}

	/** Ditto */
	public @property void top(short value)
	{
		gtkBorder.top = value;
	}

	/**
	 * The width of the bottom border
	 */
	public @property short bottom()
	{
		return gtkBorder.bottom;
	}

	/** Ditto */
	public @property void bottom(short value)
	{
		gtkBorder.bottom = value;
	}

	/** */
	public static GType getType()
	{
		return gtk_border_get_type();
	}

	/**
	 * Allocates a new `GtkBorder` struct and initializes its elements to zero.
	 *
	 * Returns: a newly allocated `GtkBorder` struct.
	 *     Free with [method@Gtk.Border.free]
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_border_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkBorder*) __p);
	}

	/**
	 * Copies a `GtkBorder`.
	 *
	 * Returns: a copy of @border_.
	 */
	public Border copy()
	{
		auto __p = gtk_border_copy(gtkBorder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Border)(cast(GtkBorder*) __p, true);
	}

	/**
	 * Frees a `GtkBorder`.
	 */
	public void free()
	{
		gtk_border_free(gtkBorder);
		ownedRef = false;
	}
}
