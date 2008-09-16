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


module gtkc.gio;

version(Tango)
{
	private import tango.stdc.stdio;
	debug private import tango.io.Stdout;
}
else
	private import std.stdio;

private import gtkc.giotypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker gio_Linker;

static this()
{
 gio_Linker = new Linker(libPath ~ importLibs[LIBRARY.GIO] );
 gio_Linker.link(gioLinks);

 debug
 {
 	version(Tango) Stdout("* Finished static this(): gio").newline;
 	else writefln("* Finished static this(): gio");
 }
}

static ~this()
{
 delete gio_Linker;

 debug
 {
 	version(Tango) Stdout("* Finished static ~this(): gio").newline;
 	else writefln("* Finished static ~this(): gio");
 }
}

extern(C) 
{	
	// gio.File
	
	GFile* function(char* path)g_file_new_for_path;
	GFile* function(char* uri)g_file_new_for_uri;
	GFile* function(char* arg)g_file_new_for_commandline_arg;
	GFile* function(char* parseName)g_file_parse_name;
	GFile* function(GFile* file)g_file_dup;
	guint function(gconstpointer file)g_file_hash;
	gboolean function(GFile* file1, GFile* file2)g_file_equal;
	char* function(GFile* file)g_file_get_basename;
	char* function(GFile* file)g_file_get_path;
	char* function(GFile* file)g_file_get_uri;
	char* function(GFile* file)g_file_get_parse_name;
	GFile* function(GFile* file)g_file_get_parent;
	GFile* function(GFile* file, char* name)g_file_get_child;
	GFile* function(GFile* file, char* displayName, GError** error)g_file_get_child_for_display_name;
	gboolean function(GFile* file, GFile* prefix)g_file_has_prefix;
	char* function(GFile* parent, GFile* descendant)g_file_get_relative_path;
	GFile* function(GFile* file, char* relativePath)g_file_resolve_relative_path;
	gboolean function(GFile* file)g_file_is_native;
	gboolean function(GFile* file, char* uriScheme)g_file_has_uri_scheme;
	char* function(GFile* file)g_file_get_uri_scheme;
	GFileInputStream* function(GFile* file, GCancellable* cancellable, GError** error)g_file_read;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_read_async;
	GFileInputStream* function(GFile* file, GAsyncResult* res, GError** error)g_file_read_finish;
	GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error)g_file_append_to;
	GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error)g_file_create;
	GFileOutputStream* function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** error)g_file_replace;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_append_to_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error)g_file_append_to_finish;
	void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_create_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error)g_file_create_finish;
	void function(GFile* file, char* etag, gboolean makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_replace_async;
	GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** error)g_file_replace_finish;
	GFileInfo* function(GFile* file, char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)g_file_query_info;
	void function(GFile* file, char* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_query_info_async;
	GFileInfo* function(GFile* file, GAsyncResult* res, GError** error)g_file_query_info_finish;
	gboolean function(GFile* file, GCancellable* cancellable)g_file_query_exists;
	GFileType function(GFile* file, GFileQueryInfoFlags flags, GCancellable* cancellable)g_file_query_file_type;
	GFileInfo* function(GFile* file, char* attributes, GCancellable* cancellable, GError** error)g_file_query_filesystem_info;
	void function(GFile* file, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_query_filesystem_info_async;
	GFileInfo* function(GFile* file, GAsyncResult* res, GError** error)g_file_query_filesystem_info_finish;
	GAppInfo* function(GFile* file, GCancellable* cancellable, GError** error)g_file_query_default_handler;
	GMount* function(GFile* file, GCancellable* cancellable, GError** error)g_file_find_enclosing_mount;
	void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_find_enclosing_mount_async;
	GMount* function(GFile* file, GAsyncResult* res, GError** error)g_file_find_enclosing_mount_finish;
	GFileEnumerator* function(GFile* file, char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)g_file_enumerate_children;
	void function(GFile* file, char* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_enumerate_children_async;
	GFileEnumerator* function(GFile* file, GAsyncResult* res, GError** error)g_file_enumerate_children_finish;
	GFile* function(GFile* file, char* displayName, GCancellable* cancellable, GError** error)g_file_set_display_name;
	void function(GFile* file, char* displayName, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_set_display_name_async;
	GFile* function(GFile* file, GAsyncResult* res, GError** error)g_file_set_display_name_finish;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error)g_file_delete;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error)g_file_trash;
	gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, gpointer progressCallbackData, GError** error)g_file_copy;
	void function(GFile* source, GFile* destination, GFileCopyFlags flags, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, gpointer progressCallbackData, GAsyncReadyCallback callback, gpointer userData)g_file_copy_async;
	gboolean function(GFile* file, GAsyncResult* res, GError** error)g_file_copy_finish;
	gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, gpointer progressCallbackData, GError** error)g_file_move;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error)g_file_make_directory;
	gboolean function(GFile* file, GCancellable* cancellable, GError** error)g_file_make_directory_with_parents;
	gboolean function(GFile* file, char* symlinkValue, GCancellable* cancellable, GError** error)g_file_make_symbolic_link;
	GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** error)g_file_query_settable_attributes;
	GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** error)g_file_query_writable_namespaces;
	gboolean function(GFile* file, char* attribute, GFileAttributeType type, gpointer valueP, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)g_file_set_attribute;
	gboolean function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)g_file_set_attributes_from_info;
	void function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_set_attributes_async;
	gboolean function(GFile* file, GAsyncResult* result, GFileInfo** info, GError** error)g_file_set_attributes_finish;
	gboolean function(GFile* file, char* attribute, char* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)g_file_set_attribute_string;
	gboolean function(GFile* file, char* attribute, char* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)g_file_set_attribute_byte_string;
	gboolean function(GFile* file, char* attribute, guint32 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)g_file_set_attribute_uint32;
	gboolean function(GFile* file, char* attribute, gint32 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)g_file_set_attribute_int32;
	gboolean function(GFile* file, char* attribute, guint64 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)g_file_set_attribute_uint64;
	gboolean function(GFile* file, char* attribute, gint64 value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)g_file_set_attribute_int64;
	void function(GFile* file, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_mount_mountable;
	GFile* function(GFile* file, GAsyncResult* result, GError** error)g_file_mount_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_unmount_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error)g_file_unmount_mountable_finish;
	void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_eject_mountable;
	gboolean function(GFile* file, GAsyncResult* result, GError** error)g_file_eject_mountable_finish;
	void function(GFile* location, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_mount_enclosing_volume;
	gboolean function(GFile* location, GAsyncResult* result, GError** error)g_file_mount_enclosing_volume_finish;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error)g_file_monitor_directory;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error)g_file_monitor_file;
	GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error)g_file_monitor;
	gboolean function(GFile* file, GCancellable* cancellable, char** contents, gsize* length, char** etagOut, GError** error)g_file_load_contents;
	void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_load_contents_async;
	gboolean function(GFile* file, GAsyncResult* res, char** contents, gsize* length, char** etagOut, GError** error)g_file_load_contents_finish;
	void function(GFile* file, GCancellable* cancellable, GFileReadMoreCallback readMoreCallback, GAsyncReadyCallback callback, gpointer userData)g_file_load_partial_contents_async;
	gboolean function(GFile* file, GAsyncResult* res, char** contents, gsize* length, char** etagOut, GError** error)g_file_load_partial_contents_finish;
	gboolean function(GFile* file, char* contents, gsize length, char* etag, gboolean makeBackup, GFileCreateFlags flags, char** newEtag, GCancellable* cancellable, GError** error)g_file_replace_contents;
	void function(GFile* file, char* contents, gsize length, char* etag, gboolean makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_replace_contents_async;
	gboolean function(GFile* file, GAsyncResult* res, char** newEtag, GError** error)g_file_replace_contents_finish;
	gboolean function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GError** error)g_file_copy_attributes;
	
	// gio.FileAttributeInfoList
	
	GFileAttributeInfoList* function()g_file_attribute_info_list_new;
	GFileAttributeInfoList* function(GFileAttributeInfoList* list)g_file_attribute_info_list_ref;
	void function(GFileAttributeInfoList* list)g_file_attribute_info_list_unref;
	GFileAttributeInfoList* function(GFileAttributeInfoList* list)g_file_attribute_info_list_dup;
	GFileAttributeInfo* function(GFileAttributeInfoList* list, char* name)g_file_attribute_info_list_lookup;
	void function(GFileAttributeInfoList* list, char* name, GFileAttributeType type, GFileAttributeInfoFlags flags)g_file_attribute_info_list_add;
	
	// gio.FileInfo
	
	GFileInfo* function()g_file_info_new;
	GFileInfo* function(GFileInfo* other)g_file_info_dup;
	void function(GFileInfo* srcInfo, GFileInfo* destInfo)g_file_info_copy_into;
	gboolean function(GFileInfo* info, char* attribute)g_file_info_has_attribute;
	char** function(GFileInfo* info, char* nameSpace)g_file_info_list_attributes;
	GFileAttributeType function(GFileInfo* info, char* attribute)g_file_info_get_attribute_type;
	void function(GFileInfo* info, char* attribute)g_file_info_remove_attribute;
	char* function(GFileInfo* info, char* attribute)g_file_info_get_attribute_as_string;
	gboolean function(GFileInfo* info, char* attribute, GFileAttributeType* type, gpointer* valuePp, GFileAttributeStatus* status)g_file_info_get_attribute_data;
	GFileAttributeStatus function(GFileInfo* info, char* attribute)g_file_info_get_attribute_status;
	char* function(GFileInfo* info, char* attribute)g_file_info_get_attribute_string;
	char* function(GFileInfo* info, char* attribute)g_file_info_get_attribute_byte_string;
	gboolean function(GFileInfo* info, char* attribute)g_file_info_get_attribute_boolean;
	guint32 function(GFileInfo* info, char* attribute)g_file_info_get_attribute_uint32;
	gint32 function(GFileInfo* info, char* attribute)g_file_info_get_attribute_int32;
	guint64 function(GFileInfo* info, char* attribute)g_file_info_get_attribute_uint64;
	gint64 function(GFileInfo* info, char* attribute)g_file_info_get_attribute_int64;
	GObject* function(GFileInfo* info, char* attribute)g_file_info_get_attribute_object;
	void function(GFileInfo* info, char* attribute, GFileAttributeType type, gpointer valueP)g_file_info_set_attribute;
	void function(GFileInfo* info, char* attribute, char* attrValue)g_file_info_set_attribute_string;
	void function(GFileInfo* info, char* attribute, char* attrValue)g_file_info_set_attribute_byte_string;
	void function(GFileInfo* info, char* attribute, gboolean attrValue)g_file_info_set_attribute_boolean;
	void function(GFileInfo* info, char* attribute, guint32 attrValue)g_file_info_set_attribute_uint32;
	void function(GFileInfo* info, char* attribute, gint32 attrValue)g_file_info_set_attribute_int32;
	void function(GFileInfo* info, char* attribute, guint64 attrValue)g_file_info_set_attribute_uint64;
	void function(GFileInfo* info, char* attribute, gint64 attrValue)g_file_info_set_attribute_int64;
	void function(GFileInfo* info, char* attribute, GObject* attrValue)g_file_info_set_attribute_object;
	void function(GFileInfo* info)g_file_info_clear_status;
	GFileType function(GFileInfo* info)g_file_info_get_file_type;
	gboolean function(GFileInfo* info)g_file_info_get_is_hidden;
	gboolean function(GFileInfo* info)g_file_info_get_is_backup;
	gboolean function(GFileInfo* info)g_file_info_get_is_symlink;
	char* function(GFileInfo* info)g_file_info_get_name;
	char* function(GFileInfo* info)g_file_info_get_display_name;
	char* function(GFileInfo* info)g_file_info_get_edit_name;
	GIcon* function(GFileInfo* info)g_file_info_get_icon;
	char* function(GFileInfo* info)g_file_info_get_content_type;
	goffset function(GFileInfo* info)g_file_info_get_size;
	void function(GFileInfo* info, GTimeVal* result)g_file_info_get_modification_time;
	char* function(GFileInfo* info)g_file_info_get_symlink_target;
	char* function(GFileInfo* info)g_file_info_get_etag;
	gint32 function(GFileInfo* info)g_file_info_get_sort_order;
	void function(GFileInfo* info, GFileAttributeMatcher* mask)g_file_info_set_attribute_mask;
	void function(GFileInfo* info)g_file_info_unset_attribute_mask;
	void function(GFileInfo* info, GFileType type)g_file_info_set_file_type;
	void function(GFileInfo* info, gboolean isHidden)g_file_info_set_is_hidden;
	void function(GFileInfo* info, gboolean isSymlink)g_file_info_set_is_symlink;
	void function(GFileInfo* info, char* name)g_file_info_set_name;
	void function(GFileInfo* info, char* displayName)g_file_info_set_display_name;
	void function(GFileInfo* info, char* editName)g_file_info_set_edit_name;
	void function(GFileInfo* info, GIcon* icon)g_file_info_set_icon;
	void function(GFileInfo* info, char* contentType)g_file_info_set_content_type;
	void function(GFileInfo* info, goffset size)g_file_info_set_size;
	void function(GFileInfo* info, GTimeVal* mtime)g_file_info_set_modification_time;
	void function(GFileInfo* info, char* symlinkTarget)g_file_info_set_symlink_target;
	void function(GFileInfo* info, gint32 sortOrder)g_file_info_set_sort_order;
	
	// gio.FileAttributeMatcher
	
	GFileAttributeMatcher* function(char* attributes)g_file_attribute_matcher_new;
	GFileAttributeMatcher* function(GFileAttributeMatcher* matcher)g_file_attribute_matcher_ref;
	void function(GFileAttributeMatcher* matcher)g_file_attribute_matcher_unref;
	gboolean function(GFileAttributeMatcher* matcher, char* attribute)g_file_attribute_matcher_matches;
	gboolean function(GFileAttributeMatcher* matcher, char* attribute)g_file_attribute_matcher_matches_only;
	gboolean function(GFileAttributeMatcher* matcher, char* ns)g_file_attribute_matcher_enumerate_namespace;
	char* function(GFileAttributeMatcher* matcher)g_file_attribute_matcher_enumerate_next;
	
	// gio.FileEnumerator
	
	GFileInfo* function(GFileEnumerator* enumerator, GCancellable* cancellable, GError** error)g_file_enumerator_next_file;
	gboolean function(GFileEnumerator* enumerator, GCancellable* cancellable, GError** error)g_file_enumerator_close;
	void function(GFileEnumerator* enumerator, int numFiles, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_enumerator_next_files_async;
	GList* function(GFileEnumerator* enumerator, GAsyncResult* result, GError** error)g_file_enumerator_next_files_finish;
	void function(GFileEnumerator* enumerator, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_enumerator_close_async;
	gboolean function(GFileEnumerator* enumerator, GAsyncResult* result, GError** error)g_file_enumerator_close_finish;
	gboolean function(GFileEnumerator* enumerator)g_file_enumerator_is_closed;
	gboolean function(GFileEnumerator* enumerator)g_file_enumerator_has_pending;
	void function(GFileEnumerator* enumerator, gboolean pending)g_file_enumerator_set_pending;
	GFile* function(GFileEnumerator* enumerator)g_file_enumerator_get_container;
	
	// gio.MountOperation
	
	GMountOperation* function()g_mount_operation_new;
	char* function(GMountOperation* op)g_mount_operation_get_username;
	void function(GMountOperation* op, char* username)g_mount_operation_set_username;
	char* function(GMountOperation* op)g_mount_operation_get_password;
	void function(GMountOperation* op, char* password)g_mount_operation_set_password;
	gboolean function(GMountOperation* op)g_mount_operation_get_anonymous;
	void function(GMountOperation* op, gboolean anonymous)g_mount_operation_set_anonymous;
	char* function(GMountOperation* op)g_mount_operation_get_domain;
	void function(GMountOperation* op, char* domain)g_mount_operation_set_domain;
	GPasswordSave function(GMountOperation* op)g_mount_operation_get_password_save;
	void function(GMountOperation* op, GPasswordSave save)g_mount_operation_set_password_save;
	int function(GMountOperation* op)g_mount_operation_get_choice;
	void function(GMountOperation* op, int choice)g_mount_operation_set_choice;
	void function(GMountOperation* op, GMountOperationResult result)g_mount_operation_reply;
	
	// gio.ErrorGIO
	
	GIOErrorEnum function(gint errNo)g_io_error_from_errno;
	
	// gio.FileMonitor
	
	gboolean function(GFileMonitor* monitor)g_file_monitor_cancel;
	gboolean function(GFileMonitor* monitor)g_file_monitor_is_cancelled;
	void function(GFileMonitor* monitor, int limitMsecs)g_file_monitor_set_rate_limit;
	void function(GFileMonitor* monitor, GFile* child, GFile* otherFile, GFileMonitorEvent eventType)g_file_monitor_emit_event;
	
	// gio.Cancellable
	
	GCancellable* function()g_cancellable_new;
	gboolean function(GCancellable* cancellable)g_cancellable_is_cancelled;
	gboolean function(GCancellable* cancellable, GError** error)g_cancellable_set_error_if_cancelled;
	int function(GCancellable* cancellable)g_cancellable_get_fd;
	GCancellable* function()g_cancellable_get_current;
	void function(GCancellable* cancellable)g_cancellable_pop_current;
	void function(GCancellable* cancellable)g_cancellable_push_current;
	void function(GCancellable* cancellable)g_cancellable_reset;
	void function(GCancellable* cancellable)g_cancellable_cancel;
	
	// gio.AsyncResultT
	
	
	// gio.AsyncResultT
	
	gpointer function(GAsyncResult* res)g_async_result_get_user_data;
	GObject* function(GAsyncResult* res)g_async_result_get_source_object;
	
	// gio.IOSchedulerJob
	
	void function(GIOSchedulerJobFunc jobFunc, gpointer userData, GDestroyNotify notify, gint ioPriority, GCancellable* cancellable)g_io_scheduler_push_job;
	void function()g_io_scheduler_cancel_all_jobs;
	gboolean function(GIOSchedulerJob* job, GSourceFunc func, gpointer userData, GDestroyNotify notify)g_io_scheduler_job_send_to_mainloop;
	void function(GIOSchedulerJob* job, GSourceFunc func, gpointer userData, GDestroyNotify notify)g_io_scheduler_job_send_to_mainloop_async;
	
	// gio.SimpleAsyncResult
	
	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, gpointer userData, gpointer sourceTag)g_simple_async_result_new;
	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, gpointer userData, GQuark domain, gint code, char* format, ... )g_simple_async_result_new_error;
	GSimpleAsyncResult* function(GObject* sourceObject, GAsyncReadyCallback callback, gpointer userData, GError* error)g_simple_async_result_new_from_error;
	void function(GSimpleAsyncResult* simple, gpointer opRes, GDestroyNotify destroyOpRes)g_simple_async_result_set_op_res_gpointer;
	gpointer function(GSimpleAsyncResult* simple)g_simple_async_result_get_op_res_gpointer;
	void function(GSimpleAsyncResult* simple, gssize opRes)g_simple_async_result_set_op_res_gssize;
	gssize function(GSimpleAsyncResult* simple)g_simple_async_result_get_op_res_gssize;
	void function(GSimpleAsyncResult* simple, gboolean opRes)g_simple_async_result_set_op_res_gboolean;
	gboolean function(GSimpleAsyncResult* simple)g_simple_async_result_get_op_res_gboolean;
	gpointer function(GSimpleAsyncResult* simple)g_simple_async_result_get_source_tag;
	void function(GSimpleAsyncResult* simple, gboolean handleCancellation)g_simple_async_result_set_handle_cancellation;
	void function(GSimpleAsyncResult* simple)g_simple_async_result_complete;
	void function(GSimpleAsyncResult* simple)g_simple_async_result_complete_in_idle;
	void function(GSimpleAsyncResult* simple, GSimpleAsyncThreadFunc func, int ioPriority, GCancellable* cancellable)g_simple_async_result_run_in_thread;
	void function(GSimpleAsyncResult* simple, GError* error)g_simple_async_result_set_from_error;
	gboolean function(GSimpleAsyncResult* simple, GError** dest)g_simple_async_result_propagate_error;
	void function(GSimpleAsyncResult* simple, GQuark domain, gint code, char* format, ... )g_simple_async_result_set_error;
	void function(GSimpleAsyncResult* simple, GQuark domain, gint code, char* format, va_list args)g_simple_async_result_set_error_va;
	void function(GObject* object, GAsyncReadyCallback callback, gpointer userData, GQuark domain, gint code, char* format, ... )g_simple_async_report_error_in_idle;
	void function(GObject* object, GAsyncReadyCallback callback, gpointer userData, GError* error)g_simple_async_report_gerror_in_idle;
	
	// gio.SeekableT
	
	
	// gio.SeekableT
	
	goffset function(GSeekable* seekable)g_seekable_tell;
	gboolean function(GSeekable* seekable)g_seekable_can_seek;
	gboolean function(GSeekable* seekable, goffset offset, GSeekType type, GCancellable* cancellable, GError** error)g_seekable_seek;
	gboolean function(GSeekable* seekable)g_seekable_can_truncate;
	gboolean function(GSeekable* seekable, goffset offset, GCancellable* cancellable, GError** error)g_seekable_truncate;
	
	// gio.InputStream
	
	gssize function(GInputStream* stream, void* buffer, gsize count, GCancellable* cancellable, GError** error)g_input_stream_read;
	gboolean function(GInputStream* stream, void* buffer, gsize count, gsize* bytesRead, GCancellable* cancellable, GError** error)g_input_stream_read_all;
	gssize function(GInputStream* stream, gsize count, GCancellable* cancellable, GError** error)g_input_stream_skip;
	gboolean function(GInputStream* stream, GCancellable* cancellable, GError** error)g_input_stream_close;
	void function(GInputStream* stream, void* buffer, gsize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_input_stream_read_async;
	gssize function(GInputStream* stream, GAsyncResult* result, GError** error)g_input_stream_read_finish;
	void function(GInputStream* stream, gsize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_input_stream_skip_async;
	gssize function(GInputStream* stream, GAsyncResult* result, GError** error)g_input_stream_skip_finish;
	void function(GInputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_input_stream_close_async;
	gboolean function(GInputStream* stream, GAsyncResult* result, GError** error)g_input_stream_close_finish;
	gboolean function(GInputStream* stream)g_input_stream_is_closed;
	gboolean function(GInputStream* stream)g_input_stream_has_pending;
	gboolean function(GInputStream* stream, GError** error)g_input_stream_set_pending;
	void function(GInputStream* stream)g_input_stream_clear_pending;
	
	// gio.OutputStream
	
	gssize function(GOutputStream* stream, void* buffer, gsize count, GCancellable* cancellable, GError** error)g_output_stream_write;
	gboolean function(GOutputStream* stream, void* buffer, gsize count, gsize* bytesWritten, GCancellable* cancellable, GError** error)g_output_stream_write_all;
	gssize function(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, GCancellable* cancellable, GError** error)g_output_stream_splice;
	gboolean function(GOutputStream* stream, GCancellable* cancellable, GError** error)g_output_stream_flush;
	gboolean function(GOutputStream* stream, GCancellable* cancellable, GError** error)g_output_stream_close;
	void function(GOutputStream* stream, void* buffer, gsize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_output_stream_write_async;
	gssize function(GOutputStream* stream, GAsyncResult* result, GError** error)g_output_stream_write_finish;
	void function(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_output_stream_splice_async;
	gssize function(GOutputStream* stream, GAsyncResult* result, GError** error)g_output_stream_splice_finish;
	void function(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_output_stream_flush_async;
	gboolean function(GOutputStream* stream, GAsyncResult* result, GError** error)g_output_stream_flush_finish;
	void function(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_output_stream_close_async;
	gboolean function(GOutputStream* stream, GAsyncResult* result, GError** error)g_output_stream_close_finish;
	gboolean function(GOutputStream* stream)g_output_stream_is_closed;
	gboolean function(GOutputStream* stream)g_output_stream_has_pending;
	gboolean function(GOutputStream* stream, GError** error)g_output_stream_set_pending;
	void function(GOutputStream* stream)g_output_stream_clear_pending;
	
	// gio.FileInputStream
	
	GFileInfo* function(GFileInputStream* stream, char* attributes, GCancellable* cancellable, GError** error)g_file_input_stream_query_info;
	void function(GFileInputStream* stream, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_input_stream_query_info_async;
	GFileInfo* function(GFileInputStream* stream, GAsyncResult* result, GError** error)g_file_input_stream_query_info_finish;
	
	// gio.FileOutputStream
	
	GFileInfo* function(GFileOutputStream* stream, char* attributes, GCancellable* cancellable, GError** error)g_file_output_stream_query_info;
	void function(GFileOutputStream* stream, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_file_output_stream_query_info_async;
	GFileInfo* function(GFileOutputStream* stream, GAsyncResult* result, GError** error)g_file_output_stream_query_info_finish;
	char* function(GFileOutputStream* stream)g_file_output_stream_get_etag;
	
	// gio.FilterInputStream
	
	GInputStream* function(GFilterInputStream* stream)g_filter_input_stream_get_base_stream;
	
	// gio.FilterOutputStream
	
	GOutputStream* function(GFilterOutputStream* stream)g_filter_output_stream_get_base_stream;
	
	// gio.MemoryInputStream
	
	GInputStream* function()g_memory_input_stream_new;
	GInputStream* function(void* data, gssize len, GDestroyNotify destroy)g_memory_input_stream_new_from_data;
	void function(GMemoryInputStream* stream, void* data, gssize len, GDestroyNotify destroy)g_memory_input_stream_add_data;
	
	// gio.MemoryOutputStream
	
	GOutputStream* function(gpointer data, gsize len, GReallocFunc reallocFn, GDestroyNotify destroy)g_memory_output_stream_new;
	gpointer function(GMemoryOutputStream* ostream)g_memory_output_stream_get_data;
	gsize function(GMemoryOutputStream* ostream)g_memory_output_stream_get_size;
	gsize function(GMemoryOutputStream* ostream)g_memory_output_stream_get_data_size;
	
	// gio.BufferedInputStream
	
	GInputStream* function(GInputStream* baseStream)g_buffered_input_stream_new;
	GInputStream* function(GInputStream* baseStream, gsize size)g_buffered_input_stream_new_sized;
	gsize function(GBufferedInputStream* stream)g_buffered_input_stream_get_buffer_size;
	void function(GBufferedInputStream* stream, gsize size)g_buffered_input_stream_set_buffer_size;
	gsize function(GBufferedInputStream* stream)g_buffered_input_stream_get_available;
	void* function(GBufferedInputStream* stream, gsize* count)g_buffered_input_stream_peek_buffer;
	gsize function(GBufferedInputStream* stream, void* buffer, gsize offset, gsize count)g_buffered_input_stream_peek;
	gssize function(GBufferedInputStream* stream, gssize count, GCancellable* cancellable, GError** error)g_buffered_input_stream_fill;
	void function(GBufferedInputStream* stream, gssize count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_buffered_input_stream_fill_async;
	gssize function(GBufferedInputStream* stream, GAsyncResult* result, GError** error)g_buffered_input_stream_fill_finish;
	int function(GBufferedInputStream* stream, GCancellable* cancellable, GError** error)g_buffered_input_stream_read_byte;
	
	// gio.BufferedOutputStream
	
	GOutputStream* function(GOutputStream* baseStream)g_buffered_output_stream_new;
	GOutputStream* function(GOutputStream* baseStream, gsize size)g_buffered_output_stream_new_sized;
	gsize function(GBufferedOutputStream* stream)g_buffered_output_stream_get_buffer_size;
	void function(GBufferedOutputStream* stream, gsize size)g_buffered_output_stream_set_buffer_size;
	gboolean function(GBufferedOutputStream* stream)g_buffered_output_stream_get_auto_grow;
	void function(GBufferedOutputStream* stream, gboolean autoGrow)g_buffered_output_stream_set_auto_grow;
	
	// gio.DataInputStream
	
	GDataInputStream* function(GInputStream* baseStream)g_data_input_stream_new;
	void function(GDataInputStream* stream, GDataStreamByteOrder order)g_data_input_stream_set_byte_order;
	GDataStreamByteOrder function(GDataInputStream* stream)g_data_input_stream_get_byte_order;
	void function(GDataInputStream* stream, GDataStreamNewlineType type)g_data_input_stream_set_newline_type;
	GDataStreamNewlineType function(GDataInputStream* stream)g_data_input_stream_get_newline_type;
	guchar function(GDataInputStream* stream, GCancellable* cancellable, GError** error)g_data_input_stream_read_byte;
	gint16 function(GDataInputStream* stream, GCancellable* cancellable, GError** error)g_data_input_stream_read_int16;
	guint16 function(GDataInputStream* stream, GCancellable* cancellable, GError** error)g_data_input_stream_read_uint16;
	gint32 function(GDataInputStream* stream, GCancellable* cancellable, GError** error)g_data_input_stream_read_int32;
	guint32 function(GDataInputStream* stream, GCancellable* cancellable, GError** error)g_data_input_stream_read_uint32;
	gint64 function(GDataInputStream* stream, GCancellable* cancellable, GError** error)g_data_input_stream_read_int64;
	guint64 function(GDataInputStream* stream, GCancellable* cancellable, GError** error)g_data_input_stream_read_uint64;
	char* function(GDataInputStream* stream, gsize* length, GCancellable* cancellable, GError** error)g_data_input_stream_read_line;
	char* function(GDataInputStream* stream, gchar* stopChars, gsize* length, GCancellable* cancellable, GError** error)g_data_input_stream_read_until;
	
	// gio.DataOutputStream
	
	GDataOutputStream* function(GOutputStream* baseStream)g_data_output_stream_new;
	void function(GDataOutputStream* stream, GDataStreamByteOrder order)g_data_output_stream_set_byte_order;
	GDataStreamByteOrder function(GDataOutputStream* stream)g_data_output_stream_get_byte_order;
	gboolean function(GDataOutputStream* stream, guchar data, GCancellable* cancellable, GError** error)g_data_output_stream_put_byte;
	gboolean function(GDataOutputStream* stream, gint16 data, GCancellable* cancellable, GError** error)g_data_output_stream_put_int16;
	gboolean function(GDataOutputStream* stream, guint16 data, GCancellable* cancellable, GError** error)g_data_output_stream_put_uint16;
	gboolean function(GDataOutputStream* stream, gint32 data, GCancellable* cancellable, GError** error)g_data_output_stream_put_int32;
	gboolean function(GDataOutputStream* stream, guint32 data, GCancellable* cancellable, GError** error)g_data_output_stream_put_uint32;
	gboolean function(GDataOutputStream* stream, gint64 data, GCancellable* cancellable, GError** error)g_data_output_stream_put_int64;
	gboolean function(GDataOutputStream* stream, guint64 data, GCancellable* cancellable, GError** error)g_data_output_stream_put_uint64;
	gboolean function(GDataOutputStream* stream, char* str, GCancellable* cancellable, GError** error)g_data_output_stream_put_string;
	
	// gio.UnixInputStream
	
	GInputStream* function(int fd, gboolean closeFdAtClose)g_unix_input_stream_new;
	
	// gio.UnixOutputStream
	
	GOutputStream* function(int fd, gboolean closeFdAtClose)g_unix_output_stream_new;
	
	// gio.ContentType
	
	gboolean function(char* type1, char* type2)g_content_type_equals;
	gboolean function(char* type, char* supertype)g_content_type_is_a;
	gboolean function(char* type)g_content_type_is_unknown;
	char* function(char* type)g_content_type_get_description;
	char* function(char* type)g_content_type_get_mime_type;
	GIcon* function(char* type)g_content_type_get_icon;
	gboolean function(char* type)g_content_type_can_be_executable;
	char* function(char* mimeType)g_content_type_from_mime_type;
	char* function(char* filename, guchar* data, gsize dataSize, gboolean* resultUncertain)g_content_type_guess;
	char** function(GFile* root)g_content_type_guess_for_tree;
	GList* function()g_content_types_get_registered;
	
	// gio.AppInfoT
	
	
	// gio.AppInfoT
	
	GAppInfo* function(char* commandline, char* applicationName, GAppInfoCreateFlags flags, GError** error)g_app_info_create_from_commandline;
	GAppInfo* function(GAppInfo* appinfo)g_app_info_dup;
	gboolean function(GAppInfo* appinfo1, GAppInfo* appinfo2)g_app_info_equal;
	char* function(GAppInfo* appinfo)g_app_info_get_id;
	char* function(GAppInfo* appinfo)g_app_info_get_name;
	char* function(GAppInfo* appinfo)g_app_info_get_description;
	char* function(GAppInfo* appinfo)g_app_info_get_executable;
	GIcon* function(GAppInfo* appinfo)g_app_info_get_icon;
	gboolean function(GAppInfo* appinfo, GList* files, GAppLaunchContext* launchContext, GError** error)g_app_info_launch;
	gboolean function(GAppInfo* appinfo)g_app_info_supports_files;
	gboolean function(GAppInfo* appinfo)g_app_info_supports_uris;
	gboolean function(GAppInfo* appinfo, GList* uris, GAppLaunchContext* launchContext, GError** error)g_app_info_launch_uris;
	gboolean function(GAppInfo* appinfo)g_app_info_should_show;
	gboolean function(GAppInfo* appinfo, char* contentType, GError** error)g_app_info_set_as_default_for_type;
	gboolean function(GAppInfo* appinfo, char* extension, GError** error)g_app_info_set_as_default_for_extension;
	gboolean function(GAppInfo* appinfo, char* contentType, GError** error)g_app_info_add_supports_type;
	gboolean function(GAppInfo* appinfo)g_app_info_can_remove_supports_type;
	gboolean function(GAppInfo* appinfo, char* contentType, GError** error)g_app_info_remove_supports_type;
	GList* function()g_app_info_get_all;
	GList* function(char* contentType)g_app_info_get_all_for_type;
	GAppInfo* function(char* contentType, gboolean mustSupportUris)g_app_info_get_default_for_type;
	GAppInfo* function(char* uriScheme)g_app_info_get_default_for_uri_scheme;
	gboolean function(char* uri, GAppLaunchContext* launchContext, GError** error)g_app_info_launch_default_for_uri;
	
	// gio.AppInfo
	
	
	// gio.AppLaunchContext
	
	
	// gio.DesktopAppInfo
	
	GDesktopAppInfo* function(char* filename)g_desktop_app_info_new_from_filename;
	GDesktopAppInfo* function(GKeyFile* keyFile)g_desktop_app_info_new_from_keyfile;
	GDesktopAppInfo* function(char* desktopId)g_desktop_app_info_new;
	gboolean function(GDesktopAppInfo* info)g_desktop_app_info_get_is_hidden;
	void function(char* desktopEnv)g_desktop_app_info_set_desktop_env;
	GAppInfo* function(GDesktopAppInfoLookup* lookup, char* uriScheme)g_desktop_app_info_lookup_get_default_for_uri_scheme;
	
	// gio.VolumeMonitor
	
	GVolumeMonitor* function()g_volume_monitor_get;
	GList* function(GVolumeMonitor* volumeMonitor)g_volume_monitor_get_connected_drives;
	GList* function(GVolumeMonitor* volumeMonitor)g_volume_monitor_get_volumes;
	GList* function(GVolumeMonitor* volumeMonitor)g_volume_monitor_get_mounts;
	GVolume* function(GMount* mount)g_volume_monitor_adopt_orphan_mount;
	GMount* function(GVolumeMonitor* volumeMonitor, char* uuid)g_volume_monitor_get_mount_for_uuid;
	GVolume* function(GVolumeMonitor* volumeMonitor, char* uuid)g_volume_monitor_get_volume_for_uuid;
	
	// gio.VolumeT
	
	
	// gio.VolumeT
	
	char* function(GVolume* volume)g_volume_get_name;
	char* function(GVolume* volume)g_volume_get_uuid;
	GIcon* function(GVolume* volume)g_volume_get_icon;
	GDrive* function(GVolume* volume)g_volume_get_drive;
	GMount* function(GVolume* volume)g_volume_get_mount;
	gboolean function(GVolume* volume)g_volume_can_mount;
	gboolean function(GVolume* volume)g_volume_should_automount;
	GFile* function(GVolume* volume)g_volume_get_activation_root;
	void function(GVolume* volume, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_volume_mount;
	gboolean function(GVolume* volume, GAsyncResult* result, GError** error)g_volume_mount_finish;
	gboolean function(GVolume* volume)g_volume_can_eject;
	void function(GVolume* volume, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_volume_eject;
	gboolean function(GVolume* volume, GAsyncResult* result, GError** error)g_volume_eject_finish;
	char** function(GVolume* volume)g_volume_enumerate_identifiers;
	char* function(GVolume* volume, char* kind)g_volume_get_identifier;
	
	// gio.Volume
	
	
	// gio.MountT
	
	
	// gio.MountT
	
	char* function(GMount* mount)g_mount_get_name;
	char* function(GMount* mount)g_mount_get_uuid;
	GIcon* function(GMount* mount)g_mount_get_icon;
	GDrive* function(GMount* mount)g_mount_get_drive;
	GFile* function(GMount* mount)g_mount_get_root;
	GVolume* function(GMount* mount)g_mount_get_volume;
	gboolean function(GMount* mount)g_mount_can_unmount;
	void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_mount_unmount;
	gboolean function(GMount* mount, GAsyncResult* result, GError** error)g_mount_unmount_finish;
	void function(GMount* mount, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_mount_remount;
	gboolean function(GMount* mount, GAsyncResult* result, GError** error)g_mount_remount_finish;
	gboolean function(GMount* mount)g_mount_can_eject;
	void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_mount_eject;
	gboolean function(GMount* mount, GAsyncResult* result, GError** error)g_mount_eject_finish;
	void function(GMount* mount, gboolean forceRescan, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_mount_guess_content_type;
	gchar** function(GMount* mount, GAsyncResult* result, GError** error)g_mount_guess_content_type_finish;
	gchar** function(GMount* mount, gboolean forceRescan, GCancellable* cancellable, GError** error)g_mount_guess_content_type_sync;
	
	// gio.Mount
	
	
	// gio.DriveT
	
	
	// gio.DriveT
	
	char* function(GDrive* drive)g_drive_get_name;
	GIcon* function(GDrive* drive)g_drive_get_icon;
	gboolean function(GDrive* drive)g_drive_has_volumes;
	GList* function(GDrive* drive)g_drive_get_volumes;
	gboolean function(GDrive* drive)g_drive_can_eject;
	gboolean function(GDrive* drive)g_drive_can_poll_for_media;
	void function(GDrive* drive, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_drive_poll_for_media;
	gboolean function(GDrive* drive, GAsyncResult* result, GError** error)g_drive_poll_for_media_finish;
	gboolean function(GDrive* drive)g_drive_has_media;
	gboolean function(GDrive* drive)g_drive_is_media_check_automatic;
	gboolean function(GDrive* drive)g_drive_is_media_removable;
	void function(GDrive* drive, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_drive_eject;
	gboolean function(GDrive* drive, GAsyncResult* result, GError** error)g_drive_eject_finish;
	char** function(GDrive* drive)g_drive_enumerate_identifiers;
	char* function(GDrive* drive, char* kind)g_drive_get_identifier;
	
	// gio.Drive
	
	
	// gio.UnixMountEntry
	
	void function(GUnixMountEntry* mountEntry)g_unix_mount_free;
	gint function(GUnixMountEntry* mount1, GUnixMountEntry* mount2)g_unix_mount_compare;
	char* function(GUnixMountEntry* mountEntry)g_unix_mount_get_mount_path;
	char* function(GUnixMountEntry* mountEntry)g_unix_mount_get_device_path;
	char* function(GUnixMountEntry* mountEntry)g_unix_mount_get_fs_type;
	gboolean function(GUnixMountEntry* mountEntry)g_unix_mount_is_readonly;
	gboolean function(GUnixMountEntry* mountEntry)g_unix_mount_is_system_internal;
	GIcon* function(GUnixMountEntry* mountEntry)g_unix_mount_guess_icon;
	char* function(GUnixMountEntry* mountEntry)g_unix_mount_guess_name;
	gboolean function(GUnixMountEntry* mountEntry)g_unix_mount_guess_can_eject;
	gboolean function(GUnixMountEntry* mountEntry)g_unix_mount_guess_should_display;
	GList* function(guint64* timeRead)g_unix_mount_points_get;
	GList* function(guint64* timeRead)g_unix_mounts_get;
	GUnixMountEntry* function(char* mountPath, guint64* timeRead)g_unix_mount_at;
	gboolean function(guint64 time)g_unix_mounts_changed_since;
	gboolean function(guint64 time)g_unix_mount_points_changed_since;
	gboolean function(char* mountPath)g_unix_is_mount_path_system_internal;
	
	// gio.UnixMountPoint
	
	void function(GUnixMountPoint* mountPoint)g_unix_mount_point_free;
	gint function(GUnixMountPoint* mount1, GUnixMountPoint* mount2)g_unix_mount_point_compare;
	char* function(GUnixMountPoint* mountPoint)g_unix_mount_point_get_mount_path;
	char* function(GUnixMountPoint* mountPoint)g_unix_mount_point_get_device_path;
	char* function(GUnixMountPoint* mountPoint)g_unix_mount_point_get_fs_type;
	gboolean function(GUnixMountPoint* mountPoint)g_unix_mount_point_is_readonly;
	gboolean function(GUnixMountPoint* mountPoint)g_unix_mount_point_is_user_mountable;
	gboolean function(GUnixMountPoint* mountPoint)g_unix_mount_point_is_loopback;
	GIcon* function(GUnixMountPoint* mountPoint)g_unix_mount_point_guess_icon;
	char* function(GUnixMountPoint* mountPoint)g_unix_mount_point_guess_name;
	gboolean function(GUnixMountPoint* mountPoint)g_unix_mount_point_guess_can_eject;
	
	// gio.UnixMountMonitor
	
	GUnixMountMonitor* function()g_unix_mount_monitor_new;
	void function(GUnixMountMonitor* mountMonitor, int limitMsec)g_unix_mount_monitor_set_rate_limit;
	
	// gio.IconT
	
	
	// gio.IconT
	
	guint function(gconstpointer icon)g_icon_hash;
	gboolean function(GIcon* icon1, GIcon* icon2)g_icon_equal;
	
	// gio.Icon
	
	
	// gio.FileIcon
	
	GIcon* function(GFile* file)g_file_icon_new;
	GFile* function(GFileIcon* icon)g_file_icon_get_file;
	
	// gio.LoadableIconT
	
	
	// gio.LoadableIconT
	
	GInputStream* function(GLoadableIcon* icon, int size, char** type, GCancellable* cancellable, GError** error)g_loadable_icon_load;
	void function(GLoadableIcon* icon, int size, GCancellable* cancellable, GAsyncReadyCallback callback, gpointer userData)g_loadable_icon_load_async;
	GInputStream* function(GLoadableIcon* icon, GAsyncResult* res, char** type, GError** error)g_loadable_icon_load_finish;
	
	// gio.ThemedIcon
	
	GIcon* function(char* iconname)g_themed_icon_new;
	GIcon* function(char** iconnames, int len)g_themed_icon_new_from_names;
	GIcon* function(char* iconname)g_themed_icon_new_with_default_fallbacks;
	void function(GThemedIcon* icon, char* iconname)g_themed_icon_prepend_name;
	void function(GThemedIcon* icon, char* iconname)g_themed_icon_append_name;
	
	// gio.EmblemedIcon
	
	GIcon* function(GIcon* icon, GEmblem* emblem)g_emblemed_icon_new;
	GIcon* function(GEmblemedIcon* emblemed)g_emblemed_icon_get_icon;
	GList* function(GEmblemedIcon* emblemed)g_emblemed_icon_get_emblems;
	void function(GEmblemedIcon* emblemed, GEmblem* emblem)g_emblemed_icon_add_emblem;
	
	// gio.Emblem
	
	GEmblem* function(GIcon* icon)g_emblem_new;
	GEmblem* function(GIcon* icon, GEmblemOrigin origin)g_emblem_new_with_origin;
	GIcon* function(GEmblem* emblem)g_emblem_get_icon;
	GEmblemOrigin function(GEmblem* emblem)g_emblem_get_origin;
	
	// gio.FilenameCompleter
	
	GFilenameCompleter* function()g_filename_completer_new;
	char* function(GFilenameCompleter* completer, char* initialText)g_filename_completer_get_completion_suffix;
	char** function(GFilenameCompleter* completer, char* initialText)g_filename_completer_get_completions;
	void function(GFilenameCompleter* completer, gboolean dirsOnly)g_filename_completer_set_dirs_only;
	
	// gio.Vfs
	
	GFile* function(GVfs* vfs, char* path)g_vfs_get_file_for_path;
	GFile* function(GVfs* vfs, char* uri)g_vfs_get_file_for_uri;
	GFile* function(GVfs* vfs, char* parseName)g_vfs_parse_name;
	GVfs* function()g_vfs_get_default;
	GVfs* function()g_vfs_get_local;
	gboolean function(GVfs* vfs)g_vfs_is_active;
	gchar** function(GVfs* vfs)g_vfs_get_supported_uri_schemes;
	
	// gio.IOModule
	
	GIOModule* function(gchar* filename)g_io_module_new;
	GList* function(gchar* dirname)g_io_modules_load_all_in_directory;
	void function(GIOModule* modul)g_io_module_load;
	void function(GIOModule* modul)g_io_module_unload;
	
	// gio.IOExtension
	
	char* function(GIOExtension* extension)g_io_extension_get_name;
	gint function(GIOExtension* extension)g_io_extension_get_priority;
	GType function(GIOExtension* extension)g_io_extension_get_type;
	GTypeClass* function(GIOExtension* extension)g_io_extension_ref_class;
	
	// gio.IOExtensionPoint
	
	GIOExtension* function(GIOExtensionPoint* extensionPoint, char* name)g_io_extension_point_get_extension_by_name;
	GList* function(GIOExtensionPoint* extensionPoint)g_io_extension_point_get_extensions;
	GType function(GIOExtensionPoint* extensionPoint)g_io_extension_point_get_required_type;
	GIOExtension* function(char* extensionPointName, GType type, char* extensionName, gint priority)g_io_extension_point_implement;
	GIOExtensionPoint* function(char* name)g_io_extension_point_lookup;
	GIOExtensionPoint* function(char* name)g_io_extension_point_register;
	void function(GIOExtensionPoint* extensionPoint, GType type)g_io_extension_point_set_required_type;


}

Symbol[] gioLinks = 
[

	{ "g_file_new_for_path",  cast(void**)& g_file_new_for_path},
	{ "g_file_new_for_uri",  cast(void**)& g_file_new_for_uri},
	{ "g_file_new_for_commandline_arg",  cast(void**)& g_file_new_for_commandline_arg},
	{ "g_file_parse_name",  cast(void**)& g_file_parse_name},
	{ "g_file_dup",  cast(void**)& g_file_dup},
	{ "g_file_hash",  cast(void**)& g_file_hash},
	{ "g_file_equal",  cast(void**)& g_file_equal},
	{ "g_file_get_basename",  cast(void**)& g_file_get_basename},
	{ "g_file_get_path",  cast(void**)& g_file_get_path},
	{ "g_file_get_uri",  cast(void**)& g_file_get_uri},
	{ "g_file_get_parse_name",  cast(void**)& g_file_get_parse_name},
	{ "g_file_get_parent",  cast(void**)& g_file_get_parent},
	{ "g_file_get_child",  cast(void**)& g_file_get_child},
	{ "g_file_get_child_for_display_name",  cast(void**)& g_file_get_child_for_display_name},
	{ "g_file_has_prefix",  cast(void**)& g_file_has_prefix},
	{ "g_file_get_relative_path",  cast(void**)& g_file_get_relative_path},
	{ "g_file_resolve_relative_path",  cast(void**)& g_file_resolve_relative_path},
	{ "g_file_is_native",  cast(void**)& g_file_is_native},
	{ "g_file_has_uri_scheme",  cast(void**)& g_file_has_uri_scheme},
	{ "g_file_get_uri_scheme",  cast(void**)& g_file_get_uri_scheme},
	{ "g_file_read",  cast(void**)& g_file_read},
	{ "g_file_read_async",  cast(void**)& g_file_read_async},
	{ "g_file_read_finish",  cast(void**)& g_file_read_finish},
	{ "g_file_append_to",  cast(void**)& g_file_append_to},
	{ "g_file_create",  cast(void**)& g_file_create},
	{ "g_file_replace",  cast(void**)& g_file_replace},
	{ "g_file_append_to_async",  cast(void**)& g_file_append_to_async},
	{ "g_file_append_to_finish",  cast(void**)& g_file_append_to_finish},
	{ "g_file_create_async",  cast(void**)& g_file_create_async},
	{ "g_file_create_finish",  cast(void**)& g_file_create_finish},
	{ "g_file_replace_async",  cast(void**)& g_file_replace_async},
	{ "g_file_replace_finish",  cast(void**)& g_file_replace_finish},
	{ "g_file_query_info",  cast(void**)& g_file_query_info},
	{ "g_file_query_info_async",  cast(void**)& g_file_query_info_async},
	{ "g_file_query_info_finish",  cast(void**)& g_file_query_info_finish},
	{ "g_file_query_exists",  cast(void**)& g_file_query_exists},
	{ "g_file_query_file_type",  cast(void**)& g_file_query_file_type},
	{ "g_file_query_filesystem_info",  cast(void**)& g_file_query_filesystem_info},
	{ "g_file_query_filesystem_info_async",  cast(void**)& g_file_query_filesystem_info_async},
	{ "g_file_query_filesystem_info_finish",  cast(void**)& g_file_query_filesystem_info_finish},
	{ "g_file_query_default_handler",  cast(void**)& g_file_query_default_handler},
	{ "g_file_find_enclosing_mount",  cast(void**)& g_file_find_enclosing_mount},
	{ "g_file_find_enclosing_mount_async",  cast(void**)& g_file_find_enclosing_mount_async},
	{ "g_file_find_enclosing_mount_finish",  cast(void**)& g_file_find_enclosing_mount_finish},
	{ "g_file_enumerate_children",  cast(void**)& g_file_enumerate_children},
	{ "g_file_enumerate_children_async",  cast(void**)& g_file_enumerate_children_async},
	{ "g_file_enumerate_children_finish",  cast(void**)& g_file_enumerate_children_finish},
	{ "g_file_set_display_name",  cast(void**)& g_file_set_display_name},
	{ "g_file_set_display_name_async",  cast(void**)& g_file_set_display_name_async},
	{ "g_file_set_display_name_finish",  cast(void**)& g_file_set_display_name_finish},
	{ "g_file_delete",  cast(void**)& g_file_delete},
	{ "g_file_trash",  cast(void**)& g_file_trash},
	{ "g_file_copy",  cast(void**)& g_file_copy},
	{ "g_file_copy_async",  cast(void**)& g_file_copy_async},
	{ "g_file_copy_finish",  cast(void**)& g_file_copy_finish},
	{ "g_file_move",  cast(void**)& g_file_move},
	{ "g_file_make_directory",  cast(void**)& g_file_make_directory},
	{ "g_file_make_directory_with_parents",  cast(void**)& g_file_make_directory_with_parents},
	{ "g_file_make_symbolic_link",  cast(void**)& g_file_make_symbolic_link},
	{ "g_file_query_settable_attributes",  cast(void**)& g_file_query_settable_attributes},
	{ "g_file_query_writable_namespaces",  cast(void**)& g_file_query_writable_namespaces},
	{ "g_file_set_attribute",  cast(void**)& g_file_set_attribute},
	{ "g_file_set_attributes_from_info",  cast(void**)& g_file_set_attributes_from_info},
	{ "g_file_set_attributes_async",  cast(void**)& g_file_set_attributes_async},
	{ "g_file_set_attributes_finish",  cast(void**)& g_file_set_attributes_finish},
	{ "g_file_set_attribute_string",  cast(void**)& g_file_set_attribute_string},
	{ "g_file_set_attribute_byte_string",  cast(void**)& g_file_set_attribute_byte_string},
	{ "g_file_set_attribute_uint32",  cast(void**)& g_file_set_attribute_uint32},
	{ "g_file_set_attribute_int32",  cast(void**)& g_file_set_attribute_int32},
	{ "g_file_set_attribute_uint64",  cast(void**)& g_file_set_attribute_uint64},
	{ "g_file_set_attribute_int64",  cast(void**)& g_file_set_attribute_int64},
	{ "g_file_mount_mountable",  cast(void**)& g_file_mount_mountable},
	{ "g_file_mount_mountable_finish",  cast(void**)& g_file_mount_mountable_finish},
	{ "g_file_unmount_mountable",  cast(void**)& g_file_unmount_mountable},
	{ "g_file_unmount_mountable_finish",  cast(void**)& g_file_unmount_mountable_finish},
	{ "g_file_eject_mountable",  cast(void**)& g_file_eject_mountable},
	{ "g_file_eject_mountable_finish",  cast(void**)& g_file_eject_mountable_finish},
	{ "g_file_mount_enclosing_volume",  cast(void**)& g_file_mount_enclosing_volume},
	{ "g_file_mount_enclosing_volume_finish",  cast(void**)& g_file_mount_enclosing_volume_finish},
	{ "g_file_monitor_directory",  cast(void**)& g_file_monitor_directory},
	{ "g_file_monitor_file",  cast(void**)& g_file_monitor_file},
	{ "g_file_monitor",  cast(void**)& g_file_monitor},
	{ "g_file_load_contents",  cast(void**)& g_file_load_contents},
	{ "g_file_load_contents_async",  cast(void**)& g_file_load_contents_async},
	{ "g_file_load_contents_finish",  cast(void**)& g_file_load_contents_finish},
	{ "g_file_load_partial_contents_async",  cast(void**)& g_file_load_partial_contents_async},
	{ "g_file_load_partial_contents_finish",  cast(void**)& g_file_load_partial_contents_finish},
	{ "g_file_replace_contents",  cast(void**)& g_file_replace_contents},
	{ "g_file_replace_contents_async",  cast(void**)& g_file_replace_contents_async},
	{ "g_file_replace_contents_finish",  cast(void**)& g_file_replace_contents_finish},
	{ "g_file_copy_attributes",  cast(void**)& g_file_copy_attributes},
	{ "g_file_attribute_info_list_new",  cast(void**)& g_file_attribute_info_list_new},
	{ "g_file_attribute_info_list_ref",  cast(void**)& g_file_attribute_info_list_ref},
	{ "g_file_attribute_info_list_unref",  cast(void**)& g_file_attribute_info_list_unref},
	{ "g_file_attribute_info_list_dup",  cast(void**)& g_file_attribute_info_list_dup},
	{ "g_file_attribute_info_list_lookup",  cast(void**)& g_file_attribute_info_list_lookup},
	{ "g_file_attribute_info_list_add",  cast(void**)& g_file_attribute_info_list_add},
	{ "g_file_info_new",  cast(void**)& g_file_info_new},
	{ "g_file_info_dup",  cast(void**)& g_file_info_dup},
	{ "g_file_info_copy_into",  cast(void**)& g_file_info_copy_into},
	{ "g_file_info_has_attribute",  cast(void**)& g_file_info_has_attribute},
	{ "g_file_info_list_attributes",  cast(void**)& g_file_info_list_attributes},
	{ "g_file_info_get_attribute_type",  cast(void**)& g_file_info_get_attribute_type},
	{ "g_file_info_remove_attribute",  cast(void**)& g_file_info_remove_attribute},
	{ "g_file_info_get_attribute_as_string",  cast(void**)& g_file_info_get_attribute_as_string},
	{ "g_file_info_get_attribute_data",  cast(void**)& g_file_info_get_attribute_data},
	{ "g_file_info_get_attribute_status",  cast(void**)& g_file_info_get_attribute_status},
	{ "g_file_info_get_attribute_string",  cast(void**)& g_file_info_get_attribute_string},
	{ "g_file_info_get_attribute_byte_string",  cast(void**)& g_file_info_get_attribute_byte_string},
	{ "g_file_info_get_attribute_boolean",  cast(void**)& g_file_info_get_attribute_boolean},
	{ "g_file_info_get_attribute_uint32",  cast(void**)& g_file_info_get_attribute_uint32},
	{ "g_file_info_get_attribute_int32",  cast(void**)& g_file_info_get_attribute_int32},
	{ "g_file_info_get_attribute_uint64",  cast(void**)& g_file_info_get_attribute_uint64},
	{ "g_file_info_get_attribute_int64",  cast(void**)& g_file_info_get_attribute_int64},
	{ "g_file_info_get_attribute_object",  cast(void**)& g_file_info_get_attribute_object},
	{ "g_file_info_set_attribute",  cast(void**)& g_file_info_set_attribute},
	{ "g_file_info_set_attribute_string",  cast(void**)& g_file_info_set_attribute_string},
	{ "g_file_info_set_attribute_byte_string",  cast(void**)& g_file_info_set_attribute_byte_string},
	{ "g_file_info_set_attribute_boolean",  cast(void**)& g_file_info_set_attribute_boolean},
	{ "g_file_info_set_attribute_uint32",  cast(void**)& g_file_info_set_attribute_uint32},
	{ "g_file_info_set_attribute_int32",  cast(void**)& g_file_info_set_attribute_int32},
	{ "g_file_info_set_attribute_uint64",  cast(void**)& g_file_info_set_attribute_uint64},
	{ "g_file_info_set_attribute_int64",  cast(void**)& g_file_info_set_attribute_int64},
	{ "g_file_info_set_attribute_object",  cast(void**)& g_file_info_set_attribute_object},
	{ "g_file_info_clear_status",  cast(void**)& g_file_info_clear_status},
	{ "g_file_info_get_file_type",  cast(void**)& g_file_info_get_file_type},
	{ "g_file_info_get_is_hidden",  cast(void**)& g_file_info_get_is_hidden},
	{ "g_file_info_get_is_backup",  cast(void**)& g_file_info_get_is_backup},
	{ "g_file_info_get_is_symlink",  cast(void**)& g_file_info_get_is_symlink},
	{ "g_file_info_get_name",  cast(void**)& g_file_info_get_name},
	{ "g_file_info_get_display_name",  cast(void**)& g_file_info_get_display_name},
	{ "g_file_info_get_edit_name",  cast(void**)& g_file_info_get_edit_name},
	{ "g_file_info_get_icon",  cast(void**)& g_file_info_get_icon},
	{ "g_file_info_get_content_type",  cast(void**)& g_file_info_get_content_type},
	{ "g_file_info_get_size",  cast(void**)& g_file_info_get_size},
	{ "g_file_info_get_modification_time",  cast(void**)& g_file_info_get_modification_time},
	{ "g_file_info_get_symlink_target",  cast(void**)& g_file_info_get_symlink_target},
	{ "g_file_info_get_etag",  cast(void**)& g_file_info_get_etag},
	{ "g_file_info_get_sort_order",  cast(void**)& g_file_info_get_sort_order},
	{ "g_file_info_set_attribute_mask",  cast(void**)& g_file_info_set_attribute_mask},
	{ "g_file_info_unset_attribute_mask",  cast(void**)& g_file_info_unset_attribute_mask},
	{ "g_file_info_set_file_type",  cast(void**)& g_file_info_set_file_type},
	{ "g_file_info_set_is_hidden",  cast(void**)& g_file_info_set_is_hidden},
	{ "g_file_info_set_is_symlink",  cast(void**)& g_file_info_set_is_symlink},
	{ "g_file_info_set_name",  cast(void**)& g_file_info_set_name},
	{ "g_file_info_set_display_name",  cast(void**)& g_file_info_set_display_name},
	{ "g_file_info_set_edit_name",  cast(void**)& g_file_info_set_edit_name},
	{ "g_file_info_set_icon",  cast(void**)& g_file_info_set_icon},
	{ "g_file_info_set_content_type",  cast(void**)& g_file_info_set_content_type},
	{ "g_file_info_set_size",  cast(void**)& g_file_info_set_size},
	{ "g_file_info_set_modification_time",  cast(void**)& g_file_info_set_modification_time},
	{ "g_file_info_set_symlink_target",  cast(void**)& g_file_info_set_symlink_target},
	{ "g_file_info_set_sort_order",  cast(void**)& g_file_info_set_sort_order},
	{ "g_file_attribute_matcher_new",  cast(void**)& g_file_attribute_matcher_new},
	{ "g_file_attribute_matcher_ref",  cast(void**)& g_file_attribute_matcher_ref},
	{ "g_file_attribute_matcher_unref",  cast(void**)& g_file_attribute_matcher_unref},
	{ "g_file_attribute_matcher_matches",  cast(void**)& g_file_attribute_matcher_matches},
	{ "g_file_attribute_matcher_matches_only",  cast(void**)& g_file_attribute_matcher_matches_only},
	{ "g_file_attribute_matcher_enumerate_namespace",  cast(void**)& g_file_attribute_matcher_enumerate_namespace},
	{ "g_file_attribute_matcher_enumerate_next",  cast(void**)& g_file_attribute_matcher_enumerate_next},
	{ "g_file_enumerator_next_file",  cast(void**)& g_file_enumerator_next_file},
	{ "g_file_enumerator_close",  cast(void**)& g_file_enumerator_close},
	{ "g_file_enumerator_next_files_async",  cast(void**)& g_file_enumerator_next_files_async},
	{ "g_file_enumerator_next_files_finish",  cast(void**)& g_file_enumerator_next_files_finish},
	{ "g_file_enumerator_close_async",  cast(void**)& g_file_enumerator_close_async},
	{ "g_file_enumerator_close_finish",  cast(void**)& g_file_enumerator_close_finish},
	{ "g_file_enumerator_is_closed",  cast(void**)& g_file_enumerator_is_closed},
	{ "g_file_enumerator_has_pending",  cast(void**)& g_file_enumerator_has_pending},
	{ "g_file_enumerator_set_pending",  cast(void**)& g_file_enumerator_set_pending},
	{ "g_file_enumerator_get_container",  cast(void**)& g_file_enumerator_get_container},
	{ "g_mount_operation_new",  cast(void**)& g_mount_operation_new},
	{ "g_mount_operation_get_username",  cast(void**)& g_mount_operation_get_username},
	{ "g_mount_operation_set_username",  cast(void**)& g_mount_operation_set_username},
	{ "g_mount_operation_get_password",  cast(void**)& g_mount_operation_get_password},
	{ "g_mount_operation_set_password",  cast(void**)& g_mount_operation_set_password},
	{ "g_mount_operation_get_anonymous",  cast(void**)& g_mount_operation_get_anonymous},
	{ "g_mount_operation_set_anonymous",  cast(void**)& g_mount_operation_set_anonymous},
	{ "g_mount_operation_get_domain",  cast(void**)& g_mount_operation_get_domain},
	{ "g_mount_operation_set_domain",  cast(void**)& g_mount_operation_set_domain},
	{ "g_mount_operation_get_password_save",  cast(void**)& g_mount_operation_get_password_save},
	{ "g_mount_operation_set_password_save",  cast(void**)& g_mount_operation_set_password_save},
	{ "g_mount_operation_get_choice",  cast(void**)& g_mount_operation_get_choice},
	{ "g_mount_operation_set_choice",  cast(void**)& g_mount_operation_set_choice},
	{ "g_mount_operation_reply",  cast(void**)& g_mount_operation_reply},
	{ "g_io_error_from_errno",  cast(void**)& g_io_error_from_errno},
	{ "g_file_monitor_cancel",  cast(void**)& g_file_monitor_cancel},
	{ "g_file_monitor_is_cancelled",  cast(void**)& g_file_monitor_is_cancelled},
	{ "g_file_monitor_set_rate_limit",  cast(void**)& g_file_monitor_set_rate_limit},
	{ "g_file_monitor_emit_event",  cast(void**)& g_file_monitor_emit_event},
	{ "g_cancellable_new",  cast(void**)& g_cancellable_new},
	{ "g_cancellable_is_cancelled",  cast(void**)& g_cancellable_is_cancelled},
	{ "g_cancellable_set_error_if_cancelled",  cast(void**)& g_cancellable_set_error_if_cancelled},
	{ "g_cancellable_get_fd",  cast(void**)& g_cancellable_get_fd},
	{ "g_cancellable_get_current",  cast(void**)& g_cancellable_get_current},
	{ "g_cancellable_pop_current",  cast(void**)& g_cancellable_pop_current},
	{ "g_cancellable_push_current",  cast(void**)& g_cancellable_push_current},
	{ "g_cancellable_reset",  cast(void**)& g_cancellable_reset},
	{ "g_cancellable_cancel",  cast(void**)& g_cancellable_cancel},
	{ "g_async_result_get_user_data",  cast(void**)& g_async_result_get_user_data},
	{ "g_async_result_get_source_object",  cast(void**)& g_async_result_get_source_object},
	{ "g_io_scheduler_push_job",  cast(void**)& g_io_scheduler_push_job},
	{ "g_io_scheduler_cancel_all_jobs",  cast(void**)& g_io_scheduler_cancel_all_jobs},
	{ "g_io_scheduler_job_send_to_mainloop",  cast(void**)& g_io_scheduler_job_send_to_mainloop},
	{ "g_io_scheduler_job_send_to_mainloop_async",  cast(void**)& g_io_scheduler_job_send_to_mainloop_async},
	{ "g_simple_async_result_new",  cast(void**)& g_simple_async_result_new},
	{ "g_simple_async_result_new_error",  cast(void**)& g_simple_async_result_new_error},
	{ "g_simple_async_result_new_from_error",  cast(void**)& g_simple_async_result_new_from_error},
	{ "g_simple_async_result_set_op_res_gpointer",  cast(void**)& g_simple_async_result_set_op_res_gpointer},
	{ "g_simple_async_result_get_op_res_gpointer",  cast(void**)& g_simple_async_result_get_op_res_gpointer},
	{ "g_simple_async_result_set_op_res_gssize",  cast(void**)& g_simple_async_result_set_op_res_gssize},
	{ "g_simple_async_result_get_op_res_gssize",  cast(void**)& g_simple_async_result_get_op_res_gssize},
	{ "g_simple_async_result_set_op_res_gboolean",  cast(void**)& g_simple_async_result_set_op_res_gboolean},
	{ "g_simple_async_result_get_op_res_gboolean",  cast(void**)& g_simple_async_result_get_op_res_gboolean},
	{ "g_simple_async_result_get_source_tag",  cast(void**)& g_simple_async_result_get_source_tag},
	{ "g_simple_async_result_set_handle_cancellation",  cast(void**)& g_simple_async_result_set_handle_cancellation},
	{ "g_simple_async_result_complete",  cast(void**)& g_simple_async_result_complete},
	{ "g_simple_async_result_complete_in_idle",  cast(void**)& g_simple_async_result_complete_in_idle},
	{ "g_simple_async_result_run_in_thread",  cast(void**)& g_simple_async_result_run_in_thread},
	{ "g_simple_async_result_set_from_error",  cast(void**)& g_simple_async_result_set_from_error},
	{ "g_simple_async_result_propagate_error",  cast(void**)& g_simple_async_result_propagate_error},
	{ "g_simple_async_result_set_error",  cast(void**)& g_simple_async_result_set_error},
	{ "g_simple_async_result_set_error_va",  cast(void**)& g_simple_async_result_set_error_va},
	{ "g_simple_async_report_error_in_idle",  cast(void**)& g_simple_async_report_error_in_idle},
	{ "g_simple_async_report_gerror_in_idle",  cast(void**)& g_simple_async_report_gerror_in_idle},
	{ "g_seekable_tell",  cast(void**)& g_seekable_tell},
	{ "g_seekable_can_seek",  cast(void**)& g_seekable_can_seek},
	{ "g_seekable_seek",  cast(void**)& g_seekable_seek},
	{ "g_seekable_can_truncate",  cast(void**)& g_seekable_can_truncate},
	{ "g_seekable_truncate",  cast(void**)& g_seekable_truncate},
	{ "g_input_stream_read",  cast(void**)& g_input_stream_read},
	{ "g_input_stream_read_all",  cast(void**)& g_input_stream_read_all},
	{ "g_input_stream_skip",  cast(void**)& g_input_stream_skip},
	{ "g_input_stream_close",  cast(void**)& g_input_stream_close},
	{ "g_input_stream_read_async",  cast(void**)& g_input_stream_read_async},
	{ "g_input_stream_read_finish",  cast(void**)& g_input_stream_read_finish},
	{ "g_input_stream_skip_async",  cast(void**)& g_input_stream_skip_async},
	{ "g_input_stream_skip_finish",  cast(void**)& g_input_stream_skip_finish},
	{ "g_input_stream_close_async",  cast(void**)& g_input_stream_close_async},
	{ "g_input_stream_close_finish",  cast(void**)& g_input_stream_close_finish},
	{ "g_input_stream_is_closed",  cast(void**)& g_input_stream_is_closed},
	{ "g_input_stream_has_pending",  cast(void**)& g_input_stream_has_pending},
	{ "g_input_stream_set_pending",  cast(void**)& g_input_stream_set_pending},
	{ "g_input_stream_clear_pending",  cast(void**)& g_input_stream_clear_pending},
	{ "g_output_stream_write",  cast(void**)& g_output_stream_write},
	{ "g_output_stream_write_all",  cast(void**)& g_output_stream_write_all},
	{ "g_output_stream_splice",  cast(void**)& g_output_stream_splice},
	{ "g_output_stream_flush",  cast(void**)& g_output_stream_flush},
	{ "g_output_stream_close",  cast(void**)& g_output_stream_close},
	{ "g_output_stream_write_async",  cast(void**)& g_output_stream_write_async},
	{ "g_output_stream_write_finish",  cast(void**)& g_output_stream_write_finish},
	{ "g_output_stream_splice_async",  cast(void**)& g_output_stream_splice_async},
	{ "g_output_stream_splice_finish",  cast(void**)& g_output_stream_splice_finish},
	{ "g_output_stream_flush_async",  cast(void**)& g_output_stream_flush_async},
	{ "g_output_stream_flush_finish",  cast(void**)& g_output_stream_flush_finish},
	{ "g_output_stream_close_async",  cast(void**)& g_output_stream_close_async},
	{ "g_output_stream_close_finish",  cast(void**)& g_output_stream_close_finish},
	{ "g_output_stream_is_closed",  cast(void**)& g_output_stream_is_closed},
	{ "g_output_stream_has_pending",  cast(void**)& g_output_stream_has_pending},
	{ "g_output_stream_set_pending",  cast(void**)& g_output_stream_set_pending},
	{ "g_output_stream_clear_pending",  cast(void**)& g_output_stream_clear_pending},
	{ "g_file_input_stream_query_info",  cast(void**)& g_file_input_stream_query_info},
	{ "g_file_input_stream_query_info_async",  cast(void**)& g_file_input_stream_query_info_async},
	{ "g_file_input_stream_query_info_finish",  cast(void**)& g_file_input_stream_query_info_finish},
	{ "g_file_output_stream_query_info",  cast(void**)& g_file_output_stream_query_info},
	{ "g_file_output_stream_query_info_async",  cast(void**)& g_file_output_stream_query_info_async},
	{ "g_file_output_stream_query_info_finish",  cast(void**)& g_file_output_stream_query_info_finish},
	{ "g_file_output_stream_get_etag",  cast(void**)& g_file_output_stream_get_etag},
	{ "g_filter_input_stream_get_base_stream",  cast(void**)& g_filter_input_stream_get_base_stream},
	{ "g_filter_output_stream_get_base_stream",  cast(void**)& g_filter_output_stream_get_base_stream},
	{ "g_memory_input_stream_new",  cast(void**)& g_memory_input_stream_new},
	{ "g_memory_input_stream_new_from_data",  cast(void**)& g_memory_input_stream_new_from_data},
	{ "g_memory_input_stream_add_data",  cast(void**)& g_memory_input_stream_add_data},
	{ "g_memory_output_stream_new",  cast(void**)& g_memory_output_stream_new},
	{ "g_memory_output_stream_get_data",  cast(void**)& g_memory_output_stream_get_data},
	{ "g_memory_output_stream_get_size",  cast(void**)& g_memory_output_stream_get_size},
	{ "g_memory_output_stream_get_data_size",  cast(void**)& g_memory_output_stream_get_data_size},
	{ "g_buffered_input_stream_new",  cast(void**)& g_buffered_input_stream_new},
	{ "g_buffered_input_stream_new_sized",  cast(void**)& g_buffered_input_stream_new_sized},
	{ "g_buffered_input_stream_get_buffer_size",  cast(void**)& g_buffered_input_stream_get_buffer_size},
	{ "g_buffered_input_stream_set_buffer_size",  cast(void**)& g_buffered_input_stream_set_buffer_size},
	{ "g_buffered_input_stream_get_available",  cast(void**)& g_buffered_input_stream_get_available},
	{ "g_buffered_input_stream_peek_buffer",  cast(void**)& g_buffered_input_stream_peek_buffer},
	{ "g_buffered_input_stream_peek",  cast(void**)& g_buffered_input_stream_peek},
	{ "g_buffered_input_stream_fill",  cast(void**)& g_buffered_input_stream_fill},
	{ "g_buffered_input_stream_fill_async",  cast(void**)& g_buffered_input_stream_fill_async},
	{ "g_buffered_input_stream_fill_finish",  cast(void**)& g_buffered_input_stream_fill_finish},
	{ "g_buffered_input_stream_read_byte",  cast(void**)& g_buffered_input_stream_read_byte},
	{ "g_buffered_output_stream_new",  cast(void**)& g_buffered_output_stream_new},
	{ "g_buffered_output_stream_new_sized",  cast(void**)& g_buffered_output_stream_new_sized},
	{ "g_buffered_output_stream_get_buffer_size",  cast(void**)& g_buffered_output_stream_get_buffer_size},
	{ "g_buffered_output_stream_set_buffer_size",  cast(void**)& g_buffered_output_stream_set_buffer_size},
	{ "g_buffered_output_stream_get_auto_grow",  cast(void**)& g_buffered_output_stream_get_auto_grow},
	{ "g_buffered_output_stream_set_auto_grow",  cast(void**)& g_buffered_output_stream_set_auto_grow},
	{ "g_data_input_stream_new",  cast(void**)& g_data_input_stream_new},
	{ "g_data_input_stream_set_byte_order",  cast(void**)& g_data_input_stream_set_byte_order},
	{ "g_data_input_stream_get_byte_order",  cast(void**)& g_data_input_stream_get_byte_order},
	{ "g_data_input_stream_set_newline_type",  cast(void**)& g_data_input_stream_set_newline_type},
	{ "g_data_input_stream_get_newline_type",  cast(void**)& g_data_input_stream_get_newline_type},
	{ "g_data_input_stream_read_byte",  cast(void**)& g_data_input_stream_read_byte},
	{ "g_data_input_stream_read_int16",  cast(void**)& g_data_input_stream_read_int16},
	{ "g_data_input_stream_read_uint16",  cast(void**)& g_data_input_stream_read_uint16},
	{ "g_data_input_stream_read_int32",  cast(void**)& g_data_input_stream_read_int32},
	{ "g_data_input_stream_read_uint32",  cast(void**)& g_data_input_stream_read_uint32},
	{ "g_data_input_stream_read_int64",  cast(void**)& g_data_input_stream_read_int64},
	{ "g_data_input_stream_read_uint64",  cast(void**)& g_data_input_stream_read_uint64},
	{ "g_data_input_stream_read_line",  cast(void**)& g_data_input_stream_read_line},
	{ "g_data_input_stream_read_until",  cast(void**)& g_data_input_stream_read_until},
	{ "g_data_output_stream_new",  cast(void**)& g_data_output_stream_new},
	{ "g_data_output_stream_set_byte_order",  cast(void**)& g_data_output_stream_set_byte_order},
	{ "g_data_output_stream_get_byte_order",  cast(void**)& g_data_output_stream_get_byte_order},
	{ "g_data_output_stream_put_byte",  cast(void**)& g_data_output_stream_put_byte},
	{ "g_data_output_stream_put_int16",  cast(void**)& g_data_output_stream_put_int16},
	{ "g_data_output_stream_put_uint16",  cast(void**)& g_data_output_stream_put_uint16},
	{ "g_data_output_stream_put_int32",  cast(void**)& g_data_output_stream_put_int32},
	{ "g_data_output_stream_put_uint32",  cast(void**)& g_data_output_stream_put_uint32},
	{ "g_data_output_stream_put_int64",  cast(void**)& g_data_output_stream_put_int64},
	{ "g_data_output_stream_put_uint64",  cast(void**)& g_data_output_stream_put_uint64},
	{ "g_data_output_stream_put_string",  cast(void**)& g_data_output_stream_put_string},
	{ "g_unix_input_stream_new",  cast(void**)& g_unix_input_stream_new},
	{ "g_unix_output_stream_new",  cast(void**)& g_unix_output_stream_new},
	{ "g_content_type_equals",  cast(void**)& g_content_type_equals},
	{ "g_content_type_is_a",  cast(void**)& g_content_type_is_a},
	{ "g_content_type_is_unknown",  cast(void**)& g_content_type_is_unknown},
	{ "g_content_type_get_description",  cast(void**)& g_content_type_get_description},
	{ "g_content_type_get_mime_type",  cast(void**)& g_content_type_get_mime_type},
	{ "g_content_type_get_icon",  cast(void**)& g_content_type_get_icon},
	{ "g_content_type_can_be_executable",  cast(void**)& g_content_type_can_be_executable},
	{ "g_content_type_from_mime_type",  cast(void**)& g_content_type_from_mime_type},
	{ "g_content_type_guess",  cast(void**)& g_content_type_guess},
	{ "g_content_type_guess_for_tree",  cast(void**)& g_content_type_guess_for_tree},
	{ "g_content_types_get_registered",  cast(void**)& g_content_types_get_registered},
	{ "g_app_info_create_from_commandline",  cast(void**)& g_app_info_create_from_commandline},
	{ "g_app_info_dup",  cast(void**)& g_app_info_dup},
	{ "g_app_info_equal",  cast(void**)& g_app_info_equal},
	{ "g_app_info_get_id",  cast(void**)& g_app_info_get_id},
	{ "g_app_info_get_name",  cast(void**)& g_app_info_get_name},
	{ "g_app_info_get_description",  cast(void**)& g_app_info_get_description},
	{ "g_app_info_get_executable",  cast(void**)& g_app_info_get_executable},
	{ "g_app_info_get_icon",  cast(void**)& g_app_info_get_icon},
	{ "g_app_info_launch",  cast(void**)& g_app_info_launch},
	{ "g_app_info_supports_files",  cast(void**)& g_app_info_supports_files},
	{ "g_app_info_supports_uris",  cast(void**)& g_app_info_supports_uris},
	{ "g_app_info_launch_uris",  cast(void**)& g_app_info_launch_uris},
	{ "g_app_info_should_show",  cast(void**)& g_app_info_should_show},
	{ "g_app_info_set_as_default_for_type",  cast(void**)& g_app_info_set_as_default_for_type},
	{ "g_app_info_set_as_default_for_extension",  cast(void**)& g_app_info_set_as_default_for_extension},
	{ "g_app_info_add_supports_type",  cast(void**)& g_app_info_add_supports_type},
	{ "g_app_info_can_remove_supports_type",  cast(void**)& g_app_info_can_remove_supports_type},
	{ "g_app_info_remove_supports_type",  cast(void**)& g_app_info_remove_supports_type},
	{ "g_app_info_get_all",  cast(void**)& g_app_info_get_all},
	{ "g_app_info_get_all_for_type",  cast(void**)& g_app_info_get_all_for_type},
	{ "g_app_info_get_default_for_type",  cast(void**)& g_app_info_get_default_for_type},
	{ "g_app_info_get_default_for_uri_scheme",  cast(void**)& g_app_info_get_default_for_uri_scheme},
	{ "g_app_info_launch_default_for_uri",  cast(void**)& g_app_info_launch_default_for_uri},
	{ "g_desktop_app_info_new_from_filename",  cast(void**)& g_desktop_app_info_new_from_filename},
	{ "g_desktop_app_info_new_from_keyfile",  cast(void**)& g_desktop_app_info_new_from_keyfile},
	{ "g_desktop_app_info_new",  cast(void**)& g_desktop_app_info_new},
	{ "g_desktop_app_info_get_is_hidden",  cast(void**)& g_desktop_app_info_get_is_hidden},
	{ "g_desktop_app_info_set_desktop_env",  cast(void**)& g_desktop_app_info_set_desktop_env},
	{ "g_desktop_app_info_lookup_get_default_for_uri_scheme",  cast(void**)& g_desktop_app_info_lookup_get_default_for_uri_scheme},
	{ "g_volume_monitor_get",  cast(void**)& g_volume_monitor_get},
	{ "g_volume_monitor_get_connected_drives",  cast(void**)& g_volume_monitor_get_connected_drives},
	{ "g_volume_monitor_get_volumes",  cast(void**)& g_volume_monitor_get_volumes},
	{ "g_volume_monitor_get_mounts",  cast(void**)& g_volume_monitor_get_mounts},
	{ "g_volume_monitor_adopt_orphan_mount",  cast(void**)& g_volume_monitor_adopt_orphan_mount},
	{ "g_volume_monitor_get_mount_for_uuid",  cast(void**)& g_volume_monitor_get_mount_for_uuid},
	{ "g_volume_monitor_get_volume_for_uuid",  cast(void**)& g_volume_monitor_get_volume_for_uuid},
	{ "g_volume_get_name",  cast(void**)& g_volume_get_name},
	{ "g_volume_get_uuid",  cast(void**)& g_volume_get_uuid},
	{ "g_volume_get_icon",  cast(void**)& g_volume_get_icon},
	{ "g_volume_get_drive",  cast(void**)& g_volume_get_drive},
	{ "g_volume_get_mount",  cast(void**)& g_volume_get_mount},
	{ "g_volume_can_mount",  cast(void**)& g_volume_can_mount},
	{ "g_volume_should_automount",  cast(void**)& g_volume_should_automount},
	{ "g_volume_get_activation_root",  cast(void**)& g_volume_get_activation_root},
	{ "g_volume_mount",  cast(void**)& g_volume_mount},
	{ "g_volume_mount_finish",  cast(void**)& g_volume_mount_finish},
	{ "g_volume_can_eject",  cast(void**)& g_volume_can_eject},
	{ "g_volume_eject",  cast(void**)& g_volume_eject},
	{ "g_volume_eject_finish",  cast(void**)& g_volume_eject_finish},
	{ "g_volume_enumerate_identifiers",  cast(void**)& g_volume_enumerate_identifiers},
	{ "g_volume_get_identifier",  cast(void**)& g_volume_get_identifier},
	{ "g_mount_get_name",  cast(void**)& g_mount_get_name},
	{ "g_mount_get_uuid",  cast(void**)& g_mount_get_uuid},
	{ "g_mount_get_icon",  cast(void**)& g_mount_get_icon},
	{ "g_mount_get_drive",  cast(void**)& g_mount_get_drive},
	{ "g_mount_get_root",  cast(void**)& g_mount_get_root},
	{ "g_mount_get_volume",  cast(void**)& g_mount_get_volume},
	{ "g_mount_can_unmount",  cast(void**)& g_mount_can_unmount},
	{ "g_mount_unmount",  cast(void**)& g_mount_unmount},
	{ "g_mount_unmount_finish",  cast(void**)& g_mount_unmount_finish},
	{ "g_mount_remount",  cast(void**)& g_mount_remount},
	{ "g_mount_remount_finish",  cast(void**)& g_mount_remount_finish},
	{ "g_mount_can_eject",  cast(void**)& g_mount_can_eject},
	{ "g_mount_eject",  cast(void**)& g_mount_eject},
	{ "g_mount_eject_finish",  cast(void**)& g_mount_eject_finish},
	{ "g_mount_guess_content_type",  cast(void**)& g_mount_guess_content_type},
	{ "g_mount_guess_content_type_finish",  cast(void**)& g_mount_guess_content_type_finish},
	{ "g_mount_guess_content_type_sync",  cast(void**)& g_mount_guess_content_type_sync},
	{ "g_drive_get_name",  cast(void**)& g_drive_get_name},
	{ "g_drive_get_icon",  cast(void**)& g_drive_get_icon},
	{ "g_drive_has_volumes",  cast(void**)& g_drive_has_volumes},
	{ "g_drive_get_volumes",  cast(void**)& g_drive_get_volumes},
	{ "g_drive_can_eject",  cast(void**)& g_drive_can_eject},
	{ "g_drive_can_poll_for_media",  cast(void**)& g_drive_can_poll_for_media},
	{ "g_drive_poll_for_media",  cast(void**)& g_drive_poll_for_media},
	{ "g_drive_poll_for_media_finish",  cast(void**)& g_drive_poll_for_media_finish},
	{ "g_drive_has_media",  cast(void**)& g_drive_has_media},
	{ "g_drive_is_media_check_automatic",  cast(void**)& g_drive_is_media_check_automatic},
	{ "g_drive_is_media_removable",  cast(void**)& g_drive_is_media_removable},
	{ "g_drive_eject",  cast(void**)& g_drive_eject},
	{ "g_drive_eject_finish",  cast(void**)& g_drive_eject_finish},
	{ "g_drive_enumerate_identifiers",  cast(void**)& g_drive_enumerate_identifiers},
	{ "g_drive_get_identifier",  cast(void**)& g_drive_get_identifier},
	{ "g_unix_mount_free",  cast(void**)& g_unix_mount_free},
	{ "g_unix_mount_compare",  cast(void**)& g_unix_mount_compare},
	{ "g_unix_mount_get_mount_path",  cast(void**)& g_unix_mount_get_mount_path},
	{ "g_unix_mount_get_device_path",  cast(void**)& g_unix_mount_get_device_path},
	{ "g_unix_mount_get_fs_type",  cast(void**)& g_unix_mount_get_fs_type},
	{ "g_unix_mount_is_readonly",  cast(void**)& g_unix_mount_is_readonly},
	{ "g_unix_mount_is_system_internal",  cast(void**)& g_unix_mount_is_system_internal},
	{ "g_unix_mount_guess_icon",  cast(void**)& g_unix_mount_guess_icon},
	{ "g_unix_mount_guess_name",  cast(void**)& g_unix_mount_guess_name},
	{ "g_unix_mount_guess_can_eject",  cast(void**)& g_unix_mount_guess_can_eject},
	{ "g_unix_mount_guess_should_display",  cast(void**)& g_unix_mount_guess_should_display},
	{ "g_unix_mount_points_get",  cast(void**)& g_unix_mount_points_get},
	{ "g_unix_mounts_get",  cast(void**)& g_unix_mounts_get},
	{ "g_unix_mount_at",  cast(void**)& g_unix_mount_at},
	{ "g_unix_mounts_changed_since",  cast(void**)& g_unix_mounts_changed_since},
	{ "g_unix_mount_points_changed_since",  cast(void**)& g_unix_mount_points_changed_since},
	{ "g_unix_is_mount_path_system_internal",  cast(void**)& g_unix_is_mount_path_system_internal},
	{ "g_unix_mount_point_free",  cast(void**)& g_unix_mount_point_free},
	{ "g_unix_mount_point_compare",  cast(void**)& g_unix_mount_point_compare},
	{ "g_unix_mount_point_get_mount_path",  cast(void**)& g_unix_mount_point_get_mount_path},
	{ "g_unix_mount_point_get_device_path",  cast(void**)& g_unix_mount_point_get_device_path},
	{ "g_unix_mount_point_get_fs_type",  cast(void**)& g_unix_mount_point_get_fs_type},
	{ "g_unix_mount_point_is_readonly",  cast(void**)& g_unix_mount_point_is_readonly},
	{ "g_unix_mount_point_is_user_mountable",  cast(void**)& g_unix_mount_point_is_user_mountable},
	{ "g_unix_mount_point_is_loopback",  cast(void**)& g_unix_mount_point_is_loopback},
	{ "g_unix_mount_point_guess_icon",  cast(void**)& g_unix_mount_point_guess_icon},
	{ "g_unix_mount_point_guess_name",  cast(void**)& g_unix_mount_point_guess_name},
	{ "g_unix_mount_point_guess_can_eject",  cast(void**)& g_unix_mount_point_guess_can_eject},
	{ "g_unix_mount_monitor_new",  cast(void**)& g_unix_mount_monitor_new},
	{ "g_unix_mount_monitor_set_rate_limit",  cast(void**)& g_unix_mount_monitor_set_rate_limit},
	{ "g_icon_hash",  cast(void**)& g_icon_hash},
	{ "g_icon_equal",  cast(void**)& g_icon_equal},
	{ "g_file_icon_new",  cast(void**)& g_file_icon_new},
	{ "g_file_icon_get_file",  cast(void**)& g_file_icon_get_file},
	{ "g_loadable_icon_load",  cast(void**)& g_loadable_icon_load},
	{ "g_loadable_icon_load_async",  cast(void**)& g_loadable_icon_load_async},
	{ "g_loadable_icon_load_finish",  cast(void**)& g_loadable_icon_load_finish},
	{ "g_themed_icon_new",  cast(void**)& g_themed_icon_new},
	{ "g_themed_icon_new_from_names",  cast(void**)& g_themed_icon_new_from_names},
	{ "g_themed_icon_new_with_default_fallbacks",  cast(void**)& g_themed_icon_new_with_default_fallbacks},
	{ "g_themed_icon_prepend_name",  cast(void**)& g_themed_icon_prepend_name},
	{ "g_themed_icon_append_name",  cast(void**)& g_themed_icon_append_name},
	{ "g_emblemed_icon_new",  cast(void**)& g_emblemed_icon_new},
	{ "g_emblemed_icon_get_icon",  cast(void**)& g_emblemed_icon_get_icon},
	{ "g_emblemed_icon_get_emblems",  cast(void**)& g_emblemed_icon_get_emblems},
	{ "g_emblemed_icon_add_emblem",  cast(void**)& g_emblemed_icon_add_emblem},
	{ "g_emblem_new",  cast(void**)& g_emblem_new},
	{ "g_emblem_new_with_origin",  cast(void**)& g_emblem_new_with_origin},
	{ "g_emblem_get_icon",  cast(void**)& g_emblem_get_icon},
	{ "g_emblem_get_origin",  cast(void**)& g_emblem_get_origin},
	{ "g_filename_completer_new",  cast(void**)& g_filename_completer_new},
	{ "g_filename_completer_get_completion_suffix",  cast(void**)& g_filename_completer_get_completion_suffix},
	{ "g_filename_completer_get_completions",  cast(void**)& g_filename_completer_get_completions},
	{ "g_filename_completer_set_dirs_only",  cast(void**)& g_filename_completer_set_dirs_only},
	{ "g_vfs_get_file_for_path",  cast(void**)& g_vfs_get_file_for_path},
	{ "g_vfs_get_file_for_uri",  cast(void**)& g_vfs_get_file_for_uri},
	{ "g_vfs_parse_name",  cast(void**)& g_vfs_parse_name},
	{ "g_vfs_get_default",  cast(void**)& g_vfs_get_default},
	{ "g_vfs_get_local",  cast(void**)& g_vfs_get_local},
	{ "g_vfs_is_active",  cast(void**)& g_vfs_is_active},
	{ "g_vfs_get_supported_uri_schemes",  cast(void**)& g_vfs_get_supported_uri_schemes},
	{ "g_io_module_new",  cast(void**)& g_io_module_new},
	{ "g_io_modules_load_all_in_directory",  cast(void**)& g_io_modules_load_all_in_directory},
	{ "g_io_module_load",  cast(void**)& g_io_module_load},
	{ "g_io_module_unload",  cast(void**)& g_io_module_unload},
	{ "g_io_extension_get_name",  cast(void**)& g_io_extension_get_name},
	{ "g_io_extension_get_priority",  cast(void**)& g_io_extension_get_priority},
	{ "g_io_extension_get_type",  cast(void**)& g_io_extension_get_type},
	{ "g_io_extension_ref_class",  cast(void**)& g_io_extension_ref_class},
	{ "g_io_extension_point_get_extension_by_name",  cast(void**)& g_io_extension_point_get_extension_by_name},
	{ "g_io_extension_point_get_extensions",  cast(void**)& g_io_extension_point_get_extensions},
	{ "g_io_extension_point_get_required_type",  cast(void**)& g_io_extension_point_get_required_type},
	{ "g_io_extension_point_implement",  cast(void**)& g_io_extension_point_implement},
	{ "g_io_extension_point_lookup",  cast(void**)& g_io_extension_point_lookup},
	{ "g_io_extension_point_register",  cast(void**)& g_io_extension_point_register},
	{ "g_io_extension_point_set_required_type",  cast(void**)& g_io_extension_point_set_required_type},

];