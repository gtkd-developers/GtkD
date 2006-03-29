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
 * outPack = glib
 * outFile = Quark
 * strct   = GQuark
 * realStrct=
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
 * imports:
 * 	- glib.ErrorG
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module glib.Quark;

private import glib.typedefs;

private import lib.glib;

private import glib.ErrorG;
private import glib.Str;

/**
 * Description
 * Quarks are associations between strings and integer identifiers.
 * Given either the string or the GQuark identifier it is possible to
 * retrieve the other.
 * Quarks are used for both
 * Datasets and
 * Keyed Data Lists.
 * To create a new quark from a string, use g_quark_from_string() or
 * g_quark_from_static_string().
 * To find the string corresponding to a given GQuark, use g_quark_to_string().
 * To find the GQuark corresponding to a given string, use g_quark_try_string().
 * Another use for the string pool maintained for the quark functions is string
 * interning, using g_intern_string() or g_intern_static_string(). An interned string
 * is a canonical representation for a string. One important advantage of interned strings
 * is that they can be compared for equality by a simple pointer comparision, rather than
 * using strcmp().
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
	 * Gets the GQuark identifying the given string.
	 * If the string does not currently have an associated GQuark, a new
	 * GQuark is created, using a copy of the string.
	 * string:
	 * a string.
	 * Returns:
	 * the GQuark identifying the string.
	 */
	public static GQuark fromString(char[] string)
	{
		// GQuark g_quark_from_string (const gchar *string);
		return g_quark_from_string(Str.toStringz(string));
	}
	
	/**
	 * Gets the GQuark identifying the given (static) string.
	 * If the string does not currently have an associated GQuark, a new
	 * GQuark is created, linked to the given string.
	 * Note that this function is identical to g_quark_from_string() except
	 * that if a new GQuark is created the string itself is used rather than
	 * a copy. This saves memory, but can only be used if the string will
	 * always exist. It can be used with statically
	 * allocated strings in the main program, but not with statically
	 * allocated memory in dynamically loaded modules, if you expect to
	 * ever unload the module again (e.g. do not use this function in
	 * GTK+ theme engines).
	 * string:
	 * a string.
	 * Returns:
	 * the GQuark identifying the string.
	 */
	public static GQuark fromStaticString(char[] string)
	{
		// GQuark g_quark_from_static_string (const gchar *string);
		return g_quark_from_static_string(Str.toStringz(string));
	}
	
	/**
	 * Gets the string associated with the given GQuark.
	 * quark:
	 * a GQuark.
	 * Returns:
	 * the string associated with the GQuark.
	 */
	public static char[] toString(GQuark quark)
	{
		// const gchar* g_quark_to_string (GQuark quark);
		return Str.toString(g_quark_to_string(quark) );
	}
	
	/**
	 * Gets the GQuark associated with the given string, or 0 if the string has
	 * no associated GQuark.
	 * If you want the GQuark to be created if it doesn't already exist, use
	 * g_quark_from_string() or g_quark_from_static_string().
	 * string:
	 * a string.
	 * Returns:
	 * the GQuark associated with the string, or 0 if there is no
	 * GQuark associated with the string.
	 */
	public static GQuark tryString(char[] string)
	{
		// GQuark g_quark_try_string (const gchar *string);
		return g_quark_try_string(Str.toStringz(string));
	}
	
	/**
	 * Returns a canonical representation for string. Interned strings can
	 * be compared for equality by comparing the pointers, instead of using strcmp().
	 * string:
	 *  a string
	 * Returns:
	 *  a canonical representation for the string
	 * Since 2.10
	 */
	public static char[] gInternString(char[] string)
	{
		// const gchar* g_intern_string (const gchar *string);
		return Str.toString(g_intern_string(Str.toStringz(string)) );
	}
	
	/**
	 * Returns a canonical representation for string. Interned strings can
	 * be compared for equality by comparing the pointers, instead of using strcmp().
	 * g_intern_static_string() does not copy the string, therefore string must
	 * not be freed or modified.
	 * string:
	 *  a static string
	 * Returns:
	 *  a canonical representation for the string
	 * Since 2.10
	 */
	public static char[] gInternStaticString(char[] string)
	{
		// const gchar* g_intern_static_string (const gchar *string);
		return Str.toString(g_intern_static_string(Str.toStringz(string)) );
	}
}
