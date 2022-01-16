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


module adw.EnumListItem;

private import adw.c.functions;
public  import adw.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * `AdwEnumListItem` is the type of items in a [class@EnumListModel].
 *
 * Since: 1.0
 */
public class EnumListItem : ObjectG
{
	/** the main Gtk struct */
	protected AdwEnumListItem* adwEnumListItem;

	/** Get the main Gtk struct */
	public AdwEnumListItem* getEnumListItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwEnumListItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwEnumListItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwEnumListItem* adwEnumListItem, bool ownedRef = false)
	{
		this.adwEnumListItem = adwEnumListItem;
		super(cast(GObject*)adwEnumListItem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_enum_list_item_get_type();
	}

	/**
	 * Gets the enum value name.
	 *
	 * Returns: the enum value name
	 *
	 * Since: 1.0
	 */
	public string getName()
	{
		return Str.toString(adw_enum_list_item_get_name(adwEnumListItem));
	}

	/**
	 * Gets the enum value nick.
	 *
	 * Returns: the enum value nick
	 *
	 * Since: 1.0
	 */
	public string getNick()
	{
		return Str.toString(adw_enum_list_item_get_nick(adwEnumListItem));
	}

	/**
	 * Gets the enum value.
	 *
	 * Returns: the enum value
	 *
	 * Since: 1.0
	 */
	public int getValue()
	{
		return adw_enum_list_item_get_value(adwEnumListItem);
	}
}
