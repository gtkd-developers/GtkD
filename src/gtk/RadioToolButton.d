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
 * inFile  = GtkRadioToolButton.html
 * outPack = gtk
 * outFile = RadioToolButton
 * strct   = GtkRadioToolButton
 * realStrct=
 * ctorStrct=GtkToolItem
 * clss    = RadioToolButton
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_radio_tool_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.ToolItem
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkToolItem* -> ToolItem
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.RadioToolButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.ToolItem;
private import glib.ListSG;



private import gtk.ToggleToolButton;

/**
 * Description
 * A GtkRadioToolButton is a GtkToolItem that contains a radio button,
 * that is, a button that is part of a group of toggle buttons where only
 * one button can be active at a time.
 * Use gtk_radio_tool_button_new() to create a new
 * GtkRadioToolButton. use gtk_radio_tool_button_new_from_widget() to
 * create a new GtkRadioToolButton that is part of the same group as an
 * existing GtkRadioToolButton. Use
 * gtk_radio_tool_button_new_from_stock() or
 * gtk_radio_tool_button_new_from_widget_with_stock() to create a new
 * GtkRAdioToolButton containing a stock item.
 */
public class RadioToolButton : ToggleToolButton
{
	
	/** the main Gtk struct */
	protected GtkRadioToolButton* gtkRadioToolButton;
	
	
	public GtkRadioToolButton* getRadioToolButtonStruct()
	{
		return gtkRadioToolButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRadioToolButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRadioToolButton* gtkRadioToolButton)
	{
		if(gtkRadioToolButton is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkRadioToolButton);
		if( ptr !is null )
		{
			this = cast(RadioToolButton)ptr;
			return;
		}
		super(cast(GtkToggleToolButton*)gtkRadioToolButton);
		this.gtkRadioToolButton = gtkRadioToolButton;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkRadioToolButton, adding it to group.
	 * Since 2.4
	 * Params:
	 * group =  An existing radio button group, or NULL if you are creating a new group
	 */
	public this (ListSG group)
	{
		// GtkToolItem* gtk_radio_tool_button_new (GSList *group);
		auto p = gtk_radio_tool_button_new((group is null) ? null : group.getListSGStruct());
		if(p is null)
		{
			throw new Exception("Construction failure.");
		}
		this(cast(GtkRadioToolButton*) p);
	}
	
	/**
	 * Creates a new GtkRadioToolButton, adding it to group.
	 * The new GtkRadioToolButton will contain an icon and label from the
	 * stock item indicated by stock_id.
	 * Since 2.4
	 * Params:
	 * group =  an existing radio button group, or NULL if you are creating a new group
	 * stockId =  the name of a stock item
	 */
	public this (ListSG group, string stockId)
	{
		// GtkToolItem* gtk_radio_tool_button_new_from_stock  (GSList *group,  const gchar *stock_id);
		auto p = gtk_radio_tool_button_new_from_stock((group is null) ? null : group.getListSGStruct(), Str.toStringz(stockId));
		if(p is null)
		{
			throw new Exception("Construction failure.");
		}
		this(cast(GtkRadioToolButton*) p);
	}
	
	/**
	 * Creates a new GtkRadioToolButton adding it to the same group as gruup
	 * Since 2.4
	 */
	public this ()
	{
		// GtkToolItem* gtk_radio_tool_button_new_from_widget  (GtkRadioToolButton *group);
		auto p = gtk_radio_tool_button_new_from_widget(gtkRadioToolButton);
		if(p is null)
		{
			throw new Exception("Construction failure.");
		}
		this(cast(GtkRadioToolButton*) p);
	}
	
	/**
	 * Creates a new GtkRadioToolButton adding it to the same group as group.
	 * The new GtkRadioToolButton will contain an icon and label from the
	 * stock item indicated by stock_id.
	 * Since 2.4
	 * Params:
	 * stockId =  the name of a stock item
	 */
	public this (string stockId)
	{
		// GtkToolItem* gtk_radio_tool_button_new_with_stock_from_widget  (GtkRadioToolButton *group,  const gchar *stock_id);
		auto p = gtk_radio_tool_button_new_with_stock_from_widget(gtkRadioToolButton, Str.toStringz(stockId));
		if(p is null)
		{
			throw new Exception("Construction failure.");
		}
		this(cast(GtkRadioToolButton*) p);
	}
	
	/**
	 * Returns the radio button group button belongs to.
	 * Since 2.4
	 * Returns: The group button belongs to.
	 */
	public ListSG getGroup()
	{
		// GSList* gtk_radio_tool_button_get_group (GtkRadioToolButton *button);
		auto p = gtk_radio_tool_button_get_group(gtkRadioToolButton);
		if(p is null)
		{
			return null;
		}
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Adds button to group, removing it from the group it belonged to before.
	 * Since 2.4
	 * Params:
	 * group =  an existing radio button group
	 */
	public void setGroup(ListSG group)
	{
		// void gtk_radio_tool_button_set_group (GtkRadioToolButton *button,  GSList *group);
		gtk_radio_tool_button_set_group(gtkRadioToolButton, (group is null) ? null : group.getListSGStruct());
	}
}
