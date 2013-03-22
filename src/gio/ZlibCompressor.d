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
 * inFile  = GZlibCompressor.html
 * outPack = gio
 * outFile = ZlibCompressor
 * strct   = GZlibCompressor
 * realStrct=
 * ctorStrct=
 * clss    = ZlibCompressor
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ConverterIF
 * prefixes:
 * 	- g_zlib_compressor_
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

module gio.ZlibCompressor;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.FileInfo;
private import gio.ConverterT;
private import gio.ConverterIF;



private import gobject.ObjectG;

/**
 * GZlibCompressor is an implementation of GConverter that
 * compresses data using zlib.
 */
public class ZlibCompressor : ObjectG, ConverterIF
{
	
	/** the main Gtk struct */
	protected GZlibCompressor* gZlibCompressor;
	
	
	public GZlibCompressor* getZlibCompressorStruct()
	{
		return gZlibCompressor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gZlibCompressor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GZlibCompressor* gZlibCompressor)
	{
		super(cast(GObject*)gZlibCompressor);
		this.gZlibCompressor = gZlibCompressor;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gZlibCompressor = cast(GZlibCompressor*)obj;
	}
	
	// add the Converter capabilities
	mixin ConverterT!(GZlibCompressor);
	
	/**
	 */
	
	/**
	 * Creates a new GZlibCompressor.
	 * Since 2.24
	 * Params:
	 * format = The format to use for the compressed data
	 * level = compression level (0-9), -1 for default
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GZlibCompressorFormat format, int level)
	{
		// GZlibCompressor * g_zlib_compressor_new (GZlibCompressorFormat format,  int level);
		auto p = g_zlib_compressor_new(format, level);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_zlib_compressor_new(format, level)");
		}
		this(cast(GZlibCompressor*) p);
	}
	
	/**
	 * Returns the "file-info" property.
	 * Since 2.26
	 * Returns: a GFileInfo, or NULL. [transfer none]
	 */
	public FileInfo getFileInfo()
	{
		// GFileInfo * g_zlib_compressor_get_file_info (GZlibCompressor *compressor);
		auto p = g_zlib_compressor_get_file_info(gZlibCompressor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FileInfo)(cast(GFileInfo*) p);
	}
	
	/**
	 * Sets file_info in compressor. If non-NULL, and compressor's
	 * "format" property is G_ZLIB_COMPRESSOR_FORMAT_GZIP,
	 * it will be used to set the file name and modification time in
	 * the GZIP header of the compressed data.
	 * Note: it is an error to call this function while a compression is in
	 * progress; it may only be called immediately after creation of compressor,
	 * or after resetting it with g_converter_reset().
	 * Since 2.26
	 * Params:
	 * fileInfo = a GFileInfo. [allow-none]
	 */
	public void setFileInfo(FileInfo fileInfo)
	{
		// void g_zlib_compressor_set_file_info (GZlibCompressor *compressor,  GFileInfo *file_info);
		g_zlib_compressor_set_file_info(gZlibCompressor, (fileInfo is null) ? null : fileInfo.getFileInfoStruct());
	}
}
