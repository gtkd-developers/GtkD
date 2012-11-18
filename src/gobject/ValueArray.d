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
 * inFile  = gobject-Value-arrays.html
 * outPack = gobject
 * outFile = ValueArray
 * strct   = GValueArray
 * realStrct=
 * ctorStrct=
 * clss    = ValueArray
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_value_array_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.Value
 * structWrap:
 * 	- GValue* -> Value
 * 	- GValueArray* -> ValueArray
 * module aliases:
 * local aliases:
 * overrides:
 */

module gobject.ValueArray;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gobject.Value;




/**
 * Description
 * The prime purpose of a GValueArray is for it to be used as an
 * object property that holds an array of values. A GValueArray wraps
 * an array of GValue elements in order for it to be used as a boxed
 * type through G_TYPE_VALUE_ARRAY.
 * GValueArray is deprecated in favour of GArray since GLib 2.32. It
 * is possible to create a GArray that behaves like a GValueArray by
 * using the size of GValue as the element size, and by setting
 * g_value_unset() as the clear function using g_array_set_clear_func(),
 * for instance, the following code:
 * $(DDOC_COMMENT example)
 * can be replaced by:
 * $(DDOC_COMMENT example)
 */
public class ValueArray
{
	
	/** the main Gtk struct */
	protected GValueArray* gValueArray;
	
	
	public GValueArray* getValueArrayStruct()
	{
		return gValueArray;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gValueArray;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GValueArray* gValueArray)
	{
		this.gValueArray = gValueArray;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * g_value_array_get_nth has been deprecated since version 2.32 and should not be used in newly-written code. Use g_array_index() instead.
	 * Return a pointer to the value at index_ containd in value_array.
	 * Params:
	 * index = index of the value of interest
	 * Returns: pointer to a value at index_ in value_array. [transfer none]
	 */
	public Value getNth(uint index)
	{
		// GValue * g_value_array_get_nth (GValueArray *value_array,  guint index_);
		auto p = g_value_array_get_nth(gValueArray, index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
	
	/**
	 * Warning
	 * g_value_array_new has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray and g_array_sized_new() instead.
	 * Allocate and initialize a new GValueArray, optionally preserve space
	 * for n_prealloced elements. New arrays always contain 0 elements,
	 * regardless of the value of n_prealloced.
	 * Params:
	 * nPrealloced = number of values to preallocate space for
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (uint nPrealloced)
	{
		// GValueArray * g_value_array_new (guint n_prealloced);
		auto p = g_value_array_new(nPrealloced);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_value_array_new(nPrealloced)");
		}
		this(cast(GValueArray*) p);
	}
	
	/**
	 * Warning
	 * g_value_array_copy has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray and g_array_ref() instead.
	 * Construct an exact copy of a GValueArray by duplicating all its
	 * contents.
	 * Returns: Newly allocated copy of GValueArray. [transfer full]
	 */
	public ValueArray copy()
	{
		// GValueArray * g_value_array_copy (const GValueArray *value_array);
		auto p = g_value_array_copy(gValueArray);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ValueArray)(cast(GValueArray*) p);
	}
	
	/**
	 * Warning
	 * g_value_array_free has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray and g_array_unref() instead.
	 * Free a GValueArray including its contents.
	 */
	public void free()
	{
		// void g_value_array_free (GValueArray *value_array);
		g_value_array_free(gValueArray);
	}
	
	/**
	 * Warning
	 * g_value_array_append has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray and g_array_append_val() instead.
	 * Insert a copy of value as last element of value_array. If value is
	 * NULL, an uninitialized value is appended.
	 * Params:
	 * value = GValue to copy into GValueArray, or NULL. [allow-none]
	 * Returns: the GValueArray passed in as value_array. [transfer none]
	 */
	public ValueArray append(Value value)
	{
		// GValueArray * g_value_array_append (GValueArray *value_array,  const GValue *value);
		auto p = g_value_array_append(gValueArray, (value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ValueArray)(cast(GValueArray*) p);
	}
	
	/**
	 * Warning
	 * g_value_array_prepend has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray and g_array_prepend_val() instead.
	 * Insert a copy of value as first element of value_array. If value is
	 * NULL, an uninitialized value is prepended.
	 * Params:
	 * value = GValue to copy into GValueArray, or NULL. [allow-none]
	 * Returns: the GValueArray passed in as value_array. [transfer none]
	 */
	public ValueArray prepend(Value value)
	{
		// GValueArray * g_value_array_prepend (GValueArray *value_array,  const GValue *value);
		auto p = g_value_array_prepend(gValueArray, (value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ValueArray)(cast(GValueArray*) p);
	}
	
	/**
	 * Warning
	 * g_value_array_insert has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray and g_array_insert_val() instead.
	 * Insert a copy of value at specified position into value_array. If value
	 * is NULL, an uninitialized value is inserted.
	 * Params:
	 * index = insertion position, must be <= value_array->n_values
	 * value = GValue to copy into GValueArray, or NULL. [allow-none]
	 * Returns: the GValueArray passed in as value_array. [transfer none]
	 */
	public ValueArray insert(uint index, Value value)
	{
		// GValueArray * g_value_array_insert (GValueArray *value_array,  guint index_,  const GValue *value);
		auto p = g_value_array_insert(gValueArray, index, (value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ValueArray)(cast(GValueArray*) p);
	}
	
	/**
	 * Warning
	 * g_value_array_remove has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray and g_array_remove_index() instead.
	 * Remove the value at position index_ from value_array.
	 * Params:
	 * index = position of value to remove, which must be less than
	 * value_array->n_values
	 * Returns: the GValueArray passed in as value_array. [transfer none]
	 */
	public ValueArray remove(uint index)
	{
		// GValueArray * g_value_array_remove (GValueArray *value_array,  guint index_);
		auto p = g_value_array_remove(gValueArray, index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ValueArray)(cast(GValueArray*) p);
	}
	
	/**
	 * Warning
	 * g_value_array_sort has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray and g_array_sort().
	 * Sort value_array using compare_func to compare the elements according to
	 * the semantics of GCompareFunc.
	 * The current implementation uses Quick-Sort as sorting algorithm.
	 * Params:
	 * compareFunc = function to compare elements. [scope call]
	 * Returns: the GValueArray passed in as value_array. [transfer none]
	 */
	public ValueArray sort(GCompareFunc compareFunc)
	{
		// GValueArray * g_value_array_sort (GValueArray *value_array,  GCompareFunc compare_func);
		auto p = g_value_array_sort(gValueArray, compareFunc);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ValueArray)(cast(GValueArray*) p);
	}
	
	/**
	 * Warning
	 * g_value_array_sort_with_data has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray and g_array_sort_with_data().
	 * Sort value_array using compare_func to compare the elements according
	 * to the semantics of GCompareDataFunc.
	 * The current implementation uses Quick-Sort as sorting algorithm.
	 * Rename to: g_value_array_sort
	 * Params:
	 * compareFunc = function to compare elements. [scope call]
	 * userData = extra data argument provided for compare_func. [closure]
	 * Returns: the GValueArray passed in as value_array. [transfer none]
	 */
	public ValueArray sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		// GValueArray * g_value_array_sort_with_data (GValueArray *value_array,  GCompareDataFunc compare_func,  gpointer user_data);
		auto p = g_value_array_sort_with_data(gValueArray, compareFunc, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ValueArray)(cast(GValueArray*) p);
	}
}
