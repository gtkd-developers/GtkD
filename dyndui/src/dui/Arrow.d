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

module dui.Arrow;

private import def.Types;
private import def.Constants;
//private import dui.Widget;
private import dui.Misc;
private import lib.gtk;

/**
 * A widget that displays an arrow. This is like a label, not a button.
 */
public:
class Arrow : Misc
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] description(){return "A widget that displays an arrow. This is like a label, not a button.";}
		char[] gtkName(){return SAME_NAME;}
		char[] author(){return "Antonio";}
	}
	

	public:
	/**
	 * 
	 */
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Creates a new arrow with a direction and a shadow type
	 * @param arrow_type the direction
	 * @param shadow_type the shadow type 
	 */
	this(ArrowType arrow_type, ShadowType shadow_type)
	{
		this(gtk_arrow_new(arrow_type, shadow_type));
	}

	/**
	 * Sets the arrow direction and a shadow types
	 * @param arrow_type the direction
	 * @param shadow_type the shadow type 
	 */
	void set(ArrowType arrow_type, ShadowType shadow_type)
	{
		gtk_arrow_set(gtkW(),arrow_type, shadow_type);
	}

}
