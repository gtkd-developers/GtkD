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
 * inFile  = GFilterInputStream.html
 * outPack = gio
 * outFile = FilterInputStream
 * strct   = GFilterInputStream
 * realStrct=
 * ctorStrct=
 * clss    = FilterInputStream
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_filter_input_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.InputStream
 * structWrap:
 * 	- GInputStream* -> InputStream
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.FilterInputStream;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.InputStream;



private import gio.InputStream;

/**
 * Base class for input stream implementations that perform some
 * kind of filtering operation on a base stream. Typical examples
 * of filtering operations are character set conversion, compression
 * and byte order flipping.
 */
public class FilterInputStream : InputStream
{
	
	/** the main Gtk struct */
	protected GFilterInputStream* gFilterInputStream;
	
	
	public GFilterInputStream* getFilterInputStreamStruct()
	{
		return gFilterInputStream;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFilterInputStream;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GFilterInputStream* gFilterInputStream)
	{
		super(cast(GInputStream*)gFilterInputStream);
		this.gFilterInputStream = gFilterInputStream;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gFilterInputStream = cast(GFilterInputStream*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets the base stream for the filter stream.
	 * Returns: a GInputStream. [transfer none]
	 */
	public InputStream getBaseStream()
	{
		// GInputStream * g_filter_input_stream_get_base_stream  (GFilterInputStream *stream);
		auto p = g_filter_input_stream_get_base_stream(gFilterInputStream);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) p);
	}
	
	/**
	 * Returns whether the base stream will be closed when stream is
	 * closed.
	 * Returns: TRUE if the base stream will be closed.
	 */
	public int getCloseBaseStream()
	{
		// gboolean g_filter_input_stream_get_close_base_stream  (GFilterInputStream *stream);
		return g_filter_input_stream_get_close_base_stream(gFilterInputStream);
	}
	
	/**
	 * Sets whether the base stream will be closed when stream is closed.
	 * Params:
	 * closeBase = TRUE to close the base stream.
	 */
	public void setCloseBaseStream(int closeBase)
	{
		// void g_filter_input_stream_set_close_base_stream  (GFilterInputStream *stream,  gboolean close_base);
		g_filter_input_stream_set_close_base_stream(gFilterInputStream, closeBase);
	}
}
