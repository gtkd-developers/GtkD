/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dango.Context;

private import def.Types;
private import def.Constants;

private:

extern(C)
{
	GType pango_context_get_type();

	//#ifdef PANGO_ENABLE_BACKEND
	PangoContext * pango_context_new();
	void pango_context_set_font_map(PangoContext * context, PangoFontMap * font_map);
	//#endif /* PANGO_ENABLE_BACKEND */

	void pango_context_list_families(PangoContext * context, PangoFontFamily * **families, int * n_families);
	PangoFont * pango_context_load_font(PangoContext * context, PangoFontDescription * desc);
	PangoFontset * pango_context_load_fontset(PangoContext * context, PangoFontDescription * desc, PangoLanguage * language);

	PangoFontMetrics * pango_context_get_metrics(PangoContext * context, PangoFontDescription * desc, PangoLanguage * language);

	void pango_context_set_font_description(PangoContext * context, PangoFontDescription * desc);
	PangoFontDescription * pango_context_get_font_description(PangoContext * context);
	PangoLanguage * pango_context_get_language(PangoContext * context);
	void pango_context_set_language(PangoContext * context, PangoLanguage * language);
	void pango_context_set_base_dir(PangoContext * context, PangoDirection direction);
	PangoDirection pango_context_get_base_dir(PangoContext * context);

	/* Break a string of Unicode characters into segments with
	 * consistent shaping/language engine and bidrectional level.
	 * Returns a GList of PangoItem's
	 */
	GList * pango_itemize(PangoContext * context, char * text, int start_index, int length, PangoAttrList * attrs, PangoAttrIterator * cached_iter);
};

/**
 * Functions to run the rendering pipeline.
 */
public:
class Context
{

	public:
	PangoContext* pangoContext;
	
	/**
	 * Gets a pointer to the gtk structure
	 * @return void* to pangoContext
	 */
	void* gtk()
	{
		return cast(void*)pangoContext;
	}
	
	/**
	 * Gets the PangoContext structure
	 * @return pangoContext
	 */
	PangoContext* pngC()
	{
		return pangoContext;
	}
	
	/**
	 * Gets the type fro this class
	 * @return GType
	 */
	GType getType()
	{
		return pango_context_get_type();
	}

	/**
	 * Creates a new Context from a PangoContext strcuture
	 */
	this(PangoContext* pangoContext)
	{
		this.pangoContext = pangoContext;
	}
	
	//#ifdef PANGO_ENABLE_BACKEND
	
	/**
	 * Creates a new Context.
	 */
	this()
	{
		this(pango_context_new());
	}
	
	/+
	void pango_context_set_font_map(pngC(), PangoFontMap * font_map);
	//#endif /* PANGO_ENABLE_BACKEND */

	void pango_context_list_families(pngC(), PangoFontFamily * **families, int * n_families);
	PangoFont * pango_context_load_font(pngC(), PangoFontDescription * desc);
	PangoFontset * pango_context_load_fontset(pngC(), PangoFontDescription * desc, PangoLanguage * language);

	PangoFontMetrics * pango_context_get_metrics(pngC(), PangoFontDescription * desc, PangoLanguage * language);

	void pango_context_set_font_description(pngC(), PangoFontDescription * desc);
	PangoFontDescription * pango_context_get_font_description(pngC());
	PangoLanguage * pango_context_get_language(pngC());
	void pango_context_set_language(pngC(), PangoLanguage * language);
	void pango_context_set_base_dir(pngC(), PangoDirection direction);
	PangoDirection pango_context_get_base_dir(pngC());

	/* Break a string of Unicode characters into segments with
	 * consistent shaping/language engine and bidrectional level.
	 * Returns a GList of PangoItem's
	 */
	GList * pango_itemize(pngC(), char * text, int start_index, int length, PangoAttrList * attrs, PangoAttrIterator * cached_iter);
	+/
}
