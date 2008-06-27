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
 * inFile  = GtkCellRendererToggle.html
 * outPack = gtk
 * outFile = CellRendererToggle
 * strct   = GtkCellRendererToggle
 * realStrct=
 * ctorStrct=GtkCellRenderer
 * clss    = CellRendererToggle
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_toggle_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.CellRenderer
 * structWrap:
 * 	- GtkCellRenderer* -> CellRenderer
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellRendererToggle;

public  import gtkc.gtktypes;

private import gtkc.gtk;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.CellRenderer;



private import gtk.CellRenderer;

/**
 * Description
 * GtkCellRendererToggle renders a toggle button in a cell. The
 * button is drawn as a radio- or checkbutton, depending on the
 * radio
 * property. When activated, it emits the toggled signal.
 */
public class CellRendererToggle : CellRenderer
{
	
	/** the main Gtk struct */
	protected GtkCellRendererToggle* gtkCellRendererToggle;
	
	
	public GtkCellRendererToggle* getCellRendererToggleStruct()
	{
		return gtkCellRendererToggle;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererToggle;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererToggle* gtkCellRendererToggle)
	{
		if(gtkCellRendererToggle is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkCellRendererToggle passed to constructor.");
			else return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkCellRendererToggle);
		if( ptr !is null )
		{
			this = cast(CellRendererToggle)ptr;
			return;
		}
		super(cast(GtkCellRenderer*)gtkCellRendererToggle);
		this.gtkCellRendererToggle = gtkCellRendererToggle;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(string, CellRendererToggle)[] onToggledListeners;
	/**
	 * The ::toggled signal is emitted when the cell is toggled.
	 */
	void addOnToggled(void delegate(string, CellRendererToggle) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackToggled(GtkCellRendererToggle* cellRendererStruct, gchar* path, CellRendererToggle cellRendererToggle)
	{
		bool consumed = false;
		
		foreach ( void delegate(string, CellRendererToggle) dlg ; cellRendererToggle.onToggledListeners )
		{
			dlg(Str.toString(path), cellRendererToggle);
		}
		
		return consumed;
	}
	
	
	/**
	 * Creates a new GtkCellRendererToggle. Adjust rendering
	 * parameters using object properties. Object properties can be set
	 * globally (with g_object_set()). Also, with GtkTreeViewColumn, you
	 * can bind a property to a value in a GtkTreeModel. For example, you
	 * can bind the "active" property on the cell renderer to a boolean value
	 * in the model, thus causing the check button to reflect the state of
	 * the model.
	 */
	public this ()
	{
		// GtkCellRenderer* gtk_cell_renderer_toggle_new (void);
		auto p = gtk_cell_renderer_toggle_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkCellRendererToggle*) p);
	}
	
	/**
	 * Returns whether we're rendering radio toggles rather than checkboxes.
	 * Returns: TRUE if we're rendering radio toggles rather than checkboxes
	 */
	public int getRadio()
	{
		// gboolean gtk_cell_renderer_toggle_get_radio (GtkCellRendererToggle *toggle);
		return gtk_cell_renderer_toggle_get_radio(gtkCellRendererToggle);
	}
	
	/**
	 * If radio is TRUE, the cell renderer renders a radio toggle
	 * (i.e. a toggle in a group of mutually-exclusive toggles).
	 * If FALSE, it renders a check toggle (a standalone boolean option).
	 * This can be set globally for the cell renderer, or changed just
	 * before rendering each cell in the model (for GtkTreeView, you set
	 * up a per-row setting using GtkTreeViewColumn to associate model
	 * columns with cell renderer properties).
	 * Params:
	 * radio =  TRUE to make the toggle look like a radio button
	 */
	public void setRadio(int radio)
	{
		// void gtk_cell_renderer_toggle_set_radio (GtkCellRendererToggle *toggle,  gboolean radio);
		gtk_cell_renderer_toggle_set_radio(gtkCellRendererToggle, radio);
	}
	
	/**
	 * Returns whether the cell renderer is active. See
	 * gtk_cell_renderer_toggle_set_active().
	 * Returns: TRUE if the cell renderer is active.
	 */
	public int getActive()
	{
		// gboolean gtk_cell_renderer_toggle_get_active (GtkCellRendererToggle *toggle);
		return gtk_cell_renderer_toggle_get_active(gtkCellRendererToggle);
	}
	
	/**
	 * Activates or deactivates a cell renderer.
	 * Params:
	 * setting =  the value to set.
	 */
	public void setActive(int setting)
	{
		// void gtk_cell_renderer_toggle_set_active (GtkCellRendererToggle *toggle,  gboolean setting);
		gtk_cell_renderer_toggle_set_active(gtkCellRendererToggle, setting);
	}
}
