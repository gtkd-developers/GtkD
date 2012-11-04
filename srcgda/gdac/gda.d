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


module gdac.gda;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gdac.gdatypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// gda.Gda

	Linker.link(gda_init, \"gda_init\", LIBRARY.GDA);
	Linker.link(gda_main_run, \"gda_main_run\", LIBRARY.GDA);
	Linker.link(gda_main_quit, \"gda_main_quit\", LIBRARY.GDA);
	Linker.link(gda_type_to_string, \"gda_type_to_string\", LIBRARY.GDA);
	Linker.link(gda_type_from_string, \"gda_type_from_string\", LIBRARY.GDA);
	Linker.link(gda_string_hash_to_list, \"gda_string_hash_to_list\", LIBRARY.GDA);
	Linker.link(gda_sql_replace_placeholders, \"gda_sql_replace_placeholders\", LIBRARY.GDA);
	Linker.link(gda_file_load, \"gda_file_load\", LIBRARY.GDA);
	Linker.link(gda_file_save, \"gda_file_save\", LIBRARY.GDA);

	// gda.Blob

	Linker.link(gda_blob_open, \"gda_blob_open\", LIBRARY.GDA);
	Linker.link(gda_blob_read, \"gda_blob_read\", LIBRARY.GDA);
	Linker.link(gda_blob_write, \"gda_blob_write\", LIBRARY.GDA);
	Linker.link(gda_blob_lseek, \"gda_blob_lseek\", LIBRARY.GDA);
	Linker.link(gda_blob_close, \"gda_blob_close\", LIBRARY.GDA);
	Linker.link(gda_blob_remove, \"gda_blob_remove\", LIBRARY.GDA);
	Linker.link(gda_blob_free_data, \"gda_blob_free_data\", LIBRARY.GDA);

	// gda.Client

	Linker.link(gda_client_new, \"gda_client_new\", LIBRARY.GDA);
	Linker.link(gda_client_open_connection, \"gda_client_open_connection\", LIBRARY.GDA);
	Linker.link(gda_client_open_connection_from_string, \"gda_client_open_connection_from_string\", LIBRARY.GDA);
	Linker.link(gda_client_get_connection_list, \"gda_client_get_connection_list\", LIBRARY.GDA);
	Linker.link(gda_client_find_connection, \"gda_client_find_connection\", LIBRARY.GDA);
	Linker.link(gda_client_close_all_connections, \"gda_client_close_all_connections\", LIBRARY.GDA);
	Linker.link(gda_client_notify_event, \"gda_client_notify_event\", LIBRARY.GDA);
	Linker.link(gda_client_notify_error_event, \"gda_client_notify_error_event\", LIBRARY.GDA);
	Linker.link(gda_client_notify_connection_opened_event, \"gda_client_notify_connection_opened_event\", LIBRARY.GDA);
	Linker.link(gda_client_notify_connection_closed_event, \"gda_client_notify_connection_closed_event\", LIBRARY.GDA);
	Linker.link(gda_client_notify_transaction_started_event, \"gda_client_notify_transaction_started_event\", LIBRARY.GDA);
	Linker.link(gda_client_notify_transaction_committed_event, \"gda_client_notify_transaction_committed_event\", LIBRARY.GDA);
	Linker.link(gda_client_notify_transaction_cancelled_event, \"gda_client_notify_transaction_cancelled_event\", LIBRARY.GDA);
	Linker.link(gda_client_begin_transaction, \"gda_client_begin_transaction\", LIBRARY.GDA);
	Linker.link(gda_client_commit_transaction, \"gda_client_commit_transaction\", LIBRARY.GDA);
	Linker.link(gda_client_rollback_transaction, \"gda_client_rollback_transaction\", LIBRARY.GDA);

	// gda.Command

	Linker.link(gda_command_get_type, \"gda_command_get_type\", LIBRARY.GDA);
	Linker.link(gda_command_new, \"gda_command_new\", LIBRARY.GDA);
	Linker.link(gda_command_free, \"gda_command_free\", LIBRARY.GDA);
	Linker.link(gda_command_copy, \"gda_command_copy\", LIBRARY.GDA);
	Linker.link(gda_command_get_text, \"gda_command_get_text\", LIBRARY.GDA);
	Linker.link(gda_command_set_text, \"gda_command_set_text\", LIBRARY.GDA);
	Linker.link(gda_command_get_command_type, \"gda_command_get_command_type\", LIBRARY.GDA);
	Linker.link(gda_command_set_command_type, \"gda_command_set_command_type\", LIBRARY.GDA);
	Linker.link(gda_command_get_options, \"gda_command_get_options\", LIBRARY.GDA);
	Linker.link(gda_command_set_options, \"gda_command_set_options\", LIBRARY.GDA);
	Linker.link(gda_command_get_transaction, \"gda_command_get_transaction\", LIBRARY.GDA);
	Linker.link(gda_command_set_transaction, \"gda_command_set_transaction\", LIBRARY.GDA);

	// gda.Config

	Linker.link(gda_config_get_string, \"gda_config_get_string\", LIBRARY.GDA);
	Linker.link(gda_config_get_int, \"gda_config_get_int\", LIBRARY.GDA);
	Linker.link(gda_config_get_float, \"gda_config_get_float\", LIBRARY.GDA);
	Linker.link(gda_config_get_boolean, \"gda_config_get_boolean\", LIBRARY.GDA);
	Linker.link(gda_config_set_string, \"gda_config_set_string\", LIBRARY.GDA);
	Linker.link(gda_config_set_int, \"gda_config_set_int\", LIBRARY.GDA);
	Linker.link(gda_config_set_float, \"gda_config_set_float\", LIBRARY.GDA);
	Linker.link(gda_config_set_boolean, \"gda_config_set_boolean\", LIBRARY.GDA);
	Linker.link(gda_config_remove_section, \"gda_config_remove_section\", LIBRARY.GDA);
	Linker.link(gda_config_remove_key, \"gda_config_remove_key\", LIBRARY.GDA);
	Linker.link(gda_config_has_section, \"gda_config_has_section\", LIBRARY.GDA);
	Linker.link(gda_config_has_key, \"gda_config_has_key\", LIBRARY.GDA);
	Linker.link(gda_config_list_sections, \"gda_config_list_sections\", LIBRARY.GDA);
	Linker.link(gda_config_list_keys, \"gda_config_list_keys\", LIBRARY.GDA);
	Linker.link(gda_config_get_type, \"gda_config_get_type\", LIBRARY.GDA);
	Linker.link(gda_config_free_list, \"gda_config_free_list\", LIBRARY.GDA);
	Linker.link(gda_config_add_listener, \"gda_config_add_listener\", LIBRARY.GDA);
	Linker.link(gda_config_remove_listener, \"gda_config_remove_listener\", LIBRARY.GDA);
	Linker.link(gda_config_get_provider_list, \"gda_config_get_provider_list\", LIBRARY.GDA);
	Linker.link(gda_config_free_provider_list, \"gda_config_free_provider_list\", LIBRARY.GDA);
	Linker.link(gda_config_get_provider_by_name, \"gda_config_get_provider_by_name\", LIBRARY.GDA);
	Linker.link(gda_config_get_provider_model, \"gda_config_get_provider_model\", LIBRARY.GDA);
	Linker.link(gda_config_copy_data_source_info, \"gda_config_copy_data_source_info\", LIBRARY.GDA);
	Linker.link(gda_config_free_data_source_info, \"gda_config_free_data_source_info\", LIBRARY.GDA);
	Linker.link(gda_config_get_data_source_list, \"gda_config_get_data_source_list\", LIBRARY.GDA);
	Linker.link(gda_config_find_data_source, \"gda_config_find_data_source\", LIBRARY.GDA);
	Linker.link(gda_config_free_data_source_list, \"gda_config_free_data_source_list\", LIBRARY.GDA);
	Linker.link(gda_config_get_data_source_model, \"gda_config_get_data_source_model\", LIBRARY.GDA);
	Linker.link(gda_config_save_data_source, \"gda_config_save_data_source\", LIBRARY.GDA);
	Linker.link(gda_config_save_data_source_info, \"gda_config_save_data_source_info\", LIBRARY.GDA);
	Linker.link(gda_config_remove_data_source, \"gda_config_remove_data_source\", LIBRARY.GDA);

	// gda.ProviderInfo

	Linker.link(gda_provider_info_get_type, \"gda_provider_info_get_type\", LIBRARY.GDA);
	Linker.link(gda_provider_info_copy, \"gda_provider_info_copy\", LIBRARY.GDA);
	Linker.link(gda_provider_info_free, \"gda_provider_info_free\", LIBRARY.GDA);

	// gda.DataSourceInfo

	Linker.link(gda_data_source_info_get_type, \"gda_data_source_info_get_type\", LIBRARY.GDA);

	// gda.Connection

	Linker.link(gda_connection_new, \"gda_connection_new\", LIBRARY.GDA);
	Linker.link(gda_connection_close, \"gda_connection_close\", LIBRARY.GDA);
	Linker.link(gda_connection_is_open, \"gda_connection_is_open\", LIBRARY.GDA);
	Linker.link(gda_connection_get_client, \"gda_connection_get_client\", LIBRARY.GDA);
	Linker.link(gda_connection_set_client, \"gda_connection_set_client\", LIBRARY.GDA);
	Linker.link(gda_connection_get_options, \"gda_connection_get_options\", LIBRARY.GDA);
	Linker.link(gda_connection_get_server_version, \"gda_connection_get_server_version\", LIBRARY.GDA);
	Linker.link(gda_connection_get_database, \"gda_connection_get_database\", LIBRARY.GDA);
	Linker.link(gda_connection_get_dsn, \"gda_connection_get_dsn\", LIBRARY.GDA);
	Linker.link(gda_connection_get_cnc_string, \"gda_connection_get_cnc_string\", LIBRARY.GDA);
	Linker.link(gda_connection_get_provider, \"gda_connection_get_provider\", LIBRARY.GDA);
	Linker.link(gda_connection_get_username, \"gda_connection_get_username\", LIBRARY.GDA);
	Linker.link(gda_connection_get_password, \"gda_connection_get_password\", LIBRARY.GDA);
	Linker.link(gda_connection_add_error, \"gda_connection_add_error\", LIBRARY.GDA);
	Linker.link(gda_connection_add_error_string, \"gda_connection_add_error_string\", LIBRARY.GDA);
	Linker.link(gda_connection_add_error_list, \"gda_connection_add_error_list\", LIBRARY.GDA);
	Linker.link(gda_connection_change_database, \"gda_connection_change_database\", LIBRARY.GDA);
	Linker.link(gda_connection_create_database, \"gda_connection_create_database\", LIBRARY.GDA);
	Linker.link(gda_connection_drop_database, \"gda_connection_drop_database\", LIBRARY.GDA);
	Linker.link(gda_connection_create_table, \"gda_connection_create_table\", LIBRARY.GDA);
	Linker.link(gda_connection_drop_table, \"gda_connection_drop_table\", LIBRARY.GDA);
	Linker.link(gda_connection_execute_command, \"gda_connection_execute_command\", LIBRARY.GDA);
	Linker.link(gda_connection_get_last_insert_id, \"gda_connection_get_last_insert_id\", LIBRARY.GDA);
	Linker.link(gda_connection_execute_single_command, \"gda_connection_execute_single_command\", LIBRARY.GDA);
	Linker.link(gda_connection_execute_non_query, \"gda_connection_execute_non_query\", LIBRARY.GDA);
	Linker.link(gda_connection_begin_transaction, \"gda_connection_begin_transaction\", LIBRARY.GDA);
	Linker.link(gda_connection_commit_transaction, \"gda_connection_commit_transaction\", LIBRARY.GDA);
	Linker.link(gda_connection_rollback_transaction, \"gda_connection_rollback_transaction\", LIBRARY.GDA);
	Linker.link(gda_connection_create_blob, \"gda_connection_create_blob\", LIBRARY.GDA);
	Linker.link(gda_connection_get_errors, \"gda_connection_get_errors\", LIBRARY.GDA);
	Linker.link(gda_connection_supports, \"gda_connection_supports\", LIBRARY.GDA);
	Linker.link(gda_connection_get_schema, \"gda_connection_get_schema\", LIBRARY.GDA);

	// gda.DataModelArray

	Linker.link(gda_data_model_array_new, \"gda_data_model_array_new\", LIBRARY.GDA);
	Linker.link(gda_data_model_array_set_n_columns, \"gda_data_model_array_set_n_columns\", LIBRARY.GDA);
	Linker.link(gda_data_model_array_clear, \"gda_data_model_array_clear\", LIBRARY.GDA);

	// gda.DataModelHash

	Linker.link(gda_data_model_hash_new, \"gda_data_model_hash_new\", LIBRARY.GDA);
	Linker.link(gda_data_model_hash_get_value_at, \"gda_data_model_hash_get_value_at\", LIBRARY.GDA);
	Linker.link(gda_data_model_hash_clear, \"gda_data_model_hash_clear\", LIBRARY.GDA);
	Linker.link(gda_data_model_hash_set_n_columns, \"gda_data_model_hash_set_n_columns\", LIBRARY.GDA);
	Linker.link(gda_data_model_hash_insert_row, \"gda_data_model_hash_insert_row\", LIBRARY.GDA);
	Linker.link(gda_data_model_hash_get_row, \"gda_data_model_hash_get_row\", LIBRARY.GDA);

	// gda.DataModelList

	Linker.link(gda_data_model_list_new, \"gda_data_model_list_new\", LIBRARY.GDA);
	Linker.link(gda_data_model_list_new_from_string_list, \"gda_data_model_list_new_from_string_list\", LIBRARY.GDA);
	Linker.link(gda_data_model_list_append_value, \"gda_data_model_list_append_value\", LIBRARY.GDA);

	// gda.DataModel

	Linker.link(gda_data_model_changed, \"gda_data_model_changed\", LIBRARY.GDA);
	Linker.link(gda_data_model_row_inserted, \"gda_data_model_row_inserted\", LIBRARY.GDA);
	Linker.link(gda_data_model_row_updated, \"gda_data_model_row_updated\", LIBRARY.GDA);
	Linker.link(gda_data_model_row_removed, \"gda_data_model_row_removed\", LIBRARY.GDA);
	Linker.link(gda_data_model_column_inserted, \"gda_data_model_column_inserted\", LIBRARY.GDA);
	Linker.link(gda_data_model_column_updated, \"gda_data_model_column_updated\", LIBRARY.GDA);
	Linker.link(gda_data_model_column_removed, \"gda_data_model_column_removed\", LIBRARY.GDA);
	Linker.link(gda_data_model_freeze, \"gda_data_model_freeze\", LIBRARY.GDA);
	Linker.link(gda_data_model_thaw, \"gda_data_model_thaw\", LIBRARY.GDA);
	Linker.link(gda_data_model_get_n_rows, \"gda_data_model_get_n_rows\", LIBRARY.GDA);
	Linker.link(gda_data_model_get_n_columns, \"gda_data_model_get_n_columns\", LIBRARY.GDA);
	Linker.link(gda_data_model_describe_column, \"gda_data_model_describe_column\", LIBRARY.GDA);
	Linker.link(gda_data_model_get_column_title, \"gda_data_model_get_column_title\", LIBRARY.GDA);
	Linker.link(gda_data_model_set_column_title, \"gda_data_model_set_column_title\", LIBRARY.GDA);
	Linker.link(gda_data_model_get_column_position, \"gda_data_model_get_column_position\", LIBRARY.GDA);
	Linker.link(gda_data_model_get_row, \"gda_data_model_get_row\", LIBRARY.GDA);
	Linker.link(gda_data_model_get_value_at, \"gda_data_model_get_value_at\", LIBRARY.GDA);
	Linker.link(gda_data_model_is_updatable, \"gda_data_model_is_updatable\", LIBRARY.GDA);
	Linker.link(gda_data_model_append_row, \"gda_data_model_append_row\", LIBRARY.GDA);
	Linker.link(gda_data_model_remove_row, \"gda_data_model_remove_row\", LIBRARY.GDA);
	Linker.link(gda_data_model_update_row, \"gda_data_model_update_row\", LIBRARY.GDA);
	Linker.link(gda_data_model_append_column, \"gda_data_model_append_column\", LIBRARY.GDA);
	Linker.link(gda_data_model_update_column, \"gda_data_model_update_column\", LIBRARY.GDA);
	Linker.link(gda_data_model_remove_column, \"gda_data_model_remove_column\", LIBRARY.GDA);
	Linker.link(gda_data_model_foreach, \"gda_data_model_foreach\", LIBRARY.GDA);
	Linker.link(gda_data_model_has_changed, \"gda_data_model_has_changed\", LIBRARY.GDA);
	Linker.link(gda_data_model_begin_update, \"gda_data_model_begin_update\", LIBRARY.GDA);
	Linker.link(gda_data_model_cancel_update, \"gda_data_model_cancel_update\", LIBRARY.GDA);
	Linker.link(gda_data_model_end_update, \"gda_data_model_end_update\", LIBRARY.GDA);
	Linker.link(gda_data_model_to_comma_separated, \"gda_data_model_to_comma_separated\", LIBRARY.GDA);
	Linker.link(gda_data_model_to_tab_separated, \"gda_data_model_to_tab_separated\", LIBRARY.GDA);
	Linker.link(gda_data_model_to_xml, \"gda_data_model_to_xml\", LIBRARY.GDA);
	Linker.link(gda_data_model_to_xml_node, \"gda_data_model_to_xml_node\", LIBRARY.GDA);
	Linker.link(gda_data_model_add_data_from_xml_node, \"gda_data_model_add_data_from_xml_node\", LIBRARY.GDA);
	Linker.link(gda_data_model_get_command_text, \"gda_data_model_get_command_text\", LIBRARY.GDA);
	Linker.link(gda_data_model_set_command_text, \"gda_data_model_set_command_text\", LIBRARY.GDA);
	Linker.link(gda_data_model_get_command_type, \"gda_data_model_get_command_type\", LIBRARY.GDA);
	Linker.link(gda_data_model_set_command_type, \"gda_data_model_set_command_type\", LIBRARY.GDA);

	// gda.ErrorGda

	Linker.link(gda_error_new, \"gda_error_new\", LIBRARY.GDA);
	Linker.link(gda_error_free, \"gda_error_free\", LIBRARY.GDA);
	Linker.link(gda_error_list_copy, \"gda_error_list_copy\", LIBRARY.GDA);
	Linker.link(gda_error_list_free, \"gda_error_list_free\", LIBRARY.GDA);
	Linker.link(gda_error_get_description, \"gda_error_get_description\", LIBRARY.GDA);
	Linker.link(gda_error_set_description, \"gda_error_set_description\", LIBRARY.GDA);
	Linker.link(gda_error_get_number, \"gda_error_get_number\", LIBRARY.GDA);
	Linker.link(gda_error_set_number, \"gda_error_set_number\", LIBRARY.GDA);
	Linker.link(gda_error_get_source, \"gda_error_get_source\", LIBRARY.GDA);
	Linker.link(gda_error_set_source, \"gda_error_set_source\", LIBRARY.GDA);
	Linker.link(gda_error_get_sqlstate, \"gda_error_get_sqlstate\", LIBRARY.GDA);
	Linker.link(gda_error_set_sqlstate, \"gda_error_set_sqlstate\", LIBRARY.GDA);

	// gda.Export

	Linker.link(gda_export_new, \"gda_export_new\", LIBRARY.GDA);
	Linker.link(gda_export_get_tables, \"gda_export_get_tables\", LIBRARY.GDA);
	Linker.link(gda_export_get_selected_tables, \"gda_export_get_selected_tables\", LIBRARY.GDA);
	Linker.link(gda_export_select_table, \"gda_export_select_table\", LIBRARY.GDA);
	Linker.link(gda_export_select_table_list, \"gda_export_select_table_list\", LIBRARY.GDA);
	Linker.link(gda_export_unselect_table, \"gda_export_unselect_table\", LIBRARY.GDA);
	Linker.link(gda_export_run, \"gda_export_run\", LIBRARY.GDA);
	Linker.link(gda_export_stop, \"gda_export_stop\", LIBRARY.GDA);
	Linker.link(gda_export_get_connection, \"gda_export_get_connection\", LIBRARY.GDA);
	Linker.link(gda_export_set_connection, \"gda_export_set_connection\", LIBRARY.GDA);

	// gda.FieldAttributes

	Linker.link(gda_field_attributes_get_type, \"gda_field_attributes_get_type\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_new, \"gda_field_attributes_new\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_copy, \"gda_field_attributes_copy\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_free, \"gda_field_attributes_free\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_equal, \"gda_field_attributes_equal\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_defined_size, \"gda_field_attributes_get_defined_size\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_defined_size, \"gda_field_attributes_set_defined_size\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_name, \"gda_field_attributes_get_name\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_name, \"gda_field_attributes_set_name\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_table, \"gda_field_attributes_get_table\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_table, \"gda_field_attributes_set_table\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_caption, \"gda_field_attributes_get_caption\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_caption, \"gda_field_attributes_set_caption\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_scale, \"gda_field_attributes_get_scale\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_scale, \"gda_field_attributes_set_scale\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_gdatype, \"gda_field_attributes_get_gdatype\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_gdatype, \"gda_field_attributes_set_gdatype\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_allow_null, \"gda_field_attributes_get_allow_null\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_allow_null, \"gda_field_attributes_set_allow_null\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_primary_key, \"gda_field_attributes_get_primary_key\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_primary_key, \"gda_field_attributes_set_primary_key\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_unique_key, \"gda_field_attributes_get_unique_key\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_unique_key, \"gda_field_attributes_set_unique_key\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_references, \"gda_field_attributes_get_references\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_references, \"gda_field_attributes_set_references\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_auto_increment, \"gda_field_attributes_get_auto_increment\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_auto_increment, \"gda_field_attributes_set_auto_increment\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_position, \"gda_field_attributes_get_position\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_position, \"gda_field_attributes_set_position\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_get_default_value, \"gda_field_attributes_get_default_value\", LIBRARY.GDA);
	Linker.link(gda_field_attributes_set_default_value, \"gda_field_attributes_set_default_value\", LIBRARY.GDA);

	// gda.Log

	Linker.link(gda_log_enable, \"gda_log_enable\", LIBRARY.GDA);
	Linker.link(gda_log_disable, \"gda_log_disable\", LIBRARY.GDA);
	Linker.link(gda_log_is_enabled, \"gda_log_is_enabled\", LIBRARY.GDA);
	Linker.link(gda_log_message, \"gda_log_message\", LIBRARY.GDA);
	Linker.link(gda_log_error, \"gda_log_error\", LIBRARY.GDA);

	// gda.Parameter

	Linker.link(gda_parameter_get_type, \"gda_parameter_get_type\", LIBRARY.GDA);
	Linker.link(gda_parameter_new_from_value, \"gda_parameter_new_from_value\", LIBRARY.GDA);
	Linker.link(gda_parameter_new_boolean, \"gda_parameter_new_boolean\", LIBRARY.GDA);
	Linker.link(gda_parameter_new_double, \"gda_parameter_new_double\", LIBRARY.GDA);
	Linker.link(gda_parameter_new_gobject, \"gda_parameter_new_gobject\", LIBRARY.GDA);
	Linker.link(gda_parameter_new_string, \"gda_parameter_new_string\", LIBRARY.GDA);
	Linker.link(gda_parameter_copy, \"gda_parameter_copy\", LIBRARY.GDA);
	Linker.link(gda_parameter_free, \"gda_parameter_free\", LIBRARY.GDA);
	Linker.link(gda_parameter_get_name, \"gda_parameter_get_name\", LIBRARY.GDA);
	Linker.link(gda_parameter_set_name, \"gda_parameter_set_name\", LIBRARY.GDA);
	Linker.link(gda_parameter_get_value, \"gda_parameter_get_value\", LIBRARY.GDA);
	Linker.link(gda_parameter_set_value, \"gda_parameter_set_value\", LIBRARY.GDA);

	// gda.ParameterList

	Linker.link(gda_parameter_list_get_type, \"gda_parameter_list_get_type\", LIBRARY.GDA);
	Linker.link(gda_parameter_list_new, \"gda_parameter_list_new\", LIBRARY.GDA);
	Linker.link(gda_parameter_list_free, \"gda_parameter_list_free\", LIBRARY.GDA);
	Linker.link(gda_parameter_list_copy, \"gda_parameter_list_copy\", LIBRARY.GDA);
	Linker.link(gda_parameter_list_add_parameter, \"gda_parameter_list_add_parameter\", LIBRARY.GDA);
	Linker.link(gda_parameter_list_get_names, \"gda_parameter_list_get_names\", LIBRARY.GDA);
	Linker.link(gda_parameter_list_find, \"gda_parameter_list_find\", LIBRARY.GDA);
	Linker.link(gda_parameter_list_clear, \"gda_parameter_list_clear\", LIBRARY.GDA);
	Linker.link(gda_parameter_list_get_length, \"gda_parameter_list_get_length\", LIBRARY.GDA);

	// gda.QuarkList

	Linker.link(gda_quark_list_get_type, \"gda_quark_list_get_type\", LIBRARY.GDA);
	Linker.link(gda_quark_list_new, \"gda_quark_list_new\", LIBRARY.GDA);
	Linker.link(gda_quark_list_new_from_string, \"gda_quark_list_new_from_string\", LIBRARY.GDA);
	Linker.link(gda_quark_list_copy, \"gda_quark_list_copy\", LIBRARY.GDA);
	Linker.link(gda_quark_list_free, \"gda_quark_list_free\", LIBRARY.GDA);
	Linker.link(gda_quark_list_add_from_string, \"gda_quark_list_add_from_string\", LIBRARY.GDA);
	Linker.link(gda_quark_list_find, \"gda_quark_list_find\", LIBRARY.GDA);
	Linker.link(gda_quark_list_remove, \"gda_quark_list_remove\", LIBRARY.GDA);
	Linker.link(gda_quark_list_clear, \"gda_quark_list_clear\", LIBRARY.GDA);

	// gda.Row

	Linker.link(gda_row_get_type, \"gda_row_get_type\", LIBRARY.GDA);
	Linker.link(gda_row_new, \"gda_row_new\", LIBRARY.GDA);
	Linker.link(gda_row_new_from_list, \"gda_row_new_from_list\", LIBRARY.GDA);
	Linker.link(gda_row_copy, \"gda_row_copy\", LIBRARY.GDA);
	Linker.link(gda_row_free, \"gda_row_free\", LIBRARY.GDA);
	Linker.link(gda_row_get_model, \"gda_row_get_model\", LIBRARY.GDA);
	Linker.link(gda_row_get_number, \"gda_row_get_number\", LIBRARY.GDA);
	Linker.link(gda_row_set_number, \"gda_row_set_number\", LIBRARY.GDA);
	Linker.link(gda_row_get_id, \"gda_row_get_id\", LIBRARY.GDA);
	Linker.link(gda_row_set_id, \"gda_row_set_id\", LIBRARY.GDA);
	Linker.link(gda_row_get_value, \"gda_row_get_value\", LIBRARY.GDA);
	Linker.link(gda_row_get_length, \"gda_row_get_length\", LIBRARY.GDA);

	// gda.Select

	Linker.link(gda_select_new, \"gda_select_new\", LIBRARY.GDA);
	Linker.link(gda_select_add_source, \"gda_select_add_source\", LIBRARY.GDA);
	Linker.link(gda_select_set_sql, \"gda_select_set_sql\", LIBRARY.GDA);
	Linker.link(gda_select_run, \"gda_select_run\", LIBRARY.GDA);

	// gda.Table

	Linker.link(gda_table_new, \"gda_table_new\", LIBRARY.GDA);
	Linker.link(gda_table_new_from_model, \"gda_table_new_from_model\", LIBRARY.GDA);
	Linker.link(gda_table_get_name, \"gda_table_get_name\", LIBRARY.GDA);
	Linker.link(gda_table_set_name, \"gda_table_set_name\", LIBRARY.GDA);
	Linker.link(gda_table_add_field, \"gda_table_add_field\", LIBRARY.GDA);
	Linker.link(gda_table_add_data_from_model, \"gda_table_add_data_from_model\", LIBRARY.GDA);

	// gda.Transaction

	Linker.link(gda_transaction_new, \"gda_transaction_new\", LIBRARY.GDA);
	Linker.link(gda_transaction_get_isolation_level, \"gda_transaction_get_isolation_level\", LIBRARY.GDA);
	Linker.link(gda_transaction_set_isolation_level, \"gda_transaction_set_isolation_level\", LIBRARY.GDA);
	Linker.link(gda_transaction_get_name, \"gda_transaction_get_name\", LIBRARY.GDA);
	Linker.link(gda_transaction_set_name, \"gda_transaction_set_name\", LIBRARY.GDA);

	// gda.Value

	Linker.link(gda_value_get_gtype, \"gda_value_get_gtype\", LIBRARY.GDA);
	Linker.link(gda_value_new_null, \"gda_value_new_null\", LIBRARY.GDA);
	Linker.link(gda_value_new_bigint, \"gda_value_new_bigint\", LIBRARY.GDA);
	Linker.link(gda_value_new_biguint, \"gda_value_new_biguint\", LIBRARY.GDA);
	Linker.link(gda_value_new_binary, \"gda_value_new_binary\", LIBRARY.GDA);
	Linker.link(gda_value_new_blob, \"gda_value_new_blob\", LIBRARY.GDA);
	Linker.link(gda_value_new_boolean, \"gda_value_new_boolean\", LIBRARY.GDA);
	Linker.link(gda_value_new_date, \"gda_value_new_date\", LIBRARY.GDA);
	Linker.link(gda_value_new_double, \"gda_value_new_double\", LIBRARY.GDA);
	Linker.link(gda_value_new_geometric_point, \"gda_value_new_geometric_point\", LIBRARY.GDA);
	Linker.link(gda_value_new_gobject, \"gda_value_new_gobject\", LIBRARY.GDA);
	Linker.link(gda_value_new_integer, \"gda_value_new_integer\", LIBRARY.GDA);
	Linker.link(gda_value_new_list, \"gda_value_new_list\", LIBRARY.GDA);
	Linker.link(gda_value_new_money, \"gda_value_new_money\", LIBRARY.GDA);
	Linker.link(gda_value_new_numeric, \"gda_value_new_numeric\", LIBRARY.GDA);
	Linker.link(gda_value_new_single, \"gda_value_new_single\", LIBRARY.GDA);
	Linker.link(gda_value_new_smallint, \"gda_value_new_smallint\", LIBRARY.GDA);
	Linker.link(gda_value_new_smalluint, \"gda_value_new_smalluint\", LIBRARY.GDA);
	Linker.link(gda_value_new_string, \"gda_value_new_string\", LIBRARY.GDA);
	Linker.link(gda_value_new_time, \"gda_value_new_time\", LIBRARY.GDA);
	Linker.link(gda_value_new_timestamp, \"gda_value_new_timestamp\", LIBRARY.GDA);
	Linker.link(gda_value_new_timestamp_from_timet, \"gda_value_new_timestamp_from_timet\", LIBRARY.GDA);
	Linker.link(gda_value_new_tinyint, \"gda_value_new_tinyint\", LIBRARY.GDA);
	Linker.link(gda_value_new_tinyuint, \"gda_value_new_tinyuint\", LIBRARY.GDA);
	Linker.link(gda_value_new_type, \"gda_value_new_type\", LIBRARY.GDA);
	Linker.link(gda_value_new_uinteger, \"gda_value_new_uinteger\", LIBRARY.GDA);
	Linker.link(gda_value_new_from_string, \"gda_value_new_from_string\", LIBRARY.GDA);
	Linker.link(gda_value_new_from_xml, \"gda_value_new_from_xml\", LIBRARY.GDA);
	Linker.link(gda_value_free, \"gda_value_free\", LIBRARY.GDA);
	Linker.link(gda_value_get_type, \"gda_value_get_type\", LIBRARY.GDA);
	Linker.link(gda_value_is_null, \"gda_value_is_null\", LIBRARY.GDA);
	Linker.link(gda_value_is_number, \"gda_value_is_number\", LIBRARY.GDA);
	Linker.link(gda_value_copy, \"gda_value_copy\", LIBRARY.GDA);
	Linker.link(gda_value_get_bigint, \"gda_value_get_bigint\", LIBRARY.GDA);
	Linker.link(gda_value_set_bigint, \"gda_value_set_bigint\", LIBRARY.GDA);
	Linker.link(gda_value_get_biguint, \"gda_value_get_biguint\", LIBRARY.GDA);
	Linker.link(gda_value_set_biguint, \"gda_value_set_biguint\", LIBRARY.GDA);
	Linker.link(gda_value_get_binary, \"gda_value_get_binary\", LIBRARY.GDA);
	Linker.link(gda_value_set_binary, \"gda_value_set_binary\", LIBRARY.GDA);
	Linker.link(gda_value_get_blob, \"gda_value_get_blob\", LIBRARY.GDA);
	Linker.link(gda_value_set_blob, \"gda_value_set_blob\", LIBRARY.GDA);
	Linker.link(gda_value_get_boolean, \"gda_value_get_boolean\", LIBRARY.GDA);
	Linker.link(gda_value_set_boolean, \"gda_value_set_boolean\", LIBRARY.GDA);
	Linker.link(gda_value_get_date, \"gda_value_get_date\", LIBRARY.GDA);
	Linker.link(gda_value_set_date, \"gda_value_set_date\", LIBRARY.GDA);
	Linker.link(gda_value_get_double, \"gda_value_get_double\", LIBRARY.GDA);
	Linker.link(gda_value_set_double, \"gda_value_set_double\", LIBRARY.GDA);
	Linker.link(gda_value_get_geometric_point, \"gda_value_get_geometric_point\", LIBRARY.GDA);
	Linker.link(gda_value_set_geometric_point, \"gda_value_set_geometric_point\", LIBRARY.GDA);
	Linker.link(gda_value_get_gobject, \"gda_value_get_gobject\", LIBRARY.GDA);
	Linker.link(gda_value_set_gobject, \"gda_value_set_gobject\", LIBRARY.GDA);
	Linker.link(gda_value_get_integer, \"gda_value_get_integer\", LIBRARY.GDA);
	Linker.link(gda_value_set_integer, \"gda_value_set_integer\", LIBRARY.GDA);
	Linker.link(gda_value_get_list, \"gda_value_get_list\", LIBRARY.GDA);
	Linker.link(gda_value_set_list, \"gda_value_set_list\", LIBRARY.GDA);
	Linker.link(gda_value_set_null, \"gda_value_set_null\", LIBRARY.GDA);
	Linker.link(gda_value_get_money, \"gda_value_get_money\", LIBRARY.GDA);
	Linker.link(gda_value_set_money, \"gda_value_set_money\", LIBRARY.GDA);
	Linker.link(gda_value_get_numeric, \"gda_value_get_numeric\", LIBRARY.GDA);
	Linker.link(gda_value_set_numeric, \"gda_value_set_numeric\", LIBRARY.GDA);
	Linker.link(gda_value_get_single, \"gda_value_get_single\", LIBRARY.GDA);
	Linker.link(gda_value_set_single, \"gda_value_set_single\", LIBRARY.GDA);
	Linker.link(gda_value_get_smallint, \"gda_value_get_smallint\", LIBRARY.GDA);
	Linker.link(gda_value_set_smallint, \"gda_value_set_smallint\", LIBRARY.GDA);
	Linker.link(gda_value_get_smalluint, \"gda_value_get_smalluint\", LIBRARY.GDA);
	Linker.link(gda_value_set_smalluint, \"gda_value_set_smalluint\", LIBRARY.GDA);
	Linker.link(gda_value_get_string, \"gda_value_get_string\", LIBRARY.GDA);
	Linker.link(gda_value_set_string, \"gda_value_set_string\", LIBRARY.GDA);
	Linker.link(gda_value_get_time, \"gda_value_get_time\", LIBRARY.GDA);
	Linker.link(gda_value_set_time, \"gda_value_set_time\", LIBRARY.GDA);
	Linker.link(gda_value_get_timestamp, \"gda_value_get_timestamp\", LIBRARY.GDA);
	Linker.link(gda_value_set_timestamp, \"gda_value_set_timestamp\", LIBRARY.GDA);
	Linker.link(gda_value_get_tinyint, \"gda_value_get_tinyint\", LIBRARY.GDA);
	Linker.link(gda_value_set_tinyint, \"gda_value_set_tinyint\", LIBRARY.GDA);
	Linker.link(gda_value_get_tinyuint, \"gda_value_get_tinyuint\", LIBRARY.GDA);
	Linker.link(gda_value_set_tinyuint, \"gda_value_set_tinyuint\", LIBRARY.GDA);
	Linker.link(gda_value_get_uinteger, \"gda_value_get_uinteger\", LIBRARY.GDA);
	Linker.link(gda_value_set_uinteger, \"gda_value_set_uinteger\", LIBRARY.GDA);
	Linker.link(gda_value_get_vtype, \"gda_value_get_vtype\", LIBRARY.GDA);
	Linker.link(gda_value_set_vtype, \"gda_value_set_vtype\", LIBRARY.GDA);
	Linker.link(gda_value_set_from_string, \"gda_value_set_from_string\", LIBRARY.GDA);
	Linker.link(gda_value_set_from_value, \"gda_value_set_from_value\", LIBRARY.GDA);
	Linker.link(gda_value_compare, \"gda_value_compare\", LIBRARY.GDA);
	Linker.link(gda_value_stringify, \"gda_value_stringify\", LIBRARY.GDA);
	Linker.link(gda_value_to_xml, \"gda_value_to_xml\", LIBRARY.GDA);
}");

mixin( gshared ~"extern(C)
{
	// gda.Gda

	void function(gchar* appId, gchar* versio, gint nargs, gchar** args) c_gda_init;
	void function(GdaInitFunc initFunc, void* userData) c_gda_main_run;
	void function() c_gda_main_quit;
	gchar* function(GdaValueType type) c_gda_type_to_string;
	GdaValueType function(gchar* str) c_gda_type_from_string;
	GList* function(GHashTable* hashTable) c_gda_string_hash_to_list;
	gchar* function(gchar* sql, GdaParameterList* params) c_gda_sql_replace_placeholders;
	gchar* function(gchar* filename) c_gda_file_load;
	gboolean function(gchar* filename, gchar* buffer, gint len) c_gda_file_save;

	// gda.Blob

	gint function(GdaBlob* blob, GdaBlobMode mode) c_gda_blob_open;
	gint function(GdaBlob* blob, void* buf, gint size, gint* bytesRead) c_gda_blob_read;
	gint function(GdaBlob* blob, void* buf, gint size, gint* bytesWritten) c_gda_blob_write;
	gint function(GdaBlob* blob, gint offset, gint whence) c_gda_blob_lseek;
	gint function(GdaBlob* blob) c_gda_blob_close;
	gint function(GdaBlob* blob) c_gda_blob_remove;
	void function(GdaBlob* blob) c_gda_blob_free_data;

	// gda.Client

	GdaClient* function() c_gda_client_new;
	GdaConnection* function(GdaClient* client, gchar* dsn, gchar* username, gchar* password, GdaConnectionOptions options) c_gda_client_open_connection;
	GdaConnection* function(GdaClient* client, gchar* providerId, gchar* cncString, GdaConnectionOptions options) c_gda_client_open_connection_from_string;
	GList* function(GdaClient* client) c_gda_client_get_connection_list;
	GdaConnection* function(GdaClient* client, gchar* dsn, gchar* username, gchar* password) c_gda_client_find_connection;
	void function(GdaClient* client) c_gda_client_close_all_connections;
	void function(GdaClient* client, GdaConnection* cnc, GdaClientEvent event, GdaParameterList* params) c_gda_client_notify_event;
	void function(GdaClient* client, GdaConnection* cnc, GdaError* error) c_gda_client_notify_error_event;
	void function(GdaClient* client, GdaConnection* cnc) c_gda_client_notify_connection_opened_event;
	void function(GdaClient* client, GdaConnection* cnc) c_gda_client_notify_connection_closed_event;
	void function(GdaClient* client, GdaConnection* cnc, GdaTransaction* xaction) c_gda_client_notify_transaction_started_event;
	void function(GdaClient* client, GdaConnection* cnc, GdaTransaction* xaction) c_gda_client_notify_transaction_committed_event;
	void function(GdaClient* client, GdaConnection* cnc, GdaTransaction* xaction) c_gda_client_notify_transaction_cancelled_event;
	gboolean function(GdaClient* client, GdaTransaction* xaction) c_gda_client_begin_transaction;
	gboolean function(GdaClient* client, GdaTransaction* xaction) c_gda_client_commit_transaction;
	gboolean function(GdaClient* client, GdaTransaction* xaction) c_gda_client_rollback_transaction;

	// gda.Command

	GType function() c_gda_command_get_type;
	GdaCommand* function(gchar* text, GdaCommandType type, GdaCommandOptions options) c_gda_command_new;
	void function(GdaCommand* cmd) c_gda_command_free;
	GdaCommand* function(GdaCommand* cmd) c_gda_command_copy;
	gchar* function(GdaCommand* cmd) c_gda_command_get_text;
	void function(GdaCommand* cmd, gchar* text) c_gda_command_set_text;
	GdaCommandType function(GdaCommand* cmd) c_gda_command_get_command_type;
	void function(GdaCommand* cmd, GdaCommandType type) c_gda_command_set_command_type;
	GdaCommandOptions function(GdaCommand* cmd) c_gda_command_get_options;
	void function(GdaCommand* cmd, GdaCommandOptions options) c_gda_command_set_options;
	GdaTransaction* function(GdaCommand* cmd) c_gda_command_get_transaction;
	void function(GdaCommand* cmd, GdaTransaction* xaction) c_gda_command_set_transaction;

	// gda.Config

	gchar* function(gchar* path) c_gda_config_get_string;
	gint function(gchar* path) c_gda_config_get_int;
	gdouble function(gchar* path) c_gda_config_get_float;
	gboolean function(gchar* path) c_gda_config_get_boolean;
	void function(gchar* path, gchar* newValue) c_gda_config_set_string;
	void function(gchar* path, gint newValue) c_gda_config_set_int;
	void function(gchar* path, gdouble newValue) c_gda_config_set_float;
	void function(gchar* path, gboolean newValue) c_gda_config_set_boolean;
	void function(gchar* path) c_gda_config_remove_section;
	void function(gchar* path) c_gda_config_remove_key;
	gboolean function(gchar* path) c_gda_config_has_section;
	gboolean function(gchar* path) c_gda_config_has_key;
	GList* function(gchar* path) c_gda_config_list_sections;
	GList* function(gchar* path) c_gda_config_list_keys;
	gchar* function(gchar* path) c_gda_config_get_type;
	void function(GList* list) c_gda_config_free_list;
	guint function(gchar* path, GdaConfigListenerFunc func, void* userData) c_gda_config_add_listener;
	void function(guint id) c_gda_config_remove_listener;
	GList* function() c_gda_config_get_provider_list;
	void function(GList* list) c_gda_config_free_provider_list;
	GdaProviderInfo* function(gchar* name) c_gda_config_get_provider_by_name;
	GdaDataModel* function() c_gda_config_get_provider_model;
	GdaDataSourceInfo* function(GdaDataSourceInfo* src) c_gda_config_copy_data_source_info;
	void function(GdaDataSourceInfo* info) c_gda_config_free_data_source_info;
	GList* function() c_gda_config_get_data_source_list;
	GdaDataSourceInfo* function(gchar* name) c_gda_config_find_data_source;
	void function(GList* list) c_gda_config_free_data_source_list;
	GdaDataModel* function() c_gda_config_get_data_source_model;
	void function(gchar* name, gchar* provider, gchar* cncString, gchar* description, gchar* username, gchar* password) c_gda_config_save_data_source;
	void function(GdaDataSourceInfo* dsnInfo) c_gda_config_save_data_source_info;
	void function(gchar* name) c_gda_config_remove_data_source;

	// gda.ProviderInfo

	GType function() c_gda_provider_info_get_type;
	GdaProviderInfo* function(GdaProviderInfo* src) c_gda_provider_info_copy;
	void function(GdaProviderInfo* providerInfo) c_gda_provider_info_free;

	// gda.DataSourceInfo

	GType function() c_gda_data_source_info_get_type;

	// gda.Connection

	GdaConnection* function(GdaClient* client, GdaServerProvider* provider, gchar* dsn, gchar* username, gchar* password, GdaConnectionOptions options) c_gda_connection_new;
	gboolean function(GdaConnection* cnc) c_gda_connection_close;
	gboolean function(GdaConnection* cnc) c_gda_connection_is_open;
	GdaClient* function(GdaConnection* cnc) c_gda_connection_get_client;
	void function(GdaConnection* cnc, GdaClient* client) c_gda_connection_set_client;
	GdaConnectionOptions function(GdaConnection* cnc) c_gda_connection_get_options;
	gchar* function(GdaConnection* cnc) c_gda_connection_get_server_version;
	gchar* function(GdaConnection* cnc) c_gda_connection_get_database;
	gchar* function(GdaConnection* cnc) c_gda_connection_get_dsn;
	gchar* function(GdaConnection* cnc) c_gda_connection_get_cnc_string;
	gchar* function(GdaConnection* cnc) c_gda_connection_get_provider;
	gchar* function(GdaConnection* cnc) c_gda_connection_get_username;
	gchar* function(GdaConnection* cnc) c_gda_connection_get_password;
	void function(GdaConnection* cnc, GdaError* error) c_gda_connection_add_error;
	void function(GdaConnection* cnc, gchar* str, ... ) c_gda_connection_add_error_string;
	void function(GdaConnection* cnc, GList* errorList) c_gda_connection_add_error_list;
	gboolean function(GdaConnection* cnc, gchar* name) c_gda_connection_change_database;
	gboolean function(GdaConnection* cnc, gchar* name) c_gda_connection_create_database;
	gboolean function(GdaConnection* cnc, gchar* name) c_gda_connection_drop_database;
	gboolean function(GdaConnection* cnc, gchar* tableName, GdaFieldAttributes** attributes) c_gda_connection_create_table;
	gboolean function(GdaConnection* cnc, gchar* tableName) c_gda_connection_drop_table;
	GList* function(GdaConnection* cnc, GdaCommand* cmd, GdaParameterList* params) c_gda_connection_execute_command;
	gchar* function(GdaConnection* cnc, GdaDataModel* recset) c_gda_connection_get_last_insert_id;
	GdaDataModel* function(GdaConnection* cnc, GdaCommand* cmd, GdaParameterList* params) c_gda_connection_execute_single_command;
	gint function(GdaConnection* cnc, GdaCommand* cmd, GdaParameterList* params) c_gda_connection_execute_non_query;
	gboolean function(GdaConnection* cnc, GdaTransaction* xaction) c_gda_connection_begin_transaction;
	gboolean function(GdaConnection* cnc, GdaTransaction* xaction) c_gda_connection_commit_transaction;
	gboolean function(GdaConnection* cnc, GdaTransaction* xaction) c_gda_connection_rollback_transaction;
	gboolean function(GdaConnection* cnc, GdaBlob* blob) c_gda_connection_create_blob;
	GList* function(GdaConnection* cnc) c_gda_connection_get_errors;
	gboolean function(GdaConnection* cnc, GdaConnectionFeature feature) c_gda_connection_supports;
	GdaDataModel* function(GdaConnection* cnc, GdaConnectionSchema schema, GdaParameterList* params) c_gda_connection_get_schema;

	// gda.DataModelArray

	GdaDataModel* function(gint cols) c_gda_data_model_array_new;
	void function(GdaDataModelArray* model, gint cols) c_gda_data_model_array_set_n_columns;
	void function(GdaDataModelArray* model) c_gda_data_model_array_clear;

	// gda.DataModelHash

	GdaDataModel* function(gint cols) c_gda_data_model_hash_new;
	GdaValue* function(GdaDataModel* model, gint col, gint row) c_gda_data_model_hash_get_value_at;
	void function(GdaDataModelHash* model) c_gda_data_model_hash_clear;
	void function(GdaDataModelHash* model, gint cols) c_gda_data_model_hash_set_n_columns;
	void function(GdaDataModelHash* model, gint rownum, GdaRow* row) c_gda_data_model_hash_insert_row;
	GdaRow* function(GdaDataModel* model, gint row) c_gda_data_model_hash_get_row;

	// gda.DataModelList

	GdaDataModel* function() c_gda_data_model_list_new;
	GdaDataModel* function(GList* list) c_gda_data_model_list_new_from_string_list;
	GdaRow* function(GdaDataModelList* model, GdaValue* value) c_gda_data_model_list_append_value;

	// gda.DataModel

	void function(GdaDataModel* model) c_gda_data_model_changed;
	void function(GdaDataModel* model, gint row) c_gda_data_model_row_inserted;
	void function(GdaDataModel* model, gint row) c_gda_data_model_row_updated;
	void function(GdaDataModel* model, gint row) c_gda_data_model_row_removed;
	void function(GdaDataModel* model, gint col) c_gda_data_model_column_inserted;
	void function(GdaDataModel* model, gint col) c_gda_data_model_column_updated;
	void function(GdaDataModel* model, gint col) c_gda_data_model_column_removed;
	void function(GdaDataModel* model) c_gda_data_model_freeze;
	void function(GdaDataModel* model) c_gda_data_model_thaw;
	gint function(GdaDataModel* model) c_gda_data_model_get_n_rows;
	gint function(GdaDataModel* model) c_gda_data_model_get_n_columns;
	GdaFieldAttributes* function(GdaDataModel* model, gint col) c_gda_data_model_describe_column;
	gchar* function(GdaDataModel* model, gint col) c_gda_data_model_get_column_title;
	void function(GdaDataModel* model, gint col, gchar* title) c_gda_data_model_set_column_title;
	gint function(GdaDataModel* model, gchar* title) c_gda_data_model_get_column_position;
	GdaRow* function(GdaDataModel* model, gint row) c_gda_data_model_get_row;
	GdaValue* function(GdaDataModel* model, gint col, gint row) c_gda_data_model_get_value_at;
	gboolean function(GdaDataModel* model) c_gda_data_model_is_updatable;
	GdaRow* function(GdaDataModel* model, GList* values) c_gda_data_model_append_row;
	gboolean function(GdaDataModel* model, GdaRow* row) c_gda_data_model_remove_row;
	gboolean function(GdaDataModel* model, GdaRow* row) c_gda_data_model_update_row;
	gboolean function(GdaDataModel* model, GdaFieldAttributes* attrs) c_gda_data_model_append_column;
	gboolean function(GdaDataModel* model, gint col, GdaFieldAttributes* attrs) c_gda_data_model_update_column;
	gboolean function(GdaDataModel* model, gint col) c_gda_data_model_remove_column;
	void function(GdaDataModel* model, GdaDataModelForeachFunc func, void* userData) c_gda_data_model_foreach;
	gboolean function(GdaDataModel* model) c_gda_data_model_has_changed;
	gboolean function(GdaDataModel* model) c_gda_data_model_begin_update;
	gboolean function(GdaDataModel* model) c_gda_data_model_cancel_update;
	gboolean function(GdaDataModel* model) c_gda_data_model_end_update;
	gchar* function(GdaDataModel* model) c_gda_data_model_to_comma_separated;
	gchar* function(GdaDataModel* model) c_gda_data_model_to_tab_separated;
	gchar* function(GdaDataModel* model, gboolean standalone) c_gda_data_model_to_xml;
	xmlNodePtr function(GdaDataModel* model, gchar* name) c_gda_data_model_to_xml_node;
	gboolean function(GdaDataModel* model, xmlNodePtr node) c_gda_data_model_add_data_from_xml_node;
	gchar* function(GdaDataModel* model) c_gda_data_model_get_command_text;
	void function(GdaDataModel* model, gchar* txt) c_gda_data_model_set_command_text;
	GdaCommandType function(GdaDataModel* model) c_gda_data_model_get_command_type;
	void function(GdaDataModel* model, GdaCommandType type) c_gda_data_model_set_command_type;

	// gda.ErrorGda

	GdaError* function() c_gda_error_new;
	void function(GdaError* error) c_gda_error_free;
	GList* function(GList* errors) c_gda_error_list_copy;
	void function(GList* errors) c_gda_error_list_free;
	gchar* function(GdaError* error) c_gda_error_get_description;
	void function(GdaError* error, gchar* description) c_gda_error_set_description;
	glong function(GdaError* error) c_gda_error_get_number;
	void function(GdaError* error, glong number) c_gda_error_set_number;
	gchar* function(GdaError* error) c_gda_error_get_source;
	void function(GdaError* error, gchar* source) c_gda_error_set_source;
	gchar* function(GdaError* error) c_gda_error_get_sqlstate;
	void function(GdaError* error, gchar* sqlstate) c_gda_error_set_sqlstate;

	// gda.Export

	GdaExport* function(GdaConnection* cnc) c_gda_export_new;
	GList* function(GdaExport* exp) c_gda_export_get_tables;
	GList* function(GdaExport* exp) c_gda_export_get_selected_tables;
	void function(GdaExport* exp, gchar* table) c_gda_export_select_table;
	void function(GdaExport* exp, GList* list) c_gda_export_select_table_list;
	void function(GdaExport* exp, gchar* table) c_gda_export_unselect_table;
	void function(GdaExport* exp, GdaExportFlags flags) c_gda_export_run;
	void function(GdaExport* exp) c_gda_export_stop;
	GdaConnection* function(GdaExport* exp) c_gda_export_get_connection;
	void function(GdaExport* exp, GdaConnection* cnc) c_gda_export_set_connection;

	// gda.FieldAttributes

	GType function() c_gda_field_attributes_get_type;
	GdaFieldAttributes* function() c_gda_field_attributes_new;
	GdaFieldAttributes* function(GdaFieldAttributes* fa) c_gda_field_attributes_copy;
	void function(GdaFieldAttributes* fa) c_gda_field_attributes_free;
	gboolean function(GdaFieldAttributes* lhs, GdaFieldAttributes* rhs) c_gda_field_attributes_equal;
	glong function(GdaFieldAttributes* fa) c_gda_field_attributes_get_defined_size;
	void function(GdaFieldAttributes* fa, glong size) c_gda_field_attributes_set_defined_size;
	gchar* function(GdaFieldAttributes* fa) c_gda_field_attributes_get_name;
	void function(GdaFieldAttributes* fa, gchar* name) c_gda_field_attributes_set_name;
	gchar* function(GdaFieldAttributes* fa) c_gda_field_attributes_get_table;
	void function(GdaFieldAttributes* fa, gchar* table) c_gda_field_attributes_set_table;
	gchar* function(GdaFieldAttributes* fa) c_gda_field_attributes_get_caption;
	void function(GdaFieldAttributes* fa, gchar* caption) c_gda_field_attributes_set_caption;
	glong function(GdaFieldAttributes* fa) c_gda_field_attributes_get_scale;
	void function(GdaFieldAttributes* fa, glong scale) c_gda_field_attributes_set_scale;
	GdaValueType function(GdaFieldAttributes* fa) c_gda_field_attributes_get_gdatype;
	void function(GdaFieldAttributes* fa, GdaValueType type) c_gda_field_attributes_set_gdatype;
	gboolean function(GdaFieldAttributes* fa) c_gda_field_attributes_get_allow_null;
	void function(GdaFieldAttributes* fa, gboolean allow) c_gda_field_attributes_set_allow_null;
	gboolean function(GdaFieldAttributes* fa) c_gda_field_attributes_get_primary_key;
	void function(GdaFieldAttributes* fa, gboolean pk) c_gda_field_attributes_set_primary_key;
	gboolean function(GdaFieldAttributes* fa) c_gda_field_attributes_get_unique_key;
	void function(GdaFieldAttributes* fa, gboolean uk) c_gda_field_attributes_set_unique_key;
	gchar* function(GdaFieldAttributes* fa) c_gda_field_attributes_get_references;
	void function(GdaFieldAttributes* fa, gchar* doref) c_gda_field_attributes_set_references;
	gboolean function(GdaFieldAttributes* fa) c_gda_field_attributes_get_auto_increment;
	void function(GdaFieldAttributes* fa, gboolean isAuto) c_gda_field_attributes_set_auto_increment;
	gint function(GdaFieldAttributes* fa) c_gda_field_attributes_get_position;
	void function(GdaFieldAttributes* fa, gint position) c_gda_field_attributes_set_position;
	GdaValue* function(GdaFieldAttributes* fa) c_gda_field_attributes_get_default_value;
	void function(GdaFieldAttributes* fa, GdaValue* defaultValue) c_gda_field_attributes_set_default_value;

	// gda.Log

	void function() c_gda_log_enable;
	void function() c_gda_log_disable;
	gboolean function() c_gda_log_is_enabled;
	void function(gchar* format, ... ) c_gda_log_message;
	void function(gchar* format, ... ) c_gda_log_error;

	// gda.Parameter

	GType function() c_gda_parameter_get_type;
	GdaParameter* function(gchar* name, GdaValue* value) c_gda_parameter_new_from_value;
	GdaParameter* function(gchar* name, gboolean value) c_gda_parameter_new_boolean;
	GdaParameter* function(gchar* name, gdouble value) c_gda_parameter_new_double;
	GdaParameter* function(gchar* name, GObject* value) c_gda_parameter_new_gobject;
	GdaParameter* function(gchar* name, gchar* value) c_gda_parameter_new_string;
	GdaParameter* function(GdaParameter* param) c_gda_parameter_copy;
	void function(GdaParameter* param) c_gda_parameter_free;
	gchar* function(GdaParameter* param) c_gda_parameter_get_name;
	void function(GdaParameter* param, gchar* name) c_gda_parameter_set_name;
	GdaValue* function(GdaParameter* param) c_gda_parameter_get_value;
	void function(GdaParameter* param, GdaValue* value) c_gda_parameter_set_value;

	// gda.ParameterList

	GType function() c_gda_parameter_list_get_type;
	GdaParameterList* function() c_gda_parameter_list_new;
	void function(GdaParameterList* plist) c_gda_parameter_list_free;
	GdaParameterList* function(GdaParameterList* plist) c_gda_parameter_list_copy;
	void function(GdaParameterList* plist, GdaParameter* param) c_gda_parameter_list_add_parameter;
	GList* function(GdaParameterList* plist) c_gda_parameter_list_get_names;
	GdaParameter* function(GdaParameterList* plist, gchar* name) c_gda_parameter_list_find;
	void function(GdaParameterList* plist) c_gda_parameter_list_clear;
	guint function(GdaParameterList* plist) c_gda_parameter_list_get_length;

	// gda.QuarkList

	GType function() c_gda_quark_list_get_type;
	GdaQuarkList* function() c_gda_quark_list_new;
	GdaQuarkList* function(gchar* string) c_gda_quark_list_new_from_string;
	GdaQuarkList* function(GdaQuarkList* qlist) c_gda_quark_list_copy;
	void function(GdaQuarkList* qlist) c_gda_quark_list_free;
	void function(GdaQuarkList* qlist, gchar* string, gboolean cleanup) c_gda_quark_list_add_from_string;
	gchar* function(GdaQuarkList* qlist, gchar* name) c_gda_quark_list_find;
	void function(GdaQuarkList* qlist, gchar* name) c_gda_quark_list_remove;
	void function(GdaQuarkList* qlist) c_gda_quark_list_clear;

	// gda.Row

	GType function() c_gda_row_get_type;
	GdaRow* function(GdaDataModel* model, gint count) c_gda_row_new;
	GdaRow* function(GdaDataModel* model, GList* values) c_gda_row_new_from_list;
	GdaRow* function(GdaRow* row) c_gda_row_copy;
	void function(GdaRow* row) c_gda_row_free;
	GdaDataModel* function(GdaRow* row) c_gda_row_get_model;
	gint function(GdaRow* row) c_gda_row_get_number;
	void function(GdaRow* row, gint number) c_gda_row_set_number;
	gchar* function(GdaRow* row) c_gda_row_get_id;
	void function(GdaRow* row, gchar* id) c_gda_row_set_id;
	GdaValue* function(GdaRow* row, gint num) c_gda_row_get_value;
	gint function(GdaRow* row) c_gda_row_get_length;

	// gda.Select

	GdaDataModel* function() c_gda_select_new;
	void function(GdaSelect* sel, gchar* name, GdaDataModel* source) c_gda_select_add_source;
	void function(GdaSelect* sel, gchar* sql) c_gda_select_set_sql;
	gboolean function(GdaSelect* sel) c_gda_select_run;

	// gda.Table

	GdaTable* function(gchar* name) c_gda_table_new;
	GdaTable* function(gchar* name, GdaDataModel* model, gboolean addData) c_gda_table_new_from_model;
	gchar* function(GdaTable* table) c_gda_table_get_name;
	void function(GdaTable* table, gchar* name) c_gda_table_set_name;
	void function(GdaTable* table, GdaFieldAttributes* fa) c_gda_table_add_field;
	void function(GdaTable* table, GdaDataModel* model) c_gda_table_add_data_from_model;

	// gda.Transaction

	GdaTransaction* function(gchar* name) c_gda_transaction_new;
	GdaTransactionIsolation function(GdaTransaction* xaction) c_gda_transaction_get_isolation_level;
	void function(GdaTransaction* xaction, GdaTransactionIsolation level) c_gda_transaction_set_isolation_level;
	gchar* function(GdaTransaction* xaction) c_gda_transaction_get_name;
	void function(GdaTransaction* xaction, gchar* name) c_gda_transaction_set_name;

	// gda.Value

	GType function() c_gda_value_get_gtype;
	GdaValue* function() c_gda_value_new_null;
	GdaValue* function(gint64 val) c_gda_value_new_bigint;
	GdaValue* function(guint64 val) c_gda_value_new_biguint;
	GdaValue* function(void* val, glong size) c_gda_value_new_binary;
	GdaValue* function(GdaBlob* val) c_gda_value_new_blob;
	GdaValue* function(gboolean val) c_gda_value_new_boolean;
	GdaValue* function(GdaDate* val) c_gda_value_new_date;
	GdaValue* function(gdouble val) c_gda_value_new_double;
	GdaValue* function(GdaGeometricPoint* val) c_gda_value_new_geometric_point;
	GdaValue* function(GObject* val) c_gda_value_new_gobject;
	GdaValue* function(gint val) c_gda_value_new_integer;
	GdaValue* function(GdaValueList* val) c_gda_value_new_list;
	GdaValue* function(GdaMoney* val) c_gda_value_new_money;
	GdaValue* function(GdaNumeric* val) c_gda_value_new_numeric;
	GdaValue* function(gfloat val) c_gda_value_new_single;
	GdaValue* function(gshort val) c_gda_value_new_smallint;
	GdaValue* function(gushort val) c_gda_value_new_smalluint;
	GdaValue* function(gchar* val) c_gda_value_new_string;
	GdaValue* function(GdaTime* val) c_gda_value_new_time;
	GdaValue* function(GdaTimestamp* val) c_gda_value_new_timestamp;
	GdaValue* function(time_t val) c_gda_value_new_timestamp_from_timet;
	GdaValue* function(gchar val) c_gda_value_new_tinyint;
	GdaValue* function(guchar val) c_gda_value_new_tinyuint;
	GdaValue* function(GdaValueType val) c_gda_value_new_type;
	GdaValue* function(guint val) c_gda_value_new_uinteger;
	GdaValue* function(gchar* asString, GdaValueType type) c_gda_value_new_from_string;
	GdaValue* function(xmlNodePtr node) c_gda_value_new_from_xml;
	void function(GdaValue* value) c_gda_value_free;
	GdaValueType function(GdaValue* value) c_gda_value_get_type;
	gboolean function(GdaValue* value) c_gda_value_is_null;
	gboolean function(GdaValue* value) c_gda_value_is_number;
	GdaValue* function(GdaValue* value) c_gda_value_copy;
	gint64 function(GdaValue* value) c_gda_value_get_bigint;
	void function(GdaValue* value, gint64 val) c_gda_value_set_bigint;
	guint64 function(GdaValue* value) c_gda_value_get_biguint;
	void function(GdaValue* value, guint64 val) c_gda_value_set_biguint;
	gpointer function(GdaValue* value, glong* size) c_gda_value_get_binary;
	void function(GdaValue* value, void* val, glong size) c_gda_value_set_binary;
	GdaBlob* function(GdaValue* value) c_gda_value_get_blob;
	void function(GdaValue* value, GdaBlob* val) c_gda_value_set_blob;
	gboolean function(GdaValue* value) c_gda_value_get_boolean;
	void function(GdaValue* value, gboolean val) c_gda_value_set_boolean;
	GdaDate* function(GdaValue* value) c_gda_value_get_date;
	void function(GdaValue* value, GdaDate* val) c_gda_value_set_date;
	gdouble function(GdaValue* value) c_gda_value_get_double;
	void function(GdaValue* value, gdouble val) c_gda_value_set_double;
	GdaGeometricPoint* function(GdaValue* value) c_gda_value_get_geometric_point;
	void function(GdaValue* value, GdaGeometricPoint* val) c_gda_value_set_geometric_point;
	GObject* function(GdaValue* value) c_gda_value_get_gobject;
	void function(GdaValue* value, GObject* val) c_gda_value_set_gobject;
	gint function(GdaValue* value) c_gda_value_get_integer;
	void function(GdaValue* value, gint val) c_gda_value_set_integer;
	GdaValueList* function(GdaValue* value) c_gda_value_get_list;
	void function(GdaValue* value, GdaValueList* val) c_gda_value_set_list;
	void function(GdaValue* value) c_gda_value_set_null;
	GdaMoney* function(GdaValue* value) c_gda_value_get_money;
	void function(GdaValue* value, GdaMoney* val) c_gda_value_set_money;
	GdaNumeric* function(GdaValue* value) c_gda_value_get_numeric;
	void function(GdaValue* value, GdaNumeric* val) c_gda_value_set_numeric;
	gfloat function(GdaValue* value) c_gda_value_get_single;
	void function(GdaValue* value, gfloat val) c_gda_value_set_single;
	gshort function(GdaValue* value) c_gda_value_get_smallint;
	void function(GdaValue* value, gshort val) c_gda_value_set_smallint;
	gushort function(GdaValue* value) c_gda_value_get_smalluint;
	void function(GdaValue* value, gushort val) c_gda_value_set_smalluint;
	gchar* function(GdaValue* value) c_gda_value_get_string;
	void function(GdaValue* value, gchar* val) c_gda_value_set_string;
	GdaTime* function(GdaValue* value) c_gda_value_get_time;
	void function(GdaValue* value, GdaTime* val) c_gda_value_set_time;
	GdaTimestamp* function(GdaValue* value) c_gda_value_get_timestamp;
	void function(GdaValue* value, GdaTimestamp* val) c_gda_value_set_timestamp;
	gchar function(GdaValue* value) c_gda_value_get_tinyint;
	void function(GdaValue* value, gchar val) c_gda_value_set_tinyint;
	guchar function(GdaValue* value) c_gda_value_get_tinyuint;
	void function(GdaValue* value, guchar val) c_gda_value_set_tinyuint;
	guint function(GdaValue* value) c_gda_value_get_uinteger;
	void function(GdaValue* value, guint val) c_gda_value_set_uinteger;
	GdaValueType function(GdaValue* value) c_gda_value_get_vtype;
	void function(GdaValue* value, GdaValueType type) c_gda_value_set_vtype;
	gboolean function(GdaValue* value, gchar* asString, GdaValueType type) c_gda_value_set_from_string;
	gboolean function(GdaValue* value, GdaValue* from) c_gda_value_set_from_value;
	gint function(GdaValue* value1, GdaValue* value2) c_gda_value_compare;
	gchar* function(GdaValue* value) c_gda_value_stringify;
	xmlNodePtr function(GdaValue* value) c_gda_value_to_xml;
}");

// gda.Gda

alias c_gda_init  gda_init;
alias c_gda_main_run  gda_main_run;
alias c_gda_main_quit  gda_main_quit;
alias c_gda_type_to_string  gda_type_to_string;
alias c_gda_type_from_string  gda_type_from_string;
alias c_gda_string_hash_to_list  gda_string_hash_to_list;
alias c_gda_sql_replace_placeholders  gda_sql_replace_placeholders;
alias c_gda_file_load  gda_file_load;
alias c_gda_file_save  gda_file_save;

// gda.Blob

alias c_gda_blob_open  gda_blob_open;
alias c_gda_blob_read  gda_blob_read;
alias c_gda_blob_write  gda_blob_write;
alias c_gda_blob_lseek  gda_blob_lseek;
alias c_gda_blob_close  gda_blob_close;
alias c_gda_blob_remove  gda_blob_remove;
alias c_gda_blob_free_data  gda_blob_free_data;

// gda.Client

alias c_gda_client_new  gda_client_new;
alias c_gda_client_open_connection  gda_client_open_connection;
alias c_gda_client_open_connection_from_string  gda_client_open_connection_from_string;
alias c_gda_client_get_connection_list  gda_client_get_connection_list;
alias c_gda_client_find_connection  gda_client_find_connection;
alias c_gda_client_close_all_connections  gda_client_close_all_connections;
alias c_gda_client_notify_event  gda_client_notify_event;
alias c_gda_client_notify_error_event  gda_client_notify_error_event;
alias c_gda_client_notify_connection_opened_event  gda_client_notify_connection_opened_event;
alias c_gda_client_notify_connection_closed_event  gda_client_notify_connection_closed_event;
alias c_gda_client_notify_transaction_started_event  gda_client_notify_transaction_started_event;
alias c_gda_client_notify_transaction_committed_event  gda_client_notify_transaction_committed_event;
alias c_gda_client_notify_transaction_cancelled_event  gda_client_notify_transaction_cancelled_event;
alias c_gda_client_begin_transaction  gda_client_begin_transaction;
alias c_gda_client_commit_transaction  gda_client_commit_transaction;
alias c_gda_client_rollback_transaction  gda_client_rollback_transaction;

// gda.Command

alias c_gda_command_get_type  gda_command_get_type;
alias c_gda_command_new  gda_command_new;
alias c_gda_command_free  gda_command_free;
alias c_gda_command_copy  gda_command_copy;
alias c_gda_command_get_text  gda_command_get_text;
alias c_gda_command_set_text  gda_command_set_text;
alias c_gda_command_get_command_type  gda_command_get_command_type;
alias c_gda_command_set_command_type  gda_command_set_command_type;
alias c_gda_command_get_options  gda_command_get_options;
alias c_gda_command_set_options  gda_command_set_options;
alias c_gda_command_get_transaction  gda_command_get_transaction;
alias c_gda_command_set_transaction  gda_command_set_transaction;

// gda.Config

alias c_gda_config_get_string  gda_config_get_string;
alias c_gda_config_get_int  gda_config_get_int;
alias c_gda_config_get_float  gda_config_get_float;
alias c_gda_config_get_boolean  gda_config_get_boolean;
alias c_gda_config_set_string  gda_config_set_string;
alias c_gda_config_set_int  gda_config_set_int;
alias c_gda_config_set_float  gda_config_set_float;
alias c_gda_config_set_boolean  gda_config_set_boolean;
alias c_gda_config_remove_section  gda_config_remove_section;
alias c_gda_config_remove_key  gda_config_remove_key;
alias c_gda_config_has_section  gda_config_has_section;
alias c_gda_config_has_key  gda_config_has_key;
alias c_gda_config_list_sections  gda_config_list_sections;
alias c_gda_config_list_keys  gda_config_list_keys;
alias c_gda_config_get_type  gda_config_get_type;
alias c_gda_config_free_list  gda_config_free_list;
alias c_gda_config_add_listener  gda_config_add_listener;
alias c_gda_config_remove_listener  gda_config_remove_listener;
alias c_gda_config_get_provider_list  gda_config_get_provider_list;
alias c_gda_config_free_provider_list  gda_config_free_provider_list;
alias c_gda_config_get_provider_by_name  gda_config_get_provider_by_name;
alias c_gda_config_get_provider_model  gda_config_get_provider_model;
alias c_gda_config_copy_data_source_info  gda_config_copy_data_source_info;
alias c_gda_config_free_data_source_info  gda_config_free_data_source_info;
alias c_gda_config_get_data_source_list  gda_config_get_data_source_list;
alias c_gda_config_find_data_source  gda_config_find_data_source;
alias c_gda_config_free_data_source_list  gda_config_free_data_source_list;
alias c_gda_config_get_data_source_model  gda_config_get_data_source_model;
alias c_gda_config_save_data_source  gda_config_save_data_source;
alias c_gda_config_save_data_source_info  gda_config_save_data_source_info;
alias c_gda_config_remove_data_source  gda_config_remove_data_source;

// gda.ProviderInfo

alias c_gda_provider_info_get_type  gda_provider_info_get_type;
alias c_gda_provider_info_copy  gda_provider_info_copy;
alias c_gda_provider_info_free  gda_provider_info_free;

// gda.DataSourceInfo

alias c_gda_data_source_info_get_type  gda_data_source_info_get_type;

// gda.Connection

alias c_gda_connection_new  gda_connection_new;
alias c_gda_connection_close  gda_connection_close;
alias c_gda_connection_is_open  gda_connection_is_open;
alias c_gda_connection_get_client  gda_connection_get_client;
alias c_gda_connection_set_client  gda_connection_set_client;
alias c_gda_connection_get_options  gda_connection_get_options;
alias c_gda_connection_get_server_version  gda_connection_get_server_version;
alias c_gda_connection_get_database  gda_connection_get_database;
alias c_gda_connection_get_dsn  gda_connection_get_dsn;
alias c_gda_connection_get_cnc_string  gda_connection_get_cnc_string;
alias c_gda_connection_get_provider  gda_connection_get_provider;
alias c_gda_connection_get_username  gda_connection_get_username;
alias c_gda_connection_get_password  gda_connection_get_password;
alias c_gda_connection_add_error  gda_connection_add_error;
alias c_gda_connection_add_error_string  gda_connection_add_error_string;
alias c_gda_connection_add_error_list  gda_connection_add_error_list;
alias c_gda_connection_change_database  gda_connection_change_database;
alias c_gda_connection_create_database  gda_connection_create_database;
alias c_gda_connection_drop_database  gda_connection_drop_database;
alias c_gda_connection_create_table  gda_connection_create_table;
alias c_gda_connection_drop_table  gda_connection_drop_table;
alias c_gda_connection_execute_command  gda_connection_execute_command;
alias c_gda_connection_get_last_insert_id  gda_connection_get_last_insert_id;
alias c_gda_connection_execute_single_command  gda_connection_execute_single_command;
alias c_gda_connection_execute_non_query  gda_connection_execute_non_query;
alias c_gda_connection_begin_transaction  gda_connection_begin_transaction;
alias c_gda_connection_commit_transaction  gda_connection_commit_transaction;
alias c_gda_connection_rollback_transaction  gda_connection_rollback_transaction;
alias c_gda_connection_create_blob  gda_connection_create_blob;
alias c_gda_connection_get_errors  gda_connection_get_errors;
alias c_gda_connection_supports  gda_connection_supports;
alias c_gda_connection_get_schema  gda_connection_get_schema;

// gda.DataModelArray

alias c_gda_data_model_array_new  gda_data_model_array_new;
alias c_gda_data_model_array_set_n_columns  gda_data_model_array_set_n_columns;
alias c_gda_data_model_array_clear  gda_data_model_array_clear;

// gda.DataModelHash

alias c_gda_data_model_hash_new  gda_data_model_hash_new;
alias c_gda_data_model_hash_get_value_at  gda_data_model_hash_get_value_at;
alias c_gda_data_model_hash_clear  gda_data_model_hash_clear;
alias c_gda_data_model_hash_set_n_columns  gda_data_model_hash_set_n_columns;
alias c_gda_data_model_hash_insert_row  gda_data_model_hash_insert_row;
alias c_gda_data_model_hash_get_row  gda_data_model_hash_get_row;

// gda.DataModelList

alias c_gda_data_model_list_new  gda_data_model_list_new;
alias c_gda_data_model_list_new_from_string_list  gda_data_model_list_new_from_string_list;
alias c_gda_data_model_list_append_value  gda_data_model_list_append_value;

// gda.DataModel

alias c_gda_data_model_changed  gda_data_model_changed;
alias c_gda_data_model_row_inserted  gda_data_model_row_inserted;
alias c_gda_data_model_row_updated  gda_data_model_row_updated;
alias c_gda_data_model_row_removed  gda_data_model_row_removed;
alias c_gda_data_model_column_inserted  gda_data_model_column_inserted;
alias c_gda_data_model_column_updated  gda_data_model_column_updated;
alias c_gda_data_model_column_removed  gda_data_model_column_removed;
alias c_gda_data_model_freeze  gda_data_model_freeze;
alias c_gda_data_model_thaw  gda_data_model_thaw;
alias c_gda_data_model_get_n_rows  gda_data_model_get_n_rows;
alias c_gda_data_model_get_n_columns  gda_data_model_get_n_columns;
alias c_gda_data_model_describe_column  gda_data_model_describe_column;
alias c_gda_data_model_get_column_title  gda_data_model_get_column_title;
alias c_gda_data_model_set_column_title  gda_data_model_set_column_title;
alias c_gda_data_model_get_column_position  gda_data_model_get_column_position;
alias c_gda_data_model_get_row  gda_data_model_get_row;
alias c_gda_data_model_get_value_at  gda_data_model_get_value_at;
alias c_gda_data_model_is_updatable  gda_data_model_is_updatable;
alias c_gda_data_model_append_row  gda_data_model_append_row;
alias c_gda_data_model_remove_row  gda_data_model_remove_row;
alias c_gda_data_model_update_row  gda_data_model_update_row;
alias c_gda_data_model_append_column  gda_data_model_append_column;
alias c_gda_data_model_update_column  gda_data_model_update_column;
alias c_gda_data_model_remove_column  gda_data_model_remove_column;
alias c_gda_data_model_foreach  gda_data_model_foreach;
alias c_gda_data_model_has_changed  gda_data_model_has_changed;
alias c_gda_data_model_begin_update  gda_data_model_begin_update;
alias c_gda_data_model_cancel_update  gda_data_model_cancel_update;
alias c_gda_data_model_end_update  gda_data_model_end_update;
alias c_gda_data_model_to_comma_separated  gda_data_model_to_comma_separated;
alias c_gda_data_model_to_tab_separated  gda_data_model_to_tab_separated;
alias c_gda_data_model_to_xml  gda_data_model_to_xml;
alias c_gda_data_model_to_xml_node  gda_data_model_to_xml_node;
alias c_gda_data_model_add_data_from_xml_node  gda_data_model_add_data_from_xml_node;
alias c_gda_data_model_get_command_text  gda_data_model_get_command_text;
alias c_gda_data_model_set_command_text  gda_data_model_set_command_text;
alias c_gda_data_model_get_command_type  gda_data_model_get_command_type;
alias c_gda_data_model_set_command_type  gda_data_model_set_command_type;

// gda.ErrorGda

alias c_gda_error_new  gda_error_new;
alias c_gda_error_free  gda_error_free;
alias c_gda_error_list_copy  gda_error_list_copy;
alias c_gda_error_list_free  gda_error_list_free;
alias c_gda_error_get_description  gda_error_get_description;
alias c_gda_error_set_description  gda_error_set_description;
alias c_gda_error_get_number  gda_error_get_number;
alias c_gda_error_set_number  gda_error_set_number;
alias c_gda_error_get_source  gda_error_get_source;
alias c_gda_error_set_source  gda_error_set_source;
alias c_gda_error_get_sqlstate  gda_error_get_sqlstate;
alias c_gda_error_set_sqlstate  gda_error_set_sqlstate;

// gda.Export

alias c_gda_export_new  gda_export_new;
alias c_gda_export_get_tables  gda_export_get_tables;
alias c_gda_export_get_selected_tables  gda_export_get_selected_tables;
alias c_gda_export_select_table  gda_export_select_table;
alias c_gda_export_select_table_list  gda_export_select_table_list;
alias c_gda_export_unselect_table  gda_export_unselect_table;
alias c_gda_export_run  gda_export_run;
alias c_gda_export_stop  gda_export_stop;
alias c_gda_export_get_connection  gda_export_get_connection;
alias c_gda_export_set_connection  gda_export_set_connection;

// gda.FieldAttributes

alias c_gda_field_attributes_get_type  gda_field_attributes_get_type;
alias c_gda_field_attributes_new  gda_field_attributes_new;
alias c_gda_field_attributes_copy  gda_field_attributes_copy;
alias c_gda_field_attributes_free  gda_field_attributes_free;
alias c_gda_field_attributes_equal  gda_field_attributes_equal;
alias c_gda_field_attributes_get_defined_size  gda_field_attributes_get_defined_size;
alias c_gda_field_attributes_set_defined_size  gda_field_attributes_set_defined_size;
alias c_gda_field_attributes_get_name  gda_field_attributes_get_name;
alias c_gda_field_attributes_set_name  gda_field_attributes_set_name;
alias c_gda_field_attributes_get_table  gda_field_attributes_get_table;
alias c_gda_field_attributes_set_table  gda_field_attributes_set_table;
alias c_gda_field_attributes_get_caption  gda_field_attributes_get_caption;
alias c_gda_field_attributes_set_caption  gda_field_attributes_set_caption;
alias c_gda_field_attributes_get_scale  gda_field_attributes_get_scale;
alias c_gda_field_attributes_set_scale  gda_field_attributes_set_scale;
alias c_gda_field_attributes_get_gdatype  gda_field_attributes_get_gdatype;
alias c_gda_field_attributes_set_gdatype  gda_field_attributes_set_gdatype;
alias c_gda_field_attributes_get_allow_null  gda_field_attributes_get_allow_null;
alias c_gda_field_attributes_set_allow_null  gda_field_attributes_set_allow_null;
alias c_gda_field_attributes_get_primary_key  gda_field_attributes_get_primary_key;
alias c_gda_field_attributes_set_primary_key  gda_field_attributes_set_primary_key;
alias c_gda_field_attributes_get_unique_key  gda_field_attributes_get_unique_key;
alias c_gda_field_attributes_set_unique_key  gda_field_attributes_set_unique_key;
alias c_gda_field_attributes_get_references  gda_field_attributes_get_references;
alias c_gda_field_attributes_set_references  gda_field_attributes_set_references;
alias c_gda_field_attributes_get_auto_increment  gda_field_attributes_get_auto_increment;
alias c_gda_field_attributes_set_auto_increment  gda_field_attributes_set_auto_increment;
alias c_gda_field_attributes_get_position  gda_field_attributes_get_position;
alias c_gda_field_attributes_set_position  gda_field_attributes_set_position;
alias c_gda_field_attributes_get_default_value  gda_field_attributes_get_default_value;
alias c_gda_field_attributes_set_default_value  gda_field_attributes_set_default_value;

// gda.Log

alias c_gda_log_enable  gda_log_enable;
alias c_gda_log_disable  gda_log_disable;
alias c_gda_log_is_enabled  gda_log_is_enabled;
alias c_gda_log_message  gda_log_message;
alias c_gda_log_error  gda_log_error;

// gda.Parameter

alias c_gda_parameter_get_type  gda_parameter_get_type;
alias c_gda_parameter_new_from_value  gda_parameter_new_from_value;
alias c_gda_parameter_new_boolean  gda_parameter_new_boolean;
alias c_gda_parameter_new_double  gda_parameter_new_double;
alias c_gda_parameter_new_gobject  gda_parameter_new_gobject;
alias c_gda_parameter_new_string  gda_parameter_new_string;
alias c_gda_parameter_copy  gda_parameter_copy;
alias c_gda_parameter_free  gda_parameter_free;
alias c_gda_parameter_get_name  gda_parameter_get_name;
alias c_gda_parameter_set_name  gda_parameter_set_name;
alias c_gda_parameter_get_value  gda_parameter_get_value;
alias c_gda_parameter_set_value  gda_parameter_set_value;

// gda.ParameterList

alias c_gda_parameter_list_get_type  gda_parameter_list_get_type;
alias c_gda_parameter_list_new  gda_parameter_list_new;
alias c_gda_parameter_list_free  gda_parameter_list_free;
alias c_gda_parameter_list_copy  gda_parameter_list_copy;
alias c_gda_parameter_list_add_parameter  gda_parameter_list_add_parameter;
alias c_gda_parameter_list_get_names  gda_parameter_list_get_names;
alias c_gda_parameter_list_find  gda_parameter_list_find;
alias c_gda_parameter_list_clear  gda_parameter_list_clear;
alias c_gda_parameter_list_get_length  gda_parameter_list_get_length;

// gda.QuarkList

alias c_gda_quark_list_get_type  gda_quark_list_get_type;
alias c_gda_quark_list_new  gda_quark_list_new;
alias c_gda_quark_list_new_from_string  gda_quark_list_new_from_string;
alias c_gda_quark_list_copy  gda_quark_list_copy;
alias c_gda_quark_list_free  gda_quark_list_free;
alias c_gda_quark_list_add_from_string  gda_quark_list_add_from_string;
alias c_gda_quark_list_find  gda_quark_list_find;
alias c_gda_quark_list_remove  gda_quark_list_remove;
alias c_gda_quark_list_clear  gda_quark_list_clear;

// gda.Row

alias c_gda_row_get_type  gda_row_get_type;
alias c_gda_row_new  gda_row_new;
alias c_gda_row_new_from_list  gda_row_new_from_list;
alias c_gda_row_copy  gda_row_copy;
alias c_gda_row_free  gda_row_free;
alias c_gda_row_get_model  gda_row_get_model;
alias c_gda_row_get_number  gda_row_get_number;
alias c_gda_row_set_number  gda_row_set_number;
alias c_gda_row_get_id  gda_row_get_id;
alias c_gda_row_set_id  gda_row_set_id;
alias c_gda_row_get_value  gda_row_get_value;
alias c_gda_row_get_length  gda_row_get_length;

// gda.Select

alias c_gda_select_new  gda_select_new;
alias c_gda_select_add_source  gda_select_add_source;
alias c_gda_select_set_sql  gda_select_set_sql;
alias c_gda_select_run  gda_select_run;

// gda.Table

alias c_gda_table_new  gda_table_new;
alias c_gda_table_new_from_model  gda_table_new_from_model;
alias c_gda_table_get_name  gda_table_get_name;
alias c_gda_table_set_name  gda_table_set_name;
alias c_gda_table_add_field  gda_table_add_field;
alias c_gda_table_add_data_from_model  gda_table_add_data_from_model;

// gda.Transaction

alias c_gda_transaction_new  gda_transaction_new;
alias c_gda_transaction_get_isolation_level  gda_transaction_get_isolation_level;
alias c_gda_transaction_set_isolation_level  gda_transaction_set_isolation_level;
alias c_gda_transaction_get_name  gda_transaction_get_name;
alias c_gda_transaction_set_name  gda_transaction_set_name;

// gda.Value

alias c_gda_value_get_gtype  gda_value_get_gtype;
alias c_gda_value_new_null  gda_value_new_null;
alias c_gda_value_new_bigint  gda_value_new_bigint;
alias c_gda_value_new_biguint  gda_value_new_biguint;
alias c_gda_value_new_binary  gda_value_new_binary;
alias c_gda_value_new_blob  gda_value_new_blob;
alias c_gda_value_new_boolean  gda_value_new_boolean;
alias c_gda_value_new_date  gda_value_new_date;
alias c_gda_value_new_double  gda_value_new_double;
alias c_gda_value_new_geometric_point  gda_value_new_geometric_point;
alias c_gda_value_new_gobject  gda_value_new_gobject;
alias c_gda_value_new_integer  gda_value_new_integer;
alias c_gda_value_new_list  gda_value_new_list;
alias c_gda_value_new_money  gda_value_new_money;
alias c_gda_value_new_numeric  gda_value_new_numeric;
alias c_gda_value_new_single  gda_value_new_single;
alias c_gda_value_new_smallint  gda_value_new_smallint;
alias c_gda_value_new_smalluint  gda_value_new_smalluint;
alias c_gda_value_new_string  gda_value_new_string;
alias c_gda_value_new_time  gda_value_new_time;
alias c_gda_value_new_timestamp  gda_value_new_timestamp;
alias c_gda_value_new_timestamp_from_timet  gda_value_new_timestamp_from_timet;
alias c_gda_value_new_tinyint  gda_value_new_tinyint;
alias c_gda_value_new_tinyuint  gda_value_new_tinyuint;
alias c_gda_value_new_type  gda_value_new_type;
alias c_gda_value_new_uinteger  gda_value_new_uinteger;
alias c_gda_value_new_from_string  gda_value_new_from_string;
alias c_gda_value_new_from_xml  gda_value_new_from_xml;
alias c_gda_value_free  gda_value_free;
alias c_gda_value_get_type  gda_value_get_type;
alias c_gda_value_is_null  gda_value_is_null;
alias c_gda_value_is_number  gda_value_is_number;
alias c_gda_value_copy  gda_value_copy;
alias c_gda_value_get_bigint  gda_value_get_bigint;
alias c_gda_value_set_bigint  gda_value_set_bigint;
alias c_gda_value_get_biguint  gda_value_get_biguint;
alias c_gda_value_set_biguint  gda_value_set_biguint;
alias c_gda_value_get_binary  gda_value_get_binary;
alias c_gda_value_set_binary  gda_value_set_binary;
alias c_gda_value_get_blob  gda_value_get_blob;
alias c_gda_value_set_blob  gda_value_set_blob;
alias c_gda_value_get_boolean  gda_value_get_boolean;
alias c_gda_value_set_boolean  gda_value_set_boolean;
alias c_gda_value_get_date  gda_value_get_date;
alias c_gda_value_set_date  gda_value_set_date;
alias c_gda_value_get_double  gda_value_get_double;
alias c_gda_value_set_double  gda_value_set_double;
alias c_gda_value_get_geometric_point  gda_value_get_geometric_point;
alias c_gda_value_set_geometric_point  gda_value_set_geometric_point;
alias c_gda_value_get_gobject  gda_value_get_gobject;
alias c_gda_value_set_gobject  gda_value_set_gobject;
alias c_gda_value_get_integer  gda_value_get_integer;
alias c_gda_value_set_integer  gda_value_set_integer;
alias c_gda_value_get_list  gda_value_get_list;
alias c_gda_value_set_list  gda_value_set_list;
alias c_gda_value_set_null  gda_value_set_null;
alias c_gda_value_get_money  gda_value_get_money;
alias c_gda_value_set_money  gda_value_set_money;
alias c_gda_value_get_numeric  gda_value_get_numeric;
alias c_gda_value_set_numeric  gda_value_set_numeric;
alias c_gda_value_get_single  gda_value_get_single;
alias c_gda_value_set_single  gda_value_set_single;
alias c_gda_value_get_smallint  gda_value_get_smallint;
alias c_gda_value_set_smallint  gda_value_set_smallint;
alias c_gda_value_get_smalluint  gda_value_get_smalluint;
alias c_gda_value_set_smalluint  gda_value_set_smalluint;
alias c_gda_value_get_string  gda_value_get_string;
alias c_gda_value_set_string  gda_value_set_string;
alias c_gda_value_get_time  gda_value_get_time;
alias c_gda_value_set_time  gda_value_set_time;
alias c_gda_value_get_timestamp  gda_value_get_timestamp;
alias c_gda_value_set_timestamp  gda_value_set_timestamp;
alias c_gda_value_get_tinyint  gda_value_get_tinyint;
alias c_gda_value_set_tinyint  gda_value_set_tinyint;
alias c_gda_value_get_tinyuint  gda_value_get_tinyuint;
alias c_gda_value_set_tinyuint  gda_value_set_tinyuint;
alias c_gda_value_get_uinteger  gda_value_get_uinteger;
alias c_gda_value_set_uinteger  gda_value_set_uinteger;
alias c_gda_value_get_vtype  gda_value_get_vtype;
alias c_gda_value_set_vtype  gda_value_set_vtype;
alias c_gda_value_set_from_string  gda_value_set_from_string;
alias c_gda_value_set_from_value  gda_value_set_from_value;
alias c_gda_value_compare  gda_value_compare;
alias c_gda_value_stringify  gda_value_stringify;
alias c_gda_value_to_xml  gda_value_to_xml;
