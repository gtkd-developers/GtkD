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

module dui.Alignment;

private import def.Types;
private import dui.Widget;
private import dui.Bin;

private import lib.gtk;

/**
 * Alignment
 */
public:
class Alignment : Bin
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] description(){return "Alingment";}
		char[] gtkName(){return SAME_NAME;}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * creates a new aligment
	 * @param xalign
	 * @param yalign
	 * @param xscale
	 * @param yscale
	 */
	this(gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale)
	{
		this(gtk_alignment_new(xalign, yalign, xscale, yscale));
	}

	/**
	 * sets the alignment values
	 * @param xalign
	 * @param yalign
	 * @param xscale
	 * @param yscale
	 */
	void set(gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale)
	{
		gtk_alignment_set(cast(GtkBin*)gtkW(), xalign, yalign, xscale, yscale);
	}

}
