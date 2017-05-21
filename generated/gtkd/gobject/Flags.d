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


module gobject.Flags;

private import glib.Str;
private import gobject.c.functions;
public  import gobject.c.types;


/** */
public struct Flags
{

	/**
	 * This function is meant to be called from the complete_type_info()
	 * function of a #GTypePlugin implementation, see the example for
	 * g_enum_complete_type_info() above.
	 *
	 * Params:
	 *     gFlagsType = the type identifier of the type being completed
	 *     info = the #GTypeInfo struct to be filled in
	 *     constValues = An array of #GFlagsValue structs for the possible
	 *         enumeration values. The array is terminated by a struct with all
	 *         members being 0.
	 */
	public static void completeTypeInfo(GType gFlagsType, out GTypeInfo info, GFlagsValue* constValues)
	{
		g_flags_complete_type_info(gFlagsType, &info, constValues);
	}

	/**
	 * Returns the first #GFlagsValue which is set in @value.
	 *
	 * Params:
	 *     flagsClass = a #GFlagsClass
	 *     value = the value
	 *
	 * Returns: the first #GFlagsValue which is set in
	 *     @value, or %NULL if none is set
	 */
	public static GFlagsValue* getFirstValue(GFlagsClass* flagsClass, uint value)
	{
		return g_flags_get_first_value(flagsClass, value);
	}

	/**
	 * Looks up a #GFlagsValue by name.
	 *
	 * Params:
	 *     flagsClass = a #GFlagsClass
	 *     name = the name to look up
	 *
	 * Returns: the #GFlagsValue with name @name,
	 *     or %NULL if there is no flag with that name
	 */
	public static GFlagsValue* getValueByName(GFlagsClass* flagsClass, string name)
	{
		return g_flags_get_value_by_name(flagsClass, Str.toStringz(name));
	}

	/**
	 * Looks up a #GFlagsValue by nickname.
	 *
	 * Params:
	 *     flagsClass = a #GFlagsClass
	 *     nick = the nickname to look up
	 *
	 * Returns: the #GFlagsValue with nickname @nick,
	 *     or %NULL if there is no flag with that nickname
	 */
	public static GFlagsValue* getValueByNick(GFlagsClass* flagsClass, string nick)
	{
		return g_flags_get_value_by_nick(flagsClass, Str.toStringz(nick));
	}

	/**
	 * Registers a new static flags type with the name @name.
	 *
	 * It is normally more convenient to let [glib-mkenums][glib-mkenums]
	 * generate a my_flags_get_type() function from a usual C enumeration
	 * definition than to write one yourself using g_flags_register_static().
	 *
	 * Params:
	 *     name = A nul-terminated string used as the name of the new type.
	 *     constStaticValues = An array of #GFlagsValue structs for the possible
	 *         flags values. The array is terminated by a struct with all members being 0.
	 *         GObject keeps a reference to the data, so it cannot be stack-allocated.
	 *
	 * Returns: The new type identifier.
	 */
	public static GType registerStatic(string name, GFlagsValue* constStaticValues)
	{
		return g_flags_register_static(Str.toStringz(name), constStaticValues);
	}
}
