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

module dui.Ruler;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import lib.gtk;

/**
 * Base class for horizontal or vertical rulers.
 */
public:
class Ruler :
		Widget
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Base class for horizontal or vertical rulers";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_ruler_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	/**
	 * Sets the metric type
	 * @param metric the metric type
	 */
	void setMetric(MetricType metric)
	{
		gtk_ruler_set_metric(gtkW(), metric);
	}
	
	/**
	 * Sets the range values
	 * @param lower
	 * @param upper
	 * @param position
	 * @param maxSize
	 */
	void setRange(gdouble lower, gdouble upper, gdouble position, gdouble maxSize)
	{
		gtk_ruler_set_range(gtkW(), lower, upper, position, maxSize);
	}
	
	/**
	 * Gets the metric type
	 * @ return the metric type
	 */
	MetricType getMetric()
	{
		return gtk_ruler_get_metric(gtkW());
	}
	
	/**
	 * Gets the range values
	 * @param lower
	 * @param upper
	 * @param position
	 * @param maxSize
	 */
	void getRange(gdouble * lower, gdouble * upper, gdouble * position, gdouble * maxSize)
	{
		gtk_ruler_get_range(gtkW(), lower, upper, position, maxSize);
	}
}
