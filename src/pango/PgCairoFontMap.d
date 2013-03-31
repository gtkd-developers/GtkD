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
 * inFile  = pango-Cairo-Rendering.html
 * outPack = pango
 * outFile = PgCairoFontMap
 * strct   = PangoCairoFontMap
 * realStrct=
 * ctorStrct=PangoFontMap
 * clss    = PgCairoFontMap
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = PangoFontMap
 * implements:
 * prefixes:
 * 	- pango_cairo_font_map_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- pango.PgFontMap
 * 	- pango.PgContext
 * structWrap:
 * 	- PangoContext* -> PgContext
 * 	- PangoFontMap* -> PgFontMap
 * module aliases:
 * local aliases:
 * overrides:
 * 	- createContext
 */

module pango.PgCairoFontMap;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import pango.PgFontMap;
private import pango.PgContext;



private import pango.PgFontMap;

/**
 * The Cairo library is a
 * vector graphics library with a powerful rendering model. It has such
 * features as anti-aliased primitives, alpha-compositing, and
 * gradients. Multiple backends for Cairo are available, to allow
 * rendering to images, to PDF files, and to the screen on X and on other
 * windowing systems. The functions in this section allow using Pango
 * to render to Cairo surfaces.
 *
 * Using Pango with Cairo is straightforward. A PangoContext created
 * with pango_cairo_font_map_create_context() can be used on any
 * Cairo context (cairo_t), but needs to be updated to match the
 * current transformation matrix and target surface of the Cairo context
 * using pango_cairo_update_context(). The convenience functions
 * pango_cairo_create_layout() and pango_cairo_update_layout() handle
 * the common case where the program doesn't need to manipulate the
 * properties of the PangoContext.
 *
 * When you get the metrics of a layout or of a piece of a layout using
 * functions such as pango_layout_get_extents(), the reported metrics
 * are in user-space coordinates. If a piece of text is 10 units long,
 * and you call cairo_scale (cr, 2.0), it still is more-or-less 10
 * units long. However, the results will be affected by hinting
 * (that is, the process of adjusting the text to look good on the
 * pixel grid), so you shouldn't assume they are completely independent
 * of the current transformation matrix. Note that the basic metrics
 * functions in Pango report results in integer Pango units. To get
 * to the floating point units used in Cairo divide by PANGO_SCALE.
 *
 * $(DDOC_COMMENT example)
 *
 * Figure 2. Output of Example 1, “Using Pango with Cairo”
 */
public class PgCairoFontMap : PgFontMap
{
	
	/** the main Gtk struct */
	protected PangoCairoFontMap* pangoCairoFontMap;
	
	
	public PangoCairoFontMap* getPgCairoFontMapStruct()
	{
		return pangoCairoFontMap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoCairoFontMap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoCairoFontMap* pangoCairoFontMap)
	{
		super(cast(PangoFontMap*)pangoCairoFontMap);
		this.pangoCairoFontMap = pangoCairoFontMap;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		pangoCairoFontMap = cast(PangoCairoFontMap*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets a default PangoCairoFontMap to use with Cairo.
	 * Note that the type of the returned object will depend
	 * on the particular font backend Cairo was compiled to use;
	 * You generally should only use the PangoFontMap and
	 * PangoCairoFontMap interfaces on the returned object.
	 * The default Cairo fontmap can be changed by using
	 * pango_cairo_font_map_set_default(). This can be used to
	 * change the Cairo font backend that the default fontmap
	 * uses for example.
	 * Note that since Pango 1.32.6, the default fontmap is per-thread.
	 * Each thread gets its own default fontmap. In this way,
	 * PangoCairo can be used safely from multiple threads.
	 * Since 1.10
	 * Returns: the default PangoCairo fontmap for the current thread. This object is owned by Pango and must not be freed. [transfer none]
	 */
	public static PgFontMap getDefault()
	{
		// PangoFontMap * pango_cairo_font_map_get_default (void);
		auto p = pango_cairo_font_map_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontMap)(cast(PangoFontMap*) p);
	}
	
	/**
	 * Sets a default PangoCairoFontMap to use with Cairo.
	 * This can be used to change the Cairo font backend that the
	 * default fontmap uses for example. The old default font map
	 * is unreffed and the new font map referenced.
	 * Note that since Pango 1.32.6, the default fontmap is per-thread.
	 * This function only changes the default fontmap for
	 * the current thread. Default fontmaps of exisiting threads
	 * are not changed. Default fontmaps of any new threads will
	 * still be created using pango_cairo_font_map_new().
	 * A value of NULL for fontmap will cause the current default
	 * font map to be released and a new default font
	 * map to be created on demand, using pango_cairo_font_map_new().
	 * Since 1.22
	 */
	public void setDefault()
	{
		// void pango_cairo_font_map_set_default (PangoCairoFontMap *fontmap);
		pango_cairo_font_map_set_default(pangoCairoFontMap);
	}
	
	/**
	 * Creates a new PangoCairoFontMap object; a fontmap is used
	 * to cache information about available fonts, and holds
	 * certain global parameters such as the resolution.
	 * In most cases, you can use pango_cairo_font_map_get_default()
	 * instead.
	 * Note that the type of the returned object will depend
	 * on the particular font backend Cairo was compiled to use;
	 * You generally should only use the PangoFontMap and
	 * PangoCairoFontMap interfaces on the returned object.
	 * Since 1.10
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// PangoFontMap * pango_cairo_font_map_new (void);
		auto p = pango_cairo_font_map_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by pango_cairo_font_map_new()");
		}
		this(cast(PangoCairoFontMap*) p);
	}
	
	/**
	 * Creates a new PangoCairoFontMap object of the type suitable
	 * to be used with cairo font backend of type fonttype.
	 * In most cases one should simply use pango_cairo_font_map_new(),
	 * or in fact in most of those cases, just use
	 * pango_cairo_font_map_get_default().
	 * Since 1.18
	 * Params:
	 * fonttype = desired cairo_font_type_t
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (cairo_font_type_t fonttype)
	{
		// PangoFontMap * pango_cairo_font_map_new_for_font_type  (cairo_font_type_t fonttype);
		auto p = pango_cairo_font_map_new_for_font_type(fonttype);
		if(p is null)
		{
			throw new ConstructionException("null returned by pango_cairo_font_map_new_for_font_type(fonttype)");
		}
		this(cast(PangoCairoFontMap*) p);
	}
	
	/**
	 * Gets the type of Cairo font backend that fontmap uses.
	 * Since 1.18
	 * Returns: the cairo_font_type_t cairo font backend type
	 */
	public cairo_font_type_t getFontType()
	{
		// cairo_font_type_t pango_cairo_font_map_get_font_type (PangoCairoFontMap *fontmap);
		return pango_cairo_font_map_get_font_type(pangoCairoFontMap);
	}
	
	/**
	 * Sets the resolution for the fontmap. This is a scale factor between
	 * points specified in a PangoFontDescription and Cairo units. The
	 * default value is 96, meaning that a 10 point font will be 13
	 * units high. (10 * 96. / 72. = 13.3).
	 * Since 1.10
	 * Params:
	 * dpi = the resolution in "dots per inch". (Physical inches aren't actually
	 * involved; the terminology is conventional.)
	 */
	public void setResolution(double dpi)
	{
		// void pango_cairo_font_map_set_resolution (PangoCairoFontMap *fontmap,  double dpi);
		pango_cairo_font_map_set_resolution(pangoCairoFontMap, dpi);
	}
	
	/**
	 * Gets the resolution for the fontmap. See pango_cairo_font_map_set_resolution()
	 * Since 1.10
	 * Returns: the resolution in "dots per inch"
	 */
	public double getResolution()
	{
		// double pango_cairo_font_map_get_resolution (PangoCairoFontMap *fontmap);
		return pango_cairo_font_map_get_resolution(pangoCairoFontMap);
	}
	
	/**
	 * Warning
	 * pango_cairo_font_map_create_context has been deprecated since version 1.22 and should not be used in newly-written code. Use pango_font_map_create_context() instead.
	 * Create a PangoContext for the given fontmap.
	 * Since 1.10
	 * Returns: the newly created context; free with g_object_unref().
	 */
	public override PgContext createContext()
	{
		// PangoContext * pango_cairo_font_map_create_context (PangoCairoFontMap *fontmap);
		auto p = pango_cairo_font_map_create_context(pangoCairoFontMap);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p);
	}
}
