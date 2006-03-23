/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gobject
 * outFile = Closure
 * strct   = GClosure
 * realStrct=
 * clss    = Closure
 * template for:
 * extend  = 
 * prefixes:
 * 	- g_closure_
 * omit structs:
 * omit prefixes:
 * 	- g_cclosure
 * omit code:
 * imports:
 * 	- gobject.ObjectG
 * 	- gobject.Closure
 * 	- gobject.Value
 * 	- glib.Source
 * structWrap:
 * 	- GClosure* -> Closure
 * 	- GObject* -> ObjectG
 * 	- GSource* -> Source
 * 	- GValue* -> Value
 * local aliases:
 */

module gobject.Closure;

private import gobject.typedefs;

private import lib.gobject;

private import gobject.ObjectG;
private import gobject.Closure;
private import gobject.Value;
private import glib.Source;

/**
 * Description
 * A GClosure represents a callback supplied by the programmer. It will generally
 * comprise a function of some kind and a marshaller used to call it. It is the
 * reponsibility of the marshaller to convert the arguments for the invocation
 * from GValues into a suitable form, perform the callback on the
 * converted arguments, and transform the return value back into a GValue.
 * In the case of C programs, a closure usually just holds a pointer to a function
 * and maybe a data argument, and the marshaller converts between GValue
 * and native C types. The GObject library provides the GCClosure type for this
 * purpose. Bindings for other languages need marshallers which
 * convert between GValues and suitable representations in the runtime
 * of the language in order to use functions written in that languages as
 * callbacks.
 * Within GObject, closures play an important role in the implementation of
 * signals. When a signal is registered, the c_marshaller argument to
 * g_signal_new() specifies the default C marshaller for any closure which is
 * connected to this signal. GObject provides a number of C marshallers
 * for this purpose, see the g_cclosure_marshal_*() functions. Additional
 * C marshallers can be generated with the glib-genmarshal utility.
 * Closures can be explicitly connected to signals with
 * g_signal_connect_closure(), but it usually more convenient to let GObject
 * create a closure automatically by using one of the g_signal_connect_*()
 * functions which take a callback function/user data pair.
 * Using closures has a number of important advantages over a simple
 * callback function/data pointer combination:
 * Closures allow the callee to get the types of the callback parameters,
 * which means that language bindings don't have to write individual glue
 * for each callback type.
 * The reference counting of GClosure makes it easy to handle reentrancy
 * right; if a callback is removed while it is being invoked, the closure
 * and it's parameters won't be freed until the invocation finishes.
 * g_closure_invalidate() and invalidation notifiers allow callbacks to be
 * automatically removed when the objects they point to go away.
 */
public class Closure
{
	
	/** the main Gtk struct */
	protected GClosure* gClosure;
	
	
	public GClosure* getClosureStruct()
	{
		return gClosure;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gClosure;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GClosure* gClosure)
	{
		this.gClosure = gClosure;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * A variant of g_closure_new_simple() which stores object in the data
	 * field of the closure and calls g_object_watch_closure() on object and the
	 * created closure. This function is mainly useful when implementing new types
	 * of closures.
	 * sizeof_closure:
	 * the size of the structure to allocate, must be at least
	 * sizeof (GClosure)
	 * object:
	 * a GObject pointer to store in the data field of the newly
	 *  allocated GClosure
	 * Returns:
	 * a newly allocated GClosure
	 */
	public this (uint sizeofClosure, ObjectG object)
	{
		// GClosure* g_closure_new_object (guint sizeof_closure,  GObject *object);
		this(cast(GClosure*)g_closure_new_object(sizeofClosure, (object is null) ? null : object.getObjectGStruct()) );
	}
	
	/**
	 * Increments the reference count on a closure to force it staying
	 * alive while the caller holds a pointer to it.
	 * closure:
	 * GClosure to increment the reference count on
	 * Returns:
	 * The closure passed in, for convenience
	 */
	public Closure ref()
	{
		// GClosure* g_closure_ref (GClosure *closure);
		return new Closure( g_closure_ref(gClosure) );
	}
	
	/**
	 * Takes over the initial ownership of a closure.
	 * Each closure is initially created in afloating state,
	 * which means that the initial reference count is not owned by any caller.
	 * g_closure_sink() checks to see if the object is still floating, and if so,
	 * unsets the floating state and decreases the reference count. If the closure
	 * is not floating, g_closure_sink() does nothing. The reason for the existance
	 * of the floating state is to prevent cumbersome code sequences like:
	 * closure = g_cclosure_new (cb_func, cb_data);
	 * g_source_set_closure (source, closure);
	 * g_closure_unref (closure); /+* XXX GObject doesn't really need this +/
	 * Because g_source_set_closure() (and similar functions) take ownership of the
	 * initial reference count, if it is unowned, we instead can write:
	 * g_source_set_closure (source, g_cclosure_new (cb_func, cb_data));
	 * Generally, this function is used together with g_closure_ref(). Ane example
	 * of storing a closure for later notification looks like:
	 * static GClosure *notify_closure = NULL;
	 * void
	 * foo_notify_set_closure (GClosure *closure)
	 * {
		 *  if (notify_closure)
		 *  g_closure_unref (notify_closure);
		 *  notify_closure = closure;
		 *  if (notify_closure)
		 *  {
			 *  g_closure_ref (notify_closure);
			 *  g_closure_sink (notify_closure);
		 *  }
	 * }
	 * Because g_closure_sink() may decrement the reference count of a closure
	 * (if it hasn't been called on closure yet) just like g_closure_unref(),
	 * g_closure_ref() should be called prior to this function.
	 * closure:
	 * GClosure to decrement the initial reference count on, if it's
	 *  still being held
	 */
	public void sink()
	{
		// void g_closure_sink (GClosure *closure);
		g_closure_sink(gClosure);
	}
	
	/**
	 * Decrements the reference count of a closure after it was previously
	 * incremented by the same caller. If no other callers are using the closure,
	 * then the closure will be destroyed and freed.
	 * closure:
	 * GClosure to decrement the reference count on
	 */
	public void unref()
	{
		// void g_closure_unref (GClosure *closure);
		g_closure_unref(gClosure);
	}
	
	/**
	 * Invokes the closure, i.e. executes the callback represented by the closure.
	 * closure:
	 * a GClosure
	 * return_value:
	 * a GValue to store the return value. May be NULL if the
	 *  callback of closure doesn't return a value.
	 * n_param_values:
	 * the length of the param_values array
	 * param_values:
	 * an array of GValues holding the arguments on
	 *  which to invoke the callback of closure
	 * invocation_hint:
	 * a context-dependent invocation hint
	 */
	public void invoke(Value returnValue, uint nParamValues, Value paramValues, void* invocationHint)
	{
		// void g_closure_invoke (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint);
		g_closure_invoke(gClosure, (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint);
	}
	
	/**
	 * Sets a flag on the closure to indicate that it's calling environment has
	 * become invalid, and thus causes any future invocations of g_closure_invoke()
	 * on this closure to be ignored. Also, invalidation notifiers installed on
	 * the closure will be called at this point. Note that unless you are holding
	 * a reference to the closure yourself, the invalidation notifiers may unref
	 * the closure and cause it to be destroyed, so if you need to access the
	 * closure after calling g_closure_invalidate(), make sure that you've
	 * previously called g_closure_ref().
	 * Note that g_closure_invalidate() will also be called when the reference count
	 * of a closure drops to zero (unless it has already been invalidated before).
	 * closure:
	 * GClosure to invalidate
	 */
	public void invalidate()
	{
		// void g_closure_invalidate (GClosure *closure);
		g_closure_invalidate(gClosure);
	}
	
	/**
	 * Registers a finalization notifier which will be called when the reference
	 * count of closure goes down to 0. Multiple finalization notifiers on a
	 * single closure are invoked in unspecified order. If a single call to
	 * g_closure_unref() results in the closure being both invalidated and
	 * finalized, then the invalidate notifiers will be run before the finalize
	 * notifiers.
	 * closure:
	 * a GClosure
	 * notify_data:
	 * data to pass to notify_func
	 * notify_func:
	 * the callback function to register
	 */
	public void addFinalizeNotifier(void* notifyData, GClosureNotify notifyFunc)
	{
		// void g_closure_add_finalize_notifier (GClosure *closure,  gpointer notify_data,  GClosureNotify notify_func);
		g_closure_add_finalize_notifier(gClosure, notifyData, notifyFunc);
	}
	
	/**
	 * Registers an invalidation notifier which will be called when the closure
	 * is invalidated with g_closure_invalidate(). Invalidation notifiers are
	 * invoked before finalization notifiers, in an unspecified order.
	 * closure:
	 * a GClosure
	 * notify_data:
	 * data to pass to notify_func
	 * notify_func:
	 * the callback function to register
	 */
	public void addInvalidateNotifier(void* notifyData, GClosureNotify notifyFunc)
	{
		// void g_closure_add_invalidate_notifier  (GClosure *closure,  gpointer notify_data,  GClosureNotify notify_func);
		g_closure_add_invalidate_notifier(gClosure, notifyData, notifyFunc);
	}
	
	/**
	 * Removes a finalization notifier. Notifiers are automatically removed after
	 * they are run.
	 * closure:
	 * a GClosure
	 * notify_data:
	 * data which was passed to g_closure_add_finalize_notifier()
	 *  when registering notify_func
	 * notify_func:
	 * the callback function to remove
	 */
	public void removeFinalizeNotifier(void* notifyData, GClosureNotify notifyFunc)
	{
		// void g_closure_remove_finalize_notifier  (GClosure *closure,  gpointer notify_data,  GClosureNotify notify_func);
		g_closure_remove_finalize_notifier(gClosure, notifyData, notifyFunc);
	}
	
	/**
	 * Removes a invalidation notifier. Notifiers are automatically removed after
	 * they are run.
	 * closure:
	 * a GClosure
	 * notify_data:
	 * data which was passed to g_closure_add_invalidate_notifier()
	 *  when registering notify_func
	 * notify_func:
	 * the callback function to remove
	 */
	public void removeInvalidateNotifier(void* notifyData, GClosureNotify notifyFunc)
	{
		// void g_closure_remove_invalidate_notifier  (GClosure *closure,  gpointer notify_data,  GClosureNotify notify_func);
		g_closure_remove_invalidate_notifier(gClosure, notifyData, notifyFunc);
	}
	
	/**
	 * Allocates a struct of the given size and initializes the initial part
	 * as a GClosure. This function is mainly useful when implementing new types
	 * of closures.
	 * typedef struct _MyClosure MyClosure;
	 * struct _MyClosure
	 * {
		 *  GClosure closure;
		 *  /+* extra data goes here +/
	 * };
	 * static void
	 * my_closure_finalize (gpointer notify_data,
	 *  GClosure *closure)
	 * {
		 *  MyClosure *my_closure = (MyClosure *)closure;
		 *  /+* free extra data here +/
	 * }
	 * MyClosure *my_closure_new (gpointer data)
	 * {
		 *  GClosure *closure;
		 *  MyClosure *my_closure;
		 *  closure = g_closure_new_simple (sizeof (MyClosure), data);
		 *  my_closure = (MyClosure *) closure;
		 *  / initialize extra data here +/
		 *  g_closure_add_finalize_notifier (closure, notify_data,
		 *  my_closure_finalize);
		 *  return my_closure;
	 * }
	 * sizeof_closure:
	 * the size of the structure to allocate, must be at least
	 * sizeof (GClosure)
	 * data:
	 * data to store in the data field of the newly allocated GClosure
	 * Returns:
	 * a newly allocated GClosure
	 */
	public this (uint sizeofClosure, void* data)
	{
		// GClosure* g_closure_new_simple (guint sizeof_closure,  gpointer data);
		this(cast(GClosure*)g_closure_new_simple(sizeofClosure, data) );
	}
	
	/**
	 * Sets the marshaller of closure. The marshal_data provides a way for a
	 * meta marshaller to provide additional information to the marshaller.
	 * (See g_closure_set_meta_marshal().) For GObject's C predefined marshallers
	 * (the g_cclosure_marshal_*() functions), what it provides is a callback
	 * function to use instead of closure->callback.
	 * closure:
	 * a GClosure
	 * marshal:
	 * a GClosureMarshal function
	 */
	public void setMarshal(GClosureMarshal marshal)
	{
		// void g_closure_set_marshal (GClosure *closure,  GClosureMarshal marshal);
		g_closure_set_marshal(gClosure, marshal);
	}
	
	/**
	 * Adds a pair of notifiers which get invoked before and after the closure
	 * callback, respectively. This is typically used to protect the extra arguments
	 * for the duration of the callback. See g_object_watch_closure() for an
	 * example of marshal guards.
	 * closure:
	 * a GClosure
	 * pre_marshal_data:
	 * data to pass to pre_marshal_notify
	 * pre_marshal_notify:
	 * a function to call before the closure callback
	 * post_marshal_data:
	 * data to pass to post_marshal_notify
	 * post_marshal_notify:
	 * a function to call after the closure callback
	 */
	public void addMarshalGuards(void* preMarshalData, GClosureNotify preMarshalNotify, void* postMarshalData, GClosureNotify postMarshalNotify)
	{
		// void g_closure_add_marshal_guards (GClosure *closure,  gpointer pre_marshal_data,  GClosureNotify pre_marshal_notify,  gpointer post_marshal_data,  GClosureNotify post_marshal_notify);
		g_closure_add_marshal_guards(gClosure, preMarshalData, preMarshalNotify, postMarshalData, postMarshalNotify);
	}
	
	/**
	 * Sets the meta marshaller of closure.
	 * A meta marshaller wraps closure->marshal and modifies the way it is called
	 * in some fashion. The most common use of this facility is for C callbacks.
	 * The same marshallers (generated by
	 * glib-genmarshal) are used everywhere,
	 * but the way that we get the callback function differs. In most cases we want
	 * to use closure->callback, but in other cases we want to use use some
	 * different technique to retrieve the callbakc function.
	 * For example, class closures for signals (see g_signal_type_cclosure_new())
	 * retrieve the callback function from a fixed offset in the class structure.
	 * The meta marshaller retrieves the right callback and passes it to the
	 * marshaller as the marshal_data argument.
	 * closure:
	 * a GClosure
	 * marshal_data:
	 * context-dependent data to pass to meta_marshal
	 * meta_marshal:
	 * a GClosureMarshal function
	 */
	public void setMetaMarshal(void* marshalData, GClosureMarshal metaMarshal)
	{
		// void g_closure_set_meta_marshal (GClosure *closure,  gpointer marshal_data,  GClosureMarshal meta_marshal);
		g_closure_set_meta_marshal(gClosure, marshalData, metaMarshal);
	}
	
	/**
	 * Set the callback for a source as a GClosure.
	 * If the source is not one of the standard GLib types, the closure_callback
	 * and closure_marshal fields of the GSourceFuncs structure must have been
	 * filled in with pointers to appropriate functions.
	 * source:
	 * the source
	 * closure:
	 * a GClosure
	 */
	public static void gSourceSetClosure(Source source, Closure closure)
	{
		// void g_source_set_closure (GSource *source,  GClosure *closure);
		g_source_set_closure((source is null) ? null : source.getSourceStruct(), (closure is null) ? null : closure.getClosureStruct());
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
