/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkAction.html
 * outPack = gtk
 * outFile = Action
 * strct   = GtkAction
 * realStrct=
 * ctorStrct=
 * clss    = Action
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_action_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- glib.ListSG
 * 	- gobject.Closure
 * 	- gtk.AccelGroup
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * 	- gtk.Builder
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * 	- GClosure* -> Closure
 * 	- GSList* -> ListSG
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Action;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Widget;
private import glib.ListSG;
private import gobject.Closure;
private import gtk.AccelGroup;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gobject.ObjectG;

/**
 * Description
 * Actions represent operations that the user can be perform, along with
 * some information how it should be presented in the interface. Each action
 * provides methods to create icons, menu items and toolbar items representing
 * itself.
 * As well as the callback that is called when the action gets activated, the
 * following also gets associated with the action:
 * a name (not translated, for path lookup)
 * a label (translated, for display)
 * an accelerator
 * whether label indicates a stock id
 * a tooltip (optional, translated)
 * a toolbar label (optional, shorter than label)
 * The action will also have some state information:
 * visible (shown/hidden)
 * sensitive (enabled/disabled)
 * Apart from regular actions, there are toggle
 * actions, which can be toggled between two states and radio actions, of which only one in a group
 * can be in the "active" state. Other actions can be implemented as GtkAction
 * subclasses.
 * Each action can have one or more proxy menu item, toolbar button or
 * other proxy widgets. Proxies mirror the state of the action (text
 * label, tooltip, icon, visible, sensitive, etc), and should change when
 * the action's state changes. When the proxy is activated, it should
 * activate its action.
 */
public class Action : ObjectG, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkAction* gtkAction;
	
	
	public GtkAction* getActionStruct()
	{
		return gtkAction;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAction;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAction* gtkAction)
	{
		if(gtkAction is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkAction);
		if( ptr !is null )
		{
			this = cast(Action)ptr;
			return;
		}
		super(cast(GObject*)gtkAction);
		this.gtkAction = gtkAction;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkAction);
	
	/**
	 * Creates a new GtkAction object. To add the action to a
	 * GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * See the section called UI Definitions for information on allowed action
	 * names.
	 * Since 2.4
	 * Params:
	 * name =  A unique name for the action
	 * label =  the label displayed in menu items and on buttons, or NULL
	 * tooltip =  a tooltip for the action, or NULL
	 * stockId =  the stock icon to display in widgets representing the
	 *  action.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, StockID stockId)
	{
		this(name, label, tooltip, StockDesc[stockId]);
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Action)[] onActivateListeners;
	/**
	 * The "activate" signal is emitted when the action is activated.
	 * Since 2.4
	 * See Also
	 * GtkActionGroup, GtkUIManager
	 */
	void addOnActivate(void delegate(Action) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkAction* actionStruct, Action action)
	{
		foreach ( void delegate(Action) dlg ; action.onActivateListeners )
		{
			dlg(action);
		}
	}
	
	
	/**
	 * Creates a new GtkAction object. To add the action to a
	 * GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * See the section called UI Definitions for information on allowed action
	 * names.
	 * Since 2.4
	 * Params:
	 * name =  A unique name for the action
	 * label =  the label displayed in menu items and on buttons, or NULL
	 * tooltip =  a tooltip for the action, or NULL
	 * stockId =  the stock icon to display in widgets representing the
	 *  action, or NULL
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, string stockId)
	{
		// GtkAction* gtk_action_new (const gchar *name,  const gchar *label,  const gchar *tooltip,  const gchar *stock_id);
		auto p = gtk_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId))");
		}
		this(cast(GtkAction*) p);
	}
	
	/**
	 * Returns the name of the action.
	 * Since 2.4
	 * Returns: the name of the action. The string belongs to GTK+ and should not be freed.
	 */
	public string getName()
	{
		// const gchar* gtk_action_get_name (GtkAction *action);
		return Str.toString(gtk_action_get_name(gtkAction));
	}
	
	/**
	 * Returns whether the action is effectively sensitive.
	 * Since 2.4
	 * Returns: TRUE if the action and its associated action group are both sensitive.
	 */
	public int isSensitive()
	{
		// gboolean gtk_action_is_sensitive (GtkAction *action);
		return gtk_action_is_sensitive(gtkAction);
	}
	
	/**
	 * Returns whether the action itself is sensitive. Note that this doesn't
	 * necessarily mean effective sensitivity. See gtk_action_is_sensitive()
	 * for that.
	 * Since 2.4
	 * Returns: TRUE if the action itself is sensitive.
	 */
	public int getSensitive()
	{
		// gboolean gtk_action_get_sensitive (GtkAction *action);
		return gtk_action_get_sensitive(gtkAction);
	}
	
	/**
	 * Sets the ::sensitive property of the action to sensitive. Note that
	 * this doesn't necessarily mean effective sensitivity. See
	 * gtk_action_is_sensitive()
	 * for that.
	 * Since 2.6
	 * Params:
	 * sensitive =  TRUE to make the action sensitive
	 */
	public void setSensitive(int sensitive)
	{
		// void gtk_action_set_sensitive (GtkAction *action,  gboolean sensitive);
		gtk_action_set_sensitive(gtkAction, sensitive);
	}
	
	/**
	 * Returns whether the action is effectively visible.
	 * Since 2.4
	 * Returns: TRUE if the action and its associated action group are both visible.
	 */
	public int isVisible()
	{
		// gboolean gtk_action_is_visible (GtkAction *action);
		return gtk_action_is_visible(gtkAction);
	}
	
	/**
	 * Returns whether the action itself is visible. Note that this doesn't
	 * necessarily mean effective visibility. See gtk_action_is_sensitive()
	 * for that.
	 * Since 2.4
	 * Returns: TRUE if the action itself is visible.
	 */
	public int getVisible()
	{
		// gboolean gtk_action_get_visible (GtkAction *action);
		return gtk_action_get_visible(gtkAction);
	}
	
	/**
	 * Sets the ::visible property of the action to visible. Note that
	 * this doesn't necessarily mean effective visibility. See
	 * gtk_action_is_visible()
	 * for that.
	 * Since 2.6
	 * Params:
	 * visible =  TRUE to make the action visible
	 */
	public void setVisible(int visible)
	{
		// void gtk_action_set_visible (GtkAction *action,  gboolean visible);
		gtk_action_set_visible(gtkAction, visible);
	}
	
	/**
	 * Emits the "activate" signal on the specified action, if it isn't
	 * insensitive. This gets called by the proxy widgets when they get
	 * activated.
	 * It can also be used to manually activate an action.
	 * Since 2.4
	 */
	public void activate()
	{
		// void gtk_action_activate (GtkAction *action);
		gtk_action_activate(gtkAction);
	}
	
	/**
	 * This function is intended for use by action implementations to
	 * create icons displayed in the proxy widgets.
	 * Since 2.4
	 * Params:
	 * iconSize =  the size of the icon that should be created.
	 * Returns: a widget that displays the icon for this action.
	 */
	public Widget createIcon(GtkIconSize iconSize)
	{
		// GtkWidget* gtk_action_create_icon (GtkAction *action,  GtkIconSize icon_size);
		auto p = gtk_action_create_icon(gtkAction, iconSize);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Creates a menu item widget that proxies for the given action.
	 * Since 2.4
	 * Returns: a menu item connected to the action.
	 */
	public Widget createMenuItem()
	{
		// GtkWidget* gtk_action_create_menu_item (GtkAction *action);
		auto p = gtk_action_create_menu_item(gtkAction);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Creates a toolbar item widget that proxies for the given action.
	 * Since 2.4
	 * Returns: a toolbar item connected to the action.
	 */
	public Widget createToolItem()
	{
		// GtkWidget* gtk_action_create_tool_item (GtkAction *action);
		auto p = gtk_action_create_tool_item(gtkAction);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * If action provides a GtkMenu widget as a submenu for the menu
	 * item or the toolbar item it creates, this function returns an
	 * instance of that menu.
	 * Since 2.12
	 * Returns: the menu item provided by the action, or NULL.
	 */
	public Widget createMenu()
	{
		// GtkWidget* gtk_action_create_menu (GtkAction *action);
		auto p = gtk_action_create_menu(gtkAction);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Connects a widget to an action object as a proxy. Synchronises
	 * various properties of the action with the widget (such as label
	 * text, icon, tooltip, etc), and attaches a callback so that the
	 * action gets activated when the proxy widget does.
	 * If the widget is already connected to an action, it is disconnected
	 * first.
	 * Since 2.4
	 * Params:
	 * proxy =  the proxy widget
	 */
	public void connectProxy(Widget proxy)
	{
		// void gtk_action_connect_proxy (GtkAction *action,  GtkWidget *proxy);
		gtk_action_connect_proxy(gtkAction, (proxy is null) ? null : proxy.getWidgetStruct());
	}
	
	/**
	 * Disconnects a proxy widget from an action.
	 * Does not destroy the widget, however.
	 * Since 2.4
	 * Params:
	 * proxy =  the proxy widget
	 */
	public void disconnectProxy(Widget proxy)
	{
		// void gtk_action_disconnect_proxy (GtkAction *action,  GtkWidget *proxy);
		gtk_action_disconnect_proxy(gtkAction, (proxy is null) ? null : proxy.getWidgetStruct());
	}
	
	/**
	 * Returns the proxy widgets for an action.
	 * See also gtk_widget_get_action().
	 * Since 2.4
	 * Returns: a GSList of proxy widgets. The list is owned by GTK+and must not be modified.
	 */
	public ListSG getProxies()
	{
		// GSList* gtk_action_get_proxies (GtkAction *action);
		auto p = gtk_action_get_proxies(gtkAction);
		if(p is null)
		{
			return null;
		}
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Installs the accelerator for action if action has an
	 * accel path and group. See gtk_action_set_accel_path() and
	 * gtk_action_set_accel_group()
	 * Since multiple proxies may independently trigger the installation
	 * of the accelerator, the action counts the number of times this
	 * function has been called and doesn't remove the accelerator until
	 * gtk_action_disconnect_accelerator() has been called as many times.
	 * Since 2.4
	 */
	public void connectAccelerator()
	{
		// void gtk_action_connect_accelerator (GtkAction *action);
		gtk_action_connect_accelerator(gtkAction);
	}
	
	/**
	 * Undoes the effect of one call to gtk_action_connect_accelerator().
	 * Since 2.4
	 */
	public void disconnectAccelerator()
	{
		// void gtk_action_disconnect_accelerator (GtkAction *action);
		gtk_action_disconnect_accelerator(gtkAction);
	}
	
	/**
	 * Disables calls to the gtk_action_activate()
	 * function by signals on the given proxy widget. This is used to
	 * break notification loops for things like check or radio actions.
	 * This function is intended for use by action implementations.
	 * Since 2.4
	 * Params:
	 * proxy =  a proxy widget
	 */
	public void blockActivateFrom(Widget proxy)
	{
		// void gtk_action_block_activate_from (GtkAction *action,  GtkWidget *proxy);
		gtk_action_block_activate_from(gtkAction, (proxy is null) ? null : proxy.getWidgetStruct());
	}
	
	/**
	 * Re-enables calls to the gtk_action_activate()
	 * function by signals on the given proxy widget. This undoes the
	 * blocking done by gtk_action_block_activate_from().
	 * This function is intended for use by action implementations.
	 * Since 2.4
	 * Params:
	 * proxy =  a proxy widget
	 */
	public void unblockActivateFrom(Widget proxy)
	{
		// void gtk_action_unblock_activate_from (GtkAction *action,  GtkWidget *proxy);
		gtk_action_unblock_activate_from(gtkAction, (proxy is null) ? null : proxy.getWidgetStruct());
	}
	
	/**
	 * Returns the accel path for this action.
	 * Since 2.6
	 * Returns: the accel path for this action, or NULL if none is set. The returned string is owned by GTK+  and must not be freed or modified.
	 */
	public string getAccelPath()
	{
		// const gchar* gtk_action_get_accel_path (GtkAction *action);
		return Str.toString(gtk_action_get_accel_path(gtkAction));
	}
	
	/**
	 * Sets the accel path for this action. All proxy widgets associated
	 * with the action will have this accel path, so that their
	 * accelerators are consistent.
	 * Since 2.4
	 * Params:
	 * accelPath =  the accelerator path
	 */
	public void setAccelPath(string accelPath)
	{
		// void gtk_action_set_accel_path (GtkAction *action,  const gchar *accel_path);
		gtk_action_set_accel_path(gtkAction, Str.toStringz(accelPath));
	}
	
	/**
	 * Returns the accel closure for this action.
	 * Since 2.8
	 * Returns: the accel closure for this action. The returned closure is owned by GTK+ and must not be unreffed or modified.
	 */
	public Closure getAccelClosure()
	{
		// GClosure* gtk_action_get_accel_closure (GtkAction *action);
		auto p = gtk_action_get_accel_closure(gtkAction);
		if(p is null)
		{
			return null;
		}
		return new Closure(cast(GClosure*) p);
	}
	
	/**
	 * Sets the GtkAccelGroup in which the accelerator for this action
	 * will be installed.
	 * Since 2.4
	 * Params:
	 * accelGroup =  a GtkAccelGroup or NULL
	 */
	public void setAccelGroup(AccelGroup accelGroup)
	{
		// void gtk_action_set_accel_group (GtkAction *action,  GtkAccelGroup *accel_group);
		gtk_action_set_accel_group(gtkAction, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}
}
