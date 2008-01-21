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
 * inFile  = 
 * outPack = gobject
 * outFile = CClosure
 * strct   = GCClosure
 * realStrct=
 * ctorStrct=
 * clss    = CClosure
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_cclosure
 * omit structs:
 * omit prefixes:
 * 	- g_closure_
 * 	- g_source_set_closure
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.Closure
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * structWrap:
 * 	- GClosure* -> Closure
 * 	- GObject* -> ObjectG
 * 	- GValue* -> Value
 * module aliases:
 * local aliases:
 */

module gobject.CClosure;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;


private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.Value;




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
public class CClosure
{
	
	/** the main Gtk struct */
	protected GCClosure* gCClosure;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GCClosure* gCClosure)
	{
		if(gCClosure is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gCClosure passed to constructor.");
			else return;
		}
		this.gCClosure = gCClosure;
	}
	
	/**
	 */
	
	/**
	 * Creates a new closure which invokes callback_func with user_data as
	 * the last parameter.
	 * Params:
	 * callbackFunc = the function to invoke
	 * userData = user data to pass to callback_func
	 * destroyData = destroy notify to be called when user_data is no longer used
	 * Returns:a new GCClosure
	 */
	public static Closure _New(GCallback callbackFunc, void* userData, GClosureNotify destroyData)
	{
		// GClosure* g_cclosure_new (GCallback callback_func,  gpointer user_data,  GClosureNotify destroy_data);
		auto p = g_cclosure_new(callbackFunc, userData, destroyData);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Closure(cast(GClosure*) p);
	}
	
	/**
	 * Creates a new closure which invokes callback_func with user_data as
	 * the first parameter.
	 * Params:
	 * callbackFunc = the function to invoke
	 * userData = user data to pass to callback_func
	 * destroyData = destroy notify to be called when user_data is no longer used
	 * Returns:a new GCClosure
	 */
	public static Closure _NewSwap(GCallback callbackFunc, void* userData, GClosureNotify destroyData)
	{
		// GClosure* g_cclosure_new_swap (GCallback callback_func,  gpointer user_data,  GClosureNotify destroy_data);
		auto p = g_cclosure_new_swap(callbackFunc, userData, destroyData);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Closure(cast(GClosure*) p);
	}
	
	/**
	 * A variant of g_cclosure_new() which uses object as user_data and calls
	 * g_object_watch_closure() on object and the created closure. This function
	 * is useful when you have a callback closely associated with a GObject,
	 * and want the callback to no longer run after the object is is freed.
	 * Params:
	 * callbackFunc = the function to invoke
	 * object = a GObject pointer to pass to callback_func
	 * Returns:a new GCClosure
	 */
	public static Closure _NewObject(GCallback callbackFunc, ObjectG object)
	{
		// GClosure* g_cclosure_new_object (GCallback callback_func,  GObject *object);
		auto p = g_cclosure_new_object(callbackFunc, (object is null) ? null : object.getObjectGStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Closure(cast(GClosure*) p);
	}
	
	/**
	 * A variant of g_cclosure_new_swap() which uses object as user_data and calls
	 * g_object_watch_closure() on object and the created closure. This function
	 * is useful when you have a callback closely associated with a GObject,
	 * and want the callback to no longer run after the object is is freed.
	 * Params:
	 * callbackFunc = the function to invoke
	 * object = a GObject pointer to pass to callback_func
	 * Returns:a new GCClosure
	 */
	public static Closure _NewObjectSwap(GCallback callbackFunc, ObjectG object)
	{
		// GClosure* g_cclosure_new_object_swap (GCallback callback_func,  GObject *object);
		auto p = g_cclosure_new_object_swap(callbackFunc, (object is null) ? null : object.getObjectGStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Closure(cast(GClosure*) p);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 1
	 * paramValues = a GValue array holding only the instance
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__VOID(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__VOID (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__VOID((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gboolean arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the gboolean parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__BOOLEAN(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__BOOLEAN (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__BOOLEAN((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gchar arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the gchar parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__CHAR(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__CHAR (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__CHAR((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, guchar arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the guchar parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__UCHAR(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__UCHAR (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__UCHAR((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gint arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the gint parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__INT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__INT (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__INT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, guint arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the guint parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__UINT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__UINT (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__UINT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, glong arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the glong parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__LONG(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__LONG (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__LONG((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gulong arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the gulong parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__ULONG(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__ULONG (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__ULONG((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gint arg1, gpointer user_data) where the gint parameter denotes an enumeration type..
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the enumeration parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__ENUM(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__ENUM (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__ENUM((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gint arg1, gpointer user_data) where the gint parameter denotes a flags type
	 * denotes a flags type.
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the flags parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__FLAGS(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__FLAGS (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__FLAGS((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gfloat arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the gfloat parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__FLOAT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__FLOAT (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__FLOAT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gdouble arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the gdouble parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__DOUBLE(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__DOUBLE (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__DOUBLE((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, const gchar *arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the gchar* parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__STRING(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__STRING (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__STRING((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, GParamSpec *arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the GParamSpec* parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__PARAM(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__PARAM (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__PARAM((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, GBoxed *arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the GBoxed* parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__BOXED(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__BOXED (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__BOXED((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gpointer arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the gpointer parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__POINTER(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__POINTER (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__POINTER((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, GOBject *arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 2
	 * paramValues = a GValue array holding the instance and the GObject* parameter
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__OBJECT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__OBJECT (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__OBJECT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, GObject *arg1, gpointer arg2, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 3
	 * paramValues = a GValue array holding instance, arg1 and arg2
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalSTRING__OBJECT_POINTER(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_STRING__OBJECT_POINTER  (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_STRING__OBJECT_POINTER((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, guint arg1, gpointer arg2, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * nParamValues = 3
	 * paramValues = a GValue array holding instance, arg1 and arg2
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalVOID__UINT_POINTER(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__UINT_POINTER  (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__UINT_POINTER((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * gboolean (*callback) (gpointer instance, gint arg1, gpointer user_data) where the gint parameter
	 * denotes a flags type.
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = a GValue which can store the returned gboolean
	 * nParamValues = 2
	 * paramValues = a GValue array holding instance and arg1
	 * invocationHint = the invocation hint given as the the last argument
	 *  to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void _MarshalBOOLEAN__FLAGS(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_BOOLEAN__FLAGS (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_BOOLEAN__FLAGS((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}
}
