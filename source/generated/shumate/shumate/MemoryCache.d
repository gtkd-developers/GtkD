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


module shumate.MemoryCache;

private import gdk.Texture;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import shumate.Tile;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * A cache that stores and retrieves tiles from the memory. The cache contents
 * is not preserved between application restarts so this cache serves mostly as
 * a quick access temporary cache to the most recently used tiles.
 */
public class MemoryCache : ObjectG
{
	/** the main Gtk struct */
	protected ShumateMemoryCache* shumateMemoryCache;

	/** Get the main Gtk struct */
	public ShumateMemoryCache* getMemoryCacheStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateMemoryCache;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateMemoryCache;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateMemoryCache* shumateMemoryCache, bool ownedRef = false)
	{
		this.shumateMemoryCache = shumateMemoryCache;
		super(cast(GObject*)shumateMemoryCache, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return shumate_memory_cache_get_type();
	}

	/**
	 * Constructor of #ShumateMemoryCache.
	 *
	 * Params:
	 *     sizeLimit = maximum number of tiles stored in the cache
	 *
	 * Returns: a constructed #ShumateMemoryCache
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint sizeLimit)
	{
		auto __p = shumate_memory_cache_new_full(sizeLimit);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(ShumateMemoryCache*) __p, true);
	}

	/**
	 * Cleans the contents of the cache.
	 */
	public void clean()
	{
		shumate_memory_cache_clean(shumateMemoryCache);
	}

	/**
	 * Gets the maximum number of tiles stored in the cache.
	 *
	 * Returns: maximum number of stored tiles
	 */
	public uint getSizeLimit()
	{
		return shumate_memory_cache_get_size_limit(shumateMemoryCache);
	}

	/**
	 * Sets the maximum number of tiles stored in the cache.
	 *
	 * Params:
	 *     sizeLimit = maximum number of tiles stored in the cache
	 */
	public void setSizeLimit(uint sizeLimit)
	{
		shumate_memory_cache_set_size_limit(shumateMemoryCache, sizeLimit);
	}

	/** */
	public void storeTexture(Tile tile, Texture texture, string sourceId)
	{
		shumate_memory_cache_store_texture(shumateMemoryCache, (tile is null) ? null : tile.getTileStruct(), (texture is null) ? null : texture.getTextureStruct(), Str.toStringz(sourceId));
	}

	/** */
	public bool tryFillTile(Tile tile, string sourceId)
	{
		return shumate_memory_cache_try_fill_tile(shumateMemoryCache, (tile is null) ? null : tile.getTileStruct(), Str.toStringz(sourceId)) != 0;
	}
}
