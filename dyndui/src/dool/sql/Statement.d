/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 */


module dool.sql.Statement;

interface Statement
{
	private import dool.sql.ResultSet;
	private import dool.sql.SQLException;
	
	private import dool.String;

	String errorMessage();
	
	/**
	 * Prepares one sql statment - multiple are not supported.
	 */
	int prepare(char[] sql);

	/**
	 * Prepares one sql statment - multiple are not supported.
	 */
	int prepare(String sql);

	/**
	 * executes and sql statement without returning a result set
	 */
	int execute(char[]  statment);

	/**
	 * executes and sql statement without returning a result set
	 */
	int execute(String statment);

	void begin();
	void commit();
	void rollback();
	
	/**
	 * executes and get the result set
	 */
	ResultSet getResultSet(char[] statement);
	
	/**
	 * executes and get the result set
	 */
	ResultSet getResultSet(String statement);
	
	/**
	 * close the current connection statement
	 */
	int finish();
	

}
