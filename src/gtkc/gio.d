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


module gtkc.gio;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.giotypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// gio.File

	Linker.link(g_file_new_for_path, "g_file_new_for_path", LIBRARY.GIO);
	Linker.link(g_file_new_for_uri, "g_file_new_for_uri", LIBRARY.GIO);
	Linker.link(g_file_new_for_commandline_arg, "g_file_new_for_commandline_arg", LIBRARY.GIO);
	Linker.link(g_file_parse_name, "g_file_parse_name", LIBRARY.GIO);
	Linker.link(g_file_dup, "g_file_dup", LIBRARY.GIO);
	Linker.link(g_file_hash, "g_file_hash", LIBRARY.GIO);
	Linker.link(g_file_equal, "g_file_equal", LIBRARY.GIO);
	Linker.link(g_file_get_basename, "g_file_get_basename", LIBRARY.GIO);
	Linker.link(g_file_get_path, "g_file_get_path", LIBRARY.GIO);
	Linker.link(g_file_get_uri, "g_file_get_uri", LIBRARY.GIO);
	Linker.link(g_file_get_parse_name, "g_file_get_parse_name", LIBRARY.GIO);
	Linker.link(g_file_get_parent, "g_file_get_parent", LIBRARY.GIO);
	Linker.link(g_file_get_child, "g_file_get_child", LIBRARY.GIO);
	Linker.link(g_file_get_child_for_display_name, "g_file_get_child_for_display_name", LIBRARY.GIO);
	Linker.link(g_file_has_prefix, "g_file_has_prefix", LIBRARY.GIO);
	Linker.link(g_file_get_relative_path, "g_file_get_relative_path", LIBRARY.GIO);
	Linker.link(g_file_resolve_relative_path, "g_file_resolve_relative_path", LIBRARY.GIO);
	Linker.link(g_file_is_native, "g_file_is_native", LIBRARY.GIO);
	Linker.link(g_file_has_uri_scheme, "g_file_has_uri_scheme", LIBRARY.GIO);
	Linker.link(g_file_get_uri_scheme, "g_file_get_uri_scheme", LIBRARY.GIO);
	Linker.link(g_file_read, "g_file_read", LIBRARY.GIO);
	Linker.link(g_file_read_async, "g_file_read_async", LIBRARY.GIO);
	Linker.link(g_file_read_finish, "g_file_read_finish", LIBRARY.GIO);
	Linker.link(g_file_append_to, "g_file_append_to", LIBRARY.GIO);
	Linker.link(g_file_create, "g_file_create", LIBRARY.GIO);
	Linker.link(g_file_replace, "g_file_replace", LIBRARY.GIO);
	Linker.link(g_file_append_to_async, "g_file_append_to_async", LIBRARY.GIO);
	Linker.link(g_file_append_to_finish, "g_file_append_to_finish", LIBRARY.GIO);
	Linker.link(g_file_create_async, "g_file_create_async", LIBRARY.GIO);
	Linker.link(g_file_create_finish, "g_file_create_finish", LIBRARY.GIO);
	Linker.link(g_file_replace_async, "g_file_replace_async", LIBRARY.GIO);
	Linker.link(g_file_replace_finish, "g_file_replace_finish", LIBRARY.GIO);
	Linker.link(g_file_query_info, "g_file_query_info", LIBRARY.GIO);
	Linker.link(g_file_query_info_async, "g_file_query_info_async", LIBRARY.GIO);
	Linker.link(g_file_query_info_finish, "g_file_query_info_finish", LIBRARY.GIO);
	Linker.link(g_file_query_exists, "g_file_query_exists", LIBRARY.GIO);
	Linker.link(g_file_query_file_type, "g_file_query_file_type", LIBRARY.GIO);
	Linker.link(g_file_query_filesystem_info, "g_file_query_filesystem_info", LIBRARY.GIO);
	Linker.link(g_file_query_filesystem_info_async, "g_file_query_filesystem_info_async", LIBRARY.GIO);
	Linker.link(g_file_query_filesystem_info_finish, "g_file_query_filesystem_info_finish", LIBRARY.GIO);
	Linker.link(g_file_query_default_handler, "g_file_query_default_handler", LIBRARY.GIO);
	Linker.link(g_file_find_enclosing_mount, "g_file_find_enclosing_mount", LIBRARY.GIO);
	Linker.link(g_file_find_enclosing_mount_async, "g_file_find_enclosing_mount_async", LIBRARY.GIO);
	Linker.link(g_file_find_enclosing_mount_finish, "g_file_find_enclosing_mount_finish", LIBRARY.GIO);
	Linker.link(g_file_enumerate_children, "g_file_enumerate_children", LIBRARY.GIO);
	Linker.link(g_file_enumerate_children_async, "g_file_enumerate_children_async", LIBRARY.GIO);
	Linker.link(g_file_enumerate_children_finish, "g_file_enumerate_children_finish", LIBRARY.GIO);
	Linker.link(g_file_set_display_name, "g_file_set_display_name", LIBRARY.GIO);
	Linker.link(g_file_set_display_name_async, "g_file_set_display_name_async", LIBRARY.GIO);
	Linker.link(g_file_set_display_name_finish, "g_file_set_display_name_finish", LIBRARY.GIO);
	Linker.link(g_file_delete, "g_file_delete", LIBRARY.GIO);
	Linker.link(g_file_trash, "g_file_trash", LIBRARY.GIO);
	Linker.link(g_file_copy, "g_file_copy", LIBRARY.GIO);
	Linker.link(g_file_copy_async, "g_file_copy_async", LIBRARY.GIO);
	Linker.link(g_file_copy_finish, "g_file_copy_finish", LIBRARY.GIO);
	Linker.link(g_file_move, "g_file_move", LIBRARY.GIO);
	Linker.link(g_file_make_directory, "g_file_make_directory", LIBRARY.GIO);
	Linker.link(g_file_make_directory_with_parents, "g_file_make_directory_with_parents", LIBRARY.GIO);
	Linker.link(g_file_make_symbolic_link, "g_file_make_symbolic_link", LIBRARY.GIO);
	Linker.link(g_file_query_settable_attributes, "g_file_query_settable_attributes", LIBRARY.GIO);
	Linker.link(g_file_query_writable_namespaces, "g_file_query_writable_namespaces", LIBRARY.GIO);
	Linker.link(g_file_set_attribute, "g_file_set_attribute", LIBRARY.GIO);
	Linker.link(g_file_set_attributes_from_info, "g_file_set_attributes_from_info", LIBRARY.GIO);
	Linker.link(g_file_set_attributes_async, "g_file_set_attributes_async", LIBRARY.GIO);
	Linker.link(g_file_set_attributes_finish, "g_file_set_attributes_finish", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_string, "g_file_set_attribute_string", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_byte_string, "g_file_set_attribute_byte_string", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_uint32, "g_file_set_attribute_uint32", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_int32, "g_file_set_attribute_int32", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_uint64, "g_file_set_attribute_uint64", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_int64, "g_file_set_attribute_int64", LIBRARY.GIO);
	Linker.link(g_file_mount_mountable, "g_file_mount_mountable", LIBRARY.GIO);
	Linker.link(g_file_mount_mountable_finish, "g_file_mount_mountable_finish", LIBRARY.GIO);
	Linker.link(g_file_unmount_mountable, "g_file_unmount_mountable", LIBRARY.GIO);
	Linker.link(g_file_unmount_mountable_finish, "g_file_unmount_mountable_finish", LIBRARY.GIO);
	Linker.link(g_file_eject_mountable, "g_file_eject_mountable", LIBRARY.GIO);
	Linker.link(g_file_eject_mountable_finish, "g_file_eject_mountable_finish", LIBRARY.GIO);
	Linker.link(g_file_mount_enclosing_volume, "g_file_mount_enclosing_volume", LIBRARY.GIO);
	Linker.link(g_file_mount_enclosing_volume_finish, "g_file_mount_enclosing_volume_finish", LIBRARY.GIO);
	Linker.link(g_file_monitor_directory, "g_file_monitor_directory", LIBRARY.GIO);
	Linker.link(g_file_monitor_file, "g_file_monitor_file", LIBRARY.GIO);
	Linker.link(g_file_monitor, "g_file_monitor", LIBRARY.GIO);
	Linker.link(g_file_load_contents, "g_file_load_contents", LIBRARY.GIO);
	Linker.link(g_file_load_contents_async, "g_file_load_contents_async", LIBRARY.GIO);
	Linker.link(g_file_load_contents_finish, "g_file_load_contents_finish", LIBRARY.GIO);
	Linker.link(g_file_load_partial_contents_async, "g_file_load_partial_contents_async", LIBRARY.GIO);
	Linker.link(g_file_load_partial_contents_finish, "g_file_load_partial_contents_finish", LIBRARY.GIO);
	Linker.link(g_file_replace_contents, "g_file_replace_contents", LIBRARY.GIO);
	Linker.link(g_file_replace_contents_async, "g_file_replace_contents_async", LIBRARY.GIO);
	Linker.link(g_file_replace_contents_finish, "g_file_replace_contents_finish", LIBRARY.GIO);
	Linker.link(g_file_copy_attributes, "g_file_copy_attributes", LIBRARY.GIO);

	// gio.FileAttributeInfoList

	Linker.link(g_file_attribute_info_list_new, "g_file_attribute_info_list_new", LIBRARY.GIO);
	Linker.link(g_file_attribute_info_list_ref, "g_file_attribute_info_list_ref", LIBRARY.GIO);
	Linker.link(g_file_attribute_info_list_unref, "g_file_attribute_info_list_unref", LIBRARY.GIO);
	Linker.link(g_file_attribute_info_list_dup, "g_file_attribute_info_list_dup", LIBRARY.GIO);
	Linker.link(g_file_attribute_info_list_lookup, "g_file_attribute_info_list_lookup", LIBRARY.GIO);
	Linker.link(g_file_attribute_info_list_add, "g_file_attribute_info_list_add", LIBRARY.GIO);

	// gio.FileInfo

	Linker.link(g_file_info_new, "g_file_info_new", LIBRARY.GIO);
	Linker.link(g_file_info_dup, "g_file_info_dup", LIBRARY.GIO);
	Linker.link(g_file_info_copy_into, "g_file_info_copy_into", LIBRARY.GIO);
	Linker.link(g_file_info_has_attribute, "g_file_info_has_attribute", LIBRARY.GIO);
	Linker.link(g_file_info_list_attributes, "g_file_info_list_attributes", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_type, "g_file_info_get_attribute_type", LIBRARY.GIO);
	Linker.link(g_file_info_remove_attribute, "g_file_info_remove_attribute", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_as_string, "g_file_info_get_attribute_as_string", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_data, "g_file_info_get_attribute_data", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_status, "g_file_info_get_attribute_status", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_string, "g_file_info_get_attribute_string", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_byte_string, "g_file_info_get_attribute_byte_string", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_boolean, "g_file_info_get_attribute_boolean", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_uint32, "g_file_info_get_attribute_uint32", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_int32, "g_file_info_get_attribute_int32", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_uint64, "g_file_info_get_attribute_uint64", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_int64, "g_file_info_get_attribute_int64", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_object, "g_file_info_get_attribute_object", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute, "g_file_info_set_attribute", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_string, "g_file_info_set_attribute_string", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_byte_string, "g_file_info_set_attribute_byte_string", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_boolean, "g_file_info_set_attribute_boolean", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_uint32, "g_file_info_set_attribute_uint32", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_int32, "g_file_info_set_attribute_int32", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_uint64, "g_file_info_set_attribute_uint64", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_int64, "g_file_info_set_attribute_int64", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_object, "g_file_info_set_attribute_object", LIBRARY.GIO);
	Linker.link(g_file_info_clear_status, "g_file_info_clear_status", LIBRARY.GIO);
	Linker.link(g_file_info_get_file_type, "g_file_info_get_file_type", LIBRARY.GIO);
	Linker.link(g_file_info_get_is_hidden, "g_file_info_get_is_hidden", LIBRARY.GIO);
	Linker.link(g_file_info_get_is_backup, "g_file_info_get_is_backup", LIBRARY.GIO);
	Linker.link(g_file_info_get_is_symlink, "g_file_info_get_is_symlink", LIBRARY.GIO);
	Linker.link(g_file_info_get_name, "g_file_info_get_name", LIBRARY.GIO);
	Linker.link(g_file_info_get_display_name, "g_file_info_get_display_name", LIBRARY.GIO);
	Linker.link(g_file_info_get_edit_name, "g_file_info_get_edit_name", LIBRARY.GIO);
	Linker.link(g_file_info_get_icon, "g_file_info_get_icon", LIBRARY.GIO);
	Linker.link(g_file_info_get_content_type, "g_file_info_get_content_type", LIBRARY.GIO);
	Linker.link(g_file_info_get_size, "g_file_info_get_size", LIBRARY.GIO);
	Linker.link(g_file_info_get_modification_time, "g_file_info_get_modification_time", LIBRARY.GIO);
	Linker.link(g_file_info_get_symlink_target, "g_file_info_get_symlink_target", LIBRARY.GIO);
	Linker.link(g_file_info_get_etag, "g_file_info_get_etag", LIBRARY.GIO);
	Linker.link(g_file_info_get_sort_order, "g_file_info_get_sort_order", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_mask, "g_file_info_set_attribute_mask", LIBRARY.GIO);
	Linker.link(g_file_info_unset_attribute_mask, "g_file_info_unset_attribute_mask", LIBRARY.GIO);
	Linker.link(g_file_info_set_file_type, "g_file_info_set_file_type", LIBRARY.GIO);
	Linker.link(g_file_info_set_is_hidden, "g_file_info_set_is_hidden", LIBRARY.GIO);
	Linker.link(g_file_info_set_is_symlink, "g_file_info_set_is_symlink", LIBRARY.GIO);
	Linker.link(g_file_info_set_name, "g_file_info_set_name", LIBRARY.GIO);
	Linker.link(g_file_info_set_display_name, "g_file_info_set_display_name", LIBRARY.GIO);
	Linker.link(g_file_info_set_edit_name, "g_file_info_set_edit_name", LIBRARY.GIO);
	Linker.link(g_file_info_set_icon, "g_file_info_set_icon", LIBRARY.GIO);
	Linker.link(g_file_info_set_content_type, "g_file_info_set_content_type", LIBRARY.GIO);
	Linker.link(g_file_info_set_size, "g_file_info_set_size", LIBRARY.GIO);
	Linker.link(g_file_info_set_modification_time, "g_file_info_set_modification_time", LIBRARY.GIO);
	Linker.link(g_file_info_set_symlink_target, "g_file_info_set_symlink_target", LIBRARY.GIO);
	Linker.link(g_file_info_set_sort_order, "g_file_info_set_sort_order", LIBRARY.GIO);

	// gio.FileAttributeMatcher

	Linker.link(g_file_attribute_matcher_new, "g_file_attribute_matcher_new", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_ref, "g_file_attribute_matcher_ref", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_unref, "g_file_attribute_matcher_unref", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_matches, "g_file_attribute_matcher_matches", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_matches_only, "g_file_attribute_matcher_matches_only", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_enumerate_namespace, "g_file_attribute_matcher_enumerate_namespace", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_enumerate_next, "g_file_attribute_matcher_enumerate_next", LIBRARY.GIO);

	// gio.FileEnumerator

	Linker.link(g_file_enumerator_next_file, "g_file_enumerator_next_file", LIBRARY.GIO);
	Linker.link(g_file_enumerator_close, "g_file_enumerator_close", LIBRARY.GIO);
	Linker.link(g_file_enumerator_next_files_async, "g_file_enumerator_next_files_async", LIBRARY.GIO);
	Linker.link(g_file_enumerator_next_files_finish, "g_file_enumerator_next_files_finish", LIBRARY.GIO);
	Linker.link(g_file_enumerator_close_async, "g_file_enumerator_close_async", LIBRARY.GIO);
	Linker.link(g_file_enumerator_close_finish, "g_file_enumerator_close_finish", LIBRARY.GIO);
	Linker.link(g_file_enumerator_is_closed, "g_file_enumerator_is_closed", LIBRARY.GIO);
	Linker.link(g_file_enumerator_has_pending, "g_file_enumerator_has_pending", LIBRARY.GIO);
	Linker.link(g_file_enumerator_set_pending, "g_file_enumerator_set_pending", LIBRARY.GIO);
	Linker.link(g_file_enumerator_get_container, "g_file_enumerator_get_container", LIBRARY.GIO);

	// gio.MountOperation

	Linker.link(g_mount_operation_new, "g_mount_operation_new", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_username, "g_mount_operation_get_username", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_username, "g_mount_operation_set_username", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_password, "g_mount_operation_get_password", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_password, "g_mount_operation_set_password", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_anonymous, "g_mount_operation_get_anonymous", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_anonymous, "g_mount_operation_set_anonymous", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_domain, "g_mount_operation_get_domain", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_domain, "g_mount_operation_set_domain", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_password_save, "g_mount_operation_get_password_save", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_password_save, "g_mount_operation_set_password_save", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_choice, "g_mount_operation_get_choice", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_choice, "g_mount_operation_set_choice", LIBRARY.GIO);
	Linker.link(g_mount_operation_reply, "g_mount_operation_reply", LIBRARY.GIO);

	// gio.ErrorGIO

	Linker.link(g_io_error_from_errno, "g_io_error_from_errno", LIBRARY.GIO);

	// gio.FileMonitor

	Linker.link(g_file_monitor_cancel, "g_file_monitor_cancel", LIBRARY.GIO);
	Linker.link(g_file_monitor_is_cancelled, "g_file_monitor_is_cancelled", LIBRARY.GIO);
	Linker.link(g_file_monitor_set_rate_limit, "g_file_monitor_set_rate_limit", LIBRARY.GIO);
	Linker.link(g_file_monitor_emit_event, "g_file_monitor_emit_event", LIBRARY.GIO);

	// gio.Cancellable

	Linker.link(g_cancellable_new, "g_cancellable_new", LIBRARY.GIO);
	Linker.link(g_cancellable_is_cancelled, "g_cancellable_is_cancelled", LIBRARY.GIO);
	Linker.link(g_cancellable_set_error_if_cancelled, "g_cancellable_set_error_if_cancelled", LIBRARY.GIO);
	Linker.link(g_cancellable_get_fd, "g_cancellable_get_fd", LIBRARY.GIO);
	Linker.link(g_cancellable_make_pollfd, "g_cancellable_make_pollfd", LIBRARY.GIO);
	Linker.link(g_cancellable_get_current, "g_cancellable_get_current", LIBRARY.GIO);
	Linker.link(g_cancellable_pop_current, "g_cancellable_pop_current", LIBRARY.GIO);
	Linker.link(g_cancellable_push_current, "g_cancellable_push_current", LIBRARY.GIO);
	Linker.link(g_cancellable_reset, "g_cancellable_reset", LIBRARY.GIO);
	Linker.link(g_cancellable_cancel, "g_cancellable_cancel", LIBRARY.GIO);

	// gio.AsyncResultT


	// gio.AsyncResultT

	Linker.link(g_async_result_get_user_data, "g_async_result_get_user_data", LIBRARY.GIO);
	Linker.link(g_async_result_get_source_object, "g_async_result_get_source_object", LIBRARY.GIO);

	// gio.IOSchedulerJob

	Linker.link(g_io_scheduler_push_job, "g_io_scheduler_push_job", LIBRARY.GIO);
	Linker.link(g_io_scheduler_cancel_all_jobs, "g_io_scheduler_cancel_all_jobs", LIBRARY.GIO);
	Linker.link(g_io_scheduler_job_send_to_mainloop, "g_io_scheduler_job_send_to_mainloop", LIBRARY.GIO);
	Linker.link(g_io_scheduler_job_send_to_mainloop_async, "g_io_scheduler_job_send_to_mainloop_async", LIBRARY.GIO);

	// gio.SimpleAsyncResult

	Linker.link(g_simple_async_result_new, "g_simple_async_result_new", LIBRARY.GIO);
	Linker.link(g_simple_async_result_new_error, "g_simple_async_result_new_error", LIBRARY.GIO);
	Linker.link(g_simple_async_result_new_from_error, "g_simple_async_result_new_from_error", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_op_res_gpointer, "g_simple_async_result_set_op_res_gpointer", LIBRARY.GIO);
	Linker.link(g_simple_async_result_get_op_res_gpointer, "g_simple_async_result_get_op_res_gpointer", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_op_res_gssize, "g_simple_async_result_set_op_res_gssize", LIBRARY.GIO);
	Linker.link(g_simple_async_result_get_op_res_gssize, "g_simple_async_result_get_op_res_gssize", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_op_res_gboolean, "g_simple_async_result_set_op_res_gboolean", LIBRARY.GIO);
	Linker.link(g_simple_async_result_get_op_res_gboolean, "g_simple_async_result_get_op_res_gboolean", LIBRARY.GIO);
	Linker.link(g_simple_async_result_get_source_tag, "g_simple_async_result_get_source_tag", LIBRARY.GIO);
	Linker.link(g_simple_async_result_is_valid, "g_simple_async_result_is_valid", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_handle_cancellation, "g_simple_async_result_set_handle_cancellation", LIBRARY.GIO);
	Linker.link(g_simple_async_result_complete, "g_simple_async_result_complete", LIBRARY.GIO);
	Linker.link(g_simple_async_result_complete_in_idle, "g_simple_async_result_complete_in_idle", LIBRARY.GIO);
	Linker.link(g_simple_async_result_run_in_thread, "g_simple_async_result_run_in_thread", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_from_error, "g_simple_async_result_set_from_error", LIBRARY.GIO);
	Linker.link(g_simple_async_result_propagate_error, "g_simple_async_result_propagate_error", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_error, "g_simple_async_result_set_error", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_error_va, "g_simple_async_result_set_error_va", LIBRARY.GIO);
	Linker.link(g_simple_async_report_error_in_idle, "g_simple_async_report_error_in_idle", LIBRARY.GIO);
	Linker.link(g_simple_async_report_gerror_in_idle, "g_simple_async_report_gerror_in_idle", LIBRARY.GIO);

	// gio.SeekableT


	// gio.SeekableT

	Linker.link(g_seekable_tell, "g_seekable_tell", LIBRARY.GIO);
	Linker.link(g_seekable_can_seek, "g_seekable_can_seek", LIBRARY.GIO);
	Linker.link(g_seekable_seek, "g_seekable_seek", LIBRARY.GIO);
	Linker.link(g_seekable_can_truncate, "g_seekable_can_truncate", LIBRARY.GIO);
	Linker.link(g_seekable_truncate, "g_seekable_truncate", LIBRARY.GIO);

	// gio.InputStream

	Linker.link(g_input_stream_read, "g_input_stream_read", LIBRARY.GIO);
	Linker.link(g_input_stream_read_all, "g_input_stream_read_all", LIBRARY.GIO);
	Linker.link(g_input_stream_skip, "g_input_stream_skip", LIBRARY.GIO);
	Linker.link(g_input_stream_close, "g_input_stream_close", LIBRARY.GIO);
	Linker.link(g_input_stream_read_async, "g_input_stream_read_async", LIBRARY.GIO);
	Linker.link(g_input_stream_read_finish, "g_input_stream_read_finish", LIBRARY.GIO);
	Linker.link(g_input_stream_skip_async, "g_input_stream_skip_async", LIBRARY.GIO);
	Linker.link(g_input_stream_skip_finish, "g_input_stream_skip_finish", LIBRARY.GIO);
	Linker.link(g_input_stream_close_async, "g_input_stream_close_async", LIBRARY.GIO);
	Linker.link(g_input_stream_close_finish, "g_input_stream_close_finish", LIBRARY.GIO);
	Linker.link(g_input_stream_is_closed, "g_input_stream_is_closed", LIBRARY.GIO);
	Linker.link(g_input_stream_has_pending, "g_input_stream_has_pending", LIBRARY.GIO);
	Linker.link(g_input_stream_set_pending, "g_input_stream_set_pending", LIBRARY.GIO);
	Linker.link(g_input_stream_clear_pending, "g_input_stream_clear_pending", LIBRARY.GIO);

	// gio.OutputStream

	Linker.link(g_output_stream_write, "g_output_stream_write", LIBRARY.GIO);
	Linker.link(g_output_stream_write_all, "g_output_stream_write_all", LIBRARY.GIO);
	Linker.link(g_output_stream_splice, "g_output_stream_splice", LIBRARY.GIO);
	Linker.link(g_output_stream_flush, "g_output_stream_flush", LIBRARY.GIO);
	Linker.link(g_output_stream_close, "g_output_stream_close", LIBRARY.GIO);
	Linker.link(g_output_stream_write_async, "g_output_stream_write_async", LIBRARY.GIO);
	Linker.link(g_output_stream_write_finish, "g_output_stream_write_finish", LIBRARY.GIO);
	Linker.link(g_output_stream_splice_async, "g_output_stream_splice_async", LIBRARY.GIO);
	Linker.link(g_output_stream_splice_finish, "g_output_stream_splice_finish", LIBRARY.GIO);
	Linker.link(g_output_stream_flush_async, "g_output_stream_flush_async", LIBRARY.GIO);
	Linker.link(g_output_stream_flush_finish, "g_output_stream_flush_finish", LIBRARY.GIO);
	Linker.link(g_output_stream_close_async, "g_output_stream_close_async", LIBRARY.GIO);
	Linker.link(g_output_stream_close_finish, "g_output_stream_close_finish", LIBRARY.GIO);
	Linker.link(g_output_stream_is_closed, "g_output_stream_is_closed", LIBRARY.GIO);
	Linker.link(g_output_stream_has_pending, "g_output_stream_has_pending", LIBRARY.GIO);
	Linker.link(g_output_stream_set_pending, "g_output_stream_set_pending", LIBRARY.GIO);
	Linker.link(g_output_stream_clear_pending, "g_output_stream_clear_pending", LIBRARY.GIO);

	// gio.FileInputStream

	Linker.link(g_file_input_stream_query_info, "g_file_input_stream_query_info", LIBRARY.GIO);
	Linker.link(g_file_input_stream_query_info_async, "g_file_input_stream_query_info_async", LIBRARY.GIO);
	Linker.link(g_file_input_stream_query_info_finish, "g_file_input_stream_query_info_finish", LIBRARY.GIO);

	// gio.FileOutputStream

	Linker.link(g_file_output_stream_query_info, "g_file_output_stream_query_info", LIBRARY.GIO);
	Linker.link(g_file_output_stream_query_info_async, "g_file_output_stream_query_info_async", LIBRARY.GIO);
	Linker.link(g_file_output_stream_query_info_finish, "g_file_output_stream_query_info_finish", LIBRARY.GIO);
	Linker.link(g_file_output_stream_get_etag, "g_file_output_stream_get_etag", LIBRARY.GIO);

	// gio.FilterInputStream

	Linker.link(g_filter_input_stream_get_base_stream, "g_filter_input_stream_get_base_stream", LIBRARY.GIO);
	Linker.link(g_filter_input_stream_get_close_base_stream, "g_filter_input_stream_get_close_base_stream", LIBRARY.GIO);
	Linker.link(g_filter_input_stream_set_close_base_stream, "g_filter_input_stream_set_close_base_stream", LIBRARY.GIO);

	// gio.FilterOutputStream

	Linker.link(g_filter_output_stream_get_base_stream, "g_filter_output_stream_get_base_stream", LIBRARY.GIO);
	Linker.link(g_filter_output_stream_get_close_base_stream, "g_filter_output_stream_get_close_base_stream", LIBRARY.GIO);
	Linker.link(g_filter_output_stream_set_close_base_stream, "g_filter_output_stream_set_close_base_stream", LIBRARY.GIO);

	// gio.MemoryInputStream

	Linker.link(g_memory_input_stream_new, "g_memory_input_stream_new", LIBRARY.GIO);
	Linker.link(g_memory_input_stream_new_from_data, "g_memory_input_stream_new_from_data", LIBRARY.GIO);
	Linker.link(g_memory_input_stream_add_data, "g_memory_input_stream_add_data", LIBRARY.GIO);

	// gio.MemoryOutputStream

	Linker.link(g_memory_output_stream_new, "g_memory_output_stream_new", LIBRARY.GIO);
	Linker.link(g_memory_output_stream_get_data, "g_memory_output_stream_get_data", LIBRARY.GIO);
	Linker.link(g_memory_output_stream_get_size, "g_memory_output_stream_get_size", LIBRARY.GIO);
	Linker.link(g_memory_output_stream_get_data_size, "g_memory_output_stream_get_data_size", LIBRARY.GIO);

	// gio.BufferedInputStream

	Linker.link(g_buffered_input_stream_new, "g_buffered_input_stream_new", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_new_sized, "g_buffered_input_stream_new_sized", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_get_buffer_size, "g_buffered_input_stream_get_buffer_size", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_set_buffer_size, "g_buffered_input_stream_set_buffer_size", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_get_available, "g_buffered_input_stream_get_available", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_peek_buffer, "g_buffered_input_stream_peek_buffer", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_peek, "g_buffered_input_stream_peek", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_fill, "g_buffered_input_stream_fill", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_fill_async, "g_buffered_input_stream_fill_async", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_fill_finish, "g_buffered_input_stream_fill_finish", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_read_byte, "g_buffered_input_stream_read_byte", LIBRARY.GIO);

	// gio.BufferedOutputStream

	Linker.link(g_buffered_output_stream_new, "g_buffered_output_stream_new", LIBRARY.GIO);
	Linker.link(g_buffered_output_stream_new_sized, "g_buffered_output_stream_new_sized", LIBRARY.GIO);
	Linker.link(g_buffered_output_stream_get_buffer_size, "g_buffered_output_stream_get_buffer_size", LIBRARY.GIO);
	Linker.link(g_buffered_output_stream_set_buffer_size, "g_buffered_output_stream_set_buffer_size", LIBRARY.GIO);
	Linker.link(g_buffered_output_stream_get_auto_grow, "g_buffered_output_stream_get_auto_grow", LIBRARY.GIO);
	Linker.link(g_buffered_output_stream_set_auto_grow, "g_buffered_output_stream_set_auto_grow", LIBRARY.GIO);

	// gio.DataInputStream

	Linker.link(g_data_input_stream_new, "g_data_input_stream_new", LIBRARY.GIO);
	Linker.link(g_data_input_stream_set_byte_order, "g_data_input_stream_set_byte_order", LIBRARY.GIO);
	Linker.link(g_data_input_stream_get_byte_order, "g_data_input_stream_get_byte_order", LIBRARY.GIO);
	Linker.link(g_data_input_stream_set_newline_type, "g_data_input_stream_set_newline_type", LIBRARY.GIO);
	Linker.link(g_data_input_stream_get_newline_type, "g_data_input_stream_get_newline_type", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_byte, "g_data_input_stream_read_byte", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_int16, "g_data_input_stream_read_int16", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_uint16, "g_data_input_stream_read_uint16", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_int32, "g_data_input_stream_read_int32", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_uint32, "g_data_input_stream_read_uint32", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_int64, "g_data_input_stream_read_int64", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_uint64, "g_data_input_stream_read_uint64", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_line, "g_data_input_stream_read_line", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_line_async, "g_data_input_stream_read_line_async", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_line_finish, "g_data_input_stream_read_line_finish", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_until, "g_data_input_stream_read_until", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_until_async, "g_data_input_stream_read_until_async", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_until_finish, "g_data_input_stream_read_until_finish", LIBRARY.GIO);

	// gio.DataOutputStream

	Linker.link(g_data_output_stream_new, "g_data_output_stream_new", LIBRARY.GIO);
	Linker.link(g_data_output_stream_set_byte_order, "g_data_output_stream_set_byte_order", LIBRARY.GIO);
	Linker.link(g_data_output_stream_get_byte_order, "g_data_output_stream_get_byte_order", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_byte, "g_data_output_stream_put_byte", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_int16, "g_data_output_stream_put_int16", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_uint16, "g_data_output_stream_put_uint16", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_int32, "g_data_output_stream_put_int32", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_uint32, "g_data_output_stream_put_uint32", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_int64, "g_data_output_stream_put_int64", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_uint64, "g_data_output_stream_put_uint64", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_string, "g_data_output_stream_put_string", LIBRARY.GIO);

	// gio.UnixInputStream

	Linker.link(g_unix_input_stream_new, "g_unix_input_stream_new", LIBRARY.GIO);
	Linker.link(g_unix_input_stream_set_close_fd, "g_unix_input_stream_set_close_fd", LIBRARY.GIO);
	Linker.link(g_unix_input_stream_get_close_fd, "g_unix_input_stream_get_close_fd", LIBRARY.GIO);
	Linker.link(g_unix_input_stream_get_fd, "g_unix_input_stream_get_fd", LIBRARY.GIO);

	// gio.UnixOutputStream

	Linker.link(g_unix_output_stream_new, "g_unix_output_stream_new", LIBRARY.GIO);
	Linker.link(g_unix_output_stream_set_close_fd, "g_unix_output_stream_set_close_fd", LIBRARY.GIO);
	Linker.link(g_unix_output_stream_get_close_fd, "g_unix_output_stream_get_close_fd", LIBRARY.GIO);
	Linker.link(g_unix_output_stream_get_fd, "g_unix_output_stream_get_fd", LIBRARY.GIO);

	// gio.ContentType

	Linker.link(g_content_type_equals, "g_content_type_equals", LIBRARY.GIO);
	Linker.link(g_content_type_is_a, "g_content_type_is_a", LIBRARY.GIO);
	Linker.link(g_content_type_is_unknown, "g_content_type_is_unknown", LIBRARY.GIO);
	Linker.link(g_content_type_get_description, "g_content_type_get_description", LIBRARY.GIO);
	Linker.link(g_content_type_get_mime_type, "g_content_type_get_mime_type", LIBRARY.GIO);
	Linker.link(g_content_type_get_icon, "g_content_type_get_icon", LIBRARY.GIO);
	Linker.link(g_content_type_can_be_executable, "g_content_type_can_be_executable", LIBRARY.GIO);
	Linker.link(g_content_type_from_mime_type, "g_content_type_from_mime_type", LIBRARY.GIO);
	Linker.link(g_content_type_guess, "g_content_type_guess", LIBRARY.GIO);
	Linker.link(g_content_type_guess_for_tree, "g_content_type_guess_for_tree", LIBRARY.GIO);
	Linker.link(g_content_types_get_registered, "g_content_types_get_registered", LIBRARY.GIO);

	// gio.AppInfoT


	// gio.AppInfoT

	Linker.link(g_app_info_create_from_commandline, "g_app_info_create_from_commandline", LIBRARY.GIO);
	Linker.link(g_app_info_dup, "g_app_info_dup", LIBRARY.GIO);
	Linker.link(g_app_info_equal, "g_app_info_equal", LIBRARY.GIO);
	Linker.link(g_app_info_get_id, "g_app_info_get_id", LIBRARY.GIO);
	Linker.link(g_app_info_get_name, "g_app_info_get_name", LIBRARY.GIO);
	Linker.link(g_app_info_get_description, "g_app_info_get_description", LIBRARY.GIO);
	Linker.link(g_app_info_get_executable, "g_app_info_get_executable", LIBRARY.GIO);
	Linker.link(g_app_info_get_commandline, "g_app_info_get_commandline", LIBRARY.GIO);
	Linker.link(g_app_info_get_icon, "g_app_info_get_icon", LIBRARY.GIO);
	Linker.link(g_app_info_launch, "g_app_info_launch", LIBRARY.GIO);
	Linker.link(g_app_info_supports_files, "g_app_info_supports_files", LIBRARY.GIO);
	Linker.link(g_app_info_supports_uris, "g_app_info_supports_uris", LIBRARY.GIO);
	Linker.link(g_app_info_launch_uris, "g_app_info_launch_uris", LIBRARY.GIO);
	Linker.link(g_app_info_should_show, "g_app_info_should_show", LIBRARY.GIO);
	Linker.link(g_app_info_can_delete, "g_app_info_can_delete", LIBRARY.GIO);
	Linker.link(g_app_info_delete, "g_app_info_delete", LIBRARY.GIO);
	Linker.link(g_app_info_reset_type_associations, "g_app_info_reset_type_associations", LIBRARY.GIO);
	Linker.link(g_app_info_set_as_default_for_type, "g_app_info_set_as_default_for_type", LIBRARY.GIO);
	Linker.link(g_app_info_set_as_default_for_extension, "g_app_info_set_as_default_for_extension", LIBRARY.GIO);
	Linker.link(g_app_info_add_supports_type, "g_app_info_add_supports_type", LIBRARY.GIO);
	Linker.link(g_app_info_can_remove_supports_type, "g_app_info_can_remove_supports_type", LIBRARY.GIO);
	Linker.link(g_app_info_remove_supports_type, "g_app_info_remove_supports_type", LIBRARY.GIO);
	Linker.link(g_app_info_get_all, "g_app_info_get_all", LIBRARY.GIO);
	Linker.link(g_app_info_get_all_for_type, "g_app_info_get_all_for_type", LIBRARY.GIO);
	Linker.link(g_app_info_get_default_for_type, "g_app_info_get_default_for_type", LIBRARY.GIO);
	Linker.link(g_app_info_get_default_for_uri_scheme, "g_app_info_get_default_for_uri_scheme", LIBRARY.GIO);
	Linker.link(g_app_info_launch_default_for_uri, "g_app_info_launch_default_for_uri", LIBRARY.GIO);

	// gio.AppInfo


	// gio.AppLaunchContext


	// gio.DesktopAppInfo

	Linker.link(g_desktop_app_info_new_from_filename, "g_desktop_app_info_new_from_filename", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_new_from_keyfile, "g_desktop_app_info_new_from_keyfile", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_new, "g_desktop_app_info_new", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_get_is_hidden, "g_desktop_app_info_get_is_hidden", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_set_desktop_env, "g_desktop_app_info_set_desktop_env", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_lookup_get_default_for_uri_scheme, "g_desktop_app_info_lookup_get_default_for_uri_scheme", LIBRARY.GIO);

	// gio.VolumeMonitor

	Linker.link(g_volume_monitor_get, "g_volume_monitor_get", LIBRARY.GIO);
	Linker.link(g_volume_monitor_get_connected_drives, "g_volume_monitor_get_connected_drives", LIBRARY.GIO);
	Linker.link(g_volume_monitor_get_volumes, "g_volume_monitor_get_volumes", LIBRARY.GIO);
	Linker.link(g_volume_monitor_get_mounts, "g_volume_monitor_get_mounts", LIBRARY.GIO);
	Linker.link(g_volume_monitor_adopt_orphan_mount, "g_volume_monitor_adopt_orphan_mount", LIBRARY.GIO);
	Linker.link(g_volume_monitor_get_mount_for_uuid, "g_volume_monitor_get_mount_for_uuid", LIBRARY.GIO);
	Linker.link(g_volume_monitor_get_volume_for_uuid, "g_volume_monitor_get_volume_for_uuid", LIBRARY.GIO);

	// gio.VolumeT


	// gio.VolumeT

	Linker.link(g_volume_get_name, "g_volume_get_name", LIBRARY.GIO);
	Linker.link(g_volume_get_uuid, "g_volume_get_uuid", LIBRARY.GIO);
	Linker.link(g_volume_get_icon, "g_volume_get_icon", LIBRARY.GIO);
	Linker.link(g_volume_get_drive, "g_volume_get_drive", LIBRARY.GIO);
	Linker.link(g_volume_get_mount, "g_volume_get_mount", LIBRARY.GIO);
	Linker.link(g_volume_can_mount, "g_volume_can_mount", LIBRARY.GIO);
	Linker.link(g_volume_should_automount, "g_volume_should_automount", LIBRARY.GIO);
	Linker.link(g_volume_get_activation_root, "g_volume_get_activation_root", LIBRARY.GIO);
	Linker.link(g_volume_mount, "g_volume_mount", LIBRARY.GIO);
	Linker.link(g_volume_mount_finish, "g_volume_mount_finish", LIBRARY.GIO);
	Linker.link(g_volume_can_eject, "g_volume_can_eject", LIBRARY.GIO);
	Linker.link(g_volume_eject, "g_volume_eject", LIBRARY.GIO);
	Linker.link(g_volume_eject_finish, "g_volume_eject_finish", LIBRARY.GIO);
	Linker.link(g_volume_enumerate_identifiers, "g_volume_enumerate_identifiers", LIBRARY.GIO);
	Linker.link(g_volume_get_identifier, "g_volume_get_identifier", LIBRARY.GIO);

	// gio.Volume


	// gio.MountT


	// gio.MountT

	Linker.link(g_mount_get_name, "g_mount_get_name", LIBRARY.GIO);
	Linker.link(g_mount_get_uuid, "g_mount_get_uuid", LIBRARY.GIO);
	Linker.link(g_mount_get_icon, "g_mount_get_icon", LIBRARY.GIO);
	Linker.link(g_mount_get_drive, "g_mount_get_drive", LIBRARY.GIO);
	Linker.link(g_mount_get_root, "g_mount_get_root", LIBRARY.GIO);
	Linker.link(g_mount_get_volume, "g_mount_get_volume", LIBRARY.GIO);
	Linker.link(g_mount_can_unmount, "g_mount_can_unmount", LIBRARY.GIO);
	Linker.link(g_mount_unmount, "g_mount_unmount", LIBRARY.GIO);
	Linker.link(g_mount_unmount_finish, "g_mount_unmount_finish", LIBRARY.GIO);
	Linker.link(g_mount_remount, "g_mount_remount", LIBRARY.GIO);
	Linker.link(g_mount_remount_finish, "g_mount_remount_finish", LIBRARY.GIO);
	Linker.link(g_mount_can_eject, "g_mount_can_eject", LIBRARY.GIO);
	Linker.link(g_mount_eject, "g_mount_eject", LIBRARY.GIO);
	Linker.link(g_mount_eject_finish, "g_mount_eject_finish", LIBRARY.GIO);
	Linker.link(g_mount_guess_content_type, "g_mount_guess_content_type", LIBRARY.GIO);
	Linker.link(g_mount_guess_content_type_finish, "g_mount_guess_content_type_finish", LIBRARY.GIO);
	Linker.link(g_mount_guess_content_type_sync, "g_mount_guess_content_type_sync", LIBRARY.GIO);
	Linker.link(g_mount_is_shadowed, "g_mount_is_shadowed", LIBRARY.GIO);
	Linker.link(g_mount_shadow, "g_mount_shadow", LIBRARY.GIO);
	Linker.link(g_mount_unshadow, "g_mount_unshadow", LIBRARY.GIO);

	// gio.Mount


	// gio.DriveT


	// gio.DriveT

	Linker.link(g_drive_get_name, "g_drive_get_name", LIBRARY.GIO);
	Linker.link(g_drive_get_icon, "g_drive_get_icon", LIBRARY.GIO);
	Linker.link(g_drive_has_volumes, "g_drive_has_volumes", LIBRARY.GIO);
	Linker.link(g_drive_get_volumes, "g_drive_get_volumes", LIBRARY.GIO);
	Linker.link(g_drive_can_eject, "g_drive_can_eject", LIBRARY.GIO);
	Linker.link(g_drive_can_poll_for_media, "g_drive_can_poll_for_media", LIBRARY.GIO);
	Linker.link(g_drive_poll_for_media, "g_drive_poll_for_media", LIBRARY.GIO);
	Linker.link(g_drive_poll_for_media_finish, "g_drive_poll_for_media_finish", LIBRARY.GIO);
	Linker.link(g_drive_has_media, "g_drive_has_media", LIBRARY.GIO);
	Linker.link(g_drive_is_media_check_automatic, "g_drive_is_media_check_automatic", LIBRARY.GIO);
	Linker.link(g_drive_is_media_removable, "g_drive_is_media_removable", LIBRARY.GIO);
	Linker.link(g_drive_eject, "g_drive_eject", LIBRARY.GIO);
	Linker.link(g_drive_eject_finish, "g_drive_eject_finish", LIBRARY.GIO);
	Linker.link(g_drive_enumerate_identifiers, "g_drive_enumerate_identifiers", LIBRARY.GIO);
	Linker.link(g_drive_get_identifier, "g_drive_get_identifier", LIBRARY.GIO);

	// gio.Drive


	// gio.UnixMountEntry

	Linker.link(g_unix_mount_free, "g_unix_mount_free", LIBRARY.GIO);
	Linker.link(g_unix_mount_compare, "g_unix_mount_compare", LIBRARY.GIO);
	Linker.link(g_unix_mount_get_mount_path, "g_unix_mount_get_mount_path", LIBRARY.GIO);
	Linker.link(g_unix_mount_get_device_path, "g_unix_mount_get_device_path", LIBRARY.GIO);
	Linker.link(g_unix_mount_get_fs_type, "g_unix_mount_get_fs_type", LIBRARY.GIO);
	Linker.link(g_unix_mount_is_readonly, "g_unix_mount_is_readonly", LIBRARY.GIO);
	Linker.link(g_unix_mount_is_system_internal, "g_unix_mount_is_system_internal", LIBRARY.GIO);
	Linker.link(g_unix_mount_guess_icon, "g_unix_mount_guess_icon", LIBRARY.GIO);
	Linker.link(g_unix_mount_guess_name, "g_unix_mount_guess_name", LIBRARY.GIO);
	Linker.link(g_unix_mount_guess_can_eject, "g_unix_mount_guess_can_eject", LIBRARY.GIO);
	Linker.link(g_unix_mount_guess_should_display, "g_unix_mount_guess_should_display", LIBRARY.GIO);
	Linker.link(g_unix_mount_points_get, "g_unix_mount_points_get", LIBRARY.GIO);
	Linker.link(g_unix_mounts_get, "g_unix_mounts_get", LIBRARY.GIO);
	Linker.link(g_unix_mount_at, "g_unix_mount_at", LIBRARY.GIO);
	Linker.link(g_unix_mounts_changed_since, "g_unix_mounts_changed_since", LIBRARY.GIO);
	Linker.link(g_unix_mount_points_changed_since, "g_unix_mount_points_changed_since", LIBRARY.GIO);
	Linker.link(g_unix_is_mount_path_system_internal, "g_unix_is_mount_path_system_internal", LIBRARY.GIO);

	// gio.UnixMountPoint

	Linker.link(g_unix_mount_point_free, "g_unix_mount_point_free", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_compare, "g_unix_mount_point_compare", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_get_mount_path, "g_unix_mount_point_get_mount_path", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_get_device_path, "g_unix_mount_point_get_device_path", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_get_fs_type, "g_unix_mount_point_get_fs_type", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_is_readonly, "g_unix_mount_point_is_readonly", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_is_user_mountable, "g_unix_mount_point_is_user_mountable", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_is_loopback, "g_unix_mount_point_is_loopback", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_guess_icon, "g_unix_mount_point_guess_icon", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_guess_name, "g_unix_mount_point_guess_name", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_guess_can_eject, "g_unix_mount_point_guess_can_eject", LIBRARY.GIO);

	// gio.UnixMountMonitor

	Linker.link(g_unix_mount_monitor_new, "g_unix_mount_monitor_new", LIBRARY.GIO);
	Linker.link(g_unix_mount_monitor_set_rate_limit, "g_unix_mount_monitor_set_rate_limit", LIBRARY.GIO);

	// gio.IconT


	// gio.IconT

	Linker.link(g_icon_hash, "g_icon_hash", LIBRARY.GIO);
	Linker.link(g_icon_equal, "g_icon_equal", LIBRARY.GIO);
	Linker.link(g_icon_to_string, "g_icon_to_string", LIBRARY.GIO);
	Linker.link(g_icon_new_for_string, "g_icon_new_for_string", LIBRARY.GIO);

	// gio.Icon


	// gio.FileIcon

	Linker.link(g_file_icon_new, "g_file_icon_new", LIBRARY.GIO);
	Linker.link(g_file_icon_get_file, "g_file_icon_get_file", LIBRARY.GIO);

	// gio.LoadableIconT


	// gio.LoadableIconT

	Linker.link(g_loadable_icon_load, "g_loadable_icon_load", LIBRARY.GIO);
	Linker.link(g_loadable_icon_load_async, "g_loadable_icon_load_async", LIBRARY.GIO);
	Linker.link(g_loadable_icon_load_finish, "g_loadable_icon_load_finish", LIBRARY.GIO);

	// gio.ThemedIcon

	Linker.link(g_themed_icon_new, "g_themed_icon_new", LIBRARY.GIO);
	Linker.link(g_themed_icon_new_from_names, "g_themed_icon_new_from_names", LIBRARY.GIO);
	Linker.link(g_themed_icon_new_with_default_fallbacks, "g_themed_icon_new_with_default_fallbacks", LIBRARY.GIO);
	Linker.link(g_themed_icon_prepend_name, "g_themed_icon_prepend_name", LIBRARY.GIO);
	Linker.link(g_themed_icon_append_name, "g_themed_icon_append_name", LIBRARY.GIO);

	// gio.EmblemedIcon

	Linker.link(g_emblemed_icon_new, "g_emblemed_icon_new", LIBRARY.GIO);
	Linker.link(g_emblemed_icon_get_icon, "g_emblemed_icon_get_icon", LIBRARY.GIO);
	Linker.link(g_emblemed_icon_get_emblems, "g_emblemed_icon_get_emblems", LIBRARY.GIO);
	Linker.link(g_emblemed_icon_add_emblem, "g_emblemed_icon_add_emblem", LIBRARY.GIO);

	// gio.Emblem

	Linker.link(g_emblem_new, "g_emblem_new", LIBRARY.GIO);
	Linker.link(g_emblem_new_with_origin, "g_emblem_new_with_origin", LIBRARY.GIO);
	Linker.link(g_emblem_get_icon, "g_emblem_get_icon", LIBRARY.GIO);
	Linker.link(g_emblem_get_origin, "g_emblem_get_origin", LIBRARY.GIO);

	// gio.FilenameCompleter

	Linker.link(g_filename_completer_new, "g_filename_completer_new", LIBRARY.GIO);
	Linker.link(g_filename_completer_get_completion_suffix, "g_filename_completer_get_completion_suffix", LIBRARY.GIO);
	Linker.link(g_filename_completer_get_completions, "g_filename_completer_get_completions", LIBRARY.GIO);
	Linker.link(g_filename_completer_set_dirs_only, "g_filename_completer_set_dirs_only", LIBRARY.GIO);

	// gio.Vfs

	Linker.link(g_vfs_get_file_for_path, "g_vfs_get_file_for_path", LIBRARY.GIO);
	Linker.link(g_vfs_get_file_for_uri, "g_vfs_get_file_for_uri", LIBRARY.GIO);
	Linker.link(g_vfs_parse_name, "g_vfs_parse_name", LIBRARY.GIO);
	Linker.link(g_vfs_get_default, "g_vfs_get_default", LIBRARY.GIO);
	Linker.link(g_vfs_get_local, "g_vfs_get_local", LIBRARY.GIO);
	Linker.link(g_vfs_is_active, "g_vfs_is_active", LIBRARY.GIO);
	Linker.link(g_vfs_get_supported_uri_schemes, "g_vfs_get_supported_uri_schemes", LIBRARY.GIO);

	// gio.IOModule

	Linker.link(g_io_module_new, "g_io_module_new", LIBRARY.GIO);
	Linker.link(g_io_modules_load_all_in_directory, "g_io_modules_load_all_in_directory", LIBRARY.GIO);
	Linker.link(g_io_module_load, "g_io_module_load", LIBRARY.GIO);
	Linker.link(g_io_module_unload, "g_io_module_unload", LIBRARY.GIO);

	// gio.IOExtension

	Linker.link(g_io_extension_get_name, "g_io_extension_get_name", LIBRARY.GIO);
	Linker.link(g_io_extension_get_priority, "g_io_extension_get_priority", LIBRARY.GIO);
	Linker.link(g_io_extension_get_type, "g_io_extension_get_type", LIBRARY.GIO);
	Linker.link(g_io_extension_ref_class, "g_io_extension_ref_class", LIBRARY.GIO);

	// gio.IOExtensionPoint

	Linker.link(g_io_extension_point_get_extension_by_name, "g_io_extension_point_get_extension_by_name", LIBRARY.GIO);
	Linker.link(g_io_extension_point_get_extensions, "g_io_extension_point_get_extensions", LIBRARY.GIO);
	Linker.link(g_io_extension_point_get_required_type, "g_io_extension_point_get_required_type", LIBRARY.GIO);
	Linker.link(g_io_extension_point_implement, "g_io_extension_point_implement", LIBRARY.GIO);
	Linker.link(g_io_extension_point_lookup, "g_io_extension_point_lookup", LIBRARY.GIO);
	Linker.link(g_io_extension_point_register, "g_io_extension_point_register", LIBRARY.GIO);
	Linker.link(g_io_extension_point_set_required_type, "g_io_extension_point_set_required_type", LIBRARY.GIO);
}

extern(C)
{
	
	// gio.File
	
	typedef GFile* function(char* path) c_g_file_new_for_path;
	typedef GFile* function(char* uri) c_g_file_new_for_uri;
	typedef GFile* function(char* arg) c_g_file_new_for_commandline_arg;
	typedef GFile* function(char* parseName) c_g_file_parse_name;
	typedef GFile* function(GFile* file) c_g_file_dup;
	typedef guint function(gconstpointer file) c_g_file_hash;
	typedef gboolean function(GFile* file1, GFile* file2) c_g_file_equal;
	typedef char* function(GFile* file) c_g_file_get_basename;
	typedef char* function(GFile* file) c_g_file_get_path;
	typedef char* function(GFile* file) c_g_file_get_uri;
	typedef char* function(GFile* file) c_g_file_get_parse_name;
	typedef GFile* function(GFile* file) c_g_file_get_parent;
	typedef GFile* function(GFile* file, char* name) c_g_file_get_child;
	typedef GFile* function(GFile* file, char* displayName, GError** error) c_g_file_get_child_for_display_name;
	typedef gboolean function(GFile* file, GFile* prefix) c_g_file_has_prefix;
	typedef char* function(GFile* parent, GFile* descendant) c_g_file_get_relative_path;
	typedef GFile* function(GFile* file, char* relativePath) c_g_file_resolve_relative_path;
	typedef gboolean function(GFile* file) c_g_file_is_native;
	typedef gboolean function(GFile* file, char* uriScheme) c_g_file_has_uri_scheme;
	typedef char* function(GFile* file) c_g_file_get_uri_scheme;
	typedef GFileInputStream* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_read;
	typedef void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_read_async;
	typedef GFileInputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_read_finish;
	typedef GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_append_to;
	typedef GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_create;
	typedef GFileOutputStream* function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_replace;
	typedef void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_append_to_async;
	typedef GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_append_to_finish;
	typedef void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_create_async;
	typedef GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_create_finish;
	typedef void function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_replace_async;
	typedef GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_replace_finish;
	typedef GFileInfo* function(GFile* file, char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_query_info;
	typedef void function(GFile* file, char* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_query_info_async;
	typedef GFileInfo* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_query_info_finish;
	typedef gboolean function(GFile* file, GCancellable* cancellable) c_g_file_query_exists;
	typedef GFileType function(GFile* file, GFileQueryInfoFlags flags, GCancellable* cancellable) c_g_file_query_file_type;
	typedef GFileInfo* function(GFile* file, char* attributes, GCancellable* cancellable, GError** error) c_g_file_query_filesystem_info;
	typedef void function(GFile* file, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_query_filesystem_info_async;
	typedef GFileInfo* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_query_filesystem_info_finish;
	typedef GAppInfo* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_query_default_handler;
	typedef GMount* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_find_enclosing_mount;
	typedef void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_find_enclosing_mount_async;
	typedef GMount* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_find_enclosing_mount_finish;
	typedef GFileEnumerator* function(GFile* file, char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_enumerate_children;
	typedef void function(GFile* file, char* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_enumerate_children_async;
	typedef GFileEnumerator* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_enumerate_children_finish;
	typedef GFile* function(GFile* file, char* displayName, GCancellable* cancellable, GError** error) c_g_file_set_display_name;
	typedef void function(GFile* file, char* displayName, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_set_display_name_async;
	typedef GFile* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_set_display_name_finish;
	typedef gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_delete;
	typedef gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_trash;
	typedef gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, gpointer progressCallbackData, GError** error) c_g_file_copy;
	typedef void function(GFile* source, GFile* destination, GFileCopyFlags flags, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, gpointer progressCallbackData, GAsyncReadyCallback callback, gpointer userData) c_g_file_copy_async;
	typedef gboolean function(GFile* file, GAsyncResult* res, GError** error) c_g_file_copy_finish;
	typedef gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, gpointer progressCallbackData, GError** error) c_g_file_move;
	typedef gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_make_directory;
	typedef gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_make_directory_with_parents;
	typedef gboolean function(GFile* file, char* symlinkValue, GCancellable* cancellable, GError** error) c_g_file_make_symbolic_link;
	typedef GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_query_settable_attributes;
	typedef GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_query_writable_namespaces;
	typedef gboolean function(GFile* file, char* attribute, GFileAttributeType type, gpointer valueP, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute;
	typedef gboolean function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attributes_from_info;
	typedef void function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_set_attributes_async;
	typedef gboolean function(GFile* file, GAsyncResult* result, GFileInfo** info, GError** error) c_g_file_set_attributes_finish;
	typedef gboolean function(GFile* file, char* attribute, char* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_string;
	typedef gboolean function(GFile* file, char* attribute, char* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_byte_string;
	typedef gboolean function(GFile* file, char* attribute, guint32 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_uint32;
	typedef gboolean function(GFile* file, char* attribute, gint32 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_int32;
	typedef gboolean function(GFile* file, char* attribute, guint64 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_uint64;
	typedef gboolean function(GFile* file, char* attribute, gint64 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_int64;
	typedef void function(GFile* file, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_mount_mountable;
	typedef GFile* function(GFile* file, GAsyncResult* result, GError** error) c_g_file_mount_mountable_finish;
	typedef void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_unmount_mountable;
	typedef gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_unmount_mountable_finish;
	typedef void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_eject_mountable;
	typedef gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_eject_mountable_finish;
	typedef void function(GFile* location, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_mount_enclosing_volume;
	typedef gboolean function(GFile* location, GAsyncResult* result, GError** error) c_g_file_mount_enclosing_volume_finish;
	typedef GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error) c_g_file_monitor_directory;
	typedef GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error) c_g_file_monitor_file;
	typedef GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error) c_g_file_monitor;
	typedef gboolean function(GFile* file, GCancellable* cancellable, char** contents, gsize* length, char** etagOut, GError** error) c_g_file_load_contents;
	typedef void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_load_contents_async;
	typedef gboolean function(GFile* file, GAsyncResult* res, char** contents, gsize* length, char** etagOut, GError** error) c_g_file_load_contents_finish;
	typedef void function(GFile* file, GCancellable* cancellable, GFileReadMoreCallback readMoreCallback, GAsyncReadyCallback callback, gpointer userData) c_g_file_load_partial_contents_async;
	typedef gboolean function(GFile* file, GAsyncResult* res, char** contents, gsize* length, char** etagOut, GError** error) c_g_file_load_partial_contents_finish;
	typedef gboolean function(GFile* file, char* contents, gsize length, char* etag, gboolean makeBackup, GFileCreateFlags flags, char** newEtag, GCancellable* cancellable, GError** error) c_g_file_replace_contents;
	typedef void function(GFile* file, char* contents, gsize length, char* etag, gboolean makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_replace_contents_async;
	typedef gboolean function(GFile* file, GAsyncResult* res, char** newEtag, GError** error) c_g_file_replace_contents_finish;
	typedef gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GError** error) c_g_file_copy_attributes;
	
	// gio.FileAttributeInfoList
	
	typedef GFileAttributeInfoList* function() c_g_file_attribute_info_list_new;
	typedef GFileAttributeInfoList* function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_ref;
	typedef void function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_unref;
	typedef GFileAttributeInfoList* function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_dup;
	typedef GFileAttributeInfo* function(GFileAttributeInfoList* list, char* name) c_g_file_attribute_info_list_lookup;
	typedef void function(GFileAttributeInfoList* list, char* name, GFileAttributeType type, GFileAttributeInfoFlags flags) c_g_file_attribute_info_list_add;
	
	// gio.FileInfo
	
	typedef GFileInfo* function() c_g_file_info_new;
	typedef GFileInfo* function(GFileInfo* other) c_g_file_info_dup;
	typedef void function(GFileInfo* srcInfo, GFileInfo* destInfo) c_g_file_info_copy_into;
	typedef gboolean function(GFileInfo* info, char* attribute) c_g_file_info_has_attribute;
	typedef char** function(GFileInfo* info, char* nameSpace) c_g_file_info_list_attributes;
	typedef GFileAttributeType function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_type;
	typedef void function(GFileInfo* info, char* attribute) c_g_file_info_remove_attribute;
	typedef char* function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_as_string;
	typedef gboolean function(GFileInfo* info, char* attribute, GFileAttributeType* type, gpointer* valuePp, GFileAttributeStatus* status) c_g_file_info_get_attribute_data;
	typedef GFileAttributeStatus function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_status;
	typedef char* function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_string;
	typedef char* function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_byte_string;
	typedef gboolean function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_boolean;
	typedef guint32 function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_uint32;
	typedef gint32 function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_int32;
	typedef guint64 function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_uint64;
	typedef gint64 function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_int64;
	typedef GObject* function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_object;
	typedef void function(GFileInfo* info, char* attribute, GFileAttributeType type, gpointer valueP) c_g_file_info_set_attribute;
	typedef void function(GFileInfo* info, char* attribute, char* attrValue) c_g_file_info_set_attribute_string;
	typedef void function(GFileInfo* info, char* attribute, char* attrValue) c_g_file_info_set_attribute_byte_string;
	typedef void function(GFileInfo* info, char* attribute, gboolean attrValue) c_g_file_info_set_attribute_boolean;
	typedef void function(GFileInfo* info, char* attribute, guint32 attrValue) c_g_file_info_set_attribute_uint32;
	typedef void function(GFileInfo* info, char* attribute, gint32 attrValue) c_g_file_info_set_attribute_int32;
	typedef void function(GFileInfo* info, char* attribute, guint64 attrValue) c_g_file_info_set_attribute_uint64;
	typedef void function(GFileInfo* info, char* attribute, gint64 attrValue) c_g_file_info_set_attribute_int64;
	typedef void function(GFileInfo* info, char* attribute, GObject* attrValue) c_g_file_info_set_attribute_object;
	typedef void function(GFileInfo* info) c_g_file_info_clear_status;
	typedef GFileType function(GFileInfo* info) c_g_file_info_get_file_type;
	typedef gboolean function(GFileInfo* info) c_g_file_info_get_is_hidden;
	typedef gboolean function(GFileInfo* info) c_g_file_info_get_is_backup;
	typedef gboolean function(GFileInfo* info) c_g_file_info_get_is_symlink;
	typedef char* function(GFileInfo* info) c_g_file_info_get_name;
	typedef char* function(GFileInfo* info) c_g_file_info_get_display_name;
	typedef char* function(GFileInfo* info) c_g_file_info_get_edit_name;
	typedef GIcon* function(GFileInfo* info) c_g_file_info_get_icon;
	typedef char* function(GFileInfo* info) c_g_file_info_get_content_type;
	typedef goffset function(GFileInfo* info) c_g_file_info_get_size;
	typedef void function(GFileInfo* info, GTimeVal* result) c_g_file_info_get_modification_time;
	typedef char* function(GFileInfo* info) c_g_file_info_get_symlink_target;
	typedef char* function(GFileInfo* info) c_g_file_info_get_etag;
	typedef gint32 function(GFileInfo* info) c_g_file_info_get_sort_order;
	typedef void function(GFileInfo* info, GFileAttributeMatcher* mask) c_g_file_info_set_attribute_mask;
	typedef void function(GFileInfo* info) c_g_file_info_unset_attribute_mask;
	typedef void function(GFileInfo* info, GFileType type) c_g_file_info_set_file_type;
	typedef void function(GFileInfo* info, gboolean isHidden) c_g_file_info_set_is_hidden;
	typedef void function(GFileInfo* info, gboolean isSymlink) c_g_file_info_set_is_symlink;
	typedef void function(GFileInfo* info, char* name) c_g_file_info_set_name;
	typedef void function(GFileInfo* info, char* displayName) c_g_file_info_set_display_name;
	typedef void function(GFileInfo* info, char* editName) c_g_file_info_set_edit_name;
	typedef void function(GFileInfo* info, GIcon* icon) c_g_file_info_set_icon;
	typedef void function(GFileInfo* info, char* contentType) c_g_file_info_set_content_type;
	typedef void function(GFileInfo* info, goffset size) c_g_file_info_set_size;
	typedef void function(GFileInfo* info, GTimeVal* mtime) c_g_file_info_set_modification_time;
	typedef void function(GFileInfo* info, char* symlinkTarget) c_g_file_info_set_symlink_target;
	typedef void function(GFileInfo* info, gint32 sortOrder) c_g_file_info_set_sort_order;
	
	// gio.FileAttributeMatcher
	
	typedef GFileAttributeMatcher* function(char* attributes) c_g_file_attribute_matcher_new;
	typedef GFileAttributeMatcher* function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_ref;
	typedef void function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_unref;
	typedef gboolean function(GFileAttributeMatcher* matcher, char* attribute) c_g_file_attribute_matcher_matches;
	typedef gboolean function(GFileAttributeMatcher* matcher, char* attribute) c_g_file_attribute_matcher_matches_only;
	typedef gboolean function(GFileAttributeMatcher* matcher, char* ns) c_g_file_attribute_matcher_enumerate_namespace;
	typedef char* function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_enumerate_next;
	
	// gio.FileEnumerator
	
	typedef GFileInfo* function(GFileEnumerator* enumerator, GCancellable* cancellable, GError** error) c_g_file_enumerator_next_file;
	typedef gboolean function(GFileEnumerator* enumerator, GCancellable* cancellable, GError** error) c_g_file_enumerator_close;
	typedef void function(GFileEnumerator* enumerator, int numFiles, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_enumerator_next_files_async;
	typedef GList* function(GFileEnumerator* enumerator, GAsyncResult* result, GError** error) c_g_file_enumerator_next_files_finish;
	typedef void function(GFileEnumerator* enumerator, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_enumerator_close_async;
	typedef gboolean function(GFileEnumerator* enumerator, GAsyncResult* result, GError** error) c_g_file_enumerator_close_finish;
	typedef gboolean function(GFileEnumerator* enumerator) c_g_file_enumerator_is_closed;
	typedef gboolean function(GFileEnumerator* enumerator) c_g_file_enumerator_has_pending;
	typedef void function(GFileEnumerator* enumerator, gboolean pending) c_g_file_enumerator_set_pending;
	typedef GFile* function(GFileEnumerator* enumerator) c_g_file_enumerator_get_container;
	
	// gio.MountOperation
	
	typedef GMountOperation* function() c_g_mount_operation_new;
	typedef char* function(GMountOperation* op) c_g_mount_operation_get_username;
	typedef void function(GMountOperation* op, char* username) c_g_mount_operation_set_username;
	typedef char* function(GMountOperation* op) c_g_mount_operation_get_password;
	typedef void function(GMountOperation* op, char* password) c_g_mount_operation_set_password;
	typedef gboolean function(GMountOperation* op) c_g_mount_operation_get_anonymous;
	typedef void function(GMountOperation* op, gboolean anonymous) c_g_mount_operation_set_anonymous;
	typedef char* function(GMountOperation* op) c_g_mount_operation_get_domain;
	typedef void function(GMountOperation* op, char* domain) c_g_mount_operation_set_domain;
	typedef GPasswordSave function(GMountOperation* op) c_g_mount_operation_get_password_save;
	typedef void function(GMountOperation* op, GPasswordSave save) c_g_mount_operation_set_password_save;
	typedef int function(GMountOperation* op) c_g_mount_operation_get_choice;
	typedef void function(GMountOperation* op, int choice) c_g_mount_operation_set_choice;
	typedef void function(GMountOperation* op, GMountOperationResult result) c_g_mount_operation_reply;
	
	// gio.ErrorGIO
	
	typedef GIOErrorEnum function(gint errNo) c_g_io_error_from_errno;
	
	// gio.FileMonitor
	
	typedef gboolean function(GFileMonitor* monitor) c_g_file_monitor_cancel;
	typedef gboolean function(GFileMonitor* monitor) c_g_file_monitor_is_cancelled;
	typedef void function(GFileMonitor* monitor, int limitMsecs) c_g_file_monitor_set_rate_limit;
	typedef void function(GFileMonitor* monitor, GFile* child, GFile* otherFile, GFileMonitorEvent eventType) c_g_file_monitor_emit_event;
	
	// gio.Cancellable
	
	typedef GCancellable* function() c_g_cancellable_new;
	typedef gboolean function(GCancellable* cancellable) c_g_cancellable_is_cancelled;
	typedef gboolean function(GCancellable* cancellable, GError** error) c_g_cancellable_set_error_if_cancelled;
	typedef int function(GCancellable* cancellable) c_g_cancellable_get_fd;
	typedef void function(GCancellable* cancellable, GPollFD* pollfd) c_g_cancellable_make_pollfd;
	typedef GCancellable* function() c_g_cancellable_get_current;
	typedef void function(GCancellable* cancellable) c_g_cancellable_pop_current;
	typedef void function(GCancellable* cancellable) c_g_cancellable_push_current;
	typedef void function(GCancellable* cancellable) c_g_cancellable_reset;
	typedef void function(GCancellable* cancellable) c_g_cancellable_cancel;
	
	// gio.AsyncResultT
	
	
	// gio.AsyncResultT
	
	typedef gpointer function(GAsyncResult* res) c_g_async_result_get_user_data;
	typedef GObject* function(GAsyncResult* res) c_g_async_result_get_source_object;
	
	// gio.IOSchedulerJob
	
	typedef void function(GIOSchedulerJobFunc jobFunc, gpointer userData, GDestroyNotify notify, gint ioPriority, GCancellable* cancellable) c_g_io_scheduler_push_job;
	typedef void function() c_g_io_scheduler_cancel_all_jobs;
	typedef gboolean function(GIOSchedulerJob* job, GSourceFunc func, gpointer userData, GDestroyNotify notify) c_g_io_scheduler_job_send_to_mainloop;
	typedef void function(GIOSchedulerJob* job, GSourceFunc func, gpointer userData, GDestroyNotify notify) c_g_io_scheduler_job_send_to_mainloop_async;
	
	// gio.SimpleAsyncResult
	
	typedef GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, gpointer userData, gpointer sourceTag) c_g_simple_async_result_new;
	typedef GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, gpointer userData, GQuark domain, gint code, char* format, ... ) c_g_simple_async_result_new_error;
	typedef GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, gpointer userData, GError* error) c_g_simple_async_result_new_from_error;
	typedef void function(GSimpleAsyncResult* simple, gpointer opRes, GDestroyNotify destroyOpRes) c_g_simple_async_result_set_op_res_gpointer;
	typedef gpointer function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_op_res_gpointer;
	typedef void function(GSimpleAsyncResult* simple, gssize opRes) c_g_simple_async_result_set_op_res_gssize;
	typedef gssize function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_op_res_gssize;
	typedef void function(GSimpleAsyncResult* simple, gboolean opRes) c_g_simple_async_result_set_op_res_gboolean;
	typedef gboolean function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_op_res_gboolean;
	typedef gpointer function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_source_tag;
	typedef gboolean function(GAsyncResult* result, GObject* source, gpointer sourceTag) c_g_simple_async_result_is_valid;
	typedef void function(GSimpleAsyncResult* simple, gboolean handleCancellation) c_g_simple_async_result_set_handle_cancellation;
	typedef void function(GSimpleAsyncResult* simple) c_g_simple_async_result_complete;
	typedef void function(GSimpleAsyncResult* simple) c_g_simple_async_result_complete_in_idle;
	typedef void function(GSimpleAsyncResult* simple, GSimpleAsyncThreadFunc func, int ioPriority, GCancellable* cancellable) c_g_simple_async_result_run_in_thread;
	typedef void function(GSimpleAsyncResult* simple, GError* error) c_g_simple_async_result_set_from_error;
	typedef gboolean function(GSimpleAsyncResult* simple, GError** dest) c_g_simple_async_result_propagate_error;
	typedef void function(GSimpleAsyncResult* simple, GQuark domain, gint code, char* format, ... ) c_g_simple_async_result_set_error;
	typedef void function(GSimpleAsyncResult* simple, GQuark domain, gint code, char* format, va_list args) c_g_simple_async_result_set_error_va;
	typedef void function(GObject* object, GAsyncReadyCallback callback, gpointer userData, GQuark domain, gint code, char* format, ... ) c_g_simple_async_report_error_in_idle;
	typedef void function(GObject* object, GAsyncReadyCallback callback, gpointer userData, GError* error) c_g_simple_async_report_gerror_in_idle;
	
	// gio.SeekableT
	
	
	// gio.SeekableT
	
	typedef goffset function(GSeekable* seekable) c_g_seekable_tell;
	typedef gboolean function(GSeekable* seekable) c_g_seekable_can_seek;
	typedef gboolean function(GSeekable* seekable, goffset offset, GSeekType type, GCancellable* cancellable, GError** error) c_g_seekable_seek;
	typedef gboolean function(GSeekable* seekable) c_g_seekable_can_truncate;
	typedef gboolean function(GSeekable* seekable, goffset offset, GCancellable* cancellable, GError** error) c_g_seekable_truncate;
	
	// gio.InputStream
	
	typedef gssize function(GInputStream* stream, void* buffer, gsize count, GCancellable* cancellable, GError** error) c_g_input_stream_read;
	typedef gboolean function(GInputStream* stream, void* buffer, gsize count, gsize* bytesRead, GCancellable* cancellable, GError** error) c_g_input_stream_read_all;
	typedef gssize function(GInputStream* stream, gsize count, GCancellable* cancellable, GError** error) c_g_input_stream_skip;
	typedef gboolean function(GInputStream* stream, GCancellable* cancellable, GError** error) c_g_input_stream_close;
	typedef void function(GInputStream* stream, void* buffer, gsize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_input_stream_read_async;
	typedef gssize function(GInputStream* stream, GAsyncResult* result, GError** error) c_g_input_stream_read_finish;
	typedef void function(GInputStream* stream, gsize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_input_stream_skip_async;
	typedef gssize function(GInputStream* stream, GAsyncResult* result, GError** error) c_g_input_stream_skip_finish;
	typedef void function(GInputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_input_stream_close_async;
	typedef gboolean function(GInputStream* stream, GAsyncResult* result, GError** error) c_g_input_stream_close_finish;
	typedef gboolean function(GInputStream* stream) c_g_input_stream_is_closed;
	typedef gboolean function(GInputStream* stream) c_g_input_stream_has_pending;
	typedef gboolean function(GInputStream* stream, GError** error) c_g_input_stream_set_pending;
	typedef void function(GInputStream* stream) c_g_input_stream_clear_pending;
	
	// gio.OutputStream
	
	typedef gssize function(GOutputStream* stream, void* buffer, gsize count, GCancellable* cancellable, GError** error) c_g_output_stream_write;
	typedef gboolean function(GOutputStream* stream, void* buffer, gsize count, gsize* bytesWritten, GCancellable* cancellable, GError** error) c_g_output_stream_write_all;
	typedef gssize function(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, GCancellable* cancellable, GError** error) c_g_output_stream_splice;
	typedef gboolean function(GOutputStream* stream, GCancellable* cancellable, GError** error) c_g_output_stream_flush;
	typedef gboolean function(GOutputStream* stream, GCancellable* cancellable, GError** error) c_g_output_stream_close;
	typedef void function(GOutputStream* stream, void* buffer, gsize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_output_stream_write_async;
	typedef gssize function(GOutputStream* stream, GAsyncResult* result, GError** error) c_g_output_stream_write_finish;
	typedef void function(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_output_stream_splice_async;
	typedef gssize function(GOutputStream* stream, GAsyncResult* result, GError** error) c_g_output_stream_splice_finish;
	typedef void function(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_output_stream_flush_async;
	typedef gboolean function(GOutputStream* stream, GAsyncResult* result, GError** error) c_g_output_stream_flush_finish;
	typedef void function(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_output_stream_close_async;
	typedef gboolean function(GOutputStream* stream, GAsyncResult* result, GError** error) c_g_output_stream_close_finish;
	typedef gboolean function(GOutputStream* stream) c_g_output_stream_is_closed;
	typedef gboolean function(GOutputStream* stream) c_g_output_stream_has_pending;
	typedef gboolean function(GOutputStream* stream, GError** error) c_g_output_stream_set_pending;
	typedef void function(GOutputStream* stream) c_g_output_stream_clear_pending;
	
	// gio.FileInputStream
	
	typedef GFileInfo* function(GFileInputStream* stream, char* attributes, GCancellable* cancellable, GError** error) c_g_file_input_stream_query_info;
	typedef void function(GFileInputStream* stream, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_input_stream_query_info_async;
	typedef GFileInfo* function(GFileInputStream* stream, GAsyncResult* result, GError** error) c_g_file_input_stream_query_info_finish;
	
	// gio.FileOutputStream
	
	typedef GFileInfo* function(GFileOutputStream* stream, char* attributes, GCancellable* cancellable, GError** error) c_g_file_output_stream_query_info;
	typedef void function(GFileOutputStream* stream, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_output_stream_query_info_async;
	typedef GFileInfo* function(GFileOutputStream* stream, GAsyncResult* result, GError** error) c_g_file_output_stream_query_info_finish;
	typedef char* function(GFileOutputStream* stream) c_g_file_output_stream_get_etag;
	
	// gio.FilterInputStream
	
	typedef GInputStream* function(GFilterInputStream* stream) c_g_filter_input_stream_get_base_stream;
	typedef gboolean function(GFilterInputStream* stream) c_g_filter_input_stream_get_close_base_stream;
	typedef void function(GFilterInputStream* stream, gboolean closeBase) c_g_filter_input_stream_set_close_base_stream;
	
	// gio.FilterOutputStream
	
	typedef GOutputStream* function(GFilterOutputStream* stream) c_g_filter_output_stream_get_base_stream;
	typedef gboolean function(GFilterOutputStream* stream) c_g_filter_output_stream_get_close_base_stream;
	typedef void function(GFilterOutputStream* stream, gboolean closeBase) c_g_filter_output_stream_set_close_base_stream;
	
	// gio.MemoryInputStream
	
	typedef GInputStream* function() c_g_memory_input_stream_new;
	typedef GInputStream* function(void* data, gssize len, GDestroyNotify destroy) c_g_memory_input_stream_new_from_data;
	typedef void function(GMemoryInputStream* stream, void* data, gssize len, GDestroyNotify destroy) c_g_memory_input_stream_add_data;
	
	// gio.MemoryOutputStream
	
	typedef GOutputStream* function(gpointer data, gsize len, GReallocFunc reallocFn, GDestroyNotify destroy) c_g_memory_output_stream_new;
	typedef gpointer function(GMemoryOutputStream* ostream) c_g_memory_output_stream_get_data;
	typedef gsize function(GMemoryOutputStream* ostream) c_g_memory_output_stream_get_size;
	typedef gsize function(GMemoryOutputStream* ostream) c_g_memory_output_stream_get_data_size;
	
	// gio.BufferedInputStream
	
	typedef GInputStream* function(GInputStream* baseStream) c_g_buffered_input_stream_new;
	typedef GInputStream* function(GInputStream* baseStream, gsize size) c_g_buffered_input_stream_new_sized;
	typedef gsize function(GBufferedInputStream* stream) c_g_buffered_input_stream_get_buffer_size;
	typedef void function(GBufferedInputStream* stream, gsize size) c_g_buffered_input_stream_set_buffer_size;
	typedef gsize function(GBufferedInputStream* stream) c_g_buffered_input_stream_get_available;
	typedef void* function(GBufferedInputStream* stream, gsize* count) c_g_buffered_input_stream_peek_buffer;
	typedef gsize function(GBufferedInputStream* stream, void* buffer, gsize offset, gsize count) c_g_buffered_input_stream_peek;
	typedef gssize function(GBufferedInputStream* stream, gssize count, GCancellable* cancellable, GError** error) c_g_buffered_input_stream_fill;
	typedef void function(GBufferedInputStream* stream, gssize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_buffered_input_stream_fill_async;
	typedef gssize function(GBufferedInputStream* stream, GAsyncResult* result, GError** error) c_g_buffered_input_stream_fill_finish;
	typedef int function(GBufferedInputStream* stream, GCancellable* cancellable, GError** error) c_g_buffered_input_stream_read_byte;
	
	// gio.BufferedOutputStream
	
	typedef GOutputStream* function(GOutputStream* baseStream) c_g_buffered_output_stream_new;
	typedef GOutputStream* function(GOutputStream* baseStream, gsize size) c_g_buffered_output_stream_new_sized;
	typedef gsize function(GBufferedOutputStream* stream) c_g_buffered_output_stream_get_buffer_size;
	typedef void function(GBufferedOutputStream* stream, gsize size) c_g_buffered_output_stream_set_buffer_size;
	typedef gboolean function(GBufferedOutputStream* stream) c_g_buffered_output_stream_get_auto_grow;
	typedef void function(GBufferedOutputStream* stream, gboolean autoGrow) c_g_buffered_output_stream_set_auto_grow;
	
	// gio.DataInputStream
	
	typedef GDataInputStream* function(GInputStream* baseStream) c_g_data_input_stream_new;
	typedef void function(GDataInputStream* stream, GDataStreamByteOrder order) c_g_data_input_stream_set_byte_order;
	typedef GDataStreamByteOrder function(GDataInputStream* stream) c_g_data_input_stream_get_byte_order;
	typedef void function(GDataInputStream* stream, GDataStreamNewlineType type) c_g_data_input_stream_set_newline_type;
	typedef GDataStreamNewlineType function(GDataInputStream* stream) c_g_data_input_stream_get_newline_type;
	typedef guchar function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_byte;
	typedef gint16 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_int16;
	typedef guint16 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_uint16;
	typedef gint32 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_int32;
	typedef guint32 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_uint32;
	typedef gint64 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_int64;
	typedef guint64 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_uint64;
	typedef char* function(GDataInputStream* stream, gsize* length, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_line;
	typedef void function(GDataInputStream* stream, gint ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_data_input_stream_read_line_async;
	typedef char* function(GDataInputStream* stream, GAsyncResult* result, gsize* length, GError** error) c_g_data_input_stream_read_line_finish;
	typedef char* function(GDataInputStream* stream, gchar* stopChars, gsize* length, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_until;
	typedef void function(GDataInputStream* stream, gchar* stopChars, gint ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_data_input_stream_read_until_async;
	typedef char* function(GDataInputStream* stream, GAsyncResult* result, gsize* length, GError** error) c_g_data_input_stream_read_until_finish;
	
	// gio.DataOutputStream
	
	typedef GDataOutputStream* function(GOutputStream* baseStream) c_g_data_output_stream_new;
	typedef void function(GDataOutputStream* stream, GDataStreamByteOrder order) c_g_data_output_stream_set_byte_order;
	typedef GDataStreamByteOrder function(GDataOutputStream* stream) c_g_data_output_stream_get_byte_order;
	typedef gboolean function(GDataOutputStream* stream, guchar data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_byte;
	typedef gboolean function(GDataOutputStream* stream, gint16 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_int16;
	typedef gboolean function(GDataOutputStream* stream, guint16 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_uint16;
	typedef gboolean function(GDataOutputStream* stream, gint32 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_int32;
	typedef gboolean function(GDataOutputStream* stream, guint32 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_uint32;
	typedef gboolean function(GDataOutputStream* stream, gint64 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_int64;
	typedef gboolean function(GDataOutputStream* stream, guint64 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_uint64;
	typedef gboolean function(GDataOutputStream* stream, char* str, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_string;
	
	// gio.UnixInputStream
	
	typedef GInputStream* function(gint fd, gboolean closeFd) c_g_unix_input_stream_new;
	typedef void function(GUnixInputStream* stream, gboolean closeFd) c_g_unix_input_stream_set_close_fd;
	typedef gboolean function(GUnixInputStream* stream) c_g_unix_input_stream_get_close_fd;
	typedef gint function(GUnixInputStream* stream) c_g_unix_input_stream_get_fd;
	
	// gio.UnixOutputStream
	
	typedef GOutputStream* function(gint fd, gboolean closeFd) c_g_unix_output_stream_new;
	typedef void function(GUnixOutputStream* stream, gboolean closeFd) c_g_unix_output_stream_set_close_fd;
	typedef gboolean function(GUnixOutputStream* stream) c_g_unix_output_stream_get_close_fd;
	typedef gint function(GUnixOutputStream* stream) c_g_unix_output_stream_get_fd;
	
	// gio.ContentType
	
	typedef gboolean function(char* type1, char* type2) c_g_content_type_equals;
	typedef gboolean function(char* type, char* supertype) c_g_content_type_is_a;
	typedef gboolean function(char* type) c_g_content_type_is_unknown;
	typedef char* function(char* type) c_g_content_type_get_description;
	typedef char* function(char* type) c_g_content_type_get_mime_type;
	typedef GIcon* function(char* type) c_g_content_type_get_icon;
	typedef gboolean function(char* type) c_g_content_type_can_be_executable;
	typedef char* function(char* mimeType) c_g_content_type_from_mime_type;
	typedef char* function(char* filename, guchar* data, gsize dataSize, gboolean* resultUncertain) c_g_content_type_guess;
	typedef char** function(GFile* root) c_g_content_type_guess_for_tree;
	typedef GList* function() c_g_content_types_get_registered;
	
	// gio.AppInfoT
	
	
	// gio.AppInfoT
	
	typedef GAppInfo* function(char* commandline, char* applicationName, GAppInfoCreateFlags flags, GError** error) c_g_app_info_create_from_commandline;
	typedef GAppInfo* function(GAppInfo* appinfo) c_g_app_info_dup;
	typedef gboolean function(GAppInfo* appinfo1, GAppInfo* appinfo2) c_g_app_info_equal;
	typedef char* function(GAppInfo* appinfo) c_g_app_info_get_id;
	typedef char* function(GAppInfo* appinfo) c_g_app_info_get_name;
	typedef char* function(GAppInfo* appinfo) c_g_app_info_get_description;
	typedef char* function(GAppInfo* appinfo) c_g_app_info_get_executable;
	typedef char* function(GAppInfo* appinfo) c_g_app_info_get_commandline;
	typedef GIcon* function(GAppInfo* appinfo) c_g_app_info_get_icon;
	typedef gboolean function(GAppInfo* appinfo, GList* files, GAppLaunchContext* launchContext, GError** error) c_g_app_info_launch;
	typedef gboolean function(GAppInfo* appinfo) c_g_app_info_supports_files;
	typedef gboolean function(GAppInfo* appinfo) c_g_app_info_supports_uris;
	typedef gboolean function(GAppInfo* appinfo, GList* uris, GAppLaunchContext* launchContext, GError** error) c_g_app_info_launch_uris;
	typedef gboolean function(GAppInfo* appinfo) c_g_app_info_should_show;
	typedef gboolean function(GAppInfo* appinfo) c_g_app_info_can_delete;
	typedef gboolean function(GAppInfo* appinfo) c_g_app_info_delete;
	typedef void function(char* contentType) c_g_app_info_reset_type_associations;
	typedef gboolean function(GAppInfo* appinfo, char* contentType, GError** error) c_g_app_info_set_as_default_for_type;
	typedef gboolean function(GAppInfo* appinfo, char* extension, GError** error) c_g_app_info_set_as_default_for_extension;
	typedef gboolean function(GAppInfo* appinfo, char* contentType, GError** error) c_g_app_info_add_supports_type;
	typedef gboolean function(GAppInfo* appinfo) c_g_app_info_can_remove_supports_type;
	typedef gboolean function(GAppInfo* appinfo, char* contentType, GError** error) c_g_app_info_remove_supports_type;
	typedef GList* function() c_g_app_info_get_all;
	typedef GList* function(char* contentType) c_g_app_info_get_all_for_type;
	typedef GAppInfo* function(char* contentType, gboolean mustSupportUris) c_g_app_info_get_default_for_type;
	typedef GAppInfo* function(char* uriScheme) c_g_app_info_get_default_for_uri_scheme;
	typedef gboolean function(char* uri, GAppLaunchContext* launchContext, GError** error) c_g_app_info_launch_default_for_uri;
	
	// gio.AppInfo
	
	
	// gio.AppLaunchContext
	
	
	// gio.DesktopAppInfo
	
	typedef GDesktopAppInfo* function(char* filename) c_g_desktop_app_info_new_from_filename;
	typedef GDesktopAppInfo* function(GKeyFile* keyFile) c_g_desktop_app_info_new_from_keyfile;
	typedef GDesktopAppInfo* function(char* desktopId) c_g_desktop_app_info_new;
	typedef gboolean function(GDesktopAppInfo* info) c_g_desktop_app_info_get_is_hidden;
	typedef void function(char* desktopEnv) c_g_desktop_app_info_set_desktop_env;
	typedef GAppInfo* function(GDesktopAppInfoLookup* lookup, char* uriScheme) c_g_desktop_app_info_lookup_get_default_for_uri_scheme;
	
	// gio.VolumeMonitor
	
	typedef GVolumeMonitor* function() c_g_volume_monitor_get;
	typedef GList* function(GVolumeMonitor* volumeMonitor) c_g_volume_monitor_get_connected_drives;
	typedef GList* function(GVolumeMonitor* volumeMonitor) c_g_volume_monitor_get_volumes;
	typedef GList* function(GVolumeMonitor* volumeMonitor) c_g_volume_monitor_get_mounts;
	typedef GVolume* function(GMount* mount) c_g_volume_monitor_adopt_orphan_mount;
	typedef GMount* function(GVolumeMonitor* volumeMonitor, char* uuid) c_g_volume_monitor_get_mount_for_uuid;
	typedef GVolume* function(GVolumeMonitor* volumeMonitor, char* uuid) c_g_volume_monitor_get_volume_for_uuid;
	
	// gio.VolumeT
	
	
	// gio.VolumeT
	
	typedef char* function(GVolume* volume) c_g_volume_get_name;
	typedef char* function(GVolume* volume) c_g_volume_get_uuid;
	typedef GIcon* function(GVolume* volume) c_g_volume_get_icon;
	typedef GDrive* function(GVolume* volume) c_g_volume_get_drive;
	typedef GMount* function(GVolume* volume) c_g_volume_get_mount;
	typedef gboolean function(GVolume* volume) c_g_volume_can_mount;
	typedef gboolean function(GVolume* volume) c_g_volume_should_automount;
	typedef GFile* function(GVolume* volume) c_g_volume_get_activation_root;
	typedef void function(GVolume* volume, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_volume_mount;
	typedef gboolean function(GVolume* volume, GAsyncResult* result, GError** error) c_g_volume_mount_finish;
	typedef gboolean function(GVolume* volume) c_g_volume_can_eject;
	typedef void function(GVolume* volume, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_volume_eject;
	typedef gboolean function(GVolume* volume, GAsyncResult* result, GError** error) c_g_volume_eject_finish;
	typedef char** function(GVolume* volume) c_g_volume_enumerate_identifiers;
	typedef char* function(GVolume* volume, char* kind) c_g_volume_get_identifier;
	
	// gio.Volume
	
	
	// gio.MountT
	
	
	// gio.MountT
	
	typedef char* function(GMount* mount) c_g_mount_get_name;
	typedef char* function(GMount* mount) c_g_mount_get_uuid;
	typedef GIcon* function(GMount* mount) c_g_mount_get_icon;
	typedef GDrive* function(GMount* mount) c_g_mount_get_drive;
	typedef GFile* function(GMount* mount) c_g_mount_get_root;
	typedef GVolume* function(GMount* mount) c_g_mount_get_volume;
	typedef gboolean function(GMount* mount) c_g_mount_can_unmount;
	typedef void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_mount_unmount;
	typedef gboolean function(GMount* mount, GAsyncResult* result, GError** error) c_g_mount_unmount_finish;
	typedef void function(GMount* mount, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_mount_remount;
	typedef gboolean function(GMount* mount, GAsyncResult* result, GError** error) c_g_mount_remount_finish;
	typedef gboolean function(GMount* mount) c_g_mount_can_eject;
	typedef void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_mount_eject;
	typedef gboolean function(GMount* mount, GAsyncResult* result, GError** error) c_g_mount_eject_finish;
	typedef void function(GMount* mount, gboolean forceRescan, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_mount_guess_content_type;
	typedef gchar** function(GMount* mount, GAsyncResult* result, GError** error) c_g_mount_guess_content_type_finish;
	typedef gchar** function(GMount* mount, gboolean forceRescan, GCancellable* cancellable, GError** error) c_g_mount_guess_content_type_sync;
	typedef gboolean function(GMount* mount) c_g_mount_is_shadowed;
	typedef void function(GMount* mount) c_g_mount_shadow;
	typedef void function(GMount* mount) c_g_mount_unshadow;
	
	// gio.Mount
	
	
	// gio.DriveT
	
	
	// gio.DriveT
	
	typedef char* function(GDrive* drive) c_g_drive_get_name;
	typedef GIcon* function(GDrive* drive) c_g_drive_get_icon;
	typedef gboolean function(GDrive* drive) c_g_drive_has_volumes;
	typedef GList* function(GDrive* drive) c_g_drive_get_volumes;
	typedef gboolean function(GDrive* drive) c_g_drive_can_eject;
	typedef gboolean function(GDrive* drive) c_g_drive_can_poll_for_media;
	typedef void function(GDrive* drive, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_drive_poll_for_media;
	typedef gboolean function(GDrive* drive, GAsyncResult* result, GError** error) c_g_drive_poll_for_media_finish;
	typedef gboolean function(GDrive* drive) c_g_drive_has_media;
	typedef gboolean function(GDrive* drive) c_g_drive_is_media_check_automatic;
	typedef gboolean function(GDrive* drive) c_g_drive_is_media_removable;
	typedef void function(GDrive* drive, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_drive_eject;
	typedef gboolean function(GDrive* drive, GAsyncResult* result, GError** error) c_g_drive_eject_finish;
	typedef char** function(GDrive* drive) c_g_drive_enumerate_identifiers;
	typedef char* function(GDrive* drive, char* kind) c_g_drive_get_identifier;
	
	// gio.Drive
	
	
	// gio.UnixMountEntry
	
	typedef void function(GUnixMountEntry* mountEntry) c_g_unix_mount_free;
	typedef gint function(GUnixMountEntry* mount1, GUnixMountEntry* mount2) c_g_unix_mount_compare;
	typedef char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_mount_path;
	typedef char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_device_path;
	typedef char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_fs_type;
	typedef gboolean function(GUnixMountEntry* mountEntry) c_g_unix_mount_is_readonly;
	typedef gboolean function(GUnixMountEntry* mountEntry) c_g_unix_mount_is_system_internal;
	typedef GIcon* function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_icon;
	typedef char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_name;
	typedef gboolean function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_can_eject;
	typedef gboolean function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_should_display;
	typedef GList* function(guint64* timeRead) c_g_unix_mount_points_get;
	typedef GList* function(guint64* timeRead) c_g_unix_mounts_get;
	typedef GUnixMountEntry* function(char* mountPath, guint64* timeRead) c_g_unix_mount_at;
	typedef gboolean function(guint64 time) c_g_unix_mounts_changed_since;
	typedef gboolean function(guint64 time) c_g_unix_mount_points_changed_since;
	typedef gboolean function(char* mountPath) c_g_unix_is_mount_path_system_internal;
	
	// gio.UnixMountPoint
	
	typedef void function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_free;
	typedef gint function(GUnixMountPoint* mount1, GUnixMountPoint* mount2) c_g_unix_mount_point_compare;
	typedef char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_mount_path;
	typedef char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_device_path;
	typedef char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_fs_type;
	typedef gboolean function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_is_readonly;
	typedef gboolean function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_is_user_mountable;
	typedef gboolean function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_is_loopback;
	typedef GIcon* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_icon;
	typedef char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_name;
	typedef gboolean function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_can_eject;
	
	// gio.UnixMountMonitor
	
	typedef GUnixMountMonitor* function() c_g_unix_mount_monitor_new;
	typedef void function(GUnixMountMonitor* mountMonitor, int limitMsec) c_g_unix_mount_monitor_set_rate_limit;
	
	// gio.IconT
	
	
	// gio.IconT
	
	typedef guint function(gconstpointer icon) c_g_icon_hash;
	typedef gboolean function(GIcon* icon1, GIcon* icon2) c_g_icon_equal;
	typedef gchar* function(GIcon* icon) c_g_icon_to_string;
	typedef GIcon* function(gchar* str, GError** error) c_g_icon_new_for_string;
	
	// gio.Icon
	
	
	// gio.FileIcon
	
	typedef GIcon* function(GFile* file) c_g_file_icon_new;
	typedef GFile* function(GFileIcon* icon) c_g_file_icon_get_file;
	
	// gio.LoadableIconT
	
	
	// gio.LoadableIconT
	
	typedef GInputStream* function(GLoadableIcon* icon, int size, char** type, GCancellable* cancellable, GError** error) c_g_loadable_icon_load;
	typedef void function(GLoadableIcon* icon, int size, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_loadable_icon_load_async;
	typedef GInputStream* function(GLoadableIcon* icon, GAsyncResult* res, char** type, GError** error) c_g_loadable_icon_load_finish;
	
	// gio.ThemedIcon
	
	typedef GIcon* function(char* iconname) c_g_themed_icon_new;
	typedef GIcon* function(char** iconnames, int len) c_g_themed_icon_new_from_names;
	typedef GIcon* function(char* iconname) c_g_themed_icon_new_with_default_fallbacks;
	typedef void function(GThemedIcon* icon, char* iconname) c_g_themed_icon_prepend_name;
	typedef void function(GThemedIcon* icon, char* iconname) c_g_themed_icon_append_name;
	
	// gio.EmblemedIcon
	
	typedef GIcon* function(GIcon* icon, GEmblem* emblem) c_g_emblemed_icon_new;
	typedef GIcon* function(GEmblemedIcon* emblemed) c_g_emblemed_icon_get_icon;
	typedef GList* function(GEmblemedIcon* emblemed) c_g_emblemed_icon_get_emblems;
	typedef void function(GEmblemedIcon* emblemed, GEmblem* emblem) c_g_emblemed_icon_add_emblem;
	
	// gio.Emblem
	
	typedef GEmblem* function(GIcon* icon) c_g_emblem_new;
	typedef GEmblem* function(GIcon* icon, GEmblemOrigin origin) c_g_emblem_new_with_origin;
	typedef GIcon* function(GEmblem* emblem) c_g_emblem_get_icon;
	typedef GEmblemOrigin function(GEmblem* emblem) c_g_emblem_get_origin;
	
	// gio.FilenameCompleter
	
	typedef GFilenameCompleter* function() c_g_filename_completer_new;
	typedef char* function(GFilenameCompleter* completer, char* initialText) c_g_filename_completer_get_completion_suffix;
	typedef char** function(GFilenameCompleter* completer, char* initialText) c_g_filename_completer_get_completions;
	typedef void function(GFilenameCompleter* completer, gboolean dirsOnly) c_g_filename_completer_set_dirs_only;
	
	// gio.Vfs
	
	typedef GFile* function(GVfs* vfs, char* path) c_g_vfs_get_file_for_path;
	typedef GFile* function(GVfs* vfs, char* uri) c_g_vfs_get_file_for_uri;
	typedef GFile* function(GVfs* vfs, char* parseName) c_g_vfs_parse_name;
	typedef GVfs* function() c_g_vfs_get_default;
	typedef GVfs* function() c_g_vfs_get_local;
	typedef gboolean function(GVfs* vfs) c_g_vfs_is_active;
	typedef gchar** function(GVfs* vfs) c_g_vfs_get_supported_uri_schemes;
	
	// gio.IOModule
	
	typedef GIOModule* function(gchar* filename) c_g_io_module_new;
	typedef GList* function(gchar* dirname) c_g_io_modules_load_all_in_directory;
	typedef void function(GIOModule* modul) c_g_io_module_load;
	typedef void function(GIOModule* modul) c_g_io_module_unload;
	
	// gio.IOExtension
	
	typedef char* function(GIOExtension* extension) c_g_io_extension_get_name;
	typedef gint function(GIOExtension* extension) c_g_io_extension_get_priority;
	typedef GType function(GIOExtension* extension) c_g_io_extension_get_type;
	typedef GTypeClass* function(GIOExtension* extension) c_g_io_extension_ref_class;
	
	// gio.IOExtensionPoint
	
	typedef GIOExtension* function(GIOExtensionPoint* extensionPoint, char* name) c_g_io_extension_point_get_extension_by_name;
	typedef GList* function(GIOExtensionPoint* extensionPoint) c_g_io_extension_point_get_extensions;
	typedef GType function(GIOExtensionPoint* extensionPoint) c_g_io_extension_point_get_required_type;
	typedef GIOExtension* function(char* extensionPointName, GType type, char* extensionName, gint priority) c_g_io_extension_point_implement;
	typedef GIOExtensionPoint* function(char* name) c_g_io_extension_point_lookup;
	typedef GIOExtensionPoint* function(char* name) c_g_io_extension_point_register;
	typedef void function(GIOExtensionPoint* extensionPoint, GType type) c_g_io_extension_point_set_required_type;
}

// gio.File

c_g_file_new_for_path  g_file_new_for_path;
c_g_file_new_for_uri  g_file_new_for_uri;
c_g_file_new_for_commandline_arg  g_file_new_for_commandline_arg;
c_g_file_parse_name  g_file_parse_name;
c_g_file_dup  g_file_dup;
c_g_file_hash  g_file_hash;
c_g_file_equal  g_file_equal;
c_g_file_get_basename  g_file_get_basename;
c_g_file_get_path  g_file_get_path;
c_g_file_get_uri  g_file_get_uri;
c_g_file_get_parse_name  g_file_get_parse_name;
c_g_file_get_parent  g_file_get_parent;
c_g_file_get_child  g_file_get_child;
c_g_file_get_child_for_display_name  g_file_get_child_for_display_name;
c_g_file_has_prefix  g_file_has_prefix;
c_g_file_get_relative_path  g_file_get_relative_path;
c_g_file_resolve_relative_path  g_file_resolve_relative_path;
c_g_file_is_native  g_file_is_native;
c_g_file_has_uri_scheme  g_file_has_uri_scheme;
c_g_file_get_uri_scheme  g_file_get_uri_scheme;
c_g_file_read  g_file_read;
c_g_file_read_async  g_file_read_async;
c_g_file_read_finish  g_file_read_finish;
c_g_file_append_to  g_file_append_to;
c_g_file_create  g_file_create;
c_g_file_replace  g_file_replace;
c_g_file_append_to_async  g_file_append_to_async;
c_g_file_append_to_finish  g_file_append_to_finish;
c_g_file_create_async  g_file_create_async;
c_g_file_create_finish  g_file_create_finish;
c_g_file_replace_async  g_file_replace_async;
c_g_file_replace_finish  g_file_replace_finish;
c_g_file_query_info  g_file_query_info;
c_g_file_query_info_async  g_file_query_info_async;
c_g_file_query_info_finish  g_file_query_info_finish;
c_g_file_query_exists  g_file_query_exists;
c_g_file_query_file_type  g_file_query_file_type;
c_g_file_query_filesystem_info  g_file_query_filesystem_info;
c_g_file_query_filesystem_info_async  g_file_query_filesystem_info_async;
c_g_file_query_filesystem_info_finish  g_file_query_filesystem_info_finish;
c_g_file_query_default_handler  g_file_query_default_handler;
c_g_file_find_enclosing_mount  g_file_find_enclosing_mount;
c_g_file_find_enclosing_mount_async  g_file_find_enclosing_mount_async;
c_g_file_find_enclosing_mount_finish  g_file_find_enclosing_mount_finish;
c_g_file_enumerate_children  g_file_enumerate_children;
c_g_file_enumerate_children_async  g_file_enumerate_children_async;
c_g_file_enumerate_children_finish  g_file_enumerate_children_finish;
c_g_file_set_display_name  g_file_set_display_name;
c_g_file_set_display_name_async  g_file_set_display_name_async;
c_g_file_set_display_name_finish  g_file_set_display_name_finish;
c_g_file_delete  g_file_delete;
c_g_file_trash  g_file_trash;
c_g_file_copy  g_file_copy;
c_g_file_copy_async  g_file_copy_async;
c_g_file_copy_finish  g_file_copy_finish;
c_g_file_move  g_file_move;
c_g_file_make_directory  g_file_make_directory;
c_g_file_make_directory_with_parents  g_file_make_directory_with_parents;
c_g_file_make_symbolic_link  g_file_make_symbolic_link;
c_g_file_query_settable_attributes  g_file_query_settable_attributes;
c_g_file_query_writable_namespaces  g_file_query_writable_namespaces;
c_g_file_set_attribute  g_file_set_attribute;
c_g_file_set_attributes_from_info  g_file_set_attributes_from_info;
c_g_file_set_attributes_async  g_file_set_attributes_async;
c_g_file_set_attributes_finish  g_file_set_attributes_finish;
c_g_file_set_attribute_string  g_file_set_attribute_string;
c_g_file_set_attribute_byte_string  g_file_set_attribute_byte_string;
c_g_file_set_attribute_uint32  g_file_set_attribute_uint32;
c_g_file_set_attribute_int32  g_file_set_attribute_int32;
c_g_file_set_attribute_uint64  g_file_set_attribute_uint64;
c_g_file_set_attribute_int64  g_file_set_attribute_int64;
c_g_file_mount_mountable  g_file_mount_mountable;
c_g_file_mount_mountable_finish  g_file_mount_mountable_finish;
c_g_file_unmount_mountable  g_file_unmount_mountable;
c_g_file_unmount_mountable_finish  g_file_unmount_mountable_finish;
c_g_file_eject_mountable  g_file_eject_mountable;
c_g_file_eject_mountable_finish  g_file_eject_mountable_finish;
c_g_file_mount_enclosing_volume  g_file_mount_enclosing_volume;
c_g_file_mount_enclosing_volume_finish  g_file_mount_enclosing_volume_finish;
c_g_file_monitor_directory  g_file_monitor_directory;
c_g_file_monitor_file  g_file_monitor_file;
c_g_file_monitor  g_file_monitor;
c_g_file_load_contents  g_file_load_contents;
c_g_file_load_contents_async  g_file_load_contents_async;
c_g_file_load_contents_finish  g_file_load_contents_finish;
c_g_file_load_partial_contents_async  g_file_load_partial_contents_async;
c_g_file_load_partial_contents_finish  g_file_load_partial_contents_finish;
c_g_file_replace_contents  g_file_replace_contents;
c_g_file_replace_contents_async  g_file_replace_contents_async;
c_g_file_replace_contents_finish  g_file_replace_contents_finish;
c_g_file_copy_attributes  g_file_copy_attributes;

// gio.FileAttributeInfoList

c_g_file_attribute_info_list_new  g_file_attribute_info_list_new;
c_g_file_attribute_info_list_ref  g_file_attribute_info_list_ref;
c_g_file_attribute_info_list_unref  g_file_attribute_info_list_unref;
c_g_file_attribute_info_list_dup  g_file_attribute_info_list_dup;
c_g_file_attribute_info_list_lookup  g_file_attribute_info_list_lookup;
c_g_file_attribute_info_list_add  g_file_attribute_info_list_add;

// gio.FileInfo

c_g_file_info_new  g_file_info_new;
c_g_file_info_dup  g_file_info_dup;
c_g_file_info_copy_into  g_file_info_copy_into;
c_g_file_info_has_attribute  g_file_info_has_attribute;
c_g_file_info_list_attributes  g_file_info_list_attributes;
c_g_file_info_get_attribute_type  g_file_info_get_attribute_type;
c_g_file_info_remove_attribute  g_file_info_remove_attribute;
c_g_file_info_get_attribute_as_string  g_file_info_get_attribute_as_string;
c_g_file_info_get_attribute_data  g_file_info_get_attribute_data;
c_g_file_info_get_attribute_status  g_file_info_get_attribute_status;
c_g_file_info_get_attribute_string  g_file_info_get_attribute_string;
c_g_file_info_get_attribute_byte_string  g_file_info_get_attribute_byte_string;
c_g_file_info_get_attribute_boolean  g_file_info_get_attribute_boolean;
c_g_file_info_get_attribute_uint32  g_file_info_get_attribute_uint32;
c_g_file_info_get_attribute_int32  g_file_info_get_attribute_int32;
c_g_file_info_get_attribute_uint64  g_file_info_get_attribute_uint64;
c_g_file_info_get_attribute_int64  g_file_info_get_attribute_int64;
c_g_file_info_get_attribute_object  g_file_info_get_attribute_object;
c_g_file_info_set_attribute  g_file_info_set_attribute;
c_g_file_info_set_attribute_string  g_file_info_set_attribute_string;
c_g_file_info_set_attribute_byte_string  g_file_info_set_attribute_byte_string;
c_g_file_info_set_attribute_boolean  g_file_info_set_attribute_boolean;
c_g_file_info_set_attribute_uint32  g_file_info_set_attribute_uint32;
c_g_file_info_set_attribute_int32  g_file_info_set_attribute_int32;
c_g_file_info_set_attribute_uint64  g_file_info_set_attribute_uint64;
c_g_file_info_set_attribute_int64  g_file_info_set_attribute_int64;
c_g_file_info_set_attribute_object  g_file_info_set_attribute_object;
c_g_file_info_clear_status  g_file_info_clear_status;
c_g_file_info_get_file_type  g_file_info_get_file_type;
c_g_file_info_get_is_hidden  g_file_info_get_is_hidden;
c_g_file_info_get_is_backup  g_file_info_get_is_backup;
c_g_file_info_get_is_symlink  g_file_info_get_is_symlink;
c_g_file_info_get_name  g_file_info_get_name;
c_g_file_info_get_display_name  g_file_info_get_display_name;
c_g_file_info_get_edit_name  g_file_info_get_edit_name;
c_g_file_info_get_icon  g_file_info_get_icon;
c_g_file_info_get_content_type  g_file_info_get_content_type;
c_g_file_info_get_size  g_file_info_get_size;
c_g_file_info_get_modification_time  g_file_info_get_modification_time;
c_g_file_info_get_symlink_target  g_file_info_get_symlink_target;
c_g_file_info_get_etag  g_file_info_get_etag;
c_g_file_info_get_sort_order  g_file_info_get_sort_order;
c_g_file_info_set_attribute_mask  g_file_info_set_attribute_mask;
c_g_file_info_unset_attribute_mask  g_file_info_unset_attribute_mask;
c_g_file_info_set_file_type  g_file_info_set_file_type;
c_g_file_info_set_is_hidden  g_file_info_set_is_hidden;
c_g_file_info_set_is_symlink  g_file_info_set_is_symlink;
c_g_file_info_set_name  g_file_info_set_name;
c_g_file_info_set_display_name  g_file_info_set_display_name;
c_g_file_info_set_edit_name  g_file_info_set_edit_name;
c_g_file_info_set_icon  g_file_info_set_icon;
c_g_file_info_set_content_type  g_file_info_set_content_type;
c_g_file_info_set_size  g_file_info_set_size;
c_g_file_info_set_modification_time  g_file_info_set_modification_time;
c_g_file_info_set_symlink_target  g_file_info_set_symlink_target;
c_g_file_info_set_sort_order  g_file_info_set_sort_order;

// gio.FileAttributeMatcher

c_g_file_attribute_matcher_new  g_file_attribute_matcher_new;
c_g_file_attribute_matcher_ref  g_file_attribute_matcher_ref;
c_g_file_attribute_matcher_unref  g_file_attribute_matcher_unref;
c_g_file_attribute_matcher_matches  g_file_attribute_matcher_matches;
c_g_file_attribute_matcher_matches_only  g_file_attribute_matcher_matches_only;
c_g_file_attribute_matcher_enumerate_namespace  g_file_attribute_matcher_enumerate_namespace;
c_g_file_attribute_matcher_enumerate_next  g_file_attribute_matcher_enumerate_next;

// gio.FileEnumerator

c_g_file_enumerator_next_file  g_file_enumerator_next_file;
c_g_file_enumerator_close  g_file_enumerator_close;
c_g_file_enumerator_next_files_async  g_file_enumerator_next_files_async;
c_g_file_enumerator_next_files_finish  g_file_enumerator_next_files_finish;
c_g_file_enumerator_close_async  g_file_enumerator_close_async;
c_g_file_enumerator_close_finish  g_file_enumerator_close_finish;
c_g_file_enumerator_is_closed  g_file_enumerator_is_closed;
c_g_file_enumerator_has_pending  g_file_enumerator_has_pending;
c_g_file_enumerator_set_pending  g_file_enumerator_set_pending;
c_g_file_enumerator_get_container  g_file_enumerator_get_container;

// gio.MountOperation

c_g_mount_operation_new  g_mount_operation_new;
c_g_mount_operation_get_username  g_mount_operation_get_username;
c_g_mount_operation_set_username  g_mount_operation_set_username;
c_g_mount_operation_get_password  g_mount_operation_get_password;
c_g_mount_operation_set_password  g_mount_operation_set_password;
c_g_mount_operation_get_anonymous  g_mount_operation_get_anonymous;
c_g_mount_operation_set_anonymous  g_mount_operation_set_anonymous;
c_g_mount_operation_get_domain  g_mount_operation_get_domain;
c_g_mount_operation_set_domain  g_mount_operation_set_domain;
c_g_mount_operation_get_password_save  g_mount_operation_get_password_save;
c_g_mount_operation_set_password_save  g_mount_operation_set_password_save;
c_g_mount_operation_get_choice  g_mount_operation_get_choice;
c_g_mount_operation_set_choice  g_mount_operation_set_choice;
c_g_mount_operation_reply  g_mount_operation_reply;

// gio.ErrorGIO

c_g_io_error_from_errno  g_io_error_from_errno;

// gio.FileMonitor

c_g_file_monitor_cancel  g_file_monitor_cancel;
c_g_file_monitor_is_cancelled  g_file_monitor_is_cancelled;
c_g_file_monitor_set_rate_limit  g_file_monitor_set_rate_limit;
c_g_file_monitor_emit_event  g_file_monitor_emit_event;

// gio.Cancellable

c_g_cancellable_new  g_cancellable_new;
c_g_cancellable_is_cancelled  g_cancellable_is_cancelled;
c_g_cancellable_set_error_if_cancelled  g_cancellable_set_error_if_cancelled;
c_g_cancellable_get_fd  g_cancellable_get_fd;
c_g_cancellable_make_pollfd  g_cancellable_make_pollfd;
c_g_cancellable_get_current  g_cancellable_get_current;
c_g_cancellable_pop_current  g_cancellable_pop_current;
c_g_cancellable_push_current  g_cancellable_push_current;
c_g_cancellable_reset  g_cancellable_reset;
c_g_cancellable_cancel  g_cancellable_cancel;

// gio.AsyncResultT


// gio.AsyncResultT

c_g_async_result_get_user_data  g_async_result_get_user_data;
c_g_async_result_get_source_object  g_async_result_get_source_object;

// gio.IOSchedulerJob

c_g_io_scheduler_push_job  g_io_scheduler_push_job;
c_g_io_scheduler_cancel_all_jobs  g_io_scheduler_cancel_all_jobs;
c_g_io_scheduler_job_send_to_mainloop  g_io_scheduler_job_send_to_mainloop;
c_g_io_scheduler_job_send_to_mainloop_async  g_io_scheduler_job_send_to_mainloop_async;

// gio.SimpleAsyncResult

c_g_simple_async_result_new  g_simple_async_result_new;
c_g_simple_async_result_new_error  g_simple_async_result_new_error;
c_g_simple_async_result_new_from_error  g_simple_async_result_new_from_error;
c_g_simple_async_result_set_op_res_gpointer  g_simple_async_result_set_op_res_gpointer;
c_g_simple_async_result_get_op_res_gpointer  g_simple_async_result_get_op_res_gpointer;
c_g_simple_async_result_set_op_res_gssize  g_simple_async_result_set_op_res_gssize;
c_g_simple_async_result_get_op_res_gssize  g_simple_async_result_get_op_res_gssize;
c_g_simple_async_result_set_op_res_gboolean  g_simple_async_result_set_op_res_gboolean;
c_g_simple_async_result_get_op_res_gboolean  g_simple_async_result_get_op_res_gboolean;
c_g_simple_async_result_get_source_tag  g_simple_async_result_get_source_tag;
c_g_simple_async_result_is_valid  g_simple_async_result_is_valid;
c_g_simple_async_result_set_handle_cancellation  g_simple_async_result_set_handle_cancellation;
c_g_simple_async_result_complete  g_simple_async_result_complete;
c_g_simple_async_result_complete_in_idle  g_simple_async_result_complete_in_idle;
c_g_simple_async_result_run_in_thread  g_simple_async_result_run_in_thread;
c_g_simple_async_result_set_from_error  g_simple_async_result_set_from_error;
c_g_simple_async_result_propagate_error  g_simple_async_result_propagate_error;
c_g_simple_async_result_set_error  g_simple_async_result_set_error;
c_g_simple_async_result_set_error_va  g_simple_async_result_set_error_va;
c_g_simple_async_report_error_in_idle  g_simple_async_report_error_in_idle;
c_g_simple_async_report_gerror_in_idle  g_simple_async_report_gerror_in_idle;

// gio.SeekableT


// gio.SeekableT

c_g_seekable_tell  g_seekable_tell;
c_g_seekable_can_seek  g_seekable_can_seek;
c_g_seekable_seek  g_seekable_seek;
c_g_seekable_can_truncate  g_seekable_can_truncate;
c_g_seekable_truncate  g_seekable_truncate;

// gio.InputStream

c_g_input_stream_read  g_input_stream_read;
c_g_input_stream_read_all  g_input_stream_read_all;
c_g_input_stream_skip  g_input_stream_skip;
c_g_input_stream_close  g_input_stream_close;
c_g_input_stream_read_async  g_input_stream_read_async;
c_g_input_stream_read_finish  g_input_stream_read_finish;
c_g_input_stream_skip_async  g_input_stream_skip_async;
c_g_input_stream_skip_finish  g_input_stream_skip_finish;
c_g_input_stream_close_async  g_input_stream_close_async;
c_g_input_stream_close_finish  g_input_stream_close_finish;
c_g_input_stream_is_closed  g_input_stream_is_closed;
c_g_input_stream_has_pending  g_input_stream_has_pending;
c_g_input_stream_set_pending  g_input_stream_set_pending;
c_g_input_stream_clear_pending  g_input_stream_clear_pending;

// gio.OutputStream

c_g_output_stream_write  g_output_stream_write;
c_g_output_stream_write_all  g_output_stream_write_all;
c_g_output_stream_splice  g_output_stream_splice;
c_g_output_stream_flush  g_output_stream_flush;
c_g_output_stream_close  g_output_stream_close;
c_g_output_stream_write_async  g_output_stream_write_async;
c_g_output_stream_write_finish  g_output_stream_write_finish;
c_g_output_stream_splice_async  g_output_stream_splice_async;
c_g_output_stream_splice_finish  g_output_stream_splice_finish;
c_g_output_stream_flush_async  g_output_stream_flush_async;
c_g_output_stream_flush_finish  g_output_stream_flush_finish;
c_g_output_stream_close_async  g_output_stream_close_async;
c_g_output_stream_close_finish  g_output_stream_close_finish;
c_g_output_stream_is_closed  g_output_stream_is_closed;
c_g_output_stream_has_pending  g_output_stream_has_pending;
c_g_output_stream_set_pending  g_output_stream_set_pending;
c_g_output_stream_clear_pending  g_output_stream_clear_pending;

// gio.FileInputStream

c_g_file_input_stream_query_info  g_file_input_stream_query_info;
c_g_file_input_stream_query_info_async  g_file_input_stream_query_info_async;
c_g_file_input_stream_query_info_finish  g_file_input_stream_query_info_finish;

// gio.FileOutputStream

c_g_file_output_stream_query_info  g_file_output_stream_query_info;
c_g_file_output_stream_query_info_async  g_file_output_stream_query_info_async;
c_g_file_output_stream_query_info_finish  g_file_output_stream_query_info_finish;
c_g_file_output_stream_get_etag  g_file_output_stream_get_etag;

// gio.FilterInputStream

c_g_filter_input_stream_get_base_stream  g_filter_input_stream_get_base_stream;
c_g_filter_input_stream_get_close_base_stream  g_filter_input_stream_get_close_base_stream;
c_g_filter_input_stream_set_close_base_stream  g_filter_input_stream_set_close_base_stream;

// gio.FilterOutputStream

c_g_filter_output_stream_get_base_stream  g_filter_output_stream_get_base_stream;
c_g_filter_output_stream_get_close_base_stream  g_filter_output_stream_get_close_base_stream;
c_g_filter_output_stream_set_close_base_stream  g_filter_output_stream_set_close_base_stream;

// gio.MemoryInputStream

c_g_memory_input_stream_new  g_memory_input_stream_new;
c_g_memory_input_stream_new_from_data  g_memory_input_stream_new_from_data;
c_g_memory_input_stream_add_data  g_memory_input_stream_add_data;

// gio.MemoryOutputStream

c_g_memory_output_stream_new  g_memory_output_stream_new;
c_g_memory_output_stream_get_data  g_memory_output_stream_get_data;
c_g_memory_output_stream_get_size  g_memory_output_stream_get_size;
c_g_memory_output_stream_get_data_size  g_memory_output_stream_get_data_size;

// gio.BufferedInputStream

c_g_buffered_input_stream_new  g_buffered_input_stream_new;
c_g_buffered_input_stream_new_sized  g_buffered_input_stream_new_sized;
c_g_buffered_input_stream_get_buffer_size  g_buffered_input_stream_get_buffer_size;
c_g_buffered_input_stream_set_buffer_size  g_buffered_input_stream_set_buffer_size;
c_g_buffered_input_stream_get_available  g_buffered_input_stream_get_available;
c_g_buffered_input_stream_peek_buffer  g_buffered_input_stream_peek_buffer;
c_g_buffered_input_stream_peek  g_buffered_input_stream_peek;
c_g_buffered_input_stream_fill  g_buffered_input_stream_fill;
c_g_buffered_input_stream_fill_async  g_buffered_input_stream_fill_async;
c_g_buffered_input_stream_fill_finish  g_buffered_input_stream_fill_finish;
c_g_buffered_input_stream_read_byte  g_buffered_input_stream_read_byte;

// gio.BufferedOutputStream

c_g_buffered_output_stream_new  g_buffered_output_stream_new;
c_g_buffered_output_stream_new_sized  g_buffered_output_stream_new_sized;
c_g_buffered_output_stream_get_buffer_size  g_buffered_output_stream_get_buffer_size;
c_g_buffered_output_stream_set_buffer_size  g_buffered_output_stream_set_buffer_size;
c_g_buffered_output_stream_get_auto_grow  g_buffered_output_stream_get_auto_grow;
c_g_buffered_output_stream_set_auto_grow  g_buffered_output_stream_set_auto_grow;

// gio.DataInputStream

c_g_data_input_stream_new  g_data_input_stream_new;
c_g_data_input_stream_set_byte_order  g_data_input_stream_set_byte_order;
c_g_data_input_stream_get_byte_order  g_data_input_stream_get_byte_order;
c_g_data_input_stream_set_newline_type  g_data_input_stream_set_newline_type;
c_g_data_input_stream_get_newline_type  g_data_input_stream_get_newline_type;
c_g_data_input_stream_read_byte  g_data_input_stream_read_byte;
c_g_data_input_stream_read_int16  g_data_input_stream_read_int16;
c_g_data_input_stream_read_uint16  g_data_input_stream_read_uint16;
c_g_data_input_stream_read_int32  g_data_input_stream_read_int32;
c_g_data_input_stream_read_uint32  g_data_input_stream_read_uint32;
c_g_data_input_stream_read_int64  g_data_input_stream_read_int64;
c_g_data_input_stream_read_uint64  g_data_input_stream_read_uint64;
c_g_data_input_stream_read_line  g_data_input_stream_read_line;
c_g_data_input_stream_read_line_async  g_data_input_stream_read_line_async;
c_g_data_input_stream_read_line_finish  g_data_input_stream_read_line_finish;
c_g_data_input_stream_read_until  g_data_input_stream_read_until;
c_g_data_input_stream_read_until_async  g_data_input_stream_read_until_async;
c_g_data_input_stream_read_until_finish  g_data_input_stream_read_until_finish;

// gio.DataOutputStream

c_g_data_output_stream_new  g_data_output_stream_new;
c_g_data_output_stream_set_byte_order  g_data_output_stream_set_byte_order;
c_g_data_output_stream_get_byte_order  g_data_output_stream_get_byte_order;
c_g_data_output_stream_put_byte  g_data_output_stream_put_byte;
c_g_data_output_stream_put_int16  g_data_output_stream_put_int16;
c_g_data_output_stream_put_uint16  g_data_output_stream_put_uint16;
c_g_data_output_stream_put_int32  g_data_output_stream_put_int32;
c_g_data_output_stream_put_uint32  g_data_output_stream_put_uint32;
c_g_data_output_stream_put_int64  g_data_output_stream_put_int64;
c_g_data_output_stream_put_uint64  g_data_output_stream_put_uint64;
c_g_data_output_stream_put_string  g_data_output_stream_put_string;

// gio.UnixInputStream

c_g_unix_input_stream_new  g_unix_input_stream_new;
c_g_unix_input_stream_set_close_fd  g_unix_input_stream_set_close_fd;
c_g_unix_input_stream_get_close_fd  g_unix_input_stream_get_close_fd;
c_g_unix_input_stream_get_fd  g_unix_input_stream_get_fd;

// gio.UnixOutputStream

c_g_unix_output_stream_new  g_unix_output_stream_new;
c_g_unix_output_stream_set_close_fd  g_unix_output_stream_set_close_fd;
c_g_unix_output_stream_get_close_fd  g_unix_output_stream_get_close_fd;
c_g_unix_output_stream_get_fd  g_unix_output_stream_get_fd;

// gio.ContentType

c_g_content_type_equals  g_content_type_equals;
c_g_content_type_is_a  g_content_type_is_a;
c_g_content_type_is_unknown  g_content_type_is_unknown;
c_g_content_type_get_description  g_content_type_get_description;
c_g_content_type_get_mime_type  g_content_type_get_mime_type;
c_g_content_type_get_icon  g_content_type_get_icon;
c_g_content_type_can_be_executable  g_content_type_can_be_executable;
c_g_content_type_from_mime_type  g_content_type_from_mime_type;
c_g_content_type_guess  g_content_type_guess;
c_g_content_type_guess_for_tree  g_content_type_guess_for_tree;
c_g_content_types_get_registered  g_content_types_get_registered;

// gio.AppInfoT


// gio.AppInfoT

c_g_app_info_create_from_commandline  g_app_info_create_from_commandline;
c_g_app_info_dup  g_app_info_dup;
c_g_app_info_equal  g_app_info_equal;
c_g_app_info_get_id  g_app_info_get_id;
c_g_app_info_get_name  g_app_info_get_name;
c_g_app_info_get_description  g_app_info_get_description;
c_g_app_info_get_executable  g_app_info_get_executable;
c_g_app_info_get_commandline  g_app_info_get_commandline;
c_g_app_info_get_icon  g_app_info_get_icon;
c_g_app_info_launch  g_app_info_launch;
c_g_app_info_supports_files  g_app_info_supports_files;
c_g_app_info_supports_uris  g_app_info_supports_uris;
c_g_app_info_launch_uris  g_app_info_launch_uris;
c_g_app_info_should_show  g_app_info_should_show;
c_g_app_info_can_delete  g_app_info_can_delete;
c_g_app_info_delete  g_app_info_delete;
c_g_app_info_reset_type_associations  g_app_info_reset_type_associations;
c_g_app_info_set_as_default_for_type  g_app_info_set_as_default_for_type;
c_g_app_info_set_as_default_for_extension  g_app_info_set_as_default_for_extension;
c_g_app_info_add_supports_type  g_app_info_add_supports_type;
c_g_app_info_can_remove_supports_type  g_app_info_can_remove_supports_type;
c_g_app_info_remove_supports_type  g_app_info_remove_supports_type;
c_g_app_info_get_all  g_app_info_get_all;
c_g_app_info_get_all_for_type  g_app_info_get_all_for_type;
c_g_app_info_get_default_for_type  g_app_info_get_default_for_type;
c_g_app_info_get_default_for_uri_scheme  g_app_info_get_default_for_uri_scheme;
c_g_app_info_launch_default_for_uri  g_app_info_launch_default_for_uri;

// gio.AppInfo


// gio.AppLaunchContext


// gio.DesktopAppInfo

c_g_desktop_app_info_new_from_filename  g_desktop_app_info_new_from_filename;
c_g_desktop_app_info_new_from_keyfile  g_desktop_app_info_new_from_keyfile;
c_g_desktop_app_info_new  g_desktop_app_info_new;
c_g_desktop_app_info_get_is_hidden  g_desktop_app_info_get_is_hidden;
c_g_desktop_app_info_set_desktop_env  g_desktop_app_info_set_desktop_env;
c_g_desktop_app_info_lookup_get_default_for_uri_scheme  g_desktop_app_info_lookup_get_default_for_uri_scheme;

// gio.VolumeMonitor

c_g_volume_monitor_get  g_volume_monitor_get;
c_g_volume_monitor_get_connected_drives  g_volume_monitor_get_connected_drives;
c_g_volume_monitor_get_volumes  g_volume_monitor_get_volumes;
c_g_volume_monitor_get_mounts  g_volume_monitor_get_mounts;
c_g_volume_monitor_adopt_orphan_mount  g_volume_monitor_adopt_orphan_mount;
c_g_volume_monitor_get_mount_for_uuid  g_volume_monitor_get_mount_for_uuid;
c_g_volume_monitor_get_volume_for_uuid  g_volume_monitor_get_volume_for_uuid;

// gio.VolumeT


// gio.VolumeT

c_g_volume_get_name  g_volume_get_name;
c_g_volume_get_uuid  g_volume_get_uuid;
c_g_volume_get_icon  g_volume_get_icon;
c_g_volume_get_drive  g_volume_get_drive;
c_g_volume_get_mount  g_volume_get_mount;
c_g_volume_can_mount  g_volume_can_mount;
c_g_volume_should_automount  g_volume_should_automount;
c_g_volume_get_activation_root  g_volume_get_activation_root;
c_g_volume_mount  g_volume_mount;
c_g_volume_mount_finish  g_volume_mount_finish;
c_g_volume_can_eject  g_volume_can_eject;
c_g_volume_eject  g_volume_eject;
c_g_volume_eject_finish  g_volume_eject_finish;
c_g_volume_enumerate_identifiers  g_volume_enumerate_identifiers;
c_g_volume_get_identifier  g_volume_get_identifier;

// gio.Volume


// gio.MountT


// gio.MountT

c_g_mount_get_name  g_mount_get_name;
c_g_mount_get_uuid  g_mount_get_uuid;
c_g_mount_get_icon  g_mount_get_icon;
c_g_mount_get_drive  g_mount_get_drive;
c_g_mount_get_root  g_mount_get_root;
c_g_mount_get_volume  g_mount_get_volume;
c_g_mount_can_unmount  g_mount_can_unmount;
c_g_mount_unmount  g_mount_unmount;
c_g_mount_unmount_finish  g_mount_unmount_finish;
c_g_mount_remount  g_mount_remount;
c_g_mount_remount_finish  g_mount_remount_finish;
c_g_mount_can_eject  g_mount_can_eject;
c_g_mount_eject  g_mount_eject;
c_g_mount_eject_finish  g_mount_eject_finish;
c_g_mount_guess_content_type  g_mount_guess_content_type;
c_g_mount_guess_content_type_finish  g_mount_guess_content_type_finish;
c_g_mount_guess_content_type_sync  g_mount_guess_content_type_sync;
c_g_mount_is_shadowed  g_mount_is_shadowed;
c_g_mount_shadow  g_mount_shadow;
c_g_mount_unshadow  g_mount_unshadow;

// gio.Mount


// gio.DriveT


// gio.DriveT

c_g_drive_get_name  g_drive_get_name;
c_g_drive_get_icon  g_drive_get_icon;
c_g_drive_has_volumes  g_drive_has_volumes;
c_g_drive_get_volumes  g_drive_get_volumes;
c_g_drive_can_eject  g_drive_can_eject;
c_g_drive_can_poll_for_media  g_drive_can_poll_for_media;
c_g_drive_poll_for_media  g_drive_poll_for_media;
c_g_drive_poll_for_media_finish  g_drive_poll_for_media_finish;
c_g_drive_has_media  g_drive_has_media;
c_g_drive_is_media_check_automatic  g_drive_is_media_check_automatic;
c_g_drive_is_media_removable  g_drive_is_media_removable;
c_g_drive_eject  g_drive_eject;
c_g_drive_eject_finish  g_drive_eject_finish;
c_g_drive_enumerate_identifiers  g_drive_enumerate_identifiers;
c_g_drive_get_identifier  g_drive_get_identifier;

// gio.Drive


// gio.UnixMountEntry

c_g_unix_mount_free  g_unix_mount_free;
c_g_unix_mount_compare  g_unix_mount_compare;
c_g_unix_mount_get_mount_path  g_unix_mount_get_mount_path;
c_g_unix_mount_get_device_path  g_unix_mount_get_device_path;
c_g_unix_mount_get_fs_type  g_unix_mount_get_fs_type;
c_g_unix_mount_is_readonly  g_unix_mount_is_readonly;
c_g_unix_mount_is_system_internal  g_unix_mount_is_system_internal;
c_g_unix_mount_guess_icon  g_unix_mount_guess_icon;
c_g_unix_mount_guess_name  g_unix_mount_guess_name;
c_g_unix_mount_guess_can_eject  g_unix_mount_guess_can_eject;
c_g_unix_mount_guess_should_display  g_unix_mount_guess_should_display;
c_g_unix_mount_points_get  g_unix_mount_points_get;
c_g_unix_mounts_get  g_unix_mounts_get;
c_g_unix_mount_at  g_unix_mount_at;
c_g_unix_mounts_changed_since  g_unix_mounts_changed_since;
c_g_unix_mount_points_changed_since  g_unix_mount_points_changed_since;
c_g_unix_is_mount_path_system_internal  g_unix_is_mount_path_system_internal;

// gio.UnixMountPoint

c_g_unix_mount_point_free  g_unix_mount_point_free;
c_g_unix_mount_point_compare  g_unix_mount_point_compare;
c_g_unix_mount_point_get_mount_path  g_unix_mount_point_get_mount_path;
c_g_unix_mount_point_get_device_path  g_unix_mount_point_get_device_path;
c_g_unix_mount_point_get_fs_type  g_unix_mount_point_get_fs_type;
c_g_unix_mount_point_is_readonly  g_unix_mount_point_is_readonly;
c_g_unix_mount_point_is_user_mountable  g_unix_mount_point_is_user_mountable;
c_g_unix_mount_point_is_loopback  g_unix_mount_point_is_loopback;
c_g_unix_mount_point_guess_icon  g_unix_mount_point_guess_icon;
c_g_unix_mount_point_guess_name  g_unix_mount_point_guess_name;
c_g_unix_mount_point_guess_can_eject  g_unix_mount_point_guess_can_eject;

// gio.UnixMountMonitor

c_g_unix_mount_monitor_new  g_unix_mount_monitor_new;
c_g_unix_mount_monitor_set_rate_limit  g_unix_mount_monitor_set_rate_limit;

// gio.IconT


// gio.IconT

c_g_icon_hash  g_icon_hash;
c_g_icon_equal  g_icon_equal;
c_g_icon_to_string  g_icon_to_string;
c_g_icon_new_for_string  g_icon_new_for_string;

// gio.Icon


// gio.FileIcon

c_g_file_icon_new  g_file_icon_new;
c_g_file_icon_get_file  g_file_icon_get_file;

// gio.LoadableIconT


// gio.LoadableIconT

c_g_loadable_icon_load  g_loadable_icon_load;
c_g_loadable_icon_load_async  g_loadable_icon_load_async;
c_g_loadable_icon_load_finish  g_loadable_icon_load_finish;

// gio.ThemedIcon

c_g_themed_icon_new  g_themed_icon_new;
c_g_themed_icon_new_from_names  g_themed_icon_new_from_names;
c_g_themed_icon_new_with_default_fallbacks  g_themed_icon_new_with_default_fallbacks;
c_g_themed_icon_prepend_name  g_themed_icon_prepend_name;
c_g_themed_icon_append_name  g_themed_icon_append_name;

// gio.EmblemedIcon

c_g_emblemed_icon_new  g_emblemed_icon_new;
c_g_emblemed_icon_get_icon  g_emblemed_icon_get_icon;
c_g_emblemed_icon_get_emblems  g_emblemed_icon_get_emblems;
c_g_emblemed_icon_add_emblem  g_emblemed_icon_add_emblem;

// gio.Emblem

c_g_emblem_new  g_emblem_new;
c_g_emblem_new_with_origin  g_emblem_new_with_origin;
c_g_emblem_get_icon  g_emblem_get_icon;
c_g_emblem_get_origin  g_emblem_get_origin;

// gio.FilenameCompleter

c_g_filename_completer_new  g_filename_completer_new;
c_g_filename_completer_get_completion_suffix  g_filename_completer_get_completion_suffix;
c_g_filename_completer_get_completions  g_filename_completer_get_completions;
c_g_filename_completer_set_dirs_only  g_filename_completer_set_dirs_only;

// gio.Vfs

c_g_vfs_get_file_for_path  g_vfs_get_file_for_path;
c_g_vfs_get_file_for_uri  g_vfs_get_file_for_uri;
c_g_vfs_parse_name  g_vfs_parse_name;
c_g_vfs_get_default  g_vfs_get_default;
c_g_vfs_get_local  g_vfs_get_local;
c_g_vfs_is_active  g_vfs_is_active;
c_g_vfs_get_supported_uri_schemes  g_vfs_get_supported_uri_schemes;

// gio.IOModule

c_g_io_module_new  g_io_module_new;
c_g_io_modules_load_all_in_directory  g_io_modules_load_all_in_directory;
c_g_io_module_load  g_io_module_load;
c_g_io_module_unload  g_io_module_unload;

// gio.IOExtension

c_g_io_extension_get_name  g_io_extension_get_name;
c_g_io_extension_get_priority  g_io_extension_get_priority;
c_g_io_extension_get_type  g_io_extension_get_type;
c_g_io_extension_ref_class  g_io_extension_ref_class;

// gio.IOExtensionPoint

c_g_io_extension_point_get_extension_by_name  g_io_extension_point_get_extension_by_name;
c_g_io_extension_point_get_extensions  g_io_extension_point_get_extensions;
c_g_io_extension_point_get_required_type  g_io_extension_point_get_required_type;
c_g_io_extension_point_implement  g_io_extension_point_implement;
c_g_io_extension_point_lookup  g_io_extension_point_lookup;
c_g_io_extension_point_register  g_io_extension_point_register;
c_g_io_extension_point_set_required_type  g_io_extension_point_set_required_type;
