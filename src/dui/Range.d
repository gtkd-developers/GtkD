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


module dui.Range;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Adjustment;

public:
alias GtkWidget GtkRange;
alias int GtkUpdateType;

private:

extern(C) GType gtk_range_get_type();
extern(C) void gtk_range_set_update_policy(GtkRange * range, GtkUpdateType policy);
extern(C)GtkUpdateType gtk_range_get_update_policy(GtkRange * range);
extern(C) void gtk_range_set_adjustment(GtkRange * range, GtkAdjustment * adjustment);
extern(C)GtkAdjustment * gtk_range_get_adjustment(GtkRange * range);
extern(C) void gtk_range_set_inverted(GtkRange * range, gboolean setting);
extern(C)gboolean gtk_range_get_inverted(GtkRange * range);
extern(C) void gtk_range_set_increments(GtkRange * range, gdouble step, gdouble page);
extern(C) void gtk_range_set_range(GtkRange * range, gdouble min, gdouble max);
extern(C) void gtk_range_set_value(GtkRange * range, gdouble value);
extern(C)gdouble gtk_range_get_value(GtkRange * range);

/**
 * Range 
 */
public:
class Range : Widget
{



	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Range";}
		char[] author(){return "Antonio";}
	}
	
	public:
	public enum {
		CONTINUOUS, DISCONTINUOUS, DELAYED
	};

	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_range_get_type();
	}
	
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Sets the range update policy
	 * @param policy the new update policy
	 */
	void setUpdatePolicy(GtkUpdateType policy)
	{
		gtk_range_set_update_policy(gtkW(), policy);
	}

	/**
	 * Gets the range update policy
	 * @return the update policy
	 */
	GtkUpdateType getUpdatePolicy()
	{
		return gtk_range_get_update_policy(gtkW());
	}

	/**
	 * Sets the adjustment for this range
	 * @param adjustment 
	 */
	void setAdjustment(Adjustment adjustment)
	{
		gtk_range_set_adjustment(gtkW(), adjustment.gtkO());
	}
	
	/**
	 * Gets the adjustment associated with thi range
	 * @return the adjustment
	 */
	Adjustment getAdjustment()
	{
		return new Adjustment(gtk_range_get_adjustment(gtkW()));
	}
	
	/**
	 * Sets the inverted state
	 * @param setting the new inverted state
	 */
	void setInverted(bit setting)
	{
		gtk_range_set_inverted(gtkW(), setting);
	}
	
	/**
	 * Gets the inverted state
	 * @return true if inverted
	 */
	bit getINverted()
	{
		return gtk_range_get_inverted(gtkW()) == 0 ? false : true;
	}
	
	/**
	 * Sets this range increments
	 * @param step the small increment
	 * @param page the larger increment
	 */
	void setIncrements(gdouble step, gdouble page)
	{
		gtk_range_set_increments(gtkW(), step, page);
	}
	
	/**
	 * Sets this Range valid range
	 * @param min
	 * @param max
	 */
	void setRange(gdouble min, gdouble max)
	{
		gtk_range_set_range(gtkW(), min, max);
	}
	
	/**
	 * Sets the range value
	 * @param value the new value
	 */
	void setValue(gdouble value)
	{
		gtk_range_set_value(gtkW(), value);
	}
	
	/**
	 * Gets the current value
	 * @return the current value
	 */
	gdouble getValue()
	{
		return gtk_range_get_value(gtkW());
	}

}
