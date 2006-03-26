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
 * outFile = Paned
 * strct   = GtkPaned
 * realStrct=
 * clss    = Paned
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_paned_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Paned;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.Widget;

/**
 * Description
 * GtkPaned is the base class for widgets with two panes,
 * arranged either horizontally (GtkHPaned) or
 * vertically (GtkVPaned). Child widgets are
 * added to the panes of the widget with
 * gtk_paned_pack1() and gtk_paned_pack2(). The division
 * beween the two children is set by default from the
 * size requests of the children, but it can be adjusted
 * by the user.
 * A paned widget draws a separator between the two
 * child widgets and a small handle that the user
 * can drag to adjust the division. It does not
 * draw any relief around the children or around
 * the separator. (The space in which the separator
 * is called the gutter.) Often, it is useful
 * to put each child inside a GtkFrame with the
 * shadow type set to GTK_SHADOW_IN so that the
 * gutter appears as a ridge.
 * Each child has two options that can be set,
 * resize and shrink. If resize is true, then when the
 * GtkPaned is resized, that child will expand
 * or shrink along with the paned widget. If shrink
 * is true, then when that child can be made smaller
 * than its requisition by the user. Setting shrink
 * to FALSE allows the application to set a minimum
 * size. If resize is false for both children, then
 * this is treated as if resize is true for both
 * children.
 * The application can set the position of the slider
 * as if it were set by the user, by calling
 * gtk_paned_set_position().
 * Example1.Creating a paned widget with minimum sizes.
 * GtkWidget *hpaned = gtk_hpaned_new ();
 * GtkWidget *frame1 = gtk_frame_new (NULL);
 * GtkWidget *frame2 = gtk_frame_new (NULL);
 * gtk_frame_set_shadow_type (GTK_FRAME (frame1), GTK_SHADOW_IN);
 * gtk_frame_set_shadow_type (GTK_FRAME (frame2), GTK_SHADOW_IN);
 * gtk_widget_set_size_request (hpaned, 200 + GTK_PANED (hpaned)->gutter_size, -1);
 * gtk_paned_pack1 (GTK_PANED (hpaned), frame1, TRUE, FALSE);
 * gtk_widget_set_size_request (frame1, 50, -1);
 * gtk_paned_pack2 (GTK_PANED (hpaned), frame2, FALSE, FALSE);
 * gtk_widget_set_size_request (frame2, 50, -1);
 */
private import gtk.Container;
public class Paned : Container
{
	
	/** the main Gtk struct */
	protected GtkPaned* gtkPaned;
	
	
	public GtkPaned* getPanedStruct()
	{
		return gtkPaned;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	gboolean delegate(Paned)[] onAcceptPositionListeners;
	void addOnAcceptPosition(gboolean delegate(Paned) dlg)
	{
		if ( !("accept-position" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"accept-position",
			cast(GCallback)&callBackAcceptPosition,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["accept-position"] = 1;
		}
		onAcceptPositionListeners ~= dlg;
	}
	extern(C) static void callBackAcceptPosition(GtkPaned* panedStruct, Paned paned)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Paned) dlg ; paned.onAcceptPositionListeners )
		{
			dlg(paned);
		}
		
		return consumed;
	}
	
	gboolean delegate(Paned)[] onCancelPositionListeners;
	void addOnCancelPosition(gboolean delegate(Paned) dlg)
	{
		if ( !("cancel-position" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cancel-position",
			cast(GCallback)&callBackCancelPosition,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["cancel-position"] = 1;
		}
		onCancelPositionListeners ~= dlg;
	}
	extern(C) static void callBackCancelPosition(GtkPaned* panedStruct, Paned paned)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Paned) dlg ; paned.onCancelPositionListeners )
		{
			dlg(paned);
		}
		
		return consumed;
	}
	
	gboolean delegate(gboolean, Paned)[] onCycleChildFocusListeners;
	void addOnCycleChildFocus(gboolean delegate(gboolean, Paned) dlg)
	{
		if ( !("cycle-child-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cycle-child-focus",
			cast(GCallback)&callBackCycleChildFocus,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["cycle-child-focus"] = 1;
		}
		onCycleChildFocusListeners ~= dlg;
	}
	extern(C) static void callBackCycleChildFocus(GtkPaned* panedStruct, gboolean arg1, Paned paned)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(gboolean, Paned) dlg ; paned.onCycleChildFocusListeners )
		{
			dlg(arg1, paned);
		}
		
		return consumed;
	}
	
	gboolean delegate(gboolean, Paned)[] onCycleHandleFocusListeners;
	void addOnCycleHandleFocus(gboolean delegate(gboolean, Paned) dlg)
	{
		if ( !("cycle-handle-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cycle-handle-focus",
			cast(GCallback)&callBackCycleHandleFocus,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["cycle-handle-focus"] = 1;
		}
		onCycleHandleFocusListeners ~= dlg;
	}
	extern(C) static void callBackCycleHandleFocus(GtkPaned* panedStruct, gboolean arg1, Paned paned)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(gboolean, Paned) dlg ; paned.onCycleHandleFocusListeners )
		{
			dlg(arg1, paned);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkScrollType, Paned)[] onMoveHandleListeners;
	void addOnMoveHandle(gboolean delegate(GtkScrollType, Paned) dlg)
	{
		if ( !("move-handle" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-handle",
			cast(GCallback)&callBackMoveHandle,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["move-handle"] = 1;
		}
		onMoveHandleListeners ~= dlg;
	}
	extern(C) static void callBackMoveHandle(GtkPaned* panedStruct, GtkScrollType arg1, Paned paned)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GtkScrollType, Paned) dlg ; paned.onMoveHandleListeners )
		{
			dlg(arg1, paned);
		}
		
		return consumed;
	}
	
	gboolean delegate(Paned)[] onToggleHandleFocusListeners;
	void addOnToggleHandleFocus(gboolean delegate(Paned) dlg)
	{
		if ( !("toggle-handle-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-handle-focus",
			cast(GCallback)&callBackToggleHandleFocus,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["toggle-handle-focus"] = 1;
		}
		onToggleHandleFocusListeners ~= dlg;
	}
	extern(C) static void callBackToggleHandleFocus(GtkPaned* panedStruct, Paned paned)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Paned) dlg ; paned.onToggleHandleFocusListeners )
		{
			dlg(paned);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Adds a child to the top or left pane with
	 * default parameters. This is equivalent
	 * to gtk_paned_pack1 (paned, child, FALSE, TRUE).
	 * paned:
	 * a paned widget
	 * child:
	 * the child to add
	 */
	public void add1(Widget child)
	{
		// void gtk_paned_add1 (GtkPaned *paned,  GtkWidget *child);
		gtk_paned_add1(gtkPaned, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Adds a child to the bottom or right pane with default
	 * parameters. This is equivalent to
	 * gtk_paned_pack2 (paned, child, TRUE, TRUE).
	 * paned:
	 * a paned widget
	 * child:
	 * the child to add
	 */
	public void add2(Widget child)
	{
		// void gtk_paned_add2 (GtkPaned *paned,  GtkWidget *child);
		gtk_paned_add2(gtkPaned, (child is null) ? null : child.getWidgetStruct());
	}
	
	
	/**
	 * Adds a child to the top or left pane.
	 * paned:
	 * a paned widget
	 * child:
	 * the child to add
	 * resize:
	 * should this child expand when the paned widget is resized.
	 * shrink:
	 * can this child be made smaller than its requisition.
	 */
	public void pack1(Widget child, int resize, int shrink)
	{
		// void gtk_paned_pack1 (GtkPaned *paned,  GtkWidget *child,  gboolean resize,  gboolean shrink);
		gtk_paned_pack1(gtkPaned, (child is null) ? null : child.getWidgetStruct(), resize, shrink);
	}
	
	/**
	 * Adds a child to the bottom or right pane.
	 * paned:
	 * a paned widget
	 * child:
	 * the child to add
	 * resize:
	 * should this child expand when the paned widget is resized.
	 * shrink:
	 * can this child be made smaller than its requisition.
	 */
	public void pack2(Widget child, int resize, int shrink)
	{
		// void gtk_paned_pack2 (GtkPaned *paned,  GtkWidget *child,  gboolean resize,  gboolean shrink);
		gtk_paned_pack2(gtkPaned, (child is null) ? null : child.getWidgetStruct(), resize, shrink);
	}
	
	/**
	 * Obtains the first child of the paned widget.
	 * paned:
	 *  a GtkPaned widget
	 * Returns:
	 *  first child, or NULL if it is not set.
	 * Since 2.4
	 */
	public Widget getChild1()
	{
		// GtkWidget* gtk_paned_get_child1 (GtkPaned *paned);
		return new Widget( gtk_paned_get_child1(gtkPaned) );
	}
	
	/**
	 * Obtains the second child of the paned widget.
	 * paned:
	 *  a GtkPaned widget
	 * Returns:
	 *  second child, or NULL if it is not set.
	 * Since 2.4
	 */
	public Widget getChild2()
	{
		// GtkWidget* gtk_paned_get_child2 (GtkPaned *paned);
		return new Widget( gtk_paned_get_child2(gtkPaned) );
	}
	
	
	/**
	 * Sets the position of the divider between the two panes.
	 * paned:
	 *  a GtkPaned widget
	 * position:
	 *  pixel position of divider, a negative value means that the position
	 *  is unset.
	 */
	public void setPosition(int position)
	{
		// void gtk_paned_set_position (GtkPaned *paned,  gint position);
		gtk_paned_set_position(gtkPaned, position);
	}
	
	/**
	 * Obtains the position of the divider between the two panes.
	 * paned:
	 *  a GtkPaned widget
	 * Returns:
	 *  position of the divider
	 * Property Details
	 * The "max-position" property
	 *  "max-position" gint : Read
	 * The largest possible value for the position property. This property is derived from the
	 * size and shrinkability of the widget's children.
	 * Allowed values: >= 0
	 * Default value: 2147483647
	 * Since 2.4
	 */
	public int getPosition()
	{
		// gint gtk_paned_get_position (GtkPaned *paned);
		return gtk_paned_get_position(gtkPaned);
	}
	
	
	
	
	
	
	
	
	
}
