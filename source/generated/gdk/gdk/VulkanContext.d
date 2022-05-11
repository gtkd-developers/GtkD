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


module gdk.VulkanContext;

private import gdk.DrawContext;
private import gdk.c.functions;
public  import gdk.c.types;
private import gio.InitableIF;
private import gio.InitableT;
private import gobject.Signals;
private import std.algorithm;


/**
 * `GdkVulkanContext` is an object representing the platform-specific
 * Vulkan draw context.
 * 
 * `GdkVulkanContext`s are created for a surface using
 * [method@Gdk.Surface.create_vulkan_context], and the context will match
 * the characteristics of the surface.
 * 
 * Support for `GdkVulkanContext` is platform-specific and context creation
 * can fail, returning %NULL context.
 */
public class VulkanContext : DrawContext, InitableIF
{
	/** the main Gtk struct */
	protected GdkVulkanContext* gdkVulkanContext;

	/** Get the main Gtk struct */
	public GdkVulkanContext* getVulkanContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkVulkanContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkVulkanContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkVulkanContext* gdkVulkanContext, bool ownedRef = false)
	{
		this.gdkVulkanContext = gdkVulkanContext;
		super(cast(GdkDrawContext*)gdkVulkanContext, ownedRef);
	}

	// add the Initable capabilities
	mixin InitableT!(GdkVulkanContext);


	/** */
	public static GType getType()
	{
		return gdk_vulkan_context_get_type();
	}

	/**
	 * Emitted when the images managed by this context have changed.
	 *
	 * Usually this means that the swapchain had to be recreated,
	 * for example in response to a change of the surface size.
	 */
	gulong addOnImagesUpdated(void delegate(VulkanContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "images-updated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
