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


module gtk.ProgressBar;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkProgressBar is typically used to display the progress of a long
 * running operation. It provides a visual clue that processing is underway.
 * The GtkProgressBar can be used in two different modes: percentage mode
 * and activity mode.
 * 
 * When an application can determine how much work needs to take place
 * (e.g. read a fixed number of bytes from a file) and can monitor its
 * progress, it can use the GtkProgressBar in percentage mode and the
 * user sees a growing bar indicating the percentage of the work that
 * has been completed. In this mode, the application is required to call
 * gtk_progress_bar_set_fraction() periodically to update the progress bar.
 * 
 * When an application has no accurate way of knowing the amount of work
 * to do, it can use the #GtkProgressBar in activity mode, which shows
 * activity by a block moving back and forth within the progress area. In
 * this mode, the application is required to call gtk_progress_bar_pulse()
 * periodically to update the progress bar.
 * 
 * There is quite a bit of flexibility provided to control the appearance
 * of the #GtkProgressBar. Functions are provided to control the orientation
 * of the bar, optional text can be displayed along with the bar, and the
 * step size used in activity mode can be set.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * progressbar[.osd]
 * ├── [text]
 * ╰── trough[.empty][.full]
 * ╰── progress[.pulse]
 * ]|
 * 
 * GtkProgressBar has a main CSS node with name progressbar and subnodes with
 * names text and trough, of which the latter has a subnode named progress. The
 * text subnode is only present if text is shown. The progress subnode has the
 * style class .pulse when in activity mode. It gets the style classes .left,
 * .right, .top or .bottom added when the progress 'touches' the corresponding
 * end of the GtkProgressBar. The .osd class on the progressbar node is for use
 * in overlays like the one Epiphany has for page loading progress.
 */
public class ProgressBar : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected GtkProgressBar* gtkProgressBar;

	/** Get the main Gtk struct */
	public GtkProgressBar* getProgressBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkProgressBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkProgressBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkProgressBar* gtkProgressBar, bool ownedRef = false)
	{
		this.gtkProgressBar = gtkProgressBar;
		super(cast(GtkWidget*)gtkProgressBar, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkProgressBar);


	/** */
	public static GType getType()
	{
		return gtk_progress_bar_get_type();
	}

	/**
	 * Creates a new #GtkProgressBar.
	 *
	 * Returns: a #GtkProgressBar.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_progress_bar_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkProgressBar*) p);
	}

	/**
	 * Returns the ellipsizing position of the progress bar.
	 * See gtk_progress_bar_set_ellipsize().
	 *
	 * Returns: #PangoEllipsizeMode
	 *
	 * Since: 2.6
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		return gtk_progress_bar_get_ellipsize(gtkProgressBar);
	}

	/**
	 * Returns the current fraction of the task that’s been completed.
	 *
	 * Returns: a fraction from 0.0 to 1.0
	 */
	public double getFraction()
	{
		return gtk_progress_bar_get_fraction(gtkProgressBar);
	}

	/**
	 * Gets the value set by gtk_progress_bar_set_inverted().
	 *
	 * Returns: %TRUE if the progress bar is inverted
	 */
	public bool getInverted()
	{
		return gtk_progress_bar_get_inverted(gtkProgressBar) != 0;
	}

	/**
	 * Retrieves the pulse step set with gtk_progress_bar_set_pulse_step().
	 *
	 * Returns: a fraction from 0.0 to 1.0
	 */
	public double getPulseStep()
	{
		return gtk_progress_bar_get_pulse_step(gtkProgressBar);
	}

	/**
	 * Gets the value of the #GtkProgressBar:show-text property.
	 * See gtk_progress_bar_set_show_text().
	 *
	 * Returns: %TRUE if text is shown in the progress bar
	 *
	 * Since: 3.0
	 */
	public bool getShowText()
	{
		return gtk_progress_bar_get_show_text(gtkProgressBar) != 0;
	}

	/**
	 * Retrieves the text that is displayed with the progress bar,
	 * if any, otherwise %NULL. The return value is a reference
	 * to the text, not a copy of it, so will become invalid
	 * if you change the text in the progress bar.
	 *
	 * Returns: text, or %NULL; this string is owned by the widget
	 *     and should not be modified or freed.
	 */
	public string getText()
	{
		return Str.toString(gtk_progress_bar_get_text(gtkProgressBar));
	}

	/**
	 * Indicates that some progress has been made, but you don’t know how much.
	 * Causes the progress bar to enter “activity mode,” where a block
	 * bounces back and forth. Each call to gtk_progress_bar_pulse()
	 * causes the block to move by a little bit (the amount of movement
	 * per pulse is determined by gtk_progress_bar_set_pulse_step()).
	 */
	public void pulse()
	{
		gtk_progress_bar_pulse(gtkProgressBar);
	}

	/**
	 * Sets the mode used to ellipsize (add an ellipsis: "...") the
	 * text if there is not enough space to render the entire string.
	 *
	 * Params:
	 *     mode = a #PangoEllipsizeMode
	 *
	 * Since: 2.6
	 */
	public void setEllipsize(PangoEllipsizeMode mode)
	{
		gtk_progress_bar_set_ellipsize(gtkProgressBar, mode);
	}

	/**
	 * Causes the progress bar to “fill in” the given fraction
	 * of the bar. The fraction should be between 0.0 and 1.0,
	 * inclusive.
	 *
	 * Params:
	 *     fraction = fraction of the task that’s been completed
	 */
	public void setFraction(double fraction)
	{
		gtk_progress_bar_set_fraction(gtkProgressBar, fraction);
	}

	/**
	 * Progress bars normally grow from top to bottom or left to right.
	 * Inverted progress bars grow in the opposite direction.
	 *
	 * Params:
	 *     inverted = %TRUE to invert the progress bar
	 */
	public void setInverted(bool inverted)
	{
		gtk_progress_bar_set_inverted(gtkProgressBar, inverted);
	}

	/**
	 * Sets the fraction of total progress bar length to move the
	 * bouncing block for each call to gtk_progress_bar_pulse().
	 *
	 * Params:
	 *     fraction = fraction between 0.0 and 1.0
	 */
	public void setPulseStep(double fraction)
	{
		gtk_progress_bar_set_pulse_step(gtkProgressBar, fraction);
	}

	/**
	 * Sets whether the progress bar will show text next to the bar.
	 * The shown text is either the value of the #GtkProgressBar:text
	 * property or, if that is %NULL, the #GtkProgressBar:fraction value,
	 * as a percentage.
	 *
	 * To make a progress bar that is styled and sized suitably for containing
	 * text (even if the actual text is blank), set #GtkProgressBar:show-text to
	 * %TRUE and #GtkProgressBar:text to the empty string (not %NULL).
	 *
	 * Params:
	 *     showText = whether to show text
	 *
	 * Since: 3.0
	 */
	public void setShowText(bool showText)
	{
		gtk_progress_bar_set_show_text(gtkProgressBar, showText);
	}

	/**
	 * Causes the given @text to appear next to the progress bar.
	 *
	 * If @text is %NULL and #GtkProgressBar:show-text is %TRUE, the current
	 * value of #GtkProgressBar:fraction will be displayed as a percentage.
	 *
	 * If @text is non-%NULL and #GtkProgressBar:show-text is %TRUE, the text
	 * will be displayed. In this case, it will not display the progress
	 * percentage. If @text is the empty string, the progress bar will still
	 * be styled and sized suitably for containing text, as long as
	 * #GtkProgressBar:show-text is %TRUE.
	 *
	 * Params:
	 *     text = a UTF-8 string, or %NULL
	 */
	public void setText(string text)
	{
		gtk_progress_bar_set_text(gtkProgressBar, Str.toStringz(text));
	}
}
