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


module shumate.Compass;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import shumate.Viewport;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * A widget displaying a compass.
 * 
 * # CSS nodes
 * 
 * ```
 * map-compass
 * ├── revealer
 * ├──── image
 * ```
 * 
 * `ShumateCompass` uses a single CSS node with name map-compass. It also uses an
 * image named "map-compass".
 */
public class Compass : Widget
{
	/** the main Gtk struct */
	protected ShumateCompass* shumateCompass;

	/** Get the main Gtk struct */
	public ShumateCompass* getCompassStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateCompass;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateCompass;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateCompass* shumateCompass, bool ownedRef = false)
	{
		this.shumateCompass = shumateCompass;
		super(cast(GtkWidget*)shumateCompass, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return shumate_compass_get_type();
	}

	/**
	 * Creates an instance of #ShumateCompass.
	 *
	 * Params:
	 *     viewport = a #ShumateViewport
	 *
	 * Returns: a new #ShumateCompass.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Viewport viewport)
	{
		auto __p = shumate_compass_new((viewport is null) ? null : viewport.getViewportStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateCompass*) __p);
	}

	/**
	 * Gets the viewport used by the compass.
	 *
	 * Returns: The #ShumateViewport used by the compass
	 */
	public Viewport getViewport()
	{
		auto __p = shumate_compass_get_viewport(shumateCompass);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Viewport)(cast(ShumateViewport*) __p);
	}

	/**
	 * Sets the compass viewport.
	 *
	 * Params:
	 *     viewport = a [class@Viewport]
	 */
	public void setViewport(Viewport viewport)
	{
		shumate_compass_set_viewport(shumateCompass, (viewport is null) ? null : viewport.getViewportStruct());
	}
}
