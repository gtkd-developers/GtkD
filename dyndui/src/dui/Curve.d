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

module dui.Curve;

private import def.Types;
private import def.Constants;
private import dui.DrawingArea;
private import lib.gtk;

/**
 * Allows direct editing of a curve.
 */
public:
class Curve :
		DrawingArea
{
	debug(status)
	{
		int complete(){return ST_UNKNOWN;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Allows direct editing of a curve.";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Creates a new curve
	 */
	this()
	{
		this(gtk_curve_new());
	}
	
	/**
	 * Resets this curve
	 */
	void reset()
	{
		gtk_curve_reset(gtkW());
	}
	
	/**
	 * Sets gamma
	 * @param gamma
	 */
	void setGamma(gfloat gamma)
	{
		gtk_curve_set_gamma(gtkW(), gamma);
	}
	
	/**
	 * Sets Range
	 * @param minX
	 * @param maxX
	 * @param minY
	 * @param maxY
	 */
	void setRange(gfloat minX, gfloat maxX, gfloat minY, gfloat maxY)
	{
		gtk_curve_set_range(gtkW(), minX, maxX, minY, maxY);
	}
	
	/**
	 * Gets the vector
	 * @param vector
	 */
	void getVector(gfloat[] vector)
	{
		gtk_curve_get_vector(gtkW(), vector.length, &vector[0]);
	}
	
	/**
	 * Sets the vector
	 * @param vector
	 */
	void setVector(gfloat[] vector)
	{
		gtk_curve_set_vector(gtkW(), vector.length, &vector[0]);
	}
	
	/**
	 * Sets the type
	 * @param type the curve type
	 */
	void setCurveType(CurveType type)
	{
		gtk_curve_set_curve_type(gtkW(), type);
	}

}
