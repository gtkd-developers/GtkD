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
 * inFile  = GtkSourceView.html
 * outPack = gsv
 * outFile = SourceView
 * strct   = GtkSourceView
 * realStrct=
 * ctorStrct=
 * clss    = SourceView
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_view_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gsv.SourceBuffer
 * 	- gtkc.gtk
 * 	- glib.Str
 * structWrap:
 * 	- GtkSourceBuffer* -> SourceBuffer
 * module aliases:
 * local aliases:
 */

module gsv.SourceView;

private import gsvc.gsvtypes;

private import gsvc.gsv;


private import gsv.SourceBuffer;
private import gtkc.gtk;
private import glib.Str;




/**
 * Description
 */
private import gtk.TextView;
public class SourceView : TextView
{
	
	/** the main Gtk struct */
	protected GtkSourceView* gtkSourceView;
	
	
	public GtkSourceView* getSourceViewStruct()
	{
		return gtkSourceView;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceView;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceView* gtkSourceView)
	{
		super(cast(GtkTextView*)gtkSourceView);
		this.gtkSourceView = gtkSourceView;
	}
	
	/**
	 * Returns the GtkSourceBuffer being displayed by this source view.
	 * The reference count on the buffer is not incremented; the caller
	 * of this function won't own a new reference.
	 * text_view:
	 *  a GtkSourceView
	 * Returns:
	 *  a GtkSourceBuffer
	 */
	public SourceBuffer getBuffer()
	{
		// GtkSourceBuffer* gtk_text_view_get_buffer (GtkTextView *text_view);
		return new SourceBuffer( cast(GtkSourceBuffer*)gtk_text_view_get_buffer(cast(GtkTextView*)gtkSourceView) );
	}
	
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(SourceView)[] onRedoListeners;
	void addOnRedo(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("redo" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"redo",
			cast(GCallback)&callBackRedo,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["redo"] = 1;
		}
		onRedoListeners ~= dlg;
	}
	extern(C) static void callBackRedo(GtkSourceView* sourceviewStruct, SourceView sourceView)
	{
		bool consumed = false;
		
		foreach ( void delegate(SourceView) dlg ; sourceView.onRedoListeners )
		{
			dlg(sourceView);
		}
		
		return consumed;
	}
	
	void delegate(SourceView)[] onUndoListeners;
	void addOnUndo(void delegate(SourceView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("undo" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"undo",
			cast(GCallback)&callBackUndo,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["undo"] = 1;
		}
		onUndoListeners ~= dlg;
	}
	extern(C) static void callBackUndo(GtkSourceView* sourceviewStruct, SourceView sourceView)
	{
		bool consumed = false;
		
		foreach ( void delegate(SourceView) dlg ; sourceView.onUndoListeners )
		{
			dlg(sourceView);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkSourceView. An empty default buffer will be
	 * created for you. If you want to specify your own buffer, consider
	 * gtk_source_view_new_with_buffer().
	 * Returns:
	 *  a new GtkSourceView
	 */
	public this ()
	{
		// GtkWidget* gtk_source_view_new (void);
		this(cast(GtkSourceView*)gtk_source_view_new() );
	}
	
	/**
	 * Creates a new GtkSourceView widget displaying the buffer
	 * buffer. One buffer can be shared among many widgets.
	 * buffer:
	 *  a GtkSourceBuffer.
	 * Returns:
	 *  a new GtkTextView.
	 */
	public this (SourceBuffer buffer)
	{
		// GtkWidget* gtk_source_view_new_with_buffer (GtkSourceBuffer *buffer);
		this(cast(GtkSourceView*)gtk_source_view_new_with_buffer((buffer is null) ? null : buffer.getSourceBufferStruct()) );
	}
	
	/**
	 * If TRUE line numbers will be displayed beside the text.
	 * view:
	 *  a GtkSourceView.
	 * show:
	 *  whether line numbers should be displayed.
	 */
	public void setShowLineNumbers(int show)
	{
		// void gtk_source_view_set_show_line_numbers  (GtkSourceView *view,  gboolean show);
		gtk_source_view_set_show_line_numbers(gtkSourceView, show);
	}
	
	/**
	 * Returns whether line numbers are displayed beside the text.
	 * view:
	 *  a GtkSourceView.
	 * Returns:
	 *  TRUE if the line numbers are displayed.
	 */
	public int getShowLineNumbers()
	{
		// gboolean gtk_source_view_get_show_line_numbers  (GtkSourceView *view);
		return gtk_source_view_get_show_line_numbers(gtkSourceView);
	}
	
	/**
	 * If TRUE line markers will be displayed beside the text.
	 * view:
	 *  a GtkSourceView.
	 * show:
	 *  whether line markers should be displayed.
	 */
	public void setShowLineMarkers(int show)
	{
		// void gtk_source_view_set_show_line_markers  (GtkSourceView *view,  gboolean show);
		gtk_source_view_set_show_line_markers(gtkSourceView, show);
	}
	
	/**
	 * Returns whether line markers are displayed beside the text.
	 * view:
	 *  a GtkSourceView.
	 * Returns:
	 *  TRUE if the line markers are displayed.
	 */
	public int getShowLineMarkers()
	{
		// gboolean gtk_source_view_get_show_line_markers  (GtkSourceView *view);
		return gtk_source_view_get_show_line_markers(gtkSourceView);
	}
	
	/**
	 * Sets the width of tabulation in characters.
	 * view:
	 *  a GtkSourceView.
	 * width:
	 *  width of tab in characters.
	 */
	public void setTabsWidth(uint width)
	{
		// void gtk_source_view_set_tabs_width (GtkSourceView *view,  guint width);
		gtk_source_view_set_tabs_width(gtkSourceView, width);
	}
	
	/**
	 * Returns the width of tabulation in characters.
	 * view:
	 *  a GtkSourceView.
	 * Returns:
	 *  width of tab.
	 */
	public uint getTabsWidth()
	{
		// guint gtk_source_view_get_tabs_width (GtkSourceView *view);
		return gtk_source_view_get_tabs_width(gtkSourceView);
	}
	
	/**
	 * If TRUE auto indentation of text is enabled.
	 * view:
	 *  a GtkSourceView.
	 * enable:
	 *  whether to enable auto indentation.
	 */
	public void setAutoIndent(int enable)
	{
		// void gtk_source_view_set_auto_indent (GtkSourceView *view,  gboolean enable);
		gtk_source_view_set_auto_indent(gtkSourceView, enable);
	}
	
	/**
	 * Returns whether auto indentation of text is enabled.
	 * view:
	 *  a GtkSourceView.
	 * Returns:
	 *  TRUE if auto indentation is enabled.
	 */
	public int getAutoIndent()
	{
		// gboolean gtk_source_view_get_auto_indent (GtkSourceView *view);
		return gtk_source_view_get_auto_indent(gtkSourceView);
	}
	
	/**
	 * If TRUE any tabulator character inserted is replaced by a group
	 * of space characters.
	 * view:
	 *  a GtkSourceView.
	 * enable:
	 *  whether to insert spaces instead of tabs.
	 */
	public void setInsertSpacesInsteadOfTabs(int enable)
	{
		// void gtk_source_view_set_insert_spaces_instead_of_tabs  (GtkSourceView *view,  gboolean enable);
		gtk_source_view_set_insert_spaces_instead_of_tabs(gtkSourceView, enable);
	}
	
	/**
	 * Returns whether when inserting a tabulator character it should
	 * be replaced by a group of space characters.
	 * view:
	 *  a GtkSourceView.
	 * Returns:
	 *  TRUE if spaces are inserted instead of tabs.
	 */
	public int getInsertSpacesInsteadOfTabs()
	{
		// gboolean gtk_source_view_get_insert_spaces_instead_of_tabs  (GtkSourceView *view);
		return gtk_source_view_get_insert_spaces_instead_of_tabs(gtkSourceView);
	}
	
	/**
	 * If TRUE a margin is displayed
	 * view:
	 *  a GtkSourceView.
	 * show:
	 *  whether to show a margin.
	 */
	public void setShowMargin(int show)
	{
		// void gtk_source_view_set_show_margin (GtkSourceView *view,  gboolean show);
		gtk_source_view_set_show_margin(gtkSourceView, show);
	}
	
	/**
	 * Returns whether a margin is displayed.
	 * view:
	 *  a GtkSourceView.
	 * Returns:
	 *  TRUE if the margin is showed.
	 */
	public int getShowMargin()
	{
		// gboolean gtk_source_view_get_show_margin (GtkSourceView *view);
		return gtk_source_view_get_show_margin(gtkSourceView);
	}
	
	/**
	 * Sets the position of the right margin in the given view.
	 * view:
	 *  a GtkSourceView.
	 * margin:
	 *  the position of the margin to set.
	 */
	public void setMargin(uint margin)
	{
		// void gtk_source_view_set_margin (GtkSourceView *view,  guint margin);
		gtk_source_view_set_margin(gtkSourceView, margin);
	}
	
	/**
	 * Gets the position of the right margin in the given view.
	 * view:
	 *  a GtkSourceView.
	 * Returns:
	 *  the position of the right margin.
	 */
	public uint getMargin()
	{
		// guint gtk_source_view_get_margin (GtkSourceView *view);
		return gtk_source_view_get_margin(gtkSourceView);
	}
	
	/**
	 * If TRUE the current line is highlighted
	 * view:
	 *  a GtkSourceView
	 * show:
	 *  whether to highlight the current line
	 */
	public void setHighlightCurrentLine(int show)
	{
		// void gtk_source_view_set_highlight_current_line  (GtkSourceView *view,  gboolean show);
		gtk_source_view_set_highlight_current_line(gtkSourceView, show);
	}
	
	/**
	 * Returns whether the current line is highlighted
	 * view:
	 *  a GtkSourceView
	 * Returns:
	 *  TRUE if the current line is highlighted
	 */
	public int getHighlightCurrentLine()
	{
		// gboolean gtk_source_view_get_highlight_current_line  (GtkSourceView *view);
		return gtk_source_view_get_highlight_current_line(gtkSourceView);
	}
	
	/**
	 * Associates a given pixbuf with a given marker_type.
	 * view:
	 *  a GtkSourceView.
	 * marker_type:
	 *  a marker type.
	 * pixbuf:
	 *  a GdkPixbuf.
	 */
	public void setMarkerPixbuf(char[] markerType, GdkPixbuf* pixbuf)
	{
		// void gtk_source_view_set_marker_pixbuf  (GtkSourceView *view,  const gchar *marker_type,  GdkPixbuf *pixbuf);
		gtk_source_view_set_marker_pixbuf(gtkSourceView, Str.toStringz(markerType), pixbuf);
	}
	
	/**
	 * Gets the pixbuf which is associated with the given marker_type.
	 * view:
	 *  a GtkSourceView.
	 * marker_type:
	 *  a marker type.
	 * Returns:
	 *  a GdkPixbuf if found, or NULL if not found.
	 */
	public GdkPixbuf* getMarkerPixbuf(char[] markerType)
	{
		// GdkPixbuf* gtk_source_view_get_marker_pixbuf  (GtkSourceView *view,  const gchar *marker_type);
		return gtk_source_view_get_marker_pixbuf(gtkSourceView, Str.toStringz(markerType));
	}
	
	/**
	 * If TRUE HOME and END keys will move to the first/last non-space
	 * character of the line before moving to the start/end.
	 * view:
	 *  a GtkSourceView.
	 * enable:
	 *  whether to enable smart behavior for HOME and END keys.
	 */
	public void setSmartHomeEnd(int enable)
	{
		// void gtk_source_view_set_smart_home_end  (GtkSourceView *view,  gboolean enable);
		gtk_source_view_set_smart_home_end(gtkSourceView, enable);
	}
	
	/**
	 * Returns whether HOME and END keys will move to the first/last non-space
	 * character of the line before moving to the start/end.
	 * view:
	 *  a GtkSourceView.
	 * Returns:
	 *  TRUE if smart behavior for HOME and END keys is enabled.
	 * Property Details
	 * The "auto-indent" property
	 *  "auto-indent" gboolean : Read / Write
	 * Whether to enable auto indentation.
	 * Default value: FALSE
	 */
	public int getSmartHomeEnd()
	{
		// gboolean gtk_source_view_get_smart_home_end  (GtkSourceView *view);
		return gtk_source_view_get_smart_home_end(gtkSourceView);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
