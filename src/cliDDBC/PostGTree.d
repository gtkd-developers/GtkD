/*
 * This file is part of dpq.
 * 
 * dpq is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dpq is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dpq; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module cliDDBC.PostGTree;

import dui.All;

/**
 * PostGTree
 */
public:

class PostGTree : TreeView
{
		
	private import dool.sql.Connection;
	private import dool.sql.Statement;
	private import dool.sql.ResultSet;
	
	TreeStore store;
	TreeIter iterDB;
	TreeIter iterUser;
	
	this(Connection connect)
	{

		TreeViewColumn column = new TreeViewColumn("obj",new CellRendererText(),"text", 0);
		appendColumn(column);
		column.setResizable(true);
		column.setSortColumnID(0);
		column.setSortIndicator(true);

		GType[]cols;
		cols ~= DUIType.STRING;
		store = new TreeStore(cols);
		setModel(store);
		Statement exec = connect.getStatement();
		iterDB = store.createIter();
		iterUser = store.createIter();
		setDatabases(exec,store,iterDB);
		setUsers(exec,store,iterUser);
	}

	/**
	 * Creates a tree node with all the databases
	 * @param exec the connection to the database
	 * @param store the tree store
	 * @param iter the tree iter where to add the databases
	 */
	void setDatabases(Statement exec, TreeStore store, TreeIter iter)
	{
		setClass(exec,store,iter,"Databases",
			"SELECT datname FROM pg_database");
	}

	/**
	 * Creates a tree node with all the users
	 * @param exec the connection to the database
	 * @param store the tree store
	 * @param iter the tree iter where to add the users
	 */
	void setUsers(Statement exec, TreeStore store, TreeIter iter)
	{
		setClass(exec,store,iter,"Users",
			"SELECT usename FROM pg_user");
	}

	/**
	 * Creates a tree node for a specific class of objects
	 * @param exec the connection to the database
	 * @param store the tree store
	 * @param iter the tree iter where to add the entries
	 * @param type the object class type
	 * @param sql the actual SQL statment that retrieves the information
	 */
	void setClass(Statement exec, TreeStore store, TreeIter iter, char[] type, char[] sql)
	{
		static int[1] cols;
		String[] vals;
		vals.length = 1;

		vals[0] = new String(type);
		store.set(iter,cols,vals);
		TreeIter db;
		
		ResultSet result = exec.getResultSet(sql);
		for ( int i=0 ; i<result.columnCount(); i++)
		{
			db = store.append(iter);
			vals[0] = result.getString(i);
			store.set(db,cols,vals);
		}
		result.clear();
	}
	
}
