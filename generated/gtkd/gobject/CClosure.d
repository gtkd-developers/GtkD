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


module gobject.CClosure;

private import glib.ConstructionException;
private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.TypeInstance;
private import gobject.Value;
private import gtkc.gobject;
public  import gtkc.gobjecttypes;


/**
 * A #GCClosure is a specialization of #GClosure for C function callbacks.
 */
public class CClosure
{
	/** the main Gtk struct */
	protected GCClosure* gCClosure;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GCClosure* getCClosureStruct()
	{
		return gCClosure;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gCClosure;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GCClosure* gCClosure, bool ownedRef = false)
	{
		this.gCClosure = gCClosure;
		this.ownedRef = ownedRef;
	}

	/**
	 * Creates a new closure which invokes callbackFunc with userData as
	 * the last parameter.
	 *
	 * Params:
	 *     callbackFunc = the function to invoke
	 *     userData = user data to pass to callbackFunc
	 *     destroyData = destroy notify to be called when userData is no longer used
	 *     swap = if true invoce with usrData as the first parameter
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GCallback callbackFunc, void* userData, GClosureNotify destroyData, bool swap)
	{
		GClosure* p;
		
		if ( swap )
			p = g_cclosure_new_swap(callbackFunc, userData, destroyData);
		else
			p = g_cclosure_new(callbackFunc, userData, destroyData);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GCClosure*) p);
	}
	
	/**
	 * A variant of this() which uses object as userData and
	 * calls ObjectG.watchClosure() on object and the created
	 * closure. This function is useful when you have a callback closely
	 * associated with a gobject.ObjectG, and want the callback to no longer run
	 * after the object is is freed.
	 *
	 * Params:
	 *     callbackFunc = the function to invoke
	 *     object = a gobject.ObjectG.ObjectG to pass to callbackFunc
	 *     swap = if true invoce with usrData as the first parameter
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GCallback callbackFunc, ObjectG object, bool swap)
	{
		GClosure* p;
		
		if ( swap )
			p = g_cclosure_new_object_swap(callbackFunc, (object is null) ? null : object.getObjectGStruct());
		else
			p = g_cclosure_new_object(callbackFunc, (object is null) ? null : object.getObjectGStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_object");
		}
		
		this(cast(GCClosure*) p);
	}

	/**
	 */

	/**
	 * A #GClosureMarshal function for use with signals with handlers that
	 * take two boxed pointers as arguments and return a boolean.  If you
	 * have such a signal, you will probably also need to use an
	 * accumulator, such as g_signal_accumulator_true_handled().
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalBOOLEANBOXEDBOXED(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_BOOLEAN__BOXED_BOXED((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_BOOLEAN__BOXED_BOXED().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalBOOLEANBOXEDBOXEDv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with handlers that
	 * take a flags type as an argument and return a boolean.  If you have
	 * such a signal, you will probably also need to use an accumulator,
	 * such as g_signal_accumulator_true_handled().
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalBOOLEANFLAGS(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_BOOLEAN__FLAGS((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_BOOLEAN__FLAGS().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalBOOLEANFLAGSv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_BOOLEAN__FLAGSv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with handlers that
	 * take a #GObject and a pointer and produce a string.  It is highly
	 * unlikely that your signal handler fits this description.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalSTRINGOBJECTPOINTER(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_STRING__OBJECT_POINTER((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_STRING__OBJECT_POINTER().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalSTRINGOBJECTPOINTERv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_STRING__OBJECT_POINTERv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * boolean argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDBOOLEAN(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__BOOLEAN((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__BOOLEAN().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDBOOLEANv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__BOOLEANv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * argument which is any boxed pointer type.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDBOXED(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__BOXED((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__BOXED().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDBOXEDv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__BOXEDv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * character argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDCHAR(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__CHAR((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__CHAR().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDCHARv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__CHARv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with one
	 * double-precision floating point argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDDOUBLE(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__DOUBLE((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__DOUBLE().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDDOUBLEv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__DOUBLEv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * argument with an enumerated type.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDENUM(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__ENUM((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__ENUM().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDENUMv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__ENUMv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * argument with a flags types.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDFLAGS(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__FLAGS((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__FLAGS().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDFLAGSv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__FLAGSv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with one
	 * single-precision floating point argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDFLOAT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__FLOAT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__FLOAT().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDFLOATv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__FLOATv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * integer argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDINT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__INT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__INT().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDINTv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__INTv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with with a single
	 * long integer argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDLONG(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__LONG((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__LONG().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDLONGv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__LONGv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * #GObject argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDOBJECT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__OBJECT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__OBJECT().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDOBJECTv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__OBJECTv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * argument of type #GParamSpec.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDPARAM(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__PARAM((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__PARAM().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDPARAMv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__PARAMv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single raw
	 * pointer argument type.
	 *
	 * If it is possible, it is better to use one of the more specific
	 * functions such as g_cclosure_marshal_VOID__OBJECT() or
	 * g_cclosure_marshal_VOID__OBJECT().
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDPOINTER(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__POINTER((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__POINTER().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDPOINTERv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__POINTERv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single string
	 * argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDSTRING(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__STRING((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__STRING().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDSTRINGv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__STRINGv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * unsigned character argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDUCHAR(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__UCHAR((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__UCHAR().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDUCHARv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__UCHARv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with with a single
	 * unsigned integer argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDUINT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__UINT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a unsigned int
	 * and a pointer as arguments.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDUINTPOINTER(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__UINT_POINTER((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__UINT_POINTER().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDUINTPOINTERv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__UINT_POINTERv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__UINT().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDUINTv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__UINTv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * unsigned long integer argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDULONG(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__ULONG((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__ULONG().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDULONGv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__ULONGv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with a single
	 * #GVariant argument.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDVARIANT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__VARIANT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__VARIANT().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDVARIANTv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__VARIANTv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A #GClosureMarshal function for use with signals with no arguments.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnValue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 */
	public static void marshalVOIDVOID(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_VOID__VOID((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * The #GVaClosureMarshal equivalent to g_cclosure_marshal_VOID__VOID().
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is invoked.
	 *     args = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args.
	 */
	public static void marshalVOIDVOIDv(Closure closure, Value returnValue, TypeInstance instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_VOID__VOIDv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), args, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}

	/**
	 * A generic marshaller function implemented via
	 * [libffi](http://sourceware.org/libffi/).
	 *
	 * Normally this function is not passed explicitly to g_signal_new(),
	 * but used automatically by GLib when specifying a %NULL marshaller.
	 *
	 * Params:
	 *     closure = A #GClosure.
	 *     returnGvalue = A #GValue to store the return value. May be %NULL
	 *         if the callback of closure doesn't return a value.
	 *     nParamValues = The length of the @param_values array.
	 *     paramValues = An array of #GValues holding the arguments
	 *         on which to invoke the callback of closure.
	 *     invocationHint = The invocation hint given as the last argument to
	 *         g_closure_invoke().
	 *     marshalData = Additional data specified when registering the
	 *         marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *
	 * Since: 2.30
	 */
	public static void marshalGeneric(Closure closure, Value returnGvalue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		g_cclosure_marshal_generic((closure is null) ? null : closure.getClosureStruct(), (returnGvalue is null) ? null : returnGvalue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * A generic #GVaClosureMarshal function implemented via
	 * [libffi](http://sourceware.org/libffi/).
	 *
	 * Params:
	 *     closure = the #GClosure to which the marshaller belongs
	 *     returnValue = a #GValue to store the return
	 *         value. May be %NULL if the callback of @closure doesn't return a
	 *         value.
	 *     instanc = the instance on which the closure is
	 *         invoked.
	 *     argsList = va_list of arguments to be passed to the closure.
	 *     marshalData = additional data specified when
	 *         registering the marshaller, see g_closure_set_marshal() and
	 *         g_closure_set_meta_marshal()
	 *     nParams = the length of the @param_types array
	 *     paramTypes = the #GType of each argument from
	 *         @args_list.
	 *
	 * Since: 2.30
	 */
	public static void marshalGenericVa(Closure closure, Value returnValue, TypeInstance instanc, void* argsList, void* marshalData, GType[] paramTypes)
	{
		g_cclosure_marshal_generic_va((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), (instanc is null) ? null : instanc.getTypeInstanceStruct(), argsList, marshalData, cast(int)paramTypes.length, paramTypes.ptr);
	}
}
