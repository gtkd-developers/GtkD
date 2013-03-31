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
 * This object can be used to show a calltip or help for the
 * current completion proposal.
 *
 * The info window has always the same size as the natural size of its child
 * widget, added with gtk_container_add(). If you want a fixed size instead, a
 * possibility is to use a scrolled window, as the following example
 * demonstrates.
 *
 * $(DDOC_COMMENT example)
 *
 * If the calltip is displayed on top of a certain widget, say a GtkTextView,
 * you should hide it when the "focus-out-event" signal is emitted by
 * the GtkTextView. You may also be interested by the
 * "cursor-position" property (when its value is modified). If you
 * use the GtkSourceCompletionInfo through the GtkSourceCompletion machinery,
 * you don't need to worry about this.
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
	 * This signal is emitted before any "show" management. You can connect
	 * to this signal if you want to change some properties or position
	 * before the real "show".
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
	extern(C) static void callBackBeforeShow(GtkSourceCompletionInfo* infoStruct, SourceCompletionInfo _sourceCompletionInfo)
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
	 * view = a GtkTextView on which the info window should be positioned.
	 * iter = a GtkTextIter. [allow-none]
	 */
	public void moveToIter(TextView view, TextIter iter)
	{
		// void gtk_source_completion_info_move_to_iter  (GtkSourceCompletionInfo *info,  GtkTextView *view,  GtkTextIter *iter);
		gtk_source_completion_info_move_to_iter(gtkSourceCompletionInfo, (view is null) ? null : view.getTextViewStruct(), (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Warning
	 * gtk_source_completion_info_set_widget has been deprecated since version 3.8 and should not be used in newly-written code. Use gtk_container_add() instead. If there is already a child
	 * widget, remove it with gtk_container_remove().
	 * Sets the content widget of the info window. See that the previous widget will
	 * lose a reference and it can be destroyed, so if you do not want this to
	 * happen you must use g_object_ref() before calling this method.
	 * Params:
	 * widget = a GtkWidget. [allow-none]
	 */
	public void setWidget(Widget widget)
	{
		// void gtk_source_completion_info_set_widget  (GtkSourceCompletionInfo *info,  GtkWidget *widget);
		gtk_source_completion_info_set_widget(gtkSourceCompletionInfo, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Warning
	 * gtk_source_completion_info_get_widget has been deprecated since version 3.8 and should not be used in newly-written code. Use gtk_bin_get_child() instead.
	 * Get the current content widget.
	 * Returns: The current content widget. [transfer none] Signal Details The "before-show" signal void user_function (GtkSourceCompletionInfo *info, gpointer user_data) : Action This signal is emitted before any "show" management. You can connect to this signal if you want to change some properties or position before the real "show".
	 */
	public Widget getWidget()
	{
		// GtkWidget * gtk_source_completion_info_get_widget  (GtkSourceCompletionInfo *info);
		auto p = gtk_source_completion_info_get_widget(gtkSourceCompletionInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
}
