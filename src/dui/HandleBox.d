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

module dui.HandleBox;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Bin;

alias GtkBin GtkHandleBox;


private:

alias PositionType GtkPositionType;
alias ShadowType GtkShadowType;

extern (C) GType gtk_handle_box_get_type();
extern (C) GtkWidget * gtk_handle_box_new();
extern (C) void gtk_handle_box_set_shadow_type(GtkHandleBox * handle_box, GtkShadowType type);
extern (C) GtkShadowType gtk_handle_box_get_shadow_type(GtkHandleBox * handle_box);
extern (C) void gtk_handle_box_set_handle_position(GtkHandleBox * handle_box, GtkPositionType position);
extern (C) GtkPositionType gtk_handle_box_get_handle_position(GtkHandleBox * handle_box);
extern (C) void gtk_handle_box_set_snap_edge(GtkHandleBox * handle_box, GtkPositionType edge);
extern (C) GtkPositionType gtk_handle_box_get_snap_edge(GtkHandleBox * handle_box);

/**
 * A Box with a handle to be draged.
 * An example of the use is the detachable toolbar.
 */
public:
class HandleBox : Bin
{	
	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A Box with a handle to be draged.";}
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
		return gtk_handle_box_get_type();
	}

	/**
	 * Creates a new HandleBox
	 */
	this()
	{
		this(gtk_handle_box_new());
	}
	
	/**
	 * Sets the shadow type
	 * @param type the new shadow type
	 */
	void setShadowType(ShadowType type)
	{
		gtk_handle_box_set_shadow_type(cast(GtkHandleBox*)gtkW(), type);
	}
	
	/**
	 * Gets the shadow type
	 * @return the shadow type
	 */
	ShadowType getShadowType()
	{
		return gtk_handle_box_get_shadow_type(cast(GtkHandleBox*)gtkW());
	}
	
	/**
	 * Sets the handle position
	 * @param position the new handle position
	 */
	void setHandlePosition(PositionType position)
	{
		gtk_handle_box_set_handle_position(cast(GtkHandleBox*)gtkW(), position);
	}
	
	/**
	 * gets the ahbkde position
	 * @return the hande postion
	 */
	PositionType getHandlePosition()
	{
		return gtk_handle_box_get_handle_position(cast(GtkHandleBox*)gtkW());
	}
	
	/**
	 * Sets the edget where this handle box is docked???
	 * @param edge the edge
	 */
	void setSnapEdge(PositionType edge)
	{
		gtk_handle_box_set_snap_edge(cast(GtkHandleBox*)gtkW(), edge);
	}
	
	/**
	 * Gets the edget where this HandleBox is docked???
	 * @return the edget
	 */
	PositionType getSnapEdge()
	{
		return gtk_handle_box_get_snap_edge(cast(GtkHandleBox*)gtkW());
	}

}
