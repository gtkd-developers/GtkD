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
 * outPack = gtk
 * outFile = BindingSet
 * strct   = GtkBindingSet
 * realStrct=
 * clss    = BindingSet
 * extend  = 
 * prefixes:
 * 	- gtk_binding_set_
 * 	- gtk_bindings_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.BindingSet
 * 	- gtk.ObjectGtk
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkBindingSet* -> BindingSet
 * 	- GtkObject* -> ObjectGtk
 * local aliases:
 */

module gtk.BindingSet;

private import gtk.typedefs;

private import lib.gtk;
private import std.string;

private import gtk.BindingSet;private import gtk.ObjectGtk;private import glib.ListSG;
/**
 * Description
 */
public class BindingSet
{
	
	/** the main Gtk struct */
	protected GtkBindingSet* gtkBindingSet;
	
	
	public GtkBindingSet* getBindingSetStruct()
	{
		return gtkBindingSet;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkBindingSet;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkBindingSet* gtkBindingSet)
	{
		this.gtkBindingSet = gtkBindingSet;
	}
	
	/**
	 */
	
	
	
	
	
	/**
	 * set_name:
	 * Returns:
	 */
	public this (char[] setName)
	{
		// GtkBindingSet* gtk_binding_set_new (const gchar *set_name);
		this(cast(GtkBindingSet*)gtk_binding_set_new(std.string.toStringz(setName)) );
	}
	
	/**
	 * object_class:
	 * Returns:
	 */
	public static BindingSet byClass(void* objectClass)
	{
		// GtkBindingSet* gtk_binding_set_by_class (gpointer object_class);
		return new BindingSet( gtk_binding_set_by_class(objectClass) );
	}
	
	/**
	 * set_name:
	 * Returns:
	 */
	public static BindingSet find(char[] setName)
	{
		// GtkBindingSet* gtk_binding_set_find (const gchar *set_name);
		return new BindingSet( gtk_binding_set_find(std.string.toStringz(setName)) );
	}
	
	/**
	 * object:
	 * keyval:
	 * modifiers:
	 * Returns:
	 */
	public static int activate(ObjectGtk object, uint keyval, GdkModifierType modifiers)
	{
		// gboolean gtk_bindings_activate (GtkObject *object,  guint keyval,  GdkModifierType modifiers);
		return gtk_bindings_activate((object is null) ? null : object.getObjectGtkStruct(), keyval, modifiers);
	}
	
	/**
	 * Looks up key bindings for object to find one matching
	 * event, and if one was found, activate it.
	 * object:
	 *  a GtkObject (generally must be a widget)
	 * event:
	 *  a GdkEventKey
	 * Returns:
	 *  TRUE if a matching key binding was found
	 */
	public static int activateEvent(ObjectGtk object, GdkEventKey* event)
	{
		// gboolean gtk_bindings_activate_event (GtkObject *object,  GdkEventKey *event);
		return gtk_bindings_activate_event((object is null) ? null : object.getObjectGtkStruct(), event);
	}
	
	/**
	 * binding_set:
	 * keyval:
	 * modifiers:
	 * object:
	 * Returns:
	 */
	public int activate(uint keyval, GdkModifierType modifiers, ObjectGtk object)
	{
		// gboolean gtk_binding_set_activate (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers,  GtkObject *object);
		return gtk_binding_set_activate(gtkBindingSet, keyval, modifiers, (object is null) ? null : object.getObjectGtkStruct());
	}
	
	
	/**
	 * binding_set:
	 * keyval:
	 * modifiers:
	 */
	public void bindingEntryClear(uint keyval, GdkModifierType modifiers)
	{
		// void gtk_binding_entry_clear (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers);
		gtk_binding_entry_clear(gtkBindingSet, keyval, modifiers);
	}
	
	/**
	 * binding_set:
	 * keyval:
	 * modifiers:
	 * signal_name:
	 * n_args:
	 * ...:
	 */
	public void bindingEntryAddSignal(uint keyval, GdkModifierType modifiers, char[] signalName, uint nArgs, ... )
	{
		// void gtk_binding_entry_add_signal (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers,  const gchar *signal_name,  guint n_args,  ...);
		gtk_binding_entry_add_signal(gtkBindingSet, keyval, modifiers, std.string.toStringz(signalName), nArgs);
	}
	
	/**
	 * binding_set:
	 * path_type:
	 * path_pattern:
	 * priority:
	 */
	public void addPath(GtkPathType pathType, char[] pathPattern, GtkPathPriorityType priority)
	{
		// void gtk_binding_set_add_path (GtkBindingSet *binding_set,  GtkPathType path_type,  const gchar *path_pattern,  GtkPathPriorityType priority);
		gtk_binding_set_add_path(gtkBindingSet, pathType, std.string.toStringz(pathPattern), priority);
	}
	
	/**
	 * binding_set:
	 * keyval:
	 * modifiers:
	 */
	public void bindingEntryRemove(uint keyval, GdkModifierType modifiers)
	{
		// void gtk_binding_entry_remove (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers);
		gtk_binding_entry_remove(gtkBindingSet, keyval, modifiers);
	}
	
	/**
	 * binding_set:
	 * keyval:
	 * modifiers:
	 * signal_name:
	 * binding_args:
	 */
	public void bindingEntryAddSignall(uint keyval, GdkModifierType modifiers, char[] signalName, ListSG bindingArgs)
	{
		// void gtk_binding_entry_add_signall (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers,  const gchar *signal_name,  GSList *binding_args);
		gtk_binding_entry_add_signall(gtkBindingSet, keyval, modifiers, std.string.toStringz(signalName), (bindingArgs is null) ? null : bindingArgs.getListSGStruct());
	}
	
	/**
	 * scanner:
	 * Returns:
	 */
	public static uint bindingParseBinding(GScanner* scanner)
	{
		// guint gtk_binding_parse_binding (GScanner *scanner);
		return gtk_binding_parse_binding(scanner);
	}
}
