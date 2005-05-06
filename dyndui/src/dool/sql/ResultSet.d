/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 */


module dool.sql.ResultSet;

interface ResultSet
{
	
	private import dool.sql.Sql;
	private import dool.sql.DBMetaTuple;
	private import dool.sql.DBTuple;
	
	private import dool.String;
	
	/**
	 * Checks is the result set is valid
	 */
	bit valid();
	
	/**
	 * Gets the message correspondent to the current state
	 */
	String errorMessage();
	
	/**
	 * Informes if there are more rows avialable
	 */
	bit hasMore();
	
	/**
	 * Some implementation require the result set to be cleared after use.
	 * allways call clear after you're done with the result set as you can't be sure.
	 */
	void clear();
	
	DBMetaTuple getMetaTuple();
	
	DBTuple getTuple(char[] statement = null);
	DBTuple getTuple(String statement);

	DBTuple[] getTuples(char[] statment, int maximum);
	
	DBTuple[] getTuples(String statment, int maximum);
	
	DBTuple[] getTuples(int maximum = 0);

	/**
	 * Get a field value as char
	 */
	char getChar(int column);
	
	/**
	 * Get a field value as String
	 */
	String getString(int column);
	
	/**
	 * Get a field value as bit
	 */
	bit getBit(int column);
	
	/**
	 * Get a field value as 
	 */
	long getInteger(int column);
	
	/**
	 * Get a field value as 
	 */
	double getDouble(int column);
	
	/**
	 * Get a field value as blob (void*)
	 */
	void* getBlob(int column);

	/**
	 * Gets the type for the specific column
	 */
	SQLType getType(int column);
	
	/**
	 * Gets the number of columns on this result set
	 */
	int columnCount();

	/**
	 * Gets the column name for a specific column
	 */
	String getColumnName(int column);
}
