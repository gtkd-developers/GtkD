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


module gtk.UIManager;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccelGroup;
private import gtk.Action;
private import gtk.ActionGroup;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkUIManager constructs a user interface (menus and toolbars) from
 * one or more UI definitions, which reference actions from one or more
 * action groups.
 * 
 * # UI Definitions # {#XML-UI}
 * 
 * The UI definitions are specified in an XML format which can be
 * roughly described by the following DTD.
 * 
 * > Do not confuse the GtkUIManager UI Definitions described here with
 * > the similarly named [GtkBuilder UI Definitions][BUILDER-UI].
 * 
 * |[
 * <!ELEMENT ui          (menubar|toolbar|popup|accelerator)* >
 * <!ELEMENT menubar     (menuitem|separator|placeholder|menu)* >
 * <!ELEMENT menu        (menuitem|separator|placeholder|menu)* >
 * <!ELEMENT popup       (menuitem|separator|placeholder|menu)* >
 * <!ELEMENT toolbar     (toolitem|separator|placeholder)* >
 * <!ELEMENT placeholder (menuitem|toolitem|separator|placeholder|menu)* >
 * <!ELEMENT menuitem     EMPTY >
 * <!ELEMENT toolitem     (menu?) >
 * <!ELEMENT separator    EMPTY >
 * <!ELEMENT accelerator  EMPTY >
 * <!ATTLIST menubar      name                      #IMPLIED
 * action                    #IMPLIED >
 * <!ATTLIST toolbar      name                      #IMPLIED
 * action                    #IMPLIED >
 * <!ATTLIST popup        name                      #IMPLIED
 * action                    #IMPLIED
 * accelerators (true|false) #IMPLIED >
 * <!ATTLIST placeholder  name                      #IMPLIED
 * action                    #IMPLIED >
 * <!ATTLIST separator    name                      #IMPLIED
 * action                    #IMPLIED
 * expand       (true|false) #IMPLIED >
 * <!ATTLIST menu         name                      #IMPLIED
 * action                    #REQUIRED
 * position     (top|bot)    #IMPLIED >
 * <!ATTLIST menuitem     name                      #IMPLIED
 * action                    #REQUIRED
 * position     (top|bot)    #IMPLIED
 * always-show-image (true|false) #IMPLIED >
 * <!ATTLIST toolitem     name                      #IMPLIED
 * action                    #REQUIRED
 * position     (top|bot)    #IMPLIED >
 * <!ATTLIST accelerator  name                      #IMPLIED
 * action                    #REQUIRED >
 * ]|
 * 
 * There are some additional restrictions beyond those specified in the
 * DTD, e.g. every toolitem must have a toolbar in its anchestry and
 * every menuitem must have a menubar or popup in its anchestry. Since
 * a #GMarkupParser is used to parse the UI description, it must not only
 * be valid XML, but valid markup.
 * 
 * If a name is not specified, it defaults to the action. If an action is
 * not specified either, the element name is used. The name and action
 * attributes must not contain “/” characters after parsing (since that
 * would mess up path lookup) and must be usable as XML attributes when
 * enclosed in doublequotes, thus they must not “"” characters or references
 * to the &quot; entity.
 * 
 * # A UI definition #
 * 
 * |[
 * <ui>
 * <menubar>
 * <menu name="FileMenu" action="FileMenuAction">
 * <menuitem name="New" action="New2Action" />
 * <placeholder name="FileMenuAdditions" />
 * </menu>
 * <menu name="JustifyMenu" action="JustifyMenuAction">
 * <menuitem name="Left" action="justify-left"/>
 * <menuitem name="Centre" action="justify-center"/>
 * <menuitem name="Right" action="justify-right"/>
 * <menuitem name="Fill" action="justify-fill"/>
 * </menu>
 * </menubar>
 * <toolbar action="toolbar1">
 * <placeholder name="JustifyToolItems">
 * <separator/>
 * <toolitem name="Left" action="justify-left"/>
 * <toolitem name="Centre" action="justify-center"/>
 * <toolitem name="Right" action="justify-right"/>
 * <toolitem name="Fill" action="justify-fill"/>
 * <separator/>
 * </placeholder>
 * </toolbar>
 * </ui>
 * ]|
 * 
 * The constructed widget hierarchy is very similar to the element tree
 * of the XML, with the exception that placeholders are merged into their
 * parents. The correspondence of XML elements to widgets should be
 * almost obvious:
 * 
 * - menubar
 * 
 * a #GtkMenuBar
 * 
 * - toolbar
 * 
 * a #GtkToolbar
 * 
 * - popup
 * 
 * a toplevel #GtkMenu
 * 
 * - menu
 * 
 * a #GtkMenu attached to a menuitem
 * 
 * - menuitem
 * 
 * a #GtkMenuItem subclass, the exact type depends on the action
 * 
 * - toolitem
 * 
 * a #GtkToolItem subclass, the exact type depends on the
 * action. Note that toolitem elements may contain a menu element,
 * but only if their associated action specifies a
 * #GtkMenuToolButton as proxy.
 * 
 * - separator
 * 
 * a #GtkSeparatorMenuItem or #GtkSeparatorToolItem
 * 
 * - accelerator
 * 
 * a keyboard accelerator
 * 
 * The “position” attribute determines where a constructed widget is positioned
 * wrt. to its siblings in the partially constructed tree. If it is
 * “top”, the widget is prepended, otherwise it is appended.
 * 
 * # UI Merging # {#UI-Merging}
 * 
 * The most remarkable feature of #GtkUIManager is that it can overlay a set
 * of menuitems and toolitems over another one, and demerge them later.
 * 
 * Merging is done based on the names of the XML elements. Each element is
 * identified by a path which consists of the names of its anchestors, separated
 * by slashes. For example, the menuitem named “Left” in the example above
 * has the path `/ui/menubar/JustifyMenu/Left` and the
 * toolitem with the same name has path
 * `/ui/toolbar1/JustifyToolItems/Left`.
 * 
 * # Accelerators #
 * 
 * Every action has an accelerator path. Accelerators are installed together
 * with menuitem proxies, but they can also be explicitly added with
 * <accelerator> elements in the UI definition. This makes it possible to
 * have accelerators for actions even if they have no visible proxies.
 * 
 * # Smart Separators # {#Smart-Separators}
 * 
 * The separators created by #GtkUIManager are “smart”, i.e. they do not show up
 * in the UI unless they end up between two visible menu or tool items. Separators
 * which are located at the very beginning or end of the menu or toolbar
 * containing them, or multiple separators next to each other, are hidden. This
 * is a useful feature, since the merging of UI elements from multiple sources
 * can make it hard or impossible to determine in advance whether a separator
 * will end up in such an unfortunate position.
 * 
 * For separators in toolbars, you can set `expand="true"` to
 * turn them from a small, visible separator to an expanding, invisible one.
 * Toolitems following an expanding separator are effectively right-aligned.
 * 
 * # Empty Menus
 * 
 * Submenus pose similar problems to separators inconnection with merging. It is
 * impossible to know in advance whether they will end up empty after merging.
 * #GtkUIManager offers two ways to treat empty submenus:
 * 
 * - make them disappear by hiding the menu item they’re attached to
 * 
 * - add an insensitive “Empty” item
 * 
 * The behaviour is chosen based on the “hide_if_empty” property of the action
 * to which the submenu is associated.
 * 
 * # GtkUIManager as GtkBuildable # {#GtkUIManager-BUILDER-UI}
 * 
 * The GtkUIManager implementation of the GtkBuildable interface accepts
 * GtkActionGroup objects as <child> elements in UI definitions.
 * 
 * A GtkUIManager UI definition as described above can be embedded in
 * an GtkUIManager <object> element in a GtkBuilder UI definition.
 * 
 * The widgets that are constructed by a GtkUIManager can be embedded in
 * other parts of the constructed user interface with the help of the
 * “constructor” attribute. See the example below.
 * 
 * ## An embedded GtkUIManager UI definition
 * 
 * |[
 * <object class="GtkUIManager" id="uiman">
 * <child>
 * <object class="GtkActionGroup" id="actiongroup">
 * <child>
 * <object class="GtkAction" id="file">
 * <property name="label">_File</property>
 * </object>
 * </child>
 * </object>
 * </child>
 * <ui>
 * <menubar name="menubar1">
 * <menu action="file">
 * </menu>
 * </menubar>
 * </ui>
 * </object>
 * <object class="GtkWindow" id="main-window">
 * <child>
 * <object class="GtkMenuBar" id="menubar1" constructor="uiman"/>
 * </child>
 * </object>
 * ]|
 */
public class UIManager : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected GtkUIManager* gtkUIManager;

	/** Get the main Gtk struct */
	public GtkUIManager* getUIManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkUIManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkUIManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkUIManager* gtkUIManager, bool ownedRef = false)
	{
		this.gtkUIManager = gtkUIManager;
		super(cast(GObject*)gtkUIManager, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkUIManager);


	/** */
	public static GType getType()
	{
		return gtk_ui_manager_get_type();
	}

	/**
	 * Creates a new ui manager object.
	 *
	 * Returns: a new ui manager object.
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_ui_manager_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkUIManager*) p, true);
	}

	/**
	 * Adds a UI element to the current contents of @manager.
	 *
	 * If @type is %GTK_UI_MANAGER_AUTO, GTK+ inserts a menuitem, toolitem or
	 * separator if such an element can be inserted at the place determined by
	 * @path. Otherwise @type must indicate an element that can be inserted at
	 * the place determined by @path.
	 *
	 * If @path points to a menuitem or toolitem, the new element will be inserted
	 * before or after this item, depending on @top.
	 *
	 * Params:
	 *     mergeId = the merge id for the merged UI, see gtk_ui_manager_new_merge_id()
	 *     path = a path
	 *     name = the name for the added UI element
	 *     action = the name of the action to be proxied, or %NULL to add a separator
	 *     type = the type of UI element to add.
	 *     top = if %TRUE, the UI element is added before its siblings, otherwise it
	 *         is added after its siblings.
	 *
	 * Since: 2.4
	 */
	public void addUi(uint mergeId, string path, string name, string action, GtkUIManagerItemType type, bool top)
	{
		gtk_ui_manager_add_ui(gtkUIManager, mergeId, Str.toStringz(path), Str.toStringz(name), Str.toStringz(action), type, top);
	}

	/**
	 * Parses a file containing a [UI definition][XML-UI] and
	 * merges it with the current contents of @manager.
	 *
	 * Params:
	 *     filename = the name of the file to parse
	 *
	 * Returns: The merge id for the merged UI. The merge id can be used
	 *     to unmerge the UI with gtk_ui_manager_remove_ui(). If an error occurred,
	 *     the return value is 0.
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public uint addUiFromFile(string filename)
	{
		GError* err = null;

		auto p = gtk_ui_manager_add_ui_from_file(gtkUIManager, Str.toStringz(filename), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Parses a resource file containing a [UI definition][XML-UI] and
	 * merges it with the current contents of @manager.
	 *
	 * Params:
	 *     resourcePath = the resource path of the file to parse
	 *
	 * Returns: The merge id for the merged UI. The merge id can be used
	 *     to unmerge the UI with gtk_ui_manager_remove_ui(). If an error occurred,
	 *     the return value is 0.
	 *
	 * Since: 3.4
	 *
	 * Throws: GException on failure.
	 */
	public uint addUiFromResource(string resourcePath)
	{
		GError* err = null;

		auto p = gtk_ui_manager_add_ui_from_resource(gtkUIManager, Str.toStringz(resourcePath), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Parses a string containing a [UI definition][XML-UI] and merges it with
	 * the current contents of @manager. An enclosing <ui> element is added if
	 * it is missing.
	 *
	 * Params:
	 *     buffer = the string to parse
	 *     length = the length of @buffer (may be -1 if @buffer is nul-terminated)
	 *
	 * Returns: The merge id for the merged UI. The merge id can be used
	 *     to unmerge the UI with gtk_ui_manager_remove_ui(). If an error occurred,
	 *     the return value is 0.
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public uint addUiFromString(string buffer, ptrdiff_t length)
	{
		GError* err = null;

		auto p = gtk_ui_manager_add_ui_from_string(gtkUIManager, Str.toStringz(buffer), length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Makes sure that all pending updates to the UI have been completed.
	 *
	 * This may occasionally be necessary, since #GtkUIManager updates the
	 * UI in an idle function. A typical example where this function is
	 * useful is to enforce that the menubar and toolbar have been added to
	 * the main window before showing it:
	 * |[<!-- language="C" -->
	 * gtk_container_add (GTK_CONTAINER (window), vbox);
	 * g_signal_connect (merge, "add-widget",
	 * G_CALLBACK (add_widget), vbox);
	 * gtk_ui_manager_add_ui_from_file (merge, "my-menus");
	 * gtk_ui_manager_add_ui_from_file (merge, "my-toolbars");
	 * gtk_ui_manager_ensure_update (merge);
	 * gtk_widget_show (window);
	 * ]|
	 *
	 * Since: 2.4
	 */
	public void ensureUpdate()
	{
		gtk_ui_manager_ensure_update(gtkUIManager);
	}

	/**
	 * Returns the #GtkAccelGroup associated with @manager.
	 *
	 * Returns: the #GtkAccelGroup.
	 *
	 * Since: 2.4
	 */
	public AccelGroup getAccelGroup()
	{
		auto p = gtk_ui_manager_get_accel_group(gtkUIManager);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AccelGroup)(cast(GtkAccelGroup*) p);
	}

	/**
	 * Looks up an action by following a path. See gtk_ui_manager_get_widget()
	 * for more information about paths.
	 *
	 * Params:
	 *     path = a path
	 *
	 * Returns: the action whose proxy widget is found by following the path,
	 *     or %NULL if no widget was found.
	 *
	 * Since: 2.4
	 */
	public Action getAction(string path)
	{
		auto p = gtk_ui_manager_get_action(gtkUIManager, Str.toStringz(path));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Action)(cast(GtkAction*) p);
	}

	/**
	 * Returns the list of action groups associated with @manager.
	 *
	 * Returns: a #GList of
	 *     action groups. The list is owned by GTK+
	 *     and should not be modified.
	 *
	 * Since: 2.4
	 */
	public ListG getActionGroups()
	{
		auto p = gtk_ui_manager_get_action_groups(gtkUIManager);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Returns whether menus generated by this #GtkUIManager
	 * will have tearoff menu items.
	 *
	 * Deprecated: Tearoff menus are deprecated and should not
	 * be used in newly written code.
	 *
	 * Returns: whether tearoff menu items are added
	 *
	 * Since: 2.4
	 */
	public bool getAddTearoffs()
	{
		return gtk_ui_manager_get_add_tearoffs(gtkUIManager) != 0;
	}

	/**
	 * Obtains a list of all toplevel widgets of the requested types.
	 *
	 * Params:
	 *     types = specifies the types of toplevel widgets to include. Allowed
	 *         types are #GTK_UI_MANAGER_MENUBAR, #GTK_UI_MANAGER_TOOLBAR and
	 *         #GTK_UI_MANAGER_POPUP.
	 *
	 * Returns: a newly-allocated #GSList of
	 *     all toplevel widgets of the requested types.  Free the returned list with g_slist_free().
	 *
	 * Since: 2.4
	 */
	public ListSG getToplevels(GtkUIManagerItemType types)
	{
		auto p = gtk_ui_manager_get_toplevels(gtkUIManager, types);

		if(p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) p);
	}

	/**
	 * Creates a [UI definition][XML-UI] of the merged UI.
	 *
	 * Returns: A newly allocated string containing an XML representation of
	 *     the merged UI.
	 *
	 * Since: 2.4
	 */
	public string getUi()
	{
		auto retStr = gtk_ui_manager_get_ui(gtkUIManager);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Looks up a widget by following a path.
	 * The path consists of the names specified in the XML description of the UI.
	 * separated by “/”. Elements which don’t have a name or action attribute in
	 * the XML (e.g. <popup>) can be addressed by their XML element name
	 * (e.g. "popup"). The root element ("/ui") can be omitted in the path.
	 *
	 * Note that the widget found by following a path that ends in a <menu>;
	 * element is the menuitem to which the menu is attached, not the menu it
	 * manages.
	 *
	 * Also note that the widgets constructed by a ui manager are not tied to
	 * the lifecycle of the ui manager. If you add the widgets returned by this
	 * function to some container or explicitly ref them, they will survive the
	 * destruction of the ui manager.
	 *
	 * Params:
	 *     path = a path
	 *
	 * Returns: the widget found by following the path,
	 *     or %NULL if no widget was found
	 *
	 * Since: 2.4
	 */
	public Widget getWidget(string path)
	{
		auto p = gtk_ui_manager_get_widget(gtkUIManager, Str.toStringz(path));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Inserts an action group into the list of action groups associated
	 * with @manager. Actions in earlier groups hide actions with the same
	 * name in later groups.
	 *
	 * If @pos is larger than the number of action groups in @manager, or
	 * negative, @action_group will be inserted at the end of the internal
	 * list.
	 *
	 * Params:
	 *     actionGroup = the action group to be inserted
	 *     pos = the position at which the group will be inserted.
	 *
	 * Since: 2.4
	 */
	public void insertActionGroup(ActionGroup actionGroup, int pos)
	{
		gtk_ui_manager_insert_action_group(gtkUIManager, (actionGroup is null) ? null : actionGroup.getActionGroupStruct(), pos);
	}

	/**
	 * Returns an unused merge id, suitable for use with
	 * gtk_ui_manager_add_ui().
	 *
	 * Returns: an unused merge id.
	 *
	 * Since: 2.4
	 */
	public uint newMergeId()
	{
		return gtk_ui_manager_new_merge_id(gtkUIManager);
	}

	/**
	 * Removes an action group from the list of action groups associated
	 * with @manager.
	 *
	 * Params:
	 *     actionGroup = the action group to be removed
	 *
	 * Since: 2.4
	 */
	public void removeActionGroup(ActionGroup actionGroup)
	{
		gtk_ui_manager_remove_action_group(gtkUIManager, (actionGroup is null) ? null : actionGroup.getActionGroupStruct());
	}

	/**
	 * Unmerges the part of @manager's content identified by @merge_id.
	 *
	 * Params:
	 *     mergeId = a merge id as returned by gtk_ui_manager_add_ui_from_string()
	 *
	 * Since: 2.4
	 */
	public void removeUi(uint mergeId)
	{
		gtk_ui_manager_remove_ui(gtkUIManager, mergeId);
	}

	/**
	 * Sets the “add_tearoffs” property, which controls whether menus
	 * generated by this #GtkUIManager will have tearoff menu items.
	 *
	 * Note that this only affects regular menus. Generated popup
	 * menus never have tearoff menu items.
	 *
	 * Deprecated: Tearoff menus are deprecated and should not
	 * be used in newly written code.
	 *
	 * Params:
	 *     addTearoffs = whether tearoff menu items are added
	 *
	 * Since: 2.4
	 */
	public void setAddTearoffs(bool addTearoffs)
	{
		gtk_ui_manager_set_add_tearoffs(gtkUIManager, addTearoffs);
	}

	/**
	 * The ::actions-changed signal is emitted whenever the set of actions
	 * changes.
	 *
	 * Since: 2.4
	 */
	gulong addOnActionsChanged(void delegate(UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "actions-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::add-widget signal is emitted for each generated menubar and toolbar.
	 * It is not emitted for generated popup menus, which can be obtained by
	 * gtk_ui_manager_get_widget().
	 *
	 * Params:
	 *     widget = the added widget
	 *
	 * Since: 2.4
	 */
	gulong addOnAddWidget(void delegate(Widget, UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "add-widget", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::connect-proxy signal is emitted after connecting a proxy to
	 * an action in the group.
	 *
	 * This is intended for simple customizations for which a custom action
	 * class would be too clumsy, e.g. showing tooltips for menuitems in the
	 * statusbar.
	 *
	 * Params:
	 *     action = the action
	 *     proxy = the proxy
	 *
	 * Since: 2.4
	 */
	gulong addOnConnectProxy(void delegate(Action, Widget, UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "connect-proxy", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::disconnect-proxy signal is emitted after disconnecting a proxy
	 * from an action in the group.
	 *
	 * Params:
	 *     action = the action
	 *     proxy = the proxy
	 *
	 * Since: 2.4
	 */
	gulong addOnDisconnectProxy(void delegate(Action, Widget, UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "disconnect-proxy", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::post-activate signal is emitted just after the @action
	 * is activated.
	 *
	 * This is intended for applications to get notification
	 * just after any action is activated.
	 *
	 * Params:
	 *     action = the action
	 *
	 * Since: 2.4
	 */
	gulong addOnPostActivate(void delegate(Action, UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "post-activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::pre-activate signal is emitted just before the @action
	 * is activated.
	 *
	 * This is intended for applications to get notification
	 * just before any action is activated.
	 *
	 * Params:
	 *     action = the action
	 *
	 * Since: 2.4
	 */
	gulong addOnPreActivate(void delegate(Action, UIManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pre-activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
