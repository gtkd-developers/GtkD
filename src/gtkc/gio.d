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
}");

mixin( gshared ~"extern(C)
{
	
	// gio.File
	
	GFile* function(char* path) c_g_file_new_for_path;
	GFile* function(char* uri) c_g_file_new_for_uri;
	GFile* function(char* arg) c_g_file_new_for_commandline_arg;
	GFile* function(char* parseName) c_g_file_parse_name;
	GFile* function(GFile* file) c_g_file_dup;
	guint function(gconstpointer file) c_g_file_hash;
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
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_read_async;
	GFileInputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_read_finish;
	GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_append_to;
	GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_create;
	GFileOutputStream* function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_replace;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_append_to_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_append_to_finish;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_create_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_create_finish;
	void function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_replace_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_replace_finish;
	GFileInfo* function(GFile* file, char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_query_info;
	void function(GFile* file, char* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_query_info_async;
	GFileInfo* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_query_info_finish;
	gboolean function(GFile* file, GCancellable* cancellable) c_g_file_query_exists;
	GFileType function(GFile* file, GFileQueryInfoFlags flags, GCancellable* cancellable) c_g_file_query_file_type;
	GFileInfo* function(GFile* file, char* attributes, GCancellable* cancellable, GError** error) c_g_file_query_filesystem_info;
	void function(GFile* file, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_query_filesystem_info_async;
	GFileInfo* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_query_filesystem_info_finish;
	GAppInfo* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_query_default_handler;
	GMount* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_find_enclosing_mount;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_find_enclosing_mount_async;
	GMount* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_find_enclosing_mount_finish;
	GFileEnumerator* function(GFile* file, char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_enumerate_children;
	void function(GFile* file, char* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_enumerate_children_async;
	GFileEnumerator* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_enumerate_children_finish;
	GFile* function(GFile* file, char* displayName, GCancellable* cancellable, GError** error) c_g_file_set_display_name;
	void function(GFile* file, char* displayName, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_set_display_name_async;
	GFile* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_set_display_name_finish;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_delete;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_trash;
	gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, gpointer progressCallbackData, GError** error) c_g_file_copy;
	void function(GFile* source, GFile* destination, GFileCopyFlags flags, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, gpointer progressCallbackData, GAsyncReadyCallback callback, gpointer userData) c_g_file_copy_async;
	gboolean function(GFile* file, GAsyncResult* res, GError** error) c_g_file_copy_finish;
	gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, gpointer progressCallbackData, GError** error) c_g_file_move;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_make_directory;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_make_directory_with_parents;
	gboolean function(GFile* file, char* symlinkValue, GCancellable* cancellable, GError** error) c_g_file_make_symbolic_link;
	GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_query_settable_attributes;
	GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_query_writable_namespaces;
	gboolean function(GFile* file, char* attribute, GFileAttributeType type, gpointer valueP, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute;
	gboolean function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attributes_from_info;
	void function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_set_attributes_async;
	gboolean function(GFile* file, GAsyncResult* result, GFileInfo** info, GError** error) c_g_file_set_attributes_finish;
	gboolean function(GFile* file, char* attribute, char* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_string;
	gboolean function(GFile* file, char* attribute, char* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_byte_string;
	gboolean function(GFile* file, char* attribute, guint32 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_uint32;
	gboolean function(GFile* file, char* attribute, gint32 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_int32;
	gboolean function(GFile* file, char* attribute, guint64 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_uint64;
	gboolean function(GFile* file, char* attribute, gint64 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error) c_g_file_set_attribute_int64;
	void function(GFile* file, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_mount_mountable;
	GFile* function(GFile* file, GAsyncResult* result, GError** error) c_g_file_mount_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_unmount_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_unmount_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_unmount_mountable_with_operation;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_unmount_mountable_with_operation_finish;
	void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_eject_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_eject_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_eject_mountable_with_operation;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_eject_mountable_with_operation_finish;
	void function(GFile* file, GDriveStartFlags flags, GMountOperation* startOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_start_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_start_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_stop_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_stop_mountable_finish;
	void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_poll_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error) c_g_file_poll_mountable_finish;
	void function(GFile* location, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_mount_enclosing_volume;
	gboolean function(GFile* location, GAsyncResult* result, GError** error) c_g_file_mount_enclosing_volume_finish;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error) c_g_file_monitor_directory;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error) c_g_file_monitor_file;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error) c_g_file_monitor;
	gboolean function(GFile* file, GCancellable* cancellable, char** contents, gsize* length, char** etagOut, GError** error) c_g_file_load_contents;
	void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_load_contents_async;
	gboolean function(GFile* file, GAsyncResult* res, char** contents, gsize* length, char** etagOut, GError** error) c_g_file_load_contents_finish;
	void function(GFile* file, GCancellable* cancellable, GFileReadMoreCallback readMoreCallback, GAsyncReadyCallback callback, gpointer userData) c_g_file_load_partial_contents_async;
	gboolean function(GFile* file, GAsyncResult* res, char** contents, gsize* length, char** etagOut, GError** error) c_g_file_load_partial_contents_finish;
	gboolean function(GFile* file, char* contents, gsize length, char* etag, gboolean makeBackup, GFileCreateFlags flags, char** newEtag, GCancellable* cancellable, GError** error) c_g_file_replace_contents;
	void function(GFile* file, char* contents, gsize length, char* etag, gboolean makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_replace_contents_async;
	gboolean function(GFile* file, GAsyncResult* res, char** newEtag, GError** error) c_g_file_replace_contents_finish;
	gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GError** error) c_g_file_copy_attributes;
	GFileIOStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_create_readwrite;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_create_readwrite_async;
	GFileIOStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_create_readwrite_finish;
	GFileIOStream* function(GFile* file, GCancellable* cancellable, GError** error) c_g_file_open_readwrite;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_open_readwrite_async;
	GFileIOStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_open_readwrite_finish;
	GFileIOStream* function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** error) c_g_file_replace_readwrite;
	void function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData) c_g_file_replace_readwrite_async;
	GFileIOStream* function(GFile* file, GAsyncResult* res, GError** error) c_g_file_replace_readwrite_finish;
	gboolean function(GFile* file) c_g_file_supports_thread_contexts;
	
	// gio.FileAttributeInfoList
	
	GFileAttributeInfoList* function() c_g_file_attribute_info_list_new;
	GFileAttributeInfoList* function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_ref;
	void function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_unref;
	GFileAttributeInfoList* function(GFileAttributeInfoList* list) c_g_file_attribute_info_list_dup;
	GFileAttributeInfo* function(GFileAttributeInfoList* list, char* name) c_g_file_attribute_info_list_lookup;
	void function(GFileAttributeInfoList* list, char* name, GFileAttributeType type, GFileAttributeInfoFlags flags) c_g_file_attribute_info_list_add;
}");

// gio.File

alias c_g_file_new_for_path  g_file_new_for_path;
alias c_g_file_new_for_uri  g_file_new_for_uri;
alias c_g_file_new_for_commandline_arg  g_file_new_for_commandline_arg;
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
