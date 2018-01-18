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


module gsv.SourceStyleSchemeManager;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gsv.SourceStyleScheme;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;


/** */
public class SourceStyleSchemeManager : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceStyleSchemeManager* gtkSourceStyleSchemeManager;

	/** Get the main Gtk struct */
	public GtkSourceStyleSchemeManager* getSourceStyleSchemeManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceStyleSchemeManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceStyleSchemeManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceStyleSchemeManager* gtkSourceStyleSchemeManager, bool ownedRef = false)
	{
		this.gtkSourceStyleSchemeManager = gtkSourceStyleSchemeManager;
		super(cast(GObject*)gtkSourceStyleSchemeManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_style_scheme_manager_get_type();
	}

	/**
	 * Creates a new style manager. If you do not need more than one style
	 * manager then use gtk_source_style_scheme_manager_get_default() instead.
	 *
	 * Returns: a new #GtkSourceStyleSchemeManager.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_style_scheme_manager_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceStyleSchemeManager*) p, true);
	}

	/**
	 * Returns the default #GtkSourceStyleSchemeManager instance.
	 *
	 * Returns: a #GtkSourceStyleSchemeManager. Return value
	 *     is owned by GtkSourceView library and must not be unref'ed.
	 */
	public static SourceStyleSchemeManager getDefault()
	{
		auto p = gtk_source_style_scheme_manager_get_default();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceStyleSchemeManager)(cast(GtkSourceStyleSchemeManager*) p);
	}

	/**
	 * Appends @path to the list of directories where the @manager looks for
	 * style scheme files.
	 * See gtk_source_style_scheme_manager_set_search_path() for details.
	 *
	 * Params:
	 *     path = a directory or a filename.
	 */
	public void appendSearchPath(string path)
	{
		gtk_source_style_scheme_manager_append_search_path(gtkSourceStyleSchemeManager, Str.toStringz(path));
	}

	/**
	 * Mark any currently cached information about the available style scehems
	 * as invalid. All the available style schemes will be reloaded next time
	 * the @manager is accessed.
	 */
	public void forceRescan()
	{
		gtk_source_style_scheme_manager_force_rescan(gtkSourceStyleSchemeManager);
	}

	/**
	 * Looks up style scheme by id.
	 *
	 * Params:
	 *     schemeId = style scheme id to find.
	 *
	 * Returns: a #GtkSourceStyleScheme object. Returned value is owned by
	 *     @manager and must not be unref'ed.
	 */
	public SourceStyleScheme getScheme(string schemeId)
	{
		auto p = gtk_source_style_scheme_manager_get_scheme(gtkSourceStyleSchemeManager, Str.toStringz(schemeId));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceStyleScheme)(cast(GtkSourceStyleScheme*) p);
	}

	/**
	 * Returns the ids of the available style schemes.
	 *
	 * Returns: a %NULL-terminated array of strings containing the ids of the available
	 *     style schemes or %NULL if no style scheme is available.
	 *     The array is sorted alphabetically according to the scheme name.
	 *     The array is owned by the @manager and must not be modified.
	 */
	public string[] getSchemeIds()
	{
		return Str.toStringArray(gtk_source_style_scheme_manager_get_scheme_ids(gtkSourceStyleSchemeManager));
	}

	/**
	 * Returns the current search path for the @manager.
	 * See gtk_source_style_scheme_manager_set_search_path() for details.
	 *
	 * Returns: a %NULL-terminated array
	 *     of string containing the search path.
	 *     The array is owned by the @manager and must not be modified.
	 */
	public string[] getSearchPath()
	{
		return Str.toStringArray(gtk_source_style_scheme_manager_get_search_path(gtkSourceStyleSchemeManager));
	}

	/**
	 * Prepends @path to the list of directories where the @manager looks
	 * for style scheme files.
	 * See gtk_source_style_scheme_manager_set_search_path() for details.
	 *
	 * Params:
	 *     path = a directory or a filename.
	 */
	public void prependSearchPath(string path)
	{
		gtk_source_style_scheme_manager_prepend_search_path(gtkSourceStyleSchemeManager, Str.toStringz(path));
	}

	/**
	 * Sets the list of directories where the @manager looks for
	 * style scheme files.
	 * If @path is %NULL, the search path is reset to default.
	 *
	 * Params:
	 *     path = a %NULL-terminated array of strings or %NULL.
	 */
	public void setSearchPath(string[] path)
	{
		gtk_source_style_scheme_manager_set_search_path(gtkSourceStyleSchemeManager, Str.toStringzArray(path));
	}
}
