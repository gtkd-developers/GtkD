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


module sourceview.Style;

private import gobject.ObjectG;
private import gtk.TextTag;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Represents a style.
 * 
 * The `GtkSourceStyle` structure is used to describe text attributes
 * which are set when given style is used.
 */
public class Style : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceStyle* gtkSourceStyle;

	/** Get the main Gtk struct */
	public GtkSourceStyle* getStyleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceStyle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceStyle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceStyle* gtkSourceStyle, bool ownedRef = false)
	{
		this.gtkSourceStyle = gtkSourceStyle;
		super(cast(GObject*)gtkSourceStyle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_style_get_type();
	}

	/**
	 * This function modifies the [class@Gtk.TextTag] properties that are related to the
	 * #GtkSourceStyle properties. Other [class@Gtk.TextTag] properties are left untouched.
	 *
	 * If @style is non-%NULL, applies @style to @tag.
	 *
	 * If @style is %NULL, the related *-set properties of [class@Gtk.TextTag] are set to
	 * %FALSE.
	 *
	 * Params:
	 *     tag = a #GtkTextTag to apply styles to.
	 */
	public void apply(TextTag tag)
	{
		gtk_source_style_apply(gtkSourceStyle, (tag is null) ? null : tag.getTextTagStruct());
	}

	/**
	 * Creates a copy of @style, that is a new #GtkSourceStyle instance which
	 * has the same attributes set.
	 *
	 * Returns: copy of @style, call g_object_unref()
	 *     when you are done with it.
	 */
	public Style copy()
	{
		auto __p = gtk_source_style_copy(gtkSourceStyle);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Style)(cast(GtkSourceStyle*) __p, true);
	}
}
