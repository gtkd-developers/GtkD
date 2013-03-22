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
 * inFile  = GIcon.html
 * outPack = gio
 * outFile = IconT
 * strct   = GIcon
 * realStrct=
 * ctorStrct=
 * clss    = IconT
 * interf  = IconIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_icon_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_icon_new_for_string
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gio.IconT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import glib.Str;
public import glib.ErrorG;
public import glib.GException;




/**
 * GIcon is a very minimal interface for icons. It provides functions
 * for checking the equality of two icons, hashing of icons and
 * serializing an icon to and from strings.
 *
 * GIcon does not provide the actual pixmap for the icon as this is out
 * of GIO's scope, however implementations of GIcon may contain the name
 * of an icon (see GThemedIcon), or the path to an icon (see GLoadableIcon).
 *
 * To obtain a hash of a GIcon, see g_icon_hash().
 *
 * To check if two GIcons are equal, see g_icon_equal().
 *
 * For serializing a GIcon, use g_icon_to_string() and
 * g_icon_new_for_string().
 *
 * If your application or library provides one or more GIcon
 * implementations you need to ensure that each GType is registered
 * with the type system prior to calling g_icon_new_for_string().
 */
public template IconT(TStruct)
{
	
	/** the main Gtk struct */
	protected GIcon* gIcon;
	
	
	public GIcon* getIconTStruct()
	{
		return cast(GIcon*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Gets a hash for an icon.
	 * Virtual: hash
	 * Params:
	 * icon = gconstpointer to an icon object.
	 * Returns: a guint containing a hash for the icon, suitable for use in a GHashTable or similar data structure.
	 */
	public static uint hash(void* icon)
	{
		// guint g_icon_hash (gconstpointer icon);
		return g_icon_hash(icon);
	}
	
	/**
	 * Checks if two icons are equal.
	 * Params:
	 * icon2 = pointer to the second GIcon. [allow-none]
	 * Returns: TRUE if icon1 is equal to icon2. FALSE otherwise.
	 */
	public int equal(GIcon* icon2)
	{
		// gboolean g_icon_equal (GIcon *icon1,  GIcon *icon2);
		return g_icon_equal(getIconTStruct(), icon2);
	}
	
	/**
	 * Generates a textual representation of icon that can be used for
	 * serialization such as when passing icon to a different process or
	 * saving it to persistent storage. Use g_icon_new_for_string() to
	 * get icon back from the returned string.
	 * The encoding of the returned string is proprietary to GIcon except
	 * in the following two cases
	 *  If icon is a GFileIcon, the returned string is a native path
	 *  (such as /path/to/my icon.png) without escaping
	 *  if the GFile for icon is a native file. If the file is not
	 *  native, the returned string is the result of g_file_get_uri()
	 *  (such as sftp://path/to/my%20icon.png).
	 *  If icon is a GThemedIcon with exactly one name, the encoding is
	 *  simply the name (such as network-server).
	 * Virtual: to_tokens
	 * Since 2.20
	 * Returns: An allocated NUL-terminated UTF8 string or NULL if icon can't be serialized. Use g_free() to free.
	 */
	public override string toString()
	{
		// gchar * g_icon_to_string (GIcon *icon);
		return Str.toString(g_icon_to_string(getIconTStruct()));
	}
}
