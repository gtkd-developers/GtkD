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
 * inFile  = GConverter.html
 * outPack = gio
 * outFile = ConverterIF
 * strct   = GConverter
 * realStrct=
 * ctorStrct=
 * clss    = ConverterT
 * interf  = ConverterIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_converter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ConverterIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;




/**
 * GConverter is implemented by objects that convert
 * binary data in various ways. The conversion can be
 * stateful and may fail at any place.
 *
 * Some example conversions are: character set conversion,
 * compression, decompression and regular expression
 * replace.
 */
public interface ConverterIF
{
	
	
	public GConverter* getConverterTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * This is the main operation used when converting data. It is to be called
	 * multiple times in a loop, and each time it will do some work, i.e.
	 * producing some output (in outbuf) or consuming some input (from inbuf) or
	 * both. If its not possible to do any work an error is returned.
	 * Note that a single call may not consume all input (or any input at all).
	 * Also a call may produce output even if given no input, due to state stored
	 * in the converter producing output.
	 * If any data was either produced or consumed, and then an error happens, then
	 * only the successful conversion is reported and the error is returned on the
	 * next call.
	 * A full conversion loop involves calling this method repeatedly, each time
	 * giving it new input and space output space. When there is no more input
	 * data after the data in inbuf, the flag G_CONVERTER_INPUT_AT_END must be set.
	 * The loop will be (unless some error happens) returning G_CONVERTER_CONVERTED
	 * each time until all data is consumed and all output is produced, then
	 * G_CONVERTER_FINISHED is returned instead. Note, that G_CONVERTER_FINISHED
	 * may be returned even if G_CONVERTER_INPUT_AT_END is not set, for instance
	 * in a decompression converter where the end of data is detectable from the
	 * data (and there might even be other data after the end of the compressed data).
	 * When some data has successfully been converted bytes_read and is set to
	 * the number of bytes read from inbuf, and bytes_written is set to indicate
	 * how many bytes was written to outbuf. If there are more data to output
	 * or consume (i.e. unless the G_CONVERTER_INPUT_AT_END is specified) then
	 * G_CONVERTER_CONVERTED is returned, and if no more data is to be output
	 * then G_CONVERTER_FINISHED is returned.
	 * On error G_CONVERTER_ERROR is returned and error is set accordingly.
	 * Since 2.24
	 * Params:
	 * inbuf = the buffer
	 * containing the data to convert. [array length=inbuf_size][element-type guint8]
	 * outbuf = a buffer to write converted data in.
	 * flags = a GConverterFlags controlling the conversion details
	 * bytesRead = will be set to the number of bytes read from inbuf on success. [out]
	 * bytesWritten = will be set to the number of bytes written to outbuf on success. [out]
	 * Returns: a GConverterResult, G_CONVERTER_ERROR on error.
	 * Throws: GException on failure.
	 */
	public GConverterResult convert(void[] inbuf, void[] outbuf, GConverterFlags flags, out gsize bytesRead, out gsize bytesWritten);
	
	/**
	 * Resets all internal state in the converter, making it behave
	 * as if it was just created. If the converter has any internal
	 * state that would produce output then that output is lost.
	 * Since 2.24
	 */
	public void reset();
}
