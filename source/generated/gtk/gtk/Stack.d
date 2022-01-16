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


module gtk.Stack;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.SelectionModelIF;
private import gtk.StackPage;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkStack` is a container which only shows one of its children
 * at a time.
 * 
 * In contrast to `GtkNotebook`, `GtkStack` does not provide a means
 * for users to change the visible child. Instead, a separate widget
 * such as [class@Gtk.StackSwitcher] or [class@Gtk.StackSidebar] can
 * be used with `GtkStack` to provide this functionality.
 * 
 * Transitions between pages can be animated as slides or fades. This
 * can be controlled with [method@Gtk.Stack.set_transition_type].
 * These animations respect the [property@Gtk.Settings:gtk-enable-animations]
 * setting.
 * 
 * `GtkStack` maintains a [class@Gtk.StackPage] object for each added
 * child, which holds additional per-child properties. You
 * obtain the `GtkStackPage` for a child with [method@Gtk.Stack.get_page]
 * and you can obtain a `GtkSelectionModel` containing all the pages
 * with [method@Gtk.Stack.get_pages].
 * 
 * # GtkStack as GtkBuildable
 * 
 * To set child-specific properties in a .ui file, create `GtkStackPage`
 * objects explicitly, and set the child widget as a property on it:
 * 
 * ```xml
 * <object class="GtkStack" id="stack">
 * <child>
 * <object class="GtkStackPage">
 * <property name="name">page1</property>
 * <property name="title">In the beginning…</property>
 * <property name="child">
 * <object class="GtkLabel">
 * <property name="label">It was dark</property>
 * </object>
 * </property>
 * </object>
 * </child>
 * ```
 * 
 * # CSS nodes
 * 
 * `GtkStack` has a single CSS node named stack.
 * 
 * # Accessibility
 * 
 * `GtkStack` uses the %GTK_ACCESSIBLE_ROLE_TAB_PANEL for the stack
 * pages, which are the accessible parent objects of the child widgets.
 */
public class Stack : Widget
{
	/** the main Gtk struct */
	protected GtkStack* gtkStack;

	/** Get the main Gtk struct */
	public GtkStack* getStackStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStack;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStack;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStack* gtkStack, bool ownedRef = false)
	{
		this.gtkStack = gtkStack;
		super(cast(GtkWidget*)gtkStack, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_stack_get_type();
	}

	/**
	 * Creates a new `GtkStack`.
	 *
	 * Returns: a new `GtkStack`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_stack_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStack*) __p);
	}

	/**
	 * Adds a child to @stack.
	 *
	 * Params:
	 *     child = the widget to add
	 *
	 * Returns: the `GtkStackPage` for @child
	 */
	public StackPage addChild(Widget child)
	{
		auto __p = gtk_stack_add_child(gtkStack, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StackPage)(cast(GtkStackPage*) __p);
	}

	/**
	 * Adds a child to @stack.
	 *
	 * The child is identified by the @name.
	 *
	 * Params:
	 *     child = the widget to add
	 *     name = the name for @child
	 *
	 * Returns: the `GtkStackPage` for @child
	 */
	public StackPage addNamed(Widget child, string name)
	{
		auto __p = gtk_stack_add_named(gtkStack, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StackPage)(cast(GtkStackPage*) __p);
	}

	/**
	 * Adds a child to @stack.
	 *
	 * The child is identified by the @name. The @title
	 * will be used by `GtkStackSwitcher` to represent
	 * @child in a tab bar, so it should be short.
	 *
	 * Params:
	 *     child = the widget to add
	 *     name = the name for @child
	 *     title = a human-readable title for @child
	 *
	 * Returns: the `GtkStackPage` for @child
	 */
	public StackPage addTitled(Widget child, string name, string title)
	{
		auto __p = gtk_stack_add_titled(gtkStack, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(name), Str.toStringz(title));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StackPage)(cast(GtkStackPage*) __p);
	}

	/**
	 * Finds the child with the name given as the argument.
	 *
	 * Returns %NULL if there is no child with this name.
	 *
	 * Params:
	 *     name = the name of the child to find
	 *
	 * Returns: the requested child
	 *     of the `GtkStack`
	 */
	public Widget getChildByName(string name)
	{
		auto __p = gtk_stack_get_child_by_name(gtkStack, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets whether @stack is horizontally homogeneous.
	 *
	 * Returns: whether @stack is horizontally homogeneous.
	 */
	public bool getHhomogeneous()
	{
		return gtk_stack_get_hhomogeneous(gtkStack) != 0;
	}

	/**
	 * Returns whether the `GtkStack` is set up to interpolate between
	 * the sizes of children on page switch.
	 *
	 * Returns: %TRUE if child sizes are interpolated
	 */
	public bool getInterpolateSize()
	{
		return gtk_stack_get_interpolate_size(gtkStack) != 0;
	}

	/**
	 * Returns the `GtkStackPage` object for @child.
	 *
	 * Params:
	 *     child = a child of @stack
	 *
	 * Returns: the `GtkStackPage` for @child
	 */
	public StackPage getPage(Widget child)
	{
		auto __p = gtk_stack_get_page(gtkStack, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StackPage)(cast(GtkStackPage*) __p);
	}

	/**
	 * Returns a `GListModel` that contains the pages of the stack.
	 *
	 * This can be used to keep an up-to-date view. The model also
	 * implements [iface@Gtk.SelectionModel] and can be used to track
	 * and modify the visible page.
	 *
	 * Returns: a `GtkSelectionModel` for the stack's children
	 */
	public SelectionModelIF getPages()
	{
		auto __p = gtk_stack_get_pages(gtkStack);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionModelIF)(cast(GtkSelectionModel*) __p, true);
	}

	/**
	 * Returns the amount of time (in milliseconds) that
	 * transitions between pages in @stack will take.
	 *
	 * Returns: the transition duration
	 */
	public uint getTransitionDuration()
	{
		return gtk_stack_get_transition_duration(gtkStack);
	}

	/**
	 * Returns whether the @stack is currently in a transition from one page to
	 * another.
	 *
	 * Returns: %TRUE if the transition is currently running, %FALSE otherwise.
	 */
	public bool getTransitionRunning()
	{
		return gtk_stack_get_transition_running(gtkStack) != 0;
	}

	/**
	 * Gets the type of animation that will be used
	 * for transitions between pages in @stack.
	 *
	 * Returns: the current transition type of @stack
	 */
	public GtkStackTransitionType getTransitionType()
	{
		return gtk_stack_get_transition_type(gtkStack);
	}

	/**
	 * Gets whether @stack is vertically homogeneous.
	 *
	 * Returns: whether @stack is vertically homogeneous.
	 */
	public bool getVhomogeneous()
	{
		return gtk_stack_get_vhomogeneous(gtkStack) != 0;
	}

	/**
	 * Gets the currently visible child of @stack.
	 *
	 * Returns %NULL if there are no visible children.
	 *
	 * Returns: the visible child of the `GtkStack`
	 */
	public Widget getVisibleChild()
	{
		auto __p = gtk_stack_get_visible_child(gtkStack);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the name of the currently visible child of @stack.
	 *
	 * Returns %NULL if there is no visible child.
	 *
	 * Returns: the name of the visible child
	 *     of the `GtkStack`
	 */
	public string getVisibleChildName()
	{
		return Str.toString(gtk_stack_get_visible_child_name(gtkStack));
	}

	/**
	 * Removes a child widget from @stack.
	 *
	 * Params:
	 *     child = the child to remove
	 */
	public void remove(Widget child)
	{
		gtk_stack_remove(gtkStack, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the `GtkStack` to be horizontally homogeneous or not.
	 *
	 * If it is homogeneous, the `GtkStack` will request the same
	 * width for all its children. If it isn't, the stack
	 * may change width when a different child becomes visible.
	 *
	 * Params:
	 *     hhomogeneous = %TRUE to make @stack horizontally homogeneous
	 */
	public void setHhomogeneous(bool hhomogeneous)
	{
		gtk_stack_set_hhomogeneous(gtkStack, hhomogeneous);
	}

	/**
	 * Sets whether or not @stack will interpolate its size when
	 * changing the visible child.
	 *
	 * If the [property@Gtk.Stack:interpolate-size] property is set
	 * to %TRUE, @stack will interpolate its size between the current
	 * one and the one it'll take after changing the visible child,
	 * according to the set transition duration.
	 *
	 * Params:
	 *     interpolateSize = the new value
	 */
	public void setInterpolateSize(bool interpolateSize)
	{
		gtk_stack_set_interpolate_size(gtkStack, interpolateSize);
	}

	/**
	 * Sets the duration that transitions between pages in @stack
	 * will take.
	 *
	 * Params:
	 *     duration = the new duration, in milliseconds
	 */
	public void setTransitionDuration(uint duration)
	{
		gtk_stack_set_transition_duration(gtkStack, duration);
	}

	/**
	 * Sets the type of animation that will be used for
	 * transitions between pages in @stack.
	 *
	 * Available types include various kinds of fades and slides.
	 *
	 * The transition type can be changed without problems
	 * at runtime, so it is possible to change the animation
	 * based on the page that is about to become current.
	 *
	 * Params:
	 *     transition = the new transition type
	 */
	public void setTransitionType(GtkStackTransitionType transition)
	{
		gtk_stack_set_transition_type(gtkStack, transition);
	}

	/**
	 * Sets the `GtkStack` to be vertically homogeneous or not.
	 *
	 * If it is homogeneous, the `GtkStack` will request the same
	 * height for all its children. If it isn't, the stack
	 * may change height when a different child becomes visible.
	 *
	 * Params:
	 *     vhomogeneous = %TRUE to make @stack vertically homogeneous
	 */
	public void setVhomogeneous(bool vhomogeneous)
	{
		gtk_stack_set_vhomogeneous(gtkStack, vhomogeneous);
	}

	/**
	 * Makes @child the visible child of @stack.
	 *
	 * If @child is different from the currently visible child,
	 * the transition between the two will be animated with the
	 * current transition type of @stack.
	 *
	 * Note that the @child widget has to be visible itself
	 * (see [method@Gtk.Widget.show]) in order to become the visible
	 * child of @stack.
	 *
	 * Params:
	 *     child = a child of @stack
	 */
	public void setVisibleChild(Widget child)
	{
		gtk_stack_set_visible_child(gtkStack, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Makes the child with the given name visible.
	 *
	 * Note that the child widget has to be visible itself
	 * (see [method@Gtk.Widget.show]) in order to become the visible
	 * child of @stack.
	 *
	 * Params:
	 *     name = the name of the child to make visible
	 *     transition = the transition type to use
	 */
	public void setVisibleChildFull(string name, GtkStackTransitionType transition)
	{
		gtk_stack_set_visible_child_full(gtkStack, Str.toStringz(name), transition);
	}

	/**
	 * Makes the child with the given name visible.
	 *
	 * If @child is different from the currently visible child,
	 * the transition between the two will be animated with the
	 * current transition type of @stack.
	 *
	 * Note that the child widget has to be visible itself
	 * (see [method@Gtk.Widget.show]) in order to become the visible
	 * child of @stack.
	 *
	 * Params:
	 *     name = the name of the child to make visible
	 */
	public void setVisibleChildName(string name)
	{
		gtk_stack_set_visible_child_name(gtkStack, Str.toStringz(name));
	}
}
