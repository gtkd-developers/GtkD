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


module gtk.Paned;

private import gdk.Window;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Container;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkPaned has two panes, arranged either
 * horizontally or vertically. The division between
 * the two panes is adjustable by the user by dragging
 * a handle.
 * 
 * Child widgets are
 * added to the panes of the widget with gtk_paned_pack1() and
 * gtk_paned_pack2(). The division between the two children is set by default
 * from the size requests of the children, but it can be adjusted by the
 * user.
 * 
 * A paned widget draws a separator between the two child widgets and a
 * small handle that the user can drag to adjust the division. It does not
 * draw any relief around the children or around the separator. (The space
 * in which the separator is called the gutter.) Often, it is useful to put
 * each child inside a #GtkFrame with the shadow type set to %GTK_SHADOW_IN
 * so that the gutter appears as a ridge. No separator is drawn if one of
 * the children is missing.
 * 
 * Each child has two options that can be set, @resize and @shrink. If
 * @resize is true, then when the #GtkPaned is resized, that child will
 * expand or shrink along with the paned widget. If @shrink is true, then
 * that child can be made smaller than its requisition by the user.
 * Setting @shrink to %FALSE allows the application to set a minimum size.
 * If @resize is false for both children, then this is treated as if
 * @resize is true for both children.
 * 
 * The application can set the position of the slider as if it were set
 * by the user, by calling gtk_paned_set_position().
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * paned
 * ├── <child>
 * ├── separator[.wide]
 * ╰── <child>
 * ]|
 * 
 * GtkPaned has a main CSS node with name paned, and a subnode for
 * the separator with name separator. The subnode gets a .wide style
 * class when the paned is supposed to be wide.
 * 
 * In horizontal orientation, the nodes of the children are always arranged
 * from left to right. So :first-child will always select the leftmost child,
 * regardless of text direction.
 * 
 * ## Creating a paned widget with minimum sizes.
 * 
 * |[<!-- language="C" -->
 * GtkWidget *hpaned = gtk_paned_new (GTK_ORIENTATION_HORIZONTAL);
 * GtkWidget *frame1 = gtk_frame_new (NULL);
 * GtkWidget *frame2 = gtk_frame_new (NULL);
 * gtk_frame_set_shadow_type (GTK_FRAME (frame1), GTK_SHADOW_IN);
 * gtk_frame_set_shadow_type (GTK_FRAME (frame2), GTK_SHADOW_IN);
 * 
 * gtk_widget_set_size_request (hpaned, 200, -1);
 * 
 * gtk_paned_pack1 (GTK_PANED (hpaned), frame1, TRUE, FALSE);
 * gtk_widget_set_size_request (frame1, 50, -1);
 * 
 * gtk_paned_pack2 (GTK_PANED (hpaned), frame2, FALSE, FALSE);
 * gtk_widget_set_size_request (frame2, 50, -1);
 * ]|
 */
public class Paned : Container, OrientableIF
{
	/** the main Gtk struct */
	protected GtkPaned* gtkPaned;

	/** Get the main Gtk struct */
	public GtkPaned* getPanedStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPaned;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPaned;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPaned* gtkPaned, bool ownedRef = false)
	{
		this.gtkPaned = gtkPaned;
		super(cast(GtkContainer*)gtkPaned, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkPaned);

	/** */
	public void add(Widget child1, Widget child2)
	{
		add1(child1);
		add2(child2);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_paned_get_type();
	}

	/**
	 * Creates a new #GtkPaned widget.
	 *
	 * Params:
	 *     orientation = the paned’s orientation.
	 *
	 * Returns: a new #GtkPaned.
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation)
	{
		auto p = gtk_paned_new(orientation);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPaned*) p);
	}

	/**
	 * Adds a child to the top or left pane with default parameters. This is
	 * equivalent to
	 * `gtk_paned_pack1 (paned, child, FALSE, TRUE)`.
	 *
	 * Params:
	 *     child = the child to add
	 */
	public void add1(Widget child)
	{
		gtk_paned_add1(gtkPaned, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Adds a child to the bottom or right pane with default parameters. This
	 * is equivalent to
	 * `gtk_paned_pack2 (paned, child, TRUE, TRUE)`.
	 *
	 * Params:
	 *     child = the child to add
	 */
	public void add2(Widget child)
	{
		gtk_paned_add2(gtkPaned, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Obtains the first child of the paned widget.
	 *
	 * Returns: first child, or %NULL if it is not set.
	 *
	 * Since: 2.4
	 */
	public Widget getChild1()
	{
		auto p = gtk_paned_get_child1(gtkPaned);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Obtains the second child of the paned widget.
	 *
	 * Returns: second child, or %NULL if it is not set.
	 *
	 * Since: 2.4
	 */
	public Widget getChild2()
	{
		auto p = gtk_paned_get_child2(gtkPaned);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns the #GdkWindow of the handle. This function is
	 * useful when handling button or motion events because it
	 * enables the callback to distinguish between the window
	 * of the paned, a child and the handle.
	 *
	 * Returns: the paned’s handle window.
	 *
	 * Since: 2.20
	 */
	public Window getHandleWindow()
	{
		auto p = gtk_paned_get_handle_window(gtkPaned);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Obtains the position of the divider between the two panes.
	 *
	 * Returns: position of the divider
	 */
	public int getPosition()
	{
		return gtk_paned_get_position(gtkPaned);
	}

	/**
	 * Gets the #GtkPaned:wide-handle property.
	 *
	 * Returns: %TRUE if the paned should have a wide handle
	 *
	 * Since: 3.16
	 */
	public bool getWideHandle()
	{
		return gtk_paned_get_wide_handle(gtkPaned) != 0;
	}

	/**
	 * Adds a child to the top or left pane.
	 *
	 * Params:
	 *     child = the child to add
	 *     resize = should this child expand when the paned widget is resized.
	 *     shrink = can this child be made smaller than its requisition.
	 */
	public void pack1(Widget child, bool resize, bool shrink)
	{
		gtk_paned_pack1(gtkPaned, (child is null) ? null : child.getWidgetStruct(), resize, shrink);
	}

	/**
	 * Adds a child to the bottom or right pane.
	 *
	 * Params:
	 *     child = the child to add
	 *     resize = should this child expand when the paned widget is resized.
	 *     shrink = can this child be made smaller than its requisition.
	 */
	public void pack2(Widget child, bool resize, bool shrink)
	{
		gtk_paned_pack2(gtkPaned, (child is null) ? null : child.getWidgetStruct(), resize, shrink);
	}

	/**
	 * Sets the position of the divider between the two panes.
	 *
	 * Params:
	 *     position = pixel position of divider, a negative value means that the position
	 *         is unset.
	 */
	public void setPosition(int position)
	{
		gtk_paned_set_position(gtkPaned, position);
	}

	/**
	 * Sets the #GtkPaned:wide-handle property.
	 *
	 * Params:
	 *     wide = the new value for the #GtkPaned:wide-handle property
	 *
	 * Since: 3.16
	 */
	public void setWideHandle(bool wide)
	{
		gtk_paned_set_wide_handle(gtkPaned, wide);
	}

	/**
	 * The ::accept-position signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to accept the current position of the handle when
	 * moving it using key bindings.
	 *
	 * The default binding for this signal is Return or Space.
	 *
	 * Since: 2.0
	 */
	gulong addOnAcceptPosition(bool delegate(Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "accept-position", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::cancel-position signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to cancel moving the position of the handle using key
	 * bindings. The position of the handle will be reset to the value prior to
	 * moving it.
	 *
	 * The default binding for this signal is Escape.
	 *
	 * Since: 2.0
	 */
	gulong addOnCancelPosition(bool delegate(Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancel-position", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::cycle-child-focus signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to cycle the focus between the children of the paned.
	 *
	 * The default binding is f6.
	 *
	 * Params:
	 *     reversed = whether cycling backward or forward
	 *
	 * Since: 2.0
	 */
	gulong addOnCycleChildFocus(bool delegate(bool, Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cycle-child-focus", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::cycle-handle-focus signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to cycle whether the paned should grab focus to allow
	 * the user to change position of the handle by using key bindings.
	 *
	 * The default binding for this signal is f8.
	 *
	 * Params:
	 *     reversed = whether cycling backward or forward
	 *
	 * Since: 2.0
	 */
	gulong addOnCycleHandleFocus(bool delegate(bool, Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cycle-handle-focus", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::move-handle signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to move the handle when the user is using key bindings
	 * to move it.
	 *
	 * Params:
	 *     scrollType = a #GtkScrollType
	 *
	 * Since: 2.0
	 */
	gulong addOnMoveHandle(bool delegate(GtkScrollType, Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-handle", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::toggle-handle-focus is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to accept the current position of the handle and then
	 * move focus to the next widget in the focus chain.
	 *
	 * The default binding is Tab.
	 *
	 * Since: 2.0
	 */
	gulong addOnToggleHandleFocus(bool delegate(Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-handle-focus", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
