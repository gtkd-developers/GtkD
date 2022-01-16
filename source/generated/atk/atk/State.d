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


module atk.State;

private import atk.c.functions;
public  import atk.c.types;
private import glib.Str;
private import glib.c.functions;


/** */
public struct State
{

	/**
	 * Gets the #AtkStateType corresponding to the description string @name.
	 *
	 * Params:
	 *     name = a character string state name
	 *
	 * Returns: an #AtkStateType corresponding to @name
	 */
	public static AtkStateType typeForName(string name)
	{
		return atk_state_type_for_name(Str.toStringz(name));
	}

	/**
	 * Gets the description string describing the #AtkStateType @type.
	 *
	 * Params:
	 *     type = The #AtkStateType whose name is required
	 *
	 * Returns: the string describing the AtkStateType
	 */
	public static string typeGetName(AtkStateType type)
	{
		return Str.toString(atk_state_type_get_name(type));
	}

	/**
	 * Register a new object state.
	 *
	 * Params:
	 *     name = a character string describing the new state.
	 *
	 * Returns: an #AtkState value for the new state.
	 */
	public static AtkStateType typeRegister(string name)
	{
		return atk_state_type_register(Str.toStringz(name));
	}
}
