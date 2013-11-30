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
 * inFile  = 
 * outPack = gtk
 * outFile = ListBoxRow
 * strct   = GtkListBoxRow
 * realStrct=
 * ctorStrct=
 * clss    = ListBoxRow
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_list_box_row_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- activate-cursor-row
 * 	- move-cursor
 * 	- row-activated
 * 	- row-selected
 * 	- toggle-cursor-row
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ListBoxRow;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;
private import gtk.Widget;



/**
 * A GtkListBox is a vertical container that contains GtkListBoxRow
 * children. These rows can by dynamically sorted and filtered, and
 * headers can be added dynamically depending on the row content.
 * It also allows keyboard and mouse navigation and selection like
 * a typical list.
 *
 * Using GtkListBox is often an alternative to GtkTreeView, especially
 * when the list contents has a more complicated layout than what is allowed
 * by a GtkCellRenderer, or when the contents is interactive (i.e. has a
 * button in it).
 *
 * Although a GtkListBox must have only GtkListBoxRow children you can
 * add any kind of widget to it via gtk_container_add(), and a GtkListBoxRow
 * widget will automatically be inserted between the list and the widget.
 *
 * The GtkListBox widget was added in GTK+ 3.10.
 */
public class ListBoxRow
{
	
	/** the main Gtk struct */
	protected GtkListBoxRow* gtkListBoxRow;
	
	
	/** Get the main Gtk struct */
	public GtkListBoxRow* getListBoxRowStruct()
	{
		return gtkListBoxRow;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkListBoxRow;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkListBoxRow* gtkListBoxRow)
	{
		this.gtkListBoxRow = gtkListBoxRow;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ListBoxRow)[] onActivateListeners;
	/**
	 * See Also
	 * GtkScrolledWindow
	 */
	void addOnActivate(void delegate(ListBoxRow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkListBoxRow* listboxrowStruct, ListBoxRow _listBoxRow)
	{
		foreach ( void delegate(ListBoxRow) dlg ; _listBoxRow.onActivateListeners )
		{
			dlg(_listBoxRow);
		}
	}
	
	
	/**
	 * Creates a new GtkListBoxRow, to be used as a child of a GtkListBox.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_list_box_row_new (void);
		auto p = gtk_list_box_row_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_list_box_row_new()");
		}
		this(cast(GtkListBoxRow*) p);
	}
	
	/**
	 * Marks row as changed, causing any state that depends on this
	 * to be updated. This affects sorting, filtering and headers.
	 * Note that calls to this method must be in sync with the data
	 * used for the row functions. For instance, if the list is
	 * mirroring some external data set, and *two* rows changed in the
	 * external data set then when you call gtk_list_box_row_changed()
	 * on the first row the sort function must only read the new data
	 * for the first of the two changed rows, otherwise the resorting
	 * of the rows will be wrong.
	 * This generally means that if you don't fully control the data
	 * model you have to duplicate the data that affects the listbox
	 * row functions into the row widgets themselves. Another alternative
	 * is to call gtk_list_box_invalidate_sort() on any model change,
	 * but that is more expensive.
	 */
	public void changed()
	{
		// void gtk_list_box_row_changed (GtkListBoxRow *row);
		gtk_list_box_row_changed(gtkListBoxRow);
	}
	
	/**
	 * Returns the current header of the row. This can be used
	 * in a GtkListBoxUpdateHeaderFunc to see if there is a header
	 * set already, and if so to update the state of it.
	 * Returns: the current header, or NULL if none. [transfer none] Since 3.10
	 */
	public Widget getHeader()
	{
		// GtkWidget * gtk_list_box_row_get_header (GtkListBoxRow *row);
		auto p = gtk_list_box_row_get_header(gtkListBoxRow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 */
	public static GType getType()
	{
		// GType gtk_list_box_row_get_type (void);
		return gtk_list_box_row_get_type();
	}
	
	/**
	 * Sets the current header of the row. This is only allowed to be called
	 * from a GtkListBoxUpdateHeaderFunc. It will replace any existing
	 * header in the row, and be shown in front of the row in the listbox.
	 * Params:
	 * header = the header, or NULL. [allow-none]
	 * Since 3.10
	 */
	public void setHeader(Widget header)
	{
		// void gtk_list_box_row_set_header (GtkListBoxRow *row,  GtkWidget *header);
		gtk_list_box_row_set_header(gtkListBoxRow, (header is null) ? null : header.getWidgetStruct());
	}
	
	/**
	 * Gets the current index of the row in its GtkListBox container.
	 * Returns: the index of the row, or -1 if the row is not in a listbox Since 3.10
	 */
	public int getIndex()
	{
		// gint gtk_list_box_row_get_index (GtkListBoxRow *row);
		return gtk_list_box_row_get_index(gtkListBoxRow);
	}
}
