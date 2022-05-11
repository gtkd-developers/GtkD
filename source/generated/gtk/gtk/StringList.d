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


module gtk.StringList;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkStringList` is a list model that wraps an array of strings.
 * 
 * The objects in the model have a "string" property.
 * 
 * `GtkStringList` is well-suited for any place where you would
 * typically use a `char*[]`, but need a list model.
 * 
 * # GtkStringList as GtkBuildable
 * 
 * The `GtkStringList` implementation of the `GtkBuildable` interface
 * supports adding items directly using the <items> element and
 * specifying <item> elements for each item. Each <item> element
 * supports the regular translation attributes “translatable”,
 * “context” and “comments”.
 * 
 * Here is a UI definition fragment specifying a `GtkStringList`
 * 
 * ```xml
 * <object class="GtkStringList">
 * <items>
 * <item translatable="yes">Factory</item>
 * <item translatable="yes">Home</item>
 * <item translatable="yes">Subway</item>
 * </items>
 * </object>
 * ```
 */
public class StringList : ObjectG, ListModelIF, BuildableIF
{
	/** the main Gtk struct */
	protected GtkStringList* gtkStringList;

	/** Get the main Gtk struct */
	public GtkStringList* getStringListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStringList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStringList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStringList* gtkStringList, bool ownedRef = false)
	{
		this.gtkStringList = gtkStringList;
		super(cast(GObject*)gtkStringList, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkStringList);

	// add the Buildable capabilities
	mixin BuildableT!(GtkStringList);


	/** */
	public static GType getType()
	{
		return gtk_string_list_get_type();
	}

	/**
	 * Creates a new `GtkStringList` with the given @strings.
	 *
	 * Params:
	 *     strings = The strings to put in the model
	 *
	 * Returns: a new `GtkStringList`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string[] strings)
	{
		auto __p = gtk_string_list_new(Str.toStringzArray(strings));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStringList*) __p, true);
	}

	/**
	 * Appends @string to @self.
	 *
	 * The @string will be copied. See
	 * [method@Gtk.StringList.take] for a way to avoid that.
	 *
	 * Params:
	 *     string_ = the string to insert
	 */
	public void append(string string_)
	{
		gtk_string_list_append(gtkStringList, Str.toStringz(string_));
	}

	/**
	 * Gets the string that is at @position in @self.
	 *
	 * If @self does not contain @position items, %NULL is returned.
	 *
	 * This function returns the const char *. To get the
	 * object wrapping it, use g_list_model_get_item().
	 *
	 * Params:
	 *     position = the position to get the string for
	 *
	 * Returns: the string at the given position
	 */
	public string getString(uint position)
	{
		return Str.toString(gtk_string_list_get_string(gtkStringList, position));
	}

	/**
	 * Removes the string at @position from @self.
	 *
	 * @position must be smaller than the current
	 * length of the list.
	 *
	 * Params:
	 *     position = the position of the string that is to be removed
	 */
	public void remove(uint position)
	{
		gtk_string_list_remove(gtkStringList, position);
	}

	/**
	 * Changes @self by removing @n_removals strings and adding @additions
	 * to it.
	 *
	 * This function is more efficient than [method@Gtk.StringList.append]
	 * and [method@Gtk.StringList.remove], because it only emits the
	 * ::items-changed signal once for the change.
	 *
	 * This function copies the strings in @additions.
	 *
	 * The parameters @position and @n_removals must be correct (ie:
	 * @position + @n_removals must be less than or equal to the length
	 * of the list at the time this function is called).
	 *
	 * Params:
	 *     position = the position at which to make the change
	 *     nRemovals = the number of strings to remove
	 *     additions = The strings to add
	 */
	public void splice(uint position, uint nRemovals, string[] additions)
	{
		gtk_string_list_splice(gtkStringList, position, nRemovals, Str.toStringzArray(additions));
	}

	/**
	 * Adds @string to self at the end, and takes
	 * ownership of it.
	 *
	 * This variant of [method@Gtk.StringList.append]
	 * is convenient for formatting strings:
	 *
	 * ```c
	 * gtk_string_list_take (self, g_strdup_print ("%d dollars", lots));
	 * ```
	 *
	 * Params:
	 *     string_ = the string to insert
	 */
	public void take(string string_)
	{
		gtk_string_list_take(gtkStringList, Str.toStringz(string_));
	}
}
