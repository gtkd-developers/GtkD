/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 */

/*
 * written by Antonio Monteiro
 */

module dool.SArray;

private import dool.Array;
private import dool.String;
/**
 * SArray is an array of string that converts char[] to String for convinience of the user
 */
public
class SArray : ArrayC!(String)
{
	
	/**
	 * Creates and initializes a new StringArray.
	 * String will be added to the array with out copying
	 * A new String will be created from objects using the .toString method.
	 * A new String will be create for chars
	 * 
	 */
	this(...)
	{
		array.length = _arguments.length;
		for (int i = 0; i < _arguments.length; i++)
		{
			//assert( _arguments[i] == typeid(T) ); 
			// TODO wait for typeinfo update on DMD
			//array[i] = *cast(T*)_argptr;
			//_argptr += T.sizeof;
		}
	}
	

}
