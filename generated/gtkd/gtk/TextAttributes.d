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


module gtk.TextAttributes;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/**
 * Using #GtkTextAttributes directly should rarely be necessary.
 * It’s primarily useful with gtk_text_iter_get_attributes().
 * As with most GTK+ structs, the fields in this struct should only
 * be read, never modified directly.
 */
public class TextAttributes
{
	/** the main Gtk struct */
	protected GtkTextAttributes* gtkTextAttributes;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkTextAttributes* getTextAttributesStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTextAttributes;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTextAttributes;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTextAttributes* gtkTextAttributes, bool ownedRef = false)
	{
		this.gtkTextAttributes = gtkTextAttributes;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK) && ownedRef )
			gtk_text_attributes_unref(gtkTextAttributes);
	}


	/** */
	public static GType getType()
	{
		return gtk_text_attributes_get_type();
	}

	/**
	 * Creates a #GtkTextAttributes, which describes
	 * a set of properties on some text.
	 *
	 * Returns: a new #GtkTextAttributes,
	 *     free with gtk_text_attributes_unref().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_text_attributes_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTextAttributes*) p);
	}

	/**
	 * Copies @src and returns a new #GtkTextAttributes.
	 *
	 * Returns: a copy of @src,
	 *     free with gtk_text_attributes_unref()
	 */
	public TextAttributes copy()
	{
		auto p = gtk_text_attributes_copy(gtkTextAttributes);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextAttributes)(cast(GtkTextAttributes*) p, true);
	}

	/**
	 * Copies the values from @src to @dest so that @dest has
	 * the same values as @src. Frees existing values in @dest.
	 *
	 * Params:
	 *     dest = another #GtkTextAttributes
	 */
	public void copyValues(TextAttributes dest)
	{
		gtk_text_attributes_copy_values(gtkTextAttributes, (dest is null) ? null : dest.getTextAttributesStruct());
	}

	alias doref = ref_;
	/**
	 * Increments the reference count on @values.
	 *
	 * Returns: the #GtkTextAttributes that were passed in
	 */
	public TextAttributes ref_()
	{
		auto p = gtk_text_attributes_ref(gtkTextAttributes);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextAttributes)(cast(GtkTextAttributes*) p, true);
	}

	/**
	 * Decrements the reference count on @values, freeing the structure
	 * if the reference count reaches 0.
	 */
	public void unref()
	{
		gtk_text_attributes_unref(gtkTextAttributes);
	}
}
