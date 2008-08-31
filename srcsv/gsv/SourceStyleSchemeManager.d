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
 * inFile  = GtkSourceStyleSchemeManager.html
 * outPack = gsv
 * outFile = SourceStyleSchemeManager
 * strct   = GtkSourceStyleSchemeManager
 * realStrct=
 * ctorStrct=
 * clss    = SourceStyleSchemeManager
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_style_scheme_manager_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gsv.SourceStyleScheme
 * 	- glib.Str
 * structWrap:
 * 	- GtkSourceStyleScheme* -> SourceStyleScheme
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceStyleSchemeManager;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;


private import gsv.SourceStyleScheme;
private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 */
public class SourceStyleSchemeManager : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceStyleSchemeManager* gtkSourceStyleSchemeManager;
	
	
	public GtkSourceStyleSchemeManager* getSourceStyleSchemeManagerStruct()
	{
		return gtkSourceStyleSchemeManager;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceStyleSchemeManager;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceStyleSchemeManager* gtkSourceStyleSchemeManager)
	{
		if(gtkSourceStyleSchemeManager is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkSourceStyleSchemeManager);
		if( ptr !is null )
		{
			this = cast(SourceStyleSchemeManager)ptr;
			return;
		}
		super(cast(GObject*)gtkSourceStyleSchemeManager);
		this.gtkSourceStyleSchemeManager = gtkSourceStyleSchemeManager;
	}
	
	/**
	 */
	
	/**
	 * Creates a new style manager. If you do not need more than one style
	 * manager then use gtk_source_style_scheme_manager_get_default() instead.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkSourceStyleSchemeManager* gtk_source_style_scheme_manager_new  (void);
		auto p = gtk_source_style_scheme_manager_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_style_scheme_manager_new()");
		}
		this(cast(GtkSourceStyleSchemeManager*) p);
	}
	
	/**
	 * Returns the default GtkSourceStyleSchemeManager instance.
	 * Returns: a GtkSourceStyleSchemeManager. Return value is ownedby GtkSourceView library and must not be unref'ed.
	 */
	public static GtkSourceStyleSchemeManager* getDefault()
	{
		// GtkSourceStyleSchemeManager* gtk_source_style_scheme_manager_get_default  (void);
		return gtk_source_style_scheme_manager_get_default();
	}
	
	/**
	 * Sets the list of directories where the manager looks for
	 * style scheme files.
	 * If dirs is NULL, the search path is reset to default.
	 * Params:
	 * path =  a NULL-terminated array of strings or NULL.
	 */
	public void setSearchPath(char** path)
	{
		// void gtk_source_style_scheme_manager_set_search_path  (GtkSourceStyleSchemeManager *manager,  gchar **path);
		gtk_source_style_scheme_manager_set_search_path(gtkSourceStyleSchemeManager, path);
	}
	
	/**
	 * Appends path to the list of directories where the manager looks for
	 * style scheme files.
	 * See gtk_source_style_scheme_manager_set_search_path() for details.
	 * Params:
	 * path =  a directory or a filename.
	 */
	public void appendSearchPath(string path)
	{
		// void gtk_source_style_scheme_manager_append_search_path  (GtkSourceStyleSchemeManager *manager,  const gchar *path);
		gtk_source_style_scheme_manager_append_search_path(gtkSourceStyleSchemeManager, Str.toStringz(path));
	}
	
	/**
	 * Prepends path to the list of directories where the manager looks
	 * for style scheme files.
	 * See gtk_source_style_scheme_manager_set_search_path() for details.
	 * Params:
	 * path =  a directory or a filename.
	 */
	public void prependSearchPath(string path)
	{
		// void gtk_source_style_scheme_manager_prepend_search_path  (GtkSourceStyleSchemeManager *manager,  const gchar *path);
		gtk_source_style_scheme_manager_prepend_search_path(gtkSourceStyleSchemeManager, Str.toStringz(path));
	}
	
	/**
	 * Returns the current search path for the manager.
	 * See gtk_source_style_scheme_manager_set_search_path() for details.
	 * Returns: a NULL-terminated array of string containing the search path.The array is owned by the manager and must not be modified.
	 */
	public string[] getSearchPath()
	{
		// const gchar* const * gtk_source_style_scheme_manager_get_search_path  (GtkSourceStyleSchemeManager *manager);
		return Str.toStringArray(gtk_source_style_scheme_manager_get_search_path(gtkSourceStyleSchemeManager));
	}
	
	/**
	 * Returns the ids of the available style schemes.
	 * Returns: a NULL-terminated array of string containing the ids of theavailable style schemes or NULL if no style scheme is available. The arrayis owned by the manager and must not be modified.
	 */
	public string[] getSchemeIds()
	{
		// const gchar* const * gtk_source_style_scheme_manager_get_scheme_ids  (GtkSourceStyleSchemeManager *manager);
		return Str.toStringArray(gtk_source_style_scheme_manager_get_scheme_ids(gtkSourceStyleSchemeManager));
	}
	
	/**
	 * Looks up style scheme by id.
	 * Params:
	 * schemeId =  style scheme id to find
	 * Returns: a GtkSourceStyleScheme object. Returned value is owned bymanager and must not be unref'ed.
	 */
	public SourceStyleScheme getScheme(string schemeId)
	{
		// GtkSourceStyleScheme* gtk_source_style_scheme_manager_get_scheme  (GtkSourceStyleSchemeManager *manager,  const gchar *scheme_id);
		auto p = gtk_source_style_scheme_manager_get_scheme(gtkSourceStyleSchemeManager, Str.toStringz(schemeId));
		if(p is null)
		{
			return null;
		}
		return new SourceStyleScheme(cast(GtkSourceStyleScheme*) p);
	}
	
	/**
	 * Mark any currently cached information about the available style scehems
	 * as invalid. All the available style schemes will be reloaded next time
	 * the manager is accessed.
	 */
	public void forceRescan()
	{
		// void gtk_source_style_scheme_manager_force_rescan  (GtkSourceStyleSchemeManager *manager);
		gtk_source_style_scheme_manager_force_rescan(gtkSourceStyleSchemeManager);
	}
}
