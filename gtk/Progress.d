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
 * outFile = Progress
 * strct   = GtkProgress
 * clss    = Progress
 * prefixes:
 * 	- gtk_progress_
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

module gtk.Progress;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.Adjustment;
/**
 * Description
 * A GtkProgress is the abstract base class used to derive
 * a GtkProgressBar which provides a visual representation of
 * the progress of a long running operation.
 */
private import gtk.Widget;
public class Progress : Widget
{
	
	/** the main Gtk struct */
	protected GtkProgress* gtkProgress;
	
	
	public GtkProgress* getProgressStruct()
	{
		return gtkProgress;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkProgress;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkProgress* gtkProgress)
	{
		super(cast(GtkWidget*)gtkProgress);
		this.gtkProgress = gtkProgress;
	}
	
	/**
	 */
	
	
	/**
	 * Warning
	 * gtk_progress_set_show_text is deprecated and should not be used in newly-written code.
	 * Controls whether progress text is shown.
	 * progress:
	 * a GtkProgress.
	 * show_text:
	 * a boolean indicating whether the progress text
	 * is shown.
	 */
	public void setShowText(int showText)
	{
		// void gtk_progress_set_show_text (GtkProgress *progress,  gboolean show_text);
		gtk_progress_set_show_text(gtkProgress, showText);
	}
	
	/**
	 * Warning
	 * gtk_progress_set_text_alignment is deprecated and should not be used in newly-written code.
	 * Controls the alignment of the text within the progress bar area.
	 * progress:
	 * a GtkProgress.
	 * x_align:
	 * a number between 0.0 and 1.0 indicating the horizontal
	 * alignment of the progress text within the GtkProgress.
	 * y_align:
	 * a number between 0.0 and 1.0 indicating the vertical
	 * alignment of the progress text within the GtkProgress.
	 */
	public void setTextAlignment(float xAlign, float yAlign)
	{
		// void gtk_progress_set_text_alignment (GtkProgress *progress,  gfloat x_align,  gfloat y_align);
		gtk_progress_set_text_alignment(gtkProgress, xAlign, yAlign);
	}
	
	/**
	 * Warning
	 * gtk_progress_set_format_string is deprecated and should not be used in newly-written code.
	 * Sets a format string used to display text indicating the
	 * current progress. The string can contain the following substitution characters:
	 * %v - the current progress value.
	 * %l - the lower bound for the progress value.
	 * %u - the upper bound for the progress value.
	 * %p - the current progress percentage.
	 * progress:
	 * a GtkProgress.
	 * format:
	 * a string used to display progress text, or NULL
	 *  to restore to the default format.
	 */
	public void setFormatString(char[] format)
	{
		// void gtk_progress_set_format_string (GtkProgress *progress,  const gchar *format);
		gtk_progress_set_format_string(gtkProgress, std.string.toStringz(format));
	}
	
	/**
	 * Warning
	 * gtk_progress_set_adjustment is deprecated and should not be used in newly-written code.
	 * Associates a GtkAdjustment with the GtkProgress. A GtkAdjustment
	 * is used to represent the upper and lower bounds and the step interval
	 * of the underlying value for which progress is shown.
	 * progress:
	 * a GtkProgress.
	 * adjustment:
	 * the GtkAdjustment to be associated with the GtkProgress.
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		// void gtk_progress_set_adjustment (GtkProgress *progress,  GtkAdjustment *adjustment);
		gtk_progress_set_adjustment(gtkProgress, adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Warning
	 * gtk_progress_set_percentage is deprecated and should not be used in newly-written code.
	 * Sets the current percentage completion for the GtkProgress.
	 * progress:
	 * a GtkProgress.
	 * percentage:
	 * the percentage complete which must be between 0.0
	 * and 1.0.
	 */
	public void setPercentage(double percentage)
	{
		// void gtk_progress_set_percentage (GtkProgress *progress,  gdouble percentage);
		gtk_progress_set_percentage(gtkProgress, percentage);
	}
	
	/**
	 * Warning
	 * gtk_progress_set_value is deprecated and should not be used in newly-written code.
	 * Sets the value within the GtkProgress to an absolute value.
	 * The value must be within the valid range of values for the
	 * underlying GtkAdjustment.
	 * progress:
	 * a GtkProgress.
	 * value:
	 * the value indicating the current completed amount.
	 */
	public void setValue(double value)
	{
		// void gtk_progress_set_value (GtkProgress *progress,  gdouble value);
		gtk_progress_set_value(gtkProgress, value);
	}
	
	/**
	 * Warning
	 * gtk_progress_get_value is deprecated and should not be used in newly-written code.
	 * Returns the current progress complete value.
	 * progress:
	 * a GtkProgress.
	 * Returns:
	 * the current progress complete value.
	 */
	public double getValue()
	{
		// gdouble gtk_progress_get_value (GtkProgress *progress);
		return gtk_progress_get_value(gtkProgress);
	}
	
	/**
	 * Warning
	 * gtk_progress_set_activity_mode is deprecated and should not be used in newly-written code.
	 * A GtkProgress can be in one of two different modes: percentage
	 * mode (the default) and activity mode. In activity mode, the
	 * progress is simply indicated as activity rather than as a percentage
	 * complete.
	 * progress:
	 * a GtkProgress.
	 * activity_mode:
	 * a boolean, TRUE for activity mode.
	 */
	public void setActivityMode(int activityMode)
	{
		// void gtk_progress_set_activity_mode (GtkProgress *progress,  gboolean activity_mode);
		gtk_progress_set_activity_mode(gtkProgress, activityMode);
	}
	
	/**
	 * Warning
	 * gtk_progress_get_current_text is deprecated and should not be used in newly-written code.
	 * Returns the current text associated with the GtkProgress. This
	 * text is the based on the underlying format string after any substitutions
	 * are made.
	 * progress:
	 * a GtkProgress.
	 * Returns:
	 * the text indicating the current progress.
	 */
	public char[] getCurrentText()
	{
		// gchar* gtk_progress_get_current_text (GtkProgress *progress);
		return std.string.toString(gtk_progress_get_current_text(gtkProgress) );
	}
	
	/**
	 * Warning
	 * gtk_progress_get_text_from_value is deprecated and should not be used in newly-written code.
	 * Returns the text indicating the progress based on the supplied value.
	 * The current value for the GtkProgress remains unchanged.
	 * progress:
	 * a GtkProgress.
	 * value:
	 * an absolute progress value to use when formatting the progress text.
	 * Returns:
	 * a string indicating the progress.
	 */
	public char[] getTextFromValue(double value)
	{
		// gchar* gtk_progress_get_text_from_value  (GtkProgress *progress,  gdouble value);
		return std.string.toString(gtk_progress_get_text_from_value(gtkProgress, value) );
	}
	
	/**
	 * Warning
	 * gtk_progress_get_current_percentage is deprecated and should not be used in newly-written code.
	 * Returns the current progress as a percentage.
	 * progress:
	 * a GtkProgress.
	 * Returns:
	 * a number between 0.0 and 1.0 indicating the percentage complete.
	 */
	public double getCurrentPercentage()
	{
		// gdouble gtk_progress_get_current_percentage  (GtkProgress *progress);
		return gtk_progress_get_current_percentage(gtkProgress);
	}
	
	/**
	 * Warning
	 * gtk_progress_get_percentage_from_value is deprecated and should not be used in newly-written code.
	 * Returns the progress as a percentage calculated from the supplied
	 * absolute progress value.
	 * progress:
	 * a GtkProgress.
	 * value:
	 * an absolute progress value.
	 * Returns:
	 * a number between 0.0 and 1.0 indicating the percentage complete
	 * represented by value.
	 */
	public double getPercentageFromValue(double value)
	{
		// gdouble gtk_progress_get_percentage_from_value  (GtkProgress *progress,  gdouble value);
		return gtk_progress_get_percentage_from_value(gtkProgress, value);
	}
	
	/**
	 * Warning
	 * gtk_progress_configure is deprecated and should not be used in newly-written code.
	 * Allows the configuration of the minimum, maximum, and current values for
	 * the GtkProgress.
	 * progress:
	 * a GtkProgress.
	 * value:
	 * the current progress value.
	 * min:
	 * the minimum progress value.
	 * max:
	 * the maximum progress value.
	 * Property Details
	 * The "activity-mode" property
	 *  "activity-mode" gboolean : Read / Write
	 * If TRUE the GtkProgress is in activity mode, meaning that it signals something is happening, but not how much of the activity is finished. This is used when you're doing something that you don't know how long it will take.
	 * Default value: FALSE
	 */
	public void configure(double value, double min, double max)
	{
		// void gtk_progress_configure (GtkProgress *progress,  gdouble value,  gdouble min,  gdouble max);
		gtk_progress_configure(gtkProgress, value, min, max);
	}
	
	
	
}
