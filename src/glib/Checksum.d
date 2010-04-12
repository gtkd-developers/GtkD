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
 * inFile  = glib-Data-Checksums.html
 * outPack = glib
 * outFile = Checksum
 * strct   = GChecksum
 * realStrct=
 * ctorStrct=
 * clss    = Checksum
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_checksum_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GChecksum* -> Checksum
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Checksum;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * Description
 * GLib provides a generic API for computing checksums (or "digests") for a
 * sequence of arbitrary bytes, using various hashing algorithms like MD5,
 * SHA-1 and SHA-256. Checksums are commonly used in various environments and
 * specifications.
 * GLib supports incremental checksums using the GChecksum data structure, by
 * calling g_checksum_update() as long as there's data available and then using
 * g_checksum_get_string() or g_checksum_get_digest() to compute the checksum
 * and return it either as a string in hexadecimal form, or as a raw sequence
 * of bytes. To compute the checksum for binary blobs and NUL-terminated strings
 * in one go, use the convenience functions g_compute_checksum_for_data() and
 * g_compute_checksum_for_string(), respectively.
 * Support for checksums has been added in GLib 2.16
 */
public class Checksum
{
	
	/** the main Gtk struct */
	protected GChecksum* gChecksum;
	
	
	public GChecksum* getChecksumStruct()
	{
		return gChecksum;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gChecksum;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GChecksum* gChecksum)
	{
		if(gChecksum is null)
		{
			this = null;
			return;
		}
		this.gChecksum = gChecksum;
	}
	
	/**
	 */
	
	/**
	 * Gets the length in bytes of digests of type checksum_type
	 * Since 2.16
	 * Params:
	 * checksumType = a GChecksumType
	 */
	public static int typeGetLength(GChecksumType checksumType)
	{
		// gssize g_checksum_type_get_length (GChecksumType checksum_type);
		return g_checksum_type_get_length(checksumType);
	}
	
	/**
	 * Creates a new GChecksum, using the checksum algorithm checksum_type.
	 * If the checksum_type is not known, NULL is returned.
	 * A GChecksum can be used to compute the checksum, or digest, of an
	 * arbitrary binary blob, using different hashing algorithms.
	 * A GChecksum works by feeding a binary blob through g_checksum_update()
	 * until there is data to be checked; the digest can then be extracted
	 * using g_checksum_get_string(), which will return the checksum as a
	 * hexadecimal string; or g_checksum_get_digest(), which will return a
	 * vector of raw bytes. Once either g_checksum_get_string() or
	 * g_checksum_get_digest() have been called on a GChecksum, the checksum
	 * will be closed and it won't be possible to call g_checksum_update()
	 * on it anymore.
	 * Since 2.16
	 * Params:
	 * checksumType = the desired type of checksum
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GChecksumType checksumType)
	{
		// GChecksum * g_checksum_new (GChecksumType checksum_type);
		auto p = g_checksum_new(checksumType);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_checksum_new(checksumType)");
		}
		this(cast(GChecksum*) p);
	}
	
	/**
	 * Copies a GChecksum. If checksum has been closed, by calling
	 * g_checksum_get_string() or g_checksum_get_digest(), the copied
	 * checksum will be closed as well.
	 * Since 2.16
	 */
	public Checksum copy()
	{
		// GChecksum * g_checksum_copy (const GChecksum *checksum);
		auto p = g_checksum_copy(gChecksum);
		if(p is null)
		{
			return null;
		}
		return new Checksum(cast(GChecksum*) p);
	}
	
	/**
	 * Frees the memory allocated for checksum.
	 * Since 2.16
	 */
	public void free()
	{
		// void g_checksum_free (GChecksum *checksum);
		g_checksum_free(gChecksum);
	}
	
	/**
	 * Resets the state of the checksum back to its initial state.
	 * Since 2.18
	 */
	public void reset()
	{
		// void g_checksum_reset (GChecksum *checksum);
		g_checksum_reset(gChecksum);
	}
	
	/**
	 * Feeds data into an existing GChecksum. The checksum must still be
	 * open, that is g_checksum_get_string() or g_checksum_get_digest() must
	 * not have been called on checksum.
	 * Since 2.16
	 * Params:
	 * data = buffer used to compute the checksum
	 * length = size of the buffer, or -1 if it is a null-terminated string.
	 */
	public void update(char* data, int length)
	{
		// void g_checksum_update (GChecksum *checksum,  const guchar *data,  gssize length);
		g_checksum_update(gChecksum, data, length);
	}
	
	/**
	 * Gets the digest as an hexadecimal string.
	 * Once this function has been called the GChecksum can no longer be
	 * updated with g_checksum_update().
	 * The hexadecimal characters will be lower case.
	 * Since 2.16
	 */
	public string getString()
	{
		// const gchar * g_checksum_get_string (GChecksum *checksum);
		return Str.toString(g_checksum_get_string(gChecksum));
	}
	
	/**
	 * Gets the digest from checksum as a raw binary vector and places it
	 * into buffer. The size of the digest depends on the type of checksum.
	 * Once this function has been called, the GChecksum is closed and can
	 * no longer be updated with g_checksum_update().
	 * Since 2.16
	 * Params:
	 * buffer = output buffer
	 * digestLen = an inout parameter. The caller initializes it to the size of buffer.
	 *  After the call it contains the length of the digest.
	 */
	public void getDigest(ubyte* buffer, uint* digestLen)
	{
		// void g_checksum_get_digest (GChecksum *checksum,  guint8 *buffer,  gsize *digest_len);
		g_checksum_get_digest(gChecksum, buffer, digestLen);
	}
	
	/**
	 * Computes the checksum for a binary data of length. This is a
	 * convenience wrapper for g_checksum_new(), g_checksum_get_string()
	 * and g_checksum_free().
	 * The hexadecimal string returned will be in lower case.
	 * Since 2.16
	 * Params:
	 * checksumType = a GChecksumType
	 * data = binary blob to compute the digest of
	 * length = length of data
	 */
	public static string gComputeChecksumForData(GChecksumType checksumType, char* data, uint length)
	{
		// gchar * g_compute_checksum_for_data (GChecksumType checksum_type,  const guchar *data,  gsize length);
		return Str.toString(g_compute_checksum_for_data(checksumType, data, length));
	}
	
	/**
	 * Computes the checksum of a string.
	 * The hexadecimal string returned will be in lower case.
	 * Since 2.16
	 * Params:
	 * checksumType = a GChecksumType
	 * str = the string to compute the checksum of
	 * length = the length of the string, or -1 if the string is null-terminated.
	 */
	public static string gComputeChecksumForString(GChecksumType checksumType, string str, int length)
	{
		// gchar * g_compute_checksum_for_string (GChecksumType checksum_type,  const gchar *str,  gssize length);
		return Str.toString(g_compute_checksum_for_string(checksumType, Str.toStringz(str), length));
	}
}
