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
 * inFile  = GtkSourceLanguagesManager.html
 * outPack = gsv
 * outFile = SourceLanguagesManager
 * strct   = GtkSourceLanguagesManager
 * realStrct=
 * ctorStrct=
 * clss    = SourceLanguagesManager
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_languages_manager_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gsv.SourceLanguagesManager;

private import gsvc.gsvtypes;

private import gsvc.gsv;




/**
 * Description
 */
private import gobject.ObjectG;
public class SourceLanguagesManager : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceLanguagesManager* gtkSourceLanguagesManager;
	
	
	public GtkSourceLanguagesManager* getSourceLanguagesManagerStruct()
	{
		return gtkSourceLanguagesManager;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceLanguagesManager;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceLanguagesManager* gtkSourceLanguagesManager)
	{
		super(cast(GObject*)gtkSourceLanguagesManager);
		this.gtkSourceLanguagesManager = gtkSourceLanguagesManager;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new language manager.
	 * Returns:
	 *  a GtkSourceLanguagesManager.
	 */
	public this ()
	{
		// GtkSourceLanguagesManager* gtk_source_languages_manager_new  (void);
		this(cast(GtkSourceLanguagesManager*)gtk_source_languages_manager_new() );
	}
	
	/**
	 * Gets a list of available languages for the given language manager.
	 * This function returns a pointer to a internal list, so there is no need to
	 * free it after usage.
	 * lm:
	 *  a GtkSourceLanguagesManager.
	 * Returns:
	 *  a list of GtkSourceLanguage.
	 */
	public GSList* getAvailableLanguages()
	{
		// const GSList* gtk_source_languages_manager_get_available_languages  (GtkSourceLanguagesManager *lm);
		return gtk_source_languages_manager_get_available_languages(gtkSourceLanguagesManager);
	}
	
	/**
	 * Gets the GtkSourceLanguage which is associated with the given mime_type
	 * in the language manager.
	 * lm:
	 *  a GtkSourceLanguagesManager.
	 * mime_type:
	 *  a mime type.
	 * Returns:
	 *  a GtkSourceLanguage, or NULL if there is no language
	 * associated with the given mime_type.
	 */
	public GtkSourceLanguage* getLanguageFromMimeType(char[] mimeType)
	{
		// GtkSourceLanguage* gtk_source_languages_manager_get_language_from_mime_type  (GtkSourceLanguagesManager *lm,  const gchar *mime_type);
		return gtk_source_languages_manager_get_language_from_mime_type(gtkSourceLanguagesManager, Str.toStringz(mimeType));
	}
	
	/**
	 * Gets a list of language files directories for the given language manager.
	 * lm:
	 *  a GtkSourceLanguagesManager.
	 * Returns:
	 *  a list of language files directories (as strings).
	 * Property Details
	 * The "lang-files-dirs" property
	 *  "lang-files-dirs" gpointer : Read / Write / Construct Only
	 * List of directories where the language specification files (.lang) are located.
	 */
	public GSList* getLangFilesDirs()
	{
		// const GSList* gtk_source_languages_manager_get_lang_files_dirs  (GtkSourceLanguagesManager *lm);
		return gtk_source_languages_manager_get_lang_files_dirs(gtkSourceLanguagesManager);
	}
}
