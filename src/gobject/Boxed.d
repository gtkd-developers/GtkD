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
 * outPack = gobject
 * outFile = Boxed
 * strct   = 
 * realStrct=
 * clss    = Boxed
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module gobject.Boxed;

private import gobject.typedefs;

private import lib.gobject;

private import glib.Str;

/**
 * Description
 * GBoxed is a generic wrapper mechanism for arbitrary C structures. The only
 * thing the type system needs to know about the structures is how to copy and
 * free them, beyond that they are treated as opaque chunks of memory.
 * Boxed types are useful for simple value-holder structures like rectangles or
 * points. They can also be used for wrapping structures defined in non-GObject
 * based libraries.
 */
public class Boxed
{
	
	/**
	 */
	
	
	
	/**
	 * Provide a copy of a boxed structure src_boxed which is of type boxed_type.
	 * boxed_type:
	 * The type of src_boxed.
	 * src_boxed:
	 *  The boxed structure to be copied.
	 * Returns:
	 *  The newly created copy of the boxed structure.
	 */
	public static void* boxedCopy(GType boxedType, void* srcBoxed)
	{
		// gpointer g_boxed_copy (GType boxed_type,  gconstpointer src_boxed);
		return g_boxed_copy(boxedType, srcBoxed);
	}
	
	/**
	 * Free the boxed structure boxed which is of type boxed_type.
	 * boxed_type:
	 * The type of boxed.
	 * boxed:
	 *  The boxed structure to be freed.
	 */
	public static void boxedFree(GType boxedType, void* boxed)
	{
		// void g_boxed_free (GType boxed_type,  gpointer boxed);
		g_boxed_free(boxedType, boxed);
	}
	
	/**
	 * This function creates a new G_TYPE_BOXED derived type id for a new
	 * boxed type with name name. Boxed type handling functions have to be
	 * provided to copy and free opaque boxed structures of this type.
	 * name:
	 * Name of the new boxed type.
	 * boxed_copy:
	 * Boxed structure copy function.
	 * boxed_free:
	 * Boxed structure free function.
	 * Returns:
	 * New G_TYPE_BOXED derived type id for name.
	 */
	public static GType boxedTypeRegisterStatic(char[] name, GBoxedCopyFunc boxedCopy, GBoxedFreeFunc boxedFree)
	{
		// GType g_boxed_type_register_static (const gchar *name,  GBoxedCopyFunc boxed_copy,  GBoxedFreeFunc boxed_free);
		return g_boxed_type_register_static(Str.toStringz(name), boxedCopy, boxedFree);
	}
	
	/**
	 * Creates a new G_TYPE_POINTER derived type id for a new
	 * pointer type with name name.
	 * name:
	 * the name of the new pointer type.
	 * Returns:
	 * a new G_TYPE_POINTER derived type id for name.
	 */
	public static GType pointerTypeRegisterStatic(char[] name)
	{
		// GType g_pointer_type_register_static (const gchar *name);
		return g_pointer_type_register_static(Str.toStringz(name));
	}
	
	
	
	
	
}
