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


module gtk.ActionGroup;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccelGroup;
private import gtk.Action;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * Actions are organised into groups. An action group is essentially a
 * map from names to #GtkAction objects.
 * 
 * All actions that would make sense to use in a particular context
 * should be in a single group. Multiple action groups may be used for a
 * particular user interface. In fact, it is expected that most nontrivial
 * applications will make use of multiple groups. For example, in an
 * application that can edit multiple documents, one group holding global
 * actions (e.g. quit, about, new), and one group per document holding
 * actions that act on that document (eg. save, cut/copy/paste, etc). Each
 * window’s menus would be constructed from a combination of two action
 * groups.
 * 
 * ## Accelerators ## {#Action-Accel}
 * 
 * Accelerators are handled by the GTK+ accelerator map. All actions are
 * assigned an accelerator path (which normally has the form
 * `<Actions>/group-name/action-name`) and a shortcut is associated with
 * this accelerator path. All menuitems and toolitems take on this accelerator
 * path. The GTK+ accelerator map code makes sure that the correct shortcut
 * is displayed next to the menu item.
 * 
 * # GtkActionGroup as GtkBuildable # {#GtkActionGroup-BUILDER-UI}
 * 
 * The #GtkActionGroup implementation of the #GtkBuildable interface accepts
 * #GtkAction objects as <child> elements in UI definitions.
 * 
 * Note that it is probably more common to define actions and action groups
 * in the code, since they are directly related to what the code can do.
 * 
 * The GtkActionGroup implementation of the GtkBuildable interface supports
 * a custom <accelerator> element, which has attributes named “key“ and
 * “modifiers“ and allows to specify accelerators. This is similar to the
 * <accelerator> element of #GtkWidget, the main difference is that
 * it doesn’t allow you to specify a signal.
 * 
 * ## A #GtkDialog UI definition fragment. ##
 * |[
 * <object class="GtkActionGroup" id="actiongroup">
 * <child>
 * <object class="GtkAction" id="About">
 * <property name="name">About</property>
 * <property name="stock_id">gtk-about</property>
 * <signal handler="about_activate" name="activate"/>
 * </object>
 * <accelerator key="F1" modifiers="GDK_CONTROL_MASK | GDK_SHIFT_MASK"/>
 * </child>
 * </object>
 * ]|
 */
public class ActionGroup : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected GtkActionGroup* gtkActionGroup;

	/** Get the main Gtk struct */
	public GtkActionGroup* getActionGroupStruct()
	{
		return gtkActionGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkActionGroup;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkActionGroup = cast(GtkActionGroup*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkActionGroup* gtkActionGroup, bool ownedRef = false)
	{
		this.gtkActionGroup = gtkActionGroup;
		super(cast(GObject*)gtkActionGroup, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkActionGroup);


	/** */
	public static GType getType()
	{
		return gtk_action_group_get_type();
	}

	/**
	 * Creates a new #GtkActionGroup object. The name of the action group
	 * is used when associating [keybindings][Action-Accel]
	 * with the actions.
	 *
	 * Params:
	 *     name = the name of the action group.
	 *
	 * Return: the new #GtkActionGroup
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name)
	{
		auto p = gtk_action_group_new(Str.toStringz(name));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkActionGroup*) p, true);
	}

	/**
	 * Adds an action object to the action group. Note that this function
	 * does not set up the accel path of the action, which can lead to problems
	 * if a user tries to modify the accelerator of a menuitem associated with
	 * the action. Therefore you must either set the accel path yourself with
	 * gtk_action_set_accel_path(), or use
	 * `gtk_action_group_add_action_with_accel (..., NULL)`.
	 *
	 * Params:
	 *     action = an action
	 *
	 * Since: 2.4
	 */
	public void addAction(Action action)
	{
		gtk_action_group_add_action(gtkActionGroup, (action is null) ? null : action.getActionStruct());
	}

	/**
	 * Adds an action object to the action group and sets up the accelerator.
	 *
	 * If @accelerator is %NULL, attempts to use the accelerator associated
	 * with the stock_id of the action.
	 *
	 * Accel paths are set to `<Actions>/group-name/action-name`.
	 *
	 * Params:
	 *     action = the action to add
	 *     accelerator = the accelerator for the action, in
	 *         the format understood by gtk_accelerator_parse(), or "" for no accelerator, or
	 *         %NULL to use the stock accelerator
	 *
	 * Since: 2.4
	 */
	public void addActionWithAccel(Action action, string accelerator)
	{
		gtk_action_group_add_action_with_accel(gtkActionGroup, (action is null) ? null : action.getActionStruct(), Str.toStringz(accelerator));
	}

	/**
	 * This is a convenience function to create a number of actions and add them
	 * to the action group.
	 *
	 * The “activate” signals of the actions are connected to the callbacks
	 * and their accel paths are set to `<Actions>/group-name/action-name`.
	 *
	 * Params:
	 *     entries = an array of action descriptions
	 *     nEntries = the number of entries
	 *     userData = data to pass to the action callbacks
	 *
	 * Since: 2.4
	 */
	public void addActions(GtkActionEntry[] entries, void* userData)
	{
		gtk_action_group_add_actions(gtkActionGroup, entries.ptr, cast(uint)entries.length, userData);
	}

	/**
	 * This variant of gtk_action_group_add_actions() adds a #GDestroyNotify
	 * callback for @user_data.
	 *
	 * Params:
	 *     entries = an array of action descriptions
	 *     nEntries = the number of entries
	 *     userData = data to pass to the action callbacks
	 *     destroy = destroy notification callback for @user_data
	 *
	 * Since: 2.4
	 */
	public void addActionsFull(GtkActionEntry[] entries, void* userData, GDestroyNotify destroy)
	{
		gtk_action_group_add_actions_full(gtkActionGroup, entries.ptr, cast(uint)entries.length, userData, destroy);
	}

	/**
	 * This is a convenience routine to create a group of radio actions and
	 * add them to the action group.
	 *
	 * The “changed” signal of the first radio action is connected to the
	 * @on_change callback and the accel paths of the actions are set to
	 * `<Actions>/group-name/action-name`.
	 *
	 * Params:
	 *     entries = an array of radio action descriptions
	 *     nEntries = the number of entries
	 *     value = the value of the action to activate initially, or -1 if
	 *         no action should be activated
	 *     onChange = the callback to connect to the changed signal
	 *     userData = data to pass to the action callbacks
	 *
	 * Since: 2.4
	 */
	public void addRadioActions(GtkRadioActionEntry[] entries, int value, GCallback onChange, void* userData)
	{
		gtk_action_group_add_radio_actions(gtkActionGroup, entries.ptr, cast(uint)entries.length, value, onChange, userData);
	}

	/**
	 * This variant of gtk_action_group_add_radio_actions() adds a
	 * #GDestroyNotify callback for @user_data.
	 *
	 * Params:
	 *     entries = an array of radio action descriptions
	 *     nEntries = the number of entries
	 *     value = the value of the action to activate initially, or -1 if
	 *         no action should be activated
	 *     onChange = the callback to connect to the changed signal
	 *     userData = data to pass to the action callbacks
	 *     destroy = destroy notification callback for @user_data
	 *
	 * Since: 2.4
	 */
	public void addRadioActionsFull(GtkRadioActionEntry[] entries, int value, GCallback onChange, void* userData, GDestroyNotify destroy)
	{
		gtk_action_group_add_radio_actions_full(gtkActionGroup, entries.ptr, cast(uint)entries.length, value, onChange, userData, destroy);
	}

	/**
	 * This is a convenience function to create a number of toggle actions and add them
	 * to the action group.
	 *
	 * The “activate” signals of the actions are connected to the callbacks
	 * and their accel paths are set to `<Actions>/group-name/action-name`.
	 *
	 * Params:
	 *     entries = an array of toggle action descriptions
	 *     nEntries = the number of entries
	 *     userData = data to pass to the action callbacks
	 *
	 * Since: 2.4
	 */
	public void addToggleActions(GtkToggleActionEntry[] entries, void* userData)
	{
		gtk_action_group_add_toggle_actions(gtkActionGroup, entries.ptr, cast(uint)entries.length, userData);
	}

	/**
	 * This variant of gtk_action_group_add_toggle_actions() adds a
	 * #GDestroyNotify callback for @user_data.
	 *
	 * Params:
	 *     entries = an array of toggle action descriptions
	 *     nEntries = the number of entries
	 *     userData = data to pass to the action callbacks
	 *     destroy = destroy notification callback for @user_data
	 *
	 * Since: 2.4
	 */
	public void addToggleActionsFull(GtkToggleActionEntry[] entries, void* userData, GDestroyNotify destroy)
	{
		gtk_action_group_add_toggle_actions_full(gtkActionGroup, entries.ptr, cast(uint)entries.length, userData, destroy);
	}

	/**
	 * Gets the accelerator group.
	 *
	 * Return: the accelerator group associated with this action
	 *     group or %NULL if there is none.
	 *
	 * Since: 3.6
	 */
	public AccelGroup getAccelGroup()
	{
		auto p = gtk_action_group_get_accel_group(gtkActionGroup);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(AccelGroup)(cast(GtkAccelGroup*) p);
	}

	/**
	 * Looks up an action in the action group by name.
	 *
	 * Params:
	 *     actionName = the name of the action
	 *
	 * Return: the action, or %NULL if no action by that name exists
	 *
	 * Since: 2.4
	 */
	public Action getAction(string actionName)
	{
		auto p = gtk_action_group_get_action(gtkActionGroup, Str.toStringz(actionName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Action)(cast(GtkAction*) p);
	}

	/**
	 * Gets the name of the action group.
	 *
	 * Return: the name of the action group.
	 *
	 * Since: 2.4
	 */
	public string getName()
	{
		return Str.toString(gtk_action_group_get_name(gtkActionGroup));
	}

	/**
	 * Returns %TRUE if the group is sensitive.  The constituent actions
	 * can only be logically sensitive (see gtk_action_is_sensitive()) if
	 * they are sensitive (see gtk_action_get_sensitive()) and their group
	 * is sensitive.
	 *
	 * Return: %TRUE if the group is sensitive.
	 *
	 * Since: 2.4
	 */
	public bool getSensitive()
	{
		return gtk_action_group_get_sensitive(gtkActionGroup) != 0;
	}

	/**
	 * Returns %TRUE if the group is visible.  The constituent actions
	 * can only be logically visible (see gtk_action_is_visible()) if
	 * they are visible (see gtk_action_get_visible()) and their group
	 * is visible.
	 *
	 * Return: %TRUE if the group is visible.
	 *
	 * Since: 2.4
	 */
	public bool getVisible()
	{
		return gtk_action_group_get_visible(gtkActionGroup) != 0;
	}

	/**
	 * Lists the actions in the action group.
	 *
	 * Return: an allocated list of the action objects in the action group
	 *
	 * Since: 2.4
	 */
	public ListG listActions()
	{
		auto p = gtk_action_group_list_actions(gtkActionGroup);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * Removes an action object from the action group.
	 *
	 * Params:
	 *     action = an action
	 *
	 * Since: 2.4
	 */
	public void removeAction(Action action)
	{
		gtk_action_group_remove_action(gtkActionGroup, (action is null) ? null : action.getActionStruct());
	}

	/**
	 * Sets the accelerator group to be used by every action in this group.
	 *
	 * Params:
	 *     accelGroup = a #GtkAccelGroup to set or %NULL
	 *
	 * Since: 3.6
	 */
	public void setAccelGroup(AccelGroup accelGroup)
	{
		gtk_action_group_set_accel_group(gtkActionGroup, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}

	/**
	 * Changes the sensitivity of @action_group
	 *
	 * Params:
	 *     sensitive = new sensitivity
	 *
	 * Since: 2.4
	 */
	public void setSensitive(bool sensitive)
	{
		gtk_action_group_set_sensitive(gtkActionGroup, sensitive);
	}

	/**
	 * Sets a function to be used for translating the @label and @tooltip of
	 * #GtkActionEntrys added by gtk_action_group_add_actions().
	 *
	 * If you’re using gettext(), it is enough to set the translation domain
	 * with gtk_action_group_set_translation_domain().
	 *
	 * Params:
	 *     func = a #GtkTranslateFunc
	 *     data = data to be passed to @func and @notify
	 *     notify = a #GDestroyNotify function to be called when @action_group is
	 *         destroyed and when the translation function is changed again
	 *
	 * Since: 2.4
	 */
	public void setTranslateFunc(GtkTranslateFunc func, void* data, GDestroyNotify notify)
	{
		gtk_action_group_set_translate_func(gtkActionGroup, func, data, notify);
	}

	/**
	 * Sets the translation domain and uses g_dgettext() for translating the
	 * @label and @tooltip of #GtkActionEntrys added by
	 * gtk_action_group_add_actions().
	 *
	 * If you’re not using gettext() for localization, see
	 * gtk_action_group_set_translate_func().
	 *
	 * Params:
	 *     domain = the translation domain to use for g_dgettext()
	 *         calls, or %NULL to use the domain set with textdomain()
	 *
	 * Since: 2.4
	 */
	public void setTranslationDomain(string domain)
	{
		gtk_action_group_set_translation_domain(gtkActionGroup, Str.toStringz(domain));
	}

	/**
	 * Changes the visible of @action_group.
	 *
	 * Params:
	 *     visible = new visiblity
	 *
	 * Since: 2.4
	 */
	public void setVisible(bool visible)
	{
		gtk_action_group_set_visible(gtkActionGroup, visible);
	}

	/**
	 * Translates a string using the function set with
	 * gtk_action_group_set_translate_func(). This
	 * is mainly intended for language bindings.
	 *
	 * Params:
	 *     str = a string
	 *
	 * Return: the translation of @string
	 *
	 * Since: 2.6
	 */
	public string translateString(string str)
	{
		return Str.toString(gtk_action_group_translate_string(gtkActionGroup, Str.toStringz(str)));
	}

	protected class OnConnectProxyDelegateWrapper
	{
		void delegate(Action, Widget, ActionGroup) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Action, Widget, ActionGroup) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnConnectProxyDelegateWrapper[] onConnectProxyListeners;

	/**
	 * The ::connect-proxy signal is emitted after connecting a proxy to
	 * an action in the group. Note that the proxy may have been connected
	 * to a different action before.
	 *
	 * This is intended for simple customizations for which a custom action
	 * class would be too clumsy, e.g. showing tooltips for menuitems in the
	 * statusbar.
	 *
	 * #GtkUIManager proxies the signal and provides global notification
	 * just before any action is connected to a proxy, which is probably more
	 * convenient to use.
	 *
	 * Params:
	 *     action = the action
	 *     proxy = the proxy
	 *
	 * Since: 2.4
	 */
	gulong addOnConnectProxy(void delegate(Action, Widget, ActionGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onConnectProxyListeners ~= new OnConnectProxyDelegateWrapper(dlg, 0, connectFlags);
		onConnectProxyListeners[onConnectProxyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"connect-proxy",
			cast(GCallback)&callBackConnectProxy,
			cast(void*)onConnectProxyListeners[onConnectProxyListeners.length - 1],
			cast(GClosureNotify)&callBackConnectProxyDestroy,
			connectFlags);
		return onConnectProxyListeners[onConnectProxyListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackConnectProxy(GtkActionGroup* actiongroupStruct, GtkAction* action, GtkWidget* proxy,OnConnectProxyDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Action)(action), ObjectG.getDObject!(Widget)(proxy), wrapper.outer);
	}
	
	extern(C) static void callBackConnectProxyDestroy(OnConnectProxyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnConnectProxy(wrapper);
	}

	protected void internalRemoveOnConnectProxy(OnConnectProxyDelegateWrapper source)
	{
		foreach(index, wrapper; onConnectProxyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onConnectProxyListeners[index] = null;
				onConnectProxyListeners = std.algorithm.remove(onConnectProxyListeners, index);
				break;
			}
		}
	}
	

	protected class OnDisconnectProxyDelegateWrapper
	{
		void delegate(Action, Widget, ActionGroup) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Action, Widget, ActionGroup) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDisconnectProxyDelegateWrapper[] onDisconnectProxyListeners;

	/**
	 * The ::disconnect-proxy signal is emitted after disconnecting a proxy
	 * from an action in the group.
	 *
	 * #GtkUIManager proxies the signal and provides global notification
	 * just before any action is connected to a proxy, which is probably more
	 * convenient to use.
	 *
	 * Params:
	 *     action = the action
	 *     proxy = the proxy
	 *
	 * Since: 2.4
	 */
	gulong addOnDisconnectProxy(void delegate(Action, Widget, ActionGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDisconnectProxyListeners ~= new OnDisconnectProxyDelegateWrapper(dlg, 0, connectFlags);
		onDisconnectProxyListeners[onDisconnectProxyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"disconnect-proxy",
			cast(GCallback)&callBackDisconnectProxy,
			cast(void*)onDisconnectProxyListeners[onDisconnectProxyListeners.length - 1],
			cast(GClosureNotify)&callBackDisconnectProxyDestroy,
			connectFlags);
		return onDisconnectProxyListeners[onDisconnectProxyListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDisconnectProxy(GtkActionGroup* actiongroupStruct, GtkAction* action, GtkWidget* proxy,OnDisconnectProxyDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Action)(action), ObjectG.getDObject!(Widget)(proxy), wrapper.outer);
	}
	
	extern(C) static void callBackDisconnectProxyDestroy(OnDisconnectProxyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDisconnectProxy(wrapper);
	}

	protected void internalRemoveOnDisconnectProxy(OnDisconnectProxyDelegateWrapper source)
	{
		foreach(index, wrapper; onDisconnectProxyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDisconnectProxyListeners[index] = null;
				onDisconnectProxyListeners = std.algorithm.remove(onDisconnectProxyListeners, index);
				break;
			}
		}
	}
	

	protected class OnPostActivateDelegateWrapper
	{
		void delegate(Action, ActionGroup) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Action, ActionGroup) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPostActivateDelegateWrapper[] onPostActivateListeners;

	/**
	 * The ::post-activate signal is emitted just after the @action in the
	 * @action_group is activated
	 *
	 * This is intended for #GtkUIManager to proxy the signal and provide global
	 * notification just after any action is activated.
	 *
	 * Params:
	 *     action = the action
	 *
	 * Since: 2.4
	 */
	gulong addOnPostActivate(void delegate(Action, ActionGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPostActivateListeners ~= new OnPostActivateDelegateWrapper(dlg, 0, connectFlags);
		onPostActivateListeners[onPostActivateListeners.length - 1].handlerId = Signals.connectData(
			this,
			"post-activate",
			cast(GCallback)&callBackPostActivate,
			cast(void*)onPostActivateListeners[onPostActivateListeners.length - 1],
			cast(GClosureNotify)&callBackPostActivateDestroy,
			connectFlags);
		return onPostActivateListeners[onPostActivateListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackPostActivate(GtkActionGroup* actiongroupStruct, GtkAction* action,OnPostActivateDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Action)(action), wrapper.outer);
	}
	
	extern(C) static void callBackPostActivateDestroy(OnPostActivateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPostActivate(wrapper);
	}

	protected void internalRemoveOnPostActivate(OnPostActivateDelegateWrapper source)
	{
		foreach(index, wrapper; onPostActivateListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPostActivateListeners[index] = null;
				onPostActivateListeners = std.algorithm.remove(onPostActivateListeners, index);
				break;
			}
		}
	}
	

	protected class OnPreActivateDelegateWrapper
	{
		void delegate(Action, ActionGroup) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Action, ActionGroup) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPreActivateDelegateWrapper[] onPreActivateListeners;

	/**
	 * The ::pre-activate signal is emitted just before the @action in the
	 * @action_group is activated
	 *
	 * This is intended for #GtkUIManager to proxy the signal and provide global
	 * notification just before any action is activated.
	 *
	 * Params:
	 *     action = the action
	 *
	 * Since: 2.4
	 */
	gulong addOnPreActivate(void delegate(Action, ActionGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPreActivateListeners ~= new OnPreActivateDelegateWrapper(dlg, 0, connectFlags);
		onPreActivateListeners[onPreActivateListeners.length - 1].handlerId = Signals.connectData(
			this,
			"pre-activate",
			cast(GCallback)&callBackPreActivate,
			cast(void*)onPreActivateListeners[onPreActivateListeners.length - 1],
			cast(GClosureNotify)&callBackPreActivateDestroy,
			connectFlags);
		return onPreActivateListeners[onPreActivateListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackPreActivate(GtkActionGroup* actiongroupStruct, GtkAction* action,OnPreActivateDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Action)(action), wrapper.outer);
	}
	
	extern(C) static void callBackPreActivateDestroy(OnPreActivateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPreActivate(wrapper);
	}

	protected void internalRemoveOnPreActivate(OnPreActivateDelegateWrapper source)
	{
		foreach(index, wrapper; onPreActivateListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPreActivateListeners[index] = null;
				onPreActivateListeners = std.algorithm.remove(onPreActivateListeners, index);
				break;
			}
		}
	}
	
}
