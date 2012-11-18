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
 * inFile  = GtkViewport.html
 * outPack = gtk
 * outFile = Viewport
 * strct   = GtkViewport
 * realStrct=
 * ctorStrct=
 * clss    = Viewport
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ScrollableIF
 * prefixes:
 * 	- gtk_viewport_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_viewport_get_hadjustment
 * 	- gtk_viewport_get_vadjustment
 * 	- gtk_viewport_set_hadjustment
 * 	- gtk_viewport_set_vadjustment
 * omit signals:
 * imports:
 * 	- gdk.Window
 * 	- gtk.Adjustment
 * 	- gtk.ScrollableT
 * 	- gtk.ScrollableIF
 * structWrap:
 * 	- GdkWindow* -> Window
 * 	- GtkAdjustment* -> Adjustment
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Viewport;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gdk.Window;
private import gtk.Adjustment;
private import gtk.ScrollableT;
private import gtk.ScrollableIF;



private import gtk.Bin;

/**
 * Description
 * The GtkViewport widget acts as an adaptor class, implementing
 * scrollability for child widgets that lack their own scrolling
 * capabilities. Use GtkViewport to scroll child widgets such as
 * GtkGrid, GtkBox, and so on.
 * If a widget has native scrolling abilities, such as GtkTextView,
 * GtkTreeView or GtkIconView, it can be added to a GtkScrolledWindow
 * with gtk_container_add(). If a widget does not, you must first add the
 * widget to a GtkViewport, then add the viewport to the scrolled window.
 * The convenience function gtk_scrolled_window_add_with_viewport() does
 * exactly this, so you can ignore the presence of the viewport.
 * The GtkViewport will start scrolling content only if allocated less
 * than the child widget's minimum size in a given orientation.
 */
public class Viewport : Bin, ScrollableIF
{
	
	/** the main Gtk struct */
	protected GtkViewport* gtkViewport;
	
	
	public GtkViewport* getViewportStruct()
	{
		return gtkViewport;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkViewport;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkViewport* gtkViewport)
	{
		super(cast(GtkBin*)gtkViewport);
		this.gtkViewport = gtkViewport;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkViewport = cast(GtkViewport*)obj;
	}
	
	// add the Scrollable capabilities
	mixin ScrollableT!(GtkViewport);
	
	/**
	 */
	
	/**
	 * Creates a new GtkViewport with the given adjustments.
	 * Params:
	 * hadjustment = horizontal adjustment
	 * vadjustment = vertical adjustment
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Adjustment hadjustment, Adjustment vadjustment)
	{
		// GtkWidget * gtk_viewport_new (GtkAdjustment *hadjustment,  GtkAdjustment *vadjustment);
		auto p = gtk_viewport_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_viewport_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct())");
		}
		this(cast(GtkViewport*) p);
	}
	
	/**
	 * Sets the shadow type of the viewport.
	 * Params:
	 * type = the new shadow type.
	 */
	public void setShadowType(GtkShadowType type)
	{
		// void gtk_viewport_set_shadow_type (GtkViewport *viewport,  GtkShadowType type);
		gtk_viewport_set_shadow_type(gtkViewport, type);
	}
	
	/**
	 * Gets the shadow type of the GtkViewport. See
	 * gtk_viewport_set_shadow_type().
	 * Returns: the shadow type
	 */
	public GtkShadowType getShadowType()
	{
		// GtkShadowType gtk_viewport_get_shadow_type (GtkViewport *viewport);
		return gtk_viewport_get_shadow_type(gtkViewport);
	}
	
	/**
	 * Gets the bin window of the GtkViewport.
	 * Since 2.20
	 * Returns: a GdkWindow. [transfer none]
	 */
	public Window getBinWindow()
	{
		// GdkWindow * gtk_viewport_get_bin_window (GtkViewport *viewport);
		auto p = gtk_viewport_get_bin_window(gtkViewport);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Gets the view window of the GtkViewport.
	 * Since 2.22
	 * Returns: a GdkWindow. [transfer none]
	 */
	public Window getViewWindow()
	{
		// GdkWindow * gtk_viewport_get_view_window (GtkViewport *viewport);
		auto p = gtk_viewport_get_view_window(gtkViewport);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
}
