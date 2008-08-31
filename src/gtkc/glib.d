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


module gtkc.glib;

version(Tango)
{
	private import tango.stdc.stdio;
	debug private import tango.io.Stdout;
}
else
	private import std.stdio;

private import gtkc.glibtypes;
private import gtkc.gthreadtypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker glib_Linker;

static this()
{
 glib_Linker = new Linker(libPath ~ importLibs[LIBRARY.GLIB] );
 glib_Linker.link(glibLinks);

 debug
 {
 	version(Tango) Stdout("* Finished static this(): glib").newline;
 	else writefln("* Finished static this(): glib");
 }
}

static ~this()
{
 delete glib_Linker;

 debug
 {
 	version(Tango) Stdout("* Finished static ~this(): glib").newline;
 	else writefln("* Finished static ~this(): glib");
 }
}

extern(C) 
{	
	// glib.Version
	
	gchar* function(guint requiredMajor, guint requiredMinor, guint requiredMicro)glib_check_version;
	
	// glib.Atomic
	
	gint function(gint* atomic)g_atomic_int_get;
	void function(gint* atomic, gint newval)g_atomic_int_set;
	void function(gint* atomic, gint val)g_atomic_int_add;
	gint function(gint* atomic, gint val)g_atomic_int_exchange_and_add;
	gboolean function(gint* atomic, gint oldval, gint newval)g_atomic_int_compare_and_exchange;
	gpointer function(gpointer* atomic)g_atomic_pointer_get;
	void function(gpointer* atomic, gpointer newval)g_atomic_pointer_set;
	gboolean function(gpointer* atomic, gpointer oldval, gpointer newval)g_atomic_pointer_compare_and_exchange;
	void function(gint* atomic)g_atomic_int_inc;
	gboolean function(gint* atomic)g_atomic_int_dec_and_test;
	
	// glib.MainLoop
	
	GMainLoop* function(GMainContext* context, gboolean isRunning)g_main_loop_new;
	GMainLoop* function(GMainLoop* loop)g_main_loop_ref;
	void function(GMainLoop* loop)g_main_loop_unref;
	void function(GMainLoop* loop)g_main_loop_run;
	void function(GMainLoop* loop)g_main_loop_quit;
	gboolean function(GMainLoop* loop)g_main_loop_is_running;
	GMainContext* function(GMainLoop* loop)g_main_loop_get_context;
	gint function()g_main_depth;
	GSource* function()g_main_current_source;
	
	// glib.MainContext
	
	GMainContext* function()g_main_context_new;
	GMainContext* function(GMainContext* context)g_main_context_ref;
	void function(GMainContext* context)g_main_context_unref;
	GMainContext* function()g_main_context_default;
	gboolean function(GMainContext* context, gboolean mayBlock)g_main_context_iteration;
	gboolean function(GMainContext* context)g_main_context_pending;
	GSource* function(GMainContext* context, guint sourceId)g_main_context_find_source_by_id;
	GSource* function(GMainContext* context, gpointer userData)g_main_context_find_source_by_user_data;
	GSource* function(GMainContext* context, GSourceFuncs* funcs, gpointer userData)g_main_context_find_source_by_funcs_user_data;
	void function(GMainContext* context)g_main_context_wakeup;
	gboolean function(GMainContext* context)g_main_context_acquire;
	void function(GMainContext* context)g_main_context_release;
	gboolean function(GMainContext* context)g_main_context_is_owner;
	gboolean function(GMainContext* context, GCond* cond, GMutex* mutex)g_main_context_wait;
	gboolean function(GMainContext* context, gint* priority)g_main_context_prepare;
	gint function(GMainContext* context, gint maxPriority, gint* timeout, GPollFD* fds, gint nFds)g_main_context_query;
	gint function(GMainContext* context, gint maxPriority, GPollFD* fds, gint nFds)g_main_context_check;
	void function(GMainContext* context)g_main_context_dispatch;
	void function(GMainContext* context, GPollFunc func)g_main_context_set_poll_func;
	GPollFunc function(GMainContext* context)g_main_context_get_poll_func;
	void function(GMainContext* context, GPollFD* fd, gint priority)g_main_context_add_poll;
	void function(GMainContext* context, GPollFD* fd)g_main_context_remove_poll;
	
	// glib.Timeout
	
	GSource* function(guint interval)g_timeout_source_new;
	GSource* function(guint interval)g_timeout_source_new_seconds;
	guint function(guint interval, GSourceFunc funct, gpointer data)g_timeout_add;
	guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify)g_timeout_add_full;
	guint function(guint interval, GSourceFunc funct, gpointer data)g_timeout_add_seconds;
	guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify)g_timeout_add_seconds_full;
	
	// glib.Idle
	
	GSource* function()g_idle_source_new;
	guint function(GSourceFunc funct, gpointer data)g_idle_add;
	guint function(gint priority, GSourceFunc funct, gpointer data, GDestroyNotify notify)g_idle_add_full;
	gboolean function(gpointer data)g_idle_remove_by_data;
	
	// glib.Child
	
	GSource* function(GPid pid)g_child_watch_source_new;
	guint function(GPid pid, GChildWatchFunc funct, gpointer data)g_child_watch_add;
	guint function(gint priority, GPid pid, GChildWatchFunc funct, gpointer data, GDestroyNotify notify)g_child_watch_add_full;
	
	// glib.Source
	
	GSource* function(GSourceFuncs* sourceFuncs, guint structSize)g_source_new;
	GSource* function(GSource* source)g_source_ref;
	void function(GSource* source)g_source_unref;
	void function(GSource* source, GSourceFuncs* funcs)g_source_set_funcs;
	guint function(GSource* source, GMainContext* context)g_source_attach;
	void function(GSource* source)g_source_destroy;
	gboolean function(GSource* source)g_source_is_destroyed;
	void function(GSource* source, gint priority)g_source_set_priority;
	gint function(GSource* source)g_source_get_priority;
	void function(GSource* source, gboolean canRecurse)g_source_set_can_recurse;
	gboolean function(GSource* source)g_source_get_can_recurse;
	guint function(GSource* source)g_source_get_id;
	GMainContext* function(GSource* source)g_source_get_context;
	void function(GSource* source, GSourceFunc func, gpointer data, GDestroyNotify notify)g_source_set_callback;
	void function(GSource* source, gpointer callbackData, GSourceCallbackFuncs* callbackFuncs)g_source_set_callback_indirect;
	void function(GSource* source, GPollFD* fd)g_source_add_poll;
	void function(GSource* source, GPollFD* fd)g_source_remove_poll;
	void function(GSource* source, GTimeVal* timeval)g_source_get_current_time;
	gboolean function(guint tag)g_source_remove;
	gboolean function(GSourceFuncs* funcs, gpointer userData)g_source_remove_by_funcs_user_data;
	gboolean function(gpointer userData)g_source_remove_by_user_data;
	
	// glib.ThreadPool
	
	GThreadPool* function(GFunc func, gpointer userData, gint maxThreads, gboolean exclusive, GError** error)g_thread_pool_new;
	void function(GThreadPool* pool, gpointer data, GError** error)g_thread_pool_push;
	void function(GThreadPool* pool, gint maxThreads, GError** error)g_thread_pool_set_max_threads;
	gint function(GThreadPool* pool)g_thread_pool_get_max_threads;
	guint function(GThreadPool* pool)g_thread_pool_get_num_threads;
	guint function(GThreadPool* pool)g_thread_pool_unprocessed;
	void function(GThreadPool* pool, gboolean immediate, gboolean wait)g_thread_pool_free;
	void function(gint maxThreads)g_thread_pool_set_max_unused_threads;
	gint function()g_thread_pool_get_max_unused_threads;
	guint function()g_thread_pool_get_num_unused_threads;
	void function()g_thread_pool_stop_unused_threads;
	void function(GThreadPool* pool, GCompareDataFunc func, gpointer userData)g_thread_pool_set_sort_function;
	void function(guint interval)g_thread_pool_set_max_idle_time;
	guint function()g_thread_pool_get_max_idle_time;
	
	// glib.AsyncQueue
	
	GAsyncQueue* function()g_async_queue_new;
	GAsyncQueue* function(GDestroyNotify itemFreeFunc)g_async_queue_new_full;
	GAsyncQueue* function(GAsyncQueue* queue)g_async_queue_ref;
	void function(GAsyncQueue* queue)g_async_queue_unref;
	void function(GAsyncQueue* queue, gpointer data)g_async_queue_push;
	void function(GAsyncQueue* queue, gpointer data, GCompareDataFunc func, gpointer userData)g_async_queue_push_sorted;
	gpointer function(GAsyncQueue* queue)g_async_queue_pop;
	gpointer function(GAsyncQueue* queue)g_async_queue_try_pop;
	gpointer function(GAsyncQueue* queue, GTimeVal* endTime)g_async_queue_timed_pop;
	gint function(GAsyncQueue* queue)g_async_queue_length;
	void function(GAsyncQueue* queue, GCompareDataFunc func, gpointer userData)g_async_queue_sort;
	void function(GAsyncQueue* queue)g_async_queue_lock;
	void function(GAsyncQueue* queue)g_async_queue_unlock;
	void function(GAsyncQueue* queue)g_async_queue_ref_unlocked;
	void function(GAsyncQueue* queue)g_async_queue_unref_and_unlock;
	void function(GAsyncQueue* queue, gpointer data)g_async_queue_push_unlocked;
	void function(GAsyncQueue* queue, gpointer data, GCompareDataFunc func, gpointer userData)g_async_queue_push_sorted_unlocked;
	gpointer function(GAsyncQueue* queue)g_async_queue_pop_unlocked;
	gpointer function(GAsyncQueue* queue)g_async_queue_try_pop_unlocked;
	gpointer function(GAsyncQueue* queue, GTimeVal* endTime)g_async_queue_timed_pop_unlocked;
	gint function(GAsyncQueue* queue)g_async_queue_length_unlocked;
	void function(GAsyncQueue* queue, GCompareDataFunc func, gpointer userData)g_async_queue_sort_unlocked;
	
	// glib.Module
	
	gboolean function()g_module_supported;
	gchar* function(gchar* directory, gchar* moduleName)g_module_build_path;
	GModule* function(gchar* fileName, GModuleFlags flags)g_module_open;
	gboolean function(GModule* modul, gchar* symbolName, gpointer* symbol)g_module_symbol;
	gchar* function(GModule* modul)g_module_name;
	void function(GModule* modul)g_module_make_resident;
	gboolean function(GModule* modul)g_module_close;
	gchar* function()g_module_error;
	
	// glib.Memory
	
	gpointer function(gsize nBytes)g_malloc;
	gpointer function(gsize nBytes)g_malloc0;
	gpointer function(gpointer mem, gsize nBytes)g_realloc;
	gpointer function(gsize nBytes)g_try_malloc;
	gpointer function(gsize nBytes)g_try_malloc0;
	gpointer function(gpointer mem, gsize nBytes)g_try_realloc;
	void function(gpointer mem)g_free;
	gpointer function(gconstpointer mem, guint byteSize)g_memdup;
	void function(GMemVTable* vtable)g_mem_set_vtable;
	gboolean function()g_mem_is_system_malloc;
	void function()g_mem_profile;
	
	// glib.IOChannel
	
	GIOChannel* function(int fd)g_io_channel_unix_new;
	gint function(GIOChannel* channel)g_io_channel_unix_get_fd;
	GIOChannel* function(gint fd)g_io_channel_win32_new_fd;
	GIOChannel* function(gint socket)g_io_channel_win32_new_socket;
	GIOChannel* function(guint hwnd)g_io_channel_win32_new_messages;
	void function(GIOChannel* channel)g_io_channel_init;
	GIOChannel* function(gchar* filename, gchar* mode, GError** error)g_io_channel_new_file;
	GIOStatus function(GIOChannel* channel, gchar* buf, gsize count, gsize* bytesRead, GError** error)g_io_channel_read_chars;
	GIOStatus function(GIOChannel* channel, gunichar* thechar, GError** error)g_io_channel_read_unichar;
	GIOStatus function(GIOChannel* channel, gchar** strReturn, gsize* length, gsize* terminatorPos, GError** error)g_io_channel_read_line;
	GIOStatus function(GIOChannel* channel, GString* buffer, gsize* terminatorPos, GError** error)g_io_channel_read_line_string;
	GIOStatus function(GIOChannel* channel, gchar** strReturn, gsize* length, GError** error)g_io_channel_read_to_end;
	GIOStatus function(GIOChannel* channel, gchar* buf, gssize count, gsize* bytesWritten, GError** error)g_io_channel_write_chars;
	GIOStatus function(GIOChannel* channel, gunichar thechar, GError** error)g_io_channel_write_unichar;
	GIOStatus function(GIOChannel* channel, GError** error)g_io_channel_flush;
	GIOStatus function(GIOChannel* channel, gint64 offset, GSeekType type, GError** error)g_io_channel_seek_position;
	GIOStatus function(GIOChannel* channel, gboolean flush, GError** err)g_io_channel_shutdown;
	GIOChannelError function(gint en)g_io_channel_error_from_errno;
	GIOChannel* function(GIOChannel* channel)g_io_channel_ref;
	void function(GIOChannel* channel)g_io_channel_unref;
	GSource* function(GIOChannel* channel, GIOCondition condition)g_io_create_watch;
	guint function(GIOChannel* channel, GIOCondition condition, GIOFunc func, gpointer userData)g_io_add_watch;
	guint function(GIOChannel* channel, gint priority, GIOCondition condition, GIOFunc func, gpointer userData, GDestroyNotify notify)g_io_add_watch_full;
	gsize function(GIOChannel* channel)g_io_channel_get_buffer_size;
	void function(GIOChannel* channel, gsize size)g_io_channel_set_buffer_size;
	GIOCondition function(GIOChannel* channel)g_io_channel_get_buffer_condition;
	GIOFlags function(GIOChannel* channel)g_io_channel_get_flags;
	GIOStatus function(GIOChannel* channel, GIOFlags flags, GError** error)g_io_channel_set_flags;
	gchar* function(GIOChannel* channel, gint* length)g_io_channel_get_line_term;
	void function(GIOChannel* channel, gchar* lineTerm, gint length)g_io_channel_set_line_term;
	gboolean function(GIOChannel* channel)g_io_channel_get_buffered;
	void function(GIOChannel* channel, gboolean buffered)g_io_channel_set_buffered;
	gchar* function(GIOChannel* channel)g_io_channel_get_encoding;
	GIOStatus function(GIOChannel* channel, gchar* encoding, GError** error)g_io_channel_set_encoding;
	gboolean function(GIOChannel* channel)g_io_channel_get_close_on_unref;
	void function(GIOChannel* channel, gboolean doClose)g_io_channel_set_close_on_unref;
	GIOError function(GIOChannel* channel, gchar* buf, gsize count, gsize* bytesRead)g_io_channel_read;
	GIOError function(GIOChannel* channel, gchar* buf, gsize count, gsize* bytesWritten)g_io_channel_write;
	GIOError function(GIOChannel* channel, gint64 offset, GSeekType type)g_io_channel_seek;
	void function(GIOChannel* channel)g_io_channel_close;
	
	// glib.ErrorG
	
	GError* function(GQuark domain, gint code, gchar* format, ... )g_error_new;
	GError* function(GQuark domain, gint code, gchar* message)g_error_new_literal;
	void function(GError* error)g_error_free;
	GError* function(GError* error)g_error_copy;
	gboolean function(GError* error, GQuark domain, gint code)g_error_matches;
	void function(GError** err, GQuark domain, gint code, gchar* format, ... )g_set_error;
	void function(GError** dest, GError* src)g_propagate_error;
	void function(GError** err)g_clear_error;
	void function(GError** err, gchar* format, ... )g_prefix_error;
	void function(GError** dest, GError* src, gchar* format, ... )g_propagate_prefixed_error;
	
	// glib.
	
	
	// glib.
	
	
	// glib.Messages
	
	void function(gchar* format, ... )g_print;
	GPrintFunc function(GPrintFunc func)g_set_print_handler;
	void function(gchar* format, ... )g_printerr;
	GPrintFunc function(GPrintFunc func)g_set_printerr_handler;
	void function(char* domain, char* file, int line, char* func, char* warnexpr)g_warn_message;
	void function(gchar* prgName)g_on_error_query;
	void function(gchar* prgName)g_on_error_stack_trace;
	
	// glib.MessageLog
	
	void function(gchar* logDomain, GLogLevelFlags logLevel, gchar* format, ... )g_log;
	void function(gchar* logDomain, GLogLevelFlags logLevel, gchar* format, va_list args)g_logv;
	guint function(gchar* logDomain, GLogLevelFlags logLevels, GLogFunc logFunc, gpointer userData)g_log_set_handler;
	void function(gchar* logDomain, guint handlerId)g_log_remove_handler;
	GLogLevelFlags function(GLogLevelFlags fatalMask)g_log_set_always_fatal;
	GLogLevelFlags function(gchar* logDomain, GLogLevelFlags fatalMask)g_log_set_fatal_mask;
	void function(gchar* logDomain, GLogLevelFlags logLevel, gchar* message, gpointer unusedData)g_log_default_handler;
	GLogFunc function(GLogFunc logFunc, gpointer userData)g_log_set_default_handler;
	
	// glib.Str
	
	gchar* function(gchar* str)g_strdup;
	gchar* function(gchar* str, gsize n)g_strndup;
	gchar** function(gchar** strArray)g_strdupv;
	gchar* function(gsize length, gchar fillChar)g_strnfill;
	gchar* function(gchar* dest, char* src)g_stpcpy;
	gchar* function(gchar* haystack, gssize haystackLen, gchar* needle)g_strstr_len;
	gchar* function(gchar* haystack, gchar* needle)g_strrstr;
	gchar* function(gchar* haystack, gssize haystackLen, gchar* needle)g_strrstr_len;
	gboolean function(gchar* str, gchar* prefix)g_str_has_prefix;
	gboolean function(gchar* str, gchar* suffix)g_str_has_suffix;
	gsize function(gchar* dest, gchar* src, gsize destSize)g_strlcpy;
	gsize function(gchar* dest, gchar* src, gsize destSize)g_strlcat;
	gchar* function(gchar* format, ... )g_strdup_printf;
	gchar* function(gchar* format, va_list args)g_strdup_vprintf;
	gint function(gchar* format, ... )g_printf;
	gint function(gchar* format, va_list args)g_vprintf;
	gint function(FILE* file, gchar* format, ... )g_fprintf;
	gint function(FILE* file, gchar* format, va_list args)g_vfprintf;
	gint function(gchar* string, gchar* format, ... )g_sprintf;
	gint function(gchar* string, gchar* format, va_list args)g_vsprintf;
	gint function(gchar* string, gulong n, gchar* format, ... )g_snprintf;
	gint function(gchar* string, gulong n, gchar* format, va_list args)g_vsnprintf;
	gint function(gchar** string, gchar* format, va_list args)g_vasprintf;
	gsize function(gchar* format, va_list args)g_printf_string_upper_bound;
	gboolean function(gchar c)g_ascii_isalnum;
	gboolean function(gchar c)g_ascii_isalpha;
	gboolean function(gchar c)g_ascii_iscntrl;
	gboolean function(gchar c)g_ascii_isdigit;
	gboolean function(gchar c)g_ascii_isgraph;
	gboolean function(gchar c)g_ascii_islower;
	gboolean function(gchar c)g_ascii_isprint;
	gboolean function(gchar c)g_ascii_ispunct;
	gboolean function(gchar c)g_ascii_isspace;
	gboolean function(gchar c)g_ascii_isupper;
	gboolean function(gchar c)g_ascii_isxdigit;
	gint function(gchar c)g_ascii_digit_value;
	gint function(gchar c)g_ascii_xdigit_value;
	gint function(gchar* s1, gchar* s2)g_ascii_strcasecmp;
	gint function(gchar* s1, gchar* s2, gsize n)g_ascii_strncasecmp;
	gchar* function(gchar* str, gssize len)g_ascii_strup;
	gchar* function(gchar* str, gssize len)g_ascii_strdown;
	gchar function(gchar c)g_ascii_tolower;
	gchar function(gchar c)g_ascii_toupper;
	GString* function(GString* string)g_string_ascii_up;
	GString* function(GString* string)g_string_ascii_down;
	gchar* function(gchar* string)g_strup;
	gchar* function(gchar* string)g_strdown;
	gint function(gchar* s1, gchar* s2)g_strcasecmp;
	gint function(gchar* s1, gchar* s2, guint n)g_strncasecmp;
	gchar* function(gchar* string)g_strreverse;
	gint64 function(gchar* nptr, gchar** endptr, guint base)g_ascii_strtoll;
	guint64 function(gchar* nptr, gchar** endptr, guint base)g_ascii_strtoull;
	gdouble function(gchar* nptr, gchar** endptr)g_ascii_strtod;
	gchar* function(gchar* buffer, gint bufLen, gdouble d)g_ascii_dtostr;
	gchar* function(gchar* buffer, gint bufLen, gchar* format, gdouble d)g_ascii_formatd;
	gdouble function(gchar* nptr, gchar** endptr)g_strtod;
	gchar* function(gchar* string)g_strchug;
	gchar* function(gchar* string)g_strchomp;
	gchar* function(gchar* string, gchar* delimiters, gchar newDelimiter)g_strdelimit;
	gchar* function(gchar* source, gchar* exceptions)g_strescape;
	gchar* function(gchar* source)g_strcompress;
	gchar* function(gchar* string, gchar* validChars, gchar substitutor)g_strcanon;
	gchar** function(gchar* string, gchar* delimiter, gint maxTokens)g_strsplit;
	gchar** function(gchar* string, gchar* delimiters, gint maxTokens)g_strsplit_set;
	void function(gchar** strArray)g_strfreev;
	gchar* function(gchar* string1, ... )g_strconcat;
	gchar* function(gchar* separator, ... )g_strjoin;
	gchar* function(gchar* separator, gchar** strArray)g_strjoinv;
	guint function(gchar** strArray)g_strv_length;
	gchar* function(gint errnum)g_strerror;
	gchar* function(gint signum)g_strsignal;
	
	// glib.CharacterSet
	
	gchar* function(gchar* str, gssize len, gchar* toCodeset, gchar* fromCodeset, gsize* bytesRead, gsize* bytesWritten, GError** error)g_convert;
	gchar* function(gchar* str, gssize len, gchar* toCodeset, gchar* fromCodeset, gchar* fallback, gsize* bytesRead, gsize* bytesWritten, GError** error)g_convert_with_fallback;
	gchar* function(gchar* opsysstring, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error)g_locale_to_utf8;
	gchar* function(gchar* opsysstring, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error)g_filename_to_utf8;
	gchar* function(gchar* utf8string, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error)g_filename_from_utf8;
	gchar* function(gchar* uri, gchar** hostname, GError** error)g_filename_from_uri;
	gchar* function(gchar* filename, gchar* hostname, GError** error)g_filename_to_uri;
	gboolean function(gchar*** charsets)g_get_filename_charsets;
	gchar* function(gchar* filename)g_filename_display_name;
	gchar* function(gchar* filename)g_filename_display_basename;
	gchar** function(gchar* uriList)g_uri_list_extract_uris;
	gchar* function(gchar* utf8string, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error)g_locale_from_utf8;
	gboolean function(char** charset)g_get_charset;
	
	// glib.Unicode
	
	gboolean function(gunichar ch)g_unichar_validate;
	gboolean function(gunichar c)g_unichar_isalnum;
	gboolean function(gunichar c)g_unichar_isalpha;
	gboolean function(gunichar c)g_unichar_iscntrl;
	gboolean function(gunichar c)g_unichar_isdefined;
	gboolean function(gunichar c)g_unichar_isdigit;
	gboolean function(gunichar c)g_unichar_isgraph;
	gboolean function(gunichar c)g_unichar_islower;
	gboolean function(gunichar c)g_unichar_ismark;
	gboolean function(gunichar c)g_unichar_isprint;
	gboolean function(gunichar c)g_unichar_ispunct;
	gboolean function(gunichar c)g_unichar_isspace;
	gboolean function(gunichar c)g_unichar_istitle;
	gboolean function(gunichar c)g_unichar_isupper;
	gboolean function(gunichar c)g_unichar_isxdigit;
	gboolean function(gunichar c)g_unichar_iswide;
	gboolean function(gunichar c)g_unichar_iswide_cjk;
	gboolean function(gunichar c)g_unichar_iszerowidth;
	gunichar function(gunichar c)g_unichar_toupper;
	gunichar function(gunichar c)g_unichar_tolower;
	gunichar function(gunichar c)g_unichar_totitle;
	gint function(gunichar c)g_unichar_digit_value;
	gint function(gunichar c)g_unichar_xdigit_value;
	GUnicodeType function(gunichar c)g_unichar_type;
	GUnicodeBreakType function(gunichar c)g_unichar_break_type;
	gint function(gunichar uc)g_unichar_combining_class;
	void function(gunichar* string, gsize len)g_unicode_canonical_ordering;
	gunichar* function(gunichar ch, gsize* resultLen)g_unicode_canonical_decomposition;
	gboolean function(gunichar ch, gunichar* mirroredCh)g_unichar_get_mirror_char;
	GUnicodeScript function(gunichar ch)g_unichar_get_script;
	gunichar function(gchar* p)g_utf8_get_char;
	gunichar function(gchar* p, gssize maxLen)g_utf8_get_char_validated;
	gchar* function(gchar* str, glong offset)g_utf8_offset_to_pointer;
	glong function(gchar* str, gchar* pos)g_utf8_pointer_to_offset;
	gchar* function(gchar* p)g_utf8_prev_char;
	gchar* function(gchar* p, gchar* end)g_utf8_find_next_char;
	gchar* function(gchar* str, gchar* p)g_utf8_find_prev_char;
	glong function(gchar* p, gssize max)g_utf8_strlen;
	gchar* function(gchar* dest, gchar* src, gsize n)g_utf8_strncpy;
	gchar* function(gchar* p, gssize len, gunichar c)g_utf8_strchr;
	gchar* function(gchar* p, gssize len, gunichar c)g_utf8_strrchr;
	gchar* function(gchar* str, gssize len)g_utf8_strreverse;
	gboolean function(gchar* str, gssize maxLen, gchar** end)g_utf8_validate;
	gchar* function(gchar* str, gssize len)g_utf8_strup;
	gchar* function(gchar* str, gssize len)g_utf8_strdown;
	gchar* function(gchar* str, gssize len)g_utf8_casefold;
	gchar* function(gchar* str, gssize len, GNormalizeMode mode)g_utf8_normalize;
	gint function(gchar* str1, gchar* str2)g_utf8_collate;
	gchar* function(gchar* str, gssize len)g_utf8_collate_key;
	gchar* function(gchar* str, gssize len)g_utf8_collate_key_for_filename;
	gunichar2* function(gchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error)g_utf8_to_utf16;
	gunichar* function(gchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error)g_utf8_to_ucs4;
	gunichar* function(gchar* str, glong len, glong* itemsWritten)g_utf8_to_ucs4_fast;
	gunichar* function(gunichar2* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error)g_utf16_to_ucs4;
	gchar* function(gunichar2* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error)g_utf16_to_utf8;
	gunichar2* function(gunichar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error)g_ucs4_to_utf16;
	gchar* function(gunichar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error)g_ucs4_to_utf8;
	gint function(gunichar c, gchar* outbuf)g_unichar_to_utf8;
	
	// glib.Base64
	
	gsize function(guchar* inn, gsize len, gboolean breakLines, gchar* f_out, gint* state, gint* save)g_base64_encode_step;
	gsize function(gboolean breakLines, gchar* f_out, gint* state, gint* save)g_base64_encode_close;
	gchar* function(guchar* data, gsize len)g_base64_encode;
	gsize function(gchar* inn, gsize len, guchar* f_out, gint* state, guint* save)g_base64_decode_step;
	guchar* function(gchar* text, gsize* outLen)g_base64_decode;
	
	// glib.Checksum
	
	gssize function(GChecksumType checksumType)g_checksum_type_get_length;
	GChecksum* function(GChecksumType checksumType)g_checksum_new;
	GChecksum* function(GChecksum* checksum)g_checksum_copy;
	void function(GChecksum* checksum)g_checksum_free;
	void function(GChecksum* checksum, guchar* data, gssize length)g_checksum_update;
	gchar* function(GChecksum* checksum)g_checksum_get_string;
	void function(GChecksum* checksum, guint8* buffer, gsize* digestLen)g_checksum_get_digest;
	gchar* function(GChecksumType checksumType, guchar* data, gsize length)g_compute_checksum_for_data;
	gchar* function(GChecksumType checksumType, gchar* str, gssize length)g_compute_checksum_for_string;
	
	// glib.Internationalization
	
	gchar* function(gchar* msgid, gchar* msgval)g_strip_context;
	gchar* function(gchar* domain, gchar* msgctxtid, gsize msgidoffset)g_dpgettext;
	gchar** function()g_get_language_names;
	
	// glib.TimeVal
	
	void function(GTimeVal* result)g_get_current_time;
	void function(gulong microseconds)g_usleep;
	void function(GTimeVal* time, glong microseconds)g_time_val_add;
	gboolean function(gchar* isoDate, GTimeVal* time)g_time_val_from_iso8601;
	gchar* function(GTimeVal* time)g_time_val_to_iso8601;
	
	// glib.Date
	
	GDate* function()g_date_new;
	GDate* function(GDateDay day, GDateMonth month, GDateYear year)g_date_new_dmy;
	GDate* function(guint32 julianDay)g_date_new_julian;
	void function(GDate* date, guint nDates)g_date_clear;
	void function(GDate* date)g_date_free;
	void function(GDate* date, GDateDay day)g_date_set_day;
	void function(GDate* date, GDateMonth month)g_date_set_month;
	void function(GDate* date, GDateYear year)g_date_set_year;
	void function(GDate* date, GDateDay day, GDateMonth month, GDateYear y)g_date_set_dmy;
	void function(GDate* date, guint32 julianDate)g_date_set_julian;
	void function(GDate* date, GTime time)g_date_set_time;
	void function(GDate* date, time_t timet)g_date_set_time_t;
	void function(GDate* date, GTimeVal* timeval)g_date_set_time_val;
	void function(GDate* date, gchar* str)g_date_set_parse;
	void function(GDate* date, guint nDays)g_date_add_days;
	void function(GDate* date, guint nDays)g_date_subtract_days;
	void function(GDate* date, guint nMonths)g_date_add_months;
	void function(GDate* date, guint nMonths)g_date_subtract_months;
	void function(GDate* date, guint nYears)g_date_add_years;
	void function(GDate* date, guint nYears)g_date_subtract_years;
	gint function(GDate* date1, GDate* date2)g_date_days_between;
	gint function(GDate* lhs, GDate* rhs)g_date_compare;
	void function(GDate* date, GDate* minDate, GDate* maxDate)g_date_clamp;
	void function(GDate* date1, GDate* date2)g_date_order;
	GDateDay function(GDate* date)g_date_get_day;
	GDateMonth function(GDate* date)g_date_get_month;
	GDateYear function(GDate* date)g_date_get_year;
	guint32 function(GDate* date)g_date_get_julian;
	GDateWeekday function(GDate* date)g_date_get_weekday;
	guint function(GDate* date)g_date_get_day_of_year;
	guint8 function(GDateMonth month, GDateYear year)g_date_get_days_in_month;
	gboolean function(GDate* date)g_date_is_first_of_month;
	gboolean function(GDate* date)g_date_is_last_of_month;
	gboolean function(GDateYear year)g_date_is_leap_year;
	guint function(GDate* date)g_date_get_monday_week_of_year;
	guint8 function(GDateYear year)g_date_get_monday_weeks_in_year;
	guint function(GDate* date)g_date_get_sunday_week_of_year;
	guint8 function(GDateYear year)g_date_get_sunday_weeks_in_year;
	guint function(GDate* date)g_date_get_iso8601_week_of_year;
	gsize function(gchar* s, gsize slen, gchar* format, GDate* date)g_date_strftime;
	void function(GDate* date, void* tm)g_date_to_struct_tm;
	gboolean function(GDate* date)g_date_valid;
	gboolean function(GDateDay day)g_date_valid_day;
	gboolean function(GDateMonth month)g_date_valid_month;
	gboolean function(GDateYear year)g_date_valid_year;
	gboolean function(GDateDay day, GDateMonth month, GDateYear year)g_date_valid_dmy;
	gboolean function(guint32 julianDate)g_date_valid_julian;
	gboolean function(GDateWeekday weekday)g_date_valid_weekday;
	
	// glib.RandG
	
	GRand* function(guint32 seed)g_rand_new_with_seed;
	GRand* function(guint32* seed, guint seedLength)g_rand_new_with_seed_array;
	GRand* function()g_rand_new;
	GRand* function(GRand* rand)g_rand_copy;
	void function(GRand* rand)g_rand_free;
	void function(GRand* rand, guint32 seed)g_rand_set_seed;
	void function(GRand* rand, guint32* seed, guint seedLength)g_rand_set_seed_array;
	guint32 function(GRand* rand)g_rand_int;
	gint32 function(GRand* rand, gint32 begin, gint32 end)g_rand_int_range;
	gdouble function(GRand* rand)g_rand_double;
	gdouble function(GRand* rand, gdouble begin, gdouble end)g_rand_double_range;
	void function(guint32 seed)g_random_set_seed;
	guint32 function()g_random_int;
	gint32 function(gint32 begin, gint32 end)g_random_int_range;
	gdouble function()g_random_double;
	gdouble function(gdouble begin, gdouble end)g_random_double_range;
	
	// glib.Util
	
	gchar* function()g_get_application_name;
	void function(gchar* applicationName)g_set_application_name;
	gchar* function()g_get_prgname;
	void function(gchar* prgname)g_set_prgname;
	gchar* function(gchar* variable)g_getenv;
	gboolean function(gchar* variable, gchar* value, gboolean overwrite)g_setenv;
	void function(gchar* variable)g_unsetenv;
	gchar** function()g_listenv;
	gchar* function()g_get_user_name;
	gchar* function()g_get_real_name;
	gchar* function()g_get_user_cache_dir;
	gchar* function()g_get_user_data_dir;
	gchar* function()g_get_user_config_dir;
	gchar* function(GUserDirectory directory)g_get_user_special_dir;
	gchar** function()g_get_system_data_dirs;
	gchar** function()g_get_system_config_dirs;
	gchar* function()g_get_host_name;
	gchar* function()g_get_home_dir;
	gchar* function()g_get_tmp_dir;
	gchar* function()g_get_current_dir;
	gchar* function(gchar* fileName)g_basename;
	gboolean function(gchar* fileName)g_path_is_absolute;
	gchar* function(gchar* fileName)g_path_skip_root;
	gchar* function(gchar* fileName)g_path_get_basename;
	gchar* function(gchar* fileName)g_path_get_dirname;
	gchar* function(gchar* firstElement, ... )g_build_filename;
	gchar* function(gchar** args)g_build_filenamev;
	gchar* function(gchar* separator, gchar* firstElement, ... )g_build_path;
	gchar* function(gchar* separator, gchar** args)g_build_pathv;
	char* function(goffset size)g_format_size_for_display;
	gchar* function(gchar* program)g_find_program_in_path;
	gint function(gulong mask, gint nthBit)g_bit_nth_lsf;
	gint function(gulong mask, gint nthBit)g_bit_nth_msf;
	guint function(gulong number)g_bit_storage;
	guint function(guint num)g_spaced_primes_closest;
	void function(GVoidFunc func)g_atexit;
	guint function(gchar* string, GDebugKey* keys, guint nkeys)g_parse_debug_string;
	void function(gconstpointer pbase, gint totalElems, gsize size, GCompareDataFunc compareFunc, gpointer userData)g_qsort_with_data;
	void function(gpointer* nullifyLocation)g_nullify_pointer;
	
	// glib.ScannerG
	
	GScanner* function(GScannerConfig* configTempl)g_scanner_new;
	void function(GScanner* scanner)g_scanner_destroy;
	void function(GScanner* scanner, gint inputFd)g_scanner_input_file;
	void function(GScanner* scanner)g_scanner_sync_file_offset;
	void function(GScanner* scanner, gchar* text, guint textLen)g_scanner_input_text;
	GTokenType function(GScanner* scanner)g_scanner_peek_next_token;
	GTokenType function(GScanner* scanner)g_scanner_get_next_token;
	gboolean function(GScanner* scanner)g_scanner_eof;
	guint function(GScanner* scanner)g_scanner_cur_line;
	guint function(GScanner* scanner)g_scanner_cur_position;
	GTokenType function(GScanner* scanner)g_scanner_cur_token;
	GTokenValue function(GScanner* scanner)g_scanner_cur_value;
	guint function(GScanner* scanner, guint scopeId)g_scanner_set_scope;
	void function(GScanner* scanner, guint scopeId, gchar* symbol, gpointer value)g_scanner_scope_add_symbol;
	void function(GScanner* scanner, guint scopeId, GHFunc func, gpointer userData)g_scanner_scope_foreach_symbol;
	gpointer function(GScanner* scanner, guint scopeId, gchar* symbol)g_scanner_scope_lookup_symbol;
	void function(GScanner* scanner, guint scopeId, gchar* symbol)g_scanner_scope_remove_symbol;
	gpointer function(GScanner* scanner, gchar* symbol)g_scanner_lookup_symbol;
	void function(GScanner* scanner, gchar* format, ... )g_scanner_warn;
	void function(GScanner* scanner, gchar* format, ... )g_scanner_error;
	void function(GScanner* scanner, GTokenType expectedToken, gchar* identifierSpec, gchar* symbolSpec, gchar* symbolName, gchar* message, gint isError)g_scanner_unexp_token;
	
	// glib.StringCompletion
	
	GCompletion* function(GCompletionFunc func)g_completion_new;
	void function(GCompletion* cmp, GList* items)g_completion_add_items;
	void function(GCompletion* cmp, GList* items)g_completion_remove_items;
	void function(GCompletion* cmp)g_completion_clear_items;
	GList* function(GCompletion* cmp, gchar* prefix, gchar** newPrefix)g_completion_complete;
	GList* function(GCompletion* cmp, gchar* prefix, gchar** newPrefix)g_completion_complete_utf8;
	void function(GCompletion* cmp, GCompletionStrncmpFunc strncmpFunc)g_completion_set_compare;
	void function(GCompletion* cmp)g_completion_free;
	
	// glib.Timer
	
	GTimer* function()g_timer_new;
	void function(GTimer* timer)g_timer_start;
	void function(GTimer* timer)g_timer_stop;
	void function(GTimer* timer)g_timer_continue;
	gdouble function(GTimer* timer, gulong* microseconds)g_timer_elapsed;
	void function(GTimer* timer)g_timer_reset;
	void function(GTimer* timer)g_timer_destroy;
	
	// glib.Spawn
	
	gboolean function(gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, GPid* childPid, gint* standardInput, gint* standardOutput, gint* standardError, GError** error)g_spawn_async_with_pipes;
	gboolean function(gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, GPid* childPid, GError** error)g_spawn_async;
	gboolean function(gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, gchar** standardOutput, gchar** standardError, gint* exitStatus, GError** error)g_spawn_sync;
	gboolean function(gchar* commandLine, GError** error)g_spawn_command_line_async;
	gboolean function(gchar* commandLine, gchar** standardOutput, gchar** standardError, gint* exitStatus, GError** error)g_spawn_command_line_sync;
	void function(GPid pid)g_spawn_close_pid;
	
	// glib.FileUtils
	
	GFileError function(gint errNo)g_file_error_from_errno;
	gboolean function(gchar* filename, gchar** contents, gsize* length, GError** error)g_file_get_contents;
	gboolean function(gchar* filename, gchar* contents, gssize length, GError** error)g_file_set_contents;
	gboolean function(gchar* filename, GFileTest test)g_file_test;
	gint function(gchar* tmpl)g_mkstemp;
	gint function(gchar* tmpl, gchar** nameUsed, GError** error)g_file_open_tmp;
	gchar* function(gchar* filename, GError** error)g_file_read_link;
	int function(gchar* pathname, int mode)g_mkdir_with_parents;
	int function(gchar* filename, int flags, int mode)g_open;
	int function(gchar* oldfilename, gchar* newfilename)g_rename;
	int function(gchar* filename, int mode)g_mkdir;
	int function(gchar* filename, void* buf)g_stat;
	int function(gchar* filename, void* buf)g_lstat;
	int function(gchar* filename)g_unlink;
	int function(gchar* filename)g_remove;
	int function(gchar* filename)g_rmdir;
	FILE* function(gchar* filename, gchar* mode)g_fopen;
	FILE* function(gchar* filename, gchar* mode, FILE* stream)g_freopen;
	int function(gchar* filename, int mode)g_chmod;
	int function(gchar* filename, int mode)g_access;
	int function(gchar* filename, int mode)g_creat;
	int function(gchar* path)g_chdir;
	
	// glib.Directory
	
	GDir* function(gchar* path, guint flags, GError** error)g_dir_open;
	gchar* function(GDir* dir)g_dir_read_name;
	void function(GDir* dir)g_dir_rewind;
	void function(GDir* dir)g_dir_close;
	
	// glib.MappedFile
	
	GMappedFile* function(gchar* filename, gboolean writable, GError** error)g_mapped_file_new;
	void function(GMappedFile* file)g_mapped_file_free;
	gsize function(GMappedFile* file)g_mapped_file_get_length;
	gchar* function(GMappedFile* file)g_mapped_file_get_contents;
	
	// glib.URI
	
	char* function(char* uri)g_uri_parse_scheme;
	char* function(char* unescaped, char* reservedCharsAllowed, gboolean allowUtf8)g_uri_escape_string;
	char* function(char* escapedString, char* illegalCharacters)g_uri_unescape_string;
	char* function(char* escapedString, char* escapedStringEnd, char* illegalCharacters)g_uri_unescape_segment;
	
	// glib.ShellUtils
	
	gboolean function(gchar* commandLine, gint* argcp, gchar*** argvp, GError** error)g_shell_parse_argv;
	gchar* function(gchar* unquotedString)g_shell_quote;
	gchar* function(gchar* quotedString, GError** error)g_shell_unquote;
	
	// glib.OptionContext
	
	GOptionContext* function(gchar* parameterString)g_option_context_new;
	void function(GOptionContext* context, gchar* summary)g_option_context_set_summary;
	gchar* function(GOptionContext* context)g_option_context_get_summary;
	void function(GOptionContext* context, gchar* description)g_option_context_set_description;
	gchar* function(GOptionContext* context)g_option_context_get_description;
	void function(GOptionContext* context, GTranslateFunc func, gpointer data, GDestroyNotify destroyNotify)g_option_context_set_translate_func;
	void function(GOptionContext* context, gchar* domain)g_option_context_set_translation_domain;
	void function(GOptionContext* context)g_option_context_free;
	gboolean function(GOptionContext* context, gint* argc, gchar*** argv, GError** error)g_option_context_parse;
	void function(GOptionContext* context, gboolean helpEnabled)g_option_context_set_help_enabled;
	gboolean function(GOptionContext* context)g_option_context_get_help_enabled;
	void function(GOptionContext* context, gboolean ignoreUnknown)g_option_context_set_ignore_unknown_options;
	gboolean function(GOptionContext* context)g_option_context_get_ignore_unknown_options;
	gchar* function(GOptionContext* context, gboolean mainHelp, GOptionGroup* group)g_option_context_get_help;
	void function(GOptionContext* context, GOptionEntry* entries, gchar* translationDomain)g_option_context_add_main_entries;
	void function(GOptionContext* context, GOptionGroup* group)g_option_context_add_group;
	void function(GOptionContext* context, GOptionGroup* group)g_option_context_set_main_group;
	GOptionGroup* function(GOptionContext* context)g_option_context_get_main_group;
	
	// glib.OptionGroup
	
	GOptionGroup* function(gchar* name, gchar* description, gchar* helpDescription, gpointer userData, GDestroyNotify destroy)g_option_group_new;
	void function(GOptionGroup* group)g_option_group_free;
	void function(GOptionGroup* group, GOptionEntry* entries)g_option_group_add_entries;
	void function(GOptionGroup* group, GOptionParseFunc preParseFunc, GOptionParseFunc postParseFunc)g_option_group_set_parse_hooks;
	void function(GOptionGroup* group, GOptionErrorFunc errorFunc)g_option_group_set_error_hook;
	void function(GOptionGroup* group, GTranslateFunc func, gpointer data, GDestroyNotify destroyNotify)g_option_group_set_translate_func;
	void function(GOptionGroup* group, gchar* domain)g_option_group_set_translation_domain;
	
	// glib.Pattern
	
	GPatternSpec* function(gchar* pattern)g_pattern_spec_new;
	void function(GPatternSpec* pspec)g_pattern_spec_free;
	gboolean function(GPatternSpec* pspec1, GPatternSpec* pspec2)g_pattern_spec_equal;
	gboolean function(GPatternSpec* pspec, guint stringLength, gchar* string, gchar* stringReversed)g_pattern_match;
	gboolean function(GPatternSpec* pspec, gchar* string)g_pattern_match_string;
	gboolean function(gchar* pattern, gchar* string)g_pattern_match_simple;
	
	// glib.Regex
	
	GRegex* function(gchar* pattern, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions, GError** error)g_regex_new;
	GRegex* function(GRegex* regex)g_regex_ref;
	void function(GRegex* regex)g_regex_unref;
	gchar* function(GRegex* regex)g_regex_get_pattern;
	gint function(GRegex* regex)g_regex_get_max_backref;
	gint function(GRegex* regex)g_regex_get_capture_count;
	gint function(GRegex* regex, gchar* name)g_regex_get_string_number;
	gchar* function(gchar* string, gint length)g_regex_escape_string;
	gboolean function(gchar* pattern, gchar* string, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions)g_regex_match_simple;
	gboolean function(GRegex* regex, gchar* string, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo)g_regex_match;
	gboolean function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo, GError** error)g_regex_match_full;
	gboolean function(GRegex* regex, gchar* string, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo)g_regex_match_all;
	gboolean function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo, GError** error)g_regex_match_all_full;
	gchar** function(gchar* pattern, gchar* string, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions)g_regex_split_simple;
	gchar** function(GRegex* regex, gchar* string, GRegexMatchFlags matchOptions)g_regex_split;
	gchar** function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, gint maxTokens, GError** error)g_regex_split_full;
	gchar* function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, gchar* replacement, GRegexMatchFlags matchOptions, GError** error)g_regex_replace;
	gchar* function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, gchar* replacement, GRegexMatchFlags matchOptions, GError** error)g_regex_replace_literal;
	gchar* function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, GRegexEvalCallback eval, gpointer userData, GError** error)g_regex_replace_eval;
	gboolean function(gchar* replacement, gboolean* hasReferences, GError** error)g_regex_check_replacement;
	
	// glib.MatchInfo
	
	GRegex* function(GMatchInfo* matchInfo)g_match_info_get_regex;
	gchar* function(GMatchInfo* matchInfo)g_match_info_get_string;
	void function(GMatchInfo* matchInfo)g_match_info_free;
	gboolean function(GMatchInfo* matchInfo)g_match_info_matches;
	gboolean function(GMatchInfo* matchInfo, GError** error)g_match_info_next;
	gint function(GMatchInfo* matchInfo)g_match_info_get_match_count;
	gboolean function(GMatchInfo* matchInfo)g_match_info_is_partial_match;
	gchar* function(GMatchInfo* matchInfo, gchar* stringToExpand, GError** error)g_match_info_expand_references;
	gchar* function(GMatchInfo* matchInfo, gint matchNum)g_match_info_fetch;
	gboolean function(GMatchInfo* matchInfo, gint matchNum, gint* startPos, gint* endPos)g_match_info_fetch_pos;
	gchar* function(GMatchInfo* matchInfo, gchar* name)g_match_info_fetch_named;
	gboolean function(GMatchInfo* matchInfo, gchar* name, gint* startPos, gint* endPos)g_match_info_fetch_named_pos;
	gchar** function(GMatchInfo* matchInfo)g_match_info_fetch_all;
	
	// glib.SimpleXML
	
	gchar* function(gchar* text, gssize length)g_markup_escape_text;
	gchar* function(char* format, ... )g_markup_printf_escaped;
	gchar* function(char* format, va_list args)g_markup_vprintf_escaped;
	gboolean function(GMarkupParseContext* context, GError** error)g_markup_parse_context_end_parse;
	void function(GMarkupParseContext* context)g_markup_parse_context_free;
	void function(GMarkupParseContext* context, gint* lineNumber, gint* charNumber)g_markup_parse_context_get_position;
	gchar* function(GMarkupParseContext* context)g_markup_parse_context_get_element;
	GSList* function(GMarkupParseContext* context)g_markup_parse_context_get_element_stack;
	GMarkupParseContext* function(GMarkupParser* parser, GMarkupParseFlags flags, gpointer userData, GDestroyNotify userDataDnotify)g_markup_parse_context_new;
	gboolean function(GMarkupParseContext* context, gchar* text, gssize textLen, GError** error)g_markup_parse_context_parse;
	gboolean function(gchar* elementName, gchar** attributeNames, gchar** attributeValues, GError** error, GMarkupCollectType firstType, gchar* firstAttr, ... )g_markup_collect_attributes;
	
	// glib.KeyFile
	
	GKeyFile* function()g_key_file_new;
	void function(GKeyFile* keyFile)g_key_file_free;
	void function(GKeyFile* keyFile, gchar separator)g_key_file_set_list_separator;
	gboolean function(GKeyFile* keyFile, gchar* file, GKeyFileFlags flags, GError** error)g_key_file_load_from_file;
	gboolean function(GKeyFile* keyFile, gchar* data, gsize length, GKeyFileFlags flags, GError** error)g_key_file_load_from_data;
	gboolean function(GKeyFile* keyFile, gchar* file, gchar** fullPath, GKeyFileFlags flags, GError** error)g_key_file_load_from_data_dirs;
	gboolean function(GKeyFile* keyFile, gchar* file, gchar** searchDirs, gchar** fullPath, GKeyFileFlags flags, GError** error)g_key_file_load_from_dirs;
	gchar* function(GKeyFile* keyFile, gsize* length, GError** error)g_key_file_to_data;
	gchar* function(GKeyFile* keyFile)g_key_file_get_start_group;
	gchar** function(GKeyFile* keyFile, gsize* length)g_key_file_get_groups;
	gchar** function(GKeyFile* keyFile, gchar* groupName, gsize* length, GError** error)g_key_file_get_keys;
	gboolean function(GKeyFile* keyFile, gchar* groupName)g_key_file_has_group;
	gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error)g_key_file_has_key;
	gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error)g_key_file_get_value;
	gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error)g_key_file_get_string;
	gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, GError** error)g_key_file_get_locale_string;
	gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error)g_key_file_get_boolean;
	gint function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error)g_key_file_get_integer;
	gdouble function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error)g_key_file_get_double;
	gchar** function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error)g_key_file_get_string_list;
	gchar** function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, gsize* length, GError** error)g_key_file_get_locale_string_list;
	gboolean* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error)g_key_file_get_boolean_list;
	gint* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error)g_key_file_get_integer_list;
	gdouble* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error)g_key_file_get_double_list;
	gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error)g_key_file_get_comment;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* value)g_key_file_set_value;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* string)g_key_file_set_string;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, gchar* string)g_key_file_set_locale_string;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gboolean value)g_key_file_set_boolean;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gint value)g_key_file_set_integer;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gdouble value)g_key_file_set_double;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar*[] list, gsize length)g_key_file_set_string_list;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, gchar*[] list, gsize length)g_key_file_set_locale_string_list;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gboolean[] list, gsize length)g_key_file_set_boolean_list;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gint[] list, gsize length)g_key_file_set_integer_list;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gdouble[] list, gsize length)g_key_file_set_double_list;
	gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* comment, GError** error)g_key_file_set_comment;
	gboolean function(GKeyFile* keyFile, gchar* groupName, GError** error)g_key_file_remove_group;
	gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error)g_key_file_remove_key;
	gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error)g_key_file_remove_comment;
	
	// glib.BookmarkFile
	
	GBookmarkFile* function()g_bookmark_file_new;
	void function(GBookmarkFile* bookmark)g_bookmark_file_free;
	gboolean function(GBookmarkFile* bookmark, gchar* filename, GError** error)g_bookmark_file_load_from_file;
	gboolean function(GBookmarkFile* bookmark, gchar* data, gsize length, GError** error)g_bookmark_file_load_from_data;
	gboolean function(GBookmarkFile* bookmark, gchar* file, gchar** fullPath, GError** error)g_bookmark_file_load_from_data_dirs;
	gchar* function(GBookmarkFile* bookmark, gsize* length, GError** error)g_bookmark_file_to_data;
	gboolean function(GBookmarkFile* bookmark, gchar* filename, GError** error)g_bookmark_file_to_file;
	gboolean function(GBookmarkFile* bookmark, gchar* uri)g_bookmark_file_has_item;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* group, GError** error)g_bookmark_file_has_group;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, GError** error)g_bookmark_file_has_application;
	gint function(GBookmarkFile* bookmark)g_bookmark_file_get_size;
	gchar** function(GBookmarkFile* bookmark, gsize* length)g_bookmark_file_get_uris;
	gchar* function(GBookmarkFile* bookmark, gchar* uri, GError** error)g_bookmark_file_get_title;
	gchar* function(GBookmarkFile* bookmark, gchar* uri, GError** error)g_bookmark_file_get_description;
	gchar* function(GBookmarkFile* bookmark, gchar* uri, GError** error)g_bookmark_file_get_mime_type;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, GError** error)g_bookmark_file_get_is_private;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar** href, gchar** mimeType, GError** error)g_bookmark_file_get_icon;
	time_t function(GBookmarkFile* bookmark, gchar* uri, GError** error)g_bookmark_file_get_added;
	time_t function(GBookmarkFile* bookmark, gchar* uri, GError** error)g_bookmark_file_get_modified;
	time_t function(GBookmarkFile* bookmark, gchar* uri, GError** error)g_bookmark_file_get_visited;
	gchar** function(GBookmarkFile* bookmark, gchar* uri, gsize* length, GError** error)g_bookmark_file_get_groups;
	gchar** function(GBookmarkFile* bookmark, gchar* uri, gsize* length, GError** error)g_bookmark_file_get_applications;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, gchar** exec, guint* count, time_t* stamp, GError** error)g_bookmark_file_get_app_info;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* title)g_bookmark_file_set_title;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* description)g_bookmark_file_set_description;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* mimeType)g_bookmark_file_set_mime_type;
	void function(GBookmarkFile* bookmark, gchar* uri, gboolean isPrivate)g_bookmark_file_set_is_private;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* href, gchar* mimeType)g_bookmark_file_set_icon;
	void function(GBookmarkFile* bookmark, gchar* uri, time_t added)g_bookmark_file_set_added;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar** groups, gsize length)g_bookmark_file_set_groups;
	void function(GBookmarkFile* bookmark, gchar* uri, time_t modified)g_bookmark_file_set_modified;
	void function(GBookmarkFile* bookmark, gchar* uri, time_t visited)g_bookmark_file_set_visited;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, gchar* exec, gint count, time_t stamp, GError** error)g_bookmark_file_set_app_info;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* group)g_bookmark_file_add_group;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* name, gchar* exec)g_bookmark_file_add_application;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* group, GError** error)g_bookmark_file_remove_group;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, GError** error)g_bookmark_file_remove_application;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, GError** error)g_bookmark_file_remove_item;
	gboolean function(GBookmarkFile* bookmark, gchar* oldUri, gchar* newUri, GError** error)g_bookmark_file_move_item;
	
	// glib.WindowsUtils
	
	gchar* function(gint error)g_win32_error_message;
	gchar* function()g_win32_getlocale;
	gchar* function(gchar* p, gchar* dllName)g_win32_get_package_installation_directory;
	gchar* function(gpointer hmodule)g_win32_get_package_installation_directory_of_module;
	gchar* function(gchar* p, gchar* dllName, gchar* subdir)g_win32_get_package_installation_subdirectory;
	guint function()g_win32_get_windows_version;
	gchar* function(gchar* utf8filename)g_win32_locale_filename_from_utf8;
	
	// glib.MemorySlice
	
	gpointer function(gsize blockSize)g_slice_alloc;
	gpointer function(gsize blockSize)g_slice_alloc0;
	gpointer function(gsize blockSize, gconstpointer memBlock)g_slice_copy;
	void function(gsize blockSize, gpointer memBlock)g_slice_free1;
	void function(gsize blockSize, gpointer memChain, gsize nextOffset)g_slice_free_chain_with_offset;
	
	// glib.MemoryChunk
	
	GMemChunk* function(gchar* name, gint atomSize, gsize areaSize, gint type)g_mem_chunk_new;
	gpointer function(GMemChunk* memChunk)g_mem_chunk_alloc;
	gpointer function(GMemChunk* memChunk)g_mem_chunk_alloc0;
	void function(GMemChunk* memChunk, gpointer mem)g_mem_chunk_free;
	void function(GMemChunk* memChunk)g_mem_chunk_destroy;
	void function(GMemChunk* memChunk)g_mem_chunk_reset;
	void function(GMemChunk* memChunk)g_mem_chunk_clean;
	void function()g_blow_chunks;
	void function()g_mem_chunk_info;
	void function(GMemChunk* memChunk)g_mem_chunk_print;
	
	// glib.ListG
	
	GList* function(GList* list, gpointer data)g_list_append;
	GList* function(GList* list, gpointer data)g_list_prepend;
	GList* function(GList* list, gpointer data, gint position)g_list_insert;
	GList* function(GList* list, GList* sibling, gpointer data)g_list_insert_before;
	GList* function(GList* list, gpointer data, GCompareFunc func)g_list_insert_sorted;
	GList* function(GList* list, gconstpointer data)g_list_remove;
	GList* function(GList* list, GList* llink)g_list_remove_link;
	GList* function(GList* list, GList* link)g_list_delete_link;
	GList* function(GList* list, gconstpointer data)g_list_remove_all;
	void function(GList* list)g_list_free;
	GList* function()g_list_alloc;
	void function(GList* list)g_list_free_1;
	guint function(GList* list)g_list_length;
	GList* function(GList* list)g_list_copy;
	GList* function(GList* list)g_list_reverse;
	GList* function(GList* list, GCompareFunc compareFunc)g_list_sort;
	GList* function(GList* list, gpointer data, GCompareDataFunc func, gpointer userData)g_list_insert_sorted_with_data;
	GList* function(GList* list, GCompareDataFunc compareFunc, gpointer userData)g_list_sort_with_data;
	GList* function(GList* list1, GList* list2)g_list_concat;
	void function(GList* list, GFunc func, gpointer userData)g_list_foreach;
	GList* function(GList* list)g_list_first;
	GList* function(GList* list)g_list_last;
	GList* function(GList* list, guint n)g_list_nth;
	gpointer function(GList* list, guint n)g_list_nth_data;
	GList* function(GList* list, guint n)g_list_nth_prev;
	GList* function(GList* list, gconstpointer data)g_list_find;
	GList* function(GList* list, gconstpointer data, GCompareFunc func)g_list_find_custom;
	gint function(GList* list, GList* llink)g_list_position;
	gint function(GList* list, gconstpointer data)g_list_index;
	void function(gpointer allocator)g_list_push_allocator;
	void function()g_list_pop_allocator;
	
	// glib.ListSG
	
	GSList* function()g_slist_alloc;
	GSList* function(GSList* list, gpointer data)g_slist_append;
	GSList* function(GSList* list, gpointer data)g_slist_prepend;
	GSList* function(GSList* list, gpointer data, gint position)g_slist_insert;
	GSList* function(GSList* slist, GSList* sibling, gpointer data)g_slist_insert_before;
	GSList* function(GSList* list, gpointer data, GCompareFunc func)g_slist_insert_sorted;
	GSList* function(GSList* list, gconstpointer data)g_slist_remove;
	GSList* function(GSList* list, GSList* link)g_slist_remove_link;
	GSList* function(GSList* list, GSList* link)g_slist_delete_link;
	GSList* function(GSList* list, gconstpointer data)g_slist_remove_all;
	void function(GSList* list)g_slist_free;
	void function(GSList* list)g_slist_free_1;
	guint function(GSList* list)g_slist_length;
	GSList* function(GSList* list)g_slist_copy;
	GSList* function(GSList* list)g_slist_reverse;
	GSList* function(GSList* list, gpointer data, GCompareDataFunc func, gpointer userData)g_slist_insert_sorted_with_data;
	GSList* function(GSList* list, GCompareFunc compareFunc)g_slist_sort;
	GSList* function(GSList* list, GCompareDataFunc compareFunc, gpointer userData)g_slist_sort_with_data;
	GSList* function(GSList* list1, GSList* list2)g_slist_concat;
	void function(GSList* list, GFunc func, gpointer userData)g_slist_foreach;
	GSList* function(GSList* list)g_slist_last;
	GSList* function(GSList* list, guint n)g_slist_nth;
	gpointer function(GSList* list, guint n)g_slist_nth_data;
	GSList* function(GSList* list, gconstpointer data)g_slist_find;
	GSList* function(GSList* list, gconstpointer data, GCompareFunc func)g_slist_find_custom;
	gint function(GSList* list, GSList* llink)g_slist_position;
	gint function(GSList* list, gconstpointer data)g_slist_index;
	void function(gpointer dummy)g_slist_push_allocator;
	void function()g_slist_pop_allocator;
	
	// glib.QueueG
	
	GQueue* function()g_queue_new;
	void function(GQueue* queue)g_queue_free;
	void function(GQueue* queue)g_queue_init;
	void function(GQueue* queue)g_queue_clear;
	gboolean function(GQueue* queue)g_queue_is_empty;
	guint function(GQueue* queue)g_queue_get_length;
	void function(GQueue* queue)g_queue_reverse;
	GQueue* function(GQueue* queue)g_queue_copy;
	void function(GQueue* queue, GFunc func, gpointer userData)g_queue_foreach;
	GList* function(GQueue* queue, gconstpointer data)g_queue_find;
	GList* function(GQueue* queue, gconstpointer data, GCompareFunc func)g_queue_find_custom;
	void function(GQueue* queue, GCompareDataFunc compareFunc, gpointer userData)g_queue_sort;
	void function(GQueue* queue, gpointer data)g_queue_push_head;
	void function(GQueue* queue, gpointer data)g_queue_push_tail;
	void function(GQueue* queue, gpointer data, gint n)g_queue_push_nth;
	gpointer function(GQueue* queue)g_queue_pop_head;
	gpointer function(GQueue* queue)g_queue_pop_tail;
	gpointer function(GQueue* queue, guint n)g_queue_pop_nth;
	gpointer function(GQueue* queue)g_queue_peek_head;
	gpointer function(GQueue* queue)g_queue_peek_tail;
	gpointer function(GQueue* queue, guint n)g_queue_peek_nth;
	gint function(GQueue* queue, gconstpointer data)g_queue_index;
	void function(GQueue* queue, gconstpointer data)g_queue_remove;
	void function(GQueue* queue, gconstpointer data)g_queue_remove_all;
	void function(GQueue* queue, GList* sibling, gpointer data)g_queue_insert_before;
	void function(GQueue* queue, GList* sibling, gpointer data)g_queue_insert_after;
	void function(GQueue* queue, gpointer data, GCompareDataFunc func, gpointer userData)g_queue_insert_sorted;
	void function(GQueue* queue, GList* link)g_queue_push_head_link;
	void function(GQueue* queue, GList* link)g_queue_push_tail_link;
	void function(GQueue* queue, gint n, GList* link)g_queue_push_nth_link;
	GList* function(GQueue* queue)g_queue_pop_head_link;
	GList* function(GQueue* queue)g_queue_pop_tail_link;
	GList* function(GQueue* queue, guint n)g_queue_pop_nth_link;
	GList* function(GQueue* queue)g_queue_peek_head_link;
	GList* function(GQueue* queue)g_queue_peek_tail_link;
	GList* function(GQueue* queue, guint n)g_queue_peek_nth_link;
	gint function(GQueue* queue, GList* link)g_queue_link_index;
	void function(GQueue* queue, GList* link)g_queue_unlink;
	void function(GQueue* queue, GList* link)g_queue_delete_link;
	
	// glib.Sequence
	
	GSequence* function(GDestroyNotify dataDestroy)g_sequence_new;
	void function(GSequence* seq)g_sequence_free;
	gint function(GSequence* seq)g_sequence_get_length;
	void function(GSequence* seq, GFunc func, gpointer userData)g_sequence_foreach;
	void function(GSequenceIter* begin, GSequenceIter* end, GFunc func, gpointer userData)g_sequence_foreach_range;
	void function(GSequence* seq, GCompareDataFunc cmpFunc, gpointer cmpData)g_sequence_sort;
	void function(GSequence* seq, GSequenceIterCompareFunc cmpFunc, gpointer cmpData)g_sequence_sort_iter;
	GSequenceIter* function(GSequence* seq)g_sequence_get_begin_iter;
	GSequenceIter* function(GSequence* seq)g_sequence_get_end_iter;
	GSequenceIter* function(GSequence* seq, gint pos)g_sequence_get_iter_at_pos;
	GSequenceIter* function(GSequence* seq, gpointer data)g_sequence_append;
	GSequenceIter* function(GSequence* seq, gpointer data)g_sequence_prepend;
	GSequenceIter* function(GSequenceIter* iter, gpointer data)g_sequence_insert_before;
	void function(GSequenceIter* src, GSequenceIter* dest)g_sequence_move;
	void function(GSequenceIter* a, GSequenceIter* b)g_sequence_swap;
	GSequenceIter* function(GSequence* seq, gpointer data, GCompareDataFunc cmpFunc, gpointer cmpData)g_sequence_insert_sorted;
	GSequenceIter* function(GSequence* seq, gpointer data, GSequenceIterCompareFunc iterCmp, gpointer cmpData)g_sequence_insert_sorted_iter;
	void function(GSequenceIter* iter, GCompareDataFunc cmpFunc, gpointer cmpData)g_sequence_sort_changed;
	void function(GSequenceIter* iter, GSequenceIterCompareFunc iterCmp, gpointer cmpData)g_sequence_sort_changed_iter;
	void function(GSequenceIter* iter)g_sequence_remove;
	void function(GSequenceIter* begin, GSequenceIter* end)g_sequence_remove_range;
	void function(GSequenceIter* dest, GSequenceIter* begin, GSequenceIter* end)g_sequence_move_range;
	GSequenceIter* function(GSequence* seq, gpointer data, GCompareDataFunc cmpFunc, gpointer cmpData)g_sequence_search;
	GSequenceIter* function(GSequence* seq, gpointer data, GSequenceIterCompareFunc iterCmp, gpointer cmpData)g_sequence_search_iter;
	gpointer function(GSequenceIter* iter)g_sequence_get;
	void function(GSequenceIter* iter, gpointer data)g_sequence_set;
	GSequenceIter* function(GSequenceIter* begin, GSequenceIter* end)g_sequence_range_get_midpoint;
	
	// glib.SequenceIter
	
	gboolean function(GSequenceIter* iter)g_sequence_iter_is_begin;
	gboolean function(GSequenceIter* iter)g_sequence_iter_is_end;
	GSequenceIter* function(GSequenceIter* iter)g_sequence_iter_next;
	GSequenceIter* function(GSequenceIter* iter)g_sequence_iter_prev;
	gint function(GSequenceIter* iter)g_sequence_iter_get_position;
	GSequenceIter* function(GSequenceIter* iter, gint delta)g_sequence_iter_move;
	GSequence* function(GSequenceIter* iter)g_sequence_iter_get_sequence;
	gint function(GSequenceIter* a, GSequenceIter* b)g_sequence_iter_compare;
	
	// glib.TrashStack
	
	void function(GTrashStack** stackP, gpointer dataP)g_trash_stack_push;
	gpointer function(GTrashStack** stackP)g_trash_stack_pop;
	gpointer function(GTrashStack** stackP)g_trash_stack_peek;
	guint function(GTrashStack** stackP)g_trash_stack_height;
	
	// glib.HashTable
	
	GHashTable* function(GHashFunc hashFunc, GEqualFunc keyEqualFunc)g_hash_table_new;
	GHashTable* function(GHashFunc hashFunc, GEqualFunc keyEqualFunc, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc)g_hash_table_new_full;
	void function(GHashTable* hashTable, gpointer key, gpointer value)g_hash_table_insert;
	void function(GHashTable* hashTable, gpointer key, gpointer value)g_hash_table_replace;
	guint function(GHashTable* hashTable)g_hash_table_size;
	gpointer function(GHashTable* hashTable, gconstpointer key)g_hash_table_lookup;
	gboolean function(GHashTable* hashTable, gconstpointer lookupKey, gpointer* origKey, gpointer* value)g_hash_table_lookup_extended;
	void function(GHashTable* hashTable, GHFunc func, gpointer userData)g_hash_table_foreach;
	gpointer function(GHashTable* hashTable, GHRFunc predicate, gpointer userData)g_hash_table_find;
	gboolean function(GHashTable* hashTable, gconstpointer key)g_hash_table_remove;
	gboolean function(GHashTable* hashTable, gconstpointer key)g_hash_table_steal;
	guint function(GHashTable* hashTable, GHRFunc func, gpointer userData)g_hash_table_foreach_remove;
	guint function(GHashTable* hashTable, GHRFunc func, gpointer userData)g_hash_table_foreach_steal;
	void function(GHashTable* hashTable)g_hash_table_remove_all;
	void function(GHashTable* hashTable)g_hash_table_steal_all;
	GList* function(GHashTable* hashTable)g_hash_table_get_keys;
	GList* function(GHashTable* hashTable)g_hash_table_get_values;
	void function(GHashTable* hashTable)g_hash_table_destroy;
	GHashTable* function(GHashTable* hashTable)g_hash_table_ref;
	void function(GHashTable* hashTable)g_hash_table_unref;
	gboolean function(gconstpointer v1, gconstpointer v2)g_direct_equal;
	guint function(gconstpointer v)g_direct_hash;
	gboolean function(gconstpointer v1, gconstpointer v2)g_int_equal;
	guint function(gconstpointer v)g_int_hash;
	gboolean function(gconstpointer v1, gconstpointer v2)g_str_equal;
	guint function(gconstpointer v)g_str_hash;
	
	// glib.HashTableIter
	
	void function(GHashTableIter* iter, GHashTable* hashTable)g_hash_table_iter_init;
	gboolean function(GHashTableIter* iter, gpointer* key, gpointer* value)g_hash_table_iter_next;
	GHashTable* function(GHashTableIter* iter)g_hash_table_iter_get_hash_table;
	void function(GHashTableIter* iter)g_hash_table_iter_remove;
	void function(GHashTableIter* iter)g_hash_table_iter_steal;
	
	// glib.StringG
	
	GString* function(gchar* init)g_string_new;
	GString* function(gchar* init, gssize len)g_string_new_len;
	GString* function(gsize dflSize)g_string_sized_new;
	GString* function(GString* string, gchar* rval)g_string_assign;
	void function(GString* string, gchar* format, va_list args)g_string_vprintf;
	void function(GString* string, gchar* format, va_list args)g_string_append_vprintf;
	void function(GString* string, gchar* format, ... )g_string_printf;
	void function(GString* string, gchar* format, ... )g_string_append_printf;
	GString* function(GString* string, gchar* val)g_string_append;
	GString* function(GString* string, gchar c)g_string_append_c;
	GString* function(GString* string, gunichar wc)g_string_append_unichar;
	GString* function(GString* string, gchar* val, gssize len)g_string_append_len;
	GString* function(GString* string, char* unescaped, char* reservedCharsAllowed, gboolean allowUtf8)g_string_append_uri_escaped;
	GString* function(GString* string, gchar* val)g_string_prepend;
	GString* function(GString* string, gchar c)g_string_prepend_c;
	GString* function(GString* string, gunichar wc)g_string_prepend_unichar;
	GString* function(GString* string, gchar* val, gssize len)g_string_prepend_len;
	GString* function(GString* string, gssize pos, gchar* val)g_string_insert;
	GString* function(GString* string, gssize pos, gchar c)g_string_insert_c;
	GString* function(GString* string, gssize pos, gunichar wc)g_string_insert_unichar;
	GString* function(GString* string, gssize pos, gchar* val, gssize len)g_string_insert_len;
	GString* function(GString* string, gsize pos, gchar* val)g_string_overwrite;
	GString* function(GString* string, gsize pos, gchar* val, gssize len)g_string_overwrite_len;
	GString* function(GString* string, gssize pos, gssize len)g_string_erase;
	GString* function(GString* string, gsize len)g_string_truncate;
	GString* function(GString* string, gsize len)g_string_set_size;
	gchar* function(GString* string, gboolean freeSegment)g_string_free;
	GString* function(GString* string)g_string_up;
	GString* function(GString* string)g_string_down;
	guint function(GString* str)g_string_hash;
	gboolean function(GString* v, GString* v2)g_string_equal;
	
	// glib.StringGChunk
	
	GStringChunk* function(gsize size)g_string_chunk_new;
	gchar* function(GStringChunk* chunk, gchar* string)g_string_chunk_insert;
	gchar* function(GStringChunk* chunk, gchar* string)g_string_chunk_insert_const;
	gchar* function(GStringChunk* chunk, gchar* string, gssize len)g_string_chunk_insert_len;
	void function(GStringChunk* chunk)g_string_chunk_clear;
	void function(GStringChunk* chunk)g_string_chunk_free;
	
	// glib.ArrayG
	
	GArray* function(gboolean zeroTerminated, gboolean clear, guint elementSize)g_array_new;
	GArray* function(gboolean zeroTerminated, gboolean clear, guint elementSize, guint reservedSize)g_array_sized_new;
	GArray* function(GArray* array, gconstpointer data, guint len)g_array_append_vals;
	GArray* function(GArray* array, gconstpointer data, guint len)g_array_prepend_vals;
	GArray* function(GArray* array, guint index, gconstpointer data, guint len)g_array_insert_vals;
	GArray* function(GArray* array, guint index)g_array_remove_index;
	GArray* function(GArray* array, guint index)g_array_remove_index_fast;
	GArray* function(GArray* array, guint index, guint length)g_array_remove_range;
	void function(GArray* array, GCompareFunc compareFunc)g_array_sort;
	void function(GArray* array, GCompareDataFunc compareFunc, gpointer userData)g_array_sort_with_data;
	GArray* function(GArray* array, guint length)g_array_set_size;
	gchar* function(GArray* array, gboolean freeSegment)g_array_free;
	
	// glib.PtrArray
	
	GPtrArray* function()g_ptr_array_new;
	GPtrArray* function(guint reservedSize)g_ptr_array_sized_new;
	void function(GPtrArray* array, gpointer data)g_ptr_array_add;
	gboolean function(GPtrArray* array, gpointer data)g_ptr_array_remove;
	gpointer function(GPtrArray* array, guint index)g_ptr_array_remove_index;
	gboolean function(GPtrArray* array, gpointer data)g_ptr_array_remove_fast;
	gpointer function(GPtrArray* array, guint index)g_ptr_array_remove_index_fast;
	void function(GPtrArray* array, guint index, guint length)g_ptr_array_remove_range;
	void function(GPtrArray* array, GCompareFunc compareFunc)g_ptr_array_sort;
	void function(GPtrArray* array, GCompareDataFunc compareFunc, gpointer userData)g_ptr_array_sort_with_data;
	void function(GPtrArray* array, gint length)g_ptr_array_set_size;
	gpointer* function(GPtrArray* array, gboolean freeSeg)g_ptr_array_free;
	void function(GPtrArray* array, GFunc func, gpointer userData)g_ptr_array_foreach;
	
	// glib.ByteArray
	
	GByteArray* function()g_byte_array_new;
	GByteArray* function(guint reservedSize)g_byte_array_sized_new;
	GByteArray* function(GByteArray* array, guint8* data, guint len)g_byte_array_append;
	GByteArray* function(GByteArray* array, guint8* data, guint len)g_byte_array_prepend;
	GByteArray* function(GByteArray* array, guint index)g_byte_array_remove_index;
	GByteArray* function(GByteArray* array, guint index)g_byte_array_remove_index_fast;
	GByteArray* function(GByteArray* array, guint index, guint length)g_byte_array_remove_range;
	void function(GByteArray* array, GCompareFunc compareFunc)g_byte_array_sort;
	void function(GByteArray* array, GCompareDataFunc compareFunc, gpointer userData)g_byte_array_sort_with_data;
	GByteArray* function(GByteArray* array, guint length)g_byte_array_set_size;
	guint8* function(GByteArray* array, gboolean freeSegment)g_byte_array_free;
	
	// glib.BBTree
	
	GTree* function(GCompareFunc keyCompareFunc)g_tree_new;
	GTree* function(GCompareDataFunc keyCompareFunc, gpointer keyCompareData)g_tree_new_with_data;
	GTree* function(GCompareDataFunc keyCompareFunc, gpointer keyCompareData, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc)g_tree_new_full;
	void function(GTree* tree, gpointer key, gpointer value)g_tree_insert;
	void function(GTree* tree, gpointer key, gpointer value)g_tree_replace;
	gint function(GTree* tree)g_tree_nnodes;
	gint function(GTree* tree)g_tree_height;
	gpointer function(GTree* tree, gconstpointer key)g_tree_lookup;
	gboolean function(GTree* tree, gconstpointer lookupKey, gpointer* origKey, gpointer* value)g_tree_lookup_extended;
	void function(GTree* tree, GTraverseFunc func, gpointer userData)g_tree_foreach;
	void function(GTree* tree, GTraverseFunc traverseFunc, GTraverseType traverseType, gpointer userData)g_tree_traverse;
	gpointer function(GTree* tree, GCompareFunc searchFunc, gconstpointer userData)g_tree_search;
	gboolean function(GTree* tree, gconstpointer key)g_tree_remove;
	gboolean function(GTree* tree, gconstpointer key)g_tree_steal;
	void function(GTree* tree)g_tree_destroy;
	
	// glib.Node
	
	GNode* function(gpointer data)g_node_new;
	GNode* function(GNode* node)g_node_copy;
	GNode* function(GNode* node, GCopyFunc copyFunc, gpointer data)g_node_copy_deep;
	GNode* function(GNode* parent, gint position, GNode* node)g_node_insert;
	GNode* function(GNode* parent, GNode* sibling, GNode* node)g_node_insert_before;
	GNode* function(GNode* parent, GNode* sibling, GNode* node)g_node_insert_after;
	GNode* function(GNode* parent, GNode* node)g_node_prepend;
	void function(GNode* node)g_node_reverse_children;
	void function(GNode* root, GTraverseType order, GTraverseFlags flags, gint maxDepth, GNodeTraverseFunc func, gpointer data)g_node_traverse;
	void function(GNode* node, GTraverseFlags flags, GNodeForeachFunc func, gpointer data)g_node_children_foreach;
	GNode* function(GNode* node)g_node_get_root;
	GNode* function(GNode* root, GTraverseType order, GTraverseFlags flags, gpointer data)g_node_find;
	GNode* function(GNode* node, GTraverseFlags flags, gpointer data)g_node_find_child;
	gint function(GNode* node, gpointer data)g_node_child_index;
	gint function(GNode* node, GNode* child)g_node_child_position;
	GNode* function(GNode* node)g_node_last_child;
	GNode* function(GNode* node, guint n)g_node_nth_child;
	GNode* function(GNode* node)g_node_first_sibling;
	GNode* function(GNode* node)g_node_last_sibling;
	guint function(GNode* node)g_node_depth;
	guint function(GNode* root, GTraverseFlags flags)g_node_n_nodes;
	guint function(GNode* node)g_node_n_children;
	gboolean function(GNode* node, GNode* descendant)g_node_is_ancestor;
	guint function(GNode* root)g_node_max_height;
	void function(GNode* node)g_node_unlink;
	void function(GNode* root)g_node_destroy;
	void function(gpointer dummy)g_node_push_allocator;
	void function()g_node_pop_allocator;
	
	// glib.Quark
	
	GQuark function(gchar* string)g_quark_from_string;
	GQuark function(gchar* string)g_quark_from_static_string;
	gchar* function(GQuark quark)g_quark_to_string;
	GQuark function(gchar* string)g_quark_try_string;
	gchar* function(gchar* string)g_intern_string;
	gchar* function(gchar* string)g_intern_static_string;
	
	// glib.DataList
	
	void function(GData** datalist)g_datalist_init;
	void function(GData** datalist, GQuark keyId, gpointer data, GDestroyNotify destroyFunc)g_datalist_id_set_data_full;
	gpointer function(GData** datalist, GQuark keyId)g_datalist_id_get_data;
	gpointer function(GData** datalist, GQuark keyId)g_datalist_id_remove_no_notify;
	void function(GData** datalist, GDataForeachFunc func, gpointer userData)g_datalist_foreach;
	void function(GData** datalist)g_datalist_clear;
	void function(GData** datalist, guint flags)g_datalist_set_flags;
	void function(GData** datalist, guint flags)g_datalist_unset_flags;
	guint function(GData** datalist)g_datalist_get_flags;
	
	// glib.Dataset
	
	void function(gconstpointer datasetLocation, GQuark keyId, gpointer data, GDestroyNotify destroyFunc)g_dataset_id_set_data_full;
	gpointer function(gconstpointer datasetLocation, GQuark keyId)g_dataset_id_get_data;
	gpointer function(gconstpointer datasetLocation, GQuark keyId)g_dataset_id_remove_no_notify;
	void function(gconstpointer datasetLocation, GDataForeachFunc func, gpointer userData)g_dataset_foreach;
	void function(gconstpointer datasetLocation)g_dataset_destroy;
	
	// glib.Relation
	
	GRelation* function(gint fields)g_relation_new;
	void function(GRelation* relation, gint field, GHashFunc hashFunc, GEqualFunc keyEqualFunc)g_relation_index;
	void function(GRelation* relation, ... )g_relation_insert;
	gboolean function(GRelation* relation, ... )g_relation_exists;
	gint function(GRelation* relation, gconstpointer key, gint field)g_relation_count;
	GTuples* function(GRelation* relation, gconstpointer key, gint field)g_relation_select;
	gint function(GRelation* relation, gconstpointer key, gint field)g_relation_delete;
	void function(GRelation* relation)g_relation_destroy;
	void function(GRelation* relation)g_relation_print;
	
	// glib.Tuples
	
	void function(GTuples* tuples)g_tuples_destroy;
	gpointer function(GTuples* tuples, gint index, gint field)g_tuples_index;
	
	// glib.Cache
	
	GCache* function(GCacheNewFunc valueNewFunc, GCacheDestroyFunc valueDestroyFunc, GCacheDupFunc keyDupFunc, GCacheDestroyFunc keyDestroyFunc, GHashFunc hashKeyFunc, GHashFunc hashValueFunc, GEqualFunc keyEqualFunc)g_cache_new;
	gpointer function(GCache* cache, gpointer key)g_cache_insert;
	void function(GCache* cache, gconstpointer value)g_cache_remove;
	void function(GCache* cache)g_cache_destroy;
	void function(GCache* cache, GHFunc func, gpointer userData)g_cache_key_foreach;
	void function(GCache* cache, GHFunc func, gpointer userData)g_cache_value_foreach;
	
	// glib.Allocator
	
	GAllocator* function(gchar* name, guint nPreallocs)g_allocator_new;
	void function(GAllocator* allocator)g_allocator_free;


}

Symbol[] glibLinks = 
[

	{ "glib_check_version",  cast(void**)& glib_check_version},
	{ "g_atomic_int_get",  cast(void**)& g_atomic_int_get},
	{ "g_atomic_int_set",  cast(void**)& g_atomic_int_set},
	{ "g_atomic_int_add",  cast(void**)& g_atomic_int_add},
	{ "g_atomic_int_exchange_and_add",  cast(void**)& g_atomic_int_exchange_and_add},
	{ "g_atomic_int_compare_and_exchange",  cast(void**)& g_atomic_int_compare_and_exchange},
	{ "g_atomic_pointer_get",  cast(void**)& g_atomic_pointer_get},
	{ "g_atomic_pointer_set",  cast(void**)& g_atomic_pointer_set},
	{ "g_atomic_pointer_compare_and_exchange",  cast(void**)& g_atomic_pointer_compare_and_exchange},
	{ "g_atomic_int_inc",  cast(void**)& g_atomic_int_inc},
	{ "g_atomic_int_dec_and_test",  cast(void**)& g_atomic_int_dec_and_test},
	{ "g_main_loop_new",  cast(void**)& g_main_loop_new},
	{ "g_main_loop_ref",  cast(void**)& g_main_loop_ref},
	{ "g_main_loop_unref",  cast(void**)& g_main_loop_unref},
	{ "g_main_loop_run",  cast(void**)& g_main_loop_run},
	{ "g_main_loop_quit",  cast(void**)& g_main_loop_quit},
	{ "g_main_loop_is_running",  cast(void**)& g_main_loop_is_running},
	{ "g_main_loop_get_context",  cast(void**)& g_main_loop_get_context},
	{ "g_main_depth",  cast(void**)& g_main_depth},
	{ "g_main_current_source",  cast(void**)& g_main_current_source},
	{ "g_main_context_new",  cast(void**)& g_main_context_new},
	{ "g_main_context_ref",  cast(void**)& g_main_context_ref},
	{ "g_main_context_unref",  cast(void**)& g_main_context_unref},
	{ "g_main_context_default",  cast(void**)& g_main_context_default},
	{ "g_main_context_iteration",  cast(void**)& g_main_context_iteration},
	{ "g_main_context_pending",  cast(void**)& g_main_context_pending},
	{ "g_main_context_find_source_by_id",  cast(void**)& g_main_context_find_source_by_id},
	{ "g_main_context_find_source_by_user_data",  cast(void**)& g_main_context_find_source_by_user_data},
	{ "g_main_context_find_source_by_funcs_user_data",  cast(void**)& g_main_context_find_source_by_funcs_user_data},
	{ "g_main_context_wakeup",  cast(void**)& g_main_context_wakeup},
	{ "g_main_context_acquire",  cast(void**)& g_main_context_acquire},
	{ "g_main_context_release",  cast(void**)& g_main_context_release},
	{ "g_main_context_is_owner",  cast(void**)& g_main_context_is_owner},
	{ "g_main_context_wait",  cast(void**)& g_main_context_wait},
	{ "g_main_context_prepare",  cast(void**)& g_main_context_prepare},
	{ "g_main_context_query",  cast(void**)& g_main_context_query},
	{ "g_main_context_check",  cast(void**)& g_main_context_check},
	{ "g_main_context_dispatch",  cast(void**)& g_main_context_dispatch},
	{ "g_main_context_set_poll_func",  cast(void**)& g_main_context_set_poll_func},
	{ "g_main_context_get_poll_func",  cast(void**)& g_main_context_get_poll_func},
	{ "g_main_context_add_poll",  cast(void**)& g_main_context_add_poll},
	{ "g_main_context_remove_poll",  cast(void**)& g_main_context_remove_poll},
	{ "g_timeout_source_new",  cast(void**)& g_timeout_source_new},
	{ "g_timeout_source_new_seconds",  cast(void**)& g_timeout_source_new_seconds},
	{ "g_timeout_add",  cast(void**)& g_timeout_add},
	{ "g_timeout_add_full",  cast(void**)& g_timeout_add_full},
	{ "g_timeout_add_seconds",  cast(void**)& g_timeout_add_seconds},
	{ "g_timeout_add_seconds_full",  cast(void**)& g_timeout_add_seconds_full},
	{ "g_idle_source_new",  cast(void**)& g_idle_source_new},
	{ "g_idle_add",  cast(void**)& g_idle_add},
	{ "g_idle_add_full",  cast(void**)& g_idle_add_full},
	{ "g_idle_remove_by_data",  cast(void**)& g_idle_remove_by_data},
	{ "g_child_watch_source_new",  cast(void**)& g_child_watch_source_new},
	{ "g_child_watch_add",  cast(void**)& g_child_watch_add},
	{ "g_child_watch_add_full",  cast(void**)& g_child_watch_add_full},
	{ "g_source_new",  cast(void**)& g_source_new},
	{ "g_source_ref",  cast(void**)& g_source_ref},
	{ "g_source_unref",  cast(void**)& g_source_unref},
	{ "g_source_set_funcs",  cast(void**)& g_source_set_funcs},
	{ "g_source_attach",  cast(void**)& g_source_attach},
	{ "g_source_destroy",  cast(void**)& g_source_destroy},
	{ "g_source_is_destroyed",  cast(void**)& g_source_is_destroyed},
	{ "g_source_set_priority",  cast(void**)& g_source_set_priority},
	{ "g_source_get_priority",  cast(void**)& g_source_get_priority},
	{ "g_source_set_can_recurse",  cast(void**)& g_source_set_can_recurse},
	{ "g_source_get_can_recurse",  cast(void**)& g_source_get_can_recurse},
	{ "g_source_get_id",  cast(void**)& g_source_get_id},
	{ "g_source_get_context",  cast(void**)& g_source_get_context},
	{ "g_source_set_callback",  cast(void**)& g_source_set_callback},
	{ "g_source_set_callback_indirect",  cast(void**)& g_source_set_callback_indirect},
	{ "g_source_add_poll",  cast(void**)& g_source_add_poll},
	{ "g_source_remove_poll",  cast(void**)& g_source_remove_poll},
	{ "g_source_get_current_time",  cast(void**)& g_source_get_current_time},
	{ "g_source_remove",  cast(void**)& g_source_remove},
	{ "g_source_remove_by_funcs_user_data",  cast(void**)& g_source_remove_by_funcs_user_data},
	{ "g_source_remove_by_user_data",  cast(void**)& g_source_remove_by_user_data},
	{ "g_thread_pool_new",  cast(void**)& g_thread_pool_new},
	{ "g_thread_pool_push",  cast(void**)& g_thread_pool_push},
	{ "g_thread_pool_set_max_threads",  cast(void**)& g_thread_pool_set_max_threads},
	{ "g_thread_pool_get_max_threads",  cast(void**)& g_thread_pool_get_max_threads},
	{ "g_thread_pool_get_num_threads",  cast(void**)& g_thread_pool_get_num_threads},
	{ "g_thread_pool_unprocessed",  cast(void**)& g_thread_pool_unprocessed},
	{ "g_thread_pool_free",  cast(void**)& g_thread_pool_free},
	{ "g_thread_pool_set_max_unused_threads",  cast(void**)& g_thread_pool_set_max_unused_threads},
	{ "g_thread_pool_get_max_unused_threads",  cast(void**)& g_thread_pool_get_max_unused_threads},
	{ "g_thread_pool_get_num_unused_threads",  cast(void**)& g_thread_pool_get_num_unused_threads},
	{ "g_thread_pool_stop_unused_threads",  cast(void**)& g_thread_pool_stop_unused_threads},
	{ "g_thread_pool_set_sort_function",  cast(void**)& g_thread_pool_set_sort_function},
	{ "g_thread_pool_set_max_idle_time",  cast(void**)& g_thread_pool_set_max_idle_time},
	{ "g_thread_pool_get_max_idle_time",  cast(void**)& g_thread_pool_get_max_idle_time},
	{ "g_async_queue_new",  cast(void**)& g_async_queue_new},
	{ "g_async_queue_new_full",  cast(void**)& g_async_queue_new_full},
	{ "g_async_queue_ref",  cast(void**)& g_async_queue_ref},
	{ "g_async_queue_unref",  cast(void**)& g_async_queue_unref},
	{ "g_async_queue_push",  cast(void**)& g_async_queue_push},
	{ "g_async_queue_push_sorted",  cast(void**)& g_async_queue_push_sorted},
	{ "g_async_queue_pop",  cast(void**)& g_async_queue_pop},
	{ "g_async_queue_try_pop",  cast(void**)& g_async_queue_try_pop},
	{ "g_async_queue_timed_pop",  cast(void**)& g_async_queue_timed_pop},
	{ "g_async_queue_length",  cast(void**)& g_async_queue_length},
	{ "g_async_queue_sort",  cast(void**)& g_async_queue_sort},
	{ "g_async_queue_lock",  cast(void**)& g_async_queue_lock},
	{ "g_async_queue_unlock",  cast(void**)& g_async_queue_unlock},
	{ "g_async_queue_ref_unlocked",  cast(void**)& g_async_queue_ref_unlocked},
	{ "g_async_queue_unref_and_unlock",  cast(void**)& g_async_queue_unref_and_unlock},
	{ "g_async_queue_push_unlocked",  cast(void**)& g_async_queue_push_unlocked},
	{ "g_async_queue_push_sorted_unlocked",  cast(void**)& g_async_queue_push_sorted_unlocked},
	{ "g_async_queue_pop_unlocked",  cast(void**)& g_async_queue_pop_unlocked},
	{ "g_async_queue_try_pop_unlocked",  cast(void**)& g_async_queue_try_pop_unlocked},
	{ "g_async_queue_timed_pop_unlocked",  cast(void**)& g_async_queue_timed_pop_unlocked},
	{ "g_async_queue_length_unlocked",  cast(void**)& g_async_queue_length_unlocked},
	{ "g_async_queue_sort_unlocked",  cast(void**)& g_async_queue_sort_unlocked},
	{ "g_module_supported",  cast(void**)& g_module_supported},
	{ "g_module_build_path",  cast(void**)& g_module_build_path},
	{ "g_module_open",  cast(void**)& g_module_open},
	{ "g_module_symbol",  cast(void**)& g_module_symbol},
	{ "g_module_name",  cast(void**)& g_module_name},
	{ "g_module_make_resident",  cast(void**)& g_module_make_resident},
	{ "g_module_close",  cast(void**)& g_module_close},
	{ "g_module_error",  cast(void**)& g_module_error},
	{ "g_malloc",  cast(void**)& g_malloc},
	{ "g_malloc0",  cast(void**)& g_malloc0},
	{ "g_realloc",  cast(void**)& g_realloc},
	{ "g_try_malloc",  cast(void**)& g_try_malloc},
	{ "g_try_malloc0",  cast(void**)& g_try_malloc0},
	{ "g_try_realloc",  cast(void**)& g_try_realloc},
	{ "g_free",  cast(void**)& g_free},
	{ "g_memdup",  cast(void**)& g_memdup},
	{ "g_mem_set_vtable",  cast(void**)& g_mem_set_vtable},
	{ "g_mem_is_system_malloc",  cast(void**)& g_mem_is_system_malloc},
	{ "g_mem_profile",  cast(void**)& g_mem_profile},
	{ "g_io_channel_unix_new",  cast(void**)& g_io_channel_unix_new},
	{ "g_io_channel_unix_get_fd",  cast(void**)& g_io_channel_unix_get_fd},
	{ "g_io_channel_win32_new_fd",  cast(void**)& g_io_channel_win32_new_fd},
	{ "g_io_channel_win32_new_socket",  cast(void**)& g_io_channel_win32_new_socket},
	{ "g_io_channel_win32_new_messages",  cast(void**)& g_io_channel_win32_new_messages},
	{ "g_io_channel_init",  cast(void**)& g_io_channel_init},
	{ "g_io_channel_new_file",  cast(void**)& g_io_channel_new_file},
	{ "g_io_channel_read_chars",  cast(void**)& g_io_channel_read_chars},
	{ "g_io_channel_read_unichar",  cast(void**)& g_io_channel_read_unichar},
	{ "g_io_channel_read_line",  cast(void**)& g_io_channel_read_line},
	{ "g_io_channel_read_line_string",  cast(void**)& g_io_channel_read_line_string},
	{ "g_io_channel_read_to_end",  cast(void**)& g_io_channel_read_to_end},
	{ "g_io_channel_write_chars",  cast(void**)& g_io_channel_write_chars},
	{ "g_io_channel_write_unichar",  cast(void**)& g_io_channel_write_unichar},
	{ "g_io_channel_flush",  cast(void**)& g_io_channel_flush},
	{ "g_io_channel_seek_position",  cast(void**)& g_io_channel_seek_position},
	{ "g_io_channel_shutdown",  cast(void**)& g_io_channel_shutdown},
	{ "g_io_channel_error_from_errno",  cast(void**)& g_io_channel_error_from_errno},
	{ "g_io_channel_ref",  cast(void**)& g_io_channel_ref},
	{ "g_io_channel_unref",  cast(void**)& g_io_channel_unref},
	{ "g_io_create_watch",  cast(void**)& g_io_create_watch},
	{ "g_io_add_watch",  cast(void**)& g_io_add_watch},
	{ "g_io_add_watch_full",  cast(void**)& g_io_add_watch_full},
	{ "g_io_channel_get_buffer_size",  cast(void**)& g_io_channel_get_buffer_size},
	{ "g_io_channel_set_buffer_size",  cast(void**)& g_io_channel_set_buffer_size},
	{ "g_io_channel_get_buffer_condition",  cast(void**)& g_io_channel_get_buffer_condition},
	{ "g_io_channel_get_flags",  cast(void**)& g_io_channel_get_flags},
	{ "g_io_channel_set_flags",  cast(void**)& g_io_channel_set_flags},
	{ "g_io_channel_get_line_term",  cast(void**)& g_io_channel_get_line_term},
	{ "g_io_channel_set_line_term",  cast(void**)& g_io_channel_set_line_term},
	{ "g_io_channel_get_buffered",  cast(void**)& g_io_channel_get_buffered},
	{ "g_io_channel_set_buffered",  cast(void**)& g_io_channel_set_buffered},
	{ "g_io_channel_get_encoding",  cast(void**)& g_io_channel_get_encoding},
	{ "g_io_channel_set_encoding",  cast(void**)& g_io_channel_set_encoding},
	{ "g_io_channel_get_close_on_unref",  cast(void**)& g_io_channel_get_close_on_unref},
	{ "g_io_channel_set_close_on_unref",  cast(void**)& g_io_channel_set_close_on_unref},
	{ "g_io_channel_read",  cast(void**)& g_io_channel_read},
	{ "g_io_channel_write",  cast(void**)& g_io_channel_write},
	{ "g_io_channel_seek",  cast(void**)& g_io_channel_seek},
	{ "g_io_channel_close",  cast(void**)& g_io_channel_close},
	{ "g_error_new",  cast(void**)& g_error_new},
	{ "g_error_new_literal",  cast(void**)& g_error_new_literal},
	{ "g_error_free",  cast(void**)& g_error_free},
	{ "g_error_copy",  cast(void**)& g_error_copy},
	{ "g_error_matches",  cast(void**)& g_error_matches},
	{ "g_set_error",  cast(void**)& g_set_error},
	{ "g_propagate_error",  cast(void**)& g_propagate_error},
	{ "g_clear_error",  cast(void**)& g_clear_error},
	{ "g_prefix_error",  cast(void**)& g_prefix_error},
	{ "g_propagate_prefixed_error",  cast(void**)& g_propagate_prefixed_error},
	{ "g_print",  cast(void**)& g_print},
	{ "g_set_print_handler",  cast(void**)& g_set_print_handler},
	{ "g_printerr",  cast(void**)& g_printerr},
	{ "g_set_printerr_handler",  cast(void**)& g_set_printerr_handler},
	{ "g_warn_message",  cast(void**)& g_warn_message},
	{ "g_on_error_query",  cast(void**)& g_on_error_query},
	{ "g_on_error_stack_trace",  cast(void**)& g_on_error_stack_trace},
	{ "g_log",  cast(void**)& g_log},
	{ "g_logv",  cast(void**)& g_logv},
	{ "g_log_set_handler",  cast(void**)& g_log_set_handler},
	{ "g_log_remove_handler",  cast(void**)& g_log_remove_handler},
	{ "g_log_set_always_fatal",  cast(void**)& g_log_set_always_fatal},
	{ "g_log_set_fatal_mask",  cast(void**)& g_log_set_fatal_mask},
	{ "g_log_default_handler",  cast(void**)& g_log_default_handler},
	{ "g_log_set_default_handler",  cast(void**)& g_log_set_default_handler},
	{ "g_strdup",  cast(void**)& g_strdup},
	{ "g_strndup",  cast(void**)& g_strndup},
	{ "g_strdupv",  cast(void**)& g_strdupv},
	{ "g_strnfill",  cast(void**)& g_strnfill},
	{ "g_stpcpy",  cast(void**)& g_stpcpy},
	{ "g_strstr_len",  cast(void**)& g_strstr_len},
	{ "g_strrstr",  cast(void**)& g_strrstr},
	{ "g_strrstr_len",  cast(void**)& g_strrstr_len},
	{ "g_str_has_prefix",  cast(void**)& g_str_has_prefix},
	{ "g_str_has_suffix",  cast(void**)& g_str_has_suffix},
	{ "g_strlcpy",  cast(void**)& g_strlcpy},
	{ "g_strlcat",  cast(void**)& g_strlcat},
	{ "g_strdup_printf",  cast(void**)& g_strdup_printf},
	{ "g_strdup_vprintf",  cast(void**)& g_strdup_vprintf},
	{ "g_printf",  cast(void**)& g_printf},
	{ "g_vprintf",  cast(void**)& g_vprintf},
	{ "g_fprintf",  cast(void**)& g_fprintf},
	{ "g_vfprintf",  cast(void**)& g_vfprintf},
	{ "g_sprintf",  cast(void**)& g_sprintf},
	{ "g_vsprintf",  cast(void**)& g_vsprintf},
	{ "g_snprintf",  cast(void**)& g_snprintf},
	{ "g_vsnprintf",  cast(void**)& g_vsnprintf},
	{ "g_vasprintf",  cast(void**)& g_vasprintf},
	{ "g_printf_string_upper_bound",  cast(void**)& g_printf_string_upper_bound},
	{ "g_ascii_isalnum",  cast(void**)& g_ascii_isalnum},
	{ "g_ascii_isalpha",  cast(void**)& g_ascii_isalpha},
	{ "g_ascii_iscntrl",  cast(void**)& g_ascii_iscntrl},
	{ "g_ascii_isdigit",  cast(void**)& g_ascii_isdigit},
	{ "g_ascii_isgraph",  cast(void**)& g_ascii_isgraph},
	{ "g_ascii_islower",  cast(void**)& g_ascii_islower},
	{ "g_ascii_isprint",  cast(void**)& g_ascii_isprint},
	{ "g_ascii_ispunct",  cast(void**)& g_ascii_ispunct},
	{ "g_ascii_isspace",  cast(void**)& g_ascii_isspace},
	{ "g_ascii_isupper",  cast(void**)& g_ascii_isupper},
	{ "g_ascii_isxdigit",  cast(void**)& g_ascii_isxdigit},
	{ "g_ascii_digit_value",  cast(void**)& g_ascii_digit_value},
	{ "g_ascii_xdigit_value",  cast(void**)& g_ascii_xdigit_value},
	{ "g_ascii_strcasecmp",  cast(void**)& g_ascii_strcasecmp},
	{ "g_ascii_strncasecmp",  cast(void**)& g_ascii_strncasecmp},
	{ "g_ascii_strup",  cast(void**)& g_ascii_strup},
	{ "g_ascii_strdown",  cast(void**)& g_ascii_strdown},
	{ "g_ascii_tolower",  cast(void**)& g_ascii_tolower},
	{ "g_ascii_toupper",  cast(void**)& g_ascii_toupper},
	{ "g_string_ascii_up",  cast(void**)& g_string_ascii_up},
	{ "g_string_ascii_down",  cast(void**)& g_string_ascii_down},
	{ "g_strup",  cast(void**)& g_strup},
	{ "g_strdown",  cast(void**)& g_strdown},
	{ "g_strcasecmp",  cast(void**)& g_strcasecmp},
	{ "g_strncasecmp",  cast(void**)& g_strncasecmp},
	{ "g_strreverse",  cast(void**)& g_strreverse},
	{ "g_ascii_strtoll",  cast(void**)& g_ascii_strtoll},
	{ "g_ascii_strtoull",  cast(void**)& g_ascii_strtoull},
	{ "g_ascii_strtod",  cast(void**)& g_ascii_strtod},
	{ "g_ascii_dtostr",  cast(void**)& g_ascii_dtostr},
	{ "g_ascii_formatd",  cast(void**)& g_ascii_formatd},
	{ "g_strtod",  cast(void**)& g_strtod},
	{ "g_strchug",  cast(void**)& g_strchug},
	{ "g_strchomp",  cast(void**)& g_strchomp},
	{ "g_strdelimit",  cast(void**)& g_strdelimit},
	{ "g_strescape",  cast(void**)& g_strescape},
	{ "g_strcompress",  cast(void**)& g_strcompress},
	{ "g_strcanon",  cast(void**)& g_strcanon},
	{ "g_strsplit",  cast(void**)& g_strsplit},
	{ "g_strsplit_set",  cast(void**)& g_strsplit_set},
	{ "g_strfreev",  cast(void**)& g_strfreev},
	{ "g_strconcat",  cast(void**)& g_strconcat},
	{ "g_strjoin",  cast(void**)& g_strjoin},
	{ "g_strjoinv",  cast(void**)& g_strjoinv},
	{ "g_strv_length",  cast(void**)& g_strv_length},
	{ "g_strerror",  cast(void**)& g_strerror},
	{ "g_strsignal",  cast(void**)& g_strsignal},
	{ "g_convert",  cast(void**)& g_convert},
	{ "g_convert_with_fallback",  cast(void**)& g_convert_with_fallback},
	{ "g_locale_to_utf8",  cast(void**)& g_locale_to_utf8},
	{ "g_filename_to_utf8",  cast(void**)& g_filename_to_utf8},
	{ "g_filename_from_utf8",  cast(void**)& g_filename_from_utf8},
	{ "g_filename_from_uri",  cast(void**)& g_filename_from_uri},
	{ "g_filename_to_uri",  cast(void**)& g_filename_to_uri},
	{ "g_get_filename_charsets",  cast(void**)& g_get_filename_charsets},
	{ "g_filename_display_name",  cast(void**)& g_filename_display_name},
	{ "g_filename_display_basename",  cast(void**)& g_filename_display_basename},
	{ "g_uri_list_extract_uris",  cast(void**)& g_uri_list_extract_uris},
	{ "g_locale_from_utf8",  cast(void**)& g_locale_from_utf8},
	{ "g_get_charset",  cast(void**)& g_get_charset},
	{ "g_unichar_validate",  cast(void**)& g_unichar_validate},
	{ "g_unichar_isalnum",  cast(void**)& g_unichar_isalnum},
	{ "g_unichar_isalpha",  cast(void**)& g_unichar_isalpha},
	{ "g_unichar_iscntrl",  cast(void**)& g_unichar_iscntrl},
	{ "g_unichar_isdefined",  cast(void**)& g_unichar_isdefined},
	{ "g_unichar_isdigit",  cast(void**)& g_unichar_isdigit},
	{ "g_unichar_isgraph",  cast(void**)& g_unichar_isgraph},
	{ "g_unichar_islower",  cast(void**)& g_unichar_islower},
	{ "g_unichar_ismark",  cast(void**)& g_unichar_ismark},
	{ "g_unichar_isprint",  cast(void**)& g_unichar_isprint},
	{ "g_unichar_ispunct",  cast(void**)& g_unichar_ispunct},
	{ "g_unichar_isspace",  cast(void**)& g_unichar_isspace},
	{ "g_unichar_istitle",  cast(void**)& g_unichar_istitle},
	{ "g_unichar_isupper",  cast(void**)& g_unichar_isupper},
	{ "g_unichar_isxdigit",  cast(void**)& g_unichar_isxdigit},
	{ "g_unichar_iswide",  cast(void**)& g_unichar_iswide},
	{ "g_unichar_iswide_cjk",  cast(void**)& g_unichar_iswide_cjk},
	{ "g_unichar_iszerowidth",  cast(void**)& g_unichar_iszerowidth},
	{ "g_unichar_toupper",  cast(void**)& g_unichar_toupper},
	{ "g_unichar_tolower",  cast(void**)& g_unichar_tolower},
	{ "g_unichar_totitle",  cast(void**)& g_unichar_totitle},
	{ "g_unichar_digit_value",  cast(void**)& g_unichar_digit_value},
	{ "g_unichar_xdigit_value",  cast(void**)& g_unichar_xdigit_value},
	{ "g_unichar_type",  cast(void**)& g_unichar_type},
	{ "g_unichar_break_type",  cast(void**)& g_unichar_break_type},
	{ "g_unichar_combining_class",  cast(void**)& g_unichar_combining_class},
	{ "g_unicode_canonical_ordering",  cast(void**)& g_unicode_canonical_ordering},
	{ "g_unicode_canonical_decomposition",  cast(void**)& g_unicode_canonical_decomposition},
	{ "g_unichar_get_mirror_char",  cast(void**)& g_unichar_get_mirror_char},
	{ "g_unichar_get_script",  cast(void**)& g_unichar_get_script},
	{ "g_utf8_get_char",  cast(void**)& g_utf8_get_char},
	{ "g_utf8_get_char_validated",  cast(void**)& g_utf8_get_char_validated},
	{ "g_utf8_offset_to_pointer",  cast(void**)& g_utf8_offset_to_pointer},
	{ "g_utf8_pointer_to_offset",  cast(void**)& g_utf8_pointer_to_offset},
	{ "g_utf8_prev_char",  cast(void**)& g_utf8_prev_char},
	{ "g_utf8_find_next_char",  cast(void**)& g_utf8_find_next_char},
	{ "g_utf8_find_prev_char",  cast(void**)& g_utf8_find_prev_char},
	{ "g_utf8_strlen",  cast(void**)& g_utf8_strlen},
	{ "g_utf8_strncpy",  cast(void**)& g_utf8_strncpy},
	{ "g_utf8_strchr",  cast(void**)& g_utf8_strchr},
	{ "g_utf8_strrchr",  cast(void**)& g_utf8_strrchr},
	{ "g_utf8_strreverse",  cast(void**)& g_utf8_strreverse},
	{ "g_utf8_validate",  cast(void**)& g_utf8_validate},
	{ "g_utf8_strup",  cast(void**)& g_utf8_strup},
	{ "g_utf8_strdown",  cast(void**)& g_utf8_strdown},
	{ "g_utf8_casefold",  cast(void**)& g_utf8_casefold},
	{ "g_utf8_normalize",  cast(void**)& g_utf8_normalize},
	{ "g_utf8_collate",  cast(void**)& g_utf8_collate},
	{ "g_utf8_collate_key",  cast(void**)& g_utf8_collate_key},
	{ "g_utf8_collate_key_for_filename",  cast(void**)& g_utf8_collate_key_for_filename},
	{ "g_utf8_to_utf16",  cast(void**)& g_utf8_to_utf16},
	{ "g_utf8_to_ucs4",  cast(void**)& g_utf8_to_ucs4},
	{ "g_utf8_to_ucs4_fast",  cast(void**)& g_utf8_to_ucs4_fast},
	{ "g_utf16_to_ucs4",  cast(void**)& g_utf16_to_ucs4},
	{ "g_utf16_to_utf8",  cast(void**)& g_utf16_to_utf8},
	{ "g_ucs4_to_utf16",  cast(void**)& g_ucs4_to_utf16},
	{ "g_ucs4_to_utf8",  cast(void**)& g_ucs4_to_utf8},
	{ "g_unichar_to_utf8",  cast(void**)& g_unichar_to_utf8},
	{ "g_base64_encode_step",  cast(void**)& g_base64_encode_step},
	{ "g_base64_encode_close",  cast(void**)& g_base64_encode_close},
	{ "g_base64_encode",  cast(void**)& g_base64_encode},
	{ "g_base64_decode_step",  cast(void**)& g_base64_decode_step},
	{ "g_base64_decode",  cast(void**)& g_base64_decode},
	{ "g_checksum_type_get_length",  cast(void**)& g_checksum_type_get_length},
	{ "g_checksum_new",  cast(void**)& g_checksum_new},
	{ "g_checksum_copy",  cast(void**)& g_checksum_copy},
	{ "g_checksum_free",  cast(void**)& g_checksum_free},
	{ "g_checksum_update",  cast(void**)& g_checksum_update},
	{ "g_checksum_get_string",  cast(void**)& g_checksum_get_string},
	{ "g_checksum_get_digest",  cast(void**)& g_checksum_get_digest},
	{ "g_compute_checksum_for_data",  cast(void**)& g_compute_checksum_for_data},
	{ "g_compute_checksum_for_string",  cast(void**)& g_compute_checksum_for_string},
	{ "g_strip_context",  cast(void**)& g_strip_context},
	{ "g_dpgettext",  cast(void**)& g_dpgettext},
	{ "g_get_language_names",  cast(void**)& g_get_language_names},
	{ "g_get_current_time",  cast(void**)& g_get_current_time},
	{ "g_usleep",  cast(void**)& g_usleep},
	{ "g_time_val_add",  cast(void**)& g_time_val_add},
	{ "g_time_val_from_iso8601",  cast(void**)& g_time_val_from_iso8601},
	{ "g_time_val_to_iso8601",  cast(void**)& g_time_val_to_iso8601},
	{ "g_date_new",  cast(void**)& g_date_new},
	{ "g_date_new_dmy",  cast(void**)& g_date_new_dmy},
	{ "g_date_new_julian",  cast(void**)& g_date_new_julian},
	{ "g_date_clear",  cast(void**)& g_date_clear},
	{ "g_date_free",  cast(void**)& g_date_free},
	{ "g_date_set_day",  cast(void**)& g_date_set_day},
	{ "g_date_set_month",  cast(void**)& g_date_set_month},
	{ "g_date_set_year",  cast(void**)& g_date_set_year},
	{ "g_date_set_dmy",  cast(void**)& g_date_set_dmy},
	{ "g_date_set_julian",  cast(void**)& g_date_set_julian},
	{ "g_date_set_time",  cast(void**)& g_date_set_time},
	{ "g_date_set_time_t",  cast(void**)& g_date_set_time_t},
	{ "g_date_set_time_val",  cast(void**)& g_date_set_time_val},
	{ "g_date_set_parse",  cast(void**)& g_date_set_parse},
	{ "g_date_add_days",  cast(void**)& g_date_add_days},
	{ "g_date_subtract_days",  cast(void**)& g_date_subtract_days},
	{ "g_date_add_months",  cast(void**)& g_date_add_months},
	{ "g_date_subtract_months",  cast(void**)& g_date_subtract_months},
	{ "g_date_add_years",  cast(void**)& g_date_add_years},
	{ "g_date_subtract_years",  cast(void**)& g_date_subtract_years},
	{ "g_date_days_between",  cast(void**)& g_date_days_between},
	{ "g_date_compare",  cast(void**)& g_date_compare},
	{ "g_date_clamp",  cast(void**)& g_date_clamp},
	{ "g_date_order",  cast(void**)& g_date_order},
	{ "g_date_get_day",  cast(void**)& g_date_get_day},
	{ "g_date_get_month",  cast(void**)& g_date_get_month},
	{ "g_date_get_year",  cast(void**)& g_date_get_year},
	{ "g_date_get_julian",  cast(void**)& g_date_get_julian},
	{ "g_date_get_weekday",  cast(void**)& g_date_get_weekday},
	{ "g_date_get_day_of_year",  cast(void**)& g_date_get_day_of_year},
	{ "g_date_get_days_in_month",  cast(void**)& g_date_get_days_in_month},
	{ "g_date_is_first_of_month",  cast(void**)& g_date_is_first_of_month},
	{ "g_date_is_last_of_month",  cast(void**)& g_date_is_last_of_month},
	{ "g_date_is_leap_year",  cast(void**)& g_date_is_leap_year},
	{ "g_date_get_monday_week_of_year",  cast(void**)& g_date_get_monday_week_of_year},
	{ "g_date_get_monday_weeks_in_year",  cast(void**)& g_date_get_monday_weeks_in_year},
	{ "g_date_get_sunday_week_of_year",  cast(void**)& g_date_get_sunday_week_of_year},
	{ "g_date_get_sunday_weeks_in_year",  cast(void**)& g_date_get_sunday_weeks_in_year},
	{ "g_date_get_iso8601_week_of_year",  cast(void**)& g_date_get_iso8601_week_of_year},
	{ "g_date_strftime",  cast(void**)& g_date_strftime},
	{ "g_date_to_struct_tm",  cast(void**)& g_date_to_struct_tm},
	{ "g_date_valid",  cast(void**)& g_date_valid},
	{ "g_date_valid_day",  cast(void**)& g_date_valid_day},
	{ "g_date_valid_month",  cast(void**)& g_date_valid_month},
	{ "g_date_valid_year",  cast(void**)& g_date_valid_year},
	{ "g_date_valid_dmy",  cast(void**)& g_date_valid_dmy},
	{ "g_date_valid_julian",  cast(void**)& g_date_valid_julian},
	{ "g_date_valid_weekday",  cast(void**)& g_date_valid_weekday},
	{ "g_rand_new_with_seed",  cast(void**)& g_rand_new_with_seed},
	{ "g_rand_new_with_seed_array",  cast(void**)& g_rand_new_with_seed_array},
	{ "g_rand_new",  cast(void**)& g_rand_new},
	{ "g_rand_copy",  cast(void**)& g_rand_copy},
	{ "g_rand_free",  cast(void**)& g_rand_free},
	{ "g_rand_set_seed",  cast(void**)& g_rand_set_seed},
	{ "g_rand_set_seed_array",  cast(void**)& g_rand_set_seed_array},
	{ "g_rand_int",  cast(void**)& g_rand_int},
	{ "g_rand_int_range",  cast(void**)& g_rand_int_range},
	{ "g_rand_double",  cast(void**)& g_rand_double},
	{ "g_rand_double_range",  cast(void**)& g_rand_double_range},
	{ "g_random_set_seed",  cast(void**)& g_random_set_seed},
	{ "g_random_int",  cast(void**)& g_random_int},
	{ "g_random_int_range",  cast(void**)& g_random_int_range},
	{ "g_random_double",  cast(void**)& g_random_double},
	{ "g_random_double_range",  cast(void**)& g_random_double_range},
	{ "g_get_application_name",  cast(void**)& g_get_application_name},
	{ "g_set_application_name",  cast(void**)& g_set_application_name},
	{ "g_get_prgname",  cast(void**)& g_get_prgname},
	{ "g_set_prgname",  cast(void**)& g_set_prgname},
	{ "g_getenv",  cast(void**)& g_getenv},
	{ "g_setenv",  cast(void**)& g_setenv},
	{ "g_unsetenv",  cast(void**)& g_unsetenv},
	{ "g_listenv",  cast(void**)& g_listenv},
	{ "g_get_user_name",  cast(void**)& g_get_user_name},
	{ "g_get_real_name",  cast(void**)& g_get_real_name},
	{ "g_get_user_cache_dir",  cast(void**)& g_get_user_cache_dir},
	{ "g_get_user_data_dir",  cast(void**)& g_get_user_data_dir},
	{ "g_get_user_config_dir",  cast(void**)& g_get_user_config_dir},
	{ "g_get_user_special_dir",  cast(void**)& g_get_user_special_dir},
	{ "g_get_system_data_dirs",  cast(void**)& g_get_system_data_dirs},
	{ "g_get_system_config_dirs",  cast(void**)& g_get_system_config_dirs},
	{ "g_get_host_name",  cast(void**)& g_get_host_name},
	{ "g_get_home_dir",  cast(void**)& g_get_home_dir},
	{ "g_get_tmp_dir",  cast(void**)& g_get_tmp_dir},
	{ "g_get_current_dir",  cast(void**)& g_get_current_dir},
	{ "g_basename",  cast(void**)& g_basename},
	{ "g_path_is_absolute",  cast(void**)& g_path_is_absolute},
	{ "g_path_skip_root",  cast(void**)& g_path_skip_root},
	{ "g_path_get_basename",  cast(void**)& g_path_get_basename},
	{ "g_path_get_dirname",  cast(void**)& g_path_get_dirname},
	{ "g_build_filename",  cast(void**)& g_build_filename},
	{ "g_build_filenamev",  cast(void**)& g_build_filenamev},
	{ "g_build_path",  cast(void**)& g_build_path},
	{ "g_build_pathv",  cast(void**)& g_build_pathv},
	{ "g_format_size_for_display",  cast(void**)& g_format_size_for_display},
	{ "g_find_program_in_path",  cast(void**)& g_find_program_in_path},
	{ "g_bit_nth_lsf",  cast(void**)& g_bit_nth_lsf},
	{ "g_bit_nth_msf",  cast(void**)& g_bit_nth_msf},
	{ "g_bit_storage",  cast(void**)& g_bit_storage},
	{ "g_spaced_primes_closest",  cast(void**)& g_spaced_primes_closest},
	{ "g_atexit",  cast(void**)& g_atexit},
	{ "g_parse_debug_string",  cast(void**)& g_parse_debug_string},
	{ "g_qsort_with_data",  cast(void**)& g_qsort_with_data},
	{ "g_nullify_pointer",  cast(void**)& g_nullify_pointer},
	{ "g_scanner_new",  cast(void**)& g_scanner_new},
	{ "g_scanner_destroy",  cast(void**)& g_scanner_destroy},
	{ "g_scanner_input_file",  cast(void**)& g_scanner_input_file},
	{ "g_scanner_sync_file_offset",  cast(void**)& g_scanner_sync_file_offset},
	{ "g_scanner_input_text",  cast(void**)& g_scanner_input_text},
	{ "g_scanner_peek_next_token",  cast(void**)& g_scanner_peek_next_token},
	{ "g_scanner_get_next_token",  cast(void**)& g_scanner_get_next_token},
	{ "g_scanner_eof",  cast(void**)& g_scanner_eof},
	{ "g_scanner_cur_line",  cast(void**)& g_scanner_cur_line},
	{ "g_scanner_cur_position",  cast(void**)& g_scanner_cur_position},
	{ "g_scanner_cur_token",  cast(void**)& g_scanner_cur_token},
	{ "g_scanner_cur_value",  cast(void**)& g_scanner_cur_value},
	{ "g_scanner_set_scope",  cast(void**)& g_scanner_set_scope},
	{ "g_scanner_scope_add_symbol",  cast(void**)& g_scanner_scope_add_symbol},
	{ "g_scanner_scope_foreach_symbol",  cast(void**)& g_scanner_scope_foreach_symbol},
	{ "g_scanner_scope_lookup_symbol",  cast(void**)& g_scanner_scope_lookup_symbol},
	{ "g_scanner_scope_remove_symbol",  cast(void**)& g_scanner_scope_remove_symbol},
	{ "g_scanner_lookup_symbol",  cast(void**)& g_scanner_lookup_symbol},
	{ "g_scanner_warn",  cast(void**)& g_scanner_warn},
	{ "g_scanner_error",  cast(void**)& g_scanner_error},
	{ "g_scanner_unexp_token",  cast(void**)& g_scanner_unexp_token},
	{ "g_completion_new",  cast(void**)& g_completion_new},
	{ "g_completion_add_items",  cast(void**)& g_completion_add_items},
	{ "g_completion_remove_items",  cast(void**)& g_completion_remove_items},
	{ "g_completion_clear_items",  cast(void**)& g_completion_clear_items},
	{ "g_completion_complete",  cast(void**)& g_completion_complete},
	{ "g_completion_complete_utf8",  cast(void**)& g_completion_complete_utf8},
	{ "g_completion_set_compare",  cast(void**)& g_completion_set_compare},
	{ "g_completion_free",  cast(void**)& g_completion_free},
	{ "g_timer_new",  cast(void**)& g_timer_new},
	{ "g_timer_start",  cast(void**)& g_timer_start},
	{ "g_timer_stop",  cast(void**)& g_timer_stop},
	{ "g_timer_continue",  cast(void**)& g_timer_continue},
	{ "g_timer_elapsed",  cast(void**)& g_timer_elapsed},
	{ "g_timer_reset",  cast(void**)& g_timer_reset},
	{ "g_timer_destroy",  cast(void**)& g_timer_destroy},
	{ "g_spawn_async_with_pipes",  cast(void**)& g_spawn_async_with_pipes},
	{ "g_spawn_async",  cast(void**)& g_spawn_async},
	{ "g_spawn_sync",  cast(void**)& g_spawn_sync},
	{ "g_spawn_command_line_async",  cast(void**)& g_spawn_command_line_async},
	{ "g_spawn_command_line_sync",  cast(void**)& g_spawn_command_line_sync},
	{ "g_spawn_close_pid",  cast(void**)& g_spawn_close_pid},
	{ "g_file_error_from_errno",  cast(void**)& g_file_error_from_errno},
	{ "g_file_get_contents",  cast(void**)& g_file_get_contents},
	{ "g_file_set_contents",  cast(void**)& g_file_set_contents},
	{ "g_file_test",  cast(void**)& g_file_test},
	{ "g_mkstemp",  cast(void**)& g_mkstemp},
	{ "g_file_open_tmp",  cast(void**)& g_file_open_tmp},
	{ "g_file_read_link",  cast(void**)& g_file_read_link},
	{ "g_mkdir_with_parents",  cast(void**)& g_mkdir_with_parents},
	{ "g_open",  cast(void**)& g_open},
	{ "g_rename",  cast(void**)& g_rename},
	{ "g_mkdir",  cast(void**)& g_mkdir},
	{ "g_stat",  cast(void**)& g_stat},
	{ "g_lstat",  cast(void**)& g_lstat},
	{ "g_unlink",  cast(void**)& g_unlink},
	{ "g_remove",  cast(void**)& g_remove},
	{ "g_rmdir",  cast(void**)& g_rmdir},
	{ "g_fopen",  cast(void**)& g_fopen},
	{ "g_freopen",  cast(void**)& g_freopen},
	{ "g_chmod",  cast(void**)& g_chmod},
	{ "g_access",  cast(void**)& g_access},
	{ "g_creat",  cast(void**)& g_creat},
	{ "g_chdir",  cast(void**)& g_chdir},
	{ "g_dir_open",  cast(void**)& g_dir_open},
	{ "g_dir_read_name",  cast(void**)& g_dir_read_name},
	{ "g_dir_rewind",  cast(void**)& g_dir_rewind},
	{ "g_dir_close",  cast(void**)& g_dir_close},
	{ "g_mapped_file_new",  cast(void**)& g_mapped_file_new},
	{ "g_mapped_file_free",  cast(void**)& g_mapped_file_free},
	{ "g_mapped_file_get_length",  cast(void**)& g_mapped_file_get_length},
	{ "g_mapped_file_get_contents",  cast(void**)& g_mapped_file_get_contents},
	{ "g_uri_parse_scheme",  cast(void**)& g_uri_parse_scheme},
	{ "g_uri_escape_string",  cast(void**)& g_uri_escape_string},
	{ "g_uri_unescape_string",  cast(void**)& g_uri_unescape_string},
	{ "g_uri_unescape_segment",  cast(void**)& g_uri_unescape_segment},
	{ "g_shell_parse_argv",  cast(void**)& g_shell_parse_argv},
	{ "g_shell_quote",  cast(void**)& g_shell_quote},
	{ "g_shell_unquote",  cast(void**)& g_shell_unquote},
	{ "g_option_context_new",  cast(void**)& g_option_context_new},
	{ "g_option_context_set_summary",  cast(void**)& g_option_context_set_summary},
	{ "g_option_context_get_summary",  cast(void**)& g_option_context_get_summary},
	{ "g_option_context_set_description",  cast(void**)& g_option_context_set_description},
	{ "g_option_context_get_description",  cast(void**)& g_option_context_get_description},
	{ "g_option_context_set_translate_func",  cast(void**)& g_option_context_set_translate_func},
	{ "g_option_context_set_translation_domain",  cast(void**)& g_option_context_set_translation_domain},
	{ "g_option_context_free",  cast(void**)& g_option_context_free},
	{ "g_option_context_parse",  cast(void**)& g_option_context_parse},
	{ "g_option_context_set_help_enabled",  cast(void**)& g_option_context_set_help_enabled},
	{ "g_option_context_get_help_enabled",  cast(void**)& g_option_context_get_help_enabled},
	{ "g_option_context_set_ignore_unknown_options",  cast(void**)& g_option_context_set_ignore_unknown_options},
	{ "g_option_context_get_ignore_unknown_options",  cast(void**)& g_option_context_get_ignore_unknown_options},
	{ "g_option_context_get_help",  cast(void**)& g_option_context_get_help},
	{ "g_option_context_add_main_entries",  cast(void**)& g_option_context_add_main_entries},
	{ "g_option_context_add_group",  cast(void**)& g_option_context_add_group},
	{ "g_option_context_set_main_group",  cast(void**)& g_option_context_set_main_group},
	{ "g_option_context_get_main_group",  cast(void**)& g_option_context_get_main_group},
	{ "g_option_group_new",  cast(void**)& g_option_group_new},
	{ "g_option_group_free",  cast(void**)& g_option_group_free},
	{ "g_option_group_add_entries",  cast(void**)& g_option_group_add_entries},
	{ "g_option_group_set_parse_hooks",  cast(void**)& g_option_group_set_parse_hooks},
	{ "g_option_group_set_error_hook",  cast(void**)& g_option_group_set_error_hook},
	{ "g_option_group_set_translate_func",  cast(void**)& g_option_group_set_translate_func},
	{ "g_option_group_set_translation_domain",  cast(void**)& g_option_group_set_translation_domain},
	{ "g_pattern_spec_new",  cast(void**)& g_pattern_spec_new},
	{ "g_pattern_spec_free",  cast(void**)& g_pattern_spec_free},
	{ "g_pattern_spec_equal",  cast(void**)& g_pattern_spec_equal},
	{ "g_pattern_match",  cast(void**)& g_pattern_match},
	{ "g_pattern_match_string",  cast(void**)& g_pattern_match_string},
	{ "g_pattern_match_simple",  cast(void**)& g_pattern_match_simple},
	{ "g_regex_new",  cast(void**)& g_regex_new},
	{ "g_regex_ref",  cast(void**)& g_regex_ref},
	{ "g_regex_unref",  cast(void**)& g_regex_unref},
	{ "g_regex_get_pattern",  cast(void**)& g_regex_get_pattern},
	{ "g_regex_get_max_backref",  cast(void**)& g_regex_get_max_backref},
	{ "g_regex_get_capture_count",  cast(void**)& g_regex_get_capture_count},
	{ "g_regex_get_string_number",  cast(void**)& g_regex_get_string_number},
	{ "g_regex_escape_string",  cast(void**)& g_regex_escape_string},
	{ "g_regex_match_simple",  cast(void**)& g_regex_match_simple},
	{ "g_regex_match",  cast(void**)& g_regex_match},
	{ "g_regex_match_full",  cast(void**)& g_regex_match_full},
	{ "g_regex_match_all",  cast(void**)& g_regex_match_all},
	{ "g_regex_match_all_full",  cast(void**)& g_regex_match_all_full},
	{ "g_regex_split_simple",  cast(void**)& g_regex_split_simple},
	{ "g_regex_split",  cast(void**)& g_regex_split},
	{ "g_regex_split_full",  cast(void**)& g_regex_split_full},
	{ "g_regex_replace",  cast(void**)& g_regex_replace},
	{ "g_regex_replace_literal",  cast(void**)& g_regex_replace_literal},
	{ "g_regex_replace_eval",  cast(void**)& g_regex_replace_eval},
	{ "g_regex_check_replacement",  cast(void**)& g_regex_check_replacement},
	{ "g_match_info_get_regex",  cast(void**)& g_match_info_get_regex},
	{ "g_match_info_get_string",  cast(void**)& g_match_info_get_string},
	{ "g_match_info_free",  cast(void**)& g_match_info_free},
	{ "g_match_info_matches",  cast(void**)& g_match_info_matches},
	{ "g_match_info_next",  cast(void**)& g_match_info_next},
	{ "g_match_info_get_match_count",  cast(void**)& g_match_info_get_match_count},
	{ "g_match_info_is_partial_match",  cast(void**)& g_match_info_is_partial_match},
	{ "g_match_info_expand_references",  cast(void**)& g_match_info_expand_references},
	{ "g_match_info_fetch",  cast(void**)& g_match_info_fetch},
	{ "g_match_info_fetch_pos",  cast(void**)& g_match_info_fetch_pos},
	{ "g_match_info_fetch_named",  cast(void**)& g_match_info_fetch_named},
	{ "g_match_info_fetch_named_pos",  cast(void**)& g_match_info_fetch_named_pos},
	{ "g_match_info_fetch_all",  cast(void**)& g_match_info_fetch_all},
	{ "g_markup_escape_text",  cast(void**)& g_markup_escape_text},
	{ "g_markup_printf_escaped",  cast(void**)& g_markup_printf_escaped},
	{ "g_markup_vprintf_escaped",  cast(void**)& g_markup_vprintf_escaped},
	{ "g_markup_parse_context_end_parse",  cast(void**)& g_markup_parse_context_end_parse},
	{ "g_markup_parse_context_free",  cast(void**)& g_markup_parse_context_free},
	{ "g_markup_parse_context_get_position",  cast(void**)& g_markup_parse_context_get_position},
	{ "g_markup_parse_context_get_element",  cast(void**)& g_markup_parse_context_get_element},
	{ "g_markup_parse_context_get_element_stack",  cast(void**)& g_markup_parse_context_get_element_stack},
	{ "g_markup_parse_context_new",  cast(void**)& g_markup_parse_context_new},
	{ "g_markup_parse_context_parse",  cast(void**)& g_markup_parse_context_parse},
	{ "g_markup_collect_attributes",  cast(void**)& g_markup_collect_attributes},
	{ "g_key_file_new",  cast(void**)& g_key_file_new},
	{ "g_key_file_free",  cast(void**)& g_key_file_free},
	{ "g_key_file_set_list_separator",  cast(void**)& g_key_file_set_list_separator},
	{ "g_key_file_load_from_file",  cast(void**)& g_key_file_load_from_file},
	{ "g_key_file_load_from_data",  cast(void**)& g_key_file_load_from_data},
	{ "g_key_file_load_from_data_dirs",  cast(void**)& g_key_file_load_from_data_dirs},
	{ "g_key_file_load_from_dirs",  cast(void**)& g_key_file_load_from_dirs},
	{ "g_key_file_to_data",  cast(void**)& g_key_file_to_data},
	{ "g_key_file_get_start_group",  cast(void**)& g_key_file_get_start_group},
	{ "g_key_file_get_groups",  cast(void**)& g_key_file_get_groups},
	{ "g_key_file_get_keys",  cast(void**)& g_key_file_get_keys},
	{ "g_key_file_has_group",  cast(void**)& g_key_file_has_group},
	{ "g_key_file_has_key",  cast(void**)& g_key_file_has_key},
	{ "g_key_file_get_value",  cast(void**)& g_key_file_get_value},
	{ "g_key_file_get_string",  cast(void**)& g_key_file_get_string},
	{ "g_key_file_get_locale_string",  cast(void**)& g_key_file_get_locale_string},
	{ "g_key_file_get_boolean",  cast(void**)& g_key_file_get_boolean},
	{ "g_key_file_get_integer",  cast(void**)& g_key_file_get_integer},
	{ "g_key_file_get_double",  cast(void**)& g_key_file_get_double},
	{ "g_key_file_get_string_list",  cast(void**)& g_key_file_get_string_list},
	{ "g_key_file_get_locale_string_list",  cast(void**)& g_key_file_get_locale_string_list},
	{ "g_key_file_get_boolean_list",  cast(void**)& g_key_file_get_boolean_list},
	{ "g_key_file_get_integer_list",  cast(void**)& g_key_file_get_integer_list},
	{ "g_key_file_get_double_list",  cast(void**)& g_key_file_get_double_list},
	{ "g_key_file_get_comment",  cast(void**)& g_key_file_get_comment},
	{ "g_key_file_set_value",  cast(void**)& g_key_file_set_value},
	{ "g_key_file_set_string",  cast(void**)& g_key_file_set_string},
	{ "g_key_file_set_locale_string",  cast(void**)& g_key_file_set_locale_string},
	{ "g_key_file_set_boolean",  cast(void**)& g_key_file_set_boolean},
	{ "g_key_file_set_integer",  cast(void**)& g_key_file_set_integer},
	{ "g_key_file_set_double",  cast(void**)& g_key_file_set_double},
	{ "g_key_file_set_string_list",  cast(void**)& g_key_file_set_string_list},
	{ "g_key_file_set_locale_string_list",  cast(void**)& g_key_file_set_locale_string_list},
	{ "g_key_file_set_boolean_list",  cast(void**)& g_key_file_set_boolean_list},
	{ "g_key_file_set_integer_list",  cast(void**)& g_key_file_set_integer_list},
	{ "g_key_file_set_double_list",  cast(void**)& g_key_file_set_double_list},
	{ "g_key_file_set_comment",  cast(void**)& g_key_file_set_comment},
	{ "g_key_file_remove_group",  cast(void**)& g_key_file_remove_group},
	{ "g_key_file_remove_key",  cast(void**)& g_key_file_remove_key},
	{ "g_key_file_remove_comment",  cast(void**)& g_key_file_remove_comment},
	{ "g_bookmark_file_new",  cast(void**)& g_bookmark_file_new},
	{ "g_bookmark_file_free",  cast(void**)& g_bookmark_file_free},
	{ "g_bookmark_file_load_from_file",  cast(void**)& g_bookmark_file_load_from_file},
	{ "g_bookmark_file_load_from_data",  cast(void**)& g_bookmark_file_load_from_data},
	{ "g_bookmark_file_load_from_data_dirs",  cast(void**)& g_bookmark_file_load_from_data_dirs},
	{ "g_bookmark_file_to_data",  cast(void**)& g_bookmark_file_to_data},
	{ "g_bookmark_file_to_file",  cast(void**)& g_bookmark_file_to_file},
	{ "g_bookmark_file_has_item",  cast(void**)& g_bookmark_file_has_item},
	{ "g_bookmark_file_has_group",  cast(void**)& g_bookmark_file_has_group},
	{ "g_bookmark_file_has_application",  cast(void**)& g_bookmark_file_has_application},
	{ "g_bookmark_file_get_size",  cast(void**)& g_bookmark_file_get_size},
	{ "g_bookmark_file_get_uris",  cast(void**)& g_bookmark_file_get_uris},
	{ "g_bookmark_file_get_title",  cast(void**)& g_bookmark_file_get_title},
	{ "g_bookmark_file_get_description",  cast(void**)& g_bookmark_file_get_description},
	{ "g_bookmark_file_get_mime_type",  cast(void**)& g_bookmark_file_get_mime_type},
	{ "g_bookmark_file_get_is_private",  cast(void**)& g_bookmark_file_get_is_private},
	{ "g_bookmark_file_get_icon",  cast(void**)& g_bookmark_file_get_icon},
	{ "g_bookmark_file_get_added",  cast(void**)& g_bookmark_file_get_added},
	{ "g_bookmark_file_get_modified",  cast(void**)& g_bookmark_file_get_modified},
	{ "g_bookmark_file_get_visited",  cast(void**)& g_bookmark_file_get_visited},
	{ "g_bookmark_file_get_groups",  cast(void**)& g_bookmark_file_get_groups},
	{ "g_bookmark_file_get_applications",  cast(void**)& g_bookmark_file_get_applications},
	{ "g_bookmark_file_get_app_info",  cast(void**)& g_bookmark_file_get_app_info},
	{ "g_bookmark_file_set_title",  cast(void**)& g_bookmark_file_set_title},
	{ "g_bookmark_file_set_description",  cast(void**)& g_bookmark_file_set_description},
	{ "g_bookmark_file_set_mime_type",  cast(void**)& g_bookmark_file_set_mime_type},
	{ "g_bookmark_file_set_is_private",  cast(void**)& g_bookmark_file_set_is_private},
	{ "g_bookmark_file_set_icon",  cast(void**)& g_bookmark_file_set_icon},
	{ "g_bookmark_file_set_added",  cast(void**)& g_bookmark_file_set_added},
	{ "g_bookmark_file_set_groups",  cast(void**)& g_bookmark_file_set_groups},
	{ "g_bookmark_file_set_modified",  cast(void**)& g_bookmark_file_set_modified},
	{ "g_bookmark_file_set_visited",  cast(void**)& g_bookmark_file_set_visited},
	{ "g_bookmark_file_set_app_info",  cast(void**)& g_bookmark_file_set_app_info},
	{ "g_bookmark_file_add_group",  cast(void**)& g_bookmark_file_add_group},
	{ "g_bookmark_file_add_application",  cast(void**)& g_bookmark_file_add_application},
	{ "g_bookmark_file_remove_group",  cast(void**)& g_bookmark_file_remove_group},
	{ "g_bookmark_file_remove_application",  cast(void**)& g_bookmark_file_remove_application},
	{ "g_bookmark_file_remove_item",  cast(void**)& g_bookmark_file_remove_item},
	{ "g_bookmark_file_move_item",  cast(void**)& g_bookmark_file_move_item},
	{ "g_win32_error_message",  cast(void**)& g_win32_error_message},
	{ "g_win32_getlocale",  cast(void**)& g_win32_getlocale},
	{ "g_win32_get_package_installation_directory",  cast(void**)& g_win32_get_package_installation_directory},
	{ "g_win32_get_package_installation_directory_of_module",  cast(void**)& g_win32_get_package_installation_directory_of_module},
	{ "g_win32_get_package_installation_subdirectory",  cast(void**)& g_win32_get_package_installation_subdirectory},
	{ "g_win32_get_windows_version",  cast(void**)& g_win32_get_windows_version},
	{ "g_win32_locale_filename_from_utf8",  cast(void**)& g_win32_locale_filename_from_utf8},
	{ "g_slice_alloc",  cast(void**)& g_slice_alloc},
	{ "g_slice_alloc0",  cast(void**)& g_slice_alloc0},
	{ "g_slice_copy",  cast(void**)& g_slice_copy},
	{ "g_slice_free1",  cast(void**)& g_slice_free1},
	{ "g_slice_free_chain_with_offset",  cast(void**)& g_slice_free_chain_with_offset},
	{ "g_mem_chunk_new",  cast(void**)& g_mem_chunk_new},
	{ "g_mem_chunk_alloc",  cast(void**)& g_mem_chunk_alloc},
	{ "g_mem_chunk_alloc0",  cast(void**)& g_mem_chunk_alloc0},
	{ "g_mem_chunk_free",  cast(void**)& g_mem_chunk_free},
	{ "g_mem_chunk_destroy",  cast(void**)& g_mem_chunk_destroy},
	{ "g_mem_chunk_reset",  cast(void**)& g_mem_chunk_reset},
	{ "g_mem_chunk_clean",  cast(void**)& g_mem_chunk_clean},
	{ "g_blow_chunks",  cast(void**)& g_blow_chunks},
	{ "g_mem_chunk_info",  cast(void**)& g_mem_chunk_info},
	{ "g_mem_chunk_print",  cast(void**)& g_mem_chunk_print},
	{ "g_list_append",  cast(void**)& g_list_append},
	{ "g_list_prepend",  cast(void**)& g_list_prepend},
	{ "g_list_insert",  cast(void**)& g_list_insert},
	{ "g_list_insert_before",  cast(void**)& g_list_insert_before},
	{ "g_list_insert_sorted",  cast(void**)& g_list_insert_sorted},
	{ "g_list_remove",  cast(void**)& g_list_remove},
	{ "g_list_remove_link",  cast(void**)& g_list_remove_link},
	{ "g_list_delete_link",  cast(void**)& g_list_delete_link},
	{ "g_list_remove_all",  cast(void**)& g_list_remove_all},
	{ "g_list_free",  cast(void**)& g_list_free},
	{ "g_list_alloc",  cast(void**)& g_list_alloc},
	{ "g_list_free_1",  cast(void**)& g_list_free_1},
	{ "g_list_length",  cast(void**)& g_list_length},
	{ "g_list_copy",  cast(void**)& g_list_copy},
	{ "g_list_reverse",  cast(void**)& g_list_reverse},
	{ "g_list_sort",  cast(void**)& g_list_sort},
	{ "g_list_insert_sorted_with_data",  cast(void**)& g_list_insert_sorted_with_data},
	{ "g_list_sort_with_data",  cast(void**)& g_list_sort_with_data},
	{ "g_list_concat",  cast(void**)& g_list_concat},
	{ "g_list_foreach",  cast(void**)& g_list_foreach},
	{ "g_list_first",  cast(void**)& g_list_first},
	{ "g_list_last",  cast(void**)& g_list_last},
	{ "g_list_nth",  cast(void**)& g_list_nth},
	{ "g_list_nth_data",  cast(void**)& g_list_nth_data},
	{ "g_list_nth_prev",  cast(void**)& g_list_nth_prev},
	{ "g_list_find",  cast(void**)& g_list_find},
	{ "g_list_find_custom",  cast(void**)& g_list_find_custom},
	{ "g_list_position",  cast(void**)& g_list_position},
	{ "g_list_index",  cast(void**)& g_list_index},
	{ "g_list_push_allocator",  cast(void**)& g_list_push_allocator},
	{ "g_list_pop_allocator",  cast(void**)& g_list_pop_allocator},
	{ "g_slist_alloc",  cast(void**)& g_slist_alloc},
	{ "g_slist_append",  cast(void**)& g_slist_append},
	{ "g_slist_prepend",  cast(void**)& g_slist_prepend},
	{ "g_slist_insert",  cast(void**)& g_slist_insert},
	{ "g_slist_insert_before",  cast(void**)& g_slist_insert_before},
	{ "g_slist_insert_sorted",  cast(void**)& g_slist_insert_sorted},
	{ "g_slist_remove",  cast(void**)& g_slist_remove},
	{ "g_slist_remove_link",  cast(void**)& g_slist_remove_link},
	{ "g_slist_delete_link",  cast(void**)& g_slist_delete_link},
	{ "g_slist_remove_all",  cast(void**)& g_slist_remove_all},
	{ "g_slist_free",  cast(void**)& g_slist_free},
	{ "g_slist_free_1",  cast(void**)& g_slist_free_1},
	{ "g_slist_length",  cast(void**)& g_slist_length},
	{ "g_slist_copy",  cast(void**)& g_slist_copy},
	{ "g_slist_reverse",  cast(void**)& g_slist_reverse},
	{ "g_slist_insert_sorted_with_data",  cast(void**)& g_slist_insert_sorted_with_data},
	{ "g_slist_sort",  cast(void**)& g_slist_sort},
	{ "g_slist_sort_with_data",  cast(void**)& g_slist_sort_with_data},
	{ "g_slist_concat",  cast(void**)& g_slist_concat},
	{ "g_slist_foreach",  cast(void**)& g_slist_foreach},
	{ "g_slist_last",  cast(void**)& g_slist_last},
	{ "g_slist_nth",  cast(void**)& g_slist_nth},
	{ "g_slist_nth_data",  cast(void**)& g_slist_nth_data},
	{ "g_slist_find",  cast(void**)& g_slist_find},
	{ "g_slist_find_custom",  cast(void**)& g_slist_find_custom},
	{ "g_slist_position",  cast(void**)& g_slist_position},
	{ "g_slist_index",  cast(void**)& g_slist_index},
	{ "g_slist_push_allocator",  cast(void**)& g_slist_push_allocator},
	{ "g_slist_pop_allocator",  cast(void**)& g_slist_pop_allocator},
	{ "g_queue_new",  cast(void**)& g_queue_new},
	{ "g_queue_free",  cast(void**)& g_queue_free},
	{ "g_queue_init",  cast(void**)& g_queue_init},
	{ "g_queue_clear",  cast(void**)& g_queue_clear},
	{ "g_queue_is_empty",  cast(void**)& g_queue_is_empty},
	{ "g_queue_get_length",  cast(void**)& g_queue_get_length},
	{ "g_queue_reverse",  cast(void**)& g_queue_reverse},
	{ "g_queue_copy",  cast(void**)& g_queue_copy},
	{ "g_queue_foreach",  cast(void**)& g_queue_foreach},
	{ "g_queue_find",  cast(void**)& g_queue_find},
	{ "g_queue_find_custom",  cast(void**)& g_queue_find_custom},
	{ "g_queue_sort",  cast(void**)& g_queue_sort},
	{ "g_queue_push_head",  cast(void**)& g_queue_push_head},
	{ "g_queue_push_tail",  cast(void**)& g_queue_push_tail},
	{ "g_queue_push_nth",  cast(void**)& g_queue_push_nth},
	{ "g_queue_pop_head",  cast(void**)& g_queue_pop_head},
	{ "g_queue_pop_tail",  cast(void**)& g_queue_pop_tail},
	{ "g_queue_pop_nth",  cast(void**)& g_queue_pop_nth},
	{ "g_queue_peek_head",  cast(void**)& g_queue_peek_head},
	{ "g_queue_peek_tail",  cast(void**)& g_queue_peek_tail},
	{ "g_queue_peek_nth",  cast(void**)& g_queue_peek_nth},
	{ "g_queue_index",  cast(void**)& g_queue_index},
	{ "g_queue_remove",  cast(void**)& g_queue_remove},
	{ "g_queue_remove_all",  cast(void**)& g_queue_remove_all},
	{ "g_queue_insert_before",  cast(void**)& g_queue_insert_before},
	{ "g_queue_insert_after",  cast(void**)& g_queue_insert_after},
	{ "g_queue_insert_sorted",  cast(void**)& g_queue_insert_sorted},
	{ "g_queue_push_head_link",  cast(void**)& g_queue_push_head_link},
	{ "g_queue_push_tail_link",  cast(void**)& g_queue_push_tail_link},
	{ "g_queue_push_nth_link",  cast(void**)& g_queue_push_nth_link},
	{ "g_queue_pop_head_link",  cast(void**)& g_queue_pop_head_link},
	{ "g_queue_pop_tail_link",  cast(void**)& g_queue_pop_tail_link},
	{ "g_queue_pop_nth_link",  cast(void**)& g_queue_pop_nth_link},
	{ "g_queue_peek_head_link",  cast(void**)& g_queue_peek_head_link},
	{ "g_queue_peek_tail_link",  cast(void**)& g_queue_peek_tail_link},
	{ "g_queue_peek_nth_link",  cast(void**)& g_queue_peek_nth_link},
	{ "g_queue_link_index",  cast(void**)& g_queue_link_index},
	{ "g_queue_unlink",  cast(void**)& g_queue_unlink},
	{ "g_queue_delete_link",  cast(void**)& g_queue_delete_link},
	{ "g_sequence_new",  cast(void**)& g_sequence_new},
	{ "g_sequence_free",  cast(void**)& g_sequence_free},
	{ "g_sequence_get_length",  cast(void**)& g_sequence_get_length},
	{ "g_sequence_foreach",  cast(void**)& g_sequence_foreach},
	{ "g_sequence_foreach_range",  cast(void**)& g_sequence_foreach_range},
	{ "g_sequence_sort",  cast(void**)& g_sequence_sort},
	{ "g_sequence_sort_iter",  cast(void**)& g_sequence_sort_iter},
	{ "g_sequence_get_begin_iter",  cast(void**)& g_sequence_get_begin_iter},
	{ "g_sequence_get_end_iter",  cast(void**)& g_sequence_get_end_iter},
	{ "g_sequence_get_iter_at_pos",  cast(void**)& g_sequence_get_iter_at_pos},
	{ "g_sequence_append",  cast(void**)& g_sequence_append},
	{ "g_sequence_prepend",  cast(void**)& g_sequence_prepend},
	{ "g_sequence_insert_before",  cast(void**)& g_sequence_insert_before},
	{ "g_sequence_move",  cast(void**)& g_sequence_move},
	{ "g_sequence_swap",  cast(void**)& g_sequence_swap},
	{ "g_sequence_insert_sorted",  cast(void**)& g_sequence_insert_sorted},
	{ "g_sequence_insert_sorted_iter",  cast(void**)& g_sequence_insert_sorted_iter},
	{ "g_sequence_sort_changed",  cast(void**)& g_sequence_sort_changed},
	{ "g_sequence_sort_changed_iter",  cast(void**)& g_sequence_sort_changed_iter},
	{ "g_sequence_remove",  cast(void**)& g_sequence_remove},
	{ "g_sequence_remove_range",  cast(void**)& g_sequence_remove_range},
	{ "g_sequence_move_range",  cast(void**)& g_sequence_move_range},
	{ "g_sequence_search",  cast(void**)& g_sequence_search},
	{ "g_sequence_search_iter",  cast(void**)& g_sequence_search_iter},
	{ "g_sequence_get",  cast(void**)& g_sequence_get},
	{ "g_sequence_set",  cast(void**)& g_sequence_set},
	{ "g_sequence_range_get_midpoint",  cast(void**)& g_sequence_range_get_midpoint},
	{ "g_sequence_iter_is_begin",  cast(void**)& g_sequence_iter_is_begin},
	{ "g_sequence_iter_is_end",  cast(void**)& g_sequence_iter_is_end},
	{ "g_sequence_iter_next",  cast(void**)& g_sequence_iter_next},
	{ "g_sequence_iter_prev",  cast(void**)& g_sequence_iter_prev},
	{ "g_sequence_iter_get_position",  cast(void**)& g_sequence_iter_get_position},
	{ "g_sequence_iter_move",  cast(void**)& g_sequence_iter_move},
	{ "g_sequence_iter_get_sequence",  cast(void**)& g_sequence_iter_get_sequence},
	{ "g_sequence_iter_compare",  cast(void**)& g_sequence_iter_compare},
	{ "g_trash_stack_push",  cast(void**)& g_trash_stack_push},
	{ "g_trash_stack_pop",  cast(void**)& g_trash_stack_pop},
	{ "g_trash_stack_peek",  cast(void**)& g_trash_stack_peek},
	{ "g_trash_stack_height",  cast(void**)& g_trash_stack_height},
	{ "g_hash_table_new",  cast(void**)& g_hash_table_new},
	{ "g_hash_table_new_full",  cast(void**)& g_hash_table_new_full},
	{ "g_hash_table_insert",  cast(void**)& g_hash_table_insert},
	{ "g_hash_table_replace",  cast(void**)& g_hash_table_replace},
	{ "g_hash_table_size",  cast(void**)& g_hash_table_size},
	{ "g_hash_table_lookup",  cast(void**)& g_hash_table_lookup},
	{ "g_hash_table_lookup_extended",  cast(void**)& g_hash_table_lookup_extended},
	{ "g_hash_table_foreach",  cast(void**)& g_hash_table_foreach},
	{ "g_hash_table_find",  cast(void**)& g_hash_table_find},
	{ "g_hash_table_remove",  cast(void**)& g_hash_table_remove},
	{ "g_hash_table_steal",  cast(void**)& g_hash_table_steal},
	{ "g_hash_table_foreach_remove",  cast(void**)& g_hash_table_foreach_remove},
	{ "g_hash_table_foreach_steal",  cast(void**)& g_hash_table_foreach_steal},
	{ "g_hash_table_remove_all",  cast(void**)& g_hash_table_remove_all},
	{ "g_hash_table_steal_all",  cast(void**)& g_hash_table_steal_all},
	{ "g_hash_table_get_keys",  cast(void**)& g_hash_table_get_keys},
	{ "g_hash_table_get_values",  cast(void**)& g_hash_table_get_values},
	{ "g_hash_table_destroy",  cast(void**)& g_hash_table_destroy},
	{ "g_hash_table_ref",  cast(void**)& g_hash_table_ref},
	{ "g_hash_table_unref",  cast(void**)& g_hash_table_unref},
	{ "g_direct_equal",  cast(void**)& g_direct_equal},
	{ "g_direct_hash",  cast(void**)& g_direct_hash},
	{ "g_int_equal",  cast(void**)& g_int_equal},
	{ "g_int_hash",  cast(void**)& g_int_hash},
	{ "g_str_equal",  cast(void**)& g_str_equal},
	{ "g_str_hash",  cast(void**)& g_str_hash},
	{ "g_hash_table_iter_init",  cast(void**)& g_hash_table_iter_init},
	{ "g_hash_table_iter_next",  cast(void**)& g_hash_table_iter_next},
	{ "g_hash_table_iter_get_hash_table",  cast(void**)& g_hash_table_iter_get_hash_table},
	{ "g_hash_table_iter_remove",  cast(void**)& g_hash_table_iter_remove},
	{ "g_hash_table_iter_steal",  cast(void**)& g_hash_table_iter_steal},
	{ "g_string_new",  cast(void**)& g_string_new},
	{ "g_string_new_len",  cast(void**)& g_string_new_len},
	{ "g_string_sized_new",  cast(void**)& g_string_sized_new},
	{ "g_string_assign",  cast(void**)& g_string_assign},
	{ "g_string_vprintf",  cast(void**)& g_string_vprintf},
	{ "g_string_append_vprintf",  cast(void**)& g_string_append_vprintf},
	{ "g_string_printf",  cast(void**)& g_string_printf},
	{ "g_string_append_printf",  cast(void**)& g_string_append_printf},
	{ "g_string_append",  cast(void**)& g_string_append},
	{ "g_string_append_c",  cast(void**)& g_string_append_c},
	{ "g_string_append_unichar",  cast(void**)& g_string_append_unichar},
	{ "g_string_append_len",  cast(void**)& g_string_append_len},
	{ "g_string_append_uri_escaped",  cast(void**)& g_string_append_uri_escaped},
	{ "g_string_prepend",  cast(void**)& g_string_prepend},
	{ "g_string_prepend_c",  cast(void**)& g_string_prepend_c},
	{ "g_string_prepend_unichar",  cast(void**)& g_string_prepend_unichar},
	{ "g_string_prepend_len",  cast(void**)& g_string_prepend_len},
	{ "g_string_insert",  cast(void**)& g_string_insert},
	{ "g_string_insert_c",  cast(void**)& g_string_insert_c},
	{ "g_string_insert_unichar",  cast(void**)& g_string_insert_unichar},
	{ "g_string_insert_len",  cast(void**)& g_string_insert_len},
	{ "g_string_overwrite",  cast(void**)& g_string_overwrite},
	{ "g_string_overwrite_len",  cast(void**)& g_string_overwrite_len},
	{ "g_string_erase",  cast(void**)& g_string_erase},
	{ "g_string_truncate",  cast(void**)& g_string_truncate},
	{ "g_string_set_size",  cast(void**)& g_string_set_size},
	{ "g_string_free",  cast(void**)& g_string_free},
	{ "g_string_up",  cast(void**)& g_string_up},
	{ "g_string_down",  cast(void**)& g_string_down},
	{ "g_string_hash",  cast(void**)& g_string_hash},
	{ "g_string_equal",  cast(void**)& g_string_equal},
	{ "g_string_chunk_new",  cast(void**)& g_string_chunk_new},
	{ "g_string_chunk_insert",  cast(void**)& g_string_chunk_insert},
	{ "g_string_chunk_insert_const",  cast(void**)& g_string_chunk_insert_const},
	{ "g_string_chunk_insert_len",  cast(void**)& g_string_chunk_insert_len},
	{ "g_string_chunk_clear",  cast(void**)& g_string_chunk_clear},
	{ "g_string_chunk_free",  cast(void**)& g_string_chunk_free},
	{ "g_array_new",  cast(void**)& g_array_new},
	{ "g_array_sized_new",  cast(void**)& g_array_sized_new},
	{ "g_array_append_vals",  cast(void**)& g_array_append_vals},
	{ "g_array_prepend_vals",  cast(void**)& g_array_prepend_vals},
	{ "g_array_insert_vals",  cast(void**)& g_array_insert_vals},
	{ "g_array_remove_index",  cast(void**)& g_array_remove_index},
	{ "g_array_remove_index_fast",  cast(void**)& g_array_remove_index_fast},
	{ "g_array_remove_range",  cast(void**)& g_array_remove_range},
	{ "g_array_sort",  cast(void**)& g_array_sort},
	{ "g_array_sort_with_data",  cast(void**)& g_array_sort_with_data},
	{ "g_array_set_size",  cast(void**)& g_array_set_size},
	{ "g_array_free",  cast(void**)& g_array_free},
	{ "g_ptr_array_new",  cast(void**)& g_ptr_array_new},
	{ "g_ptr_array_sized_new",  cast(void**)& g_ptr_array_sized_new},
	{ "g_ptr_array_add",  cast(void**)& g_ptr_array_add},
	{ "g_ptr_array_remove",  cast(void**)& g_ptr_array_remove},
	{ "g_ptr_array_remove_index",  cast(void**)& g_ptr_array_remove_index},
	{ "g_ptr_array_remove_fast",  cast(void**)& g_ptr_array_remove_fast},
	{ "g_ptr_array_remove_index_fast",  cast(void**)& g_ptr_array_remove_index_fast},
	{ "g_ptr_array_remove_range",  cast(void**)& g_ptr_array_remove_range},
	{ "g_ptr_array_sort",  cast(void**)& g_ptr_array_sort},
	{ "g_ptr_array_sort_with_data",  cast(void**)& g_ptr_array_sort_with_data},
	{ "g_ptr_array_set_size",  cast(void**)& g_ptr_array_set_size},
	{ "g_ptr_array_free",  cast(void**)& g_ptr_array_free},
	{ "g_ptr_array_foreach",  cast(void**)& g_ptr_array_foreach},
	{ "g_byte_array_new",  cast(void**)& g_byte_array_new},
	{ "g_byte_array_sized_new",  cast(void**)& g_byte_array_sized_new},
	{ "g_byte_array_append",  cast(void**)& g_byte_array_append},
	{ "g_byte_array_prepend",  cast(void**)& g_byte_array_prepend},
	{ "g_byte_array_remove_index",  cast(void**)& g_byte_array_remove_index},
	{ "g_byte_array_remove_index_fast",  cast(void**)& g_byte_array_remove_index_fast},
	{ "g_byte_array_remove_range",  cast(void**)& g_byte_array_remove_range},
	{ "g_byte_array_sort",  cast(void**)& g_byte_array_sort},
	{ "g_byte_array_sort_with_data",  cast(void**)& g_byte_array_sort_with_data},
	{ "g_byte_array_set_size",  cast(void**)& g_byte_array_set_size},
	{ "g_byte_array_free",  cast(void**)& g_byte_array_free},
	{ "g_tree_new",  cast(void**)& g_tree_new},
	{ "g_tree_new_with_data",  cast(void**)& g_tree_new_with_data},
	{ "g_tree_new_full",  cast(void**)& g_tree_new_full},
	{ "g_tree_insert",  cast(void**)& g_tree_insert},
	{ "g_tree_replace",  cast(void**)& g_tree_replace},
	{ "g_tree_nnodes",  cast(void**)& g_tree_nnodes},
	{ "g_tree_height",  cast(void**)& g_tree_height},
	{ "g_tree_lookup",  cast(void**)& g_tree_lookup},
	{ "g_tree_lookup_extended",  cast(void**)& g_tree_lookup_extended},
	{ "g_tree_foreach",  cast(void**)& g_tree_foreach},
	{ "g_tree_traverse",  cast(void**)& g_tree_traverse},
	{ "g_tree_search",  cast(void**)& g_tree_search},
	{ "g_tree_remove",  cast(void**)& g_tree_remove},
	{ "g_tree_steal",  cast(void**)& g_tree_steal},
	{ "g_tree_destroy",  cast(void**)& g_tree_destroy},
	{ "g_node_new",  cast(void**)& g_node_new},
	{ "g_node_copy",  cast(void**)& g_node_copy},
	{ "g_node_copy_deep",  cast(void**)& g_node_copy_deep},
	{ "g_node_insert",  cast(void**)& g_node_insert},
	{ "g_node_insert_before",  cast(void**)& g_node_insert_before},
	{ "g_node_insert_after",  cast(void**)& g_node_insert_after},
	{ "g_node_prepend",  cast(void**)& g_node_prepend},
	{ "g_node_reverse_children",  cast(void**)& g_node_reverse_children},
	{ "g_node_traverse",  cast(void**)& g_node_traverse},
	{ "g_node_children_foreach",  cast(void**)& g_node_children_foreach},
	{ "g_node_get_root",  cast(void**)& g_node_get_root},
	{ "g_node_find",  cast(void**)& g_node_find},
	{ "g_node_find_child",  cast(void**)& g_node_find_child},
	{ "g_node_child_index",  cast(void**)& g_node_child_index},
	{ "g_node_child_position",  cast(void**)& g_node_child_position},
	{ "g_node_last_child",  cast(void**)& g_node_last_child},
	{ "g_node_nth_child",  cast(void**)& g_node_nth_child},
	{ "g_node_first_sibling",  cast(void**)& g_node_first_sibling},
	{ "g_node_last_sibling",  cast(void**)& g_node_last_sibling},
	{ "g_node_depth",  cast(void**)& g_node_depth},
	{ "g_node_n_nodes",  cast(void**)& g_node_n_nodes},
	{ "g_node_n_children",  cast(void**)& g_node_n_children},
	{ "g_node_is_ancestor",  cast(void**)& g_node_is_ancestor},
	{ "g_node_max_height",  cast(void**)& g_node_max_height},
	{ "g_node_unlink",  cast(void**)& g_node_unlink},
	{ "g_node_destroy",  cast(void**)& g_node_destroy},
	{ "g_node_push_allocator",  cast(void**)& g_node_push_allocator},
	{ "g_node_pop_allocator",  cast(void**)& g_node_pop_allocator},
	{ "g_quark_from_string",  cast(void**)& g_quark_from_string},
	{ "g_quark_from_static_string",  cast(void**)& g_quark_from_static_string},
	{ "g_quark_to_string",  cast(void**)& g_quark_to_string},
	{ "g_quark_try_string",  cast(void**)& g_quark_try_string},
	{ "g_intern_string",  cast(void**)& g_intern_string},
	{ "g_intern_static_string",  cast(void**)& g_intern_static_string},
	{ "g_datalist_init",  cast(void**)& g_datalist_init},
	{ "g_datalist_id_set_data_full",  cast(void**)& g_datalist_id_set_data_full},
	{ "g_datalist_id_get_data",  cast(void**)& g_datalist_id_get_data},
	{ "g_datalist_id_remove_no_notify",  cast(void**)& g_datalist_id_remove_no_notify},
	{ "g_datalist_foreach",  cast(void**)& g_datalist_foreach},
	{ "g_datalist_clear",  cast(void**)& g_datalist_clear},
	{ "g_datalist_set_flags",  cast(void**)& g_datalist_set_flags},
	{ "g_datalist_unset_flags",  cast(void**)& g_datalist_unset_flags},
	{ "g_datalist_get_flags",  cast(void**)& g_datalist_get_flags},
	{ "g_dataset_id_set_data_full",  cast(void**)& g_dataset_id_set_data_full},
	{ "g_dataset_id_get_data",  cast(void**)& g_dataset_id_get_data},
	{ "g_dataset_id_remove_no_notify",  cast(void**)& g_dataset_id_remove_no_notify},
	{ "g_dataset_foreach",  cast(void**)& g_dataset_foreach},
	{ "g_dataset_destroy",  cast(void**)& g_dataset_destroy},
	{ "g_relation_new",  cast(void**)& g_relation_new},
	{ "g_relation_index",  cast(void**)& g_relation_index},
	{ "g_relation_insert",  cast(void**)& g_relation_insert},
	{ "g_relation_exists",  cast(void**)& g_relation_exists},
	{ "g_relation_count",  cast(void**)& g_relation_count},
	{ "g_relation_select",  cast(void**)& g_relation_select},
	{ "g_relation_delete",  cast(void**)& g_relation_delete},
	{ "g_relation_destroy",  cast(void**)& g_relation_destroy},
	{ "g_relation_print",  cast(void**)& g_relation_print},
	{ "g_tuples_destroy",  cast(void**)& g_tuples_destroy},
	{ "g_tuples_index",  cast(void**)& g_tuples_index},
	{ "g_cache_new",  cast(void**)& g_cache_new},
	{ "g_cache_insert",  cast(void**)& g_cache_insert},
	{ "g_cache_remove",  cast(void**)& g_cache_remove},
	{ "g_cache_destroy",  cast(void**)& g_cache_destroy},
	{ "g_cache_key_foreach",  cast(void**)& g_cache_key_foreach},
	{ "g_cache_value_foreach",  cast(void**)& g_cache_value_foreach},
	{ "g_allocator_new",  cast(void**)& g_allocator_new},
	{ "g_allocator_free",  cast(void**)& g_allocator_free},

];