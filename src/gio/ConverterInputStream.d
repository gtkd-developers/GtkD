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
 * inFile  = gio-GConverterInputstream.html
 * outPack = gio
 * outFile = ConverterInputStream
 * strct   = GConverterInputStream
 * realStrct=
 * ctorStrct=GInputStream
 * clss    = ConverterInputStream
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_converter_input_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.Converter
 * 	- gio.ConverterIF
 * structWrap:
 * 	- GConverter* -> ConverterIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ConverterInputStream;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.Converter;
private import gio.ConverterIF;



private import gio.FilterInputStream;

/**
 * Description
 * Converter input stream implements GInputStream and allows
 * conversion of data of various types during reading.
 * As of GLib 2.34, GConverterInputStream implements
 * GPollableInputStream.
 */
public class ConverterInputStream : FilterInputStream
{
	
	/** the main Gtk struct */
	protected GConverterInputStream* gConverterInputStream;
	
	
	public GConverterInputStream* getConverterInputStreamStruct()
	{
		return gConverterInputStream;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gConverterInputStream;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GConverterInputStream* gConverterInputStream)
	{
		super(cast(GFilterInputStream*)gConverterInputStream);
		this.gConverterInputStream = gConverterInputStream;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gConverterInputStream = cast(GConverterInputStream*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new converter input stream for the base_stream.
	 * Params:
	 * baseStream = a GInputStream
	 * converter = a GConverter
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GInputStream* baseStream, ConverterIF converter)
	{
		// GInputStream * g_converter_input_stream_new (GInputStream *base_stream,  GConverter *converter);
		auto p = g_converter_input_stream_new(baseStream, (converter is null) ? null : converter.getConverterTStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_converter_input_stream_new(baseStream, (converter is null) ? null : converter.getConverterTStruct())");
		}
		this(cast(GConverterInputStream*) p);
	}
	
	/**
	 * Gets the GConverter that is used by converter_stream.
	 * Since 2.24
	 * Returns: the converter of the converter input stream. [transfer none]
	 */
	public ConverterIF getConverter()
	{
		// GConverter * g_converter_input_stream_get_converter  (GConverterInputStream *converter_stream);
		auto p = g_converter_input_stream_get_converter(gConverterInputStream);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Converter)(cast(GConverter*) p);
	}
}
