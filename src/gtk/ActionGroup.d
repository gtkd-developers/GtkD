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
 * outFile = ActionGroup
 * strct   = GtkActionGroup
 * realStrct=
 * clss    = ActionGroup
 * template for:
 * extend  = 
 * prefixes:
 * 	- gtk_action_group_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.Action
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkAction* -> Action
 * local aliases:
 */

module gtk.ActionGroup;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.Action;
private import glib.ListG;

/**
 * Description
 * Actions are organised into groups. An action group is essentially a
 * map from names to GtkAction objects.
 * All actions that would make sense to use in a particular context
 * should be in a single group. Multiple action groups may be used for a
 * particular user interface. In fact, it is expected that most nontrivial
 * applications will make use of multiple groups. For example, in an application
 * that can edit multiple documents, one group holding global actions
 * (e.g. quit, about, new), and one group per document holding actions that
 * act on that document (eg. save, cut/copy/paste, etc). Each window's menus
 * would be constructed from a combination of two action groups.
 * Accelerators are handled by the GTK+ accelerator map. All actions are assigned an
 * accelerator path (which normally has the form
 * <Actions>/group-name/action-name)
 * and a shortcut is associated with this accelerator path. All menuitems and
 * toolitems take on this accelerator path. The GTK+ accelerator map code makes
 * sure that the correct shortcut is displayed next to the menu item.
 */
private import gobject.ObjectG;
public class ActionGroup : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkActionGroup* gtkActionGroup;
	
	
	public GtkActionGroup* getActionGroupStruct()
	{
		return gtkActionGroup;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkActionGroup;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkActionGroup* gtkActionGroup)
	{
		super(cast(GObject*)gtkActionGroup);
		this.gtkActionGroup = gtkActionGroup;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(Action, GtkWidget*, ActionGroup)[] onConnectProxyListeners;
	void addOnConnectProxy(void delegate(Action, GtkWidget*, ActionGroup) dlg)
	{
		if ( !("connect-proxy" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"connect-proxy",
			cast(GCallback)&callBackConnectProxy,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["connect-proxy"] = 1;
		}
		onConnectProxyListeners ~= dlg;
	}
	extern(C) static void callBackConnectProxy(GtkActionGroup* actionGroupStruct, GtkAction* action, GtkWidget* proxy, ActionGroup actionGroup)
	{
		bit consumed = false;
		
		foreach ( void delegate(Action, GtkWidget*, ActionGroup) dlg ; actionGroup.onConnectProxyListeners )
		{
			dlg(new Action(action), proxy, actionGroup);
		}
		
		return consumed;
	}
	
	void delegate(Action, GtkWidget*, ActionGroup)[] onDisconnectProxyListeners;
	void addOnDisconnectProxy(void delegate(Action, GtkWidget*, ActionGroup) dlg)
	{
		if ( !("disconnect-proxy" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"disconnect-proxy",
			cast(GCallback)&callBackDisconnectProxy,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["disconnect-proxy"] = 1;
		}
		onDisconnectProxyListeners ~= dlg;
	}
	extern(C) static void callBackDisconnectProxy(GtkActionGroup* actionGroupStruct, GtkAction* action, GtkWidget* proxy, ActionGroup actionGroup)
	{
		bit consumed = false;
		
		foreach ( void delegate(Action, GtkWidget*, ActionGroup) dlg ; actionGroup.onDisconnectProxyListeners )
		{
			dlg(new Action(action), proxy, actionGroup);
		}
		
		return consumed;
	}
	
	void delegate(Action, ActionGroup)[] onPostActivateListeners;
	void addOnPostActivate(void delegate(Action, ActionGroup) dlg)
	{
		if ( !("post-activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"post-activate",
			cast(GCallback)&callBackPostActivate,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["post-activate"] = 1;
		}
		onPostActivateListeners ~= dlg;
	}
	extern(C) static void callBackPostActivate(GtkActionGroup* actionGroupStruct, GtkAction* action, ActionGroup actionGroup)
	{
		bit consumed = false;
		
		foreach ( void delegate(Action, ActionGroup) dlg ; actionGroup.onPostActivateListeners )
		{
			dlg(new Action(action), actionGroup);
		}
		
		return consumed;
	}
	
	void delegate(Action, ActionGroup)[] onPreActivateListeners;
	void addOnPreActivate(void delegate(Action, ActionGroup) dlg)
	{
		if ( !("pre-activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"pre-activate",
			cast(GCallback)&callBackPreActivate,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["pre-activate"] = 1;
		}
		onPreActivateListeners ~= dlg;
	}
	extern(C) static void callBackPreActivate(GtkActionGroup* actionGroupStruct, GtkAction* action, ActionGroup actionGroup)
	{
		bit consumed = false;
		
		foreach ( void delegate(Action, ActionGroup) dlg ; actionGroup.onPreActivateListeners )
		{
			dlg(new Action(action), actionGroup);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkActionGroup object. The name of the action group
	 * is used when associating keybindings
	 * with the actions.
	 * name:
	 *  the name of the action group.
	 * Returns:
	 *  the new GtkActionGroup
	 * Since 2.4
	 */
	public this (char[] name)
	{
		// GtkActionGroup* gtk_action_group_new (const gchar *name);
		this(cast(GtkActionGroup*)gtk_action_group_new(Str.toStringz(name)) );
	}
	
	/**
	 * Gets the name of the action group.
	 * action_group:
	 *  the action group
	 * Returns:
	 *  the name of the action group.
	 * Since 2.4
	 */
	public char[] getName()
	{
		// const gchar* gtk_action_group_get_name (GtkActionGroup *action_group);
		return Str.toString(gtk_action_group_get_name(gtkActionGroup) );
	}
	
	/**
	 * Returns TRUE if the group is sensitive. The constituent actions
	 * can only be logically sensitive (see gtk_action_is_sensitive()) if
	 * they are sensitive (see gtk_action_get_sensitive()) and their group
	 * is sensitive.
	 * action_group:
	 *  the action group
	 * Returns:
	 *  TRUE if the group is sensitive.
	 * Since 2.4
	 */
	public int getSensitive()
	{
		// gboolean gtk_action_group_get_sensitive (GtkActionGroup *action_group);
		return gtk_action_group_get_sensitive(gtkActionGroup);
	}
	
	/**
	 * Changes the sensitivity of action_group
	 * action_group:
	 *  the action group
	 * sensitive:
	 *  new sensitivity
	 * Since 2.4
	 */
	public void setSensitive(int sensitive)
	{
		// void gtk_action_group_set_sensitive (GtkActionGroup *action_group,  gboolean sensitive);
		gtk_action_group_set_sensitive(gtkActionGroup, sensitive);
	}
	
	/**
	 * Returns TRUE if the group is visible. The constituent actions
	 * can only be logically visible (see gtk_action_is_visible()) if
	 * they are visible (see gtk_action_get_visible()) and their group
	 * is visible.
	 * action_group:
	 *  the action group
	 * Returns:
	 *  TRUE if the group is visible.
	 * Since 2.4
	 */
	public int getVisible()
	{
		// gboolean gtk_action_group_get_visible (GtkActionGroup *action_group);
		return gtk_action_group_get_visible(gtkActionGroup);
	}
	
	/**
	 * Changes the visible of action_group.
	 * action_group:
	 *  the action group
	 * visible:
	 *  new visiblity
	 * Since 2.4
	 */
	public void setVisible(int visible)
	{
		// void gtk_action_group_set_visible (GtkActionGroup *action_group,  gboolean visible);
		gtk_action_group_set_visible(gtkActionGroup, visible);
	}
	
	/**
	 * Looks up an action in the action group by name.
	 * action_group:
	 *  the action group
	 * action_name:
	 *  the name of the action
	 * Returns:
	 *  the action, or NULL if no action by that name exists
	 * Since 2.4
	 */
	public Action getAction(char[] actionName)
	{
		// GtkAction* gtk_action_group_get_action (GtkActionGroup *action_group,  const gchar *action_name);
		return new Action( gtk_action_group_get_action(gtkActionGroup, Str.toStringz(actionName)) );
	}
	
	/**
	 * Lists the actions in the action group.
	 * action_group:
	 *  the action group
	 * Returns:
	 *  an allocated list of the action objects in the action group
	 * Since 2.4
	 */
	public ListG listActions()
	{
		// GList* gtk_action_group_list_actions (GtkActionGroup *action_group);
		return new ListG( gtk_action_group_list_actions(gtkActionGroup) );
	}
	
	/**
	 * Adds an action object to the action group. Note that this function
	 * does not set up the accel path of the action, which can lead to problems
	 * if a user tries to modify the accelerator of a menuitem associated with
	 * the action. Therefore you must either set the accel path yourself with
	 * gtk_action_set_accel_path(), or use
	 * gtk_action_group_add_action_with_accel (..., NULL).
	 * action_group:
	 *  the action group
	 * action:
	 *  an action
	 * Since 2.4
	 */
	public void addAction(Action action)
	{
		// void gtk_action_group_add_action (GtkActionGroup *action_group,  GtkAction *action);
		gtk_action_group_add_action(gtkActionGroup, (action is null) ? null : action.getActionStruct());
	}
	
	/**
	 * Adds an action object to the action group and sets up the accelerator.
	 * If accelerator is NULL, attempts to use the accelerator associated
	 * with the stock_id of the action.
	 * Accel paths are set to
	 * <Actions>/group-name/action-name.
	 * action_group:
	 *  the action group
	 * action:
	 *  the action to add
	 * accelerator:
	 *  the accelerator for the action, in
	 *  the format understood by gtk_accelerator_parse(), or "" for no accelerator, or
	 *  NULL to use the stock accelerator
	 * Since 2.4
	 */
	public void addActionWithAccel(Action action, char[] accelerator)
	{
		// void gtk_action_group_add_action_with_accel  (GtkActionGroup *action_group,  GtkAction *action,  const gchar *accelerator);
		gtk_action_group_add_action_with_accel(gtkActionGroup, (action is null) ? null : action.getActionStruct(), Str.toStringz(accelerator));
	}
	
	/**
	 * Removes an action object from the action group.
	 * action_group:
	 *  the action group
	 * action:
	 *  an action
	 * Since 2.4
	 */
	public void removeAction(Action action)
	{
		// void gtk_action_group_remove_action (GtkActionGroup *action_group,  GtkAction *action);
		gtk_action_group_remove_action(gtkActionGroup, (action is null) ? null : action.getActionStruct());
	}
	
	
	/**
	 * This is a convenience function to create a number of actions and add them
	 * to the action group.
	 * The "activate" signals of the actions are connected to the callbacks and
	 * their accel paths are set to
	 * <Actions>/group-name/action-name.
	 * action_group:
	 *  the action group
	 * entries:
	 *  an array of action descriptions
	 * n_entries:
	 *  the number of entries
	 * user_data:
	 *  data to pass to the action callbacks
	 * Since 2.4
	 */
	public void addActions(GtkActionEntry* entries, uint nEntries, void* userData)
	{
		// void gtk_action_group_add_actions (GtkActionGroup *action_group,  const GtkActionEntry *entries,  guint n_entries,  gpointer user_data);
		gtk_action_group_add_actions(gtkActionGroup, entries, nEntries, userData);
	}
	
	/**
	 * This variant of gtk_action_group_add_actions() adds a GDestroyNotify
	 * callback for user_data.
	 * action_group:
	 *  the action group
	 * entries:
	 *  an array of action descriptions
	 * n_entries:
	 *  the number of entries
	 * user_data:
	 *  data to pass to the action callbacks
	 * destroy:
	 *  destroy notification callback for user_data
	 * Since 2.4
	 */
	public void addActionsFull(GtkActionEntry* entries, uint nEntries, void* userData, GDestroyNotify destroy)
	{
		// void gtk_action_group_add_actions_full  (GtkActionGroup *action_group,  const GtkActionEntry *entries,  guint n_entries,  gpointer user_data,  GDestroyNotify destroy);
		gtk_action_group_add_actions_full(gtkActionGroup, entries, nEntries, userData, destroy);
	}
	
	
	/**
	 * This is a convenience function to create a number of toggle actions and add them
	 * to the action group.
	 * The "activate" signals of the actions are connected to the callbacks and
	 * their accel paths are set to
	 * <Actions>/group-name/action-name.
	 * action_group:
	 *  the action group
	 * entries:
	 *  an array of toggle action descriptions
	 * n_entries:
	 *  the number of entries
	 * user_data:
	 *  data to pass to the action callbacks
	 * Since 2.4
	 */
	public void addToggleActions(GtkToggleActionEntry* entries, uint nEntries, void* userData)
	{
		// void gtk_action_group_add_toggle_actions  (GtkActionGroup *action_group,  const GtkToggleActionEntry *entries,  guint n_entries,  gpointer user_data);
		gtk_action_group_add_toggle_actions(gtkActionGroup, entries, nEntries, userData);
	}
	
	/**
	 * This variant of gtk_action_group_add_toggle_actions() adds a
	 * GDestroyNotify callback for user_data.
	 * action_group:
	 *  the action group
	 * entries:
	 *  an array of toggle action descriptions
	 * n_entries:
	 *  the number of entries
	 * user_data:
	 *  data to pass to the action callbacks
	 * destroy:
	 *  destroy notification callback for user_data
	 * Since 2.4
	 */
	public void addToggleActionsFull(GtkToggleActionEntry* entries, uint nEntries, void* userData, GDestroyNotify destroy)
	{
		// void gtk_action_group_add_toggle_actions_full  (GtkActionGroup *action_group,  const GtkToggleActionEntry *entries,  guint n_entries,  gpointer user_data,  GDestroyNotify destroy);
		gtk_action_group_add_toggle_actions_full(gtkActionGroup, entries, nEntries, userData, destroy);
	}
	
	
	/**
	 * This is a convenience routine to create a group of radio actions and
	 * add them to the action group.
	 * The "changed" signal of the first radio action is connected to the
	 * on_change callback and the accel paths of the actions are set to
	 * <Actions>/group-name/action-name.
	 * action_group:
	 *  the action group
	 * entries:
	 *  an array of radio action descriptions
	 * n_entries:
	 *  the number of entries
	 * value:
	 *  the value of the action to activate initially, or -1 if
	 *  no action should be activated
	 * on_change:
	 *  the callback to connect to the changed signal
	 * user_data:
	 *  data to pass to the action callbacks
	 * Since 2.4
	 */
	public void addRadioActions(GtkRadioActionEntry* entries, uint nEntries, int value, GCallback onChange, void* userData)
	{
		// void gtk_action_group_add_radio_actions  (GtkActionGroup *action_group,  const GtkRadioActionEntry *entries,  guint n_entries,  gint value,  GCallback on_change,  gpointer user_data);
		gtk_action_group_add_radio_actions(gtkActionGroup, entries, nEntries, value, onChange, userData);
	}
	
	/**
	 * This variant of gtk_action_group_add_radio_actions() adds a
	 * GDestroyNotify callback for user_data.
	 * action_group:
	 *  the action group
	 * entries:
	 *  an array of radio action descriptions
	 * n_entries:
	 *  the number of entries
	 * value:
	 *  the value of the action to activate initially, or -1 if
	 *  no action should be activated
	 * on_change:
	 *  the callback to connect to the changed signal
	 * user_data:
	 *  data to pass to the action callbacks
	 * destroy:
	 *  destroy notification callback for user_data
	 * Since 2.4
	 */
	public void addRadioActionsFull(GtkRadioActionEntry* entries, uint nEntries, int value, GCallback onChange, void* userData, GDestroyNotify destroy)
	{
		// void gtk_action_group_add_radio_actions_full  (GtkActionGroup *action_group,  const GtkRadioActionEntry *entries,  guint n_entries,  gint value,  GCallback on_change,  gpointer user_data,  GDestroyNotify destroy);
		gtk_action_group_add_radio_actions_full(gtkActionGroup, entries, nEntries, value, onChange, userData, destroy);
	}
	
	/**
	 * Sets a function to be used for translating the label and tooltip of
	 * GtkActionGroupEntrys added by gtk_action_group_add_actions().
	 * If you're using gettext(), it is enough to set the translation domain
	 * with gtk_action_group_set_translation_domain().
	 * action_group:
	 *  a GtkActionGroup
	 * func:
	 *  a GtkTranslateFunc
	 * data:
	 *  data to be passed to func and notify
	 * notify:
	 *  a GtkDestroyNotify function to be called when action_group is
	 *  destroyed and when the translation function is changed again
	 * Since 2.4
	 */
	public void setTranslateFunc(GtkTranslateFunc func, void* data, GtkDestroyNotify notify)
	{
		// void gtk_action_group_set_translate_func  (GtkActionGroup *action_group,  GtkTranslateFunc func,  gpointer data,  GtkDestroyNotify notify);
		gtk_action_group_set_translate_func(gtkActionGroup, func, data, notify);
	}
	
	/**
	 * Sets the translation domain and uses dgettext() for translating the
	 * label and tooltip of GtkActionEntrys added by
	 * gtk_action_group_add_actions().
	 * If you're not using gettext() for localization, see
	 * gtk_action_group_set_translate_func().
	 * action_group:
	 *  a GtkActionGroup
	 * domain:
	 *  the translation domain to use for dgettext() calls
	 * Since 2.4
	 */
	public void setTranslationDomain(char[] domain)
	{
		// void gtk_action_group_set_translation_domain  (GtkActionGroup *action_group,  const gchar *domain);
		gtk_action_group_set_translation_domain(gtkActionGroup, Str.toStringz(domain));
	}
	
	/**
	 * Translates a string using the specified translate_func(). This
	 * is mainly intended for language bindings.
	 * action_group:
	 *  a GtkActionGroup
	 * string:
	 *  a string
	 * Returns:
	 *  the translation of string
	 * Since 2.6
	 * Property Details
	 * The "name" property
	 *  "name" gchararray : Read / Write / Construct Only
	 * A name for the action group.
	 * Default value: NULL
	 */
	public char[] translateString(char[] string)
	{
		// const gchar* gtk_action_group_translate_string  (GtkActionGroup *action_group,  const gchar *string);
		return Str.toString(gtk_action_group_translate_string(gtkActionGroup, Str.toStringz(string)) );
	}
	
	
	
	
	
}
