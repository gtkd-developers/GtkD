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
 * inFile  = GtkSourceTag.html
 * outPack = gsv
 * outFile = SourceTag
 * strct   = GtkSourceTag
 * realStrct=
 * ctorStrct=
 * clss    = SourceTag
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_tag_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * 	- GtkSourceTagStyle* -> SourceTagStyle
 * module aliases:
 * local aliases:
 */

module gsv.SourceTag;

private import gsvc.gsvtypes;

private import gsvc.gsv;




/**
 * Description
 */
private import gtk.TextTag;
public class SourceTag : TextTag
{
	
	/** the main Gtk struct */
	protected GtkSourceTag* gtkSourceTag;
	
	
	public GtkSourceTag* getSourceTagStruct()
	{
		return gtkSourceTag;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceTag;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceTag* gtkSourceTag)
	{
		super(cast(GtkTextTag*)gtkSourceTag);
		this.gtkSourceTag = gtkSourceTag;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	/**
	 * Gets the style associated with the given tag.
	 * tag:
	 *  a GtkSourceTag.
	 * Returns:
	 *  a GtkSourceTagStyle if found, or NULL if not found.
	 */
	public SourceTagStyle getStyle()
	{
		// GtkSourceTagStyle* gtk_source_tag_get_style (GtkSourceTag *tag);
		return new SourceTagStyle( gtk_source_tag_get_style(gtkSourceTag) );
	}
	
	/**
	 * Associates a given style with the given tag.
	 * tag:
	 *  a GtkSourceTag.
	 * style:
	 *  a GtkSourceTagStyle.
	 */
	public void setStyle(SourceTagStyle style)
	{
		// void gtk_source_tag_set_style (GtkSourceTag *tag,  const GtkSourceTagStyle *style);
		gtk_source_tag_set_style(gtkSourceTag, (style is null) ? null : style.getSourceTagStyleStruct());
	}
	
	/**
	 * Creates a new syntax tag object with the provided arguments.
	 * id:
	 *  the ID for the tag.
	 * name:
	 *  the name of the tag.
	 * pattern_start:
	 *  the starting pattern.
	 * pattern_end:
	 *  the ending pattern.
	 * Returns:
	 *  a new syntax tag, as a GtkTextTag.
	 */
	public static GtkTextTag* gtkSyntaxTagNew(char[] id, char[] name, char[] patternStart, char[] patternEnd)
	{
		// GtkTextTag* gtk_syntax_tag_new (const gchar *id,  const gchar *name,  const gchar *pattern_start,  const gchar *pattern_end);
		return gtk_syntax_tag_new(Str.toStringz(id), Str.toStringz(name), Str.toStringz(patternStart), Str.toStringz(patternEnd));
	}
	
	/**
	 * Creates a new pattern tag object with the provided arguments.
	 * id:
	 *  the ID for the tag.
	 * name:
	 *  the name of the tag.
	 * pattern:
	 *  the pattern.
	 * Returns:
	 *  a new pattern tag, as a GtkTextTag.
	 */
	public static GtkTextTag* gtkPatternTagNew(char[] id, char[] name, char[] pattern)
	{
		// GtkTextTag* gtk_pattern_tag_new (const gchar *id,  const gchar *name,  const gchar *pattern);
		return gtk_pattern_tag_new(Str.toStringz(id), Str.toStringz(name), Str.toStringz(pattern));
	}
	
	/**
	 * Creates a new keyword list tag object with the provided arguments.
	 * id:
	 *  the ID for the tag.
	 * name:
	 *  the name of the tag.
	 * keywords:
	 *  a list of keywords.
	 * case_sensitive:
	 *  whether the tag should be case sensitive.
	 * match_empty_string_at_beginning:
	 *  whether the tag should match empty
	 * string at the beginning.
	 * match_empty_string_at_end:
	 *  whether the tag should match empty
	 * string at the end.
	 * beginning_regex:
	 *  the beginning regular expression.
	 * end_regex:
	 *  the ending regular expression.
	 * Returns:
	 *  a new keyword list tag, as a GtkTextTag.
	 */
	public static GtkTextTag* gtkKeywordListTagNew(char[] id, char[] name, GSList* keywords, int caseSensitive, int matchEmptyStringAtBeginning, int matchEmptyStringAtEnd, char[] beginningRegex, char[] endRegex)
	{
		// GtkTextTag* gtk_keyword_list_tag_new (const gchar *id,  const gchar *name,  const GSList *keywords,  gboolean case_sensitive,  gboolean match_empty_string_at_beginning,  gboolean match_empty_string_at_end,  const gchar *beginning_regex,  const gchar *end_regex);
		return gtk_keyword_list_tag_new(Str.toStringz(id), Str.toStringz(name), keywords, caseSensitive, matchEmptyStringAtBeginning, matchEmptyStringAtEnd, Str.toStringz(beginningRegex), Str.toStringz(endRegex));
	}
	
	
	/**
	 * Creates a new line comment tag object with the provided arguments.
	 * id:
	 *  the ID for the tag.
	 * name:
	 *  the name of the tag.
	 * pattern_start:
	 *  the starting pattern.
	 * Returns:
	 *  a new line comment tag, as a GtkTextTag.
	 */
	public static GtkTextTag* gtkLineCommentTagNew(char[] id, char[] name, char[] patternStart)
	{
		// GtkTextTag* gtk_line_comment_tag_new (const gchar *id,  const gchar *name,  const gchar *pattern_start);
		return gtk_line_comment_tag_new(Str.toStringz(id), Str.toStringz(name), Str.toStringz(patternStart));
	}
	
	/**
	 * Creates a new string tag object with the provided arguments.
	 * id:
	 *  the ID for the tag.
	 * name:
	 *  the name of the tag.
	 * pattern_start:
	 *  the starting pattern.
	 * pattern_end:
	 *  the ending pattern.
	 * end_at_line_end:
	 *  whether the ending pattern should be suffixed by an end-of-line character.
	 * Returns:
	 *  a new string tag, as a GtkTextTag.
	 * Property Details
	 * The "id" property
	 *  "id" gchararray : Read / Write / Construct Only
	 * ID used to refer to the source tag.
	 * Default value: NULL
	 */
	public static GtkTextTag* gtkStringTagNew(char[] id, char[] name, char[] patternStart, char[] patternEnd, int endAtLineEnd)
	{
		// GtkTextTag* gtk_string_tag_new (const gchar *id,  const gchar *name,  const gchar *pattern_start,  const gchar *pattern_end,  gboolean end_at_line_end);
		return gtk_string_tag_new(Str.toStringz(id), Str.toStringz(name), Str.toStringz(patternStart), Str.toStringz(patternEnd), endAtLineEnd);
	}
	
}
