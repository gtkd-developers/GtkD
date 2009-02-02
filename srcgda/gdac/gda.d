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


module gdac.gda;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gdac.gdatypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// gda.Gda

	Linker.link(gda_init, "gda_init", LIBRARY.GDA);
	Linker.link(gda_main_run, "gda_main_run", LIBRARY.GDA);
	Linker.link(gda_main_quit, "gda_main_quit", LIBRARY.GDA);
	Linker.link(gda_type_to_string, "gda_type_to_string", LIBRARY.GDA);
	Linker.link(gda_type_from_string, "gda_type_from_string", LIBRARY.GDA);
	Linker.link(gda_string_hash_to_list, "gda_string_hash_to_list", LIBRARY.GDA);
	Linker.link(gda_sql_replace_placeholders, "gda_sql_replace_placeholders", LIBRARY.GDA);
	Linker.link(gda_file_load, "gda_file_load", LIBRARY.GDA);
	Linker.link(gda_file_save, "gda_file_save", LIBRARY.GDA);

	// gda.Blob

	Linker.link(gda_blob_open, "gda_blob_open", LIBRARY.GDA);
	Linker.link(gda_blob_read, "gda_blob_read", LIBRARY.GDA);
	Linker.link(gda_blob_write, "gda_blob_write", LIBRARY.GDA);
	Linker.link(gda_blob_lseek, "gda_blob_lseek", LIBRARY.GDA);
	Linker.link(gda_blob_close, "gda_blob_close", LIBRARY.GDA);
	Linker.link(gda_blob_remove, "gda_blob_remove", LIBRARY.GDA);
	Linker.link(gda_blob_free_data, "gda_blob_free_data", LIBRARY.GDA);

	// gda.Client

	Linker.link(gda_client_new, "gda_client_new", LIBRARY.GDA);
	Linker.link(gda_client_open_connection, "gda_client_open_connection", LIBRARY.GDA);
	Linker.link(gda_client_open_connection_from_string, "gda_client_open_connection_from_string", LIBRARY.GDA);
	Linker.link(gda_client_get_connection_list, "gda_client_get_connection_list", LIBRARY.GDA);
	Linker.link(gda_client_find_connection, "gda_client_find_connection", LIBRARY.GDA);
	Linker.link(gda_client_close_all_connections, "gda_client_close_all_connections", LIBRARY.GDA);
	Linker.link(gda_client_notify_event, "gda_client_notify_event", LIBRARY.GDA);
	Linker.link(gda_client_notify_error_event, "gda_client_notify_error_event", LIBRARY.GDA);
	Linker.link(gda_client_notify_connection_opened_event, "gda_client_notify_connection_opened_event", LIBRARY.GDA);
	Linker.link(gda_client_notify_connection_closed_event, "gda_client_notify_connection_closed_event", LIBRARY.GDA);
	Linker.link(gda_client_notify_transaction_started_event, "gda_client_notify_transaction_started_event", LIBRARY.GDA);
	Linker.link(gda_client_notify_transaction_committed_event, "gda_client_notify_transaction_committed_event", LIBRARY.GDA);
	Linker.link(gda_client_notify_transaction_cancelled_event, "gda_client_notify_transaction_cancelled_event", LIBRARY.GDA);
	Linker.link(gda_client_begin_transaction, "gda_client_begin_transaction", LIBRARY.GDA);
	Linker.link(gda_client_commit_transaction, "gda_client_commit_transaction", LIBRARY.GDA);
	Linker.link(gda_client_rollback_transaction, "gda_client_rollback_transaction", LIBRARY.GDA);

	// gda.Command

	Linker.link(gda_command_get_type, "gda_command_get_type", LIBRARY.GDA);
	Linker.link(gda_command_new, "gda_command_new", LIBRARY.GDA);
	Linker.link(gda_command_free, "gda_command_free", LIBRARY.GDA);
	Linker.link(gda_command_copy, "gda_command_copy", LIBRARY.GDA);
	Linker.link(gda_command_get_text, "gda_command_get_text", LIBRARY.GDA);
	Linker.link(gda_command_set_text, "gda_command_set_text", LIBRARY.GDA);
	Linker.link(gda_command_get_command_type, "gda_command_get_command_type", LIBRARY.GDA);
	Linker.link(gda_command_set_command_type, "gda_command_set_command_type", LIBRARY.GDA);
	Linker.link(gda_command_get_options, "gda_command_get_options", LIBRARY.GDA);
	Linker.link(gda_command_set_options, "gda_command_set_options", LIBRARY.GDA);
	Linker.link(gda_command_get_transaction, "gda_command_get_transaction", LIBRARY.GDA);
	Linker.link(gda_command_set_transaction, "gda_command_set_transaction", LIBRARY.GDA);

	// gda.Config

	Linker.link(gda_config_get_string, "gda_config_get_string", LIBRARY.GDA);
	Linker.link(gda_config_get_int, "gda_config_get_int", LIBRARY.GDA);
	Linker.link(gda_config_get_float, "gda_config_get_float", LIBRARY.GDA);
	Linker.link(gda_config_get_boolean, "gda_config_get_boolean", LIBRARY.GDA);
	Linker.link(gda_config_set_string, "gda_config_set_string", LIBRARY.GDA);
	Linker.link(gda_config_set_int, "gda_config_set_int", LIBRARY.GDA);
	Linker.link(gda_config_set_float, "gda_config_set_float", LIBRARY.GDA);
	Linker.link(gda_config_set_boolean, "gda_config_set_boolean", LIBRARY.GDA);
	Linker.link(gda_config_remove_section, "gda_config_remove_section", LIBRARY.GDA);
	Linker.link(gda_config_remove_key, "gda_config_remove_key", LIBRARY.GDA);
	Linker.link(gda_config_has_section, "gda_config_has_section", LIBRARY.GDA);
	Linker.link(gda_config_has_key, "gda_config_has_key", LIBRARY.GDA);
	Linker.link(gda_config_list_sections, "gda_config_list_sections", LIBRARY.GDA);
	Linker.link(gda_config_list_keys, "gda_config_list_keys", LIBRARY.GDA);
	Linker.link(gda_config_get_type, "gda_config_get_type", LIBRARY.GDA);
	Linker.link(gda_config_free_list, "gda_config_free_list", LIBRARY.GDA);
	Linker.link(gda_config_add_listener, "gda_config_add_listener", LIBRARY.GDA);
	Linker.link(gda_config_remove_listener, "gda_config_remove_listener", LIBRARY.GDA);
	Linker.link(gda_config_get_provider_list, "gda_config_get_provider_list", LIBRARY.GDA);
	Linker.link(gda_config_free_provider_list, "gda_config_free_provider_list", LIBRARY.GDA);
	Linker.link(gda_config_get_provider_by_name, "gda_config_get_provider_by_name", LIBRARY.GDA);
	Linker.link(gda_config_get_provider_model, "gda_config_get_provider_model", LIBRARY.GDA);
	Linker.link(gda_config_copy_data_source_info, "gda_config_copy_data_source_info", LIBRARY.GDA);
	Linker.link(gda_config_free_data_source_info, "gda_config_free_data_source_info", LIBRARY.GDA);
	Linker.link(gda_config_get_data_source_list, "gda_config_get_data_source_list", LIBRARY.GDA);
	Linker.link(gda_config_find_data_source, "gda_config_find_data_source", LIBRARY.GDA);
	Linker.link(gda_config_free_data_source_list, "gda_config_free_data_source_list", LIBRARY.GDA);
	Linker.link(gda_config_get_data_source_model, "gda_config_get_data_source_model", LIBRARY.GDA);
	Linker.link(gda_config_save_data_source, "gda_config_save_data_source", LIBRARY.GDA);
	Linker.link(gda_config_save_data_source_info, "gda_config_save_data_source_info", LIBRARY.GDA);
	Linker.link(gda_config_remove_data_source, "gda_config_remove_data_source", LIBRARY.GDA);

	// gda.ProviderInfo

	Linker.link(gda_provider_info_get_type, "gda_provider_info_get_type", LIBRARY.GDA);
	Linker.link(gda_provider_info_copy, "gda_provider_info_copy", LIBRARY.GDA);
	Linker.link(gda_provider_info_free, "gda_provider_info_free", LIBRARY.GDA);

	// gda.DataSourceInfo

	Linker.link(gda_data_source_info_get_type, "gda_data_source_info_get_type", LIBRARY.GDA);

	// gda.Connection

	Linker.link(gda_connection_new, "gda_connection_new", LIBRARY.GDA);
	Linker.link(gda_connection_close, "gda_connection_close", LIBRARY.GDA);
	Linker.link(gda_connection_is_open, "gda_connection_is_open", LIBRARY.GDA);
	Linker.link(gda_connection_get_client, "gda_connection_get_client", LIBRARY.GDA);
	Linker.link(gda_connection_set_client, "gda_connection_set_client", LIBRARY.GDA);
	Linker.link(gda_connection_get_options, "gda_connection_get_options", LIBRARY.GDA);
	Linker.link(gda_connection_get_server_version, "gda_connection_get_server_version", LIBRARY.GDA);
	Linker.link(gda_connection_get_database, "gda_connection_get_database", LIBRARY.GDA);
	Linker.link(gda_connection_get_dsn, "gda_connection_get_dsn", LIBRARY.GDA);
	Linker.link(gda_connection_get_cnc_string, "gda_connection_get_cnc_string", LIBRARY.GDA);
	Linker.link(gda_connection_get_provider, "gda_connection_get_provider", LIBRARY.GDA);
	Linker.link(gda_connection_get_username, "gda_connection_get_username", LIBRARY.GDA);
	Linker.link(gda_connection_get_password, "gda_connection_get_password", LIBRARY.GDA);
	Linker.link(gda_connection_add_error, "gda_connection_add_error", LIBRARY.GDA);
	Linker.link(gda_connection_add_error_string, "gda_connection_add_error_string", LIBRARY.GDA);
	Linker.link(gda_connection_add_error_list, "gda_connection_add_error_list", LIBRARY.GDA);
	Linker.link(gda_connection_change_database, "gda_connection_change_database", LIBRARY.GDA);
	Linker.link(gda_connection_create_database, "gda_connection_create_database", LIBRARY.GDA);
	Linker.link(gda_connection_drop_database, "gda_connection_drop_database", LIBRARY.GDA);
	Linker.link(gda_connection_create_table, "gda_connection_create_table", LIBRARY.GDA);
	Linker.link(gda_connection_drop_table, "gda_connection_drop_table", LIBRARY.GDA);
	Linker.link(gda_connection_execute_command, "gda_connection_execute_command", LIBRARY.GDA);
	Linker.link(gda_connection_get_last_insert_id, "gda_connection_get_last_insert_id", LIBRARY.GDA);
	Linker.link(gda_connection_execute_single_command, "gda_connection_execute_single_command", LIBRARY.GDA);
	Linker.link(gda_connection_execute_non_query, "gda_connection_execute_non_query", LIBRARY.GDA);
	Linker.link(gda_connection_begin_transaction, "gda_connection_begin_transaction", LIBRARY.GDA);
	Linker.link(gda_connection_commit_transaction, "gda_connection_commit_transaction", LIBRARY.GDA);
	Linker.link(gda_connection_rollback_transaction, "gda_connection_rollback_transaction", LIBRARY.GDA);
	Linker.link(gda_connection_create_blob, "gda_connection_create_blob", LIBRARY.GDA);
	Linker.link(gda_connection_get_errors, "gda_connection_get_errors", LIBRARY.GDA);
	Linker.link(gda_connection_supports, "gda_connection_supports", LIBRARY.GDA);
	Linker.link(gda_connection_get_schema, "gda_connection_get_schema", LIBRARY.GDA);

	// gda.DataModelArray

	Linker.link(gda_data_model_array_new, "gda_data_model_array_new", LIBRARY.GDA);
	Linker.link(gda_data_model_array_set_n_columns, "gda_data_model_array_set_n_columns", LIBRARY.GDA);
	Linker.link(gda_data_model_array_clear, "gda_data_model_array_clear", LIBRARY.GDA);

	// gda.DataModelHash

	Linker.link(gda_data_model_hash_new, "gda_data_model_hash_new", LIBRARY.GDA);
	Linker.link(gda_data_model_hash_get_value_at, "gda_data_model_hash_get_value_at", LIBRARY.GDA);
	Linker.link(gda_data_model_hash_clear, "gda_data_model_hash_clear", LIBRARY.GDA);
	Linker.link(gda_data_model_hash_set_n_columns, "gda_data_model_hash_set_n_columns", LIBRARY.GDA);
	Linker.link(gda_data_model_hash_insert_row, "gda_data_model_hash_insert_row", LIBRARY.GDA);
	Linker.link(gda_data_model_hash_get_row, "gda_data_model_hash_get_row", LIBRARY.GDA);

	// gda.DataModelList

	Linker.link(gda_data_model_list_new, "gda_data_model_list_new", LIBRARY.GDA);
	Linker.link(gda_data_model_list_new_from_string_list, "gda_data_model_list_new_from_string_list", LIBRARY.GDA);
	Linker.link(gda_data_model_list_append_value, "gda_data_model_list_append_value", LIBRARY.GDA);

	// gda.DataModel

	Linker.link(gda_data_model_changed, "gda_data_model_changed", LIBRARY.GDA);
	Linker.link(gda_data_model_row_inserted, "gda_data_model_row_inserted", LIBRARY.GDA);
	Linker.link(gda_data_model_row_updated, "gda_data_model_row_updated", LIBRARY.GDA);
	Linker.link(gda_data_model_row_removed, "gda_data_model_row_removed", LIBRARY.GDA);
	Linker.link(gda_data_model_column_inserted, "gda_data_model_column_inserted", LIBRARY.GDA);
	Linker.link(gda_data_model_column_updated, "gda_data_model_column_updated", LIBRARY.GDA);
	Linker.link(gda_data_model_column_removed, "gda_data_model_column_removed", LIBRARY.GDA);
	Linker.link(gda_data_model_freeze, "gda_data_model_freeze", LIBRARY.GDA);
	Linker.link(gda_data_model_thaw, "gda_data_model_thaw", LIBRARY.GDA);
	Linker.link(gda_data_model_get_n_rows, "gda_data_model_get_n_rows", LIBRARY.GDA);
	Linker.link(gda_data_model_get_n_columns, "gda_data_model_get_n_columns", LIBRARY.GDA);
	Linker.link(gda_data_model_describe_column, "gda_data_model_describe_column", LIBRARY.GDA);
	Linker.link(gda_data_model_get_column_title, "gda_data_model_get_column_title", LIBRARY.GDA);
	Linker.link(gda_data_model_set_column_title, "gda_data_model_set_column_title", LIBRARY.GDA);
	Linker.link(gda_data_model_get_column_position, "gda_data_model_get_column_position", LIBRARY.GDA);
	Linker.link(gda_data_model_get_row, "gda_data_model_get_row", LIBRARY.GDA);
	Linker.link(gda_data_model_get_value_at, "gda_data_model_get_value_at", LIBRARY.GDA);
	Linker.link(gda_data_model_is_updatable, "gda_data_model_is_updatable", LIBRARY.GDA);
	Linker.link(gda_data_model_append_row, "gda_data_model_append_row", LIBRARY.GDA);
	Linker.link(gda_data_model_remove_row, "gda_data_model_remove_row", LIBRARY.GDA);
	Linker.link(gda_data_model_update_row, "gda_data_model_update_row", LIBRARY.GDA);
	Linker.link(gda_data_model_append_column, "gda_data_model_append_column", LIBRARY.GDA);
	Linker.link(gda_data_model_update_column, "gda_data_model_update_column", LIBRARY.GDA);
	Linker.link(gda_data_model_remove_column, "gda_data_model_remove_column", LIBRARY.GDA);
	Linker.link(gda_data_model_foreach, "gda_data_model_foreach", LIBRARY.GDA);
	Linker.link(gda_data_model_has_changed, "gda_data_model_has_changed", LIBRARY.GDA);
	Linker.link(gda_data_model_begin_update, "gda_data_model_begin_update", LIBRARY.GDA);
	Linker.link(gda_data_model_cancel_update, "gda_data_model_cancel_update", LIBRARY.GDA);
	Linker.link(gda_data_model_end_update, "gda_data_model_end_update", LIBRARY.GDA);
	Linker.link(gda_data_model_to_comma_separated, "gda_data_model_to_comma_separated", LIBRARY.GDA);
	Linker.link(gda_data_model_to_tab_separated, "gda_data_model_to_tab_separated", LIBRARY.GDA);
	Linker.link(gda_data_model_to_xml, "gda_data_model_to_xml", LIBRARY.GDA);
	Linker.link(gda_data_model_to_xml_node, "gda_data_model_to_xml_node", LIBRARY.GDA);
	Linker.link(gda_data_model_add_data_from_xml_node, "gda_data_model_add_data_from_xml_node", LIBRARY.GDA);
	Linker.link(gda_data_model_get_command_text, "gda_data_model_get_command_text", LIBRARY.GDA);
	Linker.link(gda_data_model_set_command_text, "gda_data_model_set_command_text", LIBRARY.GDA);
	Linker.link(gda_data_model_get_command_type, "gda_data_model_get_command_type", LIBRARY.GDA);
	Linker.link(gda_data_model_set_command_type, "gda_data_model_set_command_type", LIBRARY.GDA);

	// gda.ErrorGda

	Linker.link(gda_error_new, "gda_error_new", LIBRARY.GDA);
	Linker.link(gda_error_free, "gda_error_free", LIBRARY.GDA);
	Linker.link(gda_error_list_copy, "gda_error_list_copy", LIBRARY.GDA);
	Linker.link(gda_error_list_free, "gda_error_list_free", LIBRARY.GDA);
	Linker.link(gda_error_get_description, "gda_error_get_description", LIBRARY.GDA);
	Linker.link(gda_error_set_description, "gda_error_set_description", LIBRARY.GDA);
	Linker.link(gda_error_get_number, "gda_error_get_number", LIBRARY.GDA);
	Linker.link(gda_error_set_number, "gda_error_set_number", LIBRARY.GDA);
	Linker.link(gda_error_get_source, "gda_error_get_source", LIBRARY.GDA);
	Linker.link(gda_error_set_source, "gda_error_set_source", LIBRARY.GDA);
	Linker.link(gda_error_get_sqlstate, "gda_error_get_sqlstate", LIBRARY.GDA);
	Linker.link(gda_error_set_sqlstate, "gda_error_set_sqlstate", LIBRARY.GDA);

	// gda.Export

	Linker.link(gda_export_new, "gda_export_new", LIBRARY.GDA);
	Linker.link(gda_export_get_tables, "gda_export_get_tables", LIBRARY.GDA);
	Linker.link(gda_export_get_selected_tables, "gda_export_get_selected_tables", LIBRARY.GDA);
	Linker.link(gda_export_select_table, "gda_export_select_table", LIBRARY.GDA);
	Linker.link(gda_export_select_table_list, "gda_export_select_table_list", LIBRARY.GDA);
	Linker.link(gda_export_unselect_table, "gda_export_unselect_table", LIBRARY.GDA);
	Linker.link(gda_export_run, "gda_export_run", LIBRARY.GDA);
	Linker.link(gda_export_stop, "gda_export_stop", LIBRARY.GDA);
	Linker.link(gda_export_get_connection, "gda_export_get_connection", LIBRARY.GDA);
	Linker.link(gda_export_set_connection, "gda_export_set_connection", LIBRARY.GDA);

	// gda.FieldAttributes

	Linker.link(gda_field_attributes_get_type, "gda_field_attributes_get_type", LIBRARY.GDA);
	Linker.link(gda_field_attributes_new, "gda_field_attributes_new", LIBRARY.GDA);
	Linker.link(gda_field_attributes_copy, "gda_field_attributes_copy", LIBRARY.GDA);
	Linker.link(gda_field_attributes_free, "gda_field_attributes_free", LIBRARY.GDA);
	Linker.link(gda_field_attributes_equal, "gda_field_attributes_equal", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_defined_size, "gda_field_attributes_get_defined_size", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_defined_size, "gda_field_attributes_set_defined_size", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_name, "gda_field_attributes_get_name", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_name, "gda_field_attributes_set_name", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_table, "gda_field_attributes_get_table", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_table, "gda_field_attributes_set_table", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_caption, "gda_field_attributes_get_caption", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_caption, "gda_field_attributes_set_caption", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_scale, "gda_field_attributes_get_scale", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_scale, "gda_field_attributes_set_scale", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_gdatype, "gda_field_attributes_get_gdatype", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_gdatype, "gda_field_attributes_set_gdatype", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_allow_null, "gda_field_attributes_get_allow_null", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_allow_null, "gda_field_attributes_set_allow_null", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_primary_key, "gda_field_attributes_get_primary_key", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_primary_key, "gda_field_attributes_set_primary_key", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_unique_key, "gda_field_attributes_get_unique_key", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_unique_key, "gda_field_attributes_set_unique_key", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_references, "gda_field_attributes_get_references", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_references, "gda_field_attributes_set_references", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_auto_increment, "gda_field_attributes_get_auto_increment", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_auto_increment, "gda_field_attributes_set_auto_increment", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_position, "gda_field_attributes_get_position", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_position, "gda_field_attributes_set_position", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_default_value, "gda_field_attributes_get_default_value", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_default_value, "gda_field_attributes_set_default_value", LIBRARY.GDA);

	// gda.Log

	Linker.link(gda_log_enable, "gda_log_enable", LIBRARY.GDA);
	Linker.link(gda_log_disable, "gda_log_disable", LIBRARY.GDA);
	Linker.link(gda_log_is_enabled, "gda_log_is_enabled", LIBRARY.GDA);
	Linker.link(gda_log_message, "gda_log_message", LIBRARY.GDA);
	Linker.link(gda_log_error, "gda_log_error", LIBRARY.GDA);

	// gda.Parameter

	Linker.link(gda_parameter_get_type, "gda_parameter_get_type", LIBRARY.GDA);
	Linker.link(gda_parameter_new_from_value, "gda_parameter_new_from_value", LIBRARY.GDA);
	Linker.link(gda_parameter_new_boolean, "gda_parameter_new_boolean", LIBRARY.GDA);
	Linker.link(gda_parameter_new_double, "gda_parameter_new_double", LIBRARY.GDA);
	Linker.link(gda_parameter_new_gobject, "gda_parameter_new_gobject", LIBRARY.GDA);
	Linker.link(gda_parameter_new_string, "gda_parameter_new_string", LIBRARY.GDA);
	Linker.link(gda_parameter_copy, "gda_parameter_copy", LIBRARY.GDA);
	Linker.link(gda_parameter_free, "gda_parameter_free", LIBRARY.GDA);
	Linker.link(gda_parameter_get_name, "gda_parameter_get_name", LIBRARY.GDA);
	Linker.link(gda_parameter_set_name, "gda_parameter_set_name", LIBRARY.GDA);
	Linker.link(gda_parameter_get_value, "gda_parameter_get_value", LIBRARY.GDA);
	Linker.link(gda_parameter_set_value, "gda_parameter_set_value", LIBRARY.GDA);

	// gda.ParameterList

	Linker.link(gda_parameter_list_get_type, "gda_parameter_list_get_type", LIBRARY.GDA);
	Linker.link(gda_parameter_list_new, "gda_parameter_list_new", LIBRARY.GDA);
	Linker.link(gda_parameter_list_free, "gda_parameter_list_free", LIBRARY.GDA);
	Linker.link(gda_parameter_list_copy, "gda_parameter_list_copy", LIBRARY.GDA);
	Linker.link(gda_parameter_list_add_parameter, "gda_parameter_list_add_parameter", LIBRARY.GDA);
	Linker.link(gda_parameter_list_get_names, "gda_parameter_list_get_names", LIBRARY.GDA);
	Linker.link(gda_parameter_list_find, "gda_parameter_list_find", LIBRARY.GDA);
	Linker.link(gda_parameter_list_clear, "gda_parameter_list_clear", LIBRARY.GDA);
	Linker.link(gda_parameter_list_get_length, "gda_parameter_list_get_length", LIBRARY.GDA);

	// gda.QuarkList

	Linker.link(gda_quark_list_get_type, "gda_quark_list_get_type", LIBRARY.GDA);
	Linker.link(gda_quark_list_new, "gda_quark_list_new", LIBRARY.GDA);
	Linker.link(gda_quark_list_new_from_string, "gda_quark_list_new_from_string", LIBRARY.GDA);
	Linker.link(gda_quark_list_copy, "gda_quark_list_copy", LIBRARY.GDA);
	Linker.link(gda_quark_list_free, "gda_quark_list_free", LIBRARY.GDA);
	Linker.link(gda_quark_list_add_from_string, "gda_quark_list_add_from_string", LIBRARY.GDA);
	Linker.link(gda_quark_list_find, "gda_quark_list_find", LIBRARY.GDA);
	Linker.link(gda_quark_list_remove, "gda_quark_list_remove", LIBRARY.GDA);
	Linker.link(gda_quark_list_clear, "gda_quark_list_clear", LIBRARY.GDA);

	// gda.Row

	Linker.link(gda_row_get_type, "gda_row_get_type", LIBRARY.GDA);
	Linker.link(gda_row_new, "gda_row_new", LIBRARY.GDA);
	Linker.link(gda_row_new_from_list, "gda_row_new_from_list", LIBRARY.GDA);
	Linker.link(gda_row_copy, "gda_row_copy", LIBRARY.GDA);
	Linker.link(gda_row_free, "gda_row_free", LIBRARY.GDA);
	Linker.link(gda_row_get_model, "gda_row_get_model", LIBRARY.GDA);
	Linker.link(gda_row_get_number, "gda_row_get_number", LIBRARY.GDA);
	Linker.link(gda_row_set_number, "gda_row_set_number", LIBRARY.GDA);
	Linker.link(gda_row_get_id, "gda_row_get_id", LIBRARY.GDA);
	Linker.link(gda_row_set_id, "gda_row_set_id", LIBRARY.GDA);
	Linker.link(gda_row_get_value, "gda_row_get_value", LIBRARY.GDA);
	Linker.link(gda_row_get_length, "gda_row_get_length", LIBRARY.GDA);

	// gda.Select

	Linker.link(gda_select_new, "gda_select_new", LIBRARY.GDA);
	Linker.link(gda_select_add_source, "gda_select_add_source", LIBRARY.GDA);
	Linker.link(gda_select_set_sql, "gda_select_set_sql", LIBRARY.GDA);
	Linker.link(gda_select_run, "gda_select_run", LIBRARY.GDA);

	// gda.Table

	Linker.link(gda_table_new, "gda_table_new", LIBRARY.GDA);
	Linker.link(gda_table_new_from_model, "gda_table_new_from_model", LIBRARY.GDA);
	Linker.link(gda_table_get_name, "gda_table_get_name", LIBRARY.GDA);
	Linker.link(gda_table_set_name, "gda_table_set_name", LIBRARY.GDA);
	Linker.link(gda_table_add_field, "gda_table_add_field", LIBRARY.GDA);
	Linker.link(gda_table_add_data_from_model, "gda_table_add_data_from_model", LIBRARY.GDA);

	// gda.Transaction

	Linker.link(gda_transaction_new, "gda_transaction_new", LIBRARY.GDA);
	Linker.link(gda_transaction_get_isolation_level, "gda_transaction_get_isolation_level", LIBRARY.GDA);
	Linker.link(gda_transaction_set_isolation_level, "gda_transaction_set_isolation_level", LIBRARY.GDA);
	Linker.link(gda_transaction_get_name, "gda_transaction_get_name", LIBRARY.GDA);
	Linker.link(gda_transaction_set_name, "gda_transaction_set_name", LIBRARY.GDA);

	// gda.Value

	Linker.link(gda_value_get_gtype, "gda_value_get_gtype", LIBRARY.GDA);
	Linker.link(gda_value_new_null, "gda_value_new_null", LIBRARY.GDA);
	Linker.link(gda_value_new_bigint, "gda_value_new_bigint", LIBRARY.GDA);
	Linker.link(gda_value_new_biguint, "gda_value_new_biguint", LIBRARY.GDA);
	Linker.link(gda_value_new_binary, "gda_value_new_binary", LIBRARY.GDA);
	Linker.link(gda_value_new_blob, "gda_value_new_blob", LIBRARY.GDA);
	Linker.link(gda_value_new_boolean, "gda_value_new_boolean", LIBRARY.GDA);
	Linker.link(gda_value_new_date, "gda_value_new_date", LIBRARY.GDA);
	Linker.link(gda_value_new_double, "gda_value_new_double", LIBRARY.GDA);
	Linker.link(gda_value_new_geometric_point, "gda_value_new_geometric_point", LIBRARY.GDA);
	Linker.link(gda_value_new_gobject, "gda_value_new_gobject", LIBRARY.GDA);
	Linker.link(gda_value_new_integer, "gda_value_new_integer", LIBRARY.GDA);
	Linker.link(gda_value_new_list, "gda_value_new_list", LIBRARY.GDA);
	Linker.link(gda_value_new_money, "gda_value_new_money", LIBRARY.GDA);
	Linker.link(gda_value_new_numeric, "gda_value_new_numeric", LIBRARY.GDA);
	Linker.link(gda_value_new_single, "gda_value_new_single", LIBRARY.GDA);
	Linker.link(gda_value_new_smallint, "gda_value_new_smallint", LIBRARY.GDA);
	Linker.link(gda_value_new_smalluint, "gda_value_new_smalluint", LIBRARY.GDA);
	Linker.link(gda_value_new_string, "gda_value_new_string", LIBRARY.GDA);
	Linker.link(gda_value_new_time, "gda_value_new_time", LIBRARY.GDA);
	Linker.link(gda_value_new_timestamp, "gda_value_new_timestamp", LIBRARY.GDA);
	Linker.link(gda_value_new_timestamp_from_timet, "gda_value_new_timestamp_from_timet", LIBRARY.GDA);
	Linker.link(gda_value_new_tinyint, "gda_value_new_tinyint", LIBRARY.GDA);
	Linker.link(gda_value_new_tinyuint, "gda_value_new_tinyuint", LIBRARY.GDA);
	Linker.link(gda_value_new_type, "gda_value_new_type", LIBRARY.GDA);
	Linker.link(gda_value_new_uinteger, "gda_value_new_uinteger", LIBRARY.GDA);
	Linker.link(gda_value_new_from_string, "gda_value_new_from_string", LIBRARY.GDA);
	Linker.link(gda_value_new_from_xml, "gda_value_new_from_xml", LIBRARY.GDA);
	Linker.link(gda_value_free, "gda_value_free", LIBRARY.GDA);
	Linker.link(gda_value_get_type, "gda_value_get_type", LIBRARY.GDA);
	Linker.link(gda_value_is_null, "gda_value_is_null", LIBRARY.GDA);
	Linker.link(gda_value_is_number, "gda_value_is_number", LIBRARY.GDA);
	Linker.link(gda_value_copy, "gda_value_copy", LIBRARY.GDA);
	Linker.link(gda_value_get_bigint, "gda_value_get_bigint", LIBRARY.GDA);
	Linker.link(gda_value_set_bigint, "gda_value_set_bigint", LIBRARY.GDA);
	Linker.link(gda_value_get_biguint, "gda_value_get_biguint", LIBRARY.GDA);
	Linker.link(gda_value_set_biguint, "gda_value_set_biguint", LIBRARY.GDA);
	Linker.link(gda_value_get_binary, "gda_value_get_binary", LIBRARY.GDA);
	Linker.link(gda_value_set_binary, "gda_value_set_binary", LIBRARY.GDA);
	Linker.link(gda_value_get_blob, "gda_value_get_blob", LIBRARY.GDA);
	Linker.link(gda_value_set_blob, "gda_value_set_blob", LIBRARY.GDA);
	Linker.link(gda_value_get_boolean, "gda_value_get_boolean", LIBRARY.GDA);
	Linker.link(gda_value_set_boolean, "gda_value_set_boolean", LIBRARY.GDA);
	Linker.link(gda_value_get_date, "gda_value_get_date", LIBRARY.GDA);
	Linker.link(gda_value_set_date, "gda_value_set_date", LIBRARY.GDA);
	Linker.link(gda_value_get_double, "gda_value_get_double", LIBRARY.GDA);
	Linker.link(gda_value_set_double, "gda_value_set_double", LIBRARY.GDA);
	Linker.link(gda_value_get_geometric_point, "gda_value_get_geometric_point", LIBRARY.GDA);
	Linker.link(gda_value_set_geometric_point, "gda_value_set_geometric_point", LIBRARY.GDA);
	Linker.link(gda_value_get_gobject, "gda_value_get_gobject", LIBRARY.GDA);
	Linker.link(gda_value_set_gobject, "gda_value_set_gobject", LIBRARY.GDA);
	Linker.link(gda_value_get_integer, "gda_value_get_integer", LIBRARY.GDA);
	Linker.link(gda_value_set_integer, "gda_value_set_integer", LIBRARY.GDA);
	Linker.link(gda_value_get_list, "gda_value_get_list", LIBRARY.GDA);
	Linker.link(gda_value_set_list, "gda_value_set_list", LIBRARY.GDA);
	Linker.link(gda_value_set_null, "gda_value_set_null", LIBRARY.GDA);
	Linker.link(gda_value_get_money, "gda_value_get_money", LIBRARY.GDA);
	Linker.link(gda_value_set_money, "gda_value_set_money", LIBRARY.GDA);
	Linker.link(gda_value_get_numeric, "gda_value_get_numeric", LIBRARY.GDA);
	Linker.link(gda_value_set_numeric, "gda_value_set_numeric", LIBRARY.GDA);
	Linker.link(gda_value_get_single, "gda_value_get_single", LIBRARY.GDA);
	Linker.link(gda_value_set_single, "gda_value_set_single", LIBRARY.GDA);
	Linker.link(gda_value_get_smallint, "gda_value_get_smallint", LIBRARY.GDA);
	Linker.link(gda_value_set_smallint, "gda_value_set_smallint", LIBRARY.GDA);
	Linker.link(gda_value_get_smalluint, "gda_value_get_smalluint", LIBRARY.GDA);
	Linker.link(gda_value_set_smalluint, "gda_value_set_smalluint", LIBRARY.GDA);
	Linker.link(gda_value_get_string, "gda_value_get_string", LIBRARY.GDA);
	Linker.link(gda_value_set_string, "gda_value_set_string", LIBRARY.GDA);
	Linker.link(gda_value_get_time, "gda_value_get_time", LIBRARY.GDA);
	Linker.link(gda_value_set_time, "gda_value_set_time", LIBRARY.GDA);
	Linker.link(gda_value_get_timestamp, "gda_value_get_timestamp", LIBRARY.GDA);
	Linker.link(gda_value_set_timestamp, "gda_value_set_timestamp", LIBRARY.GDA);
	Linker.link(gda_value_get_tinyint, "gda_value_get_tinyint", LIBRARY.GDA);
	Linker.link(gda_value_set_tinyint, "gda_value_set_tinyint", LIBRARY.GDA);
	Linker.link(gda_value_get_tinyuint, "gda_value_get_tinyuint", LIBRARY.GDA);
	Linker.link(gda_value_set_tinyuint, "gda_value_set_tinyuint", LIBRARY.GDA);
	Linker.link(gda_value_get_uinteger, "gda_value_get_uinteger", LIBRARY.GDA);
	Linker.link(gda_value_set_uinteger, "gda_value_set_uinteger", LIBRARY.GDA);
	Linker.link(gda_value_get_vtype, "gda_value_get_vtype", LIBRARY.GDA);
	Linker.link(gda_value_set_vtype, "gda_value_set_vtype", LIBRARY.GDA);
	Linker.link(gda_value_set_from_string, "gda_value_set_from_string", LIBRARY.GDA);
	Linker.link(gda_value_set_from_value, "gda_value_set_from_value", LIBRARY.GDA);
	Linker.link(gda_value_compare, "gda_value_compare", LIBRARY.GDA);
	Linker.link(gda_value_stringify, "gda_value_stringify", LIBRARY.GDA);
	Linker.link(gda_value_to_xml, "gda_value_to_xml", LIBRARY.GDA);
}

extern(C)
{
	
	// gda.Gda
	
	typedef void function(gchar* appId, gchar* versio, gint nargs, gchar*[] args) c_gda_init;
	typedef void function(GdaInitFunc initFunc, gpointer userData) c_gda_main_run;
	typedef void function() c_gda_main_quit;
	typedef gchar* function(GdaValueType type) c_gda_type_to_string;
	typedef GdaValueType function(gchar* str) c_gda_type_from_string;
	typedef GList* function(GHashTable* hashTable) c_gda_string_hash_to_list;
	typedef gchar* function(gchar* sql, GdaParameterList* params) c_gda_sql_replace_placeholders;
	typedef gchar* function(gchar* filename) c_gda_file_load;
	typedef gboolean function(gchar* filename, gchar* buffer, gint len) c_gda_file_save;
	
	// gda.Blob
	
	typedef gint function(GdaBlob* blob, GdaBlobMode mode) c_gda_blob_open;
	typedef gint function(GdaBlob* blob, gpointer buf, gint size, gint* bytesRead) c_gda_blob_read;
	typedef gint function(GdaBlob* blob, gpointer buf, gint size, gint* bytesWritten) c_gda_blob_write;
	typedef gint function(GdaBlob* blob, gint offset, gint whence) c_gda_blob_lseek;
	typedef gint function(GdaBlob* blob) c_gda_blob_close;
	typedef gint function(GdaBlob* blob) c_gda_blob_remove;
	typedef void function(GdaBlob* blob) c_gda_blob_free_data;
	
	// gda.Client
	
	typedef GdaClient* function() c_gda_client_new;
	typedef GdaConnection* function(GdaClient* client, gchar* dsn, gchar* username, gchar* password, GdaConnectionOptions options) c_gda_client_open_connection;
	typedef GdaConnection* function(GdaClient* client, gchar* providerId, gchar* cncString, GdaConnectionOptions options) c_gda_client_open_connection_from_string;
	typedef GList* function(GdaClient* client) c_gda_client_get_connection_list;
	typedef GdaConnection* function(GdaClient* client, gchar* dsn, gchar* username, gchar* password) c_gda_client_find_connection;
	typedef void function(GdaClient* client) c_gda_client_close_all_connections;
	typedef void function(GdaClient* client, GdaConnection* cnc, GdaClientEvent event, GdaParameterList* params) c_gda_client_notify_event;
	typedef void function(GdaClient* client, GdaConnection* cnc, GdaError* error) c_gda_client_notify_error_event;
	typedef void function(GdaClient* client, GdaConnection* cnc) c_gda_client_notify_connection_opened_event;
	typedef void function(GdaClient* client, GdaConnection* cnc) c_gda_client_notify_connection_closed_event;
	typedef void function(GdaClient* client, GdaConnection* cnc, GdaTransaction* xaction) c_gda_client_notify_transaction_started_event;
	typedef void function(GdaClient* client, GdaConnection* cnc, GdaTransaction* xaction) c_gda_client_notify_transaction_committed_event;
	typedef void function(GdaClient* client, GdaConnection* cnc, GdaTransaction* xaction) c_gda_client_notify_transaction_cancelled_event;
	typedef gboolean function(GdaClient* client, GdaTransaction* xaction) c_gda_client_begin_transaction;
	typedef gboolean function(GdaClient* client, GdaTransaction* xaction) c_gda_client_commit_transaction;
	typedef gboolean function(GdaClient* client, GdaTransaction* xaction) c_gda_client_rollback_transaction;
	
	// gda.Command
	
	typedef GType function() c_gda_command_get_type;
	typedef GdaCommand* function(gchar* text, GdaCommandType type, GdaCommandOptions options) c_gda_command_new;
	typedef void function(GdaCommand* cmd) c_gda_command_free;
	typedef GdaCommand* function(GdaCommand* cmd) c_gda_command_copy;
	typedef gchar* function(GdaCommand* cmd) c_gda_command_get_text;
	typedef void function(GdaCommand* cmd, gchar* text) c_gda_command_set_text;
	typedef GdaCommandType function(GdaCommand* cmd) c_gda_command_get_command_type;
	typedef void function(GdaCommand* cmd, GdaCommandType type) c_gda_command_set_command_type;
	typedef GdaCommandOptions function(GdaCommand* cmd) c_gda_command_get_options;
	typedef void function(GdaCommand* cmd, GdaCommandOptions options) c_gda_command_set_options;
	typedef GdaTransaction* function(GdaCommand* cmd) c_gda_command_get_transaction;
	typedef void function(GdaCommand* cmd, GdaTransaction* xaction) c_gda_command_set_transaction;
	
	// gda.Config
	
	typedef gchar* function(gchar* path) c_gda_config_get_string;
	typedef gint function(gchar* path) c_gda_config_get_int;
	typedef gdouble function(gchar* path) c_gda_config_get_float;
	typedef gboolean function(gchar* path) c_gda_config_get_boolean;
	typedef void function(gchar* path, gchar* newValue) c_gda_config_set_string;
	typedef void function(gchar* path, gint newValue) c_gda_config_set_int;
	typedef void function(gchar* path, gdouble newValue) c_gda_config_set_float;
	typedef void function(gchar* path, gboolean newValue) c_gda_config_set_boolean;
	typedef void function(gchar* path) c_gda_config_remove_section;
	typedef void function(gchar* path) c_gda_config_remove_key;
	typedef gboolean function(gchar* path) c_gda_config_has_section;
	typedef gboolean function(gchar* path) c_gda_config_has_key;
	typedef GList* function(gchar* path) c_gda_config_list_sections;
	typedef GList* function(gchar* path) c_gda_config_list_keys;
	typedef gchar* function(gchar* path) c_gda_config_get_type;
	typedef void function(GList* list) c_gda_config_free_list;
	typedef guint function(gchar* path, GdaConfigListenerFunc func, gpointer userData) c_gda_config_add_listener;
	typedef void function(guint id) c_gda_config_remove_listener;
	typedef GList* function() c_gda_config_get_provider_list;
	typedef void function(GList* list) c_gda_config_free_provider_list;
	typedef GdaProviderInfo* function(gchar* name) c_gda_config_get_provider_by_name;
	typedef GdaDataModel* function() c_gda_config_get_provider_model;
	typedef GdaDataSourceInfo* function(GdaDataSourceInfo* src) c_gda_config_copy_data_source_info;
	typedef void function(GdaDataSourceInfo* info) c_gda_config_free_data_source_info;
	typedef GList* function() c_gda_config_get_data_source_list;
	typedef GdaDataSourceInfo* function(gchar* name) c_gda_config_find_data_source;
	typedef void function(GList* list) c_gda_config_free_data_source_list;
	typedef GdaDataModel* function() c_gda_config_get_data_source_model;
	typedef void function(gchar* name, gchar* provider, gchar* cncString, gchar* description, gchar* username, gchar* password) c_gda_config_save_data_source;
	typedef void function(GdaDataSourceInfo* dsnInfo) c_gda_config_save_data_source_info;
	typedef void function(gchar* name) c_gda_config_remove_data_source;
	
	// gda.ProviderInfo
	
	typedef GType function() c_gda_provider_info_get_type;
	typedef GdaProviderInfo* function(GdaProviderInfo* src) c_gda_provider_info_copy;
	typedef void function(GdaProviderInfo* providerInfo) c_gda_provider_info_free;
	
	// gda.DataSourceInfo
	
	typedef GType function() c_gda_data_source_info_get_type;
	
	// gda.Connection
	
	typedef GdaConnection* function(GdaClient* client, GdaServerProvider* provider, gchar* dsn, gchar* username, gchar* password, GdaConnectionOptions options) c_gda_connection_new;
	typedef gboolean function(GdaConnection* cnc) c_gda_connection_close;
	typedef gboolean function(GdaConnection* cnc) c_gda_connection_is_open;
	typedef GdaClient* function(GdaConnection* cnc) c_gda_connection_get_client;
	typedef void function(GdaConnection* cnc, GdaClient* client) c_gda_connection_set_client;
	typedef GdaConnectionOptions function(GdaConnection* cnc) c_gda_connection_get_options;
	typedef gchar* function(GdaConnection* cnc) c_gda_connection_get_server_version;
	typedef gchar* function(GdaConnection* cnc) c_gda_connection_get_database;
	typedef gchar* function(GdaConnection* cnc) c_gda_connection_get_dsn;
	typedef gchar* function(GdaConnection* cnc) c_gda_connection_get_cnc_string;
	typedef gchar* function(GdaConnection* cnc) c_gda_connection_get_provider;
	typedef gchar* function(GdaConnection* cnc) c_gda_connection_get_username;
	typedef gchar* function(GdaConnection* cnc) c_gda_connection_get_password;
	typedef void function(GdaConnection* cnc, GdaError* error) c_gda_connection_add_error;
	typedef void function(GdaConnection* cnc, gchar* str, ... ) c_gda_connection_add_error_string;
	typedef void function(GdaConnection* cnc, GList* errorList) c_gda_connection_add_error_list;
	typedef gboolean function(GdaConnection* cnc, gchar* name) c_gda_connection_change_database;
	typedef gboolean function(GdaConnection* cnc, gchar* name) c_gda_connection_create_database;
	typedef gboolean function(GdaConnection* cnc, gchar* name) c_gda_connection_drop_database;
	typedef gboolean function(GdaConnection* cnc, gchar* tableName, GdaFieldAttributes*[] attributes) c_gda_connection_create_table;
	typedef gboolean function(GdaConnection* cnc, gchar* tableName) c_gda_connection_drop_table;
	typedef GList* function(GdaConnection* cnc, GdaCommand* cmd, GdaParameterList* params) c_gda_connection_execute_command;
	typedef gchar* function(GdaConnection* cnc, GdaDataModel* recset) c_gda_connection_get_last_insert_id;
	typedef GdaDataModel* function(GdaConnection* cnc, GdaCommand* cmd, GdaParameterList* params) c_gda_connection_execute_single_command;
	typedef gint function(GdaConnection* cnc, GdaCommand* cmd, GdaParameterList* params) c_gda_connection_execute_non_query;
	typedef gboolean function(GdaConnection* cnc, GdaTransaction* xaction) c_gda_connection_begin_transaction;
	typedef gboolean function(GdaConnection* cnc, GdaTransaction* xaction) c_gda_connection_commit_transaction;
	typedef gboolean function(GdaConnection* cnc, GdaTransaction* xaction) c_gda_connection_rollback_transaction;
	typedef gboolean function(GdaConnection* cnc, GdaBlob* blob) c_gda_connection_create_blob;
	typedef GList* function(GdaConnection* cnc) c_gda_connection_get_errors;
	typedef gboolean function(GdaConnection* cnc, GdaConnectionFeature feature) c_gda_connection_supports;
	typedef GdaDataModel* function(GdaConnection* cnc, GdaConnectionSchema schema, GdaParameterList* params) c_gda_connection_get_schema;
	
	// gda.DataModelArray
	
	typedef GdaDataModel* function(gint cols) c_gda_data_model_array_new;
	typedef void function(GdaDataModelArray* model, gint cols) c_gda_data_model_array_set_n_columns;
	typedef void function(GdaDataModelArray* model) c_gda_data_model_array_clear;
	
	// gda.DataModelHash
	
	typedef GdaDataModel* function(gint cols) c_gda_data_model_hash_new;
	typedef GdaValue* function(GdaDataModel* model, gint col, gint row) c_gda_data_model_hash_get_value_at;
	typedef void function(GdaDataModelHash* model) c_gda_data_model_hash_clear;
	typedef void function(GdaDataModelHash* model, gint cols) c_gda_data_model_hash_set_n_columns;
	typedef void function(GdaDataModelHash* model, gint rownum, GdaRow* row) c_gda_data_model_hash_insert_row;
	typedef GdaRow* function(GdaDataModel* model, gint row) c_gda_data_model_hash_get_row;
	
	// gda.DataModelList
	
	typedef GdaDataModel* function() c_gda_data_model_list_new;
	typedef GdaDataModel* function(GList* list) c_gda_data_model_list_new_from_string_list;
	typedef GdaRow* function(GdaDataModelList* model, GdaValue* value) c_gda_data_model_list_append_value;
	
	// gda.DataModel
	
	typedef void function(GdaDataModel* model) c_gda_data_model_changed;
	typedef void function(GdaDataModel* model, gint row) c_gda_data_model_row_inserted;
	typedef void function(GdaDataModel* model, gint row) c_gda_data_model_row_updated;
	typedef void function(GdaDataModel* model, gint row) c_gda_data_model_row_removed;
	typedef void function(GdaDataModel* model, gint col) c_gda_data_model_column_inserted;
	typedef void function(GdaDataModel* model, gint col) c_gda_data_model_column_updated;
	typedef void function(GdaDataModel* model, gint col) c_gda_data_model_column_removed;
	typedef void function(GdaDataModel* model) c_gda_data_model_freeze;
	typedef void function(GdaDataModel* model) c_gda_data_model_thaw;
	typedef gint function(GdaDataModel* model) c_gda_data_model_get_n_rows;
	typedef gint function(GdaDataModel* model) c_gda_data_model_get_n_columns;
	typedef GdaFieldAttributes* function(GdaDataModel* model, gint col) c_gda_data_model_describe_column;
	typedef gchar* function(GdaDataModel* model, gint col) c_gda_data_model_get_column_title;
	typedef void function(GdaDataModel* model, gint col, gchar* title) c_gda_data_model_set_column_title;
	typedef gint function(GdaDataModel* model, gchar* title) c_gda_data_model_get_column_position;
	typedef GdaRow* function(GdaDataModel* model, gint row) c_gda_data_model_get_row;
	typedef GdaValue* function(GdaDataModel* model, gint col, gint row) c_gda_data_model_get_value_at;
	typedef gboolean function(GdaDataModel* model) c_gda_data_model_is_updatable;
	typedef GdaRow* function(GdaDataModel* model, GList* values) c_gda_data_model_append_row;
	typedef gboolean function(GdaDataModel* model, GdaRow* row) c_gda_data_model_remove_row;
	typedef gboolean function(GdaDataModel* model, GdaRow* row) c_gda_data_model_update_row;
	typedef gboolean function(GdaDataModel* model, GdaFieldAttributes* attrs) c_gda_data_model_append_column;
	typedef gboolean function(GdaDataModel* model, gint col, GdaFieldAttributes* attrs) c_gda_data_model_update_column;
	typedef gboolean function(GdaDataModel* model, gint col) c_gda_data_model_remove_column;
	typedef void function(GdaDataModel* model, GdaDataModelForeachFunc func, gpointer userData) c_gda_data_model_foreach;
	typedef gboolean function(GdaDataModel* model) c_gda_data_model_has_changed;
	typedef gboolean function(GdaDataModel* model) c_gda_data_model_begin_update;
	typedef gboolean function(GdaDataModel* model) c_gda_data_model_cancel_update;
	typedef gboolean function(GdaDataModel* model) c_gda_data_model_end_update;
	typedef gchar* function(GdaDataModel* model) c_gda_data_model_to_comma_separated;
	typedef gchar* function(GdaDataModel* model) c_gda_data_model_to_tab_separated;
	typedef gchar* function(GdaDataModel* model, gboolean standalone) c_gda_data_model_to_xml;
	typedef xmlNodePtr function(GdaDataModel* model, gchar* name) c_gda_data_model_to_xml_node;
	typedef gboolean function(GdaDataModel* model, xmlNodePtr node) c_gda_data_model_add_data_from_xml_node;
	typedef gchar* function(GdaDataModel* model) c_gda_data_model_get_command_text;
	typedef void function(GdaDataModel* model, gchar* txt) c_gda_data_model_set_command_text;
	typedef GdaCommandType function(GdaDataModel* model) c_gda_data_model_get_command_type;
	typedef void function(GdaDataModel* model, GdaCommandType type) c_gda_data_model_set_command_type;
	
	// gda.ErrorGda
	
	typedef GdaError* function() c_gda_error_new;
	typedef void function(GdaError* error) c_gda_error_free;
	typedef GList* function(GList* errors) c_gda_error_list_copy;
	typedef void function(GList* errors) c_gda_error_list_free;
	typedef gchar* function(GdaError* error) c_gda_error_get_description;
	typedef void function(GdaError* error, gchar* description) c_gda_error_set_description;
	typedef glong function(GdaError* error) c_gda_error_get_number;
	typedef void function(GdaError* error, glong number) c_gda_error_set_number;
	typedef gchar* function(GdaError* error) c_gda_error_get_source;
	typedef void function(GdaError* error, gchar* source) c_gda_error_set_source;
	typedef gchar* function(GdaError* error) c_gda_error_get_sqlstate;
	typedef void function(GdaError* error, gchar* sqlstate) c_gda_error_set_sqlstate;
	
	// gda.Export
	
	typedef GdaExport* function(GdaConnection* cnc) c_gda_export_new;
	typedef GList* function(GdaExport* exp) c_gda_export_get_tables;
	typedef GList* function(GdaExport* exp) c_gda_export_get_selected_tables;
	typedef void function(GdaExport* exp, gchar* table) c_gda_export_select_table;
	typedef void function(GdaExport* exp, GList* list) c_gda_export_select_table_list;
	typedef void function(GdaExport* exp, gchar* table) c_gda_export_unselect_table;
	typedef void function(GdaExport* exp, GdaExportFlags flags) c_gda_export_run;
	typedef void function(GdaExport* exp) c_gda_export_stop;
	typedef GdaConnection* function(GdaExport* exp) c_gda_export_get_connection;
	typedef void function(GdaExport* exp, GdaConnection* cnc) c_gda_export_set_connection;
	
	// gda.FieldAttributes
	
	typedef GType function() c_gda_field_attributes_get_type;
	typedef GdaFieldAttributes* function() c_gda_field_attributes_new;
	typedef GdaFieldAttributes* function(GdaFieldAttributes* fa) c_gda_field_attributes_copy;
	typedef void function(GdaFieldAttributes* fa) c_gda_field_attributes_free;
	typedef gboolean function(GdaFieldAttributes* lhs, GdaFieldAttributes* rhs) c_gda_field_attributes_equal;
	typedef glong function(GdaFieldAttributes* fa) c_gda_field_attributes_get_defined_size;
	typedef void function(GdaFieldAttributes* fa, glong size) c_gda_field_attributes_set_defined_size;
	typedef gchar* function(GdaFieldAttributes* fa) c_gda_field_attributes_get_name;
	typedef void function(GdaFieldAttributes* fa, gchar* name) c_gda_field_attributes_set_name;
	typedef gchar* function(GdaFieldAttributes* fa) c_gda_field_attributes_get_table;
	typedef void function(GdaFieldAttributes* fa, gchar* table) c_gda_field_attributes_set_table;
	typedef gchar* function(GdaFieldAttributes* fa) c_gda_field_attributes_get_caption;
	typedef void function(GdaFieldAttributes* fa, gchar* caption) c_gda_field_attributes_set_caption;
	typedef glong function(GdaFieldAttributes* fa) c_gda_field_attributes_get_scale;
	typedef void function(GdaFieldAttributes* fa, glong scale) c_gda_field_attributes_set_scale;
	typedef GdaValueType function(GdaFieldAttributes* fa) c_gda_field_attributes_get_gdatype;
	typedef void function(GdaFieldAttributes* fa, GdaValueType type) c_gda_field_attributes_set_gdatype;
	typedef gboolean function(GdaFieldAttributes* fa) c_gda_field_attributes_get_allow_null;
	typedef void function(GdaFieldAttributes* fa, gboolean allow) c_gda_field_attributes_set_allow_null;
	typedef gboolean function(GdaFieldAttributes* fa) c_gda_field_attributes_get_primary_key;
	typedef void function(GdaFieldAttributes* fa, gboolean pk) c_gda_field_attributes_set_primary_key;
	typedef gboolean function(GdaFieldAttributes* fa) c_gda_field_attributes_get_unique_key;
	typedef void function(GdaFieldAttributes* fa, gboolean uk) c_gda_field_attributes_set_unique_key;
	typedef gchar* function(GdaFieldAttributes* fa) c_gda_field_attributes_get_references;
	typedef void function(GdaFieldAttributes* fa, gchar* doref) c_gda_field_attributes_set_references;
	typedef gboolean function(GdaFieldAttributes* fa) c_gda_field_attributes_get_auto_increment;
	typedef void function(GdaFieldAttributes* fa, gboolean isAuto) c_gda_field_attributes_set_auto_increment;
	typedef gint function(GdaFieldAttributes* fa) c_gda_field_attributes_get_position;
	typedef void function(GdaFieldAttributes* fa, gint position) c_gda_field_attributes_set_position;
	typedef GdaValue* function(GdaFieldAttributes* fa) c_gda_field_attributes_get_default_value;
	typedef void function(GdaFieldAttributes* fa, GdaValue* defaultValue) c_gda_field_attributes_set_default_value;
	
	// gda.Log
	
	typedef void function() c_gda_log_enable;
	typedef void function() c_gda_log_disable;
	typedef gboolean function() c_gda_log_is_enabled;
	typedef void function(gchar* format, ... ) c_gda_log_message;
	typedef void function(gchar* format, ... ) c_gda_log_error;
	
	// gda.Parameter
	
	typedef GType function() c_gda_parameter_get_type;
	typedef GdaParameter* function(gchar* name, GdaValue* value) c_gda_parameter_new_from_value;
	typedef GdaParameter* function(gchar* name, gboolean value) c_gda_parameter_new_boolean;
	typedef GdaParameter* function(gchar* name, gdouble value) c_gda_parameter_new_double;
	typedef GdaParameter* function(gchar* name, GObject* value) c_gda_parameter_new_gobject;
	typedef GdaParameter* function(gchar* name, gchar* value) c_gda_parameter_new_string;
	typedef GdaParameter* function(GdaParameter* param) c_gda_parameter_copy;
	typedef void function(GdaParameter* param) c_gda_parameter_free;
	typedef gchar* function(GdaParameter* param) c_gda_parameter_get_name;
	typedef void function(GdaParameter* param, gchar* name) c_gda_parameter_set_name;
	typedef GdaValue* function(GdaParameter* param) c_gda_parameter_get_value;
	typedef void function(GdaParameter* param, GdaValue* value) c_gda_parameter_set_value;
	
	// gda.ParameterList
	
	typedef GType function() c_gda_parameter_list_get_type;
	typedef GdaParameterList* function() c_gda_parameter_list_new;
	typedef void function(GdaParameterList* plist) c_gda_parameter_list_free;
	typedef GdaParameterList* function(GdaParameterList* plist) c_gda_parameter_list_copy;
	typedef void function(GdaParameterList* plist, GdaParameter* param) c_gda_parameter_list_add_parameter;
	typedef GList* function(GdaParameterList* plist) c_gda_parameter_list_get_names;
	typedef GdaParameter* function(GdaParameterList* plist, gchar* name) c_gda_parameter_list_find;
	typedef void function(GdaParameterList* plist) c_gda_parameter_list_clear;
	typedef guint function(GdaParameterList* plist) c_gda_parameter_list_get_length;
	
	// gda.QuarkList
	
	typedef GType function() c_gda_quark_list_get_type;
	typedef GdaQuarkList* function() c_gda_quark_list_new;
	typedef GdaQuarkList* function(gchar* string) c_gda_quark_list_new_from_string;
	typedef GdaQuarkList* function(GdaQuarkList* qlist) c_gda_quark_list_copy;
	typedef void function(GdaQuarkList* qlist) c_gda_quark_list_free;
	typedef void function(GdaQuarkList* qlist, gchar* string, gboolean cleanup) c_gda_quark_list_add_from_string;
	typedef gchar* function(GdaQuarkList* qlist, gchar* name) c_gda_quark_list_find;
	typedef void function(GdaQuarkList* qlist, gchar* name) c_gda_quark_list_remove;
	typedef void function(GdaQuarkList* qlist) c_gda_quark_list_clear;
	
	// gda.Row
	
	typedef GType function() c_gda_row_get_type;
	typedef GdaRow* function(GdaDataModel* model, gint count) c_gda_row_new;
	typedef GdaRow* function(GdaDataModel* model, GList* values) c_gda_row_new_from_list;
	typedef GdaRow* function(GdaRow* row) c_gda_row_copy;
	typedef void function(GdaRow* row) c_gda_row_free;
	typedef GdaDataModel* function(GdaRow* row) c_gda_row_get_model;
	typedef gint function(GdaRow* row) c_gda_row_get_number;
	typedef void function(GdaRow* row, gint number) c_gda_row_set_number;
	typedef gchar* function(GdaRow* row) c_gda_row_get_id;
	typedef void function(GdaRow* row, gchar* id) c_gda_row_set_id;
	typedef GdaValue* function(GdaRow* row, gint num) c_gda_row_get_value;
	typedef gint function(GdaRow* row) c_gda_row_get_length;
	
	// gda.Select
	
	typedef GdaDataModel* function() c_gda_select_new;
	typedef void function(GdaSelect* sel, gchar* name, GdaDataModel* source) c_gda_select_add_source;
	typedef void function(GdaSelect* sel, gchar* sql) c_gda_select_set_sql;
	typedef gboolean function(GdaSelect* sel) c_gda_select_run;
	
	// gda.Table
	
	typedef GdaTable* function(gchar* name) c_gda_table_new;
	typedef GdaTable* function(gchar* name, GdaDataModel* model, gboolean addData) c_gda_table_new_from_model;
	typedef gchar* function(GdaTable* table) c_gda_table_get_name;
	typedef void function(GdaTable* table, gchar* name) c_gda_table_set_name;
	typedef void function(GdaTable* table, GdaFieldAttributes* fa) c_gda_table_add_field;
	typedef void function(GdaTable* table, GdaDataModel* model) c_gda_table_add_data_from_model;
	
	// gda.Transaction
	
	typedef GdaTransaction* function(gchar* name) c_gda_transaction_new;
	typedef GdaTransactionIsolation function(GdaTransaction* xaction) c_gda_transaction_get_isolation_level;
	typedef void function(GdaTransaction* xaction, GdaTransactionIsolation level) c_gda_transaction_set_isolation_level;
	typedef gchar* function(GdaTransaction* xaction) c_gda_transaction_get_name;
	typedef void function(GdaTransaction* xaction, gchar* name) c_gda_transaction_set_name;
	
	// gda.Value
	
	typedef GType function() c_gda_value_get_gtype;
	typedef GdaValue* function() c_gda_value_new_null;
	typedef GdaValue* function(gint64 val) c_gda_value_new_bigint;
	typedef GdaValue* function(guint64 val) c_gda_value_new_biguint;
	typedef GdaValue* function(gconstpointer val, glong size) c_gda_value_new_binary;
	typedef GdaValue* function(GdaBlob* val) c_gda_value_new_blob;
	typedef GdaValue* function(gboolean val) c_gda_value_new_boolean;
	typedef GdaValue* function(GdaDate* val) c_gda_value_new_date;
	typedef GdaValue* function(gdouble val) c_gda_value_new_double;
	typedef GdaValue* function(GdaGeometricPoint* val) c_gda_value_new_geometric_point;
	typedef GdaValue* function(GObject* val) c_gda_value_new_gobject;
	typedef GdaValue* function(gint val) c_gda_value_new_integer;
	typedef GdaValue* function(GdaValueList* val) c_gda_value_new_list;
	typedef GdaValue* function(GdaMoney* val) c_gda_value_new_money;
	typedef GdaValue* function(GdaNumeric* val) c_gda_value_new_numeric;
	typedef GdaValue* function(gfloat val) c_gda_value_new_single;
	typedef GdaValue* function(gshort val) c_gda_value_new_smallint;
	typedef GdaValue* function(gushort val) c_gda_value_new_smalluint;
	typedef GdaValue* function(gchar* val) c_gda_value_new_string;
	typedef GdaValue* function(GdaTime* val) c_gda_value_new_time;
	typedef GdaValue* function(GdaTimestamp* val) c_gda_value_new_timestamp;
	typedef GdaValue* function(time_t val) c_gda_value_new_timestamp_from_timet;
	typedef GdaValue* function(gchar val) c_gda_value_new_tinyint;
	typedef GdaValue* function(guchar val) c_gda_value_new_tinyuint;
	typedef GdaValue* function(GdaValueType val) c_gda_value_new_type;
	typedef GdaValue* function(guint val) c_gda_value_new_uinteger;
	typedef GdaValue* function(gchar* asString, GdaValueType type) c_gda_value_new_from_string;
	typedef GdaValue* function(xmlNodePtr node) c_gda_value_new_from_xml;
	typedef void function(GdaValue* value) c_gda_value_free;
	typedef GdaValueType function(GdaValue* value) c_gda_value_get_type;
	typedef gboolean function(GdaValue* value) c_gda_value_is_null;
	typedef gboolean function(GdaValue* value) c_gda_value_is_number;
	typedef GdaValue* function(GdaValue* value) c_gda_value_copy;
	typedef gint64 function(GdaValue* value) c_gda_value_get_bigint;
	typedef void function(GdaValue* value, gint64 val) c_gda_value_set_bigint;
	typedef guint64 function(GdaValue* value) c_gda_value_get_biguint;
	typedef void function(GdaValue* value, guint64 val) c_gda_value_set_biguint;
	typedef gpointer function(GdaValue* value, glong* size) c_gda_value_get_binary;
	typedef void function(GdaValue* value, gconstpointer val, glong size) c_gda_value_set_binary;
	typedef GdaBlob* function(GdaValue* value) c_gda_value_get_blob;
	typedef void function(GdaValue* value, GdaBlob* val) c_gda_value_set_blob;
	typedef gboolean function(GdaValue* value) c_gda_value_get_boolean;
	typedef void function(GdaValue* value, gboolean val) c_gda_value_set_boolean;
	typedef GdaDate* function(GdaValue* value) c_gda_value_get_date;
	typedef void function(GdaValue* value, GdaDate* val) c_gda_value_set_date;
	typedef gdouble function(GdaValue* value) c_gda_value_get_double;
	typedef void function(GdaValue* value, gdouble val) c_gda_value_set_double;
	typedef GdaGeometricPoint* function(GdaValue* value) c_gda_value_get_geometric_point;
	typedef void function(GdaValue* value, GdaGeometricPoint* val) c_gda_value_set_geometric_point;
	typedef GObject* function(GdaValue* value) c_gda_value_get_gobject;
	typedef void function(GdaValue* value, GObject* val) c_gda_value_set_gobject;
	typedef gint function(GdaValue* value) c_gda_value_get_integer;
	typedef void function(GdaValue* value, gint val) c_gda_value_set_integer;
	typedef GdaValueList* function(GdaValue* value) c_gda_value_get_list;
	typedef void function(GdaValue* value, GdaValueList* val) c_gda_value_set_list;
	typedef void function(GdaValue* value) c_gda_value_set_null;
	typedef GdaMoney* function(GdaValue* value) c_gda_value_get_money;
	typedef void function(GdaValue* value, GdaMoney* val) c_gda_value_set_money;
	typedef GdaNumeric* function(GdaValue* value) c_gda_value_get_numeric;
	typedef void function(GdaValue* value, GdaNumeric* val) c_gda_value_set_numeric;
	typedef gfloat function(GdaValue* value) c_gda_value_get_single;
	typedef void function(GdaValue* value, gfloat val) c_gda_value_set_single;
	typedef gshort function(GdaValue* value) c_gda_value_get_smallint;
	typedef void function(GdaValue* value, gshort val) c_gda_value_set_smallint;
	typedef gushort function(GdaValue* value) c_gda_value_get_smalluint;
	typedef void function(GdaValue* value, gushort val) c_gda_value_set_smalluint;
	typedef gchar* function(GdaValue* value) c_gda_value_get_string;
	typedef void function(GdaValue* value, gchar* val) c_gda_value_set_string;
	typedef GdaTime* function(GdaValue* value) c_gda_value_get_time;
	typedef void function(GdaValue* value, GdaTime* val) c_gda_value_set_time;
	typedef GdaTimestamp* function(GdaValue* value) c_gda_value_get_timestamp;
	typedef void function(GdaValue* value, GdaTimestamp* val) c_gda_value_set_timestamp;
	typedef gchar function(GdaValue* value) c_gda_value_get_tinyint;
	typedef void function(GdaValue* value, gchar val) c_gda_value_set_tinyint;
	typedef guchar function(GdaValue* value) c_gda_value_get_tinyuint;
	typedef void function(GdaValue* value, guchar val) c_gda_value_set_tinyuint;
	typedef guint function(GdaValue* value) c_gda_value_get_uinteger;
	typedef void function(GdaValue* value, guint val) c_gda_value_set_uinteger;
	typedef GdaValueType function(GdaValue* value) c_gda_value_get_vtype;
	typedef void function(GdaValue* value, GdaValueType type) c_gda_value_set_vtype;
	typedef gboolean function(GdaValue* value, gchar* asString, GdaValueType type) c_gda_value_set_from_string;
	typedef gboolean function(GdaValue* value, GdaValue* from) c_gda_value_set_from_value;
	typedef gint function(GdaValue* value1, GdaValue* value2) c_gda_value_compare;
	typedef gchar* function(GdaValue* value) c_gda_value_stringify;
	typedef xmlNodePtr function(GdaValue* value) c_gda_value_to_xml;
}

// gda.Gda

c_gda_init  gda_init;
c_gda_main_run  gda_main_run;
c_gda_main_quit  gda_main_quit;
c_gda_type_to_string  gda_type_to_string;
c_gda_type_from_string  gda_type_from_string;
c_gda_string_hash_to_list  gda_string_hash_to_list;
c_gda_sql_replace_placeholders  gda_sql_replace_placeholders;
c_gda_file_load  gda_file_load;
c_gda_file_save  gda_file_save;

// gda.Blob

c_gda_blob_open  gda_blob_open;
c_gda_blob_read  gda_blob_read;
c_gda_blob_write  gda_blob_write;
c_gda_blob_lseek  gda_blob_lseek;
c_gda_blob_close  gda_blob_close;
c_gda_blob_remove  gda_blob_remove;
c_gda_blob_free_data  gda_blob_free_data;

// gda.Client

c_gda_client_new  gda_client_new;
c_gda_client_open_connection  gda_client_open_connection;
c_gda_client_open_connection_from_string  gda_client_open_connection_from_string;
c_gda_client_get_connection_list  gda_client_get_connection_list;
c_gda_client_find_connection  gda_client_find_connection;
c_gda_client_close_all_connections  gda_client_close_all_connections;
c_gda_client_notify_event  gda_client_notify_event;
c_gda_client_notify_error_event  gda_client_notify_error_event;
c_gda_client_notify_connection_opened_event  gda_client_notify_connection_opened_event;
c_gda_client_notify_connection_closed_event  gda_client_notify_connection_closed_event;
c_gda_client_notify_transaction_started_event  gda_client_notify_transaction_started_event;
c_gda_client_notify_transaction_committed_event  gda_client_notify_transaction_committed_event;
c_gda_client_notify_transaction_cancelled_event  gda_client_notify_transaction_cancelled_event;
c_gda_client_begin_transaction  gda_client_begin_transaction;
c_gda_client_commit_transaction  gda_client_commit_transaction;
c_gda_client_rollback_transaction  gda_client_rollback_transaction;

// gda.Command

c_gda_command_get_type  gda_command_get_type;
c_gda_command_new  gda_command_new;
c_gda_command_free  gda_command_free;
c_gda_command_copy  gda_command_copy;
c_gda_command_get_text  gda_command_get_text;
c_gda_command_set_text  gda_command_set_text;
c_gda_command_get_command_type  gda_command_get_command_type;
c_gda_command_set_command_type  gda_command_set_command_type;
c_gda_command_get_options  gda_command_get_options;
c_gda_command_set_options  gda_command_set_options;
c_gda_command_get_transaction  gda_command_get_transaction;
c_gda_command_set_transaction  gda_command_set_transaction;

// gda.Config

c_gda_config_get_string  gda_config_get_string;
c_gda_config_get_int  gda_config_get_int;
c_gda_config_get_float  gda_config_get_float;
c_gda_config_get_boolean  gda_config_get_boolean;
c_gda_config_set_string  gda_config_set_string;
c_gda_config_set_int  gda_config_set_int;
c_gda_config_set_float  gda_config_set_float;
c_gda_config_set_boolean  gda_config_set_boolean;
c_gda_config_remove_section  gda_config_remove_section;
c_gda_config_remove_key  gda_config_remove_key;
c_gda_config_has_section  gda_config_has_section;
c_gda_config_has_key  gda_config_has_key;
c_gda_config_list_sections  gda_config_list_sections;
c_gda_config_list_keys  gda_config_list_keys;
c_gda_config_get_type  gda_config_get_type;
c_gda_config_free_list  gda_config_free_list;
c_gda_config_add_listener  gda_config_add_listener;
c_gda_config_remove_listener  gda_config_remove_listener;
c_gda_config_get_provider_list  gda_config_get_provider_list;
c_gda_config_free_provider_list  gda_config_free_provider_list;
c_gda_config_get_provider_by_name  gda_config_get_provider_by_name;
c_gda_config_get_provider_model  gda_config_get_provider_model;
c_gda_config_copy_data_source_info  gda_config_copy_data_source_info;
c_gda_config_free_data_source_info  gda_config_free_data_source_info;
c_gda_config_get_data_source_list  gda_config_get_data_source_list;
c_gda_config_find_data_source  gda_config_find_data_source;
c_gda_config_free_data_source_list  gda_config_free_data_source_list;
c_gda_config_get_data_source_model  gda_config_get_data_source_model;
c_gda_config_save_data_source  gda_config_save_data_source;
c_gda_config_save_data_source_info  gda_config_save_data_source_info;
c_gda_config_remove_data_source  gda_config_remove_data_source;

// gda.ProviderInfo

c_gda_provider_info_get_type  gda_provider_info_get_type;
c_gda_provider_info_copy  gda_provider_info_copy;
c_gda_provider_info_free  gda_provider_info_free;

// gda.DataSourceInfo

c_gda_data_source_info_get_type  gda_data_source_info_get_type;

// gda.Connection

c_gda_connection_new  gda_connection_new;
c_gda_connection_close  gda_connection_close;
c_gda_connection_is_open  gda_connection_is_open;
c_gda_connection_get_client  gda_connection_get_client;
c_gda_connection_set_client  gda_connection_set_client;
c_gda_connection_get_options  gda_connection_get_options;
c_gda_connection_get_server_version  gda_connection_get_server_version;
c_gda_connection_get_database  gda_connection_get_database;
c_gda_connection_get_dsn  gda_connection_get_dsn;
c_gda_connection_get_cnc_string  gda_connection_get_cnc_string;
c_gda_connection_get_provider  gda_connection_get_provider;
c_gda_connection_get_username  gda_connection_get_username;
c_gda_connection_get_password  gda_connection_get_password;
c_gda_connection_add_error  gda_connection_add_error;
c_gda_connection_add_error_string  gda_connection_add_error_string;
c_gda_connection_add_error_list  gda_connection_add_error_list;
c_gda_connection_change_database  gda_connection_change_database;
c_gda_connection_create_database  gda_connection_create_database;
c_gda_connection_drop_database  gda_connection_drop_database;
c_gda_connection_create_table  gda_connection_create_table;
c_gda_connection_drop_table  gda_connection_drop_table;
c_gda_connection_execute_command  gda_connection_execute_command;
c_gda_connection_get_last_insert_id  gda_connection_get_last_insert_id;
c_gda_connection_execute_single_command  gda_connection_execute_single_command;
c_gda_connection_execute_non_query  gda_connection_execute_non_query;
c_gda_connection_begin_transaction  gda_connection_begin_transaction;
c_gda_connection_commit_transaction  gda_connection_commit_transaction;
c_gda_connection_rollback_transaction  gda_connection_rollback_transaction;
c_gda_connection_create_blob  gda_connection_create_blob;
c_gda_connection_get_errors  gda_connection_get_errors;
c_gda_connection_supports  gda_connection_supports;
c_gda_connection_get_schema  gda_connection_get_schema;

// gda.DataModelArray

c_gda_data_model_array_new  gda_data_model_array_new;
c_gda_data_model_array_set_n_columns  gda_data_model_array_set_n_columns;
c_gda_data_model_array_clear  gda_data_model_array_clear;

// gda.DataModelHash

c_gda_data_model_hash_new  gda_data_model_hash_new;
c_gda_data_model_hash_get_value_at  gda_data_model_hash_get_value_at;
c_gda_data_model_hash_clear  gda_data_model_hash_clear;
c_gda_data_model_hash_set_n_columns  gda_data_model_hash_set_n_columns;
c_gda_data_model_hash_insert_row  gda_data_model_hash_insert_row;
c_gda_data_model_hash_get_row  gda_data_model_hash_get_row;

// gda.DataModelList

c_gda_data_model_list_new  gda_data_model_list_new;
c_gda_data_model_list_new_from_string_list  gda_data_model_list_new_from_string_list;
c_gda_data_model_list_append_value  gda_data_model_list_append_value;

// gda.DataModel

c_gda_data_model_changed  gda_data_model_changed;
c_gda_data_model_row_inserted  gda_data_model_row_inserted;
c_gda_data_model_row_updated  gda_data_model_row_updated;
c_gda_data_model_row_removed  gda_data_model_row_removed;
c_gda_data_model_column_inserted  gda_data_model_column_inserted;
c_gda_data_model_column_updated  gda_data_model_column_updated;
c_gda_data_model_column_removed  gda_data_model_column_removed;
c_gda_data_model_freeze  gda_data_model_freeze;
c_gda_data_model_thaw  gda_data_model_thaw;
c_gda_data_model_get_n_rows  gda_data_model_get_n_rows;
c_gda_data_model_get_n_columns  gda_data_model_get_n_columns;
c_gda_data_model_describe_column  gda_data_model_describe_column;
c_gda_data_model_get_column_title  gda_data_model_get_column_title;
c_gda_data_model_set_column_title  gda_data_model_set_column_title;
c_gda_data_model_get_column_position  gda_data_model_get_column_position;
c_gda_data_model_get_row  gda_data_model_get_row;
c_gda_data_model_get_value_at  gda_data_model_get_value_at;
c_gda_data_model_is_updatable  gda_data_model_is_updatable;
c_gda_data_model_append_row  gda_data_model_append_row;
c_gda_data_model_remove_row  gda_data_model_remove_row;
c_gda_data_model_update_row  gda_data_model_update_row;
c_gda_data_model_append_column  gda_data_model_append_column;
c_gda_data_model_update_column  gda_data_model_update_column;
c_gda_data_model_remove_column  gda_data_model_remove_column;
c_gda_data_model_foreach  gda_data_model_foreach;
c_gda_data_model_has_changed  gda_data_model_has_changed;
c_gda_data_model_begin_update  gda_data_model_begin_update;
c_gda_data_model_cancel_update  gda_data_model_cancel_update;
c_gda_data_model_end_update  gda_data_model_end_update;
c_gda_data_model_to_comma_separated  gda_data_model_to_comma_separated;
c_gda_data_model_to_tab_separated  gda_data_model_to_tab_separated;
c_gda_data_model_to_xml  gda_data_model_to_xml;
c_gda_data_model_to_xml_node  gda_data_model_to_xml_node;
c_gda_data_model_add_data_from_xml_node  gda_data_model_add_data_from_xml_node;
c_gda_data_model_get_command_text  gda_data_model_get_command_text;
c_gda_data_model_set_command_text  gda_data_model_set_command_text;
c_gda_data_model_get_command_type  gda_data_model_get_command_type;
c_gda_data_model_set_command_type  gda_data_model_set_command_type;

// gda.ErrorGda

c_gda_error_new  gda_error_new;
c_gda_error_free  gda_error_free;
c_gda_error_list_copy  gda_error_list_copy;
c_gda_error_list_free  gda_error_list_free;
c_gda_error_get_description  gda_error_get_description;
c_gda_error_set_description  gda_error_set_description;
c_gda_error_get_number  gda_error_get_number;
c_gda_error_set_number  gda_error_set_number;
c_gda_error_get_source  gda_error_get_source;
c_gda_error_set_source  gda_error_set_source;
c_gda_error_get_sqlstate  gda_error_get_sqlstate;
c_gda_error_set_sqlstate  gda_error_set_sqlstate;

// gda.Export

c_gda_export_new  gda_export_new;
c_gda_export_get_tables  gda_export_get_tables;
c_gda_export_get_selected_tables  gda_export_get_selected_tables;
c_gda_export_select_table  gda_export_select_table;
c_gda_export_select_table_list  gda_export_select_table_list;
c_gda_export_unselect_table  gda_export_unselect_table;
c_gda_export_run  gda_export_run;
c_gda_export_stop  gda_export_stop;
c_gda_export_get_connection  gda_export_get_connection;
c_gda_export_set_connection  gda_export_set_connection;

// gda.FieldAttributes

c_gda_field_attributes_get_type  gda_field_attributes_get_type;
c_gda_field_attributes_new  gda_field_attributes_new;
c_gda_field_attributes_copy  gda_field_attributes_copy;
c_gda_field_attributes_free  gda_field_attributes_free;
c_gda_field_attributes_equal  gda_field_attributes_equal;
c_gda_field_attributes_get_defined_size  gda_field_attributes_get_defined_size;
c_gda_field_attributes_set_defined_size  gda_field_attributes_set_defined_size;
c_gda_field_attributes_get_name  gda_field_attributes_get_name;
c_gda_field_attributes_set_name  gda_field_attributes_set_name;
c_gda_field_attributes_get_table  gda_field_attributes_get_table;
c_gda_field_attributes_set_table  gda_field_attributes_set_table;
c_gda_field_attributes_get_caption  gda_field_attributes_get_caption;
c_gda_field_attributes_set_caption  gda_field_attributes_set_caption;
c_gda_field_attributes_get_scale  gda_field_attributes_get_scale;
c_gda_field_attributes_set_scale  gda_field_attributes_set_scale;
c_gda_field_attributes_get_gdatype  gda_field_attributes_get_gdatype;
c_gda_field_attributes_set_gdatype  gda_field_attributes_set_gdatype;
c_gda_field_attributes_get_allow_null  gda_field_attributes_get_allow_null;
c_gda_field_attributes_set_allow_null  gda_field_attributes_set_allow_null;
c_gda_field_attributes_get_primary_key  gda_field_attributes_get_primary_key;
c_gda_field_attributes_set_primary_key  gda_field_attributes_set_primary_key;
c_gda_field_attributes_get_unique_key  gda_field_attributes_get_unique_key;
c_gda_field_attributes_set_unique_key  gda_field_attributes_set_unique_key;
c_gda_field_attributes_get_references  gda_field_attributes_get_references;
c_gda_field_attributes_set_references  gda_field_attributes_set_references;
c_gda_field_attributes_get_auto_increment  gda_field_attributes_get_auto_increment;
c_gda_field_attributes_set_auto_increment  gda_field_attributes_set_auto_increment;
c_gda_field_attributes_get_position  gda_field_attributes_get_position;
c_gda_field_attributes_set_position  gda_field_attributes_set_position;
c_gda_field_attributes_get_default_value  gda_field_attributes_get_default_value;
c_gda_field_attributes_set_default_value  gda_field_attributes_set_default_value;

// gda.Log

c_gda_log_enable  gda_log_enable;
c_gda_log_disable  gda_log_disable;
c_gda_log_is_enabled  gda_log_is_enabled;
c_gda_log_message  gda_log_message;
c_gda_log_error  gda_log_error;

// gda.Parameter

c_gda_parameter_get_type  gda_parameter_get_type;
c_gda_parameter_new_from_value  gda_parameter_new_from_value;
c_gda_parameter_new_boolean  gda_parameter_new_boolean;
c_gda_parameter_new_double  gda_parameter_new_double;
c_gda_parameter_new_gobject  gda_parameter_new_gobject;
c_gda_parameter_new_string  gda_parameter_new_string;
c_gda_parameter_copy  gda_parameter_copy;
c_gda_parameter_free  gda_parameter_free;
c_gda_parameter_get_name  gda_parameter_get_name;
c_gda_parameter_set_name  gda_parameter_set_name;
c_gda_parameter_get_value  gda_parameter_get_value;
c_gda_parameter_set_value  gda_parameter_set_value;

// gda.ParameterList

c_gda_parameter_list_get_type  gda_parameter_list_get_type;
c_gda_parameter_list_new  gda_parameter_list_new;
c_gda_parameter_list_free  gda_parameter_list_free;
c_gda_parameter_list_copy  gda_parameter_list_copy;
c_gda_parameter_list_add_parameter  gda_parameter_list_add_parameter;
c_gda_parameter_list_get_names  gda_parameter_list_get_names;
c_gda_parameter_list_find  gda_parameter_list_find;
c_gda_parameter_list_clear  gda_parameter_list_clear;
c_gda_parameter_list_get_length  gda_parameter_list_get_length;

// gda.QuarkList

c_gda_quark_list_get_type  gda_quark_list_get_type;
c_gda_quark_list_new  gda_quark_list_new;
c_gda_quark_list_new_from_string  gda_quark_list_new_from_string;
c_gda_quark_list_copy  gda_quark_list_copy;
c_gda_quark_list_free  gda_quark_list_free;
c_gda_quark_list_add_from_string  gda_quark_list_add_from_string;
c_gda_quark_list_find  gda_quark_list_find;
c_gda_quark_list_remove  gda_quark_list_remove;
c_gda_quark_list_clear  gda_quark_list_clear;

// gda.Row

c_gda_row_get_type  gda_row_get_type;
c_gda_row_new  gda_row_new;
c_gda_row_new_from_list  gda_row_new_from_list;
c_gda_row_copy  gda_row_copy;
c_gda_row_free  gda_row_free;
c_gda_row_get_model  gda_row_get_model;
c_gda_row_get_number  gda_row_get_number;
c_gda_row_set_number  gda_row_set_number;
c_gda_row_get_id  gda_row_get_id;
c_gda_row_set_id  gda_row_set_id;
c_gda_row_get_value  gda_row_get_value;
c_gda_row_get_length  gda_row_get_length;

// gda.Select

c_gda_select_new  gda_select_new;
c_gda_select_add_source  gda_select_add_source;
c_gda_select_set_sql  gda_select_set_sql;
c_gda_select_run  gda_select_run;

// gda.Table

c_gda_table_new  gda_table_new;
c_gda_table_new_from_model  gda_table_new_from_model;
c_gda_table_get_name  gda_table_get_name;
c_gda_table_set_name  gda_table_set_name;
c_gda_table_add_field  gda_table_add_field;
c_gda_table_add_data_from_model  gda_table_add_data_from_model;

// gda.Transaction

c_gda_transaction_new  gda_transaction_new;
c_gda_transaction_get_isolation_level  gda_transaction_get_isolation_level;
c_gda_transaction_set_isolation_level  gda_transaction_set_isolation_level;
c_gda_transaction_get_name  gda_transaction_get_name;
c_gda_transaction_set_name  gda_transaction_set_name;

// gda.Value

c_gda_value_get_gtype  gda_value_get_gtype;
c_gda_value_new_null  gda_value_new_null;
c_gda_value_new_bigint  gda_value_new_bigint;
c_gda_value_new_biguint  gda_value_new_biguint;
c_gda_value_new_binary  gda_value_new_binary;
c_gda_value_new_blob  gda_value_new_blob;
c_gda_value_new_boolean  gda_value_new_boolean;
c_gda_value_new_date  gda_value_new_date;
c_gda_value_new_double  gda_value_new_double;
c_gda_value_new_geometric_point  gda_value_new_geometric_point;
c_gda_value_new_gobject  gda_value_new_gobject;
c_gda_value_new_integer  gda_value_new_integer;
c_gda_value_new_list  gda_value_new_list;
c_gda_value_new_money  gda_value_new_money;
c_gda_value_new_numeric  gda_value_new_numeric;
c_gda_value_new_single  gda_value_new_single;
c_gda_value_new_smallint  gda_value_new_smallint;
c_gda_value_new_smalluint  gda_value_new_smalluint;
c_gda_value_new_string  gda_value_new_string;
c_gda_value_new_time  gda_value_new_time;
c_gda_value_new_timestamp  gda_value_new_timestamp;
c_gda_value_new_timestamp_from_timet  gda_value_new_timestamp_from_timet;
c_gda_value_new_tinyint  gda_value_new_tinyint;
c_gda_value_new_tinyuint  gda_value_new_tinyuint;
c_gda_value_new_type  gda_value_new_type;
c_gda_value_new_uinteger  gda_value_new_uinteger;
c_gda_value_new_from_string  gda_value_new_from_string;
c_gda_value_new_from_xml  gda_value_new_from_xml;
c_gda_value_free  gda_value_free;
c_gda_value_get_type  gda_value_get_type;
c_gda_value_is_null  gda_value_is_null;
c_gda_value_is_number  gda_value_is_number;
c_gda_value_copy  gda_value_copy;
c_gda_value_get_bigint  gda_value_get_bigint;
c_gda_value_set_bigint  gda_value_set_bigint;
c_gda_value_get_biguint  gda_value_get_biguint;
c_gda_value_set_biguint  gda_value_set_biguint;
c_gda_value_get_binary  gda_value_get_binary;
c_gda_value_set_binary  gda_value_set_binary;
c_gda_value_get_blob  gda_value_get_blob;
c_gda_value_set_blob  gda_value_set_blob;
c_gda_value_get_boolean  gda_value_get_boolean;
c_gda_value_set_boolean  gda_value_set_boolean;
c_gda_value_get_date  gda_value_get_date;
c_gda_value_set_date  gda_value_set_date;
c_gda_value_get_double  gda_value_get_double;
c_gda_value_set_double  gda_value_set_double;
c_gda_value_get_geometric_point  gda_value_get_geometric_point;
c_gda_value_set_geometric_point  gda_value_set_geometric_point;
c_gda_value_get_gobject  gda_value_get_gobject;
c_gda_value_set_gobject  gda_value_set_gobject;
c_gda_value_get_integer  gda_value_get_integer;
c_gda_value_set_integer  gda_value_set_integer;
c_gda_value_get_list  gda_value_get_list;
c_gda_value_set_list  gda_value_set_list;
c_gda_value_set_null  gda_value_set_null;
c_gda_value_get_money  gda_value_get_money;
c_gda_value_set_money  gda_value_set_money;
c_gda_value_get_numeric  gda_value_get_numeric;
c_gda_value_set_numeric  gda_value_set_numeric;
c_gda_value_get_single  gda_value_get_single;
c_gda_value_set_single  gda_value_set_single;
c_gda_value_get_smallint  gda_value_get_smallint;
c_gda_value_set_smallint  gda_value_set_smallint;
c_gda_value_get_smalluint  gda_value_get_smalluint;
c_gda_value_set_smalluint  gda_value_set_smalluint;
c_gda_value_get_string  gda_value_get_string;
c_gda_value_set_string  gda_value_set_string;
c_gda_value_get_time  gda_value_get_time;
c_gda_value_set_time  gda_value_set_time;
c_gda_value_get_timestamp  gda_value_get_timestamp;
c_gda_value_set_timestamp  gda_value_set_timestamp;
c_gda_value_get_tinyint  gda_value_get_tinyint;
c_gda_value_set_tinyint  gda_value_set_tinyint;
c_gda_value_get_tinyuint  gda_value_get_tinyuint;
c_gda_value_set_tinyuint  gda_value_set_tinyuint;
c_gda_value_get_uinteger  gda_value_get_uinteger;
c_gda_value_set_uinteger  gda_value_set_uinteger;
c_gda_value_get_vtype  gda_value_get_vtype;
c_gda_value_set_vtype  gda_value_set_vtype;
c_gda_value_set_from_string  gda_value_set_from_string;
c_gda_value_set_from_value  gda_value_set_from_value;
c_gda_value_compare  gda_value_compare;
c_gda_value_stringify  gda_value_stringify;
c_gda_value_to_xml  gda_value_to_xml;
