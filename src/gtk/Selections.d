/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Selections
 * strct   = 
 * realStrct=
 * clss    = Selections
 * extend  = 
 * prefixes:
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * 	- gdk.Display
 * 	- gdkpixbuf.Pixbuf
 * structWrap:
 * 	- GdkDisplay* -> Display
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Selections;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.Widget;private import gdk.Display;private import gdkpixbuf.Pixbuf;
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
	 * Creates a new GtkTargetList from an array of GtkTargetEntry.
	 * targets:
	 *  Pointer to an array of GtkTargetEntry
	 * ntargets:
	 *  number of entries in targets.
	 * Returns:
	 *  the new GtkTargetList.
	 */
	public static GtkTargetList* targetListNew(GtkTargetEntry* targets, uint ntargets)
	{
		// GtkTargetList* gtk_target_list_new (const GtkTargetEntry *targets,  guint ntargets);
		return gtk_target_list_new(targets, ntargets);
	}
	
	/**
	 * Increases the reference count of a GtkTargetList by one.
	 * list:
	 *  a GtkTargetList
	 */
	public static void targetListRef(GtkTargetList* list)
	{
		// void gtk_target_list_ref (GtkTargetList *list);
		gtk_target_list_ref(list);
	}
	
	/**
	 * Decreases the reference count of a GtkTargetList by one.
	 * If the resulting reference count is zero, frees the list.
	 * list:
	 *  a GtkTargetList
	 */
	public static void targetListUnref(GtkTargetList* list)
	{
		// void gtk_target_list_unref (GtkTargetList *list);
		gtk_target_list_unref(list);
	}
	
	/**
	 * Appends another target to a GtkTargetList.
	 * list:
	 *  a GtkTargetList
	 * target:
	 *  the interned atom representing the target
	 * flags:
	 *  the flags for this target
	 * info:
	 *  an ID that will be passed back to the application
	 */
	public static void targetListAdd(GtkTargetList* list, GdkAtom target, uint flags, uint info)
	{
		// void gtk_target_list_add (GtkTargetList *list,  GdkAtom target,  guint flags,  guint info);
		gtk_target_list_add(list, target, flags, info);
	}
	
	/**
	 * Prepends a table of GtkTargetEntry to a target list.
	 * list:
	 *  a GtkTargetList
	 * targets:
	 *  the table of GtkTargetEntry
	 * ntargets:
	 *  number of targets in the table
	 */
	public static void targetListAddTable(GtkTargetList* list, GtkTargetEntry* targets, uint ntargets)
	{
		// void gtk_target_list_add_table (GtkTargetList *list,  const GtkTargetEntry *targets,  guint ntargets);
		gtk_target_list_add_table(list, targets, ntargets);
	}
	
	/**
	 * Appends the text targets supported by GtkSelection to
	 * the target list. All targets are added with the same info.
	 * list:
	 *  a GtkTargetList
	 * info:
	 *  an ID that will be passed back to the application
	 * Since 2.6
	 */
	public static void targetListAddTextTargets(GtkTargetList* list, uint info)
	{
		// void gtk_target_list_add_text_targets  (GtkTargetList *list,  guint info);
		gtk_target_list_add_text_targets(list, info);
	}
	
	/**
	 * Appends the image targets supported by GtkSelection to
	 * the target list. All targets are added with the same info.
	 * list:
	 *  a GtkTargetList
	 * info:
	 *  an ID that will be passed back to the application
	 * writable:
	 *  whether to add only targets for which GTK+ knows
	 *  how to convert a pixbuf into the format
	 * Since 2.6
	 */
	public static void targetListAddImageTargets(GtkTargetList* list, uint info, int writable)
	{
		// void gtk_target_list_add_image_targets  (GtkTargetList *list,  guint info,  gboolean writable);
		gtk_target_list_add_image_targets(list, info, writable);
	}
	
	/**
	 * Appends the URI targets supported by GtkSelection to
	 * the target list. All targets are added with the same info.
	 * list:
	 *  a GtkTargetList
	 * info:
	 *  an ID that will be passed back to the application
	 * Since 2.6
	 */
	public static void targetListAddUriTargets(GtkTargetList* list, uint info)
	{
		// void gtk_target_list_add_uri_targets (GtkTargetList *list,  guint info);
		gtk_target_list_add_uri_targets(list, info);
	}
	
	/**
	 * Removes a target from a target list.
	 * list:
	 *  a GtkTargetList
	 * target:
	 *  the interned atom representing the target
	 */
	public static void targetListRemove(GtkTargetList* list, GdkAtom target)
	{
		// void gtk_target_list_remove (GtkTargetList *list,  GdkAtom target);
		gtk_target_list_remove(list, target);
	}
	
	/**
	 * Looks up a given target in a GtkTargetList.
	 * list:
	 *  a GtkTargetList
	 * target:
	 *  an interned atom representing the target to search for
	 * info:
	 *  a pointer to the location to store application info for target
	 * Returns:
	 *  TRUE if the target was found, otherwise FALSE
	 */
	public static int targetListFind(GtkTargetList* list, GdkAtom target, uint* info)
	{
		// gboolean gtk_target_list_find (GtkTargetList *list,  GdkAtom target,  guint *info);
		return gtk_target_list_find(list, target, info);
	}
	
	/**
	 * Claims ownership of a given selection for a particular widget,
	 * or, if widget is NULL, release ownership of the selection.
	 * widget:
	 *  a GtkWidget, or NULL.
	 * selection:
	 *  an interned atom representing the selection to claim
	 * time_:
	 *  timestamp with which to claim the selection
	 * Returns:
	 *  TRUE if the operation succeeded
	 */
	public static int selectionOwnerSet(Widget widget, GdkAtom selection, uint time)
	{
		// gboolean gtk_selection_owner_set (GtkWidget *widget,  GdkAtom selection,  guint32 time_);
		return gtk_selection_owner_set(widget.getWidgetStruct(), selection, time);
	}
	
	/**
	 * Claim ownership of a given selection for a particular widget, or,
	 * if widget is NULL, release ownership of the selection.
	 * display:
	 *  the Gdkdisplay where the selection is set
	 * widget:
	 *  new selection owner (a GdkWidget), or NULL.
	 * selection:
	 *  an interned atom representing the selection to claim.
	 * time_:
	 *  timestamp with which to claim the selection
	 * Returns:
	 *  TRUE if the operation succeeded
	 * Since 2.2
	 */
	public static int selectionOwnerSetForDisplay(Display display, Widget widget, GdkAtom selection, uint time)
	{
		// gboolean gtk_selection_owner_set_for_display  (GdkDisplay *display,  GtkWidget *widget,  GdkAtom selection,  guint32 time_);
		return gtk_selection_owner_set_for_display(display.getDisplayStruct(), widget.getWidgetStruct(), selection, time);
	}
	
	/**
	 * Appends a specified target to the list of supported targets for a
	 * given widget and selection.
	 * widget:
	 *  a GtkTarget
	 * selection:
	 *  the selection
	 * target:
	 *  target to add.
	 * info:
	 *  A unsigned integer which will be passed back to the application.
	 */
	public static void selectionAddTarget(Widget widget, GdkAtom selection, GdkAtom target, uint info)
	{
		// void gtk_selection_add_target (GtkWidget *widget,  GdkAtom selection,  GdkAtom target,  guint info);
		gtk_selection_add_target(widget.getWidgetStruct(), selection, target, info);
	}
	
	/**
	 * Prepends a table of targets to the list of supported targets
	 * for a given widget and selection.
	 * widget:
	 *  a GtkWidget
	 * selection:
	 *  the selection
	 * targets:
	 *  a table of targets to add
	 * ntargets:
	 *  number of entries in targets
	 */
	public static void selectionAddTargets(Widget widget, GdkAtom selection, GtkTargetEntry* targets, uint ntargets)
	{
		// void gtk_selection_add_targets (GtkWidget *widget,  GdkAtom selection,  const GtkTargetEntry *targets,  guint ntargets);
		gtk_selection_add_targets(widget.getWidgetStruct(), selection, targets, ntargets);
	}
	
	/**
	 * Remove all targets registered for the given selection for the
	 * widget.
	 * widget:
	 *  a GtkWidget
	 * selection:
	 *  an atom representing a selection
	 */
	public static void selectionClearTargets(Widget widget, GdkAtom selection)
	{
		// void gtk_selection_clear_targets (GtkWidget *widget,  GdkAtom selection);
		gtk_selection_clear_targets(widget.getWidgetStruct(), selection);
	}
	
	/**
	 * Requests the contents of a selection. When received,
	 * a "selection_received" signal will be generated.
	 * widget:
	 *  The widget which acts as requestor
	 * selection:
	 *  Which selection to get
	 * target:
	 *  Form of information desired (e.g., STRING)
	 * time_:
	 *  Time of request (usually of triggering event)
	 *  In emergency, you could use GDK_CURRENT_TIME
	 * Returns:
	 *  TRUE if requested succeeded. FALSE if we could not process
	 *  request. (e.g., there was already a request in process for
	 *  this widget).
	 */
	public static int selectionConvert(Widget widget, GdkAtom selection, GdkAtom target, uint time)
	{
		// gboolean gtk_selection_convert (GtkWidget *widget,  GdkAtom selection,  GdkAtom target,  guint32 time_);
		return gtk_selection_convert(widget.getWidgetStruct(), selection, target, time);
	}
	
	/**
	 * Stores new data into a GtkSelectionData object. Should
	 * only be called from a selection handler callback.
	 * Zero-terminates the stored data.
	 * selection_data:
	 *  a pointer to a GtkSelectionData structure.
	 * type:
	 *  the type of selection data
	 * format:
	 *  format (number of bits in a unit)
	 * data:
	 *  pointer to the data (will be copied)
	 * length:
	 *  length of the data
	 */
	public static void selectionDataSet(GtkSelectionData* selectionData, GdkAtom type, int format, char* data, int length)
	{
		// void gtk_selection_data_set (GtkSelectionData *selection_data,  GdkAtom type,  gint format,  const guchar *data,  gint length);
		gtk_selection_data_set(selectionData, type, format, data, length);
	}
	
	/**
	 * Sets the contents of the selection from a UTF-8 encoded string.
	 * The string is converted to the form determined by
	 * selection_data->target.
	 * selection_data:
	 *  a GtkSelectionData
	 * str:
	 *  a UTF-8 string
	 * len:
	 *  the length of str, or -1 if str is nul-terminated.
	 * Returns:
	 *  TRUE if the selection was successfully set,
	 *  otherwise FALSE.
	 */
	public static int selectionDataSetText(GtkSelectionData* selectionData, char[] str, int len)
	{
		// gboolean gtk_selection_data_set_text (GtkSelectionData *selection_data,  const gchar *str,  gint len);
		return gtk_selection_data_set_text(selectionData, std.string.toStringz(str), len);
	}
	
	/**
	 * Gets the contents of the selection data as a UTF-8 string.
	 * selection_data:
	 *  a GtkSelectionData
	 * Returns:
	 *  if the selection data contained a recognized
	 *  text type and it could be converted to UTF-8, a newly allocated
	 *  string containing the converted text, otherwise NULL.
	 *  If the result is non-NULL it must be freed with g_free().
	 */
	public static char* selectionDataGetText(GtkSelectionData* selectionData)
	{
		// guchar* gtk_selection_data_get_text (GtkSelectionData *selection_data);
		return gtk_selection_data_get_text(selectionData);
	}
	
	/**
	 * Sets the contents of the selection from a GdkPixbuf
	 * The pixbuf is converted to the form determined by
	 * selection_data->target.
	 * selection_data:
	 *  a GtkSelectionData
	 * pixbuf:
	 *  a GdkPixbuf
	 * Returns:
	 *  TRUE if the selection was successfully set,
	 *  otherwise FALSE.
	 * Since 2.6
	 */
	public static int selectionDataSetPixbuf(GtkSelectionData* selectionData, Pixbuf pixbuf)
	{
		// gboolean gtk_selection_data_set_pixbuf (GtkSelectionData *selection_data,  GdkPixbuf *pixbuf);
		return gtk_selection_data_set_pixbuf(selectionData, pixbuf.getPixbufStruct());
	}
	
	/**
	 * Gets the contents of the selection data as a GdkPixbuf.
	 * selection_data:
	 *  a GtkSelectionData
	 * Returns:
	 *  if the selection data contained a recognized
	 *  image type and it could be converted to a GdkPixbuf, a
	 *  newly allocated pixbuf is returned, otherwise NULL.
	 *  If the result is non-NULL it must be freed with g_object_unref().
	 * Since 2.6
	 */
	public static Pixbuf selectionDataGetPixbuf(GtkSelectionData* selectionData)
	{
		// GdkPixbuf* gtk_selection_data_get_pixbuf (GtkSelectionData *selection_data);
		return new Pixbuf( gtk_selection_data_get_pixbuf(selectionData) );
	}
	
	/**
	 * Sets the contents of the selection from a list of URIs.
	 * The string is converted to the form determined by
	 * selection_data->target.
	 * selection_data:
	 *  a GtkSelectionData
	 * uris:
	 *  a NULL-terminated array of strings hilding URIs
	 * Returns:
	 *  TRUE if the selection was successfully set,
	 *  otherwise FALSE.
	 * Since 2.6
	 */
	public static int selectionDataSetUris(GtkSelectionData* selectionData, char** uris)
	{
		// gboolean gtk_selection_data_set_uris (GtkSelectionData *selection_data,  gchar **uris);
		return gtk_selection_data_set_uris(selectionData, uris);
	}
	
	/**
	 * Gets the contents of the selection data as array of URIs.
	 * selection_data:
	 *  a GtkSelectionData
	 * Returns:
	 *  if the selection data contains a list of
	 *  URIs, a newly allocated NULL-terminated string array
	 *  containing the URIs, otherwise NULL. If the result is
	 *  non-NULL it must be freed with g_strfreev().
	 * Since 2.6
	 */
	public static char** selectionDataGetUris(GtkSelectionData* selectionData)
	{
		// gchar** gtk_selection_data_get_uris (GtkSelectionData *selection_data);
		return gtk_selection_data_get_uris(selectionData);
	}
	
	/**
	 * Gets the contents of selection_data as an array of targets.
	 * This can be used to interpret the results of getting
	 * the standard TARGETS target that is always supplied for
	 * any selection.
	 * selection_data:
	 *  a GtkSelectionData object
	 * targets:
	 *  location to store an array of targets. The result
	 *  stored here must be freed with g_free().
	 * n_atoms:
	 *  location to store number of items in targets.
	 * Returns:
	 *  TRUE if selection_data contains a valid
	 *  array of targets, otherwise FALSE.
	 */
	public static int selectionDataGetTargets(GtkSelectionData* selectionData, GdkAtom** targets, int* nAtoms)
	{
		// gboolean gtk_selection_data_get_targets (GtkSelectionData *selection_data,  GdkAtom **targets,  gint *n_atoms);
		return gtk_selection_data_get_targets(selectionData, targets, nAtoms);
	}
	
	/**
	 * Given a GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in targets can be used to
	 * provide a GdkPixbuf.
	 * selection_data:
	 *  a GtkSelectionData object
	 * writable:
	 *  whether to accept only targets for which GTK+ knows
	 *  how to convert a pixbuf into the format
	 * Returns:
	 *  TRUE if selection_data holds a list of targets,
	 *  and a suitable target for images is included, otherwise FALSE.
	 * Since 2.6
	 */
	public static int selectionDataTargetsIncludeImage(GtkSelectionData* selectionData, int writable)
	{
		// gboolean gtk_selection_data_targets_include_image  (GtkSelectionData *selection_data,  gboolean writable);
		return gtk_selection_data_targets_include_image(selectionData, writable);
	}
	
	/**
	 * Given a GtkSelectionData object holding a list of targets,
	 * determines if any of the targets in targets can be used to
	 * provide text.
	 * selection_data:
	 *  a GtkSelectionData object
	 * Returns:
	 *  TRUE if selection_data holds a list of targets,
	 *  and a suitable target for text is included, otherwise FALSE.
	 */
	public static int selectionDataTargetsIncludeText(GtkSelectionData* selectionData)
	{
		// gboolean gtk_selection_data_targets_include_text  (GtkSelectionData *selection_data);
		return gtk_selection_data_targets_include_text(selectionData);
	}
	
	/**
	 * Removes all handlers and unsets ownership of all
	 * selections for a widget. Called when widget is being
	 * destroyed. This function will not generally be
	 * called by applications.
	 * widget:
	 *  a GtkWidget
	 */
	public static void selectionRemoveAll(Widget widget)
	{
		// void gtk_selection_remove_all (GtkWidget *widget);
		gtk_selection_remove_all(widget.getWidgetStruct());
	}
	
	/**
	 * Warning
	 * gtk_selection_clear is deprecated and should not be used in newly-written code. Instead of calling this function, chain up from
	 * your selection_clear_event handler. Calling this function
	 * from any other context is illegal.
	 * The default handler for the GtkWidget::selection_clear_event
	 * signal.
	 * widget:
	 *  a GtkWidget
	 * event:
	 *  the event
	 * Returns:
	 *  TRUE if the event was handled, otherwise false
	 * Since 2.2
	 */
	public static int selectionClear(Widget widget, GdkEventSelection* event)
	{
		// gboolean gtk_selection_clear (GtkWidget *widget,  GdkEventSelection *event);
		return gtk_selection_clear(widget.getWidgetStruct(), event);
	}
	
	/**
	 * Makes a copy of a GtkSelectionData structure and its data.
	 * data:
	 *  a pointer to a GtkSelectionData structure.
	 * Returns:
	 *  a pointer to a copy of data.
	 */
	public static GtkSelectionData* selectionDataCopy(GtkSelectionData* data)
	{
		// GtkSelectionData* gtk_selection_data_copy (GtkSelectionData *data);
		return gtk_selection_data_copy(data);
	}
	
	/**
	 * Frees a GtkSelectionData structure returned from
	 * gtk_selection_data_copy().
	 * data:
	 *  a pointer to a GtkSelectionData structure.
	 * See Also
	 * GtkWidget
	 * Much of the operation of selections happens via
	 *  signals for GtkWidget. In particular, if you are
	 *  using the functions in this section, you may need
	 *  to pay attention to ::selection_get,
	 *  ::selection_received, and :selection_clear_event
	 *  signals.
	 */
	public static void selectionDataFree(GtkSelectionData* data)
	{
		// void gtk_selection_data_free (GtkSelectionData *data);
		gtk_selection_data_free(data);
	}
}
