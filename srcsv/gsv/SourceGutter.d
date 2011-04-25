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
 * inFile  = GtkSourceGutter.html
 * outPack = gsv
 * outFile = SourceGutter
 * strct   = GtkSourceGutter
 * realStrct=
 * ctorStrct=
 * clss    = SourceGutter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_gutter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Window
 * 	- gtk.CellRenderer
 * structWrap:
 * 	- GdkWindow* -> Window
 * 	- GtkCellRenderer* -> CellRenderer
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceGutter;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gdk.Window;
private import gtk.CellRenderer;



private import gobject.ObjectG;

/**
 * Description
 * The GtkSourceGutter object represents the left and right gutters of the text
 * view. It is used by GtkSourceView to draw the line numbers and category
 * marks that might be present on a line. By packing additional GtkCellRenderer
 * objects in the gutter, you can extend the gutter with your own custom
 * drawings.
 * The gutter works very much the same way as cells rendered in a GtkTreeView.
 * The concept is similar, with the exception that the gutter does not have an
 * underlying GtkTreeModel. Instead, you should use
 * gtk_source_gutter_set_cell_data_func to set a callback to fill in any of the
 * cell renderers properties, given the line for which the cell is to be
 * rendered. Renderers are inserted into the gutter at a certain position. The
 * builtin line number renderer is at position
 * GTK_SOURCE_VIEW_GUTTER_POSITION_LINES (-30) and the marks renderer is at
 * GTK_SOURCE_VIEW_GUTTER_POSITION_MARKS (-20). You can use these values to
 * position custom renderers accordingly. The width of a cell renderer can be
 * specified as either fixed (using
 * gtk_cell_renderer_set_fixed_size) or dynamic, in which case you
 * must set gtk_source_gutter_set_cell_size_func. This
 * callback is used to set the properties of the renderer such that
 * gtk_cell_renderer_get_size yields the maximum width of the cell.
 */
public class SourceGutter : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceGutter* gtkSourceGutter;
	
	
	public GtkSourceGutter* getSourceGutterStruct()
	{
		return gtkSourceGutter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceGutter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceGutter* gtkSourceGutter)
	{
		if(gtkSourceGutter is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkSourceGutter);
		if( ptr !is null )
		{
			this = cast(SourceGutter)ptr;
			return;
		}
		super(cast(GObject*)gtkSourceGutter);
		this.gtkSourceGutter = gtkSourceGutter;
	}
	
	protected void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceGutter = cast(GtkSourceGutter*)obj;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(CellRenderer, GtkTextIter*, GdkEvent*, SourceGutter)[] onCellActivatedListeners;
	/**
	 * Emitted when a cell has been activated (for instance when there was
	 * a button press on the cell). The signal is only emitted for cells
	 * that have the activatable property set to TRUE.
	 */
	void addOnCellActivated(void delegate(CellRenderer, GtkTextIter*, GdkEvent*, SourceGutter) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cell-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cell-activated",
			cast(GCallback)&callBackCellActivated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cell-activated"] = 1;
		}
		onCellActivatedListeners ~= dlg;
	}
	extern(C) static void callBackCellActivated(GtkSourceGutter* gutterStruct, GtkCellRenderer* renderer, GtkTextIter* iter, GdkEvent* event, SourceGutter sourceGutter)
	{
		foreach ( void delegate(CellRenderer, GtkTextIter*, GdkEvent*, SourceGutter) dlg ; sourceGutter.onCellActivatedListeners )
		{
			dlg(new CellRenderer(renderer), iter, event, sourceGutter);
		}
	}
	
	bool delegate(CellRenderer, GtkTextIter*, GtkTooltip*, SourceGutter)[] onQueryTooltipListeners;
	/**
	 * Emitted when a tooltip is requested for a specific cell. Signal
	 * handlers can return TRUE to notify the tooltip has been handled.
	 * See Also
	 * GtkSourceView
	 */
	void addOnQueryTooltip(bool delegate(CellRenderer, GtkTextIter*, GtkTooltip*, SourceGutter) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("query-tooltip" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"query-tooltip",
			cast(GCallback)&callBackQueryTooltip,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["query-tooltip"] = 1;
		}
		onQueryTooltipListeners ~= dlg;
	}
	extern(C) static gboolean callBackQueryTooltip(GtkSourceGutter* gutterStruct, GtkCellRenderer* renderer, GtkTextIter* iter, GtkTooltip* tooltip, SourceGutter sourceGutter)
	{
		foreach ( bool delegate(CellRenderer, GtkTextIter*, GtkTooltip*, SourceGutter) dlg ; sourceGutter.onQueryTooltipListeners )
		{
			if ( dlg(new CellRenderer(renderer), iter, tooltip, sourceGutter) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Get the GdkWindow of the gutter. The window will only be available when the
	 * gutter has at least one, non-zero width, cell renderer packed.
	 * Since 2.8
	 * Returns: the GdkWindow of the gutter, or NULL if the gutter has no window.
	 */
	public Window getWindow()
	{
		// GdkWindow * gtk_source_gutter_get_window (GtkSourceGutter *gutter);
		auto p = gtk_source_gutter_get_window(gtkSourceGutter);
		if(p is null)
		{
			return null;
		}
		return new Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Inserts renderer into gutter at position.
	 * Since 2.8
	 * Params:
	 * renderer = a GtkCellRenderer
	 * position = the renderers position
	 */
	public void insert(CellRenderer renderer, int position)
	{
		// void gtk_source_gutter_insert (GtkSourceGutter *gutter,  GtkCellRenderer *renderer,  gint position);
		gtk_source_gutter_insert(gtkSourceGutter, (renderer is null) ? null : renderer.getCellRendererStruct(), position);
	}
	
	/**
	 * Reorders renderer in gutter to new position.
	 * Since 2.8
	 * Params:
	 * renderer = a GtkCellRenderer
	 * position = the new renderer position
	 */
	public void reorder(CellRenderer renderer, int position)
	{
		// void gtk_source_gutter_reorder (GtkSourceGutter *gutter,  GtkCellRenderer *renderer,  gint position);
		gtk_source_gutter_reorder(gtkSourceGutter, (renderer is null) ? null : renderer.getCellRendererStruct(), position);
	}
	
	/**
	 * Removes renderer from gutter.
	 * Since 2.8
	 * Params:
	 * renderer = a GtkCellRenderer
	 */
	public void remove(CellRenderer renderer)
	{
		// void gtk_source_gutter_remove (GtkSourceGutter *gutter,  GtkCellRenderer *renderer);
		gtk_source_gutter_remove(gtkSourceGutter, (renderer is null) ? null : renderer.getCellRendererStruct());
	}
	
	/**
	 * Sets the GtkSourceGutterDataFunc to use for renderer. This function is
	 * used to setup the cell renderer properties for rendering the current cell.
	 * Since 2.8
	 * Params:
	 * renderer = a GtkCellRenderer
	 * func = the GtkSourceGutterDataFunc to use
	 * funcData = the user data for func
	 * destroy = the destroy notification for func_data
	 */
	public void setCellDataFunc(CellRenderer renderer, GtkSourceGutterDataFunc func, void* funcData, GDestroyNotify destroy)
	{
		// void gtk_source_gutter_set_cell_data_func  (GtkSourceGutter *gutter,  GtkCellRenderer *renderer,  GtkSourceGutterDataFunc func,  gpointer func_data,  GDestroyNotify destroy);
		gtk_source_gutter_set_cell_data_func(gtkSourceGutter, (renderer is null) ? null : renderer.getCellRendererStruct(), func, funcData, destroy);
	}
	
	/**
	 * Sets the GtkSourceGutterSizeFunc to use for renderer. This function is
	 * used to setup the cell renderer properties for measuring the maximum size
	 * of the cell.
	 * Since 2.8
	 * Params:
	 * renderer = a GtkCellRenderer
	 * func = the GtkSourceGutterSizeFunc to use
	 * funcData = the user data for func
	 * destroy = the destroy notification for func_data
	 */
	public void setCellSizeFunc(CellRenderer renderer, GtkSourceGutterSizeFunc func, void* funcData, GDestroyNotify destroy)
	{
		// void gtk_source_gutter_set_cell_size_func  (GtkSourceGutter *gutter,  GtkCellRenderer *renderer,  GtkSourceGutterSizeFunc func,  gpointer func_data,  GDestroyNotify destroy);
		gtk_source_gutter_set_cell_size_func(gtkSourceGutter, (renderer is null) ? null : renderer.getCellRendererStruct(), func, funcData, destroy);
	}
	
	/**
	 * Invalidates the drawable area of the gutter. You can use this to force a
	 * redraw of the gutter if something has changed and needs to be redrawn.
	 * Since 2.8
	 */
	public void queueDraw()
	{
		// void gtk_source_gutter_queue_draw (GtkSourceGutter *gutter);
		gtk_source_gutter_queue_draw(gtkSourceGutter);
	}
}
