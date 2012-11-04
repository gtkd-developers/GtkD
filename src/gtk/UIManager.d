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
 * inFile  = GtkUIManager.html
 * outPack = gtk
 * outFile = UIManager
 * strct   = GtkUIManager
 * realStrct=
 * ctorStrct=
 * clss    = UIManager
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_ui_manager_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gtk.ActionGroup
 * 	- glib.ListG
 * 	- gtk.AccelGroup
 * 	- gtk.Widget
 * 	- glib.ListSG
 * 	- gtk.Action
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * 	- GList* -> ListG
 * 	- GSList* -> ListSG
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkAction* -> Action
 * 	- GtkActionGroup* -> ActionGroup
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.UIManager;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gtk.ActionGroup;
private import glib.ListG;
private import gtk.AccelGroup;
private import gtk.Widget;
private import glib.ListSG;
private import gtk.Action;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gobject.ObjectG;

/**
 * Description
 * A GtkUIManager constructs a user interface (menus and toolbars) from
 * one or more UI definitions, which reference actions from one or more
 * action groups.
 * UI Definitions
 * The UI definitions are specified in an XML format which can be
 * roughly described by the following DTD.
 * Do not confuse the GtkUIManager UI Definitions described here with
 * the similarly named GtkBuilder UI
 * Definitions.
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
 * <!ATTLIST menubar name num;IMPLIED
 *  action num;IMPLIED >
 * <!ATTLIST toolbar name num;IMPLIED
 *  action num;IMPLIED >
 * <!ATTLIST popup name num;IMPLIED
 *  action num;IMPLIED
 *  accelerators (true|false) num;IMPLIED >
 * <!ATTLIST placeholder name num;IMPLIED
 *  action num;IMPLIED >
 * <!ATTLIST separator name num;IMPLIED
 *  action num;IMPLIED
 *  expand (true|false) num;IMPLIED >
 * <!ATTLIST menu name num;IMPLIED
 *  action num;REQUIRED
 *  position (top|bot) num;IMPLIED >
 * <!ATTLIST menuitem name num;IMPLIED
 *  action num;REQUIRED
 *  position (top|bot) num;IMPLIED
 *  always-show-image (true|false) num;IMPLIED >
 * <!ATTLIST toolitem name num;IMPLIED
 *  action num;REQUIRED
 *  position (top|bot) num;IMPLIED >
 * <!ATTLIST accelerator name num;IMPLIED
 *  action num;REQUIRED >
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
 * $(DDOC_COMMENT example)
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
 * <hr>
 * GtkUIManager as GtkBuildable
 * The GtkUIManager implementation of the GtkBuildable interface accepts
 * GtkActionGroup objects as <child> elements in UI definitions.
 * A GtkUIManager UI definition as described above can be embedded in
 * an GtkUIManager <object> element in a GtkBuilder UI definition.
 * The widgets that are constructed by a GtkUIManager can be embedded in
 * other parts of the constructed user interface with the help of the
 * "constructor" attribute. See the example below.
 * $(DDOC_COMMENT example)
 */
public class UIManager : ObjectG, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkUIManager* gtkUIManager;
	
	
	public GtkUIManager* getUIManagerStruct()
	{
		return gtkUIManager;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkUIManager = cast(GtkUIManager*)obj;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkUIManager);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(UIManager)[] onActionsChangedListeners;
	/**
	 * The "actions-changed" signal is emitted whenever the set of actions
	 * changes.
	 * Since 2.4
	 */
	void addOnActionsChanged(void delegate(UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("actions-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"actions-changed",
			cast(GCallback)&callBackActionsChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["actions-changed"] = 1;
		}
		onActionsChangedListeners ~= dlg;
	}
	extern(C) static void callBackActionsChanged(GtkUIManager* mergeStruct, UIManager _uIManager)
	{
		foreach ( void delegate(UIManager) dlg ; _uIManager.onActionsChangedListeners )
		{
			dlg(_uIManager);
		}
	}
	
	void delegate(Widget, UIManager)[] onAddWidgetListeners;
	/**
	 * The add_widget signal is emitted for each generated menubar and toolbar.
	 * It is not emitted for generated popup menus, which can be obtained by
	 * gtk_ui_manager_get_widget().
	 * Since 2.4
	 */
	void addOnAddWidget(void delegate(Widget, UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("add-widget" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"add-widget",
			cast(GCallback)&callBackAddWidget,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["add-widget"] = 1;
		}
		onAddWidgetListeners ~= dlg;
	}
	extern(C) static void callBackAddWidget(GtkUIManager* mergeStruct, GtkWidget* widget, UIManager _uIManager)
	{
		foreach ( void delegate(Widget, UIManager) dlg ; _uIManager.onAddWidgetListeners )
		{
			dlg(ObjectG.getDObject!Widget(widget), _uIManager);
		}
	}
	
	void delegate(Action, Widget, UIManager)[] onConnectProxyListeners;
	/**
	 * The connect_proxy signal is emitted after connecting a proxy to
	 * an action in the group.
	 * This is intended for simple customizations for which a custom action
	 * class would be too clumsy, e.g. showing tooltips for menuitems in the
	 * statusbar.
	 * Since 2.4
	 */
	void addOnConnectProxy(void delegate(Action, Widget, UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackConnectProxy(GtkUIManager* uimanagerStruct, GtkAction* action, GtkWidget* proxy, UIManager _uIManager)
	{
		foreach ( void delegate(Action, Widget, UIManager) dlg ; _uIManager.onConnectProxyListeners )
		{
			dlg(ObjectG.getDObject!Action(action), ObjectG.getDObject!Widget(proxy), _uIManager);
		}
	}
	
	void delegate(Action, Widget, UIManager)[] onDisconnectProxyListeners;
	/**
	 * The disconnect_proxy signal is emitted after disconnecting a proxy
	 * from an action in the group.
	 * Since 2.4
	 */
	void addOnDisconnectProxy(void delegate(Action, Widget, UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackDisconnectProxy(GtkUIManager* uimanagerStruct, GtkAction* action, GtkWidget* proxy, UIManager _uIManager)
	{
		foreach ( void delegate(Action, Widget, UIManager) dlg ; _uIManager.onDisconnectProxyListeners )
		{
			dlg(ObjectG.getDObject!Action(action), ObjectG.getDObject!Widget(proxy), _uIManager);
		}
	}
	
	void delegate(Action, UIManager)[] onPostActivateListeners;
	/**
	 * The post_activate signal is emitted just after the action
	 * is activated.
	 * This is intended for applications to get notification
	 * just after any action is activated.
	 * Since 2.4
	 */
	void addOnPostActivate(void delegate(Action, UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackPostActivate(GtkUIManager* uimanagerStruct, GtkAction* action, UIManager _uIManager)
	{
		foreach ( void delegate(Action, UIManager) dlg ; _uIManager.onPostActivateListeners )
		{
			dlg(ObjectG.getDObject!Action(action), _uIManager);
		}
	}
	
	void delegate(Action, UIManager)[] onPreActivateListeners;
	/**
	 * The pre_activate signal is emitted just before the action
	 * is activated.
	 * This is intended for applications to get notification
	 * just before any action is activated.
	 * Since 2.4
	 * See Also
	 * GtkBuilder
	 */
	void addOnPreActivate(void delegate(Action, UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackPreActivate(GtkUIManager* uimanagerStruct, GtkAction* action, UIManager _uIManager)
	{
		foreach ( void delegate(Action, UIManager) dlg ; _uIManager.onPreActivateListeners )
		{
			dlg(ObjectG.getDObject!Action(action), _uIManager);
		}
	}
	
	
	/**
	 * Creates a new ui manager object.
	 * Since 2.4
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkUIManager * gtk_ui_manager_new (void);
		auto p = gtk_ui_manager_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_ui_manager_new()");
		}
		this(cast(GtkUIManager*) p);
	}
	
	/**
	 * Sets the "add_tearoffs" property, which controls whether menus
	 * generated by this GtkUIManager will have tearoff menu items.
	 * Note that this only affects regular menus. Generated popup
	 * menus never have tearoff menu items.
	 * Since 2.4
	 * Params:
	 * addTearoffs = whether tearoff menu items are added
	 */
	public void setAddTearoffs(int addTearoffs)
	{
		// void gtk_ui_manager_set_add_tearoffs (GtkUIManager *self,  gboolean add_tearoffs);
		gtk_ui_manager_set_add_tearoffs(gtkUIManager, addTearoffs);
	}
	
	/**
	 * Returns whether menus generated by this GtkUIManager
	 * will have tearoff menu items.
	 * Since 2.4
	 * Returns: whether tearoff menu items are added
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
	 * Since 2.4
	 * Params:
	 * actionGroup = the action group to be inserted
	 * pos = the position at which the group will be inserted.
	 */
	public void insertActionGroup(ActionGroup actionGroup, int pos)
	{
		// void gtk_ui_manager_insert_action_group (GtkUIManager *self,  GtkActionGroup *action_group,  gint pos);
		gtk_ui_manager_insert_action_group(gtkUIManager, (actionGroup is null) ? null : actionGroup.getActionGroupStruct(), pos);
	}
	
	/**
	 * Removes an action group from the list of action groups associated
	 * with self.
	 * Since 2.4
	 * Params:
	 * actionGroup = the action group to be removed
	 */
	public void removeActionGroup(ActionGroup actionGroup)
	{
		// void gtk_ui_manager_remove_action_group (GtkUIManager *self,  GtkActionGroup *action_group);
		gtk_ui_manager_remove_action_group(gtkUIManager, (actionGroup is null) ? null : actionGroup.getActionGroupStruct());
	}
	
	/**
	 * Returns the list of action groups associated with self.
	 * Since 2.4
	 * Returns: a GList of action groups. The list is owned by GTK+ and should not be modified. [element-type GtkActionGroup][transfer none GtkActionGroup]
	 */
	public ListG getActionGroups()
	{
		// GList * gtk_ui_manager_get_action_groups (GtkUIManager *self);
		auto p = gtk_ui_manager_get_action_groups(gtkUIManager);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!ListG(cast(GList*) p);
	}
	
	/**
	 * Returns the GtkAccelGroup associated with self.
	 * Since 2.4
	 * Returns: the GtkAccelGroup. [transfer none]
	 */
	public AccelGroup getAccelGroup()
	{
		// GtkAccelGroup * gtk_ui_manager_get_accel_group (GtkUIManager *self);
		auto p = gtk_ui_manager_get_accel_group(gtkUIManager);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!AccelGroup(cast(GtkAccelGroup*) p);
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
	 * Since 2.4
	 * Params:
	 * path = a path
	 * Returns: the widget found by following the path, or NULL if no widget was found. [transfer none]
	 */
	public Widget getWidget(string path)
	{
		// GtkWidget * gtk_ui_manager_get_widget (GtkUIManager *self,  const gchar *path);
		auto p = gtk_ui_manager_get_widget(gtkUIManager, Str.toStringz(path));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Obtains a list of all toplevel widgets of the requested types.
	 * Since 2.4
	 * Params:
	 * types = specifies the types of toplevel widgets to include. Allowed
	 *  types are GTK_UI_MANAGER_MENUBAR, GTK_UI_MANAGER_TOOLBAR and
	 *  GTK_UI_MANAGER_POPUP.
	 * Returns: a newly-allocated GSList of all toplevel widgets of the requested types. Free the returned list with g_slist_free(). [element-type GtkWidget][transfer container GtkWidget]
	 */
	public ListSG getToplevels(GtkUIManagerItemType types)
	{
		// GSList * gtk_ui_manager_get_toplevels (GtkUIManager *self,  GtkUIManagerItemType types);
		auto p = gtk_ui_manager_get_toplevels(gtkUIManager, types);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!ListSG(cast(GSList*) p);
	}
	
	/**
	 * Looks up an action by following a path. See gtk_ui_manager_get_widget()
	 * for more information about paths.
	 * Since 2.4
	 * Params:
	 * path = a path
	 * Returns: the action whose proxy widget is found by following the path, or NULL if no widget was found.
	 */
	public Action getAction(string path)
	{
		// GtkAction * gtk_ui_manager_get_action (GtkUIManager *self,  const gchar *path);
		auto p = gtk_ui_manager_get_action(gtkUIManager, Str.toStringz(path));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Action(cast(GtkAction*) p);
	}
	
	/**
	 * Parses a string containing a UI definition and
	 * merges it with the current contents of self. An enclosing <ui>
	 * element is added if it is missing.
	 * Since 2.4
	 * Params:
	 * buffer = the string to parse
	 * length = the length of buffer (may be -1 if buffer is nul-terminated)
	 * Returns: The merge id for the merged UI. The merge id can be used to unmerge the UI with gtk_ui_manager_remove_ui(). If an error occurred, the return value is 0.
	 * Throws: GException on failure.
	 */
	public uint addUiFromString(string buffer, gssize length)
	{
		// guint gtk_ui_manager_add_ui_from_string (GtkUIManager *self,  const gchar *buffer,  gssize length,  GError **error);
		GError* err = null;
		
		auto p = gtk_ui_manager_add_ui_from_string(gtkUIManager, Str.toStringz(buffer), length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Parses a file containing a UI definition and
	 * merges it with the current contents of self.
	 * Since 2.4
	 * Params:
	 * filename = the name of the file to parse
	 * Returns: The merge id for the merged UI. The merge id can be used to unmerge the UI with gtk_ui_manager_remove_ui(). If an error occurred, the return value is 0.
	 * Throws: GException on failure.
	 */
	public uint addUiFromFile(string filename)
	{
		// guint gtk_ui_manager_add_ui_from_file (GtkUIManager *self,  const gchar *filename,  GError **error);
		GError* err = null;
		
		auto p = gtk_ui_manager_add_ui_from_file(gtkUIManager, Str.toStringz(filename), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns an unused merge id, suitable for use with
	 * gtk_ui_manager_add_ui().
	 * Since 2.4
	 * Returns: an unused merge id.
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
	 * Since 2.4
	 * Params:
	 * mergeId = the merge id for the merged UI, see gtk_ui_manager_new_merge_id()
	 * path = a path
	 * name = the name for the added UI element
	 * action = the name of the action to be proxied, or NULL to add a separator. [allow-none]
	 * type = the type of UI element to add.
	 * top = if TRUE, the UI element is added before its siblings, otherwise it
	 *  is added after its siblings.
	 */
	public void addUi(uint mergeId, string path, string name, string action, GtkUIManagerItemType type, int top)
	{
		// void gtk_ui_manager_add_ui (GtkUIManager *self,  guint merge_id,  const gchar *path,  const gchar *name,  const gchar *action,  GtkUIManagerItemType type,  gboolean top);
		gtk_ui_manager_add_ui(gtkUIManager, mergeId, Str.toStringz(path), Str.toStringz(name), Str.toStringz(action), type, top);
	}
	
	/**
	 * Unmerges the part of selfs content identified by merge_id.
	 * Since 2.4
	 * Params:
	 * mergeId = a merge id as returned by gtk_ui_manager_add_ui_from_string()
	 */
	public void removeUi(uint mergeId)
	{
		// void gtk_ui_manager_remove_ui (GtkUIManager *self,  guint merge_id);
		gtk_ui_manager_remove_ui(gtkUIManager, mergeId);
	}
	
	/**
	 * Creates a UI definition of the merged UI.
	 * Since 2.4
	 * Returns: A newly allocated string containing an XML representation of the merged UI.
	 */
	public string getUi()
	{
		// gchar * gtk_ui_manager_get_ui (GtkUIManager *self);
		return Str.toString(gtk_ui_manager_get_ui(gtkUIManager));
	}
	
	/**
	 * Makes sure that all pending updates to the UI have been completed.
	 * This may occasionally be necessary, since GtkUIManager updates the
	 * UI in an idle function. A typical example where this function is
	 * useful is to enforce that the menubar and toolbar have been added to
	 * Since 2.4
	 */
	public void ensureUpdate()
	{
		// void gtk_ui_manager_ensure_update (GtkUIManager *self);
		gtk_ui_manager_ensure_update(gtkUIManager);
	}
}
