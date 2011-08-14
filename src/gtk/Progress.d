/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkProgress.html
 * outPack = gtk
 * outFile = Progress
 * strct   = GtkProgress
 * realStrct=
 * ctorStrct=
 * clss    = Progress
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_progress_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Progress;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import glib.Str;
private import gtk.Adjustment;



private import gtk.Widget;

/**
 * Description
 * A GtkProgress is the abstract base class used to derive
 * a GtkProgressBar which provides a visual representation of
 * the progress of a long running operation.
 */
public class Progress : Widget
{
	
	/** the main Gtk struct */
	protected GtkProgress* gtkProgress;
	
	
	public GtkProgress* getProgressStruct()
	{
		return gtkProgress;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkProgress;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkProgress* gtkProgress)
	{
		if(gtkProgress is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkProgress);
		if( ptr !is null )
		{
			this = cast(Progress)ptr;
			return;
		}
		super(cast(GtkWidget*)gtkProgress);
		this.gtkProgress = gtkProgress;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkProgress = cast(GtkProgress*)obj;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_progress_set_show_text is deprecated and should not be used in newly-written code.
	 * Controls whether progress text is shown.
	 * Params:
	 * showText = a boolean indicating whether the progress text
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
	 * Params:
	 * xAlign = a number between 0.0 and 1.0 indicating the horizontal
	 * alignment of the progress text within the GtkProgress.
	 * yAlign = a number between 0.0 and 1.0 indicating the vertical
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
	 * Params:
	 * format = a string used to display progress text, or NULL
	 *  to restore to the default format.
	 */
	public void setFormatString(string format)
	{
		// void gtk_progress_set_format_string (GtkProgress *progress,  const gchar *format);
		gtk_progress_set_format_string(gtkProgress, Str.toStringz(format));
	}
	
	/**
	 * Warning
	 * gtk_progress_set_adjustment is deprecated and should not be used in newly-written code.
	 * Associates a GtkAdjustment with the GtkProgress. A GtkAdjustment
	 * is used to represent the upper and lower bounds and the step interval
	 * of the underlying value for which progress is shown.
	 * Params:
	 * adjustment = the GtkAdjustment to be associated with the GtkProgress.
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		// void gtk_progress_set_adjustment (GtkProgress *progress,  GtkAdjustment *adjustment);
		gtk_progress_set_adjustment(gtkProgress, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Warning
	 * gtk_progress_set_percentage is deprecated and should not be used in newly-written code.
	 * Sets the current percentage completion for the GtkProgress.
	 * Params:
	 * percentage = the percentage complete which must be between 0.0
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
	 * Params:
	 * value = the value indicating the current completed amount.
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
	 * Returns: the current progress complete value.
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
	 * Params:
	 * activityMode = a boolean, TRUE for activity mode.
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
	 * Returns: the text indicating the current progress.
	 */
	public string getCurrentText()
	{
		// gchar* gtk_progress_get_current_text (GtkProgress *progress);
		return Str.toString(gtk_progress_get_current_text(gtkProgress));
	}
	
	/**
	 * Warning
	 * gtk_progress_get_text_from_value is deprecated and should not be used in newly-written code.
	 * Returns the text indicating the progress based on the supplied value.
	 * The current value for the GtkProgress remains unchanged.
	 * Params:
	 * value = an absolute progress value to use when formatting the progress text.
	 * Returns: a string indicating the progress.
	 */
	public string getTextFromValue(double value)
	{
		// gchar* gtk_progress_get_text_from_value (GtkProgress *progress,  gdouble value);
		return Str.toString(gtk_progress_get_text_from_value(gtkProgress, value));
	}
	
	/**
	 * Warning
	 * gtk_progress_get_current_percentage is deprecated and should not be used in newly-written code.
	 * Returns the current progress as a percentage.
	 * Returns: a number between 0.0 and 1.0 indicating the percentage complete.
	 */
	public double getCurrentPercentage()
	{
		// gdouble gtk_progress_get_current_percentage (GtkProgress *progress);
		return gtk_progress_get_current_percentage(gtkProgress);
	}
	
	/**
	 * Warning
	 * gtk_progress_get_percentage_from_value is deprecated and should not be used in newly-written code.
	 * Returns the progress as a percentage calculated from the supplied
	 * absolute progress value.
	 * Params:
	 * value = an absolute progress value.
	 * Returns: a number between 0.0 and 1.0 indicating the percentage complete represented by value.
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
	 * Params:
	 * value = the current progress value.
	 * min = the minimum progress value.
	 * max = the maximum progress value.
	 */
	public void configure(double value, double min, double max)
	{
		// void gtk_progress_configure (GtkProgress *progress,  gdouble value,  gdouble min,  gdouble max);
		gtk_progress_configure(gtkProgress, value, min, max);
	}
}
