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

public:

alias GtkDrawingArea GtkCurve;

alias CurveType GtkCurveType;

private:

extern(C)
{
	GtkWidget * gtk_curve_new();
	void gtk_curve_reset(GtkCurve * curve);
	void gtk_curve_set_gamma(GtkCurve * curve, gfloat gamma_);
	void gtk_curve_set_range(GtkCurve * curve, gfloat min_x, gfloat max_x, gfloat min_y, gfloat max_y);
	void gtk_curve_get_vector(GtkCurve * curve, int veclen, gfloat* vector);
	void gtk_curve_set_vector(GtkCurve * curve, int veclen, gfloat* vector);
	void gtk_curve_set_curve_type(GtkCurve * curve, GtkCurveType type);
};

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
