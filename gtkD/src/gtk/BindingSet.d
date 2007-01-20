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
 * inFile  = gtk-Bindings.html
 * outPack = gtk
 * outFile = BindingSet
 * strct   = GtkBindingSet
 * realStrct=
 * ctorStrct=
 * clss    = BindingSet
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_binding_set_
 * 	- gtk_bindings_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.BindingSet
 * 	- gtk.ObjectGtk
 * 	- glib.ListSG
 * 	- glib.Str;
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkBindingSet* -> BindingSet
 * 	- GtkObject* -> ObjectGtk
 * local aliases:
 */

module gtk.BindingSet;

private import gtk.gtktypes;

private import lib.gtk;

private import glib.Str;
private import gtk.BindingSet;
private import gtk.ObjectGtk;
private import glib.ListSG;
private import glib.Str;;

/**
 * Description
 * GtkBinding provides a mechanism for configuring Gtk+ key bindings through RC files.
 * This eases key binding adjustments for application developers as well as users and
 * provides Gtk+ users or administrators with high key binding configurability which
 * requires no application or toolkit side changes.
 * Installing a key binding
 * A resource file binding consists of a 'binding' definition and a match statement to
 * apply the binding to specific widget types. Details on the matching mechanism are
 * described under Pathnames and patterns.
 * Inside the binding definition, key combinations are bound to specific signal emissions
 * on the target widget. Key combinations are strings consisting of an optional GdkModifierType
 * name and key names such as those defined in
 * <gdk/gdkkeysyms.h> or returned from gdk_keyval_name(), they have
 * to be parsable by gtk_accelerator_parse().
 * Specifications of signal emissions consist of a string identifying the signal name, and
 * a list of signal specific arguments in parenthesis.
 * For example for binding Control and the left or right cursor keys of a GtkEntry widget to the
 * GtkEntry::move-cursor signal, so movement occurs in 3 letter steps,
 * the following binding can be used:
 * binding "MoveCursor3" {
	 *  bind "<Control>Right" {
		 *  "move-cursor" (visual-positions, 3, 0)
	 *  }
	 *  bind "<Control>Left" {
		 *  "move-cursor" (visual-positions, -3, 0)
	 *  }
 * }
 * class "GtkEntry" binding "MoveCursor3"
 * Unbinding existing key bindings
 * Gtk+ already defines a number of useful bindings for the widgets it provides.
 * Because custom bindings set up in RC files take precedence over the default bindings
 * shipped with Gtk+, overriding existing bindings as demonstrated in
 * Installing a key binding
 * works as expected. The same mechanism can not be used to "unbind" existing bindings,
 * however.
 * binding "MoveCursor3" {
 *  bind "<Control>Right" { }
 *  bind "<Control>Left" { }
 * }
 * class "GtkEntry" binding "MoveCursor3"
 * The above example will not have the desired effect of causing "<Control>Right"
 * and "<Control>Left" key presses to be ignored by Gtk+. Instead, it just causes
 * any existing bindings from the bindings set "MoveCursor3" to be deleted, so when
 * "<Control>Right" or "<Control>Left" are pressed, no binding for these keys
 * is found in binding set "MoveCursor3". Gtk+ will thus continue to search for matching
 * key bindings, and will eventually lookup and find the default Gtk+ bindings for entries
 * which implement word movement. To keep Gtk+ from activating its default bindings, the
 * "unbind" keyword can be used like this:
 * binding "MoveCursor3" {
	 *  unbind "<Control>Right"
	 *  unbind "<Control>Left"
 * }
 * class "GtkEntry" binding "MoveCursor3"
 * Now, Gtk+ will find a match when looking up "<Control>Right" and "<Control>Left"
 * key presses before it resorts to its default bindings, and the match instructs it to abort
 * ("unbind") the search, so the key presses are not consumed by this widget.
 * As usual, further processing of the key presses, e.g. by an entries parent widget,
 * is now possible.
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
	 * Gtk+ maintains a global list of binding sets. Each binding set has
	 * a unique name which needs to be specified upon creation.
	 * set_name:
	 *  unique name of this binding set
	 * Returns:
	 *  new binding set
	 */
	public this (char[] setName)
	{
		// GtkBindingSet* gtk_binding_set_new (const gchar *set_name);
		this(cast(GtkBindingSet*)gtk_binding_set_new(Str.toStringz(setName)) );
	}
	
	/**
	 * This function returns the binding set named after the type name of
	 * the passed in class structure. New binding sets are created on
	 * demand by this function.
	 * object_class:
	 *  a valid GtkObject class
	 * Returns:
	 *  the binding set corresponding to object_class
	 */
	public static BindingSet byClass(void* objectClass)
	{
		// GtkBindingSet* gtk_binding_set_by_class (gpointer object_class);
		return new BindingSet( gtk_binding_set_by_class(objectClass) );
	}
	
	/**
	 * Find a binding set by its globally unique name. The set_name can
	 * either be a name used for gtk_binding_set_new() or the type name of
	 * a class used in gtk_binding_set_by_class().
	 * set_name:
	 *  unique binding set name
	 * Returns:
	 *  NULL or the specified binding set
	 */
	public static BindingSet find(char[] setName)
	{
		// GtkBindingSet* gtk_binding_set_find (const gchar *set_name);
		return new BindingSet( gtk_binding_set_find(Str.toStringz(setName)) );
	}
	
	/**
	 * Find a key binding matching keyval and modifiers and activate the
	 * binding on object.
	 * object:
	 *  object to activate when binding found
	 * keyval:
	 *  key value of the binding
	 * modifiers:
	 *  key modifier of the binding
	 * Returns:
	 *  TRUE if a binding was found and activated
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
	 * Find a key binding matching keyval and modifiers within
	 * binding_set and activate the binding on object.
	 * binding_set:
	 *  binding_set to activate
	 * keyval:
	 *  key value of the binding
	 * modifiers:
	 *  key modifier of the binding
	 * object:
	 *  object to activate when binding found
	 * Returns:
	 *  TRUE if a binding was found and activated
	 */
	public int activate(uint keyval, GdkModifierType modifiers, ObjectGtk object)
	{
		// gboolean gtk_binding_set_activate (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers,  GtkObject *object);
		return gtk_binding_set_activate(gtkBindingSet, keyval, modifiers, (object is null) ? null : object.getObjectGtkStruct());
	}
	
	/**
	 * Override or install a new key binding for keyval with modifiers on
	 * binding_set. When the binding is activated, signal_name will be
	 * emitted on the target widget, with n_args Varargs used as
	 * arguments.
	 * binding_set:
	 *  binding_set to install an entry for
	 * keyval:
	 *  key value of binding to install
	 * modifiers:
	 *  key modifier of binding to install
	 * signal_name:
	 *  signal to execute upon activation
	 * n_args:
	 *  number of arguments to signal_name
	 * @: arguments to signal_name
	 * ...:
	 */
	public void bindingEntryAddSignal(uint keyval, GdkModifierType modifiers, char[] signalName, uint nArgs, ... )
	{
		// void gtk_binding_entry_add_signal (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers,  const gchar *signal_name,  guint n_args,  ...);
		gtk_binding_entry_add_signal(gtkBindingSet, keyval, modifiers, Str.toStringz(signalName), nArgs);
	}
	
	/**
	 * binding_set:
	 *  binding_set to skip an entry of
	 * keyval:
	 *  key value of binding to skip
	 * modifiers:
	 *  key modifier of binding to skip
	 * Since 2.12
	 * Install a binding on @binding_set which causes key lookups
	 * to be aborted, to prevent bindings from lower priority sets
	 * to be activated.
	 */
	public void bindingEntrySkip(uint keyval, GdkModifierType modifiers)
	{
		// void gtk_binding_entry_skip (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers);
		gtk_binding_entry_skip(gtkBindingSet, keyval, modifiers);
	}
	
	/**
	 * Remove a binding previously installed via
	 * gtk_binding_entry_add_signal() on binding_set.
	 * binding_set:
	 *  binding_set to remove an entry of
	 * keyval:
	 *  key value of binding to remove
	 * modifiers:
	 *  key modifier of binding to remove
	 */
	public void bindingEntryRemove(uint keyval, GdkModifierType modifiers)
	{
		// void gtk_binding_entry_remove (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers);
		gtk_binding_entry_remove(gtkBindingSet, keyval, modifiers);
	}
	
	/**
	 * This function is used internally by the GtkRC parsing mechanism to
	 * assign match patterns to GtkBindingSet structures.
	 * binding_set:
	 *  binding set to add a path to
	 * path_type:
	 *  path type the pattern applies to
	 * path_pattern:
	 *  the actual match pattern
	 * priority:
	 *  binding priority
	 * See Also
	 * Keyboard Accelerators
	 * installing and using keyboard short-cuts.
	 * Resource Files
	 * Gtk+ Resource Files - behavior and style definitions.
	 */
	public void addPath(GtkPathType pathType, char[] pathPattern, GtkPathPriorityType priority)
	{
		// void gtk_binding_set_add_path (GtkBindingSet *binding_set,  GtkPathType path_type,  const gchar *path_pattern,  GtkPathPriorityType priority);
		gtk_binding_set_add_path(gtkBindingSet, pathType, Str.toStringz(pathPattern), priority);
	}
}
