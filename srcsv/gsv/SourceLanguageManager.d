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
 * inFile  = GtkSourceLanguageManager.html
 * outPack = gsv
 * outFile = SourceLanguageManager
 * strct   = GtkSourceLanguageManager
 * realStrct=
 * ctorStrct=
 * clss    = SourceLanguageManager
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_language_manager_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gsv.SourceLanguage
 * structWrap:
 * 	- GtkSourceLanguage* -> SourceLanguage
 * 	- GtkSourceLanguageManager* -> SourceLanguageManager
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceLanguageManager;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gsv.SourceLanguage;



private import gobject.ObjectG;

/**
 * GtkSourceLanguageManager is an object which processes language description
 * files and creates and stores GtkSourceLanguage objects, and provides API to
 * access them.
 * Use gtk_source_language_manager_get_default() to retrieve the default
 * instance of GtkSourceLanguageManager, and
 * gtk_source_language_manager_guess_language() to get a GtkSourceLanguage for
 * given file name and content type.
 */
public class SourceLanguageManager : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceLanguageManager* gtkSourceLanguageManager;
	
	
	public GtkSourceLanguageManager* getSourceLanguageManagerStruct()
	{
		return gtkSourceLanguageManager;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceLanguageManager;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceLanguageManager* gtkSourceLanguageManager)
	{
		super(cast(GObject*)gtkSourceLanguageManager);
		this.gtkSourceLanguageManager = gtkSourceLanguageManager;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceLanguageManager = cast(GtkSourceLanguageManager*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new language manager. If you do not need more than one language
	 * manager or a private language manager instance then use
	 * gtk_source_language_manager_get_default() instead.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkSourceLanguageManager * gtk_source_language_manager_new  (void);
		auto p = gtk_source_language_manager_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_language_manager_new()");
		}
		this(cast(GtkSourceLanguageManager*) p);
	}
	
	/**
	 * Returns the default GtkSourceLanguageManager instance.
	 * Returns: a GtkSourceLanguageManager. Return value is owned by GtkSourceView library and must not be unref'ed. [transfer none]
	 */
	public static SourceLanguageManager getDefault()
	{
		// GtkSourceLanguageManager * gtk_source_language_manager_get_default  (void);
		auto p = gtk_source_language_manager_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceLanguageManager)(cast(GtkSourceLanguageManager*) p);
	}
	
	/**
	 * Sets the list of directories where the lm looks for
	 * language files.
	 * If dirs is NULL, the search path is reset to default.
	 * Note
	 *  At the moment this function can be called only before the
	 *  language files are loaded for the first time. In practice
	 *  to set a custom search path for a GtkSourceLanguageManager,
	 *  you have to call this function right after creating it.
	 * Params:
	 * dirs = a NULL-terminated array of strings or NULL. [allow-none][array zero-terminated=1]
	 */
	public void setSearchPath(string[] dirs)
	{
		// void gtk_source_language_manager_set_search_path  (GtkSourceLanguageManager *lm,  gchar **dirs);
		gtk_source_language_manager_set_search_path(gtkSourceLanguageManager, Str.toStringzArray(dirs));
	}
	
	/**
	 * Gets the list directories where lm looks for language files.
	 * Returns: NULL-terminated array containg a list of language files directories. The array is owned by lm and must not be modified. [array zero-terminated=1][transfer none]
	 */
	public string[] getSearchPath()
	{
		// const gchar * const * gtk_source_language_manager_get_search_path  (GtkSourceLanguageManager *lm);
		return Str.toStringArray(gtk_source_language_manager_get_search_path(gtkSourceLanguageManager));
	}
	
	/**
	 * Returns the ids of the available languages.
	 * Returns: a NULL-terminated array of string containing the ids of the available languages or NULL if no language is available. The array is sorted alphabetically according to the language name. The array is owned by lm and must not be modified. [transfer none]
	 */
	public string[] getLanguageIds()
	{
		// const gchar * const * gtk_source_language_manager_get_language_ids  (GtkSourceLanguageManager *lm);
		return Str.toStringArray(gtk_source_language_manager_get_language_ids(gtkSourceLanguageManager));
	}
	
	/**
	 * Gets the GtkSourceLanguage identified by the given id in the language
	 * manager.
	 * Params:
	 * id = a language id.
	 * Returns: a GtkSourceLanguage, or NULL if there is no language identified by the given id. Return value is owned by lm and should not be freed. [transfer none]
	 */
	public SourceLanguage getLanguage(string id)
	{
		// GtkSourceLanguage * gtk_source_language_manager_get_language  (GtkSourceLanguageManager *lm,  const gchar *id);
		auto p = gtk_source_language_manager_get_language(gtkSourceLanguageManager, Str.toStringz(id));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceLanguage)(cast(GtkSourceLanguage*) p);
	}
	
	/**
	 * Picks a GtkSourceLanguage for given file name and content type,
	 * according to the information in lang files. Either filename or
	 * Since 2.4
	 * Params:
	 * filename = a filename in Glib filename encoding, or NULL. [allow-none]
	 * contentType = a content type (as in GIO API), or NULL. [allow-none]
	 * Returns: a GtkSourceLanguage, or NULL if there is no suitable language for given filename and/or content_type. Return value is owned by lm and should not be freed. [transfer none]
	 */
	public SourceLanguage guessLanguage(string filename, string contentType)
	{
		// GtkSourceLanguage * gtk_source_language_manager_guess_language  (GtkSourceLanguageManager *lm,  const gchar *filename,  const gchar *content_type);
		auto p = gtk_source_language_manager_guess_language(gtkSourceLanguageManager, Str.toStringz(filename), Str.toStringz(contentType));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceLanguage)(cast(GtkSourceLanguage*) p);
	}
}
