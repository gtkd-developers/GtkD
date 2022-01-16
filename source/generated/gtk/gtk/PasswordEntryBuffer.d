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


module gtk.PasswordEntryBuffer;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.EntryBuffer;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkEntryBuffer` that locks the underlying memory to prevent it
 * from being swapped to disk.
 * 
 * `GtkPasswordEntry` uses a `GtkPasswordEntryBuffer`.
 *
 * Since: 4.4
 */
public class PasswordEntryBuffer : EntryBuffer
{
	/** the main Gtk struct */
	protected GtkPasswordEntryBuffer* gtkPasswordEntryBuffer;

	/** Get the main Gtk struct */
	public GtkPasswordEntryBuffer* getPasswordEntryBufferStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPasswordEntryBuffer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPasswordEntryBuffer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPasswordEntryBuffer* gtkPasswordEntryBuffer, bool ownedRef = false)
	{
		this.gtkPasswordEntryBuffer = gtkPasswordEntryBuffer;
		super(cast(GtkEntryBuffer*)gtkPasswordEntryBuffer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_password_entry_buffer_get_type();
	}

	/**
	 * Creates a new `GtkEntryBuffer` using secure memory allocations.
	 *
	 * Returns: the newly created instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_password_entry_buffer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPasswordEntryBuffer*) __p, true);
	}
}
