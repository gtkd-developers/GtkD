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

module dui.Tooltips;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.DUI;
private import dui.ObjectG;
private import dui.Widget;


alias GObject GtkTooltips;

private:

extern (C)
{
	GType gtk_tooltips_get_type();
	GtkTooltips * gtk_tooltips_new();

	void gtk_tooltips_enable(GtkTooltips * tooltips);
	void gtk_tooltips_disable(GtkTooltips * tooltips);
	void gtk_tooltips_set_tip(GtkTooltips * tooltips, GtkWidget * widget, gchar * tip_text, gchar * tip_private);
	//GtkTooltipsData * gtk_tooltips_data_get(GtkWidget * widget);
	void gtk_tooltips_force_window(GtkTooltips * tooltips);
}

/**
 * A text associated width a widget to display when the pointer stays on the widget for a period ot time.
 */
 public:
class Tooltips : ObjectG
{

	private import dool.String;

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A text associated width a widget to display when the pointer stays on the widget for a period ot time";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_tooltips_get_type();
	}
	

	this(GObject * gObject)
	{
		super(gObject);
	}

	public:

	void* gtk()
	{
		return cast(void*)gObject;
	}

	/**
	 * Creates a new tooltip
	 */
	this()
	{
		this(gtk_tooltips_new());

	}
	
	/**
	 * Enable this tooltip
	 */
	void enable()
	{
		gtk_tooltips_enable(obj());
	}
	
	/**
	 * Disable this tooltip
	 */
	void disable()
	{
		gtk_tooltips_disable(obj());
	}
	
	/**
	 * Attaches this tooltip to a widget and sets it's text values
	 * @param widget the widget
	 * @param tip_text the tolltip text
	 * @param tip_private
	 */
	void setTip(Widget widget, String tip_text, String tip_private)
	{
		gtk_tooltips_set_tip(obj(), widget.gtkW(), tip_text.toStringz(), tip_private.toStringz());
	}
	
	//GtkTooltipsData * gtk_tooltips_data_get(GtkWidget * widget);
	
	/**
	 * force window (force display of this tooltip?)
	 * \todo chek usage
	 */
	void forceWindow()
	{
		gtk_tooltips_force_window(obj());
	}

}
