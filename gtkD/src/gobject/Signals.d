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
 * inFile  = gobject-Signals.html
 * outPack = gobject
 * outFile = Signals
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Signals
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_signal_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gobject.Closure
 * 	- gobject.Type
 * 	- gobject.Value
 * 	- glib.Quark
 * structWrap:
 * 	- GClosure* -> Closure
 * 	- GQuark* -> Quark
 * 	- GValue* -> Value
 * module aliases:
 * local aliases:
 */

module gobject.Signals;

private import gtkc.gobjecttypes;

private import gtkc.gobject;


private import glib.Str;
private import gobject.Closure;
private import gobject.Type;
private import gobject.Value;
private import glib.Quark;




/**
 * Description
 * The basic concept of the signal system is that of the emission
 * of a signal.
 * Signals are introduced per-type and are identified through strings.
 * Signals introduced for a parent type are available in derived types as well,
 * so basically they are a per-type facility that is inherited.
 * A signal emission mainly involves invocation of a certain set of callbacks in
 * precisely defined manner. There are two main categories of such callbacks,
 * per-object
 * 	[12]
 * ones and user provided ones.
 * The per-object callbacks are most often referred to as "object method
 * handler" or "default (signal) handler", while user provided callbacks are
 * usually just called "signal handler".
 * The object method handler is provided at signal creation time (this most
 * frequently happens at the end of an object class' creation), while user
 * provided handlers are frequently connected and disconnected to/from a certain
 * signal on certain object instances.
 * A signal emission consists of five stages, unless prematurely stopped:
 * 	1 - Invocation of the object method handler for G_SIGNAL_RUN_FIRST signals
 * 	2 - Invocation of normal user-provided signal handlers (after flag FALSE)
 * 	3 - Invocation of the object method handler for G_SIGNAL_RUN_LAST signals
 * 	4 - Invocation of user provided signal handlers, connected with an after flag of TRUE
 * 	5 - Invocation of the object method handler for G_SIGNAL_RUN_CLEANUP signals
 * The user-provided signal handlers are called in the order they were
 * connected in.
 * All handlers may prematurely stop a signal emission, and any number of
 * handlers may be connected, disconnected, blocked or unblocked during
 * a signal emission.
 * There are certain criteria for skipping user handlers in stages 2 and 4
 * of a signal emission.
 * First, user handlers may be blocked, blocked handlers are omitted
 * during callback invocation, to return from the "blocked" state, a
 * handler has to get unblocked exactly the same amount of times
 * it has been blocked before.
 * Second, upon emission of a G_SIGNAL_DETAILED signal, an additional
 * "detail" argument passed in to g_signal_emit() has to match the detail
 * argument of the signal handler currently subject to invocation.
 * Specification of no detail argument for signal handlers (omission of the
 * detail part of the signal specification upon connection) serves as a
 * wildcard and matches any detail argument passed in to emission.
 */
public class Signals
{
	
	public static uint connectData(void* instanc, char[] detailedSignal, GCallback cHandler, Object data, GClosureNotify destroyData, GConnectFlags connectFlags)
	{
		// gulong g_signal_connect_data (gpointer instance,  const gchar *detailed_signal,  GCallback c_handler,  gpointer data,  GClosureNotify destroy_data,  GConnectFlags connect_flags);
		return g_signal_connect_data(instanc, Str.toStringz(detailedSignal), cHandler, cast(void*)data, destroyData, connectFlags);
	}
	
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Creates a new signal. (This is usually done in the class initializer.)
	 * A signal name consists of segments consisting of ASCII letters and
	 * digits, separated by either the '-' or '_' character. The first
	 * character of a signal name must be a letter. Names which violate these
	 * rules lead to undefined behaviour of the GSignal system.
	 * When registering a signal and looking up a signal, either separator can
	 * be used, but they cannot be mixed.
	 * signal_name:
	 * the name for the signal
	 * itype:
	 * the type this signal pertains to. It will also pertain to
	 *  types which are derived from this type.
	 * signal_flags:
	 * a combination of GSignalFlags specifying detail of when
	 *  the default handler is to be invoked. You should at least specify
	 *  G_SIGNAL_RUN_FIRST or G_SIGNAL_RUN_LAST.
	 * class_offset:
	 * The offset of the function pointer in the class structure
	 *  for this type. Used to invoke a class method generically. Pass 0 to
	 *  not associate a class method with this signal.
	 * accumulator:
	 * the accumulator for this signal; may be NULL.
	 * accu_data:
	 * user data for the accumulator.
	 * c_marshaller:
	 * the function to translate arrays of parameter values to
	 *  signal emissions into C language callback invocations.
	 * return_type:
	 * the type of return value, or G_TYPE_NONE for a signal
	 *  without a return value.
	 * n_params:
	 * the number of parameter types to follow.
	 * ...:
	 * a list of types, one for each parameter.
	 * Returns:
	 * the signal id
	 */
	public static uint newSignals(char[] signalName, GType itype, GSignalFlags signalFlags, uint classOffset, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, ... )
	{
		// guint g_signal_new (const gchar *signal_name,  GType itype,  GSignalFlags signal_flags,  guint class_offset,  GSignalAccumulator accumulator,  gpointer accu_data,  GSignalCMarshaller c_marshaller,  GType return_type,  guint n_params,  ...);
		return g_signal_new(Str.toStringz(signalName), itype, signalFlags, classOffset, accumulator, accuData, cMarshaller, returnType, nParams);
	}
	
	/**
	 * Creates a new signal. (This is usually done in the class initializer.)
	 * See g_signal_new() for details on allowed signal names.
	 * signal_name:
	 * the name for the signal
	 * itype:
	 * the type this signal pertains to. It will also pertain to
	 *  types which are derived from this type.
	 * signal_flags:
	 * a combination of GSignalFlags specifying detail of when
	 *  the default handler is to be invoked. You should at least specify
	 *  G_SIGNAL_RUN_FIRST or G_SIGNAL_RUN_LAST.
	 * class_closure:
	 * The closure to invoke on signal emission; may be NULL.
	 * accumulator:
	 * the accumulator for this signal; may be NULL.
	 * accu_data:
	 * user data for the accumulator.
	 * c_marshaller:
	 * the function to translate arrays of parameter values to
	 *  signal emissions into C language callback invocations.
	 * return_type:
	 * the type of return value, or G_TYPE_NONE for a signal
	 *  without a return value.
	 * n_params:
	 * the length of param_types.
	 * param_types:
	 * an array types, one for each parameter.
	 * Returns:
	 * the signal id
	 */
	public static uint newv(char[] signalName, GType itype, GSignalFlags signalFlags, Closure classClosure, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, GType* paramTypes)
	{
		// guint g_signal_newv (const gchar *signal_name,  GType itype,  GSignalFlags signal_flags,  GClosure *class_closure,  GSignalAccumulator accumulator,  gpointer accu_data,  GSignalCMarshaller c_marshaller,  GType return_type,  guint n_params,  GType *param_types);
		return g_signal_newv(Str.toStringz(signalName), itype, signalFlags, (classClosure is null) ? null : classClosure.getClosureStruct(), accumulator, accuData, cMarshaller, returnType, nParams, paramTypes);
	}
	
	/**
	 * Creates a new signal. (This is usually done in the class initializer.)
	 * See g_signal_new() for details on allowed signal names.
	 * signal_name:
	 * the name for the signal
	 * itype:
	 * the type this signal pertains to. It will also pertain to
	 *  types which are derived from this type.
	 * signal_flags:
	 * a combination of GSignalFlags specifying detail of when
	 *  the default handler is to be invoked. You should at least specify
	 *  G_SIGNAL_RUN_FIRST or G_SIGNAL_RUN_LAST.
	 * class_closure:
	 * The closure to invoke on signal emission; may be NULL.
	 * accumulator:
	 * the accumulator for this signal; may be NULL.
	 * accu_data:
	 * user data for the accumulator.
	 * c_marshaller:
	 * the function to translate arrays of parameter values to
	 *  signal emissions into C language callback invocations.
	 * return_type:
	 * the type of return value, or G_TYPE_NONE for a signal
	 *  without a return value.
	 * n_params:
	 * the number of parameter types in args.
	 * args:
	 * va_list of GType, one for each parameter.
	 * Returns:
	 * the signal id
	 */
	public static uint newValist(char[] signalName, GType itype, GSignalFlags signalFlags, Closure classClosure, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, void* args)
	{
		// guint g_signal_new_valist (const gchar *signal_name,  GType itype,  GSignalFlags signal_flags,  GClosure *class_closure,  GSignalAccumulator accumulator,  gpointer accu_data,  GSignalCMarshaller c_marshaller,  GType return_type,  guint n_params,  va_list args);
		return g_signal_new_valist(Str.toStringz(signalName), itype, signalFlags, (classClosure is null) ? null : classClosure.getClosureStruct(), accumulator, accuData, cMarshaller, returnType, nParams, args);
	}
	
	/**
	 * Queries the signal system for in-depth information about a
	 * specific signal. This function will fill in a user-provided
	 * structure to hold signal-specific information. If an invalid
	 * signal id is passed in, the signal_id member of the GSignalQuery
	 * is 0. All members filled into the GSignalQuery structure should
	 * be considered constant and have to be left untouched.
	 * signal_id:
	 * The signal id of the signal to query information for.
	 * query:
	 * A user provided structure that is filled in with constant
	 *  values upon success.
	 */
	public static void query(uint signalId, GSignalQuery* query)
	{
		// void g_signal_query (guint signal_id,  GSignalQuery *query);
		g_signal_query(signalId, query);
	}
	
	/**
	 * Given the name of the signal and the type of object it connects to, gets
	 * the signal's identifying integer. Emitting the signal by number is
	 * somewhat faster than using the name each time.
	 * Also tries the ancestors of the given type.
	 * See g_signal_new() for details on allowed signal names.
	 * name:
	 * the signal's name.
	 * itype:
	 * the type that the signal operates on.
	 * Returns:
	 * the signal's identifying number, or 0 if no signal was found.
	 */
	public static uint lookup(char[] name, GType itype)
	{
		// guint g_signal_lookup (const gchar *name,  GType itype);
		return g_signal_lookup(Str.toStringz(name), itype);
	}
	
	/**
	 * Given the signal's identifier, finds its name.
	 * Two different signals may have the same name, if they have differing types.
	 * signal_id:
	 * the signal's identifying number.
	 * Returns:
	 * the signal name, or NULL if the signal number was invalid.
	 */
	public static char[] name(uint signalId)
	{
		// const gchar* g_signal_name (guint signal_id);
		return Str.toString(g_signal_name(signalId) );
	}
	
	/**
	 * Lists the signals by id that a certain instance or interface type
	 * created. Further information about the signals can be acquired through
	 * g_signal_query().
	 * itype:
	 * Instance or interface type.
	 * n_ids:
	 * Location to store the number of signal ids for itype.
	 * Returns:
	 * Newly allocated array of signal IDs.
	 */
	public static uint* listIds(GType itype, uint* nIds)
	{
		// guint* g_signal_list_ids (GType itype,  guint *n_ids);
		return g_signal_list_ids(itype, nIds);
	}
	
	/**
	 * Emits a signal.
	 * Note that g_signal_emit() resets the return value to the default
	 * if no handlers are connected, in contrast to g_signal_emitv().
	 * instance:
	 * the instance the signal is being emitted on.
	 * signal_id:
	 * the signal id
	 * detail:
	 * the detail
	 * ...:
	 * parameters to be passed to the signal, followed by a
	 *  location for the return value. If the return type of the signal
	 *  is G_TYPE_NONE, the return value location can be omitted.
	 */
	public static void emit(void* instanc, uint signalId, GQuark detail, ... )
	{
		// void g_signal_emit (gpointer instance,  guint signal_id,  GQuark detail,  ...);
		g_signal_emit(instanc, signalId, detail);
	}
	
	/**
	 * Emits a signal.
	 * Note that g_signal_emit_by_name() resets the return value to the default
	 * if no handlers are connected, in contrast to g_signal_emitv().
	 * instance:
	 * the instance the signal is being emitted on.
	 * detailed_signal:
	 * a string of the form "signal-name::detail".
	 * ...:
	 * parameters to be passed to the signal, followed by a
	 *  location for the return value. If the return type of the signal
	 *  is G_TYPE_NONE, the return value location can be omitted.
	 */
	public static void emitByName(void* instanc, char[] detailedSignal, ... )
	{
		// void g_signal_emit_by_name (gpointer instance,  const gchar *detailed_signal,  ...);
		g_signal_emit_by_name(instanc, Str.toStringz(detailedSignal));
	}
	
	/**
	 * Emits a signal.
	 * Note that g_signal_emitv() doesn't change return_value if no handlers are
	 * connected, in contrast to g_signal_emit() and g_signal_emit_valist().
	 * instance_and_params:
	 * argument list for the signal emission. The first
	 *  element in the array is a GValue for the instance the signal is
	 *  being emitted on. The rest are any arguments to be passed to the
	 *  signal.
	 * signal_id:
	 * the signal id
	 * detail:
	 * the detail
	 * return_value:
	 * Location to store the return value of the signal emission.
	 */
	public static void emitv(Value instanceAndParams, uint signalId, GQuark detail, Value returnValue)
	{
		// void g_signal_emitv (const GValue *instance_and_params,  guint signal_id,  GQuark detail,  GValue *return_value);
		g_signal_emitv((instanceAndParams is null) ? null : instanceAndParams.getValueStruct(), signalId, detail, (returnValue is null) ? null : returnValue.getValueStruct());
	}
	
	/**
	 * Emits a signal.
	 * Note that g_signal_emit_valist() resets the return value to the default
	 * if no handlers are connected, in contrast to g_signal_emitv().
	 * instance:
	 * the instance the signal is being emitted on.
	 * signal_id:
	 * the signal id
	 * detail:
	 * the detail
	 * var_args:
	 * a list of parameters to be passed to the signal, followed by a
	 *  location for the return value. If the return type of the signal
	 *  is G_TYPE_NONE, the return value location can be omitted.
	 */
	public static void emitValist(void* instanc, uint signalId, GQuark detail, void* varArgs)
	{
		// void g_signal_emit_valist (gpointer instance,  guint signal_id,  GQuark detail,  va_list var_args);
		g_signal_emit_valist(instanc, signalId, detail, varArgs);
	}
	
	
	
	
	/**
	 *  This is similar to g_signal_connect_data(), but uses a closure which
	 *  ensures that the gobject stays alive during the call to c_handler
	 *  by temporarily adding a reference count to gobject.
	 *  Note that there is a bug in GObject that makes this function
	 *  much less useful than it might seem otherwise. Once gobject is
	 *  disposed, the callback will no longer be called, but, the signal
	 *  handler is not currently disconnected. If the
	 *  instance is itself being freed at the same time than this doesn't
	 *  matter, since the signal will automatically be removed, but
	 *  if instance persists, then the signal handler will leak. You
	 *  should not remove the signal yourself because in a future versions of
	 *  GObject, the handler will automatically
	 *  be disconnected.
	 *  It's possible to work around this problem in a way that will
	 *  continue to work with future versions of GObject by checking
	 *  that the signal handler is still connected before disconnected it:
	 *  if (g_signal_handler_is_connected (instance, id))
	 *  g_signal_handler_disconnect (instance, id);
	 * instance:
	 * the instance to connect to.
	 * detailed_signal:
	 * a string of the form "signal-name::detail".
	 * c_handler:
	 * the GCallback to connect.
	 * gobject:
	 * the object to pass as data to c_handler.
	 * connect_flags:
	 * a combination of GConnnectFlags.
	 * Returns:
	 * the handler id.
	 */
	public static uint connectObject(void* instanc, char[] detailedSignal, GCallback cHandler, void* gobject, GConnectFlags connectFlags)
	{
		// gulong g_signal_connect_object (gpointer instance,  const gchar *detailed_signal,  GCallback c_handler,  gpointer gobject,  GConnectFlags connect_flags);
		return g_signal_connect_object(instanc, Str.toStringz(detailedSignal), cHandler, gobject, connectFlags);
	}
	
	
	/**
	 * Connects a GCallback function to a signal for a particular object. Similar
	 * to g_signal_connect(), but allows to provide a GClosureNotify for the data
	 * which will be called when the signal handler is disconnected and no longer
	 * used. Specify connect_flags if you need ..._after() pr
	 * ..._swapped() variants of this function.
	 * instance:
	 * the instance to connect to.
	 * detailed_signal:
	 * a string of the form "signal-name::detail".
	 * c_handler:
	 * the GCallback to connect.
	 * data:
	 * data to pass to c_handler calls.
	 * destroy_data:
	 * a GClosureNotify for data.
	 * connect_flags:
	 * a combination of GConnectFlags.
	 * Returns:
	 * the handler id
	 */
	public static uint connectData(void* instanc, char[] detailedSignal, GCallback cHandler, void* data, GClosureNotify destroyData, GConnectFlags connectFlags)
	{
		// gulong g_signal_connect_data (gpointer instance,  const gchar *detailed_signal,  GCallback c_handler,  gpointer data,  GClosureNotify destroy_data,  GConnectFlags connect_flags);
		return g_signal_connect_data(instanc, Str.toStringz(detailedSignal), cHandler, data, destroyData, connectFlags);
	}
	
	/**
	 * Connects a closure to a signal for a particular object.
	 * instance:
	 * the instance to connect to.
	 * detailed_signal:
	 * a string of the form "signal-name::detail".
	 * closure:
	 * the closure to connect.
	 * after:
	 * whether the handler should be called before or after the
	 *  default handler of the signal.
	 * Returns:
	 * the handler id
	 */
	public static uint connectClosure(void* instanc, char[] detailedSignal, Closure closure, int after)
	{
		// gulong g_signal_connect_closure (gpointer instance,  const gchar *detailed_signal,  GClosure *closure,  gboolean after);
		return g_signal_connect_closure(instanc, Str.toStringz(detailedSignal), (closure is null) ? null : closure.getClosureStruct(), after);
	}
	
	/**
	 * Connects a closure to a signal for a particular object.
	 * instance:
	 * the instance to connect to.
	 * signal_id:
	 * the id of the signal.
	 * detail:
	 * the detail.
	 * closure:
	 * the closure to connect.
	 * after:
	 * whether the handler should be called before or after the
	 *  default handler of the signal.
	 * Returns:
	 * the handler id
	 */
	public static uint connectClosureById(void* instanc, uint signalId, GQuark detail, Closure closure, int after)
	{
		// gulong g_signal_connect_closure_by_id (gpointer instance,  guint signal_id,  GQuark detail,  GClosure *closure,  gboolean after);
		return g_signal_connect_closure_by_id(instanc, signalId, detail, (closure is null) ? null : closure.getClosureStruct(), after);
	}
	
	/**
	 * Blocks a handler of an instance so it will not be called during
	 * any signal emissions unless it is unblocked again. Thus "blocking"
	 * a signal handler means to temporarily deactive it, a signal handler
	 * has to be unblocked exactly the same amount of times it has been
	 * blocked before to become active again.
	 * The handler_id has to be a valid signal handler id, connected to a
	 * signal of instance.
	 * instance:
	 * The instance to block the signal handler of.
	 * handler_id:
	 * Handler id of the handler to be blocked.
	 */
	public static void handlerBlock(void* instanc, uint handlerId)
	{
		// void g_signal_handler_block (gpointer instance,  gulong handler_id);
		g_signal_handler_block(instanc, handlerId);
	}
	
	/**
	 * Undoes the effect of a previous g_signal_handler_block() call.
	 * A blocked handler is skipped during signal emissions and will not be
	 * invoked, unblocking it (for exactly the amount of times it has been
	 * blocked before) reverts its "blocked" state, so the handler will be
	 * recognized by the signal system and is called upon future or currently
	 * ongoing signal emissions (since the order in which handlers are
	 * called during signal emissions is deterministic, whether the
	 * unblocked handler in question is called as part of a currently
	 * ongoing emission depends on how far that emission has proceeded
	 * yet).
	 * The handler_id has to be a valid id of a signal handler that is
	 * connected to a signal of instance and is currently blocked.
	 * instance:
	 * The instance to unblock the signal handler of.
	 * handler_id:
	 * Handler id of the handler to be unblocked.
	 */
	public static void handlerUnblock(void* instanc, uint handlerId)
	{
		// void g_signal_handler_unblock (gpointer instance,  gulong handler_id);
		g_signal_handler_unblock(instanc, handlerId);
	}
	
	/**
	 * Disconnects a handler from an instance so it will not be called during
	 * any future or currently ongoing emissions of the signal it has been
	 * connected to. The handler_id becomes invalid and may be reused.
	 * The handler_id has to be a valid signal handler id, connected to a
	 * signal of instance.
	 * instance:
	 * The instance to remove the signal handler from.
	 * handler_id:
	 * Handler id of the handler to be disconnected.
	 */
	public static void handlerDisconnect(void* instanc, uint handlerId)
	{
		// void g_signal_handler_disconnect (gpointer instance,  gulong handler_id);
		g_signal_handler_disconnect(instanc, handlerId);
	}
	
	/**
	 * Finds the first signal handler that matches certain selection criteria.
	 * The criteria mask is passed as an OR-ed combination of GSignalMatchType
	 * flags, and the criteria values are passed as arguments.
	 * The match mask has to be non-0 for successful matches.
	 * If no handler was found, 0 is returned.
	 * instance:
	 * The instance owning the signal handler to be found.
	 * mask:
	 * Mask indicating which of signal_id, detail, closure, func
	 *  and/or data the handler has to match.
	 * signal_id:
	 * Signal the handler has to be connected to.
	 * detail:
	 * Signal detail the handler has to be connected to.
	 * closure:
	 * The closure the handler will invoke.
	 * func:
	 * The C closure callback of the handler (useless for non-C closures).
	 * data:
	 * The closure data of the handler's closure.
	 * Returns:
	 * A valid non-0 signal handler id for a successful match.
	 */
	public static uint handlerFind(void* instanc, GSignalMatchType mask, uint signalId, GQuark detail, Closure closure, void* func, void* data)
	{
		// gulong g_signal_handler_find (gpointer instance,  GSignalMatchType mask,  guint signal_id,  GQuark detail,  GClosure *closure,  gpointer func,  gpointer data);
		return g_signal_handler_find(instanc, mask, signalId, detail, (closure is null) ? null : closure.getClosureStruct(), func, data);
	}
	
	/**
	 * Blocks all handlers on an instance that match a certain selection criteria.
	 * The criteria mask is passed as an OR-ed combination of GSignalMatchType
	 * flags, and the criteria values are passed as arguments.
	 * Passing at least one of the G_SIGNAL_MATCH_CLOSURE, G_SIGNAL_MATCH_FUNC
	 * or G_SIGNAL_MATCH_DATA match flags is required for successful matches.
	 * If no handlers were found, 0 is returned, the number of blocked handlers
	 * otherwise.
	 * instance:
	 * The instance to block handlers from.
	 * mask:
	 * Mask indicating which of signal_id, detail, closure, func
	 *  and/or data the handlers have to match.
	 * signal_id:
	 * Signal the handlers have to be connected to.
	 * detail:
	 * Signal detail the handlers have to be connected to.
	 * closure:
	 * The closure the handlers will invoke.
	 * func:
	 * The C closure callback of the handlers (useless for non-C closures).
	 * data:
	 * The closure data of the handlers' closures.
	 * Returns:
	 * The amount of handlers that got blocked.
	 */
	public static uint handlersBlockMatched(void* instanc, GSignalMatchType mask, uint signalId, GQuark detail, Closure closure, void* func, void* data)
	{
		// guint g_signal_handlers_block_matched (gpointer instance,  GSignalMatchType mask,  guint signal_id,  GQuark detail,  GClosure *closure,  gpointer func,  gpointer data);
		return g_signal_handlers_block_matched(instanc, mask, signalId, detail, (closure is null) ? null : closure.getClosureStruct(), func, data);
	}
	
	/**
	 * Unblocks all handlers on an instance that match a certain selection
	 * criteria. The criteria mask is passed as an OR-ed combination of
	 * GSignalMatchType flags, and the criteria values are passed as arguments.
	 * Passing at least one of the G_SIGNAL_MATCH_CLOSURE, G_SIGNAL_MATCH_FUNC
	 * or G_SIGNAL_MATCH_DATA match flags is required for successful matches.
	 * If no handlers were found, 0 is returned, the number of unblocked handlers
	 * otherwise. The match criteria should not apply to any handlers that are
	 * not currently blocked.
	 * instance:
	 * The instance to unblock handlers from.
	 * mask:
	 * Mask indicating which of signal_id, detail, closure, func
	 *  and/or data the handlers have to match.
	 * signal_id:
	 * Signal the handlers have to be connected to.
	 * detail:
	 * Signal detail the handlers have to be connected to.
	 * closure:
	 * The closure the handlers will invoke.
	 * func:
	 * The C closure callback of the handlers (useless for non-C closures).
	 * data:
	 * The closure data of the handlers' closures.
	 * Returns:
	 * The amount of handlers that got unblocked.
	 */
	public static uint handlersUnblockMatched(void* instanc, GSignalMatchType mask, uint signalId, GQuark detail, Closure closure, void* func, void* data)
	{
		// guint g_signal_handlers_unblock_matched (gpointer instance,  GSignalMatchType mask,  guint signal_id,  GQuark detail,  GClosure *closure,  gpointer func,  gpointer data);
		return g_signal_handlers_unblock_matched(instanc, mask, signalId, detail, (closure is null) ? null : closure.getClosureStruct(), func, data);
	}
	
	/**
	 * Disconnects all handlers on an instance that match a certain selection
	 * criteria. The criteria mask is passed as an OR-ed combination of
	 * GSignalMatchType flags, and the criteria values are passed as arguments.
	 * Passing at least one of the G_SIGNAL_MATCH_CLOSURE, G_SIGNAL_MATCH_FUNC
	 * or G_SIGNAL_MATCH_DATA match flags is required for successful matches.
	 * If no handlers were found, 0 is returned, the number of disconnected
	 * handlers otherwise.
	 * instance:
	 * The instance to remove handlers from.
	 * mask:
	 * Mask indicating which of signal_id, detail, closure, func
	 *  and/or data the handlers have to match.
	 * signal_id:
	 * Signal the handlers have to be connected to.
	 * detail:
	 * Signal detail the handlers have to be connected to.
	 * closure:
	 * The closure the handlers will invoke.
	 * func:
	 * The C closure callback of the handlers (useless for non-C closures).
	 * data:
	 * The closure data of the handlers' closures.
	 * Returns:
	 * The amount of handlers that got disconnected.
	 */
	public static uint handlersDisconnectMatched(void* instanc, GSignalMatchType mask, uint signalId, GQuark detail, Closure closure, void* func, void* data)
	{
		// guint g_signal_handlers_disconnect_matched  (gpointer instance,  GSignalMatchType mask,  guint signal_id,  GQuark detail,  GClosure *closure,  gpointer func,  gpointer data);
		return g_signal_handlers_disconnect_matched(instanc, mask, signalId, detail, (closure is null) ? null : closure.getClosureStruct(), func, data);
	}
	
	/**
	 * Returns whether handler_id is the id of a handler connected to instance.
	 * instance:
	 * The instance where a signal handler is sought.
	 * handler_id:
	 * the handler id.
	 * Returns:
	 * whether handler_id identifies a handler connected to instance.
	 */
	public static int handlerIsConnected(void* instanc, uint handlerId)
	{
		// gboolean g_signal_handler_is_connected (gpointer instance,  gulong handler_id);
		return g_signal_handler_is_connected(instanc, handlerId);
	}
	
	
	
	
	/**
	 * Returns whether there are any handlers connected to instance for the
	 * given signal id and detail.
	 * One example of when you might use this is when the arguments to the
	 * signal are difficult to compute. A class implementor may opt to not emit
	 * the signal if no one is attached anyway, thus saving the cost of building
	 * the arguments.
	 * instance:
	 * the object whose signal handlers are sought.
	 * signal_id:
	 * the signal id.
	 * detail:
	 * the detail.
	 * may_be_blocked:
	 * whether blocked handlers should count as match.
	 * Returns:
	 * TRUE if a handler is connected to the signal,
	 *  FALSE otherwise.
	 */
	public static int hasHandlerPending(void* instanc, uint signalId, GQuark detail, int mayBeBlocked)
	{
		// gboolean g_signal_has_handler_pending (gpointer instance,  guint signal_id,  GQuark detail,  gboolean may_be_blocked);
		return g_signal_has_handler_pending(instanc, signalId, detail, mayBeBlocked);
	}
	
	/**
	 * Stops a signal's current emission.
	 * This will prevent the default method from running, if the signal was
	 * G_SIGNAL_RUN_LAST and you connected normally (i.e. without the "after"
	 * flag).
	 * Prints a warning if used on a signal which isn't being emitted.
	 * instance:
	 * the object whose signal handlers you wish to stop.
	 * signal_id:
	 * the signal identifier, as returned by g_signal_lookup().
	 * detail:
	 * the detail which the signal was emitted with.
	 */
	public static void stopEmission(void* instanc, uint signalId, GQuark detail)
	{
		// void g_signal_stop_emission (gpointer instance,  guint signal_id,  GQuark detail);
		g_signal_stop_emission(instanc, signalId, detail);
	}
	
	/**
	 * Stops a signal's current emission.
	 * This is just like g_signal_stop_emission() except it will look up the
	 * signal id for you.
	 * instance:
	 * the object whose signal handlers you wish to stop.
	 * detailed_signal:
	 * a string of the form "signal-name::detail".
	 */
	public static void stopEmissionByName(void* instanc, char[] detailedSignal)
	{
		// void g_signal_stop_emission_by_name (gpointer instance,  const gchar *detailed_signal);
		g_signal_stop_emission_by_name(instanc, Str.toStringz(detailedSignal));
	}
	
	/**
	 * Overrides the class closure (i.e. the default handler) for the given signal
	 * for emissions on instances of instance_type. instance_type must be derived
	 * from the type to which the signal belongs.
	 * signal_id:
	 * the signal id
	 * instance_type:
	 * the instance type on which to override the class closure
	 *  for the signal.
	 * class_closure:
	 * the closure.
	 */
	public static void overrideClassClosure(uint signalId, GType instanceType, Closure classClosure)
	{
		// void g_signal_override_class_closure (guint signal_id,  GType instance_type,  GClosure *class_closure);
		g_signal_override_class_closure(signalId, instanceType, (classClosure is null) ? null : classClosure.getClosureStruct());
	}
	
	/**
	 * Calls the original class closure of a signal. This function should only
	 * be called from an overridden class closure; see
	 * g_signal_override_class_closure().
	 * instance_and_params:
	 *  the argument list of the signal emission. The first
	 *  element in the array is a GValue for the instance the signal is being
	 *  emitted on. The rest are any arguments to be passed to the signal.
	 * return_value:
	 * Location for the return value.
	 */
	public static void chainFromOverridden(Value instanceAndParams, Value returnValue)
	{
		// void g_signal_chain_from_overridden (const GValue *instance_and_params,  GValue *return_value);
		g_signal_chain_from_overridden((instanceAndParams is null) ? null : instanceAndParams.getValueStruct(), (returnValue is null) ? null : returnValue.getValueStruct());
	}
	
	/**
	 * Adds an emission hook for a signal, which will get called for any emission
	 * of that signal, independent of the instance. This is possible only
	 * for signals which don't have G_SIGNAL_NO_HOOKS flag set.
	 * signal_id:
	 * the signal identifier, as returned by g_signal_lookup().
	 * detail:
	 * the detail on which to call the hook.
	 * hook_func:
	 * a GSignalEmissionHook function.
	 * hook_data:
	 * user data for hook_func.
	 * data_destroy:
	 * a GDestroyNotify for hook_data.
	 * Returns:
	 * the hook id, for later use with g_signal_remove_emission_hook().
	 */
	public static uint addEmissionHook(uint signalId, GQuark detail, GSignalEmissionHook hookFunc, void* hookData, GDestroyNotify dataDestroy)
	{
		// gulong g_signal_add_emission_hook (guint signal_id,  GQuark detail,  GSignalEmissionHook hook_func,  gpointer hook_data,  GDestroyNotify data_destroy);
		return g_signal_add_emission_hook(signalId, detail, hookFunc, hookData, dataDestroy);
	}
	
	/**
	 * Deletes an emission hook.
	 * signal_id:
	 * the id of the signal
	 * hook_id:
	 * the id of the emission hook, as returned by
	 * g_signal_add_emission_hook()
	 */
	public static void removeEmissionHook(uint signalId, uint hookId)
	{
		// void g_signal_remove_emission_hook (guint signal_id,  gulong hook_id);
		g_signal_remove_emission_hook(signalId, hookId);
	}
	
	/**
	 * Internal function to parse a signal name into its signal_id
	 * and detail quark.
	 * detailed_signal:
	 * a string of the form "signal-name::detail".
	 * itype:
	 * The interface/instance type that introduced "signal-name".
	 * signal_id_p:
	 * Location to store the signal id.
	 * detail_p:
	 * Location to store the detail quark.
	 * force_detail_quark:
	 * TRUE forces creation of a GQuark for the detail.
	 * Returns:
	 * Whether the signal name could successfully be parsed and signal_id_p and detail_p contain valid return values.
	 */
	public static int parseName(char[] detailedSignal, GType itype, uint* signalIdP, Quark detailP, int forceDetailQuark)
	{
		// gboolean g_signal_parse_name (const gchar *detailed_signal,  GType itype,  guint *signal_id_p,  GQuark *detail_p,  gboolean force_detail_quark);
		return g_signal_parse_name(Str.toStringz(detailedSignal), itype, signalIdP, (detailP is null) ? null : detailP.getQuarkStruct(), forceDetailQuark);
	}
	
	/**
	 * Returns the invocation hint of the innermost signal emission of instance.
	 * instance:
	 * the instance to query
	 * Returns:
	 * the invocation hint of the innermost signal emission.
	 */
	public static GSignalInvocationHint* getInvocationHint(void* instanc)
	{
		// GSignalInvocationHint* g_signal_get_invocation_hint (gpointer instance);
		return g_signal_get_invocation_hint(instanc);
	}
	
	/**
	 * Creates a new closure which invokes the function found at the offset
	 * struct_offset in the class structure of the interface or classed type
	 * identified by itype.
	 * itype:
	 * the GType identifier of an interface or classed type
	 * struct_offset:
	 * the offset of the member function of itype's class
	 *  structure which is to be invoked by the new closure
	 * Returns:
	 * a new GCClosure
	 */
	public static Closure typeCclosureNew(GType itype, uint structOffset)
	{
		// GClosure* g_signal_type_cclosure_new (GType itype,  guint struct_offset);
		return new Closure( g_signal_type_cclosure_new(itype, structOffset) );
	}
	
	/**
	 * A predefined GSignalAccumulator for signals that return a
	 * boolean values. The behavior that this accumulator gives is
	 * that a return of TRUE stops the signal emission: no further
	 * callbacks will be invoked, while a return of FALSE allows
	 * the emission to coninue. The idea here is that a TRUE return
	 * indicates that the callback handled the signal,
	 * and no further handling is needed.
	 * ihint:
	 * standard GSignalAccumulator parameter
	 * return_accu:
	 * standard GSignalAccumulator parameter
	 * handler_return:
	 * standard GSignalAccumulator parameter
	 * dummy:
	 * standard GSignalAccumulator parameter
	 * Returns:
	 * standard GSignalAccumulator result
	 * Since 2.4
	 * [12] Although signals can deal with any kind of instantiatable type,
	 * 	i'm referring to those types as "object types" in the following, simply
	 * 	because that is the context most users will encounter signals in.
	 */
	public static int accumulatorTrueHandled(GSignalInvocationHint* ihint, Value returnAccu, Value handlerReturn, void* dummy)
	{
		// gboolean g_signal_accumulator_true_handled (GSignalInvocationHint *ihint,  GValue *return_accu,  const GValue *handler_return,  gpointer dummy);
		return g_signal_accumulator_true_handled(ihint, (returnAccu is null) ? null : returnAccu.getValueStruct(), (handlerReturn is null) ? null : handlerReturn.getValueStruct(), dummy);
	}
}
