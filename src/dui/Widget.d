/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.Widget;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.DUIObject;
private import dui.AccelGroup;
private import dui.Adjustment;
alias int GtkAccelFlags;


private alias IconSize GtkIconSize;

private alias TextDirection GtkTextDirection;

private extern(C)
{
	GType gtk_widget_get_type();
	GtkWidget * gtk_widget_new(GType type, char * first_property_name,...);
	GtkWidget * gtk_widget_ref(GtkWidget * widget);
	void gtk_widget_unref(GtkWidget * widget);
	void gtk_widget_destroy(GtkWidget * widget);
	void gtk_widget_destroyed(GtkWidget * widget, GtkWidget * * widget_pointer);
//# ifndef GTK_DISABLE_DEPRECATED 
	void gtk_widget_set(GtkWidget * widget, char * first_property_name,...);
//# endif /* GTK_DISABLE_DEPRECATED */
	void gtk_widget_unparent(GtkWidget * widget);
	void gtk_widget_show(GtkWidget * widget);
	void gtk_widget_show_now(GtkWidget * widget);
	void gtk_widget_hide(GtkWidget * widget);
	void gtk_widget_show_all(GtkWidget * widget);
	void gtk_widget_hide_all(GtkWidget * widget);
	void gtk_widget_map(GtkWidget * widget);
	void gtk_widget_unmap(GtkWidget * widget);
	void gtk_widget_realize(GtkWidget * widget);
	void gtk_widget_unrealize(GtkWidget * widget);

/* Queuing draws */
	void gtk_widget_queue_draw(GtkWidget * widget);
	void gtk_widget_queue_draw_area(GtkWidget * widget, int x, int y, int width, int height);
//# ifndef GTK_DISABLE_DEPRECATED
	void gtk_widget_queue_clear(GtkWidget * widget);
	void gtk_widget_queue_clear_area(GtkWidget * widget, int x, int y, int width, int height);
//# endif /* GTK_DISABLE_DEPRECATED */

	void gtk_widget_queue_resize(GtkWidget * widget);
//# ifndef GTK_DISABLE_DEPRECATED 
	void gtk_widget_draw(GtkWidget * widget, GdkRectangle * area);
//# endif /* GTK_DISABLE_DEPRECATED */
	void gtk_widget_size_request(GtkWidget * widget, GtkRequisition * requisition);
	void gtk_widget_size_allocate(GtkWidget * widget, GtkAllocation * allocation);
	void gtk_widget_get_child_requisition(GtkWidget * widget, GtkRequisition * requisition);
//	void gtk_widget_add_accelerator(
//	GtkWidget * widget,
//	char * accel_signal,
//	GtkAccelGroup * accel_group,
//	guint accel_key,
//	GdkModifierType accel_mods,
//	GtkAccelFlags accel_flags);
//gboolean gtk_widget_remove_accelerator(GtkWidget * widget, GtkAccelGroup * accel_group, guint accel_key, GdkModifierType accel_mods);
	void gtk_widget_set_accel_path(GtkWidget * widget, char * accel_path, GtkAccelGroup * accel_group);
	//char * _gtk_widget_get_accel_path(GtkWidget * widget, gboolean * locked);
	GList * gtk_widget_list_accel_closures(GtkWidget * widget);
	gboolean gtk_widget_mnemonic_activate(GtkWidget * widget, gboolean group_cycling);
//	gboolean gtk_widget_event(GtkWidget * widget, GdkEvent * event);
//	int gtk_widget_send_expose(GtkWidget * widget, GdkEvent * event);

	gboolean gtk_widget_activate(GtkWidget * widget);
	gboolean gtk_widget_set_scroll_adjustments(GtkWidget * widget, GtkAdjustment * hadjustment, GtkAdjustment * vadjustment);

	void gtk_widget_reparent(GtkWidget * widget, GtkWidget * new_parent);
	gboolean gtk_widget_intersect(GtkWidget * widget, GdkRectangle * area, GdkRectangle * intersection);
	GdkRegion * gtk_widget_region_intersect(GtkWidget * widget, GdkRegion * region);

	void gtk_widget_freeze_child_notify(GtkWidget * widget);
	void gtk_widget_child_notify(GtkWidget * widget, char * child_property);
	void gtk_widget_thaw_child_notify(GtkWidget * widget);

	gboolean gtk_widget_is_focus(GtkWidget * widget);
	void gtk_widget_grab_focus(GtkWidget * widget);
	void gtk_widget_grab_default(GtkWidget * widget);

	void gtk_widget_set_name(GtkWidget * widget, char * name);
	char * gtk_widget_get_name(GtkWidget * widget);
	void gtk_widget_set_state(GtkWidget * widget, GtkStateType state);
	void gtk_widget_set_sensitive(GtkWidget * widget, gboolean sensitive);
	void gtk_widget_set_app_paintable(GtkWidget * widget, gboolean app_paintable);
	void gtk_widget_set_double_buffered(GtkWidget * widget, gboolean double_buffered);
	void gtk_widget_set_redraw_on_allocate(GtkWidget * widget, gboolean redraw_on_allocate);
	void gtk_widget_set_parent(GtkWidget * widget, GtkWidget * parent);
	void gtk_widget_set_parent_window(GtkWidget * widget, GdkWindow * parent_window);
	void gtk_widget_set_child_visible(GtkWidget * widget, gboolean is_visible);
	gboolean gtk_widget_get_child_visible(GtkWidget * widget);

	GtkWidget * gtk_widget_get_parent(GtkWidget * widget);
	GdkWindow * gtk_widget_get_parent_window(GtkWidget * widget);

	gboolean gtk_widget_child_focus(GtkWidget * widget, GtkDirectionType direction);

	void gtk_widget_set_size_request(GtkWidget * widget, int width, int height);
	void gtk_widget_get_size_request(GtkWidget * widget, int * width, int * height);
//# ifndef GTK_DISABLE_DEPRECATED
	void gtk_widget_set_uposition(GtkWidget * widget, int x, int y);
	void gtk_widget_set_usize(GtkWidget * widget, int width, int height);
//# endif

	void gtk_widget_set_events(GtkWidget * widget, int events);
	void gtk_widget_add_events(GtkWidget * widget, int events);
	void gtk_widget_set_extension_events(GtkWidget * widget, GdkExtensionMode mode);

	GdkExtensionMode gtk_widget_get_extension_events(GtkWidget * widget);
	GtkWidget * gtk_widget_get_toplevel(GtkWidget * widget);
	GtkWidget * gtk_widget_get_ancestor(GtkWidget * widget, GType widget_type);
	GdkColormap * gtk_widget_get_colormap(GtkWidget * widget);
	GdkVisual * gtk_widget_get_visual(GtkWidget * widget);

	GdkScreen * gtk_widget_get_screen(GtkWidget * widget);
	gboolean gtk_widget_has_screen(GtkWidget * widget);
	GdkDisplay * gtk_widget_get_display(GtkWidget * widget);
	GdkWindow * gtk_widget_get_root_window(GtkWidget * widget);
	GtkSettings * gtk_widget_get_settings(GtkWidget * widget);
	GtkClipboard * gtk_widget_get_clipboard(GtkWidget * widget, GdkAtom selection);

//# ifndef GTK_DISABLE_DEPRECATED 
//# define gtk_widget_set_visual(
//	widget,
//	visual) ((void) 0) # define gtk_widget_push_visual(visual) ((void) 0) # define gtk_widget_pop_visual()
//	((void) 0) # define gtk_widget_set_default_visual(
//	visual)
//	((void) 0) # endif /* GTK_DISABLE_DEPRECATED */

/* Accessibility support */
//	AtkObject * gtk_widget_get_accessible(GtkWidget * widget);

/* The following functions must not be called on an already
 * realized widget. Because it is possible that somebody
 * can call get_colormap() or get_visual() and save the
 * result, these functions are probably only safe to
 * call in a widget's init() function.
 */
	void gtk_widget_set_colormap(GtkWidget * widget, GdkColormap * colormap);

	int gtk_widget_get_events(GtkWidget * widget);
	void gtk_widget_get_pointer(GtkWidget * widget, int * x, int * y);

	gboolean gtk_widget_is_ancestor(GtkWidget * widget, GtkWidget * ancestor);

	gboolean gtk_widget_translate_coordinates(GtkWidget * src_widget, GtkWidget * dest_widget, int src_x, int src_y, int * dest_x, int * dest_y);

/* Hide widget and return TRUE.
 */
	gboolean gtk_widget_hide_on_delete(GtkWidget * widget);

/* Widget styles.
 */
	void gtk_widget_set_style(GtkWidget * widget, GtkStyle * style);
	void gtk_widget_ensure_style(GtkWidget * widget);
	GtkStyle * gtk_widget_get_style(GtkWidget * widget);

	void gtk_widget_modify_style(GtkWidget * widget, GtkRcStyle * style);
	GtkRcStyle * gtk_widget_get_modifier_style(GtkWidget * widget);
	void gtk_widget_modify_fg(GtkWidget * widget, GtkStateType state, GdkColor * color);
	void gtk_widget_modify_bg(GtkWidget * widget, GtkStateType state, GdkColor * color);
	void gtk_widget_modify_text(GtkWidget * widget, GtkStateType state, GdkColor * color);
	void gtk_widget_modify_base(GtkWidget * widget, GtkStateType state, GdkColor * color);
	void gtk_widget_modify_font(GtkWidget * widget, PangoFontDescription * font_desc);

//# ifndef GTK_DISABLE_DEPRECATED # define gtk_widget_set_rc_style(widget) 
//	(gtk_widget_set_style(widget,
//	NULL)) # define gtk_widget_restore_default_style(
//	widget) 
//	(gtk_widget_set_style(widget,
//	NULL)) # endif PangoContext
	PangoContext * gtk_widget_create_pango_context(GtkWidget * widget);
	PangoContext * gtk_widget_get_pango_context(GtkWidget * widget);
	PangoLayout * gtk_widget_create_pango_layout(GtkWidget * widget, char * text);

	GdkPixbuf * gtk_widget_render_icon(GtkWidget * widget, char * stock_id, GtkIconSize size, char * detail);

/* handle composite names for GTK_COMPOSITE_CHILD widgets,
 * the returned name is newly allocated.
 */
	void gtk_widget_set_composite_name(GtkWidget * widget, char * name);
	char * gtk_widget_get_composite_name(GtkWidget * widget);

/* Descend recursively and set rc-style on all widgets without user styles */
	void gtk_widget_reset_rc_styles(GtkWidget * widget);

/* Push/pop pairs, to change default values upon a widget's creation.
 * This will override the values that got set by the
 * gtk_widget_set_default_* () functions.
 */
	void gtk_widget_push_colormap(GdkColormap * cmap);
	void gtk_widget_push_composite_child();
	void gtk_widget_pop_composite_child();
	void gtk_widget_pop_colormap();

/* widget style properties
 */
//	void gtk_widget_class_install_style_property(GtkWidgetClass * klass, GParamSpec * pspec);
//	void gtk_widget_class_install_style_property_parser(
//	GtkWidgetClass * klass,
//	GParamSpec * pspec,
//	GtkRcPropertyParser parser);
//	GParamSpec * gtk_widget_class_find_style_property(GtkWidgetClass * klass, char * property_name);
//	GParamSpec * * gtk_widget_class_list_style_properties(GtkWidgetClass * klass, guint * n_properties);
	void gtk_widget_style_get_property(GtkWidget * widget, char * property_name, GValue * value);
//	void gtk_widget_style_get_valist(GtkWidget * widget, char * first_property_name, vaList var_args);
	void gtk_widget_style_get(GtkWidget * widget, char * first_property_name,...);

/* Set certain default values to be used at widget creation time.
 */
	void gtk_widget_set_default_colormap(GdkColormap * colormap);
	GtkStyle * gtk_widget_get_default_style();
//# ifndef GDK_MULTIHEAD_SAFE 
	GdkColormap * gtk_widget_get_default_colormap();
	GdkVisual * gtk_widget_get_default_visual();
//# endif

/* Functions for setting directionality for widgets
 */

	void gtk_widget_set_direction(GtkWidget * widget, GtkTextDirection dir);
	GtkTextDirection gtk_widget_get_direction(GtkWidget * widget);

	void gtk_widget_set_default_direction(GtkTextDirection dir);
	GtkTextDirection gtk_widget_get_default_direction();

/* Counterpart to gdk_window_shape_combine_mask.
 */
	void gtk_widget_shape_combine_mask(GtkWidget * widget, GdkBitmap * shape_mask, int offset_x, int offset_y);

/* internal function */
	void gtk_widget_reset_shapes(GtkWidget * widget);

/* Compute a widget's path in the form "GtkWindow.MyLabel", and
 * return newly alocated strings.
 */
	void gtk_widget_path(GtkWidget * widget, guint * path_length, char * * path, char * * path_reversed);
	void gtk_widget_class_path(GtkWidget * widget, guint * path_length, char * * path, char * * path_reversed);

	GType gtk_requisition_get_type();
	GtkRequisition * gtk_requisition_copy(GtkRequisition * requisition);
	void gtk_requisition_free(GtkRequisition * requisition);

//# if defined(GTK_TRACE_OBJECTS)
//	&& defined(__GNUC__) # define gtk_widget_ref gtk_object_ref # define gtk_widget_unref gtk_object_unref # endif /* GTK_TRACE_OBJECTS && __GNUC__ */

	//GtkWidgetAuxInfo * _gtk_widget_get_aux_info(GtkWidget * widget, gboolean create);
	//void _gtk_widget_propagate_hierarchy_changed(GtkWidget * widget, GtkWidget * previous_toplevel);
	//void _gtk_widget_propagate_screen_changed(GtkWidget * widget, GdkScreen * previous_screen);

	//GdkColormap * _gtk_widget_peek_colormap();

	void gtk_widget_show(void *);
	void gtk_widget_hide(void *);
//	int gtk_signal_connect (void *object, char *name, void * func, void * func_data);

//	int gtk_signal_lookup(char * name, int object_type);
//	char * gtk_signal_name(int signal_id);
//	int gtk_signal_n_emissions(void * object, int signal_id);
//	int gtk_signal_n_emissions_by_name(void * object, char * name);
//	void gtk_signal_emit_stop(void * object, int signal_id);
//	void gtk_signal_emit_stop_by_name(void * object, char * name);
//	int gtk_signal_connect(void * object, char * name, void * func, void * func_data);
//	int gtk_signal_connect_after(void * object, char * name, void * func, void * func_data);
//	int gtk_signal_connect_object(void * object, char * name, void * func, void * slot_object);
//	int gtk_signal_connect_object_after(void * object, char * name, void * func, void * slot_object);
//	int gtk_signal_connect_full(void * object, char * name, void * func, void * marshal, void * data, void * destroy_func, int object_signal, int after);
//
//	void gtk_signal_connect_object_while_alive(void * object, char * signal, void * func, void * alive_object);
//	void gtk_signal_connect_while_alive(void * object, char * signal, void * func, void * func_data, void * alive_object);
//
//	void gtk_signal_disconnect(void * object, int handler_id);
//	void gtk_signal_disconnect_by_func(void * object, void * func, void * data);
//	void gtk_signal_disconnect_by_data(void * object, void * data);
//
//	void gtk_signal_handler_block(void * object, int handler_id);
//	void gtk_signal_handler_block_by_func(void * object, void * func, void * data);
//	void gtk_signal_handler_block_by_data(void * object, void * data);
//	void gtk_signal_handler_unblock(void * object, int handler_id);
//	void gtk_signal_handler_unblock_by_func(void * object, void * func, void * data);
//	void gtk_signal_handler_unblock_by_data(void * object, void * data);
//	int gtk_signal_handler_pending(void * object, int signal_id, int may_be_blocked);
//	int gtk_signal_handler_pending_by_func(void * object, int signal_id, int may_be_blocked, void * func, void * data);
//	int gtk_signal_handler_pending_by_id(void * object, int handler_id, int may_be_blocked);
//	int gtk_signal_add_emission_hook(int signal_id, void * hook_func, void * data);
//	int gtk_signal_add_emission_hook_full(int signal_id, void * hook_func, void * data, void * destroy);
//	void gtk_signal_remove_emission_hook(int signal_id, int hook_id);

////////////////////////////// GdkWindow /////////////////////////////////
/// should we create a ddi.Window class - I don't think we need that low level
/// can always do it 
/// lets create just a selection of functions

	void gdk_window_set_background(GdkWindow* window,GdkColor* color);
	void gdk_window_set_back_pixmap(GdkWindow* window,GdkPixmap* pixmap, gboolean parent_relative);
	void gdk_window_set_cursor(GdkWindow* window, GdkCursor* cursor);
	
	//
}

/**
 * Widget introduces style properties - these are basically object properties that
 * are stored not on the object, but in the style object associated to the
 * widget. Style properties are set in resource files. This mechanism is used for
 * configuring such things as the location of the scrollbar arrows through the
 * theme, giving theme authors more control over the look of applications without
 * the need to write a theme engine in C. Use
 * gtkWidgetClassInstallStyleProperty() to install style properties for a widget
 * class, gtkWidgetClassFindStyleProperty() or
 * gtkWidgetClassListStyleProperties() to get information about existing style
 * properties and gtkWidgetStyleGetProperty(), gtkWidgetStyleGet() or
 * gtkWidgetStyleGetValist() to obtain the value of a style property.
 */
public
class Widget : DUIObject
{

private import dui.DUI;
private import dui.ObjectG;
private import dui.Tooltips;
private import dui.SListG;
private import dui.ListG;
private import dui.Clipboard;

private import ddi.GC; 
private import ddi.Color;
private import ddi.Bitmap;
private import ddi.Pixbuf;
private import ddi.Screen;
private import ddi.Visual;
private import ddi.Drawable;
private import ddi.WindowG;
private import ddi.Display;
private import ddi.Cursor;

private import dango.Font;
private import dango.Context;
private import dango.Layout;


	private import event.Event;
	private import event.Listener;
	private import event.EventHandler;

	private import dool.String;

	protected:

	// events
	//gboolean event(GtkWidget * widget, GdkEvent * event);
	
	// buttons
	alias EventHandlerR!(Widget, EventButton) OnMouseButtonPress;
	alias EventHandlerR!(Widget, EventButton) OnMouseButtonRelease;
		
	// scroll
	alias EventHandler!(Widget, EventScroll) OnScroll;
	
	// motion
	alias EventHandler!(Widget, EventMotion) OnMotionNotify;
	
	//delete
	alias EventHandler!(Widget, Event) OnDelete;
	alias EventHandler!(Widget, Event) OnDestroy;
	
	//expose
	alias EventHandlerAfter!(Widget, EventExpose) OnExpose;
	alias EventHandlerAfter!(Widget, Event) OnNoExpose;
	
	// key
	alias EventHandlerR!(Widget, EventKey) OnKeyPress;
	alias EventHandlerR!(Widget, EventKey) OnKeyRelease;
	
	// enter
	alias EventHandler!(Widget, EventCrossing) OnEnterNotify;
	alias EventHandler!(Widget, EventCrossing) OnLeaveNotify;
	
	// configure
	alias EventHandlerAfterR!(Widget, EventConfigure) OnConfigure;
	
	// focus
	alias EventHandler!(Widget, EventFocus) OnFocusIn;
	alias EventHandler!(Widget, EventFocus) OnFocusOut;
	
	// map
	alias EventHandler!(Widget, Event) OnMap;
	alias EventHandler!(Widget, Event) OnUnmap;
	
	// realize
	alias EventHandlerAfterR!(Widget, Event) OnRealize;
	alias EventHandlerAfterR!(Widget, Event) OnUnrealize;
	
	// property
	alias EventHandler!(Widget, EventProperty) OnPropertyNotify;
	
	// selection
	alias EventHandler!(Widget, EventSelection) OnSelectionClear;
	alias EventHandler!(Widget, EventSelection) OnSelectionRequest;
	alias EventHandler!(Widget, EventSelection) OnSelectionNotify;
	
	// proximity
	alias EventHandler!(Widget, EventProximity) OnProximityIn;
	alias EventHandler!(Widget, EventProximity) OnProximityOut;
	
	// visibility
	alias EventHandler!(Widget, EventVisibility) OnVisibilityNotify;
	
	// cliente
	alias EventHandler!(Widget, EventClient) OnClient;
	
	// window state
	alias EventHandler!(Widget, EventWindowState) OnWindowState;

	/* selection */
	//void  selection_get(GtkWidget * widget, GtkSelectionData * selection_data, guint info, guint time_);
	//void  selection_received(GtkWidget * widget, GtkSelectionData * selection_data, guint time_);
	//alias EventHandler!(Widget, ) ;
	//alias EventHandler!(Widget, ) ;

	/* Source side drag signals */
	//void  drag_begin(GtkWidget * widget, GdkDragContext * context);
	//void  drag_end(GtkWidget * widget, GdkDragContext * context);
	//void  drag_data_get(GtkWidget * widget, GdkDragContext * context, GtkSelectionData * selection_data, guint info, guint time_);
	//void  drag_data_delete(GtkWidget * widget, GdkDragContext * context);
	//alias EventHandler!(Widget, ) ;
	//alias EventHandler!(Widget, ) ;
	//alias EventHandler!(Widget, ) ;
	//alias EventHandler!(Widget, ) ;

	/* Target side drag signals */
	//void  drag_leave(GtkWidget * widget, GdkDragContext * context, guint time_);
	//gboolean drag_motion(GtkWidget * widget, GdkDragContext * context, gint x, gint y, guint time_);
	//gboolean drag_drop(GtkWidget * widget, GdkDragContext * context, gint x, gint y, guint time_);
	//void  drag_data_received(GtkWidget * widget, GdkDragContext * context, gint x, gint y, GtkSelectionData * selection_data, guint info, guint time_);
	//alias EventHandler!(Widget, ) ;
	//alias EventHandler!(Widget, ) ;
	//alias EventHandler!(Widget, ) ;
	//alias EventHandler!(Widget, ) ;

	
	protected:
	// mouse button
	OnMouseButtonPress onMouseButtonPress;
	OnMouseButtonRelease onMouseButtonRelease;
	// scroll
	OnScroll onScroll;
	// motion
	OnMotionNotify onMotionNotify;
	//delete
	OnDelete onDelete;
	OnDestroy onDestroy;
	//expose
	OnExpose onExpose;
	OnNoExpose onNoExpose;
	// key
	OnKeyPress onKeyPress;
	OnKeyRelease onKeyRelease;
	// enter
	OnEnterNotify onEnterNotify;
	OnLeaveNotify onLeaveNotify;
	// configure
	OnConfigure onConfigure;
	// focus
	OnFocusIn onFocusIn;
	OnFocusOut onFocusOut;
	// map
	OnMap onMap;
	OnUnmap onUnmap;
	// realize
	OnRealize onRealize;
	OnUnrealize onUnrealize;
	// property
	OnPropertyNotify onPropertyNotify;
	// selection
	OnSelectionClear onSelectionClear;
	OnSelectionRequest onSelectionRequest;
	OnSelectionNotify onSelectionNotify;
	// proximity
	OnProximityIn onProximityIn;
	OnProximityOut onProximityOut;
	//alias EventHandler!() ;
	OnVisibilityNotify onVisibilityNotify;
	// cliente
	OnClient onClient;
	// window state
	OnWindowState onWindowState;
	/* selection */
	//alias EventHandler!() ;
	//alias EventHandler!() ;
	/* Source side drag signals */
	//alias EventHandler!() ;
	//alias EventHandler!() ;
	//alias EventHandler!() ;
	//alias EventHandler!() ;
	/* Target side drag signals */
	//alias EventHandler!() ;
	//alias EventHandler!() ;
	//alias EventHandler!() ;
	//alias EventHandler!() ;
	
	protected:
	
	Widget recoverFromGTK(GtkWidget * gtkwidget)
	{
		return new Widget(gtkWidget);
	}
	
	/**
	 * If true this widget will be automatically shown apon creation if the DUI autoShow
	 * is also set to true
	 */ 

	GtkWidget* gtkWidget;


	debug(status)
	{
		int complete(){return 5;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Widget is the main visible component of GTK+";}
		char[] author(){return "Antonio";}
	}
	
	public:

	void* gtk()
	{
		return cast(void*)gObject;
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_widget_get_type();
	}
	
	this(GtkObject* gtkObject)
	{
		super(gtkObject);
		this.gtkWidget = cast(GtkWidget*)gtkObject;
		
		if ( getAutoShow() && (DUI.dui().autoShow() == 1))
		{
			show();
		}
	}

	/**
	 * OnMouseButtonPress
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnMouseButtonPress(bit delegate(Widget,EventButton) dlg)
	{
		if ( onMouseButtonPress === null )
		{
			 onMouseButtonPress = new OnMouseButtonPress(this, EventMask.BUTTON_PRESS, new String("button_press_event"));
		}
		onMouseButtonPress += dlg;
	}
	
	/**
	 * OnMouseButtonPress
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnMouseButtonRelease(bit delegate(Widget,EventButton) dlg)
	{
		if ( onMouseButtonRelease === null )
		onMouseButtonRelease = new OnMouseButtonRelease(this, EventMask.BUTTON_PRESS, new String("button_release_event"));
		onMouseButtonRelease += dlg;
	}

	/**
	 * OnMotionNotify
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnMotionNotify(bit delegate(Widget,EventMotion) dlg)
	{
		if ( onMotionNotify === null )
		onMotionNotify = new OnMotionNotify(this, EventMask.POINTER_MOTION,new String("motion_notify_event"));
		onMotionNotify += dlg;
	}

	/**
	 * 
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnDelete(bit delegate(Widget,Event) dlg)
	{
		if ( onDelete === null )
		onDelete = new OnDelete(this, EventMask.NONE,new String("delete_event"));
		onDelete += dlg;
	}

	/**
	 * OnDestroy
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnDestroy(bit delegate(Widget,Event) dlg)
	{
		if ( onDestroy === null )
		onDestroy = new OnDestroy(this, EventMask.NONE,new String("destroy_event"));
		onDestroy += dlg;
	}

	/**
	 * OnExpose
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnExpose(bit delegate(Widget,EventExpose) dlg)
	{
		if ( onExpose === null )
		onExpose = new OnExpose(this, EventMask.NONE,new String("expose_event"));
		onExpose += dlg;
	}

	/**
	 * OnNoExpose
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnNoExpose(bit delegate(Widget,Event) dlg)
	{
		if ( onNoExpose === null )
		onNoExpose = new OnNoExpose(this, EventMask.NONE,new String("no_expose_event"));
		onNoExpose += dlg;
	}

	/**
	 * 
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnKeyPress(bit delegate(Widget,EventKey) dlg)
	{
		if ( onKeyPress === null )
		{
			onKeyPress = new OnKeyPress(this, EventMask.KEY_PRESS,new String("key-press-event"));
		}
		onKeyPress += dlg;
	}

	/**
	 * OnKeyRelease
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnKeyRelease(bit delegate(Widget,EventKey) dlg)
	{
		if ( onKeyRelease === null )
		{
			onKeyRelease = new OnKeyRelease(this, EventMask.KEY_RELEASE,new String("key-release-event"));
		}
		onKeyRelease += dlg;
	}

	/**
	 * OnEnterNotify
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnEnterNotify(bit delegate(Widget,EventCrossing) dlg)
	{
		if ( onEnterNotify === null )
		onEnterNotify = new OnEnterNotify(this, EventMask.ENTER_NOTIFY,new String("enter-notify-event"));
		onEnterNotify += dlg;
	}

	/**
	 * OnLeaveNotify
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnLeaveNotify(bit delegate(Widget,EventCrossing) dlg)
	{
		if ( onLeaveNotify === null )
		onLeaveNotify = new OnLeaveNotify(this, EventMask.LEAVE_NOTIFY,new String("leave-notify-event"));
		onLeaveNotify += dlg;
	}

	/**
	 * OnConfigure
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnConfigure(bit delegate(Widget,EventConfigure) dlg)
	{
		if ( onConfigure === null )
		onConfigure = new OnConfigure(this, EventMask.NONE,new String("configure_event"));
		onConfigure += dlg;
	}

	/**
	 * OnFocusIn
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnFocusIn(bit delegate(Widget,EventFocus) dlg)
	{
		if ( onFocusIn === null )
		onFocusIn = new OnFocusIn(this, EventMask.FOCUS_CHANGE,new String("focus_in_event"));
		onFocusIn += dlg;
	}

	/**
	 * OnFocusOut
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnFocusOut(bit delegate(Widget,EventFocus) dlg)
	{
		if ( onFocusOut === null )
		onFocusOut = new OnFocusOut(this, EventMask.FOCUS_CHANGE,new String("focus_out_event"));
		onFocusOut += dlg;
	}

	/**
	 * OnMap
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnMap(bit delegate(Widget,Event) dlg)
	{
		if ( onMap === null )
		onMap = new OnMap(this, EventMask.NONE,new String("map_event"));
		onMap += dlg;
	}

	/**
	 * OnUnmap
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnUnmap(bit delegate(Widget,Event) dlg)
	{
		if ( onUnmap === null )
		onUnmap = new OnUnmap(this, EventMask.NONE,new String("unmap_event"));
		onUnmap += dlg;
	}

	/**
	 * OnRealize
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnRealize(bit delegate(Widget,Event) dlg)
	{
		if ( onRealize === null )
		{
			onRealize = new OnRealize(this, EventMask.NONE,new String("realize"));
		}
		onRealize += dlg;
	}

	/**
	 * OnUnrealize
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnUnrealize(bit delegate(Widget,Event) dlg)
	{
		if ( onUnrealize === null )
		onUnrealize = new OnUnrealize(this, EventMask.NONE,new String("unrealize"));
		onUnrealize += dlg;
	}

	/**
	 * OnPropertyNotify
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnPropertyNotify(bit delegate(Widget,EventProperty) dlg)
	{
		if ( onPropertyNotify === null )
		onPropertyNotify = new OnPropertyNotify(this, EventMask.NONE,new String("property_notify_event"));
		onPropertyNotify += dlg;
	}

	/**
	 * OnSelectionClear
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnSelectionClear(bit delegate(Widget,EventSelection) dlg)
	{
		if ( onSelectionClear === null )
		onSelectionClear = new OnSelectionClear(this, EventMask.NONE,new String("selection_clear_event"));
		onSelectionClear += dlg;
	}

	/**
	 * OnSelectionRequest
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnSelectionRequest(bit delegate(Widget,EventSelection) dlg)
	{
		if ( onSelectionRequest === null )
		onSelectionRequest = new OnSelectionRequest(this, EventMask.NONE,new String("selection_request_event"));
		onSelectionRequest += dlg;
	}

	/**
	 * OnSelectionNotify
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnSelectionNotify(bit delegate(Widget,EventSelection) dlg)
	{
		if ( onSelectionNotify === null )
		onSelectionNotify = new OnSelectionNotify(this, EventMask.NONE,new String("selection_notify_event"));
		onSelectionNotify += dlg;
	}

	/**
	 * OnProximityIn
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnProximityIn(bit delegate(Widget,EventProximity) dlg)
	{
		if ( onProximityIn === null )
		onProximityIn = new OnProximityIn(this, EventMask.NONE,new String("proximity_in_event"));
		onProximityIn += dlg;
	}

	/**
	 * OnProximityOut
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnProximityOut(bit delegate(Widget,EventProximity) dlg)
	{
		if ( onProximityOut === null )
		onProximityOut = new OnProximityOut(this, EventMask.NONE,new String("proximity_out_event"));
		onProximityOut += dlg;
	}

	/**
	 * OnVisibilityNotify
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnVisibilityNotify(bit delegate(Widget,EventVisibility) dlg)
	{
		if ( onVisibilityNotify === null )
		onVisibilityNotify = new OnVisibilityNotify(this, EventMask.NONE,new String("visibility_notify_event"));
		onVisibilityNotify += dlg;
	}

	/**
	 * OnClient
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnClient(bit delegate(Widget,EventClient) dlg)
	{
		if ( onClient === null )
		onClient = new OnClient(this, EventMask.NONE,new String("client_event"));
		onClient += dlg;
	}

	/**
	 * OnWindowState
	 * @param dlg the method to be added to the event calls
	 */
	public void addOnWindowState(bit delegate(Widget,EventWindowState) dlg)
	{
		if ( onWindowState === null )
		onWindowState = new OnWindowState(this, EventMask.NONE,new String("window_state_event"));
		onWindowState += dlg;
	}
		//alias EventHandler!() ;
		/* selection */
		//alias EventHandler!() ;
		//alias EventHandler!() ;
		/* Source side drag signals */
		//alias EventHandler!() ;
		//alias EventHandler!() ;
		//alias EventHandler!() ;
		//alias EventHandler!() ;
		/* Target side drag signals */
		//alias EventHandler!() ;
		//alias EventHandler!() ;
		//alias EventHandler!() ;
		//alias EventHandler!() ;
	
	this(GtkWidget* gtkWidget)
	{
		//printf("gtkWidget %d %d %d\n\0", gtkWidget,DUI.autoShow(),autoShow);

		this(cast(GtkObject*)gtkWidget);
	}

	public:
	
	/**
	 * Gets if this object should be show be defaul
	 * @return true if yes
	 */
	bit getAutoShow()
	{
		return getData(new String("_AutoShow")) === null;	// default == not set ==
	}
	
	/**
	 * Sets if this object should be show be defaul
	 * @param autoShow true if yes
	 */
	void setAutoShow(bit autoShow)
	{
		setData(new String("_AutoShow"), autoShow ? null : gtkWidget );
	}
	
	public:

	char [] toString()
	{
		return "Widget";
	}
	
	void dump()
	{
		GtkWidget* gtkWidget = gtkW();
		super.dump();
		printf("\n\t### Widget ### @ %X with %d\n",gtkW(),gtkWidget.sizeof);
		printf("\ttype = %d %X\n",getType(),getType());
		printf("\tobject %X\n",gtkWidget.object);
		printf("\tprivate_flags %X\n",gtkWidget.private_flags);
		printf("\tstate %d\n",gtkWidget.state);
		printf("\tsaved_state %d\n",gtkWidget.saved_state);
		printf("\t*name %X\n",gtkWidget.name);
		printf("\t*style %X\n",gtkWidget.style);
		printf("\trequisition %X\n",gtkWidget.requisition);
		printf("\t\trequisition.width %d\n",gtkWidget.requisition.width);
		printf("\t\trequisition.height %d\n",gtkWidget.requisition.height);
		printf("\tallocation %X\n",gtkWidget.allocation);
		printf("\t\tallocation.x %d\n",gtkWidget.allocation.x);
		printf("\t\tallocation.y %d\n",gtkWidget.allocation.y);
		printf("\t\tallocation.width %d\n",gtkWidget.allocation.width);
		printf("\t\tallocation.height %d\n",gtkWidget.allocation.height);
		printf("\t*window %X\n",gtkWidget.window);
		printf("\t*parent %X\n",gtkWidget.parent);
		//dumpStruct(96,gtkW());
	}

	//GtkWidget getGTKWidget()
	//{
	//	return gtkWidget;
	//}

	/**
	 * Sets the GtkWidget for this widget
	 */
	void widget(GtkWidget* gtkWidget)
	{
		this.gtkWidget = gtkWidget;
	}

	/**
	 * Sets this widget tooltip
	 * @param tipText the tooltip
	 * @param tipPrivate a private text
	 */
	void setTooltip(char[] tipText, char[] tipPrivate)
	{
		setTooltip(new String(tipText), new String(tipPrivate));
	}
	void setTooltip(String tipText, String tipPrivate)
	{
		Tooltips tt = new Tooltips();
		tt.setTip(this, tipText, tipPrivate);
	}

	/**
	 * Gets this widget drawable
	 * @return the widget drawable
	 */
	GdkDrawable* getWindow()
	{
		return cast(GdkDrawable*) gtkWidget.window;
	}
	
	/**
	 * Gets this widget foreground Graphics Context depending on the widget state.
	 * This GC are shared through all the widget so any changes will affect other widgets
	 * @return the widget foregroupd GC
	 */
	GC getFGgc()
	{
		GtkStyle *  style = gtkWidget.style;
		switch(gtkWidget.state)
		{
			case 0:return new GC(style.fg_gc1); break;
			case 1:return new GC(style.fg_gc2); break;
			case 2:return new GC(style.fg_gc3); break;
			case 3:return new GC(style.fg_gc4); break;
			case 4:return new GC(style.fg_gc5); break;
			default: return new GC(style.fg_gc1); break;
		}
		
	}
	
	/**
	 * Gets the drawable for this widget
	 * @return the drawable
	 */
	Drawable getDrawable()
	{
		//printf("Widget.getDrawable()\n\0");
		return new Drawable(this);
	}
	
	/**
	 * Creates a new Widget from a types and with a property
	 * @param type
	 * @param firstPropertyName
	 */
	this(GType type, String firstPropertyName)
	{
		this(gtk_widget_new(type, firstPropertyName.toStringz(), null));
	}

	//GtkWidget * gtk_widget_ref(GtkWidget * widget);

	/**
	 * Low level GTK manipulation of the widget
	 */
	void ref()
	{
		gtk_widget_ref(gtkW());
	}

	/**
	 * Low level GTK manipulation of the widget
	 */
	void unref()
	{
		gtk_widget_unref(gtkW());
	}

	/**
	 * Low level GTK explicitlyt destroy the widget.
	 */
	void destroy()
	{
		gtk_widget_destroy(gtkW());
	}

	/**
	 * Destroyed???
	 */
	void destroyed(Widget w)
	{
		GtkWidget *v = w.gtkW();
		gtk_widget_destroyed(gtkW(), &v );
	}

	//# ifndef GTK_DISABLE_DEPRECATED 
	//void gtk_widget_set(gtkW(), String first_property_name,...);
	//# endif /* GTK_DISABLE_DEPRECATED */

	/**
	 * Frees this widget from it parent
	 */
	void unparent()
	{
		gtk_widget_unparent(gtkW());
	}

	/**
	 * Shows this widget
	 * @see DUI.autoShow()
	 * @see autroShow()
	 */
	void show()
	{
		gtk_widget_show(gtkW());
	}

	/**
	 * Forces to show this widget emidiatly
	 */
	void showNow()
	{
		gtk_widget_show_now(gtkW());
	}

	/**
	 * Hides this widget
	 */
	void hide()
	{
		gtk_widget_hide(gtkW());
	}

	/**
	 * Show all children widgets
	 */
	void showAll()
	{
		gtk_widget_show_all(gtkW());
	}

	/**
	 * hides all children widgets
	 */
	void hideAll()
	{
		gtk_widget_hide_all(gtkW());
	}

	/**
	 * Maps the widget -  low level GTK / X11 ???.
	 * Seems that this has to be explicitly called before some operations
	 */
	void map()
	{
		gtk_widget_map(gtkW());
	}

	/**
	 * UnMaps the widget -  low level GTK / X11 ???.
	 */
	void unmap()
	{
		gtk_widget_unmap(gtkW());
	}

	/**
	 * Realizes the widget -  low level GTK / X11 ???.
	 * Seems that this has to be explicitly called before some operations
	 */
	void realize()
	{
		gtk_widget_realize(gtkW());
	}

	/**
	 * UnRealizes the widget -  low level GTK / X11 ???.
	 */
	void unrealize()
	{
		gtk_widget_unrealize(gtkW());
	}

	/* Queuing draws */

	/**
	 * Requests to draw this widget when convinient
	 */
	void draw()
	{
		gtk_widget_queue_draw(gtkW());
	}

	/**
	 * Requestes to draw an area of this widget when convinient
	 * @param x
	 * @param y
	 * @param width
	 * @param height
	 */
	void drawArea(int x, int y, int width, int height)
	{
		gtk_widget_queue_draw_area(gtkW(), x, y, width, height);
	}

	//# ifndef GTK_DISABLE_DEPRECATED 
	//void gtk_widget_queue_clear(gtkW());
	//void gtk_widget_queue_clear_area(gtkW(), int x, int y, int width, int height);
	//# endif /* GTK_DISABLE_DEPRECATED */

	/**
	 * Requests resizing this widget when convinient
	 */
	void resize()
	{
		gtk_widget_queue_resize(gtkW());
	}

	//# ifndef GTK_DISABLE_DEPRECATED 
	//void gtk_widget_draw(gtkW(), GdkRectangle * area);
	//# endif /* GTK_DISABLE_DEPRECATED */

	/**
	 * Sets the widget desired size
	 * @param requisition
	 */
	void sizeRequest(GtkRequisition * requisition)
	{
		gtk_widget_size_request(gtkW(), requisition);
	}

	/**
	 * Sets the size Allocations ???
	 * @param allocation
	 */
	void sizeAllocate(GtkAllocation * allocation)
	{
		gtk_widget_size_allocate(gtkW(), allocation);
	}

	/**
	 * GEts child requisition ???
	 * @param requisition
	 */
	void getChildRequisition(GtkRequisition * requisition)
	{
		gtk_widget_get_child_requisition(gtkW(), requisition);
	}

//	void addAcceleratore(String accelSignal, AccelGroup accelGroup, guint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags)
//	{
//		gtk_widget_add_accelerator(gtkW(), cChar(accelSignal), accelGroup.obj(), accelKey, accelMods, accelFlags);
//	}
//
//	bit removeAccelerator(AccelGroup accelGroup, guint accelKey, GdkModifierType accelMods)
//	{
//		return gtk_widget_remove_accelerator(gtkW(), accelGroup.obj(), accelKey, accelMods)==0 ? false : true;
//	}

	/**
	 * Sets the accel path ???
	 * @param accel_path
	 * @param accel_group
	 */
	void setAccelPath(String accel_path, AccelGroup accel_group)
	{
		gtk_widget_set_accel_path(gtkW(), accel_path.toStringz(), accel_group.obj());
	}

	/**
	 * Gets the accle path ???
	 * @param locked
	 * @return the accel path
	 */
	//String getAccelPath(gboolean * locked)
	//{
	//	return String.newz(_gtk_widget_get_accel_path(gtkW(), locked));
	//}

	/**
	 * List accel closures
	 * @return a ListG
	 */
	ListG listAccelClosures()
	{
		return new ListG(gtk_widget_list_accel_closures(gtkW()));
	}

	/** 
	 * mnemonicActivate
	 * @param group_cycling
	 * @return 
	 */
	bit mnemonicActivate(bit group_cycling)
	{
		return gtk_widget_mnemonic_activate(gtkW(), group_cycling) == 0 ? false : true;
	}

	//gboolean gtk_widget_event(gtkW(), GdkEvent * event);

	//int gtk_widget_send_expose(gtkW(), GdkEvent * event);

	/**
	 * 
	 * @return 
	 */
	bit activate()
	{
		return gtk_widget_activate(gtkW()) == 0 ? false : true;
	}
	
	/**
	 * setScrollAdjustments
	 * @param hadjustment
	 * @param vadjustment
	 * @return 
	 */
	bit setScrollAdjustments(Adjustment hadjustment, Adjustment vadjustment)
	{
		return gtk_widget_set_scroll_adjustments(gtkW(), hadjustment.gtkO(), vadjustment.gtkO()) == 0 ? false : true;
	}

	
	/**
	 * reparent
	 * @param new_parent
	 */
	void reparent(Widget newParent)
	{
		gtk_widget_reparent(gtkW(), newParent.gtkW());
	}
	
//	private import dui.Container;
//	
//	void reparent(Container newParent, Container oldParent)
//	{
//		gtk_widget_ref(gtkW());
//		oldParent.remove(this);
//		newParent.add(this);
//		gtk_widget_unref(gtkW());
//	 }
	
	/**
	 * intersect
	 * @param area
	 * @param intersection
	 * @return 
	 */
	bit intersect(Rectangle * area, Rectangle * intersection)
	{
		return gtk_widget_intersect(gtkW(), area, intersection) == 0 ? false : true;
	}
	
	/**
	 * freezeChildNotify
	 */
	void freezeChildNotify()
	{
		gtk_widget_freeze_child_notify(gtkW());
	}

	
	/**
	 * regionIntersect
	 * @param region GdkRegion
	 * @return 
	 */
	GdkRegion * regionIntersect(GdkRegion * region)
	{
		return gtk_widget_region_intersect(gtkW(), region);
	}

	
	/**
	 * childNofity
	 * @param child_property
	 */
	void childNofity(String child_property)
	{
		gtk_widget_child_notify(gtkW(), child_property.toStringz());
	}

	
	/**
	 * thawChildNotify
	 */
	void thawChildNotify()
	{
		gtk_widget_thaw_child_notify(gtkW());
	}

	
	/**
	 * isFocus
	 * @return 
	 */
	bit isFocus()
	{
		return gtk_widget_is_focus(gtkW()) == 0 ? false : true;
	}

	
	/**
	 * grabFocus
	 */
	void grabFocus()
	{
		gtk_widget_grab_focus(gtkW());
	}

	
	/**
	 * grabDefault
	 */
	void grabDefault()
	{
		gtk_widget_grab_default(gtkW());
	}

	
	/**
	 * setName
	 * @param name
	 */
	void setName(String name)
	{
		gtk_widget_set_name(gtkW(), name.toStringz());
	}

	
	/**
	 * getName
	 * @return name
	 */
	String getName()
	{
		return String.newz(gtk_widget_get_name(gtkW()));
	}
	
	/**
	 * setState
	 * @param state
	 */
	void setState(StateType state)
	{
		gtk_widget_set_state(gtkW(), state);
	}

	
	/**
	 * setSensitive
	 * @param sensitive
	 */
	void setSensitive(bit sensitive)
	{
		gtk_widget_set_sensitive(gtkW(), sensitive);
	}

	
	/**
	 * setPaintable
	 * @param app_paintable
	 */
	void setPaintable(bit app_paintable)
	{
		gtk_widget_set_app_paintable(gtkW(), app_paintable);
	}

	
	/**
	 * setDoubleBuffered
	 * @param double_buffered
	 */
	void setDoubleBuffered(bit double_buffered)
	{
		gtk_widget_set_double_buffered(gtkW(), double_buffered);
	}

	
	/**
	 * setRedrawOnAllocate
	 * @param redraw_on_allocate
	 */
	void setRedrawOnAllocate(bit redraw_on_allocate)
	{
		gtk_widget_set_redraw_on_allocate(gtkW(), redraw_on_allocate);
	}

	
	/**
	 * setParent
	 * @param parent
	 */
	void setParent(Widget parent)
	{
		gtk_widget_set_parent(gtkW(), parent.gtkW());
	}

	
	/** 
	 * setParentWindow
	 * @param parent_window
	 */
	void setParentWindow(WindowG parent_window)
	{
		gtk_widget_set_parent_window(gtkW(), parent_window.gdkW());
	}
	
	/**
	 * setChildVisible
	 * @param isVisible
	 */
	void setChildVisible(bit isVisible)
	{
		gtk_widget_set_child_visible(gtkW(), isVisible);
	}

	
	/**
	 * getChildVisible
	 * @return 
	 */
	bit getChildVisible()
	{
		return gtk_widget_get_child_visible(gtkW()) == 0 ? false :true;
	}
	
	/**
	 * Gets the parent widget
	 * @return a new Widget that is the parent of this one
	 */
	Widget getParent()
	{
		return new Widget(gtk_widget_get_parent(gtkW()));
	}

	/**
	 * Gets the parent window
	 * @return a new WindowG that is the parent of this widget
	 */
	WindowG getParentWindow()
	{
		return new WindowG(gtk_widget_get_parent_window(gtkW()));
	}

	/**
	 * childFocus
	 * @param direction
	 */
	bit childFocus(DirectionType direction)
	{
		return gtk_widget_child_focus(gtkW(), direction) == 0 ? false : true;
	}

	
	/**
	 * Sets the desired size of this widget
	 * @param width the horizontal size
	 * @param height the vertical size
	 */
	void setSizeRequest(int width, int height)
	{
		gtk_widget_set_size_request(gtkW(), width, height);
	}

	/**
	 * Gets the current width of this widget
	 * @return the current width of this widget
	 */
	int getWidth()
	{
		return gtkWidget,gtkWidget.allocation.width;
	}

	/**
	 * Gets the current height of this widget
	 * @return the current height of this widget
	 */
	int getHeight()
	{
		return gtkWidget,gtkWidget.allocation.height;
	}

	/**
	 * Gets the desired size of this widget
	 * @param width the horizontal size
	 * @param height the vertical size
	 */
	void getSizeRequest(out int width, out int height)
	{
		gtk_widget_get_size_request(gtkW(), &width, &height);
	}

	//# ifndef GTK_DISABLE_DEPRECATED void gtk_widget_set_uposition(gtkW(), int x, int y);
	//void gtk_widget_set_usize(gtkW(), int width, int height);
	//# endif
	
	/**
	 * Sets the events to listen to removing the current set of events.
	 * @param events the event we are interested in listen
	 */
	void setEvents(int events)
	{
		gtk_widget_set_events(gtkW(), events);
	}

	/**
	 * Add events to listen to without removing the existing ones
	 * @param events the new events we are interested in listen
	 */
	void addEvents(int events)
	{
		gtk_widget_add_events(gtkW(), events);
	}

	/**
	 * setExtensionEvents
	 * @param mode
	 */
	void setExtensionEvents(int mode)
	{
		gtk_widget_set_extension_events(gtkW(), mode);
	}
	
	/**
	 * getExtensionEvents
	 */
	GdkExtensionMode getExtensionEvents()
	{
		return gtk_widget_get_extension_events(gtkW());
	}

	/**
	 * getTopLevel
	 * @return 
	 */
	Widget getTopLevel()
	{
		return new Widget(gtk_widget_get_toplevel(gtkW()));
	}

	/**
	 * getAncestor
	 * @param widget_type
	 * @return 
	 */
	Widget getAncestor(GType widget_type)
	{
		return new Widget(gtk_widget_get_ancestor(gtkW(), widget_type));
	}

	/**
	 * getColormap
	 */
	GdkColormap * getColormap()
	{
		return gtk_widget_get_colormap(gtkW());
	}

	
	/**
	 * get default visual
	 * @return Visual
	 */
	Visual getDefaultVisual()
	{
		return new Visual(gtk_widget_get_visual(gtkW()));
	}
	
	/**
	 * getScreen
	 * @return 
	 */
	Screen getScreen()
	{
		return new Screen(gtk_widget_get_screen(gtkW()));
	}

	/**
	 * hasScreen
	 * @return 
	 */
	bit hasScreen()
	{
		return gtk_widget_has_screen(gtkW()) == 0 ? false : true;
	}
	
	/**
	 * Gets the display for this widget
	 * @return a new display from the widget GdkDisplay
	 */
	Display getDisplay()
	{
		return new Display(cast(GdkDisplay*)gtk_widget_get_display(gtkW()));
	}

	
	/**
	 * getRootWindow
	 * @return 
	 */
	WindowG getRootWindow()
	{
		return new WindowG(gtk_widget_get_root_window(gtkW()));
	}

	
	/**
	 * get settings
	 * @return GtkSettings
	 */
	GtkSettings * getSettings()
	{
		return gtk_widget_get_settings(gtkW());
	}
	
	/**
	 * get clipboard
	 * @param selection
	 * @return a new Clipboard
	 */
	Clipboard getClipboard(GdkAtom selection)
	{
		return new Clipboard(gtk_widget_get_clipboard(gtkW(), selection));
	}
	

	//# ifndef GTK_DISABLE_DEPRECATED 
	//# define gtk_widget_set_visual(widget, visual) ((void) 0) 
	//# define gtk_widget_push_visual(visual) ((void) 0) 
	//# define gtk_widget_pop_visual()((void) 0) 
	//# define gtk_widget_set_default_visual(visual)((void) 0) 
	//# endif /* GTK_DISABLE_DEPRECATED */

	/* Accessibility support */

	/** todo AtkObject * gtk_widget_get_accessible(gtkW()); */

	/* The following functions must not be called on an already
	 * realized widget. Because it is possible that somebody
	 * can call get_colormap() or get_visual() and save the
	 * result, these functions are probably only safe to
	 * call in a widget's init() function.
	 */

	/**
	 * Set colormap
	 * @param colormap
	 */
	void setColormap(GdkColormap * colormap)
	{
		gtk_widget_set_colormap(gtkW(), colormap);
	}
	
	
	/**
	 * Gets events ???
	 * @return some kind of number related to events
	 */
	int getEvents()
	{
		return gtk_widget_get_events(gtkW());
	}
	
	/**
	 * getPointer
	 * @param x
	 * @param y
	 */
	void getPointer(int * x, int * y)
	{
		gtk_widget_get_pointer(gtkW(), x, y);
	}

	/**
	 * isAncestor
	 * @param ancestor
	 * @return 
	 */
	bit isAncestor(Widget ancestor)
	{
		return gtk_widget_is_ancestor(gtkW(), ancestor.gtkW()) == 0 ? false : true;
	}

	/**
	 * translateCoordinates
	 * @param src_widget
	 * @param dest_widget
	 * @param src_x
	 * @param src_y
	 * @param dest_x
	 * @param dest_y
	 * @return 
	 */
	bit translateCoordinates(Widget src_widget, Widget dest_widget, int src_x, int src_y, int * dest_x, int * dest_y)
	{
		return gtk_widget_translate_coordinates(
			src_widget.gtkW(), dest_widget.gtkW(),
			src_x, src_y,
			dest_x, dest_y) == 0 ? false : true;
	}

	/**
	 * hideOnDelete
	 * @return 
	 */
	bit hideOnDelete()
	{
		return gtk_widget_hide_on_delete(gtkW()) == 0 ? false : true;
	}

	/*
	 * Widget styles.
	 */
	
	/**
	 * setStyle
	 * @ param style
	 */
	void setStyle(GtkStyle * style)
	{
		gtk_widget_set_style(gtkW(), style);
	}
	
	/**
	 * ensureStyle
	 */
	void ensureStyle()
	{
		gtk_widget_ensure_style(gtkW());
	}
	
	/**
	 * getStyle
	 * @return 
	 */
	GtkStyle * getStyle()
	{
		return gtk_widget_get_style(gtkW());
	}
	
	/**
	 * modifyStyle
	 * @param style
	 */
	void modifyStyle(GtkRcStyle * style)
	{
		gtk_widget_modify_style(gtkW(), style);
	}
	
	/**
	 * getModifierStyle
	 * @return GtkRcStyle
	 */
	GtkRcStyle * getModifierStyle()
	{
		return gtk_widget_get_modifier_style(gtkW());
	}
	
	/**
	 * modifyFG
	 * @param state
	 * @param color
	 */
	void modifyFG(StateType state, Color color)
	{
		gtk_widget_modify_fg(gtkW(), state, color.gdkColor());
	}
	
	/**
	 * modifyBG
	 * @param state
	 * @param color
	 */
	void modifyBG(StateType state, Color color)
	{
		gtk_widget_modify_bg(gtkW(), state, color.gdkColor());
	}
	
	/**
	 * modifyText
	 * @param state
	 * @param color
	 */
	void modifyText(StateType state, Color color)
	{
		gtk_widget_modify_text(gtkW(), state, color.gdkColor());
	}
	
	/**
	 * modifyBase
	 * @param state
	 * @param color
	 */
	void modifyBase(StateType state, Color color)
	{
		gtk_widget_modify_base(gtkW(), state, color.gdkColor());
	}

	/**
	 * modifies this widget font
	 * @param font the dabgo.Font
	 * \bug segfaults
	 */
	void modifyFont(Font font)
	{
		gtk_widget_modify_font(gtkW(), font.gdkP());
	}

	
	/**
	 * modifies this widget font from a font description string
	 * @param font the fron description string
	 * \bug segfaults
	 */
	void modifyFont(char[] font)
	{
		modifyFont(new String(font));
	}
	void modifyFont(String font)
	{
		if ( (font !== null) && (font.length>0) )
		{
			modifyFont(new Font(font));
		}
	}
	
	//# ifndef GTK_DISABLE_DEPRECATED 
	//# define gtk_widget_set_rc_style(widget) (gtk_widget_set_style(widget, NULL)) 
	//# define gtk_widget_restore_default_style(widget) (gtk_widget_set_style(widget, NULL)) 
	//# endif 

	/**
	 * createPangoContext
	 * @return Context
	 */
	Context createPangoContext()
	{
		return new Context(gtk_widget_create_pango_context(gtkW()));
	}

	/**
	 * getPangoContext
	 * @return Context
	 */
	Context getPangoContext()
	{
		return new Context(gtk_widget_get_pango_context(gtkW()));
	}

	/**
	 * createPangoLayout
	 * @param text
	 * @return Layout
	 */
	Layout createPangoLayout(String text)
	{
		return new Layout(gtk_widget_create_pango_layout(gtkW(), text.toStringz()));
	}
	
	/**
	 * render icon
	 * @param stockID
	 * @param size
	 * @param detail
	 */	 
	Pixbuf renderIcon(Stock stockID, IconSize size, String detail)
	{
		return new Pixbuf(gtk_widget_render_icon(gtkW(), cChar(StockDesc[stockID]), size, detail.toStringz()));
	}
	
	/* handle composite names for GTK_COMPOSITE_CHILD widgets,
	 * the returned name is newly allocated.
	 */

	/**
	 * Sets a widgets composite name. The widget must be a composite child of its parent; see gtk_widget_push_composite_child().
	 * @param name
	 */
	void setCompositeName(String name)
	{
		gtk_widget_set_composite_name(gtkW(), name.toStringz());
	}
	
	/**
	 *  get composite name
	 * @ return 
	 */
	String getCompositeName()
	{
		return String.newz(gtk_widget_get_composite_name(gtkW()));
	}

	/* Descend recursively and set rc-style on all widgets without user styles */

	/**
	 * resetRCStyle
	 */
	void resetRCStyles()
	{
		gtk_widget_reset_rc_styles(gtkW());
	}

	/* Push/pop pairs, to change default values upon a widget's creation.
	 * This will override the values that got set by the
	 * gtk_widget_set_default_* () functions.
	 */

	/**
	 * pushColormap
	 * @param cmap
	 */
	void pushColorMap(GdkColormap * cmap)
	{
		gtk_widget_push_colormap(cmap);
	}
	
	/**
	 * pushCompositeChild
	 */
	void pushCompositeChild()
	{
		gtk_widget_push_composite_child();
	}

	/**
	 * popCompositeChild
	 */
	void popCompositeChild()
	{
		gtk_widget_pop_composite_child();
	}

	/**
	 * popColormap
	 */
	void popColormap()
	{
		gtk_widget_pop_colormap();
	}

	/+
	/* widget style properties
	 */
	/** todo */
	void gtk_widget_class_install_style_property(GtkWidgetClass * klass, GParamSpec * pspec);

	/** todo */
	void gtk_widget_class_install_style_property_parser(GtkWidgetClass * klass, GParamSpec * pspec, GtkRcPropertyParser parser);

	/** todo */
	GParamSpec * gtk_widget_class_find_style_property(GtkWidgetClass * klass, String property_name);

	/** todo */
	GParamSpec * * gtk_widget_class_list_style_properties(GtkWidgetClass * klass, guint * n_properties);

	/** todo */
	void gtk_widget_style_get_property(gtkW(), String property_name, GValue * value);

	/** todo */
	void gtk_widget_style_get_valist(gtkW(), String first_property_name, vaList var_args);

	/** todo */
	void gtk_widget_style_get(gtkW(), String first_property_name,...);

	/* Set certain default values to be used at widget creation time.
	 */
	+/
	 
	/**
	 * setDefault colormap
	 * @param colormap the colormap
	 */
	void setDefaultColormap(GdkColormap * colormap)
	{
		gtk_widget_set_default_colormap(colormap);
	}

	/+
	/** todo */
	GtkStyle * gtk_widget_get_default_style(void);

	//# ifndef GDK_MULTIHEAD_SAFE 
	//GdkColormap * gtk_widget_get_default_colormap(void);
	//GdkVisual * gtk_widget_get_default_visual(void);
	//# endif
	+/
	
	/* Functions for setting directionality for widgets
	 */

	/**
	 * setDirection
	 * @param dir
	 */
	void setDirection(TextDirection dir)
	{
		gtk_widget_set_direction(gtkW(), dir);
	}

	/**
	 *  getDirection
	 */
	TextDirection getDirection()
	{
		return gtk_widget_get_direction(gtkW());
	}

	/**
	 * setDefaultDirection
	 * @param dir
	 */
	void setDefaultDirection(TextDirection dir)
	{
		gtk_widget_set_default_direction(dir);
	}

	/**
	 * getDefaultDirection
	 * @return 
	 */
	TextDirection getDefaultDirection()
	{
		return gtk_widget_get_default_direction();
	}

	/* Counterpart to gdk_window_shape_combine_mask.
	 */

	/**
	 * shapeCombineMask
	 * @param shape_mask
	 * @param offset_x
	 * @param offset_y
	 */
	void shapeCombineMask(Bitmap shape_mask, int offset_x, int offset_y)
	{
		gtk_widget_shape_combine_mask(gtkW(), shape_mask.gdkB(), offset_x, offset_y);
	}

	/+
	/* internal function */

	/** todo */
	void gtk_widget_reset_shapes(gtkW());
	+/
	
	/*
	 * Compute a widget's path in the form "GtkWindow.MyLabel", and
	 * return newly alocated strings.
	 */

	/**
	 * path
	 * @param path_length
	 * @param path
	 * @param path_reversed
	 */
	void path(guint * path_length, String path, String path_reversed)
	{
		char* p = path.toStringz();
		char* r = path_reversed.toStringz();
		gtk_widget_path(gtkW(), path_length, &p, &r);
	}

	/**
	 * classPath
	 * @param path_length
	 * @param path
	 * @param path_reversed
	 */
	void classPath(guint * path_length, String path, String path_reversed)
	{
		char* p = path.toStringz();
		char* r = path_reversed.toStringz();
		gtk_widget_class_path(gtkW(), path_length, &p, &r);
	}

	/+
	/** todo move this to Requisition*/
	GType gtk_requisition_get_type(void);
	/** todo move this to Requisition*/
	GtkRequisition * gtk_requisition_copy(Requisition * requisition);
	/** todo move this to Requisition*/
	void gtk_requisition_free(Requisition * requisition);

	//# if defined(GTK_TRACE_OBJECTS)	&& defined(__GNUC__) 
	//# define gtk_widget_ref gtk_object_ref 
	//# define gtk_widget_unref gtk_object_unref 
	//# endif /* GTK_TRACE_OBJECTS && __GNUC__ */
	+/
	
	/+
	/** todo */
	GtkWidgetAuxInfo * _gtk_widget_get_aux_info(gtkW(), gboolean create);
	/** todo */
	void _gtk_widget_propagate_hierarchy_changed(gtkW(), GtkWidget * previous_toplevel);
	/** todo */
	void _gtk_widget_propagate_screen_changed(gtkW(), GdkScreen * previous_screen);
	/** todo */
	GdkColormap * _gtk_widget_peek_colormap(void);
	+/
	
	///////////////////////// GdkWindow

	/**
	 * Sets the background color
	 * @param color the new background color
	 * \bug nothing happens
	 */
	void setBackground(Color color)
	{
		gdk_window_set_background(gtkWidget.window,color.gdkColor());
	}
	
	// void gdk_window_set_back_pixmap(GdkWindow* window,GdkPixmap* pixmap, gboolean parent_relative);
	
	/**
	 * Sets  the cursor.
	 * @param cursor the new cursor
	 * \bug the cursor changes to the parent widget also
	 */
	void setCursor(Cursor cursor)
	{
		gdk_window_set_cursor(gtkWidget.window, cursor.gdkC());
	}
	
	/**
	 * Resets the cursor.
	 * don't know if this is implemented by GTK+. Seems that it's not
	 * \bug does nothing
	 */
	public void resetCursor()
	{
		gdk_window_set_cursor(gtkWidget.window, null);
	}
	
	/**
	 * Sets the cursor.
	 * @param cursorType the new cursor type
	 * \bug the cursor changes to the parent widget also
	 */
	void setCursor(CursorType cursorType)
	{
		setCursor(new Cursor(getDisplay(),cursorType));
	}
	
	/**
	 * Gets the GtkObject that this Widget is wrapping
	 * @return a pointer to the GtkWidget
	 */	
	GtkWidget * gtkW()
	{
		return gtkWidget;
	}

}
