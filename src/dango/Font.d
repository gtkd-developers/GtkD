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
public:

//struct PangoFontDescription;

private:
extern(C)
{
	GType pango_font_description_get_type();
	PangoFontDescription * pango_font_description_new();
	/+
	PangoFontDescription * pango_font_description_copy (const PangoFontDescription * desc);
	PangoFontDescription * pango_font_description_copy_static (const PangoFontDescription * desc);
	guint pango_font_description_hash (const PangoFontDescription * desc);
	gboolean pango_font_description_equal (const PangoFontDescription * desc1, const PangoFontDescription * desc2);
	+/
	void pango_font_description_free (PangoFontDescription * desc);
	/+
	void pango_font_descriptions_free (PangoFontDescription * *descs, int n_descs);

	void pango_font_description_set_family (PangoFontDescription * desc, const char * family);
	void pango_font_description_set_family_static (PangoFontDescription * desc, const char * family);
	G_CONST_RETURN char * pango_font_description_get_family (const PangoFontDescription * desc);
	void pango_font_description_set_style (PangoFontDescription * desc, PangoStyle style);
	PangoStyle pango_font_description_get_style (const PangoFontDescription * desc);
	void pango_font_description_set_variant (PangoFontDescription * desc, PangoVariant variant);
	PangoVariant pango_font_description_get_variant (const PangoFontDescription * desc);
	void pango_font_description_set_weight (PangoFontDescription * desc, PangoWeight weight);
	PangoWeight pango_font_description_get_weight (const PangoFontDescription * desc);
	void pango_font_description_set_stretch (PangoFontDescription * desc, PangoStretch stretch);
	PangoStretch pango_font_description_get_stretch (const PangoFontDescription * desc);
	void pango_font_description_set_size (PangoFontDescription * desc, gint size);
	gint pango_font_description_get_size (const PangoFontDescription * desc);

	PangoFontMask pango_font_description_get_set_fields (const PangoFontDescription * desc);
	void pango_font_description_unset_fields (PangoFontDescription * desc, PangoFontMask to_unset);

	void pango_font_description_merge (PangoFontDescription * desc, const PangoFontDescription * desc_to_merge, gboolean replace_existing);
	void pango_font_description_merge_static (PangoFontDescription * desc, const PangoFontDescription * desc_to_merge, gboolean replace_existing);

	gboolean pango_font_description_better_match (const PangoFontDescription * desc, const PangoFontDescription * old_match, const PangoFontDescription * new_match);
	+/
	PangoFontDescription * pango_font_description_from_string(char * str);
	/+
	char * pango_font_description_to_string (const PangoFontDescription * desc);
	char * pango_font_description_to_filename (const PangoFontDescription * desc);
	+/
};


/**
 * Font manipulation
 * \todo check if we need to free the PangoFontDescription on the dtor
 */
public:
class Font 
{
	
	private import dool.String;
	
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
	/+
	/** \todo */
	PangoFontDescription * pango_font_description_copy(const PangoFontDescription * desc);
	/** \todo */
	PangoFontDescription * pango_font_description_copy_static(const PangoFontDescription * desc);
	/** \todo */
	guint pango_font_description_hash(const PangoFontDescription * desc);
	/** \todo */
	gboolean pango_font_description_equal(const PangoFontDescription * desc1, const PangoFontDescription * desc2);
	+/
	
	/**
	 * frees this description
	 */
	void free()
	{
		pango_font_description_free(gdkP());
	}
	
	/+
	/** \todo */
	void pango_font_descriptions_free(PangoFontDescription * *descs, int n_descs);

	/** \todo */
	void pango_font_description_set_family (PangoFontDescription * desc, const char * family);
	/** \todo */
	void pango_font_description_set_family_static (PangoFontDescription * desc, const char * family);
	/** \todo */
	G_CONST_RETURN char * pango_font_description_get_family (const PangoFontDescription * desc);
	/** \todo */
	void pango_font_description_set_style (PangoFontDescription * desc, PangoStyle style);
	/** \todo */
	PangoStyle pango_font_description_get_style (const PangoFontDescription * desc);
	/** \todo */
	void pango_font_description_set_variant (PangoFontDescription * desc, PangoVariant variant);
	/** \todo */
	PangoVariant pango_font_description_get_variant (const PangoFontDescription * desc);
	/** \todo */
	void pango_font_description_set_weight (PangoFontDescription * desc, PangoWeight weight);
	/** \todo */
	PangoWeight pango_font_description_get_weight (const PangoFontDescription * desc);
	/** \todo */
	void pango_font_description_set_stretch (PangoFontDescription * desc, PangoStretch stretch);
	/** \todo */
	PangoStretch pango_font_description_get_stretch (const PangoFontDescription * desc);
	/** \todo */
	void pango_font_description_set_size (PangoFontDescription * desc, gint size);
	/** \todo */
	gint pango_font_description_get_size (const PangoFontDescription * desc);

	/** \todo */
	PangoFontMask pango_font_description_get_set_fields (const PangoFontDescription * desc);
	/** \todo */
	void pango_font_description_unset_fields (PangoFontDescription * desc, PangoFontMask to_unset);

	/** \todo */
	void pango_font_description_merge (PangoFontDescription * desc, const PangoFontDescription * desc_to_merge, gboolean replace_existing);
	/** \todo */
	void pango_font_description_merge_static (PangoFontDescription * desc, const PangoFontDescription * desc_to_merge, gboolean replace_existing);

	/** \todo */
	gboolean pango_font_description_better_match (const PangoFontDescription * desc, const PangoFontDescription * old_match, const PangoFontDescription * new_match);
	/** \todo */
	char * pango_font_description_to_string (const PangoFontDescription * desc);
	/** \todo */
	char * pango_font_description_to_filename (const PangoFontDescription * desc);
	+/
}
