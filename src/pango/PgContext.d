/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = pango-Text-Processing.html
 * outPack = pango
 * outFile = PgContext
 * strct   = PangoContext
 * realStrct=
 * ctorStrct=
 * clss    = PgContext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_context_
 * omit structs:
 * omit prefixes:
 * 	- pango_item_
 * omit code:
 * imports:
 * 	- glib.ListSG
 * 	- glib.ListG
 * 	- pango.PgItem
 * 	- pango.PgLayout
 * 	- pango.PgFontDescription
 * 	- pango.PgFontMetrics
 * 	- pango.PgFontFamily
 * 	- pango.PgFontFace
 * 	- pango.PgFontMap
 * 	- pango.PgFontsetSimple
 * 	- pango.PgAttribute
 * 	- pango.PgAttributeList
 * 	- pango.PgLanguage
 * 	- pango.PgTabArray
 * 	- pango.PgLayout
 * 	- pango.PgLayoutIter
 * 	- pango.PgScriptIter
 * 	- glib.Str
 * structWrap:
 * 	- GList* -> ListG
 * 	- GSList* -> ListSG
 * 	- PangoAttribute* -> PgAttribute
 * 	- PangoAttributeList* -> PgAttributeList
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoFontFace* -> PgFontFace
 * 	- PangoFontFamily* -> PgFontFamily
 * 	- PangoFontMap* -> PgFontMap
 * 	- PangoFontMetrics* -> PgFontMetrics
 * 	- PangoFontsetSimple* -> PgFontsetSimple
 * 	- PangoItem* -> PgItem
 * 	- PangoLanguage* -> PgLanguage
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoScriptIter* -> PgScriptIter
 * 	- PangoTabArray* -> PgTabArray
 * local aliases:
 */

module pango.PgContext;

private import pango.pangotypes;

private import lib.pango;

private import glib.ListSG;
private import glib.ListG;
private import pango.PgItem;
private import pango.PgLayout;
private import pango.PgFontDescription;
private import pango.PgFontMetrics;
private import pango.PgFontFamily;
private import pango.PgFontFace;
private import pango.PgFontMap;
private import pango.PgFontsetSimple;
private import pango.PgAttribute;
private import pango.PgAttributeList;
private import pango.PgLanguage;
private import pango.PgTabArray;
private import pango.PgLayout;
private import pango.PgLayoutIter;
private import pango.PgScriptIter;
private import glib.Str;

/**
 * Description
 * The Pango rendering pipeline takes a string of
 * Unicode characters and converts it into glyphs.
 * The functions described in this section accomplish
 * various steps of this process.
 */
private import gobject.ObjectG;
public class PgContext : ObjectG
{
	
	/** the main Gtk struct */
	protected PangoContext* pangoContext;
	
	
	public PangoContext* getPgContextStruct()
	{
		return pangoContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoContext* pangoContext)
	{
		super(cast(GObject*)pangoContext);
		this.pangoContext = pangoContext;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	/**
	 * Breaks a piece of text into segments with consistent
	 * directional level and shaping engine. Each byte of text will
	 * be contained in exactly one of the items in the returned list;
	 * the generated list of items will be in logical order (the start
	 * offsets of the items are ascending).
	 * cached_iter should be an iterator over attrs currently positioned at a
	 * range before or containing start_index; cached_iter will be advanced to
	 * the range covering the position just after start_index + length.
	 * (i.e. if itemizing in a loop, just keep passing in the same cached_iter).
	 * context:
	 *  a structure holding information that affects
	 *  the itemization process.
	 * text:
	 *  the text to itemize.
	 * start_index:
	 *  first byte in text to process
	 * length:
	 *  the number of bytes (not characters) to process
	 *  after start_index.
	 *  This must be >= 0.
	 * attrs:
	 *  the set of attributes that apply to text.
	 * cached_iter:
	 *  Cached attribute iterator, or NULL
	 * Returns:
	 *  a GList of PangoItem structures.
	 */
	public ListG pangoItemize(char[] text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter)
	{
		// GList* pango_itemize (PangoContext *context,  const char *text,  int start_index,  int length,  PangoAttrList *attrs,  PangoAttrIterator *cached_iter);
		return new ListG( pango_itemize(pangoContext, Str.toStringz(text), startIndex, length, attrs, cachedIter) );
	}
	
	/**
	 * Like pango_itemize(), but the base direction to use when
	 * computing bidirectional levels (see pango_context_set_base_dir()),
	 * is specified explicitely rather than gotten from the PangoContext.
	 * context:
	 *  a structure holding information that affects
	 *  the itemization process.
	 * base_dir:
	 *  base direction to use for bidirectional processing
	 * text:
	 *  the text to itemize.
	 * start_index:
	 *  first byte in text to process
	 * length:
	 *  the number of bytes (not characters) to process
	 *  after start_index.
	 *  This must be >= 0.
	 * attrs:
	 *  the set of attributes that apply to text.
	 * cached_iter:
	 *  Cached attribute iterator, or NULL
	 * Returns:
	 *  a GList of PangoItem structures.
	 * Since 1.4
	 */
	public ListG pangoItemizeWithBaseDir(PangoDirection baseDir, char[] text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter)
	{
		// GList* pango_itemize_with_base_dir (PangoContext *context,  PangoDirection base_dir,  const char *text,  int start_index,  int length,  PangoAttrList *attrs,  PangoAttrIterator *cached_iter);
		return new ListG( pango_itemize_with_base_dir(pangoContext, baseDir, Str.toStringz(text), startIndex, length, attrs, cachedIter) );
	}
	
	
	
	
	
	/**
	 * From a list of items in logical order and the associated
	 * directional levels, produce a list in visual order.
	 * The original list is unmodified.
	 * logical_items:
	 *  a GList of PangoItem in logical order.
	 * Returns:
	 * a GList of PangoItem structures in visual order.
	 * (Please mail otaylorredhat.com if you use this function.
	 *  It is not a particularly convenient interface, and the code
	 *  is duplicated elsewhere in Pango for that reason.)
	 */
	public static ListG pangoReorderItems(ListG logicalItems)
	{
		// GList* pango_reorder_items (GList *logical_items);
		return new ListG( pango_reorder_items((logicalItems is null) ? null : logicalItems.getListGStruct()) );
	}
	
	/**
	 * Creates a new PangoContext initialized to default value.
	 * This function is only useful when implementing a new backend
	 * for Pango, something applications won't do. You should use
	 * the context creation function for the backend you are using,
	 * for example, pango_xft_get_context(), pango_win32_get_context()
	 * or, pango_ft2_font_map_create_context().
	 * If you are using Pango as part of a higher-level system,
	 * that system may have it's own ways of create a PangoContext.
	 * For instance, the GTK+ toolkit has, among others,
	 * gdk_pango_context_get_for_screen(), and
	 * gtk_widget_get_pango_context().
	 * Returns:
	 *  the newly allocated PangoContext, which should
	 *  be freed with g_object_unref().
	 */
	public this ()
	{
		// PangoContext* pango_context_new (void);
		this(cast(PangoContext*)pango_context_new() );
	}
	
	/**
	 * Sets the font map to be searched when fonts are looked-up in this context.
	 * This is only for internal use by Pango backends, a PangoContext obtained
	 * via one of the recommended methods should already have a suitable font map.
	 * context:
	 *  a PangoContext
	 * font_map:
	 *  the PangoFontMap to set.
	 */
	public void setFontMap(PgFontMap fontMap)
	{
		// void pango_context_set_font_map (PangoContext *context,  PangoFontMap *font_map);
		pango_context_set_font_map(pangoContext, (fontMap is null) ? null : fontMap.getPgFontMapStruct());
	}
	
	/**
	 * Gets the PangoFontmap used to look up fonts for this context.
	 * context:
	 *  a PangoContext
	 * Returns:
	 *  the font map for the PangoContext. This value
	 *  is owned by Pango and should not be unreferenced.
	 * Since 1.6
	 */
	public PgFontMap getFontMap()
	{
		// PangoFontMap* pango_context_get_font_map (PangoContext *context);
		return new PgFontMap( pango_context_get_font_map(pangoContext) );
	}
	
	/**
	 * Retrieve the default font description for the context.
	 * context:
	 *  a PangoContext
	 * Returns:
	 *  a pointer to the context's default font description.
	 *  This value must not be modified or freed.
	 */
	public PgFontDescription getFontDescription()
	{
		// PangoFontDescription* pango_context_get_font_description  (PangoContext *context);
		return new PgFontDescription( pango_context_get_font_description(pangoContext) );
	}
	
	/**
	 * Set the default font description for the context
	 * context:
	 *  a PangoContext
	 * desc:
	 *  the new pango font description
	 */
	public void setFontDescription(PgFontDescription desc)
	{
		// void pango_context_set_font_description  (PangoContext *context,  const PangoFontDescription *desc);
		pango_context_set_font_description(pangoContext, (desc is null) ? null : desc.getPgFontDescriptionStruct());
	}
	
	/**
	 * Retrieves the global language tag for the context.
	 * context:
	 *  a PangoContext
	 * Returns:
	 *  the global language tag.
	 */
	public PgLanguage getLanguage()
	{
		// PangoLanguage* pango_context_get_language (PangoContext *context);
		return new PgLanguage( pango_context_get_language(pangoContext) );
	}
	
	/**
	 * Sets the global language tag for the context.
	 * context:
	 *  a PangoContext
	 * language:
	 *  the new language tag.
	 */
	public void setLanguage(PgLanguage language)
	{
		// void pango_context_set_language (PangoContext *context,  PangoLanguage *language);
		pango_context_set_language(pangoContext, (language is null) ? null : language.getPgLanguageStruct());
	}
	
	/**
	 * Retrieves the base direction for the context. See
	 * pango_context_set_base_dir().
	 * context:
	 *  a PangoContext
	 * Returns:
	 *  the base direction for the context.
	 */
	public PangoDirection getBaseDir()
	{
		// PangoDirection pango_context_get_base_dir (PangoContext *context);
		return pango_context_get_base_dir(pangoContext);
	}
	
	/**
	 * Sets the base direction for the context.
	 * The base direction is used in applying the Unicode bidirectional
	 * algorithm; if the direction is PANGO_DIRECTION_LTR or
	 * PANGO_DIRECTION_RTL, then the value will be used as the paragraph
	 * direction in the Unicode bidirectional algorithm. A value of
	 * PANGO_DIRECTION_WEAK_LTR or PANGO_DIRECTION_WEAK_RTL is used only
	 * for paragraphs that do not contain any strong characters themselves.
	 * context:
	 *  a PangoContext
	 * direction:
	 *  the new base direction
	 */
	public void setBaseDir(PangoDirection direction)
	{
		// void pango_context_set_base_dir (PangoContext *context,  PangoDirection direction);
		pango_context_set_base_dir(pangoContext, direction);
	}
	
	/**
	 * Retrieves the base gravity for the context. See
	 * pango_context_set_base_gravity().
	 * context:
	 *  a PangoContext
	 * Returns:
	 *  the base gravity for the context.
	 * Since 1.16
	 */
	public PangoGravity getBaseGravity()
	{
		// PangoGravity pango_context_get_base_gravity (PangoContext *context);
		return pango_context_get_base_gravity(pangoContext);
	}
	
	/**
	 * Sets the base gravity for the context.
	 * The base gravity is used in laying vertical text out.
	 * context:
	 *  a PangoContext
	 * gravity:
	 *  the new base gravity
	 * Since 1.16
	 */
	public void setBaseGravity(PangoGravity gravity)
	{
		// void pango_context_set_base_gravity (PangoContext *context,  PangoGravity gravity);
		pango_context_set_base_gravity(pangoContext, gravity);
	}
	
	/**
	 * Retrieves the gravity for the context. This is similar to
	 * pango_context_get_base_gravity(), except for when the base gravity
	 * is PANGO_GRAVITY_AUTO for which pango_matrix_to_gravity() is used
	 * to return the gravity from the current context matrix.
	 * context:
	 *  a PangoContext
	 * Returns:
	 *  the resolved gravity for the context.
	 * Since 1.16
	 */
	public PangoGravity getGravity()
	{
		// PangoGravity pango_context_get_gravity (PangoContext *context);
		return pango_context_get_gravity(pangoContext);
	}
	
	/**
	 * Gets the transformation matrix that will be applied when
	 * rendering with this context. See pango_context_set_matrix().
	 * context:
	 *  a PangoContext
	 * Returns:
	 *  the matrix, or NULL if no matrix has been set
	 *  (which is the same as the identity matrix). The returned
	 *  matrix is owned by Pango and must not be modified or
	 *  freed.
	 * Since 1.6
	 */
	public PangoMatrix* getMatrix()
	{
		// const PangoMatrix* pango_context_get_matrix (PangoContext *context);
		return pango_context_get_matrix(pangoContext);
	}
	
	/**
	 * Sets the transformation matrix that will be applied when rendering
	 * with this context. Note that reported metrics are in the user space
	 * coordinates before the application of the matrix, not device-space
	 * coordiantes after the application of the matrix. So, they don't scale
	 * with the matrix, though they may change slightly for different
	 * matrices, depending on how the text is fit to the pixel grid.
	 * context:
	 *  a PangoContext
	 * matrix:
	 *  a PangoMatrix, or NULL to unset any existing matrix.
	 *  (No matrix set is the same as setting the identity matrix.)
	 * Since 1.6
	 */
	public void setMatrix(PangoMatrix* matrix)
	{
		// void pango_context_set_matrix (PangoContext *context,  const PangoMatrix *matrix);
		pango_context_set_matrix(pangoContext, matrix);
	}
	
	/**
	 * Loads the font in one of the fontmaps in the context
	 * that is the closest match for desc.
	 * context:
	 *  a PangoContext
	 * desc:
	 *  a PangoFontDescription describing the font to load
	 * Returns:
	 * the font loaded, or NULL if no font matched.
	 */
	public PangoFont* loadFont(PgFontDescription desc)
	{
		// PangoFont* pango_context_load_font (PangoContext *context,  const PangoFontDescription *desc);
		return pango_context_load_font(pangoContext, (desc is null) ? null : desc.getPgFontDescriptionStruct());
	}
	
	/**
	 * Load a set of fonts in the context that can be used to render
	 * a font matching desc.
	 * context:
	 *  a PangoContext
	 * desc:
	 *  a PangoFontDescription describing the fonts to load
	 * language:
	 *  a PangoLanguage the fonts will be used for
	 * Returns:
	 * the fontset, or NULL if no font matched.
	 */
	public PangoFontset* loadFontset(PgFontDescription desc, PgLanguage language)
	{
		// PangoFontset* pango_context_load_fontset (PangoContext *context,  const PangoFontDescription *desc,  PangoLanguage *language);
		return pango_context_load_fontset(pangoContext, (desc is null) ? null : desc.getPgFontDescriptionStruct(), (language is null) ? null : language.getPgLanguageStruct());
	}
	
	/**
	 * Get overall metric information for a particular font
	 * description. Since the metrics may be substantially different for
	 * different scripts, a language tag can be provided to indicate that
	 * the metrics should be retrieved that correspond to the script(s)
	 * used by that language.
	 * The PangoFontDescription is interpreted in the same way as
	 * by pango_itemize(), and the family name may be a comma separated
	 * list of figures. If characters from multiple of these families
	 * would be used to render the string, then the returned fonts would
	 * be a composite of the metrics for the fonts loaded for the
	 * individual families.
	 * context:
	 *  a PangoContext
	 * desc:
	 *  a PangoFontDescription structure
	 * language:
	 *  language tag used to determine which script to get the metrics
	 *  for. NULL means that the language tag from the context will
	 *  be used. If no language tag is set on the ccontext, metrics
	 *  large enough to cover a range of languages will be returned.
	 *  The process of determining such metrics is slow, so it is best
	 *  to always make sure some real language tag will be used.
	 * Returns:
	 *  a PangoFontMetrics object. The caller must call pango_font_metrics_unref()
	 *  when finished using the object.
	 */
	public PgFontMetrics getMetrics(PgFontDescription desc, PgLanguage language)
	{
		// PangoFontMetrics* pango_context_get_metrics (PangoContext *context,  const PangoFontDescription *desc,  PangoLanguage *language);
		return new PgFontMetrics( pango_context_get_metrics(pangoContext, (desc is null) ? null : desc.getPgFontDescriptionStruct(), (language is null) ? null : language.getPgLanguageStruct()) );
	}
	
	/**
	 * List all families for a context.
	 * context:
	 *  a PangoContext
	 * families:
	 *  location to store a pointer to an array of PangoFontFamily *.
	 *  This array should be freed with g_free().
	 * n_families:
	 *  location to store the number of elements in descs
	 */
	public void listFamilies(PangoFontFamily*** families, int* nFamilies)
	{
		// void pango_context_list_families (PangoContext *context,  PangoFontFamily ***families,  int *n_families);
		pango_context_list_families(pangoContext, families, nFamilies);
	}
	
	/**
	 * Warning
	 * pango_get_mirror_char is deprecated and should not be used in newly-written code.
	 * If ch has the Unicode mirrored property and there is another Unicode
	 * character that typically has a glyph that is the mirror image of ch's
	 * glyph, puts that character in the address pointed to by mirrored_ch.
	 * Use g_unichar_get_mirror_char() instead; the docs for that function
	 * provide full details.
	 * ch:
	 *  a Unicode character
	 * mirrored_ch:
	 *  location to store the mirrored character
	 * Returns:
	 *  TRUE if ch has a mirrored character and mirrored_ch is
	 * filled in, FALSE otherwise
	 */
	public static int pangoGetMirrorChar(gunichar ch, gunichar* mirroredCh)
	{
		// gboolean pango_get_mirror_char (gunichar ch,  gunichar *mirrored_ch);
		return pango_get_mirror_char(ch, mirroredCh);
	}
	
	/**
	 * Determines the direction of a character; either
	 * PANGO_DIRECTION_LTR, PANGO_DIRECTION_RTL, or
	 * PANGO_DIRECTION_NEUTRAL.
	 * ch:
	 *  a Unicode character
	 * Returns:
	 *  the direction of the character, as used in the
	 * Unicode bidirectional algorithm.
	 */
	public static PangoDirection pangoUnicharDirection(gunichar ch)
	{
		// PangoDirection pango_unichar_direction (gunichar ch);
		return pango_unichar_direction(ch);
	}
	
	/**
	 * Searches a string the first character that has a strong
	 * direction, according to the Unicode bidirectional algorithm.
	 * text:
	 *  the text to process
	 * length:
	 *  length of text in bytes (may be -1 if text is nul-terminated)
	 * Returns:
	 *  The direction corresponding to the first strong character.
	 * If no such character is found, then PANGO_DIRECTION_NEUTRAL is returned.
	 * Since 1.4
	 */
	public static PangoDirection pangoFindBaseDir(char[] text, int length)
	{
		// PangoDirection pango_find_base_dir (const gchar *text,  gint length);
		return pango_find_base_dir(Str.toStringz(text), length);
	}
	
	/**
	 * Converts a PangoGravity value to its rotation value.
	 * gravity:
	 *  gravity to query
	 * Returns:
	 *  the rotation value corresponding to gravity,
	 * or zero if gravity is PANGO_GRAVITY_AUTO
	 * Since 1.16
	 */
	public static double pangoGravityToRotation(PangoGravity gravity)
	{
		// double pango_gravity_to_rotation (PangoGravity gravity);
		return pango_gravity_to_rotation(gravity);
	}
	
	/**
	 * Determines possible line, word, and character breaks
	 * for a string of Unicode text with a single analysis. For most
	 * purposes you may want to use pango_get_log_attrs().
	 * text:
	 *  the text to process
	 * length:
	 *  length of text in bytes (may be -1 if text is nul-terminated)
	 * analysis:
	 *  PangoAnalysis structure from pango_itemize()
	 * attrs:
	 *  an array to store character information in
	 * attrs_len:
	 *  size of the array passed as attrs
	 */
	public static void pangoBreak(char[] text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen)
	{
		// void pango_break (const gchar *text,  int length,  PangoAnalysis *analysis,  PangoLogAttr *attrs,  int attrs_len);
		pango_break(Str.toStringz(text), length, analysis, attrs, attrsLen);
	}
	
	/**
	 * Computes a PangoLogAttr for each character in text. The log_attrs
	 * array must have one PangoLogAttr for each position in text; if
	 * text contains N characters, it has N+1 positions, including the
	 * last position at the end of the text. text should be an entire
	 * paragraph; logical attributes can't be computed without context
	 * (for example you need to see spaces on either side of a word to know
	 * the word is a word).
	 * text:
	 *  text to process
	 * length:
	 *  length in bytes of text
	 * level:
	 *  embedding level, or -1 if unknown
	 * language:
	 *  language tag
	 * log_attrs:
	 *  array with one PangoLogAttr per character in text, plus one extra, to be filled in
	 * attrs_len:
	 *  length of log_attrs array
	 */
	public static void pangoGetLogAttrs(char[] text, int length, int level, PgLanguage language, PangoLogAttr* logAttrs, int attrsLen)
	{
		// void pango_get_log_attrs (const char *text,  int length,  int level,  PangoLanguage *language,  PangoLogAttr *log_attrs,  int attrs_len);
		pango_get_log_attrs(Str.toStringz(text), length, level, (language is null) ? null : language.getPgLanguageStruct(), logAttrs, attrsLen);
	}
	
	/**
	 * Locates a paragraph boundary in text. A boundary is caused by
	 * delimiter characters, such as a newline, carriage return, carriage
	 * return-newline pair, or Unicode paragraph separator character. The
	 * index of the run of delimiters is returned in
	 * paragraph_delimiter_index. The index of the start of the paragraph
	 * (index after all delimiters) is stored in next_paragraph_start.
	 * If no delimiters are found, both paragraph_delimiter_index and
	 * next_paragraph_start are filled with the length of text (an index one
	 * off the end).
	 * text:
	 *  UTF-8 text
	 * length:
	 *  length of text in bytes, or -1 if nul-terminated
	 * paragraph_delimiter_index:
	 *  return location for index of delimiter
	 * next_paragraph_start:
	 *  return location for start of next paragraph
	 */
	public static void pangoFindParagraphBoundary(char[] text, int length, int* paragraphDelimiterIndex, int* nextParagraphStart)
	{
		// void pango_find_paragraph_boundary (const gchar *text,  gint length,  gint *paragraph_delimiter_index,  gint *next_paragraph_start);
		pango_find_paragraph_boundary(Str.toStringz(text), length, paragraphDelimiterIndex, nextParagraphStart);
	}
	
	/**
	 * This is the default break algorithm, used if no language
	 * engine overrides it. Normally you should use pango_break()
	 * instead. Unlike pango_break(),
	 * analysis can be NULL, but only do that if you know what
	 * you're doing. If you need an analysis to pass to pango_break(),
	 * you need to pango_itemize(). In most cases however you should
	 * simply use pango_get_log_attrs().
	 * text:
	 *  text to break
	 * length:
	 *  length of text in bytes (may be -1 if text is nul-terminated)
	 * analysis:
	 *  a PangoAnalysis for the text
	 * attrs:
	 *  logical attributes to fill in
	 * attrs_len:
	 *  size of the array passed as attrs
	 */
	public static void pangoDefaultBreak(char[] text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen)
	{
		// void pango_default_break (const gchar *text,  int length,  PangoAnalysis *analysis,  PangoLogAttr *attrs,  int attrs_len);
		pango_default_break(Str.toStringz(text), length, analysis, attrs, attrsLen);
	}
	
	
	/**
	 * Given a segment of text and the corresponding
	 * PangoAnalysis structure returned from pango_itemize(),
	 * convert the characters into glyphs. You may also pass
	 * in only a substring of the item from pango_itemize().
	 * text:
	 *  the text to process
	 * length:
	 *  the length (in bytes) of text
	 * analysis:
	 *  PangoAnalysis structure from pango_itemize()
	 * glyphs:
	 *  glyph string in which to store results
	 */
	public static void pangoShape(char[] text, int length, PangoAnalysis* analysis, PangoGlyphString* glyphs)
	{
		// void pango_shape (const gchar *text,  gint length,  const PangoAnalysis *analysis,  PangoGlyphString *glyphs);
		pango_shape(Str.toStringz(text), length, analysis, glyphs);
	}
}
