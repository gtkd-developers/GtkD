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
 * inFile  = GtkPaned.html
 * outPack = gtk
 * outFile = Paned
 * strct   = GtkPaned
 * realStrct=
 * ctorStrct=
 * clss    = Paned
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- OrientableIF
 * prefixes:
 * 	- gtk_paned_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Window
 * 	- gtk.Widget
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * structWrap:
 * 	- GdkWindow* -> Window
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Paned;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gdk.Window;
private import gtk.Widget;
private import gtk.OrientableIF;
private import gtk.OrientableT;



private import gtk.Container;

/**
 * GtkPaned has two panes, arranged either
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
 * each child inside a GtkFrame with the shadow type set to GTK_SHADOW_IN
 * so that the gutter appears as a ridge. No separator is drawn if one of
 * the children is missing.
 *
 * Each child has two options that can be set, resize and shrink. If
 * resize is true, then when the GtkPaned is resized, that child will
 * expand or shrink along with the paned widget. If shrink is true, then
 * that child can be made smaller than its requisition by the user.
 * Setting shrink to FALSE allows the application to set a minimum size.
 * If resize is false for both children, then this is treated as if
 * resize is true for both children.
 *
 * The application can set the position of the slider as if it were set
 * by the user, by calling gtk_paned_set_position().
 *
 * $(DDOC_COMMENT example)
 */
public class Paned : Container, OrientableIF
{
	
	/** the main Gtk struct */
	protected GtkPaned* gtkPaned;
	
	
	public GtkPaned* getPanedStruct()
	{
		return gtkPaned;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPaned;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPaned* gtkPaned)
	{
		super(cast(GtkContainer*)gtkPaned);
		this.gtkPaned = gtkPaned;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkPaned = cast(GtkPaned*)obj;
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
	int[string] connectedSignals;
	
	bool delegate(Paned)[] onAcceptPositionListeners;
	/**
	 * The ::accept-position signal is a
	 * keybinding signal
	 * which gets emitted to accept the current position of the handle when
	 * moving it using key bindings.
	 * The default binding for this signal is Return or Space.
	 * Since 2.0
	 */
	void addOnAcceptPosition(bool delegate(Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("accept-position" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"accept-position",
			cast(GCallback)&callBackAcceptPosition,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["accept-position"] = 1;
		}
		onAcceptPositionListeners ~= dlg;
	}
	extern(C) static gboolean callBackAcceptPosition(GtkPaned* widgetStruct, Paned _paned)
	{
		foreach ( bool delegate(Paned) dlg ; _paned.onAcceptPositionListeners )
		{
			if ( dlg(_paned) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Paned)[] onCancelPositionListeners;
	/**
	 * The ::cancel-position signal is a
	 * keybinding signal
	 * which gets emitted to cancel moving the position of the handle using key
	 * bindings. The position of the handle will be reset to the value prior to
	 * moving it.
	 * The default binding for this signal is Escape.
	 * Since 2.0
	 */
	void addOnCancelPosition(bool delegate(Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cancel-position" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cancel-position",
			cast(GCallback)&callBackCancelPosition,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cancel-position"] = 1;
		}
		onCancelPositionListeners ~= dlg;
	}
	extern(C) static gboolean callBackCancelPosition(GtkPaned* widgetStruct, Paned _paned)
	{
		foreach ( bool delegate(Paned) dlg ; _paned.onCancelPositionListeners )
		{
			if ( dlg(_paned) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(gboolean, Paned)[] onCycleChildFocusListeners;
	/**
	 * The ::cycle-child-focus signal is a
	 * keybinding signal
	 * which gets emitted to cycle the focus between the children of the paned.
	 * The default binding is f6.
	 * Since 2.0
	 */
	void addOnCycleChildFocus(bool delegate(gboolean, Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cycle-child-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cycle-child-focus",
			cast(GCallback)&callBackCycleChildFocus,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cycle-child-focus"] = 1;
		}
		onCycleChildFocusListeners ~= dlg;
	}
	extern(C) static gboolean callBackCycleChildFocus(GtkPaned* widgetStruct, gboolean reversed, Paned _paned)
	{
		foreach ( bool delegate(gboolean, Paned) dlg ; _paned.onCycleChildFocusListeners )
		{
			if ( dlg(reversed, _paned) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(gboolean, Paned)[] onCycleHandleFocusListeners;
	/**
	 * The ::cycle-handle-focus signal is a
	 * keybinding signal
	 * which gets emitted to cycle whether the paned should grab focus to allow
	 * the user to change position of the handle by using key bindings.
	 * The default binding for this signal is f8.
	 * Since 2.0
	 */
	void addOnCycleHandleFocus(bool delegate(gboolean, Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cycle-handle-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cycle-handle-focus",
			cast(GCallback)&callBackCycleHandleFocus,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cycle-handle-focus"] = 1;
		}
		onCycleHandleFocusListeners ~= dlg;
	}
	extern(C) static gboolean callBackCycleHandleFocus(GtkPaned* widgetStruct, gboolean reversed, Paned _paned)
	{
		foreach ( bool delegate(gboolean, Paned) dlg ; _paned.onCycleHandleFocusListeners )
		{
			if ( dlg(reversed, _paned) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(GtkScrollType, Paned)[] onMoveHandleListeners;
	/**
	 * The ::move-handle signal is a
	 * keybinding signal
	 * which gets emitted to move the handle when the user is using key bindings
	 * to move it.
	 * Since 2.0
	 */
	void addOnMoveHandle(bool delegate(GtkScrollType, Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-handle" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-handle",
			cast(GCallback)&callBackMoveHandle,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-handle"] = 1;
		}
		onMoveHandleListeners ~= dlg;
	}
	extern(C) static gboolean callBackMoveHandle(GtkPaned* widgetStruct, GtkScrollType scrollType, Paned _paned)
	{
		foreach ( bool delegate(GtkScrollType, Paned) dlg ; _paned.onMoveHandleListeners )
		{
			if ( dlg(scrollType, _paned) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(Paned)[] onToggleHandleFocusListeners;
	/**
	 * The ::toggle-handle-focus is a
	 * keybinding signal
	 * which gets emitted to accept the current position of the handle and then
	 * move focus to the next widget in the focus chain.
	 * The default binding is Tab.
	 * Since 2.0
	 */
	void addOnToggleHandleFocus(bool delegate(Paned) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toggle-handle-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-handle-focus",
			cast(GCallback)&callBackToggleHandleFocus,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toggle-handle-focus"] = 1;
		}
		onToggleHandleFocusListeners ~= dlg;
	}
	extern(C) static gboolean callBackToggleHandleFocus(GtkPaned* widgetStruct, Paned _paned)
	{
		foreach ( bool delegate(Paned) dlg ; _paned.onToggleHandleFocusListeners )
		{
			if ( dlg(_paned) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new GtkPaned widget.
	 * Params:
	 * orientation = the paned's orientation.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GtkOrientation orientation)
	{
		// GtkWidget * gtk_paned_new (GtkOrientation orientation);
		auto p = gtk_paned_new(orientation);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_paned_new(orientation)");
		}
		this(cast(GtkPaned*) p);
	}
	
	/**
	 * Adds a child to the top or left pane with default parameters. This is
	 * equivalent to
	 * gtk_paned_pack1 (paned, child, FALSE, TRUE).
	 * Params:
	 * child = the child to add
	 */
	public void add1(Widget child)
	{
		// void gtk_paned_add1 (GtkPaned *paned,  GtkWidget *child);
		gtk_paned_add1(gtkPaned, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Adds a child to the bottom or right pane with default parameters. This
	 * is equivalent to
	 * gtk_paned_pack2 (paned, child, TRUE, TRUE).
	 * Params:
	 * child = the child to add
	 */
	public void add2(Widget child)
	{
		// void gtk_paned_add2 (GtkPaned *paned,  GtkWidget *child);
		gtk_paned_add2(gtkPaned, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Adds a child to the top or left pane.
	 * Params:
	 * child = the child to add
	 * resize = should this child expand when the paned widget is resized.
	 * shrink = can this child be made smaller than its requisition.
	 */
	public void pack1(Widget child, int resize, int shrink)
	{
		// void gtk_paned_pack1 (GtkPaned *paned,  GtkWidget *child,  gboolean resize,  gboolean shrink);
		gtk_paned_pack1(gtkPaned, (child is null) ? null : child.getWidgetStruct(), resize, shrink);
	}
	
	/**
	 * Adds a child to the bottom or right pane.
	 * Params:
	 * child = the child to add
	 * resize = should this child expand when the paned widget is resized.
	 * shrink = can this child be made smaller than its requisition.
	 */
	public void pack2(Widget child, int resize, int shrink)
	{
		// void gtk_paned_pack2 (GtkPaned *paned,  GtkWidget *child,  gboolean resize,  gboolean shrink);
		gtk_paned_pack2(gtkPaned, (child is null) ? null : child.getWidgetStruct(), resize, shrink);
	}
	
	/**
	 * Obtains the first child of the paned widget.
	 * Since 2.4
	 * Returns: first child, or NULL if it is not set. [transfer none]
	 */
	public Widget getChild1()
	{
		// GtkWidget * gtk_paned_get_child1 (GtkPaned *paned);
		auto p = gtk_paned_get_child1(gtkPaned);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Obtains the second child of the paned widget.
	 * Since 2.4
	 * Returns: second child, or NULL if it is not set. [transfer none]
	 */
	public Widget getChild2()
	{
		// GtkWidget * gtk_paned_get_child2 (GtkPaned *paned);
		auto p = gtk_paned_get_child2(gtkPaned);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Sets the position of the divider between the two panes.
	 * Params:
	 * position = pixel position of divider, a negative value means that the position
	 * is unset.
	 */
	public void setPosition(int position)
	{
		// void gtk_paned_set_position (GtkPaned *paned,  gint position);
		gtk_paned_set_position(gtkPaned, position);
	}
	
	/**
	 * Obtains the position of the divider between the two panes.
	 * Returns: position of the divider
	 */
	public int getPosition()
	{
		// gint gtk_paned_get_position (GtkPaned *paned);
		return gtk_paned_get_position(gtkPaned);
	}
	
	/**
	 * Returns the GdkWindow of the handle. This function is
	 * useful when handling button or motion events because it
	 * enables the callback to distinguish between the window
	 * of the paned, a child and the handle.
	 * Since 2.20
	 * Returns: the paned's handle window. [transfer none]
	 */
	public Window getHandleWindow()
	{
		// GdkWindow * gtk_paned_get_handle_window (GtkPaned *paned);
		auto p = gtk_paned_get_handle_window(gtkPaned);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
}
