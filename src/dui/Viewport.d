/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.Viewport;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Bin;
private import dui.Adjustment;

alias GtkBin GtkViewport;
alias int GtkShadowType;

extern (C) GType gtk_viewport_get_type();
extern (C) GtkWidget * gtk_viewport_new(GtkAdjustment * hadjustment, GtkAdjustment * vadjustment);
extern (C) GtkAdjustment * gtk_viewport_get_hadjustment(GtkViewport * viewport);
extern (C) GtkAdjustment * gtk_viewport_get_vadjustment(GtkViewport * viewport);
extern (C) void gtk_viewport_set_hadjustment(GtkViewport * viewport, GtkAdjustment * adjustment);
extern (C) void gtk_viewport_set_vadjustment(GtkViewport * viewport, GtkAdjustment * adjustment);
extern (C) void gtk_viewport_set_shadow_type(GtkViewport * viewport, GtkShadowType type);
extern (C) GtkShadowType gtk_viewport_get_shadow_type(GtkViewport * viewport);

/**
 * A container for a widget large then the available display size.
 * Probably you want to use the ScrolledWindow widget instead (no, ScrolledWindow it's not a Window)
 */
public:
class Viewport : Bin
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A container for a widget large then the available display size";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_viewport_get_type();
	}
   
	/**
	 * Creates a new viewport from a horizontal and vertical adjustments
	 * @param hAdjustment the horizontal adjustment
	 * @param vAdjustment the vertical adjustment
	 */
	this(Adjustment hAdjustment, Adjustment vAdjustment)
	{
		GtkAdjustment *h = (hAdjustment === null) ? null : hAdjustment.gtkO();
		GtkAdjustment *v = (vAdjustment === null) ? null : vAdjustment.gtkO();
		
		this(gtk_viewport_new(h, v));	
	}
	
	/**
	 * Gets the horizontal adjustment
	 * @return the horizontal adjustment
	 */
	Adjustment getHAdjustment() 
	{
		return new Adjustment(gtk_viewport_get_hadjustment(cast(GtkViewport*)gtkW()));	
	}
	
	/**
	 * Gets the verticalment
	 * @return the verticalment
	 */
	Adjustment getVAdjustment()
	{
		return new Adjustment(gtk_viewport_get_vadjustment(cast(GtkViewport*)gtkW()));	
	}
	
	/**
	 * Sets the horizontal adjustment
	 * @param adjustment the new horizontal adjustment
	 */
	void setHAdjustment(Adjustment adjustment)
	{
		gtk_viewport_set_hadjustment(cast(GtkViewport*)gtkW(), adjustment.gtkO());	
	}
	
	/**
	 * Sets the vertical adjustment
	 * @param adjustment the new vertical adjsutment
	 */
	void setVAdjustment (Adjustment adjustment){
		gtk_viewport_set_vadjustment(cast(GtkViewport*)gtkW(), adjustment.gtkO());	
	}
	
	/**
	 * Sets the shadow type
	 * @param type the new shadow type
	 */
	void setShadow(GtkShadowType type){
		gtk_viewport_set_shadow_type(cast(GtkViewport*)gtkW(), type);	
	}
	
	/**
	 * Gets the shadow type
	 * @return the shadow type
	 */
	GtkShadowType getShadow(){
		return gtk_viewport_get_shadow_type(cast(GtkViewport*)gtkW());	
	}
	
}
