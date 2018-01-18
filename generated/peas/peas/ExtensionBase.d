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


module peas.ExtensionBase;

private import glib.Str;
private import gobject.ObjectG;
private import peas.PluginInfo;
private import peas.c.functions;
public  import peas.c.types;


/**
 * Base class for C extensions.
 */
public class ExtensionBase : ObjectG
{
	/** the main Gtk struct */
	protected PeasExtensionBase* peasExtensionBase;

	/** Get the main Gtk struct */
	public PeasExtensionBase* getExtensionBaseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return peasExtensionBase;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)peasExtensionBase;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PeasExtensionBase* peasExtensionBase, bool ownedRef = false)
	{
		this.peasExtensionBase = peasExtensionBase;
		super(cast(GObject*)peasExtensionBase, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return peas_extension_base_get_type();
	}

	/**
	 * Get the path of the directory where the plugin should look for
	 * its data files.
	 *
	 * Returns: A newly allocated string with the path of the
	 *     directory where the plugin should look for its data files
	 */
	public string getDataDir()
	{
		auto retStr = peas_extension_base_get_data_dir(peasExtensionBase);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Get information relative to @extbase.
	 *
	 * Returns: the #PeasPluginInfo relative
	 *     to the #PeasExtensionBase.
	 */
	public PluginInfo getPluginInfo()
	{
		auto p = peas_extension_base_get_plugin_info(peasExtensionBase);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PluginInfo)(cast(PeasPluginInfo*) p);
	}
}
