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


module pango.PgContext;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import pango.PgAttributeIterator;
private import pango.PgAttributeList;
private import pango.PgFont;
private import pango.PgFontDescription;
private import pango.PgFontFamily;
private import pango.PgFontMap;
private import pango.PgFontMetrics;
private import pango.PgFontset;
private import pango.PgGlyphString;
private import pango.PgItem;
private import pango.PgLanguage;
private import pango.PgMatrix;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoContext` stores global information used to control the
 * itemization process.
 * 
 * The information stored by `PangoContext` includes the fontmap used
 * to look up fonts, and default values such as the default language,
 * default gravity, or default font.
 * 
 * To obtain a `PangoContext`, use [method@Pango.FontMap.create_context].
 */
public class PgContext : ObjectG
{
	/** the main Gtk struct */
	protected PangoContext* pangoContext;

	/** Get the main Gtk struct */
	public PangoContext* getPgContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoContext* pangoContext, bool ownedRef = false)
	{
		this.pangoContext = pangoContext;
		super(cast(GObject*)pangoContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return pango_context_get_type();
	}

	/**
	 * Creates a new `PangoContext` initialized to default values.
	 *
	 * This function is not particularly useful as it should always
	 * be followed by a [method@Pango.Context.set_font_map] call, and the
	 * function [method@Pango.FontMap.create_context] does these two steps
	 * together and hence users are recommended to use that.
	 *
	 * If you are using Pango as part of a higher-level system,
	 * that system may have it's own way of create a `PangoContext`.
	 * For instance, the GTK toolkit has, among others,
	 * `gtk_widget_get_pango_context()`. Use those instead.
	 *
	 * Returns: the newly allocated `PangoContext`, which should
	 *     be freed with g_object_unref().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = pango_context_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoContext*) __p, true);
	}

	/**
	 * Forces a change in the context, which will cause any `PangoLayout`
	 * using this context to re-layout.
	 *
	 * This function is only useful when implementing a new backend
	 * for Pango, something applications won't do. Backends should
	 * call this function if they have attached extra data to the context
	 * and such data is changed.
	 *
	 * Since: 1.32.4
	 */
	public void changed()
	{
		pango_context_changed(pangoContext);
	}

	/**
	 * Retrieves the base direction for the context.
	 *
	 * See [method@Pango.Context.set_base_dir].
	 *
	 * Returns: the base direction for the context.
	 */
	public PangoDirection getBaseDir()
	{
		return pango_context_get_base_dir(pangoContext);
	}

	/**
	 * Retrieves the base gravity for the context.
	 *
	 * See [method@Pango.Context.set_base_gravity].
	 *
	 * Returns: the base gravity for the context.
	 *
	 * Since: 1.16
	 */
	public PangoGravity getBaseGravity()
	{
		return pango_context_get_base_gravity(pangoContext);
	}

	/**
	 * Retrieve the default font description for the context.
	 *
	 * Returns: a pointer to the context's default font
	 *     description. This value must not be modified or freed.
	 */
	public PgFontDescription getFontDescription()
	{
		auto __p = pango_context_get_font_description(pangoContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) __p);
	}

	/**
	 * Gets the `PangoFontMap` used to look up fonts for this context.
	 *
	 * Returns: the font map for the `PangoContext`.
	 *     This value is owned by Pango and should not be unreferenced.
	 *
	 * Since: 1.6
	 */
	public PgFontMap getFontMap()
	{
		auto __p = pango_context_get_font_map(pangoContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontMap)(cast(PangoFontMap*) __p);
	}

	/**
	 * Retrieves the gravity for the context.
	 *
	 * This is similar to [method@Pango.Context.get_base_gravity],
	 * except for when the base gravity is %PANGO_GRAVITY_AUTO for
	 * which [func@Pango.Gravity.get_for_matrix] is used to return the
	 * gravity from the current context matrix.
	 *
	 * Returns: the resolved gravity for the context.
	 *
	 * Since: 1.16
	 */
	public PangoGravity getGravity()
	{
		return pango_context_get_gravity(pangoContext);
	}

	/**
	 * Retrieves the gravity hint for the context.
	 *
	 * See [method@Pango.Context.set_gravity_hint] for details.
	 *
	 * Returns: the gravity hint for the context.
	 *
	 * Since: 1.16
	 */
	public PangoGravityHint getGravityHint()
	{
		return pango_context_get_gravity_hint(pangoContext);
	}

	/**
	 * Retrieves the global language tag for the context.
	 *
	 * Returns: the global language tag.
	 */
	public PgLanguage getLanguage()
	{
		auto __p = pango_context_get_language(pangoContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLanguage)(cast(PangoLanguage*) __p, true);
	}

	/**
	 * Gets the transformation matrix that will be applied when
	 * rendering with this context.
	 *
	 * See [method@Pango.Context.set_matrix].
	 *
	 * Returns: the matrix, or %NULL if no matrix has
	 *     been set (which is the same as the identity matrix). The returned
	 *     matrix is owned by Pango and must not be modified or freed.
	 *
	 * Since: 1.6
	 */
	public PgMatrix getMatrix()
	{
		auto __p = pango_context_get_matrix(pangoContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgMatrix)(cast(PangoMatrix*) __p);
	}

	/**
	 * Get overall metric information for a particular font description.
	 *
	 * Since the metrics may be substantially different for different scripts,
	 * a language tag can be provided to indicate that the metrics should be
	 * retrieved that correspond to the script(s) used by that language.
	 *
	 * The `PangoFontDescription` is interpreted in the same way as by [func@itemize],
	 * and the family name may be a comma separated list of names. If characters
	 * from multiple of these families would be used to render the string, then
	 * the returned fonts would be a composite of the metrics for the fonts loaded
	 * for the individual families.
	 *
	 * Params:
	 *     desc = a `PangoFontDescription` structure. %NULL means that the
	 *         font description from the context will be used.
	 *     language = language tag used to determine which script to get
	 *         the metrics for. %NULL means that the language tag from the context
	 *         will be used. If no language tag is set on the context, metrics
	 *         for the default language (as determined by [func@Pango.Language.get_default]
	 *         will be returned.
	 *
	 * Returns: a `PangoFontMetrics` object. The caller must call
	 *     [method@Pango.FontMetrics.unref] when finished using the object.
	 */
	public PgFontMetrics getMetrics(PgFontDescription desc, PgLanguage language)
	{
		auto __p = pango_context_get_metrics(pangoContext, (desc is null) ? null : desc.getPgFontDescriptionStruct(), (language is null) ? null : language.getPgLanguageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontMetrics)(cast(PangoFontMetrics*) __p, true);
	}

	/**
	 * Returns whether font rendering with this context should
	 * round glyph positions and widths.
	 *
	 * Since: 1.44
	 */
	public bool getRoundGlyphPositions()
	{
		return pango_context_get_round_glyph_positions(pangoContext) != 0;
	}

	/**
	 * Returns the current serial number of @context.
	 *
	 * The serial number is initialized to an small number larger than zero
	 * when a new context is created and is increased whenever the context
	 * is changed using any of the setter functions, or the `PangoFontMap` it
	 * uses to find fonts has changed. The serial may wrap, but will never
	 * have the value 0. Since it can wrap, never compare it with "less than",
	 * always use "not equals".
	 *
	 * This can be used to automatically detect changes to a `PangoContext`,
	 * and is only useful when implementing objects that need update when their
	 * `PangoContext` changes, like `PangoLayout`.
	 *
	 * Returns: The current serial number of @context.
	 *
	 * Since: 1.32.4
	 */
	public uint getSerial()
	{
		return pango_context_get_serial(pangoContext);
	}

	/**
	 * List all families for a context.
	 *
	 * Params:
	 *     families = location
	 *         to store a pointer to an array of `PangoFontFamily`. This array should
	 *         be freed with g_free().
	 */
	public void listFamilies(out PgFontFamily[] families)
	{
		PangoFontFamily** outfamilies = null;
		int nFamilies;

		pango_context_list_families(pangoContext, &outfamilies, &nFamilies);

		families = new PgFontFamily[nFamilies];
		for(size_t i = 0; i < nFamilies; i++)
		{
			families[i] = ObjectG.getDObject!(PgFontFamily)(cast(PangoFontFamily*) outfamilies[i]);
		}
	}

	/**
	 * Loads the font in one of the fontmaps in the context
	 * that is the closest match for @desc.
	 *
	 * Params:
	 *     desc = a `PangoFontDescription` describing the font to load
	 *
	 * Returns: the newly allocated `PangoFont`
	 *     that was loaded, or %NULL if no font matched.
	 */
	public PgFont loadFont(PgFontDescription desc)
	{
		auto __p = pango_context_load_font(pangoContext, (desc is null) ? null : desc.getPgFontDescriptionStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFont)(cast(PangoFont*) __p, true);
	}

	/**
	 * Load a set of fonts in the context that can be used to render
	 * a font matching @desc.
	 *
	 * Params:
	 *     desc = a `PangoFontDescription` describing the fonts to load
	 *     language = a `PangoLanguage` the fonts will be used for
	 *
	 * Returns: the newly allocated
	 *     `PangoFontset` loaded, or %NULL if no font matched.
	 */
	public PgFontset loadFontset(PgFontDescription desc, PgLanguage language)
	{
		auto __p = pango_context_load_fontset(pangoContext, (desc is null) ? null : desc.getPgFontDescriptionStruct(), (language is null) ? null : language.getPgLanguageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontset)(cast(PangoFontset*) __p, true);
	}

	/**
	 * Sets the base direction for the context.
	 *
	 * The base direction is used in applying the Unicode bidirectional
	 * algorithm; if the @direction is %PANGO_DIRECTION_LTR or
	 * %PANGO_DIRECTION_RTL, then the value will be used as the paragraph
	 * direction in the Unicode bidirectional algorithm. A value of
	 * %PANGO_DIRECTION_WEAK_LTR or %PANGO_DIRECTION_WEAK_RTL is used only
	 * for paragraphs that do not contain any strong characters themselves.
	 *
	 * Params:
	 *     direction = the new base direction
	 */
	public void setBaseDir(PangoDirection direction)
	{
		pango_context_set_base_dir(pangoContext, direction);
	}

	/**
	 * Sets the base gravity for the context.
	 *
	 * The base gravity is used in laying vertical text out.
	 *
	 * Params:
	 *     gravity = the new base gravity
	 *
	 * Since: 1.16
	 */
	public void setBaseGravity(PangoGravity gravity)
	{
		pango_context_set_base_gravity(pangoContext, gravity);
	}

	/**
	 * Set the default font description for the context
	 *
	 * Params:
	 *     desc = the new pango font description
	 */
	public void setFontDescription(PgFontDescription desc)
	{
		pango_context_set_font_description(pangoContext, (desc is null) ? null : desc.getPgFontDescriptionStruct());
	}

	/**
	 * Sets the font map to be searched when fonts are looked-up
	 * in this context.
	 *
	 * This is only for internal use by Pango backends, a `PangoContext`
	 * obtained via one of the recommended methods should already have a
	 * suitable font map.
	 *
	 * Params:
	 *     fontMap = the `PangoFontMap` to set.
	 */
	public void setFontMap(PgFontMap fontMap)
	{
		pango_context_set_font_map(pangoContext, (fontMap is null) ? null : fontMap.getPgFontMapStruct());
	}

	/**
	 * Sets the gravity hint for the context.
	 *
	 * The gravity hint is used in laying vertical text out, and
	 * is only relevant if gravity of the context as returned by
	 * [method@Pango.Context.get_gravity] is set to %PANGO_GRAVITY_EAST
	 * or %PANGO_GRAVITY_WEST.
	 *
	 * Params:
	 *     hint = the new gravity hint
	 *
	 * Since: 1.16
	 */
	public void setGravityHint(PangoGravityHint hint)
	{
		pango_context_set_gravity_hint(pangoContext, hint);
	}

	/**
	 * Sets the global language tag for the context.
	 *
	 * The default language for the locale of the running process
	 * can be found using [func@Pango.Language.get_default].
	 *
	 * Params:
	 *     language = the new language tag.
	 */
	public void setLanguage(PgLanguage language)
	{
		pango_context_set_language(pangoContext, (language is null) ? null : language.getPgLanguageStruct());
	}

	/**
	 * Sets the transformation matrix that will be applied when rendering
	 * with this context.
	 *
	 * Note that reported metrics are in the user space coordinates before
	 * the application of the matrix, not device-space coordinates after the
	 * application of the matrix. So, they don't scale with the matrix, though
	 * they may change slightly for different matrices, depending on how the
	 * text is fit to the pixel grid.
	 *
	 * Params:
	 *     matrix = a `PangoMatrix`, or %NULL to unset any existing
	 *         matrix. (No matrix set is the same as setting the identity matrix.)
	 *
	 * Since: 1.6
	 */
	public void setMatrix(PgMatrix matrix)
	{
		pango_context_set_matrix(pangoContext, (matrix is null) ? null : matrix.getPgMatrixStruct());
	}

	/**
	 * Sets whether font rendering with this context should
	 * round glyph positions and widths to integral positions,
	 * in device units.
	 *
	 * This is useful when the renderer can't handle subpixel
	 * positioning of glyphs.
	 *
	 * The default value is to round glyph positions, to remain
	 * compatible with previous Pango behavior.
	 *
	 * Params:
	 *     roundPositions = whether to round glyph positions
	 *
	 * Since: 1.44
	 */
	public void setRoundGlyphPositions(bool roundPositions)
	{
		pango_context_set_round_glyph_positions(pangoContext, roundPositions);
	}

	/**
	 * Determines the bidirectional type of a character.
	 *
	 * The bidirectional type is specified in the Unicode Character Database.
	 *
	 * A simplified version of this function is available as [func@unichar_direction].
	 *
	 * Params:
	 *     ch = a Unicode character
	 *
	 * Returns: the bidirectional character type, as used in the
	 *     Unicode bidirectional algorithm.
	 *
	 * Since: 1.22
	 */
	public static PangoBidiType bidiTypeForUnichar(dchar ch)
	{
		return pango_bidi_type_for_unichar(ch);
	}

	/**
	 * Determines possible line, word, and character breaks
	 * for a string of Unicode text with a single analysis.
	 *
	 * For most purposes you may want to use [func@Pango.get_log_attrs].
	 *
	 * Deprecated: Use [func@Pango.default_break],
	 * [func@Pango.tailor_break] and [func@Pango.attr_break].
	 *
	 * Params:
	 *     text = the text to process. Must be valid UTF-8
	 *     length = length of @text in bytes (may be -1 if @text is nul-terminated)
	 *     analysis = `PangoAnalysis` structure for @text
	 *     attrs = an array to store character information in
	 */
	public static void pangoBreak(string text, int length, PangoAnalysis* analysis, PangoLogAttr[] attrs)
	{
		pango_break(Str.toStringz(text), length, analysis, attrs.ptr, cast(int)attrs.length);
	}

	/**
	 * This is the default break algorithm.
	 *
	 * It applies rules from the [Unicode Line Breaking Algorithm](http://www.unicode.org/unicode/reports/tr14/)
	 * without language-specific tailoring, therefore the @analyis argument is unused
	 * and can be %NULL.
	 *
	 * See [func@Pango.tailor_break] for language-specific breaks.
	 *
	 * See [func@Pango.attr_break] for attribute-based customization.
	 *
	 * Params:
	 *     text = text to break. Must be valid UTF-8
	 *     length = length of text in bytes (may be -1 if @text is nul-terminated)
	 *     analysis = a `PangoAnalysis` structure for the @text
	 *     attrs = logical attributes to fill in
	 *     attrsLen = size of the array passed as @attrs
	 */
	public static void defaultBreak(string text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen)
	{
		pango_default_break(Str.toStringz(text), length, analysis, attrs, attrsLen);
	}

	/**
	 * Searches a string the first character that has a strong
	 * direction, according to the Unicode bidirectional algorithm.
	 *
	 * Params:
	 *     text = the text to process. Must be valid UTF-8
	 *     length = length of @text in bytes (may be -1 if @text is nul-terminated)
	 *
	 * Returns: The direction corresponding to the first strong character.
	 *     If no such character is found, then %PANGO_DIRECTION_NEUTRAL is returned.
	 *
	 * Since: 1.4
	 */
	public static PangoDirection findBaseDir(string text, int length)
	{
		return pango_find_base_dir(Str.toStringz(text), length);
	}

	/**
	 * Locates a paragraph boundary in @text.
	 *
	 * A boundary is caused by delimiter characters, such as
	 * a newline, carriage return, carriage return-newline pair,
	 * or Unicode paragraph separator character.
	 *
	 * The index of the run of delimiters is returned in
	 * @paragraph_delimiter_index. The index of the start of the
	 * next paragraph (index after all delimiters) is stored n
	 * @next_paragraph_start.
	 *
	 * If no delimiters are found, both @paragraph_delimiter_index
	 * and @next_paragraph_start are filled with the length of @text
	 * (an index one off the end).
	 *
	 * Params:
	 *     text = UTF-8 text
	 *     length = length of @text in bytes, or -1 if nul-terminated
	 *     paragraphDelimiterIndex = return location for index of
	 *         delimiter
	 *     nextParagraphStart = return location for start of next
	 *         paragraph
	 */
	public static void findParagraphBoundary(string text, int length, out int paragraphDelimiterIndex, out int nextParagraphStart)
	{
		pango_find_paragraph_boundary(Str.toStringz(text), length, &paragraphDelimiterIndex, &nextParagraphStart);
	}

	/**
	 * Computes a `PangoLogAttr` for each character in @text.
	 *
	 * The @attrs array must have one `PangoLogAttr` for
	 * each position in @text; if @text contains N characters,
	 * it has N+1 positions, including the last position at the
	 * end of the text. @text should be an entire paragraph;
	 * logical attributes can't be computed without context
	 * (for example you need to see spaces on either side of
	 * a word to know the word is a word).
	 *
	 * Params:
	 *     text = text to process. Must be valid UTF-8
	 *     length = length in bytes of @text
	 *     level = embedding level, or -1 if unknown
	 *     language = language tag
	 *     attrs = array with one `PangoLogAttr`
	 *         per character in @text, plus one extra, to be filled in
	 */
	public static void getLogAttrs(string text, int length, int level, PgLanguage language, PangoLogAttr[] attrs)
	{
		pango_get_log_attrs(Str.toStringz(text), length, level, (language is null) ? null : language.getPgLanguageStruct(), attrs.ptr, cast(int)attrs.length);
	}

	/**
	 * Returns the mirrored character of a Unicode character.
	 *
	 * Mirror characters are determined by the Unicode mirrored property.
	 *
	 * Deprecated: Use [func@GLib.unichar_get_mirror_char] instead;
	 * the docs for that function provide full details.
	 *
	 * Params:
	 *     ch = a Unicode character
	 *     mirroredCh = location to store the mirrored character
	 *
	 * Returns: %TRUE if @ch has a mirrored character and @mirrored_ch is
	 *     filled in, %FALSE otherwise
	 */
	public static bool getMirrorChar(dchar ch, dchar* mirroredCh)
	{
		return pango_get_mirror_char(ch, mirroredCh) != 0;
	}

	/**
	 * Breaks a piece of text into segments with consistent directional
	 * level and font.
	 *
	 * Each byte of @text will be contained in exactly one of the items in the
	 * returned list; the generated list of items will be in logical order (the
	 * start offsets of the items are ascending).
	 *
	 * @cached_iter should be an iterator over @attrs currently positioned
	 * at a range before or containing @start_index; @cached_iter will be
	 * advanced to the range covering the position just after
	 * @start_index + @length. (i.e. if itemizing in a loop, just keep passing
	 * in the same @cached_iter).
	 *
	 * Params:
	 *     context = a structure holding information that affects
	 *         the itemization process.
	 *     text = the text to itemize. Must be valid UTF-8
	 *     startIndex = first byte in @text to process
	 *     length = the number of bytes (not characters) to process
	 *         after @start_index. This must be >= 0.
	 *     attrs = the set of attributes that apply to @text.
	 *     cachedIter = Cached attribute iterator
	 *
	 * Returns: a `GList` of
	 *     [struct@Pango.Item] structures. The items should be freed using
	 *     [method@Pango.Item.free] in combination with [func@GLib.List.free_full].
	 */
	public static ListG itemize(PgContext context, string text, int startIndex, int length, PgAttributeList attrs, PgAttributeIterator cachedIter)
	{
		auto __p = pango_itemize((context is null) ? null : context.getPgContextStruct(), Str.toStringz(text), startIndex, length, (attrs is null) ? null : attrs.getPgAttributeListStruct(), (cachedIter is null) ? null : cachedIter.getPgAttributeIteratorStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Like `pango_itemize()`, but with an explicitly specified base direction.
	 *
	 * The base direction is used when computing bidirectional levels.
	 * [func@itemize] gets the base direction from the `PangoContext`
	 * (see [method@Pango.Context.set_base_dir]).
	 *
	 * Params:
	 *     context = a structure holding information that affects
	 *         the itemization process.
	 *     baseDir = base direction to use for bidirectional processing
	 *     text = the text to itemize.
	 *     startIndex = first byte in @text to process
	 *     length = the number of bytes (not characters) to process
	 *         after @start_index. This must be >= 0.
	 *     attrs = the set of attributes that apply to @text.
	 *     cachedIter = Cached attribute iterator
	 *
	 * Returns: a `GList` of
	 *     [struct@Pango.Item] structures. The items should be freed using
	 *     [method@Pango.Item.free] probably in combination with [func@GLib.List.free_full].
	 *
	 * Since: 1.4
	 */
	public static ListG itemizeWithBaseDir(PgContext context, PangoDirection baseDir, string text, int startIndex, int length, PgAttributeList attrs, PgAttributeIterator cachedIter)
	{
		auto __p = pango_itemize_with_base_dir((context is null) ? null : context.getPgContextStruct(), baseDir, Str.toStringz(text), startIndex, length, (attrs is null) ? null : attrs.getPgAttributeListStruct(), (cachedIter is null) ? null : cachedIter.getPgAttributeIteratorStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Reorder items from logical order to visual order.
	 *
	 * The visual order is determined from the associated directional
	 * levels of the items. The original list is unmodified.
	 *
	 * (Please open a bug if you use this function.
	 * It is not a particularly convenient interface, and the code
	 * is duplicated elsewhere in Pango for that reason.)
	 *
	 * Params:
	 *     items = a `GList` of `PangoItem`
	 *         in logical order.
	 *
	 * Returns: a `GList`
	 *     of `PangoItem` structures in visual order.
	 */
	public static ListG reorderItems(ListG items)
	{
		auto __p = pango_reorder_items((items is null) ? null : items.getListGStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Convert the characters in @text into glyphs.
	 *
	 * Given a segment of text and the corresponding `PangoAnalysis` structure
	 * returned from [func@Pango.itemize], convert the characters into glyphs. You
	 * may also pass in only a substring of the item from [func@Pango.itemize].
	 *
	 * It is recommended that you use [func@Pango.shape_full] instead, since
	 * that API allows for shaping interaction happening across text item
	 * boundaries.
	 *
	 * Note that the extra attributes in the @analyis that is returned from
	 * [func@Pango.itemize] have indices that are relative to the entire paragraph,
	 * so you need to subtract the item offset from their indices before
	 * calling [func@Pango.shape].
	 *
	 * Params:
	 *     text = the text to process
	 *     length = the length (in bytes) of @text
	 *     analysis = `PangoAnalysis` structure from [func@Pango.itemize]
	 *     glyphs = glyph string in which to store results
	 */
	public static void shape(string text, int length, PangoAnalysis* analysis, PgGlyphString glyphs)
	{
		pango_shape(Str.toStringz(text), length, analysis, (glyphs is null) ? null : glyphs.getPgGlyphStringStruct());
	}

	/**
	 * Convert the characters in @text into glyphs.
	 *
	 * Given a segment of text and the corresponding `PangoAnalysis` structure
	 * returned from [func@Pango.itemize], convert the characters into glyphs.
	 * You may also pass in only a substring of the item from [func@Pango.itemize].
	 *
	 * This is similar to [func@Pango.shape], except it also can optionally take
	 * the full paragraph text as input, which will then be used to perform
	 * certain cross-item shaping interactions. If you have access to the broader
	 * text of which @item_text is part of, provide the broader text as
	 * @paragraph_text. If @paragraph_text is %NULL, item text is used instead.
	 *
	 * Note that the extra attributes in the @analyis that is returned from
	 * [func@Pango.itemize] have indices that are relative to the entire paragraph,
	 * so you do not pass the full paragraph text as @paragraph_text, you need
	 * to subtract the item offset from their indices before calling
	 * [func@Pango.shape_full].
	 *
	 * Params:
	 *     itemText = valid UTF-8 text to shape.
	 *     itemLength = the length (in bytes) of @item_text. -1 means nul-terminated text.
	 *     paragraphText = text of the paragraph (see details).
	 *     paragraphLength = the length (in bytes) of @paragraph_text. -1 means nul-terminated text.
	 *     analysis = `PangoAnalysis` structure from [func@Pango.itemize].
	 *     glyphs = glyph string in which to store results.
	 *
	 * Since: 1.32
	 */
	public static void shapeFull(string itemText, int itemLength, string paragraphText, int paragraphLength, PangoAnalysis* analysis, PgGlyphString glyphs)
	{
		pango_shape_full(Str.toStringz(itemText), itemLength, Str.toStringz(paragraphText), paragraphLength, analysis, (glyphs is null) ? null : glyphs.getPgGlyphStringStruct());
	}

	/**
	 * Determines the inherent direction of a character.
	 *
	 * The inherent direction is either `PANGO_DIRECTION_LTR`, `PANGO_DIRECTION_RTL`,
	 * or `PANGO_DIRECTION_NEUTRAL`.
	 *
	 * This function is useful to categorize characters into left-to-right
	 * letters, right-to-left letters, and everything else. If full Unicode
	 * bidirectional type of a character is needed, [func@Pango.BidiType.for_unichar]
	 * can be used instead.
	 *
	 * Params:
	 *     ch = a Unicode character
	 *
	 * Returns: the direction of the character.
	 */
	public static PangoDirection unicharDirection(dchar ch)
	{
		return pango_unichar_direction(ch);
	}
}
