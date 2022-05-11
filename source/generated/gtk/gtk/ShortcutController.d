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


module gtk.ShortcutController;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.EventController;
private import gtk.Shortcut;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkShortcutController` is an event controller that manages shortcuts.
 * 
 * Most common shortcuts are using this controller implicitly, e.g. by
 * adding a mnemonic underline to a `GtkLabel`, or by installing a key
 * binding using [method@Gtk.WidgetClass.add_binding], or by adding accelerators
 * to global actions using [method@Gtk.Application.set_accels_for_action].
 * 
 * But it is possible to create your own shortcut controller, and add
 * shortcuts to it.
 * 
 * `GtkShortcutController` implements `GListModel` for querying the
 * shortcuts that have been added to it.
 * 
 * # GtkShortcutController as a GtkBuildable
 * 
 * `GtkShortcutControllers` can be creates in ui files to set up
 * shortcuts in the same place as the widgets.
 * 
 * An example of a UI definition fragment with `GtkShortcutController`:
 * ```xml
 * <object class='GtkButton'>
 * <child>
 * <object class='GtkShortcutController'>
 * <property name='scope'>managed</property>
 * <child>
 * <object class='GtkShortcut'>
 * <property name='trigger'>&lt;Control&gt;k</property>
 * <property name='action'>activate</property>
 * </object>
 * </child>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * This example creates a [class@Gtk.ActivateAction] for triggering the
 * `activate` signal of the `GtkButton`. See [ctor@Gtk.ShortcutAction.parse_string]
 * for the syntax for other kinds of `GtkShortcutAction`. See
 * [ctor@Gtk.ShortcutTrigger.parse_string] to learn more about the syntax
 * for triggers.
 */
public class ShortcutController : EventController, ListModelIF, BuildableIF
{
	/** the main Gtk struct */
	protected GtkShortcutController* gtkShortcutController;

	/** Get the main Gtk struct */
	public GtkShortcutController* getShortcutControllerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkShortcutController;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkShortcutController;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkShortcutController* gtkShortcutController, bool ownedRef = false)
	{
		this.gtkShortcutController = gtkShortcutController;
		super(cast(GtkEventController*)gtkShortcutController, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkShortcutController);

	// add the Buildable capabilities
	mixin BuildableT!(GtkShortcutController);


	/** */
	public static GType getType()
	{
		return gtk_shortcut_controller_get_type();
	}

	/**
	 * Creates a new shortcut controller.
	 *
	 * Returns: a newly created shortcut controller
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_shortcut_controller_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkShortcutController*) __p, true);
	}

	/**
	 * Creates a new shortcut controller that takes its shortcuts from
	 * the given list model.
	 *
	 * A controller created by this function does not let you add or
	 * remove individual shortcuts using the shortcut controller api,
	 * but you can change the contents of the model.
	 *
	 * Params:
	 *     model = a `GListModel` containing shortcuts
	 *
	 * Returns: a newly created shortcut controller
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListModelIF model)
	{
		auto __p = gtk_shortcut_controller_new_for_model((model is null) ? null : model.getListModelStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_model");
		}

		this(cast(GtkShortcutController*) __p, true);
	}

	/**
	 * Adds @shortcut to the list of shortcuts handled by @self.
	 *
	 * If this controller uses an external shortcut list, this
	 * function does nothing.
	 *
	 * Params:
	 *     shortcut = a `GtkShortcut`
	 */
	public void addShortcut(Shortcut shortcut)
	{
		gtk_shortcut_controller_add_shortcut(gtkShortcutController, (shortcut is null) ? null : shortcut.getShortcutStruct());
	}

	/**
	 * Gets the mnemonics modifiers for when this controller activates its shortcuts.
	 *
	 * Returns: the controller's mnemonics modifiers
	 */
	public GdkModifierType getMnemonicsModifiers()
	{
		return gtk_shortcut_controller_get_mnemonics_modifiers(gtkShortcutController);
	}

	/**
	 * Gets the scope for when this controller activates its shortcuts.
	 *
	 * See [method@Gtk.ShortcutController.set_scope] for details.
	 *
	 * Returns: the controller's scope
	 */
	public GtkShortcutScope getScope()
	{
		return gtk_shortcut_controller_get_scope(gtkShortcutController);
	}

	/**
	 * Removes @shortcut from the list of shortcuts handled by @self.
	 *
	 * If @shortcut had not been added to @controller or this controller
	 * uses an external shortcut list, this function does nothing.
	 *
	 * Params:
	 *     shortcut = a `GtkShortcut`
	 */
	public void removeShortcut(Shortcut shortcut)
	{
		gtk_shortcut_controller_remove_shortcut(gtkShortcutController, (shortcut is null) ? null : shortcut.getShortcutStruct());
	}

	/**
	 * Sets the controller to use the given modifier for mnemonics.
	 *
	 * The mnemonics modifiers determines which modifiers need to be pressed to allow
	 * activation of shortcuts with mnemonics triggers.
	 *
	 * GTK normally uses the Alt modifier for mnemonics, except in `GtkPopoverMenu`s,
	 * where mnemonics can be triggered without any modifiers. It should be very
	 * rarely necessary to change this, and doing so is likely to interfere with
	 * other shortcuts.
	 *
	 * This value is only relevant for local shortcut controllers. Global and managed
	 * shortcut controllers will have their shortcuts activated from other places which
	 * have their own modifiers for activating mnemonics.
	 *
	 * Params:
	 *     modifiers = the new mnemonics_modifiers to use
	 */
	public void setMnemonicsModifiers(GdkModifierType modifiers)
	{
		gtk_shortcut_controller_set_mnemonics_modifiers(gtkShortcutController, modifiers);
	}

	/**
	 * Sets the controller to have the given @scope.
	 *
	 * The scope allows shortcuts to be activated outside of the normal
	 * event propagation. In particular, it allows installing global
	 * keyboard shortcuts that can be activated even when a widget does
	 * not have focus.
	 *
	 * With %GTK_SHORTCUT_SCOPE_LOCAL, shortcuts will only be activated
	 * when the widget has focus.
	 *
	 * Params:
	 *     scope_ = the new scope to use
	 */
	public void setScope(GtkShortcutScope scope_)
	{
		gtk_shortcut_controller_set_scope(gtkShortcutController, scope_);
	}
}
