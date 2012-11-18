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
 * inFile  = gtk3-GtkWidgetPath.html
 * outPack = gtk
 * outFile = WidgetPath
 * strct   = GtkWidgetPath
 * realStrct=
 * ctorStrct=
 * clss    = WidgetPath
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_widget_path_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListSG
 * 	- gtk.Widget
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkWidget* -> Widget
 * 	- GtkWidgetPath* -> WidgetPath
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gtk.WidgetPath;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListSG;
private import gtk.Widget;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * GtkWidgetPath is a boxed type that represents a widget hierarchy from
 * the topmost widget, typically a toplevel, to any child. This widget
 * path abstraction is used in GtkStyleContext on behalf of the real
 * widget in order to query style information.
 * If you are using GTK+ widgets, you probably will not need to use
 * this API directly, as there is gtk_widget_get_path(), and the style
 * context returned by gtk_widget_get_style_context() will be automatically
 * updated on widget hierarchy changes.
 * The widget path generation is generally simple:
 * $(DDOC_COMMENT example)
 * Although more complex information, such as widget names, or
 * different classes (property that may be used by other widget
 * types) and intermediate regions may be included:
 * $(DDOC_COMMENT example)
 * All this information will be used to match the style information
 * that applies to the described widget.
 */
public class WidgetPath
{
	
	/** the main Gtk struct */
	protected GtkWidgetPath* gtkWidgetPath;
	
	
	public GtkWidgetPath* getWidgetPathStruct()
	{
		return gtkWidgetPath;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkWidgetPath;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkWidgetPath* gtkWidgetPath)
	{
		this.gtkWidgetPath = gtkWidgetPath;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkWidgetPath !is null )
		{
			gtk_widget_path_free(gtkWidgetPath);
		}
	}
	
	/**
	 */
	
	/**
	 * Appends a widget type to the widget hierarchy represented by path.
	 * Params:
	 * type = widget type to append
	 * Returns: the position where the element was inserted Since 3.0
	 */
	public int appendType(GType type)
	{
		// gint gtk_widget_path_append_type (GtkWidgetPath *path,  GType type);
		return gtk_widget_path_append_type(gtkWidgetPath, type);
	}
	
	/**
	 * Appends a widget type with all its siblings to the widget hierarchy
	 * represented by path. Using this function instead of
	 * gtk_widget_path_append_type() will allow the CSS theming to use
	 * sibling matches in selectors and apply :nth-child() pseudo classes.
	 * In turn, it requires a lot more care in widget implementations as
	 * widgets need to make sure to call gtk_widget_reset_style() on all
	 * involved widgets when the siblings path changes.
	 * Params:
	 * siblings = a widget path describing a list of siblings. This path
	 * may not contain any siblings itself and it must not be modified
	 * afterwards.
	 * siblingIndex = index into siblings for where the added element is
	 * positioned.
	 * Returns: the position where the element was inserted. Since 3.2
	 */
	public int appendWithSiblings(WidgetPath siblings, uint siblingIndex)
	{
		// gint gtk_widget_path_append_with_siblings  (GtkWidgetPath *path,  GtkWidgetPath *siblings,  guint sibling_index);
		return gtk_widget_path_append_with_siblings(gtkWidgetPath, (siblings is null) ? null : siblings.getWidgetPathStruct(), siblingIndex);
	}
	
	/**
	 * Appends the data from widget to the widget hierarchy represented
	 * by path. This function is a shortcut for adding information from
	 * widget to the given path. This includes setting the name or
	 * adding the style classes from widget.
	 * Params:
	 * widget = the widget to append to the widget path
	 * Returns: the position where the data was inserted Since 3.2
	 */
	public int appendForWidget(Widget widget)
	{
		// gint gtk_widget_path_append_for_widget (GtkWidgetPath *path,  GtkWidget *widget);
		return gtk_widget_path_append_for_widget(gtkWidgetPath, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Returns a copy of path
	 * Returns: a copy of path. [transfer full] Since 3.0
	 */
	public WidgetPath copy()
	{
		// GtkWidgetPath * gtk_widget_path_copy (const GtkWidgetPath *path);
		auto p = gtk_widget_path_copy(gtkWidgetPath);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(WidgetPath)(cast(GtkWidgetPath*) p);
	}
	
	/**
	 * Increments the reference count on path.
	 * Returns: path itself. Since 3.2
	 */
	public WidgetPath doref()
	{
		// GtkWidgetPath * gtk_widget_path_ref (GtkWidgetPath *path);
		auto p = gtk_widget_path_ref(gtkWidgetPath);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(WidgetPath)(cast(GtkWidgetPath*) p);
	}
	
	/**
	 * Decrements the reference count on path, freeing the structure
	 * if the reference count reaches 0.
	 */
	public void unref()
	{
		// void gtk_widget_path_unref (GtkWidgetPath *path);
		gtk_widget_path_unref(gtkWidgetPath);
	}
	
	/**
	 * Decrements the reference count on path, freeing the structure
	 * if the reference count reaches 0.
	 */
	public void free()
	{
		// void gtk_widget_path_free (GtkWidgetPath *path);
		gtk_widget_path_free(gtkWidgetPath);
	}
	
	/**
	 * Returns the topmost object type, that is, the object type this path
	 * is representing.
	 * Returns: The object type Since 3.0
	 */
	public GType getObjectType()
	{
		// GType gtk_widget_path_get_object_type (const GtkWidgetPath *path);
		return gtk_widget_path_get_object_type(gtkWidgetPath);
	}
	
	/**
	 * Returns TRUE if any of the parents of the widget represented
	 * in path is of type type, or any subtype of it.
	 * Params:
	 * type = widget type to check in parents
	 * Returns: TRUE if any parent is of type type Since 3.0
	 */
	public int hasParent(GType type)
	{
		// gboolean gtk_widget_path_has_parent (const GtkWidgetPath *path,  GType type);
		return gtk_widget_path_has_parent(gtkWidgetPath, type);
	}
	
	/**
	 * Returns TRUE if the widget type represented by this path
	 * is type, or a subtype of it.
	 * Params:
	 * type = widget type to match
	 * Returns: TRUE if the widget represented by path is of type type Since 3.0
	 */
	public int isType(GType type)
	{
		// gboolean gtk_widget_path_is_type (const GtkWidgetPath *path,  GType type);
		return gtk_widget_path_is_type(gtkWidgetPath, type);
	}
	
	/**
	 * Adds the class name to the widget at position pos in
	 * the hierarchy defined in path. See
	 * gtk_style_context_add_class().
	 * Params:
	 * pos = position to modify, -1 for the path head
	 * name = a class name
	 * Since 3.0
	 */
	public void iterAddClass(int pos, string name)
	{
		// void gtk_widget_path_iter_add_class (GtkWidgetPath *path,  gint pos,  const gchar *name);
		gtk_widget_path_iter_add_class(gtkWidgetPath, pos, Str.toStringz(name));
	}
	
	/**
	 * Adds the region name to the widget at position pos in
	 * the hierarchy defined in path. See
	 * gtk_style_context_add_region().
	 * Note
	 * Region names must only contain lowercase letters
	 * and '-', starting always with a lowercase letter.
	 * Params:
	 * pos = position to modify, -1 for the path head
	 * name = region name
	 * flags = flags affecting the region
	 * Since 3.0
	 */
	public void iterAddRegion(int pos, string name, GtkRegionFlags flags)
	{
		// void gtk_widget_path_iter_add_region (GtkWidgetPath *path,  gint pos,  const gchar *name,  GtkRegionFlags flags);
		gtk_widget_path_iter_add_region(gtkWidgetPath, pos, Str.toStringz(name), flags);
	}
	
	/**
	 * Removes all classes from the widget at position pos in the
	 * hierarchy defined in path.
	 * Params:
	 * pos = position to modify, -1 for the path head
	 * Since 3.0
	 */
	public void iterClearClasses(int pos)
	{
		// void gtk_widget_path_iter_clear_classes (GtkWidgetPath *path,  gint pos);
		gtk_widget_path_iter_clear_classes(gtkWidgetPath, pos);
	}
	
	/**
	 * Removes all regions from the widget at position pos in the
	 * hierarchy defined in path.
	 * Params:
	 * pos = position to modify, -1 for the path head
	 * Since 3.0
	 */
	public void iterClearRegions(int pos)
	{
		// void gtk_widget_path_iter_clear_regions (GtkWidgetPath *path,  gint pos);
		gtk_widget_path_iter_clear_regions(gtkWidgetPath, pos);
	}
	
	/**
	 * Returns the name corresponding to the widget found at
	 * the position pos in the widget hierarchy defined by
	 * path
	 * Params:
	 * pos = position to get the widget name for, -1 for the path head
	 * Returns: The widget name, or NULL if none was set.
	 */
	public string iterGetName(int pos)
	{
		// const gchar * gtk_widget_path_iter_get_name (const GtkWidgetPath *path,  gint pos);
		return Str.toString(gtk_widget_path_iter_get_name(gtkWidgetPath, pos));
	}
	
	/**
	 * Returns the object GType that is at position pos in the widget
	 * hierarchy defined in path.
	 * Params:
	 * pos = position to get the object type for, -1 for the path head
	 * Returns: a widget type Since 3.0
	 */
	public GType iterGetObjectType(int pos)
	{
		// GType gtk_widget_path_iter_get_object_type  (const GtkWidgetPath *path,  gint pos);
		return gtk_widget_path_iter_get_object_type(gtkWidgetPath, pos);
	}
	
	/**
	 * Returns the list of siblings for the element at pos. If the element
	 * was not added with siblings, NULL is returned.
	 * Params:
	 * pos = position to get the siblings for, -1 for the path head
	 * Returns: NULL or the list of siblings for the element at pos.
	 */
	public WidgetPath iterGetSiblings(int pos)
	{
		// const GtkWidgetPath * gtk_widget_path_iter_get_siblings (const GtkWidgetPath *path,  gint pos);
		auto p = gtk_widget_path_iter_get_siblings(gtkWidgetPath, pos);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(WidgetPath)(cast(GtkWidgetPath*) p);
	}
	
	/**
	 * Returns the index into the list of siblings for the element at pos as
	 * returned by gtk_widget_path_iter_get_siblings(). If that function would
	 * return NULL because the element at pos has no siblings, this function
	 * will return 0.
	 * Params:
	 * pos = position to get the sibling index for, -1 for the path head
	 * Returns: 0 or the index into the list of siblings for the element at pos.
	 */
	public uint iterGetSiblingIndex(int pos)
	{
		// guint gtk_widget_path_iter_get_sibling_index  (const GtkWidgetPath *path,  gint pos);
		return gtk_widget_path_iter_get_sibling_index(gtkWidgetPath, pos);
	}
	
	/**
	 * Returns TRUE if the widget at position pos has the class name
	 * defined, FALSE otherwise.
	 * Params:
	 * pos = position to query, -1 for the path head
	 * name = class name
	 * Returns: TRUE if the class name is defined for the widget at pos Since 3.0
	 */
	public int iterHasClass(int pos, string name)
	{
		// gboolean gtk_widget_path_iter_has_class (const GtkWidgetPath *path,  gint pos,  const gchar *name);
		return gtk_widget_path_iter_has_class(gtkWidgetPath, pos, Str.toStringz(name));
	}
	
	/**
	 * Returns TRUE if the widget at position pos has the name name,
	 * FALSE otherwise.
	 * Params:
	 * pos = position to query, -1 for the path head
	 * name = a widget name
	 * Returns: TRUE if the widget at pos has this name Since 3.0
	 */
	public int iterHasName(int pos, string name)
	{
		// gboolean gtk_widget_path_iter_has_name (const GtkWidgetPath *path,  gint pos,  const gchar *name);
		return gtk_widget_path_iter_has_name(gtkWidgetPath, pos, Str.toStringz(name));
	}
	
	/**
	 * See gtk_widget_path_iter_has_class(). This is a version that operates
	 * with GQuarks.
	 * Params:
	 * pos = position to query, -1 for the path head
	 * qname = class name as a GQuark
	 * Returns: TRUE if the widget at pos has the class defined. Since 3.0
	 */
	public int iterHasQclass(int pos, GQuark qname)
	{
		// gboolean gtk_widget_path_iter_has_qclass (const GtkWidgetPath *path,  gint pos,  GQuark qname);
		return gtk_widget_path_iter_has_qclass(gtkWidgetPath, pos, qname);
	}
	
	/**
	 * See gtk_widget_path_iter_has_name(). This is a version
	 * that operates on GQuarks.
	 * Params:
	 * pos = position to query, -1 for the path head
	 * qname = widget name as a GQuark
	 * Returns: TRUE if the widget at pos has this name Since 3.0
	 */
	public int iterHasQname(int pos, GQuark qname)
	{
		// gboolean gtk_widget_path_iter_has_qname (const GtkWidgetPath *path,  gint pos,  GQuark qname);
		return gtk_widget_path_iter_has_qname(gtkWidgetPath, pos, qname);
	}
	
	/**
	 * See gtk_widget_path_iter_has_region(). This is a version that operates
	 * with GQuarks.
	 * Params:
	 * pos = position to query, -1 for the path head
	 * qname = region name as a GQuark
	 * flags = return location for the region flags. [out]
	 * Returns: TRUE if the widget at pos has the region defined. Since 3.0
	 */
	public int iterHasQregion(int pos, GQuark qname, out GtkRegionFlags flags)
	{
		// gboolean gtk_widget_path_iter_has_qregion (const GtkWidgetPath *path,  gint pos,  GQuark qname,  GtkRegionFlags *flags);
		return gtk_widget_path_iter_has_qregion(gtkWidgetPath, pos, qname, &flags);
	}
	
	/**
	 * Returns TRUE if the widget at position pos has the class name
	 * defined, FALSE otherwise.
	 * Params:
	 * pos = position to query, -1 for the path head
	 * name = region name
	 * flags = return location for the region flags. [out]
	 * Returns: TRUE if the class name is defined for the widget at pos Since 3.0
	 */
	public int iterHasRegion(int pos, string name, out GtkRegionFlags flags)
	{
		// gboolean gtk_widget_path_iter_has_region (const GtkWidgetPath *path,  gint pos,  const gchar *name,  GtkRegionFlags *flags);
		return gtk_widget_path_iter_has_region(gtkWidgetPath, pos, Str.toStringz(name), &flags);
	}
	
	/**
	 * Returns a list with all the class names defined for the widget
	 * at position pos in the hierarchy defined in path.
	 * Params:
	 * pos = position to query, -1 for the path head
	 * Returns: The list of classes, This is a list of strings, the GSList contents are owned by GTK+, but you should use g_slist_free() to free the list itself. [transfer container][element-type utf8] Since 3.0
	 */
	public ListSG iterListClasses(int pos)
	{
		// GSList * gtk_widget_path_iter_list_classes (const GtkWidgetPath *path,  gint pos);
		auto p = gtk_widget_path_iter_list_classes(gtkWidgetPath, pos);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Returns a list with all the region names defined for the widget
	 * at position pos in the hierarchy defined in path.
	 * Params:
	 * pos = position to query, -1 for the path head
	 * Returns: The list of regions, This is a list of strings, the GSList contents are owned by GTK+, but you should use g_slist_free() to free the list itself. [transfer container][element-type utf8] Since 3.0
	 */
	public ListSG iterListRegions(int pos)
	{
		// GSList * gtk_widget_path_iter_list_regions (const GtkWidgetPath *path,  gint pos);
		auto p = gtk_widget_path_iter_list_regions(gtkWidgetPath, pos);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Removes the class name from the widget at position pos in
	 * the hierarchy defined in path.
	 * Params:
	 * pos = position to modify, -1 for the path head
	 * name = class name
	 * Since 3.0
	 */
	public void iterRemoveClass(int pos, string name)
	{
		// void gtk_widget_path_iter_remove_class (GtkWidgetPath *path,  gint pos,  const gchar *name);
		gtk_widget_path_iter_remove_class(gtkWidgetPath, pos, Str.toStringz(name));
	}
	
	/**
	 * Removes the region name from the widget at position pos in
	 * the hierarchy defined in path.
	 * Params:
	 * pos = position to modify, -1 for the path head
	 * name = region name
	 * Since 3.0
	 */
	public void iterRemoveRegion(int pos, string name)
	{
		// void gtk_widget_path_iter_remove_region (GtkWidgetPath *path,  gint pos,  const gchar *name);
		gtk_widget_path_iter_remove_region(gtkWidgetPath, pos, Str.toStringz(name));
	}
	
	/**
	 * Sets the widget name for the widget found at position pos
	 * in the widget hierarchy defined by path.
	 * Params:
	 * pos = position to modify, -1 for the path head
	 * name = widget name
	 * Since 3.0
	 */
	public void iterSetName(int pos, string name)
	{
		// void gtk_widget_path_iter_set_name (GtkWidgetPath *path,  gint pos,  const gchar *name);
		gtk_widget_path_iter_set_name(gtkWidgetPath, pos, Str.toStringz(name));
	}
	
	/**
	 * Sets the object type for a given position in the widget hierarchy
	 * defined by path.
	 * Params:
	 * pos = position to modify, -1 for the path head
	 * type = object type to set
	 * Since 3.0
	 */
	public void iterSetObjectType(int pos, GType type)
	{
		// void gtk_widget_path_iter_set_object_type  (GtkWidgetPath *path,  gint pos,  GType type);
		gtk_widget_path_iter_set_object_type(gtkWidgetPath, pos, type);
	}
	
	/**
	 * Returns the number of GtkWidget GTypes between the represented
	 * widget and its topmost container.
	 * Returns: the number of elements in the path Since 3.0
	 */
	public int length()
	{
		// gint gtk_widget_path_length (const GtkWidgetPath *path);
		return gtk_widget_path_length(gtkWidgetPath);
	}
	
	/**
	 * Returns an empty widget path.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidgetPath * gtk_widget_path_new (void);
		auto p = gtk_widget_path_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_widget_path_new()");
		}
		this(cast(GtkWidgetPath*) p);
	}
	
	/**
	 * Prepends a widget type to the widget hierachy represented by path.
	 * Params:
	 * type = widget type to prepend
	 * Since 3.0
	 */
	public void prependType(GType type)
	{
		// void gtk_widget_path_prepend_type (GtkWidgetPath *path,  GType type);
		gtk_widget_path_prepend_type(gtkWidgetPath, type);
	}
	
	/**
	 * Dumps the widget path into a string representation. It tries to match
	 * the CSS style as closely as possible (Note that there might be paths
	 * that cannot be represented in CSS).
	 * The main use of this code is for debugging purposes, so that you can
	 * g_print() the path or dump it in a gdb session.
	 * Returns: A new string describing path. Since 3.2
	 */
	public override string toString()
	{
		// char * gtk_widget_path_to_string (const GtkWidgetPath *path);
		return Str.toString(gtk_widget_path_to_string(gtkWidgetPath));
	}
}
