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


module gstreamer.PresetT;

public  import glib.Str;
public  import glib.c.functions;
public  import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * This interface offers methods to query and manipulate parameter preset sets.
 * A preset is a bunch of property settings, together with meta data and a name.
 * The name of a preset serves as key for subsequent method calls to manipulate
 * single presets.
 * All instances of one type will share the list of presets. The list is created
 * on demand, if presets are not used, the list is not created.
 * 
 * The interface comes with a default implementation that serves most plugins.
 * Wrapper plugins will override most methods to implement support for the
 * native preset format of those wrapped plugins.
 * One method that is useful to be overridden is gst_preset_get_property_names().
 * With that one can control which properties are saved and in which order.
 * When implementing support for read-only presets, one should set the vmethods
 * for gst_preset_save_preset() and gst_preset_delete_preset() to %NULL.
 * Applications can use gst_preset_is_editable() to check for that.
 * 
 * The default implementation supports presets located in a system directory,
 * application specific directory and in the users home directory. When getting
 * a list of presets individual presets are read and overlaid in 1) system,
 * 2) application and 3) user order. Whenever an earlier entry is newer, the
 * later entries will be updated. Since 1.8 you can also provide extra paths
 * where to find presets through the GST_PRESET_PATH environment variable.
 * Presets found in those paths will be considered as "app presets".
 */
public template PresetT(TStruct)
{
	/** Get the main Gtk struct */
	public GstPreset* getPresetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GstPreset*)getStruct();
	}


	/**
	 * Delete the given preset.
	 *
	 * Params:
	 *     name = preset name to remove
	 *
	 * Returns: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 */
	public bool deletePreset(string name)
	{
		return gst_preset_delete_preset(getPresetStruct(), Str.toStringz(name)) != 0;
	}

	/**
	 * Gets the @value for an existing meta data @tag. Meta data @tag names can be
	 * something like e.g. "comment". Returned values need to be released when done.
	 *
	 * Params:
	 *     name = preset name
	 *     tag = meta data item name
	 *     value = value
	 *
	 * Returns: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 *     or no value for the given @tag
	 */
	public bool getMeta(string name, string tag, out string value)
	{
		char* outvalue = null;

		auto __p = gst_preset_get_meta(getPresetStruct(), Str.toStringz(name), Str.toStringz(tag), &outvalue) != 0;

		value = Str.toString(outvalue);

		return __p;
	}

	/**
	 * Get a copy of preset names as a %NULL terminated string array.
	 *
	 * Returns: list with names, use g_strfreev() after usage.
	 */
	public string[] getPresetNames()
	{
		auto retStr = gst_preset_get_preset_names(getPresetStruct());

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Get a the names of the GObject properties that can be used for presets.
	 *
	 * Returns: an
	 *     array of property names which should be freed with g_strfreev() after use.
	 */
	public string[] getPropertyNames()
	{
		auto retStr = gst_preset_get_property_names(getPresetStruct());

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Check if one can add new presets, change existing ones and remove presets.
	 *
	 * Returns: %TRUE if presets are editable or %FALSE if they are static
	 *
	 * Since: 1.6
	 */
	public bool isEditable()
	{
		return gst_preset_is_editable(getPresetStruct()) != 0;
	}

	/**
	 * Load the given preset.
	 *
	 * Params:
	 *     name = preset name to load
	 *
	 * Returns: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 */
	public bool loadPreset(string name)
	{
		return gst_preset_load_preset(getPresetStruct(), Str.toStringz(name)) != 0;
	}

	/**
	 * Renames a preset. If there is already a preset by the @new_name it will be
	 * overwritten.
	 *
	 * Params:
	 *     oldName = current preset name
	 *     newName = new preset name
	 *
	 * Returns: %TRUE for success, %FALSE if e.g. there is no preset with @old_name
	 */
	public bool renamePreset(string oldName, string newName)
	{
		return gst_preset_rename_preset(getPresetStruct(), Str.toStringz(oldName), Str.toStringz(newName)) != 0;
	}

	/**
	 * Save the current object settings as a preset under the given name. If there
	 * is already a preset by this @name it will be overwritten.
	 *
	 * Params:
	 *     name = preset name to save
	 *
	 * Returns: %TRUE for success, %FALSE
	 */
	public bool savePreset(string name)
	{
		return gst_preset_save_preset(getPresetStruct(), Str.toStringz(name)) != 0;
	}

	/**
	 * Sets a new @value for an existing meta data item or adds a new item. Meta
	 * data @tag names can be something like e.g. "comment". Supplying %NULL for the
	 * @value will unset an existing value.
	 *
	 * Params:
	 *     name = preset name
	 *     tag = meta data item name
	 *     value = new value
	 *
	 * Returns: %TRUE for success, %FALSE if e.g. there is no preset with that @name
	 */
	public bool setMeta(string name, string tag, string value)
	{
		return gst_preset_set_meta(getPresetStruct(), Str.toStringz(name), Str.toStringz(tag), Str.toStringz(value)) != 0;
	}
}
