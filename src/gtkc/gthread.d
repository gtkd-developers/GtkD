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


module gtkc.gthread;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gthreadtypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// gthread.Thread

	Linker.link(g_thread_new, \"g_thread_new\", LIBRARY.GTHREAD);
	Linker.link(g_thread_try_new, \"g_thread_try_new\", LIBRARY.GTHREAD);
	Linker.link(g_thread_ref, \"g_thread_ref\", LIBRARY.GTHREAD);
	Linker.link(g_thread_unref, \"g_thread_unref\", LIBRARY.GTHREAD);
	Linker.link(g_thread_join, \"g_thread_join\", LIBRARY.GTHREAD);
	Linker.link(g_thread_yield, \"g_thread_yield\", LIBRARY.GTHREAD);
	Linker.link(g_thread_exit, \"g_thread_exit\", LIBRARY.GTHREAD);
	Linker.link(g_thread_self, \"g_thread_self\", LIBRARY.GTHREAD);
	Linker.link(g_bit_lock, \"g_bit_lock\", LIBRARY.GTHREAD);
	Linker.link(g_bit_trylock, \"g_bit_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_bit_unlock, \"g_bit_unlock\", LIBRARY.GTHREAD);
	Linker.link(g_pointer_bit_lock, \"g_pointer_bit_lock\", LIBRARY.GTHREAD);
	Linker.link(g_pointer_bit_trylock, \"g_pointer_bit_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_pointer_bit_unlock, \"g_pointer_bit_unlock\", LIBRARY.GTHREAD);

	// gthread.Mutex

	Linker.link(g_mutex_init, \"g_mutex_init\", LIBRARY.GTHREAD);
	Linker.link(g_mutex_clear, \"g_mutex_clear\", LIBRARY.GTHREAD);
	Linker.link(g_mutex_lock, \"g_mutex_lock\", LIBRARY.GTHREAD);
	Linker.link(g_mutex_trylock, \"g_mutex_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_mutex_unlock, \"g_mutex_unlock\", LIBRARY.GTHREAD);

	// gthread.RecMutex

	Linker.link(g_rec_mutex_init, \"g_rec_mutex_init\", LIBRARY.GTHREAD);
	Linker.link(g_rec_mutex_clear, \"g_rec_mutex_clear\", LIBRARY.GTHREAD);
	Linker.link(g_rec_mutex_lock, \"g_rec_mutex_lock\", LIBRARY.GTHREAD);
	Linker.link(g_rec_mutex_trylock, \"g_rec_mutex_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_rec_mutex_unlock, \"g_rec_mutex_unlock\", LIBRARY.GTHREAD);

	// gthread.RWLock

	Linker.link(g_rw_lock_init, \"g_rw_lock_init\", LIBRARY.GTHREAD);
	Linker.link(g_rw_lock_clear, \"g_rw_lock_clear\", LIBRARY.GTHREAD);
	Linker.link(g_rw_lock_writer_lock, \"g_rw_lock_writer_lock\", LIBRARY.GTHREAD);
	Linker.link(g_rw_lock_writer_trylock, \"g_rw_lock_writer_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_rw_lock_writer_unlock, \"g_rw_lock_writer_unlock\", LIBRARY.GTHREAD);
	Linker.link(g_rw_lock_reader_lock, \"g_rw_lock_reader_lock\", LIBRARY.GTHREAD);
	Linker.link(g_rw_lock_reader_trylock, \"g_rw_lock_reader_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_rw_lock_reader_unlock, \"g_rw_lock_reader_unlock\", LIBRARY.GTHREAD);

	// gthread.Cond

	Linker.link(g_cond_init, \"g_cond_init\", LIBRARY.GTHREAD);
	Linker.link(g_cond_clear, \"g_cond_clear\", LIBRARY.GTHREAD);
	Linker.link(g_cond_wait, \"g_cond_wait\", LIBRARY.GTHREAD);
	Linker.link(g_cond_timed_wait, \"g_cond_timed_wait\", LIBRARY.GTHREAD);
	Linker.link(g_cond_wait_until, \"g_cond_wait_until\", LIBRARY.GTHREAD);
	Linker.link(g_cond_signal, \"g_cond_signal\", LIBRARY.GTHREAD);
	Linker.link(g_cond_broadcast, \"g_cond_broadcast\", LIBRARY.GTHREAD);

	// gthread.Private

	Linker.link(g_private_get, \"g_private_get\", LIBRARY.GTHREAD);
	Linker.link(g_private_set, \"g_private_set\", LIBRARY.GTHREAD);
	Linker.link(g_private_replace, \"g_private_replace\", LIBRARY.GTHREAD);

	// gthread.Once

	Linker.link(g_once_init_enter, \"g_once_init_enter\", LIBRARY.GTHREAD);
	Linker.link(g_once_init_leave, \"g_once_init_leave\", LIBRARY.GTHREAD);
}");

mixin( gshared ~"extern(C)
{
	// gthread.Thread

	GThread* function(gchar* name, GThreadFunc func, void* data) c_g_thread_new;
	GThread* function(gchar* name, GThreadFunc func, void* data, GError** error) c_g_thread_try_new;
	GThread* function(GThread* thread) c_g_thread_ref;
	void function(GThread* thread) c_g_thread_unref;
	gpointer function(GThread* thread) c_g_thread_join;
	void function() c_g_thread_yield;
	void function(void* retval) c_g_thread_exit;
	GThread* function() c_g_thread_self;
	void function(gint* address, gint lockBit) c_g_bit_lock;
	gboolean function(gint* address, gint lockBit) c_g_bit_trylock;
	void function(gint* address, gint lockBit) c_g_bit_unlock;
	void function(void* address, gint lockBit) c_g_pointer_bit_lock;
	gboolean function(void* address, gint lockBit) c_g_pointer_bit_trylock;
	void function(void* address, gint lockBit) c_g_pointer_bit_unlock;

	// gthread.Mutex

	void function(GMutex* mutex) c_g_mutex_init;
	void function(GMutex* mutex) c_g_mutex_clear;
	void function(GMutex* mutex) c_g_mutex_lock;
	gboolean function(GMutex* mutex) c_g_mutex_trylock;
	void function(GMutex* mutex) c_g_mutex_unlock;

	// gthread.RecMutex

	void function(GRecMutex* recMutex) c_g_rec_mutex_init;
	void function(GRecMutex* recMutex) c_g_rec_mutex_clear;
	void function(GRecMutex* recMutex) c_g_rec_mutex_lock;
	gboolean function(GRecMutex* recMutex) c_g_rec_mutex_trylock;
	void function(GRecMutex* recMutex) c_g_rec_mutex_unlock;

	// gthread.RWLock

	void function(GRWLock* rwLock) c_g_rw_lock_init;
	void function(GRWLock* rwLock) c_g_rw_lock_clear;
	void function(GRWLock* rwLock) c_g_rw_lock_writer_lock;
	gboolean function(GRWLock* rwLock) c_g_rw_lock_writer_trylock;
	void function(GRWLock* rwLock) c_g_rw_lock_writer_unlock;
	void function(GRWLock* rwLock) c_g_rw_lock_reader_lock;
	gboolean function(GRWLock* rwLock) c_g_rw_lock_reader_trylock;
	void function(GRWLock* rwLock) c_g_rw_lock_reader_unlock;

	// gthread.Cond

	void function(GCond* cond) c_g_cond_init;
	void function(GCond* cond) c_g_cond_clear;
	void function(GCond* cond, GMutex* mutex) c_g_cond_wait;
	gboolean function(GCond* cond, GMutex* mutex, GTimeVal* absTime) c_g_cond_timed_wait;
	gboolean function(GCond* cond, GMutex* mutex, gint64 endTime) c_g_cond_wait_until;
	void function(GCond* cond) c_g_cond_signal;
	void function(GCond* cond) c_g_cond_broadcast;

	// gthread.Private

	gpointer function(GPrivate* key) c_g_private_get;
	void function(GPrivate* key, void* value) c_g_private_set;
	void function(GPrivate* key, void* value) c_g_private_replace;

	// gthread.Once

	gboolean function(void* location) c_g_once_init_enter;
	void function(void* location, gsize result) c_g_once_init_leave;
}");

// gthread.Thread

alias c_g_thread_new  g_thread_new;
alias c_g_thread_try_new  g_thread_try_new;
alias c_g_thread_ref  g_thread_ref;
alias c_g_thread_unref  g_thread_unref;
alias c_g_thread_join  g_thread_join;
alias c_g_thread_yield  g_thread_yield;
alias c_g_thread_exit  g_thread_exit;
alias c_g_thread_self  g_thread_self;
alias c_g_bit_lock  g_bit_lock;
alias c_g_bit_trylock  g_bit_trylock;
alias c_g_bit_unlock  g_bit_unlock;
alias c_g_pointer_bit_lock  g_pointer_bit_lock;
alias c_g_pointer_bit_trylock  g_pointer_bit_trylock;
alias c_g_pointer_bit_unlock  g_pointer_bit_unlock;

// gthread.Mutex

alias c_g_mutex_init  g_mutex_init;
alias c_g_mutex_clear  g_mutex_clear;
alias c_g_mutex_lock  g_mutex_lock;
alias c_g_mutex_trylock  g_mutex_trylock;
alias c_g_mutex_unlock  g_mutex_unlock;

// gthread.RecMutex

alias c_g_rec_mutex_init  g_rec_mutex_init;
alias c_g_rec_mutex_clear  g_rec_mutex_clear;
alias c_g_rec_mutex_lock  g_rec_mutex_lock;
alias c_g_rec_mutex_trylock  g_rec_mutex_trylock;
alias c_g_rec_mutex_unlock  g_rec_mutex_unlock;

// gthread.RWLock

alias c_g_rw_lock_init  g_rw_lock_init;
alias c_g_rw_lock_clear  g_rw_lock_clear;
alias c_g_rw_lock_writer_lock  g_rw_lock_writer_lock;
alias c_g_rw_lock_writer_trylock  g_rw_lock_writer_trylock;
alias c_g_rw_lock_writer_unlock  g_rw_lock_writer_unlock;
alias c_g_rw_lock_reader_lock  g_rw_lock_reader_lock;
alias c_g_rw_lock_reader_trylock  g_rw_lock_reader_trylock;
alias c_g_rw_lock_reader_unlock  g_rw_lock_reader_unlock;

// gthread.Cond

alias c_g_cond_init  g_cond_init;
alias c_g_cond_clear  g_cond_clear;
alias c_g_cond_wait  g_cond_wait;
alias c_g_cond_timed_wait  g_cond_timed_wait;
alias c_g_cond_wait_until  g_cond_wait_until;
alias c_g_cond_signal  g_cond_signal;
alias c_g_cond_broadcast  g_cond_broadcast;

// gthread.Private

alias c_g_private_get  g_private_get;
alias c_g_private_set  g_private_set;
alias c_g_private_replace  g_private_replace;

// gthread.Once

alias c_g_once_init_enter  g_once_init_enter;
alias c_g_once_init_leave  g_once_init_leave;
