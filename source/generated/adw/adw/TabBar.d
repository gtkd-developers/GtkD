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


module adw.TabBar;

private import adw.TabPage;
private import adw.TabView;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import std.algorithm;


/**
 * A tab bar for [class@TabView].
 * 
 * <picture>
 * <source srcset="tab-bar-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="tab-bar.png" alt="tab-bar">
 * </picture>
 * 
 * The `AdwTabBar` widget is a tab bar that can be used with conjunction with
 * `AdwTabView`.
 * 
 * `AdwTabBar` can autohide and can optionally contain action widgets on both
 * sides of the tabs.
 * 
 * When there's not enough space to show all the tabs, `AdwTabBar` will scroll
 * them. Pinned tabs always stay visible and aren't a part of the scrollable
 * area.
 * 
 * ## CSS nodes
 * 
 * `AdwTabBar` has a single CSS node with name `tabbar`.
 *
 * Since: 1.0
 */
public class TabBar : Widget
{
	/** the main Gtk struct */
	protected AdwTabBar* adwTabBar;

	/** Get the main Gtk struct */
	public AdwTabBar* getTabBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwTabBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwTabBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwTabBar* adwTabBar, bool ownedRef = false)
	{
		this.adwTabBar = adwTabBar;
		super(cast(GtkWidget*)adwTabBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_tab_bar_get_type();
	}

	/**
	 * Creates a new `AdwTabBar`.
	 *
	 * Returns: the newly created `AdwTabBar`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_tab_bar_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwTabBar*) __p);
	}

	/**
	 * Gets whether the tabs automatically hide.
	 *
	 * Returns: whether the tabs automatically hide
	 *
	 * Since: 1.0
	 */
	public bool getAutohide()
	{
		return adw_tab_bar_get_autohide(adwTabBar) != 0;
	}

	/**
	 * Gets the widget shown after the tabs.
	 *
	 * Returns: the widget shown after the tabs
	 *
	 * Since: 1.0
	 */
	public Widget getEndActionWidget()
	{
		auto __p = adw_tab_bar_get_end_action_widget(adwTabBar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets whether tabs expand to full width.
	 *
	 * Returns: whether tabs expand to full width.
	 *
	 * Since: 1.0
	 */
	public bool getExpandTabs()
	{
		return adw_tab_bar_get_expand_tabs(adwTabBar) != 0;
	}

	/**
	 * Gets whether tabs use inverted layout.
	 *
	 * Returns: whether tabs use inverted layout
	 *
	 * Since: 1.0
	 */
	public bool getInverted()
	{
		return adw_tab_bar_get_inverted(adwTabBar) != 0;
	}

	/**
	 * Gets whether @self is overflowing.
	 *
	 * Returns: whether @self is overflowing
	 *
	 * Since: 1.0
	 */
	public bool getIsOverflowing()
	{
		return adw_tab_bar_get_is_overflowing(adwTabBar) != 0;
	}

	/**
	 * Gets the widget shown before the tabs.
	 *
	 * Returns: the widget shown before the tabs
	 *
	 * Since: 1.0
	 */
	public Widget getStartActionWidget()
	{
		auto __p = adw_tab_bar_get_start_action_widget(adwTabBar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets whether the tabs are currently revealed.
	 *
	 * Returns: whether the tabs are currently revealed
	 *
	 * Since: 1.0
	 */
	public bool getTabsRevealed()
	{
		return adw_tab_bar_get_tabs_revealed(adwTabBar) != 0;
	}

	/**
	 * Gets the tab view @self controls.
	 *
	 * Returns: the view @self controls
	 *
	 * Since: 1.0
	 */
	public TabView getView()
	{
		auto __p = adw_tab_bar_get_view(adwTabBar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabView)(cast(AdwTabView*) __p);
	}

	/**
	 * Sets whether the tabs automatically hide.
	 *
	 * Params:
	 *     autohide = whether the tabs automatically hide
	 *
	 * Since: 1.0
	 */
	public void setAutohide(bool autohide)
	{
		adw_tab_bar_set_autohide(adwTabBar, autohide);
	}

	/**
	 * Sets the widget to show after the tabs.
	 *
	 * Params:
	 *     widget = the widget to show after the tabs
	 *
	 * Since: 1.0
	 */
	public void setEndActionWidget(Widget widget)
	{
		adw_tab_bar_set_end_action_widget(adwTabBar, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets whether tabs expand to full width.
	 *
	 * Params:
	 *     expandTabs = whether to expand tabs
	 *
	 * Since: 1.0
	 */
	public void setExpandTabs(bool expandTabs)
	{
		adw_tab_bar_set_expand_tabs(adwTabBar, expandTabs);
	}

	/**
	 * Sets whether tabs tabs use inverted layout.
	 *
	 * Params:
	 *     inverted = whether tabs use inverted layout
	 *
	 * Since: 1.0
	 */
	public void setInverted(bool inverted)
	{
		adw_tab_bar_set_inverted(adwTabBar, inverted);
	}

	/**
	 * Sets the widget to show before the tabs.
	 *
	 * Params:
	 *     widget = the widget to show before the tabs
	 *
	 * Since: 1.0
	 */
	public void setStartActionWidget(Widget widget)
	{
		adw_tab_bar_set_start_action_widget(adwTabBar, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets the tab view @self controls.
	 *
	 * Params:
	 *     view = a tab view
	 *
	 * Since: 1.0
	 */
	public void setView(TabView view)
	{
		adw_tab_bar_set_view(adwTabBar, (view is null) ? null : view.getTabViewStruct());
	}

	/**
	 * Sets the supported types for this drop target.
	 *
	 * Sets up an extra drop target on tabs.
	 *
	 * This allows to drag arbitrary content onto tabs, for example URLs in a web
	 * browser.
	 *
	 * If a tab is hovered for a certain period of time while dragging the content,
	 * it will be automatically selected.
	 *
	 * The [signal@TabBar::extra-drag-drop] signal can be used to handle the drop.
	 *
	 * Params:
	 *     actions = the supported actions
	 *     types = all supported `GType`s that can be dropped
	 *
	 * Since: 1.0
	 */
	public void setupExtraDropTarget(GdkDragAction actions, GType[] types)
	{
		adw_tab_bar_setup_extra_drop_target(adwTabBar, actions, types.ptr, cast(size_t)types.length);
	}

	/**
	 * This signal is emitted when content is dropped onto a tab.
	 *
	 * The content must be of one of the types set up via
	 * [method@TabBar.setup_extra_drop_target].
	 *
	 * See [signal@Gtk.DropTarget::drop].
	 *
	 * Params:
	 *     page = the page matching the tab the content was dropped onto
	 *     value = the `GValue` being dropped
	 *
	 * Returns: whether the drop was accepted for @page
	 *
	 * Since: 1.0
	 */
	gulong addOnExtraDragDrop(bool delegate(TabPage, Value, TabBar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "extra-drag-drop", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
