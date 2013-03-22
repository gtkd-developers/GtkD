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
 * inFile  = glib-Quarks.html
 * outPack = glib
 * outFile = Quark
 * strct   = GQuark
 * realStrct=
 * ctorStrct=
 * clss    = Quark
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_quark_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Quark;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * Quarks are associations between strings and integer identifiers.
 * Given either the string or the GQuark identifier it is possible to
 * retrieve the other.
 *
 * Quarks are used for both Datasets and Keyed Data Lists.
 *
 * To create a new quark from a string, use g_quark_from_string() or
 * g_quark_from_static_string().
 *
 * To find the string corresponding to a given GQuark, use
 * g_quark_to_string().
 *
 * To find the GQuark corresponding to a given string, use
 * g_quark_try_string().
 *
 * Another use for the string pool maintained for the quark functions
 * is string interning, using g_intern_string() or
 * g_intern_static_string(). An interned string is a canonical
 * representation for a string. One important advantage of interned
 * strings is that they can be compared for equality by a simple
 * pointer comparison, rather than using strcmp().
 */
public class Quark
{
	
	/** the main Gtk struct */
	protected GQuark* gQuark;
	
	
	public GQuark* getQuarkStruct()
	{
		return gQuark;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gQuark;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GQuark* gQuark)
	{
		this.gQuark = gQuark;
	}
	
	/**
	 */
	
	/**
	 * Gets the GQuark identifying the given string. If the string does
	 * not currently have an associated GQuark, a new GQuark is created,
	 * using a copy of the string.
	 * Params:
	 * string = a string. [allow-none]
	 * Returns: the GQuark identifying the string, or 0 if string is NULL.
	 */
	public static GQuark fromString(string string)
	{
		// GQuark g_quark_from_string (const gchar *string);
		return g_quark_from_string(Str.toStringz(string));
	}
	
	/**
	 * Gets the GQuark identifying the given (static) string. If the
	 * string does not currently have an associated GQuark, a new GQuark
	 * is created, linked to the given string.
	 * Note that this function is identical to g_quark_from_string() except
	 * that if a new GQuark is created the string itself is used rather
	 * than a copy. This saves memory, but can only be used if the string
	 * will always exist. It can be used with
	 * statically allocated strings in the main program, but not with
	 * statically allocated memory in dynamically loaded modules, if you
	 * expect to ever unload the module again (e.g. do not use this
	 * function in GTK+ theme engines).
	 * Params:
	 * string = a string. [allow-none]
	 * Returns: the GQuark identifying the string, or 0 if string is NULL.
	 */
	public static GQuark fromStaticString(string string)
	{
		// GQuark g_quark_from_static_string (const gchar *string);
		return g_quark_from_static_string(Str.toStringz(string));
	}
	
	/**
	 * Gets the string associated with the given GQuark.
	 * Params:
	 * quark = a GQuark.
	 * Returns: the string associated with the GQuark
	 */
	public static string toString(GQuark quark)
	{
		// const gchar * g_quark_to_string (GQuark quark);
		return Str.toString(g_quark_to_string(quark));
	}
	
	/**
	 * Gets the GQuark associated with the given string, or 0 if string is
	 * NULL or it has no associated GQuark.
	 * If you want the GQuark to be created if it doesn't already exist,
	 * use g_quark_from_string() or g_quark_from_static_string().
	 * Params:
	 * string = a string. [allow-none]
	 * Returns: the GQuark associated with the string, or 0 if string is NULL or there is no GQuark associated with it.
	 */
	public static GQuark tryString(string string)
	{
		// GQuark g_quark_try_string (const gchar *string);
		return g_quark_try_string(Str.toStringz(string));
	}
	
	/**
	 * Returns a canonical representation for string. Interned strings
	 * can be compared for equality by comparing the pointers, instead of
	 * using strcmp().
	 * Since 2.10
	 * Params:
	 * string = a string. [allow-none]
	 * Returns: a canonical representation for the string
	 */
	public static string gInternString(string string)
	{
		// const gchar * g_intern_string (const gchar *string);
		return Str.toString(g_intern_string(Str.toStringz(string)));
	}
	
	/**
	 * Returns a canonical representation for string. Interned strings
	 * can be compared for equality by comparing the pointers, instead of
	 * using strcmp(). g_intern_static_string() does not copy the string,
	 * therefore string must not be freed or modified.
	 * Since 2.10
	 * Params:
	 * string = a static string. [allow-none]
	 * Returns: a canonical representation for the string
	 */
	public static string gInternStaticString(string string)
	{
		// const gchar * g_intern_static_string (const gchar *string);
		return Str.toString(g_intern_static_string(Str.toStringz(string)));
	}
}
