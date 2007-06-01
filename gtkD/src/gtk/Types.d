/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gtk-Types.html
 * outPack = gtk
 * outFile = Types
 * strct   = GtkType
 * realStrct=
 * ctorStrct=
 * clss    = Types
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_type_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.Types;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;




/**
 * Description
 * The GTK+ type system is extensible. Because of that, types have to be
 * managed at runtime.
 */
public class Types
{
	
	/** the main Gtk struct */
	protected GtkType* gtkType;
	
	
	public GtkType* getTypesStruct()
	{
		return gtkType;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkType;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkType* gtkType)
	{
		assert(gtkType !is null, "struct gtkType is null on constructor");
		this.gtkType = gtkType;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Warning
	 * gtk_type_init is deprecated and should not be used in newly-written code.
	 * Initializes the data structures associated with GTK+ types.
	 * debug_flags:
	 */
	public static void init(GTypeDebugFlags debugFlags)
	{
		// void gtk_type_init (GTypeDebugFlags debug_flags);
		gtk_type_init(debugFlags);
	}
	
	/**
	 * Warning
	 * gtk_type_unique is deprecated and should not be used in newly-written code.
	 * Creates a new, unique type.
	 * parent_type:
	 * if zero, a fundamental type is created.
	 * gtkinfo:
	 * Returns:
	 * the new GtkType.
	 */
	public static GtkType unique(GtkType parentType, GtkTypeInfo* gtkinfo)
	{
		// GtkType gtk_type_unique (GtkType parent_type,  const GtkTypeInfo *gtkinfo);
		return gtk_type_unique(parentType, gtkinfo);
	}
	
	
	
	
	/**
	 * Returns a pointer pointing to the class of type or NULL if there was
	 * any trouble identifying type. Initializes the class if necessary.
	 * type:
	 * a GtkType.
	 * Returns:
	 * pointer to the class.
	 */
	public static void* clss(GtkType type)
	{
		// gpointer gtk_type_class (GtkType type);
		return gtk_type_class(type);
	}
	
	/**
	 * Warning
	 * gtk_type_new is deprecated and should not be used in newly-written code.
	 * Creates a new object of a given type, and return a pointer to it.
	 * Returns NULL if you give it an invalid type. It allocates the object
	 * out of the type's memory chunk if there is a memory chunk. The object
	 * has all the proper initializers called.
	 * type:
	 * a GtkType.
	 * Returns:
	 * pointer to a GtkTypeObject.
	 */
	public static void* newTypes(GtkType type)
	{
		// gpointer gtk_type_new (GtkType type);
		return gtk_type_new(type);
	}
	
	
	/**
	 * Warning
	 * gtk_type_enum_get_values is deprecated and should not be used in newly-written code.
	 * If enum_type has values, then return a pointer to all of them.
	 * enum_type:
	 * a GtkType.
	 * Returns:
	 * GtkEnumValue*
	 */
	public static GtkEnumValue* enumGetValues(GtkType enumType)
	{
		// GtkEnumValue* gtk_type_enum_get_values (GtkType enum_type);
		return gtk_type_enum_get_values(enumType);
	}
	
	/**
	 * Warning
	 * gtk_type_flags_get_values is deprecated and should not be used in newly-written code.
	 * If flags_type has values, then return a pointer to all of them.
	 * flags_type:
	 * a GtkType.
	 * Returns:
	 * GtkFlagValue*
	 */
	public static GtkFlagValue* flagsGetValues(GtkType flagsType)
	{
		// GtkFlagValue* gtk_type_flags_get_values (GtkType flags_type);
		return gtk_type_flags_get_values(flagsType);
	}
	
	/**
	 * Warning
	 * gtk_type_enum_find_value is deprecated and should not be used in newly-written code.
	 * Returns a pointer to one of enum_type's GtkEnumValues's whose name (or nickname) matches value_name.
	 * enum_type:
	 * a GtkType.
	 * value_name:
	 * the name to look for.
	 * Returns:
	 * GtkEnumValue*
	 */
	public static GtkEnumValue* enumFindValue(GtkType enumType, char[] valueName)
	{
		// GtkEnumValue* gtk_type_enum_find_value (GtkType enum_type,  const gchar *value_name);
		return gtk_type_enum_find_value(enumType, Str.toStringz(valueName));
	}
	
	/**
	 * Warning
	 * gtk_type_flags_find_value is deprecated and should not be used in newly-written code.
	 * Returns a pointer to one of flag_type's GtkFlagValue's whose name (or nickname) matches value_name.
	 * flags_type:
	 * a GtkType.
	 * value_name:
	 * the name to look for.
	 * Returns:
	 * GtkFlagValue*
	 */
	public static GtkFlagValue* flagsFindValue(GtkType flagsType, char[] valueName)
	{
		// GtkFlagValue* gtk_type_flags_find_value (GtkType flags_type,  const gchar *value_name);
		return gtk_type_flags_find_value(flagsType, Str.toStringz(valueName));
	}
}
