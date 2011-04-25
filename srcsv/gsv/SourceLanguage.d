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
 * inFile  = GtkSourceLanguage.html
 * outPack = gsv
 * outFile = SourceLanguage
 * strct   = GtkSourceLanguage
 * realStrct=
 * ctorStrct=
 * clss    = SourceLanguage
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_iter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceLanguage;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;


private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 * GtkSourceLanguage encapsulates syntax and highlighting styles for a
 * particular language. Use GtkSourceLanguageManager to obtain a
 * GtkSourceLanguage instance, and gtk_source_buffer_set_language() to apply it
 * to a GtkSourceBuffer.
 */
public class SourceLanguage : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceLanguage* gtkSourceLanguage;
	
	
	public GtkSourceLanguage* getSourceLanguageStruct()
	{
		return gtkSourceLanguage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceLanguage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceLanguage* gtkSourceLanguage)
	{
		if(gtkSourceLanguage is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkSourceLanguage);
		if( ptr !is null )
		{
			this = cast(SourceLanguage)ptr;
			return;
		}
		super(cast(GObject*)gtkSourceLanguage);
		this.gtkSourceLanguage = gtkSourceLanguage;
	}
	
	protected void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceLanguage = cast(GtkSourceLanguage*)obj;
	}
	
	/**
	 */
	
	/**
	 * Returns the ID of the language. The ID is not locale-dependent.
	 * Returns: the ID of language.The returned string is owned by language and should not be freedor modified.
	 */
	public string gtkSourceLanguageGetId()
	{
		// const gchar * gtk_source_language_get_id (GtkSourceLanguage *language);
		return Str.toString(gtk_source_language_get_id(gtkSourceLanguage));
	}
	
	/**
	 * Returns the localized name of the language.
	 * Returns: the name of language.The returned string is owned by language and should not be freedor modified.
	 */
	public string gtkSourceLanguageGetName()
	{
		// const gchar * gtk_source_language_get_name (GtkSourceLanguage *language);
		return Str.toString(gtk_source_language_get_name(gtkSourceLanguage));
	}
	
	/**
	 * Returns the localized section of the language.
	 * Each language belong to a section (ex. HTML belogs to the
	 * Markup section).
	 * Returns: the section of language.The returned string is owned by language and should not be freedor modified.
	 */
	public string gtkSourceLanguageGetSection()
	{
		// const gchar * gtk_source_language_get_section (GtkSourceLanguage *language);
		return Str.toString(gtk_source_language_get_section(gtkSourceLanguage));
	}
	
	/**
	 * Returns whether the language should be hidden from the user.
	 * Returns: TRUE if the language should be hidden, FALSE otherwise.
	 */
	public int gtkSourceLanguageGetHidden()
	{
		// gboolean gtk_source_language_get_hidden (GtkSourceLanguage *language);
		return gtk_source_language_get_hidden(gtkSourceLanguage);
	}
	
	/**
	 * Params:
	 * name = metadata property name.
	 * Returns: value of property name stored in the metadata of languageor NULL if language doesn't contain that metadata property.The returned string is owned by language and should not be freedor modified.
	 */
	public string gtkSourceLanguageGetMetadata(string name)
	{
		// const gchar * gtk_source_language_get_metadata (GtkSourceLanguage *language,  const gchar *name);
		return Str.toString(gtk_source_language_get_metadata(gtkSourceLanguage, Str.toStringz(name)));
	}
	
	/**
	 * Returns the mime types associated to this language. This is just
	 * an utility wrapper around gtk_source_language_get_metadata() to
	 * retrieve the "mimetypes" metadata property and split it into an
	 * array.
	 * Returns: a newly-allocated NULL terminated array containingthe mime types or NULL if no mime types are found.The returned array must be freed with g_strfreev().
	 */
	public string[] gtkSourceLanguageGetMimeTypes()
	{
		// gchar ** gtk_source_language_get_mime_types (GtkSourceLanguage *language);
		return Str.toStringArray(gtk_source_language_get_mime_types(gtkSourceLanguage));
	}
	
	/**
	 * Returns the globs associated to this language. This is just
	 * an utility wrapper around gtk_source_language_get_metadata() to
	 * retrieve the "globs" metadata property and split it into an array.
	 * Returns: a newly-allocated NULL terminated array containingthe globs or NULL if no globs are found.The returned array must be freed with g_strfreev().
	 */
	public string[] gtkSourceLanguageGetGlobs()
	{
		// gchar ** gtk_source_language_get_globs (GtkSourceLanguage *language);
		return Str.toStringArray(gtk_source_language_get_globs(gtkSourceLanguage));
	}
	
	/**
	 * Returns the name of the style with ID style_id defined by this language.
	 * Params:
	 * styleId = a style ID
	 * Returns: the name of the style with ID style_id defined by this language orNULL if the style has no name or there is no style with ID style_id definedby this language. The returned string is owned by the language and mustnot be modified.
	 */
	public string gtkSourceLanguageGetStyleName(string styleId)
	{
		// const gchar * gtk_source_language_get_style_name (GtkSourceLanguage *language,  const gchar *style_id);
		return Str.toString(gtk_source_language_get_style_name(gtkSourceLanguage, Str.toStringz(styleId)));
	}
	
	/**
	 * Returns the ids of the styles defined by this language.
	 * Returns: a NULL terminated array containingids of the styles defined by this language or NULL if no style isdefined. The returned array must be freed with g_strfreev().
	 */
	public string[] gtkSourceLanguageGetStyleIds()
	{
		// gchar ** gtk_source_language_get_style_ids (GtkSourceLanguage *language);
		return Str.toStringArray(gtk_source_language_get_style_ids(gtkSourceLanguage));
	}
}
