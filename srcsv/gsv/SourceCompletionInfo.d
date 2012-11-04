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
 * inFile  = GtkSourceCompletionInfo.html
 * outPack = gsv
 * outFile = SourceCompletionInfo
 * strct   = GtkSourceCompletionInfo
 * realStrct=
 * ctorStrct=
 * clss    = SourceCompletionInfo
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_completion_info_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.TextIter
 * 	- gtk.TextView
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkTextIter* -> TextIter
 * 	- GtkTextView* -> TextView
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceCompletionInfo;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtk.TextIter;
private import gtk.TextView;
private import gtk.Widget;



private import gtk.Window;

/**
 * Description
 * This object can be used to show a calltip or help for the
 * .* current completion proposal.
 */
public class SourceCompletionInfo : Window
{
	
	/** the main Gtk struct */
	protected GtkSourceCompletionInfo* gtkSourceCompletionInfo;
	
	
	public GtkSourceCompletionInfo* getSourceCompletionInfoStruct()
	{
		return gtkSourceCompletionInfo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionInfo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceCompletionInfo* gtkSourceCompletionInfo)
	{
		super(cast(GtkWindow*)gtkSourceCompletionInfo);
		this.gtkSourceCompletionInfo = gtkSourceCompletionInfo;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceCompletionInfo = cast(GtkSourceCompletionInfo*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(SourceCompletionInfo)[] onBeforeShowListeners;
	/**
	 */
	void addOnBeforeShow(void delegate(SourceCompletionInfo) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("before-show" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"before-show",
			cast(GCallback)&callBackBeforeShow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["before-show"] = 1;
		}
		onBeforeShowListeners ~= dlg;
	}
	extern(C) static void callBackBeforeShow(GtkSourceCompletionInfo* sourcecompletioninfoStruct, SourceCompletionInfo _sourceCompletionInfo)
	{
		foreach ( void delegate(SourceCompletionInfo) dlg ; _sourceCompletionInfo.onBeforeShowListeners )
		{
			dlg(_sourceCompletionInfo);
		}
	}
	
	
	/**
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkSourceCompletionInfo * gtk_source_completion_info_new  (void);
		auto p = gtk_source_completion_info_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_completion_info_new()");
		}
		this(cast(GtkSourceCompletionInfo*) p);
	}
	
	/**
	 * Moves the GtkSourceCompletionInfo to iter. If iter is NULL info is
	 * moved to the cursor position. Moving will respect the GdkGravity setting
	 * of the info window and will ensure the line at iter is not occluded by
	 * the window.
	 * Params:
	 * view = A GtkTextView on which the info window should be positioned
	 * iter = A GtkTextIter
	 */
	public void moveToIter(TextView view, TextIter iter)
	{
		// void gtk_source_completion_info_move_to_iter  (GtkSourceCompletionInfo *info,  GtkTextView *view,  GtkTextIter *iter);
		gtk_source_completion_info_move_to_iter(gtkSourceCompletionInfo, (view is null) ? null : view.getTextViewStruct(), (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Set sizing information for the info window. If shrink_width or
	 * shrink_height is TRUE, the info window will try to resize to fit the
	 * window contents, with a maximum size given by width and height. Setting
	 * width or height to -1 removes the maximum size of respectively the width
	 * and height of the window.
	 * Params:
	 * width = The maximum/requested width of the window (-1 to default)
	 * height = The maximum/requested height of the window (-1 to default)
	 * shrinkWidth = Whether to shrink the width of the window to fit its contents
	 * shrinkHeight = Whether to shrink the height of the window to fit its
	 *  contents
	 */
	public void setSizing(int width, int height, int shrinkWidth, int shrinkHeight)
	{
		// void gtk_source_completion_info_set_sizing  (GtkSourceCompletionInfo *info,  gint width,  gint height,  gboolean shrink_width,  gboolean shrink_height);
		gtk_source_completion_info_set_sizing(gtkSourceCompletionInfo, width, height, shrinkWidth, shrinkHeight);
	}
	
	/**
	 * Sets the content widget of the info window. If widget does not fit within
	 * the size requirements of the window, a GtkScrolledWindow will automatically
	 * be created and added to the window.
	 * Params:
	 * widget = A GtkWidget
	 */
	public void setWidget(Widget widget)
	{
		// void gtk_source_completion_info_set_widget  (GtkSourceCompletionInfo *info,  GtkWidget *widget);
		gtk_source_completion_info_set_widget(gtkSourceCompletionInfo, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Get the current content widget.
	 * Returns: The current content widget.
	 */
	public Widget getWidget()
	{
		// GtkWidget * gtk_source_completion_info_get_widget  (GtkSourceCompletionInfo *info);
		auto p = gtk_source_completion_info_get_widget(gtkSourceCompletionInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Widget(cast(GtkWidget*) p);
	}
	
	/**
	 */
	public void processResize()
	{
		// void gtk_source_completion_info_process_resize  (GtkSourceCompletionInfo *info);
		gtk_source_completion_info_process_resize(gtkSourceCompletionInfo);
	}
}
