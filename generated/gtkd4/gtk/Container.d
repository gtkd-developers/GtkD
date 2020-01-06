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


module gtk.Container;

private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Adjustment;
private import gtk.Widget;
private import gtk.WidgetPath;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A GTK user interface is constructed by nesting widgets inside widgets.
 * Container widgets are the inner nodes in the resulting tree of widgets:
 * they contain other widgets. So, for example, you might have a #GtkWindow
 * containing a #GtkFrame containing a #GtkLabel. If you wanted an image instead
 * of a textual label inside the frame, you might replace the #GtkLabel widget
 * with a #GtkImage widget.
 * 
 * There are two major kinds of container widgets in GTK. Both are subclasses
 * of the abstract GtkContainer base class.
 * 
 * The first type of container widget has a single child widget and derives
 * from #GtkBin. These containers are decorators, which
 * add some kind of functionality to the child. For example, a #GtkButton makes
 * its child into a clickable button; a #GtkFrame draws a frame around its child
 * and a #GtkWindow places its child widget inside a top-level window.
 * 
 * The second type of container can have more than one child; its purpose is to
 * manage layout. This means that these containers assign
 * sizes and positions to their children. For example, a horizontal #GtkBox arranges its
 * children in a horizontal row, and a #GtkGrid arranges the widgets it contains
 * in a two-dimensional grid.
 * 
 * For implementations of #GtkContainer the virtual method #GtkContainerClass.forall()
 * is always required, since it's used for drawing and other internal operations
 * on the children.
 * If the #GtkContainer implementation expect to have non internal children
 * it's needed to implement both #GtkContainerClass.add() and #GtkContainerClass.remove().
 * If the GtkContainer implementation has internal children, they should be added
 * with gtk_widget_set_parent() on init() and removed with gtk_widget_unparent()
 * in the #GtkWidgetClass.destroy() implementation.
 * 
 * See more about implementing custom widgets at https://wiki.gnome.org/HowDoI/CustomWidgets
 */
public class Container : Widget
{
	/** the main Gtk struct */
	protected GtkContainer* gtkContainer;

	/** Get the main Gtk struct */
	public GtkContainer* getContainerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkContainer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkContainer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkContainer* gtkContainer, bool ownedRef = false)
	{
		this.gtkContainer = gtkContainer;
		super(cast(GtkWidget*)gtkContainer, ownedRef);

		Signals.connect(this, "add", cast(GCallback)&gtkd_container_add, null);
		Signals.connect(this, "remove", cast(GCallback)&gtkd_container_remove, null);
	}

	~this()
	{
		children = null; //Is this needed?

		import std.traits : isPointer;
		import gtkd.Loader;
		import gobject.c.functions;
		import glib.c.functions;

		static if ( isPointer!(typeof(g_signal_handlers_disconnect_matched)) )
			if ( !Linker.isLoaded(LIBRARY_GOBJECT) )
			return;

		g_signal_handlers_disconnect_matched(gtkContainer, GSignalMatchType.FUNC, 0, g_quark_from_string("add"), null, &gtkd_container_add, null);
		g_signal_handlers_disconnect_matched(gtkContainer, GSignalMatchType.FUNC, 0, g_quark_from_string("remove"), null, &gtkd_container_remove, null);
	}

	private Widget[] children;

	static extern(C) void gtkd_container_add(GtkContainer* c, GtkWidget* w)
	{
		Container container = ObjectG.getDObject!(Container)(c);
		Widget widget = ObjectG.getDObject!(Widget)(w);

		container.children ~= widget;
		widget.removeGcRoot();
	}

	static extern(C) void gtkd_container_remove(GtkContainer* c, GtkWidget* w)
	{
		import gobject.c.functions : g_object_get_data;
		import std.array : empty;

		if ( auto container = cast(Container)g_object_get_data(cast(GObject*)c, "GObject") )
		{
			if ( container.children.empty )
				return;

			if ( auto widget = cast(Widget)g_object_get_data(cast(GObject*)w, "GObject") )
			{
				import std.algorithm : remove;
				container.children.remove!(a => a is widget)();
			}
		}
	}

	/**
	 * Removes all widgets from the container
	 */
	void removeAll()
	{
		GList* gList = gtk_container_get_children(getContainerStruct());
		while ( gList !is null )
		{
			gtk_container_remove(getContainerStruct(), cast(GtkWidget*)gList.data);
			gList = gList.next;
		}
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_container_get_type();
	}

	/**
	 * Adds @widget to @container. Typically used for simple containers
	 * such as #GtkWindow, #GtkFrame, or #GtkButton; for more complicated
	 * layout containers such #GtkGrid, this function will
	 * pick default packing parameters that may not be correct.  So
	 * consider functions such as gtk_grid_attach() as an alternative
	 * to gtk_container_add() in those cases. A widget may be added to
	 * only one container at a time; you can’t place the same widget
	 * inside two different containers.
	 *
	 * Note that some containers, such as #GtkScrolledWindow or #GtkListBox,
	 * may add intermediate children between the added widget and the
	 * container.
	 *
	 * Params:
	 *     widget = a widget to be placed inside @container
	 */
	public void add(Widget widget)
	{
		gtk_container_add(gtkContainer, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Returns the type of the children supported by the container.
	 *
	 * Note that this may return %G_TYPE_NONE to indicate that no more
	 * children can be added, e.g. for a #GtkPaned which already has two
	 * children.
	 *
	 * Returns: a #GType
	 */
	public GType childType()
	{
		return gtk_container_child_type(gtkContainer);
	}

	/**
	 * Invokes @callback on each direct child of @container, including
	 * children that are considered “internal” (implementation details
	 * of the container). “Internal” children generally weren’t added
	 * by the user of the container, but were added by the container
	 * implementation itself.
	 *
	 * Most applications should use gtk_container_foreach(), rather
	 * than gtk_container_forall().
	 *
	 * Params:
	 *     callback = a callback
	 *     callbackData = callback user data
	 */
	public void forall(GtkCallback callback, void* callbackData)
	{
		gtk_container_forall(gtkContainer, callback, callbackData);
	}

	alias foreac = foreach_;
	/**
	 * Invokes @callback on each non-internal child of @container.
	 * See gtk_container_forall() for details on what constitutes
	 * an “internal” child. For all practical purposes, this function
	 * should iterate over precisely those child widgets that were
	 * added to the container by the application with explicit add()
	 * calls.
	 *
	 * It is permissible to remove the child from the @callback handler.
	 *
	 * Most applications should use gtk_container_foreach(),
	 * rather than gtk_container_forall().
	 *
	 * Params:
	 *     callback = a callback
	 *     callbackData = callback user data
	 */
	public void foreach_(GtkCallback callback, void* callbackData)
	{
		gtk_container_foreach(gtkContainer, callback, callbackData);
	}

	/**
	 * Returns the container’s non-internal children. See
	 * gtk_container_forall() for details on what constitutes an "internal" child.
	 *
	 * Returns: a newly-allocated list of the container’s non-internal children.
	 */
	public ListG getChildren()
	{
		auto __p = gtk_container_get_children(gtkContainer);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Retrieves the horizontal focus adjustment for the container. See
	 * gtk_container_set_focus_hadjustment ().
	 *
	 * Returns: the horizontal focus adjustment, or %NULL if
	 *     none has been set.
	 */
	public Adjustment getFocusHadjustment()
	{
		auto __p = gtk_container_get_focus_hadjustment(gtkContainer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) __p);
	}

	/**
	 * Retrieves the vertical focus adjustment for the container. See
	 * gtk_container_set_focus_vadjustment().
	 *
	 * Returns: the vertical focus adjustment, or
	 *     %NULL if none has been set.
	 */
	public Adjustment getFocusVadjustment()
	{
		auto __p = gtk_container_get_focus_vadjustment(gtkContainer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) __p);
	}

	/**
	 * Returns a newly created widget path representing all the widget hierarchy
	 * from the toplevel down to and including @child.
	 *
	 * Params:
	 *     child = a child of @container
	 *
	 * Returns: A newly created #GtkWidgetPath
	 */
	public WidgetPath getPathForChild(Widget child)
	{
		auto __p = gtk_container_get_path_for_child(gtkContainer, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WidgetPath)(cast(GtkWidgetPath*) __p, true);
	}

	/**
	 * Removes @widget from @container. @widget must be inside @container.
	 * Note that @container will own a reference to @widget, and that this
	 * may be the last reference held; so removing a widget from its
	 * container can destroy that widget. If you want to use @widget
	 * again, you need to add a reference to it before removing it from
	 * a container, using g_object_ref(). If you don’t want to use @widget
	 * again it’s usually more efficient to simply destroy it directly
	 * using gtk_widget_destroy() since this will remove it from the
	 * container and help break any circular reference count cycles.
	 *
	 * Params:
	 *     widget = a current child of @container
	 */
	public void remove(Widget widget)
	{
		gtk_container_remove(gtkContainer, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Hooks up an adjustment to focus handling in a container, so when a child
	 * of the container is focused, the adjustment is scrolled to show that
	 * widget. This function sets the horizontal alignment.
	 * See gtk_scrolled_window_get_hadjustment() for a typical way of obtaining
	 * the adjustment and gtk_container_set_focus_vadjustment() for setting
	 * the vertical adjustment.
	 *
	 * The adjustments have to be in pixel units and in the same coordinate
	 * system as the allocation for immediate children of the container.
	 *
	 * Params:
	 *     adjustment = an adjustment which should be adjusted when the focus is
	 *         moved among the descendents of @container
	 */
	public void setFocusHadjustment(Adjustment adjustment)
	{
		gtk_container_set_focus_hadjustment(gtkContainer, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/**
	 * Hooks up an adjustment to focus handling in a container, so when a
	 * child of the container is focused, the adjustment is scrolled to
	 * show that widget. This function sets the vertical alignment. See
	 * gtk_scrolled_window_get_vadjustment() for a typical way of obtaining
	 * the adjustment and gtk_container_set_focus_hadjustment() for setting
	 * the horizontal adjustment.
	 *
	 * The adjustments have to be in pixel units and in the same coordinate
	 * system as the allocation for immediate children of the container.
	 *
	 * Params:
	 *     adjustment = an adjustment which should be adjusted when the focus
	 *         is moved among the descendents of @container
	 */
	public void setFocusVadjustment(Adjustment adjustment)
	{
		gtk_container_set_focus_vadjustment(gtkContainer, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/** */
	gulong addOnAdd(void delegate(Widget, Container) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "add", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnRemove(void delegate(Widget, Container) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "remove", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
