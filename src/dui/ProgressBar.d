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

module dui.ProgressBar;
private import def.Types;
private import def.Constants;
//private import string;
private import dui.Utils;
private import dui.Widget;

alias GtkWidget GtkProgressBar;

alias int GtkProgressBarOrientation;

extern (C) GType gtk_progress_bar_get_type();
extern (C) GtkWidget * gtk_progress_bar_new();
extern (C) void gtk_progress_bar_pulse(GtkProgressBar * pbar);
extern (C) void gtk_progress_bar_set_text(GtkProgressBar * pbar, gchar * text);
extern (C) void gtk_progress_bar_set_fraction(GtkProgressBar * pbar, gdouble fraction);
extern (C) void gtk_progress_bar_set_pulse_step(GtkProgressBar * pbar, gdouble fraction);
extern (C) void gtk_progress_bar_set_orientation(GtkProgressBar * pbar, GtkProgressBarOrientation orientation);
extern (C) gchar * gtk_progress_bar_get_text(GtkProgressBar * pbar);
extern (C) gdouble gtk_progress_bar_get_fraction(GtkProgressBar * pbar);
extern (C) gdouble gtk_progress_bar_get_pulse_step(GtkProgressBar * pbar);
extern (C) GtkProgressBarOrientation gtk_progress_bar_get_orientation(GtkProgressBar * pbar);

/**
 * A visual representation a the progress for a task
 */
public:
class ProgressBar : Widget
{

	private import dool.String;
	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A visual representation a the progress for a task";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_progress_bar_get_type();
	}
	
	/**
	 * Progress direction
	 */
	public enum {
		LEFT_TO_RIGHT, RIGHT_TO_LEFT, BOTTOM_TO_TOP, TOP_TO_BOTTOM };

	/**
	 * Creates a progress bar from a GtkWidget
	 */
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	/**
	 * Creates a new progress bar
	 */
	this()
	{
		this(gtk_progress_bar_new());	
	}
	
	/**
	 * Executes a pulse
	 */
	void pulse()
	{
		gtk_progress_bar_pulse(gtkW());
	}
	
	/**
	 * Sets the progress bar text
	 * @param text the progress bar text
	 */
	void setText(char [] text)
	{
		gtk_progress_bar_set_text(gtkW(), cChar(text));
	}
	
	/**
	 * Sets the progress bar fraction
	 * @param fraction
	 */
	void setFraction(gdouble fraction)
	{
		gtk_progress_bar_set_fraction(gtkW(), fraction);
	}
	
	/**
	 * Sets the progress bar pulse step
	 * @param pulseStep
	 */
	void setPulseStep(gdouble pulseStep)
	{
		gtk_progress_bar_set_pulse_step(gtkW(), pulseStep);
	}
	
	/**
	 * Sets the progress bar orientation
	 * @param orientation 
	 */
	void setOrientation(GtkProgressBarOrientation orientation)
	{
		gtk_progress_bar_set_orientation(gtkW(), orientation);
	}
	
	/**
	 * Gets the progress bar text
	 * @return the progress bar text
	 */
	String getText()
	{
		//char[] str1 = new char[];
		return String.newz(gtk_progress_bar_get_text(gtkW()));
	}
	
	/**
	 * Gets the fraction ???
	 * @return fraction
	 */
	gdouble getFraction()
	{
		return gtk_progress_bar_get_fraction(gtkW());
	}
	
	/**
	 * Gets the pluse step ???
	 * @return pulseStep
	 */
	gdouble getPulseStep()
	{
		return gtk_progress_bar_get_pulse_step(gtkW());
	}
	
	/**
	 * Gets the process bar orientation
	 * @return orientation
	 */
	GtkProgressBarOrientation getOrientation()
	{
		return gtk_progress_bar_get_orientation(gtkW());
	}

}
