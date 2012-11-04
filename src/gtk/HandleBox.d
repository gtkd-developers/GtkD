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
 * inFile  = GtkHandleBox.html
 * outPack = gtk
 * outFile = HandleBox
 * strct   = GtkHandleBox
 * realStrct=
 * ctorStrct=
 * clss    = HandleBox
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_handle_box_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.HandleBox;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;




private import gtk.Bin;

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
 * Note
 * GtkHandleBox has been deprecated. It is very specialized, lacks features
 * to make it useful and most importantly does not fit well into modern
 * application design. Do not use it. There is no replacement.
 */
public class HandleBox : Bin
{
	
	/** the main Gtk struct */
	protected GtkHandleBox* gtkHandleBox;
	
	
	public GtkHandleBox* getHandleBoxStruct()
	{
		return gtkHandleBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkHandleBox = cast(GtkHandleBox*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(GtkWidget*, HandleBox)[] onChildAttachedListeners;
	/**
	 * Warning
	 * GtkHandleBox::child-attached has been deprecated since version 3.4 and should not be used in newly-written code. GtkHandleBox has been deprecated.
	 * This signal is emitted when the contents of the
	 * handlebox are reattached to the main window.
	 */
	void addOnChildAttached(void delegate(GtkWidget*, HandleBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("child-attached" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"child-attached",
			cast(GCallback)&callBackChildAttached,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["child-attached"] = 1;
		}
		onChildAttachedListeners ~= dlg;
	}
	extern(C) static void callBackChildAttached(GtkHandleBox* handleboxStruct, GtkWidget* widget, HandleBox _handleBox)
	{
		foreach ( void delegate(GtkWidget*, HandleBox) dlg ; _handleBox.onChildAttachedListeners )
		{
			dlg(widget, _handleBox);
		}
	}
	
	void delegate(GtkWidget*, HandleBox)[] onChildDetachedListeners;
	/**
	 * Warning
	 * GtkHandleBox::child-detached has been deprecated since version 3.4 and should not be used in newly-written code. GtkHandleBox has been deprecated.
	 * This signal is emitted when the contents of the
	 * handlebox are detached from the main window.
	 */
	void addOnChildDetached(void delegate(GtkWidget*, HandleBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("child-detached" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"child-detached",
			cast(GCallback)&callBackChildDetached,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["child-detached"] = 1;
		}
		onChildDetachedListeners ~= dlg;
	}
	extern(C) static void callBackChildDetached(GtkHandleBox* handleboxStruct, GtkWidget* widget, HandleBox _handleBox)
	{
		foreach ( void delegate(GtkWidget*, HandleBox) dlg ; _handleBox.onChildDetachedListeners )
		{
			dlg(widget, _handleBox);
		}
	}
	
	
	/**
	 * Warning
	 * gtk_handle_box_new has been deprecated since version 3.4 and should not be used in newly-written code. GtkHandleBox has been deprecated.
	 * Create a new handle box.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_handle_box_new (void);
		auto p = gtk_handle_box_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_handle_box_new()");
		}
		this(cast(GtkHandleBox*) p);
	}
	
	/**
	 * Warning
	 * gtk_handle_box_set_shadow_type has been deprecated since version 3.4 and should not be used in newly-written code. GtkHandleBox has been deprecated.
	 * Sets the type of shadow to be drawn around the border
	 * of the handle box.
	 * Params:
	 * type = the shadow type.
	 */
	public void setShadowType(GtkShadowType type)
	{
		// void gtk_handle_box_set_shadow_type (GtkHandleBox *handle_box,  GtkShadowType type);
		gtk_handle_box_set_shadow_type(gtkHandleBox, type);
	}
	
	/**
	 * Warning
	 * gtk_handle_box_set_handle_position has been deprecated since version 3.4 and should not be used in newly-written code. GtkHandleBox has been deprecated.
	 * Sets the side of the handlebox where the handle is drawn.
	 * Params:
	 * position = the side of the handlebox where the handle should be drawn.
	 */
	public void setHandlePosition(GtkPositionType position)
	{
		// void gtk_handle_box_set_handle_position (GtkHandleBox *handle_box,  GtkPositionType position);
		gtk_handle_box_set_handle_position(gtkHandleBox, position);
	}
	
	/**
	 * Warning
	 * gtk_handle_box_set_snap_edge has been deprecated since version 3.4 and should not be used in newly-written code. GtkHandleBox has been deprecated.
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
	 * Params:
	 * edge = the snap edge, or -1 to unset the value; in which
	 * case GTK+ will try to guess an appropriate value
	 * in the future.
	 */
	public void setSnapEdge(GtkPositionType edge)
	{
		// void gtk_handle_box_set_snap_edge (GtkHandleBox *handle_box,  GtkPositionType edge);
		gtk_handle_box_set_snap_edge(gtkHandleBox, edge);
	}
	
	/**
	 * Warning
	 * gtk_handle_box_get_handle_position has been deprecated since version 3.4 and should not be used in newly-written code. GtkHandleBox has been deprecated.
	 * Gets the handle position of the handle box. See
	 * gtk_handle_box_set_handle_position().
	 * Returns: the current handle position.
	 */
	public GtkPositionType getHandlePosition()
	{
		// GtkPositionType gtk_handle_box_get_handle_position (GtkHandleBox *handle_box);
		return gtk_handle_box_get_handle_position(gtkHandleBox);
	}
	
	/**
	 * Warning
	 * gtk_handle_box_get_shadow_type has been deprecated since version 3.4 and should not be used in newly-written code. GtkHandleBox has been deprecated.
	 * Gets the type of shadow drawn around the handle box. See
	 * gtk_handle_box_set_shadow_type().
	 * Returns: the type of shadow currently drawn around the handle box.
	 */
	public GtkShadowType getShadowType()
	{
		// GtkShadowType gtk_handle_box_get_shadow_type (GtkHandleBox *handle_box);
		return gtk_handle_box_get_shadow_type(gtkHandleBox);
	}
	
	/**
	 * Warning
	 * gtk_handle_box_get_snap_edge has been deprecated since version 3.4 and should not be used in newly-written code. GtkHandleBox has been deprecated.
	 * Gets the edge used for determining reattachment of the handle box.
	 * See gtk_handle_box_set_snap_edge().
	 * Returns: the edge used for determining reattachment, or (GtkPositionType)-1 if this is determined (as per default) from the handle position.
	 */
	public GtkPositionType getSnapEdge()
	{
		// GtkPositionType gtk_handle_box_get_snap_edge (GtkHandleBox *handle_box);
		return gtk_handle_box_get_snap_edge(gtkHandleBox);
	}
	
	/**
	 * Warning
	 * gtk_handle_box_get_child_detached has been deprecated since version 3.4 and should not be used in newly-written code. GtkHandleBox has been deprecated.
	 * Whether the handlebox's child is currently detached.
	 * Since 2.14
	 * Returns: TRUE if the child is currently detached, otherwise FALSE
	 */
	public int getChildDetached()
	{
		// gboolean gtk_handle_box_get_child_detached (GtkHandleBox *handle_box);
		return gtk_handle_box_get_child_detached(gtkHandleBox);
	}
}
