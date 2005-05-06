/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 */

/*
 * written by Antonio Monteiro
 */

module dool.Array;
/**
 * This is a simple wrapper for the common D arrays.
 * this is limited to one dimension arrays - should be renamed Vector
 * Provides some simple functionalities missing on natives arrays:
 * - full support for dinamic creation
 * - insert on an arbitrary index
 * - remove by index or element
 * 
 */
public
class ArrayC(T)
{
	/** the native array to support this Array */
	T[] array;
	
	version(nonPhobos) private import dool.system.stdio;
	else private import std.c.stdio;
	/** defines the type for ourselfs */
	private alias .ArrayC!(T) Array;
	
	/**
	 * Creates and initializes a new Array
	 */
	this(...)
	{
		array.length = _arguments.length;
		for (int i = 0; i < _arguments.length; i++)
		{
			//assert( _arguments[i] == typeid(T) ); 
			// TODO wait for typeinfo update on DMD
			array[i] = *cast(T*)_argptr;
			_argptr += T.sizeof;
		}
	}
	
	/**
	 * Duplicates and existion array
	 * this is a shallow copy
	 */
	this(T[] array)
	{
		this.array = array.dup;
	}

	/**
	 * the number of elements on the Array
	 */
	int length()
	{
		return array.length;
	}

	/**
	 * Get the index of the element
	 * @return -1 if the element is not in the array
	 */
	int indexOf(T element)
	{
		int i = array.length -1;
		while ( i >=0 && array[i] != element)
		{
			--i;
		}
		return i;
	}
	
	/**
	 * returns the element at the index
	 */
	T opIndex(int index)
	{
		return array[index];
	}

	/**
	 * creates a new array that is a copy of this array plus the element t 
	 */
	Array opCat(T t)
	{
		Array a = new Array(array);
		a ~= t;
		return a;
		//return new A(array, t);
	}
	
	/**
	 * creates a new array that is a copy of this array plus the array passed
	 */
	Array opCat(T[] array)
	{
		return new Array(this.array ~ array);
	}
	
	
	Array opCatAssign(T[] array)
	{
		this.array ~= array;
		return this;
	}

	Array opCatAssign(T t)
	{
		array ~= t;
		return this;
	}
	
	void opIndexAssign(T t, int index)
	{
		array[index] = t;
	}
	
	Array opSlice(int start, int end)
	{
		return new Array(array[start..end]);
	}
	
	T[] toArray()
	{
		return array;
	}

	int opApply(int delegate(inout T) dg)
	{
		int result = 0;
		
		for (int i = 0; i < array.length; i++)
		{
			result = dg(array[i]);
			if (result)
			{
				break;
			}
		}
		return result;
	}

	Array addElement(T element)
	{
		array ~= element;
		return this;
	}
	
	Array removeIndex(int index)
	{
		if ( index < array.length && index>=0 )
		{
			array = array[0..index] ~ array[index+1..array.length];
		}
		return this;
	}
	
	Array removeElement(T element)
	{
		int index = 0;
		while ( index < array.length )
		{
			if ( array[index] == element )
			{
				removeIndex(index);
				index = array.length;
			}
			++index;
		}
		return this;
	}
	
}


