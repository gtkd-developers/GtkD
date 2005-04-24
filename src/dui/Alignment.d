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

alias GtkBin GtkAlignment;

private:

extern (C) GtkWidget * gtk_alignment_new(gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale);
extern (C) void gtk_alignment_set(GtkAlignment * alignment, gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale);

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
	 * @param xalign the horizontal alignment of the child widget, from 0 (left) to 1 (right).
	 * @param yalign the vertical alignment of the child widget, from 0 (top) to 1 (bottom).
	 * @param xscale the amount that the child widget expands horizontally to fill
	 * up unused space, from 0 to 1. A value of 0 indicates that the child widget
	 * should never expand. A value of 1 indicates that the child widget will expand
	 * to fill all of the space allocated for the GtkAlignment.
	 * @param yscale the amount that the child widget expands vertically to fill up
	 * unused space, from 0 to 1. The values are similar to xscale.
	 */
	this(gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale)
	{
		this(gtk_alignment_new(xalign, yalign, xscale, yscale));
	}

	/**
	 * sets the alignment values
	 * @param xalign the horizontal alignment of the child widget, from 0 (left) to 1 (right).
	 * @param yalign the vertical alignment of the child widget, from 0 (top) to 1 (bottom).
	 * @param xscale the amount that the child widget expands horizontally to fill
	 * up unused space, from 0 to 1. A value of 0 indicates that the child widget
	 * should never expand. A value of 1 indicates that the child widget will expand
	 * to fill all of the space allocated for the GtkAlignment.
	 * @param yscale the amount that the child widget expands vertically to fill up
	 * unused space, from 0 to 1. The values are similar to xscale.
	 */
	void set(gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale)
	{
		gtk_alignment_set(cast(GtkBin*)gtkW(), xalign, yalign, xscale, yscale);
	}

	public static Alignment center(Widget widget)
	{
		Alignment a = new Alignment(0.5, 0.5, 0, 0);
		a.add(widget);
		return a;
	}
	
	public static Alignment north(Widget widget)
	{
		Alignment a = new Alignment(0.5, 0.0, 0, 0);
		a.add(widget);
		return a;
	}
	
	public static Alignment south(Widget widget)
	{
		Alignment a = new Alignment(0.5, 1.0, 0, 0);
		a.add(widget);
		return a;
	}
	
	public static Alignment east(Widget widget)
	{
		Alignment a = new Alignment(0.0, 0.5, 0, 0);
		a.add(widget);
		return a;
	}
	
	public static Alignment west(Widget widget)
	{
		Alignment a = new Alignment(1.0, 0.5, 0, 0);
		a.add(widget);
		return a;
	}
	
}
