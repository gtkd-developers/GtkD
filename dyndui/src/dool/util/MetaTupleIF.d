/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 */

module dool.util.MetaTupleIF;

/**
 * This was created to support SQL DB queries hence the reference to ResultSet - todo review
 */
interface MetaTupleIF
{

	private import dool.sql.Sql;
	private import dool.String;
	private import dool.util.TupleIF;
	
	MetaTupleIF addColumn(String name, SQLType type, int size, int subSize);
	
	/**
	 * Gets the number of columns of this meta tuple
	 */
	int columnCount();
	
	/**
	 * Gets all the types for this MetaTuple
	 */
	SQLType[] getTypes();
	
	/**
	 * Gets the column names as a String array
	 */
	String[] getNames();
	
	/**
	 * gets the column index by the name
	 */
	 int getColumn(char[] column);
	 int getColumn(String column);
	
	/**
	 * get the type of a specific column
	 */
	SQLType getType(int column);

	/**
	 * Gets a new Tuple from this MetaTuple
	 */
	TupleIF getTuple();
	
	/**
	 * Sets the separator for simple output or print
	 */
	void setSeparator(char[] separator);
	
	/**
	 * Sets the separator for simple output or print
	 */
	void setSeparator(String separator);
	
	/**
	 * gets the current separator for output or print
	 */
	String getSeparator();

	/**
	 * Force implementors to create a toString method
	 */
	char[] toString();
	
	// more can be done like information to output to different formats
}
