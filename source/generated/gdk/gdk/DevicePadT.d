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


module gdk.DevicePadT;

public  import gdk.c.functions;
public  import gdk.c.types;


/**
 * `GdkDevicePad` is an interface implemented by devices of type
 * %GDK_SOURCE_TABLET_PAD
 * 
 * It allows querying the features provided by the pad device.
 * 
 * Tablet pads may contain one or more groups, each containing a subset
 * of the buttons/rings/strips available. [method@Gdk.DevicePad.get_n_groups]
 * can be used to obtain the number of groups, [method@Gdk.DevicePad.get_n_features]
 * and [method@Gdk.DevicePad.get_feature_group] can be combined to find out
 * the number of buttons/rings/strips the device has, and how are they grouped.
 * 
 * Each of those groups have different modes, which may be used to map each
 * individual pad feature to multiple actions. Only one mode is effective
 * (current) for each given group, different groups may have different
 * current modes. The number of available modes in a group can be found
 * out through [method@Gdk.DevicePad.get_group_n_modes], and the current mode
 * for a given group will be notified through events of type `GDK_PAD_GROUP_MODE`.
 */
public template DevicePadT(TStruct)
{
	/** Get the main Gtk struct */
	public GdkDevicePad* getDevicePadStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GdkDevicePad*)getStruct();
	}


	/**
	 * Returns the group the given @feature and @idx belong to.
	 *
	 * f the feature or index do not exist in @pad, -1 is returned.
	 *
	 * Params:
	 *     feature = the feature type to get the group from
	 *     featureIdx = the index of the feature to get the group from
	 *
	 * Returns: The group number of the queried pad feature.
	 */
	public int getFeatureGroup(GdkDevicePadFeature feature, int featureIdx)
	{
		return gdk_device_pad_get_feature_group(getDevicePadStruct(), feature, featureIdx);
	}

	/**
	 * Returns the number of modes that @group may have.
	 *
	 * Params:
	 *     groupIdx = group to get the number of available modes from
	 *
	 * Returns: The number of modes available in @group.
	 */
	public int getGroupNModes(int groupIdx)
	{
		return gdk_device_pad_get_group_n_modes(getDevicePadStruct(), groupIdx);
	}

	/**
	 * Returns the number of features a tablet pad has.
	 *
	 * Params:
	 *     feature = a pad feature
	 *
	 * Returns: The amount of elements of type @feature that this pad has.
	 */
	public int getNFeatures(GdkDevicePadFeature feature)
	{
		return gdk_device_pad_get_n_features(getDevicePadStruct(), feature);
	}

	/**
	 * Returns the number of groups this pad device has.
	 *
	 * Pads have at least one group. A pad group is a subcollection of
	 * buttons/strip/rings that is affected collectively by a same
	 * current mode.
	 *
	 * Returns: The number of button/ring/strip groups in the pad.
	 */
	public int getNGroups()
	{
		return gdk_device_pad_get_n_groups(getDevicePadStruct());
	}
}
