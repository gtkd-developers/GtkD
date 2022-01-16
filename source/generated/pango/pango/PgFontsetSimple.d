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


module pango.PgFontsetSimple;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import pango.PgFont;
private import pango.PgFontset;
private import pango.PgLanguage;
private import pango.c.functions;
public  import pango.c.types;


/**
 * `PangoFontsetSimple` is a implementation of the abstract
 * `PangoFontset` base class as an array of fonts.
 * 
 * When creating a `PangoFontsetSimple`, you have to provide
 * the array of fonts that make up the fontset.
 */
public class PgFontsetSimple : PgFontset
{
	/** the main Gtk struct */
	protected PangoFontsetSimple* pangoFontsetSimple;

	/** Get the main Gtk struct */
	public PangoFontsetSimple* getPgFontsetSimpleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoFontsetSimple;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoFontsetSimple;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoFontsetSimple* pangoFontsetSimple, bool ownedRef = false)
	{
		this.pangoFontsetSimple = pangoFontsetSimple;
		super(cast(PangoFontset*)pangoFontsetSimple, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return pango_fontset_simple_get_type();
	}

	/**
	 * Creates a new `PangoFontsetSimple` for the given language.
	 *
	 * Params:
	 *     language = a `PangoLanguage` tag
	 *
	 * Returns: the newly allocated `PangoFontsetSimple`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(PgLanguage language)
	{
		auto __p = pango_fontset_simple_new((language is null) ? null : language.getPgLanguageStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoFontsetSimple*) __p, true);
	}

	/**
	 * Adds a font to the fontset.
	 *
	 * The fontset takes ownership of @font.
	 *
	 * Params:
	 *     font = a `PangoFont`.
	 */
	public void append(PgFont font)
	{
		pango_fontset_simple_append(pangoFontsetSimple, (font is null) ? null : font.getPgFontStruct());
	}

	/**
	 * Returns the number of fonts in the fontset.
	 *
	 * Returns: the size of @fontset
	 */
	public int size()
	{
		return pango_fontset_simple_size(pangoFontsetSimple);
	}
}
