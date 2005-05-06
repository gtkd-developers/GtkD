/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 */

module dool.sql.Connection;

interface Connection
{

	import dool.sql.all;
	import dool.sql.Statement;
	
	import dool.String;
	
	/**
	 * Gets a statement for this connection
	 */
	Statement getStatement();
	
	/**
	 * tests if the connect in on
	 */
	bit valid();

	/**
	 * close the connection
	 */
	int close();
	
	/**
	 * print out debuging information
	 */
	void dump();
	
	/**
	 * Request to abandon processing of the current command.
	 * @return true if the cancel request was successfully dispatched, false if not.
	 * (If not, errorMessage tells why not.)
	 */
	bit requestCancel();

	/**
	 * get db name
	 * @return 
	 */
	String dbName();

	/**
	 * get user name
	 * @return 
	 */
	String user();

		/**
	 * get host name
	 * @return 
	 */
	String host();
	
	/**
	 * get port
	 * @return 
	 */
	String port();

	/**
	 * get tty
	 * @return 
	 */
	String tty();

	/**
	 * get options
	 * @return 
	 */
	String options();
	
	/**
	 * Gets the current status of this connection
	 */
	SQLStatus status();
	
	/**
	 * Gets the implementation specific status.
	 * it's up to the implementator to define this
	 */
	int subStatus();

	/**
	 * Get this connection last error message
	 * @return the error message text
	 */
	String errorMessage();

	/**
	 * Gets this connect implementation specific error message
	 * it's up to the implementatro to denit this messages
	 */
	 
	 String subErrorMessage();
}
