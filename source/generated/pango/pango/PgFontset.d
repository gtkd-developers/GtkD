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


module pango.PgFontset;

private import gobject.ObjectG;
private import pango.PgFont;
private import pango.PgFontMetrics;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoFontset` represents a set of `PangoFont` to use when rendering text.
 * 
 * A `PangoFontset` is the result of resolving a `PangoFontDescription`
 * against a particular `PangoContext`. It has operations for finding the
 * component font for a particular Unicode character, and for finding a
 * composite set of metrics for the entire fontset.
 */
public class PgFontset : ObjectG
{
	/** the main Gtk struct */
	protected PangoFontset* pangoFontset;

	/** Get the main Gtk struct */
	public PangoFontset* getPgFontsetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoFontset;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoFontset;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoFontset* pangoFontset, bool ownedRef = false)
	{
		this.pangoFontset = pangoFontset;
		super(cast(GObject*)pangoFontset, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return pango_fontset_get_type();
	}

	alias foreac = foreach_;
	/**
	 * Iterates through all the fonts in a fontset, calling @func for
	 * each one.
	 *
	 * If @func returns %TRUE, that stops the iteration.
	 *
	 * Params:
	 *     func = Callback function
	 *     data = data to pass to the callback function
	 *
	 * Since: 1.4
	 */
	public void foreach_(PangoFontsetForeachFunc func, void* data)
	{
		pango_fontset_foreach(pangoFontset, func, data);
	}

	/**
	 * Returns the font in the fontset that contains the best
	 * glyph for a Unicode character.
	 *
	 * Params:
	 *     wc = a Unicode character
	 *
	 * Returns: a `PangoFont`
	 */
	public PgFont getFont(uint wc)
	{
		auto __p = pango_fontset_get_font(pangoFontset, wc);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFont)(cast(PangoFont*) __p, true);
	}

	/**
	 * Get overall metric information for the fonts in the fontset.
	 *
	 * Returns: a `PangoFontMetrics` object
	 */
	public PgFontMetrics getMetrics()
	{
		auto __p = pango_fontset_get_metrics(pangoFontset);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontMetrics)(cast(PangoFontMetrics*) __p, true);
	}
}
