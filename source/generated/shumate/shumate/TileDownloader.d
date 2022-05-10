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


module shumate.TileDownloader;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import shumate.DataSource;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * A [class@Shumate.DataSource] that asynchronously downloads tiles from an online
 * service using a given template.
 * 
 * It contains an internal [class@Shumate.FileCache] to cache the tiles on the system.
 */
public class TileDownloader : DataSource
{
	/** the main Gtk struct */
	protected ShumateTileDownloader* shumateTileDownloader;

	/** Get the main Gtk struct */
	public ShumateTileDownloader* getTileDownloaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateTileDownloader;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateTileDownloader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateTileDownloader* shumateTileDownloader, bool ownedRef = false)
	{
		this.shumateTileDownloader = shumateTileDownloader;
		super(cast(ShumateDataSource*)shumateTileDownloader, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return shumate_tile_downloader_get_type();
	}

	/**
	 * Creates a new [class@TileDownloader] that fetches tiles from an API and
	 * caches them on disk.
	 *
	 * See [property@TileDownloader:url-template] for the format of the URL template.
	 *
	 * Params:
	 *     urlTemplate = a URL template to fetch tiles from
	 *
	 * Returns: a newly constructed [class@TileDownloader]
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string urlTemplate)
	{
		auto __p = shumate_tile_downloader_new(Str.toStringz(urlTemplate));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateTileDownloader*) __p, true);
	}
}
