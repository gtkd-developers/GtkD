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


module shumate.Coordinate;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import shumate.LocationIF;
private import shumate.LocationT;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * A simple object implementing [iface@Location].
 */
public class Coordinate : ObjectG, LocationIF
{
	/** the main Gtk struct */
	protected ShumateCoordinate* shumateCoordinate;

	/** Get the main Gtk struct */
	public ShumateCoordinate* getCoordinateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateCoordinate;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateCoordinate;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateCoordinate* shumateCoordinate, bool ownedRef = false)
	{
		this.shumateCoordinate = shumateCoordinate;
		super(cast(GObject*)shumateCoordinate, ownedRef);
	}

	// add the Location capabilities
	mixin LocationT!(ShumateCoordinate);


	/** */
	public static GType getType()
	{
		return shumate_coordinate_get_type();
	}

	/**
	 * Creates a new instance of #ShumateCoordinate.
	 *
	 * Returns: the created instance.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = shumate_coordinate_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateCoordinate*) __p);
	}

	/**
	 * Creates a new instance of #ShumateCoordinate initialized with the given
	 * coordinates.
	 *
	 * Params:
	 *     latitude = the latitude coordinate
	 *     longitude = the longitude coordinate
	 *
	 * Returns: the created instance.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double latitude, double longitude)
	{
		auto __p = shumate_coordinate_new_full(latitude, longitude);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(ShumateCoordinate*) __p);
	}
}
