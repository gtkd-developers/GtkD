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

module gdac.gdatypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;


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

public struct GdaServerProviderPrivate{}


/**
 * Main Gtk struct.
 */
public struct GdaBlob
{
	/+* Private +/
	extern(C) int function(GdaBlob* blob, GdaBlobMode mode)  open;
	extern(C) int function(GdaBlob* blob, void* buf, int size, int* bytesRead)  read;
	extern(C) int function(GdaBlob* blob, void* buf, int size, int* bytesWritten)  write;
	extern(C) int function(GdaBlob* blob, int offset, int whence)  lseek;
	extern(C) int function(GdaBlob* blob)  close;
	extern(C) int function(GdaBlob* blob)  remove;
	extern(C) char * function(GdaBlob* blob)  stringify;
	extern(C) void function(GdaBlob* blob)  freeData;
	void* privData;
	/+* +/
	/+* Public +/
	void* userData;
}


public struct GdaClientPrivate{}


/**
 * Main Gtk struct.
 */
public struct GdaCommand
{
	char *text;
	GdaCommandType type;
	GdaCommandOptions options;
	GdaTransaction *xaction;
}


public struct GdaProviderInfo
{
	char *id;
	char *location;
	char *description;
	GList *gdaParams; /+* A list of GdaProviderParameterInfo pointers +/
}


public struct GdaDataSourceInfo
{
	char *name;
	char *provider;
	char *cncString;
	char *description;
	char *username;
	char *password;
}


public struct GdaConnectionPrivate{}


public struct GdaServerProvider
{
	GObject object;
	GdaServerProviderPrivate *priv;
}


public struct GdaClient
{
	GObject object;
	GdaClientPrivate *priv;
}


public struct GdaDataModelArrayPrivate{}


public struct GdaDataModelHashPrivate{}


public struct GdaDataModelListPrivate{}


public struct GdaDataModelPrivate{}


public struct GdaErrorPrivate{}


public struct GdaExportPrivate{}


/**
 * Main Gtk struct.
 */
public struct GdaFieldAttributes
{
	int definedSize;
	char *name;
	char *table;
	char *caption;
	int scale;
	GdaValueType gdaType;
	int allowNull;
	int primaryKey;
	int uniqueKey;
	char *references;
	int autoIncrement;
	glong autoIncrementStart;
	glong autoIncrementStep;
	int position;
	GdaValue *defaultValue;
}


public struct GdaField
{
	int actualSize;
	GdaValue *value;
	GdaFieldAttributes *attributes;
}


/**
 * Main Gtk struct.
 */
public struct GdaParameter
{
	char *name;
	GdaValue *value;
}


public struct GdaParameterList{}


/**
 * Main Gtk struct.
 */
public struct GdaQuarkList{}


public struct GdaDataModel
{
	GObject object;
	GdaDataModelPrivate *priv;
}


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
	glong precision;
	glong width;
}


public struct GdaTime
{
	ushort hour;
	ushort minute;
	ushort second;
	glong timezone; /+* # of seconds to the east UTC +/
}


public struct GdaTimestamp
{
	short year;
	ushort month;
	ushort day;
	ushort hour;
	ushort minute;
	ushort second;
	gulong fraction;
	glong timezone; /+* # of seconds to the east UTC +/
}


/**
 * Main Gtk struct.
 */
public struct GdaValue
{
	GdaValueType type;
	union Value
	{
		long vBigint;
		ulong vBiguint;
		void* vBinary;
		GdaBlob vBlob;
		int vBoolean;
		GdaDate vDate;
		double vDouble;
		GdaGeometricPoint vPoint;
		GObject *vGobj;
		int vInteger;
		GdaValueList *vList;
		GdaMoney vMoney;
		GdaNumeric vNumeric;
		float vSingle;
		short vSmallint;
		ushort vSmalluint;
		char *vString;
		GdaTime vTime;
		GdaTimestamp vTimestamp;
		char vTinyint;
		char vTinyuint;
		GdaValueType vType;
		uint vUinteger;
	}
	Value value;
	glong binaryLength;
}


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
public alias extern(C) void function(void* userData) GdaInitFunc;

/*
 * path :
 * user_data :
 */
// void (*GdaConfigListenerFunc) (const gchar *path,  gpointer user_data);
public alias extern(C) void function(char* path, void* userData) GdaConfigListenerFunc;

/*
 * model :
 * row :
 * user_data :
 * Returns :
 */
// gboolean (*GdaDataModelForeachFunc) (GdaDataModel *model,  GdaRow *row,  gpointer user_data);
public alias extern(C) int function(GdaDataModel* model, GdaRow* row, void* userData) GdaDataModelForeachFunc;
