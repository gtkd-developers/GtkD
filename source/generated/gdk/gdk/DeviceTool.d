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


module gdk.DeviceTool;

private import gdk.c.functions;
public  import gdk.c.types;
private import gobject.ObjectG;


/**
 * A physical tool associated to a `GdkDevice`.
 */
public class DeviceTool : ObjectG
{
	/** the main Gtk struct */
	protected GdkDeviceTool* gdkDeviceTool;

	/** Get the main Gtk struct */
	public GdkDeviceTool* getDeviceToolStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkDeviceTool;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDeviceTool;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDeviceTool* gdkDeviceTool, bool ownedRef = false)
	{
		this.gdkDeviceTool = gdkDeviceTool;
		super(cast(GObject*)gdkDeviceTool, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_device_tool_get_type();
	}

	/**
	 * Gets the axes of the tool.
	 *
	 * Returns: the axes of @tool
	 */
	public GdkAxisFlags getAxes()
	{
		return gdk_device_tool_get_axes(gdkDeviceTool);
	}

	/**
	 * Gets the hardware ID of this tool, or 0 if it's not known.
	 *
	 * When non-zero, the identificator is unique for the given tool model,
	 * meaning that two identical tools will share the same @hardware_id,
	 * but will have different serial numbers (see
	 * [method@Gdk.DeviceTool.get_serial]).
	 *
	 * This is a more concrete (and device specific) method to identify
	 * a `GdkDeviceTool` than [method@Gdk.DeviceTool.get_tool_type],
	 * as a tablet may support multiple devices with the same
	 * `GdkDeviceToolType`, but different hardware identificators.
	 *
	 * Returns: The hardware identificator of this tool.
	 */
	public ulong getHardwareId()
	{
		return gdk_device_tool_get_hardware_id(gdkDeviceTool);
	}

	/**
	 * Gets the serial number of this tool.
	 *
	 * This value can be used to identify a physical tool
	 * (eg. a tablet pen) across program executions.
	 *
	 * Returns: The serial ID for this tool
	 */
	public ulong getSerial()
	{
		return gdk_device_tool_get_serial(gdkDeviceTool);
	}

	/**
	 * Gets the `GdkDeviceToolType` of the tool.
	 *
	 * Returns: The physical type for this tool. This can be used to
	 *     figure out what sort of pen is being used, such as an airbrush
	 *     or a pencil.
	 */
	public GdkDeviceToolType getToolType()
	{
		return gdk_device_tool_get_tool_type(gdkDeviceTool);
	}
}
