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
 * inFile  = GtkTooltips.html
 * outPack = gtk
 * outFile = Tooltips
 * strct   = GtkTooltips
 * realStrct=
 * ctorStrct=
 * clss    = Tooltips
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tooltips_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.Window
 * structWrap:
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 */

module gtk.Tooltips;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.Widget;
private import gtk.Window;




/**
 * Description
 * Tooltips are the messages that appear next to a widget when the mouse pointer is held over it for a short amount of time. They are especially helpful for adding more verbose descriptions of things such as buttons in a toolbar.
 * An individual tooltip belongs to a group of tooltips. A group is created with a call to gtk_tooltips_new(). Every tooltip in the group can then be turned off with a call to gtk_tooltips_disable() and enabled with gtk_tooltips_enable().
 * The length of time the user must keep the mouse over a widget before the tip is shown, can be altered with gtk_tooltips_set_delay(). This is set on a 'per group of tooltips' basis.
 * To assign a tip to a particular GtkWidget, gtk_tooltips_set_tip() is used.
 * Note
 * Tooltips can only be set on widgets which have their own X window and
 * receive enter and leave events.
 * To check if a widget has its own window use GTK_WIDGET_NO_WINDOW().
 * To add a tooltip to a widget that doesn't have its own window, place the
 * widget inside a GtkEventBox and add a tooltip to that instead.
 * The default appearance of all tooltips in a program is determined by the current GTK+ theme that the user has selected.
 * Information about the tooltip (if any) associated with an arbitrary widget can be retrieved using gtk_tooltips_data_get().
 * Example3.Adding tooltips to buttons.
 *  GtkWidget *load_button, *save_button, *hbox;
 *  GtkTooltips *button_bar_tips;
 *  button_bar_tips = gtk_tooltips_new ();
 *  /+* Create the buttons and pack them into a GtkHBox +/
 *  hbox = gtk_hbox_new (TRUE, 2);
 *  load_button = gtk_button_new_with_label ("Load a file");
 *  gtk_box_pack_start (GTK_BOX (hbox), load_button, TRUE, TRUE, 2);
 *  gtk_widget_show (load_button);
 *  save_button = gtk_button_new_with_label ("Save a file");
 *  gtk_box_pack_start (GTK_BOX (hbox), save_button, TRUE, TRUE, 2);
 *  gtk_widget_show (save_button);
 *  gtk_widget_show (hbox);
 *  /+* Add the tips +/
 *  gtk_tooltips_set_tip (GTK_TOOLTIPS (button_bar_tips), load_button,
 * 				 "Load a new document into this window",
 * 				 "Requests the filename of a document.
 * 				 This will then be loaded into the current
 * 				 window, replacing the contents of whatever
 * 				 is already loaded.");
 *  gtk_tooltips_set_tip (GTK_TOOLTIPS (button_bar_tips), save_button,
 * 				 "Saves the current document to a file",
 * 				 "If you have saved the document previously,
 * 				 then the new version will be saved over the
 * 				 old one. Otherwise, you will be prompted for
 * 				 a filename.");
 */
private import gtk.ObjectGtk;
public class Tooltips : ObjectGtk
{
	
	/** the main Gtk struct */
	protected GtkTooltips* gtkTooltips;
	
	
	public GtkTooltips* getTooltipsStruct()
	{
		return gtkTooltips;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTooltips;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTooltips* gtkTooltips)
	{
		assert(gtkTooltips !is null, "struct gtkTooltips is null on constructor");
		super(cast(GtkObject*)gtkTooltips);
		this.gtkTooltips = gtkTooltips;
	}
	
	/**
	 */
	
	
	
	/**
	 * Creates an empty group of tooltips. This function initialises a GtkTooltips structure. Without at least one such structure, you can not add tips to your application.
	 * Returns:
	 * a new GtkTooltips group for you to use.
	 */
	public this ()
	{
		// GtkTooltips* gtk_tooltips_new (void);
		this(cast(GtkTooltips*)gtk_tooltips_new() );
	}
	
	/**
	 * Allows the user to see your tooltips as they navigate your application.
	 * tooltips:
	 * a GtkTooltips.
	 */
	public void enable()
	{
		// void gtk_tooltips_enable (GtkTooltips *tooltips);
		gtk_tooltips_enable(gtkTooltips);
	}
	
	/**
	 * Causes all tooltips in tooltips to become inactive. Any widgets that have tips associated with that group will no longer display their tips until they are enabled again with gtk_tooltips_enable().
	 * tooltips:
	 * a GtkTooltips.
	 */
	public void disable()
	{
		// void gtk_tooltips_disable (GtkTooltips *tooltips);
		gtk_tooltips_disable(gtkTooltips);
	}
	
	/**
	 * Warning
	 * gtk_tooltips_set_delay is deprecated and should not be used in newly-written code.
	 * Sets the time between the user moving the mouse over a widget and the widget's tooltip appearing.
	 * tooltips:
	 * a GtkTooltips.
	 * delay:
	 * an integer value representing milliseconds.
	 */
	public void setDelay(uint delay)
	{
		// void gtk_tooltips_set_delay (GtkTooltips *tooltips,  guint delay);
		gtk_tooltips_set_delay(gtkTooltips, delay);
	}
	
	/**
	 * Adds a tooltip containing the message tip_text to the specified GtkWidget.
	 * tooltips:
	 * a GtkTooltips.
	 * widget:
	 * the GtkWidget you wish to associate the tip with.
	 * tip_text:
	 * a string containing the tip itself.
	 * tip_private:
	 * a string of any further information that may be useful if the user gets stuck.
	 */
	public void setTip(Widget widget, char[] tipText, char[] tipPrivate)
	{
		// void gtk_tooltips_set_tip (GtkTooltips *tooltips,  GtkWidget *widget,  const gchar *tip_text,  const gchar *tip_private);
		gtk_tooltips_set_tip(gtkTooltips, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(tipText), Str.toStringz(tipPrivate));
	}
	
	/**
	 * Retrieves any GtkTooltipsData previously associated with the given widget.
	 * widget:
	 * a GtkWidget.
	 * Returns:
	 * a GtkTooltipsData struct, or NULL if the widget has no tooltip.
	 */
	public static GtkTooltipsData* dataGet(Widget widget)
	{
		// GtkTooltipsData* gtk_tooltips_data_get (GtkWidget *widget);
		return gtk_tooltips_data_get((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Ensures that the window used for displaying the given tooltips is created.
	 * Applications should never have to call this function, since GTK+ takes
	 * care of this.
	 * tooltips:
	 * a GtkToolTips
	 */
	public void forceWindow()
	{
		// void gtk_tooltips_force_window (GtkTooltips *tooltips);
		gtk_tooltips_force_window(gtkTooltips);
	}
	
	/**
	 * Determines the tooltips and the widget they belong to from the window in
	 * which they are displayed.
	 * This function is mostly intended for use by accessibility technologies;
	 * applications should have little use for it.
	 * tip_window:
	 *  a GtkWindow
	 * tooltips:
	 *  the return location for the tooltips which are displayed
	 *  in tip_window, or NULL
	 * current_widget:
	 *  the return location for the widget whose tooltips
	 *  are displayed, or NULL
	 * Returns:
	 *  TRUE if tip_window is displaying tooltips, otherwise FALSE.
	 * Since 2.4
	 * See Also
	 * GtkToolbar
	 * Create groups of widgets with their own tooltips.
	 * GtkTipsQuery
	 * Query tooltips to create context-sensitive help.
	 */
	public static int getInfoFromTipWindow(Window tipWindow, GtkTooltips** tooltips, GtkWidget** currentWidget)
	{
		// gboolean gtk_tooltips_get_info_from_tip_window  (GtkWindow *tip_window,  GtkTooltips **tooltips,  GtkWidget **current_widget);
		return gtk_tooltips_get_info_from_tip_window((tipWindow is null) ? null : tipWindow.getWindowStruct(), tooltips, currentWidget);
	}
}
