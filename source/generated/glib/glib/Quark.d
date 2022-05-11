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


module glib.Quark;

private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct Quark
{

	/**
	 * Returns a canonical representation for @string. Interned strings
	 * can be compared for equality by comparing the pointers, instead of
	 * using strcmp(). g_intern_static_string() does not copy the string,
	 * therefore @string must not be freed or modified.
	 *
	 * This function must not be used before library constructors have finished
	 * running. In particular, this means it cannot be used to initialize global
	 * variables in C++.
	 *
	 * Params:
	 *     string_ = a static string
	 *
	 * Returns: a canonical representation for the string
	 *
	 * Since: 2.10
	 */
	public static string internStaticString(string string_)
	{
		return Str.toString(g_intern_static_string(Str.toStringz(string_)));
	}

	/**
	 * Returns a canonical representation for @string. Interned strings
	 * can be compared for equality by comparing the pointers, instead of
	 * using strcmp().
	 *
	 * This function must not be used before library constructors have finished
	 * running. In particular, this means it cannot be used to initialize global
	 * variables in C++.
	 *
	 * Params:
	 *     string_ = a string
	 *
	 * Returns: a canonical representation for the string
	 *
	 * Since: 2.10
	 */
	public static string internString(string string_)
	{
		return Str.toString(g_intern_string(Str.toStringz(string_)));
	}

	/**
	 * Gets the #GQuark identifying the given (static) string. If the
	 * string does not currently have an associated #GQuark, a new #GQuark
	 * is created, linked to the given string.
	 *
	 * Note that this function is identical to g_quark_from_string() except
	 * that if a new #GQuark is created the string itself is used rather
	 * than a copy. This saves memory, but can only be used if the string
	 * will continue to exist until the program terminates. It can be used
	 * with statically allocated strings in the main program, but not with
	 * statically allocated memory in dynamically loaded modules, if you
	 * expect to ever unload the module again (e.g. do not use this
	 * function in GTK+ theme engines).
	 *
	 * This function must not be used before library constructors have finished
	 * running. In particular, this means it cannot be used to initialize global
	 * variables in C++.
	 *
	 * Params:
	 *     string_ = a string
	 *
	 * Returns: the #GQuark identifying the string, or 0 if @string is %NULL
	 */
	public static GQuark quarkFromStaticString(string string_)
	{
		return g_quark_from_static_string(Str.toStringz(string_));
	}

	/**
	 * Gets the #GQuark identifying the given string. If the string does
	 * not currently have an associated #GQuark, a new #GQuark is created,
	 * using a copy of the string.
	 *
	 * This function must not be used before library constructors have finished
	 * running. In particular, this means it cannot be used to initialize global
	 * variables in C++.
	 *
	 * Params:
	 *     string_ = a string
	 *
	 * Returns: the #GQuark identifying the string, or 0 if @string is %NULL
	 */
	public static GQuark quarkFromString(string string_)
	{
		return g_quark_from_string(Str.toStringz(string_));
	}

	/**
	 * Gets the string associated with the given #GQuark.
	 *
	 * Params:
	 *     quark = a #GQuark.
	 *
	 * Returns: the string associated with the #GQuark
	 */
	public static string quarkToString(GQuark quark)
	{
		return Str.toString(g_quark_to_string(quark));
	}

	/**
	 * Gets the #GQuark associated with the given string, or 0 if string is
	 * %NULL or it has no associated #GQuark.
	 *
	 * If you want the GQuark to be created if it doesn't already exist,
	 * use g_quark_from_string() or g_quark_from_static_string().
	 *
	 * This function must not be used before library constructors have finished
	 * running.
	 *
	 * Params:
	 *     string_ = a string
	 *
	 * Returns: the #GQuark associated with the string, or 0 if @string is
	 *     %NULL or there is no #GQuark associated with it
	 */
	public static GQuark quarkTryString(string string_)
	{
		return g_quark_try_string(Str.toStringz(string_));
	}
}
