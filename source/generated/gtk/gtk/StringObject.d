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


module gtk.StringObject;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkStringObject` is the type of items in a `GtkStringList`.
 * 
 * A `GtkStringObject` is a wrapper around a `const char*`; it has
 * a [property@Gtk.StringObject:string] property.
 */
public class StringObject : ObjectG
{
	/** the main Gtk struct */
	protected GtkStringObject* gtkStringObject;

	/** Get the main Gtk struct */
	public GtkStringObject* getStringObjectStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStringObject;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStringObject;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStringObject* gtkStringObject, bool ownedRef = false)
	{
		this.gtkStringObject = gtkStringObject;
		super(cast(GObject*)gtkStringObject, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_string_object_get_type();
	}

	/**
	 * Wraps a string in an object for use with `GListModel`.
	 *
	 * Params:
	 *     string_ = The string to wrap
	 *
	 * Returns: a new `GtkStringObject`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_)
	{
		auto __p = gtk_string_object_new(Str.toStringz(string_));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStringObject*) __p, true);
	}

	/**
	 * Returns the string contained in a `GtkStringObject`.
	 *
	 * Returns: the string of @self
	 */
	public string getString()
	{
		return Str.toString(gtk_string_object_get_string(gtkStringObject));
	}
}
