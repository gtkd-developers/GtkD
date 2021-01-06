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


module gio.ConverterT;

public  import gio.c.functions;
public  import gio.c.types;
public  import glib.ErrorG;
public  import glib.GException;


/**
 * #GConverter is implemented by objects that convert
 * binary data in various ways. The conversion can be
 * stateful and may fail at any place.
 * 
 * Some example conversions are: character set conversion,
 * compression, decompression and regular expression
 * replace.
 *
 * Since: 2.24
 */
public template ConverterT(TStruct)
{
	/** Get the main Gtk struct */
	public GConverter* getConverterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GConverter*)getStruct();
	}


	/**
	 * This is the main operation used when converting data. It is to be called
	 * multiple times in a loop, and each time it will do some work, i.e.
	 * producing some output (in @outbuf) or consuming some input (from @inbuf) or
	 * both. If its not possible to do any work an error is returned.
	 *
	 * Note that a single call may not consume all input (or any input at all).
	 * Also a call may produce output even if given no input, due to state stored
	 * in the converter producing output.
	 *
	 * If any data was either produced or consumed, and then an error happens, then
	 * only the successful conversion is reported and the error is returned on the
	 * next call.
	 *
	 * A full conversion loop involves calling this method repeatedly, each time
	 * giving it new input and space output space. When there is no more input
	 * data after the data in @inbuf, the flag %G_CONVERTER_INPUT_AT_END must be set.
	 * The loop will be (unless some error happens) returning %G_CONVERTER_CONVERTED
	 * each time until all data is consumed and all output is produced, then
	 * %G_CONVERTER_FINISHED is returned instead. Note, that %G_CONVERTER_FINISHED
	 * may be returned even if %G_CONVERTER_INPUT_AT_END is not set, for instance
	 * in a decompression converter where the end of data is detectable from the
	 * data (and there might even be other data after the end of the compressed data).
	 *
	 * When some data has successfully been converted @bytes_read and is set to
	 * the number of bytes read from @inbuf, and @bytes_written is set to indicate
	 * how many bytes was written to @outbuf. If there are more data to output
	 * or consume (i.e. unless the %G_CONVERTER_INPUT_AT_END is specified) then
	 * %G_CONVERTER_CONVERTED is returned, and if no more data is to be output
	 * then %G_CONVERTER_FINISHED is returned.
	 *
	 * On error %G_CONVERTER_ERROR is returned and @error is set accordingly.
	 * Some errors need special handling:
	 *
	 * %G_IO_ERROR_NO_SPACE is returned if there is not enough space
	 * to write the resulting converted data, the application should
	 * call the function again with a larger @outbuf to continue.
	 *
	 * %G_IO_ERROR_PARTIAL_INPUT is returned if there is not enough
	 * input to fully determine what the conversion should produce,
	 * and the %G_CONVERTER_INPUT_AT_END flag is not set. This happens for
	 * example with an incomplete multibyte sequence when converting text,
	 * or when a regexp matches up to the end of the input (and may match
	 * further input). It may also happen when @inbuf_size is zero and
	 * there is no more data to produce.
	 *
	 * When this happens the application should read more input and then
	 * call the function again. If further input shows that there is no
	 * more data call the function again with the same data but with
	 * the %G_CONVERTER_INPUT_AT_END flag set. This may cause the conversion
	 * to finish as e.g. in the regexp match case (or, to fail again with
	 * %G_IO_ERROR_PARTIAL_INPUT in e.g. a charset conversion where the
	 * input is actually partial).
	 *
	 * After g_converter_convert() has returned %G_CONVERTER_FINISHED the
	 * converter object is in an invalid state where its not allowed
	 * to call g_converter_convert() anymore. At this time you can only
	 * free the object or call g_converter_reset() to reset it to the
	 * initial state.
	 *
	 * If the flag %G_CONVERTER_FLUSH is set then conversion is modified
	 * to try to write out all internal state to the output. The application
	 * has to call the function multiple times with the flag set, and when
	 * the available input has been consumed and all internal state has
	 * been produced then %G_CONVERTER_FLUSHED (or %G_CONVERTER_FINISHED if
	 * really at the end) is returned instead of %G_CONVERTER_CONVERTED.
	 * This is somewhat similar to what happens at the end of the input stream,
	 * but done in the middle of the data.
	 *
	 * This has different meanings for different conversions. For instance
	 * in a compression converter it would mean that we flush all the
	 * compression state into output such that if you uncompress the
	 * compressed data you get back all the input data. Doing this may
	 * make the final file larger due to padding though. Another example
	 * is a regexp conversion, where if you at the end of the flushed data
	 * have a match, but there is also a potential longer match. In the
	 * non-flushed case we would ask for more input, but when flushing we
	 * treat this as the end of input and do the match.
	 *
	 * Flushing is not always possible (like if a charset converter flushes
	 * at a partial multibyte sequence). Converters are supposed to try
	 * to produce as much output as possible and then return an error
	 * (typically %G_IO_ERROR_PARTIAL_INPUT).
	 *
	 * Params:
	 *     inbuf = the buffer
	 *         containing the data to convert.
	 *     outbuf = a buffer to write
	 *         converted data in.
	 *     flags = a #GConverterFlags controlling the conversion details
	 *     bytesRead = will be set to the number of bytes read from @inbuf on success
	 *     bytesWritten = will be set to the number of bytes written to @outbuf on success
	 *
	 * Returns: a #GConverterResult, %G_CONVERTER_ERROR on error.
	 *
	 * Since: 2.24
	 *
	 * Throws: GException on failure.
	 */
	public GConverterResult convert(ubyte[] inbuf, ubyte[] outbuf, GConverterFlags flags, out size_t bytesRead, out size_t bytesWritten)
	{
		GError* err = null;

		auto __p = g_converter_convert(getConverterStruct(), inbuf.ptr, cast(size_t)inbuf.length, outbuf.ptr, cast(size_t)outbuf.length, flags, &bytesRead, &bytesWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Resets all internal state in the converter, making it behave
	 * as if it was just created. If the converter has any internal
	 * state that would produce output then that output is lost.
	 *
	 * Since: 2.24
	 */
	public void reset()
	{
		g_converter_reset(getConverterStruct());
	}
}
