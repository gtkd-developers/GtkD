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

module dango.Font;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.ObjectG;
private import lib.pango;
	
private import dool.String;

/**
 * Font manipulation
 * \todo check if we need to free the PangoFontDescription on the dtor
 */
public:
class Font 
{	
	PangoFontDescription* pfd;
	
	public:
	
	/**
	 * get the Pango font structure
	 * @return a pointer to PangoFontDescription
	 */
	PangoFontDescription* gdkP()
	{
		return pfd;
	}
	
	/** 
	 * creates a new font from a PangoFontDescription
	 */
	this(PangoFontDescription* pangoFontDescription)
	{
		pfd = pangoFontDescription;
	}
	
	/**
	 * gets this class type
	 * @return this class type
	 */
	GType getType()
	{
		return pango_font_description_get_type();
	}
	
	/**
	 * creates a new Font
	 */
	this()
	{
		this(pango_font_description_new());
	}
	
	/**
	 * Creates a new font description from a string representation in the form
	 * "[FAMILY-LIST] [STYLE-OPTIONS] [SIZE]". 
	 * FAMILY-LIST is a comma separated list of families optionally terminated by a comma,
	 * STYLE_OPTIONS is a whitespace separated list of words where each WORD describes one of style,
	 * variant, weight, or stretch, and SIZE is an decimal number (size in points).
	 * Any one of the options may be absent. If FAMILY-LIST is absent, then the family_name field of
	 * the resulting font description will be initialized to NULL. If STYLE-OPTIONS is missing,
	 * then all style options will be set to the default values. If SIZE is missing, the size in
	 * the resulting font description will be set to 0.
	 * @param str the string description
	 * \bug this segfaults
	 */
	this(String str)
	{
		this(pango_font_description_from_string(str.toStringz()));
	}

	this(char[] str)
	{
		this(new String(str));
	}
	
	/**
	 * frees this description
	 */
	void free()
	{
		pango_font_description_free(gdkP());
	}
}
