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
 * inFile  = glib-Data-HMACs.html
 * outPack = glib
 * outFile = Hmac
 * strct   = GHmac
 * realStrct=
 * ctorStrct=
 * clss    = Hmac
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_hmac_
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_hmac_get_digest
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GHmac* -> Hmac
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Hmac;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * HMACs should be used when producing a cookie or hash based on data
 * and a key. Simple mechanisms for using SHA1 and other algorithms to
 * digest a key and data together are vulnerable to various security
 * issues. HMAC
 * uses algorithms like SHA1 in a secure way to produce a digest of a
 * key and data.
 *
 * Both the key and data are arbitrary byte arrays of bytes or characters.
 *
 * Support for HMAC Digests has been added in GLib 2.30.
 */
public class Hmac
{
	
	/** the main Gtk struct */
	protected GHmac* gHmac;
	
	
	public GHmac* getHmacStruct()
	{
		return gHmac;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gHmac;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GHmac* gHmac)
	{
		this.gHmac = gHmac;
	}
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GLIB) && gHmac !is null )
		{
			g_hmac_unref(gHmac);
		}
	}
	
	/**
	 * Gets the digest from checksum as a raw binary array and places it
	 * into buffer. The size of the digest depends on the type of checksum.
	 * Once this function has been called, the GHmac is closed and can
	 * no longer be updated with g_checksum_update().
	 * Since 2.30
	 * Params:
	 * buffer = output buffer
	 */
	public void getDigest(ref ubyte[] buffer)
	{
		// void g_hmac_get_digest (GHmac *hmac,  guint8 *buffer,  gsize *digest_len);
		size_t digestLen = buffer.length;
		
		g_hmac_get_digest(gHmac, buffer.ptr, &digestLen);
		
		buffer = buffer[0 .. digestLen];
	}
	
	/**
	 */
	
	/**
	 * Creates a new GHmac, using the digest algorithm digest_type.
	 * If the digest_type is not known, NULL is returned.
	 * A GHmac can be used to compute the HMAC of a key and an
	 * arbitrary binary blob, using different hashing algorithms.
	 * A GHmac works by feeding a binary blob through g_hmac_update()
	 * until the data is complete; the digest can then be extracted
	 * using g_hmac_get_string(), which will return the checksum as a
	 * hexadecimal string; or g_hmac_get_digest(), which will return a
	 * array of raw bytes. Once either g_hmac_get_string() or
	 * g_hmac_get_digest() have been called on a GHmac, the HMAC
	 * will be closed and it won't be possible to call g_hmac_update()
	 * on it anymore.
	 * Since 2.30
	 * Params:
	 * digestType = the desired type of digest
	 * key = the key for the HMAC. [array length=key_len]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GChecksumType digestType, char[] key)
	{
		// GHmac * g_hmac_new (GChecksumType digest_type,  const guchar *key,  gsize key_len);
		auto p = g_hmac_new(digestType, key.ptr, cast(int) key.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_hmac_new(digestType, key.ptr, cast(int) key.length)");
		}
		this(cast(GHmac*) p);
	}
	
	/**
	 * Copies a GHmac. If hmac has been closed, by calling
	 * g_hmac_get_string() or g_hmac_get_digest(), the copied
	 * HMAC will be closed as well.
	 * Since 2.30
	 * Returns: the copy of the passed GHmac. Use g_hmac_unref() when finished using it.
	 */
	public Hmac copy()
	{
		// GHmac * g_hmac_copy (const GHmac *hmac);
		auto p = g_hmac_copy(gHmac);
		
		if(p is null)
		{
			return null;
		}
		
		return new Hmac(cast(GHmac*) p);
	}
	
	/**
	 * Atomically increments the reference count of hmac by one.
	 * This function is MT-safe and may be called from any thread.
	 * Since 2.30
	 * Returns: the passed in GHmac.
	 */
	public Hmac doref()
	{
		// GHmac * g_hmac_ref (GHmac *hmac);
		auto p = g_hmac_ref(gHmac);
		
		if(p is null)
		{
			return null;
		}
		
		return new Hmac(cast(GHmac*) p);
	}
	
	/**
	 * Atomically decrements the reference count of hmac by one.
	 * If the reference count drops to 0, all keys and values will be
	 * destroyed, and all memory allocated by the hash table is released.
	 * This function is MT-safe and may be called from any thread.
	 * Frees the memory allocated for hmac.
	 * Since 2.30
	 */
	public void unref()
	{
		// void g_hmac_unref (GHmac *hmac);
		g_hmac_unref(gHmac);
	}
	
	/**
	 * Feeds data into an existing GHmac.
	 * The HMAC must still be open, that is g_hmac_get_string() or
	 * g_hmac_get_digest() must not have been called on hmac.
	 * Since 2.30
	 * Params:
	 * data = buffer used to compute the checksum. [array length=length]
	 */
	public void update(char[] data)
	{
		// void g_hmac_update (GHmac *hmac,  const guchar *data,  gssize length);
		g_hmac_update(gHmac, data.ptr, cast(int) data.length);
	}
	
	/**
	 * Gets the HMAC as an hexadecimal string.
	 * Once this function has been called the GHmac can no longer be
	 * updated with g_hmac_update().
	 * The hexadecimal characters will be lower case.
	 * Since 2.30
	 * Returns: the hexadecimal representation of the HMAC. The returned string is owned by the HMAC and should not be modified or freed.
	 */
	public string getString()
	{
		// const gchar * g_hmac_get_string (GHmac *hmac);
		return Str.toString(g_hmac_get_string(gHmac));
	}
	
	/**
	 * Computes the HMAC for a binary data of length. This is a
	 * convenience wrapper for g_hmac_new(), g_hmac_get_string()
	 * and g_hmac_unref().
	 * The hexadecimal string returned will be in lower case.
	 * Since 2.30
	 * Params:
	 * digestType = a GChecksumType to use for the HMAC
	 * key = the key to use in the HMAC. [array length=key_len]
	 * data = binary blob to compute the HMAC of
	 * Returns: the HMAC of the binary data as a string in hexadecimal. The returned string should be freed with g_free() when done using it.
	 */
	public static string computeHmacForData(GChecksumType digestType, char[] key, char[] data)
	{
		// gchar * g_compute_hmac_for_data (GChecksumType digest_type,  const guchar *key,  gsize key_len,  const guchar *data,  gsize length);
		return Str.toString(g_compute_hmac_for_data(digestType, key.ptr, cast(int) key.length, data.ptr, cast(int) data.length));
	}
	
	/**
	 * Computes the HMAC for a string.
	 * The hexadecimal string returned will be in lower case.
	 * Since 2.30
	 * Params:
	 * digestType = a GChecksumType to use for the HMAC
	 * key = the key to use in the HMAC. [array length=key_len]
	 * str = the string to compute the HMAC for
	 * Returns: the HMAC as a hexadecimal string. The returned string should be freed with g_free() when done using it.
	 */
	public static string computeHmacForString(GChecksumType digestType, char[] key, string str)
	{
		// gchar * g_compute_hmac_for_string (GChecksumType digest_type,  const guchar *key,  gsize key_len,  const gchar *str,  gssize length);
		return Str.toString(g_compute_hmac_for_string(digestType, key.ptr, cast(int) key.length, cast(char*)str.ptr, cast(int) str.length));
	}
}
