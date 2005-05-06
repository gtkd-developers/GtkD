/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 */

module dool.util.TupleIF;

/**
 * This was created to support SQL DB queries hence the reference to ResultSet - todo review
 */
interface TupleIF
{
	private import dool.String;

	/**
	 * gets the number of columns on this tuple (delegate to MetaTuple)
	 */
	int columnCount();
	
	/**
	 * Force the implementor to create a reasonable print out.
	 * The implementor is advise to get infomation from the header for more readable print out
	 */
	char[] toString();
	
	/**
	 * Get a field value as char
	 */
	char getChar(char[] column);
	char getChar(String column);
	char getChar(int column);
	
	/**
	 * Get a field value as String
	 */
	String getString(int column);
	String getString(char[] column);
	String getString(String column);
	
	/**
	 * Get a field value as bit
	 */
	bit getBit(int column);
	bit getBit(char[] column);
	bit getBit(String column);
	
	/**
	 * Get a field value as 
	 */
	long getLong(int column);
	long getLong(char[] column);
	long getLong(String column);
	
	int getInt(int column);
	int getInt(char[] column);
	int getInt(String column);
	
	/**
	 * Get a field value as 
	 */
	double getdouble(int column);
	double getdouble(char[] column);
	double getdouble(String column);
	
	/**
	 * Get a field value as blob (void*)
	 */
	void* getBlob(int column);
	void* getBlob(char[] column);
	void* getBlob(String column);
	
	/**
	 * Set a field value as char
	 */
	TupleIF set(int column, char c);
	TupleIF set(char[] column, char value);
	TupleIF set(String column, char value);
	
	/**
	 * Set a field value as String
	 */
	TupleIF set(int column, String string);
	TupleIF set(char[] column, char[] value);
	TupleIF set(char[] column, String value);
	TupleIF set(String column, String value);
	
	/**
	 * Set a field value as bit
	 */
	TupleIF set(int column, bit b);
	TupleIF set(char[] column, bit value);
	TupleIF set(String column, bit value);
	
	/**
	 * Set a field value as 
	 */
	TupleIF set(int column, long value);
	TupleIF set(char[] column, long value);
	TupleIF set(String column, long value);
	
	TupleIF set(int column, int value);
	TupleIF set(char[] column, int value);
	TupleIF set(String column, int value);
	
	/**
	 * Set a field value as 
	 */
	TupleIF set(int column, double value);
	TupleIF set(char[] column, double value);
	TupleIF set(String column, double value);
	
	/**
	 * Set a field value as blob (void*)
	 */
	TupleIF set(int column, void* blob);
	TupleIF set(char[] column, void* value);
	TupleIF set(String column, void* value);

//	/**
//	 * Adds a field value as char
//	 */
//	TupleIF addChar(char[] column, char c);
//	TupleIF addChar(String column, char c);
//	
//	/**
//	 * Adds a field value as String
//	 */
//	TupleIF addText(char[] column, char[] string);
//	TupleIF addText(char[] column, String string);
//	TupleIF addText(String column, char[] string);
//	TupleIF addText(String column, String string);
//	
//	/**
//	 * Adds a field value as bit
//	 */
//	TupleIF addBit(char[] column, bit b);
//	TupleIF addBit(String column, bit b);
//	
//	/**
//	 * Adds a field value as 
//	 */
//	TupleIF addLong(char[] column, long value);
//	TupleIF addLong(String column, int value);
//	TupleIF addInt(char[] column, long value);
//	TupleIF addInt(String column, int value);
//	
//	/**
//	 * Adds a field value as 
//	 */
//	TupleIF addDouble(char[] column, double value);
//	TupleIF addDouble(String column, double value);
//	
//	/**
//	 * Adds a field value as blob (void*)
//	 */
//	TupleIF addBlob(char[] column, void* blob);
//	TupleIF addBlob(String column, void* blob);

}
