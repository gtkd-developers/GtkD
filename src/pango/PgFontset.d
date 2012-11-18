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

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = pango
 * outFile = PgFontset
 * strct   = PangoFontset
 * realStrct=
 * ctorStrct=
 * clss    = PgFontset
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- pango_fontset_
 * omit structs:
 * omit prefixes:
 * 	- pango_fontset_simple_
 * omit code:
 * omit signals:
 * imports:
 * 	- pango.PgFont
 * 	- pango.PgFontMetrics
 * structWrap:
 * 	- PangoFont* -> PgFont
 * 	- PangoFontMetrics* -> PgFontMetrics
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgFontset;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import pango.PgFont;
private import pango.PgFontMetrics;



private import gobject.ObjectG;

/**
 * Description
 * Pango supports a flexible architecture where a
 * particular rendering architecture can supply an
 * implementation of fonts. The PangoFont structure
 * represents an abstract rendering-system-independent font.
 * Pango provides routines to list available fonts, and
 * to load a font of a given description.
 */
public class PgFontset : ObjectG
{
	
	/** the main Gtk struct */
	protected PangoFontset* pangoFontset;
	
	
	public PangoFontset* getPgFontsetStruct()
	{
		return pangoFontset;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoFontset;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFontset* pangoFontset)
	{
		super(cast(GObject*)pangoFontset);
		this.pangoFontset = pangoFontset;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		pangoFontset = cast(PangoFontset*)obj;
	}
	
	/**
	 */
	
	/**
	 * Returns the font in the fontset that contains the best glyph for the
	 * Unicode character wc.
	 * Params:
	 * wc = a Unicode character
	 * Returns: a PangoFont. The caller must call g_object_unref when finished with the font. [transfer full]
	 */
	public PgFont getFont(uint wc)
	{
		// PangoFont * pango_fontset_get_font (PangoFontset *fontset,  guint wc);
		auto p = pango_fontset_get_font(pangoFontset, wc);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFont)(cast(PangoFont*) p);
	}
	
	/**
	 * Get overall metric information for the fonts in the fontset.
	 * Returns: a PangoFontMetrics object. The caller must call pango_font_metrics_unref() when finished using the object.
	 */
	public PgFontMetrics getMetrics()
	{
		// PangoFontMetrics * pango_fontset_get_metrics (PangoFontset *fontset);
		auto p = pango_fontset_get_metrics(pangoFontset);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontMetrics)(cast(PangoFontMetrics*) p);
	}
	
	/**
	 * Iterates through all the fonts in a fontset, calling func for
	 * each one. If func returns TRUE, that stops the iteration.
	 * Since 1.4
	 * Params:
	 * func = Callback function. [closure data][scope call]
	 * data = data to pass to the callback function. [closure]
	 */
	public void foreac(PangoFontsetForeachFunc func, void* data)
	{
		// void pango_fontset_foreach (PangoFontset *fontset,  PangoFontsetForeachFunc func,  gpointer data);
		pango_fontset_foreach(pangoFontset, func, data);
	}
}
