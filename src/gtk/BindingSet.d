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
 * inFile  = gtk3-Bindings.html
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
 * 	- gtk_binding_
 * 	- gtk_bindings_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListSG
 * 	- gobject.ObjectG
 * structWrap:
 * 	- GObject* -> ObjectG
 * 	- GSList* -> ListSG
 * 	- GtkBindingSet* -> BindingSet
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.BindingSet;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListSG;
private import gobject.ObjectG;




/**
 * Description
 * GtkBindingSet provides a mechanism for configuring GTK+ key bindings
 * through CSS files. This eases key binding adjustments for application
 * developers as well as users and provides GTK+ users or administrators
 * with high key binding configurability which requires no application
 * or toolkit side changes.
 * Installing a key binding
 * A CSS file binding consists of a 'binding-set' definition and a match
 * statement to apply the binding set to specific widget types. Details
 * on the matching mechanism are described under
 * Selectors
 * in the GtkCssProvider documentation. Inside the binding set definition,
 * key combinations are bound to one or more specific signal emissions on
 * the target widget. Key combinations are strings consisting of an optional
 * GdkModifierType name and key names
 * such as those defined in <gdk/gdkkeysyms.h>
 * or returned from gdk_keyval_name(), they have to be parsable by
 * gtk_accelerator_parse(). Specifications of signal emissions consist
 * of a string identifying the signal name, and a list of signal specific
 * arguments in parenthesis.
 * For example for binding Control and the left or right cursor keys
 * of a GtkEntry widget to the "move-cursor" signal (so movement
 * occurs in 3-character steps), the following binding can be used:
 * $(DDOC_COMMENT example)
 * <hr>
 * Unbinding existing key bindings
 * GTK+ already defines a number of useful bindings for the widgets
 * it provides. Because custom bindings set up in CSS files take
 * precedence over the default bindings shipped with GTK+, overriding
 * existing bindings as demonstrated in
 * Installing a key binding
 * works as expected. The same mechanism can not be used to "unbind"
 * existing bindings, however.
 * $(DDOC_COMMENT example)
 * The above example will not have the desired effect of causing
 * "<Control>Right" and "<Control>Left" key presses to
 * be ignored by GTK+. Instead, it just causes any existing bindings
 * from the bindings set "MoveCursor3" to be deleted, so when
 * "<Control>Right" or "<Control>Left" are pressed, no
 * binding for these keys is found in binding set "MoveCursor3".
 * GTK+ will thus continue to search for matching key bindings, and will
 * eventually lookup and find the default GTK+ bindings for entries which
 * implement word movement. To keep GTK+ from activating its default
 * bindings, the "unbind" keyword can be used like this:
 * $(DDOC_COMMENT example)
 * Now, GTK+ will find a match when looking up "<Control>Right"
 * and "<Control>Left" key presses before it resorts to its default
 * bindings, and the match instructs it to abort ("unbind") the search,
 * so the key presses are not consumed by this widget. As usual, further
 * processing of the key presses, e.g. by an entry's parent widget, is
 * now possible.
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
	 * Description
	 */
	
	/**
	 * Override or install a new key binding for keyval with modifiers on
	 * binding_set.
	 * Params:
	 * keyval = key value
	 * modifiers = key modifier
	 * signalName = signal name to be bound
	 * bindingArgs = list of GtkBindingArg signal arguments. [transfer none][element-type GtkBindingArg]
	 */
	public void entryAddSignall(uint keyval, GdkModifierType modifiers, string signalName, ListSG bindingArgs)
	{
		// void gtk_binding_entry_add_signall (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers,  const gchar *signal_name,  GSList *binding_args);
		gtk_binding_entry_add_signall(gtkBindingSet, keyval, modifiers, Str.toStringz(signalName), (bindingArgs is null) ? null : bindingArgs.getListSGStruct());
	}
	
	/**
	 * GTK+ maintains a global list of binding sets. Each binding set has
	 * a unique name which needs to be specified upon creation.
	 * Params:
	 * setName = unique name of this binding set
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string setName)
	{
		// GtkBindingSet * gtk_binding_set_new (const gchar *set_name);
		auto p = gtk_binding_set_new(Str.toStringz(setName));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_binding_set_new(Str.toStringz(setName))");
		}
		this(cast(GtkBindingSet*) p);
	}
	
	/**
	 * This function returns the binding set named after the type name of
	 * the passed in class structure. New binding sets are created on
	 * demand by this function.
	 * Params:
	 * objectClass = a valid GObject class
	 * Returns: the binding set corresponding to object_class. [transfer full]
	 */
	public static BindingSet byClass(void* objectClass)
	{
		// GtkBindingSet * gtk_binding_set_by_class (gpointer object_class);
		auto p = gtk_binding_set_by_class(objectClass);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(BindingSet)(cast(GtkBindingSet*) p);
	}
	
	/**
	 * Find a binding set by its globally unique name.
	 * The set_name can either be a name used for gtk_binding_set_new()
	 * or the type name of a class used in gtk_binding_set_by_class().
	 * Params:
	 * setName = unique binding set name
	 * Returns: NULL or the specified binding set. [transfer none]
	 */
	public static BindingSet find(string setName)
	{
		// GtkBindingSet * gtk_binding_set_find (const gchar *set_name);
		auto p = gtk_binding_set_find(Str.toStringz(setName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(BindingSet)(cast(GtkBindingSet*) p);
	}
	
	/**
	 * Find a key binding matching keyval and modifiers and activate the
	 * binding on object.
	 * Params:
	 * object = object to activate when binding found
	 * keyval = key value of the binding
	 * modifiers = key modifier of the binding
	 * Returns: TRUE if a binding was found and activated
	 */
	public static int activate(ObjectG object, uint keyval, GdkModifierType modifiers)
	{
		// gboolean gtk_bindings_activate (GObject *object,  guint keyval,  GdkModifierType modifiers);
		return gtk_bindings_activate((object is null) ? null : object.getObjectGStruct(), keyval, modifiers);
	}
	
	/**
	 * Looks up key bindings for object to find one matching
	 * event, and if one was found, activate it.
	 * Since 2.4
	 * Params:
	 * object = a GObject (generally must be a widget)
	 * event = a GdkEventKey
	 * Returns: TRUE if a matching key binding was found
	 */
	public static int activateEvent(ObjectG object, GdkEventKey* event)
	{
		// gboolean gtk_bindings_activate_event (GObject *object,  GdkEventKey *event);
		return gtk_bindings_activate_event((object is null) ? null : object.getObjectGStruct(), event);
	}
	
	/**
	 * Find a key binding matching keyval and modifiers within
	 * binding_set and activate the binding on object.
	 * Params:
	 * keyval = key value of the binding
	 * modifiers = key modifier of the binding
	 * object = object to activate when binding found
	 * Returns: TRUE if a binding was found and activated
	 */
	public int activate(uint keyval, GdkModifierType modifiers, ObjectG object)
	{
		// gboolean gtk_binding_set_activate (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers,  GObject *object);
		return gtk_binding_set_activate(gtkBindingSet, keyval, modifiers, (object is null) ? null : object.getObjectGStruct());
	}
	
	/**
	 * Parses a signal description from signal_desc and incorporates
	 * it into binding_set.
	 * Signal descriptions may either bind a key combination to
	 * Params:
	 * signalDesc = a signal description
	 * Returns: G_TOKEN_NONE if the signal was successfully parsed and added, the expected token otherwise Since 3.0
	 */
	public GTokenType entryAddSignalFromString(string signalDesc)
	{
		// GTokenType gtk_binding_entry_add_signal_from_string  (GtkBindingSet *binding_set,  const gchar *signal_desc);
		return gtk_binding_entry_add_signal_from_string(gtkBindingSet, Str.toStringz(signalDesc));
	}
	
	/**
	 * Install a binding on binding_set which causes key lookups
	 * to be aborted, to prevent bindings from lower priority sets
	 * to be activated.
	 * Since 2.12
	 * Params:
	 * keyval = key value of binding to skip
	 * modifiers = key modifier of binding to skip
	 */
	public void entrySkip(uint keyval, GdkModifierType modifiers)
	{
		// void gtk_binding_entry_skip (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers);
		gtk_binding_entry_skip(gtkBindingSet, keyval, modifiers);
	}
	
	/**
	 * Remove a binding previously installed via
	 * gtk_binding_entry_add_signal() on binding_set.
	 * Params:
	 * keyval = key value of binding to remove
	 * modifiers = key modifier of binding to remove
	 */
	public void entryRemove(uint keyval, GdkModifierType modifiers)
	{
		// void gtk_binding_entry_remove (GtkBindingSet *binding_set,  guint keyval,  GdkModifierType modifiers);
		gtk_binding_entry_remove(gtkBindingSet, keyval, modifiers);
	}
	
	/**
	 * Warning
	 * gtk_binding_set_add_path is deprecated and should not be used in newly-written code. 3.0
	 * This function was used internally by the GtkRC parsing mechanism
	 * to assign match patterns to GtkBindingSet structures.
	 * In GTK+ 3, these match patterns are unused.
	 * Params:
	 * pathType = path type the pattern applies to
	 * pathPattern = the actual match pattern
	 * priority = binding priority
	 */
	public void addPath(GtkPathType pathType, string pathPattern, GtkPathPriorityType priority)
	{
		// void gtk_binding_set_add_path (GtkBindingSet *binding_set,  GtkPathType path_type,  const gchar *path_pattern,  GtkPathPriorityType priority);
		gtk_binding_set_add_path(gtkBindingSet, pathType, Str.toStringz(pathPattern), priority);
	}
}
