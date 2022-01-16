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


module gtk.LayoutManager;

private import gobject.ObjectG;
private import gtk.LayoutChild;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * Layout managers are delegate classes that handle the preferred size
 * and the allocation of a widget.
 * 
 * You typically subclass `GtkLayoutManager` if you want to implement a
 * layout policy for the children of a widget, or if you want to determine
 * the size of a widget depending on its contents.
 * 
 * Each `GtkWidget` can only have a `GtkLayoutManager` instance associated
 * to it at any given time; it is possible, though, to replace the layout
 * manager instance using [method@Gtk.Widget.set_layout_manager].
 * 
 * ## Layout properties
 * 
 * A layout manager can expose properties for controlling the layout of
 * each child, by creating an object type derived from [class@Gtk.LayoutChild]
 * and installing the properties on it as normal `GObject` properties.
 * 
 * Each `GtkLayoutChild` instance storing the layout properties for a
 * specific child is created through the [method@Gtk.LayoutManager.get_layout_child]
 * method; a `GtkLayoutManager` controls the creation of its `GtkLayoutChild`
 * instances by overriding the GtkLayoutManagerClass.create_layout_child()
 * virtual function. The typical implementation should look like:
 * 
 * ```c
 * static GtkLayoutChild *
 * create_layout_child (GtkLayoutManager *manager,
 * GtkWidget        *container,
 * GtkWidget        *child)
 * {
 * return g_object_new (your_layout_child_get_type (),
 * "layout-manager", manager,
 * "child-widget", child,
 * NULL);
 * }
 * ```
 * 
 * The [property@Gtk.LayoutChild:layout-manager] and
 * [property@Gtk.LayoutChild:child-widget] properties
 * on the newly created `GtkLayoutChild` instance are mandatory. The
 * `GtkLayoutManager` will cache the newly created `GtkLayoutChild` instance
 * until the widget is removed from its parent, or the parent removes the
 * layout manager.
 * 
 * Each `GtkLayoutManager` instance creating a `GtkLayoutChild` should use
 * [method@Gtk.LayoutManager.get_layout_child] every time it needs to query
 * the layout properties; each `GtkLayoutChild` instance should call
 * [method@Gtk.LayoutManager.layout_changed] every time a property is
 * updated, in order to queue a new size measuring and allocation.
 */
public class LayoutManager : ObjectG
{
	/** the main Gtk struct */
	protected GtkLayoutManager* gtkLayoutManager;

	/** Get the main Gtk struct */
	public GtkLayoutManager* getLayoutManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkLayoutManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLayoutManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkLayoutManager* gtkLayoutManager, bool ownedRef = false)
	{
		this.gtkLayoutManager = gtkLayoutManager;
		super(cast(GObject*)gtkLayoutManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_layout_manager_get_type();
	}

	/**
	 * Assigns the given @width, @height, and @baseline to
	 * a @widget, and computes the position and sizes of the children of
	 * the @widget using the layout management policy of @manager.
	 *
	 * Params:
	 *     widget = the `GtkWidget` using @manager
	 *     width = the new width of the @widget
	 *     height = the new height of the @widget
	 *     baseline = the baseline position of the @widget, or -1
	 */
	public void allocate(Widget widget, int width, int height, int baseline)
	{
		gtk_layout_manager_allocate(gtkLayoutManager, (widget is null) ? null : widget.getWidgetStruct(), width, height, baseline);
	}

	/**
	 * Retrieves a `GtkLayoutChild` instance for the `GtkLayoutManager`,
	 * creating one if necessary.
	 *
	 * The @child widget must be a child of the widget using @manager.
	 *
	 * The `GtkLayoutChild` instance is owned by the `GtkLayoutManager`,
	 * and is guaranteed to exist as long as @child is a child of the
	 * `GtkWidget` using the given `GtkLayoutManager`.
	 *
	 * Params:
	 *     child = a `GtkWidget`
	 *
	 * Returns: a `GtkLayoutChild`
	 */
	public LayoutChild getLayoutChild(Widget child)
	{
		auto __p = gtk_layout_manager_get_layout_child(gtkLayoutManager, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(LayoutChild)(cast(GtkLayoutChild*) __p);
	}

	/**
	 * Retrieves the request mode of @manager.
	 *
	 * Returns: a `GtkSizeRequestMode`
	 */
	public GtkSizeRequestMode getRequestMode()
	{
		return gtk_layout_manager_get_request_mode(gtkLayoutManager);
	}

	/**
	 * Retrieves the `GtkWidget` using the given `GtkLayoutManager`.
	 *
	 * Returns: a `GtkWidget`
	 */
	public Widget getWidget()
	{
		auto __p = gtk_layout_manager_get_widget(gtkLayoutManager);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Queues a resize on the `GtkWidget` using @manager, if any.
	 *
	 * This function should be called by subclasses of `GtkLayoutManager`
	 * in response to changes to their layout management policies.
	 */
	public void layoutChanged()
	{
		gtk_layout_manager_layout_changed(gtkLayoutManager);
	}

	/**
	 * Measures the size of the @widget using @manager, for the
	 * given @orientation and size.
	 *
	 * See the [class@Gtk.Widget] documentation on layout management for
	 * more details.
	 *
	 * Params:
	 *     widget = the `GtkWidget` using @manager
	 *     orientation = the orientation to measure
	 *     forSize = Size for the opposite of @orientation; for instance, if
	 *         the @orientation is %GTK_ORIENTATION_HORIZONTAL, this is the height
	 *         of the widget; if the @orientation is %GTK_ORIENTATION_VERTICAL, this
	 *         is the width of the widget. This allows to measure the height for the
	 *         given width, and the width for the given height. Use -1 if the size
	 *         is not known
	 *     minimum = the minimum size for the given size and
	 *         orientation
	 *     natural = the natural, or preferred size for the
	 *         given size and orientation
	 *     minimumBaseline = the baseline position for the
	 *         minimum size
	 *     naturalBaseline = the baseline position for the
	 *         natural size
	 */
	public void measure(Widget widget, GtkOrientation orientation, int forSize, out int minimum, out int natural, out int minimumBaseline, out int naturalBaseline)
	{
		gtk_layout_manager_measure(gtkLayoutManager, (widget is null) ? null : widget.getWidgetStruct(), orientation, forSize, &minimum, &natural, &minimumBaseline, &naturalBaseline);
	}
}
