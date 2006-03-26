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
 * outFile = ToggleToolButton
 * strct   = GtkToggleToolButton
 * realStrct=
 * clss    = ToggleToolButton
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_toggle_tool_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.ToolItem
 * structWrap:
 * 	- GtkToolItem* -> ToolItem
 * local aliases:
 */

module gtk.ToggleToolButton;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.ToolItem;

/**
 * Description
 *  A GtkToggleToolButton is a GtkToolItem that contains a toggle
 *  button.
 *  Use gtk_toggle_tool_button_new() to create a new
 *  GtkToggleToolButton. Use gtk_toggle_tool_button_new_from_stock() to
 *  create a new GtkToggleToolButton containing a stock item.
 */
private import gtk.ToolButton;
public class ToggleToolButton : ToolButton
{
	
	/** the main Gtk struct */
	protected GtkToggleToolButton* gtkToggleToolButton;
	
	
	public GtkToggleToolButton* getToggleToolButtonStruct()
	{
		return gtkToggleToolButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkToggleToolButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkToggleToolButton* gtkToggleToolButton)
	{
		super(cast(GtkToolButton*)gtkToggleToolButton);
		this.gtkToggleToolButton = gtkToggleToolButton;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(ToggleToolButton)[] onToggledListeners;
	void addOnToggled(void delegate(ToggleToolButton) dlg)
	{
		if ( !("toggled" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggled",
			cast(GCallback)&callBackToggled,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["toggled"] = 1;
		}
		onToggledListeners ~= dlg;
	}
	extern(C) static void callBackToggled(GtkToggleToolButton* toggleToolButtonStruct, ToggleToolButton toggleToolButton)
	{
		bit consumed = false;
		
		foreach ( void delegate(ToggleToolButton) dlg ; toggleToolButton.onToggledListeners )
		{
			dlg(toggleToolButton);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Returns a new GtkToggleToolButton
	 * Returns:
	 *  a newly created GtkToggleToolButton
	 * Since 2.4
	 */
	public static ToolItem newToggleToolButton()
	{
		// GtkToolItem* gtk_toggle_tool_button_new (void);
		return new ToolItem( gtk_toggle_tool_button_new() );
	}
	
	/**
	 * Creates a new GtkToggleToolButton containing the image and text from a
	 * stock item. Some stock ids have preprocessor macros like GTK_STOCK_OK
	 * and GTK_STOCK_APPLY.
	 * It is an error if stock_id is not a name of a stock item.
	 * stock_id:
	 *  the name of the stock item
	 * Returns:
	 *  A new GtkToggleToolButton
	 * Since 2.4
	 */
	public static ToolItem newFromStock(char[] stockId)
	{
		// GtkToolItem* gtk_toggle_tool_button_new_from_stock  (const gchar *stock_id);
		return new ToolItem( gtk_toggle_tool_button_new_from_stock(Str.toStringz(stockId)) );
	}
	
	/**
	 * Sets the status of the toggle tool button. Set to TRUE if you
	 * want the GtkToggleButton to be 'pressed in', and FALSE to raise it.
	 * This action causes the toggled signal to be emitted.
	 * button:
	 *  a GtkToggleToolButton
	 * is_active:
	 *  whether button should be active
	 * Since 2.4
	 */
	public void setActive(int isActive)
	{
		// void gtk_toggle_tool_button_set_active  (GtkToggleToolButton *button,  gboolean is_active);
		gtk_toggle_tool_button_set_active(gtkToggleToolButton, isActive);
	}
	
	/**
	 * Queries a GtkToggleToolButton and returns its current state.
	 * Returns TRUE if the toggle button is pressed in and FALSE if it is raised.
	 * button:
	 *  a GtkToggleToolButton
	 * Returns:
	 *  TRUE if the toggle tool button is pressed in, FALSE if not
	 * Since 2.4
	 * Property Details
	 * The "active" property
	 *  "active" gboolean : Read / Write
	 * If the toggle tool button should be pressed in or not.
	 * Default value: FALSE
	 * Since 2.8
	 * Signal Details
	 * The "toggled" signal
	 * void user_function (GtkToggleToolButton *toggle_tool_button,
	 *  gpointer user_data) : Run first
	 * Emitted whenever the toggle tool button changes state.
	 * toggle_tool_button:
	 *  the object that emitted the signal
	 * user_data:
	 * user data set when the signal handler was connected.
	 * See Also
	 * GtkToolbar, GtkToolButton, GtkSeparatorToolItem
	 * The toolbar widget
	 * 	The parent class of GtkToggleToolButton. The properties
	 * 	"label_widget", "label", "icon_widget", and "stock_id" on
	 * 	GtkToolButton determine the label and icon used on
	 * 	GtkToggleToolButtons.
	 * A subclass of GtkToolItem that separates groups of
	 * 	items on a toolbar.
	 */
	public int getActive()
	{
		// gboolean gtk_toggle_tool_button_get_active  (GtkToggleToolButton *button);
		return gtk_toggle_tool_button_get_active(gtkToggleToolButton);
	}
}
