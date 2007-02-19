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

module gdac.gdatypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public import glib.Str;



/**
 * typedef GList GdaValueList;
 */
public alias GList GdaValueList;
public enum GdaBlobMode
{
	MODE_READ = 1,
	MODE_WRITE = 1 << 1,
	MODE_RDWR = 0x03
}
alias GdaBlobMode daBlobMode;

public enum GdaClientEvent
{
	INVALID,
	/+* events usually notified by the library itself, and which the providers
	should notify on very special cases (like a transaction being started
	or committed via a BEGIN/COMMIT command directly sent to the
	executeCommand method on the provider +/
	ERROR, /+* params: "error" +/
	CONNECTION_OPENED, /+* params: +/
	CONNECTION_CLOSED, /+* params: +/
	TRANSACTION_STARTED, /+* params: "transaction" +/
	TRANSACTION_COMMITTED, /+* params: "transaction" +/
	TRANSACTION_CANCELLED /+* params: "transaction" +/
}
alias GdaClientEvent daClientEvent;

public enum GdaConnectionOptions
{
	READ_ONLY = 1 << 0,
	DONT_SHARE = 2 << 0
}
alias GdaConnectionOptions daConnectionOptions;

public enum GdaConnectionFeature
{
	AGGREGATES,
	BLOBS,
	INDEXES,
	INHERITANCE,
	NAMESPACES,
	PROCEDURES,
	SEQUENCES,
	SQL,
	TRANSACTIONS,
	TRIGGERS,
	UPDATABLE_CURSOR,
	USERS,
	VIEWS,
	XML_QUERIES
}
alias GdaConnectionFeature daConnectionFeature;

public enum GdaConnectionSchema
{
	AGGREGATES,
	DATABASES,
	FIELDS,
	INDEXES,
	LANGUAGES,
	NAMESPACES,
	PARENT_TABLES,
	PROCEDURES,
	SEQUENCES,
	TABLES,
	TRIGGERS,
	TYPES,
	USERS,
	VIEWS
}
alias GdaConnectionSchema daConnectionSchema;

/**
 * And OR'ed combination of GDA_COMMAND_OPTIONS_* values.
 */
public enum GdaCommandOptions
{
	IGNORE_ERRORS = 1,
	STOP_ON_ERRORS = 1 << 1,
	BAD_OPTION = 1 << 2
}
alias GdaCommandOptions daCommandOptions;

/**
 * GDA_COMMAND_TYPE_SQL
 * the text of the command is composed of zero or more SQL
 * sentences.
 * GDA_COMMAND_TYPE_XML
 * GDA_COMMAND_TYPE_PROCEDURE
 * GDA_COMMAND_TYPE_TABLE
 * the text of the command is composed of zero or more
 * table names.
 * GDA_COMMAND_TYPE_SCHEMA
 * GDA_COMMAND_TYPE_INVALID
 */
public enum GdaCommandType
{
	TYPE_SQL,
	TYPE_XML,
	TYPE_PROCEDURE,
	TYPE_TABLE,
	TYPE_SCHEMA,
	TYPE_INVALID
}
alias GdaCommandType daCommandType;

public enum GdaExportFlags
{
	TABLE_DATA = 1
}
alias GdaExportFlags daExportFlags;

public enum GdaTransactionIsolation
{
	UNKNOWN,
	READ_COMMITTED,
	READ_UNCOMMITTED,
	REPEATABLE_READ,
	SERIALIZABLE
}
alias GdaTransactionIsolation daTransactionIsolation;

public enum GdaValueType
{
	TYPE_NULL,
	TYPE_BIGINT,
	TYPE_BIGUINT,
	TYPE_BINARY,
	TYPE_BLOB,
	TYPE_BOOLEAN,
	TYPE_DATE,
	TYPE_DOUBLE,
	TYPE_GEOMETRIC_POINT,
	TYPE_GOBJECT,
	TYPE_INTEGER,
	TYPE_LIST,
	TYPE_MONEY,
	TYPE_NUMERIC,
	TYPE_SINGLE,
	TYPE_SMALLINT,
	TYPE_SMALLUINT,
	TYPE_STRING,
	TYPE_TIME,
	TYPE_TIMESTAMP,
	TYPE_TINYINT,
	TYPE_TINYUINT,
	TYPE_TYPE,
	TYPE_UINTEGER,
	TYPE_UNKNOWN
}
alias GdaValueType daValueType;


public struct GdaConnection{}
public struct GdaError{}
public struct GdaTransaction{}
public struct GdaDataModelArray{}

public struct GdaDataModelHash{}

public struct GdaDataModelList{}

public struct xmlNodePtr{}
public struct GdaExport{}

public struct GdaSelect{}
public struct GdaTable{}

/*
public struct Blob{}
public struct Date{}
public struct Time{}
public struct Timestamp{}
public struct Money{}
public struct ValueList{}
public struct Numeric{}
public struct GeometricPoint{}
 */
struct _GdaProviderInfo {
	gchar *id;
	gchar *location;
	gchar *description;
	GList *gda_params; /* A list of GdaProviderParameterInfo pointers */
} ;





/**
 * Main Gtk struct.
 */
public struct GdaBlob{}
// int (* open) (GdaBlob *blob, GdaBlobMode mode);
// libgda-gda-blob.html
// int (* read) (GdaBlob *blob, void* buf, int size,
// libgda-gda-blob.html
// int *bytesRead);
// libgda-gda-blob.html
// int (* write) (GdaBlob *blob, void* buf, int size,
// libgda-gda-blob.html
// int *bytesWritten);
// libgda-gda-blob.html
// int (* lseek) (GdaBlob *blob, int offset, int whence);
// libgda-gda-blob.html
// int (* close) (GdaBlob *blob);
// libgda-gda-blob.html
// int (* remove) (GdaBlob *blob);
// libgda-gda-blob.html
// char * (* stringify) (GdaBlob *blob);
// libgda-gda-blob.html
// void* privData;
// libgda-gda-blob.html
// void* userData;
// libgda-gda-blob.html


public struct GdaClientPrivate{}


public struct GdaConnectionPrivate{}


public struct GdaServerProvider{}


public struct GdaClient{}


/**
 * Main Gtk struct.
 */
public struct GdaCommand{}
// char *text;
// libgda-gda-command.html


/**
 * Main Gtk struct.
 */
public struct GdaDataSourceInfo
{
	char *name;
	char *provider;
	char *cncString;
	char *description;
	char *username;
	char *password;
}


/**
 * Main Gtk struct.
 */
public struct GdaProviderInfo{}
// char *id;
// libgda-gda-config.html
// char *location;
// libgda-gda-config.html
// char *description;
// libgda-gda-config.html


public struct GdaDataModelArrayPrivate{}


public struct GdaDataModelHashPrivate{}


public struct GdaDataModelListPrivate{}


public struct GdaDataModelPrivate{}


public struct GdaErrorPrivate{}


public struct GdaExportPrivate{}


/**
 * Main Gtk struct.
 */
public struct GdaFieldAttributes{}
// int definedSize;
// libgda-gda-field.html
// char *name;
// libgda-gda-field.html
// char *table;
// libgda-gda-field.html
// char *caption;
// libgda-gda-field.html
// int scale;
// libgda-gda-field.html
// int allowNull;
// libgda-gda-field.html
// int primaryKey;
// libgda-gda-field.html
// int uniqueKey;
// libgda-gda-field.html
// char *references;
// libgda-gda-field.html
// int autoIncrement;
// libgda-gda-field.html
// int autoIncrementStart;
// libgda-gda-field.html
// int autoIncrementStep;
// libgda-gda-field.html
// int position;
// libgda-gda-field.html


public struct GdaField{}
// int actualSize;
// libgda-gda-field.html


/**
 * Main Gtk struct.
 */
public struct GdaParameter{}
// char *name;
// libgda-gda-parameter.html


public struct GdaParameterList{}


/**
 * Main Gtk struct.
 */
public struct GdaQuarkList{}


public struct GdaDataModel{}


/**
 * Main Gtk struct.
 */
public struct GdaRow{}


public struct GdaSelectPrivate{}


public struct GdaTablePrivate{}


public struct GdaTransactionPrivate{}


public struct GdaDate
{
	short year;
	ushort month;
	ushort day;
}


public struct GdaGeometricPoint
{
	double x;
	double y;
}


public struct GdaMoney
{
	char *currency;
	double amount;
}


public struct GdaNumeric
{
	char *number;
	int precision;
	int width;
}


public struct GdaTime
{
	ushort hour;
	ushort minute;
	ushort second;
	int timezone; /+* # of seconds to the east UTC +/
}


public struct GdaTimestamp
{
	short year;
	ushort month;
	ushort day;
	ushort hour;
	ushort minute;
	ushort second;
	uint fraction;
	int timezone; /+* # of seconds to the east UTC +/
}


/**
 * Main Gtk struct.
 */
public struct GdaValue{}
// long vBigint;
// libgda-gda-value.html
// ulong vBiguint;
// libgda-gda-value.html
// void* vBinary;
// libgda-gda-value.html
// int vBoolean;
// libgda-gda-value.html
// double vDouble;
// libgda-gda-value.html
// int vInteger;
// libgda-gda-value.html
// float vSingle;
// libgda-gda-value.html
// short vSmallint;
// libgda-gda-value.html
// ushort vSmalluint;
// libgda-gda-value.html
// char *vString;
// libgda-gda-value.html
// char vTinyint;
// libgda-gda-value.html
// char vTinyuint;
// libgda-gda-value.html
// uint vUinteger;
// libgda-gda-value.html
// int binaryLength;
// libgda-gda-value.html


/*
 * value :
 * type :
 */
// TODO
// #define gda_value_isa(value,type) (gda_value_get_type (value) == type)

/*
 * user_data :
 */
// void (*GdaInitFunc) (gpointer user_data);
public typedef extern(C) void  function (void*) GdaInitFunc;

/*
 * path :
 * user_data :
 */
// void (*GdaConfigListenerFunc) (const gchar *path,  gpointer user_data);
public typedef extern(C) void  function (char[], void*) GdaConfigListenerFunc;

/*
 * path :
 * user_data :
 */
// void (*GdaConfigListenerFunc) (const gchar *path,  gpointer user_data);


/*
 * path :
 * user_data :
 */
// void (*GdaConfigListenerFunc) (const gchar *path,  gpointer user_data);


/*
 * model :
 * row :
 * user_data :
 * Returns :
 */
// gboolean (*GdaDataModelForeachFunc) (GdaDataModel *model,  GdaRow *row,  gpointer user_data);
public typedef extern(C) int  function (GdaDataModel*, GdaRow*, void*) GdaDataModelForeachFunc;
