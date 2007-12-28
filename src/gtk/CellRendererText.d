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
 * inFile  = GtkCellRendererText.html
 * outPack = gtk
 * outFile = CellRendererText
 * strct   = GtkCellRenderer
 * realStrct=GtkCellRendererText
 * ctorStrct=
 * clss    = CellRendererText
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_text_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.CellRenderer
 * structWrap:
 * 	- GtkCellRenderer* -> CellRenderer
 * module aliases:
 * local aliases:
 */

module gtk.CellRendererText;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.CellRenderer;



private import gtk.CellRenderer;

/**
 * Description
 * A GtkCellRendererText renders a given text in its cell, using the font, color and
 * style information provided by its properties. The text will be ellipsized if it is
 * too long and the ellipsize
 * property allows it.
 * If the mode is GTK_CELL_RENDERER_MODE_EDITABLE,
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
	protected void* getStruct()
	{
		return cast(void*)gtkCellRendererText;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererText* gtkCellRendererText)
	{
		version(noAssert)
		{
			if ( gtkCellRendererText is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkCellRendererText is null on constructor").newline;
				}
				else
				{
					printf("struct gtkCellRendererText is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkCellRendererText !is null, "struct gtkCellRendererText is null on constructor");
		}
		super(cast(GtkCellRenderer*)gtkCellRendererText);
		this.gtkCellRendererText = gtkCellRendererText;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(char[], char[], CellRendererText)[] onEditedListeners;
	void addOnEdited(void delegate(char[], char[], CellRendererText) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackEdited(GtkCellRendererText* rendererStruct, gchar* path, gchar* newText, CellRendererText cellRendererText)
	{
		bool consumed = false;
		
		foreach ( void delegate(char[], char[], CellRendererText) dlg ; cellRendererText.onEditedListeners )
		{
			dlg(Str.toString(path), Str.toString(newText), cellRendererText);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkCellRendererText. Adjust how text is drawn using
	 * object properties. Object properties can be
	 * set globally (with g_object_set()). Also, with GtkTreeViewColumn,
	 * you can bind a property to a value in a GtkTreeModel. For example,
	 * you can bind the "text" property on the cell renderer to a string
	 * value in the model, thus rendering a different string in each row
	 * of the GtkTreeView
	 */
	public this ()
	{
		// GtkCellRenderer* gtk_cell_renderer_text_new (void);
		this(cast(GtkCellRendererText*)gtk_cell_renderer_text_new() );
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
	 * renderer =  A GtkCellRendererText
	 * numberOfRows =  Number of rows of text each cell renderer is allocated, or -1
	 */
	public static void setFixedHeightFromFont(GtkCellRendererText* renderer, int numberOfRows)
	{
		// void gtk_cell_renderer_text_set_fixed_height_from_font  (GtkCellRendererText *renderer,  gint number_of_rows);
		gtk_cell_renderer_text_set_fixed_height_from_font(renderer, numberOfRows);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
