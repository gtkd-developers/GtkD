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
 * outFile = HandleBox
 * strct   = GtkHandleBox
 * realStrct=
 * clss    = HandleBox
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_handle_box_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.HandleBox;

private import gtk.typedefs;

private import lib.gtk;


/**
 * Description
 * The GtkHandleBox widget allows a portion of a window to be "torn
 * off". It is a bin widget which displays its child and a handle that
 * the user can drag to tear off a separate window (the float
 * window) containing the child widget. A thin
 * ghost is drawn in the original location of the
 * handlebox. By dragging the separate window back to its original
 * location, it can be reattached.
 * When reattaching, the ghost and float window, must be aligned
 * along one of the edges, the snap edge.
 * This either can be specified by the application programmer
 * explicitely, or GTK+ will pick a reasonable default based
 * on the handle position.
 * To make detaching and reattaching the handlebox as minimally confusing
 * as possible to the user, it is important to set the snap edge so that
 * the snap edge does not move when the handlebox is deattached. For
 * instance, if the handlebox is packed at the bottom of a VBox, then
 * when the handlebox is detached, the bottom edge of the handlebox's
 * allocation will remain fixed as the height of the handlebox shrinks,
 * so the snap edge should be set to GTK_POS_BOTTOM.
 */
private import gtk.Bin;
public class HandleBox : Bin
{
	
	/** the main Gtk struct */
	protected GtkHandleBox* gtkHandleBox;
	
	
	public GtkHandleBox* getHandleBoxStruct()
	{
		return gtkHandleBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkHandleBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHandleBox* gtkHandleBox)
	{
		super(cast(GtkBin*)gtkHandleBox);
		this.gtkHandleBox = gtkHandleBox;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(GtkWidget*, HandleBox)[] onChildAttachedListeners;
	void addOnChildAttached(void delegate(GtkWidget*, HandleBox) dlg)
	{
		if ( !("child-attached" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"child-attached",
			cast(GCallback)&callBackChildAttached,
			this,
			null,
			0);
			connectedSignals["child-attached"] = 1;
		}
		onChildAttachedListeners ~= dlg;
	}
	extern(C) static void callBackChildAttached(GtkHandleBox* handleboxStruct, GtkWidget* widget, HandleBox handleBox)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkWidget*, HandleBox) dlg ; handleBox.onChildAttachedListeners )
		{
			dlg(widget, handleBox);
		}
		
		return consumed;
	}
	
	void delegate(GtkWidget*, HandleBox)[] onChildDetachedListeners;
	void addOnChildDetached(void delegate(GtkWidget*, HandleBox) dlg)
	{
		if ( !("child-detached" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"child-detached",
			cast(GCallback)&callBackChildDetached,
			this,
			null,
			0);
			connectedSignals["child-detached"] = 1;
		}
		onChildDetachedListeners ~= dlg;
	}
	extern(C) static void callBackChildDetached(GtkHandleBox* handleboxStruct, GtkWidget* widget, HandleBox handleBox)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkWidget*, HandleBox) dlg ; handleBox.onChildDetachedListeners )
		{
			dlg(widget, handleBox);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Create a new handle box.
	 * Returns:
	 * a new GtkHandleBox.
	 */
	public this ()
	{
		// GtkWidget* gtk_handle_box_new (void);
		this(cast(GtkHandleBox*)gtk_handle_box_new() );
	}
	
	/**
	 * Sets the type of shadow to be drawn around the border
	 * of the handle box.
	 * handle_box:
	 * a GtkHandleBox
	 * type:
	 * the shadow type.
	 */
	public void setShadowType(GtkShadowType type)
	{
		// void gtk_handle_box_set_shadow_type (GtkHandleBox *handle_box,  GtkShadowType type);
		gtk_handle_box_set_shadow_type(gtkHandleBox, type);
	}
	
	/**
	 * Sets the side of the handlebox where the handle is drawn.
	 * handle_box:
	 * a GtkHandleBox
	 * position:
	 * the side of the handlebox where the handle should be drawn.
	 */
	public void setHandlePosition(GtkPositionType position)
	{
		// void gtk_handle_box_set_handle_position  (GtkHandleBox *handle_box,  GtkPositionType position);
		gtk_handle_box_set_handle_position(gtkHandleBox, position);
	}
	
	/**
	 * Sets the snap edge of a handlebox. The snap edge is
	 * the edge of the detached child that must be aligned
	 * with the corresponding edge of the "ghost" left
	 * behind when the child was detached to reattach
	 * the torn-off window. Usually, the snap edge should
	 * be chosen so that it stays in the same place on
	 * the screen when the handlebox is torn off.
	 * If the snap edge is not set, then an appropriate value
	 * will be guessed from the handle position. If the
	 * handle position is GTK_POS_RIGHT or GTK_POS_LEFT,
	 * then the snap edge will be GTK_POS_TOP, otherwise
	 * it will be GTK_POS_LEFT.
	 * handle_box:
	 * a GtkHandleBox
	 * edge:
	 * the snap edge, or -1 to unset the value; in which
	 * case GTK+ will try to guess an appropriate value
	 * in the future.
	 */
	public void setSnapEdge(GtkPositionType edge)
	{
		// void gtk_handle_box_set_snap_edge (GtkHandleBox *handle_box,  GtkPositionType edge);
		gtk_handle_box_set_snap_edge(gtkHandleBox, edge);
	}
	
	/**
	 * Gets the handle position of the handle box. See
	 * gtk_handle_box_set_handle_position().
	 * handle_box:
	 *  a GtkHandleBox
	 * Returns:
	 *  the current handle position.
	 */
	public GtkPositionType getHandlePosition()
	{
		// GtkPositionType gtk_handle_box_get_handle_position  (GtkHandleBox *handle_box);
		return gtk_handle_box_get_handle_position(gtkHandleBox);
	}
	
	/**
	 * Gets the type of shadow drawn around the handle box. See
	 * gtk_handle_box_set_shadow_type().
	 * handle_box:
	 *  a GtkHandleBox
	 * Returns:
	 *  the type of shadow currently drawn around the handle box.
	 */
	public GtkShadowType getShadowType()
	{
		// GtkShadowType gtk_handle_box_get_shadow_type  (GtkHandleBox *handle_box);
		return gtk_handle_box_get_shadow_type(gtkHandleBox);
	}
	
	/**
	 * Gets the edge used for determining reattachment of the handle box. See
	 * gtk_handle_box_set_snap_edge().
	 * handle_box:
	 *  a GtkHandleBox
	 * Returns:
	 *  the edge used for determining reattachment, or (GtkPositionType)-1 if this
	 *  is determined (as per default) from the handle position.
	 * Property Details
	 * The "handle-position" property
	 *  "handle-position" GtkPositionType : Read / Write
	 * Position of the handle relative to the child widget.
	 * Default value: GTK_POS_LEFT
	 */
	public GtkPositionType getSnapEdge()
	{
		// GtkPositionType gtk_handle_box_get_snap_edge  (GtkHandleBox *handle_box);
		return gtk_handle_box_get_snap_edge(gtkHandleBox);
	}
	
	
	
	
	
}
