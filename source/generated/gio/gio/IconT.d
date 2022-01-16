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


module gio.IconT;

public  import gio.IconIF;
public  import gio.c.functions;
public  import gio.c.types;
public  import glib.ConstructionException;
public  import glib.ErrorG;
public  import glib.GException;
public  import glib.Str;
public  import glib.Variant;
public  import glib.c.functions;
public  import gobject.ObjectG;


/**
 * #GIcon is a very minimal interface for icons. It provides functions
 * for checking the equality of two icons, hashing of icons and
 * serializing an icon to and from strings.
 * 
 * #GIcon does not provide the actual pixmap for the icon as this is out
 * of GIO's scope, however implementations of #GIcon may contain the name
 * of an icon (see #GThemedIcon), or the path to an icon (see #GLoadableIcon).
 * 
 * To obtain a hash of a #GIcon, see g_icon_hash().
 * 
 * To check if two #GIcons are equal, see g_icon_equal().
 * 
 * For serializing a #GIcon, use g_icon_serialize() and
 * g_icon_deserialize().
 * 
 * If you want to consume #GIcon (for example, in a toolkit) you must
 * be prepared to handle at least the three following cases:
 * #GLoadableIcon, #GThemedIcon and #GEmblemedIcon.  It may also make
 * sense to have fast-paths for other cases (like handling #GdkPixbuf
 * directly, for example) but all compliant #GIcon implementations
 * outside of GIO must implement #GLoadableIcon.
 * 
 * If your application or library provides one or more #GIcon
 * implementations you need to ensure that your new implementation also
 * implements #GLoadableIcon.  Additionally, you must provide an
 * implementation of g_icon_serialize() that gives a result that is
 * understood by g_icon_deserialize(), yielding one of the built-in icon
 * types.
 */
public template IconT(TStruct)
{
	/** Get the main Gtk struct */
	public GIcon* getIconStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GIcon*)getStruct();
	}


	/**
	 * Checks if two icons are equal.
	 *
	 * Params:
	 *     icon2 = pointer to the second #GIcon.
	 *
	 * Returns: %TRUE if @icon1 is equal to @icon2. %FALSE otherwise.
	 */
	public bool equal(IconIF icon2)
	{
		return g_icon_equal(getIconStruct(), (icon2 is null) ? null : icon2.getIconStruct()) != 0;
	}

	/**
	 * Serializes a #GIcon into a #GVariant. An equivalent #GIcon can be retrieved
	 * back by calling g_icon_deserialize() on the returned value.
	 * As serialization will avoid using raw icon data when possible, it only
	 * makes sense to transfer the #GVariant between processes on the same machine,
	 * (as opposed to over the network), and within the same file system namespace.
	 *
	 * Returns: a #GVariant, or %NULL when serialization fails. The #GVariant will not be floating.
	 *
	 * Since: 2.38
	 */
	public Variant serialize()
	{
		auto __p = g_icon_serialize(getIconStruct());

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Generates a textual representation of @icon that can be used for
	 * serialization such as when passing @icon to a different process or
	 * saving it to persistent storage. Use g_icon_new_for_string() to
	 * get @icon back from the returned string.
	 *
	 * The encoding of the returned string is proprietary to #GIcon except
	 * in the following two cases
	 *
	 * - If @icon is a #GFileIcon, the returned string is a native path
	 * (such as `/path/to/my icon.png`) without escaping
	 * if the #GFile for @icon is a native file.  If the file is not
	 * native, the returned string is the result of g_file_get_uri()
	 * (such as `sftp://path/to/my%20icon.png`).
	 *
	 * - If @icon is a #GThemedIcon with exactly one name and no fallbacks,
	 * the encoding is simply the name (such as `network-server`).
	 *
	 * Returns: An allocated NUL-terminated UTF8 string or
	 *     %NULL if @icon can't be serialized. Use g_free() to free.
	 *
	 * Since: 2.20
	 */
	public override string toString()
	{
		auto retStr = g_icon_to_string(getIconStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
