/*
 * File:	glib.d
 * Author:	John Reimer
 * Date:	2005-05-05  Initial release
 */

module lib.glib;

private 
{	
	import def.Types;
    import def.Constants;
	import lib.loader;
	import lib.paths;
	debug import std.stdio;
}

private Linker glib_Linker;
	
static this()
{
	glib_Linker = new Linker(lib.paths.libPath ~ lib.paths.importLibs[LIBRARY.GLIB] );
	glib_Linker.link(glibLinks);
	debug writefln("* Finished static this(): glib");
}

static ~this()
{
	delete glib_Linker;
	debug writefln("* Finished static ~this(): glib");
}

extern(C) 
{
	GAsyncQueue*		function()
			g_async_queue_new;
	void		function(GAsyncQueue *queue)
			g_async_queue_lock;
	void		function(GAsyncQueue *queue)
			g_async_queue_unlock;
	void		function(GAsyncQueue *queue)
			g_async_queue_ref;
	void		function(GAsyncQueue *queue)
			g_async_queue_ref_unlocked;
	void		function(GAsyncQueue *queue)
			g_async_queue_unref;
	void		function(GAsyncQueue *queue)
			g_async_queue_unref_and_unlock;
	void		function(GAsyncQueue *queue, gpointer data)
			g_async_queue_push;
	void		function(GAsyncQueue *queue, gpointer data)
			g_async_queue_push_unlocked;
	gpointer		function(GAsyncQueue *queue)
			g_async_queue_pop;
	gpointer		function(GAsyncQueue *queue)
			g_async_queue_pop_unlocked;
	gpointer		function(GAsyncQueue *queue)
			g_async_queue_try_pop;
	gpointer		function(GAsyncQueue *queue)
			g_async_queue_try_pop_unlocked;
	gpointer	function(GAsyncQueue *queue, GTimeVal *end_time)
			g_async_queue_timed_pop;
	gpointer	function(GAsyncQueue *queue, GTimeVal *end_time)
			g_async_queue_timed_pop_unlocked;
	gint		function(GAsyncQueue *queue)
			g_async_queue_length;
	gint		function(GAsyncQueue *queue)
			g_async_queue_length_unlocked;
	GError*		function(GQuark domain,gint code,  gchar *format,...)
			g_error_new;
	GError*		function(GQuark domain,gint code,  gchar *message)
			g_error_new_literal;
	void		function(GError *error)
			g_error_free;
	GError*		function(  GError *error)
			g_error_copy;
	gboolean		function(  GError *error,GQuark domain,gint code)
			g_error_matches;
	void		function(GError **err,GQuark domain,gint code,  gchar *format,...)
			g_set_error;
	void		function(GError **dest,GError *src)
			g_propagate_error;
	void		function(GError **err)
			g_clear_error;
	GFileError		function(gint err_no)
			g_file_error_from_errno;
	gboolean		function(  gchar *filename,gchar **contents,gsize *length,GError **error)
			g_file_get_contents;
	gboolean		function(  gchar *filename,GFileTest test)
			g_file_test;
	gint		function(gchar *tmpl)
			g_mkstemp;
	gint		function(  gchar *tmpl,gchar **name_used,GError **error)
			g_file_open_tmp;
	gchar*		function(  gchar *filename,GError **error)
			g_file_read_link;
	GDir*		function(  gchar *path,guint flags,GError **error)
			g_dir_open;
	gchar*		function(GDir *dir)
			g_dir_read_name					;
	void		function(GDir *dir)
			g_dir_rewind;
	void		function(GDir *dir)
			g_dir_close;
	GIOChannel*		function(int fd)
			g_io_channel_unix_new;
	gint		function(GIOChannel *channel)
			g_io_channel_unix_get_fd;
	void		function(GIOChannel *channel)
			g_io_channel_init;
	GIOChannel*		function(  gchar *filename,  gchar *mode,GError **error)
			g_io_channel_new_file;
	GIOStatus		function(GIOChannel *channel,gchar *buf,gsize count,gsize *bytes_read,GError **error)
			g_io_channel_read_chars;
	GIOStatus		function(GIOChannel *channel,gunichar *thechar,GError **error)
			g_io_channel_read_unichar;
	GIOStatus		function(GIOChannel *channel,gchar **str_return,gsize *length,gsize *terminator_pos,GError **error)
			g_io_channel_read_line;
	GIOStatus		function(GIOChannel *channel,GString *buffer,gsize *terminator_pos,GError **error)
			g_io_channel_read_line_string;
	GIOStatus		function(GIOChannel *channel,gchar **str_return,gsize *length,GError **error)
			g_io_channel_read_to_end;
	GIOStatus		function(GIOChannel *channel,  gchar *buf,gssize count,gsize *bytes_written,GError **error)
			g_io_channel_write_chars;
	GIOStatus		function(GIOChannel *channel,gunichar thechar,GError **error)
			g_io_channel_write_unichar;
	GIOStatus		function(GIOChannel *channel,GError **error)
			g_io_channel_flush;
	GIOStatus		function(GIOChannel *channel,gint64 offset,GSeekType type,GError **error)
			g_io_channel_seek_position;
	GIOStatus		function(GIOChannel *channel,gboolean flush,GError **err)
			g_io_channel_shutdown;
	void		function(GIOChannel *channel)
			g_io_channel_ref;
	void		function(GIOChannel *channel)
			g_io_channel_unref;
	GSource*		function(GIOChannel *channel,GIOCondition condition)
			g_io_create_watch;
	guint		function(GIOChannel *channel,GIOCondition condition,void* func,gpointer user_data)
			g_io_add_watch;
	guint		function(GIOChannel *channel,gint priority,GIOCondition condition,void* func,gpointer user_data,GDestroyNotify notify)
			g_io_add_watch_full;		
	gsize		function(GIOChannel *channel)
			g_io_channel_get_buffer_size;
	void		function(GIOChannel *channel,gsize size)
			g_io_channel_set_buffer_size;
	GIOCondition		function(GIOChannel *channel)
			g_io_channel_get_buffer_condition;
	GIOFlags		function(GIOChannel *channel)
			g_io_channel_get_flags;
	GIOStatus		function(GIOChannel *channel,GIOFlags flags,GError **error)
			g_io_channel_set_flags;
	gchar*		function(GIOChannel *channel,gint *length)
			g_io_channel_get_line_term;
	void		function(GIOChannel *channel,  gchar *line_term,gint length)
			g_io_channel_set_line_term;
	gboolean		function(GIOChannel *channel)
			g_io_channel_get_buffered;
	void		function(GIOChannel *channel,gboolean buffered)
			g_io_channel_set_buffered;
	gchar*		function(GIOChannel *channel)
			g_io_channel_get_encoding;
	GIOStatus		function(GIOChannel *channel,  gchar *encoding,GError **error)
			g_io_channel_set_encoding;
	gboolean		function(GIOChannel *channel)
			g_io_channel_get_close_on_unref;
	void		function(GIOChannel *channel,gboolean do_close)
			g_io_channel_set_close_on_unref;
	GIOError		function(GIOChannel *channel,gchar *buf,gsize count,gsize *bytes_read)
			g_io_channel_read;
	GIOError		function(GIOChannel *channel,  gchar *buf,gsize count,gsize *bytes_written)
			g_io_channel_write;
	GIOError		function(GIOChannel *channel,gint64 offset,GSeekType type)
			g_io_channel_seek;
	void		function(GIOChannel *channel)
			g_io_channel_close;
	gboolean		function(  gchar *working_directory,gchar **argv,gchar **envp,GSpawnFlags flags,GSpawnChildSetupFunc child_setup,gpointer user_data,GPid *child_pid,gint *standard_input,gint *standard_output,gint *standard_error,GError **error)
			g_spawn_async_with_pipes;
	gboolean		function(  gchar *working_directory,gchar **argv,gchar **envp,GSpawnFlags flags,GSpawnChildSetupFunc child_setup,gpointer user_data,GPid *child_pid,GError **error)
			g_spawn_async;
	gboolean		function(  gchar *working_directory,gchar **argv,gchar **envp,GSpawnFlags flags,GSpawnChildSetupFunc child_setup,gpointer user_data,gchar **standard_output,gchar **standard_error,gint *exit_status,GError **error)
			g_spawn_sync;
	gboolean		function(  gchar *command_line,GError **error)
			g_spawn_command_line_async;
	gboolean		function(  gchar *command_line,gchar **standard_output,gchar **standard_error,gint *exit_status,GError **error)
			g_spawn_command_line_sync;
	void		function(GPid pid)
			g_spawn_close_pid;
	GString*		function(  gchar *init)
			g_string_new;
	GString*		function(  gchar *init,gssize len)
			g_string_new_len;
	GString*		function(gsize dfl_size)
			g_string_sized_new;
	GString*		function(GString *string,  gchar *rval)
			g_string_assign;
	void		function(GString *string,  gchar *format,...)
			g_string_printf;
	void		function(GString *string,  gchar *format,...)
			g_string_append_printf;
	GString*		function(GString *string,  gchar *val)
			g_string_append;
	GString*		function(GString *string,gchar c)
			g_string_append_c;
	GString*		function(GString *string,gunichar wc)
			g_string_append_unichar;
	GString*		function(GString *string,  gchar *val,gssize len)
			g_string_append_len;
	GString*		function(GString *string,  gchar *val)
			g_string_prepend;
	GString*		function(GString *string,gchar c)
			g_string_prepend_c;
	GString*		function(GString *string,gunichar wc)
			g_string_prepend_unichar;
	GString*		function(GString *string,  gchar *val,gssize len)
			g_string_prepend_len;
	GString*		function(GString *string,gssize pos,  gchar *val)
			g_string_insert;
	GString*		function(GString *string,gssize pos,gchar c)
			g_string_insert_c;
	GString*		function(GString *string,gssize pos,gunichar wc)
			g_string_insert_unichar;
	GString*		function(GString *string,gssize pos,  gchar *val,gssize len)
			g_string_insert_len;
	GString*		function(GString *string,gssize pos,gssize len)
			g_string_erase;
	GString*		function(GString *string,gsize len)
			g_string_truncate;
	GString*		function(GString *string,gsize len)
			g_string_set_size;
	gchar*		function(GString *string,gboolean free_segment)
			g_string_free;
	GString*		function(GString *string)
			g_string_up;
	GString*		function(GString *string)
			g_string_down;
	guint		function(  GString *str)
			g_string_hash;
	gboolean		function(  GString *v,  GString *v2)
			g_string_equal;
	GTimer*		function()
			g_timer_new;
	void		function(GTimer *timer)
			g_timer_start;
	void		function(GTimer *timer)
			g_timer_stop;
	void		function(GTimer *timer)
			g_timer_continue;
	gdouble		function(GTimer *timer, gulong *microseconds)
			g_timer_elapsed;
	void		function(GTimer *timer)
			g_timer_reset;
	void		function(GTimer *timer)
			g_timer_destroy;
	void		function(GAllocator * allocator)
			g_list_push_allocator;
	void		function()
			g_list_pop_allocator;
	GList*		function()
			g_list_alloc;
	void		function(GList * list)
			g_list_free;
	void		function(GList * list)
			g_list_free_1;
	GList*		function(GList * list, gpointer data)
			g_list_append;
	GList*		function(GList * list, gpointer data)
			g_list_prepend;
	GList*		function(GList * list, gpointer data, gint position)
			g_list_insert;
	GList*		function(GList * list, gpointer data, GCompareFunc func)
			g_list_insert_sorted;
	GList*		function(GList * list, GList * sibling, gpointer data)
			g_list_insert_before;
	GList*		function(GList * list1, GList * list2)
			g_list_concat;
	GList*		function(GList * list, gconstpointer data)
			g_list_remove;
	GList*		function(GList * list, gconstpointer data)
			g_list_remove_all;
	GList*		function(GList * list, GList * llink)
			g_list_remove_link;
	GList*		function(GList * list, GList * link_)
			g_list_delete_link;
	GList*		function(GList * list)
			g_list_reverse;
	GList*		function(GList * list)
			g_list_copy;
	GList*		function(GList * list, guint n)
			g_list_nth;
	GList*		function(GList * list, gconstpointer data)
			g_list_find;
	GList*		function(GList * list, gconstpointer data, GCompareFunc func)
			g_list_find_custom;
	gint		function(GList * list, GList * llink)
			g_list_position;
	gint		function(GList * list, gconstpointer data)
			g_list_index;
	GList*		function(GList * list)
			g_list_last;
	guint		function(GList * list)
			g_list_length;
	void		function(GList * list, GFunc func, gpointer user_data)
			g_list_foreach;
	GList*		function(GList * list, GCompareFunc compare_func)
			g_list_sort;
	GList*		function(GList * list, GCompareDataFunc compare_func, gpointer user_data)
			g_list_sort_with_data;
	gpointer		function(GList * list, guint n)
			g_list_nth_data;
	void		function(GAllocator * allocator)
			g_slist_push_allocator;
	void		function()
			g_slist_pop_allocator;
	GSList*		function()
			g_slist_alloc;
	void		function(GSList * list)
			g_slist_free;
	void		function(GSList * list)
			g_slist_free_1;
	GSList*		function(GSList * list, gpointer data)
			g_slist_append;
	GSList*		function(GSList * list, gpointer data)
			g_slist_prepend;
	GSList*		function(GSList * list, gpointer data, gint position)
			g_slist_insert;
	GSList*		function(GSList * list, gpointer data, GCompareFunc func)
			g_slist_insert_sorted;
	GSList*		function(GSList * slist, GSList * sibling, gpointer data)
			g_slist_insert_before;
	GSList*		function(GSList * list1, GSList * list2)
			g_slist_concat;
	GSList*		function(GSList * list, gconstpointer data)
			g_slist_remove;
	GSList*		function(GSList * list, gconstpointer data)
			g_slist_remove_all;
	GSList*		function(GSList * list, GSList * link_)
			g_slist_remove_link;
	GSList*		function(GSList * list, GSList * link_)
			g_slist_delete_link;
	GSList*		function(GSList * list)
			g_slist_reverse;
	GSList*		function(GSList * list)
			g_slist_copy;
	GSList*		function(GSList * list, guint n)
			g_slist_nth;
	GSList*		function(GSList * list, gconstpointer data)
			g_slist_find;
	GSList*		function(GSList * list, gconstpointer data, GCompareFunc func)
			g_slist_find_custom;
	gint		function(GSList * list, GSList * llink)
			g_slist_position;
	gint		function(GSList * list, gconstpointer data)
			g_slist_index;
	GSList*		function(GSList * list)
			g_slist_last;
	guint		function(GSList * list)
			g_slist_length;
	void		function(GSList * list, GFunc func, gpointer user_data)
			g_slist_foreach;
	GSList*		function(GSList * list, GCompareFunc compare_func)
			g_slist_sort;
	GSList*		function(GSList * list, GCompareDataFunc compare_func, gpointer user_data)
			g_slist_sort_with_data;
	gpointer		function(GSList * list, guint n)
			g_slist_nth_data;
	GThread*		function(GThreadFunc func, gpointer data, gulong stack_size,gboolean joinable, gboolean bound,GThreadPriority priority, GError **error)
			g_thread_create_full;
	GThread*		function()
			g_thread_self;
	gpointer		function(GThread *thread)
			g_thread_join;
	void		function(GThread *thread, GThreadPriority priority)
			g_thread_set_priority;
	void		function(gpointer retval)
			g_thread_exit;
	void		function(GStaticMutex *mutex)
			g_static_mutex_init;
	void		function(GStaticMutex *mutex)
			g_static_mutex_free;
	void		function(GStaticRecMutex *mutex)
			g_static_rec_mutex_init;
	void		function(GStaticRecMutex *mutex)
			g_static_rec_mutex_lock;
	gboolean		function(GStaticRecMutex *mutex)
			g_static_rec_mutex_trylock;
	void		function(GStaticRecMutex *mutex)
			g_static_rec_mutex_unlock;
	void		function(GStaticRecMutex *mutex, guint depth)
			g_static_rec_mutex_lock_full;
	guint		function(GStaticRecMutex *mutex)
			g_static_rec_mutex_unlock_full;
	void		function(GStaticRecMutex *mutex)
			g_static_rec_mutex_free;
	void		function(GStaticRWLock *lock)
			g_static_rw_lock_init;
	void		function(GStaticRWLock *lock)
			g_static_rw_lock_reader_lock;
	gboolean		function(GStaticRWLock *lock)
			g_static_rw_lock_reader_trylock;
	void		function(GStaticRWLock *lock)
			g_static_rw_lock_reader_unlock;
	void		function(GStaticRWLock *lock)
			g_static_rw_lock_writer_lock;
	gboolean		function(GStaticRWLock *lock)
			g_static_rw_lock_writer_trylock;
	void		function(GStaticRWLock *lock)
			g_static_rw_lock_writer_unlock;
	void		function(GStaticRWLock *lock)
			g_static_rw_lock_free;
	void		function(GStaticPrivate *private_key)
			g_static_private_init;
	gpointer		function(GStaticPrivate *private_key)
			g_static_private_get;
	void		function(GStaticPrivate *private_key, gpointer data, GDestroyNotify notify)
			g_static_private_set;
	void		function(GStaticPrivate *private_key)
			g_static_private_free;
}


Symbol[] glibLinks =
[
	{ "g_async_queue_new",  cast(void**)& g_async_queue_new },
	{ "g_async_queue_lock",  cast(void**)& g_async_queue_lock },
	{ "g_async_queue_unlock",  cast(void**)& g_async_queue_unlock },
	{ "g_async_queue_ref",  cast(void**)& g_async_queue_ref },
	{ "g_async_queue_ref_unlocked",  cast(void**)& g_async_queue_ref_unlocked },
	{ "g_async_queue_unref",  cast(void**)& g_async_queue_unref },
	{ "g_async_queue_unref_and_unlock",  cast(void**)& g_async_queue_unref_and_unlock },
	{ "g_async_queue_push", cast(void**)& g_async_queue_push },
    { "g_async_queue_push_unlocked", cast(void**)& g_async_queue_push_unlocked },
	{ "g_async_queue_pop",  cast(void**)& g_async_queue_pop },
	{ "g_async_queue_pop_unlocked",  cast(void**)& g_async_queue_pop_unlocked },
	{ "g_async_queue_try_pop",  cast(void**)& g_async_queue_try_pop },
	{ "g_async_queue_try_pop_unlocked",  cast(void**)& g_async_queue_try_pop_unlocked },
	{ "g_async_queue_timed_pop", cast(void**)& g_async_queue_timed_pop },
	{ "g_async_queue_timed_pop_unlocked", cast(void**)& g_async_queue_timed_pop_unlocked },
	{ "g_async_queue_length",  cast(void**)& g_async_queue_length },
	{ "g_async_queue_length_unlocked",  cast(void**)& g_async_queue_length_unlocked },
	{ "g_error_new",  cast(void**)& g_error_new },
	{ "g_error_new_literal",  cast(void**)& g_error_new_literal },
	{ "g_error_free",  cast(void**)& g_error_free },
	{ "g_error_copy",  cast(void**)& g_error_copy },
	{ "g_error_matches",  cast(void**)& g_error_matches },
	{ "g_set_error",  cast(void**)& g_set_error },
	{ "g_propagate_error",  cast(void**)& g_propagate_error },
	{ "g_clear_error",  cast(void**)& g_clear_error },
	{ "g_file_error_from_errno",  cast(void**)& g_file_error_from_errno },
	{ "g_file_get_contents",  cast(void**)& g_file_get_contents },
	{ "g_file_test",  cast(void**)& g_file_test },
	{ "g_mkstemp",  cast(void**)& g_mkstemp },
	{ "g_file_open_tmp",  cast(void**)& g_file_open_tmp },
	{ "g_file_read_link",  cast(void**)& g_file_read_link },
	{ "g_dir_open",  cast(void**)& g_dir_open },
	{ "g_dir_read_name",  cast(void**)& g_dir_read_name },
	{ "g_dir_rewind",  cast(void**)& g_dir_rewind },
	{ "g_dir_close",  cast(void**)& g_dir_close },
	{ "g_io_channel_unix_new",  cast(void**)& g_io_channel_unix_new },
	{ "g_io_channel_unix_get_fd",  cast(void**)& g_io_channel_unix_get_fd },
	{ "g_io_channel_init",  cast(void**)& g_io_channel_init },
	{ "g_io_channel_new_file",  cast(void**)& g_io_channel_new_file },
	{ "g_io_channel_read_chars",  cast(void**)& g_io_channel_read_chars },
	{ "g_io_channel_read_unichar",  cast(void**)& g_io_channel_read_unichar },
	{ "g_io_channel_read_line",  cast(void**)& g_io_channel_read_line },
	{ "g_io_channel_read_line_string",  cast(void**)& g_io_channel_read_line_string },
	{ "g_io_channel_read_to_end",  cast(void**)& g_io_channel_read_to_end },
	{ "g_io_channel_write_chars",  cast(void**)& g_io_channel_write_chars },
	{ "g_io_channel_write_unichar",  cast(void**)& g_io_channel_write_unichar },
	{ "g_io_channel_flush",  cast(void**)& g_io_channel_flush },
	{ "g_io_channel_seek_position",  cast(void**)& g_io_channel_seek_position },
	{ "g_io_channel_shutdown",  cast(void**)& g_io_channel_shutdown },
	{ "g_io_channel_ref",  cast(void**)& g_io_channel_ref },
	{ "g_io_channel_unref",  cast(void**)& g_io_channel_unref },
	{ "g_io_create_watch",  cast(void**)& g_io_create_watch },
	{ "g_io_add_watch",  cast(void**)& g_io_add_watch },
	{ "g_io_add_watch_full",  cast(void**)& g_io_add_watch_full },
	{ "g_io_channel_get_buffer_size",  cast(void**)& g_io_channel_get_buffer_size },
	{ "g_io_channel_set_buffer_size",  cast(void**)& g_io_channel_set_buffer_size },
	{ "g_io_channel_get_buffer_condition",  cast(void**)& g_io_channel_get_buffer_condition },
	{ "g_io_channel_get_flags",  cast(void**)& g_io_channel_get_flags },
	{ "g_io_channel_set_flags",  cast(void**)& g_io_channel_set_flags },
	{ "g_io_channel_get_line_term",  cast(void**)& g_io_channel_get_line_term },
	{ "g_io_channel_set_line_term",  cast(void**)& g_io_channel_set_line_term },
	{ "g_io_channel_get_buffered",  cast(void**)& g_io_channel_get_buffered },
	{ "g_io_channel_set_buffered",  cast(void**)& g_io_channel_set_buffered },
	{ "g_io_channel_get_encoding",  cast(void**)& g_io_channel_get_encoding },
	{ "g_io_channel_set_encoding",  cast(void**)& g_io_channel_set_encoding },
	{ "g_io_channel_get_close_on_unref",  cast(void**)& g_io_channel_get_close_on_unref },
	{ "g_io_channel_set_close_on_unref",  cast(void**)& g_io_channel_set_close_on_unref },
	{ "g_io_channel_read",  cast(void**)& g_io_channel_read },
	{ "g_io_channel_write",  cast(void**)& g_io_channel_write },
	{ "g_io_channel_seek",  cast(void**)& g_io_channel_seek },
	{ "g_io_channel_close",  cast(void**)& g_io_channel_close },
	{ "g_spawn_async_with_pipes",  cast(void**)& g_spawn_async_with_pipes },
	{ "g_spawn_async",  cast(void**)& g_spawn_async },
	{ "g_spawn_sync",  cast(void**)& g_spawn_sync },
	{ "g_spawn_command_line_async",  cast(void**)& g_spawn_command_line_async },
	{ "g_spawn_command_line_sync",  cast(void**)& g_spawn_command_line_sync },
	{ "g_spawn_close_pid",  cast(void**)& g_spawn_close_pid },
	{ "g_string_new",  cast(void**)& g_string_new },
	{ "g_string_new_len",  cast(void**)& g_string_new_len },
	{ "g_string_sized_new",  cast(void**)& g_string_sized_new },
	{ "g_string_assign",  cast(void**)& g_string_assign },
	{ "g_string_printf",  cast(void**)& g_string_printf },
	{ "g_string_append_printf",  cast(void**)& g_string_append_printf },
	{ "g_string_append",  cast(void**)& g_string_append },
	{ "g_string_append_c",  cast(void**)& g_string_append_c },
	{ "g_string_append_unichar",  cast(void**)& g_string_append_unichar },
	{ "g_string_append_len",  cast(void**)& g_string_append_len },
	{ "g_string_prepend",  cast(void**)& g_string_prepend },
	{ "g_string_prepend_c",  cast(void**)& g_string_prepend_c },
	{ "g_string_prepend_unichar",  cast(void**)& g_string_prepend_unichar },
	{ "g_string_prepend_len",  cast(void**)& g_string_prepend_len },
	{ "g_string_insert",  cast(void**)& g_string_insert },
	{ "g_string_insert_c",  cast(void**)& g_string_insert_c },
	{ "g_string_insert_unichar",  cast(void**)& g_string_insert_unichar },
	{ "g_string_insert_len",  cast(void**)& g_string_insert_len },
	{ "g_string_erase",  cast(void**)& g_string_erase },
	{ "g_string_truncate",  cast(void**)& g_string_truncate },
	{ "g_string_set_size",  cast(void**)& g_string_set_size },
	{ "g_string_free",  cast(void**)& g_string_free },
	{ "g_string_up",  cast(void**)& g_string_up },
	{ "g_string_down",  cast(void**)& g_string_down },
	{ "g_string_hash",  cast(void**)& g_string_hash },
	{ "g_string_equal",  cast(void**)& g_string_equal },
	{ "g_timer_new",  cast(void**)& g_timer_new },
	{ "g_timer_start",  cast(void**)& g_timer_start },
	{ "g_timer_stop",  cast(void**)& g_timer_stop },
	{ "g_timer_continue",  cast(void**)& g_timer_continue },
	{ "g_timer_elapsed",  cast(void**)& g_timer_elapsed },
	{ "g_timer_reset",  cast(void**)& g_timer_reset },
	{ "g_timer_destroy",  cast(void**)& g_timer_destroy },
	{ "g_list_push_allocator",  cast(void**)& g_list_push_allocator },
	{ "g_list_pop_allocator",  cast(void**)& g_list_pop_allocator },
	{ "g_list_alloc",  cast(void**)& g_list_alloc },
	{ "g_list_free",  cast(void**)& g_list_free },
	{ "g_list_free_1",  cast(void**)& g_list_free_1 },
	{ "g_list_append",  cast(void**)& g_list_append },
	{ "g_list_prepend",  cast(void**)& g_list_prepend },
	{ "g_list_insert",  cast(void**)& g_list_insert },
	{ "g_list_insert_sorted",  cast(void**)& g_list_insert_sorted },
	{ "g_list_insert_before",  cast(void**)& g_list_insert_before },
	{ "g_list_concat",  cast(void**)& g_list_concat },
	{ "g_list_remove",  cast(void**)& g_list_remove },
	{ "g_list_remove_all",  cast(void**)& g_list_remove_all },
	{ "g_list_remove_link",  cast(void**)& g_list_remove_link },
	{ "g_list_delete_link",  cast(void**)& g_list_delete_link },
	{ "g_list_reverse",  cast(void**)& g_list_reverse },
	{ "g_list_copy",  cast(void**)& g_list_copy },
	{ "g_list_nth",  cast(void**)& g_list_nth },
	{ "g_list_find",  cast(void**)& g_list_find },
	{ "g_list_find_custom",  cast(void**)& g_list_find_custom },
	{ "g_list_position",  cast(void**)& g_list_position },
	{ "g_list_index",  cast(void**)& g_list_index },
	{ "g_list_last",  cast(void**)& g_list_last },
	{ "g_list_length",  cast(void**)& g_list_length },
	{ "g_list_foreach",  cast(void**)& g_list_foreach },
	{ "g_list_sort",  cast(void**)& g_list_sort },
	{ "g_list_sort_with_data",  cast(void**)& g_list_sort_with_data },
	{ "g_list_nth_data",  cast(void**)& g_list_nth_data },
	{ "g_slist_push_allocator",  cast(void**)& g_slist_push_allocator },
	{ "g_slist_pop_allocator",  cast(void**)& g_slist_pop_allocator },
	{ "g_slist_alloc",  cast(void**)& g_slist_alloc },
	{ "g_slist_free",  cast(void**)& g_slist_free },
	{ "g_slist_free_1",  cast(void**)& g_slist_free_1 },
	{ "g_slist_append",  cast(void**)& g_slist_append },
	{ "g_slist_prepend",  cast(void**)& g_slist_prepend },
	{ "g_slist_insert",  cast(void**)& g_slist_insert },
	{ "g_slist_insert_sorted",  cast(void**)& g_slist_insert_sorted },
	{ "g_slist_insert_before",  cast(void**)& g_slist_insert_before },
	{ "g_slist_concat",  cast(void**)& g_slist_concat },
	{ "g_slist_remove",  cast(void**)& g_slist_remove },
	{ "g_slist_remove_all",  cast(void**)& g_slist_remove_all },
	{ "g_slist_remove_link",  cast(void**)& g_slist_remove_link },
	{ "g_slist_delete_link",  cast(void**)& g_slist_delete_link },
	{ "g_slist_reverse",  cast(void**)& g_slist_reverse },
	{ "g_slist_copy",  cast(void**)& g_slist_copy },
	{ "g_slist_nth",  cast(void**)& g_slist_nth },
	{ "g_slist_find",  cast(void**)& g_slist_find },
	{ "g_slist_find_custom",  cast(void**)& g_slist_find_custom },
	{ "g_slist_position",  cast(void**)& g_slist_position },
	{ "g_slist_index",  cast(void**)& g_slist_index },
	{ "g_slist_last",  cast(void**)& g_slist_last },
	{ "g_slist_length",  cast(void**)& g_slist_length },
	{ "g_slist_foreach",  cast(void**)& g_slist_foreach },
	{ "g_slist_sort",  cast(void**)& g_slist_sort },
	{ "g_slist_sort_with_data",  cast(void**)& g_slist_sort_with_data },
	{ "g_slist_nth_data",  cast(void**)& g_slist_nth_data },
	{ "g_thread_create_full",  cast(void**)& g_thread_create_full },
	{ "g_thread_self",  cast(void**)& g_thread_self },
	{ "g_thread_join",  cast(void**)& g_thread_join },
	{ "g_thread_set_priority",  cast(void**)& g_thread_set_priority },
	{ "g_thread_exit",  cast(void**)& g_thread_exit },
	{ "g_static_mutex_init",  cast(void**)& g_static_mutex_init },
	{ "g_static_mutex_free",  cast(void**)& g_static_mutex_free },
	{ "g_static_rec_mutex_init",  cast(void**)& g_static_rec_mutex_init },
	{ "g_static_rec_mutex_lock",  cast(void**)& g_static_rec_mutex_lock },
	{ "g_static_rec_mutex_trylock",  cast(void**)& g_static_rec_mutex_trylock },
	{ "g_static_rec_mutex_unlock",  cast(void**)& g_static_rec_mutex_unlock },
	{ "g_static_rec_mutex_lock_full",  cast(void**)& g_static_rec_mutex_lock_full },
	{ "g_static_rec_mutex_unlock_full",  cast(void**)& g_static_rec_mutex_unlock_full },
	{ "g_static_rec_mutex_free",  cast(void**)& g_static_rec_mutex_free },
	{ "g_static_rw_lock_init",  cast(void**)& g_static_rw_lock_init },
	{ "g_static_rw_lock_reader_lock",  cast(void**)& g_static_rw_lock_reader_lock },
	{ "g_static_rw_lock_reader_trylock",  cast(void**)& g_static_rw_lock_reader_trylock },
	{ "g_static_rw_lock_reader_unlock",  cast(void**)& g_static_rw_lock_reader_unlock },
	{ "g_static_rw_lock_writer_lock",  cast(void**)& g_static_rw_lock_writer_lock },
	{ "g_static_rw_lock_writer_trylock",  cast(void**)& g_static_rw_lock_writer_trylock },
	{ "g_static_rw_lock_writer_unlock",  cast(void**)& g_static_rw_lock_writer_unlock },
	{ "g_static_rw_lock_free",  cast(void**)& g_static_rw_lock_free },
	{ "g_static_private_init",  cast(void**)& g_static_private_init },
	{ "g_static_private_get",  cast(void**)& g_static_private_get },
	{ "g_static_private_set",  cast(void**)& g_static_private_set },
	{ "g_static_private_free",  cast(void**)& g_static_private_free }
];