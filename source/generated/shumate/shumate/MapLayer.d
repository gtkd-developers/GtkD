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


module shumate.MapLayer;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import shumate.Layer;
private import shumate.MapSource;
private import shumate.Viewport;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * A [class@Shumate.Layer] implementation that fetches tiles from a [class@Shumate.MapSource]
 * and draws them as a grid.
 */
public class MapLayer : Layer
{
	/** the main Gtk struct */
	protected ShumateMapLayer* shumateMapLayer;

	/** Get the main Gtk struct */
	public ShumateMapLayer* getMapLayerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateMapLayer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateMapLayer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateMapLayer* shumateMapLayer, bool ownedRef = false)
	{
		this.shumateMapLayer = shumateMapLayer;
		super(cast(ShumateLayer*)shumateMapLayer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return shumate_map_layer_get_type();
	}

	/** */
	public this(MapSource mapSource, Viewport viewport)
	{
		auto __p = shumate_map_layer_new((mapSource is null) ? null : mapSource.getMapSourceStruct(), (viewport is null) ? null : viewport.getViewportStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateMapLayer*) __p);
	}
}
