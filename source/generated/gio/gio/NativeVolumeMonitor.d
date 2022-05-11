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


module gio.NativeVolumeMonitor;

private import gio.VolumeMonitor;
private import gio.c.functions;
public  import gio.c.types;


/** */
public class NativeVolumeMonitor : VolumeMonitor
{
	/** the main Gtk struct */
	protected GNativeVolumeMonitor* gNativeVolumeMonitor;

	/** Get the main Gtk struct */
	public GNativeVolumeMonitor* getNativeVolumeMonitorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gNativeVolumeMonitor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gNativeVolumeMonitor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GNativeVolumeMonitor* gNativeVolumeMonitor, bool ownedRef = false)
	{
		this.gNativeVolumeMonitor = gNativeVolumeMonitor;
		super(cast(GVolumeMonitor*)gNativeVolumeMonitor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_native_volume_monitor_get_type();
	}
}
