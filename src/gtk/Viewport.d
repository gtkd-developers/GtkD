/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_viewport_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * module aliases:
 * local aliases:
 */

module gtk.Viewport;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import gtk.Adjustment;



private import gtk.Bin;

/**
 * Description
 */
public class Viewport : Bin
{
	
	/** the main Gtk struct */
	protected GtkViewport* gtkViewport;
	
	
	public GtkViewport* getViewportStruct()
	{
		return gtkViewport;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkViewport;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkViewport* gtkViewport)
	{
		if(gtkViewport is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkViewport passed to constructor.");
			else return;
		}
		super(cast(GtkBin*)gtkViewport);
		this.gtkViewport = gtkViewport;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Adjustment, Adjustment, Viewport)[] onSetScrollAdjustmentsListeners;
	void addOnSetScrollAdjustments(void delegate(Adjustment, Adjustment, Viewport) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("set-scroll-adjustments" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-scroll-adjustments",
			cast(GCallback)&callBackSetScrollAdjustments,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["set-scroll-adjustments"] = 1;
		}
		onSetScrollAdjustmentsListeners ~= dlg;
	}
	extern(C) static void callBackSetScrollAdjustments(GtkViewport* viewportStruct, GtkAdjustment* arg1, GtkAdjustment* arg2, Viewport viewport)
	{
		bool consumed = false;
		
		foreach ( void delegate(Adjustment, Adjustment, Viewport) dlg ; viewport.onSetScrollAdjustmentsListeners )
		{
			dlg(new Adjustment(arg1), new Adjustment(arg2), viewport);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkViewport with the given adjustments.
	 * Params:
	 * hadjustment =  horizontal adjustment.
	 * vadjustment =  vertical adjustment.
	 */
	public this (Adjustment hadjustment, Adjustment vadjustment)
	{
		// GtkWidget* gtk_viewport_new (GtkAdjustment *hadjustment,  GtkAdjustment *vadjustment);
		this(cast(GtkViewport*)gtk_viewport_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct()) );
	}
	
	/**
	 * Returns the horizontal adjustment of the viewport.
	 * Returns: the horizontal adjustment of viewport.
	 */
	public Adjustment getHadjustment()
	{
		// GtkAdjustment* gtk_viewport_get_hadjustment (GtkViewport *viewport);
		return new Adjustment( gtk_viewport_get_hadjustment(gtkViewport) );
	}
	
	/**
	 * Returns the vertical adjustment of the viewport.
	 * Returns: the vertical adjustment of viewport.
	 */
	public Adjustment getVadjustment()
	{
		// GtkAdjustment* gtk_viewport_get_vadjustment (GtkViewport *viewport);
		return new Adjustment( gtk_viewport_get_vadjustment(gtkViewport) );
	}
	
	/**
	 * Sets the horizontal adjustment of the viewport.
	 * Params:
	 * adjustment =  a GtkAdjustment.
	 */
	public void setHadjustment(Adjustment adjustment)
	{
		// void gtk_viewport_set_hadjustment (GtkViewport *viewport,  GtkAdjustment *adjustment);
		gtk_viewport_set_hadjustment(gtkViewport, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Sets the vertical adjustment of the viewport.
	 * Params:
	 * adjustment =  a GtkAdjustment.
	 */
	public void setVadjustment(Adjustment adjustment)
	{
		// void gtk_viewport_set_vadjustment (GtkViewport *viewport,  GtkAdjustment *adjustment);
		gtk_viewport_set_vadjustment(gtkViewport, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Sets the shadow type of the viewport.
	 * Params:
	 * type =  the new shadow type.
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
	
	
}
