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
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Cancellable;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.ErrorG;
private import glib.GException;



private import gobject.ObjectG;

/**
 * Description
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
		if(gCancellable is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gCancellable);
		if( ptr !is null )
		{
			this = cast(Cancellable)ptr;
			return;
		}
		super(cast(GObject*)gCancellable);
		this.gCancellable = gCancellable;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Cancellable)[] onCancelledListeners;
	/**
	 * Emitted when the operation has been cancelled.
	 * Can be used by implementations of cancellable operations. If the
	 * operation is cancelled from another thread, the signal will be
	 * emitted in the thread that cancelled the operation, not the
	 * thread that is running the operation.
	 * Note that disconnecting from this signal (or any signal) in a
	 * multi-threaded program is prone to race conditions, and it is
	 * possible that a signal handler may be invoked even
	 * after a call to
	 * g_signal_handler_disconnect() for that handler has already
	 * returned. Therefore, code such as the following is wrong in a
	 *  my_data = my_data_new (...);
	 *  id = g_signal_connect (cancellable, "cancelled",
	 *  G_CALLBACK (cancelled_handler), my_data);
	 *  /+* cancellable operation here... +/
	 *  g_signal_handler_disconnect (cancellable, id);
	 *  my_data_free (my_data); /+* WRONG! +/
	 *  /+* if g_cancellable_cancel() is called from another
	 *  * thread, cancelled_handler() may be running at this point,
	 *  * so it's not safe to free my_data.
	 *  +/
	 * The correct way to free data (or otherwise clean up temporary
	 * state) in this situation is to use g_signal_connect_data() (or
	 * g_signal_connect_closure()) to connect to the signal, and do the
	 * cleanup from a GClosureNotify, which will not be called until
	 * static void
	 * cancelled_disconnect_notify (gpointer my_data, GClosure *closure)
	 * {
		 *  my_data_free (my_data);
	 * }
	 * ...
	 *  my_data = my_data_new (...);
	 *  id = g_signal_connect_data (cancellable, "cancelled",
	 *  G_CALLBACK (cancelled_handler), my_data,
	 *  cancelled_disconnect_notify, 0);
	 *  /+* cancellable operation here... +/
	 *  g_signal_handler_disconnect (cancellable, id);
	 *  /+* cancelled_disconnect_notify() may or may not have
	 *  * already been called at this point, so the code has to treat
	 *  * my_data as though it has been freed.
	 *  +/
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
	extern(C) static void callBackCancelled(GCancellable* cancellableStruct, Cancellable cancellable)
	{
		foreach ( void delegate(Cancellable) dlg ; cancellable.onCancelledListeners )
		{
			dlg(cancellable);
		}
	}
	
	
	/**
	 * Creates a new GCancellable object.
	 * Applications that want to start one or more operations
	 * that should be cancellable should create a GCancellable
	 * and pass it to the operations.
	 * One GCancellable can be used in multiple consecutive
	 * operations, but not in multiple concurrent operations.
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
	 * Returns: TRUE if cancellable was cancelled, FALSE if it was not.
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
	 * to g_poll() and used to poll for cancellation.
	 * Params:
	 * pollfd =  a pointer to a GPollFD
	 */
	public void makePollfd(GPollFD* pollfd)
	{
		// void g_cancellable_make_pollfd (GCancellable *cancellable,  GPollFD *pollfd);
		g_cancellable_make_pollfd(gCancellable, pollfd);
	}
	
	/**
	 * Gets the top cancellable from the stack.
	 * Returns: a GCancellable from the top of the stack, or NULLif the stack is empty.
	 */
	public static Cancellable getCurrent()
	{
		// GCancellable * g_cancellable_get_current (void);
		auto p = g_cancellable_get_current();
		if(p is null)
		{
			return null;
		}
		return new Cancellable(cast(GCancellable*) p);
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
	 * cancllable can then be recieved using g_cancellable_get_current().
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
	 */
	public void reset()
	{
		// void g_cancellable_reset (GCancellable *cancellable);
		g_cancellable_reset(gCancellable);
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
