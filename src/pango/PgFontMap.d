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
 * outFile = PgFontMap
 * strct   = PangoFontMap
 * realStrct=
 * ctorStrct=
 * clss    = PgFontMap
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- pango_font_map_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- pango.PgFont
 * 	- pango.PgFontset
 * 	- pango.PgContext
 * 	- pango.PgFontDescription
 * 	- pango.PgLanguage
 * 	- pango.PgFontFamily
 * structWrap:
 * 	- PangoContext* -> PgContext
 * 	- PangoFont* -> PgFont
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoFontFamily* -> PgFontFamily
 * 	- PangoFontset* -> PgFontset
 * 	- PangoLanguage* -> PgLanguage
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgFontMap;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import pango.PgFont;
private import pango.PgFontset;
private import pango.PgContext;
private import pango.PgFontDescription;
private import pango.PgLanguage;
private import pango.PgFontFamily;



private import gobject.ObjectG;

/**
 * Pango supports a flexible architecture where a
 * particular rendering architecture can supply an
 * implementation of fonts. The PangoFont structure
 * represents an abstract rendering-system-independent font.
 * Pango provides routines to list available fonts, and
 * to load a font of a given description.
 */
public class PgFontMap : ObjectG
{
	
	/** the main Gtk struct */
	protected PangoFontMap* pangoFontMap;
	
	
	public PangoFontMap* getPgFontMapStruct()
	{
		return pangoFontMap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoFontMap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFontMap* pangoFontMap)
	{
		super(cast(GObject*)pangoFontMap);
		this.pangoFontMap = pangoFontMap;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		pangoFontMap = cast(PangoFontMap*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a PangoContext connected to fontmap. This is equivalent
	 * to pango_context_new() followed by pango_context_set_font_map().
	 * If you are using Pango as part of a higher-level system,
	 * that system may have it's own way of create a PangoContext.
	 * For instance, the GTK+ toolkit has, among others,
	 * gdk_pango_context_get_for_screen(), and
	 * gtk_widget_get_pango_context(). Use those instead.
	 * Since 1.22
	 * Returns: the newly allocated PangoContext, which should be freed with g_object_unref(). [transfer full]
	 */
	public PgContext createContext()
	{
		// PangoContext * pango_font_map_create_context (PangoFontMap *fontmap);
		auto p = pango_font_map_create_context(pangoFontMap);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p);
	}
	
	/**
	 * Load the font in the fontmap that is the closest match for desc.
	 * Params:
	 * context = the PangoContext the font will be used with
	 * desc = a PangoFontDescription describing the font to load
	 * Returns: the newly allocated PangoFont loaded, or NULL if no font matched. [transfer full]
	 */
	public PgFont loadFont(PgContext context, PgFontDescription desc)
	{
		// PangoFont * pango_font_map_load_font (PangoFontMap *fontmap,  PangoContext *context,  const PangoFontDescription *desc);
		auto p = pango_font_map_load_font(pangoFontMap, (context is null) ? null : context.getPgContextStruct(), (desc is null) ? null : desc.getPgFontDescriptionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFont)(cast(PangoFont*) p);
	}
	
	/**
	 * Load a set of fonts in the fontmap that can be used to render
	 * a font matching desc.
	 * Params:
	 * context = the PangoContext the font will be used with
	 * desc = a PangoFontDescription describing the font to load
	 * language = a PangoLanguage the fonts will be used for
	 * Returns: the newly allocated PangoFontset loaded, or NULL if no font matched. [transfer full]
	 */
	public PgFontset loadFontset(PgContext context, PgFontDescription desc, PgLanguage language)
	{
		// PangoFontset * pango_font_map_load_fontset (PangoFontMap *fontmap,  PangoContext *context,  const PangoFontDescription *desc,  PangoLanguage *language);
		auto p = pango_font_map_load_fontset(pangoFontMap, (context is null) ? null : context.getPgContextStruct(), (desc is null) ? null : desc.getPgFontDescriptionStruct(), (language is null) ? null : language.getPgLanguageStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontset)(cast(PangoFontset*) p);
	}
	
	/**
	 * List all families for a fontmap.
	 * Params:
	 * families = location to store a pointer to an array of PangoFontFamily *.
	 * This array should be freed with g_free(). [out][array length=n_families][transfer container]
	 */
	public void listFamilies(out PgFontFamily[] families)
	{
		// void pango_font_map_list_families (PangoFontMap *fontmap,  PangoFontFamily ***families,  int *n_families);
		PangoFontFamily** outfamilies = null;
		int nFamilies;
		
		pango_font_map_list_families(pangoFontMap, &outfamilies, &nFamilies);
		
		
		families = new PgFontFamily[nFamilies];
		for(int i = 0; i < nFamilies; i++)
		{
			families[i] = ObjectG.getDObject!(PgFontFamily)(cast(PangoFontFamily*) outfamilies[i]);
		}
	}
	
	/**
	 * Returns the render ID for shape engines for this fontmap.
	 * See the render_type field of
	 * PangoEngineInfo.
	 * Since 1.4
	 * Returns: the ID string for shape engines for this fontmap. Owned by Pango, should not be modified or freed.
	 */
	public string getShapeEngineType()
	{
		// const char * pango_font_map_get_shape_engine_type  (PangoFontMap *fontmap);
		return Str.toString(pango_font_map_get_shape_engine_type(pangoFontMap));
	}
	
	/**
	 * Returns the current serial number of fontmap. The serial number is
	 * initialized to an small number larger than zero when a new fontmap
	 * is created and is increased whenever the fontmap is changed. It may
	 * wrap, but will never have the value 0. Since it can wrap, never compare
	 * it with "less than", always use "not equals".
	 * The fontmap can only be changed using backend-specific API, like changing
	 * fontmap resolution.
	 * This can be used to automatically detect changes to a PangoFontMap, like
	 * in PangoContext.
	 * Since 1.32.4
	 * Returns: The current serial number of fontmap.
	 */
	public uint getSerial()
	{
		// guint pango_font_map_get_serial (PangoFontMap *fontmap);
		return pango_font_map_get_serial(pangoFontMap);
	}
}
