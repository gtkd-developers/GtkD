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
 * outFile = Flags
 * strct   = GFlagsValue
 * realStrct=
 * ctorStrct=
 * clss    = Flags
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_flags_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GFlagsValue* -> Flags
 * module aliases:
 * local aliases:
 * overrides:
 */

module gobject.Flags;

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
public class Flags
{
	
	/** the main Gtk struct */
	protected GFlagsValue* gFlagsValue;
	
	
	public GFlagsValue* getFlagsStruct()
	{
		return gFlagsValue;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gFlagsValue;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GFlagsValue* gFlagsValue)
	{
		this.gFlagsValue = gFlagsValue;
	}
	
	/**
	 */
	
	/**
	 * Returns the first GFlagsValue which is set in value.
	 * Params:
	 * flagsClass = a GFlagsClass
	 * value = the value
	 * Returns: the first GFlagsValue which is set in value, or NULL if none is set
	 */
	public static Flags getFirstValue(GFlagsClass* flagsClass, uint value)
	{
		// GFlagsValue * g_flags_get_first_value (GFlagsClass *flags_class,  guint value);
		auto p = g_flags_get_first_value(flagsClass, value);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Flags)(cast(GFlagsValue*) p);
	}
	
	/**
	 * Looks up a GFlagsValue by name.
	 * Params:
	 * flagsClass = a GFlagsClass
	 * name = the name to look up
	 * Returns: the GFlagsValue with name name, or NULL if there is no flag with that name
	 */
	public static Flags getValueByName(GFlagsClass* flagsClass, string name)
	{
		// GFlagsValue * g_flags_get_value_by_name (GFlagsClass *flags_class,  const gchar *name);
		auto p = g_flags_get_value_by_name(flagsClass, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Flags)(cast(GFlagsValue*) p);
	}
	
	/**
	 * Looks up a GFlagsValue by nickname.
	 * Params:
	 * flagsClass = a GFlagsClass
	 * nick = the nickname to look up
	 * Returns: the GFlagsValue with nickname nick, or NULL if there is no flag with that nickname
	 */
	public static Flags getValueByNick(GFlagsClass* flagsClass, string nick)
	{
		// GFlagsValue * g_flags_get_value_by_nick (GFlagsClass *flags_class,  const gchar *nick);
		auto p = g_flags_get_value_by_nick(flagsClass, Str.toStringz(nick));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Flags)(cast(GFlagsValue*) p);
	}
	
	/**
	 * Registers a new static flags type with the name name.
	 * It is normally more convenient to let glib-mkenums generate a
	 * my_flags_get_type() function from a usual C enumeration definition
	 * than to write one yourself using g_flags_register_static().
	 * Params:
	 * name = A nul-terminated string used as the name of the new type.
	 * Returns: The new type identifier.
	 */
	public static GType registerStatic(string name, Flags _StaticValues)
	{
		// GType g_flags_register_static (const gchar *name,  const GFlagsValue *const_static_values);
		return g_flags_register_static(Str.toStringz(name), (_StaticValues is null) ? null : _StaticValues.getFlagsStruct());
	}
	
	/**
	 * This function is meant to be called from the complete_type_info()
	 * function of a GTypePlugin implementation, see the example for
	 * g_enum_complete_type_info() above.
	 * Params:
	 * type = the type identifier of the type being completed
	 * info = the GTypeInfo struct to be filled in
	 */
	public static void completeTypeInfo(GType type, GTypeInfo* info, Flags _Values)
	{
		// void g_flags_complete_type_info (GType g_flags_type,  GTypeInfo *info,  const GFlagsValue *const_values);
		g_flags_complete_type_info(type, info, (_Values is null) ? null : _Values.getFlagsStruct());
	}
}
