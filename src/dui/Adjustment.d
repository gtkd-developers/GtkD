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

module dui.Adjustment;

private import def.Types;
private import dui.DUIObject;

alias GtkObject GtkAdjustment;

private:
extern(C) GtkObject
	* gtk_adjustment_new(
		double value,
		double lower,
		double upper,
		double step_increment,
		double page_increment,
		double page_size);
extern(C) void gtk_adjustment_changed(GtkAdjustment * adjustment);
extern(C) void gtk_adjustment_value_changed(GtkAdjustment * adjustment);
extern(C) void gtk_adjustment_clamp_page(GtkAdjustment * adjustment, double lower, double upper);
extern(C) double gtk_adjustment_get_value(GtkAdjustment * adjustment);
extern(C) void gtk_adjustment_set_value(GtkAdjustment * adjustment, double value);

/**
 * Adjustments are used by the scroll bars, scales, scrolled windows.
 * The same adjustment can be share by more then one widget to sinchronized them.
 * Changind the Adjustment of a widget (a scale widget for example) will change the position
 * of it's pointer
 */
public:
class Adjustment : DUIObject
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] description(){return "Adjustments are used by the scroll bars, scales, scrolled windows.";}
		char[] gtkName(){return SAME_NAME;}
		char[] author(){return "Antonio";}
	}
	
	protected:
	package this(GtkObject * tkObject)
	{
		super(tkObject);
	}

	public:

	/**
	 * Creates a new Adjustment
	 * @param value
	 * @param lower
	 * @param upper
	 * @param stepIncrement
	 * @param pageIncrement
	 * @param pageSize
	 */
	this(double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize)
	{
		this(gtk_adjustment_new(value, lower, upper, stepIncrement, pageIncrement, pageSize));
	}

	/**
	 * changed
	 */
	void changed()
	{
		gtk_adjustment_changed(gtkO());
	}

	/**
	 * valueChanged
	 */
	void valueChanged()
	{
		gtk_adjustment_value_changed(gtkO());
	}

	/**
	 * clampPage
	 * @param lower
	 * @param upper
	 */
	void clampPage(double lower, double upper)
	{
		gtk_adjustment_clamp_page(gtkO(), lower, upper);
	}

	/**
	 * Gets the adjustment value
	 * @return the adjustment value
	 */
	double getValue()
	{
		return gtk_adjustment_get_value(gtkO());
	}

	/**
	 * Sets the adjustment value
	 * @param value the new value
	 */
	void setValue(double value)
	{
		gtk_adjustment_set_value(gtkO(), value);
	}

}
