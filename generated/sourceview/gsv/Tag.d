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


module gsv.Tag;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
private import gtk.TextTag;


/** */
public class Tag : TextTag
{
	/** the main Gtk struct */
	protected GtkSourceTag* gtkSourceTag;

	/** Get the main Gtk struct */
	public GtkSourceTag* getTagStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceTag;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceTag;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceTag* gtkSourceTag, bool ownedRef = false)
	{
		this.gtkSourceTag = gtkSourceTag;
		super(cast(GtkTextTag*)gtkSourceTag, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_tag_get_type();
	}

	/**
	 * Creates a #GtkSourceTag. Configure the tag using object arguments,
	 * i.e. using g_object_set().
	 *
	 * For usual cases, gtk_source_buffer_create_source_tag() is more convenient to
	 * use.
	 *
	 * Params:
	 *     name = tag name, or %NULL.
	 *
	 * Returns: a new #GtkSourceTag.
	 *
	 * Since: 3.20
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name)
	{
		auto p = gtk_source_tag_new(Str.toStringz(name));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceTag*) p, true);
	}
}
