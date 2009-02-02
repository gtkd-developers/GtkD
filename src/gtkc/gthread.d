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


module gtkc.gthread;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gthreadtypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// gthread.Mutex

	Linker.link(g_mutex_new, "g_mutex_new", LIBRARY.GTHREAD);
	Linker.link(g_mutex_lock, "g_mutex_lock", LIBRARY.GTHREAD);
	Linker.link(g_mutex_trylock, "g_mutex_trylock", LIBRARY.GTHREAD);
	Linker.link(g_mutex_unlock, "g_mutex_unlock", LIBRARY.GTHREAD);
	Linker.link(g_mutex_free, "g_mutex_free", LIBRARY.GTHREAD);

	// gthread.StaticMutex

	Linker.link(g_static_mutex_init, "g_static_mutex_init", LIBRARY.GTHREAD);
	Linker.link(g_static_mutex_lock, "g_static_mutex_lock", LIBRARY.GTHREAD);
	Linker.link(g_static_mutex_trylock, "g_static_mutex_trylock", LIBRARY.GTHREAD);
	Linker.link(g_static_mutex_unlock, "g_static_mutex_unlock", LIBRARY.GTHREAD);
	Linker.link(g_static_mutex_get_mutex, "g_static_mutex_get_mutex", LIBRARY.GTHREAD);
	Linker.link(g_static_mutex_free, "g_static_mutex_free", LIBRARY.GTHREAD);

	// gthread.StaticRecMutex

	Linker.link(g_static_rec_mutex_init, "g_static_rec_mutex_init", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_lock, "g_static_rec_mutex_lock", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_trylock, "g_static_rec_mutex_trylock", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_unlock, "g_static_rec_mutex_unlock", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_lock_full, "g_static_rec_mutex_lock_full", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_unlock_full, "g_static_rec_mutex_unlock_full", LIBRARY.GTHREAD);
	Linker.link(g_static_rec_mutex_free, "g_static_rec_mutex_free", LIBRARY.GTHREAD);

	// gthread.RWLock

	Linker.link(g_static_rw_lock_init, "g_static_rw_lock_init", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_reader_lock, "g_static_rw_lock_reader_lock", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_reader_trylock, "g_static_rw_lock_reader_trylock", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_reader_unlock, "g_static_rw_lock_reader_unlock", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_writer_lock, "g_static_rw_lock_writer_lock", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_writer_trylock, "g_static_rw_lock_writer_trylock", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_writer_unlock, "g_static_rw_lock_writer_unlock", LIBRARY.GTHREAD);
	Linker.link(g_static_rw_lock_free, "g_static_rw_lock_free", LIBRARY.GTHREAD);

	// gthread.Cond

	Linker.link(g_cond_new, "g_cond_new", LIBRARY.GTHREAD);
	Linker.link(g_cond_signal, "g_cond_signal", LIBRARY.GTHREAD);
	Linker.link(g_cond_broadcast, "g_cond_broadcast", LIBRARY.GTHREAD);
	Linker.link(g_cond_wait, "g_cond_wait", LIBRARY.GTHREAD);
	Linker.link(g_cond_timed_wait, "g_cond_timed_wait", LIBRARY.GTHREAD);
	Linker.link(g_cond_free, "g_cond_free", LIBRARY.GTHREAD);

	// gthread.Private

	Linker.link(g_private_new, "g_private_new", LIBRARY.GTHREAD);
	Linker.link(g_private_get, "g_private_get", LIBRARY.GTHREAD);
	Linker.link(g_private_set, "g_private_set", LIBRARY.GTHREAD);

	// gthread.StaticPrivate

	Linker.link(g_static_private_init, "g_static_private_init", LIBRARY.GTHREAD);
	Linker.link(g_static_private_get, "g_static_private_get", LIBRARY.GTHREAD);
	Linker.link(g_static_private_set, "g_static_private_set", LIBRARY.GTHREAD);
	Linker.link(g_static_private_free, "g_static_private_free", LIBRARY.GTHREAD);

	// gthread.Thread

	Linker.link(g_thread_init, "g_thread_init", LIBRARY.GTHREAD);
	Linker.link(g_thread_supported, "g_thread_supported", LIBRARY.GTHREAD);
	Linker.link(g_thread_create, "g_thread_create", LIBRARY.GTHREAD);
	Linker.link(g_thread_create_full, "g_thread_create_full", LIBRARY.GTHREAD);
	Linker.link(g_thread_self, "g_thread_self", LIBRARY.GTHREAD);
	Linker.link(g_thread_join, "g_thread_join", LIBRARY.GTHREAD);
	Linker.link(g_thread_set_priority, "g_thread_set_priority", LIBRARY.GTHREAD);
	Linker.link(g_thread_yield, "g_thread_yield", LIBRARY.GTHREAD);
	Linker.link(g_thread_exit, "g_thread_exit", LIBRARY.GTHREAD);
	Linker.link(g_thread_foreach, "g_thread_foreach", LIBRARY.GTHREAD);
	Linker.link(g_once_init_enter, "g_once_init_enter", LIBRARY.GTHREAD);
	Linker.link(g_once_init_leave, "g_once_init_leave", LIBRARY.GTHREAD);
}

extern(C)
{
	
	// gthread.Mutex
	
	typedef GMutex* function() c_g_mutex_new;
	typedef void function(GMutex* mutex) c_g_mutex_lock;
	typedef gboolean function(GMutex* mutex) c_g_mutex_trylock;
	typedef void function(GMutex* mutex) c_g_mutex_unlock;
	typedef void function(GMutex* mutex) c_g_mutex_free;
	
	// gthread.StaticMutex
	
	typedef void function(GStaticMutex* mutex) c_g_static_mutex_init;
	typedef void function(GStaticMutex* mutex) c_g_static_mutex_lock;
	typedef gboolean function(GStaticMutex* mutex) c_g_static_mutex_trylock;
	typedef void function(GStaticMutex* mutex) c_g_static_mutex_unlock;
	typedef GMutex* function(GStaticMutex* mutex) c_g_static_mutex_get_mutex;
	typedef void function(GStaticMutex* mutex) c_g_static_mutex_free;
	
	// gthread.StaticRecMutex
	
	typedef void function(GStaticRecMutex* mutex) c_g_static_rec_mutex_init;
	typedef void function(GStaticRecMutex* mutex) c_g_static_rec_mutex_lock;
	typedef gboolean function(GStaticRecMutex* mutex) c_g_static_rec_mutex_trylock;
	typedef void function(GStaticRecMutex* mutex) c_g_static_rec_mutex_unlock;
	typedef void function(GStaticRecMutex* mutex, guint depth) c_g_static_rec_mutex_lock_full;
	typedef guint function(GStaticRecMutex* mutex) c_g_static_rec_mutex_unlock_full;
	typedef void function(GStaticRecMutex* mutex) c_g_static_rec_mutex_free;
	
	// gthread.RWLock
	
	typedef void function(GStaticRWLock* lock) c_g_static_rw_lock_init;
	typedef void function(GStaticRWLock* lock) c_g_static_rw_lock_reader_lock;
	typedef gboolean function(GStaticRWLock* lock) c_g_static_rw_lock_reader_trylock;
	typedef void function(GStaticRWLock* lock) c_g_static_rw_lock_reader_unlock;
	typedef void function(GStaticRWLock* lock) c_g_static_rw_lock_writer_lock;
	typedef gboolean function(GStaticRWLock* lock) c_g_static_rw_lock_writer_trylock;
	typedef void function(GStaticRWLock* lock) c_g_static_rw_lock_writer_unlock;
	typedef void function(GStaticRWLock* lock) c_g_static_rw_lock_free;
	
	// gthread.Cond
	
	typedef GCond* function() c_g_cond_new;
	typedef void function(GCond* cond) c_g_cond_signal;
	typedef void function(GCond* cond) c_g_cond_broadcast;
	typedef void function(GCond* cond, GMutex* mutex) c_g_cond_wait;
	typedef gboolean function(GCond* cond, GMutex* mutex, GTimeVal* absTime) c_g_cond_timed_wait;
	typedef void function(GCond* cond) c_g_cond_free;
	
	// gthread.Private
	
	typedef GPrivate* function(GDestroyNotify destructor) c_g_private_new;
	typedef gpointer function(GPrivate* privateKey) c_g_private_get;
	typedef void function(GPrivate* privateKey, gpointer data) c_g_private_set;
	
	// gthread.StaticPrivate
	
	typedef void function(GStaticPrivate* privateKey) c_g_static_private_init;
	typedef gpointer function(GStaticPrivate* privateKey) c_g_static_private_get;
	typedef void function(GStaticPrivate* privateKey, gpointer data, GDestroyNotify notify) c_g_static_private_set;
	typedef void function(GStaticPrivate* privateKey) c_g_static_private_free;
	
	// gthread.Thread
	
	typedef void function(GThreadFunctions* vtable) c_g_thread_init;
	typedef gboolean function() c_g_thread_supported;
	typedef GThread* function(GThreadFunc func, gpointer data, gboolean joinable, GError** error) c_g_thread_create;
	typedef GThread* function(GThreadFunc func, gpointer data, gulong stackSize, gboolean joinable, gboolean bound, GThreadPriority priority, GError** error) c_g_thread_create_full;
	typedef GThread* function() c_g_thread_self;
	typedef gpointer function(GThread* thread) c_g_thread_join;
	typedef void function(GThread* thread, GThreadPriority priority) c_g_thread_set_priority;
	typedef void function() c_g_thread_yield;
	typedef void function(gpointer retval) c_g_thread_exit;
	typedef void function(GFunc threadFunc, gpointer userData) c_g_thread_foreach;
	typedef gboolean function(gsize* valueLocation) c_g_once_init_enter;
	typedef void function(gsize* valueLocation, gsize initializationValue) c_g_once_init_leave;
}

// gthread.Mutex

c_g_mutex_new  g_mutex_new;
c_g_mutex_lock  g_mutex_lock;
c_g_mutex_trylock  g_mutex_trylock;
c_g_mutex_unlock  g_mutex_unlock;
c_g_mutex_free  g_mutex_free;

// gthread.StaticMutex

c_g_static_mutex_init  g_static_mutex_init;
c_g_static_mutex_lock  g_static_mutex_lock;
c_g_static_mutex_trylock  g_static_mutex_trylock;
c_g_static_mutex_unlock  g_static_mutex_unlock;
c_g_static_mutex_get_mutex  g_static_mutex_get_mutex;
c_g_static_mutex_free  g_static_mutex_free;

// gthread.StaticRecMutex

c_g_static_rec_mutex_init  g_static_rec_mutex_init;
c_g_static_rec_mutex_lock  g_static_rec_mutex_lock;
c_g_static_rec_mutex_trylock  g_static_rec_mutex_trylock;
c_g_static_rec_mutex_unlock  g_static_rec_mutex_unlock;
c_g_static_rec_mutex_lock_full  g_static_rec_mutex_lock_full;
c_g_static_rec_mutex_unlock_full  g_static_rec_mutex_unlock_full;
c_g_static_rec_mutex_free  g_static_rec_mutex_free;

// gthread.RWLock

c_g_static_rw_lock_init  g_static_rw_lock_init;
c_g_static_rw_lock_reader_lock  g_static_rw_lock_reader_lock;
c_g_static_rw_lock_reader_trylock  g_static_rw_lock_reader_trylock;
c_g_static_rw_lock_reader_unlock  g_static_rw_lock_reader_unlock;
c_g_static_rw_lock_writer_lock  g_static_rw_lock_writer_lock;
c_g_static_rw_lock_writer_trylock  g_static_rw_lock_writer_trylock;
c_g_static_rw_lock_writer_unlock  g_static_rw_lock_writer_unlock;
c_g_static_rw_lock_free  g_static_rw_lock_free;

// gthread.Cond

c_g_cond_new  g_cond_new;
c_g_cond_signal  g_cond_signal;
c_g_cond_broadcast  g_cond_broadcast;
c_g_cond_wait  g_cond_wait;
c_g_cond_timed_wait  g_cond_timed_wait;
c_g_cond_free  g_cond_free;

// gthread.Private

c_g_private_new  g_private_new;
c_g_private_get  g_private_get;
c_g_private_set  g_private_set;

// gthread.StaticPrivate

c_g_static_private_init  g_static_private_init;
c_g_static_private_get  g_static_private_get;
c_g_static_private_set  g_static_private_set;
c_g_static_private_free  g_static_private_free;

// gthread.Thread

c_g_thread_init  g_thread_init;
c_g_thread_supported  g_thread_supported;
c_g_thread_create  g_thread_create;
c_g_thread_create_full  g_thread_create_full;
c_g_thread_self  g_thread_self;
c_g_thread_join  g_thread_join;
c_g_thread_set_priority  g_thread_set_priority;
c_g_thread_yield  g_thread_yield;
c_g_thread_exit  g_thread_exit;
c_g_thread_foreach  g_thread_foreach;
c_g_once_init_enter  g_once_init_enter;
c_g_once_init_leave  g_once_init_leave;
