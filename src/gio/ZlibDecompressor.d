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

/*
 * Conversion parameters:
 * inFile  = GZlibDecompressor.html
 * outPack = gio
 * outFile = ZlibDecompressor
 * strct   = GZlibDecompressor
 * realStrct=
 * ctorStrct=
 * clss    = ZlibDecompressor
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ConverterIF
 * prefixes:
 * 	- g_zlib_decompressor_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.FileInfo
 * 	- gio.ConverterT
 * 	- gio.ConverterIF
 * structWrap:
 * 	- GFileInfo* -> FileInfo
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ZlibDecompressor;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.FileInfo;
private import gio.ConverterT;
private import gio.ConverterIF;



private import gobject.ObjectG;

/**
 * GZlibDecompressor is an implementation of GConverter that
 * decompresses data compressed with zlib.
 */
public class ZlibDecompressor : ObjectG, ConverterIF
{
	
	/** the main Gtk struct */
	protected GZlibDecompressor* gZlibDecompressor;
	
	
	public GZlibDecompressor* getZlibDecompressorStruct()
	{
		return gZlibDecompressor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gZlibDecompressor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GZlibDecompressor* gZlibDecompressor)
	{
		super(cast(GObject*)gZlibDecompressor);
		this.gZlibDecompressor = gZlibDecompressor;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gZlibDecompressor = cast(GZlibDecompressor*)obj;
	}
	
	// add the Converter capabilities
	mixin ConverterT!(GZlibDecompressor);
	
	/**
	 */
	
	/**
	 * Creates a new GZlibDecompressor.
	 * Since 2.24
	 * Params:
	 * format = The format to use for the compressed data
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GZlibCompressorFormat format)
	{
		// GZlibDecompressor * g_zlib_decompressor_new (GZlibCompressorFormat format);
		auto p = g_zlib_decompressor_new(format);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_zlib_decompressor_new(format)");
		}
		this(cast(GZlibDecompressor*) p);
	}
	
	/**
	 * Retrieves the GFileInfo constructed from the GZIP header data
	 * of compressed data processed by compressor, or NULL if decompressor's
	 * "format" property is not G_ZLIB_COMPRESSOR_FORMAT_GZIP,
	 * or the header data was not fully processed yet, or it not present in the
	 * data stream at all.
	 * Since 2.26
	 * Returns: a GFileInfo, or NULL. [transfer none]
	 */
	public FileInfo getFileInfo()
	{
		// GFileInfo * g_zlib_decompressor_get_file_info (GZlibDecompressor *decompressor);
		auto p = g_zlib_decompressor_get_file_info(gZlibDecompressor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FileInfo)(cast(GFileInfo*) p);
	}
}
