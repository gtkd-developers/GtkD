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


module shumate.Tile;

private import gdk.Texture;
private import glib.ConstructionException;
private import glib.DateTime;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * An object that represents map tiles. Tiles are loaded by a [class@MapSource].
 */
public class Tile : Widget
{
	/** the main Gtk struct */
	protected ShumateTile* shumateTile;

	/** Get the main Gtk struct */
	public ShumateTile* getTileStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateTile;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateTile;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateTile* shumateTile, bool ownedRef = false)
	{
		this.shumateTile = shumateTile;
		super(cast(GtkWidget*)shumateTile, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return shumate_tile_get_type();
	}

	/**
	 * Creates an instance of #ShumateTile.
	 *
	 * Returns: a new #ShumateTile
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = shumate_tile_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateTile*) __p);
	}

	/**
	 * Creates an instance of #ShumateTile.
	 *
	 * Params:
	 *     x = the x position
	 *     y = the y position
	 *     size = the size in pixels
	 *     zoomLevel = the zoom level
	 *
	 * Returns: a #ShumateTile
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint x, uint y, uint size, uint zoomLevel)
	{
		auto __p = shumate_tile_new_full(x, y, size, zoomLevel);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(ShumateTile*) __p);
	}

	/** */
	public string getEtag()
	{
		return Str.toString(shumate_tile_get_etag(shumateTile));
	}

	/**
	 * Checks whether the tile should fade in.
	 *
	 * Returns: the return value determines whether the tile should fade in when loading.
	 */
	public bool getFadeIn()
	{
		return shumate_tile_get_fade_in(shumateTile) != 0;
	}

	/** */
	public DateTime getModifiedTime()
	{
		auto __p = shumate_tile_get_modified_time(shumateTile);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Gets the tile's size.
	 *
	 * Returns: the tile's size in pixels
	 */
	public uint getSize()
	{
		return shumate_tile_get_size(shumateTile);
	}

	/**
	 * Gets the current state of tile loading.
	 *
	 * Returns: the tile's #ShumateState
	 */
	public ShumateState getState()
	{
		return shumate_tile_get_state(shumateTile);
	}

	/**
	 * Get the #GdkTexture representing this tile.
	 *
	 * Returns: A #GdkTexture
	 */
	public Texture getTexture()
	{
		auto __p = shumate_tile_get_texture(shumateTile);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Texture)(cast(GdkTexture*) __p);
	}

	/**
	 * Gets the tile's x position.
	 *
	 * Returns: the tile's x position
	 */
	public uint getX()
	{
		return shumate_tile_get_x(shumateTile);
	}

	/**
	 * Gets the tile's y position.
	 *
	 * Returns: the tile's y position
	 */
	public uint getY()
	{
		return shumate_tile_get_y(shumateTile);
	}

	/**
	 * Gets the tile's zoom level.
	 *
	 * Returns: the tile's zoom level
	 */
	public uint getZoomLevel()
	{
		return shumate_tile_get_zoom_level(shumateTile);
	}

	/** */
	public void setEtag(string etag)
	{
		shumate_tile_set_etag(shumateTile, Str.toStringz(etag));
	}

	/**
	 * Sets the flag determining whether the tile should fade in when loading
	 *
	 * Params:
	 *     fadeIn = determines whether the tile should fade in when loading
	 */
	public void setFadeIn(bool fadeIn)
	{
		shumate_tile_set_fade_in(shumateTile, fadeIn);
	}

	/** */
	public void setModifiedTime(DateTime modifiedTime)
	{
		shumate_tile_set_modified_time(shumateTile, (modifiedTime is null) ? null : modifiedTime.getDateTimeStruct());
	}

	/**
	 * Sets the tile's size
	 *
	 * Params:
	 *     size = the size in pixels
	 */
	public void setSize(uint size)
	{
		shumate_tile_set_size(shumateTile, size);
	}

	/**
	 * Sets the tile's #ShumateState
	 *
	 * Params:
	 *     state = a #ShumateState
	 */
	public void setState(ShumateState state)
	{
		shumate_tile_set_state(shumateTile, state);
	}

	/**
	 * Sets the #GdkTexture representing this tile.
	 *
	 * Params:
	 *     texture = a #GdkTexture
	 */
	public void setTexture(Texture texture)
	{
		shumate_tile_set_texture(shumateTile, (texture is null) ? null : texture.getTextureStruct());
	}

	/**
	 * Sets the tile's x position
	 *
	 * Params:
	 *     x = the position
	 */
	public void setX(uint x)
	{
		shumate_tile_set_x(shumateTile, x);
	}

	/**
	 * Sets the tile's y position
	 *
	 * Params:
	 *     y = the position
	 */
	public void setY(uint y)
	{
		shumate_tile_set_y(shumateTile, y);
	}

	/**
	 * Sets the tile's zoom level
	 *
	 * Params:
	 *     zoomLevel = the zoom level
	 */
	public void setZoomLevel(uint zoomLevel)
	{
		shumate_tile_set_zoom_level(shumateTile, zoomLevel);
	}
}
