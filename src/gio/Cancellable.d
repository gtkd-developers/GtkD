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
	 * Emitted when the operation has been cancelled from another thread.
	 * Can be used by implementations of cancellable operations. This will
	 * be emitted in the thread that tried to cancel the operation, not the
	 * thread the is running the operation.
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
		// GCancellable* g_cancellable_new (void);
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
	 * If the cancelalble is cancelled, sets the error to notify
	 * that the operation was cancelled.
	 * Returns: TRUE if cancellable was cancelled, FALSE if it was not.
	 * Throws: GException on failure.
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
	 * Returns: A valid file descriptor. -1 if the file descriptor is not supported, or on errors.
	 */
	public int getFd()
	{
		// int g_cancellable_get_fd (GCancellable *cancellable);
		return g_cancellable_get_fd(gCancellable);
	}
	
	/**
	 * Gets the top cancellable from the stack.
	 * Returns: a GCancellable from the top of the stack, or NULLif the stack is empty.
	 */
	public static Cancellable getCurrent()
	{
		// GCancellable* g_cancellable_get_current (void);
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
	 * Will set cancellable to cancelled, and will emit the CANCELLED
	 * signal.
	 * This function is thread-safe. In other words, you can safely call it from
	 * another thread than the one running an operation that was passed
	 * the cancellable.
	 */
	public void cancel()
	{
		// void g_cancellable_cancel (GCancellable *cancellable);
		g_cancellable_cancel(gCancellable);
	}
}
