/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- gio.ConverterT
 * 	- gio.ConverterIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ZlibCompressor;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import gio.ConverterT;
private import gio.ConverterIF;



private import gobject.ObjectG;

/**
 * Description
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
		if(gZlibCompressor is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gZlibCompressor);
		if( ptr !is null )
		{
			this = cast(ZlibCompressor)ptr;
			return;
		}
		super(cast(GObject*)gZlibCompressor);
		this.gZlibCompressor = gZlibCompressor;
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
}
