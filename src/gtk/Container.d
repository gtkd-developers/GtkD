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
 * outFile = Container
 * strct   = GtkContainer
 * realStrct=
 * clss    = Container
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_container_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.Adjustment
 * 	- glib.ListG
 * 	- gobject.Value
 * structWrap:
 * 	- GList* -> ListG
 * 	- GValue* -> Value
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkContainerClass* -> Container
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Container;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.Adjustment;
private import glib.ListG;
private import gobject.Value;

/**
 * Description
 * A GTK+ user interface is constructed by nesting widgets inside widgets. Container widgets are the inner
 * nodes in the resulting tree of widgets: they contain other widgets. So, for example, you might have a
 * GtkWindow containing a GtkFrame containing a GtkLabel. If you wanted an image instead of a textual label
 * inside the frame, you might replace the GtkLabel widget with a GtkImage widget.
 * There are two major kinds of container widgets in GTK+. Both are subclasses of the abstract GtkContainer
 * base class.
 * The first type of container widget has a single child widget and derives from GtkBin. These containers
 * are decorators, which add some kind of functionality to the child. For example,
 * a GtkButton makes its child into a clickable button; a GtkFrame draws a frame around its child and
 * a GtkWindow places its child widget inside a top-level window.
 * The second type of container can have more than one child; its purpose is to manage
 * layout. This means that these containers assign sizes and positions to their children.
 * For example, a GtkHBox arranges its children in a horizontal row, and a GtkTable arranges the widgets it
 * contains in a two-dimensional grid.
 * To fulfill its task, a layout container must negotiate the size requirements with its parent and its children.
 * This negotiation is carried out in two phases, size requisition and
 * size allocation.
 * Size Requisition
 * The size requisition of a widget is it's desired width and height. This is represented by a GtkRequisition.
 * How a widget determines its desired size depends on the widget. A GtkLabel, for example, requests enough space
 * to display all its text. Container widgets generally base their size request on the requisitions of their
 * children.
 * The size requisition phase of the widget layout process operates top-down. It starts at a top-level widget,
 * typically a GtkWindow. The top-level widget asks its child for its size requisition by calling
 * gtk_widget_size_request(). To determine its requisition, the child asks its own children for their requisitions
 * and so on. Finally, the top-level widget will get a requisition back from its child.
 * <hr>
 * Size Allocation
 * When the top-level widget has determined how much space its child would like to have, the second phase of the
 * size negotiation, size allocation, begins. Depending on its configuration (see gtk_window_set_resizable()), the
 * top-level widget may be able to expand in order to satisfy the size request or it may have to ignore the size
 * request and keep its fixed size. It then tells its child widget how much space it gets by calling
 * gtk_widget_size_allocate(). The child widget divides the space among its children and tells each child how much
 * space it got, and so on. Under normal circumstances, a GtkWindow will always give its child the amount of space
 * the child requested.
 * A child's size allocation is represented by a GtkAllocation. This struct contains not only a width and height,
 * but also a position (i.e. X and Y coordinates), so that containers can tell their children not only how much
 * space they have gotten, but also where they are positioned inside the space available to the container.
 * Widgets are required to honor the size allocation they receive; a size request is only a request, and widgets
 * must be able to cope with any size.
 * <hr>
 * Child properties
 * GtkContainer introduces child
 * properties - these are object properties that are not specific
 * to either the container or the contained widget, but rather to their relation.
 * Typical examples of child properties are the position or pack-type of a widget
 * which is contained in a GtkBox.
 * Use gtk_container_class_install_child_property() to install child properties
 * for a container class and gtk_container_class_find_child_property() or
 * gtk_container_class_list_child_properties() to get information about existing
 * child properties.
 * To set the value of a child property, use gtk_container_child_set_property(),
 * gtk_container_child_set() or gtk_container_child_set_valist().
 * To obtain the value of a child property, use
 * gtk_container_child_get_property(), gtk_container_child_get() or
 * gtk_container_child_get_valist(). To emit notification about child property
 * changes, use gtk_widget_child_notify().
 */
private import gtk.Widget;
public class Container : Widget
{
	
	/** the main Gtk struct */
	protected GtkContainer* gtkContainer;
	
	
	public GtkContainer* getContainerStruct()
	{
		return gtkContainer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkContainer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkContainer* gtkContainer)
	{
		super(cast(GtkWidget*)gtkContainer);
		this.gtkContainer = gtkContainer;
	}
	
	/**
	 * Removes all widgets from the container
	 */
	void removeAll()
	{
		ListG children = new ListG(gtk_container_get_children(getContainerStruct()));
		for ( int i=children.length()-1 ; i>=0 ; i-- )
		{
			gtk_container_remove(getContainerStruct(), cast(GtkWidget*)children.nthData(i));
		}
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(Widget, Container)[] onAddListeners;
	void addOnAdd(void delegate(Widget, Container) dlg)
	{
		if ( !("add" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"add",
			cast(GCallback)&callBackAdd,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["add"] = 1;
		}
		onAddListeners ~= dlg;
	}
	extern(C) static void callBackAdd(GtkContainer* containerStruct, GtkWidget* widget, Container container)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget, Container) dlg ; container.onAddListeners )
		{
			dlg(new Widget(widget), container);
		}
		
		return consumed;
	}
	
	void delegate(Container)[] onCheckResizeListeners;
	void addOnCheckResize(void delegate(Container) dlg)
	{
		if ( !("check-resize" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"check-resize",
			cast(GCallback)&callBackCheckResize,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["check-resize"] = 1;
		}
		onCheckResizeListeners ~= dlg;
	}
	extern(C) static void callBackCheckResize(GtkContainer* containerStruct, Container container)
	{
		bit consumed = false;
		
		foreach ( void delegate(Container) dlg ; container.onCheckResizeListeners )
		{
			dlg(container);
		}
		
		return consumed;
	}
	
	void delegate(Widget, Container)[] onRemoveListeners;
	void addOnRemove(void delegate(Widget, Container) dlg)
	{
		if ( !("remove" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"remove",
			cast(GCallback)&callBackRemove,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["remove"] = 1;
		}
		onRemoveListeners ~= dlg;
	}
	extern(C) static void callBackRemove(GtkContainer* containerStruct, GtkWidget* widget, Container container)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget, Container) dlg ; container.onRemoveListeners )
		{
			dlg(new Widget(widget), container);
		}
		
		return consumed;
	}
	
	void delegate(Widget, Container)[] onSetFocusChildListeners;
	void addOnSetFocusChild(void delegate(Widget, Container) dlg)
	{
		if ( !("set-focus-child" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-focus-child",
			cast(GCallback)&callBackSetFocusChild,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["set-focus-child"] = 1;
		}
		onSetFocusChildListeners ~= dlg;
	}
	extern(C) static void callBackSetFocusChild(GtkContainer* containerStruct, GtkWidget* widget, Container container)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget, Container) dlg ; container.onSetFocusChildListeners )
		{
			dlg(new Widget(widget), container);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	/**
	 * Adds widget to container. Typically used for simple containers
	 * such as GtkWindow, GtkFrame, or GtkButton; for more complicated
	 * layout containers such as GtkBox or GtkTable, this function will
	 * pick default packing parameters that may not be correct. So
	 * consider functions such as gtk_box_pack_start() and
	 * gtk_table_attach() as an alternative to gtk_container_add() in
	 * those cases. A widget may be added to only one container at a time;
	 * you can't place the same widget inside two different containers.
	 * container:
	 *  a GtkContainer
	 * widget:
	 *  a widget to be placed inside container
	 */
	public void add(Widget widget)
	{
		// void gtk_container_add (GtkContainer *container,  GtkWidget *widget);
		gtk_container_add(gtkContainer, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Removes widget from container. widget must be inside container.
	 * Note that container will own a reference to widget, and that this
	 * may be the last reference held; so removing a widget from its
	 * container can destroy that widget. If you want to use widget
	 * again, you need to add a reference to it while it's not inside
	 * a container, using g_object_ref(). If you don't want to use widget
	 * again it's usually more efficient to simply destroy it directly
	 * using gtk_widget_destroy() since this will remove it from the
	 * container and help break any circular reference count cycles.
	 * container:
	 *  a GtkContainer
	 * widget:
	 *  a current child of container
	 */
	public void remove(Widget widget)
	{
		// void gtk_container_remove (GtkContainer *container,  GtkWidget *widget);
		gtk_container_remove(gtkContainer, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Adds widget to container, setting child properties at the same time.
	 * See gtk_container_add() and gtk_container_child_set() for more details.
	 * container:
	 *  a GtkContainer
	 * widget:
	 *  a widget to be placed inside container
	 * first_prop_name:
	 *  the name of the first child property to set
	 * ...:
	 *  a NULL-terminated list of property names and values, starting
	 *  with first_prop_name.
	 */
	public void addWithProperties(Widget widget, char[] firstPropName, ... )
	{
		// void gtk_container_add_with_properties  (GtkContainer *container,  GtkWidget *widget,  const gchar *first_prop_name,  ...);
		gtk_container_add_with_properties(gtkContainer, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(firstPropName));
	}
	
	/**
	 * Returns the resize mode for the container. See
	 * gtk_container_set_resize_mode().
	 * container:
	 *  a GtkContainer
	 * Returns:
	 *  the current resize mode
	 */
	public GtkResizeMode getResizeMode()
	{
		// GtkResizeMode gtk_container_get_resize_mode (GtkContainer *container);
		return gtk_container_get_resize_mode(gtkContainer);
	}
	
	/**
	 * Sets the resize mode for the container.
	 * The resize mode of a container determines whether a resize request
	 * will be passed to the container's parent, queued for later execution
	 * or executed immediately.
	 * container:
	 *  a GtkContainer.
	 * resize_mode:
	 *  the new resize mode.
	 */
	public void setResizeMode(GtkResizeMode resizeMode)
	{
		// void gtk_container_set_resize_mode (GtkContainer *container,  GtkResizeMode resize_mode);
		gtk_container_set_resize_mode(gtkContainer, resizeMode);
	}
	
	/**
	 * container:
	 */
	public void checkResize()
	{
		// void gtk_container_check_resize (GtkContainer *container);
		gtk_container_check_resize(gtkContainer);
	}
	
	/**
	 * Invokes callback on each non-internal child of container. See
	 * gtk_container_forall() for details on what constitutes an
	 * "internal" child. Most applications should use
	 * gtk_container_foreach(), rather than gtk_container_forall().
	 * container:
	 *  a GtkContainer
	 * callback:
	 *  a callback
	 * callback_data:
	 *  callback user data
	 */
	public void foreac(GtkCallback callback, void* callbackData)
	{
		// void gtk_container_foreach (GtkContainer *container,  GtkCallback callback,  gpointer callback_data);
		gtk_container_foreach(gtkContainer, callback, callbackData);
	}
	
	/**
	 * Warning
	 * gtk_container_foreach_full is deprecated and should not be used in newly-written code. Use gtk_container_foreach() instead.
	 * container:
	 * callback:
	 * marshal:
	 * callback_data:
	 * notify:
	 */
	public void foreachFull(GtkCallback callback, GtkCallbackMarshal marshal, void* callbackData, GtkDestroyNotify notify)
	{
		// void gtk_container_foreach_full (GtkContainer *container,  GtkCallback callback,  GtkCallbackMarshal marshal,  gpointer callback_data,  GtkDestroyNotify notify);
		gtk_container_foreach_full(gtkContainer, callback, marshal, callbackData, notify);
	}
	
	
	/**
	 * Returns the container's non-internal children. See
	 * gtk_container_forall() for details on what constitutes an "internal" child.
	 * container:
	 *  a GtkContainer.
	 * Returns:
	 *  a newly-allocated list of the container's non-internal children.
	 */
	public ListG getChildren()
	{
		// GList* gtk_container_get_children (GtkContainer *container);
		return new ListG( gtk_container_get_children(gtkContainer) );
	}
	
	/**
	 * Sets the reallocate_redraws flag of the container to the given value.
	 * Containers requesting reallocation redraws get automatically
	 * redrawn if any of their children changed allocation.
	 * container:
	 *  a GtkContainer.
	 * needs_redraws:
	 *  the new value for the container's reallocate_redraws flag.
	 */
	public void setReallocateRedraws(int needsRedraws)
	{
		// void gtk_container_set_reallocate_redraws  (GtkContainer *container,  gboolean needs_redraws);
		gtk_container_set_reallocate_redraws(gtkContainer, needsRedraws);
	}
	
	/**
	 * container:
	 * child:
	 */
	public void setFocusChild(Widget child)
	{
		// void gtk_container_set_focus_child (GtkContainer *container,  GtkWidget *child);
		gtk_container_set_focus_child(gtkContainer, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Retrieves the vertical focus adjustment for the container. See
	 * gtk_container_set_focus_vadjustment().
	 * container:
	 *  a GtkContainer
	 * Returns:
	 *  the vertical focus adjustment, or NULL if
	 *  none has been set.
	 */
	public Adjustment getFocusVadjustment()
	{
		// GtkAdjustment* gtk_container_get_focus_vadjustment  (GtkContainer *container);
		return new Adjustment( gtk_container_get_focus_vadjustment(gtkContainer) );
	}
	
	/**
	 * Hooks up an adjustment to focus handling in a container, so when a child of the
	 * container is focused, the adjustment is scrolled to show that widget. This function
	 * sets the vertical alignment. See gtk_scrolled_window_get_vadjustment() for a typical
	 * way of obtaining the adjustment and gtk_container_set_focus_hadjustment() for setting
	 * the horizontal adjustment.
	 * The adjustments have to be in pixel units and in the same coordinate system as the
	 * allocation for immediate children of the container.
	 * container:
	 *  a GtkContainer
	 * adjustment:
	 *  an adjustment which should be adjusted when the focus is moved among the
	 *  descendents of container
	 */
	public void setFocusVadjustment(Adjustment adjustment)
	{
		// void gtk_container_set_focus_vadjustment  (GtkContainer *container,  GtkAdjustment *adjustment);
		gtk_container_set_focus_vadjustment(gtkContainer, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Retrieves the horizontal focus adjustment for the container. See
	 * gtk_container_set_focus_hadjustment().
	 * container:
	 *  a GtkContainer
	 * Returns:
	 *  the horizontal focus adjustment, or NULL if
	 *  none has been set.
	 */
	public Adjustment getFocusHadjustment()
	{
		// GtkAdjustment* gtk_container_get_focus_hadjustment  (GtkContainer *container);
		return new Adjustment( gtk_container_get_focus_hadjustment(gtkContainer) );
	}
	
	/**
	 * Hooks up an adjustment to focus handling in a container, so when a child of the
	 * container is focused, the adjustment is scrolled to show that widget. This function
	 * sets the horizontal alignment. See gtk_scrolled_window_get_hadjustment() for a typical
	 * way of obtaining the adjustment and gtk_container_set_focus_vadjustment() for setting
	 * the vertical adjustment.
	 * The adjustments have to be in pixel units and in the same coordinate system as the
	 * allocation for immediate children of the container.
	 * container:
	 *  a GtkContainer
	 * adjustment:
	 *  an adjustment which should be adjusted when the focus is moved among the
	 *  descendents of container
	 */
	public void setFocusHadjustment(Adjustment adjustment)
	{
		// void gtk_container_set_focus_hadjustment  (GtkContainer *container,  GtkAdjustment *adjustment);
		gtk_container_set_focus_hadjustment(gtkContainer, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * container:
	 */
	public void resizeChildren()
	{
		// void gtk_container_resize_children (GtkContainer *container);
		gtk_container_resize_children(gtkContainer);
	}
	
	/**
	 * Returns the type of the children supported by the container.
	 * Note that this may return G_TYPE_NONE to indicate that no more
	 * children can be added, e.g. for a GtkPaned which already has two
	 * children.
	 * container:
	 *  a GtkContainer.
	 * Returns:
	 *  a GType.
	 */
	public GType childType()
	{
		// GType gtk_container_child_type (GtkContainer *container);
		return gtk_container_child_type(gtkContainer);
	}
	
	/**
	 * Gets the values of one or more child properties for child and container.
	 * container:
	 *  a GtkContainer
	 * child:
	 *  a widget which is a child of container
	 * first_prop_name:
	 *  the name of the first property to get
	 * ...:
	 *  a NULL-terminated list of property names and GValue*,
	 *  starting with first_prop_name.
	 */
	public void childGet(Widget child, char[] firstPropName, ... )
	{
		// void gtk_container_child_get (GtkContainer *container,  GtkWidget *child,  const gchar *first_prop_name,  ...);
		gtk_container_child_get(gtkContainer, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(firstPropName));
	}
	
	/**
	 * Sets one or more child properties for child and container.
	 * container:
	 *  a GtkContainer
	 * child:
	 *  a widget which is a child of container
	 * first_prop_name:
	 *  the name of the first property to set
	 * ...:
	 *  a NULL-terminated list of property names and values, starting
	 *  with first_prop_name.
	 */
	public void childSet(Widget child, char[] firstPropName, ... )
	{
		// void gtk_container_child_set (GtkContainer *container,  GtkWidget *child,  const gchar *first_prop_name,  ...);
		gtk_container_child_set(gtkContainer, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(firstPropName));
	}
	
	/**
	 * Gets the value of a child property for child and container.
	 * container:
	 *  a GtkContainer
	 * child:
	 *  a widget which is a child of container
	 * property_name:
	 *  the name of the property to get
	 * value:
	 *  a location to return the value
	 */
	public void childGetProperty(Widget child, char[] propertyName, Value value)
	{
		// void gtk_container_child_get_property  (GtkContainer *container,  GtkWidget *child,  const gchar *property_name,  GValue *value);
		gtk_container_child_get_property(gtkContainer, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets a child property for child and container.
	 * container:
	 *  a GtkContainer
	 * child:
	 *  a widget which is a child of container
	 * property_name:
	 *  the name of the property to set
	 * value:
	 *  the value to set the property to
	 */
	public void childSetProperty(Widget child, char[] propertyName, Value value)
	{
		// void gtk_container_child_set_property  (GtkContainer *container,  GtkWidget *child,  const gchar *property_name,  const GValue *value);
		gtk_container_child_set_property(gtkContainer, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the values of one or more child properties for child and container.
	 * container:
	 *  a GtkContainer
	 * child:
	 *  a widget which is a child of container
	 * first_property_name:
	 *  the name of the first property to get
	 * var_args:
	 *  a NULL-terminated list of property names and GValue*,
	 *  starting with first_prop_name.
	 */
	public void childGetValist(Widget child, char[] firstPropertyName, void* varArgs)
	{
		// void gtk_container_child_get_valist (GtkContainer *container,  GtkWidget *child,  const gchar *first_property_name,  va_list var_args);
		gtk_container_child_get_valist(gtkContainer, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Sets one or more child properties for child and container.
	 * container:
	 *  a GtkContainer
	 * child:
	 *  a widget which is a child of container
	 * first_property_name:
	 *  the name of the first property to set
	 * var_args:
	 *  a NULL-terminated list of property names and values, starting
	 *  with first_prop_name.
	 */
	public void childSetValist(Widget child, char[] firstPropertyName, void* varArgs)
	{
		// void gtk_container_child_set_valist (GtkContainer *container,  GtkWidget *child,  const gchar *first_property_name,  va_list var_args);
		gtk_container_child_set_valist(gtkContainer, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Invokes callback on each child of container, including children
	 * that are considered "internal" (implementation details of the
	 * container). "Internal" children generally weren't added by the user
	 * of the container, but were added by the container implementation
	 * itself. Most applications should use gtk_container_foreach(),
	 * rather than gtk_container_forall().
	 * container:
	 *  a GtkContainer
	 * callback:
	 *  a callback
	 * callback_data:
	 *  callback user data
	 */
	public void forall(GtkCallback callback, void* callbackData)
	{
		// void gtk_container_forall (GtkContainer *container,  GtkCallback callback,  gpointer callback_data);
		gtk_container_forall(gtkContainer, callback, callbackData);
	}
	
	/**
	 * Retrieves the border width of the container. See
	 * gtk_container_set_border_width().
	 * container:
	 *  a GtkContainer
	 * Returns:
	 *  the current border width
	 */
	public uint getBorderWidth()
	{
		// guint gtk_container_get_border_width (GtkContainer *container);
		return gtk_container_get_border_width(gtkContainer);
	}
	
	/**
	 * Sets the border width of the container.
	 * The border width of a container is the amount of space to leave
	 * around the outside of the container. The only exception to this is
	 * GtkWindow; because toplevel windows can't leave space outside,
	 * they leave the space inside. The border is added on all sides of
	 * the container. To add space to only one side, one approach is to
	 * create a GtkAlignment widget, call gtk_widget_set_usize() to give
	 * it a size, and place it on the side of the container as a spacer.
	 * container:
	 *  a GtkContainer
	 * border_width:
	 *  amount of blank space to leave outside the container.
	 *  Valid values are in the range 0-65535 pixels.
	 */
	public void setBorderWidth(uint borderWidth)
	{
		// void gtk_container_set_border_width (GtkContainer *container,  guint border_width);
		gtk_container_set_border_width(gtkContainer, borderWidth);
	}
	
	/**
	 * When a container receives an expose event, it must send synthetic
	 * expose events to all children that don't have their own GdkWindows.
	 * This function provides a convenient way of doing this. A container,
	 * when it receives an expose event, calls gtk_container_propagate_expose()
	 * once for each child, passing in the event the container received.
	 * gtk_container_propagate_expose() takes care of deciding whether
	 * an expose event needs to be sent to the child, intersecting
	 * the event's area with the child area, and sending the event.
	 * In most cases, a container can simply either simply inherit the
	 * ::expose implementation from GtkContainer, or, do some drawing
	 * and then chain to the ::expose implementation from GtkContainer.
	 * container:
	 *  a GtkContainer
	 * child:
	 *  a child of container
	 * event:
	 *  a expose event sent to container
	 */
	public void propagateExpose(Widget child, GdkEventExpose* event)
	{
		// void gtk_container_propagate_expose (GtkContainer *container,  GtkWidget *child,  GdkEventExpose *event);
		gtk_container_propagate_expose(gtkContainer, (child is null) ? null : child.getWidgetStruct(), event);
	}
	
	/**
	 * Retrieves the focus chain of the container, if one has been
	 * set explicitly. If no focus chain has been explicitly
	 * set, GTK+ computes the focus chain based on the positions
	 * of the children. In that case, GTK+ stores NULL in
	 * focusable_widgets and returns FALSE.
	 * container:
	 *  a GtkContainer
	 * focusable_widgets:
	 *  location to store the focus chain of the
	 *  container, or NULL. You should free this list
	 *  using g_list_free() when you are done with it, however
	 *  no additional reference count is added to the
	 *  individual widgets in the focus chain.
	 * Returns:
	 *  TRUE if the focus chain of the container
	 * has been set explicitly.
	 */
	public int getFocusChain(GList** focusableWidgets)
	{
		// gboolean gtk_container_get_focus_chain (GtkContainer *container,  GList **focusable_widgets);
		return gtk_container_get_focus_chain(gtkContainer, focusableWidgets);
	}
	
	/**
	 * Sets a focus chain, overriding the one computed automatically by GTK+.
	 * In principle each widget in the chain should be a descendant of the
	 * container, but this is not enforced by this method, since it's allowed
	 * to set the focus chain before you pack the widgets, or have a widget
	 * in the chain that isn't always packed. The necessary checks are done
	 * when the focus chain is actually traversed.
	 * container:
	 *  a GtkContainer.
	 * focusable_widgets:
	 *  the new focus chain.
	 */
	public void setFocusChain(ListG focusableWidgets)
	{
		// void gtk_container_set_focus_chain (GtkContainer *container,  GList *focusable_widgets);
		gtk_container_set_focus_chain(gtkContainer, (focusableWidgets is null) ? null : focusableWidgets.getListGStruct());
	}
	
	/**
	 * Removes a focus chain explicitly set with gtk_container_set_focus_chain().
	 * container:
	 *  a GtkContainer.
	 */
	public void unsetFocusChain()
	{
		// void gtk_container_unset_focus_chain (GtkContainer *container);
		gtk_container_unset_focus_chain(gtkContainer);
	}
	
	/**
	 * Finds a child property of a container class by name.
	 * cclass:
	 *  a GtkContainerClass
	 * property_name:
	 *  the name of the child property to find
	 * Returns:
	 *  the GParamSpec of the child property or NULL if class has no
	 *  child property with that name.
	 */
	public static GParamSpec* classFindChildProperty(GObjectClass* cclass, char[] propertyName)
	{
		// GParamSpec* gtk_container_class_find_child_property  (GObjectClass *cclass,  const gchar *property_name);
		return gtk_container_class_find_child_property(cclass, Str.toStringz(propertyName));
	}
	
	/**
	 * Installs a child property on a container class.
	 * cclass:
	 *  a GtkContainerClass
	 * property_id:
	 *  the id for the property
	 * pspec:
	 *  the GParamSpec for the property
	 */
	public static void classInstallChildProperty(Container cclass, uint propertyId, GParamSpec* pspec)
	{
		// void gtk_container_class_install_child_property  (GtkContainerClass *cclass,  guint property_id,  GParamSpec *pspec);
		gtk_container_class_install_child_property((cclass is null) ? null : cclass.getContainerStruct(), propertyId, pspec);
	}
	
	/**
	 * Returns all child properties of a container class.
	 * cclass:
	 *  a GtkContainerClass
	 * n_properties:
	 *  location to return the number of child properties found
	 * Returns:
	 *  a newly allocated array of GParamSpec*. The array must be
	 *  freed with g_free().
	 * Property Details
	 * The "border-width" property
	 *  "border-width" guint : Read / Write
	 * The width of the empty border outside the containers children.
	 * Allowed values: <= G_MAXINT
	 * Default value: 0
	 */
	public static GParamSpec** classListChildProperties(GObjectClass* cclass, uint* nProperties)
	{
		// GParamSpec** gtk_container_class_list_child_properties  (GObjectClass *cclass,  guint *n_properties);
		return gtk_container_class_list_child_properties(cclass, nProperties);
	}
	
	
	
	
	
}
