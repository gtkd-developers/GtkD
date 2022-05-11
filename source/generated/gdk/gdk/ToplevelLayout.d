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


module gdk.ToplevelLayout;

private import gdk.MonitorGdk;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * The `GdkToplevelLayout` struct contains information that
 * is necessary to present a sovereign window on screen.
 * 
 * The `GdkToplevelLayout` struct is necessary for using
 * [method@Gdk.Toplevel.present].
 * 
 * Toplevel surfaces are sovereign windows that can be presented
 * to the user in various states (maximized, on all workspaces,
 * etc).
 */
public class ToplevelLayout
{
	/** the main Gtk struct */
	protected GdkToplevelLayout* gdkToplevelLayout;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkToplevelLayout* getToplevelLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkToplevelLayout;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkToplevelLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkToplevelLayout* gdkToplevelLayout, bool ownedRef = false)
	{
		this.gdkToplevelLayout = gdkToplevelLayout;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GDK[0]) && ownedRef )
			gdk_toplevel_layout_unref(gdkToplevelLayout);
	}


	/** */
	public static GType getType()
	{
		return gdk_toplevel_layout_get_type();
	}

	/**
	 * Create a toplevel layout description.
	 *
	 * Used together with gdk_toplevel_present() to describe
	 * how a toplevel surface should be placed and behave on-screen.
	 *
	 * The size is in ”application pixels”, not
	 * ”device pixels” (see gdk_surface_get_scale_factor()).
	 *
	 * Returns: newly created instance of `GdkToplevelLayout`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gdk_toplevel_layout_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkToplevelLayout*) __p);
	}

	/**
	 * Create a new `GdkToplevelLayout` and copy the contents of @layout into it.
	 *
	 * Returns: a copy of @layout.
	 */
	public ToplevelLayout copy()
	{
		auto __p = gdk_toplevel_layout_copy(gdkToplevelLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ToplevelLayout)(cast(GdkToplevelLayout*) __p, true);
	}

	/**
	 * Check whether @layout and @other has identical layout properties.
	 *
	 * Params:
	 *     other = another `GdkToplevelLayout`
	 *
	 * Returns: %TRUE if @layout and @other have identical layout properties,
	 *     otherwise %FALSE.
	 */
	public bool equal(ToplevelLayout other)
	{
		return gdk_toplevel_layout_equal(gdkToplevelLayout, (other is null) ? null : other.getToplevelLayoutStruct()) != 0;
	}

	/**
	 * If the layout specifies whether to the toplevel should go fullscreen,
	 * the value pointed to by @fullscreen is set to %TRUE if it should go
	 * fullscreen, or %FALSE, if it should go unfullscreen.
	 *
	 * Params:
	 *     fullscreen = location to store whether the toplevel should be fullscreen
	 *
	 * Returns: whether the @layout specifies the fullscreen state for the toplevel
	 */
	public bool getFullscreen(out bool fullscreen)
	{
		int outfullscreen;

		auto __p = gdk_toplevel_layout_get_fullscreen(gdkToplevelLayout, &outfullscreen) != 0;

		fullscreen = (outfullscreen == 1);

		return __p;
	}

	/**
	 * Returns the monitor that the layout is fullscreening
	 * the surface on.
	 *
	 * Returns: the monitor on which @layout fullscreens
	 */
	public MonitorGdk getFullscreenMonitor()
	{
		auto __p = gdk_toplevel_layout_get_fullscreen_monitor(gdkToplevelLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MonitorGdk)(cast(GdkMonitor*) __p);
	}

	/**
	 * If the layout specifies whether to the toplevel should go maximized,
	 * the value pointed to by @maximized is set to %TRUE if it should go
	 * fullscreen, or %FALSE, if it should go unmaximized.
	 *
	 * Params:
	 *     maximized = set to %TRUE if the toplevel should be maximized
	 *
	 * Returns: whether the @layout specifies the maximized state for the toplevel
	 */
	public bool getMaximized(out bool maximized)
	{
		int outmaximized;

		auto __p = gdk_toplevel_layout_get_maximized(gdkToplevelLayout, &outmaximized) != 0;

		maximized = (outmaximized == 1);

		return __p;
	}

	/**
	 * Returns whether the layout should allow the user
	 * to resize the surface.
	 *
	 * Returns: %TRUE if the layout is resizable
	 */
	public bool getResizable()
	{
		return gdk_toplevel_layout_get_resizable(gdkToplevelLayout) != 0;
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of @layout.
	 *
	 * Returns: the same @layout
	 */
	public ToplevelLayout ref_()
	{
		auto __p = gdk_toplevel_layout_ref(gdkToplevelLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ToplevelLayout)(cast(GdkToplevelLayout*) __p, true);
	}

	/**
	 * Sets whether the layout should cause the surface
	 * to be fullscreen when presented.
	 *
	 * Params:
	 *     fullscreen = %TRUE to fullscreen the surface
	 *     monitor = the monitor to fullscreen on
	 */
	public void setFullscreen(bool fullscreen, MonitorGdk monitor)
	{
		gdk_toplevel_layout_set_fullscreen(gdkToplevelLayout, fullscreen, (monitor is null) ? null : monitor.getMonitorGdkStruct());
	}

	/**
	 * Sets whether the layout should cause the surface
	 * to be maximized when presented.
	 *
	 * Params:
	 *     maximized = %TRUE to maximize
	 */
	public void setMaximized(bool maximized)
	{
		gdk_toplevel_layout_set_maximized(gdkToplevelLayout, maximized);
	}

	/**
	 * Sets whether the layout should allow the user
	 * to resize the surface after it has been presented.
	 *
	 * Params:
	 *     resizable = %TRUE to allow resizing
	 */
	public void setResizable(bool resizable)
	{
		gdk_toplevel_layout_set_resizable(gdkToplevelLayout, resizable);
	}

	/**
	 * Decreases the reference count of @layout.
	 */
	public void unref()
	{
		gdk_toplevel_layout_unref(gdkToplevelLayout);
	}
}
