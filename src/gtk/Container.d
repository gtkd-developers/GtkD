/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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
 * inFile  = GtkContainer.html
 * outPack = gtk
 * outFile = Container
 * strct   = GtkContainer
 * realStrct=
 * ctorStrct=
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
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Adjustment
 * 	- glib.ListG
 * 	- gobject.Value
 * 	- gobject.ParamSpec
 * structWrap:
 * 	- GList* -> ListG
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkContainerClass* -> Container
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Container;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Adjustment;
private import glib.ListG;
private import gobject.Value;
private import gobject.ParamSpec;



private import gtk.Widget;

/**
 * Description
 * A GTK+ user interface is constructed by nesting widgets inside widgets.
 * Container widgets are the inner nodes in the resulting tree of widgets:
 * they contain other widgets. So, for example, you might have a GtkWindow
 * containing a GtkFrame containing a GtkLabel. If you wanted an image instead
 * of a textual label inside the frame, you might replace the GtkLabel widget
 * with a GtkImage widget.
 * There are two major kinds of container widgets in GTK+. Both are subclasses
 * of the abstract GtkContainer base class.
 * The first type of container widget has a single child widget and derives
 * from GtkBin. These containers are decorators, which
 * add some kind of functionality to the child. For example, a GtkButton makes
 * its child into a clickable button; a GtkFrame draws a frame around its child
 * and a GtkWindow places its child widget inside a top-level window.
 * The second type of container can have more than one child; its purpose is to
 * manage layout. This means that these containers assign
 * sizes and positions to their children. For example, a GtkHBox arranges its
 * children in a horizontal row, and a GtkTable arranges the widgets it contains
 * in a two-dimensional grid.
 * To fulfill its task, a layout container must negotiate the size requirements
 * with its parent and its children. This negotiation is carried out in two
 * phases, size requisition and size
 * allocation.
 * Size Requisition
 * The size requisition of a widget is it's desired width and height.
 * This is represented by a GtkRequisition.
 * How a widget determines its desired size depends on the widget.
 * A GtkLabel, for example, requests enough space to display all its text.
 * Container widgets generally base their size request on the requisitions
 * of their children.
 * The size requisition phase of the widget layout process operates top-down.
 * It starts at a top-level widget, typically a GtkWindow. The top-level widget
 * asks its child for its size requisition by calling gtk_widget_size_request().
 * To determine its requisition, the child asks its own children for their
 * requisitions and so on. Finally, the top-level widget will get a requisition
 * back from its child.
 * <hr>
 * Size Allocation
 * When the top-level widget has determined how much space its child would like
 * to have, the second phase of the size negotiation, size allocation, begins.
 * Depending on its configuration (see gtk_window_set_resizable()), the top-level
 * widget may be able to expand in order to satisfy the size request or it may
 * have to ignore the size request and keep its fixed size. It then tells its
 * child widget how much space it gets by calling gtk_widget_size_allocate().
 * The child widget divides the space among its children and tells each child
 * how much space it got, and so on. Under normal circumstances, a GtkWindow
 * will always give its child the amount of space the child requested.
 * A child's size allocation is represented by a GtkAllocation. This struct
 * contains not only a width and height, but also a position (i.e. X and Y
 * coordinates), so that containers can tell their children not only how much
 * space they have gotten, but also where they are positioned inside the space
 * available to the container.
 * Widgets are required to honor the size allocation they receive; a size
 * request is only a request, and widgets must be able to cope with any size.
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
 * <hr>
 * GtkContainer as GtkBuildable
 * The GtkContainer implementation of the GtkBuildable interface
 * supports a <packing> element for children, which can
 * contain multiple <property> elements that specify
 * child properties for the child.
 * $(DDOC_COMMENT example)
 * Since 2.16, child properties can also be marked as translatable using
 * the same "translatable", "comments" and "context" attributes that are used
 * for regular properties.
 */
public class Container : Widget
{
	
	/** the main Gtk struct */
	protected GtkContainer* gtkContainer;
	
	
	public GtkContainer* getContainerStruct()
	{
		return gtkContainer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkContainer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkContainer* gtkContainer)
	{
		if(gtkContainer is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkContainer);
		if( ptr !is null )
		{
			this = cast(Container)ptr;
			return;
		}
		super(cast(GtkWidget*)gtkContainer);
		this.gtkContainer = gtkContainer;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkContainer = cast(GtkContainer*)obj;
	}
	
	/**
	 * Removes all widgets from the container
	 */
	void removeAll()
	{
		GList* gList = gtk_container_get_children(getContainerStruct());
		if ( gList !is null )
		{
			ListG children = new ListG(gList);
			for ( int i=children.length()-1 ; i>=0 ; i-- )
			{
				gtk_container_remove(getContainerStruct(), cast(GtkWidget*)children.nthData(i));
			}
		}
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Widget, Container)[] onAddListeners;
	/**
	 */
	void addOnAdd(void delegate(Widget, Container) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("add" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"add",
			cast(GCallback)&callBackAdd,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["add"] = 1;
		}
		onAddListeners ~= dlg;
	}
	extern(C) static void callBackAdd(GtkContainer* containerStruct, GtkWidget* widget, Container container)
	{
		foreach ( void delegate(Widget, Container) dlg ; container.onAddListeners )
		{
			dlg(new Widget(widget), container);
		}
	}
	
	void delegate(Container)[] onCheckResizeListeners;
	/**
	 */
	void addOnCheckResize(void delegate(Container) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("check-resize" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"check-resize",
			cast(GCallback)&callBackCheckResize,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["check-resize"] = 1;
		}
		onCheckResizeListeners ~= dlg;
	}
	extern(C) static void callBackCheckResize(GtkContainer* containerStruct, Container container)
	{
		foreach ( void delegate(Container) dlg ; container.onCheckResizeListeners )
		{
			dlg(container);
		}
	}
	
	void delegate(Widget, Container)[] onRemoveListeners;
	/**
	 */
	void addOnRemove(void delegate(Widget, Container) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("remove" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"remove",
			cast(GCallback)&callBackRemove,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["remove"] = 1;
		}
		onRemoveListeners ~= dlg;
	}
	extern(C) static void callBackRemove(GtkContainer* containerStruct, GtkWidget* widget, Container container)
	{
		foreach ( void delegate(Widget, Container) dlg ; container.onRemoveListeners )
		{
			dlg(new Widget(widget), container);
		}
	}
	
	void delegate(Widget, Container)[] onSetFocusChildListeners;
	/**
	 */
	void addOnSetFocusChild(void delegate(Widget, Container) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("set-focus-child" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-focus-child",
			cast(GCallback)&callBackSetFocusChild,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["set-focus-child"] = 1;
		}
		onSetFocusChildListeners ~= dlg;
	}
	extern(C) static void callBackSetFocusChild(GtkContainer* containerStruct, GtkWidget* widget, Container container)
	{
		foreach ( void delegate(Widget, Container) dlg ; container.onSetFocusChildListeners )
		{
			dlg(new Widget(widget), container);
		}
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
	 * Params:
	 * widget = a widget to be placed inside container
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
	 * Params:
	 * widget = a current child of container
	 */
	public void remove(Widget widget)
	{
		// void gtk_container_remove (GtkContainer *container,  GtkWidget *widget);
		gtk_container_remove(gtkContainer, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Returns the resize mode for the container. See
	 * gtk_container_set_resize_mode().
	 * Returns: the current resize mode
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
	 * Params:
	 * resizeMode = the new resize mode
	 */
	public void setResizeMode(GtkResizeMode resizeMode)
	{
		// void gtk_container_set_resize_mode (GtkContainer *container,  GtkResizeMode resize_mode);
		gtk_container_set_resize_mode(gtkContainer, resizeMode);
	}
	
	/**
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
	 * Params:
	 * callback = a callback
	 * callbackData = callback user data
	 */
	public void foreac(GtkCallback callback, void* callbackData)
	{
		// void gtk_container_foreach (GtkContainer *container,  GtkCallback callback,  gpointer callback_data);
		gtk_container_foreach(gtkContainer, callback, callbackData);
	}
	
	/**
	 * Warning
	 * gtk_container_foreach_full is deprecated and should not be used in newly-written code. Use gtk_container_foreach() instead.
	 * Params:
	 */
	public void foreachFull(GtkCallback callback, GtkCallbackMarshal marshal, void* callbackData, GDestroyNotify notify)
	{
		// void gtk_container_foreach_full (GtkContainer *container,  GtkCallback callback,  GtkCallbackMarshal marshal,  gpointer callback_data,  GDestroyNotify notify);
		gtk_container_foreach_full(gtkContainer, callback, marshal, callbackData, notify);
	}
	
	/**
	 * Returns the container's non-internal children. See
	 * gtk_container_forall() for details on what constitutes an "internal" child.
	 * Returns: a newly-allocated list of the container's non-internal children. [element-type GtkWidget][transfer container GtkWidget]
	 */
	public ListG getChildren()
	{
		// GList* gtk_container_get_children (GtkContainer *container);
		auto p = gtk_container_get_children(gtkContainer);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Sets the reallocate_redraws flag of the container to the given value.
	 * Containers requesting reallocation redraws get automatically
	 * redrawn if any of their children changed allocation.
	 * Params:
	 * needsRedraws = the new value for the container's reallocate_redraws flag
	 */
	public void setReallocateRedraws(int needsRedraws)
	{
		// void gtk_container_set_reallocate_redraws  (GtkContainer *container,  gboolean needs_redraws);
		gtk_container_set_reallocate_redraws(gtkContainer, needsRedraws);
	}
	
	/**
	 * Returns the current focus child widget inside container. This is not the
	 * currently focused widget. That can be obtained by calling
	 * gtk_window_get_focus().
	 * Since 2.14
	 * Returns: The child widget which will recieve the focus inside container when the conatiner is focussed, or NULL if none is set.
	 */
	public Widget getFocusChild()
	{
		// GtkWidget * gtk_container_get_focus_child (GtkContainer *container);
		auto p = gtk_container_get_focus_child(gtkContainer);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Sets, or unsets if child is NULL, the focused child of container.
	 * This function emits the GtkContainer::set_focus_child signal of
	 * container. Implementations of GtkContainer can override the
	 * default behaviour by overriding the class closure of this signal.
	 * This is function is mostly meant to be used by widgets. Applications can use
	 * gtk_widget_grab_focus() to manualy set the focus to a specific widget.
	 * Params:
	 * child = a GtkWidget, or NULL. [allow-none]
	 */
	public void setFocusChild(Widget child)
	{
		// void gtk_container_set_focus_child (GtkContainer *container,  GtkWidget *child);
		gtk_container_set_focus_child(gtkContainer, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Retrieves the vertical focus adjustment for the container. See
	 * gtk_container_set_focus_vadjustment().
	 * Returns: the vertical focus adjustment, or NULL if none has been set. [transfer none]
	 */
	public Adjustment getFocusVadjustment()
	{
		// GtkAdjustment * gtk_container_get_focus_vadjustment (GtkContainer *container);
		auto p = gtk_container_get_focus_vadjustment(gtkContainer);
		if(p is null)
		{
			return null;
		}
		return new Adjustment(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Hooks up an adjustment to focus handling in a container, so when a
	 * child of the container is focused, the adjustment is scrolled to
	 * show that widget. This function sets the vertical alignment. See
	 * gtk_scrolled_window_get_vadjustment() for a typical way of obtaining
	 * the adjustment and gtk_container_set_focus_hadjustment() for setting
	 * the horizontal adjustment.
	 * The adjustments have to be in pixel units and in the same coordinate
	 * system as the allocation for immediate children of the container.
	 * Params:
	 * adjustment = an adjustment which should be adjusted when the focus
	 *  is moved among the descendents of container
	 */
	public void setFocusVadjustment(Adjustment adjustment)
	{
		// void gtk_container_set_focus_vadjustment (GtkContainer *container,  GtkAdjustment *adjustment);
		gtk_container_set_focus_vadjustment(gtkContainer, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Retrieves the horizontal focus adjustment for the container. See
	 * gtk_container_set_focus_hadjustment().
	 * Returns: the horizontal focus adjustment, or NULL if none has been set. [transfer none]
	 */
	public Adjustment getFocusHadjustment()
	{
		// GtkAdjustment * gtk_container_get_focus_hadjustment (GtkContainer *container);
		auto p = gtk_container_get_focus_hadjustment(gtkContainer);
		if(p is null)
		{
			return null;
		}
		return new Adjustment(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Hooks up an adjustment to focus handling in a container, so when a child
	 * of the container is focused, the adjustment is scrolled to show that
	 * widget. This function sets the horizontal alignment.
	 * See gtk_scrolled_window_get_hadjustment() for a typical way of obtaining
	 * the adjustment and gtk_container_set_focus_vadjustment() for setting
	 * the vertical adjustment.
	 * The adjustments have to be in pixel units and in the same coordinate
	 * system as the allocation for immediate children of the container.
	 * Params:
	 * adjustment = an adjustment which should be adjusted when the focus is
	 *  moved among the descendents of container
	 */
	public void setFocusHadjustment(Adjustment adjustment)
	{
		// void gtk_container_set_focus_hadjustment (GtkContainer *container,  GtkAdjustment *adjustment);
		gtk_container_set_focus_hadjustment(gtkContainer, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
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
	 * Returns: a GType.
	 */
	public GType childType()
	{
		// GType gtk_container_child_type (GtkContainer *container);
		return gtk_container_child_type(gtkContainer);
	}
	
	/**
	 * Gets the value of a child property for child and container.
	 * Params:
	 * child = a widget which is a child of container
	 * propertyName = the name of the property to get
	 * value = a location to return the value
	 */
	public void childGetProperty(Widget child, string propertyName, Value value)
	{
		// void gtk_container_child_get_property (GtkContainer *container,  GtkWidget *child,  const gchar *property_name,  GValue *value);
		gtk_container_child_get_property(gtkContainer, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets a child property for child and container.
	 * Params:
	 * child = a widget which is a child of container
	 * propertyName = the name of the property to set
	 * value = the value to set the property to
	 */
	public void childSetProperty(Widget child, string propertyName, Value value)
	{
		// void gtk_container_child_set_property (GtkContainer *container,  GtkWidget *child,  const gchar *property_name,  const GValue *value);
		gtk_container_child_set_property(gtkContainer, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the values of one or more child properties for child and container.
	 * Params:
	 * child = a widget which is a child of container
	 * firstPropertyName = the name of the first property to get
	 * varArgs = return location for the first property, followed
	 *  optionally by more name/return location pairs, followed by NULL
	 */
	public void childGetValist(Widget child, string firstPropertyName, void* varArgs)
	{
		// void gtk_container_child_get_valist (GtkContainer *container,  GtkWidget *child,  const gchar *first_property_name,  va_list var_args);
		gtk_container_child_get_valist(gtkContainer, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Sets one or more child properties for child and container.
	 * Params:
	 * child = a widget which is a child of container
	 * firstPropertyName = the name of the first property to set
	 * varArgs = a NULL-terminated list of property names and values, starting
	 *  with first_prop_name
	 */
	public void childSetValist(Widget child, string firstPropertyName, void* varArgs)
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
	 * Params:
	 * callback = a callback
	 * callbackData = callback user data
	 */
	public void forall(GtkCallback callback, void* callbackData)
	{
		// void gtk_container_forall (GtkContainer *container,  GtkCallback callback,  gpointer callback_data);
		gtk_container_forall(gtkContainer, callback, callbackData);
	}
	
	/**
	 * Retrieves the border width of the container. See
	 * gtk_container_set_border_width().
	 * Returns: the current border width
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
	 * create a GtkAlignment widget, call gtk_widget_set_size_request()
	 * to give it a size, and place it on the side of the container as
	 * a spacer.
	 * Params:
	 * borderWidth = amount of blank space to leave outside
	 *  the container. Valid values are in the range 0-65535 pixels.
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
	 * "expose" implementation from GtkContainer, or, do some drawing
	 * and then chain to the ::expose implementation from GtkContainer.
	 * Params:
	 * child = a child of container
	 * event = a expose event sent to container
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
	 * Params:
	 * focusableWidgets = location
	 *  to store the focus chain of the
	 *  container, or NULL. You should free this list
	 *  using g_list_free() when you are done with it, however
	 *  no additional reference count is added to the
	 *  individual widgets in the focus chain. [element-type GtkWidget][out GtkWidget][transfer container GtkWidget]
	 * Returns: TRUE if the focus chain of the container has been set explicitly.
	 */
	public int getFocusChain(out ListG focusableWidgets)
	{
		// gboolean gtk_container_get_focus_chain (GtkContainer *container,  GList **focusable_widgets);
		GList* outfocusableWidgets = null;
		
		auto p = gtk_container_get_focus_chain(gtkContainer, &outfocusableWidgets);
		
		focusableWidgets = new ListG(outfocusableWidgets);
		return p;
	}
	
	/**
	 * Sets a focus chain, overriding the one computed automatically by GTK+.
	 * In principle each widget in the chain should be a descendant of the
	 * container, but this is not enforced by this method, since it's allowed
	 * to set the focus chain before you pack the widgets, or have a widget
	 * in the chain that isn't always packed. The necessary checks are done
	 * when the focus chain is actually traversed.
	 * Params:
	 * focusableWidgets = the new focus chain. [transfer none][element-type GtkWidget]
	 */
	public void setFocusChain(ListG focusableWidgets)
	{
		// void gtk_container_set_focus_chain (GtkContainer *container,  GList *focusable_widgets);
		gtk_container_set_focus_chain(gtkContainer, (focusableWidgets is null) ? null : focusableWidgets.getListGStruct());
	}
	
	/**
	 * Removes a focus chain explicitly set with gtk_container_set_focus_chain().
	 */
	public void unsetFocusChain()
	{
		// void gtk_container_unset_focus_chain (GtkContainer *container);
		gtk_container_unset_focus_chain(gtkContainer);
	}
	
	/**
	 * Finds a child property of a container class by name.
	 * Params:
	 * cclass = a GtkContainerClass
	 * propertyName = the name of the child property to find
	 * Returns: the GParamSpec of the child property or NULL if class has no child property with that name. [allow-none]
	 */
	public static ParamSpec classFindChildProperty(GObjectClass* cclass, string propertyName)
	{
		// GParamSpec* gtk_container_class_find_child_property  (GObjectClass *cclass,  const gchar *property_name);
		auto p = gtk_container_class_find_child_property(cclass, Str.toStringz(propertyName));
		if(p is null)
		{
			return null;
		}
		return new ParamSpec(cast(GParamSpec*) p);
	}
	
	/**
	 * Installs a child property on a container class.
	 * Params:
	 * cclass = a GtkContainerClass
	 * propertyId = the id for the property
	 * pspec = the GParamSpec for the property
	 */
	public static void classInstallChildProperty(Container cclass, uint propertyId, ParamSpec pspec)
	{
		// void gtk_container_class_install_child_property  (GtkContainerClass *cclass,  guint property_id,  GParamSpec *pspec);
		gtk_container_class_install_child_property((cclass is null) ? null : cclass.getContainerStruct(), propertyId, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Returns all child properties of a container class.
	 * Params:
	 * cclass = a GtkContainerClass
	 * Returns: a newly allocated NULL-terminated array of GParamSpec*. The array must be freed with g_free().
	 */
	public static ParamSpec[] classListChildProperties(GObjectClass* cclass)
	{
		// GParamSpec** gtk_container_class_list_child_properties  (GObjectClass *cclass,  guint *n_properties);
		uint nProperties;
		auto p = gtk_container_class_list_child_properties(cclass, &nProperties);
		if(p is null)
		{
			return null;
		}
		
		ParamSpec[] arr = new ParamSpec[nProperties];
		for(int i = 0; i < nProperties; i++)
		{
			arr[i] = new ParamSpec(cast(GParamSpec*) p[i]);
		}
		
		return arr;
	}
}
