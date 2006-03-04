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
 * outFile = UIManager
 * strct   = GtkUIManager
 * clss    = UIManager
 * prefixes:
 * 	- gtk_ui_manager_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.ActionGroup
 * 	- glib.ListG
 * 	- gtk.AccelGroup
 * 	- gtk.Widget
 * 	- glib.ListSG
 * 	- gtk.Action
 * structWrap:
 * 	- GList* -> ListG
 * 	- GSList* -> ListSG
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkAction* -> Action
 * 	- GtkActionGroup* -> ActionGroup
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.UIManager;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.ActionGroup;private import glib.ListG;private import gtk.AccelGroup;private import gtk.Widget;private import glib.ListSG;private import gtk.Action;
/**
 * Description
 * A GtkUIManager constructs a user interface (menus and toolbars) from
 * one or more UI definitions, which reference actions from one or more
 * action groups.
 * UI Definitions
 * The UI definitions are specified in an XML format which can be
 * roughly described by the following DTD.
 * <!ELEMENT ui (menubar|toolbar|popup|accelerator)* >
 * <!ELEMENT menubar (menuitem|separator|placeholder|menu)* >
 * <!ELEMENT menu (menuitem|separator|placeholder|menu)* >
 * <!ELEMENT popup (menuitem|separator|placeholder|menu)* >
 * <!ELEMENT toolbar (toolitem|separator|placeholder)* >
 * <!ELEMENT placeholder (menuitem|toolitem|separator|placeholder|menu)* >
 * <!ELEMENT menuitem EMPTY >
 * <!ELEMENT toolitem (menu?) >
 * <!ELEMENT separator EMPTY >
 * <!ELEMENT accelerator EMPTY >
 * <!ATTLIST menubar name #IMPLIED
 *  action #IMPLIED >
 * <!ATTLIST toolbar name #IMPLIED
 *  action #IMPLIED >
 * <!ATTLIST popup name #IMPLIED
 *  action #IMPLIED >
 * <!ATTLIST placeholder name #IMPLIED
 *  action #IMPLIED >
 * <!ATTLIST separator name #IMPLIED
 *  action #IMPLIED
 *  expand (true|false) #IMPLIED >
 * <!ATTLIST menu name #IMPLIED
 *  action #REQUIRED
 *  position (top|bot) #IMPLIED >
 * <!ATTLIST menuitem name #IMPLIED
 *  action #REQUIRED
 *  position (top|bot) #IMPLIED >
 * <!ATTLIST toolitem name #IMPLIED
 *  action #REQUIRED
 *  position (top|bot) #IMPLIED >
 * <!ATTLIST accelerator name #IMPLIED
 *  action #REQUIRED >
 * There are some additional restrictions beyond those specified in the
 * DTD, e.g. every toolitem must have a toolbar in its anchestry and
 * every menuitem must have a menubar or popup in its anchestry. Since
 * a GMarkup parser is used to parse the UI description, it must not only
 * be valid XML, but valid GMarkup.
 * If a name is not specified, it defaults to the action. If an action is
 * not specified either, the element name is used. The name and action
 * attributes must not contain '/' characters after parsing (since that
 * would mess up path lookup) and must be usable as XML attributes when
 * enclosed in doublequotes, thus they must not '"' characters or references
 * to the quot; entity.
 * Example1.A UI definition
 * <ui>
 *  <menubar>
 *  <menu name="FileMenu" action="FileMenuAction">
 *  <menuitem name="New" action="New2Action" />
 *  <placeholder name="FileMenuAdditions" />
 *  </menu>
 *  <menu name="JustifyMenu" action="JustifyMenuAction">
 *  <menuitem name="Left" action="justify-left"/>
 *  <menuitem name="Centre" action="justify-center"/>
 *  <menuitem name="Right" action="justify-right"/>
 *  <menuitem name="Fill" action="justify-fill"/>
 *  </menu>
 *  </menubar>
 *  <toolbar action="toolbar1">
 *  <placeholder name="JustifyToolItems">
 *  <separator/>
 *  <toolitem name="Left" action="justify-left"/>
 *  <toolitem name="Centre" action="justify-center"/>
 *  <toolitem name="Right" action="justify-right"/>
 *  <toolitem name="Fill" action="justify-fill"/>
 *  <separator/>
 *  </placeholder>
 *  </toolbar>
 * </ui>
 * The constructed widget hierarchy is very similar to the element tree
 * of the XML, with the exception that placeholders are merged into their
 * parents. The correspondence of XML elements to widgets should be
 * almost obvious:
 * menubar
 * a GtkMenuBar
 * toolbar
 * a GtkToolbar
 * popup
 * a toplevel GtkMenu
 * menu
 * a GtkMenu attached to a menuitem
 * menuitem
 * a GtkMenuItem subclass, the exact type depends on the
 * action
 * toolitem
 * a GtkToolItem subclass, the exact type depends on the
 * action. Note that toolitem elements may contain a menu element, but only
 * if their associated action specifies a GtkMenuToolButton as proxy.
 * separator
 * a GtkSeparatorMenuItem or
 * GtkSeparatorToolItem
 * accelerator
 * a keyboard accelerator
 * The "position" attribute determines where a constructed widget is positioned
 * wrt. to its siblings in the partially constructed tree. If it is
 * "top", the widget is prepended, otherwise it is appended.
 * <hr>
 * UI Merging
 * The most remarkable feature of GtkUIManager is that it can overlay a set
 * of menuitems and toolitems over another one, and demerge them later.
 * Merging is done based on the names of the XML elements. Each element is
 * identified by a path which consists of the names of its anchestors, separated
 * by slashes. For example, the menuitem named "Left" in the example above
 * has the path /ui/menubar/JustifyMenu/Left and the
 * toolitem with the same name has path
 * /ui/toolbar1/JustifyToolItems/Left.
 * <hr>
 * Accelerators
 * Every action has an accelerator path. Accelerators are installed together with
 * menuitem proxies, but they can also be explicitly added with <accelerator>
 * elements in the UI definition. This makes it possible to have accelerators for
 * actions even if they have no visible proxies.
 * <hr>
 * Smart Separators
 * The separators created by GtkUIManager are "smart", i.e. they do not show up
 * in the UI unless they end up between two visible menu or tool items. Separators
 * which are located at the very beginning or end of the menu or toolbar
 * containing them, or multiple separators next to each other, are hidden. This
 * is a useful feature, since the merging of UI elements from multiple sources
 * can make it hard or impossible to determine in advance whether a separator
 * will end up in such an unfortunate position.
 * For separators in toolbars, you can set expand="true" to
 * turn them from a small, visible separator to an expanding, invisible one.
 * Toolitems following an expanding separator are effectively right-aligned.
 * <hr>
 * Empty Menus
 * Submenus pose similar problems to separators inconnection with merging. It is
 * impossible to know in advance whether they will end up empty after merging.
 * GtkUIManager offers two ways to treat empty submenus:
 * make them disappear by hiding the menu item they're attached to
 * add an insensitive "Empty" item
 * The behaviour is chosen based on the "hide_if_empty" property of the action
 * to which the submenu is associated.
 */
private import gobject.ObjectG;
public class UIManager : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkUIManager* gtkUIManager;
	
	
	public GtkUIManager* getUIManagerStruct()
	{
		return gtkUIManager;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkUIManager;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkUIManager* gtkUIManager)
	{
		super(cast(GObject*)gtkUIManager);
		this.gtkUIManager = gtkUIManager;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(UIManager)[] onActionsChangedListeners;
	void addOnActionsChanged(void delegate(UIManager) dlg)
	{
		if ( !("actions-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"actions-changed",
			cast(GCallback)&callBackActionsChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["actions-changed"] = 1;
		}
		onActionsChangedListeners ~= dlg;
	}
	extern(C) static void callBackActionsChanged(GtkUIManager* mergeStruct, UIManager uIManager)
	{
		bit consumed = false;
		
		foreach ( void delegate(UIManager) dlg ; uIManager.onActionsChangedListeners )
		{
			dlg(uIManager);
		}
		
		return consumed;
	}
	
	void delegate(Widget, UIManager)[] onAddWidgetListeners;
	void addOnAddWidget(void delegate(Widget, UIManager) dlg)
	{
		if ( !("add-widget" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"add-widget",
			cast(GCallback)&callBackAddWidget,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["add-widget"] = 1;
		}
		onAddWidgetListeners ~= dlg;
	}
	extern(C) static void callBackAddWidget(GtkUIManager* mergeStruct, GtkWidget* widget, UIManager uIManager)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget, UIManager) dlg ; uIManager.onAddWidgetListeners )
		{
			dlg(new Widget(widget), uIManager);
		}
		
		return consumed;
	}
	
	void delegate(Action, Widget, UIManager)[] onConnectProxyListeners;
	void addOnConnectProxy(void delegate(Action, Widget, UIManager) dlg)
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
	extern(C) static void callBackConnectProxy(GtkUIManager* uimanagerStruct, GtkAction* action, GtkWidget* proxy, UIManager uIManager)
	{
		bit consumed = false;
		
		foreach ( void delegate(Action, Widget, UIManager) dlg ; uIManager.onConnectProxyListeners )
		{
			dlg(new Action(action), new Widget(proxy), uIManager);
		}
		
		return consumed;
	}
	
	void delegate(Action, Widget, UIManager)[] onDisconnectProxyListeners;
	void addOnDisconnectProxy(void delegate(Action, Widget, UIManager) dlg)
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
	extern(C) static void callBackDisconnectProxy(GtkUIManager* uimanagerStruct, GtkAction* action, GtkWidget* proxy, UIManager uIManager)
	{
		bit consumed = false;
		
		foreach ( void delegate(Action, Widget, UIManager) dlg ; uIManager.onDisconnectProxyListeners )
		{
			dlg(new Action(action), new Widget(proxy), uIManager);
		}
		
		return consumed;
	}
	
	void delegate(Action, UIManager)[] onPostActivateListeners;
	void addOnPostActivate(void delegate(Action, UIManager) dlg)
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
	extern(C) static void callBackPostActivate(GtkUIManager* uimanagerStruct, GtkAction* action, UIManager uIManager)
	{
		bit consumed = false;
		
		foreach ( void delegate(Action, UIManager) dlg ; uIManager.onPostActivateListeners )
		{
			dlg(new Action(action), uIManager);
		}
		
		return consumed;
	}
	
	void delegate(Action, UIManager)[] onPreActivateListeners;
	void addOnPreActivate(void delegate(Action, UIManager) dlg)
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
	extern(C) static void callBackPreActivate(GtkUIManager* uimanagerStruct, GtkAction* action, UIManager uIManager)
	{
		bit consumed = false;
		
		foreach ( void delegate(Action, UIManager) dlg ; uIManager.onPreActivateListeners )
		{
			dlg(new Action(action), uIManager);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new ui manager object.
	 * Returns:
	 *  a new ui manager object.
	 * Since 2.4
	 */
	public this ()
	{
		// GtkUIManager* gtk_ui_manager_new (void);
		this(cast(GtkUIManager*)gtk_ui_manager_new() );
	}
	
	/**
	 * Sets the "add_tearoffs" property, which controls whether menus
	 * generated by this GtkUIManager will have tearoff menu items.
	 * Note that this only affects regular menus. Generated popup
	 * menus never have tearoff menu items.
	 * self:
	 *  a GtkUIManager
	 * add_tearoffs:
	 *  whether tearoff menu items are added
	 * Since 2.4
	 */
	public void setAddTearoffs(int addTearoffs)
	{
		// void gtk_ui_manager_set_add_tearoffs (GtkUIManager *self,  gboolean add_tearoffs);
		gtk_ui_manager_set_add_tearoffs(gtkUIManager, addTearoffs);
	}
	
	/**
	 * Returns whether menus generated by this GtkUIManager
	 * will have tearoff menu items.
	 * self:
	 *  a GtkUIManager
	 * Returns:
	 *  whether tearoff menu items are added
	 * Since 2.4
	 */
	public int getAddTearoffs()
	{
		// gboolean gtk_ui_manager_get_add_tearoffs (GtkUIManager *self);
		return gtk_ui_manager_get_add_tearoffs(gtkUIManager);
	}
	
	/**
	 * Inserts an action group into the list of action groups associated
	 * with self. Actions in earlier groups hide actions with the same
	 * name in later groups.
	 * self:
	 *  a GtkUIManager object
	 * action_group:
	 *  the action group to be inserted
	 * pos:
	 *  the position at which the group will be inserted.
	 * Since 2.4
	 */
	public void insertActionGroup(ActionGroup actionGroup, int pos)
	{
		// void gtk_ui_manager_insert_action_group  (GtkUIManager *self,  GtkActionGroup *action_group,  gint pos);
		gtk_ui_manager_insert_action_group(gtkUIManager, actionGroup.getActionGroupStruct(), pos);
	}
	
	/**
	 * Removes an action group from the list of action groups associated
	 * with self.
	 * self:
	 *  a GtkUIManager object
	 * action_group:
	 *  the action group to be removed
	 * Since 2.4
	 */
	public void removeActionGroup(ActionGroup actionGroup)
	{
		// void gtk_ui_manager_remove_action_group  (GtkUIManager *self,  GtkActionGroup *action_group);
		gtk_ui_manager_remove_action_group(gtkUIManager, actionGroup.getActionGroupStruct());
	}
	
	/**
	 * Returns the list of action groups associated with self.
	 * self:
	 *  a GtkUIManager object
	 * Returns:
	 *  a GList of action groups. The list is owned by GTK+
	 *  and should not be modified.
	 * Since 2.4
	 */
	public ListG getActionGroups()
	{
		// GList* gtk_ui_manager_get_action_groups  (GtkUIManager *self);
		return new ListG( gtk_ui_manager_get_action_groups(gtkUIManager) );
	}
	
	/**
	 * Returns the GtkAccelGroup associated with self.
	 * self:
	 *  a GtkUIManager object
	 * Returns:
	 *  the GtkAccelGroup.
	 * Since 2.4
	 */
	public AccelGroup getAccelGroup()
	{
		// GtkAccelGroup* gtk_ui_manager_get_accel_group  (GtkUIManager *self);
		return new AccelGroup( gtk_ui_manager_get_accel_group(gtkUIManager) );
	}
	
	/**
	 * Looks up a widget by following a path.
	 * The path consists of the names specified in the XML description of the UI.
	 * separated by '/'. Elements which don't have a name or action attribute in
	 * the XML (e.g. <popup>) can be addressed by their XML element name
	 * (e.g. "popup"). The root element ("/ui") can be omitted in the path.
	 * Note that the widget found by following a path that ends in a <menu>
	 * element is the menuitem to which the menu is attached, not the menu itself.
	 * Also note that the widgets constructed by a ui manager are not tied to
	 * the lifecycle of the ui manager. If you add the widgets returned by this
	 * function to some container or explicitly ref them, they will survive the
	 * destruction of the ui manager.
	 * self:
	 *  a GtkUIManager
	 * path:
	 *  a path
	 * Returns:
	 *  the widget found by following the path, or NULL if no widget
	 *  was found.
	 * Since 2.4
	 */
	public Widget getWidget(char[] path)
	{
		// GtkWidget* gtk_ui_manager_get_widget (GtkUIManager *self,  const gchar *path);
		return new Widget( gtk_ui_manager_get_widget(gtkUIManager, std.string.toStringz(path)) );
	}
	
	/**
	 * Obtains a list of all toplevel widgets of the requested types.
	 * self:
	 *  a GtkUIManager
	 * types:
	 *  specifies the types of toplevel widgets to include. Allowed
	 *  types are GTK_UI_MANAGER_MENUBAR, GTK_UI_MANAGER_TOOLBAR and
	 *  GTK_UI_MANAGER_POPUP.
	 * Returns:
	 *  a newly-allocated of all toplevel widgets of the requested
	 * types.
	 * Since 2.4
	 */
	public ListSG getToplevels(GtkUIManagerItemType types)
	{
		// GSList* gtk_ui_manager_get_toplevels (GtkUIManager *self,  GtkUIManagerItemType types);
		return new ListSG( gtk_ui_manager_get_toplevels(gtkUIManager, types) );
	}
	
	/**
	 * Looks up an action by following a path. See gtk_ui_manager_get_widget()
	 * for more information about paths.
	 * self:
	 *  a GtkUIManager
	 * path:
	 *  a path
	 * Returns:
	 *  the action whose proxy widget is found by following the path,
	 *  or NULL if no widget was found.
	 * Since 2.4
	 */
	public Action getAction(char[] path)
	{
		// GtkAction* gtk_ui_manager_get_action (GtkUIManager *self,  const gchar *path);
		return new Action( gtk_ui_manager_get_action(gtkUIManager, std.string.toStringz(path)) );
	}
	
	/**
	 * Parses a string containing a UI definition and
	 * merges it with the current contents of self. An enclosing <ui>
	 * element is added if it is missing.
	 * self:
	 *  a GtkUIManager object
	 * buffer:
	 *  the string to parse
	 * length:
	 *  the length of buffer (may be -1 if buffer is nul-terminated)
	 * error:
	 *  return location for an error
	 * Returns:
	 *  The merge id for the merged UI. The merge id can be used
	 *  to unmerge the UI with gtk_ui_manager_remove_ui(). If an error occurred,
	 *  the return value is 0.
	 * Since 2.4
	 */
	public uint addUiFromString(char[] buffer, int length, GError** error)
	{
		// guint gtk_ui_manager_add_ui_from_string  (GtkUIManager *self,  const gchar *buffer,  gssize length,  GError **error);
		return gtk_ui_manager_add_ui_from_string(gtkUIManager, std.string.toStringz(buffer), length, error);
	}
	
	/**
	 * Parses a file containing a UI definition and
	 * merges it with the current contents of self.
	 * self:
	 *  a GtkUIManager object
	 * filename:
	 *  the name of the file to parse
	 * error:
	 *  return location for an error
	 * Returns:
	 *  The merge id for the merged UI. The merge id can be used
	 *  to unmerge the UI with gtk_ui_manager_remove_ui(). If an error occurred,
	 *  the return value is 0.
	 * Since 2.4
	 */
	public uint addUiFromFile(char[] filename, GError** error)
	{
		// guint gtk_ui_manager_add_ui_from_file (GtkUIManager *self,  const gchar *filename,  GError **error);
		return gtk_ui_manager_add_ui_from_file(gtkUIManager, std.string.toStringz(filename), error);
	}
	
	/**
	 * Returns an unused merge id, suitable for use with
	 * gtk_ui_manager_add_ui().
	 * self:
	 *  a GtkUIManager
	 * Returns:
	 *  an unused merge id.
	 * Since 2.4
	 */
	public uint newMergeId()
	{
		// guint gtk_ui_manager_new_merge_id (GtkUIManager *self);
		return gtk_ui_manager_new_merge_id(gtkUIManager);
	}
	
	
	/**
	 * Adds a UI element to the current contents of self.
	 * If type is GTK_UI_MANAGER_AUTO, GTK+ inserts a menuitem, toolitem or
	 * separator if such an element can be inserted at the place determined by
	 * path. Otherwise type must indicate an element that can be inserted at
	 * the place determined by path.
	 * If path points to a menuitem or toolitem, the new element will be inserted
	 * before or after this item, depending on top.
	 * self:
	 *  a GtkUIManager
	 * merge_id:
	 *  the merge id for the merged UI, see gtk_ui_manager_new_merge_id()
	 * path:
	 *  a path
	 * name:
	 *  the name for the added UI element
	 * action:
	 *  the name of the action to be proxied, or NULL to add a separator
	 * type:
	 *  the type of UI element to add.
	 * top:
	 *  if TRUE, the UI element is added before its siblings, otherwise it
	 *  is added after its siblings.
	 * Since 2.4
	 */
	public void addUi(uint mergeId, char[] path, char[] name, char[] action, GtkUIManagerItemType type, int top)
	{
		// void gtk_ui_manager_add_ui (GtkUIManager *self,  guint merge_id,  const gchar *path,  const gchar *name,  const gchar *action,  GtkUIManagerItemType type,  gboolean top);
		gtk_ui_manager_add_ui(gtkUIManager, mergeId, std.string.toStringz(path), std.string.toStringz(name), std.string.toStringz(action), type, top);
	}
	
	/**
	 * Unmerges the part of selfs content identified by merge_id.
	 * self:
	 *  a GtkUIManager object
	 * merge_id:
	 *  a merge id as returned by gtk_ui_manager_add_ui_from_string()
	 * Since 2.4
	 */
	public void removeUi(uint mergeId)
	{
		// void gtk_ui_manager_remove_ui (GtkUIManager *self,  guint merge_id);
		gtk_ui_manager_remove_ui(gtkUIManager, mergeId);
	}
	
	/**
	 * Creates a UI definition of the merged UI.
	 * self:
	 *  a GtkUIManager
	 * Returns:
	 *  A newly allocated string containing an XML representation of
	 * the merged UI.
	 * Since 2.4
	 */
	public char[] getUi()
	{
		// gchar* gtk_ui_manager_get_ui (GtkUIManager *self);
		return std.string.toString(gtk_ui_manager_get_ui(gtkUIManager) );
	}
	
	/**
	 * Makes sure that all pending updates to the UI have been completed.
	 * This may occasionally be necessary, since GtkUIManager updates the
	 * UI in an idle function. A typical example where this function is
	 * useful is to enforce that the menubar and toolbar have been added to
	 * the main window before showing it:
	 * gtk_container_add (GTK_CONTAINER (window), vbox);
	 * g_signal_connect (merge, "add_widget",
	 *  G_CALLBACK (add_widget), vbox);
	 * gtk_ui_manager_add_ui_from_file (merge, "my-menus");
	 * gtk_ui_manager_add_ui_from_file (merge, "my-toolbars");
	 * gtk_ui_manager_ensure_update (merge);
	 * gtk_widget_show (window);
	 * self:
	 *  a GtkUIManager
	 * Since 2.4
	 * Property Details
	 * The "add-tearoffs" property
	 *  "add-tearoffs" gboolean : Read / Write
	 * The "add-tearoffs" property controls whether generated menus
	 * have tearoff menu items.
	 * Note that this only affects regular menus. Generated popup
	 * menus never have tearoff menu items.
	 * Default value: FALSE
	 * Since 2.4
	 */
	public void ensureUpdate()
	{
		// void gtk_ui_manager_ensure_update (GtkUIManager *self);
		gtk_ui_manager_ensure_update(gtkUIManager);
	}
	
	
	
	
	
	
}
