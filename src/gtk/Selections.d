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
 * inFile  = 
 * outPack = gtk
 * outFile = Selections
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Selections
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_selection_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gdk.Display
 * 	- gdk.Pixbuf
 * 	- gtk.TextBuffer
 * structWrap:
 * 	- GdkDisplay* -> Display
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkTextBuffer* -> TextBuffer
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Selections;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import glib.Str;
private import gtk.Widget;
private import gdk.Display;
private import gdk.Pixbuf;
private import gtk.TextBuffer;




/**
 * Description
 * The selection mechanism provides the basis for different types
 * of communication between processes. In particular, drag and drop and
 * GtkClipboard work via selections. You will very seldom or
 * never need to use most of the functions in this section directly;
 * GtkClipboard provides a nicer interface to the same functionality.
 * Some of the datatypes defined this section are used in
 * the GtkClipboard and drag-and-drop API's as well. The
 * GtkTargetEntry structure and GtkTargetList objects represent
 * lists of data types that are supported when sending or
 * receiving data. The GtkSelectionData object is used to
 * store a chunk of data along with the data type and other
 * associated information.
 */
public class Selections
{
	
	/**
	 */
	
	/**
	 * Claims ownership of a given selection for a particular widget,
	 * or, if widget is NULL, release ownership of the selection.
	 * Params:
	 * widget =  a GtkWidget, or NULL.
	 * selection =  an interned atom representing the selection to claim
	 * time =  timestamp with which to claim the selection
	 * Returns: TRUE if the operation succeeded
	 */
	public static int ownerSet(Widget widget, GdkAtom selection, uint time)
	{
		// gboolean gtk_selection_owner_set (GtkWidget *widget,  GdkAtom selection,  guint32 time_);
		return gtk_selection_owner_set((widget is null) ? null : widget.getWidgetStruct(), selection, time);
	}
	
	/**
	 * Claim ownership of a given selection for a particular widget, or,
	 * if widget is NULL, release ownership of the selection.
	 * Since 2.2
	 * Params:
	 * display =  the Gdkdisplay where the selection is set
	 * widget =  new selection owner (a GdkWidget), or NULL.
	 * selection =  an interned atom representing the selection to claim.
	 * time =  timestamp with which to claim the selection
	 * Returns: TRUE if the operation succeeded
	 */
	public static int ownerSetForDisplay(Display display, Widget widget, GdkAtom selection, uint time)
	{
		// gboolean gtk_selection_owner_set_for_display (GdkDisplay *display,  GtkWidget *widget,  GdkAtom selection,  guint32 time_);
		return gtk_selection_owner_set_for_display((display is null) ? null : display.getDisplayStruct(), (widget is null) ? null : widget.getWidgetStruct(), selection, time);
	}
	
	/**
	 * Appends a specified target to the list of supported targets for a
	 * given widget and selection.
	 * Params:
	 * widget =  a GtkTarget
	 * selection =  the selection
	 * target =  target to add.
	 * info =  A unsigned integer which will be passed back to the application.
	 */
	public static void addTarget(Widget widget, GdkAtom selection, GdkAtom target, uint info)
	{
		// void gtk_selection_add_target (GtkWidget *widget,  GdkAtom selection,  GdkAtom target,  guint info);
		gtk_selection_add_target((widget is null) ? null : widget.getWidgetStruct(), selection, target, info);
	}
	
	/**
	 * Prepends a table of targets to the list of supported targets
	 * for a given widget and selection.
	 * Params:
	 * widget =  a GtkWidget
	 * selection =  the selection
	 * targets =  a table of targets to add
	 */
	public static void addTargets(Widget widget, GdkAtom selection, GtkTargetEntry[] targets)
	{
		// void gtk_selection_add_targets (GtkWidget *widget,  GdkAtom selection,  const GtkTargetEntry *targets,  guint ntargets);
		gtk_selection_add_targets((widget is null) ? null : widget.getWidgetStruct(), selection, targets.ptr, targets.length);
	}
	
	/**
	 * Remove all targets registered for the given selection for the
	 * widget.
	 * Params:
	 * widget =  a GtkWidget
	 * selection =  an atom representing a selection
	 */
	public static void clearTargets(Widget widget, GdkAtom selection)
	{
		// void gtk_selection_clear_targets (GtkWidget *widget,  GdkAtom selection);
		gtk_selection_clear_targets((widget is null) ? null : widget.getWidgetStruct(), selection);
	}
	
	/**
	 * Requests the contents of a selection. When received,
	 * a "selection_received" signal will be generated.
	 * Params:
	 * widget =  The widget which acts as requestor
	 * selection =  Which selection to get
	 * target =  Form of information desired (e.g., STRING)
	 * time =  Time of request (usually of triggering event)
	 *  In emergency, you could use GDK_CURRENT_TIME
	 * Returns: TRUE if requested succeeded. FALSE if we could not process request. (e.g., there was already a request in process for this widget).
	 */
	public static int convert(Widget widget, GdkAtom selection, GdkAtom target, uint time)
	{
		// gboolean gtk_selection_convert (GtkWidget *widget,  GdkAtom selection,  GdkAtom target,  guint32 time_);
		return gtk_selection_convert((widget is null) ? null : widget.getWidgetStruct(), selection, target, time);
	}
	
	/**
	 * Stores new data into a GtkSelectionData object. Should
	 * only be called from a selection handler callback.
	 * Zero-terminates the stored data.
	 * Params:
	 * selectionData =  a pointer to a GtkSelectionData structure.
	 * type =  the type of selection data
	 * format =  format (number of bits in a unit)
	 * data =  pointer to the data (will be copied)
	 */
	public static void dataSet(GtkSelectionData* selectionData, GdkAtom type, int format, char[] data)
	{
		// void gtk_selection_data_set (GtkSelectionData *selection_data,  GdkAtom type,  gint format,  const guchar *data,  gint length);
		gtk_selection_data_set(selectionData, type, format, data.ptr, data.length);
	}
	
	/**
	 * Sets the contents of the selection from a UTF-8 encoded string.
	 * The string is converted to the form determined by
	 * selection_data->target.
	 * Params:
	 * selectionData =  a GtkSelectionData
	 * str =  a UTF-8 string
	 * len =  the length of str, or -1 if str is nul-terminated.
	 * Returns: TRUE if the selection was successfully set, otherwise FALSE.
	 */
	public static int dataSetText(GtkSelectionData* selectionData, string str, int len)
	{
		// gboolean gtk_selection_data_set_text (GtkSelectionData *selection_data,  const gchar *str,  gint len);
		return gtk_selection_data_set_text(selectionData, Str.toStringz(str), len);
	}
	
	/**
	 * Gets the contents of the selection data as a UTF-8 string.
	 * Params:
	 * selectionData =  a GtkSelectionData
	 * Returns: if the selection data contained a recognized text type and it could be converted to UTF-8, a newly allocated string containing the converted text, otherwise NULL. If the result is non-NULL it must be freed with g_free().
	 */
	public static char* dataGetText(GtkSelectionData* selectionData)
	{
		// guchar* gtk_selection_data_get_text (GtkSelectionData *selection_data);
		return gtk_selection_data_get_text(selectionData);
	}
	
	/**
	 * Sets the contents of the selection from a GdkPixbuf
	 * The pixbuf is converted to the form determined by
	 * selection_data->target.
	 * Since 2.6
	 * Params:
	 * selectionData =  a GtkSelectionData
	 * pixbuf =  a GdkPixbuf
	 * Returns: TRUE if the selection was successfully set, otherwise FALSE.
	 */
	public static int dataSetPixbuf(GtkSelectionData* selectionData, Pixbuf pixbuf)
	{
		// gboolean gtk_selection_data_set_pixbuf (GtkSelectionData *selection_data,  GdkPixbuf *pixbuf);
		return gtk_selection_data_set_pixbuf(selectionData, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Gets the contents of the selection data as a GdkPixbuf.
	 * Since 2.6
	 * Params:
	 * selectionData =  a GtkSelectionData
	 * Returns: if the selection data contained a recognized image type and it could be converted to a GdkPixbuf, a  newly allocated pixbuf is returned, otherwise NULL. If the result is non-NULL it must be freed with g_object_unref().
	 */
	public static Pixbuf dataGetPixbuf(GtkSelectionData* selectionData)
	{
		// GdkPixbuf* gtk_selection_data_get_pixbuf (GtkSelectionData *selection_data);
		auto p = gtk_selection_data_get_pixbuf(selectionData);
		if(p is null)
		{
			return null;
		}
		return new Pixbuf(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Sets the contents of the selection from a list of URIs.
	 * The string is converted to the form determined by
	 * selection_data->target.
	 * Since 2.6
	 * Params:
	 * selectionData =  a GtkSelectionData
	 * uris =  a NULL-terminated array of strings hilding URIs
	 * Returns: TRUE if the selection was successfully set, otherwise FALSE.
	 */
	public static int dataSetUris(GtkSelectionData* selectionData, string[] uris)
	{
		// gboolean gtk_selection_data_set_uris (GtkSelectionData *selection_data,  gchar **uris);
		return gtk_selection_data_set_uris(selectionData, Str.toStringzArray(uris));
	}
	
	/**
	 * Gets the contents of the selection data as array of URIs.
	 * Since 2.6
	 * Params:
	 * selectionData =  a GtkSelectionData
	 * Returns: if the selection data contains a list of URIs, a newly allocated NULL-terminated string array containing the URIs, otherwise NULL. If the result is  non-NULL it must be freed with g_strfreev().
	 */
	public static string[] dataGetUris(GtkSelectionData* selectionData)
	{
		// gchar** gtk_selection_data_get_uris (GtkSelectionData *selection_data);
		return Str.toStringArray(gtk_selection_data_get_uris(selectionData));
	}
	
	/**
	 * Gets the contents of selection_data as an array of targets.
	 * This can be used to interpret the results of getting
	 * the standard TARGETS target that is always supplied for
	 * any selection.
	 * Params:
	 * selectionData =  a GtkSelectionData object
	 * targets =  location to store an array of targets. The result
	 *  stored here must be freed with g_free().
	 * Returns: TRUE if selection_data contains a valid array of targets, otherwise FALSE.
	 */
	public static int dataGetTargets(GtkSelectionData* selectionData, out GdkAtom[] targets)
	{
		// gboolean gtk_selection_data_get_targets (GtkSelectionData *selection_data,  GdkAtom **targets,  gint *n_atoms);
		GdkAtom* outtargets = null;
		int nAtoms;
		
		auto p = gtk_selection_data_get_targets(selectionData, &outtargets, &nAtoms);
		
		targets = outtargets[0 .. nAtoms];
		return p;
	}
	
	/**
	 * Given a GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in targets can be used to
	 * provide a GdkPixbuf.
	 * Since 2.6
	 * Params:
	 * selectionData =  a GtkSelectionData object
	 * writable =  whether to accept only targets for which GTK+ knows
	 *  how to convert a pixbuf into the format
	 * Returns: TRUE if selection_data holds a list of targets, and a suitable target for images is included, otherwise FALSE.
	 */
	public static int dataTargetsIncludeImage(GtkSelectionData* selectionData, int writable)
	{
		// gboolean gtk_selection_data_targets_include_image  (GtkSelectionData *selection_data,  gboolean writable);
		return gtk_selection_data_targets_include_image(selectionData, writable);
	}
	
	/**
	 * Given a GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in targets can be used to
	 * provide text.
	 * Params:
	 * selectionData =  a GtkSelectionData object
	 * Returns: TRUE if selection_data holds a list of targets, and a suitable target for text is included, otherwise FALSE.
	 */
	public static int dataTargetsIncludeText(GtkSelectionData* selectionData)
	{
		// gboolean gtk_selection_data_targets_include_text  (GtkSelectionData *selection_data);
		return gtk_selection_data_targets_include_text(selectionData);
	}
	
	/**
	 * Given a GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in targets can be used to
	 * provide a list or URIs.
	 * Since 2.10
	 * Params:
	 * selectionData =  a GtkSelectionData object
	 * Returns: TRUE if selection_data holds a list of targets, and a suitable target for text is included, otherwise FALSE.
	 */
	public static int dataTargetsIncludeUri(GtkSelectionData* selectionData)
	{
		// gboolean gtk_selection_data_targets_include_uri  (GtkSelectionData *selection_data);
		return gtk_selection_data_targets_include_uri(selectionData);
	}
	
	/**
	 * Given a GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in targets can be used to
	 * provide rich text.
	 * Since 2.10
	 * Params:
	 * selectionData =  a GtkSelectionData object
	 * buffer =  a GtkTextBuffer
	 * Returns: TRUE if selection_data holds a list of targets, and a suitable target for rich text is included, otherwise FALSE.
	 */
	public static int dataTargetsIncludeRichText(GtkSelectionData* selectionData, TextBuffer buffer)
	{
		// gboolean gtk_selection_data_targets_include_rich_text  (GtkSelectionData *selection_data,  GtkTextBuffer *buffer);
		return gtk_selection_data_targets_include_rich_text(selectionData, (buffer is null) ? null : buffer.getTextBufferStruct());
	}
	
	/**
	 * Removes all handlers and unsets ownership of all
	 * selections for a widget. Called when widget is being
	 * destroyed. This function will not generally be
	 * called by applications.
	 * Params:
	 * widget =  a GtkWidget
	 */
	public static void removeAll(Widget widget)
	{
		// void gtk_selection_remove_all (GtkWidget *widget);
		gtk_selection_remove_all((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Warning
	 * gtk_selection_clear has been deprecated since version 2.4 and should not be used in newly-written code. Instead of calling this function, chain up from
	 * your selection_clear_event handler. Calling this function
	 * from any other context is illegal.
	 * The default handler for the GtkWidget::selection_clear_event
	 * signal.
	 * Since 2.2
	 * Params:
	 * widget =  a GtkWidget
	 * event =  the event
	 * Returns: TRUE if the event was handled, otherwise false
	 */
	public static int clear(Widget widget, GdkEventSelection* event)
	{
		// gboolean gtk_selection_clear (GtkWidget *widget,  GdkEventSelection *event);
		return gtk_selection_clear((widget is null) ? null : widget.getWidgetStruct(), event);
	}
	
	/**
	 * Makes a copy of a GtkSelectionData structure and its data.
	 * Params:
	 * data =  a pointer to a GtkSelectionData structure.
	 * Returns: a pointer to a copy of data.
	 */
	public static GtkSelectionData* dataCopy(GtkSelectionData* data)
	{
		// GtkSelectionData* gtk_selection_data_copy (GtkSelectionData *data);
		return gtk_selection_data_copy(data);
	}
	
	/**
	 * Frees a GtkSelectionData structure returned from
	 * gtk_selection_data_copy().
	 * Params:
	 * data =  a pointer to a GtkSelectionData structure.
	 */
	public static void dataFree(GtkSelectionData* data)
	{
		// void gtk_selection_data_free (GtkSelectionData *data);
		gtk_selection_data_free(data);
	}
}
