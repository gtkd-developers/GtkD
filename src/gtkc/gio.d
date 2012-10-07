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


module gtkc.gio;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.giotypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// gio.File

	Linker.link(g_file_new_for_path, \"g_file_new_for_path\", LIBRARY.GIO);
	Linker.link(g_file_new_for_uri, \"g_file_new_for_uri\", LIBRARY.GIO);
	Linker.link(g_file_new_for_commandline_arg, \"g_file_new_for_commandline_arg\", LIBRARY.GIO);
	Linker.link(g_file_new_tmp, \"g_file_new_tmp\", LIBRARY.GIO);
	Linker.link(g_file_parse_name, \"g_file_parse_name\", LIBRARY.GIO);
	Linker.link(g_file_dup, \"g_file_dup\", LIBRARY.GIO);
	Linker.link(g_file_hash, \"g_file_hash\", LIBRARY.GIO);
	Linker.link(g_file_equal, \"g_file_equal\", LIBRARY.GIO);
	Linker.link(g_file_get_basename, \"g_file_get_basename\", LIBRARY.GIO);
	Linker.link(g_file_get_path, \"g_file_get_path\", LIBRARY.GIO);
	Linker.link(g_file_get_uri, \"g_file_get_uri\", LIBRARY.GIO);
	Linker.link(g_file_get_parse_name, \"g_file_get_parse_name\", LIBRARY.GIO);
	Linker.link(g_file_get_parent, \"g_file_get_parent\", LIBRARY.GIO);
	Linker.link(g_file_has_parent, \"g_file_has_parent\", LIBRARY.GIO);
	Linker.link(g_file_get_child, \"g_file_get_child\", LIBRARY.GIO);
	Linker.link(g_file_get_child_for_display_name, \"g_file_get_child_for_display_name\", LIBRARY.GIO);
	Linker.link(g_file_has_prefix, \"g_file_has_prefix\", LIBRARY.GIO);
	Linker.link(g_file_get_relative_path, \"g_file_get_relative_path\", LIBRARY.GIO);
	Linker.link(g_file_resolve_relative_path, \"g_file_resolve_relative_path\", LIBRARY.GIO);
	Linker.link(g_file_is_native, \"g_file_is_native\", LIBRARY.GIO);
	Linker.link(g_file_has_uri_scheme, \"g_file_has_uri_scheme\", LIBRARY.GIO);
	Linker.link(g_file_get_uri_scheme, \"g_file_get_uri_scheme\", LIBRARY.GIO);
	Linker.link(g_file_read, \"g_file_read\", LIBRARY.GIO);
	Linker.link(g_file_read_async, \"g_file_read_async\", LIBRARY.GIO);
	Linker.link(g_file_read_finish, \"g_file_read_finish\", LIBRARY.GIO);
	Linker.link(g_file_append_to, \"g_file_append_to\", LIBRARY.GIO);
	Linker.link(g_file_create, \"g_file_create\", LIBRARY.GIO);
	Linker.link(g_file_replace, \"g_file_replace\", LIBRARY.GIO);
	Linker.link(g_file_append_to_async, \"g_file_append_to_async\", LIBRARY.GIO);
	Linker.link(g_file_append_to_finish, \"g_file_append_to_finish\", LIBRARY.GIO);
	Linker.link(g_file_create_async, \"g_file_create_async\", LIBRARY.GIO);
	Linker.link(g_file_create_finish, \"g_file_create_finish\", LIBRARY.GIO);
	Linker.link(g_file_replace_async, \"g_file_replace_async\", LIBRARY.GIO);
	Linker.link(g_file_replace_finish, \"g_file_replace_finish\", LIBRARY.GIO);
	Linker.link(g_file_query_info, \"g_file_query_info\", LIBRARY.GIO);
	Linker.link(g_file_query_info_async, \"g_file_query_info_async\", LIBRARY.GIO);
	Linker.link(g_file_query_info_finish, \"g_file_query_info_finish\", LIBRARY.GIO);
	Linker.link(g_file_query_exists, \"g_file_query_exists\", LIBRARY.GIO);
	Linker.link(g_file_query_file_type, \"g_file_query_file_type\", LIBRARY.GIO);
	Linker.link(g_file_query_filesystem_info, \"g_file_query_filesystem_info\", LIBRARY.GIO);
	Linker.link(g_file_query_filesystem_info_async, \"g_file_query_filesystem_info_async\", LIBRARY.GIO);
	Linker.link(g_file_query_filesystem_info_finish, \"g_file_query_filesystem_info_finish\", LIBRARY.GIO);
	Linker.link(g_file_query_default_handler, \"g_file_query_default_handler\", LIBRARY.GIO);
	Linker.link(g_file_find_enclosing_mount, \"g_file_find_enclosing_mount\", LIBRARY.GIO);
	Linker.link(g_file_find_enclosing_mount_async, \"g_file_find_enclosing_mount_async\", LIBRARY.GIO);
	Linker.link(g_file_find_enclosing_mount_finish, \"g_file_find_enclosing_mount_finish\", LIBRARY.GIO);
	Linker.link(g_file_enumerate_children, \"g_file_enumerate_children\", LIBRARY.GIO);
	Linker.link(g_file_enumerate_children_async, \"g_file_enumerate_children_async\", LIBRARY.GIO);
	Linker.link(g_file_enumerate_children_finish, \"g_file_enumerate_children_finish\", LIBRARY.GIO);
	Linker.link(g_file_set_display_name, \"g_file_set_display_name\", LIBRARY.GIO);
	Linker.link(g_file_set_display_name_async, \"g_file_set_display_name_async\", LIBRARY.GIO);
	Linker.link(g_file_set_display_name_finish, \"g_file_set_display_name_finish\", LIBRARY.GIO);
	Linker.link(g_file_delete, \"g_file_delete\", LIBRARY.GIO);
	Linker.link(g_file_delete_async, \"g_file_delete_async\", LIBRARY.GIO);
	Linker.link(g_file_delete_finish, \"g_file_delete_finish\", LIBRARY.GIO);
	Linker.link(g_file_trash, \"g_file_trash\", LIBRARY.GIO);
	Linker.link(g_file_copy, \"g_file_copy\", LIBRARY.GIO);
	Linker.link(g_file_copy_async, \"g_file_copy_async\", LIBRARY.GIO);
	Linker.link(g_file_copy_finish, \"g_file_copy_finish\", LIBRARY.GIO);
	Linker.link(g_file_move, \"g_file_move\", LIBRARY.GIO);
	Linker.link(g_file_make_directory, \"g_file_make_directory\", LIBRARY.GIO);
	Linker.link(g_file_make_directory_with_parents, \"g_file_make_directory_with_parents\", LIBRARY.GIO);
	Linker.link(g_file_make_symbolic_link, \"g_file_make_symbolic_link\", LIBRARY.GIO);
	Linker.link(g_file_query_settable_attributes, \"g_file_query_settable_attributes\", LIBRARY.GIO);
	Linker.link(g_file_query_writable_namespaces, \"g_file_query_writable_namespaces\", LIBRARY.GIO);
	Linker.link(g_file_set_attribute, \"g_file_set_attribute\", LIBRARY.GIO);
	Linker.link(g_file_set_attributes_from_info, \"g_file_set_attributes_from_info\", LIBRARY.GIO);
	Linker.link(g_file_set_attributes_async, \"g_file_set_attributes_async\", LIBRARY.GIO);
	Linker.link(g_file_set_attributes_finish, \"g_file_set_attributes_finish\", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_string, \"g_file_set_attribute_string\", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_byte_string, \"g_file_set_attribute_byte_string\", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_uint32, \"g_file_set_attribute_uint32\", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_int32, \"g_file_set_attribute_int32\", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_uint64, \"g_file_set_attribute_uint64\", LIBRARY.GIO);
	Linker.link(g_file_set_attribute_int64, \"g_file_set_attribute_int64\", LIBRARY.GIO);
	Linker.link(g_file_mount_mountable, \"g_file_mount_mountable\", LIBRARY.GIO);
	Linker.link(g_file_mount_mountable_finish, \"g_file_mount_mountable_finish\", LIBRARY.GIO);
	Linker.link(g_file_unmount_mountable, \"g_file_unmount_mountable\", LIBRARY.GIO);
	Linker.link(g_file_unmount_mountable_finish, \"g_file_unmount_mountable_finish\", LIBRARY.GIO);
	Linker.link(g_file_unmount_mountable_with_operation, \"g_file_unmount_mountable_with_operation\", LIBRARY.GIO);
	Linker.link(g_file_unmount_mountable_with_operation_finish, \"g_file_unmount_mountable_with_operation_finish\", LIBRARY.GIO);
	Linker.link(g_file_eject_mountable, \"g_file_eject_mountable\", LIBRARY.GIO);
	Linker.link(g_file_eject_mountable_finish, \"g_file_eject_mountable_finish\", LIBRARY.GIO);
	Linker.link(g_file_eject_mountable_with_operation, \"g_file_eject_mountable_with_operation\", LIBRARY.GIO);
	Linker.link(g_file_eject_mountable_with_operation_finish, \"g_file_eject_mountable_with_operation_finish\", LIBRARY.GIO);
	Linker.link(g_file_start_mountable, \"g_file_start_mountable\", LIBRARY.GIO);
	Linker.link(g_file_start_mountable_finish, \"g_file_start_mountable_finish\", LIBRARY.GIO);
	Linker.link(g_file_stop_mountable, \"g_file_stop_mountable\", LIBRARY.GIO);
	Linker.link(g_file_stop_mountable_finish, \"g_file_stop_mountable_finish\", LIBRARY.GIO);
	Linker.link(g_file_poll_mountable, \"g_file_poll_mountable\", LIBRARY.GIO);
	Linker.link(g_file_poll_mountable_finish, \"g_file_poll_mountable_finish\", LIBRARY.GIO);
	Linker.link(g_file_mount_enclosing_volume, \"g_file_mount_enclosing_volume\", LIBRARY.GIO);
	Linker.link(g_file_mount_enclosing_volume_finish, \"g_file_mount_enclosing_volume_finish\", LIBRARY.GIO);
	Linker.link(g_file_monitor_directory, \"g_file_monitor_directory\", LIBRARY.GIO);
	Linker.link(g_file_monitor_file, \"g_file_monitor_file\", LIBRARY.GIO);
	Linker.link(g_file_monitor, \"g_file_monitor\", LIBRARY.GIO);
	Linker.link(g_file_load_contents, \"g_file_load_contents\", LIBRARY.GIO);
	Linker.link(g_file_load_contents_async, \"g_file_load_contents_async\", LIBRARY.GIO);
	Linker.link(g_file_load_contents_finish, \"g_file_load_contents_finish\", LIBRARY.GIO);
	Linker.link(g_file_load_partial_contents_async, \"g_file_load_partial_contents_async\", LIBRARY.GIO);
	Linker.link(g_file_load_partial_contents_finish, \"g_file_load_partial_contents_finish\", LIBRARY.GIO);
	Linker.link(g_file_replace_contents, \"g_file_replace_contents\", LIBRARY.GIO);
	Linker.link(g_file_replace_contents_async, \"g_file_replace_contents_async\", LIBRARY.GIO);
	Linker.link(g_file_replace_contents_finish, \"g_file_replace_contents_finish\", LIBRARY.GIO);
	Linker.link(g_file_copy_attributes, \"g_file_copy_attributes\", LIBRARY.GIO);
	Linker.link(g_file_create_readwrite, \"g_file_create_readwrite\", LIBRARY.GIO);
	Linker.link(g_file_create_readwrite_async, \"g_file_create_readwrite_async\", LIBRARY.GIO);
	Linker.link(g_file_create_readwrite_finish, \"g_file_create_readwrite_finish\", LIBRARY.GIO);
	Linker.link(g_file_open_readwrite, \"g_file_open_readwrite\", LIBRARY.GIO);
	Linker.link(g_file_open_readwrite_async, \"g_file_open_readwrite_async\", LIBRARY.GIO);
	Linker.link(g_file_open_readwrite_finish, \"g_file_open_readwrite_finish\", LIBRARY.GIO);
	Linker.link(g_file_replace_readwrite, \"g_file_replace_readwrite\", LIBRARY.GIO);
	Linker.link(g_file_replace_readwrite_async, \"g_file_replace_readwrite_async\", LIBRARY.GIO);
	Linker.link(g_file_replace_readwrite_finish, \"g_file_replace_readwrite_finish\", LIBRARY.GIO);
	Linker.link(g_file_supports_thread_contexts, \"g_file_supports_thread_contexts\", LIBRARY.GIO);

	// gio.FileAttributeInfoList

	Linker.link(g_file_attribute_info_list_new, \"g_file_attribute_info_list_new\", LIBRARY.GIO);
	Linker.link(g_file_attribute_info_list_ref, \"g_file_attribute_info_list_ref\", LIBRARY.GIO);
	Linker.link(g_file_attribute_info_list_unref, \"g_file_attribute_info_list_unref\", LIBRARY.GIO);
	Linker.link(g_file_attribute_info_list_dup, \"g_file_attribute_info_list_dup\", LIBRARY.GIO);
	Linker.link(g_file_attribute_info_list_lookup, \"g_file_attribute_info_list_lookup\", LIBRARY.GIO);
	Linker.link(g_file_attribute_info_list_add, \"g_file_attribute_info_list_add\", LIBRARY.GIO);

	// gio.FileInfo

	Linker.link(g_file_info_new, \"g_file_info_new\", LIBRARY.GIO);
	Linker.link(g_file_info_dup, \"g_file_info_dup\", LIBRARY.GIO);
	Linker.link(g_file_info_copy_into, \"g_file_info_copy_into\", LIBRARY.GIO);
	Linker.link(g_file_info_has_attribute, \"g_file_info_has_attribute\", LIBRARY.GIO);
	Linker.link(g_file_info_has_namespace, \"g_file_info_has_namespace\", LIBRARY.GIO);
	Linker.link(g_file_info_list_attributes, \"g_file_info_list_attributes\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_type, \"g_file_info_get_attribute_type\", LIBRARY.GIO);
	Linker.link(g_file_info_remove_attribute, \"g_file_info_remove_attribute\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_as_string, \"g_file_info_get_attribute_as_string\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_data, \"g_file_info_get_attribute_data\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_status, \"g_file_info_get_attribute_status\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_string, \"g_file_info_get_attribute_string\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_stringv, \"g_file_info_get_attribute_stringv\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_byte_string, \"g_file_info_get_attribute_byte_string\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_boolean, \"g_file_info_get_attribute_boolean\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_uint32, \"g_file_info_get_attribute_uint32\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_int32, \"g_file_info_get_attribute_int32\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_uint64, \"g_file_info_get_attribute_uint64\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_int64, \"g_file_info_get_attribute_int64\", LIBRARY.GIO);
	Linker.link(g_file_info_get_attribute_object, \"g_file_info_get_attribute_object\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute, \"g_file_info_set_attribute\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_status, \"g_file_info_set_attribute_status\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_string, \"g_file_info_set_attribute_string\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_stringv, \"g_file_info_set_attribute_stringv\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_byte_string, \"g_file_info_set_attribute_byte_string\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_boolean, \"g_file_info_set_attribute_boolean\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_uint32, \"g_file_info_set_attribute_uint32\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_int32, \"g_file_info_set_attribute_int32\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_uint64, \"g_file_info_set_attribute_uint64\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_int64, \"g_file_info_set_attribute_int64\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_object, \"g_file_info_set_attribute_object\", LIBRARY.GIO);
	Linker.link(g_file_info_clear_status, \"g_file_info_clear_status\", LIBRARY.GIO);
	Linker.link(g_file_info_get_file_type, \"g_file_info_get_file_type\", LIBRARY.GIO);
	Linker.link(g_file_info_get_is_hidden, \"g_file_info_get_is_hidden\", LIBRARY.GIO);
	Linker.link(g_file_info_get_is_backup, \"g_file_info_get_is_backup\", LIBRARY.GIO);
	Linker.link(g_file_info_get_is_symlink, \"g_file_info_get_is_symlink\", LIBRARY.GIO);
	Linker.link(g_file_info_get_name, \"g_file_info_get_name\", LIBRARY.GIO);
	Linker.link(g_file_info_get_display_name, \"g_file_info_get_display_name\", LIBRARY.GIO);
	Linker.link(g_file_info_get_edit_name, \"g_file_info_get_edit_name\", LIBRARY.GIO);
	Linker.link(g_file_info_get_icon, \"g_file_info_get_icon\", LIBRARY.GIO);
	Linker.link(g_file_info_get_symbolic_icon, \"g_file_info_get_symbolic_icon\", LIBRARY.GIO);
	Linker.link(g_file_info_get_content_type, \"g_file_info_get_content_type\", LIBRARY.GIO);
	Linker.link(g_file_info_get_size, \"g_file_info_get_size\", LIBRARY.GIO);
	Linker.link(g_file_info_get_modification_time, \"g_file_info_get_modification_time\", LIBRARY.GIO);
	Linker.link(g_file_info_get_symlink_target, \"g_file_info_get_symlink_target\", LIBRARY.GIO);
	Linker.link(g_file_info_get_etag, \"g_file_info_get_etag\", LIBRARY.GIO);
	Linker.link(g_file_info_get_sort_order, \"g_file_info_get_sort_order\", LIBRARY.GIO);
	Linker.link(g_file_info_set_attribute_mask, \"g_file_info_set_attribute_mask\", LIBRARY.GIO);
	Linker.link(g_file_info_unset_attribute_mask, \"g_file_info_unset_attribute_mask\", LIBRARY.GIO);
	Linker.link(g_file_info_set_file_type, \"g_file_info_set_file_type\", LIBRARY.GIO);
	Linker.link(g_file_info_set_is_hidden, \"g_file_info_set_is_hidden\", LIBRARY.GIO);
	Linker.link(g_file_info_set_is_symlink, \"g_file_info_set_is_symlink\", LIBRARY.GIO);
	Linker.link(g_file_info_set_name, \"g_file_info_set_name\", LIBRARY.GIO);
	Linker.link(g_file_info_set_display_name, \"g_file_info_set_display_name\", LIBRARY.GIO);
	Linker.link(g_file_info_set_edit_name, \"g_file_info_set_edit_name\", LIBRARY.GIO);
	Linker.link(g_file_info_set_icon, \"g_file_info_set_icon\", LIBRARY.GIO);
	Linker.link(g_file_info_set_symbolic_icon, \"g_file_info_set_symbolic_icon\", LIBRARY.GIO);
	Linker.link(g_file_info_set_content_type, \"g_file_info_set_content_type\", LIBRARY.GIO);
	Linker.link(g_file_info_set_size, \"g_file_info_set_size\", LIBRARY.GIO);
	Linker.link(g_file_info_set_modification_time, \"g_file_info_set_modification_time\", LIBRARY.GIO);
	Linker.link(g_file_info_set_symlink_target, \"g_file_info_set_symlink_target\", LIBRARY.GIO);
	Linker.link(g_file_info_set_sort_order, \"g_file_info_set_sort_order\", LIBRARY.GIO);

	// gio.FileAttributeMatcher

	Linker.link(g_file_attribute_matcher_new, \"g_file_attribute_matcher_new\", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_ref, \"g_file_attribute_matcher_ref\", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_subtract, \"g_file_attribute_matcher_subtract\", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_unref, \"g_file_attribute_matcher_unref\", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_matches, \"g_file_attribute_matcher_matches\", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_matches_only, \"g_file_attribute_matcher_matches_only\", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_enumerate_namespace, \"g_file_attribute_matcher_enumerate_namespace\", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_enumerate_next, \"g_file_attribute_matcher_enumerate_next\", LIBRARY.GIO);
	Linker.link(g_file_attribute_matcher_to_string, \"g_file_attribute_matcher_to_string\", LIBRARY.GIO);

	// gio.FileEnumerator

	Linker.link(g_file_enumerator_next_file, \"g_file_enumerator_next_file\", LIBRARY.GIO);
	Linker.link(g_file_enumerator_close, \"g_file_enumerator_close\", LIBRARY.GIO);
	Linker.link(g_file_enumerator_next_files_async, \"g_file_enumerator_next_files_async\", LIBRARY.GIO);
	Linker.link(g_file_enumerator_next_files_finish, \"g_file_enumerator_next_files_finish\", LIBRARY.GIO);
	Linker.link(g_file_enumerator_close_async, \"g_file_enumerator_close_async\", LIBRARY.GIO);
	Linker.link(g_file_enumerator_close_finish, \"g_file_enumerator_close_finish\", LIBRARY.GIO);
	Linker.link(g_file_enumerator_is_closed, \"g_file_enumerator_is_closed\", LIBRARY.GIO);
	Linker.link(g_file_enumerator_has_pending, \"g_file_enumerator_has_pending\", LIBRARY.GIO);
	Linker.link(g_file_enumerator_set_pending, \"g_file_enumerator_set_pending\", LIBRARY.GIO);
	Linker.link(g_file_enumerator_get_container, \"g_file_enumerator_get_container\", LIBRARY.GIO);

	// gio.ErrorGIO

	Linker.link(g_io_error_from_errno, \"g_io_error_from_errno\", LIBRARY.GIO);
	Linker.link(g_io_error_from_win32_error, \"g_io_error_from_win32_error\", LIBRARY.GIO);

	// gio.MountOperation

	Linker.link(g_mount_operation_new, \"g_mount_operation_new\", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_username, \"g_mount_operation_get_username\", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_username, \"g_mount_operation_set_username\", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_password, \"g_mount_operation_get_password\", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_password, \"g_mount_operation_set_password\", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_anonymous, \"g_mount_operation_get_anonymous\", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_anonymous, \"g_mount_operation_set_anonymous\", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_domain, \"g_mount_operation_get_domain\", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_domain, \"g_mount_operation_set_domain\", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_password_save, \"g_mount_operation_get_password_save\", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_password_save, \"g_mount_operation_set_password_save\", LIBRARY.GIO);
	Linker.link(g_mount_operation_get_choice, \"g_mount_operation_get_choice\", LIBRARY.GIO);
	Linker.link(g_mount_operation_set_choice, \"g_mount_operation_set_choice\", LIBRARY.GIO);
	Linker.link(g_mount_operation_reply, \"g_mount_operation_reply\", LIBRARY.GIO);

	// gio.FileMonitor

	Linker.link(g_file_monitor_cancel, \"g_file_monitor_cancel\", LIBRARY.GIO);
	Linker.link(g_file_monitor_is_cancelled, \"g_file_monitor_is_cancelled\", LIBRARY.GIO);
	Linker.link(g_file_monitor_set_rate_limit, \"g_file_monitor_set_rate_limit\", LIBRARY.GIO);
	Linker.link(g_file_monitor_emit_event, \"g_file_monitor_emit_event\", LIBRARY.GIO);

	// gio.FilenameCompleter

	Linker.link(g_filename_completer_new, \"g_filename_completer_new\", LIBRARY.GIO);
	Linker.link(g_filename_completer_get_completion_suffix, \"g_filename_completer_get_completion_suffix\", LIBRARY.GIO);
	Linker.link(g_filename_completer_get_completions, \"g_filename_completer_get_completions\", LIBRARY.GIO);
	Linker.link(g_filename_completer_set_dirs_only, \"g_filename_completer_set_dirs_only\", LIBRARY.GIO);

	// gio.Cancellable

	Linker.link(g_cancellable_new, \"g_cancellable_new\", LIBRARY.GIO);
	Linker.link(g_cancellable_is_cancelled, \"g_cancellable_is_cancelled\", LIBRARY.GIO);
	Linker.link(g_cancellable_set_error_if_cancelled, \"g_cancellable_set_error_if_cancelled\", LIBRARY.GIO);
	Linker.link(g_cancellable_get_fd, \"g_cancellable_get_fd\", LIBRARY.GIO);
	Linker.link(g_cancellable_make_pollfd, \"g_cancellable_make_pollfd\", LIBRARY.GIO);
	Linker.link(g_cancellable_release_fd, \"g_cancellable_release_fd\", LIBRARY.GIO);
	Linker.link(g_cancellable_source_new, \"g_cancellable_source_new\", LIBRARY.GIO);
	Linker.link(g_cancellable_get_current, \"g_cancellable_get_current\", LIBRARY.GIO);
	Linker.link(g_cancellable_pop_current, \"g_cancellable_pop_current\", LIBRARY.GIO);
	Linker.link(g_cancellable_push_current, \"g_cancellable_push_current\", LIBRARY.GIO);
	Linker.link(g_cancellable_reset, \"g_cancellable_reset\", LIBRARY.GIO);
	Linker.link(g_cancellable_connect, \"g_cancellable_connect\", LIBRARY.GIO);
	Linker.link(g_cancellable_disconnect, \"g_cancellable_disconnect\", LIBRARY.GIO);
	Linker.link(g_cancellable_cancel, \"g_cancellable_cancel\", LIBRARY.GIO);

	// gio.AsyncResultT


	// gio.AsyncResultT

	Linker.link(g_async_result_get_user_data, \"g_async_result_get_user_data\", LIBRARY.GIO);
	Linker.link(g_async_result_get_source_object, \"g_async_result_get_source_object\", LIBRARY.GIO);
	Linker.link(g_async_result_is_tagged, \"g_async_result_is_tagged\", LIBRARY.GIO);
	Linker.link(g_async_result_legacy_propagate_error, \"g_async_result_legacy_propagate_error\", LIBRARY.GIO);

	// gio.IOSchedulerJob

	Linker.link(g_io_scheduler_push_job, \"g_io_scheduler_push_job\", LIBRARY.GIO);
	Linker.link(g_io_scheduler_cancel_all_jobs, \"g_io_scheduler_cancel_all_jobs\", LIBRARY.GIO);
	Linker.link(g_io_scheduler_job_send_to_mainloop, \"g_io_scheduler_job_send_to_mainloop\", LIBRARY.GIO);
	Linker.link(g_io_scheduler_job_send_to_mainloop_async, \"g_io_scheduler_job_send_to_mainloop_async\", LIBRARY.GIO);

	// gio.SimpleAsyncResult

	Linker.link(g_simple_async_result_new, \"g_simple_async_result_new\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_new_error, \"g_simple_async_result_new_error\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_new_from_error, \"g_simple_async_result_new_from_error\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_new_take_error, \"g_simple_async_result_new_take_error\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_check_cancellable, \"g_simple_async_result_set_check_cancellable\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_op_res_gpointer, \"g_simple_async_result_set_op_res_gpointer\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_get_op_res_gpointer, \"g_simple_async_result_get_op_res_gpointer\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_op_res_gssize, \"g_simple_async_result_set_op_res_gssize\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_get_op_res_gssize, \"g_simple_async_result_get_op_res_gssize\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_op_res_gboolean, \"g_simple_async_result_set_op_res_gboolean\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_get_op_res_gboolean, \"g_simple_async_result_get_op_res_gboolean\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_get_source_tag, \"g_simple_async_result_get_source_tag\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_is_valid, \"g_simple_async_result_is_valid\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_handle_cancellation, \"g_simple_async_result_set_handle_cancellation\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_complete, \"g_simple_async_result_complete\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_complete_in_idle, \"g_simple_async_result_complete_in_idle\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_run_in_thread, \"g_simple_async_result_run_in_thread\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_from_error, \"g_simple_async_result_set_from_error\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_take_error, \"g_simple_async_result_take_error\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_propagate_error, \"g_simple_async_result_propagate_error\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_error, \"g_simple_async_result_set_error\", LIBRARY.GIO);
	Linker.link(g_simple_async_result_set_error_va, \"g_simple_async_result_set_error_va\", LIBRARY.GIO);
	Linker.link(g_simple_async_report_error_in_idle, \"g_simple_async_report_error_in_idle\", LIBRARY.GIO);
	Linker.link(g_simple_async_report_gerror_in_idle, \"g_simple_async_report_gerror_in_idle\", LIBRARY.GIO);
	Linker.link(g_simple_async_report_take_gerror_in_idle, \"g_simple_async_report_take_gerror_in_idle\", LIBRARY.GIO);

	// gio.ConverterT


	// gio.ConverterT

	Linker.link(g_converter_convert, \"g_converter_convert\", LIBRARY.GIO);
	Linker.link(g_converter_reset, \"g_converter_reset\", LIBRARY.GIO);

	// gio.Converter


	// gio.CharsetConverter

	Linker.link(g_charset_converter_new, \"g_charset_converter_new\", LIBRARY.GIO);
	Linker.link(g_charset_converter_set_use_fallback, \"g_charset_converter_set_use_fallback\", LIBRARY.GIO);
	Linker.link(g_charset_converter_get_use_fallback, \"g_charset_converter_get_use_fallback\", LIBRARY.GIO);
	Linker.link(g_charset_converter_get_num_fallbacks, \"g_charset_converter_get_num_fallbacks\", LIBRARY.GIO);

	// gio.ZlibCompressor

	Linker.link(g_zlib_compressor_new, \"g_zlib_compressor_new\", LIBRARY.GIO);
	Linker.link(g_zlib_compressor_get_file_info, \"g_zlib_compressor_get_file_info\", LIBRARY.GIO);
	Linker.link(g_zlib_compressor_set_file_info, \"g_zlib_compressor_set_file_info\", LIBRARY.GIO);

	// gio.ZlibDecompressor

	Linker.link(g_zlib_decompressor_new, \"g_zlib_decompressor_new\", LIBRARY.GIO);
	Linker.link(g_zlib_decompressor_get_file_info, \"g_zlib_decompressor_get_file_info\", LIBRARY.GIO);

	// gio.SeekableT


	// gio.SeekableT

	Linker.link(g_seekable_tell, \"g_seekable_tell\", LIBRARY.GIO);
	Linker.link(g_seekable_can_seek, \"g_seekable_can_seek\", LIBRARY.GIO);
	Linker.link(g_seekable_seek, \"g_seekable_seek\", LIBRARY.GIO);
	Linker.link(g_seekable_can_truncate, \"g_seekable_can_truncate\", LIBRARY.GIO);
	Linker.link(g_seekable_truncate, \"g_seekable_truncate\", LIBRARY.GIO);

	// gio.InputStream

	Linker.link(g_input_stream_read, \"g_input_stream_read\", LIBRARY.GIO);
	Linker.link(g_input_stream_read_all, \"g_input_stream_read_all\", LIBRARY.GIO);
	Linker.link(g_input_stream_skip, \"g_input_stream_skip\", LIBRARY.GIO);
	Linker.link(g_input_stream_close, \"g_input_stream_close\", LIBRARY.GIO);
	Linker.link(g_input_stream_read_async, \"g_input_stream_read_async\", LIBRARY.GIO);
	Linker.link(g_input_stream_read_finish, \"g_input_stream_read_finish\", LIBRARY.GIO);
	Linker.link(g_input_stream_skip_async, \"g_input_stream_skip_async\", LIBRARY.GIO);
	Linker.link(g_input_stream_skip_finish, \"g_input_stream_skip_finish\", LIBRARY.GIO);
	Linker.link(g_input_stream_close_async, \"g_input_stream_close_async\", LIBRARY.GIO);
	Linker.link(g_input_stream_close_finish, \"g_input_stream_close_finish\", LIBRARY.GIO);
	Linker.link(g_input_stream_is_closed, \"g_input_stream_is_closed\", LIBRARY.GIO);
	Linker.link(g_input_stream_has_pending, \"g_input_stream_has_pending\", LIBRARY.GIO);
	Linker.link(g_input_stream_set_pending, \"g_input_stream_set_pending\", LIBRARY.GIO);
	Linker.link(g_input_stream_clear_pending, \"g_input_stream_clear_pending\", LIBRARY.GIO);
	Linker.link(g_input_stream_read_bytes, \"g_input_stream_read_bytes\", LIBRARY.GIO);
	Linker.link(g_input_stream_read_bytes_async, \"g_input_stream_read_bytes_async\", LIBRARY.GIO);
	Linker.link(g_input_stream_read_bytes_finish, \"g_input_stream_read_bytes_finish\", LIBRARY.GIO);

	// gio.OutputStream

	Linker.link(g_output_stream_write, \"g_output_stream_write\", LIBRARY.GIO);
	Linker.link(g_output_stream_write_all, \"g_output_stream_write_all\", LIBRARY.GIO);
	Linker.link(g_output_stream_splice, \"g_output_stream_splice\", LIBRARY.GIO);
	Linker.link(g_output_stream_flush, \"g_output_stream_flush\", LIBRARY.GIO);
	Linker.link(g_output_stream_close, \"g_output_stream_close\", LIBRARY.GIO);
	Linker.link(g_output_stream_write_async, \"g_output_stream_write_async\", LIBRARY.GIO);
	Linker.link(g_output_stream_write_finish, \"g_output_stream_write_finish\", LIBRARY.GIO);
	Linker.link(g_output_stream_splice_async, \"g_output_stream_splice_async\", LIBRARY.GIO);
	Linker.link(g_output_stream_splice_finish, \"g_output_stream_splice_finish\", LIBRARY.GIO);
	Linker.link(g_output_stream_flush_async, \"g_output_stream_flush_async\", LIBRARY.GIO);
	Linker.link(g_output_stream_flush_finish, \"g_output_stream_flush_finish\", LIBRARY.GIO);
	Linker.link(g_output_stream_close_async, \"g_output_stream_close_async\", LIBRARY.GIO);
	Linker.link(g_output_stream_close_finish, \"g_output_stream_close_finish\", LIBRARY.GIO);
	Linker.link(g_output_stream_is_closing, \"g_output_stream_is_closing\", LIBRARY.GIO);
	Linker.link(g_output_stream_is_closed, \"g_output_stream_is_closed\", LIBRARY.GIO);
	Linker.link(g_output_stream_has_pending, \"g_output_stream_has_pending\", LIBRARY.GIO);
	Linker.link(g_output_stream_set_pending, \"g_output_stream_set_pending\", LIBRARY.GIO);
	Linker.link(g_output_stream_clear_pending, \"g_output_stream_clear_pending\", LIBRARY.GIO);
	Linker.link(g_output_stream_write_bytes, \"g_output_stream_write_bytes\", LIBRARY.GIO);
	Linker.link(g_output_stream_write_bytes_async, \"g_output_stream_write_bytes_async\", LIBRARY.GIO);
	Linker.link(g_output_stream_write_bytes_finish, \"g_output_stream_write_bytes_finish\", LIBRARY.GIO);

	// gio.IOStream

	Linker.link(g_io_stream_get_input_stream, \"g_io_stream_get_input_stream\", LIBRARY.GIO);
	Linker.link(g_io_stream_get_output_stream, \"g_io_stream_get_output_stream\", LIBRARY.GIO);
	Linker.link(g_io_stream_splice_async, \"g_io_stream_splice_async\", LIBRARY.GIO);
	Linker.link(g_io_stream_splice_finish, \"g_io_stream_splice_finish\", LIBRARY.GIO);
	Linker.link(g_io_stream_close, \"g_io_stream_close\", LIBRARY.GIO);
	Linker.link(g_io_stream_close_async, \"g_io_stream_close_async\", LIBRARY.GIO);
	Linker.link(g_io_stream_close_finish, \"g_io_stream_close_finish\", LIBRARY.GIO);
	Linker.link(g_io_stream_is_closed, \"g_io_stream_is_closed\", LIBRARY.GIO);
	Linker.link(g_io_stream_has_pending, \"g_io_stream_has_pending\", LIBRARY.GIO);
	Linker.link(g_io_stream_set_pending, \"g_io_stream_set_pending\", LIBRARY.GIO);
	Linker.link(g_io_stream_clear_pending, \"g_io_stream_clear_pending\", LIBRARY.GIO);

	// gio.FileInputStream

	Linker.link(g_file_input_stream_query_info, \"g_file_input_stream_query_info\", LIBRARY.GIO);
	Linker.link(g_file_input_stream_query_info_async, \"g_file_input_stream_query_info_async\", LIBRARY.GIO);
	Linker.link(g_file_input_stream_query_info_finish, \"g_file_input_stream_query_info_finish\", LIBRARY.GIO);

	// gio.FileOutputStream

	Linker.link(g_file_output_stream_query_info, \"g_file_output_stream_query_info\", LIBRARY.GIO);
	Linker.link(g_file_output_stream_query_info_async, \"g_file_output_stream_query_info_async\", LIBRARY.GIO);
	Linker.link(g_file_output_stream_query_info_finish, \"g_file_output_stream_query_info_finish\", LIBRARY.GIO);
	Linker.link(g_file_output_stream_get_etag, \"g_file_output_stream_get_etag\", LIBRARY.GIO);

	// gio.FileIOStream

	Linker.link(g_file_io_stream_get_etag, \"g_file_io_stream_get_etag\", LIBRARY.GIO);
	Linker.link(g_file_io_stream_query_info, \"g_file_io_stream_query_info\", LIBRARY.GIO);
	Linker.link(g_file_io_stream_query_info_async, \"g_file_io_stream_query_info_async\", LIBRARY.GIO);
	Linker.link(g_file_io_stream_query_info_finish, \"g_file_io_stream_query_info_finish\", LIBRARY.GIO);

	// gio.FileDescriptorBasedT


	// gio.FileDescriptorBasedT

	Linker.link(g_file_descriptor_based_get_fd, \"g_file_descriptor_based_get_fd\", LIBRARY.GIO);

	// gio.FilterInputStream

	Linker.link(g_filter_input_stream_get_base_stream, \"g_filter_input_stream_get_base_stream\", LIBRARY.GIO);
	Linker.link(g_filter_input_stream_get_close_base_stream, \"g_filter_input_stream_get_close_base_stream\", LIBRARY.GIO);
	Linker.link(g_filter_input_stream_set_close_base_stream, \"g_filter_input_stream_set_close_base_stream\", LIBRARY.GIO);

	// gio.FilterOutputStream

	Linker.link(g_filter_output_stream_get_base_stream, \"g_filter_output_stream_get_base_stream\", LIBRARY.GIO);
	Linker.link(g_filter_output_stream_get_close_base_stream, \"g_filter_output_stream_get_close_base_stream\", LIBRARY.GIO);
	Linker.link(g_filter_output_stream_set_close_base_stream, \"g_filter_output_stream_set_close_base_stream\", LIBRARY.GIO);

	// gio.MemoryInputStream

	Linker.link(g_memory_input_stream_new, \"g_memory_input_stream_new\", LIBRARY.GIO);
	Linker.link(g_memory_input_stream_new_from_data, \"g_memory_input_stream_new_from_data\", LIBRARY.GIO);
	Linker.link(g_memory_input_stream_add_data, \"g_memory_input_stream_add_data\", LIBRARY.GIO);

	// gio.MemoryOutputStream

	Linker.link(g_memory_output_stream_new, \"g_memory_output_stream_new\", LIBRARY.GIO);
	Linker.link(g_memory_output_stream_get_data, \"g_memory_output_stream_get_data\", LIBRARY.GIO);
	Linker.link(g_memory_output_stream_get_size, \"g_memory_output_stream_get_size\", LIBRARY.GIO);
	Linker.link(g_memory_output_stream_get_data_size, \"g_memory_output_stream_get_data_size\", LIBRARY.GIO);
	Linker.link(g_memory_output_stream_steal_data, \"g_memory_output_stream_steal_data\", LIBRARY.GIO);

	// gio.BufferedInputStream

	Linker.link(g_buffered_input_stream_new, \"g_buffered_input_stream_new\", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_new_sized, \"g_buffered_input_stream_new_sized\", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_get_buffer_size, \"g_buffered_input_stream_get_buffer_size\", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_set_buffer_size, \"g_buffered_input_stream_set_buffer_size\", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_get_available, \"g_buffered_input_stream_get_available\", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_peek_buffer, \"g_buffered_input_stream_peek_buffer\", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_peek, \"g_buffered_input_stream_peek\", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_fill, \"g_buffered_input_stream_fill\", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_fill_async, \"g_buffered_input_stream_fill_async\", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_fill_finish, \"g_buffered_input_stream_fill_finish\", LIBRARY.GIO);
	Linker.link(g_buffered_input_stream_read_byte, \"g_buffered_input_stream_read_byte\", LIBRARY.GIO);

	// gio.BufferedOutputStream

	Linker.link(g_buffered_output_stream_new, \"g_buffered_output_stream_new\", LIBRARY.GIO);
	Linker.link(g_buffered_output_stream_new_sized, \"g_buffered_output_stream_new_sized\", LIBRARY.GIO);
	Linker.link(g_buffered_output_stream_get_buffer_size, \"g_buffered_output_stream_get_buffer_size\", LIBRARY.GIO);
	Linker.link(g_buffered_output_stream_set_buffer_size, \"g_buffered_output_stream_set_buffer_size\", LIBRARY.GIO);
	Linker.link(g_buffered_output_stream_get_auto_grow, \"g_buffered_output_stream_get_auto_grow\", LIBRARY.GIO);
	Linker.link(g_buffered_output_stream_set_auto_grow, \"g_buffered_output_stream_set_auto_grow\", LIBRARY.GIO);

	// gio.DataInputStream

	Linker.link(g_data_input_stream_new, \"g_data_input_stream_new\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_set_byte_order, \"g_data_input_stream_set_byte_order\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_get_byte_order, \"g_data_input_stream_get_byte_order\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_set_newline_type, \"g_data_input_stream_set_newline_type\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_get_newline_type, \"g_data_input_stream_get_newline_type\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_byte, \"g_data_input_stream_read_byte\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_int16, \"g_data_input_stream_read_int16\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_uint16, \"g_data_input_stream_read_uint16\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_int32, \"g_data_input_stream_read_int32\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_uint32, \"g_data_input_stream_read_uint32\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_int64, \"g_data_input_stream_read_int64\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_uint64, \"g_data_input_stream_read_uint64\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_line, \"g_data_input_stream_read_line\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_line_utf8, \"g_data_input_stream_read_line_utf8\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_line_async, \"g_data_input_stream_read_line_async\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_line_finish, \"g_data_input_stream_read_line_finish\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_line_finish_utf8, \"g_data_input_stream_read_line_finish_utf8\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_upto, \"g_data_input_stream_read_upto\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_upto_async, \"g_data_input_stream_read_upto_async\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_upto_finish, \"g_data_input_stream_read_upto_finish\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_until, \"g_data_input_stream_read_until\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_until_async, \"g_data_input_stream_read_until_async\", LIBRARY.GIO);
	Linker.link(g_data_input_stream_read_until_finish, \"g_data_input_stream_read_until_finish\", LIBRARY.GIO);

	// gio.DataOutputStream

	Linker.link(g_data_output_stream_new, \"g_data_output_stream_new\", LIBRARY.GIO);
	Linker.link(g_data_output_stream_set_byte_order, \"g_data_output_stream_set_byte_order\", LIBRARY.GIO);
	Linker.link(g_data_output_stream_get_byte_order, \"g_data_output_stream_get_byte_order\", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_byte, \"g_data_output_stream_put_byte\", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_int16, \"g_data_output_stream_put_int16\", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_uint16, \"g_data_output_stream_put_uint16\", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_int32, \"g_data_output_stream_put_int32\", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_uint32, \"g_data_output_stream_put_uint32\", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_int64, \"g_data_output_stream_put_int64\", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_uint64, \"g_data_output_stream_put_uint64\", LIBRARY.GIO);
	Linker.link(g_data_output_stream_put_string, \"g_data_output_stream_put_string\", LIBRARY.GIO);

	// gio.UnixInputStream

	Linker.link(g_unix_input_stream_new, \"g_unix_input_stream_new\", LIBRARY.GIO);
	Linker.link(g_unix_input_stream_set_close_fd, \"g_unix_input_stream_set_close_fd\", LIBRARY.GIO);
	Linker.link(g_unix_input_stream_get_close_fd, \"g_unix_input_stream_get_close_fd\", LIBRARY.GIO);
	Linker.link(g_unix_input_stream_get_fd, \"g_unix_input_stream_get_fd\", LIBRARY.GIO);

	// gio.UnixOutputStream

	Linker.link(g_unix_output_stream_new, \"g_unix_output_stream_new\", LIBRARY.GIO);
	Linker.link(g_unix_output_stream_set_close_fd, \"g_unix_output_stream_set_close_fd\", LIBRARY.GIO);
	Linker.link(g_unix_output_stream_get_close_fd, \"g_unix_output_stream_get_close_fd\", LIBRARY.GIO);
	Linker.link(g_unix_output_stream_get_fd, \"g_unix_output_stream_get_fd\", LIBRARY.GIO);

	// gio.ConverterInputStream

	Linker.link(g_converter_input_stream_new, \"g_converter_input_stream_new\", LIBRARY.GIO);
	Linker.link(g_converter_input_stream_get_converter, \"g_converter_input_stream_get_converter\", LIBRARY.GIO);

	// gio.ConverterOutputStream

	Linker.link(g_converter_output_stream_new, \"g_converter_output_stream_new\", LIBRARY.GIO);
	Linker.link(g_converter_output_stream_get_converter, \"g_converter_output_stream_get_converter\", LIBRARY.GIO);

	// gio.PollableInputStreamT


	// gio.PollableInputStreamT

	Linker.link(g_pollable_input_stream_can_poll, \"g_pollable_input_stream_can_poll\", LIBRARY.GIO);
	Linker.link(g_pollable_input_stream_is_readable, \"g_pollable_input_stream_is_readable\", LIBRARY.GIO);
	Linker.link(g_pollable_input_stream_create_source, \"g_pollable_input_stream_create_source\", LIBRARY.GIO);
	Linker.link(g_pollable_input_stream_read_nonblocking, \"g_pollable_input_stream_read_nonblocking\", LIBRARY.GIO);

	// gio.PollableOutputStreamT


	// gio.PollableOutputStreamT

	Linker.link(g_pollable_output_stream_can_poll, \"g_pollable_output_stream_can_poll\", LIBRARY.GIO);
	Linker.link(g_pollable_output_stream_is_writable, \"g_pollable_output_stream_is_writable\", LIBRARY.GIO);
	Linker.link(g_pollable_output_stream_create_source, \"g_pollable_output_stream_create_source\", LIBRARY.GIO);
	Linker.link(g_pollable_output_stream_write_nonblocking, \"g_pollable_output_stream_write_nonblocking\", LIBRARY.GIO);

	// gio.

	Linker.link(g_pollable_source_new, \"g_pollable_source_new\", LIBRARY.GIO);
	Linker.link(g_pollable_source_new_full, \"g_pollable_source_new_full\", LIBRARY.GIO);
	Linker.link(g_pollable_stream_read, \"g_pollable_stream_read\", LIBRARY.GIO);
	Linker.link(g_pollable_stream_write, \"g_pollable_stream_write\", LIBRARY.GIO);
	Linker.link(g_pollable_stream_write_all, \"g_pollable_stream_write_all\", LIBRARY.GIO);

	// gio.ContentType

	Linker.link(g_content_type_equals, \"g_content_type_equals\", LIBRARY.GIO);
	Linker.link(g_content_type_is_a, \"g_content_type_is_a\", LIBRARY.GIO);
	Linker.link(g_content_type_is_unknown, \"g_content_type_is_unknown\", LIBRARY.GIO);
	Linker.link(g_content_type_get_description, \"g_content_type_get_description\", LIBRARY.GIO);
	Linker.link(g_content_type_get_mime_type, \"g_content_type_get_mime_type\", LIBRARY.GIO);
	Linker.link(g_content_type_get_icon, \"g_content_type_get_icon\", LIBRARY.GIO);
	Linker.link(g_content_type_get_symbolic_icon, \"g_content_type_get_symbolic_icon\", LIBRARY.GIO);
	Linker.link(g_content_type_get_generic_icon_name, \"g_content_type_get_generic_icon_name\", LIBRARY.GIO);
	Linker.link(g_content_type_can_be_executable, \"g_content_type_can_be_executable\", LIBRARY.GIO);
	Linker.link(g_content_type_from_mime_type, \"g_content_type_from_mime_type\", LIBRARY.GIO);
	Linker.link(g_content_type_guess, \"g_content_type_guess\", LIBRARY.GIO);
	Linker.link(g_content_type_guess_for_tree, \"g_content_type_guess_for_tree\", LIBRARY.GIO);
	Linker.link(g_content_types_get_registered, \"g_content_types_get_registered\", LIBRARY.GIO);

	// gio.AppInfoT


	// gio.AppInfoT

	Linker.link(g_app_info_create_from_commandline, \"g_app_info_create_from_commandline\", LIBRARY.GIO);
	Linker.link(g_app_info_dup, \"g_app_info_dup\", LIBRARY.GIO);
	Linker.link(g_app_info_equal, \"g_app_info_equal\", LIBRARY.GIO);
	Linker.link(g_app_info_get_id, \"g_app_info_get_id\", LIBRARY.GIO);
	Linker.link(g_app_info_get_name, \"g_app_info_get_name\", LIBRARY.GIO);
	Linker.link(g_app_info_get_display_name, \"g_app_info_get_display_name\", LIBRARY.GIO);
	Linker.link(g_app_info_get_description, \"g_app_info_get_description\", LIBRARY.GIO);
	Linker.link(g_app_info_get_executable, \"g_app_info_get_executable\", LIBRARY.GIO);
	Linker.link(g_app_info_get_commandline, \"g_app_info_get_commandline\", LIBRARY.GIO);
	Linker.link(g_app_info_get_icon, \"g_app_info_get_icon\", LIBRARY.GIO);
	Linker.link(g_app_info_launch, \"g_app_info_launch\", LIBRARY.GIO);
	Linker.link(g_app_info_supports_files, \"g_app_info_supports_files\", LIBRARY.GIO);
	Linker.link(g_app_info_supports_uris, \"g_app_info_supports_uris\", LIBRARY.GIO);
	Linker.link(g_app_info_launch_uris, \"g_app_info_launch_uris\", LIBRARY.GIO);
	Linker.link(g_app_info_should_show, \"g_app_info_should_show\", LIBRARY.GIO);
	Linker.link(g_app_info_can_delete, \"g_app_info_can_delete\", LIBRARY.GIO);
	Linker.link(g_app_info_delete, \"g_app_info_delete\", LIBRARY.GIO);
	Linker.link(g_app_info_reset_type_associations, \"g_app_info_reset_type_associations\", LIBRARY.GIO);
	Linker.link(g_app_info_set_as_default_for_type, \"g_app_info_set_as_default_for_type\", LIBRARY.GIO);
	Linker.link(g_app_info_set_as_default_for_extension, \"g_app_info_set_as_default_for_extension\", LIBRARY.GIO);
	Linker.link(g_app_info_set_as_last_used_for_type, \"g_app_info_set_as_last_used_for_type\", LIBRARY.GIO);
	Linker.link(g_app_info_add_supports_type, \"g_app_info_add_supports_type\", LIBRARY.GIO);
	Linker.link(g_app_info_can_remove_supports_type, \"g_app_info_can_remove_supports_type\", LIBRARY.GIO);
	Linker.link(g_app_info_remove_supports_type, \"g_app_info_remove_supports_type\", LIBRARY.GIO);
	Linker.link(g_app_info_get_supported_types, \"g_app_info_get_supported_types\", LIBRARY.GIO);
	Linker.link(g_app_info_get_all, \"g_app_info_get_all\", LIBRARY.GIO);
	Linker.link(g_app_info_get_all_for_type, \"g_app_info_get_all_for_type\", LIBRARY.GIO);
	Linker.link(g_app_info_get_default_for_type, \"g_app_info_get_default_for_type\", LIBRARY.GIO);
	Linker.link(g_app_info_get_default_for_uri_scheme, \"g_app_info_get_default_for_uri_scheme\", LIBRARY.GIO);
	Linker.link(g_app_info_get_fallback_for_type, \"g_app_info_get_fallback_for_type\", LIBRARY.GIO);
	Linker.link(g_app_info_get_recommended_for_type, \"g_app_info_get_recommended_for_type\", LIBRARY.GIO);
	Linker.link(g_app_info_launch_default_for_uri, \"g_app_info_launch_default_for_uri\", LIBRARY.GIO);

	// gio.AppInfo


	// gio.AppLaunchContext


	// gio.DesktopAppInfo

	Linker.link(g_desktop_app_info_new_from_filename, \"g_desktop_app_info_new_from_filename\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_new_from_keyfile, \"g_desktop_app_info_new_from_keyfile\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_new, \"g_desktop_app_info_new\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_get_filename, \"g_desktop_app_info_get_filename\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_get_is_hidden, \"g_desktop_app_info_get_is_hidden\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_get_nodisplay, \"g_desktop_app_info_get_nodisplay\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_get_show_in, \"g_desktop_app_info_get_show_in\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_get_generic_name, \"g_desktop_app_info_get_generic_name\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_get_categories, \"g_desktop_app_info_get_categories\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_get_keywords, \"g_desktop_app_info_get_keywords\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_get_startup_wm_class, \"g_desktop_app_info_get_startup_wm_class\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_set_desktop_env, \"g_desktop_app_info_set_desktop_env\", LIBRARY.GIO);
	Linker.link(g_desktop_app_info_launch_uris_as_manager, \"g_desktop_app_info_launch_uris_as_manager\", LIBRARY.GIO);

	// gio.VolumeMonitor

	Linker.link(g_volume_monitor_get, \"g_volume_monitor_get\", LIBRARY.GIO);
	Linker.link(g_volume_monitor_get_connected_drives, \"g_volume_monitor_get_connected_drives\", LIBRARY.GIO);
	Linker.link(g_volume_monitor_get_volumes, \"g_volume_monitor_get_volumes\", LIBRARY.GIO);
	Linker.link(g_volume_monitor_get_mounts, \"g_volume_monitor_get_mounts\", LIBRARY.GIO);
	Linker.link(g_volume_monitor_adopt_orphan_mount, \"g_volume_monitor_adopt_orphan_mount\", LIBRARY.GIO);
	Linker.link(g_volume_monitor_get_mount_for_uuid, \"g_volume_monitor_get_mount_for_uuid\", LIBRARY.GIO);
	Linker.link(g_volume_monitor_get_volume_for_uuid, \"g_volume_monitor_get_volume_for_uuid\", LIBRARY.GIO);

	// gio.VolumeT


	// gio.VolumeT

	Linker.link(g_volume_get_name, \"g_volume_get_name\", LIBRARY.GIO);
	Linker.link(g_volume_get_uuid, \"g_volume_get_uuid\", LIBRARY.GIO);
	Linker.link(g_volume_get_icon, \"g_volume_get_icon\", LIBRARY.GIO);
	Linker.link(g_volume_get_symbolic_icon, \"g_volume_get_symbolic_icon\", LIBRARY.GIO);
	Linker.link(g_volume_get_drive, \"g_volume_get_drive\", LIBRARY.GIO);
	Linker.link(g_volume_get_mount, \"g_volume_get_mount\", LIBRARY.GIO);
	Linker.link(g_volume_can_mount, \"g_volume_can_mount\", LIBRARY.GIO);
	Linker.link(g_volume_should_automount, \"g_volume_should_automount\", LIBRARY.GIO);
	Linker.link(g_volume_get_activation_root, \"g_volume_get_activation_root\", LIBRARY.GIO);
	Linker.link(g_volume_mount, \"g_volume_mount\", LIBRARY.GIO);
	Linker.link(g_volume_mount_finish, \"g_volume_mount_finish\", LIBRARY.GIO);
	Linker.link(g_volume_can_eject, \"g_volume_can_eject\", LIBRARY.GIO);
	Linker.link(g_volume_eject, \"g_volume_eject\", LIBRARY.GIO);
	Linker.link(g_volume_eject_finish, \"g_volume_eject_finish\", LIBRARY.GIO);
	Linker.link(g_volume_eject_with_operation, \"g_volume_eject_with_operation\", LIBRARY.GIO);
	Linker.link(g_volume_eject_with_operation_finish, \"g_volume_eject_with_operation_finish\", LIBRARY.GIO);
	Linker.link(g_volume_enumerate_identifiers, \"g_volume_enumerate_identifiers\", LIBRARY.GIO);
	Linker.link(g_volume_get_identifier, \"g_volume_get_identifier\", LIBRARY.GIO);
	Linker.link(g_volume_get_sort_key, \"g_volume_get_sort_key\", LIBRARY.GIO);

	// gio.Volume


	// gio.MountT


	// gio.MountT

	Linker.link(g_mount_get_name, \"g_mount_get_name\", LIBRARY.GIO);
	Linker.link(g_mount_get_uuid, \"g_mount_get_uuid\", LIBRARY.GIO);
	Linker.link(g_mount_get_icon, \"g_mount_get_icon\", LIBRARY.GIO);
	Linker.link(g_mount_get_symbolic_icon, \"g_mount_get_symbolic_icon\", LIBRARY.GIO);
	Linker.link(g_mount_get_drive, \"g_mount_get_drive\", LIBRARY.GIO);
	Linker.link(g_mount_get_root, \"g_mount_get_root\", LIBRARY.GIO);
	Linker.link(g_mount_get_volume, \"g_mount_get_volume\", LIBRARY.GIO);
	Linker.link(g_mount_get_default_location, \"g_mount_get_default_location\", LIBRARY.GIO);
	Linker.link(g_mount_can_unmount, \"g_mount_can_unmount\", LIBRARY.GIO);
	Linker.link(g_mount_unmount, \"g_mount_unmount\", LIBRARY.GIO);
	Linker.link(g_mount_unmount_finish, \"g_mount_unmount_finish\", LIBRARY.GIO);
	Linker.link(g_mount_unmount_with_operation, \"g_mount_unmount_with_operation\", LIBRARY.GIO);
	Linker.link(g_mount_unmount_with_operation_finish, \"g_mount_unmount_with_operation_finish\", LIBRARY.GIO);
	Linker.link(g_mount_remount, \"g_mount_remount\", LIBRARY.GIO);
	Linker.link(g_mount_remount_finish, \"g_mount_remount_finish\", LIBRARY.GIO);
	Linker.link(g_mount_can_eject, \"g_mount_can_eject\", LIBRARY.GIO);
	Linker.link(g_mount_eject, \"g_mount_eject\", LIBRARY.GIO);
	Linker.link(g_mount_eject_finish, \"g_mount_eject_finish\", LIBRARY.GIO);
	Linker.link(g_mount_eject_with_operation, \"g_mount_eject_with_operation\", LIBRARY.GIO);
	Linker.link(g_mount_eject_with_operation_finish, \"g_mount_eject_with_operation_finish\", LIBRARY.GIO);
	Linker.link(g_mount_guess_content_type, \"g_mount_guess_content_type\", LIBRARY.GIO);
	Linker.link(g_mount_guess_content_type_finish, \"g_mount_guess_content_type_finish\", LIBRARY.GIO);
	Linker.link(g_mount_guess_content_type_sync, \"g_mount_guess_content_type_sync\", LIBRARY.GIO);
	Linker.link(g_mount_is_shadowed, \"g_mount_is_shadowed\", LIBRARY.GIO);
	Linker.link(g_mount_shadow, \"g_mount_shadow\", LIBRARY.GIO);
	Linker.link(g_mount_unshadow, \"g_mount_unshadow\", LIBRARY.GIO);
	Linker.link(g_mount_get_sort_key, \"g_mount_get_sort_key\", LIBRARY.GIO);

	// gio.Mount


	// gio.DriveT


	// gio.DriveT

	Linker.link(g_drive_get_name, \"g_drive_get_name\", LIBRARY.GIO);
	Linker.link(g_drive_get_icon, \"g_drive_get_icon\", LIBRARY.GIO);
	Linker.link(g_drive_get_symbolic_icon, \"g_drive_get_symbolic_icon\", LIBRARY.GIO);
	Linker.link(g_drive_has_volumes, \"g_drive_has_volumes\", LIBRARY.GIO);
	Linker.link(g_drive_get_volumes, \"g_drive_get_volumes\", LIBRARY.GIO);
	Linker.link(g_drive_can_eject, \"g_drive_can_eject\", LIBRARY.GIO);
	Linker.link(g_drive_get_start_stop_type, \"g_drive_get_start_stop_type\", LIBRARY.GIO);
	Linker.link(g_drive_can_start, \"g_drive_can_start\", LIBRARY.GIO);
	Linker.link(g_drive_can_start_degraded, \"g_drive_can_start_degraded\", LIBRARY.GIO);
	Linker.link(g_drive_can_stop, \"g_drive_can_stop\", LIBRARY.GIO);
	Linker.link(g_drive_can_poll_for_media, \"g_drive_can_poll_for_media\", LIBRARY.GIO);
	Linker.link(g_drive_poll_for_media, \"g_drive_poll_for_media\", LIBRARY.GIO);
	Linker.link(g_drive_poll_for_media_finish, \"g_drive_poll_for_media_finish\", LIBRARY.GIO);
	Linker.link(g_drive_has_media, \"g_drive_has_media\", LIBRARY.GIO);
	Linker.link(g_drive_is_media_check_automatic, \"g_drive_is_media_check_automatic\", LIBRARY.GIO);
	Linker.link(g_drive_is_media_removable, \"g_drive_is_media_removable\", LIBRARY.GIO);
	Linker.link(g_drive_eject, \"g_drive_eject\", LIBRARY.GIO);
	Linker.link(g_drive_eject_finish, \"g_drive_eject_finish\", LIBRARY.GIO);
	Linker.link(g_drive_eject_with_operation, \"g_drive_eject_with_operation\", LIBRARY.GIO);
	Linker.link(g_drive_eject_with_operation_finish, \"g_drive_eject_with_operation_finish\", LIBRARY.GIO);
	Linker.link(g_drive_start, \"g_drive_start\", LIBRARY.GIO);
	Linker.link(g_drive_start_finish, \"g_drive_start_finish\", LIBRARY.GIO);
	Linker.link(g_drive_stop, \"g_drive_stop\", LIBRARY.GIO);
	Linker.link(g_drive_stop_finish, \"g_drive_stop_finish\", LIBRARY.GIO);
	Linker.link(g_drive_enumerate_identifiers, \"g_drive_enumerate_identifiers\", LIBRARY.GIO);
	Linker.link(g_drive_get_identifier, \"g_drive_get_identifier\", LIBRARY.GIO);
	Linker.link(g_drive_get_sort_key, \"g_drive_get_sort_key\", LIBRARY.GIO);

	// gio.Drive


	// gio.UnixMountEntry

	Linker.link(g_unix_mount_free, \"g_unix_mount_free\", LIBRARY.GIO);
	Linker.link(g_unix_mount_compare, \"g_unix_mount_compare\", LIBRARY.GIO);
	Linker.link(g_unix_mount_get_mount_path, \"g_unix_mount_get_mount_path\", LIBRARY.GIO);
	Linker.link(g_unix_mount_get_device_path, \"g_unix_mount_get_device_path\", LIBRARY.GIO);
	Linker.link(g_unix_mount_get_fs_type, \"g_unix_mount_get_fs_type\", LIBRARY.GIO);
	Linker.link(g_unix_mount_is_readonly, \"g_unix_mount_is_readonly\", LIBRARY.GIO);
	Linker.link(g_unix_mount_is_system_internal, \"g_unix_mount_is_system_internal\", LIBRARY.GIO);
	Linker.link(g_unix_mount_guess_icon, \"g_unix_mount_guess_icon\", LIBRARY.GIO);
	Linker.link(g_unix_mount_guess_symbolic_icon, \"g_unix_mount_guess_symbolic_icon\", LIBRARY.GIO);
	Linker.link(g_unix_mount_guess_name, \"g_unix_mount_guess_name\", LIBRARY.GIO);
	Linker.link(g_unix_mount_guess_can_eject, \"g_unix_mount_guess_can_eject\", LIBRARY.GIO);
	Linker.link(g_unix_mount_guess_should_display, \"g_unix_mount_guess_should_display\", LIBRARY.GIO);
	Linker.link(g_unix_mount_points_get, \"g_unix_mount_points_get\", LIBRARY.GIO);
	Linker.link(g_unix_mounts_get, \"g_unix_mounts_get\", LIBRARY.GIO);
	Linker.link(g_unix_mount_at, \"g_unix_mount_at\", LIBRARY.GIO);
	Linker.link(g_unix_mounts_changed_since, \"g_unix_mounts_changed_since\", LIBRARY.GIO);
	Linker.link(g_unix_mount_points_changed_since, \"g_unix_mount_points_changed_since\", LIBRARY.GIO);
	Linker.link(g_unix_is_mount_path_system_internal, \"g_unix_is_mount_path_system_internal\", LIBRARY.GIO);

	// gio.UnixMountPoint

	Linker.link(g_unix_mount_point_free, \"g_unix_mount_point_free\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_compare, \"g_unix_mount_point_compare\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_get_mount_path, \"g_unix_mount_point_get_mount_path\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_get_device_path, \"g_unix_mount_point_get_device_path\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_get_fs_type, \"g_unix_mount_point_get_fs_type\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_get_options, \"g_unix_mount_point_get_options\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_is_readonly, \"g_unix_mount_point_is_readonly\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_is_user_mountable, \"g_unix_mount_point_is_user_mountable\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_is_loopback, \"g_unix_mount_point_is_loopback\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_guess_icon, \"g_unix_mount_point_guess_icon\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_guess_symbolic_icon, \"g_unix_mount_point_guess_symbolic_icon\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_guess_name, \"g_unix_mount_point_guess_name\", LIBRARY.GIO);
	Linker.link(g_unix_mount_point_guess_can_eject, \"g_unix_mount_point_guess_can_eject\", LIBRARY.GIO);

	// gio.UnixMountMonitor

	Linker.link(g_unix_mount_monitor_new, \"g_unix_mount_monitor_new\", LIBRARY.GIO);
	Linker.link(g_unix_mount_monitor_set_rate_limit, \"g_unix_mount_monitor_set_rate_limit\", LIBRARY.GIO);

	// gio.IconT


	// gio.IconT

	Linker.link(g_icon_hash, \"g_icon_hash\", LIBRARY.GIO);
	Linker.link(g_icon_equal, \"g_icon_equal\", LIBRARY.GIO);
	Linker.link(g_icon_to_string, \"g_icon_to_string\", LIBRARY.GIO);
	Linker.link(g_icon_new_for_string, \"g_icon_new_for_string\", LIBRARY.GIO);

	// gio.Icon


	// gio.FileIcon

	Linker.link(g_file_icon_new, \"g_file_icon_new\", LIBRARY.GIO);
	Linker.link(g_file_icon_get_file, \"g_file_icon_get_file\", LIBRARY.GIO);

	// gio.LoadableIconT


	// gio.LoadableIconT

	Linker.link(g_loadable_icon_load, \"g_loadable_icon_load\", LIBRARY.GIO);
	Linker.link(g_loadable_icon_load_async, \"g_loadable_icon_load_async\", LIBRARY.GIO);
	Linker.link(g_loadable_icon_load_finish, \"g_loadable_icon_load_finish\", LIBRARY.GIO);

	// gio.ThemedIcon

	Linker.link(g_themed_icon_new, \"g_themed_icon_new\", LIBRARY.GIO);
	Linker.link(g_themed_icon_new_from_names, \"g_themed_icon_new_from_names\", LIBRARY.GIO);
	Linker.link(g_themed_icon_new_with_default_fallbacks, \"g_themed_icon_new_with_default_fallbacks\", LIBRARY.GIO);
	Linker.link(g_themed_icon_prepend_name, \"g_themed_icon_prepend_name\", LIBRARY.GIO);
	Linker.link(g_themed_icon_append_name, \"g_themed_icon_append_name\", LIBRARY.GIO);
	Linker.link(g_themed_icon_get_names, \"g_themed_icon_get_names\", LIBRARY.GIO);

	// gio.EmblemedIcon

	Linker.link(g_emblemed_icon_new, \"g_emblemed_icon_new\", LIBRARY.GIO);
	Linker.link(g_emblemed_icon_get_icon, \"g_emblemed_icon_get_icon\", LIBRARY.GIO);
	Linker.link(g_emblemed_icon_get_emblems, \"g_emblemed_icon_get_emblems\", LIBRARY.GIO);
	Linker.link(g_emblemed_icon_add_emblem, \"g_emblemed_icon_add_emblem\", LIBRARY.GIO);
	Linker.link(g_emblemed_icon_clear_emblems, \"g_emblemed_icon_clear_emblems\", LIBRARY.GIO);

	// gio.Emblem

	Linker.link(g_emblem_new, \"g_emblem_new\", LIBRARY.GIO);
	Linker.link(g_emblem_new_with_origin, \"g_emblem_new_with_origin\", LIBRARY.GIO);
	Linker.link(g_emblem_get_icon, \"g_emblem_get_icon\", LIBRARY.GIO);
	Linker.link(g_emblem_get_origin, \"g_emblem_get_origin\", LIBRARY.GIO);

	// gio.InitableT


	// gio.InitableT

	Linker.link(g_initable_init, \"g_initable_init\", LIBRARY.GIO);
	Linker.link(g_initable_new, \"g_initable_new\", LIBRARY.GIO);
	Linker.link(g_initable_new_valist, \"g_initable_new_valist\", LIBRARY.GIO);
	Linker.link(g_initable_newv, \"g_initable_newv\", LIBRARY.GIO);

	// gio.AsyncInitableT


	// gio.AsyncInitableT

	Linker.link(g_async_initable_init_async, \"g_async_initable_init_async\", LIBRARY.GIO);
	Linker.link(g_async_initable_init_finish, \"g_async_initable_init_finish\", LIBRARY.GIO);
	Linker.link(g_async_initable_new_async, \"g_async_initable_new_async\", LIBRARY.GIO);
	Linker.link(g_async_initable_new_finish, \"g_async_initable_new_finish\", LIBRARY.GIO);
	Linker.link(g_async_initable_new_valist_async, \"g_async_initable_new_valist_async\", LIBRARY.GIO);
	Linker.link(g_async_initable_newv_async, \"g_async_initable_newv_async\", LIBRARY.GIO);

	// gio.Socket

	Linker.link(g_socket_new, \"g_socket_new\", LIBRARY.GIO);
	Linker.link(g_socket_new_from_fd, \"g_socket_new_from_fd\", LIBRARY.GIO);
	Linker.link(g_socket_bind, \"g_socket_bind\", LIBRARY.GIO);
	Linker.link(g_socket_listen, \"g_socket_listen\", LIBRARY.GIO);
	Linker.link(g_socket_accept, \"g_socket_accept\", LIBRARY.GIO);
	Linker.link(g_socket_connect, \"g_socket_connect\", LIBRARY.GIO);
	Linker.link(g_socket_check_connect_result, \"g_socket_check_connect_result\", LIBRARY.GIO);
	Linker.link(g_socket_receive, \"g_socket_receive\", LIBRARY.GIO);
	Linker.link(g_socket_receive_from, \"g_socket_receive_from\", LIBRARY.GIO);
	Linker.link(g_socket_receive_message, \"g_socket_receive_message\", LIBRARY.GIO);
	Linker.link(g_socket_receive_with_blocking, \"g_socket_receive_with_blocking\", LIBRARY.GIO);
	Linker.link(g_socket_send, \"g_socket_send\", LIBRARY.GIO);
	Linker.link(g_socket_send_to, \"g_socket_send_to\", LIBRARY.GIO);
	Linker.link(g_socket_send_message, \"g_socket_send_message\", LIBRARY.GIO);
	Linker.link(g_socket_send_with_blocking, \"g_socket_send_with_blocking\", LIBRARY.GIO);
	Linker.link(g_socket_close, \"g_socket_close\", LIBRARY.GIO);
	Linker.link(g_socket_is_closed, \"g_socket_is_closed\", LIBRARY.GIO);
	Linker.link(g_socket_shutdown, \"g_socket_shutdown\", LIBRARY.GIO);
	Linker.link(g_socket_is_connected, \"g_socket_is_connected\", LIBRARY.GIO);
	Linker.link(g_socket_create_source, \"g_socket_create_source\", LIBRARY.GIO);
	Linker.link(g_socket_condition_check, \"g_socket_condition_check\", LIBRARY.GIO);
	Linker.link(g_socket_condition_wait, \"g_socket_condition_wait\", LIBRARY.GIO);
	Linker.link(g_socket_condition_timed_wait, \"g_socket_condition_timed_wait\", LIBRARY.GIO);
	Linker.link(g_socket_get_available_bytes, \"g_socket_get_available_bytes\", LIBRARY.GIO);
	Linker.link(g_socket_set_listen_backlog, \"g_socket_set_listen_backlog\", LIBRARY.GIO);
	Linker.link(g_socket_get_listen_backlog, \"g_socket_get_listen_backlog\", LIBRARY.GIO);
	Linker.link(g_socket_get_blocking, \"g_socket_get_blocking\", LIBRARY.GIO);
	Linker.link(g_socket_set_blocking, \"g_socket_set_blocking\", LIBRARY.GIO);
	Linker.link(g_socket_get_keepalive, \"g_socket_get_keepalive\", LIBRARY.GIO);
	Linker.link(g_socket_set_keepalive, \"g_socket_set_keepalive\", LIBRARY.GIO);
	Linker.link(g_socket_get_timeout, \"g_socket_get_timeout\", LIBRARY.GIO);
	Linker.link(g_socket_set_timeout, \"g_socket_set_timeout\", LIBRARY.GIO);
	Linker.link(g_socket_set_ttl, \"g_socket_set_ttl\", LIBRARY.GIO);
	Linker.link(g_socket_get_ttl, \"g_socket_get_ttl\", LIBRARY.GIO);
	Linker.link(g_socket_get_broadcast, \"g_socket_get_broadcast\", LIBRARY.GIO);
	Linker.link(g_socket_set_broadcast, \"g_socket_set_broadcast\", LIBRARY.GIO);
	Linker.link(g_socket_get_family, \"g_socket_get_family\", LIBRARY.GIO);
	Linker.link(g_socket_get_fd, \"g_socket_get_fd\", LIBRARY.GIO);
	Linker.link(g_socket_get_local_address, \"g_socket_get_local_address\", LIBRARY.GIO);
	Linker.link(g_socket_get_protocol, \"g_socket_get_protocol\", LIBRARY.GIO);
	Linker.link(g_socket_get_remote_address, \"g_socket_get_remote_address\", LIBRARY.GIO);
	Linker.link(g_socket_get_socket_type, \"g_socket_get_socket_type\", LIBRARY.GIO);
	Linker.link(g_socket_speaks_ipv4, \"g_socket_speaks_ipv4\", LIBRARY.GIO);
	Linker.link(g_socket_get_credentials, \"g_socket_get_credentials\", LIBRARY.GIO);
	Linker.link(g_socket_join_multicast_group, \"g_socket_join_multicast_group\", LIBRARY.GIO);
	Linker.link(g_socket_leave_multicast_group, \"g_socket_leave_multicast_group\", LIBRARY.GIO);
	Linker.link(g_socket_get_multicast_loopback, \"g_socket_get_multicast_loopback\", LIBRARY.GIO);
	Linker.link(g_socket_set_multicast_loopback, \"g_socket_set_multicast_loopback\", LIBRARY.GIO);
	Linker.link(g_socket_get_multicast_ttl, \"g_socket_get_multicast_ttl\", LIBRARY.GIO);
	Linker.link(g_socket_set_multicast_ttl, \"g_socket_set_multicast_ttl\", LIBRARY.GIO);

	// gio.InetAddress

	Linker.link(g_inet_address_new_from_string, \"g_inet_address_new_from_string\", LIBRARY.GIO);
	Linker.link(g_inet_address_new_from_bytes, \"g_inet_address_new_from_bytes\", LIBRARY.GIO);
	Linker.link(g_inet_address_new_any, \"g_inet_address_new_any\", LIBRARY.GIO);
	Linker.link(g_inet_address_new_loopback, \"g_inet_address_new_loopback\", LIBRARY.GIO);
	Linker.link(g_inet_address_equal, \"g_inet_address_equal\", LIBRARY.GIO);
	Linker.link(g_inet_address_to_bytes, \"g_inet_address_to_bytes\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_native_size, \"g_inet_address_get_native_size\", LIBRARY.GIO);
	Linker.link(g_inet_address_to_string, \"g_inet_address_to_string\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_family, \"g_inet_address_get_family\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_is_any, \"g_inet_address_get_is_any\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_is_loopback, \"g_inet_address_get_is_loopback\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_is_link_local, \"g_inet_address_get_is_link_local\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_is_site_local, \"g_inet_address_get_is_site_local\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_is_multicast, \"g_inet_address_get_is_multicast\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_is_mc_link_local, \"g_inet_address_get_is_mc_link_local\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_is_mc_node_local, \"g_inet_address_get_is_mc_node_local\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_is_mc_site_local, \"g_inet_address_get_is_mc_site_local\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_is_mc_org_local, \"g_inet_address_get_is_mc_org_local\", LIBRARY.GIO);
	Linker.link(g_inet_address_get_is_mc_global, \"g_inet_address_get_is_mc_global\", LIBRARY.GIO);

	// gio.InetAddressMask

	Linker.link(g_inet_address_mask_new, \"g_inet_address_mask_new\", LIBRARY.GIO);
	Linker.link(g_inet_address_mask_new_from_string, \"g_inet_address_mask_new_from_string\", LIBRARY.GIO);
	Linker.link(g_inet_address_mask_to_string, \"g_inet_address_mask_to_string\", LIBRARY.GIO);
	Linker.link(g_inet_address_mask_get_family, \"g_inet_address_mask_get_family\", LIBRARY.GIO);
	Linker.link(g_inet_address_mask_get_address, \"g_inet_address_mask_get_address\", LIBRARY.GIO);
	Linker.link(g_inet_address_mask_get_length, \"g_inet_address_mask_get_length\", LIBRARY.GIO);
	Linker.link(g_inet_address_mask_matches, \"g_inet_address_mask_matches\", LIBRARY.GIO);
	Linker.link(g_inet_address_mask_equal, \"g_inet_address_mask_equal\", LIBRARY.GIO);

	// gio.SocketAddress

	Linker.link(g_socket_address_new_from_native, \"g_socket_address_new_from_native\", LIBRARY.GIO);
	Linker.link(g_socket_address_get_family, \"g_socket_address_get_family\", LIBRARY.GIO);
	Linker.link(g_socket_address_to_native, \"g_socket_address_to_native\", LIBRARY.GIO);
	Linker.link(g_socket_address_get_native_size, \"g_socket_address_get_native_size\", LIBRARY.GIO);

	// gio.InetSocketAddress

	Linker.link(g_inet_socket_address_new, \"g_inet_socket_address_new\", LIBRARY.GIO);
	Linker.link(g_inet_socket_address_get_address, \"g_inet_socket_address_get_address\", LIBRARY.GIO);
	Linker.link(g_inet_socket_address_get_port, \"g_inet_socket_address_get_port\", LIBRARY.GIO);
	Linker.link(g_inet_socket_address_get_flowinfo, \"g_inet_socket_address_get_flowinfo\", LIBRARY.GIO);
	Linker.link(g_inet_socket_address_get_scope_id, \"g_inet_socket_address_get_scope_id\", LIBRARY.GIO);

	// gio.UnixSocketAddress

	Linker.link(g_unix_socket_address_new, \"g_unix_socket_address_new\", LIBRARY.GIO);
	Linker.link(g_unix_socket_address_new_abstract, \"g_unix_socket_address_new_abstract\", LIBRARY.GIO);
	Linker.link(g_unix_socket_address_new_with_type, \"g_unix_socket_address_new_with_type\", LIBRARY.GIO);
	Linker.link(g_unix_socket_address_get_is_abstract, \"g_unix_socket_address_get_is_abstract\", LIBRARY.GIO);
	Linker.link(g_unix_socket_address_get_address_type, \"g_unix_socket_address_get_address_type\", LIBRARY.GIO);
	Linker.link(g_unix_socket_address_get_path, \"g_unix_socket_address_get_path\", LIBRARY.GIO);
	Linker.link(g_unix_socket_address_get_path_len, \"g_unix_socket_address_get_path_len\", LIBRARY.GIO);
	Linker.link(g_unix_socket_address_abstract_names_supported, \"g_unix_socket_address_abstract_names_supported\", LIBRARY.GIO);

	// gio.SocketControlMessage

	Linker.link(g_socket_control_message_deserialize, \"g_socket_control_message_deserialize\", LIBRARY.GIO);
	Linker.link(g_socket_control_message_get_level, \"g_socket_control_message_get_level\", LIBRARY.GIO);
	Linker.link(g_socket_control_message_get_msg_type, \"g_socket_control_message_get_msg_type\", LIBRARY.GIO);
	Linker.link(g_socket_control_message_get_size, \"g_socket_control_message_get_size\", LIBRARY.GIO);
	Linker.link(g_socket_control_message_serialize, \"g_socket_control_message_serialize\", LIBRARY.GIO);

	// gio.UnixFDList

	Linker.link(g_unix_fd_list_new_from_array, \"g_unix_fd_list_new_from_array\", LIBRARY.GIO);
	Linker.link(g_unix_fd_list_new, \"g_unix_fd_list_new\", LIBRARY.GIO);
	Linker.link(g_unix_fd_list_get_length, \"g_unix_fd_list_get_length\", LIBRARY.GIO);
	Linker.link(g_unix_fd_list_get, \"g_unix_fd_list_get\", LIBRARY.GIO);
	Linker.link(g_unix_fd_list_peek_fds, \"g_unix_fd_list_peek_fds\", LIBRARY.GIO);
	Linker.link(g_unix_fd_list_steal_fds, \"g_unix_fd_list_steal_fds\", LIBRARY.GIO);
	Linker.link(g_unix_fd_list_append, \"g_unix_fd_list_append\", LIBRARY.GIO);

	// gio.UnixFDMessage

	Linker.link(g_unix_fd_message_new_with_fd_list, \"g_unix_fd_message_new_with_fd_list\", LIBRARY.GIO);
	Linker.link(g_unix_fd_message_new, \"g_unix_fd_message_new\", LIBRARY.GIO);
	Linker.link(g_unix_fd_message_get_fd_list, \"g_unix_fd_message_get_fd_list\", LIBRARY.GIO);
	Linker.link(g_unix_fd_message_append_fd, \"g_unix_fd_message_append_fd\", LIBRARY.GIO);
	Linker.link(g_unix_fd_message_steal_fds, \"g_unix_fd_message_steal_fds\", LIBRARY.GIO);

	// gio.Credentials

	Linker.link(g_credentials_new, \"g_credentials_new\", LIBRARY.GIO);
	Linker.link(g_credentials_to_string, \"g_credentials_to_string\", LIBRARY.GIO);
	Linker.link(g_credentials_get_native, \"g_credentials_get_native\", LIBRARY.GIO);
	Linker.link(g_credentials_set_native, \"g_credentials_set_native\", LIBRARY.GIO);
	Linker.link(g_credentials_is_same_user, \"g_credentials_is_same_user\", LIBRARY.GIO);
	Linker.link(g_credentials_get_unix_user, \"g_credentials_get_unix_user\", LIBRARY.GIO);
	Linker.link(g_credentials_set_unix_user, \"g_credentials_set_unix_user\", LIBRARY.GIO);

	// gio.UnixCredentialsMessage

	Linker.link(g_unix_credentials_message_new, \"g_unix_credentials_message_new\", LIBRARY.GIO);
	Linker.link(g_unix_credentials_message_new_with_credentials, \"g_unix_credentials_message_new_with_credentials\", LIBRARY.GIO);
	Linker.link(g_unix_credentials_message_get_credentials, \"g_unix_credentials_message_get_credentials\", LIBRARY.GIO);
	Linker.link(g_unix_credentials_message_is_supported, \"g_unix_credentials_message_is_supported\", LIBRARY.GIO);

	// gio.ProxyT


	// gio.ProxyT

	Linker.link(g_proxy_connect, \"g_proxy_connect\", LIBRARY.GIO);
	Linker.link(g_proxy_connect_async, \"g_proxy_connect_async\", LIBRARY.GIO);
	Linker.link(g_proxy_connect_finish, \"g_proxy_connect_finish\", LIBRARY.GIO);
	Linker.link(g_proxy_get_default_for_protocol, \"g_proxy_get_default_for_protocol\", LIBRARY.GIO);
	Linker.link(g_proxy_supports_hostname, \"g_proxy_supports_hostname\", LIBRARY.GIO);

	// gio.Proxy


	// gio.ProxyAddress

	Linker.link(g_proxy_address_get_destination_protocol, \"g_proxy_address_get_destination_protocol\", LIBRARY.GIO);
	Linker.link(g_proxy_address_get_destination_hostname, \"g_proxy_address_get_destination_hostname\", LIBRARY.GIO);
	Linker.link(g_proxy_address_get_destination_port, \"g_proxy_address_get_destination_port\", LIBRARY.GIO);
	Linker.link(g_proxy_address_get_password, \"g_proxy_address_get_password\", LIBRARY.GIO);
	Linker.link(g_proxy_address_get_protocol, \"g_proxy_address_get_protocol\", LIBRARY.GIO);
	Linker.link(g_proxy_address_get_username, \"g_proxy_address_get_username\", LIBRARY.GIO);
	Linker.link(g_proxy_address_get_uri, \"g_proxy_address_get_uri\", LIBRARY.GIO);
	Linker.link(g_proxy_address_new, \"g_proxy_address_new\", LIBRARY.GIO);

	// gio.SocketClient

	Linker.link(g_socket_client_new, \"g_socket_client_new\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect, \"g_socket_client_connect\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_async, \"g_socket_client_connect_async\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_finish, \"g_socket_client_connect_finish\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_to_host, \"g_socket_client_connect_to_host\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_to_host_async, \"g_socket_client_connect_to_host_async\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_to_host_finish, \"g_socket_client_connect_to_host_finish\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_to_service, \"g_socket_client_connect_to_service\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_to_service_async, \"g_socket_client_connect_to_service_async\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_to_service_finish, \"g_socket_client_connect_to_service_finish\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_to_uri, \"g_socket_client_connect_to_uri\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_to_uri_async, \"g_socket_client_connect_to_uri_async\", LIBRARY.GIO);
	Linker.link(g_socket_client_connect_to_uri_finish, \"g_socket_client_connect_to_uri_finish\", LIBRARY.GIO);
	Linker.link(g_socket_client_set_family, \"g_socket_client_set_family\", LIBRARY.GIO);
	Linker.link(g_socket_client_set_local_address, \"g_socket_client_set_local_address\", LIBRARY.GIO);
	Linker.link(g_socket_client_set_protocol, \"g_socket_client_set_protocol\", LIBRARY.GIO);
	Linker.link(g_socket_client_set_socket_type, \"g_socket_client_set_socket_type\", LIBRARY.GIO);
	Linker.link(g_socket_client_set_timeout, \"g_socket_client_set_timeout\", LIBRARY.GIO);
	Linker.link(g_socket_client_set_enable_proxy, \"g_socket_client_set_enable_proxy\", LIBRARY.GIO);
	Linker.link(g_socket_client_set_tls, \"g_socket_client_set_tls\", LIBRARY.GIO);
	Linker.link(g_socket_client_set_tls_validation_flags, \"g_socket_client_set_tls_validation_flags\", LIBRARY.GIO);
	Linker.link(g_socket_client_get_family, \"g_socket_client_get_family\", LIBRARY.GIO);
	Linker.link(g_socket_client_get_local_address, \"g_socket_client_get_local_address\", LIBRARY.GIO);
	Linker.link(g_socket_client_get_protocol, \"g_socket_client_get_protocol\", LIBRARY.GIO);
	Linker.link(g_socket_client_get_socket_type, \"g_socket_client_get_socket_type\", LIBRARY.GIO);
	Linker.link(g_socket_client_get_timeout, \"g_socket_client_get_timeout\", LIBRARY.GIO);
	Linker.link(g_socket_client_get_enable_proxy, \"g_socket_client_get_enable_proxy\", LIBRARY.GIO);
	Linker.link(g_socket_client_get_tls, \"g_socket_client_get_tls\", LIBRARY.GIO);
	Linker.link(g_socket_client_get_tls_validation_flags, \"g_socket_client_get_tls_validation_flags\", LIBRARY.GIO);
	Linker.link(g_socket_client_add_application_proxy, \"g_socket_client_add_application_proxy\", LIBRARY.GIO);

	// gio.SocketConnection

	Linker.link(g_socket_connection_connect, \"g_socket_connection_connect\", LIBRARY.GIO);
	Linker.link(g_socket_connection_connect_async, \"g_socket_connection_connect_async\", LIBRARY.GIO);
	Linker.link(g_socket_connection_connect_finish, \"g_socket_connection_connect_finish\", LIBRARY.GIO);
	Linker.link(g_socket_connection_is_connected, \"g_socket_connection_is_connected\", LIBRARY.GIO);
	Linker.link(g_socket_connection_get_local_address, \"g_socket_connection_get_local_address\", LIBRARY.GIO);
	Linker.link(g_socket_connection_get_remote_address, \"g_socket_connection_get_remote_address\", LIBRARY.GIO);
	Linker.link(g_socket_connection_get_socket, \"g_socket_connection_get_socket\", LIBRARY.GIO);
	Linker.link(g_socket_connection_factory_create_connection, \"g_socket_connection_factory_create_connection\", LIBRARY.GIO);
	Linker.link(g_socket_connection_factory_lookup_type, \"g_socket_connection_factory_lookup_type\", LIBRARY.GIO);
	Linker.link(g_socket_connection_factory_register_type, \"g_socket_connection_factory_register_type\", LIBRARY.GIO);

	// gio.UnixConnection

	Linker.link(g_unix_connection_receive_fd, \"g_unix_connection_receive_fd\", LIBRARY.GIO);
	Linker.link(g_unix_connection_send_fd, \"g_unix_connection_send_fd\", LIBRARY.GIO);
	Linker.link(g_unix_connection_receive_credentials, \"g_unix_connection_receive_credentials\", LIBRARY.GIO);
	Linker.link(g_unix_connection_receive_credentials_async, \"g_unix_connection_receive_credentials_async\", LIBRARY.GIO);
	Linker.link(g_unix_connection_receive_credentials_finish, \"g_unix_connection_receive_credentials_finish\", LIBRARY.GIO);
	Linker.link(g_unix_connection_send_credentials, \"g_unix_connection_send_credentials\", LIBRARY.GIO);
	Linker.link(g_unix_connection_send_credentials_async, \"g_unix_connection_send_credentials_async\", LIBRARY.GIO);
	Linker.link(g_unix_connection_send_credentials_finish, \"g_unix_connection_send_credentials_finish\", LIBRARY.GIO);

	// gio.TcpConnection

	Linker.link(g_tcp_connection_set_graceful_disconnect, \"g_tcp_connection_set_graceful_disconnect\", LIBRARY.GIO);
	Linker.link(g_tcp_connection_get_graceful_disconnect, \"g_tcp_connection_get_graceful_disconnect\", LIBRARY.GIO);

	// gio.SocketListener

	Linker.link(g_socket_listener_new, \"g_socket_listener_new\", LIBRARY.GIO);
	Linker.link(g_socket_listener_add_socket, \"g_socket_listener_add_socket\", LIBRARY.GIO);
	Linker.link(g_socket_listener_add_address, \"g_socket_listener_add_address\", LIBRARY.GIO);
	Linker.link(g_socket_listener_add_inet_port, \"g_socket_listener_add_inet_port\", LIBRARY.GIO);
	Linker.link(g_socket_listener_add_any_inet_port, \"g_socket_listener_add_any_inet_port\", LIBRARY.GIO);
	Linker.link(g_socket_listener_accept, \"g_socket_listener_accept\", LIBRARY.GIO);
	Linker.link(g_socket_listener_accept_async, \"g_socket_listener_accept_async\", LIBRARY.GIO);
	Linker.link(g_socket_listener_accept_finish, \"g_socket_listener_accept_finish\", LIBRARY.GIO);
	Linker.link(g_socket_listener_accept_socket, \"g_socket_listener_accept_socket\", LIBRARY.GIO);
	Linker.link(g_socket_listener_accept_socket_async, \"g_socket_listener_accept_socket_async\", LIBRARY.GIO);
	Linker.link(g_socket_listener_accept_socket_finish, \"g_socket_listener_accept_socket_finish\", LIBRARY.GIO);
	Linker.link(g_socket_listener_close, \"g_socket_listener_close\", LIBRARY.GIO);
	Linker.link(g_socket_listener_set_backlog, \"g_socket_listener_set_backlog\", LIBRARY.GIO);

	// gio.SocketService

	Linker.link(g_socket_service_new, \"g_socket_service_new\", LIBRARY.GIO);
	Linker.link(g_socket_service_start, \"g_socket_service_start\", LIBRARY.GIO);
	Linker.link(g_socket_service_stop, \"g_socket_service_stop\", LIBRARY.GIO);
	Linker.link(g_socket_service_is_active, \"g_socket_service_is_active\", LIBRARY.GIO);

	// gio.ThreadedSocketService

	Linker.link(g_threaded_socket_service_new, \"g_threaded_socket_service_new\", LIBRARY.GIO);

	// gio.NetworkMonitorT


	// gio.NetworkMonitorT

	Linker.link(g_network_monitor_get_default, \"g_network_monitor_get_default\", LIBRARY.GIO);
	Linker.link(g_network_monitor_get_network_available, \"g_network_monitor_get_network_available\", LIBRARY.GIO);
	Linker.link(g_network_monitor_can_reach, \"g_network_monitor_can_reach\", LIBRARY.GIO);
	Linker.link(g_network_monitor_can_reach_async, \"g_network_monitor_can_reach_async\", LIBRARY.GIO);
	Linker.link(g_network_monitor_can_reach_finish, \"g_network_monitor_can_reach_finish\", LIBRARY.GIO);

	// gio.NetworkMonitor


	// gio.TlsCertificate

	Linker.link(g_tls_certificate_new_from_pem, \"g_tls_certificate_new_from_pem\", LIBRARY.GIO);
	Linker.link(g_tls_certificate_new_from_file, \"g_tls_certificate_new_from_file\", LIBRARY.GIO);
	Linker.link(g_tls_certificate_new_from_files, \"g_tls_certificate_new_from_files\", LIBRARY.GIO);
	Linker.link(g_tls_certificate_list_new_from_file, \"g_tls_certificate_list_new_from_file\", LIBRARY.GIO);
	Linker.link(g_tls_certificate_get_issuer, \"g_tls_certificate_get_issuer\", LIBRARY.GIO);
	Linker.link(g_tls_certificate_verify, \"g_tls_certificate_verify\", LIBRARY.GIO);
	Linker.link(g_tls_certificate_is_same, \"g_tls_certificate_is_same\", LIBRARY.GIO);

	// gio.TlsConnection

	Linker.link(g_tls_connection_set_certificate, \"g_tls_connection_set_certificate\", LIBRARY.GIO);
	Linker.link(g_tls_connection_get_certificate, \"g_tls_connection_get_certificate\", LIBRARY.GIO);
	Linker.link(g_tls_connection_get_peer_certificate, \"g_tls_connection_get_peer_certificate\", LIBRARY.GIO);
	Linker.link(g_tls_connection_get_peer_certificate_errors, \"g_tls_connection_get_peer_certificate_errors\", LIBRARY.GIO);
	Linker.link(g_tls_connection_set_require_close_notify, \"g_tls_connection_set_require_close_notify\", LIBRARY.GIO);
	Linker.link(g_tls_connection_get_require_close_notify, \"g_tls_connection_get_require_close_notify\", LIBRARY.GIO);
	Linker.link(g_tls_connection_set_rehandshake_mode, \"g_tls_connection_set_rehandshake_mode\", LIBRARY.GIO);
	Linker.link(g_tls_connection_get_rehandshake_mode, \"g_tls_connection_get_rehandshake_mode\", LIBRARY.GIO);
	Linker.link(g_tls_connection_set_use_system_certdb, \"g_tls_connection_set_use_system_certdb\", LIBRARY.GIO);
	Linker.link(g_tls_connection_get_use_system_certdb, \"g_tls_connection_get_use_system_certdb\", LIBRARY.GIO);
	Linker.link(g_tls_connection_get_database, \"g_tls_connection_get_database\", LIBRARY.GIO);
	Linker.link(g_tls_connection_set_database, \"g_tls_connection_set_database\", LIBRARY.GIO);
	Linker.link(g_tls_connection_get_interaction, \"g_tls_connection_get_interaction\", LIBRARY.GIO);
	Linker.link(g_tls_connection_set_interaction, \"g_tls_connection_set_interaction\", LIBRARY.GIO);
	Linker.link(g_tls_connection_handshake, \"g_tls_connection_handshake\", LIBRARY.GIO);
	Linker.link(g_tls_connection_handshake_async, \"g_tls_connection_handshake_async\", LIBRARY.GIO);
	Linker.link(g_tls_connection_handshake_finish, \"g_tls_connection_handshake_finish\", LIBRARY.GIO);
	Linker.link(g_tls_connection_emit_accept_certificate, \"g_tls_connection_emit_accept_certificate\", LIBRARY.GIO);

	// gio.TlsClientConnection

	Linker.link(g_tls_client_connection_new, \"g_tls_client_connection_new\", LIBRARY.GIO);
	Linker.link(g_tls_client_connection_set_server_identity, \"g_tls_client_connection_set_server_identity\", LIBRARY.GIO);
	Linker.link(g_tls_client_connection_get_server_identity, \"g_tls_client_connection_get_server_identity\", LIBRARY.GIO);
	Linker.link(g_tls_client_connection_set_validation_flags, \"g_tls_client_connection_set_validation_flags\", LIBRARY.GIO);
	Linker.link(g_tls_client_connection_get_validation_flags, \"g_tls_client_connection_get_validation_flags\", LIBRARY.GIO);
	Linker.link(g_tls_client_connection_set_use_ssl3, \"g_tls_client_connection_set_use_ssl3\", LIBRARY.GIO);
	Linker.link(g_tls_client_connection_get_use_ssl3, \"g_tls_client_connection_get_use_ssl3\", LIBRARY.GIO);
	Linker.link(g_tls_client_connection_get_accepted_cas, \"g_tls_client_connection_get_accepted_cas\", LIBRARY.GIO);

	// gio.TlsServerConnection

	Linker.link(g_tls_server_connection_new, \"g_tls_server_connection_new\", LIBRARY.GIO);

	// gio.TlsBackend

	Linker.link(g_tls_backend_get_default, \"g_tls_backend_get_default\", LIBRARY.GIO);
	Linker.link(g_tls_backend_supports_tls, \"g_tls_backend_supports_tls\", LIBRARY.GIO);
	Linker.link(g_tls_backend_get_default_database, \"g_tls_backend_get_default_database\", LIBRARY.GIO);
	Linker.link(g_tls_backend_get_certificate_type, \"g_tls_backend_get_certificate_type\", LIBRARY.GIO);
	Linker.link(g_tls_backend_get_client_connection_type, \"g_tls_backend_get_client_connection_type\", LIBRARY.GIO);
	Linker.link(g_tls_backend_get_server_connection_type, \"g_tls_backend_get_server_connection_type\", LIBRARY.GIO);
	Linker.link(g_tls_backend_get_file_database_type, \"g_tls_backend_get_file_database_type\", LIBRARY.GIO);

	// gio.TlsDatabase

	Linker.link(g_tls_database_verify_chain, \"g_tls_database_verify_chain\", LIBRARY.GIO);
	Linker.link(g_tls_database_verify_chain_async, \"g_tls_database_verify_chain_async\", LIBRARY.GIO);
	Linker.link(g_tls_database_verify_chain_finish, \"g_tls_database_verify_chain_finish\", LIBRARY.GIO);
	Linker.link(g_tls_database_lookup_certificate_issuer, \"g_tls_database_lookup_certificate_issuer\", LIBRARY.GIO);
	Linker.link(g_tls_database_lookup_certificate_issuer_async, \"g_tls_database_lookup_certificate_issuer_async\", LIBRARY.GIO);
	Linker.link(g_tls_database_lookup_certificate_issuer_finish, \"g_tls_database_lookup_certificate_issuer_finish\", LIBRARY.GIO);
	Linker.link(g_tls_database_lookup_certificates_issued_by, \"g_tls_database_lookup_certificates_issued_by\", LIBRARY.GIO);
	Linker.link(g_tls_database_lookup_certificates_issued_by_async, \"g_tls_database_lookup_certificates_issued_by_async\", LIBRARY.GIO);
	Linker.link(g_tls_database_lookup_certificates_issued_by_finish, \"g_tls_database_lookup_certificates_issued_by_finish\", LIBRARY.GIO);
	Linker.link(g_tls_database_create_certificate_handle, \"g_tls_database_create_certificate_handle\", LIBRARY.GIO);
	Linker.link(g_tls_database_lookup_certificate_for_handle, \"g_tls_database_lookup_certificate_for_handle\", LIBRARY.GIO);
	Linker.link(g_tls_database_lookup_certificate_for_handle_async, \"g_tls_database_lookup_certificate_for_handle_async\", LIBRARY.GIO);
	Linker.link(g_tls_database_lookup_certificate_for_handle_finish, \"g_tls_database_lookup_certificate_for_handle_finish\", LIBRARY.GIO);

	// gio.TlsFileDatabase

	Linker.link(g_tls_file_database_new, \"g_tls_file_database_new\", LIBRARY.GIO);

	// gio.TlsInteraction

	Linker.link(g_tls_interaction_ask_password, \"g_tls_interaction_ask_password\", LIBRARY.GIO);
	Linker.link(g_tls_interaction_ask_password_async, \"g_tls_interaction_ask_password_async\", LIBRARY.GIO);
	Linker.link(g_tls_interaction_ask_password_finish, \"g_tls_interaction_ask_password_finish\", LIBRARY.GIO);
	Linker.link(g_tls_interaction_invoke_ask_password, \"g_tls_interaction_invoke_ask_password\", LIBRARY.GIO);

	// gio.TlsPassword

	Linker.link(g_tls_password_new, \"g_tls_password_new\", LIBRARY.GIO);
	Linker.link(g_tls_password_get_value, \"g_tls_password_get_value\", LIBRARY.GIO);
	Linker.link(g_tls_password_set_value, \"g_tls_password_set_value\", LIBRARY.GIO);
	Linker.link(g_tls_password_set_value_full, \"g_tls_password_set_value_full\", LIBRARY.GIO);
	Linker.link(g_tls_password_get_description, \"g_tls_password_get_description\", LIBRARY.GIO);
	Linker.link(g_tls_password_set_description, \"g_tls_password_set_description\", LIBRARY.GIO);
	Linker.link(g_tls_password_get_flags, \"g_tls_password_get_flags\", LIBRARY.GIO);
	Linker.link(g_tls_password_set_flags, \"g_tls_password_set_flags\", LIBRARY.GIO);
	Linker.link(g_tls_password_get_warning, \"g_tls_password_get_warning\", LIBRARY.GIO);
	Linker.link(g_tls_password_set_warning, \"g_tls_password_set_warning\", LIBRARY.GIO);

	// gio.Resolver

	Linker.link(g_resolver_get_default, \"g_resolver_get_default\", LIBRARY.GIO);
	Linker.link(g_resolver_set_default, \"g_resolver_set_default\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_by_name, \"g_resolver_lookup_by_name\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_by_name_async, \"g_resolver_lookup_by_name_async\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_by_name_finish, \"g_resolver_lookup_by_name_finish\", LIBRARY.GIO);
	Linker.link(g_resolver_free_addresses, \"g_resolver_free_addresses\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_by_address, \"g_resolver_lookup_by_address\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_by_address_async, \"g_resolver_lookup_by_address_async\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_by_address_finish, \"g_resolver_lookup_by_address_finish\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_service, \"g_resolver_lookup_service\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_service_async, \"g_resolver_lookup_service_async\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_service_finish, \"g_resolver_lookup_service_finish\", LIBRARY.GIO);
	Linker.link(g_resolver_free_targets, \"g_resolver_free_targets\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_records, \"g_resolver_lookup_records\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_records_async, \"g_resolver_lookup_records_async\", LIBRARY.GIO);
	Linker.link(g_resolver_lookup_records_finish, \"g_resolver_lookup_records_finish\", LIBRARY.GIO);

	// gio.ProxyResolverT


	// gio.ProxyResolverT

	Linker.link(g_proxy_resolver_get_default, \"g_proxy_resolver_get_default\", LIBRARY.GIO);
	Linker.link(g_proxy_resolver_is_supported, \"g_proxy_resolver_is_supported\", LIBRARY.GIO);
	Linker.link(g_proxy_resolver_lookup, \"g_proxy_resolver_lookup\", LIBRARY.GIO);
	Linker.link(g_proxy_resolver_lookup_async, \"g_proxy_resolver_lookup_async\", LIBRARY.GIO);
	Linker.link(g_proxy_resolver_lookup_finish, \"g_proxy_resolver_lookup_finish\", LIBRARY.GIO);

	// gio.ProxyResolver


	// gio.SocketConnectableT


	// gio.SocketConnectableT

	Linker.link(g_socket_connectable_enumerate, \"g_socket_connectable_enumerate\", LIBRARY.GIO);
	Linker.link(g_socket_connectable_proxy_enumerate, \"g_socket_connectable_proxy_enumerate\", LIBRARY.GIO);

	// gio.SocketConnectable


	// gio.SocketAddressEnumerator


	// gio.NetworkAddress

	Linker.link(g_network_address_new, \"g_network_address_new\", LIBRARY.GIO);
	Linker.link(g_network_address_get_hostname, \"g_network_address_get_hostname\", LIBRARY.GIO);
	Linker.link(g_network_address_get_port, \"g_network_address_get_port\", LIBRARY.GIO);
	Linker.link(g_network_address_get_scheme, \"g_network_address_get_scheme\", LIBRARY.GIO);
	Linker.link(g_network_address_parse, \"g_network_address_parse\", LIBRARY.GIO);
	Linker.link(g_network_address_parse_uri, \"g_network_address_parse_uri\", LIBRARY.GIO);

	// gio.NetworkService

	Linker.link(g_network_service_new, \"g_network_service_new\", LIBRARY.GIO);
	Linker.link(g_network_service_get_service, \"g_network_service_get_service\", LIBRARY.GIO);
	Linker.link(g_network_service_get_protocol, \"g_network_service_get_protocol\", LIBRARY.GIO);
	Linker.link(g_network_service_get_domain, \"g_network_service_get_domain\", LIBRARY.GIO);
	Linker.link(g_network_service_get_scheme, \"g_network_service_get_scheme\", LIBRARY.GIO);
	Linker.link(g_network_service_set_scheme, \"g_network_service_set_scheme\", LIBRARY.GIO);

	// gio.SrvTarget

	Linker.link(g_srv_target_new, \"g_srv_target_new\", LIBRARY.GIO);
	Linker.link(g_srv_target_copy, \"g_srv_target_copy\", LIBRARY.GIO);
	Linker.link(g_srv_target_free, \"g_srv_target_free\", LIBRARY.GIO);
	Linker.link(g_srv_target_get_hostname, \"g_srv_target_get_hostname\", LIBRARY.GIO);
	Linker.link(g_srv_target_get_port, \"g_srv_target_get_port\", LIBRARY.GIO);
	Linker.link(g_srv_target_get_priority, \"g_srv_target_get_priority\", LIBRARY.GIO);
	Linker.link(g_srv_target_get_weight, \"g_srv_target_get_weight\", LIBRARY.GIO);
	Linker.link(g_srv_target_list_sort, \"g_srv_target_list_sort\", LIBRARY.GIO);

	// gio.DBusUtilities

	Linker.link(g_dbus_generate_guid, \"g_dbus_generate_guid\", LIBRARY.GIO);
	Linker.link(g_dbus_is_guid, \"g_dbus_is_guid\", LIBRARY.GIO);
	Linker.link(g_dbus_is_name, \"g_dbus_is_name\", LIBRARY.GIO);
	Linker.link(g_dbus_is_unique_name, \"g_dbus_is_unique_name\", LIBRARY.GIO);
	Linker.link(g_dbus_is_member_name, \"g_dbus_is_member_name\", LIBRARY.GIO);
	Linker.link(g_dbus_is_interface_name, \"g_dbus_is_interface_name\", LIBRARY.GIO);
	Linker.link(g_dbus_gvalue_to_gvariant, \"g_dbus_gvalue_to_gvariant\", LIBRARY.GIO);
	Linker.link(g_dbus_gvariant_to_gvalue, \"g_dbus_gvariant_to_gvalue\", LIBRARY.GIO);
	Linker.link(g_dbus_is_address, \"g_dbus_is_address\", LIBRARY.GIO);
	Linker.link(g_dbus_is_supported_address, \"g_dbus_is_supported_address\", LIBRARY.GIO);
	Linker.link(g_dbus_address_get_stream, \"g_dbus_address_get_stream\", LIBRARY.GIO);
	Linker.link(g_dbus_address_get_stream_finish, \"g_dbus_address_get_stream_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_address_get_stream_sync, \"g_dbus_address_get_stream_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_address_get_for_bus_sync, \"g_dbus_address_get_for_bus_sync\", LIBRARY.GIO);

	// gio.DBusAnnotationInfo

	Linker.link(g_dbus_annotation_info_lookup, \"g_dbus_annotation_info_lookup\", LIBRARY.GIO);
	Linker.link(g_dbus_annotation_info_ref, \"g_dbus_annotation_info_ref\", LIBRARY.GIO);
	Linker.link(g_dbus_annotation_info_unref, \"g_dbus_annotation_info_unref\", LIBRARY.GIO);

	// gio.DBusArgInfo

	Linker.link(g_dbus_arg_info_ref, \"g_dbus_arg_info_ref\", LIBRARY.GIO);
	Linker.link(g_dbus_arg_info_unref, \"g_dbus_arg_info_unref\", LIBRARY.GIO);

	// gio.DBusMethodInfo

	Linker.link(g_dbus_method_info_ref, \"g_dbus_method_info_ref\", LIBRARY.GIO);
	Linker.link(g_dbus_method_info_unref, \"g_dbus_method_info_unref\", LIBRARY.GIO);

	// gio.DBusSignalInfo

	Linker.link(g_dbus_signal_info_ref, \"g_dbus_signal_info_ref\", LIBRARY.GIO);
	Linker.link(g_dbus_signal_info_unref, \"g_dbus_signal_info_unref\", LIBRARY.GIO);

	// gio.DBusPropertyInfo

	Linker.link(g_dbus_property_info_ref, \"g_dbus_property_info_ref\", LIBRARY.GIO);
	Linker.link(g_dbus_property_info_unref, \"g_dbus_property_info_unref\", LIBRARY.GIO);

	// gio.DBusInterfaceInfo

	Linker.link(g_dbus_interface_info_lookup_method, \"g_dbus_interface_info_lookup_method\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_info_lookup_signal, \"g_dbus_interface_info_lookup_signal\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_info_lookup_property, \"g_dbus_interface_info_lookup_property\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_info_cache_build, \"g_dbus_interface_info_cache_build\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_info_cache_release, \"g_dbus_interface_info_cache_release\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_info_generate_xml, \"g_dbus_interface_info_generate_xml\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_info_ref, \"g_dbus_interface_info_ref\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_info_unref, \"g_dbus_interface_info_unref\", LIBRARY.GIO);

	// gio.DBusNodeInfo

	Linker.link(g_dbus_node_info_new_for_xml, \"g_dbus_node_info_new_for_xml\", LIBRARY.GIO);
	Linker.link(g_dbus_node_info_lookup_interface, \"g_dbus_node_info_lookup_interface\", LIBRARY.GIO);
	Linker.link(g_dbus_node_info_generate_xml, \"g_dbus_node_info_generate_xml\", LIBRARY.GIO);
	Linker.link(g_dbus_node_info_ref, \"g_dbus_node_info_ref\", LIBRARY.GIO);
	Linker.link(g_dbus_node_info_unref, \"g_dbus_node_info_unref\", LIBRARY.GIO);

	// gio.DBusError

	Linker.link(g_dbus_error_is_remote_error, \"g_dbus_error_is_remote_error\", LIBRARY.GIO);
	Linker.link(g_dbus_error_get_remote_error, \"g_dbus_error_get_remote_error\", LIBRARY.GIO);
	Linker.link(g_dbus_error_strip_remote_error, \"g_dbus_error_strip_remote_error\", LIBRARY.GIO);
	Linker.link(g_dbus_error_register_error_domain, \"g_dbus_error_register_error_domain\", LIBRARY.GIO);
	Linker.link(g_dbus_error_register_error, \"g_dbus_error_register_error\", LIBRARY.GIO);
	Linker.link(g_dbus_error_unregister_error, \"g_dbus_error_unregister_error\", LIBRARY.GIO);
	Linker.link(g_dbus_error_new_for_dbus_error, \"g_dbus_error_new_for_dbus_error\", LIBRARY.GIO);
	Linker.link(g_dbus_error_set_dbus_error, \"g_dbus_error_set_dbus_error\", LIBRARY.GIO);
	Linker.link(g_dbus_error_set_dbus_error_valist, \"g_dbus_error_set_dbus_error_valist\", LIBRARY.GIO);
	Linker.link(g_dbus_error_encode_gerror, \"g_dbus_error_encode_gerror\", LIBRARY.GIO);

	// gio.DBusMessage

	Linker.link(g_dbus_message_new, \"g_dbus_message_new\", LIBRARY.GIO);
	Linker.link(g_dbus_message_new_signal, \"g_dbus_message_new_signal\", LIBRARY.GIO);
	Linker.link(g_dbus_message_new_method_call, \"g_dbus_message_new_method_call\", LIBRARY.GIO);
	Linker.link(g_dbus_message_new_method_reply, \"g_dbus_message_new_method_reply\", LIBRARY.GIO);
	Linker.link(g_dbus_message_new_method_error, \"g_dbus_message_new_method_error\", LIBRARY.GIO);
	Linker.link(g_dbus_message_new_method_error_valist, \"g_dbus_message_new_method_error_valist\", LIBRARY.GIO);
	Linker.link(g_dbus_message_new_method_error_literal, \"g_dbus_message_new_method_error_literal\", LIBRARY.GIO);
	Linker.link(g_dbus_message_print, \"g_dbus_message_print\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_locked, \"g_dbus_message_get_locked\", LIBRARY.GIO);
	Linker.link(g_dbus_message_lock, \"g_dbus_message_lock\", LIBRARY.GIO);
	Linker.link(g_dbus_message_copy, \"g_dbus_message_copy\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_byte_order, \"g_dbus_message_get_byte_order\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_byte_order, \"g_dbus_message_set_byte_order\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_message_type, \"g_dbus_message_get_message_type\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_message_type, \"g_dbus_message_set_message_type\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_serial, \"g_dbus_message_get_serial\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_serial, \"g_dbus_message_set_serial\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_flags, \"g_dbus_message_get_flags\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_flags, \"g_dbus_message_set_flags\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_body, \"g_dbus_message_get_body\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_body, \"g_dbus_message_set_body\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_unix_fd_list, \"g_dbus_message_get_unix_fd_list\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_unix_fd_list, \"g_dbus_message_set_unix_fd_list\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_num_unix_fds, \"g_dbus_message_get_num_unix_fds\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_num_unix_fds, \"g_dbus_message_set_num_unix_fds\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_header_fields, \"g_dbus_message_get_header_fields\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_header, \"g_dbus_message_get_header\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_header, \"g_dbus_message_set_header\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_destination, \"g_dbus_message_get_destination\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_destination, \"g_dbus_message_set_destination\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_error_name, \"g_dbus_message_get_error_name\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_error_name, \"g_dbus_message_set_error_name\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_interface, \"g_dbus_message_get_interface\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_interface, \"g_dbus_message_set_interface\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_member, \"g_dbus_message_get_member\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_member, \"g_dbus_message_set_member\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_path, \"g_dbus_message_get_path\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_path, \"g_dbus_message_set_path\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_reply_serial, \"g_dbus_message_get_reply_serial\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_reply_serial, \"g_dbus_message_set_reply_serial\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_sender, \"g_dbus_message_get_sender\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_sender, \"g_dbus_message_set_sender\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_signature, \"g_dbus_message_get_signature\", LIBRARY.GIO);
	Linker.link(g_dbus_message_set_signature, \"g_dbus_message_set_signature\", LIBRARY.GIO);
	Linker.link(g_dbus_message_get_arg0, \"g_dbus_message_get_arg0\", LIBRARY.GIO);
	Linker.link(g_dbus_message_to_blob, \"g_dbus_message_to_blob\", LIBRARY.GIO);
	Linker.link(g_dbus_message_bytes_needed, \"g_dbus_message_bytes_needed\", LIBRARY.GIO);
	Linker.link(g_dbus_message_new_from_blob, \"g_dbus_message_new_from_blob\", LIBRARY.GIO);
	Linker.link(g_dbus_message_to_gerror, \"g_dbus_message_to_gerror\", LIBRARY.GIO);

	// gio.DBusConnection

	Linker.link(g_bus_get, \"g_bus_get\", LIBRARY.GIO);
	Linker.link(g_bus_get_finish, \"g_bus_get_finish\", LIBRARY.GIO);
	Linker.link(g_bus_get_sync, \"g_bus_get_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_new, \"g_dbus_connection_new\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_new_finish, \"g_dbus_connection_new_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_new_sync, \"g_dbus_connection_new_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_new_for_address, \"g_dbus_connection_new_for_address\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_new_for_address_finish, \"g_dbus_connection_new_for_address_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_new_for_address_sync, \"g_dbus_connection_new_for_address_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_start_message_processing, \"g_dbus_connection_start_message_processing\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_close, \"g_dbus_connection_close\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_close_finish, \"g_dbus_connection_close_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_close_sync, \"g_dbus_connection_close_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_is_closed, \"g_dbus_connection_is_closed\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_flush, \"g_dbus_connection_flush\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_flush_finish, \"g_dbus_connection_flush_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_flush_sync, \"g_dbus_connection_flush_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_get_exit_on_close, \"g_dbus_connection_get_exit_on_close\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_set_exit_on_close, \"g_dbus_connection_set_exit_on_close\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_get_stream, \"g_dbus_connection_get_stream\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_get_guid, \"g_dbus_connection_get_guid\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_get_unique_name, \"g_dbus_connection_get_unique_name\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_get_capabilities, \"g_dbus_connection_get_capabilities\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_get_peer_credentials, \"g_dbus_connection_get_peer_credentials\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_get_last_serial, \"g_dbus_connection_get_last_serial\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_call, \"g_dbus_connection_call\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_call_finish, \"g_dbus_connection_call_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_call_sync, \"g_dbus_connection_call_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_call_with_unix_fd_list, \"g_dbus_connection_call_with_unix_fd_list\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_call_with_unix_fd_list_finish, \"g_dbus_connection_call_with_unix_fd_list_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_call_with_unix_fd_list_sync, \"g_dbus_connection_call_with_unix_fd_list_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_emit_signal, \"g_dbus_connection_emit_signal\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_signal_subscribe, \"g_dbus_connection_signal_subscribe\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_signal_unsubscribe, \"g_dbus_connection_signal_unsubscribe\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_send_message, \"g_dbus_connection_send_message\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_send_message_with_reply, \"g_dbus_connection_send_message_with_reply\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_send_message_with_reply_finish, \"g_dbus_connection_send_message_with_reply_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_send_message_with_reply_sync, \"g_dbus_connection_send_message_with_reply_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_add_filter, \"g_dbus_connection_add_filter\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_remove_filter, \"g_dbus_connection_remove_filter\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_register_object, \"g_dbus_connection_register_object\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_unregister_object, \"g_dbus_connection_unregister_object\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_register_subtree, \"g_dbus_connection_register_subtree\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_unregister_subtree, \"g_dbus_connection_unregister_subtree\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_export_action_group, \"g_dbus_connection_export_action_group\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_unexport_action_group, \"g_dbus_connection_unexport_action_group\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_export_menu_model, \"g_dbus_connection_export_menu_model\", LIBRARY.GIO);
	Linker.link(g_dbus_connection_unexport_menu_model, \"g_dbus_connection_unexport_menu_model\", LIBRARY.GIO);

	// gio.DBusMethodInvocation

	Linker.link(g_dbus_method_invocation_get_sender, \"g_dbus_method_invocation_get_sender\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_get_object_path, \"g_dbus_method_invocation_get_object_path\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_get_interface_name, \"g_dbus_method_invocation_get_interface_name\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_get_method_name, \"g_dbus_method_invocation_get_method_name\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_get_method_info, \"g_dbus_method_invocation_get_method_info\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_get_connection, \"g_dbus_method_invocation_get_connection\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_get_message, \"g_dbus_method_invocation_get_message\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_get_parameters, \"g_dbus_method_invocation_get_parameters\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_get_user_data, \"g_dbus_method_invocation_get_user_data\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_return_value, \"g_dbus_method_invocation_return_value\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_return_error, \"g_dbus_method_invocation_return_error\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_return_error_valist, \"g_dbus_method_invocation_return_error_valist\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_return_error_literal, \"g_dbus_method_invocation_return_error_literal\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_return_gerror, \"g_dbus_method_invocation_return_gerror\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_return_dbus_error, \"g_dbus_method_invocation_return_dbus_error\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_take_error, \"g_dbus_method_invocation_take_error\", LIBRARY.GIO);
	Linker.link(g_dbus_method_invocation_return_value_with_unix_fd_list, \"g_dbus_method_invocation_return_value_with_unix_fd_list\", LIBRARY.GIO);

	// gio.DBusServer

	Linker.link(g_dbus_server_new_sync, \"g_dbus_server_new_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_server_start, \"g_dbus_server_start\", LIBRARY.GIO);
	Linker.link(g_dbus_server_stop, \"g_dbus_server_stop\", LIBRARY.GIO);
	Linker.link(g_dbus_server_is_active, \"g_dbus_server_is_active\", LIBRARY.GIO);
	Linker.link(g_dbus_server_get_guid, \"g_dbus_server_get_guid\", LIBRARY.GIO);
	Linker.link(g_dbus_server_get_flags, \"g_dbus_server_get_flags\", LIBRARY.GIO);
	Linker.link(g_dbus_server_get_client_address, \"g_dbus_server_get_client_address\", LIBRARY.GIO);

	// gio.DBusAuthObserver

	Linker.link(g_dbus_auth_observer_new, \"g_dbus_auth_observer_new\", LIBRARY.GIO);
	Linker.link(g_dbus_auth_observer_authorize_authenticated_peer, \"g_dbus_auth_observer_authorize_authenticated_peer\", LIBRARY.GIO);
	Linker.link(g_dbus_auth_observer_allow_mechanism, \"g_dbus_auth_observer_allow_mechanism\", LIBRARY.GIO);

	// gio.DBusNames

	Linker.link(g_bus_own_name, \"g_bus_own_name\", LIBRARY.GIO);
	Linker.link(g_bus_own_name_on_connection, \"g_bus_own_name_on_connection\", LIBRARY.GIO);
	Linker.link(g_bus_unown_name, \"g_bus_unown_name\", LIBRARY.GIO);
	Linker.link(g_bus_own_name_with_closures, \"g_bus_own_name_with_closures\", LIBRARY.GIO);
	Linker.link(g_bus_own_name_on_connection_with_closures, \"g_bus_own_name_on_connection_with_closures\", LIBRARY.GIO);
	Linker.link(g_bus_watch_name, \"g_bus_watch_name\", LIBRARY.GIO);
	Linker.link(g_bus_watch_name_on_connection, \"g_bus_watch_name_on_connection\", LIBRARY.GIO);
	Linker.link(g_bus_unwatch_name, \"g_bus_unwatch_name\", LIBRARY.GIO);
	Linker.link(g_bus_watch_name_with_closures, \"g_bus_watch_name_with_closures\", LIBRARY.GIO);
	Linker.link(g_bus_watch_name_on_connection_with_closures, \"g_bus_watch_name_on_connection_with_closures\", LIBRARY.GIO);

	// gio.DBusInterfaceT


	// gio.DBusInterfaceT

	Linker.link(g_dbus_interface_get_info, \"g_dbus_interface_get_info\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_get_object, \"g_dbus_interface_get_object\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_dup_object, \"g_dbus_interface_dup_object\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_set_object, \"g_dbus_interface_set_object\", LIBRARY.GIO);

	// gio.DBusInterface


	// gio.DBusInterfaceSkeleton

	Linker.link(g_dbus_interface_skeleton_flush, \"g_dbus_interface_skeleton_flush\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_get_info, \"g_dbus_interface_skeleton_get_info\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_get_vtable, \"g_dbus_interface_skeleton_get_vtable\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_get_properties, \"g_dbus_interface_skeleton_get_properties\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_export, \"g_dbus_interface_skeleton_export\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_unexport, \"g_dbus_interface_skeleton_unexport\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_unexport_from_connection, \"g_dbus_interface_skeleton_unexport_from_connection\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_get_connection, \"g_dbus_interface_skeleton_get_connection\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_get_connections, \"g_dbus_interface_skeleton_get_connections\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_has_connection, \"g_dbus_interface_skeleton_has_connection\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_get_object_path, \"g_dbus_interface_skeleton_get_object_path\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_get_flags, \"g_dbus_interface_skeleton_get_flags\", LIBRARY.GIO);
	Linker.link(g_dbus_interface_skeleton_set_flags, \"g_dbus_interface_skeleton_set_flags\", LIBRARY.GIO);

	// gio.DBusProxy

	Linker.link(g_dbus_proxy_new, \"g_dbus_proxy_new\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_new_finish, \"g_dbus_proxy_new_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_new_sync, \"g_dbus_proxy_new_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_new_for_bus, \"g_dbus_proxy_new_for_bus\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_new_for_bus_finish, \"g_dbus_proxy_new_for_bus_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_new_for_bus_sync, \"g_dbus_proxy_new_for_bus_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_get_flags, \"g_dbus_proxy_get_flags\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_get_connection, \"g_dbus_proxy_get_connection\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_get_name, \"g_dbus_proxy_get_name\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_get_name_owner, \"g_dbus_proxy_get_name_owner\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_get_object_path, \"g_dbus_proxy_get_object_path\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_get_interface_name, \"g_dbus_proxy_get_interface_name\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_get_default_timeout, \"g_dbus_proxy_get_default_timeout\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_set_default_timeout, \"g_dbus_proxy_set_default_timeout\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_get_cached_property, \"g_dbus_proxy_get_cached_property\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_set_cached_property, \"g_dbus_proxy_set_cached_property\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_get_cached_property_names, \"g_dbus_proxy_get_cached_property_names\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_set_interface_info, \"g_dbus_proxy_set_interface_info\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_get_interface_info, \"g_dbus_proxy_get_interface_info\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_call, \"g_dbus_proxy_call\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_call_finish, \"g_dbus_proxy_call_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_call_sync, \"g_dbus_proxy_call_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_call_with_unix_fd_list, \"g_dbus_proxy_call_with_unix_fd_list\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_call_with_unix_fd_list_finish, \"g_dbus_proxy_call_with_unix_fd_list_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_proxy_call_with_unix_fd_list_sync, \"g_dbus_proxy_call_with_unix_fd_list_sync\", LIBRARY.GIO);

	// gio.DBusObjectT


	// gio.DBusObjectT

	Linker.link(g_dbus_object_get_object_path, \"g_dbus_object_get_object_path\", LIBRARY.GIO);
	Linker.link(g_dbus_object_get_interfaces, \"g_dbus_object_get_interfaces\", LIBRARY.GIO);
	Linker.link(g_dbus_object_get_interface, \"g_dbus_object_get_interface\", LIBRARY.GIO);

	// gio.DBusObject


	// gio.DBusObjectSkeleton

	Linker.link(g_dbus_object_skeleton_new, \"g_dbus_object_skeleton_new\", LIBRARY.GIO);
	Linker.link(g_dbus_object_skeleton_flush, \"g_dbus_object_skeleton_flush\", LIBRARY.GIO);
	Linker.link(g_dbus_object_skeleton_add_interface, \"g_dbus_object_skeleton_add_interface\", LIBRARY.GIO);
	Linker.link(g_dbus_object_skeleton_remove_interface, \"g_dbus_object_skeleton_remove_interface\", LIBRARY.GIO);
	Linker.link(g_dbus_object_skeleton_remove_interface_by_name, \"g_dbus_object_skeleton_remove_interface_by_name\", LIBRARY.GIO);
	Linker.link(g_dbus_object_skeleton_set_object_path, \"g_dbus_object_skeleton_set_object_path\", LIBRARY.GIO);

	// gio.DBusObjectProxy

	Linker.link(g_dbus_object_proxy_new, \"g_dbus_object_proxy_new\", LIBRARY.GIO);
	Linker.link(g_dbus_object_proxy_get_connection, \"g_dbus_object_proxy_get_connection\", LIBRARY.GIO);

	// gio.DBusObjectManagerT


	// gio.DBusObjectManagerT

	Linker.link(g_dbus_object_manager_get_object_path, \"g_dbus_object_manager_get_object_path\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_get_objects, \"g_dbus_object_manager_get_objects\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_get_object, \"g_dbus_object_manager_get_object\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_get_interface, \"g_dbus_object_manager_get_interface\", LIBRARY.GIO);

	// gio.DBusObjectManagerServer

	Linker.link(g_dbus_object_manager_server_new, \"g_dbus_object_manager_server_new\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_server_get_connection, \"g_dbus_object_manager_server_get_connection\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_server_set_connection, \"g_dbus_object_manager_server_set_connection\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_server_export, \"g_dbus_object_manager_server_export\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_server_export_uniquely, \"g_dbus_object_manager_server_export_uniquely\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_server_is_exported, \"g_dbus_object_manager_server_is_exported\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_server_unexport, \"g_dbus_object_manager_server_unexport\", LIBRARY.GIO);

	// gio.DBusObjectManagerClient

	Linker.link(g_dbus_object_manager_client_new, \"g_dbus_object_manager_client_new\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_client_new_finish, \"g_dbus_object_manager_client_new_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_client_new_sync, \"g_dbus_object_manager_client_new_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_client_new_for_bus, \"g_dbus_object_manager_client_new_for_bus\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_client_new_for_bus_finish, \"g_dbus_object_manager_client_new_for_bus_finish\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_client_new_for_bus_sync, \"g_dbus_object_manager_client_new_for_bus_sync\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_client_get_connection, \"g_dbus_object_manager_client_get_connection\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_client_get_flags, \"g_dbus_object_manager_client_get_flags\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_client_get_name, \"g_dbus_object_manager_client_get_name\", LIBRARY.GIO);
	Linker.link(g_dbus_object_manager_client_get_name_owner, \"g_dbus_object_manager_client_get_name_owner\", LIBRARY.GIO);

	// gio.Settings

	Linker.link(g_settings_new, \"g_settings_new\", LIBRARY.GIO);
	Linker.link(g_settings_new_with_path, \"g_settings_new_with_path\", LIBRARY.GIO);
	Linker.link(g_settings_new_with_backend, \"g_settings_new_with_backend\", LIBRARY.GIO);
	Linker.link(g_settings_new_with_backend_and_path, \"g_settings_new_with_backend_and_path\", LIBRARY.GIO);
	Linker.link(g_settings_new_full, \"g_settings_new_full\", LIBRARY.GIO);
	Linker.link(g_settings_sync, \"g_settings_sync\", LIBRARY.GIO);
	Linker.link(g_settings_get_value, \"g_settings_get_value\", LIBRARY.GIO);
	Linker.link(g_settings_set_value, \"g_settings_set_value\", LIBRARY.GIO);
	Linker.link(g_settings_is_writable, \"g_settings_is_writable\", LIBRARY.GIO);
	Linker.link(g_settings_delay, \"g_settings_delay\", LIBRARY.GIO);
	Linker.link(g_settings_apply, \"g_settings_apply\", LIBRARY.GIO);
	Linker.link(g_settings_revert, \"g_settings_revert\", LIBRARY.GIO);
	Linker.link(g_settings_get_has_unapplied, \"g_settings_get_has_unapplied\", LIBRARY.GIO);
	Linker.link(g_settings_get_child, \"g_settings_get_child\", LIBRARY.GIO);
	Linker.link(g_settings_reset, \"g_settings_reset\", LIBRARY.GIO);
	Linker.link(g_settings_list_schemas, \"g_settings_list_schemas\", LIBRARY.GIO);
	Linker.link(g_settings_list_relocatable_schemas, \"g_settings_list_relocatable_schemas\", LIBRARY.GIO);
	Linker.link(g_settings_list_keys, \"g_settings_list_keys\", LIBRARY.GIO);
	Linker.link(g_settings_list_children, \"g_settings_list_children\", LIBRARY.GIO);
	Linker.link(g_settings_get_range, \"g_settings_get_range\", LIBRARY.GIO);
	Linker.link(g_settings_range_check, \"g_settings_range_check\", LIBRARY.GIO);
	Linker.link(g_settings_get, \"g_settings_get\", LIBRARY.GIO);
	Linker.link(g_settings_set, \"g_settings_set\", LIBRARY.GIO);
	Linker.link(g_settings_get_boolean, \"g_settings_get_boolean\", LIBRARY.GIO);
	Linker.link(g_settings_set_boolean, \"g_settings_set_boolean\", LIBRARY.GIO);
	Linker.link(g_settings_get_int, \"g_settings_get_int\", LIBRARY.GIO);
	Linker.link(g_settings_set_int, \"g_settings_set_int\", LIBRARY.GIO);
	Linker.link(g_settings_get_uint, \"g_settings_get_uint\", LIBRARY.GIO);
	Linker.link(g_settings_set_uint, \"g_settings_set_uint\", LIBRARY.GIO);
	Linker.link(g_settings_get_double, \"g_settings_get_double\", LIBRARY.GIO);
	Linker.link(g_settings_set_double, \"g_settings_set_double\", LIBRARY.GIO);
	Linker.link(g_settings_get_string, \"g_settings_get_string\", LIBRARY.GIO);
	Linker.link(g_settings_set_string, \"g_settings_set_string\", LIBRARY.GIO);
	Linker.link(g_settings_get_strv, \"g_settings_get_strv\", LIBRARY.GIO);
	Linker.link(g_settings_set_strv, \"g_settings_set_strv\", LIBRARY.GIO);
	Linker.link(g_settings_get_enum, \"g_settings_get_enum\", LIBRARY.GIO);
	Linker.link(g_settings_set_enum, \"g_settings_set_enum\", LIBRARY.GIO);
	Linker.link(g_settings_get_flags, \"g_settings_get_flags\", LIBRARY.GIO);
	Linker.link(g_settings_set_flags, \"g_settings_set_flags\", LIBRARY.GIO);
	Linker.link(g_settings_get_mapped, \"g_settings_get_mapped\", LIBRARY.GIO);
	Linker.link(g_settings_bind, \"g_settings_bind\", LIBRARY.GIO);
	Linker.link(g_settings_bind_with_mapping, \"g_settings_bind_with_mapping\", LIBRARY.GIO);
	Linker.link(g_settings_bind_writable, \"g_settings_bind_writable\", LIBRARY.GIO);
	Linker.link(g_settings_unbind, \"g_settings_unbind\", LIBRARY.GIO);
	Linker.link(g_settings_create_action, \"g_settings_create_action\", LIBRARY.GIO);

	// gio.SettingsBackend

	Linker.link(g_settings_backend_get_default, \"g_settings_backend_get_default\", LIBRARY.GIO);
	Linker.link(g_settings_backend_changed, \"g_settings_backend_changed\", LIBRARY.GIO);
	Linker.link(g_settings_backend_path_changed, \"g_settings_backend_path_changed\", LIBRARY.GIO);
	Linker.link(g_settings_backend_keys_changed, \"g_settings_backend_keys_changed\", LIBRARY.GIO);
	Linker.link(g_settings_backend_path_writable_changed, \"g_settings_backend_path_writable_changed\", LIBRARY.GIO);
	Linker.link(g_settings_backend_writable_changed, \"g_settings_backend_writable_changed\", LIBRARY.GIO);
	Linker.link(g_settings_backend_changed_tree, \"g_settings_backend_changed_tree\", LIBRARY.GIO);
	Linker.link(g_settings_backend_flatten_tree, \"g_settings_backend_flatten_tree\", LIBRARY.GIO);
	Linker.link(g_keyfile_settings_backend_new, \"g_keyfile_settings_backend_new\", LIBRARY.GIO);
	Linker.link(g_memory_settings_backend_new, \"g_memory_settings_backend_new\", LIBRARY.GIO);
	Linker.link(g_null_settings_backend_new, \"g_null_settings_backend_new\", LIBRARY.GIO);

	// gio.SettingsSchema

	Linker.link(g_settings_schema_ref, \"g_settings_schema_ref\", LIBRARY.GIO);
	Linker.link(g_settings_schema_unref, \"g_settings_schema_unref\", LIBRARY.GIO);
	Linker.link(g_settings_schema_get_id, \"g_settings_schema_get_id\", LIBRARY.GIO);
	Linker.link(g_settings_schema_get_path, \"g_settings_schema_get_path\", LIBRARY.GIO);

	// gio.SettingsSchemaSource

	Linker.link(g_settings_schema_source_get_default, \"g_settings_schema_source_get_default\", LIBRARY.GIO);
	Linker.link(g_settings_schema_source_ref, \"g_settings_schema_source_ref\", LIBRARY.GIO);
	Linker.link(g_settings_schema_source_unref, \"g_settings_schema_source_unref\", LIBRARY.GIO);
	Linker.link(g_settings_schema_source_new_from_directory, \"g_settings_schema_source_new_from_directory\", LIBRARY.GIO);
	Linker.link(g_settings_schema_source_lookup, \"g_settings_schema_source_lookup\", LIBRARY.GIO);

	// gio.Resource

	Linker.link(g_resource_load, \"g_resource_load\", LIBRARY.GIO);
	Linker.link(g_resource_new_from_data, \"g_resource_new_from_data\", LIBRARY.GIO);
	Linker.link(g_resource_ref, \"g_resource_ref\", LIBRARY.GIO);
	Linker.link(g_resource_unref, \"g_resource_unref\", LIBRARY.GIO);
	Linker.link(g_resource_lookup_data, \"g_resource_lookup_data\", LIBRARY.GIO);
	Linker.link(g_resource_open_stream, \"g_resource_open_stream\", LIBRARY.GIO);
	Linker.link(g_resource_enumerate_children, \"g_resource_enumerate_children\", LIBRARY.GIO);
	Linker.link(g_resource_get_info, \"g_resource_get_info\", LIBRARY.GIO);
	Linker.link(g_resources_register, \"g_resources_register\", LIBRARY.GIO);
	Linker.link(g_resources_unregister, \"g_resources_unregister\", LIBRARY.GIO);
	Linker.link(g_resources_lookup_data, \"g_resources_lookup_data\", LIBRARY.GIO);
	Linker.link(g_resources_open_stream, \"g_resources_open_stream\", LIBRARY.GIO);
	Linker.link(g_resources_enumerate_children, \"g_resources_enumerate_children\", LIBRARY.GIO);
	Linker.link(g_resources_get_info, \"g_resources_get_info\", LIBRARY.GIO);

	// gio.Permission

	Linker.link(g_permission_get_allowed, \"g_permission_get_allowed\", LIBRARY.GIO);
	Linker.link(g_permission_get_can_acquire, \"g_permission_get_can_acquire\", LIBRARY.GIO);
	Linker.link(g_permission_get_can_release, \"g_permission_get_can_release\", LIBRARY.GIO);
	Linker.link(g_permission_acquire, \"g_permission_acquire\", LIBRARY.GIO);
	Linker.link(g_permission_acquire_async, \"g_permission_acquire_async\", LIBRARY.GIO);
	Linker.link(g_permission_acquire_finish, \"g_permission_acquire_finish\", LIBRARY.GIO);
	Linker.link(g_permission_release, \"g_permission_release\", LIBRARY.GIO);
	Linker.link(g_permission_release_async, \"g_permission_release_async\", LIBRARY.GIO);
	Linker.link(g_permission_release_finish, \"g_permission_release_finish\", LIBRARY.GIO);
	Linker.link(g_permission_impl_update, \"g_permission_impl_update\", LIBRARY.GIO);

	// gio.SimplePermission

	Linker.link(g_simple_permission_new, \"g_simple_permission_new\", LIBRARY.GIO);

	// gio.Application

	Linker.link(g_application_id_is_valid, \"g_application_id_is_valid\", LIBRARY.GIO);
	Linker.link(g_application_new, \"g_application_new\", LIBRARY.GIO);
	Linker.link(g_application_get_application_id, \"g_application_get_application_id\", LIBRARY.GIO);
	Linker.link(g_application_set_application_id, \"g_application_set_application_id\", LIBRARY.GIO);
	Linker.link(g_application_get_inactivity_timeout, \"g_application_get_inactivity_timeout\", LIBRARY.GIO);
	Linker.link(g_application_set_inactivity_timeout, \"g_application_set_inactivity_timeout\", LIBRARY.GIO);
	Linker.link(g_application_get_flags, \"g_application_get_flags\", LIBRARY.GIO);
	Linker.link(g_application_set_flags, \"g_application_set_flags\", LIBRARY.GIO);
	Linker.link(g_application_get_dbus_connection, \"g_application_get_dbus_connection\", LIBRARY.GIO);
	Linker.link(g_application_get_dbus_object_path, \"g_application_get_dbus_object_path\", LIBRARY.GIO);
	Linker.link(g_application_set_action_group, \"g_application_set_action_group\", LIBRARY.GIO);
	Linker.link(g_application_get_is_registered, \"g_application_get_is_registered\", LIBRARY.GIO);
	Linker.link(g_application_get_is_remote, \"g_application_get_is_remote\", LIBRARY.GIO);
	Linker.link(g_application_register, \"g_application_register\", LIBRARY.GIO);
	Linker.link(g_application_hold, \"g_application_hold\", LIBRARY.GIO);
	Linker.link(g_application_release, \"g_application_release\", LIBRARY.GIO);
	Linker.link(g_application_quit, \"g_application_quit\", LIBRARY.GIO);
	Linker.link(g_application_activate, \"g_application_activate\", LIBRARY.GIO);
	Linker.link(g_application_open, \"g_application_open\", LIBRARY.GIO);
	Linker.link(g_application_run, \"g_application_run\", LIBRARY.GIO);
	Linker.link(g_application_set_default, \"g_application_set_default\", LIBRARY.GIO);
	Linker.link(g_application_get_default, \"g_application_get_default\", LIBRARY.GIO);

	// gio.ApplicationCommandLine

	Linker.link(g_application_command_line_get_arguments, \"g_application_command_line_get_arguments\", LIBRARY.GIO);
	Linker.link(g_application_command_line_get_cwd, \"g_application_command_line_get_cwd\", LIBRARY.GIO);
	Linker.link(g_application_command_line_get_environ, \"g_application_command_line_get_environ\", LIBRARY.GIO);
	Linker.link(g_application_command_line_getenv, \"g_application_command_line_getenv\", LIBRARY.GIO);
	Linker.link(g_application_command_line_get_is_remote, \"g_application_command_line_get_is_remote\", LIBRARY.GIO);
	Linker.link(g_application_command_line_get_platform_data, \"g_application_command_line_get_platform_data\", LIBRARY.GIO);
	Linker.link(g_application_command_line_set_exit_status, \"g_application_command_line_set_exit_status\", LIBRARY.GIO);
	Linker.link(g_application_command_line_get_exit_status, \"g_application_command_line_get_exit_status\", LIBRARY.GIO);
	Linker.link(g_application_command_line_print, \"g_application_command_line_print\", LIBRARY.GIO);
	Linker.link(g_application_command_line_printerr, \"g_application_command_line_printerr\", LIBRARY.GIO);

	// gio.ActionGroupT


	// gio.ActionGroupT

	Linker.link(g_action_group_list_actions, \"g_action_group_list_actions\", LIBRARY.GIO);
	Linker.link(g_action_group_query_action, \"g_action_group_query_action\", LIBRARY.GIO);
	Linker.link(g_action_group_has_action, \"g_action_group_has_action\", LIBRARY.GIO);
	Linker.link(g_action_group_get_action_enabled, \"g_action_group_get_action_enabled\", LIBRARY.GIO);
	Linker.link(g_action_group_get_action_parameter_type, \"g_action_group_get_action_parameter_type\", LIBRARY.GIO);
	Linker.link(g_action_group_get_action_state_type, \"g_action_group_get_action_state_type\", LIBRARY.GIO);
	Linker.link(g_action_group_get_action_state_hint, \"g_action_group_get_action_state_hint\", LIBRARY.GIO);
	Linker.link(g_action_group_get_action_state, \"g_action_group_get_action_state\", LIBRARY.GIO);
	Linker.link(g_action_group_change_action_state, \"g_action_group_change_action_state\", LIBRARY.GIO);
	Linker.link(g_action_group_activate_action, \"g_action_group_activate_action\", LIBRARY.GIO);
	Linker.link(g_action_group_action_added, \"g_action_group_action_added\", LIBRARY.GIO);
	Linker.link(g_action_group_action_removed, \"g_action_group_action_removed\", LIBRARY.GIO);
	Linker.link(g_action_group_action_enabled_changed, \"g_action_group_action_enabled_changed\", LIBRARY.GIO);
	Linker.link(g_action_group_action_state_changed, \"g_action_group_action_state_changed\", LIBRARY.GIO);

	// gio.ActionMapT


	// gio.ActionMapT

	Linker.link(g_action_map_lookup_action, \"g_action_map_lookup_action\", LIBRARY.GIO);
	Linker.link(g_action_map_add_action_entries, \"g_action_map_add_action_entries\", LIBRARY.GIO);
	Linker.link(g_action_map_add_action, \"g_action_map_add_action\", LIBRARY.GIO);
	Linker.link(g_action_map_remove_action, \"g_action_map_remove_action\", LIBRARY.GIO);

	// gio.SimpleActionGroup

	Linker.link(g_simple_action_group_new, \"g_simple_action_group_new\", LIBRARY.GIO);
	Linker.link(g_simple_action_group_lookup, \"g_simple_action_group_lookup\", LIBRARY.GIO);
	Linker.link(g_simple_action_group_insert, \"g_simple_action_group_insert\", LIBRARY.GIO);
	Linker.link(g_simple_action_group_remove, \"g_simple_action_group_remove\", LIBRARY.GIO);
	Linker.link(g_simple_action_group_add_entries, \"g_simple_action_group_add_entries\", LIBRARY.GIO);

	// gio.ActionT


	// gio.ActionT

	Linker.link(g_action_get_name, \"g_action_get_name\", LIBRARY.GIO);
	Linker.link(g_action_get_parameter_type, \"g_action_get_parameter_type\", LIBRARY.GIO);
	Linker.link(g_action_get_state_type, \"g_action_get_state_type\", LIBRARY.GIO);
	Linker.link(g_action_get_state_hint, \"g_action_get_state_hint\", LIBRARY.GIO);
	Linker.link(g_action_get_enabled, \"g_action_get_enabled\", LIBRARY.GIO);
	Linker.link(g_action_get_state, \"g_action_get_state\", LIBRARY.GIO);
	Linker.link(g_action_change_state, \"g_action_change_state\", LIBRARY.GIO);
	Linker.link(g_action_activate, \"g_action_activate\", LIBRARY.GIO);

	// gio.Action


	// gio.SimpleAction

	Linker.link(g_simple_action_new, \"g_simple_action_new\", LIBRARY.GIO);
	Linker.link(g_simple_action_new_stateful, \"g_simple_action_new_stateful\", LIBRARY.GIO);
	Linker.link(g_simple_action_set_enabled, \"g_simple_action_set_enabled\", LIBRARY.GIO);
	Linker.link(g_simple_action_set_state, \"g_simple_action_set_state\", LIBRARY.GIO);

	// gio.RemoteActionGroupT


	// gio.RemoteActionGroupT

	Linker.link(g_remote_action_group_activate_action_full, \"g_remote_action_group_activate_action_full\", LIBRARY.GIO);
	Linker.link(g_remote_action_group_change_action_state_full, \"g_remote_action_group_change_action_state_full\", LIBRARY.GIO);

	// gio.DBusActionGroup

	Linker.link(g_dbus_action_group_get, \"g_dbus_action_group_get\", LIBRARY.GIO);

	// gio.MenuModel

	Linker.link(g_menu_model_is_mutable, \"g_menu_model_is_mutable\", LIBRARY.GIO);
	Linker.link(g_menu_model_get_n_items, \"g_menu_model_get_n_items\", LIBRARY.GIO);
	Linker.link(g_menu_model_get_item_attribute_value, \"g_menu_model_get_item_attribute_value\", LIBRARY.GIO);
	Linker.link(g_menu_model_get_item_attribute, \"g_menu_model_get_item_attribute\", LIBRARY.GIO);
	Linker.link(g_menu_model_get_item_link, \"g_menu_model_get_item_link\", LIBRARY.GIO);
	Linker.link(g_menu_model_iterate_item_attributes, \"g_menu_model_iterate_item_attributes\", LIBRARY.GIO);
	Linker.link(g_menu_model_iterate_item_links, \"g_menu_model_iterate_item_links\", LIBRARY.GIO);
	Linker.link(g_menu_model_items_changed, \"g_menu_model_items_changed\", LIBRARY.GIO);

	// gio.MenuAttributeIter

	Linker.link(g_menu_attribute_iter_get_next, \"g_menu_attribute_iter_get_next\", LIBRARY.GIO);
	Linker.link(g_menu_attribute_iter_get_name, \"g_menu_attribute_iter_get_name\", LIBRARY.GIO);
	Linker.link(g_menu_attribute_iter_get_value, \"g_menu_attribute_iter_get_value\", LIBRARY.GIO);
	Linker.link(g_menu_attribute_iter_next, \"g_menu_attribute_iter_next\", LIBRARY.GIO);

	// gio.MenuLinkIter

	Linker.link(g_menu_link_iter_get_name, \"g_menu_link_iter_get_name\", LIBRARY.GIO);
	Linker.link(g_menu_link_iter_get_next, \"g_menu_link_iter_get_next\", LIBRARY.GIO);
	Linker.link(g_menu_link_iter_get_value, \"g_menu_link_iter_get_value\", LIBRARY.GIO);
	Linker.link(g_menu_link_iter_next, \"g_menu_link_iter_next\", LIBRARY.GIO);

	// gio.Menu

	Linker.link(g_menu_new, \"g_menu_new\", LIBRARY.GIO);
	Linker.link(g_menu_freeze, \"g_menu_freeze\", LIBRARY.GIO);
	Linker.link(g_menu_insert, \"g_menu_insert\", LIBRARY.GIO);
	Linker.link(g_menu_prepend, \"g_menu_prepend\", LIBRARY.GIO);
	Linker.link(g_menu_append, \"g_menu_append\", LIBRARY.GIO);
	Linker.link(g_menu_insert_item, \"g_menu_insert_item\", LIBRARY.GIO);
	Linker.link(g_menu_append_item, \"g_menu_append_item\", LIBRARY.GIO);
	Linker.link(g_menu_prepend_item, \"g_menu_prepend_item\", LIBRARY.GIO);
	Linker.link(g_menu_insert_section, \"g_menu_insert_section\", LIBRARY.GIO);
	Linker.link(g_menu_prepend_section, \"g_menu_prepend_section\", LIBRARY.GIO);
	Linker.link(g_menu_append_section, \"g_menu_append_section\", LIBRARY.GIO);
	Linker.link(g_menu_append_submenu, \"g_menu_append_submenu\", LIBRARY.GIO);
	Linker.link(g_menu_insert_submenu, \"g_menu_insert_submenu\", LIBRARY.GIO);
	Linker.link(g_menu_prepend_submenu, \"g_menu_prepend_submenu\", LIBRARY.GIO);
	Linker.link(g_menu_remove, \"g_menu_remove\", LIBRARY.GIO);

	// gio.MenuItem

	Linker.link(g_menu_item_new, \"g_menu_item_new\", LIBRARY.GIO);
	Linker.link(g_menu_item_new_section, \"g_menu_item_new_section\", LIBRARY.GIO);
	Linker.link(g_menu_item_new_submenu, \"g_menu_item_new_submenu\", LIBRARY.GIO);
	Linker.link(g_menu_item_new_from_model, \"g_menu_item_new_from_model\", LIBRARY.GIO);
	Linker.link(g_menu_item_set_label, \"g_menu_item_set_label\", LIBRARY.GIO);
	Linker.link(g_menu_item_set_action_and_target_value, \"g_menu_item_set_action_and_target_value\", LIBRARY.GIO);
	Linker.link(g_menu_item_set_action_and_target, \"g_menu_item_set_action_and_target\", LIBRARY.GIO);
	Linker.link(g_menu_item_set_detailed_action, \"g_menu_item_set_detailed_action\", LIBRARY.GIO);
	Linker.link(g_menu_item_set_section, \"g_menu_item_set_section\", LIBRARY.GIO);
	Linker.link(g_menu_item_set_submenu, \"g_menu_item_set_submenu\", LIBRARY.GIO);
	Linker.link(g_menu_item_get_attribute_value, \"g_menu_item_get_attribute_value\", LIBRARY.GIO);
	Linker.link(g_menu_item_get_attribute, \"g_menu_item_get_attribute\", LIBRARY.GIO);
	Linker.link(g_menu_item_get_link, \"g_menu_item_get_link\", LIBRARY.GIO);
	Linker.link(g_menu_item_set_attribute_value, \"g_menu_item_set_attribute_value\", LIBRARY.GIO);
	Linker.link(g_menu_item_set_attribute, \"g_menu_item_set_attribute\", LIBRARY.GIO);
	Linker.link(g_menu_item_set_link, \"g_menu_item_set_link\", LIBRARY.GIO);

	// gio.DBusMenuModel

	Linker.link(g_dbus_menu_model_get, \"g_dbus_menu_model_get\", LIBRARY.GIO);

	// gio.Vfs

	Linker.link(g_vfs_get_file_for_path, \"g_vfs_get_file_for_path\", LIBRARY.GIO);
	Linker.link(g_vfs_get_file_for_uri, \"g_vfs_get_file_for_uri\", LIBRARY.GIO);
	Linker.link(g_vfs_parse_name, \"g_vfs_parse_name\", LIBRARY.GIO);
	Linker.link(g_vfs_get_default, \"g_vfs_get_default\", LIBRARY.GIO);
	Linker.link(g_vfs_get_local, \"g_vfs_get_local\", LIBRARY.GIO);
	Linker.link(g_vfs_is_active, \"g_vfs_is_active\", LIBRARY.GIO);
	Linker.link(g_vfs_get_supported_uri_schemes, \"g_vfs_get_supported_uri_schemes\", LIBRARY.GIO);

	// gio.IOModule

	Linker.link(g_io_module_new, \"g_io_module_new\", LIBRARY.GIO);
	Linker.link(g_io_modules_load_all_in_directory, \"g_io_modules_load_all_in_directory\", LIBRARY.GIO);
	Linker.link(g_io_modules_load_all_in_directory_with_scope, \"g_io_modules_load_all_in_directory_with_scope\", LIBRARY.GIO);
	Linker.link(g_io_modules_scan_all_in_directory, \"g_io_modules_scan_all_in_directory\", LIBRARY.GIO);
	Linker.link(g_io_modules_scan_all_in_directory_with_scope, \"g_io_modules_scan_all_in_directory_with_scope\", LIBRARY.GIO);
	Linker.link(g_io_module_load, \"g_io_module_load\", LIBRARY.GIO);
	Linker.link(g_io_module_unload, \"g_io_module_unload\", LIBRARY.GIO);
	Linker.link(g_io_module_query, \"g_io_module_query\", LIBRARY.GIO);

	// gio.IOModuleScope

	Linker.link(g_io_module_scope_block, \"g_io_module_scope_block\", LIBRARY.GIO);
	Linker.link(g_io_module_scope_free, \"g_io_module_scope_free\", LIBRARY.GIO);
	Linker.link(g_io_module_scope_new, \"g_io_module_scope_new\", LIBRARY.GIO);

	// gio.IOExtension

	Linker.link(g_io_extension_get_name, \"g_io_extension_get_name\", LIBRARY.GIO);
	Linker.link(g_io_extension_get_priority, \"g_io_extension_get_priority\", LIBRARY.GIO);
	Linker.link(g_io_extension_get_type, \"g_io_extension_get_type\", LIBRARY.GIO);
	Linker.link(g_io_extension_ref_class, \"g_io_extension_ref_class\", LIBRARY.GIO);

	// gio.IOExtensionPoint

	Linker.link(g_io_extension_point_get_extension_by_name, \"g_io_extension_point_get_extension_by_name\", LIBRARY.GIO);
	Linker.link(g_io_extension_point_get_extensions, \"g_io_extension_point_get_extensions\", LIBRARY.GIO);
	Linker.link(g_io_extension_point_get_required_type, \"g_io_extension_point_get_required_type\", LIBRARY.GIO);
	Linker.link(g_io_extension_point_implement, \"g_io_extension_point_implement\", LIBRARY.GIO);
	Linker.link(g_io_extension_point_lookup, \"g_io_extension_point_lookup\", LIBRARY.GIO);
	Linker.link(g_io_extension_point_register, \"g_io_extension_point_register\", LIBRARY.GIO);
	Linker.link(g_io_extension_point_set_required_type, \"g_io_extension_point_set_required_type\", LIBRARY.GIO);

	// gio.TestDBus

	Linker.link(g_test_dbus_new, \"g_test_dbus_new\", LIBRARY.GIO);
	Linker.link(g_test_dbus_get_flags, \"g_test_dbus_get_flags\", LIBRARY.GIO);
	Linker.link(g_test_dbus_get_bus_address, \"g_test_dbus_get_bus_address\", LIBRARY.GIO);
	Linker.link(g_test_dbus_add_service_dir, \"g_test_dbus_add_service_dir\", LIBRARY.GIO);
	Linker.link(g_test_dbus_up, \"g_test_dbus_up\", LIBRARY.GIO);
	Linker.link(g_test_dbus_stop, \"g_test_dbus_stop\", LIBRARY.GIO);
	Linker.link(g_test_dbus_down, \"g_test_dbus_down\", LIBRARY.GIO);
	Linker.link(g_test_dbus_unset, \"g_test_dbus_unset\", LIBRARY.GIO);
}");

mixin( gshared ~"extern(C)
{
	// gio.File

	GFile* function(char* path) c_g_file_new_for_path;
	GFile* function(char* uri) c_g_file_new_for_uri;
	GFile* function(char* arg) c_g_file_new_for_commandline_arg;
	GFile* function(char* tmpl, GFileIOStream** iostream, GError** error) c_g_file_new_tmp;
	GFile* function(char* parseName) c_g_file_parse_name;
	GFile* function(GFile* file) c_g_file_dup;
	guint function(void* file) c_g_file_hash;
	gboolean function(GFile* file1, GFile* file2) c_g_file_equal;
	char* function(GFile* file) c_g_file_get_basename;
	char* function(GFile* file) c_g_file_get_path;
	char* function(GFile* file) c_g_file_get_uri;
	char* function(GFile* file) c_g_file_get_parse_name;
	GFile* function(GFile* file) c_g_file_get_parent;
	gboolean function(GFile* file, GFile* parent) c_g_file_has_parent;
	GFile* function(GFile* file, char* name) c_g_file_get_child;
	GFile* function(GFile* file, char* displayName, GError** error) c_g_file_get_child_for_display_name;
	gboolean function(GFile* file, GFile* prefix) c_g_file_has_prefix;
	char* function(GFile* parent, GFile* descendant) c_g_file_get_relative_path;
	GFile* function(GFile* file, char* relativePath) c_g_file_resolve_relative_path;
	gboolean function(GFile* file) c_g_file_is_native;
	gboolean function(GFile* file, char* uriScheme) c_g_file_has_uri_scheme;
	char* function(GFile* file) c_g_file_get_uri_scheme;
	GFileInputStream* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_read;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_read_async;
	GFileInputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_read_finish;
	GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_append_to;
	GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_create;
	GFileOutputStream* function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_replace;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_append_to_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_append_to_finish;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_create_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_create_finish;
	void function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_replace_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_replace_finish;
	GFileInfo* function(GFile* file, char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_query_info;
	void function(GFile* file, char* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_query_info_async;
	GFileInfo* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_query_info_finish;
	gboolean function(GFile* file, GCancellable* cancellable) c_g_file_query_exists;
	GFileType function(GFile* file, GFileQueryInfoFlags flags, GCancellable* cancellable) c_g_file_query_file_type;
	GFileInfo* function(GFile* file, char* attributes, GCancellable* cancellable, GError** error) c_g_file_query_filesystem_info;
	void function(GFile* file, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_query_filesystem_info_async;
	GFileInfo* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_query_filesystem_info_finish;
	GAppInfo* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_query_default_handler;
	GMount* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_find_enclosing_mount;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_find_enclosing_mount_async;
	GMount* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_find_enclosing_mount_finish;
	GFileEnumerator* function(GFile* file, char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_enumerate_children;
	void function(GFile* file, char* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_enumerate_children_async;
	GFileEnumerator* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_enumerate_children_finish;
	GFile* function(GFile* file, char* displayName, GCancellable* cancellable, GError** error) c_g_file_set_display_name;
	void function(GFile* file, char* displayName, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_set_display_name_async;
	GFile* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_set_display_name_finish;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_delete;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_delete_async;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_delete_finish;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_trash;
	gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GError** error) c_g_file_copy;
	void function(GFile* source, GFile* destination, GFileCopyFlags flags, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GAsyncReadyCallback callback, void* userData) c_g_file_copy_async;
	gboolean function(GFile* file, GAsyncResult* res, GError** error) c_g_file_copy_finish;
	gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GError** error) c_g_file_move;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_make_directory;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_make_directory_with_parents;
	gboolean function(GFile* file, char* symlinkValue, GCancellable* cancellable, GError** error) c_g_file_make_symbolic_link;
	GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_query_settable_attributes;
	GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_query_writable_namespaces;
	gboolean function(GFile* file, char* attribute, GFileAttributeType type, void* valueP, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute;
	gboolean function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attributes_from_info;
	void function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_set_attributes_async;
	gboolean function(GFile* file, GAsyncResult* result, GFileInfo** info, GError** error) c_g_file_set_attributes_finish;
	gboolean function(GFile* file, char* attribute, char* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_string;
	gboolean function(GFile* file, char* attribute, char* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_byte_string;
	gboolean function(GFile* file, char* attribute, guint32 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_uint32;
	gboolean function(GFile* file, char* attribute, gint32 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_int32;
	gboolean function(GFile* file, char* attribute, guint64 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_uint64;
	gboolean function(GFile* file, char* attribute, gint64 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_int64;
	void function(GFile* file, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_mount_mountable;
	GFile* function(GFile* file, GAsyncResult* result, GError** error) c_g_file_mount_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_unmount_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_unmount_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_unmount_mountable_with_operation;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_unmount_mountable_with_operation_finish;
	void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_eject_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_eject_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_eject_mountable_with_operation;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_eject_mountable_with_operation_finish;
	void function(GFile* file, GDriveStartFlags flags, GMountOperation* startOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_start_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_start_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_stop_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_stop_mountable_finish;
	void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_poll_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_poll_mountable_finish;
	void function(GFile* location, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_mount_enclosing_volume;
	gboolean function(GFile* location, GAsyncResult* result, GError** error) c_g_file_mount_enclosing_volume_finish;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error) c_g_file_monitor_directory;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error) c_g_file_monitor_file;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error) c_g_file_monitor;
	gboolean function(GFile* file, GCancellable* cancellable, char** contents, gsize* length, char** etagOut, GError** error) c_g_file_load_contents;
	void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_load_contents_async;
	gboolean function(GFile* file, GAsyncResult* res, char** contents, gsize* length, char** etagOut, GError** error) c_g_file_load_contents_finish;
	void function(GFile* file, GCancellable* cancellable, GFileReadMoreCallback readMoreCallback, GAsyncReadyCallback callback, void* userData) c_g_file_load_partial_contents_async;
	gboolean function(GFile* file, GAsyncResult* res, char** contents, gsize* length, char** etagOut, GError** error) c_g_file_load_partial_contents_finish;
	gboolean function(GFile* file, char* contents, gsize length, char* etag, gboolean makeBackup, GFileCreateFlags flags, char** newEtag, GCancellable* cancellable, GError** error) c_g_file_replace_contents;
	void function(GFile* file, char* contents, gsize length, char* etag, gboolean makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_replace_contents_async;
	gboolean function(GFile* file, GAsyncResult* res, char** newEtag, GError** error) c_g_file_replace_contents_finish;
	gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GError** error) c_g_file_copy_attributes;
	GFileIOStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_create_readwrite;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_create_readwrite_async;
	GFileIOStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_create_readwrite_finish;
	GFileIOStream* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_open_readwrite;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_open_readwrite_async;
	GFileIOStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_open_readwrite_finish;
	GFileIOStream* function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_replace_readwrite;
	void function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_replace_readwrite_async;
	GFileIOStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_replace_readwrite_finish;
	gboolean function(GFile* file) c_g_file_supports_thread_contexts;

	// gio.FileAttributeInfoList

	GFileAttributeInfoList* function() c_g_file_attribute_info_list_new;
	GFileAttributeInfoList* function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_ref;
	void function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_unref;
	GFileAttributeInfoList* function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_dup;
	GFileAttributeInfo* function(GFileAttributeInfoList* list, char* name) c_g_file_attribute_info_list_lookup;
	void function(GFileAttributeInfoList* list, char* name, GFileAttributeType type, GFileAttributeInfoFlags flags) c_g_file_attribute_info_list_add;

	// gio.FileInfo

	GFileInfo* function() c_g_file_info_new;
	GFileInfo* function(GFileInfo* other) c_g_file_info_dup;
	void function(GFileInfo* srcInfo, GFileInfo* destInfo) c_g_file_info_copy_into;
	gboolean function(GFileInfo* info, char* attribute) c_g_file_info_has_attribute;
	gboolean function(GFileInfo* info, char* nameSpace) c_g_file_info_has_namespace;
	char** function(GFileInfo* info, char* nameSpace) c_g_file_info_list_attributes;
	GFileAttributeType function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_type;
	void function(GFileInfo* info, char* attribute) c_g_file_info_remove_attribute;
	char* function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_as_string;
	gboolean function(GFileInfo* info, char* attribute, GFileAttributeType* type, void** valuePp, GFileAttributeStatus* status) c_g_file_info_get_attribute_data;
	GFileAttributeStatus function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_status;
	char* function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_string;
	char** function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_stringv;
	char* function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_byte_string;
	gboolean function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_boolean;
	guint32 function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_uint32;
	gint32 function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_int32;
	guint64 function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_uint64;
	gint64 function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_int64;
	GObject* function(GFileInfo* info, char* attribute) c_g_file_info_get_attribute_object;
	void function(GFileInfo* info, char* attribute, GFileAttributeType type, void* valueP) c_g_file_info_set_attribute;
	gboolean function(GFileInfo* info, char* attribute, GFileAttributeStatus status) c_g_file_info_set_attribute_status;
	void function(GFileInfo* info, char* attribute, char* attrValue) c_g_file_info_set_attribute_string;
	void function(GFileInfo* info, char* attribute, char** attrValue) c_g_file_info_set_attribute_stringv;
	void function(GFileInfo* info, char* attribute, char* attrValue) c_g_file_info_set_attribute_byte_string;
	void function(GFileInfo* info, char* attribute, gboolean attrValue) c_g_file_info_set_attribute_boolean;
	void function(GFileInfo* info, char* attribute, guint32 attrValue) c_g_file_info_set_attribute_uint32;
	void function(GFileInfo* info, char* attribute, gint32 attrValue) c_g_file_info_set_attribute_int32;
	void function(GFileInfo* info, char* attribute, guint64 attrValue) c_g_file_info_set_attribute_uint64;
	void function(GFileInfo* info, char* attribute, gint64 attrValue) c_g_file_info_set_attribute_int64;
	void function(GFileInfo* info, char* attribute, GObject* attrValue) c_g_file_info_set_attribute_object;
	void function(GFileInfo* info) c_g_file_info_clear_status;
	GFileType function(GFileInfo* info) c_g_file_info_get_file_type;
	gboolean function(GFileInfo* info) c_g_file_info_get_is_hidden;
	gboolean function(GFileInfo* info) c_g_file_info_get_is_backup;
	gboolean function(GFileInfo* info) c_g_file_info_get_is_symlink;
	char* function(GFileInfo* info) c_g_file_info_get_name;
	char* function(GFileInfo* info) c_g_file_info_get_display_name;
	char* function(GFileInfo* info) c_g_file_info_get_edit_name;
	GIcon* function(GFileInfo* info) c_g_file_info_get_icon;
	GIcon* function(GFileInfo* info) c_g_file_info_get_symbolic_icon;
	char* function(GFileInfo* info) c_g_file_info_get_content_type;
	goffset function(GFileInfo* info) c_g_file_info_get_size;
	void function(GFileInfo* info, GTimeVal* result) c_g_file_info_get_modification_time;
	char* function(GFileInfo* info) c_g_file_info_get_symlink_target;
	char* function(GFileInfo* info) c_g_file_info_get_etag;
	gint32 function(GFileInfo* info) c_g_file_info_get_sort_order;
	void function(GFileInfo* info, GFileAttributeMatcher* mask) c_g_file_info_set_attribute_mask;
	void function(GFileInfo* info) c_g_file_info_unset_attribute_mask;
	void function(GFileInfo* info, GFileType type) c_g_file_info_set_file_type;
	void function(GFileInfo* info, gboolean isHidden) c_g_file_info_set_is_hidden;
	void function(GFileInfo* info, gboolean isSymlink) c_g_file_info_set_is_symlink;
	void function(GFileInfo* info, char* name) c_g_file_info_set_name;
	void function(GFileInfo* info, char* displayName) c_g_file_info_set_display_name;
	void function(GFileInfo* info, char* editName) c_g_file_info_set_edit_name;
	void function(GFileInfo* info, GIcon* icon) c_g_file_info_set_icon;
	void function(GFileInfo* info, GIcon* icon) c_g_file_info_set_symbolic_icon;
	void function(GFileInfo* info, char* contentType) c_g_file_info_set_content_type;
	void function(GFileInfo* info, goffset size) c_g_file_info_set_size;
	void function(GFileInfo* info, GTimeVal* mtime) c_g_file_info_set_modification_time;
	void function(GFileInfo* info, char* symlinkTarget) c_g_file_info_set_symlink_target;
	void function(GFileInfo* info, gint32 sortOrder) c_g_file_info_set_sort_order;

	// gio.FileAttributeMatcher

	GFileAttributeMatcher* function(char* attributes) c_g_file_attribute_matcher_new;
	GFileAttributeMatcher* function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_ref;
	GFileAttributeMatcher* function(GFileAttributeMatcher* matcher, GFileAttributeMatcher* subtract) c_g_file_attribute_matcher_subtract;
	void function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_unref;
	gboolean function(GFileAttributeMatcher* matcher, char* attribute) c_g_file_attribute_matcher_matches;
	gboolean function(GFileAttributeMatcher* matcher, char* attribute) c_g_file_attribute_matcher_matches_only;
	gboolean function(GFileAttributeMatcher* matcher, char* ns) c_g_file_attribute_matcher_enumerate_namespace;
	char* function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_enumerate_next;
	char* function(GFileAttributeMatcher* matcher) c_g_file_attribute_matcher_to_string;

	// gio.FileEnumerator

	GFileInfo* function(GFileEnumerator* enumerator, GCancellable* cancellable, GError** error) c_g_file_enumerator_next_file;
	gboolean function(GFileEnumerator* enumerator, GCancellable* cancellable, GError** error) c_g_file_enumerator_close;
	void function(GFileEnumerator* enumerator, int numFiles, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_enumerator_next_files_async;
	GList* function(GFileEnumerator* enumerator, GAsyncResult* result, GError** error) c_g_file_enumerator_next_files_finish;
	void function(GFileEnumerator* enumerator, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_enumerator_close_async;
	gboolean function(GFileEnumerator* enumerator, GAsyncResult* result, GError** error) c_g_file_enumerator_close_finish;
	gboolean function(GFileEnumerator* enumerator) c_g_file_enumerator_is_closed;
	gboolean function(GFileEnumerator* enumerator) c_g_file_enumerator_has_pending;
	void function(GFileEnumerator* enumerator, gboolean pending) c_g_file_enumerator_set_pending;
	GFile* function(GFileEnumerator* enumerator) c_g_file_enumerator_get_container;

	// gio.ErrorGIO

	GIOErrorEnum function(gint errNo) c_g_io_error_from_errno;
	GIOErrorEnum function(gint errorCode) c_g_io_error_from_win32_error;

	// gio.MountOperation

	GMountOperation* function() c_g_mount_operation_new;
	char* function(GMountOperation* op) c_g_mount_operation_get_username;
	void function(GMountOperation* op, char* username) c_g_mount_operation_set_username;
	char* function(GMountOperation* op) c_g_mount_operation_get_password;
	void function(GMountOperation* op, char* password) c_g_mount_operation_set_password;
	gboolean function(GMountOperation* op) c_g_mount_operation_get_anonymous;
	void function(GMountOperation* op, gboolean anonymous) c_g_mount_operation_set_anonymous;
	char* function(GMountOperation* op) c_g_mount_operation_get_domain;
	void function(GMountOperation* op, char* domain) c_g_mount_operation_set_domain;
	GPasswordSave function(GMountOperation* op) c_g_mount_operation_get_password_save;
	void function(GMountOperation* op, GPasswordSave save) c_g_mount_operation_set_password_save;
	int function(GMountOperation* op) c_g_mount_operation_get_choice;
	void function(GMountOperation* op, int choice) c_g_mount_operation_set_choice;
	void function(GMountOperation* op, GMountOperationResult result) c_g_mount_operation_reply;

	// gio.FileMonitor

	gboolean function(GFileMonitor* monitor) c_g_file_monitor_cancel;
	gboolean function(GFileMonitor* monitor) c_g_file_monitor_is_cancelled;
	void function(GFileMonitor* monitor, gint limitMsecs) c_g_file_monitor_set_rate_limit;
	void function(GFileMonitor* monitor, GFile* child, GFile* otherFile, GFileMonitorEvent eventType) c_g_file_monitor_emit_event;

	// gio.FilenameCompleter

	GFilenameCompleter* function() c_g_filename_completer_new;
	char* function(GFilenameCompleter* completer, char* initialText) c_g_filename_completer_get_completion_suffix;
	char** function(GFilenameCompleter* completer, char* initialText) c_g_filename_completer_get_completions;
	void function(GFilenameCompleter* completer, gboolean dirsOnly) c_g_filename_completer_set_dirs_only;

	// gio.Cancellable

	GCancellable* function() c_g_cancellable_new;
	gboolean function(GCancellable* cancellable) c_g_cancellable_is_cancelled;
	gboolean function(GCancellable* cancellable, GError** error) c_g_cancellable_set_error_if_cancelled;
	int function(GCancellable* cancellable) c_g_cancellable_get_fd;
	gboolean function(GCancellable* cancellable, GPollFD* pollfd) c_g_cancellable_make_pollfd;
	void function(GCancellable* cancellable) c_g_cancellable_release_fd;
	GSource* function(GCancellable* cancellable) c_g_cancellable_source_new;
	GCancellable* function() c_g_cancellable_get_current;
	void function(GCancellable* cancellable) c_g_cancellable_pop_current;
	void function(GCancellable* cancellable) c_g_cancellable_push_current;
	void function(GCancellable* cancellable) c_g_cancellable_reset;
	gulong function(GCancellable* cancellable, GCallback callback, void* data, GDestroyNotify dataDestroyFunc) c_g_cancellable_connect;
	void function(GCancellable* cancellable, gulong handlerId) c_g_cancellable_disconnect;
	void function(GCancellable* cancellable) c_g_cancellable_cancel;

	// gio.AsyncResultT


	// gio.AsyncResultT

	gpointer function(GAsyncResult* res) c_g_async_result_get_user_data;
	GObject* function(GAsyncResult* res) c_g_async_result_get_source_object;
	gboolean function(GAsyncResult* res, void* sourceTag) c_g_async_result_is_tagged;
	gboolean function(GAsyncResult* res, GError** error) c_g_async_result_legacy_propagate_error;

	// gio.IOSchedulerJob

	void function(GIOSchedulerJobFunc jobFunc, void* userData, GDestroyNotify notify, gint ioPriority, GCancellable* cancellable) c_g_io_scheduler_push_job;
	void function() c_g_io_scheduler_cancel_all_jobs;
	gboolean function(GIOSchedulerJob* job, GSourceFunc func, void* userData, GDestroyNotify notify) c_g_io_scheduler_job_send_to_mainloop;
	void function(GIOSchedulerJob* job, GSourceFunc func, void* userData, GDestroyNotify notify) c_g_io_scheduler_job_send_to_mainloop_async;

	// gio.SimpleAsyncResult

	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, void* sourceTag) c_g_simple_async_result_new;
	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, GQuark domain, gint code, char* format, ... ) c_g_simple_async_result_new_error;
	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, GError* error) c_g_simple_async_result_new_from_error;
	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, GError* error) c_g_simple_async_result_new_take_error;
	void function(GSimpleAsyncResult* simple, GCancellable* checkCancellable) c_g_simple_async_result_set_check_cancellable;
	void function(GSimpleAsyncResult* simple, void* opRes, GDestroyNotify destroyOpRes) c_g_simple_async_result_set_op_res_gpointer;
	gpointer function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_op_res_gpointer;
	void function(GSimpleAsyncResult* simple, gssize opRes) c_g_simple_async_result_set_op_res_gssize;
	gssize function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_op_res_gssize;
	void function(GSimpleAsyncResult* simple, gboolean opRes) c_g_simple_async_result_set_op_res_gboolean;
	gboolean function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_op_res_gboolean;
	gpointer function(GSimpleAsyncResult* simple) c_g_simple_async_result_get_source_tag;
	gboolean function(GAsyncResult* result, GObject* source, void* sourceTag) c_g_simple_async_result_is_valid;
	void function(GSimpleAsyncResult* simple, gboolean handleCancellation) c_g_simple_async_result_set_handle_cancellation;
	void function(GSimpleAsyncResult* simple) c_g_simple_async_result_complete;
	void function(GSimpleAsyncResult* simple) c_g_simple_async_result_complete_in_idle;
	void function(GSimpleAsyncResult* simple, GSimpleAsyncThreadFunc func, int ioPriority, GCancellable* cancellable) c_g_simple_async_result_run_in_thread;
	void function(GSimpleAsyncResult* simple, GError* error) c_g_simple_async_result_set_from_error;
	void function(GSimpleAsyncResult* simple, GError* error) c_g_simple_async_result_take_error;
	gboolean function(GSimpleAsyncResult* simple, GError** dest) c_g_simple_async_result_propagate_error;
	void function(GSimpleAsyncResult* simple, GQuark domain, gint code, char* format, ... ) c_g_simple_async_result_set_error;
	void function(GSimpleAsyncResult* simple, GQuark domain, gint code, char* format, va_list args) c_g_simple_async_result_set_error_va;
	void function(GObject* object, GAsyncReadyCallback callback, void* userData, GQuark domain, gint code, char* format, ... ) c_g_simple_async_report_error_in_idle;
	void function(GObject* object, GAsyncReadyCallback callback, void* userData, GError* error) c_g_simple_async_report_gerror_in_idle;
	void function(GObject* object, GAsyncReadyCallback callback, void* userData, GError* error) c_g_simple_async_report_take_gerror_in_idle;

	// gio.ConverterT


	// gio.ConverterT

	GConverterResult function(GConverter* converter, void* inbuf, gsize inbufSize, void* outbuf, gsize outbufSize, GConverterFlags flags, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_converter_convert;
	void function(GConverter* converter) c_g_converter_reset;

	// gio.Converter


	// gio.CharsetConverter

	GCharsetConverter* function(gchar* toCharset, gchar* fromCharset, GError** error) c_g_charset_converter_new;
	void function(GCharsetConverter* converter, gboolean useFallback) c_g_charset_converter_set_use_fallback;
	gboolean function(GCharsetConverter* converter) c_g_charset_converter_get_use_fallback;
	guint function(GCharsetConverter* converter) c_g_charset_converter_get_num_fallbacks;

	// gio.ZlibCompressor

	GZlibCompressor* function(GZlibCompressorFormat format, int level) c_g_zlib_compressor_new;
	GFileInfo* function(GZlibCompressor* compressor) c_g_zlib_compressor_get_file_info;
	void function(GZlibCompressor* compressor, GFileInfo* fileInfo) c_g_zlib_compressor_set_file_info;

	// gio.ZlibDecompressor

	GZlibDecompressor* function(GZlibCompressorFormat format) c_g_zlib_decompressor_new;
	GFileInfo* function(GZlibDecompressor* decompressor) c_g_zlib_decompressor_get_file_info;

	// gio.SeekableT


	// gio.SeekableT

	goffset function(GSeekable* seekable) c_g_seekable_tell;
	gboolean function(GSeekable* seekable) c_g_seekable_can_seek;
	gboolean function(GSeekable* seekable, goffset offset, GSeekType type, GCancellable* cancellable, GError** error) c_g_seekable_seek;
	gboolean function(GSeekable* seekable) c_g_seekable_can_truncate;
	gboolean function(GSeekable* seekable, goffset offset, GCancellable* cancellable, GError** error) c_g_seekable_truncate;

	// gio.InputStream

	gssize function(GInputStream* stream, void* buffer, gsize count, GCancellable* cancellable, GError** error) c_g_input_stream_read;
	gboolean function(GInputStream* stream, void* buffer, gsize count, gsize* bytesRead, GCancellable* cancellable, GError** error) c_g_input_stream_read_all;
	gssize function(GInputStream* stream, gsize count, GCancellable* cancellable, GError** error) c_g_input_stream_skip;
	gboolean function(GInputStream* stream, GCancellable* cancellable, GError** error) c_g_input_stream_close;
	void function(GInputStream* stream, void* buffer, gsize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_input_stream_read_async;
	gssize function(GInputStream* stream, GAsyncResult* result, GError** error) c_g_input_stream_read_finish;
	void function(GInputStream* stream, gsize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_input_stream_skip_async;
	gssize function(GInputStream* stream, GAsyncResult* result, GError** error) c_g_input_stream_skip_finish;
	void function(GInputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_input_stream_close_async;
	gboolean function(GInputStream* stream, GAsyncResult* result, GError** error) c_g_input_stream_close_finish;
	gboolean function(GInputStream* stream) c_g_input_stream_is_closed;
	gboolean function(GInputStream* stream) c_g_input_stream_has_pending;
	gboolean function(GInputStream* stream, GError** error) c_g_input_stream_set_pending;
	void function(GInputStream* stream) c_g_input_stream_clear_pending;
	GBytes* function(GInputStream* stream, gsize count, GCancellable* cancellable, GError** error) c_g_input_stream_read_bytes;
	void function(GInputStream* stream, gsize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_input_stream_read_bytes_async;
	GBytes* function(GInputStream* stream, GAsyncResult* result, GError** error) c_g_input_stream_read_bytes_finish;

	// gio.OutputStream

	gssize function(GOutputStream* stream, void* buffer, gsize count, GCancellable* cancellable, GError** error) c_g_output_stream_write;
	gboolean function(GOutputStream* stream, void* buffer, gsize count, gsize* bytesWritten, GCancellable* cancellable, GError** error) c_g_output_stream_write_all;
	gssize function(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, GCancellable* cancellable, GError** error) c_g_output_stream_splice;
	gboolean function(GOutputStream* stream, GCancellable* cancellable, GError** error) c_g_output_stream_flush;
	gboolean function(GOutputStream* stream, GCancellable* cancellable, GError** error) c_g_output_stream_close;
	void function(GOutputStream* stream, void* buffer, gsize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_write_async;
	gssize function(GOutputStream* stream, GAsyncResult* result, GError** error) c_g_output_stream_write_finish;
	void function(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_splice_async;
	gssize function(GOutputStream* stream, GAsyncResult* result, GError** error) c_g_output_stream_splice_finish;
	void function(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_flush_async;
	gboolean function(GOutputStream* stream, GAsyncResult* result, GError** error) c_g_output_stream_flush_finish;
	void function(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_close_async;
	gboolean function(GOutputStream* stream, GAsyncResult* result, GError** error) c_g_output_stream_close_finish;
	gboolean function(GOutputStream* stream) c_g_output_stream_is_closing;
	gboolean function(GOutputStream* stream) c_g_output_stream_is_closed;
	gboolean function(GOutputStream* stream) c_g_output_stream_has_pending;
	gboolean function(GOutputStream* stream, GError** error) c_g_output_stream_set_pending;
	void function(GOutputStream* stream) c_g_output_stream_clear_pending;
	gssize function(GOutputStream* stream, GBytes* bytes, GCancellable* cancellable, GError** error) c_g_output_stream_write_bytes;
	void function(GOutputStream* stream, GBytes* bytes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_output_stream_write_bytes_async;
	gssize function(GOutputStream* stream, GAsyncResult* result, GError** error) c_g_output_stream_write_bytes_finish;

	// gio.IOStream

	GInputStream* function(GIOStream* stream) c_g_io_stream_get_input_stream;
	GOutputStream* function(GIOStream* stream) c_g_io_stream_get_output_stream;
	void function(GIOStream* stream1, GIOStream* stream2, GIOStreamSpliceFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_io_stream_splice_async;
	gboolean function(GAsyncResult* result, GError** error) c_g_io_stream_splice_finish;
	gboolean function(GIOStream* stream, GCancellable* cancellable, GError** error) c_g_io_stream_close;
	void function(GIOStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_io_stream_close_async;
	gboolean function(GIOStream* stream, GAsyncResult* result, GError** error) c_g_io_stream_close_finish;
	gboolean function(GIOStream* stream) c_g_io_stream_is_closed;
	gboolean function(GIOStream* stream) c_g_io_stream_has_pending;
	gboolean function(GIOStream* stream, GError** error) c_g_io_stream_set_pending;
	void function(GIOStream* stream) c_g_io_stream_clear_pending;

	// gio.FileInputStream

	GFileInfo* function(GFileInputStream* stream, char* attributes, GCancellable* cancellable, GError** error) c_g_file_input_stream_query_info;
	void function(GFileInputStream* stream, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_input_stream_query_info_async;
	GFileInfo* function(GFileInputStream* stream, GAsyncResult* result, GError** error) c_g_file_input_stream_query_info_finish;

	// gio.FileOutputStream

	GFileInfo* function(GFileOutputStream* stream, char* attributes, GCancellable* cancellable, GError** error) c_g_file_output_stream_query_info;
	void function(GFileOutputStream* stream, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_output_stream_query_info_async;
	GFileInfo* function(GFileOutputStream* stream, GAsyncResult* result, GError** error) c_g_file_output_stream_query_info_finish;
	char* function(GFileOutputStream* stream) c_g_file_output_stream_get_etag;

	// gio.FileIOStream

	char* function(GFileIOStream* stream) c_g_file_io_stream_get_etag;
	GFileInfo* function(GFileIOStream* stream, char* attributes, GCancellable* cancellable, GError** error) c_g_file_io_stream_query_info;
	void function(GFileIOStream* stream, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_file_io_stream_query_info_async;
	GFileInfo* function(GFileIOStream* stream, GAsyncResult* result, GError** error) c_g_file_io_stream_query_info_finish;

	// gio.FileDescriptorBasedT


	// gio.FileDescriptorBasedT

	int function(GFileDescriptorBased* fdBased) c_g_file_descriptor_based_get_fd;

	// gio.FilterInputStream

	GInputStream* function(GFilterInputStream* stream) c_g_filter_input_stream_get_base_stream;
	gboolean function(GFilterInputStream* stream) c_g_filter_input_stream_get_close_base_stream;
	void function(GFilterInputStream* stream, gboolean closeBase) c_g_filter_input_stream_set_close_base_stream;

	// gio.FilterOutputStream

	GOutputStream* function(GFilterOutputStream* stream) c_g_filter_output_stream_get_base_stream;
	gboolean function(GFilterOutputStream* stream) c_g_filter_output_stream_get_close_base_stream;
	void function(GFilterOutputStream* stream, gboolean closeBase) c_g_filter_output_stream_set_close_base_stream;

	// gio.MemoryInputStream

	GInputStream* function() c_g_memory_input_stream_new;
	GInputStream* function(void* data, gssize len, GDestroyNotify destroy) c_g_memory_input_stream_new_from_data;
	void function(GMemoryInputStream* stream, void* data, gssize len, GDestroyNotify destroy) c_g_memory_input_stream_add_data;

	// gio.MemoryOutputStream

	GOutputStream* function(void* data, gsize size, GReallocFunc reallocFunction, GDestroyNotify destroyFunction) c_g_memory_output_stream_new;
	gpointer function(GMemoryOutputStream* ostream) c_g_memory_output_stream_get_data;
	gsize function(GMemoryOutputStream* ostream) c_g_memory_output_stream_get_size;
	gsize function(GMemoryOutputStream* ostream) c_g_memory_output_stream_get_data_size;
	gpointer function(GMemoryOutputStream* ostream) c_g_memory_output_stream_steal_data;

	// gio.BufferedInputStream

	GInputStream* function(GInputStream* baseStream) c_g_buffered_input_stream_new;
	GInputStream* function(GInputStream* baseStream, gsize size) c_g_buffered_input_stream_new_sized;
	gsize function(GBufferedInputStream* stream) c_g_buffered_input_stream_get_buffer_size;
	void function(GBufferedInputStream* stream, gsize size) c_g_buffered_input_stream_set_buffer_size;
	gsize function(GBufferedInputStream* stream) c_g_buffered_input_stream_get_available;
	void* function(GBufferedInputStream* stream, gsize* count) c_g_buffered_input_stream_peek_buffer;
	gsize function(GBufferedInputStream* stream, void* buffer, gsize offset, gsize count) c_g_buffered_input_stream_peek;
	gssize function(GBufferedInputStream* stream, gssize count, GCancellable* cancellable, GError** error) c_g_buffered_input_stream_fill;
	void function(GBufferedInputStream* stream, gssize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_buffered_input_stream_fill_async;
	gssize function(GBufferedInputStream* stream, GAsyncResult* result, GError** error) c_g_buffered_input_stream_fill_finish;
	int function(GBufferedInputStream* stream, GCancellable* cancellable, GError** error) c_g_buffered_input_stream_read_byte;

	// gio.BufferedOutputStream

	GOutputStream* function(GOutputStream* baseStream) c_g_buffered_output_stream_new;
	GOutputStream* function(GOutputStream* baseStream, gsize size) c_g_buffered_output_stream_new_sized;
	gsize function(GBufferedOutputStream* stream) c_g_buffered_output_stream_get_buffer_size;
	void function(GBufferedOutputStream* stream, gsize size) c_g_buffered_output_stream_set_buffer_size;
	gboolean function(GBufferedOutputStream* stream) c_g_buffered_output_stream_get_auto_grow;
	void function(GBufferedOutputStream* stream, gboolean autoGrow) c_g_buffered_output_stream_set_auto_grow;

	// gio.DataInputStream

	GDataInputStream* function(GInputStream* baseStream) c_g_data_input_stream_new;
	void function(GDataInputStream* stream, GDataStreamByteOrder order) c_g_data_input_stream_set_byte_order;
	GDataStreamByteOrder function(GDataInputStream* stream) c_g_data_input_stream_get_byte_order;
	void function(GDataInputStream* stream, GDataStreamNewlineType type) c_g_data_input_stream_set_newline_type;
	GDataStreamNewlineType function(GDataInputStream* stream) c_g_data_input_stream_get_newline_type;
	guchar function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_byte;
	gint16 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_int16;
	guint16 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_uint16;
	gint32 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_int32;
	guint32 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_uint32;
	gint64 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_int64;
	guint64 function(GDataInputStream* stream, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_uint64;
	char* function(GDataInputStream* stream, gsize* length, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_line;
	char* function(GDataInputStream* stream, gsize* length, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_line_utf8;
	void function(GDataInputStream* stream, gint ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_data_input_stream_read_line_async;
	char* function(GDataInputStream* stream, GAsyncResult* result, gsize* length, GError** error) c_g_data_input_stream_read_line_finish;
	char* function(GDataInputStream* stream, GAsyncResult* result, gsize* length, GError** error) c_g_data_input_stream_read_line_finish_utf8;
	char* function(GDataInputStream* stream, gchar* stopChars, gssize stopCharsLen, gsize* length, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_upto;
	void function(GDataInputStream* stream, gchar* stopChars, gssize stopCharsLen, gint ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_data_input_stream_read_upto_async;
	char* function(GDataInputStream* stream, GAsyncResult* result, gsize* length, GError** error) c_g_data_input_stream_read_upto_finish;
	char* function(GDataInputStream* stream, gchar* stopChars, gsize* length, GCancellable* cancellable, GError** error) c_g_data_input_stream_read_until;
	void function(GDataInputStream* stream, gchar* stopChars, gint ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_data_input_stream_read_until_async;
	char* function(GDataInputStream* stream, GAsyncResult* result, gsize* length, GError** error) c_g_data_input_stream_read_until_finish;

	// gio.DataOutputStream

	GDataOutputStream* function(GOutputStream* baseStream) c_g_data_output_stream_new;
	void function(GDataOutputStream* stream, GDataStreamByteOrder order) c_g_data_output_stream_set_byte_order;
	GDataStreamByteOrder function(GDataOutputStream* stream) c_g_data_output_stream_get_byte_order;
	gboolean function(GDataOutputStream* stream, guchar data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_byte;
	gboolean function(GDataOutputStream* stream, gint16 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_int16;
	gboolean function(GDataOutputStream* stream, guint16 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_uint16;
	gboolean function(GDataOutputStream* stream, gint32 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_int32;
	gboolean function(GDataOutputStream* stream, guint32 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_uint32;
	gboolean function(GDataOutputStream* stream, gint64 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_int64;
	gboolean function(GDataOutputStream* stream, guint64 data, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_uint64;
	gboolean function(GDataOutputStream* stream, char* str, GCancellable* cancellable, GError** error) c_g_data_output_stream_put_string;

	// gio.UnixInputStream

	GInputStream* function(gint fd, gboolean closeFd) c_g_unix_input_stream_new;
	void function(GUnixInputStream* stream, gboolean closeFd) c_g_unix_input_stream_set_close_fd;
	gboolean function(GUnixInputStream* stream) c_g_unix_input_stream_get_close_fd;
	gint function(GUnixInputStream* stream) c_g_unix_input_stream_get_fd;

	// gio.UnixOutputStream

	GOutputStream* function(gint fd, gboolean closeFd) c_g_unix_output_stream_new;
	void function(GUnixOutputStream* stream, gboolean closeFd) c_g_unix_output_stream_set_close_fd;
	gboolean function(GUnixOutputStream* stream) c_g_unix_output_stream_get_close_fd;
	gint function(GUnixOutputStream* stream) c_g_unix_output_stream_get_fd;

	// gio.ConverterInputStream

	GInputStream* function(GInputStream* baseStream, GConverter* converter) c_g_converter_input_stream_new;
	GConverter* function(GConverterInputStream* converterStream) c_g_converter_input_stream_get_converter;

	// gio.ConverterOutputStream

	GOutputStream* function(GOutputStream* baseStream, GConverter* converter) c_g_converter_output_stream_new;
	GConverter* function(GConverterOutputStream* converterStream) c_g_converter_output_stream_get_converter;

	// gio.PollableInputStreamT


	// gio.PollableInputStreamT

	gboolean function(GPollableInputStream* stream) c_g_pollable_input_stream_can_poll;
	gboolean function(GPollableInputStream* stream) c_g_pollable_input_stream_is_readable;
	GSource* function(GPollableInputStream* stream, GCancellable* cancellable) c_g_pollable_input_stream_create_source;
	gssize function(GPollableInputStream* stream, void* buffer, gsize count, GCancellable* cancellable, GError** error) c_g_pollable_input_stream_read_nonblocking;

	// gio.PollableOutputStreamT


	// gio.PollableOutputStreamT

	gboolean function(GPollableOutputStream* stream) c_g_pollable_output_stream_can_poll;
	gboolean function(GPollableOutputStream* stream) c_g_pollable_output_stream_is_writable;
	GSource* function(GPollableOutputStream* stream, GCancellable* cancellable) c_g_pollable_output_stream_create_source;
	gssize function(GPollableOutputStream* stream, void* buffer, gsize count, GCancellable* cancellable, GError** error) c_g_pollable_output_stream_write_nonblocking;

	// gio.

	GSource* function(GObject* pollableStream) c_g_pollable_source_new;
	GSource* function(void* pollableStream, GSource* childSource, GCancellable* cancellable) c_g_pollable_source_new_full;
	gssize function(GInputStream* stream, void* buffer, gsize count, gboolean blocking, GCancellable* cancellable, GError** error) c_g_pollable_stream_read;
	gssize function(GOutputStream* stream, void* buffer, gsize count, gboolean blocking, GCancellable* cancellable, GError** error) c_g_pollable_stream_write;
	gboolean function(GOutputStream* stream, void* buffer, gsize count, gboolean blocking, gsize* bytesWritten, GCancellable* cancellable, GError** error) c_g_pollable_stream_write_all;

	// gio.ContentType

	gboolean function(gchar* type1, gchar* type2) c_g_content_type_equals;
	gboolean function(gchar* type, gchar* supertype) c_g_content_type_is_a;
	gboolean function(gchar* type) c_g_content_type_is_unknown;
	gchar* function(gchar* type) c_g_content_type_get_description;
	gchar* function(gchar* type) c_g_content_type_get_mime_type;
	GIcon* function(gchar* type) c_g_content_type_get_icon;
	GIcon* function(gchar* type) c_g_content_type_get_symbolic_icon;
	gchar* function(gchar* type) c_g_content_type_get_generic_icon_name;
	gboolean function(gchar* type) c_g_content_type_can_be_executable;
	gchar* function(gchar* mimeType) c_g_content_type_from_mime_type;
	gchar* function(gchar* filename, guchar* data, gsize dataSize, gboolean* resultUncertain) c_g_content_type_guess;
	gchar** function(GFile* root) c_g_content_type_guess_for_tree;
	GList* function() c_g_content_types_get_registered;

	// gio.AppInfoT


	// gio.AppInfoT

	GAppInfo* function(char* commandline, char* applicationName, GAppInfoCreateFlags flags, GError** error) c_g_app_info_create_from_commandline;
	GAppInfo* function(GAppInfo* appinfo) c_g_app_info_dup;
	gboolean function(GAppInfo* appinfo1, GAppInfo* appinfo2) c_g_app_info_equal;
	char* function(GAppInfo* appinfo) c_g_app_info_get_id;
	char* function(GAppInfo* appinfo) c_g_app_info_get_name;
	char* function(GAppInfo* appinfo) c_g_app_info_get_display_name;
	char* function(GAppInfo* appinfo) c_g_app_info_get_description;
	char* function(GAppInfo* appinfo) c_g_app_info_get_executable;
	char* function(GAppInfo* appinfo) c_g_app_info_get_commandline;
	GIcon* function(GAppInfo* appinfo) c_g_app_info_get_icon;
	gboolean function(GAppInfo* appinfo, GList* files, GAppLaunchContext* launchContext, GError** error) c_g_app_info_launch;
	gboolean function(GAppInfo* appinfo) c_g_app_info_supports_files;
	gboolean function(GAppInfo* appinfo) c_g_app_info_supports_uris;
	gboolean function(GAppInfo* appinfo, GList* uris, GAppLaunchContext* launchContext, GError** error) c_g_app_info_launch_uris;
	gboolean function(GAppInfo* appinfo) c_g_app_info_should_show;
	gboolean function(GAppInfo* appinfo) c_g_app_info_can_delete;
	gboolean function(GAppInfo* appinfo) c_g_app_info_delete;
	void function(char* contentType) c_g_app_info_reset_type_associations;
	gboolean function(GAppInfo* appinfo, char* contentType, GError** error) c_g_app_info_set_as_default_for_type;
	gboolean function(GAppInfo* appinfo, char* extension, GError** error) c_g_app_info_set_as_default_for_extension;
	gboolean function(GAppInfo* appinfo, char* contentType, GError** error) c_g_app_info_set_as_last_used_for_type;
	gboolean function(GAppInfo* appinfo, char* contentType, GError** error) c_g_app_info_add_supports_type;
	gboolean function(GAppInfo* appinfo) c_g_app_info_can_remove_supports_type;
	gboolean function(GAppInfo* appinfo, char* contentType, GError** error) c_g_app_info_remove_supports_type;
	char** function(GAppInfo* appinfo) c_g_app_info_get_supported_types;
	GList* function() c_g_app_info_get_all;
	GList* function(char* contentType) c_g_app_info_get_all_for_type;
	GAppInfo* function(char* contentType, gboolean mustSupportUris) c_g_app_info_get_default_for_type;
	GAppInfo* function(char* uriScheme) c_g_app_info_get_default_for_uri_scheme;
	GList* function(gchar* contentType) c_g_app_info_get_fallback_for_type;
	GList* function(gchar* contentType) c_g_app_info_get_recommended_for_type;
	gboolean function(char* uri, GAppLaunchContext* launchContext, GError** error) c_g_app_info_launch_default_for_uri;

	// gio.AppInfo


	// gio.AppLaunchContext


	// gio.DesktopAppInfo

	GDesktopAppInfo* function(char* filename) c_g_desktop_app_info_new_from_filename;
	GDesktopAppInfo* function(GKeyFile* keyFile) c_g_desktop_app_info_new_from_keyfile;
	GDesktopAppInfo* function(char* desktopId) c_g_desktop_app_info_new;
	char* function(GDesktopAppInfo* info) c_g_desktop_app_info_get_filename;
	gboolean function(GDesktopAppInfo* info) c_g_desktop_app_info_get_is_hidden;
	gboolean function(GDesktopAppInfo* info) c_g_desktop_app_info_get_nodisplay;
	gboolean function(GDesktopAppInfo* info, gchar* desktopEnv) c_g_desktop_app_info_get_show_in;
	char* function(GDesktopAppInfo* info) c_g_desktop_app_info_get_generic_name;
	char* function(GDesktopAppInfo* info) c_g_desktop_app_info_get_categories;
	char** function(GDesktopAppInfo* info) c_g_desktop_app_info_get_keywords;
	char* function(GDesktopAppInfo* info) c_g_desktop_app_info_get_startup_wm_class;
	void function(char* desktopEnv) c_g_desktop_app_info_set_desktop_env;
	gboolean function(GDesktopAppInfo* appinfo, GList* uris, GAppLaunchContext* launchContext, GSpawnFlags spawnFlags, GSpawnChildSetupFunc userSetup, void* userSetupData, GDesktopAppLaunchCallback pidCallback, void* pidCallbackData, GError** error) c_g_desktop_app_info_launch_uris_as_manager;

	// gio.VolumeMonitor

	GVolumeMonitor* function() c_g_volume_monitor_get;
	GList* function(GVolumeMonitor* volumeMonitor) c_g_volume_monitor_get_connected_drives;
	GList* function(GVolumeMonitor* volumeMonitor) c_g_volume_monitor_get_volumes;
	GList* function(GVolumeMonitor* volumeMonitor) c_g_volume_monitor_get_mounts;
	GVolume* function(GMount* mount) c_g_volume_monitor_adopt_orphan_mount;
	GMount* function(GVolumeMonitor* volumeMonitor, char* uuid) c_g_volume_monitor_get_mount_for_uuid;
	GVolume* function(GVolumeMonitor* volumeMonitor, char* uuid) c_g_volume_monitor_get_volume_for_uuid;

	// gio.VolumeT


	// gio.VolumeT

	char* function(GVolume* volume) c_g_volume_get_name;
	char* function(GVolume* volume) c_g_volume_get_uuid;
	GIcon* function(GVolume* volume) c_g_volume_get_icon;
	GIcon* function(GVolume* volume) c_g_volume_get_symbolic_icon;
	GDrive* function(GVolume* volume) c_g_volume_get_drive;
	GMount* function(GVolume* volume) c_g_volume_get_mount;
	gboolean function(GVolume* volume) c_g_volume_can_mount;
	gboolean function(GVolume* volume) c_g_volume_should_automount;
	GFile* function(GVolume* volume) c_g_volume_get_activation_root;
	void function(GVolume* volume, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_volume_mount;
	gboolean function(GVolume* volume, GAsyncResult* result, GError** error) c_g_volume_mount_finish;
	gboolean function(GVolume* volume) c_g_volume_can_eject;
	void function(GVolume* volume, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_volume_eject;
	gboolean function(GVolume* volume, GAsyncResult* result, GError** error) c_g_volume_eject_finish;
	void function(GVolume* volume, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_volume_eject_with_operation;
	gboolean function(GVolume* volume, GAsyncResult* result, GError** error) c_g_volume_eject_with_operation_finish;
	char** function(GVolume* volume) c_g_volume_enumerate_identifiers;
	char* function(GVolume* volume, char* kind) c_g_volume_get_identifier;
	gchar* function(GVolume* volume) c_g_volume_get_sort_key;

	// gio.Volume


	// gio.MountT


	// gio.MountT

	char* function(GMount* mount) c_g_mount_get_name;
	char* function(GMount* mount) c_g_mount_get_uuid;
	GIcon* function(GMount* mount) c_g_mount_get_icon;
	GIcon* function(GMount* mount) c_g_mount_get_symbolic_icon;
	GDrive* function(GMount* mount) c_g_mount_get_drive;
	GFile* function(GMount* mount) c_g_mount_get_root;
	GVolume* function(GMount* mount) c_g_mount_get_volume;
	GFile* function(GMount* mount) c_g_mount_get_default_location;
	gboolean function(GMount* mount) c_g_mount_can_unmount;
	void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_unmount;
	gboolean function(GMount* mount, GAsyncResult* result, GError** error) c_g_mount_unmount_finish;
	void function(GMount* mount, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_unmount_with_operation;
	gboolean function(GMount* mount, GAsyncResult* result, GError** error) c_g_mount_unmount_with_operation_finish;
	void function(GMount* mount, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_remount;
	gboolean function(GMount* mount, GAsyncResult* result, GError** error) c_g_mount_remount_finish;
	gboolean function(GMount* mount) c_g_mount_can_eject;
	void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_eject;
	gboolean function(GMount* mount, GAsyncResult* result, GError** error) c_g_mount_eject_finish;
	void function(GMount* mount, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_eject_with_operation;
	gboolean function(GMount* mount, GAsyncResult* result, GError** error) c_g_mount_eject_with_operation_finish;
	void function(GMount* mount, gboolean forceRescan, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_mount_guess_content_type;
	gchar** function(GMount* mount, GAsyncResult* result, GError** error) c_g_mount_guess_content_type_finish;
	gchar** function(GMount* mount, gboolean forceRescan, GCancellable* cancellable, GError** error) c_g_mount_guess_content_type_sync;
	gboolean function(GMount* mount) c_g_mount_is_shadowed;
	void function(GMount* mount) c_g_mount_shadow;
	void function(GMount* mount) c_g_mount_unshadow;
	gchar* function(GMount* mount) c_g_mount_get_sort_key;

	// gio.Mount


	// gio.DriveT


	// gio.DriveT

	char* function(GDrive* drive) c_g_drive_get_name;
	GIcon* function(GDrive* drive) c_g_drive_get_icon;
	GIcon* function(GDrive* drive) c_g_drive_get_symbolic_icon;
	gboolean function(GDrive* drive) c_g_drive_has_volumes;
	GList* function(GDrive* drive) c_g_drive_get_volumes;
	gboolean function(GDrive* drive) c_g_drive_can_eject;
	GDriveStartStopType function(GDrive* drive) c_g_drive_get_start_stop_type;
	gboolean function(GDrive* drive) c_g_drive_can_start;
	gboolean function(GDrive* drive) c_g_drive_can_start_degraded;
	gboolean function(GDrive* drive) c_g_drive_can_stop;
	gboolean function(GDrive* drive) c_g_drive_can_poll_for_media;
	void function(GDrive* drive, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_drive_poll_for_media;
	gboolean function(GDrive* drive, GAsyncResult* result, GError** error) c_g_drive_poll_for_media_finish;
	gboolean function(GDrive* drive) c_g_drive_has_media;
	gboolean function(GDrive* drive) c_g_drive_is_media_check_automatic;
	gboolean function(GDrive* drive) c_g_drive_is_media_removable;
	void function(GDrive* drive, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_drive_eject;
	gboolean function(GDrive* drive, GAsyncResult* result, GError** error) c_g_drive_eject_finish;
	void function(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_drive_eject_with_operation;
	gboolean function(GDrive* drive, GAsyncResult* result, GError** error) c_g_drive_eject_with_operation_finish;
	void function(GDrive* drive, GDriveStartFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_drive_start;
	gboolean function(GDrive* drive, GAsyncResult* result, GError** error) c_g_drive_start_finish;
	void function(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_drive_stop;
	gboolean function(GDrive* drive, GAsyncResult* result, GError** error) c_g_drive_stop_finish;
	char** function(GDrive* drive) c_g_drive_enumerate_identifiers;
	char* function(GDrive* drive, char* kind) c_g_drive_get_identifier;
	gchar* function(GDrive* drive) c_g_drive_get_sort_key;

	// gio.Drive


	// gio.UnixMountEntry

	void function(GUnixMountEntry* mountEntry) c_g_unix_mount_free;
	gint function(GUnixMountEntry* mount1, GUnixMountEntry* mount2) c_g_unix_mount_compare;
	char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_mount_path;
	char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_device_path;
	char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_get_fs_type;
	gboolean function(GUnixMountEntry* mountEntry) c_g_unix_mount_is_readonly;
	gboolean function(GUnixMountEntry* mountEntry) c_g_unix_mount_is_system_internal;
	GIcon* function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_icon;
	GIcon* function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_symbolic_icon;
	char* function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_name;
	gboolean function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_can_eject;
	gboolean function(GUnixMountEntry* mountEntry) c_g_unix_mount_guess_should_display;
	GList* function(guint64* timeRead) c_g_unix_mount_points_get;
	GList* function(guint64* timeRead) c_g_unix_mounts_get;
	GUnixMountEntry* function(char* mountPath, guint64* timeRead) c_g_unix_mount_at;
	gboolean function(guint64 time) c_g_unix_mounts_changed_since;
	gboolean function(guint64 time) c_g_unix_mount_points_changed_since;
	gboolean function(char* mountPath) c_g_unix_is_mount_path_system_internal;

	// gio.UnixMountPoint

	void function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_free;
	gint function(GUnixMountPoint* mount1, GUnixMountPoint* mount2) c_g_unix_mount_point_compare;
	char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_mount_path;
	char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_device_path;
	char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_fs_type;
	char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_get_options;
	gboolean function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_is_readonly;
	gboolean function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_is_user_mountable;
	gboolean function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_is_loopback;
	GIcon* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_icon;
	GIcon* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_symbolic_icon;
	char* function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_name;
	gboolean function(GUnixMountPoint* mountPoint) c_g_unix_mount_point_guess_can_eject;

	// gio.UnixMountMonitor

	GUnixMountMonitor* function() c_g_unix_mount_monitor_new;
	void function(GUnixMountMonitor* mountMonitor, int limitMsec) c_g_unix_mount_monitor_set_rate_limit;

	// gio.IconT


	// gio.IconT

	guint function(void* icon) c_g_icon_hash;
	gboolean function(GIcon* icon1, GIcon* icon2) c_g_icon_equal;
	gchar* function(GIcon* icon) c_g_icon_to_string;
	GIcon* function(gchar* str, GError** error) c_g_icon_new_for_string;

	// gio.Icon


	// gio.FileIcon

	GIcon* function(GFile* file) c_g_file_icon_new;
	GFile* function(GFileIcon* icon) c_g_file_icon_get_file;

	// gio.LoadableIconT


	// gio.LoadableIconT

	GInputStream* function(GLoadableIcon* icon, int size, char** type, GCancellable* cancellable, GError** error) c_g_loadable_icon_load;
	void function(GLoadableIcon* icon, int size, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_loadable_icon_load_async;
	GInputStream* function(GLoadableIcon* icon, GAsyncResult* res, char** type, GError** error) c_g_loadable_icon_load_finish;

	// gio.ThemedIcon

	GIcon* function(char* iconname) c_g_themed_icon_new;
	GIcon* function(char** iconnames, int len) c_g_themed_icon_new_from_names;
	GIcon* function(char* iconname) c_g_themed_icon_new_with_default_fallbacks;
	void function(GThemedIcon* icon, char* iconname) c_g_themed_icon_prepend_name;
	void function(GThemedIcon* icon, char* iconname) c_g_themed_icon_append_name;
	gchar** function(GThemedIcon* icon) c_g_themed_icon_get_names;

	// gio.EmblemedIcon

	GIcon* function(GIcon* icon, GEmblem* emblem) c_g_emblemed_icon_new;
	GIcon* function(GEmblemedIcon* emblemed) c_g_emblemed_icon_get_icon;
	GList* function(GEmblemedIcon* emblemed) c_g_emblemed_icon_get_emblems;
	void function(GEmblemedIcon* emblemed, GEmblem* emblem) c_g_emblemed_icon_add_emblem;
	void function(GEmblemedIcon* emblemed) c_g_emblemed_icon_clear_emblems;

	// gio.Emblem

	GEmblem* function(GIcon* icon) c_g_emblem_new;
	GEmblem* function(GIcon* icon, GEmblemOrigin origin) c_g_emblem_new_with_origin;
	GIcon* function(GEmblem* emblem) c_g_emblem_get_icon;
	GEmblemOrigin function(GEmblem* emblem) c_g_emblem_get_origin;

	// gio.InitableT


	// gio.InitableT

	gboolean function(GInitable* initable, GCancellable* cancellable, GError** error) c_g_initable_init;
	gpointer function(GType objectType, GCancellable* cancellable, GError** error, gchar* firstPropertyName, ... ) c_g_initable_new;
	GObject* function(GType objectType, gchar* firstPropertyName, va_list varArgs, GCancellable* cancellable, GError** error) c_g_initable_new_valist;
	gpointer function(GType objectType, guint nParameters, GParameter* parameters, GCancellable* cancellable, GError** error) c_g_initable_newv;

	// gio.AsyncInitableT


	// gio.AsyncInitableT

	void function(GAsyncInitable* initable, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_async_initable_init_async;
	gboolean function(GAsyncInitable* initable, GAsyncResult* res, GError** error) c_g_async_initable_init_finish;
	void function(GType objectType, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData, gchar* firstPropertyName, ... ) c_g_async_initable_new_async;
	GObject* function(GAsyncInitable* initable, GAsyncResult* res, GError** error) c_g_async_initable_new_finish;
	void function(GType objectType, gchar* firstPropertyName, va_list varArgs, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_async_initable_new_valist_async;
	void function(GType objectType, guint nParameters, GParameter* parameters, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_async_initable_newv_async;

	// gio.Socket

	GSocket* function(GSocketFamily family, GSocketType type, GSocketProtocol protocol, GError** error) c_g_socket_new;
	GSocket* function(gint fd, GError** error) c_g_socket_new_from_fd;
	gboolean function(GSocket* socket, GSocketAddress* address, gboolean allowReuse, GError** error) c_g_socket_bind;
	gboolean function(GSocket* socket, GError** error) c_g_socket_listen;
	GSocket* function(GSocket* socket, GCancellable* cancellable, GError** error) c_g_socket_accept;
	gboolean function(GSocket* socket, GSocketAddress* address, GCancellable* cancellable, GError** error) c_g_socket_connect;
	gboolean function(GSocket* socket, GError** error) c_g_socket_check_connect_result;
	gssize function(GSocket* socket, gchar* buffer, gsize size, GCancellable* cancellable, GError** error) c_g_socket_receive;
	gssize function(GSocket* socket, GSocketAddress** address, gchar* buffer, gsize size, GCancellable* cancellable, GError** error) c_g_socket_receive_from;
	gssize function(GSocket* socket, GSocketAddress** address, GInputVector* vectors, gint numVectors, GSocketControlMessage*** messages, gint* numMessages, gint* flags, GCancellable* cancellable, GError** error) c_g_socket_receive_message;
	gssize function(GSocket* socket, gchar* buffer, gsize size, gboolean blocking, GCancellable* cancellable, GError** error) c_g_socket_receive_with_blocking;
	gssize function(GSocket* socket, gchar* buffer, gsize size, GCancellable* cancellable, GError** error) c_g_socket_send;
	gssize function(GSocket* socket, GSocketAddress* address, gchar* buffer, gsize size, GCancellable* cancellable, GError** error) c_g_socket_send_to;
	gssize function(GSocket* socket, GSocketAddress* address, GOutputVector* vectors, gint numVectors, GSocketControlMessage** messages, gint numMessages, gint flags, GCancellable* cancellable, GError** error) c_g_socket_send_message;
	gssize function(GSocket* socket, gchar* buffer, gsize size, gboolean blocking, GCancellable* cancellable, GError** error) c_g_socket_send_with_blocking;
	gboolean function(GSocket* socket, GError** error) c_g_socket_close;
	gboolean function(GSocket* socket) c_g_socket_is_closed;
	gboolean function(GSocket* socket, gboolean shutdownRead, gboolean shutdownWrite, GError** error) c_g_socket_shutdown;
	gboolean function(GSocket* socket) c_g_socket_is_connected;
	GSource* function(GSocket* socket, GIOCondition condition, GCancellable* cancellable) c_g_socket_create_source;
	GIOCondition function(GSocket* socket, GIOCondition condition) c_g_socket_condition_check;
	gboolean function(GSocket* socket, GIOCondition condition, GCancellable* cancellable, GError** error) c_g_socket_condition_wait;
	gboolean function(GSocket* socket, GIOCondition condition, gint64 timeout, GCancellable* cancellable, GError** error) c_g_socket_condition_timed_wait;
	gssize function(GSocket* socket) c_g_socket_get_available_bytes;
	void function(GSocket* socket, gint backlog) c_g_socket_set_listen_backlog;
	gint function(GSocket* socket) c_g_socket_get_listen_backlog;
	gboolean function(GSocket* socket) c_g_socket_get_blocking;
	void function(GSocket* socket, gboolean blocking) c_g_socket_set_blocking;
	gboolean function(GSocket* socket) c_g_socket_get_keepalive;
	void function(GSocket* socket, gboolean keepalive) c_g_socket_set_keepalive;
	guint function(GSocket* socket) c_g_socket_get_timeout;
	void function(GSocket* socket, guint timeout) c_g_socket_set_timeout;
	void function(GSocket* socket, guint ttl) c_g_socket_set_ttl;
	guint function(GSocket* socket) c_g_socket_get_ttl;
	gboolean function(GSocket* socket) c_g_socket_get_broadcast;
	void function(GSocket* socket, gboolean broadcast) c_g_socket_set_broadcast;
	GSocketFamily function(GSocket* socket) c_g_socket_get_family;
	int function(GSocket* socket) c_g_socket_get_fd;
	GSocketAddress* function(GSocket* socket, GError** error) c_g_socket_get_local_address;
	GSocketProtocol function(GSocket* socket) c_g_socket_get_protocol;
	GSocketAddress* function(GSocket* socket, GError** error) c_g_socket_get_remote_address;
	GSocketType function(GSocket* socket) c_g_socket_get_socket_type;
	gboolean function(GSocket* socket) c_g_socket_speaks_ipv4;
	GCredentials* function(GSocket* socket, GError** error) c_g_socket_get_credentials;
	gboolean function(GSocket* socket, GInetAddress* group, gboolean sourceSpecific, gchar* iface, GError** error) c_g_socket_join_multicast_group;
	gboolean function(GSocket* socket, GInetAddress* group, gboolean sourceSpecific, gchar* iface, GError** error) c_g_socket_leave_multicast_group;
	gboolean function(GSocket* socket) c_g_socket_get_multicast_loopback;
	void function(GSocket* socket, gboolean loopback) c_g_socket_set_multicast_loopback;
	guint function(GSocket* socket) c_g_socket_get_multicast_ttl;
	void function(GSocket* socket, guint ttl) c_g_socket_set_multicast_ttl;

	// gio.InetAddress

	GInetAddress* function(gchar* string) c_g_inet_address_new_from_string;
	GInetAddress* function(guint8* bytes, GSocketFamily family) c_g_inet_address_new_from_bytes;
	GInetAddress* function(GSocketFamily family) c_g_inet_address_new_any;
	GInetAddress* function(GSocketFamily family) c_g_inet_address_new_loopback;
	gboolean function(GInetAddress* address, GInetAddress* otherAddress) c_g_inet_address_equal;
	guint8* function(GInetAddress* address) c_g_inet_address_to_bytes;
	gsize function(GInetAddress* address) c_g_inet_address_get_native_size;
	gchar* function(GInetAddress* address) c_g_inet_address_to_string;
	GSocketFamily function(GInetAddress* address) c_g_inet_address_get_family;
	gboolean function(GInetAddress* address) c_g_inet_address_get_is_any;
	gboolean function(GInetAddress* address) c_g_inet_address_get_is_loopback;
	gboolean function(GInetAddress* address) c_g_inet_address_get_is_link_local;
	gboolean function(GInetAddress* address) c_g_inet_address_get_is_site_local;
	gboolean function(GInetAddress* address) c_g_inet_address_get_is_multicast;
	gboolean function(GInetAddress* address) c_g_inet_address_get_is_mc_link_local;
	gboolean function(GInetAddress* address) c_g_inet_address_get_is_mc_node_local;
	gboolean function(GInetAddress* address) c_g_inet_address_get_is_mc_site_local;
	gboolean function(GInetAddress* address) c_g_inet_address_get_is_mc_org_local;
	gboolean function(GInetAddress* address) c_g_inet_address_get_is_mc_global;

	// gio.InetAddressMask

	GInetAddressMask* function(GInetAddress* addr, guint length, GError** error) c_g_inet_address_mask_new;
	GInetAddressMask* function(gchar* maskString, GError** error) c_g_inet_address_mask_new_from_string;
	gchar* function(GInetAddressMask* mask) c_g_inet_address_mask_to_string;
	GSocketFamily function(GInetAddressMask* mask) c_g_inet_address_mask_get_family;
	GInetAddress* function(GInetAddressMask* mask) c_g_inet_address_mask_get_address;
	guint function(GInetAddressMask* mask) c_g_inet_address_mask_get_length;
	gboolean function(GInetAddressMask* mask, GInetAddress* address) c_g_inet_address_mask_matches;
	gboolean function(GInetAddressMask* mask, GInetAddressMask* mask2) c_g_inet_address_mask_equal;

	// gio.SocketAddress

	GSocketAddress* function(void* native, gsize len) c_g_socket_address_new_from_native;
	GSocketFamily function(GSocketAddress* address) c_g_socket_address_get_family;
	gboolean function(GSocketAddress* address, void* dest, gsize destlen, GError** error) c_g_socket_address_to_native;
	gssize function(GSocketAddress* address) c_g_socket_address_get_native_size;

	// gio.InetSocketAddress

	GSocketAddress* function(GInetAddress* address, guint16 port) c_g_inet_socket_address_new;
	GInetAddress* function(GInetSocketAddress* address) c_g_inet_socket_address_get_address;
	guint16 function(GInetSocketAddress* address) c_g_inet_socket_address_get_port;
	guint32 function(GInetSocketAddress* address) c_g_inet_socket_address_get_flowinfo;
	guint32 function(GInetSocketAddress* address) c_g_inet_socket_address_get_scope_id;

	// gio.UnixSocketAddress

	GSocketAddress* function(gchar* path) c_g_unix_socket_address_new;
	GSocketAddress* function(gchar* path, gint pathLen) c_g_unix_socket_address_new_abstract;
	GSocketAddress* function(gchar* path, gint pathLen, GUnixSocketAddressType type) c_g_unix_socket_address_new_with_type;
	gboolean function(GUnixSocketAddress* address) c_g_unix_socket_address_get_is_abstract;
	GUnixSocketAddressType function(GUnixSocketAddress* address) c_g_unix_socket_address_get_address_type;
	char* function(GUnixSocketAddress* address) c_g_unix_socket_address_get_path;
	gsize function(GUnixSocketAddress* address) c_g_unix_socket_address_get_path_len;
	gboolean function() c_g_unix_socket_address_abstract_names_supported;

	// gio.SocketControlMessage

	GSocketControlMessage* function(int level, int type, gsize size, void* data) c_g_socket_control_message_deserialize;
	int function(GSocketControlMessage* message) c_g_socket_control_message_get_level;
	int function(GSocketControlMessage* message) c_g_socket_control_message_get_msg_type;
	gsize function(GSocketControlMessage* message) c_g_socket_control_message_get_size;
	void function(GSocketControlMessage* message, void* data) c_g_socket_control_message_serialize;

	// gio.UnixFDList

	GUnixFDList* function(gint* fds, gint nFds) c_g_unix_fd_list_new_from_array;
	GUnixFDList* function() c_g_unix_fd_list_new;
	gint function(GUnixFDList* list) c_g_unix_fd_list_get_length;
	gint function(GUnixFDList* list, gint index, GError** error) c_g_unix_fd_list_get;
	gint* function(GUnixFDList* list, gint* length) c_g_unix_fd_list_peek_fds;
	gint* function(GUnixFDList* list, gint* length) c_g_unix_fd_list_steal_fds;
	gint function(GUnixFDList* list, gint fd, GError** error) c_g_unix_fd_list_append;

	// gio.UnixFDMessage

	GSocketControlMessage* function(GUnixFDList* fdList) c_g_unix_fd_message_new_with_fd_list;
	GSocketControlMessage* function() c_g_unix_fd_message_new;
	GUnixFDList* function(GUnixFDMessage* message) c_g_unix_fd_message_get_fd_list;
	gboolean function(GUnixFDMessage* message, gint fd, GError** error) c_g_unix_fd_message_append_fd;
	gint* function(GUnixFDMessage* message, gint* length) c_g_unix_fd_message_steal_fds;

	// gio.Credentials

	GCredentials* function() c_g_credentials_new;
	gchar* function(GCredentials* credentials) c_g_credentials_to_string;
	gpointer function(GCredentials* credentials, GCredentialsType nativeType) c_g_credentials_get_native;
	void function(GCredentials* credentials, GCredentialsType nativeType, void* native) c_g_credentials_set_native;
	gboolean function(GCredentials* credentials, GCredentials* otherCredentials, GError** error) c_g_credentials_is_same_user;
	uid_t function(GCredentials* credentials, GError** error) c_g_credentials_get_unix_user;
	gboolean function(GCredentials* credentials, uid_t uid, GError** error) c_g_credentials_set_unix_user;

	// gio.UnixCredentialsMessage

	GSocketControlMessage* function() c_g_unix_credentials_message_new;
	GSocketControlMessage* function(GCredentials* credentials) c_g_unix_credentials_message_new_with_credentials;
	GCredentials* function(GUnixCredentialsMessage* message) c_g_unix_credentials_message_get_credentials;
	gboolean function() c_g_unix_credentials_message_is_supported;

	// gio.ProxyT


	// gio.ProxyT

	GIOStream* function(GProxy* proxy, GIOStream* connection, GProxyAddress* proxyAddress, GCancellable* cancellable, GError** error) c_g_proxy_connect;
	void function(GProxy* proxy, GIOStream* connection, GProxyAddress* proxyAddress, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_proxy_connect_async;
	GIOStream* function(GProxy* proxy, GAsyncResult* result, GError** error) c_g_proxy_connect_finish;
	GProxy* function(gchar* protocol) c_g_proxy_get_default_for_protocol;
	gboolean function(GProxy* proxy) c_g_proxy_supports_hostname;

	// gio.Proxy


	// gio.ProxyAddress

	gchar* function(GProxyAddress* proxy) c_g_proxy_address_get_destination_protocol;
	gchar* function(GProxyAddress* proxy) c_g_proxy_address_get_destination_hostname;
	guint16 function(GProxyAddress* proxy) c_g_proxy_address_get_destination_port;
	gchar* function(GProxyAddress* proxy) c_g_proxy_address_get_password;
	gchar* function(GProxyAddress* proxy) c_g_proxy_address_get_protocol;
	gchar* function(GProxyAddress* proxy) c_g_proxy_address_get_username;
	gchar* function(GProxyAddress* proxy) c_g_proxy_address_get_uri;
	GSocketAddress* function(GInetAddress* inetaddr, guint16 port, gchar* protocol, gchar* destHostname, guint16 destPort, gchar* username, gchar* password) c_g_proxy_address_new;

	// gio.SocketClient

	GSocketClient* function() c_g_socket_client_new;
	GSocketConnection* function(GSocketClient* client, GSocketConnectable* connectable, GCancellable* cancellable, GError** error) c_g_socket_client_connect;
	void function(GSocketClient* client, GSocketConnectable* connectable, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_client_connect_async;
	GSocketConnection* function(GSocketClient* client, GAsyncResult* result, GError** error) c_g_socket_client_connect_finish;
	GSocketConnection* function(GSocketClient* client, gchar* hostAndPort, guint16 defaultPort, GCancellable* cancellable, GError** error) c_g_socket_client_connect_to_host;
	void function(GSocketClient* client, gchar* hostAndPort, guint16 defaultPort, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_client_connect_to_host_async;
	GSocketConnection* function(GSocketClient* client, GAsyncResult* result, GError** error) c_g_socket_client_connect_to_host_finish;
	GSocketConnection* function(GSocketClient* client, gchar* domain, gchar* service, GCancellable* cancellable, GError** error) c_g_socket_client_connect_to_service;
	void function(GSocketClient* client, gchar* domain, gchar* service, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_client_connect_to_service_async;
	GSocketConnection* function(GSocketClient* client, GAsyncResult* result, GError** error) c_g_socket_client_connect_to_service_finish;
	GSocketConnection* function(GSocketClient* client, gchar* uri, guint16 defaultPort, GCancellable* cancellable, GError** error) c_g_socket_client_connect_to_uri;
	void function(GSocketClient* client, gchar* uri, guint16 defaultPort, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_client_connect_to_uri_async;
	GSocketConnection* function(GSocketClient* client, GAsyncResult* result, GError** error) c_g_socket_client_connect_to_uri_finish;
	void function(GSocketClient* client, GSocketFamily family) c_g_socket_client_set_family;
	void function(GSocketClient* client, GSocketAddress* address) c_g_socket_client_set_local_address;
	void function(GSocketClient* client, GSocketProtocol protocol) c_g_socket_client_set_protocol;
	void function(GSocketClient* client, GSocketType type) c_g_socket_client_set_socket_type;
	void function(GSocketClient* client, guint timeout) c_g_socket_client_set_timeout;
	void function(GSocketClient* client, gboolean enable) c_g_socket_client_set_enable_proxy;
	void function(GSocketClient* client, gboolean tls) c_g_socket_client_set_tls;
	void function(GSocketClient* client, GTlsCertificateFlags flags) c_g_socket_client_set_tls_validation_flags;
	GSocketFamily function(GSocketClient* client) c_g_socket_client_get_family;
	GSocketAddress* function(GSocketClient* client) c_g_socket_client_get_local_address;
	GSocketProtocol function(GSocketClient* client) c_g_socket_client_get_protocol;
	GSocketType function(GSocketClient* client) c_g_socket_client_get_socket_type;
	guint function(GSocketClient* client) c_g_socket_client_get_timeout;
	gboolean function(GSocketClient* client) c_g_socket_client_get_enable_proxy;
	gboolean function(GSocketClient* client) c_g_socket_client_get_tls;
	GTlsCertificateFlags function(GSocketClient* client) c_g_socket_client_get_tls_validation_flags;
	void function(GSocketClient* client, gchar* protocol) c_g_socket_client_add_application_proxy;

	// gio.SocketConnection

	gboolean function(GSocketConnection* connection, GSocketAddress* address, GCancellable* cancellable, GError** error) c_g_socket_connection_connect;
	void function(GSocketConnection* connection, GSocketAddress* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_connection_connect_async;
	gboolean function(GSocketConnection* connection, GAsyncResult* result, GError** error) c_g_socket_connection_connect_finish;
	gboolean function(GSocketConnection* connection) c_g_socket_connection_is_connected;
	GSocketAddress* function(GSocketConnection* connection, GError** error) c_g_socket_connection_get_local_address;
	GSocketAddress* function(GSocketConnection* connection, GError** error) c_g_socket_connection_get_remote_address;
	GSocket* function(GSocketConnection* connection) c_g_socket_connection_get_socket;
	GSocketConnection* function(GSocket* socket) c_g_socket_connection_factory_create_connection;
	GType function(GSocketFamily family, GSocketType type, gint protocolId) c_g_socket_connection_factory_lookup_type;
	void function(GType gType, GSocketFamily family, GSocketType type, gint protocol) c_g_socket_connection_factory_register_type;

	// gio.UnixConnection

	gint function(GUnixConnection* connection, GCancellable* cancellable, GError** error) c_g_unix_connection_receive_fd;
	gboolean function(GUnixConnection* connection, gint fd, GCancellable* cancellable, GError** error) c_g_unix_connection_send_fd;
	GCredentials* function(GUnixConnection* connection, GCancellable* cancellable, GError** error) c_g_unix_connection_receive_credentials;
	void function(GUnixConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_unix_connection_receive_credentials_async;
	GCredentials* function(GUnixConnection* connection, GAsyncResult* result, GError** error) c_g_unix_connection_receive_credentials_finish;
	gboolean function(GUnixConnection* connection, GCancellable* cancellable, GError** error) c_g_unix_connection_send_credentials;
	void function(GUnixConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_unix_connection_send_credentials_async;
	gboolean function(GUnixConnection* connection, GAsyncResult* result, GError** error) c_g_unix_connection_send_credentials_finish;

	// gio.TcpConnection

	void function(GTcpConnection* connection, gboolean gracefulDisconnect) c_g_tcp_connection_set_graceful_disconnect;
	gboolean function(GTcpConnection* connection) c_g_tcp_connection_get_graceful_disconnect;

	// gio.SocketListener

	GSocketListener* function() c_g_socket_listener_new;
	gboolean function(GSocketListener* listener, GSocket* socket, GObject* sourceObject, GError** error) c_g_socket_listener_add_socket;
	gboolean function(GSocketListener* listener, GSocketAddress* address, GSocketType type, GSocketProtocol protocol, GObject* sourceObject, GSocketAddress** effectiveAddress, GError** error) c_g_socket_listener_add_address;
	gboolean function(GSocketListener* listener, guint16 port, GObject* sourceObject, GError** error) c_g_socket_listener_add_inet_port;
	guint16 function(GSocketListener* listener, GObject* sourceObject, GError** error) c_g_socket_listener_add_any_inet_port;
	GSocketConnection* function(GSocketListener* listener, GObject** sourceObject, GCancellable* cancellable, GError** error) c_g_socket_listener_accept;
	void function(GSocketListener* listener, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_listener_accept_async;
	GSocketConnection* function(GSocketListener* listener, GAsyncResult* result, GObject** sourceObject, GError** error) c_g_socket_listener_accept_finish;
	GSocket* function(GSocketListener* listener, GObject** sourceObject, GCancellable* cancellable, GError** error) c_g_socket_listener_accept_socket;
	void function(GSocketListener* listener, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_socket_listener_accept_socket_async;
	GSocket* function(GSocketListener* listener, GAsyncResult* result, GObject** sourceObject, GError** error) c_g_socket_listener_accept_socket_finish;
	void function(GSocketListener* listener) c_g_socket_listener_close;
	void function(GSocketListener* listener, int listenBacklog) c_g_socket_listener_set_backlog;

	// gio.SocketService

	GSocketService* function() c_g_socket_service_new;
	void function(GSocketService* service) c_g_socket_service_start;
	void function(GSocketService* service) c_g_socket_service_stop;
	gboolean function(GSocketService* service) c_g_socket_service_is_active;

	// gio.ThreadedSocketService

	GSocketService* function(int maxThreads) c_g_threaded_socket_service_new;

	// gio.NetworkMonitorT


	// gio.NetworkMonitorT

	GNetworkMonitor* function() c_g_network_monitor_get_default;
	gboolean function(GNetworkMonitor* monitor) c_g_network_monitor_get_network_available;
	gboolean function(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GError** error) c_g_network_monitor_can_reach;
	void function(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_network_monitor_can_reach_async;
	gboolean function(GNetworkMonitor* monitor, GAsyncResult* result, GError** error) c_g_network_monitor_can_reach_finish;

	// gio.NetworkMonitor


	// gio.TlsCertificate

	GTlsCertificate* function(gchar* data, gssize length, GError** error) c_g_tls_certificate_new_from_pem;
	GTlsCertificate* function(gchar* file, GError** error) c_g_tls_certificate_new_from_file;
	GTlsCertificate* function(gchar* certFile, gchar* keyFile, GError** error) c_g_tls_certificate_new_from_files;
	GList* function(gchar* file, GError** error) c_g_tls_certificate_list_new_from_file;
	GTlsCertificate* function(GTlsCertificate* cert) c_g_tls_certificate_get_issuer;
	GTlsCertificateFlags function(GTlsCertificate* cert, GSocketConnectable* identity, GTlsCertificate* trustedCa) c_g_tls_certificate_verify;
	gboolean function(GTlsCertificate* certOne, GTlsCertificate* certTwo) c_g_tls_certificate_is_same;

	// gio.TlsConnection

	void function(GTlsConnection* conn, GTlsCertificate* certificate) c_g_tls_connection_set_certificate;
	GTlsCertificate* function(GTlsConnection* conn) c_g_tls_connection_get_certificate;
	GTlsCertificate* function(GTlsConnection* conn) c_g_tls_connection_get_peer_certificate;
	GTlsCertificateFlags function(GTlsConnection* conn) c_g_tls_connection_get_peer_certificate_errors;
	void function(GTlsConnection* conn, gboolean requireCloseNotify) c_g_tls_connection_set_require_close_notify;
	gboolean function(GTlsConnection* conn) c_g_tls_connection_get_require_close_notify;
	void function(GTlsConnection* conn, GTlsRehandshakeMode mode) c_g_tls_connection_set_rehandshake_mode;
	GTlsRehandshakeMode function(GTlsConnection* conn) c_g_tls_connection_get_rehandshake_mode;
	void function(GTlsConnection* conn, gboolean useSystemCertdb) c_g_tls_connection_set_use_system_certdb;
	gboolean function(GTlsConnection* conn) c_g_tls_connection_get_use_system_certdb;
	GTlsDatabase* function(GTlsConnection* conn) c_g_tls_connection_get_database;
	void function(GTlsConnection* conn, GTlsDatabase* database) c_g_tls_connection_set_database;
	GTlsInteraction* function(GTlsConnection* conn) c_g_tls_connection_get_interaction;
	void function(GTlsConnection* conn, GTlsInteraction* interaction) c_g_tls_connection_set_interaction;
	gboolean function(GTlsConnection* conn, GCancellable* cancellable, GError** error) c_g_tls_connection_handshake;
	void function(GTlsConnection* conn, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_connection_handshake_async;
	gboolean function(GTlsConnection* conn, GAsyncResult* result, GError** error) c_g_tls_connection_handshake_finish;
	gboolean function(GTlsConnection* conn, GTlsCertificate* peerCert, GTlsCertificateFlags errors) c_g_tls_connection_emit_accept_certificate;

	// gio.TlsClientConnection

	GIOStream* function(GIOStream* baseIoStream, GSocketConnectable* serverIdentity, GError** error) c_g_tls_client_connection_new;
	void function(GTlsClientConnection* conn, GSocketConnectable* identity) c_g_tls_client_connection_set_server_identity;
	GSocketConnectable* function(GTlsClientConnection* conn) c_g_tls_client_connection_get_server_identity;
	void function(GTlsClientConnection* conn, GTlsCertificateFlags flags) c_g_tls_client_connection_set_validation_flags;
	GTlsCertificateFlags function(GTlsClientConnection* conn) c_g_tls_client_connection_get_validation_flags;
	void function(GTlsClientConnection* conn, gboolean useSsl3) c_g_tls_client_connection_set_use_ssl3;
	gboolean function(GTlsClientConnection* conn) c_g_tls_client_connection_get_use_ssl3;
	GList* function(GTlsClientConnection* conn) c_g_tls_client_connection_get_accepted_cas;

	// gio.TlsServerConnection

	GIOStream* function(GIOStream* baseIoStream, GTlsCertificate* certificate, GError** error) c_g_tls_server_connection_new;

	// gio.TlsBackend

	GTlsBackend* function() c_g_tls_backend_get_default;
	gboolean function(GTlsBackend* backend) c_g_tls_backend_supports_tls;
	GTlsDatabase* function(GTlsBackend* backend) c_g_tls_backend_get_default_database;
	GType function(GTlsBackend* backend) c_g_tls_backend_get_certificate_type;
	GType function(GTlsBackend* backend) c_g_tls_backend_get_client_connection_type;
	GType function(GTlsBackend* backend) c_g_tls_backend_get_server_connection_type;
	GType function(GTlsBackend* backend) c_g_tls_backend_get_file_database_type;

	// gio.TlsDatabase

	GTlsCertificateFlags function(GTlsDatabase* self, GTlsCertificate* chain, gchar* purpose, GSocketConnectable* identity, GTlsInteraction* interaction, GTlsDatabaseVerifyFlags flags, GCancellable* cancellable, GError** error) c_g_tls_database_verify_chain;
	void function(GTlsDatabase* self, GTlsCertificate* chain, gchar* purpose, GSocketConnectable* identity, GTlsInteraction* interaction, GTlsDatabaseVerifyFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_database_verify_chain_async;
	GTlsCertificateFlags function(GTlsDatabase* self, GAsyncResult* result, GError** error) c_g_tls_database_verify_chain_finish;
	GTlsCertificate* function(GTlsDatabase* self, GTlsCertificate* certificate, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** error) c_g_tls_database_lookup_certificate_issuer;
	void function(GTlsDatabase* self, GTlsCertificate* certificate, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_database_lookup_certificate_issuer_async;
	GTlsCertificate* function(GTlsDatabase* self, GAsyncResult* result, GError** error) c_g_tls_database_lookup_certificate_issuer_finish;
	GList* function(GTlsDatabase* self, GByteArray* issuerRawDn, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** error) c_g_tls_database_lookup_certificates_issued_by;
	void function(GTlsDatabase* self, GByteArray* issuerRawDn, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_database_lookup_certificates_issued_by_async;
	GList* function(GTlsDatabase* self, GAsyncResult* result, GError** error) c_g_tls_database_lookup_certificates_issued_by_finish;
	gchar* function(GTlsDatabase* self, GTlsCertificate* certificate) c_g_tls_database_create_certificate_handle;
	GTlsCertificate* function(GTlsDatabase* self, gchar* handle, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** error) c_g_tls_database_lookup_certificate_for_handle;
	void function(GTlsDatabase* self, gchar* handle, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_database_lookup_certificate_for_handle_async;
	GTlsCertificate* function(GTlsDatabase* self, GAsyncResult* result, GError** error) c_g_tls_database_lookup_certificate_for_handle_finish;

	// gio.TlsFileDatabase

	GTlsDatabase* function(gchar* anchors, GError** error) c_g_tls_file_database_new;

	// gio.TlsInteraction

	GTlsInteractionResult function(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GError** error) c_g_tls_interaction_ask_password;
	void function(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_tls_interaction_ask_password_async;
	GTlsInteractionResult function(GTlsInteraction* interaction, GAsyncResult* result, GError** error) c_g_tls_interaction_ask_password_finish;
	GTlsInteractionResult function(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GError** error) c_g_tls_interaction_invoke_ask_password;

	// gio.TlsPassword

	GTlsPassword* function(GTlsPasswordFlags flags, gchar* description) c_g_tls_password_new;
	guchar* function(GTlsPassword* password, gsize* length) c_g_tls_password_get_value;
	void function(GTlsPassword* password, guchar* value, gssize length) c_g_tls_password_set_value;
	void function(GTlsPassword* password, guchar* value, gssize length, GDestroyNotify destroy) c_g_tls_password_set_value_full;
	gchar* function(GTlsPassword* password) c_g_tls_password_get_description;
	void function(GTlsPassword* password, gchar* description) c_g_tls_password_set_description;
	GTlsPasswordFlags function(GTlsPassword* password) c_g_tls_password_get_flags;
	void function(GTlsPassword* password, GTlsPasswordFlags flags) c_g_tls_password_set_flags;
	gchar* function(GTlsPassword* password) c_g_tls_password_get_warning;
	void function(GTlsPassword* password, gchar* warning) c_g_tls_password_set_warning;

	// gio.Resolver

	GResolver* function() c_g_resolver_get_default;
	void function(GResolver* resolver) c_g_resolver_set_default;
	GList* function(GResolver* resolver, gchar* hostname, GCancellable* cancellable, GError** error) c_g_resolver_lookup_by_name;
	void function(GResolver* resolver, gchar* hostname, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_resolver_lookup_by_name_async;
	GList* function(GResolver* resolver, GAsyncResult* result, GError** error) c_g_resolver_lookup_by_name_finish;
	void function(GList* addresses) c_g_resolver_free_addresses;
	gchar* function(GResolver* resolver, GInetAddress* address, GCancellable* cancellable, GError** error) c_g_resolver_lookup_by_address;
	void function(GResolver* resolver, GInetAddress* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_resolver_lookup_by_address_async;
	gchar* function(GResolver* resolver, GAsyncResult* result, GError** error) c_g_resolver_lookup_by_address_finish;
	GList* function(GResolver* resolver, gchar* service, gchar* protocol, gchar* domain, GCancellable* cancellable, GError** error) c_g_resolver_lookup_service;
	void function(GResolver* resolver, gchar* service, gchar* protocol, gchar* domain, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_resolver_lookup_service_async;
	GList* function(GResolver* resolver, GAsyncResult* result, GError** error) c_g_resolver_lookup_service_finish;
	void function(GList* targets) c_g_resolver_free_targets;
	GList* function(GResolver* resolver, gchar* rrname, GResolverRecordType recordType, GCancellable* cancellable, GError** error) c_g_resolver_lookup_records;
	void function(GResolver* resolver, gchar* rrname, GResolverRecordType recordType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_resolver_lookup_records_async;
	GList* function(GResolver* resolver, GAsyncResult* result, GError** error) c_g_resolver_lookup_records_finish;

	// gio.ProxyResolverT


	// gio.ProxyResolverT

	GProxyResolver* function() c_g_proxy_resolver_get_default;
	gboolean function(GProxyResolver* resolver) c_g_proxy_resolver_is_supported;
	gchar** function(GProxyResolver* resolver, gchar* uri, GCancellable* cancellable, GError** error) c_g_proxy_resolver_lookup;
	void function(GProxyResolver* resolver, gchar* uri, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_proxy_resolver_lookup_async;
	gchar** function(GProxyResolver* resolver, GAsyncResult* result, GError** error) c_g_proxy_resolver_lookup_finish;

	// gio.ProxyResolver


	// gio.SocketConnectableT


	// gio.SocketConnectableT

	GSocketAddressEnumerator* function(GSocketConnectable* connectable) c_g_socket_connectable_enumerate;
	GSocketAddressEnumerator* function(GSocketConnectable* connectable) c_g_socket_connectable_proxy_enumerate;

	// gio.SocketConnectable


	// gio.SocketAddressEnumerator


	// gio.NetworkAddress

	GSocketConnectable* function(gchar* hostname, guint16 port) c_g_network_address_new;
	gchar* function(GNetworkAddress* addr) c_g_network_address_get_hostname;
	guint16 function(GNetworkAddress* addr) c_g_network_address_get_port;
	gchar* function(GNetworkAddress* addr) c_g_network_address_get_scheme;
	GSocketConnectable* function(gchar* hostAndPort, guint16 defaultPort, GError** error) c_g_network_address_parse;
	GSocketConnectable* function(gchar* uri, guint16 defaultPort, GError** error) c_g_network_address_parse_uri;

	// gio.NetworkService

	GSocketConnectable* function(gchar* service, gchar* protocol, gchar* domain) c_g_network_service_new;
	gchar* function(GNetworkService* srv) c_g_network_service_get_service;
	gchar* function(GNetworkService* srv) c_g_network_service_get_protocol;
	gchar* function(GNetworkService* srv) c_g_network_service_get_domain;
	gchar* function(GNetworkService* srv) c_g_network_service_get_scheme;
	void function(GNetworkService* srv, gchar* scheme) c_g_network_service_set_scheme;

	// gio.SrvTarget

	GSrvTarget* function(gchar* hostname, guint16 port, guint16 priority, guint16 weight) c_g_srv_target_new;
	GSrvTarget* function(GSrvTarget* target) c_g_srv_target_copy;
	void function(GSrvTarget* target) c_g_srv_target_free;
	gchar* function(GSrvTarget* target) c_g_srv_target_get_hostname;
	guint16 function(GSrvTarget* target) c_g_srv_target_get_port;
	guint16 function(GSrvTarget* target) c_g_srv_target_get_priority;
	guint16 function(GSrvTarget* target) c_g_srv_target_get_weight;
	GList* function(GList* targets) c_g_srv_target_list_sort;

	// gio.DBusUtilities

	gchar* function() c_g_dbus_generate_guid;
	gboolean function(gchar* string) c_g_dbus_is_guid;
	gboolean function(gchar* string) c_g_dbus_is_name;
	gboolean function(gchar* string) c_g_dbus_is_unique_name;
	gboolean function(gchar* string) c_g_dbus_is_member_name;
	gboolean function(gchar* string) c_g_dbus_is_interface_name;
	GVariant* function(GValue* gvalue, GVariantType* type) c_g_dbus_gvalue_to_gvariant;
	void function(GVariant* value, GValue* outGvalue) c_g_dbus_gvariant_to_gvalue;
	gboolean function(gchar* string) c_g_dbus_is_address;
	gboolean function(gchar* string, GError** error) c_g_dbus_is_supported_address;
	void function(gchar* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_address_get_stream;
	GIOStream* function(GAsyncResult* res, gchar** outGuid, GError** error) c_g_dbus_address_get_stream_finish;
	GIOStream* function(gchar* address, gchar** outGuid, GCancellable* cancellable, GError** error) c_g_dbus_address_get_stream_sync;
	gchar* function(GBusType busType, GCancellable* cancellable, GError** error) c_g_dbus_address_get_for_bus_sync;

	// gio.DBusAnnotationInfo

	gchar* function(GDBusAnnotationInfo** annotations, gchar* name) c_g_dbus_annotation_info_lookup;
	GDBusAnnotationInfo* function(GDBusAnnotationInfo* info) c_g_dbus_annotation_info_ref;
	void function(GDBusAnnotationInfo* info) c_g_dbus_annotation_info_unref;

	// gio.DBusArgInfo

	GDBusArgInfo* function(GDBusArgInfo* info) c_g_dbus_arg_info_ref;
	void function(GDBusArgInfo* info) c_g_dbus_arg_info_unref;

	// gio.DBusMethodInfo

	GDBusMethodInfo* function(GDBusMethodInfo* info) c_g_dbus_method_info_ref;
	void function(GDBusMethodInfo* info) c_g_dbus_method_info_unref;

	// gio.DBusSignalInfo

	GDBusSignalInfo* function(GDBusSignalInfo* info) c_g_dbus_signal_info_ref;
	void function(GDBusSignalInfo* info) c_g_dbus_signal_info_unref;

	// gio.DBusPropertyInfo

	GDBusPropertyInfo* function(GDBusPropertyInfo* info) c_g_dbus_property_info_ref;
	void function(GDBusPropertyInfo* info) c_g_dbus_property_info_unref;

	// gio.DBusInterfaceInfo

	GDBusMethodInfo* function(GDBusInterfaceInfo* info, gchar* name) c_g_dbus_interface_info_lookup_method;
	GDBusSignalInfo* function(GDBusInterfaceInfo* info, gchar* name) c_g_dbus_interface_info_lookup_signal;
	GDBusPropertyInfo* function(GDBusInterfaceInfo* info, gchar* name) c_g_dbus_interface_info_lookup_property;
	void function(GDBusInterfaceInfo* info) c_g_dbus_interface_info_cache_build;
	void function(GDBusInterfaceInfo* info) c_g_dbus_interface_info_cache_release;
	void function(GDBusInterfaceInfo* info, guint indent, GString* stringBuilder) c_g_dbus_interface_info_generate_xml;
	GDBusInterfaceInfo* function(GDBusInterfaceInfo* info) c_g_dbus_interface_info_ref;
	void function(GDBusInterfaceInfo* info) c_g_dbus_interface_info_unref;

	// gio.DBusNodeInfo

	GDBusNodeInfo* function(gchar* xmlData, GError** error) c_g_dbus_node_info_new_for_xml;
	GDBusInterfaceInfo* function(GDBusNodeInfo* info, gchar* name) c_g_dbus_node_info_lookup_interface;
	void function(GDBusNodeInfo* info, guint indent, GString* stringBuilder) c_g_dbus_node_info_generate_xml;
	GDBusNodeInfo* function(GDBusNodeInfo* info) c_g_dbus_node_info_ref;
	void function(GDBusNodeInfo* info) c_g_dbus_node_info_unref;

	// gio.DBusError

	gboolean function(GError* error) c_g_dbus_error_is_remote_error;
	gchar* function(GError* error) c_g_dbus_error_get_remote_error;
	gboolean function(GError* error) c_g_dbus_error_strip_remote_error;
	void function(gchar* errorDomainQuarkName, gsize* quarkVolatile, GDBusErrorEntry* entries, guint numEntries) c_g_dbus_error_register_error_domain;
	gboolean function(GQuark errorDomain, gint errorCode, gchar* dbusErrorName) c_g_dbus_error_register_error;
	gboolean function(GQuark errorDomain, gint errorCode, gchar* dbusErrorName) c_g_dbus_error_unregister_error;
	GError* function(gchar* dbusErrorName, gchar* dbusErrorMessage) c_g_dbus_error_new_for_dbus_error;
	void function(GError** error, gchar* dbusErrorName, gchar* dbusErrorMessage, gchar* format, ... ) c_g_dbus_error_set_dbus_error;
	void function(GError** error, gchar* dbusErrorName, gchar* dbusErrorMessage, gchar* format, va_list varArgs) c_g_dbus_error_set_dbus_error_valist;
	gchar* function(GError* error) c_g_dbus_error_encode_gerror;

	// gio.DBusMessage

	GDBusMessage* function() c_g_dbus_message_new;
	GDBusMessage* function(gchar* path, gchar* iface, gchar* signal) c_g_dbus_message_new_signal;
	GDBusMessage* function(gchar* name, gchar* path, gchar* iface, gchar* method) c_g_dbus_message_new_method_call;
	GDBusMessage* function(GDBusMessage* methodCallMessage) c_g_dbus_message_new_method_reply;
	GDBusMessage* function(GDBusMessage* methodCallMessage, gchar* errorName, gchar* errorMessageFormat, ... ) c_g_dbus_message_new_method_error;
	GDBusMessage* function(GDBusMessage* methodCallMessage, gchar* errorName, gchar* errorMessageFormat, va_list varArgs) c_g_dbus_message_new_method_error_valist;
	GDBusMessage* function(GDBusMessage* methodCallMessage, gchar* errorName, gchar* errorMessage) c_g_dbus_message_new_method_error_literal;
	gchar* function(GDBusMessage* message, guint indent) c_g_dbus_message_print;
	gboolean function(GDBusMessage* message) c_g_dbus_message_get_locked;
	void function(GDBusMessage* message) c_g_dbus_message_lock;
	GDBusMessage* function(GDBusMessage* message, GError** error) c_g_dbus_message_copy;
	GDBusMessageByteOrder function(GDBusMessage* message) c_g_dbus_message_get_byte_order;
	void function(GDBusMessage* message, GDBusMessageByteOrder byteOrder) c_g_dbus_message_set_byte_order;
	GDBusMessageType function(GDBusMessage* message) c_g_dbus_message_get_message_type;
	void function(GDBusMessage* message, GDBusMessageType type) c_g_dbus_message_set_message_type;
	guint32 function(GDBusMessage* message) c_g_dbus_message_get_serial;
	void function(GDBusMessage* message, guint32 serial) c_g_dbus_message_set_serial;
	GDBusMessageFlags function(GDBusMessage* message) c_g_dbus_message_get_flags;
	void function(GDBusMessage* message, GDBusMessageFlags flags) c_g_dbus_message_set_flags;
	GVariant* function(GDBusMessage* message) c_g_dbus_message_get_body;
	void function(GDBusMessage* message, GVariant* bod) c_g_dbus_message_set_body;
	GUnixFDList* function(GDBusMessage* message) c_g_dbus_message_get_unix_fd_list;
	void function(GDBusMessage* message, GUnixFDList* fdList) c_g_dbus_message_set_unix_fd_list;
	guint32 function(GDBusMessage* message) c_g_dbus_message_get_num_unix_fds;
	void function(GDBusMessage* message, guint32 value) c_g_dbus_message_set_num_unix_fds;
	guchar* function(GDBusMessage* message) c_g_dbus_message_get_header_fields;
	GVariant* function(GDBusMessage* message, GDBusMessageHeaderField headerField) c_g_dbus_message_get_header;
	void function(GDBusMessage* message, GDBusMessageHeaderField headerField, GVariant* value) c_g_dbus_message_set_header;
	gchar* function(GDBusMessage* message) c_g_dbus_message_get_destination;
	void function(GDBusMessage* message, gchar* value) c_g_dbus_message_set_destination;
	gchar* function(GDBusMessage* message) c_g_dbus_message_get_error_name;
	void function(GDBusMessage* message, gchar* value) c_g_dbus_message_set_error_name;
	gchar* function(GDBusMessage* message) c_g_dbus_message_get_interface;
	void function(GDBusMessage* message, gchar* value) c_g_dbus_message_set_interface;
	gchar* function(GDBusMessage* message) c_g_dbus_message_get_member;
	void function(GDBusMessage* message, gchar* value) c_g_dbus_message_set_member;
	gchar* function(GDBusMessage* message) c_g_dbus_message_get_path;
	void function(GDBusMessage* message, gchar* value) c_g_dbus_message_set_path;
	guint32 function(GDBusMessage* message) c_g_dbus_message_get_reply_serial;
	void function(GDBusMessage* message, guint32 value) c_g_dbus_message_set_reply_serial;
	gchar* function(GDBusMessage* message) c_g_dbus_message_get_sender;
	void function(GDBusMessage* message, gchar* value) c_g_dbus_message_set_sender;
	gchar* function(GDBusMessage* message) c_g_dbus_message_get_signature;
	void function(GDBusMessage* message, gchar* value) c_g_dbus_message_set_signature;
	gchar* function(GDBusMessage* message) c_g_dbus_message_get_arg0;
	guchar* function(GDBusMessage* message, gsize* outSize, GDBusCapabilityFlags capabilities, GError** error) c_g_dbus_message_to_blob;
	gssize function(guchar* blob, gsize blobLen, GError** error) c_g_dbus_message_bytes_needed;
	GDBusMessage* function(guchar* blob, gsize blobLen, GDBusCapabilityFlags capabilities, GError** error) c_g_dbus_message_new_from_blob;
	gboolean function(GDBusMessage* message, GError** error) c_g_dbus_message_to_gerror;

	// gio.DBusConnection

	void function(GBusType busType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_bus_get;
	GDBusConnection* function(GAsyncResult* res, GError** error) c_g_bus_get_finish;
	GDBusConnection* function(GBusType busType, GCancellable* cancellable, GError** error) c_g_bus_get_sync;
	void function(GIOStream* stream, gchar* guid, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_new;
	GDBusConnection* function(GAsyncResult* res, GError** error) c_g_dbus_connection_new_finish;
	GDBusConnection* function(GIOStream* stream, gchar* guid, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GError** error) c_g_dbus_connection_new_sync;
	void function(gchar* address, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_new_for_address;
	GDBusConnection* function(GAsyncResult* res, GError** error) c_g_dbus_connection_new_for_address_finish;
	GDBusConnection* function(gchar* address, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GError** error) c_g_dbus_connection_new_for_address_sync;
	void function(GDBusConnection* connection) c_g_dbus_connection_start_message_processing;
	void function(GDBusConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_close;
	gboolean function(GDBusConnection* connection, GAsyncResult* res, GError** error) c_g_dbus_connection_close_finish;
	gboolean function(GDBusConnection* connection, GCancellable* cancellable, GError** error) c_g_dbus_connection_close_sync;
	gboolean function(GDBusConnection* connection) c_g_dbus_connection_is_closed;
	void function(GDBusConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_flush;
	gboolean function(GDBusConnection* connection, GAsyncResult* res, GError** error) c_g_dbus_connection_flush_finish;
	gboolean function(GDBusConnection* connection, GCancellable* cancellable, GError** error) c_g_dbus_connection_flush_sync;
	gboolean function(GDBusConnection* connection) c_g_dbus_connection_get_exit_on_close;
	void function(GDBusConnection* connection, gboolean exitOnClose) c_g_dbus_connection_set_exit_on_close;
	GIOStream* function(GDBusConnection* connection) c_g_dbus_connection_get_stream;
	gchar* function(GDBusConnection* connection) c_g_dbus_connection_get_guid;
	gchar* function(GDBusConnection* connection) c_g_dbus_connection_get_unique_name;
	GDBusCapabilityFlags function(GDBusConnection* connection) c_g_dbus_connection_get_capabilities;
	GCredentials* function(GDBusConnection* connection) c_g_dbus_connection_get_peer_credentials;
	guint32 function(GDBusConnection* connection) c_g_dbus_connection_get_last_serial;
	void function(GDBusConnection* connection, gchar* busName, gchar* objectPath, gchar* interfaceName, gchar* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, gint timeoutMsec, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_call;
	GVariant* function(GDBusConnection* connection, GAsyncResult* res, GError** error) c_g_dbus_connection_call_finish;
	GVariant* function(GDBusConnection* connection, gchar* busName, gchar* objectPath, gchar* interfaceName, gchar* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, gint timeoutMsec, GCancellable* cancellable, GError** error) c_g_dbus_connection_call_sync;
	void function(GDBusConnection* connection, gchar* busName, gchar* objectPath, gchar* interfaceName, gchar* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, gint timeoutMsec, GUnixFDList* fdList, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_call_with_unix_fd_list;
	GVariant* function(GDBusConnection* connection, GUnixFDList** outFdList, GAsyncResult* res, GError** error) c_g_dbus_connection_call_with_unix_fd_list_finish;
	GVariant* function(GDBusConnection* connection, gchar* busName, gchar* objectPath, gchar* interfaceName, gchar* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, gint timeoutMsec, GUnixFDList* fdList, GUnixFDList** outFdList, GCancellable* cancellable, GError** error) c_g_dbus_connection_call_with_unix_fd_list_sync;
	gboolean function(GDBusConnection* connection, gchar* destinationBusName, gchar* objectPath, gchar* interfaceName, gchar* signalName, GVariant* parameters, GError** error) c_g_dbus_connection_emit_signal;
	guint function(GDBusConnection* connection, gchar* sender, gchar* interfaceName, gchar* member, gchar* objectPath, gchar* arg0, GDBusSignalFlags flags, GDBusSignalCallback callback, void* userData, GDestroyNotify userDataFreeFunc) c_g_dbus_connection_signal_subscribe;
	void function(GDBusConnection* connection, guint subscriptionId) c_g_dbus_connection_signal_unsubscribe;
	gboolean function(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, guint32* outSerial, GError** error) c_g_dbus_connection_send_message;
	void function(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, gint timeoutMsec, guint32* outSerial, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_connection_send_message_with_reply;
	GDBusMessage* function(GDBusConnection* connection, GAsyncResult* res, GError** error) c_g_dbus_connection_send_message_with_reply_finish;
	GDBusMessage* function(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, gint timeoutMsec, guint32* outSerial, GCancellable* cancellable, GError** error) c_g_dbus_connection_send_message_with_reply_sync;
	guint function(GDBusConnection* connection, GDBusMessageFilterFunction filterFunction, void* userData, GDestroyNotify userDataFreeFunc) c_g_dbus_connection_add_filter;
	void function(GDBusConnection* connection, guint filterId) c_g_dbus_connection_remove_filter;
	guint function(GDBusConnection* connection, gchar* objectPath, GDBusInterfaceInfo* interfaceInfo, GDBusInterfaceVTable* vtable, void* userData, GDestroyNotify userDataFreeFunc, GError** error) c_g_dbus_connection_register_object;
	gboolean function(GDBusConnection* connection, guint registrationId) c_g_dbus_connection_unregister_object;
	guint function(GDBusConnection* connection, gchar* objectPath, GDBusSubtreeVTable* vtable, GDBusSubtreeFlags flags, void* userData, GDestroyNotify userDataFreeFunc, GError** error) c_g_dbus_connection_register_subtree;
	gboolean function(GDBusConnection* connection, guint registrationId) c_g_dbus_connection_unregister_subtree;
	guint function(GDBusConnection* connection, gchar* objectPath, GActionGroup* actionGroup, GError** error) c_g_dbus_connection_export_action_group;
	void function(GDBusConnection* connection, guint exportId) c_g_dbus_connection_unexport_action_group;
	guint function(GDBusConnection* connection, gchar* objectPath, GMenuModel* menu, GError** error) c_g_dbus_connection_export_menu_model;
	void function(GDBusConnection* connection, guint exportId) c_g_dbus_connection_unexport_menu_model;

	// gio.DBusMethodInvocation

	gchar* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_sender;
	gchar* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_object_path;
	gchar* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_interface_name;
	gchar* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_method_name;
	GDBusMethodInfo* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_method_info;
	GDBusConnection* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_connection;
	GDBusMessage* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_message;
	GVariant* function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_parameters;
	gpointer function(GDBusMethodInvocation* invocation) c_g_dbus_method_invocation_get_user_data;
	void function(GDBusMethodInvocation* invocation, GVariant* parameters) c_g_dbus_method_invocation_return_value;
	void function(GDBusMethodInvocation* invocation, GQuark domain, gint code, gchar* format, ... ) c_g_dbus_method_invocation_return_error;
	void function(GDBusMethodInvocation* invocation, GQuark domain, gint code, gchar* format, va_list varArgs) c_g_dbus_method_invocation_return_error_valist;
	void function(GDBusMethodInvocation* invocation, GQuark domain, gint code, gchar* message) c_g_dbus_method_invocation_return_error_literal;
	void function(GDBusMethodInvocation* invocation, GError* error) c_g_dbus_method_invocation_return_gerror;
	void function(GDBusMethodInvocation* invocation, gchar* errorName, gchar* errorMessage) c_g_dbus_method_invocation_return_dbus_error;
	void function(GDBusMethodInvocation* invocation, GError* error) c_g_dbus_method_invocation_take_error;
	void function(GDBusMethodInvocation* invocation, GVariant* parameters, GUnixFDList* fdList) c_g_dbus_method_invocation_return_value_with_unix_fd_list;

	// gio.DBusServer

	GDBusServer* function(gchar* address, GDBusServerFlags flags, gchar* guid, GDBusAuthObserver* observer, GCancellable* cancellable, GError** error) c_g_dbus_server_new_sync;
	void function(GDBusServer* server) c_g_dbus_server_start;
	void function(GDBusServer* server) c_g_dbus_server_stop;
	gboolean function(GDBusServer* server) c_g_dbus_server_is_active;
	gchar* function(GDBusServer* server) c_g_dbus_server_get_guid;
	GDBusServerFlags function(GDBusServer* server) c_g_dbus_server_get_flags;
	gchar* function(GDBusServer* server) c_g_dbus_server_get_client_address;

	// gio.DBusAuthObserver

	GDBusAuthObserver* function() c_g_dbus_auth_observer_new;
	gboolean function(GDBusAuthObserver* observer, GIOStream* stream, GCredentials* credentials) c_g_dbus_auth_observer_authorize_authenticated_peer;
	gboolean function(GDBusAuthObserver* observer, gchar* mechanism) c_g_dbus_auth_observer_allow_mechanism;

	// gio.DBusNames

	guint function(GBusType busType, gchar* name, GBusNameOwnerFlags flags, GBusAcquiredCallback busAcquiredHandler, GBusNameAcquiredCallback nameAcquiredHandler, GBusNameLostCallback nameLostHandler, void* userData, GDestroyNotify userDataFreeFunc) c_g_bus_own_name;
	guint function(GDBusConnection* connection, gchar* name, GBusNameOwnerFlags flags, GBusNameAcquiredCallback nameAcquiredHandler, GBusNameLostCallback nameLostHandler, void* userData, GDestroyNotify userDataFreeFunc) c_g_bus_own_name_on_connection;
	void function(guint ownerId) c_g_bus_unown_name;
	guint function(GBusType busType, gchar* name, GBusNameOwnerFlags flags, GClosure* busAcquiredClosure, GClosure* nameAcquiredClosure, GClosure* nameLostClosure) c_g_bus_own_name_with_closures;
	guint function(GDBusConnection* connection, gchar* name, GBusNameOwnerFlags flags, GClosure* nameAcquiredClosure, GClosure* nameLostClosure) c_g_bus_own_name_on_connection_with_closures;
	guint function(GBusType busType, gchar* name, GBusNameWatcherFlags flags, GBusNameAppearedCallback nameAppearedHandler, GBusNameVanishedCallback nameVanishedHandler, void* userData, GDestroyNotify userDataFreeFunc) c_g_bus_watch_name;
	guint function(GDBusConnection* connection, gchar* name, GBusNameWatcherFlags flags, GBusNameAppearedCallback nameAppearedHandler, GBusNameVanishedCallback nameVanishedHandler, void* userData, GDestroyNotify userDataFreeFunc) c_g_bus_watch_name_on_connection;
	void function(guint watcherId) c_g_bus_unwatch_name;
	guint function(GBusType busType, gchar* name, GBusNameWatcherFlags flags, GClosure* nameAppearedClosure, GClosure* nameVanishedClosure) c_g_bus_watch_name_with_closures;
	guint function(GDBusConnection* connection, gchar* name, GBusNameWatcherFlags flags, GClosure* nameAppearedClosure, GClosure* nameVanishedClosure) c_g_bus_watch_name_on_connection_with_closures;

	// gio.DBusInterfaceT


	// gio.DBusInterfaceT

	GDBusInterfaceInfo* function(GDBusInterface* iface) c_g_dbus_interface_get_info;
	GDBusObject* function(GDBusInterface* iface) c_g_dbus_interface_get_object;
	GDBusObject* function(GDBusInterface* iface) c_g_dbus_interface_dup_object;
	void function(GDBusInterface* iface, GDBusObject* object) c_g_dbus_interface_set_object;

	// gio.DBusInterface


	// gio.DBusInterfaceSkeleton

	void function(GDBusInterfaceSkeleton* iface) c_g_dbus_interface_skeleton_flush;
	GDBusInterfaceInfo* function(GDBusInterfaceSkeleton* iface) c_g_dbus_interface_skeleton_get_info;
	GDBusInterfaceVTable* function(GDBusInterfaceSkeleton* iface) c_g_dbus_interface_skeleton_get_vtable;
	GVariant* function(GDBusInterfaceSkeleton* iface) c_g_dbus_interface_skeleton_get_properties;
	gboolean function(GDBusInterfaceSkeleton* iface, GDBusConnection* connection, gchar* objectPath, GError** error) c_g_dbus_interface_skeleton_export;
	void function(GDBusInterfaceSkeleton* iface) c_g_dbus_interface_skeleton_unexport;
	void function(GDBusInterfaceSkeleton* iface, GDBusConnection* connection) c_g_dbus_interface_skeleton_unexport_from_connection;
	GDBusConnection* function(GDBusInterfaceSkeleton* iface) c_g_dbus_interface_skeleton_get_connection;
	GList* function(GDBusInterfaceSkeleton* iface) c_g_dbus_interface_skeleton_get_connections;
	gboolean function(GDBusInterfaceSkeleton* iface, GDBusConnection* connection) c_g_dbus_interface_skeleton_has_connection;
	gchar* function(GDBusInterfaceSkeleton* iface) c_g_dbus_interface_skeleton_get_object_path;
	GDBusInterfaceSkeletonFlags function(GDBusInterfaceSkeleton* iface) c_g_dbus_interface_skeleton_get_flags;
	void function(GDBusInterfaceSkeleton* iface, GDBusInterfaceSkeletonFlags flags) c_g_dbus_interface_skeleton_set_flags;

	// gio.DBusProxy

	void function(GDBusConnection* connection, GDBusProxyFlags flags, GDBusInterfaceInfo* info, gchar* name, gchar* objectPath, gchar* interfaceName, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_proxy_new;
	GDBusProxy* function(GAsyncResult* res, GError** error) c_g_dbus_proxy_new_finish;
	GDBusProxy* function(GDBusConnection* connection, GDBusProxyFlags flags, GDBusInterfaceInfo* info, gchar* name, gchar* objectPath, gchar* interfaceName, GCancellable* cancellable, GError** error) c_g_dbus_proxy_new_sync;
	void function(GBusType busType, GDBusProxyFlags flags, GDBusInterfaceInfo* info, gchar* name, gchar* objectPath, gchar* interfaceName, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_proxy_new_for_bus;
	GDBusProxy* function(GAsyncResult* res, GError** error) c_g_dbus_proxy_new_for_bus_finish;
	GDBusProxy* function(GBusType busType, GDBusProxyFlags flags, GDBusInterfaceInfo* info, gchar* name, gchar* objectPath, gchar* interfaceName, GCancellable* cancellable, GError** error) c_g_dbus_proxy_new_for_bus_sync;
	GDBusProxyFlags function(GDBusProxy* proxy) c_g_dbus_proxy_get_flags;
	GDBusConnection* function(GDBusProxy* proxy) c_g_dbus_proxy_get_connection;
	gchar* function(GDBusProxy* proxy) c_g_dbus_proxy_get_name;
	gchar* function(GDBusProxy* proxy) c_g_dbus_proxy_get_name_owner;
	gchar* function(GDBusProxy* proxy) c_g_dbus_proxy_get_object_path;
	gchar* function(GDBusProxy* proxy) c_g_dbus_proxy_get_interface_name;
	gint function(GDBusProxy* proxy) c_g_dbus_proxy_get_default_timeout;
	void function(GDBusProxy* proxy, gint timeoutMsec) c_g_dbus_proxy_set_default_timeout;
	GVariant* function(GDBusProxy* proxy, gchar* propertyName) c_g_dbus_proxy_get_cached_property;
	void function(GDBusProxy* proxy, gchar* propertyName, GVariant* value) c_g_dbus_proxy_set_cached_property;
	gchar** function(GDBusProxy* proxy) c_g_dbus_proxy_get_cached_property_names;
	void function(GDBusProxy* proxy, GDBusInterfaceInfo* info) c_g_dbus_proxy_set_interface_info;
	GDBusInterfaceInfo* function(GDBusProxy* proxy) c_g_dbus_proxy_get_interface_info;
	void function(GDBusProxy* proxy, gchar* methodName, GVariant* parameters, GDBusCallFlags flags, gint timeoutMsec, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_proxy_call;
	GVariant* function(GDBusProxy* proxy, GAsyncResult* res, GError** error) c_g_dbus_proxy_call_finish;
	GVariant* function(GDBusProxy* proxy, gchar* methodName, GVariant* parameters, GDBusCallFlags flags, gint timeoutMsec, GCancellable* cancellable, GError** error) c_g_dbus_proxy_call_sync;
	void function(GDBusProxy* proxy, gchar* methodName, GVariant* parameters, GDBusCallFlags flags, gint timeoutMsec, GUnixFDList* fdList, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_proxy_call_with_unix_fd_list;
	GVariant* function(GDBusProxy* proxy, GUnixFDList** outFdList, GAsyncResult* res, GError** error) c_g_dbus_proxy_call_with_unix_fd_list_finish;
	GVariant* function(GDBusProxy* proxy, gchar* methodName, GVariant* parameters, GDBusCallFlags flags, gint timeoutMsec, GUnixFDList* fdList, GUnixFDList** outFdList, GCancellable* cancellable, GError** error) c_g_dbus_proxy_call_with_unix_fd_list_sync;

	// gio.DBusObjectT


	// gio.DBusObjectT

	gchar* function(GDBusObject* object) c_g_dbus_object_get_object_path;
	GList* function(GDBusObject* object) c_g_dbus_object_get_interfaces;
	GDBusInterface* function(GDBusObject* object, gchar* interfaceName) c_g_dbus_object_get_interface;

	// gio.DBusObject


	// gio.DBusObjectSkeleton

	GDBusObjectSkeleton* function(gchar* objectPath) c_g_dbus_object_skeleton_new;
	void function(GDBusObjectSkeleton* object) c_g_dbus_object_skeleton_flush;
	void function(GDBusObjectSkeleton* object, GDBusInterfaceSkeleton* iface) c_g_dbus_object_skeleton_add_interface;
	void function(GDBusObjectSkeleton* object, GDBusInterfaceSkeleton* iface) c_g_dbus_object_skeleton_remove_interface;
	void function(GDBusObjectSkeleton* object, gchar* interfaceName) c_g_dbus_object_skeleton_remove_interface_by_name;
	void function(GDBusObjectSkeleton* object, gchar* objectPath) c_g_dbus_object_skeleton_set_object_path;

	// gio.DBusObjectProxy

	GDBusObjectProxy* function(GDBusConnection* connection, gchar* objectPath) c_g_dbus_object_proxy_new;
	GDBusConnection* function(GDBusObjectProxy* proxy) c_g_dbus_object_proxy_get_connection;

	// gio.DBusObjectManagerT


	// gio.DBusObjectManagerT

	gchar* function(GDBusObjectManager* manager) c_g_dbus_object_manager_get_object_path;
	GList* function(GDBusObjectManager* manager) c_g_dbus_object_manager_get_objects;
	GDBusObject* function(GDBusObjectManager* manager, gchar* objectPath) c_g_dbus_object_manager_get_object;
	GDBusInterface* function(GDBusObjectManager* manager, gchar* objectPath, gchar* interfaceName) c_g_dbus_object_manager_get_interface;

	// gio.DBusObjectManagerServer

	GDBusObjectManagerServer* function(gchar* objectPath) c_g_dbus_object_manager_server_new;
	GDBusConnection* function(GDBusObjectManagerServer* manager) c_g_dbus_object_manager_server_get_connection;
	void function(GDBusObjectManagerServer* manager, GDBusConnection* connection) c_g_dbus_object_manager_server_set_connection;
	void function(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object) c_g_dbus_object_manager_server_export;
	void function(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object) c_g_dbus_object_manager_server_export_uniquely;
	gboolean function(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object) c_g_dbus_object_manager_server_is_exported;
	gboolean function(GDBusObjectManagerServer* manager, gchar* objectPath) c_g_dbus_object_manager_server_unexport;

	// gio.DBusObjectManagerClient

	void function(GDBusConnection* connection, GDBusObjectManagerClientFlags flags, gchar* name, gchar* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_object_manager_client_new;
	GDBusObjectManager* function(GAsyncResult* res, GError** error) c_g_dbus_object_manager_client_new_finish;
	GDBusObjectManager* function(GDBusConnection* connection, GDBusObjectManagerClientFlags flags, gchar* name, gchar* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GError** error) c_g_dbus_object_manager_client_new_sync;
	void function(GBusType busType, GDBusObjectManagerClientFlags flags, gchar* name, gchar* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_dbus_object_manager_client_new_for_bus;
	GDBusObjectManager* function(GAsyncResult* res, GError** error) c_g_dbus_object_manager_client_new_for_bus_finish;
	GDBusObjectManager* function(GBusType busType, GDBusObjectManagerClientFlags flags, gchar* name, gchar* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GError** error) c_g_dbus_object_manager_client_new_for_bus_sync;
	GDBusConnection* function(GDBusObjectManagerClient* manager) c_g_dbus_object_manager_client_get_connection;
	GDBusObjectManagerClientFlags function(GDBusObjectManagerClient* manager) c_g_dbus_object_manager_client_get_flags;
	gchar* function(GDBusObjectManagerClient* manager) c_g_dbus_object_manager_client_get_name;
	gchar* function(GDBusObjectManagerClient* manager) c_g_dbus_object_manager_client_get_name_owner;

	// gio.Settings

	GSettings* function(gchar* schemaId) c_g_settings_new;
	GSettings* function(gchar* schemaId, gchar* path) c_g_settings_new_with_path;
	GSettings* function(gchar* schemaId, GSettingsBackend* backend) c_g_settings_new_with_backend;
	GSettings* function(gchar* schemaId, GSettingsBackend* backend, gchar* path) c_g_settings_new_with_backend_and_path;
	GSettings* function(GSettingsSchema* schema, GSettingsBackend* backend, gchar* path) c_g_settings_new_full;
	void function() c_g_settings_sync;
	GVariant* function(GSettings* settings, gchar* key) c_g_settings_get_value;
	gboolean function(GSettings* settings, gchar* key, GVariant* value) c_g_settings_set_value;
	gboolean function(GSettings* settings, gchar* name) c_g_settings_is_writable;
	void function(GSettings* settings) c_g_settings_delay;
	void function(GSettings* settings) c_g_settings_apply;
	void function(GSettings* settings) c_g_settings_revert;
	gboolean function(GSettings* settings) c_g_settings_get_has_unapplied;
	GSettings* function(GSettings* settings, gchar* name) c_g_settings_get_child;
	void function(GSettings* settings, gchar* key) c_g_settings_reset;
	gchar** function() c_g_settings_list_schemas;
	gchar** function() c_g_settings_list_relocatable_schemas;
	gchar** function(GSettings* settings) c_g_settings_list_keys;
	gchar** function(GSettings* settings) c_g_settings_list_children;
	GVariant* function(GSettings* settings, gchar* key) c_g_settings_get_range;
	gboolean function(GSettings* settings, gchar* key, GVariant* value) c_g_settings_range_check;
	void function(GSettings* settings, gchar* key, gchar* format, ... ) c_g_settings_get;
	gboolean function(GSettings* settings, gchar* key, gchar* format, ... ) c_g_settings_set;
	gboolean function(GSettings* settings, gchar* key) c_g_settings_get_boolean;
	gboolean function(GSettings* settings, gchar* key, gboolean value) c_g_settings_set_boolean;
	gint function(GSettings* settings, gchar* key) c_g_settings_get_int;
	gboolean function(GSettings* settings, gchar* key, gint value) c_g_settings_set_int;
	guint function(GSettings* settings, gchar* key) c_g_settings_get_uint;
	gboolean function(GSettings* settings, gchar* key, guint value) c_g_settings_set_uint;
	gdouble function(GSettings* settings, gchar* key) c_g_settings_get_double;
	gboolean function(GSettings* settings, gchar* key, gdouble value) c_g_settings_set_double;
	gchar* function(GSettings* settings, gchar* key) c_g_settings_get_string;
	gboolean function(GSettings* settings, gchar* key, gchar* value) c_g_settings_set_string;
	gchar** function(GSettings* settings, gchar* key) c_g_settings_get_strv;
	gboolean function(GSettings* settings, gchar* key, gchar** value) c_g_settings_set_strv;
	gint function(GSettings* settings, gchar* key) c_g_settings_get_enum;
	gboolean function(GSettings* settings, gchar* key, gint value) c_g_settings_set_enum;
	guint function(GSettings* settings, gchar* key) c_g_settings_get_flags;
	gboolean function(GSettings* settings, gchar* key, guint value) c_g_settings_set_flags;
	gpointer function(GSettings* settings, gchar* key, GSettingsGetMapping mapping, void* userData) c_g_settings_get_mapped;
	void function(GSettings* settings, gchar* key, void* object, gchar* property, GSettingsBindFlags flags) c_g_settings_bind;
	void function(GSettings* settings, gchar* key, void* object, gchar* property, GSettingsBindFlags flags, GSettingsBindGetMapping getMapping, GSettingsBindSetMapping setMapping, void* userData, GDestroyNotify destroy) c_g_settings_bind_with_mapping;
	void function(GSettings* settings, gchar* key, void* object, gchar* property, gboolean inverted) c_g_settings_bind_writable;
	void function(void* object, gchar* property) c_g_settings_unbind;
	GAction* function(GSettings* settings, gchar* key) c_g_settings_create_action;

	// gio.SettingsBackend

	GSettingsBackend* function() c_g_settings_backend_get_default;
	void function(GSettingsBackend* backend, gchar* key, void* originTag) c_g_settings_backend_changed;
	void function(GSettingsBackend* backend, gchar* path, void* originTag) c_g_settings_backend_path_changed;
	void function(GSettingsBackend* backend, gchar* path, gchar** items, void* originTag) c_g_settings_backend_keys_changed;
	void function(GSettingsBackend* backend, gchar* path) c_g_settings_backend_path_writable_changed;
	void function(GSettingsBackend* backend, gchar* key) c_g_settings_backend_writable_changed;
	void function(GSettingsBackend* backend, GTree* tree, void* originTag) c_g_settings_backend_changed_tree;
	void function(GTree* tree, gchar** path, gchar*** keys, GVariant*** values) c_g_settings_backend_flatten_tree;
	GSettingsBackend* function(gchar* filename, gchar* rootPath, gchar* rootGroup) c_g_keyfile_settings_backend_new;
	GSettingsBackend* function() c_g_memory_settings_backend_new;
	GSettingsBackend* function() c_g_null_settings_backend_new;

	// gio.SettingsSchema

	GSettingsSchema* function(GSettingsSchema* schema) c_g_settings_schema_ref;
	void function(GSettingsSchema* schema) c_g_settings_schema_unref;
	gchar* function(GSettingsSchema* schema) c_g_settings_schema_get_id;
	gchar* function(GSettingsSchema* schema) c_g_settings_schema_get_path;

	// gio.SettingsSchemaSource

	GSettingsSchemaSource* function() c_g_settings_schema_source_get_default;
	GSettingsSchemaSource* function(GSettingsSchemaSource* source) c_g_settings_schema_source_ref;
	void function(GSettingsSchemaSource* source) c_g_settings_schema_source_unref;
	GSettingsSchemaSource* function(gchar* directory, GSettingsSchemaSource* parent, gboolean trusted, GError** error) c_g_settings_schema_source_new_from_directory;
	GSettingsSchema* function(GSettingsSchemaSource* source, gchar* schemaId, gboolean recursive) c_g_settings_schema_source_lookup;

	// gio.Resource

	GResource* function(gchar* filename, GError** error) c_g_resource_load;
	GResource* function(GBytes* data, GError** error) c_g_resource_new_from_data;
	GResource* function(GResource* resource) c_g_resource_ref;
	void function(GResource* resource) c_g_resource_unref;
	GBytes* function(GResource* resource, char* path, GResourceLookupFlags lookupFlags, GError** error) c_g_resource_lookup_data;
	GInputStream* function(GResource* resource, char* path, GResourceLookupFlags lookupFlags, GError** error) c_g_resource_open_stream;
	char** function(GResource* resource, char* path, GResourceLookupFlags lookupFlags, GError** error) c_g_resource_enumerate_children;
	gboolean function(GResource* resource, char* path, GResourceLookupFlags lookupFlags, gsize* size, guint32* flags, GError** error) c_g_resource_get_info;
	void function(GResource* resource) c_g_resources_register;
	void function(GResource* resource) c_g_resources_unregister;
	GBytes* function(char* path, GResourceLookupFlags lookupFlags, GError** error) c_g_resources_lookup_data;
	GInputStream* function(char* path, GResourceLookupFlags lookupFlags, GError** error) c_g_resources_open_stream;
	char** function(char* path, GResourceLookupFlags lookupFlags, GError** error) c_g_resources_enumerate_children;
	gboolean function(char* path, GResourceLookupFlags lookupFlags, gsize* size, guint32* flags, GError** error) c_g_resources_get_info;

	// gio.Permission

	gboolean function(GPermission* permission) c_g_permission_get_allowed;
	gboolean function(GPermission* permission) c_g_permission_get_can_acquire;
	gboolean function(GPermission* permission) c_g_permission_get_can_release;
	gboolean function(GPermission* permission, GCancellable* cancellable, GError** error) c_g_permission_acquire;
	void function(GPermission* permission, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_permission_acquire_async;
	gboolean function(GPermission* permission, GAsyncResult* result, GError** error) c_g_permission_acquire_finish;
	gboolean function(GPermission* permission, GCancellable* cancellable, GError** error) c_g_permission_release;
	void function(GPermission* permission, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_g_permission_release_async;
	gboolean function(GPermission* permission, GAsyncResult* result, GError** error) c_g_permission_release_finish;
	void function(GPermission* permission, gboolean allowed, gboolean canAcquire, gboolean canRelease) c_g_permission_impl_update;

	// gio.SimplePermission

	GPermission* function(gboolean allowed) c_g_simple_permission_new;

	// gio.Application

	gboolean function(gchar* applicationId) c_g_application_id_is_valid;
	GApplication* function(gchar* applicationId, GApplicationFlags flags) c_g_application_new;
	gchar* function(GApplication* application) c_g_application_get_application_id;
	void function(GApplication* application, gchar* applicationId) c_g_application_set_application_id;
	guint function(GApplication* application) c_g_application_get_inactivity_timeout;
	void function(GApplication* application, guint inactivityTimeout) c_g_application_set_inactivity_timeout;
	GApplicationFlags function(GApplication* application) c_g_application_get_flags;
	void function(GApplication* application, GApplicationFlags flags) c_g_application_set_flags;
	GDBusConnection* function(GApplication* application) c_g_application_get_dbus_connection;
	gchar* function(GApplication* application) c_g_application_get_dbus_object_path;
	void function(GApplication* application, GActionGroup* actionGroup) c_g_application_set_action_group;
	gboolean function(GApplication* application) c_g_application_get_is_registered;
	gboolean function(GApplication* application) c_g_application_get_is_remote;
	gboolean function(GApplication* application, GCancellable* cancellable, GError** error) c_g_application_register;
	void function(GApplication* application) c_g_application_hold;
	void function(GApplication* application) c_g_application_release;
	void function(GApplication* application) c_g_application_quit;
	void function(GApplication* application) c_g_application_activate;
	void function(GApplication* application, GFile** files, gint nFiles, gchar* hint) c_g_application_open;
	int function(GApplication* application, int argc, char** argv) c_g_application_run;
	void function(GApplication* application) c_g_application_set_default;
	GApplication* function() c_g_application_get_default;

	// gio.ApplicationCommandLine

	gchar** function(GApplicationCommandLine* cmdline, int* argc) c_g_application_command_line_get_arguments;
	gchar* function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_cwd;
	gchar** function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_environ;
	gchar* function(GApplicationCommandLine* cmdline, gchar* name) c_g_application_command_line_getenv;
	gboolean function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_is_remote;
	GVariant* function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_platform_data;
	void function(GApplicationCommandLine* cmdline, int exitStatus) c_g_application_command_line_set_exit_status;
	int function(GApplicationCommandLine* cmdline) c_g_application_command_line_get_exit_status;
	void function(GApplicationCommandLine* cmdline, gchar* format, ... ) c_g_application_command_line_print;
	void function(GApplicationCommandLine* cmdline, gchar* format, ... ) c_g_application_command_line_printerr;

	// gio.ActionGroupT


	// gio.ActionGroupT

	gchar** function(GActionGroup* actionGroup) c_g_action_group_list_actions;
	gboolean function(GActionGroup* actionGroup, gchar* actionName, gboolean* enabled, GVariantType** parameterType, GVariantType** stateType, GVariant** stateHint, GVariant** state) c_g_action_group_query_action;
	gboolean function(GActionGroup* actionGroup, gchar* actionName) c_g_action_group_has_action;
	gboolean function(GActionGroup* actionGroup, gchar* actionName) c_g_action_group_get_action_enabled;
	GVariantType* function(GActionGroup* actionGroup, gchar* actionName) c_g_action_group_get_action_parameter_type;
	GVariantType* function(GActionGroup* actionGroup, gchar* actionName) c_g_action_group_get_action_state_type;
	GVariant* function(GActionGroup* actionGroup, gchar* actionName) c_g_action_group_get_action_state_hint;
	GVariant* function(GActionGroup* actionGroup, gchar* actionName) c_g_action_group_get_action_state;
	void function(GActionGroup* actionGroup, gchar* actionName, GVariant* value) c_g_action_group_change_action_state;
	void function(GActionGroup* actionGroup, gchar* actionName, GVariant* parameter) c_g_action_group_activate_action;
	void function(GActionGroup* actionGroup, gchar* actionName) c_g_action_group_action_added;
	void function(GActionGroup* actionGroup, gchar* actionName) c_g_action_group_action_removed;
	void function(GActionGroup* actionGroup, gchar* actionName, gboolean enabled) c_g_action_group_action_enabled_changed;
	void function(GActionGroup* actionGroup, gchar* actionName, GVariant* state) c_g_action_group_action_state_changed;

	// gio.ActionMapT


	// gio.ActionMapT

	GAction* function(GActionMap* actionMap, gchar* actionName) c_g_action_map_lookup_action;
	void function(GActionMap* actionMap, GActionEntry* entries, gint nEntries, void* userData) c_g_action_map_add_action_entries;
	void function(GActionMap* actionMap, GAction* action) c_g_action_map_add_action;
	void function(GActionMap* actionMap, gchar* actionName) c_g_action_map_remove_action;

	// gio.SimpleActionGroup

	GSimpleActionGroup* function() c_g_simple_action_group_new;
	GAction* function(GSimpleActionGroup* simple, gchar* actionName) c_g_simple_action_group_lookup;
	void function(GSimpleActionGroup* simple, GAction* action) c_g_simple_action_group_insert;
	void function(GSimpleActionGroup* simple, gchar* actionName) c_g_simple_action_group_remove;
	void function(GSimpleActionGroup* simple, GActionEntry* entries, gint nEntries, void* userData) c_g_simple_action_group_add_entries;

	// gio.ActionT


	// gio.ActionT

	gchar* function(GAction* action) c_g_action_get_name;
	GVariantType* function(GAction* action) c_g_action_get_parameter_type;
	GVariantType* function(GAction* action) c_g_action_get_state_type;
	GVariant* function(GAction* action) c_g_action_get_state_hint;
	gboolean function(GAction* action) c_g_action_get_enabled;
	GVariant* function(GAction* action) c_g_action_get_state;
	void function(GAction* action, GVariant* value) c_g_action_change_state;
	void function(GAction* action, GVariant* parameter) c_g_action_activate;

	// gio.Action


	// gio.SimpleAction

	GSimpleAction* function(gchar* name, GVariantType* parameterType) c_g_simple_action_new;
	GSimpleAction* function(gchar* name, GVariantType* parameterType, GVariant* state) c_g_simple_action_new_stateful;
	void function(GSimpleAction* simple, gboolean enabled) c_g_simple_action_set_enabled;
	void function(GSimpleAction* simple, GVariant* value) c_g_simple_action_set_state;

	// gio.RemoteActionGroupT


	// gio.RemoteActionGroupT

	void function(GRemoteActionGroup* remote, gchar* actionName, GVariant* parameter, GVariant* platformData) c_g_remote_action_group_activate_action_full;
	void function(GRemoteActionGroup* remote, gchar* actionName, GVariant* value, GVariant* platformData) c_g_remote_action_group_change_action_state_full;

	// gio.DBusActionGroup

	GDBusActionGroup* function(GDBusConnection* connection, gchar* busName, gchar* objectPath) c_g_dbus_action_group_get;

	// gio.MenuModel

	gboolean function(GMenuModel* model) c_g_menu_model_is_mutable;
	gint function(GMenuModel* model) c_g_menu_model_get_n_items;
	GVariant* function(GMenuModel* model, gint itemIndex, gchar* attribute, GVariantType* expectedType) c_g_menu_model_get_item_attribute_value;
	gboolean function(GMenuModel* model, gint itemIndex, gchar* attribute, gchar* formatString, ... ) c_g_menu_model_get_item_attribute;
	GMenuModel* function(GMenuModel* model, gint itemIndex, gchar* link) c_g_menu_model_get_item_link;
	GMenuAttributeIter* function(GMenuModel* model, gint itemIndex) c_g_menu_model_iterate_item_attributes;
	GMenuLinkIter* function(GMenuModel* model, gint itemIndex) c_g_menu_model_iterate_item_links;
	void function(GMenuModel* model, gint position, gint removed, gint added) c_g_menu_model_items_changed;

	// gio.MenuAttributeIter

	gboolean function(GMenuAttributeIter* iter, gchar** outName, GVariant** value) c_g_menu_attribute_iter_get_next;
	gchar* function(GMenuAttributeIter* iter) c_g_menu_attribute_iter_get_name;
	GVariant* function(GMenuAttributeIter* iter) c_g_menu_attribute_iter_get_value;
	gboolean function(GMenuAttributeIter* iter) c_g_menu_attribute_iter_next;

	// gio.MenuLinkIter

	gchar* function(GMenuLinkIter* iter) c_g_menu_link_iter_get_name;
	gboolean function(GMenuLinkIter* iter, gchar** outLink, GMenuModel** value) c_g_menu_link_iter_get_next;
	GMenuModel* function(GMenuLinkIter* iter) c_g_menu_link_iter_get_value;
	gboolean function(GMenuLinkIter* iter) c_g_menu_link_iter_next;

	// gio.Menu

	GMenu* function() c_g_menu_new;
	void function(GMenu* menu) c_g_menu_freeze;
	void function(GMenu* menu, gint position, gchar* label, gchar* detailedAction) c_g_menu_insert;
	void function(GMenu* menu, gchar* label, gchar* detailedAction) c_g_menu_prepend;
	void function(GMenu* menu, gchar* label, gchar* detailedAction) c_g_menu_append;
	void function(GMenu* menu, gint position, GMenuItem* item) c_g_menu_insert_item;
	void function(GMenu* menu, GMenuItem* item) c_g_menu_append_item;
	void function(GMenu* menu, GMenuItem* item) c_g_menu_prepend_item;
	void function(GMenu* menu, gint position, gchar* label, GMenuModel* section) c_g_menu_insert_section;
	void function(GMenu* menu, gchar* label, GMenuModel* section) c_g_menu_prepend_section;
	void function(GMenu* menu, gchar* label, GMenuModel* section) c_g_menu_append_section;
	void function(GMenu* menu, gchar* label, GMenuModel* submenu) c_g_menu_append_submenu;
	void function(GMenu* menu, gint position, gchar* label, GMenuModel* submenu) c_g_menu_insert_submenu;
	void function(GMenu* menu, gchar* label, GMenuModel* submenu) c_g_menu_prepend_submenu;
	void function(GMenu* menu, gint position) c_g_menu_remove;

	// gio.MenuItem

	GMenuItem* function(gchar* label, gchar* detailedAction) c_g_menu_item_new;
	GMenuItem* function(gchar* label, GMenuModel* section) c_g_menu_item_new_section;
	GMenuItem* function(gchar* label, GMenuModel* submenu) c_g_menu_item_new_submenu;
	GMenuItem* function(GMenuModel* model, gint itemIndex) c_g_menu_item_new_from_model;
	void function(GMenuItem* menuItem, gchar* label) c_g_menu_item_set_label;
	void function(GMenuItem* menuItem, gchar* action, GVariant* targetValue) c_g_menu_item_set_action_and_target_value;
	void function(GMenuItem* menuItem, gchar* action, gchar* formatString, ... ) c_g_menu_item_set_action_and_target;
	void function(GMenuItem* menuItem, gchar* detailedAction) c_g_menu_item_set_detailed_action;
	void function(GMenuItem* menuItem, GMenuModel* section) c_g_menu_item_set_section;
	void function(GMenuItem* menuItem, GMenuModel* submenu) c_g_menu_item_set_submenu;
	GVariant* function(GMenuItem* menuItem, gchar* attribute, GVariantType* expectedType) c_g_menu_item_get_attribute_value;
	gboolean function(GMenuItem* menuItem, gchar* attribute, gchar* formatString, ... ) c_g_menu_item_get_attribute;
	GMenuModel* function(GMenuItem* menuItem, gchar* link) c_g_menu_item_get_link;
	void function(GMenuItem* menuItem, gchar* attribute, GVariant* value) c_g_menu_item_set_attribute_value;
	void function(GMenuItem* menuItem, gchar* attribute, gchar* formatString, ... ) c_g_menu_item_set_attribute;
	void function(GMenuItem* menuItem, gchar* link, GMenuModel* model) c_g_menu_item_set_link;

	// gio.DBusMenuModel

	GDBusMenuModel* function(GDBusConnection* connection, gchar* busName, gchar* objectPath) c_g_dbus_menu_model_get;

	// gio.Vfs

	GFile* function(GVfs* vfs, char* path) c_g_vfs_get_file_for_path;
	GFile* function(GVfs* vfs, char* uri) c_g_vfs_get_file_for_uri;
	GFile* function(GVfs* vfs, char* parseName) c_g_vfs_parse_name;
	GVfs* function() c_g_vfs_get_default;
	GVfs* function() c_g_vfs_get_local;
	gboolean function(GVfs* vfs) c_g_vfs_is_active;
	gchar** function(GVfs* vfs) c_g_vfs_get_supported_uri_schemes;

	// gio.IOModule

	GIOModule* function(gchar* filename) c_g_io_module_new;
	GList* function(gchar* dirname) c_g_io_modules_load_all_in_directory;
	GList* function(gchar* dirname, GIOModuleScope* scop) c_g_io_modules_load_all_in_directory_with_scope;
	void function(char* dirname) c_g_io_modules_scan_all_in_directory;
	void function(gchar* dirname, GIOModuleScope* scop) c_g_io_modules_scan_all_in_directory_with_scope;
	void function(GIOModule* modul) c_g_io_module_load;
	void function(GIOModule* modul) c_g_io_module_unload;
	char** function() c_g_io_module_query;

	// gio.IOModuleScope

	void function(GIOModuleScope* scop, gchar* basename) c_g_io_module_scope_block;
	void function(GIOModuleScope* scop) c_g_io_module_scope_free;
	GIOModuleScope* function(GIOModuleScopeFlags flags) c_g_io_module_scope_new;

	// gio.IOExtension

	char* function(GIOExtension* extension) c_g_io_extension_get_name;
	gint function(GIOExtension* extension) c_g_io_extension_get_priority;
	GType function(GIOExtension* extension) c_g_io_extension_get_type;
	GTypeClass* function(GIOExtension* extension) c_g_io_extension_ref_class;

	// gio.IOExtensionPoint

	GIOExtension* function(GIOExtensionPoint* extensionPoint, char* name) c_g_io_extension_point_get_extension_by_name;
	GList* function(GIOExtensionPoint* extensionPoint) c_g_io_extension_point_get_extensions;
	GType function(GIOExtensionPoint* extensionPoint) c_g_io_extension_point_get_required_type;
	GIOExtension* function(char* extensionPointName, GType type, char* extensionName, gint priority) c_g_io_extension_point_implement;
	GIOExtensionPoint* function(char* name) c_g_io_extension_point_lookup;
	GIOExtensionPoint* function(char* name) c_g_io_extension_point_register;
	void function(GIOExtensionPoint* extensionPoint, GType type) c_g_io_extension_point_set_required_type;

	// gio.TestDBus

	GTestDBus* function(GTestDBusFlags flags) c_g_test_dbus_new;
	GTestDBusFlags function(GTestDBus* self) c_g_test_dbus_get_flags;
	gchar* function(GTestDBus* self) c_g_test_dbus_get_bus_address;
	void function(GTestDBus* self, gchar* path) c_g_test_dbus_add_service_dir;
	void function(GTestDBus* self) c_g_test_dbus_up;
	void function(GTestDBus* self) c_g_test_dbus_stop;
	void function(GTestDBus* self) c_g_test_dbus_down;
	void function() c_g_test_dbus_unset;
}");

// gio.File

alias c_g_file_new_for_path  g_file_new_for_path;
alias c_g_file_new_for_uri  g_file_new_for_uri;
alias c_g_file_new_for_commandline_arg  g_file_new_for_commandline_arg;
alias c_g_file_new_tmp  g_file_new_tmp;
alias c_g_file_parse_name  g_file_parse_name;
alias c_g_file_dup  g_file_dup;
alias c_g_file_hash  g_file_hash;
alias c_g_file_equal  g_file_equal;
alias c_g_file_get_basename  g_file_get_basename;
alias c_g_file_get_path  g_file_get_path;
alias c_g_file_get_uri  g_file_get_uri;
alias c_g_file_get_parse_name  g_file_get_parse_name;
alias c_g_file_get_parent  g_file_get_parent;
alias c_g_file_has_parent  g_file_has_parent;
alias c_g_file_get_child  g_file_get_child;
alias c_g_file_get_child_for_display_name  g_file_get_child_for_display_name;
alias c_g_file_has_prefix  g_file_has_prefix;
alias c_g_file_get_relative_path  g_file_get_relative_path;
alias c_g_file_resolve_relative_path  g_file_resolve_relative_path;
alias c_g_file_is_native  g_file_is_native;
alias c_g_file_has_uri_scheme  g_file_has_uri_scheme;
alias c_g_file_get_uri_scheme  g_file_get_uri_scheme;
alias c_g_file_read  g_file_read;
alias c_g_file_read_async  g_file_read_async;
alias c_g_file_read_finish  g_file_read_finish;
alias c_g_file_append_to  g_file_append_to;
alias c_g_file_create  g_file_create;
alias c_g_file_replace  g_file_replace;
alias c_g_file_append_to_async  g_file_append_to_async;
alias c_g_file_append_to_finish  g_file_append_to_finish;
alias c_g_file_create_async  g_file_create_async;
alias c_g_file_create_finish  g_file_create_finish;
alias c_g_file_replace_async  g_file_replace_async;
alias c_g_file_replace_finish  g_file_replace_finish;
alias c_g_file_query_info  g_file_query_info;
alias c_g_file_query_info_async  g_file_query_info_async;
alias c_g_file_query_info_finish  g_file_query_info_finish;
alias c_g_file_query_exists  g_file_query_exists;
alias c_g_file_query_file_type  g_file_query_file_type;
alias c_g_file_query_filesystem_info  g_file_query_filesystem_info;
alias c_g_file_query_filesystem_info_async  g_file_query_filesystem_info_async;
alias c_g_file_query_filesystem_info_finish  g_file_query_filesystem_info_finish;
alias c_g_file_query_default_handler  g_file_query_default_handler;
alias c_g_file_find_enclosing_mount  g_file_find_enclosing_mount;
alias c_g_file_find_enclosing_mount_async  g_file_find_enclosing_mount_async;
alias c_g_file_find_enclosing_mount_finish  g_file_find_enclosing_mount_finish;
alias c_g_file_enumerate_children  g_file_enumerate_children;
alias c_g_file_enumerate_children_async  g_file_enumerate_children_async;
alias c_g_file_enumerate_children_finish  g_file_enumerate_children_finish;
alias c_g_file_set_display_name  g_file_set_display_name;
alias c_g_file_set_display_name_async  g_file_set_display_name_async;
alias c_g_file_set_display_name_finish  g_file_set_display_name_finish;
alias c_g_file_delete  g_file_delete;
alias c_g_file_delete_async  g_file_delete_async;
alias c_g_file_delete_finish  g_file_delete_finish;
alias c_g_file_trash  g_file_trash;
alias c_g_file_copy  g_file_copy;
alias c_g_file_copy_async  g_file_copy_async;
alias c_g_file_copy_finish  g_file_copy_finish;
alias c_g_file_move  g_file_move;
alias c_g_file_make_directory  g_file_make_directory;
alias c_g_file_make_directory_with_parents  g_file_make_directory_with_parents;
alias c_g_file_make_symbolic_link  g_file_make_symbolic_link;
alias c_g_file_query_settable_attributes  g_file_query_settable_attributes;
alias c_g_file_query_writable_namespaces  g_file_query_writable_namespaces;
alias c_g_file_set_attribute  g_file_set_attribute;
alias c_g_file_set_attributes_from_info  g_file_set_attributes_from_info;
alias c_g_file_set_attributes_async  g_file_set_attributes_async;
alias c_g_file_set_attributes_finish  g_file_set_attributes_finish;
alias c_g_file_set_attribute_string  g_file_set_attribute_string;
alias c_g_file_set_attribute_byte_string  g_file_set_attribute_byte_string;
alias c_g_file_set_attribute_uint32  g_file_set_attribute_uint32;
alias c_g_file_set_attribute_int32  g_file_set_attribute_int32;
alias c_g_file_set_attribute_uint64  g_file_set_attribute_uint64;
alias c_g_file_set_attribute_int64  g_file_set_attribute_int64;
alias c_g_file_mount_mountable  g_file_mount_mountable;
alias c_g_file_mount_mountable_finish  g_file_mount_mountable_finish;
alias c_g_file_unmount_mountable  g_file_unmount_mountable;
alias c_g_file_unmount_mountable_finish  g_file_unmount_mountable_finish;
alias c_g_file_unmount_mountable_with_operation  g_file_unmount_mountable_with_operation;
alias c_g_file_unmount_mountable_with_operation_finish  g_file_unmount_mountable_with_operation_finish;
alias c_g_file_eject_mountable  g_file_eject_mountable;
alias c_g_file_eject_mountable_finish  g_file_eject_mountable_finish;
alias c_g_file_eject_mountable_with_operation  g_file_eject_mountable_with_operation;
alias c_g_file_eject_mountable_with_operation_finish  g_file_eject_mountable_with_operation_finish;
alias c_g_file_start_mountable  g_file_start_mountable;
alias c_g_file_start_mountable_finish  g_file_start_mountable_finish;
alias c_g_file_stop_mountable  g_file_stop_mountable;
alias c_g_file_stop_mountable_finish  g_file_stop_mountable_finish;
alias c_g_file_poll_mountable  g_file_poll_mountable;
alias c_g_file_poll_mountable_finish  g_file_poll_mountable_finish;
alias c_g_file_mount_enclosing_volume  g_file_mount_enclosing_volume;
alias c_g_file_mount_enclosing_volume_finish  g_file_mount_enclosing_volume_finish;
alias c_g_file_monitor_directory  g_file_monitor_directory;
alias c_g_file_monitor_file  g_file_monitor_file;
alias c_g_file_monitor  g_file_monitor;
alias c_g_file_load_contents  g_file_load_contents;
alias c_g_file_load_contents_async  g_file_load_contents_async;
alias c_g_file_load_contents_finish  g_file_load_contents_finish;
alias c_g_file_load_partial_contents_async  g_file_load_partial_contents_async;
alias c_g_file_load_partial_contents_finish  g_file_load_partial_contents_finish;
alias c_g_file_replace_contents  g_file_replace_contents;
alias c_g_file_replace_contents_async  g_file_replace_contents_async;
alias c_g_file_replace_contents_finish  g_file_replace_contents_finish;
alias c_g_file_copy_attributes  g_file_copy_attributes;
alias c_g_file_create_readwrite  g_file_create_readwrite;
alias c_g_file_create_readwrite_async  g_file_create_readwrite_async;
alias c_g_file_create_readwrite_finish  g_file_create_readwrite_finish;
alias c_g_file_open_readwrite  g_file_open_readwrite;
alias c_g_file_open_readwrite_async  g_file_open_readwrite_async;
alias c_g_file_open_readwrite_finish  g_file_open_readwrite_finish;
alias c_g_file_replace_readwrite  g_file_replace_readwrite;
alias c_g_file_replace_readwrite_async  g_file_replace_readwrite_async;
alias c_g_file_replace_readwrite_finish  g_file_replace_readwrite_finish;
alias c_g_file_supports_thread_contexts  g_file_supports_thread_contexts;

// gio.FileAttributeInfoList

alias c_g_file_attribute_info_list_new  g_file_attribute_info_list_new;
alias c_g_file_attribute_info_list_ref  g_file_attribute_info_list_ref;
alias c_g_file_attribute_info_list_unref  g_file_attribute_info_list_unref;
alias c_g_file_attribute_info_list_dup  g_file_attribute_info_list_dup;
alias c_g_file_attribute_info_list_lookup  g_file_attribute_info_list_lookup;
alias c_g_file_attribute_info_list_add  g_file_attribute_info_list_add;

// gio.FileInfo

alias c_g_file_info_new  g_file_info_new;
alias c_g_file_info_dup  g_file_info_dup;
alias c_g_file_info_copy_into  g_file_info_copy_into;
alias c_g_file_info_has_attribute  g_file_info_has_attribute;
alias c_g_file_info_has_namespace  g_file_info_has_namespace;
alias c_g_file_info_list_attributes  g_file_info_list_attributes;
alias c_g_file_info_get_attribute_type  g_file_info_get_attribute_type;
alias c_g_file_info_remove_attribute  g_file_info_remove_attribute;
alias c_g_file_info_get_attribute_as_string  g_file_info_get_attribute_as_string;
alias c_g_file_info_get_attribute_data  g_file_info_get_attribute_data;
alias c_g_file_info_get_attribute_status  g_file_info_get_attribute_status;
alias c_g_file_info_get_attribute_string  g_file_info_get_attribute_string;
alias c_g_file_info_get_attribute_stringv  g_file_info_get_attribute_stringv;
alias c_g_file_info_get_attribute_byte_string  g_file_info_get_attribute_byte_string;
alias c_g_file_info_get_attribute_boolean  g_file_info_get_attribute_boolean;
alias c_g_file_info_get_attribute_uint32  g_file_info_get_attribute_uint32;
alias c_g_file_info_get_attribute_int32  g_file_info_get_attribute_int32;
alias c_g_file_info_get_attribute_uint64  g_file_info_get_attribute_uint64;
alias c_g_file_info_get_attribute_int64  g_file_info_get_attribute_int64;
alias c_g_file_info_get_attribute_object  g_file_info_get_attribute_object;
alias c_g_file_info_set_attribute  g_file_info_set_attribute;
alias c_g_file_info_set_attribute_status  g_file_info_set_attribute_status;
alias c_g_file_info_set_attribute_string  g_file_info_set_attribute_string;
alias c_g_file_info_set_attribute_stringv  g_file_info_set_attribute_stringv;
alias c_g_file_info_set_attribute_byte_string  g_file_info_set_attribute_byte_string;
alias c_g_file_info_set_attribute_boolean  g_file_info_set_attribute_boolean;
alias c_g_file_info_set_attribute_uint32  g_file_info_set_attribute_uint32;
alias c_g_file_info_set_attribute_int32  g_file_info_set_attribute_int32;
alias c_g_file_info_set_attribute_uint64  g_file_info_set_attribute_uint64;
alias c_g_file_info_set_attribute_int64  g_file_info_set_attribute_int64;
alias c_g_file_info_set_attribute_object  g_file_info_set_attribute_object;
alias c_g_file_info_clear_status  g_file_info_clear_status;
alias c_g_file_info_get_file_type  g_file_info_get_file_type;
alias c_g_file_info_get_is_hidden  g_file_info_get_is_hidden;
alias c_g_file_info_get_is_backup  g_file_info_get_is_backup;
alias c_g_file_info_get_is_symlink  g_file_info_get_is_symlink;
alias c_g_file_info_get_name  g_file_info_get_name;
alias c_g_file_info_get_display_name  g_file_info_get_display_name;
alias c_g_file_info_get_edit_name  g_file_info_get_edit_name;
alias c_g_file_info_get_icon  g_file_info_get_icon;
alias c_g_file_info_get_symbolic_icon  g_file_info_get_symbolic_icon;
alias c_g_file_info_get_content_type  g_file_info_get_content_type;
alias c_g_file_info_get_size  g_file_info_get_size;
alias c_g_file_info_get_modification_time  g_file_info_get_modification_time;
alias c_g_file_info_get_symlink_target  g_file_info_get_symlink_target;
alias c_g_file_info_get_etag  g_file_info_get_etag;
alias c_g_file_info_get_sort_order  g_file_info_get_sort_order;
alias c_g_file_info_set_attribute_mask  g_file_info_set_attribute_mask;
alias c_g_file_info_unset_attribute_mask  g_file_info_unset_attribute_mask;
alias c_g_file_info_set_file_type  g_file_info_set_file_type;
alias c_g_file_info_set_is_hidden  g_file_info_set_is_hidden;
alias c_g_file_info_set_is_symlink  g_file_info_set_is_symlink;
alias c_g_file_info_set_name  g_file_info_set_name;
alias c_g_file_info_set_display_name  g_file_info_set_display_name;
alias c_g_file_info_set_edit_name  g_file_info_set_edit_name;
alias c_g_file_info_set_icon  g_file_info_set_icon;
alias c_g_file_info_set_symbolic_icon  g_file_info_set_symbolic_icon;
alias c_g_file_info_set_content_type  g_file_info_set_content_type;
alias c_g_file_info_set_size  g_file_info_set_size;
alias c_g_file_info_set_modification_time  g_file_info_set_modification_time;
alias c_g_file_info_set_symlink_target  g_file_info_set_symlink_target;
alias c_g_file_info_set_sort_order  g_file_info_set_sort_order;

// gio.FileAttributeMatcher

alias c_g_file_attribute_matcher_new  g_file_attribute_matcher_new;
alias c_g_file_attribute_matcher_ref  g_file_attribute_matcher_ref;
alias c_g_file_attribute_matcher_subtract  g_file_attribute_matcher_subtract;
alias c_g_file_attribute_matcher_unref  g_file_attribute_matcher_unref;
alias c_g_file_attribute_matcher_matches  g_file_attribute_matcher_matches;
alias c_g_file_attribute_matcher_matches_only  g_file_attribute_matcher_matches_only;
alias c_g_file_attribute_matcher_enumerate_namespace  g_file_attribute_matcher_enumerate_namespace;
alias c_g_file_attribute_matcher_enumerate_next  g_file_attribute_matcher_enumerate_next;
alias c_g_file_attribute_matcher_to_string  g_file_attribute_matcher_to_string;

// gio.FileEnumerator

alias c_g_file_enumerator_next_file  g_file_enumerator_next_file;
alias c_g_file_enumerator_close  g_file_enumerator_close;
alias c_g_file_enumerator_next_files_async  g_file_enumerator_next_files_async;
alias c_g_file_enumerator_next_files_finish  g_file_enumerator_next_files_finish;
alias c_g_file_enumerator_close_async  g_file_enumerator_close_async;
alias c_g_file_enumerator_close_finish  g_file_enumerator_close_finish;
alias c_g_file_enumerator_is_closed  g_file_enumerator_is_closed;
alias c_g_file_enumerator_has_pending  g_file_enumerator_has_pending;
alias c_g_file_enumerator_set_pending  g_file_enumerator_set_pending;
alias c_g_file_enumerator_get_container  g_file_enumerator_get_container;

// gio.ErrorGIO

alias c_g_io_error_from_errno  g_io_error_from_errno;
alias c_g_io_error_from_win32_error  g_io_error_from_win32_error;

// gio.MountOperation

alias c_g_mount_operation_new  g_mount_operation_new;
alias c_g_mount_operation_get_username  g_mount_operation_get_username;
alias c_g_mount_operation_set_username  g_mount_operation_set_username;
alias c_g_mount_operation_get_password  g_mount_operation_get_password;
alias c_g_mount_operation_set_password  g_mount_operation_set_password;
alias c_g_mount_operation_get_anonymous  g_mount_operation_get_anonymous;
alias c_g_mount_operation_set_anonymous  g_mount_operation_set_anonymous;
alias c_g_mount_operation_get_domain  g_mount_operation_get_domain;
alias c_g_mount_operation_set_domain  g_mount_operation_set_domain;
alias c_g_mount_operation_get_password_save  g_mount_operation_get_password_save;
alias c_g_mount_operation_set_password_save  g_mount_operation_set_password_save;
alias c_g_mount_operation_get_choice  g_mount_operation_get_choice;
alias c_g_mount_operation_set_choice  g_mount_operation_set_choice;
alias c_g_mount_operation_reply  g_mount_operation_reply;

// gio.FileMonitor

alias c_g_file_monitor_cancel  g_file_monitor_cancel;
alias c_g_file_monitor_is_cancelled  g_file_monitor_is_cancelled;
alias c_g_file_monitor_set_rate_limit  g_file_monitor_set_rate_limit;
alias c_g_file_monitor_emit_event  g_file_monitor_emit_event;

// gio.FilenameCompleter

alias c_g_filename_completer_new  g_filename_completer_new;
alias c_g_filename_completer_get_completion_suffix  g_filename_completer_get_completion_suffix;
alias c_g_filename_completer_get_completions  g_filename_completer_get_completions;
alias c_g_filename_completer_set_dirs_only  g_filename_completer_set_dirs_only;

// gio.Cancellable

alias c_g_cancellable_new  g_cancellable_new;
alias c_g_cancellable_is_cancelled  g_cancellable_is_cancelled;
alias c_g_cancellable_set_error_if_cancelled  g_cancellable_set_error_if_cancelled;
alias c_g_cancellable_get_fd  g_cancellable_get_fd;
alias c_g_cancellable_make_pollfd  g_cancellable_make_pollfd;
alias c_g_cancellable_release_fd  g_cancellable_release_fd;
alias c_g_cancellable_source_new  g_cancellable_source_new;
alias c_g_cancellable_get_current  g_cancellable_get_current;
alias c_g_cancellable_pop_current  g_cancellable_pop_current;
alias c_g_cancellable_push_current  g_cancellable_push_current;
alias c_g_cancellable_reset  g_cancellable_reset;
alias c_g_cancellable_connect  g_cancellable_connect;
alias c_g_cancellable_disconnect  g_cancellable_disconnect;
alias c_g_cancellable_cancel  g_cancellable_cancel;

// gio.AsyncResultT


// gio.AsyncResultT

alias c_g_async_result_get_user_data  g_async_result_get_user_data;
alias c_g_async_result_get_source_object  g_async_result_get_source_object;
alias c_g_async_result_is_tagged  g_async_result_is_tagged;
alias c_g_async_result_legacy_propagate_error  g_async_result_legacy_propagate_error;

// gio.IOSchedulerJob

alias c_g_io_scheduler_push_job  g_io_scheduler_push_job;
alias c_g_io_scheduler_cancel_all_jobs  g_io_scheduler_cancel_all_jobs;
alias c_g_io_scheduler_job_send_to_mainloop  g_io_scheduler_job_send_to_mainloop;
alias c_g_io_scheduler_job_send_to_mainloop_async  g_io_scheduler_job_send_to_mainloop_async;

// gio.SimpleAsyncResult

alias c_g_simple_async_result_new  g_simple_async_result_new;
alias c_g_simple_async_result_new_error  g_simple_async_result_new_error;
alias c_g_simple_async_result_new_from_error  g_simple_async_result_new_from_error;
alias c_g_simple_async_result_new_take_error  g_simple_async_result_new_take_error;
alias c_g_simple_async_result_set_check_cancellable  g_simple_async_result_set_check_cancellable;
alias c_g_simple_async_result_set_op_res_gpointer  g_simple_async_result_set_op_res_gpointer;
alias c_g_simple_async_result_get_op_res_gpointer  g_simple_async_result_get_op_res_gpointer;
alias c_g_simple_async_result_set_op_res_gssize  g_simple_async_result_set_op_res_gssize;
alias c_g_simple_async_result_get_op_res_gssize  g_simple_async_result_get_op_res_gssize;
alias c_g_simple_async_result_set_op_res_gboolean  g_simple_async_result_set_op_res_gboolean;
alias c_g_simple_async_result_get_op_res_gboolean  g_simple_async_result_get_op_res_gboolean;
alias c_g_simple_async_result_get_source_tag  g_simple_async_result_get_source_tag;
alias c_g_simple_async_result_is_valid  g_simple_async_result_is_valid;
alias c_g_simple_async_result_set_handle_cancellation  g_simple_async_result_set_handle_cancellation;
alias c_g_simple_async_result_complete  g_simple_async_result_complete;
alias c_g_simple_async_result_complete_in_idle  g_simple_async_result_complete_in_idle;
alias c_g_simple_async_result_run_in_thread  g_simple_async_result_run_in_thread;
alias c_g_simple_async_result_set_from_error  g_simple_async_result_set_from_error;
alias c_g_simple_async_result_take_error  g_simple_async_result_take_error;
alias c_g_simple_async_result_propagate_error  g_simple_async_result_propagate_error;
alias c_g_simple_async_result_set_error  g_simple_async_result_set_error;
alias c_g_simple_async_result_set_error_va  g_simple_async_result_set_error_va;
alias c_g_simple_async_report_error_in_idle  g_simple_async_report_error_in_idle;
alias c_g_simple_async_report_gerror_in_idle  g_simple_async_report_gerror_in_idle;
alias c_g_simple_async_report_take_gerror_in_idle  g_simple_async_report_take_gerror_in_idle;

// gio.ConverterT


// gio.ConverterT

alias c_g_converter_convert  g_converter_convert;
alias c_g_converter_reset  g_converter_reset;

// gio.Converter


// gio.CharsetConverter

alias c_g_charset_converter_new  g_charset_converter_new;
alias c_g_charset_converter_set_use_fallback  g_charset_converter_set_use_fallback;
alias c_g_charset_converter_get_use_fallback  g_charset_converter_get_use_fallback;
alias c_g_charset_converter_get_num_fallbacks  g_charset_converter_get_num_fallbacks;

// gio.ZlibCompressor

alias c_g_zlib_compressor_new  g_zlib_compressor_new;
alias c_g_zlib_compressor_get_file_info  g_zlib_compressor_get_file_info;
alias c_g_zlib_compressor_set_file_info  g_zlib_compressor_set_file_info;

// gio.ZlibDecompressor

alias c_g_zlib_decompressor_new  g_zlib_decompressor_new;
alias c_g_zlib_decompressor_get_file_info  g_zlib_decompressor_get_file_info;

// gio.SeekableT


// gio.SeekableT

alias c_g_seekable_tell  g_seekable_tell;
alias c_g_seekable_can_seek  g_seekable_can_seek;
alias c_g_seekable_seek  g_seekable_seek;
alias c_g_seekable_can_truncate  g_seekable_can_truncate;
alias c_g_seekable_truncate  g_seekable_truncate;

// gio.InputStream

alias c_g_input_stream_read  g_input_stream_read;
alias c_g_input_stream_read_all  g_input_stream_read_all;
alias c_g_input_stream_skip  g_input_stream_skip;
alias c_g_input_stream_close  g_input_stream_close;
alias c_g_input_stream_read_async  g_input_stream_read_async;
alias c_g_input_stream_read_finish  g_input_stream_read_finish;
alias c_g_input_stream_skip_async  g_input_stream_skip_async;
alias c_g_input_stream_skip_finish  g_input_stream_skip_finish;
alias c_g_input_stream_close_async  g_input_stream_close_async;
alias c_g_input_stream_close_finish  g_input_stream_close_finish;
alias c_g_input_stream_is_closed  g_input_stream_is_closed;
alias c_g_input_stream_has_pending  g_input_stream_has_pending;
alias c_g_input_stream_set_pending  g_input_stream_set_pending;
alias c_g_input_stream_clear_pending  g_input_stream_clear_pending;
alias c_g_input_stream_read_bytes  g_input_stream_read_bytes;
alias c_g_input_stream_read_bytes_async  g_input_stream_read_bytes_async;
alias c_g_input_stream_read_bytes_finish  g_input_stream_read_bytes_finish;

// gio.OutputStream

alias c_g_output_stream_write  g_output_stream_write;
alias c_g_output_stream_write_all  g_output_stream_write_all;
alias c_g_output_stream_splice  g_output_stream_splice;
alias c_g_output_stream_flush  g_output_stream_flush;
alias c_g_output_stream_close  g_output_stream_close;
alias c_g_output_stream_write_async  g_output_stream_write_async;
alias c_g_output_stream_write_finish  g_output_stream_write_finish;
alias c_g_output_stream_splice_async  g_output_stream_splice_async;
alias c_g_output_stream_splice_finish  g_output_stream_splice_finish;
alias c_g_output_stream_flush_async  g_output_stream_flush_async;
alias c_g_output_stream_flush_finish  g_output_stream_flush_finish;
alias c_g_output_stream_close_async  g_output_stream_close_async;
alias c_g_output_stream_close_finish  g_output_stream_close_finish;
alias c_g_output_stream_is_closing  g_output_stream_is_closing;
alias c_g_output_stream_is_closed  g_output_stream_is_closed;
alias c_g_output_stream_has_pending  g_output_stream_has_pending;
alias c_g_output_stream_set_pending  g_output_stream_set_pending;
alias c_g_output_stream_clear_pending  g_output_stream_clear_pending;
alias c_g_output_stream_write_bytes  g_output_stream_write_bytes;
alias c_g_output_stream_write_bytes_async  g_output_stream_write_bytes_async;
alias c_g_output_stream_write_bytes_finish  g_output_stream_write_bytes_finish;

// gio.IOStream

alias c_g_io_stream_get_input_stream  g_io_stream_get_input_stream;
alias c_g_io_stream_get_output_stream  g_io_stream_get_output_stream;
alias c_g_io_stream_splice_async  g_io_stream_splice_async;
alias c_g_io_stream_splice_finish  g_io_stream_splice_finish;
alias c_g_io_stream_close  g_io_stream_close;
alias c_g_io_stream_close_async  g_io_stream_close_async;
alias c_g_io_stream_close_finish  g_io_stream_close_finish;
alias c_g_io_stream_is_closed  g_io_stream_is_closed;
alias c_g_io_stream_has_pending  g_io_stream_has_pending;
alias c_g_io_stream_set_pending  g_io_stream_set_pending;
alias c_g_io_stream_clear_pending  g_io_stream_clear_pending;

// gio.FileInputStream

alias c_g_file_input_stream_query_info  g_file_input_stream_query_info;
alias c_g_file_input_stream_query_info_async  g_file_input_stream_query_info_async;
alias c_g_file_input_stream_query_info_finish  g_file_input_stream_query_info_finish;

// gio.FileOutputStream

alias c_g_file_output_stream_query_info  g_file_output_stream_query_info;
alias c_g_file_output_stream_query_info_async  g_file_output_stream_query_info_async;
alias c_g_file_output_stream_query_info_finish  g_file_output_stream_query_info_finish;
alias c_g_file_output_stream_get_etag  g_file_output_stream_get_etag;

// gio.FileIOStream

alias c_g_file_io_stream_get_etag  g_file_io_stream_get_etag;
alias c_g_file_io_stream_query_info  g_file_io_stream_query_info;
alias c_g_file_io_stream_query_info_async  g_file_io_stream_query_info_async;
alias c_g_file_io_stream_query_info_finish  g_file_io_stream_query_info_finish;

// gio.FileDescriptorBasedT


// gio.FileDescriptorBasedT

alias c_g_file_descriptor_based_get_fd  g_file_descriptor_based_get_fd;

// gio.FilterInputStream

alias c_g_filter_input_stream_get_base_stream  g_filter_input_stream_get_base_stream;
alias c_g_filter_input_stream_get_close_base_stream  g_filter_input_stream_get_close_base_stream;
alias c_g_filter_input_stream_set_close_base_stream  g_filter_input_stream_set_close_base_stream;

// gio.FilterOutputStream

alias c_g_filter_output_stream_get_base_stream  g_filter_output_stream_get_base_stream;
alias c_g_filter_output_stream_get_close_base_stream  g_filter_output_stream_get_close_base_stream;
alias c_g_filter_output_stream_set_close_base_stream  g_filter_output_stream_set_close_base_stream;

// gio.MemoryInputStream

alias c_g_memory_input_stream_new  g_memory_input_stream_new;
alias c_g_memory_input_stream_new_from_data  g_memory_input_stream_new_from_data;
alias c_g_memory_input_stream_add_data  g_memory_input_stream_add_data;

// gio.MemoryOutputStream

alias c_g_memory_output_stream_new  g_memory_output_stream_new;
alias c_g_memory_output_stream_get_data  g_memory_output_stream_get_data;
alias c_g_memory_output_stream_get_size  g_memory_output_stream_get_size;
alias c_g_memory_output_stream_get_data_size  g_memory_output_stream_get_data_size;
alias c_g_memory_output_stream_steal_data  g_memory_output_stream_steal_data;

// gio.BufferedInputStream

alias c_g_buffered_input_stream_new  g_buffered_input_stream_new;
alias c_g_buffered_input_stream_new_sized  g_buffered_input_stream_new_sized;
alias c_g_buffered_input_stream_get_buffer_size  g_buffered_input_stream_get_buffer_size;
alias c_g_buffered_input_stream_set_buffer_size  g_buffered_input_stream_set_buffer_size;
alias c_g_buffered_input_stream_get_available  g_buffered_input_stream_get_available;
alias c_g_buffered_input_stream_peek_buffer  g_buffered_input_stream_peek_buffer;
alias c_g_buffered_input_stream_peek  g_buffered_input_stream_peek;
alias c_g_buffered_input_stream_fill  g_buffered_input_stream_fill;
alias c_g_buffered_input_stream_fill_async  g_buffered_input_stream_fill_async;
alias c_g_buffered_input_stream_fill_finish  g_buffered_input_stream_fill_finish;
alias c_g_buffered_input_stream_read_byte  g_buffered_input_stream_read_byte;

// gio.BufferedOutputStream

alias c_g_buffered_output_stream_new  g_buffered_output_stream_new;
alias c_g_buffered_output_stream_new_sized  g_buffered_output_stream_new_sized;
alias c_g_buffered_output_stream_get_buffer_size  g_buffered_output_stream_get_buffer_size;
alias c_g_buffered_output_stream_set_buffer_size  g_buffered_output_stream_set_buffer_size;
alias c_g_buffered_output_stream_get_auto_grow  g_buffered_output_stream_get_auto_grow;
alias c_g_buffered_output_stream_set_auto_grow  g_buffered_output_stream_set_auto_grow;

// gio.DataInputStream

alias c_g_data_input_stream_new  g_data_input_stream_new;
alias c_g_data_input_stream_set_byte_order  g_data_input_stream_set_byte_order;
alias c_g_data_input_stream_get_byte_order  g_data_input_stream_get_byte_order;
alias c_g_data_input_stream_set_newline_type  g_data_input_stream_set_newline_type;
alias c_g_data_input_stream_get_newline_type  g_data_input_stream_get_newline_type;
alias c_g_data_input_stream_read_byte  g_data_input_stream_read_byte;
alias c_g_data_input_stream_read_int16  g_data_input_stream_read_int16;
alias c_g_data_input_stream_read_uint16  g_data_input_stream_read_uint16;
alias c_g_data_input_stream_read_int32  g_data_input_stream_read_int32;
alias c_g_data_input_stream_read_uint32  g_data_input_stream_read_uint32;
alias c_g_data_input_stream_read_int64  g_data_input_stream_read_int64;
alias c_g_data_input_stream_read_uint64  g_data_input_stream_read_uint64;
alias c_g_data_input_stream_read_line  g_data_input_stream_read_line;
alias c_g_data_input_stream_read_line_utf8  g_data_input_stream_read_line_utf8;
alias c_g_data_input_stream_read_line_async  g_data_input_stream_read_line_async;
alias c_g_data_input_stream_read_line_finish  g_data_input_stream_read_line_finish;
alias c_g_data_input_stream_read_line_finish_utf8  g_data_input_stream_read_line_finish_utf8;
alias c_g_data_input_stream_read_upto  g_data_input_stream_read_upto;
alias c_g_data_input_stream_read_upto_async  g_data_input_stream_read_upto_async;
alias c_g_data_input_stream_read_upto_finish  g_data_input_stream_read_upto_finish;
alias c_g_data_input_stream_read_until  g_data_input_stream_read_until;
alias c_g_data_input_stream_read_until_async  g_data_input_stream_read_until_async;
alias c_g_data_input_stream_read_until_finish  g_data_input_stream_read_until_finish;

// gio.DataOutputStream

alias c_g_data_output_stream_new  g_data_output_stream_new;
alias c_g_data_output_stream_set_byte_order  g_data_output_stream_set_byte_order;
alias c_g_data_output_stream_get_byte_order  g_data_output_stream_get_byte_order;
alias c_g_data_output_stream_put_byte  g_data_output_stream_put_byte;
alias c_g_data_output_stream_put_int16  g_data_output_stream_put_int16;
alias c_g_data_output_stream_put_uint16  g_data_output_stream_put_uint16;
alias c_g_data_output_stream_put_int32  g_data_output_stream_put_int32;
alias c_g_data_output_stream_put_uint32  g_data_output_stream_put_uint32;
alias c_g_data_output_stream_put_int64  g_data_output_stream_put_int64;
alias c_g_data_output_stream_put_uint64  g_data_output_stream_put_uint64;
alias c_g_data_output_stream_put_string  g_data_output_stream_put_string;

// gio.UnixInputStream

alias c_g_unix_input_stream_new  g_unix_input_stream_new;
alias c_g_unix_input_stream_set_close_fd  g_unix_input_stream_set_close_fd;
alias c_g_unix_input_stream_get_close_fd  g_unix_input_stream_get_close_fd;
alias c_g_unix_input_stream_get_fd  g_unix_input_stream_get_fd;

// gio.UnixOutputStream

alias c_g_unix_output_stream_new  g_unix_output_stream_new;
alias c_g_unix_output_stream_set_close_fd  g_unix_output_stream_set_close_fd;
alias c_g_unix_output_stream_get_close_fd  g_unix_output_stream_get_close_fd;
alias c_g_unix_output_stream_get_fd  g_unix_output_stream_get_fd;

// gio.ConverterInputStream

alias c_g_converter_input_stream_new  g_converter_input_stream_new;
alias c_g_converter_input_stream_get_converter  g_converter_input_stream_get_converter;

// gio.ConverterOutputStream

alias c_g_converter_output_stream_new  g_converter_output_stream_new;
alias c_g_converter_output_stream_get_converter  g_converter_output_stream_get_converter;

// gio.PollableInputStreamT


// gio.PollableInputStreamT

alias c_g_pollable_input_stream_can_poll  g_pollable_input_stream_can_poll;
alias c_g_pollable_input_stream_is_readable  g_pollable_input_stream_is_readable;
alias c_g_pollable_input_stream_create_source  g_pollable_input_stream_create_source;
alias c_g_pollable_input_stream_read_nonblocking  g_pollable_input_stream_read_nonblocking;

// gio.PollableOutputStreamT


// gio.PollableOutputStreamT

alias c_g_pollable_output_stream_can_poll  g_pollable_output_stream_can_poll;
alias c_g_pollable_output_stream_is_writable  g_pollable_output_stream_is_writable;
alias c_g_pollable_output_stream_create_source  g_pollable_output_stream_create_source;
alias c_g_pollable_output_stream_write_nonblocking  g_pollable_output_stream_write_nonblocking;

// gio.

alias c_g_pollable_source_new  g_pollable_source_new;
alias c_g_pollable_source_new_full  g_pollable_source_new_full;
alias c_g_pollable_stream_read  g_pollable_stream_read;
alias c_g_pollable_stream_write  g_pollable_stream_write;
alias c_g_pollable_stream_write_all  g_pollable_stream_write_all;

// gio.ContentType

alias c_g_content_type_equals  g_content_type_equals;
alias c_g_content_type_is_a  g_content_type_is_a;
alias c_g_content_type_is_unknown  g_content_type_is_unknown;
alias c_g_content_type_get_description  g_content_type_get_description;
alias c_g_content_type_get_mime_type  g_content_type_get_mime_type;
alias c_g_content_type_get_icon  g_content_type_get_icon;
alias c_g_content_type_get_symbolic_icon  g_content_type_get_symbolic_icon;
alias c_g_content_type_get_generic_icon_name  g_content_type_get_generic_icon_name;
alias c_g_content_type_can_be_executable  g_content_type_can_be_executable;
alias c_g_content_type_from_mime_type  g_content_type_from_mime_type;
alias c_g_content_type_guess  g_content_type_guess;
alias c_g_content_type_guess_for_tree  g_content_type_guess_for_tree;
alias c_g_content_types_get_registered  g_content_types_get_registered;

// gio.AppInfoT


// gio.AppInfoT

alias c_g_app_info_create_from_commandline  g_app_info_create_from_commandline;
alias c_g_app_info_dup  g_app_info_dup;
alias c_g_app_info_equal  g_app_info_equal;
alias c_g_app_info_get_id  g_app_info_get_id;
alias c_g_app_info_get_name  g_app_info_get_name;
alias c_g_app_info_get_display_name  g_app_info_get_display_name;
alias c_g_app_info_get_description  g_app_info_get_description;
alias c_g_app_info_get_executable  g_app_info_get_executable;
alias c_g_app_info_get_commandline  g_app_info_get_commandline;
alias c_g_app_info_get_icon  g_app_info_get_icon;
alias c_g_app_info_launch  g_app_info_launch;
alias c_g_app_info_supports_files  g_app_info_supports_files;
alias c_g_app_info_supports_uris  g_app_info_supports_uris;
alias c_g_app_info_launch_uris  g_app_info_launch_uris;
alias c_g_app_info_should_show  g_app_info_should_show;
alias c_g_app_info_can_delete  g_app_info_can_delete;
alias c_g_app_info_delete  g_app_info_delete;
alias c_g_app_info_reset_type_associations  g_app_info_reset_type_associations;
alias c_g_app_info_set_as_default_for_type  g_app_info_set_as_default_for_type;
alias c_g_app_info_set_as_default_for_extension  g_app_info_set_as_default_for_extension;
alias c_g_app_info_set_as_last_used_for_type  g_app_info_set_as_last_used_for_type;
alias c_g_app_info_add_supports_type  g_app_info_add_supports_type;
alias c_g_app_info_can_remove_supports_type  g_app_info_can_remove_supports_type;
alias c_g_app_info_remove_supports_type  g_app_info_remove_supports_type;
alias c_g_app_info_get_supported_types  g_app_info_get_supported_types;
alias c_g_app_info_get_all  g_app_info_get_all;
alias c_g_app_info_get_all_for_type  g_app_info_get_all_for_type;
alias c_g_app_info_get_default_for_type  g_app_info_get_default_for_type;
alias c_g_app_info_get_default_for_uri_scheme  g_app_info_get_default_for_uri_scheme;
alias c_g_app_info_get_fallback_for_type  g_app_info_get_fallback_for_type;
alias c_g_app_info_get_recommended_for_type  g_app_info_get_recommended_for_type;
alias c_g_app_info_launch_default_for_uri  g_app_info_launch_default_for_uri;

// gio.AppInfo


// gio.AppLaunchContext


// gio.DesktopAppInfo

alias c_g_desktop_app_info_new_from_filename  g_desktop_app_info_new_from_filename;
alias c_g_desktop_app_info_new_from_keyfile  g_desktop_app_info_new_from_keyfile;
alias c_g_desktop_app_info_new  g_desktop_app_info_new;
alias c_g_desktop_app_info_get_filename  g_desktop_app_info_get_filename;
alias c_g_desktop_app_info_get_is_hidden  g_desktop_app_info_get_is_hidden;
alias c_g_desktop_app_info_get_nodisplay  g_desktop_app_info_get_nodisplay;
alias c_g_desktop_app_info_get_show_in  g_desktop_app_info_get_show_in;
alias c_g_desktop_app_info_get_generic_name  g_desktop_app_info_get_generic_name;
alias c_g_desktop_app_info_get_categories  g_desktop_app_info_get_categories;
alias c_g_desktop_app_info_get_keywords  g_desktop_app_info_get_keywords;
alias c_g_desktop_app_info_get_startup_wm_class  g_desktop_app_info_get_startup_wm_class;
alias c_g_desktop_app_info_set_desktop_env  g_desktop_app_info_set_desktop_env;
alias c_g_desktop_app_info_launch_uris_as_manager  g_desktop_app_info_launch_uris_as_manager;

// gio.VolumeMonitor

alias c_g_volume_monitor_get  g_volume_monitor_get;
alias c_g_volume_monitor_get_connected_drives  g_volume_monitor_get_connected_drives;
alias c_g_volume_monitor_get_volumes  g_volume_monitor_get_volumes;
alias c_g_volume_monitor_get_mounts  g_volume_monitor_get_mounts;
alias c_g_volume_monitor_adopt_orphan_mount  g_volume_monitor_adopt_orphan_mount;
alias c_g_volume_monitor_get_mount_for_uuid  g_volume_monitor_get_mount_for_uuid;
alias c_g_volume_monitor_get_volume_for_uuid  g_volume_monitor_get_volume_for_uuid;

// gio.VolumeT


// gio.VolumeT

alias c_g_volume_get_name  g_volume_get_name;
alias c_g_volume_get_uuid  g_volume_get_uuid;
alias c_g_volume_get_icon  g_volume_get_icon;
alias c_g_volume_get_symbolic_icon  g_volume_get_symbolic_icon;
alias c_g_volume_get_drive  g_volume_get_drive;
alias c_g_volume_get_mount  g_volume_get_mount;
alias c_g_volume_can_mount  g_volume_can_mount;
alias c_g_volume_should_automount  g_volume_should_automount;
alias c_g_volume_get_activation_root  g_volume_get_activation_root;
alias c_g_volume_mount  g_volume_mount;
alias c_g_volume_mount_finish  g_volume_mount_finish;
alias c_g_volume_can_eject  g_volume_can_eject;
alias c_g_volume_eject  g_volume_eject;
alias c_g_volume_eject_finish  g_volume_eject_finish;
alias c_g_volume_eject_with_operation  g_volume_eject_with_operation;
alias c_g_volume_eject_with_operation_finish  g_volume_eject_with_operation_finish;
alias c_g_volume_enumerate_identifiers  g_volume_enumerate_identifiers;
alias c_g_volume_get_identifier  g_volume_get_identifier;
alias c_g_volume_get_sort_key  g_volume_get_sort_key;

// gio.Volume


// gio.MountT


// gio.MountT

alias c_g_mount_get_name  g_mount_get_name;
alias c_g_mount_get_uuid  g_mount_get_uuid;
alias c_g_mount_get_icon  g_mount_get_icon;
alias c_g_mount_get_symbolic_icon  g_mount_get_symbolic_icon;
alias c_g_mount_get_drive  g_mount_get_drive;
alias c_g_mount_get_root  g_mount_get_root;
alias c_g_mount_get_volume  g_mount_get_volume;
alias c_g_mount_get_default_location  g_mount_get_default_location;
alias c_g_mount_can_unmount  g_mount_can_unmount;
alias c_g_mount_unmount  g_mount_unmount;
alias c_g_mount_unmount_finish  g_mount_unmount_finish;
alias c_g_mount_unmount_with_operation  g_mount_unmount_with_operation;
alias c_g_mount_unmount_with_operation_finish  g_mount_unmount_with_operation_finish;
alias c_g_mount_remount  g_mount_remount;
alias c_g_mount_remount_finish  g_mount_remount_finish;
alias c_g_mount_can_eject  g_mount_can_eject;
alias c_g_mount_eject  g_mount_eject;
alias c_g_mount_eject_finish  g_mount_eject_finish;
alias c_g_mount_eject_with_operation  g_mount_eject_with_operation;
alias c_g_mount_eject_with_operation_finish  g_mount_eject_with_operation_finish;
alias c_g_mount_guess_content_type  g_mount_guess_content_type;
alias c_g_mount_guess_content_type_finish  g_mount_guess_content_type_finish;
alias c_g_mount_guess_content_type_sync  g_mount_guess_content_type_sync;
alias c_g_mount_is_shadowed  g_mount_is_shadowed;
alias c_g_mount_shadow  g_mount_shadow;
alias c_g_mount_unshadow  g_mount_unshadow;
alias c_g_mount_get_sort_key  g_mount_get_sort_key;

// gio.Mount


// gio.DriveT


// gio.DriveT

alias c_g_drive_get_name  g_drive_get_name;
alias c_g_drive_get_icon  g_drive_get_icon;
alias c_g_drive_get_symbolic_icon  g_drive_get_symbolic_icon;
alias c_g_drive_has_volumes  g_drive_has_volumes;
alias c_g_drive_get_volumes  g_drive_get_volumes;
alias c_g_drive_can_eject  g_drive_can_eject;
alias c_g_drive_get_start_stop_type  g_drive_get_start_stop_type;
alias c_g_drive_can_start  g_drive_can_start;
alias c_g_drive_can_start_degraded  g_drive_can_start_degraded;
alias c_g_drive_can_stop  g_drive_can_stop;
alias c_g_drive_can_poll_for_media  g_drive_can_poll_for_media;
alias c_g_drive_poll_for_media  g_drive_poll_for_media;
alias c_g_drive_poll_for_media_finish  g_drive_poll_for_media_finish;
alias c_g_drive_has_media  g_drive_has_media;
alias c_g_drive_is_media_check_automatic  g_drive_is_media_check_automatic;
alias c_g_drive_is_media_removable  g_drive_is_media_removable;
alias c_g_drive_eject  g_drive_eject;
alias c_g_drive_eject_finish  g_drive_eject_finish;
alias c_g_drive_eject_with_operation  g_drive_eject_with_operation;
alias c_g_drive_eject_with_operation_finish  g_drive_eject_with_operation_finish;
alias c_g_drive_start  g_drive_start;
alias c_g_drive_start_finish  g_drive_start_finish;
alias c_g_drive_stop  g_drive_stop;
alias c_g_drive_stop_finish  g_drive_stop_finish;
alias c_g_drive_enumerate_identifiers  g_drive_enumerate_identifiers;
alias c_g_drive_get_identifier  g_drive_get_identifier;
alias c_g_drive_get_sort_key  g_drive_get_sort_key;

// gio.Drive


// gio.UnixMountEntry

alias c_g_unix_mount_free  g_unix_mount_free;
alias c_g_unix_mount_compare  g_unix_mount_compare;
alias c_g_unix_mount_get_mount_path  g_unix_mount_get_mount_path;
alias c_g_unix_mount_get_device_path  g_unix_mount_get_device_path;
alias c_g_unix_mount_get_fs_type  g_unix_mount_get_fs_type;
alias c_g_unix_mount_is_readonly  g_unix_mount_is_readonly;
alias c_g_unix_mount_is_system_internal  g_unix_mount_is_system_internal;
alias c_g_unix_mount_guess_icon  g_unix_mount_guess_icon;
alias c_g_unix_mount_guess_symbolic_icon  g_unix_mount_guess_symbolic_icon;
alias c_g_unix_mount_guess_name  g_unix_mount_guess_name;
alias c_g_unix_mount_guess_can_eject  g_unix_mount_guess_can_eject;
alias c_g_unix_mount_guess_should_display  g_unix_mount_guess_should_display;
alias c_g_unix_mount_points_get  g_unix_mount_points_get;
alias c_g_unix_mounts_get  g_unix_mounts_get;
alias c_g_unix_mount_at  g_unix_mount_at;
alias c_g_unix_mounts_changed_since  g_unix_mounts_changed_since;
alias c_g_unix_mount_points_changed_since  g_unix_mount_points_changed_since;
alias c_g_unix_is_mount_path_system_internal  g_unix_is_mount_path_system_internal;

// gio.UnixMountPoint

alias c_g_unix_mount_point_free  g_unix_mount_point_free;
alias c_g_unix_mount_point_compare  g_unix_mount_point_compare;
alias c_g_unix_mount_point_get_mount_path  g_unix_mount_point_get_mount_path;
alias c_g_unix_mount_point_get_device_path  g_unix_mount_point_get_device_path;
alias c_g_unix_mount_point_get_fs_type  g_unix_mount_point_get_fs_type;
alias c_g_unix_mount_point_get_options  g_unix_mount_point_get_options;
alias c_g_unix_mount_point_is_readonly  g_unix_mount_point_is_readonly;
alias c_g_unix_mount_point_is_user_mountable  g_unix_mount_point_is_user_mountable;
alias c_g_unix_mount_point_is_loopback  g_unix_mount_point_is_loopback;
alias c_g_unix_mount_point_guess_icon  g_unix_mount_point_guess_icon;
alias c_g_unix_mount_point_guess_symbolic_icon  g_unix_mount_point_guess_symbolic_icon;
alias c_g_unix_mount_point_guess_name  g_unix_mount_point_guess_name;
alias c_g_unix_mount_point_guess_can_eject  g_unix_mount_point_guess_can_eject;

// gio.UnixMountMonitor

alias c_g_unix_mount_monitor_new  g_unix_mount_monitor_new;
alias c_g_unix_mount_monitor_set_rate_limit  g_unix_mount_monitor_set_rate_limit;

// gio.IconT


// gio.IconT

alias c_g_icon_hash  g_icon_hash;
alias c_g_icon_equal  g_icon_equal;
alias c_g_icon_to_string  g_icon_to_string;
alias c_g_icon_new_for_string  g_icon_new_for_string;

// gio.Icon


// gio.FileIcon

alias c_g_file_icon_new  g_file_icon_new;
alias c_g_file_icon_get_file  g_file_icon_get_file;

// gio.LoadableIconT


// gio.LoadableIconT

alias c_g_loadable_icon_load  g_loadable_icon_load;
alias c_g_loadable_icon_load_async  g_loadable_icon_load_async;
alias c_g_loadable_icon_load_finish  g_loadable_icon_load_finish;

// gio.ThemedIcon

alias c_g_themed_icon_new  g_themed_icon_new;
alias c_g_themed_icon_new_from_names  g_themed_icon_new_from_names;
alias c_g_themed_icon_new_with_default_fallbacks  g_themed_icon_new_with_default_fallbacks;
alias c_g_themed_icon_prepend_name  g_themed_icon_prepend_name;
alias c_g_themed_icon_append_name  g_themed_icon_append_name;
alias c_g_themed_icon_get_names  g_themed_icon_get_names;

// gio.EmblemedIcon

alias c_g_emblemed_icon_new  g_emblemed_icon_new;
alias c_g_emblemed_icon_get_icon  g_emblemed_icon_get_icon;
alias c_g_emblemed_icon_get_emblems  g_emblemed_icon_get_emblems;
alias c_g_emblemed_icon_add_emblem  g_emblemed_icon_add_emblem;
alias c_g_emblemed_icon_clear_emblems  g_emblemed_icon_clear_emblems;

// gio.Emblem

alias c_g_emblem_new  g_emblem_new;
alias c_g_emblem_new_with_origin  g_emblem_new_with_origin;
alias c_g_emblem_get_icon  g_emblem_get_icon;
alias c_g_emblem_get_origin  g_emblem_get_origin;

// gio.InitableT


// gio.InitableT

alias c_g_initable_init  g_initable_init;
alias c_g_initable_new  g_initable_new;
alias c_g_initable_new_valist  g_initable_new_valist;
alias c_g_initable_newv  g_initable_newv;

// gio.AsyncInitableT


// gio.AsyncInitableT

alias c_g_async_initable_init_async  g_async_initable_init_async;
alias c_g_async_initable_init_finish  g_async_initable_init_finish;
alias c_g_async_initable_new_async  g_async_initable_new_async;
alias c_g_async_initable_new_finish  g_async_initable_new_finish;
alias c_g_async_initable_new_valist_async  g_async_initable_new_valist_async;
alias c_g_async_initable_newv_async  g_async_initable_newv_async;

// gio.Socket

alias c_g_socket_new  g_socket_new;
alias c_g_socket_new_from_fd  g_socket_new_from_fd;
alias c_g_socket_bind  g_socket_bind;
alias c_g_socket_listen  g_socket_listen;
alias c_g_socket_accept  g_socket_accept;
alias c_g_socket_connect  g_socket_connect;
alias c_g_socket_check_connect_result  g_socket_check_connect_result;
alias c_g_socket_receive  g_socket_receive;
alias c_g_socket_receive_from  g_socket_receive_from;
alias c_g_socket_receive_message  g_socket_receive_message;
alias c_g_socket_receive_with_blocking  g_socket_receive_with_blocking;
alias c_g_socket_send  g_socket_send;
alias c_g_socket_send_to  g_socket_send_to;
alias c_g_socket_send_message  g_socket_send_message;
alias c_g_socket_send_with_blocking  g_socket_send_with_blocking;
alias c_g_socket_close  g_socket_close;
alias c_g_socket_is_closed  g_socket_is_closed;
alias c_g_socket_shutdown  g_socket_shutdown;
alias c_g_socket_is_connected  g_socket_is_connected;
alias c_g_socket_create_source  g_socket_create_source;
alias c_g_socket_condition_check  g_socket_condition_check;
alias c_g_socket_condition_wait  g_socket_condition_wait;
alias c_g_socket_condition_timed_wait  g_socket_condition_timed_wait;
alias c_g_socket_get_available_bytes  g_socket_get_available_bytes;
alias c_g_socket_set_listen_backlog  g_socket_set_listen_backlog;
alias c_g_socket_get_listen_backlog  g_socket_get_listen_backlog;
alias c_g_socket_get_blocking  g_socket_get_blocking;
alias c_g_socket_set_blocking  g_socket_set_blocking;
alias c_g_socket_get_keepalive  g_socket_get_keepalive;
alias c_g_socket_set_keepalive  g_socket_set_keepalive;
alias c_g_socket_get_timeout  g_socket_get_timeout;
alias c_g_socket_set_timeout  g_socket_set_timeout;
alias c_g_socket_set_ttl  g_socket_set_ttl;
alias c_g_socket_get_ttl  g_socket_get_ttl;
alias c_g_socket_get_broadcast  g_socket_get_broadcast;
alias c_g_socket_set_broadcast  g_socket_set_broadcast;
alias c_g_socket_get_family  g_socket_get_family;
alias c_g_socket_get_fd  g_socket_get_fd;
alias c_g_socket_get_local_address  g_socket_get_local_address;
alias c_g_socket_get_protocol  g_socket_get_protocol;
alias c_g_socket_get_remote_address  g_socket_get_remote_address;
alias c_g_socket_get_socket_type  g_socket_get_socket_type;
alias c_g_socket_speaks_ipv4  g_socket_speaks_ipv4;
alias c_g_socket_get_credentials  g_socket_get_credentials;
alias c_g_socket_join_multicast_group  g_socket_join_multicast_group;
alias c_g_socket_leave_multicast_group  g_socket_leave_multicast_group;
alias c_g_socket_get_multicast_loopback  g_socket_get_multicast_loopback;
alias c_g_socket_set_multicast_loopback  g_socket_set_multicast_loopback;
alias c_g_socket_get_multicast_ttl  g_socket_get_multicast_ttl;
alias c_g_socket_set_multicast_ttl  g_socket_set_multicast_ttl;

// gio.InetAddress

alias c_g_inet_address_new_from_string  g_inet_address_new_from_string;
alias c_g_inet_address_new_from_bytes  g_inet_address_new_from_bytes;
alias c_g_inet_address_new_any  g_inet_address_new_any;
alias c_g_inet_address_new_loopback  g_inet_address_new_loopback;
alias c_g_inet_address_equal  g_inet_address_equal;
alias c_g_inet_address_to_bytes  g_inet_address_to_bytes;
alias c_g_inet_address_get_native_size  g_inet_address_get_native_size;
alias c_g_inet_address_to_string  g_inet_address_to_string;
alias c_g_inet_address_get_family  g_inet_address_get_family;
alias c_g_inet_address_get_is_any  g_inet_address_get_is_any;
alias c_g_inet_address_get_is_loopback  g_inet_address_get_is_loopback;
alias c_g_inet_address_get_is_link_local  g_inet_address_get_is_link_local;
alias c_g_inet_address_get_is_site_local  g_inet_address_get_is_site_local;
alias c_g_inet_address_get_is_multicast  g_inet_address_get_is_multicast;
alias c_g_inet_address_get_is_mc_link_local  g_inet_address_get_is_mc_link_local;
alias c_g_inet_address_get_is_mc_node_local  g_inet_address_get_is_mc_node_local;
alias c_g_inet_address_get_is_mc_site_local  g_inet_address_get_is_mc_site_local;
alias c_g_inet_address_get_is_mc_org_local  g_inet_address_get_is_mc_org_local;
alias c_g_inet_address_get_is_mc_global  g_inet_address_get_is_mc_global;

// gio.InetAddressMask

alias c_g_inet_address_mask_new  g_inet_address_mask_new;
alias c_g_inet_address_mask_new_from_string  g_inet_address_mask_new_from_string;
alias c_g_inet_address_mask_to_string  g_inet_address_mask_to_string;
alias c_g_inet_address_mask_get_family  g_inet_address_mask_get_family;
alias c_g_inet_address_mask_get_address  g_inet_address_mask_get_address;
alias c_g_inet_address_mask_get_length  g_inet_address_mask_get_length;
alias c_g_inet_address_mask_matches  g_inet_address_mask_matches;
alias c_g_inet_address_mask_equal  g_inet_address_mask_equal;

// gio.SocketAddress

alias c_g_socket_address_new_from_native  g_socket_address_new_from_native;
alias c_g_socket_address_get_family  g_socket_address_get_family;
alias c_g_socket_address_to_native  g_socket_address_to_native;
alias c_g_socket_address_get_native_size  g_socket_address_get_native_size;

// gio.InetSocketAddress

alias c_g_inet_socket_address_new  g_inet_socket_address_new;
alias c_g_inet_socket_address_get_address  g_inet_socket_address_get_address;
alias c_g_inet_socket_address_get_port  g_inet_socket_address_get_port;
alias c_g_inet_socket_address_get_flowinfo  g_inet_socket_address_get_flowinfo;
alias c_g_inet_socket_address_get_scope_id  g_inet_socket_address_get_scope_id;

// gio.UnixSocketAddress

alias c_g_unix_socket_address_new  g_unix_socket_address_new;
alias c_g_unix_socket_address_new_abstract  g_unix_socket_address_new_abstract;
alias c_g_unix_socket_address_new_with_type  g_unix_socket_address_new_with_type;
alias c_g_unix_socket_address_get_is_abstract  g_unix_socket_address_get_is_abstract;
alias c_g_unix_socket_address_get_address_type  g_unix_socket_address_get_address_type;
alias c_g_unix_socket_address_get_path  g_unix_socket_address_get_path;
alias c_g_unix_socket_address_get_path_len  g_unix_socket_address_get_path_len;
alias c_g_unix_socket_address_abstract_names_supported  g_unix_socket_address_abstract_names_supported;

// gio.SocketControlMessage

alias c_g_socket_control_message_deserialize  g_socket_control_message_deserialize;
alias c_g_socket_control_message_get_level  g_socket_control_message_get_level;
alias c_g_socket_control_message_get_msg_type  g_socket_control_message_get_msg_type;
alias c_g_socket_control_message_get_size  g_socket_control_message_get_size;
alias c_g_socket_control_message_serialize  g_socket_control_message_serialize;

// gio.UnixFDList

alias c_g_unix_fd_list_new_from_array  g_unix_fd_list_new_from_array;
alias c_g_unix_fd_list_new  g_unix_fd_list_new;
alias c_g_unix_fd_list_get_length  g_unix_fd_list_get_length;
alias c_g_unix_fd_list_get  g_unix_fd_list_get;
alias c_g_unix_fd_list_peek_fds  g_unix_fd_list_peek_fds;
alias c_g_unix_fd_list_steal_fds  g_unix_fd_list_steal_fds;
alias c_g_unix_fd_list_append  g_unix_fd_list_append;

// gio.UnixFDMessage

alias c_g_unix_fd_message_new_with_fd_list  g_unix_fd_message_new_with_fd_list;
alias c_g_unix_fd_message_new  g_unix_fd_message_new;
alias c_g_unix_fd_message_get_fd_list  g_unix_fd_message_get_fd_list;
alias c_g_unix_fd_message_append_fd  g_unix_fd_message_append_fd;
alias c_g_unix_fd_message_steal_fds  g_unix_fd_message_steal_fds;

// gio.Credentials

alias c_g_credentials_new  g_credentials_new;
alias c_g_credentials_to_string  g_credentials_to_string;
alias c_g_credentials_get_native  g_credentials_get_native;
alias c_g_credentials_set_native  g_credentials_set_native;
alias c_g_credentials_is_same_user  g_credentials_is_same_user;
alias c_g_credentials_get_unix_user  g_credentials_get_unix_user;
alias c_g_credentials_set_unix_user  g_credentials_set_unix_user;

// gio.UnixCredentialsMessage

alias c_g_unix_credentials_message_new  g_unix_credentials_message_new;
alias c_g_unix_credentials_message_new_with_credentials  g_unix_credentials_message_new_with_credentials;
alias c_g_unix_credentials_message_get_credentials  g_unix_credentials_message_get_credentials;
alias c_g_unix_credentials_message_is_supported  g_unix_credentials_message_is_supported;

// gio.ProxyT


// gio.ProxyT

alias c_g_proxy_connect  g_proxy_connect;
alias c_g_proxy_connect_async  g_proxy_connect_async;
alias c_g_proxy_connect_finish  g_proxy_connect_finish;
alias c_g_proxy_get_default_for_protocol  g_proxy_get_default_for_protocol;
alias c_g_proxy_supports_hostname  g_proxy_supports_hostname;

// gio.Proxy


// gio.ProxyAddress

alias c_g_proxy_address_get_destination_protocol  g_proxy_address_get_destination_protocol;
alias c_g_proxy_address_get_destination_hostname  g_proxy_address_get_destination_hostname;
alias c_g_proxy_address_get_destination_port  g_proxy_address_get_destination_port;
alias c_g_proxy_address_get_password  g_proxy_address_get_password;
alias c_g_proxy_address_get_protocol  g_proxy_address_get_protocol;
alias c_g_proxy_address_get_username  g_proxy_address_get_username;
alias c_g_proxy_address_get_uri  g_proxy_address_get_uri;
alias c_g_proxy_address_new  g_proxy_address_new;

// gio.SocketClient

alias c_g_socket_client_new  g_socket_client_new;
alias c_g_socket_client_connect  g_socket_client_connect;
alias c_g_socket_client_connect_async  g_socket_client_connect_async;
alias c_g_socket_client_connect_finish  g_socket_client_connect_finish;
alias c_g_socket_client_connect_to_host  g_socket_client_connect_to_host;
alias c_g_socket_client_connect_to_host_async  g_socket_client_connect_to_host_async;
alias c_g_socket_client_connect_to_host_finish  g_socket_client_connect_to_host_finish;
alias c_g_socket_client_connect_to_service  g_socket_client_connect_to_service;
alias c_g_socket_client_connect_to_service_async  g_socket_client_connect_to_service_async;
alias c_g_socket_client_connect_to_service_finish  g_socket_client_connect_to_service_finish;
alias c_g_socket_client_connect_to_uri  g_socket_client_connect_to_uri;
alias c_g_socket_client_connect_to_uri_async  g_socket_client_connect_to_uri_async;
alias c_g_socket_client_connect_to_uri_finish  g_socket_client_connect_to_uri_finish;
alias c_g_socket_client_set_family  g_socket_client_set_family;
alias c_g_socket_client_set_local_address  g_socket_client_set_local_address;
alias c_g_socket_client_set_protocol  g_socket_client_set_protocol;
alias c_g_socket_client_set_socket_type  g_socket_client_set_socket_type;
alias c_g_socket_client_set_timeout  g_socket_client_set_timeout;
alias c_g_socket_client_set_enable_proxy  g_socket_client_set_enable_proxy;
alias c_g_socket_client_set_tls  g_socket_client_set_tls;
alias c_g_socket_client_set_tls_validation_flags  g_socket_client_set_tls_validation_flags;
alias c_g_socket_client_get_family  g_socket_client_get_family;
alias c_g_socket_client_get_local_address  g_socket_client_get_local_address;
alias c_g_socket_client_get_protocol  g_socket_client_get_protocol;
alias c_g_socket_client_get_socket_type  g_socket_client_get_socket_type;
alias c_g_socket_client_get_timeout  g_socket_client_get_timeout;
alias c_g_socket_client_get_enable_proxy  g_socket_client_get_enable_proxy;
alias c_g_socket_client_get_tls  g_socket_client_get_tls;
alias c_g_socket_client_get_tls_validation_flags  g_socket_client_get_tls_validation_flags;
alias c_g_socket_client_add_application_proxy  g_socket_client_add_application_proxy;

// gio.SocketConnection

alias c_g_socket_connection_connect  g_socket_connection_connect;
alias c_g_socket_connection_connect_async  g_socket_connection_connect_async;
alias c_g_socket_connection_connect_finish  g_socket_connection_connect_finish;
alias c_g_socket_connection_is_connected  g_socket_connection_is_connected;
alias c_g_socket_connection_get_local_address  g_socket_connection_get_local_address;
alias c_g_socket_connection_get_remote_address  g_socket_connection_get_remote_address;
alias c_g_socket_connection_get_socket  g_socket_connection_get_socket;
alias c_g_socket_connection_factory_create_connection  g_socket_connection_factory_create_connection;
alias c_g_socket_connection_factory_lookup_type  g_socket_connection_factory_lookup_type;
alias c_g_socket_connection_factory_register_type  g_socket_connection_factory_register_type;

// gio.UnixConnection

alias c_g_unix_connection_receive_fd  g_unix_connection_receive_fd;
alias c_g_unix_connection_send_fd  g_unix_connection_send_fd;
alias c_g_unix_connection_receive_credentials  g_unix_connection_receive_credentials;
alias c_g_unix_connection_receive_credentials_async  g_unix_connection_receive_credentials_async;
alias c_g_unix_connection_receive_credentials_finish  g_unix_connection_receive_credentials_finish;
alias c_g_unix_connection_send_credentials  g_unix_connection_send_credentials;
alias c_g_unix_connection_send_credentials_async  g_unix_connection_send_credentials_async;
alias c_g_unix_connection_send_credentials_finish  g_unix_connection_send_credentials_finish;

// gio.TcpConnection

alias c_g_tcp_connection_set_graceful_disconnect  g_tcp_connection_set_graceful_disconnect;
alias c_g_tcp_connection_get_graceful_disconnect  g_tcp_connection_get_graceful_disconnect;

// gio.SocketListener

alias c_g_socket_listener_new  g_socket_listener_new;
alias c_g_socket_listener_add_socket  g_socket_listener_add_socket;
alias c_g_socket_listener_add_address  g_socket_listener_add_address;
alias c_g_socket_listener_add_inet_port  g_socket_listener_add_inet_port;
alias c_g_socket_listener_add_any_inet_port  g_socket_listener_add_any_inet_port;
alias c_g_socket_listener_accept  g_socket_listener_accept;
alias c_g_socket_listener_accept_async  g_socket_listener_accept_async;
alias c_g_socket_listener_accept_finish  g_socket_listener_accept_finish;
alias c_g_socket_listener_accept_socket  g_socket_listener_accept_socket;
alias c_g_socket_listener_accept_socket_async  g_socket_listener_accept_socket_async;
alias c_g_socket_listener_accept_socket_finish  g_socket_listener_accept_socket_finish;
alias c_g_socket_listener_close  g_socket_listener_close;
alias c_g_socket_listener_set_backlog  g_socket_listener_set_backlog;

// gio.SocketService

alias c_g_socket_service_new  g_socket_service_new;
alias c_g_socket_service_start  g_socket_service_start;
alias c_g_socket_service_stop  g_socket_service_stop;
alias c_g_socket_service_is_active  g_socket_service_is_active;

// gio.ThreadedSocketService

alias c_g_threaded_socket_service_new  g_threaded_socket_service_new;

// gio.NetworkMonitorT


// gio.NetworkMonitorT

alias c_g_network_monitor_get_default  g_network_monitor_get_default;
alias c_g_network_monitor_get_network_available  g_network_monitor_get_network_available;
alias c_g_network_monitor_can_reach  g_network_monitor_can_reach;
alias c_g_network_monitor_can_reach_async  g_network_monitor_can_reach_async;
alias c_g_network_monitor_can_reach_finish  g_network_monitor_can_reach_finish;

// gio.NetworkMonitor


// gio.TlsCertificate

alias c_g_tls_certificate_new_from_pem  g_tls_certificate_new_from_pem;
alias c_g_tls_certificate_new_from_file  g_tls_certificate_new_from_file;
alias c_g_tls_certificate_new_from_files  g_tls_certificate_new_from_files;
alias c_g_tls_certificate_list_new_from_file  g_tls_certificate_list_new_from_file;
alias c_g_tls_certificate_get_issuer  g_tls_certificate_get_issuer;
alias c_g_tls_certificate_verify  g_tls_certificate_verify;
alias c_g_tls_certificate_is_same  g_tls_certificate_is_same;

// gio.TlsConnection

alias c_g_tls_connection_set_certificate  g_tls_connection_set_certificate;
alias c_g_tls_connection_get_certificate  g_tls_connection_get_certificate;
alias c_g_tls_connection_get_peer_certificate  g_tls_connection_get_peer_certificate;
alias c_g_tls_connection_get_peer_certificate_errors  g_tls_connection_get_peer_certificate_errors;
alias c_g_tls_connection_set_require_close_notify  g_tls_connection_set_require_close_notify;
alias c_g_tls_connection_get_require_close_notify  g_tls_connection_get_require_close_notify;
alias c_g_tls_connection_set_rehandshake_mode  g_tls_connection_set_rehandshake_mode;
alias c_g_tls_connection_get_rehandshake_mode  g_tls_connection_get_rehandshake_mode;
alias c_g_tls_connection_set_use_system_certdb  g_tls_connection_set_use_system_certdb;
alias c_g_tls_connection_get_use_system_certdb  g_tls_connection_get_use_system_certdb;
alias c_g_tls_connection_get_database  g_tls_connection_get_database;
alias c_g_tls_connection_set_database  g_tls_connection_set_database;
alias c_g_tls_connection_get_interaction  g_tls_connection_get_interaction;
alias c_g_tls_connection_set_interaction  g_tls_connection_set_interaction;
alias c_g_tls_connection_handshake  g_tls_connection_handshake;
alias c_g_tls_connection_handshake_async  g_tls_connection_handshake_async;
alias c_g_tls_connection_handshake_finish  g_tls_connection_handshake_finish;
alias c_g_tls_connection_emit_accept_certificate  g_tls_connection_emit_accept_certificate;

// gio.TlsClientConnection

alias c_g_tls_client_connection_new  g_tls_client_connection_new;
alias c_g_tls_client_connection_set_server_identity  g_tls_client_connection_set_server_identity;
alias c_g_tls_client_connection_get_server_identity  g_tls_client_connection_get_server_identity;
alias c_g_tls_client_connection_set_validation_flags  g_tls_client_connection_set_validation_flags;
alias c_g_tls_client_connection_get_validation_flags  g_tls_client_connection_get_validation_flags;
alias c_g_tls_client_connection_set_use_ssl3  g_tls_client_connection_set_use_ssl3;
alias c_g_tls_client_connection_get_use_ssl3  g_tls_client_connection_get_use_ssl3;
alias c_g_tls_client_connection_get_accepted_cas  g_tls_client_connection_get_accepted_cas;

// gio.TlsServerConnection

alias c_g_tls_server_connection_new  g_tls_server_connection_new;

// gio.TlsBackend

alias c_g_tls_backend_get_default  g_tls_backend_get_default;
alias c_g_tls_backend_supports_tls  g_tls_backend_supports_tls;
alias c_g_tls_backend_get_default_database  g_tls_backend_get_default_database;
alias c_g_tls_backend_get_certificate_type  g_tls_backend_get_certificate_type;
alias c_g_tls_backend_get_client_connection_type  g_tls_backend_get_client_connection_type;
alias c_g_tls_backend_get_server_connection_type  g_tls_backend_get_server_connection_type;
alias c_g_tls_backend_get_file_database_type  g_tls_backend_get_file_database_type;

// gio.TlsDatabase

alias c_g_tls_database_verify_chain  g_tls_database_verify_chain;
alias c_g_tls_database_verify_chain_async  g_tls_database_verify_chain_async;
alias c_g_tls_database_verify_chain_finish  g_tls_database_verify_chain_finish;
alias c_g_tls_database_lookup_certificate_issuer  g_tls_database_lookup_certificate_issuer;
alias c_g_tls_database_lookup_certificate_issuer_async  g_tls_database_lookup_certificate_issuer_async;
alias c_g_tls_database_lookup_certificate_issuer_finish  g_tls_database_lookup_certificate_issuer_finish;
alias c_g_tls_database_lookup_certificates_issued_by  g_tls_database_lookup_certificates_issued_by;
alias c_g_tls_database_lookup_certificates_issued_by_async  g_tls_database_lookup_certificates_issued_by_async;
alias c_g_tls_database_lookup_certificates_issued_by_finish  g_tls_database_lookup_certificates_issued_by_finish;
alias c_g_tls_database_create_certificate_handle  g_tls_database_create_certificate_handle;
alias c_g_tls_database_lookup_certificate_for_handle  g_tls_database_lookup_certificate_for_handle;
alias c_g_tls_database_lookup_certificate_for_handle_async  g_tls_database_lookup_certificate_for_handle_async;
alias c_g_tls_database_lookup_certificate_for_handle_finish  g_tls_database_lookup_certificate_for_handle_finish;

// gio.TlsFileDatabase

alias c_g_tls_file_database_new  g_tls_file_database_new;

// gio.TlsInteraction

alias c_g_tls_interaction_ask_password  g_tls_interaction_ask_password;
alias c_g_tls_interaction_ask_password_async  g_tls_interaction_ask_password_async;
alias c_g_tls_interaction_ask_password_finish  g_tls_interaction_ask_password_finish;
alias c_g_tls_interaction_invoke_ask_password  g_tls_interaction_invoke_ask_password;

// gio.TlsPassword

alias c_g_tls_password_new  g_tls_password_new;
alias c_g_tls_password_get_value  g_tls_password_get_value;
alias c_g_tls_password_set_value  g_tls_password_set_value;
alias c_g_tls_password_set_value_full  g_tls_password_set_value_full;
alias c_g_tls_password_get_description  g_tls_password_get_description;
alias c_g_tls_password_set_description  g_tls_password_set_description;
alias c_g_tls_password_get_flags  g_tls_password_get_flags;
alias c_g_tls_password_set_flags  g_tls_password_set_flags;
alias c_g_tls_password_get_warning  g_tls_password_get_warning;
alias c_g_tls_password_set_warning  g_tls_password_set_warning;

// gio.Resolver

alias c_g_resolver_get_default  g_resolver_get_default;
alias c_g_resolver_set_default  g_resolver_set_default;
alias c_g_resolver_lookup_by_name  g_resolver_lookup_by_name;
alias c_g_resolver_lookup_by_name_async  g_resolver_lookup_by_name_async;
alias c_g_resolver_lookup_by_name_finish  g_resolver_lookup_by_name_finish;
alias c_g_resolver_free_addresses  g_resolver_free_addresses;
alias c_g_resolver_lookup_by_address  g_resolver_lookup_by_address;
alias c_g_resolver_lookup_by_address_async  g_resolver_lookup_by_address_async;
alias c_g_resolver_lookup_by_address_finish  g_resolver_lookup_by_address_finish;
alias c_g_resolver_lookup_service  g_resolver_lookup_service;
alias c_g_resolver_lookup_service_async  g_resolver_lookup_service_async;
alias c_g_resolver_lookup_service_finish  g_resolver_lookup_service_finish;
alias c_g_resolver_free_targets  g_resolver_free_targets;
alias c_g_resolver_lookup_records  g_resolver_lookup_records;
alias c_g_resolver_lookup_records_async  g_resolver_lookup_records_async;
alias c_g_resolver_lookup_records_finish  g_resolver_lookup_records_finish;

// gio.ProxyResolverT


// gio.ProxyResolverT

alias c_g_proxy_resolver_get_default  g_proxy_resolver_get_default;
alias c_g_proxy_resolver_is_supported  g_proxy_resolver_is_supported;
alias c_g_proxy_resolver_lookup  g_proxy_resolver_lookup;
alias c_g_proxy_resolver_lookup_async  g_proxy_resolver_lookup_async;
alias c_g_proxy_resolver_lookup_finish  g_proxy_resolver_lookup_finish;

// gio.ProxyResolver


// gio.SocketConnectableT


// gio.SocketConnectableT

alias c_g_socket_connectable_enumerate  g_socket_connectable_enumerate;
alias c_g_socket_connectable_proxy_enumerate  g_socket_connectable_proxy_enumerate;

// gio.SocketConnectable


// gio.SocketAddressEnumerator


// gio.NetworkAddress

alias c_g_network_address_new  g_network_address_new;
alias c_g_network_address_get_hostname  g_network_address_get_hostname;
alias c_g_network_address_get_port  g_network_address_get_port;
alias c_g_network_address_get_scheme  g_network_address_get_scheme;
alias c_g_network_address_parse  g_network_address_parse;
alias c_g_network_address_parse_uri  g_network_address_parse_uri;

// gio.NetworkService

alias c_g_network_service_new  g_network_service_new;
alias c_g_network_service_get_service  g_network_service_get_service;
alias c_g_network_service_get_protocol  g_network_service_get_protocol;
alias c_g_network_service_get_domain  g_network_service_get_domain;
alias c_g_network_service_get_scheme  g_network_service_get_scheme;
alias c_g_network_service_set_scheme  g_network_service_set_scheme;

// gio.SrvTarget

alias c_g_srv_target_new  g_srv_target_new;
alias c_g_srv_target_copy  g_srv_target_copy;
alias c_g_srv_target_free  g_srv_target_free;
alias c_g_srv_target_get_hostname  g_srv_target_get_hostname;
alias c_g_srv_target_get_port  g_srv_target_get_port;
alias c_g_srv_target_get_priority  g_srv_target_get_priority;
alias c_g_srv_target_get_weight  g_srv_target_get_weight;
alias c_g_srv_target_list_sort  g_srv_target_list_sort;

// gio.DBusUtilities

alias c_g_dbus_generate_guid  g_dbus_generate_guid;
alias c_g_dbus_is_guid  g_dbus_is_guid;
alias c_g_dbus_is_name  g_dbus_is_name;
alias c_g_dbus_is_unique_name  g_dbus_is_unique_name;
alias c_g_dbus_is_member_name  g_dbus_is_member_name;
alias c_g_dbus_is_interface_name  g_dbus_is_interface_name;
alias c_g_dbus_gvalue_to_gvariant  g_dbus_gvalue_to_gvariant;
alias c_g_dbus_gvariant_to_gvalue  g_dbus_gvariant_to_gvalue;
alias c_g_dbus_is_address  g_dbus_is_address;
alias c_g_dbus_is_supported_address  g_dbus_is_supported_address;
alias c_g_dbus_address_get_stream  g_dbus_address_get_stream;
alias c_g_dbus_address_get_stream_finish  g_dbus_address_get_stream_finish;
alias c_g_dbus_address_get_stream_sync  g_dbus_address_get_stream_sync;
alias c_g_dbus_address_get_for_bus_sync  g_dbus_address_get_for_bus_sync;

// gio.DBusAnnotationInfo

alias c_g_dbus_annotation_info_lookup  g_dbus_annotation_info_lookup;
alias c_g_dbus_annotation_info_ref  g_dbus_annotation_info_ref;
alias c_g_dbus_annotation_info_unref  g_dbus_annotation_info_unref;

// gio.DBusArgInfo

alias c_g_dbus_arg_info_ref  g_dbus_arg_info_ref;
alias c_g_dbus_arg_info_unref  g_dbus_arg_info_unref;

// gio.DBusMethodInfo

alias c_g_dbus_method_info_ref  g_dbus_method_info_ref;
alias c_g_dbus_method_info_unref  g_dbus_method_info_unref;

// gio.DBusSignalInfo

alias c_g_dbus_signal_info_ref  g_dbus_signal_info_ref;
alias c_g_dbus_signal_info_unref  g_dbus_signal_info_unref;

// gio.DBusPropertyInfo

alias c_g_dbus_property_info_ref  g_dbus_property_info_ref;
alias c_g_dbus_property_info_unref  g_dbus_property_info_unref;

// gio.DBusInterfaceInfo

alias c_g_dbus_interface_info_lookup_method  g_dbus_interface_info_lookup_method;
alias c_g_dbus_interface_info_lookup_signal  g_dbus_interface_info_lookup_signal;
alias c_g_dbus_interface_info_lookup_property  g_dbus_interface_info_lookup_property;
alias c_g_dbus_interface_info_cache_build  g_dbus_interface_info_cache_build;
alias c_g_dbus_interface_info_cache_release  g_dbus_interface_info_cache_release;
alias c_g_dbus_interface_info_generate_xml  g_dbus_interface_info_generate_xml;
alias c_g_dbus_interface_info_ref  g_dbus_interface_info_ref;
alias c_g_dbus_interface_info_unref  g_dbus_interface_info_unref;

// gio.DBusNodeInfo

alias c_g_dbus_node_info_new_for_xml  g_dbus_node_info_new_for_xml;
alias c_g_dbus_node_info_lookup_interface  g_dbus_node_info_lookup_interface;
alias c_g_dbus_node_info_generate_xml  g_dbus_node_info_generate_xml;
alias c_g_dbus_node_info_ref  g_dbus_node_info_ref;
alias c_g_dbus_node_info_unref  g_dbus_node_info_unref;

// gio.DBusError

alias c_g_dbus_error_is_remote_error  g_dbus_error_is_remote_error;
alias c_g_dbus_error_get_remote_error  g_dbus_error_get_remote_error;
alias c_g_dbus_error_strip_remote_error  g_dbus_error_strip_remote_error;
alias c_g_dbus_error_register_error_domain  g_dbus_error_register_error_domain;
alias c_g_dbus_error_register_error  g_dbus_error_register_error;
alias c_g_dbus_error_unregister_error  g_dbus_error_unregister_error;
alias c_g_dbus_error_new_for_dbus_error  g_dbus_error_new_for_dbus_error;
alias c_g_dbus_error_set_dbus_error  g_dbus_error_set_dbus_error;
alias c_g_dbus_error_set_dbus_error_valist  g_dbus_error_set_dbus_error_valist;
alias c_g_dbus_error_encode_gerror  g_dbus_error_encode_gerror;

// gio.DBusMessage

alias c_g_dbus_message_new  g_dbus_message_new;
alias c_g_dbus_message_new_signal  g_dbus_message_new_signal;
alias c_g_dbus_message_new_method_call  g_dbus_message_new_method_call;
alias c_g_dbus_message_new_method_reply  g_dbus_message_new_method_reply;
alias c_g_dbus_message_new_method_error  g_dbus_message_new_method_error;
alias c_g_dbus_message_new_method_error_valist  g_dbus_message_new_method_error_valist;
alias c_g_dbus_message_new_method_error_literal  g_dbus_message_new_method_error_literal;
alias c_g_dbus_message_print  g_dbus_message_print;
alias c_g_dbus_message_get_locked  g_dbus_message_get_locked;
alias c_g_dbus_message_lock  g_dbus_message_lock;
alias c_g_dbus_message_copy  g_dbus_message_copy;
alias c_g_dbus_message_get_byte_order  g_dbus_message_get_byte_order;
alias c_g_dbus_message_set_byte_order  g_dbus_message_set_byte_order;
alias c_g_dbus_message_get_message_type  g_dbus_message_get_message_type;
alias c_g_dbus_message_set_message_type  g_dbus_message_set_message_type;
alias c_g_dbus_message_get_serial  g_dbus_message_get_serial;
alias c_g_dbus_message_set_serial  g_dbus_message_set_serial;
alias c_g_dbus_message_get_flags  g_dbus_message_get_flags;
alias c_g_dbus_message_set_flags  g_dbus_message_set_flags;
alias c_g_dbus_message_get_body  g_dbus_message_get_body;
alias c_g_dbus_message_set_body  g_dbus_message_set_body;
alias c_g_dbus_message_get_unix_fd_list  g_dbus_message_get_unix_fd_list;
alias c_g_dbus_message_set_unix_fd_list  g_dbus_message_set_unix_fd_list;
alias c_g_dbus_message_get_num_unix_fds  g_dbus_message_get_num_unix_fds;
alias c_g_dbus_message_set_num_unix_fds  g_dbus_message_set_num_unix_fds;
alias c_g_dbus_message_get_header_fields  g_dbus_message_get_header_fields;
alias c_g_dbus_message_get_header  g_dbus_message_get_header;
alias c_g_dbus_message_set_header  g_dbus_message_set_header;
alias c_g_dbus_message_get_destination  g_dbus_message_get_destination;
alias c_g_dbus_message_set_destination  g_dbus_message_set_destination;
alias c_g_dbus_message_get_error_name  g_dbus_message_get_error_name;
alias c_g_dbus_message_set_error_name  g_dbus_message_set_error_name;
alias c_g_dbus_message_get_interface  g_dbus_message_get_interface;
alias c_g_dbus_message_set_interface  g_dbus_message_set_interface;
alias c_g_dbus_message_get_member  g_dbus_message_get_member;
alias c_g_dbus_message_set_member  g_dbus_message_set_member;
alias c_g_dbus_message_get_path  g_dbus_message_get_path;
alias c_g_dbus_message_set_path  g_dbus_message_set_path;
alias c_g_dbus_message_get_reply_serial  g_dbus_message_get_reply_serial;
alias c_g_dbus_message_set_reply_serial  g_dbus_message_set_reply_serial;
alias c_g_dbus_message_get_sender  g_dbus_message_get_sender;
alias c_g_dbus_message_set_sender  g_dbus_message_set_sender;
alias c_g_dbus_message_get_signature  g_dbus_message_get_signature;
alias c_g_dbus_message_set_signature  g_dbus_message_set_signature;
alias c_g_dbus_message_get_arg0  g_dbus_message_get_arg0;
alias c_g_dbus_message_to_blob  g_dbus_message_to_blob;
alias c_g_dbus_message_bytes_needed  g_dbus_message_bytes_needed;
alias c_g_dbus_message_new_from_blob  g_dbus_message_new_from_blob;
alias c_g_dbus_message_to_gerror  g_dbus_message_to_gerror;

// gio.DBusConnection

alias c_g_bus_get  g_bus_get;
alias c_g_bus_get_finish  g_bus_get_finish;
alias c_g_bus_get_sync  g_bus_get_sync;
alias c_g_dbus_connection_new  g_dbus_connection_new;
alias c_g_dbus_connection_new_finish  g_dbus_connection_new_finish;
alias c_g_dbus_connection_new_sync  g_dbus_connection_new_sync;
alias c_g_dbus_connection_new_for_address  g_dbus_connection_new_for_address;
alias c_g_dbus_connection_new_for_address_finish  g_dbus_connection_new_for_address_finish;
alias c_g_dbus_connection_new_for_address_sync  g_dbus_connection_new_for_address_sync;
alias c_g_dbus_connection_start_message_processing  g_dbus_connection_start_message_processing;
alias c_g_dbus_connection_close  g_dbus_connection_close;
alias c_g_dbus_connection_close_finish  g_dbus_connection_close_finish;
alias c_g_dbus_connection_close_sync  g_dbus_connection_close_sync;
alias c_g_dbus_connection_is_closed  g_dbus_connection_is_closed;
alias c_g_dbus_connection_flush  g_dbus_connection_flush;
alias c_g_dbus_connection_flush_finish  g_dbus_connection_flush_finish;
alias c_g_dbus_connection_flush_sync  g_dbus_connection_flush_sync;
alias c_g_dbus_connection_get_exit_on_close  g_dbus_connection_get_exit_on_close;
alias c_g_dbus_connection_set_exit_on_close  g_dbus_connection_set_exit_on_close;
alias c_g_dbus_connection_get_stream  g_dbus_connection_get_stream;
alias c_g_dbus_connection_get_guid  g_dbus_connection_get_guid;
alias c_g_dbus_connection_get_unique_name  g_dbus_connection_get_unique_name;
alias c_g_dbus_connection_get_capabilities  g_dbus_connection_get_capabilities;
alias c_g_dbus_connection_get_peer_credentials  g_dbus_connection_get_peer_credentials;
alias c_g_dbus_connection_get_last_serial  g_dbus_connection_get_last_serial;
alias c_g_dbus_connection_call  g_dbus_connection_call;
alias c_g_dbus_connection_call_finish  g_dbus_connection_call_finish;
alias c_g_dbus_connection_call_sync  g_dbus_connection_call_sync;
alias c_g_dbus_connection_call_with_unix_fd_list  g_dbus_connection_call_with_unix_fd_list;
alias c_g_dbus_connection_call_with_unix_fd_list_finish  g_dbus_connection_call_with_unix_fd_list_finish;
alias c_g_dbus_connection_call_with_unix_fd_list_sync  g_dbus_connection_call_with_unix_fd_list_sync;
alias c_g_dbus_connection_emit_signal  g_dbus_connection_emit_signal;
alias c_g_dbus_connection_signal_subscribe  g_dbus_connection_signal_subscribe;
alias c_g_dbus_connection_signal_unsubscribe  g_dbus_connection_signal_unsubscribe;
alias c_g_dbus_connection_send_message  g_dbus_connection_send_message;
alias c_g_dbus_connection_send_message_with_reply  g_dbus_connection_send_message_with_reply;
alias c_g_dbus_connection_send_message_with_reply_finish  g_dbus_connection_send_message_with_reply_finish;
alias c_g_dbus_connection_send_message_with_reply_sync  g_dbus_connection_send_message_with_reply_sync;
alias c_g_dbus_connection_add_filter  g_dbus_connection_add_filter;
alias c_g_dbus_connection_remove_filter  g_dbus_connection_remove_filter;
alias c_g_dbus_connection_register_object  g_dbus_connection_register_object;
alias c_g_dbus_connection_unregister_object  g_dbus_connection_unregister_object;
alias c_g_dbus_connection_register_subtree  g_dbus_connection_register_subtree;
alias c_g_dbus_connection_unregister_subtree  g_dbus_connection_unregister_subtree;
alias c_g_dbus_connection_export_action_group  g_dbus_connection_export_action_group;
alias c_g_dbus_connection_unexport_action_group  g_dbus_connection_unexport_action_group;
alias c_g_dbus_connection_export_menu_model  g_dbus_connection_export_menu_model;
alias c_g_dbus_connection_unexport_menu_model  g_dbus_connection_unexport_menu_model;

// gio.DBusMethodInvocation

alias c_g_dbus_method_invocation_get_sender  g_dbus_method_invocation_get_sender;
alias c_g_dbus_method_invocation_get_object_path  g_dbus_method_invocation_get_object_path;
alias c_g_dbus_method_invocation_get_interface_name  g_dbus_method_invocation_get_interface_name;
alias c_g_dbus_method_invocation_get_method_name  g_dbus_method_invocation_get_method_name;
alias c_g_dbus_method_invocation_get_method_info  g_dbus_method_invocation_get_method_info;
alias c_g_dbus_method_invocation_get_connection  g_dbus_method_invocation_get_connection;
alias c_g_dbus_method_invocation_get_message  g_dbus_method_invocation_get_message;
alias c_g_dbus_method_invocation_get_parameters  g_dbus_method_invocation_get_parameters;
alias c_g_dbus_method_invocation_get_user_data  g_dbus_method_invocation_get_user_data;
alias c_g_dbus_method_invocation_return_value  g_dbus_method_invocation_return_value;
alias c_g_dbus_method_invocation_return_error  g_dbus_method_invocation_return_error;
alias c_g_dbus_method_invocation_return_error_valist  g_dbus_method_invocation_return_error_valist;
alias c_g_dbus_method_invocation_return_error_literal  g_dbus_method_invocation_return_error_literal;
alias c_g_dbus_method_invocation_return_gerror  g_dbus_method_invocation_return_gerror;
alias c_g_dbus_method_invocation_return_dbus_error  g_dbus_method_invocation_return_dbus_error;
alias c_g_dbus_method_invocation_take_error  g_dbus_method_invocation_take_error;
alias c_g_dbus_method_invocation_return_value_with_unix_fd_list  g_dbus_method_invocation_return_value_with_unix_fd_list;

// gio.DBusServer

alias c_g_dbus_server_new_sync  g_dbus_server_new_sync;
alias c_g_dbus_server_start  g_dbus_server_start;
alias c_g_dbus_server_stop  g_dbus_server_stop;
alias c_g_dbus_server_is_active  g_dbus_server_is_active;
alias c_g_dbus_server_get_guid  g_dbus_server_get_guid;
alias c_g_dbus_server_get_flags  g_dbus_server_get_flags;
alias c_g_dbus_server_get_client_address  g_dbus_server_get_client_address;

// gio.DBusAuthObserver

alias c_g_dbus_auth_observer_new  g_dbus_auth_observer_new;
alias c_g_dbus_auth_observer_authorize_authenticated_peer  g_dbus_auth_observer_authorize_authenticated_peer;
alias c_g_dbus_auth_observer_allow_mechanism  g_dbus_auth_observer_allow_mechanism;

// gio.DBusNames

alias c_g_bus_own_name  g_bus_own_name;
alias c_g_bus_own_name_on_connection  g_bus_own_name_on_connection;
alias c_g_bus_unown_name  g_bus_unown_name;
alias c_g_bus_own_name_with_closures  g_bus_own_name_with_closures;
alias c_g_bus_own_name_on_connection_with_closures  g_bus_own_name_on_connection_with_closures;
alias c_g_bus_watch_name  g_bus_watch_name;
alias c_g_bus_watch_name_on_connection  g_bus_watch_name_on_connection;
alias c_g_bus_unwatch_name  g_bus_unwatch_name;
alias c_g_bus_watch_name_with_closures  g_bus_watch_name_with_closures;
alias c_g_bus_watch_name_on_connection_with_closures  g_bus_watch_name_on_connection_with_closures;

// gio.DBusInterfaceT


// gio.DBusInterfaceT

alias c_g_dbus_interface_get_info  g_dbus_interface_get_info;
alias c_g_dbus_interface_get_object  g_dbus_interface_get_object;
alias c_g_dbus_interface_dup_object  g_dbus_interface_dup_object;
alias c_g_dbus_interface_set_object  g_dbus_interface_set_object;

// gio.DBusInterface


// gio.DBusInterfaceSkeleton

alias c_g_dbus_interface_skeleton_flush  g_dbus_interface_skeleton_flush;
alias c_g_dbus_interface_skeleton_get_info  g_dbus_interface_skeleton_get_info;
alias c_g_dbus_interface_skeleton_get_vtable  g_dbus_interface_skeleton_get_vtable;
alias c_g_dbus_interface_skeleton_get_properties  g_dbus_interface_skeleton_get_properties;
alias c_g_dbus_interface_skeleton_export  g_dbus_interface_skeleton_export;
alias c_g_dbus_interface_skeleton_unexport  g_dbus_interface_skeleton_unexport;
alias c_g_dbus_interface_skeleton_unexport_from_connection  g_dbus_interface_skeleton_unexport_from_connection;
alias c_g_dbus_interface_skeleton_get_connection  g_dbus_interface_skeleton_get_connection;
alias c_g_dbus_interface_skeleton_get_connections  g_dbus_interface_skeleton_get_connections;
alias c_g_dbus_interface_skeleton_has_connection  g_dbus_interface_skeleton_has_connection;
alias c_g_dbus_interface_skeleton_get_object_path  g_dbus_interface_skeleton_get_object_path;
alias c_g_dbus_interface_skeleton_get_flags  g_dbus_interface_skeleton_get_flags;
alias c_g_dbus_interface_skeleton_set_flags  g_dbus_interface_skeleton_set_flags;

// gio.DBusProxy

alias c_g_dbus_proxy_new  g_dbus_proxy_new;
alias c_g_dbus_proxy_new_finish  g_dbus_proxy_new_finish;
alias c_g_dbus_proxy_new_sync  g_dbus_proxy_new_sync;
alias c_g_dbus_proxy_new_for_bus  g_dbus_proxy_new_for_bus;
alias c_g_dbus_proxy_new_for_bus_finish  g_dbus_proxy_new_for_bus_finish;
alias c_g_dbus_proxy_new_for_bus_sync  g_dbus_proxy_new_for_bus_sync;
alias c_g_dbus_proxy_get_flags  g_dbus_proxy_get_flags;
alias c_g_dbus_proxy_get_connection  g_dbus_proxy_get_connection;
alias c_g_dbus_proxy_get_name  g_dbus_proxy_get_name;
alias c_g_dbus_proxy_get_name_owner  g_dbus_proxy_get_name_owner;
alias c_g_dbus_proxy_get_object_path  g_dbus_proxy_get_object_path;
alias c_g_dbus_proxy_get_interface_name  g_dbus_proxy_get_interface_name;
alias c_g_dbus_proxy_get_default_timeout  g_dbus_proxy_get_default_timeout;
alias c_g_dbus_proxy_set_default_timeout  g_dbus_proxy_set_default_timeout;
alias c_g_dbus_proxy_get_cached_property  g_dbus_proxy_get_cached_property;
alias c_g_dbus_proxy_set_cached_property  g_dbus_proxy_set_cached_property;
alias c_g_dbus_proxy_get_cached_property_names  g_dbus_proxy_get_cached_property_names;
alias c_g_dbus_proxy_set_interface_info  g_dbus_proxy_set_interface_info;
alias c_g_dbus_proxy_get_interface_info  g_dbus_proxy_get_interface_info;
alias c_g_dbus_proxy_call  g_dbus_proxy_call;
alias c_g_dbus_proxy_call_finish  g_dbus_proxy_call_finish;
alias c_g_dbus_proxy_call_sync  g_dbus_proxy_call_sync;
alias c_g_dbus_proxy_call_with_unix_fd_list  g_dbus_proxy_call_with_unix_fd_list;
alias c_g_dbus_proxy_call_with_unix_fd_list_finish  g_dbus_proxy_call_with_unix_fd_list_finish;
alias c_g_dbus_proxy_call_with_unix_fd_list_sync  g_dbus_proxy_call_with_unix_fd_list_sync;

// gio.DBusObjectT


// gio.DBusObjectT

alias c_g_dbus_object_get_object_path  g_dbus_object_get_object_path;
alias c_g_dbus_object_get_interfaces  g_dbus_object_get_interfaces;
alias c_g_dbus_object_get_interface  g_dbus_object_get_interface;

// gio.DBusObject


// gio.DBusObjectSkeleton

alias c_g_dbus_object_skeleton_new  g_dbus_object_skeleton_new;
alias c_g_dbus_object_skeleton_flush  g_dbus_object_skeleton_flush;
alias c_g_dbus_object_skeleton_add_interface  g_dbus_object_skeleton_add_interface;
alias c_g_dbus_object_skeleton_remove_interface  g_dbus_object_skeleton_remove_interface;
alias c_g_dbus_object_skeleton_remove_interface_by_name  g_dbus_object_skeleton_remove_interface_by_name;
alias c_g_dbus_object_skeleton_set_object_path  g_dbus_object_skeleton_set_object_path;

// gio.DBusObjectProxy

alias c_g_dbus_object_proxy_new  g_dbus_object_proxy_new;
alias c_g_dbus_object_proxy_get_connection  g_dbus_object_proxy_get_connection;

// gio.DBusObjectManagerT


// gio.DBusObjectManagerT

alias c_g_dbus_object_manager_get_object_path  g_dbus_object_manager_get_object_path;
alias c_g_dbus_object_manager_get_objects  g_dbus_object_manager_get_objects;
alias c_g_dbus_object_manager_get_object  g_dbus_object_manager_get_object;
alias c_g_dbus_object_manager_get_interface  g_dbus_object_manager_get_interface;

// gio.DBusObjectManagerServer

alias c_g_dbus_object_manager_server_new  g_dbus_object_manager_server_new;
alias c_g_dbus_object_manager_server_get_connection  g_dbus_object_manager_server_get_connection;
alias c_g_dbus_object_manager_server_set_connection  g_dbus_object_manager_server_set_connection;
alias c_g_dbus_object_manager_server_export  g_dbus_object_manager_server_export;
alias c_g_dbus_object_manager_server_export_uniquely  g_dbus_object_manager_server_export_uniquely;
alias c_g_dbus_object_manager_server_is_exported  g_dbus_object_manager_server_is_exported;
alias c_g_dbus_object_manager_server_unexport  g_dbus_object_manager_server_unexport;

// gio.DBusObjectManagerClient

alias c_g_dbus_object_manager_client_new  g_dbus_object_manager_client_new;
alias c_g_dbus_object_manager_client_new_finish  g_dbus_object_manager_client_new_finish;
alias c_g_dbus_object_manager_client_new_sync  g_dbus_object_manager_client_new_sync;
alias c_g_dbus_object_manager_client_new_for_bus  g_dbus_object_manager_client_new_for_bus;
alias c_g_dbus_object_manager_client_new_for_bus_finish  g_dbus_object_manager_client_new_for_bus_finish;
alias c_g_dbus_object_manager_client_new_for_bus_sync  g_dbus_object_manager_client_new_for_bus_sync;
alias c_g_dbus_object_manager_client_get_connection  g_dbus_object_manager_client_get_connection;
alias c_g_dbus_object_manager_client_get_flags  g_dbus_object_manager_client_get_flags;
alias c_g_dbus_object_manager_client_get_name  g_dbus_object_manager_client_get_name;
alias c_g_dbus_object_manager_client_get_name_owner  g_dbus_object_manager_client_get_name_owner;

// gio.Settings

alias c_g_settings_new  g_settings_new;
alias c_g_settings_new_with_path  g_settings_new_with_path;
alias c_g_settings_new_with_backend  g_settings_new_with_backend;
alias c_g_settings_new_with_backend_and_path  g_settings_new_with_backend_and_path;
alias c_g_settings_new_full  g_settings_new_full;
alias c_g_settings_sync  g_settings_sync;
alias c_g_settings_get_value  g_settings_get_value;
alias c_g_settings_set_value  g_settings_set_value;
alias c_g_settings_is_writable  g_settings_is_writable;
alias c_g_settings_delay  g_settings_delay;
alias c_g_settings_apply  g_settings_apply;
alias c_g_settings_revert  g_settings_revert;
alias c_g_settings_get_has_unapplied  g_settings_get_has_unapplied;
alias c_g_settings_get_child  g_settings_get_child;
alias c_g_settings_reset  g_settings_reset;
alias c_g_settings_list_schemas  g_settings_list_schemas;
alias c_g_settings_list_relocatable_schemas  g_settings_list_relocatable_schemas;
alias c_g_settings_list_keys  g_settings_list_keys;
alias c_g_settings_list_children  g_settings_list_children;
alias c_g_settings_get_range  g_settings_get_range;
alias c_g_settings_range_check  g_settings_range_check;
alias c_g_settings_get  g_settings_get;
alias c_g_settings_set  g_settings_set;
alias c_g_settings_get_boolean  g_settings_get_boolean;
alias c_g_settings_set_boolean  g_settings_set_boolean;
alias c_g_settings_get_int  g_settings_get_int;
alias c_g_settings_set_int  g_settings_set_int;
alias c_g_settings_get_uint  g_settings_get_uint;
alias c_g_settings_set_uint  g_settings_set_uint;
alias c_g_settings_get_double  g_settings_get_double;
alias c_g_settings_set_double  g_settings_set_double;
alias c_g_settings_get_string  g_settings_get_string;
alias c_g_settings_set_string  g_settings_set_string;
alias c_g_settings_get_strv  g_settings_get_strv;
alias c_g_settings_set_strv  g_settings_set_strv;
alias c_g_settings_get_enum  g_settings_get_enum;
alias c_g_settings_set_enum  g_settings_set_enum;
alias c_g_settings_get_flags  g_settings_get_flags;
alias c_g_settings_set_flags  g_settings_set_flags;
alias c_g_settings_get_mapped  g_settings_get_mapped;
alias c_g_settings_bind  g_settings_bind;
alias c_g_settings_bind_with_mapping  g_settings_bind_with_mapping;
alias c_g_settings_bind_writable  g_settings_bind_writable;
alias c_g_settings_unbind  g_settings_unbind;
alias c_g_settings_create_action  g_settings_create_action;

// gio.SettingsBackend

alias c_g_settings_backend_get_default  g_settings_backend_get_default;
alias c_g_settings_backend_changed  g_settings_backend_changed;
alias c_g_settings_backend_path_changed  g_settings_backend_path_changed;
alias c_g_settings_backend_keys_changed  g_settings_backend_keys_changed;
alias c_g_settings_backend_path_writable_changed  g_settings_backend_path_writable_changed;
alias c_g_settings_backend_writable_changed  g_settings_backend_writable_changed;
alias c_g_settings_backend_changed_tree  g_settings_backend_changed_tree;
alias c_g_settings_backend_flatten_tree  g_settings_backend_flatten_tree;
alias c_g_keyfile_settings_backend_new  g_keyfile_settings_backend_new;
alias c_g_memory_settings_backend_new  g_memory_settings_backend_new;
alias c_g_null_settings_backend_new  g_null_settings_backend_new;

// gio.SettingsSchema

alias c_g_settings_schema_ref  g_settings_schema_ref;
alias c_g_settings_schema_unref  g_settings_schema_unref;
alias c_g_settings_schema_get_id  g_settings_schema_get_id;
alias c_g_settings_schema_get_path  g_settings_schema_get_path;

// gio.SettingsSchemaSource

alias c_g_settings_schema_source_get_default  g_settings_schema_source_get_default;
alias c_g_settings_schema_source_ref  g_settings_schema_source_ref;
alias c_g_settings_schema_source_unref  g_settings_schema_source_unref;
alias c_g_settings_schema_source_new_from_directory  g_settings_schema_source_new_from_directory;
alias c_g_settings_schema_source_lookup  g_settings_schema_source_lookup;

// gio.Resource

alias c_g_resource_load  g_resource_load;
alias c_g_resource_new_from_data  g_resource_new_from_data;
alias c_g_resource_ref  g_resource_ref;
alias c_g_resource_unref  g_resource_unref;
alias c_g_resource_lookup_data  g_resource_lookup_data;
alias c_g_resource_open_stream  g_resource_open_stream;
alias c_g_resource_enumerate_children  g_resource_enumerate_children;
alias c_g_resource_get_info  g_resource_get_info;
alias c_g_resources_register  g_resources_register;
alias c_g_resources_unregister  g_resources_unregister;
alias c_g_resources_lookup_data  g_resources_lookup_data;
alias c_g_resources_open_stream  g_resources_open_stream;
alias c_g_resources_enumerate_children  g_resources_enumerate_children;
alias c_g_resources_get_info  g_resources_get_info;

// gio.Permission

alias c_g_permission_get_allowed  g_permission_get_allowed;
alias c_g_permission_get_can_acquire  g_permission_get_can_acquire;
alias c_g_permission_get_can_release  g_permission_get_can_release;
alias c_g_permission_acquire  g_permission_acquire;
alias c_g_permission_acquire_async  g_permission_acquire_async;
alias c_g_permission_acquire_finish  g_permission_acquire_finish;
alias c_g_permission_release  g_permission_release;
alias c_g_permission_release_async  g_permission_release_async;
alias c_g_permission_release_finish  g_permission_release_finish;
alias c_g_permission_impl_update  g_permission_impl_update;

// gio.SimplePermission

alias c_g_simple_permission_new  g_simple_permission_new;

// gio.Application

alias c_g_application_id_is_valid  g_application_id_is_valid;
alias c_g_application_new  g_application_new;
alias c_g_application_get_application_id  g_application_get_application_id;
alias c_g_application_set_application_id  g_application_set_application_id;
alias c_g_application_get_inactivity_timeout  g_application_get_inactivity_timeout;
alias c_g_application_set_inactivity_timeout  g_application_set_inactivity_timeout;
alias c_g_application_get_flags  g_application_get_flags;
alias c_g_application_set_flags  g_application_set_flags;
alias c_g_application_get_dbus_connection  g_application_get_dbus_connection;
alias c_g_application_get_dbus_object_path  g_application_get_dbus_object_path;
alias c_g_application_set_action_group  g_application_set_action_group;
alias c_g_application_get_is_registered  g_application_get_is_registered;
alias c_g_application_get_is_remote  g_application_get_is_remote;
alias c_g_application_register  g_application_register;
alias c_g_application_hold  g_application_hold;
alias c_g_application_release  g_application_release;
alias c_g_application_quit  g_application_quit;
alias c_g_application_activate  g_application_activate;
alias c_g_application_open  g_application_open;
alias c_g_application_run  g_application_run;
alias c_g_application_set_default  g_application_set_default;
alias c_g_application_get_default  g_application_get_default;

// gio.ApplicationCommandLine

alias c_g_application_command_line_get_arguments  g_application_command_line_get_arguments;
alias c_g_application_command_line_get_cwd  g_application_command_line_get_cwd;
alias c_g_application_command_line_get_environ  g_application_command_line_get_environ;
alias c_g_application_command_line_getenv  g_application_command_line_getenv;
alias c_g_application_command_line_get_is_remote  g_application_command_line_get_is_remote;
alias c_g_application_command_line_get_platform_data  g_application_command_line_get_platform_data;
alias c_g_application_command_line_set_exit_status  g_application_command_line_set_exit_status;
alias c_g_application_command_line_get_exit_status  g_application_command_line_get_exit_status;
alias c_g_application_command_line_print  g_application_command_line_print;
alias c_g_application_command_line_printerr  g_application_command_line_printerr;

// gio.ActionGroupT


// gio.ActionGroupT

alias c_g_action_group_list_actions  g_action_group_list_actions;
alias c_g_action_group_query_action  g_action_group_query_action;
alias c_g_action_group_has_action  g_action_group_has_action;
alias c_g_action_group_get_action_enabled  g_action_group_get_action_enabled;
alias c_g_action_group_get_action_parameter_type  g_action_group_get_action_parameter_type;
alias c_g_action_group_get_action_state_type  g_action_group_get_action_state_type;
alias c_g_action_group_get_action_state_hint  g_action_group_get_action_state_hint;
alias c_g_action_group_get_action_state  g_action_group_get_action_state;
alias c_g_action_group_change_action_state  g_action_group_change_action_state;
alias c_g_action_group_activate_action  g_action_group_activate_action;
alias c_g_action_group_action_added  g_action_group_action_added;
alias c_g_action_group_action_removed  g_action_group_action_removed;
alias c_g_action_group_action_enabled_changed  g_action_group_action_enabled_changed;
alias c_g_action_group_action_state_changed  g_action_group_action_state_changed;

// gio.ActionMapT


// gio.ActionMapT

alias c_g_action_map_lookup_action  g_action_map_lookup_action;
alias c_g_action_map_add_action_entries  g_action_map_add_action_entries;
alias c_g_action_map_add_action  g_action_map_add_action;
alias c_g_action_map_remove_action  g_action_map_remove_action;

// gio.SimpleActionGroup

alias c_g_simple_action_group_new  g_simple_action_group_new;
alias c_g_simple_action_group_lookup  g_simple_action_group_lookup;
alias c_g_simple_action_group_insert  g_simple_action_group_insert;
alias c_g_simple_action_group_remove  g_simple_action_group_remove;
alias c_g_simple_action_group_add_entries  g_simple_action_group_add_entries;

// gio.ActionT


// gio.ActionT

alias c_g_action_get_name  g_action_get_name;
alias c_g_action_get_parameter_type  g_action_get_parameter_type;
alias c_g_action_get_state_type  g_action_get_state_type;
alias c_g_action_get_state_hint  g_action_get_state_hint;
alias c_g_action_get_enabled  g_action_get_enabled;
alias c_g_action_get_state  g_action_get_state;
alias c_g_action_change_state  g_action_change_state;
alias c_g_action_activate  g_action_activate;

// gio.Action


// gio.SimpleAction

alias c_g_simple_action_new  g_simple_action_new;
alias c_g_simple_action_new_stateful  g_simple_action_new_stateful;
alias c_g_simple_action_set_enabled  g_simple_action_set_enabled;
alias c_g_simple_action_set_state  g_simple_action_set_state;

// gio.RemoteActionGroupT


// gio.RemoteActionGroupT

alias c_g_remote_action_group_activate_action_full  g_remote_action_group_activate_action_full;
alias c_g_remote_action_group_change_action_state_full  g_remote_action_group_change_action_state_full;

// gio.DBusActionGroup

alias c_g_dbus_action_group_get  g_dbus_action_group_get;

// gio.MenuModel

alias c_g_menu_model_is_mutable  g_menu_model_is_mutable;
alias c_g_menu_model_get_n_items  g_menu_model_get_n_items;
alias c_g_menu_model_get_item_attribute_value  g_menu_model_get_item_attribute_value;
alias c_g_menu_model_get_item_attribute  g_menu_model_get_item_attribute;
alias c_g_menu_model_get_item_link  g_menu_model_get_item_link;
alias c_g_menu_model_iterate_item_attributes  g_menu_model_iterate_item_attributes;
alias c_g_menu_model_iterate_item_links  g_menu_model_iterate_item_links;
alias c_g_menu_model_items_changed  g_menu_model_items_changed;

// gio.MenuAttributeIter

alias c_g_menu_attribute_iter_get_next  g_menu_attribute_iter_get_next;
alias c_g_menu_attribute_iter_get_name  g_menu_attribute_iter_get_name;
alias c_g_menu_attribute_iter_get_value  g_menu_attribute_iter_get_value;
alias c_g_menu_attribute_iter_next  g_menu_attribute_iter_next;

// gio.MenuLinkIter

alias c_g_menu_link_iter_get_name  g_menu_link_iter_get_name;
alias c_g_menu_link_iter_get_next  g_menu_link_iter_get_next;
alias c_g_menu_link_iter_get_value  g_menu_link_iter_get_value;
alias c_g_menu_link_iter_next  g_menu_link_iter_next;

// gio.Menu

alias c_g_menu_new  g_menu_new;
alias c_g_menu_freeze  g_menu_freeze;
alias c_g_menu_insert  g_menu_insert;
alias c_g_menu_prepend  g_menu_prepend;
alias c_g_menu_append  g_menu_append;
alias c_g_menu_insert_item  g_menu_insert_item;
alias c_g_menu_append_item  g_menu_append_item;
alias c_g_menu_prepend_item  g_menu_prepend_item;
alias c_g_menu_insert_section  g_menu_insert_section;
alias c_g_menu_prepend_section  g_menu_prepend_section;
alias c_g_menu_append_section  g_menu_append_section;
alias c_g_menu_append_submenu  g_menu_append_submenu;
alias c_g_menu_insert_submenu  g_menu_insert_submenu;
alias c_g_menu_prepend_submenu  g_menu_prepend_submenu;
alias c_g_menu_remove  g_menu_remove;

// gio.MenuItem

alias c_g_menu_item_new  g_menu_item_new;
alias c_g_menu_item_new_section  g_menu_item_new_section;
alias c_g_menu_item_new_submenu  g_menu_item_new_submenu;
alias c_g_menu_item_new_from_model  g_menu_item_new_from_model;
alias c_g_menu_item_set_label  g_menu_item_set_label;
alias c_g_menu_item_set_action_and_target_value  g_menu_item_set_action_and_target_value;
alias c_g_menu_item_set_action_and_target  g_menu_item_set_action_and_target;
alias c_g_menu_item_set_detailed_action  g_menu_item_set_detailed_action;
alias c_g_menu_item_set_section  g_menu_item_set_section;
alias c_g_menu_item_set_submenu  g_menu_item_set_submenu;
alias c_g_menu_item_get_attribute_value  g_menu_item_get_attribute_value;
alias c_g_menu_item_get_attribute  g_menu_item_get_attribute;
alias c_g_menu_item_get_link  g_menu_item_get_link;
alias c_g_menu_item_set_attribute_value  g_menu_item_set_attribute_value;
alias c_g_menu_item_set_attribute  g_menu_item_set_attribute;
alias c_g_menu_item_set_link  g_menu_item_set_link;

// gio.DBusMenuModel

alias c_g_dbus_menu_model_get  g_dbus_menu_model_get;

// gio.Vfs

alias c_g_vfs_get_file_for_path  g_vfs_get_file_for_path;
alias c_g_vfs_get_file_for_uri  g_vfs_get_file_for_uri;
alias c_g_vfs_parse_name  g_vfs_parse_name;
alias c_g_vfs_get_default  g_vfs_get_default;
alias c_g_vfs_get_local  g_vfs_get_local;
alias c_g_vfs_is_active  g_vfs_is_active;
alias c_g_vfs_get_supported_uri_schemes  g_vfs_get_supported_uri_schemes;

// gio.IOModule

alias c_g_io_module_new  g_io_module_new;
alias c_g_io_modules_load_all_in_directory  g_io_modules_load_all_in_directory;
alias c_g_io_modules_load_all_in_directory_with_scope  g_io_modules_load_all_in_directory_with_scope;
alias c_g_io_modules_scan_all_in_directory  g_io_modules_scan_all_in_directory;
alias c_g_io_modules_scan_all_in_directory_with_scope  g_io_modules_scan_all_in_directory_with_scope;
alias c_g_io_module_load  g_io_module_load;
alias c_g_io_module_unload  g_io_module_unload;
alias c_g_io_module_query  g_io_module_query;

// gio.IOModuleScope

alias c_g_io_module_scope_block  g_io_module_scope_block;
alias c_g_io_module_scope_free  g_io_module_scope_free;
alias c_g_io_module_scope_new  g_io_module_scope_new;

// gio.IOExtension

alias c_g_io_extension_get_name  g_io_extension_get_name;
alias c_g_io_extension_get_priority  g_io_extension_get_priority;
alias c_g_io_extension_get_type  g_io_extension_get_type;
alias c_g_io_extension_ref_class  g_io_extension_ref_class;

// gio.IOExtensionPoint

alias c_g_io_extension_point_get_extension_by_name  g_io_extension_point_get_extension_by_name;
alias c_g_io_extension_point_get_extensions  g_io_extension_point_get_extensions;
alias c_g_io_extension_point_get_required_type  g_io_extension_point_get_required_type;
alias c_g_io_extension_point_implement  g_io_extension_point_implement;
alias c_g_io_extension_point_lookup  g_io_extension_point_lookup;
alias c_g_io_extension_point_register  g_io_extension_point_register;
alias c_g_io_extension_point_set_required_type  g_io_extension_point_set_required_type;

// gio.TestDBus

alias c_g_test_dbus_new  g_test_dbus_new;
alias c_g_test_dbus_get_flags  g_test_dbus_get_flags;
alias c_g_test_dbus_get_bus_address  g_test_dbus_get_bus_address;
alias c_g_test_dbus_add_service_dir  g_test_dbus_add_service_dir;
alias c_g_test_dbus_up  g_test_dbus_up;
alias c_g_test_dbus_stop  g_test_dbus_stop;
alias c_g_test_dbus_down  g_test_dbus_down;
alias c_g_test_dbus_unset  g_test_dbus_unset;
