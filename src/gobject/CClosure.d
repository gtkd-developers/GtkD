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
 * 	- g_cclosure_
 * omit structs:
 * omit prefixes:
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
 * overrides:
 */

module gobject.CClosure;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.Value;




/**
 * Description
 * A GClosure represents a callback supplied by the programmer. It
 * will generally comprise a function of some kind and a marshaller
 * used to call it. It is the reponsibility of the marshaller to
 * convert the arguments for the invocation from GValues into
 * a suitable form, perform the callback on the converted arguments,
 * and transform the return value back into a GValue.
 * In the case of C programs, a closure usually just holds a pointer
 * to a function and maybe a data argument, and the marshaller
 * converts between GValue and native C types. The GObject
 * library provides the GCClosure type for this purpose. Bindings for
 * other languages need marshallers which convert between GValues and suitable representations in the runtime of the language in
 * order to use functions written in that languages as callbacks.
 * Within GObject, closures play an important role in the
 * implementation of signals. When a signal is registered, the
 * c_marshaller argument to g_signal_new() specifies the default C
 * marshaller for any closure which is connected to this
 * signal. GObject provides a number of C marshallers for this
 * purpose, see the g_cclosure_marshal_*() functions. Additional C
 * marshallers can be generated with the glib-genmarshal utility. Closures
 * can be explicitly connected to signals with
 * g_signal_connect_closure(), but it usually more convenient to let
 * GObject create a closure automatically by using one of the
 * g_signal_connect_*() functions which take a callback function/user
 * data pair.
 * Using closures has a number of important advantages over a simple
 * callback function/data pointer combination:
 * Closures allow the callee to get the types of the callback parameters,
 * which means that language bindings don't have to write individual glue
 * for each callback type.
 * The reference counting of GClosure makes it easy to handle reentrancy
 * right; if a callback is removed while it is being invoked, the closure
 * and its parameters won't be freed until the invocation finishes.
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
	 * Returns: a new GCClosure
	 */
	public static Closure newCClosure(GCallback callbackFunc, void* userData, GClosureNotify destroyData)
	{
		// GClosure * g_cclosure_new (GCallback callback_func,  gpointer user_data,  GClosureNotify destroy_data);
		auto p = g_cclosure_new(callbackFunc, userData, destroyData);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Closure)(cast(GClosure*) p);
	}
	
	/**
	 * Creates a new closure which invokes callback_func with user_data as
	 * the first parameter.
	 * Params:
	 * callbackFunc = the function to invoke
	 * userData = user data to pass to callback_func
	 * destroyData = destroy notify to be called when user_data is no longer used
	 * Returns: a new GCClosure. [transfer full]
	 */
	public static Closure newSwap(GCallback callbackFunc, void* userData, GClosureNotify destroyData)
	{
		// GClosure * g_cclosure_new_swap (GCallback callback_func,  gpointer user_data,  GClosureNotify destroy_data);
		auto p = g_cclosure_new_swap(callbackFunc, userData, destroyData);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Closure)(cast(GClosure*) p);
	}
	
	/**
	 * A variant of g_cclosure_new() which uses object as user_data and
	 * calls g_object_watch_closure() on object and the created
	 * closure. This function is useful when you have a callback closely
	 * associated with a GObject, and want the callback to no longer run
	 * after the object is is freed.
	 * Params:
	 * callbackFunc = the function to invoke
	 * object = a GObject pointer to pass to callback_func
	 * Returns: a new GCClosure
	 */
	public static Closure newObject(GCallback callbackFunc, ObjectG object)
	{
		// GClosure * g_cclosure_new_object (GCallback callback_func,  GObject *object);
		auto p = g_cclosure_new_object(callbackFunc, (object is null) ? null : object.getObjectGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Closure)(cast(GClosure*) p);
	}
	
	/**
	 * A variant of g_cclosure_new_swap() which uses object as user_data
	 * and calls g_object_watch_closure() on object and the created
	 * closure. This function is useful when you have a callback closely
	 * associated with a GObject, and want the callback to no longer run
	 * after the object is is freed.
	 * Params:
	 * callbackFunc = the function to invoke
	 * object = a GObject pointer to pass to callback_func
	 * Returns: a new GCClosure
	 */
	public static Closure newObjectSwap(GCallback callbackFunc, ObjectG object)
	{
		// GClosure * g_cclosure_new_object_swap (GCallback callback_func,  GObject *object);
		auto p = g_cclosure_new_object_swap(callbackFunc, (object is null) ? null : object.getObjectGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Closure)(cast(GClosure*) p);
	}
	
	/**
	 * A generic marshaller function implemented via libffi.
	 * Since 2.30
	 * Params:
	 * closure = A GClosure.
	 * returnGvalue = A GValue to store the return value. May be NULL
	 * if the callback of closure doesn't return a value.
	 * paramValues = An array of GValues holding the arguments
	 * on which to invoke the callback of closure.
	 * invocationHint = The invocation hint given as the last argument to
	 * g_closure_invoke().
	 * marshalData = Additional data specified when registering the
	 * marshaller, see g_closure_set_marshal() and
	 * g_closure_set_meta_marshal()
	 */
	public static void marshalGeneric(Closure closure, Value returnGvalue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_generic (GClosure *closure,  GValue *return_gvalue,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_generic((closure is null) ? null : closure.getClosureStruct(), (returnGvalue is null) ? null : returnGvalue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding only the instance
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__VOID(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__VOID (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__VOID((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gboolean arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the gboolean parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__BOOLEAN(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__BOOLEAN (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__BOOLEAN((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gchar arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the gchar parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__CHAR(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__CHAR (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__CHAR((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, guchar arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the guchar parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__UCHAR(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__UCHAR (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__UCHAR((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gint arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the gint parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__INT(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__INT (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__INT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, guint arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the guint parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__UINT(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__UINT (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__UINT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, glong arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the glong parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__LONG(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__LONG (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__LONG((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gulong arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the gulong parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__ULONG(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__ULONG (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__ULONG((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gint arg1, gpointer user_data) where the gint parameter denotes an enumeration type..
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the enumeration parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__ENUM(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__ENUM (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__ENUM((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gint arg1, gpointer user_data) where the gint parameter denotes a flags type.
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the flags parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__FLAGS(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__FLAGS (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__FLAGS((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gfloat arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the gfloat parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__FLOAT(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__FLOAT (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__FLOAT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gdouble arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the gdouble parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__DOUBLE(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__DOUBLE (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__DOUBLE((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, const gchar *arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the gchar* parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__STRING(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__STRING (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__STRING((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, GParamSpec *arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the GParamSpec* parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__PARAM(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__PARAM (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__PARAM((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, GBoxed *arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the GBoxed* parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__BOXED(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__BOXED (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__BOXED((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, gpointer arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the gpointer parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__POINTER(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__POINTER (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__POINTER((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, GObject *arg1, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the GObject* parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__OBJECT(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__OBJECT (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__OBJECT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, GVariant *arg1, gpointer user_data).
	 * Since 2.26
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding the instance and the GVariant* parameter
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__VARIANT(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__VARIANT (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__VARIANT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * gchar* (*callback) (gpointer instance, GObject *arg1, gpointer arg2, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = a GValue, which can store the returned string
	 * paramValues = a GValue array holding instance, arg1 and arg2
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalSTRING__OBJECT_POINTER(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_STRING__OBJECT_POINTER  (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_STRING__OBJECT_POINTER((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * void (*callback) (gpointer instance, guint arg1, gpointer arg2, gpointer user_data).
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = ignored
	 * paramValues = a GValue array holding instance, arg1 and arg2
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalVOID__UINT_POINTER(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_VOID__UINT_POINTER  (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_VOID__UINT_POINTER((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 * A marshaller for a GCClosure with a callback of type
	 * gboolean (*callback) (gpointer instance, gint arg1, gpointer user_data) where the gint parameter
	 * denotes a flags type.
	 * Params:
	 * closure = the GClosure to which the marshaller belongs
	 * returnValue = a GValue which can store the returned gboolean
	 * paramValues = a GValue array holding instance and arg1
	 * invocationHint = the invocation hint given as the last argument
	 * to g_closure_invoke()
	 * marshalData = additional data specified when registering the marshaller
	 */
	public static void marshalBOOLEAN__FLAGS(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_BOOLEAN__FLAGS (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_BOOLEAN__FLAGS((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 */
	public static void marshalBOOLEAN__BOXED_BOXED(Closure closure, Value returnValue, GValue[] paramValues, void* invocationHint, void* marshalData)
	{
		// void g_cclosure_marshal_BOOLEAN__BOXED_BOXED  (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
		g_cclosure_marshal_BOOLEAN__BOXED_BOXED((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), cast(int) paramValues.length, paramValues.ptr, invocationHint, marshalData);
	}
	
	/**
	 */
	public static void marshalGenericVa(Closure closure, Value returnValue, void* instanc, void* argsList, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_generic_va (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args_list,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_generic_va((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, argsList, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__VOIDv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__VOIDv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__VOIDv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__BOOLEANv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__BOOLEANv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__BOOLEANv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__CHARv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__CHARv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__CHARv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__UCHARv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__UCHARv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__UCHARv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__INTv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__INTv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__INTv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__UINTv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__UINTv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__UINTv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__LONGv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__LONGv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__LONGv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__ULONGv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__ULONGv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__ULONGv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__ENUMv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__ENUMv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__ENUMv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__FLAGSv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__FLAGSv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__FLAGSv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__FLOATv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__FLOATv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__FLOATv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__DOUBLEv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__DOUBLEv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__DOUBLEv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__STRINGv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__STRINGv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__STRINGv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__PARAMv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__PARAMv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__PARAMv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__BOXEDv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__BOXEDv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__BOXEDv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__POINTERv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__POINTERv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__POINTERv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__OBJECTv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__OBJECTv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__OBJECTv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__VARIANTv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__VARIANTv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__VARIANTv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalSTRING__OBJECT_POINTERv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_STRING__OBJECT_POINTERv  (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_STRING__OBJECT_POINTERv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalVOID__UINT_POINTERv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_VOID__UINT_POINTERv  (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_VOID__UINT_POINTERv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
	
	/**
	 */
	public static void marshalBOOLEAN__FLAGSv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, int nParams, GType* paramTypes)
	{
		// void g_cclosure_marshal_BOOLEAN__FLAGSv (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_BOOLEAN__FLAGSv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, nParams, paramTypes);
	}
	
	/**
	 */
	public static void marshalBOOLEAN__BOXED_BOXEDv(Closure closure, Value returnValue, void* instanc, void* args, void* marshalData, GType[] paramTypes)
	{
		// void g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv  (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
		g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), instanc, args, marshalData, cast(int) paramTypes.length, paramTypes.ptr);
	}
}
