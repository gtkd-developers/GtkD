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


module adw.ViewStack;

private import adw.ViewStackPage;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.SelectionModelIF;
private import gtk.Widget;


/**
 * A view container for [class@ViewSwitcher].
 * 
 * `AdwViewStack` is a container which only shows one page at a time.
 * It is typically used to hold an application's main views.
 * 
 * It doesn't provide a way to transition between pages.
 * Instead, a separate widget such as [class@ViewSwitcher] can be used with
 * `AdwViewStack` to provide this functionality.
 * 
 * `AdwViewStack` pages can have a title, an icon, an attention request, and a
 * numbered badge that [class@ViewSwitcher] will use to let users identify which
 * page is which. Set them using the [property@ViewStackPage:title],
 * [property@ViewStackPage:icon-name],
 * [property@ViewStackPage:needs-attention], and
 * [property@ViewStackPage:badge-number] properties.
 * 
 * Unlike [class@Gtk.Stack], transitions between views are not animated.
 * 
 * `AdwViewStack` maintains a [class@ViewStackPage] object for each added child,
 * which holds additional per-child properties. You obtain the
 * [class@ViewStackPage] for a child with [method@ViewStack.get_page] and you
 * can obtain a [iface@Gtk.SelectionModel] containing all the pages with
 * [method@ViewStack.get_pages].
 * 
 * ## AdwViewStack as GtkBuildable
 * 
 * To set child-specific properties in a .ui file, create
 * [class@ViewStackPage] objects explicitly, and set the child widget as a
 * property on it:
 * 
 * ```xml
 * <object class="AdwViewStack" id="stack">
 * <child>
 * <object class="AdwViewStackPage">
 * <property name="name">overview</property>
 * <property name="title">Overview</property>
 * <property name="child">
 * <object class="AdwStatusPage">
 * <property name="title">Welcome!</property>
 * </object>
 * </property>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * ## CSS nodes
 * 
 * `AdwViewStack` has a single CSS node named `stack`.
 *
 * Since: 1.0
 */
public class ViewStack : Widget
{
	/** the main Gtk struct */
	protected AdwViewStack* adwViewStack;

	/** Get the main Gtk struct */
	public AdwViewStack* getViewStackStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwViewStack;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwViewStack;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwViewStack* adwViewStack, bool ownedRef = false)
	{
		this.adwViewStack = adwViewStack;
		super(cast(GtkWidget*)adwViewStack, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_view_stack_get_type();
	}

	/**
	 * Creates a new `AdwViewStack`.
	 *
	 * Returns: the newly created `AdwViewStack`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_view_stack_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwViewStack*) __p);
	}

	/**
	 * Adds a child to @self.
	 *
	 * Params:
	 *     child = the widget to add
	 *
	 * Returns: the [class@ViewStackPage] for @child
	 *
	 * Since: 1.0
	 */
	public ViewStackPage add(Widget child)
	{
		auto __p = adw_view_stack_add(adwViewStack, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ViewStackPage)(cast(AdwViewStackPage*) __p);
	}

	/**
	 * Adds a child to @self.
	 *
	 * The child is identified by the @name.
	 *
	 * Params:
	 *     child = the widget to add
	 *     name = the name for @child
	 *
	 * Returns: the `AdwViewStackPage` for @child
	 *
	 * Since: 1.0
	 */
	public ViewStackPage addNamed(Widget child, string name)
	{
		auto __p = adw_view_stack_add_named(adwViewStack, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ViewStackPage)(cast(AdwViewStackPage*) __p);
	}

	/**
	 * Adds a child to @self.
	 *
	 * The child is identified by the @name. The @title will be used by
	 * [class@ViewSwitcher] to represent @child, so it should be short.
	 *
	 * Params:
	 *     child = the widget to add
	 *     name = the name for @child
	 *     title = a human-readable title for @child
	 *
	 * Returns: the `AdwViewStackPage` for @child
	 *
	 * Since: 1.0
	 */
	public ViewStackPage addTitled(Widget child, string name, string title)
	{
		auto __p = adw_view_stack_add_titled(adwViewStack, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(name), Str.toStringz(title));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ViewStackPage)(cast(AdwViewStackPage*) __p);
	}

	/**
	 * Finds the child with @name in @self.
	 *
	 * Params:
	 *     name = the name of the child to find
	 *
	 * Returns: the requested child
	 *
	 * Since: 1.0
	 */
	public Widget getChildByName(string name)
	{
		auto __p = adw_view_stack_get_child_by_name(adwViewStack, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets whether @self is horizontally homogeneous.
	 *
	 * Returns: whether @self is horizontally homogeneous
	 *
	 * Since: 1.0
	 */
	public bool getHhomogeneous()
	{
		return adw_view_stack_get_hhomogeneous(adwViewStack) != 0;
	}

	/**
	 * Gets the [class@ViewStackPage] object for @child.
	 *
	 * Params:
	 *     child = a child of @self
	 *
	 * Returns: the page object for @child
	 *
	 * Since: 1.0
	 */
	public ViewStackPage getPage(Widget child)
	{
		auto __p = adw_view_stack_get_page(adwViewStack, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ViewStackPage)(cast(AdwViewStackPage*) __p);
	}

	/**
	 * Returns a [iface@Gio.ListModel] that contains the pages of the stack.
	 *
	 * This can be used to keep an up-to-date view. The model also implements
	 * [iface@Gtk.SelectionModel] and can be used to track and change the visible
	 * page.
	 *
	 * Returns: a `GtkSelectionModel` for the stack's children
	 *
	 * Since: 1.0
	 */
	public SelectionModelIF getPages()
	{
		auto __p = adw_view_stack_get_pages(adwViewStack);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionModelIF)(cast(GtkSelectionModel*) __p, true);
	}

	/**
	 * Gets whether @self is vertically homogeneous.
	 *
	 * Returns: whether @self is vertically homogeneous
	 *
	 * Since: 1.0
	 */
	public bool getVhomogeneous()
	{
		return adw_view_stack_get_vhomogeneous(adwViewStack) != 0;
	}

	/**
	 * Gets the currently visible child of @self, .
	 *
	 * Returns: the visible child
	 *
	 * Since: 1.0
	 */
	public Widget getVisibleChild()
	{
		auto __p = adw_view_stack_get_visible_child(adwViewStack);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the name of the currently visible child of @self.
	 *
	 * Returns: the name of the visible child
	 *
	 * Since: 1.0
	 */
	public string getVisibleChildName()
	{
		return Str.toString(adw_view_stack_get_visible_child_name(adwViewStack));
	}

	/**
	 * Removes a child widget from @self.
	 *
	 * Params:
	 *     child = the child to remove
	 *
	 * Since: 1.0
	 */
	public void remove(Widget child)
	{
		adw_view_stack_remove(adwViewStack, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets @self to be horizontally homogeneous or not.
	 *
	 * Params:
	 *     hhomogeneous = whether to make @self horizontally homogeneous
	 *
	 * Since: 1.0
	 */
	public void setHhomogeneous(bool hhomogeneous)
	{
		adw_view_stack_set_hhomogeneous(adwViewStack, hhomogeneous);
	}

	/**
	 * Sets @self to be vertically homogeneous or not.
	 *
	 * Params:
	 *     vhomogeneous = whether to make @self vertically homogeneous
	 *
	 * Since: 1.0
	 */
	public void setVhomogeneous(bool vhomogeneous)
	{
		adw_view_stack_set_vhomogeneous(adwViewStack, vhomogeneous);
	}

	/**
	 * Makes @child the visible child of @self.
	 *
	 * Params:
	 *     child = a child of @self
	 *
	 * Since: 1.0
	 */
	public void setVisibleChild(Widget child)
	{
		adw_view_stack_set_visible_child(adwViewStack, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Makes the child with @name visible.
	 *
	 * Params:
	 *     name = the name of the child
	 *
	 * Since: 1.0
	 */
	public void setVisibleChildName(string name)
	{
		adw_view_stack_set_visible_child_name(adwViewStack, Str.toStringz(name));
	}
}
