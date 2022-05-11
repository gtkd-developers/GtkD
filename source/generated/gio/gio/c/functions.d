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


module gio.c.functions;

import std.stdio;
import gio.c.types;
import linker.Loader;

version (Windows)
	static immutable LIBRARY_GIO = ["libgio-2.0-0.dll;gio-2.0-0.dll;gio-2.dll"];
else version (OSX)
	static immutable LIBRARY_GIO = ["libgio-2.0.0.dylib"];
else
	static immutable LIBRARY_GIO = ["libgio-2.0.so.0"];

shared static this()
{
	// gio.Action

	Linker.link(g_action_get_type, "g_action_get_type", LIBRARY_GIO);
	Linker.link(g_action_name_is_valid, "g_action_name_is_valid", LIBRARY_GIO);
	Linker.link(g_action_parse_detailed_name, "g_action_parse_detailed_name", LIBRARY_GIO);
	Linker.link(g_action_print_detailed_name, "g_action_print_detailed_name", LIBRARY_GIO);
	Linker.link(g_action_activate, "g_action_activate", LIBRARY_GIO);
	Linker.link(g_action_change_state, "g_action_change_state", LIBRARY_GIO);
	Linker.link(g_action_get_enabled, "g_action_get_enabled", LIBRARY_GIO);
	Linker.link(g_action_get_name, "g_action_get_name", LIBRARY_GIO);
	Linker.link(g_action_get_parameter_type, "g_action_get_parameter_type", LIBRARY_GIO);
	Linker.link(g_action_get_state, "g_action_get_state", LIBRARY_GIO);
	Linker.link(g_action_get_state_hint, "g_action_get_state_hint", LIBRARY_GIO);
	Linker.link(g_action_get_state_type, "g_action_get_state_type", LIBRARY_GIO);

	// gio.ActionGroup

	Linker.link(g_action_group_get_type, "g_action_group_get_type", LIBRARY_GIO);
	Linker.link(g_action_group_action_added, "g_action_group_action_added", LIBRARY_GIO);
	Linker.link(g_action_group_action_enabled_changed, "g_action_group_action_enabled_changed", LIBRARY_GIO);
	Linker.link(g_action_group_action_removed, "g_action_group_action_removed", LIBRARY_GIO);
	Linker.link(g_action_group_action_state_changed, "g_action_group_action_state_changed", LIBRARY_GIO);
	Linker.link(g_action_group_activate_action, "g_action_group_activate_action", LIBRARY_GIO);
	Linker.link(g_action_group_change_action_state, "g_action_group_change_action_state", LIBRARY_GIO);
	Linker.link(g_action_group_get_action_enabled, "g_action_group_get_action_enabled", LIBRARY_GIO);
	Linker.link(g_action_group_get_action_parameter_type, "g_action_group_get_action_parameter_type", LIBRARY_GIO);
	Linker.link(g_action_group_get_action_state, "g_action_group_get_action_state", LIBRARY_GIO);
	Linker.link(g_action_group_get_action_state_hint, "g_action_group_get_action_state_hint", LIBRARY_GIO);
	Linker.link(g_action_group_get_action_state_type, "g_action_group_get_action_state_type", LIBRARY_GIO);
	Linker.link(g_action_group_has_action, "g_action_group_has_action", LIBRARY_GIO);
	Linker.link(g_action_group_list_actions, "g_action_group_list_actions", LIBRARY_GIO);
	Linker.link(g_action_group_query_action, "g_action_group_query_action", LIBRARY_GIO);

	// gio.ActionMap

	Linker.link(g_action_map_get_type, "g_action_map_get_type", LIBRARY_GIO);
	Linker.link(g_action_map_add_action, "g_action_map_add_action", LIBRARY_GIO);
	Linker.link(g_action_map_add_action_entries, "g_action_map_add_action_entries", LIBRARY_GIO);
	Linker.link(g_action_map_lookup_action, "g_action_map_lookup_action", LIBRARY_GIO);
	Linker.link(g_action_map_remove_action, "g_action_map_remove_action", LIBRARY_GIO);

	// gio.AppInfo

	Linker.link(g_app_info_get_type, "g_app_info_get_type", LIBRARY_GIO);
	Linker.link(g_app_info_create_from_commandline, "g_app_info_create_from_commandline", LIBRARY_GIO);
	Linker.link(g_app_info_get_all, "g_app_info_get_all", LIBRARY_GIO);
	Linker.link(g_app_info_get_all_for_type, "g_app_info_get_all_for_type", LIBRARY_GIO);
	Linker.link(g_app_info_get_default_for_type, "g_app_info_get_default_for_type", LIBRARY_GIO);
	Linker.link(g_app_info_get_default_for_uri_scheme, "g_app_info_get_default_for_uri_scheme", LIBRARY_GIO);
	Linker.link(g_app_info_get_fallback_for_type, "g_app_info_get_fallback_for_type", LIBRARY_GIO);
	Linker.link(g_app_info_get_recommended_for_type, "g_app_info_get_recommended_for_type", LIBRARY_GIO);
	Linker.link(g_app_info_launch_default_for_uri, "g_app_info_launch_default_for_uri", LIBRARY_GIO);
	Linker.link(g_app_info_launch_default_for_uri_async, "g_app_info_launch_default_for_uri_async", LIBRARY_GIO);
	Linker.link(g_app_info_launch_default_for_uri_finish, "g_app_info_launch_default_for_uri_finish", LIBRARY_GIO);
	Linker.link(g_app_info_reset_type_associations, "g_app_info_reset_type_associations", LIBRARY_GIO);
	Linker.link(g_app_info_add_supports_type, "g_app_info_add_supports_type", LIBRARY_GIO);
	Linker.link(g_app_info_can_delete, "g_app_info_can_delete", LIBRARY_GIO);
	Linker.link(g_app_info_can_remove_supports_type, "g_app_info_can_remove_supports_type", LIBRARY_GIO);
	Linker.link(g_app_info_delete, "g_app_info_delete", LIBRARY_GIO);
	Linker.link(g_app_info_dup, "g_app_info_dup", LIBRARY_GIO);
	Linker.link(g_app_info_equal, "g_app_info_equal", LIBRARY_GIO);
	Linker.link(g_app_info_get_commandline, "g_app_info_get_commandline", LIBRARY_GIO);
	Linker.link(g_app_info_get_description, "g_app_info_get_description", LIBRARY_GIO);
	Linker.link(g_app_info_get_display_name, "g_app_info_get_display_name", LIBRARY_GIO);
	Linker.link(g_app_info_get_executable, "g_app_info_get_executable", LIBRARY_GIO);
	Linker.link(g_app_info_get_icon, "g_app_info_get_icon", LIBRARY_GIO);
	Linker.link(g_app_info_get_id, "g_app_info_get_id", LIBRARY_GIO);
	Linker.link(g_app_info_get_name, "g_app_info_get_name", LIBRARY_GIO);
	Linker.link(g_app_info_get_supported_types, "g_app_info_get_supported_types", LIBRARY_GIO);
	Linker.link(g_app_info_launch, "g_app_info_launch", LIBRARY_GIO);
	Linker.link(g_app_info_launch_uris, "g_app_info_launch_uris", LIBRARY_GIO);
	Linker.link(g_app_info_launch_uris_async, "g_app_info_launch_uris_async", LIBRARY_GIO);
	Linker.link(g_app_info_launch_uris_finish, "g_app_info_launch_uris_finish", LIBRARY_GIO);
	Linker.link(g_app_info_remove_supports_type, "g_app_info_remove_supports_type", LIBRARY_GIO);
	Linker.link(g_app_info_set_as_default_for_extension, "g_app_info_set_as_default_for_extension", LIBRARY_GIO);
	Linker.link(g_app_info_set_as_default_for_type, "g_app_info_set_as_default_for_type", LIBRARY_GIO);
	Linker.link(g_app_info_set_as_last_used_for_type, "g_app_info_set_as_last_used_for_type", LIBRARY_GIO);
	Linker.link(g_app_info_should_show, "g_app_info_should_show", LIBRARY_GIO);
	Linker.link(g_app_info_supports_files, "g_app_info_supports_files", LIBRARY_GIO);
	Linker.link(g_app_info_supports_uris, "g_app_info_supports_uris", LIBRARY_GIO);

	// gio.AppInfoMonitor

	Linker.link(g_app_info_monitor_get_type, "g_app_info_monitor_get_type", LIBRARY_GIO);
	Linker.link(g_app_info_monitor_get, "g_app_info_monitor_get", LIBRARY_GIO);

	// gio.AppLaunchContext

	Linker.link(g_app_launch_context_get_type, "g_app_launch_context_get_type", LIBRARY_GIO);
	Linker.link(g_app_launch_context_new, "g_app_launch_context_new", LIBRARY_GIO);
	Linker.link(g_app_launch_context_get_display, "g_app_launch_context_get_display", LIBRARY_GIO);
	Linker.link(g_app_launch_context_get_environment, "g_app_launch_context_get_environment", LIBRARY_GIO);
	Linker.link(g_app_launch_context_get_startup_notify_id, "g_app_launch_context_get_startup_notify_id", LIBRARY_GIO);
	Linker.link(g_app_launch_context_launch_failed, "g_app_launch_context_launch_failed", LIBRARY_GIO);
	Linker.link(g_app_launch_context_setenv, "g_app_launch_context_setenv", LIBRARY_GIO);
	Linker.link(g_app_launch_context_unsetenv, "g_app_launch_context_unsetenv", LIBRARY_GIO);

	// gio.Application

	Linker.link(g_application_get_type, "g_application_get_type", LIBRARY_GIO);
	Linker.link(g_application_new, "g_application_new", LIBRARY_GIO);
	Linker.link(g_application_get_default, "g_application_get_default", LIBRARY_GIO);
	Linker.link(g_application_id_is_valid, "g_application_id_is_valid", LIBRARY_GIO);
	Linker.link(g_application_activate, "g_application_activate", LIBRARY_GIO);
	Linker.link(g_application_add_main_option, "g_application_add_main_option", LIBRARY_GIO);
	Linker.link(g_application_add_main_option_entries, "g_application_add_main_option_entries", LIBRARY_GIO);
	Linker.link(g_application_add_option_group, "g_application_add_option_group", LIBRARY_GIO);
	Linker.link(g_application_bind_busy_property, "g_application_bind_busy_property", LIBRARY_GIO);
	Linker.link(g_application_get_application_id, "g_application_get_application_id", LIBRARY_GIO);
	Linker.link(g_application_get_dbus_connection, "g_application_get_dbus_connection", LIBRARY_GIO);
	Linker.link(g_application_get_dbus_object_path, "g_application_get_dbus_object_path", LIBRARY_GIO);
	Linker.link(g_application_get_flags, "g_application_get_flags", LIBRARY_GIO);
	Linker.link(g_application_get_inactivity_timeout, "g_application_get_inactivity_timeout", LIBRARY_GIO);
	Linker.link(g_application_get_is_busy, "g_application_get_is_busy", LIBRARY_GIO);
	Linker.link(g_application_get_is_registered, "g_application_get_is_registered", LIBRARY_GIO);
	Linker.link(g_application_get_is_remote, "g_application_get_is_remote", LIBRARY_GIO);
	Linker.link(g_application_get_resource_base_path, "g_application_get_resource_base_path", LIBRARY_GIO);
	Linker.link(g_application_hold, "g_application_hold", LIBRARY_GIO);
	Linker.link(g_application_mark_busy, "g_application_mark_busy", LIBRARY_GIO);
	Linker.link(g_application_open, "g_application_open", LIBRARY_GIO);
	Linker.link(g_application_quit, "g_application_quit", LIBRARY_GIO);
	Linker.link(g_application_register, "g_application_register", LIBRARY_GIO);
	Linker.link(g_application_release, "g_application_release", LIBRARY_GIO);
	Linker.link(g_application_run, "g_application_run", LIBRARY_GIO);
	Linker.link(g_application_send_notification, "g_application_send_notification", LIBRARY_GIO);
	Linker.link(g_application_set_action_group, "g_application_set_action_group", LIBRARY_GIO);
	Linker.link(g_application_set_application_id, "g_application_set_application_id", LIBRARY_GIO);
	Linker.link(g_application_set_default, "g_application_set_default", LIBRARY_GIO);
	Linker.link(g_application_set_flags, "g_application_set_flags", LIBRARY_GIO);
	Linker.link(g_application_set_inactivity_timeout, "g_application_set_inactivity_timeout", LIBRARY_GIO);
	Linker.link(g_application_set_option_context_description, "g_application_set_option_context_description", LIBRARY_GIO);
	Linker.link(g_application_set_option_context_parameter_string, "g_application_set_option_context_parameter_string", LIBRARY_GIO);
	Linker.link(g_application_set_option_context_summary, "g_application_set_option_context_summary", LIBRARY_GIO);
	Linker.link(g_application_set_resource_base_path, "g_application_set_resource_base_path", LIBRARY_GIO);
	Linker.link(g_application_unbind_busy_property, "g_application_unbind_busy_property", LIBRARY_GIO);
	Linker.link(g_application_unmark_busy, "g_application_unmark_busy", LIBRARY_GIO);
	Linker.link(g_application_withdraw_notification, "g_application_withdraw_notification", LIBRARY_GIO);

	// gio.ApplicationCommandLine

	Linker.link(g_application_command_line_get_type, "g_application_command_line_get_type", LIBRARY_GIO);
	Linker.link(g_application_command_line_create_file_for_arg, "g_application_command_line_create_file_for_arg", LIBRARY_GIO);
	Linker.link(g_application_command_line_get_arguments, "g_application_command_line_get_arguments", LIBRARY_GIO);
	Linker.link(g_application_command_line_get_cwd, "g_application_command_line_get_cwd", LIBRARY_GIO);
	Linker.link(g_application_command_line_get_environ, "g_application_command_line_get_environ", LIBRARY_GIO);
	Linker.link(g_application_command_line_get_exit_status, "g_application_command_line_get_exit_status", LIBRARY_GIO);
	Linker.link(g_application_command_line_get_is_remote, "g_application_command_line_get_is_remote", LIBRARY_GIO);
	Linker.link(g_application_command_line_get_options_dict, "g_application_command_line_get_options_dict", LIBRARY_GIO);
	Linker.link(g_application_command_line_get_platform_data, "g_application_command_line_get_platform_data", LIBRARY_GIO);
	Linker.link(g_application_command_line_get_stdin, "g_application_command_line_get_stdin", LIBRARY_GIO);
	Linker.link(g_application_command_line_getenv, "g_application_command_line_getenv", LIBRARY_GIO);
	Linker.link(g_application_command_line_print, "g_application_command_line_print", LIBRARY_GIO);
	Linker.link(g_application_command_line_printerr, "g_application_command_line_printerr", LIBRARY_GIO);
	Linker.link(g_application_command_line_set_exit_status, "g_application_command_line_set_exit_status", LIBRARY_GIO);

	// gio.AsyncInitable

	Linker.link(g_async_initable_get_type, "g_async_initable_get_type", LIBRARY_GIO);
	Linker.link(g_async_initable_new_async, "g_async_initable_new_async", LIBRARY_GIO);
	Linker.link(g_async_initable_new_valist_async, "g_async_initable_new_valist_async", LIBRARY_GIO);
	Linker.link(g_async_initable_newv_async, "g_async_initable_newv_async", LIBRARY_GIO);
	Linker.link(g_async_initable_init_async, "g_async_initable_init_async", LIBRARY_GIO);
	Linker.link(g_async_initable_init_finish, "g_async_initable_init_finish", LIBRARY_GIO);
	Linker.link(g_async_initable_new_finish, "g_async_initable_new_finish", LIBRARY_GIO);

	// gio.AsyncResult

	Linker.link(g_async_result_get_type, "g_async_result_get_type", LIBRARY_GIO);
	Linker.link(g_async_result_get_source_object, "g_async_result_get_source_object", LIBRARY_GIO);
	Linker.link(g_async_result_get_user_data, "g_async_result_get_user_data", LIBRARY_GIO);
	Linker.link(g_async_result_is_tagged, "g_async_result_is_tagged", LIBRARY_GIO);
	Linker.link(g_async_result_legacy_propagate_error, "g_async_result_legacy_propagate_error", LIBRARY_GIO);

	// gio.BufferedInputStream

	Linker.link(g_buffered_input_stream_get_type, "g_buffered_input_stream_get_type", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_new, "g_buffered_input_stream_new", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_new_sized, "g_buffered_input_stream_new_sized", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_fill, "g_buffered_input_stream_fill", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_fill_async, "g_buffered_input_stream_fill_async", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_fill_finish, "g_buffered_input_stream_fill_finish", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_get_available, "g_buffered_input_stream_get_available", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_get_buffer_size, "g_buffered_input_stream_get_buffer_size", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_peek, "g_buffered_input_stream_peek", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_peek_buffer, "g_buffered_input_stream_peek_buffer", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_read_byte, "g_buffered_input_stream_read_byte", LIBRARY_GIO);
	Linker.link(g_buffered_input_stream_set_buffer_size, "g_buffered_input_stream_set_buffer_size", LIBRARY_GIO);

	// gio.BufferedOutputStream

	Linker.link(g_buffered_output_stream_get_type, "g_buffered_output_stream_get_type", LIBRARY_GIO);
	Linker.link(g_buffered_output_stream_new, "g_buffered_output_stream_new", LIBRARY_GIO);
	Linker.link(g_buffered_output_stream_new_sized, "g_buffered_output_stream_new_sized", LIBRARY_GIO);
	Linker.link(g_buffered_output_stream_get_auto_grow, "g_buffered_output_stream_get_auto_grow", LIBRARY_GIO);
	Linker.link(g_buffered_output_stream_get_buffer_size, "g_buffered_output_stream_get_buffer_size", LIBRARY_GIO);
	Linker.link(g_buffered_output_stream_set_auto_grow, "g_buffered_output_stream_set_auto_grow", LIBRARY_GIO);
	Linker.link(g_buffered_output_stream_set_buffer_size, "g_buffered_output_stream_set_buffer_size", LIBRARY_GIO);

	// gio.BytesIcon

	Linker.link(g_bytes_icon_get_type, "g_bytes_icon_get_type", LIBRARY_GIO);
	Linker.link(g_bytes_icon_new, "g_bytes_icon_new", LIBRARY_GIO);
	Linker.link(g_bytes_icon_get_bytes, "g_bytes_icon_get_bytes", LIBRARY_GIO);

	// gio.Cancellable

	Linker.link(g_cancellable_get_type, "g_cancellable_get_type", LIBRARY_GIO);
	Linker.link(g_cancellable_new, "g_cancellable_new", LIBRARY_GIO);
	Linker.link(g_cancellable_get_current, "g_cancellable_get_current", LIBRARY_GIO);
	Linker.link(g_cancellable_cancel, "g_cancellable_cancel", LIBRARY_GIO);
	Linker.link(g_cancellable_connect, "g_cancellable_connect", LIBRARY_GIO);
	Linker.link(g_cancellable_disconnect, "g_cancellable_disconnect", LIBRARY_GIO);
	Linker.link(g_cancellable_get_fd, "g_cancellable_get_fd", LIBRARY_GIO);
	Linker.link(g_cancellable_is_cancelled, "g_cancellable_is_cancelled", LIBRARY_GIO);
	Linker.link(g_cancellable_make_pollfd, "g_cancellable_make_pollfd", LIBRARY_GIO);
	Linker.link(g_cancellable_pop_current, "g_cancellable_pop_current", LIBRARY_GIO);
	Linker.link(g_cancellable_push_current, "g_cancellable_push_current", LIBRARY_GIO);
	Linker.link(g_cancellable_release_fd, "g_cancellable_release_fd", LIBRARY_GIO);
	Linker.link(g_cancellable_reset, "g_cancellable_reset", LIBRARY_GIO);
	Linker.link(g_cancellable_set_error_if_cancelled, "g_cancellable_set_error_if_cancelled", LIBRARY_GIO);
	Linker.link(g_cancellable_source_new, "g_cancellable_source_new", LIBRARY_GIO);

	// gio.CharsetConverter

	Linker.link(g_charset_converter_get_type, "g_charset_converter_get_type", LIBRARY_GIO);
	Linker.link(g_charset_converter_new, "g_charset_converter_new", LIBRARY_GIO);
	Linker.link(g_charset_converter_get_num_fallbacks, "g_charset_converter_get_num_fallbacks", LIBRARY_GIO);
	Linker.link(g_charset_converter_get_use_fallback, "g_charset_converter_get_use_fallback", LIBRARY_GIO);
	Linker.link(g_charset_converter_set_use_fallback, "g_charset_converter_set_use_fallback", LIBRARY_GIO);

	// gio.Converter

	Linker.link(g_converter_get_type, "g_converter_get_type", LIBRARY_GIO);
	Linker.link(g_converter_convert, "g_converter_convert", LIBRARY_GIO);
	Linker.link(g_converter_reset, "g_converter_reset", LIBRARY_GIO);

	// gio.ConverterInputStream

	Linker.link(g_converter_input_stream_get_type, "g_converter_input_stream_get_type", LIBRARY_GIO);
	Linker.link(g_converter_input_stream_new, "g_converter_input_stream_new", LIBRARY_GIO);
	Linker.link(g_converter_input_stream_get_converter, "g_converter_input_stream_get_converter", LIBRARY_GIO);

	// gio.ConverterOutputStream

	Linker.link(g_converter_output_stream_get_type, "g_converter_output_stream_get_type", LIBRARY_GIO);
	Linker.link(g_converter_output_stream_new, "g_converter_output_stream_new", LIBRARY_GIO);
	Linker.link(g_converter_output_stream_get_converter, "g_converter_output_stream_get_converter", LIBRARY_GIO);

	// gio.Credentials

	Linker.link(g_credentials_get_type, "g_credentials_get_type", LIBRARY_GIO);
	Linker.link(g_credentials_new, "g_credentials_new", LIBRARY_GIO);
	Linker.link(g_credentials_get_native, "g_credentials_get_native", LIBRARY_GIO);
	Linker.link(g_credentials_get_unix_pid, "g_credentials_get_unix_pid", LIBRARY_GIO);
	Linker.link(g_credentials_get_unix_user, "g_credentials_get_unix_user", LIBRARY_GIO);
	Linker.link(g_credentials_is_same_user, "g_credentials_is_same_user", LIBRARY_GIO);
	Linker.link(g_credentials_set_native, "g_credentials_set_native", LIBRARY_GIO);
	Linker.link(g_credentials_set_unix_user, "g_credentials_set_unix_user", LIBRARY_GIO);
	Linker.link(g_credentials_to_string, "g_credentials_to_string", LIBRARY_GIO);

	// gio.DBusActionGroup

	Linker.link(g_dbus_action_group_get_type, "g_dbus_action_group_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_action_group_get, "g_dbus_action_group_get", LIBRARY_GIO);

	// gio.DBusAnnotationInfo

	Linker.link(g_dbus_annotation_info_get_type, "g_dbus_annotation_info_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_annotation_info_ref, "g_dbus_annotation_info_ref", LIBRARY_GIO);
	Linker.link(g_dbus_annotation_info_unref, "g_dbus_annotation_info_unref", LIBRARY_GIO);
	Linker.link(g_dbus_annotation_info_lookup, "g_dbus_annotation_info_lookup", LIBRARY_GIO);

	// gio.DBusArgInfo

	Linker.link(g_dbus_arg_info_get_type, "g_dbus_arg_info_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_arg_info_ref, "g_dbus_arg_info_ref", LIBRARY_GIO);
	Linker.link(g_dbus_arg_info_unref, "g_dbus_arg_info_unref", LIBRARY_GIO);

	// gio.DBusAuthObserver

	Linker.link(g_dbus_auth_observer_get_type, "g_dbus_auth_observer_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_auth_observer_new, "g_dbus_auth_observer_new", LIBRARY_GIO);
	Linker.link(g_dbus_auth_observer_allow_mechanism, "g_dbus_auth_observer_allow_mechanism", LIBRARY_GIO);
	Linker.link(g_dbus_auth_observer_authorize_authenticated_peer, "g_dbus_auth_observer_authorize_authenticated_peer", LIBRARY_GIO);

	// gio.DBusConnection

	Linker.link(g_dbus_connection_get_type, "g_dbus_connection_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_connection_new_finish, "g_dbus_connection_new_finish", LIBRARY_GIO);
	Linker.link(g_dbus_connection_new_for_address_finish, "g_dbus_connection_new_for_address_finish", LIBRARY_GIO);
	Linker.link(g_dbus_connection_new_for_address_sync, "g_dbus_connection_new_for_address_sync", LIBRARY_GIO);
	Linker.link(g_dbus_connection_new_sync, "g_dbus_connection_new_sync", LIBRARY_GIO);
	Linker.link(g_dbus_connection_new, "g_dbus_connection_new", LIBRARY_GIO);
	Linker.link(g_dbus_connection_new_for_address, "g_dbus_connection_new_for_address", LIBRARY_GIO);
	Linker.link(g_dbus_connection_add_filter, "g_dbus_connection_add_filter", LIBRARY_GIO);
	Linker.link(g_dbus_connection_call, "g_dbus_connection_call", LIBRARY_GIO);
	Linker.link(g_dbus_connection_call_finish, "g_dbus_connection_call_finish", LIBRARY_GIO);
	Linker.link(g_dbus_connection_call_sync, "g_dbus_connection_call_sync", LIBRARY_GIO);
	Linker.link(g_dbus_connection_call_with_unix_fd_list, "g_dbus_connection_call_with_unix_fd_list", LIBRARY_GIO);
	Linker.link(g_dbus_connection_call_with_unix_fd_list_finish, "g_dbus_connection_call_with_unix_fd_list_finish", LIBRARY_GIO);
	Linker.link(g_dbus_connection_call_with_unix_fd_list_sync, "g_dbus_connection_call_with_unix_fd_list_sync", LIBRARY_GIO);
	Linker.link(g_dbus_connection_close, "g_dbus_connection_close", LIBRARY_GIO);
	Linker.link(g_dbus_connection_close_finish, "g_dbus_connection_close_finish", LIBRARY_GIO);
	Linker.link(g_dbus_connection_close_sync, "g_dbus_connection_close_sync", LIBRARY_GIO);
	Linker.link(g_dbus_connection_emit_signal, "g_dbus_connection_emit_signal", LIBRARY_GIO);
	Linker.link(g_dbus_connection_export_action_group, "g_dbus_connection_export_action_group", LIBRARY_GIO);
	Linker.link(g_dbus_connection_export_menu_model, "g_dbus_connection_export_menu_model", LIBRARY_GIO);
	Linker.link(g_dbus_connection_flush, "g_dbus_connection_flush", LIBRARY_GIO);
	Linker.link(g_dbus_connection_flush_finish, "g_dbus_connection_flush_finish", LIBRARY_GIO);
	Linker.link(g_dbus_connection_flush_sync, "g_dbus_connection_flush_sync", LIBRARY_GIO);
	Linker.link(g_dbus_connection_get_capabilities, "g_dbus_connection_get_capabilities", LIBRARY_GIO);
	Linker.link(g_dbus_connection_get_exit_on_close, "g_dbus_connection_get_exit_on_close", LIBRARY_GIO);
	Linker.link(g_dbus_connection_get_flags, "g_dbus_connection_get_flags", LIBRARY_GIO);
	Linker.link(g_dbus_connection_get_guid, "g_dbus_connection_get_guid", LIBRARY_GIO);
	Linker.link(g_dbus_connection_get_last_serial, "g_dbus_connection_get_last_serial", LIBRARY_GIO);
	Linker.link(g_dbus_connection_get_peer_credentials, "g_dbus_connection_get_peer_credentials", LIBRARY_GIO);
	Linker.link(g_dbus_connection_get_stream, "g_dbus_connection_get_stream", LIBRARY_GIO);
	Linker.link(g_dbus_connection_get_unique_name, "g_dbus_connection_get_unique_name", LIBRARY_GIO);
	Linker.link(g_dbus_connection_is_closed, "g_dbus_connection_is_closed", LIBRARY_GIO);
	Linker.link(g_dbus_connection_register_object, "g_dbus_connection_register_object", LIBRARY_GIO);
	Linker.link(g_dbus_connection_register_object_with_closures, "g_dbus_connection_register_object_with_closures", LIBRARY_GIO);
	Linker.link(g_dbus_connection_register_subtree, "g_dbus_connection_register_subtree", LIBRARY_GIO);
	Linker.link(g_dbus_connection_remove_filter, "g_dbus_connection_remove_filter", LIBRARY_GIO);
	Linker.link(g_dbus_connection_send_message, "g_dbus_connection_send_message", LIBRARY_GIO);
	Linker.link(g_dbus_connection_send_message_with_reply, "g_dbus_connection_send_message_with_reply", LIBRARY_GIO);
	Linker.link(g_dbus_connection_send_message_with_reply_finish, "g_dbus_connection_send_message_with_reply_finish", LIBRARY_GIO);
	Linker.link(g_dbus_connection_send_message_with_reply_sync, "g_dbus_connection_send_message_with_reply_sync", LIBRARY_GIO);
	Linker.link(g_dbus_connection_set_exit_on_close, "g_dbus_connection_set_exit_on_close", LIBRARY_GIO);
	Linker.link(g_dbus_connection_signal_subscribe, "g_dbus_connection_signal_subscribe", LIBRARY_GIO);
	Linker.link(g_dbus_connection_signal_unsubscribe, "g_dbus_connection_signal_unsubscribe", LIBRARY_GIO);
	Linker.link(g_dbus_connection_start_message_processing, "g_dbus_connection_start_message_processing", LIBRARY_GIO);
	Linker.link(g_dbus_connection_unexport_action_group, "g_dbus_connection_unexport_action_group", LIBRARY_GIO);
	Linker.link(g_dbus_connection_unexport_menu_model, "g_dbus_connection_unexport_menu_model", LIBRARY_GIO);
	Linker.link(g_dbus_connection_unregister_object, "g_dbus_connection_unregister_object", LIBRARY_GIO);
	Linker.link(g_dbus_connection_unregister_subtree, "g_dbus_connection_unregister_subtree", LIBRARY_GIO);
	Linker.link(g_bus_get, "g_bus_get", LIBRARY_GIO);
	Linker.link(g_bus_get_finish, "g_bus_get_finish", LIBRARY_GIO);
	Linker.link(g_bus_get_sync, "g_bus_get_sync", LIBRARY_GIO);

	// gio.DBusInterface

	Linker.link(g_dbus_interface_get_type, "g_dbus_interface_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_interface_dup_object, "g_dbus_interface_dup_object", LIBRARY_GIO);
	Linker.link(g_dbus_interface_get_info, "g_dbus_interface_get_info", LIBRARY_GIO);
	Linker.link(g_dbus_interface_get_object, "g_dbus_interface_get_object", LIBRARY_GIO);
	Linker.link(g_dbus_interface_set_object, "g_dbus_interface_set_object", LIBRARY_GIO);

	// gio.DBusInterfaceInfo

	Linker.link(g_dbus_interface_info_get_type, "g_dbus_interface_info_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_interface_info_cache_build, "g_dbus_interface_info_cache_build", LIBRARY_GIO);
	Linker.link(g_dbus_interface_info_cache_release, "g_dbus_interface_info_cache_release", LIBRARY_GIO);
	Linker.link(g_dbus_interface_info_generate_xml, "g_dbus_interface_info_generate_xml", LIBRARY_GIO);
	Linker.link(g_dbus_interface_info_lookup_method, "g_dbus_interface_info_lookup_method", LIBRARY_GIO);
	Linker.link(g_dbus_interface_info_lookup_property, "g_dbus_interface_info_lookup_property", LIBRARY_GIO);
	Linker.link(g_dbus_interface_info_lookup_signal, "g_dbus_interface_info_lookup_signal", LIBRARY_GIO);
	Linker.link(g_dbus_interface_info_ref, "g_dbus_interface_info_ref", LIBRARY_GIO);
	Linker.link(g_dbus_interface_info_unref, "g_dbus_interface_info_unref", LIBRARY_GIO);

	// gio.DBusInterfaceSkeleton

	Linker.link(g_dbus_interface_skeleton_get_type, "g_dbus_interface_skeleton_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_export, "g_dbus_interface_skeleton_export", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_flush, "g_dbus_interface_skeleton_flush", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_get_connection, "g_dbus_interface_skeleton_get_connection", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_get_connections, "g_dbus_interface_skeleton_get_connections", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_get_flags, "g_dbus_interface_skeleton_get_flags", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_get_info, "g_dbus_interface_skeleton_get_info", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_get_object_path, "g_dbus_interface_skeleton_get_object_path", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_get_properties, "g_dbus_interface_skeleton_get_properties", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_get_vtable, "g_dbus_interface_skeleton_get_vtable", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_has_connection, "g_dbus_interface_skeleton_has_connection", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_set_flags, "g_dbus_interface_skeleton_set_flags", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_unexport, "g_dbus_interface_skeleton_unexport", LIBRARY_GIO);
	Linker.link(g_dbus_interface_skeleton_unexport_from_connection, "g_dbus_interface_skeleton_unexport_from_connection", LIBRARY_GIO);

	// gio.DBusMenuModel

	Linker.link(g_dbus_menu_model_get_type, "g_dbus_menu_model_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_menu_model_get, "g_dbus_menu_model_get", LIBRARY_GIO);

	// gio.DBusMessage

	Linker.link(g_dbus_message_get_type, "g_dbus_message_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_message_new, "g_dbus_message_new", LIBRARY_GIO);
	Linker.link(g_dbus_message_new_from_blob, "g_dbus_message_new_from_blob", LIBRARY_GIO);
	Linker.link(g_dbus_message_new_method_call, "g_dbus_message_new_method_call", LIBRARY_GIO);
	Linker.link(g_dbus_message_new_signal, "g_dbus_message_new_signal", LIBRARY_GIO);
	Linker.link(g_dbus_message_bytes_needed, "g_dbus_message_bytes_needed", LIBRARY_GIO);
	Linker.link(g_dbus_message_copy, "g_dbus_message_copy", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_arg0, "g_dbus_message_get_arg0", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_body, "g_dbus_message_get_body", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_byte_order, "g_dbus_message_get_byte_order", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_destination, "g_dbus_message_get_destination", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_error_name, "g_dbus_message_get_error_name", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_flags, "g_dbus_message_get_flags", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_header, "g_dbus_message_get_header", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_header_fields, "g_dbus_message_get_header_fields", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_interface, "g_dbus_message_get_interface", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_locked, "g_dbus_message_get_locked", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_member, "g_dbus_message_get_member", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_message_type, "g_dbus_message_get_message_type", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_num_unix_fds, "g_dbus_message_get_num_unix_fds", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_path, "g_dbus_message_get_path", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_reply_serial, "g_dbus_message_get_reply_serial", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_sender, "g_dbus_message_get_sender", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_serial, "g_dbus_message_get_serial", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_signature, "g_dbus_message_get_signature", LIBRARY_GIO);
	Linker.link(g_dbus_message_get_unix_fd_list, "g_dbus_message_get_unix_fd_list", LIBRARY_GIO);
	Linker.link(g_dbus_message_lock, "g_dbus_message_lock", LIBRARY_GIO);
	Linker.link(g_dbus_message_new_method_error, "g_dbus_message_new_method_error", LIBRARY_GIO);
	Linker.link(g_dbus_message_new_method_error_literal, "g_dbus_message_new_method_error_literal", LIBRARY_GIO);
	Linker.link(g_dbus_message_new_method_error_valist, "g_dbus_message_new_method_error_valist", LIBRARY_GIO);
	Linker.link(g_dbus_message_new_method_reply, "g_dbus_message_new_method_reply", LIBRARY_GIO);
	Linker.link(g_dbus_message_print, "g_dbus_message_print", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_body, "g_dbus_message_set_body", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_byte_order, "g_dbus_message_set_byte_order", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_destination, "g_dbus_message_set_destination", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_error_name, "g_dbus_message_set_error_name", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_flags, "g_dbus_message_set_flags", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_header, "g_dbus_message_set_header", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_interface, "g_dbus_message_set_interface", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_member, "g_dbus_message_set_member", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_message_type, "g_dbus_message_set_message_type", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_num_unix_fds, "g_dbus_message_set_num_unix_fds", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_path, "g_dbus_message_set_path", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_reply_serial, "g_dbus_message_set_reply_serial", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_sender, "g_dbus_message_set_sender", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_serial, "g_dbus_message_set_serial", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_signature, "g_dbus_message_set_signature", LIBRARY_GIO);
	Linker.link(g_dbus_message_set_unix_fd_list, "g_dbus_message_set_unix_fd_list", LIBRARY_GIO);
	Linker.link(g_dbus_message_to_blob, "g_dbus_message_to_blob", LIBRARY_GIO);
	Linker.link(g_dbus_message_to_gerror, "g_dbus_message_to_gerror", LIBRARY_GIO);

	// gio.DBusMethodInfo

	Linker.link(g_dbus_method_info_get_type, "g_dbus_method_info_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_method_info_ref, "g_dbus_method_info_ref", LIBRARY_GIO);
	Linker.link(g_dbus_method_info_unref, "g_dbus_method_info_unref", LIBRARY_GIO);

	// gio.DBusMethodInvocation

	Linker.link(g_dbus_method_invocation_get_type, "g_dbus_method_invocation_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_get_connection, "g_dbus_method_invocation_get_connection", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_get_interface_name, "g_dbus_method_invocation_get_interface_name", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_get_message, "g_dbus_method_invocation_get_message", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_get_method_info, "g_dbus_method_invocation_get_method_info", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_get_method_name, "g_dbus_method_invocation_get_method_name", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_get_object_path, "g_dbus_method_invocation_get_object_path", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_get_parameters, "g_dbus_method_invocation_get_parameters", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_get_property_info, "g_dbus_method_invocation_get_property_info", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_get_sender, "g_dbus_method_invocation_get_sender", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_get_user_data, "g_dbus_method_invocation_get_user_data", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_return_dbus_error, "g_dbus_method_invocation_return_dbus_error", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_return_error, "g_dbus_method_invocation_return_error", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_return_error_literal, "g_dbus_method_invocation_return_error_literal", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_return_error_valist, "g_dbus_method_invocation_return_error_valist", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_return_gerror, "g_dbus_method_invocation_return_gerror", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_return_value, "g_dbus_method_invocation_return_value", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_return_value_with_unix_fd_list, "g_dbus_method_invocation_return_value_with_unix_fd_list", LIBRARY_GIO);
	Linker.link(g_dbus_method_invocation_take_error, "g_dbus_method_invocation_take_error", LIBRARY_GIO);

	// gio.DBusNodeInfo

	Linker.link(g_dbus_node_info_get_type, "g_dbus_node_info_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_node_info_new_for_xml, "g_dbus_node_info_new_for_xml", LIBRARY_GIO);
	Linker.link(g_dbus_node_info_generate_xml, "g_dbus_node_info_generate_xml", LIBRARY_GIO);
	Linker.link(g_dbus_node_info_lookup_interface, "g_dbus_node_info_lookup_interface", LIBRARY_GIO);
	Linker.link(g_dbus_node_info_ref, "g_dbus_node_info_ref", LIBRARY_GIO);
	Linker.link(g_dbus_node_info_unref, "g_dbus_node_info_unref", LIBRARY_GIO);

	// gio.DBusObject

	Linker.link(g_dbus_object_get_type, "g_dbus_object_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_object_get_interface, "g_dbus_object_get_interface", LIBRARY_GIO);
	Linker.link(g_dbus_object_get_interfaces, "g_dbus_object_get_interfaces", LIBRARY_GIO);
	Linker.link(g_dbus_object_get_object_path, "g_dbus_object_get_object_path", LIBRARY_GIO);

	// gio.DBusObjectManager

	Linker.link(g_dbus_object_manager_get_type, "g_dbus_object_manager_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_get_interface, "g_dbus_object_manager_get_interface", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_get_object, "g_dbus_object_manager_get_object", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_get_object_path, "g_dbus_object_manager_get_object_path", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_get_objects, "g_dbus_object_manager_get_objects", LIBRARY_GIO);

	// gio.DBusObjectManagerClient

	Linker.link(g_dbus_object_manager_client_get_type, "g_dbus_object_manager_client_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_client_new_finish, "g_dbus_object_manager_client_new_finish", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_client_new_for_bus_finish, "g_dbus_object_manager_client_new_for_bus_finish", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_client_new_for_bus_sync, "g_dbus_object_manager_client_new_for_bus_sync", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_client_new_sync, "g_dbus_object_manager_client_new_sync", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_client_new, "g_dbus_object_manager_client_new", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_client_new_for_bus, "g_dbus_object_manager_client_new_for_bus", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_client_get_connection, "g_dbus_object_manager_client_get_connection", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_client_get_flags, "g_dbus_object_manager_client_get_flags", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_client_get_name, "g_dbus_object_manager_client_get_name", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_client_get_name_owner, "g_dbus_object_manager_client_get_name_owner", LIBRARY_GIO);

	// gio.DBusObjectManagerServer

	Linker.link(g_dbus_object_manager_server_get_type, "g_dbus_object_manager_server_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_server_new, "g_dbus_object_manager_server_new", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_server_export, "g_dbus_object_manager_server_export", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_server_export_uniquely, "g_dbus_object_manager_server_export_uniquely", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_server_get_connection, "g_dbus_object_manager_server_get_connection", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_server_is_exported, "g_dbus_object_manager_server_is_exported", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_server_set_connection, "g_dbus_object_manager_server_set_connection", LIBRARY_GIO);
	Linker.link(g_dbus_object_manager_server_unexport, "g_dbus_object_manager_server_unexport", LIBRARY_GIO);

	// gio.DBusObjectProxy

	Linker.link(g_dbus_object_proxy_get_type, "g_dbus_object_proxy_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_object_proxy_new, "g_dbus_object_proxy_new", LIBRARY_GIO);
	Linker.link(g_dbus_object_proxy_get_connection, "g_dbus_object_proxy_get_connection", LIBRARY_GIO);

	// gio.DBusObjectSkeleton

	Linker.link(g_dbus_object_skeleton_get_type, "g_dbus_object_skeleton_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_object_skeleton_new, "g_dbus_object_skeleton_new", LIBRARY_GIO);
	Linker.link(g_dbus_object_skeleton_add_interface, "g_dbus_object_skeleton_add_interface", LIBRARY_GIO);
	Linker.link(g_dbus_object_skeleton_flush, "g_dbus_object_skeleton_flush", LIBRARY_GIO);
	Linker.link(g_dbus_object_skeleton_remove_interface, "g_dbus_object_skeleton_remove_interface", LIBRARY_GIO);
	Linker.link(g_dbus_object_skeleton_remove_interface_by_name, "g_dbus_object_skeleton_remove_interface_by_name", LIBRARY_GIO);
	Linker.link(g_dbus_object_skeleton_set_object_path, "g_dbus_object_skeleton_set_object_path", LIBRARY_GIO);

	// gio.DBusPropertyInfo

	Linker.link(g_dbus_property_info_get_type, "g_dbus_property_info_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_property_info_ref, "g_dbus_property_info_ref", LIBRARY_GIO);
	Linker.link(g_dbus_property_info_unref, "g_dbus_property_info_unref", LIBRARY_GIO);

	// gio.DBusProxy

	Linker.link(g_dbus_proxy_get_type, "g_dbus_proxy_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_new_finish, "g_dbus_proxy_new_finish", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_new_for_bus_finish, "g_dbus_proxy_new_for_bus_finish", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_new_for_bus_sync, "g_dbus_proxy_new_for_bus_sync", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_new_sync, "g_dbus_proxy_new_sync", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_new, "g_dbus_proxy_new", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_new_for_bus, "g_dbus_proxy_new_for_bus", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_call, "g_dbus_proxy_call", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_call_finish, "g_dbus_proxy_call_finish", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_call_sync, "g_dbus_proxy_call_sync", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_call_with_unix_fd_list, "g_dbus_proxy_call_with_unix_fd_list", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_call_with_unix_fd_list_finish, "g_dbus_proxy_call_with_unix_fd_list_finish", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_call_with_unix_fd_list_sync, "g_dbus_proxy_call_with_unix_fd_list_sync", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_get_cached_property, "g_dbus_proxy_get_cached_property", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_get_cached_property_names, "g_dbus_proxy_get_cached_property_names", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_get_connection, "g_dbus_proxy_get_connection", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_get_default_timeout, "g_dbus_proxy_get_default_timeout", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_get_flags, "g_dbus_proxy_get_flags", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_get_interface_info, "g_dbus_proxy_get_interface_info", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_get_interface_name, "g_dbus_proxy_get_interface_name", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_get_name, "g_dbus_proxy_get_name", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_get_name_owner, "g_dbus_proxy_get_name_owner", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_get_object_path, "g_dbus_proxy_get_object_path", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_set_cached_property, "g_dbus_proxy_set_cached_property", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_set_default_timeout, "g_dbus_proxy_set_default_timeout", LIBRARY_GIO);
	Linker.link(g_dbus_proxy_set_interface_info, "g_dbus_proxy_set_interface_info", LIBRARY_GIO);

	// gio.DBusServer

	Linker.link(g_dbus_server_get_type, "g_dbus_server_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_server_new_sync, "g_dbus_server_new_sync", LIBRARY_GIO);
	Linker.link(g_dbus_server_get_client_address, "g_dbus_server_get_client_address", LIBRARY_GIO);
	Linker.link(g_dbus_server_get_flags, "g_dbus_server_get_flags", LIBRARY_GIO);
	Linker.link(g_dbus_server_get_guid, "g_dbus_server_get_guid", LIBRARY_GIO);
	Linker.link(g_dbus_server_is_active, "g_dbus_server_is_active", LIBRARY_GIO);
	Linker.link(g_dbus_server_start, "g_dbus_server_start", LIBRARY_GIO);
	Linker.link(g_dbus_server_stop, "g_dbus_server_stop", LIBRARY_GIO);

	// gio.DBusSignalInfo

	Linker.link(g_dbus_signal_info_get_type, "g_dbus_signal_info_get_type", LIBRARY_GIO);
	Linker.link(g_dbus_signal_info_ref, "g_dbus_signal_info_ref", LIBRARY_GIO);
	Linker.link(g_dbus_signal_info_unref, "g_dbus_signal_info_unref", LIBRARY_GIO);

	// gio.DataInputStream

	Linker.link(g_data_input_stream_get_type, "g_data_input_stream_get_type", LIBRARY_GIO);
	Linker.link(g_data_input_stream_new, "g_data_input_stream_new", LIBRARY_GIO);
	Linker.link(g_data_input_stream_get_byte_order, "g_data_input_stream_get_byte_order", LIBRARY_GIO);
	Linker.link(g_data_input_stream_get_newline_type, "g_data_input_stream_get_newline_type", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_byte, "g_data_input_stream_read_byte", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_int16, "g_data_input_stream_read_int16", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_int32, "g_data_input_stream_read_int32", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_int64, "g_data_input_stream_read_int64", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_line, "g_data_input_stream_read_line", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_line_async, "g_data_input_stream_read_line_async", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_line_finish, "g_data_input_stream_read_line_finish", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_line_finish_utf8, "g_data_input_stream_read_line_finish_utf8", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_line_utf8, "g_data_input_stream_read_line_utf8", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_uint16, "g_data_input_stream_read_uint16", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_uint32, "g_data_input_stream_read_uint32", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_uint64, "g_data_input_stream_read_uint64", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_until, "g_data_input_stream_read_until", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_until_async, "g_data_input_stream_read_until_async", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_until_finish, "g_data_input_stream_read_until_finish", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_upto, "g_data_input_stream_read_upto", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_upto_async, "g_data_input_stream_read_upto_async", LIBRARY_GIO);
	Linker.link(g_data_input_stream_read_upto_finish, "g_data_input_stream_read_upto_finish", LIBRARY_GIO);
	Linker.link(g_data_input_stream_set_byte_order, "g_data_input_stream_set_byte_order", LIBRARY_GIO);
	Linker.link(g_data_input_stream_set_newline_type, "g_data_input_stream_set_newline_type", LIBRARY_GIO);

	// gio.DataOutputStream

	Linker.link(g_data_output_stream_get_type, "g_data_output_stream_get_type", LIBRARY_GIO);
	Linker.link(g_data_output_stream_new, "g_data_output_stream_new", LIBRARY_GIO);
	Linker.link(g_data_output_stream_get_byte_order, "g_data_output_stream_get_byte_order", LIBRARY_GIO);
	Linker.link(g_data_output_stream_put_byte, "g_data_output_stream_put_byte", LIBRARY_GIO);
	Linker.link(g_data_output_stream_put_int16, "g_data_output_stream_put_int16", LIBRARY_GIO);
	Linker.link(g_data_output_stream_put_int32, "g_data_output_stream_put_int32", LIBRARY_GIO);
	Linker.link(g_data_output_stream_put_int64, "g_data_output_stream_put_int64", LIBRARY_GIO);
	Linker.link(g_data_output_stream_put_string, "g_data_output_stream_put_string", LIBRARY_GIO);
	Linker.link(g_data_output_stream_put_uint16, "g_data_output_stream_put_uint16", LIBRARY_GIO);
	Linker.link(g_data_output_stream_put_uint32, "g_data_output_stream_put_uint32", LIBRARY_GIO);
	Linker.link(g_data_output_stream_put_uint64, "g_data_output_stream_put_uint64", LIBRARY_GIO);
	Linker.link(g_data_output_stream_set_byte_order, "g_data_output_stream_set_byte_order", LIBRARY_GIO);

	// gio.DatagramBased

	Linker.link(g_datagram_based_get_type, "g_datagram_based_get_type", LIBRARY_GIO);
	Linker.link(g_datagram_based_condition_check, "g_datagram_based_condition_check", LIBRARY_GIO);
	Linker.link(g_datagram_based_condition_wait, "g_datagram_based_condition_wait", LIBRARY_GIO);
	Linker.link(g_datagram_based_create_source, "g_datagram_based_create_source", LIBRARY_GIO);
	Linker.link(g_datagram_based_receive_messages, "g_datagram_based_receive_messages", LIBRARY_GIO);
	Linker.link(g_datagram_based_send_messages, "g_datagram_based_send_messages", LIBRARY_GIO);

	// gio.DebugController

	Linker.link(g_debug_controller_get_type, "g_debug_controller_get_type", LIBRARY_GIO);
	Linker.link(g_debug_controller_get_debug_enabled, "g_debug_controller_get_debug_enabled", LIBRARY_GIO);
	Linker.link(g_debug_controller_set_debug_enabled, "g_debug_controller_set_debug_enabled", LIBRARY_GIO);

	// gio.DebugControllerDBus

	Linker.link(g_debug_controller_dbus_get_type, "g_debug_controller_dbus_get_type", LIBRARY_GIO);
	Linker.link(g_debug_controller_dbus_new, "g_debug_controller_dbus_new", LIBRARY_GIO);
	Linker.link(g_debug_controller_dbus_stop, "g_debug_controller_dbus_stop", LIBRARY_GIO);

	// gio.DesktopAppInfo

	Linker.link(g_desktop_app_info_get_type, "g_desktop_app_info_get_type", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_new, "g_desktop_app_info_new", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_new_from_filename, "g_desktop_app_info_new_from_filename", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_new_from_keyfile, "g_desktop_app_info_new_from_keyfile", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_implementations, "g_desktop_app_info_get_implementations", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_search, "g_desktop_app_info_search", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_set_desktop_env, "g_desktop_app_info_set_desktop_env", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_action_name, "g_desktop_app_info_get_action_name", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_boolean, "g_desktop_app_info_get_boolean", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_categories, "g_desktop_app_info_get_categories", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_filename, "g_desktop_app_info_get_filename", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_generic_name, "g_desktop_app_info_get_generic_name", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_is_hidden, "g_desktop_app_info_get_is_hidden", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_keywords, "g_desktop_app_info_get_keywords", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_locale_string, "g_desktop_app_info_get_locale_string", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_nodisplay, "g_desktop_app_info_get_nodisplay", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_show_in, "g_desktop_app_info_get_show_in", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_startup_wm_class, "g_desktop_app_info_get_startup_wm_class", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_string, "g_desktop_app_info_get_string", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_get_string_list, "g_desktop_app_info_get_string_list", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_has_key, "g_desktop_app_info_has_key", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_launch_action, "g_desktop_app_info_launch_action", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_launch_uris_as_manager, "g_desktop_app_info_launch_uris_as_manager", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_launch_uris_as_manager_with_fds, "g_desktop_app_info_launch_uris_as_manager_with_fds", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_list_actions, "g_desktop_app_info_list_actions", LIBRARY_GIO);

	// gio.DesktopAppInfoLookup

	Linker.link(g_desktop_app_info_lookup_get_type, "g_desktop_app_info_lookup_get_type", LIBRARY_GIO);
	Linker.link(g_desktop_app_info_lookup_get_default_for_uri_scheme, "g_desktop_app_info_lookup_get_default_for_uri_scheme", LIBRARY_GIO);

	// gio.Drive

	Linker.link(g_drive_get_type, "g_drive_get_type", LIBRARY_GIO);
	Linker.link(g_drive_can_eject, "g_drive_can_eject", LIBRARY_GIO);
	Linker.link(g_drive_can_poll_for_media, "g_drive_can_poll_for_media", LIBRARY_GIO);
	Linker.link(g_drive_can_start, "g_drive_can_start", LIBRARY_GIO);
	Linker.link(g_drive_can_start_degraded, "g_drive_can_start_degraded", LIBRARY_GIO);
	Linker.link(g_drive_can_stop, "g_drive_can_stop", LIBRARY_GIO);
	Linker.link(g_drive_eject, "g_drive_eject", LIBRARY_GIO);
	Linker.link(g_drive_eject_finish, "g_drive_eject_finish", LIBRARY_GIO);
	Linker.link(g_drive_eject_with_operation, "g_drive_eject_with_operation", LIBRARY_GIO);
	Linker.link(g_drive_eject_with_operation_finish, "g_drive_eject_with_operation_finish", LIBRARY_GIO);
	Linker.link(g_drive_enumerate_identifiers, "g_drive_enumerate_identifiers", LIBRARY_GIO);
	Linker.link(g_drive_get_icon, "g_drive_get_icon", LIBRARY_GIO);
	Linker.link(g_drive_get_identifier, "g_drive_get_identifier", LIBRARY_GIO);
	Linker.link(g_drive_get_name, "g_drive_get_name", LIBRARY_GIO);
	Linker.link(g_drive_get_sort_key, "g_drive_get_sort_key", LIBRARY_GIO);
	Linker.link(g_drive_get_start_stop_type, "g_drive_get_start_stop_type", LIBRARY_GIO);
	Linker.link(g_drive_get_symbolic_icon, "g_drive_get_symbolic_icon", LIBRARY_GIO);
	Linker.link(g_drive_get_volumes, "g_drive_get_volumes", LIBRARY_GIO);
	Linker.link(g_drive_has_media, "g_drive_has_media", LIBRARY_GIO);
	Linker.link(g_drive_has_volumes, "g_drive_has_volumes", LIBRARY_GIO);
	Linker.link(g_drive_is_media_check_automatic, "g_drive_is_media_check_automatic", LIBRARY_GIO);
	Linker.link(g_drive_is_media_removable, "g_drive_is_media_removable", LIBRARY_GIO);
	Linker.link(g_drive_is_removable, "g_drive_is_removable", LIBRARY_GIO);
	Linker.link(g_drive_poll_for_media, "g_drive_poll_for_media", LIBRARY_GIO);
	Linker.link(g_drive_poll_for_media_finish, "g_drive_poll_for_media_finish", LIBRARY_GIO);
	Linker.link(g_drive_start, "g_drive_start", LIBRARY_GIO);
	Linker.link(g_drive_start_finish, "g_drive_start_finish", LIBRARY_GIO);
	Linker.link(g_drive_stop, "g_drive_stop", LIBRARY_GIO);
	Linker.link(g_drive_stop_finish, "g_drive_stop_finish", LIBRARY_GIO);

	// gio.DtlsClientConnection

	Linker.link(g_dtls_client_connection_get_type, "g_dtls_client_connection_get_type", LIBRARY_GIO);
	Linker.link(g_dtls_client_connection_new, "g_dtls_client_connection_new", LIBRARY_GIO);
	Linker.link(g_dtls_client_connection_get_accepted_cas, "g_dtls_client_connection_get_accepted_cas", LIBRARY_GIO);
	Linker.link(g_dtls_client_connection_get_server_identity, "g_dtls_client_connection_get_server_identity", LIBRARY_GIO);
	Linker.link(g_dtls_client_connection_get_validation_flags, "g_dtls_client_connection_get_validation_flags", LIBRARY_GIO);
	Linker.link(g_dtls_client_connection_set_server_identity, "g_dtls_client_connection_set_server_identity", LIBRARY_GIO);
	Linker.link(g_dtls_client_connection_set_validation_flags, "g_dtls_client_connection_set_validation_flags", LIBRARY_GIO);

	// gio.DtlsConnection

	Linker.link(g_dtls_connection_get_type, "g_dtls_connection_get_type", LIBRARY_GIO);
	Linker.link(g_dtls_connection_close, "g_dtls_connection_close", LIBRARY_GIO);
	Linker.link(g_dtls_connection_close_async, "g_dtls_connection_close_async", LIBRARY_GIO);
	Linker.link(g_dtls_connection_close_finish, "g_dtls_connection_close_finish", LIBRARY_GIO);
	Linker.link(g_dtls_connection_emit_accept_certificate, "g_dtls_connection_emit_accept_certificate", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_certificate, "g_dtls_connection_get_certificate", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_channel_binding_data, "g_dtls_connection_get_channel_binding_data", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_ciphersuite_name, "g_dtls_connection_get_ciphersuite_name", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_database, "g_dtls_connection_get_database", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_interaction, "g_dtls_connection_get_interaction", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_negotiated_protocol, "g_dtls_connection_get_negotiated_protocol", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_peer_certificate, "g_dtls_connection_get_peer_certificate", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_peer_certificate_errors, "g_dtls_connection_get_peer_certificate_errors", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_protocol_version, "g_dtls_connection_get_protocol_version", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_rehandshake_mode, "g_dtls_connection_get_rehandshake_mode", LIBRARY_GIO);
	Linker.link(g_dtls_connection_get_require_close_notify, "g_dtls_connection_get_require_close_notify", LIBRARY_GIO);
	Linker.link(g_dtls_connection_handshake, "g_dtls_connection_handshake", LIBRARY_GIO);
	Linker.link(g_dtls_connection_handshake_async, "g_dtls_connection_handshake_async", LIBRARY_GIO);
	Linker.link(g_dtls_connection_handshake_finish, "g_dtls_connection_handshake_finish", LIBRARY_GIO);
	Linker.link(g_dtls_connection_set_advertised_protocols, "g_dtls_connection_set_advertised_protocols", LIBRARY_GIO);
	Linker.link(g_dtls_connection_set_certificate, "g_dtls_connection_set_certificate", LIBRARY_GIO);
	Linker.link(g_dtls_connection_set_database, "g_dtls_connection_set_database", LIBRARY_GIO);
	Linker.link(g_dtls_connection_set_interaction, "g_dtls_connection_set_interaction", LIBRARY_GIO);
	Linker.link(g_dtls_connection_set_rehandshake_mode, "g_dtls_connection_set_rehandshake_mode", LIBRARY_GIO);
	Linker.link(g_dtls_connection_set_require_close_notify, "g_dtls_connection_set_require_close_notify", LIBRARY_GIO);
	Linker.link(g_dtls_connection_shutdown, "g_dtls_connection_shutdown", LIBRARY_GIO);
	Linker.link(g_dtls_connection_shutdown_async, "g_dtls_connection_shutdown_async", LIBRARY_GIO);
	Linker.link(g_dtls_connection_shutdown_finish, "g_dtls_connection_shutdown_finish", LIBRARY_GIO);

	// gio.DtlsServerConnection

	Linker.link(g_dtls_server_connection_get_type, "g_dtls_server_connection_get_type", LIBRARY_GIO);
	Linker.link(g_dtls_server_connection_new, "g_dtls_server_connection_new", LIBRARY_GIO);

	// gio.Emblem

	Linker.link(g_emblem_get_type, "g_emblem_get_type", LIBRARY_GIO);
	Linker.link(g_emblem_new, "g_emblem_new", LIBRARY_GIO);
	Linker.link(g_emblem_new_with_origin, "g_emblem_new_with_origin", LIBRARY_GIO);
	Linker.link(g_emblem_get_icon, "g_emblem_get_icon", LIBRARY_GIO);
	Linker.link(g_emblem_get_origin, "g_emblem_get_origin", LIBRARY_GIO);

	// gio.EmblemedIcon

	Linker.link(g_emblemed_icon_get_type, "g_emblemed_icon_get_type", LIBRARY_GIO);
	Linker.link(g_emblemed_icon_new, "g_emblemed_icon_new", LIBRARY_GIO);
	Linker.link(g_emblemed_icon_add_emblem, "g_emblemed_icon_add_emblem", LIBRARY_GIO);
	Linker.link(g_emblemed_icon_clear_emblems, "g_emblemed_icon_clear_emblems", LIBRARY_GIO);
	Linker.link(g_emblemed_icon_get_emblems, "g_emblemed_icon_get_emblems", LIBRARY_GIO);
	Linker.link(g_emblemed_icon_get_icon, "g_emblemed_icon_get_icon", LIBRARY_GIO);

	// gio.File

	Linker.link(g_file_get_type, "g_file_get_type", LIBRARY_GIO);
	Linker.link(g_file_new_build_filename, "g_file_new_build_filename", LIBRARY_GIO);
	Linker.link(g_file_new_for_commandline_arg, "g_file_new_for_commandline_arg", LIBRARY_GIO);
	Linker.link(g_file_new_for_commandline_arg_and_cwd, "g_file_new_for_commandline_arg_and_cwd", LIBRARY_GIO);
	Linker.link(g_file_new_for_path, "g_file_new_for_path", LIBRARY_GIO);
	Linker.link(g_file_new_for_uri, "g_file_new_for_uri", LIBRARY_GIO);
	Linker.link(g_file_new_tmp, "g_file_new_tmp", LIBRARY_GIO);
	Linker.link(g_file_parse_name, "g_file_parse_name", LIBRARY_GIO);
	Linker.link(g_file_append_to, "g_file_append_to", LIBRARY_GIO);
	Linker.link(g_file_append_to_async, "g_file_append_to_async", LIBRARY_GIO);
	Linker.link(g_file_append_to_finish, "g_file_append_to_finish", LIBRARY_GIO);
	Linker.link(g_file_build_attribute_list_for_copy, "g_file_build_attribute_list_for_copy", LIBRARY_GIO);
	Linker.link(g_file_copy, "g_file_copy", LIBRARY_GIO);
	Linker.link(g_file_copy_async, "g_file_copy_async", LIBRARY_GIO);
	Linker.link(g_file_copy_attributes, "g_file_copy_attributes", LIBRARY_GIO);
	Linker.link(g_file_copy_finish, "g_file_copy_finish", LIBRARY_GIO);
	Linker.link(g_file_create, "g_file_create", LIBRARY_GIO);
	Linker.link(g_file_create_async, "g_file_create_async", LIBRARY_GIO);
	Linker.link(g_file_create_finish, "g_file_create_finish", LIBRARY_GIO);
	Linker.link(g_file_create_readwrite, "g_file_create_readwrite", LIBRARY_GIO);
	Linker.link(g_file_create_readwrite_async, "g_file_create_readwrite_async", LIBRARY_GIO);
	Linker.link(g_file_create_readwrite_finish, "g_file_create_readwrite_finish", LIBRARY_GIO);
	Linker.link(g_file_delete, "g_file_delete", LIBRARY_GIO);
	Linker.link(g_file_delete_async, "g_file_delete_async", LIBRARY_GIO);
	Linker.link(g_file_delete_finish, "g_file_delete_finish", LIBRARY_GIO);
	Linker.link(g_file_dup, "g_file_dup", LIBRARY_GIO);
	Linker.link(g_file_eject_mountable, "g_file_eject_mountable", LIBRARY_GIO);
	Linker.link(g_file_eject_mountable_finish, "g_file_eject_mountable_finish", LIBRARY_GIO);
	Linker.link(g_file_eject_mountable_with_operation, "g_file_eject_mountable_with_operation", LIBRARY_GIO);
	Linker.link(g_file_eject_mountable_with_operation_finish, "g_file_eject_mountable_with_operation_finish", LIBRARY_GIO);
	Linker.link(g_file_enumerate_children, "g_file_enumerate_children", LIBRARY_GIO);
	Linker.link(g_file_enumerate_children_async, "g_file_enumerate_children_async", LIBRARY_GIO);
	Linker.link(g_file_enumerate_children_finish, "g_file_enumerate_children_finish", LIBRARY_GIO);
	Linker.link(g_file_equal, "g_file_equal", LIBRARY_GIO);
	Linker.link(g_file_find_enclosing_mount, "g_file_find_enclosing_mount", LIBRARY_GIO);
	Linker.link(g_file_find_enclosing_mount_async, "g_file_find_enclosing_mount_async", LIBRARY_GIO);
	Linker.link(g_file_find_enclosing_mount_finish, "g_file_find_enclosing_mount_finish", LIBRARY_GIO);
	Linker.link(g_file_get_basename, "g_file_get_basename", LIBRARY_GIO);
	Linker.link(g_file_get_child, "g_file_get_child", LIBRARY_GIO);
	Linker.link(g_file_get_child_for_display_name, "g_file_get_child_for_display_name", LIBRARY_GIO);
	Linker.link(g_file_get_parent, "g_file_get_parent", LIBRARY_GIO);
	Linker.link(g_file_get_parse_name, "g_file_get_parse_name", LIBRARY_GIO);
	Linker.link(g_file_get_path, "g_file_get_path", LIBRARY_GIO);
	Linker.link(g_file_get_relative_path, "g_file_get_relative_path", LIBRARY_GIO);
	Linker.link(g_file_get_uri, "g_file_get_uri", LIBRARY_GIO);
	Linker.link(g_file_get_uri_scheme, "g_file_get_uri_scheme", LIBRARY_GIO);
	Linker.link(g_file_has_parent, "g_file_has_parent", LIBRARY_GIO);
	Linker.link(g_file_has_prefix, "g_file_has_prefix", LIBRARY_GIO);
	Linker.link(g_file_has_uri_scheme, "g_file_has_uri_scheme", LIBRARY_GIO);
	Linker.link(g_file_hash, "g_file_hash", LIBRARY_GIO);
	Linker.link(g_file_is_native, "g_file_is_native", LIBRARY_GIO);
	Linker.link(g_file_load_bytes, "g_file_load_bytes", LIBRARY_GIO);
	Linker.link(g_file_load_bytes_async, "g_file_load_bytes_async", LIBRARY_GIO);
	Linker.link(g_file_load_bytes_finish, "g_file_load_bytes_finish", LIBRARY_GIO);
	Linker.link(g_file_load_contents, "g_file_load_contents", LIBRARY_GIO);
	Linker.link(g_file_load_contents_async, "g_file_load_contents_async", LIBRARY_GIO);
	Linker.link(g_file_load_contents_finish, "g_file_load_contents_finish", LIBRARY_GIO);
	Linker.link(g_file_load_partial_contents_async, "g_file_load_partial_contents_async", LIBRARY_GIO);
	Linker.link(g_file_load_partial_contents_finish, "g_file_load_partial_contents_finish", LIBRARY_GIO);
	Linker.link(g_file_make_directory, "g_file_make_directory", LIBRARY_GIO);
	Linker.link(g_file_make_directory_async, "g_file_make_directory_async", LIBRARY_GIO);
	Linker.link(g_file_make_directory_finish, "g_file_make_directory_finish", LIBRARY_GIO);
	Linker.link(g_file_make_directory_with_parents, "g_file_make_directory_with_parents", LIBRARY_GIO);
	Linker.link(g_file_make_symbolic_link, "g_file_make_symbolic_link", LIBRARY_GIO);
	Linker.link(g_file_measure_disk_usage, "g_file_measure_disk_usage", LIBRARY_GIO);
	Linker.link(g_file_measure_disk_usage_async, "g_file_measure_disk_usage_async", LIBRARY_GIO);
	Linker.link(g_file_measure_disk_usage_finish, "g_file_measure_disk_usage_finish", LIBRARY_GIO);
	Linker.link(g_file_monitor, "g_file_monitor", LIBRARY_GIO);
	Linker.link(g_file_monitor_directory, "g_file_monitor_directory", LIBRARY_GIO);
	Linker.link(g_file_monitor_file, "g_file_monitor_file", LIBRARY_GIO);
	Linker.link(g_file_mount_enclosing_volume, "g_file_mount_enclosing_volume", LIBRARY_GIO);
	Linker.link(g_file_mount_enclosing_volume_finish, "g_file_mount_enclosing_volume_finish", LIBRARY_GIO);
	Linker.link(g_file_mount_mountable, "g_file_mount_mountable", LIBRARY_GIO);
	Linker.link(g_file_mount_mountable_finish, "g_file_mount_mountable_finish", LIBRARY_GIO);
	Linker.link(g_file_move, "g_file_move", LIBRARY_GIO);
	Linker.link(g_file_move_async, "g_file_move_async", LIBRARY_GIO);
	Linker.link(g_file_move_finish, "g_file_move_finish", LIBRARY_GIO);
	Linker.link(g_file_open_readwrite, "g_file_open_readwrite", LIBRARY_GIO);
	Linker.link(g_file_open_readwrite_async, "g_file_open_readwrite_async", LIBRARY_GIO);
	Linker.link(g_file_open_readwrite_finish, "g_file_open_readwrite_finish", LIBRARY_GIO);
	Linker.link(g_file_peek_path, "g_file_peek_path", LIBRARY_GIO);
	Linker.link(g_file_poll_mountable, "g_file_poll_mountable", LIBRARY_GIO);
	Linker.link(g_file_poll_mountable_finish, "g_file_poll_mountable_finish", LIBRARY_GIO);
	Linker.link(g_file_query_default_handler, "g_file_query_default_handler", LIBRARY_GIO);
	Linker.link(g_file_query_default_handler_async, "g_file_query_default_handler_async", LIBRARY_GIO);
	Linker.link(g_file_query_default_handler_finish, "g_file_query_default_handler_finish", LIBRARY_GIO);
	Linker.link(g_file_query_exists, "g_file_query_exists", LIBRARY_GIO);
	Linker.link(g_file_query_file_type, "g_file_query_file_type", LIBRARY_GIO);
	Linker.link(g_file_query_filesystem_info, "g_file_query_filesystem_info", LIBRARY_GIO);
	Linker.link(g_file_query_filesystem_info_async, "g_file_query_filesystem_info_async", LIBRARY_GIO);
	Linker.link(g_file_query_filesystem_info_finish, "g_file_query_filesystem_info_finish", LIBRARY_GIO);
	Linker.link(g_file_query_info, "g_file_query_info", LIBRARY_GIO);
	Linker.link(g_file_query_info_async, "g_file_query_info_async", LIBRARY_GIO);
	Linker.link(g_file_query_info_finish, "g_file_query_info_finish", LIBRARY_GIO);
	Linker.link(g_file_query_settable_attributes, "g_file_query_settable_attributes", LIBRARY_GIO);
	Linker.link(g_file_query_writable_namespaces, "g_file_query_writable_namespaces", LIBRARY_GIO);
	Linker.link(g_file_read, "g_file_read", LIBRARY_GIO);
	Linker.link(g_file_read_async, "g_file_read_async", LIBRARY_GIO);
	Linker.link(g_file_read_finish, "g_file_read_finish", LIBRARY_GIO);
	Linker.link(g_file_replace, "g_file_replace", LIBRARY_GIO);
	Linker.link(g_file_replace_async, "g_file_replace_async", LIBRARY_GIO);
	Linker.link(g_file_replace_contents, "g_file_replace_contents", LIBRARY_GIO);
	Linker.link(g_file_replace_contents_async, "g_file_replace_contents_async", LIBRARY_GIO);
	Linker.link(g_file_replace_contents_bytes_async, "g_file_replace_contents_bytes_async", LIBRARY_GIO);
	Linker.link(g_file_replace_contents_finish, "g_file_replace_contents_finish", LIBRARY_GIO);
	Linker.link(g_file_replace_finish, "g_file_replace_finish", LIBRARY_GIO);
	Linker.link(g_file_replace_readwrite, "g_file_replace_readwrite", LIBRARY_GIO);
	Linker.link(g_file_replace_readwrite_async, "g_file_replace_readwrite_async", LIBRARY_GIO);
	Linker.link(g_file_replace_readwrite_finish, "g_file_replace_readwrite_finish", LIBRARY_GIO);
	Linker.link(g_file_resolve_relative_path, "g_file_resolve_relative_path", LIBRARY_GIO);
	Linker.link(g_file_set_attribute, "g_file_set_attribute", LIBRARY_GIO);
	Linker.link(g_file_set_attribute_byte_string, "g_file_set_attribute_byte_string", LIBRARY_GIO);
	Linker.link(g_file_set_attribute_int32, "g_file_set_attribute_int32", LIBRARY_GIO);
	Linker.link(g_file_set_attribute_int64, "g_file_set_attribute_int64", LIBRARY_GIO);
	Linker.link(g_file_set_attribute_string, "g_file_set_attribute_string", LIBRARY_GIO);
	Linker.link(g_file_set_attribute_uint32, "g_file_set_attribute_uint32", LIBRARY_GIO);
	Linker.link(g_file_set_attribute_uint64, "g_file_set_attribute_uint64", LIBRARY_GIO);
	Linker.link(g_file_set_attributes_async, "g_file_set_attributes_async", LIBRARY_GIO);
	Linker.link(g_file_set_attributes_finish, "g_file_set_attributes_finish", LIBRARY_GIO);
	Linker.link(g_file_set_attributes_from_info, "g_file_set_attributes_from_info", LIBRARY_GIO);
	Linker.link(g_file_set_display_name, "g_file_set_display_name", LIBRARY_GIO);
	Linker.link(g_file_set_display_name_async, "g_file_set_display_name_async", LIBRARY_GIO);
	Linker.link(g_file_set_display_name_finish, "g_file_set_display_name_finish", LIBRARY_GIO);
	Linker.link(g_file_start_mountable, "g_file_start_mountable", LIBRARY_GIO);
	Linker.link(g_file_start_mountable_finish, "g_file_start_mountable_finish", LIBRARY_GIO);
	Linker.link(g_file_stop_mountable, "g_file_stop_mountable", LIBRARY_GIO);
	Linker.link(g_file_stop_mountable_finish, "g_file_stop_mountable_finish", LIBRARY_GIO);
	Linker.link(g_file_supports_thread_contexts, "g_file_supports_thread_contexts", LIBRARY_GIO);
	Linker.link(g_file_trash, "g_file_trash", LIBRARY_GIO);
	Linker.link(g_file_trash_async, "g_file_trash_async", LIBRARY_GIO);
	Linker.link(g_file_trash_finish, "g_file_trash_finish", LIBRARY_GIO);
	Linker.link(g_file_unmount_mountable, "g_file_unmount_mountable", LIBRARY_GIO);
	Linker.link(g_file_unmount_mountable_finish, "g_file_unmount_mountable_finish", LIBRARY_GIO);
	Linker.link(g_file_unmount_mountable_with_operation, "g_file_unmount_mountable_with_operation", LIBRARY_GIO);
	Linker.link(g_file_unmount_mountable_with_operation_finish, "g_file_unmount_mountable_with_operation_finish", LIBRARY_GIO);

	// gio.FileAttributeInfoList

	Linker.link(g_file_attribute_info_list_get_type, "g_file_attribute_info_list_get_type", LIBRARY_GIO);
	Linker.link(g_file_attribute_info_list_new, "g_file_attribute_info_list_new", LIBRARY_GIO);
	Linker.link(g_file_attribute_info_list_add, "g_file_attribute_info_list_add", LIBRARY_GIO);
	Linker.link(g_file_attribute_info_list_dup, "g_file_attribute_info_list_dup", LIBRARY_GIO);
	Linker.link(g_file_attribute_info_list_lookup, "g_file_attribute_info_list_lookup", LIBRARY_GIO);
	Linker.link(g_file_attribute_info_list_ref, "g_file_attribute_info_list_ref", LIBRARY_GIO);
	Linker.link(g_file_attribute_info_list_unref, "g_file_attribute_info_list_unref", LIBRARY_GIO);

	// gio.FileAttributeMatcher

	Linker.link(g_file_attribute_matcher_get_type, "g_file_attribute_matcher_get_type", LIBRARY_GIO);
	Linker.link(g_file_attribute_matcher_new, "g_file_attribute_matcher_new", LIBRARY_GIO);
	Linker.link(g_file_attribute_matcher_enumerate_namespace, "g_file_attribute_matcher_enumerate_namespace", LIBRARY_GIO);
	Linker.link(g_file_attribute_matcher_enumerate_next, "g_file_attribute_matcher_enumerate_next", LIBRARY_GIO);
	Linker.link(g_file_attribute_matcher_matches, "g_file_attribute_matcher_matches", LIBRARY_GIO);
	Linker.link(g_file_attribute_matcher_matches_only, "g_file_attribute_matcher_matches_only", LIBRARY_GIO);
	Linker.link(g_file_attribute_matcher_ref, "g_file_attribute_matcher_ref", LIBRARY_GIO);
	Linker.link(g_file_attribute_matcher_subtract, "g_file_attribute_matcher_subtract", LIBRARY_GIO);
	Linker.link(g_file_attribute_matcher_to_string, "g_file_attribute_matcher_to_string", LIBRARY_GIO);
	Linker.link(g_file_attribute_matcher_unref, "g_file_attribute_matcher_unref", LIBRARY_GIO);

	// gio.FileDescriptorBased

	Linker.link(g_file_descriptor_based_get_type, "g_file_descriptor_based_get_type", LIBRARY_GIO);
	Linker.link(g_file_descriptor_based_get_fd, "g_file_descriptor_based_get_fd", LIBRARY_GIO);

	// gio.FileEnumerator

	Linker.link(g_file_enumerator_get_type, "g_file_enumerator_get_type", LIBRARY_GIO);
	Linker.link(g_file_enumerator_close, "g_file_enumerator_close", LIBRARY_GIO);
	Linker.link(g_file_enumerator_close_async, "g_file_enumerator_close_async", LIBRARY_GIO);
	Linker.link(g_file_enumerator_close_finish, "g_file_enumerator_close_finish", LIBRARY_GIO);
	Linker.link(g_file_enumerator_get_child, "g_file_enumerator_get_child", LIBRARY_GIO);
	Linker.link(g_file_enumerator_get_container, "g_file_enumerator_get_container", LIBRARY_GIO);
	Linker.link(g_file_enumerator_has_pending, "g_file_enumerator_has_pending", LIBRARY_GIO);
	Linker.link(g_file_enumerator_is_closed, "g_file_enumerator_is_closed", LIBRARY_GIO);
	Linker.link(g_file_enumerator_iterate, "g_file_enumerator_iterate", LIBRARY_GIO);
	Linker.link(g_file_enumerator_next_file, "g_file_enumerator_next_file", LIBRARY_GIO);
	Linker.link(g_file_enumerator_next_files_async, "g_file_enumerator_next_files_async", LIBRARY_GIO);
	Linker.link(g_file_enumerator_next_files_finish, "g_file_enumerator_next_files_finish", LIBRARY_GIO);
	Linker.link(g_file_enumerator_set_pending, "g_file_enumerator_set_pending", LIBRARY_GIO);

	// gio.FileIOStream

	Linker.link(g_file_io_stream_get_type, "g_file_io_stream_get_type", LIBRARY_GIO);
	Linker.link(g_file_io_stream_get_etag, "g_file_io_stream_get_etag", LIBRARY_GIO);
	Linker.link(g_file_io_stream_query_info, "g_file_io_stream_query_info", LIBRARY_GIO);
	Linker.link(g_file_io_stream_query_info_async, "g_file_io_stream_query_info_async", LIBRARY_GIO);
	Linker.link(g_file_io_stream_query_info_finish, "g_file_io_stream_query_info_finish", LIBRARY_GIO);

	// gio.FileIcon

	Linker.link(g_file_icon_get_type, "g_file_icon_get_type", LIBRARY_GIO);
	Linker.link(g_file_icon_new, "g_file_icon_new", LIBRARY_GIO);
	Linker.link(g_file_icon_get_file, "g_file_icon_get_file", LIBRARY_GIO);

	// gio.FileInfo

	Linker.link(g_file_info_get_type, "g_file_info_get_type", LIBRARY_GIO);
	Linker.link(g_file_info_new, "g_file_info_new", LIBRARY_GIO);
	Linker.link(g_file_info_clear_status, "g_file_info_clear_status", LIBRARY_GIO);
	Linker.link(g_file_info_copy_into, "g_file_info_copy_into", LIBRARY_GIO);
	Linker.link(g_file_info_dup, "g_file_info_dup", LIBRARY_GIO);
	Linker.link(g_file_info_get_access_date_time, "g_file_info_get_access_date_time", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_as_string, "g_file_info_get_attribute_as_string", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_boolean, "g_file_info_get_attribute_boolean", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_byte_string, "g_file_info_get_attribute_byte_string", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_data, "g_file_info_get_attribute_data", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_int32, "g_file_info_get_attribute_int32", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_int64, "g_file_info_get_attribute_int64", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_object, "g_file_info_get_attribute_object", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_status, "g_file_info_get_attribute_status", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_string, "g_file_info_get_attribute_string", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_stringv, "g_file_info_get_attribute_stringv", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_type, "g_file_info_get_attribute_type", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_uint32, "g_file_info_get_attribute_uint32", LIBRARY_GIO);
	Linker.link(g_file_info_get_attribute_uint64, "g_file_info_get_attribute_uint64", LIBRARY_GIO);
	Linker.link(g_file_info_get_content_type, "g_file_info_get_content_type", LIBRARY_GIO);
	Linker.link(g_file_info_get_creation_date_time, "g_file_info_get_creation_date_time", LIBRARY_GIO);
	Linker.link(g_file_info_get_deletion_date, "g_file_info_get_deletion_date", LIBRARY_GIO);
	Linker.link(g_file_info_get_display_name, "g_file_info_get_display_name", LIBRARY_GIO);
	Linker.link(g_file_info_get_edit_name, "g_file_info_get_edit_name", LIBRARY_GIO);
	Linker.link(g_file_info_get_etag, "g_file_info_get_etag", LIBRARY_GIO);
	Linker.link(g_file_info_get_file_type, "g_file_info_get_file_type", LIBRARY_GIO);
	Linker.link(g_file_info_get_icon, "g_file_info_get_icon", LIBRARY_GIO);
	Linker.link(g_file_info_get_is_backup, "g_file_info_get_is_backup", LIBRARY_GIO);
	Linker.link(g_file_info_get_is_hidden, "g_file_info_get_is_hidden", LIBRARY_GIO);
	Linker.link(g_file_info_get_is_symlink, "g_file_info_get_is_symlink", LIBRARY_GIO);
	Linker.link(g_file_info_get_modification_date_time, "g_file_info_get_modification_date_time", LIBRARY_GIO);
	Linker.link(g_file_info_get_modification_time, "g_file_info_get_modification_time", LIBRARY_GIO);
	Linker.link(g_file_info_get_name, "g_file_info_get_name", LIBRARY_GIO);
	Linker.link(g_file_info_get_size, "g_file_info_get_size", LIBRARY_GIO);
	Linker.link(g_file_info_get_sort_order, "g_file_info_get_sort_order", LIBRARY_GIO);
	Linker.link(g_file_info_get_symbolic_icon, "g_file_info_get_symbolic_icon", LIBRARY_GIO);
	Linker.link(g_file_info_get_symlink_target, "g_file_info_get_symlink_target", LIBRARY_GIO);
	Linker.link(g_file_info_has_attribute, "g_file_info_has_attribute", LIBRARY_GIO);
	Linker.link(g_file_info_has_namespace, "g_file_info_has_namespace", LIBRARY_GIO);
	Linker.link(g_file_info_list_attributes, "g_file_info_list_attributes", LIBRARY_GIO);
	Linker.link(g_file_info_remove_attribute, "g_file_info_remove_attribute", LIBRARY_GIO);
	Linker.link(g_file_info_set_access_date_time, "g_file_info_set_access_date_time", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute, "g_file_info_set_attribute", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_boolean, "g_file_info_set_attribute_boolean", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_byte_string, "g_file_info_set_attribute_byte_string", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_int32, "g_file_info_set_attribute_int32", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_int64, "g_file_info_set_attribute_int64", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_mask, "g_file_info_set_attribute_mask", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_object, "g_file_info_set_attribute_object", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_status, "g_file_info_set_attribute_status", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_string, "g_file_info_set_attribute_string", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_stringv, "g_file_info_set_attribute_stringv", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_uint32, "g_file_info_set_attribute_uint32", LIBRARY_GIO);
	Linker.link(g_file_info_set_attribute_uint64, "g_file_info_set_attribute_uint64", LIBRARY_GIO);
	Linker.link(g_file_info_set_content_type, "g_file_info_set_content_type", LIBRARY_GIO);
	Linker.link(g_file_info_set_creation_date_time, "g_file_info_set_creation_date_time", LIBRARY_GIO);
	Linker.link(g_file_info_set_display_name, "g_file_info_set_display_name", LIBRARY_GIO);
	Linker.link(g_file_info_set_edit_name, "g_file_info_set_edit_name", LIBRARY_GIO);
	Linker.link(g_file_info_set_file_type, "g_file_info_set_file_type", LIBRARY_GIO);
	Linker.link(g_file_info_set_icon, "g_file_info_set_icon", LIBRARY_GIO);
	Linker.link(g_file_info_set_is_hidden, "g_file_info_set_is_hidden", LIBRARY_GIO);
	Linker.link(g_file_info_set_is_symlink, "g_file_info_set_is_symlink", LIBRARY_GIO);
	Linker.link(g_file_info_set_modification_date_time, "g_file_info_set_modification_date_time", LIBRARY_GIO);
	Linker.link(g_file_info_set_modification_time, "g_file_info_set_modification_time", LIBRARY_GIO);
	Linker.link(g_file_info_set_name, "g_file_info_set_name", LIBRARY_GIO);
	Linker.link(g_file_info_set_size, "g_file_info_set_size", LIBRARY_GIO);
	Linker.link(g_file_info_set_sort_order, "g_file_info_set_sort_order", LIBRARY_GIO);
	Linker.link(g_file_info_set_symbolic_icon, "g_file_info_set_symbolic_icon", LIBRARY_GIO);
	Linker.link(g_file_info_set_symlink_target, "g_file_info_set_symlink_target", LIBRARY_GIO);
	Linker.link(g_file_info_unset_attribute_mask, "g_file_info_unset_attribute_mask", LIBRARY_GIO);

	// gio.FileInputStream

	Linker.link(g_file_input_stream_get_type, "g_file_input_stream_get_type", LIBRARY_GIO);
	Linker.link(g_file_input_stream_query_info, "g_file_input_stream_query_info", LIBRARY_GIO);
	Linker.link(g_file_input_stream_query_info_async, "g_file_input_stream_query_info_async", LIBRARY_GIO);
	Linker.link(g_file_input_stream_query_info_finish, "g_file_input_stream_query_info_finish", LIBRARY_GIO);

	// gio.FileMonitor

	Linker.link(g_file_monitor_get_type, "g_file_monitor_get_type", LIBRARY_GIO);
	Linker.link(g_file_monitor_cancel, "g_file_monitor_cancel", LIBRARY_GIO);
	Linker.link(g_file_monitor_emit_event, "g_file_monitor_emit_event", LIBRARY_GIO);
	Linker.link(g_file_monitor_is_cancelled, "g_file_monitor_is_cancelled", LIBRARY_GIO);
	Linker.link(g_file_monitor_set_rate_limit, "g_file_monitor_set_rate_limit", LIBRARY_GIO);

	// gio.FileOutputStream

	Linker.link(g_file_output_stream_get_type, "g_file_output_stream_get_type", LIBRARY_GIO);
	Linker.link(g_file_output_stream_get_etag, "g_file_output_stream_get_etag", LIBRARY_GIO);
	Linker.link(g_file_output_stream_query_info, "g_file_output_stream_query_info", LIBRARY_GIO);
	Linker.link(g_file_output_stream_query_info_async, "g_file_output_stream_query_info_async", LIBRARY_GIO);
	Linker.link(g_file_output_stream_query_info_finish, "g_file_output_stream_query_info_finish", LIBRARY_GIO);

	// gio.FilenameCompleter

	Linker.link(g_filename_completer_get_type, "g_filename_completer_get_type", LIBRARY_GIO);
	Linker.link(g_filename_completer_new, "g_filename_completer_new", LIBRARY_GIO);
	Linker.link(g_filename_completer_get_completion_suffix, "g_filename_completer_get_completion_suffix", LIBRARY_GIO);
	Linker.link(g_filename_completer_get_completions, "g_filename_completer_get_completions", LIBRARY_GIO);
	Linker.link(g_filename_completer_set_dirs_only, "g_filename_completer_set_dirs_only", LIBRARY_GIO);

	// gio.FilterInputStream

	Linker.link(g_filter_input_stream_get_type, "g_filter_input_stream_get_type", LIBRARY_GIO);
	Linker.link(g_filter_input_stream_get_base_stream, "g_filter_input_stream_get_base_stream", LIBRARY_GIO);
	Linker.link(g_filter_input_stream_get_close_base_stream, "g_filter_input_stream_get_close_base_stream", LIBRARY_GIO);
	Linker.link(g_filter_input_stream_set_close_base_stream, "g_filter_input_stream_set_close_base_stream", LIBRARY_GIO);

	// gio.FilterOutputStream

	Linker.link(g_filter_output_stream_get_type, "g_filter_output_stream_get_type", LIBRARY_GIO);
	Linker.link(g_filter_output_stream_get_base_stream, "g_filter_output_stream_get_base_stream", LIBRARY_GIO);
	Linker.link(g_filter_output_stream_get_close_base_stream, "g_filter_output_stream_get_close_base_stream", LIBRARY_GIO);
	Linker.link(g_filter_output_stream_set_close_base_stream, "g_filter_output_stream_set_close_base_stream", LIBRARY_GIO);

	// gio.IOExtension

	Linker.link(g_io_extension_get_name, "g_io_extension_get_name", LIBRARY_GIO);
	Linker.link(g_io_extension_get_priority, "g_io_extension_get_priority", LIBRARY_GIO);
	Linker.link(g_io_extension_get_type, "g_io_extension_get_type", LIBRARY_GIO);
	Linker.link(g_io_extension_ref_class, "g_io_extension_ref_class", LIBRARY_GIO);

	// gio.IOExtensionPoint

	Linker.link(g_io_extension_point_get_extension_by_name, "g_io_extension_point_get_extension_by_name", LIBRARY_GIO);
	Linker.link(g_io_extension_point_get_extensions, "g_io_extension_point_get_extensions", LIBRARY_GIO);
	Linker.link(g_io_extension_point_get_required_type, "g_io_extension_point_get_required_type", LIBRARY_GIO);
	Linker.link(g_io_extension_point_set_required_type, "g_io_extension_point_set_required_type", LIBRARY_GIO);
	Linker.link(g_io_extension_point_implement, "g_io_extension_point_implement", LIBRARY_GIO);
	Linker.link(g_io_extension_point_lookup, "g_io_extension_point_lookup", LIBRARY_GIO);
	Linker.link(g_io_extension_point_register, "g_io_extension_point_register", LIBRARY_GIO);

	// gio.IOModule

	Linker.link(g_io_module_get_type, "g_io_module_get_type", LIBRARY_GIO);
	Linker.link(g_io_module_new, "g_io_module_new", LIBRARY_GIO);
	Linker.link(g_io_modules_load_all_in_directory, "g_io_modules_load_all_in_directory", LIBRARY_GIO);
	Linker.link(g_io_modules_load_all_in_directory_with_scope, "g_io_modules_load_all_in_directory_with_scope", LIBRARY_GIO);
	Linker.link(g_io_modules_scan_all_in_directory, "g_io_modules_scan_all_in_directory", LIBRARY_GIO);
	Linker.link(g_io_modules_scan_all_in_directory_with_scope, "g_io_modules_scan_all_in_directory_with_scope", LIBRARY_GIO);

	// gio.IOModuleScope

	Linker.link(g_io_module_scope_block, "g_io_module_scope_block", LIBRARY_GIO);
	Linker.link(g_io_module_scope_free, "g_io_module_scope_free", LIBRARY_GIO);
	Linker.link(g_io_module_scope_new, "g_io_module_scope_new", LIBRARY_GIO);

	// gio.IOSchedulerJob

	Linker.link(g_io_scheduler_job_send_to_mainloop, "g_io_scheduler_job_send_to_mainloop", LIBRARY_GIO);
	Linker.link(g_io_scheduler_job_send_to_mainloop_async, "g_io_scheduler_job_send_to_mainloop_async", LIBRARY_GIO);
	Linker.link(g_io_scheduler_cancel_all_jobs, "g_io_scheduler_cancel_all_jobs", LIBRARY_GIO);
	Linker.link(g_io_scheduler_push_job, "g_io_scheduler_push_job", LIBRARY_GIO);

	// gio.IOStream

	Linker.link(g_io_stream_get_type, "g_io_stream_get_type", LIBRARY_GIO);
	Linker.link(g_io_stream_splice_finish, "g_io_stream_splice_finish", LIBRARY_GIO);
	Linker.link(g_io_stream_clear_pending, "g_io_stream_clear_pending", LIBRARY_GIO);
	Linker.link(g_io_stream_close, "g_io_stream_close", LIBRARY_GIO);
	Linker.link(g_io_stream_close_async, "g_io_stream_close_async", LIBRARY_GIO);
	Linker.link(g_io_stream_close_finish, "g_io_stream_close_finish", LIBRARY_GIO);
	Linker.link(g_io_stream_get_input_stream, "g_io_stream_get_input_stream", LIBRARY_GIO);
	Linker.link(g_io_stream_get_output_stream, "g_io_stream_get_output_stream", LIBRARY_GIO);
	Linker.link(g_io_stream_has_pending, "g_io_stream_has_pending", LIBRARY_GIO);
	Linker.link(g_io_stream_is_closed, "g_io_stream_is_closed", LIBRARY_GIO);
	Linker.link(g_io_stream_set_pending, "g_io_stream_set_pending", LIBRARY_GIO);
	Linker.link(g_io_stream_splice_async, "g_io_stream_splice_async", LIBRARY_GIO);

	// gio.Icon

	Linker.link(g_icon_get_type, "g_icon_get_type", LIBRARY_GIO);
	Linker.link(g_icon_deserialize, "g_icon_deserialize", LIBRARY_GIO);
	Linker.link(g_icon_hash, "g_icon_hash", LIBRARY_GIO);
	Linker.link(g_icon_new_for_string, "g_icon_new_for_string", LIBRARY_GIO);
	Linker.link(g_icon_equal, "g_icon_equal", LIBRARY_GIO);
	Linker.link(g_icon_serialize, "g_icon_serialize", LIBRARY_GIO);
	Linker.link(g_icon_to_string, "g_icon_to_string", LIBRARY_GIO);

	// gio.InetAddress

	Linker.link(g_inet_address_get_type, "g_inet_address_get_type", LIBRARY_GIO);
	Linker.link(g_inet_address_new_any, "g_inet_address_new_any", LIBRARY_GIO);
	Linker.link(g_inet_address_new_from_bytes, "g_inet_address_new_from_bytes", LIBRARY_GIO);
	Linker.link(g_inet_address_new_from_string, "g_inet_address_new_from_string", LIBRARY_GIO);
	Linker.link(g_inet_address_new_loopback, "g_inet_address_new_loopback", LIBRARY_GIO);
	Linker.link(g_inet_address_equal, "g_inet_address_equal", LIBRARY_GIO);
	Linker.link(g_inet_address_get_family, "g_inet_address_get_family", LIBRARY_GIO);
	Linker.link(g_inet_address_get_is_any, "g_inet_address_get_is_any", LIBRARY_GIO);
	Linker.link(g_inet_address_get_is_link_local, "g_inet_address_get_is_link_local", LIBRARY_GIO);
	Linker.link(g_inet_address_get_is_loopback, "g_inet_address_get_is_loopback", LIBRARY_GIO);
	Linker.link(g_inet_address_get_is_mc_global, "g_inet_address_get_is_mc_global", LIBRARY_GIO);
	Linker.link(g_inet_address_get_is_mc_link_local, "g_inet_address_get_is_mc_link_local", LIBRARY_GIO);
	Linker.link(g_inet_address_get_is_mc_node_local, "g_inet_address_get_is_mc_node_local", LIBRARY_GIO);
	Linker.link(g_inet_address_get_is_mc_org_local, "g_inet_address_get_is_mc_org_local", LIBRARY_GIO);
	Linker.link(g_inet_address_get_is_mc_site_local, "g_inet_address_get_is_mc_site_local", LIBRARY_GIO);
	Linker.link(g_inet_address_get_is_multicast, "g_inet_address_get_is_multicast", LIBRARY_GIO);
	Linker.link(g_inet_address_get_is_site_local, "g_inet_address_get_is_site_local", LIBRARY_GIO);
	Linker.link(g_inet_address_get_native_size, "g_inet_address_get_native_size", LIBRARY_GIO);
	Linker.link(g_inet_address_to_bytes, "g_inet_address_to_bytes", LIBRARY_GIO);
	Linker.link(g_inet_address_to_string, "g_inet_address_to_string", LIBRARY_GIO);

	// gio.InetAddressMask

	Linker.link(g_inet_address_mask_get_type, "g_inet_address_mask_get_type", LIBRARY_GIO);
	Linker.link(g_inet_address_mask_new, "g_inet_address_mask_new", LIBRARY_GIO);
	Linker.link(g_inet_address_mask_new_from_string, "g_inet_address_mask_new_from_string", LIBRARY_GIO);
	Linker.link(g_inet_address_mask_equal, "g_inet_address_mask_equal", LIBRARY_GIO);
	Linker.link(g_inet_address_mask_get_address, "g_inet_address_mask_get_address", LIBRARY_GIO);
	Linker.link(g_inet_address_mask_get_family, "g_inet_address_mask_get_family", LIBRARY_GIO);
	Linker.link(g_inet_address_mask_get_length, "g_inet_address_mask_get_length", LIBRARY_GIO);
	Linker.link(g_inet_address_mask_matches, "g_inet_address_mask_matches", LIBRARY_GIO);
	Linker.link(g_inet_address_mask_to_string, "g_inet_address_mask_to_string", LIBRARY_GIO);

	// gio.InetSocketAddress

	Linker.link(g_inet_socket_address_get_type, "g_inet_socket_address_get_type", LIBRARY_GIO);
	Linker.link(g_inet_socket_address_new, "g_inet_socket_address_new", LIBRARY_GIO);
	Linker.link(g_inet_socket_address_new_from_string, "g_inet_socket_address_new_from_string", LIBRARY_GIO);
	Linker.link(g_inet_socket_address_get_address, "g_inet_socket_address_get_address", LIBRARY_GIO);
	Linker.link(g_inet_socket_address_get_flowinfo, "g_inet_socket_address_get_flowinfo", LIBRARY_GIO);
	Linker.link(g_inet_socket_address_get_port, "g_inet_socket_address_get_port", LIBRARY_GIO);
	Linker.link(g_inet_socket_address_get_scope_id, "g_inet_socket_address_get_scope_id", LIBRARY_GIO);

	// gio.Initable

	Linker.link(g_initable_get_type, "g_initable_get_type", LIBRARY_GIO);
	Linker.link(g_initable_new, "g_initable_new", LIBRARY_GIO);
	Linker.link(g_initable_new_valist, "g_initable_new_valist", LIBRARY_GIO);
	Linker.link(g_initable_newv, "g_initable_newv", LIBRARY_GIO);
	Linker.link(g_initable_init, "g_initable_init", LIBRARY_GIO);

	// gio.InputStream

	Linker.link(g_input_stream_get_type, "g_input_stream_get_type", LIBRARY_GIO);
	Linker.link(g_input_stream_clear_pending, "g_input_stream_clear_pending", LIBRARY_GIO);
	Linker.link(g_input_stream_close, "g_input_stream_close", LIBRARY_GIO);
	Linker.link(g_input_stream_close_async, "g_input_stream_close_async", LIBRARY_GIO);
	Linker.link(g_input_stream_close_finish, "g_input_stream_close_finish", LIBRARY_GIO);
	Linker.link(g_input_stream_has_pending, "g_input_stream_has_pending", LIBRARY_GIO);
	Linker.link(g_input_stream_is_closed, "g_input_stream_is_closed", LIBRARY_GIO);
	Linker.link(g_input_stream_read, "g_input_stream_read", LIBRARY_GIO);
	Linker.link(g_input_stream_read_all, "g_input_stream_read_all", LIBRARY_GIO);
	Linker.link(g_input_stream_read_all_async, "g_input_stream_read_all_async", LIBRARY_GIO);
	Linker.link(g_input_stream_read_all_finish, "g_input_stream_read_all_finish", LIBRARY_GIO);
	Linker.link(g_input_stream_read_async, "g_input_stream_read_async", LIBRARY_GIO);
	Linker.link(g_input_stream_read_bytes, "g_input_stream_read_bytes", LIBRARY_GIO);
	Linker.link(g_input_stream_read_bytes_async, "g_input_stream_read_bytes_async", LIBRARY_GIO);
	Linker.link(g_input_stream_read_bytes_finish, "g_input_stream_read_bytes_finish", LIBRARY_GIO);
	Linker.link(g_input_stream_read_finish, "g_input_stream_read_finish", LIBRARY_GIO);
	Linker.link(g_input_stream_set_pending, "g_input_stream_set_pending", LIBRARY_GIO);
	Linker.link(g_input_stream_skip, "g_input_stream_skip", LIBRARY_GIO);
	Linker.link(g_input_stream_skip_async, "g_input_stream_skip_async", LIBRARY_GIO);
	Linker.link(g_input_stream_skip_finish, "g_input_stream_skip_finish", LIBRARY_GIO);

	// gio.ListModel

	Linker.link(g_list_model_get_type, "g_list_model_get_type", LIBRARY_GIO);
	Linker.link(g_list_model_get_item, "g_list_model_get_item", LIBRARY_GIO);
	Linker.link(g_list_model_get_item_type, "g_list_model_get_item_type", LIBRARY_GIO);
	Linker.link(g_list_model_get_n_items, "g_list_model_get_n_items", LIBRARY_GIO);
	Linker.link(g_list_model_get_object, "g_list_model_get_object", LIBRARY_GIO);
	Linker.link(g_list_model_items_changed, "g_list_model_items_changed", LIBRARY_GIO);

	// gio.ListStore

	Linker.link(g_list_store_get_type, "g_list_store_get_type", LIBRARY_GIO);
	Linker.link(g_list_store_new, "g_list_store_new", LIBRARY_GIO);
	Linker.link(g_list_store_append, "g_list_store_append", LIBRARY_GIO);
	Linker.link(g_list_store_find, "g_list_store_find", LIBRARY_GIO);
	Linker.link(g_list_store_find_with_equal_func, "g_list_store_find_with_equal_func", LIBRARY_GIO);
	Linker.link(g_list_store_insert, "g_list_store_insert", LIBRARY_GIO);
	Linker.link(g_list_store_insert_sorted, "g_list_store_insert_sorted", LIBRARY_GIO);
	Linker.link(g_list_store_remove, "g_list_store_remove", LIBRARY_GIO);
	Linker.link(g_list_store_remove_all, "g_list_store_remove_all", LIBRARY_GIO);
	Linker.link(g_list_store_sort, "g_list_store_sort", LIBRARY_GIO);
	Linker.link(g_list_store_splice, "g_list_store_splice", LIBRARY_GIO);

	// gio.LoadableIcon

	Linker.link(g_loadable_icon_get_type, "g_loadable_icon_get_type", LIBRARY_GIO);
	Linker.link(g_loadable_icon_load, "g_loadable_icon_load", LIBRARY_GIO);
	Linker.link(g_loadable_icon_load_async, "g_loadable_icon_load_async", LIBRARY_GIO);
	Linker.link(g_loadable_icon_load_finish, "g_loadable_icon_load_finish", LIBRARY_GIO);

	// gio.MemoryInputStream

	Linker.link(g_memory_input_stream_get_type, "g_memory_input_stream_get_type", LIBRARY_GIO);
	Linker.link(g_memory_input_stream_new, "g_memory_input_stream_new", LIBRARY_GIO);
	Linker.link(g_memory_input_stream_new_from_bytes, "g_memory_input_stream_new_from_bytes", LIBRARY_GIO);
	Linker.link(g_memory_input_stream_new_from_data, "g_memory_input_stream_new_from_data", LIBRARY_GIO);
	Linker.link(g_memory_input_stream_add_bytes, "g_memory_input_stream_add_bytes", LIBRARY_GIO);
	Linker.link(g_memory_input_stream_add_data, "g_memory_input_stream_add_data", LIBRARY_GIO);

	// gio.MemoryMonitor

	Linker.link(g_memory_monitor_get_type, "g_memory_monitor_get_type", LIBRARY_GIO);
	Linker.link(g_memory_monitor_dup_default, "g_memory_monitor_dup_default", LIBRARY_GIO);

	// gio.MemoryOutputStream

	Linker.link(g_memory_output_stream_get_type, "g_memory_output_stream_get_type", LIBRARY_GIO);
	Linker.link(g_memory_output_stream_new, "g_memory_output_stream_new", LIBRARY_GIO);
	Linker.link(g_memory_output_stream_new_resizable, "g_memory_output_stream_new_resizable", LIBRARY_GIO);
	Linker.link(g_memory_output_stream_get_data, "g_memory_output_stream_get_data", LIBRARY_GIO);
	Linker.link(g_memory_output_stream_get_data_size, "g_memory_output_stream_get_data_size", LIBRARY_GIO);
	Linker.link(g_memory_output_stream_get_size, "g_memory_output_stream_get_size", LIBRARY_GIO);
	Linker.link(g_memory_output_stream_steal_as_bytes, "g_memory_output_stream_steal_as_bytes", LIBRARY_GIO);
	Linker.link(g_memory_output_stream_steal_data, "g_memory_output_stream_steal_data", LIBRARY_GIO);

	// gio.Menu

	Linker.link(g_menu_get_type, "g_menu_get_type", LIBRARY_GIO);
	Linker.link(g_menu_new, "g_menu_new", LIBRARY_GIO);
	Linker.link(g_menu_append, "g_menu_append", LIBRARY_GIO);
	Linker.link(g_menu_append_item, "g_menu_append_item", LIBRARY_GIO);
	Linker.link(g_menu_append_section, "g_menu_append_section", LIBRARY_GIO);
	Linker.link(g_menu_append_submenu, "g_menu_append_submenu", LIBRARY_GIO);
	Linker.link(g_menu_freeze, "g_menu_freeze", LIBRARY_GIO);
	Linker.link(g_menu_insert, "g_menu_insert", LIBRARY_GIO);
	Linker.link(g_menu_insert_item, "g_menu_insert_item", LIBRARY_GIO);
	Linker.link(g_menu_insert_section, "g_menu_insert_section", LIBRARY_GIO);
	Linker.link(g_menu_insert_submenu, "g_menu_insert_submenu", LIBRARY_GIO);
	Linker.link(g_menu_prepend, "g_menu_prepend", LIBRARY_GIO);
	Linker.link(g_menu_prepend_item, "g_menu_prepend_item", LIBRARY_GIO);
	Linker.link(g_menu_prepend_section, "g_menu_prepend_section", LIBRARY_GIO);
	Linker.link(g_menu_prepend_submenu, "g_menu_prepend_submenu", LIBRARY_GIO);
	Linker.link(g_menu_remove, "g_menu_remove", LIBRARY_GIO);
	Linker.link(g_menu_remove_all, "g_menu_remove_all", LIBRARY_GIO);

	// gio.MenuAttributeIter

	Linker.link(g_menu_attribute_iter_get_type, "g_menu_attribute_iter_get_type", LIBRARY_GIO);
	Linker.link(g_menu_attribute_iter_get_name, "g_menu_attribute_iter_get_name", LIBRARY_GIO);
	Linker.link(g_menu_attribute_iter_get_next, "g_menu_attribute_iter_get_next", LIBRARY_GIO);
	Linker.link(g_menu_attribute_iter_get_value, "g_menu_attribute_iter_get_value", LIBRARY_GIO);
	Linker.link(g_menu_attribute_iter_next, "g_menu_attribute_iter_next", LIBRARY_GIO);

	// gio.MenuItem

	Linker.link(g_menu_item_get_type, "g_menu_item_get_type", LIBRARY_GIO);
	Linker.link(g_menu_item_new, "g_menu_item_new", LIBRARY_GIO);
	Linker.link(g_menu_item_new_from_model, "g_menu_item_new_from_model", LIBRARY_GIO);
	Linker.link(g_menu_item_new_section, "g_menu_item_new_section", LIBRARY_GIO);
	Linker.link(g_menu_item_new_submenu, "g_menu_item_new_submenu", LIBRARY_GIO);
	Linker.link(g_menu_item_get_attribute, "g_menu_item_get_attribute", LIBRARY_GIO);
	Linker.link(g_menu_item_get_attribute_value, "g_menu_item_get_attribute_value", LIBRARY_GIO);
	Linker.link(g_menu_item_get_link, "g_menu_item_get_link", LIBRARY_GIO);
	Linker.link(g_menu_item_set_action_and_target, "g_menu_item_set_action_and_target", LIBRARY_GIO);
	Linker.link(g_menu_item_set_action_and_target_value, "g_menu_item_set_action_and_target_value", LIBRARY_GIO);
	Linker.link(g_menu_item_set_attribute, "g_menu_item_set_attribute", LIBRARY_GIO);
	Linker.link(g_menu_item_set_attribute_value, "g_menu_item_set_attribute_value", LIBRARY_GIO);
	Linker.link(g_menu_item_set_detailed_action, "g_menu_item_set_detailed_action", LIBRARY_GIO);
	Linker.link(g_menu_item_set_icon, "g_menu_item_set_icon", LIBRARY_GIO);
	Linker.link(g_menu_item_set_label, "g_menu_item_set_label", LIBRARY_GIO);
	Linker.link(g_menu_item_set_link, "g_menu_item_set_link", LIBRARY_GIO);
	Linker.link(g_menu_item_set_section, "g_menu_item_set_section", LIBRARY_GIO);
	Linker.link(g_menu_item_set_submenu, "g_menu_item_set_submenu", LIBRARY_GIO);

	// gio.MenuLinkIter

	Linker.link(g_menu_link_iter_get_type, "g_menu_link_iter_get_type", LIBRARY_GIO);
	Linker.link(g_menu_link_iter_get_name, "g_menu_link_iter_get_name", LIBRARY_GIO);
	Linker.link(g_menu_link_iter_get_next, "g_menu_link_iter_get_next", LIBRARY_GIO);
	Linker.link(g_menu_link_iter_get_value, "g_menu_link_iter_get_value", LIBRARY_GIO);
	Linker.link(g_menu_link_iter_next, "g_menu_link_iter_next", LIBRARY_GIO);

	// gio.MenuModel

	Linker.link(g_menu_model_get_type, "g_menu_model_get_type", LIBRARY_GIO);
	Linker.link(g_menu_model_get_item_attribute, "g_menu_model_get_item_attribute", LIBRARY_GIO);
	Linker.link(g_menu_model_get_item_attribute_value, "g_menu_model_get_item_attribute_value", LIBRARY_GIO);
	Linker.link(g_menu_model_get_item_link, "g_menu_model_get_item_link", LIBRARY_GIO);
	Linker.link(g_menu_model_get_n_items, "g_menu_model_get_n_items", LIBRARY_GIO);
	Linker.link(g_menu_model_is_mutable, "g_menu_model_is_mutable", LIBRARY_GIO);
	Linker.link(g_menu_model_items_changed, "g_menu_model_items_changed", LIBRARY_GIO);
	Linker.link(g_menu_model_iterate_item_attributes, "g_menu_model_iterate_item_attributes", LIBRARY_GIO);
	Linker.link(g_menu_model_iterate_item_links, "g_menu_model_iterate_item_links", LIBRARY_GIO);

	// gio.Mount

	Linker.link(g_mount_get_type, "g_mount_get_type", LIBRARY_GIO);
	Linker.link(g_mount_can_eject, "g_mount_can_eject", LIBRARY_GIO);
	Linker.link(g_mount_can_unmount, "g_mount_can_unmount", LIBRARY_GIO);
	Linker.link(g_mount_eject, "g_mount_eject", LIBRARY_GIO);
	Linker.link(g_mount_eject_finish, "g_mount_eject_finish", LIBRARY_GIO);
	Linker.link(g_mount_eject_with_operation, "g_mount_eject_with_operation", LIBRARY_GIO);
	Linker.link(g_mount_eject_with_operation_finish, "g_mount_eject_with_operation_finish", LIBRARY_GIO);
	Linker.link(g_mount_get_default_location, "g_mount_get_default_location", LIBRARY_GIO);
	Linker.link(g_mount_get_drive, "g_mount_get_drive", LIBRARY_GIO);
	Linker.link(g_mount_get_icon, "g_mount_get_icon", LIBRARY_GIO);
	Linker.link(g_mount_get_name, "g_mount_get_name", LIBRARY_GIO);
	Linker.link(g_mount_get_root, "g_mount_get_root", LIBRARY_GIO);
	Linker.link(g_mount_get_sort_key, "g_mount_get_sort_key", LIBRARY_GIO);
	Linker.link(g_mount_get_symbolic_icon, "g_mount_get_symbolic_icon", LIBRARY_GIO);
	Linker.link(g_mount_get_uuid, "g_mount_get_uuid", LIBRARY_GIO);
	Linker.link(g_mount_get_volume, "g_mount_get_volume", LIBRARY_GIO);
	Linker.link(g_mount_guess_content_type, "g_mount_guess_content_type", LIBRARY_GIO);
	Linker.link(g_mount_guess_content_type_finish, "g_mount_guess_content_type_finish", LIBRARY_GIO);
	Linker.link(g_mount_guess_content_type_sync, "g_mount_guess_content_type_sync", LIBRARY_GIO);
	Linker.link(g_mount_is_shadowed, "g_mount_is_shadowed", LIBRARY_GIO);
	Linker.link(g_mount_remount, "g_mount_remount", LIBRARY_GIO);
	Linker.link(g_mount_remount_finish, "g_mount_remount_finish", LIBRARY_GIO);
	Linker.link(g_mount_shadow, "g_mount_shadow", LIBRARY_GIO);
	Linker.link(g_mount_unmount, "g_mount_unmount", LIBRARY_GIO);
	Linker.link(g_mount_unmount_finish, "g_mount_unmount_finish", LIBRARY_GIO);
	Linker.link(g_mount_unmount_with_operation, "g_mount_unmount_with_operation", LIBRARY_GIO);
	Linker.link(g_mount_unmount_with_operation_finish, "g_mount_unmount_with_operation_finish", LIBRARY_GIO);
	Linker.link(g_mount_unshadow, "g_mount_unshadow", LIBRARY_GIO);

	// gio.MountOperation

	Linker.link(g_mount_operation_get_type, "g_mount_operation_get_type", LIBRARY_GIO);
	Linker.link(g_mount_operation_new, "g_mount_operation_new", LIBRARY_GIO);
	Linker.link(g_mount_operation_get_anonymous, "g_mount_operation_get_anonymous", LIBRARY_GIO);
	Linker.link(g_mount_operation_get_choice, "g_mount_operation_get_choice", LIBRARY_GIO);
	Linker.link(g_mount_operation_get_domain, "g_mount_operation_get_domain", LIBRARY_GIO);
	Linker.link(g_mount_operation_get_is_tcrypt_hidden_volume, "g_mount_operation_get_is_tcrypt_hidden_volume", LIBRARY_GIO);
	Linker.link(g_mount_operation_get_is_tcrypt_system_volume, "g_mount_operation_get_is_tcrypt_system_volume", LIBRARY_GIO);
	Linker.link(g_mount_operation_get_password, "g_mount_operation_get_password", LIBRARY_GIO);
	Linker.link(g_mount_operation_get_password_save, "g_mount_operation_get_password_save", LIBRARY_GIO);
	Linker.link(g_mount_operation_get_pim, "g_mount_operation_get_pim", LIBRARY_GIO);
	Linker.link(g_mount_operation_get_username, "g_mount_operation_get_username", LIBRARY_GIO);
	Linker.link(g_mount_operation_reply, "g_mount_operation_reply", LIBRARY_GIO);
	Linker.link(g_mount_operation_set_anonymous, "g_mount_operation_set_anonymous", LIBRARY_GIO);
	Linker.link(g_mount_operation_set_choice, "g_mount_operation_set_choice", LIBRARY_GIO);
	Linker.link(g_mount_operation_set_domain, "g_mount_operation_set_domain", LIBRARY_GIO);
	Linker.link(g_mount_operation_set_is_tcrypt_hidden_volume, "g_mount_operation_set_is_tcrypt_hidden_volume", LIBRARY_GIO);
	Linker.link(g_mount_operation_set_is_tcrypt_system_volume, "g_mount_operation_set_is_tcrypt_system_volume", LIBRARY_GIO);
	Linker.link(g_mount_operation_set_password, "g_mount_operation_set_password", LIBRARY_GIO);
	Linker.link(g_mount_operation_set_password_save, "g_mount_operation_set_password_save", LIBRARY_GIO);
	Linker.link(g_mount_operation_set_pim, "g_mount_operation_set_pim", LIBRARY_GIO);
	Linker.link(g_mount_operation_set_username, "g_mount_operation_set_username", LIBRARY_GIO);

	// gio.NativeSocketAddress

	Linker.link(g_native_socket_address_get_type, "g_native_socket_address_get_type", LIBRARY_GIO);
	Linker.link(g_native_socket_address_new, "g_native_socket_address_new", LIBRARY_GIO);

	// gio.NativeVolumeMonitor

	Linker.link(g_native_volume_monitor_get_type, "g_native_volume_monitor_get_type", LIBRARY_GIO);

	// gio.NetworkAddress

	Linker.link(g_network_address_get_type, "g_network_address_get_type", LIBRARY_GIO);
	Linker.link(g_network_address_new, "g_network_address_new", LIBRARY_GIO);
	Linker.link(g_network_address_new_loopback, "g_network_address_new_loopback", LIBRARY_GIO);
	Linker.link(g_network_address_parse, "g_network_address_parse", LIBRARY_GIO);
	Linker.link(g_network_address_parse_uri, "g_network_address_parse_uri", LIBRARY_GIO);
	Linker.link(g_network_address_get_hostname, "g_network_address_get_hostname", LIBRARY_GIO);
	Linker.link(g_network_address_get_port, "g_network_address_get_port", LIBRARY_GIO);
	Linker.link(g_network_address_get_scheme, "g_network_address_get_scheme", LIBRARY_GIO);

	// gio.NetworkMonitor

	Linker.link(g_network_monitor_get_type, "g_network_monitor_get_type", LIBRARY_GIO);
	Linker.link(g_network_monitor_get_default, "g_network_monitor_get_default", LIBRARY_GIO);
	Linker.link(g_network_monitor_can_reach, "g_network_monitor_can_reach", LIBRARY_GIO);
	Linker.link(g_network_monitor_can_reach_async, "g_network_monitor_can_reach_async", LIBRARY_GIO);
	Linker.link(g_network_monitor_can_reach_finish, "g_network_monitor_can_reach_finish", LIBRARY_GIO);
	Linker.link(g_network_monitor_get_connectivity, "g_network_monitor_get_connectivity", LIBRARY_GIO);
	Linker.link(g_network_monitor_get_network_available, "g_network_monitor_get_network_available", LIBRARY_GIO);
	Linker.link(g_network_monitor_get_network_metered, "g_network_monitor_get_network_metered", LIBRARY_GIO);

	// gio.NetworkService

	Linker.link(g_network_service_get_type, "g_network_service_get_type", LIBRARY_GIO);
	Linker.link(g_network_service_new, "g_network_service_new", LIBRARY_GIO);
	Linker.link(g_network_service_get_domain, "g_network_service_get_domain", LIBRARY_GIO);
	Linker.link(g_network_service_get_protocol, "g_network_service_get_protocol", LIBRARY_GIO);
	Linker.link(g_network_service_get_scheme, "g_network_service_get_scheme", LIBRARY_GIO);
	Linker.link(g_network_service_get_service, "g_network_service_get_service", LIBRARY_GIO);
	Linker.link(g_network_service_set_scheme, "g_network_service_set_scheme", LIBRARY_GIO);

	// gio.Notification

	Linker.link(g_notification_get_type, "g_notification_get_type", LIBRARY_GIO);
	Linker.link(g_notification_new, "g_notification_new", LIBRARY_GIO);
	Linker.link(g_notification_add_button, "g_notification_add_button", LIBRARY_GIO);
	Linker.link(g_notification_add_button_with_target, "g_notification_add_button_with_target", LIBRARY_GIO);
	Linker.link(g_notification_add_button_with_target_value, "g_notification_add_button_with_target_value", LIBRARY_GIO);
	Linker.link(g_notification_set_body, "g_notification_set_body", LIBRARY_GIO);
	Linker.link(g_notification_set_category, "g_notification_set_category", LIBRARY_GIO);
	Linker.link(g_notification_set_default_action, "g_notification_set_default_action", LIBRARY_GIO);
	Linker.link(g_notification_set_default_action_and_target, "g_notification_set_default_action_and_target", LIBRARY_GIO);
	Linker.link(g_notification_set_default_action_and_target_value, "g_notification_set_default_action_and_target_value", LIBRARY_GIO);
	Linker.link(g_notification_set_icon, "g_notification_set_icon", LIBRARY_GIO);
	Linker.link(g_notification_set_priority, "g_notification_set_priority", LIBRARY_GIO);
	Linker.link(g_notification_set_title, "g_notification_set_title", LIBRARY_GIO);
	Linker.link(g_notification_set_urgent, "g_notification_set_urgent", LIBRARY_GIO);

	// gio.OutputStream

	Linker.link(g_output_stream_get_type, "g_output_stream_get_type", LIBRARY_GIO);
	Linker.link(g_output_stream_clear_pending, "g_output_stream_clear_pending", LIBRARY_GIO);
	Linker.link(g_output_stream_close, "g_output_stream_close", LIBRARY_GIO);
	Linker.link(g_output_stream_close_async, "g_output_stream_close_async", LIBRARY_GIO);
	Linker.link(g_output_stream_close_finish, "g_output_stream_close_finish", LIBRARY_GIO);
	Linker.link(g_output_stream_flush, "g_output_stream_flush", LIBRARY_GIO);
	Linker.link(g_output_stream_flush_async, "g_output_stream_flush_async", LIBRARY_GIO);
	Linker.link(g_output_stream_flush_finish, "g_output_stream_flush_finish", LIBRARY_GIO);
	Linker.link(g_output_stream_has_pending, "g_output_stream_has_pending", LIBRARY_GIO);
	Linker.link(g_output_stream_is_closed, "g_output_stream_is_closed", LIBRARY_GIO);
	Linker.link(g_output_stream_is_closing, "g_output_stream_is_closing", LIBRARY_GIO);
	Linker.link(g_output_stream_printf, "g_output_stream_printf", LIBRARY_GIO);
	Linker.link(g_output_stream_set_pending, "g_output_stream_set_pending", LIBRARY_GIO);
	Linker.link(g_output_stream_splice, "g_output_stream_splice", LIBRARY_GIO);
	Linker.link(g_output_stream_splice_async, "g_output_stream_splice_async", LIBRARY_GIO);
	Linker.link(g_output_stream_splice_finish, "g_output_stream_splice_finish", LIBRARY_GIO);
	Linker.link(g_output_stream_vprintf, "g_output_stream_vprintf", LIBRARY_GIO);
	Linker.link(g_output_stream_write, "g_output_stream_write", LIBRARY_GIO);
	Linker.link(g_output_stream_write_all, "g_output_stream_write_all", LIBRARY_GIO);
	Linker.link(g_output_stream_write_all_async, "g_output_stream_write_all_async", LIBRARY_GIO);
	Linker.link(g_output_stream_write_all_finish, "g_output_stream_write_all_finish", LIBRARY_GIO);
	Linker.link(g_output_stream_write_async, "g_output_stream_write_async", LIBRARY_GIO);
	Linker.link(g_output_stream_write_bytes, "g_output_stream_write_bytes", LIBRARY_GIO);
	Linker.link(g_output_stream_write_bytes_async, "g_output_stream_write_bytes_async", LIBRARY_GIO);
	Linker.link(g_output_stream_write_bytes_finish, "g_output_stream_write_bytes_finish", LIBRARY_GIO);
	Linker.link(g_output_stream_write_finish, "g_output_stream_write_finish", LIBRARY_GIO);
	Linker.link(g_output_stream_writev, "g_output_stream_writev", LIBRARY_GIO);
	Linker.link(g_output_stream_writev_all, "g_output_stream_writev_all", LIBRARY_GIO);
	Linker.link(g_output_stream_writev_all_async, "g_output_stream_writev_all_async", LIBRARY_GIO);
	Linker.link(g_output_stream_writev_all_finish, "g_output_stream_writev_all_finish", LIBRARY_GIO);
	Linker.link(g_output_stream_writev_async, "g_output_stream_writev_async", LIBRARY_GIO);
	Linker.link(g_output_stream_writev_finish, "g_output_stream_writev_finish", LIBRARY_GIO);

	// gio.Permission

	Linker.link(g_permission_get_type, "g_permission_get_type", LIBRARY_GIO);
	Linker.link(g_permission_acquire, "g_permission_acquire", LIBRARY_GIO);
	Linker.link(g_permission_acquire_async, "g_permission_acquire_async", LIBRARY_GIO);
	Linker.link(g_permission_acquire_finish, "g_permission_acquire_finish", LIBRARY_GIO);
	Linker.link(g_permission_get_allowed, "g_permission_get_allowed", LIBRARY_GIO);
	Linker.link(g_permission_get_can_acquire, "g_permission_get_can_acquire", LIBRARY_GIO);
	Linker.link(g_permission_get_can_release, "g_permission_get_can_release", LIBRARY_GIO);
	Linker.link(g_permission_impl_update, "g_permission_impl_update", LIBRARY_GIO);
	Linker.link(g_permission_release, "g_permission_release", LIBRARY_GIO);
	Linker.link(g_permission_release_async, "g_permission_release_async", LIBRARY_GIO);
	Linker.link(g_permission_release_finish, "g_permission_release_finish", LIBRARY_GIO);

	// gio.PollableInputStream

	Linker.link(g_pollable_input_stream_get_type, "g_pollable_input_stream_get_type", LIBRARY_GIO);
	Linker.link(g_pollable_input_stream_can_poll, "g_pollable_input_stream_can_poll", LIBRARY_GIO);
	Linker.link(g_pollable_input_stream_create_source, "g_pollable_input_stream_create_source", LIBRARY_GIO);
	Linker.link(g_pollable_input_stream_is_readable, "g_pollable_input_stream_is_readable", LIBRARY_GIO);
	Linker.link(g_pollable_input_stream_read_nonblocking, "g_pollable_input_stream_read_nonblocking", LIBRARY_GIO);

	// gio.PollableOutputStream

	Linker.link(g_pollable_output_stream_get_type, "g_pollable_output_stream_get_type", LIBRARY_GIO);
	Linker.link(g_pollable_output_stream_can_poll, "g_pollable_output_stream_can_poll", LIBRARY_GIO);
	Linker.link(g_pollable_output_stream_create_source, "g_pollable_output_stream_create_source", LIBRARY_GIO);
	Linker.link(g_pollable_output_stream_is_writable, "g_pollable_output_stream_is_writable", LIBRARY_GIO);
	Linker.link(g_pollable_output_stream_write_nonblocking, "g_pollable_output_stream_write_nonblocking", LIBRARY_GIO);
	Linker.link(g_pollable_output_stream_writev_nonblocking, "g_pollable_output_stream_writev_nonblocking", LIBRARY_GIO);

	// gio.PowerProfileMonitor

	Linker.link(g_power_profile_monitor_get_type, "g_power_profile_monitor_get_type", LIBRARY_GIO);
	Linker.link(g_power_profile_monitor_dup_default, "g_power_profile_monitor_dup_default", LIBRARY_GIO);
	Linker.link(g_power_profile_monitor_get_power_saver_enabled, "g_power_profile_monitor_get_power_saver_enabled", LIBRARY_GIO);

	// gio.PropertyAction

	Linker.link(g_property_action_get_type, "g_property_action_get_type", LIBRARY_GIO);
	Linker.link(g_property_action_new, "g_property_action_new", LIBRARY_GIO);

	// gio.Proxy

	Linker.link(g_proxy_get_type, "g_proxy_get_type", LIBRARY_GIO);
	Linker.link(g_proxy_get_default_for_protocol, "g_proxy_get_default_for_protocol", LIBRARY_GIO);
	Linker.link(g_proxy_connect, "g_proxy_connect", LIBRARY_GIO);
	Linker.link(g_proxy_connect_async, "g_proxy_connect_async", LIBRARY_GIO);
	Linker.link(g_proxy_connect_finish, "g_proxy_connect_finish", LIBRARY_GIO);
	Linker.link(g_proxy_supports_hostname, "g_proxy_supports_hostname", LIBRARY_GIO);

	// gio.ProxyAddress

	Linker.link(g_proxy_address_get_type, "g_proxy_address_get_type", LIBRARY_GIO);
	Linker.link(g_proxy_address_new, "g_proxy_address_new", LIBRARY_GIO);
	Linker.link(g_proxy_address_get_destination_hostname, "g_proxy_address_get_destination_hostname", LIBRARY_GIO);
	Linker.link(g_proxy_address_get_destination_port, "g_proxy_address_get_destination_port", LIBRARY_GIO);
	Linker.link(g_proxy_address_get_destination_protocol, "g_proxy_address_get_destination_protocol", LIBRARY_GIO);
	Linker.link(g_proxy_address_get_password, "g_proxy_address_get_password", LIBRARY_GIO);
	Linker.link(g_proxy_address_get_protocol, "g_proxy_address_get_protocol", LIBRARY_GIO);
	Linker.link(g_proxy_address_get_uri, "g_proxy_address_get_uri", LIBRARY_GIO);
	Linker.link(g_proxy_address_get_username, "g_proxy_address_get_username", LIBRARY_GIO);

	// gio.ProxyAddressEnumerator

	Linker.link(g_proxy_address_enumerator_get_type, "g_proxy_address_enumerator_get_type", LIBRARY_GIO);

	// gio.ProxyResolver

	Linker.link(g_proxy_resolver_get_type, "g_proxy_resolver_get_type", LIBRARY_GIO);
	Linker.link(g_proxy_resolver_get_default, "g_proxy_resolver_get_default", LIBRARY_GIO);
	Linker.link(g_proxy_resolver_is_supported, "g_proxy_resolver_is_supported", LIBRARY_GIO);
	Linker.link(g_proxy_resolver_lookup, "g_proxy_resolver_lookup", LIBRARY_GIO);
	Linker.link(g_proxy_resolver_lookup_async, "g_proxy_resolver_lookup_async", LIBRARY_GIO);
	Linker.link(g_proxy_resolver_lookup_finish, "g_proxy_resolver_lookup_finish", LIBRARY_GIO);

	// gio.RemoteActionGroup

	Linker.link(g_remote_action_group_get_type, "g_remote_action_group_get_type", LIBRARY_GIO);
	Linker.link(g_remote_action_group_activate_action_full, "g_remote_action_group_activate_action_full", LIBRARY_GIO);
	Linker.link(g_remote_action_group_change_action_state_full, "g_remote_action_group_change_action_state_full", LIBRARY_GIO);

	// gio.Resolver

	Linker.link(g_resolver_get_type, "g_resolver_get_type", LIBRARY_GIO);
	Linker.link(g_resolver_free_addresses, "g_resolver_free_addresses", LIBRARY_GIO);
	Linker.link(g_resolver_free_targets, "g_resolver_free_targets", LIBRARY_GIO);
	Linker.link(g_resolver_get_default, "g_resolver_get_default", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_by_address, "g_resolver_lookup_by_address", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_by_address_async, "g_resolver_lookup_by_address_async", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_by_address_finish, "g_resolver_lookup_by_address_finish", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_by_name, "g_resolver_lookup_by_name", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_by_name_async, "g_resolver_lookup_by_name_async", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_by_name_finish, "g_resolver_lookup_by_name_finish", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_by_name_with_flags, "g_resolver_lookup_by_name_with_flags", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_by_name_with_flags_async, "g_resolver_lookup_by_name_with_flags_async", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_by_name_with_flags_finish, "g_resolver_lookup_by_name_with_flags_finish", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_records, "g_resolver_lookup_records", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_records_async, "g_resolver_lookup_records_async", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_records_finish, "g_resolver_lookup_records_finish", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_service, "g_resolver_lookup_service", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_service_async, "g_resolver_lookup_service_async", LIBRARY_GIO);
	Linker.link(g_resolver_lookup_service_finish, "g_resolver_lookup_service_finish", LIBRARY_GIO);
	Linker.link(g_resolver_set_default, "g_resolver_set_default", LIBRARY_GIO);

	// gio.Resource

	Linker.link(g_resource_get_type, "g_resource_get_type", LIBRARY_GIO);
	Linker.link(g_resource_new_from_data, "g_resource_new_from_data", LIBRARY_GIO);
	Linker.link(g_resources_register, "g_resources_register", LIBRARY_GIO);
	Linker.link(g_resources_unregister, "g_resources_unregister", LIBRARY_GIO);
	Linker.link(g_resource_enumerate_children, "g_resource_enumerate_children", LIBRARY_GIO);
	Linker.link(g_resource_get_info, "g_resource_get_info", LIBRARY_GIO);
	Linker.link(g_resource_lookup_data, "g_resource_lookup_data", LIBRARY_GIO);
	Linker.link(g_resource_open_stream, "g_resource_open_stream", LIBRARY_GIO);
	Linker.link(g_resource_ref, "g_resource_ref", LIBRARY_GIO);
	Linker.link(g_resource_unref, "g_resource_unref", LIBRARY_GIO);
	Linker.link(g_resource_load, "g_resource_load", LIBRARY_GIO);
	Linker.link(g_resources_enumerate_children, "g_resources_enumerate_children", LIBRARY_GIO);
	Linker.link(g_resources_get_info, "g_resources_get_info", LIBRARY_GIO);
	Linker.link(g_resources_lookup_data, "g_resources_lookup_data", LIBRARY_GIO);
	Linker.link(g_resources_open_stream, "g_resources_open_stream", LIBRARY_GIO);

	// gio.Seekable

	Linker.link(g_seekable_get_type, "g_seekable_get_type", LIBRARY_GIO);
	Linker.link(g_seekable_can_seek, "g_seekable_can_seek", LIBRARY_GIO);
	Linker.link(g_seekable_can_truncate, "g_seekable_can_truncate", LIBRARY_GIO);
	Linker.link(g_seekable_seek, "g_seekable_seek", LIBRARY_GIO);
	Linker.link(g_seekable_tell, "g_seekable_tell", LIBRARY_GIO);
	Linker.link(g_seekable_truncate, "g_seekable_truncate", LIBRARY_GIO);

	// gio.Settings

	Linker.link(g_settings_get_type, "g_settings_get_type", LIBRARY_GIO);
	Linker.link(g_settings_new, "g_settings_new", LIBRARY_GIO);
	Linker.link(g_settings_new_full, "g_settings_new_full", LIBRARY_GIO);
	Linker.link(g_settings_new_with_backend, "g_settings_new_with_backend", LIBRARY_GIO);
	Linker.link(g_settings_new_with_backend_and_path, "g_settings_new_with_backend_and_path", LIBRARY_GIO);
	Linker.link(g_settings_new_with_path, "g_settings_new_with_path", LIBRARY_GIO);
	Linker.link(g_settings_list_relocatable_schemas, "g_settings_list_relocatable_schemas", LIBRARY_GIO);
	Linker.link(g_settings_list_schemas, "g_settings_list_schemas", LIBRARY_GIO);
	Linker.link(g_settings_sync, "g_settings_sync", LIBRARY_GIO);
	Linker.link(g_settings_unbind, "g_settings_unbind", LIBRARY_GIO);
	Linker.link(g_settings_apply, "g_settings_apply", LIBRARY_GIO);
	Linker.link(g_settings_bind, "g_settings_bind", LIBRARY_GIO);
	Linker.link(g_settings_bind_with_mapping, "g_settings_bind_with_mapping", LIBRARY_GIO);
	Linker.link(g_settings_bind_writable, "g_settings_bind_writable", LIBRARY_GIO);
	Linker.link(g_settings_create_action, "g_settings_create_action", LIBRARY_GIO);
	Linker.link(g_settings_delay, "g_settings_delay", LIBRARY_GIO);
	Linker.link(g_settings_get, "g_settings_get", LIBRARY_GIO);
	Linker.link(g_settings_get_boolean, "g_settings_get_boolean", LIBRARY_GIO);
	Linker.link(g_settings_get_child, "g_settings_get_child", LIBRARY_GIO);
	Linker.link(g_settings_get_default_value, "g_settings_get_default_value", LIBRARY_GIO);
	Linker.link(g_settings_get_double, "g_settings_get_double", LIBRARY_GIO);
	Linker.link(g_settings_get_enum, "g_settings_get_enum", LIBRARY_GIO);
	Linker.link(g_settings_get_flags, "g_settings_get_flags", LIBRARY_GIO);
	Linker.link(g_settings_get_has_unapplied, "g_settings_get_has_unapplied", LIBRARY_GIO);
	Linker.link(g_settings_get_int, "g_settings_get_int", LIBRARY_GIO);
	Linker.link(g_settings_get_int64, "g_settings_get_int64", LIBRARY_GIO);
	Linker.link(g_settings_get_mapped, "g_settings_get_mapped", LIBRARY_GIO);
	Linker.link(g_settings_get_range, "g_settings_get_range", LIBRARY_GIO);
	Linker.link(g_settings_get_string, "g_settings_get_string", LIBRARY_GIO);
	Linker.link(g_settings_get_strv, "g_settings_get_strv", LIBRARY_GIO);
	Linker.link(g_settings_get_uint, "g_settings_get_uint", LIBRARY_GIO);
	Linker.link(g_settings_get_uint64, "g_settings_get_uint64", LIBRARY_GIO);
	Linker.link(g_settings_get_user_value, "g_settings_get_user_value", LIBRARY_GIO);
	Linker.link(g_settings_get_value, "g_settings_get_value", LIBRARY_GIO);
	Linker.link(g_settings_is_writable, "g_settings_is_writable", LIBRARY_GIO);
	Linker.link(g_settings_list_children, "g_settings_list_children", LIBRARY_GIO);
	Linker.link(g_settings_list_keys, "g_settings_list_keys", LIBRARY_GIO);
	Linker.link(g_settings_range_check, "g_settings_range_check", LIBRARY_GIO);
	Linker.link(g_settings_reset, "g_settings_reset", LIBRARY_GIO);
	Linker.link(g_settings_revert, "g_settings_revert", LIBRARY_GIO);
	Linker.link(g_settings_set, "g_settings_set", LIBRARY_GIO);
	Linker.link(g_settings_set_boolean, "g_settings_set_boolean", LIBRARY_GIO);
	Linker.link(g_settings_set_double, "g_settings_set_double", LIBRARY_GIO);
	Linker.link(g_settings_set_enum, "g_settings_set_enum", LIBRARY_GIO);
	Linker.link(g_settings_set_flags, "g_settings_set_flags", LIBRARY_GIO);
	Linker.link(g_settings_set_int, "g_settings_set_int", LIBRARY_GIO);
	Linker.link(g_settings_set_int64, "g_settings_set_int64", LIBRARY_GIO);
	Linker.link(g_settings_set_string, "g_settings_set_string", LIBRARY_GIO);
	Linker.link(g_settings_set_strv, "g_settings_set_strv", LIBRARY_GIO);
	Linker.link(g_settings_set_uint, "g_settings_set_uint", LIBRARY_GIO);
	Linker.link(g_settings_set_uint64, "g_settings_set_uint64", LIBRARY_GIO);
	Linker.link(g_settings_set_value, "g_settings_set_value", LIBRARY_GIO);

	// gio.SettingsBackend

	Linker.link(g_settings_backend_get_type, "g_settings_backend_get_type", LIBRARY_GIO);
	Linker.link(g_settings_backend_flatten_tree, "g_settings_backend_flatten_tree", LIBRARY_GIO);
	Linker.link(g_settings_backend_get_default, "g_settings_backend_get_default", LIBRARY_GIO);
	Linker.link(g_settings_backend_changed, "g_settings_backend_changed", LIBRARY_GIO);
	Linker.link(g_settings_backend_changed_tree, "g_settings_backend_changed_tree", LIBRARY_GIO);
	Linker.link(g_settings_backend_keys_changed, "g_settings_backend_keys_changed", LIBRARY_GIO);
	Linker.link(g_settings_backend_path_changed, "g_settings_backend_path_changed", LIBRARY_GIO);
	Linker.link(g_settings_backend_path_writable_changed, "g_settings_backend_path_writable_changed", LIBRARY_GIO);
	Linker.link(g_settings_backend_writable_changed, "g_settings_backend_writable_changed", LIBRARY_GIO);
	Linker.link(g_keyfile_settings_backend_new, "g_keyfile_settings_backend_new", LIBRARY_GIO);
	Linker.link(g_memory_settings_backend_new, "g_memory_settings_backend_new", LIBRARY_GIO);
	Linker.link(g_null_settings_backend_new, "g_null_settings_backend_new", LIBRARY_GIO);

	// gio.SettingsSchema

	Linker.link(g_settings_schema_get_type, "g_settings_schema_get_type", LIBRARY_GIO);
	Linker.link(g_settings_schema_get_id, "g_settings_schema_get_id", LIBRARY_GIO);
	Linker.link(g_settings_schema_get_key, "g_settings_schema_get_key", LIBRARY_GIO);
	Linker.link(g_settings_schema_get_path, "g_settings_schema_get_path", LIBRARY_GIO);
	Linker.link(g_settings_schema_has_key, "g_settings_schema_has_key", LIBRARY_GIO);
	Linker.link(g_settings_schema_list_children, "g_settings_schema_list_children", LIBRARY_GIO);
	Linker.link(g_settings_schema_list_keys, "g_settings_schema_list_keys", LIBRARY_GIO);
	Linker.link(g_settings_schema_ref, "g_settings_schema_ref", LIBRARY_GIO);
	Linker.link(g_settings_schema_unref, "g_settings_schema_unref", LIBRARY_GIO);

	// gio.SettingsSchemaKey

	Linker.link(g_settings_schema_key_get_type, "g_settings_schema_key_get_type", LIBRARY_GIO);
	Linker.link(g_settings_schema_key_get_default_value, "g_settings_schema_key_get_default_value", LIBRARY_GIO);
	Linker.link(g_settings_schema_key_get_description, "g_settings_schema_key_get_description", LIBRARY_GIO);
	Linker.link(g_settings_schema_key_get_name, "g_settings_schema_key_get_name", LIBRARY_GIO);
	Linker.link(g_settings_schema_key_get_range, "g_settings_schema_key_get_range", LIBRARY_GIO);
	Linker.link(g_settings_schema_key_get_summary, "g_settings_schema_key_get_summary", LIBRARY_GIO);
	Linker.link(g_settings_schema_key_get_value_type, "g_settings_schema_key_get_value_type", LIBRARY_GIO);
	Linker.link(g_settings_schema_key_range_check, "g_settings_schema_key_range_check", LIBRARY_GIO);
	Linker.link(g_settings_schema_key_ref, "g_settings_schema_key_ref", LIBRARY_GIO);
	Linker.link(g_settings_schema_key_unref, "g_settings_schema_key_unref", LIBRARY_GIO);

	// gio.SettingsSchemaSource

	Linker.link(g_settings_schema_source_get_type, "g_settings_schema_source_get_type", LIBRARY_GIO);
	Linker.link(g_settings_schema_source_new_from_directory, "g_settings_schema_source_new_from_directory", LIBRARY_GIO);
	Linker.link(g_settings_schema_source_list_schemas, "g_settings_schema_source_list_schemas", LIBRARY_GIO);
	Linker.link(g_settings_schema_source_lookup, "g_settings_schema_source_lookup", LIBRARY_GIO);
	Linker.link(g_settings_schema_source_ref, "g_settings_schema_source_ref", LIBRARY_GIO);
	Linker.link(g_settings_schema_source_unref, "g_settings_schema_source_unref", LIBRARY_GIO);
	Linker.link(g_settings_schema_source_get_default, "g_settings_schema_source_get_default", LIBRARY_GIO);

	// gio.SimpleAction

	Linker.link(g_simple_action_get_type, "g_simple_action_get_type", LIBRARY_GIO);
	Linker.link(g_simple_action_new, "g_simple_action_new", LIBRARY_GIO);
	Linker.link(g_simple_action_new_stateful, "g_simple_action_new_stateful", LIBRARY_GIO);
	Linker.link(g_simple_action_set_enabled, "g_simple_action_set_enabled", LIBRARY_GIO);
	Linker.link(g_simple_action_set_state, "g_simple_action_set_state", LIBRARY_GIO);
	Linker.link(g_simple_action_set_state_hint, "g_simple_action_set_state_hint", LIBRARY_GIO);

	// gio.SimpleActionGroup

	Linker.link(g_simple_action_group_get_type, "g_simple_action_group_get_type", LIBRARY_GIO);
	Linker.link(g_simple_action_group_new, "g_simple_action_group_new", LIBRARY_GIO);
	Linker.link(g_simple_action_group_add_entries, "g_simple_action_group_add_entries", LIBRARY_GIO);
	Linker.link(g_simple_action_group_insert, "g_simple_action_group_insert", LIBRARY_GIO);
	Linker.link(g_simple_action_group_lookup, "g_simple_action_group_lookup", LIBRARY_GIO);
	Linker.link(g_simple_action_group_remove, "g_simple_action_group_remove", LIBRARY_GIO);

	// gio.SimpleAsyncResult

	Linker.link(g_simple_async_result_get_type, "g_simple_async_result_get_type", LIBRARY_GIO);
	Linker.link(g_simple_async_result_new, "g_simple_async_result_new", LIBRARY_GIO);
	Linker.link(g_simple_async_result_new_error, "g_simple_async_result_new_error", LIBRARY_GIO);
	Linker.link(g_simple_async_result_new_from_error, "g_simple_async_result_new_from_error", LIBRARY_GIO);
	Linker.link(g_simple_async_result_new_take_error, "g_simple_async_result_new_take_error", LIBRARY_GIO);
	Linker.link(g_simple_async_result_is_valid, "g_simple_async_result_is_valid", LIBRARY_GIO);
	Linker.link(g_simple_async_result_complete, "g_simple_async_result_complete", LIBRARY_GIO);
	Linker.link(g_simple_async_result_complete_in_idle, "g_simple_async_result_complete_in_idle", LIBRARY_GIO);
	Linker.link(g_simple_async_result_get_op_res_gboolean, "g_simple_async_result_get_op_res_gboolean", LIBRARY_GIO);
	Linker.link(g_simple_async_result_get_op_res_gpointer, "g_simple_async_result_get_op_res_gpointer", LIBRARY_GIO);
	Linker.link(g_simple_async_result_get_op_res_gssize, "g_simple_async_result_get_op_res_gssize", LIBRARY_GIO);
	Linker.link(g_simple_async_result_get_source_tag, "g_simple_async_result_get_source_tag", LIBRARY_GIO);
	Linker.link(g_simple_async_result_propagate_error, "g_simple_async_result_propagate_error", LIBRARY_GIO);
	Linker.link(g_simple_async_result_run_in_thread, "g_simple_async_result_run_in_thread", LIBRARY_GIO);
	Linker.link(g_simple_async_result_set_check_cancellable, "g_simple_async_result_set_check_cancellable", LIBRARY_GIO);
	Linker.link(g_simple_async_result_set_error, "g_simple_async_result_set_error", LIBRARY_GIO);
	Linker.link(g_simple_async_result_set_error_va, "g_simple_async_result_set_error_va", LIBRARY_GIO);
	Linker.link(g_simple_async_result_set_from_error, "g_simple_async_result_set_from_error", LIBRARY_GIO);
	Linker.link(g_simple_async_result_set_handle_cancellation, "g_simple_async_result_set_handle_cancellation", LIBRARY_GIO);
	Linker.link(g_simple_async_result_set_op_res_gboolean, "g_simple_async_result_set_op_res_gboolean", LIBRARY_GIO);
	Linker.link(g_simple_async_result_set_op_res_gpointer, "g_simple_async_result_set_op_res_gpointer", LIBRARY_GIO);
	Linker.link(g_simple_async_result_set_op_res_gssize, "g_simple_async_result_set_op_res_gssize", LIBRARY_GIO);
	Linker.link(g_simple_async_result_take_error, "g_simple_async_result_take_error", LIBRARY_GIO);
	Linker.link(g_simple_async_report_error_in_idle, "g_simple_async_report_error_in_idle", LIBRARY_GIO);
	Linker.link(g_simple_async_report_gerror_in_idle, "g_simple_async_report_gerror_in_idle", LIBRARY_GIO);
	Linker.link(g_simple_async_report_take_gerror_in_idle, "g_simple_async_report_take_gerror_in_idle", LIBRARY_GIO);

	// gio.SimpleIOStream

	Linker.link(g_simple_io_stream_get_type, "g_simple_io_stream_get_type", LIBRARY_GIO);
	Linker.link(g_simple_io_stream_new, "g_simple_io_stream_new", LIBRARY_GIO);

	// gio.SimplePermission

	Linker.link(g_simple_permission_get_type, "g_simple_permission_get_type", LIBRARY_GIO);
	Linker.link(g_simple_permission_new, "g_simple_permission_new", LIBRARY_GIO);

	// gio.SimpleProxyResolver

	Linker.link(g_simple_proxy_resolver_get_type, "g_simple_proxy_resolver_get_type", LIBRARY_GIO);
	Linker.link(g_simple_proxy_resolver_new, "g_simple_proxy_resolver_new", LIBRARY_GIO);
	Linker.link(g_simple_proxy_resolver_set_default_proxy, "g_simple_proxy_resolver_set_default_proxy", LIBRARY_GIO);
	Linker.link(g_simple_proxy_resolver_set_ignore_hosts, "g_simple_proxy_resolver_set_ignore_hosts", LIBRARY_GIO);
	Linker.link(g_simple_proxy_resolver_set_uri_proxy, "g_simple_proxy_resolver_set_uri_proxy", LIBRARY_GIO);

	// gio.Socket

	Linker.link(g_socket_get_type, "g_socket_get_type", LIBRARY_GIO);
	Linker.link(g_socket_new, "g_socket_new", LIBRARY_GIO);
	Linker.link(g_socket_new_from_fd, "g_socket_new_from_fd", LIBRARY_GIO);
	Linker.link(g_socket_accept, "g_socket_accept", LIBRARY_GIO);
	Linker.link(g_socket_bind, "g_socket_bind", LIBRARY_GIO);
	Linker.link(g_socket_check_connect_result, "g_socket_check_connect_result", LIBRARY_GIO);
	Linker.link(g_socket_close, "g_socket_close", LIBRARY_GIO);
	Linker.link(g_socket_condition_check, "g_socket_condition_check", LIBRARY_GIO);
	Linker.link(g_socket_condition_timed_wait, "g_socket_condition_timed_wait", LIBRARY_GIO);
	Linker.link(g_socket_condition_wait, "g_socket_condition_wait", LIBRARY_GIO);
	Linker.link(g_socket_connect, "g_socket_connect", LIBRARY_GIO);
	Linker.link(g_socket_connection_factory_create_connection, "g_socket_connection_factory_create_connection", LIBRARY_GIO);
	Linker.link(g_socket_create_source, "g_socket_create_source", LIBRARY_GIO);
	Linker.link(g_socket_get_available_bytes, "g_socket_get_available_bytes", LIBRARY_GIO);
	Linker.link(g_socket_get_blocking, "g_socket_get_blocking", LIBRARY_GIO);
	Linker.link(g_socket_get_broadcast, "g_socket_get_broadcast", LIBRARY_GIO);
	Linker.link(g_socket_get_credentials, "g_socket_get_credentials", LIBRARY_GIO);
	Linker.link(g_socket_get_family, "g_socket_get_family", LIBRARY_GIO);
	Linker.link(g_socket_get_fd, "g_socket_get_fd", LIBRARY_GIO);
	Linker.link(g_socket_get_keepalive, "g_socket_get_keepalive", LIBRARY_GIO);
	Linker.link(g_socket_get_listen_backlog, "g_socket_get_listen_backlog", LIBRARY_GIO);
	Linker.link(g_socket_get_local_address, "g_socket_get_local_address", LIBRARY_GIO);
	Linker.link(g_socket_get_multicast_loopback, "g_socket_get_multicast_loopback", LIBRARY_GIO);
	Linker.link(g_socket_get_multicast_ttl, "g_socket_get_multicast_ttl", LIBRARY_GIO);
	Linker.link(g_socket_get_option, "g_socket_get_option", LIBRARY_GIO);
	Linker.link(g_socket_get_protocol, "g_socket_get_protocol", LIBRARY_GIO);
	Linker.link(g_socket_get_remote_address, "g_socket_get_remote_address", LIBRARY_GIO);
	Linker.link(g_socket_get_socket_type, "g_socket_get_socket_type", LIBRARY_GIO);
	Linker.link(g_socket_get_timeout, "g_socket_get_timeout", LIBRARY_GIO);
	Linker.link(g_socket_get_ttl, "g_socket_get_ttl", LIBRARY_GIO);
	Linker.link(g_socket_is_closed, "g_socket_is_closed", LIBRARY_GIO);
	Linker.link(g_socket_is_connected, "g_socket_is_connected", LIBRARY_GIO);
	Linker.link(g_socket_join_multicast_group, "g_socket_join_multicast_group", LIBRARY_GIO);
	Linker.link(g_socket_join_multicast_group_ssm, "g_socket_join_multicast_group_ssm", LIBRARY_GIO);
	Linker.link(g_socket_leave_multicast_group, "g_socket_leave_multicast_group", LIBRARY_GIO);
	Linker.link(g_socket_leave_multicast_group_ssm, "g_socket_leave_multicast_group_ssm", LIBRARY_GIO);
	Linker.link(g_socket_listen, "g_socket_listen", LIBRARY_GIO);
	Linker.link(g_socket_receive, "g_socket_receive", LIBRARY_GIO);
	Linker.link(g_socket_receive_from, "g_socket_receive_from", LIBRARY_GIO);
	Linker.link(g_socket_receive_message, "g_socket_receive_message", LIBRARY_GIO);
	Linker.link(g_socket_receive_messages, "g_socket_receive_messages", LIBRARY_GIO);
	Linker.link(g_socket_receive_with_blocking, "g_socket_receive_with_blocking", LIBRARY_GIO);
	Linker.link(g_socket_send, "g_socket_send", LIBRARY_GIO);
	Linker.link(g_socket_send_message, "g_socket_send_message", LIBRARY_GIO);
	Linker.link(g_socket_send_message_with_timeout, "g_socket_send_message_with_timeout", LIBRARY_GIO);
	Linker.link(g_socket_send_messages, "g_socket_send_messages", LIBRARY_GIO);
	Linker.link(g_socket_send_to, "g_socket_send_to", LIBRARY_GIO);
	Linker.link(g_socket_send_with_blocking, "g_socket_send_with_blocking", LIBRARY_GIO);
	Linker.link(g_socket_set_blocking, "g_socket_set_blocking", LIBRARY_GIO);
	Linker.link(g_socket_set_broadcast, "g_socket_set_broadcast", LIBRARY_GIO);
	Linker.link(g_socket_set_keepalive, "g_socket_set_keepalive", LIBRARY_GIO);
	Linker.link(g_socket_set_listen_backlog, "g_socket_set_listen_backlog", LIBRARY_GIO);
	Linker.link(g_socket_set_multicast_loopback, "g_socket_set_multicast_loopback", LIBRARY_GIO);
	Linker.link(g_socket_set_multicast_ttl, "g_socket_set_multicast_ttl", LIBRARY_GIO);
	Linker.link(g_socket_set_option, "g_socket_set_option", LIBRARY_GIO);
	Linker.link(g_socket_set_timeout, "g_socket_set_timeout", LIBRARY_GIO);
	Linker.link(g_socket_set_ttl, "g_socket_set_ttl", LIBRARY_GIO);
	Linker.link(g_socket_shutdown, "g_socket_shutdown", LIBRARY_GIO);
	Linker.link(g_socket_speaks_ipv4, "g_socket_speaks_ipv4", LIBRARY_GIO);

	// gio.SocketAddress

	Linker.link(g_socket_address_get_type, "g_socket_address_get_type", LIBRARY_GIO);
	Linker.link(g_socket_address_new_from_native, "g_socket_address_new_from_native", LIBRARY_GIO);
	Linker.link(g_socket_address_get_family, "g_socket_address_get_family", LIBRARY_GIO);
	Linker.link(g_socket_address_get_native_size, "g_socket_address_get_native_size", LIBRARY_GIO);
	Linker.link(g_socket_address_to_native, "g_socket_address_to_native", LIBRARY_GIO);

	// gio.SocketAddressEnumerator

	Linker.link(g_socket_address_enumerator_get_type, "g_socket_address_enumerator_get_type", LIBRARY_GIO);
	Linker.link(g_socket_address_enumerator_next, "g_socket_address_enumerator_next", LIBRARY_GIO);
	Linker.link(g_socket_address_enumerator_next_async, "g_socket_address_enumerator_next_async", LIBRARY_GIO);
	Linker.link(g_socket_address_enumerator_next_finish, "g_socket_address_enumerator_next_finish", LIBRARY_GIO);

	// gio.SocketClient

	Linker.link(g_socket_client_get_type, "g_socket_client_get_type", LIBRARY_GIO);
	Linker.link(g_socket_client_new, "g_socket_client_new", LIBRARY_GIO);
	Linker.link(g_socket_client_add_application_proxy, "g_socket_client_add_application_proxy", LIBRARY_GIO);
	Linker.link(g_socket_client_connect, "g_socket_client_connect", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_async, "g_socket_client_connect_async", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_finish, "g_socket_client_connect_finish", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_to_host, "g_socket_client_connect_to_host", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_to_host_async, "g_socket_client_connect_to_host_async", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_to_host_finish, "g_socket_client_connect_to_host_finish", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_to_service, "g_socket_client_connect_to_service", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_to_service_async, "g_socket_client_connect_to_service_async", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_to_service_finish, "g_socket_client_connect_to_service_finish", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_to_uri, "g_socket_client_connect_to_uri", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_to_uri_async, "g_socket_client_connect_to_uri_async", LIBRARY_GIO);
	Linker.link(g_socket_client_connect_to_uri_finish, "g_socket_client_connect_to_uri_finish", LIBRARY_GIO);
	Linker.link(g_socket_client_get_enable_proxy, "g_socket_client_get_enable_proxy", LIBRARY_GIO);
	Linker.link(g_socket_client_get_family, "g_socket_client_get_family", LIBRARY_GIO);
	Linker.link(g_socket_client_get_local_address, "g_socket_client_get_local_address", LIBRARY_GIO);
	Linker.link(g_socket_client_get_protocol, "g_socket_client_get_protocol", LIBRARY_GIO);
	Linker.link(g_socket_client_get_proxy_resolver, "g_socket_client_get_proxy_resolver", LIBRARY_GIO);
	Linker.link(g_socket_client_get_socket_type, "g_socket_client_get_socket_type", LIBRARY_GIO);
	Linker.link(g_socket_client_get_timeout, "g_socket_client_get_timeout", LIBRARY_GIO);
	Linker.link(g_socket_client_get_tls, "g_socket_client_get_tls", LIBRARY_GIO);
	Linker.link(g_socket_client_get_tls_validation_flags, "g_socket_client_get_tls_validation_flags", LIBRARY_GIO);
	Linker.link(g_socket_client_set_enable_proxy, "g_socket_client_set_enable_proxy", LIBRARY_GIO);
	Linker.link(g_socket_client_set_family, "g_socket_client_set_family", LIBRARY_GIO);
	Linker.link(g_socket_client_set_local_address, "g_socket_client_set_local_address", LIBRARY_GIO);
	Linker.link(g_socket_client_set_protocol, "g_socket_client_set_protocol", LIBRARY_GIO);
	Linker.link(g_socket_client_set_proxy_resolver, "g_socket_client_set_proxy_resolver", LIBRARY_GIO);
	Linker.link(g_socket_client_set_socket_type, "g_socket_client_set_socket_type", LIBRARY_GIO);
	Linker.link(g_socket_client_set_timeout, "g_socket_client_set_timeout", LIBRARY_GIO);
	Linker.link(g_socket_client_set_tls, "g_socket_client_set_tls", LIBRARY_GIO);
	Linker.link(g_socket_client_set_tls_validation_flags, "g_socket_client_set_tls_validation_flags", LIBRARY_GIO);

	// gio.SocketConnectable

	Linker.link(g_socket_connectable_get_type, "g_socket_connectable_get_type", LIBRARY_GIO);
	Linker.link(g_socket_connectable_enumerate, "g_socket_connectable_enumerate", LIBRARY_GIO);
	Linker.link(g_socket_connectable_proxy_enumerate, "g_socket_connectable_proxy_enumerate", LIBRARY_GIO);
	Linker.link(g_socket_connectable_to_string, "g_socket_connectable_to_string", LIBRARY_GIO);

	// gio.SocketConnection

	Linker.link(g_socket_connection_get_type, "g_socket_connection_get_type", LIBRARY_GIO);
	Linker.link(g_socket_connection_factory_lookup_type, "g_socket_connection_factory_lookup_type", LIBRARY_GIO);
	Linker.link(g_socket_connection_factory_register_type, "g_socket_connection_factory_register_type", LIBRARY_GIO);
	Linker.link(g_socket_connection_connect, "g_socket_connection_connect", LIBRARY_GIO);
	Linker.link(g_socket_connection_connect_async, "g_socket_connection_connect_async", LIBRARY_GIO);
	Linker.link(g_socket_connection_connect_finish, "g_socket_connection_connect_finish", LIBRARY_GIO);
	Linker.link(g_socket_connection_get_local_address, "g_socket_connection_get_local_address", LIBRARY_GIO);
	Linker.link(g_socket_connection_get_remote_address, "g_socket_connection_get_remote_address", LIBRARY_GIO);
	Linker.link(g_socket_connection_get_socket, "g_socket_connection_get_socket", LIBRARY_GIO);
	Linker.link(g_socket_connection_is_connected, "g_socket_connection_is_connected", LIBRARY_GIO);

	// gio.SocketControlMessage

	Linker.link(g_socket_control_message_get_type, "g_socket_control_message_get_type", LIBRARY_GIO);
	Linker.link(g_socket_control_message_deserialize, "g_socket_control_message_deserialize", LIBRARY_GIO);
	Linker.link(g_socket_control_message_get_level, "g_socket_control_message_get_level", LIBRARY_GIO);
	Linker.link(g_socket_control_message_get_msg_type, "g_socket_control_message_get_msg_type", LIBRARY_GIO);
	Linker.link(g_socket_control_message_get_size, "g_socket_control_message_get_size", LIBRARY_GIO);
	Linker.link(g_socket_control_message_serialize, "g_socket_control_message_serialize", LIBRARY_GIO);

	// gio.SocketListener

	Linker.link(g_socket_listener_get_type, "g_socket_listener_get_type", LIBRARY_GIO);
	Linker.link(g_socket_listener_new, "g_socket_listener_new", LIBRARY_GIO);
	Linker.link(g_socket_listener_accept, "g_socket_listener_accept", LIBRARY_GIO);
	Linker.link(g_socket_listener_accept_async, "g_socket_listener_accept_async", LIBRARY_GIO);
	Linker.link(g_socket_listener_accept_finish, "g_socket_listener_accept_finish", LIBRARY_GIO);
	Linker.link(g_socket_listener_accept_socket, "g_socket_listener_accept_socket", LIBRARY_GIO);
	Linker.link(g_socket_listener_accept_socket_async, "g_socket_listener_accept_socket_async", LIBRARY_GIO);
	Linker.link(g_socket_listener_accept_socket_finish, "g_socket_listener_accept_socket_finish", LIBRARY_GIO);
	Linker.link(g_socket_listener_add_address, "g_socket_listener_add_address", LIBRARY_GIO);
	Linker.link(g_socket_listener_add_any_inet_port, "g_socket_listener_add_any_inet_port", LIBRARY_GIO);
	Linker.link(g_socket_listener_add_inet_port, "g_socket_listener_add_inet_port", LIBRARY_GIO);
	Linker.link(g_socket_listener_add_socket, "g_socket_listener_add_socket", LIBRARY_GIO);
	Linker.link(g_socket_listener_close, "g_socket_listener_close", LIBRARY_GIO);
	Linker.link(g_socket_listener_set_backlog, "g_socket_listener_set_backlog", LIBRARY_GIO);

	// gio.SocketService

	Linker.link(g_socket_service_get_type, "g_socket_service_get_type", LIBRARY_GIO);
	Linker.link(g_socket_service_new, "g_socket_service_new", LIBRARY_GIO);
	Linker.link(g_socket_service_is_active, "g_socket_service_is_active", LIBRARY_GIO);
	Linker.link(g_socket_service_start, "g_socket_service_start", LIBRARY_GIO);
	Linker.link(g_socket_service_stop, "g_socket_service_stop", LIBRARY_GIO);

	// gio.SrvTarget

	Linker.link(g_srv_target_get_type, "g_srv_target_get_type", LIBRARY_GIO);
	Linker.link(g_srv_target_new, "g_srv_target_new", LIBRARY_GIO);
	Linker.link(g_srv_target_copy, "g_srv_target_copy", LIBRARY_GIO);
	Linker.link(g_srv_target_free, "g_srv_target_free", LIBRARY_GIO);
	Linker.link(g_srv_target_get_hostname, "g_srv_target_get_hostname", LIBRARY_GIO);
	Linker.link(g_srv_target_get_port, "g_srv_target_get_port", LIBRARY_GIO);
	Linker.link(g_srv_target_get_priority, "g_srv_target_get_priority", LIBRARY_GIO);
	Linker.link(g_srv_target_get_weight, "g_srv_target_get_weight", LIBRARY_GIO);
	Linker.link(g_srv_target_list_sort, "g_srv_target_list_sort", LIBRARY_GIO);

	// gio.StaticResource

	Linker.link(g_static_resource_fini, "g_static_resource_fini", LIBRARY_GIO);
	Linker.link(g_static_resource_get_resource, "g_static_resource_get_resource", LIBRARY_GIO);
	Linker.link(g_static_resource_init, "g_static_resource_init", LIBRARY_GIO);

	// gio.Subprocess

	Linker.link(g_subprocess_get_type, "g_subprocess_get_type", LIBRARY_GIO);
	Linker.link(g_subprocess_new, "g_subprocess_new", LIBRARY_GIO);
	Linker.link(g_subprocess_newv, "g_subprocess_newv", LIBRARY_GIO);
	Linker.link(g_subprocess_communicate, "g_subprocess_communicate", LIBRARY_GIO);
	Linker.link(g_subprocess_communicate_async, "g_subprocess_communicate_async", LIBRARY_GIO);
	Linker.link(g_subprocess_communicate_finish, "g_subprocess_communicate_finish", LIBRARY_GIO);
	Linker.link(g_subprocess_communicate_utf8, "g_subprocess_communicate_utf8", LIBRARY_GIO);
	Linker.link(g_subprocess_communicate_utf8_async, "g_subprocess_communicate_utf8_async", LIBRARY_GIO);
	Linker.link(g_subprocess_communicate_utf8_finish, "g_subprocess_communicate_utf8_finish", LIBRARY_GIO);
	Linker.link(g_subprocess_force_exit, "g_subprocess_force_exit", LIBRARY_GIO);
	Linker.link(g_subprocess_get_exit_status, "g_subprocess_get_exit_status", LIBRARY_GIO);
	Linker.link(g_subprocess_get_identifier, "g_subprocess_get_identifier", LIBRARY_GIO);
	Linker.link(g_subprocess_get_if_exited, "g_subprocess_get_if_exited", LIBRARY_GIO);
	Linker.link(g_subprocess_get_if_signaled, "g_subprocess_get_if_signaled", LIBRARY_GIO);
	Linker.link(g_subprocess_get_status, "g_subprocess_get_status", LIBRARY_GIO);
	Linker.link(g_subprocess_get_stderr_pipe, "g_subprocess_get_stderr_pipe", LIBRARY_GIO);
	Linker.link(g_subprocess_get_stdin_pipe, "g_subprocess_get_stdin_pipe", LIBRARY_GIO);
	Linker.link(g_subprocess_get_stdout_pipe, "g_subprocess_get_stdout_pipe", LIBRARY_GIO);
	Linker.link(g_subprocess_get_successful, "g_subprocess_get_successful", LIBRARY_GIO);
	Linker.link(g_subprocess_get_term_sig, "g_subprocess_get_term_sig", LIBRARY_GIO);
	Linker.link(g_subprocess_send_signal, "g_subprocess_send_signal", LIBRARY_GIO);
	Linker.link(g_subprocess_wait, "g_subprocess_wait", LIBRARY_GIO);
	Linker.link(g_subprocess_wait_async, "g_subprocess_wait_async", LIBRARY_GIO);
	Linker.link(g_subprocess_wait_check, "g_subprocess_wait_check", LIBRARY_GIO);
	Linker.link(g_subprocess_wait_check_async, "g_subprocess_wait_check_async", LIBRARY_GIO);
	Linker.link(g_subprocess_wait_check_finish, "g_subprocess_wait_check_finish", LIBRARY_GIO);
	Linker.link(g_subprocess_wait_finish, "g_subprocess_wait_finish", LIBRARY_GIO);

	// gio.SubprocessLauncher

	Linker.link(g_subprocess_launcher_get_type, "g_subprocess_launcher_get_type", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_new, "g_subprocess_launcher_new", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_close, "g_subprocess_launcher_close", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_getenv, "g_subprocess_launcher_getenv", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_set_child_setup, "g_subprocess_launcher_set_child_setup", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_set_cwd, "g_subprocess_launcher_set_cwd", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_set_environ, "g_subprocess_launcher_set_environ", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_set_flags, "g_subprocess_launcher_set_flags", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_set_stderr_file_path, "g_subprocess_launcher_set_stderr_file_path", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_set_stdin_file_path, "g_subprocess_launcher_set_stdin_file_path", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_set_stdout_file_path, "g_subprocess_launcher_set_stdout_file_path", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_setenv, "g_subprocess_launcher_setenv", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_spawn, "g_subprocess_launcher_spawn", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_spawnv, "g_subprocess_launcher_spawnv", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_take_fd, "g_subprocess_launcher_take_fd", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_take_stderr_fd, "g_subprocess_launcher_take_stderr_fd", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_take_stdin_fd, "g_subprocess_launcher_take_stdin_fd", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_take_stdout_fd, "g_subprocess_launcher_take_stdout_fd", LIBRARY_GIO);
	Linker.link(g_subprocess_launcher_unsetenv, "g_subprocess_launcher_unsetenv", LIBRARY_GIO);

	// gio.Task

	Linker.link(g_task_get_type, "g_task_get_type", LIBRARY_GIO);
	Linker.link(g_task_new, "g_task_new", LIBRARY_GIO);
	Linker.link(g_task_is_valid, "g_task_is_valid", LIBRARY_GIO);
	Linker.link(g_task_report_error, "g_task_report_error", LIBRARY_GIO);
	Linker.link(g_task_report_new_error, "g_task_report_new_error", LIBRARY_GIO);
	Linker.link(g_task_attach_source, "g_task_attach_source", LIBRARY_GIO);
	Linker.link(g_task_get_cancellable, "g_task_get_cancellable", LIBRARY_GIO);
	Linker.link(g_task_get_check_cancellable, "g_task_get_check_cancellable", LIBRARY_GIO);
	Linker.link(g_task_get_completed, "g_task_get_completed", LIBRARY_GIO);
	Linker.link(g_task_get_context, "g_task_get_context", LIBRARY_GIO);
	Linker.link(g_task_get_name, "g_task_get_name", LIBRARY_GIO);
	Linker.link(g_task_get_priority, "g_task_get_priority", LIBRARY_GIO);
	Linker.link(g_task_get_return_on_cancel, "g_task_get_return_on_cancel", LIBRARY_GIO);
	Linker.link(g_task_get_source_object, "g_task_get_source_object", LIBRARY_GIO);
	Linker.link(g_task_get_source_tag, "g_task_get_source_tag", LIBRARY_GIO);
	Linker.link(g_task_get_task_data, "g_task_get_task_data", LIBRARY_GIO);
	Linker.link(g_task_had_error, "g_task_had_error", LIBRARY_GIO);
	Linker.link(g_task_propagate_boolean, "g_task_propagate_boolean", LIBRARY_GIO);
	Linker.link(g_task_propagate_int, "g_task_propagate_int", LIBRARY_GIO);
	Linker.link(g_task_propagate_pointer, "g_task_propagate_pointer", LIBRARY_GIO);
	Linker.link(g_task_propagate_value, "g_task_propagate_value", LIBRARY_GIO);
	Linker.link(g_task_return_boolean, "g_task_return_boolean", LIBRARY_GIO);
	Linker.link(g_task_return_error, "g_task_return_error", LIBRARY_GIO);
	Linker.link(g_task_return_error_if_cancelled, "g_task_return_error_if_cancelled", LIBRARY_GIO);
	Linker.link(g_task_return_int, "g_task_return_int", LIBRARY_GIO);
	Linker.link(g_task_return_new_error, "g_task_return_new_error", LIBRARY_GIO);
	Linker.link(g_task_return_pointer, "g_task_return_pointer", LIBRARY_GIO);
	Linker.link(g_task_return_value, "g_task_return_value", LIBRARY_GIO);
	Linker.link(g_task_run_in_thread, "g_task_run_in_thread", LIBRARY_GIO);
	Linker.link(g_task_run_in_thread_sync, "g_task_run_in_thread_sync", LIBRARY_GIO);
	Linker.link(g_task_set_check_cancellable, "g_task_set_check_cancellable", LIBRARY_GIO);
	Linker.link(g_task_set_name, "g_task_set_name", LIBRARY_GIO);
	Linker.link(g_task_set_priority, "g_task_set_priority", LIBRARY_GIO);
	Linker.link(g_task_set_return_on_cancel, "g_task_set_return_on_cancel", LIBRARY_GIO);
	Linker.link(g_task_set_source_tag, "g_task_set_source_tag", LIBRARY_GIO);
	Linker.link(g_task_set_task_data, "g_task_set_task_data", LIBRARY_GIO);

	// gio.TcpConnection

	Linker.link(g_tcp_connection_get_type, "g_tcp_connection_get_type", LIBRARY_GIO);
	Linker.link(g_tcp_connection_get_graceful_disconnect, "g_tcp_connection_get_graceful_disconnect", LIBRARY_GIO);
	Linker.link(g_tcp_connection_set_graceful_disconnect, "g_tcp_connection_set_graceful_disconnect", LIBRARY_GIO);

	// gio.TcpWrapperConnection

	Linker.link(g_tcp_wrapper_connection_get_type, "g_tcp_wrapper_connection_get_type", LIBRARY_GIO);
	Linker.link(g_tcp_wrapper_connection_new, "g_tcp_wrapper_connection_new", LIBRARY_GIO);
	Linker.link(g_tcp_wrapper_connection_get_base_io_stream, "g_tcp_wrapper_connection_get_base_io_stream", LIBRARY_GIO);

	// gio.TestDBus

	Linker.link(g_test_dbus_get_type, "g_test_dbus_get_type", LIBRARY_GIO);
	Linker.link(g_test_dbus_new, "g_test_dbus_new", LIBRARY_GIO);
	Linker.link(g_test_dbus_unset, "g_test_dbus_unset", LIBRARY_GIO);
	Linker.link(g_test_dbus_add_service_dir, "g_test_dbus_add_service_dir", LIBRARY_GIO);
	Linker.link(g_test_dbus_down, "g_test_dbus_down", LIBRARY_GIO);
	Linker.link(g_test_dbus_get_bus_address, "g_test_dbus_get_bus_address", LIBRARY_GIO);
	Linker.link(g_test_dbus_get_flags, "g_test_dbus_get_flags", LIBRARY_GIO);
	Linker.link(g_test_dbus_stop, "g_test_dbus_stop", LIBRARY_GIO);
	Linker.link(g_test_dbus_up, "g_test_dbus_up", LIBRARY_GIO);

	// gio.ThemedIcon

	Linker.link(g_themed_icon_get_type, "g_themed_icon_get_type", LIBRARY_GIO);
	Linker.link(g_themed_icon_new, "g_themed_icon_new", LIBRARY_GIO);
	Linker.link(g_themed_icon_new_from_names, "g_themed_icon_new_from_names", LIBRARY_GIO);
	Linker.link(g_themed_icon_new_with_default_fallbacks, "g_themed_icon_new_with_default_fallbacks", LIBRARY_GIO);
	Linker.link(g_themed_icon_append_name, "g_themed_icon_append_name", LIBRARY_GIO);
	Linker.link(g_themed_icon_get_names, "g_themed_icon_get_names", LIBRARY_GIO);
	Linker.link(g_themed_icon_prepend_name, "g_themed_icon_prepend_name", LIBRARY_GIO);

	// gio.ThreadedSocketService

	Linker.link(g_threaded_socket_service_get_type, "g_threaded_socket_service_get_type", LIBRARY_GIO);
	Linker.link(g_threaded_socket_service_new, "g_threaded_socket_service_new", LIBRARY_GIO);

	// gio.TlsBackend

	Linker.link(g_tls_backend_get_type, "g_tls_backend_get_type", LIBRARY_GIO);
	Linker.link(g_tls_backend_get_default, "g_tls_backend_get_default", LIBRARY_GIO);
	Linker.link(g_tls_backend_get_certificate_type, "g_tls_backend_get_certificate_type", LIBRARY_GIO);
	Linker.link(g_tls_backend_get_client_connection_type, "g_tls_backend_get_client_connection_type", LIBRARY_GIO);
	Linker.link(g_tls_backend_get_default_database, "g_tls_backend_get_default_database", LIBRARY_GIO);
	Linker.link(g_tls_backend_get_dtls_client_connection_type, "g_tls_backend_get_dtls_client_connection_type", LIBRARY_GIO);
	Linker.link(g_tls_backend_get_dtls_server_connection_type, "g_tls_backend_get_dtls_server_connection_type", LIBRARY_GIO);
	Linker.link(g_tls_backend_get_file_database_type, "g_tls_backend_get_file_database_type", LIBRARY_GIO);
	Linker.link(g_tls_backend_get_server_connection_type, "g_tls_backend_get_server_connection_type", LIBRARY_GIO);
	Linker.link(g_tls_backend_set_default_database, "g_tls_backend_set_default_database", LIBRARY_GIO);
	Linker.link(g_tls_backend_supports_dtls, "g_tls_backend_supports_dtls", LIBRARY_GIO);
	Linker.link(g_tls_backend_supports_tls, "g_tls_backend_supports_tls", LIBRARY_GIO);

	// gio.TlsCertificate

	Linker.link(g_tls_certificate_get_type, "g_tls_certificate_get_type", LIBRARY_GIO);
	Linker.link(g_tls_certificate_new_from_file, "g_tls_certificate_new_from_file", LIBRARY_GIO);
	Linker.link(g_tls_certificate_new_from_file_with_password, "g_tls_certificate_new_from_file_with_password", LIBRARY_GIO);
	Linker.link(g_tls_certificate_new_from_files, "g_tls_certificate_new_from_files", LIBRARY_GIO);
	Linker.link(g_tls_certificate_new_from_pem, "g_tls_certificate_new_from_pem", LIBRARY_GIO);
	Linker.link(g_tls_certificate_new_from_pkcs11_uris, "g_tls_certificate_new_from_pkcs11_uris", LIBRARY_GIO);
	Linker.link(g_tls_certificate_new_from_pkcs12, "g_tls_certificate_new_from_pkcs12", LIBRARY_GIO);
	Linker.link(g_tls_certificate_list_new_from_file, "g_tls_certificate_list_new_from_file", LIBRARY_GIO);
	Linker.link(g_tls_certificate_get_dns_names, "g_tls_certificate_get_dns_names", LIBRARY_GIO);
	Linker.link(g_tls_certificate_get_ip_addresses, "g_tls_certificate_get_ip_addresses", LIBRARY_GIO);
	Linker.link(g_tls_certificate_get_issuer, "g_tls_certificate_get_issuer", LIBRARY_GIO);
	Linker.link(g_tls_certificate_get_issuer_name, "g_tls_certificate_get_issuer_name", LIBRARY_GIO);
	Linker.link(g_tls_certificate_get_not_valid_after, "g_tls_certificate_get_not_valid_after", LIBRARY_GIO);
	Linker.link(g_tls_certificate_get_not_valid_before, "g_tls_certificate_get_not_valid_before", LIBRARY_GIO);
	Linker.link(g_tls_certificate_get_subject_name, "g_tls_certificate_get_subject_name", LIBRARY_GIO);
	Linker.link(g_tls_certificate_is_same, "g_tls_certificate_is_same", LIBRARY_GIO);
	Linker.link(g_tls_certificate_verify, "g_tls_certificate_verify", LIBRARY_GIO);

	// gio.TlsClientConnection

	Linker.link(g_tls_client_connection_get_type, "g_tls_client_connection_get_type", LIBRARY_GIO);
	Linker.link(g_tls_client_connection_new, "g_tls_client_connection_new", LIBRARY_GIO);
	Linker.link(g_tls_client_connection_copy_session_state, "g_tls_client_connection_copy_session_state", LIBRARY_GIO);
	Linker.link(g_tls_client_connection_get_accepted_cas, "g_tls_client_connection_get_accepted_cas", LIBRARY_GIO);
	Linker.link(g_tls_client_connection_get_server_identity, "g_tls_client_connection_get_server_identity", LIBRARY_GIO);
	Linker.link(g_tls_client_connection_get_use_ssl3, "g_tls_client_connection_get_use_ssl3", LIBRARY_GIO);
	Linker.link(g_tls_client_connection_get_validation_flags, "g_tls_client_connection_get_validation_flags", LIBRARY_GIO);
	Linker.link(g_tls_client_connection_set_server_identity, "g_tls_client_connection_set_server_identity", LIBRARY_GIO);
	Linker.link(g_tls_client_connection_set_use_ssl3, "g_tls_client_connection_set_use_ssl3", LIBRARY_GIO);
	Linker.link(g_tls_client_connection_set_validation_flags, "g_tls_client_connection_set_validation_flags", LIBRARY_GIO);

	// gio.TlsConnection

	Linker.link(g_tls_connection_get_type, "g_tls_connection_get_type", LIBRARY_GIO);
	Linker.link(g_tls_connection_emit_accept_certificate, "g_tls_connection_emit_accept_certificate", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_certificate, "g_tls_connection_get_certificate", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_channel_binding_data, "g_tls_connection_get_channel_binding_data", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_ciphersuite_name, "g_tls_connection_get_ciphersuite_name", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_database, "g_tls_connection_get_database", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_interaction, "g_tls_connection_get_interaction", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_negotiated_protocol, "g_tls_connection_get_negotiated_protocol", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_peer_certificate, "g_tls_connection_get_peer_certificate", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_peer_certificate_errors, "g_tls_connection_get_peer_certificate_errors", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_protocol_version, "g_tls_connection_get_protocol_version", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_rehandshake_mode, "g_tls_connection_get_rehandshake_mode", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_require_close_notify, "g_tls_connection_get_require_close_notify", LIBRARY_GIO);
	Linker.link(g_tls_connection_get_use_system_certdb, "g_tls_connection_get_use_system_certdb", LIBRARY_GIO);
	Linker.link(g_tls_connection_handshake, "g_tls_connection_handshake", LIBRARY_GIO);
	Linker.link(g_tls_connection_handshake_async, "g_tls_connection_handshake_async", LIBRARY_GIO);
	Linker.link(g_tls_connection_handshake_finish, "g_tls_connection_handshake_finish", LIBRARY_GIO);
	Linker.link(g_tls_connection_set_advertised_protocols, "g_tls_connection_set_advertised_protocols", LIBRARY_GIO);
	Linker.link(g_tls_connection_set_certificate, "g_tls_connection_set_certificate", LIBRARY_GIO);
	Linker.link(g_tls_connection_set_database, "g_tls_connection_set_database", LIBRARY_GIO);
	Linker.link(g_tls_connection_set_interaction, "g_tls_connection_set_interaction", LIBRARY_GIO);
	Linker.link(g_tls_connection_set_rehandshake_mode, "g_tls_connection_set_rehandshake_mode", LIBRARY_GIO);
	Linker.link(g_tls_connection_set_require_close_notify, "g_tls_connection_set_require_close_notify", LIBRARY_GIO);
	Linker.link(g_tls_connection_set_use_system_certdb, "g_tls_connection_set_use_system_certdb", LIBRARY_GIO);

	// gio.TlsDatabase

	Linker.link(g_tls_database_get_type, "g_tls_database_get_type", LIBRARY_GIO);
	Linker.link(g_tls_database_create_certificate_handle, "g_tls_database_create_certificate_handle", LIBRARY_GIO);
	Linker.link(g_tls_database_lookup_certificate_for_handle, "g_tls_database_lookup_certificate_for_handle", LIBRARY_GIO);
	Linker.link(g_tls_database_lookup_certificate_for_handle_async, "g_tls_database_lookup_certificate_for_handle_async", LIBRARY_GIO);
	Linker.link(g_tls_database_lookup_certificate_for_handle_finish, "g_tls_database_lookup_certificate_for_handle_finish", LIBRARY_GIO);
	Linker.link(g_tls_database_lookup_certificate_issuer, "g_tls_database_lookup_certificate_issuer", LIBRARY_GIO);
	Linker.link(g_tls_database_lookup_certificate_issuer_async, "g_tls_database_lookup_certificate_issuer_async", LIBRARY_GIO);
	Linker.link(g_tls_database_lookup_certificate_issuer_finish, "g_tls_database_lookup_certificate_issuer_finish", LIBRARY_GIO);
	Linker.link(g_tls_database_lookup_certificates_issued_by, "g_tls_database_lookup_certificates_issued_by", LIBRARY_GIO);
	Linker.link(g_tls_database_lookup_certificates_issued_by_async, "g_tls_database_lookup_certificates_issued_by_async", LIBRARY_GIO);
	Linker.link(g_tls_database_lookup_certificates_issued_by_finish, "g_tls_database_lookup_certificates_issued_by_finish", LIBRARY_GIO);
	Linker.link(g_tls_database_verify_chain, "g_tls_database_verify_chain", LIBRARY_GIO);
	Linker.link(g_tls_database_verify_chain_async, "g_tls_database_verify_chain_async", LIBRARY_GIO);
	Linker.link(g_tls_database_verify_chain_finish, "g_tls_database_verify_chain_finish", LIBRARY_GIO);

	// gio.TlsFileDatabase

	Linker.link(g_tls_file_database_get_type, "g_tls_file_database_get_type", LIBRARY_GIO);
	Linker.link(g_tls_file_database_new, "g_tls_file_database_new", LIBRARY_GIO);

	// gio.TlsInteraction

	Linker.link(g_tls_interaction_get_type, "g_tls_interaction_get_type", LIBRARY_GIO);
	Linker.link(g_tls_interaction_ask_password, "g_tls_interaction_ask_password", LIBRARY_GIO);
	Linker.link(g_tls_interaction_ask_password_async, "g_tls_interaction_ask_password_async", LIBRARY_GIO);
	Linker.link(g_tls_interaction_ask_password_finish, "g_tls_interaction_ask_password_finish", LIBRARY_GIO);
	Linker.link(g_tls_interaction_invoke_ask_password, "g_tls_interaction_invoke_ask_password", LIBRARY_GIO);
	Linker.link(g_tls_interaction_invoke_request_certificate, "g_tls_interaction_invoke_request_certificate", LIBRARY_GIO);
	Linker.link(g_tls_interaction_request_certificate, "g_tls_interaction_request_certificate", LIBRARY_GIO);
	Linker.link(g_tls_interaction_request_certificate_async, "g_tls_interaction_request_certificate_async", LIBRARY_GIO);
	Linker.link(g_tls_interaction_request_certificate_finish, "g_tls_interaction_request_certificate_finish", LIBRARY_GIO);

	// gio.TlsPassword

	Linker.link(g_tls_password_get_type, "g_tls_password_get_type", LIBRARY_GIO);
	Linker.link(g_tls_password_new, "g_tls_password_new", LIBRARY_GIO);
	Linker.link(g_tls_password_get_description, "g_tls_password_get_description", LIBRARY_GIO);
	Linker.link(g_tls_password_get_flags, "g_tls_password_get_flags", LIBRARY_GIO);
	Linker.link(g_tls_password_get_value, "g_tls_password_get_value", LIBRARY_GIO);
	Linker.link(g_tls_password_get_warning, "g_tls_password_get_warning", LIBRARY_GIO);
	Linker.link(g_tls_password_set_description, "g_tls_password_set_description", LIBRARY_GIO);
	Linker.link(g_tls_password_set_flags, "g_tls_password_set_flags", LIBRARY_GIO);
	Linker.link(g_tls_password_set_value, "g_tls_password_set_value", LIBRARY_GIO);
	Linker.link(g_tls_password_set_value_full, "g_tls_password_set_value_full", LIBRARY_GIO);
	Linker.link(g_tls_password_set_warning, "g_tls_password_set_warning", LIBRARY_GIO);

	// gio.TlsServerConnection

	Linker.link(g_tls_server_connection_get_type, "g_tls_server_connection_get_type", LIBRARY_GIO);
	Linker.link(g_tls_server_connection_new, "g_tls_server_connection_new", LIBRARY_GIO);

	// gio.UnixConnection

	Linker.link(g_unix_connection_get_type, "g_unix_connection_get_type", LIBRARY_GIO);
	Linker.link(g_unix_connection_receive_credentials, "g_unix_connection_receive_credentials", LIBRARY_GIO);
	Linker.link(g_unix_connection_receive_credentials_async, "g_unix_connection_receive_credentials_async", LIBRARY_GIO);
	Linker.link(g_unix_connection_receive_credentials_finish, "g_unix_connection_receive_credentials_finish", LIBRARY_GIO);
	Linker.link(g_unix_connection_receive_fd, "g_unix_connection_receive_fd", LIBRARY_GIO);
	Linker.link(g_unix_connection_send_credentials, "g_unix_connection_send_credentials", LIBRARY_GIO);
	Linker.link(g_unix_connection_send_credentials_async, "g_unix_connection_send_credentials_async", LIBRARY_GIO);
	Linker.link(g_unix_connection_send_credentials_finish, "g_unix_connection_send_credentials_finish", LIBRARY_GIO);
	Linker.link(g_unix_connection_send_fd, "g_unix_connection_send_fd", LIBRARY_GIO);

	// gio.UnixCredentialsMessage

	Linker.link(g_unix_credentials_message_get_type, "g_unix_credentials_message_get_type", LIBRARY_GIO);
	Linker.link(g_unix_credentials_message_new, "g_unix_credentials_message_new", LIBRARY_GIO);
	Linker.link(g_unix_credentials_message_new_with_credentials, "g_unix_credentials_message_new_with_credentials", LIBRARY_GIO);
	Linker.link(g_unix_credentials_message_is_supported, "g_unix_credentials_message_is_supported", LIBRARY_GIO);
	Linker.link(g_unix_credentials_message_get_credentials, "g_unix_credentials_message_get_credentials", LIBRARY_GIO);

	// gio.UnixFDList

	Linker.link(g_unix_fd_list_get_type, "g_unix_fd_list_get_type", LIBRARY_GIO);
	Linker.link(g_unix_fd_list_new, "g_unix_fd_list_new", LIBRARY_GIO);
	Linker.link(g_unix_fd_list_new_from_array, "g_unix_fd_list_new_from_array", LIBRARY_GIO);
	Linker.link(g_unix_fd_list_append, "g_unix_fd_list_append", LIBRARY_GIO);
	Linker.link(g_unix_fd_list_get, "g_unix_fd_list_get", LIBRARY_GIO);
	Linker.link(g_unix_fd_list_get_length, "g_unix_fd_list_get_length", LIBRARY_GIO);
	Linker.link(g_unix_fd_list_peek_fds, "g_unix_fd_list_peek_fds", LIBRARY_GIO);
	Linker.link(g_unix_fd_list_steal_fds, "g_unix_fd_list_steal_fds", LIBRARY_GIO);

	// gio.UnixFDMessage

	Linker.link(g_unix_fd_message_get_type, "g_unix_fd_message_get_type", LIBRARY_GIO);
	Linker.link(g_unix_fd_message_new, "g_unix_fd_message_new", LIBRARY_GIO);
	Linker.link(g_unix_fd_message_new_with_fd_list, "g_unix_fd_message_new_with_fd_list", LIBRARY_GIO);
	Linker.link(g_unix_fd_message_append_fd, "g_unix_fd_message_append_fd", LIBRARY_GIO);
	Linker.link(g_unix_fd_message_get_fd_list, "g_unix_fd_message_get_fd_list", LIBRARY_GIO);
	Linker.link(g_unix_fd_message_steal_fds, "g_unix_fd_message_steal_fds", LIBRARY_GIO);

	// gio.UnixInputStream

	Linker.link(g_unix_input_stream_get_type, "g_unix_input_stream_get_type", LIBRARY_GIO);
	Linker.link(g_unix_input_stream_new, "g_unix_input_stream_new", LIBRARY_GIO);
	Linker.link(g_unix_input_stream_get_close_fd, "g_unix_input_stream_get_close_fd", LIBRARY_GIO);
	Linker.link(g_unix_input_stream_get_fd, "g_unix_input_stream_get_fd", LIBRARY_GIO);
	Linker.link(g_unix_input_stream_set_close_fd, "g_unix_input_stream_set_close_fd", LIBRARY_GIO);

	// gio.UnixMountEntry

	Linker.link(g_unix_mount_entry_get_type, "g_unix_mount_entry_get_type", LIBRARY_GIO);
	Linker.link(g_unix_is_mount_path_system_internal, "g_unix_is_mount_path_system_internal", LIBRARY_GIO);
	Linker.link(g_unix_mount_at, "g_unix_mount_at", LIBRARY_GIO);
	Linker.link(g_unix_mount_compare, "g_unix_mount_compare", LIBRARY_GIO);
	Linker.link(g_unix_mount_free, "g_unix_mount_free", LIBRARY_GIO);
	Linker.link(g_unix_mount_get_device_path, "g_unix_mount_get_device_path", LIBRARY_GIO);
	Linker.link(g_unix_mount_get_fs_type, "g_unix_mount_get_fs_type", LIBRARY_GIO);
	Linker.link(g_unix_mount_get_mount_path, "g_unix_mount_get_mount_path", LIBRARY_GIO);
	Linker.link(g_unix_mount_guess_can_eject, "g_unix_mount_guess_can_eject", LIBRARY_GIO);
	Linker.link(g_unix_mount_guess_icon, "g_unix_mount_guess_icon", LIBRARY_GIO);
	Linker.link(g_unix_mount_guess_name, "g_unix_mount_guess_name", LIBRARY_GIO);
	Linker.link(g_unix_mount_guess_should_display, "g_unix_mount_guess_should_display", LIBRARY_GIO);
	Linker.link(g_unix_mount_guess_symbolic_icon, "g_unix_mount_guess_symbolic_icon", LIBRARY_GIO);
	Linker.link(g_unix_mount_is_readonly, "g_unix_mount_is_readonly", LIBRARY_GIO);
	Linker.link(g_unix_mount_is_system_internal, "g_unix_mount_is_system_internal", LIBRARY_GIO);
	Linker.link(g_unix_mount_points_changed_since, "g_unix_mount_points_changed_since", LIBRARY_GIO);
	Linker.link(g_unix_mount_points_get, "g_unix_mount_points_get", LIBRARY_GIO);
	Linker.link(g_unix_mounts_changed_since, "g_unix_mounts_changed_since", LIBRARY_GIO);
	Linker.link(g_unix_mounts_get, "g_unix_mounts_get", LIBRARY_GIO);
	Linker.link(g_unix_mount_copy, "g_unix_mount_copy", LIBRARY_GIO);
	Linker.link(g_unix_mount_for, "g_unix_mount_for", LIBRARY_GIO);
	Linker.link(g_unix_mount_get_options, "g_unix_mount_get_options", LIBRARY_GIO);
	Linker.link(g_unix_mount_get_root_path, "g_unix_mount_get_root_path", LIBRARY_GIO);

	// gio.UnixMountMonitor

	Linker.link(g_unix_mount_monitor_get_type, "g_unix_mount_monitor_get_type", LIBRARY_GIO);
	Linker.link(g_unix_mount_monitor_new, "g_unix_mount_monitor_new", LIBRARY_GIO);
	Linker.link(g_unix_mount_monitor_get, "g_unix_mount_monitor_get", LIBRARY_GIO);
	Linker.link(g_unix_mount_monitor_set_rate_limit, "g_unix_mount_monitor_set_rate_limit", LIBRARY_GIO);

	// gio.UnixMountPoint

	Linker.link(g_unix_mount_point_get_type, "g_unix_mount_point_get_type", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_compare, "g_unix_mount_point_compare", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_copy, "g_unix_mount_point_copy", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_free, "g_unix_mount_point_free", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_get_device_path, "g_unix_mount_point_get_device_path", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_get_fs_type, "g_unix_mount_point_get_fs_type", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_get_mount_path, "g_unix_mount_point_get_mount_path", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_get_options, "g_unix_mount_point_get_options", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_guess_can_eject, "g_unix_mount_point_guess_can_eject", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_guess_icon, "g_unix_mount_point_guess_icon", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_guess_name, "g_unix_mount_point_guess_name", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_guess_symbolic_icon, "g_unix_mount_point_guess_symbolic_icon", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_is_loopback, "g_unix_mount_point_is_loopback", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_is_readonly, "g_unix_mount_point_is_readonly", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_is_user_mountable, "g_unix_mount_point_is_user_mountable", LIBRARY_GIO);
	Linker.link(g_unix_mount_point_at, "g_unix_mount_point_at", LIBRARY_GIO);

	// gio.UnixOutputStream

	Linker.link(g_unix_output_stream_get_type, "g_unix_output_stream_get_type", LIBRARY_GIO);
	Linker.link(g_unix_output_stream_new, "g_unix_output_stream_new", LIBRARY_GIO);
	Linker.link(g_unix_output_stream_get_close_fd, "g_unix_output_stream_get_close_fd", LIBRARY_GIO);
	Linker.link(g_unix_output_stream_get_fd, "g_unix_output_stream_get_fd", LIBRARY_GIO);
	Linker.link(g_unix_output_stream_set_close_fd, "g_unix_output_stream_set_close_fd", LIBRARY_GIO);

	// gio.UnixSocketAddress

	Linker.link(g_unix_socket_address_get_type, "g_unix_socket_address_get_type", LIBRARY_GIO);
	Linker.link(g_unix_socket_address_new, "g_unix_socket_address_new", LIBRARY_GIO);
	Linker.link(g_unix_socket_address_new_abstract, "g_unix_socket_address_new_abstract", LIBRARY_GIO);
	Linker.link(g_unix_socket_address_new_with_type, "g_unix_socket_address_new_with_type", LIBRARY_GIO);
	Linker.link(g_unix_socket_address_abstract_names_supported, "g_unix_socket_address_abstract_names_supported", LIBRARY_GIO);
	Linker.link(g_unix_socket_address_get_address_type, "g_unix_socket_address_get_address_type", LIBRARY_GIO);
	Linker.link(g_unix_socket_address_get_is_abstract, "g_unix_socket_address_get_is_abstract", LIBRARY_GIO);
	Linker.link(g_unix_socket_address_get_path, "g_unix_socket_address_get_path", LIBRARY_GIO);
	Linker.link(g_unix_socket_address_get_path_len, "g_unix_socket_address_get_path_len", LIBRARY_GIO);

	// gio.Vfs

	Linker.link(g_vfs_get_type, "g_vfs_get_type", LIBRARY_GIO);
	Linker.link(g_vfs_get_default, "g_vfs_get_default", LIBRARY_GIO);
	Linker.link(g_vfs_get_local, "g_vfs_get_local", LIBRARY_GIO);
	Linker.link(g_vfs_get_file_for_path, "g_vfs_get_file_for_path", LIBRARY_GIO);
	Linker.link(g_vfs_get_file_for_uri, "g_vfs_get_file_for_uri", LIBRARY_GIO);
	Linker.link(g_vfs_get_supported_uri_schemes, "g_vfs_get_supported_uri_schemes", LIBRARY_GIO);
	Linker.link(g_vfs_is_active, "g_vfs_is_active", LIBRARY_GIO);
	Linker.link(g_vfs_parse_name, "g_vfs_parse_name", LIBRARY_GIO);
	Linker.link(g_vfs_register_uri_scheme, "g_vfs_register_uri_scheme", LIBRARY_GIO);
	Linker.link(g_vfs_unregister_uri_scheme, "g_vfs_unregister_uri_scheme", LIBRARY_GIO);

	// gio.Volume

	Linker.link(g_volume_get_type, "g_volume_get_type", LIBRARY_GIO);
	Linker.link(g_volume_can_eject, "g_volume_can_eject", LIBRARY_GIO);
	Linker.link(g_volume_can_mount, "g_volume_can_mount", LIBRARY_GIO);
	Linker.link(g_volume_eject, "g_volume_eject", LIBRARY_GIO);
	Linker.link(g_volume_eject_finish, "g_volume_eject_finish", LIBRARY_GIO);
	Linker.link(g_volume_eject_with_operation, "g_volume_eject_with_operation", LIBRARY_GIO);
	Linker.link(g_volume_eject_with_operation_finish, "g_volume_eject_with_operation_finish", LIBRARY_GIO);
	Linker.link(g_volume_enumerate_identifiers, "g_volume_enumerate_identifiers", LIBRARY_GIO);
	Linker.link(g_volume_get_activation_root, "g_volume_get_activation_root", LIBRARY_GIO);
	Linker.link(g_volume_get_drive, "g_volume_get_drive", LIBRARY_GIO);
	Linker.link(g_volume_get_icon, "g_volume_get_icon", LIBRARY_GIO);
	Linker.link(g_volume_get_identifier, "g_volume_get_identifier", LIBRARY_GIO);
	Linker.link(g_volume_get_mount, "g_volume_get_mount", LIBRARY_GIO);
	Linker.link(g_volume_get_name, "g_volume_get_name", LIBRARY_GIO);
	Linker.link(g_volume_get_sort_key, "g_volume_get_sort_key", LIBRARY_GIO);
	Linker.link(g_volume_get_symbolic_icon, "g_volume_get_symbolic_icon", LIBRARY_GIO);
	Linker.link(g_volume_get_uuid, "g_volume_get_uuid", LIBRARY_GIO);
	Linker.link(g_volume_mount, "g_volume_mount", LIBRARY_GIO);
	Linker.link(g_volume_mount_finish, "g_volume_mount_finish", LIBRARY_GIO);
	Linker.link(g_volume_should_automount, "g_volume_should_automount", LIBRARY_GIO);

	// gio.VolumeMonitor

	Linker.link(g_volume_monitor_get_type, "g_volume_monitor_get_type", LIBRARY_GIO);
	Linker.link(g_volume_monitor_adopt_orphan_mount, "g_volume_monitor_adopt_orphan_mount", LIBRARY_GIO);
	Linker.link(g_volume_monitor_get, "g_volume_monitor_get", LIBRARY_GIO);
	Linker.link(g_volume_monitor_get_connected_drives, "g_volume_monitor_get_connected_drives", LIBRARY_GIO);
	Linker.link(g_volume_monitor_get_mount_for_uuid, "g_volume_monitor_get_mount_for_uuid", LIBRARY_GIO);
	Linker.link(g_volume_monitor_get_mounts, "g_volume_monitor_get_mounts", LIBRARY_GIO);
	Linker.link(g_volume_monitor_get_volume_for_uuid, "g_volume_monitor_get_volume_for_uuid", LIBRARY_GIO);
	Linker.link(g_volume_monitor_get_volumes, "g_volume_monitor_get_volumes", LIBRARY_GIO);

	// gio.ZlibCompressor

	Linker.link(g_zlib_compressor_get_type, "g_zlib_compressor_get_type", LIBRARY_GIO);
	Linker.link(g_zlib_compressor_new, "g_zlib_compressor_new", LIBRARY_GIO);
	Linker.link(g_zlib_compressor_get_file_info, "g_zlib_compressor_get_file_info", LIBRARY_GIO);
	Linker.link(g_zlib_compressor_set_file_info, "g_zlib_compressor_set_file_info", LIBRARY_GIO);

	// gio.ZlibDecompressor

	Linker.link(g_zlib_decompressor_get_type, "g_zlib_decompressor_get_type", LIBRARY_GIO);
	Linker.link(g_zlib_decompressor_new, "g_zlib_decompressor_new", LIBRARY_GIO);
	Linker.link(g_zlib_decompressor_get_file_info, "g_zlib_decompressor_get_file_info", LIBRARY_GIO);

	// gio.PollableUtils

	Linker.link(g_pollable_source_new, "g_pollable_source_new", LIBRARY_GIO);
	Linker.link(g_pollable_source_new_full, "g_pollable_source_new_full", LIBRARY_GIO);
	Linker.link(g_pollable_stream_read, "g_pollable_stream_read", LIBRARY_GIO);
	Linker.link(g_pollable_stream_write, "g_pollable_stream_write", LIBRARY_GIO);
	Linker.link(g_pollable_stream_write_all, "g_pollable_stream_write_all", LIBRARY_GIO);

	// gio.DBusNames

	Linker.link(g_bus_own_name, "g_bus_own_name", LIBRARY_GIO);
	Linker.link(g_bus_own_name_on_connection, "g_bus_own_name_on_connection", LIBRARY_GIO);
	Linker.link(g_bus_own_name_on_connection_with_closures, "g_bus_own_name_on_connection_with_closures", LIBRARY_GIO);
	Linker.link(g_bus_own_name_with_closures, "g_bus_own_name_with_closures", LIBRARY_GIO);
	Linker.link(g_bus_unown_name, "g_bus_unown_name", LIBRARY_GIO);
	Linker.link(g_bus_unwatch_name, "g_bus_unwatch_name", LIBRARY_GIO);
	Linker.link(g_bus_watch_name, "g_bus_watch_name", LIBRARY_GIO);
	Linker.link(g_bus_watch_name_on_connection, "g_bus_watch_name_on_connection", LIBRARY_GIO);
	Linker.link(g_bus_watch_name_on_connection_with_closures, "g_bus_watch_name_on_connection_with_closures", LIBRARY_GIO);
	Linker.link(g_bus_watch_name_with_closures, "g_bus_watch_name_with_closures", LIBRARY_GIO);

	// gio.ContentType

	Linker.link(g_content_type_can_be_executable, "g_content_type_can_be_executable", LIBRARY_GIO);
	Linker.link(g_content_type_equals, "g_content_type_equals", LIBRARY_GIO);
	Linker.link(g_content_type_from_mime_type, "g_content_type_from_mime_type", LIBRARY_GIO);
	Linker.link(g_content_type_get_description, "g_content_type_get_description", LIBRARY_GIO);
	Linker.link(g_content_type_get_generic_icon_name, "g_content_type_get_generic_icon_name", LIBRARY_GIO);
	Linker.link(g_content_type_get_icon, "g_content_type_get_icon", LIBRARY_GIO);
	Linker.link(g_content_type_get_mime_type, "g_content_type_get_mime_type", LIBRARY_GIO);
	Linker.link(g_content_type_get_symbolic_icon, "g_content_type_get_symbolic_icon", LIBRARY_GIO);
	Linker.link(g_content_type_guess, "g_content_type_guess", LIBRARY_GIO);
	Linker.link(g_content_type_guess_for_tree, "g_content_type_guess_for_tree", LIBRARY_GIO);
	Linker.link(g_content_type_is_a, "g_content_type_is_a", LIBRARY_GIO);
	Linker.link(g_content_type_is_unknown, "g_content_type_is_unknown", LIBRARY_GIO);
	Linker.link(g_content_types_get_registered, "g_content_types_get_registered", LIBRARY_GIO);
	Linker.link(g_content_type_is_mime_type, "g_content_type_is_mime_type", LIBRARY_GIO);
	Linker.link(g_content_type_get_mime_dirs, "g_content_type_get_mime_dirs", LIBRARY_GIO);
	Linker.link(g_content_type_set_mime_dirs, "g_content_type_set_mime_dirs", LIBRARY_GIO);

	// gio.DBusError

	Linker.link(g_dbus_error_encode_gerror, "g_dbus_error_encode_gerror", LIBRARY_GIO);
	Linker.link(g_dbus_error_get_remote_error, "g_dbus_error_get_remote_error", LIBRARY_GIO);
	Linker.link(g_dbus_error_is_remote_error, "g_dbus_error_is_remote_error", LIBRARY_GIO);
	Linker.link(g_dbus_error_new_for_dbus_error, "g_dbus_error_new_for_dbus_error", LIBRARY_GIO);
	Linker.link(g_dbus_error_quark, "g_dbus_error_quark", LIBRARY_GIO);
	Linker.link(g_dbus_error_register_error, "g_dbus_error_register_error", LIBRARY_GIO);
	Linker.link(g_dbus_error_register_error_domain, "g_dbus_error_register_error_domain", LIBRARY_GIO);
	Linker.link(g_dbus_error_strip_remote_error, "g_dbus_error_strip_remote_error", LIBRARY_GIO);
	Linker.link(g_dbus_error_unregister_error, "g_dbus_error_unregister_error", LIBRARY_GIO);

	// gio.DBusUtilities

	Linker.link(g_dbus_address_escape_value, "g_dbus_address_escape_value", LIBRARY_GIO);
	Linker.link(g_dbus_address_get_for_bus_sync, "g_dbus_address_get_for_bus_sync", LIBRARY_GIO);
	Linker.link(g_dbus_address_get_stream, "g_dbus_address_get_stream", LIBRARY_GIO);
	Linker.link(g_dbus_address_get_stream_finish, "g_dbus_address_get_stream_finish", LIBRARY_GIO);
	Linker.link(g_dbus_address_get_stream_sync, "g_dbus_address_get_stream_sync", LIBRARY_GIO);
	Linker.link(g_dbus_generate_guid, "g_dbus_generate_guid", LIBRARY_GIO);
	Linker.link(g_dbus_gvalue_to_gvariant, "g_dbus_gvalue_to_gvariant", LIBRARY_GIO);
	Linker.link(g_dbus_gvariant_to_gvalue, "g_dbus_gvariant_to_gvalue", LIBRARY_GIO);
	Linker.link(g_dbus_is_address, "g_dbus_is_address", LIBRARY_GIO);
	Linker.link(g_dbus_is_guid, "g_dbus_is_guid", LIBRARY_GIO);
	Linker.link(g_dbus_is_interface_name, "g_dbus_is_interface_name", LIBRARY_GIO);
	Linker.link(g_dbus_is_member_name, "g_dbus_is_member_name", LIBRARY_GIO);
	Linker.link(g_dbus_is_name, "g_dbus_is_name", LIBRARY_GIO);
	Linker.link(g_dbus_is_supported_address, "g_dbus_is_supported_address", LIBRARY_GIO);
	Linker.link(g_dbus_is_unique_name, "g_dbus_is_unique_name", LIBRARY_GIO);

	// gio.ErrorGIO

	Linker.link(g_io_error_from_errno, "g_io_error_from_errno", LIBRARY_GIO);
	Linker.link(g_io_error_quark, "g_io_error_quark", LIBRARY_GIO);
}

__gshared extern(C)
{

	// gio.Action

	GType function() c_g_action_get_type;
	int function(const(char)* actionName) c_g_action_name_is_valid;
	int function(const(char)* detailedName, char** actionName, GVariant** targetValue, GError** err) c_g_action_parse_detailed_name;
	char* function(const(char)* actionName, GVariant* targetValue) c_g_action_print_detailed_name;
	void function(GAction* action, GVariant* parameter) c_g_action_activate;
	void function(GAction* action, GVariant* value) c_g_action_change_state;
	int function(GAction* action) c_g_action_get_enabled;
	const(char)* function(GAction* action) c_g_action_get_name;
	GVariantType* function(GAction* action) c_g_action_get_parameter_type;
	GVariant* function(GAction* action) c_g_action_get_state;
	GVariant* function(GAction* action) c_g_action_get_state_hint;
	GVariantType* function(GAction* action) c_g_action_get_state_type;

	// gio.ActionGroup

	GType function() c_g_action_group_get_type;
	void function(GActionGroup* actionGroup, const(char)* actionName) c_g_action_group_action_added;
	void function(GActionGroup* actionGroup, const(char)* actionName, int enabled) c_g_action_group_action_enabled_changed;
	void function(GActionGroup* actionGroup, const(char)* actionName) c_g_action_group_action_removed;
	void function(GActionGroup* actionGroup, const(char)* actionName, GVariant* state) c_g_action_group_action_state_changed;
	void function(GActionGroup* actionGroup, const(char)* actionName, GVariant* parameter) c_g_action_group_activate_action;
	void function(GActionGroup* actionGroup, const(char)* actionName, GVariant* value) c_g_action_group_change_action_state;
	int function(GActionGroup* actionGroup, const(char)* actionName) c_g_action_group_get_action_enabled;
	GVariantType* function(GActionGroup* actionGroup, const(char)* actionName) c_g_action_group_get_action_parameter_type;
	GVariant* function(GActionGroup* actionGroup, const(char)* actionName) c_g_action_group_get_action_state;
	GVariant* function(GActionGroup* actionGroup, const(char)* actionName) c_g_action_group_get_action_state_hint;
	GVariantType* function(GActionGroup* actionGroup, const(char)* actionName) c_g_action_group_get_action_state_type;
	int function(GActionGroup* actionGroup, const(char)* actionName) c_g_action_group_has_action;
	char** function(GActionGroup* actionGroup) c_g_action_group_list_actions;
	int function(GActionGroup* actionGroup, const(char)* actionName, int* enabled, GVariantType** parameterType, GVariantType** stateType, GVariant** stateHint, GVariant** state) c_g_action_group_query_action;

	// gio.ActionMap

	GType function() c_g_action_map_get_type;
	void function(GActionMap* actionMap, GAction* action) c_g_action_map_add_action;
	void function(GActionMap* actionMap, GActionEntry* entries, int nEntries, void* userData) c_g_action_map_add_action_entries;
	GAction* function(GActionMap* actionMap, const(char)* actionName) c_g_action_map_lookup_action;
	void function(GActionMap* actionMap, const(char)* actionName) c_g_action_map_remove_action;

	// gio.AppInfo

	GType function() c_g_app_info_get_type;
	GAppInfo* function(char* commandline, const(char)* applicationName, GAppInfoCreateFlags flags, GError** err) c_g_app_info_create_from_commandline;
	GList* function() c_g_app_info_get_all;
	GList* function(const(char)* contentType) c_g_app_info_get_all_for_type;
	GAppInfo* function(const(char)* contentType, int mustSupportUris) c_g_app_info_get_default_for_type;
	GAppInfo* function(const(char)* uriScheme) c_g_app_info_get_default_for_uri_scheme;
	GList* function(const(char)* contentType) c_g_app_info_get_fallback_for_type;
	GList* function(const(char)* contentType) c_g_app_info_get_recommended_for_type;
	int function(const(char)* uri, GAppLaunchContext* context, GError** err) c_g_app_info_launch_default_for_uri;
	void function(const(char)* uri, GAppLaunchContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_app_info_launch_default_for_uri_async;
	int function(GAsyncResult* result, GError** err) c_g_app_info_launch_default_for_uri_finish;
	void function(const(char)* contentType) c_g_app_info_reset_type_associations;
	int function(GAppInfo* appinfo, const(char)* contentType, GError** err) c_g_app_info_add_supports_type;
	int function(GAppInfo* appinfo) c_g_app_info_can_delete;
	int function(GAppInfo* appinfo) c_g_app_info_can_remove_supports_type;
	int function(GAppInfo* appinfo) c_g_app_info_delete;
	GAppInfo* function(GAppInfo* appinfo) c_g_app_info_dup;
	int function(GAppInfo* appinfo1, GAppInfo* appinfo2) c_g_app_info_equal;
	char* function(GAppInfo* appinfo) c_g_app_info_get_commandline;
	const(char)* function(GAppInfo* appinfo) c_g_app_info_get_description;
	const(char)* function(GAppInfo* appinfo) c_g_app_info_get_display_name;
	char* function(GAppInfo* appinfo) c_g_app_info_get_executable;
	GIcon* function(GAppInfo* appinfo) c_g_app_info_get_icon;
	const(char)* function(GAppInfo* appinfo) c_g_app_info_get_id;
	const(char)* function(GAppInfo* appinfo) c_g_app_info_get_name;
	char** function(GAppInfo* appinfo) c_g_app_info_get_supported_types;
	int function(GAppInfo* appinfo, GList* files, GAppLaunchContext* context, GError** err) c_g_app_info_launch;
	int function(GAppInfo* appinfo, GList* uris, GAppLaunchContext* context, GError** err) c_g_app_info_launch_uris;
	void function(GAppInfo* appinfo, GList* uris, GAppLaunchContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_app_info_launch_uris_async;
	int function(GAppInfo* appinfo, GAsyncResult* result, GError** err) c_g_app_info_launch_uris_finish;
	int function(GAppInfo* appinfo, const(char)* contentType, GError** err) c_g_app_info_remove_supports_type;
	int function(GAppInfo* appinfo, char* extension, GError** err) c_g_app_info_set_as_default_for_extension;
	int function(GAppInfo* appinfo, const(char)* contentType, GError** err) c_g_app_info_set_as_default_for_type;
	int function(GAppInfo* appinfo, const(char)* contentType, GError** err) c_g_app_info_set_as_last_used_for_type;
	int function(GAppInfo* appinfo) c_g_app_info_should_show;
	int function(GAppInfo* appinfo) c_g_app_info_supports_files;
	int function(GAppInfo* appinfo) c_g_app_info_supports_uris;

	// gio.AppInfoMonitor

	GType function() c_g_app_info_monitor_get_type;
	GAppInfoMonitor* function() c_g_app_info_monitor_get;

	// gio.AppLaunchContext

	GType function() c_g_app_launch_context_get_type;
	GAppLaunchContext* function() c_g_app_launch_context_new;
	char* function(GAppLaunchContext* context, GAppInfo* info, GList* files) c_g_app_launch_context_get_display;
	char** function(GAppLaunchContext* context) c_g_app_launch_context_get_environment;
	char* function(GAppLaunchContext* context, GAppInfo* info, GList* files) c_g_app_launch_context_get_startup_notify_id;
	void function(GAppLaunchContext* context, const(char)* startupNotifyId) c_g_app_launch_context_launch_failed;
	void function(GAppLaunchContext* context, char* variable, char* value) c_g_app_launch_context_setenv;
	void function(GAppLaunchContext* context, char* variable) c_g_app_launch_context_unsetenv;

	// gio.Application

	GType function() c_g_application_get_type;
	GApplication* function(const(char)* applicationId, GApplicationFlags flags) c_g_application_new;
	GApplication* function() c_g_application_get_default;
	int function(const(char)* applicationId) c_g_application_id_is_valid;
	void function(GApplication* application) c_g_application_activate;
	void function(GApplication* application, const(char)* longName, char shortName, GOptionFlags flags, GOptionArg arg, const(char)* description, const(char)* argDescription) c_g_application_add_main_option;
	void function(GApplication* application, GOptionEntry* entries) c_g_application_add_main_option_entries;
	void function(GApplication* application, GOptionGroup* group) c_g_application_add_option_group;
	void function(GApplication* application, void* object, const(char)* property) c_g_application_bind_busy_property;
	const(char)* function(GApplication* application) c_g_application_get_application_id;
	GDBusConnection* function(GApplication* application) c_g_application_get_dbus_connection;
	const(char)* function(GApplication* application) c_g_application_get_dbus_object_path;
	GApplicationFlags function(GApplication* application) c_g_application_get_flags;
	uint function(GApplication* application) c_g_application_get_inactivity_timeout;
	int function(GApplication* application) c_g_application_get_is_busy;
	int function(GApplication* application) c_g_application_get_is_registered;
	int function(GApplication* application) c_g_application_get_is_remote;
	const(char)* function(GApplication* application) c_g_application_get_resource_base_path;
	void function(GApplication* application) c_g_application_hold;
	void function(GApplication* application) c_g_application_mark_busy;
	void function(GApplication* application, GFile** files, int nFiles, const(char)* hint) c_g_application_open;
	void function(GApplication* application) c_g_application_quit;
	int function(GApplication* application, GCancellable* cancellable, GError** err) c_g_application_register;
	void function(GApplication* application) c_g_application_release;
	int function(GApplication* application, int argc, char** argv) c_g_application_run;
	void function(GApplication* application, const(char)* id, GNotification* notification) c_g_application_send_notification;
	void function(GApplication* application, GActionGroup* actionGroup) c_g_application_set_action_group;
	void function(GApplication* application, const(char)* applicationId) c_g_application_set_application_id;
	void function(GApplication* application) c_g_application_set_default;
	void function(GApplication* application, GApplicationFlags flags) c_g_application_set_flags;
	void function(GApplication* application, uint inactivityTimeout) c_g_application_set_inactivity_timeout;
	void function(GApplication* application, const(char)* description) c_g_application_set_option_context_description;
	void function(GApplication* application, const(char)* parameterString) c_g_application_set_option_context_parameter_string;
	void function(GApplication* application, const(char)* summary) c_g_application_set_option_context_summary;
	void function(GApplication* application, const(char)* resourcePath) c_g_application_set_resource_base_path;
	void function(GApplication* application, void* object, const(char)* property) c_g_application_unbind_busy_property;
	void function(GApplication* application) c_g_application_unmark_busy;
	void function(GApplication* application, const(char)* id) c_g_application_withdraw_notification;

	// gio.ApplicationCommandLine

	GType function() c_g_application_command_line_get_type;
	GFile* function(GApplicationCommandLine* cmdline, char* arg) c_g_application_command_line_create_file_for_arg;
	char** function(GApplicationCommandLine* cmdline, int* argc) c_g_application_command_line_get_arguments;
	char* function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_cwd;
	char** function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_environ;
	int function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_exit_status;
	int function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_is_remote;
	GVariantDict* function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_options_dict;
	GVariant* function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_platform_data;
	GInputStream* function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_stdin;
	const(char)* function(GApplicationCommandLine* cmdline, char* name) c_g_application_command_line_getenv;
	void function(GApplicationCommandLine* cmdline, const(char)* format, ... ) c_g_application_command_line_print;
	void function(GApplicationCommandLine* cmdline, const(char)* format, ... ) c_g_application_command_line_printerr;
	void function(GApplicationCommandLine* cmdline, int exitStatus) c_g_application_command_line_set_exit_status;

	// gio.AsyncInitable

	GType function() c_g_async_initable_get_type;
	void function(GType objectType, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData, const(char)* firstPropertyName, ... ) c_g_async_initable_new_async;
	void function(GType objectType, const(char)* firstPropertyName, void* varArgs, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_async_initable_new_valist_async;
	void function(GType objectType, uint nParameters, GParameter* parameters, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_async_initable_newv_async;
	void function(GAsyncInitable* initable, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_async_initable_init_async;
	int function(GAsyncInitable* initable, GAsyncResult* res, GError** err) c_g_async_initable_init_finish;
	GObject* function(GAsyncInitable* initable, GAsyncResult* res, GError** err) c_g_async_initable_new_finish;

	// gio.AsyncResult

	GType function() c_g_async_result_get_type;
	GObject* function(GAsyncResult* res) c_g_async_result_get_source_object;
	void* function(GAsyncResult* res) c_g_async_result_get_user_data;
	int function(GAsyncResult* res, void* sourceTag) c_g_async_result_is_tagged;
	int function(GAsyncResult* res, GError** err) c_g_async_result_legacy_propagate_error;

	// gio.BufferedInputStream

	GType function() c_g_buffered_input_stream_get_type;
	GInputStream* function(GInputStream* baseStream) c_g_buffered_input_stream_new;
	GInputStream* function(GInputStream* baseStream, size_t size) c_g_buffered_input_stream_new_sized;
	ptrdiff_t function(GBufferedInputStream* stream, ptrdiff_t count, GCancellable* cancellable, GError** err) c_g_buffered_input_stream_fill;
	void function(GBufferedInputStream* stream, ptrdiff_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_buffered_input_stream_fill_async;
	ptrdiff_t function(GBufferedInputStream* stream, GAsyncResult* result, GError** err) c_g_buffered_input_stream_fill_finish;
	size_t function(GBufferedInputStream* stream) c_g_buffered_input_stream_get_available;
	size_t function(GBufferedInputStream* stream) c_g_buffered_input_stream_get_buffer_size;
	size_t function(GBufferedInputStream* stream, void* buffer, size_t offset, size_t count) c_g_buffered_input_stream_peek;
	void* function(GBufferedInputStream* stream, size_t* count) c_g_buffered_input_stream_peek_buffer;
	int function(GBufferedInputStream* stream, GCancellable* cancellable, GError** err) c_g_buffered_input_stream_read_byte;
	void function(GBufferedInputStream* stream, size_t size) c_g_buffered_input_stream_set_buffer_size;

	// gio.BufferedOutputStream

	GType function() c_g_buffered_output_stream_get_type;
	GOutputStream* function(GOutputStream* baseStream) c_g_buffered_output_stream_new;
	GOutputStream* function(GOutputStream* baseStream, size_t size) c_g_buffered_output_stream_new_sized;
	int function(GBufferedOutputStream* stream) c_g_buffered_output_stream_get_auto_grow;
	size_t function(GBufferedOutputStream* stream) c_g_buffered_output_stream_get_buffer_size;
	void function(GBufferedOutputStream* stream, int autoGrow) c_g_buffered_output_stream_set_auto_grow;
	void function(GBufferedOutputStream* stream, size_t size) c_g_buffered_output_stream_set_buffer_size;

	// gio.BytesIcon

	GType function() c_g_bytes_icon_get_type;
	GIcon* function(GBytes* bytes) c_g_bytes_icon_new;
	GBytes* function(GBytesIcon* icon) c_g_bytes_icon_get_bytes;

	// gio.Cancellable

	GType function() c_g_cancellable_get_type;
	GCancellable* function() c_g_cancellable_new;
	GCancellable* function() c_g_cancellable_get_current;
	void function(GCancellable* cancellable) c_g_cancellable_cancel;
	gulong function(GCancellable* cancellable, GCallback callback, void* data, GDestroyNotify dataDestroyFunc) c_g_cancellable_connect;
	void function(GCancellable* cancellable, gulong handlerId) c_g_cancellable_disconnect;
	int function(GCancellable* cancellable) c_g_cancellable_get_fd;
	int function(GCancellable* cancellable) c_g_cancellable_is_cancelled;
	int function(GCancellable* cancellable, GPollFD* pollfd) c_g_cancellable_make_pollfd;
	void function(GCancellable* cancellable) c_g_cancellable_pop_current;
	void function(GCancellable* cancellable) c_g_cancellable_push_current;
	void function(GCancellable* cancellable) c_g_cancellable_release_fd;
	void function(GCancellable* cancellable) c_g_cancellable_reset;
	int function(GCancellable* cancellable, GError** err) c_g_cancellable_set_error_if_cancelled;
	GSource* function(GCancellable* cancellable) c_g_cancellable_source_new;

	// gio.CharsetConverter

	GType function() c_g_charset_converter_get_type;
	GCharsetConverter* function(const(char)* toCharset, const(char)* fromCharset, GError** err) c_g_charset_converter_new;
	uint function(GCharsetConverter* converter) c_g_charset_converter_get_num_fallbacks;
	int function(GCharsetConverter* converter) c_g_charset_converter_get_use_fallback;
	void function(GCharsetConverter* converter, int useFallback) c_g_charset_converter_set_use_fallback;

	// gio.Converter

	GType function() c_g_converter_get_type;
	GConverterResult function(GConverter* converter, void* inbuf, size_t inbufSize, void* outbuf, size_t outbufSize, GConverterFlags flags, size_t* bytesRead, size_t* bytesWritten, GError** err) c_g_converter_convert;
	void function(GConverter* converter) c_g_converter_reset;

	// gio.ConverterInputStream

	GType function() c_g_converter_input_stream_get_type;
	GInputStream* function(GInputStream* baseStream, GConverter* converter) c_g_converter_input_stream_new;
	GConverter* function(GConverterInputStream* converterStream) c_g_converter_input_stream_get_converter;

	// gio.ConverterOutputStream

	GType function() c_g_converter_output_stream_get_type;
	GOutputStream* function(GOutputStream* baseStream, GConverter* converter) c_g_converter_output_stream_new;
	GConverter* function(GConverterOutputStream* converterStream) c_g_converter_output_stream_get_converter;

	// gio.Credentials

	GType function() c_g_credentials_get_type;
	GCredentials* function() c_g_credentials_new;
	void* function(GCredentials* credentials, GCredentialsType nativeType) c_g_credentials_get_native;
	pid_t function(GCredentials* credentials, GError** err) c_g_credentials_get_unix_pid;
	uid_t function(GCredentials* credentials, GError** err) c_g_credentials_get_unix_user;
	int function(GCredentials* credentials, GCredentials* otherCredentials, GError** err) c_g_credentials_is_same_user;
	void function(GCredentials* credentials, GCredentialsType nativeType, void* native) c_g_credentials_set_native;
	int function(GCredentials* credentials, uid_t uid, GError** err) c_g_credentials_set_unix_user;
	char* function(GCredentials* credentials) c_g_credentials_to_string;

	// gio.DBusActionGroup

	GType function() c_g_dbus_action_group_get_type;
	GDBusActionGroup* function(GDBusConnection* connection, const(char)* busName, const(char)* objectPath) c_g_dbus_action_group_get;

	// gio.DBusAnnotationInfo

	GType function() c_g_dbus_annotation_info_get_type;
	GDBusAnnotationInfo* function(GDBusAnnotationInfo* info) c_g_dbus_annotation_info_ref;
	void function(GDBusAnnotationInfo* info) c_g_dbus_annotation_info_unref;
	const(char)* function(GDBusAnnotationInfo** annotations, const(char)* name) c_g_dbus_annotation_info_lookup;

	// gio.DBusArgInfo

	GType function() c_g_dbus_arg_info_get_type;
	GDBusArgInfo* function(GDBusArgInfo* info) c_g_dbus_arg_info_ref;
	void function(GDBusArgInfo* info) c_g_dbus_arg_info_unref;

	// gio.DBusAuthObserver

	GType function() c_g_dbus_auth_observer_get_type;
	GDBusAuthObserver* function() c_g_dbus_auth_observer_new;
	int function(GDBusAuthObserver* observer, const(char)* mechanism) c_g_dbus_auth_observer_allow_mechanism;
	int function(GDBusAuthObserver* observer, GIOStream* stream, GCredentials* credentials) c_g_dbus_auth_observer_authorize_authenticated_peer;

	// gio.DBusConnection

	GType function() c_g_dbus_connection_get_type;
	GDBusConnection* function(GAsyncResult* res, GError** err) c_g_dbus_connection_new_finish;
	GDBusConnection* function(GAsyncResult* res, GError** err) c_g_dbus_connection_new_for_address_finish;
	GDBusConnection* function(const(char)* address, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GError** err) c_g_dbus_connection_new_for_address_sync;
	GDBusConnection* function(GIOStream* stream, const(char)* guid, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GError** err) c_g_dbus_connection_new_sync;
	void function(GIOStream* stream, const(char)* guid, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_new;
	void function(const(char)* address, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_new_for_address;
	uint function(GDBusConnection* connection, GDBusMessageFilterFunction filterFunction, void* userData, GDestroyNotify userDataFreeFunc) c_g_dbus_connection_add_filter;
	void function(GDBusConnection* connection, const(char)* busName, const(char)* objectPath, const(char)* interfaceName, const(char)* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, int timeoutMsec, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_call;
	GVariant* function(GDBusConnection* connection, GAsyncResult* res, GError** err) c_g_dbus_connection_call_finish;
	GVariant* function(GDBusConnection* connection, const(char)* busName, const(char)* objectPath, const(char)* interfaceName, const(char)* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, int timeoutMsec, GCancellable* cancellable, GError** err) c_g_dbus_connection_call_sync;
	void function(GDBusConnection* connection, const(char)* busName, const(char)* objectPath, const(char)* interfaceName, const(char)* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, int timeoutMsec, GUnixFDList* fdList, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_call_with_unix_fd_list;
	GVariant* function(GDBusConnection* connection, GUnixFDList** outFdList, GAsyncResult* res, GError** err) c_g_dbus_connection_call_with_unix_fd_list_finish;
	GVariant* function(GDBusConnection* connection, const(char)* busName, const(char)* objectPath, const(char)* interfaceName, const(char)* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, int timeoutMsec, GUnixFDList* fdList, GUnixFDList** outFdList, GCancellable* cancellable, GError** err) c_g_dbus_connection_call_with_unix_fd_list_sync;
	void function(GDBusConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_close;
	int function(GDBusConnection* connection, GAsyncResult* res, GError** err) c_g_dbus_connection_close_finish;
	int function(GDBusConnection* connection, GCancellable* cancellable, GError** err) c_g_dbus_connection_close_sync;
	int function(GDBusConnection* connection, const(char)* destinationBusName, const(char)* objectPath, const(char)* interfaceName, const(char)* signalName, GVariant* parameters, GError** err) c_g_dbus_connection_emit_signal;
	uint function(GDBusConnection* connection, const(char)* objectPath, GActionGroup* actionGroup, GError** err) c_g_dbus_connection_export_action_group;
	uint function(GDBusConnection* connection, const(char)* objectPath, GMenuModel* menu, GError** err) c_g_dbus_connection_export_menu_model;
	void function(GDBusConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_flush;
	int function(GDBusConnection* connection, GAsyncResult* res, GError** err) c_g_dbus_connection_flush_finish;
	int function(GDBusConnection* connection, GCancellable* cancellable, GError** err) c_g_dbus_connection_flush_sync;
	GDBusCapabilityFlags function(GDBusConnection* connection) c_g_dbus_connection_get_capabilities;
	int function(GDBusConnection* connection) c_g_dbus_connection_get_exit_on_close;
	GDBusConnectionFlags function(GDBusConnection* connection) c_g_dbus_connection_get_flags;
	const(char)* function(GDBusConnection* connection) c_g_dbus_connection_get_guid;
	uint function(GDBusConnection* connection) c_g_dbus_connection_get_last_serial;
	GCredentials* function(GDBusConnection* connection) c_g_dbus_connection_get_peer_credentials;
	GIOStream* function(GDBusConnection* connection) c_g_dbus_connection_get_stream;
	const(char)* function(GDBusConnection* connection) c_g_dbus_connection_get_unique_name;
	int function(GDBusConnection* connection) c_g_dbus_connection_is_closed;
	uint function(GDBusConnection* connection, const(char)* objectPath, GDBusInterfaceInfo* interfaceInfo, GDBusInterfaceVTable* vtable, void* userData, GDestroyNotify userDataFreeFunc, GError** err) c_g_dbus_connection_register_object;
	uint function(GDBusConnection* connection, const(char)* objectPath, GDBusInterfaceInfo* interfaceInfo, GClosure* methodCallClosure, GClosure* getPropertyClosure, GClosure* setPropertyClosure, GError** err) c_g_dbus_connection_register_object_with_closures;
	uint function(GDBusConnection* connection, const(char)* objectPath, GDBusSubtreeVTable* vtable, GDBusSubtreeFlags flags, void* userData, GDestroyNotify userDataFreeFunc, GError** err) c_g_dbus_connection_register_subtree;
	void function(GDBusConnection* connection, uint filterId) c_g_dbus_connection_remove_filter;
	int function(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, uint* outSerial, GError** err) c_g_dbus_connection_send_message;
	void function(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, int timeoutMsec, uint* outSerial, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_send_message_with_reply;
	GDBusMessage* function(GDBusConnection* connection, GAsyncResult* res, GError** err) c_g_dbus_connection_send_message_with_reply_finish;
	GDBusMessage* function(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, int timeoutMsec, uint* outSerial, GCancellable* cancellable, GError** err) c_g_dbus_connection_send_message_with_reply_sync;
	void function(GDBusConnection* connection, int exitOnClose) c_g_dbus_connection_set_exit_on_close;
	uint function(GDBusConnection* connection, const(char)* sender, const(char)* interfaceName, const(char)* member, const(char)* objectPath, const(char)* arg0, GDBusSignalFlags flags, GDBusSignalCallback callback, void* userData, GDestroyNotify userDataFreeFunc) c_g_dbus_connection_signal_subscribe;
	void function(GDBusConnection* connection, uint subscriptionId) c_g_dbus_connection_signal_unsubscribe;
	void function(GDBusConnection* connection) c_g_dbus_connection_start_message_processing;
	void function(GDBusConnection* connection, uint exportId) c_g_dbus_connection_unexport_action_group;
	void function(GDBusConnection* connection, uint exportId) c_g_dbus_connection_unexport_menu_model;
	int function(GDBusConnection* connection, uint registrationId) c_g_dbus_connection_unregister_object;
	int function(GDBusConnection* connection, uint registrationId) c_g_dbus_connection_unregister_subtree;
	void function(GBusType busType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_bus_get;
	GDBusConnection* function(GAsyncResult* res, GError** err) c_g_bus_get_finish;
	GDBusConnection* function(GBusType busType, GCancellable* cancellable, GError** err) c_g_bus_get_sync;

	// gio.DBusInterface

	GType function() c_g_dbus_interface_get_type;
	GDBusObject* function(GDBusInterface* interface_) c_g_dbus_interface_dup_object;
	GDBusInterfaceInfo* function(GDBusInterface* interface_) c_g_dbus_interface_get_info;
	GDBusObject* function(GDBusInterface* interface_) c_g_dbus_interface_get_object;
	void function(GDBusInterface* interface_, GDBusObject* object) c_g_dbus_interface_set_object;

	// gio.DBusInterfaceInfo

	GType function() c_g_dbus_interface_info_get_type;
	void function(GDBusInterfaceInfo* info) c_g_dbus_interface_info_cache_build;
	void function(GDBusInterfaceInfo* info) c_g_dbus_interface_info_cache_release;
	void function(GDBusInterfaceInfo* info, uint indent, GString* stringBuilder) c_g_dbus_interface_info_generate_xml;
	GDBusMethodInfo* function(GDBusInterfaceInfo* info, const(char)* name) c_g_dbus_interface_info_lookup_method;
	GDBusPropertyInfo* function(GDBusInterfaceInfo* info, const(char)* name) c_g_dbus_interface_info_lookup_property;
	GDBusSignalInfo* function(GDBusInterfaceInfo* info, const(char)* name) c_g_dbus_interface_info_lookup_signal;
	GDBusInterfaceInfo* function(GDBusInterfaceInfo* info) c_g_dbus_interface_info_ref;
	void function(GDBusInterfaceInfo* info) c_g_dbus_interface_info_unref;

	// gio.DBusInterfaceSkeleton

	GType function() c_g_dbus_interface_skeleton_get_type;
	int function(GDBusInterfaceSkeleton* interface_, GDBusConnection* connection, const(char)* objectPath, GError** err) c_g_dbus_interface_skeleton_export;
	void function(GDBusInterfaceSkeleton* interface_) c_g_dbus_interface_skeleton_flush;
	GDBusConnection* function(GDBusInterfaceSkeleton* interface_) c_g_dbus_interface_skeleton_get_connection;
	GList* function(GDBusInterfaceSkeleton* interface_) c_g_dbus_interface_skeleton_get_connections;
	GDBusInterfaceSkeletonFlags function(GDBusInterfaceSkeleton* interface_) c_g_dbus_interface_skeleton_get_flags;
	GDBusInterfaceInfo* function(GDBusInterfaceSkeleton* interface_) c_g_dbus_interface_skeleton_get_info;
	const(char)* function(GDBusInterfaceSkeleton* interface_) c_g_dbus_interface_skeleton_get_object_path;
	GVariant* function(GDBusInterfaceSkeleton* interface_) c_g_dbus_interface_skeleton_get_properties;
	GDBusInterfaceVTable* function(GDBusInterfaceSkeleton* interface_) c_g_dbus_interface_skeleton_get_vtable;
	int function(GDBusInterfaceSkeleton* interface_, GDBusConnection* connection) c_g_dbus_interface_skeleton_has_connection;
	void function(GDBusInterfaceSkeleton* interface_, GDBusInterfaceSkeletonFlags flags) c_g_dbus_interface_skeleton_set_flags;
	void function(GDBusInterfaceSkeleton* interface_) c_g_dbus_interface_skeleton_unexport;
	void function(GDBusInterfaceSkeleton* interface_, GDBusConnection* connection) c_g_dbus_interface_skeleton_unexport_from_connection;

	// gio.DBusMenuModel

	GType function() c_g_dbus_menu_model_get_type;
	GDBusMenuModel* function(GDBusConnection* connection, const(char)* busName, const(char)* objectPath) c_g_dbus_menu_model_get;

	// gio.DBusMessage

	GType function() c_g_dbus_message_get_type;
	GDBusMessage* function() c_g_dbus_message_new;
	GDBusMessage* function(char* blob, size_t blobLen, GDBusCapabilityFlags capabilities, GError** err) c_g_dbus_message_new_from_blob;
	GDBusMessage* function(const(char)* name, const(char)* path, const(char)* interface_, const(char)* method) c_g_dbus_message_new_method_call;
	GDBusMessage* function(const(char)* path, const(char)* interface_, const(char)* signal) c_g_dbus_message_new_signal;
	ptrdiff_t function(char* blob, size_t blobLen, GError** err) c_g_dbus_message_bytes_needed;
	GDBusMessage* function(GDBusMessage* message, GError** err) c_g_dbus_message_copy;
	const(char)* function(GDBusMessage* message) c_g_dbus_message_get_arg0;
	GVariant* function(GDBusMessage* message) c_g_dbus_message_get_body;
	GDBusMessageByteOrder function(GDBusMessage* message) c_g_dbus_message_get_byte_order;
	const(char)* function(GDBusMessage* message) c_g_dbus_message_get_destination;
	const(char)* function(GDBusMessage* message) c_g_dbus_message_get_error_name;
	GDBusMessageFlags function(GDBusMessage* message) c_g_dbus_message_get_flags;
	GVariant* function(GDBusMessage* message, GDBusMessageHeaderField headerField) c_g_dbus_message_get_header;
	char* function(GDBusMessage* message) c_g_dbus_message_get_header_fields;
	const(char)* function(GDBusMessage* message) c_g_dbus_message_get_interface;
	int function(GDBusMessage* message) c_g_dbus_message_get_locked;
	const(char)* function(GDBusMessage* message) c_g_dbus_message_get_member;
	GDBusMessageType function(GDBusMessage* message) c_g_dbus_message_get_message_type;
	uint function(GDBusMessage* message) c_g_dbus_message_get_num_unix_fds;
	const(char)* function(GDBusMessage* message) c_g_dbus_message_get_path;
	uint function(GDBusMessage* message) c_g_dbus_message_get_reply_serial;
	const(char)* function(GDBusMessage* message) c_g_dbus_message_get_sender;
	uint function(GDBusMessage* message) c_g_dbus_message_get_serial;
	const(char)* function(GDBusMessage* message) c_g_dbus_message_get_signature;
	GUnixFDList* function(GDBusMessage* message) c_g_dbus_message_get_unix_fd_list;
	void function(GDBusMessage* message) c_g_dbus_message_lock;
	GDBusMessage* function(GDBusMessage* methodCallMessage, const(char)* errorName, const(char)* errorMessageFormat, ... ) c_g_dbus_message_new_method_error;
	GDBusMessage* function(GDBusMessage* methodCallMessage, const(char)* errorName, const(char)* errorMessage) c_g_dbus_message_new_method_error_literal;
	GDBusMessage* function(GDBusMessage* methodCallMessage, const(char)* errorName, const(char)* errorMessageFormat, void* varArgs) c_g_dbus_message_new_method_error_valist;
	GDBusMessage* function(GDBusMessage* methodCallMessage) c_g_dbus_message_new_method_reply;
	char* function(GDBusMessage* message, uint indent) c_g_dbus_message_print;
	void function(GDBusMessage* message, GVariant* body_) c_g_dbus_message_set_body;
	void function(GDBusMessage* message, GDBusMessageByteOrder byteOrder) c_g_dbus_message_set_byte_order;
	void function(GDBusMessage* message, const(char)* value) c_g_dbus_message_set_destination;
	void function(GDBusMessage* message, const(char)* value) c_g_dbus_message_set_error_name;
	void function(GDBusMessage* message, GDBusMessageFlags flags) c_g_dbus_message_set_flags;
	void function(GDBusMessage* message, GDBusMessageHeaderField headerField, GVariant* value) c_g_dbus_message_set_header;
	void function(GDBusMessage* message, const(char)* value) c_g_dbus_message_set_interface;
	void function(GDBusMessage* message, const(char)* value) c_g_dbus_message_set_member;
	void function(GDBusMessage* message, GDBusMessageType type) c_g_dbus_message_set_message_type;
	void function(GDBusMessage* message, uint value) c_g_dbus_message_set_num_unix_fds;
	void function(GDBusMessage* message, const(char)* value) c_g_dbus_message_set_path;
	void function(GDBusMessage* message, uint value) c_g_dbus_message_set_reply_serial;
	void function(GDBusMessage* message, const(char)* value) c_g_dbus_message_set_sender;
	void function(GDBusMessage* message, uint serial) c_g_dbus_message_set_serial;
	void function(GDBusMessage* message, const(char)* value) c_g_dbus_message_set_signature;
	void function(GDBusMessage* message, GUnixFDList* fdList) c_g_dbus_message_set_unix_fd_list;
	char* function(GDBusMessage* message, size_t* outSize, GDBusCapabilityFlags capabilities, GError** err) c_g_dbus_message_to_blob;
	int function(GDBusMessage* message, GError** err) c_g_dbus_message_to_gerror;

	// gio.DBusMethodInfo

	GType function() c_g_dbus_method_info_get_type;
	GDBusMethodInfo* function(GDBusMethodInfo* info) c_g_dbus_method_info_ref;
	void function(GDBusMethodInfo* info) c_g_dbus_method_info_unref;

	// gio.DBusMethodInvocation

	GType function() c_g_dbus_method_invocation_get_type;
	GDBusConnection* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_connection;
	const(char)* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_interface_name;
	GDBusMessage* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_message;
	GDBusMethodInfo* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_method_info;
	const(char)* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_method_name;
	const(char)* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_object_path;
	GVariant* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_parameters;
	GDBusPropertyInfo* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_property_info;
	const(char)* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_sender;
	void* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_user_data;
	void function(GDBusMethodInvocation* invocation, const(char)* errorName, const(char)* errorMessage) c_g_dbus_method_invocation_return_dbus_error;
	void function(GDBusMethodInvocation* invocation, GQuark domain, int code, const(char)* format, ... ) c_g_dbus_method_invocation_return_error;
	void function(GDBusMethodInvocation* invocation, GQuark domain, int code, const(char)* message) c_g_dbus_method_invocation_return_error_literal;
	void function(GDBusMethodInvocation* invocation, GQuark domain, int code, const(char)* format, void* varArgs) c_g_dbus_method_invocation_return_error_valist;
	void function(GDBusMethodInvocation* invocation, GError* error) c_g_dbus_method_invocation_return_gerror;
	void function(GDBusMethodInvocation* invocation, GVariant* parameters) c_g_dbus_method_invocation_return_value;
	void function(GDBusMethodInvocation* invocation, GVariant* parameters, GUnixFDList* fdList) c_g_dbus_method_invocation_return_value_with_unix_fd_list;
	void function(GDBusMethodInvocation* invocation, GError* error) c_g_dbus_method_invocation_take_error;

	// gio.DBusNodeInfo

	GType function() c_g_dbus_node_info_get_type;
	GDBusNodeInfo* function(const(char)* xmlData, GError** err) c_g_dbus_node_info_new_for_xml;
	void function(GDBusNodeInfo* info, uint indent, GString* stringBuilder) c_g_dbus_node_info_generate_xml;
	GDBusInterfaceInfo* function(GDBusNodeInfo* info, const(char)* name) c_g_dbus_node_info_lookup_interface;
	GDBusNodeInfo* function(GDBusNodeInfo* info) c_g_dbus_node_info_ref;
	void function(GDBusNodeInfo* info) c_g_dbus_node_info_unref;

	// gio.DBusObject

	GType function() c_g_dbus_object_get_type;
	GDBusInterface* function(GDBusObject* object, const(char)* interfaceName) c_g_dbus_object_get_interface;
	GList* function(GDBusObject* object) c_g_dbus_object_get_interfaces;
	const(char)* function(GDBusObject* object) c_g_dbus_object_get_object_path;

	// gio.DBusObjectManager

	GType function() c_g_dbus_object_manager_get_type;
	GDBusInterface* function(GDBusObjectManager* manager, const(char)* objectPath, const(char)* interfaceName) c_g_dbus_object_manager_get_interface;
	GDBusObject* function(GDBusObjectManager* manager, const(char)* objectPath) c_g_dbus_object_manager_get_object;
	const(char)* function(GDBusObjectManager* manager) c_g_dbus_object_manager_get_object_path;
	GList* function(GDBusObjectManager* manager) c_g_dbus_object_manager_get_objects;

	// gio.DBusObjectManagerClient

	GType function() c_g_dbus_object_manager_client_get_type;
	GDBusObjectManager* function(GAsyncResult* res, GError** err) c_g_dbus_object_manager_client_new_finish;
	GDBusObjectManager* function(GAsyncResult* res, GError** err) c_g_dbus_object_manager_client_new_for_bus_finish;
	GDBusObjectManager* function(GBusType busType, GDBusObjectManagerClientFlags flags, const(char)* name, const(char)* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GError** err) c_g_dbus_object_manager_client_new_for_bus_sync;
	GDBusObjectManager* function(GDBusConnection* connection, GDBusObjectManagerClientFlags flags, const(char)* name, const(char)* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GError** err) c_g_dbus_object_manager_client_new_sync;
	void function(GDBusConnection* connection, GDBusObjectManagerClientFlags flags, const(char)* name, const(char)* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_object_manager_client_new;
	void function(GBusType busType, GDBusObjectManagerClientFlags flags, const(char)* name, const(char)* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_object_manager_client_new_for_bus;
	GDBusConnection* function(GDBusObjectManagerClient* manager) c_g_dbus_object_manager_client_get_connection;
	GDBusObjectManagerClientFlags function(GDBusObjectManagerClient* manager) c_g_dbus_object_manager_client_get_flags;
	const(char)* function(GDBusObjectManagerClient* manager) c_g_dbus_object_manager_client_get_name;
	char* function(GDBusObjectManagerClient* manager) c_g_dbus_object_manager_client_get_name_owner;

	// gio.DBusObjectManagerServer

	GType function() c_g_dbus_object_manager_server_get_type;
	GDBusObjectManagerServer* function(const(char)* objectPath) c_g_dbus_object_manager_server_new;
	void function(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object) c_g_dbus_object_manager_server_export;
	void function(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object) c_g_dbus_object_manager_server_export_uniquely;
	GDBusConnection* function(GDBusObjectManagerServer* manager) c_g_dbus_object_manager_server_get_connection;
	int function(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object) c_g_dbus_object_manager_server_is_exported;
	void function(GDBusObjectManagerServer* manager, GDBusConnection* connection) c_g_dbus_object_manager_server_set_connection;
	int function(GDBusObjectManagerServer* manager, const(char)* objectPath) c_g_dbus_object_manager_server_unexport;

	// gio.DBusObjectProxy

	GType function() c_g_dbus_object_proxy_get_type;
	GDBusObjectProxy* function(GDBusConnection* connection, const(char)* objectPath) c_g_dbus_object_proxy_new;
	GDBusConnection* function(GDBusObjectProxy* proxy) c_g_dbus_object_proxy_get_connection;

	// gio.DBusObjectSkeleton

	GType function() c_g_dbus_object_skeleton_get_type;
	GDBusObjectSkeleton* function(const(char)* objectPath) c_g_dbus_object_skeleton_new;
	void function(GDBusObjectSkeleton* object, GDBusInterfaceSkeleton* interface_) c_g_dbus_object_skeleton_add_interface;
	void function(GDBusObjectSkeleton* object) c_g_dbus_object_skeleton_flush;
	void function(GDBusObjectSkeleton* object, GDBusInterfaceSkeleton* interface_) c_g_dbus_object_skeleton_remove_interface;
	void function(GDBusObjectSkeleton* object, const(char)* interfaceName) c_g_dbus_object_skeleton_remove_interface_by_name;
	void function(GDBusObjectSkeleton* object, const(char)* objectPath) c_g_dbus_object_skeleton_set_object_path;

	// gio.DBusPropertyInfo

	GType function() c_g_dbus_property_info_get_type;
	GDBusPropertyInfo* function(GDBusPropertyInfo* info) c_g_dbus_property_info_ref;
	void function(GDBusPropertyInfo* info) c_g_dbus_property_info_unref;

	// gio.DBusProxy

	GType function() c_g_dbus_proxy_get_type;
	GDBusProxy* function(GAsyncResult* res, GError** err) c_g_dbus_proxy_new_finish;
	GDBusProxy* function(GAsyncResult* res, GError** err) c_g_dbus_proxy_new_for_bus_finish;
	GDBusProxy* function(GBusType busType, GDBusProxyFlags flags, GDBusInterfaceInfo* info, const(char)* name, const(char)* objectPath, const(char)* interfaceName, GCancellable* cancellable, GError** err) c_g_dbus_proxy_new_for_bus_sync;
	GDBusProxy* function(GDBusConnection* connection, GDBusProxyFlags flags, GDBusInterfaceInfo* info, const(char)* name, const(char)* objectPath, const(char)* interfaceName, GCancellable* cancellable, GError** err) c_g_dbus_proxy_new_sync;
	void function(GDBusConnection* connection, GDBusProxyFlags flags, GDBusInterfaceInfo* info, const(char)* name, const(char)* objectPath, const(char)* interfaceName, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_proxy_new;
	void function(GBusType busType, GDBusProxyFlags flags, GDBusInterfaceInfo* info, const(char)* name, const(char)* objectPath, const(char)* interfaceName, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_proxy_new_for_bus;
	void function(GDBusProxy* proxy, const(char)* methodName, GVariant* parameters, GDBusCallFlags flags, int timeoutMsec, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_proxy_call;
	GVariant* function(GDBusProxy* proxy, GAsyncResult* res, GError** err) c_g_dbus_proxy_call_finish;
	GVariant* function(GDBusProxy* proxy, const(char)* methodName, GVariant* parameters, GDBusCallFlags flags, int timeoutMsec, GCancellable* cancellable, GError** err) c_g_dbus_proxy_call_sync;
	void function(GDBusProxy* proxy, const(char)* methodName, GVariant* parameters, GDBusCallFlags flags, int timeoutMsec, GUnixFDList* fdList, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_proxy_call_with_unix_fd_list;
	GVariant* function(GDBusProxy* proxy, GUnixFDList** outFdList, GAsyncResult* res, GError** err) c_g_dbus_proxy_call_with_unix_fd_list_finish;
	GVariant* function(GDBusProxy* proxy, const(char)* methodName, GVariant* parameters, GDBusCallFlags flags, int timeoutMsec, GUnixFDList* fdList, GUnixFDList** outFdList, GCancellable* cancellable, GError** err) c_g_dbus_proxy_call_with_unix_fd_list_sync;
	GVariant* function(GDBusProxy* proxy, const(char)* propertyName) c_g_dbus_proxy_get_cached_property;
	char** function(GDBusProxy* proxy) c_g_dbus_proxy_get_cached_property_names;
	GDBusConnection* function(GDBusProxy* proxy) c_g_dbus_proxy_get_connection;
	int function(GDBusProxy* proxy) c_g_dbus_proxy_get_default_timeout;
	GDBusProxyFlags function(GDBusProxy* proxy) c_g_dbus_proxy_get_flags;
	GDBusInterfaceInfo* function(GDBusProxy* proxy) c_g_dbus_proxy_get_interface_info;
	const(char)* function(GDBusProxy* proxy) c_g_dbus_proxy_get_interface_name;
	const(char)* function(GDBusProxy* proxy) c_g_dbus_proxy_get_name;
	char* function(GDBusProxy* proxy) c_g_dbus_proxy_get_name_owner;
	const(char)* function(GDBusProxy* proxy) c_g_dbus_proxy_get_object_path;
	void function(GDBusProxy* proxy, const(char)* propertyName, GVariant* value) c_g_dbus_proxy_set_cached_property;
	void function(GDBusProxy* proxy, int timeoutMsec) c_g_dbus_proxy_set_default_timeout;
	void function(GDBusProxy* proxy, GDBusInterfaceInfo* info) c_g_dbus_proxy_set_interface_info;

	// gio.DBusServer

	GType function() c_g_dbus_server_get_type;
	GDBusServer* function(const(char)* address, GDBusServerFlags flags, const(char)* guid, GDBusAuthObserver* observer, GCancellable* cancellable, GError** err) c_g_dbus_server_new_sync;
	const(char)* function(GDBusServer* server) c_g_dbus_server_get_client_address;
	GDBusServerFlags function(GDBusServer* server) c_g_dbus_server_get_flags;
	const(char)* function(GDBusServer* server) c_g_dbus_server_get_guid;
	int function(GDBusServer* server) c_g_dbus_server_is_active;
	void function(GDBusServer* server) c_g_dbus_server_start;
	void function(GDBusServer* server) c_g_dbus_server_stop;

	// gio.DBusSignalInfo

	GType function() c_g_dbus_signal_info_get_type;
	GDBusSignalInfo* function(GDBusSignalInfo* info) c_g_dbus_signal_info_ref;
	void function(GDBusSignalInfo* info) c_g_dbus_signal_info_unref;

	// gio.DataInputStream

	GType function() c_g_data_input_stream_get_type;
	GDataInputStream* function(GInputStream* baseStream) c_g_data_input_stream_new;
	GDataStreamByteOrder function(GDataInputStream* stream) c_g_data_input_stream_get_byte_order;
	GDataStreamNewlineType function(GDataInputStream* stream) c_g_data_input_stream_get_newline_type;
	char function(GDataInputStream* stream, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_byte;
	short function(GDataInputStream* stream, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_int16;
	int function(GDataInputStream* stream, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_int32;
	long function(GDataInputStream* stream, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_int64;
	char* function(GDataInputStream* stream, size_t* length, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_line;
	void function(GDataInputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_data_input_stream_read_line_async;
	char* function(GDataInputStream* stream, GAsyncResult* result, size_t* length, GError** err) c_g_data_input_stream_read_line_finish;
	char* function(GDataInputStream* stream, GAsyncResult* result, size_t* length, GError** err) c_g_data_input_stream_read_line_finish_utf8;
	char* function(GDataInputStream* stream, size_t* length, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_line_utf8;
	ushort function(GDataInputStream* stream, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_uint16;
	uint function(GDataInputStream* stream, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_uint32;
	ulong function(GDataInputStream* stream, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_uint64;
	char* function(GDataInputStream* stream, const(char)* stopChars, size_t* length, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_until;
	void function(GDataInputStream* stream, const(char)* stopChars, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_data_input_stream_read_until_async;
	char* function(GDataInputStream* stream, GAsyncResult* result, size_t* length, GError** err) c_g_data_input_stream_read_until_finish;
	char* function(GDataInputStream* stream, const(char)* stopChars, ptrdiff_t stopCharsLen, size_t* length, GCancellable* cancellable, GError** err) c_g_data_input_stream_read_upto;
	void function(GDataInputStream* stream, const(char)* stopChars, ptrdiff_t stopCharsLen, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_data_input_stream_read_upto_async;
	char* function(GDataInputStream* stream, GAsyncResult* result, size_t* length, GError** err) c_g_data_input_stream_read_upto_finish;
	void function(GDataInputStream* stream, GDataStreamByteOrder order) c_g_data_input_stream_set_byte_order;
	void function(GDataInputStream* stream, GDataStreamNewlineType type) c_g_data_input_stream_set_newline_type;

	// gio.DataOutputStream

	GType function() c_g_data_output_stream_get_type;
	GDataOutputStream* function(GOutputStream* baseStream) c_g_data_output_stream_new;
	GDataStreamByteOrder function(GDataOutputStream* stream) c_g_data_output_stream_get_byte_order;
	int function(GDataOutputStream* stream, char data, GCancellable* cancellable, GError** err) c_g_data_output_stream_put_byte;
	int function(GDataOutputStream* stream, short data, GCancellable* cancellable, GError** err) c_g_data_output_stream_put_int16;
	int function(GDataOutputStream* stream, int data, GCancellable* cancellable, GError** err) c_g_data_output_stream_put_int32;
	int function(GDataOutputStream* stream, long data, GCancellable* cancellable, GError** err) c_g_data_output_stream_put_int64;
	int function(GDataOutputStream* stream, const(char)* str, GCancellable* cancellable, GError** err) c_g_data_output_stream_put_string;
	int function(GDataOutputStream* stream, ushort data, GCancellable* cancellable, GError** err) c_g_data_output_stream_put_uint16;
	int function(GDataOutputStream* stream, uint data, GCancellable* cancellable, GError** err) c_g_data_output_stream_put_uint32;
	int function(GDataOutputStream* stream, ulong data, GCancellable* cancellable, GError** err) c_g_data_output_stream_put_uint64;
	void function(GDataOutputStream* stream, GDataStreamByteOrder order) c_g_data_output_stream_set_byte_order;

	// gio.DatagramBased

	GType function() c_g_datagram_based_get_type;
	GIOCondition function(GDatagramBased* datagramBased, GIOCondition condition) c_g_datagram_based_condition_check;
	int function(GDatagramBased* datagramBased, GIOCondition condition, long timeout, GCancellable* cancellable, GError** err) c_g_datagram_based_condition_wait;
	GSource* function(GDatagramBased* datagramBased, GIOCondition condition, GCancellable* cancellable) c_g_datagram_based_create_source;
	int function(GDatagramBased* datagramBased, GInputMessage* messages, uint numMessages, int flags, long timeout, GCancellable* cancellable, GError** err) c_g_datagram_based_receive_messages;
	int function(GDatagramBased* datagramBased, GOutputMessage* messages, uint numMessages, int flags, long timeout, GCancellable* cancellable, GError** err) c_g_datagram_based_send_messages;

	// gio.DebugController

	GType function() c_g_debug_controller_get_type;
	int function(GDebugController* self) c_g_debug_controller_get_debug_enabled;
	void function(GDebugController* self, int debugEnabled) c_g_debug_controller_set_debug_enabled;

	// gio.DebugControllerDBus

	GType function() c_g_debug_controller_dbus_get_type;
	GDebugControllerDBus* function(GDBusConnection* connection, GCancellable* cancellable, GError** err) c_g_debug_controller_dbus_new;
	void function(GDebugControllerDBus* self) c_g_debug_controller_dbus_stop;

	// gio.DesktopAppInfo

	GType function() c_g_desktop_app_info_get_type;
	GDesktopAppInfo* function(const(char)* desktopId) c_g_desktop_app_info_new;
	GDesktopAppInfo* function(char* filename) c_g_desktop_app_info_new_from_filename;
	GDesktopAppInfo* function(GKeyFile* keyFile) c_g_desktop_app_info_new_from_keyfile;
	GList* function(const(char)* interface_) c_g_desktop_app_info_get_implementations;
	char*** function(const(char)* searchString) c_g_desktop_app_info_search;
	void function(const(char)* desktopEnv) c_g_desktop_app_info_set_desktop_env;
	char* function(GDesktopAppInfo* info, const(char)* actionName) c_g_desktop_app_info_get_action_name;
	int function(GDesktopAppInfo* info, const(char)* key) c_g_desktop_app_info_get_boolean;
	const(char)* function(GDesktopAppInfo* info) c_g_desktop_app_info_get_categories;
	char* function(GDesktopAppInfo* info) c_g_desktop_app_info_get_filename;
	const(char)* function(GDesktopAppInfo* info) c_g_desktop_app_info_get_generic_name;
	int function(GDesktopAppInfo* info) c_g_desktop_app_info_get_is_hidden;
	char** function(GDesktopAppInfo* info) c_g_desktop_app_info_get_keywords;
	char* function(GDesktopAppInfo* info, const(char)* key) c_g_desktop_app_info_get_locale_string;
	int function(GDesktopAppInfo* info) c_g_desktop_app_info_get_nodisplay;
	int function(GDesktopAppInfo* info, const(char)* desktopEnv) c_g_desktop_app_info_get_show_in;
	const(char)* function(GDesktopAppInfo* info) c_g_desktop_app_info_get_startup_wm_class;
	char* function(GDesktopAppInfo* info, const(char)* key) c_g_desktop_app_info_get_string;
	char** function(GDesktopAppInfo* info, const(char)* key, size_t* length) c_g_desktop_app_info_get_string_list;
	int function(GDesktopAppInfo* info, const(char)* key) c_g_desktop_app_info_has_key;
	void function(GDesktopAppInfo* info, const(char)* actionName, GAppLaunchContext* launchContext) c_g_desktop_app_info_launch_action;
	int function(GDesktopAppInfo* appinfo, GList* uris, GAppLaunchContext* launchContext, GSpawnFlags spawnFlags, GSpawnChildSetupFunc userSetup, void* userSetupData, GDesktopAppLaunchCallback pidCallback, void* pidCallbackData, GError** err) c_g_desktop_app_info_launch_uris_as_manager;
	int function(GDesktopAppInfo* appinfo, GList* uris, GAppLaunchContext* launchContext, GSpawnFlags spawnFlags, GSpawnChildSetupFunc userSetup, void* userSetupData, GDesktopAppLaunchCallback pidCallback, void* pidCallbackData, int stdinFd, int stdoutFd, int stderrFd, GError** err) c_g_desktop_app_info_launch_uris_as_manager_with_fds;
	char** function(GDesktopAppInfo* info) c_g_desktop_app_info_list_actions;

	// gio.DesktopAppInfoLookup

	GType function() c_g_desktop_app_info_lookup_get_type;
	GAppInfo* function(GDesktopAppInfoLookup* lookup, const(char)* uriScheme) c_g_desktop_app_info_lookup_get_default_for_uri_scheme;

	// gio.Drive

	GType function() c_g_drive_get_type;
	int function(GDrive* drive) c_g_drive_can_eject;
	int function(GDrive* drive) c_g_drive_can_poll_for_media;
	int function(GDrive* drive) c_g_drive_can_start;
	int function(GDrive* drive) c_g_drive_can_start_degraded;
	int function(GDrive* drive) c_g_drive_can_stop;
	void function(GDrive* drive, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_drive_eject;
	int function(GDrive* drive, GAsyncResult* result, GError** err) c_g_drive_eject_finish;
	void function(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_drive_eject_with_operation;
	int function(GDrive* drive, GAsyncResult* result, GError** err) c_g_drive_eject_with_operation_finish;
	char** function(GDrive* drive) c_g_drive_enumerate_identifiers;
	GIcon* function(GDrive* drive) c_g_drive_get_icon;
	char* function(GDrive* drive, const(char)* kind) c_g_drive_get_identifier;
	char* function(GDrive* drive) c_g_drive_get_name;
	const(char)* function(GDrive* drive) c_g_drive_get_sort_key;
	GDriveStartStopType function(GDrive* drive) c_g_drive_get_start_stop_type;
	GIcon* function(GDrive* drive) c_g_drive_get_symbolic_icon;
	GList* function(GDrive* drive) c_g_drive_get_volumes;
	int function(GDrive* drive) c_g_drive_has_media;
	int function(GDrive* drive) c_g_drive_has_volumes;
	int function(GDrive* drive) c_g_drive_is_media_check_automatic;
	int function(GDrive* drive) c_g_drive_is_media_removable;
	int function(GDrive* drive) c_g_drive_is_removable;
	void function(GDrive* drive, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_drive_poll_for_media;
	int function(GDrive* drive, GAsyncResult* result, GError** err) c_g_drive_poll_for_media_finish;
	void function(GDrive* drive, GDriveStartFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_drive_start;
	int function(GDrive* drive, GAsyncResult* result, GError** err) c_g_drive_start_finish;
	void function(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_drive_stop;
	int function(GDrive* drive, GAsyncResult* result, GError** err) c_g_drive_stop_finish;

	// gio.DtlsClientConnection

	GType function() c_g_dtls_client_connection_get_type;
	GDatagramBased* function(GDatagramBased* baseSocket, GSocketConnectable* serverIdentity, GError** err) c_g_dtls_client_connection_new;
	GList* function(GDtlsClientConnection* conn) c_g_dtls_client_connection_get_accepted_cas;
	GSocketConnectable* function(GDtlsClientConnection* conn) c_g_dtls_client_connection_get_server_identity;
	GTlsCertificateFlags function(GDtlsClientConnection* conn) c_g_dtls_client_connection_get_validation_flags;
	void function(GDtlsClientConnection* conn, GSocketConnectable* identity) c_g_dtls_client_connection_set_server_identity;
	void function(GDtlsClientConnection* conn, GTlsCertificateFlags flags) c_g_dtls_client_connection_set_validation_flags;

	// gio.DtlsConnection

	GType function() c_g_dtls_connection_get_type;
	int function(GDtlsConnection* conn, GCancellable* cancellable, GError** err) c_g_dtls_connection_close;
	void function(GDtlsConnection* conn, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dtls_connection_close_async;
	int function(GDtlsConnection* conn, GAsyncResult* result, GError** err) c_g_dtls_connection_close_finish;
	int function(GDtlsConnection* conn, GTlsCertificate* peerCert, GTlsCertificateFlags errors) c_g_dtls_connection_emit_accept_certificate;
	GTlsCertificate* function(GDtlsConnection* conn) c_g_dtls_connection_get_certificate;
	int function(GDtlsConnection* conn, GTlsChannelBindingType type, GByteArray* data, GError** err) c_g_dtls_connection_get_channel_binding_data;
	char* function(GDtlsConnection* conn) c_g_dtls_connection_get_ciphersuite_name;
	GTlsDatabase* function(GDtlsConnection* conn) c_g_dtls_connection_get_database;
	GTlsInteraction* function(GDtlsConnection* conn) c_g_dtls_connection_get_interaction;
	const(char)* function(GDtlsConnection* conn) c_g_dtls_connection_get_negotiated_protocol;
	GTlsCertificate* function(GDtlsConnection* conn) c_g_dtls_connection_get_peer_certificate;
	GTlsCertificateFlags function(GDtlsConnection* conn) c_g_dtls_connection_get_peer_certificate_errors;
	GTlsProtocolVersion function(GDtlsConnection* conn) c_g_dtls_connection_get_protocol_version;
	GTlsRehandshakeMode function(GDtlsConnection* conn) c_g_dtls_connection_get_rehandshake_mode;
	int function(GDtlsConnection* conn) c_g_dtls_connection_get_require_close_notify;
	int function(GDtlsConnection* conn, GCancellable* cancellable, GError** err) c_g_dtls_connection_handshake;
	void function(GDtlsConnection* conn, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dtls_connection_handshake_async;
	int function(GDtlsConnection* conn, GAsyncResult* result, GError** err) c_g_dtls_connection_handshake_finish;
	void function(GDtlsConnection* conn, char** protocols) c_g_dtls_connection_set_advertised_protocols;
	void function(GDtlsConnection* conn, GTlsCertificate* certificate) c_g_dtls_connection_set_certificate;
	void function(GDtlsConnection* conn, GTlsDatabase* database) c_g_dtls_connection_set_database;
	void function(GDtlsConnection* conn, GTlsInteraction* interaction) c_g_dtls_connection_set_interaction;
	void function(GDtlsConnection* conn, GTlsRehandshakeMode mode) c_g_dtls_connection_set_rehandshake_mode;
	void function(GDtlsConnection* conn, int requireCloseNotify) c_g_dtls_connection_set_require_close_notify;
	int function(GDtlsConnection* conn, int shutdownRead, int shutdownWrite, GCancellable* cancellable, GError** err) c_g_dtls_connection_shutdown;
	void function(GDtlsConnection* conn, int shutdownRead, int shutdownWrite, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dtls_connection_shutdown_async;
	int function(GDtlsConnection* conn, GAsyncResult* result, GError** err) c_g_dtls_connection_shutdown_finish;

	// gio.DtlsServerConnection

	GType function() c_g_dtls_server_connection_get_type;
	GDatagramBased* function(GDatagramBased* baseSocket, GTlsCertificate* certificate, GError** err) c_g_dtls_server_connection_new;

	// gio.Emblem

	GType function() c_g_emblem_get_type;
	GEmblem* function(GIcon* icon) c_g_emblem_new;
	GEmblem* function(GIcon* icon, GEmblemOrigin origin) c_g_emblem_new_with_origin;
	GIcon* function(GEmblem* emblem) c_g_emblem_get_icon;
	GEmblemOrigin function(GEmblem* emblem) c_g_emblem_get_origin;

	// gio.EmblemedIcon

	GType function() c_g_emblemed_icon_get_type;
	GIcon* function(GIcon* icon, GEmblem* emblem) c_g_emblemed_icon_new;
	void function(GEmblemedIcon* emblemed, GEmblem* emblem) c_g_emblemed_icon_add_emblem;
	void function(GEmblemedIcon* emblemed) c_g_emblemed_icon_clear_emblems;
	GList* function(GEmblemedIcon* emblemed) c_g_emblemed_icon_get_emblems;
	GIcon* function(GEmblemedIcon* emblemed) c_g_emblemed_icon_get_icon;

	// gio.File

	GType function() c_g_file_get_type;
	GFile* function(char* firstElement, ... ) c_g_file_new_build_filename;
	GFile* function(char* arg) c_g_file_new_for_commandline_arg;
	GFile* function(char* arg, char* cwd) c_g_file_new_for_commandline_arg_and_cwd;
	GFile* function(char* path) c_g_file_new_for_path;
	GFile* function(const(char)* uri) c_g_file_new_for_uri;
	GFile* function(char* tmpl, GFileIOStream** iostream, GError** err) c_g_file_new_tmp;
	GFile* function(const(char)* parseName) c_g_file_parse_name;
	GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** err) c_g_file_append_to;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_append_to_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_append_to_finish;
	char* function(GFile* file, GFileCopyFlags flags, GCancellable* cancellable, GError** err) c_g_file_build_attribute_list_for_copy;
	int function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GError** err) c_g_file_copy;
	void function(GFile* source, GFile* destination, GFileCopyFlags flags, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GAsyncReadyCallback callback, void* userData) c_g_file_copy_async;
	int function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GError** err) c_g_file_copy_attributes;
	int function(GFile* file, GAsyncResult* res, GError** err) c_g_file_copy_finish;
	GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** err) c_g_file_create;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_create_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_create_finish;
	GFileIOStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** err) c_g_file_create_readwrite;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_create_readwrite_async;
	GFileIOStream* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_create_readwrite_finish;
	int function(GFile* file, GCancellable* cancellable, GError** err) c_g_file_delete;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_delete_async;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_delete_finish;
	GFile* function(GFile* file) c_g_file_dup;
	void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_eject_mountable;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_eject_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_eject_mountable_with_operation;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_eject_mountable_with_operation_finish;
	GFileEnumerator* function(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) c_g_file_enumerate_children;
	void function(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_enumerate_children_async;
	GFileEnumerator* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_enumerate_children_finish;
	int function(GFile* file1, GFile* file2) c_g_file_equal;
	GMount* function(GFile* file, GCancellable* cancellable, GError** err) c_g_file_find_enclosing_mount;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_find_enclosing_mount_async;
	GMount* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_find_enclosing_mount_finish;
	char* function(GFile* file) c_g_file_get_basename;
	GFile* function(GFile* file, char* name) c_g_file_get_child;
	GFile* function(GFile* file, const(char)* displayName, GError** err) c_g_file_get_child_for_display_name;
	GFile* function(GFile* file) c_g_file_get_parent;
	char* function(GFile* file) c_g_file_get_parse_name;
	char* function(GFile* file) c_g_file_get_path;
	char* function(GFile* parent, GFile* descendant) c_g_file_get_relative_path;
	char* function(GFile* file) c_g_file_get_uri;
	char* function(GFile* file) c_g_file_get_uri_scheme;
	int function(GFile* file, GFile* parent) c_g_file_has_parent;
	int function(GFile* file, GFile* prefix) c_g_file_has_prefix;
	int function(GFile* file, const(char)* uriScheme) c_g_file_has_uri_scheme;
	uint function(void* file) c_g_file_hash;
	int function(GFile* file) c_g_file_is_native;
	GBytes* function(GFile* file, GCancellable* cancellable, char** etagOut, GError** err) c_g_file_load_bytes;
	void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_load_bytes_async;
	GBytes* function(GFile* file, GAsyncResult* result, char** etagOut, GError** err) c_g_file_load_bytes_finish;
	int function(GFile* file, GCancellable* cancellable, char** contents, size_t* length, char** etagOut, GError** err) c_g_file_load_contents;
	void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_load_contents_async;
	int function(GFile* file, GAsyncResult* res, char** contents, size_t* length, char** etagOut, GError** err) c_g_file_load_contents_finish;
	void function(GFile* file, GCancellable* cancellable, GFileReadMoreCallback readMoreCallback, GAsyncReadyCallback callback, void* userData) c_g_file_load_partial_contents_async;
	int function(GFile* file, GAsyncResult* res, char** contents, size_t* length, char** etagOut, GError** err) c_g_file_load_partial_contents_finish;
	int function(GFile* file, GCancellable* cancellable, GError** err) c_g_file_make_directory;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_make_directory_async;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_make_directory_finish;
	int function(GFile* file, GCancellable* cancellable, GError** err) c_g_file_make_directory_with_parents;
	int function(GFile* file, char* symlinkValue, GCancellable* cancellable, GError** err) c_g_file_make_symbolic_link;
	int function(GFile* file, GFileMeasureFlags flags, GCancellable* cancellable, GFileMeasureProgressCallback progressCallback, void* progressData, ulong* diskUsage, ulong* numDirs, ulong* numFiles, GError** err) c_g_file_measure_disk_usage;
	void function(GFile* file, GFileMeasureFlags flags, int ioPriority, GCancellable* cancellable, GFileMeasureProgressCallback progressCallback, void* progressData, GAsyncReadyCallback callback, void* userData) c_g_file_measure_disk_usage_async;
	int function(GFile* file, GAsyncResult* result, ulong* diskUsage, ulong* numDirs, ulong* numFiles, GError** err) c_g_file_measure_disk_usage_finish;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** err) c_g_file_monitor;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** err) c_g_file_monitor_directory;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** err) c_g_file_monitor_file;
	void function(GFile* location, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_mount_enclosing_volume;
	int function(GFile* location, GAsyncResult* result, GError** err) c_g_file_mount_enclosing_volume_finish;
	void function(GFile* file, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_mount_mountable;
	GFile* function(GFile* file, GAsyncResult* result, GError** err) c_g_file_mount_mountable_finish;
	int function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GError** err) c_g_file_move;
	void function(GFile* source, GFile* destination, GFileCopyFlags flags, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GAsyncReadyCallback callback, void* userData) c_g_file_move_async;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_move_finish;
	GFileIOStream* function(GFile* file, GCancellable* cancellable, GError** err) c_g_file_open_readwrite;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_open_readwrite_async;
	GFileIOStream* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_open_readwrite_finish;
	char* function(GFile* file) c_g_file_peek_path;
	void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_poll_mountable;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_poll_mountable_finish;
	GAppInfo* function(GFile* file, GCancellable* cancellable, GError** err) c_g_file_query_default_handler;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_query_default_handler_async;
	GAppInfo* function(GFile* file, GAsyncResult* result, GError** err) c_g_file_query_default_handler_finish;
	int function(GFile* file, GCancellable* cancellable) c_g_file_query_exists;
	GFileType function(GFile* file, GFileQueryInfoFlags flags, GCancellable* cancellable) c_g_file_query_file_type;
	GFileInfo* function(GFile* file, const(char)* attributes, GCancellable* cancellable, GError** err) c_g_file_query_filesystem_info;
	void function(GFile* file, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_query_filesystem_info_async;
	GFileInfo* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_query_filesystem_info_finish;
	GFileInfo* function(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) c_g_file_query_info;
	void function(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_query_info_async;
	GFileInfo* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_query_info_finish;
	GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** err) c_g_file_query_settable_attributes;
	GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** err) c_g_file_query_writable_namespaces;
	GFileInputStream* function(GFile* file, GCancellable* cancellable, GError** err) c_g_file_read;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_read_async;
	GFileInputStream* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_read_finish;
	GFileOutputStream* function(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** err) c_g_file_replace;
	void function(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_replace_async;
	int function(GFile* file, char* contents, size_t length, const(char)* etag, int makeBackup, GFileCreateFlags flags, char** newEtag, GCancellable* cancellable, GError** err) c_g_file_replace_contents;
	void function(GFile* file, char* contents, size_t length, const(char)* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_replace_contents_async;
	void function(GFile* file, GBytes* contents, const(char)* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_replace_contents_bytes_async;
	int function(GFile* file, GAsyncResult* res, char** newEtag, GError** err) c_g_file_replace_contents_finish;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_replace_finish;
	GFileIOStream* function(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** err) c_g_file_replace_readwrite;
	void function(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_replace_readwrite_async;
	GFileIOStream* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_replace_readwrite_finish;
	GFile* function(GFile* file, char* relativePath) c_g_file_resolve_relative_path;
	int function(GFile* file, const(char)* attribute, GFileAttributeType type, void* valueP, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) c_g_file_set_attribute;
	int function(GFile* file, const(char)* attribute, const(char)* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) c_g_file_set_attribute_byte_string;
	int function(GFile* file, const(char)* attribute, int value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) c_g_file_set_attribute_int32;
	int function(GFile* file, const(char)* attribute, long value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) c_g_file_set_attribute_int64;
	int function(GFile* file, const(char)* attribute, const(char)* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) c_g_file_set_attribute_string;
	int function(GFile* file, const(char)* attribute, uint value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) c_g_file_set_attribute_uint32;
	int function(GFile* file, const(char)* attribute, ulong value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) c_g_file_set_attribute_uint64;
	void function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_set_attributes_async;
	int function(GFile* file, GAsyncResult* result, GFileInfo** info, GError** err) c_g_file_set_attributes_finish;
	int function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) c_g_file_set_attributes_from_info;
	GFile* function(GFile* file, const(char)* displayName, GCancellable* cancellable, GError** err) c_g_file_set_display_name;
	void function(GFile* file, const(char)* displayName, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_set_display_name_async;
	GFile* function(GFile* file, GAsyncResult* res, GError** err) c_g_file_set_display_name_finish;
	void function(GFile* file, GDriveStartFlags flags, GMountOperation* startOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_start_mountable;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_start_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_stop_mountable;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_stop_mountable_finish;
	int function(GFile* file) c_g_file_supports_thread_contexts;
	int function(GFile* file, GCancellable* cancellable, GError** err) c_g_file_trash;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_trash_async;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_trash_finish;
	void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_unmount_mountable;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_unmount_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_unmount_mountable_with_operation;
	int function(GFile* file, GAsyncResult* result, GError** err) c_g_file_unmount_mountable_with_operation_finish;

	// gio.FileAttributeInfoList

	GType function() c_g_file_attribute_info_list_get_type;
	GFileAttributeInfoList* function() c_g_file_attribute_info_list_new;
	void function(GFileAttributeInfoList* list, const(char)* name, GFileAttributeType type, GFileAttributeInfoFlags flags) c_g_file_attribute_info_list_add;
	GFileAttributeInfoList* function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_dup;
	GFileAttributeInfo* function(GFileAttributeInfoList* list, const(char)* name) c_g_file_attribute_info_list_lookup;
	GFileAttributeInfoList* function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_ref;
	void function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_unref;

	// gio.FileAttributeMatcher

	GType function() c_g_file_attribute_matcher_get_type;
	GFileAttributeMatcher* function(const(char)* attributes) c_g_file_attribute_matcher_new;
	int function(GFileAttributeMatcher* matcher, const(char)* ns) c_g_file_attribute_matcher_enumerate_namespace;
	const(char)* function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_enumerate_next;
	int function(GFileAttributeMatcher* matcher, const(char)* attribute) c_g_file_attribute_matcher_matches;
	int function(GFileAttributeMatcher* matcher, const(char)* attribute) c_g_file_attribute_matcher_matches_only;
	GFileAttributeMatcher* function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_ref;
	GFileAttributeMatcher* function(GFileAttributeMatcher* matcher, GFileAttributeMatcher* subtract) c_g_file_attribute_matcher_subtract;
	char* function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_to_string;
	void function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_unref;

	// gio.FileDescriptorBased

	GType function() c_g_file_descriptor_based_get_type;
	int function(GFileDescriptorBased* fdBased) c_g_file_descriptor_based_get_fd;

	// gio.FileEnumerator

	GType function() c_g_file_enumerator_get_type;
	int function(GFileEnumerator* enumerator, GCancellable* cancellable, GError** err) c_g_file_enumerator_close;
	void function(GFileEnumerator* enumerator, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_enumerator_close_async;
	int function(GFileEnumerator* enumerator, GAsyncResult* result, GError** err) c_g_file_enumerator_close_finish;
	GFile* function(GFileEnumerator* enumerator, GFileInfo* info) c_g_file_enumerator_get_child;
	GFile* function(GFileEnumerator* enumerator) c_g_file_enumerator_get_container;
	int function(GFileEnumerator* enumerator) c_g_file_enumerator_has_pending;
	int function(GFileEnumerator* enumerator) c_g_file_enumerator_is_closed;
	int function(GFileEnumerator* direnum, GFileInfo** outInfo, GFile** outChild, GCancellable* cancellable, GError** err) c_g_file_enumerator_iterate;
	GFileInfo* function(GFileEnumerator* enumerator, GCancellable* cancellable, GError** err) c_g_file_enumerator_next_file;
	void function(GFileEnumerator* enumerator, int numFiles, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_enumerator_next_files_async;
	GList* function(GFileEnumerator* enumerator, GAsyncResult* result, GError** err) c_g_file_enumerator_next_files_finish;
	void function(GFileEnumerator* enumerator, int pending) c_g_file_enumerator_set_pending;

	// gio.FileIOStream

	GType function() c_g_file_io_stream_get_type;
	char* function(GFileIOStream* stream) c_g_file_io_stream_get_etag;
	GFileInfo* function(GFileIOStream* stream, const(char)* attributes, GCancellable* cancellable, GError** err) c_g_file_io_stream_query_info;
	void function(GFileIOStream* stream, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_io_stream_query_info_async;
	GFileInfo* function(GFileIOStream* stream, GAsyncResult* result, GError** err) c_g_file_io_stream_query_info_finish;

	// gio.FileIcon

	GType function() c_g_file_icon_get_type;
	GIcon* function(GFile* file) c_g_file_icon_new;
	GFile* function(GFileIcon* icon) c_g_file_icon_get_file;

	// gio.FileInfo

	GType function() c_g_file_info_get_type;
	GFileInfo* function() c_g_file_info_new;
	void function(GFileInfo* info) c_g_file_info_clear_status;
	void function(GFileInfo* srcInfo, GFileInfo* destInfo) c_g_file_info_copy_into;
	GFileInfo* function(GFileInfo* other) c_g_file_info_dup;
	GDateTime* function(GFileInfo* info) c_g_file_info_get_access_date_time;
	char* function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_as_string;
	int function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_boolean;
	const(char)* function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_byte_string;
	int function(GFileInfo* info, const(char)* attribute, GFileAttributeType* type, void** valuePp, GFileAttributeStatus* status) c_g_file_info_get_attribute_data;
	int function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_int32;
	long function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_int64;
	GObject* function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_object;
	GFileAttributeStatus function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_status;
	const(char)* function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_string;
	char** function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_stringv;
	GFileAttributeType function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_type;
	uint function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_uint32;
	ulong function(GFileInfo* info, const(char)* attribute) c_g_file_info_get_attribute_uint64;
	const(char)* function(GFileInfo* info) c_g_file_info_get_content_type;
	GDateTime* function(GFileInfo* info) c_g_file_info_get_creation_date_time;
	GDateTime* function(GFileInfo* info) c_g_file_info_get_deletion_date;
	const(char)* function(GFileInfo* info) c_g_file_info_get_display_name;
	const(char)* function(GFileInfo* info) c_g_file_info_get_edit_name;
	const(char)* function(GFileInfo* info) c_g_file_info_get_etag;
	GFileType function(GFileInfo* info) c_g_file_info_get_file_type;
	GIcon* function(GFileInfo* info) c_g_file_info_get_icon;
	int function(GFileInfo* info) c_g_file_info_get_is_backup;
	int function(GFileInfo* info) c_g_file_info_get_is_hidden;
	int function(GFileInfo* info) c_g_file_info_get_is_symlink;
	GDateTime* function(GFileInfo* info) c_g_file_info_get_modification_date_time;
	void function(GFileInfo* info, GTimeVal* result) c_g_file_info_get_modification_time;
	char* function(GFileInfo* info) c_g_file_info_get_name;
	long function(GFileInfo* info) c_g_file_info_get_size;
	int function(GFileInfo* info) c_g_file_info_get_sort_order;
	GIcon* function(GFileInfo* info) c_g_file_info_get_symbolic_icon;
	const(char)* function(GFileInfo* info) c_g_file_info_get_symlink_target;
	int function(GFileInfo* info, const(char)* attribute) c_g_file_info_has_attribute;
	int function(GFileInfo* info, const(char)* nameSpace) c_g_file_info_has_namespace;
	char** function(GFileInfo* info, const(char)* nameSpace) c_g_file_info_list_attributes;
	void function(GFileInfo* info, const(char)* attribute) c_g_file_info_remove_attribute;
	void function(GFileInfo* info, GDateTime* atime) c_g_file_info_set_access_date_time;
	void function(GFileInfo* info, const(char)* attribute, GFileAttributeType type, void* valueP) c_g_file_info_set_attribute;
	void function(GFileInfo* info, const(char)* attribute, int attrValue) c_g_file_info_set_attribute_boolean;
	void function(GFileInfo* info, const(char)* attribute, const(char)* attrValue) c_g_file_info_set_attribute_byte_string;
	void function(GFileInfo* info, const(char)* attribute, int attrValue) c_g_file_info_set_attribute_int32;
	void function(GFileInfo* info, const(char)* attribute, long attrValue) c_g_file_info_set_attribute_int64;
	void function(GFileInfo* info, GFileAttributeMatcher* mask) c_g_file_info_set_attribute_mask;
	void function(GFileInfo* info, const(char)* attribute, GObject* attrValue) c_g_file_info_set_attribute_object;
	int function(GFileInfo* info, const(char)* attribute, GFileAttributeStatus status) c_g_file_info_set_attribute_status;
	void function(GFileInfo* info, const(char)* attribute, const(char)* attrValue) c_g_file_info_set_attribute_string;
	void function(GFileInfo* info, const(char)* attribute, char** attrValue) c_g_file_info_set_attribute_stringv;
	void function(GFileInfo* info, const(char)* attribute, uint attrValue) c_g_file_info_set_attribute_uint32;
	void function(GFileInfo* info, const(char)* attribute, ulong attrValue) c_g_file_info_set_attribute_uint64;
	void function(GFileInfo* info, const(char)* contentType) c_g_file_info_set_content_type;
	void function(GFileInfo* info, GDateTime* creationTime) c_g_file_info_set_creation_date_time;
	void function(GFileInfo* info, const(char)* displayName) c_g_file_info_set_display_name;
	void function(GFileInfo* info, const(char)* editName) c_g_file_info_set_edit_name;
	void function(GFileInfo* info, GFileType type) c_g_file_info_set_file_type;
	void function(GFileInfo* info, GIcon* icon) c_g_file_info_set_icon;
	void function(GFileInfo* info, int isHidden) c_g_file_info_set_is_hidden;
	void function(GFileInfo* info, int isSymlink) c_g_file_info_set_is_symlink;
	void function(GFileInfo* info, GDateTime* mtime) c_g_file_info_set_modification_date_time;
	void function(GFileInfo* info, GTimeVal* mtime) c_g_file_info_set_modification_time;
	void function(GFileInfo* info, char* name) c_g_file_info_set_name;
	void function(GFileInfo* info, long size) c_g_file_info_set_size;
	void function(GFileInfo* info, int sortOrder) c_g_file_info_set_sort_order;
	void function(GFileInfo* info, GIcon* icon) c_g_file_info_set_symbolic_icon;
	void function(GFileInfo* info, const(char)* symlinkTarget) c_g_file_info_set_symlink_target;
	void function(GFileInfo* info) c_g_file_info_unset_attribute_mask;

	// gio.FileInputStream

	GType function() c_g_file_input_stream_get_type;
	GFileInfo* function(GFileInputStream* stream, const(char)* attributes, GCancellable* cancellable, GError** err) c_g_file_input_stream_query_info;
	void function(GFileInputStream* stream, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_input_stream_query_info_async;
	GFileInfo* function(GFileInputStream* stream, GAsyncResult* result, GError** err) c_g_file_input_stream_query_info_finish;

	// gio.FileMonitor

	GType function() c_g_file_monitor_get_type;
	int function(GFileMonitor* monitor) c_g_file_monitor_cancel;
	void function(GFileMonitor* monitor, GFile* child, GFile* otherFile, GFileMonitorEvent eventType) c_g_file_monitor_emit_event;
	int function(GFileMonitor* monitor) c_g_file_monitor_is_cancelled;
	void function(GFileMonitor* monitor, int limitMsecs) c_g_file_monitor_set_rate_limit;

	// gio.FileOutputStream

	GType function() c_g_file_output_stream_get_type;
	char* function(GFileOutputStream* stream) c_g_file_output_stream_get_etag;
	GFileInfo* function(GFileOutputStream* stream, const(char)* attributes, GCancellable* cancellable, GError** err) c_g_file_output_stream_query_info;
	void function(GFileOutputStream* stream, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_output_stream_query_info_async;
	GFileInfo* function(GFileOutputStream* stream, GAsyncResult* result, GError** err) c_g_file_output_stream_query_info_finish;

	// gio.FilenameCompleter

	GType function() c_g_filename_completer_get_type;
	GFilenameCompleter* function() c_g_filename_completer_new;
	char* function(GFilenameCompleter* completer, const(char)* initialText) c_g_filename_completer_get_completion_suffix;
	char** function(GFilenameCompleter* completer, const(char)* initialText) c_g_filename_completer_get_completions;
	void function(GFilenameCompleter* completer, int dirsOnly) c_g_filename_completer_set_dirs_only;

	// gio.FilterInputStream

	GType function() c_g_filter_input_stream_get_type;
	GInputStream* function(GFilterInputStream* stream) c_g_filter_input_stream_get_base_stream;
	int function(GFilterInputStream* stream) c_g_filter_input_stream_get_close_base_stream;
	void function(GFilterInputStream* stream, int closeBase) c_g_filter_input_stream_set_close_base_stream;

	// gio.FilterOutputStream

	GType function() c_g_filter_output_stream_get_type;
	GOutputStream* function(GFilterOutputStream* stream) c_g_filter_output_stream_get_base_stream;
	int function(GFilterOutputStream* stream) c_g_filter_output_stream_get_close_base_stream;
	void function(GFilterOutputStream* stream, int closeBase) c_g_filter_output_stream_set_close_base_stream;

	// gio.IOExtension

	const(char)* function(GIOExtension* extension) c_g_io_extension_get_name;
	int function(GIOExtension* extension) c_g_io_extension_get_priority;
	GType function(GIOExtension* extension) c_g_io_extension_get_type;
	GTypeClass* function(GIOExtension* extension) c_g_io_extension_ref_class;

	// gio.IOExtensionPoint

	GIOExtension* function(GIOExtensionPoint* extensionPoint, const(char)* name) c_g_io_extension_point_get_extension_by_name;
	GList* function(GIOExtensionPoint* extensionPoint) c_g_io_extension_point_get_extensions;
	GType function(GIOExtensionPoint* extensionPoint) c_g_io_extension_point_get_required_type;
	void function(GIOExtensionPoint* extensionPoint, GType type) c_g_io_extension_point_set_required_type;
	GIOExtension* function(const(char)* extensionPointName, GType type, const(char)* extensionName, int priority) c_g_io_extension_point_implement;
	GIOExtensionPoint* function(const(char)* name) c_g_io_extension_point_lookup;
	GIOExtensionPoint* function(const(char)* name) c_g_io_extension_point_register;

	// gio.IOModule

	GType function() c_g_io_module_get_type;
	GIOModule* function(char* filename) c_g_io_module_new;
	GList* function(char* dirname) c_g_io_modules_load_all_in_directory;
	GList* function(char* dirname, GIOModuleScope* scope_) c_g_io_modules_load_all_in_directory_with_scope;
	void function(char* dirname) c_g_io_modules_scan_all_in_directory;
	void function(char* dirname, GIOModuleScope* scope_) c_g_io_modules_scan_all_in_directory_with_scope;

	// gio.IOModuleScope

	void function(GIOModuleScope* scope_, const(char)* basename) c_g_io_module_scope_block;
	void function(GIOModuleScope* scope_) c_g_io_module_scope_free;
	GIOModuleScope* function(GIOModuleScopeFlags flags) c_g_io_module_scope_new;

	// gio.IOSchedulerJob

	int function(GIOSchedulerJob* job, GSourceFunc func, void* userData, GDestroyNotify notify) c_g_io_scheduler_job_send_to_mainloop;
	void function(GIOSchedulerJob* job, GSourceFunc func, void* userData, GDestroyNotify notify) c_g_io_scheduler_job_send_to_mainloop_async;
	void function() c_g_io_scheduler_cancel_all_jobs;
	void function(GIOSchedulerJobFunc jobFunc, void* userData, GDestroyNotify notify, int ioPriority, GCancellable* cancellable) c_g_io_scheduler_push_job;

	// gio.IOStream

	GType function() c_g_io_stream_get_type;
	int function(GAsyncResult* result, GError** err) c_g_io_stream_splice_finish;
	void function(GIOStream* stream) c_g_io_stream_clear_pending;
	int function(GIOStream* stream, GCancellable* cancellable, GError** err) c_g_io_stream_close;
	void function(GIOStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_io_stream_close_async;
	int function(GIOStream* stream, GAsyncResult* result, GError** err) c_g_io_stream_close_finish;
	GInputStream* function(GIOStream* stream) c_g_io_stream_get_input_stream;
	GOutputStream* function(GIOStream* stream) c_g_io_stream_get_output_stream;
	int function(GIOStream* stream) c_g_io_stream_has_pending;
	int function(GIOStream* stream) c_g_io_stream_is_closed;
	int function(GIOStream* stream, GError** err) c_g_io_stream_set_pending;
	void function(GIOStream* stream1, GIOStream* stream2, GIOStreamSpliceFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_io_stream_splice_async;

	// gio.Icon

	GType function() c_g_icon_get_type;
	GIcon* function(GVariant* value) c_g_icon_deserialize;
	uint function(void* icon) c_g_icon_hash;
	GIcon* function(const(char)* str, GError** err) c_g_icon_new_for_string;
	int function(GIcon* icon1, GIcon* icon2) c_g_icon_equal;
	GVariant* function(GIcon* icon) c_g_icon_serialize;
	char* function(GIcon* icon) c_g_icon_to_string;

	// gio.InetAddress

	GType function() c_g_inet_address_get_type;
	GInetAddress* function(GSocketFamily family) c_g_inet_address_new_any;
	GInetAddress* function(ubyte* bytes, GSocketFamily family) c_g_inet_address_new_from_bytes;
	GInetAddress* function(const(char)* string_) c_g_inet_address_new_from_string;
	GInetAddress* function(GSocketFamily family) c_g_inet_address_new_loopback;
	int function(GInetAddress* address, GInetAddress* otherAddress) c_g_inet_address_equal;
	GSocketFamily function(GInetAddress* address) c_g_inet_address_get_family;
	int function(GInetAddress* address) c_g_inet_address_get_is_any;
	int function(GInetAddress* address) c_g_inet_address_get_is_link_local;
	int function(GInetAddress* address) c_g_inet_address_get_is_loopback;
	int function(GInetAddress* address) c_g_inet_address_get_is_mc_global;
	int function(GInetAddress* address) c_g_inet_address_get_is_mc_link_local;
	int function(GInetAddress* address) c_g_inet_address_get_is_mc_node_local;
	int function(GInetAddress* address) c_g_inet_address_get_is_mc_org_local;
	int function(GInetAddress* address) c_g_inet_address_get_is_mc_site_local;
	int function(GInetAddress* address) c_g_inet_address_get_is_multicast;
	int function(GInetAddress* address) c_g_inet_address_get_is_site_local;
	size_t function(GInetAddress* address) c_g_inet_address_get_native_size;
	ubyte* function(GInetAddress* address) c_g_inet_address_to_bytes;
	char* function(GInetAddress* address) c_g_inet_address_to_string;

	// gio.InetAddressMask

	GType function() c_g_inet_address_mask_get_type;
	GInetAddressMask* function(GInetAddress* addr, uint length, GError** err) c_g_inet_address_mask_new;
	GInetAddressMask* function(const(char)* maskString, GError** err) c_g_inet_address_mask_new_from_string;
	int function(GInetAddressMask* mask, GInetAddressMask* mask2) c_g_inet_address_mask_equal;
	GInetAddress* function(GInetAddressMask* mask) c_g_inet_address_mask_get_address;
	GSocketFamily function(GInetAddressMask* mask) c_g_inet_address_mask_get_family;
	uint function(GInetAddressMask* mask) c_g_inet_address_mask_get_length;
	int function(GInetAddressMask* mask, GInetAddress* address) c_g_inet_address_mask_matches;
	char* function(GInetAddressMask* mask) c_g_inet_address_mask_to_string;

	// gio.InetSocketAddress

	GType function() c_g_inet_socket_address_get_type;
	GSocketAddress* function(GInetAddress* address, ushort port) c_g_inet_socket_address_new;
	GSocketAddress* function(const(char)* address, uint port) c_g_inet_socket_address_new_from_string;
	GInetAddress* function(GInetSocketAddress* address) c_g_inet_socket_address_get_address;
	uint function(GInetSocketAddress* address) c_g_inet_socket_address_get_flowinfo;
	ushort function(GInetSocketAddress* address) c_g_inet_socket_address_get_port;
	uint function(GInetSocketAddress* address) c_g_inet_socket_address_get_scope_id;

	// gio.Initable

	GType function() c_g_initable_get_type;
	void* function(GType objectType, GCancellable* cancellable, GError** error, const(char)* firstPropertyName, ... ) c_g_initable_new;
	GObject* function(GType objectType, const(char)* firstPropertyName, void* varArgs, GCancellable* cancellable, GError** err) c_g_initable_new_valist;
	void* function(GType objectType, uint nParameters, GParameter* parameters, GCancellable* cancellable, GError** err) c_g_initable_newv;
	int function(GInitable* initable, GCancellable* cancellable, GError** err) c_g_initable_init;

	// gio.InputStream

	GType function() c_g_input_stream_get_type;
	void function(GInputStream* stream) c_g_input_stream_clear_pending;
	int function(GInputStream* stream, GCancellable* cancellable, GError** err) c_g_input_stream_close;
	void function(GInputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_input_stream_close_async;
	int function(GInputStream* stream, GAsyncResult* result, GError** err) c_g_input_stream_close_finish;
	int function(GInputStream* stream) c_g_input_stream_has_pending;
	int function(GInputStream* stream) c_g_input_stream_is_closed;
	ptrdiff_t function(GInputStream* stream, void* buffer, size_t count, GCancellable* cancellable, GError** err) c_g_input_stream_read;
	int function(GInputStream* stream, void* buffer, size_t count, size_t* bytesRead, GCancellable* cancellable, GError** err) c_g_input_stream_read_all;
	void function(GInputStream* stream, void* buffer, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_input_stream_read_all_async;
	int function(GInputStream* stream, GAsyncResult* result, size_t* bytesRead, GError** err) c_g_input_stream_read_all_finish;
	void function(GInputStream* stream, void* buffer, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_input_stream_read_async;
	GBytes* function(GInputStream* stream, size_t count, GCancellable* cancellable, GError** err) c_g_input_stream_read_bytes;
	void function(GInputStream* stream, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_input_stream_read_bytes_async;
	GBytes* function(GInputStream* stream, GAsyncResult* result, GError** err) c_g_input_stream_read_bytes_finish;
	ptrdiff_t function(GInputStream* stream, GAsyncResult* result, GError** err) c_g_input_stream_read_finish;
	int function(GInputStream* stream, GError** err) c_g_input_stream_set_pending;
	ptrdiff_t function(GInputStream* stream, size_t count, GCancellable* cancellable, GError** err) c_g_input_stream_skip;
	void function(GInputStream* stream, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_input_stream_skip_async;
	ptrdiff_t function(GInputStream* stream, GAsyncResult* result, GError** err) c_g_input_stream_skip_finish;

	// gio.ListModel

	GType function() c_g_list_model_get_type;
	void* function(GListModel* list, uint position) c_g_list_model_get_item;
	GType function(GListModel* list) c_g_list_model_get_item_type;
	uint function(GListModel* list) c_g_list_model_get_n_items;
	GObject* function(GListModel* list, uint position) c_g_list_model_get_object;
	void function(GListModel* list, uint position, uint removed, uint added) c_g_list_model_items_changed;

	// gio.ListStore

	GType function() c_g_list_store_get_type;
	GListStore* function(GType itemType) c_g_list_store_new;
	void function(GListStore* store, void* item) c_g_list_store_append;
	int function(GListStore* store, void* item, uint* position) c_g_list_store_find;
	int function(GListStore* store, void* item, GEqualFunc equalFunc, uint* position) c_g_list_store_find_with_equal_func;
	void function(GListStore* store, uint position, void* item) c_g_list_store_insert;
	uint function(GListStore* store, void* item, GCompareDataFunc compareFunc, void* userData) c_g_list_store_insert_sorted;
	void function(GListStore* store, uint position) c_g_list_store_remove;
	void function(GListStore* store) c_g_list_store_remove_all;
	void function(GListStore* store, GCompareDataFunc compareFunc, void* userData) c_g_list_store_sort;
	void function(GListStore* store, uint position, uint nRemovals, void** additions, uint nAdditions) c_g_list_store_splice;

	// gio.LoadableIcon

	GType function() c_g_loadable_icon_get_type;
	GInputStream* function(GLoadableIcon* icon, int size, char** type, GCancellable* cancellable, GError** err) c_g_loadable_icon_load;
	void function(GLoadableIcon* icon, int size, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_loadable_icon_load_async;
	GInputStream* function(GLoadableIcon* icon, GAsyncResult* res, char** type, GError** err) c_g_loadable_icon_load_finish;

	// gio.MemoryInputStream

	GType function() c_g_memory_input_stream_get_type;
	GInputStream* function() c_g_memory_input_stream_new;
	GInputStream* function(GBytes* bytes) c_g_memory_input_stream_new_from_bytes;
	GInputStream* function(void* data, ptrdiff_t len, GDestroyNotify destroy) c_g_memory_input_stream_new_from_data;
	void function(GMemoryInputStream* stream, GBytes* bytes) c_g_memory_input_stream_add_bytes;
	void function(GMemoryInputStream* stream, void* data, ptrdiff_t len, GDestroyNotify destroy) c_g_memory_input_stream_add_data;

	// gio.MemoryMonitor

	GType function() c_g_memory_monitor_get_type;
	GMemoryMonitor* function() c_g_memory_monitor_dup_default;

	// gio.MemoryOutputStream

	GType function() c_g_memory_output_stream_get_type;
	GOutputStream* function(void* data, size_t size, GReallocFunc reallocFunction, GDestroyNotify destroyFunction) c_g_memory_output_stream_new;
	GOutputStream* function() c_g_memory_output_stream_new_resizable;
	void* function(GMemoryOutputStream* ostream) c_g_memory_output_stream_get_data;
	size_t function(GMemoryOutputStream* ostream) c_g_memory_output_stream_get_data_size;
	size_t function(GMemoryOutputStream* ostream) c_g_memory_output_stream_get_size;
	GBytes* function(GMemoryOutputStream* ostream) c_g_memory_output_stream_steal_as_bytes;
	void* function(GMemoryOutputStream* ostream) c_g_memory_output_stream_steal_data;

	// gio.Menu

	GType function() c_g_menu_get_type;
	GMenu* function() c_g_menu_new;
	void function(GMenu* menu, const(char)* label, const(char)* detailedAction) c_g_menu_append;
	void function(GMenu* menu, GMenuItem* item) c_g_menu_append_item;
	void function(GMenu* menu, const(char)* label, GMenuModel* section) c_g_menu_append_section;
	void function(GMenu* menu, const(char)* label, GMenuModel* submenu) c_g_menu_append_submenu;
	void function(GMenu* menu) c_g_menu_freeze;
	void function(GMenu* menu, int position, const(char)* label, const(char)* detailedAction) c_g_menu_insert;
	void function(GMenu* menu, int position, GMenuItem* item) c_g_menu_insert_item;
	void function(GMenu* menu, int position, const(char)* label, GMenuModel* section) c_g_menu_insert_section;
	void function(GMenu* menu, int position, const(char)* label, GMenuModel* submenu) c_g_menu_insert_submenu;
	void function(GMenu* menu, const(char)* label, const(char)* detailedAction) c_g_menu_prepend;
	void function(GMenu* menu, GMenuItem* item) c_g_menu_prepend_item;
	void function(GMenu* menu, const(char)* label, GMenuModel* section) c_g_menu_prepend_section;
	void function(GMenu* menu, const(char)* label, GMenuModel* submenu) c_g_menu_prepend_submenu;
	void function(GMenu* menu, int position) c_g_menu_remove;
	void function(GMenu* menu) c_g_menu_remove_all;

	// gio.MenuAttributeIter

	GType function() c_g_menu_attribute_iter_get_type;
	const(char)* function(GMenuAttributeIter* iter) c_g_menu_attribute_iter_get_name;
	int function(GMenuAttributeIter* iter, char** outName, GVariant** value) c_g_menu_attribute_iter_get_next;
	GVariant* function(GMenuAttributeIter* iter) c_g_menu_attribute_iter_get_value;
	int function(GMenuAttributeIter* iter) c_g_menu_attribute_iter_next;

	// gio.MenuItem

	GType function() c_g_menu_item_get_type;
	GMenuItem* function(const(char)* label, const(char)* detailedAction) c_g_menu_item_new;
	GMenuItem* function(GMenuModel* model, int itemIndex) c_g_menu_item_new_from_model;
	GMenuItem* function(const(char)* label, GMenuModel* section) c_g_menu_item_new_section;
	GMenuItem* function(const(char)* label, GMenuModel* submenu) c_g_menu_item_new_submenu;
	int function(GMenuItem* menuItem, const(char)* attribute, const(char)* formatString, ... ) c_g_menu_item_get_attribute;
	GVariant* function(GMenuItem* menuItem, const(char)* attribute, GVariantType* expectedType) c_g_menu_item_get_attribute_value;
	GMenuModel* function(GMenuItem* menuItem, const(char)* link) c_g_menu_item_get_link;
	void function(GMenuItem* menuItem, const(char)* action, const(char)* formatString, ... ) c_g_menu_item_set_action_and_target;
	void function(GMenuItem* menuItem, const(char)* action, GVariant* targetValue) c_g_menu_item_set_action_and_target_value;
	void function(GMenuItem* menuItem, const(char)* attribute, const(char)* formatString, ... ) c_g_menu_item_set_attribute;
	void function(GMenuItem* menuItem, const(char)* attribute, GVariant* value) c_g_menu_item_set_attribute_value;
	void function(GMenuItem* menuItem, const(char)* detailedAction) c_g_menu_item_set_detailed_action;
	void function(GMenuItem* menuItem, GIcon* icon) c_g_menu_item_set_icon;
	void function(GMenuItem* menuItem, const(char)* label) c_g_menu_item_set_label;
	void function(GMenuItem* menuItem, const(char)* link, GMenuModel* model) c_g_menu_item_set_link;
	void function(GMenuItem* menuItem, GMenuModel* section) c_g_menu_item_set_section;
	void function(GMenuItem* menuItem, GMenuModel* submenu) c_g_menu_item_set_submenu;

	// gio.MenuLinkIter

	GType function() c_g_menu_link_iter_get_type;
	const(char)* function(GMenuLinkIter* iter) c_g_menu_link_iter_get_name;
	int function(GMenuLinkIter* iter, char** outLink, GMenuModel** value) c_g_menu_link_iter_get_next;
	GMenuModel* function(GMenuLinkIter* iter) c_g_menu_link_iter_get_value;
	int function(GMenuLinkIter* iter) c_g_menu_link_iter_next;

	// gio.MenuModel

	GType function() c_g_menu_model_get_type;
	int function(GMenuModel* model, int itemIndex, const(char)* attribute, const(char)* formatString, ... ) c_g_menu_model_get_item_attribute;
	GVariant* function(GMenuModel* model, int itemIndex, const(char)* attribute, GVariantType* expectedType) c_g_menu_model_get_item_attribute_value;
	GMenuModel* function(GMenuModel* model, int itemIndex, const(char)* link) c_g_menu_model_get_item_link;
	int function(GMenuModel* model) c_g_menu_model_get_n_items;
	int function(GMenuModel* model) c_g_menu_model_is_mutable;
	void function(GMenuModel* model, int position, int removed, int added) c_g_menu_model_items_changed;
	GMenuAttributeIter* function(GMenuModel* model, int itemIndex) c_g_menu_model_iterate_item_attributes;
	GMenuLinkIter* function(GMenuModel* model, int itemIndex) c_g_menu_model_iterate_item_links;

	// gio.Mount

	GType function() c_g_mount_get_type;
	int function(GMount* mount) c_g_mount_can_eject;
	int function(GMount* mount) c_g_mount_can_unmount;
	void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_eject;
	int function(GMount* mount, GAsyncResult* result, GError** err) c_g_mount_eject_finish;
	void function(GMount* mount, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_eject_with_operation;
	int function(GMount* mount, GAsyncResult* result, GError** err) c_g_mount_eject_with_operation_finish;
	GFile* function(GMount* mount) c_g_mount_get_default_location;
	GDrive* function(GMount* mount) c_g_mount_get_drive;
	GIcon* function(GMount* mount) c_g_mount_get_icon;
	char* function(GMount* mount) c_g_mount_get_name;
	GFile* function(GMount* mount) c_g_mount_get_root;
	const(char)* function(GMount* mount) c_g_mount_get_sort_key;
	GIcon* function(GMount* mount) c_g_mount_get_symbolic_icon;
	char* function(GMount* mount) c_g_mount_get_uuid;
	GVolume* function(GMount* mount) c_g_mount_get_volume;
	void function(GMount* mount, int forceRescan, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_guess_content_type;
	char** function(GMount* mount, GAsyncResult* result, GError** err) c_g_mount_guess_content_type_finish;
	char** function(GMount* mount, int forceRescan, GCancellable* cancellable, GError** err) c_g_mount_guess_content_type_sync;
	int function(GMount* mount) c_g_mount_is_shadowed;
	void function(GMount* mount, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_remount;
	int function(GMount* mount, GAsyncResult* result, GError** err) c_g_mount_remount_finish;
	void function(GMount* mount) c_g_mount_shadow;
	void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_unmount;
	int function(GMount* mount, GAsyncResult* result, GError** err) c_g_mount_unmount_finish;
	void function(GMount* mount, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_unmount_with_operation;
	int function(GMount* mount, GAsyncResult* result, GError** err) c_g_mount_unmount_with_operation_finish;
	void function(GMount* mount) c_g_mount_unshadow;

	// gio.MountOperation

	GType function() c_g_mount_operation_get_type;
	GMountOperation* function() c_g_mount_operation_new;
	int function(GMountOperation* op) c_g_mount_operation_get_anonymous;
	int function(GMountOperation* op) c_g_mount_operation_get_choice;
	const(char)* function(GMountOperation* op) c_g_mount_operation_get_domain;
	int function(GMountOperation* op) c_g_mount_operation_get_is_tcrypt_hidden_volume;
	int function(GMountOperation* op) c_g_mount_operation_get_is_tcrypt_system_volume;
	const(char)* function(GMountOperation* op) c_g_mount_operation_get_password;
	GPasswordSave function(GMountOperation* op) c_g_mount_operation_get_password_save;
	uint function(GMountOperation* op) c_g_mount_operation_get_pim;
	const(char)* function(GMountOperation* op) c_g_mount_operation_get_username;
	void function(GMountOperation* op, GMountOperationResult result) c_g_mount_operation_reply;
	void function(GMountOperation* op, int anonymous) c_g_mount_operation_set_anonymous;
	void function(GMountOperation* op, int choice) c_g_mount_operation_set_choice;
	void function(GMountOperation* op, const(char)* domain) c_g_mount_operation_set_domain;
	void function(GMountOperation* op, int hiddenVolume) c_g_mount_operation_set_is_tcrypt_hidden_volume;
	void function(GMountOperation* op, int systemVolume) c_g_mount_operation_set_is_tcrypt_system_volume;
	void function(GMountOperation* op, const(char)* password) c_g_mount_operation_set_password;
	void function(GMountOperation* op, GPasswordSave save) c_g_mount_operation_set_password_save;
	void function(GMountOperation* op, uint pim) c_g_mount_operation_set_pim;
	void function(GMountOperation* op, const(char)* username) c_g_mount_operation_set_username;

	// gio.NativeSocketAddress

	GType function() c_g_native_socket_address_get_type;
	GSocketAddress* function(void* native, size_t len) c_g_native_socket_address_new;

	// gio.NativeVolumeMonitor

	GType function() c_g_native_volume_monitor_get_type;

	// gio.NetworkAddress

	GType function() c_g_network_address_get_type;
	GSocketConnectable* function(const(char)* hostname, ushort port) c_g_network_address_new;
	GSocketConnectable* function(ushort port) c_g_network_address_new_loopback;
	GSocketConnectable* function(const(char)* hostAndPort, ushort defaultPort, GError** err) c_g_network_address_parse;
	GSocketConnectable* function(const(char)* uri, ushort defaultPort, GError** err) c_g_network_address_parse_uri;
	const(char)* function(GNetworkAddress* addr) c_g_network_address_get_hostname;
	ushort function(GNetworkAddress* addr) c_g_network_address_get_port;
	const(char)* function(GNetworkAddress* addr) c_g_network_address_get_scheme;

	// gio.NetworkMonitor

	GType function() c_g_network_monitor_get_type;
	GNetworkMonitor* function() c_g_network_monitor_get_default;
	int function(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GError** err) c_g_network_monitor_can_reach;
	void function(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_network_monitor_can_reach_async;
	int function(GNetworkMonitor* monitor, GAsyncResult* result, GError** err) c_g_network_monitor_can_reach_finish;
	GNetworkConnectivity function(GNetworkMonitor* monitor) c_g_network_monitor_get_connectivity;
	int function(GNetworkMonitor* monitor) c_g_network_monitor_get_network_available;
	int function(GNetworkMonitor* monitor) c_g_network_monitor_get_network_metered;

	// gio.NetworkService

	GType function() c_g_network_service_get_type;
	GSocketConnectable* function(const(char)* service, const(char)* protocol, const(char)* domain) c_g_network_service_new;
	const(char)* function(GNetworkService* srv) c_g_network_service_get_domain;
	const(char)* function(GNetworkService* srv) c_g_network_service_get_protocol;
	const(char)* function(GNetworkService* srv) c_g_network_service_get_scheme;
	const(char)* function(GNetworkService* srv) c_g_network_service_get_service;
	void function(GNetworkService* srv, const(char)* scheme) c_g_network_service_set_scheme;

	// gio.Notification

	GType function() c_g_notification_get_type;
	GNotification* function(const(char)* title) c_g_notification_new;
	void function(GNotification* notification, const(char)* label, const(char)* detailedAction) c_g_notification_add_button;
	void function(GNotification* notification, const(char)* label, const(char)* action, const(char)* targetFormat, ... ) c_g_notification_add_button_with_target;
	void function(GNotification* notification, const(char)* label, const(char)* action, GVariant* target) c_g_notification_add_button_with_target_value;
	void function(GNotification* notification, const(char)* body_) c_g_notification_set_body;
	void function(GNotification* notification, const(char)* category) c_g_notification_set_category;
	void function(GNotification* notification, const(char)* detailedAction) c_g_notification_set_default_action;
	void function(GNotification* notification, const(char)* action, const(char)* targetFormat, ... ) c_g_notification_set_default_action_and_target;
	void function(GNotification* notification, const(char)* action, GVariant* target) c_g_notification_set_default_action_and_target_value;
	void function(GNotification* notification, GIcon* icon) c_g_notification_set_icon;
	void function(GNotification* notification, GNotificationPriority priority) c_g_notification_set_priority;
	void function(GNotification* notification, const(char)* title) c_g_notification_set_title;
	void function(GNotification* notification, int urgent) c_g_notification_set_urgent;

	// gio.OutputStream

	GType function() c_g_output_stream_get_type;
	void function(GOutputStream* stream) c_g_output_stream_clear_pending;
	int function(GOutputStream* stream, GCancellable* cancellable, GError** err) c_g_output_stream_close;
	void function(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_close_async;
	int function(GOutputStream* stream, GAsyncResult* result, GError** err) c_g_output_stream_close_finish;
	int function(GOutputStream* stream, GCancellable* cancellable, GError** err) c_g_output_stream_flush;
	void function(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_flush_async;
	int function(GOutputStream* stream, GAsyncResult* result, GError** err) c_g_output_stream_flush_finish;
	int function(GOutputStream* stream) c_g_output_stream_has_pending;
	int function(GOutputStream* stream) c_g_output_stream_is_closed;
	int function(GOutputStream* stream) c_g_output_stream_is_closing;
	int function(GOutputStream* stream, size_t* bytesWritten, GCancellable* cancellable, GError** error, const(char)* format, ... ) c_g_output_stream_printf;
	int function(GOutputStream* stream, GError** err) c_g_output_stream_set_pending;
	ptrdiff_t function(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, GCancellable* cancellable, GError** err) c_g_output_stream_splice;
	void function(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_splice_async;
	ptrdiff_t function(GOutputStream* stream, GAsyncResult* result, GError** err) c_g_output_stream_splice_finish;
	int function(GOutputStream* stream, size_t* bytesWritten, GCancellable* cancellable, GError** error, const(char)* format, void* args) c_g_output_stream_vprintf;
	ptrdiff_t function(GOutputStream* stream, void* buffer, size_t count, GCancellable* cancellable, GError** err) c_g_output_stream_write;
	int function(GOutputStream* stream, void* buffer, size_t count, size_t* bytesWritten, GCancellable* cancellable, GError** err) c_g_output_stream_write_all;
	void function(GOutputStream* stream, void* buffer, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_write_all_async;
	int function(GOutputStream* stream, GAsyncResult* result, size_t* bytesWritten, GError** err) c_g_output_stream_write_all_finish;
	void function(GOutputStream* stream, void* buffer, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_write_async;
	ptrdiff_t function(GOutputStream* stream, GBytes* bytes, GCancellable* cancellable, GError** err) c_g_output_stream_write_bytes;
	void function(GOutputStream* stream, GBytes* bytes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_write_bytes_async;
	ptrdiff_t function(GOutputStream* stream, GAsyncResult* result, GError** err) c_g_output_stream_write_bytes_finish;
	ptrdiff_t function(GOutputStream* stream, GAsyncResult* result, GError** err) c_g_output_stream_write_finish;
	int function(GOutputStream* stream, GOutputVector* vectors, size_t nVectors, size_t* bytesWritten, GCancellable* cancellable, GError** err) c_g_output_stream_writev;
	int function(GOutputStream* stream, GOutputVector* vectors, size_t nVectors, size_t* bytesWritten, GCancellable* cancellable, GError** err) c_g_output_stream_writev_all;
	void function(GOutputStream* stream, GOutputVector* vectors, size_t nVectors, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_writev_all_async;
	int function(GOutputStream* stream, GAsyncResult* result, size_t* bytesWritten, GError** err) c_g_output_stream_writev_all_finish;
	void function(GOutputStream* stream, GOutputVector* vectors, size_t nVectors, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_writev_async;
	int function(GOutputStream* stream, GAsyncResult* result, size_t* bytesWritten, GError** err) c_g_output_stream_writev_finish;

	// gio.Permission

	GType function() c_g_permission_get_type;
	int function(GPermission* permission, GCancellable* cancellable, GError** err) c_g_permission_acquire;
	void function(GPermission* permission, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_permission_acquire_async;
	int function(GPermission* permission, GAsyncResult* result, GError** err) c_g_permission_acquire_finish;
	int function(GPermission* permission) c_g_permission_get_allowed;
	int function(GPermission* permission) c_g_permission_get_can_acquire;
	int function(GPermission* permission) c_g_permission_get_can_release;
	void function(GPermission* permission, int allowed, int canAcquire, int canRelease) c_g_permission_impl_update;
	int function(GPermission* permission, GCancellable* cancellable, GError** err) c_g_permission_release;
	void function(GPermission* permission, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_permission_release_async;
	int function(GPermission* permission, GAsyncResult* result, GError** err) c_g_permission_release_finish;

	// gio.PollableInputStream

	GType function() c_g_pollable_input_stream_get_type;
	int function(GPollableInputStream* stream) c_g_pollable_input_stream_can_poll;
	GSource* function(GPollableInputStream* stream, GCancellable* cancellable) c_g_pollable_input_stream_create_source;
	int function(GPollableInputStream* stream) c_g_pollable_input_stream_is_readable;
	ptrdiff_t function(GPollableInputStream* stream, void* buffer, size_t count, GCancellable* cancellable, GError** err) c_g_pollable_input_stream_read_nonblocking;

	// gio.PollableOutputStream

	GType function() c_g_pollable_output_stream_get_type;
	int function(GPollableOutputStream* stream) c_g_pollable_output_stream_can_poll;
	GSource* function(GPollableOutputStream* stream, GCancellable* cancellable) c_g_pollable_output_stream_create_source;
	int function(GPollableOutputStream* stream) c_g_pollable_output_stream_is_writable;
	ptrdiff_t function(GPollableOutputStream* stream, void* buffer, size_t count, GCancellable* cancellable, GError** err) c_g_pollable_output_stream_write_nonblocking;
	GPollableReturn function(GPollableOutputStream* stream, GOutputVector* vectors, size_t nVectors, size_t* bytesWritten, GCancellable* cancellable, GError** err) c_g_pollable_output_stream_writev_nonblocking;

	// gio.PowerProfileMonitor

	GType function() c_g_power_profile_monitor_get_type;
	GPowerProfileMonitor* function() c_g_power_profile_monitor_dup_default;
	int function(GPowerProfileMonitor* monitor) c_g_power_profile_monitor_get_power_saver_enabled;

	// gio.PropertyAction

	GType function() c_g_property_action_get_type;
	GPropertyAction* function(const(char)* name, void* object, const(char)* propertyName) c_g_property_action_new;

	// gio.Proxy

	GType function() c_g_proxy_get_type;
	GProxy* function(const(char)* protocol) c_g_proxy_get_default_for_protocol;
	GIOStream* function(GProxy* proxy, GIOStream* connection, GProxyAddress* proxyAddress, GCancellable* cancellable, GError** err) c_g_proxy_connect;
	void function(GProxy* proxy, GIOStream* connection, GProxyAddress* proxyAddress, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_proxy_connect_async;
	GIOStream* function(GProxy* proxy, GAsyncResult* result, GError** err) c_g_proxy_connect_finish;
	int function(GProxy* proxy) c_g_proxy_supports_hostname;

	// gio.ProxyAddress

	GType function() c_g_proxy_address_get_type;
	GSocketAddress* function(GInetAddress* inetaddr, ushort port, const(char)* protocol, const(char)* destHostname, ushort destPort, const(char)* username, const(char)* password) c_g_proxy_address_new;
	const(char)* function(GProxyAddress* proxy) c_g_proxy_address_get_destination_hostname;
	ushort function(GProxyAddress* proxy) c_g_proxy_address_get_destination_port;
	const(char)* function(GProxyAddress* proxy) c_g_proxy_address_get_destination_protocol;
	const(char)* function(GProxyAddress* proxy) c_g_proxy_address_get_password;
	const(char)* function(GProxyAddress* proxy) c_g_proxy_address_get_protocol;
	const(char)* function(GProxyAddress* proxy) c_g_proxy_address_get_uri;
	const(char)* function(GProxyAddress* proxy) c_g_proxy_address_get_username;

	// gio.ProxyAddressEnumerator

	GType function() c_g_proxy_address_enumerator_get_type;

	// gio.ProxyResolver

	GType function() c_g_proxy_resolver_get_type;
	GProxyResolver* function() c_g_proxy_resolver_get_default;
	int function(GProxyResolver* resolver) c_g_proxy_resolver_is_supported;
	char** function(GProxyResolver* resolver, const(char)* uri, GCancellable* cancellable, GError** err) c_g_proxy_resolver_lookup;
	void function(GProxyResolver* resolver, const(char)* uri, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_proxy_resolver_lookup_async;
	char** function(GProxyResolver* resolver, GAsyncResult* result, GError** err) c_g_proxy_resolver_lookup_finish;

	// gio.RemoteActionGroup

	GType function() c_g_remote_action_group_get_type;
	void function(GRemoteActionGroup* remote, const(char)* actionName, GVariant* parameter, GVariant* platformData) c_g_remote_action_group_activate_action_full;
	void function(GRemoteActionGroup* remote, const(char)* actionName, GVariant* value, GVariant* platformData) c_g_remote_action_group_change_action_state_full;

	// gio.Resolver

	GType function() c_g_resolver_get_type;
	void function(GList* addresses) c_g_resolver_free_addresses;
	void function(GList* targets) c_g_resolver_free_targets;
	GResolver* function() c_g_resolver_get_default;
	char* function(GResolver* resolver, GInetAddress* address, GCancellable* cancellable, GError** err) c_g_resolver_lookup_by_address;
	void function(GResolver* resolver, GInetAddress* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_resolver_lookup_by_address_async;
	char* function(GResolver* resolver, GAsyncResult* result, GError** err) c_g_resolver_lookup_by_address_finish;
	GList* function(GResolver* resolver, const(char)* hostname, GCancellable* cancellable, GError** err) c_g_resolver_lookup_by_name;
	void function(GResolver* resolver, const(char)* hostname, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_resolver_lookup_by_name_async;
	GList* function(GResolver* resolver, GAsyncResult* result, GError** err) c_g_resolver_lookup_by_name_finish;
	GList* function(GResolver* resolver, const(char)* hostname, GResolverNameLookupFlags flags, GCancellable* cancellable, GError** err) c_g_resolver_lookup_by_name_with_flags;
	void function(GResolver* resolver, const(char)* hostname, GResolverNameLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_resolver_lookup_by_name_with_flags_async;
	GList* function(GResolver* resolver, GAsyncResult* result, GError** err) c_g_resolver_lookup_by_name_with_flags_finish;
	GList* function(GResolver* resolver, const(char)* rrname, GResolverRecordType recordType, GCancellable* cancellable, GError** err) c_g_resolver_lookup_records;
	void function(GResolver* resolver, const(char)* rrname, GResolverRecordType recordType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_resolver_lookup_records_async;
	GList* function(GResolver* resolver, GAsyncResult* result, GError** err) c_g_resolver_lookup_records_finish;
	GList* function(GResolver* resolver, const(char)* service, const(char)* protocol, const(char)* domain, GCancellable* cancellable, GError** err) c_g_resolver_lookup_service;
	void function(GResolver* resolver, const(char)* service, const(char)* protocol, const(char)* domain, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_resolver_lookup_service_async;
	GList* function(GResolver* resolver, GAsyncResult* result, GError** err) c_g_resolver_lookup_service_finish;
	void function(GResolver* resolver) c_g_resolver_set_default;

	// gio.Resource

	GType function() c_g_resource_get_type;
	GResource* function(GBytes* data, GError** err) c_g_resource_new_from_data;
	void function(GResource* resource) c_g_resources_register;
	void function(GResource* resource) c_g_resources_unregister;
	char** function(GResource* resource, const(char)* path, GResourceLookupFlags lookupFlags, GError** err) c_g_resource_enumerate_children;
	int function(GResource* resource, const(char)* path, GResourceLookupFlags lookupFlags, size_t* size, uint* flags, GError** err) c_g_resource_get_info;
	GBytes* function(GResource* resource, const(char)* path, GResourceLookupFlags lookupFlags, GError** err) c_g_resource_lookup_data;
	GInputStream* function(GResource* resource, const(char)* path, GResourceLookupFlags lookupFlags, GError** err) c_g_resource_open_stream;
	GResource* function(GResource* resource) c_g_resource_ref;
	void function(GResource* resource) c_g_resource_unref;
	GResource* function(char* filename, GError** err) c_g_resource_load;
	char** function(const(char)* path, GResourceLookupFlags lookupFlags, GError** err) c_g_resources_enumerate_children;
	int function(const(char)* path, GResourceLookupFlags lookupFlags, size_t* size, uint* flags, GError** err) c_g_resources_get_info;
	GBytes* function(const(char)* path, GResourceLookupFlags lookupFlags, GError** err) c_g_resources_lookup_data;
	GInputStream* function(const(char)* path, GResourceLookupFlags lookupFlags, GError** err) c_g_resources_open_stream;

	// gio.Seekable

	GType function() c_g_seekable_get_type;
	int function(GSeekable* seekable) c_g_seekable_can_seek;
	int function(GSeekable* seekable) c_g_seekable_can_truncate;
	int function(GSeekable* seekable, long offset, GSeekType type, GCancellable* cancellable, GError** err) c_g_seekable_seek;
	long function(GSeekable* seekable) c_g_seekable_tell;
	int function(GSeekable* seekable, long offset, GCancellable* cancellable, GError** err) c_g_seekable_truncate;

	// gio.Settings

	GType function() c_g_settings_get_type;
	GSettings* function(const(char)* schemaId) c_g_settings_new;
	GSettings* function(GSettingsSchema* schema, GSettingsBackend* backend, const(char)* path) c_g_settings_new_full;
	GSettings* function(const(char)* schemaId, GSettingsBackend* backend) c_g_settings_new_with_backend;
	GSettings* function(const(char)* schemaId, GSettingsBackend* backend, const(char)* path) c_g_settings_new_with_backend_and_path;
	GSettings* function(const(char)* schemaId, const(char)* path) c_g_settings_new_with_path;
	char** function() c_g_settings_list_relocatable_schemas;
	char** function() c_g_settings_list_schemas;
	void function() c_g_settings_sync;
	void function(void* object, const(char)* property) c_g_settings_unbind;
	void function(GSettings* settings) c_g_settings_apply;
	void function(GSettings* settings, const(char)* key, void* object, const(char)* property, GSettingsBindFlags flags) c_g_settings_bind;
	void function(GSettings* settings, const(char)* key, void* object, const(char)* property, GSettingsBindFlags flags, GSettingsBindGetMapping getMapping, GSettingsBindSetMapping setMapping, void* userData, GDestroyNotify destroy) c_g_settings_bind_with_mapping;
	void function(GSettings* settings, const(char)* key, void* object, const(char)* property, int inverted) c_g_settings_bind_writable;
	GAction* function(GSettings* settings, const(char)* key) c_g_settings_create_action;
	void function(GSettings* settings) c_g_settings_delay;
	void function(GSettings* settings, const(char)* key, const(char)* format, ... ) c_g_settings_get;
	int function(GSettings* settings, const(char)* key) c_g_settings_get_boolean;
	GSettings* function(GSettings* settings, const(char)* name) c_g_settings_get_child;
	GVariant* function(GSettings* settings, const(char)* key) c_g_settings_get_default_value;
	double function(GSettings* settings, const(char)* key) c_g_settings_get_double;
	int function(GSettings* settings, const(char)* key) c_g_settings_get_enum;
	uint function(GSettings* settings, const(char)* key) c_g_settings_get_flags;
	int function(GSettings* settings) c_g_settings_get_has_unapplied;
	int function(GSettings* settings, const(char)* key) c_g_settings_get_int;
	long function(GSettings* settings, const(char)* key) c_g_settings_get_int64;
	void* function(GSettings* settings, const(char)* key, GSettingsGetMapping mapping, void* userData) c_g_settings_get_mapped;
	GVariant* function(GSettings* settings, const(char)* key) c_g_settings_get_range;
	char* function(GSettings* settings, const(char)* key) c_g_settings_get_string;
	char** function(GSettings* settings, const(char)* key) c_g_settings_get_strv;
	uint function(GSettings* settings, const(char)* key) c_g_settings_get_uint;
	ulong function(GSettings* settings, const(char)* key) c_g_settings_get_uint64;
	GVariant* function(GSettings* settings, const(char)* key) c_g_settings_get_user_value;
	GVariant* function(GSettings* settings, const(char)* key) c_g_settings_get_value;
	int function(GSettings* settings, const(char)* name) c_g_settings_is_writable;
	char** function(GSettings* settings) c_g_settings_list_children;
	char** function(GSettings* settings) c_g_settings_list_keys;
	int function(GSettings* settings, const(char)* key, GVariant* value) c_g_settings_range_check;
	void function(GSettings* settings, const(char)* key) c_g_settings_reset;
	void function(GSettings* settings) c_g_settings_revert;
	int function(GSettings* settings, const(char)* key, const(char)* format, ... ) c_g_settings_set;
	int function(GSettings* settings, const(char)* key, int value) c_g_settings_set_boolean;
	int function(GSettings* settings, const(char)* key, double value) c_g_settings_set_double;
	int function(GSettings* settings, const(char)* key, int value) c_g_settings_set_enum;
	int function(GSettings* settings, const(char)* key, uint value) c_g_settings_set_flags;
	int function(GSettings* settings, const(char)* key, int value) c_g_settings_set_int;
	int function(GSettings* settings, const(char)* key, long value) c_g_settings_set_int64;
	int function(GSettings* settings, const(char)* key, const(char)* value) c_g_settings_set_string;
	int function(GSettings* settings, const(char)* key, char** value) c_g_settings_set_strv;
	int function(GSettings* settings, const(char)* key, uint value) c_g_settings_set_uint;
	int function(GSettings* settings, const(char)* key, ulong value) c_g_settings_set_uint64;
	int function(GSettings* settings, const(char)* key, GVariant* value) c_g_settings_set_value;

	// gio.SettingsBackend

	GType function() c_g_settings_backend_get_type;
	void function(GTree* tree, char** path, char*** keys, GVariant*** values) c_g_settings_backend_flatten_tree;
	GSettingsBackend* function() c_g_settings_backend_get_default;
	void function(GSettingsBackend* backend, const(char)* key, void* originTag) c_g_settings_backend_changed;
	void function(GSettingsBackend* backend, GTree* tree, void* originTag) c_g_settings_backend_changed_tree;
	void function(GSettingsBackend* backend, const(char)* path, char** items, void* originTag) c_g_settings_backend_keys_changed;
	void function(GSettingsBackend* backend, const(char)* path, void* originTag) c_g_settings_backend_path_changed;
	void function(GSettingsBackend* backend, const(char)* path) c_g_settings_backend_path_writable_changed;
	void function(GSettingsBackend* backend, const(char)* key) c_g_settings_backend_writable_changed;
	GSettingsBackend* function(const(char)* filename, const(char)* rootPath, const(char)* rootGroup) c_g_keyfile_settings_backend_new;
	GSettingsBackend* function() c_g_memory_settings_backend_new;
	GSettingsBackend* function() c_g_null_settings_backend_new;

	// gio.SettingsSchema

	GType function() c_g_settings_schema_get_type;
	const(char)* function(GSettingsSchema* schema) c_g_settings_schema_get_id;
	GSettingsSchemaKey* function(GSettingsSchema* schema, const(char)* name) c_g_settings_schema_get_key;
	const(char)* function(GSettingsSchema* schema) c_g_settings_schema_get_path;
	int function(GSettingsSchema* schema, const(char)* name) c_g_settings_schema_has_key;
	char** function(GSettingsSchema* schema) c_g_settings_schema_list_children;
	char** function(GSettingsSchema* schema) c_g_settings_schema_list_keys;
	GSettingsSchema* function(GSettingsSchema* schema) c_g_settings_schema_ref;
	void function(GSettingsSchema* schema) c_g_settings_schema_unref;

	// gio.SettingsSchemaKey

	GType function() c_g_settings_schema_key_get_type;
	GVariant* function(GSettingsSchemaKey* key) c_g_settings_schema_key_get_default_value;
	const(char)* function(GSettingsSchemaKey* key) c_g_settings_schema_key_get_description;
	const(char)* function(GSettingsSchemaKey* key) c_g_settings_schema_key_get_name;
	GVariant* function(GSettingsSchemaKey* key) c_g_settings_schema_key_get_range;
	const(char)* function(GSettingsSchemaKey* key) c_g_settings_schema_key_get_summary;
	GVariantType* function(GSettingsSchemaKey* key) c_g_settings_schema_key_get_value_type;
	int function(GSettingsSchemaKey* key, GVariant* value) c_g_settings_schema_key_range_check;
	GSettingsSchemaKey* function(GSettingsSchemaKey* key) c_g_settings_schema_key_ref;
	void function(GSettingsSchemaKey* key) c_g_settings_schema_key_unref;

	// gio.SettingsSchemaSource

	GType function() c_g_settings_schema_source_get_type;
	GSettingsSchemaSource* function(char* directory, GSettingsSchemaSource* parent, int trusted, GError** err) c_g_settings_schema_source_new_from_directory;
	void function(GSettingsSchemaSource* source, int recursive, char*** nonRelocatable, char*** relocatable) c_g_settings_schema_source_list_schemas;
	GSettingsSchema* function(GSettingsSchemaSource* source, const(char)* schemaId, int recursive) c_g_settings_schema_source_lookup;
	GSettingsSchemaSource* function(GSettingsSchemaSource* source) c_g_settings_schema_source_ref;
	void function(GSettingsSchemaSource* source) c_g_settings_schema_source_unref;
	GSettingsSchemaSource* function() c_g_settings_schema_source_get_default;

	// gio.SimpleAction

	GType function() c_g_simple_action_get_type;
	GSimpleAction* function(const(char)* name, GVariantType* parameterType) c_g_simple_action_new;
	GSimpleAction* function(const(char)* name, GVariantType* parameterType, GVariant* state) c_g_simple_action_new_stateful;
	void function(GSimpleAction* simple, int enabled) c_g_simple_action_set_enabled;
	void function(GSimpleAction* simple, GVariant* value) c_g_simple_action_set_state;
	void function(GSimpleAction* simple, GVariant* stateHint) c_g_simple_action_set_state_hint;

	// gio.SimpleActionGroup

	GType function() c_g_simple_action_group_get_type;
	GSimpleActionGroup* function() c_g_simple_action_group_new;
	void function(GSimpleActionGroup* simple, GActionEntry* entries, int nEntries, void* userData) c_g_simple_action_group_add_entries;
	void function(GSimpleActionGroup* simple, GAction* action) c_g_simple_action_group_insert;
	GAction* function(GSimpleActionGroup* simple, const(char)* actionName) c_g_simple_action_group_lookup;
	void function(GSimpleActionGroup* simple, const(char)* actionName) c_g_simple_action_group_remove;

	// gio.SimpleAsyncResult

	GType function() c_g_simple_async_result_get_type;
	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, void* sourceTag) c_g_simple_async_result_new;
	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, GQuark domain, int code, const(char)* format, ... ) c_g_simple_async_result_new_error;
	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, GError* error) c_g_simple_async_result_new_from_error;
	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, GError* error) c_g_simple_async_result_new_take_error;
	int function(GAsyncResult* result, GObject* source, void* sourceTag) c_g_simple_async_result_is_valid;
	void function(GSimpleAsyncResult* simple) c_g_simple_async_result_complete;
	void function(GSimpleAsyncResult* simple) c_g_simple_async_result_complete_in_idle;
	int function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_op_res_gboolean;
	void* function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_op_res_gpointer;
	ptrdiff_t function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_op_res_gssize;
	void* function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_source_tag;
	int function(GSimpleAsyncResult* simple, GError** err) c_g_simple_async_result_propagate_error;
	void function(GSimpleAsyncResult* simple, GSimpleAsyncThreadFunc func, int ioPriority, GCancellable* cancellable) c_g_simple_async_result_run_in_thread;
	void function(GSimpleAsyncResult* simple, GCancellable* checkCancellable) c_g_simple_async_result_set_check_cancellable;
	void function(GSimpleAsyncResult* simple, GQuark domain, int code, const(char)* format, ... ) c_g_simple_async_result_set_error;
	void function(GSimpleAsyncResult* simple, GQuark domain, int code, const(char)* format, void* args) c_g_simple_async_result_set_error_va;
	void function(GSimpleAsyncResult* simple, GError* error) c_g_simple_async_result_set_from_error;
	void function(GSimpleAsyncResult* simple, int handleCancellation) c_g_simple_async_result_set_handle_cancellation;
	void function(GSimpleAsyncResult* simple, int opRes) c_g_simple_async_result_set_op_res_gboolean;
	void function(GSimpleAsyncResult* simple, void* opRes, GDestroyNotify destroyOpRes) c_g_simple_async_result_set_op_res_gpointer;
	void function(GSimpleAsyncResult* simple, ptrdiff_t opRes) c_g_simple_async_result_set_op_res_gssize;
	void function(GSimpleAsyncResult* simple, GError* error) c_g_simple_async_result_take_error;
	void function(GObject* object, GAsyncReadyCallback callback, void* userData, GQuark domain, int code, const(char)* format, ... ) c_g_simple_async_report_error_in_idle;
	void function(GObject* object, GAsyncReadyCallback callback, void* userData, GError* error) c_g_simple_async_report_gerror_in_idle;
	void function(GObject* object, GAsyncReadyCallback callback, void* userData, GError* error) c_g_simple_async_report_take_gerror_in_idle;

	// gio.SimpleIOStream

	GType function() c_g_simple_io_stream_get_type;
	GIOStream* function(GInputStream* inputStream, GOutputStream* outputStream) c_g_simple_io_stream_new;

	// gio.SimplePermission

	GType function() c_g_simple_permission_get_type;
	GPermission* function(int allowed) c_g_simple_permission_new;

	// gio.SimpleProxyResolver

	GType function() c_g_simple_proxy_resolver_get_type;
	GProxyResolver* function(const(char)* defaultProxy, char** ignoreHosts) c_g_simple_proxy_resolver_new;
	void function(GSimpleProxyResolver* resolver, const(char)* defaultProxy) c_g_simple_proxy_resolver_set_default_proxy;
	void function(GSimpleProxyResolver* resolver, char** ignoreHosts) c_g_simple_proxy_resolver_set_ignore_hosts;
	void function(GSimpleProxyResolver* resolver, const(char)* uriScheme, const(char)* proxy) c_g_simple_proxy_resolver_set_uri_proxy;

	// gio.Socket

	GType function() c_g_socket_get_type;
	GSocket* function(GSocketFamily family, GSocketType type, GSocketProtocol protocol, GError** err) c_g_socket_new;
	GSocket* function(int fd, GError** err) c_g_socket_new_from_fd;
	GSocket* function(GSocket* socket, GCancellable* cancellable, GError** err) c_g_socket_accept;
	int function(GSocket* socket, GSocketAddress* address, int allowReuse, GError** err) c_g_socket_bind;
	int function(GSocket* socket, GError** err) c_g_socket_check_connect_result;
	int function(GSocket* socket, GError** err) c_g_socket_close;
	GIOCondition function(GSocket* socket, GIOCondition condition) c_g_socket_condition_check;
	int function(GSocket* socket, GIOCondition condition, long timeoutUs, GCancellable* cancellable, GError** err) c_g_socket_condition_timed_wait;
	int function(GSocket* socket, GIOCondition condition, GCancellable* cancellable, GError** err) c_g_socket_condition_wait;
	int function(GSocket* socket, GSocketAddress* address, GCancellable* cancellable, GError** err) c_g_socket_connect;
	GSocketConnection* function(GSocket* socket) c_g_socket_connection_factory_create_connection;
	GSource* function(GSocket* socket, GIOCondition condition, GCancellable* cancellable) c_g_socket_create_source;
	ptrdiff_t function(GSocket* socket) c_g_socket_get_available_bytes;
	int function(GSocket* socket) c_g_socket_get_blocking;
	int function(GSocket* socket) c_g_socket_get_broadcast;
	GCredentials* function(GSocket* socket, GError** err) c_g_socket_get_credentials;
	GSocketFamily function(GSocket* socket) c_g_socket_get_family;
	int function(GSocket* socket) c_g_socket_get_fd;
	int function(GSocket* socket) c_g_socket_get_keepalive;
	int function(GSocket* socket) c_g_socket_get_listen_backlog;
	GSocketAddress* function(GSocket* socket, GError** err) c_g_socket_get_local_address;
	int function(GSocket* socket) c_g_socket_get_multicast_loopback;
	uint function(GSocket* socket) c_g_socket_get_multicast_ttl;
	int function(GSocket* socket, int level, int optname, int* value, GError** err) c_g_socket_get_option;
	GSocketProtocol function(GSocket* socket) c_g_socket_get_protocol;
	GSocketAddress* function(GSocket* socket, GError** err) c_g_socket_get_remote_address;
	GSocketType function(GSocket* socket) c_g_socket_get_socket_type;
	uint function(GSocket* socket) c_g_socket_get_timeout;
	uint function(GSocket* socket) c_g_socket_get_ttl;
	int function(GSocket* socket) c_g_socket_is_closed;
	int function(GSocket* socket) c_g_socket_is_connected;
	int function(GSocket* socket, GInetAddress* group, int sourceSpecific, const(char)* iface, GError** err) c_g_socket_join_multicast_group;
	int function(GSocket* socket, GInetAddress* group, GInetAddress* sourceSpecific, const(char)* iface, GError** err) c_g_socket_join_multicast_group_ssm;
	int function(GSocket* socket, GInetAddress* group, int sourceSpecific, const(char)* iface, GError** err) c_g_socket_leave_multicast_group;
	int function(GSocket* socket, GInetAddress* group, GInetAddress* sourceSpecific, const(char)* iface, GError** err) c_g_socket_leave_multicast_group_ssm;
	int function(GSocket* socket, GError** err) c_g_socket_listen;
	ptrdiff_t function(GSocket* socket, char* buffer, size_t size, GCancellable* cancellable, GError** err) c_g_socket_receive;
	ptrdiff_t function(GSocket* socket, GSocketAddress** address, char* buffer, size_t size, GCancellable* cancellable, GError** err) c_g_socket_receive_from;
	ptrdiff_t function(GSocket* socket, GSocketAddress** address, GInputVector* vectors, int numVectors, GSocketControlMessage*** messages, int* numMessages, int* flags, GCancellable* cancellable, GError** err) c_g_socket_receive_message;
	int function(GSocket* socket, GInputMessage* messages, uint numMessages, int flags, GCancellable* cancellable, GError** err) c_g_socket_receive_messages;
	ptrdiff_t function(GSocket* socket, char* buffer, size_t size, int blocking, GCancellable* cancellable, GError** err) c_g_socket_receive_with_blocking;
	ptrdiff_t function(GSocket* socket, char* buffer, size_t size, GCancellable* cancellable, GError** err) c_g_socket_send;
	ptrdiff_t function(GSocket* socket, GSocketAddress* address, GOutputVector* vectors, int numVectors, GSocketControlMessage** messages, int numMessages, int flags, GCancellable* cancellable, GError** err) c_g_socket_send_message;
	GPollableReturn function(GSocket* socket, GSocketAddress* address, GOutputVector* vectors, int numVectors, GSocketControlMessage** messages, int numMessages, int flags, long timeoutUs, size_t* bytesWritten, GCancellable* cancellable, GError** err) c_g_socket_send_message_with_timeout;
	int function(GSocket* socket, GOutputMessage* messages, uint numMessages, int flags, GCancellable* cancellable, GError** err) c_g_socket_send_messages;
	ptrdiff_t function(GSocket* socket, GSocketAddress* address, char* buffer, size_t size, GCancellable* cancellable, GError** err) c_g_socket_send_to;
	ptrdiff_t function(GSocket* socket, char* buffer, size_t size, int blocking, GCancellable* cancellable, GError** err) c_g_socket_send_with_blocking;
	void function(GSocket* socket, int blocking) c_g_socket_set_blocking;
	void function(GSocket* socket, int broadcast) c_g_socket_set_broadcast;
	void function(GSocket* socket, int keepalive) c_g_socket_set_keepalive;
	void function(GSocket* socket, int backlog) c_g_socket_set_listen_backlog;
	void function(GSocket* socket, int loopback) c_g_socket_set_multicast_loopback;
	void function(GSocket* socket, uint ttl) c_g_socket_set_multicast_ttl;
	int function(GSocket* socket, int level, int optname, int value, GError** err) c_g_socket_set_option;
	void function(GSocket* socket, uint timeout) c_g_socket_set_timeout;
	void function(GSocket* socket, uint ttl) c_g_socket_set_ttl;
	int function(GSocket* socket, int shutdownRead, int shutdownWrite, GError** err) c_g_socket_shutdown;
	int function(GSocket* socket) c_g_socket_speaks_ipv4;

	// gio.SocketAddress

	GType function() c_g_socket_address_get_type;
	GSocketAddress* function(void* native, size_t len) c_g_socket_address_new_from_native;
	GSocketFamily function(GSocketAddress* address) c_g_socket_address_get_family;
	ptrdiff_t function(GSocketAddress* address) c_g_socket_address_get_native_size;
	int function(GSocketAddress* address, void* dest, size_t destlen, GError** err) c_g_socket_address_to_native;

	// gio.SocketAddressEnumerator

	GType function() c_g_socket_address_enumerator_get_type;
	GSocketAddress* function(GSocketAddressEnumerator* enumerator, GCancellable* cancellable, GError** err) c_g_socket_address_enumerator_next;
	void function(GSocketAddressEnumerator* enumerator, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_address_enumerator_next_async;
	GSocketAddress* function(GSocketAddressEnumerator* enumerator, GAsyncResult* result, GError** err) c_g_socket_address_enumerator_next_finish;

	// gio.SocketClient

	GType function() c_g_socket_client_get_type;
	GSocketClient* function() c_g_socket_client_new;
	void function(GSocketClient* client, const(char)* protocol) c_g_socket_client_add_application_proxy;
	GSocketConnection* function(GSocketClient* client, GSocketConnectable* connectable, GCancellable* cancellable, GError** err) c_g_socket_client_connect;
	void function(GSocketClient* client, GSocketConnectable* connectable, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_client_connect_async;
	GSocketConnection* function(GSocketClient* client, GAsyncResult* result, GError** err) c_g_socket_client_connect_finish;
	GSocketConnection* function(GSocketClient* client, const(char)* hostAndPort, ushort defaultPort, GCancellable* cancellable, GError** err) c_g_socket_client_connect_to_host;
	void function(GSocketClient* client, const(char)* hostAndPort, ushort defaultPort, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_client_connect_to_host_async;
	GSocketConnection* function(GSocketClient* client, GAsyncResult* result, GError** err) c_g_socket_client_connect_to_host_finish;
	GSocketConnection* function(GSocketClient* client, const(char)* domain, const(char)* service, GCancellable* cancellable, GError** err) c_g_socket_client_connect_to_service;
	void function(GSocketClient* client, const(char)* domain, const(char)* service, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_client_connect_to_service_async;
	GSocketConnection* function(GSocketClient* client, GAsyncResult* result, GError** err) c_g_socket_client_connect_to_service_finish;
	GSocketConnection* function(GSocketClient* client, const(char)* uri, ushort defaultPort, GCancellable* cancellable, GError** err) c_g_socket_client_connect_to_uri;
	void function(GSocketClient* client, const(char)* uri, ushort defaultPort, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_client_connect_to_uri_async;
	GSocketConnection* function(GSocketClient* client, GAsyncResult* result, GError** err) c_g_socket_client_connect_to_uri_finish;
	int function(GSocketClient* client) c_g_socket_client_get_enable_proxy;
	GSocketFamily function(GSocketClient* client) c_g_socket_client_get_family;
	GSocketAddress* function(GSocketClient* client) c_g_socket_client_get_local_address;
	GSocketProtocol function(GSocketClient* client) c_g_socket_client_get_protocol;
	GProxyResolver* function(GSocketClient* client) c_g_socket_client_get_proxy_resolver;
	GSocketType function(GSocketClient* client) c_g_socket_client_get_socket_type;
	uint function(GSocketClient* client) c_g_socket_client_get_timeout;
	int function(GSocketClient* client) c_g_socket_client_get_tls;
	GTlsCertificateFlags function(GSocketClient* client) c_g_socket_client_get_tls_validation_flags;
	void function(GSocketClient* client, int enable) c_g_socket_client_set_enable_proxy;
	void function(GSocketClient* client, GSocketFamily family) c_g_socket_client_set_family;
	void function(GSocketClient* client, GSocketAddress* address) c_g_socket_client_set_local_address;
	void function(GSocketClient* client, GSocketProtocol protocol) c_g_socket_client_set_protocol;
	void function(GSocketClient* client, GProxyResolver* proxyResolver) c_g_socket_client_set_proxy_resolver;
	void function(GSocketClient* client, GSocketType type) c_g_socket_client_set_socket_type;
	void function(GSocketClient* client, uint timeout) c_g_socket_client_set_timeout;
	void function(GSocketClient* client, int tls) c_g_socket_client_set_tls;
	void function(GSocketClient* client, GTlsCertificateFlags flags) c_g_socket_client_set_tls_validation_flags;

	// gio.SocketConnectable

	GType function() c_g_socket_connectable_get_type;
	GSocketAddressEnumerator* function(GSocketConnectable* connectable) c_g_socket_connectable_enumerate;
	GSocketAddressEnumerator* function(GSocketConnectable* connectable) c_g_socket_connectable_proxy_enumerate;
	char* function(GSocketConnectable* connectable) c_g_socket_connectable_to_string;

	// gio.SocketConnection

	GType function() c_g_socket_connection_get_type;
	GType function(GSocketFamily family, GSocketType type, int protocolId) c_g_socket_connection_factory_lookup_type;
	void function(GType gType, GSocketFamily family, GSocketType type, int protocol) c_g_socket_connection_factory_register_type;
	int function(GSocketConnection* connection, GSocketAddress* address, GCancellable* cancellable, GError** err) c_g_socket_connection_connect;
	void function(GSocketConnection* connection, GSocketAddress* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_connection_connect_async;
	int function(GSocketConnection* connection, GAsyncResult* result, GError** err) c_g_socket_connection_connect_finish;
	GSocketAddress* function(GSocketConnection* connection, GError** err) c_g_socket_connection_get_local_address;
	GSocketAddress* function(GSocketConnection* connection, GError** err) c_g_socket_connection_get_remote_address;
	GSocket* function(GSocketConnection* connection) c_g_socket_connection_get_socket;
	int function(GSocketConnection* connection) c_g_socket_connection_is_connected;

	// gio.SocketControlMessage

	GType function() c_g_socket_control_message_get_type;
	GSocketControlMessage* function(int level, int type, size_t size, void* data) c_g_socket_control_message_deserialize;
	int function(GSocketControlMessage* message) c_g_socket_control_message_get_level;
	int function(GSocketControlMessage* message) c_g_socket_control_message_get_msg_type;
	size_t function(GSocketControlMessage* message) c_g_socket_control_message_get_size;
	void function(GSocketControlMessage* message, void* data) c_g_socket_control_message_serialize;

	// gio.SocketListener

	GType function() c_g_socket_listener_get_type;
	GSocketListener* function() c_g_socket_listener_new;
	GSocketConnection* function(GSocketListener* listener, GObject** sourceObject, GCancellable* cancellable, GError** err) c_g_socket_listener_accept;
	void function(GSocketListener* listener, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_listener_accept_async;
	GSocketConnection* function(GSocketListener* listener, GAsyncResult* result, GObject** sourceObject, GError** err) c_g_socket_listener_accept_finish;
	GSocket* function(GSocketListener* listener, GObject** sourceObject, GCancellable* cancellable, GError** err) c_g_socket_listener_accept_socket;
	void function(GSocketListener* listener, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_listener_accept_socket_async;
	GSocket* function(GSocketListener* listener, GAsyncResult* result, GObject** sourceObject, GError** err) c_g_socket_listener_accept_socket_finish;
	int function(GSocketListener* listener, GSocketAddress* address, GSocketType type, GSocketProtocol protocol, GObject* sourceObject, GSocketAddress** effectiveAddress, GError** err) c_g_socket_listener_add_address;
	ushort function(GSocketListener* listener, GObject* sourceObject, GError** err) c_g_socket_listener_add_any_inet_port;
	int function(GSocketListener* listener, ushort port, GObject* sourceObject, GError** err) c_g_socket_listener_add_inet_port;
	int function(GSocketListener* listener, GSocket* socket, GObject* sourceObject, GError** err) c_g_socket_listener_add_socket;
	void function(GSocketListener* listener) c_g_socket_listener_close;
	void function(GSocketListener* listener, int listenBacklog) c_g_socket_listener_set_backlog;

	// gio.SocketService

	GType function() c_g_socket_service_get_type;
	GSocketService* function() c_g_socket_service_new;
	int function(GSocketService* service) c_g_socket_service_is_active;
	void function(GSocketService* service) c_g_socket_service_start;
	void function(GSocketService* service) c_g_socket_service_stop;

	// gio.SrvTarget

	GType function() c_g_srv_target_get_type;
	GSrvTarget* function(const(char)* hostname, ushort port, ushort priority, ushort weight) c_g_srv_target_new;
	GSrvTarget* function(GSrvTarget* target) c_g_srv_target_copy;
	void function(GSrvTarget* target) c_g_srv_target_free;
	const(char)* function(GSrvTarget* target) c_g_srv_target_get_hostname;
	ushort function(GSrvTarget* target) c_g_srv_target_get_port;
	ushort function(GSrvTarget* target) c_g_srv_target_get_priority;
	ushort function(GSrvTarget* target) c_g_srv_target_get_weight;
	GList* function(GList* targets) c_g_srv_target_list_sort;

	// gio.StaticResource

	void function(GStaticResource* staticResource) c_g_static_resource_fini;
	GResource* function(GStaticResource* staticResource) c_g_static_resource_get_resource;
	void function(GStaticResource* staticResource) c_g_static_resource_init;

	// gio.Subprocess

	GType function() c_g_subprocess_get_type;
	GSubprocess* function(GSubprocessFlags flags, GError** error, const(char)* argv0, ... ) c_g_subprocess_new;
	GSubprocess* function(char** argv, GSubprocessFlags flags, GError** err) c_g_subprocess_newv;
	int function(GSubprocess* subprocess, GBytes* stdinBuf, GCancellable* cancellable, GBytes** stdoutBuf, GBytes** stderrBuf, GError** err) c_g_subprocess_communicate;
	void function(GSubprocess* subprocess, GBytes* stdinBuf, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_subprocess_communicate_async;
	int function(GSubprocess* subprocess, GAsyncResult* result, GBytes** stdoutBuf, GBytes** stderrBuf, GError** err) c_g_subprocess_communicate_finish;
	int function(GSubprocess* subprocess, const(char)* stdinBuf, GCancellable* cancellable, char** stdoutBuf, char** stderrBuf, GError** err) c_g_subprocess_communicate_utf8;
	void function(GSubprocess* subprocess, const(char)* stdinBuf, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_subprocess_communicate_utf8_async;
	int function(GSubprocess* subprocess, GAsyncResult* result, char** stdoutBuf, char** stderrBuf, GError** err) c_g_subprocess_communicate_utf8_finish;
	void function(GSubprocess* subprocess) c_g_subprocess_force_exit;
	int function(GSubprocess* subprocess) c_g_subprocess_get_exit_status;
	const(char)* function(GSubprocess* subprocess) c_g_subprocess_get_identifier;
	int function(GSubprocess* subprocess) c_g_subprocess_get_if_exited;
	int function(GSubprocess* subprocess) c_g_subprocess_get_if_signaled;
	int function(GSubprocess* subprocess) c_g_subprocess_get_status;
	GInputStream* function(GSubprocess* subprocess) c_g_subprocess_get_stderr_pipe;
	GOutputStream* function(GSubprocess* subprocess) c_g_subprocess_get_stdin_pipe;
	GInputStream* function(GSubprocess* subprocess) c_g_subprocess_get_stdout_pipe;
	int function(GSubprocess* subprocess) c_g_subprocess_get_successful;
	int function(GSubprocess* subprocess) c_g_subprocess_get_term_sig;
	void function(GSubprocess* subprocess, int signalNum) c_g_subprocess_send_signal;
	int function(GSubprocess* subprocess, GCancellable* cancellable, GError** err) c_g_subprocess_wait;
	void function(GSubprocess* subprocess, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_subprocess_wait_async;
	int function(GSubprocess* subprocess, GCancellable* cancellable, GError** err) c_g_subprocess_wait_check;
	void function(GSubprocess* subprocess, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_subprocess_wait_check_async;
	int function(GSubprocess* subprocess, GAsyncResult* result, GError** err) c_g_subprocess_wait_check_finish;
	int function(GSubprocess* subprocess, GAsyncResult* result, GError** err) c_g_subprocess_wait_finish;

	// gio.SubprocessLauncher

	GType function() c_g_subprocess_launcher_get_type;
	GSubprocessLauncher* function(GSubprocessFlags flags) c_g_subprocess_launcher_new;
	void function(GSubprocessLauncher* self) c_g_subprocess_launcher_close;
	char* function(GSubprocessLauncher* self, char* variable) c_g_subprocess_launcher_getenv;
	void function(GSubprocessLauncher* self, GSpawnChildSetupFunc childSetup, void* userData, GDestroyNotify destroyNotify) c_g_subprocess_launcher_set_child_setup;
	void function(GSubprocessLauncher* self, char* cwd) c_g_subprocess_launcher_set_cwd;
	void function(GSubprocessLauncher* self, char** env) c_g_subprocess_launcher_set_environ;
	void function(GSubprocessLauncher* self, GSubprocessFlags flags) c_g_subprocess_launcher_set_flags;
	void function(GSubprocessLauncher* self, char* path) c_g_subprocess_launcher_set_stderr_file_path;
	void function(GSubprocessLauncher* self, const(char)* path) c_g_subprocess_launcher_set_stdin_file_path;
	void function(GSubprocessLauncher* self, char* path) c_g_subprocess_launcher_set_stdout_file_path;
	void function(GSubprocessLauncher* self, char* variable, char* value, int overwrite) c_g_subprocess_launcher_setenv;
	GSubprocess* function(GSubprocessLauncher* self, GError** error, const(char)* argv0, ... ) c_g_subprocess_launcher_spawn;
	GSubprocess* function(GSubprocessLauncher* self, char** argv, GError** err) c_g_subprocess_launcher_spawnv;
	void function(GSubprocessLauncher* self, int sourceFd, int targetFd) c_g_subprocess_launcher_take_fd;
	void function(GSubprocessLauncher* self, int fd) c_g_subprocess_launcher_take_stderr_fd;
	void function(GSubprocessLauncher* self, int fd) c_g_subprocess_launcher_take_stdin_fd;
	void function(GSubprocessLauncher* self, int fd) c_g_subprocess_launcher_take_stdout_fd;
	void function(GSubprocessLauncher* self, char* variable) c_g_subprocess_launcher_unsetenv;

	// gio.Task

	GType function() c_g_task_get_type;
	GTask* function(void* sourceObject, GCancellable* cancellable, GAsyncReadyCallback callback, void* callbackData) c_g_task_new;
	int function(void* result, void* sourceObject) c_g_task_is_valid;
	void function(void* sourceObject, GAsyncReadyCallback callback, void* callbackData, void* sourceTag, GError* error) c_g_task_report_error;
	void function(void* sourceObject, GAsyncReadyCallback callback, void* callbackData, void* sourceTag, GQuark domain, int code, const(char)* format, ... ) c_g_task_report_new_error;
	void function(GTask* task, GSource* source, GSourceFunc callback) c_g_task_attach_source;
	GCancellable* function(GTask* task) c_g_task_get_cancellable;
	int function(GTask* task) c_g_task_get_check_cancellable;
	int function(GTask* task) c_g_task_get_completed;
	GMainContext* function(GTask* task) c_g_task_get_context;
	const(char)* function(GTask* task) c_g_task_get_name;
	int function(GTask* task) c_g_task_get_priority;
	int function(GTask* task) c_g_task_get_return_on_cancel;
	void* function(GTask* task) c_g_task_get_source_object;
	void* function(GTask* task) c_g_task_get_source_tag;
	void* function(GTask* task) c_g_task_get_task_data;
	int function(GTask* task) c_g_task_had_error;
	int function(GTask* task, GError** err) c_g_task_propagate_boolean;
	ptrdiff_t function(GTask* task, GError** err) c_g_task_propagate_int;
	void* function(GTask* task, GError** err) c_g_task_propagate_pointer;
	int function(GTask* task, GValue* value, GError** err) c_g_task_propagate_value;
	void function(GTask* task, int result) c_g_task_return_boolean;
	void function(GTask* task, GError* error) c_g_task_return_error;
	int function(GTask* task) c_g_task_return_error_if_cancelled;
	void function(GTask* task, ptrdiff_t result) c_g_task_return_int;
	void function(GTask* task, GQuark domain, int code, const(char)* format, ... ) c_g_task_return_new_error;
	void function(GTask* task, void* result, GDestroyNotify resultDestroy) c_g_task_return_pointer;
	void function(GTask* task, GValue* result) c_g_task_return_value;
	void function(GTask* task, GTaskThreadFunc taskFunc) c_g_task_run_in_thread;
	void function(GTask* task, GTaskThreadFunc taskFunc) c_g_task_run_in_thread_sync;
	void function(GTask* task, int checkCancellable) c_g_task_set_check_cancellable;
	void function(GTask* task, const(char)* name) c_g_task_set_name;
	void function(GTask* task, int priority) c_g_task_set_priority;
	int function(GTask* task, int returnOnCancel) c_g_task_set_return_on_cancel;
	void function(GTask* task, void* sourceTag) c_g_task_set_source_tag;
	void function(GTask* task, void* taskData, GDestroyNotify taskDataDestroy) c_g_task_set_task_data;

	// gio.TcpConnection

	GType function() c_g_tcp_connection_get_type;
	int function(GTcpConnection* connection) c_g_tcp_connection_get_graceful_disconnect;
	void function(GTcpConnection* connection, int gracefulDisconnect) c_g_tcp_connection_set_graceful_disconnect;

	// gio.TcpWrapperConnection

	GType function() c_g_tcp_wrapper_connection_get_type;
	GSocketConnection* function(GIOStream* baseIoStream, GSocket* socket) c_g_tcp_wrapper_connection_new;
	GIOStream* function(GTcpWrapperConnection* conn) c_g_tcp_wrapper_connection_get_base_io_stream;

	// gio.TestDBus

	GType function() c_g_test_dbus_get_type;
	GTestDBus* function(GTestDBusFlags flags) c_g_test_dbus_new;
	void function() c_g_test_dbus_unset;
	void function(GTestDBus* self, const(char)* path) c_g_test_dbus_add_service_dir;
	void function(GTestDBus* self) c_g_test_dbus_down;
	const(char)* function(GTestDBus* self) c_g_test_dbus_get_bus_address;
	GTestDBusFlags function(GTestDBus* self) c_g_test_dbus_get_flags;
	void function(GTestDBus* self) c_g_test_dbus_stop;
	void function(GTestDBus* self) c_g_test_dbus_up;

	// gio.ThemedIcon

	GType function() c_g_themed_icon_get_type;
	GIcon* function(const(char)* iconname) c_g_themed_icon_new;
	GIcon* function(char** iconnames, int len) c_g_themed_icon_new_from_names;
	GIcon* function(const(char)* iconname) c_g_themed_icon_new_with_default_fallbacks;
	void function(GThemedIcon* icon, const(char)* iconname) c_g_themed_icon_append_name;
	char** function(GThemedIcon* icon) c_g_themed_icon_get_names;
	void function(GThemedIcon* icon, const(char)* iconname) c_g_themed_icon_prepend_name;

	// gio.ThreadedSocketService

	GType function() c_g_threaded_socket_service_get_type;
	GSocketService* function(int maxThreads) c_g_threaded_socket_service_new;

	// gio.TlsBackend

	GType function() c_g_tls_backend_get_type;
	GTlsBackend* function() c_g_tls_backend_get_default;
	GType function(GTlsBackend* backend) c_g_tls_backend_get_certificate_type;
	GType function(GTlsBackend* backend) c_g_tls_backend_get_client_connection_type;
	GTlsDatabase* function(GTlsBackend* backend) c_g_tls_backend_get_default_database;
	GType function(GTlsBackend* backend) c_g_tls_backend_get_dtls_client_connection_type;
	GType function(GTlsBackend* backend) c_g_tls_backend_get_dtls_server_connection_type;
	GType function(GTlsBackend* backend) c_g_tls_backend_get_file_database_type;
	GType function(GTlsBackend* backend) c_g_tls_backend_get_server_connection_type;
	void function(GTlsBackend* backend, GTlsDatabase* database) c_g_tls_backend_set_default_database;
	int function(GTlsBackend* backend) c_g_tls_backend_supports_dtls;
	int function(GTlsBackend* backend) c_g_tls_backend_supports_tls;

	// gio.TlsCertificate

	GType function() c_g_tls_certificate_get_type;
	GTlsCertificate* function(char* file, GError** err) c_g_tls_certificate_new_from_file;
	GTlsCertificate* function(char* file, const(char)* password, GError** err) c_g_tls_certificate_new_from_file_with_password;
	GTlsCertificate* function(char* certFile, char* keyFile, GError** err) c_g_tls_certificate_new_from_files;
	GTlsCertificate* function(const(char)* data, ptrdiff_t length, GError** err) c_g_tls_certificate_new_from_pem;
	GTlsCertificate* function(const(char)* pkcs11Uri, const(char)* privateKeyPkcs11Uri, GError** err) c_g_tls_certificate_new_from_pkcs11_uris;
	GTlsCertificate* function(ubyte* data, size_t length, const(char)* password, GError** err) c_g_tls_certificate_new_from_pkcs12;
	GList* function(char* file, GError** err) c_g_tls_certificate_list_new_from_file;
	GPtrArray* function(GTlsCertificate* cert) c_g_tls_certificate_get_dns_names;
	GPtrArray* function(GTlsCertificate* cert) c_g_tls_certificate_get_ip_addresses;
	GTlsCertificate* function(GTlsCertificate* cert) c_g_tls_certificate_get_issuer;
	char* function(GTlsCertificate* cert) c_g_tls_certificate_get_issuer_name;
	GDateTime* function(GTlsCertificate* cert) c_g_tls_certificate_get_not_valid_after;
	GDateTime* function(GTlsCertificate* cert) c_g_tls_certificate_get_not_valid_before;
	char* function(GTlsCertificate* cert) c_g_tls_certificate_get_subject_name;
	int function(GTlsCertificate* certOne, GTlsCertificate* certTwo) c_g_tls_certificate_is_same;
	GTlsCertificateFlags function(GTlsCertificate* cert, GSocketConnectable* identity, GTlsCertificate* trustedCa) c_g_tls_certificate_verify;

	// gio.TlsClientConnection

	GType function() c_g_tls_client_connection_get_type;
	GIOStream* function(GIOStream* baseIoStream, GSocketConnectable* serverIdentity, GError** err) c_g_tls_client_connection_new;
	void function(GTlsClientConnection* conn, GTlsClientConnection* source) c_g_tls_client_connection_copy_session_state;
	GList* function(GTlsClientConnection* conn) c_g_tls_client_connection_get_accepted_cas;
	GSocketConnectable* function(GTlsClientConnection* conn) c_g_tls_client_connection_get_server_identity;
	int function(GTlsClientConnection* conn) c_g_tls_client_connection_get_use_ssl3;
	GTlsCertificateFlags function(GTlsClientConnection* conn) c_g_tls_client_connection_get_validation_flags;
	void function(GTlsClientConnection* conn, GSocketConnectable* identity) c_g_tls_client_connection_set_server_identity;
	void function(GTlsClientConnection* conn, int useSsl3) c_g_tls_client_connection_set_use_ssl3;
	void function(GTlsClientConnection* conn, GTlsCertificateFlags flags) c_g_tls_client_connection_set_validation_flags;

	// gio.TlsConnection

	GType function() c_g_tls_connection_get_type;
	int function(GTlsConnection* conn, GTlsCertificate* peerCert, GTlsCertificateFlags errors) c_g_tls_connection_emit_accept_certificate;
	GTlsCertificate* function(GTlsConnection* conn) c_g_tls_connection_get_certificate;
	int function(GTlsConnection* conn, GTlsChannelBindingType type, GByteArray* data, GError** err) c_g_tls_connection_get_channel_binding_data;
	char* function(GTlsConnection* conn) c_g_tls_connection_get_ciphersuite_name;
	GTlsDatabase* function(GTlsConnection* conn) c_g_tls_connection_get_database;
	GTlsInteraction* function(GTlsConnection* conn) c_g_tls_connection_get_interaction;
	const(char)* function(GTlsConnection* conn) c_g_tls_connection_get_negotiated_protocol;
	GTlsCertificate* function(GTlsConnection* conn) c_g_tls_connection_get_peer_certificate;
	GTlsCertificateFlags function(GTlsConnection* conn) c_g_tls_connection_get_peer_certificate_errors;
	GTlsProtocolVersion function(GTlsConnection* conn) c_g_tls_connection_get_protocol_version;
	GTlsRehandshakeMode function(GTlsConnection* conn) c_g_tls_connection_get_rehandshake_mode;
	int function(GTlsConnection* conn) c_g_tls_connection_get_require_close_notify;
	int function(GTlsConnection* conn) c_g_tls_connection_get_use_system_certdb;
	int function(GTlsConnection* conn, GCancellable* cancellable, GError** err) c_g_tls_connection_handshake;
	void function(GTlsConnection* conn, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_connection_handshake_async;
	int function(GTlsConnection* conn, GAsyncResult* result, GError** err) c_g_tls_connection_handshake_finish;
	void function(GTlsConnection* conn, char** protocols) c_g_tls_connection_set_advertised_protocols;
	void function(GTlsConnection* conn, GTlsCertificate* certificate) c_g_tls_connection_set_certificate;
	void function(GTlsConnection* conn, GTlsDatabase* database) c_g_tls_connection_set_database;
	void function(GTlsConnection* conn, GTlsInteraction* interaction) c_g_tls_connection_set_interaction;
	void function(GTlsConnection* conn, GTlsRehandshakeMode mode) c_g_tls_connection_set_rehandshake_mode;
	void function(GTlsConnection* conn, int requireCloseNotify) c_g_tls_connection_set_require_close_notify;
	void function(GTlsConnection* conn, int useSystemCertdb) c_g_tls_connection_set_use_system_certdb;

	// gio.TlsDatabase

	GType function() c_g_tls_database_get_type;
	char* function(GTlsDatabase* self, GTlsCertificate* certificate) c_g_tls_database_create_certificate_handle;
	GTlsCertificate* function(GTlsDatabase* self, const(char)* handle, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** err) c_g_tls_database_lookup_certificate_for_handle;
	void function(GTlsDatabase* self, const(char)* handle, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_database_lookup_certificate_for_handle_async;
	GTlsCertificate* function(GTlsDatabase* self, GAsyncResult* result, GError** err) c_g_tls_database_lookup_certificate_for_handle_finish;
	GTlsCertificate* function(GTlsDatabase* self, GTlsCertificate* certificate, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** err) c_g_tls_database_lookup_certificate_issuer;
	void function(GTlsDatabase* self, GTlsCertificate* certificate, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_database_lookup_certificate_issuer_async;
	GTlsCertificate* function(GTlsDatabase* self, GAsyncResult* result, GError** err) c_g_tls_database_lookup_certificate_issuer_finish;
	GList* function(GTlsDatabase* self, GByteArray* issuerRawDn, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** err) c_g_tls_database_lookup_certificates_issued_by;
	void function(GTlsDatabase* self, GByteArray* issuerRawDn, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_database_lookup_certificates_issued_by_async;
	GList* function(GTlsDatabase* self, GAsyncResult* result, GError** err) c_g_tls_database_lookup_certificates_issued_by_finish;
	GTlsCertificateFlags function(GTlsDatabase* self, GTlsCertificate* chain, const(char)* purpose, GSocketConnectable* identity, GTlsInteraction* interaction, GTlsDatabaseVerifyFlags flags, GCancellable* cancellable, GError** err) c_g_tls_database_verify_chain;
	void function(GTlsDatabase* self, GTlsCertificate* chain, const(char)* purpose, GSocketConnectable* identity, GTlsInteraction* interaction, GTlsDatabaseVerifyFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_database_verify_chain_async;
	GTlsCertificateFlags function(GTlsDatabase* self, GAsyncResult* result, GError** err) c_g_tls_database_verify_chain_finish;

	// gio.TlsFileDatabase

	GType function() c_g_tls_file_database_get_type;
	GTlsDatabase* function(char* anchors, GError** err) c_g_tls_file_database_new;

	// gio.TlsInteraction

	GType function() c_g_tls_interaction_get_type;
	GTlsInteractionResult function(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GError** err) c_g_tls_interaction_ask_password;
	void function(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_interaction_ask_password_async;
	GTlsInteractionResult function(GTlsInteraction* interaction, GAsyncResult* result, GError** err) c_g_tls_interaction_ask_password_finish;
	GTlsInteractionResult function(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GError** err) c_g_tls_interaction_invoke_ask_password;
	GTlsInteractionResult function(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable, GError** err) c_g_tls_interaction_invoke_request_certificate;
	GTlsInteractionResult function(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable, GError** err) c_g_tls_interaction_request_certificate;
	void function(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_interaction_request_certificate_async;
	GTlsInteractionResult function(GTlsInteraction* interaction, GAsyncResult* result, GError** err) c_g_tls_interaction_request_certificate_finish;

	// gio.TlsPassword

	GType function() c_g_tls_password_get_type;
	GTlsPassword* function(GTlsPasswordFlags flags, const(char)* description) c_g_tls_password_new;
	const(char)* function(GTlsPassword* password) c_g_tls_password_get_description;
	GTlsPasswordFlags function(GTlsPassword* password) c_g_tls_password_get_flags;
	char* function(GTlsPassword* password, size_t* length) c_g_tls_password_get_value;
	const(char)* function(GTlsPassword* password) c_g_tls_password_get_warning;
	void function(GTlsPassword* password, const(char)* description) c_g_tls_password_set_description;
	void function(GTlsPassword* password, GTlsPasswordFlags flags) c_g_tls_password_set_flags;
	void function(GTlsPassword* password, char* value, ptrdiff_t length) c_g_tls_password_set_value;
	void function(GTlsPassword* password, char* value, ptrdiff_t length, GDestroyNotify destroy) c_g_tls_password_set_value_full;
	void function(GTlsPassword* password, const(char)* warning) c_g_tls_password_set_warning;

	// gio.TlsServerConnection

	GType function() c_g_tls_server_connection_get_type;
	GIOStream* function(GIOStream* baseIoStream, GTlsCertificate* certificate, GError** err) c_g_tls_server_connection_new;

	// gio.UnixConnection

	GType function() c_g_unix_connection_get_type;
	GCredentials* function(GUnixConnection* connection, GCancellable* cancellable, GError** err) c_g_unix_connection_receive_credentials;
	void function(GUnixConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_unix_connection_receive_credentials_async;
	GCredentials* function(GUnixConnection* connection, GAsyncResult* result, GError** err) c_g_unix_connection_receive_credentials_finish;
	int function(GUnixConnection* connection, GCancellable* cancellable, GError** err) c_g_unix_connection_receive_fd;
	int function(GUnixConnection* connection, GCancellable* cancellable, GError** err) c_g_unix_connection_send_credentials;
	void function(GUnixConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_unix_connection_send_credentials_async;
	int function(GUnixConnection* connection, GAsyncResult* result, GError** err) c_g_unix_connection_send_credentials_finish;
	int function(GUnixConnection* connection, int fd, GCancellable* cancellable, GError** err) c_g_unix_connection_send_fd;

	// gio.UnixCredentialsMessage

	GType function() c_g_unix_credentials_message_get_type;
	GSocketControlMessage* function() c_g_unix_credentials_message_new;
	GSocketControlMessage* function(GCredentials* credentials) c_g_unix_credentials_message_new_with_credentials;
	int function() c_g_unix_credentials_message_is_supported;
	GCredentials* function(GUnixCredentialsMessage* message) c_g_unix_credentials_message_get_credentials;

	// gio.UnixFDList

	GType function() c_g_unix_fd_list_get_type;
	GUnixFDList* function() c_g_unix_fd_list_new;
	GUnixFDList* function(int* fds, int nFds) c_g_unix_fd_list_new_from_array;
	int function(GUnixFDList* list, int fd, GError** err) c_g_unix_fd_list_append;
	int function(GUnixFDList* list, int index, GError** err) c_g_unix_fd_list_get;
	int function(GUnixFDList* list) c_g_unix_fd_list_get_length;
	int* function(GUnixFDList* list, int* length) c_g_unix_fd_list_peek_fds;
	int* function(GUnixFDList* list, int* length) c_g_unix_fd_list_steal_fds;

	// gio.UnixFDMessage

	GType function() c_g_unix_fd_message_get_type;
	GSocketControlMessage* function() c_g_unix_fd_message_new;
	GSocketControlMessage* function(GUnixFDList* fdList) c_g_unix_fd_message_new_with_fd_list;
	int function(GUnixFDMessage* message, int fd, GError** err) c_g_unix_fd_message_append_fd;
	GUnixFDList* function(GUnixFDMessage* message) c_g_unix_fd_message_get_fd_list;
	int* function(GUnixFDMessage* message, int* length) c_g_unix_fd_message_steal_fds;

	// gio.UnixInputStream

	GType function() c_g_unix_input_stream_get_type;
	GInputStream* function(int fd, int closeFd) c_g_unix_input_stream_new;
	int function(GUnixInputStream* stream) c_g_unix_input_stream_get_close_fd;
	int function(GUnixInputStream* stream) c_g_unix_input_stream_get_fd;
	void function(GUnixInputStream* stream, int closeFd) c_g_unix_input_stream_set_close_fd;

	// gio.UnixMountEntry

	GType function() c_g_unix_mount_entry_get_type;
	int function(char* mountPath) c_g_unix_is_mount_path_system_internal;
	GUnixMountEntry* function(char* mountPath, ulong* timeRead) c_g_unix_mount_at;
	int function(GUnixMountEntry* mount1, GUnixMountEntry* mount2) c_g_unix_mount_compare;
	void function(GUnixMountEntry* mountEntry) c_g_unix_mount_free;
	char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_device_path;
	const(char)* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_fs_type;
	char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_mount_path;
	int function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_can_eject;
	GIcon* function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_icon;
	char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_name;
	int function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_should_display;
	GIcon* function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_symbolic_icon;
	int function(GUnixMountEntry* mountEntry) c_g_unix_mount_is_readonly;
	int function(GUnixMountEntry* mountEntry) c_g_unix_mount_is_system_internal;
	int function(ulong time) c_g_unix_mount_points_changed_since;
	GList* function(ulong* timeRead) c_g_unix_mount_points_get;
	int function(ulong time) c_g_unix_mounts_changed_since;
	GList* function(ulong* timeRead) c_g_unix_mounts_get;
	GUnixMountEntry* function(GUnixMountEntry* mountEntry) c_g_unix_mount_copy;
	GUnixMountEntry* function(char* filePath, ulong* timeRead) c_g_unix_mount_for;
	const(char)* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_options;
	const(char)* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_root_path;

	// gio.UnixMountMonitor

	GType function() c_g_unix_mount_monitor_get_type;
	GUnixMountMonitor* function() c_g_unix_mount_monitor_new;
	GUnixMountMonitor* function() c_g_unix_mount_monitor_get;
	void function(GUnixMountMonitor* mountMonitor, int limitMsec) c_g_unix_mount_monitor_set_rate_limit;

	// gio.UnixMountPoint

	GType function() c_g_unix_mount_point_get_type;
	int function(GUnixMountPoint* mount1, GUnixMountPoint* mount2) c_g_unix_mount_point_compare;
	GUnixMountPoint* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_copy;
	void function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_free;
	char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_device_path;
	const(char)* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_fs_type;
	char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_mount_path;
	const(char)* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_options;
	int function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_can_eject;
	GIcon* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_icon;
	char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_name;
	GIcon* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_symbolic_icon;
	int function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_is_loopback;
	int function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_is_readonly;
	int function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_is_user_mountable;
	GUnixMountPoint* function(char* mountPath, ulong* timeRead) c_g_unix_mount_point_at;

	// gio.UnixOutputStream

	GType function() c_g_unix_output_stream_get_type;
	GOutputStream* function(int fd, int closeFd) c_g_unix_output_stream_new;
	int function(GUnixOutputStream* stream) c_g_unix_output_stream_get_close_fd;
	int function(GUnixOutputStream* stream) c_g_unix_output_stream_get_fd;
	void function(GUnixOutputStream* stream, int closeFd) c_g_unix_output_stream_set_close_fd;

	// gio.UnixSocketAddress

	GType function() c_g_unix_socket_address_get_type;
	GSocketAddress* function(const(char)* path) c_g_unix_socket_address_new;
	GSocketAddress* function(char* path, int pathLen) c_g_unix_socket_address_new_abstract;
	GSocketAddress* function(char* path, int pathLen, GUnixSocketAddressType type) c_g_unix_socket_address_new_with_type;
	int function() c_g_unix_socket_address_abstract_names_supported;
	GUnixSocketAddressType function(GUnixSocketAddress* address) c_g_unix_socket_address_get_address_type;
	int function(GUnixSocketAddress* address) c_g_unix_socket_address_get_is_abstract;
	const(char)* function(GUnixSocketAddress* address) c_g_unix_socket_address_get_path;
	size_t function(GUnixSocketAddress* address) c_g_unix_socket_address_get_path_len;

	// gio.Vfs

	GType function() c_g_vfs_get_type;
	GVfs* function() c_g_vfs_get_default;
	GVfs* function() c_g_vfs_get_local;
	GFile* function(GVfs* vfs, const(char)* path) c_g_vfs_get_file_for_path;
	GFile* function(GVfs* vfs, const(char)* uri) c_g_vfs_get_file_for_uri;
	char** function(GVfs* vfs) c_g_vfs_get_supported_uri_schemes;
	int function(GVfs* vfs) c_g_vfs_is_active;
	GFile* function(GVfs* vfs, const(char)* parseName) c_g_vfs_parse_name;
	int function(GVfs* vfs, const(char)* scheme, GVfsFileLookupFunc uriFunc, void* uriData, GDestroyNotify uriDestroy, GVfsFileLookupFunc parseNameFunc, void* parseNameData, GDestroyNotify parseNameDestroy) c_g_vfs_register_uri_scheme;
	int function(GVfs* vfs, const(char)* scheme) c_g_vfs_unregister_uri_scheme;

	// gio.Volume

	GType function() c_g_volume_get_type;
	int function(GVolume* volume) c_g_volume_can_eject;
	int function(GVolume* volume) c_g_volume_can_mount;
	void function(GVolume* volume, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_volume_eject;
	int function(GVolume* volume, GAsyncResult* result, GError** err) c_g_volume_eject_finish;
	void function(GVolume* volume, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_volume_eject_with_operation;
	int function(GVolume* volume, GAsyncResult* result, GError** err) c_g_volume_eject_with_operation_finish;
	char** function(GVolume* volume) c_g_volume_enumerate_identifiers;
	GFile* function(GVolume* volume) c_g_volume_get_activation_root;
	GDrive* function(GVolume* volume) c_g_volume_get_drive;
	GIcon* function(GVolume* volume) c_g_volume_get_icon;
	char* function(GVolume* volume, const(char)* kind) c_g_volume_get_identifier;
	GMount* function(GVolume* volume) c_g_volume_get_mount;
	char* function(GVolume* volume) c_g_volume_get_name;
	const(char)* function(GVolume* volume) c_g_volume_get_sort_key;
	GIcon* function(GVolume* volume) c_g_volume_get_symbolic_icon;
	char* function(GVolume* volume) c_g_volume_get_uuid;
	void function(GVolume* volume, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_volume_mount;
	int function(GVolume* volume, GAsyncResult* result, GError** err) c_g_volume_mount_finish;
	int function(GVolume* volume) c_g_volume_should_automount;

	// gio.VolumeMonitor

	GType function() c_g_volume_monitor_get_type;
	GVolume* function(GMount* mount) c_g_volume_monitor_adopt_orphan_mount;
	GVolumeMonitor* function() c_g_volume_monitor_get;
	GList* function(GVolumeMonitor* volumeMonitor) c_g_volume_monitor_get_connected_drives;
	GMount* function(GVolumeMonitor* volumeMonitor, const(char)* uuid) c_g_volume_monitor_get_mount_for_uuid;
	GList* function(GVolumeMonitor* volumeMonitor) c_g_volume_monitor_get_mounts;
	GVolume* function(GVolumeMonitor* volumeMonitor, const(char)* uuid) c_g_volume_monitor_get_volume_for_uuid;
	GList* function(GVolumeMonitor* volumeMonitor) c_g_volume_monitor_get_volumes;

	// gio.ZlibCompressor

	GType function() c_g_zlib_compressor_get_type;
	GZlibCompressor* function(GZlibCompressorFormat format, int level) c_g_zlib_compressor_new;
	GFileInfo* function(GZlibCompressor* compressor) c_g_zlib_compressor_get_file_info;
	void function(GZlibCompressor* compressor, GFileInfo* fileInfo) c_g_zlib_compressor_set_file_info;

	// gio.ZlibDecompressor

	GType function() c_g_zlib_decompressor_get_type;
	GZlibDecompressor* function(GZlibCompressorFormat format) c_g_zlib_decompressor_new;
	GFileInfo* function(GZlibDecompressor* decompressor) c_g_zlib_decompressor_get_file_info;

	// gio.PollableUtils

	GSource* function(GObject* pollableStream) c_g_pollable_source_new;
	GSource* function(void* pollableStream, GSource* childSource, GCancellable* cancellable) c_g_pollable_source_new_full;
	ptrdiff_t function(GInputStream* stream, void* buffer, size_t count, int blocking, GCancellable* cancellable, GError** err) c_g_pollable_stream_read;
	ptrdiff_t function(GOutputStream* stream, void* buffer, size_t count, int blocking, GCancellable* cancellable, GError** err) c_g_pollable_stream_write;
	int function(GOutputStream* stream, void* buffer, size_t count, int blocking, size_t* bytesWritten, GCancellable* cancellable, GError** err) c_g_pollable_stream_write_all;

	// gio.DBusNames

	uint function(GBusType busType, const(char)* name, GBusNameOwnerFlags flags, GBusAcquiredCallback busAcquiredHandler, GBusNameAcquiredCallback nameAcquiredHandler, GBusNameLostCallback nameLostHandler, void* userData, GDestroyNotify userDataFreeFunc) c_g_bus_own_name;
	uint function(GDBusConnection* connection, const(char)* name, GBusNameOwnerFlags flags, GBusNameAcquiredCallback nameAcquiredHandler, GBusNameLostCallback nameLostHandler, void* userData, GDestroyNotify userDataFreeFunc) c_g_bus_own_name_on_connection;
	uint function(GDBusConnection* connection, const(char)* name, GBusNameOwnerFlags flags, GClosure* nameAcquiredClosure, GClosure* nameLostClosure) c_g_bus_own_name_on_connection_with_closures;
	uint function(GBusType busType, const(char)* name, GBusNameOwnerFlags flags, GClosure* busAcquiredClosure, GClosure* nameAcquiredClosure, GClosure* nameLostClosure) c_g_bus_own_name_with_closures;
	void function(uint ownerId) c_g_bus_unown_name;
	void function(uint watcherId) c_g_bus_unwatch_name;
	uint function(GBusType busType, const(char)* name, GBusNameWatcherFlags flags, GBusNameAppearedCallback nameAppearedHandler, GBusNameVanishedCallback nameVanishedHandler, void* userData, GDestroyNotify userDataFreeFunc) c_g_bus_watch_name;
	uint function(GDBusConnection* connection, const(char)* name, GBusNameWatcherFlags flags, GBusNameAppearedCallback nameAppearedHandler, GBusNameVanishedCallback nameVanishedHandler, void* userData, GDestroyNotify userDataFreeFunc) c_g_bus_watch_name_on_connection;
	uint function(GDBusConnection* connection, const(char)* name, GBusNameWatcherFlags flags, GClosure* nameAppearedClosure, GClosure* nameVanishedClosure) c_g_bus_watch_name_on_connection_with_closures;
	uint function(GBusType busType, const(char)* name, GBusNameWatcherFlags flags, GClosure* nameAppearedClosure, GClosure* nameVanishedClosure) c_g_bus_watch_name_with_closures;

	// gio.ContentType

	int function(const(char)* type) c_g_content_type_can_be_executable;
	int function(const(char)* type1, const(char)* type2) c_g_content_type_equals;
	char* function(const(char)* mimeType) c_g_content_type_from_mime_type;
	char* function(const(char)* type) c_g_content_type_get_description;
	char* function(const(char)* type) c_g_content_type_get_generic_icon_name;
	GIcon* function(const(char)* type) c_g_content_type_get_icon;
	char* function(const(char)* type) c_g_content_type_get_mime_type;
	GIcon* function(const(char)* type) c_g_content_type_get_symbolic_icon;
	char* function(char* filename, char* data, size_t dataSize, int* resultUncertain) c_g_content_type_guess;
	char** function(GFile* root) c_g_content_type_guess_for_tree;
	int function(const(char)* type, const(char)* supertype) c_g_content_type_is_a;
	int function(const(char)* type) c_g_content_type_is_unknown;
	GList* function() c_g_content_types_get_registered;
	int function(const(char)* type, const(char)* mimeType) c_g_content_type_is_mime_type;
	char** function() c_g_content_type_get_mime_dirs;
	void function(char** dirs) c_g_content_type_set_mime_dirs;

	// gio.DBusError

	char* function(GError* error) c_g_dbus_error_encode_gerror;
	char* function(GError* error) c_g_dbus_error_get_remote_error;
	int function(GError* error) c_g_dbus_error_is_remote_error;
	GError* function(const(char)* dbusErrorName, const(char)* dbusErrorMessage) c_g_dbus_error_new_for_dbus_error;
	GQuark function() c_g_dbus_error_quark;
	int function(GQuark errorDomain, int errorCode, const(char)* dbusErrorName) c_g_dbus_error_register_error;
	void function(const(char)* errorDomainQuarkName, size_t* quarkVolatile, GDBusErrorEntry* entries, uint numEntries) c_g_dbus_error_register_error_domain;
	int function(GError* error) c_g_dbus_error_strip_remote_error;
	int function(GQuark errorDomain, int errorCode, const(char)* dbusErrorName) c_g_dbus_error_unregister_error;

	// gio.DBusUtilities

	char* function(const(char)* string_) c_g_dbus_address_escape_value;
	char* function(GBusType busType, GCancellable* cancellable, GError** err) c_g_dbus_address_get_for_bus_sync;
	void function(const(char)* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_address_get_stream;
	GIOStream* function(GAsyncResult* res, char** outGuid, GError** err) c_g_dbus_address_get_stream_finish;
	GIOStream* function(const(char)* address, char** outGuid, GCancellable* cancellable, GError** err) c_g_dbus_address_get_stream_sync;
	char* function() c_g_dbus_generate_guid;
	GVariant* function(GValue* gvalue, GVariantType* type) c_g_dbus_gvalue_to_gvariant;
	void function(GVariant* value, GValue* outGvalue) c_g_dbus_gvariant_to_gvalue;
	int function(const(char)* string_) c_g_dbus_is_address;
	int function(const(char)* string_) c_g_dbus_is_guid;
	int function(const(char)* string_) c_g_dbus_is_interface_name;
	int function(const(char)* string_) c_g_dbus_is_member_name;
	int function(const(char)* string_) c_g_dbus_is_name;
	int function(const(char)* string_, GError** err) c_g_dbus_is_supported_address;
	int function(const(char)* string_) c_g_dbus_is_unique_name;

	// gio.ErrorGIO

	GIOErrorEnum function(int errNo) c_g_io_error_from_errno;
	GQuark function() c_g_io_error_quark;
}


// gio.Action

alias c_g_action_get_type g_action_get_type;
alias c_g_action_name_is_valid g_action_name_is_valid;
alias c_g_action_parse_detailed_name g_action_parse_detailed_name;
alias c_g_action_print_detailed_name g_action_print_detailed_name;
alias c_g_action_activate g_action_activate;
alias c_g_action_change_state g_action_change_state;
alias c_g_action_get_enabled g_action_get_enabled;
alias c_g_action_get_name g_action_get_name;
alias c_g_action_get_parameter_type g_action_get_parameter_type;
alias c_g_action_get_state g_action_get_state;
alias c_g_action_get_state_hint g_action_get_state_hint;
alias c_g_action_get_state_type g_action_get_state_type;

// gio.ActionGroup

alias c_g_action_group_get_type g_action_group_get_type;
alias c_g_action_group_action_added g_action_group_action_added;
alias c_g_action_group_action_enabled_changed g_action_group_action_enabled_changed;
alias c_g_action_group_action_removed g_action_group_action_removed;
alias c_g_action_group_action_state_changed g_action_group_action_state_changed;
alias c_g_action_group_activate_action g_action_group_activate_action;
alias c_g_action_group_change_action_state g_action_group_change_action_state;
alias c_g_action_group_get_action_enabled g_action_group_get_action_enabled;
alias c_g_action_group_get_action_parameter_type g_action_group_get_action_parameter_type;
alias c_g_action_group_get_action_state g_action_group_get_action_state;
alias c_g_action_group_get_action_state_hint g_action_group_get_action_state_hint;
alias c_g_action_group_get_action_state_type g_action_group_get_action_state_type;
alias c_g_action_group_has_action g_action_group_has_action;
alias c_g_action_group_list_actions g_action_group_list_actions;
alias c_g_action_group_query_action g_action_group_query_action;

// gio.ActionMap

alias c_g_action_map_get_type g_action_map_get_type;
alias c_g_action_map_add_action g_action_map_add_action;
alias c_g_action_map_add_action_entries g_action_map_add_action_entries;
alias c_g_action_map_lookup_action g_action_map_lookup_action;
alias c_g_action_map_remove_action g_action_map_remove_action;

// gio.AppInfo

alias c_g_app_info_get_type g_app_info_get_type;
alias c_g_app_info_create_from_commandline g_app_info_create_from_commandline;
alias c_g_app_info_get_all g_app_info_get_all;
alias c_g_app_info_get_all_for_type g_app_info_get_all_for_type;
alias c_g_app_info_get_default_for_type g_app_info_get_default_for_type;
alias c_g_app_info_get_default_for_uri_scheme g_app_info_get_default_for_uri_scheme;
alias c_g_app_info_get_fallback_for_type g_app_info_get_fallback_for_type;
alias c_g_app_info_get_recommended_for_type g_app_info_get_recommended_for_type;
alias c_g_app_info_launch_default_for_uri g_app_info_launch_default_for_uri;
alias c_g_app_info_launch_default_for_uri_async g_app_info_launch_default_for_uri_async;
alias c_g_app_info_launch_default_for_uri_finish g_app_info_launch_default_for_uri_finish;
alias c_g_app_info_reset_type_associations g_app_info_reset_type_associations;
alias c_g_app_info_add_supports_type g_app_info_add_supports_type;
alias c_g_app_info_can_delete g_app_info_can_delete;
alias c_g_app_info_can_remove_supports_type g_app_info_can_remove_supports_type;
alias c_g_app_info_delete g_app_info_delete;
alias c_g_app_info_dup g_app_info_dup;
alias c_g_app_info_equal g_app_info_equal;
alias c_g_app_info_get_commandline g_app_info_get_commandline;
alias c_g_app_info_get_description g_app_info_get_description;
alias c_g_app_info_get_display_name g_app_info_get_display_name;
alias c_g_app_info_get_executable g_app_info_get_executable;
alias c_g_app_info_get_icon g_app_info_get_icon;
alias c_g_app_info_get_id g_app_info_get_id;
alias c_g_app_info_get_name g_app_info_get_name;
alias c_g_app_info_get_supported_types g_app_info_get_supported_types;
alias c_g_app_info_launch g_app_info_launch;
alias c_g_app_info_launch_uris g_app_info_launch_uris;
alias c_g_app_info_launch_uris_async g_app_info_launch_uris_async;
alias c_g_app_info_launch_uris_finish g_app_info_launch_uris_finish;
alias c_g_app_info_remove_supports_type g_app_info_remove_supports_type;
alias c_g_app_info_set_as_default_for_extension g_app_info_set_as_default_for_extension;
alias c_g_app_info_set_as_default_for_type g_app_info_set_as_default_for_type;
alias c_g_app_info_set_as_last_used_for_type g_app_info_set_as_last_used_for_type;
alias c_g_app_info_should_show g_app_info_should_show;
alias c_g_app_info_supports_files g_app_info_supports_files;
alias c_g_app_info_supports_uris g_app_info_supports_uris;

// gio.AppInfoMonitor

alias c_g_app_info_monitor_get_type g_app_info_monitor_get_type;
alias c_g_app_info_monitor_get g_app_info_monitor_get;

// gio.AppLaunchContext

alias c_g_app_launch_context_get_type g_app_launch_context_get_type;
alias c_g_app_launch_context_new g_app_launch_context_new;
alias c_g_app_launch_context_get_display g_app_launch_context_get_display;
alias c_g_app_launch_context_get_environment g_app_launch_context_get_environment;
alias c_g_app_launch_context_get_startup_notify_id g_app_launch_context_get_startup_notify_id;
alias c_g_app_launch_context_launch_failed g_app_launch_context_launch_failed;
alias c_g_app_launch_context_setenv g_app_launch_context_setenv;
alias c_g_app_launch_context_unsetenv g_app_launch_context_unsetenv;

// gio.Application

alias c_g_application_get_type g_application_get_type;
alias c_g_application_new g_application_new;
alias c_g_application_get_default g_application_get_default;
alias c_g_application_id_is_valid g_application_id_is_valid;
alias c_g_application_activate g_application_activate;
alias c_g_application_add_main_option g_application_add_main_option;
alias c_g_application_add_main_option_entries g_application_add_main_option_entries;
alias c_g_application_add_option_group g_application_add_option_group;
alias c_g_application_bind_busy_property g_application_bind_busy_property;
alias c_g_application_get_application_id g_application_get_application_id;
alias c_g_application_get_dbus_connection g_application_get_dbus_connection;
alias c_g_application_get_dbus_object_path g_application_get_dbus_object_path;
alias c_g_application_get_flags g_application_get_flags;
alias c_g_application_get_inactivity_timeout g_application_get_inactivity_timeout;
alias c_g_application_get_is_busy g_application_get_is_busy;
alias c_g_application_get_is_registered g_application_get_is_registered;
alias c_g_application_get_is_remote g_application_get_is_remote;
alias c_g_application_get_resource_base_path g_application_get_resource_base_path;
alias c_g_application_hold g_application_hold;
alias c_g_application_mark_busy g_application_mark_busy;
alias c_g_application_open g_application_open;
alias c_g_application_quit g_application_quit;
alias c_g_application_register g_application_register;
alias c_g_application_release g_application_release;
alias c_g_application_run g_application_run;
alias c_g_application_send_notification g_application_send_notification;
alias c_g_application_set_action_group g_application_set_action_group;
alias c_g_application_set_application_id g_application_set_application_id;
alias c_g_application_set_default g_application_set_default;
alias c_g_application_set_flags g_application_set_flags;
alias c_g_application_set_inactivity_timeout g_application_set_inactivity_timeout;
alias c_g_application_set_option_context_description g_application_set_option_context_description;
alias c_g_application_set_option_context_parameter_string g_application_set_option_context_parameter_string;
alias c_g_application_set_option_context_summary g_application_set_option_context_summary;
alias c_g_application_set_resource_base_path g_application_set_resource_base_path;
alias c_g_application_unbind_busy_property g_application_unbind_busy_property;
alias c_g_application_unmark_busy g_application_unmark_busy;
alias c_g_application_withdraw_notification g_application_withdraw_notification;

// gio.ApplicationCommandLine

alias c_g_application_command_line_get_type g_application_command_line_get_type;
alias c_g_application_command_line_create_file_for_arg g_application_command_line_create_file_for_arg;
alias c_g_application_command_line_get_arguments g_application_command_line_get_arguments;
alias c_g_application_command_line_get_cwd g_application_command_line_get_cwd;
alias c_g_application_command_line_get_environ g_application_command_line_get_environ;
alias c_g_application_command_line_get_exit_status g_application_command_line_get_exit_status;
alias c_g_application_command_line_get_is_remote g_application_command_line_get_is_remote;
alias c_g_application_command_line_get_options_dict g_application_command_line_get_options_dict;
alias c_g_application_command_line_get_platform_data g_application_command_line_get_platform_data;
alias c_g_application_command_line_get_stdin g_application_command_line_get_stdin;
alias c_g_application_command_line_getenv g_application_command_line_getenv;
alias c_g_application_command_line_print g_application_command_line_print;
alias c_g_application_command_line_printerr g_application_command_line_printerr;
alias c_g_application_command_line_set_exit_status g_application_command_line_set_exit_status;

// gio.AsyncInitable

alias c_g_async_initable_get_type g_async_initable_get_type;
alias c_g_async_initable_new_async g_async_initable_new_async;
alias c_g_async_initable_new_valist_async g_async_initable_new_valist_async;
alias c_g_async_initable_newv_async g_async_initable_newv_async;
alias c_g_async_initable_init_async g_async_initable_init_async;
alias c_g_async_initable_init_finish g_async_initable_init_finish;
alias c_g_async_initable_new_finish g_async_initable_new_finish;

// gio.AsyncResult

alias c_g_async_result_get_type g_async_result_get_type;
alias c_g_async_result_get_source_object g_async_result_get_source_object;
alias c_g_async_result_get_user_data g_async_result_get_user_data;
alias c_g_async_result_is_tagged g_async_result_is_tagged;
alias c_g_async_result_legacy_propagate_error g_async_result_legacy_propagate_error;

// gio.BufferedInputStream

alias c_g_buffered_input_stream_get_type g_buffered_input_stream_get_type;
alias c_g_buffered_input_stream_new g_buffered_input_stream_new;
alias c_g_buffered_input_stream_new_sized g_buffered_input_stream_new_sized;
alias c_g_buffered_input_stream_fill g_buffered_input_stream_fill;
alias c_g_buffered_input_stream_fill_async g_buffered_input_stream_fill_async;
alias c_g_buffered_input_stream_fill_finish g_buffered_input_stream_fill_finish;
alias c_g_buffered_input_stream_get_available g_buffered_input_stream_get_available;
alias c_g_buffered_input_stream_get_buffer_size g_buffered_input_stream_get_buffer_size;
alias c_g_buffered_input_stream_peek g_buffered_input_stream_peek;
alias c_g_buffered_input_stream_peek_buffer g_buffered_input_stream_peek_buffer;
alias c_g_buffered_input_stream_read_byte g_buffered_input_stream_read_byte;
alias c_g_buffered_input_stream_set_buffer_size g_buffered_input_stream_set_buffer_size;

// gio.BufferedOutputStream

alias c_g_buffered_output_stream_get_type g_buffered_output_stream_get_type;
alias c_g_buffered_output_stream_new g_buffered_output_stream_new;
alias c_g_buffered_output_stream_new_sized g_buffered_output_stream_new_sized;
alias c_g_buffered_output_stream_get_auto_grow g_buffered_output_stream_get_auto_grow;
alias c_g_buffered_output_stream_get_buffer_size g_buffered_output_stream_get_buffer_size;
alias c_g_buffered_output_stream_set_auto_grow g_buffered_output_stream_set_auto_grow;
alias c_g_buffered_output_stream_set_buffer_size g_buffered_output_stream_set_buffer_size;

// gio.BytesIcon

alias c_g_bytes_icon_get_type g_bytes_icon_get_type;
alias c_g_bytes_icon_new g_bytes_icon_new;
alias c_g_bytes_icon_get_bytes g_bytes_icon_get_bytes;

// gio.Cancellable

alias c_g_cancellable_get_type g_cancellable_get_type;
alias c_g_cancellable_new g_cancellable_new;
alias c_g_cancellable_get_current g_cancellable_get_current;
alias c_g_cancellable_cancel g_cancellable_cancel;
alias c_g_cancellable_connect g_cancellable_connect;
alias c_g_cancellable_disconnect g_cancellable_disconnect;
alias c_g_cancellable_get_fd g_cancellable_get_fd;
alias c_g_cancellable_is_cancelled g_cancellable_is_cancelled;
alias c_g_cancellable_make_pollfd g_cancellable_make_pollfd;
alias c_g_cancellable_pop_current g_cancellable_pop_current;
alias c_g_cancellable_push_current g_cancellable_push_current;
alias c_g_cancellable_release_fd g_cancellable_release_fd;
alias c_g_cancellable_reset g_cancellable_reset;
alias c_g_cancellable_set_error_if_cancelled g_cancellable_set_error_if_cancelled;
alias c_g_cancellable_source_new g_cancellable_source_new;

// gio.CharsetConverter

alias c_g_charset_converter_get_type g_charset_converter_get_type;
alias c_g_charset_converter_new g_charset_converter_new;
alias c_g_charset_converter_get_num_fallbacks g_charset_converter_get_num_fallbacks;
alias c_g_charset_converter_get_use_fallback g_charset_converter_get_use_fallback;
alias c_g_charset_converter_set_use_fallback g_charset_converter_set_use_fallback;

// gio.Converter

alias c_g_converter_get_type g_converter_get_type;
alias c_g_converter_convert g_converter_convert;
alias c_g_converter_reset g_converter_reset;

// gio.ConverterInputStream

alias c_g_converter_input_stream_get_type g_converter_input_stream_get_type;
alias c_g_converter_input_stream_new g_converter_input_stream_new;
alias c_g_converter_input_stream_get_converter g_converter_input_stream_get_converter;

// gio.ConverterOutputStream

alias c_g_converter_output_stream_get_type g_converter_output_stream_get_type;
alias c_g_converter_output_stream_new g_converter_output_stream_new;
alias c_g_converter_output_stream_get_converter g_converter_output_stream_get_converter;

// gio.Credentials

alias c_g_credentials_get_type g_credentials_get_type;
alias c_g_credentials_new g_credentials_new;
alias c_g_credentials_get_native g_credentials_get_native;
alias c_g_credentials_get_unix_pid g_credentials_get_unix_pid;
alias c_g_credentials_get_unix_user g_credentials_get_unix_user;
alias c_g_credentials_is_same_user g_credentials_is_same_user;
alias c_g_credentials_set_native g_credentials_set_native;
alias c_g_credentials_set_unix_user g_credentials_set_unix_user;
alias c_g_credentials_to_string g_credentials_to_string;

// gio.DBusActionGroup

alias c_g_dbus_action_group_get_type g_dbus_action_group_get_type;
alias c_g_dbus_action_group_get g_dbus_action_group_get;

// gio.DBusAnnotationInfo

alias c_g_dbus_annotation_info_get_type g_dbus_annotation_info_get_type;
alias c_g_dbus_annotation_info_ref g_dbus_annotation_info_ref;
alias c_g_dbus_annotation_info_unref g_dbus_annotation_info_unref;
alias c_g_dbus_annotation_info_lookup g_dbus_annotation_info_lookup;

// gio.DBusArgInfo

alias c_g_dbus_arg_info_get_type g_dbus_arg_info_get_type;
alias c_g_dbus_arg_info_ref g_dbus_arg_info_ref;
alias c_g_dbus_arg_info_unref g_dbus_arg_info_unref;

// gio.DBusAuthObserver

alias c_g_dbus_auth_observer_get_type g_dbus_auth_observer_get_type;
alias c_g_dbus_auth_observer_new g_dbus_auth_observer_new;
alias c_g_dbus_auth_observer_allow_mechanism g_dbus_auth_observer_allow_mechanism;
alias c_g_dbus_auth_observer_authorize_authenticated_peer g_dbus_auth_observer_authorize_authenticated_peer;

// gio.DBusConnection

alias c_g_dbus_connection_get_type g_dbus_connection_get_type;
alias c_g_dbus_connection_new_finish g_dbus_connection_new_finish;
alias c_g_dbus_connection_new_for_address_finish g_dbus_connection_new_for_address_finish;
alias c_g_dbus_connection_new_for_address_sync g_dbus_connection_new_for_address_sync;
alias c_g_dbus_connection_new_sync g_dbus_connection_new_sync;
alias c_g_dbus_connection_new g_dbus_connection_new;
alias c_g_dbus_connection_new_for_address g_dbus_connection_new_for_address;
alias c_g_dbus_connection_add_filter g_dbus_connection_add_filter;
alias c_g_dbus_connection_call g_dbus_connection_call;
alias c_g_dbus_connection_call_finish g_dbus_connection_call_finish;
alias c_g_dbus_connection_call_sync g_dbus_connection_call_sync;
alias c_g_dbus_connection_call_with_unix_fd_list g_dbus_connection_call_with_unix_fd_list;
alias c_g_dbus_connection_call_with_unix_fd_list_finish g_dbus_connection_call_with_unix_fd_list_finish;
alias c_g_dbus_connection_call_with_unix_fd_list_sync g_dbus_connection_call_with_unix_fd_list_sync;
alias c_g_dbus_connection_close g_dbus_connection_close;
alias c_g_dbus_connection_close_finish g_dbus_connection_close_finish;
alias c_g_dbus_connection_close_sync g_dbus_connection_close_sync;
alias c_g_dbus_connection_emit_signal g_dbus_connection_emit_signal;
alias c_g_dbus_connection_export_action_group g_dbus_connection_export_action_group;
alias c_g_dbus_connection_export_menu_model g_dbus_connection_export_menu_model;
alias c_g_dbus_connection_flush g_dbus_connection_flush;
alias c_g_dbus_connection_flush_finish g_dbus_connection_flush_finish;
alias c_g_dbus_connection_flush_sync g_dbus_connection_flush_sync;
alias c_g_dbus_connection_get_capabilities g_dbus_connection_get_capabilities;
alias c_g_dbus_connection_get_exit_on_close g_dbus_connection_get_exit_on_close;
alias c_g_dbus_connection_get_flags g_dbus_connection_get_flags;
alias c_g_dbus_connection_get_guid g_dbus_connection_get_guid;
alias c_g_dbus_connection_get_last_serial g_dbus_connection_get_last_serial;
alias c_g_dbus_connection_get_peer_credentials g_dbus_connection_get_peer_credentials;
alias c_g_dbus_connection_get_stream g_dbus_connection_get_stream;
alias c_g_dbus_connection_get_unique_name g_dbus_connection_get_unique_name;
alias c_g_dbus_connection_is_closed g_dbus_connection_is_closed;
alias c_g_dbus_connection_register_object g_dbus_connection_register_object;
alias c_g_dbus_connection_register_object_with_closures g_dbus_connection_register_object_with_closures;
alias c_g_dbus_connection_register_subtree g_dbus_connection_register_subtree;
alias c_g_dbus_connection_remove_filter g_dbus_connection_remove_filter;
alias c_g_dbus_connection_send_message g_dbus_connection_send_message;
alias c_g_dbus_connection_send_message_with_reply g_dbus_connection_send_message_with_reply;
alias c_g_dbus_connection_send_message_with_reply_finish g_dbus_connection_send_message_with_reply_finish;
alias c_g_dbus_connection_send_message_with_reply_sync g_dbus_connection_send_message_with_reply_sync;
alias c_g_dbus_connection_set_exit_on_close g_dbus_connection_set_exit_on_close;
alias c_g_dbus_connection_signal_subscribe g_dbus_connection_signal_subscribe;
alias c_g_dbus_connection_signal_unsubscribe g_dbus_connection_signal_unsubscribe;
alias c_g_dbus_connection_start_message_processing g_dbus_connection_start_message_processing;
alias c_g_dbus_connection_unexport_action_group g_dbus_connection_unexport_action_group;
alias c_g_dbus_connection_unexport_menu_model g_dbus_connection_unexport_menu_model;
alias c_g_dbus_connection_unregister_object g_dbus_connection_unregister_object;
alias c_g_dbus_connection_unregister_subtree g_dbus_connection_unregister_subtree;
alias c_g_bus_get g_bus_get;
alias c_g_bus_get_finish g_bus_get_finish;
alias c_g_bus_get_sync g_bus_get_sync;

// gio.DBusInterface

alias c_g_dbus_interface_get_type g_dbus_interface_get_type;
alias c_g_dbus_interface_dup_object g_dbus_interface_dup_object;
alias c_g_dbus_interface_get_info g_dbus_interface_get_info;
alias c_g_dbus_interface_get_object g_dbus_interface_get_object;
alias c_g_dbus_interface_set_object g_dbus_interface_set_object;

// gio.DBusInterfaceInfo

alias c_g_dbus_interface_info_get_type g_dbus_interface_info_get_type;
alias c_g_dbus_interface_info_cache_build g_dbus_interface_info_cache_build;
alias c_g_dbus_interface_info_cache_release g_dbus_interface_info_cache_release;
alias c_g_dbus_interface_info_generate_xml g_dbus_interface_info_generate_xml;
alias c_g_dbus_interface_info_lookup_method g_dbus_interface_info_lookup_method;
alias c_g_dbus_interface_info_lookup_property g_dbus_interface_info_lookup_property;
alias c_g_dbus_interface_info_lookup_signal g_dbus_interface_info_lookup_signal;
alias c_g_dbus_interface_info_ref g_dbus_interface_info_ref;
alias c_g_dbus_interface_info_unref g_dbus_interface_info_unref;

// gio.DBusInterfaceSkeleton

alias c_g_dbus_interface_skeleton_get_type g_dbus_interface_skeleton_get_type;
alias c_g_dbus_interface_skeleton_export g_dbus_interface_skeleton_export;
alias c_g_dbus_interface_skeleton_flush g_dbus_interface_skeleton_flush;
alias c_g_dbus_interface_skeleton_get_connection g_dbus_interface_skeleton_get_connection;
alias c_g_dbus_interface_skeleton_get_connections g_dbus_interface_skeleton_get_connections;
alias c_g_dbus_interface_skeleton_get_flags g_dbus_interface_skeleton_get_flags;
alias c_g_dbus_interface_skeleton_get_info g_dbus_interface_skeleton_get_info;
alias c_g_dbus_interface_skeleton_get_object_path g_dbus_interface_skeleton_get_object_path;
alias c_g_dbus_interface_skeleton_get_properties g_dbus_interface_skeleton_get_properties;
alias c_g_dbus_interface_skeleton_get_vtable g_dbus_interface_skeleton_get_vtable;
alias c_g_dbus_interface_skeleton_has_connection g_dbus_interface_skeleton_has_connection;
alias c_g_dbus_interface_skeleton_set_flags g_dbus_interface_skeleton_set_flags;
alias c_g_dbus_interface_skeleton_unexport g_dbus_interface_skeleton_unexport;
alias c_g_dbus_interface_skeleton_unexport_from_connection g_dbus_interface_skeleton_unexport_from_connection;

// gio.DBusMenuModel

alias c_g_dbus_menu_model_get_type g_dbus_menu_model_get_type;
alias c_g_dbus_menu_model_get g_dbus_menu_model_get;

// gio.DBusMessage

alias c_g_dbus_message_get_type g_dbus_message_get_type;
alias c_g_dbus_message_new g_dbus_message_new;
alias c_g_dbus_message_new_from_blob g_dbus_message_new_from_blob;
alias c_g_dbus_message_new_method_call g_dbus_message_new_method_call;
alias c_g_dbus_message_new_signal g_dbus_message_new_signal;
alias c_g_dbus_message_bytes_needed g_dbus_message_bytes_needed;
alias c_g_dbus_message_copy g_dbus_message_copy;
alias c_g_dbus_message_get_arg0 g_dbus_message_get_arg0;
alias c_g_dbus_message_get_body g_dbus_message_get_body;
alias c_g_dbus_message_get_byte_order g_dbus_message_get_byte_order;
alias c_g_dbus_message_get_destination g_dbus_message_get_destination;
alias c_g_dbus_message_get_error_name g_dbus_message_get_error_name;
alias c_g_dbus_message_get_flags g_dbus_message_get_flags;
alias c_g_dbus_message_get_header g_dbus_message_get_header;
alias c_g_dbus_message_get_header_fields g_dbus_message_get_header_fields;
alias c_g_dbus_message_get_interface g_dbus_message_get_interface;
alias c_g_dbus_message_get_locked g_dbus_message_get_locked;
alias c_g_dbus_message_get_member g_dbus_message_get_member;
alias c_g_dbus_message_get_message_type g_dbus_message_get_message_type;
alias c_g_dbus_message_get_num_unix_fds g_dbus_message_get_num_unix_fds;
alias c_g_dbus_message_get_path g_dbus_message_get_path;
alias c_g_dbus_message_get_reply_serial g_dbus_message_get_reply_serial;
alias c_g_dbus_message_get_sender g_dbus_message_get_sender;
alias c_g_dbus_message_get_serial g_dbus_message_get_serial;
alias c_g_dbus_message_get_signature g_dbus_message_get_signature;
alias c_g_dbus_message_get_unix_fd_list g_dbus_message_get_unix_fd_list;
alias c_g_dbus_message_lock g_dbus_message_lock;
alias c_g_dbus_message_new_method_error g_dbus_message_new_method_error;
alias c_g_dbus_message_new_method_error_literal g_dbus_message_new_method_error_literal;
alias c_g_dbus_message_new_method_error_valist g_dbus_message_new_method_error_valist;
alias c_g_dbus_message_new_method_reply g_dbus_message_new_method_reply;
alias c_g_dbus_message_print g_dbus_message_print;
alias c_g_dbus_message_set_body g_dbus_message_set_body;
alias c_g_dbus_message_set_byte_order g_dbus_message_set_byte_order;
alias c_g_dbus_message_set_destination g_dbus_message_set_destination;
alias c_g_dbus_message_set_error_name g_dbus_message_set_error_name;
alias c_g_dbus_message_set_flags g_dbus_message_set_flags;
alias c_g_dbus_message_set_header g_dbus_message_set_header;
alias c_g_dbus_message_set_interface g_dbus_message_set_interface;
alias c_g_dbus_message_set_member g_dbus_message_set_member;
alias c_g_dbus_message_set_message_type g_dbus_message_set_message_type;
alias c_g_dbus_message_set_num_unix_fds g_dbus_message_set_num_unix_fds;
alias c_g_dbus_message_set_path g_dbus_message_set_path;
alias c_g_dbus_message_set_reply_serial g_dbus_message_set_reply_serial;
alias c_g_dbus_message_set_sender g_dbus_message_set_sender;
alias c_g_dbus_message_set_serial g_dbus_message_set_serial;
alias c_g_dbus_message_set_signature g_dbus_message_set_signature;
alias c_g_dbus_message_set_unix_fd_list g_dbus_message_set_unix_fd_list;
alias c_g_dbus_message_to_blob g_dbus_message_to_blob;
alias c_g_dbus_message_to_gerror g_dbus_message_to_gerror;

// gio.DBusMethodInfo

alias c_g_dbus_method_info_get_type g_dbus_method_info_get_type;
alias c_g_dbus_method_info_ref g_dbus_method_info_ref;
alias c_g_dbus_method_info_unref g_dbus_method_info_unref;

// gio.DBusMethodInvocation

alias c_g_dbus_method_invocation_get_type g_dbus_method_invocation_get_type;
alias c_g_dbus_method_invocation_get_connection g_dbus_method_invocation_get_connection;
alias c_g_dbus_method_invocation_get_interface_name g_dbus_method_invocation_get_interface_name;
alias c_g_dbus_method_invocation_get_message g_dbus_method_invocation_get_message;
alias c_g_dbus_method_invocation_get_method_info g_dbus_method_invocation_get_method_info;
alias c_g_dbus_method_invocation_get_method_name g_dbus_method_invocation_get_method_name;
alias c_g_dbus_method_invocation_get_object_path g_dbus_method_invocation_get_object_path;
alias c_g_dbus_method_invocation_get_parameters g_dbus_method_invocation_get_parameters;
alias c_g_dbus_method_invocation_get_property_info g_dbus_method_invocation_get_property_info;
alias c_g_dbus_method_invocation_get_sender g_dbus_method_invocation_get_sender;
alias c_g_dbus_method_invocation_get_user_data g_dbus_method_invocation_get_user_data;
alias c_g_dbus_method_invocation_return_dbus_error g_dbus_method_invocation_return_dbus_error;
alias c_g_dbus_method_invocation_return_error g_dbus_method_invocation_return_error;
alias c_g_dbus_method_invocation_return_error_literal g_dbus_method_invocation_return_error_literal;
alias c_g_dbus_method_invocation_return_error_valist g_dbus_method_invocation_return_error_valist;
alias c_g_dbus_method_invocation_return_gerror g_dbus_method_invocation_return_gerror;
alias c_g_dbus_method_invocation_return_value g_dbus_method_invocation_return_value;
alias c_g_dbus_method_invocation_return_value_with_unix_fd_list g_dbus_method_invocation_return_value_with_unix_fd_list;
alias c_g_dbus_method_invocation_take_error g_dbus_method_invocation_take_error;

// gio.DBusNodeInfo

alias c_g_dbus_node_info_get_type g_dbus_node_info_get_type;
alias c_g_dbus_node_info_new_for_xml g_dbus_node_info_new_for_xml;
alias c_g_dbus_node_info_generate_xml g_dbus_node_info_generate_xml;
alias c_g_dbus_node_info_lookup_interface g_dbus_node_info_lookup_interface;
alias c_g_dbus_node_info_ref g_dbus_node_info_ref;
alias c_g_dbus_node_info_unref g_dbus_node_info_unref;

// gio.DBusObject

alias c_g_dbus_object_get_type g_dbus_object_get_type;
alias c_g_dbus_object_get_interface g_dbus_object_get_interface;
alias c_g_dbus_object_get_interfaces g_dbus_object_get_interfaces;
alias c_g_dbus_object_get_object_path g_dbus_object_get_object_path;

// gio.DBusObjectManager

alias c_g_dbus_object_manager_get_type g_dbus_object_manager_get_type;
alias c_g_dbus_object_manager_get_interface g_dbus_object_manager_get_interface;
alias c_g_dbus_object_manager_get_object g_dbus_object_manager_get_object;
alias c_g_dbus_object_manager_get_object_path g_dbus_object_manager_get_object_path;
alias c_g_dbus_object_manager_get_objects g_dbus_object_manager_get_objects;

// gio.DBusObjectManagerClient

alias c_g_dbus_object_manager_client_get_type g_dbus_object_manager_client_get_type;
alias c_g_dbus_object_manager_client_new_finish g_dbus_object_manager_client_new_finish;
alias c_g_dbus_object_manager_client_new_for_bus_finish g_dbus_object_manager_client_new_for_bus_finish;
alias c_g_dbus_object_manager_client_new_for_bus_sync g_dbus_object_manager_client_new_for_bus_sync;
alias c_g_dbus_object_manager_client_new_sync g_dbus_object_manager_client_new_sync;
alias c_g_dbus_object_manager_client_new g_dbus_object_manager_client_new;
alias c_g_dbus_object_manager_client_new_for_bus g_dbus_object_manager_client_new_for_bus;
alias c_g_dbus_object_manager_client_get_connection g_dbus_object_manager_client_get_connection;
alias c_g_dbus_object_manager_client_get_flags g_dbus_object_manager_client_get_flags;
alias c_g_dbus_object_manager_client_get_name g_dbus_object_manager_client_get_name;
alias c_g_dbus_object_manager_client_get_name_owner g_dbus_object_manager_client_get_name_owner;

// gio.DBusObjectManagerServer

alias c_g_dbus_object_manager_server_get_type g_dbus_object_manager_server_get_type;
alias c_g_dbus_object_manager_server_new g_dbus_object_manager_server_new;
alias c_g_dbus_object_manager_server_export g_dbus_object_manager_server_export;
alias c_g_dbus_object_manager_server_export_uniquely g_dbus_object_manager_server_export_uniquely;
alias c_g_dbus_object_manager_server_get_connection g_dbus_object_manager_server_get_connection;
alias c_g_dbus_object_manager_server_is_exported g_dbus_object_manager_server_is_exported;
alias c_g_dbus_object_manager_server_set_connection g_dbus_object_manager_server_set_connection;
alias c_g_dbus_object_manager_server_unexport g_dbus_object_manager_server_unexport;

// gio.DBusObjectProxy

alias c_g_dbus_object_proxy_get_type g_dbus_object_proxy_get_type;
alias c_g_dbus_object_proxy_new g_dbus_object_proxy_new;
alias c_g_dbus_object_proxy_get_connection g_dbus_object_proxy_get_connection;

// gio.DBusObjectSkeleton

alias c_g_dbus_object_skeleton_get_type g_dbus_object_skeleton_get_type;
alias c_g_dbus_object_skeleton_new g_dbus_object_skeleton_new;
alias c_g_dbus_object_skeleton_add_interface g_dbus_object_skeleton_add_interface;
alias c_g_dbus_object_skeleton_flush g_dbus_object_skeleton_flush;
alias c_g_dbus_object_skeleton_remove_interface g_dbus_object_skeleton_remove_interface;
alias c_g_dbus_object_skeleton_remove_interface_by_name g_dbus_object_skeleton_remove_interface_by_name;
alias c_g_dbus_object_skeleton_set_object_path g_dbus_object_skeleton_set_object_path;

// gio.DBusPropertyInfo

alias c_g_dbus_property_info_get_type g_dbus_property_info_get_type;
alias c_g_dbus_property_info_ref g_dbus_property_info_ref;
alias c_g_dbus_property_info_unref g_dbus_property_info_unref;

// gio.DBusProxy

alias c_g_dbus_proxy_get_type g_dbus_proxy_get_type;
alias c_g_dbus_proxy_new_finish g_dbus_proxy_new_finish;
alias c_g_dbus_proxy_new_for_bus_finish g_dbus_proxy_new_for_bus_finish;
alias c_g_dbus_proxy_new_for_bus_sync g_dbus_proxy_new_for_bus_sync;
alias c_g_dbus_proxy_new_sync g_dbus_proxy_new_sync;
alias c_g_dbus_proxy_new g_dbus_proxy_new;
alias c_g_dbus_proxy_new_for_bus g_dbus_proxy_new_for_bus;
alias c_g_dbus_proxy_call g_dbus_proxy_call;
alias c_g_dbus_proxy_call_finish g_dbus_proxy_call_finish;
alias c_g_dbus_proxy_call_sync g_dbus_proxy_call_sync;
alias c_g_dbus_proxy_call_with_unix_fd_list g_dbus_proxy_call_with_unix_fd_list;
alias c_g_dbus_proxy_call_with_unix_fd_list_finish g_dbus_proxy_call_with_unix_fd_list_finish;
alias c_g_dbus_proxy_call_with_unix_fd_list_sync g_dbus_proxy_call_with_unix_fd_list_sync;
alias c_g_dbus_proxy_get_cached_property g_dbus_proxy_get_cached_property;
alias c_g_dbus_proxy_get_cached_property_names g_dbus_proxy_get_cached_property_names;
alias c_g_dbus_proxy_get_connection g_dbus_proxy_get_connection;
alias c_g_dbus_proxy_get_default_timeout g_dbus_proxy_get_default_timeout;
alias c_g_dbus_proxy_get_flags g_dbus_proxy_get_flags;
alias c_g_dbus_proxy_get_interface_info g_dbus_proxy_get_interface_info;
alias c_g_dbus_proxy_get_interface_name g_dbus_proxy_get_interface_name;
alias c_g_dbus_proxy_get_name g_dbus_proxy_get_name;
alias c_g_dbus_proxy_get_name_owner g_dbus_proxy_get_name_owner;
alias c_g_dbus_proxy_get_object_path g_dbus_proxy_get_object_path;
alias c_g_dbus_proxy_set_cached_property g_dbus_proxy_set_cached_property;
alias c_g_dbus_proxy_set_default_timeout g_dbus_proxy_set_default_timeout;
alias c_g_dbus_proxy_set_interface_info g_dbus_proxy_set_interface_info;

// gio.DBusServer

alias c_g_dbus_server_get_type g_dbus_server_get_type;
alias c_g_dbus_server_new_sync g_dbus_server_new_sync;
alias c_g_dbus_server_get_client_address g_dbus_server_get_client_address;
alias c_g_dbus_server_get_flags g_dbus_server_get_flags;
alias c_g_dbus_server_get_guid g_dbus_server_get_guid;
alias c_g_dbus_server_is_active g_dbus_server_is_active;
alias c_g_dbus_server_start g_dbus_server_start;
alias c_g_dbus_server_stop g_dbus_server_stop;

// gio.DBusSignalInfo

alias c_g_dbus_signal_info_get_type g_dbus_signal_info_get_type;
alias c_g_dbus_signal_info_ref g_dbus_signal_info_ref;
alias c_g_dbus_signal_info_unref g_dbus_signal_info_unref;

// gio.DataInputStream

alias c_g_data_input_stream_get_type g_data_input_stream_get_type;
alias c_g_data_input_stream_new g_data_input_stream_new;
alias c_g_data_input_stream_get_byte_order g_data_input_stream_get_byte_order;
alias c_g_data_input_stream_get_newline_type g_data_input_stream_get_newline_type;
alias c_g_data_input_stream_read_byte g_data_input_stream_read_byte;
alias c_g_data_input_stream_read_int16 g_data_input_stream_read_int16;
alias c_g_data_input_stream_read_int32 g_data_input_stream_read_int32;
alias c_g_data_input_stream_read_int64 g_data_input_stream_read_int64;
alias c_g_data_input_stream_read_line g_data_input_stream_read_line;
alias c_g_data_input_stream_read_line_async g_data_input_stream_read_line_async;
alias c_g_data_input_stream_read_line_finish g_data_input_stream_read_line_finish;
alias c_g_data_input_stream_read_line_finish_utf8 g_data_input_stream_read_line_finish_utf8;
alias c_g_data_input_stream_read_line_utf8 g_data_input_stream_read_line_utf8;
alias c_g_data_input_stream_read_uint16 g_data_input_stream_read_uint16;
alias c_g_data_input_stream_read_uint32 g_data_input_stream_read_uint32;
alias c_g_data_input_stream_read_uint64 g_data_input_stream_read_uint64;
alias c_g_data_input_stream_read_until g_data_input_stream_read_until;
alias c_g_data_input_stream_read_until_async g_data_input_stream_read_until_async;
alias c_g_data_input_stream_read_until_finish g_data_input_stream_read_until_finish;
alias c_g_data_input_stream_read_upto g_data_input_stream_read_upto;
alias c_g_data_input_stream_read_upto_async g_data_input_stream_read_upto_async;
alias c_g_data_input_stream_read_upto_finish g_data_input_stream_read_upto_finish;
alias c_g_data_input_stream_set_byte_order g_data_input_stream_set_byte_order;
alias c_g_data_input_stream_set_newline_type g_data_input_stream_set_newline_type;

// gio.DataOutputStream

alias c_g_data_output_stream_get_type g_data_output_stream_get_type;
alias c_g_data_output_stream_new g_data_output_stream_new;
alias c_g_data_output_stream_get_byte_order g_data_output_stream_get_byte_order;
alias c_g_data_output_stream_put_byte g_data_output_stream_put_byte;
alias c_g_data_output_stream_put_int16 g_data_output_stream_put_int16;
alias c_g_data_output_stream_put_int32 g_data_output_stream_put_int32;
alias c_g_data_output_stream_put_int64 g_data_output_stream_put_int64;
alias c_g_data_output_stream_put_string g_data_output_stream_put_string;
alias c_g_data_output_stream_put_uint16 g_data_output_stream_put_uint16;
alias c_g_data_output_stream_put_uint32 g_data_output_stream_put_uint32;
alias c_g_data_output_stream_put_uint64 g_data_output_stream_put_uint64;
alias c_g_data_output_stream_set_byte_order g_data_output_stream_set_byte_order;

// gio.DatagramBased

alias c_g_datagram_based_get_type g_datagram_based_get_type;
alias c_g_datagram_based_condition_check g_datagram_based_condition_check;
alias c_g_datagram_based_condition_wait g_datagram_based_condition_wait;
alias c_g_datagram_based_create_source g_datagram_based_create_source;
alias c_g_datagram_based_receive_messages g_datagram_based_receive_messages;
alias c_g_datagram_based_send_messages g_datagram_based_send_messages;

// gio.DebugController

alias c_g_debug_controller_get_type g_debug_controller_get_type;
alias c_g_debug_controller_get_debug_enabled g_debug_controller_get_debug_enabled;
alias c_g_debug_controller_set_debug_enabled g_debug_controller_set_debug_enabled;

// gio.DebugControllerDBus

alias c_g_debug_controller_dbus_get_type g_debug_controller_dbus_get_type;
alias c_g_debug_controller_dbus_new g_debug_controller_dbus_new;
alias c_g_debug_controller_dbus_stop g_debug_controller_dbus_stop;

// gio.DesktopAppInfo

alias c_g_desktop_app_info_get_type g_desktop_app_info_get_type;
alias c_g_desktop_app_info_new g_desktop_app_info_new;
alias c_g_desktop_app_info_new_from_filename g_desktop_app_info_new_from_filename;
alias c_g_desktop_app_info_new_from_keyfile g_desktop_app_info_new_from_keyfile;
alias c_g_desktop_app_info_get_implementations g_desktop_app_info_get_implementations;
alias c_g_desktop_app_info_search g_desktop_app_info_search;
alias c_g_desktop_app_info_set_desktop_env g_desktop_app_info_set_desktop_env;
alias c_g_desktop_app_info_get_action_name g_desktop_app_info_get_action_name;
alias c_g_desktop_app_info_get_boolean g_desktop_app_info_get_boolean;
alias c_g_desktop_app_info_get_categories g_desktop_app_info_get_categories;
alias c_g_desktop_app_info_get_filename g_desktop_app_info_get_filename;
alias c_g_desktop_app_info_get_generic_name g_desktop_app_info_get_generic_name;
alias c_g_desktop_app_info_get_is_hidden g_desktop_app_info_get_is_hidden;
alias c_g_desktop_app_info_get_keywords g_desktop_app_info_get_keywords;
alias c_g_desktop_app_info_get_locale_string g_desktop_app_info_get_locale_string;
alias c_g_desktop_app_info_get_nodisplay g_desktop_app_info_get_nodisplay;
alias c_g_desktop_app_info_get_show_in g_desktop_app_info_get_show_in;
alias c_g_desktop_app_info_get_startup_wm_class g_desktop_app_info_get_startup_wm_class;
alias c_g_desktop_app_info_get_string g_desktop_app_info_get_string;
alias c_g_desktop_app_info_get_string_list g_desktop_app_info_get_string_list;
alias c_g_desktop_app_info_has_key g_desktop_app_info_has_key;
alias c_g_desktop_app_info_launch_action g_desktop_app_info_launch_action;
alias c_g_desktop_app_info_launch_uris_as_manager g_desktop_app_info_launch_uris_as_manager;
alias c_g_desktop_app_info_launch_uris_as_manager_with_fds g_desktop_app_info_launch_uris_as_manager_with_fds;
alias c_g_desktop_app_info_list_actions g_desktop_app_info_list_actions;

// gio.DesktopAppInfoLookup

alias c_g_desktop_app_info_lookup_get_type g_desktop_app_info_lookup_get_type;
alias c_g_desktop_app_info_lookup_get_default_for_uri_scheme g_desktop_app_info_lookup_get_default_for_uri_scheme;

// gio.Drive

alias c_g_drive_get_type g_drive_get_type;
alias c_g_drive_can_eject g_drive_can_eject;
alias c_g_drive_can_poll_for_media g_drive_can_poll_for_media;
alias c_g_drive_can_start g_drive_can_start;
alias c_g_drive_can_start_degraded g_drive_can_start_degraded;
alias c_g_drive_can_stop g_drive_can_stop;
alias c_g_drive_eject g_drive_eject;
alias c_g_drive_eject_finish g_drive_eject_finish;
alias c_g_drive_eject_with_operation g_drive_eject_with_operation;
alias c_g_drive_eject_with_operation_finish g_drive_eject_with_operation_finish;
alias c_g_drive_enumerate_identifiers g_drive_enumerate_identifiers;
alias c_g_drive_get_icon g_drive_get_icon;
alias c_g_drive_get_identifier g_drive_get_identifier;
alias c_g_drive_get_name g_drive_get_name;
alias c_g_drive_get_sort_key g_drive_get_sort_key;
alias c_g_drive_get_start_stop_type g_drive_get_start_stop_type;
alias c_g_drive_get_symbolic_icon g_drive_get_symbolic_icon;
alias c_g_drive_get_volumes g_drive_get_volumes;
alias c_g_drive_has_media g_drive_has_media;
alias c_g_drive_has_volumes g_drive_has_volumes;
alias c_g_drive_is_media_check_automatic g_drive_is_media_check_automatic;
alias c_g_drive_is_media_removable g_drive_is_media_removable;
alias c_g_drive_is_removable g_drive_is_removable;
alias c_g_drive_poll_for_media g_drive_poll_for_media;
alias c_g_drive_poll_for_media_finish g_drive_poll_for_media_finish;
alias c_g_drive_start g_drive_start;
alias c_g_drive_start_finish g_drive_start_finish;
alias c_g_drive_stop g_drive_stop;
alias c_g_drive_stop_finish g_drive_stop_finish;

// gio.DtlsClientConnection

alias c_g_dtls_client_connection_get_type g_dtls_client_connection_get_type;
alias c_g_dtls_client_connection_new g_dtls_client_connection_new;
alias c_g_dtls_client_connection_get_accepted_cas g_dtls_client_connection_get_accepted_cas;
alias c_g_dtls_client_connection_get_server_identity g_dtls_client_connection_get_server_identity;
alias c_g_dtls_client_connection_get_validation_flags g_dtls_client_connection_get_validation_flags;
alias c_g_dtls_client_connection_set_server_identity g_dtls_client_connection_set_server_identity;
alias c_g_dtls_client_connection_set_validation_flags g_dtls_client_connection_set_validation_flags;

// gio.DtlsConnection

alias c_g_dtls_connection_get_type g_dtls_connection_get_type;
alias c_g_dtls_connection_close g_dtls_connection_close;
alias c_g_dtls_connection_close_async g_dtls_connection_close_async;
alias c_g_dtls_connection_close_finish g_dtls_connection_close_finish;
alias c_g_dtls_connection_emit_accept_certificate g_dtls_connection_emit_accept_certificate;
alias c_g_dtls_connection_get_certificate g_dtls_connection_get_certificate;
alias c_g_dtls_connection_get_channel_binding_data g_dtls_connection_get_channel_binding_data;
alias c_g_dtls_connection_get_ciphersuite_name g_dtls_connection_get_ciphersuite_name;
alias c_g_dtls_connection_get_database g_dtls_connection_get_database;
alias c_g_dtls_connection_get_interaction g_dtls_connection_get_interaction;
alias c_g_dtls_connection_get_negotiated_protocol g_dtls_connection_get_negotiated_protocol;
alias c_g_dtls_connection_get_peer_certificate g_dtls_connection_get_peer_certificate;
alias c_g_dtls_connection_get_peer_certificate_errors g_dtls_connection_get_peer_certificate_errors;
alias c_g_dtls_connection_get_protocol_version g_dtls_connection_get_protocol_version;
alias c_g_dtls_connection_get_rehandshake_mode g_dtls_connection_get_rehandshake_mode;
alias c_g_dtls_connection_get_require_close_notify g_dtls_connection_get_require_close_notify;
alias c_g_dtls_connection_handshake g_dtls_connection_handshake;
alias c_g_dtls_connection_handshake_async g_dtls_connection_handshake_async;
alias c_g_dtls_connection_handshake_finish g_dtls_connection_handshake_finish;
alias c_g_dtls_connection_set_advertised_protocols g_dtls_connection_set_advertised_protocols;
alias c_g_dtls_connection_set_certificate g_dtls_connection_set_certificate;
alias c_g_dtls_connection_set_database g_dtls_connection_set_database;
alias c_g_dtls_connection_set_interaction g_dtls_connection_set_interaction;
alias c_g_dtls_connection_set_rehandshake_mode g_dtls_connection_set_rehandshake_mode;
alias c_g_dtls_connection_set_require_close_notify g_dtls_connection_set_require_close_notify;
alias c_g_dtls_connection_shutdown g_dtls_connection_shutdown;
alias c_g_dtls_connection_shutdown_async g_dtls_connection_shutdown_async;
alias c_g_dtls_connection_shutdown_finish g_dtls_connection_shutdown_finish;

// gio.DtlsServerConnection

alias c_g_dtls_server_connection_get_type g_dtls_server_connection_get_type;
alias c_g_dtls_server_connection_new g_dtls_server_connection_new;

// gio.Emblem

alias c_g_emblem_get_type g_emblem_get_type;
alias c_g_emblem_new g_emblem_new;
alias c_g_emblem_new_with_origin g_emblem_new_with_origin;
alias c_g_emblem_get_icon g_emblem_get_icon;
alias c_g_emblem_get_origin g_emblem_get_origin;

// gio.EmblemedIcon

alias c_g_emblemed_icon_get_type g_emblemed_icon_get_type;
alias c_g_emblemed_icon_new g_emblemed_icon_new;
alias c_g_emblemed_icon_add_emblem g_emblemed_icon_add_emblem;
alias c_g_emblemed_icon_clear_emblems g_emblemed_icon_clear_emblems;
alias c_g_emblemed_icon_get_emblems g_emblemed_icon_get_emblems;
alias c_g_emblemed_icon_get_icon g_emblemed_icon_get_icon;

// gio.File

alias c_g_file_get_type g_file_get_type;
alias c_g_file_new_build_filename g_file_new_build_filename;
alias c_g_file_new_for_commandline_arg g_file_new_for_commandline_arg;
alias c_g_file_new_for_commandline_arg_and_cwd g_file_new_for_commandline_arg_and_cwd;
alias c_g_file_new_for_path g_file_new_for_path;
alias c_g_file_new_for_uri g_file_new_for_uri;
alias c_g_file_new_tmp g_file_new_tmp;
alias c_g_file_parse_name g_file_parse_name;
alias c_g_file_append_to g_file_append_to;
alias c_g_file_append_to_async g_file_append_to_async;
alias c_g_file_append_to_finish g_file_append_to_finish;
alias c_g_file_build_attribute_list_for_copy g_file_build_attribute_list_for_copy;
alias c_g_file_copy g_file_copy;
alias c_g_file_copy_async g_file_copy_async;
alias c_g_file_copy_attributes g_file_copy_attributes;
alias c_g_file_copy_finish g_file_copy_finish;
alias c_g_file_create g_file_create;
alias c_g_file_create_async g_file_create_async;
alias c_g_file_create_finish g_file_create_finish;
alias c_g_file_create_readwrite g_file_create_readwrite;
alias c_g_file_create_readwrite_async g_file_create_readwrite_async;
alias c_g_file_create_readwrite_finish g_file_create_readwrite_finish;
alias c_g_file_delete g_file_delete;
alias c_g_file_delete_async g_file_delete_async;
alias c_g_file_delete_finish g_file_delete_finish;
alias c_g_file_dup g_file_dup;
alias c_g_file_eject_mountable g_file_eject_mountable;
alias c_g_file_eject_mountable_finish g_file_eject_mountable_finish;
alias c_g_file_eject_mountable_with_operation g_file_eject_mountable_with_operation;
alias c_g_file_eject_mountable_with_operation_finish g_file_eject_mountable_with_operation_finish;
alias c_g_file_enumerate_children g_file_enumerate_children;
alias c_g_file_enumerate_children_async g_file_enumerate_children_async;
alias c_g_file_enumerate_children_finish g_file_enumerate_children_finish;
alias c_g_file_equal g_file_equal;
alias c_g_file_find_enclosing_mount g_file_find_enclosing_mount;
alias c_g_file_find_enclosing_mount_async g_file_find_enclosing_mount_async;
alias c_g_file_find_enclosing_mount_finish g_file_find_enclosing_mount_finish;
alias c_g_file_get_basename g_file_get_basename;
alias c_g_file_get_child g_file_get_child;
alias c_g_file_get_child_for_display_name g_file_get_child_for_display_name;
alias c_g_file_get_parent g_file_get_parent;
alias c_g_file_get_parse_name g_file_get_parse_name;
alias c_g_file_get_path g_file_get_path;
alias c_g_file_get_relative_path g_file_get_relative_path;
alias c_g_file_get_uri g_file_get_uri;
alias c_g_file_get_uri_scheme g_file_get_uri_scheme;
alias c_g_file_has_parent g_file_has_parent;
alias c_g_file_has_prefix g_file_has_prefix;
alias c_g_file_has_uri_scheme g_file_has_uri_scheme;
alias c_g_file_hash g_file_hash;
alias c_g_file_is_native g_file_is_native;
alias c_g_file_load_bytes g_file_load_bytes;
alias c_g_file_load_bytes_async g_file_load_bytes_async;
alias c_g_file_load_bytes_finish g_file_load_bytes_finish;
alias c_g_file_load_contents g_file_load_contents;
alias c_g_file_load_contents_async g_file_load_contents_async;
alias c_g_file_load_contents_finish g_file_load_contents_finish;
alias c_g_file_load_partial_contents_async g_file_load_partial_contents_async;
alias c_g_file_load_partial_contents_finish g_file_load_partial_contents_finish;
alias c_g_file_make_directory g_file_make_directory;
alias c_g_file_make_directory_async g_file_make_directory_async;
alias c_g_file_make_directory_finish g_file_make_directory_finish;
alias c_g_file_make_directory_with_parents g_file_make_directory_with_parents;
alias c_g_file_make_symbolic_link g_file_make_symbolic_link;
alias c_g_file_measure_disk_usage g_file_measure_disk_usage;
alias c_g_file_measure_disk_usage_async g_file_measure_disk_usage_async;
alias c_g_file_measure_disk_usage_finish g_file_measure_disk_usage_finish;
alias c_g_file_monitor g_file_monitor;
alias c_g_file_monitor_directory g_file_monitor_directory;
alias c_g_file_monitor_file g_file_monitor_file;
alias c_g_file_mount_enclosing_volume g_file_mount_enclosing_volume;
alias c_g_file_mount_enclosing_volume_finish g_file_mount_enclosing_volume_finish;
alias c_g_file_mount_mountable g_file_mount_mountable;
alias c_g_file_mount_mountable_finish g_file_mount_mountable_finish;
alias c_g_file_move g_file_move;
alias c_g_file_move_async g_file_move_async;
alias c_g_file_move_finish g_file_move_finish;
alias c_g_file_open_readwrite g_file_open_readwrite;
alias c_g_file_open_readwrite_async g_file_open_readwrite_async;
alias c_g_file_open_readwrite_finish g_file_open_readwrite_finish;
alias c_g_file_peek_path g_file_peek_path;
alias c_g_file_poll_mountable g_file_poll_mountable;
alias c_g_file_poll_mountable_finish g_file_poll_mountable_finish;
alias c_g_file_query_default_handler g_file_query_default_handler;
alias c_g_file_query_default_handler_async g_file_query_default_handler_async;
alias c_g_file_query_default_handler_finish g_file_query_default_handler_finish;
alias c_g_file_query_exists g_file_query_exists;
alias c_g_file_query_file_type g_file_query_file_type;
alias c_g_file_query_filesystem_info g_file_query_filesystem_info;
alias c_g_file_query_filesystem_info_async g_file_query_filesystem_info_async;
alias c_g_file_query_filesystem_info_finish g_file_query_filesystem_info_finish;
alias c_g_file_query_info g_file_query_info;
alias c_g_file_query_info_async g_file_query_info_async;
alias c_g_file_query_info_finish g_file_query_info_finish;
alias c_g_file_query_settable_attributes g_file_query_settable_attributes;
alias c_g_file_query_writable_namespaces g_file_query_writable_namespaces;
alias c_g_file_read g_file_read;
alias c_g_file_read_async g_file_read_async;
alias c_g_file_read_finish g_file_read_finish;
alias c_g_file_replace g_file_replace;
alias c_g_file_replace_async g_file_replace_async;
alias c_g_file_replace_contents g_file_replace_contents;
alias c_g_file_replace_contents_async g_file_replace_contents_async;
alias c_g_file_replace_contents_bytes_async g_file_replace_contents_bytes_async;
alias c_g_file_replace_contents_finish g_file_replace_contents_finish;
alias c_g_file_replace_finish g_file_replace_finish;
alias c_g_file_replace_readwrite g_file_replace_readwrite;
alias c_g_file_replace_readwrite_async g_file_replace_readwrite_async;
alias c_g_file_replace_readwrite_finish g_file_replace_readwrite_finish;
alias c_g_file_resolve_relative_path g_file_resolve_relative_path;
alias c_g_file_set_attribute g_file_set_attribute;
alias c_g_file_set_attribute_byte_string g_file_set_attribute_byte_string;
alias c_g_file_set_attribute_int32 g_file_set_attribute_int32;
alias c_g_file_set_attribute_int64 g_file_set_attribute_int64;
alias c_g_file_set_attribute_string g_file_set_attribute_string;
alias c_g_file_set_attribute_uint32 g_file_set_attribute_uint32;
alias c_g_file_set_attribute_uint64 g_file_set_attribute_uint64;
alias c_g_file_set_attributes_async g_file_set_attributes_async;
alias c_g_file_set_attributes_finish g_file_set_attributes_finish;
alias c_g_file_set_attributes_from_info g_file_set_attributes_from_info;
alias c_g_file_set_display_name g_file_set_display_name;
alias c_g_file_set_display_name_async g_file_set_display_name_async;
alias c_g_file_set_display_name_finish g_file_set_display_name_finish;
alias c_g_file_start_mountable g_file_start_mountable;
alias c_g_file_start_mountable_finish g_file_start_mountable_finish;
alias c_g_file_stop_mountable g_file_stop_mountable;
alias c_g_file_stop_mountable_finish g_file_stop_mountable_finish;
alias c_g_file_supports_thread_contexts g_file_supports_thread_contexts;
alias c_g_file_trash g_file_trash;
alias c_g_file_trash_async g_file_trash_async;
alias c_g_file_trash_finish g_file_trash_finish;
alias c_g_file_unmount_mountable g_file_unmount_mountable;
alias c_g_file_unmount_mountable_finish g_file_unmount_mountable_finish;
alias c_g_file_unmount_mountable_with_operation g_file_unmount_mountable_with_operation;
alias c_g_file_unmount_mountable_with_operation_finish g_file_unmount_mountable_with_operation_finish;

// gio.FileAttributeInfoList

alias c_g_file_attribute_info_list_get_type g_file_attribute_info_list_get_type;
alias c_g_file_attribute_info_list_new g_file_attribute_info_list_new;
alias c_g_file_attribute_info_list_add g_file_attribute_info_list_add;
alias c_g_file_attribute_info_list_dup g_file_attribute_info_list_dup;
alias c_g_file_attribute_info_list_lookup g_file_attribute_info_list_lookup;
alias c_g_file_attribute_info_list_ref g_file_attribute_info_list_ref;
alias c_g_file_attribute_info_list_unref g_file_attribute_info_list_unref;

// gio.FileAttributeMatcher

alias c_g_file_attribute_matcher_get_type g_file_attribute_matcher_get_type;
alias c_g_file_attribute_matcher_new g_file_attribute_matcher_new;
alias c_g_file_attribute_matcher_enumerate_namespace g_file_attribute_matcher_enumerate_namespace;
alias c_g_file_attribute_matcher_enumerate_next g_file_attribute_matcher_enumerate_next;
alias c_g_file_attribute_matcher_matches g_file_attribute_matcher_matches;
alias c_g_file_attribute_matcher_matches_only g_file_attribute_matcher_matches_only;
alias c_g_file_attribute_matcher_ref g_file_attribute_matcher_ref;
alias c_g_file_attribute_matcher_subtract g_file_attribute_matcher_subtract;
alias c_g_file_attribute_matcher_to_string g_file_attribute_matcher_to_string;
alias c_g_file_attribute_matcher_unref g_file_attribute_matcher_unref;

// gio.FileDescriptorBased

alias c_g_file_descriptor_based_get_type g_file_descriptor_based_get_type;
alias c_g_file_descriptor_based_get_fd g_file_descriptor_based_get_fd;

// gio.FileEnumerator

alias c_g_file_enumerator_get_type g_file_enumerator_get_type;
alias c_g_file_enumerator_close g_file_enumerator_close;
alias c_g_file_enumerator_close_async g_file_enumerator_close_async;
alias c_g_file_enumerator_close_finish g_file_enumerator_close_finish;
alias c_g_file_enumerator_get_child g_file_enumerator_get_child;
alias c_g_file_enumerator_get_container g_file_enumerator_get_container;
alias c_g_file_enumerator_has_pending g_file_enumerator_has_pending;
alias c_g_file_enumerator_is_closed g_file_enumerator_is_closed;
alias c_g_file_enumerator_iterate g_file_enumerator_iterate;
alias c_g_file_enumerator_next_file g_file_enumerator_next_file;
alias c_g_file_enumerator_next_files_async g_file_enumerator_next_files_async;
alias c_g_file_enumerator_next_files_finish g_file_enumerator_next_files_finish;
alias c_g_file_enumerator_set_pending g_file_enumerator_set_pending;

// gio.FileIOStream

alias c_g_file_io_stream_get_type g_file_io_stream_get_type;
alias c_g_file_io_stream_get_etag g_file_io_stream_get_etag;
alias c_g_file_io_stream_query_info g_file_io_stream_query_info;
alias c_g_file_io_stream_query_info_async g_file_io_stream_query_info_async;
alias c_g_file_io_stream_query_info_finish g_file_io_stream_query_info_finish;

// gio.FileIcon

alias c_g_file_icon_get_type g_file_icon_get_type;
alias c_g_file_icon_new g_file_icon_new;
alias c_g_file_icon_get_file g_file_icon_get_file;

// gio.FileInfo

alias c_g_file_info_get_type g_file_info_get_type;
alias c_g_file_info_new g_file_info_new;
alias c_g_file_info_clear_status g_file_info_clear_status;
alias c_g_file_info_copy_into g_file_info_copy_into;
alias c_g_file_info_dup g_file_info_dup;
alias c_g_file_info_get_access_date_time g_file_info_get_access_date_time;
alias c_g_file_info_get_attribute_as_string g_file_info_get_attribute_as_string;
alias c_g_file_info_get_attribute_boolean g_file_info_get_attribute_boolean;
alias c_g_file_info_get_attribute_byte_string g_file_info_get_attribute_byte_string;
alias c_g_file_info_get_attribute_data g_file_info_get_attribute_data;
alias c_g_file_info_get_attribute_int32 g_file_info_get_attribute_int32;
alias c_g_file_info_get_attribute_int64 g_file_info_get_attribute_int64;
alias c_g_file_info_get_attribute_object g_file_info_get_attribute_object;
alias c_g_file_info_get_attribute_status g_file_info_get_attribute_status;
alias c_g_file_info_get_attribute_string g_file_info_get_attribute_string;
alias c_g_file_info_get_attribute_stringv g_file_info_get_attribute_stringv;
alias c_g_file_info_get_attribute_type g_file_info_get_attribute_type;
alias c_g_file_info_get_attribute_uint32 g_file_info_get_attribute_uint32;
alias c_g_file_info_get_attribute_uint64 g_file_info_get_attribute_uint64;
alias c_g_file_info_get_content_type g_file_info_get_content_type;
alias c_g_file_info_get_creation_date_time g_file_info_get_creation_date_time;
alias c_g_file_info_get_deletion_date g_file_info_get_deletion_date;
alias c_g_file_info_get_display_name g_file_info_get_display_name;
alias c_g_file_info_get_edit_name g_file_info_get_edit_name;
alias c_g_file_info_get_etag g_file_info_get_etag;
alias c_g_file_info_get_file_type g_file_info_get_file_type;
alias c_g_file_info_get_icon g_file_info_get_icon;
alias c_g_file_info_get_is_backup g_file_info_get_is_backup;
alias c_g_file_info_get_is_hidden g_file_info_get_is_hidden;
alias c_g_file_info_get_is_symlink g_file_info_get_is_symlink;
alias c_g_file_info_get_modification_date_time g_file_info_get_modification_date_time;
alias c_g_file_info_get_modification_time g_file_info_get_modification_time;
alias c_g_file_info_get_name g_file_info_get_name;
alias c_g_file_info_get_size g_file_info_get_size;
alias c_g_file_info_get_sort_order g_file_info_get_sort_order;
alias c_g_file_info_get_symbolic_icon g_file_info_get_symbolic_icon;
alias c_g_file_info_get_symlink_target g_file_info_get_symlink_target;
alias c_g_file_info_has_attribute g_file_info_has_attribute;
alias c_g_file_info_has_namespace g_file_info_has_namespace;
alias c_g_file_info_list_attributes g_file_info_list_attributes;
alias c_g_file_info_remove_attribute g_file_info_remove_attribute;
alias c_g_file_info_set_access_date_time g_file_info_set_access_date_time;
alias c_g_file_info_set_attribute g_file_info_set_attribute;
alias c_g_file_info_set_attribute_boolean g_file_info_set_attribute_boolean;
alias c_g_file_info_set_attribute_byte_string g_file_info_set_attribute_byte_string;
alias c_g_file_info_set_attribute_int32 g_file_info_set_attribute_int32;
alias c_g_file_info_set_attribute_int64 g_file_info_set_attribute_int64;
alias c_g_file_info_set_attribute_mask g_file_info_set_attribute_mask;
alias c_g_file_info_set_attribute_object g_file_info_set_attribute_object;
alias c_g_file_info_set_attribute_status g_file_info_set_attribute_status;
alias c_g_file_info_set_attribute_string g_file_info_set_attribute_string;
alias c_g_file_info_set_attribute_stringv g_file_info_set_attribute_stringv;
alias c_g_file_info_set_attribute_uint32 g_file_info_set_attribute_uint32;
alias c_g_file_info_set_attribute_uint64 g_file_info_set_attribute_uint64;
alias c_g_file_info_set_content_type g_file_info_set_content_type;
alias c_g_file_info_set_creation_date_time g_file_info_set_creation_date_time;
alias c_g_file_info_set_display_name g_file_info_set_display_name;
alias c_g_file_info_set_edit_name g_file_info_set_edit_name;
alias c_g_file_info_set_file_type g_file_info_set_file_type;
alias c_g_file_info_set_icon g_file_info_set_icon;
alias c_g_file_info_set_is_hidden g_file_info_set_is_hidden;
alias c_g_file_info_set_is_symlink g_file_info_set_is_symlink;
alias c_g_file_info_set_modification_date_time g_file_info_set_modification_date_time;
alias c_g_file_info_set_modification_time g_file_info_set_modification_time;
alias c_g_file_info_set_name g_file_info_set_name;
alias c_g_file_info_set_size g_file_info_set_size;
alias c_g_file_info_set_sort_order g_file_info_set_sort_order;
alias c_g_file_info_set_symbolic_icon g_file_info_set_symbolic_icon;
alias c_g_file_info_set_symlink_target g_file_info_set_symlink_target;
alias c_g_file_info_unset_attribute_mask g_file_info_unset_attribute_mask;

// gio.FileInputStream

alias c_g_file_input_stream_get_type g_file_input_stream_get_type;
alias c_g_file_input_stream_query_info g_file_input_stream_query_info;
alias c_g_file_input_stream_query_info_async g_file_input_stream_query_info_async;
alias c_g_file_input_stream_query_info_finish g_file_input_stream_query_info_finish;

// gio.FileMonitor

alias c_g_file_monitor_get_type g_file_monitor_get_type;
alias c_g_file_monitor_cancel g_file_monitor_cancel;
alias c_g_file_monitor_emit_event g_file_monitor_emit_event;
alias c_g_file_monitor_is_cancelled g_file_monitor_is_cancelled;
alias c_g_file_monitor_set_rate_limit g_file_monitor_set_rate_limit;

// gio.FileOutputStream

alias c_g_file_output_stream_get_type g_file_output_stream_get_type;
alias c_g_file_output_stream_get_etag g_file_output_stream_get_etag;
alias c_g_file_output_stream_query_info g_file_output_stream_query_info;
alias c_g_file_output_stream_query_info_async g_file_output_stream_query_info_async;
alias c_g_file_output_stream_query_info_finish g_file_output_stream_query_info_finish;

// gio.FilenameCompleter

alias c_g_filename_completer_get_type g_filename_completer_get_type;
alias c_g_filename_completer_new g_filename_completer_new;
alias c_g_filename_completer_get_completion_suffix g_filename_completer_get_completion_suffix;
alias c_g_filename_completer_get_completions g_filename_completer_get_completions;
alias c_g_filename_completer_set_dirs_only g_filename_completer_set_dirs_only;

// gio.FilterInputStream

alias c_g_filter_input_stream_get_type g_filter_input_stream_get_type;
alias c_g_filter_input_stream_get_base_stream g_filter_input_stream_get_base_stream;
alias c_g_filter_input_stream_get_close_base_stream g_filter_input_stream_get_close_base_stream;
alias c_g_filter_input_stream_set_close_base_stream g_filter_input_stream_set_close_base_stream;

// gio.FilterOutputStream

alias c_g_filter_output_stream_get_type g_filter_output_stream_get_type;
alias c_g_filter_output_stream_get_base_stream g_filter_output_stream_get_base_stream;
alias c_g_filter_output_stream_get_close_base_stream g_filter_output_stream_get_close_base_stream;
alias c_g_filter_output_stream_set_close_base_stream g_filter_output_stream_set_close_base_stream;

// gio.IOExtension

alias c_g_io_extension_get_name g_io_extension_get_name;
alias c_g_io_extension_get_priority g_io_extension_get_priority;
alias c_g_io_extension_get_type g_io_extension_get_type;
alias c_g_io_extension_ref_class g_io_extension_ref_class;

// gio.IOExtensionPoint

alias c_g_io_extension_point_get_extension_by_name g_io_extension_point_get_extension_by_name;
alias c_g_io_extension_point_get_extensions g_io_extension_point_get_extensions;
alias c_g_io_extension_point_get_required_type g_io_extension_point_get_required_type;
alias c_g_io_extension_point_set_required_type g_io_extension_point_set_required_type;
alias c_g_io_extension_point_implement g_io_extension_point_implement;
alias c_g_io_extension_point_lookup g_io_extension_point_lookup;
alias c_g_io_extension_point_register g_io_extension_point_register;

// gio.IOModule

alias c_g_io_module_get_type g_io_module_get_type;
alias c_g_io_module_new g_io_module_new;
alias c_g_io_modules_load_all_in_directory g_io_modules_load_all_in_directory;
alias c_g_io_modules_load_all_in_directory_with_scope g_io_modules_load_all_in_directory_with_scope;
alias c_g_io_modules_scan_all_in_directory g_io_modules_scan_all_in_directory;
alias c_g_io_modules_scan_all_in_directory_with_scope g_io_modules_scan_all_in_directory_with_scope;

// gio.IOModuleScope

alias c_g_io_module_scope_block g_io_module_scope_block;
alias c_g_io_module_scope_free g_io_module_scope_free;
alias c_g_io_module_scope_new g_io_module_scope_new;

// gio.IOSchedulerJob

alias c_g_io_scheduler_job_send_to_mainloop g_io_scheduler_job_send_to_mainloop;
alias c_g_io_scheduler_job_send_to_mainloop_async g_io_scheduler_job_send_to_mainloop_async;
alias c_g_io_scheduler_cancel_all_jobs g_io_scheduler_cancel_all_jobs;
alias c_g_io_scheduler_push_job g_io_scheduler_push_job;

// gio.IOStream

alias c_g_io_stream_get_type g_io_stream_get_type;
alias c_g_io_stream_splice_finish g_io_stream_splice_finish;
alias c_g_io_stream_clear_pending g_io_stream_clear_pending;
alias c_g_io_stream_close g_io_stream_close;
alias c_g_io_stream_close_async g_io_stream_close_async;
alias c_g_io_stream_close_finish g_io_stream_close_finish;
alias c_g_io_stream_get_input_stream g_io_stream_get_input_stream;
alias c_g_io_stream_get_output_stream g_io_stream_get_output_stream;
alias c_g_io_stream_has_pending g_io_stream_has_pending;
alias c_g_io_stream_is_closed g_io_stream_is_closed;
alias c_g_io_stream_set_pending g_io_stream_set_pending;
alias c_g_io_stream_splice_async g_io_stream_splice_async;

// gio.Icon

alias c_g_icon_get_type g_icon_get_type;
alias c_g_icon_deserialize g_icon_deserialize;
alias c_g_icon_hash g_icon_hash;
alias c_g_icon_new_for_string g_icon_new_for_string;
alias c_g_icon_equal g_icon_equal;
alias c_g_icon_serialize g_icon_serialize;
alias c_g_icon_to_string g_icon_to_string;

// gio.InetAddress

alias c_g_inet_address_get_type g_inet_address_get_type;
alias c_g_inet_address_new_any g_inet_address_new_any;
alias c_g_inet_address_new_from_bytes g_inet_address_new_from_bytes;
alias c_g_inet_address_new_from_string g_inet_address_new_from_string;
alias c_g_inet_address_new_loopback g_inet_address_new_loopback;
alias c_g_inet_address_equal g_inet_address_equal;
alias c_g_inet_address_get_family g_inet_address_get_family;
alias c_g_inet_address_get_is_any g_inet_address_get_is_any;
alias c_g_inet_address_get_is_link_local g_inet_address_get_is_link_local;
alias c_g_inet_address_get_is_loopback g_inet_address_get_is_loopback;
alias c_g_inet_address_get_is_mc_global g_inet_address_get_is_mc_global;
alias c_g_inet_address_get_is_mc_link_local g_inet_address_get_is_mc_link_local;
alias c_g_inet_address_get_is_mc_node_local g_inet_address_get_is_mc_node_local;
alias c_g_inet_address_get_is_mc_org_local g_inet_address_get_is_mc_org_local;
alias c_g_inet_address_get_is_mc_site_local g_inet_address_get_is_mc_site_local;
alias c_g_inet_address_get_is_multicast g_inet_address_get_is_multicast;
alias c_g_inet_address_get_is_site_local g_inet_address_get_is_site_local;
alias c_g_inet_address_get_native_size g_inet_address_get_native_size;
alias c_g_inet_address_to_bytes g_inet_address_to_bytes;
alias c_g_inet_address_to_string g_inet_address_to_string;

// gio.InetAddressMask

alias c_g_inet_address_mask_get_type g_inet_address_mask_get_type;
alias c_g_inet_address_mask_new g_inet_address_mask_new;
alias c_g_inet_address_mask_new_from_string g_inet_address_mask_new_from_string;
alias c_g_inet_address_mask_equal g_inet_address_mask_equal;
alias c_g_inet_address_mask_get_address g_inet_address_mask_get_address;
alias c_g_inet_address_mask_get_family g_inet_address_mask_get_family;
alias c_g_inet_address_mask_get_length g_inet_address_mask_get_length;
alias c_g_inet_address_mask_matches g_inet_address_mask_matches;
alias c_g_inet_address_mask_to_string g_inet_address_mask_to_string;

// gio.InetSocketAddress

alias c_g_inet_socket_address_get_type g_inet_socket_address_get_type;
alias c_g_inet_socket_address_new g_inet_socket_address_new;
alias c_g_inet_socket_address_new_from_string g_inet_socket_address_new_from_string;
alias c_g_inet_socket_address_get_address g_inet_socket_address_get_address;
alias c_g_inet_socket_address_get_flowinfo g_inet_socket_address_get_flowinfo;
alias c_g_inet_socket_address_get_port g_inet_socket_address_get_port;
alias c_g_inet_socket_address_get_scope_id g_inet_socket_address_get_scope_id;

// gio.Initable

alias c_g_initable_get_type g_initable_get_type;
alias c_g_initable_new g_initable_new;
alias c_g_initable_new_valist g_initable_new_valist;
alias c_g_initable_newv g_initable_newv;
alias c_g_initable_init g_initable_init;

// gio.InputStream

alias c_g_input_stream_get_type g_input_stream_get_type;
alias c_g_input_stream_clear_pending g_input_stream_clear_pending;
alias c_g_input_stream_close g_input_stream_close;
alias c_g_input_stream_close_async g_input_stream_close_async;
alias c_g_input_stream_close_finish g_input_stream_close_finish;
alias c_g_input_stream_has_pending g_input_stream_has_pending;
alias c_g_input_stream_is_closed g_input_stream_is_closed;
alias c_g_input_stream_read g_input_stream_read;
alias c_g_input_stream_read_all g_input_stream_read_all;
alias c_g_input_stream_read_all_async g_input_stream_read_all_async;
alias c_g_input_stream_read_all_finish g_input_stream_read_all_finish;
alias c_g_input_stream_read_async g_input_stream_read_async;
alias c_g_input_stream_read_bytes g_input_stream_read_bytes;
alias c_g_input_stream_read_bytes_async g_input_stream_read_bytes_async;
alias c_g_input_stream_read_bytes_finish g_input_stream_read_bytes_finish;
alias c_g_input_stream_read_finish g_input_stream_read_finish;
alias c_g_input_stream_set_pending g_input_stream_set_pending;
alias c_g_input_stream_skip g_input_stream_skip;
alias c_g_input_stream_skip_async g_input_stream_skip_async;
alias c_g_input_stream_skip_finish g_input_stream_skip_finish;

// gio.ListModel

alias c_g_list_model_get_type g_list_model_get_type;
alias c_g_list_model_get_item g_list_model_get_item;
alias c_g_list_model_get_item_type g_list_model_get_item_type;
alias c_g_list_model_get_n_items g_list_model_get_n_items;
alias c_g_list_model_get_object g_list_model_get_object;
alias c_g_list_model_items_changed g_list_model_items_changed;

// gio.ListStore

alias c_g_list_store_get_type g_list_store_get_type;
alias c_g_list_store_new g_list_store_new;
alias c_g_list_store_append g_list_store_append;
alias c_g_list_store_find g_list_store_find;
alias c_g_list_store_find_with_equal_func g_list_store_find_with_equal_func;
alias c_g_list_store_insert g_list_store_insert;
alias c_g_list_store_insert_sorted g_list_store_insert_sorted;
alias c_g_list_store_remove g_list_store_remove;
alias c_g_list_store_remove_all g_list_store_remove_all;
alias c_g_list_store_sort g_list_store_sort;
alias c_g_list_store_splice g_list_store_splice;

// gio.LoadableIcon

alias c_g_loadable_icon_get_type g_loadable_icon_get_type;
alias c_g_loadable_icon_load g_loadable_icon_load;
alias c_g_loadable_icon_load_async g_loadable_icon_load_async;
alias c_g_loadable_icon_load_finish g_loadable_icon_load_finish;

// gio.MemoryInputStream

alias c_g_memory_input_stream_get_type g_memory_input_stream_get_type;
alias c_g_memory_input_stream_new g_memory_input_stream_new;
alias c_g_memory_input_stream_new_from_bytes g_memory_input_stream_new_from_bytes;
alias c_g_memory_input_stream_new_from_data g_memory_input_stream_new_from_data;
alias c_g_memory_input_stream_add_bytes g_memory_input_stream_add_bytes;
alias c_g_memory_input_stream_add_data g_memory_input_stream_add_data;

// gio.MemoryMonitor

alias c_g_memory_monitor_get_type g_memory_monitor_get_type;
alias c_g_memory_monitor_dup_default g_memory_monitor_dup_default;

// gio.MemoryOutputStream

alias c_g_memory_output_stream_get_type g_memory_output_stream_get_type;
alias c_g_memory_output_stream_new g_memory_output_stream_new;
alias c_g_memory_output_stream_new_resizable g_memory_output_stream_new_resizable;
alias c_g_memory_output_stream_get_data g_memory_output_stream_get_data;
alias c_g_memory_output_stream_get_data_size g_memory_output_stream_get_data_size;
alias c_g_memory_output_stream_get_size g_memory_output_stream_get_size;
alias c_g_memory_output_stream_steal_as_bytes g_memory_output_stream_steal_as_bytes;
alias c_g_memory_output_stream_steal_data g_memory_output_stream_steal_data;

// gio.Menu

alias c_g_menu_get_type g_menu_get_type;
alias c_g_menu_new g_menu_new;
alias c_g_menu_append g_menu_append;
alias c_g_menu_append_item g_menu_append_item;
alias c_g_menu_append_section g_menu_append_section;
alias c_g_menu_append_submenu g_menu_append_submenu;
alias c_g_menu_freeze g_menu_freeze;
alias c_g_menu_insert g_menu_insert;
alias c_g_menu_insert_item g_menu_insert_item;
alias c_g_menu_insert_section g_menu_insert_section;
alias c_g_menu_insert_submenu g_menu_insert_submenu;
alias c_g_menu_prepend g_menu_prepend;
alias c_g_menu_prepend_item g_menu_prepend_item;
alias c_g_menu_prepend_section g_menu_prepend_section;
alias c_g_menu_prepend_submenu g_menu_prepend_submenu;
alias c_g_menu_remove g_menu_remove;
alias c_g_menu_remove_all g_menu_remove_all;

// gio.MenuAttributeIter

alias c_g_menu_attribute_iter_get_type g_menu_attribute_iter_get_type;
alias c_g_menu_attribute_iter_get_name g_menu_attribute_iter_get_name;
alias c_g_menu_attribute_iter_get_next g_menu_attribute_iter_get_next;
alias c_g_menu_attribute_iter_get_value g_menu_attribute_iter_get_value;
alias c_g_menu_attribute_iter_next g_menu_attribute_iter_next;

// gio.MenuItem

alias c_g_menu_item_get_type g_menu_item_get_type;
alias c_g_menu_item_new g_menu_item_new;
alias c_g_menu_item_new_from_model g_menu_item_new_from_model;
alias c_g_menu_item_new_section g_menu_item_new_section;
alias c_g_menu_item_new_submenu g_menu_item_new_submenu;
alias c_g_menu_item_get_attribute g_menu_item_get_attribute;
alias c_g_menu_item_get_attribute_value g_menu_item_get_attribute_value;
alias c_g_menu_item_get_link g_menu_item_get_link;
alias c_g_menu_item_set_action_and_target g_menu_item_set_action_and_target;
alias c_g_menu_item_set_action_and_target_value g_menu_item_set_action_and_target_value;
alias c_g_menu_item_set_attribute g_menu_item_set_attribute;
alias c_g_menu_item_set_attribute_value g_menu_item_set_attribute_value;
alias c_g_menu_item_set_detailed_action g_menu_item_set_detailed_action;
alias c_g_menu_item_set_icon g_menu_item_set_icon;
alias c_g_menu_item_set_label g_menu_item_set_label;
alias c_g_menu_item_set_link g_menu_item_set_link;
alias c_g_menu_item_set_section g_menu_item_set_section;
alias c_g_menu_item_set_submenu g_menu_item_set_submenu;

// gio.MenuLinkIter

alias c_g_menu_link_iter_get_type g_menu_link_iter_get_type;
alias c_g_menu_link_iter_get_name g_menu_link_iter_get_name;
alias c_g_menu_link_iter_get_next g_menu_link_iter_get_next;
alias c_g_menu_link_iter_get_value g_menu_link_iter_get_value;
alias c_g_menu_link_iter_next g_menu_link_iter_next;

// gio.MenuModel

alias c_g_menu_model_get_type g_menu_model_get_type;
alias c_g_menu_model_get_item_attribute g_menu_model_get_item_attribute;
alias c_g_menu_model_get_item_attribute_value g_menu_model_get_item_attribute_value;
alias c_g_menu_model_get_item_link g_menu_model_get_item_link;
alias c_g_menu_model_get_n_items g_menu_model_get_n_items;
alias c_g_menu_model_is_mutable g_menu_model_is_mutable;
alias c_g_menu_model_items_changed g_menu_model_items_changed;
alias c_g_menu_model_iterate_item_attributes g_menu_model_iterate_item_attributes;
alias c_g_menu_model_iterate_item_links g_menu_model_iterate_item_links;

// gio.Mount

alias c_g_mount_get_type g_mount_get_type;
alias c_g_mount_can_eject g_mount_can_eject;
alias c_g_mount_can_unmount g_mount_can_unmount;
alias c_g_mount_eject g_mount_eject;
alias c_g_mount_eject_finish g_mount_eject_finish;
alias c_g_mount_eject_with_operation g_mount_eject_with_operation;
alias c_g_mount_eject_with_operation_finish g_mount_eject_with_operation_finish;
alias c_g_mount_get_default_location g_mount_get_default_location;
alias c_g_mount_get_drive g_mount_get_drive;
alias c_g_mount_get_icon g_mount_get_icon;
alias c_g_mount_get_name g_mount_get_name;
alias c_g_mount_get_root g_mount_get_root;
alias c_g_mount_get_sort_key g_mount_get_sort_key;
alias c_g_mount_get_symbolic_icon g_mount_get_symbolic_icon;
alias c_g_mount_get_uuid g_mount_get_uuid;
alias c_g_mount_get_volume g_mount_get_volume;
alias c_g_mount_guess_content_type g_mount_guess_content_type;
alias c_g_mount_guess_content_type_finish g_mount_guess_content_type_finish;
alias c_g_mount_guess_content_type_sync g_mount_guess_content_type_sync;
alias c_g_mount_is_shadowed g_mount_is_shadowed;
alias c_g_mount_remount g_mount_remount;
alias c_g_mount_remount_finish g_mount_remount_finish;
alias c_g_mount_shadow g_mount_shadow;
alias c_g_mount_unmount g_mount_unmount;
alias c_g_mount_unmount_finish g_mount_unmount_finish;
alias c_g_mount_unmount_with_operation g_mount_unmount_with_operation;
alias c_g_mount_unmount_with_operation_finish g_mount_unmount_with_operation_finish;
alias c_g_mount_unshadow g_mount_unshadow;

// gio.MountOperation

alias c_g_mount_operation_get_type g_mount_operation_get_type;
alias c_g_mount_operation_new g_mount_operation_new;
alias c_g_mount_operation_get_anonymous g_mount_operation_get_anonymous;
alias c_g_mount_operation_get_choice g_mount_operation_get_choice;
alias c_g_mount_operation_get_domain g_mount_operation_get_domain;
alias c_g_mount_operation_get_is_tcrypt_hidden_volume g_mount_operation_get_is_tcrypt_hidden_volume;
alias c_g_mount_operation_get_is_tcrypt_system_volume g_mount_operation_get_is_tcrypt_system_volume;
alias c_g_mount_operation_get_password g_mount_operation_get_password;
alias c_g_mount_operation_get_password_save g_mount_operation_get_password_save;
alias c_g_mount_operation_get_pim g_mount_operation_get_pim;
alias c_g_mount_operation_get_username g_mount_operation_get_username;
alias c_g_mount_operation_reply g_mount_operation_reply;
alias c_g_mount_operation_set_anonymous g_mount_operation_set_anonymous;
alias c_g_mount_operation_set_choice g_mount_operation_set_choice;
alias c_g_mount_operation_set_domain g_mount_operation_set_domain;
alias c_g_mount_operation_set_is_tcrypt_hidden_volume g_mount_operation_set_is_tcrypt_hidden_volume;
alias c_g_mount_operation_set_is_tcrypt_system_volume g_mount_operation_set_is_tcrypt_system_volume;
alias c_g_mount_operation_set_password g_mount_operation_set_password;
alias c_g_mount_operation_set_password_save g_mount_operation_set_password_save;
alias c_g_mount_operation_set_pim g_mount_operation_set_pim;
alias c_g_mount_operation_set_username g_mount_operation_set_username;

// gio.NativeSocketAddress

alias c_g_native_socket_address_get_type g_native_socket_address_get_type;
alias c_g_native_socket_address_new g_native_socket_address_new;

// gio.NativeVolumeMonitor

alias c_g_native_volume_monitor_get_type g_native_volume_monitor_get_type;

// gio.NetworkAddress

alias c_g_network_address_get_type g_network_address_get_type;
alias c_g_network_address_new g_network_address_new;
alias c_g_network_address_new_loopback g_network_address_new_loopback;
alias c_g_network_address_parse g_network_address_parse;
alias c_g_network_address_parse_uri g_network_address_parse_uri;
alias c_g_network_address_get_hostname g_network_address_get_hostname;
alias c_g_network_address_get_port g_network_address_get_port;
alias c_g_network_address_get_scheme g_network_address_get_scheme;

// gio.NetworkMonitor

alias c_g_network_monitor_get_type g_network_monitor_get_type;
alias c_g_network_monitor_get_default g_network_monitor_get_default;
alias c_g_network_monitor_can_reach g_network_monitor_can_reach;
alias c_g_network_monitor_can_reach_async g_network_monitor_can_reach_async;
alias c_g_network_monitor_can_reach_finish g_network_monitor_can_reach_finish;
alias c_g_network_monitor_get_connectivity g_network_monitor_get_connectivity;
alias c_g_network_monitor_get_network_available g_network_monitor_get_network_available;
alias c_g_network_monitor_get_network_metered g_network_monitor_get_network_metered;

// gio.NetworkService

alias c_g_network_service_get_type g_network_service_get_type;
alias c_g_network_service_new g_network_service_new;
alias c_g_network_service_get_domain g_network_service_get_domain;
alias c_g_network_service_get_protocol g_network_service_get_protocol;
alias c_g_network_service_get_scheme g_network_service_get_scheme;
alias c_g_network_service_get_service g_network_service_get_service;
alias c_g_network_service_set_scheme g_network_service_set_scheme;

// gio.Notification

alias c_g_notification_get_type g_notification_get_type;
alias c_g_notification_new g_notification_new;
alias c_g_notification_add_button g_notification_add_button;
alias c_g_notification_add_button_with_target g_notification_add_button_with_target;
alias c_g_notification_add_button_with_target_value g_notification_add_button_with_target_value;
alias c_g_notification_set_body g_notification_set_body;
alias c_g_notification_set_category g_notification_set_category;
alias c_g_notification_set_default_action g_notification_set_default_action;
alias c_g_notification_set_default_action_and_target g_notification_set_default_action_and_target;
alias c_g_notification_set_default_action_and_target_value g_notification_set_default_action_and_target_value;
alias c_g_notification_set_icon g_notification_set_icon;
alias c_g_notification_set_priority g_notification_set_priority;
alias c_g_notification_set_title g_notification_set_title;
alias c_g_notification_set_urgent g_notification_set_urgent;

// gio.OutputStream

alias c_g_output_stream_get_type g_output_stream_get_type;
alias c_g_output_stream_clear_pending g_output_stream_clear_pending;
alias c_g_output_stream_close g_output_stream_close;
alias c_g_output_stream_close_async g_output_stream_close_async;
alias c_g_output_stream_close_finish g_output_stream_close_finish;
alias c_g_output_stream_flush g_output_stream_flush;
alias c_g_output_stream_flush_async g_output_stream_flush_async;
alias c_g_output_stream_flush_finish g_output_stream_flush_finish;
alias c_g_output_stream_has_pending g_output_stream_has_pending;
alias c_g_output_stream_is_closed g_output_stream_is_closed;
alias c_g_output_stream_is_closing g_output_stream_is_closing;
alias c_g_output_stream_printf g_output_stream_printf;
alias c_g_output_stream_set_pending g_output_stream_set_pending;
alias c_g_output_stream_splice g_output_stream_splice;
alias c_g_output_stream_splice_async g_output_stream_splice_async;
alias c_g_output_stream_splice_finish g_output_stream_splice_finish;
alias c_g_output_stream_vprintf g_output_stream_vprintf;
alias c_g_output_stream_write g_output_stream_write;
alias c_g_output_stream_write_all g_output_stream_write_all;
alias c_g_output_stream_write_all_async g_output_stream_write_all_async;
alias c_g_output_stream_write_all_finish g_output_stream_write_all_finish;
alias c_g_output_stream_write_async g_output_stream_write_async;
alias c_g_output_stream_write_bytes g_output_stream_write_bytes;
alias c_g_output_stream_write_bytes_async g_output_stream_write_bytes_async;
alias c_g_output_stream_write_bytes_finish g_output_stream_write_bytes_finish;
alias c_g_output_stream_write_finish g_output_stream_write_finish;
alias c_g_output_stream_writev g_output_stream_writev;
alias c_g_output_stream_writev_all g_output_stream_writev_all;
alias c_g_output_stream_writev_all_async g_output_stream_writev_all_async;
alias c_g_output_stream_writev_all_finish g_output_stream_writev_all_finish;
alias c_g_output_stream_writev_async g_output_stream_writev_async;
alias c_g_output_stream_writev_finish g_output_stream_writev_finish;

// gio.Permission

alias c_g_permission_get_type g_permission_get_type;
alias c_g_permission_acquire g_permission_acquire;
alias c_g_permission_acquire_async g_permission_acquire_async;
alias c_g_permission_acquire_finish g_permission_acquire_finish;
alias c_g_permission_get_allowed g_permission_get_allowed;
alias c_g_permission_get_can_acquire g_permission_get_can_acquire;
alias c_g_permission_get_can_release g_permission_get_can_release;
alias c_g_permission_impl_update g_permission_impl_update;
alias c_g_permission_release g_permission_release;
alias c_g_permission_release_async g_permission_release_async;
alias c_g_permission_release_finish g_permission_release_finish;

// gio.PollableInputStream

alias c_g_pollable_input_stream_get_type g_pollable_input_stream_get_type;
alias c_g_pollable_input_stream_can_poll g_pollable_input_stream_can_poll;
alias c_g_pollable_input_stream_create_source g_pollable_input_stream_create_source;
alias c_g_pollable_input_stream_is_readable g_pollable_input_stream_is_readable;
alias c_g_pollable_input_stream_read_nonblocking g_pollable_input_stream_read_nonblocking;

// gio.PollableOutputStream

alias c_g_pollable_output_stream_get_type g_pollable_output_stream_get_type;
alias c_g_pollable_output_stream_can_poll g_pollable_output_stream_can_poll;
alias c_g_pollable_output_stream_create_source g_pollable_output_stream_create_source;
alias c_g_pollable_output_stream_is_writable g_pollable_output_stream_is_writable;
alias c_g_pollable_output_stream_write_nonblocking g_pollable_output_stream_write_nonblocking;
alias c_g_pollable_output_stream_writev_nonblocking g_pollable_output_stream_writev_nonblocking;

// gio.PowerProfileMonitor

alias c_g_power_profile_monitor_get_type g_power_profile_monitor_get_type;
alias c_g_power_profile_monitor_dup_default g_power_profile_monitor_dup_default;
alias c_g_power_profile_monitor_get_power_saver_enabled g_power_profile_monitor_get_power_saver_enabled;

// gio.PropertyAction

alias c_g_property_action_get_type g_property_action_get_type;
alias c_g_property_action_new g_property_action_new;

// gio.Proxy

alias c_g_proxy_get_type g_proxy_get_type;
alias c_g_proxy_get_default_for_protocol g_proxy_get_default_for_protocol;
alias c_g_proxy_connect g_proxy_connect;
alias c_g_proxy_connect_async g_proxy_connect_async;
alias c_g_proxy_connect_finish g_proxy_connect_finish;
alias c_g_proxy_supports_hostname g_proxy_supports_hostname;

// gio.ProxyAddress

alias c_g_proxy_address_get_type g_proxy_address_get_type;
alias c_g_proxy_address_new g_proxy_address_new;
alias c_g_proxy_address_get_destination_hostname g_proxy_address_get_destination_hostname;
alias c_g_proxy_address_get_destination_port g_proxy_address_get_destination_port;
alias c_g_proxy_address_get_destination_protocol g_proxy_address_get_destination_protocol;
alias c_g_proxy_address_get_password g_proxy_address_get_password;
alias c_g_proxy_address_get_protocol g_proxy_address_get_protocol;
alias c_g_proxy_address_get_uri g_proxy_address_get_uri;
alias c_g_proxy_address_get_username g_proxy_address_get_username;

// gio.ProxyAddressEnumerator

alias c_g_proxy_address_enumerator_get_type g_proxy_address_enumerator_get_type;

// gio.ProxyResolver

alias c_g_proxy_resolver_get_type g_proxy_resolver_get_type;
alias c_g_proxy_resolver_get_default g_proxy_resolver_get_default;
alias c_g_proxy_resolver_is_supported g_proxy_resolver_is_supported;
alias c_g_proxy_resolver_lookup g_proxy_resolver_lookup;
alias c_g_proxy_resolver_lookup_async g_proxy_resolver_lookup_async;
alias c_g_proxy_resolver_lookup_finish g_proxy_resolver_lookup_finish;

// gio.RemoteActionGroup

alias c_g_remote_action_group_get_type g_remote_action_group_get_type;
alias c_g_remote_action_group_activate_action_full g_remote_action_group_activate_action_full;
alias c_g_remote_action_group_change_action_state_full g_remote_action_group_change_action_state_full;

// gio.Resolver

alias c_g_resolver_get_type g_resolver_get_type;
alias c_g_resolver_free_addresses g_resolver_free_addresses;
alias c_g_resolver_free_targets g_resolver_free_targets;
alias c_g_resolver_get_default g_resolver_get_default;
alias c_g_resolver_lookup_by_address g_resolver_lookup_by_address;
alias c_g_resolver_lookup_by_address_async g_resolver_lookup_by_address_async;
alias c_g_resolver_lookup_by_address_finish g_resolver_lookup_by_address_finish;
alias c_g_resolver_lookup_by_name g_resolver_lookup_by_name;
alias c_g_resolver_lookup_by_name_async g_resolver_lookup_by_name_async;
alias c_g_resolver_lookup_by_name_finish g_resolver_lookup_by_name_finish;
alias c_g_resolver_lookup_by_name_with_flags g_resolver_lookup_by_name_with_flags;
alias c_g_resolver_lookup_by_name_with_flags_async g_resolver_lookup_by_name_with_flags_async;
alias c_g_resolver_lookup_by_name_with_flags_finish g_resolver_lookup_by_name_with_flags_finish;
alias c_g_resolver_lookup_records g_resolver_lookup_records;
alias c_g_resolver_lookup_records_async g_resolver_lookup_records_async;
alias c_g_resolver_lookup_records_finish g_resolver_lookup_records_finish;
alias c_g_resolver_lookup_service g_resolver_lookup_service;
alias c_g_resolver_lookup_service_async g_resolver_lookup_service_async;
alias c_g_resolver_lookup_service_finish g_resolver_lookup_service_finish;
alias c_g_resolver_set_default g_resolver_set_default;

// gio.Resource

alias c_g_resource_get_type g_resource_get_type;
alias c_g_resource_new_from_data g_resource_new_from_data;
alias c_g_resources_register g_resources_register;
alias c_g_resources_unregister g_resources_unregister;
alias c_g_resource_enumerate_children g_resource_enumerate_children;
alias c_g_resource_get_info g_resource_get_info;
alias c_g_resource_lookup_data g_resource_lookup_data;
alias c_g_resource_open_stream g_resource_open_stream;
alias c_g_resource_ref g_resource_ref;
alias c_g_resource_unref g_resource_unref;
alias c_g_resource_load g_resource_load;
alias c_g_resources_enumerate_children g_resources_enumerate_children;
alias c_g_resources_get_info g_resources_get_info;
alias c_g_resources_lookup_data g_resources_lookup_data;
alias c_g_resources_open_stream g_resources_open_stream;

// gio.Seekable

alias c_g_seekable_get_type g_seekable_get_type;
alias c_g_seekable_can_seek g_seekable_can_seek;
alias c_g_seekable_can_truncate g_seekable_can_truncate;
alias c_g_seekable_seek g_seekable_seek;
alias c_g_seekable_tell g_seekable_tell;
alias c_g_seekable_truncate g_seekable_truncate;

// gio.Settings

alias c_g_settings_get_type g_settings_get_type;
alias c_g_settings_new g_settings_new;
alias c_g_settings_new_full g_settings_new_full;
alias c_g_settings_new_with_backend g_settings_new_with_backend;
alias c_g_settings_new_with_backend_and_path g_settings_new_with_backend_and_path;
alias c_g_settings_new_with_path g_settings_new_with_path;
alias c_g_settings_list_relocatable_schemas g_settings_list_relocatable_schemas;
alias c_g_settings_list_schemas g_settings_list_schemas;
alias c_g_settings_sync g_settings_sync;
alias c_g_settings_unbind g_settings_unbind;
alias c_g_settings_apply g_settings_apply;
alias c_g_settings_bind g_settings_bind;
alias c_g_settings_bind_with_mapping g_settings_bind_with_mapping;
alias c_g_settings_bind_writable g_settings_bind_writable;
alias c_g_settings_create_action g_settings_create_action;
alias c_g_settings_delay g_settings_delay;
alias c_g_settings_get g_settings_get;
alias c_g_settings_get_boolean g_settings_get_boolean;
alias c_g_settings_get_child g_settings_get_child;
alias c_g_settings_get_default_value g_settings_get_default_value;
alias c_g_settings_get_double g_settings_get_double;
alias c_g_settings_get_enum g_settings_get_enum;
alias c_g_settings_get_flags g_settings_get_flags;
alias c_g_settings_get_has_unapplied g_settings_get_has_unapplied;
alias c_g_settings_get_int g_settings_get_int;
alias c_g_settings_get_int64 g_settings_get_int64;
alias c_g_settings_get_mapped g_settings_get_mapped;
alias c_g_settings_get_range g_settings_get_range;
alias c_g_settings_get_string g_settings_get_string;
alias c_g_settings_get_strv g_settings_get_strv;
alias c_g_settings_get_uint g_settings_get_uint;
alias c_g_settings_get_uint64 g_settings_get_uint64;
alias c_g_settings_get_user_value g_settings_get_user_value;
alias c_g_settings_get_value g_settings_get_value;
alias c_g_settings_is_writable g_settings_is_writable;
alias c_g_settings_list_children g_settings_list_children;
alias c_g_settings_list_keys g_settings_list_keys;
alias c_g_settings_range_check g_settings_range_check;
alias c_g_settings_reset g_settings_reset;
alias c_g_settings_revert g_settings_revert;
alias c_g_settings_set g_settings_set;
alias c_g_settings_set_boolean g_settings_set_boolean;
alias c_g_settings_set_double g_settings_set_double;
alias c_g_settings_set_enum g_settings_set_enum;
alias c_g_settings_set_flags g_settings_set_flags;
alias c_g_settings_set_int g_settings_set_int;
alias c_g_settings_set_int64 g_settings_set_int64;
alias c_g_settings_set_string g_settings_set_string;
alias c_g_settings_set_strv g_settings_set_strv;
alias c_g_settings_set_uint g_settings_set_uint;
alias c_g_settings_set_uint64 g_settings_set_uint64;
alias c_g_settings_set_value g_settings_set_value;

// gio.SettingsBackend

alias c_g_settings_backend_get_type g_settings_backend_get_type;
alias c_g_settings_backend_flatten_tree g_settings_backend_flatten_tree;
alias c_g_settings_backend_get_default g_settings_backend_get_default;
alias c_g_settings_backend_changed g_settings_backend_changed;
alias c_g_settings_backend_changed_tree g_settings_backend_changed_tree;
alias c_g_settings_backend_keys_changed g_settings_backend_keys_changed;
alias c_g_settings_backend_path_changed g_settings_backend_path_changed;
alias c_g_settings_backend_path_writable_changed g_settings_backend_path_writable_changed;
alias c_g_settings_backend_writable_changed g_settings_backend_writable_changed;
alias c_g_keyfile_settings_backend_new g_keyfile_settings_backend_new;
alias c_g_memory_settings_backend_new g_memory_settings_backend_new;
alias c_g_null_settings_backend_new g_null_settings_backend_new;

// gio.SettingsSchema

alias c_g_settings_schema_get_type g_settings_schema_get_type;
alias c_g_settings_schema_get_id g_settings_schema_get_id;
alias c_g_settings_schema_get_key g_settings_schema_get_key;
alias c_g_settings_schema_get_path g_settings_schema_get_path;
alias c_g_settings_schema_has_key g_settings_schema_has_key;
alias c_g_settings_schema_list_children g_settings_schema_list_children;
alias c_g_settings_schema_list_keys g_settings_schema_list_keys;
alias c_g_settings_schema_ref g_settings_schema_ref;
alias c_g_settings_schema_unref g_settings_schema_unref;

// gio.SettingsSchemaKey

alias c_g_settings_schema_key_get_type g_settings_schema_key_get_type;
alias c_g_settings_schema_key_get_default_value g_settings_schema_key_get_default_value;
alias c_g_settings_schema_key_get_description g_settings_schema_key_get_description;
alias c_g_settings_schema_key_get_name g_settings_schema_key_get_name;
alias c_g_settings_schema_key_get_range g_settings_schema_key_get_range;
alias c_g_settings_schema_key_get_summary g_settings_schema_key_get_summary;
alias c_g_settings_schema_key_get_value_type g_settings_schema_key_get_value_type;
alias c_g_settings_schema_key_range_check g_settings_schema_key_range_check;
alias c_g_settings_schema_key_ref g_settings_schema_key_ref;
alias c_g_settings_schema_key_unref g_settings_schema_key_unref;

// gio.SettingsSchemaSource

alias c_g_settings_schema_source_get_type g_settings_schema_source_get_type;
alias c_g_settings_schema_source_new_from_directory g_settings_schema_source_new_from_directory;
alias c_g_settings_schema_source_list_schemas g_settings_schema_source_list_schemas;
alias c_g_settings_schema_source_lookup g_settings_schema_source_lookup;
alias c_g_settings_schema_source_ref g_settings_schema_source_ref;
alias c_g_settings_schema_source_unref g_settings_schema_source_unref;
alias c_g_settings_schema_source_get_default g_settings_schema_source_get_default;

// gio.SimpleAction

alias c_g_simple_action_get_type g_simple_action_get_type;
alias c_g_simple_action_new g_simple_action_new;
alias c_g_simple_action_new_stateful g_simple_action_new_stateful;
alias c_g_simple_action_set_enabled g_simple_action_set_enabled;
alias c_g_simple_action_set_state g_simple_action_set_state;
alias c_g_simple_action_set_state_hint g_simple_action_set_state_hint;

// gio.SimpleActionGroup

alias c_g_simple_action_group_get_type g_simple_action_group_get_type;
alias c_g_simple_action_group_new g_simple_action_group_new;
alias c_g_simple_action_group_add_entries g_simple_action_group_add_entries;
alias c_g_simple_action_group_insert g_simple_action_group_insert;
alias c_g_simple_action_group_lookup g_simple_action_group_lookup;
alias c_g_simple_action_group_remove g_simple_action_group_remove;

// gio.SimpleAsyncResult

alias c_g_simple_async_result_get_type g_simple_async_result_get_type;
alias c_g_simple_async_result_new g_simple_async_result_new;
alias c_g_simple_async_result_new_error g_simple_async_result_new_error;
alias c_g_simple_async_result_new_from_error g_simple_async_result_new_from_error;
alias c_g_simple_async_result_new_take_error g_simple_async_result_new_take_error;
alias c_g_simple_async_result_is_valid g_simple_async_result_is_valid;
alias c_g_simple_async_result_complete g_simple_async_result_complete;
alias c_g_simple_async_result_complete_in_idle g_simple_async_result_complete_in_idle;
alias c_g_simple_async_result_get_op_res_gboolean g_simple_async_result_get_op_res_gboolean;
alias c_g_simple_async_result_get_op_res_gpointer g_simple_async_result_get_op_res_gpointer;
alias c_g_simple_async_result_get_op_res_gssize g_simple_async_result_get_op_res_gssize;
alias c_g_simple_async_result_get_source_tag g_simple_async_result_get_source_tag;
alias c_g_simple_async_result_propagate_error g_simple_async_result_propagate_error;
alias c_g_simple_async_result_run_in_thread g_simple_async_result_run_in_thread;
alias c_g_simple_async_result_set_check_cancellable g_simple_async_result_set_check_cancellable;
alias c_g_simple_async_result_set_error g_simple_async_result_set_error;
alias c_g_simple_async_result_set_error_va g_simple_async_result_set_error_va;
alias c_g_simple_async_result_set_from_error g_simple_async_result_set_from_error;
alias c_g_simple_async_result_set_handle_cancellation g_simple_async_result_set_handle_cancellation;
alias c_g_simple_async_result_set_op_res_gboolean g_simple_async_result_set_op_res_gboolean;
alias c_g_simple_async_result_set_op_res_gpointer g_simple_async_result_set_op_res_gpointer;
alias c_g_simple_async_result_set_op_res_gssize g_simple_async_result_set_op_res_gssize;
alias c_g_simple_async_result_take_error g_simple_async_result_take_error;
alias c_g_simple_async_report_error_in_idle g_simple_async_report_error_in_idle;
alias c_g_simple_async_report_gerror_in_idle g_simple_async_report_gerror_in_idle;
alias c_g_simple_async_report_take_gerror_in_idle g_simple_async_report_take_gerror_in_idle;

// gio.SimpleIOStream

alias c_g_simple_io_stream_get_type g_simple_io_stream_get_type;
alias c_g_simple_io_stream_new g_simple_io_stream_new;

// gio.SimplePermission

alias c_g_simple_permission_get_type g_simple_permission_get_type;
alias c_g_simple_permission_new g_simple_permission_new;

// gio.SimpleProxyResolver

alias c_g_simple_proxy_resolver_get_type g_simple_proxy_resolver_get_type;
alias c_g_simple_proxy_resolver_new g_simple_proxy_resolver_new;
alias c_g_simple_proxy_resolver_set_default_proxy g_simple_proxy_resolver_set_default_proxy;
alias c_g_simple_proxy_resolver_set_ignore_hosts g_simple_proxy_resolver_set_ignore_hosts;
alias c_g_simple_proxy_resolver_set_uri_proxy g_simple_proxy_resolver_set_uri_proxy;

// gio.Socket

alias c_g_socket_get_type g_socket_get_type;
alias c_g_socket_new g_socket_new;
alias c_g_socket_new_from_fd g_socket_new_from_fd;
alias c_g_socket_accept g_socket_accept;
alias c_g_socket_bind g_socket_bind;
alias c_g_socket_check_connect_result g_socket_check_connect_result;
alias c_g_socket_close g_socket_close;
alias c_g_socket_condition_check g_socket_condition_check;
alias c_g_socket_condition_timed_wait g_socket_condition_timed_wait;
alias c_g_socket_condition_wait g_socket_condition_wait;
alias c_g_socket_connect g_socket_connect;
alias c_g_socket_connection_factory_create_connection g_socket_connection_factory_create_connection;
alias c_g_socket_create_source g_socket_create_source;
alias c_g_socket_get_available_bytes g_socket_get_available_bytes;
alias c_g_socket_get_blocking g_socket_get_blocking;
alias c_g_socket_get_broadcast g_socket_get_broadcast;
alias c_g_socket_get_credentials g_socket_get_credentials;
alias c_g_socket_get_family g_socket_get_family;
alias c_g_socket_get_fd g_socket_get_fd;
alias c_g_socket_get_keepalive g_socket_get_keepalive;
alias c_g_socket_get_listen_backlog g_socket_get_listen_backlog;
alias c_g_socket_get_local_address g_socket_get_local_address;
alias c_g_socket_get_multicast_loopback g_socket_get_multicast_loopback;
alias c_g_socket_get_multicast_ttl g_socket_get_multicast_ttl;
alias c_g_socket_get_option g_socket_get_option;
alias c_g_socket_get_protocol g_socket_get_protocol;
alias c_g_socket_get_remote_address g_socket_get_remote_address;
alias c_g_socket_get_socket_type g_socket_get_socket_type;
alias c_g_socket_get_timeout g_socket_get_timeout;
alias c_g_socket_get_ttl g_socket_get_ttl;
alias c_g_socket_is_closed g_socket_is_closed;
alias c_g_socket_is_connected g_socket_is_connected;
alias c_g_socket_join_multicast_group g_socket_join_multicast_group;
alias c_g_socket_join_multicast_group_ssm g_socket_join_multicast_group_ssm;
alias c_g_socket_leave_multicast_group g_socket_leave_multicast_group;
alias c_g_socket_leave_multicast_group_ssm g_socket_leave_multicast_group_ssm;
alias c_g_socket_listen g_socket_listen;
alias c_g_socket_receive g_socket_receive;
alias c_g_socket_receive_from g_socket_receive_from;
alias c_g_socket_receive_message g_socket_receive_message;
alias c_g_socket_receive_messages g_socket_receive_messages;
alias c_g_socket_receive_with_blocking g_socket_receive_with_blocking;
alias c_g_socket_send g_socket_send;
alias c_g_socket_send_message g_socket_send_message;
alias c_g_socket_send_message_with_timeout g_socket_send_message_with_timeout;
alias c_g_socket_send_messages g_socket_send_messages;
alias c_g_socket_send_to g_socket_send_to;
alias c_g_socket_send_with_blocking g_socket_send_with_blocking;
alias c_g_socket_set_blocking g_socket_set_blocking;
alias c_g_socket_set_broadcast g_socket_set_broadcast;
alias c_g_socket_set_keepalive g_socket_set_keepalive;
alias c_g_socket_set_listen_backlog g_socket_set_listen_backlog;
alias c_g_socket_set_multicast_loopback g_socket_set_multicast_loopback;
alias c_g_socket_set_multicast_ttl g_socket_set_multicast_ttl;
alias c_g_socket_set_option g_socket_set_option;
alias c_g_socket_set_timeout g_socket_set_timeout;
alias c_g_socket_set_ttl g_socket_set_ttl;
alias c_g_socket_shutdown g_socket_shutdown;
alias c_g_socket_speaks_ipv4 g_socket_speaks_ipv4;

// gio.SocketAddress

alias c_g_socket_address_get_type g_socket_address_get_type;
alias c_g_socket_address_new_from_native g_socket_address_new_from_native;
alias c_g_socket_address_get_family g_socket_address_get_family;
alias c_g_socket_address_get_native_size g_socket_address_get_native_size;
alias c_g_socket_address_to_native g_socket_address_to_native;

// gio.SocketAddressEnumerator

alias c_g_socket_address_enumerator_get_type g_socket_address_enumerator_get_type;
alias c_g_socket_address_enumerator_next g_socket_address_enumerator_next;
alias c_g_socket_address_enumerator_next_async g_socket_address_enumerator_next_async;
alias c_g_socket_address_enumerator_next_finish g_socket_address_enumerator_next_finish;

// gio.SocketClient

alias c_g_socket_client_get_type g_socket_client_get_type;
alias c_g_socket_client_new g_socket_client_new;
alias c_g_socket_client_add_application_proxy g_socket_client_add_application_proxy;
alias c_g_socket_client_connect g_socket_client_connect;
alias c_g_socket_client_connect_async g_socket_client_connect_async;
alias c_g_socket_client_connect_finish g_socket_client_connect_finish;
alias c_g_socket_client_connect_to_host g_socket_client_connect_to_host;
alias c_g_socket_client_connect_to_host_async g_socket_client_connect_to_host_async;
alias c_g_socket_client_connect_to_host_finish g_socket_client_connect_to_host_finish;
alias c_g_socket_client_connect_to_service g_socket_client_connect_to_service;
alias c_g_socket_client_connect_to_service_async g_socket_client_connect_to_service_async;
alias c_g_socket_client_connect_to_service_finish g_socket_client_connect_to_service_finish;
alias c_g_socket_client_connect_to_uri g_socket_client_connect_to_uri;
alias c_g_socket_client_connect_to_uri_async g_socket_client_connect_to_uri_async;
alias c_g_socket_client_connect_to_uri_finish g_socket_client_connect_to_uri_finish;
alias c_g_socket_client_get_enable_proxy g_socket_client_get_enable_proxy;
alias c_g_socket_client_get_family g_socket_client_get_family;
alias c_g_socket_client_get_local_address g_socket_client_get_local_address;
alias c_g_socket_client_get_protocol g_socket_client_get_protocol;
alias c_g_socket_client_get_proxy_resolver g_socket_client_get_proxy_resolver;
alias c_g_socket_client_get_socket_type g_socket_client_get_socket_type;
alias c_g_socket_client_get_timeout g_socket_client_get_timeout;
alias c_g_socket_client_get_tls g_socket_client_get_tls;
alias c_g_socket_client_get_tls_validation_flags g_socket_client_get_tls_validation_flags;
alias c_g_socket_client_set_enable_proxy g_socket_client_set_enable_proxy;
alias c_g_socket_client_set_family g_socket_client_set_family;
alias c_g_socket_client_set_local_address g_socket_client_set_local_address;
alias c_g_socket_client_set_protocol g_socket_client_set_protocol;
alias c_g_socket_client_set_proxy_resolver g_socket_client_set_proxy_resolver;
alias c_g_socket_client_set_socket_type g_socket_client_set_socket_type;
alias c_g_socket_client_set_timeout g_socket_client_set_timeout;
alias c_g_socket_client_set_tls g_socket_client_set_tls;
alias c_g_socket_client_set_tls_validation_flags g_socket_client_set_tls_validation_flags;

// gio.SocketConnectable

alias c_g_socket_connectable_get_type g_socket_connectable_get_type;
alias c_g_socket_connectable_enumerate g_socket_connectable_enumerate;
alias c_g_socket_connectable_proxy_enumerate g_socket_connectable_proxy_enumerate;
alias c_g_socket_connectable_to_string g_socket_connectable_to_string;

// gio.SocketConnection

alias c_g_socket_connection_get_type g_socket_connection_get_type;
alias c_g_socket_connection_factory_lookup_type g_socket_connection_factory_lookup_type;
alias c_g_socket_connection_factory_register_type g_socket_connection_factory_register_type;
alias c_g_socket_connection_connect g_socket_connection_connect;
alias c_g_socket_connection_connect_async g_socket_connection_connect_async;
alias c_g_socket_connection_connect_finish g_socket_connection_connect_finish;
alias c_g_socket_connection_get_local_address g_socket_connection_get_local_address;
alias c_g_socket_connection_get_remote_address g_socket_connection_get_remote_address;
alias c_g_socket_connection_get_socket g_socket_connection_get_socket;
alias c_g_socket_connection_is_connected g_socket_connection_is_connected;

// gio.SocketControlMessage

alias c_g_socket_control_message_get_type g_socket_control_message_get_type;
alias c_g_socket_control_message_deserialize g_socket_control_message_deserialize;
alias c_g_socket_control_message_get_level g_socket_control_message_get_level;
alias c_g_socket_control_message_get_msg_type g_socket_control_message_get_msg_type;
alias c_g_socket_control_message_get_size g_socket_control_message_get_size;
alias c_g_socket_control_message_serialize g_socket_control_message_serialize;

// gio.SocketListener

alias c_g_socket_listener_get_type g_socket_listener_get_type;
alias c_g_socket_listener_new g_socket_listener_new;
alias c_g_socket_listener_accept g_socket_listener_accept;
alias c_g_socket_listener_accept_async g_socket_listener_accept_async;
alias c_g_socket_listener_accept_finish g_socket_listener_accept_finish;
alias c_g_socket_listener_accept_socket g_socket_listener_accept_socket;
alias c_g_socket_listener_accept_socket_async g_socket_listener_accept_socket_async;
alias c_g_socket_listener_accept_socket_finish g_socket_listener_accept_socket_finish;
alias c_g_socket_listener_add_address g_socket_listener_add_address;
alias c_g_socket_listener_add_any_inet_port g_socket_listener_add_any_inet_port;
alias c_g_socket_listener_add_inet_port g_socket_listener_add_inet_port;
alias c_g_socket_listener_add_socket g_socket_listener_add_socket;
alias c_g_socket_listener_close g_socket_listener_close;
alias c_g_socket_listener_set_backlog g_socket_listener_set_backlog;

// gio.SocketService

alias c_g_socket_service_get_type g_socket_service_get_type;
alias c_g_socket_service_new g_socket_service_new;
alias c_g_socket_service_is_active g_socket_service_is_active;
alias c_g_socket_service_start g_socket_service_start;
alias c_g_socket_service_stop g_socket_service_stop;

// gio.SrvTarget

alias c_g_srv_target_get_type g_srv_target_get_type;
alias c_g_srv_target_new g_srv_target_new;
alias c_g_srv_target_copy g_srv_target_copy;
alias c_g_srv_target_free g_srv_target_free;
alias c_g_srv_target_get_hostname g_srv_target_get_hostname;
alias c_g_srv_target_get_port g_srv_target_get_port;
alias c_g_srv_target_get_priority g_srv_target_get_priority;
alias c_g_srv_target_get_weight g_srv_target_get_weight;
alias c_g_srv_target_list_sort g_srv_target_list_sort;

// gio.StaticResource

alias c_g_static_resource_fini g_static_resource_fini;
alias c_g_static_resource_get_resource g_static_resource_get_resource;
alias c_g_static_resource_init g_static_resource_init;

// gio.Subprocess

alias c_g_subprocess_get_type g_subprocess_get_type;
alias c_g_subprocess_new g_subprocess_new;
alias c_g_subprocess_newv g_subprocess_newv;
alias c_g_subprocess_communicate g_subprocess_communicate;
alias c_g_subprocess_communicate_async g_subprocess_communicate_async;
alias c_g_subprocess_communicate_finish g_subprocess_communicate_finish;
alias c_g_subprocess_communicate_utf8 g_subprocess_communicate_utf8;
alias c_g_subprocess_communicate_utf8_async g_subprocess_communicate_utf8_async;
alias c_g_subprocess_communicate_utf8_finish g_subprocess_communicate_utf8_finish;
alias c_g_subprocess_force_exit g_subprocess_force_exit;
alias c_g_subprocess_get_exit_status g_subprocess_get_exit_status;
alias c_g_subprocess_get_identifier g_subprocess_get_identifier;
alias c_g_subprocess_get_if_exited g_subprocess_get_if_exited;
alias c_g_subprocess_get_if_signaled g_subprocess_get_if_signaled;
alias c_g_subprocess_get_status g_subprocess_get_status;
alias c_g_subprocess_get_stderr_pipe g_subprocess_get_stderr_pipe;
alias c_g_subprocess_get_stdin_pipe g_subprocess_get_stdin_pipe;
alias c_g_subprocess_get_stdout_pipe g_subprocess_get_stdout_pipe;
alias c_g_subprocess_get_successful g_subprocess_get_successful;
alias c_g_subprocess_get_term_sig g_subprocess_get_term_sig;
alias c_g_subprocess_send_signal g_subprocess_send_signal;
alias c_g_subprocess_wait g_subprocess_wait;
alias c_g_subprocess_wait_async g_subprocess_wait_async;
alias c_g_subprocess_wait_check g_subprocess_wait_check;
alias c_g_subprocess_wait_check_async g_subprocess_wait_check_async;
alias c_g_subprocess_wait_check_finish g_subprocess_wait_check_finish;
alias c_g_subprocess_wait_finish g_subprocess_wait_finish;

// gio.SubprocessLauncher

alias c_g_subprocess_launcher_get_type g_subprocess_launcher_get_type;
alias c_g_subprocess_launcher_new g_subprocess_launcher_new;
alias c_g_subprocess_launcher_close g_subprocess_launcher_close;
alias c_g_subprocess_launcher_getenv g_subprocess_launcher_getenv;
alias c_g_subprocess_launcher_set_child_setup g_subprocess_launcher_set_child_setup;
alias c_g_subprocess_launcher_set_cwd g_subprocess_launcher_set_cwd;
alias c_g_subprocess_launcher_set_environ g_subprocess_launcher_set_environ;
alias c_g_subprocess_launcher_set_flags g_subprocess_launcher_set_flags;
alias c_g_subprocess_launcher_set_stderr_file_path g_subprocess_launcher_set_stderr_file_path;
alias c_g_subprocess_launcher_set_stdin_file_path g_subprocess_launcher_set_stdin_file_path;
alias c_g_subprocess_launcher_set_stdout_file_path g_subprocess_launcher_set_stdout_file_path;
alias c_g_subprocess_launcher_setenv g_subprocess_launcher_setenv;
alias c_g_subprocess_launcher_spawn g_subprocess_launcher_spawn;
alias c_g_subprocess_launcher_spawnv g_subprocess_launcher_spawnv;
alias c_g_subprocess_launcher_take_fd g_subprocess_launcher_take_fd;
alias c_g_subprocess_launcher_take_stderr_fd g_subprocess_launcher_take_stderr_fd;
alias c_g_subprocess_launcher_take_stdin_fd g_subprocess_launcher_take_stdin_fd;
alias c_g_subprocess_launcher_take_stdout_fd g_subprocess_launcher_take_stdout_fd;
alias c_g_subprocess_launcher_unsetenv g_subprocess_launcher_unsetenv;

// gio.Task

alias c_g_task_get_type g_task_get_type;
alias c_g_task_new g_task_new;
alias c_g_task_is_valid g_task_is_valid;
alias c_g_task_report_error g_task_report_error;
alias c_g_task_report_new_error g_task_report_new_error;
alias c_g_task_attach_source g_task_attach_source;
alias c_g_task_get_cancellable g_task_get_cancellable;
alias c_g_task_get_check_cancellable g_task_get_check_cancellable;
alias c_g_task_get_completed g_task_get_completed;
alias c_g_task_get_context g_task_get_context;
alias c_g_task_get_name g_task_get_name;
alias c_g_task_get_priority g_task_get_priority;
alias c_g_task_get_return_on_cancel g_task_get_return_on_cancel;
alias c_g_task_get_source_object g_task_get_source_object;
alias c_g_task_get_source_tag g_task_get_source_tag;
alias c_g_task_get_task_data g_task_get_task_data;
alias c_g_task_had_error g_task_had_error;
alias c_g_task_propagate_boolean g_task_propagate_boolean;
alias c_g_task_propagate_int g_task_propagate_int;
alias c_g_task_propagate_pointer g_task_propagate_pointer;
alias c_g_task_propagate_value g_task_propagate_value;
alias c_g_task_return_boolean g_task_return_boolean;
alias c_g_task_return_error g_task_return_error;
alias c_g_task_return_error_if_cancelled g_task_return_error_if_cancelled;
alias c_g_task_return_int g_task_return_int;
alias c_g_task_return_new_error g_task_return_new_error;
alias c_g_task_return_pointer g_task_return_pointer;
alias c_g_task_return_value g_task_return_value;
alias c_g_task_run_in_thread g_task_run_in_thread;
alias c_g_task_run_in_thread_sync g_task_run_in_thread_sync;
alias c_g_task_set_check_cancellable g_task_set_check_cancellable;
alias c_g_task_set_name g_task_set_name;
alias c_g_task_set_priority g_task_set_priority;
alias c_g_task_set_return_on_cancel g_task_set_return_on_cancel;
alias c_g_task_set_source_tag g_task_set_source_tag;
alias c_g_task_set_task_data g_task_set_task_data;

// gio.TcpConnection

alias c_g_tcp_connection_get_type g_tcp_connection_get_type;
alias c_g_tcp_connection_get_graceful_disconnect g_tcp_connection_get_graceful_disconnect;
alias c_g_tcp_connection_set_graceful_disconnect g_tcp_connection_set_graceful_disconnect;

// gio.TcpWrapperConnection

alias c_g_tcp_wrapper_connection_get_type g_tcp_wrapper_connection_get_type;
alias c_g_tcp_wrapper_connection_new g_tcp_wrapper_connection_new;
alias c_g_tcp_wrapper_connection_get_base_io_stream g_tcp_wrapper_connection_get_base_io_stream;

// gio.TestDBus

alias c_g_test_dbus_get_type g_test_dbus_get_type;
alias c_g_test_dbus_new g_test_dbus_new;
alias c_g_test_dbus_unset g_test_dbus_unset;
alias c_g_test_dbus_add_service_dir g_test_dbus_add_service_dir;
alias c_g_test_dbus_down g_test_dbus_down;
alias c_g_test_dbus_get_bus_address g_test_dbus_get_bus_address;
alias c_g_test_dbus_get_flags g_test_dbus_get_flags;
alias c_g_test_dbus_stop g_test_dbus_stop;
alias c_g_test_dbus_up g_test_dbus_up;

// gio.ThemedIcon

alias c_g_themed_icon_get_type g_themed_icon_get_type;
alias c_g_themed_icon_new g_themed_icon_new;
alias c_g_themed_icon_new_from_names g_themed_icon_new_from_names;
alias c_g_themed_icon_new_with_default_fallbacks g_themed_icon_new_with_default_fallbacks;
alias c_g_themed_icon_append_name g_themed_icon_append_name;
alias c_g_themed_icon_get_names g_themed_icon_get_names;
alias c_g_themed_icon_prepend_name g_themed_icon_prepend_name;

// gio.ThreadedSocketService

alias c_g_threaded_socket_service_get_type g_threaded_socket_service_get_type;
alias c_g_threaded_socket_service_new g_threaded_socket_service_new;

// gio.TlsBackend

alias c_g_tls_backend_get_type g_tls_backend_get_type;
alias c_g_tls_backend_get_default g_tls_backend_get_default;
alias c_g_tls_backend_get_certificate_type g_tls_backend_get_certificate_type;
alias c_g_tls_backend_get_client_connection_type g_tls_backend_get_client_connection_type;
alias c_g_tls_backend_get_default_database g_tls_backend_get_default_database;
alias c_g_tls_backend_get_dtls_client_connection_type g_tls_backend_get_dtls_client_connection_type;
alias c_g_tls_backend_get_dtls_server_connection_type g_tls_backend_get_dtls_server_connection_type;
alias c_g_tls_backend_get_file_database_type g_tls_backend_get_file_database_type;
alias c_g_tls_backend_get_server_connection_type g_tls_backend_get_server_connection_type;
alias c_g_tls_backend_set_default_database g_tls_backend_set_default_database;
alias c_g_tls_backend_supports_dtls g_tls_backend_supports_dtls;
alias c_g_tls_backend_supports_tls g_tls_backend_supports_tls;

// gio.TlsCertificate

alias c_g_tls_certificate_get_type g_tls_certificate_get_type;
alias c_g_tls_certificate_new_from_file g_tls_certificate_new_from_file;
alias c_g_tls_certificate_new_from_file_with_password g_tls_certificate_new_from_file_with_password;
alias c_g_tls_certificate_new_from_files g_tls_certificate_new_from_files;
alias c_g_tls_certificate_new_from_pem g_tls_certificate_new_from_pem;
alias c_g_tls_certificate_new_from_pkcs11_uris g_tls_certificate_new_from_pkcs11_uris;
alias c_g_tls_certificate_new_from_pkcs12 g_tls_certificate_new_from_pkcs12;
alias c_g_tls_certificate_list_new_from_file g_tls_certificate_list_new_from_file;
alias c_g_tls_certificate_get_dns_names g_tls_certificate_get_dns_names;
alias c_g_tls_certificate_get_ip_addresses g_tls_certificate_get_ip_addresses;
alias c_g_tls_certificate_get_issuer g_tls_certificate_get_issuer;
alias c_g_tls_certificate_get_issuer_name g_tls_certificate_get_issuer_name;
alias c_g_tls_certificate_get_not_valid_after g_tls_certificate_get_not_valid_after;
alias c_g_tls_certificate_get_not_valid_before g_tls_certificate_get_not_valid_before;
alias c_g_tls_certificate_get_subject_name g_tls_certificate_get_subject_name;
alias c_g_tls_certificate_is_same g_tls_certificate_is_same;
alias c_g_tls_certificate_verify g_tls_certificate_verify;

// gio.TlsClientConnection

alias c_g_tls_client_connection_get_type g_tls_client_connection_get_type;
alias c_g_tls_client_connection_new g_tls_client_connection_new;
alias c_g_tls_client_connection_copy_session_state g_tls_client_connection_copy_session_state;
alias c_g_tls_client_connection_get_accepted_cas g_tls_client_connection_get_accepted_cas;
alias c_g_tls_client_connection_get_server_identity g_tls_client_connection_get_server_identity;
alias c_g_tls_client_connection_get_use_ssl3 g_tls_client_connection_get_use_ssl3;
alias c_g_tls_client_connection_get_validation_flags g_tls_client_connection_get_validation_flags;
alias c_g_tls_client_connection_set_server_identity g_tls_client_connection_set_server_identity;
alias c_g_tls_client_connection_set_use_ssl3 g_tls_client_connection_set_use_ssl3;
alias c_g_tls_client_connection_set_validation_flags g_tls_client_connection_set_validation_flags;

// gio.TlsConnection

alias c_g_tls_connection_get_type g_tls_connection_get_type;
alias c_g_tls_connection_emit_accept_certificate g_tls_connection_emit_accept_certificate;
alias c_g_tls_connection_get_certificate g_tls_connection_get_certificate;
alias c_g_tls_connection_get_channel_binding_data g_tls_connection_get_channel_binding_data;
alias c_g_tls_connection_get_ciphersuite_name g_tls_connection_get_ciphersuite_name;
alias c_g_tls_connection_get_database g_tls_connection_get_database;
alias c_g_tls_connection_get_interaction g_tls_connection_get_interaction;
alias c_g_tls_connection_get_negotiated_protocol g_tls_connection_get_negotiated_protocol;
alias c_g_tls_connection_get_peer_certificate g_tls_connection_get_peer_certificate;
alias c_g_tls_connection_get_peer_certificate_errors g_tls_connection_get_peer_certificate_errors;
alias c_g_tls_connection_get_protocol_version g_tls_connection_get_protocol_version;
alias c_g_tls_connection_get_rehandshake_mode g_tls_connection_get_rehandshake_mode;
alias c_g_tls_connection_get_require_close_notify g_tls_connection_get_require_close_notify;
alias c_g_tls_connection_get_use_system_certdb g_tls_connection_get_use_system_certdb;
alias c_g_tls_connection_handshake g_tls_connection_handshake;
alias c_g_tls_connection_handshake_async g_tls_connection_handshake_async;
alias c_g_tls_connection_handshake_finish g_tls_connection_handshake_finish;
alias c_g_tls_connection_set_advertised_protocols g_tls_connection_set_advertised_protocols;
alias c_g_tls_connection_set_certificate g_tls_connection_set_certificate;
alias c_g_tls_connection_set_database g_tls_connection_set_database;
alias c_g_tls_connection_set_interaction g_tls_connection_set_interaction;
alias c_g_tls_connection_set_rehandshake_mode g_tls_connection_set_rehandshake_mode;
alias c_g_tls_connection_set_require_close_notify g_tls_connection_set_require_close_notify;
alias c_g_tls_connection_set_use_system_certdb g_tls_connection_set_use_system_certdb;

// gio.TlsDatabase

alias c_g_tls_database_get_type g_tls_database_get_type;
alias c_g_tls_database_create_certificate_handle g_tls_database_create_certificate_handle;
alias c_g_tls_database_lookup_certificate_for_handle g_tls_database_lookup_certificate_for_handle;
alias c_g_tls_database_lookup_certificate_for_handle_async g_tls_database_lookup_certificate_for_handle_async;
alias c_g_tls_database_lookup_certificate_for_handle_finish g_tls_database_lookup_certificate_for_handle_finish;
alias c_g_tls_database_lookup_certificate_issuer g_tls_database_lookup_certificate_issuer;
alias c_g_tls_database_lookup_certificate_issuer_async g_tls_database_lookup_certificate_issuer_async;
alias c_g_tls_database_lookup_certificate_issuer_finish g_tls_database_lookup_certificate_issuer_finish;
alias c_g_tls_database_lookup_certificates_issued_by g_tls_database_lookup_certificates_issued_by;
alias c_g_tls_database_lookup_certificates_issued_by_async g_tls_database_lookup_certificates_issued_by_async;
alias c_g_tls_database_lookup_certificates_issued_by_finish g_tls_database_lookup_certificates_issued_by_finish;
alias c_g_tls_database_verify_chain g_tls_database_verify_chain;
alias c_g_tls_database_verify_chain_async g_tls_database_verify_chain_async;
alias c_g_tls_database_verify_chain_finish g_tls_database_verify_chain_finish;

// gio.TlsFileDatabase

alias c_g_tls_file_database_get_type g_tls_file_database_get_type;
alias c_g_tls_file_database_new g_tls_file_database_new;

// gio.TlsInteraction

alias c_g_tls_interaction_get_type g_tls_interaction_get_type;
alias c_g_tls_interaction_ask_password g_tls_interaction_ask_password;
alias c_g_tls_interaction_ask_password_async g_tls_interaction_ask_password_async;
alias c_g_tls_interaction_ask_password_finish g_tls_interaction_ask_password_finish;
alias c_g_tls_interaction_invoke_ask_password g_tls_interaction_invoke_ask_password;
alias c_g_tls_interaction_invoke_request_certificate g_tls_interaction_invoke_request_certificate;
alias c_g_tls_interaction_request_certificate g_tls_interaction_request_certificate;
alias c_g_tls_interaction_request_certificate_async g_tls_interaction_request_certificate_async;
alias c_g_tls_interaction_request_certificate_finish g_tls_interaction_request_certificate_finish;

// gio.TlsPassword

alias c_g_tls_password_get_type g_tls_password_get_type;
alias c_g_tls_password_new g_tls_password_new;
alias c_g_tls_password_get_description g_tls_password_get_description;
alias c_g_tls_password_get_flags g_tls_password_get_flags;
alias c_g_tls_password_get_value g_tls_password_get_value;
alias c_g_tls_password_get_warning g_tls_password_get_warning;
alias c_g_tls_password_set_description g_tls_password_set_description;
alias c_g_tls_password_set_flags g_tls_password_set_flags;
alias c_g_tls_password_set_value g_tls_password_set_value;
alias c_g_tls_password_set_value_full g_tls_password_set_value_full;
alias c_g_tls_password_set_warning g_tls_password_set_warning;

// gio.TlsServerConnection

alias c_g_tls_server_connection_get_type g_tls_server_connection_get_type;
alias c_g_tls_server_connection_new g_tls_server_connection_new;

// gio.UnixConnection

alias c_g_unix_connection_get_type g_unix_connection_get_type;
alias c_g_unix_connection_receive_credentials g_unix_connection_receive_credentials;
alias c_g_unix_connection_receive_credentials_async g_unix_connection_receive_credentials_async;
alias c_g_unix_connection_receive_credentials_finish g_unix_connection_receive_credentials_finish;
alias c_g_unix_connection_receive_fd g_unix_connection_receive_fd;
alias c_g_unix_connection_send_credentials g_unix_connection_send_credentials;
alias c_g_unix_connection_send_credentials_async g_unix_connection_send_credentials_async;
alias c_g_unix_connection_send_credentials_finish g_unix_connection_send_credentials_finish;
alias c_g_unix_connection_send_fd g_unix_connection_send_fd;

// gio.UnixCredentialsMessage

alias c_g_unix_credentials_message_get_type g_unix_credentials_message_get_type;
alias c_g_unix_credentials_message_new g_unix_credentials_message_new;
alias c_g_unix_credentials_message_new_with_credentials g_unix_credentials_message_new_with_credentials;
alias c_g_unix_credentials_message_is_supported g_unix_credentials_message_is_supported;
alias c_g_unix_credentials_message_get_credentials g_unix_credentials_message_get_credentials;

// gio.UnixFDList

alias c_g_unix_fd_list_get_type g_unix_fd_list_get_type;
alias c_g_unix_fd_list_new g_unix_fd_list_new;
alias c_g_unix_fd_list_new_from_array g_unix_fd_list_new_from_array;
alias c_g_unix_fd_list_append g_unix_fd_list_append;
alias c_g_unix_fd_list_get g_unix_fd_list_get;
alias c_g_unix_fd_list_get_length g_unix_fd_list_get_length;
alias c_g_unix_fd_list_peek_fds g_unix_fd_list_peek_fds;
alias c_g_unix_fd_list_steal_fds g_unix_fd_list_steal_fds;

// gio.UnixFDMessage

alias c_g_unix_fd_message_get_type g_unix_fd_message_get_type;
alias c_g_unix_fd_message_new g_unix_fd_message_new;
alias c_g_unix_fd_message_new_with_fd_list g_unix_fd_message_new_with_fd_list;
alias c_g_unix_fd_message_append_fd g_unix_fd_message_append_fd;
alias c_g_unix_fd_message_get_fd_list g_unix_fd_message_get_fd_list;
alias c_g_unix_fd_message_steal_fds g_unix_fd_message_steal_fds;

// gio.UnixInputStream

alias c_g_unix_input_stream_get_type g_unix_input_stream_get_type;
alias c_g_unix_input_stream_new g_unix_input_stream_new;
alias c_g_unix_input_stream_get_close_fd g_unix_input_stream_get_close_fd;
alias c_g_unix_input_stream_get_fd g_unix_input_stream_get_fd;
alias c_g_unix_input_stream_set_close_fd g_unix_input_stream_set_close_fd;

// gio.UnixMountEntry

alias c_g_unix_mount_entry_get_type g_unix_mount_entry_get_type;
alias c_g_unix_is_mount_path_system_internal g_unix_is_mount_path_system_internal;
alias c_g_unix_mount_at g_unix_mount_at;
alias c_g_unix_mount_compare g_unix_mount_compare;
alias c_g_unix_mount_free g_unix_mount_free;
alias c_g_unix_mount_get_device_path g_unix_mount_get_device_path;
alias c_g_unix_mount_get_fs_type g_unix_mount_get_fs_type;
alias c_g_unix_mount_get_mount_path g_unix_mount_get_mount_path;
alias c_g_unix_mount_guess_can_eject g_unix_mount_guess_can_eject;
alias c_g_unix_mount_guess_icon g_unix_mount_guess_icon;
alias c_g_unix_mount_guess_name g_unix_mount_guess_name;
alias c_g_unix_mount_guess_should_display g_unix_mount_guess_should_display;
alias c_g_unix_mount_guess_symbolic_icon g_unix_mount_guess_symbolic_icon;
alias c_g_unix_mount_is_readonly g_unix_mount_is_readonly;
alias c_g_unix_mount_is_system_internal g_unix_mount_is_system_internal;
alias c_g_unix_mount_points_changed_since g_unix_mount_points_changed_since;
alias c_g_unix_mount_points_get g_unix_mount_points_get;
alias c_g_unix_mounts_changed_since g_unix_mounts_changed_since;
alias c_g_unix_mounts_get g_unix_mounts_get;
alias c_g_unix_mount_copy g_unix_mount_copy;
alias c_g_unix_mount_for g_unix_mount_for;
alias c_g_unix_mount_get_options g_unix_mount_get_options;
alias c_g_unix_mount_get_root_path g_unix_mount_get_root_path;

// gio.UnixMountMonitor

alias c_g_unix_mount_monitor_get_type g_unix_mount_monitor_get_type;
alias c_g_unix_mount_monitor_new g_unix_mount_monitor_new;
alias c_g_unix_mount_monitor_get g_unix_mount_monitor_get;
alias c_g_unix_mount_monitor_set_rate_limit g_unix_mount_monitor_set_rate_limit;

// gio.UnixMountPoint

alias c_g_unix_mount_point_get_type g_unix_mount_point_get_type;
alias c_g_unix_mount_point_compare g_unix_mount_point_compare;
alias c_g_unix_mount_point_copy g_unix_mount_point_copy;
alias c_g_unix_mount_point_free g_unix_mount_point_free;
alias c_g_unix_mount_point_get_device_path g_unix_mount_point_get_device_path;
alias c_g_unix_mount_point_get_fs_type g_unix_mount_point_get_fs_type;
alias c_g_unix_mount_point_get_mount_path g_unix_mount_point_get_mount_path;
alias c_g_unix_mount_point_get_options g_unix_mount_point_get_options;
alias c_g_unix_mount_point_guess_can_eject g_unix_mount_point_guess_can_eject;
alias c_g_unix_mount_point_guess_icon g_unix_mount_point_guess_icon;
alias c_g_unix_mount_point_guess_name g_unix_mount_point_guess_name;
alias c_g_unix_mount_point_guess_symbolic_icon g_unix_mount_point_guess_symbolic_icon;
alias c_g_unix_mount_point_is_loopback g_unix_mount_point_is_loopback;
alias c_g_unix_mount_point_is_readonly g_unix_mount_point_is_readonly;
alias c_g_unix_mount_point_is_user_mountable g_unix_mount_point_is_user_mountable;
alias c_g_unix_mount_point_at g_unix_mount_point_at;

// gio.UnixOutputStream

alias c_g_unix_output_stream_get_type g_unix_output_stream_get_type;
alias c_g_unix_output_stream_new g_unix_output_stream_new;
alias c_g_unix_output_stream_get_close_fd g_unix_output_stream_get_close_fd;
alias c_g_unix_output_stream_get_fd g_unix_output_stream_get_fd;
alias c_g_unix_output_stream_set_close_fd g_unix_output_stream_set_close_fd;

// gio.UnixSocketAddress

alias c_g_unix_socket_address_get_type g_unix_socket_address_get_type;
alias c_g_unix_socket_address_new g_unix_socket_address_new;
alias c_g_unix_socket_address_new_abstract g_unix_socket_address_new_abstract;
alias c_g_unix_socket_address_new_with_type g_unix_socket_address_new_with_type;
alias c_g_unix_socket_address_abstract_names_supported g_unix_socket_address_abstract_names_supported;
alias c_g_unix_socket_address_get_address_type g_unix_socket_address_get_address_type;
alias c_g_unix_socket_address_get_is_abstract g_unix_socket_address_get_is_abstract;
alias c_g_unix_socket_address_get_path g_unix_socket_address_get_path;
alias c_g_unix_socket_address_get_path_len g_unix_socket_address_get_path_len;

// gio.Vfs

alias c_g_vfs_get_type g_vfs_get_type;
alias c_g_vfs_get_default g_vfs_get_default;
alias c_g_vfs_get_local g_vfs_get_local;
alias c_g_vfs_get_file_for_path g_vfs_get_file_for_path;
alias c_g_vfs_get_file_for_uri g_vfs_get_file_for_uri;
alias c_g_vfs_get_supported_uri_schemes g_vfs_get_supported_uri_schemes;
alias c_g_vfs_is_active g_vfs_is_active;
alias c_g_vfs_parse_name g_vfs_parse_name;
alias c_g_vfs_register_uri_scheme g_vfs_register_uri_scheme;
alias c_g_vfs_unregister_uri_scheme g_vfs_unregister_uri_scheme;

// gio.Volume

alias c_g_volume_get_type g_volume_get_type;
alias c_g_volume_can_eject g_volume_can_eject;
alias c_g_volume_can_mount g_volume_can_mount;
alias c_g_volume_eject g_volume_eject;
alias c_g_volume_eject_finish g_volume_eject_finish;
alias c_g_volume_eject_with_operation g_volume_eject_with_operation;
alias c_g_volume_eject_with_operation_finish g_volume_eject_with_operation_finish;
alias c_g_volume_enumerate_identifiers g_volume_enumerate_identifiers;
alias c_g_volume_get_activation_root g_volume_get_activation_root;
alias c_g_volume_get_drive g_volume_get_drive;
alias c_g_volume_get_icon g_volume_get_icon;
alias c_g_volume_get_identifier g_volume_get_identifier;
alias c_g_volume_get_mount g_volume_get_mount;
alias c_g_volume_get_name g_volume_get_name;
alias c_g_volume_get_sort_key g_volume_get_sort_key;
alias c_g_volume_get_symbolic_icon g_volume_get_symbolic_icon;
alias c_g_volume_get_uuid g_volume_get_uuid;
alias c_g_volume_mount g_volume_mount;
alias c_g_volume_mount_finish g_volume_mount_finish;
alias c_g_volume_should_automount g_volume_should_automount;

// gio.VolumeMonitor

alias c_g_volume_monitor_get_type g_volume_monitor_get_type;
alias c_g_volume_monitor_adopt_orphan_mount g_volume_monitor_adopt_orphan_mount;
alias c_g_volume_monitor_get g_volume_monitor_get;
alias c_g_volume_monitor_get_connected_drives g_volume_monitor_get_connected_drives;
alias c_g_volume_monitor_get_mount_for_uuid g_volume_monitor_get_mount_for_uuid;
alias c_g_volume_monitor_get_mounts g_volume_monitor_get_mounts;
alias c_g_volume_monitor_get_volume_for_uuid g_volume_monitor_get_volume_for_uuid;
alias c_g_volume_monitor_get_volumes g_volume_monitor_get_volumes;

// gio.ZlibCompressor

alias c_g_zlib_compressor_get_type g_zlib_compressor_get_type;
alias c_g_zlib_compressor_new g_zlib_compressor_new;
alias c_g_zlib_compressor_get_file_info g_zlib_compressor_get_file_info;
alias c_g_zlib_compressor_set_file_info g_zlib_compressor_set_file_info;

// gio.ZlibDecompressor

alias c_g_zlib_decompressor_get_type g_zlib_decompressor_get_type;
alias c_g_zlib_decompressor_new g_zlib_decompressor_new;
alias c_g_zlib_decompressor_get_file_info g_zlib_decompressor_get_file_info;

// gio.PollableUtils

alias c_g_pollable_source_new g_pollable_source_new;
alias c_g_pollable_source_new_full g_pollable_source_new_full;
alias c_g_pollable_stream_read g_pollable_stream_read;
alias c_g_pollable_stream_write g_pollable_stream_write;
alias c_g_pollable_stream_write_all g_pollable_stream_write_all;

// gio.DBusNames

alias c_g_bus_own_name g_bus_own_name;
alias c_g_bus_own_name_on_connection g_bus_own_name_on_connection;
alias c_g_bus_own_name_on_connection_with_closures g_bus_own_name_on_connection_with_closures;
alias c_g_bus_own_name_with_closures g_bus_own_name_with_closures;
alias c_g_bus_unown_name g_bus_unown_name;
alias c_g_bus_unwatch_name g_bus_unwatch_name;
alias c_g_bus_watch_name g_bus_watch_name;
alias c_g_bus_watch_name_on_connection g_bus_watch_name_on_connection;
alias c_g_bus_watch_name_on_connection_with_closures g_bus_watch_name_on_connection_with_closures;
alias c_g_bus_watch_name_with_closures g_bus_watch_name_with_closures;

// gio.ContentType

alias c_g_content_type_can_be_executable g_content_type_can_be_executable;
alias c_g_content_type_equals g_content_type_equals;
alias c_g_content_type_from_mime_type g_content_type_from_mime_type;
alias c_g_content_type_get_description g_content_type_get_description;
alias c_g_content_type_get_generic_icon_name g_content_type_get_generic_icon_name;
alias c_g_content_type_get_icon g_content_type_get_icon;
alias c_g_content_type_get_mime_type g_content_type_get_mime_type;
alias c_g_content_type_get_symbolic_icon g_content_type_get_symbolic_icon;
alias c_g_content_type_guess g_content_type_guess;
alias c_g_content_type_guess_for_tree g_content_type_guess_for_tree;
alias c_g_content_type_is_a g_content_type_is_a;
alias c_g_content_type_is_unknown g_content_type_is_unknown;
alias c_g_content_types_get_registered g_content_types_get_registered;
alias c_g_content_type_is_mime_type g_content_type_is_mime_type;
alias c_g_content_type_get_mime_dirs g_content_type_get_mime_dirs;
alias c_g_content_type_set_mime_dirs g_content_type_set_mime_dirs;

// gio.DBusError

alias c_g_dbus_error_encode_gerror g_dbus_error_encode_gerror;
alias c_g_dbus_error_get_remote_error g_dbus_error_get_remote_error;
alias c_g_dbus_error_is_remote_error g_dbus_error_is_remote_error;
alias c_g_dbus_error_new_for_dbus_error g_dbus_error_new_for_dbus_error;
alias c_g_dbus_error_quark g_dbus_error_quark;
alias c_g_dbus_error_register_error g_dbus_error_register_error;
alias c_g_dbus_error_register_error_domain g_dbus_error_register_error_domain;
alias c_g_dbus_error_strip_remote_error g_dbus_error_strip_remote_error;
alias c_g_dbus_error_unregister_error g_dbus_error_unregister_error;

// gio.DBusUtilities

alias c_g_dbus_address_escape_value g_dbus_address_escape_value;
alias c_g_dbus_address_get_for_bus_sync g_dbus_address_get_for_bus_sync;
alias c_g_dbus_address_get_stream g_dbus_address_get_stream;
alias c_g_dbus_address_get_stream_finish g_dbus_address_get_stream_finish;
alias c_g_dbus_address_get_stream_sync g_dbus_address_get_stream_sync;
alias c_g_dbus_generate_guid g_dbus_generate_guid;
alias c_g_dbus_gvalue_to_gvariant g_dbus_gvalue_to_gvariant;
alias c_g_dbus_gvariant_to_gvalue g_dbus_gvariant_to_gvalue;
alias c_g_dbus_is_address g_dbus_is_address;
alias c_g_dbus_is_guid g_dbus_is_guid;
alias c_g_dbus_is_interface_name g_dbus_is_interface_name;
alias c_g_dbus_is_member_name g_dbus_is_member_name;
alias c_g_dbus_is_name g_dbus_is_name;
alias c_g_dbus_is_supported_address g_dbus_is_supported_address;
alias c_g_dbus_is_unique_name g_dbus_is_unique_name;

// gio.ErrorGIO

alias c_g_io_error_from_errno g_io_error_from_errno;
alias c_g_io_error_quark g_io_error_quark;
