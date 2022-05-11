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


module gio.EmblemedIcon;

private import gio.Emblem;
private import gio.IconIF;
private import gio.IconT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;


/**
 * #GEmblemedIcon is an implementation of #GIcon that supports
 * adding an emblem to an icon. Adding multiple emblems to an
 * icon is ensured via g_emblemed_icon_add_emblem().
 * 
 * Note that #GEmblemedIcon allows no control over the position
 * of the emblems. See also #GEmblem for more information.
 */
public class EmblemedIcon : ObjectG, IconIF
{
	/** the main Gtk struct */
	protected GEmblemedIcon* gEmblemedIcon;

	/** Get the main Gtk struct */
	public GEmblemedIcon* getEmblemedIconStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gEmblemedIcon;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gEmblemedIcon;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GEmblemedIcon* gEmblemedIcon, bool ownedRef = false)
	{
		this.gEmblemedIcon = gEmblemedIcon;
		super(cast(GObject*)gEmblemedIcon, ownedRef);
	}

	// add the Icon capabilities
	mixin IconT!(GEmblemedIcon);


	/** */
	public static GType getType()
	{
		return g_emblemed_icon_get_type();
	}

	/**
	 * Creates a new emblemed icon for @icon with the emblem @emblem.
	 *
	 * Params:
	 *     icon = a #GIcon
	 *     emblem = a #GEmblem, or %NULL
	 *
	 * Returns: a new #GIcon
	 *
	 * Since: 2.18
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(IconIF icon, Emblem emblem)
	{
		auto __p = g_emblemed_icon_new((icon is null) ? null : icon.getIconStruct(), (emblem is null) ? null : emblem.getEmblemStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GEmblemedIcon*) __p, true);
	}

	/**
	 * Adds @emblem to the #GList of #GEmblems.
	 *
	 * Params:
	 *     emblem = a #GEmblem
	 *
	 * Since: 2.18
	 */
	public void addEmblem(Emblem emblem)
	{
		g_emblemed_icon_add_emblem(gEmblemedIcon, (emblem is null) ? null : emblem.getEmblemStruct());
	}

	/**
	 * Removes all the emblems from @icon.
	 *
	 * Since: 2.28
	 */
	public void clearEmblems()
	{
		g_emblemed_icon_clear_emblems(gEmblemedIcon);
	}

	/**
	 * Gets the list of emblems for the @icon.
	 *
	 * Returns: a #GList of
	 *     #GEmblems that is owned by @emblemed
	 *
	 * Since: 2.18
	 */
	public ListG getEmblems()
	{
		auto __p = g_emblemed_icon_get_emblems(gEmblemedIcon);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the main icon for @emblemed.
	 *
	 * Returns: a #GIcon that is owned by @emblemed
	 *
	 * Since: 2.18
	 */
	public IconIF getIcon()
	{
		auto __p = g_emblemed_icon_get_icon(gEmblemedIcon);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p);
	}
}
