/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gobject
 * outFile = ValueArray
 * strct   = GValueArray
 * realStrct=
 * clss    = ValueArray
 * extend  = 
 * prefixes:
 * 	- g_value_array_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gobject.Value
 * 	- gobject.ValueArray
 * structWrap:
 * 	- GValue* -> Value
 * 	- GValueArray* -> ValueArray
 * local aliases:
 */

module gobject.ValueArray;

private import gobject.typedefs;

private import lib.gobject;

private import gobject.Value;
private import gobject.ValueArray;

/**
 * Description
 * The prime purpose of a GValueArray is for it to be used as an object property
 * that holds an array of values. A GValueArray wraps an array of GValue elements
 * in order for it to be used as a boxed type through G_TYPE_VALUE_ARRAY.
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
	 * Return a pointer to the value at index_ containd in value_array.
	 * value_array:
	 * GValueArray to get a value from
	 * index_:
	 *  index of the value of interest
	 * Returns:
	 *  pointer to a value at index_ in value_array
	 */
	public Value getNth(uint index)
	{
		// GValue* g_value_array_get_nth (GValueArray *value_array,  guint index_);
		return new Value( g_value_array_get_nth(gValueArray, index) );
	}
	
	/**
	 * Allocate and initialize a new GValueArray, optionally preserve space
	 * for n_prealloced elements. New arrays always contain 0 elements,
	 * regardless of the value of n_prealloced.
	 * n_prealloced:
	 * number of values to preallocate space for
	 * Returns:
	 *  a newly allocated GValueArray with 0 values
	 */
	public this (uint nPrealloced)
	{
		// GValueArray* g_value_array_new (guint n_prealloced);
		this(cast(GValueArray*)g_value_array_new(nPrealloced) );
	}
	
	/**
	 * Construct an exact copy of a GValueArray by duplicating all its
	 * contents.
	 * value_array:
	 * GValueArray to copy
	 * Returns:
	 *  Newly allocated copy of GValueArray
	 */
	public ValueArray copy()
	{
		// GValueArray* g_value_array_copy (const GValueArray *value_array);
		return new ValueArray( g_value_array_copy(gValueArray) );
	}
	
	/**
	 * Free a GValueArray including its contents.
	 * value_array:
	 * GValueArray to free
	 */
	public void free()
	{
		// void g_value_array_free (GValueArray *value_array);
		g_value_array_free(gValueArray);
	}
	
	/**
	 * Insert a copy of value as last element of value_array.
	 * value_array:
	 * GValueArray to add an element to
	 * value:
	 *  GValue to copy into GValueArray
	 * Returns:
	 *  the GValueArray passed in as value_array
	 */
	public ValueArray append(Value value)
	{
		// GValueArray* g_value_array_append (GValueArray *value_array,  const GValue *value);
		return new ValueArray( g_value_array_append(gValueArray, (value is null) ? null : value.getValueStruct()) );
	}
	
	/**
	 * Insert a copy of value as first element of value_array.
	 * value_array:
	 * GValueArray to add an element to
	 * value:
	 *  GValue to copy into GValueArray
	 * Returns:
	 *  the GValueArray passed in as value_array
	 */
	public ValueArray prepend(Value value)
	{
		// GValueArray* g_value_array_prepend (GValueArray *value_array,  const GValue *value);
		return new ValueArray( g_value_array_prepend(gValueArray, (value is null) ? null : value.getValueStruct()) );
	}
	
	/**
	 * Insert a copy of value at specified position into value_array.
	 * value_array:
	 * GValueArray to add an element to
	 * index_:
	 *  insertion position, must be <= value_array->n_values
	 * value:
	 *  GValue to copy into GValueArray
	 * Returns:
	 *  the GValueArray passed in as value_array
	 */
	public ValueArray insert(uint index, Value value)
	{
		// GValueArray* g_value_array_insert (GValueArray *value_array,  guint index_,  const GValue *value);
		return new ValueArray( g_value_array_insert(gValueArray, index, (value is null) ? null : value.getValueStruct()) );
	}
	
	/**
	 * Remove the value at position index_ from value_array.
	 * value_array:
	 * GValueArray to remove an element from
	 * index_:
	 *  position of value to remove, must be < value_array->n_values
	 * Returns:
	 *  the GValueArray passed in as value_array
	 */
	public ValueArray remove(uint index)
	{
		// GValueArray* g_value_array_remove (GValueArray *value_array,  guint index_);
		return new ValueArray( g_value_array_remove(gValueArray, index) );
	}
	
	/**
	 * Sort value_array using compare_func to compare the elements accoring to
	 * the semantics of GCompareFunc.
	 * The current implementation uses Quick-Sort as sorting algorithm.
	 * value_array:
	 *  GValueArray to sort
	 * compare_func:
	 * function to compare elements
	 * Returns:
	 *  the GValueArray passed in as value_array
	 */
	public ValueArray sort(GCompareFunc compareFunc)
	{
		// GValueArray* g_value_array_sort (GValueArray *value_array,  GCompareFunc compare_func);
		return new ValueArray( g_value_array_sort(gValueArray, compareFunc) );
	}
	
	/**
	 * Sort value_array using compare_func to compare the elements accoring
	 * to the semantics of GCompareDataFunc.
	 * The current implementation uses Quick-Sort as sorting algorithm.
	 * value_array:
	 *  GValueArray to sort
	 * compare_func:
	 *  function to compare elements
	 * user_data:
	 *  extra data argument provided for compare_func
	 * Returns:
	 *  the GValueArray passed in as value_array
	 * See Also
	 * GValue, GParamSpecValueArray, g_param_spec_value_array()
	 */
	public ValueArray sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		// GValueArray* g_value_array_sort_with_data (GValueArray *value_array,  GCompareDataFunc compare_func,  gpointer user_data);
		return new ValueArray( g_value_array_sort_with_data(gValueArray, compareFunc, userData) );
	}
}
