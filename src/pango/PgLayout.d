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
 * 	- pango_layout_line_
 * omit code:
 * 	- pango_layout_set_text
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- pango.PgLayoutLine
 * 	- pango.PgContext
 * 	- pango.PgAttributeList
 * 	- pango.PgFontDescription
 * 	- pango.PgTabArray
 * 	- pango.PgLayoutIter
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- PangoAttrList* -> PgAttributeList
 * 	- PangoContext* -> PgContext
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoLayoutLine* -> PgLayoutLine
 * 	- PangoTabArray* -> PgTabArray
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgLayout;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import pango.PgLayoutLine;
private import pango.PgContext;
private import pango.PgAttributeList;
private import pango.PgFontDescription;
private import pango.PgTabArray;
private import pango.PgLayoutIter;
private import glib.ListSG;



private import gobject.ObjectG;

/**
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
	protected override void* getStruct()
	{
		return cast(void*)pangoLayout;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoLayout* pangoLayout)
	{
		super(cast(GObject*)pangoLayout);
		this.pangoLayout = pangoLayout;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		pangoLayout = cast(PangoLayout*)obj;
	}
	
	/**
	 * Sets the text of the layout.
	 * Params:
	 *  text = a UTF-8 string
	 */
	public void setText(string text)
	{
		// void pango_layout_set_text (PangoLayout *layout,  const char *text,  int length);
		pango_layout_set_text(pangoLayout, Str.toStringz(text), cast(int) text.length);
	}
	
	
	/**
	 */
	
	/**
	 * Create a new PangoLayout object with attributes initialized to
	 * default values for a particular PangoContext.
	 * Params:
	 * context = a PangoContext
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (PgContext context)
	{
		// PangoLayout * pango_layout_new (PangoContext *context);
		auto p = pango_layout_new((context is null) ? null : context.getPgContextStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by pango_layout_new((context is null) ? null : context.getPgContextStruct())");
		}
		this(cast(PangoLayout*) p);
	}
	
	/**
	 * Does a deep copy-by-value of the src layout. The attribute list,
	 * tab array, and text from the original layout are all copied by
	 * value.
	 * Returns: the newly allocated PangoLayout, with a reference count of one, which should be freed with g_object_unref(). [transfer full]
	 */
	public PgLayout copy()
	{
		// PangoLayout * pango_layout_copy (PangoLayout *src);
		auto p = pango_layout_copy(pangoLayout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}
	
	/**
	 * Retrieves the PangoContext used for this layout.
	 * Returns: the PangoContext for the layout. This does not have an additional refcount added, so if you want to keep a copy of this around, you must reference it yourself. [transfer none]
	 */
	public PgContext getContext()
	{
		// PangoContext * pango_layout_get_context (PangoLayout *layout);
		auto p = pango_layout_get_context(pangoLayout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p);
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
	 * Returns the current serial number of layout. The serial number is
	 * initialized to an small number larger than zero when a new layout
	 * is created and is increased whenever the layout is changed using any
	 * of the setter functions, or the PangoContext it uses has changed.
	 * The serial may wrap, but will never have the value 0. Since it
	 * can wrap, never compare it with "less than", always use "not equals".
	 * This can be used to automatically detect changes to a PangoLayout, and
	 * is useful for example to decide whether a layout needs redrawing.
	 * To force the serial to be increased, use pango_layout_context_changed().
	 * Since 1.32.4
	 * Returns: The current serial number of layout.
	 */
	public uint getSerial()
	{
		// guint pango_layout_get_serial (PangoLayout *layout);
		return pango_layout_get_serial(pangoLayout);
	}
	
	/**
	 * Gets the text in the layout. The returned text should not
	 * be freed or modified.
	 * Returns: the text in the layout.
	 */
	public string getText()
	{
		// const char * pango_layout_get_text (PangoLayout *layout);
		return Str.toString(pango_layout_get_text(pangoLayout));
	}
	
	/**
	 * Returns the number of Unicode characters in the
	 * the text of layout.
	 * Since 1.30
	 * Returns: the number of Unicode characters in the text of layout
	 */
	public int getCharacterCount()
	{
		// gint pango_layout_get_character_count (PangoLayout *layout);
		return pango_layout_get_character_count(pangoLayout);
	}
	
	/**
	 * Same as pango_layout_set_markup_with_accel(), but
	 * the markup text isn't scanned for accelerators.
	 * Params:
	 * markup = marked-up text
	 * length = length of marked-up text in bytes, or -1 if markup is
	 * null-terminated
	 */
	public void setMarkup(string markup, int length)
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
	 * markup = marked-up text
	 * (see markup format)
	 * length = length of marked-up text in bytes, or -1 if markup is
	 * null-terminated
	 * accelMarker = marker for accelerators in the text
	 * accelChar = return location
	 * for first located accelerator, or NULL. [out caller-allocates][allow-none]
	 */
	public void setMarkupWithAccel(string markup, int length, gunichar accelMarker, gunichar* accelChar)
	{
		// void pango_layout_set_markup_with_accel (PangoLayout *layout,  const char *markup,  int length,  gunichar accel_marker,  gunichar *accel_char);
		pango_layout_set_markup_with_accel(pangoLayout, Str.toStringz(markup), length, accelMarker, accelChar);
	}
	
	/**
	 * Sets the text attributes for a layout object.
	 * References attrs, so the caller can unref its reference.
	 * Params:
	 * attrs = a PangoAttrList, can be NULL. [allow-none][transfer full]
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		// void pango_layout_set_attributes (PangoLayout *layout,  PangoAttrList *attrs);
		pango_layout_set_attributes(pangoLayout, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}
	
	/**
	 * Gets the attribute list for the layout, if any.
	 * Returns: a PangoAttrList. [transfer none]
	 */
	public PgAttributeList getAttributes()
	{
		// PangoAttrList * pango_layout_get_attributes (PangoLayout *layout);
		auto p = pango_layout_get_attributes(pangoLayout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) p);
	}
	
	/**
	 * Sets the default font description for the layout. If no font
	 * description is set on the layout, the font description from
	 * the layout's context is used.
	 * Params:
	 * desc = the new PangoFontDescription, or NULL to unset the
	 * current font description. [allow-none]
	 */
	public void setFontDescription(PgFontDescription desc)
	{
		// void pango_layout_set_font_description (PangoLayout *layout,  const PangoFontDescription *desc);
		pango_layout_set_font_description(pangoLayout, (desc is null) ? null : desc.getPgFontDescriptionStruct());
	}
	
	/**
	 * Gets the font description for the layout, if any.
	 * Since 1.8
	 * Returns: a pointer to the layout's font description, or NULL if the font description from the layout's context is inherited. This value is owned by the layout and must not be modified or freed.
	 */
	public PgFontDescription getFontDescription()
	{
		// const PangoFontDescription * pango_layout_get_font_description  (PangoLayout *layout);
		auto p = pango_layout_get_font_description(pangoLayout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Sets the width to which the lines of the PangoLayout should wrap or
	 * ellipsized. The default value is -1: no width set.
	 * Params:
	 * width = the desired width in Pango units, or -1 to indicate that no
	 * wrapping or ellipsization should be performed.
	 */
	public void setWidth(int width)
	{
		// void pango_layout_set_width (PangoLayout *layout,  int width);
		pango_layout_set_width(pangoLayout, width);
	}
	
	/**
	 * Gets the width to which the lines of the PangoLayout should wrap.
	 * Returns: the width in Pango units, or -1 if no width set.
	 */
	public int getWidth()
	{
		// int pango_layout_get_width (PangoLayout *layout);
		return pango_layout_get_width(pangoLayout);
	}
	
	/**
	 * Sets the height to which the PangoLayout should be ellipsized at. There
	 * are two different behaviors, based on whether height is positive or
	 * negative.
	 * If height is positive, it will be the maximum height of the layout. Only
	 * lines would be shown that would fit, and if there is any text omitted,
	 * an ellipsis added. At least one line is included in each paragraph regardless
	 * of how small the height value is. A value of zero will render exactly one
	 * line for the entire layout.
	 * If height is negative, it will be the (negative of) maximum number of lines per
	 * paragraph. That is, the total number of lines shown may well be more than
	 * this value if the layout contains multiple paragraphs of text.
	 * The default value of -1 means that first line of each paragraph is ellipsized.
	 * This behvaior may be changed in the future to act per layout instead of per
	 * paragraph. File a bug against pango at http://bugzilla.gnome.org/ if your
	 * code relies on this behavior.
	 * Height setting only has effect if a positive width is set on
	 * layout and ellipsization mode of layout is not PANGO_ELLIPSIZE_NONE.
	 * The behavior is undefined if a height other than -1 is set and
	 * ellipsization mode is set to PANGO_ELLIPSIZE_NONE, and may change in the
	 * future.
	 * Since 1.20
	 * Params:
	 * height = the desired height of the layout in Pango units if positive,
	 * or desired number of lines if negative.
	 */
	public void setHeight(int height)
	{
		// void pango_layout_set_height (PangoLayout *layout,  int height);
		pango_layout_set_height(pangoLayout, height);
	}
	
	/**
	 * Gets the height of layout used for ellipsization. See
	 * pango_layout_set_height() for details.
	 * Since 1.20
	 * Returns: the height, in Pango units if positive, or number of lines if negative.
	 */
	public int getHeight()
	{
		// int pango_layout_get_height (PangoLayout *layout);
		return pango_layout_get_height(pangoLayout);
	}
	
	/**
	 * Sets the wrap mode; the wrap mode only has effect if a width
	 * is set on the layout with pango_layout_set_width().
	 * To turn off wrapping, set the width to -1.
	 * Params:
	 * wrap = the wrap mode
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
	 * Since 1.16
	 * Returns: TRUE if any paragraphs had to be wrapped, FALSE otherwise.
	 */
	public int isWrapped()
	{
		// gboolean pango_layout_is_wrapped (PangoLayout *layout);
		return pango_layout_is_wrapped(pangoLayout);
	}
	
	/**
	 * Sets the type of ellipsization being performed for layout.
	 * Depending on the ellipsization mode ellipsize text is
	 * removed from the start, middle, or end of text so they
	 * fit within the width and height of layout set with
	 * pango_layout_set_width() and pango_layout_set_height().
	 * If the layout contains characters such as newlines that
	 * force it to be layed out in multiple paragraphs, then whether
	 * each paragraph is ellipsized separately or the entire layout
	 * is ellipsized as a whole depends on the set height of the layout.
	 * See pango_layout_set_height() for details.
	 * Since 1.6
	 * Params:
	 * ellipsize = the new ellipsization mode for layout
	 */
	public void setEllipsize(PangoEllipsizeMode ellipsize)
	{
		// void pango_layout_set_ellipsize (PangoLayout *layout,  PangoEllipsizeMode ellipsize);
		pango_layout_set_ellipsize(pangoLayout, ellipsize);
	}
	
	/**
	 * Gets the type of ellipsization being performed for layout.
	 * See pango_layout_set_ellipsize()
	 * Since 1.6
	 * Returns: the current ellipsization mode for layout. Use pango_layout_is_ellipsized() to query whether any paragraphs were actually ellipsized.
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
	 * Since 1.16
	 * Returns: TRUE if any paragraphs had to be ellipsized, FALSE otherwise.
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
	 * The indent setting is ignored if layout alignment is set to
	 * PANGO_ALIGN_CENTER.
	 * Params:
	 * indent = the amount by which to indent.
	 */
	public void setIndent(int indent)
	{
		// void pango_layout_set_indent (PangoLayout *layout,  int indent);
		pango_layout_set_indent(pangoLayout, indent);
	}
	
	/**
	 * Gets the paragraph indent width in Pango units. A negative value
	 * indicates a hanging indentation.
	 * Returns: the indent in Pango units.
	 */
	public int getIndent()
	{
		// int pango_layout_get_indent (PangoLayout *layout);
		return pango_layout_get_indent(pangoLayout);
	}
	
	/**
	 * Gets the amount of spacing between the lines of the layout.
	 * Returns: the spacing in Pango units.
	 */
	public int getSpacing()
	{
		// int pango_layout_get_spacing (PangoLayout *layout);
		return pango_layout_get_spacing(pangoLayout);
	}
	
	/**
	 * Sets the amount of spacing in Pango unit between the lines of the
	 * layout.
	 * Params:
	 * spacing = the amount of spacing
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
	 * justify = whether the lines in the layout should be justified.
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
	 * Since 1.4
	 * Params:
	 * autoDir = if TRUE, compute the bidirectional base direction
	 * from the layout's contents.
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
	 * Since 1.4
	 * Returns: TRUE if the bidirectional base direction is computed from the layout's contents, FALSE otherwise.
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
	 * alignment = the alignment
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
	 * tabs = a PangoTabArray, or NULL. [allow-none]
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
		// PangoTabArray * pango_layout_get_tabs (PangoLayout *layout);
		auto p = pango_layout_get_tabs(pangoLayout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) p);
	}
	
	/**
	 * If setting is TRUE, do not treat newlines and similar characters
	 * as paragraph separators; instead, keep all text in a single paragraph,
	 * and display a glyph for paragraph separator characters. Used when
	 * you want to allow editing of newlines on a single text line.
	 * Params:
	 * setting = new setting
	 */
	public void setSingleParagraphMode(int setting)
	{
		// void pango_layout_set_single_paragraph_mode  (PangoLayout *layout,  gboolean setting);
		pango_layout_set_single_paragraph_mode(pangoLayout, setting);
	}
	
	/**
	 * Obtains the value set by pango_layout_set_single_paragraph_mode().
	 * Returns: TRUE if the layout does not break paragraphs at paragraph separator characters, FALSE otherwise.
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
	 * This function can be used to determine if there are any fonts
	 * available to render all characters in a certain string, or when
	 * used in combination with PANGO_ATTR_FALLBACK, to check if a
	 * certain font supports all the characters in the string.
	 * Since 1.16
	 * Returns: The number of unknown glyphs in layout.
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
	 * attrs = location to store a pointer to an array of logical attributes
	 * This value must be freed with g_free(). [out][array length=n_attrs][transfer container]
	 */
	public void getLogAttrs(out PangoLogAttr[] attrs)
	{
		// void pango_layout_get_log_attrs (PangoLayout *layout,  PangoLogAttr **attrs,  gint *n_attrs);
		PangoLogAttr* outattrs = null;
		int nAttrs;
		
		pango_layout_get_log_attrs(pangoLayout, &outattrs, &nAttrs);
		
		attrs = outattrs[0 .. nAttrs];
	}
	
	/**
	 * Retrieves an array of logical attributes for each character in
	 * the layout.
	 * This is a faster alternative to pango_layout_get_log_attrs().
	 * The returned array is part of layout and must not be modified.
	 * Modifying the layout will invalidate the returned array.
	 * The number of attributes returned in n_attrs will be one more
	 * than the total number of characters in the layout, since there
	 * need to be attributes corresponding to both the position before
	 * the first character and the position after the last character.
	 * Since 1.30
	 * Returns: an array of logical attributes. [array length=n_attrs]
	 */
	public PangoLogAttr[] getLogAttrsReadonly()
	{
		// const PangoLogAttr * pango_layout_get_log_attrs_readonly  (PangoLayout *layout,  gint *n_attrs);
		int nAttrs;
		auto p = pango_layout_get_log_attrs_readonly(pangoLayout, &nAttrs);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. nAttrs];
	}
	
	/**
	 * Converts from an index within a PangoLayout to the onscreen position
	 * corresponding to the grapheme at that index, which is represented
	 * as rectangle. Note that pos->x is always the leading
	 * edge of the grapheme and pos->x + pos->width the trailing
	 * edge of the grapheme. If the directionality of the grapheme is right-to-left,
	 * then pos->width will be negative.
	 * Params:
	 * index = byte index within layout
	 * pos = rectangle in which to store the position of the grapheme. [out]
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
	 * index = the byte index of a grapheme within the layout.
	 * trailing = an integer indicating the edge of the grapheme to retrieve the
	 * position of. If 0, the trailing edge of the grapheme, if > 0,
	 * the leading of the grapheme.
	 * line = location to store resulting line index. (which will
	 * between 0 and pango_layout_get_line_count(layout) - 1), or NULL. [out][allow-none]
	 * xPos = location to store resulting position within line
	 * (PANGO_SCALE units per device unit), or NULL. [out][allow-none]
	 */
	public void indexToLineX(int index, int trailing, out int line, out int xPos)
	{
		// void pango_layout_index_to_line_x (PangoLayout *layout,  int index_,  gboolean trailing,  int *line,  int *x_pos);
		pango_layout_index_to_line_x(pangoLayout, index, trailing, &line, &xPos);
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
	 * x = the X offset (in Pango units)
	 * from the left edge of the layout.
	 * y = the Y offset (in Pango units)
	 * from the top edge of the layout
	 * index = location to store calculated byte index. [out]
	 * trailing = location to store a integer indicating where
	 * in the grapheme the user clicked. It will either
	 * be zero, or the number of characters in the
	 * grapheme. 0 represents the trailing edge of the grapheme. [out]
	 * Returns: TRUE if the coordinates were inside text, FALSE otherwise.
	 */
	public int xyToIndex(int x, int y, out int index, out int trailing)
	{
		// gboolean pango_layout_xy_to_index (PangoLayout *layout,  int x,  int y,  int *index_,  int *trailing);
		return pango_layout_xy_to_index(pangoLayout, x, y, &index, &trailing);
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
	 * index = the byte index of the cursor
	 * strongPos = location to store the strong cursor position
	 * (may be NULL). [out][allow-none]
	 * weakPos = location to store the weak cursor position (may be NULL). [out][allow-none]
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
	 * strong = whether the moving cursor is the strong cursor or the
	 * weak cursor. The strong cursor is the cursor corresponding
	 * to text insertion in the base direction for the layout.
	 * oldIndex = the byte index of the grapheme for the old index
	 * oldTrailing = if 0, the cursor was at the trailing edge of the
	 * grapheme indicated by old_index, if > 0, the cursor
	 * was at the leading edge.
	 * direction = direction to move cursor. A negative
	 * value indicates motion to the left.
	 * newIndex = location to store the new cursor byte index. A value of -1
	 * indicates that the cursor has been moved off the beginning
	 * of the layout. A value of G_MAXINT indicates that
	 * the cursor has been moved off the end of the layout. [out]
	 * newTrailing = number of characters to move forward from the
	 * location returned for new_index to get the position
	 * where the cursor should be displayed. This allows
	 * distinguishing the position at the beginning of one
	 * line from the position at the end of the preceding
	 * line. new_index is always on the line where the
	 * cursor should be displayed. [out]
	 */
	public void moveCursorVisually(int strong, int oldIndex, int oldTrailing, int direction, out int newIndex, out int newTrailing)
	{
		// void pango_layout_move_cursor_visually (PangoLayout *layout,  gboolean strong,  int old_index,  int old_trailing,  int direction,  int *new_index,  int *new_trailing);
		pango_layout_move_cursor_visually(pangoLayout, strong, oldIndex, oldTrailing, direction, &newIndex, &newTrailing);
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
	 * inkRect = rectangle used to store the extents of the
	 * layout as drawn or NULL to indicate that the result is
	 * not needed. [out][allow-none]
	 * logicalRect = rectangle used to store the logical
	 * extents of the layout or NULL to indicate that the
	 * result is not needed. [out][allow-none]
	 */
	public void getExtents(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_layout_get_extents (PangoLayout *layout,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_layout_get_extents(pangoLayout, inkRect, logicalRect);
	}
	
	/**
	 * Computes the logical and ink extents of layout in device units.
	 * This function just calls pango_layout_get_extents() followed by
	 * two pango_extents_to_pixels() calls, rounding ink_rect and logical_rect
	 * such that the rounded rectangles fully contain the unrounded one (that is,
	 * passes them as first argument to pango_extents_to_pixels()).
	 * Params:
	 * inkRect = rectangle used to store the extents of the
	 * layout as drawn or NULL to indicate that the result is
	 * not needed. [out][allow-none]
	 * logicalRect = rectangle used to store the logical
	 * extents of the layout or NULL to indicate that the
	 * result is not needed. [out][allow-none]
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
	 * width = location to store the logical width, or NULL. [out caller-allocates][allow-none]
	 * height = location to store the logical height, or NULL. [out caller-allocates][allow-none]
	 */
	public void getSize(out int width, out int height)
	{
		// void pango_layout_get_size (PangoLayout *layout,  int *width,  int *height);
		pango_layout_get_size(pangoLayout, &width, &height);
	}
	
	/**
	 * Determines the logical width and height of a PangoLayout
	 * in device units. (pango_layout_get_size() returns the width
	 * and height scaled by PANGO_SCALE.) This
	 * is simply a convenience function around
	 * pango_layout_get_pixel_extents().
	 * Params:
	 * width = location to store the logical width, or NULL. [out][allow-none]
	 * height = location to store the logical height, or NULL. [out][allow-none]
	 */
	public void getPixelSize(out int width, out int height)
	{
		// void pango_layout_get_pixel_size (PangoLayout *layout,  int *width,  int *height);
		pango_layout_get_pixel_size(pangoLayout, &width, &height);
	}
	
	/**
	 * Gets the Y position of baseline of the first line in layout.
	 * Since 1.22
	 * Returns: baseline of first line, from top of layout.
	 */
	public int getBaseline()
	{
		// int pango_layout_get_baseline (PangoLayout *layout);
		return pango_layout_get_baseline(pangoLayout);
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
	 * line = the index of a line, which must be between 0 and
	 * pango_layout_get_line_count(layout) - 1, inclusive.
	 * Returns: the requested PangoLayoutLine, or NULL if the index is out of range. This layout line can be ref'ed and retained, but will become invalid if changes are made to the PangoLayout. [transfer none]
	 */
	public PgLayoutLine getLine(int line)
	{
		// PangoLayoutLine * pango_layout_get_line (PangoLayout *layout,  int line);
		auto p = pango_layout_get_line(pangoLayout, line);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayoutLine)(cast(PangoLayoutLine*) p);
	}
	
	/**
	 * Retrieves a particular line from a PangoLayout.
	 * This is a faster alternative to pango_layout_get_line(),
	 * but the user is not expected
	 * to modify the contents of the line (glyphs, glyph widths, etc.).
	 * Since 1.16
	 * Params:
	 * line = the index of a line, which must be between 0 and
	 * pango_layout_get_line_count(layout) - 1, inclusive.
	 * Returns: the requested PangoLayoutLine, or NULL if the index is out of range. This layout line can be ref'ed and retained, but will become invalid if changes are made to the PangoLayout. No changes should be made to the line. [transfer none]
	 */
	public PgLayoutLine getLineReadonly(int line)
	{
		// PangoLayoutLine * pango_layout_get_line_readonly (PangoLayout *layout,  int line);
		auto p = pango_layout_get_line_readonly(pangoLayout, line);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayoutLine)(cast(PangoLayoutLine*) p);
	}
	
	/**
	 * Returns the lines of the layout as a list.
	 * Use the faster pango_layout_get_lines_readonly() if you do not plan
	 * to modify the contents of the lines (glyphs, glyph widths, etc.).
	 * Returns: a GSList containing the lines in the layout. This points to internal data of the PangoLayout and must be used with care. It will become invalid on any change to the layout's text or properties. [element-type Pango.LayoutLine][transfer none]
	 */
	public ListSG getLines()
	{
		// GSList * pango_layout_get_lines (PangoLayout *layout);
		auto p = pango_layout_get_lines(pangoLayout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Returns the lines of the layout as a list.
	 * This is a faster alternative to pango_layout_get_lines(),
	 * but the user is not expected
	 * to modify the contents of the lines (glyphs, glyph widths, etc.).
	 * Since 1.16
	 * Returns: a GSList containing the lines in the layout. This points to internal data of the PangoLayout and must be used with care. It will become invalid on any change to the layout's text or properties. No changes should be made to the lines. [element-type Pango.LayoutLine][transfer none]
	 */
	public ListSG getLinesReadonly()
	{
		// GSList * pango_layout_get_lines_readonly (PangoLayout *layout);
		auto p = pango_layout_get_lines_readonly(pangoLayout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Returns an iterator to iterate over the visual extents of the layout.
	 * Returns: the new PangoLayoutIter that should be freed using pango_layout_iter_free().
	 */
	public PgLayoutIter getIter()
	{
		// PangoLayoutIter * pango_layout_get_iter (PangoLayout *layout);
		auto p = pango_layout_get_iter(pangoLayout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayoutIter)(cast(PangoLayoutIter*) p);
	}
}
