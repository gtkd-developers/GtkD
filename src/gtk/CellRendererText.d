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
 * inFile  = GtkCellRendererText.html
 * outPack = gtk
 * outFile = CellRendererText
 * strct   = GtkCellRendererText
 * realStrct=
 * ctorStrct=GtkCellRenderer
 * clss    = CellRendererText
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_text_
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

module gtk.CellRendererText;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;



private import gtk.CellRenderer;

/**
 * A GtkCellRendererText renders a given text in its cell, using the font, color and
 * style information provided by its properties. The text will be ellipsized if it is
 * too long and the "ellipsize" property allows it.
 *
 * If the "mode" is GTK_CELL_RENDERER_MODE_EDITABLE,
 * the GtkCellRendererText allows to edit its text using an entry.
 */
public class CellRendererText : CellRenderer
{
	
	/** the main Gtk struct */
	protected GtkCellRendererText* gtkCellRendererText;
	
	
	public GtkCellRendererText* getCellRendererTextStruct()
	{
		return gtkCellRendererText;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererText;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererText* gtkCellRendererText)
	{
		super(cast(GtkCellRenderer*)gtkCellRendererText);
		this.gtkCellRendererText = gtkCellRendererText;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCellRendererText = cast(GtkCellRendererText*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(string, string, CellRendererText)[] onEditedListeners;
	/**
	 * This signal is emitted after renderer has been edited.
	 * It is the responsibility of the application to update the model
	 * and store new_text at the position indicated by path.
	 */
	void addOnEdited(void delegate(string, string, CellRendererText) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("edited" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"edited",
			cast(GCallback)&callBackEdited,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["edited"] = 1;
		}
		onEditedListeners ~= dlg;
	}
	extern(C) static void callBackEdited(GtkCellRendererText* rendererStruct, gchar* path, gchar* newText, CellRendererText _cellRendererText)
	{
		foreach ( void delegate(string, string, CellRendererText) dlg ; _cellRendererText.onEditedListeners )
		{
			dlg(Str.toString(path), Str.toString(newText), _cellRendererText);
		}
	}
	
	
	/**
	 * Creates a new GtkCellRendererText. Adjust how text is drawn using
	 * object properties. Object properties can be
	 * set globally (with g_object_set()). Also, with GtkTreeViewColumn,
	 * you can bind a property to a value in a GtkTreeModel. For example,
	 * you can bind the "text" property on the cell renderer to a string
	 * value in the model, thus rendering a different string in each row
	 * of the GtkTreeView
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkCellRenderer * gtk_cell_renderer_text_new (void);
		auto p = gtk_cell_renderer_text_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_renderer_text_new()");
		}
		this(cast(GtkCellRendererText*) p);
	}
	
	/**
	 * Sets the height of a renderer to explicitly be determined by the "font" and
	 * "y_pad" property set on it. Further changes in these properties do not
	 * affect the height, so they must be accompanied by a subsequent call to this
	 * function. Using this function is unflexible, and should really only be used
	 * if calculating the size of a cell is too slow (ie, a massive number of cells
	 * displayed). If number_of_rows is -1, then the fixed height is unset, and
	 * the height is determined by the properties again.
	 * Params:
	 * numberOfRows = Number of rows of text each cell renderer is allocated, or -1
	 */
	public void setFixedHeightFromFont(int numberOfRows)
	{
		// void gtk_cell_renderer_text_set_fixed_height_from_font  (GtkCellRendererText *renderer,  gint number_of_rows);
		gtk_cell_renderer_text_set_fixed_height_from_font(gtkCellRendererText, numberOfRows);
	}
}
