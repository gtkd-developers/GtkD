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


module gtkc.gthread;

version(Tango)
{
	private import tango.stdc.stdio;
	debug private import tango.io.Stdout;
}
else
	private import std.stdio;

private import gtkc.gthreadtypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker gthread_Linker;

static this()
{
 gthread_Linker = new Linker(libPath ~ importLibs[LIBRARY.GTHREAD] );
 gthread_Linker.link(gthreadLinks);

 debug
 {
 	version(Tango) Stdout("* Finished static this(): gthread").newline;
 	else writefln("* Finished static this(): gthread");
 }
}

static ~this()
{
 delete gthread_Linker;

 debug
 {
 	version(Tango) Stdout("* Finished static ~this(): gthread").newline;
 	else writefln("* Finished static ~this(): gthread");
 }
}

extern(C) 
{	
	// gthread.Mutex
	
	GMutex* function()g_mutex_new;
	void function(GMutex* mutex)g_mutex_lock;
	gboolean function(GMutex* mutex)g_mutex_trylock;
	void function(GMutex* mutex)g_mutex_unlock;
	void function(GMutex* mutex)g_mutex_free;
	
	// gthread.StaticMutex
	
	void function(GStaticMutex* mutex)g_static_mutex_init;
	void function(GStaticMutex* mutex)g_static_mutex_lock;
	gboolean function(GStaticMutex* mutex)g_static_mutex_trylock;
	void function(GStaticMutex* mutex)g_static_mutex_unlock;
	GMutex* function(GStaticMutex* mutex)g_static_mutex_get_mutex;
	void function(GStaticMutex* mutex)g_static_mutex_free;
	
	// gthread.StaticRecMutex
	
	void function(GStaticRecMutex* mutex)g_static_rec_mutex_init;
	void function(GStaticRecMutex* mutex)g_static_rec_mutex_lock;
	gboolean function(GStaticRecMutex* mutex)g_static_rec_mutex_trylock;
	void function(GStaticRecMutex* mutex)g_static_rec_mutex_unlock;
	void function(GStaticRecMutex* mutex, guint depth)g_static_rec_mutex_lock_full;
	guint function(GStaticRecMutex* mutex)g_static_rec_mutex_unlock_full;
	void function(GStaticRecMutex* mutex)g_static_rec_mutex_free;
	
	// gthread.RWLock
	
	void function(GStaticRWLock* lock)g_static_rw_lock_init;
	void function(GStaticRWLock* lock)g_static_rw_lock_reader_lock;
	gboolean function(GStaticRWLock* lock)g_static_rw_lock_reader_trylock;
	void function(GStaticRWLock* lock)g_static_rw_lock_reader_unlock;
	void function(GStaticRWLock* lock)g_static_rw_lock_writer_lock;
	gboolean function(GStaticRWLock* lock)g_static_rw_lock_writer_trylock;
	void function(GStaticRWLock* lock)g_static_rw_lock_writer_unlock;
	void function(GStaticRWLock* lock)g_static_rw_lock_free;
	
	// gthread.Cond
	
	GCond* function()g_cond_new;
	void function(GCond* cond)g_cond_signal;
	void function(GCond* cond)g_cond_broadcast;
	void function(GCond* cond, GMutex* mutex)g_cond_wait;
	gboolean function(GCond* cond, GMutex* mutex, GTimeVal* absTime)g_cond_timed_wait;
	void function(GCond* cond)g_cond_free;
	
	// gthread.Private
	
	GPrivate* function(GDestroyNotify destructor)g_private_new;
	gpointer function(GPrivate* privateKey)g_private_get;
	void function(GPrivate* privateKey, gpointer data)g_private_set;
	
	// gthread.StaticPrivate
	
	void function(GStaticPrivate* privateKey)g_static_private_init;
	gpointer function(GStaticPrivate* privateKey)g_static_private_get;
	void function(GStaticPrivate* privateKey, gpointer data, GDestroyNotify notify)g_static_private_set;
	void function(GStaticPrivate* privateKey)g_static_private_free;
	
	// gthread.Thread
	
	void function(GThreadFunctions* vtable)g_thread_init;
	gboolean function()g_thread_supported;
	GThread* function(GThreadFunc func, gpointer data, gboolean joinable, GError** error)g_thread_create;
	GThread* function(GThreadFunc func, gpointer data, gulong stackSize, gboolean joinable, gboolean bound, GThreadPriority priority, GError** error)g_thread_create_full;
	GThread* function()g_thread_self;
	gpointer function(GThread* thread)g_thread_join;
	void function(GThread* thread, GThreadPriority priority)g_thread_set_priority;
	void function()g_thread_yield;
	void function(gpointer retval)g_thread_exit;
	void function(GFunc threadFunc, gpointer userData)g_thread_foreach;
	gboolean function(gsize* valueLocation)g_once_init_enter;
	void function(gsize* valueLocation, gsize initializationValue)g_once_init_leave;


}

Symbol[] gthreadLinks = 
[

	{ "g_mutex_new",  cast(void**)& g_mutex_new},
	{ "g_mutex_lock",  cast(void**)& g_mutex_lock},
	{ "g_mutex_trylock",  cast(void**)& g_mutex_trylock},
	{ "g_mutex_unlock",  cast(void**)& g_mutex_unlock},
	{ "g_mutex_free",  cast(void**)& g_mutex_free},
	{ "g_static_mutex_init",  cast(void**)& g_static_mutex_init},
	{ "g_static_mutex_lock",  cast(void**)& g_static_mutex_lock},
	{ "g_static_mutex_trylock",  cast(void**)& g_static_mutex_trylock},
	{ "g_static_mutex_unlock",  cast(void**)& g_static_mutex_unlock},
	{ "g_static_mutex_get_mutex",  cast(void**)& g_static_mutex_get_mutex},
	{ "g_static_mutex_free",  cast(void**)& g_static_mutex_free},
	{ "g_static_rec_mutex_init",  cast(void**)& g_static_rec_mutex_init},
	{ "g_static_rec_mutex_lock",  cast(void**)& g_static_rec_mutex_lock},
	{ "g_static_rec_mutex_trylock",  cast(void**)& g_static_rec_mutex_trylock},
	{ "g_static_rec_mutex_unlock",  cast(void**)& g_static_rec_mutex_unlock},
	{ "g_static_rec_mutex_lock_full",  cast(void**)& g_static_rec_mutex_lock_full},
	{ "g_static_rec_mutex_unlock_full",  cast(void**)& g_static_rec_mutex_unlock_full},
	{ "g_static_rec_mutex_free",  cast(void**)& g_static_rec_mutex_free},
	{ "g_static_rw_lock_init",  cast(void**)& g_static_rw_lock_init},
	{ "g_static_rw_lock_reader_lock",  cast(void**)& g_static_rw_lock_reader_lock},
	{ "g_static_rw_lock_reader_trylock",  cast(void**)& g_static_rw_lock_reader_trylock},
	{ "g_static_rw_lock_reader_unlock",  cast(void**)& g_static_rw_lock_reader_unlock},
	{ "g_static_rw_lock_writer_lock",  cast(void**)& g_static_rw_lock_writer_lock},
	{ "g_static_rw_lock_writer_trylock",  cast(void**)& g_static_rw_lock_writer_trylock},
	{ "g_static_rw_lock_writer_unlock",  cast(void**)& g_static_rw_lock_writer_unlock},
	{ "g_static_rw_lock_free",  cast(void**)& g_static_rw_lock_free},
	{ "g_cond_new",  cast(void**)& g_cond_new},
	{ "g_cond_signal",  cast(void**)& g_cond_signal},
	{ "g_cond_broadcast",  cast(void**)& g_cond_broadcast},
	{ "g_cond_wait",  cast(void**)& g_cond_wait},
	{ "g_cond_timed_wait",  cast(void**)& g_cond_timed_wait},
	{ "g_cond_free",  cast(void**)& g_cond_free},
	{ "g_private_new",  cast(void**)& g_private_new},
	{ "g_private_get",  cast(void**)& g_private_get},
	{ "g_private_set",  cast(void**)& g_private_set},
	{ "g_static_private_init",  cast(void**)& g_static_private_init},
	{ "g_static_private_get",  cast(void**)& g_static_private_get},
	{ "g_static_private_set",  cast(void**)& g_static_private_set},
	{ "g_static_private_free",  cast(void**)& g_static_private_free},
	{ "g_thread_init",  cast(void**)& g_thread_init},
	{ "g_thread_supported",  cast(void**)& g_thread_supported},
	{ "g_thread_create",  cast(void**)& g_thread_create},
	{ "g_thread_create_full",  cast(void**)& g_thread_create_full},
	{ "g_thread_self",  cast(void**)& g_thread_self},
	{ "g_thread_join",  cast(void**)& g_thread_join},
	{ "g_thread_set_priority",  cast(void**)& g_thread_set_priority},
	{ "g_thread_yield",  cast(void**)& g_thread_yield},
	{ "g_thread_exit",  cast(void**)& g_thread_exit},
	{ "g_thread_foreach",  cast(void**)& g_thread_foreach},
	{ "g_once_init_enter",  cast(void**)& g_once_init_enter},
	{ "g_once_init_leave",  cast(void**)& g_once_init_leave},

];