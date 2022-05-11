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


module gio.ZlibDecompressor;

private import gio.ConverterIF;
private import gio.ConverterT;
private import gio.FileInfo;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * #GZlibDecompressor is an implementation of #GConverter that
 * decompresses data compressed with zlib.
 */
public class ZlibDecompressor : ObjectG, ConverterIF
{
	/** the main Gtk struct */
	protected GZlibDecompressor* gZlibDecompressor;

	/** Get the main Gtk struct */
	public GZlibDecompressor* getZlibDecompressorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gZlibDecompressor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gZlibDecompressor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GZlibDecompressor* gZlibDecompressor, bool ownedRef = false)
	{
		this.gZlibDecompressor = gZlibDecompressor;
		super(cast(GObject*)gZlibDecompressor, ownedRef);
	}

	// add the Converter capabilities
	mixin ConverterT!(GZlibDecompressor);


	/** */
	public static GType getType()
	{
		return g_zlib_decompressor_get_type();
	}

	/**
	 * Creates a new #GZlibDecompressor.
	 *
	 * Params:
	 *     format = The format to use for the compressed data
	 *
	 * Returns: a new #GZlibDecompressor
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GZlibCompressorFormat format)
	{
		auto __p = g_zlib_decompressor_new(format);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GZlibDecompressor*) __p, true);
	}

	/**
	 * Retrieves the #GFileInfo constructed from the GZIP header data
	 * of compressed data processed by @compressor, or %NULL if @decompressor's
	 * #GZlibDecompressor:format property is not %G_ZLIB_COMPRESSOR_FORMAT_GZIP,
	 * or the header data was not fully processed yet, or it not present in the
	 * data stream at all.
	 *
	 * Returns: a #GFileInfo, or %NULL
	 *
	 * Since: 2.26
	 */
	public FileInfo getFileInfo()
	{
		auto __p = g_zlib_decompressor_get_file_info(gZlibDecompressor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileInfo)(cast(GFileInfo*) __p);
	}
}
