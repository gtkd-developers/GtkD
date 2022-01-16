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


module gio.MenuLinkIter;

private import gio.MenuModel;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * #GMenuLinkIter is an opaque structure type.  You must access it using
 * the functions below.
 *
 * Since: 2.32
 */
public class MenuLinkIter : ObjectG
{
	/** the main Gtk struct */
	protected GMenuLinkIter* gMenuLinkIter;

	/** Get the main Gtk struct */
	public GMenuLinkIter* getMenuLinkIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMenuLinkIter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMenuLinkIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMenuLinkIter* gMenuLinkIter, bool ownedRef = false)
	{
		this.gMenuLinkIter = gMenuLinkIter;
		super(cast(GObject*)gMenuLinkIter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_menu_link_iter_get_type();
	}

	/**
	 * Gets the name of the link at the current iterator position.
	 *
	 * The iterator is not advanced.
	 *
	 * Returns: the type of the link
	 *
	 * Since: 2.32
	 */
	public string getName()
	{
		return Str.toString(g_menu_link_iter_get_name(gMenuLinkIter));
	}

	/**
	 * This function combines g_menu_link_iter_next() with
	 * g_menu_link_iter_get_name() and g_menu_link_iter_get_value().
	 *
	 * First the iterator is advanced to the next (possibly first) link.
	 * If that fails, then %FALSE is returned and there are no other effects.
	 *
	 * If successful, @out_link and @value are set to the name and #GMenuModel
	 * of the link that has just been advanced to.  At this point,
	 * g_menu_link_iter_get_name() and g_menu_link_iter_get_value() will return the
	 * same values again.
	 *
	 * The value returned in @out_link remains valid for as long as the iterator
	 * remains at the current position.  The value returned in @value must
	 * be unreffed using g_object_unref() when it is no longer in use.
	 *
	 * Params:
	 *     outLink = the name of the link
	 *     value = the linked #GMenuModel
	 *
	 * Returns: %TRUE on success, or %FALSE if there is no additional link
	 *
	 * Since: 2.32
	 */
	public bool getNext(out string outLink, out MenuModel value)
	{
		char* outoutLink = null;
		GMenuModel* outvalue = null;

		auto __p = g_menu_link_iter_get_next(gMenuLinkIter, &outoutLink, &outvalue) != 0;

		outLink = Str.toString(outoutLink);
		value = ObjectG.getDObject!(MenuModel)(outvalue);

		return __p;
	}

	/**
	 * Gets the linked #GMenuModel at the current iterator position.
	 *
	 * The iterator is not advanced.
	 *
	 * Returns: the #GMenuModel that is linked to
	 *
	 * Since: 2.32
	 */
	public MenuModel getValue()
	{
		auto __p = g_menu_link_iter_get_value(gMenuLinkIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p, true);
	}

	/**
	 * Attempts to advance the iterator to the next (possibly first)
	 * link.
	 *
	 * %TRUE is returned on success, or %FALSE if there are no more links.
	 *
	 * You must call this function when you first acquire the iterator to
	 * advance it to the first link (and determine if the first link exists
	 * at all).
	 *
	 * Returns: %TRUE on success, or %FALSE when there are no more links
	 *
	 * Since: 2.32
	 */
	public bool next()
	{
		return g_menu_link_iter_next(gMenuLinkIter) != 0;
	}
}
