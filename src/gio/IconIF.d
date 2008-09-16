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
 * inFile  = GIcon.html
 * outPack = gio
 * outFile = IconIF
 * strct   = GIcon
 * realStrct=
 * ctorStrct=
 * clss    = IconT
 * interf  = IconIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_icon_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.IconIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;






/**
 * Description
 * GIcon is a very minimal interface for icons. It provides functions
 * for checking the equality of two icons and hashing of icons.
 * GIcon does not provide the actual pixmap for the icon as this is out
 * of GIO's scope, however implementations of GIcon may contain the name
 * of an icon (see GThemedIcon), or the path to an icon (see GLoadableIcon).
 * To obtain a hash of a GIcon, see g_icon_hash().
 * To check if two GIcons are equal, see g_icon_equal().
 */
public interface IconIF
{
	
	
	public GIcon* getIconTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Gets a hash for an icon.
	 * Params:
	 * icon =  gconstpointer to an icon object.
	 * Returns: a guint containing a hash for the icon, suitable for use in a GHashTable or similar data structure.
	 */
	public static uint hash(void* icon);
	
	/**
	 * Checks if two icons are equal.
	 * Params:
	 * icon2 =  pointer to the second GIcon.
	 * Returns: TRUE if icon1 is equal to icon2. FALSE otherwise.
	 */
	public int equal(GIcon* icon2);
}
