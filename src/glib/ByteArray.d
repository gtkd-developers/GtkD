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
 * inFile  = glib-Byte-Arrays.html
 * outPack = glib
 * outFile = ByteArray
 * strct   = GByteArray
 * realStrct=
 * ctorStrct=
 * clss    = ByteArray
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_byte_array_
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

module glib.ByteArray;

public  import gtkc.glibtypes;

private import gtkc.glib;






/**
 * Description
 * GByteArray is based on GArray, to provide arrays of bytes which grow
 * automatically as elements are added.
 * To create a new GByteArray use g_byte_array_new().
 * To add elements to a GByteArray, use g_byte_array_append(), and
 * g_byte_array_prepend().
 * To set the size of a GByteArray, use g_byte_array_set_size().
 * To free a GByteArray, use g_byte_array_free().
 * Example22.Using a GByteArray
 *  GByteArray *gbarray;
 *  gint i;
 *  gbarray = g_byte_array_new ();
 *  for (i = 0; i < 10000; i++)
 *  g_byte_array_append (gbarray, (guint8*) "abcd", 4);
 *  for (i = 0; i < 10000; i++)
 *  {
	 *  g_assert (gbarray->data[4*i] == 'a');
	 *  g_assert (gbarray->data[4*i+1] == 'b');
	 *  g_assert (gbarray->data[4*i+2] == 'c');
	 *  g_assert (gbarray->data[4*i+3] == 'd');
 *  }
 *  g_byte_array_free (gbarray, TRUE);
 */
public class ByteArray
{
	
	/** the main Gtk struct */
	protected GByteArray* gByteArray;
	
	
	public GByteArray* getByteArrayStruct()
	{
		return gByteArray;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gByteArray;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GByteArray* gByteArray)
	{
		if(gByteArray is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gByteArray passed to constructor.");
			else return;
		}
		this.gByteArray = gByteArray;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GByteArray.
	 */
	public this ()
	{
		// GByteArray* g_byte_array_new (void);
		auto p = g_byte_array_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GByteArray*) p);
	}
	
	/**
	 * Creates a new GByteArray with reserved_size bytes preallocated. This
	 * avoids frequent reallocation, if you are going to add many bytes to
	 * the array. Note however that the size of the array is still 0.
	 * Params:
	 * reservedSize = number of bytes preallocated.
	 * Returns:the new GByteArray.
	 */
	public static GByteArray* sizedNew(uint reservedSize)
	{
		// GByteArray* g_byte_array_sized_new (guint reserved_size);
		return g_byte_array_sized_new(reservedSize);
	}
	
	/**
	 * Adds the given bytes to the end of the GByteArray.
	 * The array will grow in size automatically if necessary.
	 * Params:
	 * data = the byte data to be added.
	 * len = the number of bytes to add.
	 * Returns:the GByteArray.
	 */
	public GByteArray* append(byte* data, uint len)
	{
		// GByteArray* g_byte_array_append (GByteArray *array,  const guint8 *data,  guint len);
		return g_byte_array_append(gByteArray, data, len);
	}
	
	/**
	 * Adds the given data to the start of the GByteArray.
	 * The array will grow in size automatically if necessary.
	 * Params:
	 * data = the byte data to be added.
	 * len = the number of bytes to add.
	 * Returns:the GByteArray.
	 */
	public GByteArray* prepend(byte* data, uint len)
	{
		// GByteArray* g_byte_array_prepend (GByteArray *array,  const guint8 *data,  guint len);
		return g_byte_array_prepend(gByteArray, data, len);
	}
	
	/**
	 * Removes the byte at the given index from a GByteArray.
	 * The following bytes are moved down one place.
	 * Params:
	 * index = the index of the byte to remove.
	 * Returns:the GByteArray.
	 */
	public GByteArray* removeIndex(uint index)
	{
		// GByteArray* g_byte_array_remove_index (GByteArray *array,  guint index_);
		return g_byte_array_remove_index(gByteArray, index);
	}
	
	/**
	 * Removes the byte at the given index from a GByteArray.
	 * The last element in the array is used to fill in the space, so this function
	 * does not preserve the order of the GByteArray. But it is faster than
	 * g_byte_array_remove_index().
	 * Params:
	 * index = the index of the byte to remove.
	 * Returns:the GByteArray.
	 */
	public GByteArray* removeIndexFast(uint index)
	{
		// GByteArray* g_byte_array_remove_index_fast (GByteArray *array,  guint index_);
		return g_byte_array_remove_index_fast(gByteArray, index);
	}
	
	/**
	 * Removes the given number of bytes starting at the given index from a
	 * GByteArray. The following elements are moved to close the gap.
	 * Since 2.4
	 * Params:
	 * index = the index of the first byte to remove.
	 * length = the number of bytes to remove.
	 * Returns:the GByteArray.
	 */
	public GByteArray* removeRange(uint index, uint length)
	{
		// GByteArray* g_byte_array_remove_range (GByteArray *array,  guint index_,  guint length);
		return g_byte_array_remove_range(gByteArray, index, length);
	}
	
	/**
	 * Sorts a byte array, using compare_func which should be a qsort()-style
	 * comparison function (returns less than zero for first arg is less than second
	 * arg, zero for equal, greater than zero if first arg is greater than second
	 * arg).
	 * If two array elements compare equal, their order in the sorted array is
	 * undefined.
	 * Params:
	 * compareFunc = comparison function.
	 */
	public void sort(GCompareFunc compareFunc)
	{
		// void g_byte_array_sort (GByteArray *array,  GCompareFunc compare_func);
		g_byte_array_sort(gByteArray, compareFunc);
	}
	
	/**
	 * Like g_byte_array_sort(), but the comparison function takes an extra user data
	 * argument.
	 * Params:
	 * compareFunc = comparison function.
	 * userData = data to pass to compare_func.
	 */
	public void sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		// void g_byte_array_sort_with_data (GByteArray *array,  GCompareDataFunc compare_func,  gpointer user_data);
		g_byte_array_sort_with_data(gByteArray, compareFunc, userData);
	}
	
	/**
	 * Sets the size of the GByteArray, expanding it if necessary.
	 * Params:
	 * length = the new size of the GByteArray.
	 * Returns:the GByteArray.
	 */
	public GByteArray* setSize(uint length)
	{
		// GByteArray* g_byte_array_set_size (GByteArray *array,  guint length);
		return g_byte_array_set_size(gByteArray, length);
	}
	
	/**
	 * Frees the memory allocated by the GByteArray.
	 * If free_segment is TRUE it frees the actual byte data.
	 * Params:
	 * freeSegment = if TRUE the actual byte data is freed as well.
	 * Returns:the element data if free_segment is FALSE, otherwise NULL
	 */
	public byte* free(int freeSegment)
	{
		// guint8* g_byte_array_free (GByteArray *array,  gboolean free_segment);
		return g_byte_array_free(gByteArray, freeSegment);
	}
}
