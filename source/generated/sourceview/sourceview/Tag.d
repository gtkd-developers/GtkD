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


module sourceview.Tag;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.TextTag;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * A tag that can be applied to text in a [class@Buffer].
 * 
 * `GtkSourceTag` is a subclass of [class@Gtk.TextTag] that adds properties useful for
 * the GtkSourceView library.
 * 
 * If, for a certain tag, [class@Gtk.TextTag] is sufficient, it's better that you create
 * a [class@Gtk.TextTag], not a [class@Tag].
 */
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
	 * Creates a `GtkSourceTag`.
	 *
	 * Configure the tag using object arguments, i.e. using [method@GObject.Object.set].
	 *
	 * For usual cases, [method@Buffer.create_source_tag] is more convenient to
	 * use.
	 *
	 * Params:
	 *     name = tag name, or %NULL.
	 *
	 * Returns: a new `GtkSourceTag`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name)
	{
		auto __p = gtk_source_tag_new(Str.toStringz(name));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceTag*) __p, true);
	}
}
