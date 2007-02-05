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

// Adapted from John Reimer's DUI loader modules


module gdac.gda;

private import std.stdio;
private import gdac.gdatypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker gda_Linker;

static this()
{
 gda_Linker = new Linker(libPath ~ importLibs[LIBRARY.GDA] );
 gda_Linker.link(gdaLinks);
 debug writefln("* Finished static this(): gda");
}

static ~this()
{
 delete gda_Linker;
 debug writefln("* Finished static ~this(): gda");
}

extern(C) 
{	
	// gda.Gda
	
	void function(gchar* appId, gchar* versio, gint nargs, gchar*[] args)gda_init;
	void function(GdaInitFunc initFunc, gpointer userData)gda_main_run;
	void function()gda_main_quit;
	gchar* function(GdaValueType type)gda_type_to_string;
	GdaValueType function(gchar* str)gda_type_from_string;
	GList* function(GHashTable* hashTable)gda_string_hash_to_list;
	gchar* function(gchar* sql, GdaParameterList* params)gda_sql_replace_placeholders;
	gchar* function(gchar* filename)gda_file_load;
	gboolean function(gchar* filename, gchar* buffer, gint len)gda_file_save;
	
	// gda.Blob
	
	gint function(GdaBlob* blob, GdaBlobMode mode)gda_blob_open;
	gint function(GdaBlob* blob, gpointer buf, gint size, gint* bytesRead)gda_blob_read;
	gint function(GdaBlob* blob, gpointer buf, gint size, gint* bytesWritten)gda_blob_write;
	gint function(GdaBlob* blob, gint offset, gint whence)gda_blob_lseek;
	gint function(GdaBlob* blob)gda_blob_close;
	gint function(GdaBlob* blob)gda_blob_remove;
	void function(GdaBlob* blob)gda_blob_free_data;
	
	// gda.Client
	
	GdaClient* function()gda_client_new;
	GdaConnection* function(GdaClient* client, gchar* dsn, gchar* username, gchar* password, GdaConnectionOptions options)gda_client_open_connection;
	GdaConnection* function(GdaClient* client, gchar* providerId, gchar* cncString, GdaConnectionOptions options)gda_client_open_connection_from_string;
	GList* function(GdaClient* client)gda_client_get_connection_list;
	GdaConnection* function(GdaClient* client, gchar* dsn, gchar* username, gchar* password)gda_client_find_connection;
	void function(GdaClient* client)gda_client_close_all_connections;
	void function(GdaClient* client, GdaConnection* cnc, GdaClientEvent event, GdaParameterList* params)gda_client_notify_event;
	void function(GdaClient* client, GdaConnection* cnc, GdaError* error)gda_client_notify_error_event;
	void function(GdaClient* client, GdaConnection* cnc)gda_client_notify_connection_opened_event;
	void function(GdaClient* client, GdaConnection* cnc)gda_client_notify_connection_closed_event;
	void function(GdaClient* client, GdaConnection* cnc, GdaTransaction* xaction)gda_client_notify_transaction_started_event;
	void function(GdaClient* client, GdaConnection* cnc, GdaTransaction* xaction)gda_client_notify_transaction_committed_event;
	void function(GdaClient* client, GdaConnection* cnc, GdaTransaction* xaction)gda_client_notify_transaction_cancelled_event;
	gboolean function(GdaClient* client, GdaTransaction* xaction)gda_client_begin_transaction;
	gboolean function(GdaClient* client, GdaTransaction* xaction)gda_client_commit_transaction;
	gboolean function(GdaClient* client, GdaTransaction* xaction)gda_client_rollback_transaction;
	
	// gda.Connection
	
	GdaConnection* function(GdaClient* client, GdaServerProvider* provider, gchar* dsn, gchar* username, gchar* password, GdaConnectionOptions options)gda_connection_new;
	gboolean function(GdaConnection* cnc)gda_connection_close;
	gboolean function(GdaConnection* cnc)gda_connection_is_open;
	GdaClient* function(GdaConnection* cnc)gda_connection_get_client;
	void function(GdaConnection* cnc, GdaClient* client)gda_connection_set_client;
	GdaConnectionOptions function(GdaConnection* cnc)gda_connection_get_options;
	gchar* function(GdaConnection* cnc)gda_connection_get_server_version;
	gchar* function(GdaConnection* cnc)gda_connection_get_database;
	gchar* function(GdaConnection* cnc)gda_connection_get_dsn;
	gchar* function(GdaConnection* cnc)gda_connection_get_cnc_string;
	gchar* function(GdaConnection* cnc)gda_connection_get_provider;
	gchar* function(GdaConnection* cnc)gda_connection_get_username;
	gchar* function(GdaConnection* cnc)gda_connection_get_password;
	void function(GdaConnection* cnc, GdaError* error)gda_connection_add_error;
	void function(GdaConnection* cnc, gchar* str, ... )gda_connection_add_error_string;
	void function(GdaConnection* cnc, GList* errorList)gda_connection_add_error_list;
	gboolean function(GdaConnection* cnc, gchar* name)gda_connection_change_database;
	gboolean function(GdaConnection* cnc, gchar* name)gda_connection_create_database;
	gboolean function(GdaConnection* cnc, gchar* name)gda_connection_drop_database;
	gboolean function(GdaConnection* cnc, gchar* tableName, GdaFieldAttributes*[] attributes)gda_connection_create_table;
	gboolean function(GdaConnection* cnc, gchar* tableName)gda_connection_drop_table;
	GList* function(GdaConnection* cnc, GdaCommand* cmd, GdaParameterList* params)gda_connection_execute_command;
	gchar* function(GdaConnection* cnc, GdaDataModel* recset)gda_connection_get_last_insert_id;
	GdaDataModel* function(GdaConnection* cnc, GdaCommand* cmd, GdaParameterList* params)gda_connection_execute_single_command;
	gint function(GdaConnection* cnc, GdaCommand* cmd, GdaParameterList* params)gda_connection_execute_non_query;
	gboolean function(GdaConnection* cnc, GdaTransaction* xaction)gda_connection_begin_transaction;
	gboolean function(GdaConnection* cnc, GdaTransaction* xaction)gda_connection_commit_transaction;
	gboolean function(GdaConnection* cnc, GdaTransaction* xaction)gda_connection_rollback_transaction;
	gboolean function(GdaConnection* cnc, GdaBlob* blob)gda_connection_create_blob;
	GList* function(GdaConnection* cnc)gda_connection_get_errors;
	gboolean function(GdaConnection* cnc, GdaConnectionFeature feature)gda_connection_supports;
	GdaDataModel* function(GdaConnection* cnc, GdaConnectionSchema schema, GdaParameterList* params)gda_connection_get_schema;
	
	// gda.Command
	
	GType function()gda_command_get_type;
	GdaCommand* function(gchar* text, GdaCommandType type, GdaCommandOptions options)gda_command_new;
	void function(GdaCommand* cmd)gda_command_free;
	GdaCommand* function(GdaCommand* cmd)gda_command_copy;
	gchar* function(GdaCommand* cmd)gda_command_get_text;
	void function(GdaCommand* cmd, gchar* text)gda_command_set_text;
	GdaCommandType function(GdaCommand* cmd)gda_command_get_command_type;
	void function(GdaCommand* cmd, GdaCommandType type)gda_command_set_command_type;
	GdaCommandOptions function(GdaCommand* cmd)gda_command_get_options;
	void function(GdaCommand* cmd, GdaCommandOptions options)gda_command_set_options;
	GdaTransaction* function(GdaCommand* cmd)gda_command_get_transaction;
	void function(GdaCommand* cmd, GdaTransaction* xaction)gda_command_set_transaction;
	
	// gda.Config
	
	gchar* function(gchar* path)gda_config_get_string;
	gint function(gchar* path)gda_config_get_int;
	gdouble function(gchar* path)gda_config_get_float;
	gboolean function(gchar* path)gda_config_get_boolean;
	void function(gchar* path, gchar* newValue)gda_config_set_string;
	void function(gchar* path, gint newValue)gda_config_set_int;
	void function(gchar* path, gdouble newValue)gda_config_set_float;
	void function(gchar* path, gboolean newValue)gda_config_set_boolean;
	void function(gchar* path)gda_config_remove_section;
	void function(gchar* path)gda_config_remove_key;
	gboolean function(gchar* path)gda_config_has_section;
	gboolean function(gchar* path)gda_config_has_key;
	GList* function(gchar* path)gda_config_list_sections;
	GList* function(gchar* path)gda_config_list_keys;
	gchar* function(gchar* path)gda_config_get_type;
	void function(GList* list)gda_config_free_list;
	guint function(gchar* path, GdaConfigListenerFunc func, gpointer userData)gda_config_add_listener;
	void function(guint id)gda_config_remove_listener;
	GList* function()gda_config_get_provider_list;
	void function(GList* list)gda_config_free_provider_list;
	GdaProviderInfo* function(gchar* name)gda_config_get_provider_by_name;
	GdaDataModel* function()gda_config_get_provider_model;
	GdaDataSourceInfo* function(GdaDataSourceInfo* src)gda_config_copy_data_source_info;
	void function(GdaDataSourceInfo* info)gda_config_free_data_source_info;
	GList* function()gda_config_get_data_source_list;
	GdaDataSourceInfo* function(gchar* name)gda_config_find_data_source;
	void function(GList* list)gda_config_free_data_source_list;
	GdaDataModel* function()gda_config_get_data_source_model;
	void function(gchar* name, gchar* provider, gchar* cncString, gchar* description, gchar* username, gchar* password)gda_config_save_data_source;
	void function(GdaDataSourceInfo* dsnInfo)gda_config_save_data_source_info;
	void function(gchar* name)gda_config_remove_data_source;
	
	// gda.DataSourceInfo
	
	GType function()gda_data_source_info_get_type;
	
	// gda.ProviderInfo
	
	GType function()gda_provider_info_get_type;
	GdaProviderInfo* function(GdaProviderInfo* src)gda_provider_info_copy;
	void function(GdaProviderInfo* providerInfo)gda_provider_info_free;
	
	// gda.DataModelArray
	
	GdaDataModel* function(gint cols)gda_data_model_array_new;
	void function(GdaDataModelArray* model, gint cols)gda_data_model_array_set_n_columns;
	void function(GdaDataModelArray* model)gda_data_model_array_clear;
	
	// gda.DataModelHash
	
	GdaDataModel* function(gint cols)gda_data_model_hash_new;
	GdaValue* function(GdaDataModel* model, gint col, gint row)gda_data_model_hash_get_value_at;
	void function(GdaDataModelHash* model)gda_data_model_hash_clear;
	void function(GdaDataModelHash* model, gint cols)gda_data_model_hash_set_n_columns;
	void function(GdaDataModelHash* model, gint rownum, GdaRow* row)gda_data_model_hash_insert_row;
	GdaRow* function(GdaDataModel* model, gint row)gda_data_model_hash_get_row;
	
	// gda.DataModelList
	
	GdaDataModel* function()gda_data_model_list_new;
	GdaDataModel* function(GList* list)gda_data_model_list_new_from_string_list;
	GdaRow* function(GdaDataModelList* model, GdaValue* value)gda_data_model_list_append_value;
	
	// gda.DataModel
	
	void function(GdaDataModel* model)gda_data_model_changed;
	void function(GdaDataModel* model, gint row)gda_data_model_row_inserted;
	void function(GdaDataModel* model, gint row)gda_data_model_row_updated;
	void function(GdaDataModel* model, gint row)gda_data_model_row_removed;
	void function(GdaDataModel* model, gint col)gda_data_model_column_inserted;
	void function(GdaDataModel* model, gint col)gda_data_model_column_updated;
	void function(GdaDataModel* model, gint col)gda_data_model_column_removed;
	void function(GdaDataModel* model)gda_data_model_freeze;
	void function(GdaDataModel* model)gda_data_model_thaw;
	gint function(GdaDataModel* model)gda_data_model_get_n_rows;
	gint function(GdaDataModel* model)gda_data_model_get_n_columns;
	GdaFieldAttributes* function(GdaDataModel* model, gint col)gda_data_model_describe_column;
	gchar* function(GdaDataModel* model, gint col)gda_data_model_get_column_title;
	void function(GdaDataModel* model, gint col, gchar* title)gda_data_model_set_column_title;
	gint function(GdaDataModel* model, gchar* title)gda_data_model_get_column_position;
	GdaRow* function(GdaDataModel* model, gint row)gda_data_model_get_row;
	GdaValue* function(GdaDataModel* model, gint col, gint row)gda_data_model_get_value_at;
	gboolean function(GdaDataModel* model)gda_data_model_is_updatable;
	GdaRow* function(GdaDataModel* model, GList* values)gda_data_model_append_row;
	gboolean function(GdaDataModel* model, GdaRow* row)gda_data_model_remove_row;
	gboolean function(GdaDataModel* model, GdaRow* row)gda_data_model_update_row;
	gboolean function(GdaDataModel* model, GdaFieldAttributes* attrs)gda_data_model_append_column;
	gboolean function(GdaDataModel* model, gint col, GdaFieldAttributes* attrs)gda_data_model_update_column;
	gboolean function(GdaDataModel* model, gint col)gda_data_model_remove_column;
	void function(GdaDataModel* model, GdaDataModelForeachFunc func, gpointer userData)gda_data_model_foreach;
	gboolean function(GdaDataModel* model)gda_data_model_has_changed;
	gboolean function(GdaDataModel* model)gda_data_model_begin_update;
	gboolean function(GdaDataModel* model)gda_data_model_cancel_update;
	gboolean function(GdaDataModel* model)gda_data_model_end_update;
	gchar* function(GdaDataModel* model)gda_data_model_to_comma_separated;
	gchar* function(GdaDataModel* model)gda_data_model_to_tab_separated;
	gchar* function(GdaDataModel* model, gboolean standalone)gda_data_model_to_xml;
	xmlNodePtr function(GdaDataModel* model, gchar* name)gda_data_model_to_xml_node;
	gboolean function(GdaDataModel* model, xmlNodePtr node)gda_data_model_add_data_from_xml_node;
	gchar* function(GdaDataModel* model)gda_data_model_get_command_text;
	void function(GdaDataModel* model, gchar* txt)gda_data_model_set_command_text;
	GdaCommandType function(GdaDataModel* model)gda_data_model_get_command_type;
	void function(GdaDataModel* model, GdaCommandType type)gda_data_model_set_command_type;
	
	// gda.Error
	
	GdaError* function()gda_error_new;
	void function(GdaError* error)gda_error_free;
	GList* function(GList* errors)gda_error_list_copy;
	void function(GList* errors)gda_error_list_free;
	gchar* function(GdaError* error)gda_error_get_description;
	void function(GdaError* error, gchar* description)gda_error_set_description;
	glong function(GdaError* error)gda_error_get_number;
	void function(GdaError* error, glong number)gda_error_set_number;
	gchar* function(GdaError* error)gda_error_get_source;
	void function(GdaError* error, gchar* source)gda_error_set_source;
	gchar* function(GdaError* error)gda_error_get_sqlstate;
	void function(GdaError* error, gchar* sqlstate)gda_error_set_sqlstate;
	
	// gda.Export
	
	GdaExport* function(GdaConnection* cnc)gda_export_new;
	GList* function(GdaExport* exp)gda_export_get_tables;
	GList* function(GdaExport* exp)gda_export_get_selected_tables;
	void function(GdaExport* exp, gchar* table)gda_export_select_table;
	void function(GdaExport* exp, GList* list)gda_export_select_table_list;
	void function(GdaExport* exp, gchar* table)gda_export_unselect_table;
	void function(GdaExport* exp, GdaExportFlags flags)gda_export_run;
	void function(GdaExport* exp)gda_export_stop;
	GdaConnection* function(GdaExport* exp)gda_export_get_connection;
	void function(GdaExport* exp, GdaConnection* cnc)gda_export_set_connection;
	
	// gda.FieldAttributes
	
	GType function()gda_field_attributes_get_type;
	GdaFieldAttributes* function()gda_field_attributes_new;
	GdaFieldAttributes* function(GdaFieldAttributes* fa)gda_field_attributes_copy;
	void function(GdaFieldAttributes* fa)gda_field_attributes_free;
	gboolean function(GdaFieldAttributes* lhs, GdaFieldAttributes* rhs)gda_field_attributes_equal;
	glong function(GdaFieldAttributes* fa)gda_field_attributes_get_defined_size;
	void function(GdaFieldAttributes* fa, glong size)gda_field_attributes_set_defined_size;
	gchar* function(GdaFieldAttributes* fa)gda_field_attributes_get_name;
	void function(GdaFieldAttributes* fa, gchar* name)gda_field_attributes_set_name;
	gchar* function(GdaFieldAttributes* fa)gda_field_attributes_get_table;
	void function(GdaFieldAttributes* fa, gchar* table)gda_field_attributes_set_table;
	gchar* function(GdaFieldAttributes* fa)gda_field_attributes_get_caption;
	void function(GdaFieldAttributes* fa, gchar* caption)gda_field_attributes_set_caption;
	glong function(GdaFieldAttributes* fa)gda_field_attributes_get_scale;
	void function(GdaFieldAttributes* fa, glong scale)gda_field_attributes_set_scale;
	GdaValueType function(GdaFieldAttributes* fa)gda_field_attributes_get_gdatype;
	void function(GdaFieldAttributes* fa, GdaValueType type)gda_field_attributes_set_gdatype;
	gboolean function(GdaFieldAttributes* fa)gda_field_attributes_get_allow_null;
	void function(GdaFieldAttributes* fa, gboolean allow)gda_field_attributes_set_allow_null;
	gboolean function(GdaFieldAttributes* fa)gda_field_attributes_get_primary_key;
	void function(GdaFieldAttributes* fa, gboolean pk)gda_field_attributes_set_primary_key;
	gboolean function(GdaFieldAttributes* fa)gda_field_attributes_get_unique_key;
	void function(GdaFieldAttributes* fa, gboolean uk)gda_field_attributes_set_unique_key;
	gchar* function(GdaFieldAttributes* fa)gda_field_attributes_get_references;
	void function(GdaFieldAttributes* fa, gchar* ref)gda_field_attributes_set_references;
	gboolean function(GdaFieldAttributes* fa)gda_field_attributes_get_auto_increment;
	void function(GdaFieldAttributes* fa, gboolean isAuto)gda_field_attributes_set_auto_increment;
	gint function(GdaFieldAttributes* fa)gda_field_attributes_get_position;
	void function(GdaFieldAttributes* fa, gint position)gda_field_attributes_set_position;
	GdaValue* function(GdaFieldAttributes* fa)gda_field_attributes_get_default_value;
	void function(GdaFieldAttributes* fa, GdaValue* defaultValue)gda_field_attributes_set_default_value;
	
	// gda.Log
	
	void function()gda_log_enable;
	void function()gda_log_disable;
	gboolean function()gda_log_is_enabled;
	void function(gchar* format, ... )gda_log_message;
	void function(gchar* format, ... )gda_log_error;
	
	// gda.Parameter
	
	GType function()gda_parameter_get_type;
	GdaParameter* function(gchar* name, GdaValue* value)gda_parameter_new_from_value;
	GdaParameter* function(gchar* name, gboolean value)gda_parameter_new_boolean;
	GdaParameter* function(gchar* name, gdouble value)gda_parameter_new_double;
	GdaParameter* function(gchar* name, GObject* value)gda_parameter_new_gobject;
	GdaParameter* function(gchar* name, gchar* value)gda_parameter_new_string;
	GdaParameter* function(GdaParameter* param)gda_parameter_copy;
	void function(GdaParameter* param)gda_parameter_free;
	gchar* function(GdaParameter* param)gda_parameter_get_name;
	void function(GdaParameter* param, gchar* name)gda_parameter_set_name;
	GdaValue* function(GdaParameter* param)gda_parameter_get_value;
	void function(GdaParameter* param, GdaValue* value)gda_parameter_set_value;
	
	// gda.ParameterList
	
	GType function()gda_parameter_list_get_type;
	GdaParameterList* function()gda_parameter_list_new;
	void function(GdaParameterList* plist)gda_parameter_list_free;
	GdaParameterList* function(GdaParameterList* plist)gda_parameter_list_copy;
	void function(GdaParameterList* plist, GdaParameter* param)gda_parameter_list_add_parameter;
	GList* function(GdaParameterList* plist)gda_parameter_list_get_names;
	GdaParameter* function(GdaParameterList* plist, gchar* name)gda_parameter_list_find;
	void function(GdaParameterList* plist)gda_parameter_list_clear;
	guint function(GdaParameterList* plist)gda_parameter_list_get_length;
	
	// gda.QuarkList
	
	GType function()gda_quark_list_get_type;
	GdaQuarkList* function()gda_quark_list_new;
	GdaQuarkList* function(gchar* string)gda_quark_list_new_from_string;
	GdaQuarkList* function(GdaQuarkList* qlist)gda_quark_list_copy;
	void function(GdaQuarkList* qlist)gda_quark_list_free;
	void function(GdaQuarkList* qlist, gchar* string, gboolean cleanup)gda_quark_list_add_from_string;
	gchar* function(GdaQuarkList* qlist, gchar* name)gda_quark_list_find;
	void function(GdaQuarkList* qlist, gchar* name)gda_quark_list_remove;
	void function(GdaQuarkList* qlist)gda_quark_list_clear;
	
	// gda.Row
	
	GType function()gda_row_get_type;
	GdaRow* function(GdaDataModel* model, gint count)gda_row_new;
	GdaRow* function(GdaDataModel* model, GList* values)gda_row_new_from_list;
	GdaRow* function(GdaRow* row)gda_row_copy;
	void function(GdaRow* row)gda_row_free;
	GdaDataModel* function(GdaRow* row)gda_row_get_model;
	gint function(GdaRow* row)gda_row_get_number;
	void function(GdaRow* row, gint number)gda_row_set_number;
	gchar* function(GdaRow* row)gda_row_get_id;
	void function(GdaRow* row, gchar* id)gda_row_set_id;
	GdaValue* function(GdaRow* row, gint num)gda_row_get_value;
	gint function(GdaRow* row)gda_row_get_length;
	
	// gda.Select
	
	GdaDataModel* function()gda_select_new;
	void function(GdaSelect* sel, gchar* name, GdaDataModel* source)gda_select_add_source;
	void function(GdaSelect* sel, gchar* sql)gda_select_set_sql;
	gboolean function(GdaSelect* sel)gda_select_run;
	
	// gda.Table
	
	GdaTable* function(gchar* name)gda_table_new;
	GdaTable* function(gchar* name, GdaDataModel* model, gboolean addData)gda_table_new_from_model;
	gchar* function(GdaTable* table)gda_table_get_name;
	void function(GdaTable* table, gchar* name)gda_table_set_name;
	void function(GdaTable* table, GdaFieldAttributes* fa)gda_table_add_field;
	void function(GdaTable* table, GdaDataModel* model)gda_table_add_data_from_model;
	
	// gda.Transaction
	
	GdaTransaction* function(gchar* name)gda_transaction_new;
	GdaTransactionIsolation function(GdaTransaction* xaction)gda_transaction_get_isolation_level;
	void function(GdaTransaction* xaction, GdaTransactionIsolation level)gda_transaction_set_isolation_level;
	gchar* function(GdaTransaction* xaction)gda_transaction_get_name;
	void function(GdaTransaction* xaction, gchar* name)gda_transaction_set_name;
	
	// gda.Value
	
	GType function()gda_value_get_gtype;
	GdaValue* function()gda_value_new_null;
	GdaValue* function(gint64 val)gda_value_new_bigint;
	GdaValue* function(guint64 val)gda_value_new_biguint;
	GdaValue* function(gconstpointer val, glong size)gda_value_new_binary;
	GdaValue* function(GdaBlob* val)gda_value_new_blob;
	GdaValue* function(gboolean val)gda_value_new_boolean;
	GdaValue* function(GdaDate* val)gda_value_new_date;
	GdaValue* function(gdouble val)gda_value_new_double;
	GdaValue* function(GdaGeometricPoint* val)gda_value_new_geometric_point;
	GdaValue* function(GObject* val)gda_value_new_gobject;
	GdaValue* function(gint val)gda_value_new_integer;
	GdaValue* function(GdaValueList* val)gda_value_new_list;
	GdaValue* function(GdaMoney* val)gda_value_new_money;
	GdaValue* function(GdaNumeric* val)gda_value_new_numeric;
	GdaValue* function(gfloat val)gda_value_new_single;
	GdaValue* function(gshort val)gda_value_new_smallint;
	GdaValue* function(gushort val)gda_value_new_smalluint;
	GdaValue* function(gchar* val)gda_value_new_string;
	GdaValue* function(GdaTime* val)gda_value_new_time;
	GdaValue* function(GdaTimestamp* val)gda_value_new_timestamp;
	GdaValue* function(time_t val)gda_value_new_timestamp_from_timet;
	GdaValue* function(gchar val)gda_value_new_tinyint;
	GdaValue* function(guchar val)gda_value_new_tinyuint;
	GdaValue* function(GdaValueType val)gda_value_new_type;
	GdaValue* function(guint val)gda_value_new_uinteger;
	GdaValue* function(gchar* asString, GdaValueType type)gda_value_new_from_string;
	GdaValue* function(xmlNodePtr node)gda_value_new_from_xml;
	void function(GdaValue* value)gda_value_free;
	GdaValueType function(GdaValue* value)gda_value_get_type;
	gboolean function(GdaValue* value)gda_value_is_null;
	gboolean function(GdaValue* value)gda_value_is_number;
	GdaValue* function(GdaValue* value)gda_value_copy;
	gint64 function(GdaValue* value)gda_value_get_bigint;
	void function(GdaValue* value, gint64 val)gda_value_set_bigint;
	guint64 function(GdaValue* value)gda_value_get_biguint;
	void function(GdaValue* value, guint64 val)gda_value_set_biguint;
	gpointer function(GdaValue* value, glong* size)gda_value_get_binary;
	void function(GdaValue* value, gconstpointer val, glong size)gda_value_set_binary;
	GdaBlob* function(GdaValue* value)gda_value_get_blob;
	void function(GdaValue* value, GdaBlob* val)gda_value_set_blob;
	gboolean function(GdaValue* value)gda_value_get_boolean;
	void function(GdaValue* value, gboolean val)gda_value_set_boolean;
	GdaDate* function(GdaValue* value)gda_value_get_date;
	void function(GdaValue* value, GdaDate* val)gda_value_set_date;
	gdouble function(GdaValue* value)gda_value_get_double;
	void function(GdaValue* value, gdouble val)gda_value_set_double;
	GdaGeometricPoint* function(GdaValue* value)gda_value_get_geometric_point;
	void function(GdaValue* value, GdaGeometricPoint* val)gda_value_set_geometric_point;
	GObject* function(GdaValue* value)gda_value_get_gobject;
	void function(GdaValue* value, GObject* val)gda_value_set_gobject;
	gint function(GdaValue* value)gda_value_get_integer;
	void function(GdaValue* value, gint val)gda_value_set_integer;
	GdaValueList* function(GdaValue* value)gda_value_get_list;
	void function(GdaValue* value, GdaValueList* val)gda_value_set_list;
	void function(GdaValue* value)gda_value_set_null;
	GdaMoney* function(GdaValue* value)gda_value_get_money;
	void function(GdaValue* value, GdaMoney* val)gda_value_set_money;
	GdaNumeric* function(GdaValue* value)gda_value_get_numeric;
	void function(GdaValue* value, GdaNumeric* val)gda_value_set_numeric;
	gfloat function(GdaValue* value)gda_value_get_single;
	void function(GdaValue* value, gfloat val)gda_value_set_single;
	gshort function(GdaValue* value)gda_value_get_smallint;
	void function(GdaValue* value, gshort val)gda_value_set_smallint;
	gushort function(GdaValue* value)gda_value_get_smalluint;
	void function(GdaValue* value, gushort val)gda_value_set_smalluint;
	gchar* function(GdaValue* value)gda_value_get_string;
	void function(GdaValue* value, gchar* val)gda_value_set_string;
	GdaTime* function(GdaValue* value)gda_value_get_time;
	void function(GdaValue* value, GdaTime* val)gda_value_set_time;
	GdaTimestamp* function(GdaValue* value)gda_value_get_timestamp;
	void function(GdaValue* value, GdaTimestamp* val)gda_value_set_timestamp;
	gchar function(GdaValue* value)gda_value_get_tinyint;
	void function(GdaValue* value, gchar val)gda_value_set_tinyint;
	guchar function(GdaValue* value)gda_value_get_tinyuint;
	void function(GdaValue* value, guchar val)gda_value_set_tinyuint;
	guint function(GdaValue* value)gda_value_get_uinteger;
	void function(GdaValue* value, guint val)gda_value_set_uinteger;
	GdaValueType function(GdaValue* value)gda_value_get_vtype;
	void function(GdaValue* value, GdaValueType type)gda_value_set_vtype;
	gboolean function(GdaValue* value, gchar* asString, GdaValueType type)gda_value_set_from_string;
	gboolean function(GdaValue* value, GdaValue* from)gda_value_set_from_value;
	gint function(GdaValue* value1, GdaValue* value2)gda_value_compare;
	gchar* function(GdaValue* value)gda_value_stringify;
	xmlNodePtr function(GdaValue* value)gda_value_to_xml;


}

Symbol[] gdaLinks = 
[

	{ "gda_init",  cast(void**)& gda_init},
	{ "gda_main_run",  cast(void**)& gda_main_run},
	{ "gda_main_quit",  cast(void**)& gda_main_quit},
	{ "gda_type_to_string",  cast(void**)& gda_type_to_string},
	{ "gda_type_from_string",  cast(void**)& gda_type_from_string},
	{ "gda_string_hash_to_list",  cast(void**)& gda_string_hash_to_list},
	{ "gda_sql_replace_placeholders",  cast(void**)& gda_sql_replace_placeholders},
	{ "gda_file_load",  cast(void**)& gda_file_load},
	{ "gda_file_save",  cast(void**)& gda_file_save},
	{ "gda_blob_open",  cast(void**)& gda_blob_open},
	{ "gda_blob_read",  cast(void**)& gda_blob_read},
	{ "gda_blob_write",  cast(void**)& gda_blob_write},
	{ "gda_blob_lseek",  cast(void**)& gda_blob_lseek},
	{ "gda_blob_close",  cast(void**)& gda_blob_close},
	{ "gda_blob_remove",  cast(void**)& gda_blob_remove},
	{ "gda_blob_free_data",  cast(void**)& gda_blob_free_data},
	{ "gda_client_new",  cast(void**)& gda_client_new},
	{ "gda_client_open_connection",  cast(void**)& gda_client_open_connection},
	{ "gda_client_open_connection_from_string",  cast(void**)& gda_client_open_connection_from_string},
	{ "gda_client_get_connection_list",  cast(void**)& gda_client_get_connection_list},
	{ "gda_client_find_connection",  cast(void**)& gda_client_find_connection},
	{ "gda_client_close_all_connections",  cast(void**)& gda_client_close_all_connections},
	{ "gda_client_notify_event",  cast(void**)& gda_client_notify_event},
	{ "gda_client_notify_error_event",  cast(void**)& gda_client_notify_error_event},
	{ "gda_client_notify_connection_opened_event",  cast(void**)& gda_client_notify_connection_opened_event},
	{ "gda_client_notify_connection_closed_event",  cast(void**)& gda_client_notify_connection_closed_event},
	{ "gda_client_notify_transaction_started_event",  cast(void**)& gda_client_notify_transaction_started_event},
	{ "gda_client_notify_transaction_committed_event",  cast(void**)& gda_client_notify_transaction_committed_event},
	{ "gda_client_notify_transaction_cancelled_event",  cast(void**)& gda_client_notify_transaction_cancelled_event},
	{ "gda_client_begin_transaction",  cast(void**)& gda_client_begin_transaction},
	{ "gda_client_commit_transaction",  cast(void**)& gda_client_commit_transaction},
	{ "gda_client_rollback_transaction",  cast(void**)& gda_client_rollback_transaction},
	{ "gda_connection_new",  cast(void**)& gda_connection_new},
	{ "gda_connection_close",  cast(void**)& gda_connection_close},
	{ "gda_connection_is_open",  cast(void**)& gda_connection_is_open},
	{ "gda_connection_get_client",  cast(void**)& gda_connection_get_client},
	{ "gda_connection_set_client",  cast(void**)& gda_connection_set_client},
	{ "gda_connection_get_options",  cast(void**)& gda_connection_get_options},
	{ "gda_connection_get_server_version",  cast(void**)& gda_connection_get_server_version},
	{ "gda_connection_get_database",  cast(void**)& gda_connection_get_database},
	{ "gda_connection_get_dsn",  cast(void**)& gda_connection_get_dsn},
	{ "gda_connection_get_cnc_string",  cast(void**)& gda_connection_get_cnc_string},
	{ "gda_connection_get_provider",  cast(void**)& gda_connection_get_provider},
	{ "gda_connection_get_username",  cast(void**)& gda_connection_get_username},
	{ "gda_connection_get_password",  cast(void**)& gda_connection_get_password},
	{ "gda_connection_add_error",  cast(void**)& gda_connection_add_error},
	{ "gda_connection_add_error_string",  cast(void**)& gda_connection_add_error_string},
	{ "gda_connection_add_error_list",  cast(void**)& gda_connection_add_error_list},
	{ "gda_connection_change_database",  cast(void**)& gda_connection_change_database},
	{ "gda_connection_create_database",  cast(void**)& gda_connection_create_database},
	{ "gda_connection_drop_database",  cast(void**)& gda_connection_drop_database},
	{ "gda_connection_create_table",  cast(void**)& gda_connection_create_table},
	{ "gda_connection_drop_table",  cast(void**)& gda_connection_drop_table},
	{ "gda_connection_execute_command",  cast(void**)& gda_connection_execute_command},
	{ "gda_connection_get_last_insert_id",  cast(void**)& gda_connection_get_last_insert_id},
	{ "gda_connection_execute_single_command",  cast(void**)& gda_connection_execute_single_command},
	{ "gda_connection_execute_non_query",  cast(void**)& gda_connection_execute_non_query},
	{ "gda_connection_begin_transaction",  cast(void**)& gda_connection_begin_transaction},
	{ "gda_connection_commit_transaction",  cast(void**)& gda_connection_commit_transaction},
	{ "gda_connection_rollback_transaction",  cast(void**)& gda_connection_rollback_transaction},
	{ "gda_connection_create_blob",  cast(void**)& gda_connection_create_blob},
	{ "gda_connection_get_errors",  cast(void**)& gda_connection_get_errors},
	{ "gda_connection_supports",  cast(void**)& gda_connection_supports},
	{ "gda_connection_get_schema",  cast(void**)& gda_connection_get_schema},
	{ "gda_command_get_type",  cast(void**)& gda_command_get_type},
	{ "gda_command_new",  cast(void**)& gda_command_new},
	{ "gda_command_free",  cast(void**)& gda_command_free},
	{ "gda_command_copy",  cast(void**)& gda_command_copy},
	{ "gda_command_get_text",  cast(void**)& gda_command_get_text},
	{ "gda_command_set_text",  cast(void**)& gda_command_set_text},
	{ "gda_command_get_command_type",  cast(void**)& gda_command_get_command_type},
	{ "gda_command_set_command_type",  cast(void**)& gda_command_set_command_type},
	{ "gda_command_get_options",  cast(void**)& gda_command_get_options},
	{ "gda_command_set_options",  cast(void**)& gda_command_set_options},
	{ "gda_command_get_transaction",  cast(void**)& gda_command_get_transaction},
	{ "gda_command_set_transaction",  cast(void**)& gda_command_set_transaction},
	{ "gda_config_get_string",  cast(void**)& gda_config_get_string},
	{ "gda_config_get_int",  cast(void**)& gda_config_get_int},
	{ "gda_config_get_float",  cast(void**)& gda_config_get_float},
	{ "gda_config_get_boolean",  cast(void**)& gda_config_get_boolean},
	{ "gda_config_set_string",  cast(void**)& gda_config_set_string},
	{ "gda_config_set_int",  cast(void**)& gda_config_set_int},
	{ "gda_config_set_float",  cast(void**)& gda_config_set_float},
	{ "gda_config_set_boolean",  cast(void**)& gda_config_set_boolean},
	{ "gda_config_remove_section",  cast(void**)& gda_config_remove_section},
	{ "gda_config_remove_key",  cast(void**)& gda_config_remove_key},
	{ "gda_config_has_section",  cast(void**)& gda_config_has_section},
	{ "gda_config_has_key",  cast(void**)& gda_config_has_key},
	{ "gda_config_list_sections",  cast(void**)& gda_config_list_sections},
	{ "gda_config_list_keys",  cast(void**)& gda_config_list_keys},
	{ "gda_config_get_type",  cast(void**)& gda_config_get_type},
	{ "gda_config_free_list",  cast(void**)& gda_config_free_list},
	{ "gda_config_add_listener",  cast(void**)& gda_config_add_listener},
	{ "gda_config_remove_listener",  cast(void**)& gda_config_remove_listener},
	{ "gda_config_get_provider_list",  cast(void**)& gda_config_get_provider_list},
	{ "gda_config_free_provider_list",  cast(void**)& gda_config_free_provider_list},
	{ "gda_config_get_provider_by_name",  cast(void**)& gda_config_get_provider_by_name},
	{ "gda_config_get_provider_model",  cast(void**)& gda_config_get_provider_model},
	{ "gda_config_copy_data_source_info",  cast(void**)& gda_config_copy_data_source_info},
	{ "gda_config_free_data_source_info",  cast(void**)& gda_config_free_data_source_info},
	{ "gda_config_get_data_source_list",  cast(void**)& gda_config_get_data_source_list},
	{ "gda_config_find_data_source",  cast(void**)& gda_config_find_data_source},
	{ "gda_config_free_data_source_list",  cast(void**)& gda_config_free_data_source_list},
	{ "gda_config_get_data_source_model",  cast(void**)& gda_config_get_data_source_model},
	{ "gda_config_save_data_source",  cast(void**)& gda_config_save_data_source},
	{ "gda_config_save_data_source_info",  cast(void**)& gda_config_save_data_source_info},
	{ "gda_config_remove_data_source",  cast(void**)& gda_config_remove_data_source},
	{ "gda_data_source_info_get_type",  cast(void**)& gda_data_source_info_get_type},
	{ "gda_provider_info_get_type",  cast(void**)& gda_provider_info_get_type},
	{ "gda_provider_info_copy",  cast(void**)& gda_provider_info_copy},
	{ "gda_provider_info_free",  cast(void**)& gda_provider_info_free},
	{ "gda_data_model_array_new",  cast(void**)& gda_data_model_array_new},
	{ "gda_data_model_array_set_n_columns",  cast(void**)& gda_data_model_array_set_n_columns},
	{ "gda_data_model_array_clear",  cast(void**)& gda_data_model_array_clear},
	{ "gda_data_model_hash_new",  cast(void**)& gda_data_model_hash_new},
	{ "gda_data_model_hash_get_value_at",  cast(void**)& gda_data_model_hash_get_value_at},
	{ "gda_data_model_hash_clear",  cast(void**)& gda_data_model_hash_clear},
	{ "gda_data_model_hash_set_n_columns",  cast(void**)& gda_data_model_hash_set_n_columns},
	{ "gda_data_model_hash_insert_row",  cast(void**)& gda_data_model_hash_insert_row},
	{ "gda_data_model_hash_get_row",  cast(void**)& gda_data_model_hash_get_row},
	{ "gda_data_model_list_new",  cast(void**)& gda_data_model_list_new},
	{ "gda_data_model_list_new_from_string_list",  cast(void**)& gda_data_model_list_new_from_string_list},
	{ "gda_data_model_list_append_value",  cast(void**)& gda_data_model_list_append_value},
	{ "gda_data_model_changed",  cast(void**)& gda_data_model_changed},
	{ "gda_data_model_row_inserted",  cast(void**)& gda_data_model_row_inserted},
	{ "gda_data_model_row_updated",  cast(void**)& gda_data_model_row_updated},
	{ "gda_data_model_row_removed",  cast(void**)& gda_data_model_row_removed},
	{ "gda_data_model_column_inserted",  cast(void**)& gda_data_model_column_inserted},
	{ "gda_data_model_column_updated",  cast(void**)& gda_data_model_column_updated},
	{ "gda_data_model_column_removed",  cast(void**)& gda_data_model_column_removed},
	{ "gda_data_model_freeze",  cast(void**)& gda_data_model_freeze},
	{ "gda_data_model_thaw",  cast(void**)& gda_data_model_thaw},
	{ "gda_data_model_get_n_rows",  cast(void**)& gda_data_model_get_n_rows},
	{ "gda_data_model_get_n_columns",  cast(void**)& gda_data_model_get_n_columns},
	{ "gda_data_model_describe_column",  cast(void**)& gda_data_model_describe_column},
	{ "gda_data_model_get_column_title",  cast(void**)& gda_data_model_get_column_title},
	{ "gda_data_model_set_column_title",  cast(void**)& gda_data_model_set_column_title},
	{ "gda_data_model_get_column_position",  cast(void**)& gda_data_model_get_column_position},
	{ "gda_data_model_get_row",  cast(void**)& gda_data_model_get_row},
	{ "gda_data_model_get_value_at",  cast(void**)& gda_data_model_get_value_at},
	{ "gda_data_model_is_updatable",  cast(void**)& gda_data_model_is_updatable},
	{ "gda_data_model_append_row",  cast(void**)& gda_data_model_append_row},
	{ "gda_data_model_remove_row",  cast(void**)& gda_data_model_remove_row},
	{ "gda_data_model_update_row",  cast(void**)& gda_data_model_update_row},
	{ "gda_data_model_append_column",  cast(void**)& gda_data_model_append_column},
	{ "gda_data_model_update_column",  cast(void**)& gda_data_model_update_column},
	{ "gda_data_model_remove_column",  cast(void**)& gda_data_model_remove_column},
	{ "gda_data_model_foreach",  cast(void**)& gda_data_model_foreach},
	{ "gda_data_model_has_changed",  cast(void**)& gda_data_model_has_changed},
	{ "gda_data_model_begin_update",  cast(void**)& gda_data_model_begin_update},
	{ "gda_data_model_cancel_update",  cast(void**)& gda_data_model_cancel_update},
	{ "gda_data_model_end_update",  cast(void**)& gda_data_model_end_update},
	{ "gda_data_model_to_comma_separated",  cast(void**)& gda_data_model_to_comma_separated},
	{ "gda_data_model_to_tab_separated",  cast(void**)& gda_data_model_to_tab_separated},
	{ "gda_data_model_to_xml",  cast(void**)& gda_data_model_to_xml},
	{ "gda_data_model_to_xml_node",  cast(void**)& gda_data_model_to_xml_node},
	{ "gda_data_model_add_data_from_xml_node",  cast(void**)& gda_data_model_add_data_from_xml_node},
	{ "gda_data_model_get_command_text",  cast(void**)& gda_data_model_get_command_text},
	{ "gda_data_model_set_command_text",  cast(void**)& gda_data_model_set_command_text},
	{ "gda_data_model_get_command_type",  cast(void**)& gda_data_model_get_command_type},
	{ "gda_data_model_set_command_type",  cast(void**)& gda_data_model_set_command_type},
	{ "gda_error_new",  cast(void**)& gda_error_new},
	{ "gda_error_free",  cast(void**)& gda_error_free},
	{ "gda_error_list_copy",  cast(void**)& gda_error_list_copy},
	{ "gda_error_list_free",  cast(void**)& gda_error_list_free},
	{ "gda_error_get_description",  cast(void**)& gda_error_get_description},
	{ "gda_error_set_description",  cast(void**)& gda_error_set_description},
	{ "gda_error_get_number",  cast(void**)& gda_error_get_number},
	{ "gda_error_set_number",  cast(void**)& gda_error_set_number},
	{ "gda_error_get_source",  cast(void**)& gda_error_get_source},
	{ "gda_error_set_source",  cast(void**)& gda_error_set_source},
	{ "gda_error_get_sqlstate",  cast(void**)& gda_error_get_sqlstate},
	{ "gda_error_set_sqlstate",  cast(void**)& gda_error_set_sqlstate},
	{ "gda_export_new",  cast(void**)& gda_export_new},
	{ "gda_export_get_tables",  cast(void**)& gda_export_get_tables},
	{ "gda_export_get_selected_tables",  cast(void**)& gda_export_get_selected_tables},
	{ "gda_export_select_table",  cast(void**)& gda_export_select_table},
	{ "gda_export_select_table_list",  cast(void**)& gda_export_select_table_list},
	{ "gda_export_unselect_table",  cast(void**)& gda_export_unselect_table},
	{ "gda_export_run",  cast(void**)& gda_export_run},
	{ "gda_export_stop",  cast(void**)& gda_export_stop},
	{ "gda_export_get_connection",  cast(void**)& gda_export_get_connection},
	{ "gda_export_set_connection",  cast(void**)& gda_export_set_connection},
	{ "gda_field_attributes_get_type",  cast(void**)& gda_field_attributes_get_type},
	{ "gda_field_attributes_new",  cast(void**)& gda_field_attributes_new},
	{ "gda_field_attributes_copy",  cast(void**)& gda_field_attributes_copy},
	{ "gda_field_attributes_free",  cast(void**)& gda_field_attributes_free},
	{ "gda_field_attributes_equal",  cast(void**)& gda_field_attributes_equal},
	{ "gda_field_attributes_get_defined_size",  cast(void**)& gda_field_attributes_get_defined_size},
	{ "gda_field_attributes_set_defined_size",  cast(void**)& gda_field_attributes_set_defined_size},
	{ "gda_field_attributes_get_name",  cast(void**)& gda_field_attributes_get_name},
	{ "gda_field_attributes_set_name",  cast(void**)& gda_field_attributes_set_name},
	{ "gda_field_attributes_get_table",  cast(void**)& gda_field_attributes_get_table},
	{ "gda_field_attributes_set_table",  cast(void**)& gda_field_attributes_set_table},
	{ "gda_field_attributes_get_caption",  cast(void**)& gda_field_attributes_get_caption},
	{ "gda_field_attributes_set_caption",  cast(void**)& gda_field_attributes_set_caption},
	{ "gda_field_attributes_get_scale",  cast(void**)& gda_field_attributes_get_scale},
	{ "gda_field_attributes_set_scale",  cast(void**)& gda_field_attributes_set_scale},
	{ "gda_field_attributes_get_gdatype",  cast(void**)& gda_field_attributes_get_gdatype},
	{ "gda_field_attributes_set_gdatype",  cast(void**)& gda_field_attributes_set_gdatype},
	{ "gda_field_attributes_get_allow_null",  cast(void**)& gda_field_attributes_get_allow_null},
	{ "gda_field_attributes_set_allow_null",  cast(void**)& gda_field_attributes_set_allow_null},
	{ "gda_field_attributes_get_primary_key",  cast(void**)& gda_field_attributes_get_primary_key},
	{ "gda_field_attributes_set_primary_key",  cast(void**)& gda_field_attributes_set_primary_key},
	{ "gda_field_attributes_get_unique_key",  cast(void**)& gda_field_attributes_get_unique_key},
	{ "gda_field_attributes_set_unique_key",  cast(void**)& gda_field_attributes_set_unique_key},
	{ "gda_field_attributes_get_references",  cast(void**)& gda_field_attributes_get_references},
	{ "gda_field_attributes_set_references",  cast(void**)& gda_field_attributes_set_references},
	{ "gda_field_attributes_get_auto_increment",  cast(void**)& gda_field_attributes_get_auto_increment},
	{ "gda_field_attributes_set_auto_increment",  cast(void**)& gda_field_attributes_set_auto_increment},
	{ "gda_field_attributes_get_position",  cast(void**)& gda_field_attributes_get_position},
	{ "gda_field_attributes_set_position",  cast(void**)& gda_field_attributes_set_position},
	{ "gda_field_attributes_get_default_value",  cast(void**)& gda_field_attributes_get_default_value},
	{ "gda_field_attributes_set_default_value",  cast(void**)& gda_field_attributes_set_default_value},
	{ "gda_log_enable",  cast(void**)& gda_log_enable},
	{ "gda_log_disable",  cast(void**)& gda_log_disable},
	{ "gda_log_is_enabled",  cast(void**)& gda_log_is_enabled},
	{ "gda_log_message",  cast(void**)& gda_log_message},
	{ "gda_log_error",  cast(void**)& gda_log_error},
	{ "gda_parameter_get_type",  cast(void**)& gda_parameter_get_type},
	{ "gda_parameter_new_from_value",  cast(void**)& gda_parameter_new_from_value},
	{ "gda_parameter_new_boolean",  cast(void**)& gda_parameter_new_boolean},
	{ "gda_parameter_new_double",  cast(void**)& gda_parameter_new_double},
	{ "gda_parameter_new_gobject",  cast(void**)& gda_parameter_new_gobject},
	{ "gda_parameter_new_string",  cast(void**)& gda_parameter_new_string},
	{ "gda_parameter_copy",  cast(void**)& gda_parameter_copy},
	{ "gda_parameter_free",  cast(void**)& gda_parameter_free},
	{ "gda_parameter_get_name",  cast(void**)& gda_parameter_get_name},
	{ "gda_parameter_set_name",  cast(void**)& gda_parameter_set_name},
	{ "gda_parameter_get_value",  cast(void**)& gda_parameter_get_value},
	{ "gda_parameter_set_value",  cast(void**)& gda_parameter_set_value},
	{ "gda_parameter_list_get_type",  cast(void**)& gda_parameter_list_get_type},
	{ "gda_parameter_list_new",  cast(void**)& gda_parameter_list_new},
	{ "gda_parameter_list_free",  cast(void**)& gda_parameter_list_free},
	{ "gda_parameter_list_copy",  cast(void**)& gda_parameter_list_copy},
	{ "gda_parameter_list_add_parameter",  cast(void**)& gda_parameter_list_add_parameter},
	{ "gda_parameter_list_get_names",  cast(void**)& gda_parameter_list_get_names},
	{ "gda_parameter_list_find",  cast(void**)& gda_parameter_list_find},
	{ "gda_parameter_list_clear",  cast(void**)& gda_parameter_list_clear},
	{ "gda_parameter_list_get_length",  cast(void**)& gda_parameter_list_get_length},
	{ "gda_quark_list_get_type",  cast(void**)& gda_quark_list_get_type},
	{ "gda_quark_list_new",  cast(void**)& gda_quark_list_new},
	{ "gda_quark_list_new_from_string",  cast(void**)& gda_quark_list_new_from_string},
	{ "gda_quark_list_copy",  cast(void**)& gda_quark_list_copy},
	{ "gda_quark_list_free",  cast(void**)& gda_quark_list_free},
	{ "gda_quark_list_add_from_string",  cast(void**)& gda_quark_list_add_from_string},
	{ "gda_quark_list_find",  cast(void**)& gda_quark_list_find},
	{ "gda_quark_list_remove",  cast(void**)& gda_quark_list_remove},
	{ "gda_quark_list_clear",  cast(void**)& gda_quark_list_clear},
	{ "gda_row_get_type",  cast(void**)& gda_row_get_type},
	{ "gda_row_new",  cast(void**)& gda_row_new},
	{ "gda_row_new_from_list",  cast(void**)& gda_row_new_from_list},
	{ "gda_row_copy",  cast(void**)& gda_row_copy},
	{ "gda_row_free",  cast(void**)& gda_row_free},
	{ "gda_row_get_model",  cast(void**)& gda_row_get_model},
	{ "gda_row_get_number",  cast(void**)& gda_row_get_number},
	{ "gda_row_set_number",  cast(void**)& gda_row_set_number},
	{ "gda_row_get_id",  cast(void**)& gda_row_get_id},
	{ "gda_row_set_id",  cast(void**)& gda_row_set_id},
	{ "gda_row_get_value",  cast(void**)& gda_row_get_value},
	{ "gda_row_get_length",  cast(void**)& gda_row_get_length},
	{ "gda_select_new",  cast(void**)& gda_select_new},
	{ "gda_select_add_source",  cast(void**)& gda_select_add_source},
	{ "gda_select_set_sql",  cast(void**)& gda_select_set_sql},
	{ "gda_select_run",  cast(void**)& gda_select_run},
	{ "gda_table_new",  cast(void**)& gda_table_new},
	{ "gda_table_new_from_model",  cast(void**)& gda_table_new_from_model},
	{ "gda_table_get_name",  cast(void**)& gda_table_get_name},
	{ "gda_table_set_name",  cast(void**)& gda_table_set_name},
	{ "gda_table_add_field",  cast(void**)& gda_table_add_field},
	{ "gda_table_add_data_from_model",  cast(void**)& gda_table_add_data_from_model},
	{ "gda_transaction_new",  cast(void**)& gda_transaction_new},
	{ "gda_transaction_get_isolation_level",  cast(void**)& gda_transaction_get_isolation_level},
	{ "gda_transaction_set_isolation_level",  cast(void**)& gda_transaction_set_isolation_level},
	{ "gda_transaction_get_name",  cast(void**)& gda_transaction_get_name},
	{ "gda_transaction_set_name",  cast(void**)& gda_transaction_set_name},
	{ "gda_value_get_gtype",  cast(void**)& gda_value_get_gtype},
	{ "gda_value_new_null",  cast(void**)& gda_value_new_null},
	{ "gda_value_new_bigint",  cast(void**)& gda_value_new_bigint},
	{ "gda_value_new_biguint",  cast(void**)& gda_value_new_biguint},
	{ "gda_value_new_binary",  cast(void**)& gda_value_new_binary},
	{ "gda_value_new_blob",  cast(void**)& gda_value_new_blob},
	{ "gda_value_new_boolean",  cast(void**)& gda_value_new_boolean},
	{ "gda_value_new_date",  cast(void**)& gda_value_new_date},
	{ "gda_value_new_double",  cast(void**)& gda_value_new_double},
	{ "gda_value_new_geometric_point",  cast(void**)& gda_value_new_geometric_point},
	{ "gda_value_new_gobject",  cast(void**)& gda_value_new_gobject},
	{ "gda_value_new_integer",  cast(void**)& gda_value_new_integer},
	{ "gda_value_new_list",  cast(void**)& gda_value_new_list},
	{ "gda_value_new_money",  cast(void**)& gda_value_new_money},
	{ "gda_value_new_numeric",  cast(void**)& gda_value_new_numeric},
	{ "gda_value_new_single",  cast(void**)& gda_value_new_single},
	{ "gda_value_new_smallint",  cast(void**)& gda_value_new_smallint},
	{ "gda_value_new_smalluint",  cast(void**)& gda_value_new_smalluint},
	{ "gda_value_new_string",  cast(void**)& gda_value_new_string},
	{ "gda_value_new_time",  cast(void**)& gda_value_new_time},
	{ "gda_value_new_timestamp",  cast(void**)& gda_value_new_timestamp},
	{ "gda_value_new_timestamp_from_timet",  cast(void**)& gda_value_new_timestamp_from_timet},
	{ "gda_value_new_tinyint",  cast(void**)& gda_value_new_tinyint},
	{ "gda_value_new_tinyuint",  cast(void**)& gda_value_new_tinyuint},
	{ "gda_value_new_type",  cast(void**)& gda_value_new_type},
	{ "gda_value_new_uinteger",  cast(void**)& gda_value_new_uinteger},
	{ "gda_value_new_from_string",  cast(void**)& gda_value_new_from_string},
	{ "gda_value_new_from_xml",  cast(void**)& gda_value_new_from_xml},
	{ "gda_value_free",  cast(void**)& gda_value_free},
	{ "gda_value_get_type",  cast(void**)& gda_value_get_type},
	{ "gda_value_is_null",  cast(void**)& gda_value_is_null},
	{ "gda_value_is_number",  cast(void**)& gda_value_is_number},
	{ "gda_value_copy",  cast(void**)& gda_value_copy},
	{ "gda_value_get_bigint",  cast(void**)& gda_value_get_bigint},
	{ "gda_value_set_bigint",  cast(void**)& gda_value_set_bigint},
	{ "gda_value_get_biguint",  cast(void**)& gda_value_get_biguint},
	{ "gda_value_set_biguint",  cast(void**)& gda_value_set_biguint},
	{ "gda_value_get_binary",  cast(void**)& gda_value_get_binary},
	{ "gda_value_set_binary",  cast(void**)& gda_value_set_binary},
	{ "gda_value_get_blob",  cast(void**)& gda_value_get_blob},
	{ "gda_value_set_blob",  cast(void**)& gda_value_set_blob},
	{ "gda_value_get_boolean",  cast(void**)& gda_value_get_boolean},
	{ "gda_value_set_boolean",  cast(void**)& gda_value_set_boolean},
	{ "gda_value_get_date",  cast(void**)& gda_value_get_date},
	{ "gda_value_set_date",  cast(void**)& gda_value_set_date},
	{ "gda_value_get_double",  cast(void**)& gda_value_get_double},
	{ "gda_value_set_double",  cast(void**)& gda_value_set_double},
	{ "gda_value_get_geometric_point",  cast(void**)& gda_value_get_geometric_point},
	{ "gda_value_set_geometric_point",  cast(void**)& gda_value_set_geometric_point},
	{ "gda_value_get_gobject",  cast(void**)& gda_value_get_gobject},
	{ "gda_value_set_gobject",  cast(void**)& gda_value_set_gobject},
	{ "gda_value_get_integer",  cast(void**)& gda_value_get_integer},
	{ "gda_value_set_integer",  cast(void**)& gda_value_set_integer},
	{ "gda_value_get_list",  cast(void**)& gda_value_get_list},
	{ "gda_value_set_list",  cast(void**)& gda_value_set_list},
	{ "gda_value_set_null",  cast(void**)& gda_value_set_null},
	{ "gda_value_get_money",  cast(void**)& gda_value_get_money},
	{ "gda_value_set_money",  cast(void**)& gda_value_set_money},
	{ "gda_value_get_numeric",  cast(void**)& gda_value_get_numeric},
	{ "gda_value_set_numeric",  cast(void**)& gda_value_set_numeric},
	{ "gda_value_get_single",  cast(void**)& gda_value_get_single},
	{ "gda_value_set_single",  cast(void**)& gda_value_set_single},
	{ "gda_value_get_smallint",  cast(void**)& gda_value_get_smallint},
	{ "gda_value_set_smallint",  cast(void**)& gda_value_set_smallint},
	{ "gda_value_get_smalluint",  cast(void**)& gda_value_get_smalluint},
	{ "gda_value_set_smalluint",  cast(void**)& gda_value_set_smalluint},
	{ "gda_value_get_string",  cast(void**)& gda_value_get_string},
	{ "gda_value_set_string",  cast(void**)& gda_value_set_string},
	{ "gda_value_get_time",  cast(void**)& gda_value_get_time},
	{ "gda_value_set_time",  cast(void**)& gda_value_set_time},
	{ "gda_value_get_timestamp",  cast(void**)& gda_value_get_timestamp},
	{ "gda_value_set_timestamp",  cast(void**)& gda_value_set_timestamp},
	{ "gda_value_get_tinyint",  cast(void**)& gda_value_get_tinyint},
	{ "gda_value_set_tinyint",  cast(void**)& gda_value_set_tinyint},
	{ "gda_value_get_tinyuint",  cast(void**)& gda_value_get_tinyuint},
	{ "gda_value_set_tinyuint",  cast(void**)& gda_value_set_tinyuint},
	{ "gda_value_get_uinteger",  cast(void**)& gda_value_get_uinteger},
	{ "gda_value_set_uinteger",  cast(void**)& gda_value_set_uinteger},
	{ "gda_value_get_vtype",  cast(void**)& gda_value_get_vtype},
	{ "gda_value_set_vtype",  cast(void**)& gda_value_set_vtype},
	{ "gda_value_set_from_string",  cast(void**)& gda_value_set_from_string},
	{ "gda_value_set_from_value",  cast(void**)& gda_value_set_from_value},
	{ "gda_value_compare",  cast(void**)& gda_value_compare},
	{ "gda_value_stringify",  cast(void**)& gda_value_stringify},
	{ "gda_value_to_xml",  cast(void**)& gda_value_to_xml},

];