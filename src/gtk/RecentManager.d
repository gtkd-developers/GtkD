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
 * inFile  = GtkRecentManager.html
 * outPack = gtk
 * outFile = RecentManager
 * strct   = GtkRecentManager
 * realStrct=
 * ctorStrct=
 * clss    = RecentManager
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_recent_manager_
 * omit structs:
 * omit prefixes:
 * 	- gtk_recent_info_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- gtk.RecentInfo
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkRecentInfo* -> RecentInfo
 * 	- GtkRecentManager* -> RecentManager
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.RecentManager;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gtk.RecentInfo;



private import gobject.ObjectG;

/**
 * GtkRecentManager provides a facility for adding, removing and
 * looking up recently used files. Each recently used file is
 * identified by its URI, and has meta-data associated to it, like
 * the names and command lines of the applications that have
 * registered it, the number of time each application has registered
 * the same file, the mime type of the file and whether the file
 * should be displayed only by the applications that have
 * registered it.
 *
 * Note
 *
 * The recently used files list is per user.
 *
 * The GtkRecentManager acts like a database of all the recently
 * used files. You can create new GtkRecentManager objects, but
 * it is more efficient to use the default manager created by GTK+.
 *
 * Adding a new recently used file is as simple as:
 *
 * $(DDOC_COMMENT example)
 *
 * The GtkRecentManager will try to gather all the needed information
 * from the file itself through GIO.
 *
 * Looking up the meta-data associated with a recently used file
 * given its URI requires calling gtk_recent_manager_lookup_item():
 *
 * $(DDOC_COMMENT example)
 *
 * In order to retrieve the list of recently used files, you can use
 * gtk_recent_manager_get_items(), which returns a list of GtkRecentInfo
 * structures.
 *
 * A GtkRecentManager is the model used to populate the contents of
 * one, or more GtkRecentChooser implementations.
 *
 * Note
 *
 * The maximum age of the recently used files list is
 * controllable through the "gtk-recent-files-max-age"
 * property.
 *
 * Recently used files are supported since GTK+ 2.10.
 */
public class RecentManager : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkRecentManager* gtkRecentManager;
	
	
	public GtkRecentManager* getRecentManagerStruct()
	{
		return gtkRecentManager;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRecentManager;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRecentManager* gtkRecentManager)
	{
		super(cast(GObject*)gtkRecentManager);
		this.gtkRecentManager = gtkRecentManager;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkRecentManager = cast(GtkRecentManager*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(RecentManager)[] onChangedListeners;
	/**
	 * Emitted when the current recently used resources manager changes its
	 * contents, either by calling gtk_recent_manager_add_item() or by another
	 * application.
	 * Since 2.10
	 * See Also
	 * GBookmarkFile, GtkSettings, GtkRecentChooser
	 */
	void addOnChanged(void delegate(RecentManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkRecentManager* recentManagerStruct, RecentManager _recentManager)
	{
		foreach ( void delegate(RecentManager) dlg ; _recentManager.onChangedListeners )
		{
			dlg(_recentManager);
		}
	}
	
	
	/**
	 * Creates a new recent manager object. Recent manager objects are used to
	 * handle the list of recently used resources. A GtkRecentManager object
	 * monitors the recently used resources list, and emits the "changed" signal
	 * each time something inside the list changes.
	 * GtkRecentManager objects are expensive: be sure to create them only when
	 * needed. You should use gtk_recent_manager_get_default() instead.
	 * Since 2.10
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkRecentManager * gtk_recent_manager_new (void);
		auto p = gtk_recent_manager_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_recent_manager_new()");
		}
		this(cast(GtkRecentManager*) p);
	}
	
	/**
	 * Gets a unique instance of GtkRecentManager, that you can share
	 * in your application without caring about memory management.
	 * Since 2.10
	 * Returns: A unique GtkRecentManager. Do not ref or unref it. [transfer none]
	 */
	public static RecentManager getDefault()
	{
		// GtkRecentManager * gtk_recent_manager_get_default (void);
		auto p = gtk_recent_manager_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(RecentManager)(cast(GtkRecentManager*) p);
	}
	
	/**
	 * Adds a new resource, pointed by uri, into the recently used
	 * resources list.
	 * This function automatically retrieves some of the needed
	 * metadata and setting other metadata to common default values; it
	 * then feeds the data to gtk_recent_manager_add_full().
	 * See gtk_recent_manager_add_full() if you want to explicitly
	 * define the metadata for the resource pointed by uri.
	 * Since 2.10
	 * Params:
	 * uri = a valid URI
	 * Returns: TRUE if the new item was successfully added to the recently used resources list
	 */
	public int addItem(string uri)
	{
		// gboolean gtk_recent_manager_add_item (GtkRecentManager *manager,  const gchar *uri);
		return gtk_recent_manager_add_item(gtkRecentManager, Str.toStringz(uri));
	}
	
	/**
	 * Adds a new resource, pointed by uri, into the recently used
	 * resources list, using the metadata specified inside the GtkRecentData
	 * structure passed in recent_data.
	 * The passed URI will be used to identify this resource inside the
	 * list.
	 * In order to register the new recently used resource, metadata about
	 * the resource must be passed as well as the URI; the metadata is
	 * stored in a GtkRecentData structure, which must contain the MIME
	 * type of the resource pointed by the URI; the name of the application
	 * that is registering the item, and a command line to be used when
	 * launching the item.
	 * Optionally, a GtkRecentData structure might contain a UTF-8 string
	 * to be used when viewing the item instead of the last component of the
	 * URI; a short description of the item; whether the item should be
	 * considered private - that is, should be displayed only by the
	 * applications that have registered it.
	 * Since 2.10
	 * Params:
	 * uri = a valid URI
	 * recentData = metadata of the resource
	 * Returns: TRUE if the new item was successfully added to the recently used resources list, FALSE otherwise.
	 */
	public int addFull(string uri, GtkRecentData* recentData)
	{
		// gboolean gtk_recent_manager_add_full (GtkRecentManager *manager,  const gchar *uri,  const GtkRecentData *recent_data);
		return gtk_recent_manager_add_full(gtkRecentManager, Str.toStringz(uri), recentData);
	}
	
	/**
	 * Removes a resource pointed by uri from the recently used resources
	 * list handled by a recent manager.
	 * Since 2.10
	 * Params:
	 * uri = the URI of the item you wish to remove
	 * Returns: TRUE if the item pointed by uri has been successfully removed by the recently used resources list, and FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int removeItem(string uri)
	{
		// gboolean gtk_recent_manager_remove_item (GtkRecentManager *manager,  const gchar *uri,  GError **error);
		GError* err = null;
		
		auto p = gtk_recent_manager_remove_item(gtkRecentManager, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Searches for a URI inside the recently used resources list, and
	 * returns a structure containing informations about the resource
	 * like its MIME type, or its display name.
	 * Since 2.10
	 * Params:
	 * uri = a URI
	 * Returns: a GtkRecentInfo structure containing information about the resource pointed by uri, or NULL if the URI was not registered in the recently used resources list. Free with gtk_recent_info_unref().
	 * Throws: GException on failure.
	 */
	public RecentInfo lookupItem(string uri)
	{
		// GtkRecentInfo * gtk_recent_manager_lookup_item (GtkRecentManager *manager,  const gchar *uri,  GError **error);
		GError* err = null;
		
		auto p = gtk_recent_manager_lookup_item(gtkRecentManager, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(RecentInfo)(cast(GtkRecentInfo*) p);
	}
	
	/**
	 * Checks whether there is a recently used resource registered
	 * with uri inside the recent manager.
	 * Since 2.10
	 * Params:
	 * uri = a URI
	 * Returns: TRUE if the resource was found, FALSE otherwise.
	 */
	public int hasItem(string uri)
	{
		// gboolean gtk_recent_manager_has_item (GtkRecentManager *manager,  const gchar *uri);
		return gtk_recent_manager_has_item(gtkRecentManager, Str.toStringz(uri));
	}
	
	/**
	 * Changes the location of a recently used resource from uri to new_uri.
	 * Please note that this function will not affect the resource pointed
	 * by the URIs, but only the URI used in the recently used resources list.
	 * Since 2.10
	 * Params:
	 * uri = the URI of a recently used resource
	 * newUri = the new URI of the recently used resource, or NULL to
	 * remove the item pointed by uri in the list. [allow-none]
	 * Returns: TRUE on success.
	 * Throws: GException on failure.
	 */
	public int moveItem(string uri, string newUri)
	{
		// gboolean gtk_recent_manager_move_item (GtkRecentManager *manager,  const gchar *uri,  const gchar *new_uri,  GError **error);
		GError* err = null;
		
		auto p = gtk_recent_manager_move_item(gtkRecentManager, Str.toStringz(uri), Str.toStringz(newUri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the list of recently used resources.
	 * Since 2.10
	 * Returns: a list of newly allocated GtkRecentInfo objects. Use gtk_recent_info_unref() on each item inside the list, and then free the list itself using g_list_free(). [element-type GtkRecentInfo][transfer full]
	 */
	public ListG getItems()
	{
		// GList * gtk_recent_manager_get_items (GtkRecentManager *manager);
		auto p = gtk_recent_manager_get_items(gtkRecentManager);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Purges every item from the recently used resources list.
	 * Since 2.10
	 * Returns: the number of items that have been removed from the recently used resources list.
	 * Throws: GException on failure.
	 */
	public int purgeItems()
	{
		// gint gtk_recent_manager_purge_items (GtkRecentManager *manager,  GError **error);
		GError* err = null;
		
		auto p = gtk_recent_manager_purge_items(gtkRecentManager, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
