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

module dui.SpinButton;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Entry;
private import dui.Adjustment;
private import lib.gtk;

/**
 * A visual selector for sequencial numeric values within a range.
 */
public:
class SpinButton : Entry
{
	public:

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}
	
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_spin_button_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Creates a new spin button.
	 * @param adjustment
	 * @param climbRate
	 * @param digits
	 */
	this(Adjustment adjustment, gdouble climbRate, guint digits)
	{
		this(gtk_spin_button_new(adjustment.gtkO(), climbRate,digits));
	}
	
	/**
	 * Creates a new spin button
	 * @param min
	 * @param max
	 * @param step
	 */
	this(gdouble min, gdouble max, gdouble step)
	{
		this(gtk_spin_button_new_with_range( min, max, step));
	}

	/**
	 * Configures this spin button parameters
	 * @param adjustment the new adjustment
	 * @param climb_rate the spin step
	 * @param digits the number of digits to the right of the decimal point
	 */
	void configure(Adjustment adjustment, gdouble climb_rate, guint digits)
	{
		gtk_spin_button_configure(gtkW(), adjustment.gtkO(), climb_rate, digits);
	}

	/**
	 * Sets this spin buttons adjustment
	 * @param adjustment the adjustment
	 */
	void setAdjustment(Adjustment adjustment)
	{
		gtk_spin_button_set_adjustment(gtkW(), adjustment.gtkO());
	}
	
	/**
	 * Gets this spin buttons adjustment
	 * @return the adjustment
	 */
	Adjustment getAdjustement()
	{
		return new Adjustment(gtk_spin_button_get_adjustment(gtkW()));
	}

	/**
	 * Sets the number of digits to the right of the decimal point
	 * @param digits the number of digits to the right of the decimal point
	 */
	void setDigits(guint digits)
	{
		gtk_spin_button_set_digits(gtkW(), digits);
	}
	
	/**
	 * Gets the number of digits to the right of the decimal point
	 * @return the number of digits to the right of the decimal point
	 */
	guint getDigits()
	{
		return gtk_spin_button_get_digits(gtkW());
	}
	
	/**
	 * Setes the increments for this spin button
	 * @param step the small increment
	 * @param page the larger increment (where is it???)
	 */
	void setIncrements(gdouble step, gdouble page)
	{
		gtk_spin_button_set_increments(gtkW(), step, page);
	}
	
	/**
	 * Gets the imcrements for this spin button
	 * @param step teh small increament
	 * @param page the larger increment (where is it???)
	 */
	void getIncrements(gdouble * step, gdouble * page)
	{
		gtk_spin_button_get_increments(gtkW(), step, page);
	}
	
	/**
	 * Sets the valid range for this spin
	 * @param min
	 * @param max
	 */
	void setRange(gdouble min, gdouble max)
	{
		gtk_spin_button_set_range(gtkW(), min, max);
	}
	
	/**
	 * Gets the valid minimum and maximum values
	 * @param min
	 * @param max
	 */
	void getRange(gdouble * min, gdouble * max)
	{
		gtk_spin_button_get_range(gtkW(), min, max);
	}
	
	/**
	 * Gets the current value as a double
	 * @return the current values as a double
	 */
	gdouble getValue()
	{
		return gtk_spin_button_get_value(gtkW());
	}
	
	/**
	 * Gest the current value as an integer
	 * @return the current values as an integer
	 */
	gint getValueAsInt()
	{
		return gtk_spin_button_get_value_as_int(gtkW());
	}
	
	/**
	 * Sets the value
	 * @param value the new value
	 */
	void setValue(gdouble value)
	{
		gtk_spin_button_set_value(gtkW(), value);
	}
	
	/**
	 * Sets the update pllicy
	 * @param policy the update policy
	 */
	void setUpdatePolicy(GtkSpinButtonUpdatePolicy policy)
	{
		gtk_spin_button_set_update_policy(gtkW(), policy);
	}
	
	/**
	 * Gets the update policy
	 * @return the update policy
	 */
	GtkSpinButtonUpdatePolicy getUpdatePolicy()
	{
		return gtk_spin_button_get_update_policy(gtkW());
	}

	/**
	 * Sets the value to be force to be numeric???
	 * @param numeric
	 */
	void setNumeric(bit numeric)
	{
		gtk_spin_button_set_numeric(gtkW(), numeric);
	}
	
	/**
	 * Check if the current value is numeric ???
	 * @return true if the current value is numeric
	 */
	bit getNumeric()
	{
		return gtk_spin_button_get_numeric(gtkW())==0 ? false : true;
	}
	
	/**
	 * Sets the spin direction and increment
	 * @param direction the spin direction
	 * @param increment the spin increments
	 */
	void spin(GtkSpinType direction, gdouble increment)
	{
		gtk_spin_button_spin(gtkW(), direction, increment);
	}
	
	/**
	 * Set the wrapping mode
	 * @param wrap if true the value will wrap the top or bottom limits are reached
	 */
	void setWrap(bit wrap)
	{
		gtk_spin_button_set_wrap(gtkW(), wrap);
	}
	
	/**
	 * Checks if the value will wrap when reaches the top or bottom range limites
	 * @return true is the value will wrap
	 */
	bit getWrap()
	{
		return gtk_spin_button_get_wrap(gtkW()) == 0 ? false : true;
	}

	/**
	 * Set snap to ticks
	 * @param snapToTicks
	 */
	void setSnapToTicks(bit snapToTicks)
	{
		gtk_spin_button_set_snap_to_ticks(gtkW(), snapToTicks);
	}

	/**
	 * get Snat to tics
	 * @return
	 */
	bit getSnapToTics()
	{
		return gtk_spin_button_get_snap_to_ticks(gtkW()) == 0 ? false : true ;
	}
	
	/**
	 * Update
	 */
	void update()
	{
		gtk_spin_button_update(gtkW());
	}

}
