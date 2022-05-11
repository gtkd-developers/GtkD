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


module pango.PgAttributeLanguage;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import pango.PgAttribute;
private import pango.PgLanguage;
private import pango.c.functions;
public  import pango.c.types;


/**
 * The `PangoAttrLanguage` structure is used to represent attributes that
 * are languages.
 */
public class PgAttributeLanguage : PgAttribute
{
	/** the main Gtk struct */
	protected PangoAttrLanguage* pangoAttrLanguage;

	/** Get the main Gtk struct */
	public PangoAttrLanguage* getPgAttributeLanguageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoAttrLanguage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoAttrLanguage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoAttrLanguage* pangoAttrLanguage, bool ownedRef = false)
	{
		this.pangoAttrLanguage = pangoAttrLanguage;
		super(cast(PangoAttribute*)pangoAttrLanguage, ownedRef);
	}


	/**
	 * Create a new language tag attribute.
	 *
	 * Params:
	 *     language = language tag
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(PgLanguage language)
	{
		auto __p = pango_attr_language_new((language is null) ? null : language.getPgLanguageStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoAttrLanguage*) __p);
	}
}
