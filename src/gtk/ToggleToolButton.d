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
 * inFile  = GtkToggleToolButton.html
 * outPack = gtk
 * outFile = ToggleToolButton
 * strct   = GtkToggleToolButton
 * realStrct=
 * ctorStrct=GtkToolItem
 * clss    = ToggleToolButton
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_toggle_tool_button_
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

module gtk.ToggleToolButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;



private import gtk.ToolButton;

/**
 * Description
 * A GtkToggleToolButton is a GtkToolItem that contains a toggle
 * button.
 * Use gtk_toggle_tool_button_new() to create a new
 * GtkToggleToolButton. Use gtk_toggle_tool_button_new_from_stock() to
 * create a new GtkToggleToolButton containing a stock item.
 */
public class ToggleToolButton : ToolButton
{
	
	/** the main Gtk struct */
	protected GtkToggleToolButton* gtkToggleToolButton;
	
	
	public GtkToggleToolButton* getToggleToolButtonStruct()
	{
		return gtkToggleToolButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkToggleToolButton = cast(GtkToggleToolButton*)obj;
	}
	
	/**
	 * Creates a new GtkToggleToolButton containing the image and text
	 * from a stock item.
	 */
	public this(StockID stockId)
	{
		this(StockDesc[stockId]);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ToggleToolButton)[] onToggledListeners;
	/**
	 * Emitted whenever the toggle tool button changes state.
	 * See Also
	 * GtkToolbar, GtkToolButton, GtkSeparatorToolItem
	 */
	void addOnToggled(void delegate(ToggleToolButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toggled" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggled",
			cast(GCallback)&callBackToggled,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toggled"] = 1;
		}
		onToggledListeners ~= dlg;
	}
	extern(C) static void callBackToggled(GtkToggleToolButton* toggleToolButtonStruct, ToggleToolButton _toggleToolButton)
	{
		foreach ( void delegate(ToggleToolButton) dlg ; _toggleToolButton.onToggledListeners )
		{
			dlg(_toggleToolButton);
		}
	}
	
	
	/**
	 * Returns a new GtkToggleToolButton
	 * Since 2.4
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkToolItem * gtk_toggle_tool_button_new (void);
		auto p = gtk_toggle_tool_button_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_toggle_tool_button_new()");
		}
		this(cast(GtkToggleToolButton*) p);
	}
	
	/**
	 * Creates a new GtkToggleToolButton containing the image and text from a
	 * stock item. Some stock ids have preprocessor macros like GTK_STOCK_OK
	 * and GTK_STOCK_APPLY.
	 * It is an error if stock_id is not a name of a stock item.
	 * Since 2.4
	 * Params:
	 * stockId = the name of the stock item
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string stockId)
	{
		// GtkToolItem * gtk_toggle_tool_button_new_from_stock  (const gchar *stock_id);
		auto p = gtk_toggle_tool_button_new_from_stock(Str.toStringz(stockId));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_toggle_tool_button_new_from_stock(Str.toStringz(stockId))");
		}
		this(cast(GtkToggleToolButton*) p);
	}
	
	/**
	 * Sets the status of the toggle tool button. Set to TRUE if you
	 * want the GtkToggleButton to be 'pressed in', and FALSE to raise it.
	 * This action causes the toggled signal to be emitted.
	 * Since 2.4
	 * Params:
	 * isActive = whether button should be active
	 */
	public void setActive(int isActive)
	{
		// void gtk_toggle_tool_button_set_active (GtkToggleToolButton *button,  gboolean is_active);
		gtk_toggle_tool_button_set_active(gtkToggleToolButton, isActive);
	}
	
	/**
	 * Queries a GtkToggleToolButton and returns its current state.
	 * Returns TRUE if the toggle button is pressed in and FALSE if it is raised.
	 * Since 2.4
	 * Returns: TRUE if the toggle tool button is pressed in, FALSE if not
	 */
	public int getActive()
	{
		// gboolean gtk_toggle_tool_button_get_active (GtkToggleToolButton *button);
		return gtk_toggle_tool_button_get_active(gtkToggleToolButton);
	}
}
