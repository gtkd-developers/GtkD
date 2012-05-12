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
	// gthread.Mutex

	Linker.link(g_mutex_new, \"g_mutex_new\", LIBRARY.GTHREAD);
	Linker.link(g_mutex_lock, \"g_mutex_lock\", LIBRARY.GTHREAD);
	Linker.link(g_mutex_trylock, \"g_mutex_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_mutex_unlock, \"g_mutex_unlock\", LIBRARY.GTHREAD);
	Linker.link(g_mutex_free, \"g_mutex_free\", LIBRARY.GTHREAD);

	// gthread.StaticMutex

	Linker.link(g_static_mutex_init, \"g_static_mutex_init\", LIBRARY.GTHREAD);
	Linker.link(g_static_mutex_lock, \"g_static_mutex_lock\", LIBRARY.GTHREAD);
	Linker.link(g_static_mutex_trylock, \"g_static_mutex_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_static_mutex_unlock, \"g_static_mutex_unlock\", LIBRARY.GTHREAD);
	Linker.link(g_static_mutex_get_mutex, \"g_static_mutex_get_mutex\", LIBRARY.GTHREAD);
	Linker.link(g_static_mutex_free, \"g_static_mutex_free\", LIBRARY.GTHREAD);

	// gthread.StaticRecMutex

	Linker.link(g_static_rec_mutex_init, \"g_static_rec_mutex_init\", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_lock, \"g_static_rec_mutex_lock\", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_trylock, \"g_static_rec_mutex_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_unlock, \"g_static_rec_mutex_unlock\", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_lock_full, \"g_static_rec_mutex_lock_full\", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_unlock_full, \"g_static_rec_mutex_unlock_full\", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_free, \"g_static_rec_mutex_free\", LIBRARY.GTHREAD);

	// gthread.RWLock

	Linker.link(g_static_rw_lock_init, \"g_static_rw_lock_init\", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_reader_lock, \"g_static_rw_lock_reader_lock\", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_reader_trylock, \"g_static_rw_lock_reader_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_reader_unlock, \"g_static_rw_lock_reader_unlock\", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_writer_lock, \"g_static_rw_lock_writer_lock\", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_writer_trylock, \"g_static_rw_lock_writer_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_writer_unlock, \"g_static_rw_lock_writer_unlock\", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_free, \"g_static_rw_lock_free\", LIBRARY.GTHREAD);

	// gthread.Cond

	Linker.link(g_cond_new, \"g_cond_new\", LIBRARY.GTHREAD);
	Linker.link(g_cond_signal, \"g_cond_signal\", LIBRARY.GTHREAD);
	Linker.link(g_cond_broadcast, \"g_cond_broadcast\", LIBRARY.GTHREAD);
	Linker.link(g_cond_wait, \"g_cond_wait\", LIBRARY.GTHREAD);
	Linker.link(g_cond_timed_wait, \"g_cond_timed_wait\", LIBRARY.GTHREAD);
	Linker.link(g_cond_free, \"g_cond_free\", LIBRARY.GTHREAD);

	// gthread.Private

	Linker.link(g_private_new, \"g_private_new\", LIBRARY.GTHREAD);
	Linker.link(g_private_get, \"g_private_get\", LIBRARY.GTHREAD);
	Linker.link(g_private_set, \"g_private_set\", LIBRARY.GTHREAD);

	// gthread.StaticPrivate

	Linker.link(g_static_private_init, \"g_static_private_init\", LIBRARY.GTHREAD);
	Linker.link(g_static_private_get, \"g_static_private_get\", LIBRARY.GTHREAD);
	Linker.link(g_static_private_set, \"g_static_private_set\", LIBRARY.GTHREAD);
	Linker.link(g_static_private_free, \"g_static_private_free\", LIBRARY.GTHREAD);

	// gthread.Thread

	Linker.link(g_thread_init, \"g_thread_init\", LIBRARY.GTHREAD);
	Linker.link(g_thread_supported, \"g_thread_supported\", LIBRARY.GTHREAD);
	Linker.link(g_thread_get_initialized, \"g_thread_get_initialized\", LIBRARY.GTHREAD);
	Linker.link(g_thread_create, \"g_thread_create\", LIBRARY.GTHREAD);
	Linker.link(g_thread_create_full, \"g_thread_create_full\", LIBRARY.GTHREAD);
	Linker.link(g_thread_self, \"g_thread_self\", LIBRARY.GTHREAD);
	Linker.link(g_thread_join, \"g_thread_join\", LIBRARY.GTHREAD);
	Linker.link(g_thread_set_priority, \"g_thread_set_priority\", LIBRARY.GTHREAD);
	Linker.link(g_thread_yield, \"g_thread_yield\", LIBRARY.GTHREAD);
	Linker.link(g_thread_exit, \"g_thread_exit\", LIBRARY.GTHREAD);
	Linker.link(g_thread_foreach, \"g_thread_foreach\", LIBRARY.GTHREAD);
	Linker.link(g_once_init_enter, \"g_once_init_enter\", LIBRARY.GTHREAD);
	Linker.link(g_once_init_leave, \"g_once_init_leave\", LIBRARY.GTHREAD);
	Linker.link(g_bit_lock, \"g_bit_lock\", LIBRARY.GTHREAD);
	Linker.link(g_bit_trylock, \"g_bit_trylock\", LIBRARY.GTHREAD);
	Linker.link(g_bit_unlock, \"g_bit_unlock\", LIBRARY.GTHREAD);
}");

mixin( gshared ~"extern(C)
{
	// gthread.Mutex

	GMutex* function() c_g_mutex_new;
	void function(GMutex* mutex) c_g_mutex_lock;
	gboolean function(GMutex* mutex) c_g_mutex_trylock;
	void function(GMutex* mutex) c_g_mutex_unlock;
	void function(GMutex* mutex) c_g_mutex_free;

	// gthread.StaticMutex

	void function(GStaticMutex* mutex) c_g_static_mutex_init;
	void function(GStaticMutex* mutex) c_g_static_mutex_lock;
	gboolean function(GStaticMutex* mutex) c_g_static_mutex_trylock;
	void function(GStaticMutex* mutex) c_g_static_mutex_unlock;
	GMutex* function(GStaticMutex* mutex) c_g_static_mutex_get_mutex;
	void function(GStaticMutex* mutex) c_g_static_mutex_free;

	// gthread.StaticRecMutex

	void function(GStaticRecMutex* mutex) c_g_static_rec_mutex_init;
	void function(GStaticRecMutex* mutex) c_g_static_rec_mutex_lock;
	gboolean function(GStaticRecMutex* mutex) c_g_static_rec_mutex_trylock;
	void function(GStaticRecMutex* mutex) c_g_static_rec_mutex_unlock;
	void function(GStaticRecMutex* mutex, guint depth) c_g_static_rec_mutex_lock_full;
	guint function(GStaticRecMutex* mutex) c_g_static_rec_mutex_unlock_full;
	void function(GStaticRecMutex* mutex) c_g_static_rec_mutex_free;

	// gthread.RWLock

	void function(GStaticRWLock* lock) c_g_static_rw_lock_init;
	void function(GStaticRWLock* lock) c_g_static_rw_lock_reader_lock;
	gboolean function(GStaticRWLock* lock) c_g_static_rw_lock_reader_trylock;
	void function(GStaticRWLock* lock) c_g_static_rw_lock_reader_unlock;
	void function(GStaticRWLock* lock) c_g_static_rw_lock_writer_lock;
	gboolean function(GStaticRWLock* lock) c_g_static_rw_lock_writer_trylock;
	void function(GStaticRWLock* lock) c_g_static_rw_lock_writer_unlock;
	void function(GStaticRWLock* lock) c_g_static_rw_lock_free;

	// gthread.Cond

	GCond* function() c_g_cond_new;
	void function(GCond* cond) c_g_cond_signal;
	void function(GCond* cond) c_g_cond_broadcast;
	void function(GCond* cond, GMutex* mutex) c_g_cond_wait;
	gboolean function(GCond* cond, GMutex* mutex, GTimeVal* absTime) c_g_cond_timed_wait;
	void function(GCond* cond) c_g_cond_free;

	// gthread.Private

	GPrivate* function(GDestroyNotify destructor) c_g_private_new;
	gpointer function(GPrivate* privateKey) c_g_private_get;
	void function(GPrivate* privateKey, gpointer data) c_g_private_set;

	// gthread.StaticPrivate

	void function(GStaticPrivate* privateKey) c_g_static_private_init;
	gpointer function(GStaticPrivate* privateKey) c_g_static_private_get;
	void function(GStaticPrivate* privateKey, gpointer data, GDestroyNotify notify) c_g_static_private_set;
	void function(GStaticPrivate* privateKey) c_g_static_private_free;

	// gthread.Thread

	void function(GThreadFunctions* vtable) c_g_thread_init;
	gboolean function() c_g_thread_supported;
	gboolean function() c_g_thread_get_initialized;
	GThread* function(GThreadFunc func, gpointer data, gboolean joinable, GError** error) c_g_thread_create;
	GThread* function(GThreadFunc func, gpointer data, gulong stackSize, gboolean joinable, gboolean bound, GThreadPriority priority, GError** error) c_g_thread_create_full;
	GThread* function() c_g_thread_self;
	gpointer function(GThread* thread) c_g_thread_join;
	void function(GThread* thread, GThreadPriority priority) c_g_thread_set_priority;
	void function() c_g_thread_yield;
	void function(gpointer retval) c_g_thread_exit;
	void function(GFunc threadFunc, gpointer userData) c_g_thread_foreach;
	gboolean function(gsize* valueLocation) c_g_once_init_enter;
	void function(gsize* valueLocation, gsize initializationValue) c_g_once_init_leave;
	void function(gint* address, gint lockBit) c_g_bit_lock;
	gboolean function(gint* address, gint lockBit) c_g_bit_trylock;
	void function(gint* address, gint lockBit) c_g_bit_unlock;
}");

// gthread.Mutex

alias c_g_mutex_new  g_mutex_new;
alias c_g_mutex_lock  g_mutex_lock;
alias c_g_mutex_trylock  g_mutex_trylock;
alias c_g_mutex_unlock  g_mutex_unlock;
alias c_g_mutex_free  g_mutex_free;

// gthread.StaticMutex

alias c_g_static_mutex_init  g_static_mutex_init;
alias c_g_static_mutex_lock  g_static_mutex_lock;
alias c_g_static_mutex_trylock  g_static_mutex_trylock;
alias c_g_static_mutex_unlock  g_static_mutex_unlock;
alias c_g_static_mutex_get_mutex  g_static_mutex_get_mutex;
alias c_g_static_mutex_free  g_static_mutex_free;

// gthread.StaticRecMutex

alias c_g_static_rec_mutex_init  g_static_rec_mutex_init;
alias c_g_static_rec_mutex_lock  g_static_rec_mutex_lock;
alias c_g_static_rec_mutex_trylock  g_static_rec_mutex_trylock;
alias c_g_static_rec_mutex_unlock  g_static_rec_mutex_unlock;
alias c_g_static_rec_mutex_lock_full  g_static_rec_mutex_lock_full;
alias c_g_static_rec_mutex_unlock_full  g_static_rec_mutex_unlock_full;
alias c_g_static_rec_mutex_free  g_static_rec_mutex_free;

// gthread.RWLock

alias c_g_static_rw_lock_init  g_static_rw_lock_init;
alias c_g_static_rw_lock_reader_lock  g_static_rw_lock_reader_lock;
alias c_g_static_rw_lock_reader_trylock  g_static_rw_lock_reader_trylock;
alias c_g_static_rw_lock_reader_unlock  g_static_rw_lock_reader_unlock;
alias c_g_static_rw_lock_writer_lock  g_static_rw_lock_writer_lock;
alias c_g_static_rw_lock_writer_trylock  g_static_rw_lock_writer_trylock;
alias c_g_static_rw_lock_writer_unlock  g_static_rw_lock_writer_unlock;
alias c_g_static_rw_lock_free  g_static_rw_lock_free;

// gthread.Cond

alias c_g_cond_new  g_cond_new;
alias c_g_cond_signal  g_cond_signal;
alias c_g_cond_broadcast  g_cond_broadcast;
alias c_g_cond_wait  g_cond_wait;
alias c_g_cond_timed_wait  g_cond_timed_wait;
alias c_g_cond_free  g_cond_free;

// gthread.Private

alias c_g_private_new  g_private_new;
alias c_g_private_get  g_private_get;
alias c_g_private_set  g_private_set;

// gthread.StaticPrivate

alias c_g_static_private_init  g_static_private_init;
alias c_g_static_private_get  g_static_private_get;
alias c_g_static_private_set  g_static_private_set;
alias c_g_static_private_free  g_static_private_free;

// gthread.Thread

alias c_g_thread_init  g_thread_init;
alias c_g_thread_supported  g_thread_supported;
alias c_g_thread_get_initialized  g_thread_get_initialized;
alias c_g_thread_create  g_thread_create;
alias c_g_thread_create_full  g_thread_create_full;
alias c_g_thread_self  g_thread_self;
alias c_g_thread_join  g_thread_join;
alias c_g_thread_set_priority  g_thread_set_priority;
alias c_g_thread_yield  g_thread_yield;
alias c_g_thread_exit  g_thread_exit;
alias c_g_thread_foreach  g_thread_foreach;
alias c_g_once_init_enter  g_once_init_enter;
alias c_g_once_init_leave  g_once_init_leave;
alias c_g_bit_lock  g_bit_lock;
alias c_g_bit_trylock  g_bit_trylock;
alias c_g_bit_unlock  g_bit_unlock;
