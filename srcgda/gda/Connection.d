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
 * inFile  = libgda-GdaConnection.html
 * outPack = gda
 * outFile = Connection
 * strct   = GdaConnection
 * realStrct=
 * ctorStrct=
 * clss    = Connection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- gda_connection_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gda.Blob
 * 	- gda.Client
 * 	- gda.Command
 * 	- gda.DataModel
 * 	- gda.ErrorGda
 * 	- gda.FieldAttributes
 * 	- gda.ParameterList
 * 	- gda.Transaction
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaBlob* -> Blob
 * 	- GdaClient* -> Client
 * 	- GdaCommand* -> Command
 * 	- GdaDataModel* -> DataModel
 * 	- GdaError* -> ErrorGda
 * 	- GdaFieldAttributes* -> FieldAttributes
 * 	- GdaParameterList* -> ParameterList
 * 	- GdaTransaction* -> Transaction
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.Connection;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;
private import gda.Blob;
private import gda.Client;
private import gda.Command;
private import gda.DataModel;
private import gda.ErrorGda;
private import gda.FieldAttributes;
private import gda.ParameterList;
private import gda.Transaction;



private import gobject.ObjectG;

/**
 *  The GdaConnection class offers access to all operations involving an
 *  opened connection to a database. GdaConnection objects are obtained
 *  via the GdaClient class.
 *
 *  Once obtained, applications can use GdaConnection to execute commands,
 *  run transactions, and get information about all objects stored in the
 *  underlying database.
 */
public class Connection : ObjectG
{
	
	/** the main Gtk struct */
	protected GdaConnection* gdaConnection;
	
	
	public GdaConnection* getConnectionStruct()
	{
		return gdaConnection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdaConnection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaConnection* gdaConnection)
	{
		super(cast(GObject*)gdaConnection);
		this.gdaConnection = gdaConnection;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdaConnection = cast(GdaConnection*)obj;
	}
	
	/**
	 */
	
	/**
	 * This function creates a new GdaConnection object. It is not
	 * intended to be used directly by applications (use
	 * gda_client_open_connection instead).
	 * Params:
	 * client = a GdaClient object.
	 * provider = a GdaServerProvider object.
	 * dsn = GDA data source to connect to.
	 * username = user name to use to connect.
	 * password = password for username.
	 * options = options for the connection.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Client client, GdaServerProvider* provider, string dsn, string username, string password, GdaConnectionOptions options)
	{
		// GdaConnection* gda_connection_new (GdaClient *client,  GdaServerProvider *provider,  const gchar *dsn,  const gchar *username,  const gchar *password,  GdaConnectionOptions options);
		auto p = gda_connection_new((client is null) ? null : client.getClientStruct(), provider, Str.toStringz(dsn), Str.toStringz(username), Str.toStringz(password), options);
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_connection_new((client is null) ? null : client.getClientStruct(), provider, Str.toStringz(dsn), Str.toStringz(username), Str.toStringz(password), options)");
		}
		this(cast(GdaConnection*) p);
	}
	
	/**
	 * Closes the connection to the underlying data source. After calling this
	 * function, you should not use anymore the GdaConnection object, since
	 * it may have been destroyed.
	 * Returns: TRUE if successful, FALSE otherwise.
	 */
	public int close()
	{
		// gboolean gda_connection_close (GdaConnection *cnc);
		return gda_connection_close(gdaConnection);
	}
	
	/**
	 * Checks whether a connection is open or not.
	 * Returns: TRUE if the connection is open, FALSE if it's not.
	 */
	public int isOpen()
	{
		// gboolean gda_connection_is_open (GdaConnection *cnc);
		return gda_connection_is_open(gdaConnection);
	}
	
	/**
	 * Gets the GdaClient object associated with a connection. This
	 * is always the client that created the connection, as returned
	 * by gda_client_open_connection.
	 * Returns: the client to which the connection belongs to.
	 */
	public Client getClient()
	{
		// GdaClient* gda_connection_get_client (GdaConnection *cnc);
		auto p = gda_connection_get_client(gdaConnection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Client)(cast(GdaClient*) p);
	}
	
	/**
	 * Associates a GdaClient with this connection. This function is
	 * not intended to be called by applications.
	 * Params:
	 * client = a GdaClient object.
	 */
	public void setClient(Client client)
	{
		// void gda_connection_set_client (GdaConnection *cnc,  GdaClient *client);
		gda_connection_set_client(gdaConnection, (client is null) ? null : client.getClientStruct());
	}
	
	/**
	 * Gets the GdaConnectionOptions used to open this connection.
	 * Returns: the connection options.
	 */
	public GdaConnectionOptions getOptions()
	{
		// GdaConnectionOptions gda_connection_get_options (GdaConnection *cnc);
		return gda_connection_get_options(gdaConnection);
	}
	
	/**
	 * Gets the version string of the underlying database server.
	 * Returns: the server version string.
	 */
	public string getServerVersion()
	{
		// const gchar* gda_connection_get_server_version (GdaConnection *cnc);
		return Str.toString(gda_connection_get_server_version(gdaConnection));
	}
	
	/**
	 * Gets the name of the currently active database in the given
	 * GdaConnection.
	 * Returns: the name of the current database.
	 */
	public string getDatabase()
	{
		// const gchar* gda_connection_get_database (GdaConnection *cnc);
		return Str.toString(gda_connection_get_database(gdaConnection));
	}
	
	/**
	 * Returns: the data source name the connection object is connected to.
	 */
	public string getDsn()
	{
		// const gchar* gda_connection_get_dsn (GdaConnection *cnc);
		return Str.toString(gda_connection_get_dsn(gdaConnection));
	}
	
	/**
	 * Gets the connection string used to open this connection.
	 * The connection string is the string sent over to the underlying
	 * database provider, which describes the parameters to be used
	 * to open a connection on the underlying data source.
	 * Returns: the connection string used when opening the connection.
	 */
	public string getCncString()
	{
		// const gchar* gda_connection_get_cnc_string (GdaConnection *cnc);
		return Str.toString(gda_connection_get_cnc_string(gdaConnection));
	}
	
	/**
	 * Gets the provider id that this connection is connected to.
	 * Returns: the provider ID used to open this connection.
	 */
	public string getProvider()
	{
		// const gchar* gda_connection_get_provider (GdaConnection *cnc);
		return Str.toString(gda_connection_get_provider(gdaConnection));
	}
	
	/**
	 * Gets the user name used to open this connection.
	 * Returns: the user name.
	 */
	public string getUsername()
	{
		// const gchar* gda_connection_get_username (GdaConnection *cnc);
		return Str.toString(gda_connection_get_username(gdaConnection));
	}
	
	/**
	 * Gets the password used to open this connection.
	 * Returns: the password.
	 */
	public string getPassword()
	{
		// const gchar* gda_connection_get_password (GdaConnection *cnc);
		return Str.toString(gda_connection_get_password(gdaConnection));
	}
	
	/**
	 * Adds an error to the given connection. This function is usually
	 * called by providers, to inform clients of errors that happened
	 * during some operation.
	 * As soon as a provider (or a client, it does not matter) calls this
	 * function, the connection object (and the associated GdaClient object)
	 * emits the "error" signal, to which clients can connect to be
	 * informed of errors.
	 * Params:
	 * error = is stored internally, so you don't need to unref it.
	 */
	public void addError(ErrorGda error)
	{
		// void gda_connection_add_error (GdaConnection *cnc,  GdaError *error);
		gda_connection_add_error(gdaConnection, (error is null) ? null : error.getErrorGdaStruct());
	}
	
	/**
	 * This is just another convenience function which lets you add
	 * a list of GdaError's to the given connection. As with
	 * gda_connection_add_error and gda_connection_add_error_string,
	 * this function makes the connection object emit the "error"
	 * signal. The only difference is that, instead of a notification
	 * for each error, this function only does one notification for
	 * the whole list of errors.
	 * error_list is copied to an internal list and freed.
	 * Params:
	 * errorList = a list of GdaError.
	 */
	public void addErrorList(ListG errorList)
	{
		// void gda_connection_add_error_list (GdaConnection *cnc,  GList *error_list);
		gda_connection_add_error_list(gdaConnection, (errorList is null) ? null : errorList.getListGStruct());
	}
	
	/**
	 * Changes the current database for the given connection. This operation
	 * is not available in all providers.
	 * Params:
	 * name = name of database to switch to.
	 * Returns: TRUE if successful, FALSE otherwise.
	 */
	public int changeDatabase(string name)
	{
		// gboolean gda_connection_change_database (GdaConnection *cnc,  const gchar *name);
		return gda_connection_change_database(gdaConnection, Str.toStringz(name));
	}
	
	/**
	 * Creates a new database named name on the given connection.
	 * Params:
	 * name = database name.
	 * Returns: TRUE if successful, FALSE otherwise.
	 */
	public int createDatabase(string name)
	{
		// gboolean gda_connection_create_database (GdaConnection *cnc,  const gchar *name);
		return gda_connection_create_database(gdaConnection, Str.toStringz(name));
	}
	
	/**
	 * Drops a database from the given connection.
	 * Params:
	 * name = database name.
	 * Returns: TRUE if successful, FALSE otherwise.
	 */
	public int dropDatabase(string name)
	{
		// gboolean gda_connection_drop_database (GdaConnection *cnc,  const gchar *name);
		return gda_connection_drop_database(gdaConnection, Str.toStringz(name));
	}
	
	/**
	 * Creates a table on the given connection from the specified set of fields.
	 * Params:
	 * tableName = name of the table to be created.
	 * attributes = description of all fields for the new table.
	 * Returns: TRUE if successful, FALSE otherwise.
	 */
	public int createTable(string tableName, GdaFieldAttributes** attributes)
	{
		// gboolean gda_connection_create_table (GdaConnection *cnc,  const gchar *table_name,  const GdaFieldAttributes *attributes[]);
		return gda_connection_create_table(gdaConnection, Str.toStringz(tableName), attributes);
	}
	
	/**
	 * Drops a table from the database.
	 * Params:
	 * tableName = name of the table to be removed
	 * Returns: TRUE if successful, FALSE otherwise.
	 */
	public int dropTable(string tableName)
	{
		// gboolean gda_connection_drop_table (GdaConnection *cnc,  const gchar *table_name);
		return gda_connection_drop_table(gdaConnection, Str.toStringz(tableName));
	}
	
	/**
	 * Executes a command on the underlying data source.
	 * This function provides the way to send several commands
	 * at once to the data source being accessed by the given
	 * GdaConnection object. The GdaCommand specified can contain
	 * a list of commands in its "text" property (usually a set
	 * of SQL commands separated by ';').
	 * The return value is a GList of GdaDataModel's, which you
	 * are responsible to free when not needed anymore.
	 * Params:
	 * cmd = a GdaCommand.
	 * params = parameter list.
	 * Returns: a list of GdaDataModel's, as returned by the underlying provider.
	 */
	public ListG executeCommand(Command cmd, ParameterList params)
	{
		// GList* gda_connection_execute_command (GdaConnection *cnc,  GdaCommand *cmd,  GdaParameterList *params);
		auto p = gda_connection_execute_command(gdaConnection, (cmd is null) ? null : cmd.getCommandStruct(), (params is null) ? null : params.getParameterListStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Retrieve from the given GdaConnection the ID of the last inserted row.
	 * A connection must be specified, and, optionally, a result set. If not NULL,
	 * the underlying provider should try to get the last insert ID for the given result set.
	 * Params:
	 * recset = recordset.
	 * Returns: a string representing the ID of the last inserted row, or NULL if an error occurred or no row has been inserted. It is the caller's reponsibility to free the returned string.
	 */
	public string getLastInsertId(DataModel recset)
	{
		// gchar* gda_connection_get_last_insert_id (GdaConnection *cnc,  GdaDataModel *recset);
		return Str.toString(gda_connection_get_last_insert_id(gdaConnection, (recset is null) ? null : recset.getDataModelStruct()));
	}
	
	/**
	 * Executes a single command on the given connection.
	 * This function lets you retrieve a simple data model from
	 * the underlying difference, instead of having to retrieve
	 * a list of them, as is the case with gda_connection_execute_command.
	 * Params:
	 * cmd = a GdaCommand.
	 * params = parameter list.
	 * Returns: a GdaDataModel containing the data returned by the data source, or NULL on error.
	 */
	public DataModel executeSingleCommand(Command cmd, ParameterList params)
	{
		// GdaDataModel* gda_connection_execute_single_command  (GdaConnection *cnc,  GdaCommand *cmd,  GdaParameterList *params);
		auto p = gda_connection_execute_single_command(gdaConnection, (cmd is null) ? null : cmd.getCommandStruct(), (params is null) ? null : params.getParameterListStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DataModel)(cast(GdaDataModel*) p);
	}
	
	/**
	 * Executes a single command on the underlying database, and gets the
	 * number of rows affected.
	 * Params:
	 * cmd = a GdaCommand.
	 * params = parameter list.
	 * Returns: the number of affected rows by the executed command, or -1 on error.
	 */
	public int executeNonQuery(Command cmd, ParameterList params)
	{
		// gint gda_connection_execute_non_query (GdaConnection *cnc,  GdaCommand *cmd,  GdaParameterList *params);
		return gda_connection_execute_non_query(gdaConnection, (cmd is null) ? null : cmd.getCommandStruct(), (params is null) ? null : params.getParameterListStruct());
	}
	
	/**
	 * Starts a transaction on the data source, identified by the
	 * xaction parameter.
	 * Before starting a transaction, you can check whether the underlying
	 * provider does support transactions or not by using the
	 * gda_connection_supports function.
	 * Params:
	 * xaction = a GdaTransaction object.
	 * Returns: TRUE if the transaction was started successfully, FALSE otherwise.
	 */
	public int beginTransaction(Transaction xaction)
	{
		// gboolean gda_connection_begin_transaction (GdaConnection *cnc,  GdaTransaction *xaction);
		return gda_connection_begin_transaction(gdaConnection, (xaction is null) ? null : xaction.getTransactionStruct());
	}
	
	/**
	 * Commits the given transaction to the backend database. You need to do
	 * gda_connection_begin_transaction() first.
	 * Params:
	 * xaction = a GdaTransaction object.
	 * Returns: TRUE if the transaction was finished successfully, FALSE otherwise.
	 */
	public int commitTransaction(Transaction xaction)
	{
		// gboolean gda_connection_commit_transaction (GdaConnection *cnc,  GdaTransaction *xaction);
		return gda_connection_commit_transaction(gdaConnection, (xaction is null) ? null : xaction.getTransactionStruct());
	}
	
	/**
	 * Rollbacks the given transaction. This means that all changes
	 * made to the underlying data source since the last call to
	 * gda_connection_begin_transaction or gda_connection_commit_transaction
	 * will be discarded.
	 * Params:
	 * xaction = a GdaTransaction object.
	 * Returns: TRUE if the operation was successful, FALSE otherwise.
	 */
	public int rollbackTransaction(Transaction xaction)
	{
		// gboolean gda_connection_rollback_transaction (GdaConnection *cnc,  GdaTransaction *xaction);
		return gda_connection_rollback_transaction(gdaConnection, (xaction is null) ? null : xaction.getTransactionStruct());
	}
	
	/**
	 * Creates a BLOB (Binary Large OBject) with read/write access.
	 * Params:
	 * blob = a user-allocated GdaBlob structure.
	 * Returns: FALSE if the database does not support BLOBs. TRUE otherwise and the GdaBlob is created and ready to be used.
	 */
	public int createBlob(Blob blob)
	{
		// gboolean gda_connection_create_blob (GdaConnection *cnc,  GdaBlob *blob);
		return gda_connection_create_blob(gdaConnection, (blob is null) ? null : blob.getBlobStruct());
	}
	
	/**
	 * Retrieves a list of the last errors ocurred in the connection.
	 * You can make a copy of the list using gda_error_list_copy.
	 * Returns: a GList of GdaError.
	 */
	public ListG getErrors()
	{
		// const GList* gda_connection_get_errors (GdaConnection *cnc);
		auto p = gda_connection_get_errors(gdaConnection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Asks the underlying provider for if a specific feature is supported.
	 * Params:
	 * feature = feature to ask for.
	 * Returns: TRUE if the provider supports it, FALSE if not.
	 */
	public int supports(GdaConnectionFeature feature)
	{
		// gboolean gda_connection_supports (GdaConnection *cnc,  GdaConnectionFeature feature);
		return gda_connection_supports(gdaConnection, feature);
	}
	
	/**
	 * Asks the underlying data source for a list of database objects.
	 * This is the function that lets applications ask the different
	 * providers about all their database objects (tables, views, procedures,
	 * etc). The set of database objects that are retrieved are given by the
	 * 2 parameters of this function: schema, which specifies the specific
	 * schema required, and params, which is a list of parameters that can
	 * be used to give more detail about the objects to be returned.
	 * The list of parameters is specific to each schema type.
	 * Params:
	 * schema = database schema to get.
	 * params = parameter list.
	 * Returns: a GdaDataModel containing the data required. The caller is responsible of freeing the returned model.
	 */
	public DataModel getSchema(GdaConnectionSchema schema, ParameterList params)
	{
		// GdaDataModel* gda_connection_get_schema (GdaConnection *cnc,  GdaConnectionSchema schema,  GdaParameterList *params);
		auto p = gda_connection_get_schema(gdaConnection, schema, (params is null) ? null : params.getParameterListStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DataModel)(cast(GdaDataModel*) p);
	}
}
