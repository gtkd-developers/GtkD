/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkProgressBar.html
 * outPack = gtk
 * outFile = ProgressBar
 * strct   = GtkProgressBar
 * realStrct=
 * ctorStrct=
 * clss    = ProgressBar
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_progress_bar_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ProgressBar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gtk.Widget;

/**
 * The GtkProgressBar is typically used to display the progress of a long
 * running operation. It provides a visual clue that processing
 * is underway. The GtkProgressBar can be used in two different
 * modes: percentage mode and activity mode.
 *
 * When an application can determine how much work needs to take place
 * (e.g. read a fixed number of bytes from a file) and can monitor its
 * progress, it can use the GtkProgressBar in percentage mode and the user
 * sees a growing bar indicating the percentage of the work that has
 * been completed. In this mode, the application is required to call
 * gtk_progress_bar_set_fraction() periodically to update the progress bar.
 *
 * When an application has no accurate way of knowing the amount of work
 * to do, it can use the GtkProgressBar in activity mode, which shows
 * activity by a block moving back and forth within the progress area. In
 * this mode, the application is required to call gtk_progress_bar_pulse()
 * periodically to update the progress bar.
 *
 * There is quite a bit of flexibility provided to control the appearance
 * of the GtkProgressBar. Functions are provided to control the
 * orientation of the bar, optional text can be displayed along with
 * the bar, and the step size used in activity mode can be set.
 */
public class ProgressBar : Widget
{
	
	/** the main Gtk struct */
	protected GtkProgressBar* gtkProgressBar;
	
	
	public GtkProgressBar* getProgressBarStruct()
	{
		return gtkProgressBar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkProgressBar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkProgressBar* gtkProgressBar)
	{
		super(cast(GtkWidget*)gtkProgressBar);
		this.gtkProgressBar = gtkProgressBar;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkProgressBar = cast(GtkProgressBar*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkProgressBar.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_progress_bar_new (void);
		auto p = gtk_progress_bar_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_progress_bar_new()");
		}
		this(cast(GtkProgressBar*) p);
	}
	
	/**
	 * Indicates that some progress has been made, but you don't know how much.
	 * Causes the progress bar to enter "activity mode," where a block
	 * bounces back and forth. Each call to gtk_progress_bar_pulse()
	 * causes the block to move by a little bit (the amount of movement
	 * per pulse is determined by gtk_progress_bar_set_pulse_step()).
	 */
	public void pulse()
	{
		// void gtk_progress_bar_pulse (GtkProgressBar *pbar);
		gtk_progress_bar_pulse(gtkProgressBar);
	}
	
	/**
	 * Causes the progress bar to "fill in" the given fraction
	 * of the bar. The fraction should be between 0.0 and 1.0,
	 * inclusive.
	 * Params:
	 * fraction = fraction of the task that's been completed
	 */
	public void setFraction(double fraction)
	{
		// void gtk_progress_bar_set_fraction (GtkProgressBar *pbar,  gdouble fraction);
		gtk_progress_bar_set_fraction(gtkProgressBar, fraction);
	}
	
	/**
	 * Returns the current fraction of the task that's been completed.
	 * Returns: a fraction from 0.0 to 1.0
	 */
	public double getFraction()
	{
		// gdouble gtk_progress_bar_get_fraction (GtkProgressBar *pbar);
		return gtk_progress_bar_get_fraction(gtkProgressBar);
	}
	
	/**
	 * Progress bars normally grow from top to bottom or left to right.
	 * Inverted progress bars grow in the opposite direction.
	 * Params:
	 * inverted = TRUE to invert the progress bar
	 */
	public void setInverted(int inverted)
	{
		// void gtk_progress_bar_set_inverted (GtkProgressBar *pbar,  gboolean inverted);
		gtk_progress_bar_set_inverted(gtkProgressBar, inverted);
	}
	
	/**
	 * Gets the value set by gtk_progress_bar_set_inverted().
	 * Returns: TRUE if the progress bar is inverted
	 */
	public int getInverted()
	{
		// gboolean gtk_progress_bar_get_inverted (GtkProgressBar *pbar);
		return gtk_progress_bar_get_inverted(gtkProgressBar);
	}
	
	/**
	 * Sets whether the progress bar will show text superimposed
	 * over the bar. The shown text is either the value of
	 * the "text" property or, if that is NULL,
	 * the "fraction" value, as a percentage.
	 * To make a progress bar that is styled and sized suitably for containing
	 * text (even if the actual text is blank), set "show-text" to
	 * TRUE and "text" to the empty string (not NULL).
	 * Params:
	 * showText = whether to show superimposed text
	 * Since 3.0
	 */
	public void setShowText(int showText)
	{
		// void gtk_progress_bar_set_show_text (GtkProgressBar *pbar,  gboolean show_text);
		gtk_progress_bar_set_show_text(gtkProgressBar, showText);
	}
	
	/**
	 * Gets the value of the "show-text" property.
	 * See gtk_progress_bar_set_show_text().
	 * Returns: TRUE if text is shown in the progress bar Since 3.0
	 */
	public int getShowText()
	{
		// gboolean gtk_progress_bar_get_show_text (GtkProgressBar *pbar);
		return gtk_progress_bar_get_show_text(gtkProgressBar);
	}
	
	/**
	 * Causes the given text to appear superimposed on the progress bar.
	 * If text is NULL and "show-text" is TRUE, the current
	 * value of "fraction" will be displayed as a percentage.
	 * If text is non-NULL and "show-text" is TRUE, the text will
	 * be displayed. In this case, it will not display the progress percentage.
	 * If text is the empty string, the progress bar will still be styled and sized
	 * suitably for containing text, as long as "show-text" is TRUE.
	 * Params:
	 * text = a UTF-8 string, or NULL. [allow-none]
	 */
	public void setText(string text)
	{
		// void gtk_progress_bar_set_text (GtkProgressBar *pbar,  const gchar *text);
		gtk_progress_bar_set_text(gtkProgressBar, Str.toStringz(text));
	}
	
	/**
	 * Retrieves the text displayed superimposed on the progress bar,
	 * if any, otherwise NULL. The return value is a reference
	 * to the text, not a copy of it, so will become invalid
	 * if you change the text in the progress bar.
	 * Returns: text, or NULL; this string is owned by the widget and should not be modified or freed.
	 */
	public string getText()
	{
		// const gchar * gtk_progress_bar_get_text (GtkProgressBar *pbar);
		return Str.toString(gtk_progress_bar_get_text(gtkProgressBar));
	}
	
	/**
	 * Sets the mode used to ellipsize (add an ellipsis: "...") the text
	 * if there is not enough space to render the entire string.
	 * Since 2.6
	 * Params:
	 * mode = a PangoEllipsizeMode
	 */
	public void setEllipsize(PangoEllipsizeMode mode)
	{
		// void gtk_progress_bar_set_ellipsize (GtkProgressBar *pbar,  PangoEllipsizeMode mode);
		gtk_progress_bar_set_ellipsize(gtkProgressBar, mode);
	}
	
	/**
	 * Returns the ellipsizing position of the progress bar.
	 * See gtk_progress_bar_set_ellipsize().
	 * Since 2.6
	 * Returns: PangoEllipsizeMode
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		// PangoEllipsizeMode gtk_progress_bar_get_ellipsize (GtkProgressBar *pbar);
		return gtk_progress_bar_get_ellipsize(gtkProgressBar);
	}
	
	/**
	 * Sets the fraction of total progress bar length to move the
	 * bouncing block for each call to gtk_progress_bar_pulse().
	 * Params:
	 * fraction = fraction between 0.0 and 1.0
	 */
	public void setPulseStep(double fraction)
	{
		// void gtk_progress_bar_set_pulse_step (GtkProgressBar *pbar,  gdouble fraction);
		gtk_progress_bar_set_pulse_step(gtkProgressBar, fraction);
	}
	
	/**
	 * Retrieves the pulse step set with gtk_progress_bar_set_pulse_step().
	 * Returns: a fraction from 0.0 to 1.0
	 */
	public double getPulseStep()
	{
		// gdouble gtk_progress_bar_get_pulse_step (GtkProgressBar *pbar);
		return gtk_progress_bar_get_pulse_step(gtkProgressBar);
	}
}
