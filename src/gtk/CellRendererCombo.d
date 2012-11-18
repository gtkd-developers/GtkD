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
 * inFile  = GtkCellRendererCombo.html
 * outPack = gtk
 * outFile = CellRendererCombo
 * strct   = GtkCellRendererCombo
 * realStrct=
 * ctorStrct=GtkCellRenderer
 * clss    = CellRendererCombo
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_combo_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.TreeIter
 * structWrap:
 * 	- GtkTreeIter* -> TreeIter
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellRendererCombo;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.TreeIter;



private import gtk.CellRendererText;

/**
 * Description
 * GtkCellRendererCombo renders text in a cell like GtkCellRendererText from
 * which it is derived. But while GtkCellRendererText offers a simple entry to
 * edit the text, GtkCellRendererCombo offers a GtkComboBox
 * widget to edit the text. The values to display in the combo box are taken from
 * the tree model specified in the "model" property.
 * The combo cell renderer takes care of adding a text cell renderer to the combo
 * box and sets it to display the column specified by its
 * "text-column" property. Further properties of the comnbo box
 * can be set in a handler for the "editing-started" signal.
 * The GtkCellRendererCombo cell renderer was added in GTK+ 2.6.
 */
public class CellRendererCombo : CellRendererText
{
	
	/** the main Gtk struct */
	protected GtkCellRendererCombo* gtkCellRendererCombo;
	
	
	public GtkCellRendererCombo* getCellRendererComboStruct()
	{
		return gtkCellRendererCombo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererCombo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererCombo* gtkCellRendererCombo)
	{
		super(cast(GtkCellRendererText*)gtkCellRendererCombo);
		this.gtkCellRendererCombo = gtkCellRendererCombo;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCellRendererCombo = cast(GtkCellRendererCombo*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(string, TreeIter, CellRendererCombo)[] onChangedListeners;
	/**
	 * This signal is emitted each time after the user selected an item in
	 * the combo box, either by using the mouse or the arrow keys. Contrary
	 * to GtkComboBox, GtkCellRendererCombo::changed is not emitted for
	 * changes made to a selected item in the entry. The argument new_iter
	 * corresponds to the newly selected item in the combo box and it is relative
	 * to the GtkTreeModel set via the model property on GtkCellRendererCombo.
	 * Note that as soon as you change the model displayed in the tree view,
	 * the tree view will immediately cease the editing operating. This
	 * means that you most probably want to refrain from changing the model
	 * until the combo cell renderer emits the edited or editing_canceled signal.
	 * Since 2.14
	 */
	void addOnChanged(void delegate(string, TreeIter, CellRendererCombo) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkCellRendererCombo* comboStruct, gchar* pathString, GtkTreeIter* newIter, CellRendererCombo _cellRendererCombo)
	{
		foreach ( void delegate(string, TreeIter, CellRendererCombo) dlg ; _cellRendererCombo.onChangedListeners )
		{
			dlg(Str.toString(pathString), ObjectG.getDObject!(TreeIter)(newIter), _cellRendererCombo);
		}
	}
	
	
	/**
	 * Creates a new GtkCellRendererCombo.
	 * Adjust how text is drawn using object properties.
	 * Object properties can be set globally (with g_object_set()).
	 * Also, with GtkTreeViewColumn, you can bind a property to a value
	 * in a GtkTreeModel. For example, you can bind the "text" property
	 * on the cell renderer to a string value in the model, thus rendering
	 * a different string in each row of the GtkTreeView.
	 * Since 2.6
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkCellRenderer * gtk_cell_renderer_combo_new (void);
		auto p = gtk_cell_renderer_combo_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_renderer_combo_new()");
		}
		this(cast(GtkCellRendererCombo*) p);
	}
}
