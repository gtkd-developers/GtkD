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


module gobject.DClosure;

private import core.memory;
private import glib.Str;
private import glib.Variant;
private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.c.functions;
public  import gobject.c.types;
private import std.algorithm;
private import std.conv;
private import std.traits;
private import std.typecons;


/** */
struct DGClosure(T)
{
	GClosure closure;
	T callback;
}

/**
 * DClosure is a wrapper around the gobject library's GClosure with special handling for marshalling D delegates and function pointers as callbacks.
 *
 * Closures are central to the concept of asynchronous signal delivery which is widely used throughout GTK+ and GNOME applications.
 * A closure is an abstraction, a generic representation of a callback.
 */
class DClosure : Closure
{
	private void* callback;

	/** Get the main Gtk struct */
	public GClosure* getDClosureStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gClosure;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GClosure* gClosure, bool ownedRef = false)
	{
		super(gClosure, ownedRef);
	}

	/**
	 * Create a new Closure that will call `callback` when it's invoked.
	 *
	 * Params:
	 *     callback = a delegate or function to call when the DClosure is invoked.
	 *     swap     = Should the first and last parameter passed to the callback be swapped.
	 *                This is usefull when using the closure for a Signal, where the instance is
	 *                 the first parameter, but when using delegates it usually isn't used.
	 */
	this(T)(T callback, bool swap = false)
	if ( isCallable!T )
	{
		GClosure* gClosure = g_closure_new_simple(DGClosure!(T).sizeof, null);
		g_closure_ref(gClosure);
		g_closure_sink(gClosure);
		g_closure_set_marshal(gClosure, &d_closure_marshal!T);
		if ( swap ) gClosure.derivativeFlag = true;

		auto dClosure = cast(DGClosure!(T)*)gClosure;
		dClosure.callback = callback;

		static if ( isDelegate!T )
			this.callback = callback.ptr;
		else static if ( isFunctionPointer!T )
			this.callback = callback;
		else
			this.callback = &callback;

		super(gClosure, true);
	}

	extern(C) static void d_closure_marshal(T)(GClosure* closure, GValue* return_value, uint n_param_values, /*const*/ GValue* param_values, void* invocation_hint, void* marshal_data)
	{
		DGClosure!(T)* cl = cast(DGClosure!(T)*)closure;

		if ( Parameters!(T).length > n_param_values )
			assert(false, "DClosure doesn't have enough parameters.");

		if ( closure.derivativeFlag )
		{
			GValue[] swapped = new GValue[n_param_values];
			swapped[0..n_param_values-1] = param_values[1..n_param_values];
			swapped[n_param_values-1] = param_values[0];
			param_values = swapped.ptr;
		}

		mixin(getCallbackCall!T());
	}

	private static string getCallbackCall(T)()
	{
		if (!__ctfe) assert(false);

		string call;

		alias Params = Parameters!T;
		foreach ( param; Params )
		{
			static if ( __traits(compiles, TemplateOf!param) && __traits(isSame, TemplateOf!param, glib.c.types.Scoped) )
				call ~= "import "~moduleName!(TemplateArgsOf!(param)[0])~";\n";
			else static if ( is(param == class) || is(param == interface) || is(param == struct) || is(param == enum) )
				call ~= "import "~moduleName!param~";\n";
			else static if ( isPointer!param && ( is(PointerTarget!param == struct) || is(PointerTarget!param == enum)) )
				//The moduleName template gives an forward reference error here.
			call ~= "import "~fullyQualifiedName!param.findSplitAfter(".c.types")[0]~";\n";
		}
		alias Ret = ReturnType!T;
		static if ( is(Ret == class) || is(Ret == interface) || is(Ret == struct) || is(Ret == enum) )
			call ~= "import "~moduleName!Ret~";\n";
		else static if ( isPointer!Ret && ( is(PointerTarget!Ret == struct) || is(PointerTarget!Ret == enum)) )
			call ~= "import "~fullyQualifiedName!Ret.findSplitAfter(".c.types")[0]~";\n";

		static if ( !is(Ret == void) )
			call ~= "auto ret = ";
		call ~= "cl.callback(";

		foreach ( i, param; Params )
		{
			if ( i > 0 )
				call ~= ", ";
			call ~= getValue!param(i);
		}
		call ~= ");\n";

		static if ( is(Ret == bool) )
			call ~= "g_value_set_boolean(return_value, ret);";
		else static if ( is(Ret == byte) )
			call ~= "g_value_set_schar(return_value, ret);";
		else static if ( is(Ret == ubyte) || is(Ret == char) )
			call ~= "g_value_set_uchar(return_value, ret);";
		else static if ( is(Ret == int) )
			call ~= "g_value_set_int(return_value, ret);";
		else static if ( is(Ret == uint) )
			call ~= "g_value_set_uint(return_value, ret);";
		else static if ( is(Ret == long) )
			call ~= "g_value_set_int64(return_value, ret);";
		else static if ( is(Ret == ulong) )
			call ~= "g_value_set_uint64(return_value, ret);";
		else static if ( is(Ret == float) )
			call ~= "g_value_set_float(return_value, ret);";
		else static if ( is(Ret == double) )
			call ~= "g_value_set_double(return_value, ret);";
		else static if ( is(Ret == string) )
			call ~= "g_value_set_string(return_value, Str.toStringz(ret));";
		else static if ( is(Ret == string[]) )
			call ~= "g_value_set_pointer(return_value, Str.toStringzArray(ret));";
		else static if ( is(Ret == enum) )
			call ~= "g_type_is_a(return_value.gType, GType.ENUM) ? g_value_set_enum(return_value, ret) : g_value_set_flags(return_value, ret);";
		else static if ( isPointer!Ret )
			call ~= "g_type_is_a(return_value.gType, GType.POINTER) ? g_value_set_pointer(return_value, ret) : (g_type_is_a(return_value.gType, GType.BOXED) ? g_value_set_boxed(return_value, ret) : g_value_set_object(return_value, ret));";
		else static if ( is(Ret == interface) )
			call ~= "g_value_set_object(return_value, (cast(ObjectG)ret).getObjectGStruct());";
		else static if ( is(Ret == class) )
		{
			static if ( is(Ret == Variant) )
				call ~= "g_value_set_variant(return_value, ret.getVariantStruct());";
			else static if ( is(Ret == ParamSpec) )
				call ~= "g_value_set_param(return_value, ret.getParamSpecStruct());";
			else static if ( is(Ret : ObjectG) )
				call ~= "g_value_set_object(return_value, ret.getObjectGStruct());";
			else
				call ~= "g_type_is_a(return_value.gType, GType.POINTER) ? g_value_set_pointer(return_value, ret.get"~Ret.stringof~"Struct()) : (g_type_is_a(return_value.gType, GType.BOXED) ? g_value_set_boxed(return_value, ret.get"~Ret.stringof~"Struct()) : g_value_set_object(return_value, ret.get"~Ret.stringof~"Struct()));";
		}

		return call;
	}

	private static string getValue(Param)(int index)
	{
		if (!__ctfe) assert(false);

		static if ( is(Param == bool) )
			return "g_value_get_boolean(&param_values["~to!string(index)~"]) != 0";
		else static if ( is(Param == byte) )
			return "g_value_get_schar(&param_values["~to!string(index)~"])";
		else static if ( is(Param == ubyte) || is(Param == char) )
			return "g_value_get_uchar(&param_values["~to!string(index)~"])";
		else static if ( is(Param == int) )
			return "g_value_get_int(&param_values["~to!string(index)~"])";
		else static if ( is(Param == uint) )
			return "g_value_get_uint(&param_values["~to!string(index)~"])";
		else static if ( is(Param == long) )
			return "g_value_get_int64(&param_values["~to!string(index)~"])";
		else static if ( is(Param == ulong) )
			return "g_value_get_uint64(&param_values["~to!string(index)~"])";
		else static if ( is(Param == float) )
			return "g_value_get_float(&param_values["~to!string(index)~"])";
		else static if ( is(Param == double) )
			return "g_value_get_double(&param_values["~to!string(index)~"])";
		else static if ( is(Param == string) )
			return "Str.toString(g_value_get_string(&param_values["~to!string(index)~"]))";
		else static if ( is(Param == string[]) )
			return "Str.toStringArray(cast(const(char*)*)g_value_get_pointer(&param_values["~to!string(index)~"]))";
		else static if ( is(Param == enum) )
			return "cast("~fullyQualifiedName!Param~")(g_type_is_a(param_values["~to!string(index)~"].gType, GType.ENUM) ? g_value_get_enum(&param_values["~to!string(index)~"]) : g_value_get_flags(&param_values["~to!string(index)~"]))";
		else static if ( isPointer!Param )
			return "cast("~fullyQualifiedName!Param~")(g_type_is_a(param_values["~to!string(index)~"].gType, GType.POINTER) ? g_value_get_pointer(&param_values["~to!string(index)~"]) : (g_type_is_a(param_values["~to!string(index)~"].gType, GType.BOXED) ? g_value_get_boxed(&param_values["~to!string(index)~"]) : g_value_get_object(&param_values["~to!string(index)~"])))";
		else static if ( __traits(compiles, TemplateOf!Param) && __traits(isSame, TemplateOf!Param, glib.c.types.Scoped) )
			return "getScopedGobject!("~fullyQualifiedName!(TemplateArgsOf!(Param)[0])~")(cast(typeof("~fullyQualifiedName!(TemplateArgsOf!(Param)[0])~".tupleof[0]))(g_type_is_a(param_values["~to!string(index)~"].gType, GType.POINTER) ? g_value_get_pointer(&param_values["~to!string(index)~"]) : (g_type_is_a(param_values["~to!string(index)~"].gType, GType.BOXED) ? g_value_get_boxed(&param_values["~to!string(index)~"]) : g_value_get_object(&param_values["~to!string(index)~"]))))";
		else static if ( is(Param == interface) )
			return "ObjectG.getDObject!("~fullyQualifiedName!Param~")(cast(GObject*)g_value_get_object(&param_values["~to!string(index)~"]))";
		else static if ( is(Param == class) )
		{
			static if ( is(Param == Variant) )
				return "new Variant(g_value_get_variant(&param_values["~to!string(index)~"]))";
			else static if ( is(Param== ParamSpec) )
				return "new ParamSpec(g_value_get_param(&param_values["~to!string(index)~"]))";
			else static if ( is(Param : ObjectG) )
				return "ObjectG.getDObject!("~fullyQualifiedName!Param~")(cast(typeof("~fullyQualifiedName!Param~".tupleof[0]))g_value_get_object(&param_values["~to!string(index)~"]))";
			else
				return "ObjectG.getDObject!("~fullyQualifiedName!Param~")(cast(typeof("~fullyQualifiedName!Param~".tupleof[0]))(g_type_is_a(param_values["~to!string(index)~"].gType, GType.POINTER) ? g_value_get_pointer(&param_values["~to!string(index)~"]) : (g_type_is_a(param_values["~to!string(index)~"].gType, GType.BOXED) ? g_value_get_boxed(&param_values["~to!string(index)~"]) : g_value_get_object(&param_values["~to!string(index)~"]))))";
		}
	}
}

/**
 */
