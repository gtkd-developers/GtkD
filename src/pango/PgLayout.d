/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = pango-Layout-Objects.html
 * outPack = pango
 * outFile = PgLayout
 * strct   = PangoLayout
 * realStrct=
 * ctorStrct=
 * clss    = PgLayout
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_layout_
 * omit structs:
 * omit prefixes:
 * 	- pango_layout_iter_
 * omit code:
 * imports:
 * 	- glib.ListSG
 * 	- pango.PgContext
 * 	- pango.PgContext
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
 * 	- pango.PgLayoutIter
 * 	- pango.PgScriptIter
 * 	- glib.Str
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- PangoAttribute* -> PgAttribute
 * 	- PangoAttributeList* -> PgAttributeList
 * 	- PangoContext* -> PgContext
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
 * module aliases:
 * local aliases:
 */

module pango.PgLayout;

private import gtkc.pangotypes;

private import gtkc.pango;


private import glib.ListSG;
private import pango.PgContext;
private import pango.PgContext;
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
private import pango.PgLayoutIter;
private import pango.PgScriptIter;
private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 * While complete access to the layout capabilities of Pango is provided
 * using the detailed interfaces for itemization and shaping, using
 * that functionality directly involves writing a fairly large amount
 * of code. The objects and functions in this section provide a
 * high-level driver for formatting entire paragraphs of text
 * at once.
 */
public class PgLayout : ObjectG
{
	
	/** the main Gtk struct */
	protected PangoLayout* pangoLayout;
	
	
	public PangoLayout* getPgLayoutStruct()
	{
		return pangoLayout;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoLayout;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoLayout* pangoLayout)
	{
		if(pangoLayout is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null pangoLayout passed to constructor.");
			else return;
		}
		super(cast(GObject*)pangoLayout);
		this.pangoLayout = pangoLayout;
	}
	
	/**
	 * Sets the text of the layout.
	 * Params:
	 *  text = a UTF-8 string
	 */
	public void setText(char[] text)
	{
		// void pango_layout_set_text (PangoLayout *layout,  const char *text,  int length);
		pango_layout_set_text(pangoLayout, Str.toStringz(text), text.length);
	}
	
	
	/**
	 */
	
	
	
	/**
	 * Create a new PangoLayout object with attributes initialized to
	 * default values for a particular PangoContext.
	 * Params:
	 * context =  a PangoContext
	 */
	public this (PgContext context)
	{
		// PangoLayout* pango_layout_new (PangoContext *context);
		this(cast(PangoLayout*)pango_layout_new((context is null) ? null : context.getPgContextStruct()) );
	}
	
	/**
	 * Does a deep copy-by-value of the src layout. The attribute list,
	 * tab array, and text from the original layout are all copied by
	 * value.
	 * Returns: the newly allocated PangoLayout, with a reference count of one, which should be freed with g_object_unref().
	 */
	public PgLayout copy()
	{
		// PangoLayout* pango_layout_copy (PangoLayout *src);
		return new PgLayout( pango_layout_copy(pangoLayout) );
	}
	
	/**
	 * Retrieves the PangoContext used for this layout.
	 * Returns: the PangoContext for the layout. This does nothave an additional refcount added, so if you want to keepa copy of this around, you must reference it yourself.
	 */
	public PgContext getContext()
	{
		// PangoContext* pango_layout_get_context (PangoLayout *layout);
		return new PgContext( pango_layout_get_context(pangoLayout) );
	}
	
	/**
	 * Forces recomputation of any state in the PangoLayout that
	 * might depend on the layout's context. This function should
	 * be called if you make changes to the context subsequent
	 * to creating the layout.
	 */
	public void contextChanged()
	{
		// void pango_layout_context_changed (PangoLayout *layout);
		pango_layout_context_changed(pangoLayout);
	}
	
	/**
	 * Sets the text of the layout.
	 * Params:
	 * text =  a valid UTF-8 string
	 * length =  maximum length of text, in bytes. -1 indicates that
	 *  the string is nul-terminated and the length should be
	 *  calculated. The text will also be truncated on
	 *  encountering a nul-termination even when length is
	 *  positive.
	 */
	public void setText(char[] text, int length)
	{
		// void pango_layout_set_text (PangoLayout *layout,  const char *text,  int length);
		pango_layout_set_text(pangoLayout, Str.toStringz(text), length);
	}
	
	/**
	 * Gets the text in the layout. The returned text should not
	 * be freed or modified.
	 * Returns: the text in the layout.
	 */
	public char[] getText()
	{
		// const char* pango_layout_get_text (PangoLayout *layout);
		return Str.toString(pango_layout_get_text(pangoLayout) );
	}
	
	/**
	 * Same as pango_layout_set_markup_with_accel(), but
	 * the markup text isn't scanned for accelerators.
	 * Params:
	 * markup =  marked-up text
	 * length =  length of marked-up text in bytes, or -1 if markup is
	 * nul-terminated
	 */
	public void setMarkup(char[] markup, int length)
	{
		// void pango_layout_set_markup (PangoLayout *layout,  const char *markup,  int length);
		pango_layout_set_markup(pangoLayout, Str.toStringz(markup), length);
	}
	
	/**
	 * Sets the layout text and attribute list from marked-up text (see
	 * markup format). Replaces
	 * the current text and attribute list.
	 * If accel_marker is nonzero, the given character will mark the
	 * character following it as an accelerator. For example, accel_marker
	 * might be an ampersand or underscore. All characters marked
	 * as an accelerator will receive a PANGO_UNDERLINE_LOW attribute,
	 * and the first character so marked will be returned in accel_char.
	 * Two accel_marker characters following each other produce a single
	 * literal accel_marker character.
	 * Params:
	 * markup =  marked-up text
	 * (see markup format)
	 * length =  length of marked-up text in bytes, or -1 if markup is
	 * nul-terminated
	 * accelMarker =  marker for accelerators in the text
	 * accelChar =  return location for first located accelerator, or NULL
	 */
	public void setMarkupWithAccel(char[] markup, int length, gunichar accelMarker, gunichar* accelChar)
	{
		// void pango_layout_set_markup_with_accel (PangoLayout *layout,  const char *markup,  int length,  gunichar accel_marker,  gunichar *accel_char);
		pango_layout_set_markup_with_accel(pangoLayout, Str.toStringz(markup), length, accelMarker, accelChar);
	}
	
	/**
	 * Sets the text attributes for a layout object.
	 * References attrs, so the caller can unref its reference.
	 * Params:
	 * attrs =  a PangoAttrList
	 */
	public void setAttributes(PangoAttrList* attrs)
	{
		// void pango_layout_set_attributes (PangoLayout *layout,  PangoAttrList *attrs);
		pango_layout_set_attributes(pangoLayout, attrs);
	}
	
	/**
	 * Gets the attribute list for the layout, if any.
	 * Returns: a PangoAttrList.
	 */
	public PangoAttrList* getAttributes()
	{
		// PangoAttrList* pango_layout_get_attributes (PangoLayout *layout);
		return pango_layout_get_attributes(pangoLayout);
	}
	
	/**
	 * Sets the default font description for the layout. If no font
	 * description is set on the layout, the font description from
	 * the layout's context is used.
	 * Params:
	 * desc =  the new PangoFontDescription, or NULL to unset the
	 *  current font description
	 */
	public void setFontDescription(PgFontDescription desc)
	{
		// void pango_layout_set_font_description (PangoLayout *layout,  const PangoFontDescription *desc);
		pango_layout_set_font_description(pangoLayout, (desc is null) ? null : desc.getPgFontDescriptionStruct());
	}
	
	/**
	 * Gets the font description for the layout, if any.
	 * Returns: a pointer to the layout's font description, or NULL if the font description from the layout's context is inherited. This value is owned by the layout and must not be modified or freed.Since 1.8
	 */
	public PgFontDescription getFontDescription()
	{
		// const PangoFontDescription* pango_layout_get_font_description  (PangoLayout *layout);
		return new PgFontDescription( pango_layout_get_font_description(pangoLayout) );
	}
	
	/**
	 * Sets the width to which the lines of the PangoLayout should wrap.
	 * Params:
	 * width =  the desired width in Pango units, or -1 to indicate that no
	 *  wrapping should be performed.
	 */
	public void setWidth(int width)
	{
		// void pango_layout_set_width (PangoLayout *layout,  int width);
		pango_layout_set_width(pangoLayout, width);
	}
	
	/**
	 * Gets the width to which the lines of the PangoLayout should wrap.
	 * Returns: the width, or -1 if no width set.
	 */
	public int getWidth()
	{
		// int pango_layout_get_width (PangoLayout *layout);
		return pango_layout_get_width(pangoLayout);
	}
	
	/**
	 * Sets the wrap mode; the wrap mode only has effect if a width
	 * is set on the layout with pango_layout_set_width(). To turn off wrapping,
	 * set the width to -1.
	 * Params:
	 * wrap =  the wrap mode
	 */
	public void setWrap(PangoWrapMode wrap)
	{
		// void pango_layout_set_wrap (PangoLayout *layout,  PangoWrapMode wrap);
		pango_layout_set_wrap(pangoLayout, wrap);
	}
	
	/**
	 * Gets the wrap mode for the layout.
	 * Use pango_layout_is_wrapped() to query whether any paragraphs
	 * were actually wrapped.
	 * Returns: active wrap mode.
	 */
	public PangoWrapMode getWrap()
	{
		// PangoWrapMode pango_layout_get_wrap (PangoLayout *layout);
		return pango_layout_get_wrap(pangoLayout);
	}
	
	/**
	 * Queries whether the layout had to wrap any paragraphs.
	 * This returns TRUE if a positive width is set on layout,
	 * ellipsization mode of layout is set to PANGO_ELLIPSIZE_NONE,
	 * and there are paragraphs exceeding the layout width that have
	 * to be wrapped.
	 * Returns: TRUE if any paragraphs had to be wrapped, FALSEotherwise.Since 1.16
	 */
	public int isWrapped()
	{
		// gboolean pango_layout_is_wrapped (PangoLayout *layout);
		return pango_layout_is_wrapped(pangoLayout);
	}
	
	
	
	/**
	 * Sets the type of ellipsization being performed for layout.
	 * Depending on the ellipsization mode ellipsize text is
	 * removed from the start, middle, or end of lines so they
	 * fit within the width of layout set with pango_layout_set_width().
	 * If the layout contains characters such as newlines that
	 * force it to be layed out in multiple lines, then each line
	 * is ellipsized separately.
	 * Params:
	 * ellipsize =  the new ellipsization mode for layout
	 * Since 1.6
	 */
	public void setEllipsize(PangoEllipsizeMode ellipsize)
	{
		// void pango_layout_set_ellipsize (PangoLayout *layout,  PangoEllipsizeMode ellipsize);
		pango_layout_set_ellipsize(pangoLayout, ellipsize);
	}
	
	/**
	 * Gets the type of ellipsization being performed for layout.
	 * See pango_layout_set_ellipsize()
	 * Returns: the current ellipsization mode for layout.Use pango_layout_is_ellipsized() to query whether any paragraphswere actually ellipsized.Since 1.6
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		// PangoEllipsizeMode pango_layout_get_ellipsize (PangoLayout *layout);
		return pango_layout_get_ellipsize(pangoLayout);
	}
	
	/**
	 * Queries whether the layout had to ellipsize any paragraphs.
	 * This returns TRUE if the ellipsization mode for layout
	 * is not PANGO_ELLIPSIZE_NONE, a positive width is set on layout,
	 * and there are paragraphs exceeding that width that have to be
	 * ellipsized.
	 * Returns: TRUE if any paragraphs had to be ellipsized, FALSEotherwise.Since 1.16
	 */
	public int isEllipsized()
	{
		// gboolean pango_layout_is_ellipsized (PangoLayout *layout);
		return pango_layout_is_ellipsized(pangoLayout);
	}
	
	
	
	/**
	 * Sets the width in Pango units to indent each paragraph. A negative value
	 * of indent will produce a hanging indentation. That is, the first line will
	 * have the full width, and subsequent lines will be indented by the
	 * absolute value of indent.
	 * Params:
	 * indent =  the amount by which to indent.
	 */
	public void setIndent(int indent)
	{
		// void pango_layout_set_indent (PangoLayout *layout,  int indent);
		pango_layout_set_indent(pangoLayout, indent);
	}
	
	/**
	 * Gets the paragraph indent width in Pango units. A negative value
	 * indicates a hanging indentation.
	 * Returns: the indent.
	 */
	public int getIndent()
	{
		// int pango_layout_get_indent (PangoLayout *layout);
		return pango_layout_get_indent(pangoLayout);
	}
	
	/**
	 * Gets the amount of spacing in PangoGlyphUnit between the lines of the
	 * layout.
	 * Returns: the spacing.
	 */
	public int getSpacing()
	{
		// int pango_layout_get_spacing (PangoLayout *layout);
		return pango_layout_get_spacing(pangoLayout);
	}
	
	/**
	 * Sets the amount of spacing in PangoGlyphUnit between the lines of the
	 * layout.
	 * Params:
	 * spacing =  the amount of spacing
	 */
	public void setSpacing(int spacing)
	{
		// void pango_layout_set_spacing (PangoLayout *layout,  int spacing);
		pango_layout_set_spacing(pangoLayout, spacing);
	}
	
	/**
	 * Sets whether each complete line should be stretched to
	 * fill the entire width of the layout. This stretching is typically
	 * done by adding whitespace, but for some scripts (such as Arabic),
	 * the justification may be done in more complex ways, like extending
	 * the characters.
	 * Note that this setting is not implemented and so is ignored in Pango
	 * older than 1.18.
	 * Params:
	 * justify =  whether the lines in the layout should be justified.
	 */
	public void setJustify(int justify)
	{
		// void pango_layout_set_justify (PangoLayout *layout,  gboolean justify);
		pango_layout_set_justify(pangoLayout, justify);
	}
	
	/**
	 * Gets whether each complete line should be stretched to fill the entire
	 * width of the layout.
	 * Returns: the justify.
	 */
	public int getJustify()
	{
		// gboolean pango_layout_get_justify (PangoLayout *layout);
		return pango_layout_get_justify(pangoLayout);
	}
	
	/**
	 * Sets whether to calculate the bidirectional base direction
	 * for the layout according to the contents of the layout;
	 * when this flag is on (the default), then paragraphs in
	 *  layout that begin with strong right-to-left characters
	 * (Arabic and Hebrew principally), will have right-to-left
	 * layout, paragraphs with letters from other scripts will
	 * have left-to-right layout. Paragraphs with only neutral
	 * characters get their direction from the surrounding paragraphs.
	 * When FALSE, the choice between left-to-right and
	 * right-to-left layout is done according to the base direction
	 * of the layout's PangoContext. (See pango_context_set_base_dir()).
	 * When the auto-computed direction of a paragraph differs from the
	 * base direction of the context, the interpretation of
	 * PANGO_ALIGN_LEFT and PANGO_ALIGN_RIGHT are swapped.
	 * Params:
	 * autoDir =  if TRUE, compute the bidirectional base direction
	 *  from the layout's contents.
	 * Since 1.4
	 */
	public void setAutoDir(int autoDir)
	{
		// void pango_layout_set_auto_dir (PangoLayout *layout,  gboolean auto_dir);
		pango_layout_set_auto_dir(pangoLayout, autoDir);
	}
	
	/**
	 * Gets whether to calculate the bidirectional base direction
	 * for the layout according to the contents of the layout.
	 * See pango_layout_set_auto_dir().
	 * Returns: TRUE if the bidirectional base direction is computed from the layout's contents, FALSE otherwise.Since 1.4
	 */
	public int getAutoDir()
	{
		// gboolean pango_layout_get_auto_dir (PangoLayout *layout);
		return pango_layout_get_auto_dir(pangoLayout);
	}
	
	/**
	 * Sets the alignment for the layout: how partial lines are
	 * positioned within the horizontal space available.
	 * Params:
	 * alignment =  the alignment
	 */
	public void setAlignment(PangoAlignment alignment)
	{
		// void pango_layout_set_alignment (PangoLayout *layout,  PangoAlignment alignment);
		pango_layout_set_alignment(pangoLayout, alignment);
	}
	
	/**
	 * Gets the alignment for the layout: how partial lines are
	 * positioned within the horizontal space available.
	 * Returns: the alignment.
	 */
	public PangoAlignment getAlignment()
	{
		// PangoAlignment pango_layout_get_alignment (PangoLayout *layout);
		return pango_layout_get_alignment(pangoLayout);
	}
	
	/**
	 * Sets the tabs to use for layout, overriding the default tabs
	 * (by default, tabs are every 8 spaces). If tabs is NULL, the default
	 * tabs are reinstated. tabs is copied into the layout; you must
	 * free your copy of tabs yourself.
	 * Params:
	 * tabs =  a PangoTabArray
	 */
	public void setTabs(PgTabArray tabs)
	{
		// void pango_layout_set_tabs (PangoLayout *layout,  PangoTabArray *tabs);
		pango_layout_set_tabs(pangoLayout, (tabs is null) ? null : tabs.getPgTabArrayStruct());
	}
	
	/**
	 * Gets the current PangoTabArray used by this layout. If no
	 * PangoTabArray has been set, then the default tabs are in use
	 * and NULL is returned. Default tabs are every 8 spaces.
	 * The return value should be freed with pango_tab_array_free().
	 * Returns: a copy of the tabs for this layout, or NULL.
	 */
	public PgTabArray getTabs()
	{
		// PangoTabArray* pango_layout_get_tabs (PangoLayout *layout);
		return new PgTabArray( pango_layout_get_tabs(pangoLayout) );
	}
	
	/**
	 * If setting is TRUE, do not treat newlines and similar characters
	 * as paragraph separators; instead, keep all text in a single paragraph,
	 * and display a glyph for paragraph separator characters. Used when
	 * you want to allow editing of newlines on a single text line.
	 * Params:
	 * setting =  new setting
	 */
	public void setSingleParagraphMode(int setting)
	{
		// void pango_layout_set_single_paragraph_mode  (PangoLayout *layout,  gboolean setting);
		pango_layout_set_single_paragraph_mode(pangoLayout, setting);
	}
	
	/**
	 * Obtains the value set by pango_layout_set_single_paragraph_mode().
	 * Returns: TRUE if the layout does not break paragraphs atparagraph separator characters, FALSE otherwise.
	 */
	public int getSingleParagraphMode()
	{
		// gboolean pango_layout_get_single_paragraph_mode  (PangoLayout *layout);
		return pango_layout_get_single_paragraph_mode(pangoLayout);
	}
	
	
	
	/**
	 * Counts the number unknown glyphs in layout. That is, zero if
	 * glyphs for all characters in the layout text were found, or more
	 * than zero otherwise.
	 * Returns: The number of unknown glyphs in layout.Since 1.16
	 */
	public int getUnknownGlyphsCount()
	{
		// int pango_layout_get_unknown_glyphs_count  (PangoLayout *layout);
		return pango_layout_get_unknown_glyphs_count(pangoLayout);
	}
	
	/**
	 * Retrieves an array of logical attributes for each character in
	 * the layout.
	 * Params:
	 * attrs =  location to store a pointer to an array of logical attributes
	 *  This value must be freed with g_free().
	 * nAttrs =  location to store the number of the attributes in the
	 *  array. (The stored value will be one more than the total number
	 *  of characters in the layout, since there need to be attributes
	 *  corresponding to both the position before the first character
	 *  and the position after the last character.)
	 */
	public void getLogAttrs(PangoLogAttr** attrs, int* nAttrs)
	{
		// void pango_layout_get_log_attrs (PangoLayout *layout,  PangoLogAttr **attrs,  gint *n_attrs);
		pango_layout_get_log_attrs(pangoLayout, attrs, nAttrs);
	}
	
	/**
	 * Converts from an index within a PangoLayout to the onscreen position
	 * corresponding to the grapheme at that index, which is represented
	 * as rectangle. Note that pos->x is always the leading
	 * edge of the grapheme and pos->x + pos->width the trailing
	 * edge of the grapheme. If the directionality of the grapheme is right-to-left,
	 * then pos->width will be negative.
	 * Params:
	 * index =  byte index within layout
	 * pos =  rectangle in which to store the position of the grapheme
	 */
	public void indexToPos(int index, PangoRectangle* pos)
	{
		// void pango_layout_index_to_pos (PangoLayout *layout,  int index_,  PangoRectangle *pos);
		pango_layout_index_to_pos(pangoLayout, index, pos);
	}
	
	/**
	 * Converts from byte index_ within the layout to line and X position.
	 * (X position is measured from the left edge of the line)
	 * Params:
	 * index =  the byte index of a grapheme within the layout.
	 * trailing =  an integer indicating the edge of the grapheme to retrieve the
	 *  position of. If 0, the trailing edge of the grapheme, if > 0,
	 *  the leading of the grapheme.
	 * line =  location to store resulting line index. (which will
	 *  between 0 and pango_layout_get_line_count(layout) - 1)
	 * xPos =  location to store resulting position within line
	 *  (PANGO_SCALE units per device unit)
	 */
	public void indexToLineX(int index, int trailing, int* line, int* xPos)
	{
		// void pango_layout_index_to_line_x (PangoLayout *layout,  int index_,  gboolean trailing,  int *line,  int *x_pos);
		pango_layout_index_to_line_x(pangoLayout, index, trailing, line, xPos);
	}
	
	/**
	 * Converts from X and Y position within a layout to the byte
	 * index to the character at that logical position. If the
	 * Y position is not inside the layout, the closest position is chosen
	 * (the position will be clamped inside the layout). If the
	 * X position is not within the layout, then the start or the
	 * end of the line is chosen as described for pango_layout_x_to_index().
	 * If either the X or Y positions were not inside the layout, then the
	 * function returns FALSE; on an exact hit, it returns TRUE.
	 * Params:
	 * x =  the X offset (in PangoGlyphUnit)
	 *  from the left edge of the layout.
	 * y =  the Y offset (in PangoGlyphUnit)
	 *  from the top edge of the layout
	 * index =  location to store calculated byte index
	 * trailing =  location to store a integer indicating where
	 *  in the grapheme the user clicked. It will either
	 *  be zero, or the number of characters in the
	 *  grapheme. 0 represents the trailing edge of the grapheme.
	 * Returns: TRUE if the coordinates were inside text, FALSE otherwise.
	 */
	public int xyToIndex(int x, int y, int* index, int* trailing)
	{
		// gboolean pango_layout_xy_to_index (PangoLayout *layout,  int x,  int y,  int *index_,  int *trailing);
		return pango_layout_xy_to_index(pangoLayout, x, y, index, trailing);
	}
	
	/**
	 * Given an index within a layout, determines the positions that of the
	 * strong and weak cursors if the insertion point is at that
	 * index. The position of each cursor is stored as a zero-width
	 * rectangle. The strong cursor location is the location where
	 * characters of the directionality equal to the base direction of the
	 * layout are inserted. The weak cursor location is the location
	 * where characters of the directionality opposite to the base
	 * direction of the layout are inserted.
	 * Params:
	 * index =  the byte index of the cursor
	 * strongPos =  location to store the strong cursor position (may be NULL)
	 * weakPos =  location to store the weak cursor position (may be NULL)
	 */
	public void getCursorPos(int index, PangoRectangle* strongPos, PangoRectangle* weakPos)
	{
		// void pango_layout_get_cursor_pos (PangoLayout *layout,  int index_,  PangoRectangle *strong_pos,  PangoRectangle *weak_pos);
		pango_layout_get_cursor_pos(pangoLayout, index, strongPos, weakPos);
	}
	
	/**
	 * Computes a new cursor position from an old position and
	 * a count of positions to move visually. If direction is positive,
	 * then the new strong cursor position will be one position
	 * to the right of the old cursor position. If direction is negative,
	 * then the new strong cursor position will be one position
	 * to the left of the old cursor position.
	 * In the presence of bidirectional text, the correspondence
	 * between logical and visual order will depend on the direction
	 * of the current run, and there may be jumps when the cursor
	 * is moved off of the end of a run.
	 * Motion here is in cursor positions, not in characters, so a
	 * single call to pango_layout_move_cursor_visually() may move the
	 * cursor over multiple characters when multiple characters combine
	 * to form a single grapheme.
	 * Params:
	 * strong =  whether the moving cursor is the strong cursor or the
	 *  weak cursor. The strong cursor is the cursor corresponding
	 *  to text insertion in the base direction for the layout.
	 * oldIndex =  the byte index of the grapheme for the old index
	 * oldTrailing =  if 0, the cursor was at the trailing edge of the
	 *  grapheme indicated by old_index, if > 0, the cursor
	 *  was at the leading edge.
	 * direction =  direction to move cursor. A negative
	 *  value indicates motion to the left.
	 * newIndex =  location to store the new cursor byte index. A value of -1
	 *  indicates that the cursor has been moved off the beginning
	 *  of the layout. A value of G_MAXINT indicates that
	 *  the cursor has been moved off the end of the layout.
	 * newTrailing =  number of characters to move forward from the location returned
	 *  for new_index to get the position where the cursor should
	 *  be displayed. This allows distinguishing the position at
	 *  the beginning of one line from the position at the end
	 *  of the preceding line. new_index is always on the line
	 *  where the cursor should be displayed.
	 */
	public void moveCursorVisually(int strong, int oldIndex, int oldTrailing, int direction, int* newIndex, int* newTrailing)
	{
		// void pango_layout_move_cursor_visually (PangoLayout *layout,  gboolean strong,  int old_index,  int old_trailing,  int direction,  int *new_index,  int *new_trailing);
		pango_layout_move_cursor_visually(pangoLayout, strong, oldIndex, oldTrailing, direction, newIndex, newTrailing);
	}
	
	/**
	 * Computes the logical and ink extents of layout. Logical extents
	 * are usually what you want for positioning things. Note that both extents
	 * may have non-zero x and y. You may want to use those to offset where you
	 * render the layout. Not doing that is a very typical bug that shows up as
	 * right-to-left layouts not being correctly positioned in a layout with
	 * a set width.
	 * The extents are given in layout coordinates and in Pango units; layout
	 * coordinates begin at the top left corner of the layout.
	 * Params:
	 * inkRect =  rectangle used to store the extents of the layout as drawn
	 *  or NULL to indicate that the result is not needed.
	 * logicalRect =  rectangle used to store the logical extents of the layout
	 * 		 or NULL to indicate that the result is not needed.
	 */
	public void getExtents(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_layout_get_extents (PangoLayout *layout,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_layout_get_extents(pangoLayout, inkRect, logicalRect);
	}
	
	/**
	 * Computes the logical and ink extents of layout in device units.
	 * This function just calls pango_layout_get_extents() followed by
	 * pango_extents_to_pixels().
	 * See pango_extents_to_pixels() for details of how ink and logical rectangles
	 * are rounded to pixels. In certain situations you may want to use
	 * pango_layout_get_extents() directly and pass the resulting logical
	 * rectangle to pango_extents_to_pixels() as an ink rectangle().
	 * Params:
	 * inkRect =  rectangle used to store the extents of the layout as drawn
	 *  or NULL to indicate that the result is not needed.
	 * logicalRect =  rectangle used to store the logical extents of the
	 *  layout or NULL to indicate that the result is not needed.
	 */
	public void getPixelExtents(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_layout_get_pixel_extents (PangoLayout *layout,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_layout_get_pixel_extents(pangoLayout, inkRect, logicalRect);
	}
	
	/**
	 * Determines the logical width and height of a PangoLayout
	 * in Pango units (device units scaled by PANGO_SCALE). This
	 * is simply a convenience function around pango_layout_get_extents().
	 * Params:
	 * width =  location to store the logical width, or NULL
	 * height =  location to store the logical height, or NULL
	 */
	public void getSize(int* width, int* height)
	{
		// void pango_layout_get_size (PangoLayout *layout,  int *width,  int *height);
		pango_layout_get_size(pangoLayout, width, height);
	}
	
	/**
	 * Determines the logical width and height of a PangoLayout
	 * in device units. (pango_layout_get_size() returns the width
	 * and height scaled by PANGO_SCALE.) This
	 * is simply a convenience function around
	 * pango_layout_get_pixel_extents().
	 * Params:
	 * width =  location to store the logical width, or NULL
	 * height =  location to store the logical height, or NULL
	 */
	public void getPixelSize(int* width, int* height)
	{
		// void pango_layout_get_pixel_size (PangoLayout *layout,  int *width,  int *height);
		pango_layout_get_pixel_size(pangoLayout, width, height);
	}
	
	/**
	 * Retrieves the count of lines for the layout.
	 * Returns: the line count.
	 */
	public int getLineCount()
	{
		// int pango_layout_get_line_count (PangoLayout *layout);
		return pango_layout_get_line_count(pangoLayout);
	}
	
	/**
	 * Retrieves a particular line from a PangoLayout.
	 * Use the faster pango_layout_get_line_readonly() if you do not plan
	 * to modify the contents of the line (glyphs, glyph widths, etc.).
	 * Params:
	 * line =  the index of a line, which must be between 0 and
	 *  pango_layout_get_line_count(layout) - 1, inclusive.
	 * Returns: the requested PangoLayoutLine, or NULL if the index is out of range. This layout line can be ref'ed and retained, but will become invalid if changes are made to the PangoLayout.
	 */
	public PangoLayoutLine* getLine(int line)
	{
		// PangoLayoutLine* pango_layout_get_line (PangoLayout *layout,  int line);
		return pango_layout_get_line(pangoLayout, line);
	}
	
	/**
	 * Retrieves a particular line from a PangoLayout.
	 * This is a faster alternative to pango_layout_get_line(),
	 * but the user is not expected
	 * to modify the contents of the line (glyphs, glyph widths, etc.).
	 * Params:
	 * line =  the index of a line, which must be between 0 and
	 *  pango_layout_get_line_count(layout) - 1, inclusive.
	 * Returns: the requested PangoLayoutLine, or NULL if the index is out of range. This layout line can be ref'ed and retained, but will become invalid if changes are made to the PangoLayout. No changes should be made to the line.Since 1.16
	 */
	public PangoLayoutLine* getLineReadonly(int line)
	{
		// PangoLayoutLine* pango_layout_get_line_readonly (PangoLayout *layout,  int line);
		return pango_layout_get_line_readonly(pangoLayout, line);
	}
	
	/**
	 * Returns the lines of the layout as a list.
	 * Use the faster pango_layout_get_lines_readonly() if you do not plan
	 * to modify the contents of the lines (glyphs, glyph widths, etc.).
	 * Returns: a GSList containing the lines in the layout. Thispoints to internal data of the PangoLayout and must be used withcare. It will become invalid on any change to the layout'stext or properties.
	 */
	public ListSG getLines()
	{
		// GSList* pango_layout_get_lines (PangoLayout *layout);
		return new ListSG( pango_layout_get_lines(pangoLayout) );
	}
	
	/**
	 * Returns the lines of the layout as a list.
	 * This is a faster alternative to pango_layout_get_lines(),
	 * but the user is not expected
	 * to modify the contents of the lines (glyphs, glyph widths, etc.).
	 * Returns: a GSList containing the lines in the layout. Thispoints to internal data of the PangoLayout and must be used withcare. It will become invalid on any change to the layout'stext or properties. No changes should be made to the lines.Since 1.16
	 */
	public ListSG getLinesReadonly()
	{
		// GSList* pango_layout_get_lines_readonly (PangoLayout *layout);
		return new ListSG( pango_layout_get_lines_readonly(pangoLayout) );
	}
	
	/**
	 * Returns an iterator to iterate over the visual extents of the layout.
	 * Returns: the new PangoLayoutIter that should be freed using pango_layout_iter_free().
	 */
	public PgLayoutIter getIter()
	{
		// PangoLayoutIter* pango_layout_get_iter (PangoLayout *layout);
		return new PgLayoutIter( pango_layout_get_iter(pangoLayout) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Increase the reference count of a PangoLayoutLine by one.
	 * Params:
	 * line =  a PangoLayoutLine
	 * Returns: the line passed in.Since 1.10
	 */
	public static PangoLayoutLine* lineRef(PangoLayoutLine* line)
	{
		// PangoLayoutLine* pango_layout_line_ref (PangoLayoutLine *line);
		return pango_layout_line_ref(line);
	}
	
	/**
	 * Decrease the reference count of a PangoLayoutLine by one.
	 * If the result is zero, the line and all associated memory
	 * will be freed.
	 * Params:
	 * line =  a PangoLayoutLine
	 */
	public static void lineUnref(PangoLayoutLine* line)
	{
		// void pango_layout_line_unref (PangoLayoutLine *line);
		pango_layout_line_unref(line);
	}
	
	/**
	 * Computes the logical and ink extents of a layout line. See
	 * pango_font_get_glyph_extents() for details about the interpretation
	 * of the rectangles.
	 * Params:
	 * line =  a PangoLayoutLine
	 * inkRect =  rectangle used to store the extents of the glyph string
	 *  as drawn, or NULL
	 * logicalRect =  rectangle used to store the logical extents of the glyph
	 *  string, or NULL
	 */
	public static void lineGetExtents(PangoLayoutLine* line, PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_layout_line_get_extents (PangoLayoutLine *line,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_layout_line_get_extents(line, inkRect, logicalRect);
	}
	
	/**
	 * Computes the logical and ink extents of layout_line in device units.
	 * This function just calls pango_layout_line_get_extents() followed by
	 * pango_extents_to_pixels().
	 * Params:
	 * layoutLine =  a PangoLayoutLine
	 * inkRect =  rectangle used to store the extents of the glyph string
	 *  as drawn, or NULL
	 * logicalRect =  rectangle used to store the logical extents of the glyph
	 *  string, or NULL
	 */
	public static void lineGetPixelExtents(PangoLayoutLine* layoutLine, PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_layout_line_get_pixel_extents (PangoLayoutLine *layout_line,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_layout_line_get_pixel_extents(layoutLine, inkRect, logicalRect);
	}
	
	/**
	 * Converts an index within a line to a X position.
	 * Params:
	 * line =  a PangoLayoutLine
	 * index =  byte offset of a grapheme within the layout
	 * trailing =  an integer indicating the edge of the grapheme to retrieve
	 *  the position of. If > 0, the trailing edge of the grapheme,
	 *  if 0, the leading of the grapheme.
	 * xPos =  location to store the x_offset (in PangoGlyphUnit)
	 */
	public static void lineIndexToX(PangoLayoutLine* line, int index, int trailing, int* xPos)
	{
		// void pango_layout_line_index_to_x (PangoLayoutLine *line,  int index_,  gboolean trailing,  int *x_pos);
		pango_layout_line_index_to_x(line, index, trailing, xPos);
	}
	
	/**
	 * Converts from x offset to the byte index of the corresponding
	 * character within the text of the layout. If x_pos is outside the line,
	 * index_ and trailing will point to the very first or very last position
	 * in the line. This determination is based on the resolved direction
	 * of the paragraph; for example, if the resolved direction is
	 * right-to-left, then an X position to the right of the line (after it)
	 * results in 0 being stored in index_ and trailing. An X position to the
	 * left of the line results in index_ pointing to the (logical) last
	 * grapheme in the line and trailing being set to the number of characters
	 * in that grapheme. The reverse is true for a left-to-right line.
	 * Params:
	 * line =  a PangoLayoutLine
	 * xPos =  the X offset (in PangoGlyphUnit)
	 *  from the left edge of the line.
	 * index =  location to store calculated byte index for
	 *  the grapheme in which the user clicked.
	 * trailing =  location to store an integer indicating where
	 *  in the grapheme the user clicked. It will either
	 *  be zero, or the number of characters in the
	 *  grapheme. 0 represents the leading edge of the grapheme.
	 * Returns: FALSE if x_pos was outside the line, TRUE if inside
	 */
	public static int lineXToIndex(PangoLayoutLine* line, int xPos, int* index, int* trailing)
	{
		// gboolean pango_layout_line_x_to_index (PangoLayoutLine *line,  int x_pos,  int *index_,  int *trailing);
		return pango_layout_line_x_to_index(line, xPos, index, trailing);
	}
	
	/**
	 * Gets a list of visual ranges corresponding to a given logical range.
	 * This list is not necessarily minimal - there may be consecutive
	 * ranges which are adjacent. The ranges will be sorted from left to
	 * right. The ranges are with respect to the left edge of the entire
	 * layout, not with respect to the line.
	 * Params:
	 * line =  a PangoLayoutLine
	 * startIndex =  Start byte index of the logical range. If this value
	 *  is less than the start index for the line, then
	 *  the first range will extend all the way to the leading
	 *  edge of the layout. Otherwise it will start at the
	 *  leading edge of the first character.
	 * endIndex =  Ending byte index of the logical range. If this value
	 *  is greater than the end index for the line, then
	 *  the last range will extend all the way to the trailing
	 *  edge of the layout. Otherwise, it will end at the
	 *  trailing edge of the last character.
	 * ranges =  location to store a pointer to an array of ranges.
	 *  The array will be of length 2*n_ranges,
	 *  with each range starting at (*ranges)[2*n]
	 *  and of width (*ranges)[2*n + 1] - (*ranges)[2*n].
	 *  This array must be freed with g_free(). The coordinates are relative
	 *  to the layout and are in PangoGlyphUnit.
	 * nRanges =  The number of ranges stored in ranges.
	 */
	public static void lineGetXRanges(PangoLayoutLine* line, int startIndex, int endIndex, int** ranges, int* nRanges)
	{
		// void pango_layout_line_get_x_ranges (PangoLayoutLine *line,  int start_index,  int end_index,  int **ranges,  int *n_ranges);
		pango_layout_line_get_x_ranges(line, startIndex, endIndex, ranges, nRanges);
	}
}
