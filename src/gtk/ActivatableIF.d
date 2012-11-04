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
 * inFile  = GtkActivatable.html
 * outPack = gtk
 * outFile = ActivatableIF
 * strct   = GtkActivatable
 * realStrct=
 * ctorStrct=
 * clss    = ActivatableT
 * interf  = ActivatableIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_activatable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Action
 * structWrap:
 * 	- GtkAction* -> Action
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ActivatableIF;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.Action;




/**
 * Description
 * Activatable widgets can be connected to a GtkAction and reflects
 * the state of its action. A GtkActivatable can also provide feedback
 * through its action, as they are responsible for activating their
 * related actions.
 * Implementing GtkActivatable
 * When extending a class that is already GtkActivatable; it is only
 * necessary to implement the GtkActivatable->sync_action_properties()
 * and GtkActivatable->update() methods and chain up to the parent
 * implementation, however when introducing
 * a new GtkActivatable class; the "related-action" and
 * "use-action-appearance" properties need to be handled by
 * the implementor. Handling these properties is mostly a matter of installing
 * the action pointer and boolean flag on your instance, and calling
 * gtk_activatable_do_set_related_action() and
 * gtk_activatable_sync_action_properties() at the appropriate times.
 * $(DDOC_COMMENT example)
 */
public interface ActivatableIF
{
	
	
	public GtkActivatable* getActivatableTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * This is a utility function for GtkActivatable implementors.
	 * When implementing GtkActivatable you must call this when
	 * handling changes of the "related-action", and
	 * you must also use this to break references in GObject->dispose().
	 * This function adds a reference to the currently set related
	 * action for you, it also makes sure the GtkActivatable->update()
	 * method is called when the related GtkAction properties change
	 * and registers to the action's proxy list.
	 * Note
	 * Be careful to call this before setting the local
	 * copy of the GtkAction property, since this function uses
	 * gtk_activatable_get_related_action() to retrieve the
	 * previous action
	 * Since 2.16
	 * Params:
	 * action = the GtkAction to set
	 */
	public void doSetRelatedAction(Action action);
	
	/**
	 * Gets the related GtkAction for activatable.
	 * Since 2.16
	 * Returns: the related GtkAction if one is set. [transfer none]
	 */
	public Action getRelatedAction();
	
	/**
	 * Gets whether this activatable should reset its layout
	 * and appearance when setting the related action or when
	 * the action changes appearance.
	 * Since 2.16
	 * Returns: whether activatable uses its actions appearance.
	 */
	public int getUseActionAppearance();
	
	/**
	 * This is called to update the activatable completely, this is called
	 * internally when the "related-action" property is set
	 * or unset and by the implementing class when
	 * "use-action-appearance" changes.
	 * Since 2.16
	 * Params:
	 * action = the related GtkAction or NULL. [allow-none]
	 */
	public void syncActionProperties(Action action);
	
	/**
	 * Sets the related action on the activatable object.
	 * Note
	 * GtkActivatable implementors need to handle the "related-action"
	 * property and call gtk_activatable_do_set_related_action() when it changes.
	 * Since 2.16
	 * Params:
	 * action = the GtkAction to set
	 */
	public void setRelatedAction(Action action);
	
	/**
	 * Sets whether this activatable should reset its layout and appearance
	 * when setting the related action or when the action changes appearance
	 * Note
	 * GtkActivatable implementors need to handle the
	 * "use-action-appearance" property and call
	 * gtk_activatable_sync_action_properties() to update activatable
	 * if needed.
	 * Since 2.16
	 * Params:
	 * useAppearance = whether to use the actions appearance
	 */
	public void setUseActionAppearance(int useAppearance);
}
