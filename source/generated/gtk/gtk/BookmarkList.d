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


module gtk.BookmarkList;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkBookmarkList` is a list model that wraps `GBookmarkFile`.
 * 
 * It presents a `GListModel` and fills it asynchronously with the
 * `GFileInfo`s returned from that function.
 * 
 * The `GFileInfo`s in the list have some attributes in the recent
 * namespace added: `recent::private` (boolean) and `recent:applications`
 * (stringv).
 */
public class BookmarkList : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkBookmarkList* gtkBookmarkList;

	/** Get the main Gtk struct */
	public GtkBookmarkList* getBookmarkListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBookmarkList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkBookmarkList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBookmarkList* gtkBookmarkList, bool ownedRef = false)
	{
		this.gtkBookmarkList = gtkBookmarkList;
		super(cast(GObject*)gtkBookmarkList, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkBookmarkList);


	/** */
	public static GType getType()
	{
		return gtk_bookmark_list_get_type();
	}

	/**
	 * Creates a new `GtkBookmarkList` with the given @attributes.
	 *
	 * Params:
	 *     filename = The bookmark file to load
	 *     attributes = The attributes to query
	 *
	 * Returns: a new `GtkBookmarkList`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename, string attributes)
	{
		auto __p = gtk_bookmark_list_new(Str.toStringz(filename), Str.toStringz(attributes));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkBookmarkList*) __p, true);
	}

	/**
	 * Gets the attributes queried on the children.
	 *
	 * Returns: The queried attributes
	 */
	public string getAttributes()
	{
		return Str.toString(gtk_bookmark_list_get_attributes(gtkBookmarkList));
	}

	/**
	 * Returns the filename of the bookmark file that
	 * this list is loading.
	 *
	 * Returns: the filename of the .xbel file
	 */
	public string getFilename()
	{
		return Str.toString(gtk_bookmark_list_get_filename(gtkBookmarkList));
	}

	/**
	 * Gets the IO priority to use while loading file.
	 *
	 * Returns: The IO priority.
	 */
	public int getIoPriority()
	{
		return gtk_bookmark_list_get_io_priority(gtkBookmarkList);
	}

	/**
	 * Returns %TRUE if the files are currently being loaded.
	 *
	 * Files will be added to @self from time to time while loading is
	 * going on. The order in which are added is undefined and may change
	 * in between runs.
	 *
	 * Returns: %TRUE if @self is loading
	 */
	public bool isLoading()
	{
		return gtk_bookmark_list_is_loading(gtkBookmarkList) != 0;
	}

	/**
	 * Sets the @attributes to be enumerated and starts the enumeration.
	 *
	 * If @attributes is %NULL, no attributes will be queried, but a list
	 * of `GFileInfo`s will still be created.
	 *
	 * Params:
	 *     attributes = the attributes to enumerate
	 */
	public void setAttributes(string attributes)
	{
		gtk_bookmark_list_set_attributes(gtkBookmarkList, Str.toStringz(attributes));
	}

	/**
	 * Sets the IO priority to use while loading files.
	 *
	 * The default IO priority is %G_PRIORITY_DEFAULT.
	 *
	 * Params:
	 *     ioPriority = IO priority to use
	 */
	public void setIoPriority(int ioPriority)
	{
		gtk_bookmark_list_set_io_priority(gtkBookmarkList, ioPriority);
	}
}
