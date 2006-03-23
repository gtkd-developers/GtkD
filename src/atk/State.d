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
 * outPack = atk
 * outFile = State
 * strct   = 
 * realStrct=
 * clss    = State
 * template for:
 * extend  = 
 * prefixes:
 * 	- atk_state_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module atk.State;

private import atk.typedefs;

private import lib.atk;

private import glib.Str;

/**
 * Description
 * An AtkState describes a component's particular state. The actual state of
 * an component is described by its AtkStateSet, which is a set of AtkStates.
 */
public class State
{
	
	/**
	 */
	
	
	
	/**
	 * Register a new object state.
	 * name:
	 *  a character string describing the new state.
	 * Returns:
	 *  an AtkState value for the new state.
	 */
	public static AtkStateType typeRegister(char[] name)
	{
		// AtkStateType atk_state_type_register (const gchar *name);
		return atk_state_type_register(Str.toStringz(name));
	}
	
	/**
	 * Gets the description string describing the AtkStateType type.
	 * type:
	 *  The AtkStateType whose name is required
	 * Returns:
	 *  the string describing the AtkStateType
	 */
	public static char[] typeGetName(AtkStateType type)
	{
		// const gchar* atk_state_type_get_name (AtkStateType type);
		return Str.toString(atk_state_type_get_name(type) );
	}
	
	/**
	 * Gets the AtkStateType corresponding to the description string name.
	 * name:
	 *  a character string state name
	 * Returns:
	 *  an AtkStateType corresponding to name
	 */
	public static AtkStateType typeForName(char[] name)
	{
		// AtkStateType atk_state_type_for_name (const gchar *name);
		return atk_state_type_for_name(Str.toStringz(name));
	}
}
