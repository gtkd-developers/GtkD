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
 * outFile = SelectionData
 * strct   = GtkSelectionData
 * realStrct=
 * ctorStrct=
 * clss    = SelectionData
 * interf  = 
 * class Code: Yes
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
 * 	- gdk.Display
 * 	- gdk.Pixbuf
 * 	- gtk.TextBuffer
 * 	- gtk.Widget
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GdkDisplay* -> Display
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkSelectionData* -> SelectionData
 * 	- GtkTextBuffer* -> TextBuffer
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.SelectionData;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Display;
private import gdk.Pixbuf;
private import gtk.TextBuffer;
private import gtk.Widget;
private import gtkc.Loader;
private import gtkc.paths;



private import gobject.Boxed;

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
public class SelectionData : Boxed
{
	
	/** the main Gtk struct */
	protected GtkSelectionData* gtkSelectionData;
	
	
	public GtkSelectionData* getSelectionDataStruct()
	{
		return gtkSelectionData;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSelectionData;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSelectionData* gtkSelectionData)
	{
		this.gtkSelectionData = gtkSelectionData;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkSelectionData !is null )
		{
			gtk_selection_data_free(gtkSelectionData);
		}
	}
	
	/**
	 */
	
	/**
	 * Claims ownership of a given selection for a particular widget,
	 * or, if widget is NULL, release ownership of the selection.
	 * Params:
	 * widget = a GtkWidget, or NULL. [allow-none]
	 * selection = an interned atom representing the selection to claim
	 * time = timestamp with which to claim the selection
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
	 * display = the GdkDisplay where the selection is set
	 * widget = new selection owner (a GtkWidget), or NULL. [allow-none]
	 * selection = an interned atom representing the selection to claim.
	 * time = timestamp with which to claim the selection
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
	 * widget = a GtkTarget
	 * selection = the selection
	 * target = target to add.
	 * info = A unsigned integer which will be passed back to the application.
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
	 * widget = a GtkWidget
	 * selection = the selection
	 * targets = a table of targets to add. [array length=ntargets]
	 */
	public static void addTargets(Widget widget, GdkAtom selection, GtkTargetEntry[] targets)
	{
		// void gtk_selection_add_targets (GtkWidget *widget,  GdkAtom selection,  const GtkTargetEntry *targets,  guint ntargets);
		gtk_selection_add_targets((widget is null) ? null : widget.getWidgetStruct(), selection, targets.ptr, cast(int) targets.length);
	}
	
	/**
	 * Remove all targets registered for the given selection for the
	 * widget.
	 * Params:
	 * widget = a GtkWidget
	 * selection = an atom representing a selection
	 */
	public static void clearTargets(Widget widget, GdkAtom selection)
	{
		// void gtk_selection_clear_targets (GtkWidget *widget,  GdkAtom selection);
		gtk_selection_clear_targets((widget is null) ? null : widget.getWidgetStruct(), selection);
	}
	
	/**
	 * Requests the contents of a selection. When received,
	 * a "selection-received" signal will be generated.
	 * Params:
	 * widget = The widget which acts as requestor
	 * selection = Which selection to get
	 * target = Form of information desired (e.g., STRING)
	 * time = Time of request (usually of triggering event)
	 * In emergency, you could use GDK_CURRENT_TIME
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
	 * type = the type of selection data
	 * format = format (number of bits in a unit)
	 * data = pointer to the data (will be copied). [array length=length]
	 */
	public void dataSet(GdkAtom type, int format, char[] data)
	{
		// void gtk_selection_data_set (GtkSelectionData *selection_data,  GdkAtom type,  gint format,  const guchar *data,  gint length);
		gtk_selection_data_set(gtkSelectionData, type, format, data.ptr, cast(int) data.length);
	}
	
	/**
	 * Sets the contents of the selection from a UTF-8 encoded string.
	 * The string is converted to the form determined by
	 * selection_data->target.
	 * Params:
	 * str = a UTF-8 string
	 * Returns: TRUE if the selection was successfully set, otherwise FALSE.
	 */
	public int dataSetText(string str)
	{
		// gboolean gtk_selection_data_set_text (GtkSelectionData *selection_data,  const gchar *str,  gint len);
		return gtk_selection_data_set_text(gtkSelectionData, cast(char*)str.ptr, cast(int) str.length);
	}
	
	/**
	 * Gets the contents of the selection data as a UTF-8 string.
	 * Returns: if the selection data contained a recognized text type and it could be converted to UTF-8, a newly allocated string containing the converted text, otherwise NULL. If the result is non-NULL it must be freed with g_free(). [type utf8]
	 */
	public char* dataGetText()
	{
		// guchar * gtk_selection_data_get_text (const GtkSelectionData *selection_data);
		return gtk_selection_data_get_text(gtkSelectionData);
	}
	
	/**
	 * Sets the contents of the selection from a GdkPixbuf
	 * The pixbuf is converted to the form determined by
	 * selection_data->target.
	 * Since 2.6
	 * Params:
	 * pixbuf = a GdkPixbuf
	 * Returns: TRUE if the selection was successfully set, otherwise FALSE.
	 */
	public int dataSetPixbuf(Pixbuf pixbuf)
	{
		// gboolean gtk_selection_data_set_pixbuf (GtkSelectionData *selection_data,  GdkPixbuf *pixbuf);
		return gtk_selection_data_set_pixbuf(gtkSelectionData, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Gets the contents of the selection data as a GdkPixbuf.
	 * Since 2.6
	 * Returns: if the selection data contained a recognized image type and it could be converted to a GdkPixbuf, a newly allocated pixbuf is returned, otherwise NULL. If the result is non-NULL it must be freed with g_object_unref(). [transfer full]
	 */
	public Pixbuf dataGetPixbuf()
	{
		// GdkPixbuf * gtk_selection_data_get_pixbuf (const GtkSelectionData *selection_data);
		auto p = gtk_selection_data_get_pixbuf(gtkSelectionData);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Sets the contents of the selection from a list of URIs.
	 * The string is converted to the form determined by
	 * selection_data->target.
	 * Since 2.6
	 * Params:
	 * uris = a NULL-terminated array of
	 * strings holding URIs. [array zero-terminated=1]
	 * Returns: TRUE if the selection was successfully set, otherwise FALSE.
	 */
	public int dataSetUris(string[] uris)
	{
		// gboolean gtk_selection_data_set_uris (GtkSelectionData *selection_data,  gchar **uris);
		return gtk_selection_data_set_uris(gtkSelectionData, Str.toStringzArray(uris));
	}
	
	/**
	 * Gets the contents of the selection data as array of URIs.
	 * Since 2.6
	 * Returns: if the selection data contains a list of URIs, a newly allocated NULL-terminated string array containing the URIs, otherwise NULL. If the result is non-NULL it must be freed with g_strfreev(). [array zero-terminated=1][element-type utf8][transfer full]
	 */
	public string[] dataGetUris()
	{
		// gchar ** gtk_selection_data_get_uris (const GtkSelectionData *selection_data);
		return Str.toStringArray(gtk_selection_data_get_uris(gtkSelectionData));
	}
	
	/**
	 * Gets the contents of selection_data as an array of targets.
	 * This can be used to interpret the results of getting
	 * the standard TARGETS target that is always supplied for
	 * any selection.
	 * Params:
	 * targets = location to store an array of targets. The result stored
	 * here must be freed with g_free(). [out][array length=n_atoms][transfer container]
	 * Returns: TRUE if selection_data contains a valid array of targets, otherwise FALSE.
	 */
	public int dataGetTargets(out GdkAtom[] targets)
	{
		// gboolean gtk_selection_data_get_targets (const GtkSelectionData *selection_data,  GdkAtom **targets,  gint *n_atoms);
		GdkAtom* outtargets = null;
		int nAtoms;
		
		auto p = gtk_selection_data_get_targets(gtkSelectionData, &outtargets, &nAtoms);
		
		targets = outtargets[0 .. nAtoms];
		return p;
	}
	
	/**
	 * Given a GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in targets can be used to
	 * provide a GdkPixbuf.
	 * Since 2.6
	 * Params:
	 * writable = whether to accept only targets for which GTK+ knows
	 * how to convert a pixbuf into the format
	 * Returns: TRUE if selection_data holds a list of targets, and a suitable target for images is included, otherwise FALSE.
	 */
	public int dataTargetsIncludeImage(int writable)
	{
		// gboolean gtk_selection_data_targets_include_image  (const GtkSelectionData *selection_data,  gboolean writable);
		return gtk_selection_data_targets_include_image(gtkSelectionData, writable);
	}
	
	/**
	 * Given a GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in targets can be used to
	 * provide text.
	 * Returns: TRUE if selection_data holds a list of targets, and a suitable target for text is included, otherwise FALSE.
	 */
	public int dataTargetsIncludeText()
	{
		// gboolean gtk_selection_data_targets_include_text  (const GtkSelectionData *selection_data);
		return gtk_selection_data_targets_include_text(gtkSelectionData);
	}
	
	/**
	 * Given a GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in targets can be used to
	 * provide a list or URIs.
	 * Since 2.10
	 * Returns: TRUE if selection_data holds a list of targets, and a suitable target for URI lists is included, otherwise FALSE.
	 */
	public int dataTargetsIncludeUri()
	{
		// gboolean gtk_selection_data_targets_include_uri  (const GtkSelectionData *selection_data);
		return gtk_selection_data_targets_include_uri(gtkSelectionData);
	}
	
	/**
	 * Given a GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in targets can be used to
	 * provide rich text.
	 * Since 2.10
	 * Params:
	 * buffer = a GtkTextBuffer
	 * Returns: TRUE if selection_data holds a list of targets, and a suitable target for rich text is included, otherwise FALSE.
	 */
	public int dataTargetsIncludeRichText(TextBuffer buffer)
	{
		// gboolean gtk_selection_data_targets_include_rich_text  (const GtkSelectionData *selection_data,  GtkTextBuffer *buffer);
		return gtk_selection_data_targets_include_rich_text(gtkSelectionData, (buffer is null) ? null : buffer.getTextBufferStruct());
	}
	
	/**
	 * Retrieves the selection GdkAtom of the selection data.
	 * Since 2.16
	 * Returns: the selection GdkAtom of the selection data. [transfer none]
	 */
	public GdkAtom dataGetSelection()
	{
		// GdkAtom gtk_selection_data_get_selection (const GtkSelectionData *selection_data);
		return gtk_selection_data_get_selection(gtkSelectionData);
	}
	
	/**
	 * Retrieves the raw data of the selection.
	 * Since 2.14
	 * Returns: the raw data of the selection.
	 */
	public char* dataGetData()
	{
		// const guchar * gtk_selection_data_get_data (const GtkSelectionData *selection_data);
		return gtk_selection_data_get_data(gtkSelectionData);
	}
	
	/**
	 * Retrieves the length of the raw data of the selection.
	 * Since 2.14
	 * Returns: the length of the data of the selection.
	 */
	public int dataGetLength()
	{
		// gint gtk_selection_data_get_length (const GtkSelectionData *selection_data);
		return gtk_selection_data_get_length(gtkSelectionData);
	}
	
	/**
	 * Retrieves the raw data of the selection along with its length.
	 * Returns: the raw data of the selection Rename to: gtk_selection_data_get_data. [array length=length] Since 3.0
	 */
	public char[] dataGetDataWithLength()
	{
		// const guchar * gtk_selection_data_get_data_with_length  (const GtkSelectionData *selection_data,  gint *length);
		int length;
		auto p = gtk_selection_data_get_data_with_length(gtkSelectionData, &length);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. length];
	}
	
	/**
	 * Retrieves the data type of the selection.
	 * Since 2.14
	 * Returns: the data type of the selection. [transfer none]
	 */
	public GdkAtom dataGetDataType()
	{
		// GdkAtom gtk_selection_data_get_data_type (const GtkSelectionData *selection_data);
		return gtk_selection_data_get_data_type(gtkSelectionData);
	}
	
	/**
	 * Retrieves the display of the selection.
	 * Since 2.14
	 * Returns: the display of the selection. [transfer none]
	 */
	public Display dataGetDisplay()
	{
		// GdkDisplay * gtk_selection_data_get_display (const GtkSelectionData *selection_data);
		auto p = gtk_selection_data_get_display(gtkSelectionData);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}
	
	/**
	 * Retrieves the format of the selection.
	 * Since 2.14
	 * Returns: the format of the selection.
	 */
	public int dataGetFormat()
	{
		// gint gtk_selection_data_get_format (const GtkSelectionData *selection_data);
		return gtk_selection_data_get_format(gtkSelectionData);
	}
	
	/**
	 * Retrieves the target of the selection.
	 * Since 2.14
	 * Returns: the target of the selection. [transfer none]
	 */
	public GdkAtom dataGetTarget()
	{
		// GdkAtom gtk_selection_data_get_target (const GtkSelectionData *selection_data);
		return gtk_selection_data_get_target(gtkSelectionData);
	}
	
	/**
	 * Removes all handlers and unsets ownership of all
	 * selections for a widget. Called when widget is being
	 * destroyed. This function will not generally be
	 * called by applications.
	 * Params:
	 * widget = a GtkWidget
	 */
	public static void removeAll(Widget widget)
	{
		// void gtk_selection_remove_all (GtkWidget *widget);
		gtk_selection_remove_all((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Makes a copy of a GtkSelectionData structure and its data.
	 * Params:
	 * data = a pointer to a GtkSelectionData structure.
	 * Returns: a pointer to a copy of data.
	 */
	public SelectionData dataCopy()
	{
		// GtkSelectionData * gtk_selection_data_copy (const GtkSelectionData *data);
		auto p = gtk_selection_data_copy(gtkSelectionData);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SelectionData)(cast(GtkSelectionData*) p);
	}
	
	/**
	 * Frees a GtkSelectionData structure returned from
	 * gtk_selection_data_copy().
	 * Params:
	 * data = a pointer to a GtkSelectionData structure.
	 */
	public void dataFree()
	{
		// void gtk_selection_data_free (GtkSelectionData *data);
		gtk_selection_data_free(gtkSelectionData);
	}
}
