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
 * inFile  = GtkOverlay.html
 * outPack = gtk
 * outFile = Overlay
 * strct   = GtkOverlay
 * realStrct=
 * ctorStrct=
 * clss    = Overlay
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_overlay_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Overlay;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtk.Widget;



private import gtk.Bin;

/**
 * Description
 * GtkOverlay is a container which contains a single main child, on top
 * of which it can place overlay widgets. The
 * position of each overlay widget is determined by its "halign"
 * and "valign" properties. E.g. a widget with both alignments
 * set to GTK_ALIGN_START will be placed at the top left corner of the
 * main widget, whereas an overlay with halign set to GTK_ALIGN_CENTER
 * and valign set to GTK_ALIGN_END will be placed a the bottom edge of
 * the main widget, horizontally centered. The position can be adjusted
 * by setting the margin properties of the child to non-zero values.
 * More complicated placement of overlays is possible by connecting
 * to the "get-child-position" signal.
 * GtkOverlay as GtkBuildable
 * The GtkOverlay implementation of the GtkBuildable interface
 * supports placing a child as an overlay by specifying "overlay" as
 * the "type" attribute of a <child> element.
 */
public class Overlay : Bin
{
	
	/** the main Gtk struct */
	protected GtkOverlay* gtkOverlay;
	
	
	public GtkOverlay* getOverlayStruct()
	{
		return gtkOverlay;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkOverlay;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkOverlay* gtkOverlay)
	{
		super(cast(GtkBin*)gtkOverlay);
		this.gtkOverlay = gtkOverlay;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkOverlay = cast(GtkOverlay*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(Widget, GdkRectangle*, Overlay)[] onGetChildPositionListeners;
	/**
	 * The ::get-child-position signal is emitted to determine
	 * the position and size of any overlay child widgets. A
	 * handler for this signal should fill allocation with
	 * the desired position and size for widget, relative to
	 * the 'main' child of overlay.
	 * The default handler for this signal uses the widget's
	 * halign and valign properties to determine the position
	 * and gives the widget its natural size (except that an
	 * alignment of GTK_ALIGN_FILL will cause the overlay to
	 * be full-width/height). If the main child is a
	 * GtkScrolledWindow, the overlays are placed relative
	 * to its contents.
	 * Return: TRUE if the allocation has been filled
	 */
	void addOnGetChildPosition(bool delegate(Widget, GdkRectangle*, Overlay) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("get-child-position" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"get-child-position",
			cast(GCallback)&callBackGetChildPosition,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["get-child-position"] = 1;
		}
		onGetChildPositionListeners ~= dlg;
	}
	extern(C) static gboolean callBackGetChildPosition(GtkOverlay* overlayStruct, GtkWidget* widget, GdkRectangle* allocation, Overlay _overlay)
	{
		foreach ( bool delegate(Widget, GdkRectangle*, Overlay) dlg ; _overlay.onGetChildPositionListeners )
		{
			if ( dlg(ObjectG.getDObject!(Widget)(widget), allocation, _overlay) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new GtkOverlay.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_overlay_new (void);
		auto p = gtk_overlay_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_overlay_new()");
		}
		this(cast(GtkOverlay*) p);
	}
	
	/**
	 * Adds widget to overlay.
	 * The widget will be stacked on top of the main widget
	 * added with gtk_container_add().
	 * The position at which widget is placed is determined
	 * from its "halign" and "valign" properties.
	 * Params:
	 * widget = a GtkWidget to be added to the container
	 * Since 3.2
	 * Signal Details
	 * The "get-child-position" signal
	 * gboolean user_function (GtkOverlay *overlay,
	 *  GtkWidget *widget,
	 *  GdkRectangle *allocation,
	 *  gpointer user_data) : Run Last
	 * The ::get-child-position signal is emitted to determine
	 * the position and size of any overlay child widgets. A
	 * handler for this signal should fill allocation with
	 * the desired position and size for widget, relative to
	 * the 'main' child of overlay.
	 * The default handler for this signal uses the widget's
	 * halign and valign properties to determine the position
	 * and gives the widget its natural size (except that an
	 * alignment of GTK_ALIGN_FILL will cause the overlay to
	 * be full-width/height). If the main child is a
	 * GtkScrolledWindow, the overlays are placed relative
	 * to its contents.
	 * Return: TRUE if the allocation has been filled
	 * widget = the child widget to position
	 */
	public void addOverlay(Widget widget)
	{
		// void gtk_overlay_add_overlay (GtkOverlay *overlay,  GtkWidget *widget);
		gtk_overlay_add_overlay(gtkOverlay, (widget is null) ? null : widget.getWidgetStruct());
	}
}
