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


module gdkpixbuf.Pixdata;

private import gdkpixbuf.Pixbuf;
private import gdkpixbuf.c.functions;
public  import gdkpixbuf.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.MemorySlice;
private import glib.Str;
private import glib.StringG;
private import linker.Loader;


/**
 * A pixel buffer suitable for serialization and streaming.
 * 
 * Using `GdkPixdata`, images can be compiled into an application,
 * making it unnecessary to refer to external image files at runtime.
 * 
 * `GdkPixbuf` includes a utility named `gdk-pixbuf-csource`, which
 * can be used to convert image files into `GdkPixdata` structures suitable
 * for inclusion in C sources. To convert the `GdkPixdata` structures back
 * into a `GdkPixbuf`, use `gdk_pixbuf_from_pixdata()`.
 * 
 * Deprecated: `GdkPixdata` should not be used any more. `GResource`
 * should be used to save the original compressed images inside the
 * program's binary
 */
public final class Pixdata
{
	/** the main Gtk struct */
	protected GdkPixdata* gdkPixdata;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkPixdata* getPixdataStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkPixdata;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkPixdata;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkPixdata* gdkPixdata, bool ownedRef = false)
	{
		this.gdkPixdata = gdkPixdata;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GDKPIXBUF[0]) && ownedRef )
			sliceFree(gdkPixdata);
	}

	/**
	 * Converts a `GdkPixbuf` to a `GdkPixdata`.
	 *
	 * If `use_rle` is `TRUE`, the pixel data is run-length encoded into
	 * newly-allocated memory and a pointer to that memory is returned.
	 *
	 * Deprecated: Use #GResource instead.
	 *
	 * Params:
	 *     pixbuf = the data to fill `pixdata` with.
	 *     useRle = whether to use run-length encoding for the pixel data.
	 *
	 * Returns: If `use_rle` is
	 *     `TRUE`, a pointer to the newly-allocated memory for the run-length
	 *     encoded pixel data, otherwise `NULL`.
	 */
	public ubyte[] fromPixbuf(Pixbuf pixbuf, bool useRle)
	{
		auto __p = gdk_pixdata_from_pixbuf(gdkPixdata, (pixbuf is null) ? null : pixbuf.getPixbufStruct(), useRle);

		return cast(ubyte[])__p[0 .. getArrayLength(cast(ubyte *)__p)];
	}

	/**
	 */

	/**
	 * magic number. A valid `GdkPixdata` structure must have
	 * `GDK_PIXBUF_MAGIC_NUMBER` here
	 */
	public @property uint magic()
	{
		return gdkPixdata.magic;
	}

	/** Ditto */
	public @property void magic(uint value)
	{
		gdkPixdata.magic = value;
	}

	/**
	 * less than 1 to disable length checks, otherwise
	 * `GDK_PIXDATA_HEADER_LENGTH` plus the length of `pixel_data`
	 */
	public @property int length()
	{
		return gdkPixdata.length;
	}

	/** Ditto */
	public @property void length(int value)
	{
		gdkPixdata.length = value;
	}

	/**
	 * information about colorspace, sample width and
	 * encoding, in a `GdkPixdataType`
	 */
	public @property uint pixdataType()
	{
		return gdkPixdata.pixdataType;
	}

	/** Ditto */
	public @property void pixdataType(uint value)
	{
		gdkPixdata.pixdataType = value;
	}

	/**
	 * Distance in bytes between rows
	 */
	public @property uint rowstride()
	{
		return gdkPixdata.rowstride;
	}

	/** Ditto */
	public @property void rowstride(uint value)
	{
		gdkPixdata.rowstride = value;
	}

	/**
	 * Width of the image in pixels
	 */
	public @property uint width()
	{
		return gdkPixdata.width;
	}

	/** Ditto */
	public @property void width(uint value)
	{
		gdkPixdata.width = value;
	}

	/**
	 * Height of the image in pixels
	 */
	public @property uint height()
	{
		return gdkPixdata.height;
	}

	/** Ditto */
	public @property void height(uint value)
	{
		gdkPixdata.height = value;
	}


	/**
	 * Deserializes (reconstruct) a #GdkPixdata structure from a byte stream.
	 *
	 * The byte stream consists of a straightforward writeout of the
	 * `GdkPixdata` fields in network byte order, plus the `pixel_data`
	 * bytes the structure points to.
	 *
	 * The `pixdata` contents are reconstructed byte by byte and are checked
	 * for validity.
	 *
	 * This function may fail with `GDK_PIXBUF_ERROR_CORRUPT_IMAGE`
	 * or `GDK_PIXBUF_ERROR_UNKNOWN_TYPE`.
	 *
	 * Deprecated: Use `GResource` instead.
	 *
	 * Params:
	 *     stream = stream of bytes containing a
	 *         serialized #GdkPixdata structure.
	 *
	 * Returns: Upon successful deserialization `TRUE` is returned,
	 *     `FALSE` otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool deserialize(ubyte[] stream)
	{
		GError* err = null;

		auto __p = gdk_pixdata_deserialize(gdkPixdata, cast(uint)stream.length, stream.ptr, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Serializes a #GdkPixdata structure into a byte stream.
	 * The byte stream consists of a straightforward writeout of the
	 * #GdkPixdata fields in network byte order, plus the @pixel_data
	 * bytes the structure points to.
	 *
	 * Deprecated: Use #GResource instead.
	 *
	 * Returns: A
	 *     newly-allocated string containing the serialized #GdkPixdata
	 *     structure.
	 */
	public ubyte[] serialize()
	{
		uint streamLengthP;

		auto __p = gdk_pixdata_serialize(gdkPixdata, &streamLengthP);

		return __p[0 .. streamLengthP];
	}

	/**
	 * Generates C source code suitable for compiling images directly
	 * into programs.
	 *
	 * GdkPixbuf ships with a program called `gdk-pixbuf-csource`, which offers
	 * a command line interface to this function.
	 *
	 * Deprecated: Use #GResource instead.
	 *
	 * Params:
	 *     name = used for naming generated data structures or macros
	 *     dumpType = the kind of C source to be generated
	 *
	 * Returns: a newly-allocated string buffer containing
	 *     the C source form of `pixdata`.
	 */
	public StringG toCsource(string name, GdkPixdataDumpType dumpType)
	{
		auto __p = gdk_pixdata_to_csource(gdkPixdata, Str.toStringz(name), dumpType);

		if(__p is null)
		{
			return null;
		}

		return new StringG(cast(GString*) __p, true);
	}
}
