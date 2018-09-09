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


module gtk.TargetEntry;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/**
 * A #GtkTargetEntry represents a single type of
 * data than can be supplied for by a widget for a selection
 * or for supplied or received during drag-and-drop.
 */
public final class TargetEntry
{
	/** the main Gtk struct */
	protected GtkTargetEntry* gtkTargetEntry;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkTargetEntry* getTargetEntryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTargetEntry;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTargetEntry;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTargetEntry* gtkTargetEntry, bool ownedRef = false)
	{
		this.gtkTargetEntry = gtkTargetEntry;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK) && ownedRef )
			gtk_target_entry_free(gtkTargetEntry);
	}


	/**
	 * a string representation of the target type
	 */
	public @property string target()
	{
		return Str.toString(gtkTargetEntry.target);
	}

	/** Ditto */
	public @property void target(string value)
	{
		gtkTargetEntry.target = Str.toStringz(value);
	}

	/**
	 * #GtkTargetFlags for DND
	 */
	public @property uint flags()
	{
		return gtkTargetEntry.flags;
	}

	/** Ditto */
	public @property void flags(uint value)
	{
		gtkTargetEntry.flags = value;
	}

	/**
	 * an application-assigned integer ID which will
	 * get passed as a parameter to e.g the #GtkWidget::selection-get
	 * signal. It allows the application to identify the target
	 * type without extensive string compares.
	 */
	public @property uint info()
	{
		return gtkTargetEntry.info;
	}

	/** Ditto */
	public @property void info(uint value)
	{
		gtkTargetEntry.info = value;
	}

	/** */
	public static GType getType()
	{
		return gtk_target_entry_get_type();
	}

	/**
	 * Makes a new #GtkTargetEntry.
	 *
	 * Params:
	 *     target = String identifier for target
	 *     flags = Set of flags, see #GtkTargetFlags
	 *     info = an ID that will be passed back to the application
	 *
	 * Returns: a pointer to a new #GtkTargetEntry.
	 *     Free with gtk_target_entry_free()
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string target, uint flags, uint info)
	{
		auto p = gtk_target_entry_new(Str.toStringz(target), flags, info);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTargetEntry*) p);
	}

	/**
	 * Makes a copy of a #GtkTargetEntry and its data.
	 *
	 * Returns: a pointer to a copy of @data.
	 *     Free with gtk_target_entry_free()
	 */
	public TargetEntry copy()
	{
		auto p = gtk_target_entry_copy(gtkTargetEntry);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TargetEntry)(cast(GtkTargetEntry*) p, true);
	}

	/**
	 * Frees a #GtkTargetEntry returned from
	 * gtk_target_entry_new() or gtk_target_entry_copy().
	 */
	public void free()
	{
		gtk_target_entry_free(gtkTargetEntry);
		ownedRef = false;
	}
}
