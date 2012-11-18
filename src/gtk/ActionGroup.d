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
 * inFile  = GtkActionGroup.html
 * outPack = gtk
 * outFile = ActionGroup
 * strct   = GtkActionGroup
 * realStrct=
 * ctorStrct=
 * clss    = ActionGroup
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_action_group_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gtk.AccelGroup
 * 	- gtk.Action
 * 	- gtk.Widget
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkAction* -> Action
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ActionGroup;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListG;
private import gtk.AccelGroup;
private import gtk.Action;
private import gtk.Widget;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gobject.ObjectG;

/**
 * Description
 * Actions are organised into groups. An action group is essentially a
 * map from names to GtkAction objects.
 * All actions that would make sense to use in a particular context
 * should be in a single group. Multiple action groups may be used for a
 * particular user interface. In fact, it is expected that most nontrivial
 * applications will make use of multiple groups. For example, in an
 * application that can edit multiple documents, one group holding global
 * actions (e.g. quit, about, new), and one group per document holding
 * actions that act on that document (eg. save, cut/copy/paste, etc). Each
 * window's menus would be constructed from a combination of two action
 * groups.
 * Accelerators are handled by the GTK+ accelerator map. All actions are
 * assigned an accelerator path (which normally has the form
 * <Actions>/group-name/action-name)
 * and a shortcut is associated with this accelerator path. All menuitems
 * and toolitems take on this accelerator path. The GTK+ accelerator map
 * code makes sure that the correct shortcut is displayed next to the menu
 * item.
 * GtkActionGroup as GtkBuildable
 * The GtkActionGroup implementation of the GtkBuildable interface accepts
 * GtkAction objects as <child> elements in UI definitions.
 * Note that it is probably more common to define actions and action groups
 * in the code, since they are directly related to what the code can do.
 * The GtkActionGroup implementation of the GtkBuildable interface supports
 * a custom <accelerator> element, which has attributes named key and
 * modifiers and allows to specify accelerators. This is similar to the
 * <accelerator> element of GtkWidget, the main difference is that
 * it doesn't allow you to specify a signal.
 * $(DDOC_COMMENT example)
 */
public class ActionGroup : ObjectG, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkActionGroup* gtkActionGroup;
	
	
	public GtkActionGroup* getActionGroupStruct()
	{
		return gtkActionGroup;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkActionGroup = cast(GtkActionGroup*)obj;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkActionGroup);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Action, Widget, ActionGroup)[] onConnectProxyListeners;
	/**
	 * The ::connect-proxy signal is emitted after connecting a proxy to
	 * an action in the group. Note that the proxy may have been connected
	 * to a different action before.
	 * This is intended for simple customizations for which a custom action
	 * class would be too clumsy, e.g. showing tooltips for menuitems in the
	 * statusbar.
	 * GtkUIManager proxies the signal and provides global notification
	 * just before any action is connected to a proxy, which is probably more
	 * convenient to use.
	 * Since 2.4
	 */
	void addOnConnectProxy(void delegate(Action, Widget, ActionGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("connect-proxy" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"connect-proxy",
			cast(GCallback)&callBackConnectProxy,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["connect-proxy"] = 1;
		}
		onConnectProxyListeners ~= dlg;
	}
	extern(C) static void callBackConnectProxy(GtkActionGroup* actionGroupStruct, GtkAction* action, GtkWidget* proxy, ActionGroup _actionGroup)
	{
		foreach ( void delegate(Action, Widget, ActionGroup) dlg ; _actionGroup.onConnectProxyListeners )
		{
			dlg(ObjectG.getDObject!(Action)(action), ObjectG.getDObject!(Widget)(proxy), _actionGroup);
		}
	}
	
	void delegate(Action, Widget, ActionGroup)[] onDisconnectProxyListeners;
	/**
	 * The ::disconnect-proxy signal is emitted after disconnecting a proxy
	 * from an action in the group.
	 * GtkUIManager proxies the signal and provides global notification
	 * just before any action is connected to a proxy, which is probably more
	 * convenient to use.
	 * Since 2.4
	 */
	void addOnDisconnectProxy(void delegate(Action, Widget, ActionGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("disconnect-proxy" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"disconnect-proxy",
			cast(GCallback)&callBackDisconnectProxy,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["disconnect-proxy"] = 1;
		}
		onDisconnectProxyListeners ~= dlg;
	}
	extern(C) static void callBackDisconnectProxy(GtkActionGroup* actionGroupStruct, GtkAction* action, GtkWidget* proxy, ActionGroup _actionGroup)
	{
		foreach ( void delegate(Action, Widget, ActionGroup) dlg ; _actionGroup.onDisconnectProxyListeners )
		{
			dlg(ObjectG.getDObject!(Action)(action), ObjectG.getDObject!(Widget)(proxy), _actionGroup);
		}
	}
	
	void delegate(Action, ActionGroup)[] onPostActivateListeners;
	/**
	 * The ::post-activate signal is emitted just after the action in the
	 * action_group is activated
	 * This is intended for GtkUIManager to proxy the signal and provide global
	 * notification just after any action is activated.
	 * Since 2.4
	 */
	void addOnPostActivate(void delegate(Action, ActionGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("post-activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"post-activate",
			cast(GCallback)&callBackPostActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["post-activate"] = 1;
		}
		onPostActivateListeners ~= dlg;
	}
	extern(C) static void callBackPostActivate(GtkActionGroup* actionGroupStruct, GtkAction* action, ActionGroup _actionGroup)
	{
		foreach ( void delegate(Action, ActionGroup) dlg ; _actionGroup.onPostActivateListeners )
		{
			dlg(ObjectG.getDObject!(Action)(action), _actionGroup);
		}
	}
	
	void delegate(Action, ActionGroup)[] onPreActivateListeners;
	/**
	 * The ::pre-activate signal is emitted just before the action in the
	 * action_group is activated
	 * This is intended for GtkUIManager to proxy the signal and provide global
	 * notification just before any action is activated.
	 * Since 2.4
	 */
	void addOnPreActivate(void delegate(Action, ActionGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("pre-activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"pre-activate",
			cast(GCallback)&callBackPreActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["pre-activate"] = 1;
		}
		onPreActivateListeners ~= dlg;
	}
	extern(C) static void callBackPreActivate(GtkActionGroup* actionGroupStruct, GtkAction* action, ActionGroup _actionGroup)
	{
		foreach ( void delegate(Action, ActionGroup) dlg ; _actionGroup.onPreActivateListeners )
		{
			dlg(ObjectG.getDObject!(Action)(action), _actionGroup);
		}
	}
	
	
	/**
	 * Creates a new GtkActionGroup object. The name of the action group
	 * is used when associating keybindings
	 * with the actions.
	 * Since 2.4
	 * Params:
	 * name = the name of the action group.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name)
	{
		// GtkActionGroup * gtk_action_group_new (const gchar *name);
		auto p = gtk_action_group_new(Str.toStringz(name));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_action_group_new(Str.toStringz(name))");
		}
		this(cast(GtkActionGroup*) p);
	}
	
	/**
	 * Gets the name of the action group.
	 * Since 2.4
	 * Returns: the name of the action group.
	 */
	public string getName()
	{
		// const gchar * gtk_action_group_get_name (GtkActionGroup *action_group);
		return Str.toString(gtk_action_group_get_name(gtkActionGroup));
	}
	
	/**
	 * Returns TRUE if the group is sensitive. The constituent actions
	 * can only be logically sensitive (see gtk_action_is_sensitive()) if
	 * they are sensitive (see gtk_action_get_sensitive()) and their group
	 * is sensitive.
	 * Since 2.4
	 * Returns: TRUE if the group is sensitive.
	 */
	public int getSensitive()
	{
		// gboolean gtk_action_group_get_sensitive (GtkActionGroup *action_group);
		return gtk_action_group_get_sensitive(gtkActionGroup);
	}
	
	/**
	 * Changes the sensitivity of action_group
	 * Since 2.4
	 * Params:
	 * sensitive = new sensitivity
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
	 * Since 2.4
	 * Returns: TRUE if the group is visible.
	 */
	public int getVisible()
	{
		// gboolean gtk_action_group_get_visible (GtkActionGroup *action_group);
		return gtk_action_group_get_visible(gtkActionGroup);
	}
	
	/**
	 * Changes the visible of action_group.
	 * Since 2.4
	 * Params:
	 * visible = new visiblity
	 */
	public void setVisible(int visible)
	{
		// void gtk_action_group_set_visible (GtkActionGroup *action_group,  gboolean visible);
		gtk_action_group_set_visible(gtkActionGroup, visible);
	}
	
	/**
	 * Gets the accelerator group.
	 * Returns: the accelerator group associated with this action group or NULL if there is none. [transfer none] Since 3.6
	 */
	public AccelGroup getAccelGroup()
	{
		// GtkAccelGroup * gtk_action_group_get_accel_group (GtkActionGroup *action_group);
		auto p = gtk_action_group_get_accel_group(gtkActionGroup);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(AccelGroup)(cast(GtkAccelGroup*) p);
	}
	
	/**
	 * Sets the accelerator group to be used by every action in this group.
	 * Params:
	 * accelGroup = a GtkAccelGroup to set or NULL. [allow-none]
	 * Since 3.6
	 */
	public void setAccelGroup(AccelGroup accelGroup)
	{
		// void gtk_action_group_set_accel_group (GtkActionGroup *action_group,  GtkAccelGroup *accel_group);
		gtk_action_group_set_accel_group(gtkActionGroup, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}
	
	/**
	 * Looks up an action in the action group by name.
	 * Since 2.4
	 * Params:
	 * actionName = the name of the action
	 * Returns: the action, or NULL if no action by that name exists. [transfer none]
	 */
	public Action getAction(string actionName)
	{
		// GtkAction * gtk_action_group_get_action (GtkActionGroup *action_group,  const gchar *action_name);
		auto p = gtk_action_group_get_action(gtkActionGroup, Str.toStringz(actionName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Action)(cast(GtkAction*) p);
	}
	
	/**
	 * Lists the actions in the action group.
	 * Since 2.4
	 * Returns: an allocated list of the action objects in the action group. [element-type GtkAction][transfer container]
	 */
	public ListG listActions()
	{
		// GList * gtk_action_group_list_actions (GtkActionGroup *action_group);
		auto p = gtk_action_group_list_actions(gtkActionGroup);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Adds an action object to the action group. Note that this function
	 * does not set up the accel path of the action, which can lead to problems
	 * if a user tries to modify the accelerator of a menuitem associated with
	 * the action. Therefore you must either set the accel path yourself with
	 * gtk_action_set_accel_path(), or use
	 * gtk_action_group_add_action_with_accel (..., NULL).
	 * Since 2.4
	 * Params:
	 * action = an action
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
	 * Since 2.4
	 * Params:
	 * action = the action to add
	 * accelerator = the accelerator for the action, in
	 * the format understood by gtk_accelerator_parse(), or "" for no accelerator, or
	 * NULL to use the stock accelerator. [allow-none]
	 */
	public void addActionWithAccel(Action action, string accelerator)
	{
		// void gtk_action_group_add_action_with_accel  (GtkActionGroup *action_group,  GtkAction *action,  const gchar *accelerator);
		gtk_action_group_add_action_with_accel(gtkActionGroup, (action is null) ? null : action.getActionStruct(), Str.toStringz(accelerator));
	}
	
	/**
	 * Removes an action object from the action group.
	 * Since 2.4
	 * Params:
	 * action = an action
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
	 * Since 2.4
	 * Params:
	 * entries = an array of action descriptions. [array length=n_entries]
	 * userData = data to pass to the action callbacks
	 */
	public void addActions(GtkActionEntry[] entries, void* userData)
	{
		// void gtk_action_group_add_actions (GtkActionGroup *action_group,  const GtkActionEntry *entries,  guint n_entries,  gpointer user_data);
		gtk_action_group_add_actions(gtkActionGroup, entries.ptr, cast(int) entries.length, userData);
	}
	
	/**
	 * This variant of gtk_action_group_add_actions() adds a GDestroyNotify
	 * callback for user_data.
	 * Since 2.4
	 * Params:
	 * entries = an array of action descriptions. [array length=n_entries]
	 * userData = data to pass to the action callbacks
	 * destroy = destroy notification callback for user_data
	 */
	public void addActionsFull(GtkActionEntry[] entries, void* userData, GDestroyNotify destroy)
	{
		// void gtk_action_group_add_actions_full (GtkActionGroup *action_group,  const GtkActionEntry *entries,  guint n_entries,  gpointer user_data,  GDestroyNotify destroy);
		gtk_action_group_add_actions_full(gtkActionGroup, entries.ptr, cast(int) entries.length, userData, destroy);
	}
	
	/**
	 * This is a convenience function to create a number of toggle actions and add them
	 * to the action group.
	 * The "activate" signals of the actions are connected to the callbacks and
	 * their accel paths are set to
	 * <Actions>/group-name/action-name.
	 * Since 2.4
	 * Params:
	 * entries = an array of toggle action descriptions. [array length=n_entries]
	 * userData = data to pass to the action callbacks
	 */
	public void addToggleActions(GtkToggleActionEntry[] entries, void* userData)
	{
		// void gtk_action_group_add_toggle_actions (GtkActionGroup *action_group,  const GtkToggleActionEntry *entries,  guint n_entries,  gpointer user_data);
		gtk_action_group_add_toggle_actions(gtkActionGroup, entries.ptr, cast(int) entries.length, userData);
	}
	
	/**
	 * This variant of gtk_action_group_add_toggle_actions() adds a
	 * GDestroyNotify callback for user_data.
	 * Since 2.4
	 * Params:
	 * entries = an array of toggle action descriptions. [array length=n_entries]
	 * userData = data to pass to the action callbacks
	 * destroy = destroy notification callback for user_data
	 */
	public void addToggleActionsFull(GtkToggleActionEntry[] entries, void* userData, GDestroyNotify destroy)
	{
		// void gtk_action_group_add_toggle_actions_full  (GtkActionGroup *action_group,  const GtkToggleActionEntry *entries,  guint n_entries,  gpointer user_data,  GDestroyNotify destroy);
		gtk_action_group_add_toggle_actions_full(gtkActionGroup, entries.ptr, cast(int) entries.length, userData, destroy);
	}
	
	/**
	 * This is a convenience routine to create a group of radio actions and
	 * add them to the action group.
	 * The "changed" signal of the first radio action is connected to the
	 * on_change callback and the accel paths of the actions are set to
	 * <Actions>/group-name/action-name.
	 * Since 2.4
	 * Params:
	 * entries = an array of radio action descriptions. [array length=n_entries]
	 * value = the value of the action to activate initially, or -1 if
	 * no action should be activated
	 * onChange = the callback to connect to the changed signal
	 * userData = data to pass to the action callbacks
	 */
	public void addRadioActions(GtkRadioActionEntry[] entries, int value, GCallback onChange, void* userData)
	{
		// void gtk_action_group_add_radio_actions (GtkActionGroup *action_group,  const GtkRadioActionEntry *entries,  guint n_entries,  gint value,  GCallback on_change,  gpointer user_data);
		gtk_action_group_add_radio_actions(gtkActionGroup, entries.ptr, cast(int) entries.length, value, onChange, userData);
	}
	
	/**
	 * This variant of gtk_action_group_add_radio_actions() adds a
	 * GDestroyNotify callback for user_data.
	 * Since 2.4
	 * Params:
	 * entries = an array of radio action descriptions. [array length=n_entries]
	 * value = the value of the action to activate initially, or -1 if
	 * no action should be activated
	 * onChange = the callback to connect to the changed signal
	 * userData = data to pass to the action callbacks
	 * destroy = destroy notification callback for user_data
	 */
	public void addRadioActionsFull(GtkRadioActionEntry[] entries, int value, GCallback onChange, void* userData, GDestroyNotify destroy)
	{
		// void gtk_action_group_add_radio_actions_full  (GtkActionGroup *action_group,  const GtkRadioActionEntry *entries,  guint n_entries,  gint value,  GCallback on_change,  gpointer user_data,  GDestroyNotify destroy);
		gtk_action_group_add_radio_actions_full(gtkActionGroup, entries.ptr, cast(int) entries.length, value, onChange, userData, destroy);
	}
	
	/**
	 * Sets a function to be used for translating the label and tooltip of
	 * GtkActionEntrys added by gtk_action_group_add_actions().
	 * If you're using gettext(), it is enough to set the translation domain
	 * with gtk_action_group_set_translation_domain().
	 * Since 2.4
	 * Params:
	 * func = a GtkTranslateFunc
	 * data = data to be passed to func and notify
	 * notify = a GDestroyNotify function to be called when action_group is
	 * destroyed and when the translation function is changed again
	 */
	public void setTranslateFunc(GtkTranslateFunc func, void* data, GDestroyNotify notify)
	{
		// void gtk_action_group_set_translate_func (GtkActionGroup *action_group,  GtkTranslateFunc func,  gpointer data,  GDestroyNotify notify);
		gtk_action_group_set_translate_func(gtkActionGroup, func, data, notify);
	}
	
	/**
	 * Sets the translation domain and uses g_dgettext() for translating the
	 * label and tooltip of GtkActionEntrys added by
	 * gtk_action_group_add_actions().
	 * If you're not using gettext() for localization, see
	 * gtk_action_group_set_translate_func().
	 * Since 2.4
	 * Params:
	 * domain = the translation domain to use for g_dgettext()
	 * calls, or NULL to use the domain set with textdomain(). [allow-none]
	 */
	public void setTranslationDomain(string domain)
	{
		// void gtk_action_group_set_translation_domain  (GtkActionGroup *action_group,  const gchar *domain);
		gtk_action_group_set_translation_domain(gtkActionGroup, Str.toStringz(domain));
	}
	
	/**
	 * Translates a string using the function set with
	 * gtk_action_group_set_translate_func(). This
	 * is mainly intended for language bindings.
	 * Since 2.6
	 * Params:
	 * string = a string
	 * Returns: the translation of string
	 */
	public string translateString(string string)
	{
		// const gchar * gtk_action_group_translate_string (GtkActionGroup *action_group,  const gchar *string);
		return Str.toString(gtk_action_group_translate_string(gtkActionGroup, Str.toStringz(string)));
	}
}
