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


module shumate.LocationT;

public  import shumate.c.functions;
public  import shumate.c.types;


/**
 * An interface common to objects having latitude and longitude
 * 
 * By implementing #ShumateLocation the object declares that it has latitude
 * and longitude and can be used to specify location on the map.
 */
public template LocationT(TStruct)
{
	/** Get the main Gtk struct */
	public ShumateLocation* getLocationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(ShumateLocation*)getStruct();
	}


	/**
	 * Gets the latitude coordinate in degrees.
	 *
	 * Returns: the latitude coordinate in degrees.
	 */
	public double getLatitude()
	{
		return shumate_location_get_latitude(getLocationStruct());
	}

	/**
	 * Gets the longitude coordinate in degrees.
	 *
	 * Returns: the longitude coordinate in degrees.
	 */
	public double getLongitude()
	{
		return shumate_location_get_longitude(getLocationStruct());
	}

	/**
	 * Sets the coordinates of the location
	 *
	 * Params:
	 *     latitude = the latitude in degrees
	 *     longitude = the longitude in degrees
	 */
	public void setLocation(double latitude, double longitude)
	{
		shumate_location_set_location(getLocationStruct(), latitude, longitude);
	}
}
