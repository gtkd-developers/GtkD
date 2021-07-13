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


module gobject.Enums;

private import glib.Str;
private import glib.c.functions;
private import gobject.c.functions;
public  import gobject.c.types;


/** */
public struct Enums
{

	/**
	 * This function is meant to be called from the `complete_type_info`
	 * function of a #GTypePlugin implementation, as in the following
	 * example:
	 *
	 * |[<!-- language="C" -->
	 * static void
	 * my_enum_complete_type_info (GTypePlugin     *plugin,
	 * GType            g_type,
	 * GTypeInfo       *info,
	 * GTypeValueTable *value_table)
	 * {
	 * static const GEnumValue values[] = {
	 * { MY_ENUM_FOO, "MY_ENUM_FOO", "foo" },
	 * { MY_ENUM_BAR, "MY_ENUM_BAR", "bar" },
	 * { 0, NULL, NULL }
	 * };
	 *
	 * g_enum_complete_type_info (type, info, values);
	 * }
	 * ]|
	 *
	 * Params:
	 *     gEnumType = the type identifier of the type being completed
	 *     info = the #GTypeInfo struct to be filled in
	 *     constValues = An array of #GEnumValue structs for the possible
	 *         enumeration values. The array is terminated by a struct with all
	 *         members being 0.
	 */
	public static void completeTypeInfo(GType gEnumType, out GTypeInfo info, GEnumValue* constValues)
	{
		g_enum_complete_type_info(gEnumType, &info, constValues);
	}

	/**
	 * Returns the #GEnumValue for a value.
	 *
	 * Params:
	 *     enumClass = a #GEnumClass
	 *     value = the value to look up
	 *
	 * Returns: the #GEnumValue for @value, or %NULL
	 *     if @value is not a member of the enumeration
	 */
	public static GEnumValue* getValue(GEnumClass* enumClass, int value)
	{
		return g_enum_get_value(enumClass, value);
	}

	/**
	 * Looks up a #GEnumValue by name.
	 *
	 * Params:
	 *     enumClass = a #GEnumClass
	 *     name = the name to look up
	 *
	 * Returns: the #GEnumValue with name @name,
	 *     or %NULL if the enumeration doesn't have a member
	 *     with that name
	 */
	public static GEnumValue* getValueByName(GEnumClass* enumClass, string name)
	{
		return g_enum_get_value_by_name(enumClass, Str.toStringz(name));
	}

	/**
	 * Looks up a #GEnumValue by nickname.
	 *
	 * Params:
	 *     enumClass = a #GEnumClass
	 *     nick = the nickname to look up
	 *
	 * Returns: the #GEnumValue with nickname @nick,
	 *     or %NULL if the enumeration doesn't have a member
	 *     with that nickname
	 */
	public static GEnumValue* getValueByNick(GEnumClass* enumClass, string nick)
	{
		return g_enum_get_value_by_nick(enumClass, Str.toStringz(nick));
	}

	/**
	 * Registers a new static enumeration type with the name @name.
	 *
	 * It is normally more convenient to let [glib-mkenums][glib-mkenums],
	 * generate a my_enum_get_type() function from a usual C enumeration
	 * definition  than to write one yourself using g_enum_register_static().
	 *
	 * Params:
	 *     name = A nul-terminated string used as the name of the new type.
	 *     constStaticValues = An array of #GEnumValue structs for the possible
	 *         enumeration values. The array is terminated by a struct with all
	 *         members being 0. GObject keeps a reference to the data, so it cannot
	 *         be stack-allocated.
	 *
	 * Returns: The new type identifier.
	 */
	public static GType registerStatic(string name, GEnumValue* constStaticValues)
	{
		return g_enum_register_static(Str.toStringz(name), constStaticValues);
	}

	/**
	 * Pretty-prints @value in the form of the enum’s name.
	 *
	 * This is intended to be used for debugging purposes. The format of the output
	 * may change in the future.
	 *
	 * Params:
	 *     gEnumType = the type identifier of a #GEnumClass type
	 *     value = the value
	 *
	 * Returns: a newly-allocated text string
	 *
	 * Since: 2.54
	 */
	public static string enumToString(GType gEnumType, int value)
	{
		auto retStr = g_enum_to_string(gEnumType, value);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Pretty-prints @value in the form of the flag names separated by ` | ` and
	 * sorted. Any extra bits will be shown at the end as a hexadecimal number.
	 *
	 * This is intended to be used for debugging purposes. The format of the output
	 * may change in the future.
	 *
	 * Params:
	 *     flagsType = the type identifier of a #GFlagsClass type
	 *     value = the value
	 *
	 * Returns: a newly-allocated text string
	 *
	 * Since: 2.54
	 */
	public static string flagsToString(GType flagsType, uint value)
	{
		auto retStr = g_flags_to_string(flagsType, value);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
