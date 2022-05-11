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


module gobject.Signals;

private import glib.Str;
private import glib.c.functions;
private import gobject.Closure;
private import gobject.DClosure;
private import gobject.ObjectG;
private import gobject.TypeInstance;
private import gobject.Value;
private import gobject.c.functions;
public  import gobject.c.types;
private import std.traits;


/** */
public struct Signals
{
	/**
	 * Connects a callback to a signal for a particular object.
	 *
	 * The handler will be called before the default handler of the signal.
	 *
	 * Params:
	 *     instance       = the instance to connect to.
	 *     detailedSignal = a string of the form "signal-name::detail".
	 *     callback       = the callback to connect.
	 *     connectFlags   = a combination of ConnectFlags.
	 *
	 * Returns: the handler ID, of type gulong (always greater than 0 for successful connections)
	 */
	public static gulong connect(T)(ObjectG instance, string detailedSignal, T callback, ConnectFlags connectFlags = cast(ConnectFlags)0)
	if ( isCallable!T && !is(T == GCallback) )
	{
		bool after = (connectFlags & ConnectFlags.AFTER) != false;
		bool swap = (connectFlags & ConnectFlags.SWAPPED) != false;

		DClosure closure = new DClosure(callback, swap);
		gulong id = Signals.connectClosure(instance, detailedSignal, closure, after);

		instance.signals[id] = closure;
		return id;
	}

	deprecated public static gulong connectData(void* instanc, string detailedSignal, GCallback cHandler, Object data, GClosureNotify destroyData, GConnectFlags connectFlags)
	{
		return g_signal_connect_data(instanc, Str.toStringz(detailedSignal), cHandler, cast(void*)data, destroyData, connectFlags);
	}

	/**
	 * Disconnects a handler from an instance so it will not be called during
	 * any future or currently ongoing emissions of the signal it has been
	 * connected to. The @handler_id becomes invalid and may be reused.
	 *
	 * The @handler_id has to be a valid signal handler id, connected to a
	 * signal of @instance.
	 *
	 * Params:
	 *     instance = The instance to remove the signal handler from.
	 *     handlerId = Handler id of the handler to be disconnected.
	 */
	public static void handlerDisconnect(ObjectG instance, gulong handlerId)
	{
		instance.signals.remove(handlerId);
		g_signal_handler_disconnect((instance is null) ? null : instance.getObjectGStruct(), handlerId);
	}

	/**
	 * Connects a GCallback function to a signal for a particular object.
	 *
	 * The handler will be called before the default handler of the signal.
	 *
	 * See [memory management of signal handlers][signal-memory-management] for
	 * details on how to handle the return value and memory management of @data.
	 *
	 * Params:
	 *     instance       = the instance to connect to.
	 *     detailedSignal = a string of the form "signal-name::detail".
	 *     cHandler       = the GCallback to connect.
	 *     data           = data to pass to cHandler calls.
	 *
	 * Returns: the handler ID, of type gulong (always greater than 0 for successful connections)
	 */
	public static gulong connect(ObjectG instanc, string detailedSignal, GCallback cHandler, void* data)
	{
		return g_signal_connect_data((instanc is null) ? null : instanc.getObjectGStruct(), Str.toStringz(detailedSignal), cHandler, data, null, cast(ConnectFlags)0);
	}

	/**
	 */

	/**
	 * A predefined #GSignalAccumulator for signals intended to be used as a
	 * hook for application code to provide a particular value.  Usually
	 * only one such value is desired and multiple handlers for the same
	 * signal don't make much sense (except for the case of the default
	 * handler defined in the class structure, in which case you will
	 * usually want the signal connection to override the class handler).
	 *
	 * This accumulator will use the return value from the first signal
	 * handler that is run as the return value for the signal and not run
	 * any further handlers (ie: the first handler "wins").
	 *
	 * Params:
	 *     ihint = standard #GSignalAccumulator parameter
	 *     returnAccu = standard #GSignalAccumulator parameter
	 *     handlerReturn = standard #GSignalAccumulator parameter
	 *     dummy = standard #GSignalAccumulator parameter
	 *
	 * Returns: standard #GSignalAccumulator result
	 *
	 * Since: 2.28
	 */
	public static bool accumulatorFirstWins(GSignalInvocationHint* ihint, Value returnAccu, Value handlerReturn, void* dummy)
	{
		return g_signal_accumulator_first_wins(ihint, (returnAccu is null) ? null : returnAccu.getValueStruct(), (handlerReturn is null) ? null : handlerReturn.getValueStruct(), dummy) != 0;
	}

	/**
	 * A predefined #GSignalAccumulator for signals that return a
	 * boolean values. The behavior that this accumulator gives is
	 * that a return of %TRUE stops the signal emission: no further
	 * callbacks will be invoked, while a return of %FALSE allows
	 * the emission to continue. The idea here is that a %TRUE return
	 * indicates that the callback handled the signal, and no further
	 * handling is needed.
	 *
	 * Params:
	 *     ihint = standard #GSignalAccumulator parameter
	 *     returnAccu = standard #GSignalAccumulator parameter
	 *     handlerReturn = standard #GSignalAccumulator parameter
	 *     dummy = standard #GSignalAccumulator parameter
	 *
	 * Returns: standard #GSignalAccumulator result
	 *
	 * Since: 2.4
	 */
	public static bool accumulatorTrueHandled(GSignalInvocationHint* ihint, Value returnAccu, Value handlerReturn, void* dummy)
	{
		return g_signal_accumulator_true_handled(ihint, (returnAccu is null) ? null : returnAccu.getValueStruct(), (handlerReturn is null) ? null : handlerReturn.getValueStruct(), dummy) != 0;
	}

	/**
	 * Adds an emission hook for a signal, which will get called for any emission
	 * of that signal, independent of the instance. This is possible only
	 * for signals which don't have %G_SIGNAL_NO_HOOKS flag set.
	 *
	 * Params:
	 *     signalId = the signal identifier, as returned by g_signal_lookup().
	 *     detail = the detail on which to call the hook.
	 *     hookFunc = a #GSignalEmissionHook function.
	 *     hookData = user data for @hook_func.
	 *     dataDestroy = a #GDestroyNotify for @hook_data.
	 *
	 * Returns: the hook id, for later use with g_signal_remove_emission_hook().
	 */
	public static gulong addEmissionHook(uint signalId, GQuark detail, GSignalEmissionHook hookFunc, void* hookData, GDestroyNotify dataDestroy)
	{
		return g_signal_add_emission_hook(signalId, detail, hookFunc, hookData, dataDestroy);
	}

	/**
	 * Calls the original class closure of a signal. This function should only
	 * be called from an overridden class closure; see
	 * g_signal_override_class_closure() and
	 * g_signal_override_class_handler().
	 *
	 * Params:
	 *     instanceAndParams = the argument list of the signal emission.
	 *         The first element in the array is a #GValue for the instance the signal
	 *         is being emitted on. The rest are any arguments to be passed to the signal.
	 *     returnValue = Location for the return value.
	 */
	public static void chainFromOverridden(Value[] instanceAndParams, Value returnValue)
	{
		GValue[] instanceAndParamsArray = new GValue[instanceAndParams.length];
		for ( int i = 0; i < instanceAndParams.length; i++ )
		{
			instanceAndParamsArray[i] = *(instanceAndParams[i].getValueStruct());
		}

		g_signal_chain_from_overridden(instanceAndParamsArray.ptr, (returnValue is null) ? null : returnValue.getValueStruct());
	}

	/**
	 * Connects a closure to a signal for a particular object.
	 *
	 * Params:
	 *     instance_ = the instance to connect to.
	 *     detailedSignal = a string of the form "signal-name::detail".
	 *     closure = the closure to connect.
	 *     after = whether the handler should be called before or after the
	 *         default handler of the signal.
	 *
	 * Returns: the handler ID (always greater than 0 for successful connections)
	 */
	public static gulong connectClosure(ObjectG instance_, string detailedSignal, Closure closure, bool after)
	{
		return g_signal_connect_closure((instance_ is null) ? null : instance_.getObjectGStruct(), Str.toStringz(detailedSignal), (closure is null) ? null : closure.getClosureStruct(), after);
	}

	/**
	 * Connects a closure to a signal for a particular object.
	 *
	 * Params:
	 *     instance_ = the instance to connect to.
	 *     signalId = the id of the signal.
	 *     detail = the detail.
	 *     closure = the closure to connect.
	 *     after = whether the handler should be called before or after the
	 *         default handler of the signal.
	 *
	 * Returns: the handler ID (always greater than 0 for successful connections)
	 */
	public static gulong connectClosureById(ObjectG instance_, uint signalId, GQuark detail, Closure closure, bool after)
	{
		return g_signal_connect_closure_by_id((instance_ is null) ? null : instance_.getObjectGStruct(), signalId, detail, (closure is null) ? null : closure.getClosureStruct(), after);
	}

	/**
	 * Connects a #GCallback function to a signal for a particular object. Similar
	 * to g_signal_connect(), but allows to provide a #GClosureNotify for the data
	 * which will be called when the signal handler is disconnected and no longer
	 * used. Specify @connect_flags if you need `..._after()` or
	 * `..._swapped()` variants of this function.
	 *
	 * Params:
	 *     instance_ = the instance to connect to.
	 *     detailedSignal = a string of the form "signal-name::detail".
	 *     cHandler = the #GCallback to connect.
	 *     data = data to pass to @c_handler calls.
	 *     destroyData = a #GClosureNotify for @data.
	 *     connectFlags = a combination of #GConnectFlags.
	 *
	 * Returns: the handler ID (always greater than 0 for successful connections)
	 */
	public static gulong connectData(ObjectG instance_, string detailedSignal, GCallback cHandler, void* data, GClosureNotify destroyData, GConnectFlags connectFlags)
	{
		return g_signal_connect_data((instance_ is null) ? null : instance_.getObjectGStruct(), Str.toStringz(detailedSignal), cHandler, data, destroyData, connectFlags);
	}

	/**
	 * This is similar to g_signal_connect_data(), but uses a closure which
	 * ensures that the @gobject stays alive during the call to @c_handler
	 * by temporarily adding a reference count to @gobject.
	 *
	 * When the @gobject is destroyed the signal handler will be automatically
	 * disconnected.  Note that this is not currently threadsafe (ie:
	 * emitting a signal while @gobject is being destroyed in another thread
	 * is not safe).
	 *
	 * Params:
	 *     instance_ = the instance to connect to.
	 *     detailedSignal = a string of the form "signal-name::detail".
	 *     cHandler = the #GCallback to connect.
	 *     gobject = the object to pass as data
	 *         to @c_handler.
	 *     connectFlags = a combination of #GConnectFlags.
	 *
	 * Returns: the handler id.
	 */
	public static gulong connectObject(TypeInstance instance_, string detailedSignal, GCallback cHandler, ObjectG gobject, GConnectFlags connectFlags)
	{
		return g_signal_connect_object((instance_ is null) ? null : instance_.getTypeInstanceStruct(), Str.toStringz(detailedSignal), cHandler, (gobject is null) ? null : gobject.getObjectGStruct(), connectFlags);
	}

	/**
	 * Emits a signal. Signal emission is done synchronously.
	 * The method will only return control after all handlers are called or signal emission was stopped.
	 *
	 * Note that g_signal_emit_valist() resets the return value to the default
	 * if no handlers are connected, in contrast to g_signal_emitv().
	 *
	 * Params:
	 *     instance_ = the instance the signal is being
	 *         emitted on.
	 *     signalId = the signal id
	 *     detail = the detail
	 *     varArgs = a list of parameters to be passed to the signal, followed by a
	 *         location for the return value. If the return type of the signal
	 *         is %G_TYPE_NONE, the return value location can be omitted.
	 */
	public static void emitValist(TypeInstance instance_, uint signalId, GQuark detail, void* varArgs)
	{
		g_signal_emit_valist((instance_ is null) ? null : instance_.getTypeInstanceStruct(), signalId, detail, varArgs);
	}

	/**
	 * Emits a signal. Signal emission is done synchronously.
	 * The method will only return control after all handlers are called or signal emission was stopped.
	 *
	 * Note that g_signal_emitv() doesn't change @return_value if no handlers are
	 * connected, in contrast to g_signal_emit() and g_signal_emit_valist().
	 *
	 * Params:
	 *     instanceAndParams = argument list for the signal emission.
	 *         The first element in the array is a #GValue for the instance the signal
	 *         is being emitted on. The rest are any arguments to be passed to the signal.
	 *     signalId = the signal id
	 *     detail = the detail
	 *     returnValue = Location to
	 *         store the return value of the signal emission. This must be provided if the
	 *         specified signal returns a value, but may be ignored otherwise.
	 */
	public static void emitv(Value[] instanceAndParams, uint signalId, GQuark detail, ref Value returnValue)
	{
		GValue[] instanceAndParamsArray = new GValue[instanceAndParams.length];
		for ( int i = 0; i < instanceAndParams.length; i++ )
		{
			instanceAndParamsArray[i] = *(instanceAndParams[i].getValueStruct());
		}

		g_signal_emitv(instanceAndParamsArray.ptr, signalId, detail, (returnValue is null) ? null : returnValue.getValueStruct());
	}

	/**
	 * Returns the invocation hint of the innermost signal emission of instance.
	 *
	 * Params:
	 *     instance_ = the instance to query
	 *
	 * Returns: the invocation hint of the innermost
	 *     signal emission, or %NULL if not found.
	 */
	public static GSignalInvocationHint* getInvocationHint(ObjectG instance_)
	{
		return g_signal_get_invocation_hint((instance_ is null) ? null : instance_.getObjectGStruct());
	}

	/**
	 * Blocks a handler of an instance so it will not be called during any
	 * signal emissions unless it is unblocked again. Thus "blocking" a
	 * signal handler means to temporarily deactivate it, a signal handler
	 * has to be unblocked exactly the same amount of times it has been
	 * blocked before to become active again.
	 *
	 * The @handler_id has to be a valid signal handler id, connected to a
	 * signal of @instance.
	 *
	 * Params:
	 *     instance_ = The instance to block the signal handler of.
	 *     handlerId = Handler id of the handler to be blocked.
	 */
	public static void handlerBlock(ObjectG instance_, gulong handlerId)
	{
		g_signal_handler_block((instance_ is null) ? null : instance_.getObjectGStruct(), handlerId);
	}

	/**
	 * Finds the first signal handler that matches certain selection criteria.
	 * The criteria mask is passed as an OR-ed combination of #GSignalMatchType
	 * flags, and the criteria values are passed as arguments.
	 * The match @mask has to be non-0 for successful matches.
	 * If no handler was found, 0 is returned.
	 *
	 * Params:
	 *     instance_ = The instance owning the signal handler to be found.
	 *     mask = Mask indicating which of @signal_id, @detail, @closure, @func
	 *         and/or @data the handler has to match.
	 *     signalId = Signal the handler has to be connected to.
	 *     detail = Signal detail the handler has to be connected to.
	 *     closure = The closure the handler will invoke.
	 *     func = The C closure callback of the handler (useless for non-C closures).
	 *     data = The closure data of the handler's closure.
	 *
	 * Returns: A valid non-0 signal handler id for a successful match.
	 */
	public static gulong handlerFind(ObjectG instance_, GSignalMatchType mask, uint signalId, GQuark detail, Closure closure, void* func, void* data)
	{
		return g_signal_handler_find((instance_ is null) ? null : instance_.getObjectGStruct(), mask, signalId, detail, (closure is null) ? null : closure.getClosureStruct(), func, data);
	}

	/**
	 * Returns whether @handler_id is the ID of a handler connected to @instance.
	 *
	 * Params:
	 *     instance_ = The instance where a signal handler is sought.
	 *     handlerId = the handler ID.
	 *
	 * Returns: whether @handler_id identifies a handler connected to @instance.
	 */
	public static bool handlerIsConnected(ObjectG instance_, gulong handlerId)
	{
		return g_signal_handler_is_connected((instance_ is null) ? null : instance_.getObjectGStruct(), handlerId) != 0;
	}

	/**
	 * Undoes the effect of a previous g_signal_handler_block() call.  A
	 * blocked handler is skipped during signal emissions and will not be
	 * invoked, unblocking it (for exactly the amount of times it has been
	 * blocked before) reverts its "blocked" state, so the handler will be
	 * recognized by the signal system and is called upon future or
	 * currently ongoing signal emissions (since the order in which
	 * handlers are called during signal emissions is deterministic,
	 * whether the unblocked handler in question is called as part of a
	 * currently ongoing emission depends on how far that emission has
	 * proceeded yet).
	 *
	 * The @handler_id has to be a valid id of a signal handler that is
	 * connected to a signal of @instance and is currently blocked.
	 *
	 * Params:
	 *     instance_ = The instance to unblock the signal handler of.
	 *     handlerId = Handler id of the handler to be unblocked.
	 */
	public static void handlerUnblock(ObjectG instance_, gulong handlerId)
	{
		g_signal_handler_unblock((instance_ is null) ? null : instance_.getObjectGStruct(), handlerId);
	}

	/**
	 * Blocks all handlers on an instance that match a certain selection criteria.
	 * The criteria mask is passed as an OR-ed combination of #GSignalMatchType
	 * flags, and the criteria values are passed as arguments.
	 * Passing at least one of the %G_SIGNAL_MATCH_CLOSURE, %G_SIGNAL_MATCH_FUNC
	 * or %G_SIGNAL_MATCH_DATA match flags is required for successful matches.
	 * If no handlers were found, 0 is returned, the number of blocked handlers
	 * otherwise.
	 *
	 * Params:
	 *     instance_ = The instance to block handlers from.
	 *     mask = Mask indicating which of @signal_id, @detail, @closure, @func
	 *         and/or @data the handlers have to match.
	 *     signalId = Signal the handlers have to be connected to.
	 *     detail = Signal detail the handlers have to be connected to.
	 *     closure = The closure the handlers will invoke.
	 *     func = The C closure callback of the handlers (useless for non-C closures).
	 *     data = The closure data of the handlers' closures.
	 *
	 * Returns: The number of handlers that matched.
	 */
	public static uint handlersBlockMatched(ObjectG instance_, GSignalMatchType mask, uint signalId, GQuark detail, Closure closure, void* func, void* data)
	{
		return g_signal_handlers_block_matched((instance_ is null) ? null : instance_.getObjectGStruct(), mask, signalId, detail, (closure is null) ? null : closure.getClosureStruct(), func, data);
	}

	/**
	 * Destroy all signal handlers of a type instance. This function is
	 * an implementation detail of the #GObject dispose implementation,
	 * and should not be used outside of the type system.
	 *
	 * Params:
	 *     instance_ = The instance whose signal handlers are destroyed
	 */
	public static void handlersDestroy(ObjectG instance_)
	{
		g_signal_handlers_destroy((instance_ is null) ? null : instance_.getObjectGStruct());
	}

	/**
	 * Disconnects all handlers on an instance that match a certain
	 * selection criteria. The criteria mask is passed as an OR-ed
	 * combination of #GSignalMatchType flags, and the criteria values are
	 * passed as arguments.  Passing at least one of the
	 * %G_SIGNAL_MATCH_CLOSURE, %G_SIGNAL_MATCH_FUNC or
	 * %G_SIGNAL_MATCH_DATA match flags is required for successful
	 * matches.  If no handlers were found, 0 is returned, the number of
	 * disconnected handlers otherwise.
	 *
	 * Params:
	 *     instance_ = The instance to remove handlers from.
	 *     mask = Mask indicating which of @signal_id, @detail, @closure, @func
	 *         and/or @data the handlers have to match.
	 *     signalId = Signal the handlers have to be connected to.
	 *     detail = Signal detail the handlers have to be connected to.
	 *     closure = The closure the handlers will invoke.
	 *     func = The C closure callback of the handlers (useless for non-C closures).
	 *     data = The closure data of the handlers' closures.
	 *
	 * Returns: The number of handlers that matched.
	 */
	public static uint handlersDisconnectMatched(ObjectG instance_, GSignalMatchType mask, uint signalId, GQuark detail, Closure closure, void* func, void* data)
	{
		return g_signal_handlers_disconnect_matched((instance_ is null) ? null : instance_.getObjectGStruct(), mask, signalId, detail, (closure is null) ? null : closure.getClosureStruct(), func, data);
	}

	/**
	 * Unblocks all handlers on an instance that match a certain selection
	 * criteria. The criteria mask is passed as an OR-ed combination of
	 * #GSignalMatchType flags, and the criteria values are passed as arguments.
	 * Passing at least one of the %G_SIGNAL_MATCH_CLOSURE, %G_SIGNAL_MATCH_FUNC
	 * or %G_SIGNAL_MATCH_DATA match flags is required for successful matches.
	 * If no handlers were found, 0 is returned, the number of unblocked handlers
	 * otherwise. The match criteria should not apply to any handlers that are
	 * not currently blocked.
	 *
	 * Params:
	 *     instance_ = The instance to unblock handlers from.
	 *     mask = Mask indicating which of @signal_id, @detail, @closure, @func
	 *         and/or @data the handlers have to match.
	 *     signalId = Signal the handlers have to be connected to.
	 *     detail = Signal detail the handlers have to be connected to.
	 *     closure = The closure the handlers will invoke.
	 *     func = The C closure callback of the handlers (useless for non-C closures).
	 *     data = The closure data of the handlers' closures.
	 *
	 * Returns: The number of handlers that matched.
	 */
	public static uint handlersUnblockMatched(ObjectG instance_, GSignalMatchType mask, uint signalId, GQuark detail, Closure closure, void* func, void* data)
	{
		return g_signal_handlers_unblock_matched((instance_ is null) ? null : instance_.getObjectGStruct(), mask, signalId, detail, (closure is null) ? null : closure.getClosureStruct(), func, data);
	}

	/**
	 * Returns whether there are any handlers connected to @instance for the
	 * given signal id and detail.
	 *
	 * If @detail is 0 then it will only match handlers that were connected
	 * without detail.  If @detail is non-zero then it will match handlers
	 * connected both without detail and with the given detail.  This is
	 * consistent with how a signal emitted with @detail would be delivered
	 * to those handlers.
	 *
	 * Since 2.46 this also checks for a non-default class closure being
	 * installed, as this is basically always what you want.
	 *
	 * One example of when you might use this is when the arguments to the
	 * signal are difficult to compute. A class implementor may opt to not
	 * emit the signal if no one is attached anyway, thus saving the cost
	 * of building the arguments.
	 *
	 * Params:
	 *     instance_ = the object whose signal handlers are sought.
	 *     signalId = the signal id.
	 *     detail = the detail.
	 *     mayBeBlocked = whether blocked handlers should count as match.
	 *
	 * Returns: %TRUE if a handler is connected to the signal, %FALSE
	 *     otherwise.
	 */
	public static bool hasHandlerPending(ObjectG instance_, uint signalId, GQuark detail, bool mayBeBlocked)
	{
		return g_signal_has_handler_pending((instance_ is null) ? null : instance_.getObjectGStruct(), signalId, detail, mayBeBlocked) != 0;
	}

	/**
	 * Lists the signals by id that a certain instance or interface type
	 * created. Further information about the signals can be acquired through
	 * g_signal_query().
	 *
	 * Params:
	 *     itype = Instance or interface type.
	 *
	 * Returns: Newly allocated array of signal IDs.
	 */
	public static uint[] listIds(GType itype)
	{
		uint nIds;

		auto __p = g_signal_list_ids(itype, &nIds);

		return __p[0 .. nIds];
	}

	/**
	 * Given the name of the signal and the type of object it connects to, gets
	 * the signal's identifying integer. Emitting the signal by number is
	 * somewhat faster than using the name each time.
	 *
	 * Also tries the ancestors of the given type.
	 *
	 * The type class passed as @itype must already have been instantiated (for
	 * example, using g_type_class_ref()) for this function to work, as signals are
	 * always installed during class initialization.
	 *
	 * See g_signal_new() for details on allowed signal names.
	 *
	 * Params:
	 *     name = the signal's name.
	 *     itype = the type that the signal operates on.
	 *
	 * Returns: the signal's identifying number, or 0 if no signal was found.
	 */
	public static uint lookup(string name, GType itype)
	{
		return g_signal_lookup(Str.toStringz(name), itype);
	}

	/**
	 * Given the signal's identifier, finds its name.
	 *
	 * Two different signals may have the same name, if they have differing types.
	 *
	 * Params:
	 *     signalId = the signal's identifying number.
	 *
	 * Returns: the signal name, or %NULL if the signal number was invalid.
	 */
	public static string name(uint signalId)
	{
		return Str.toString(g_signal_name(signalId));
	}

	/**
	 * Creates a new signal. (This is usually done in the class initializer.)
	 *
	 * See g_signal_new() for details on allowed signal names.
	 *
	 * If c_marshaller is %NULL, g_cclosure_marshal_generic() will be used as
	 * the marshaller for this signal.
	 *
	 * Params:
	 *     signalName = the name for the signal
	 *     itype = the type this signal pertains to. It will also pertain to
	 *         types which are derived from this type.
	 *     signalFlags = a combination of #GSignalFlags specifying detail of when
	 *         the default handler is to be invoked. You should at least specify
	 *         %G_SIGNAL_RUN_FIRST or %G_SIGNAL_RUN_LAST.
	 *     classClosure = The closure to invoke on signal emission; may be %NULL.
	 *     accumulator = the accumulator for this signal; may be %NULL.
	 *     accuData = user data for the @accumulator.
	 *     cMarshaller = the function to translate arrays of parameter
	 *         values to signal emissions into C language callback invocations or %NULL.
	 *     returnType = the type of return value, or %G_TYPE_NONE for a signal
	 *         without a return value.
	 *     nParams = the number of parameter types in @args.
	 *     args = va_list of #GType, one for each parameter.
	 *
	 * Returns: the signal id
	 */
	public static uint newValist(string signalName, GType itype, GSignalFlags signalFlags, Closure classClosure, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, void* args)
	{
		return g_signal_new_valist(Str.toStringz(signalName), itype, signalFlags, (classClosure is null) ? null : classClosure.getClosureStruct(), accumulator, accuData, cMarshaller, returnType, nParams, args);
	}

	/**
	 * Creates a new signal. (This is usually done in the class initializer.)
	 *
	 * See g_signal_new() for details on allowed signal names.
	 *
	 * If c_marshaller is %NULL, g_cclosure_marshal_generic() will be used as
	 * the marshaller for this signal.
	 *
	 * Params:
	 *     signalName = the name for the signal
	 *     itype = the type this signal pertains to. It will also pertain to
	 *         types which are derived from this type
	 *     signalFlags = a combination of #GSignalFlags specifying detail of when
	 *         the default handler is to be invoked. You should at least specify
	 *         %G_SIGNAL_RUN_FIRST or %G_SIGNAL_RUN_LAST
	 *     classClosure = The closure to invoke on signal emission;
	 *         may be %NULL
	 *     accumulator = the accumulator for this signal; may be %NULL
	 *     accuData = user data for the @accumulator
	 *     cMarshaller = the function to translate arrays of
	 *         parameter values to signal emissions into C language callback
	 *         invocations or %NULL
	 *     returnType = the type of return value, or %G_TYPE_NONE for a signal
	 *         without a return value
	 *     paramTypes = an array of types, one for
	 *         each parameter (may be %NULL if @n_params is zero)
	 *
	 * Returns: the signal id
	 */
	public static uint newv(string signalName, GType itype, GSignalFlags signalFlags, Closure classClosure, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, GType[] paramTypes)
	{
		return g_signal_newv(Str.toStringz(signalName), itype, signalFlags, (classClosure is null) ? null : classClosure.getClosureStruct(), accumulator, accuData, cMarshaller, returnType, cast(uint)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * Overrides the class closure (i.e. the default handler) for the given signal
	 * for emissions on instances of @instance_type. @instance_type must be derived
	 * from the type to which the signal belongs.
	 *
	 * See g_signal_chain_from_overridden() and
	 * g_signal_chain_from_overridden_handler() for how to chain up to the
	 * parent class closure from inside the overridden one.
	 *
	 * Params:
	 *     signalId = the signal id
	 *     instanceType = the instance type on which to override the class closure
	 *         for the signal.
	 *     classClosure = the closure.
	 */
	public static void overrideClassClosure(uint signalId, GType instanceType, Closure classClosure)
	{
		g_signal_override_class_closure(signalId, instanceType, (classClosure is null) ? null : classClosure.getClosureStruct());
	}

	/**
	 * Overrides the class closure (i.e. the default handler) for the
	 * given signal for emissions on instances of @instance_type with
	 * callback @class_handler. @instance_type must be derived from the
	 * type to which the signal belongs.
	 *
	 * See g_signal_chain_from_overridden() and
	 * g_signal_chain_from_overridden_handler() for how to chain up to the
	 * parent class closure from inside the overridden one.
	 *
	 * Params:
	 *     signalName = the name for the signal
	 *     instanceType = the instance type on which to override the class handler
	 *         for the signal.
	 *     classHandler = the handler.
	 *
	 * Since: 2.18
	 */
	public static void overrideClassHandler(string signalName, GType instanceType, GCallback classHandler)
	{
		g_signal_override_class_handler(Str.toStringz(signalName), instanceType, classHandler);
	}

	/**
	 * Internal function to parse a signal name into its @signal_id
	 * and @detail quark.
	 *
	 * Params:
	 *     detailedSignal = a string of the form "signal-name::detail".
	 *     itype = The interface/instance type that introduced "signal-name".
	 *     signalIdP = Location to store the signal id.
	 *     detailP = Location to store the detail quark.
	 *     forceDetailQuark = %TRUE forces creation of a #GQuark for the detail.
	 *
	 * Returns: Whether the signal name could successfully be parsed and @signal_id_p and @detail_p contain valid return values.
	 */
	public static bool parseName(string detailedSignal, GType itype, out uint signalIdP, out GQuark detailP, bool forceDetailQuark)
	{
		return g_signal_parse_name(Str.toStringz(detailedSignal), itype, &signalIdP, &detailP, forceDetailQuark) != 0;
	}

	/**
	 * Queries the signal system for in-depth information about a
	 * specific signal. This function will fill in a user-provided
	 * structure to hold signal-specific information. If an invalid
	 * signal id is passed in, the @signal_id member of the #GSignalQuery
	 * is 0. All members filled into the #GSignalQuery structure should
	 * be considered constant and have to be left untouched.
	 *
	 * Params:
	 *     signalId = The signal id of the signal to query information for.
	 *     query = A user provided structure that is
	 *         filled in with constant values upon success.
	 */
	public static void query(uint signalId, out GSignalQuery query)
	{
		g_signal_query(signalId, &query);
	}

	/**
	 * Deletes an emission hook.
	 *
	 * Params:
	 *     signalId = the id of the signal
	 *     hookId = the id of the emission hook, as returned by
	 *         g_signal_add_emission_hook()
	 */
	public static void removeEmission(uint signalId, gulong hookId)
	{
		g_signal_remove_emission_hook(signalId, hookId);
	}

	/**
	 * Change the #GSignalCVaMarshaller used for a given signal.  This is a
	 * specialised form of the marshaller that can often be used for the
	 * common case of a single connected signal handler and avoids the
	 * overhead of #GValue.  Its use is optional.
	 *
	 * Params:
	 *     signalId = the signal id
	 *     instanceType = the instance type on which to set the marshaller.
	 *     vaMarshaller = the marshaller to set.
	 *
	 * Since: 2.32
	 */
	public static void setVaMarshaller(uint signalId, GType instanceType, GSignalCVaMarshaller vaMarshaller)
	{
		g_signal_set_va_marshaller(signalId, instanceType, vaMarshaller);
	}

	/**
	 * Stops a signal's current emission.
	 *
	 * This will prevent the default method from running, if the signal was
	 * %G_SIGNAL_RUN_LAST and you connected normally (i.e. without the "after"
	 * flag).
	 *
	 * Prints a warning if used on a signal which isn't being emitted.
	 *
	 * Params:
	 *     instance_ = the object whose signal handlers you wish to stop.
	 *     signalId = the signal identifier, as returned by g_signal_lookup().
	 *     detail = the detail which the signal was emitted with.
	 */
	public static void stopEmission(ObjectG instance_, uint signalId, GQuark detail)
	{
		g_signal_stop_emission((instance_ is null) ? null : instance_.getObjectGStruct(), signalId, detail);
	}

	/**
	 * Stops a signal's current emission.
	 *
	 * This is just like g_signal_stop_emission() except it will look up the
	 * signal id for you.
	 *
	 * Params:
	 *     instance_ = the object whose signal handlers you wish to stop.
	 *     detailedSignal = a string of the form "signal-name::detail".
	 */
	public static void stopEmissionByName(ObjectG instance_, string detailedSignal)
	{
		g_signal_stop_emission_by_name((instance_ is null) ? null : instance_.getObjectGStruct(), Str.toStringz(detailedSignal));
	}

	/**
	 * Creates a new closure which invokes the function found at the offset
	 * @struct_offset in the class structure of the interface or classed type
	 * identified by @itype.
	 *
	 * Params:
	 *     itype = the #GType identifier of an interface or classed type
	 *     structOffset = the offset of the member function of @itype's class
	 *         structure which is to be invoked by the new closure
	 *
	 * Returns: a floating reference to a new #GCClosure
	 */
	public static Closure typeCclosureNew(GType itype, uint structOffset)
	{
		auto __p = g_signal_type_cclosure_new(itype, structOffset);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Closure)(cast(GClosure*) __p);
	}

	/**
	 * Disconnects a handler from @instance so it will not be called during
	 * any future or currently ongoing emissions of the signal it has been
	 * connected to. The @handler_id_ptr is then set to zero, which is never a valid handler ID value (see g_signal_connect()).
	 *
	 * If the handler ID is 0 then this function does nothing.
	 *
	 * There is also a macro version of this function so that the code
	 * will be inlined.
	 *
	 * Params:
	 *     handlerIdPtr = A pointer to a handler ID (of type #gulong) of the handler to be disconnected.
	 *     instance_ = The instance to remove the signal handler from.
	 *         This pointer may be %NULL or invalid, if the handler ID is zero.
	 *
	 * Since: 2.62
	 */
	public static void clearSignalHandler(gulong* handlerIdPtr, ObjectG instance_)
	{
		g_clear_signal_handler(handlerIdPtr, (instance_ is null) ? null : instance_.getObjectGStruct());
	}
}
