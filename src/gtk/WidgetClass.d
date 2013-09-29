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
 * outFile = WidgetClass
 * strct   = GtkWidgetClass
 * realStrct=
 * ctorStrct=
 * clss    = WidgetClass
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_widget_class_
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
 * 	- glib.Str
 * 	- glib.Bytes
 * 	- gobject.ParamSpec
 * 	- gtk.Widget
 * structWrap:
 * 	- GBytes* -> Bytes
 * 	- GParamSpec* -> ParamSpec
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.WidgetClass;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.Bytes;
private import gobject.ParamSpec;
private import gtk.Widget;




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
 * GtkWidgetClass.get_preferred_height_and_baseline_for_width()
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
 * Since 3.10 Gtk+ also supports baseline vertical alignment of widgets. This
 * means that widgets are positioned such that the typographical baseline of
 * widgets in the same row are aligned. This happens if a widget supports baselines,
 * has a vertical alignment of GTK_ALIGN_BASELINE, and is inside a container
 * that supports baselines and has a natural "row" that it aligns to the baseline,
 * or a baseline assigned to it by the grandparent.
 *
 * Baseline alignment support for a widget is done by the GtkWidgetClass.get_preferred_height_and_baseline_for_width()
 * virtual function. It allows you to report a baseline in combination with the
 * minimum and natural height. If there is no baseline you can return -1 to indicate
 * this. The default implementation of this virtual function calls into the
 * GtkWidgetClass.get_preferred_height() and GtkWidgetClass.get_preferred_height_for_width(),
 * so if baselines are not supported it doesn't need to be implemented.
 *
 * If a widget ends up baseline aligned it will be allocated all the space in the parent
 * as if it was GTK_ALIGN_FILL, but the selected baseline can be found via gtk_widget_get_allocated_baseline().
 * If this has a value other than -1 you need to align the widget such that the baseline
 * appears at the position.
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
 *
 * <hr>
 *
 * Building composite widgets from template XML
 *
 * GtkWidget exposes some facilities to automate the proceedure
 * of creating composite widgets using GtkBuilder interface description
 * language.
 *
 * To create composite widgets with GtkBuilder XML, one must associate
 * the interface description with the widget class at class initialization
 * time using gtk_widget_class_set_template().
 *
 * The interface description semantics expected in composite template descriptions
 * is slightly different from regulare GtkBuilder XML.
 *
 * Unlike regular interface descriptions, gtk_widget_class_set_template() will expect a
 * <template> tag as a direct child of the toplevel <interface>
 * tag. The <template> tag must specify the "class" attribute which
 * must be the type name of the widget. Optionally, the "parent" attribute
 * may be specified to specify the direct parent type of the widget type, this
 * is ignored by the GtkBuilder but required for Glade to introspect what kind
 * of properties and internal children exist for a given type when the actual
 * type does not exist.
 *
 * The XML which is contained inside the <template> tag behaves as if
 * it were added to the <object> tag defining widget itself. You may set
 * properties on widget by inserting <property> tags into the <template>
 * tag, and also add <child> tags to add children and extend widget in the
 * normal way you would with <object> tags.
 *
 * Additionally, <object> tags can also be added before and
 * after the initial <template> tag in the normal way, allowing
 * one to define auxilary objects which might be referenced by other
 * widgets declared as children of the <template> tag.
 *
 * $(DDOC_COMMENT example)
 */
public class WidgetClass
{
	
	/** the main Gtk struct */
	protected GtkWidgetClass* gtkWidgetClass;
	
	
	public GtkWidgetClass* getWidgetClassStruct()
	{
		return gtkWidgetClass;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkWidgetClass;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkWidgetClass* gtkWidgetClass)
	{
		this.gtkWidgetClass = gtkWidgetClass;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_widget_class_path has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_get_path() instead
	 * Same as gtk_widget_path(), but always uses the name of a widget's type,
	 * never uses a custom name set with gtk_widget_set_name().
	 * Params:
	 * widget = a GtkWidget
	 * pathLength = location to store the length of the
	 * class path, or NULL. [out][allow-none]
	 * path = location to store the class path as an
	 * allocated string, or NULL. [out][allow-none]
	 * pathReversed = location to store the reverse
	 * class path as an allocated string, or NULL. [out][allow-none]
	 */
	public static void path(Widget widget, out uint pathLength, out string path, out string pathReversed)
	{
		// void gtk_widget_class_path (GtkWidget *widget,  guint *path_length,  gchar **path,  gchar **path_reversed);
		char* outpath = null;
		char* outpathReversed = null;
		
		gtk_widget_class_path((widget is null) ? null : widget.getWidgetStruct(), &pathLength, &outpath, &outpathReversed);
		
		path = Str.toString(outpath);
		pathReversed = Str.toString(outpathReversed);
	}
	
	/**
	 * Installs a style property on a widget class. The parser for the
	 * style property is determined by the value type of pspec.
	 * Params:
	 * pspec = the GParamSpec for the property
	 */
	public void installStyleProperty(ParamSpec pspec)
	{
		// void gtk_widget_class_install_style_property  (GtkWidgetClass *klass,  GParamSpec *pspec);
		gtk_widget_class_install_style_property(gtkWidgetClass, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Installs a style property on a widget class.
	 * Params:
	 * pspec = the GParamSpec for the style property
	 * parser = the parser for the style property
	 */
	public void installStylePropertyParser(ParamSpec pspec, GtkRcPropertyParser parser)
	{
		// void gtk_widget_class_install_style_property_parser  (GtkWidgetClass *klass,  GParamSpec *pspec,  GtkRcPropertyParser parser);
		gtk_widget_class_install_style_property_parser(gtkWidgetClass, (pspec is null) ? null : pspec.getParamSpecStruct(), parser);
	}
	
	/**
	 * Finds a style property of a widget class by name.
	 * Since 2.2
	 * Params:
	 * propertyName = the name of the style property to find
	 * Returns: the GParamSpec of the style property or NULL if class has no style property with that name. [transfer none]
	 */
	public ParamSpec findStyleProperty(string propertyName)
	{
		// GParamSpec * gtk_widget_class_find_style_property  (GtkWidgetClass *klass,  const gchar *property_name);
		auto p = gtk_widget_class_find_style_property(gtkWidgetClass, Str.toStringz(propertyName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Returns all style properties of a widget class.
	 * Since 2.2
	 * Returns: a newly allocated array of GParamSpec*. The array must be freed with g_free(). [array length=n_properties][transfer container]
	 */
	public ParamSpec[] listStyleProperties()
	{
		// GParamSpec ** gtk_widget_class_list_style_properties  (GtkWidgetClass *klass,  guint *n_properties);
		uint nProperties;
		auto p = gtk_widget_class_list_style_properties(gtkWidgetClass, &nProperties);
		
		if(p is null)
		{
			return null;
		}
		
		ParamSpec[] arr = new ParamSpec[nProperties];
		for(int i = 0; i < nProperties; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p[i]);
		}
		
		return arr;
	}
	
	/**
	 * Sets the type to be used for creating accessibles for widgets of
	 * widget_class. The given type must be a subtype of the type used for
	 * accessibles of the parent class.
	 * This function should only be called from class init functions of widgets.
	 * Params:
	 * type = The object type that implements the accessible for widget_class
	 * Since 3.2
	 */
	public void setAccessibleType(GType type)
	{
		// void gtk_widget_class_set_accessible_type  (GtkWidgetClass *widget_class,  GType type);
		gtk_widget_class_set_accessible_type(gtkWidgetClass, type);
	}
	
	/**
	 * Sets the default AtkRole to be set on accessibles created for
	 * widgets of widget_class. Accessibles may decide to not honor this
	 * setting if their role reporting is more refined. Calls to
	 * gtk_widget_class_set_accessible_type() will reset this value.
	 * In cases where you want more fine-grained control over the role of
	 * accessibles created for widget_class, you should provide your own
	 * accessible type and use gtk_widget_class_set_accessible_type()
	 * instead.
	 * If role is ATK_ROLE_INVALID, the default role will not be changed
	 * and the accessible's default role will be used instead.
	 * This function should only be called from class init functions of widgets.
	 * Params:
	 * role = The role to use for accessibles created for widget_class
	 * Since 3.2
	 */
	public void setAccessibleRole(AtkRole role)
	{
		// void gtk_widget_class_set_accessible_role  (GtkWidgetClass *widget_class,  AtkRole role);
		gtk_widget_class_set_accessible_role(gtkWidgetClass, role);
	}
	
	/**
	 * This should be called at class initialization time to specify
	 * the GtkBuilder XML to be used to extend a widget.
	 * For convenience, gtk_widget_class_set_template_from_resource() is also provided.
	 * Note
	 * Any class that installs templates must call gtk_widget_init_template()
	 * in the widget's instance initializer
	 * Params:
	 * templateBytes = A GBytes holding the GtkBuilder XML
	 * Since 3.10
	 */
	public void setTemplate(Bytes templateBytes)
	{
		// void gtk_widget_class_set_template (GtkWidgetClass *widget_class,  GBytes *template_bytes);
		gtk_widget_class_set_template(gtkWidgetClass, (templateBytes is null) ? null : templateBytes.getBytesStruct());
	}
	
	/**
	 * A convenience function to call gtk_widget_class_set_template().
	 * Note
	 * Any class that installs templates must call gtk_widget_init_template()
	 * in the widget's instance initializer
	 * Params:
	 * resourceName = The name of the resource to load the template from
	 * Since 3.10
	 */
	public void setTemplateFromResource(string resourceName)
	{
		// void gtk_widget_class_set_template_from_resource  (GtkWidgetClass *widget_class,  const gchar *resource_name);
		gtk_widget_class_set_template_from_resource(gtkWidgetClass, Str.toStringz(resourceName));
	}
	
	/**
	 * Automatically assign an object declared in the class template XML to be set to a location
	 * on a freshly built instance's private data, or alternatively accessible via gtk_widget_get_automated_child().
	 * The struct can point either into the public instance, then you should use G_STRUCT_OFFSET(WidgetType, member)
	 * for struct_offset, or in the private struct, then you should use G_PRIVATE_OFFSET(WidgetType, member).
	 * An explicit strong reference will be held automatically for the duration of your
	 * instance's life cycle, it will be released automatically when GObjectClass.dispose() runs
	 * on your instance and if a struct_offset that is >= 0 is specified, then the automatic location
	 * in your instance private data will be set to NULL. You can however access an automated child
	 * pointer the first time your classes GObjectClass.dispose() runs, or alternatively in
	 * GtkWidgetClass.destroy().
	 * If internal_child is specified, GtkBuildableIface.get_internal_child() will be automatically
	 * implemented by the GtkWidget class so there is no need to implement it manually.
	 * The wrapper macros gtk_widget_class_bind_template_child(), gtk_widget_class_bind_template_child_internal(),
	 * gtk_widget_class_bind_template_child_private() and gtk_widget_class_bind_private_template_child_internal()
	 * might be more convenient to use.
	 * Note
	 * This must be called from a composite widget classes class
	 * initializer after calling gtk_widget_class_set_template()
	 * Params:
	 * name = The "id" of the child defined in the template XML
	 * internalChild = Whether the child should be accessible as an "internal-child"
	 * when this class is used in GtkBuilder XML
	 * structOffset = The structure offset into the composite widget's instance public or private structure
	 * where the automated child pointer should be set, or -1 to not assign the pointer.
	 * Since 3.10
	 */
	public void bindTemplateChildFull(string name, int internalChild, gssize structOffset)
	{
		// void gtk_widget_class_bind_template_child_full  (GtkWidgetClass *widget_class,  const gchar *name,  gboolean internal_child,  gssize struct_offset);
		gtk_widget_class_bind_template_child_full(gtkWidgetClass, Str.toStringz(name), internalChild, structOffset);
	}
	
	/**
	 * Declares a callback_symbol to handle callback_name from the template XML
	 * defined for widget_type. See gtk_builder_add_callback_symbol().
	 * Note
	 * This must be called from a composite widget classes class
	 * initializer after calling gtk_widget_class_set_template()
	 * Params:
	 * callbackName = The name of the callback as expected in the template XML
	 * callbackSymbol = The callback symbol. [scope async]
	 * Since 3.10
	 */
	public void bindTemplateCallbackFull(string callbackName, GCallback callbackSymbol)
	{
		// void gtk_widget_class_bind_template_callback_full  (GtkWidgetClass *widget_class,  const gchar *callback_name,  GCallback callback_symbol);
		gtk_widget_class_bind_template_callback_full(gtkWidgetClass, Str.toStringz(callbackName), callbackSymbol);
	}
	
	/**
	 * For use in lanuage bindings, this will override the default GtkBuilderConnectFunc to be
	 * used when parsing GtkBuilder xml from this class's template data.
	 * Note
	 * This must be called from a composite widget classes class
	 * initializer after calling gtk_widget_class_set_template()
	 * Params:
	 * connectFunc = The GtkBuilderConnectFunc to use when connecting signals in the class template
	 * connectData = The data to pass to connect_func
	 * connectDataDestroy = The GDestroyNotify to free connect_data, this will only be used at
	 * class finalization time, when no classes of type widget_type are in use anymore.
	 * Since 3.10
	 */
	public void setConnectFunc(GtkBuilderConnectFunc connectFunc, void* connectData, GDestroyNotify connectDataDestroy)
	{
		// void gtk_widget_class_set_connect_func (GtkWidgetClass *widget_class,  GtkBuilderConnectFunc connect_func,  gpointer connect_data,  GDestroyNotify connect_data_destroy);
		gtk_widget_class_set_connect_func(gtkWidgetClass, connectFunc, connectData, connectDataDestroy);
	}
}
