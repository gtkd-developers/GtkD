/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = libgda-GdaClient.html
 * outPack = gda
 * outFile = Client
 * strct   = GdaClient
 * realStrct=
 * ctorStrct=
 * clss    = Client
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_client_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gda_client_open_connection
 * imports:
 * 	- gda.Connection
 * structWrap:
 * 	- GdaConnection* -> Connection
 * module aliases:
 * local aliases:
 */

module gda.Client;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gdac.gdatypes;

private import gdac.gda;


private import gda.Connection;




/**
 * Description
 *  This class is the main entry point for libgda client applications. It provides
 *  the way by which client applications open connections. Thus, before using any other
 *  database-oriented function in libgda, applications must create a GdaClient object
 *  (via gda_client_new), and, once created, open the connections from it.
 *  GdaClient also provides a way to treat several connections as if they were only
 *  one (a connection pool), which allows applications to, for instance, commit/rollback
 *  a transaction in all the connections being managed by a unique GdaClient object, or
 *  obtain the list of all tables in all opened connections.
 */
public class Client
{
	
	/** the main Gtk struct */
	protected GdaClient* gdaClient;
	
	
	public GdaClient* getClientStruct()
	{
		return gdaClient;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaClient;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaClient* gdaClient)
	{
		version(noAssert)
		{
			if ( gdaClient is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdaClient is null on constructor").newline;
				}
				else
				{
					printf("struct gdaClient is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdaClient !is null, "struct gdaClient is null on constructor");
		}
		this.gdaClient = gdaClient;
	}
	
	/**
	 * Establishes a connection to a data source. The connection will be opened
	 * if no identical connection is available in the GdaClient connection pool,
	 * and re-used if available. If you dont want to share the connection,
	 * specify GDA_CONNECTION_OPTIONS_DONT_SHARE as one of the flags in
	 * the options parameter.
	 * This function is the way of opening database connections with libgda.
	 * client :
	 *  a GdaClient object.
	 * dsn :
	 *  data source name.
	 * username :
	 *  user name.
	 * password :
	 *  password for username.
	 * options :
	 *  options for the connection (see GdaConnectionOptions).
	 * Returns :
	 *  the opened connection if successful, NULL if there is
	 * an error.
	 */
	public Connection openConnection(char[] dsn, char[] username, char[] password, GdaConnectionOptions options)
	{
		// GdaConnection* gda_client_open_connection (GdaClient *client,  const gchar *dsn,  const gchar *username,  const gchar *password,  GdaConnectionOptions options);
		GdaConnection* connection = gda_client_open_connection(gdaClient, Str.toStringz(dsn), Str.toStringz(username), Str.toStringz(password), options);
		return connection ? new Connection( connection) : null;
	}
	
	/**
	 */
	
	
	
	/**
	 * Creates a new GdaClient object, which is the entry point for libgda
	 * client applications. This object, once created, can be used for
	 * opening new database connections and activating other services
	 * available to GDA clients.
	 * Returns :
	 *  the newly created object.
	 */
	public this ()
	{
		// GdaClient* gda_client_new (void);
		this(cast(GdaClient*)gda_client_new() );
	}
	
	
	/**
	 * Opens a connection given a provider ID and a connection string. This
	 * allows applications to open connections without having to create
	 * a data source in the configuration. The format of cnc_string is
	 * similar to PostgreSQL and MySQL connection strings. It is a ;-separated
	 * series of key=value pairs. Do not add extra whitespace after the ;
	 * separator. The possible keys depend on the provider, but
	 * these keys should work with all providers:
	 * USER, PASSWORD, HOST, DATABASE, PORT
	 * client :
	 *  a GdaClient object.
	 * provider_id :
	 *  provider ID to connect to.
	 * cnc_string :
	 *  connection string.
	 * options :
	 *  options for the connection (see GdaConnectionOptions).
	 * Returns :
	 *  the opened connection if successful, NULL if there is
	 * an error.
	 */
	public Connection openConnectionFromString(char[] providerId, char[] cncString, GdaConnectionOptions options)
	{
		// GdaConnection* gda_client_open_connection_from_string  (GdaClient *client,  const gchar *provider_id,  const gchar *cnc_string,  GdaConnectionOptions options);
		return new Connection( gda_client_open_connection_from_string(gdaClient, Str.toStringz(providerId), Str.toStringz(cncString), options) );
	}
	
	/**
	 * Gets the list of all open connections in the given GdaClient object.
	 * The GList returned is an internal pointer, so DON'T TRY TO
	 * FREE IT.
	 * client :
	 *  a GdaClient object.
	 * Returns :
	 *  a GList of GdaConnection objects.
	 */
	public GList* getConnectionList()
	{
		// const GList* gda_client_get_connection_list (GdaClient *client);
		return gda_client_get_connection_list(gdaClient);
	}
	
	/**
	 * Looks for an open connection given a data source name (per libgda
	 * configuration), a username and a password.
	 * This function iterates over the list of open connections in the
	 * given GdaClient and looks for one that matches the given data source
	 * name, username and password.
	 * client :
	 *  a GdaClient object.
	 * dsn :
	 *  data source name.
	 * username :
	 *  user name.
	 * password :
	 *  password for username.
	 * Returns :
	 *  a pointer to the found connection, or NULL if it could not
	 * be found.
	 */
	public Connection findConnection(char[] dsn, char[] username, char[] password)
	{
		// GdaConnection* gda_client_find_connection (GdaClient *client,  const gchar *dsn,  const gchar *username,  const gchar *password);
		return new Connection( gda_client_find_connection(gdaClient, Str.toStringz(dsn), Str.toStringz(username), Str.toStringz(password)) );
	}
	
	/**
	 * Closes all connections opened by the given GdaClient object.
	 * client :
	 *  a GdaClient object.
	 */
	public void closeAllConnections()
	{
		// void gda_client_close_all_connections (GdaClient *client);
		gda_client_close_all_connections(gdaClient);
	}
	
	/**
	 * Notifies an event to the given GdaClient's listeners. The event can be
	 * anything (see GdaClientEvent) ranging from a connection opening
	 * operation, to changes made to a table in an underlying database.
	 * client :
	 *  a GdaClient object.
	 * cnc :
	 *  a GdaConnection object where the event has occurred.
	 * event :
	 *  event ID.
	 * params :
	 *  parameters associated with the event.
	 */
	public void notifyEvent(Connection cnc, GdaClientEvent event, GdaParameterList* params)
	{
		// void gda_client_notify_event (GdaClient *client,  GdaConnection *cnc,  GdaClientEvent event,  GdaParameterList *params);
		gda_client_notify_event(gdaClient, (cnc is null) ? null : cnc.getConnectionStruct(), event, params);
	}
	
	/**
	 * Notifies the given GdaClient of the GDA_CLIENT_EVENT_ERROR event.
	 * client :
	 *  a GdaClient object.
	 * cnc :
	 *  a GdaConnection object.
	 * error :
	 *  the error to be notified.
	 */
	public void notifyErrorEvent(Connection cnc, GdaError* error)
	{
		// void gda_client_notify_error_event (GdaClient *client,  GdaConnection *cnc,  GdaError *error);
		gda_client_notify_error_event(gdaClient, (cnc is null) ? null : cnc.getConnectionStruct(), error);
	}
	
	/**
	 * Notifies the given GdaClient of the GDA_CLIENT_EVENT_CONNECTION_OPENED
	 * event.
	 * client :
	 *  a GdaClient object.
	 * cnc :
	 *  a GdaConnection object.
	 */
	public void notifyConnectionOpenedEvent(Connection cnc)
	{
		// void gda_client_notify_connection_opened_event  (GdaClient *client,  GdaConnection *cnc);
		gda_client_notify_connection_opened_event(gdaClient, (cnc is null) ? null : cnc.getConnectionStruct());
	}
	
	/**
	 * Notifies the given GdaClient of the GDA_CLIENT_EVENT_CONNECTION_CLOSED
	 * event.
	 * client :
	 *  a GdaClient object.
	 * cnc :
	 *  a GdaConnection object.
	 */
	public void notifyConnectionClosedEvent(Connection cnc)
	{
		// void gda_client_notify_connection_closed_event  (GdaClient *client,  GdaConnection *cnc);
		gda_client_notify_connection_closed_event(gdaClient, (cnc is null) ? null : cnc.getConnectionStruct());
	}
	
	/**
	 * Notifies the given GdaClient of the GDA_CLIENT_EVENT_TRANSACTION_STARTED
	 * event.
	 * client :
	 *  a GdaClient object.
	 * cnc :
	 *  a GdaConnection object.
	 * xaction :
	 *  a GdaTransaction object.
	 */
	public void notifyTransactionStartedEvent(Connection cnc, GdaTransaction* xaction)
	{
		// void gda_client_notify_transaction_started_event  (GdaClient *client,  GdaConnection *cnc,  GdaTransaction *xaction);
		gda_client_notify_transaction_started_event(gdaClient, (cnc is null) ? null : cnc.getConnectionStruct(), xaction);
	}
	
	/**
	 * Notifies the given GdaClient of the GDA_CLIENT_EVENT_TRANSACTION_COMMITTED
	 * event.
	 * client :
	 *  a GdaClient object.
	 * cnc :
	 *  a GdaConnection object.
	 * xaction :
	 *  a GdaTransaction object.
	 */
	public void notifyTransactionCommittedEvent(Connection cnc, GdaTransaction* xaction)
	{
		// void gda_client_notify_transaction_committed_event  (GdaClient *client,  GdaConnection *cnc,  GdaTransaction *xaction);
		gda_client_notify_transaction_committed_event(gdaClient, (cnc is null) ? null : cnc.getConnectionStruct(), xaction);
	}
	
	/**
	 * Notifies the given GdaClient of the GDA_CLIENT_EVENT_TRANSACTION_CANCELLED
	 * event.
	 * client :
	 *  a GdaClient object.
	 * cnc :
	 *  a GdaConnection object.
	 * xaction :
	 *  a GdaTransaction object.
	 */
	public void notifyTransactionCancelledEvent(Connection cnc, GdaTransaction* xaction)
	{
		// void gda_client_notify_transaction_cancelled_event  (GdaClient *client,  GdaConnection *cnc,  GdaTransaction *xaction);
		gda_client_notify_transaction_cancelled_event(gdaClient, (cnc is null) ? null : cnc.getConnectionStruct(), xaction);
	}
	
	/**
	 * Starts a transaction on all connections being managed by the given
	 * GdaClient. It is important to note that this operates on all
	 * connections opened within a GdaClient, which could not be what
	 * you're looking for.
	 * To execute a transaction on a unique connection, use
	 * gda_connection_begin_transaction, gda_connection_commit_transaction
	 * and gda_connection_rollback_transaction.
	 * client :
	 *  a GdaClient object.
	 * xaction :
	 *  a GdaTransaction object.
	 * Returns :
	 *  TRUE if all transactions could be started successfully,
	 * or FALSE if one of them fails.
	 */
	public int beginTransaction(GdaTransaction* xaction)
	{
		// gboolean gda_client_begin_transaction (GdaClient *client,  GdaTransaction *xaction);
		return gda_client_begin_transaction(gdaClient, xaction);
	}
	
	/**
	 * Commits a running transaction on all connections being managed by the given
	 * GdaClient. It is important to note that this operates on all
	 * connections opened within a GdaClient, which could not be what
	 * you're looking for.
	 * To execute a transaction on a unique connection, use
	 * gda_connection_begin_transaction, gda_connection_commit_transaction
	 * and gda_connection_rollback_transaction.
	 * client :
	 *  a GdaClient object.
	 * xaction :
	 *  a GdaTransaction object.
	 * Returns :
	 *  TRUE if all transactions could be committed successfully,
	 * or FALSE if one of them fails.
	 */
	public int commitTransaction(GdaTransaction* xaction)
	{
		// gboolean gda_client_commit_transaction (GdaClient *client,  GdaTransaction *xaction);
		return gda_client_commit_transaction(gdaClient, xaction);
	}
	
	/**
	 * Cancels a running transaction on all connections being managed by the given
	 * GdaClient. It is important to note that this operates on all
	 * connections opened within a GdaClient, which could not be what
	 * you're looking for.
	 * To execute a transaction on a unique connection, use
	 * gda_connection_begin_transaction, gda_connection_commit_transaction
	 * and gda_connection_rollback_transaction.
	 * client :
	 *  a GdaClient object.
	 * xaction :
	 *  a GdaTransaction object.
	 * Returns :
	 *  TRUE if all transactions could be cancelled successfully,
	 * or FALSE if one of them fails.
	 * See Also
	 *  GdaConnection.
	 */
	public int rollbackTransaction(GdaTransaction* xaction)
	{
		// gboolean gda_client_rollback_transaction (GdaClient *client,  GdaTransaction *xaction);
		return gda_client_rollback_transaction(gdaClient, xaction);
	}
}
