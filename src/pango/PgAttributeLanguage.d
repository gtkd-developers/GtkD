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
private import gtkc.pango;
public  import gtkc.pangotypes;
private import pango.PgAttribute;
private import pango.PgLanguage;


/**
 * The #PangoAttrLanguage structure is used to represent attributes that
 * are languages.
 */
public class PgAttributeLanguage : PgAttribute
{
	/** the main Gtk struct */
	protected PangoAttrLanguage* pangoAttrLanguage;

	/** Get the main Gtk struct */
	public PangoAttrLanguage* getPgAttributeLanguageStruct()
	{
		return pangoAttrLanguage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoAttrLanguage;
	}

	protected override void setStruct(GObject* obj)
	{
		pangoAttrLanguage = cast(PangoAttrLanguage*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoAttrLanguage* pangoAttrLanguage)
	{
		this.pangoAttrLanguage = pangoAttrLanguage;
		super(cast(PangoAttribute*)pangoAttrLanguage);
	}


	/**
	 * Create a new language tag attribute.
	 *
	 * Params:
	 *     language = language tag
	 *
	 * Return: the newly allocated #PangoAttribute,
	 *     which should be freed with pango_attribute_destroy().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(PgLanguage language)
	{
		auto p = pango_attr_language_new((language is null) ? null : language.getPgLanguageStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(PangoAttrLanguage*) p);
	}
}
