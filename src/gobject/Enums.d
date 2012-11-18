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
 * inFile  = gobject-Enumeration-and-Flag-Types.html
 * outPack = gobject
 * outFile = Enums
 * strct   = GEnumValue
 * realStrct=
 * ctorStrct=
 * clss    = Enums
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_enum_
 * omit structs:
 * omit prefixes:
 * 	- g_flags_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GEnumValue* -> Enums
 * module aliases:
 * local aliases:
 * overrides:
 */

module gobject.Enums;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * Description
 * The GLib type system provides fundamental types for enumeration and
 * flags types. (Flags types are like enumerations, but allow their
 * values to be combined by bitwise or). A registered enumeration or
 * flags type associates a name and a nickname with each allowed
 * value, and the methods g_enum_get_value_by_name(),
 * g_enum_get_value_by_nick(), g_flags_get_value_by_name() and
 * g_flags_get_value_by_nick() can look up values by their name or
 * nickname. When an enumeration or flags type is registered with the
 * GLib type system, it can be used as value type for object
 * properties, using g_param_spec_enum() or g_param_spec_flags().
 * GObject ships with a utility called glib-mkenums that can construct
 * suitable type registration functions from C enumeration
 * definitions.
 */
public class Enums
{
	
	/** the main Gtk struct */
	protected GEnumValue* gEnumValue;
	
	
	public GEnumValue* getEnumsStruct()
	{
		return gEnumValue;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gEnumValue;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GEnumValue* gEnumValue)
	{
		this.gEnumValue = gEnumValue;
	}
	
	/**
	 */
	
	/**
	 * Returns the GEnumValue for a value.
	 * Params:
	 * enumClass = a GEnumClass
	 * value = the value to look up
	 * Returns: the GEnumValue for value, or NULL if value is not a member of the enumeration
	 */
	public static Enums getValue(GEnumClass* enumClass, int value)
	{
		// GEnumValue * g_enum_get_value (GEnumClass *enum_class,  gint value);
		auto p = g_enum_get_value(enumClass, value);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Enums)(cast(GEnumValue*) p);
	}
	
	/**
	 * Looks up a GEnumValue by name.
	 * Params:
	 * enumClass = a GEnumClass
	 * name = the name to look up
	 * Returns: the GEnumValue with name name, or NULL if the enumeration doesn't have a member with that name
	 */
	public static Enums getValueByName(GEnumClass* enumClass, string name)
	{
		// GEnumValue * g_enum_get_value_by_name (GEnumClass *enum_class,  const gchar *name);
		auto p = g_enum_get_value_by_name(enumClass, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Enums)(cast(GEnumValue*) p);
	}
	
	/**
	 * Looks up a GEnumValue by nickname.
	 * Params:
	 * enumClass = a GEnumClass
	 * nick = the nickname to look up
	 * Returns: the GEnumValue with nickname nick, or NULL if the enumeration doesn't have a member with that nickname
	 */
	public static Enums getValueByNick(GEnumClass* enumClass, string nick)
	{
		// GEnumValue * g_enum_get_value_by_nick (GEnumClass *enum_class,  const gchar *nick);
		auto p = g_enum_get_value_by_nick(enumClass, Str.toStringz(nick));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Enums)(cast(GEnumValue*) p);
	}
	
	/**
	 * Registers a new static enumeration type with the name name.
	 * It is normally more convenient to let glib-mkenums generate a
	 * my_enum_get_type() function from a usual C enumeration definition
	 * than to write one yourself using g_enum_register_static().
	 * Params:
	 * name = A nul-terminated string used as the name of the new type.
	 * Returns: The new type identifier.
	 */
	public static GType registerStatic(string name, Enums _StaticValues)
	{
		// GType g_enum_register_static (const gchar *name,  const GEnumValue *const_static_values);
		return g_enum_register_static(Str.toStringz(name), (_StaticValues is null) ? null : _StaticValues.getEnumsStruct());
	}
	
	/**
	 * This function is meant to be called from the complete_type_info
	 * function of a GTypePlugin implementation, as in the following
	 * Params:
	 * type = the type identifier of the type being completed
	 * info = the GTypeInfo struct to be filled in
	 */
	public static void completeTypeInfo(GType type, out GTypeInfo info, Enums _Values)
	{
		// void g_enum_complete_type_info (GType g_enum_type,  GTypeInfo *info,  const GEnumValue *const_values);
		g_enum_complete_type_info(type, &info, (_Values is null) ? null : _Values.getEnumsStruct());
	}
}
