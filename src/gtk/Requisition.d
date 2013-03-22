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
 * outFile = Requisition
 * strct   = GtkRequisition
 * realStrct=
 * ctorStrct=
 * clss    = Requisition
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_requisition_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- accel-closures-changed
 * 	- button-press-event
 * 	- button-release-event
 * 	- can-activate-accel
 * 	- child-notify
 * 	- composited-changed
 * 	- configure-event
 * 	- damage-event
 * 	- delete-event
 * 	- destroy
 * 	- destroy-event
 * 	- direction-changed
 * 	- drag-begin
 * 	- drag-data-delete
 * 	- drag-data-get
 * 	- drag-data-received
 * 	- drag-drop
 * 	- drag-end
 * 	- drag-failed
 * 	- drag-leave
 * 	- drag-motion
 * 	- draw
 * 	- enter-notify-event
 * 	- event
 * 	- event-after
 * 	- focus
 * 	- focus-in-event
 * 	- focus-out-event
 * 	- grab-broken-event
 * 	- grab-focus
 * 	- grab-notify
 * 	- hide
 * 	- hierarchy-changed
 * 	- key-press-event
 * 	- key-release-event
 * 	- keynav-failed
 * 	- leave-notify-event
 * 	- map
 * 	- map-event
 * 	- mnemonic-activate
 * 	- motion-notify-event
 * 	- move-focus
 * 	- parent-set
 * 	- popup-menu
 * 	- property-notify-event
 * 	- proximity-in-event
 * 	- proximity-out-event
 * 	- query-tooltip
 * 	- realize
 * 	- screen-changed
 * 	- scroll-event
 * 	- selection-clear-event
 * 	- selection-get
 * 	- selection-notify-event
 * 	- selection-received
 * 	- selection-request-event
 * 	- show
 * 	- show-help
 * 	- size-allocate
 * 	- state-changed
 * 	- state-flags-changed
 * 	- style-set
 * 	- style-updated
 * 	- unmap
 * 	- unmap-event
 * 	- unrealize
 * 	- visibility-notify-event
 * 	- window-state-event
 * 	- touch-event
 * imports:
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GtkRequisition* -> Requisition
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Requisition;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtkc.Loader;
private import gtkc.paths;




/**
 * GtkWidget is the base class all widgets in GTK+ derive from. It manages the
 * widget lifecycle, states and style.
 *
 * Height-for-width Geometry Management
 *
 * GTK+ uses a height-for-width (and width-for-height) geometry management
 * system. Height-for-width means that a widget can change how much
 * vertical space it needs, depending on the amount of horizontal space
 * that it is given (and similar for width-for-height). The most common
 * example is a label that reflows to fill up the available width, wraps
 * to fewer lines, and therefore needs less height.
 *
 * Height-for-width geometry management is implemented in GTK+ by way
 * of five virtual methods:
 *
 * GtkWidgetClass.get_request_mode()
 * GtkWidgetClass.get_preferred_width()
 * GtkWidgetClass.get_preferred_height()
 * GtkWidgetClass.get_preferred_height_for_width()
 * GtkWidgetClass.get_preferred_width_for_height()
 *
 * There are some important things to keep in mind when implementing
 * height-for-width and when using it in container implementations.
 *
 * The geometry management system will query a widget hierarchy in
 * only one orientation at a time. When widgets are initially queried
 * for their minimum sizes it is generally done in two initial passes
 * in the GtkSizeRequestMode chosen by the toplevel.
 *
 * For example, when queried in the normal
 * GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH mode:
 * First, the default minimum and natural width for each widget
 * in the interface will be computed using gtk_widget_get_preferred_width().
 * Because the preferred widths for each container depend on the preferred
 * widths of their children, this information propagates up the hierarchy,
 * and finally a minimum and natural width is determined for the entire
 * toplevel. Next, the toplevel will use the minimum width to query for the
 * minimum height contextual to that width using
 * gtk_widget_get_preferred_height_for_width(), which will also be a highly
 * recursive operation. The minimum height for the minimum width is normally
 * used to set the minimum size constraint on the toplevel
 * (unless gtk_window_set_geometry_hints() is explicitly used instead).
 *
 * After the toplevel window has initially requested its size in both
 * dimensions it can go on to allocate itself a reasonable size (or a size
 * previously specified with gtk_window_set_default_size()). During the
 * recursive allocation process it's important to note that request cycles
 * will be recursively executed while container widgets allocate their children.
 * Each container widget, once allocated a size, will go on to first share the
 * space in one orientation among its children and then request each child's
 * height for its target allocated width or its width for allocated height,
 * depending. In this way a GtkWidget will typically be requested its size
 * a number of times before actually being allocated a size. The size a
 * widget is finally allocated can of course differ from the size it has
 * requested. For this reason, GtkWidget caches a small number of results
 * to avoid re-querying for the same sizes in one allocation cycle.
 *
 * See GtkContainer's
 * geometry management section
 * to learn more about how height-for-width allocations are performed
 * by container widgets.
 *
 * If a widget does move content around to intelligently use up the
 * allocated size then it must support the request in both
 * GtkSizeRequestModes even if the widget in question only
 * trades sizes in a single orientation.
 *
 * For instance, a GtkLabel that does height-for-width word wrapping
 * will not expect to have GtkWidgetClass.get_preferred_height() called
 * because that call is specific to a width-for-height request. In this
 * case the label must return the height required for its own minimum
 * possible width. By following this rule any widget that handles
 * height-for-width or width-for-height requests will always be allocated
 * at least enough space to fit its own content.
 *
 * Here are some examples of how a GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH widget
 * generally deals with width-for-height requests, for GtkWidgetClass.get_preferred_height()
 * it will do:
 *
 * static void
 * foo_widget_get_preferred_height (GtkWidget *widget, gint *min_height, gint *nat_height)
 * {
	 *  if (i_am_in_height_for_width_mode)
	 *  {
		 *  gint min_width;
		 *
		 *  GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget, min_width, NULL);
		 *  GTK_WIDGET_GET_CLASS (widget)->get_preferred_height_for_width (widget, min_width,
		 *  min_height, nat_height);
	 *  }
	 *  else
	 *  {
		 *  ... some widgets do both. For instance, if a GtkLabel is rotated to 90 degrees
		 *  it will return the minimum and natural height for the rotated label here.
	 *  }
 * }
 *
 * And in GtkWidgetClass.get_preferred_width_for_height() it will simply return
 * the minimum and natural width:
 *
 * static void
 * foo_widget_get_preferred_width_for_height (GtkWidget *widget, gint for_height,
 *  gint *min_width, gint *nat_width)
 * {
	 *  if (i_am_in_height_for_width_mode)
	 *  {
		 *  GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget, min_width, nat_width);
	 *  }
	 *  else
	 *  {
		 *  ... again if a widget is sometimes operating in width-for-height mode
		 *  (like a rotated GtkLabel) it can go ahead and do its real width for
		 *  height calculation here.
	 *  }
 * }
 *
 * Often a widget needs to get its own request during size request or
 * allocation. For example, when computing height it may need to also
 * compute width. Or when deciding how to use an allocation, the widget
 * may need to know its natural size. In these cases, the widget should
 * be careful to call its virtual methods directly, like this:
 *
 * $(DDOC_COMMENT example)
 *
 * It will not work to use the wrapper functions, such as
 * gtk_widget_get_preferred_width() inside your own size request
 * implementation. These return a request adjusted by GtkSizeGroup
 * and by the GtkWidgetClass.adjust_size_request() virtual method. If a
 * widget used the wrappers inside its virtual method implementations,
 * then the adjustments (such as widget margins) would be applied
 * twice. GTK+ therefore does not allow this and will warn if you try
 * to do it.
 *
 * Of course if you are getting the size request for
 * another widget, such as a child of a
 * container, you must use the wrapper APIs.
 * Otherwise, you would not properly consider widget margins,
 * GtkSizeGroup, and so forth.
 *
 * <hr>
 *
 * Style Properties
 *
 * GtkWidget introduces style
 * properties - these are basically object properties that are stored
 * not on the object, but in the style object associated to the widget. Style
 * properties are set in resource files.
 * This mechanism is used for configuring such things as the location of the
 * scrollbar arrows through the theme, giving theme authors more control over the
 * look of applications without the need to write a theme engine in C.
 *
 * Use gtk_widget_class_install_style_property() to install style properties for
 * a widget class, gtk_widget_class_find_style_property() or
 * gtk_widget_class_list_style_properties() to get information about existing
 * style properties and gtk_widget_style_get_property(), gtk_widget_style_get() or
 * gtk_widget_style_get_valist() to obtain the value of a style property.
 *
 * <hr>
 *
 * GtkWidget as GtkBuildable
 *
 * The GtkWidget implementation of the GtkBuildable interface supports a
 * custom <accelerator> element, which has attributes named key,
 * modifiers and signal and allows to specify accelerators.
 *
 * $(DDOC_COMMENT example)
 *
 * In addition to accelerators, GtkWidget also support a
 * custom <accessible> element, which supports actions and relations.
 * Properties on the accessible implementation of an object can be set by accessing the
 * internal child "accessible" of a GtkWidget.
 *
 * $(DDOC_COMMENT example)
 *
 * Finally, GtkWidget allows style information such as style classes to
 * be associated with widgets, using the custom <style> element:
 *
 * $(DDOC_COMMENT example)
 */
public class Requisition
{
	
	/** the main Gtk struct */
	protected GtkRequisition* gtkRequisition;
	
	
	public GtkRequisition* getRequisitionStruct()
	{
		return gtkRequisition;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkRequisition;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRequisition* gtkRequisition)
	{
		this.gtkRequisition = gtkRequisition;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkRequisition !is null )
		{
			gtk_requisition_free(gtkRequisition);
		}
	}
	
	/**
	 */
	
	/**
	 * Allocates a new GtkRequisition structure and initializes its elements to zero.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkRequisition * gtk_requisition_new (void);
		auto p = gtk_requisition_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_requisition_new()");
		}
		this(cast(GtkRequisition*) p);
	}
	
	/**
	 * Copies a GtkRequisition.
	 * Returns: a copy of requisition
	 */
	public Requisition copy()
	{
		// GtkRequisition * gtk_requisition_copy (const GtkRequisition *requisition);
		auto p = gtk_requisition_copy(gtkRequisition);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Requisition)(cast(GtkRequisition*) p);
	}
	
	/**
	 * Frees a GtkRequisition.
	 */
	public void free()
	{
		// void gtk_requisition_free (GtkRequisition *requisition);
		gtk_requisition_free(gtkRequisition);
	}
}
