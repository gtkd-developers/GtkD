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

/*
 * Conversion parameters:
 * inFile  = GCancellable.html
 * outPack = gio
 * outFile = Cancellable
 * strct   = GCancellable
 * realStrct=
 * ctorStrct=
 * clss    = Cancellable
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_cancellable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Source
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Cancellable;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.ErrorG;
private import glib.GException;
private import glib.Source;



private import gobject.ObjectG;

/**
 * GCancellable is a thread-safe operation cancellation stack used
 * throughout GIO to allow for cancellation of synchronous and
 * asynchronous operations.
 */
public class Cancellable : ObjectG
{
	
	/** the main Gtk struct */
	protected GCancellable* gCancellable;
	
	
	public GCancellable* getCancellableStruct()
	{
		return gCancellable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gCancellable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GCancellable* gCancellable)
	{
		super(cast(GObject*)gCancellable);
		this.gCancellable = gCancellable;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gCancellable = cast(GCancellable*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Cancellable)[] onCancelledListeners;
	/**
	 * Emitted when the operation has been cancelled.
	 * Can be used by implementations of cancellable operations. If the
	 * operation is cancelled from another thread, the signal will be
	 * emitted in the thread that cancelled the operation, not the
	 * thread that is running the operation.
	 * Note that disconnecting from this signal (or any signal) in a
	 * multi-threaded program is prone to race conditions. For instance
	 * it is possible that a signal handler may be invoked even
	 * after a call to
	 * g_signal_handler_disconnect() for that handler has already
	 * returned.
	 * There is also a problem when cancellation happen
	 * right before connecting to the signal. If this happens the
	 * signal will unexpectedly not be emitted, and checking before
	 * connecting to the signal leaves a race condition where this is
	 * still happening.
	 * In order to make it safe and easy to connect handlers there
	 * are two helper functions: g_cancellable_connect() and
	 * g_cancellable_disconnect() which protect against problems
	 * like this.
	 * $(DDOC_COMMENT example)
	 * Note that the cancelled signal is emitted in the thread that
	 * the user cancelled from, which may be the main thread. So, the
	 * cancellable signal should not do something that can block.
	 */
	void addOnCancelled(void delegate(Cancellable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cancelled" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cancelled",
			cast(GCallback)&callBackCancelled,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cancelled"] = 1;
		}
		onCancelledListeners ~= dlg;
	}
	extern(C) static void callBackCancelled(GCancellable* cancellableStruct, Cancellable _cancellable)
	{
		foreach ( void delegate(Cancellable) dlg ; _cancellable.onCancelledListeners )
		{
			dlg(_cancellable);
		}
	}
	
	
	/**
	 * Creates a new GCancellable object.
	 * Applications that want to start one or more operations
	 * that should be cancellable should create a GCancellable
	 * and pass it to the operations.
	 * One GCancellable can be used in multiple consecutive
	 * operations or in multiple concurrent operations.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GCancellable * g_cancellable_new (void);
		auto p = g_cancellable_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_cancellable_new()");
		}
		this(cast(GCancellable*) p);
	}
	
	/**
	 * Checks if a cancellable job has been cancelled.
	 * Returns: TRUE if cancellable is cancelled, FALSE if called with NULL or if item is not cancelled.
	 */
	public int isCancelled()
	{
		// gboolean g_cancellable_is_cancelled (GCancellable *cancellable);
		return g_cancellable_is_cancelled(gCancellable);
	}
	
	/**
	 * If the cancellable is cancelled, sets the error to notify
	 * that the operation was cancelled.
	 * Returns: TRUE if cancellable was cancelled, FALSE if it was not
	 */
	public int setErrorIfCancelled()
	{
		// gboolean g_cancellable_set_error_if_cancelled  (GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_cancellable_set_error_if_cancelled(gCancellable, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the file descriptor for a cancellable job. This can be used to
	 * implement cancellable operations on Unix systems. The returned fd will
	 * turn readable when cancellable is cancelled.
	 * You are not supposed to read from the fd yourself, just check for
	 * readable status. Reading to unset the readable status is done
	 * with g_cancellable_reset().
	 * After a successful return from this function, you should use
	 * g_cancellable_release_fd() to free up resources allocated for
	 * the returned file descriptor.
	 * See also g_cancellable_make_pollfd().
	 * Returns: A valid file descriptor. -1 if the file descriptor is not supported, or on errors.
	 */
	public int getFd()
	{
		// int g_cancellable_get_fd (GCancellable *cancellable);
		return g_cancellable_get_fd(gCancellable);
	}
	
	/**
	 * Creates a GPollFD corresponding to cancellable; this can be passed
	 * to g_poll() and used to poll for cancellation. This is useful both
	 * for unix systems without a native poll and for portability to
	 * windows.
	 * When this function returns TRUE, you should use
	 * g_cancellable_release_fd() to free up resources allocated for the
	 * pollfd. After a FALSE return, do not call g_cancellable_release_fd().
	 * If this function returns FALSE, either no cancellable was given or
	 * resource limits prevent this function from allocating the necessary
	 * structures for polling. (On Linux, you will likely have reached
	 * the maximum number of file descriptors.) The suggested way to handle
	 * these cases is to ignore the cancellable.
	 * You are not supposed to read from the fd yourself, just check for
	 * readable status. Reading to unset the readable status is done
	 * with g_cancellable_reset().
	 * Since 2.22
	 * Params:
	 * pollfd = a pointer to a GPollFD
	 * Returns: TRUE if pollfd was successfully initialized, FALSE on failure to prepare the cancellable.
	 */
	public int makePollfd(GPollFD* pollfd)
	{
		// gboolean g_cancellable_make_pollfd (GCancellable *cancellable,  GPollFD *pollfd);
		return g_cancellable_make_pollfd(gCancellable, pollfd);
	}
	
	/**
	 * Releases a resources previously allocated by g_cancellable_get_fd()
	 * or g_cancellable_make_pollfd().
	 * For compatibility reasons with older releases, calling this function
	 * is not strictly required, the resources will be automatically freed
	 * when the cancellable is finalized. However, the cancellable will
	 * block scarce file descriptors until it is finalized if this function
	 * is not called. This can cause the application to run out of file
	 * descriptors when many GCancellables are used at the same time.
	 * Since 2.22
	 */
	public void releaseFd()
	{
		// void g_cancellable_release_fd (GCancellable *cancellable);
		g_cancellable_release_fd(gCancellable);
	}
	
	/**
	 * Creates a source that triggers if cancellable is cancelled and
	 * calls its callback of type GCancellableSourceFunc. This is
	 * primarily useful for attaching to another (non-cancellable) source
	 * with g_source_add_child_source() to add cancellability to it.
	 * For convenience, you can call this with a NULL GCancellable,
	 * in which case the source will never trigger.
	 * Since 2.28
	 * Returns: the new GSource. [transfer full]
	 */
	public Source sourceNew()
	{
		// GSource * g_cancellable_source_new (GCancellable *cancellable);
		auto p = g_cancellable_source_new(gCancellable);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Source)(cast(GSource*) p);
	}
	
	/**
	 * Gets the top cancellable from the stack.
	 * Returns: a GCancellable from the top of the stack, or NULL if the stack is empty. [transfer none]
	 */
	public static Cancellable getCurrent()
	{
		// GCancellable * g_cancellable_get_current (void);
		auto p = g_cancellable_get_current();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Cancellable)(cast(GCancellable*) p);
	}
	
	/**
	 * Pops cancellable off the cancellable stack (verifying that cancellable
	 * is on the top of the stack).
	 */
	public void popCurrent()
	{
		// void g_cancellable_pop_current (GCancellable *cancellable);
		g_cancellable_pop_current(gCancellable);
	}
	
	/**
	 * Pushes cancellable onto the cancellable stack. The current
	 * cancellable can then be received using g_cancellable_get_current().
	 * This is useful when implementing cancellable operations in
	 * code that does not allow you to pass down the cancellable object.
	 * This is typically called automatically by e.g. GFile operations,
	 * so you rarely have to call this yourself.
	 */
	public void pushCurrent()
	{
		// void g_cancellable_push_current (GCancellable *cancellable);
		g_cancellable_push_current(gCancellable);
	}
	
	/**
	 * Resets cancellable to its uncancelled state.
	 * If cancellable is currently in use by any cancellable operation
	 * then the behavior of this function is undefined.
	 */
	public void reset()
	{
		// void g_cancellable_reset (GCancellable *cancellable);
		g_cancellable_reset(gCancellable);
	}
	
	/**
	 * Convenience function to connect to the "cancelled"
	 * signal. Also handles the race condition that may happen
	 * if the cancellable is cancelled right before connecting.
	 * callback is called at most once, either directly at the
	 * time of the connect if cancellable is already cancelled,
	 * or when cancellable is cancelled in some thread.
	 * data_destroy_func will be called when the handler is
	 * disconnected, or immediately if the cancellable is already
	 * cancelled.
	 * See "cancelled" for details on how to use this.
	 * Since 2.22
	 * Params:
	 * callback = The GCallback to connect.
	 * data = Data to pass to callback.
	 * dataDestroyFunc = Free function for data or NULL. [allow-none]
	 * Returns: The id of the signal handler or 0 if cancellable has already been cancelled.
	 */
	public gulong connect(GCallback callback, void* data, GDestroyNotify dataDestroyFunc)
	{
		// gulong g_cancellable_connect (GCancellable *cancellable,  GCallback callback,  gpointer data,  GDestroyNotify data_destroy_func);
		return g_cancellable_connect(gCancellable, callback, data, dataDestroyFunc);
	}
	
	/**
	 * Disconnects a handler from a cancellable instance similar to
	 * g_signal_handler_disconnect(). Additionally, in the event that a
	 * signal handler is currently running, this call will block until the
	 * handler has finished. Calling this function from a
	 * "cancelled" signal handler will therefore result in a
	 * deadlock.
	 * This avoids a race condition where a thread cancels at the
	 * same time as the cancellable operation is finished and the
	 * signal handler is removed. See "cancelled" for
	 * details on how to use this.
	 * If cancellable is NULL or handler_id is 0 this function does
	 * nothing.
	 * Since 2.22
	 * Params:
	 * handlerId = Handler id of the handler to be disconnected, or 0.
	 */
	public void disconnect(gulong handlerId)
	{
		// void g_cancellable_disconnect (GCancellable *cancellable,  gulong handler_id);
		g_cancellable_disconnect(gCancellable, handlerId);
	}
	
	/**
	 * Will set cancellable to cancelled, and will emit the
	 * "cancelled" signal. (However, see the warning about
	 * race conditions in the documentation for that signal if you are
	 * planning to connect to it.)
	 * This function is thread-safe. In other words, you can safely call
	 * it from a thread other than the one running the operation that was
	 * passed the cancellable.
	 * The convention within gio is that cancelling an asynchronous
	 * operation causes it to complete asynchronously. That is, if you
	 * cancel the operation from the same thread in which it is running,
	 * then the operation's GAsyncReadyCallback will not be invoked until
	 * the application returns to the main loop.
	 */
	public void cancel()
	{
		// void g_cancellable_cancel (GCancellable *cancellable);
		g_cancellable_cancel(gCancellable);
	}
}
