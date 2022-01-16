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


module atk.ActionIF;

private import atk.c.functions;
public  import atk.c.types;
private import glib.Str;
private import glib.c.functions;


/**
 * #AtkAction should be implemented by instances of #AtkObject classes
 * with which the user can interact directly, i.e. buttons,
 * checkboxes, scrollbars, e.g. components which are not "passive"
 * providers of UI information.
 * 
 * Exceptions: when the user interaction is already covered by another
 * appropriate interface such as #AtkEditableText (insert/delete text,
 * etc.) or #AtkValue (set value) then these actions should not be
 * exposed by #AtkAction as well.
 * 
 * Though most UI interactions on components should be invocable via
 * keyboard as well as mouse, there will generally be a close mapping
 * between "mouse actions" that are possible on a component and the
 * AtkActions.  Where mouse and keyboard actions are redundant in
 * effect, #AtkAction should expose only one action rather than
 * exposing redundant actions if possible.  By convention we have been
 * using "mouse centric" terminology for #AtkAction names.
 */
public interface ActionIF{
	/** Get the main Gtk struct */
	public AtkAction* getActionStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return atk_action_get_type();
	}

	/**
	 * Perform the specified action on the object.
	 *
	 * Params:
	 *     i = the action index corresponding to the action to be performed
	 *
	 * Returns: %TRUE if success, %FALSE otherwise
	 */
	public bool doAction(int i);

	/**
	 * Returns a description of the specified action of the object.
	 *
	 * Params:
	 *     i = the action index corresponding to the action to be performed
	 *
	 * Returns: a description string, or %NULL if @action does
	 *     not implement this interface.
	 */
	public string getDescription(int i);

	/**
	 * Gets the keybinding which can be used to activate this action, if one
	 * exists. The string returned should contain localized, human-readable,
	 * key sequences as they would appear when displayed on screen. It must
	 * be in the format "mnemonic;sequence;shortcut".
	 *
	 * - The mnemonic key activates the object if it is presently enabled onscreen.
	 * This typically corresponds to the underlined letter within the widget.
	 * Example: "n" in a traditional "New..." menu item or the "a" in "Apply" for
	 * a button.
	 * - The sequence is the full list of keys which invoke the action even if the
	 * relevant element is not currently shown on screen. For instance, for a menu
	 * item the sequence is the keybindings used to open the parent menus before
	 * invoking. The sequence string is colon-delimited. Example: "Alt+F:N" in a
	 * traditional "New..." menu item.
	 * - The shortcut, if it exists, will invoke the same action without showing
	 * the component or its enclosing menus or dialogs. Example: "Ctrl+N" in a
	 * traditional "New..." menu item.
	 *
	 * Example: For a traditional "New..." menu item, the expected return value
	 * would be: "N;Alt+F:N;Ctrl+N" for the English locale and "N;Alt+D:N;Strg+N"
	 * for the German locale. If, hypothetically, this menu item lacked a mnemonic,
	 * it would be represented by ";;Ctrl+N" and ";;Strg+N" respectively.
	 *
	 * Params:
	 *     i = the action index corresponding to the action to be performed
	 *
	 * Returns: the keybinding which can be used to activate
	 *     this action, or %NULL if there is no keybinding for this action.
	 */
	public string getKeybinding(int i);

	/**
	 * Returns the localized name of the specified action of the object.
	 *
	 * Params:
	 *     i = the action index corresponding to the action to be performed
	 *
	 * Returns: a name string, or %NULL if @action does not
	 *     implement this interface.
	 */
	public string getLocalizedName(int i);

	/**
	 * Gets the number of accessible actions available on the object.
	 * If there are more than one, the first one is considered the
	 * "default" action of the object.
	 *
	 * Returns: a the number of actions, or 0 if @action does not
	 *     implement this interface.
	 */
	public int getNActions();

	/**
	 * Returns a non-localized string naming the specified action of the
	 * object. This name is generally not descriptive of the end result
	 * of the action, but instead names the 'interaction type' which the
	 * object supports. By convention, the above strings should be used to
	 * represent the actions which correspond to the common point-and-click
	 * interaction techniques of the same name: i.e.
	 * "click", "press", "release", "drag", "drop", "popup", etc.
	 * The "popup" action should be used to pop up a context menu for the
	 * object, if one exists.
	 *
	 * For technical reasons, some toolkits cannot guarantee that the
	 * reported action is actually 'bound' to a nontrivial user event;
	 * i.e. the result of some actions via atk_action_do_action() may be
	 * NIL.
	 *
	 * Params:
	 *     i = the action index corresponding to the action to be performed
	 *
	 * Returns: a name string, or %NULL if @action does not
	 *     implement this interface.
	 */
	public string getName(int i);

	/**
	 * Sets a description of the specified action of the object.
	 *
	 * Params:
	 *     i = the action index corresponding to the action to be performed
	 *     desc = the description to be assigned to this action
	 *
	 * Returns: a gboolean representing if the description was successfully set;
	 */
	public bool setDescription(int i, string desc);
}
