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


module gsv.SourceStyle;

private import gobject.ObjectG;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
private import gtk.TextTag;


/** */
public class SourceStyle : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceStyle* gtkSourceStyle;

	/** Get the main Gtk struct */
	public GtkSourceStyle* getSourceStyleStruct(bool transferOwnership = false)
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
	 * This function modifies the #GtkTextTag properties that are related to the
	 * #GtkSourceStyle properties. Other #GtkTextTag properties are left untouched.
	 *
	 * If @style is non-%NULL, applies @style to @tag.
	 *
	 * If @style is %NULL, the related *-set properties of #GtkTextTag are set to
	 * %FALSE.
	 *
	 * Params:
	 *     tag = a #GtkTextTag to apply styles to.
	 *
	 * Since: 3.22
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
	 *
	 * Since: 2.0
	 */
	public SourceStyle copy()
	{
		auto __p = gtk_source_style_copy(gtkSourceStyle);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceStyle)(cast(GtkSourceStyle*) __p, true);
	}
}
