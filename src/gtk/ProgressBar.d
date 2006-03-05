/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = ProgressBar
 * strct   = GtkProgressBar
 * realStrct=
 * clss    = ProgressBar
 * extend  = 
 * prefixes:
 * 	- gtk_progress_bar_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * local aliases:
 */

module gtk.ProgressBar;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.Adjustment;
/**
 * Description
 * The GtkProgressBar is typically used to display the progress of a long
 * running operation. It provides a visual clue that processing
 * is underway. The GtkProgressBar can be used in two different
 * modes: percentage mode and activity mode.
 * When an application can determine how much work needs to take place
 * (e.g. read a fixed number of bytes from a file) and can monitor its
 * progress, it can use the GtkProgressBar in percentage mode and the user
 * sees a growing bar indicating the percentage of the work that has
 * been completed. In this mode, the application is required to call
 * gtk_progress_bar_set_fraction() periodically to update the progress bar.
 * When an application has no accurate way of knowing the amount of work
 * to do, it can use the GtkProgressBar in activity mode, which shows activity
 * by a block moving back and forth within the progress area. In this mode,
 * the application is required to call gtk_progress_bar_pulse() perodically
 * to update the progress bar.
 * There is quite a bit of flexibility provided to control the appearance
 * of the GtkProgressBar. Functions are provided to control the
 * orientation of the bar, optional text can be displayed along with
 * the bar, and the step size used in activity mode can be set.
 * Note
 * The GtkProgressBar/GtkProgress API in GTK 1.2 was bloated, needlessly complex
 * and hard to use properly. Therefore GtkProgress has been deprecated
 * completely and the GtkProgressBar API has been reduced to the following 10
 * functions: gtk_progress_bar_new(), gtk_progress_bar_pulse(),
 * gtk_progress_bar_set_text(), gtk_progress_bar_set_fraction(),
 * gtk_progress_bar_set_pulse_step(), gtk_progress_bar_set_orientation(),
 * gtk_progress_bar_get_text(), gtk_progress_bar_get_fraction(),
 * gtk_progress_bar_get_pulse_step(), gtk_progress_bar_get_orientation().
 * These have been grouped at the beginning of this section, followed by
 * a large chunk of deprecated 1.2 compatibility functions.
 */
private import gtk.Progress;
public class ProgressBar : Progress
{
	
	/** the main Gtk struct */
	protected GtkProgressBar* gtkProgressBar;
	
	
	public GtkProgressBar* getProgressBarStruct()
	{
		return gtkProgressBar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkProgressBar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkProgressBar* gtkProgressBar)
	{
		super(cast(GtkProgress*)gtkProgressBar);
		this.gtkProgressBar = gtkProgressBar;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkProgressBar.
	 * Returns:
	 * a GtkProgressBar.
	 */
	public this ()
	{
		// GtkWidget* gtk_progress_bar_new (void);
		this(cast(GtkProgressBar*)gtk_progress_bar_new() );
	}
	
	/**
	 * Indicates that some progress is made, but you don't know how much.
	 * Causes the progress bar to enter "activity mode," where a block
	 * bounces back and forth. Each call to gtk_progress_bar_pulse()
	 * causes the block to move by a little bit (the amount of movement
	 * per pulse is determined by gtk_progress_bar_set_pulse_step()).
	 * pbar:
	 *  a GtkProgressBar
	 */
	public void pulse()
	{
		// void gtk_progress_bar_pulse (GtkProgressBar *pbar);
		gtk_progress_bar_pulse(gtkProgressBar);
	}
	
	/**
	 * Causes the given text to appear superimposed on the progress bar.
	 * pbar:
	 *  a GtkProgressBar
	 * text:
	 *  a UTF-8 string
	 */
	public void setText(char[] text)
	{
		// void gtk_progress_bar_set_text (GtkProgressBar *pbar,  const gchar *text);
		gtk_progress_bar_set_text(gtkProgressBar, std.string.toStringz(text));
	}
	
	/**
	 * Causes the progress bar to "fill in" the given fraction
	 * of the bar. The fraction should be between 0.0 and 1.0,
	 * inclusive.
	 * pbar:
	 *  a GtkProgressBar
	 * fraction:
	 *  fraction of the task that's been completed
	 */
	public void setFraction(double fraction)
	{
		// void gtk_progress_bar_set_fraction (GtkProgressBar *pbar,  gdouble fraction);
		gtk_progress_bar_set_fraction(gtkProgressBar, fraction);
	}
	
	/**
	 * Sets the fraction of total progress bar length to move the
	 * bouncing block for each call to gtk_progress_bar_pulse().
	 * pbar:
	 *  a GtkProgressBar
	 * fraction:
	 *  fraction between 0.0 and 1.0
	 */
	public void setPulseStep(double fraction)
	{
		// void gtk_progress_bar_set_pulse_step (GtkProgressBar *pbar,  gdouble fraction);
		gtk_progress_bar_set_pulse_step(gtkProgressBar, fraction);
	}
	
	/**
	 * Causes the progress bar to switch to a different orientation
	 * (left-to-right, right-to-left, top-to-bottom, or bottom-to-top).
	 * pbar:
	 *  a GtkProgressBar
	 * orientation:
	 *  orientation of the progress bar
	 */
	public void setOrientation(GtkProgressBarOrientation orientation)
	{
		// void gtk_progress_bar_set_orientation  (GtkProgressBar *pbar,  GtkProgressBarOrientation orientation);
		gtk_progress_bar_set_orientation(gtkProgressBar, orientation);
	}
	
	/**
	 * Sets the mode used to ellipsize (add an ellipsis: "...") the text
	 * if there is not enough space to render the entire string.
	 * pbar:
	 *  a GtkProgressBar
	 * mode:
	 *  a PangoEllipsizeMode
	 * Since 2.6
	 */
	public void setEllipsize(PangoEllipsizeMode mode)
	{
		// void gtk_progress_bar_set_ellipsize (GtkProgressBar *pbar,  PangoEllipsizeMode mode);
		gtk_progress_bar_set_ellipsize(gtkProgressBar, mode);
	}
	
	
	/**
	 * Retrieves the text displayed superimposed on the progress bar,
	 * if any, otherwise NULL. The return value is a reference
	 * to the text, not a copy of it, so will become invalid
	 * if you change the text in the progress bar.
	 * pbar:
	 *  a GtkProgressBar
	 * Returns:
	 *  text, or NULL; this string is owned by the widget
	 * and should not be modified or freed.
	 */
	public char[] getText()
	{
		// const gchar* gtk_progress_bar_get_text (GtkProgressBar *pbar);
		return std.string.toString(gtk_progress_bar_get_text(gtkProgressBar) );
	}
	
	/**
	 * Returns the current fraction of the task that's been completed.
	 * pbar:
	 *  a GtkProgressBar
	 * Returns:
	 *  a fraction from 0.0 to 1.0
	 */
	public double getFraction()
	{
		// gdouble gtk_progress_bar_get_fraction (GtkProgressBar *pbar);
		return gtk_progress_bar_get_fraction(gtkProgressBar);
	}
	
	/**
	 * Retrieves the pulse step set with gtk_progress_bar_set_pulse_step()
	 * pbar:
	 *  a GtkProgressBar
	 * Returns:
	 *  a fraction from 0.0 to 1.0
	 */
	public double getPulseStep()
	{
		// gdouble gtk_progress_bar_get_pulse_step (GtkProgressBar *pbar);
		return gtk_progress_bar_get_pulse_step(gtkProgressBar);
	}
	
	/**
	 * Retrieves the current progress bar orientation.
	 * pbar:
	 *  a GtkProgressBar
	 * Returns:
	 *  orientation of the progress bar
	 */
	public GtkProgressBarOrientation getOrientation()
	{
		// GtkProgressBarOrientation gtk_progress_bar_get_orientation  (GtkProgressBar *pbar);
		return gtk_progress_bar_get_orientation(gtkProgressBar);
	}
	
	/**
	 * Returns the ellipsizing position of the progressbar.
	 * See gtk_progress_bar_set_ellipsize().
	 * pbar:
	 *  a GtkProgressBar
	 * Returns:
	 *  PangoEllipsizeMode
	 * Since 2.6
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		// PangoEllipsizeMode gtk_progress_bar_get_ellipsize  (GtkProgressBar *pbar);
		return gtk_progress_bar_get_ellipsize(gtkProgressBar);
	}
	
	/**
	 * Warning
	 * gtk_progress_bar_new_with_adjustment is deprecated and should not be used in newly-written code.
	 * Creates a new GtkProgressBar with an associated GtkAdjustment.
	 * adjustment:
	 * a GtkAdjustment.
	 * Returns:
	 * a GtkProgressBar.
	 */
	public this (Adjustment adjustment)
	{
		// GtkWidget* gtk_progress_bar_new_with_adjustment  (GtkAdjustment *adjustment);
		this(cast(GtkProgressBar*)gtk_progress_bar_new_with_adjustment((adjustment is null) ? null : adjustment.getAdjustmentStruct()) );
	}
	
	/**
	 * Warning
	 * gtk_progress_bar_set_bar_style is deprecated and should not be used in newly-written code.
	 * Sets the style of the GtkProgressBar. The default style is
	 * GTK_PROGRESS_CONTINUOUS.
	 * pbar:
	 * a GtkProgressBar.
	 * style:
	 * a GtkProgressBarStyle value indicating the desired style.
	 */
	public void setBarStyle(GtkProgressBarStyle style)
	{
		// void gtk_progress_bar_set_bar_style (GtkProgressBar *pbar,  GtkProgressBarStyle style);
		gtk_progress_bar_set_bar_style(gtkProgressBar, style);
	}
	
	
	/**
	 * Warning
	 * gtk_progress_bar_set_discrete_blocks is deprecated and should not be used in newly-written code.
	 * Sets the number of blocks that the progress bar is divided into
	 * when the style is GTK_PROGRESS_DISCRETE.
	 * pbar:
	 * a GtkProgressBar.
	 * blocks:
	 * number of individual blocks making up the bar.
	 */
	public void setDiscreteBlocks(uint blocks)
	{
		// void gtk_progress_bar_set_discrete_blocks  (GtkProgressBar *pbar,  guint blocks);
		gtk_progress_bar_set_discrete_blocks(gtkProgressBar, blocks);
	}
	
	/**
	 * Warning
	 * gtk_progress_bar_set_activity_step is deprecated and should not be used in newly-written code.
	 * Sets the step value used when the progress bar is in activity
	 * mode. The step is the amount by which the progress is incremented
	 * each iteration.
	 * pbar:
	 * a GtkProgressBar.
	 * step:
	 * the amount which the progress is incremented in activity
	 * mode.
	 */
	public void setActivityStep(uint step)
	{
		// void gtk_progress_bar_set_activity_step  (GtkProgressBar *pbar,  guint step);
		gtk_progress_bar_set_activity_step(gtkProgressBar, step);
	}
	
	/**
	 * Warning
	 * gtk_progress_bar_set_activity_blocks is deprecated and should not be used in newly-written code.
	 * Sets the number of blocks used when the progress bar is in activity
	 * mode. Larger numbers make the visible block smaller.
	 * pbar:
	 * a GtkProgressBar.
	 * blocks:
	 * number of blocks which can fit within the progress bar area.
	 */
	public void setActivityBlocks(uint blocks)
	{
		// void gtk_progress_bar_set_activity_blocks  (GtkProgressBar *pbar,  guint blocks);
		gtk_progress_bar_set_activity_blocks(gtkProgressBar, blocks);
	}
	
	/**
	 * Warning
	 * gtk_progress_bar_update is deprecated and should not be used in newly-written code.
	 * This function is deprecated. Please use gtk_progress_set_value() or
	 * gtk_progress_set_percentage() instead.
	 * pbar:
	 * a GtkProgressBar.
	 * percentage:
	 * the new percent complete value.
	 * Property Details
	 * The "activity-blocks" property
	 *  "activity-blocks" guint : Read / Write
	 * The number of blocks which can fit in the progress bar area in activity mode (Deprecated).
	 * Allowed values: >= 2
	 * Default value: 5
	 */
	public void update(double percentage)
	{
		// void gtk_progress_bar_update (GtkProgressBar *pbar,  gdouble percentage);
		gtk_progress_bar_update(gtkProgressBar, percentage);
	}
	
	
	
	
	
	
	
	
	
}
