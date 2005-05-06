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

module dui.AccelLabel;
private import def.Types;
private import dui.Utils;
private import dui.ObjectG;
private import dui.Widget;
private import dui.Label;
private import lib.gtk;

/**
 * AccelLabel
 */
public:
class AccelLabel : Label
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "AccelLabel";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	void* gtk()
	{
		return cast(void*)gObject;
	}


	/**
	 * Create a new AccelLabel
	 */
	this(char [] string)
	{
		this(gtk_accel_label_new(cChar(string)));
	}
	
	/**
	 * Creates a new AccelLabel
	 */
	this(AccelLabel accelLabel)
	{
		this(gtk_accel_label_get_accel_widget(accelLabel.gtkW()));
	}

	/**
	 * gets the widget to wich this accelLabe is associated
	 * @return the widget
	 */
	Widget getAccelWidget()
	{
		return new Widget(gtk_accel_label_get_accel_widget(gtkW()));
	}

	
	/**
	 * Gets the width of the accelLabel ????
	 * @return the width of the accelLabel
	 */
	guint getAccelWidth()
	{
		return gtk_accel_label_get_accel_width(gtkW());
	}

	/**
	 * Sets and accelLabel for a widget ???
	 * @param accelWidget
	 */
	void setAccelWidget(Widget accelWidget)
	{
		gtk_accel_label_set_accel_widget(gtkW(), accelWidget.gtkW());
	}

	/**
	 * @param accel_closure
	 */
	void setAccelClosure(GClosure * accel_closure)
	{
		gtk_accel_label_set_accel_closure(gtkW(), accel_closure);
	}

	/**
	 * Gets refetch
	 * @return refetch
	 */
	bit refetch()
	{
		return gtk_accel_label_refetch(gtkW())==0?false:true;
	}

}
