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


module gtkc.glib;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.glibtypes;
private import gtkc.gthreadtypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// glib.Version

	Linker.link(glib_check_version, "glib_check_version", LIBRARY.GLIB);

	// glib.Atomic

	Linker.link(g_atomic_int_get, "g_atomic_int_get", LIBRARY.GLIB);
	Linker.link(g_atomic_int_set, "g_atomic_int_set", LIBRARY.GLIB);
	Linker.link(g_atomic_int_add, "g_atomic_int_add", LIBRARY.GLIB);
	Linker.link(g_atomic_int_exchange_and_add, "g_atomic_int_exchange_and_add", LIBRARY.GLIB);
	Linker.link(g_atomic_int_compare_and_exchange, "g_atomic_int_compare_and_exchange", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_get, "g_atomic_pointer_get", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_set, "g_atomic_pointer_set", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_compare_and_exchange, "g_atomic_pointer_compare_and_exchange", LIBRARY.GLIB);
	Linker.link(g_atomic_int_inc, "g_atomic_int_inc", LIBRARY.GLIB);
	Linker.link(g_atomic_int_dec_and_test, "g_atomic_int_dec_and_test", LIBRARY.GLIB);

	// glib.MainLoop

	Linker.link(g_main_loop_new, "g_main_loop_new", LIBRARY.GLIB);
	Linker.link(g_main_loop_ref, "g_main_loop_ref", LIBRARY.GLIB);
	Linker.link(g_main_loop_unref, "g_main_loop_unref", LIBRARY.GLIB);
	Linker.link(g_main_loop_run, "g_main_loop_run", LIBRARY.GLIB);
	Linker.link(g_main_loop_quit, "g_main_loop_quit", LIBRARY.GLIB);
	Linker.link(g_main_loop_is_running, "g_main_loop_is_running", LIBRARY.GLIB);
	Linker.link(g_main_loop_get_context, "g_main_loop_get_context", LIBRARY.GLIB);
	Linker.link(g_main_depth, "g_main_depth", LIBRARY.GLIB);
	Linker.link(g_main_current_source, "g_main_current_source", LIBRARY.GLIB);
	Linker.link(g_poll, "g_poll", LIBRARY.GLIB);

	// glib.MainContext

	Linker.link(g_main_context_new, "g_main_context_new", LIBRARY.GLIB);
	Linker.link(g_main_context_ref, "g_main_context_ref", LIBRARY.GLIB);
	Linker.link(g_main_context_unref, "g_main_context_unref", LIBRARY.GLIB);
	Linker.link(g_main_context_default, "g_main_context_default", LIBRARY.GLIB);
	Linker.link(g_main_context_iteration, "g_main_context_iteration", LIBRARY.GLIB);
	Linker.link(g_main_context_pending, "g_main_context_pending", LIBRARY.GLIB);
	Linker.link(g_main_context_find_source_by_id, "g_main_context_find_source_by_id", LIBRARY.GLIB);
	Linker.link(g_main_context_find_source_by_user_data, "g_main_context_find_source_by_user_data", LIBRARY.GLIB);
	Linker.link(g_main_context_find_source_by_funcs_user_data, "g_main_context_find_source_by_funcs_user_data", LIBRARY.GLIB);
	Linker.link(g_main_context_wakeup, "g_main_context_wakeup", LIBRARY.GLIB);
	Linker.link(g_main_context_acquire, "g_main_context_acquire", LIBRARY.GLIB);
	Linker.link(g_main_context_release, "g_main_context_release", LIBRARY.GLIB);
	Linker.link(g_main_context_is_owner, "g_main_context_is_owner", LIBRARY.GLIB);
	Linker.link(g_main_context_wait, "g_main_context_wait", LIBRARY.GLIB);
	Linker.link(g_main_context_prepare, "g_main_context_prepare", LIBRARY.GLIB);
	Linker.link(g_main_context_query, "g_main_context_query", LIBRARY.GLIB);
	Linker.link(g_main_context_check, "g_main_context_check", LIBRARY.GLIB);
	Linker.link(g_main_context_dispatch, "g_main_context_dispatch", LIBRARY.GLIB);
	Linker.link(g_main_context_set_poll_func, "g_main_context_set_poll_func", LIBRARY.GLIB);
	Linker.link(g_main_context_get_poll_func, "g_main_context_get_poll_func", LIBRARY.GLIB);
	Linker.link(g_main_context_add_poll, "g_main_context_add_poll", LIBRARY.GLIB);
	Linker.link(g_main_context_remove_poll, "g_main_context_remove_poll", LIBRARY.GLIB);

	// glib.Timeout

	Linker.link(g_timeout_source_new, "g_timeout_source_new", LIBRARY.GLIB);
	Linker.link(g_timeout_source_new_seconds, "g_timeout_source_new_seconds", LIBRARY.GLIB);
	Linker.link(g_timeout_add, "g_timeout_add", LIBRARY.GLIB);
	Linker.link(g_timeout_add_full, "g_timeout_add_full", LIBRARY.GLIB);
	Linker.link(g_timeout_add_seconds, "g_timeout_add_seconds", LIBRARY.GLIB);
	Linker.link(g_timeout_add_seconds_full, "g_timeout_add_seconds_full", LIBRARY.GLIB);

	// glib.Idle

	Linker.link(g_idle_source_new, "g_idle_source_new", LIBRARY.GLIB);
	Linker.link(g_idle_add, "g_idle_add", LIBRARY.GLIB);
	Linker.link(g_idle_add_full, "g_idle_add_full", LIBRARY.GLIB);
	Linker.link(g_idle_remove_by_data, "g_idle_remove_by_data", LIBRARY.GLIB);

	// glib.Child

	Linker.link(g_child_watch_source_new, "g_child_watch_source_new", LIBRARY.GLIB);
	Linker.link(g_child_watch_add, "g_child_watch_add", LIBRARY.GLIB);
	Linker.link(g_child_watch_add_full, "g_child_watch_add_full", LIBRARY.GLIB);

	// glib.Source

	Linker.link(g_source_new, "g_source_new", LIBRARY.GLIB);
	Linker.link(g_source_ref, "g_source_ref", LIBRARY.GLIB);
	Linker.link(g_source_unref, "g_source_unref", LIBRARY.GLIB);
	Linker.link(g_source_set_funcs, "g_source_set_funcs", LIBRARY.GLIB);
	Linker.link(g_source_attach, "g_source_attach", LIBRARY.GLIB);
	Linker.link(g_source_destroy, "g_source_destroy", LIBRARY.GLIB);
	Linker.link(g_source_is_destroyed, "g_source_is_destroyed", LIBRARY.GLIB);
	Linker.link(g_source_set_priority, "g_source_set_priority", LIBRARY.GLIB);
	Linker.link(g_source_get_priority, "g_source_get_priority", LIBRARY.GLIB);
	Linker.link(g_source_set_can_recurse, "g_source_set_can_recurse", LIBRARY.GLIB);
	Linker.link(g_source_get_can_recurse, "g_source_get_can_recurse", LIBRARY.GLIB);
	Linker.link(g_source_get_id, "g_source_get_id", LIBRARY.GLIB);
	Linker.link(g_source_get_context, "g_source_get_context", LIBRARY.GLIB);
	Linker.link(g_source_set_callback, "g_source_set_callback", LIBRARY.GLIB);
	Linker.link(g_source_set_callback_indirect, "g_source_set_callback_indirect", LIBRARY.GLIB);
	Linker.link(g_source_add_poll, "g_source_add_poll", LIBRARY.GLIB);
	Linker.link(g_source_remove_poll, "g_source_remove_poll", LIBRARY.GLIB);
	Linker.link(g_source_get_current_time, "g_source_get_current_time", LIBRARY.GLIB);
	Linker.link(g_source_remove, "g_source_remove", LIBRARY.GLIB);
	Linker.link(g_source_remove_by_funcs_user_data, "g_source_remove_by_funcs_user_data", LIBRARY.GLIB);
	Linker.link(g_source_remove_by_user_data, "g_source_remove_by_user_data", LIBRARY.GLIB);

	// glib.ThreadPool

	Linker.link(g_thread_pool_new, "g_thread_pool_new", LIBRARY.GLIB);
	Linker.link(g_thread_pool_push, "g_thread_pool_push", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_max_threads, "g_thread_pool_set_max_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_max_threads, "g_thread_pool_get_max_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_num_threads, "g_thread_pool_get_num_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_unprocessed, "g_thread_pool_unprocessed", LIBRARY.GLIB);
	Linker.link(g_thread_pool_free, "g_thread_pool_free", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_max_unused_threads, "g_thread_pool_set_max_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_max_unused_threads, "g_thread_pool_get_max_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_num_unused_threads, "g_thread_pool_get_num_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_stop_unused_threads, "g_thread_pool_stop_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_sort_function, "g_thread_pool_set_sort_function", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_max_idle_time, "g_thread_pool_set_max_idle_time", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_max_idle_time, "g_thread_pool_get_max_idle_time", LIBRARY.GLIB);

	// glib.AsyncQueue

	Linker.link(g_async_queue_new, "g_async_queue_new", LIBRARY.GLIB);
	Linker.link(g_async_queue_new_full, "g_async_queue_new_full", LIBRARY.GLIB);
	Linker.link(g_async_queue_ref, "g_async_queue_ref", LIBRARY.GLIB);
	Linker.link(g_async_queue_unref, "g_async_queue_unref", LIBRARY.GLIB);
	Linker.link(g_async_queue_push, "g_async_queue_push", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_sorted, "g_async_queue_push_sorted", LIBRARY.GLIB);
	Linker.link(g_async_queue_pop, "g_async_queue_pop", LIBRARY.GLIB);
	Linker.link(g_async_queue_try_pop, "g_async_queue_try_pop", LIBRARY.GLIB);
	Linker.link(g_async_queue_timed_pop, "g_async_queue_timed_pop", LIBRARY.GLIB);
	Linker.link(g_async_queue_length, "g_async_queue_length", LIBRARY.GLIB);
	Linker.link(g_async_queue_sort, "g_async_queue_sort", LIBRARY.GLIB);
	Linker.link(g_async_queue_lock, "g_async_queue_lock", LIBRARY.GLIB);
	Linker.link(g_async_queue_unlock, "g_async_queue_unlock", LIBRARY.GLIB);
	Linker.link(g_async_queue_ref_unlocked, "g_async_queue_ref_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_unref_and_unlock, "g_async_queue_unref_and_unlock", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_unlocked, "g_async_queue_push_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_sorted_unlocked, "g_async_queue_push_sorted_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_pop_unlocked, "g_async_queue_pop_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_try_pop_unlocked, "g_async_queue_try_pop_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_timed_pop_unlocked, "g_async_queue_timed_pop_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_length_unlocked, "g_async_queue_length_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_sort_unlocked, "g_async_queue_sort_unlocked", LIBRARY.GLIB);

	// glib.Module

	Linker.link(g_module_supported, "g_module_supported", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_build_path, "g_module_build_path", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_open, "g_module_open", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_symbol, "g_module_symbol", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_name, "g_module_name", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_make_resident, "g_module_make_resident", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_close, "g_module_close", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_error, "g_module_error", LIBRARY.GLIB, LIBRARY.GMODULE);

	// glib.Memory

	Linker.link(g_malloc, "g_malloc", LIBRARY.GLIB);
	Linker.link(g_malloc0, "g_malloc0", LIBRARY.GLIB);
	Linker.link(g_realloc, "g_realloc", LIBRARY.GLIB);
	Linker.link(g_try_malloc, "g_try_malloc", LIBRARY.GLIB);
	Linker.link(g_try_malloc0, "g_try_malloc0", LIBRARY.GLIB);
	Linker.link(g_try_realloc, "g_try_realloc", LIBRARY.GLIB);
	Linker.link(g_free, "g_free", LIBRARY.GLIB);
	Linker.link(g_memdup, "g_memdup", LIBRARY.GLIB);
	Linker.link(g_mem_set_vtable, "g_mem_set_vtable", LIBRARY.GLIB);
	Linker.link(g_mem_is_system_malloc, "g_mem_is_system_malloc", LIBRARY.GLIB);
	Linker.link(g_mem_profile, "g_mem_profile", LIBRARY.GLIB);

	// glib.IOChannel

	Linker.link(g_io_channel_unix_new, "g_io_channel_unix_new", LIBRARY.GLIB);
	Linker.link(g_io_channel_unix_get_fd, "g_io_channel_unix_get_fd", LIBRARY.GLIB);
	Linker.link(g_io_channel_win32_new_fd, "g_io_channel_win32_new_fd", LIBRARY.GLIB);
	Linker.link(g_io_channel_win32_new_socket, "g_io_channel_win32_new_socket", LIBRARY.GLIB);
	Linker.link(g_io_channel_win32_new_messages, "g_io_channel_win32_new_messages", LIBRARY.GLIB);
	Linker.link(g_io_channel_init, "g_io_channel_init", LIBRARY.GLIB);
	Linker.link(g_io_channel_new_file, "g_io_channel_new_file", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_chars, "g_io_channel_read_chars", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_unichar, "g_io_channel_read_unichar", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_line, "g_io_channel_read_line", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_line_string, "g_io_channel_read_line_string", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_to_end, "g_io_channel_read_to_end", LIBRARY.GLIB);
	Linker.link(g_io_channel_write_chars, "g_io_channel_write_chars", LIBRARY.GLIB);
	Linker.link(g_io_channel_write_unichar, "g_io_channel_write_unichar", LIBRARY.GLIB);
	Linker.link(g_io_channel_flush, "g_io_channel_flush", LIBRARY.GLIB);
	Linker.link(g_io_channel_seek_position, "g_io_channel_seek_position", LIBRARY.GLIB);
	Linker.link(g_io_channel_shutdown, "g_io_channel_shutdown", LIBRARY.GLIB);
	Linker.link(g_io_channel_error_from_errno, "g_io_channel_error_from_errno", LIBRARY.GLIB);
	Linker.link(g_io_channel_ref, "g_io_channel_ref", LIBRARY.GLIB);
	Linker.link(g_io_channel_unref, "g_io_channel_unref", LIBRARY.GLIB);
	Linker.link(g_io_create_watch, "g_io_create_watch", LIBRARY.GLIB);
	Linker.link(g_io_add_watch, "g_io_add_watch", LIBRARY.GLIB);
	Linker.link(g_io_add_watch_full, "g_io_add_watch_full", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_buffer_size, "g_io_channel_get_buffer_size", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_buffer_size, "g_io_channel_set_buffer_size", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_buffer_condition, "g_io_channel_get_buffer_condition", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_flags, "g_io_channel_get_flags", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_flags, "g_io_channel_set_flags", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_line_term, "g_io_channel_get_line_term", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_line_term, "g_io_channel_set_line_term", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_buffered, "g_io_channel_get_buffered", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_buffered, "g_io_channel_set_buffered", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_encoding, "g_io_channel_get_encoding", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_encoding, "g_io_channel_set_encoding", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_close_on_unref, "g_io_channel_get_close_on_unref", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_close_on_unref, "g_io_channel_set_close_on_unref", LIBRARY.GLIB);
	Linker.link(g_io_channel_read, "g_io_channel_read", LIBRARY.GLIB);
	Linker.link(g_io_channel_write, "g_io_channel_write", LIBRARY.GLIB);
	Linker.link(g_io_channel_seek, "g_io_channel_seek", LIBRARY.GLIB);
	Linker.link(g_io_channel_close, "g_io_channel_close", LIBRARY.GLIB);

	// glib.ErrorG

	Linker.link(g_error_new, "g_error_new", LIBRARY.GLIB);
	Linker.link(g_error_new_literal, "g_error_new_literal", LIBRARY.GLIB);
	Linker.link(g_error_free, "g_error_free", LIBRARY.GLIB);
	Linker.link(g_error_copy, "g_error_copy", LIBRARY.GLIB);
	Linker.link(g_error_matches, "g_error_matches", LIBRARY.GLIB);
	Linker.link(g_set_error, "g_set_error", LIBRARY.GLIB);
	Linker.link(g_set_error_literal, "g_set_error_literal", LIBRARY.GLIB);
	Linker.link(g_propagate_error, "g_propagate_error", LIBRARY.GLIB);
	Linker.link(g_clear_error, "g_clear_error", LIBRARY.GLIB);
	Linker.link(g_prefix_error, "g_prefix_error", LIBRARY.GLIB);
	Linker.link(g_propagate_prefixed_error, "g_propagate_prefixed_error", LIBRARY.GLIB);

	// glib.


	// glib.


	// glib.Messages

	Linker.link(g_print, "g_print", LIBRARY.GLIB);
	Linker.link(g_set_print_handler, "g_set_print_handler", LIBRARY.GLIB);
	Linker.link(g_printerr, "g_printerr", LIBRARY.GLIB);
	Linker.link(g_set_printerr_handler, "g_set_printerr_handler", LIBRARY.GLIB);
	Linker.link(g_on_error_query, "g_on_error_query", LIBRARY.GLIB);
	Linker.link(g_on_error_stack_trace, "g_on_error_stack_trace", LIBRARY.GLIB);

	// glib.MessageLog

	Linker.link(g_log, "g_log", LIBRARY.GLIB);
	Linker.link(g_logv, "g_logv", LIBRARY.GLIB);
	Linker.link(g_log_set_handler, "g_log_set_handler", LIBRARY.GLIB);
	Linker.link(g_log_remove_handler, "g_log_remove_handler", LIBRARY.GLIB);
	Linker.link(g_log_set_always_fatal, "g_log_set_always_fatal", LIBRARY.GLIB);
	Linker.link(g_log_set_fatal_mask, "g_log_set_fatal_mask", LIBRARY.GLIB);
	Linker.link(g_log_default_handler, "g_log_default_handler", LIBRARY.GLIB);
	Linker.link(g_log_set_default_handler, "g_log_set_default_handler", LIBRARY.GLIB);

	// glib.Str

	Linker.link(g_strdup, "g_strdup", LIBRARY.GLIB);
	Linker.link(g_strndup, "g_strndup", LIBRARY.GLIB);
	Linker.link(g_strdupv, "g_strdupv", LIBRARY.GLIB);
	Linker.link(g_strnfill, "g_strnfill", LIBRARY.GLIB);
	Linker.link(g_stpcpy, "g_stpcpy", LIBRARY.GLIB);
	Linker.link(g_strstr_len, "g_strstr_len", LIBRARY.GLIB);
	Linker.link(g_strrstr, "g_strrstr", LIBRARY.GLIB);
	Linker.link(g_strrstr_len, "g_strrstr_len", LIBRARY.GLIB);
	Linker.link(g_str_has_prefix, "g_str_has_prefix", LIBRARY.GLIB);
	Linker.link(g_str_has_suffix, "g_str_has_suffix", LIBRARY.GLIB);
	Linker.link(g_strcmp0, "g_strcmp0", LIBRARY.GLIB);
	Linker.link(g_strlcpy, "g_strlcpy", LIBRARY.GLIB);
	Linker.link(g_strlcat, "g_strlcat", LIBRARY.GLIB);
	Linker.link(g_strdup_printf, "g_strdup_printf", LIBRARY.GLIB);
	Linker.link(g_strdup_vprintf, "g_strdup_vprintf", LIBRARY.GLIB);
	Linker.link(g_printf, "g_printf", LIBRARY.GLIB);
	Linker.link(g_vprintf, "g_vprintf", LIBRARY.GLIB);
	Linker.link(g_fprintf, "g_fprintf", LIBRARY.GLIB);
	Linker.link(g_vfprintf, "g_vfprintf", LIBRARY.GLIB);
	Linker.link(g_sprintf, "g_sprintf", LIBRARY.GLIB);
	Linker.link(g_vsprintf, "g_vsprintf", LIBRARY.GLIB);
	Linker.link(g_snprintf, "g_snprintf", LIBRARY.GLIB);
	Linker.link(g_vsnprintf, "g_vsnprintf", LIBRARY.GLIB);
	Linker.link(g_vasprintf, "g_vasprintf", LIBRARY.GLIB);
	Linker.link(g_printf_string_upper_bound, "g_printf_string_upper_bound", LIBRARY.GLIB);
	Linker.link(g_ascii_isalnum, "g_ascii_isalnum", LIBRARY.GLIB);
	Linker.link(g_ascii_isalpha, "g_ascii_isalpha", LIBRARY.GLIB);
	Linker.link(g_ascii_iscntrl, "g_ascii_iscntrl", LIBRARY.GLIB);
	Linker.link(g_ascii_isdigit, "g_ascii_isdigit", LIBRARY.GLIB);
	Linker.link(g_ascii_isgraph, "g_ascii_isgraph", LIBRARY.GLIB);
	Linker.link(g_ascii_islower, "g_ascii_islower", LIBRARY.GLIB);
	Linker.link(g_ascii_isprint, "g_ascii_isprint", LIBRARY.GLIB);
	Linker.link(g_ascii_ispunct, "g_ascii_ispunct", LIBRARY.GLIB);
	Linker.link(g_ascii_isspace, "g_ascii_isspace", LIBRARY.GLIB);
	Linker.link(g_ascii_isupper, "g_ascii_isupper", LIBRARY.GLIB);
	Linker.link(g_ascii_isxdigit, "g_ascii_isxdigit", LIBRARY.GLIB);
	Linker.link(g_ascii_digit_value, "g_ascii_digit_value", LIBRARY.GLIB);
	Linker.link(g_ascii_xdigit_value, "g_ascii_xdigit_value", LIBRARY.GLIB);
	Linker.link(g_ascii_strcasecmp, "g_ascii_strcasecmp", LIBRARY.GLIB);
	Linker.link(g_ascii_strncasecmp, "g_ascii_strncasecmp", LIBRARY.GLIB);
	Linker.link(g_ascii_strup, "g_ascii_strup", LIBRARY.GLIB);
	Linker.link(g_ascii_strdown, "g_ascii_strdown", LIBRARY.GLIB);
	Linker.link(g_ascii_tolower, "g_ascii_tolower", LIBRARY.GLIB);
	Linker.link(g_ascii_toupper, "g_ascii_toupper", LIBRARY.GLIB);
	Linker.link(g_string_ascii_up, "g_string_ascii_up", LIBRARY.GLIB);
	Linker.link(g_string_ascii_down, "g_string_ascii_down", LIBRARY.GLIB);
	Linker.link(g_strup, "g_strup", LIBRARY.GLIB);
	Linker.link(g_strdown, "g_strdown", LIBRARY.GLIB);
	Linker.link(g_strcasecmp, "g_strcasecmp", LIBRARY.GLIB);
	Linker.link(g_strncasecmp, "g_strncasecmp", LIBRARY.GLIB);
	Linker.link(g_strreverse, "g_strreverse", LIBRARY.GLIB);
	Linker.link(g_ascii_strtoll, "g_ascii_strtoll", LIBRARY.GLIB);
	Linker.link(g_ascii_strtoull, "g_ascii_strtoull", LIBRARY.GLIB);
	Linker.link(g_ascii_strtod, "g_ascii_strtod", LIBRARY.GLIB);
	Linker.link(g_ascii_dtostr, "g_ascii_dtostr", LIBRARY.GLIB);
	Linker.link(g_ascii_formatd, "g_ascii_formatd", LIBRARY.GLIB);
	Linker.link(g_strtod, "g_strtod", LIBRARY.GLIB);
	Linker.link(g_strchug, "g_strchug", LIBRARY.GLIB);
	Linker.link(g_strchomp, "g_strchomp", LIBRARY.GLIB);
	Linker.link(g_strdelimit, "g_strdelimit", LIBRARY.GLIB);
	Linker.link(g_strescape, "g_strescape", LIBRARY.GLIB);
	Linker.link(g_strcompress, "g_strcompress", LIBRARY.GLIB);
	Linker.link(g_strcanon, "g_strcanon", LIBRARY.GLIB);
	Linker.link(g_strsplit, "g_strsplit", LIBRARY.GLIB);
	Linker.link(g_strsplit_set, "g_strsplit_set", LIBRARY.GLIB);
	Linker.link(g_strfreev, "g_strfreev", LIBRARY.GLIB);
	Linker.link(g_strconcat, "g_strconcat", LIBRARY.GLIB);
	Linker.link(g_strjoin, "g_strjoin", LIBRARY.GLIB);
	Linker.link(g_strjoinv, "g_strjoinv", LIBRARY.GLIB);
	Linker.link(g_strv_length, "g_strv_length", LIBRARY.GLIB);
	Linker.link(g_strerror, "g_strerror", LIBRARY.GLIB);
	Linker.link(g_strsignal, "g_strsignal", LIBRARY.GLIB);

	// glib.CharacterSet

	Linker.link(g_convert, "g_convert", LIBRARY.GLIB);
	Linker.link(g_convert_with_fallback, "g_convert_with_fallback", LIBRARY.GLIB);
	Linker.link(g_locale_to_utf8, "g_locale_to_utf8", LIBRARY.GLIB);
	Linker.link(g_filename_to_utf8, "g_filename_to_utf8", LIBRARY.GLIB);
	Linker.link(g_filename_from_utf8, "g_filename_from_utf8", LIBRARY.GLIB);
	Linker.link(g_filename_from_uri, "g_filename_from_uri", LIBRARY.GLIB);
	Linker.link(g_filename_to_uri, "g_filename_to_uri", LIBRARY.GLIB);
	Linker.link(g_get_filename_charsets, "g_get_filename_charsets", LIBRARY.GLIB);
	Linker.link(g_filename_display_name, "g_filename_display_name", LIBRARY.GLIB);
	Linker.link(g_filename_display_basename, "g_filename_display_basename", LIBRARY.GLIB);
	Linker.link(g_uri_list_extract_uris, "g_uri_list_extract_uris", LIBRARY.GLIB);
	Linker.link(g_locale_from_utf8, "g_locale_from_utf8", LIBRARY.GLIB);
	Linker.link(g_get_charset, "g_get_charset", LIBRARY.GLIB);

	// glib.Unicode

	Linker.link(g_unichar_validate, "g_unichar_validate", LIBRARY.GLIB);
	Linker.link(g_unichar_isalnum, "g_unichar_isalnum", LIBRARY.GLIB);
	Linker.link(g_unichar_isalpha, "g_unichar_isalpha", LIBRARY.GLIB);
	Linker.link(g_unichar_iscntrl, "g_unichar_iscntrl", LIBRARY.GLIB);
	Linker.link(g_unichar_isdefined, "g_unichar_isdefined", LIBRARY.GLIB);
	Linker.link(g_unichar_isdigit, "g_unichar_isdigit", LIBRARY.GLIB);
	Linker.link(g_unichar_isgraph, "g_unichar_isgraph", LIBRARY.GLIB);
	Linker.link(g_unichar_islower, "g_unichar_islower", LIBRARY.GLIB);
	Linker.link(g_unichar_ismark, "g_unichar_ismark", LIBRARY.GLIB);
	Linker.link(g_unichar_isprint, "g_unichar_isprint", LIBRARY.GLIB);
	Linker.link(g_unichar_ispunct, "g_unichar_ispunct", LIBRARY.GLIB);
	Linker.link(g_unichar_isspace, "g_unichar_isspace", LIBRARY.GLIB);
	Linker.link(g_unichar_istitle, "g_unichar_istitle", LIBRARY.GLIB);
	Linker.link(g_unichar_isupper, "g_unichar_isupper", LIBRARY.GLIB);
	Linker.link(g_unichar_isxdigit, "g_unichar_isxdigit", LIBRARY.GLIB);
	Linker.link(g_unichar_iswide, "g_unichar_iswide", LIBRARY.GLIB);
	Linker.link(g_unichar_iswide_cjk, "g_unichar_iswide_cjk", LIBRARY.GLIB);
	Linker.link(g_unichar_iszerowidth, "g_unichar_iszerowidth", LIBRARY.GLIB);
	Linker.link(g_unichar_toupper, "g_unichar_toupper", LIBRARY.GLIB);
	Linker.link(g_unichar_tolower, "g_unichar_tolower", LIBRARY.GLIB);
	Linker.link(g_unichar_totitle, "g_unichar_totitle", LIBRARY.GLIB);
	Linker.link(g_unichar_digit_value, "g_unichar_digit_value", LIBRARY.GLIB);
	Linker.link(g_unichar_xdigit_value, "g_unichar_xdigit_value", LIBRARY.GLIB);
	Linker.link(g_unichar_type, "g_unichar_type", LIBRARY.GLIB);
	Linker.link(g_unichar_break_type, "g_unichar_break_type", LIBRARY.GLIB);
	Linker.link(g_unichar_combining_class, "g_unichar_combining_class", LIBRARY.GLIB);
	Linker.link(g_unicode_canonical_ordering, "g_unicode_canonical_ordering", LIBRARY.GLIB);
	Linker.link(g_unicode_canonical_decomposition, "g_unicode_canonical_decomposition", LIBRARY.GLIB);
	Linker.link(g_unichar_get_mirror_char, "g_unichar_get_mirror_char", LIBRARY.GLIB);
	Linker.link(g_unichar_get_script, "g_unichar_get_script", LIBRARY.GLIB);
	Linker.link(g_utf8_get_char, "g_utf8_get_char", LIBRARY.GLIB);
	Linker.link(g_utf8_get_char_validated, "g_utf8_get_char_validated", LIBRARY.GLIB);
	Linker.link(g_utf8_offset_to_pointer, "g_utf8_offset_to_pointer", LIBRARY.GLIB);
	Linker.link(g_utf8_pointer_to_offset, "g_utf8_pointer_to_offset", LIBRARY.GLIB);
	Linker.link(g_utf8_prev_char, "g_utf8_prev_char", LIBRARY.GLIB);
	Linker.link(g_utf8_find_next_char, "g_utf8_find_next_char", LIBRARY.GLIB);
	Linker.link(g_utf8_find_prev_char, "g_utf8_find_prev_char", LIBRARY.GLIB);
	Linker.link(g_utf8_strlen, "g_utf8_strlen", LIBRARY.GLIB);
	Linker.link(g_utf8_strncpy, "g_utf8_strncpy", LIBRARY.GLIB);
	Linker.link(g_utf8_strchr, "g_utf8_strchr", LIBRARY.GLIB);
	Linker.link(g_utf8_strrchr, "g_utf8_strrchr", LIBRARY.GLIB);
	Linker.link(g_utf8_strreverse, "g_utf8_strreverse", LIBRARY.GLIB);
	Linker.link(g_utf8_validate, "g_utf8_validate", LIBRARY.GLIB);
	Linker.link(g_utf8_strup, "g_utf8_strup", LIBRARY.GLIB);
	Linker.link(g_utf8_strdown, "g_utf8_strdown", LIBRARY.GLIB);
	Linker.link(g_utf8_casefold, "g_utf8_casefold", LIBRARY.GLIB);
	Linker.link(g_utf8_normalize, "g_utf8_normalize", LIBRARY.GLIB);
	Linker.link(g_utf8_collate, "g_utf8_collate", LIBRARY.GLIB);
	Linker.link(g_utf8_collate_key, "g_utf8_collate_key", LIBRARY.GLIB);
	Linker.link(g_utf8_collate_key_for_filename, "g_utf8_collate_key_for_filename", LIBRARY.GLIB);
	Linker.link(g_utf8_to_utf16, "g_utf8_to_utf16", LIBRARY.GLIB);
	Linker.link(g_utf8_to_ucs4, "g_utf8_to_ucs4", LIBRARY.GLIB);
	Linker.link(g_utf8_to_ucs4_fast, "g_utf8_to_ucs4_fast", LIBRARY.GLIB);
	Linker.link(g_utf16_to_ucs4, "g_utf16_to_ucs4", LIBRARY.GLIB);
	Linker.link(g_utf16_to_utf8, "g_utf16_to_utf8", LIBRARY.GLIB);
	Linker.link(g_ucs4_to_utf16, "g_ucs4_to_utf16", LIBRARY.GLIB);
	Linker.link(g_ucs4_to_utf8, "g_ucs4_to_utf8", LIBRARY.GLIB);
	Linker.link(g_unichar_to_utf8, "g_unichar_to_utf8", LIBRARY.GLIB);

	// glib.Base64

	Linker.link(g_base64_encode_step, "g_base64_encode_step", LIBRARY.GLIB);
	Linker.link(g_base64_encode_close, "g_base64_encode_close", LIBRARY.GLIB);
	Linker.link(g_base64_encode, "g_base64_encode", LIBRARY.GLIB);
	Linker.link(g_base64_decode_step, "g_base64_decode_step", LIBRARY.GLIB);
	Linker.link(g_base64_decode, "g_base64_decode", LIBRARY.GLIB);
	Linker.link(g_base64_decode_inplace, "g_base64_decode_inplace", LIBRARY.GLIB);

	// glib.Checksum

	Linker.link(g_checksum_type_get_length, "g_checksum_type_get_length", LIBRARY.GLIB);
	Linker.link(g_checksum_new, "g_checksum_new", LIBRARY.GLIB);
	Linker.link(g_checksum_copy, "g_checksum_copy", LIBRARY.GLIB);
	Linker.link(g_checksum_free, "g_checksum_free", LIBRARY.GLIB);
	Linker.link(g_checksum_reset, "g_checksum_reset", LIBRARY.GLIB);
	Linker.link(g_checksum_update, "g_checksum_update", LIBRARY.GLIB);
	Linker.link(g_checksum_get_string, "g_checksum_get_string", LIBRARY.GLIB);
	Linker.link(g_checksum_get_digest, "g_checksum_get_digest", LIBRARY.GLIB);
	Linker.link(g_compute_checksum_for_data, "g_compute_checksum_for_data", LIBRARY.GLIB);
	Linker.link(g_compute_checksum_for_string, "g_compute_checksum_for_string", LIBRARY.GLIB);

	// glib.Internationalization

	Linker.link(g_dgettext, "g_dgettext", LIBRARY.GLIB);
	Linker.link(g_dngettext, "g_dngettext", LIBRARY.GLIB);
	Linker.link(g_dpgettext, "g_dpgettext", LIBRARY.GLIB);
	Linker.link(g_dpgettext2, "g_dpgettext2", LIBRARY.GLIB);
	Linker.link(g_strip_context, "g_strip_context", LIBRARY.GLIB);
	Linker.link(g_get_language_names, "g_get_language_names", LIBRARY.GLIB);

	// glib.TimeVal

	Linker.link(g_get_current_time, "g_get_current_time", LIBRARY.GLIB);
	Linker.link(g_usleep, "g_usleep", LIBRARY.GLIB);
	Linker.link(g_time_val_add, "g_time_val_add", LIBRARY.GLIB);
	Linker.link(g_time_val_from_iso8601, "g_time_val_from_iso8601", LIBRARY.GLIB);
	Linker.link(g_time_val_to_iso8601, "g_time_val_to_iso8601", LIBRARY.GLIB);

	// glib.Date

	Linker.link(g_date_new, "g_date_new", LIBRARY.GLIB);
	Linker.link(g_date_new_dmy, "g_date_new_dmy", LIBRARY.GLIB);
	Linker.link(g_date_new_julian, "g_date_new_julian", LIBRARY.GLIB);
	Linker.link(g_date_clear, "g_date_clear", LIBRARY.GLIB);
	Linker.link(g_date_free, "g_date_free", LIBRARY.GLIB);
	Linker.link(g_date_set_day, "g_date_set_day", LIBRARY.GLIB);
	Linker.link(g_date_set_month, "g_date_set_month", LIBRARY.GLIB);
	Linker.link(g_date_set_year, "g_date_set_year", LIBRARY.GLIB);
	Linker.link(g_date_set_dmy, "g_date_set_dmy", LIBRARY.GLIB);
	Linker.link(g_date_set_julian, "g_date_set_julian", LIBRARY.GLIB);
	Linker.link(g_date_set_time, "g_date_set_time", LIBRARY.GLIB);
	Linker.link(g_date_set_time_t, "g_date_set_time_t", LIBRARY.GLIB);
	Linker.link(g_date_set_time_val, "g_date_set_time_val", LIBRARY.GLIB);
	Linker.link(g_date_set_parse, "g_date_set_parse", LIBRARY.GLIB);
	Linker.link(g_date_add_days, "g_date_add_days", LIBRARY.GLIB);
	Linker.link(g_date_subtract_days, "g_date_subtract_days", LIBRARY.GLIB);
	Linker.link(g_date_add_months, "g_date_add_months", LIBRARY.GLIB);
	Linker.link(g_date_subtract_months, "g_date_subtract_months", LIBRARY.GLIB);
	Linker.link(g_date_add_years, "g_date_add_years", LIBRARY.GLIB);
	Linker.link(g_date_subtract_years, "g_date_subtract_years", LIBRARY.GLIB);
	Linker.link(g_date_days_between, "g_date_days_between", LIBRARY.GLIB);
	Linker.link(g_date_compare, "g_date_compare", LIBRARY.GLIB);
	Linker.link(g_date_clamp, "g_date_clamp", LIBRARY.GLIB);
	Linker.link(g_date_order, "g_date_order", LIBRARY.GLIB);
	Linker.link(g_date_get_day, "g_date_get_day", LIBRARY.GLIB);
	Linker.link(g_date_get_month, "g_date_get_month", LIBRARY.GLIB);
	Linker.link(g_date_get_year, "g_date_get_year", LIBRARY.GLIB);
	Linker.link(g_date_get_julian, "g_date_get_julian", LIBRARY.GLIB);
	Linker.link(g_date_get_weekday, "g_date_get_weekday", LIBRARY.GLIB);
	Linker.link(g_date_get_day_of_year, "g_date_get_day_of_year", LIBRARY.GLIB);
	Linker.link(g_date_get_days_in_month, "g_date_get_days_in_month", LIBRARY.GLIB);
	Linker.link(g_date_is_first_of_month, "g_date_is_first_of_month", LIBRARY.GLIB);
	Linker.link(g_date_is_last_of_month, "g_date_is_last_of_month", LIBRARY.GLIB);
	Linker.link(g_date_is_leap_year, "g_date_is_leap_year", LIBRARY.GLIB);
	Linker.link(g_date_get_monday_week_of_year, "g_date_get_monday_week_of_year", LIBRARY.GLIB);
	Linker.link(g_date_get_monday_weeks_in_year, "g_date_get_monday_weeks_in_year", LIBRARY.GLIB);
	Linker.link(g_date_get_sunday_week_of_year, "g_date_get_sunday_week_of_year", LIBRARY.GLIB);
	Linker.link(g_date_get_sunday_weeks_in_year, "g_date_get_sunday_weeks_in_year", LIBRARY.GLIB);
	Linker.link(g_date_get_iso8601_week_of_year, "g_date_get_iso8601_week_of_year", LIBRARY.GLIB);
	Linker.link(g_date_strftime, "g_date_strftime", LIBRARY.GLIB);
	Linker.link(g_date_to_struct_tm, "g_date_to_struct_tm", LIBRARY.GLIB);
	Linker.link(g_date_valid, "g_date_valid", LIBRARY.GLIB);
	Linker.link(g_date_valid_day, "g_date_valid_day", LIBRARY.GLIB);
	Linker.link(g_date_valid_month, "g_date_valid_month", LIBRARY.GLIB);
	Linker.link(g_date_valid_year, "g_date_valid_year", LIBRARY.GLIB);
	Linker.link(g_date_valid_dmy, "g_date_valid_dmy", LIBRARY.GLIB);
	Linker.link(g_date_valid_julian, "g_date_valid_julian", LIBRARY.GLIB);
	Linker.link(g_date_valid_weekday, "g_date_valid_weekday", LIBRARY.GLIB);

	// glib.RandG

	Linker.link(g_rand_new_with_seed, "g_rand_new_with_seed", LIBRARY.GLIB);
	Linker.link(g_rand_new_with_seed_array, "g_rand_new_with_seed_array", LIBRARY.GLIB);
	Linker.link(g_rand_new, "g_rand_new", LIBRARY.GLIB);
	Linker.link(g_rand_copy, "g_rand_copy", LIBRARY.GLIB);
	Linker.link(g_rand_free, "g_rand_free", LIBRARY.GLIB);
	Linker.link(g_rand_set_seed, "g_rand_set_seed", LIBRARY.GLIB);
	Linker.link(g_rand_set_seed_array, "g_rand_set_seed_array", LIBRARY.GLIB);
	Linker.link(g_rand_int, "g_rand_int", LIBRARY.GLIB);
	Linker.link(g_rand_int_range, "g_rand_int_range", LIBRARY.GLIB);
	Linker.link(g_rand_double, "g_rand_double", LIBRARY.GLIB);
	Linker.link(g_rand_double_range, "g_rand_double_range", LIBRARY.GLIB);
	Linker.link(g_random_set_seed, "g_random_set_seed", LIBRARY.GLIB);
	Linker.link(g_random_int, "g_random_int", LIBRARY.GLIB);
	Linker.link(g_random_int_range, "g_random_int_range", LIBRARY.GLIB);
	Linker.link(g_random_double, "g_random_double", LIBRARY.GLIB);
	Linker.link(g_random_double_range, "g_random_double_range", LIBRARY.GLIB);

	// glib.Util

	Linker.link(g_get_application_name, "g_get_application_name", LIBRARY.GLIB);
	Linker.link(g_set_application_name, "g_set_application_name", LIBRARY.GLIB);
	Linker.link(g_get_prgname, "g_get_prgname", LIBRARY.GLIB);
	Linker.link(g_set_prgname, "g_set_prgname", LIBRARY.GLIB);
	Linker.link(g_getenv, "g_getenv", LIBRARY.GLIB);
	Linker.link(g_setenv, "g_setenv", LIBRARY.GLIB);
	Linker.link(g_unsetenv, "g_unsetenv", LIBRARY.GLIB);
	Linker.link(g_listenv, "g_listenv", LIBRARY.GLIB);
	Linker.link(g_get_user_name, "g_get_user_name", LIBRARY.GLIB);
	Linker.link(g_get_real_name, "g_get_real_name", LIBRARY.GLIB);
	Linker.link(g_get_user_cache_dir, "g_get_user_cache_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_data_dir, "g_get_user_data_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_config_dir, "g_get_user_config_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_special_dir, "g_get_user_special_dir", LIBRARY.GLIB);
	Linker.link(g_get_system_data_dirs, "g_get_system_data_dirs", LIBRARY.GLIB);
	Linker.link(g_get_system_config_dirs, "g_get_system_config_dirs", LIBRARY.GLIB);
	Linker.link(g_get_host_name, "g_get_host_name", LIBRARY.GLIB);
	Linker.link(g_get_home_dir, "g_get_home_dir", LIBRARY.GLIB);
	Linker.link(g_get_tmp_dir, "g_get_tmp_dir", LIBRARY.GLIB);
	Linker.link(g_get_current_dir, "g_get_current_dir", LIBRARY.GLIB);
	Linker.link(g_basename, "g_basename", LIBRARY.GLIB);
	Linker.link(g_path_is_absolute, "g_path_is_absolute", LIBRARY.GLIB);
	Linker.link(g_path_skip_root, "g_path_skip_root", LIBRARY.GLIB);
	Linker.link(g_path_get_basename, "g_path_get_basename", LIBRARY.GLIB);
	Linker.link(g_path_get_dirname, "g_path_get_dirname", LIBRARY.GLIB);
	Linker.link(g_build_filename, "g_build_filename", LIBRARY.GLIB);
	Linker.link(g_build_filenamev, "g_build_filenamev", LIBRARY.GLIB);
	Linker.link(g_build_path, "g_build_path", LIBRARY.GLIB);
	Linker.link(g_build_pathv, "g_build_pathv", LIBRARY.GLIB);
	Linker.link(g_format_size_for_display, "g_format_size_for_display", LIBRARY.GLIB);
	Linker.link(g_find_program_in_path, "g_find_program_in_path", LIBRARY.GLIB);
	Linker.link(g_bit_nth_lsf, "g_bit_nth_lsf", LIBRARY.GLIB);
	Linker.link(g_bit_nth_msf, "g_bit_nth_msf", LIBRARY.GLIB);
	Linker.link(g_bit_storage, "g_bit_storage", LIBRARY.GLIB);
	Linker.link(g_spaced_primes_closest, "g_spaced_primes_closest", LIBRARY.GLIB);
	Linker.link(g_atexit, "g_atexit", LIBRARY.GLIB);
	Linker.link(g_parse_debug_string, "g_parse_debug_string", LIBRARY.GLIB);
	Linker.link(g_qsort_with_data, "g_qsort_with_data", LIBRARY.GLIB);
	Linker.link(g_nullify_pointer, "g_nullify_pointer", LIBRARY.GLIB);

	// glib.ScannerG

	Linker.link(g_scanner_new, "g_scanner_new", LIBRARY.GLIB);
	Linker.link(g_scanner_destroy, "g_scanner_destroy", LIBRARY.GLIB);
	Linker.link(g_scanner_input_file, "g_scanner_input_file", LIBRARY.GLIB);
	Linker.link(g_scanner_sync_file_offset, "g_scanner_sync_file_offset", LIBRARY.GLIB);
	Linker.link(g_scanner_input_text, "g_scanner_input_text", LIBRARY.GLIB);
	Linker.link(g_scanner_peek_next_token, "g_scanner_peek_next_token", LIBRARY.GLIB);
	Linker.link(g_scanner_get_next_token, "g_scanner_get_next_token", LIBRARY.GLIB);
	Linker.link(g_scanner_eof, "g_scanner_eof", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_line, "g_scanner_cur_line", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_position, "g_scanner_cur_position", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_token, "g_scanner_cur_token", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_value, "g_scanner_cur_value", LIBRARY.GLIB);
	Linker.link(g_scanner_set_scope, "g_scanner_set_scope", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_add_symbol, "g_scanner_scope_add_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_foreach_symbol, "g_scanner_scope_foreach_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_lookup_symbol, "g_scanner_scope_lookup_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_remove_symbol, "g_scanner_scope_remove_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_lookup_symbol, "g_scanner_lookup_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_warn, "g_scanner_warn", LIBRARY.GLIB);
	Linker.link(g_scanner_error, "g_scanner_error", LIBRARY.GLIB);
	Linker.link(g_scanner_unexp_token, "g_scanner_unexp_token", LIBRARY.GLIB);

	// glib.StringCompletion

	Linker.link(g_completion_new, "g_completion_new", LIBRARY.GLIB);
	Linker.link(g_completion_add_items, "g_completion_add_items", LIBRARY.GLIB);
	Linker.link(g_completion_remove_items, "g_completion_remove_items", LIBRARY.GLIB);
	Linker.link(g_completion_clear_items, "g_completion_clear_items", LIBRARY.GLIB);
	Linker.link(g_completion_complete, "g_completion_complete", LIBRARY.GLIB);
	Linker.link(g_completion_complete_utf8, "g_completion_complete_utf8", LIBRARY.GLIB);
	Linker.link(g_completion_set_compare, "g_completion_set_compare", LIBRARY.GLIB);
	Linker.link(g_completion_free, "g_completion_free", LIBRARY.GLIB);

	// glib.Timer

	Linker.link(g_timer_new, "g_timer_new", LIBRARY.GLIB);
	Linker.link(g_timer_start, "g_timer_start", LIBRARY.GLIB);
	Linker.link(g_timer_stop, "g_timer_stop", LIBRARY.GLIB);
	Linker.link(g_timer_continue, "g_timer_continue", LIBRARY.GLIB);
	Linker.link(g_timer_elapsed, "g_timer_elapsed", LIBRARY.GLIB);
	Linker.link(g_timer_reset, "g_timer_reset", LIBRARY.GLIB);
	Linker.link(g_timer_destroy, "g_timer_destroy", LIBRARY.GLIB);

	// glib.Spawn

	Linker.link(g_spawn_async_with_pipes, "g_spawn_async_with_pipes", LIBRARY.GLIB);
	Linker.link(g_spawn_async, "g_spawn_async", LIBRARY.GLIB);
	Linker.link(g_spawn_sync, "g_spawn_sync", LIBRARY.GLIB);
	Linker.link(g_spawn_command_line_async, "g_spawn_command_line_async", LIBRARY.GLIB);
	Linker.link(g_spawn_command_line_sync, "g_spawn_command_line_sync", LIBRARY.GLIB);
	Linker.link(g_spawn_close_pid, "g_spawn_close_pid", LIBRARY.GLIB);

	// glib.FileUtils

	Linker.link(g_file_error_from_errno, "g_file_error_from_errno", LIBRARY.GLIB);
	Linker.link(g_file_get_contents, "g_file_get_contents", LIBRARY.GLIB);
	Linker.link(g_file_set_contents, "g_file_set_contents", LIBRARY.GLIB);
	Linker.link(g_file_test, "g_file_test", LIBRARY.GLIB);
	Linker.link(g_mkstemp, "g_mkstemp", LIBRARY.GLIB);
	Linker.link(g_file_open_tmp, "g_file_open_tmp", LIBRARY.GLIB);
	Linker.link(g_file_read_link, "g_file_read_link", LIBRARY.GLIB);
	Linker.link(g_mkdir_with_parents, "g_mkdir_with_parents", LIBRARY.GLIB);
	Linker.link(g_open, "g_open", LIBRARY.GLIB);
	Linker.link(g_rename, "g_rename", LIBRARY.GLIB);
	Linker.link(g_mkdir, "g_mkdir", LIBRARY.GLIB);
	Linker.link(g_stat, "g_stat", LIBRARY.GLIB);
	Linker.link(g_lstat, "g_lstat", LIBRARY.GLIB);
	Linker.link(g_unlink, "g_unlink", LIBRARY.GLIB);
	Linker.link(g_remove, "g_remove", LIBRARY.GLIB);
	Linker.link(g_rmdir, "g_rmdir", LIBRARY.GLIB);
	Linker.link(g_fopen, "g_fopen", LIBRARY.GLIB);
	Linker.link(g_freopen, "g_freopen", LIBRARY.GLIB);
	Linker.link(g_chmod, "g_chmod", LIBRARY.GLIB);
	Linker.link(g_access, "g_access", LIBRARY.GLIB);
	Linker.link(g_creat, "g_creat", LIBRARY.GLIB);
	Linker.link(g_chdir, "g_chdir", LIBRARY.GLIB);
	Linker.link(g_utime, "g_utime", LIBRARY.GLIB);

	// glib.Directory

	Linker.link(g_dir_open, "g_dir_open", LIBRARY.GLIB);
	Linker.link(g_dir_read_name, "g_dir_read_name", LIBRARY.GLIB);
	Linker.link(g_dir_rewind, "g_dir_rewind", LIBRARY.GLIB);
	Linker.link(g_dir_close, "g_dir_close", LIBRARY.GLIB);

	// glib.MappedFile

	Linker.link(g_mapped_file_new, "g_mapped_file_new", LIBRARY.GLIB);
	Linker.link(g_mapped_file_free, "g_mapped_file_free", LIBRARY.GLIB);
	Linker.link(g_mapped_file_get_length, "g_mapped_file_get_length", LIBRARY.GLIB);
	Linker.link(g_mapped_file_get_contents, "g_mapped_file_get_contents", LIBRARY.GLIB);

	// glib.URI

	Linker.link(g_uri_parse_scheme, "g_uri_parse_scheme", LIBRARY.GLIB);
	Linker.link(g_uri_escape_string, "g_uri_escape_string", LIBRARY.GLIB);
	Linker.link(g_uri_unescape_string, "g_uri_unescape_string", LIBRARY.GLIB);
	Linker.link(g_uri_unescape_segment, "g_uri_unescape_segment", LIBRARY.GLIB);

	// glib.ShellUtils

	Linker.link(g_shell_parse_argv, "g_shell_parse_argv", LIBRARY.GLIB);
	Linker.link(g_shell_quote, "g_shell_quote", LIBRARY.GLIB);
	Linker.link(g_shell_unquote, "g_shell_unquote", LIBRARY.GLIB);

	// glib.OptionContext

	Linker.link(g_option_context_new, "g_option_context_new", LIBRARY.GLIB);
	Linker.link(g_option_context_set_summary, "g_option_context_set_summary", LIBRARY.GLIB);
	Linker.link(g_option_context_get_summary, "g_option_context_get_summary", LIBRARY.GLIB);
	Linker.link(g_option_context_set_description, "g_option_context_set_description", LIBRARY.GLIB);
	Linker.link(g_option_context_get_description, "g_option_context_get_description", LIBRARY.GLIB);
	Linker.link(g_option_context_set_translate_func, "g_option_context_set_translate_func", LIBRARY.GLIB);
	Linker.link(g_option_context_set_translation_domain, "g_option_context_set_translation_domain", LIBRARY.GLIB);
	Linker.link(g_option_context_free, "g_option_context_free", LIBRARY.GLIB);
	Linker.link(g_option_context_parse, "g_option_context_parse", LIBRARY.GLIB);
	Linker.link(g_option_context_set_help_enabled, "g_option_context_set_help_enabled", LIBRARY.GLIB);
	Linker.link(g_option_context_get_help_enabled, "g_option_context_get_help_enabled", LIBRARY.GLIB);
	Linker.link(g_option_context_set_ignore_unknown_options, "g_option_context_set_ignore_unknown_options", LIBRARY.GLIB);
	Linker.link(g_option_context_get_ignore_unknown_options, "g_option_context_get_ignore_unknown_options", LIBRARY.GLIB);
	Linker.link(g_option_context_get_help, "g_option_context_get_help", LIBRARY.GLIB);
	Linker.link(g_option_context_add_main_entries, "g_option_context_add_main_entries", LIBRARY.GLIB);
	Linker.link(g_option_context_add_group, "g_option_context_add_group", LIBRARY.GLIB);
	Linker.link(g_option_context_set_main_group, "g_option_context_set_main_group", LIBRARY.GLIB);
	Linker.link(g_option_context_get_main_group, "g_option_context_get_main_group", LIBRARY.GLIB);

	// glib.OptionGroup

	Linker.link(g_option_group_new, "g_option_group_new", LIBRARY.GLIB);
	Linker.link(g_option_group_free, "g_option_group_free", LIBRARY.GLIB);
	Linker.link(g_option_group_add_entries, "g_option_group_add_entries", LIBRARY.GLIB);
	Linker.link(g_option_group_set_parse_hooks, "g_option_group_set_parse_hooks", LIBRARY.GLIB);
	Linker.link(g_option_group_set_error_hook, "g_option_group_set_error_hook", LIBRARY.GLIB);
	Linker.link(g_option_group_set_translate_func, "g_option_group_set_translate_func", LIBRARY.GLIB);
	Linker.link(g_option_group_set_translation_domain, "g_option_group_set_translation_domain", LIBRARY.GLIB);

	// glib.Pattern

	Linker.link(g_pattern_spec_new, "g_pattern_spec_new", LIBRARY.GLIB);
	Linker.link(g_pattern_spec_free, "g_pattern_spec_free", LIBRARY.GLIB);
	Linker.link(g_pattern_spec_equal, "g_pattern_spec_equal", LIBRARY.GLIB);
	Linker.link(g_pattern_match, "g_pattern_match", LIBRARY.GLIB);
	Linker.link(g_pattern_match_string, "g_pattern_match_string", LIBRARY.GLIB);
	Linker.link(g_pattern_match_simple, "g_pattern_match_simple", LIBRARY.GLIB);

	// glib.Regex

	Linker.link(g_regex_new, "g_regex_new", LIBRARY.GLIB);
	Linker.link(g_regex_ref, "g_regex_ref", LIBRARY.GLIB);
	Linker.link(g_regex_unref, "g_regex_unref", LIBRARY.GLIB);
	Linker.link(g_regex_get_pattern, "g_regex_get_pattern", LIBRARY.GLIB);
	Linker.link(g_regex_get_max_backref, "g_regex_get_max_backref", LIBRARY.GLIB);
	Linker.link(g_regex_get_capture_count, "g_regex_get_capture_count", LIBRARY.GLIB);
	Linker.link(g_regex_get_string_number, "g_regex_get_string_number", LIBRARY.GLIB);
	Linker.link(g_regex_escape_string, "g_regex_escape_string", LIBRARY.GLIB);
	Linker.link(g_regex_match_simple, "g_regex_match_simple", LIBRARY.GLIB);
	Linker.link(g_regex_match, "g_regex_match", LIBRARY.GLIB);
	Linker.link(g_regex_match_full, "g_regex_match_full", LIBRARY.GLIB);
	Linker.link(g_regex_match_all, "g_regex_match_all", LIBRARY.GLIB);
	Linker.link(g_regex_match_all_full, "g_regex_match_all_full", LIBRARY.GLIB);
	Linker.link(g_regex_split_simple, "g_regex_split_simple", LIBRARY.GLIB);
	Linker.link(g_regex_split, "g_regex_split", LIBRARY.GLIB);
	Linker.link(g_regex_split_full, "g_regex_split_full", LIBRARY.GLIB);
	Linker.link(g_regex_replace, "g_regex_replace", LIBRARY.GLIB);
	Linker.link(g_regex_replace_literal, "g_regex_replace_literal", LIBRARY.GLIB);
	Linker.link(g_regex_replace_eval, "g_regex_replace_eval", LIBRARY.GLIB);
	Linker.link(g_regex_check_replacement, "g_regex_check_replacement", LIBRARY.GLIB);

	// glib.MatchInfo

	Linker.link(g_match_info_get_regex, "g_match_info_get_regex", LIBRARY.GLIB);
	Linker.link(g_match_info_get_string, "g_match_info_get_string", LIBRARY.GLIB);
	Linker.link(g_match_info_free, "g_match_info_free", LIBRARY.GLIB);
	Linker.link(g_match_info_matches, "g_match_info_matches", LIBRARY.GLIB);
	Linker.link(g_match_info_next, "g_match_info_next", LIBRARY.GLIB);
	Linker.link(g_match_info_get_match_count, "g_match_info_get_match_count", LIBRARY.GLIB);
	Linker.link(g_match_info_is_partial_match, "g_match_info_is_partial_match", LIBRARY.GLIB);
	Linker.link(g_match_info_expand_references, "g_match_info_expand_references", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch, "g_match_info_fetch", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_pos, "g_match_info_fetch_pos", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_named, "g_match_info_fetch_named", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_named_pos, "g_match_info_fetch_named_pos", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_all, "g_match_info_fetch_all", LIBRARY.GLIB);

	// glib.SimpleXML

	Linker.link(g_markup_escape_text, "g_markup_escape_text", LIBRARY.GLIB);
	Linker.link(g_markup_printf_escaped, "g_markup_printf_escaped", LIBRARY.GLIB);
	Linker.link(g_markup_vprintf_escaped, "g_markup_vprintf_escaped", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_end_parse, "g_markup_parse_context_end_parse", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_free, "g_markup_parse_context_free", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_position, "g_markup_parse_context_get_position", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_element, "g_markup_parse_context_get_element", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_element_stack, "g_markup_parse_context_get_element_stack", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_user_data, "g_markup_parse_context_get_user_data", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_new, "g_markup_parse_context_new", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_parse, "g_markup_parse_context_parse", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_push, "g_markup_parse_context_push", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_pop, "g_markup_parse_context_pop", LIBRARY.GLIB);
	Linker.link(g_markup_collect_attributes, "g_markup_collect_attributes", LIBRARY.GLIB);

	// glib.KeyFile

	Linker.link(g_key_file_new, "g_key_file_new", LIBRARY.GLIB);
	Linker.link(g_key_file_free, "g_key_file_free", LIBRARY.GLIB);
	Linker.link(g_key_file_set_list_separator, "g_key_file_set_list_separator", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_file, "g_key_file_load_from_file", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_data, "g_key_file_load_from_data", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_data_dirs, "g_key_file_load_from_data_dirs", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_dirs, "g_key_file_load_from_dirs", LIBRARY.GLIB);
	Linker.link(g_key_file_to_data, "g_key_file_to_data", LIBRARY.GLIB);
	Linker.link(g_key_file_get_start_group, "g_key_file_get_start_group", LIBRARY.GLIB);
	Linker.link(g_key_file_get_groups, "g_key_file_get_groups", LIBRARY.GLIB);
	Linker.link(g_key_file_get_keys, "g_key_file_get_keys", LIBRARY.GLIB);
	Linker.link(g_key_file_has_group, "g_key_file_has_group", LIBRARY.GLIB);
	Linker.link(g_key_file_has_key, "g_key_file_has_key", LIBRARY.GLIB);
	Linker.link(g_key_file_get_value, "g_key_file_get_value", LIBRARY.GLIB);
	Linker.link(g_key_file_get_string, "g_key_file_get_string", LIBRARY.GLIB);
	Linker.link(g_key_file_get_locale_string, "g_key_file_get_locale_string", LIBRARY.GLIB);
	Linker.link(g_key_file_get_boolean, "g_key_file_get_boolean", LIBRARY.GLIB);
	Linker.link(g_key_file_get_integer, "g_key_file_get_integer", LIBRARY.GLIB);
	Linker.link(g_key_file_get_double, "g_key_file_get_double", LIBRARY.GLIB);
	Linker.link(g_key_file_get_string_list, "g_key_file_get_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_locale_string_list, "g_key_file_get_locale_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_boolean_list, "g_key_file_get_boolean_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_integer_list, "g_key_file_get_integer_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_double_list, "g_key_file_get_double_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_comment, "g_key_file_get_comment", LIBRARY.GLIB);
	Linker.link(g_key_file_set_value, "g_key_file_set_value", LIBRARY.GLIB);
	Linker.link(g_key_file_set_string, "g_key_file_set_string", LIBRARY.GLIB);
	Linker.link(g_key_file_set_locale_string, "g_key_file_set_locale_string", LIBRARY.GLIB);
	Linker.link(g_key_file_set_boolean, "g_key_file_set_boolean", LIBRARY.GLIB);
	Linker.link(g_key_file_set_integer, "g_key_file_set_integer", LIBRARY.GLIB);
	Linker.link(g_key_file_set_double, "g_key_file_set_double", LIBRARY.GLIB);
	Linker.link(g_key_file_set_string_list, "g_key_file_set_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_locale_string_list, "g_key_file_set_locale_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_boolean_list, "g_key_file_set_boolean_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_integer_list, "g_key_file_set_integer_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_double_list, "g_key_file_set_double_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_comment, "g_key_file_set_comment", LIBRARY.GLIB);
	Linker.link(g_key_file_remove_group, "g_key_file_remove_group", LIBRARY.GLIB);
	Linker.link(g_key_file_remove_key, "g_key_file_remove_key", LIBRARY.GLIB);
	Linker.link(g_key_file_remove_comment, "g_key_file_remove_comment", LIBRARY.GLIB);

	// glib.BookmarkFile

	Linker.link(g_bookmark_file_new, "g_bookmark_file_new", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_free, "g_bookmark_file_free", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_load_from_file, "g_bookmark_file_load_from_file", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_load_from_data, "g_bookmark_file_load_from_data", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_load_from_data_dirs, "g_bookmark_file_load_from_data_dirs", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_to_data, "g_bookmark_file_to_data", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_to_file, "g_bookmark_file_to_file", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_has_item, "g_bookmark_file_has_item", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_has_group, "g_bookmark_file_has_group", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_has_application, "g_bookmark_file_has_application", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_size, "g_bookmark_file_get_size", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_uris, "g_bookmark_file_get_uris", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_title, "g_bookmark_file_get_title", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_description, "g_bookmark_file_get_description", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_mime_type, "g_bookmark_file_get_mime_type", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_is_private, "g_bookmark_file_get_is_private", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_icon, "g_bookmark_file_get_icon", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_added, "g_bookmark_file_get_added", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_modified, "g_bookmark_file_get_modified", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_visited, "g_bookmark_file_get_visited", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_groups, "g_bookmark_file_get_groups", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_applications, "g_bookmark_file_get_applications", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_app_info, "g_bookmark_file_get_app_info", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_title, "g_bookmark_file_set_title", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_description, "g_bookmark_file_set_description", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_mime_type, "g_bookmark_file_set_mime_type", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_is_private, "g_bookmark_file_set_is_private", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_icon, "g_bookmark_file_set_icon", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_added, "g_bookmark_file_set_added", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_groups, "g_bookmark_file_set_groups", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_modified, "g_bookmark_file_set_modified", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_visited, "g_bookmark_file_set_visited", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_app_info, "g_bookmark_file_set_app_info", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_add_group, "g_bookmark_file_add_group", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_add_application, "g_bookmark_file_add_application", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_remove_group, "g_bookmark_file_remove_group", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_remove_application, "g_bookmark_file_remove_application", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_remove_item, "g_bookmark_file_remove_item", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_move_item, "g_bookmark_file_move_item", LIBRARY.GLIB);

	// glib.WindowsUtils

	Linker.link(g_win32_error_message, "g_win32_error_message", LIBRARY.GLIB);
	Linker.link(g_win32_getlocale, "g_win32_getlocale", LIBRARY.GLIB);
	Linker.link(g_win32_get_package_installation_directory, "g_win32_get_package_installation_directory", LIBRARY.GLIB);
	Linker.link(g_win32_get_package_installation_directory_of_module, "g_win32_get_package_installation_directory_of_module", LIBRARY.GLIB);
	Linker.link(g_win32_get_package_installation_subdirectory, "g_win32_get_package_installation_subdirectory", LIBRARY.GLIB);
	Linker.link(g_win32_get_windows_version, "g_win32_get_windows_version", LIBRARY.GLIB);
	Linker.link(g_win32_locale_filename_from_utf8, "g_win32_locale_filename_from_utf8", LIBRARY.GLIB);

	// glib.MemorySlice

	Linker.link(g_slice_alloc, "g_slice_alloc", LIBRARY.GLIB);
	Linker.link(g_slice_alloc0, "g_slice_alloc0", LIBRARY.GLIB);
	Linker.link(g_slice_copy, "g_slice_copy", LIBRARY.GLIB);
	Linker.link(g_slice_free1, "g_slice_free1", LIBRARY.GLIB);
	Linker.link(g_slice_free_chain_with_offset, "g_slice_free_chain_with_offset", LIBRARY.GLIB);

	// glib.MemoryChunk

	Linker.link(g_mem_chunk_new, "g_mem_chunk_new", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_alloc, "g_mem_chunk_alloc", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_alloc0, "g_mem_chunk_alloc0", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_free, "g_mem_chunk_free", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_destroy, "g_mem_chunk_destroy", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_reset, "g_mem_chunk_reset", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_clean, "g_mem_chunk_clean", LIBRARY.GLIB);
	Linker.link(g_blow_chunks, "g_blow_chunks", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_info, "g_mem_chunk_info", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_print, "g_mem_chunk_print", LIBRARY.GLIB);

	// glib.ListG

	Linker.link(g_list_append, "g_list_append", LIBRARY.GLIB);
	Linker.link(g_list_prepend, "g_list_prepend", LIBRARY.GLIB);
	Linker.link(g_list_insert, "g_list_insert", LIBRARY.GLIB);
	Linker.link(g_list_insert_before, "g_list_insert_before", LIBRARY.GLIB);
	Linker.link(g_list_insert_sorted, "g_list_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_list_remove, "g_list_remove", LIBRARY.GLIB);
	Linker.link(g_list_remove_link, "g_list_remove_link", LIBRARY.GLIB);
	Linker.link(g_list_delete_link, "g_list_delete_link", LIBRARY.GLIB);
	Linker.link(g_list_remove_all, "g_list_remove_all", LIBRARY.GLIB);
	Linker.link(g_list_free, "g_list_free", LIBRARY.GLIB);
	Linker.link(g_list_alloc, "g_list_alloc", LIBRARY.GLIB);
	Linker.link(g_list_free_1, "g_list_free_1", LIBRARY.GLIB);
	Linker.link(g_list_length, "g_list_length", LIBRARY.GLIB);
	Linker.link(g_list_copy, "g_list_copy", LIBRARY.GLIB);
	Linker.link(g_list_reverse, "g_list_reverse", LIBRARY.GLIB);
	Linker.link(g_list_sort, "g_list_sort", LIBRARY.GLIB);
	Linker.link(g_list_insert_sorted_with_data, "g_list_insert_sorted_with_data", LIBRARY.GLIB);
	Linker.link(g_list_sort_with_data, "g_list_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_list_concat, "g_list_concat", LIBRARY.GLIB);
	Linker.link(g_list_foreach, "g_list_foreach", LIBRARY.GLIB);
	Linker.link(g_list_first, "g_list_first", LIBRARY.GLIB);
	Linker.link(g_list_last, "g_list_last", LIBRARY.GLIB);
	Linker.link(g_list_nth, "g_list_nth", LIBRARY.GLIB);
	Linker.link(g_list_nth_data, "g_list_nth_data", LIBRARY.GLIB);
	Linker.link(g_list_nth_prev, "g_list_nth_prev", LIBRARY.GLIB);
	Linker.link(g_list_find, "g_list_find", LIBRARY.GLIB);
	Linker.link(g_list_find_custom, "g_list_find_custom", LIBRARY.GLIB);
	Linker.link(g_list_position, "g_list_position", LIBRARY.GLIB);
	Linker.link(g_list_index, "g_list_index", LIBRARY.GLIB);
	Linker.link(g_list_push_allocator, "g_list_push_allocator", LIBRARY.GLIB);
	Linker.link(g_list_pop_allocator, "g_list_pop_allocator", LIBRARY.GLIB);

	// glib.ListSG

	Linker.link(g_slist_alloc, "g_slist_alloc", LIBRARY.GLIB);
	Linker.link(g_slist_append, "g_slist_append", LIBRARY.GLIB);
	Linker.link(g_slist_prepend, "g_slist_prepend", LIBRARY.GLIB);
	Linker.link(g_slist_insert, "g_slist_insert", LIBRARY.GLIB);
	Linker.link(g_slist_insert_before, "g_slist_insert_before", LIBRARY.GLIB);
	Linker.link(g_slist_insert_sorted, "g_slist_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_slist_remove, "g_slist_remove", LIBRARY.GLIB);
	Linker.link(g_slist_remove_link, "g_slist_remove_link", LIBRARY.GLIB);
	Linker.link(g_slist_delete_link, "g_slist_delete_link", LIBRARY.GLIB);
	Linker.link(g_slist_remove_all, "g_slist_remove_all", LIBRARY.GLIB);
	Linker.link(g_slist_free, "g_slist_free", LIBRARY.GLIB);
	Linker.link(g_slist_free_1, "g_slist_free_1", LIBRARY.GLIB);
	Linker.link(g_slist_length, "g_slist_length", LIBRARY.GLIB);
	Linker.link(g_slist_copy, "g_slist_copy", LIBRARY.GLIB);
	Linker.link(g_slist_reverse, "g_slist_reverse", LIBRARY.GLIB);
	Linker.link(g_slist_insert_sorted_with_data, "g_slist_insert_sorted_with_data", LIBRARY.GLIB);
	Linker.link(g_slist_sort, "g_slist_sort", LIBRARY.GLIB);
	Linker.link(g_slist_sort_with_data, "g_slist_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_slist_concat, "g_slist_concat", LIBRARY.GLIB);
	Linker.link(g_slist_foreach, "g_slist_foreach", LIBRARY.GLIB);
	Linker.link(g_slist_last, "g_slist_last", LIBRARY.GLIB);
	Linker.link(g_slist_nth, "g_slist_nth", LIBRARY.GLIB);
	Linker.link(g_slist_nth_data, "g_slist_nth_data", LIBRARY.GLIB);
	Linker.link(g_slist_find, "g_slist_find", LIBRARY.GLIB);
	Linker.link(g_slist_find_custom, "g_slist_find_custom", LIBRARY.GLIB);
	Linker.link(g_slist_position, "g_slist_position", LIBRARY.GLIB);
	Linker.link(g_slist_index, "g_slist_index", LIBRARY.GLIB);
	Linker.link(g_slist_push_allocator, "g_slist_push_allocator", LIBRARY.GLIB);
	Linker.link(g_slist_pop_allocator, "g_slist_pop_allocator", LIBRARY.GLIB);

	// glib.QueueG

	Linker.link(g_queue_new, "g_queue_new", LIBRARY.GLIB);
	Linker.link(g_queue_free, "g_queue_free", LIBRARY.GLIB);
	Linker.link(g_queue_init, "g_queue_init", LIBRARY.GLIB);
	Linker.link(g_queue_clear, "g_queue_clear", LIBRARY.GLIB);
	Linker.link(g_queue_is_empty, "g_queue_is_empty", LIBRARY.GLIB);
	Linker.link(g_queue_get_length, "g_queue_get_length", LIBRARY.GLIB);
	Linker.link(g_queue_reverse, "g_queue_reverse", LIBRARY.GLIB);
	Linker.link(g_queue_copy, "g_queue_copy", LIBRARY.GLIB);
	Linker.link(g_queue_foreach, "g_queue_foreach", LIBRARY.GLIB);
	Linker.link(g_queue_find, "g_queue_find", LIBRARY.GLIB);
	Linker.link(g_queue_find_custom, "g_queue_find_custom", LIBRARY.GLIB);
	Linker.link(g_queue_sort, "g_queue_sort", LIBRARY.GLIB);
	Linker.link(g_queue_push_head, "g_queue_push_head", LIBRARY.GLIB);
	Linker.link(g_queue_push_tail, "g_queue_push_tail", LIBRARY.GLIB);
	Linker.link(g_queue_push_nth, "g_queue_push_nth", LIBRARY.GLIB);
	Linker.link(g_queue_pop_head, "g_queue_pop_head", LIBRARY.GLIB);
	Linker.link(g_queue_pop_tail, "g_queue_pop_tail", LIBRARY.GLIB);
	Linker.link(g_queue_pop_nth, "g_queue_pop_nth", LIBRARY.GLIB);
	Linker.link(g_queue_peek_head, "g_queue_peek_head", LIBRARY.GLIB);
	Linker.link(g_queue_peek_tail, "g_queue_peek_tail", LIBRARY.GLIB);
	Linker.link(g_queue_peek_nth, "g_queue_peek_nth", LIBRARY.GLIB);
	Linker.link(g_queue_index, "g_queue_index", LIBRARY.GLIB);
	Linker.link(g_queue_remove, "g_queue_remove", LIBRARY.GLIB);
	Linker.link(g_queue_remove_all, "g_queue_remove_all", LIBRARY.GLIB);
	Linker.link(g_queue_insert_before, "g_queue_insert_before", LIBRARY.GLIB);
	Linker.link(g_queue_insert_after, "g_queue_insert_after", LIBRARY.GLIB);
	Linker.link(g_queue_insert_sorted, "g_queue_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_queue_push_head_link, "g_queue_push_head_link", LIBRARY.GLIB);
	Linker.link(g_queue_push_tail_link, "g_queue_push_tail_link", LIBRARY.GLIB);
	Linker.link(g_queue_push_nth_link, "g_queue_push_nth_link", LIBRARY.GLIB);
	Linker.link(g_queue_pop_head_link, "g_queue_pop_head_link", LIBRARY.GLIB);
	Linker.link(g_queue_pop_tail_link, "g_queue_pop_tail_link", LIBRARY.GLIB);
	Linker.link(g_queue_pop_nth_link, "g_queue_pop_nth_link", LIBRARY.GLIB);
	Linker.link(g_queue_peek_head_link, "g_queue_peek_head_link", LIBRARY.GLIB);
	Linker.link(g_queue_peek_tail_link, "g_queue_peek_tail_link", LIBRARY.GLIB);
	Linker.link(g_queue_peek_nth_link, "g_queue_peek_nth_link", LIBRARY.GLIB);
	Linker.link(g_queue_link_index, "g_queue_link_index", LIBRARY.GLIB);
	Linker.link(g_queue_unlink, "g_queue_unlink", LIBRARY.GLIB);
	Linker.link(g_queue_delete_link, "g_queue_delete_link", LIBRARY.GLIB);

	// glib.Sequence

	Linker.link(g_sequence_new, "g_sequence_new", LIBRARY.GLIB);
	Linker.link(g_sequence_free, "g_sequence_free", LIBRARY.GLIB);
	Linker.link(g_sequence_get_length, "g_sequence_get_length", LIBRARY.GLIB);
	Linker.link(g_sequence_foreach, "g_sequence_foreach", LIBRARY.GLIB);
	Linker.link(g_sequence_foreach_range, "g_sequence_foreach_range", LIBRARY.GLIB);
	Linker.link(g_sequence_sort, "g_sequence_sort", LIBRARY.GLIB);
	Linker.link(g_sequence_sort_iter, "g_sequence_sort_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_get_begin_iter, "g_sequence_get_begin_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_get_end_iter, "g_sequence_get_end_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_get_iter_at_pos, "g_sequence_get_iter_at_pos", LIBRARY.GLIB);
	Linker.link(g_sequence_append, "g_sequence_append", LIBRARY.GLIB);
	Linker.link(g_sequence_prepend, "g_sequence_prepend", LIBRARY.GLIB);
	Linker.link(g_sequence_insert_before, "g_sequence_insert_before", LIBRARY.GLIB);
	Linker.link(g_sequence_move, "g_sequence_move", LIBRARY.GLIB);
	Linker.link(g_sequence_swap, "g_sequence_swap", LIBRARY.GLIB);
	Linker.link(g_sequence_insert_sorted, "g_sequence_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_sequence_insert_sorted_iter, "g_sequence_insert_sorted_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_sort_changed, "g_sequence_sort_changed", LIBRARY.GLIB);
	Linker.link(g_sequence_sort_changed_iter, "g_sequence_sort_changed_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_remove, "g_sequence_remove", LIBRARY.GLIB);
	Linker.link(g_sequence_remove_range, "g_sequence_remove_range", LIBRARY.GLIB);
	Linker.link(g_sequence_move_range, "g_sequence_move_range", LIBRARY.GLIB);
	Linker.link(g_sequence_search, "g_sequence_search", LIBRARY.GLIB);
	Linker.link(g_sequence_search_iter, "g_sequence_search_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_get, "g_sequence_get", LIBRARY.GLIB);
	Linker.link(g_sequence_set, "g_sequence_set", LIBRARY.GLIB);
	Linker.link(g_sequence_range_get_midpoint, "g_sequence_range_get_midpoint", LIBRARY.GLIB);

	// glib.SequenceIter

	Linker.link(g_sequence_iter_is_begin, "g_sequence_iter_is_begin", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_is_end, "g_sequence_iter_is_end", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_next, "g_sequence_iter_next", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_prev, "g_sequence_iter_prev", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_get_position, "g_sequence_iter_get_position", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_move, "g_sequence_iter_move", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_get_sequence, "g_sequence_iter_get_sequence", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_compare, "g_sequence_iter_compare", LIBRARY.GLIB);

	// glib.TrashStack

	Linker.link(g_trash_stack_push, "g_trash_stack_push", LIBRARY.GLIB);
	Linker.link(g_trash_stack_pop, "g_trash_stack_pop", LIBRARY.GLIB);
	Linker.link(g_trash_stack_peek, "g_trash_stack_peek", LIBRARY.GLIB);
	Linker.link(g_trash_stack_height, "g_trash_stack_height", LIBRARY.GLIB);

	// glib.HashTable

	Linker.link(g_hash_table_new, "g_hash_table_new", LIBRARY.GLIB);
	Linker.link(g_hash_table_new_full, "g_hash_table_new_full", LIBRARY.GLIB);
	Linker.link(g_hash_table_insert, "g_hash_table_insert", LIBRARY.GLIB);
	Linker.link(g_hash_table_replace, "g_hash_table_replace", LIBRARY.GLIB);
	Linker.link(g_hash_table_size, "g_hash_table_size", LIBRARY.GLIB);
	Linker.link(g_hash_table_lookup, "g_hash_table_lookup", LIBRARY.GLIB);
	Linker.link(g_hash_table_lookup_extended, "g_hash_table_lookup_extended", LIBRARY.GLIB);
	Linker.link(g_hash_table_foreach, "g_hash_table_foreach", LIBRARY.GLIB);
	Linker.link(g_hash_table_find, "g_hash_table_find", LIBRARY.GLIB);
	Linker.link(g_hash_table_remove, "g_hash_table_remove", LIBRARY.GLIB);
	Linker.link(g_hash_table_steal, "g_hash_table_steal", LIBRARY.GLIB);
	Linker.link(g_hash_table_foreach_remove, "g_hash_table_foreach_remove", LIBRARY.GLIB);
	Linker.link(g_hash_table_foreach_steal, "g_hash_table_foreach_steal", LIBRARY.GLIB);
	Linker.link(g_hash_table_remove_all, "g_hash_table_remove_all", LIBRARY.GLIB);
	Linker.link(g_hash_table_steal_all, "g_hash_table_steal_all", LIBRARY.GLIB);
	Linker.link(g_hash_table_get_keys, "g_hash_table_get_keys", LIBRARY.GLIB);
	Linker.link(g_hash_table_get_values, "g_hash_table_get_values", LIBRARY.GLIB);
	Linker.link(g_hash_table_destroy, "g_hash_table_destroy", LIBRARY.GLIB);
	Linker.link(g_hash_table_ref, "g_hash_table_ref", LIBRARY.GLIB);
	Linker.link(g_hash_table_unref, "g_hash_table_unref", LIBRARY.GLIB);
	Linker.link(g_direct_equal, "g_direct_equal", LIBRARY.GLIB);
	Linker.link(g_direct_hash, "g_direct_hash", LIBRARY.GLIB);
	Linker.link(g_int_equal, "g_int_equal", LIBRARY.GLIB);
	Linker.link(g_int_hash, "g_int_hash", LIBRARY.GLIB);
	Linker.link(g_str_equal, "g_str_equal", LIBRARY.GLIB);
	Linker.link(g_str_hash, "g_str_hash", LIBRARY.GLIB);

	// glib.HashTableIter

	Linker.link(g_hash_table_iter_init, "g_hash_table_iter_init", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_next, "g_hash_table_iter_next", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_get_hash_table, "g_hash_table_iter_get_hash_table", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_remove, "g_hash_table_iter_remove", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_steal, "g_hash_table_iter_steal", LIBRARY.GLIB);

	// glib.StringG

	Linker.link(g_string_new, "g_string_new", LIBRARY.GLIB);
	Linker.link(g_string_new_len, "g_string_new_len", LIBRARY.GLIB);
	Linker.link(g_string_sized_new, "g_string_sized_new", LIBRARY.GLIB);
	Linker.link(g_string_assign, "g_string_assign", LIBRARY.GLIB);
	Linker.link(g_string_vprintf, "g_string_vprintf", LIBRARY.GLIB);
	Linker.link(g_string_append_vprintf, "g_string_append_vprintf", LIBRARY.GLIB);
	Linker.link(g_string_printf, "g_string_printf", LIBRARY.GLIB);
	Linker.link(g_string_append_printf, "g_string_append_printf", LIBRARY.GLIB);
	Linker.link(g_string_append, "g_string_append", LIBRARY.GLIB);
	Linker.link(g_string_append_c, "g_string_append_c", LIBRARY.GLIB);
	Linker.link(g_string_append_unichar, "g_string_append_unichar", LIBRARY.GLIB);
	Linker.link(g_string_append_len, "g_string_append_len", LIBRARY.GLIB);
	Linker.link(g_string_append_uri_escaped, "g_string_append_uri_escaped", LIBRARY.GLIB);
	Linker.link(g_string_prepend, "g_string_prepend", LIBRARY.GLIB);
	Linker.link(g_string_prepend_c, "g_string_prepend_c", LIBRARY.GLIB);
	Linker.link(g_string_prepend_unichar, "g_string_prepend_unichar", LIBRARY.GLIB);
	Linker.link(g_string_prepend_len, "g_string_prepend_len", LIBRARY.GLIB);
	Linker.link(g_string_insert, "g_string_insert", LIBRARY.GLIB);
	Linker.link(g_string_insert_c, "g_string_insert_c", LIBRARY.GLIB);
	Linker.link(g_string_insert_unichar, "g_string_insert_unichar", LIBRARY.GLIB);
	Linker.link(g_string_insert_len, "g_string_insert_len", LIBRARY.GLIB);
	Linker.link(g_string_overwrite, "g_string_overwrite", LIBRARY.GLIB);
	Linker.link(g_string_overwrite_len, "g_string_overwrite_len", LIBRARY.GLIB);
	Linker.link(g_string_erase, "g_string_erase", LIBRARY.GLIB);
	Linker.link(g_string_truncate, "g_string_truncate", LIBRARY.GLIB);
	Linker.link(g_string_set_size, "g_string_set_size", LIBRARY.GLIB);
	Linker.link(g_string_free, "g_string_free", LIBRARY.GLIB);
	Linker.link(g_string_up, "g_string_up", LIBRARY.GLIB);
	Linker.link(g_string_down, "g_string_down", LIBRARY.GLIB);
	Linker.link(g_string_hash, "g_string_hash", LIBRARY.GLIB);
	Linker.link(g_string_equal, "g_string_equal", LIBRARY.GLIB);

	// glib.StringGChunk

	Linker.link(g_string_chunk_new, "g_string_chunk_new", LIBRARY.GLIB);
	Linker.link(g_string_chunk_insert, "g_string_chunk_insert", LIBRARY.GLIB);
	Linker.link(g_string_chunk_insert_const, "g_string_chunk_insert_const", LIBRARY.GLIB);
	Linker.link(g_string_chunk_insert_len, "g_string_chunk_insert_len", LIBRARY.GLIB);
	Linker.link(g_string_chunk_clear, "g_string_chunk_clear", LIBRARY.GLIB);
	Linker.link(g_string_chunk_free, "g_string_chunk_free", LIBRARY.GLIB);

	// glib.ArrayG

	Linker.link(g_array_new, "g_array_new", LIBRARY.GLIB);
	Linker.link(g_array_sized_new, "g_array_sized_new", LIBRARY.GLIB);
	Linker.link(g_array_append_vals, "g_array_append_vals", LIBRARY.GLIB);
	Linker.link(g_array_prepend_vals, "g_array_prepend_vals", LIBRARY.GLIB);
	Linker.link(g_array_insert_vals, "g_array_insert_vals", LIBRARY.GLIB);
	Linker.link(g_array_remove_index, "g_array_remove_index", LIBRARY.GLIB);
	Linker.link(g_array_remove_index_fast, "g_array_remove_index_fast", LIBRARY.GLIB);
	Linker.link(g_array_remove_range, "g_array_remove_range", LIBRARY.GLIB);
	Linker.link(g_array_sort, "g_array_sort", LIBRARY.GLIB);
	Linker.link(g_array_sort_with_data, "g_array_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_array_set_size, "g_array_set_size", LIBRARY.GLIB);
	Linker.link(g_array_free, "g_array_free", LIBRARY.GLIB);

	// glib.PtrArray

	Linker.link(g_ptr_array_new, "g_ptr_array_new", LIBRARY.GLIB);
	Linker.link(g_ptr_array_sized_new, "g_ptr_array_sized_new", LIBRARY.GLIB);
	Linker.link(g_ptr_array_add, "g_ptr_array_add", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove, "g_ptr_array_remove", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_index, "g_ptr_array_remove_index", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_fast, "g_ptr_array_remove_fast", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_index_fast, "g_ptr_array_remove_index_fast", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_range, "g_ptr_array_remove_range", LIBRARY.GLIB);
	Linker.link(g_ptr_array_sort, "g_ptr_array_sort", LIBRARY.GLIB);
	Linker.link(g_ptr_array_sort_with_data, "g_ptr_array_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_ptr_array_set_size, "g_ptr_array_set_size", LIBRARY.GLIB);
	Linker.link(g_ptr_array_free, "g_ptr_array_free", LIBRARY.GLIB);
	Linker.link(g_ptr_array_foreach, "g_ptr_array_foreach", LIBRARY.GLIB);

	// glib.ByteArray

	Linker.link(g_byte_array_new, "g_byte_array_new", LIBRARY.GLIB);
	Linker.link(g_byte_array_sized_new, "g_byte_array_sized_new", LIBRARY.GLIB);
	Linker.link(g_byte_array_append, "g_byte_array_append", LIBRARY.GLIB);
	Linker.link(g_byte_array_prepend, "g_byte_array_prepend", LIBRARY.GLIB);
	Linker.link(g_byte_array_remove_index, "g_byte_array_remove_index", LIBRARY.GLIB);
	Linker.link(g_byte_array_remove_index_fast, "g_byte_array_remove_index_fast", LIBRARY.GLIB);
	Linker.link(g_byte_array_remove_range, "g_byte_array_remove_range", LIBRARY.GLIB);
	Linker.link(g_byte_array_sort, "g_byte_array_sort", LIBRARY.GLIB);
	Linker.link(g_byte_array_sort_with_data, "g_byte_array_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_byte_array_set_size, "g_byte_array_set_size", LIBRARY.GLIB);
	Linker.link(g_byte_array_free, "g_byte_array_free", LIBRARY.GLIB);

	// glib.BBTree

	Linker.link(g_tree_new, "g_tree_new", LIBRARY.GLIB);
	Linker.link(g_tree_new_with_data, "g_tree_new_with_data", LIBRARY.GLIB);
	Linker.link(g_tree_new_full, "g_tree_new_full", LIBRARY.GLIB);
	Linker.link(g_tree_insert, "g_tree_insert", LIBRARY.GLIB);
	Linker.link(g_tree_replace, "g_tree_replace", LIBRARY.GLIB);
	Linker.link(g_tree_nnodes, "g_tree_nnodes", LIBRARY.GLIB);
	Linker.link(g_tree_height, "g_tree_height", LIBRARY.GLIB);
	Linker.link(g_tree_lookup, "g_tree_lookup", LIBRARY.GLIB);
	Linker.link(g_tree_lookup_extended, "g_tree_lookup_extended", LIBRARY.GLIB);
	Linker.link(g_tree_foreach, "g_tree_foreach", LIBRARY.GLIB);
	Linker.link(g_tree_traverse, "g_tree_traverse", LIBRARY.GLIB);
	Linker.link(g_tree_search, "g_tree_search", LIBRARY.GLIB);
	Linker.link(g_tree_remove, "g_tree_remove", LIBRARY.GLIB);
	Linker.link(g_tree_steal, "g_tree_steal", LIBRARY.GLIB);
	Linker.link(g_tree_destroy, "g_tree_destroy", LIBRARY.GLIB);

	// glib.Node

	Linker.link(g_node_new, "g_node_new", LIBRARY.GLIB);
	Linker.link(g_node_copy, "g_node_copy", LIBRARY.GLIB);
	Linker.link(g_node_copy_deep, "g_node_copy_deep", LIBRARY.GLIB);
	Linker.link(g_node_insert, "g_node_insert", LIBRARY.GLIB);
	Linker.link(g_node_insert_before, "g_node_insert_before", LIBRARY.GLIB);
	Linker.link(g_node_insert_after, "g_node_insert_after", LIBRARY.GLIB);
	Linker.link(g_node_prepend, "g_node_prepend", LIBRARY.GLIB);
	Linker.link(g_node_reverse_children, "g_node_reverse_children", LIBRARY.GLIB);
	Linker.link(g_node_traverse, "g_node_traverse", LIBRARY.GLIB);
	Linker.link(g_node_children_foreach, "g_node_children_foreach", LIBRARY.GLIB);
	Linker.link(g_node_get_root, "g_node_get_root", LIBRARY.GLIB);
	Linker.link(g_node_find, "g_node_find", LIBRARY.GLIB);
	Linker.link(g_node_find_child, "g_node_find_child", LIBRARY.GLIB);
	Linker.link(g_node_child_index, "g_node_child_index", LIBRARY.GLIB);
	Linker.link(g_node_child_position, "g_node_child_position", LIBRARY.GLIB);
	Linker.link(g_node_last_child, "g_node_last_child", LIBRARY.GLIB);
	Linker.link(g_node_nth_child, "g_node_nth_child", LIBRARY.GLIB);
	Linker.link(g_node_first_sibling, "g_node_first_sibling", LIBRARY.GLIB);
	Linker.link(g_node_last_sibling, "g_node_last_sibling", LIBRARY.GLIB);
	Linker.link(g_node_depth, "g_node_depth", LIBRARY.GLIB);
	Linker.link(g_node_n_nodes, "g_node_n_nodes", LIBRARY.GLIB);
	Linker.link(g_node_n_children, "g_node_n_children", LIBRARY.GLIB);
	Linker.link(g_node_is_ancestor, "g_node_is_ancestor", LIBRARY.GLIB);
	Linker.link(g_node_max_height, "g_node_max_height", LIBRARY.GLIB);
	Linker.link(g_node_unlink, "g_node_unlink", LIBRARY.GLIB);
	Linker.link(g_node_destroy, "g_node_destroy", LIBRARY.GLIB);
	Linker.link(g_node_push_allocator, "g_node_push_allocator", LIBRARY.GLIB);
	Linker.link(g_node_pop_allocator, "g_node_pop_allocator", LIBRARY.GLIB);

	// glib.Quark

	Linker.link(g_quark_from_string, "g_quark_from_string", LIBRARY.GLIB);
	Linker.link(g_quark_from_static_string, "g_quark_from_static_string", LIBRARY.GLIB);
	Linker.link(g_quark_to_string, "g_quark_to_string", LIBRARY.GLIB);
	Linker.link(g_quark_try_string, "g_quark_try_string", LIBRARY.GLIB);
	Linker.link(g_intern_string, "g_intern_string", LIBRARY.GLIB);
	Linker.link(g_intern_static_string, "g_intern_static_string", LIBRARY.GLIB);

	// glib.DataList

	Linker.link(g_datalist_init, "g_datalist_init", LIBRARY.GLIB);
	Linker.link(g_datalist_id_set_data_full, "g_datalist_id_set_data_full", LIBRARY.GLIB);
	Linker.link(g_datalist_id_get_data, "g_datalist_id_get_data", LIBRARY.GLIB);
	Linker.link(g_datalist_id_remove_no_notify, "g_datalist_id_remove_no_notify", LIBRARY.GLIB);
	Linker.link(g_datalist_foreach, "g_datalist_foreach", LIBRARY.GLIB);
	Linker.link(g_datalist_clear, "g_datalist_clear", LIBRARY.GLIB);
	Linker.link(g_datalist_set_flags, "g_datalist_set_flags", LIBRARY.GLIB);
	Linker.link(g_datalist_unset_flags, "g_datalist_unset_flags", LIBRARY.GLIB);
	Linker.link(g_datalist_get_flags, "g_datalist_get_flags", LIBRARY.GLIB);

	// glib.Dataset

	Linker.link(g_dataset_id_set_data_full, "g_dataset_id_set_data_full", LIBRARY.GLIB);
	Linker.link(g_dataset_id_get_data, "g_dataset_id_get_data", LIBRARY.GLIB);
	Linker.link(g_dataset_id_remove_no_notify, "g_dataset_id_remove_no_notify", LIBRARY.GLIB);
	Linker.link(g_dataset_foreach, "g_dataset_foreach", LIBRARY.GLIB);
	Linker.link(g_dataset_destroy, "g_dataset_destroy", LIBRARY.GLIB);

	// glib.Relation

	Linker.link(g_relation_new, "g_relation_new", LIBRARY.GLIB);
	Linker.link(g_relation_index, "g_relation_index", LIBRARY.GLIB);
	Linker.link(g_relation_insert, "g_relation_insert", LIBRARY.GLIB);
	Linker.link(g_relation_exists, "g_relation_exists", LIBRARY.GLIB);
	Linker.link(g_relation_count, "g_relation_count", LIBRARY.GLIB);
	Linker.link(g_relation_select, "g_relation_select", LIBRARY.GLIB);
	Linker.link(g_relation_delete, "g_relation_delete", LIBRARY.GLIB);
	Linker.link(g_relation_destroy, "g_relation_destroy", LIBRARY.GLIB);
	Linker.link(g_relation_print, "g_relation_print", LIBRARY.GLIB);

	// glib.Tuples

	Linker.link(g_tuples_destroy, "g_tuples_destroy", LIBRARY.GLIB);
	Linker.link(g_tuples_index, "g_tuples_index", LIBRARY.GLIB);

	// glib.Cache

	Linker.link(g_cache_new, "g_cache_new", LIBRARY.GLIB);
	Linker.link(g_cache_insert, "g_cache_insert", LIBRARY.GLIB);
	Linker.link(g_cache_remove, "g_cache_remove", LIBRARY.GLIB);
	Linker.link(g_cache_destroy, "g_cache_destroy", LIBRARY.GLIB);
	Linker.link(g_cache_key_foreach, "g_cache_key_foreach", LIBRARY.GLIB);
	Linker.link(g_cache_value_foreach, "g_cache_value_foreach", LIBRARY.GLIB);

	// glib.Allocator

	Linker.link(g_allocator_new, "g_allocator_new", LIBRARY.GLIB);
	Linker.link(g_allocator_free, "g_allocator_free", LIBRARY.GLIB);
}

extern(C)
{
	
	// glib.Version
	
	typedef gchar* function(guint requiredMajor, guint requiredMinor, guint requiredMicro) c_glib_check_version;
	
	// glib.Atomic
	
	typedef gint function(gint* atomic) c_g_atomic_int_get;
	typedef void function(gint* atomic, gint newval) c_g_atomic_int_set;
	typedef void function(gint* atomic, gint val) c_g_atomic_int_add;
	typedef gint function(gint* atomic, gint val) c_g_atomic_int_exchange_and_add;
	typedef gboolean function(gint* atomic, gint oldval, gint newval) c_g_atomic_int_compare_and_exchange;
	typedef gpointer function(gpointer* atomic) c_g_atomic_pointer_get;
	typedef void function(gpointer* atomic, gpointer newval) c_g_atomic_pointer_set;
	typedef gboolean function(gpointer* atomic, gpointer oldval, gpointer newval) c_g_atomic_pointer_compare_and_exchange;
	typedef void function(gint* atomic) c_g_atomic_int_inc;
	typedef gboolean function(gint* atomic) c_g_atomic_int_dec_and_test;
	
	// glib.MainLoop
	
	typedef GMainLoop* function(GMainContext* context, gboolean isRunning) c_g_main_loop_new;
	typedef GMainLoop* function(GMainLoop* loop) c_g_main_loop_ref;
	typedef void function(GMainLoop* loop) c_g_main_loop_unref;
	typedef void function(GMainLoop* loop) c_g_main_loop_run;
	typedef void function(GMainLoop* loop) c_g_main_loop_quit;
	typedef gboolean function(GMainLoop* loop) c_g_main_loop_is_running;
	typedef GMainContext* function(GMainLoop* loop) c_g_main_loop_get_context;
	typedef gint function() c_g_main_depth;
	typedef GSource* function() c_g_main_current_source;
	typedef gint function(GPollFD* fds, guint nfds, gint timeout) c_g_poll;
	
	// glib.MainContext
	
	typedef GMainContext* function() c_g_main_context_new;
	typedef GMainContext* function(GMainContext* context) c_g_main_context_ref;
	typedef void function(GMainContext* context) c_g_main_context_unref;
	typedef GMainContext* function() c_g_main_context_default;
	typedef gboolean function(GMainContext* context, gboolean mayBlock) c_g_main_context_iteration;
	typedef gboolean function(GMainContext* context) c_g_main_context_pending;
	typedef GSource* function(GMainContext* context, guint sourceId) c_g_main_context_find_source_by_id;
	typedef GSource* function(GMainContext* context, gpointer userData) c_g_main_context_find_source_by_user_data;
	typedef GSource* function(GMainContext* context, GSourceFuncs* funcs, gpointer userData) c_g_main_context_find_source_by_funcs_user_data;
	typedef void function(GMainContext* context) c_g_main_context_wakeup;
	typedef gboolean function(GMainContext* context) c_g_main_context_acquire;
	typedef void function(GMainContext* context) c_g_main_context_release;
	typedef gboolean function(GMainContext* context) c_g_main_context_is_owner;
	typedef gboolean function(GMainContext* context, GCond* cond, GMutex* mutex) c_g_main_context_wait;
	typedef gboolean function(GMainContext* context, gint* priority) c_g_main_context_prepare;
	typedef gint function(GMainContext* context, gint maxPriority, gint* timeout, GPollFD* fds, gint nFds) c_g_main_context_query;
	typedef gint function(GMainContext* context, gint maxPriority, GPollFD* fds, gint nFds) c_g_main_context_check;
	typedef void function(GMainContext* context) c_g_main_context_dispatch;
	typedef void function(GMainContext* context, GPollFunc func) c_g_main_context_set_poll_func;
	typedef GPollFunc function(GMainContext* context) c_g_main_context_get_poll_func;
	typedef void function(GMainContext* context, GPollFD* fd, gint priority) c_g_main_context_add_poll;
	typedef void function(GMainContext* context, GPollFD* fd) c_g_main_context_remove_poll;
	
	// glib.Timeout
	
	typedef GSource* function(guint interval) c_g_timeout_source_new;
	typedef GSource* function(guint interval) c_g_timeout_source_new_seconds;
	typedef guint function(guint interval, GSourceFunc funct, gpointer data) c_g_timeout_add;
	typedef guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_g_timeout_add_full;
	typedef guint function(guint interval, GSourceFunc funct, gpointer data) c_g_timeout_add_seconds;
	typedef guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_g_timeout_add_seconds_full;
	
	// glib.Idle
	
	typedef GSource* function() c_g_idle_source_new;
	typedef guint function(GSourceFunc funct, gpointer data) c_g_idle_add;
	typedef guint function(gint priority, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_g_idle_add_full;
	typedef gboolean function(gpointer data) c_g_idle_remove_by_data;
	
	// glib.Child
	
	typedef GSource* function(GPid pid) c_g_child_watch_source_new;
	typedef guint function(GPid pid, GChildWatchFunc funct, gpointer data) c_g_child_watch_add;
	typedef guint function(gint priority, GPid pid, GChildWatchFunc funct, gpointer data, GDestroyNotify notify) c_g_child_watch_add_full;
	
	// glib.Source
	
	typedef GSource* function(GSourceFuncs* sourceFuncs, guint structSize) c_g_source_new;
	typedef GSource* function(GSource* source) c_g_source_ref;
	typedef void function(GSource* source) c_g_source_unref;
	typedef void function(GSource* source, GSourceFuncs* funcs) c_g_source_set_funcs;
	typedef guint function(GSource* source, GMainContext* context) c_g_source_attach;
	typedef void function(GSource* source) c_g_source_destroy;
	typedef gboolean function(GSource* source) c_g_source_is_destroyed;
	typedef void function(GSource* source, gint priority) c_g_source_set_priority;
	typedef gint function(GSource* source) c_g_source_get_priority;
	typedef void function(GSource* source, gboolean canRecurse) c_g_source_set_can_recurse;
	typedef gboolean function(GSource* source) c_g_source_get_can_recurse;
	typedef guint function(GSource* source) c_g_source_get_id;
	typedef GMainContext* function(GSource* source) c_g_source_get_context;
	typedef void function(GSource* source, GSourceFunc func, gpointer data, GDestroyNotify notify) c_g_source_set_callback;
	typedef void function(GSource* source, gpointer callbackData, GSourceCallbackFuncs* callbackFuncs) c_g_source_set_callback_indirect;
	typedef void function(GSource* source, GPollFD* fd) c_g_source_add_poll;
	typedef void function(GSource* source, GPollFD* fd) c_g_source_remove_poll;
	typedef void function(GSource* source, GTimeVal* timeval) c_g_source_get_current_time;
	typedef gboolean function(guint tag) c_g_source_remove;
	typedef gboolean function(GSourceFuncs* funcs, gpointer userData) c_g_source_remove_by_funcs_user_data;
	typedef gboolean function(gpointer userData) c_g_source_remove_by_user_data;
	
	// glib.ThreadPool
	
	typedef GThreadPool* function(GFunc func, gpointer userData, gint maxThreads, gboolean exclusive, GError** error) c_g_thread_pool_new;
	typedef void function(GThreadPool* pool, gpointer data, GError** error) c_g_thread_pool_push;
	typedef void function(GThreadPool* pool, gint maxThreads, GError** error) c_g_thread_pool_set_max_threads;
	typedef gint function(GThreadPool* pool) c_g_thread_pool_get_max_threads;
	typedef guint function(GThreadPool* pool) c_g_thread_pool_get_num_threads;
	typedef guint function(GThreadPool* pool) c_g_thread_pool_unprocessed;
	typedef void function(GThreadPool* pool, gboolean immediate, gboolean wait) c_g_thread_pool_free;
	typedef void function(gint maxThreads) c_g_thread_pool_set_max_unused_threads;
	typedef gint function() c_g_thread_pool_get_max_unused_threads;
	typedef guint function() c_g_thread_pool_get_num_unused_threads;
	typedef void function() c_g_thread_pool_stop_unused_threads;
	typedef void function(GThreadPool* pool, GCompareDataFunc func, gpointer userData) c_g_thread_pool_set_sort_function;
	typedef void function(guint interval) c_g_thread_pool_set_max_idle_time;
	typedef guint function() c_g_thread_pool_get_max_idle_time;
	
	// glib.AsyncQueue
	
	typedef GAsyncQueue* function() c_g_async_queue_new;
	typedef GAsyncQueue* function(GDestroyNotify itemFreeFunc) c_g_async_queue_new_full;
	typedef GAsyncQueue* function(GAsyncQueue* queue) c_g_async_queue_ref;
	typedef void function(GAsyncQueue* queue) c_g_async_queue_unref;
	typedef void function(GAsyncQueue* queue, gpointer data) c_g_async_queue_push;
	typedef void function(GAsyncQueue* queue, gpointer data, GCompareDataFunc func, gpointer userData) c_g_async_queue_push_sorted;
	typedef gpointer function(GAsyncQueue* queue) c_g_async_queue_pop;
	typedef gpointer function(GAsyncQueue* queue) c_g_async_queue_try_pop;
	typedef gpointer function(GAsyncQueue* queue, GTimeVal* endTime) c_g_async_queue_timed_pop;
	typedef gint function(GAsyncQueue* queue) c_g_async_queue_length;
	typedef void function(GAsyncQueue* queue, GCompareDataFunc func, gpointer userData) c_g_async_queue_sort;
	typedef void function(GAsyncQueue* queue) c_g_async_queue_lock;
	typedef void function(GAsyncQueue* queue) c_g_async_queue_unlock;
	typedef void function(GAsyncQueue* queue) c_g_async_queue_ref_unlocked;
	typedef void function(GAsyncQueue* queue) c_g_async_queue_unref_and_unlock;
	typedef void function(GAsyncQueue* queue, gpointer data) c_g_async_queue_push_unlocked;
	typedef void function(GAsyncQueue* queue, gpointer data, GCompareDataFunc func, gpointer userData) c_g_async_queue_push_sorted_unlocked;
	typedef gpointer function(GAsyncQueue* queue) c_g_async_queue_pop_unlocked;
	typedef gpointer function(GAsyncQueue* queue) c_g_async_queue_try_pop_unlocked;
	typedef gpointer function(GAsyncQueue* queue, GTimeVal* endTime) c_g_async_queue_timed_pop_unlocked;
	typedef gint function(GAsyncQueue* queue) c_g_async_queue_length_unlocked;
	typedef void function(GAsyncQueue* queue, GCompareDataFunc func, gpointer userData) c_g_async_queue_sort_unlocked;
	
	// glib.Module
	
	typedef gboolean function() c_g_module_supported;
	typedef gchar* function(gchar* directory, gchar* moduleName) c_g_module_build_path;
	typedef GModule* function(gchar* fileName, GModuleFlags flags) c_g_module_open;
	typedef gboolean function(GModule* modul, gchar* symbolName, gpointer* symbol) c_g_module_symbol;
	typedef gchar* function(GModule* modul) c_g_module_name;
	typedef void function(GModule* modul) c_g_module_make_resident;
	typedef gboolean function(GModule* modul) c_g_module_close;
	typedef gchar* function() c_g_module_error;
	
	// glib.Memory
	
	typedef gpointer function(gsize nBytes) c_g_malloc;
	typedef gpointer function(gsize nBytes) c_g_malloc0;
	typedef gpointer function(gpointer mem, gsize nBytes) c_g_realloc;
	typedef gpointer function(gsize nBytes) c_g_try_malloc;
	typedef gpointer function(gsize nBytes) c_g_try_malloc0;
	typedef gpointer function(gpointer mem, gsize nBytes) c_g_try_realloc;
	typedef void function(gpointer mem) c_g_free;
	typedef gpointer function(gconstpointer mem, guint byteSize) c_g_memdup;
	typedef void function(GMemVTable* vtable) c_g_mem_set_vtable;
	typedef gboolean function() c_g_mem_is_system_malloc;
	typedef void function() c_g_mem_profile;
	
	// glib.IOChannel
	
	typedef GIOChannel* function(int fd) c_g_io_channel_unix_new;
	typedef gint function(GIOChannel* channel) c_g_io_channel_unix_get_fd;
	typedef GIOChannel* function(gint fd) c_g_io_channel_win32_new_fd;
	typedef GIOChannel* function(gint socket) c_g_io_channel_win32_new_socket;
	typedef GIOChannel* function(gsize hwnd) c_g_io_channel_win32_new_messages;
	typedef void function(GIOChannel* channel) c_g_io_channel_init;
	typedef GIOChannel* function(gchar* filename, gchar* mode, GError** error) c_g_io_channel_new_file;
	typedef GIOStatus function(GIOChannel* channel, gchar* buf, gsize count, gsize* bytesRead, GError** error) c_g_io_channel_read_chars;
	typedef GIOStatus function(GIOChannel* channel, gunichar* thechar, GError** error) c_g_io_channel_read_unichar;
	typedef GIOStatus function(GIOChannel* channel, gchar** strReturn, gsize* length, gsize* terminatorPos, GError** error) c_g_io_channel_read_line;
	typedef GIOStatus function(GIOChannel* channel, GString* buffer, gsize* terminatorPos, GError** error) c_g_io_channel_read_line_string;
	typedef GIOStatus function(GIOChannel* channel, gchar** strReturn, gsize* length, GError** error) c_g_io_channel_read_to_end;
	typedef GIOStatus function(GIOChannel* channel, gchar* buf, gssize count, gsize* bytesWritten, GError** error) c_g_io_channel_write_chars;
	typedef GIOStatus function(GIOChannel* channel, gunichar thechar, GError** error) c_g_io_channel_write_unichar;
	typedef GIOStatus function(GIOChannel* channel, GError** error) c_g_io_channel_flush;
	typedef GIOStatus function(GIOChannel* channel, gint64 offset, GSeekType type, GError** error) c_g_io_channel_seek_position;
	typedef GIOStatus function(GIOChannel* channel, gboolean flush, GError** err) c_g_io_channel_shutdown;
	typedef GIOChannelError function(gint en) c_g_io_channel_error_from_errno;
	typedef GIOChannel* function(GIOChannel* channel) c_g_io_channel_ref;
	typedef void function(GIOChannel* channel) c_g_io_channel_unref;
	typedef GSource* function(GIOChannel* channel, GIOCondition condition) c_g_io_create_watch;
	typedef guint function(GIOChannel* channel, GIOCondition condition, GIOFunc func, gpointer userData) c_g_io_add_watch;
	typedef guint function(GIOChannel* channel, gint priority, GIOCondition condition, GIOFunc func, gpointer userData, GDestroyNotify notify) c_g_io_add_watch_full;
	typedef gsize function(GIOChannel* channel) c_g_io_channel_get_buffer_size;
	typedef void function(GIOChannel* channel, gsize size) c_g_io_channel_set_buffer_size;
	typedef GIOCondition function(GIOChannel* channel) c_g_io_channel_get_buffer_condition;
	typedef GIOFlags function(GIOChannel* channel) c_g_io_channel_get_flags;
	typedef GIOStatus function(GIOChannel* channel, GIOFlags flags, GError** error) c_g_io_channel_set_flags;
	typedef gchar* function(GIOChannel* channel, gint* length) c_g_io_channel_get_line_term;
	typedef void function(GIOChannel* channel, gchar* lineTerm, gint length) c_g_io_channel_set_line_term;
	typedef gboolean function(GIOChannel* channel) c_g_io_channel_get_buffered;
	typedef void function(GIOChannel* channel, gboolean buffered) c_g_io_channel_set_buffered;
	typedef gchar* function(GIOChannel* channel) c_g_io_channel_get_encoding;
	typedef GIOStatus function(GIOChannel* channel, gchar* encoding, GError** error) c_g_io_channel_set_encoding;
	typedef gboolean function(GIOChannel* channel) c_g_io_channel_get_close_on_unref;
	typedef void function(GIOChannel* channel, gboolean doClose) c_g_io_channel_set_close_on_unref;
	typedef GIOError function(GIOChannel* channel, gchar* buf, gsize count, gsize* bytesRead) c_g_io_channel_read;
	typedef GIOError function(GIOChannel* channel, gchar* buf, gsize count, gsize* bytesWritten) c_g_io_channel_write;
	typedef GIOError function(GIOChannel* channel, gint64 offset, GSeekType type) c_g_io_channel_seek;
	typedef void function(GIOChannel* channel) c_g_io_channel_close;
	
	// glib.ErrorG
	
	typedef GError* function(GQuark domain, gint code, gchar* format, ... ) c_g_error_new;
	typedef GError* function(GQuark domain, gint code, gchar* message) c_g_error_new_literal;
	typedef void function(GError* error) c_g_error_free;
	typedef GError* function(GError* error) c_g_error_copy;
	typedef gboolean function(GError* error, GQuark domain, gint code) c_g_error_matches;
	typedef void function(GError** err, GQuark domain, gint code, gchar* format, ... ) c_g_set_error;
	typedef void function(GError** err, GQuark domain, gint code, gchar* message) c_g_set_error_literal;
	typedef void function(GError** dest, GError* src) c_g_propagate_error;
	typedef void function(GError** err) c_g_clear_error;
	typedef void function(GError** err, gchar* format, ... ) c_g_prefix_error;
	typedef void function(GError** dest, GError* src, gchar* format, ... ) c_g_propagate_prefixed_error;
	
	// glib.
	
	
	// glib.
	
	
	// glib.Messages
	
	typedef void function(gchar* format, ... ) c_g_print;
	typedef GPrintFunc function(GPrintFunc func) c_g_set_print_handler;
	typedef void function(gchar* format, ... ) c_g_printerr;
	typedef GPrintFunc function(GPrintFunc func) c_g_set_printerr_handler;
	typedef void function(gchar* prgName) c_g_on_error_query;
	typedef void function(gchar* prgName) c_g_on_error_stack_trace;
	
	// glib.MessageLog
	
	typedef void function(gchar* logDomain, GLogLevelFlags logLevel, gchar* format, ... ) c_g_log;
	typedef void function(gchar* logDomain, GLogLevelFlags logLevel, gchar* format, va_list args) c_g_logv;
	typedef guint function(gchar* logDomain, GLogLevelFlags logLevels, GLogFunc logFunc, gpointer userData) c_g_log_set_handler;
	typedef void function(gchar* logDomain, guint handlerId) c_g_log_remove_handler;
	typedef GLogLevelFlags function(GLogLevelFlags fatalMask) c_g_log_set_always_fatal;
	typedef GLogLevelFlags function(gchar* logDomain, GLogLevelFlags fatalMask) c_g_log_set_fatal_mask;
	typedef void function(gchar* logDomain, GLogLevelFlags logLevel, gchar* message, gpointer unusedData) c_g_log_default_handler;
	typedef GLogFunc function(GLogFunc logFunc, gpointer userData) c_g_log_set_default_handler;
	
	// glib.Str
	
	typedef gchar* function(gchar* str) c_g_strdup;
	typedef gchar* function(gchar* str, gsize n) c_g_strndup;
	typedef gchar** function(gchar** strArray) c_g_strdupv;
	typedef gchar* function(gsize length, gchar fillChar) c_g_strnfill;
	typedef gchar* function(gchar* dest, char* src) c_g_stpcpy;
	typedef gchar* function(gchar* haystack, gssize haystackLen, gchar* needle) c_g_strstr_len;
	typedef gchar* function(gchar* haystack, gchar* needle) c_g_strrstr;
	typedef gchar* function(gchar* haystack, gssize haystackLen, gchar* needle) c_g_strrstr_len;
	typedef gboolean function(gchar* str, gchar* prefix) c_g_str_has_prefix;
	typedef gboolean function(gchar* str, gchar* suffix) c_g_str_has_suffix;
	typedef int function(char* str1, char* str2) c_g_strcmp0;
	typedef gsize function(gchar* dest, gchar* src, gsize destSize) c_g_strlcpy;
	typedef gsize function(gchar* dest, gchar* src, gsize destSize) c_g_strlcat;
	typedef gchar* function(gchar* format, ... ) c_g_strdup_printf;
	typedef gchar* function(gchar* format, va_list args) c_g_strdup_vprintf;
	typedef gint function(gchar* format, ... ) c_g_printf;
	typedef gint function(gchar* format, va_list args) c_g_vprintf;
	typedef gint function(void* file, gchar* format, ... ) c_g_fprintf;
	typedef gint function(void* file, gchar* format, va_list args) c_g_vfprintf;
	typedef gint function(gchar* string, gchar* format, ... ) c_g_sprintf;
	typedef gint function(gchar* string, gchar* format, va_list args) c_g_vsprintf;
	typedef gint function(gchar* string, gulong n, gchar* format, ... ) c_g_snprintf;
	typedef gint function(gchar* string, gulong n, gchar* format, va_list args) c_g_vsnprintf;
	typedef gint function(gchar** string, gchar* format, va_list args) c_g_vasprintf;
	typedef gsize function(gchar* format, va_list args) c_g_printf_string_upper_bound;
	typedef gboolean function(gchar c) c_g_ascii_isalnum;
	typedef gboolean function(gchar c) c_g_ascii_isalpha;
	typedef gboolean function(gchar c) c_g_ascii_iscntrl;
	typedef gboolean function(gchar c) c_g_ascii_isdigit;
	typedef gboolean function(gchar c) c_g_ascii_isgraph;
	typedef gboolean function(gchar c) c_g_ascii_islower;
	typedef gboolean function(gchar c) c_g_ascii_isprint;
	typedef gboolean function(gchar c) c_g_ascii_ispunct;
	typedef gboolean function(gchar c) c_g_ascii_isspace;
	typedef gboolean function(gchar c) c_g_ascii_isupper;
	typedef gboolean function(gchar c) c_g_ascii_isxdigit;
	typedef gint function(gchar c) c_g_ascii_digit_value;
	typedef gint function(gchar c) c_g_ascii_xdigit_value;
	typedef gint function(gchar* s1, gchar* s2) c_g_ascii_strcasecmp;
	typedef gint function(gchar* s1, gchar* s2, gsize n) c_g_ascii_strncasecmp;
	typedef gchar* function(gchar* str, gssize len) c_g_ascii_strup;
	typedef gchar* function(gchar* str, gssize len) c_g_ascii_strdown;
	typedef gchar function(gchar c) c_g_ascii_tolower;
	typedef gchar function(gchar c) c_g_ascii_toupper;
	typedef GString* function(GString* string) c_g_string_ascii_up;
	typedef GString* function(GString* string) c_g_string_ascii_down;
	typedef gchar* function(gchar* string) c_g_strup;
	typedef gchar* function(gchar* string) c_g_strdown;
	typedef gint function(gchar* s1, gchar* s2) c_g_strcasecmp;
	typedef gint function(gchar* s1, gchar* s2, guint n) c_g_strncasecmp;
	typedef gchar* function(gchar* string) c_g_strreverse;
	typedef gint64 function(gchar* nptr, gchar** endptr, guint base) c_g_ascii_strtoll;
	typedef guint64 function(gchar* nptr, gchar** endptr, guint base) c_g_ascii_strtoull;
	typedef gdouble function(gchar* nptr, gchar** endptr) c_g_ascii_strtod;
	typedef gchar* function(gchar* buffer, gint bufLen, gdouble d) c_g_ascii_dtostr;
	typedef gchar* function(gchar* buffer, gint bufLen, gchar* format, gdouble d) c_g_ascii_formatd;
	typedef gdouble function(gchar* nptr, gchar** endptr) c_g_strtod;
	typedef gchar* function(gchar* string) c_g_strchug;
	typedef gchar* function(gchar* string) c_g_strchomp;
	typedef gchar* function(gchar* string, gchar* delimiters, gchar newDelimiter) c_g_strdelimit;
	typedef gchar* function(gchar* source, gchar* exceptions) c_g_strescape;
	typedef gchar* function(gchar* source) c_g_strcompress;
	typedef gchar* function(gchar* string, gchar* validChars, gchar substitutor) c_g_strcanon;
	typedef gchar** function(gchar* string, gchar* delimiter, gint maxTokens) c_g_strsplit;
	typedef gchar** function(gchar* string, gchar* delimiters, gint maxTokens) c_g_strsplit_set;
	typedef void function(gchar** strArray) c_g_strfreev;
	typedef gchar* function(gchar* string1, ... ) c_g_strconcat;
	typedef gchar* function(gchar* separator, ... ) c_g_strjoin;
	typedef gchar* function(gchar* separator, gchar** strArray) c_g_strjoinv;
	typedef guint function(gchar** strArray) c_g_strv_length;
	typedef gchar* function(gint errnum) c_g_strerror;
	typedef gchar* function(gint signum) c_g_strsignal;
	
	// glib.CharacterSet
	
	typedef gchar* function(gchar* str, gssize len, gchar* toCodeset, gchar* fromCodeset, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_convert;
	typedef gchar* function(gchar* str, gssize len, gchar* toCodeset, gchar* fromCodeset, gchar* fallback, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_convert_with_fallback;
	typedef gchar* function(gchar* opsysstring, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_locale_to_utf8;
	typedef gchar* function(gchar* opsysstring, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_filename_to_utf8;
	typedef gchar* function(gchar* utf8string, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_filename_from_utf8;
	typedef gchar* function(gchar* uri, gchar** hostname, GError** error) c_g_filename_from_uri;
	typedef gchar* function(gchar* filename, gchar* hostname, GError** error) c_g_filename_to_uri;
	typedef gboolean function(gchar*** charsets) c_g_get_filename_charsets;
	typedef gchar* function(gchar* filename) c_g_filename_display_name;
	typedef gchar* function(gchar* filename) c_g_filename_display_basename;
	typedef gchar** function(gchar* uriList) c_g_uri_list_extract_uris;
	typedef gchar* function(gchar* utf8string, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_locale_from_utf8;
	typedef gboolean function(char** charset) c_g_get_charset;
	
	// glib.Unicode
	
	typedef gboolean function(gunichar ch) c_g_unichar_validate;
	typedef gboolean function(gunichar c) c_g_unichar_isalnum;
	typedef gboolean function(gunichar c) c_g_unichar_isalpha;
	typedef gboolean function(gunichar c) c_g_unichar_iscntrl;
	typedef gboolean function(gunichar c) c_g_unichar_isdefined;
	typedef gboolean function(gunichar c) c_g_unichar_isdigit;
	typedef gboolean function(gunichar c) c_g_unichar_isgraph;
	typedef gboolean function(gunichar c) c_g_unichar_islower;
	typedef gboolean function(gunichar c) c_g_unichar_ismark;
	typedef gboolean function(gunichar c) c_g_unichar_isprint;
	typedef gboolean function(gunichar c) c_g_unichar_ispunct;
	typedef gboolean function(gunichar c) c_g_unichar_isspace;
	typedef gboolean function(gunichar c) c_g_unichar_istitle;
	typedef gboolean function(gunichar c) c_g_unichar_isupper;
	typedef gboolean function(gunichar c) c_g_unichar_isxdigit;
	typedef gboolean function(gunichar c) c_g_unichar_iswide;
	typedef gboolean function(gunichar c) c_g_unichar_iswide_cjk;
	typedef gboolean function(gunichar c) c_g_unichar_iszerowidth;
	typedef gunichar function(gunichar c) c_g_unichar_toupper;
	typedef gunichar function(gunichar c) c_g_unichar_tolower;
	typedef gunichar function(gunichar c) c_g_unichar_totitle;
	typedef gint function(gunichar c) c_g_unichar_digit_value;
	typedef gint function(gunichar c) c_g_unichar_xdigit_value;
	typedef GUnicodeType function(gunichar c) c_g_unichar_type;
	typedef GUnicodeBreakType function(gunichar c) c_g_unichar_break_type;
	typedef gint function(gunichar uc) c_g_unichar_combining_class;
	typedef void function(gunichar* string, gsize len) c_g_unicode_canonical_ordering;
	typedef gunichar* function(gunichar ch, gsize* resultLen) c_g_unicode_canonical_decomposition;
	typedef gboolean function(gunichar ch, gunichar* mirroredCh) c_g_unichar_get_mirror_char;
	typedef GUnicodeScript function(gunichar ch) c_g_unichar_get_script;
	typedef gunichar function(gchar* p) c_g_utf8_get_char;
	typedef gunichar function(gchar* p, gssize maxLen) c_g_utf8_get_char_validated;
	typedef gchar* function(gchar* str, glong offset) c_g_utf8_offset_to_pointer;
	typedef glong function(gchar* str, gchar* pos) c_g_utf8_pointer_to_offset;
	typedef gchar* function(gchar* p) c_g_utf8_prev_char;
	typedef gchar* function(gchar* p, gchar* end) c_g_utf8_find_next_char;
	typedef gchar* function(gchar* str, gchar* p) c_g_utf8_find_prev_char;
	typedef glong function(gchar* p, gssize max) c_g_utf8_strlen;
	typedef gchar* function(gchar* dest, gchar* src, gsize n) c_g_utf8_strncpy;
	typedef gchar* function(gchar* p, gssize len, gunichar c) c_g_utf8_strchr;
	typedef gchar* function(gchar* p, gssize len, gunichar c) c_g_utf8_strrchr;
	typedef gchar* function(gchar* str, gssize len) c_g_utf8_strreverse;
	typedef gboolean function(gchar* str, gssize maxLen, gchar** end) c_g_utf8_validate;
	typedef gchar* function(gchar* str, gssize len) c_g_utf8_strup;
	typedef gchar* function(gchar* str, gssize len) c_g_utf8_strdown;
	typedef gchar* function(gchar* str, gssize len) c_g_utf8_casefold;
	typedef gchar* function(gchar* str, gssize len, GNormalizeMode mode) c_g_utf8_normalize;
	typedef gint function(gchar* str1, gchar* str2) c_g_utf8_collate;
	typedef gchar* function(gchar* str, gssize len) c_g_utf8_collate_key;
	typedef gchar* function(gchar* str, gssize len) c_g_utf8_collate_key_for_filename;
	typedef gunichar2* function(gchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_utf8_to_utf16;
	typedef gunichar* function(gchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_utf8_to_ucs4;
	typedef gunichar* function(gchar* str, glong len, glong* itemsWritten) c_g_utf8_to_ucs4_fast;
	typedef gunichar* function(gunichar2* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_utf16_to_ucs4;
	typedef gchar* function(gunichar2* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_utf16_to_utf8;
	typedef gunichar2* function(gunichar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_ucs4_to_utf16;
	typedef gchar* function(gunichar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_ucs4_to_utf8;
	typedef gint function(gunichar c, gchar* outbuf) c_g_unichar_to_utf8;
	
	// glib.Base64
	
	typedef gsize function(guchar* inn, gsize len, gboolean breakLines, gchar* f_out, gint* state, gint* save) c_g_base64_encode_step;
	typedef gsize function(gboolean breakLines, gchar* f_out, gint* state, gint* save) c_g_base64_encode_close;
	typedef gchar* function(guchar* data, gsize len) c_g_base64_encode;
	typedef gsize function(gchar* inn, gsize len, guchar* f_out, gint* state, guint* save) c_g_base64_decode_step;
	typedef guchar* function(gchar* text, gsize* outLen) c_g_base64_decode;
	typedef guchar* function(gchar* text, gsize* outLen) c_g_base64_decode_inplace;
	
	// glib.Checksum
	
	typedef gssize function(GChecksumType checksumType) c_g_checksum_type_get_length;
	typedef GChecksum* function(GChecksumType checksumType) c_g_checksum_new;
	typedef GChecksum* function(GChecksum* checksum) c_g_checksum_copy;
	typedef void function(GChecksum* checksum) c_g_checksum_free;
	typedef void function(GChecksum* checksum) c_g_checksum_reset;
	typedef void function(GChecksum* checksum, guchar* data, gssize length) c_g_checksum_update;
	typedef gchar* function(GChecksum* checksum) c_g_checksum_get_string;
	typedef void function(GChecksum* checksum, guint8* buffer, gsize* digestLen) c_g_checksum_get_digest;
	typedef gchar* function(GChecksumType checksumType, guchar* data, gsize length) c_g_compute_checksum_for_data;
	typedef gchar* function(GChecksumType checksumType, gchar* str, gssize length) c_g_compute_checksum_for_string;
	
	// glib.Internationalization
	
	typedef gchar* function(gchar* domain, gchar* msgid) c_g_dgettext;
	typedef gchar* function(gchar* domain, gchar* msgid, gchar* msgidPlural, gulong n) c_g_dngettext;
	typedef gchar* function(gchar* domain, gchar* msgctxtid, gsize msgidoffset) c_g_dpgettext;
	typedef gchar* function(gchar* domain, gchar* context, gchar* msgid) c_g_dpgettext2;
	typedef gchar* function(gchar* msgid, gchar* msgval) c_g_strip_context;
	typedef gchar** function() c_g_get_language_names;
	
	// glib.TimeVal
	
	typedef void function(GTimeVal* result) c_g_get_current_time;
	typedef void function(gulong microseconds) c_g_usleep;
	typedef void function(GTimeVal* time, glong microseconds) c_g_time_val_add;
	typedef gboolean function(gchar* isoDate, GTimeVal* time) c_g_time_val_from_iso8601;
	typedef gchar* function(GTimeVal* time) c_g_time_val_to_iso8601;
	
	// glib.Date
	
	typedef GDate* function() c_g_date_new;
	typedef GDate* function(GDateDay day, GDateMonth month, GDateYear year) c_g_date_new_dmy;
	typedef GDate* function(guint32 julianDay) c_g_date_new_julian;
	typedef void function(GDate* date, guint nDates) c_g_date_clear;
	typedef void function(GDate* date) c_g_date_free;
	typedef void function(GDate* date, GDateDay day) c_g_date_set_day;
	typedef void function(GDate* date, GDateMonth month) c_g_date_set_month;
	typedef void function(GDate* date, GDateYear year) c_g_date_set_year;
	typedef void function(GDate* date, GDateDay day, GDateMonth month, GDateYear y) c_g_date_set_dmy;
	typedef void function(GDate* date, guint32 julianDate) c_g_date_set_julian;
	typedef void function(GDate* date, GTime time) c_g_date_set_time;
	typedef void function(GDate* date, time_t timet) c_g_date_set_time_t;
	typedef void function(GDate* date, GTimeVal* timeval) c_g_date_set_time_val;
	typedef void function(GDate* date, gchar* str) c_g_date_set_parse;
	typedef void function(GDate* date, guint nDays) c_g_date_add_days;
	typedef void function(GDate* date, guint nDays) c_g_date_subtract_days;
	typedef void function(GDate* date, guint nMonths) c_g_date_add_months;
	typedef void function(GDate* date, guint nMonths) c_g_date_subtract_months;
	typedef void function(GDate* date, guint nYears) c_g_date_add_years;
	typedef void function(GDate* date, guint nYears) c_g_date_subtract_years;
	typedef gint function(GDate* date1, GDate* date2) c_g_date_days_between;
	typedef gint function(GDate* lhs, GDate* rhs) c_g_date_compare;
	typedef void function(GDate* date, GDate* minDate, GDate* maxDate) c_g_date_clamp;
	typedef void function(GDate* date1, GDate* date2) c_g_date_order;
	typedef GDateDay function(GDate* date) c_g_date_get_day;
	typedef GDateMonth function(GDate* date) c_g_date_get_month;
	typedef GDateYear function(GDate* date) c_g_date_get_year;
	typedef guint32 function(GDate* date) c_g_date_get_julian;
	typedef GDateWeekday function(GDate* date) c_g_date_get_weekday;
	typedef guint function(GDate* date) c_g_date_get_day_of_year;
	typedef guint8 function(GDateMonth month, GDateYear year) c_g_date_get_days_in_month;
	typedef gboolean function(GDate* date) c_g_date_is_first_of_month;
	typedef gboolean function(GDate* date) c_g_date_is_last_of_month;
	typedef gboolean function(GDateYear year) c_g_date_is_leap_year;
	typedef guint function(GDate* date) c_g_date_get_monday_week_of_year;
	typedef guint8 function(GDateYear year) c_g_date_get_monday_weeks_in_year;
	typedef guint function(GDate* date) c_g_date_get_sunday_week_of_year;
	typedef guint8 function(GDateYear year) c_g_date_get_sunday_weeks_in_year;
	typedef guint function(GDate* date) c_g_date_get_iso8601_week_of_year;
	typedef gsize function(gchar* s, gsize slen, gchar* format, GDate* date) c_g_date_strftime;
	typedef void function(GDate* date, void* tm) c_g_date_to_struct_tm;
	typedef gboolean function(GDate* date) c_g_date_valid;
	typedef gboolean function(GDateDay day) c_g_date_valid_day;
	typedef gboolean function(GDateMonth month) c_g_date_valid_month;
	typedef gboolean function(GDateYear year) c_g_date_valid_year;
	typedef gboolean function(GDateDay day, GDateMonth month, GDateYear year) c_g_date_valid_dmy;
	typedef gboolean function(guint32 julianDate) c_g_date_valid_julian;
	typedef gboolean function(GDateWeekday weekday) c_g_date_valid_weekday;
	
	// glib.RandG
	
	typedef GRand* function(guint32 seed) c_g_rand_new_with_seed;
	typedef GRand* function(guint32* seed, guint seedLength) c_g_rand_new_with_seed_array;
	typedef GRand* function() c_g_rand_new;
	typedef GRand* function(GRand* rand) c_g_rand_copy;
	typedef void function(GRand* rand) c_g_rand_free;
	typedef void function(GRand* rand, guint32 seed) c_g_rand_set_seed;
	typedef void function(GRand* rand, guint32* seed, guint seedLength) c_g_rand_set_seed_array;
	typedef guint32 function(GRand* rand) c_g_rand_int;
	typedef gint32 function(GRand* rand, gint32 begin, gint32 end) c_g_rand_int_range;
	typedef gdouble function(GRand* rand) c_g_rand_double;
	typedef gdouble function(GRand* rand, gdouble begin, gdouble end) c_g_rand_double_range;
	typedef void function(guint32 seed) c_g_random_set_seed;
	typedef guint32 function() c_g_random_int;
	typedef gint32 function(gint32 begin, gint32 end) c_g_random_int_range;
	typedef gdouble function() c_g_random_double;
	typedef gdouble function(gdouble begin, gdouble end) c_g_random_double_range;
	
	// glib.Util
	
	typedef gchar* function() c_g_get_application_name;
	typedef void function(gchar* applicationName) c_g_set_application_name;
	typedef gchar* function() c_g_get_prgname;
	typedef void function(gchar* prgname) c_g_set_prgname;
	typedef gchar* function(gchar* variable) c_g_getenv;
	typedef gboolean function(gchar* variable, gchar* value, gboolean overwrite) c_g_setenv;
	typedef void function(gchar* variable) c_g_unsetenv;
	typedef gchar** function() c_g_listenv;
	typedef gchar* function() c_g_get_user_name;
	typedef gchar* function() c_g_get_real_name;
	typedef gchar* function() c_g_get_user_cache_dir;
	typedef gchar* function() c_g_get_user_data_dir;
	typedef gchar* function() c_g_get_user_config_dir;
	typedef gchar* function(GUserDirectory directory) c_g_get_user_special_dir;
	typedef gchar** function() c_g_get_system_data_dirs;
	typedef gchar** function() c_g_get_system_config_dirs;
	typedef gchar* function() c_g_get_host_name;
	typedef gchar* function() c_g_get_home_dir;
	typedef gchar* function() c_g_get_tmp_dir;
	typedef gchar* function() c_g_get_current_dir;
	typedef gchar* function(gchar* fileName) c_g_basename;
	typedef gboolean function(gchar* fileName) c_g_path_is_absolute;
	typedef gchar* function(gchar* fileName) c_g_path_skip_root;
	typedef gchar* function(gchar* fileName) c_g_path_get_basename;
	typedef gchar* function(gchar* fileName) c_g_path_get_dirname;
	typedef gchar* function(gchar* firstElement, ... ) c_g_build_filename;
	typedef gchar* function(gchar** args) c_g_build_filenamev;
	typedef gchar* function(gchar* separator, gchar* firstElement, ... ) c_g_build_path;
	typedef gchar* function(gchar* separator, gchar** args) c_g_build_pathv;
	typedef char* function(goffset size) c_g_format_size_for_display;
	typedef gchar* function(gchar* program) c_g_find_program_in_path;
	typedef gint function(gulong mask, gint nthBit) c_g_bit_nth_lsf;
	typedef gint function(gulong mask, gint nthBit) c_g_bit_nth_msf;
	typedef guint function(gulong number) c_g_bit_storage;
	typedef guint function(guint num) c_g_spaced_primes_closest;
	typedef void function(GVoidFunc func) c_g_atexit;
	typedef guint function(gchar* string, GDebugKey* keys, guint nkeys) c_g_parse_debug_string;
	typedef void function(gconstpointer pbase, gint totalElems, gsize size, GCompareDataFunc compareFunc, gpointer userData) c_g_qsort_with_data;
	typedef void function(gpointer* nullifyLocation) c_g_nullify_pointer;
	
	// glib.ScannerG
	
	typedef GScanner* function(GScannerConfig* configTempl) c_g_scanner_new;
	typedef void function(GScanner* scanner) c_g_scanner_destroy;
	typedef void function(GScanner* scanner, gint inputFd) c_g_scanner_input_file;
	typedef void function(GScanner* scanner) c_g_scanner_sync_file_offset;
	typedef void function(GScanner* scanner, gchar* text, guint textLen) c_g_scanner_input_text;
	typedef GTokenType function(GScanner* scanner) c_g_scanner_peek_next_token;
	typedef GTokenType function(GScanner* scanner) c_g_scanner_get_next_token;
	typedef gboolean function(GScanner* scanner) c_g_scanner_eof;
	typedef guint function(GScanner* scanner) c_g_scanner_cur_line;
	typedef guint function(GScanner* scanner) c_g_scanner_cur_position;
	typedef GTokenType function(GScanner* scanner) c_g_scanner_cur_token;
	typedef GTokenValue function(GScanner* scanner) c_g_scanner_cur_value;
	typedef guint function(GScanner* scanner, guint scopeId) c_g_scanner_set_scope;
	typedef void function(GScanner* scanner, guint scopeId, gchar* symbol, gpointer value) c_g_scanner_scope_add_symbol;
	typedef void function(GScanner* scanner, guint scopeId, GHFunc func, gpointer userData) c_g_scanner_scope_foreach_symbol;
	typedef gpointer function(GScanner* scanner, guint scopeId, gchar* symbol) c_g_scanner_scope_lookup_symbol;
	typedef void function(GScanner* scanner, guint scopeId, gchar* symbol) c_g_scanner_scope_remove_symbol;
	typedef gpointer function(GScanner* scanner, gchar* symbol) c_g_scanner_lookup_symbol;
	typedef void function(GScanner* scanner, gchar* format, ... ) c_g_scanner_warn;
	typedef void function(GScanner* scanner, gchar* format, ... ) c_g_scanner_error;
	typedef void function(GScanner* scanner, GTokenType expectedToken, gchar* identifierSpec, gchar* symbolSpec, gchar* symbolName, gchar* message, gint isError) c_g_scanner_unexp_token;
	
	// glib.StringCompletion
	
	typedef GCompletion* function(GCompletionFunc func) c_g_completion_new;
	typedef void function(GCompletion* cmp, GList* items) c_g_completion_add_items;
	typedef void function(GCompletion* cmp, GList* items) c_g_completion_remove_items;
	typedef void function(GCompletion* cmp) c_g_completion_clear_items;
	typedef GList* function(GCompletion* cmp, gchar* prefix, gchar** newPrefix) c_g_completion_complete;
	typedef GList* function(GCompletion* cmp, gchar* prefix, gchar** newPrefix) c_g_completion_complete_utf8;
	typedef void function(GCompletion* cmp, GCompletionStrncmpFunc strncmpFunc) c_g_completion_set_compare;
	typedef void function(GCompletion* cmp) c_g_completion_free;
	
	// glib.Timer
	
	typedef GTimer* function() c_g_timer_new;
	typedef void function(GTimer* timer) c_g_timer_start;
	typedef void function(GTimer* timer) c_g_timer_stop;
	typedef void function(GTimer* timer) c_g_timer_continue;
	typedef gdouble function(GTimer* timer, gulong* microseconds) c_g_timer_elapsed;
	typedef void function(GTimer* timer) c_g_timer_reset;
	typedef void function(GTimer* timer) c_g_timer_destroy;
	
	// glib.Spawn
	
	typedef gboolean function(gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, GPid* childPid, gint* standardInput, gint* standardOutput, gint* standardError, GError** error) c_g_spawn_async_with_pipes;
	typedef gboolean function(gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, GPid* childPid, GError** error) c_g_spawn_async;
	typedef gboolean function(gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, gchar** standardOutput, gchar** standardError, gint* exitStatus, GError** error) c_g_spawn_sync;
	typedef gboolean function(gchar* commandLine, GError** error) c_g_spawn_command_line_async;
	typedef gboolean function(gchar* commandLine, gchar** standardOutput, gchar** standardError, gint* exitStatus, GError** error) c_g_spawn_command_line_sync;
	typedef void function(GPid pid) c_g_spawn_close_pid;
	
	// glib.FileUtils
	
	typedef GFileError function(gint errNo) c_g_file_error_from_errno;
	typedef gboolean function(gchar* filename, gchar** contents, gsize* length, GError** error) c_g_file_get_contents;
	typedef gboolean function(gchar* filename, gchar* contents, gssize length, GError** error) c_g_file_set_contents;
	typedef gboolean function(gchar* filename, GFileTest test) c_g_file_test;
	typedef gint function(gchar* tmpl) c_g_mkstemp;
	typedef gint function(gchar* tmpl, gchar** nameUsed, GError** error) c_g_file_open_tmp;
	typedef gchar* function(gchar* filename, GError** error) c_g_file_read_link;
	typedef int function(gchar* pathname, int mode) c_g_mkdir_with_parents;
	typedef int function(gchar* filename, int flags, int mode) c_g_open;
	typedef int function(gchar* oldfilename, gchar* newfilename) c_g_rename;
	typedef int function(gchar* filename, int mode) c_g_mkdir;
	typedef int function(gchar* filename, void* buf) c_g_stat;
	typedef int function(gchar* filename, void* buf) c_g_lstat;
	typedef int function(gchar* filename) c_g_unlink;
	typedef int function(gchar* filename) c_g_remove;
	typedef int function(gchar* filename) c_g_rmdir;
	typedef void* function(gchar* filename, gchar* mode) c_g_fopen;
	typedef void* function(gchar* filename, gchar* mode, void* stream) c_g_freopen;
	typedef int function(gchar* filename, int mode) c_g_chmod;
	typedef int function(gchar* filename, int mode) c_g_access;
	typedef int function(gchar* filename, int mode) c_g_creat;
	typedef int function(gchar* path) c_g_chdir;
	typedef int function(gchar* filename, void* utb) c_g_utime;
	
	// glib.Directory
	
	typedef GDir* function(gchar* path, guint flags, GError** error) c_g_dir_open;
	typedef gchar* function(GDir* dir) c_g_dir_read_name;
	typedef void function(GDir* dir) c_g_dir_rewind;
	typedef void function(GDir* dir) c_g_dir_close;
	
	// glib.MappedFile
	
	typedef GMappedFile* function(gchar* filename, gboolean writable, GError** error) c_g_mapped_file_new;
	typedef void function(GMappedFile* file) c_g_mapped_file_free;
	typedef gsize function(GMappedFile* file) c_g_mapped_file_get_length;
	typedef gchar* function(GMappedFile* file) c_g_mapped_file_get_contents;
	
	// glib.URI
	
	typedef char* function(char* uri) c_g_uri_parse_scheme;
	typedef char* function(char* unescaped, char* reservedCharsAllowed, gboolean allowUtf8) c_g_uri_escape_string;
	typedef char* function(char* escapedString, char* illegalCharacters) c_g_uri_unescape_string;
	typedef char* function(char* escapedString, char* escapedStringEnd, char* illegalCharacters) c_g_uri_unescape_segment;
	
	// glib.ShellUtils
	
	typedef gboolean function(gchar* commandLine, gint* argcp, gchar*** argvp, GError** error) c_g_shell_parse_argv;
	typedef gchar* function(gchar* unquotedString) c_g_shell_quote;
	typedef gchar* function(gchar* quotedString, GError** error) c_g_shell_unquote;
	
	// glib.OptionContext
	
	typedef GOptionContext* function(gchar* parameterString) c_g_option_context_new;
	typedef void function(GOptionContext* context, gchar* summary) c_g_option_context_set_summary;
	typedef gchar* function(GOptionContext* context) c_g_option_context_get_summary;
	typedef void function(GOptionContext* context, gchar* description) c_g_option_context_set_description;
	typedef gchar* function(GOptionContext* context) c_g_option_context_get_description;
	typedef void function(GOptionContext* context, GTranslateFunc func, gpointer data, GDestroyNotify destroyNotify) c_g_option_context_set_translate_func;
	typedef void function(GOptionContext* context, gchar* domain) c_g_option_context_set_translation_domain;
	typedef void function(GOptionContext* context) c_g_option_context_free;
	typedef gboolean function(GOptionContext* context, gint* argc, gchar*** argv, GError** error) c_g_option_context_parse;
	typedef void function(GOptionContext* context, gboolean helpEnabled) c_g_option_context_set_help_enabled;
	typedef gboolean function(GOptionContext* context) c_g_option_context_get_help_enabled;
	typedef void function(GOptionContext* context, gboolean ignoreUnknown) c_g_option_context_set_ignore_unknown_options;
	typedef gboolean function(GOptionContext* context) c_g_option_context_get_ignore_unknown_options;
	typedef gchar* function(GOptionContext* context, gboolean mainHelp, GOptionGroup* group) c_g_option_context_get_help;
	typedef void function(GOptionContext* context, GOptionEntry* entries, gchar* translationDomain) c_g_option_context_add_main_entries;
	typedef void function(GOptionContext* context, GOptionGroup* group) c_g_option_context_add_group;
	typedef void function(GOptionContext* context, GOptionGroup* group) c_g_option_context_set_main_group;
	typedef GOptionGroup* function(GOptionContext* context) c_g_option_context_get_main_group;
	
	// glib.OptionGroup
	
	typedef GOptionGroup* function(gchar* name, gchar* description, gchar* helpDescription, gpointer userData, GDestroyNotify destroy) c_g_option_group_new;
	typedef void function(GOptionGroup* group) c_g_option_group_free;
	typedef void function(GOptionGroup* group, GOptionEntry* entries) c_g_option_group_add_entries;
	typedef void function(GOptionGroup* group, GOptionParseFunc preParseFunc, GOptionParseFunc postParseFunc) c_g_option_group_set_parse_hooks;
	typedef void function(GOptionGroup* group, GOptionErrorFunc errorFunc) c_g_option_group_set_error_hook;
	typedef void function(GOptionGroup* group, GTranslateFunc func, gpointer data, GDestroyNotify destroyNotify) c_g_option_group_set_translate_func;
	typedef void function(GOptionGroup* group, gchar* domain) c_g_option_group_set_translation_domain;
	
	// glib.Pattern
	
	typedef GPatternSpec* function(gchar* pattern) c_g_pattern_spec_new;
	typedef void function(GPatternSpec* pspec) c_g_pattern_spec_free;
	typedef gboolean function(GPatternSpec* pspec1, GPatternSpec* pspec2) c_g_pattern_spec_equal;
	typedef gboolean function(GPatternSpec* pspec, guint stringLength, gchar* string, gchar* stringReversed) c_g_pattern_match;
	typedef gboolean function(GPatternSpec* pspec, gchar* string) c_g_pattern_match_string;
	typedef gboolean function(gchar* pattern, gchar* string) c_g_pattern_match_simple;
	
	// glib.Regex
	
	typedef GRegex* function(gchar* pattern, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions, GError** error) c_g_regex_new;
	typedef GRegex* function(GRegex* regex) c_g_regex_ref;
	typedef void function(GRegex* regex) c_g_regex_unref;
	typedef gchar* function(GRegex* regex) c_g_regex_get_pattern;
	typedef gint function(GRegex* regex) c_g_regex_get_max_backref;
	typedef gint function(GRegex* regex) c_g_regex_get_capture_count;
	typedef gint function(GRegex* regex, gchar* name) c_g_regex_get_string_number;
	typedef gchar* function(gchar* string, gint length) c_g_regex_escape_string;
	typedef gboolean function(gchar* pattern, gchar* string, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions) c_g_regex_match_simple;
	typedef gboolean function(GRegex* regex, gchar* string, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo) c_g_regex_match;
	typedef gboolean function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo, GError** error) c_g_regex_match_full;
	typedef gboolean function(GRegex* regex, gchar* string, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo) c_g_regex_match_all;
	typedef gboolean function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo, GError** error) c_g_regex_match_all_full;
	typedef gchar** function(gchar* pattern, gchar* string, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions) c_g_regex_split_simple;
	typedef gchar** function(GRegex* regex, gchar* string, GRegexMatchFlags matchOptions) c_g_regex_split;
	typedef gchar** function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, gint maxTokens, GError** error) c_g_regex_split_full;
	typedef gchar* function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, gchar* replacement, GRegexMatchFlags matchOptions, GError** error) c_g_regex_replace;
	typedef gchar* function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, gchar* replacement, GRegexMatchFlags matchOptions, GError** error) c_g_regex_replace_literal;
	typedef gchar* function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, GRegexEvalCallback eval, gpointer userData, GError** error) c_g_regex_replace_eval;
	typedef gboolean function(gchar* replacement, gboolean* hasReferences, GError** error) c_g_regex_check_replacement;
	
	// glib.MatchInfo
	
	typedef GRegex* function(GMatchInfo* matchInfo) c_g_match_info_get_regex;
	typedef gchar* function(GMatchInfo* matchInfo) c_g_match_info_get_string;
	typedef void function(GMatchInfo* matchInfo) c_g_match_info_free;
	typedef gboolean function(GMatchInfo* matchInfo) c_g_match_info_matches;
	typedef gboolean function(GMatchInfo* matchInfo, GError** error) c_g_match_info_next;
	typedef gint function(GMatchInfo* matchInfo) c_g_match_info_get_match_count;
	typedef gboolean function(GMatchInfo* matchInfo) c_g_match_info_is_partial_match;
	typedef gchar* function(GMatchInfo* matchInfo, gchar* stringToExpand, GError** error) c_g_match_info_expand_references;
	typedef gchar* function(GMatchInfo* matchInfo, gint matchNum) c_g_match_info_fetch;
	typedef gboolean function(GMatchInfo* matchInfo, gint matchNum, gint* startPos, gint* endPos) c_g_match_info_fetch_pos;
	typedef gchar* function(GMatchInfo* matchInfo, gchar* name) c_g_match_info_fetch_named;
	typedef gboolean function(GMatchInfo* matchInfo, gchar* name, gint* startPos, gint* endPos) c_g_match_info_fetch_named_pos;
	typedef gchar** function(GMatchInfo* matchInfo) c_g_match_info_fetch_all;
	
	// glib.SimpleXML
	
	typedef gchar* function(gchar* text, gssize length) c_g_markup_escape_text;
	typedef gchar* function(char* format, ... ) c_g_markup_printf_escaped;
	typedef gchar* function(char* format, va_list args) c_g_markup_vprintf_escaped;
	typedef gboolean function(GMarkupParseContext* context, GError** error) c_g_markup_parse_context_end_parse;
	typedef void function(GMarkupParseContext* context) c_g_markup_parse_context_free;
	typedef void function(GMarkupParseContext* context, gint* lineNumber, gint* charNumber) c_g_markup_parse_context_get_position;
	typedef gchar* function(GMarkupParseContext* context) c_g_markup_parse_context_get_element;
	typedef GSList* function(GMarkupParseContext* context) c_g_markup_parse_context_get_element_stack;
	typedef gpointer function(GMarkupParseContext* context) c_g_markup_parse_context_get_user_data;
	typedef GMarkupParseContext* function(GMarkupParser* parser, GMarkupParseFlags flags, gpointer userData, GDestroyNotify userDataDnotify) c_g_markup_parse_context_new;
	typedef gboolean function(GMarkupParseContext* context, gchar* text, gssize textLen, GError** error) c_g_markup_parse_context_parse;
	typedef void function(GMarkupParseContext* context, GMarkupParser* parser, gpointer userData) c_g_markup_parse_context_push;
	typedef gpointer function(GMarkupParseContext* context) c_g_markup_parse_context_pop;
	typedef gboolean function(gchar* elementName, gchar** attributeNames, gchar** attributeValues, GError** error, GMarkupCollectType firstType, gchar* firstAttr, ... ) c_g_markup_collect_attributes;
	
	// glib.KeyFile
	
	typedef GKeyFile* function() c_g_key_file_new;
	typedef void function(GKeyFile* keyFile) c_g_key_file_free;
	typedef void function(GKeyFile* keyFile, gchar separator) c_g_key_file_set_list_separator;
	typedef gboolean function(GKeyFile* keyFile, gchar* file, GKeyFileFlags flags, GError** error) c_g_key_file_load_from_file;
	typedef gboolean function(GKeyFile* keyFile, gchar* data, gsize length, GKeyFileFlags flags, GError** error) c_g_key_file_load_from_data;
	typedef gboolean function(GKeyFile* keyFile, gchar* file, gchar** fullPath, GKeyFileFlags flags, GError** error) c_g_key_file_load_from_data_dirs;
	typedef gboolean function(GKeyFile* keyFile, gchar* file, gchar** searchDirs, gchar** fullPath, GKeyFileFlags flags, GError** error) c_g_key_file_load_from_dirs;
	typedef gchar* function(GKeyFile* keyFile, gsize* length, GError** error) c_g_key_file_to_data;
	typedef gchar* function(GKeyFile* keyFile) c_g_key_file_get_start_group;
	typedef gchar** function(GKeyFile* keyFile, gsize* length) c_g_key_file_get_groups;
	typedef gchar** function(GKeyFile* keyFile, gchar* groupName, gsize* length, GError** error) c_g_key_file_get_keys;
	typedef gboolean function(GKeyFile* keyFile, gchar* groupName) c_g_key_file_has_group;
	typedef gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_has_key;
	typedef gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_value;
	typedef gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_string;
	typedef gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, GError** error) c_g_key_file_get_locale_string;
	typedef gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_boolean;
	typedef gint function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_integer;
	typedef gdouble function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_double;
	typedef gchar** function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error) c_g_key_file_get_string_list;
	typedef gchar** function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, gsize* length, GError** error) c_g_key_file_get_locale_string_list;
	typedef gboolean* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error) c_g_key_file_get_boolean_list;
	typedef gint* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error) c_g_key_file_get_integer_list;
	typedef gdouble* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error) c_g_key_file_get_double_list;
	typedef gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_comment;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* value) c_g_key_file_set_value;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* string) c_g_key_file_set_string;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, gchar* string) c_g_key_file_set_locale_string;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gboolean value) c_g_key_file_set_boolean;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gint value) c_g_key_file_set_integer;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gdouble value) c_g_key_file_set_double;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar*[] list, gsize length) c_g_key_file_set_string_list;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, gchar*[] list, gsize length) c_g_key_file_set_locale_string_list;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gboolean[] list, gsize length) c_g_key_file_set_boolean_list;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gint[] list, gsize length) c_g_key_file_set_integer_list;
	typedef void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gdouble[] list, gsize length) c_g_key_file_set_double_list;
	typedef gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* comment, GError** error) c_g_key_file_set_comment;
	typedef gboolean function(GKeyFile* keyFile, gchar* groupName, GError** error) c_g_key_file_remove_group;
	typedef gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_remove_key;
	typedef gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_remove_comment;
	
	// glib.BookmarkFile
	
	typedef GBookmarkFile* function() c_g_bookmark_file_new;
	typedef void function(GBookmarkFile* bookmark) c_g_bookmark_file_free;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* filename, GError** error) c_g_bookmark_file_load_from_file;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* data, gsize length, GError** error) c_g_bookmark_file_load_from_data;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* file, gchar** fullPath, GError** error) c_g_bookmark_file_load_from_data_dirs;
	typedef gchar* function(GBookmarkFile* bookmark, gsize* length, GError** error) c_g_bookmark_file_to_data;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* filename, GError** error) c_g_bookmark_file_to_file;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* uri) c_g_bookmark_file_has_item;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* group, GError** error) c_g_bookmark_file_has_group;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, GError** error) c_g_bookmark_file_has_application;
	typedef gint function(GBookmarkFile* bookmark) c_g_bookmark_file_get_size;
	typedef gchar** function(GBookmarkFile* bookmark, gsize* length) c_g_bookmark_file_get_uris;
	typedef gchar* function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_title;
	typedef gchar* function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_description;
	typedef gchar* function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_mime_type;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_is_private;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar** href, gchar** mimeType, GError** error) c_g_bookmark_file_get_icon;
	typedef time_t function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_added;
	typedef time_t function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_modified;
	typedef time_t function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_visited;
	typedef gchar** function(GBookmarkFile* bookmark, gchar* uri, gsize* length, GError** error) c_g_bookmark_file_get_groups;
	typedef gchar** function(GBookmarkFile* bookmark, gchar* uri, gsize* length, GError** error) c_g_bookmark_file_get_applications;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, gchar** exec, guint* count, time_t* stamp, GError** error) c_g_bookmark_file_get_app_info;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, gchar* title) c_g_bookmark_file_set_title;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, gchar* description) c_g_bookmark_file_set_description;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, gchar* mimeType) c_g_bookmark_file_set_mime_type;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, gboolean isPrivate) c_g_bookmark_file_set_is_private;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, gchar* href, gchar* mimeType) c_g_bookmark_file_set_icon;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, time_t added) c_g_bookmark_file_set_added;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, gchar** groups, gsize length) c_g_bookmark_file_set_groups;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, time_t modified) c_g_bookmark_file_set_modified;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, time_t visited) c_g_bookmark_file_set_visited;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, gchar* exec, gint count, time_t stamp, GError** error) c_g_bookmark_file_set_app_info;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, gchar* group) c_g_bookmark_file_add_group;
	typedef void function(GBookmarkFile* bookmark, gchar* uri, gchar* name, gchar* exec) c_g_bookmark_file_add_application;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* group, GError** error) c_g_bookmark_file_remove_group;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, GError** error) c_g_bookmark_file_remove_application;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_remove_item;
	typedef gboolean function(GBookmarkFile* bookmark, gchar* oldUri, gchar* newUri, GError** error) c_g_bookmark_file_move_item;
	
	// glib.WindowsUtils
	
	typedef gchar* function(gint error) c_g_win32_error_message;
	typedef gchar* function() c_g_win32_getlocale;
	typedef gchar* function(gchar* p, gchar* dllName) c_g_win32_get_package_installation_directory;
	typedef gchar* function(gpointer hmodule) c_g_win32_get_package_installation_directory_of_module;
	typedef gchar* function(gchar* p, gchar* dllName, gchar* subdir) c_g_win32_get_package_installation_subdirectory;
	typedef guint function() c_g_win32_get_windows_version;
	typedef gchar* function(gchar* utf8filename) c_g_win32_locale_filename_from_utf8;
	
	// glib.MemorySlice
	
	typedef gpointer function(gsize blockSize) c_g_slice_alloc;
	typedef gpointer function(gsize blockSize) c_g_slice_alloc0;
	typedef gpointer function(gsize blockSize, gconstpointer memBlock) c_g_slice_copy;
	typedef void function(gsize blockSize, gpointer memBlock) c_g_slice_free1;
	typedef void function(gsize blockSize, gpointer memChain, gsize nextOffset) c_g_slice_free_chain_with_offset;
	
	// glib.MemoryChunk
	
	typedef GMemChunk* function(gchar* name, gint atomSize, gsize areaSize, gint type) c_g_mem_chunk_new;
	typedef gpointer function(GMemChunk* memChunk) c_g_mem_chunk_alloc;
	typedef gpointer function(GMemChunk* memChunk) c_g_mem_chunk_alloc0;
	typedef void function(GMemChunk* memChunk, gpointer mem) c_g_mem_chunk_free;
	typedef void function(GMemChunk* memChunk) c_g_mem_chunk_destroy;
	typedef void function(GMemChunk* memChunk) c_g_mem_chunk_reset;
	typedef void function(GMemChunk* memChunk) c_g_mem_chunk_clean;
	typedef void function() c_g_blow_chunks;
	typedef void function() c_g_mem_chunk_info;
	typedef void function(GMemChunk* memChunk) c_g_mem_chunk_print;
	
	// glib.ListG
	
	typedef GList* function(GList* list, gpointer data) c_g_list_append;
	typedef GList* function(GList* list, gpointer data) c_g_list_prepend;
	typedef GList* function(GList* list, gpointer data, gint position) c_g_list_insert;
	typedef GList* function(GList* list, GList* sibling, gpointer data) c_g_list_insert_before;
	typedef GList* function(GList* list, gpointer data, GCompareFunc func) c_g_list_insert_sorted;
	typedef GList* function(GList* list, gconstpointer data) c_g_list_remove;
	typedef GList* function(GList* list, GList* llink) c_g_list_remove_link;
	typedef GList* function(GList* list, GList* link) c_g_list_delete_link;
	typedef GList* function(GList* list, gconstpointer data) c_g_list_remove_all;
	typedef void function(GList* list) c_g_list_free;
	typedef GList* function() c_g_list_alloc;
	typedef void function(GList* list) c_g_list_free_1;
	typedef guint function(GList* list) c_g_list_length;
	typedef GList* function(GList* list) c_g_list_copy;
	typedef GList* function(GList* list) c_g_list_reverse;
	typedef GList* function(GList* list, GCompareFunc compareFunc) c_g_list_sort;
	typedef GList* function(GList* list, gpointer data, GCompareDataFunc func, gpointer userData) c_g_list_insert_sorted_with_data;
	typedef GList* function(GList* list, GCompareDataFunc compareFunc, gpointer userData) c_g_list_sort_with_data;
	typedef GList* function(GList* list1, GList* list2) c_g_list_concat;
	typedef void function(GList* list, GFunc func, gpointer userData) c_g_list_foreach;
	typedef GList* function(GList* list) c_g_list_first;
	typedef GList* function(GList* list) c_g_list_last;
	typedef GList* function(GList* list, guint n) c_g_list_nth;
	typedef gpointer function(GList* list, guint n) c_g_list_nth_data;
	typedef GList* function(GList* list, guint n) c_g_list_nth_prev;
	typedef GList* function(GList* list, gconstpointer data) c_g_list_find;
	typedef GList* function(GList* list, gconstpointer data, GCompareFunc func) c_g_list_find_custom;
	typedef gint function(GList* list, GList* llink) c_g_list_position;
	typedef gint function(GList* list, gconstpointer data) c_g_list_index;
	typedef void function(gpointer allocator) c_g_list_push_allocator;
	typedef void function() c_g_list_pop_allocator;
	
	// glib.ListSG
	
	typedef GSList* function() c_g_slist_alloc;
	typedef GSList* function(GSList* list, gpointer data) c_g_slist_append;
	typedef GSList* function(GSList* list, gpointer data) c_g_slist_prepend;
	typedef GSList* function(GSList* list, gpointer data, gint position) c_g_slist_insert;
	typedef GSList* function(GSList* slist, GSList* sibling, gpointer data) c_g_slist_insert_before;
	typedef GSList* function(GSList* list, gpointer data, GCompareFunc func) c_g_slist_insert_sorted;
	typedef GSList* function(GSList* list, gconstpointer data) c_g_slist_remove;
	typedef GSList* function(GSList* list, GSList* link) c_g_slist_remove_link;
	typedef GSList* function(GSList* list, GSList* link) c_g_slist_delete_link;
	typedef GSList* function(GSList* list, gconstpointer data) c_g_slist_remove_all;
	typedef void function(GSList* list) c_g_slist_free;
	typedef void function(GSList* list) c_g_slist_free_1;
	typedef guint function(GSList* list) c_g_slist_length;
	typedef GSList* function(GSList* list) c_g_slist_copy;
	typedef GSList* function(GSList* list) c_g_slist_reverse;
	typedef GSList* function(GSList* list, gpointer data, GCompareDataFunc func, gpointer userData) c_g_slist_insert_sorted_with_data;
	typedef GSList* function(GSList* list, GCompareFunc compareFunc) c_g_slist_sort;
	typedef GSList* function(GSList* list, GCompareDataFunc compareFunc, gpointer userData) c_g_slist_sort_with_data;
	typedef GSList* function(GSList* list1, GSList* list2) c_g_slist_concat;
	typedef void function(GSList* list, GFunc func, gpointer userData) c_g_slist_foreach;
	typedef GSList* function(GSList* list) c_g_slist_last;
	typedef GSList* function(GSList* list, guint n) c_g_slist_nth;
	typedef gpointer function(GSList* list, guint n) c_g_slist_nth_data;
	typedef GSList* function(GSList* list, gconstpointer data) c_g_slist_find;
	typedef GSList* function(GSList* list, gconstpointer data, GCompareFunc func) c_g_slist_find_custom;
	typedef gint function(GSList* list, GSList* llink) c_g_slist_position;
	typedef gint function(GSList* list, gconstpointer data) c_g_slist_index;
	typedef void function(gpointer dummy) c_g_slist_push_allocator;
	typedef void function() c_g_slist_pop_allocator;
	
	// glib.QueueG
	
	typedef GQueue* function() c_g_queue_new;
	typedef void function(GQueue* queue) c_g_queue_free;
	typedef void function(GQueue* queue) c_g_queue_init;
	typedef void function(GQueue* queue) c_g_queue_clear;
	typedef gboolean function(GQueue* queue) c_g_queue_is_empty;
	typedef guint function(GQueue* queue) c_g_queue_get_length;
	typedef void function(GQueue* queue) c_g_queue_reverse;
	typedef GQueue* function(GQueue* queue) c_g_queue_copy;
	typedef void function(GQueue* queue, GFunc func, gpointer userData) c_g_queue_foreach;
	typedef GList* function(GQueue* queue, gconstpointer data) c_g_queue_find;
	typedef GList* function(GQueue* queue, gconstpointer data, GCompareFunc func) c_g_queue_find_custom;
	typedef void function(GQueue* queue, GCompareDataFunc compareFunc, gpointer userData) c_g_queue_sort;
	typedef void function(GQueue* queue, gpointer data) c_g_queue_push_head;
	typedef void function(GQueue* queue, gpointer data) c_g_queue_push_tail;
	typedef void function(GQueue* queue, gpointer data, gint n) c_g_queue_push_nth;
	typedef gpointer function(GQueue* queue) c_g_queue_pop_head;
	typedef gpointer function(GQueue* queue) c_g_queue_pop_tail;
	typedef gpointer function(GQueue* queue, guint n) c_g_queue_pop_nth;
	typedef gpointer function(GQueue* queue) c_g_queue_peek_head;
	typedef gpointer function(GQueue* queue) c_g_queue_peek_tail;
	typedef gpointer function(GQueue* queue, guint n) c_g_queue_peek_nth;
	typedef gint function(GQueue* queue, gconstpointer data) c_g_queue_index;
	typedef void function(GQueue* queue, gconstpointer data) c_g_queue_remove;
	typedef void function(GQueue* queue, gconstpointer data) c_g_queue_remove_all;
	typedef void function(GQueue* queue, GList* sibling, gpointer data) c_g_queue_insert_before;
	typedef void function(GQueue* queue, GList* sibling, gpointer data) c_g_queue_insert_after;
	typedef void function(GQueue* queue, gpointer data, GCompareDataFunc func, gpointer userData) c_g_queue_insert_sorted;
	typedef void function(GQueue* queue, GList* link) c_g_queue_push_head_link;
	typedef void function(GQueue* queue, GList* link) c_g_queue_push_tail_link;
	typedef void function(GQueue* queue, gint n, GList* link) c_g_queue_push_nth_link;
	typedef GList* function(GQueue* queue) c_g_queue_pop_head_link;
	typedef GList* function(GQueue* queue) c_g_queue_pop_tail_link;
	typedef GList* function(GQueue* queue, guint n) c_g_queue_pop_nth_link;
	typedef GList* function(GQueue* queue) c_g_queue_peek_head_link;
	typedef GList* function(GQueue* queue) c_g_queue_peek_tail_link;
	typedef GList* function(GQueue* queue, guint n) c_g_queue_peek_nth_link;
	typedef gint function(GQueue* queue, GList* link) c_g_queue_link_index;
	typedef void function(GQueue* queue, GList* link) c_g_queue_unlink;
	typedef void function(GQueue* queue, GList* link) c_g_queue_delete_link;
	
	// glib.Sequence
	
	typedef GSequence* function(GDestroyNotify dataDestroy) c_g_sequence_new;
	typedef void function(GSequence* seq) c_g_sequence_free;
	typedef gint function(GSequence* seq) c_g_sequence_get_length;
	typedef void function(GSequence* seq, GFunc func, gpointer userData) c_g_sequence_foreach;
	typedef void function(GSequenceIter* begin, GSequenceIter* end, GFunc func, gpointer userData) c_g_sequence_foreach_range;
	typedef void function(GSequence* seq, GCompareDataFunc cmpFunc, gpointer cmpData) c_g_sequence_sort;
	typedef void function(GSequence* seq, GSequenceIterCompareFunc cmpFunc, gpointer cmpData) c_g_sequence_sort_iter;
	typedef GSequenceIter* function(GSequence* seq) c_g_sequence_get_begin_iter;
	typedef GSequenceIter* function(GSequence* seq) c_g_sequence_get_end_iter;
	typedef GSequenceIter* function(GSequence* seq, gint pos) c_g_sequence_get_iter_at_pos;
	typedef GSequenceIter* function(GSequence* seq, gpointer data) c_g_sequence_append;
	typedef GSequenceIter* function(GSequence* seq, gpointer data) c_g_sequence_prepend;
	typedef GSequenceIter* function(GSequenceIter* iter, gpointer data) c_g_sequence_insert_before;
	typedef void function(GSequenceIter* src, GSequenceIter* dest) c_g_sequence_move;
	typedef void function(GSequenceIter* a, GSequenceIter* b) c_g_sequence_swap;
	typedef GSequenceIter* function(GSequence* seq, gpointer data, GCompareDataFunc cmpFunc, gpointer cmpData) c_g_sequence_insert_sorted;
	typedef GSequenceIter* function(GSequence* seq, gpointer data, GSequenceIterCompareFunc iterCmp, gpointer cmpData) c_g_sequence_insert_sorted_iter;
	typedef void function(GSequenceIter* iter, GCompareDataFunc cmpFunc, gpointer cmpData) c_g_sequence_sort_changed;
	typedef void function(GSequenceIter* iter, GSequenceIterCompareFunc iterCmp, gpointer cmpData) c_g_sequence_sort_changed_iter;
	typedef void function(GSequenceIter* iter) c_g_sequence_remove;
	typedef void function(GSequenceIter* begin, GSequenceIter* end) c_g_sequence_remove_range;
	typedef void function(GSequenceIter* dest, GSequenceIter* begin, GSequenceIter* end) c_g_sequence_move_range;
	typedef GSequenceIter* function(GSequence* seq, gpointer data, GCompareDataFunc cmpFunc, gpointer cmpData) c_g_sequence_search;
	typedef GSequenceIter* function(GSequence* seq, gpointer data, GSequenceIterCompareFunc iterCmp, gpointer cmpData) c_g_sequence_search_iter;
	typedef gpointer function(GSequenceIter* iter) c_g_sequence_get;
	typedef void function(GSequenceIter* iter, gpointer data) c_g_sequence_set;
	typedef GSequenceIter* function(GSequenceIter* begin, GSequenceIter* end) c_g_sequence_range_get_midpoint;
	
	// glib.SequenceIter
	
	typedef gboolean function(GSequenceIter* iter) c_g_sequence_iter_is_begin;
	typedef gboolean function(GSequenceIter* iter) c_g_sequence_iter_is_end;
	typedef GSequenceIter* function(GSequenceIter* iter) c_g_sequence_iter_next;
	typedef GSequenceIter* function(GSequenceIter* iter) c_g_sequence_iter_prev;
	typedef gint function(GSequenceIter* iter) c_g_sequence_iter_get_position;
	typedef GSequenceIter* function(GSequenceIter* iter, gint delta) c_g_sequence_iter_move;
	typedef GSequence* function(GSequenceIter* iter) c_g_sequence_iter_get_sequence;
	typedef gint function(GSequenceIter* a, GSequenceIter* b) c_g_sequence_iter_compare;
	
	// glib.TrashStack
	
	typedef void function(GTrashStack** stackP, gpointer dataP) c_g_trash_stack_push;
	typedef gpointer function(GTrashStack** stackP) c_g_trash_stack_pop;
	typedef gpointer function(GTrashStack** stackP) c_g_trash_stack_peek;
	typedef guint function(GTrashStack** stackP) c_g_trash_stack_height;
	
	// glib.HashTable
	
	typedef GHashTable* function(GHashFunc hashFunc, GEqualFunc keyEqualFunc) c_g_hash_table_new;
	typedef GHashTable* function(GHashFunc hashFunc, GEqualFunc keyEqualFunc, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc) c_g_hash_table_new_full;
	typedef void function(GHashTable* hashTable, gpointer key, gpointer value) c_g_hash_table_insert;
	typedef void function(GHashTable* hashTable, gpointer key, gpointer value) c_g_hash_table_replace;
	typedef guint function(GHashTable* hashTable) c_g_hash_table_size;
	typedef gpointer function(GHashTable* hashTable, gconstpointer key) c_g_hash_table_lookup;
	typedef gboolean function(GHashTable* hashTable, gconstpointer lookupKey, gpointer* origKey, gpointer* value) c_g_hash_table_lookup_extended;
	typedef void function(GHashTable* hashTable, GHFunc func, gpointer userData) c_g_hash_table_foreach;
	typedef gpointer function(GHashTable* hashTable, GHRFunc predicate, gpointer userData) c_g_hash_table_find;
	typedef gboolean function(GHashTable* hashTable, gconstpointer key) c_g_hash_table_remove;
	typedef gboolean function(GHashTable* hashTable, gconstpointer key) c_g_hash_table_steal;
	typedef guint function(GHashTable* hashTable, GHRFunc func, gpointer userData) c_g_hash_table_foreach_remove;
	typedef guint function(GHashTable* hashTable, GHRFunc func, gpointer userData) c_g_hash_table_foreach_steal;
	typedef void function(GHashTable* hashTable) c_g_hash_table_remove_all;
	typedef void function(GHashTable* hashTable) c_g_hash_table_steal_all;
	typedef GList* function(GHashTable* hashTable) c_g_hash_table_get_keys;
	typedef GList* function(GHashTable* hashTable) c_g_hash_table_get_values;
	typedef void function(GHashTable* hashTable) c_g_hash_table_destroy;
	typedef GHashTable* function(GHashTable* hashTable) c_g_hash_table_ref;
	typedef void function(GHashTable* hashTable) c_g_hash_table_unref;
	typedef gboolean function(gconstpointer v1, gconstpointer v2) c_g_direct_equal;
	typedef guint function(gconstpointer v) c_g_direct_hash;
	typedef gboolean function(gconstpointer v1, gconstpointer v2) c_g_int_equal;
	typedef guint function(gconstpointer v) c_g_int_hash;
	typedef gboolean function(gconstpointer v1, gconstpointer v2) c_g_str_equal;
	typedef guint function(gconstpointer v) c_g_str_hash;
	
	// glib.HashTableIter
	
	typedef void function(GHashTableIter* iter, GHashTable* hashTable) c_g_hash_table_iter_init;
	typedef gboolean function(GHashTableIter* iter, gpointer* key, gpointer* value) c_g_hash_table_iter_next;
	typedef GHashTable* function(GHashTableIter* iter) c_g_hash_table_iter_get_hash_table;
	typedef void function(GHashTableIter* iter) c_g_hash_table_iter_remove;
	typedef void function(GHashTableIter* iter) c_g_hash_table_iter_steal;
	
	// glib.StringG
	
	typedef GString* function(gchar* init) c_g_string_new;
	typedef GString* function(gchar* init, gssize len) c_g_string_new_len;
	typedef GString* function(gsize dflSize) c_g_string_sized_new;
	typedef GString* function(GString* string, gchar* rval) c_g_string_assign;
	typedef void function(GString* string, gchar* format, va_list args) c_g_string_vprintf;
	typedef void function(GString* string, gchar* format, va_list args) c_g_string_append_vprintf;
	typedef void function(GString* string, gchar* format, ... ) c_g_string_printf;
	typedef void function(GString* string, gchar* format, ... ) c_g_string_append_printf;
	typedef GString* function(GString* string, gchar* val) c_g_string_append;
	typedef GString* function(GString* string, gchar c) c_g_string_append_c;
	typedef GString* function(GString* string, gunichar wc) c_g_string_append_unichar;
	typedef GString* function(GString* string, gchar* val, gssize len) c_g_string_append_len;
	typedef GString* function(GString* string, char* unescaped, char* reservedCharsAllowed, gboolean allowUtf8) c_g_string_append_uri_escaped;
	typedef GString* function(GString* string, gchar* val) c_g_string_prepend;
	typedef GString* function(GString* string, gchar c) c_g_string_prepend_c;
	typedef GString* function(GString* string, gunichar wc) c_g_string_prepend_unichar;
	typedef GString* function(GString* string, gchar* val, gssize len) c_g_string_prepend_len;
	typedef GString* function(GString* string, gssize pos, gchar* val) c_g_string_insert;
	typedef GString* function(GString* string, gssize pos, gchar c) c_g_string_insert_c;
	typedef GString* function(GString* string, gssize pos, gunichar wc) c_g_string_insert_unichar;
	typedef GString* function(GString* string, gssize pos, gchar* val, gssize len) c_g_string_insert_len;
	typedef GString* function(GString* string, gsize pos, gchar* val) c_g_string_overwrite;
	typedef GString* function(GString* string, gsize pos, gchar* val, gssize len) c_g_string_overwrite_len;
	typedef GString* function(GString* string, gssize pos, gssize len) c_g_string_erase;
	typedef GString* function(GString* string, gsize len) c_g_string_truncate;
	typedef GString* function(GString* string, gsize len) c_g_string_set_size;
	typedef gchar* function(GString* string, gboolean freeSegment) c_g_string_free;
	typedef GString* function(GString* string) c_g_string_up;
	typedef GString* function(GString* string) c_g_string_down;
	typedef guint function(GString* str) c_g_string_hash;
	typedef gboolean function(GString* v, GString* v2) c_g_string_equal;
	
	// glib.StringGChunk
	
	typedef GStringChunk* function(gsize size) c_g_string_chunk_new;
	typedef gchar* function(GStringChunk* chunk, gchar* string) c_g_string_chunk_insert;
	typedef gchar* function(GStringChunk* chunk, gchar* string) c_g_string_chunk_insert_const;
	typedef gchar* function(GStringChunk* chunk, gchar* string, gssize len) c_g_string_chunk_insert_len;
	typedef void function(GStringChunk* chunk) c_g_string_chunk_clear;
	typedef void function(GStringChunk* chunk) c_g_string_chunk_free;
	
	// glib.ArrayG
	
	typedef GArray* function(gboolean zeroTerminated, gboolean clear, guint elementSize) c_g_array_new;
	typedef GArray* function(gboolean zeroTerminated, gboolean clear, guint elementSize, guint reservedSize) c_g_array_sized_new;
	typedef GArray* function(GArray* array, gconstpointer data, guint len) c_g_array_append_vals;
	typedef GArray* function(GArray* array, gconstpointer data, guint len) c_g_array_prepend_vals;
	typedef GArray* function(GArray* array, guint index, gconstpointer data, guint len) c_g_array_insert_vals;
	typedef GArray* function(GArray* array, guint index) c_g_array_remove_index;
	typedef GArray* function(GArray* array, guint index) c_g_array_remove_index_fast;
	typedef GArray* function(GArray* array, guint index, guint length) c_g_array_remove_range;
	typedef void function(GArray* array, GCompareFunc compareFunc) c_g_array_sort;
	typedef void function(GArray* array, GCompareDataFunc compareFunc, gpointer userData) c_g_array_sort_with_data;
	typedef GArray* function(GArray* array, guint length) c_g_array_set_size;
	typedef gchar* function(GArray* array, gboolean freeSegment) c_g_array_free;
	
	// glib.PtrArray
	
	typedef GPtrArray* function() c_g_ptr_array_new;
	typedef GPtrArray* function(guint reservedSize) c_g_ptr_array_sized_new;
	typedef void function(GPtrArray* array, gpointer data) c_g_ptr_array_add;
	typedef gboolean function(GPtrArray* array, gpointer data) c_g_ptr_array_remove;
	typedef gpointer function(GPtrArray* array, guint index) c_g_ptr_array_remove_index;
	typedef gboolean function(GPtrArray* array, gpointer data) c_g_ptr_array_remove_fast;
	typedef gpointer function(GPtrArray* array, guint index) c_g_ptr_array_remove_index_fast;
	typedef void function(GPtrArray* array, guint index, guint length) c_g_ptr_array_remove_range;
	typedef void function(GPtrArray* array, GCompareFunc compareFunc) c_g_ptr_array_sort;
	typedef void function(GPtrArray* array, GCompareDataFunc compareFunc, gpointer userData) c_g_ptr_array_sort_with_data;
	typedef void function(GPtrArray* array, gint length) c_g_ptr_array_set_size;
	typedef gpointer* function(GPtrArray* array, gboolean freeSeg) c_g_ptr_array_free;
	typedef void function(GPtrArray* array, GFunc func, gpointer userData) c_g_ptr_array_foreach;
	
	// glib.ByteArray
	
	typedef GByteArray* function() c_g_byte_array_new;
	typedef GByteArray* function(guint reservedSize) c_g_byte_array_sized_new;
	typedef GByteArray* function(GByteArray* array, guint8* data, guint len) c_g_byte_array_append;
	typedef GByteArray* function(GByteArray* array, guint8* data, guint len) c_g_byte_array_prepend;
	typedef GByteArray* function(GByteArray* array, guint index) c_g_byte_array_remove_index;
	typedef GByteArray* function(GByteArray* array, guint index) c_g_byte_array_remove_index_fast;
	typedef GByteArray* function(GByteArray* array, guint index, guint length) c_g_byte_array_remove_range;
	typedef void function(GByteArray* array, GCompareFunc compareFunc) c_g_byte_array_sort;
	typedef void function(GByteArray* array, GCompareDataFunc compareFunc, gpointer userData) c_g_byte_array_sort_with_data;
	typedef GByteArray* function(GByteArray* array, guint length) c_g_byte_array_set_size;
	typedef guint8* function(GByteArray* array, gboolean freeSegment) c_g_byte_array_free;
	
	// glib.BBTree
	
	typedef GTree* function(GCompareFunc keyCompareFunc) c_g_tree_new;
	typedef GTree* function(GCompareDataFunc keyCompareFunc, gpointer keyCompareData) c_g_tree_new_with_data;
	typedef GTree* function(GCompareDataFunc keyCompareFunc, gpointer keyCompareData, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc) c_g_tree_new_full;
	typedef void function(GTree* tree, gpointer key, gpointer value) c_g_tree_insert;
	typedef void function(GTree* tree, gpointer key, gpointer value) c_g_tree_replace;
	typedef gint function(GTree* tree) c_g_tree_nnodes;
	typedef gint function(GTree* tree) c_g_tree_height;
	typedef gpointer function(GTree* tree, gconstpointer key) c_g_tree_lookup;
	typedef gboolean function(GTree* tree, gconstpointer lookupKey, gpointer* origKey, gpointer* value) c_g_tree_lookup_extended;
	typedef void function(GTree* tree, GTraverseFunc func, gpointer userData) c_g_tree_foreach;
	typedef void function(GTree* tree, GTraverseFunc traverseFunc, GTraverseType traverseType, gpointer userData) c_g_tree_traverse;
	typedef gpointer function(GTree* tree, GCompareFunc searchFunc, gconstpointer userData) c_g_tree_search;
	typedef gboolean function(GTree* tree, gconstpointer key) c_g_tree_remove;
	typedef gboolean function(GTree* tree, gconstpointer key) c_g_tree_steal;
	typedef void function(GTree* tree) c_g_tree_destroy;
	
	// glib.Node
	
	typedef GNode* function(gpointer data) c_g_node_new;
	typedef GNode* function(GNode* node) c_g_node_copy;
	typedef GNode* function(GNode* node, GCopyFunc copyFunc, gpointer data) c_g_node_copy_deep;
	typedef GNode* function(GNode* parent, gint position, GNode* node) c_g_node_insert;
	typedef GNode* function(GNode* parent, GNode* sibling, GNode* node) c_g_node_insert_before;
	typedef GNode* function(GNode* parent, GNode* sibling, GNode* node) c_g_node_insert_after;
	typedef GNode* function(GNode* parent, GNode* node) c_g_node_prepend;
	typedef void function(GNode* node) c_g_node_reverse_children;
	typedef void function(GNode* root, GTraverseType order, GTraverseFlags flags, gint maxDepth, GNodeTraverseFunc func, gpointer data) c_g_node_traverse;
	typedef void function(GNode* node, GTraverseFlags flags, GNodeForeachFunc func, gpointer data) c_g_node_children_foreach;
	typedef GNode* function(GNode* node) c_g_node_get_root;
	typedef GNode* function(GNode* root, GTraverseType order, GTraverseFlags flags, gpointer data) c_g_node_find;
	typedef GNode* function(GNode* node, GTraverseFlags flags, gpointer data) c_g_node_find_child;
	typedef gint function(GNode* node, gpointer data) c_g_node_child_index;
	typedef gint function(GNode* node, GNode* child) c_g_node_child_position;
	typedef GNode* function(GNode* node) c_g_node_last_child;
	typedef GNode* function(GNode* node, guint n) c_g_node_nth_child;
	typedef GNode* function(GNode* node) c_g_node_first_sibling;
	typedef GNode* function(GNode* node) c_g_node_last_sibling;
	typedef guint function(GNode* node) c_g_node_depth;
	typedef guint function(GNode* root, GTraverseFlags flags) c_g_node_n_nodes;
	typedef guint function(GNode* node) c_g_node_n_children;
	typedef gboolean function(GNode* node, GNode* descendant) c_g_node_is_ancestor;
	typedef guint function(GNode* root) c_g_node_max_height;
	typedef void function(GNode* node) c_g_node_unlink;
	typedef void function(GNode* root) c_g_node_destroy;
	typedef void function(gpointer dummy) c_g_node_push_allocator;
	typedef void function() c_g_node_pop_allocator;
	
	// glib.Quark
	
	typedef GQuark function(gchar* string) c_g_quark_from_string;
	typedef GQuark function(gchar* string) c_g_quark_from_static_string;
	typedef gchar* function(GQuark quark) c_g_quark_to_string;
	typedef GQuark function(gchar* string) c_g_quark_try_string;
	typedef gchar* function(gchar* string) c_g_intern_string;
	typedef gchar* function(gchar* string) c_g_intern_static_string;
	
	// glib.DataList
	
	typedef void function(GData** datalist) c_g_datalist_init;
	typedef void function(GData** datalist, GQuark keyId, gpointer data, GDestroyNotify destroyFunc) c_g_datalist_id_set_data_full;
	typedef gpointer function(GData** datalist, GQuark keyId) c_g_datalist_id_get_data;
	typedef gpointer function(GData** datalist, GQuark keyId) c_g_datalist_id_remove_no_notify;
	typedef void function(GData** datalist, GDataForeachFunc func, gpointer userData) c_g_datalist_foreach;
	typedef void function(GData** datalist) c_g_datalist_clear;
	typedef void function(GData** datalist, guint flags) c_g_datalist_set_flags;
	typedef void function(GData** datalist, guint flags) c_g_datalist_unset_flags;
	typedef guint function(GData** datalist) c_g_datalist_get_flags;
	
	// glib.Dataset
	
	typedef void function(gconstpointer datasetLocation, GQuark keyId, gpointer data, GDestroyNotify destroyFunc) c_g_dataset_id_set_data_full;
	typedef gpointer function(gconstpointer datasetLocation, GQuark keyId) c_g_dataset_id_get_data;
	typedef gpointer function(gconstpointer datasetLocation, GQuark keyId) c_g_dataset_id_remove_no_notify;
	typedef void function(gconstpointer datasetLocation, GDataForeachFunc func, gpointer userData) c_g_dataset_foreach;
	typedef void function(gconstpointer datasetLocation) c_g_dataset_destroy;
	
	// glib.Relation
	
	typedef GRelation* function(gint fields) c_g_relation_new;
	typedef void function(GRelation* relation, gint field, GHashFunc hashFunc, GEqualFunc keyEqualFunc) c_g_relation_index;
	typedef void function(GRelation* relation, ... ) c_g_relation_insert;
	typedef gboolean function(GRelation* relation, ... ) c_g_relation_exists;
	typedef gint function(GRelation* relation, gconstpointer key, gint field) c_g_relation_count;
	typedef GTuples* function(GRelation* relation, gconstpointer key, gint field) c_g_relation_select;
	typedef gint function(GRelation* relation, gconstpointer key, gint field) c_g_relation_delete;
	typedef void function(GRelation* relation) c_g_relation_destroy;
	typedef void function(GRelation* relation) c_g_relation_print;
	
	// glib.Tuples
	
	typedef void function(GTuples* tuples) c_g_tuples_destroy;
	typedef gpointer function(GTuples* tuples, gint index, gint field) c_g_tuples_index;
	
	// glib.Cache
	
	typedef GCache* function(GCacheNewFunc valueNewFunc, GCacheDestroyFunc valueDestroyFunc, GCacheDupFunc keyDupFunc, GCacheDestroyFunc keyDestroyFunc, GHashFunc hashKeyFunc, GHashFunc hashValueFunc, GEqualFunc keyEqualFunc) c_g_cache_new;
	typedef gpointer function(GCache* cache, gpointer key) c_g_cache_insert;
	typedef void function(GCache* cache, gconstpointer value) c_g_cache_remove;
	typedef void function(GCache* cache) c_g_cache_destroy;
	typedef void function(GCache* cache, GHFunc func, gpointer userData) c_g_cache_key_foreach;
	typedef void function(GCache* cache, GHFunc func, gpointer userData) c_g_cache_value_foreach;
	
	// glib.Allocator
	
	typedef GAllocator* function(gchar* name, guint nPreallocs) c_g_allocator_new;
	typedef void function(GAllocator* allocator) c_g_allocator_free;
}

// glib.Version

c_glib_check_version  glib_check_version;

// glib.Atomic

c_g_atomic_int_get  g_atomic_int_get;
c_g_atomic_int_set  g_atomic_int_set;
c_g_atomic_int_add  g_atomic_int_add;
c_g_atomic_int_exchange_and_add  g_atomic_int_exchange_and_add;
c_g_atomic_int_compare_and_exchange  g_atomic_int_compare_and_exchange;
c_g_atomic_pointer_get  g_atomic_pointer_get;
c_g_atomic_pointer_set  g_atomic_pointer_set;
c_g_atomic_pointer_compare_and_exchange  g_atomic_pointer_compare_and_exchange;
c_g_atomic_int_inc  g_atomic_int_inc;
c_g_atomic_int_dec_and_test  g_atomic_int_dec_and_test;

// glib.MainLoop

c_g_main_loop_new  g_main_loop_new;
c_g_main_loop_ref  g_main_loop_ref;
c_g_main_loop_unref  g_main_loop_unref;
c_g_main_loop_run  g_main_loop_run;
c_g_main_loop_quit  g_main_loop_quit;
c_g_main_loop_is_running  g_main_loop_is_running;
c_g_main_loop_get_context  g_main_loop_get_context;
c_g_main_depth  g_main_depth;
c_g_main_current_source  g_main_current_source;
c_g_poll  g_poll;

// glib.MainContext

c_g_main_context_new  g_main_context_new;
c_g_main_context_ref  g_main_context_ref;
c_g_main_context_unref  g_main_context_unref;
c_g_main_context_default  g_main_context_default;
c_g_main_context_iteration  g_main_context_iteration;
c_g_main_context_pending  g_main_context_pending;
c_g_main_context_find_source_by_id  g_main_context_find_source_by_id;
c_g_main_context_find_source_by_user_data  g_main_context_find_source_by_user_data;
c_g_main_context_find_source_by_funcs_user_data  g_main_context_find_source_by_funcs_user_data;
c_g_main_context_wakeup  g_main_context_wakeup;
c_g_main_context_acquire  g_main_context_acquire;
c_g_main_context_release  g_main_context_release;
c_g_main_context_is_owner  g_main_context_is_owner;
c_g_main_context_wait  g_main_context_wait;
c_g_main_context_prepare  g_main_context_prepare;
c_g_main_context_query  g_main_context_query;
c_g_main_context_check  g_main_context_check;
c_g_main_context_dispatch  g_main_context_dispatch;
c_g_main_context_set_poll_func  g_main_context_set_poll_func;
c_g_main_context_get_poll_func  g_main_context_get_poll_func;
c_g_main_context_add_poll  g_main_context_add_poll;
c_g_main_context_remove_poll  g_main_context_remove_poll;

// glib.Timeout

c_g_timeout_source_new  g_timeout_source_new;
c_g_timeout_source_new_seconds  g_timeout_source_new_seconds;
c_g_timeout_add  g_timeout_add;
c_g_timeout_add_full  g_timeout_add_full;
c_g_timeout_add_seconds  g_timeout_add_seconds;
c_g_timeout_add_seconds_full  g_timeout_add_seconds_full;

// glib.Idle

c_g_idle_source_new  g_idle_source_new;
c_g_idle_add  g_idle_add;
c_g_idle_add_full  g_idle_add_full;
c_g_idle_remove_by_data  g_idle_remove_by_data;

// glib.Child

c_g_child_watch_source_new  g_child_watch_source_new;
c_g_child_watch_add  g_child_watch_add;
c_g_child_watch_add_full  g_child_watch_add_full;

// glib.Source

c_g_source_new  g_source_new;
c_g_source_ref  g_source_ref;
c_g_source_unref  g_source_unref;
c_g_source_set_funcs  g_source_set_funcs;
c_g_source_attach  g_source_attach;
c_g_source_destroy  g_source_destroy;
c_g_source_is_destroyed  g_source_is_destroyed;
c_g_source_set_priority  g_source_set_priority;
c_g_source_get_priority  g_source_get_priority;
c_g_source_set_can_recurse  g_source_set_can_recurse;
c_g_source_get_can_recurse  g_source_get_can_recurse;
c_g_source_get_id  g_source_get_id;
c_g_source_get_context  g_source_get_context;
c_g_source_set_callback  g_source_set_callback;
c_g_source_set_callback_indirect  g_source_set_callback_indirect;
c_g_source_add_poll  g_source_add_poll;
c_g_source_remove_poll  g_source_remove_poll;
c_g_source_get_current_time  g_source_get_current_time;
c_g_source_remove  g_source_remove;
c_g_source_remove_by_funcs_user_data  g_source_remove_by_funcs_user_data;
c_g_source_remove_by_user_data  g_source_remove_by_user_data;

// glib.ThreadPool

c_g_thread_pool_new  g_thread_pool_new;
c_g_thread_pool_push  g_thread_pool_push;
c_g_thread_pool_set_max_threads  g_thread_pool_set_max_threads;
c_g_thread_pool_get_max_threads  g_thread_pool_get_max_threads;
c_g_thread_pool_get_num_threads  g_thread_pool_get_num_threads;
c_g_thread_pool_unprocessed  g_thread_pool_unprocessed;
c_g_thread_pool_free  g_thread_pool_free;
c_g_thread_pool_set_max_unused_threads  g_thread_pool_set_max_unused_threads;
c_g_thread_pool_get_max_unused_threads  g_thread_pool_get_max_unused_threads;
c_g_thread_pool_get_num_unused_threads  g_thread_pool_get_num_unused_threads;
c_g_thread_pool_stop_unused_threads  g_thread_pool_stop_unused_threads;
c_g_thread_pool_set_sort_function  g_thread_pool_set_sort_function;
c_g_thread_pool_set_max_idle_time  g_thread_pool_set_max_idle_time;
c_g_thread_pool_get_max_idle_time  g_thread_pool_get_max_idle_time;

// glib.AsyncQueue

c_g_async_queue_new  g_async_queue_new;
c_g_async_queue_new_full  g_async_queue_new_full;
c_g_async_queue_ref  g_async_queue_ref;
c_g_async_queue_unref  g_async_queue_unref;
c_g_async_queue_push  g_async_queue_push;
c_g_async_queue_push_sorted  g_async_queue_push_sorted;
c_g_async_queue_pop  g_async_queue_pop;
c_g_async_queue_try_pop  g_async_queue_try_pop;
c_g_async_queue_timed_pop  g_async_queue_timed_pop;
c_g_async_queue_length  g_async_queue_length;
c_g_async_queue_sort  g_async_queue_sort;
c_g_async_queue_lock  g_async_queue_lock;
c_g_async_queue_unlock  g_async_queue_unlock;
c_g_async_queue_ref_unlocked  g_async_queue_ref_unlocked;
c_g_async_queue_unref_and_unlock  g_async_queue_unref_and_unlock;
c_g_async_queue_push_unlocked  g_async_queue_push_unlocked;
c_g_async_queue_push_sorted_unlocked  g_async_queue_push_sorted_unlocked;
c_g_async_queue_pop_unlocked  g_async_queue_pop_unlocked;
c_g_async_queue_try_pop_unlocked  g_async_queue_try_pop_unlocked;
c_g_async_queue_timed_pop_unlocked  g_async_queue_timed_pop_unlocked;
c_g_async_queue_length_unlocked  g_async_queue_length_unlocked;
c_g_async_queue_sort_unlocked  g_async_queue_sort_unlocked;

// glib.Module

c_g_module_supported  g_module_supported;
c_g_module_build_path  g_module_build_path;
c_g_module_open  g_module_open;
c_g_module_symbol  g_module_symbol;
c_g_module_name  g_module_name;
c_g_module_make_resident  g_module_make_resident;
c_g_module_close  g_module_close;
c_g_module_error  g_module_error;

// glib.Memory

c_g_malloc  g_malloc;
c_g_malloc0  g_malloc0;
c_g_realloc  g_realloc;
c_g_try_malloc  g_try_malloc;
c_g_try_malloc0  g_try_malloc0;
c_g_try_realloc  g_try_realloc;
c_g_free  g_free;
c_g_memdup  g_memdup;
c_g_mem_set_vtable  g_mem_set_vtable;
c_g_mem_is_system_malloc  g_mem_is_system_malloc;
c_g_mem_profile  g_mem_profile;

// glib.IOChannel

c_g_io_channel_unix_new  g_io_channel_unix_new;
c_g_io_channel_unix_get_fd  g_io_channel_unix_get_fd;
c_g_io_channel_win32_new_fd  g_io_channel_win32_new_fd;
c_g_io_channel_win32_new_socket  g_io_channel_win32_new_socket;
c_g_io_channel_win32_new_messages  g_io_channel_win32_new_messages;
c_g_io_channel_init  g_io_channel_init;
c_g_io_channel_new_file  g_io_channel_new_file;
c_g_io_channel_read_chars  g_io_channel_read_chars;
c_g_io_channel_read_unichar  g_io_channel_read_unichar;
c_g_io_channel_read_line  g_io_channel_read_line;
c_g_io_channel_read_line_string  g_io_channel_read_line_string;
c_g_io_channel_read_to_end  g_io_channel_read_to_end;
c_g_io_channel_write_chars  g_io_channel_write_chars;
c_g_io_channel_write_unichar  g_io_channel_write_unichar;
c_g_io_channel_flush  g_io_channel_flush;
c_g_io_channel_seek_position  g_io_channel_seek_position;
c_g_io_channel_shutdown  g_io_channel_shutdown;
c_g_io_channel_error_from_errno  g_io_channel_error_from_errno;
c_g_io_channel_ref  g_io_channel_ref;
c_g_io_channel_unref  g_io_channel_unref;
c_g_io_create_watch  g_io_create_watch;
c_g_io_add_watch  g_io_add_watch;
c_g_io_add_watch_full  g_io_add_watch_full;
c_g_io_channel_get_buffer_size  g_io_channel_get_buffer_size;
c_g_io_channel_set_buffer_size  g_io_channel_set_buffer_size;
c_g_io_channel_get_buffer_condition  g_io_channel_get_buffer_condition;
c_g_io_channel_get_flags  g_io_channel_get_flags;
c_g_io_channel_set_flags  g_io_channel_set_flags;
c_g_io_channel_get_line_term  g_io_channel_get_line_term;
c_g_io_channel_set_line_term  g_io_channel_set_line_term;
c_g_io_channel_get_buffered  g_io_channel_get_buffered;
c_g_io_channel_set_buffered  g_io_channel_set_buffered;
c_g_io_channel_get_encoding  g_io_channel_get_encoding;
c_g_io_channel_set_encoding  g_io_channel_set_encoding;
c_g_io_channel_get_close_on_unref  g_io_channel_get_close_on_unref;
c_g_io_channel_set_close_on_unref  g_io_channel_set_close_on_unref;
c_g_io_channel_read  g_io_channel_read;
c_g_io_channel_write  g_io_channel_write;
c_g_io_channel_seek  g_io_channel_seek;
c_g_io_channel_close  g_io_channel_close;

// glib.ErrorG

c_g_error_new  g_error_new;
c_g_error_new_literal  g_error_new_literal;
c_g_error_free  g_error_free;
c_g_error_copy  g_error_copy;
c_g_error_matches  g_error_matches;
c_g_set_error  g_set_error;
c_g_set_error_literal  g_set_error_literal;
c_g_propagate_error  g_propagate_error;
c_g_clear_error  g_clear_error;
c_g_prefix_error  g_prefix_error;
c_g_propagate_prefixed_error  g_propagate_prefixed_error;

// glib.


// glib.


// glib.Messages

c_g_print  g_print;
c_g_set_print_handler  g_set_print_handler;
c_g_printerr  g_printerr;
c_g_set_printerr_handler  g_set_printerr_handler;
c_g_on_error_query  g_on_error_query;
c_g_on_error_stack_trace  g_on_error_stack_trace;

// glib.MessageLog

c_g_log  g_log;
c_g_logv  g_logv;
c_g_log_set_handler  g_log_set_handler;
c_g_log_remove_handler  g_log_remove_handler;
c_g_log_set_always_fatal  g_log_set_always_fatal;
c_g_log_set_fatal_mask  g_log_set_fatal_mask;
c_g_log_default_handler  g_log_default_handler;
c_g_log_set_default_handler  g_log_set_default_handler;

// glib.Str

c_g_strdup  g_strdup;
c_g_strndup  g_strndup;
c_g_strdupv  g_strdupv;
c_g_strnfill  g_strnfill;
c_g_stpcpy  g_stpcpy;
c_g_strstr_len  g_strstr_len;
c_g_strrstr  g_strrstr;
c_g_strrstr_len  g_strrstr_len;
c_g_str_has_prefix  g_str_has_prefix;
c_g_str_has_suffix  g_str_has_suffix;
c_g_strcmp0  g_strcmp0;
c_g_strlcpy  g_strlcpy;
c_g_strlcat  g_strlcat;
c_g_strdup_printf  g_strdup_printf;
c_g_strdup_vprintf  g_strdup_vprintf;
c_g_printf  g_printf;
c_g_vprintf  g_vprintf;
c_g_fprintf  g_fprintf;
c_g_vfprintf  g_vfprintf;
c_g_sprintf  g_sprintf;
c_g_vsprintf  g_vsprintf;
c_g_snprintf  g_snprintf;
c_g_vsnprintf  g_vsnprintf;
c_g_vasprintf  g_vasprintf;
c_g_printf_string_upper_bound  g_printf_string_upper_bound;
c_g_ascii_isalnum  g_ascii_isalnum;
c_g_ascii_isalpha  g_ascii_isalpha;
c_g_ascii_iscntrl  g_ascii_iscntrl;
c_g_ascii_isdigit  g_ascii_isdigit;
c_g_ascii_isgraph  g_ascii_isgraph;
c_g_ascii_islower  g_ascii_islower;
c_g_ascii_isprint  g_ascii_isprint;
c_g_ascii_ispunct  g_ascii_ispunct;
c_g_ascii_isspace  g_ascii_isspace;
c_g_ascii_isupper  g_ascii_isupper;
c_g_ascii_isxdigit  g_ascii_isxdigit;
c_g_ascii_digit_value  g_ascii_digit_value;
c_g_ascii_xdigit_value  g_ascii_xdigit_value;
c_g_ascii_strcasecmp  g_ascii_strcasecmp;
c_g_ascii_strncasecmp  g_ascii_strncasecmp;
c_g_ascii_strup  g_ascii_strup;
c_g_ascii_strdown  g_ascii_strdown;
c_g_ascii_tolower  g_ascii_tolower;
c_g_ascii_toupper  g_ascii_toupper;
c_g_string_ascii_up  g_string_ascii_up;
c_g_string_ascii_down  g_string_ascii_down;
c_g_strup  g_strup;
c_g_strdown  g_strdown;
c_g_strcasecmp  g_strcasecmp;
c_g_strncasecmp  g_strncasecmp;
c_g_strreverse  g_strreverse;
c_g_ascii_strtoll  g_ascii_strtoll;
c_g_ascii_strtoull  g_ascii_strtoull;
c_g_ascii_strtod  g_ascii_strtod;
c_g_ascii_dtostr  g_ascii_dtostr;
c_g_ascii_formatd  g_ascii_formatd;
c_g_strtod  g_strtod;
c_g_strchug  g_strchug;
c_g_strchomp  g_strchomp;
c_g_strdelimit  g_strdelimit;
c_g_strescape  g_strescape;
c_g_strcompress  g_strcompress;
c_g_strcanon  g_strcanon;
c_g_strsplit  g_strsplit;
c_g_strsplit_set  g_strsplit_set;
c_g_strfreev  g_strfreev;
c_g_strconcat  g_strconcat;
c_g_strjoin  g_strjoin;
c_g_strjoinv  g_strjoinv;
c_g_strv_length  g_strv_length;
c_g_strerror  g_strerror;
c_g_strsignal  g_strsignal;

// glib.CharacterSet

c_g_convert  g_convert;
c_g_convert_with_fallback  g_convert_with_fallback;
c_g_locale_to_utf8  g_locale_to_utf8;
c_g_filename_to_utf8  g_filename_to_utf8;
c_g_filename_from_utf8  g_filename_from_utf8;
c_g_filename_from_uri  g_filename_from_uri;
c_g_filename_to_uri  g_filename_to_uri;
c_g_get_filename_charsets  g_get_filename_charsets;
c_g_filename_display_name  g_filename_display_name;
c_g_filename_display_basename  g_filename_display_basename;
c_g_uri_list_extract_uris  g_uri_list_extract_uris;
c_g_locale_from_utf8  g_locale_from_utf8;
c_g_get_charset  g_get_charset;

// glib.Unicode

c_g_unichar_validate  g_unichar_validate;
c_g_unichar_isalnum  g_unichar_isalnum;
c_g_unichar_isalpha  g_unichar_isalpha;
c_g_unichar_iscntrl  g_unichar_iscntrl;
c_g_unichar_isdefined  g_unichar_isdefined;
c_g_unichar_isdigit  g_unichar_isdigit;
c_g_unichar_isgraph  g_unichar_isgraph;
c_g_unichar_islower  g_unichar_islower;
c_g_unichar_ismark  g_unichar_ismark;
c_g_unichar_isprint  g_unichar_isprint;
c_g_unichar_ispunct  g_unichar_ispunct;
c_g_unichar_isspace  g_unichar_isspace;
c_g_unichar_istitle  g_unichar_istitle;
c_g_unichar_isupper  g_unichar_isupper;
c_g_unichar_isxdigit  g_unichar_isxdigit;
c_g_unichar_iswide  g_unichar_iswide;
c_g_unichar_iswide_cjk  g_unichar_iswide_cjk;
c_g_unichar_iszerowidth  g_unichar_iszerowidth;
c_g_unichar_toupper  g_unichar_toupper;
c_g_unichar_tolower  g_unichar_tolower;
c_g_unichar_totitle  g_unichar_totitle;
c_g_unichar_digit_value  g_unichar_digit_value;
c_g_unichar_xdigit_value  g_unichar_xdigit_value;
c_g_unichar_type  g_unichar_type;
c_g_unichar_break_type  g_unichar_break_type;
c_g_unichar_combining_class  g_unichar_combining_class;
c_g_unicode_canonical_ordering  g_unicode_canonical_ordering;
c_g_unicode_canonical_decomposition  g_unicode_canonical_decomposition;
c_g_unichar_get_mirror_char  g_unichar_get_mirror_char;
c_g_unichar_get_script  g_unichar_get_script;
c_g_utf8_get_char  g_utf8_get_char;
c_g_utf8_get_char_validated  g_utf8_get_char_validated;
c_g_utf8_offset_to_pointer  g_utf8_offset_to_pointer;
c_g_utf8_pointer_to_offset  g_utf8_pointer_to_offset;
c_g_utf8_prev_char  g_utf8_prev_char;
c_g_utf8_find_next_char  g_utf8_find_next_char;
c_g_utf8_find_prev_char  g_utf8_find_prev_char;
c_g_utf8_strlen  g_utf8_strlen;
c_g_utf8_strncpy  g_utf8_strncpy;
c_g_utf8_strchr  g_utf8_strchr;
c_g_utf8_strrchr  g_utf8_strrchr;
c_g_utf8_strreverse  g_utf8_strreverse;
c_g_utf8_validate  g_utf8_validate;
c_g_utf8_strup  g_utf8_strup;
c_g_utf8_strdown  g_utf8_strdown;
c_g_utf8_casefold  g_utf8_casefold;
c_g_utf8_normalize  g_utf8_normalize;
c_g_utf8_collate  g_utf8_collate;
c_g_utf8_collate_key  g_utf8_collate_key;
c_g_utf8_collate_key_for_filename  g_utf8_collate_key_for_filename;
c_g_utf8_to_utf16  g_utf8_to_utf16;
c_g_utf8_to_ucs4  g_utf8_to_ucs4;
c_g_utf8_to_ucs4_fast  g_utf8_to_ucs4_fast;
c_g_utf16_to_ucs4  g_utf16_to_ucs4;
c_g_utf16_to_utf8  g_utf16_to_utf8;
c_g_ucs4_to_utf16  g_ucs4_to_utf16;
c_g_ucs4_to_utf8  g_ucs4_to_utf8;
c_g_unichar_to_utf8  g_unichar_to_utf8;

// glib.Base64

c_g_base64_encode_step  g_base64_encode_step;
c_g_base64_encode_close  g_base64_encode_close;
c_g_base64_encode  g_base64_encode;
c_g_base64_decode_step  g_base64_decode_step;
c_g_base64_decode  g_base64_decode;
c_g_base64_decode_inplace  g_base64_decode_inplace;

// glib.Checksum

c_g_checksum_type_get_length  g_checksum_type_get_length;
c_g_checksum_new  g_checksum_new;
c_g_checksum_copy  g_checksum_copy;
c_g_checksum_free  g_checksum_free;
c_g_checksum_reset  g_checksum_reset;
c_g_checksum_update  g_checksum_update;
c_g_checksum_get_string  g_checksum_get_string;
c_g_checksum_get_digest  g_checksum_get_digest;
c_g_compute_checksum_for_data  g_compute_checksum_for_data;
c_g_compute_checksum_for_string  g_compute_checksum_for_string;

// glib.Internationalization

c_g_dgettext  g_dgettext;
c_g_dngettext  g_dngettext;
c_g_dpgettext  g_dpgettext;
c_g_dpgettext2  g_dpgettext2;
c_g_strip_context  g_strip_context;
c_g_get_language_names  g_get_language_names;

// glib.TimeVal

c_g_get_current_time  g_get_current_time;
c_g_usleep  g_usleep;
c_g_time_val_add  g_time_val_add;
c_g_time_val_from_iso8601  g_time_val_from_iso8601;
c_g_time_val_to_iso8601  g_time_val_to_iso8601;

// glib.Date

c_g_date_new  g_date_new;
c_g_date_new_dmy  g_date_new_dmy;
c_g_date_new_julian  g_date_new_julian;
c_g_date_clear  g_date_clear;
c_g_date_free  g_date_free;
c_g_date_set_day  g_date_set_day;
c_g_date_set_month  g_date_set_month;
c_g_date_set_year  g_date_set_year;
c_g_date_set_dmy  g_date_set_dmy;
c_g_date_set_julian  g_date_set_julian;
c_g_date_set_time  g_date_set_time;
c_g_date_set_time_t  g_date_set_time_t;
c_g_date_set_time_val  g_date_set_time_val;
c_g_date_set_parse  g_date_set_parse;
c_g_date_add_days  g_date_add_days;
c_g_date_subtract_days  g_date_subtract_days;
c_g_date_add_months  g_date_add_months;
c_g_date_subtract_months  g_date_subtract_months;
c_g_date_add_years  g_date_add_years;
c_g_date_subtract_years  g_date_subtract_years;
c_g_date_days_between  g_date_days_between;
c_g_date_compare  g_date_compare;
c_g_date_clamp  g_date_clamp;
c_g_date_order  g_date_order;
c_g_date_get_day  g_date_get_day;
c_g_date_get_month  g_date_get_month;
c_g_date_get_year  g_date_get_year;
c_g_date_get_julian  g_date_get_julian;
c_g_date_get_weekday  g_date_get_weekday;
c_g_date_get_day_of_year  g_date_get_day_of_year;
c_g_date_get_days_in_month  g_date_get_days_in_month;
c_g_date_is_first_of_month  g_date_is_first_of_month;
c_g_date_is_last_of_month  g_date_is_last_of_month;
c_g_date_is_leap_year  g_date_is_leap_year;
c_g_date_get_monday_week_of_year  g_date_get_monday_week_of_year;
c_g_date_get_monday_weeks_in_year  g_date_get_monday_weeks_in_year;
c_g_date_get_sunday_week_of_year  g_date_get_sunday_week_of_year;
c_g_date_get_sunday_weeks_in_year  g_date_get_sunday_weeks_in_year;
c_g_date_get_iso8601_week_of_year  g_date_get_iso8601_week_of_year;
c_g_date_strftime  g_date_strftime;
c_g_date_to_struct_tm  g_date_to_struct_tm;
c_g_date_valid  g_date_valid;
c_g_date_valid_day  g_date_valid_day;
c_g_date_valid_month  g_date_valid_month;
c_g_date_valid_year  g_date_valid_year;
c_g_date_valid_dmy  g_date_valid_dmy;
c_g_date_valid_julian  g_date_valid_julian;
c_g_date_valid_weekday  g_date_valid_weekday;

// glib.RandG

c_g_rand_new_with_seed  g_rand_new_with_seed;
c_g_rand_new_with_seed_array  g_rand_new_with_seed_array;
c_g_rand_new  g_rand_new;
c_g_rand_copy  g_rand_copy;
c_g_rand_free  g_rand_free;
c_g_rand_set_seed  g_rand_set_seed;
c_g_rand_set_seed_array  g_rand_set_seed_array;
c_g_rand_int  g_rand_int;
c_g_rand_int_range  g_rand_int_range;
c_g_rand_double  g_rand_double;
c_g_rand_double_range  g_rand_double_range;
c_g_random_set_seed  g_random_set_seed;
c_g_random_int  g_random_int;
c_g_random_int_range  g_random_int_range;
c_g_random_double  g_random_double;
c_g_random_double_range  g_random_double_range;

// glib.Util

c_g_get_application_name  g_get_application_name;
c_g_set_application_name  g_set_application_name;
c_g_get_prgname  g_get_prgname;
c_g_set_prgname  g_set_prgname;
c_g_getenv  g_getenv;
c_g_setenv  g_setenv;
c_g_unsetenv  g_unsetenv;
c_g_listenv  g_listenv;
c_g_get_user_name  g_get_user_name;
c_g_get_real_name  g_get_real_name;
c_g_get_user_cache_dir  g_get_user_cache_dir;
c_g_get_user_data_dir  g_get_user_data_dir;
c_g_get_user_config_dir  g_get_user_config_dir;
c_g_get_user_special_dir  g_get_user_special_dir;
c_g_get_system_data_dirs  g_get_system_data_dirs;
c_g_get_system_config_dirs  g_get_system_config_dirs;
c_g_get_host_name  g_get_host_name;
c_g_get_home_dir  g_get_home_dir;
c_g_get_tmp_dir  g_get_tmp_dir;
c_g_get_current_dir  g_get_current_dir;
c_g_basename  g_basename;
c_g_path_is_absolute  g_path_is_absolute;
c_g_path_skip_root  g_path_skip_root;
c_g_path_get_basename  g_path_get_basename;
c_g_path_get_dirname  g_path_get_dirname;
c_g_build_filename  g_build_filename;
c_g_build_filenamev  g_build_filenamev;
c_g_build_path  g_build_path;
c_g_build_pathv  g_build_pathv;
c_g_format_size_for_display  g_format_size_for_display;
c_g_find_program_in_path  g_find_program_in_path;
c_g_bit_nth_lsf  g_bit_nth_lsf;
c_g_bit_nth_msf  g_bit_nth_msf;
c_g_bit_storage  g_bit_storage;
c_g_spaced_primes_closest  g_spaced_primes_closest;
c_g_atexit  g_atexit;
c_g_parse_debug_string  g_parse_debug_string;
c_g_qsort_with_data  g_qsort_with_data;
c_g_nullify_pointer  g_nullify_pointer;

// glib.ScannerG

c_g_scanner_new  g_scanner_new;
c_g_scanner_destroy  g_scanner_destroy;
c_g_scanner_input_file  g_scanner_input_file;
c_g_scanner_sync_file_offset  g_scanner_sync_file_offset;
c_g_scanner_input_text  g_scanner_input_text;
c_g_scanner_peek_next_token  g_scanner_peek_next_token;
c_g_scanner_get_next_token  g_scanner_get_next_token;
c_g_scanner_eof  g_scanner_eof;
c_g_scanner_cur_line  g_scanner_cur_line;
c_g_scanner_cur_position  g_scanner_cur_position;
c_g_scanner_cur_token  g_scanner_cur_token;
c_g_scanner_cur_value  g_scanner_cur_value;
c_g_scanner_set_scope  g_scanner_set_scope;
c_g_scanner_scope_add_symbol  g_scanner_scope_add_symbol;
c_g_scanner_scope_foreach_symbol  g_scanner_scope_foreach_symbol;
c_g_scanner_scope_lookup_symbol  g_scanner_scope_lookup_symbol;
c_g_scanner_scope_remove_symbol  g_scanner_scope_remove_symbol;
c_g_scanner_lookup_symbol  g_scanner_lookup_symbol;
c_g_scanner_warn  g_scanner_warn;
c_g_scanner_error  g_scanner_error;
c_g_scanner_unexp_token  g_scanner_unexp_token;

// glib.StringCompletion

c_g_completion_new  g_completion_new;
c_g_completion_add_items  g_completion_add_items;
c_g_completion_remove_items  g_completion_remove_items;
c_g_completion_clear_items  g_completion_clear_items;
c_g_completion_complete  g_completion_complete;
c_g_completion_complete_utf8  g_completion_complete_utf8;
c_g_completion_set_compare  g_completion_set_compare;
c_g_completion_free  g_completion_free;

// glib.Timer

c_g_timer_new  g_timer_new;
c_g_timer_start  g_timer_start;
c_g_timer_stop  g_timer_stop;
c_g_timer_continue  g_timer_continue;
c_g_timer_elapsed  g_timer_elapsed;
c_g_timer_reset  g_timer_reset;
c_g_timer_destroy  g_timer_destroy;

// glib.Spawn

c_g_spawn_async_with_pipes  g_spawn_async_with_pipes;
c_g_spawn_async  g_spawn_async;
c_g_spawn_sync  g_spawn_sync;
c_g_spawn_command_line_async  g_spawn_command_line_async;
c_g_spawn_command_line_sync  g_spawn_command_line_sync;
c_g_spawn_close_pid  g_spawn_close_pid;

// glib.FileUtils

c_g_file_error_from_errno  g_file_error_from_errno;
c_g_file_get_contents  g_file_get_contents;
c_g_file_set_contents  g_file_set_contents;
c_g_file_test  g_file_test;
c_g_mkstemp  g_mkstemp;
c_g_file_open_tmp  g_file_open_tmp;
c_g_file_read_link  g_file_read_link;
c_g_mkdir_with_parents  g_mkdir_with_parents;
c_g_open  g_open;
c_g_rename  g_rename;
c_g_mkdir  g_mkdir;
c_g_stat  g_stat;
c_g_lstat  g_lstat;
c_g_unlink  g_unlink;
c_g_remove  g_remove;
c_g_rmdir  g_rmdir;
c_g_fopen  g_fopen;
c_g_freopen  g_freopen;
c_g_chmod  g_chmod;
c_g_access  g_access;
c_g_creat  g_creat;
c_g_chdir  g_chdir;
c_g_utime  g_utime;

// glib.Directory

c_g_dir_open  g_dir_open;
c_g_dir_read_name  g_dir_read_name;
c_g_dir_rewind  g_dir_rewind;
c_g_dir_close  g_dir_close;

// glib.MappedFile

c_g_mapped_file_new  g_mapped_file_new;
c_g_mapped_file_free  g_mapped_file_free;
c_g_mapped_file_get_length  g_mapped_file_get_length;
c_g_mapped_file_get_contents  g_mapped_file_get_contents;

// glib.URI

c_g_uri_parse_scheme  g_uri_parse_scheme;
c_g_uri_escape_string  g_uri_escape_string;
c_g_uri_unescape_string  g_uri_unescape_string;
c_g_uri_unescape_segment  g_uri_unescape_segment;

// glib.ShellUtils

c_g_shell_parse_argv  g_shell_parse_argv;
c_g_shell_quote  g_shell_quote;
c_g_shell_unquote  g_shell_unquote;

// glib.OptionContext

c_g_option_context_new  g_option_context_new;
c_g_option_context_set_summary  g_option_context_set_summary;
c_g_option_context_get_summary  g_option_context_get_summary;
c_g_option_context_set_description  g_option_context_set_description;
c_g_option_context_get_description  g_option_context_get_description;
c_g_option_context_set_translate_func  g_option_context_set_translate_func;
c_g_option_context_set_translation_domain  g_option_context_set_translation_domain;
c_g_option_context_free  g_option_context_free;
c_g_option_context_parse  g_option_context_parse;
c_g_option_context_set_help_enabled  g_option_context_set_help_enabled;
c_g_option_context_get_help_enabled  g_option_context_get_help_enabled;
c_g_option_context_set_ignore_unknown_options  g_option_context_set_ignore_unknown_options;
c_g_option_context_get_ignore_unknown_options  g_option_context_get_ignore_unknown_options;
c_g_option_context_get_help  g_option_context_get_help;
c_g_option_context_add_main_entries  g_option_context_add_main_entries;
c_g_option_context_add_group  g_option_context_add_group;
c_g_option_context_set_main_group  g_option_context_set_main_group;
c_g_option_context_get_main_group  g_option_context_get_main_group;

// glib.OptionGroup

c_g_option_group_new  g_option_group_new;
c_g_option_group_free  g_option_group_free;
c_g_option_group_add_entries  g_option_group_add_entries;
c_g_option_group_set_parse_hooks  g_option_group_set_parse_hooks;
c_g_option_group_set_error_hook  g_option_group_set_error_hook;
c_g_option_group_set_translate_func  g_option_group_set_translate_func;
c_g_option_group_set_translation_domain  g_option_group_set_translation_domain;

// glib.Pattern

c_g_pattern_spec_new  g_pattern_spec_new;
c_g_pattern_spec_free  g_pattern_spec_free;
c_g_pattern_spec_equal  g_pattern_spec_equal;
c_g_pattern_match  g_pattern_match;
c_g_pattern_match_string  g_pattern_match_string;
c_g_pattern_match_simple  g_pattern_match_simple;

// glib.Regex

c_g_regex_new  g_regex_new;
c_g_regex_ref  g_regex_ref;
c_g_regex_unref  g_regex_unref;
c_g_regex_get_pattern  g_regex_get_pattern;
c_g_regex_get_max_backref  g_regex_get_max_backref;
c_g_regex_get_capture_count  g_regex_get_capture_count;
c_g_regex_get_string_number  g_regex_get_string_number;
c_g_regex_escape_string  g_regex_escape_string;
c_g_regex_match_simple  g_regex_match_simple;
c_g_regex_match  g_regex_match;
c_g_regex_match_full  g_regex_match_full;
c_g_regex_match_all  g_regex_match_all;
c_g_regex_match_all_full  g_regex_match_all_full;
c_g_regex_split_simple  g_regex_split_simple;
c_g_regex_split  g_regex_split;
c_g_regex_split_full  g_regex_split_full;
c_g_regex_replace  g_regex_replace;
c_g_regex_replace_literal  g_regex_replace_literal;
c_g_regex_replace_eval  g_regex_replace_eval;
c_g_regex_check_replacement  g_regex_check_replacement;

// glib.MatchInfo

c_g_match_info_get_regex  g_match_info_get_regex;
c_g_match_info_get_string  g_match_info_get_string;
c_g_match_info_free  g_match_info_free;
c_g_match_info_matches  g_match_info_matches;
c_g_match_info_next  g_match_info_next;
c_g_match_info_get_match_count  g_match_info_get_match_count;
c_g_match_info_is_partial_match  g_match_info_is_partial_match;
c_g_match_info_expand_references  g_match_info_expand_references;
c_g_match_info_fetch  g_match_info_fetch;
c_g_match_info_fetch_pos  g_match_info_fetch_pos;
c_g_match_info_fetch_named  g_match_info_fetch_named;
c_g_match_info_fetch_named_pos  g_match_info_fetch_named_pos;
c_g_match_info_fetch_all  g_match_info_fetch_all;

// glib.SimpleXML

c_g_markup_escape_text  g_markup_escape_text;
c_g_markup_printf_escaped  g_markup_printf_escaped;
c_g_markup_vprintf_escaped  g_markup_vprintf_escaped;
c_g_markup_parse_context_end_parse  g_markup_parse_context_end_parse;
c_g_markup_parse_context_free  g_markup_parse_context_free;
c_g_markup_parse_context_get_position  g_markup_parse_context_get_position;
c_g_markup_parse_context_get_element  g_markup_parse_context_get_element;
c_g_markup_parse_context_get_element_stack  g_markup_parse_context_get_element_stack;
c_g_markup_parse_context_get_user_data  g_markup_parse_context_get_user_data;
c_g_markup_parse_context_new  g_markup_parse_context_new;
c_g_markup_parse_context_parse  g_markup_parse_context_parse;
c_g_markup_parse_context_push  g_markup_parse_context_push;
c_g_markup_parse_context_pop  g_markup_parse_context_pop;
c_g_markup_collect_attributes  g_markup_collect_attributes;

// glib.KeyFile

c_g_key_file_new  g_key_file_new;
c_g_key_file_free  g_key_file_free;
c_g_key_file_set_list_separator  g_key_file_set_list_separator;
c_g_key_file_load_from_file  g_key_file_load_from_file;
c_g_key_file_load_from_data  g_key_file_load_from_data;
c_g_key_file_load_from_data_dirs  g_key_file_load_from_data_dirs;
c_g_key_file_load_from_dirs  g_key_file_load_from_dirs;
c_g_key_file_to_data  g_key_file_to_data;
c_g_key_file_get_start_group  g_key_file_get_start_group;
c_g_key_file_get_groups  g_key_file_get_groups;
c_g_key_file_get_keys  g_key_file_get_keys;
c_g_key_file_has_group  g_key_file_has_group;
c_g_key_file_has_key  g_key_file_has_key;
c_g_key_file_get_value  g_key_file_get_value;
c_g_key_file_get_string  g_key_file_get_string;
c_g_key_file_get_locale_string  g_key_file_get_locale_string;
c_g_key_file_get_boolean  g_key_file_get_boolean;
c_g_key_file_get_integer  g_key_file_get_integer;
c_g_key_file_get_double  g_key_file_get_double;
c_g_key_file_get_string_list  g_key_file_get_string_list;
c_g_key_file_get_locale_string_list  g_key_file_get_locale_string_list;
c_g_key_file_get_boolean_list  g_key_file_get_boolean_list;
c_g_key_file_get_integer_list  g_key_file_get_integer_list;
c_g_key_file_get_double_list  g_key_file_get_double_list;
c_g_key_file_get_comment  g_key_file_get_comment;
c_g_key_file_set_value  g_key_file_set_value;
c_g_key_file_set_string  g_key_file_set_string;
c_g_key_file_set_locale_string  g_key_file_set_locale_string;
c_g_key_file_set_boolean  g_key_file_set_boolean;
c_g_key_file_set_integer  g_key_file_set_integer;
c_g_key_file_set_double  g_key_file_set_double;
c_g_key_file_set_string_list  g_key_file_set_string_list;
c_g_key_file_set_locale_string_list  g_key_file_set_locale_string_list;
c_g_key_file_set_boolean_list  g_key_file_set_boolean_list;
c_g_key_file_set_integer_list  g_key_file_set_integer_list;
c_g_key_file_set_double_list  g_key_file_set_double_list;
c_g_key_file_set_comment  g_key_file_set_comment;
c_g_key_file_remove_group  g_key_file_remove_group;
c_g_key_file_remove_key  g_key_file_remove_key;
c_g_key_file_remove_comment  g_key_file_remove_comment;

// glib.BookmarkFile

c_g_bookmark_file_new  g_bookmark_file_new;
c_g_bookmark_file_free  g_bookmark_file_free;
c_g_bookmark_file_load_from_file  g_bookmark_file_load_from_file;
c_g_bookmark_file_load_from_data  g_bookmark_file_load_from_data;
c_g_bookmark_file_load_from_data_dirs  g_bookmark_file_load_from_data_dirs;
c_g_bookmark_file_to_data  g_bookmark_file_to_data;
c_g_bookmark_file_to_file  g_bookmark_file_to_file;
c_g_bookmark_file_has_item  g_bookmark_file_has_item;
c_g_bookmark_file_has_group  g_bookmark_file_has_group;
c_g_bookmark_file_has_application  g_bookmark_file_has_application;
c_g_bookmark_file_get_size  g_bookmark_file_get_size;
c_g_bookmark_file_get_uris  g_bookmark_file_get_uris;
c_g_bookmark_file_get_title  g_bookmark_file_get_title;
c_g_bookmark_file_get_description  g_bookmark_file_get_description;
c_g_bookmark_file_get_mime_type  g_bookmark_file_get_mime_type;
c_g_bookmark_file_get_is_private  g_bookmark_file_get_is_private;
c_g_bookmark_file_get_icon  g_bookmark_file_get_icon;
c_g_bookmark_file_get_added  g_bookmark_file_get_added;
c_g_bookmark_file_get_modified  g_bookmark_file_get_modified;
c_g_bookmark_file_get_visited  g_bookmark_file_get_visited;
c_g_bookmark_file_get_groups  g_bookmark_file_get_groups;
c_g_bookmark_file_get_applications  g_bookmark_file_get_applications;
c_g_bookmark_file_get_app_info  g_bookmark_file_get_app_info;
c_g_bookmark_file_set_title  g_bookmark_file_set_title;
c_g_bookmark_file_set_description  g_bookmark_file_set_description;
c_g_bookmark_file_set_mime_type  g_bookmark_file_set_mime_type;
c_g_bookmark_file_set_is_private  g_bookmark_file_set_is_private;
c_g_bookmark_file_set_icon  g_bookmark_file_set_icon;
c_g_bookmark_file_set_added  g_bookmark_file_set_added;
c_g_bookmark_file_set_groups  g_bookmark_file_set_groups;
c_g_bookmark_file_set_modified  g_bookmark_file_set_modified;
c_g_bookmark_file_set_visited  g_bookmark_file_set_visited;
c_g_bookmark_file_set_app_info  g_bookmark_file_set_app_info;
c_g_bookmark_file_add_group  g_bookmark_file_add_group;
c_g_bookmark_file_add_application  g_bookmark_file_add_application;
c_g_bookmark_file_remove_group  g_bookmark_file_remove_group;
c_g_bookmark_file_remove_application  g_bookmark_file_remove_application;
c_g_bookmark_file_remove_item  g_bookmark_file_remove_item;
c_g_bookmark_file_move_item  g_bookmark_file_move_item;

// glib.WindowsUtils

c_g_win32_error_message  g_win32_error_message;
c_g_win32_getlocale  g_win32_getlocale;
c_g_win32_get_package_installation_directory  g_win32_get_package_installation_directory;
c_g_win32_get_package_installation_directory_of_module  g_win32_get_package_installation_directory_of_module;
c_g_win32_get_package_installation_subdirectory  g_win32_get_package_installation_subdirectory;
c_g_win32_get_windows_version  g_win32_get_windows_version;
c_g_win32_locale_filename_from_utf8  g_win32_locale_filename_from_utf8;

// glib.MemorySlice

c_g_slice_alloc  g_slice_alloc;
c_g_slice_alloc0  g_slice_alloc0;
c_g_slice_copy  g_slice_copy;
c_g_slice_free1  g_slice_free1;
c_g_slice_free_chain_with_offset  g_slice_free_chain_with_offset;

// glib.MemoryChunk

c_g_mem_chunk_new  g_mem_chunk_new;
c_g_mem_chunk_alloc  g_mem_chunk_alloc;
c_g_mem_chunk_alloc0  g_mem_chunk_alloc0;
c_g_mem_chunk_free  g_mem_chunk_free;
c_g_mem_chunk_destroy  g_mem_chunk_destroy;
c_g_mem_chunk_reset  g_mem_chunk_reset;
c_g_mem_chunk_clean  g_mem_chunk_clean;
c_g_blow_chunks  g_blow_chunks;
c_g_mem_chunk_info  g_mem_chunk_info;
c_g_mem_chunk_print  g_mem_chunk_print;

// glib.ListG

c_g_list_append  g_list_append;
c_g_list_prepend  g_list_prepend;
c_g_list_insert  g_list_insert;
c_g_list_insert_before  g_list_insert_before;
c_g_list_insert_sorted  g_list_insert_sorted;
c_g_list_remove  g_list_remove;
c_g_list_remove_link  g_list_remove_link;
c_g_list_delete_link  g_list_delete_link;
c_g_list_remove_all  g_list_remove_all;
c_g_list_free  g_list_free;
c_g_list_alloc  g_list_alloc;
c_g_list_free_1  g_list_free_1;
c_g_list_length  g_list_length;
c_g_list_copy  g_list_copy;
c_g_list_reverse  g_list_reverse;
c_g_list_sort  g_list_sort;
c_g_list_insert_sorted_with_data  g_list_insert_sorted_with_data;
c_g_list_sort_with_data  g_list_sort_with_data;
c_g_list_concat  g_list_concat;
c_g_list_foreach  g_list_foreach;
c_g_list_first  g_list_first;
c_g_list_last  g_list_last;
c_g_list_nth  g_list_nth;
c_g_list_nth_data  g_list_nth_data;
c_g_list_nth_prev  g_list_nth_prev;
c_g_list_find  g_list_find;
c_g_list_find_custom  g_list_find_custom;
c_g_list_position  g_list_position;
c_g_list_index  g_list_index;
c_g_list_push_allocator  g_list_push_allocator;
c_g_list_pop_allocator  g_list_pop_allocator;

// glib.ListSG

c_g_slist_alloc  g_slist_alloc;
c_g_slist_append  g_slist_append;
c_g_slist_prepend  g_slist_prepend;
c_g_slist_insert  g_slist_insert;
c_g_slist_insert_before  g_slist_insert_before;
c_g_slist_insert_sorted  g_slist_insert_sorted;
c_g_slist_remove  g_slist_remove;
c_g_slist_remove_link  g_slist_remove_link;
c_g_slist_delete_link  g_slist_delete_link;
c_g_slist_remove_all  g_slist_remove_all;
c_g_slist_free  g_slist_free;
c_g_slist_free_1  g_slist_free_1;
c_g_slist_length  g_slist_length;
c_g_slist_copy  g_slist_copy;
c_g_slist_reverse  g_slist_reverse;
c_g_slist_insert_sorted_with_data  g_slist_insert_sorted_with_data;
c_g_slist_sort  g_slist_sort;
c_g_slist_sort_with_data  g_slist_sort_with_data;
c_g_slist_concat  g_slist_concat;
c_g_slist_foreach  g_slist_foreach;
c_g_slist_last  g_slist_last;
c_g_slist_nth  g_slist_nth;
c_g_slist_nth_data  g_slist_nth_data;
c_g_slist_find  g_slist_find;
c_g_slist_find_custom  g_slist_find_custom;
c_g_slist_position  g_slist_position;
c_g_slist_index  g_slist_index;
c_g_slist_push_allocator  g_slist_push_allocator;
c_g_slist_pop_allocator  g_slist_pop_allocator;

// glib.QueueG

c_g_queue_new  g_queue_new;
c_g_queue_free  g_queue_free;
c_g_queue_init  g_queue_init;
c_g_queue_clear  g_queue_clear;
c_g_queue_is_empty  g_queue_is_empty;
c_g_queue_get_length  g_queue_get_length;
c_g_queue_reverse  g_queue_reverse;
c_g_queue_copy  g_queue_copy;
c_g_queue_foreach  g_queue_foreach;
c_g_queue_find  g_queue_find;
c_g_queue_find_custom  g_queue_find_custom;
c_g_queue_sort  g_queue_sort;
c_g_queue_push_head  g_queue_push_head;
c_g_queue_push_tail  g_queue_push_tail;
c_g_queue_push_nth  g_queue_push_nth;
c_g_queue_pop_head  g_queue_pop_head;
c_g_queue_pop_tail  g_queue_pop_tail;
c_g_queue_pop_nth  g_queue_pop_nth;
c_g_queue_peek_head  g_queue_peek_head;
c_g_queue_peek_tail  g_queue_peek_tail;
c_g_queue_peek_nth  g_queue_peek_nth;
c_g_queue_index  g_queue_index;
c_g_queue_remove  g_queue_remove;
c_g_queue_remove_all  g_queue_remove_all;
c_g_queue_insert_before  g_queue_insert_before;
c_g_queue_insert_after  g_queue_insert_after;
c_g_queue_insert_sorted  g_queue_insert_sorted;
c_g_queue_push_head_link  g_queue_push_head_link;
c_g_queue_push_tail_link  g_queue_push_tail_link;
c_g_queue_push_nth_link  g_queue_push_nth_link;
c_g_queue_pop_head_link  g_queue_pop_head_link;
c_g_queue_pop_tail_link  g_queue_pop_tail_link;
c_g_queue_pop_nth_link  g_queue_pop_nth_link;
c_g_queue_peek_head_link  g_queue_peek_head_link;
c_g_queue_peek_tail_link  g_queue_peek_tail_link;
c_g_queue_peek_nth_link  g_queue_peek_nth_link;
c_g_queue_link_index  g_queue_link_index;
c_g_queue_unlink  g_queue_unlink;
c_g_queue_delete_link  g_queue_delete_link;

// glib.Sequence

c_g_sequence_new  g_sequence_new;
c_g_sequence_free  g_sequence_free;
c_g_sequence_get_length  g_sequence_get_length;
c_g_sequence_foreach  g_sequence_foreach;
c_g_sequence_foreach_range  g_sequence_foreach_range;
c_g_sequence_sort  g_sequence_sort;
c_g_sequence_sort_iter  g_sequence_sort_iter;
c_g_sequence_get_begin_iter  g_sequence_get_begin_iter;
c_g_sequence_get_end_iter  g_sequence_get_end_iter;
c_g_sequence_get_iter_at_pos  g_sequence_get_iter_at_pos;
c_g_sequence_append  g_sequence_append;
c_g_sequence_prepend  g_sequence_prepend;
c_g_sequence_insert_before  g_sequence_insert_before;
c_g_sequence_move  g_sequence_move;
c_g_sequence_swap  g_sequence_swap;
c_g_sequence_insert_sorted  g_sequence_insert_sorted;
c_g_sequence_insert_sorted_iter  g_sequence_insert_sorted_iter;
c_g_sequence_sort_changed  g_sequence_sort_changed;
c_g_sequence_sort_changed_iter  g_sequence_sort_changed_iter;
c_g_sequence_remove  g_sequence_remove;
c_g_sequence_remove_range  g_sequence_remove_range;
c_g_sequence_move_range  g_sequence_move_range;
c_g_sequence_search  g_sequence_search;
c_g_sequence_search_iter  g_sequence_search_iter;
c_g_sequence_get  g_sequence_get;
c_g_sequence_set  g_sequence_set;
c_g_sequence_range_get_midpoint  g_sequence_range_get_midpoint;

// glib.SequenceIter

c_g_sequence_iter_is_begin  g_sequence_iter_is_begin;
c_g_sequence_iter_is_end  g_sequence_iter_is_end;
c_g_sequence_iter_next  g_sequence_iter_next;
c_g_sequence_iter_prev  g_sequence_iter_prev;
c_g_sequence_iter_get_position  g_sequence_iter_get_position;
c_g_sequence_iter_move  g_sequence_iter_move;
c_g_sequence_iter_get_sequence  g_sequence_iter_get_sequence;
c_g_sequence_iter_compare  g_sequence_iter_compare;

// glib.TrashStack

c_g_trash_stack_push  g_trash_stack_push;
c_g_trash_stack_pop  g_trash_stack_pop;
c_g_trash_stack_peek  g_trash_stack_peek;
c_g_trash_stack_height  g_trash_stack_height;

// glib.HashTable

c_g_hash_table_new  g_hash_table_new;
c_g_hash_table_new_full  g_hash_table_new_full;
c_g_hash_table_insert  g_hash_table_insert;
c_g_hash_table_replace  g_hash_table_replace;
c_g_hash_table_size  g_hash_table_size;
c_g_hash_table_lookup  g_hash_table_lookup;
c_g_hash_table_lookup_extended  g_hash_table_lookup_extended;
c_g_hash_table_foreach  g_hash_table_foreach;
c_g_hash_table_find  g_hash_table_find;
c_g_hash_table_remove  g_hash_table_remove;
c_g_hash_table_steal  g_hash_table_steal;
c_g_hash_table_foreach_remove  g_hash_table_foreach_remove;
c_g_hash_table_foreach_steal  g_hash_table_foreach_steal;
c_g_hash_table_remove_all  g_hash_table_remove_all;
c_g_hash_table_steal_all  g_hash_table_steal_all;
c_g_hash_table_get_keys  g_hash_table_get_keys;
c_g_hash_table_get_values  g_hash_table_get_values;
c_g_hash_table_destroy  g_hash_table_destroy;
c_g_hash_table_ref  g_hash_table_ref;
c_g_hash_table_unref  g_hash_table_unref;
c_g_direct_equal  g_direct_equal;
c_g_direct_hash  g_direct_hash;
c_g_int_equal  g_int_equal;
c_g_int_hash  g_int_hash;
c_g_str_equal  g_str_equal;
c_g_str_hash  g_str_hash;

// glib.HashTableIter

c_g_hash_table_iter_init  g_hash_table_iter_init;
c_g_hash_table_iter_next  g_hash_table_iter_next;
c_g_hash_table_iter_get_hash_table  g_hash_table_iter_get_hash_table;
c_g_hash_table_iter_remove  g_hash_table_iter_remove;
c_g_hash_table_iter_steal  g_hash_table_iter_steal;

// glib.StringG

c_g_string_new  g_string_new;
c_g_string_new_len  g_string_new_len;
c_g_string_sized_new  g_string_sized_new;
c_g_string_assign  g_string_assign;
c_g_string_vprintf  g_string_vprintf;
c_g_string_append_vprintf  g_string_append_vprintf;
c_g_string_printf  g_string_printf;
c_g_string_append_printf  g_string_append_printf;
c_g_string_append  g_string_append;
c_g_string_append_c  g_string_append_c;
c_g_string_append_unichar  g_string_append_unichar;
c_g_string_append_len  g_string_append_len;
c_g_string_append_uri_escaped  g_string_append_uri_escaped;
c_g_string_prepend  g_string_prepend;
c_g_string_prepend_c  g_string_prepend_c;
c_g_string_prepend_unichar  g_string_prepend_unichar;
c_g_string_prepend_len  g_string_prepend_len;
c_g_string_insert  g_string_insert;
c_g_string_insert_c  g_string_insert_c;
c_g_string_insert_unichar  g_string_insert_unichar;
c_g_string_insert_len  g_string_insert_len;
c_g_string_overwrite  g_string_overwrite;
c_g_string_overwrite_len  g_string_overwrite_len;
c_g_string_erase  g_string_erase;
c_g_string_truncate  g_string_truncate;
c_g_string_set_size  g_string_set_size;
c_g_string_free  g_string_free;
c_g_string_up  g_string_up;
c_g_string_down  g_string_down;
c_g_string_hash  g_string_hash;
c_g_string_equal  g_string_equal;

// glib.StringGChunk

c_g_string_chunk_new  g_string_chunk_new;
c_g_string_chunk_insert  g_string_chunk_insert;
c_g_string_chunk_insert_const  g_string_chunk_insert_const;
c_g_string_chunk_insert_len  g_string_chunk_insert_len;
c_g_string_chunk_clear  g_string_chunk_clear;
c_g_string_chunk_free  g_string_chunk_free;

// glib.ArrayG

c_g_array_new  g_array_new;
c_g_array_sized_new  g_array_sized_new;
c_g_array_append_vals  g_array_append_vals;
c_g_array_prepend_vals  g_array_prepend_vals;
c_g_array_insert_vals  g_array_insert_vals;
c_g_array_remove_index  g_array_remove_index;
c_g_array_remove_index_fast  g_array_remove_index_fast;
c_g_array_remove_range  g_array_remove_range;
c_g_array_sort  g_array_sort;
c_g_array_sort_with_data  g_array_sort_with_data;
c_g_array_set_size  g_array_set_size;
c_g_array_free  g_array_free;

// glib.PtrArray

c_g_ptr_array_new  g_ptr_array_new;
c_g_ptr_array_sized_new  g_ptr_array_sized_new;
c_g_ptr_array_add  g_ptr_array_add;
c_g_ptr_array_remove  g_ptr_array_remove;
c_g_ptr_array_remove_index  g_ptr_array_remove_index;
c_g_ptr_array_remove_fast  g_ptr_array_remove_fast;
c_g_ptr_array_remove_index_fast  g_ptr_array_remove_index_fast;
c_g_ptr_array_remove_range  g_ptr_array_remove_range;
c_g_ptr_array_sort  g_ptr_array_sort;
c_g_ptr_array_sort_with_data  g_ptr_array_sort_with_data;
c_g_ptr_array_set_size  g_ptr_array_set_size;
c_g_ptr_array_free  g_ptr_array_free;
c_g_ptr_array_foreach  g_ptr_array_foreach;

// glib.ByteArray

c_g_byte_array_new  g_byte_array_new;
c_g_byte_array_sized_new  g_byte_array_sized_new;
c_g_byte_array_append  g_byte_array_append;
c_g_byte_array_prepend  g_byte_array_prepend;
c_g_byte_array_remove_index  g_byte_array_remove_index;
c_g_byte_array_remove_index_fast  g_byte_array_remove_index_fast;
c_g_byte_array_remove_range  g_byte_array_remove_range;
c_g_byte_array_sort  g_byte_array_sort;
c_g_byte_array_sort_with_data  g_byte_array_sort_with_data;
c_g_byte_array_set_size  g_byte_array_set_size;
c_g_byte_array_free  g_byte_array_free;

// glib.BBTree

c_g_tree_new  g_tree_new;
c_g_tree_new_with_data  g_tree_new_with_data;
c_g_tree_new_full  g_tree_new_full;
c_g_tree_insert  g_tree_insert;
c_g_tree_replace  g_tree_replace;
c_g_tree_nnodes  g_tree_nnodes;
c_g_tree_height  g_tree_height;
c_g_tree_lookup  g_tree_lookup;
c_g_tree_lookup_extended  g_tree_lookup_extended;
c_g_tree_foreach  g_tree_foreach;
c_g_tree_traverse  g_tree_traverse;
c_g_tree_search  g_tree_search;
c_g_tree_remove  g_tree_remove;
c_g_tree_steal  g_tree_steal;
c_g_tree_destroy  g_tree_destroy;

// glib.Node

c_g_node_new  g_node_new;
c_g_node_copy  g_node_copy;
c_g_node_copy_deep  g_node_copy_deep;
c_g_node_insert  g_node_insert;
c_g_node_insert_before  g_node_insert_before;
c_g_node_insert_after  g_node_insert_after;
c_g_node_prepend  g_node_prepend;
c_g_node_reverse_children  g_node_reverse_children;
c_g_node_traverse  g_node_traverse;
c_g_node_children_foreach  g_node_children_foreach;
c_g_node_get_root  g_node_get_root;
c_g_node_find  g_node_find;
c_g_node_find_child  g_node_find_child;
c_g_node_child_index  g_node_child_index;
c_g_node_child_position  g_node_child_position;
c_g_node_last_child  g_node_last_child;
c_g_node_nth_child  g_node_nth_child;
c_g_node_first_sibling  g_node_first_sibling;
c_g_node_last_sibling  g_node_last_sibling;
c_g_node_depth  g_node_depth;
c_g_node_n_nodes  g_node_n_nodes;
c_g_node_n_children  g_node_n_children;
c_g_node_is_ancestor  g_node_is_ancestor;
c_g_node_max_height  g_node_max_height;
c_g_node_unlink  g_node_unlink;
c_g_node_destroy  g_node_destroy;
c_g_node_push_allocator  g_node_push_allocator;
c_g_node_pop_allocator  g_node_pop_allocator;

// glib.Quark

c_g_quark_from_string  g_quark_from_string;
c_g_quark_from_static_string  g_quark_from_static_string;
c_g_quark_to_string  g_quark_to_string;
c_g_quark_try_string  g_quark_try_string;
c_g_intern_string  g_intern_string;
c_g_intern_static_string  g_intern_static_string;

// glib.DataList

c_g_datalist_init  g_datalist_init;
c_g_datalist_id_set_data_full  g_datalist_id_set_data_full;
c_g_datalist_id_get_data  g_datalist_id_get_data;
c_g_datalist_id_remove_no_notify  g_datalist_id_remove_no_notify;
c_g_datalist_foreach  g_datalist_foreach;
c_g_datalist_clear  g_datalist_clear;
c_g_datalist_set_flags  g_datalist_set_flags;
c_g_datalist_unset_flags  g_datalist_unset_flags;
c_g_datalist_get_flags  g_datalist_get_flags;

// glib.Dataset

c_g_dataset_id_set_data_full  g_dataset_id_set_data_full;
c_g_dataset_id_get_data  g_dataset_id_get_data;
c_g_dataset_id_remove_no_notify  g_dataset_id_remove_no_notify;
c_g_dataset_foreach  g_dataset_foreach;
c_g_dataset_destroy  g_dataset_destroy;

// glib.Relation

c_g_relation_new  g_relation_new;
c_g_relation_index  g_relation_index;
c_g_relation_insert  g_relation_insert;
c_g_relation_exists  g_relation_exists;
c_g_relation_count  g_relation_count;
c_g_relation_select  g_relation_select;
c_g_relation_delete  g_relation_delete;
c_g_relation_destroy  g_relation_destroy;
c_g_relation_print  g_relation_print;

// glib.Tuples

c_g_tuples_destroy  g_tuples_destroy;
c_g_tuples_index  g_tuples_index;

// glib.Cache

c_g_cache_new  g_cache_new;
c_g_cache_insert  g_cache_insert;
c_g_cache_remove  g_cache_remove;
c_g_cache_destroy  g_cache_destroy;
c_g_cache_key_foreach  g_cache_key_foreach;
c_g_cache_value_foreach  g_cache_value_foreach;

// glib.Allocator

c_g_allocator_new  g_allocator_new;
c_g_allocator_free  g_allocator_free;
