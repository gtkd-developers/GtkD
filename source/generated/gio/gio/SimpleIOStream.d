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


module gio.SimpleIOStream;

private import gio.IOStream;
private import gio.InputStream;
private import gio.OutputStream;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * GSimpleIOStream creates a #GIOStream from an arbitrary #GInputStream and
 * #GOutputStream. This allows any pair of input and output streams to be used
 * with #GIOStream methods.
 * 
 * This is useful when you obtained a #GInputStream and a #GOutputStream
 * by other means, for instance creating them with platform specific methods as
 * g_unix_input_stream_new() or g_win32_input_stream_new(), and you want
 * to take advantage of the methods provided by #GIOStream.
 *
 * Since: 2.44
 */
public class SimpleIOStream : IOStream
{
	/** the main Gtk struct */
	protected GSimpleIOStream* gSimpleIOStream;

	/** Get the main Gtk struct */
	public GSimpleIOStream* getSimpleIOStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSimpleIOStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimpleIOStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSimpleIOStream* gSimpleIOStream, bool ownedRef = false)
	{
		this.gSimpleIOStream = gSimpleIOStream;
		super(cast(GIOStream*)gSimpleIOStream, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_simple_io_stream_get_type();
	}

	/**
	 * Creates a new #GSimpleIOStream wrapping @input_stream and @output_stream.
	 * See also #GIOStream.
	 *
	 * Params:
	 *     inputStream = a #GInputStream.
	 *     outputStream = a #GOutputStream.
	 *
	 * Returns: a new #GSimpleIOStream instance.
	 *
	 * Since: 2.44
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InputStream inputStream, OutputStream outputStream)
	{
		auto __p = g_simple_io_stream_new((inputStream is null) ? null : inputStream.getInputStreamStruct(), (outputStream is null) ? null : outputStream.getOutputStreamStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSimpleIOStream*) __p, true);
	}
}
