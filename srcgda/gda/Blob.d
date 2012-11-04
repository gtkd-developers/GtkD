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
 * inFile  = libgda-gda-blob.html
 * outPack = gda
 * outFile = Blob
 * strct   = GdaBlob
 * realStrct=
 * ctorStrct=
 * clss    = Blob
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_blob_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.Blob;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;






/**
 * Description
 */
public class Blob
{
	
	/** the main Gtk struct */
	protected GdaBlob* gdaBlob;
	
	
	public GdaBlob* getBlobStruct()
	{
		return gdaBlob;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaBlob;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaBlob* gdaBlob)
	{
		this.gdaBlob = gdaBlob;
	}
	
	/**
	 */
	
	/**
	 * Opens an existing BLOB. The BLOB must be initialized by
	 * gda_connection_create_blob or obtained from a GdaValue.
	 * Params:
	 * mode = see GdaBlobMode.
	 * Returns: 0 if everything's ok. In case of error, -1 is returned and the provider should have added an error to the connection.
	 */
	public int open(GdaBlobMode mode)
	{
		// gint gda_blob_open (GdaBlob *blob,  GdaBlobMode mode);
		return gda_blob_open(gdaBlob, mode);
	}
	
	/**
	 * Reads a chunk of bytes from the BLOB into a user-provided location.
	 * Params:
	 * buf = buffer to read the data into.
	 * size = maximum number of bytes to read.
	 * bytesRead = on return it will point to the number of bytes actually read.
	 * Returns: 0 if everything's ok. In case of error, -1 is returned and the provider should have added an error to the connection.
	 */
	public int read(void* buf, int size, out int bytesRead)
	{
		// gint gda_blob_read (GdaBlob *blob,  gpointer buf,  gint size,  gint *bytes_read);
		return gda_blob_read(gdaBlob, buf, size, &bytesRead);
	}
	
	/**
	 * Writes a chunk of bytes from a user-provided location to the BLOB.
	 * Params:
	 * buf = buffer to write the data from.
	 * size = maximum number of bytes to read.
	 * bytesWritten = on return it will point to the number of bytes actually written.
	 * Returns: 0 if everything's ok. In case of error, -1 is returned and the provider should have added an error to the connection.
	 */
	public int write(void* buf, int size, out int bytesWritten)
	{
		// gint gda_blob_write (GdaBlob *blob,  gpointer buf,  gint size,  gint *bytes_written);
		return gda_blob_write(gdaBlob, buf, size, &bytesWritten);
	}
	
	/**
	 * Sets the blob read/write position.
	 * Params:
	 * offset = offset added to the position specified by whence.
	 * whence = SEEK_SET, SEEK_CUR or SEEK_END with the same meaning as in fseek(3).
	 * Returns: the current position in the blob or < 0 in case of error. In case of error the provider should have added an error to the connection.
	 */
	public int lseek(int offset, int whence)
	{
		// gint gda_blob_lseek (GdaBlob *blob,  gint offset,  gint whence);
		return gda_blob_lseek(gdaBlob, offset, whence);
	}
	
	/**
	 * Closes the BLOB. After calling this function, blob should no longer be used.
	 * Returns: 0 if everything's ok. In case of error, -1 is returned and the provider should have added an error to the connection.
	 */
	public int close()
	{
		// gint gda_blob_close (GdaBlob *blob);
		return gda_blob_close(gdaBlob);
	}
	
	/**
	 * Removes the BLOB from the database. After calling this function, blob
	 * should no longer be used.
	 * Returns: 0 if everything's ok. In case of error, -1 is returned and the provider should have added an error to the connection.
	 */
	public int remove()
	{
		// gint gda_blob_remove (GdaBlob *blob);
		return gda_blob_remove(gdaBlob);
	}
	
	/**
	 * Let the provider free any internal data stored in blob. The user
	 * is still responsible for deallocating blob itself.
	 */
	public void freeData()
	{
		// void gda_blob_free_data (GdaBlob *blob);
		gda_blob_free_data(gdaBlob);
	}
}
