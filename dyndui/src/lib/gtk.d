/*
 * File:   gtk.d
 * Author: John Reimer
 * Dater:  2005-05-05 Initial release
 *
 */

module	lib.gtk;

private
{
	import def.Types;
	import def.Constants;
	import lib.loader;
	import lib.paths;

	debug import std.stdio;
}

private 
{
	Linker gtk_Linker;
	Linker gthread_Linker;
	
	version(linux)
	{
		Linker gtk_Socket_Linker;
		Linker gtk_Plug_Linker;
	}
}
	
private 
	
static this()
{
	with (lib.loader)
	{
		gthread_Linker = new Linker(libPath ~ importLibs[LIBRARY.GTHREAD]);
		gthread_Linker.link(gthreadLinks);
		
		debug writefln("...Load gthread functions successful");
		
		gtk_Linker = new Linker(libPath ~ importLibs[LIBRARY.GTK]);
		gtk_Linker.link(gtkLinks);
		
		/* 
		   Only Linux version supports gtk_socket* and gtk_plug* functions 
		   so we must build these Linkers separately.
		*/
		version(linux) 
		{
			gtk_Socket_Linker = new Linker(importLibs[LIBRARY.GTK]);
			gtk_Plug_Linker = new Linker(importLibs[LIBRARY.GTK]);
			
			gtk_Socket_Linker.link(gtkSocketLinks);
			gtk_Plug_Linker.link(gtkPlugLinks);
		}
			
		debug writefln("...Load gtk functions successful");
		debug writefln("* Finished static this(): gtk");
	}
}

static ~this()
{
	delete gtk_Linker;
	delete gthread_Linker;
	version(linux)
	{
		delete gtk_Socket_Linker;
		delete gtk_Plug_Linker;
	}
	debug writefln("* Finished static ~this(): gtk");
}

debug void main()
{
	writefln(" ...running main");
}

extern(C) void	function(GThreadFunctions *vtable) g_thread_init;

lib.loader.Symbol[] gthreadLinks = [ { "g_thread_init",  cast(void**)& g_thread_init } ];

extern(C)
{
	gboolean		function(GtkAccelGroup * accel_group, GClosure * closure)
			gtk_accel_group_disconnect;
	gboolean		function(GtkAccelGroup * accel_group, guint accel_key, GdkModifierType accel_mods)
			gtk_accel_group_disconnect_key;
	GtkAccelGroupEntry*		function(GtkAccelGroup * accel_group, guint accel_key, GdkModifierType accel_mods, guint * n_entries)
			gtk_accel_group_query;
	void		function(GtkAccelGroup * accel_group)
			gtk_accel_group_lock;
	void		function(GtkAccelGroup * accel_group)
			gtk_accel_group_unlock;
	GtkAccelGroup*		function(GClosure * closure)
			gtk_accel_group_from_accel_closure;
	gboolean		function(GObject * object, guint accel_key, GdkModifierType accel_mods)
			gtk_accel_groups_activate;
	GSList*		function(GObject * object)
			gtk_accel_groups_from_object;
	GtkAccelKey*		function(GtkAccelGroup * accel_group, GtkAccelGroupFindFunc find_func, gpointer data)
			gtk_accel_group_find;
	gboolean		function(guint keyval, GdkModifierType modifiers)
			gtk_accelerator_valid;
	void		function(gchar * accelerator, guint * accelerator_key, GdkModifierType * accelerator_mods)
			gtk_accelerator_parse;
	gchar*		function(guint accelerator_key, GdkModifierType accelerator_mods)
			gtk_accelerator_name;
	void		function(GdkModifierType default_mod_mask)
			gtk_accelerator_set_default_mod_mask;
	guint		function()
			gtk_accelerator_get_default_mod_mask;
	GtkWidget*		function(gchar * string)
			gtk_accel_label_new;
	GtkWidget*		function(GtkAccelLabel * accel_label)
			gtk_accel_label_get_accel_widget;
	guint		function(GtkAccelLabel * accel_label)
			gtk_accel_label_get_accel_width;
	void		function(GtkAccelLabel * accel_label, GtkWidget * accel_widget)
			gtk_accel_label_set_accel_widget;
	void		function(GtkAccelLabel * accel_label, GClosure * accel_closure)
			gtk_accel_label_set_accel_closure;
	gboolean		function(GtkAccelLabel * accel_label)
			gtk_accel_label_refetch;
	GtkObject*		function(double value,double lower,double upper,double step_increment,double page_increment,double page_size)
			gtk_adjustment_new;
	void		function(GtkAdjustment * adjustment)
			gtk_adjustment_changed;
	void		function(GtkAdjustment * adjustment)
			gtk_adjustment_value_changed;
	void		function(GtkAdjustment * adjustment, double lower, double upper)
			gtk_adjustment_clamp_page;
	double		function(GtkAdjustment * adjustment)
			gtk_adjustment_get_value;
	void		function(GtkAdjustment * adjustment, double value)
			gtk_adjustment_set_value;
	GtkWidget*		function(gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale)
			gtk_alignment_new;
	void		function(GtkAlignment * alignment, gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale)
			gtk_alignment_set;
	GtkWidget*		function(GtkArrowType arrow_type, GtkShadowType shadow_type)
			gtk_arrow_new;
	void		function(GtkArrow * arrow, GtkArrowType arrow_type, GtkShadowType shadow_type)
			gtk_arrow_set;
	GtkWidget*		function(gchar * label, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obey_child)
			gtk_aspect_frame_new;
	void		function(GtkAspectFrame * aspect_frame, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obey_child)
			gtk_aspect_frame_set;
	GtkWidget*		function(GtkBin *bin)
			gtk_bin_get_child;
	GType		function()
			gtk_box_get_type;
	void		function(GtkBox * box, GtkWidget * child, int expand, int fill, int padding)
			gtk_box_pack_start;
	void		function(GtkBox * box, GtkWidget * child, int expand, int fill, int padding)
			gtk_box_pack_end;
	void		function(GtkBox * box, GtkWidget * widget)
			gtk_box_pack_start_defaults;
	void		function(GtkBox * box, GtkWidget * widget)
			gtk_box_pack_end_defaults;
	void		function(GtkBox * box, gboolean homogeneous)
			gtk_box_set_homogeneous;
	gboolean		function(GtkBox * box)
			gtk_box_get_homogeneous;
	void		function(GtkBox * box, int spacing)
			gtk_box_set_spacing;
	gint		function(GtkBox * box)
			gtk_box_get_spacing;
	void		function(GtkBox * box, GtkWidget * child, gint position)
			gtk_box_reorder_child;
	void		function(GtkBox * box,GtkWidget * child,gboolean * expand,gboolean * fill,guint * padding,GtkPackType * pack_type)
			gtk_box_query_child_packing;
	void		function(GtkBox * box,GtkWidget * child,gboolean expand,gboolean fill,guint padding,GtkPackType pack_type)
			gtk_box_set_child_packing;
	GtkWidget*		function(char*)
			gtk_button_new_with_label;
	GtkWidget*		function()
			gtk_button_new;
	GtkWidget*		function(gchar * stock_id)
			gtk_button_new_from_stock;
	GtkWidget*		function(gchar * label)
			gtk_button_new_with_mnemonic;
	void		function(GtkButton * button)
			gtk_button_pressed;
	void		function(GtkButton * button)
			gtk_button_released;
	void		function(GtkButton * button)
			gtk_button_clicked;
	void		function(GtkButton * button)
			gtk_button_enter;
	void		function(GtkButton * button)
			gtk_button_leave;
	void		function(GtkButton * button, GtkReliefStyle newstyle)
			gtk_button_set_relief;
	GtkReliefStyle		function(GtkButton * button)
			gtk_button_get_relief;
	void		function(GtkButton * button, gchar * label)
			gtk_button_set_label;
	gchar*		function(GtkButton * button)
			gtk_button_get_label;
	void		function(GtkButton * button, gboolean use_underline)
			gtk_button_set_use_underline;
	gboolean		function(GtkButton * button)
			gtk_button_get_use_underline;
	void		function(GtkButton * button, gboolean use_stock)
			gtk_button_set_use_stock;
	gboolean		function(GtkButton * button)
			gtk_button_get_use_stock;
	GtkButtonBoxStyle		function(GtkButtonBox * widget)
			gtk_button_box_get_layout;
	void		function(GtkButtonBox * widget, int layout_style)
			gtk_button_box_set_layout;
	void		function(GtkButtonBox * widget, GtkWidget * child, gboolean is_secondary)
			gtk_button_box_set_child_secondary;
	void		function(GtkCellRenderer * cell, GtkWidget * widget, GdkRectangle * cell_area, gint * x_offset, gint * y_offset, gint * width, gint * height)
			gtk_cell_renderer_get_size;
	void		function(GtkCellRenderer * cell, GdkWindow * window, GtkWidget * widget, GdkRectangle * background_area, GdkRectangle * cell_area, GdkRectangle * expose_area, GtkCellRendererState flags)
			gtk_cell_renderer_render;
	gboolean		function(GtkCellRenderer * cell, GdkEvent * event, GtkWidget * widget, gchar * path, GdkRectangle * background_area, GdkRectangle * cell_area, GtkCellRendererState flags)
			gtk_cell_renderer_activate;
	GtkCellEditable*		function(GtkCellRenderer * cell, GdkEvent * event, GtkWidget * widget, gchar * path, GdkRectangle * background_area, GdkRectangle * cell_area, GtkCellRendererState flags)
			gtk_cell_renderer_start_editing;
	void		function(GtkCellRenderer * cell, gint width, gint height)
			gtk_cell_renderer_set_fixed_size;
	void		function(GtkCellRenderer * cell, gint * width, gint * height)
			gtk_cell_renderer_get_fixed_size;
	GType		function()
			gtk_cell_renderer_pixbuf_get_type;
	GtkCellRenderer*		function()
			gtk_cell_renderer_pixbuf_new;
	GtkCellRenderer*		function()
			gtk_cell_renderer_text_new;
	void		function(GtkCellRendererText * renderer, gint number_of_rows)
			gtk_cell_renderer_text_set_fixed_height_from_font;
	GtkCellRenderer*		function()
			gtk_cell_renderer_toggle_new;
	gboolean		function(GtkCellRendererToggle * toggle)
			gtk_cell_renderer_toggle_get_radio;
	void		function(GtkCellRendererToggle * toggle, gboolean radio)
			gtk_cell_renderer_toggle_set_radio;
	gboolean		function(GtkCellRendererToggle * toggle)
			gtk_cell_renderer_toggle_get_active;
	void		function(GtkCellRendererToggle * toggle, gboolean setting)
			gtk_cell_renderer_toggle_set_active;
	GtkWidget*		function(char*)
			gtk_check_button_new_with_label;
	GtkWidget*		function()
			gtk_check_button_new;
	GtkWidget*		function()
			gtk_check_menu_item_new;
	GtkWidget*		function(gchar * label)
			gtk_check_menu_item_new_with_label;
	GtkWidget*		function(gchar * label)
			gtk_check_menu_item_new_with_mnemonic;
	gboolean		function(GtkCheckMenuItem * check_menu_item)
			gtk_check_menu_item_get_active;
	void		function(GtkCheckMenuItem * check_menu_item, gboolean is_active)
			gtk_check_menu_item_set_active;
	void		function(GtkCheckMenuItem * menu_item, gboolean always)
			gtk_check_menu_item_set_show_toggle;
	void		function(GtkCheckMenuItem * check_menu_item)
			gtk_check_menu_item_toggled;
	gboolean		function(GtkCheckMenuItem * check_menu_item)
			gtk_check_menu_item_get_inconsistent;
	void		function(GtkCheckMenuItem * check_menu_item, gboolean setting)
			gtk_check_menu_item_set_inconsistent;
	GType		function()
			gtk_clipboard_get_type;
	GtkClipboard*		function(GdkDisplay * display, GdkAtom selection)
			gtk_clipboard_get_for_display;
	GtkClipboard*		function(GdkAtom selection)
			gtk_clipboard_get;
	GdkDisplay*		function(GtkClipboard * clipboard)
			gtk_clipboard_get_display;
	GObject*		function(GtkClipboard * clipboard)
			gtk_clipboard_get_owner;
	void		function(GtkClipboard * clipboard)
			gtk_clipboard_clear;
	void		function(GtkClipboard * clipboard, gchar * text, gint len)
			gtk_clipboard_set_text;
	GtkSelectionData*		function(GtkClipboard * clipboard, GdkAtom target)
			gtk_clipboard_wait_for_contents;
	gchar*		function(GtkClipboard * clipboard)
			gtk_clipboard_wait_for_text;
	gboolean		function(GtkClipboard * clipboard)
			gtk_clipboard_wait_is_text_available;
	GtkWidget*		function()
			gtk_color_selection_new;
	void		function(GtkColorSelection * colorsel, gboolean has_opacity)
			gtk_color_selection_set_has_opacity_control;
	void		function(GtkColorSelection * colorsel, GdkColor * color)
			gtk_color_selection_get_current_color;
	void		function(GtkColorSelection * colorsel, GdkColor * color)
			gtk_color_selection_set_current_color;
	GtkWidget*		function(char *title)
			gtk_color_selection_dialog_new;
	int		function()
			gtk_combo_get_type;
	GtkWidget*		function()
			gtk_combo_new;
	void		function(void* combo, int val, int ok_if_empty)
			gtk_combo_set_value_in_list;
	void		function(void* combo, int val)
			gtk_combo_set_use_arrows;
	void		function(void* combo, int val)
			gtk_combo_set_use_arrows_always;
	void		function(void* combo, int val)
			gtk_combo_set_case_sensitive;
	void		function(void* combo, void* item,char* item_value)
			gtk_combo_set_item_string;
	void		function(void* combo, void *strings)
			gtk_combo_set_popdown_strings;
	void		function(void* combo)
			gtk_combo_disable_activate;
	GtkWidget*		function()
			gtk_combo_box_new_text;
	GtkWidget*		function()
			gtk_combo_box_new;
	GtkWidget*		function(GtkTreeModel *model)
			gtk_combo_box_new_with_model;
	void		function(GtkComboBox *combo_box, gchar *text)
			gtk_combo_box_append_text;
	void		function(GtkComboBox *combo_box,gint position, gchar *text)
			gtk_combo_box_insert_text;
	void		function(GtkComboBox *combo_box, gchar *text)
			gtk_combo_box_prepend_text;
	void		function(GtkComboBox *combo_box,gint position)
			gtk_combo_box_remove_text;
	void		function(GtkComboBox *combo_box,gint width)
			gtk_combo_box_set_wrap_width;
	void		function(GtkComboBox *combo_box,gint row_span)
			gtk_combo_box_set_row_span_column;
	void		function(GtkComboBox *combo_box,gint column_span)
			gtk_combo_box_set_column_span_column;
	gint		function(GtkComboBox *combo_box)
			gtk_combo_box_get_active;
	void		function(GtkComboBox *combo_box,gint index)
			gtk_combo_box_set_active;
	gboolean		function(GtkComboBox *combo_box,GtkTreeIter *iter)
			gtk_combo_box_get_active_iter;
	void		function(GtkComboBox *combo_box,GtkTreeIter *iter)
			gtk_combo_box_set_active_iter;
	GtkTreeModel*		function(GtkComboBox *combo_box)
			gtk_combo_box_get_model;
	void		function(GtkComboBox *combo_box,GtkTreeModel *model)
			gtk_combo_box_set_model;
	void		function(GtkComboBox *combo_box)
			gtk_combo_box_popup;
	void		function(GtkComboBox *combo_box)
			gtk_combo_box_popdown;
	GtkWidget*		function()
			gtk_combo_box_entry_new;
	GtkWidget*		function()
			gtk_combo_box_entry_new_text;
	void		function(GtkComboBoxEntry *entry_box,gint text_column)
			gtk_combo_box_entry_set_text_column;
	gint		function(GtkComboBoxEntry *entry_box)
			gtk_combo_box_entry_get_text_column;
	GtkWidget*		function()
			gtk_curve_new;
	void		function(GtkCurve * curve)
			gtk_curve_reset;
	void		function(GtkCurve * curve, gfloat gamma_)
			gtk_curve_set_gamma;
	void		function(GtkCurve * curve, gfloat min_x, gfloat max_x, gfloat min_y, gfloat max_y)
			gtk_curve_set_range;
	void		function(GtkCurve * curve, int veclen, gfloat* vector)
			gtk_curve_get_vector;
	void		function(GtkCurve * curve, int veclen, gfloat* vector)
			gtk_curve_set_vector;
	void		function(GtkCurve * curve, GtkCurveType type)
			gtk_curve_set_curve_type;
	GType		function()
			gtk_dialog_get_type;
	int		function(void *)
			gtk_dialog_run;
	GtkWidget*		function()
			gtk_dialog_new;
	GtkWidget*		function( char * title, GtkWindow * parent , GtkDialogFlags flags,  char *  first_button_text , ... )
			gtk_dialog_new_with_buttons;
	void		function(GtkDialog * dialog, GtkWidget * child, int response_id)
			gtk_dialog_add_action_widget;
	GtkWidget*		function(GtkDialog * dialog,  char * button_text, int response_id)
			gtk_dialog_add_button;
	void		function( GtkDialog  *  dialog ,   char  *  first_button_text , ... )
			gtk_dialog_add_buttons;
	void		function(GtkDialog * dialog, int response_id, gboolean setting)
			gtk_dialog_set_response_sensitive;
	void		function(GtkDialog * dialog, int response_id)
			gtk_dialog_set_default_response;
	void		function(GtkDialog * dialog, gboolean setting)
			gtk_dialog_set_has_separator;
	gboolean		function(GtkDialog * dialog)
			gtk_dialog_get_has_separator;
	void		function(GtkWidget * widget, GdkDragContext * context, GdkAtom target, guint32 time_)
			gtk_drag_get_data;
	void		function(GdkDragContext * context, gboolean success, gboolean del, guint32 time_)
			gtk_drag_finish;
	GtkWidget*		function(GdkDragContext * context)
			gtk_drag_get_source_widget;
	void		function(GtkWidget * widget)
			gtk_drag_highlight;
	void		function(GtkWidget * widget)
			gtk_drag_unhighlight;
	void		function(GtkWidget * widget, GtkDestDefaults flags, GtkTargetEntry * targets, gint n_targets, GdkDragAction actions)
			gtk_drag_dest_set;
	void		function(GtkWidget * widget, GdkWindow * proxy_window, GdkDragProtocol protocol, gboolean use_coordinates)
			gtk_drag_dest_set_proxy;
	void		function(GtkWidget * widget)
			gtk_drag_dest_unset;
	GdkAtom		function(GtkWidget * widget, GdkDragContext * context, GtkTargetList * target_list)
			gtk_drag_dest_find_target;
	GtkTargetList*		function(GtkWidget * widget)
			gtk_drag_dest_get_target_list;
	void		function(GtkWidget * widget, GtkTargetList * target_list)
			gtk_drag_dest_set_target_list;
	void		function(GtkWidget * widget, GdkModifierType start_button_mask, GtkTargetEntry * targets, gint n_targets, GdkDragAction actions)
			gtk_drag_source_set;
	void		function(GtkWidget * widget)
			gtk_drag_source_unset;
	void		function(GtkWidget * widget, GdkColormap * colormap, GdkPixmap * pixmap, GdkBitmap * mask)
			gtk_drag_source_set_icon;
	void		function(GtkWidget * widget, GdkPixbuf * pixbuf)
			gtk_drag_source_set_icon_pixbuf;
	void		function(GtkWidget * widget, gchar * stock_id)
			gtk_drag_source_set_icon_stock;
	GdkDragContext*		function(GtkWidget * widget, GtkTargetList * targets, GdkDragAction actions, gint button, GdkEvent * event)
			gtk_drag_begin;
	void		function(GdkDragContext * context, GtkWidget * widget, gint hot_x, gint hot_y)
			gtk_drag_set_icon_widget;
	void		function(GdkDragContext * context, GdkColormap * colormap, GdkPixmap * pixmap, GdkBitmap * mask, gint hot_x, gint hot_y)
			gtk_drag_set_icon_pixmap;
	void		function(GdkDragContext * context, GdkPixbuf * pixbuf, gint hot_x, gint hot_y)
			gtk_drag_set_icon_pixbuf;
	void		function(GdkDragContext * context, gchar * stock_id, gint hot_x, gint hot_y)
			gtk_drag_set_icon_stock;
	void		function(GdkDragContext * context)
			gtk_drag_set_icon_default;
	gboolean		function(GtkWidget * widget, gint start_x, gint start_y, gint current_x, gint current_y)
			gtk_drag_check_threshold;
	GType		function()
			gtk_drawing_area_get_type;
	GtkWidget*		function()
			gtk_drawing_area_new;
	gchar*		function()
			gtk_set_locale;
	void		function()
			gtk_disable_setlocale;
	void		function(int * argc, char * **argv)
			gtk_init;
	gboolean		function(int * argc, char * **argv)
			gtk_init_check;
	void		function(gint error_code)
			gtk_exit;
	gint		function()
			gtk_events_pending;
	void		function()
			gtk_main;
	guint		function()
			gtk_main_level;
	void		function()
			gtk_main_quit;
	gboolean		function()
			gtk_main_iteration;
	gboolean		function(gboolean blocking)
			gtk_main_iteration_do;
	gboolean		function()
			gtk_true;
	gboolean		function()
			gtk_false;
	void		function(GtkWidget * widget)
			gtk_grab_add;
	GtkWidget*		function()
			gtk_grab_get_current;
	void		function(GtkWidget * widget)
			gtk_grab_remove;
	void		function(guint main_level, GtkObject * object)
			gtk_quit_add_destroy;
	void		function(guint quit_handler_id)
			gtk_quit_remove;
	void		function(gpointer data)
			gtk_quit_remove_by_data;
	void		function(guint input_handler_id)
			gtk_input_remove;
	void		function(guint snooper_handler_id)
			gtk_key_snooper_remove;
	guint32		function()
			gtk_get_current_event_time;
	gboolean		function(GdkModifierType * state)
			gtk_get_current_event_state;
	guint		function(void* funct, gpointer data)
			gtk_idle_add;
	guint		function(gint priority, void* funct, gpointer data)
			gtk_idle_add_priority;
	void		function(guint idle_handler_id)
			gtk_idle_remove;
	void		function(gpointer data)
			gtk_idle_remove_by_data;
	guint		function(guint32 interval, void* funct, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy)
			gtk_timeout_add_full;
	guint		function(guint32 interval, void* funct, gpointer data)
			gtk_timeout_add;
	void		function(guint timeout_handler_id)
			gtk_timeout_remove;
	GtkObject*		function(GtkType type, gchar * first_property_name,...)
			gtk_object_new;
	void		function(GtkObject * object)
			gtk_object_sink;
	void		function(GtkObject * object)
			gtk_object_destroy;
	void		function(GtkEditable * editable, gint start, gint end)
			gtk_editable_select_region;
	gboolean		function(GtkEditable * editable, gint * start, gint * end)
			gtk_editable_get_selection_bounds;
	void		function(GtkEditable * editable, gchar * new_text, gint new_text_length, gint * position)
			gtk_editable_insert_text;
	void		function(GtkEditable * editable, gint start_pos, gint end_pos)
			gtk_editable_delete_text;
	gchar*		function(GtkEditable * editable, gint start_pos, gint end_pos)
			gtk_editable_get_chars;
	void		function(GtkEditable * editable)
			gtk_editable_cut_clipboard;
	void		function(GtkEditable * editable)
			gtk_editable_copy_clipboard;
	void		function(GtkEditable * editable)
			gtk_editable_paste_clipboard;
	void		function(GtkEditable * editable)
			gtk_editable_delete_selection;
	void		function(GtkEditable * editable, gint position)
			gtk_editable_set_position;
	gint		function(GtkEditable * editable)
			gtk_editable_get_position;
	void		function(GtkEditable * editable, gboolean is_editable)
			gtk_editable_set_editable;
	gboolean		function(GtkEditable * editable)
			gtk_editable_get_editable;
	GType		function()
			gtk_event_box_get_type;
	GtkWidget*		function()
			gtk_event_box_new;
	GtkWidget*		function(gchar *title,GtkWindow *parent,GtkFileChooserAction action, gchar *first_button_text,...)
			gtk_file_chooser_dialog_new;
	GtkWidget*		function( gchar *title,GtkWindow *parent,GtkFileChooserAction action,gchar *backend,gchar *first_button_text,...)
			gtk_file_chooser_dialog_new_with_backend;
	void		function(GtkFileChooser *chooser,GtkFileChooserAction action)
			gtk_file_chooser_set_action;
	GtkFileChooserAction		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_action;
	void		function(GtkFileChooser *chooser,gboolean local_only)
			gtk_file_chooser_set_local_only;
	gboolean		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_local_only;
	void		function(GtkFileChooser *chooser,gboolean select_multiple)
			gtk_file_chooser_set_select_multiple;
	gboolean		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_select_multiple;
	void		function(GtkFileChooser *chooser, gchar *name)
			gtk_file_chooser_set_current_name;
	gchar*		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_filename;
	gboolean		function(GtkFileChooser *chooser, char *filename)
			gtk_file_chooser_set_filename;
	gboolean		function(GtkFileChooser *chooser, char *filename)
			gtk_file_chooser_select_filename;
	void		function(GtkFileChooser *chooser, char *filename)
			gtk_file_chooser_unselect_filename;
	void		function(GtkFileChooser *chooser)
			gtk_file_chooser_select_all;
	void		function(GtkFileChooser *chooser)
			gtk_file_chooser_unselect_all;
	GSList*		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_filenames;
	gboolean		function(GtkFileChooser *chooser, gchar *filename)
			gtk_file_chooser_set_current_folder;
	gchar*		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_current_folder;
	gchar*		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_uri;
	gboolean		function(GtkFileChooser *chooser, char *uri)
			gtk_file_chooser_set_uri;
	gboolean		function(GtkFileChooser *chooser, char *uri)
			gtk_file_chooser_select_uri;
	void		function(GtkFileChooser *chooser, char *uri)
			gtk_file_chooser_unselect_uri;
	GSList*		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_uris;
	gboolean		function(GtkFileChooser *chooser, gchar *uri)
			gtk_file_chooser_set_current_folder_uri;
	gchar*		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_current_folder_uri;
	void		function(GtkFileChooser *chooser,GtkWidget *preview_widget)
			gtk_file_chooser_set_preview_widget;
	GtkWidget*		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_preview_widget;
	void		function(GtkFileChooser *chooser,gboolean active)
			gtk_file_chooser_set_preview_widget_active;
	gboolean		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_preview_widget_active;
	void		function(GtkFileChooser *chooser,gboolean use_label)
			gtk_file_chooser_set_use_preview_label;
	gboolean		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_use_preview_label;
	char*		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_preview_filename;
	char*		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_preview_uri;
	void		function(GtkFileChooser *chooser,GtkWidget *extra_widget)
			gtk_file_chooser_set_extra_widget;
	GtkWidget*		function(GtkFileChooser *chooser)
			gtk_file_chooser_get_extra_widget;
	GSList*		function(GtkFileChooser *chooser)
			gtk_file_chooser_list_filters;
	gboolean		function(GtkFileChooser *chooser, char *folder,GError **error)
			gtk_file_chooser_add_shortcut_folder;
	gboolean		function(GtkFileChooser *chooser, char *folder,GError **error)
			gtk_file_chooser_remove_shortcut_folder;
	GSList*		function(GtkFileChooser *chooser)
			gtk_file_chooser_list_shortcut_folders;
	gboolean		function(GtkFileChooser *chooser, char *uri,GError **error)
			gtk_file_chooser_add_shortcut_folder_uri;
	gboolean		function(GtkFileChooser *chooser, char *uri,GError **error)
			gtk_file_chooser_remove_shortcut_folder_uri;
	GSList*		function(GtkFileChooser *chooser)
			gtk_file_chooser_list_shortcut_folder_uris;
	GType		function()
			gtk_file_selection_get_type;
	GtkWidget*		function(gchar * title)
			gtk_file_selection_new;
	void		function(GtkFileSelection * filesel, gchar * filename)
			gtk_file_selection_set_filename;
	gchar*		function(GtkFileSelection * filesel)
			gtk_file_selection_get_filename;
	void		function(GtkFileSelection * filesel, gchar * pattern)
			gtk_file_selection_complete;
	void		function(GtkFileSelection * filesel)
			gtk_file_selection_show_fileop_buttons;
	void		function(GtkFileSelection * filesel)
			gtk_file_selection_hide_fileop_buttons;
	gchar**		function(GtkFileSelection * filesel)
			gtk_file_selection_get_selections;
	void		function(GtkFileSelection * filesel, gboolean select_multiple)
			gtk_file_selection_set_select_multiple;
	gboolean		function(GtkFileSelection * filesel)
			gtk_file_selection_get_select_multiple;
	GType		function()
			gtk_fixed_get_type;
	GtkWidget*		function()
			gtk_fixed_new;
	void		function(GtkFixed * fixed, GtkWidget * widget, gint x, gint y)
			gtk_fixed_put;
	void		function(GtkFixed * fixed, GtkWidget * widget, gint x, gint y)
			gtk_fixed_move;
	void		function(GtkFixed * fixed, gboolean has_window)
			gtk_fixed_set_has_window;
	gboolean		function(GtkFixed * fixed)
			gtk_fixed_get_has_window;
	GType		function()
			gtk_font_selection_get_type;
	GtkWidget*		function()
			gtk_font_selection_new;
	GdkFont*		function(GtkFontSelection * fontsel)
			gtk_font_selection_get_font;
	gchar*		function(GtkFontSelection * fontsel)
			gtk_font_selection_get_font_name;
	gboolean		function(GtkFontSelection * fontsel, gchar * fontname)
			gtk_font_selection_set_font_name;
	gchar*		function(GtkFontSelection * fontsel)
			gtk_font_selection_get_preview_text;
	void		function(GtkFontSelection * fontsel, gchar * text)
			gtk_font_selection_set_preview_text;
	GType		function()
			gtk_font_selection_dialog_get_type;
	GtkWidget*		function(gchar * title)
			gtk_font_selection_dialog_new;
	gchar*		function(GtkFontSelectionDialog * fsd)
			gtk_font_selection_dialog_get_font_name;
	gboolean		function(GtkFontSelectionDialog * fsd, gchar * fontname)
			gtk_font_selection_dialog_set_font_name;
	gchar*		function(GtkFontSelectionDialog * fsd)
			gtk_font_selection_dialog_get_preview_text;
	void		function(GtkFontSelectionDialog * fsd, gchar * text)
			gtk_font_selection_dialog_set_preview_text;
	GType		function()
			gtk_frame_get_type;
	GtkWidget*		function(gchar * label)
			gtk_frame_new;
	void		function(GtkFrame * frame, gchar * label)
			gtk_frame_set_label;
	gchar*		function(GtkFrame * frame)
			gtk_frame_get_label;
	void		function(GtkFrame * frame, GtkWidget * label_widget)
			gtk_frame_set_label_widget;
	GtkWidget*		function(GtkFrame * frame)
			gtk_frame_get_label_widget;
	void		function(GtkFrame * frame, gfloat xalign, gfloat yalign)
			gtk_frame_set_label_align;
	void		function(GtkFrame * frame, gfloat * xalign, gfloat * yalign)
			gtk_frame_get_label_align;
	void		function(GtkFrame * frame, GtkShadowType type)
			gtk_frame_set_shadow_type;
	GtkShadowType		function(GtkFrame * frame)
			gtk_frame_get_shadow_type;
	GtkWidget*		function()
			gtk_gamma_curve_new;
	GType		function()
			gtk_handle_box_get_type;
	GtkWidget*		function()
			gtk_handle_box_new;
	void		function(GtkHandleBox * handle_box, GtkShadowType type)
			gtk_handle_box_set_shadow_type;
	GtkShadowType		function(GtkHandleBox * handle_box)
			gtk_handle_box_get_shadow_type;
	void		function(GtkHandleBox * handle_box, GtkPositionType position)
			gtk_handle_box_set_handle_position;
	GtkPositionType		function(GtkHandleBox * handle_box)
			gtk_handle_box_get_handle_position;
	void		function(GtkHandleBox * handle_box, GtkPositionType edge)
			gtk_handle_box_set_snap_edge;
	GtkPositionType		function(GtkHandleBox * handle_box)
			gtk_handle_box_get_snap_edge;
	GType		function()
			gtk_hbox_get_type;
	GtkWidget*		function(gboolean homogeneous,  gint spacing)
			gtk_hbox_new;
	GType		function()
			gtk_hbutton_box_get_type;
	GtkWidget*		function()
			gtk_hbutton_box_new;
	GType		function()
			gtk_hpaned_get_type;
	GtkWidget*		function()
			gtk_hpaned_new;
	GType		function()
			gtk_hruler_get_type;
	GtkWidget*		function()
			gtk_hruler_new;
	GType		function()
			gtk_hscale_get_type;
	GtkWidget*		function(GtkAdjustment * adjustment)
			gtk_hscale_new;
	GtkWidget*		function(gdouble min, gdouble max, gdouble step)
			gtk_hscale_new_with_range;
	GType		function()
			gtk_hscrollbar_get_type;
	GtkWidget*		function(GtkAdjustment *adjustment)
			gtk_hscrollbar_new;
	GType		function()
			gtk_hseparator_get_type;
	GtkWidget*		function()
			gtk_hseparator_new;
	GType		function()
			gtk_image_get_type;
	GtkWidget*		function()
			gtk_image_new;
	GtkWidget*		function(GdkPixmap * pixmap, GdkBitmap * mask)
			gtk_image_new_from_pixmap;
	GtkWidget*		function(GdkImage * image, GdkBitmap * mask)
			gtk_image_new_from_image;
	GtkWidget*		function(gchar * filename)
			gtk_image_new_from_file;
	GtkWidget*		function(GdkPixbuf * pixbuf)
			gtk_image_new_from_pixbuf;
	GtkWidget*		function(gchar * stock_id, IconSize size)
			gtk_image_new_from_stock;
	GtkWidget*		function(GtkIconSet * icon_set, IconSize size)
			gtk_image_new_from_icon_set;
	GtkWidget*		function(GdkPixbufAnimation * animation)
			gtk_image_new_from_animation;
	void		function(GtkImage * image, GdkPixmap * pixmap, GdkBitmap * mask)
			gtk_image_set_from_pixmap;
	void		function(GtkImage * image, GdkImage * gdk_image, GdkBitmap * mask)
			gtk_image_set_from_image;
	void		function(GtkImage * image, gchar * filename)
			gtk_image_set_from_file;
	void		function(GtkImage * image, GdkPixbuf * pixbuf)
			gtk_image_set_from_pixbuf;
	void		function(GtkImage * image, gchar * stock_id, IconSize size)
			gtk_image_set_from_stock;
	void		function(GtkImage * image, GtkIconSet * icon_set, IconSize size)
			gtk_image_set_from_icon_set;
	void		function(GtkImage * image, GdkPixbufAnimation * animation)
			gtk_image_set_from_animation;
	GtkImageType		function(GtkImage * image)
			gtk_image_get_storage_type;
	void		function(GtkImage * image, GdkPixmap * * pixmap, GdkBitmap * * mask)
			gtk_image_get_pixmap;
	void		function(GtkImage * image, GdkImage * * gdk_image, GdkBitmap * * mask)
			gtk_image_get_image;
	GdkPixbuf*		function(GtkImage * image)
			gtk_image_get_pixbuf;
	void		function(GtkImage * image, gchar * * stock_id, IconSize * size)
			gtk_image_get_stock;
	void		function(GtkImage * image, GtkIconSet * * icon_set, IconSize * size)
			gtk_image_get_icon_set;
	GdkPixbufAnimation*		function(GtkImage * image)
			gtk_image_get_animation;
	GType		function()
			gtk_image_menu_item_get_type;
	void		function(GtkImageMenuItem * image_menu_item, GtkWidget * image)
			gtk_image_menu_item_set_image;
	GtkWidget*		function(GtkImageMenuItem * image_menu_item)
			gtk_image_menu_item_get_image;
	GtkWidget*		function()
			gtk_image_menu_item_new;
	GtkWidget*		function(gchar * stock_id, GtkAccelGroup * accel_group)
			gtk_image_menu_item_new_from_stock;
	GtkWidget*		function(gchar * label)
			gtk_image_menu_item_new_with_label;
	GtkWidget*		function(gchar * label)
			gtk_image_menu_item_new_with_mnemonic;
	GType		function()
			gtk_input_dialog_get_type;
	GtkWidget*		function()
			gtk_input_dialog_new;
	GtkWidget*		function()
			gtk_invisible_new;
	GtkWidget*		function(GdkScreen * screen)
			gtk_invisible_new_for_screen;
	void		function(GtkInvisible * invisible, GdkScreen * screen)
			gtk_invisible_set_screen;
	GdkScreen*		function(GtkInvisible * invisible)
			gtk_invisible_get_screen;
	GType		function()
			gtk_item_get_type;
	void		function(GtkItem *item)
			gtk_item_select;
	void		function(GtkItem *item)
			gtk_item_deselect;
	void		function(GtkItem *item)
			gtk_item_toggle;
	GtkItemFactory*		function(GType container_type, gchar * path, GtkAccelGroup * accel_group)
			gtk_item_factory_new;
	void		function(GtkItemFactory * ifactory, GType container_type, gchar * path, GtkAccelGroup * accel_group)
			gtk_item_factory_construct;
	void		function(GtkWidget * accel_widget, gchar * full_path, GtkAccelGroup * accel_group, guint keyval, GdkModifierType modifiers)
			gtk_item_factory_add_foreign;
	GtkItemFactory*		function(GtkWidget * widget)
			gtk_item_factory_from_widget;
	gchar*		function(GtkWidget * widget)
			gtk_item_factory_path_from_widget;
	GtkWidget*		function(GtkItemFactory * ifactory, gchar * path)
			gtk_item_factory_get_item;
	GtkWidget*		function(GtkItemFactory * ifactory, gchar * path)
			gtk_item_factory_get_widget;
	GtkWidget*		function(GtkItemFactory * ifactory, guint action)
			gtk_item_factory_get_widget_by_action;
	GtkWidget*		function(GtkItemFactory * ifactory, guint action)
			gtk_item_factory_get_item_by_action;
	void		function(GtkItemFactory * ifactory, GtkItemFactoryEntry * entry, gpointer callback_data, guint callback_type)
			gtk_item_factory_create_item;
	void		function(GtkItemFactory * ifactory, guint n_entries, GtkItemFactoryEntry * entries, gpointer callback_data)
			gtk_item_factory_create_items;
	void		function(GtkItemFactory * ifactory, guint n_entries, GtkItemFactoryEntry * entries, gpointer callback_data, guint callback_type)
			gtk_item_factory_create_items_ac;
	void		function(GtkItemFactory * ifactory, gchar * path)
			gtk_item_factory_delete_item;
	void		function(GtkItemFactory * ifactory, GtkItemFactoryEntry * entry)
			gtk_item_factory_delete_entry;
	void		function(GtkItemFactory * ifactory, guint n_entries, GtkItemFactoryEntry * entries)
			gtk_item_factory_delete_entries;
	void		function(GtkItemFactory * ifactory, guint x, guint y, guint mouse_button, guint32 time_)
			gtk_item_factory_popup;
	void		function(GtkItemFactory * ifactory, gpointer popup_data, GtkDestroyNotify destroy, guint x, guint y, guint mouse_button, guint32 time_)
			gtk_item_factory_popup_with_data;
	gpointer		function(GtkItemFactory * ifactory)
			gtk_item_factory_popup_data;
	gpointer		function(GtkWidget * widget)
			gtk_item_factory_popup_data_from_widget;
	GtkItemFactory*		function(gchar * path)
			gtk_item_factory_from_path;
	void		function(guint n_entries, GtkMenuEntry * entries)
			gtk_item_factory_create_menu_entries;
	void		function(gchar * ifactory_path, gchar * path)
			gtk_item_factories_path_delete;
	void		function(GtkItemFactory * ifactory, GtkTranslateFunc func, gpointer data, GtkDestroyNotify notify)
			gtk_item_factory_set_translate_func;
	GType		function()
			gtk_label_get_type;
	GtkWidget*		function(char * str)
			gtk_label_new;
	GtkWidget*		function(char * str)
			gtk_label_new_with_mnemonic;
	void		function(GtkLabel * label, char * str)
			gtk_label_set_text;
	gchar*		function(GtkLabel * label)
			gtk_label_get_text;
	void		function(GtkLabel * label, PangoAttrList * attrs)
			gtk_label_set_attributes;
	PangoAttrList*		function(GtkLabel * label)
			gtk_label_get_attributes;
	void		function(GtkLabel * label, gchar * str)
			gtk_label_set_label;
	gchar*		function(GtkLabel * label)
			gtk_label_get_label;
	void		function(GtkLabel * label, gchar * str)
			gtk_label_set_markup;
	void		function(GtkLabel * label, gboolean setting)
			gtk_label_set_use_markup;
	gboolean		function(GtkLabel * label)
			gtk_label_get_use_markup;
	void		function(GtkLabel * label, gboolean setting)
			gtk_label_set_use_underline;
	gboolean		function(GtkLabel * label)
			gtk_label_get_use_underline;
	void		function(GtkLabel * label, gchar * str)
			gtk_label_set_markup_with_mnemonic;
	guint		function(GtkLabel * label)
			gtk_label_get_mnemonic_keyval;
	void		function(GtkLabel * label, GtkWidget * mnm)
			gtk_label_set_mnemonic_widget;
	GtkWidget*		function(GtkLabel * label)
			gtk_label_get_mnemonic_widget;
	void		function(GtkLabel * label, gchar * str)
			gtk_label_set_text_with_mnemonic;
	void		function(GtkLabel * label, GtkJustification jtype)
			gtk_label_set_justify;
	GtkJustification		function(GtkLabel * label)
			gtk_label_get_justify;
	void		function(GtkLabel * label, gchar * pattern)
			gtk_label_set_pattern;
	void		function(GtkLabel * label, gboolean wrap)
			gtk_label_set_line_wrap;
	gboolean		function(GtkLabel * label)
			gtk_label_get_line_wrap;
	void		function(GtkLabel * label, gboolean setting)
			gtk_label_set_selectable;
	gboolean		function(GtkLabel * label)
			gtk_label_get_selectable;
	void		function(GtkLabel * label, gint start_offset, gint end_offset)
			gtk_label_select_region;
	gboolean		function(GtkLabel * label, gint * start, gint * end)
			gtk_label_get_selection_bounds;
	PangoLayout*		function(GtkLabel * label)
			gtk_label_get_layout;
	void		function(GtkLabel * label, gint * x, gint * y)
			gtk_label_get_layout_offsets;
	GType		function()
			gtk_layout_get_type;
	GtkWidget*		function(GtkAdjustment * hadjustment, GtkAdjustment * vadjustment)
			gtk_layout_new;
	void		function(GtkLayout * layout, GtkWidget * child_widget, gint x, gint y)
			gtk_layout_put;
	void		function(GtkLayout * layout, GtkWidget * child_widget, gint x, gint y)
			gtk_layout_move;
	void		function(GtkLayout * layout, guint width, guint height)
			gtk_layout_set_size;
	void		function(GtkLayout * layout, guint * width, guint * height)
			gtk_layout_get_size;
	GtkAdjustment*		function(GtkLayout * layout)
			gtk_layout_get_hadjustment;
	GtkAdjustment*		function(GtkLayout * layout)
			gtk_layout_get_vadjustment;
	void		function(GtkLayout * layout, GtkAdjustment * adjustment)
			gtk_layout_set_hadjustment;
	void		function(GtkLayout * layout, GtkAdjustment * adjustment)
			gtk_layout_set_vadjustment;
	GType		function()
			gtk_list_get_type;
	GtkWidget*		function()
			gtk_list_new;
	void		function(GtkList * list, GList * items, gint position)
			gtk_list_insert_items;
	void		function(GtkList * list, GList * items)
			gtk_list_append_items;
	void		function(GtkList * list, GList * items)
			gtk_list_prepend_items;
	void		function(GtkList * list, GList * items)
			gtk_list_remove_items;
	void		function(GtkList * list, GList * items)
			gtk_list_remove_items_no_unref;
	void		function(GtkList * list, gint start, gint end)
			gtk_list_clear_items;
	void		function(GtkList * list, gint item)
			gtk_list_select_item;
	void		function(GtkList * list, gint item)
			gtk_list_unselect_item;
	void		function(GtkList * list, GtkWidget * child)
			gtk_list_select_child;
	void		function(GtkList * list, GtkWidget * child)
			gtk_list_unselect_child;
	gint		function(GtkList * list, GtkWidget * child)
			gtk_list_child_position;
	void		function(GtkList * list, GtkSelectionMode mode)
			gtk_list_set_selection_mode;
	GType		function()
			gtk_list_item_get_type;
	GtkWidget*		function()
			gtk_list_item_new;
	GtkWidget*		function(gchar *label)
			gtk_list_item_new_with_label;
	void		function(GtkListItem *list_item)
			gtk_list_item_select;
	void		function(GtkListItem *list_item)
			gtk_list_item_deselect;
	GType		function()
			gtk_list_store_get_type;
	GtkListStore*		function(gint n_columns,...)
			gtk_list_store_new;
	GtkListStore*		function(gint n_columns, GType * types)
			gtk_list_store_newv;
	void		function(GtkListStore * list_store, gint n_columns, GType * types)
			gtk_list_store_set_column_types;
	void		function(GtkListStore * list_store, GtkTreeIter * iter, gint column, GValue * value)
			gtk_list_store_set_value;
	void		function(GtkListStore * list_store, GtkTreeIter * iter,...)
			gtk_list_store_set;
	void		function(GtkListStore * list_store, GtkTreeIter * iter, vaList var_args)
			gtk_list_store_set_valist;
	gboolean		function(GtkListStore * list_store, GtkTreeIter * iter)
			gtk_list_store_remove;
	void		function(GtkListStore * list_store, GtkTreeIter * iter, gint position)
			gtk_list_store_insert;
	void		function(GtkListStore * list_store, GtkTreeIter * iter, GtkTreeIter * sibling)
			gtk_list_store_insert_before;
	void		function(GtkListStore * list_store, GtkTreeIter * iter, GtkTreeIter * sibling)
			gtk_list_store_insert_after;
	void		function(GtkListStore * list_store, GtkTreeIter * iter)
			gtk_list_store_prepend;
	void		function(GtkListStore * list_store, GtkTreeIter * iter)
			gtk_list_store_append;
	void		function(GtkListStore * list_store)
			gtk_list_store_clear;
	gboolean		function(GtkListStore * list_store, GtkTreeIter * iter)
			gtk_list_store_iter_is_valid;
	void		function(GtkListStore * store, gint * new_order)
			gtk_list_store_reorder;
	void		function(GtkListStore * store, GtkTreeIter * a, GtkTreeIter * b)
			gtk_list_store_swap;
	void		function(GtkListStore * store, GtkTreeIter * iter, GtkTreeIter * position)
			gtk_list_store_move_after;
	void		function(GtkListStore * store, GtkTreeIter * iter, GtkTreeIter * position)
			gtk_list_store_move_before;
	GType		function()
			gtk_menu_get_type;
	GtkWidget*		function()
			gtk_menu_new;
	void		function(GtkWidget * menu,GtkWidget * parent_menu_shell,	GtkWidget * parent_menu_item,void * func,gpointer data,	guint button,guint32 activate_time)
			gtk_menu_popup;
	void		function(GtkWidget * menu)
			gtk_menu_reposition;
	void		function(GtkWidget * menu)
			gtk_menu_popdown;
	GtkWidget*		function(GtkWidget * menu)
			gtk_menu_get_active;
	void		function(GtkWidget * menu, guint index_)
			gtk_menu_set_active;
	void		function(GtkWidget * menu,void * accel_group)
			gtk_menu_set_accel_group;
	GtkAccelGroup*		function(GtkWidget * menu)
			gtk_menu_get_accel_group;
	void		function(GtkWidget * menu, char * accel_path)
			gtk_menu_set_accel_path;
	void		function(GtkWidget * menu, GtkWidget * attach_widget,void * detacher)
			gtk_menu_attach_to_widget;
	void		function(GtkWidget * menu)
			gtk_menu_detach;
	GtkWidget*		function(GtkWidget * menu)
			gtk_menu_get_attach_widget;
	void		function(GtkWidget * menu, gboolean torn_off)
			gtk_menu_set_tearoff_state;
	gboolean		function(GtkWidget * menu)
			gtk_menu_get_tearoff_state;
	void		function(GtkWidget * menu, char * title)
			gtk_menu_set_title;
	char*		function(GtkWidget * menu)
			gtk_menu_get_title;
	void		function(GtkWidget * menu, GtkWidget * child, gint position)
			gtk_menu_reorder_child;
	void		function(GtkWidget * menu, GdkScreen * screen)
			gtk_menu_set_screen;
	GType		function()
			gtk_menu_bar_get_type;
	GtkWidget*		function()
			gtk_menu_bar_new;
	GType		function()
			gtk_menu_item_get_type;
	GtkWidget*		function()
			gtk_menu_item_new;
	GtkWidget*		function( char * label)
			gtk_menu_item_new_with_label;
	GtkWidget*		function( gchar * label)
			gtk_menu_item_new_with_mnemonic;
	void		function(GtkMenuItem * menu_item, GtkWidget * submenu)
			gtk_menu_item_set_submenu;
	GtkWidget*		function(GtkMenuItem * menu_item)
			gtk_menu_item_get_submenu;
	void		function(GtkMenuItem * menu_item)
			gtk_menu_item_remove_submenu;
	void		function(GtkMenuItem * menu_item)
			gtk_menu_item_select;
	void		function(GtkMenuItem * menu_item)
			gtk_menu_item_deselect;
	void		function(GtkMenuItem * menu_item)
			gtk_menu_item_activate;
	void		function(GtkMenuItem * menu_item, gint * requisition)
			gtk_menu_item_toggle_size_request;
	void		function(GtkMenuItem * menu_item, gint allocation)
			gtk_menu_item_toggle_size_allocate;
	void		function(GtkMenuItem * menu_item, ushort right_justified)
			gtk_menu_item_set_right_justified;
	gboolean		function(GtkMenuItem * menu_item)
			gtk_menu_item_get_right_justified;
	void		function(GtkMenuItem * menu_item, gchar * accel_path)
			gtk_menu_item_set_accel_path;
	GType		function()
			gtk_menu_shell_get_type;
	void		function(GtkWidget *menu_shell,GtkWidget *child)
			gtk_menu_shell_append;
	void		function(GtkWidget *menu_shell,GtkWidget *child)
			gtk_menu_shell_prepend;
	void		function(GtkWidget *menu_shell,GtkWidget *child,gint position)
			gtk_menu_shell_insert;
	void		function(GtkWidget *menu_shell)
			gtk_menu_shell_deactivate;
	void		function(GtkWidget *menu_shell,GtkWidget *menu_item)
			gtk_menu_shell_select_item;
	void		function(GtkWidget *menu_shell)
			gtk_menu_shell_deselect;
	void		function(GtkWidget *menu_shell,GtkWidget *menu_item,gboolean force_deactivate)
			gtk_menu_shell_activate_item;
	void		function(GtkWidget *menu_shell,gboolean search_sensitive)
			gtk_menu_shell_select_first;
	GType		function()
			gtk_message_dialog_get_type;
	GtkWidget*		function(GtkWindow * parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, gchar * message_format,...)
			gtk_message_dialog_new;
	GType		function()
			gtk_misc_get_type;
	void		function(GtkMisc * misc, gfloat xalign, gfloat yalign)
			gtk_misc_set_alignment;
	void		function(GtkMisc * misc, gfloat * xalign, gfloat * yalign)
			gtk_misc_get_alignment;
	void		function(GtkMisc * misc, gint xpad, gint ypad)
			gtk_misc_set_padding;
	void		function(GtkMisc * misc, gint * xpad, gint * ypad)
			gtk_misc_get_padding;
	GType		function()
			gtk_notebook_get_type;
	GtkWidget*		function()
			gtk_notebook_new;
	void		function(GtkNotebook * notebook, GtkWidget * child, GtkWidget * tab_label)
			gtk_notebook_append_page;
	void		function(GtkNotebook * notebook, GtkWidget * child, GtkWidget * tab_label, GtkWidget * menu_label)
			gtk_notebook_append_page_menu;
	void		function(GtkNotebook * notebook, GtkWidget * child, GtkWidget * tab_label)
			gtk_notebook_prepend_page;
	void		function(GtkNotebook * notebook, GtkWidget * child, GtkWidget * tab_label, GtkWidget * menu_label)
			gtk_notebook_prepend_page_menu;
	void		function(GtkNotebook * notebook, GtkWidget * child, GtkWidget * tab_label, gint position)
			gtk_notebook_insert_page;
	void		function(GtkNotebook * notebook, GtkWidget * child, GtkWidget * tab_label, GtkWidget * menu_label, gint position)
			gtk_notebook_insert_page_menu;
	void		function(GtkNotebook * notebook, gint page_num)
			gtk_notebook_remove_page;
	GType		function()
			gtk_option_menu_get_type;
	GtkWidget*		function()
			gtk_option_menu_new;
	GtkWidget*		function(GtkOptionMenu * option_menu)
			gtk_option_menu_get_menu;
	void		function(GtkOptionMenu * option_menu, GtkWidget * menu)
			gtk_option_menu_set_menu;
	void		function(GtkOptionMenu * option_menu)
			gtk_option_menu_remove_menu;
	gint		function(GtkOptionMenu * option_menu)
			gtk_option_menu_get_history;
	void		function(GtkOptionMenu * option_menu, guint index_)
			gtk_option_menu_set_history;
	GType		function()
			gtk_paned_get_type;
	void		function(void *paned, void *child)
			gtk_paned_add1;
	void		function(void *paned, void *child)
			gtk_paned_add2;
	gint		function(void* paned)
			gtk_paned_get_position;
	void		function(void* paned, gint position)
			gtk_paned_set_position;
	GType		function()
			gtk_plug_get_type;
	void		function(GtkPlug * plug, GdkNativeWindow socket_id)
			gtk_plug_construct;
	void		function(GtkPlug * plug, GdkDisplay * display, GdkNativeWindow socket_id)
			gtk_plug_construct_for_display;
	GtkWidget*		function(GdkNativeWindow socket_id)
			gtk_plug_new;
	GtkWidget*		function(GdkDisplay * display, GdkNativeWindow socket_id)
			gtk_plug_new_for_display;
	GdkNativeWindow		function(GtkPlug * plug)
			gtk_plug_get_id;
	GType		function()
			gtk_progress_bar_get_type;
	GtkWidget*		function()
			gtk_progress_bar_new;
	void		function(GtkProgressBar * pbar)
			gtk_progress_bar_pulse;
	void		function(GtkProgressBar * pbar, gchar * text)
			gtk_progress_bar_set_text;
	void		function(GtkProgressBar * pbar, gdouble fraction)
			gtk_progress_bar_set_fraction;
	void		function(GtkProgressBar * pbar, gdouble fraction)
			gtk_progress_bar_set_pulse_step;
	void		function(GtkProgressBar * pbar, GtkProgressBarOrientation orientation)
			gtk_progress_bar_set_orientation;
	gchar*		function(GtkProgressBar * pbar)
			gtk_progress_bar_get_text;
	gdouble		function(GtkProgressBar * pbar)
			gtk_progress_bar_get_fraction;
	gdouble		function(GtkProgressBar * pbar)
			gtk_progress_bar_get_pulse_step;
	GtkProgressBarOrientation		function(GtkProgressBar * pbar)
			gtk_progress_bar_get_orientation;
	GType		function()
			gtk_radio_button_get_type;
	GtkWidget*		function(GSList * group)
			gtk_radio_button_new;
	GtkWidget*		function(GtkRadioButton * group)
			gtk_radio_button_new_from_widget;
	GtkWidget*		function(GSList * group, gchar * label)
			gtk_radio_button_new_with_label;
	GtkWidget*		function(GtkRadioButton * group, gchar * label)
			gtk_radio_button_new_with_label_from_widget;
	GtkWidget*		function(GSList * group, gchar * label)
			gtk_radio_button_new_with_mnemonic;
	GtkWidget*		function(GtkRadioButton * group, gchar * label)
			gtk_radio_button_new_with_mnemonic_from_widget;
	GSList*		function(GtkRadioButton * radio_button)
			gtk_radio_button_get_group;
	void		function(GtkRadioButton * radio_button, GSList * group)
			gtk_radio_button_set_group;
	GType		function()
			gtk_radio_menu_item_get_type;
	GtkWidget*		function(GSList * group)
			gtk_radio_menu_item_new;
	GtkWidget*		function(GSList * group, gchar * label)
			gtk_radio_menu_item_new_with_label;
	GtkWidget*		function(GSList * group, gchar * label)
			gtk_radio_menu_item_new_with_mnemonic;
	void		function(GtkRadioMenuItem * radio_menu_item, GSList * group)
			gtk_radio_menu_item_set_group;
	GSList*		function(GtkRadioMenuItem * radio_menu_item)
			gtk_radio_menu_item_get_group;
	GType		function()
			gtk_range_get_type;
	void		function(GtkRange * range, GtkUpdateType policy)
			gtk_range_set_update_policy;
	GtkUpdateType		function(GtkRange * range)
			gtk_range_get_update_policy;
	void		function(GtkRange * range, GtkAdjustment * adjustment)
			gtk_range_set_adjustment;
	GtkAdjustment*		function(GtkRange * range)
			gtk_range_get_adjustment;
	void		function(GtkRange * range, gboolean setting)
			gtk_range_set_inverted;
	gboolean		function(GtkRange * range)
			gtk_range_get_inverted;
	void		function(GtkRange * range, gdouble step, gdouble page)
			gtk_range_set_increments;
	void		function(GtkRange * range, gdouble min, gdouble max)
			gtk_range_set_range;
	void		function(GtkRange * range, gdouble value)
			gtk_range_set_value;
	gdouble		function(GtkRange * range)
			gtk_range_get_value;
	GType		function()
			gtk_ruler_get_type;
	void		function(GtkRuler * ruler, GtkMetricType metric)
			gtk_ruler_set_metric;
	void		function(GtkRuler * ruler, gdouble lower, gdouble upper, gdouble position, gdouble max_size)
			gtk_ruler_set_range;
	GtkMetricType		function(GtkRuler * ruler)
			gtk_ruler_get_metric;
	void		function(GtkRuler * ruler, gdouble * lower, gdouble * upper, gdouble * position, gdouble * max_size)
			gtk_ruler_get_range;
	GType		function()
			gtk_scale_get_type;
	void		function(GtkScale * scale, int digits)
			gtk_scale_set_digits;
	int		function(GtkScale * scale)
			gtk_scale_get_digits;
	void		function(GtkScale * scale, gboolean draw_value)
			gtk_scale_set_draw_value;
	gboolean		function(GtkScale * scale)
			gtk_scale_get_draw_value;
	void		function(GtkScale * scale, GtkPositionType pos)
			gtk_scale_set_value_pos;
	GtkPositionType		function(GtkScale * scale)
			gtk_scale_get_value_pos;
	GType		function()
			gtk_scrollbar_get_type;
	GType		function()
			gtk_scrolled_window_get_type;
	GtkWidget*		function(GtkAdjustment * hadjustment, GtkAdjustment * vadjustment)
			gtk_scrolled_window_new;
	void		function(GtkScrolledWindow * scrolled_window, GtkAdjustment * hadjustment)
			gtk_scrolled_window_set_hadjustment;
	void		function(GtkScrolledWindow * scrolled_window, GtkAdjustment * hadjustment)
			gtk_scrolled_window_set_vadjustment;
	GtkAdjustment*		function(GtkScrolledWindow * scrolled_window)
			gtk_scrolled_window_get_hadjustment;
	GtkAdjustment*		function(GtkScrolledWindow * scrolled_window)
			gtk_scrolled_window_get_vadjustment;
	void		function(GtkScrolledWindow * scrolled_window, GtkPolicyType hscrollbar_policy, GtkPolicyType vscrollbar_policy)
			gtk_scrolled_window_set_policy;
	void		function(GtkScrolledWindow * scrolled_window, GtkPolicyType * hscrollbar_policy, GtkPolicyType * vscrollbar_policy)
			gtk_scrolled_window_get_policy;
	void		function(GtkScrolledWindow * scrolled_window, GtkCornerType window_placement)
			gtk_scrolled_window_set_placement;
	GtkCornerType		function(GtkScrolledWindow * scrolled_window)
			gtk_scrolled_window_get_placement;
	void		function(GtkScrolledWindow * scrolled_window, GtkShadowType type)
			gtk_scrolled_window_set_shadow_type;
	GtkShadowType		function(GtkScrolledWindow * scrolled_window)
			gtk_scrolled_window_get_shadow_type;
	void		function(GtkScrolledWindow * scrolled_window, GtkWidget * child)
			gtk_scrolled_window_add_with_viewport;
	GType		function()
			gtk_selection_data_get_type;
	GtkSelectionData*		function(GtkSelectionData * data)
			gtk_selection_data_copy;
	void		function(GtkSelectionData * data)
			gtk_selection_data_free;
	gboolean		function(GtkWidget * widget, GdkAtom selection, guint32 time_)
			gtk_selection_owner_set;
	gboolean		function(GdkDisplay * display, GtkWidget * widget, GdkAtom selection, guint32 time_)
			gtk_selection_owner_set_for_display;
	void		function(GtkWidget * widget, GdkAtom selection, GdkAtom target, guint info)
			gtk_selection_add_target;
	void		function(GtkWidget * widget, GdkAtom selection, GtkTargetEntry * targets, guint ntargets)
			gtk_selection_add_targets;
	void		function(GtkWidget * widget, GdkAtom selection)
			gtk_selection_clear_targets;
	gboolean		function(GtkWidget * widget, GdkAtom selection, GdkAtom target, guint32 time_)
			gtk_selection_convert;
	void		function(GtkSelectionData * selection_data, GdkAtom type, gint format, guchar * data, gint length)
			gtk_selection_data_set;
	gboolean		function(GtkSelectionData * selection_data, gchar * str, gint len)
			gtk_selection_data_set_text;
	guchar*		function(GtkSelectionData * selection_data)
			gtk_selection_data_get_text;
	gboolean		function(GtkSelectionData * selection_data, GdkAtom * *targets, gint * n_atoms)
			gtk_selection_data_get_targets;
	gboolean		function(GtkSelectionData * selection_data)
			gtk_selection_data_targets_include_text;
	void		function(GtkWidget * widget)
			gtk_selection_remove_all;
	GType		function()
			gtk_separator_get_type;
	GType		function()
			gtk_separator_menu_item_get_type;
	GtkWidget*		function()
			gtk_separator_menu_item_new;
	GType		function()
			gtk_size_group_get_type;
	GtkSizeGroup*		function(GtkSizeGroupMode  mode)
			gtk_size_group_new;
	void		function(GtkSizeGroup *size_group, GtkSizeGroupMode mode)
			gtk_size_group_set_mode;
	GtkSizeGroupMode		function(GtkSizeGroup *size_group)
			gtk_size_group_get_mode;
	void		function(GtkSizeGroup *size_group, GtkWidget *widget)
			gtk_size_group_add_widget;
	void		function(GtkSizeGroup *size_group, GtkWidget *widget)
			gtk_size_group_remove_widget;
	GType		function()
			gtk_socket_get_type;
	GtkWidget*		function()
			gtk_socket_new;
	void		function(GtkSocket * socket_, GdkNativeWindow wid)
			gtk_socket_steal;
	void		function(GtkSocket * socket_, GdkNativeWindow window_id)
			gtk_socket_add_id;
	GdkNativeWindow		function(GtkSocket * socket_)
			gtk_socket_get_id;
	GType		function()
			gtk_spin_button_get_type;
	void		function(GtkSpinButton * spin_button, GtkAdjustment * adjustment, gdouble climb_rate, guint digits)
			gtk_spin_button_configure;
	GtkWidget*		function(GtkAdjustment * adjustment, gdouble climb_rate, guint digits)
			gtk_spin_button_new;
	GtkWidget*		function(gdouble min, gdouble max, gdouble step)
			gtk_spin_button_new_with_range;
	void		function(GtkSpinButton * spin_button, GtkAdjustment * adjustment)
			gtk_spin_button_set_adjustment;
	GtkAdjustment*		function(GtkSpinButton * spin_button)
			gtk_spin_button_get_adjustment;
	void		function(GtkSpinButton * spin_button, guint digits)
			gtk_spin_button_set_digits;
	guint		function(GtkSpinButton * spin_button)
			gtk_spin_button_get_digits;
	void		function(GtkSpinButton * spin_button, gdouble step, gdouble page)
			gtk_spin_button_set_increments;
	void		function(GtkSpinButton * spin_button, gdouble * step, gdouble * page)
			gtk_spin_button_get_increments;
	void		function(GtkSpinButton * spin_button, gdouble min, gdouble max)
			gtk_spin_button_set_range;
	void		function(GtkSpinButton * spin_button, gdouble * min, gdouble * max)
			gtk_spin_button_get_range;
	gdouble		function(GtkSpinButton * spin_button)
			gtk_spin_button_get_value;
	gint		function(GtkSpinButton * spin_button)
			gtk_spin_button_get_value_as_int;
	void		function(GtkSpinButton * spin_button, gdouble value)
			gtk_spin_button_set_value;
	void		function(GtkSpinButton * spin_button, GtkSpinButtonUpdatePolicy policy)
			gtk_spin_button_set_update_policy;
	GtkSpinButtonUpdatePolicy		function(GtkSpinButton * spin_button)
			gtk_spin_button_get_update_policy;
	void		function(GtkSpinButton * spin_button, gboolean numeric)
			gtk_spin_button_set_numeric;
	gboolean		function(GtkSpinButton * spin_button)
			gtk_spin_button_get_numeric;
	void		function(GtkSpinButton * spin_button, GtkSpinType direction, gdouble increment)
			gtk_spin_button_spin;
	void		function(GtkSpinButton * spin_button, gboolean wrap)
			gtk_spin_button_set_wrap;
	gboolean		function(GtkSpinButton * spin_button)
			gtk_spin_button_get_wrap;
	void		function(GtkSpinButton * spin_button, gboolean snap_to_ticks)
			gtk_spin_button_set_snap_to_ticks;
	gboolean		function(GtkSpinButton * spin_button)
			gtk_spin_button_get_snap_to_ticks;
	void		function(GtkSpinButton * spin_button)
			gtk_spin_button_update;
	GType		function()
			gtk_statusbar_get_type;
	GtkWidget*		function()
			gtk_statusbar_new;
	guint		function(GtkStatusbar * statusbar, gchar * context_description)
			gtk_statusbar_get_context_id;
	guint		function(GtkStatusbar * statusbar, guint context_id, gchar * text)
			gtk_statusbar_push;
	void		function(GtkStatusbar * statusbar, guint context_id)
			gtk_statusbar_pop;
	void		function(GtkStatusbar * statusbar, guint context_id, guint message_id)
			gtk_statusbar_remove;
	void		function(GtkStatusbar * statusbar, gboolean setting)
			gtk_statusbar_set_has_resize_grip;
	gboolean		function(GtkStatusbar * statusbar)
			gtk_statusbar_get_has_resize_grip;
	GType		function()
			gtk_table_get_type;
	GtkWidget*		function(int, int, int)
			gtk_table_new;
	void		function(void *, void *, int, int, int, int)
			gtk_table_attach_defaults;
	GType		function()
			gtk_tearoff_menu_item_get_type;
	GtkWidget*		function()
			gtk_tearoff_menu_item_new;
	GType		function()
			gtk_text_buffer_get_type;
	GtkTextBuffer*		function(GtkTextTagTable * table)
			gtk_text_buffer_new;
	gint		function(GtkTextBuffer * buffer)
			gtk_text_buffer_get_line_count;
	gint		function(GtkTextBuffer * buffer)
			gtk_text_buffer_get_char_count;
	GtkTextTagTable*		function(GtkTextBuffer * buffer)
			gtk_text_buffer_get_tag_table;
	void		function(GtkTextBuffer * buffer, gchar * text, gint len)
			gtk_text_buffer_set_text;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, gchar * text, gint len)
			gtk_text_buffer_insert;
	void		function(GtkTextBuffer * buffer, gchar * text, gint len)
			gtk_text_buffer_insert_at_cursor;
	gboolean		function(GtkTextBuffer * buffer, GtkTextIter * iter, gchar * text, gint len, gboolean default_editable)
			gtk_text_buffer_insert_interactive;
	gboolean		function(GtkTextBuffer * buffer, gchar * text, gint len, gboolean default_editable)
			gtk_text_buffer_insert_interactive_at_cursor;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, GtkTextIter * start, GtkTextIter * end)
			gtk_text_buffer_insert_range;
	gboolean		function(GtkTextBuffer * buffer, GtkTextIter * iter, GtkTextIter * start, GtkTextIter * end, gboolean default_editable)
			gtk_text_buffer_insert_range_interactive;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, gchar * text, gint len, GtkTextTag * first_tag,...)
			gtk_text_buffer_insert_with_tags;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, gchar * text, gint len, gchar * first_tag_name,...)
			gtk_text_buffer_insert_with_tags_by_name;
	void		function(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end)
			gtk_text_buffer_delete;
	gboolean		function(GtkTextBuffer * buffer, GtkTextIter * start_iter, GtkTextIter * end_iter, gboolean default_editable)
			gtk_text_buffer_delete_interactive;
	gchar*		function(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end, gboolean include_hidden_chars)
			gtk_text_buffer_get_text;
	gchar*		function(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end, gboolean include_hidden_chars)
			gtk_text_buffer_get_slice;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, GdkPixbuf * pixbuf)
			gtk_text_buffer_insert_pixbuf;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, GtkTextChildAnchor * anchor)
			gtk_text_buffer_insert_child_anchor;
	GtkTextChildAnchor*		function(GtkTextBuffer * buffer, GtkTextIter * iter)
			gtk_text_buffer_create_child_anchor;
	GtkTextMark*		function(GtkTextBuffer * buffer, gchar * mark_name, GtkTextIter * where, gboolean left_gravity)
			gtk_text_buffer_create_mark;
	void		function(GtkTextBuffer * buffer, GtkTextMark * mark, GtkTextIter * where)
			gtk_text_buffer_move_mark;
	void		function(GtkTextBuffer * buffer, GtkTextMark * mark)
			gtk_text_buffer_delete_mark;
	GtkTextMark*		function(GtkTextBuffer * buffer, gchar * name)
			gtk_text_buffer_get_mark;
	void		function(GtkTextBuffer * buffer, gchar * name, GtkTextIter * where)
			gtk_text_buffer_move_mark_by_name;
	void		function(GtkTextBuffer * buffer, gchar * name)
			gtk_text_buffer_delete_mark_by_name;
	GtkTextMark*		function(GtkTextBuffer * buffer)
			gtk_text_buffer_get_insert;
	GtkTextMark*		function(GtkTextBuffer * buffer)
			gtk_text_buffer_get_selection_bound;
	void		function(GtkTextBuffer * buffer, GtkTextIter * where)
			gtk_text_buffer_place_cursor;
	void		function(GtkTextBuffer * buffer, GtkTextTag * tag, GtkTextIter * start, GtkTextIter * end)
			gtk_text_buffer_apply_tag;
	void		function(GtkTextBuffer * buffer, GtkTextTag * tag, GtkTextIter * start, GtkTextIter * end)
			gtk_text_buffer_remove_tag;
	void		function(GtkTextBuffer * buffer, gchar * name, GtkTextIter * start, GtkTextIter * end)
			gtk_text_buffer_apply_tag_by_name;
	void		function(GtkTextBuffer * buffer, gchar * name, GtkTextIter * start, GtkTextIter * end)
			gtk_text_buffer_remove_tag_by_name;
	void		function(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end)
			gtk_text_buffer_remove_all_tags;
	GtkTextTag*		function(GtkTextBuffer * buffer, gchar * tag_name, gchar * first_property_name,...)
			gtk_text_buffer_create_tag;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, gint line_number, gint char_offset)
			gtk_text_buffer_get_iter_at_line_offset;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, gint line_number, gint byte_index)
			gtk_text_buffer_get_iter_at_line_index;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, gint char_offset)
			gtk_text_buffer_get_iter_at_offset;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, gint line_number)
			gtk_text_buffer_get_iter_at_line;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter)
			gtk_text_buffer_get_start_iter;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter)
			gtk_text_buffer_get_end_iter;
	void		function(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end)
			gtk_text_buffer_get_bounds;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, GtkTextMark * mark)
			gtk_text_buffer_get_iter_at_mark;
	void		function(GtkTextBuffer * buffer, GtkTextIter * iter, GtkTextChildAnchor * anchor)
			gtk_text_buffer_get_iter_at_child_anchor;
	gboolean		function(GtkTextBuffer * buffer)
			gtk_text_buffer_get_modified;
	void		function(GtkTextBuffer * buffer, gboolean setting)
			gtk_text_buffer_set_modified;
	void		function(GtkTextBuffer * buffer, GtkClipboard * clipboard)
			gtk_text_buffer_add_selection_clipboard;
	void		function(GtkTextBuffer * buffer, GtkClipboard * clipboard)
			gtk_text_buffer_remove_selection_clipboard;
	void		function(GtkTextBuffer * buffer, GtkClipboard * clipboard, gboolean default_editable)
			gtk_text_buffer_cut_clipboard;
	void		function(GtkTextBuffer * buffer, GtkClipboard * clipboard)
			gtk_text_buffer_copy_clipboard;
	void		function(GtkTextBuffer * buffer, GtkClipboard * clipboard, GtkTextIter * override_location, gboolean default_editable)
			gtk_text_buffer_paste_clipboard;
	gboolean		function(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end)
			gtk_text_buffer_get_selection_bounds;
	gboolean		function(GtkTextBuffer * buffer, gboolean interactive, gboolean default_editable)
			gtk_text_buffer_delete_selection;
	void		function(GtkTextBuffer * buffer)
			gtk_text_buffer_begin_user_action;
	void		function(GtkTextBuffer * buffer)
			gtk_text_buffer_end_user_action;
	GType		function()
			gtk_text_child_anchor_get_type;
	GtkTextChildAnchor*		function()
			gtk_text_child_anchor_new;
	GList*		function(GtkTextChildAnchor * anchor)
			gtk_text_child_anchor_get_widgets;
	gboolean		function(GtkTextChildAnchor * anchor)
			gtk_text_child_anchor_get_deleted;
	GtkTextBuffer*		function(GtkTextIter * iter)
			gtk_text_iter_get_buffer;
	GtkTextIter*		function(GtkTextIter * iter)
			gtk_text_iter_copy;
	void		function(GtkTextIter * iter)
			gtk_text_iter_free;
	GType		function()
			gtk_text_iter_get_type;
	gint		function(GtkTextIter * iter)
			gtk_text_iter_get_offset;
	gint		function(GtkTextIter * iter)
			gtk_text_iter_get_line;
	gint		function(GtkTextIter * iter)
			gtk_text_iter_get_line_offset;
	gint		function(GtkTextIter * iter)
			gtk_text_iter_get_line_index;
	gint		function(GtkTextIter * iter)
			gtk_text_iter_get_visible_line_offset;
	gint		function(GtkTextIter * iter)
			gtk_text_iter_get_visible_line_index;
	gunichar		function(GtkTextIter * iter)
			gtk_text_iter_get_char;
	gchar*		function(GtkTextIter * start, GtkTextIter * end)
			gtk_text_iter_get_slice;
	gchar*		function(GtkTextIter * start, GtkTextIter * end)
			gtk_text_iter_get_text;
	gchar*		function(GtkTextIter * start, GtkTextIter * end)
			gtk_text_iter_get_visible_slice;
	gchar*		function(GtkTextIter * start, GtkTextIter * end)
			gtk_text_iter_get_visible_text;
	GdkPixbuf*		function(GtkTextIter * iter)
			gtk_text_iter_get_pixbuf;
	GSList*		function(GtkTextIter * iter)
			gtk_text_iter_get_marks;
	GtkTextChildAnchor*		function(GtkTextIter * iter)
			gtk_text_iter_get_child_anchor;
	GSList*		function(GtkTextIter * iter, gboolean toggled_on)
			gtk_text_iter_get_toggled_tags;
	gboolean		function(GtkTextIter * iter, GtkTextTag * tag)
			gtk_text_iter_begins_tag;
	gboolean		function(GtkTextIter * iter, GtkTextTag * tag)
			gtk_text_iter_ends_tag;
	gboolean		function(GtkTextIter * iter, GtkTextTag * tag)
			gtk_text_iter_toggles_tag;
	gboolean		function(GtkTextIter * iter, GtkTextTag * tag)
			gtk_text_iter_has_tag;
	GSList*		function(GtkTextIter * iter)
			gtk_text_iter_get_tags;
	gboolean		function(GtkTextIter * iter, gboolean default_setting)
			gtk_text_iter_editable;
	gboolean		function(GtkTextIter * iter, gboolean default_editability)
			gtk_text_iter_can_insert;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_starts_word;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_ends_word;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_inside_word;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_starts_sentence;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_ends_sentence;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_inside_sentence;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_starts_line;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_ends_line;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_is_cursor_position;
	gint		function(GtkTextIter * iter)
			gtk_text_iter_get_chars_in_line;
	gint		function(GtkTextIter * iter)
			gtk_text_iter_get_bytes_in_line;
	gboolean		function(GtkTextIter * iter, GtkTextAttributes * values)
			gtk_text_iter_get_attributes;
	PangoLanguage*		function(GtkTextIter * iter)
			gtk_text_iter_get_language;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_is_end;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_is_start;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_forward_char;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_backward_char;
	gboolean		function(GtkTextIter * iter, gint count)
			gtk_text_iter_forward_chars;
	gboolean		function(GtkTextIter * iter, gint count)
			gtk_text_iter_backward_chars;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_forward_line;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_backward_line;
	gboolean		function(GtkTextIter * iter, gint count)
			gtk_text_iter_forward_lines;
	gboolean		function(GtkTextIter * iter, gint count)
			gtk_text_iter_backward_lines;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_forward_word_end;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_backward_word_start;
	gboolean		function(GtkTextIter * iter, gint count)
			gtk_text_iter_forward_word_ends;
	gboolean		function(GtkTextIter * iter, gint count)
			gtk_text_iter_backward_word_starts;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_forward_sentence_end;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_backward_sentence_start;
	gboolean		function(GtkTextIter * iter, gint count)
			gtk_text_iter_forward_sentence_ends;
	gboolean		function(GtkTextIter * iter, gint count)
			gtk_text_iter_backward_sentence_starts;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_forward_cursor_position;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_backward_cursor_position;
	gboolean		function(GtkTextIter * iter, gint count)
			gtk_text_iter_forward_cursor_positions;
	gboolean		function(GtkTextIter * iter, gint count)
			gtk_text_iter_backward_cursor_positions;
	void		function(GtkTextIter * iter, gint char_offset)
			gtk_text_iter_set_offset;
	void		function(GtkTextIter * iter, gint line_number)
			gtk_text_iter_set_line;
	void		function(GtkTextIter * iter, gint char_on_line)
			gtk_text_iter_set_line_offset;
	void		function(GtkTextIter * iter, gint byte_on_line)
			gtk_text_iter_set_line_index;
	void		function(GtkTextIter * iter)
			gtk_text_iter_forward_to_end;
	gboolean		function(GtkTextIter * iter)
			gtk_text_iter_forward_to_line_end;
	void		function(GtkTextIter * iter, gint char_on_line)
			gtk_text_iter_set_visible_line_offset;
	void		function(GtkTextIter * iter, gint byte_on_line)
			gtk_text_iter_set_visible_line_index;
	gboolean		function(GtkTextIter * iter, GtkTextTag * tag)
			gtk_text_iter_forward_to_tag_toggle;
	gboolean		function(GtkTextIter * iter, GtkTextTag * tag)
			gtk_text_iter_backward_to_tag_toggle;
	gboolean		function(GtkTextIter * iter, gchar * str, GtkTextSearchFlags flags, GtkTextIter * match_start, GtkTextIter * match_end, GtkTextIter * limit)
			gtk_text_iter_forward_search;
	gboolean		function(GtkTextIter * iter, gchar * str, GtkTextSearchFlags flags, GtkTextIter * match_start, GtkTextIter * match_end, GtkTextIter * limit)
			gtk_text_iter_backward_search;
	gboolean		function(GtkTextIter * lhs, GtkTextIter * rhs)
			gtk_text_iter_equal;
	gint		function(GtkTextIter * lhs, GtkTextIter * rhs)
			gtk_text_iter_compare;
	gboolean		function(GtkTextIter * iter, GtkTextIter * start, GtkTextIter * end)
			gtk_text_iter_in_range;
	void		function(GtkTextIter * first, GtkTextIter * second)
			gtk_text_iter_order;
	GType		function()
			gtk_text_mark_get_type;
	void		function(GtkTextMark * mark, gboolean setting)
			gtk_text_mark_set_visible;
	gboolean		function(GtkTextMark * mark)
			gtk_text_mark_get_visible;
	gchar*		function(GtkTextMark * mark)
			gtk_text_mark_get_name;
	gboolean		function(GtkTextMark * mark)
			gtk_text_mark_get_deleted;
	GtkTextBuffer*		function(GtkTextMark * mark)
			gtk_text_mark_get_buffer;
	gboolean		function(GtkTextMark * mark)
			gtk_text_mark_get_left_gravity;
	GType		function()
			gtk_text_tag_get_type;
	GtkTextTag*		function(gchar * name)
			gtk_text_tag_new;
	gint		function(GtkTextTag * tag)
			gtk_text_tag_get_priority;
	void		function(GtkTextTag * tag, gint priority)
			gtk_text_tag_set_priority;
	GType		function()
			gtk_text_attributes_get_type;
	GtkTextAttributes*		function()
			gtk_text_attributes_new;
	GtkTextAttributes*		function(GtkTextAttributes * src)
			gtk_text_attributes_copy;
	void		function(GtkTextAttributes * src, GtkTextAttributes * dest)
			gtk_text_attributes_copy_values;
	void		function(GtkTextAttributes * values)
			gtk_text_attributes_unref;
	void		function(GtkTextAttributes * values)
			gtk_text_attributes_ref;
	GType		function()
			gtk_text_tag_table_get_type;
	GtkTextTagTable*		function()
			gtk_text_tag_table_new;
	void		function(GtkTextTagTable * table, GtkTextTag * tag)
			gtk_text_tag_table_add;
	void		function(GtkTextTagTable * table, GtkTextTag * tag)
			gtk_text_tag_table_remove;
	GtkTextTag*		function(GtkTextTagTable * table, gchar * name)
			gtk_text_tag_table_lookup;
	gint		function(GtkTextTagTable * table)
			gtk_text_tag_table_get_size;
	GType		function()
			gtk_text_view_get_type;
	GtkWidget*		function()
			gtk_text_view_new;
	GtkWidget*		function(GtkTextBuffer * buffer)
			gtk_text_view_new_with_buffer;
	void		function(GtkTextView * text_view, GtkTextBuffer * buffer)
			gtk_text_view_set_buffer;
	GtkTextBuffer*		function(GtkTextView * text_view)
			gtk_text_view_get_buffer;
	gboolean		function(GtkTextView * text_view, GtkTextIter * iter, gdouble within_margin, gboolean use_align, gdouble xalign, gdouble yalign)
			gtk_text_view_scroll_to_iter;
	void		function(GtkTextView * text_view, GtkTextMark * mark, gdouble within_margin, gboolean use_align, gdouble xalign, gdouble yalign)
			gtk_text_view_scroll_to_mark;
	void		function(GtkTextView * text_view, GtkTextMark * mark)
			gtk_text_view_scroll_mark_onscreen;
	gboolean		function(GtkTextView * text_view, GtkTextMark * mark)
			gtk_text_view_move_mark_onscreen;
	gboolean		function(GtkTextView * text_view)
			gtk_text_view_place_cursor_onscreen;
	void		function(GtkTextView * text_view, GdkRectangle * visible_rect)
			gtk_text_view_get_visible_rect;
	void		function(GtkTextView * text_view, gboolean setting)
			gtk_text_view_set_cursor_visible;
	gboolean		function(GtkTextView * text_view)
			gtk_text_view_get_cursor_visible;
	void		function(GtkTextView * text_view, GtkTextIter * iter, GdkRectangle * location)
			gtk_text_view_get_iter_location;
	void		function(GtkTextView * text_view, GtkTextIter * iter, gint x, gint y)
			gtk_text_view_get_iter_at_location;
	void		function(GtkTextView * text_view, GtkTextIter * iter, gint * y, gint * height)
			gtk_text_view_get_line_yrange;
	void		function(GtkTextView * text_view, GtkTextIter * target_iter, gint y, gint * line_top)
			gtk_text_view_get_line_at_y;
	void		function(GtkTextView * text_view, GtkTextWindowType win, gint buffer_x, gint buffer_y, gint * window_x, gint * window_y)
			gtk_text_view_buffer_to_window_coords;
	void		function(GtkTextView * text_view, GtkTextWindowType win, gint window_x, gint window_y, gint * buffer_x, gint * buffer_y)
			gtk_text_view_window_to_buffer_coords;
	GdkWindow*		function(GtkTextView * text_view, GtkTextWindowType win)
			gtk_text_view_get_window;
	GtkTextWindowType		function(GtkTextView * text_view, GdkWindow * window)
			gtk_text_view_get_window_type;
	void		function(GtkTextView * text_view, GtkTextWindowType type, gint size)
			gtk_text_view_set_border_window_size;
	gint		function(GtkTextView * text_view, GtkTextWindowType type)
			gtk_text_view_get_border_window_size;
	gboolean		function(GtkTextView * text_view, GtkTextIter * iter)
			gtk_text_view_forward_display_line;
	gboolean		function(GtkTextView * text_view, GtkTextIter * iter)
			gtk_text_view_backward_display_line;
	gboolean		function(GtkTextView * text_view, GtkTextIter * iter)
			gtk_text_view_forward_display_line_end;
	gboolean		function(GtkTextView * text_view, GtkTextIter * iter)
			gtk_text_view_backward_display_line_start;
	gboolean		function(GtkTextView * text_view, GtkTextIter * iter)
			gtk_text_view_starts_display_line;
	gboolean		function(GtkTextView * text_view, GtkTextIter * iter, gint count)
			gtk_text_view_move_visually;
	void		function(GtkTextView * text_view, GtkWidget * child, GtkTextChildAnchor * anchor)
			gtk_text_view_add_child_at_anchor;
	void		function(GtkTextView * text_view, GtkWidget * child, GtkTextWindowType which_window, gint xpos, gint ypos)
			gtk_text_view_add_child_in_window;
	void		function(GtkTextView * text_view, GtkWidget * child, gint xpos, gint ypos)
			gtk_text_view_move_child;
	void		function(GtkTextView * text_view, GtkWrapMode wrap_mode)
			gtk_text_view_set_wrap_mode;
	GtkWrapMode		function(GtkTextView * text_view)
			gtk_text_view_get_wrap_mode;
	void		function(GtkTextView * text_view, gboolean setting)
			gtk_text_view_set_editable;
	gboolean		function(GtkTextView * text_view)
			gtk_text_view_get_editable;
	void		function(GtkTextView * text_view, gint pixels_above_lines)
			gtk_text_view_set_pixels_above_lines;
	gint		function(GtkTextView * text_view)
			gtk_text_view_get_pixels_above_lines;
	void		function(GtkTextView * text_view, gint pixels_below_lines)
			gtk_text_view_set_pixels_below_lines;
	gint		function(GtkTextView * text_view)
			gtk_text_view_get_pixels_below_lines;
	void		function(GtkTextView * text_view, gint pixels_inside_wrap)
			gtk_text_view_set_pixels_inside_wrap;
	gint		function(GtkTextView * text_view)
			gtk_text_view_get_pixels_inside_wrap;
	void		function(GtkTextView * text_view, GtkJustification justification)
			gtk_text_view_set_justification;
	GtkJustification		function(GtkTextView * text_view)
			gtk_text_view_get_justification;
	void		function(GtkTextView * text_view, gint left_margin)
			gtk_text_view_set_left_margin;
	gint		function(GtkTextView * text_view)
			gtk_text_view_get_left_margin;
	void		function(GtkTextView * text_view, gint right_margin)
			gtk_text_view_set_right_margin;
	gint		function(GtkTextView * text_view)
			gtk_text_view_get_right_margin;
	void		function(GtkTextView * text_view, gint indent)
			gtk_text_view_set_indent;
	gint		function(GtkTextView * text_view)
			gtk_text_view_get_indent;
	void		function(GtkTextView * text_view, PangoTabArray * tabs)
			gtk_text_view_set_tabs;
	PangoTabArray*		function(GtkTextView * text_view)
			gtk_text_view_get_tabs;
	GType		function()
			gtk_toggle_button_get_type;
	GtkWidget*		function(char *)
			gtk_toggle_button_new_with_label;
	GtkWidget*		function()
			gtk_toggle_button_new;
	GtkWidget*		function(gchar * label)
			gtk_toggle_button_new_with_mnemonic;
	void		function(GtkToggleButton * toggle_button, gboolean draw_indicator)
			gtk_toggle_button_set_mode;
	gboolean		function(GtkToggleButton * toggle_button)
			gtk_toggle_button_get_mode;
	void		function(GtkToggleButton * toggle_button, gboolean is_active)
			gtk_toggle_button_set_active;
	gboolean		function(GtkToggleButton * toggle_button)
			gtk_toggle_button_get_active;
	void		function(GtkToggleButton * toggle_button)
			gtk_toggle_button_toggled;
	void		function(GtkToggleButton * toggle_button, gboolean setting)
			gtk_toggle_button_set_inconsistent;
	gboolean		function(GtkToggleButton * toggle_button)
			gtk_toggle_button_get_inconsistent;
	GType		function()
			gtk_toolbar_get_type;
	GtkWidget*		function()
			gtk_toolbar_new;
	GType		function()
			gtk_tooltips_get_type;
	GtkTooltips*		function()
			gtk_tooltips_new;
	void		function(GtkTooltips * tooltips)
			gtk_tooltips_enable;
	void		function(GtkTooltips * tooltips)
			gtk_tooltips_disable;
	void		function(GtkTooltips * tooltips, GtkWidget * widget, gchar * tip_text, gchar * tip_private)
			gtk_tooltips_set_tip;
	void		function(GtkTooltips * tooltips)
			gtk_tooltips_force_window;
	GType		function()
			gtk_tree_get_type;
	GtkWidget*		function()
			gtk_tree_new;
	void		function(GtkTree * tree, GtkWidget * tree_item)
			gtk_tree_append;
	void		function(GtkTree * tree, GtkWidget * tree_item)
			gtk_tree_prepend;
	void		function(GtkTree * tree, GtkWidget * tree_item, gint position)
			gtk_tree_insert;
	void		function(GtkTree * tree, GList * items)
			gtk_tree_remove_items;
	void		function(GtkTree * tree, gint start, gint end)
			gtk_tree_clear_items;
	void		function(GtkTree * tree, gint item)
			gtk_tree_select_item;
	void		function(GtkTree * tree, gint item)
			gtk_tree_unselect_item;
	void		function(GtkTree * tree, GtkWidget * tree_item)
			gtk_tree_select_child;
	void		function(GtkTree * tree, GtkWidget * tree_item)
			gtk_tree_unselect_child;
	gint		function(GtkTree * tree, GtkWidget * child)
			gtk_tree_child_position;
	void		function(GtkTree * tree, GtkSelectionMode mode)
			gtk_tree_set_selection_mode;
	void		function(GtkTree * tree, GtkTreeViewMode mode)
			gtk_tree_set_view_mode;
	void		function(GtkTree * tree, gboolean flag)
			gtk_tree_set_view_lines;
	GType		function()
			gtk_tree_item_get_type;
	GtkWidget*		function()
			gtk_tree_item_new;
	GtkWidget*		function(gchar * label)
			gtk_tree_item_new_with_label;
	void		function(GtkTreeItem * tree_item, GtkWidget * subtree)
			gtk_tree_item_set_subtree;
	void		function(GtkTreeItem * tree_item)
			gtk_tree_item_remove_subtree;
	void		function(GtkTreeItem * tree_item)
			gtk_tree_item_select;
	void		function(GtkTreeItem * tree_item)
			gtk_tree_item_deselect;
	void		function(GtkTreeItem * tree_item)
			gtk_tree_item_expand;
	void		function(GtkTreeItem * tree_item)
			gtk_tree_item_collapse;
	void		function(GtkTreeModel * tree_model, GtkTreeIter * iter, gint column, GValue * value)
			gtk_tree_model_get_value;
	GtkTreePath*		function(GtkTreeModel * tree_model, GtkTreeIter * iter)
			gtk_tree_model_get_path;
	gboolean		function(GtkTreeModel * tree_model, GtkTreeIter * iter, GtkTreeIter * child)
			gtk_tree_model_iter_parent;
	gboolean		function(GtkTreeModel *tree_model, GtkTreeIter *iter, gchar *path_string)
			gtk_tree_model_get_iter_from_string;
	GtkTreeModelFlags		function(GtkTreeModel * tree_model)
			gtk_tree_model_get_flags;
	gint		function(GtkTreeModel * tree_model)
			gtk_tree_model_get_n_columns;
	GType		function(GtkTreeModel * tree_model, gint index_)
			gtk_tree_model_get_column_type;
	gboolean		function(GtkTreeModel * tree_model, GtkTreeIter * iter, GtkTreePath * path)
			gtk_tree_model_get_iter;
	gchar*		function(GtkTreeModel * tree_model, GtkTreeIter * iter)
			gtk_tree_model_get_string_from_iter;
	gboolean		function(GtkTreeModel * tree_model, GtkTreeIter * iter)
			gtk_tree_model_get_iter_first;
	gboolean		function(GtkTreeModel * tree_model, GtkTreeIter * iter)
			gtk_tree_model_iter_next;
	gboolean		function(GtkTreeModel * tree_model, GtkTreeIter * iter, GtkTreeIter * parent)
			gtk_tree_model_iter_children;
	gboolean		function(GtkTreeModel * tree_model, GtkTreeIter * iter)
			gtk_tree_model_iter_has_child;
	gint		function(GtkTreeModel * tree_model, GtkTreeIter * iter)
			gtk_tree_model_iter_n_children;
	gboolean		function(GtkTreeModel * tree_model, GtkTreeIter * iter, GtkTreeIter * parent, gint n)
			gtk_tree_model_iter_nth_child;
	void		function(GtkTreeModel * tree_model, GtkTreeIter * iter)
			gtk_tree_model_ref_node;
	void		function(GtkTreeModel * tree_model, GtkTreeIter * iter)
			gtk_tree_model_unref_node;
	void		function(GtkTreeModel * tree_model, GtkTreeIter * iter, ...)
			gtk_tree_model_get;
	void		function(GtkTreeModel * tree_model, GtkTreeIter * iter, vaList var_args)
			gtk_tree_model_get_valist;
	GType		function()
			gtk_tree_path_get_type;
	GtkTreePath*		function()
			gtk_tree_path_new;
	GtkTreePath*		function(gchar * path)
			gtk_tree_path_new_from_string;
	GtkTreePath*		function(gint first_index, ...)
			gtk_tree_path_new_from_indices;
	gchar*		function(GtkTreePath * path)
			gtk_tree_path_to_string;
	GtkTreePath*		function()
			gtk_tree_path_new_first;
	void		function(GtkTreePath * path, gint index_)
			gtk_tree_path_append_index;
	void		function(GtkTreePath * path, gint index_)
			gtk_tree_path_prepend_index;
	gint		function(GtkTreePath * path)
			gtk_tree_path_get_depth;
	gint*		function(GtkTreePath * path)
			gtk_tree_path_get_indices;
	void		function(GtkTreePath * path)
			gtk_tree_path_free;
	GtkTreePath*		function(GtkTreePath * path)
			gtk_tree_path_copy;
	gint		function(GtkTreePath * a, GtkTreePath * b)
			gtk_tree_path_compare;
	void		function(GtkTreePath * path)
			gtk_tree_path_next;
	gboolean		function(GtkTreePath * path)
			gtk_tree_path_prev;
	gboolean		function(GtkTreePath * path)
			gtk_tree_path_up;
	void		function(GtkTreePath * path)
			gtk_tree_path_down;
	gboolean		function(GtkTreePath * path, GtkTreePath * descendant)
			gtk_tree_path_is_ancestor;
	gboolean		function(GtkTreePath * path, GtkTreePath * ancestor)
			gtk_tree_path_is_descendant;
	GType		function()
			gtk_tree_row_reference_get_type;
	GtkTreeRowReference*		function(GtkTreeModel * model, GtkTreePath * path)
			gtk_tree_row_reference_new;
	GtkTreeRowReference*		function(GObject * proxy, GtkTreeModel * model, GtkTreePath * path)
			gtk_tree_row_reference_new_proxy;
	GtkTreePath*		function(GtkTreeRowReference * reference)
			gtk_tree_row_reference_get_path;
	gboolean		function(GtkTreeRowReference * reference)
			gtk_tree_row_reference_valid;
	GtkTreeRowReference*		function(GtkTreeRowReference * reference)
			gtk_tree_row_reference_copy;
	void		function(GtkTreeRowReference * reference)
			gtk_tree_row_reference_free;
	void		function(GObject * proxy, GtkTreePath * path)
			gtk_tree_row_reference_inserted;
	void		function(GObject * proxy, GtkTreePath * path)
			gtk_tree_row_reference_deleted;
	void		function(GObject * proxy, GtkTreePath * path, GtkTreeIter * iter, gint * new_order)
			gtk_tree_row_reference_reordered;
	GType		function()
			gtk_tree_selection_get_type;
	void		function(GtkTreeSelection * selection, GtkSelectionMode type)
			gtk_tree_selection_set_mode;
	GtkSelectionMode		function(GtkTreeSelection * selection)
			gtk_tree_selection_get_mode;
	gpointer		function(GtkTreeSelection * selection)
			gtk_tree_selection_get_user_data;
	GtkTreeView*		function(GtkTreeSelection * selection)
			gtk_tree_selection_get_tree_view;
	gboolean		function(GtkTreeSelection * selection, GtkTreeModel * *model, GtkTreeIter * iter)
			gtk_tree_selection_get_selected;
	GList*		function(GtkTreeSelection * selection, GtkTreeModel * *model)
			gtk_tree_selection_get_selected_rows;
	gint		function(GtkTreeSelection * selection)
			gtk_tree_selection_count_selected_rows;
	void		function(GtkTreeSelection * selection, GtkTreePath * path)
			gtk_tree_selection_select_path;
	void		function(GtkTreeSelection * selection, GtkTreePath * path)
			gtk_tree_selection_unselect_path;
	void		function(GtkTreeSelection * selection, GtkTreeIter * iter)
			gtk_tree_selection_select_iter;
	void		function(GtkTreeSelection * selection, GtkTreeIter * iter)
			gtk_tree_selection_unselect_iter;
	gboolean		function(GtkTreeSelection * selection, GtkTreePath * path)
			gtk_tree_selection_path_is_selected;
	gboolean		function(GtkTreeSelection * selection, GtkTreeIter * iter)
			gtk_tree_selection_iter_is_selected;
	void		function(GtkTreeSelection * selection)
			gtk_tree_selection_select_all;
	void		function(GtkTreeSelection * selection)
			gtk_tree_selection_unselect_all;
	void		function(GtkTreeSelection * selection, GtkTreePath * start_path, GtkTreePath * end_path)
			gtk_tree_selection_select_range;
	void		function(GtkTreeSelection * selection, GtkTreePath * start_path, GtkTreePath * end_path)
			gtk_tree_selection_unselect_range;
	GType		function()
			gtk_tree_store_get_type;
	GtkTreeStore*		function(gint n_columns,...)
			gtk_tree_store_new;
	GtkTreeStore*		function(gint n_columns, GType * types)
			gtk_tree_store_newv;
	void		function(GtkTreeStore * tree_store, gint n_columns, GType * types)
			gtk_tree_store_set_column_types;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * iter, gint column, GValue * value)
			gtk_tree_store_set_value;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * iter,...)
			gtk_tree_store_set;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * iter, vaList var_args)
			gtk_tree_store_set_valist;
	gboolean		function(GtkTreeStore * tree_store, GtkTreeIter * iter)
			gtk_tree_store_remove;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * iter, GtkTreeIter * parent, gint position)
			gtk_tree_store_insert;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * iter, GtkTreeIter * parent, GtkTreeIter * sibling)
			gtk_tree_store_insert_before;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * iter, GtkTreeIter * parent, GtkTreeIter * sibling)
			gtk_tree_store_insert_after;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * iter, GtkTreeIter * parent)
			gtk_tree_store_prepend;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * iter, GtkTreeIter * parent)
			gtk_tree_store_append;
	gboolean		function(GtkTreeStore * tree_store, GtkTreeIter * iter, GtkTreeIter * descendant)
			gtk_tree_store_is_ancestor;
	gint		function(GtkTreeStore * tree_store, GtkTreeIter * iter)
			gtk_tree_store_iter_depth;
	void		function(GtkTreeStore * tree_store)
			gtk_tree_store_clear;
	gboolean		function(GtkTreeStore * tree_store, GtkTreeIter * iter)
			gtk_tree_store_iter_is_valid;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * parent, gint * new_order)
			gtk_tree_store_reorder;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * a, GtkTreeIter * b)
			gtk_tree_store_swap;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * iter, GtkTreeIter * position)
			gtk_tree_store_move_before;
	void		function(GtkTreeStore * tree_store, GtkTreeIter * iter, GtkTreeIter * position)
			gtk_tree_store_move_after;
	GType		function()
			gtk_tree_view_get_type;
	GtkWidget*		function()
			gtk_tree_view_new;
	GtkWidget*		function(GtkTreeModel * model)
			gtk_tree_view_new_with_model;
	GtkTreeModel*		function(GtkTreeView * tree_view)
			gtk_tree_view_get_model;
	void		function(GtkTreeView * tree_view, GtkTreeModel * model)
			gtk_tree_view_set_model;
	GtkTreeSelection*		function(GtkTreeView * tree_view)
			gtk_tree_view_get_selection;
	GtkAdjustment*		function(GtkTreeView * tree_view)
			gtk_tree_view_get_hadjustment;
	void		function(GtkTreeView * tree_view, GtkAdjustment * adjustment)
			gtk_tree_view_set_hadjustment;
	GtkAdjustment*		function(GtkTreeView * tree_view)
			gtk_tree_view_get_vadjustment;
	void		function(GtkTreeView * tree_view, GtkAdjustment * adjustment)
			gtk_tree_view_set_vadjustment;
	gboolean		function(GtkTreeView * tree_view)
			gtk_tree_view_get_headers_visible;
	void		function(GtkTreeView * tree_view, gboolean headers_visible)
			gtk_tree_view_set_headers_visible;
	void		function(GtkTreeView * tree_view)
			gtk_tree_view_columns_autosize;
	void		function(GtkTreeView * tree_view, gboolean setting)
			gtk_tree_view_set_headers_clickable;
	void		function(GtkTreeView * tree_view, gboolean setting)
			gtk_tree_view_set_rules_hint;
	gboolean		function(GtkTreeView * tree_view)
			gtk_tree_view_get_rules_hint;
	gint		function(GtkTreeView * tree_view, GtkTreeViewColumn * column)
			gtk_tree_view_append_column;
	gint		function(GtkTreeView * tree_view, GtkTreeViewColumn * column)
			gtk_tree_view_remove_column;
	gint		function(GtkTreeView * tree_view, GtkTreeViewColumn * column, gint position)
			gtk_tree_view_insert_column;
	gint		function(GtkTreeView * tree_view, gint position, gchar * title, GtkCellRenderer * cell,...)
			gtk_tree_view_insert_column_with_attributes;
	gint		function(GtkTreeView * tree_view, gint position, gchar * title, GtkCellRenderer * cell, GtkTreeCellDataFunc func, gpointer data, GDestroyNotify dnotify)
			gtk_tree_view_insert_column_with_data_func;
	GtkTreeViewColumn*		function(GtkTreeView * tree_view, gint n)
			gtk_tree_view_get_column;
	GList*		function(GtkTreeView * tree_view)
			gtk_tree_view_get_columns;
	void		function(GtkTreeView * tree_view, GtkTreeViewColumn * column, GtkTreeViewColumn * base_column)
			gtk_tree_view_move_column_after;
	void		function(GtkTreeView * tree_view, GtkTreeViewColumn * column)
			gtk_tree_view_set_expander_column;
	GtkTreeViewColumn*		function(GtkTreeView * tree_view)
			gtk_tree_view_get_expander_column;
	void		function(GtkTreeView * tree_view, GtkTreeViewColumnDropFunc func, gpointer user_data, GtkDestroyNotify destroy)
			gtk_tree_view_set_column_drag_function;
	void		function(GtkTreeView * tree_view, gint tree_x, gint tree_y)
			gtk_tree_view_scroll_to_point;
	void		function(GtkTreeView * tree_view, GtkTreePath * path, GtkTreeViewColumn * column, gboolean use_align, gfloat row_align, gfloat col_align)
			gtk_tree_view_scroll_to_cell;
	void		function(GtkTreeView * tree_view, GtkTreePath * path, GtkTreeViewColumn * column)
			gtk_tree_view_row_activated;
	void		function(GtkTreeView * tree_view)
			gtk_tree_view_expand_all;
	void		function(GtkTreeView * tree_view)
			gtk_tree_view_collapse_all;
	void		function(GtkTreeView * tree_view, GtkTreePath * path)
			gtk_tree_view_expand_to_path;
	gboolean		function(GtkTreeView * tree_view, GtkTreePath * path, gboolean open_all)
			gtk_tree_view_expand_row;
	gboolean		function(GtkTreeView * tree_view, GtkTreePath * path)
			gtk_tree_view_collapse_row;
	void		function(GtkTreeView * tree_view, GtkTreeViewMappingFunc func, gpointer data)
			gtk_tree_view_map_expanded_rows;
	gboolean		function(GtkTreeView * tree_view, GtkTreePath * path)
			gtk_tree_view_row_expanded;
	void		function(GtkTreeView * tree_view, gboolean reorderable)
			gtk_tree_view_set_reorderable;
	gboolean		function(GtkTreeView * tree_view)
			gtk_tree_view_get_reorderable;
	void		function(GtkTreeView * tree_view, GtkTreePath * path, GtkTreeViewColumn * focus_column, gboolean start_editing)
			gtk_tree_view_set_cursor;
	void		function(GtkTreeView * tree_view, GtkTreePath * path, GtkTreeViewColumn * focus_column, GtkCellRenderer * focus_cell, gboolean start_editing)
			gtk_tree_view_set_cursor_on_cell;
	void		function(GtkTreeView * tree_view, GtkTreePath * * path, GtkTreeViewColumn * * focus_column)
			gtk_tree_view_get_cursor;
	GdkWindow*		function(GtkTreeView * tree_view)
			gtk_tree_view_get_bin_window;
	gboolean		function(GtkTreeView * tree_view, gint x, gint y, GtkTreePath * * path, GtkTreeViewColumn * * column, gint * cell_x, gint * cell_y)
			gtk_tree_view_get_path_at_pos;
	void		function(GtkTreeView * tree_view, GtkTreePath * path, GtkTreeViewColumn * column, GdkRectangle * rect)
			gtk_tree_view_get_cell_area;
	void		function(GtkTreeView * tree_view, GtkTreePath * path, GtkTreeViewColumn * column, GdkRectangle * rect)
			gtk_tree_view_get_background_area;
	void		function(GtkTreeView * tree_view, GdkRectangle * visible_rect)
			gtk_tree_view_get_visible_rect;
	void		function(GtkTreeView * tree_view, gint wx, gint wy, gint * tx, gint * ty)
			gtk_tree_view_widget_to_tree_coords;
	void		function(GtkTreeView * tree_view, gint tx, gint ty, gint * wx, gint * wy)
			gtk_tree_view_tree_to_widget_coords;
	void		function(GtkTreeView * tree_view, GdkModifierType start_button_mask, GtkTargetEntry * targets, gint n_targets, GdkDragAction actions)
			gtk_tree_view_enable_model_drag_source;
	void		function(GtkTreeView * tree_view, GtkTargetEntry * targets, gint n_targets, GdkDragAction actions)
			gtk_tree_view_enable_model_drag_dest;
	void		function(GtkTreeView * tree_view)
			gtk_tree_view_unset_rows_drag_source;
	void		function(GtkTreeView * tree_view)
			gtk_tree_view_unset_rows_drag_dest;
	void		function(GtkTreeView * tree_view, GtkTreePath * path, GtkTreeViewDropPosition pos)
			gtk_tree_view_set_drag_dest_row;
	void		function(GtkTreeView * tree_view, GtkTreePath * * path, GtkTreeViewDropPosition * pos)
			gtk_tree_view_get_drag_dest_row;
	gboolean		function(GtkTreeView * tree_view, gint drag_x, gint drag_y, GtkTreePath * * path, GtkTreeViewDropPosition * pos)
			gtk_tree_view_get_dest_row_at_pos;
	GdkPixmap*		function(GtkTreeView * tree_view, GtkTreePath * path)
			gtk_tree_view_create_row_drag_icon;
	void		function(GtkTreeView * tree_view, gboolean enable_search)
			gtk_tree_view_set_enable_search;
	gboolean		function(GtkTreeView * tree_view)
			gtk_tree_view_get_enable_search;
	gint		function(GtkTreeView * tree_view)
			gtk_tree_view_get_search_column;
	void		function(GtkTreeView * tree_view, gint column)
			gtk_tree_view_set_search_column;
	GtkTreeViewSearchEqualFunc		function(GtkTreeView * tree_view)
			gtk_tree_view_get_search_equal_func;
	void		function(GtkTreeView * tree_view, GtkTreeViewSearchEqualFunc search_equal_func, gpointer search_user_data, GtkDestroyNotify search_destroy)
			gtk_tree_view_set_search_equal_func;
	void		function(GtkTreeView * tree_view, GtkTreeDestroyCountFunc func, gpointer data, GtkDestroyNotify destroy)
			gtk_tree_view_set_destroy_count_func;
	GType		function()
			gtk_tree_view_column_get_type;
	GtkTreeViewColumn*		function()
			gtk_tree_view_column_new;
	GtkTreeViewColumn*		function(gchar * title, GtkCellRenderer * cell,...)
			gtk_tree_view_column_new_with_attributes;
	void		function(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell, gboolean expand)
			gtk_tree_view_column_pack_start;
	void		function(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell, gboolean expand)
			gtk_tree_view_column_pack_end;
	void		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_clear;
	GList*		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_cell_renderers;
	void		function(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell_renderer, gchar * attribute, gint column)
			gtk_tree_view_column_add_attribute;
	void		function(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell_renderer,...)
			gtk_tree_view_column_set_attributes;
	void		function(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell_renderer, GtkTreeCellDataFunc func, gpointer func_data, GtkDestroyNotify destroy)
			gtk_tree_view_column_set_cell_data_func;
	void		function(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell_renderer)
			gtk_tree_view_column_clear_attributes;
	void		function(GtkTreeViewColumn * tree_column, gint spacing)
			gtk_tree_view_column_set_spacing;
	gint		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_spacing;
	void		function(GtkTreeViewColumn * tree_column, gboolean visible)
			gtk_tree_view_column_set_visible;
	gboolean		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_visible;
	void		function(GtkTreeViewColumn * tree_column, gboolean resizable)
			gtk_tree_view_column_set_resizable;
	gboolean		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_resizable;
	void		function(GtkTreeViewColumn * tree_column, GtkTreeViewColumnSizing type)
			gtk_tree_view_column_set_sizing;
	GtkTreeViewColumnSizing		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_sizing;
	gint		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_width;
	gint		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_fixed_width;
	void		function(GtkTreeViewColumn * tree_column, gint fixed_width)
			gtk_tree_view_column_set_fixed_width;
	void		function(GtkTreeViewColumn * tree_column, gint min_width)
			gtk_tree_view_column_set_min_width;
	gint		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_min_width;
	void		function(GtkTreeViewColumn * tree_column, gint max_width)
			gtk_tree_view_column_set_max_width;
	gint		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_max_width;
	void		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_clicked;
	void		function(GtkTreeViewColumn * tree_column, gchar * title)
			gtk_tree_view_column_set_title;
	gchar*		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_title;
	void		function(GtkTreeViewColumn * tree_column, gboolean clickable)
			gtk_tree_view_column_set_clickable;
	gboolean		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_clickable;
	void		function(GtkTreeViewColumn * tree_column, GtkWidget * widget)
			gtk_tree_view_column_set_widget;
	GtkWidget*		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_widget;
	void		function(GtkTreeViewColumn * tree_column, gfloat xalign)
			gtk_tree_view_column_set_alignment;
	gfloat		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_alignment;
	void		function(GtkTreeViewColumn * tree_column, gboolean reorderable)
			gtk_tree_view_column_set_reorderable;
	gboolean		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_reorderable;
	void		function(GtkTreeViewColumn * tree_column, gint sort_column_id)
			gtk_tree_view_column_set_sort_column_id;
	gint		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_sort_column_id;
	void		function(GtkTreeViewColumn * tree_column, gboolean setting)
			gtk_tree_view_column_set_sort_indicator;
	gboolean		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_sort_indicator;
	void		function(GtkTreeViewColumn * tree_column, GtkSortType order)
			gtk_tree_view_column_set_sort_order;
	GtkSortType		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_get_sort_order;
	void		function(GtkTreeViewColumn * tree_column, GtkTreeModel * tree_model, GtkTreeIter * iter, gboolean is_expander, gboolean is_expanded)
			gtk_tree_view_column_cell_set_cell_data;
	void		function(GtkTreeViewColumn * tree_column, GdkRectangle * cell_area, gint * x_offset, gint * y_offset, gint * width, gint * height)
			gtk_tree_view_column_cell_get_size;
	gboolean		function(GtkTreeViewColumn * tree_column)
			gtk_tree_view_column_cell_is_visible;
	void		function(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell)
			gtk_tree_view_column_focus_cell;
	gboolean		function(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell_renderer, gint * start_pos, gint * width)
			gtk_tree_view_column_cell_get_position;
	GType		function()
			gtk_vbox_get_type;
	GtkWidget*		function(gboolean homogeneous,  gint spacing)
			gtk_vbox_new;
	GType		function()
			gtk_vbutton_box_get_type;
	GtkWidget*		function()
			gtk_vbutton_box_new;
	GType		function()
			gtk_viewport_get_type;
	GtkWidget*		function(GtkAdjustment * hadjustment, GtkAdjustment * vadjustment)
			gtk_viewport_new;
	GtkAdjustment*		function(GtkViewport * viewport)
			gtk_viewport_get_hadjustment;
	GtkAdjustment*		function(GtkViewport * viewport)
			gtk_viewport_get_vadjustment;
	void		function(GtkViewport * viewport, GtkAdjustment * adjustment)
			gtk_viewport_set_hadjustment;
	void		function(GtkViewport * viewport, GtkAdjustment * adjustment)
			gtk_viewport_set_vadjustment;
	void		function(GtkViewport * viewport, GtkShadowType type)
			gtk_viewport_set_shadow_type;
	GtkShadowType		function(GtkViewport * viewport)
			gtk_viewport_get_shadow_type;
	GType		function()
			gtk_vpaned_get_type;
	GtkWidget*		function()
			gtk_vpaned_new;
	GType		function()
			gtk_vruler_get_type;
	GtkWidget*		function()
			gtk_vruler_new;
	GType		function()
			gtk_vscale_get_type;
	GtkWidget*		function(GtkAdjustment * adjustment)
			gtk_vscale_new;
	GtkWidget*		function(gdouble min, gdouble max, gdouble step)
			gtk_vscale_new_with_range;
	GType		function()
			gtk_vscrollbar_get_type;
	GtkWidget*		function(GtkAdjustment *adjustment)
			gtk_vscrollbar_new;
	GType		function()
			gtk_vseparator_get_type;
	GtkWidget*		function()
			gtk_vseparator_new;
	GType		function()
			gtk_widget_get_type;
	GtkWidget*		function(GType type, char * first_property_name,...)
			gtk_widget_new;
	GtkWidget*		function(GtkWidget * widget)
			gtk_widget_ref;
	void		function(GtkWidget * widget)
			gtk_widget_unref;
	void		function(GtkWidget * widget)
			gtk_widget_destroy;
	void		function(GtkWidget * widget, GtkWidget * * widget_pointer)
			gtk_widget_destroyed;
	void		function(GtkWidget * widget, char * first_property_name,...)
			gtk_widget_set;
	void		function(GtkWidget * widget)
			gtk_widget_unparent;
	void		function(GtkWidget * widget)
			gtk_widget_show;
	void		function(GtkWidget * widget)
			gtk_widget_show_now;
	void		function(GtkWidget * widget)
			gtk_widget_hide;
	void		function(GtkWidget * widget)
			gtk_widget_show_all;
	void		function(GtkWidget * widget)
			gtk_widget_hide_all;
	void		function(GtkWidget * widget)
			gtk_widget_map;
	void		function(GtkWidget * widget)
			gtk_widget_unmap;
	void		function(GtkWidget * widget)
			gtk_widget_realize;
	void		function(GtkWidget * widget)
			gtk_widget_unrealize;
	void		function(GtkWidget * widget)
			gtk_widget_queue_draw;
	void		function(GtkWidget * widget, int x, int y, int width, int height)
			gtk_widget_queue_draw_area;
	void		function(GtkWidget * widget)
			gtk_widget_queue_clear;
	void		function(GtkWidget * widget, int x, int y, int width, int height)
			gtk_widget_queue_clear_area;
	void		function(GtkWidget * widget)
			gtk_widget_queue_resize;
	void		function(GtkWidget * widget, GdkRectangle * area)
			gtk_widget_draw;
	void		function(GtkWidget * widget, GtkRequisition * requisition)
			gtk_widget_size_request;
	void		function(GtkWidget * widget, GtkAllocation * allocation)
			gtk_widget_size_allocate;
	void		function(GtkWidget * widget, GtkRequisition * requisition)
			gtk_widget_get_child_requisition;
	void		function(GtkWidget * widget, char * accel_path, GtkAccelGroup * accel_group)
			gtk_widget_set_accel_path;
	GList*		function(GtkWidget * widget)
			gtk_widget_list_accel_closures;
	gboolean		function(GtkWidget * widget, gboolean group_cycling)
			gtk_widget_mnemonic_activate;
	gboolean		function(GtkWidget * widget)
			gtk_widget_activate;
	gboolean		function(GtkWidget * widget, GtkAdjustment * hadjustment, GtkAdjustment * vadjustment)
			gtk_widget_set_scroll_adjustments;
	void		function(GtkWidget * widget, GtkWidget * new_parent)
			gtk_widget_reparent;
	gboolean		function(GtkWidget * widget, GdkRectangle * area, GdkRectangle * intersection)
			gtk_widget_intersect;
	GdkRegion*		function(GtkWidget * widget, GdkRegion * region)
			gtk_widget_region_intersect;
	void		function(GtkWidget * widget)
			gtk_widget_freeze_child_notify;
	void		function(GtkWidget * widget, char * child_property)
			gtk_widget_child_notify;
	void		function(GtkWidget * widget)
			gtk_widget_thaw_child_notify;
	gboolean		function(GtkWidget * widget)
			gtk_widget_is_focus;
	void		function(GtkWidget * widget)
			gtk_widget_grab_focus;
	void		function(GtkWidget * widget)
			gtk_widget_grab_default;
	void		function(GtkWidget * widget, char * name)
			gtk_widget_set_name;
	char*		function(GtkWidget * widget)
			gtk_widget_get_name;
	void		function(GtkWidget * widget, GtkStateType state)
			gtk_widget_set_state;
	void		function(GtkWidget * widget, gboolean sensitive)
			gtk_widget_set_sensitive;
	void		function(GtkWidget * widget, gboolean app_paintable)
			gtk_widget_set_app_paintable;
	void		function(GtkWidget * widget, gboolean double_buffered)
			gtk_widget_set_double_buffered;
	void		function(GtkWidget * widget, gboolean redraw_on_allocate)
			gtk_widget_set_redraw_on_allocate;
	void		function(GtkWidget * widget, GtkWidget * parent)
			gtk_widget_set_parent;
	void		function(GtkWidget * widget, GdkWindow * parent_window)
			gtk_widget_set_parent_window;
	void		function(GtkWidget * widget, gboolean is_visible)
			gtk_widget_set_child_visible;
	gboolean		function(GtkWidget * widget)
			gtk_widget_get_child_visible;
	GtkWidget*		function(GtkWidget * widget)
			gtk_widget_get_parent;
	GdkWindow*		function(GtkWidget * widget)
			gtk_widget_get_parent_window;
	gboolean		function(GtkWidget * widget, GtkDirectionType direction)
			gtk_widget_child_focus;
	void		function(GtkWidget * widget, int width, int height)
			gtk_widget_set_size_request;
	void		function(GtkWidget * widget, int * width, int * height)
			gtk_widget_get_size_request;
	void		function(GtkWidget * widget, int x, int y)
			gtk_widget_set_uposition;
	void		function(GtkWidget * widget, int width, int height)
			gtk_widget_set_usize;
	void		function(GtkWidget * widget, int events)
			gtk_widget_set_events;
	void		function(GtkWidget * widget, int events)
			gtk_widget_add_events;
	void		function(GtkWidget * widget, GdkExtensionMode mode)
			gtk_widget_set_extension_events;
	GdkExtensionMode		function(GtkWidget * widget)
			gtk_widget_get_extension_events;
	GtkWidget*		function(GtkWidget * widget)
			gtk_widget_get_toplevel;
	GtkWidget*		function(GtkWidget * widget, GType widget_type)
			gtk_widget_get_ancestor;
	GdkColormap*		function(GtkWidget * widget)
			gtk_widget_get_colormap;
	GdkVisual*		function(GtkWidget * widget)
			gtk_widget_get_visual;
	GdkScreen*		function(GtkWidget * widget)
			gtk_widget_get_screen;
	gboolean		function(GtkWidget * widget)
			gtk_widget_has_screen;
	GdkDisplay*		function(GtkWidget * widget)
			gtk_widget_get_display;
	GdkWindow*		function(GtkWidget * widget)
			gtk_widget_get_root_window;
	GtkSettings*		function(GtkWidget * widget)
			gtk_widget_get_settings;
	GtkClipboard*		function(GtkWidget * widget, GdkAtom selection)
			gtk_widget_get_clipboard;
	void		function(GtkWidget * widget, GdkColormap * colormap)
			gtk_widget_set_colormap;
	int		function(GtkWidget * widget)
			gtk_widget_get_events;
	void		function(GtkWidget * widget, int * x, int * y)
			gtk_widget_get_pointer;
	gboolean		function(GtkWidget * widget, GtkWidget * ancestor)
			gtk_widget_is_ancestor;
	gboolean		function(GtkWidget * src_widget, GtkWidget * dest_widget, int src_x, int src_y, int * dest_x, int * dest_y)
			gtk_widget_translate_coordinates;
	gboolean		function(GtkWidget * widget)
			gtk_widget_hide_on_delete;
	void		function(GtkWidget * widget, GtkStyle * style)
			gtk_widget_set_style;
	void		function(GtkWidget * widget)
			gtk_widget_ensure_style;
	GtkStyle*		function(GtkWidget * widget)
			gtk_widget_get_style;
	void		function(GtkWidget * widget, GtkRcStyle * style)
			gtk_widget_modify_style;
	GtkRcStyle*		function(GtkWidget * widget)
			gtk_widget_get_modifier_style;
	void		function(GtkWidget * widget, GtkStateType state, GdkColor * color)
			gtk_widget_modify_fg;
	void		function(GtkWidget * widget, GtkStateType state, GdkColor * color)
			gtk_widget_modify_bg;
	void		function(GtkWidget * widget, GtkStateType state, GdkColor * color)
			gtk_widget_modify_text;
	void		function(GtkWidget * widget, GtkStateType state, GdkColor * color)
			gtk_widget_modify_base;
	void		function(GtkWidget * widget, PangoFontDescription * font_desc)
			gtk_widget_modify_font;
	PangoContext*		function(GtkWidget * widget)
			gtk_widget_create_pango_context;
	PangoContext*		function(GtkWidget * widget)
			gtk_widget_get_pango_context;
	PangoLayout*		function(GtkWidget * widget, char * text)
			gtk_widget_create_pango_layout;
	GdkPixbuf*		function(GtkWidget * widget, char * stock_id, GtkIconSize size, char * detail)
			gtk_widget_render_icon;
	void		function(GtkWidget * widget, char * name)
			gtk_widget_set_composite_name;
	char*		function(GtkWidget * widget)
			gtk_widget_get_composite_name;
	void		function(GtkWidget * widget)
			gtk_widget_reset_rc_styles;
	void		function(GdkColormap * cmap)
			gtk_widget_push_colormap;
	void		function()
			gtk_widget_push_composite_child;
	void		function()
			gtk_widget_pop_composite_child;
	void		function()
			gtk_widget_pop_colormap;
	void		function(GtkWidget * widget, char * property_name, GValue * value)
			gtk_widget_style_get_property;
	void		function(GtkWidget * widget, char * first_property_name,...)
			gtk_widget_style_get;
	void		function(GdkColormap * colormap)
			gtk_widget_set_default_colormap;
	GtkStyle*		function()
			gtk_widget_get_default_style;
	GdkColormap*		function()
			gtk_widget_get_default_colormap;
	GdkVisual*		function()
			gtk_widget_get_default_visual;
	void		function(GtkWidget * widget, GtkTextDirection dir)
			gtk_widget_set_direction;
	GtkTextDirection		function(GtkWidget * widget)
			gtk_widget_get_direction;
	void		function(GtkTextDirection dir)
			gtk_widget_set_default_direction;
	GtkTextDirection		function()
			gtk_widget_get_default_direction;
	void		function(GtkWidget * widget, GdkBitmap * shape_mask, int offset_x, int offset_y)
			gtk_widget_shape_combine_mask;
	void		function(GtkWidget * widget)
			gtk_widget_reset_shapes;
	void		function(GtkWidget * widget, guint * path_length, char * * path, char * * path_reversed)
			gtk_widget_path;
	void		function(GtkWidget * widget, guint * path_length, char * * path, char * * path_reversed)
			gtk_widget_class_path;
	GType		function()
			gtk_requisition_get_type;
	GtkRequisition*		function(GtkRequisition * requisition)
			gtk_requisition_copy;
	void		function(GtkRequisition * requisition)
			gtk_requisition_free;
	GType		function()
			gtk_window_get_type;
	GtkWidget*		function(GtkWindowType type)
			gtk_window_new;
	void		function(GtkWindow * window, gchar * title)
			gtk_window_set_title;
	gchar*		function(GtkWindow * window)
			gtk_window_get_title;
	void		function(GtkWindow * window, gchar * wmclass_name, gchar * wmclass_class)
			gtk_window_set_wmclass;
	void		function(GtkWindow * window, gchar * role)
			gtk_window_set_role;
	gchar*		function(GtkWindow * window)
			gtk_window_get_role;
	void		function(GtkWindow * window, GtkAccelGroup * accel_group)
			gtk_window_add_accel_group;
	void		function(GtkWindow * window, GtkAccelGroup * accel_group)
			gtk_window_remove_accel_group;
	void		function(GtkWindow * window, GtkWindowPosition position)
			gtk_window_set_position;
	gboolean		function(GtkWindow * window)
			gtk_window_activate_focus;
	void		function(GtkWindow * window, GtkWidget * focus)
			gtk_window_set_focus;
	GtkWidget*		function(GtkWindow * window)
			gtk_window_get_focus;
	void		function(GtkWindow * window, GtkWidget * default_widget)
			gtk_window_set_default;
	gboolean		function(GtkWindow * window)
			gtk_window_activate_default;
	void		function(GtkWindow * window, GtkWindow * parent)
			gtk_window_set_transient_for;
	GtkWindow*		function(GtkWindow * window)
			gtk_window_get_transient_for;
	void		function(GtkWindow * window, GdkWindowTypeHint hint)
			gtk_window_set_type_hint;
	GdkWindowTypeHint		function(GtkWindow * window)
			gtk_window_get_type_hint;
	void		function(GtkWindow * window, gboolean setting)
			gtk_window_set_skip_taskbar_hint;
	gboolean		function(GtkWindow * window)
			gtk_window_get_skip_taskbar_hint;
	void		function(GtkWindow * window, gboolean setting)
			gtk_window_set_skip_pager_hint;
	gboolean		function(GtkWindow * window)
			gtk_window_get_skip_pager_hint;
	void		function(GtkWindow * window, gboolean setting)
			gtk_window_set_destroy_with_parent;
	gboolean		function(GtkWindow * window)
			gtk_window_get_destroy_with_parent;
	void		function(GtkWindow * window, gboolean resizable)
			gtk_window_set_resizable;
	gboolean		function(GtkWindow * window)
			gtk_window_get_resizable;
	void		function(GtkWindow * window, GdkGravity gravity)
			gtk_window_set_gravity;
	GdkGravity		function(GtkWindow * window)
			gtk_window_get_gravity;
	void		function(GtkWindow * window, GtkWidget * geometry_widget, GdkGeometry * geometry, GdkWindowHints geom_mask)
			gtk_window_set_geometry_hints;
	void		function(GtkWindow * window, GdkScreen * screen)
			gtk_window_set_screen;
	GdkScreen*		function(GtkWindow * window)
			gtk_window_get_screen;
	void		function(GtkWindow * window, gboolean setting)
			gtk_window_set_has_frame;
	gboolean		function(GtkWindow * window)
			gtk_window_get_has_frame;
	void		function(GtkWindow * window, gint left, gint top, gint right, gint bottom)
			gtk_window_set_frame_dimensions;
	void		function(GtkWindow * window, gint * left, gint * top, gint * right, gint * bottom)
			gtk_window_get_frame_dimensions;
	void		function(GtkWindow * window, gboolean setting)
			gtk_window_set_decorated;
	gboolean		function(GtkWindow * window)
			gtk_window_get_decorated;
	void		function(GtkWindow * window, GList * list)
			gtk_window_set_icon_list;
	GList*		function(GtkWindow * window)
			gtk_window_get_icon_list;
	void		function(GtkWindow * window, GdkPixbuf * icon)
			gtk_window_set_icon;
	gboolean		function(GtkWindow * window, gchar * filename, GError * * err)
			gtk_window_set_icon_from_file;
	GdkPixbuf*		function(GtkWindow * window)
			gtk_window_get_icon;
	void		function(GList * list)
			gtk_window_set_default_icon_list;
	GList*		function()
			gtk_window_get_default_icon_list;
	gboolean		function(gchar * filename, GError * * err)
			gtk_window_set_default_icon_from_file;
	void		function(gboolean setting)
			gtk_window_set_auto_startup_notification;
	void		function(GtkWindow * window, gboolean modal)
			gtk_window_set_modal;
	gboolean		function(GtkWindow * window)
			gtk_window_get_modal;
	GList*		function()
			gtk_window_list_toplevels;
	void		function(GtkWindow * window, guint keyval, GtkWidget * target)
			gtk_window_add_mnemonic;
	void		function(GtkWindow * window, guint keyval, GtkWidget * target)
			gtk_window_remove_mnemonic;
	gboolean		function(GtkWindow * window, guint keyval, GdkModifierType modifier)
			gtk_window_mnemonic_activate;
	void		function(GtkWindow * window, GdkModifierType modifier)
			gtk_window_set_mnemonic_modifier;
	GdkModifierType		function(GtkWindow * window)
			gtk_window_get_mnemonic_modifier;
	void		function(GtkWindow * window)
			gtk_window_present;
	void		function(GtkWindow * window)
			gtk_window_iconify;
	void		function(GtkWindow * window)
			gtk_window_deiconify;
	void		function(GtkWindow * window)
			gtk_window_stick;
	void		function(GtkWindow * window)
			gtk_window_unstick;
	void		function(GtkWindow * window)
			gtk_window_maximize;
	void		function(GtkWindow * window)
			gtk_window_unmaximize;
	void		function(GtkWindow * window)
			gtk_window_fullscreen;
	void		function(GtkWindow * window)
			gtk_window_unfullscreen;
	void		function(GtkWindow * window, GdkWindowEdge edge, gint button, gint root_x, gint root_y, guint32 timestamp)
			gtk_window_begin_resize_drag;
	void		function(GtkWindow * window, gint button, gint root_x, gint root_y, guint32 timestamp)
			gtk_window_begin_move_drag;
	void		function(GtkWindow * window, gint width, gint height)
			gtk_window_set_default_size;
	void		function(GtkWindow * window, gint * width, gint * height)
			gtk_window_get_default_size;
	void		function(GtkWindow * window, gint width, gint height)
			gtk_window_resize;
	void		function(GtkWindow * window, gint * width, gint * height)
			gtk_window_get_size;
	void		function(GtkWindow * window, gint x, gint y)
			gtk_window_move;
	void		function(GtkWindow * window, gint * root_x, gint * root_y)
			gtk_window_get_position;
	gboolean		function(GtkWindow * window, gchar * geometry)
			gtk_window_parse_geometry;
	void		function(GtkWindow * window)
			gtk_window_reshow_with_initial_size;
	GType		function()
			gtk_window_group_get_type;
	GtkWindowGroup*		function()
			gtk_window_group_new;
	void		function(GtkWindowGroup * window_group, GtkWindow * window)
			gtk_window_group_add_window;
	void		function(GtkWindowGroup * window_group, GtkWindow * window)
			gtk_window_group_remove_window;
	void		function(void * table, int rows, int columns)
			gtk_table_resize;
	void		function(void * table,void * child,int left_attach,int right_attach,int top_attach,int bottom_attach,AttachOptions xoptions,AttachOptions yoptions,int xpadding,int ypadding)
			gtk_table_attach;
	void		function(void * table, int row, int spacing)
			gtk_table_set_row_spacing;
	int		function(void * table, int row)
			gtk_table_get_row_spacing;
	void		function(void * table, int column, int spacing)
			gtk_table_set_col_spacing;
	int		function(void * table, int column)
			gtk_table_get_col_spacing;
	void		function(void * table, int spacing)
			gtk_table_set_row_spacings;
	int		function(void * table)
			gtk_table_get_default_row_spacing;
	void		function(void * table, int spacing)
			gtk_table_set_col_spacings;
	int		function(void * table)
			gtk_table_get_default_col_spacing;
	void		function(void * table, int homogeneous)
			gtk_table_set_homogeneous;
	int		function(void * table)
			gtk_table_get_homogeneous;			
	GtkWidget*		function(GtkToolbar * toolbar, char * text, char * tooltip_text, char * tooltip_private_text, GtkWidget * icon, GtkSignalFunc callback, gpointer user_data)
			gtk_toolbar_append_item;
	GtkWidget*		function(GtkToolbar * toolbar, char * text, char * tooltip_text, char * tooltip_private_text, GtkWidget * icon, GtkSignalFunc callback, gpointer user_data)
			gtk_toolbar_prepend_item;
	GtkWidget*		function(GtkToolbar * toolbar,char * text,char * tooltip_text,char * tooltip_private_text,GtkWidget * icon,GtkSignalFunc callback,gpointer user_data,gint position)
			gtk_toolbar_insert_item;
	GtkWidget*		function(GtkToolbar * toolbar, gchar * stock_id, char * tooltip_text, char * tooltip_private_text, GtkSignalFunc callback, gpointer user_data, gint position)
			gtk_toolbar_insert_stock;
	void		function(GtkToolbar * toolbar)
			gtk_toolbar_append_space;
	void		function(GtkToolbar * toolbar)
			gtk_toolbar_prepend_space;
	void		function(GtkToolbar * toolbar, gint position)
			gtk_toolbar_insert_space;
	void		function(GtkToolbar * toolbar, gint position)
			gtk_toolbar_remove_space;
	GtkWidget*		function(GtkToolbar * toolbar,GtkToolbarChildType type,GtkWidget * widget,char * text,char * tooltip_text,char * tooltip_private_text,GtkWidget * icon,GtkSignalFunc callback,gpointer user_data)
			gtk_toolbar_append_element;
	GtkWidget*		function(GtkToolbar * toolbar,GtkToolbarChildType type,GtkWidget * widget,char * text,char * tooltip_text,char * tooltip_private_text,GtkWidget * icon,GtkSignalFunc callback,gpointer user_data)
			gtk_toolbar_prepend_element;
	GtkWidget*		function(GtkToolbar * toolbar,GtkToolbarChildType type,GtkWidget * widget,char * text,char * tooltip_text,char * tooltip_private_text,GtkWidget * icon,GtkSignalFunc callback,gpointer user_data,gint position)
			gtk_toolbar_insert_element;
	void		function(GtkToolbar * toolbar, GtkWidget * widget, char * tooltip_text, char * tooltip_private_text)
			gtk_toolbar_append_widget;
	void		function(GtkToolbar * toolbar, GtkWidget * widget, char * tooltip_text, char * tooltip_private_text)
			gtk_toolbar_prepend_widget;
	void		function(GtkToolbar * toolbar, GtkWidget * widget, char * tooltip_text, char * tooltip_private_text, gint position)
			gtk_toolbar_insert_widget;
	void		function(GtkToolbar * toolbar, GtkOrientation orientation)
			gtk_toolbar_set_orientation;
	void		function(GtkToolbar * toolbar, GtkToolbarStyle style)
			gtk_toolbar_set_style;
	void		function(GtkToolbar * toolbar, GtkIconSize icon_size)
			gtk_toolbar_set_icon_size;
	void		function(GtkToolbar * toolbar, gboolean enable)
			gtk_toolbar_set_tooltips;
	void		function(GtkToolbar * toolbar)
			gtk_toolbar_unset_style;
	void		function(GtkToolbar * toolbar)
			gtk_toolbar_unset_icon_size;
	GtkOrientation		function(GtkToolbar * toolbar)
			gtk_toolbar_get_orientation;
	GtkToolbarStyle		function(GtkToolbar * toolbar)
			gtk_toolbar_get_style;
	GtkIconSize		function(GtkToolbar * toolbar)
			gtk_toolbar_get_icon_size;
	gboolean		function(GtkToolbar * toolbar)
			gtk_toolbar_get_tooltips;
	gchar* 		function(guint required_major,guint required_minor,guint required_micro)
			gtk_check_version;
	GtkWidget*		function()
			gtk_calendar_new;
	gboolean		function(GtkCalendar * calendar, guint month, guint year)
			gtk_calendar_select_month;
	void		function(GtkCalendar * calendar, guint day)
			gtk_calendar_select_day;
	gboolean		function(GtkCalendar * calendar, guint day)
			gtk_calendar_mark_day;
	gboolean		function(GtkCalendar * calendar, guint day)
			gtk_calendar_unmark_day;
	void		function(GtkCalendar * calendar)
			gtk_calendar_clear_marks;
	void		function(GtkCalendar * calendar, CalendarDisplayOptions flags)
			gtk_calendar_display_options;
	void		function(GtkCalendar * calendar, guint * year, guint * month, guint * day)
			gtk_calendar_get_date;
	void		function(GtkCalendar * calendar)
			gtk_calendar_freeze;
	void		function(GtkCalendar * calendar)
			gtk_calendar_thaw;
	GtkWidget*		function()
			gtk_entry_new;
	void		function(GtkEntry * entry, gboolean visible)
			gtk_entry_set_visibility;
	gboolean		function(GtkEntry * entry)
			gtk_entry_get_visibility;
	void		function(GtkEntry * entry, gunichar ch)
			gtk_entry_set_invisible_char;
	gunichar		function(GtkEntry * entry)
			gtk_entry_get_invisible_char;
	void		function(GtkEntry * entry, gboolean setting)
			gtk_entry_set_has_frame;
	gboolean		function(GtkEntry * entry)
			gtk_entry_get_has_frame;
	void		function(GtkEntry * entry, gint max)
			gtk_entry_set_max_length;
	gint		function(GtkEntry * entry)
			gtk_entry_get_max_length;
	void		function(GtkEntry * entry, gboolean setting)
			gtk_entry_set_activates_default;
	gboolean		function(GtkEntry * entry)
			gtk_entry_get_activates_default;
	void		function(GtkEntry * entry, gint n_chars)
			gtk_entry_set_width_chars;
	gint		function(GtkEntry * entry)
			gtk_entry_get_width_chars;
	void		function(GtkEntry * entry, gchar * text)
			gtk_entry_set_text;
	gchar*		function(GtkEntry * entry)
			gtk_entry_get_text;
	PangoLayout*		function(GtkEntry * entry)
			gtk_entry_get_layout;
	void		function(GtkEntry * entry, gint * x, gint * y)
			gtk_entry_get_layout_offsets;
	void		function(GtkList * list, GtkScrollType scroll_type, gfloat position, gboolean auto_start_selection)
			gtk_list_extend_selection;
	void		function(GtkList * list)
			gtk_list_start_selection;
	void		function(GtkList * list)
			gtk_list_end_selection;
	void		function(GtkList * list)
			gtk_list_select_all;
	void		function(GtkList * list)
			gtk_list_unselect_all;
	void		function(GtkList * list, GtkScrollType scroll_type, gfloat position)
			gtk_list_scroll_horizontal;
	void		function(GtkList * list, GtkScrollType scroll_type, gfloat position)
			gtk_list_scroll_vertical;
	void		function(GtkList * list)
			gtk_list_toggle_add_mode;
	void		function(GtkList * list)
			gtk_list_toggle_focus_row;
	void		function(GtkList * list, GtkWidget * item)
			gtk_list_toggle_row;
	void		function(GtkList * list)
			gtk_list_undo_selection;
	void		function(GtkList * list)
			gtk_list_end_drag_selection;
	void		function(GtkContainer * container, guint border_width)
			gtk_container_set_border_width;
	guint		function(GtkContainer * container)
			gtk_container_get_border_width;
	void		function(GtkContainer * container, GtkWidget * widget)
			gtk_container_add;
	void		function(GtkContainer * container, GtkWidget * widget)
			gtk_container_remove;
	void		function(GtkContainer * container, ResizeMode resize_mode)
			gtk_container_set_resize_mode;
	ResizeMode		function(GtkContainer * container)
			gtk_container_get_resize_mode;
	void		function(GtkContainer * container)
			gtk_container_check_resize;
	void		function(GtkContainer * container, GtkCallback callback, gpointer callback_data)
			gtk_container_foreach;
	void		function(GtkContainer * container, GtkCallback callback, GtkCallbackMarshal marshal, gpointer callback_data, GtkDestroyNotify notify)
			gtk_container_foreach_full;
	GList*		function(GtkContainer * container)
			gtk_container_get_children;
	void		function(GtkContainer * container, GtkWidget * child, GdkEventExpose * event)
			gtk_container_propagate_expose;
	void		function(GtkContainer * container, GList * focusable_widgets)
			gtk_container_set_focus_chain;
	gboolean		function(GtkContainer * container, GList * * focusable_widgets)
			gtk_container_get_focus_chain;
	void		function(GtkContainer * container)
			gtk_container_unset_focus_chain;
	void		function(GtkContainer * container, gboolean needs_redraws)
			gtk_container_set_reallocate_redraws;
	void		function(GtkContainer * container, GtkWidget * child)
			gtk_container_set_focus_child;
	void		function(GtkContainer * container, GtkAdjustment * adjustment)
			gtk_container_set_focus_vadjustment;
	GtkAdjustment*		function(GtkContainer * container)
			gtk_container_get_focus_vadjustment;
	void		function(GtkContainer * container, GtkAdjustment * adjustment)
			gtk_container_set_focus_hadjustment;
	GtkAdjustment*		function(GtkContainer * container)
			gtk_container_get_focus_hadjustment;
	void		function(GtkContainer * container)
			gtk_container_resize_children;
	GType		function(GtkContainer * container)
			gtk_container_child_type;
	void		function(GtkContainer * container, GtkWidget * widget, gchar * first_prop_name,...)
			gtk_container_add_with_properties;
	void		function(GtkContainer * container, GtkWidget * child, gchar * first_prop_name,...)
			gtk_container_child_set;
	void		function(GtkContainer * container, GtkWidget * child, gchar * first_prop_name,...)
			gtk_container_child_get;
	void		function(GtkContainer * container, GtkWidget * child, gchar * first_property_name, vaList var_args)
			gtk_container_child_set_valist;
	void		function(GtkContainer * container, GtkWidget * child, gchar * first_property_name, vaList var_args)
			gtk_container_child_get_valist;
	void		function(GtkContainer * container, GtkWidget * child, gchar * property_name, GValue * value)
			gtk_container_child_set_property;
	void		function(GtkContainer * container, GtkWidget * child, gchar * property_name, GValue * value)
			gtk_container_child_get_property;
	void		function(GtkContainer * container, GtkCallback callback, gpointer callback_data)
			gtk_container_forall;
//----> notbook addition
	gint		function(GtkNotebook * notebook)
			gtk_notebook_get_current_page;
	GtkWidget*		function(GtkNotebook * notebook, gint page_num)
			gtk_notebook_get_nth_page;
	gint		function(GtkNotebook * notebook)
			gtk_notebook_get_n_pages;
	gint		function(GtkNotebook * notebook, GtkWidget * child)
			gtk_notebook_page_num;
	void		function(GtkNotebook * notebook, gint page_num)
			gtk_notebook_set_current_page;
	void		function(GtkNotebook * notebook)
			gtk_notebook_next_page;
	void		function(GtkNotebook * notebook)
			gtk_notebook_prev_page;
	void		function(GtkNotebook * notebook, gboolean show_border)
			gtk_notebook_set_show_border;
	gboolean		function(GtkNotebook * notebook)
			gtk_notebook_get_show_border;
	void		function(GtkNotebook * notebook, gboolean show_tabs)
			gtk_notebook_set_show_tabs;
	gboolean		function(GtkNotebook * notebook)
			gtk_notebook_get_show_tabs;
	void		function(GtkNotebook * notebook, GtkPositionType pos)
			gtk_notebook_set_tab_pos;
	GtkPositionType		function(GtkNotebook * notebook)
			gtk_notebook_get_tab_pos;
	void		function(GtkNotebook * notebook, gboolean scrollable)
			gtk_notebook_set_scrollable;
	gboolean		function(GtkNotebook * notebook)
			gtk_notebook_get_scrollable;
	void		function(GtkNotebook * notebook)
			gtk_notebook_popup_enable;
	void		function(GtkNotebook * notebook)
			gtk_notebook_popup_disable;
	GtkWidget*		function(GtkNotebook * notebook, GtkWidget * child)
			gtk_notebook_get_tab_label;
	void		function(GtkNotebook * notebook, GtkWidget * child, GtkWidget * tab_label)
			gtk_notebook_set_tab_label;
	void		function(GtkNotebook * notebook, GtkWidget * child, gchar * tab_text)
			gtk_notebook_set_tab_label_text;
	gchar*		function(GtkNotebook * notebook, GtkWidget * child)
			gtk_notebook_get_tab_label_text;
	GtkWidget*		function(GtkNotebook * notebook, GtkWidget * child)
			gtk_notebook_get_menu_label;
	void		function(GtkNotebook * notebook, GtkWidget * child, GtkWidget * menu_label)
			gtk_notebook_set_menu_label;
	void		function(GtkNotebook * notebook, GtkWidget * child, gchar * menu_text)
			gtk_notebook_set_menu_label_text;
	gchar*		function(GtkNotebook * notebook, GtkWidget * child)
			gtk_notebook_get_menu_label_text;
	void		function(GtkNotebook * notebook, GtkWidget * child, gboolean * expand, gboolean * fill, GtkPackType * pack_type)
			gtk_notebook_query_tab_label_packing;
	void		function(GtkNotebook * notebook, GtkWidget * child, gboolean expand, gboolean fill, GtkPackType pack_type)
			gtk_notebook_set_tab_label_packing;
	void		function(GtkNotebook * notebook, GtkWidget * child, gint position)
			gtk_notebook_reorder_child;
}


Symbol[] gtkLinks =
[
	{ "gtk_accel_group_disconnect",  cast(void**)& gtk_accel_group_disconnect },
	{ "gtk_accel_group_disconnect_key",  cast(void**)& gtk_accel_group_disconnect_key },
	{ "gtk_accel_group_query",  cast(void**)& gtk_accel_group_query },
	{ "gtk_accel_group_lock",  cast(void**)& gtk_accel_group_lock },
	{ "gtk_accel_group_unlock",  cast(void**)& gtk_accel_group_unlock },
	{ "gtk_accel_group_from_accel_closure",  cast(void**)& gtk_accel_group_from_accel_closure },
	{ "gtk_accel_groups_activate",  cast(void**)& gtk_accel_groups_activate },
	{ "gtk_accel_groups_from_object",  cast(void**)& gtk_accel_groups_from_object },
	{ "gtk_accel_group_find",  cast(void**)& gtk_accel_group_find },
	{ "gtk_accelerator_valid",  cast(void**)& gtk_accelerator_valid },
	{ "gtk_accelerator_parse",  cast(void**)& gtk_accelerator_parse },
	{ "gtk_accelerator_name",  cast(void**)& gtk_accelerator_name },
	{ "gtk_accelerator_set_default_mod_mask",  cast(void**)& gtk_accelerator_set_default_mod_mask },
	{ "gtk_accelerator_get_default_mod_mask",  cast(void**)& gtk_accelerator_get_default_mod_mask },
	{ "gtk_accel_label_new",  cast(void**)& gtk_accel_label_new },
	{ "gtk_accel_label_get_accel_widget",  cast(void**)& gtk_accel_label_get_accel_widget },
	{ "gtk_accel_label_get_accel_width",  cast(void**)& gtk_accel_label_get_accel_width },
	{ "gtk_accel_label_set_accel_widget",  cast(void**)& gtk_accel_label_set_accel_widget },
	{ "gtk_accel_label_set_accel_closure",  cast(void**)& gtk_accel_label_set_accel_closure },
	{ "gtk_accel_label_refetch",  cast(void**)& gtk_accel_label_refetch },
	{ "gtk_adjustment_new",  cast(void**)& gtk_adjustment_new },
	{ "gtk_adjustment_changed",  cast(void**)& gtk_adjustment_changed },
	{ "gtk_adjustment_value_changed",  cast(void**)& gtk_adjustment_value_changed },
	{ "gtk_adjustment_clamp_page",  cast(void**)& gtk_adjustment_clamp_page },
	{ "gtk_adjustment_get_value",  cast(void**)& gtk_adjustment_get_value },
	{ "gtk_adjustment_set_value",  cast(void**)& gtk_adjustment_set_value },
	{ "gtk_alignment_new",  cast(void**)& gtk_alignment_new },
	{ "gtk_alignment_set",  cast(void**)& gtk_alignment_set },
	{ "gtk_arrow_new",  cast(void**)& gtk_arrow_new },
	{ "gtk_arrow_set",  cast(void**)& gtk_arrow_set },
	{ "gtk_aspect_frame_new",  cast(void**)& gtk_aspect_frame_new },
	{ "gtk_aspect_frame_set",  cast(void**)& gtk_aspect_frame_set },
	{ "gtk_bin_get_child",  cast(void**)& gtk_bin_get_child },
	{ "gtk_box_get_type",  cast(void**)& gtk_box_get_type },
	{ "gtk_box_pack_start",  cast(void**)& gtk_box_pack_start },
	{ "gtk_box_pack_end",  cast(void**)& gtk_box_pack_end },
	{ "gtk_box_pack_start_defaults",  cast(void**)& gtk_box_pack_start_defaults },
	{ "gtk_box_pack_end_defaults",  cast(void**)& gtk_box_pack_end_defaults },
	{ "gtk_box_set_homogeneous",  cast(void**)& gtk_box_set_homogeneous },
	{ "gtk_box_get_homogeneous",  cast(void**)& gtk_box_get_homogeneous },
	{ "gtk_box_set_spacing",  cast(void**)& gtk_box_set_spacing },
	{ "gtk_box_get_spacing",  cast(void**)& gtk_box_get_spacing },
	{ "gtk_box_reorder_child",  cast(void**)& gtk_box_reorder_child },
	{ "gtk_box_query_child_packing",  cast(void**)& gtk_box_query_child_packing },
	{ "gtk_box_set_child_packing",  cast(void**)& gtk_box_set_child_packing },
	{ "gtk_button_new_with_label",  cast(void**)& gtk_button_new_with_label },
	{ "gtk_button_new",  cast(void**)& gtk_button_new },
	{ "gtk_button_new_from_stock",  cast(void**)& gtk_button_new_from_stock },
	{ "gtk_button_new_with_mnemonic",  cast(void**)& gtk_button_new_with_mnemonic },
	{ "gtk_button_pressed",  cast(void**)& gtk_button_pressed },
	{ "gtk_button_released",  cast(void**)& gtk_button_released },
	{ "gtk_button_clicked",  cast(void**)& gtk_button_clicked },
	{ "gtk_button_enter",  cast(void**)& gtk_button_enter },
	{ "gtk_button_leave",  cast(void**)& gtk_button_leave },
	{ "gtk_button_set_relief",  cast(void**)& gtk_button_set_relief },
	{ "gtk_button_get_relief",  cast(void**)& gtk_button_get_relief },
	{ "gtk_button_set_label",  cast(void**)& gtk_button_set_label },
	{ "gtk_button_get_label",  cast(void**)& gtk_button_get_label },
	{ "gtk_button_set_use_underline",  cast(void**)& gtk_button_set_use_underline },
	{ "gtk_button_get_use_underline",  cast(void**)& gtk_button_get_use_underline },
	{ "gtk_button_set_use_stock",  cast(void**)& gtk_button_set_use_stock },
	{ "gtk_button_get_use_stock",  cast(void**)& gtk_button_get_use_stock },
	{ "gtk_button_box_get_layout",  cast(void**)& gtk_button_box_get_layout },
	{ "gtk_button_box_set_layout",  cast(void**)& gtk_button_box_set_layout },
	{ "gtk_button_box_set_child_secondary",  cast(void**)& gtk_button_box_set_child_secondary },
	{ "gtk_cell_renderer_get_size",  cast(void**)& gtk_cell_renderer_get_size },
	{ "gtk_cell_renderer_render",  cast(void**)& gtk_cell_renderer_render },
	{ "gtk_cell_renderer_activate",  cast(void**)& gtk_cell_renderer_activate },
	{ "gtk_cell_renderer_start_editing",  cast(void**)& gtk_cell_renderer_start_editing },
	{ "gtk_cell_renderer_set_fixed_size",  cast(void**)& gtk_cell_renderer_set_fixed_size },
	{ "gtk_cell_renderer_get_fixed_size",  cast(void**)& gtk_cell_renderer_get_fixed_size },
	{ "gtk_cell_renderer_pixbuf_get_type",  cast(void**)& gtk_cell_renderer_pixbuf_get_type },
	{ "gtk_cell_renderer_pixbuf_new",  cast(void**)& gtk_cell_renderer_pixbuf_new },
	{ "gtk_cell_renderer_text_new",  cast(void**)& gtk_cell_renderer_text_new },
	{ "gtk_cell_renderer_text_set_fixed_height_from_font",  cast(void**)& gtk_cell_renderer_text_set_fixed_height_from_font },
	{ "gtk_cell_renderer_toggle_new",  cast(void**)& gtk_cell_renderer_toggle_new },
	{ "gtk_cell_renderer_toggle_get_radio",  cast(void**)& gtk_cell_renderer_toggle_get_radio },
	{ "gtk_cell_renderer_toggle_set_radio",  cast(void**)& gtk_cell_renderer_toggle_set_radio },
	{ "gtk_cell_renderer_toggle_get_active",  cast(void**)& gtk_cell_renderer_toggle_get_active },
	{ "gtk_cell_renderer_toggle_set_active",  cast(void**)& gtk_cell_renderer_toggle_set_active },
	{ "gtk_check_button_new_with_label",  cast(void**)& gtk_check_button_new_with_label },
	{ "gtk_check_button_new",  cast(void**)& gtk_check_button_new },
	{ "gtk_check_menu_item_new",  cast(void**)& gtk_check_menu_item_new },
	{ "gtk_check_menu_item_new_with_label",  cast(void**)& gtk_check_menu_item_new_with_label },
	{ "gtk_check_menu_item_new_with_mnemonic",  cast(void**)& gtk_check_menu_item_new_with_mnemonic },
	{ "gtk_check_menu_item_get_active",  cast(void**)& gtk_check_menu_item_get_active },
	{ "gtk_check_menu_item_set_active",  cast(void**)& gtk_check_menu_item_set_active },
	{ "gtk_check_menu_item_set_show_toggle",  cast(void**)& gtk_check_menu_item_set_show_toggle },
	{ "gtk_check_menu_item_toggled",  cast(void**)& gtk_check_menu_item_toggled },
	{ "gtk_check_menu_item_get_inconsistent",  cast(void**)& gtk_check_menu_item_get_inconsistent },
	{ "gtk_check_menu_item_set_inconsistent",  cast(void**)& gtk_check_menu_item_set_inconsistent },
	{ "gtk_clipboard_get_type",  cast(void**)& gtk_clipboard_get_type },
	{ "gtk_clipboard_get_for_display",  cast(void**)& gtk_clipboard_get_for_display },
	{ "gtk_clipboard_get",  cast(void**)& gtk_clipboard_get },
	{ "gtk_clipboard_get_display",  cast(void**)& gtk_clipboard_get_display },
	{ "gtk_clipboard_get_owner",  cast(void**)& gtk_clipboard_get_owner },
	{ "gtk_clipboard_clear",  cast(void**)& gtk_clipboard_clear },
	{ "gtk_clipboard_set_text",  cast(void**)& gtk_clipboard_set_text },
	{ "gtk_clipboard_wait_for_contents",  cast(void**)& gtk_clipboard_wait_for_contents },
	{ "gtk_clipboard_wait_for_text",  cast(void**)& gtk_clipboard_wait_for_text },
	{ "gtk_clipboard_wait_is_text_available",  cast(void**)& gtk_clipboard_wait_is_text_available },
	{ "gtk_color_selection_new",  cast(void**)& gtk_color_selection_new },
	{ "gtk_color_selection_set_has_opacity_control",  cast(void**)& gtk_color_selection_set_has_opacity_control },
	{ "gtk_color_selection_get_current_color",  cast(void**)& gtk_color_selection_get_current_color },
	{ "gtk_color_selection_set_current_color",  cast(void**)& gtk_color_selection_set_current_color },
	{ "gtk_color_selection_dialog_new",  cast(void**)& gtk_color_selection_dialog_new },
	{ "gtk_combo_get_type",  cast(void**)& gtk_combo_get_type },
	{ "gtk_combo_new",  cast(void**)& gtk_combo_new },
	{ "gtk_combo_set_value_in_list",  cast(void**)& gtk_combo_set_value_in_list },
	{ "gtk_combo_set_use_arrows",  cast(void**)& gtk_combo_set_use_arrows },
	{ "gtk_combo_set_use_arrows_always",  cast(void**)& gtk_combo_set_use_arrows_always },
	{ "gtk_combo_set_case_sensitive",  cast(void**)& gtk_combo_set_case_sensitive },
	{ "gtk_combo_set_item_string",  cast(void**)& gtk_combo_set_item_string },
	{ "gtk_combo_set_popdown_strings",  cast(void**)& gtk_combo_set_popdown_strings },
	{ "gtk_combo_disable_activate",  cast(void**)& gtk_combo_disable_activate },
	{ "gtk_combo_box_new_text",  cast(void**)& gtk_combo_box_new_text },
	{ "gtk_combo_box_new",  cast(void**)& gtk_combo_box_new },
	{ "gtk_combo_box_new_with_model",  cast(void**)& gtk_combo_box_new_with_model },
	{ "gtk_combo_box_append_text",  cast(void**)& gtk_combo_box_append_text },
	{ "gtk_combo_box_insert_text",  cast(void**)& gtk_combo_box_insert_text },
	{ "gtk_combo_box_prepend_text",  cast(void**)& gtk_combo_box_prepend_text },
	{ "gtk_combo_box_remove_text",  cast(void**)& gtk_combo_box_remove_text },
	{ "gtk_combo_box_set_wrap_width",  cast(void**)& gtk_combo_box_set_wrap_width },
	{ "gtk_combo_box_set_row_span_column",  cast(void**)& gtk_combo_box_set_row_span_column },
	{ "gtk_combo_box_set_column_span_column",  cast(void**)& gtk_combo_box_set_column_span_column },
	{ "gtk_combo_box_get_active",  cast(void**)& gtk_combo_box_get_active },
	{ "gtk_combo_box_set_active",  cast(void**)& gtk_combo_box_set_active },
	{ "gtk_combo_box_get_active_iter",  cast(void**)& gtk_combo_box_get_active_iter },
	{ "gtk_combo_box_set_active_iter",  cast(void**)& gtk_combo_box_set_active_iter },
	{ "gtk_combo_box_get_model",  cast(void**)& gtk_combo_box_get_model },
	{ "gtk_combo_box_set_model",  cast(void**)& gtk_combo_box_set_model },
	{ "gtk_combo_box_popup",  cast(void**)& gtk_combo_box_popup },
	{ "gtk_combo_box_popdown",  cast(void**)& gtk_combo_box_popdown },
	{ "gtk_combo_box_entry_new",  cast(void**)& gtk_combo_box_entry_new },
	{ "gtk_combo_box_entry_new_text",  cast(void**)& gtk_combo_box_entry_new_text },
	{ "gtk_combo_box_entry_set_text_column",  cast(void**)& gtk_combo_box_entry_set_text_column },
	{ "gtk_combo_box_entry_get_text_column",  cast(void**)& gtk_combo_box_entry_get_text_column },
	{ "gtk_container_set_border_width",  cast(void**)& gtk_container_set_border_width },
	{ "gtk_container_get_border_width",  cast(void**)& gtk_container_get_border_width },
	{ "gtk_container_add",  cast(void**)& gtk_container_add },
	{ "gtk_container_remove",  cast(void**)& gtk_container_remove },
	{ "gtk_curve_new",  cast(void**)& gtk_curve_new },
	{ "gtk_curve_reset",  cast(void**)& gtk_curve_reset },
	{ "gtk_curve_set_gamma",  cast(void**)& gtk_curve_set_gamma },
	{ "gtk_curve_set_range",  cast(void**)& gtk_curve_set_range },
	{ "gtk_curve_get_vector",  cast(void**)& gtk_curve_get_vector },
	{ "gtk_curve_set_vector",  cast(void**)& gtk_curve_set_vector },
	{ "gtk_curve_set_curve_type",  cast(void**)& gtk_curve_set_curve_type },
	{ "gtk_dialog_get_type",  cast(void**)& gtk_dialog_get_type },
	{ "gtk_dialog_run",  cast(void**)& gtk_dialog_run },
	{ "gtk_dialog_new",  cast(void**)& gtk_dialog_new },
	{ "gtk_dialog_new_with_buttons",  cast(void**)& gtk_dialog_new_with_buttons },
	{ "gtk_dialog_add_action_widget",  cast(void**)& gtk_dialog_add_action_widget },
	{ "gtk_dialog_add_button",  cast(void**)& gtk_dialog_add_button },
	{ "gtk_dialog_add_buttons",  cast(void**)& gtk_dialog_add_buttons },
	{ "gtk_dialog_set_response_sensitive",  cast(void**)& gtk_dialog_set_response_sensitive },
	{ "gtk_dialog_set_default_response",  cast(void**)& gtk_dialog_set_default_response },
	{ "gtk_dialog_set_has_separator",  cast(void**)& gtk_dialog_set_has_separator },
	{ "gtk_dialog_get_has_separator",  cast(void**)& gtk_dialog_get_has_separator },
	{ "gtk_drag_get_data",  cast(void**)& gtk_drag_get_data },
	{ "gtk_drag_finish",  cast(void**)& gtk_drag_finish },
	{ "gtk_drag_get_source_widget",  cast(void**)& gtk_drag_get_source_widget },
	{ "gtk_drag_highlight",  cast(void**)& gtk_drag_highlight },
	{ "gtk_drag_unhighlight",  cast(void**)& gtk_drag_unhighlight },
	{ "gtk_drag_dest_set",  cast(void**)& gtk_drag_dest_set },
	{ "gtk_drag_dest_set_proxy",  cast(void**)& gtk_drag_dest_set_proxy },
	{ "gtk_drag_dest_unset",  cast(void**)& gtk_drag_dest_unset },
	{ "gtk_drag_dest_find_target",  cast(void**)& gtk_drag_dest_find_target },
	{ "gtk_drag_dest_get_target_list",  cast(void**)& gtk_drag_dest_get_target_list },
	{ "gtk_drag_dest_set_target_list",  cast(void**)& gtk_drag_dest_set_target_list },
	{ "gtk_drag_source_set",  cast(void**)& gtk_drag_source_set },
	{ "gtk_drag_source_unset",  cast(void**)& gtk_drag_source_unset },
	{ "gtk_drag_source_set_icon",  cast(void**)& gtk_drag_source_set_icon },
	{ "gtk_drag_source_set_icon_pixbuf",  cast(void**)& gtk_drag_source_set_icon_pixbuf },
	{ "gtk_drag_source_set_icon_stock",  cast(void**)& gtk_drag_source_set_icon_stock },
	{ "gtk_drag_begin",  cast(void**)& gtk_drag_begin },
	{ "gtk_drag_set_icon_widget",  cast(void**)& gtk_drag_set_icon_widget },
	{ "gtk_drag_set_icon_pixmap",  cast(void**)& gtk_drag_set_icon_pixmap },
	{ "gtk_drag_set_icon_pixbuf",  cast(void**)& gtk_drag_set_icon_pixbuf },
	{ "gtk_drag_set_icon_stock",  cast(void**)& gtk_drag_set_icon_stock },
	{ "gtk_drag_set_icon_default",  cast(void**)& gtk_drag_set_icon_default },
	{ "gtk_drag_check_threshold",  cast(void**)& gtk_drag_check_threshold },
	{ "gtk_drawing_area_get_type",  cast(void**)& gtk_drawing_area_get_type },
	{ "gtk_drawing_area_new",  cast(void**)& gtk_drawing_area_new },
	{ "gtk_set_locale",  cast(void**)& gtk_set_locale },
	{ "gtk_disable_setlocale",  cast(void**)& gtk_disable_setlocale },
	{ "gtk_init",  cast(void**)& gtk_init },
	{ "gtk_init_check",  cast(void**)& gtk_init_check },
	{ "gtk_exit",  cast(void**)& gtk_exit },
	{ "gtk_events_pending",  cast(void**)& gtk_events_pending },
	{ "gtk_main",  cast(void**)& gtk_main },
	{ "gtk_main_level",  cast(void**)& gtk_main_level },
	{ "gtk_main_quit",  cast(void**)& gtk_main_quit },
	{ "gtk_main_iteration",  cast(void**)& gtk_main_iteration },
	{ "gtk_main_iteration_do",  cast(void**)& gtk_main_iteration_do },
	{ "gtk_true",  cast(void**)& gtk_true },
	{ "gtk_false",  cast(void**)& gtk_false },
	{ "gtk_grab_add",  cast(void**)& gtk_grab_add },
	{ "gtk_grab_get_current",  cast(void**)& gtk_grab_get_current },
	{ "gtk_grab_remove",  cast(void**)& gtk_grab_remove },
	{ "gtk_quit_add_destroy",  cast(void**)& gtk_quit_add_destroy },
	{ "gtk_quit_remove",  cast(void**)& gtk_quit_remove },
	{ "gtk_quit_remove_by_data",  cast(void**)& gtk_quit_remove_by_data },
	{ "gtk_input_remove",  cast(void**)& gtk_input_remove },
	{ "gtk_key_snooper_remove",  cast(void**)& gtk_key_snooper_remove },
	{ "gtk_get_current_event_time",  cast(void**)& gtk_get_current_event_time },
	{ "gtk_get_current_event_state",  cast(void**)& gtk_get_current_event_state },
	{ "gtk_idle_add",  cast(void**)& gtk_idle_add },
	{ "gtk_idle_add_priority",  cast(void**)& gtk_idle_add_priority },
	{ "gtk_idle_remove",  cast(void**)& gtk_idle_remove },
	{ "gtk_idle_remove_by_data",  cast(void**)& gtk_idle_remove_by_data },
	{ "gtk_timeout_add_full",  cast(void**)& gtk_timeout_add_full },
	{ "gtk_timeout_add",  cast(void**)& gtk_timeout_add },
	{ "gtk_timeout_remove",  cast(void**)& gtk_timeout_remove },
	{ "gtk_object_new",  cast(void**)& gtk_object_new },
	{ "gtk_object_sink",  cast(void**)& gtk_object_sink },
	{ "gtk_object_destroy",  cast(void**)& gtk_object_destroy },	
	{ "gtk_editable_select_region",  cast(void**)& gtk_editable_select_region },
	{ "gtk_editable_get_selection_bounds",  cast(void**)& gtk_editable_get_selection_bounds },
	{ "gtk_editable_insert_text",  cast(void**)& gtk_editable_insert_text },
	{ "gtk_editable_delete_text",  cast(void**)& gtk_editable_delete_text },
	{ "gtk_editable_get_chars",  cast(void**)& gtk_editable_get_chars },
	{ "gtk_editable_cut_clipboard",  cast(void**)& gtk_editable_cut_clipboard },
	{ "gtk_editable_copy_clipboard",  cast(void**)& gtk_editable_copy_clipboard },
	{ "gtk_editable_paste_clipboard",  cast(void**)& gtk_editable_paste_clipboard },
	{ "gtk_editable_delete_selection",  cast(void**)& gtk_editable_delete_selection },
	{ "gtk_editable_set_position",  cast(void**)& gtk_editable_set_position },
	{ "gtk_editable_get_position",  cast(void**)& gtk_editable_get_position },
	{ "gtk_editable_set_editable",  cast(void**)& gtk_editable_set_editable },
	{ "gtk_editable_get_editable",  cast(void**)& gtk_editable_get_editable },
	{ "gtk_event_box_get_type",  cast(void**)& gtk_event_box_get_type },
	{ "gtk_event_box_new",  cast(void**)& gtk_event_box_new },
	{ "gtk_file_chooser_dialog_new",  cast(void**)& gtk_file_chooser_dialog_new },
	{ "gtk_file_chooser_dialog_new_with_backend",  cast(void**)& gtk_file_chooser_dialog_new_with_backend },
	{ "gtk_file_chooser_set_action",  cast(void**)& gtk_file_chooser_set_action },
	{ "gtk_file_chooser_get_action",  cast(void**)& gtk_file_chooser_get_action },
	{ "gtk_file_chooser_set_local_only",  cast(void**)& gtk_file_chooser_set_local_only },
	{ "gtk_file_chooser_get_local_only",  cast(void**)& gtk_file_chooser_get_local_only },
	{ "gtk_file_chooser_set_select_multiple",  cast(void**)& gtk_file_chooser_set_select_multiple },
	{ "gtk_file_chooser_get_select_multiple",  cast(void**)& gtk_file_chooser_get_select_multiple },
	{ "gtk_file_chooser_set_current_name",  cast(void**)& gtk_file_chooser_set_current_name },
	{ "gtk_file_chooser_get_filename",  cast(void**)& gtk_file_chooser_get_filename },
	{ "gtk_file_chooser_set_filename",  cast(void**)& gtk_file_chooser_set_filename },
	{ "gtk_file_chooser_select_filename",  cast(void**)& gtk_file_chooser_select_filename },
	{ "gtk_file_chooser_unselect_filename",  cast(void**)& gtk_file_chooser_unselect_filename },
	{ "gtk_file_chooser_select_all",  cast(void**)& gtk_file_chooser_select_all },
	{ "gtk_file_chooser_unselect_all",  cast(void**)& gtk_file_chooser_unselect_all },
	{ "gtk_file_chooser_get_filenames",  cast(void**)& gtk_file_chooser_get_filenames },
	{ "gtk_file_chooser_set_current_folder",  cast(void**)& gtk_file_chooser_set_current_folder },
	{ "gtk_file_chooser_get_current_folder",  cast(void**)& gtk_file_chooser_get_current_folder },
	{ "gtk_file_chooser_get_uri",  cast(void**)& gtk_file_chooser_get_uri },
	{ "gtk_file_chooser_set_uri",  cast(void**)& gtk_file_chooser_set_uri },
	{ "gtk_file_chooser_select_uri",  cast(void**)& gtk_file_chooser_select_uri },
	{ "gtk_file_chooser_unselect_uri",  cast(void**)& gtk_file_chooser_unselect_uri },
	{ "gtk_file_chooser_get_uris",  cast(void**)& gtk_file_chooser_get_uris },
	{ "gtk_file_chooser_set_current_folder_uri",  cast(void**)& gtk_file_chooser_set_current_folder_uri },
	{ "gtk_file_chooser_get_current_folder_uri",  cast(void**)& gtk_file_chooser_get_current_folder_uri },
	{ "gtk_file_chooser_set_preview_widget",  cast(void**)& gtk_file_chooser_set_preview_widget },
	{ "gtk_file_chooser_get_preview_widget",  cast(void**)& gtk_file_chooser_get_preview_widget },
	{ "gtk_file_chooser_set_preview_widget_active",  cast(void**)& gtk_file_chooser_set_preview_widget_active },
	{ "gtk_file_chooser_get_preview_widget_active",  cast(void**)& gtk_file_chooser_get_preview_widget_active },
	{ "gtk_file_chooser_set_use_preview_label",  cast(void**)& gtk_file_chooser_set_use_preview_label },
	{ "gtk_file_chooser_get_use_preview_label",  cast(void**)& gtk_file_chooser_get_use_preview_label },
	{ "gtk_file_chooser_get_preview_filename",  cast(void**)& gtk_file_chooser_get_preview_filename },
	{ "gtk_file_chooser_get_preview_uri",  cast(void**)& gtk_file_chooser_get_preview_uri },
	{ "gtk_file_chooser_set_extra_widget",  cast(void**)& gtk_file_chooser_set_extra_widget },
	{ "gtk_file_chooser_get_extra_widget",  cast(void**)& gtk_file_chooser_get_extra_widget },
	{ "gtk_file_chooser_list_filters",  cast(void**)& gtk_file_chooser_list_filters },
	{ "gtk_file_chooser_add_shortcut_folder",  cast(void**)& gtk_file_chooser_add_shortcut_folder },
	{ "gtk_file_chooser_remove_shortcut_folder",  cast(void**)& gtk_file_chooser_remove_shortcut_folder },
	{ "gtk_file_chooser_list_shortcut_folders",  cast(void**)& gtk_file_chooser_list_shortcut_folders },
	{ "gtk_file_chooser_add_shortcut_folder_uri",  cast(void**)& gtk_file_chooser_add_shortcut_folder_uri },
	{ "gtk_file_chooser_remove_shortcut_folder_uri",  cast(void**)& gtk_file_chooser_remove_shortcut_folder_uri },
	{ "gtk_file_chooser_list_shortcut_folder_uris",  cast(void**)& gtk_file_chooser_list_shortcut_folder_uris },
	{ "gtk_file_selection_get_type",  cast(void**)& gtk_file_selection_get_type },
	{ "gtk_file_selection_new",  cast(void**)& gtk_file_selection_new },
	{ "gtk_file_selection_set_filename",  cast(void**)& gtk_file_selection_set_filename },
	{ "gtk_file_selection_get_filename",  cast(void**)& gtk_file_selection_get_filename },
	{ "gtk_file_selection_complete",  cast(void**)& gtk_file_selection_complete },
	{ "gtk_file_selection_show_fileop_buttons",  cast(void**)& gtk_file_selection_show_fileop_buttons },
	{ "gtk_file_selection_hide_fileop_buttons",  cast(void**)& gtk_file_selection_hide_fileop_buttons },
	{ "gtk_file_selection_get_selections",  cast(void**)& gtk_file_selection_get_selections },
	{ "gtk_file_selection_set_select_multiple",  cast(void**)& gtk_file_selection_set_select_multiple },
	{ "gtk_file_selection_get_select_multiple",  cast(void**)& gtk_file_selection_get_select_multiple },
	{ "gtk_fixed_get_type",  cast(void**)& gtk_fixed_get_type },
	{ "gtk_fixed_new",  cast(void**)& gtk_fixed_new },
	{ "gtk_fixed_put",  cast(void**)& gtk_fixed_put },
	{ "gtk_fixed_move",  cast(void**)& gtk_fixed_move },
	{ "gtk_fixed_set_has_window",  cast(void**)& gtk_fixed_set_has_window },
	{ "gtk_fixed_get_has_window",  cast(void**)& gtk_fixed_get_has_window },
	{ "gtk_font_selection_get_type",  cast(void**)& gtk_font_selection_get_type },
	{ "gtk_font_selection_new",  cast(void**)& gtk_font_selection_new },
	{ "gtk_font_selection_get_font",  cast(void**)& gtk_font_selection_get_font },
	{ "gtk_font_selection_get_font_name",  cast(void**)& gtk_font_selection_get_font_name },
	{ "gtk_font_selection_set_font_name",  cast(void**)& gtk_font_selection_set_font_name },
	{ "gtk_font_selection_get_preview_text",  cast(void**)& gtk_font_selection_get_preview_text },
	{ "gtk_font_selection_set_preview_text",  cast(void**)& gtk_font_selection_set_preview_text },
	{ "gtk_font_selection_dialog_get_type",  cast(void**)& gtk_font_selection_dialog_get_type },
	{ "gtk_font_selection_dialog_new",  cast(void**)& gtk_font_selection_dialog_new },
	{ "gtk_font_selection_dialog_get_font_name",  cast(void**)& gtk_font_selection_dialog_get_font_name },
	{ "gtk_font_selection_dialog_set_font_name",  cast(void**)& gtk_font_selection_dialog_set_font_name },
	{ "gtk_font_selection_dialog_get_preview_text",  cast(void**)& gtk_font_selection_dialog_get_preview_text },
	{ "gtk_font_selection_dialog_set_preview_text",  cast(void**)& gtk_font_selection_dialog_set_preview_text },
	{ "gtk_frame_get_type",  cast(void**)& gtk_frame_get_type },
	{ "gtk_frame_new",  cast(void**)& gtk_frame_new },
	{ "gtk_frame_set_label",  cast(void**)& gtk_frame_set_label },
	{ "gtk_frame_get_label",  cast(void**)& gtk_frame_get_label },
	{ "gtk_frame_set_label_widget",  cast(void**)& gtk_frame_set_label_widget },
	{ "gtk_frame_get_label_widget",  cast(void**)& gtk_frame_get_label_widget },
	{ "gtk_frame_set_label_align",  cast(void**)& gtk_frame_set_label_align },
	{ "gtk_frame_get_label_align",  cast(void**)& gtk_frame_get_label_align },
	{ "gtk_frame_set_shadow_type",  cast(void**)& gtk_frame_set_shadow_type },
	{ "gtk_frame_get_shadow_type",  cast(void**)& gtk_frame_get_shadow_type },
	{ "gtk_gamma_curve_new",  cast(void**)& gtk_gamma_curve_new },
	{ "gtk_handle_box_get_type",  cast(void**)& gtk_handle_box_get_type },
	{ "gtk_handle_box_new",  cast(void**)& gtk_handle_box_new },
	{ "gtk_handle_box_set_shadow_type",  cast(void**)& gtk_handle_box_set_shadow_type },
	{ "gtk_handle_box_get_shadow_type",  cast(void**)& gtk_handle_box_get_shadow_type },
	{ "gtk_handle_box_set_handle_position",  cast(void**)& gtk_handle_box_set_handle_position },
	{ "gtk_handle_box_get_handle_position",  cast(void**)& gtk_handle_box_get_handle_position },
	{ "gtk_handle_box_set_snap_edge",  cast(void**)& gtk_handle_box_set_snap_edge },
	{ "gtk_handle_box_get_snap_edge",  cast(void**)& gtk_handle_box_get_snap_edge },
	{ "gtk_hbox_get_type",  cast(void**)& gtk_hbox_get_type },
	{ "gtk_hbox_new",  cast(void**)& gtk_hbox_new },
	{ "gtk_hbutton_box_get_type",  cast(void**)& gtk_hbutton_box_get_type },
	{ "gtk_hbutton_box_new",  cast(void**)& gtk_hbutton_box_new },
	{ "gtk_hpaned_get_type",  cast(void**)& gtk_hpaned_get_type },
	{ "gtk_hpaned_new",  cast(void**)& gtk_hpaned_new },
	{ "gtk_hruler_get_type",  cast(void**)& gtk_hruler_get_type },
	{ "gtk_hruler_new",  cast(void**)& gtk_hruler_new },
	{ "gtk_hscale_get_type",  cast(void**)& gtk_hscale_get_type },
	{ "gtk_hscale_new",  cast(void**)& gtk_hscale_new },
	{ "gtk_hscale_new_with_range",  cast(void**)& gtk_hscale_new_with_range },
	{ "gtk_hscrollbar_get_type",  cast(void**)& gtk_hscrollbar_get_type },
	{ "gtk_hscrollbar_new",  cast(void**)& gtk_hscrollbar_new },
	{ "gtk_hseparator_get_type",  cast(void**)& gtk_hseparator_get_type },
	{ "gtk_hseparator_new",  cast(void**)& gtk_hseparator_new },
	{ "gtk_image_get_type",  cast(void**)& gtk_image_get_type },
	{ "gtk_image_new",  cast(void**)& gtk_image_new },
	{ "gtk_image_new_from_pixmap",  cast(void**)& gtk_image_new_from_pixmap },
	{ "gtk_image_new_from_image",  cast(void**)& gtk_image_new_from_image },
	{ "gtk_image_new_from_file",  cast(void**)& gtk_image_new_from_file },
	{ "gtk_image_new_from_pixbuf",  cast(void**)& gtk_image_new_from_pixbuf },
	{ "gtk_image_new_from_stock",  cast(void**)& gtk_image_new_from_stock },
	{ "gtk_image_new_from_icon_set",  cast(void**)& gtk_image_new_from_icon_set },
	{ "gtk_image_new_from_animation",  cast(void**)& gtk_image_new_from_animation },
	{ "gtk_image_set_from_pixmap",  cast(void**)& gtk_image_set_from_pixmap },
	{ "gtk_image_set_from_image",  cast(void**)& gtk_image_set_from_image },
	{ "gtk_image_set_from_file",  cast(void**)& gtk_image_set_from_file },
	{ "gtk_image_set_from_pixbuf",  cast(void**)& gtk_image_set_from_pixbuf },
	{ "gtk_image_set_from_stock",  cast(void**)& gtk_image_set_from_stock },
	{ "gtk_image_set_from_icon_set",  cast(void**)& gtk_image_set_from_icon_set },
	{ "gtk_image_set_from_animation",  cast(void**)& gtk_image_set_from_animation },
	{ "gtk_image_get_storage_type",  cast(void**)& gtk_image_get_storage_type },
	{ "gtk_image_get_pixmap",  cast(void**)& gtk_image_get_pixmap },
	{ "gtk_image_get_image",  cast(void**)& gtk_image_get_image },
	{ "gtk_image_get_pixbuf",  cast(void**)& gtk_image_get_pixbuf },
	{ "gtk_image_get_stock",  cast(void**)& gtk_image_get_stock },
	{ "gtk_image_get_icon_set",  cast(void**)& gtk_image_get_icon_set },
	{ "gtk_image_get_animation",  cast(void**)& gtk_image_get_animation },
	{ "gtk_image_menu_item_get_type",  cast(void**)& gtk_image_menu_item_get_type },
	{ "gtk_image_menu_item_set_image",  cast(void**)& gtk_image_menu_item_set_image },
	{ "gtk_image_menu_item_get_image",  cast(void**)& gtk_image_menu_item_get_image },
	{ "gtk_image_menu_item_new",  cast(void**)& gtk_image_menu_item_new },
	{ "gtk_image_menu_item_new_from_stock",  cast(void**)& gtk_image_menu_item_new_from_stock },
	{ "gtk_image_menu_item_new_with_label",  cast(void**)& gtk_image_menu_item_new_with_label },
	{ "gtk_image_menu_item_new_with_mnemonic",  cast(void**)& gtk_image_menu_item_new_with_mnemonic },
	{ "gtk_input_dialog_get_type",  cast(void**)& gtk_input_dialog_get_type },
	{ "gtk_input_dialog_new",  cast(void**)& gtk_input_dialog_new },
	{ "gtk_invisible_new",  cast(void**)& gtk_invisible_new },
	{ "gtk_invisible_new_for_screen",  cast(void**)& gtk_invisible_new_for_screen },
	{ "gtk_invisible_set_screen",  cast(void**)& gtk_invisible_set_screen },
	{ "gtk_invisible_get_screen",  cast(void**)& gtk_invisible_get_screen },
	{ "gtk_item_get_type",  cast(void**)& gtk_item_get_type },
	{ "gtk_item_select",  cast(void**)& gtk_item_select },
	{ "gtk_item_deselect",  cast(void**)& gtk_item_deselect },
	{ "gtk_item_toggle",  cast(void**)& gtk_item_toggle },
	{ "gtk_item_factory_new",  cast(void**)& gtk_item_factory_new },
	{ "gtk_item_factory_construct",  cast(void**)& gtk_item_factory_construct },
	{ "gtk_item_factory_add_foreign",  cast(void**)& gtk_item_factory_add_foreign },
	{ "gtk_item_factory_from_widget",  cast(void**)& gtk_item_factory_from_widget },
	{ "gtk_item_factory_path_from_widget",  cast(void**)& gtk_item_factory_path_from_widget },
	{ "gtk_item_factory_get_item",  cast(void**)& gtk_item_factory_get_item },
	{ "gtk_item_factory_get_widget",  cast(void**)& gtk_item_factory_get_widget },
	{ "gtk_item_factory_get_widget_by_action",  cast(void**)& gtk_item_factory_get_widget_by_action },
	{ "gtk_item_factory_get_item_by_action",  cast(void**)& gtk_item_factory_get_item_by_action },
	{ "gtk_item_factory_create_item",  cast(void**)& gtk_item_factory_create_item },
	{ "gtk_item_factory_create_items",  cast(void**)& gtk_item_factory_create_items },
	{ "gtk_item_factory_create_items_ac",  cast(void**)& gtk_item_factory_create_items_ac },
	{ "gtk_item_factory_delete_item",  cast(void**)& gtk_item_factory_delete_item },
	{ "gtk_item_factory_delete_entry",  cast(void**)& gtk_item_factory_delete_entry },
	{ "gtk_item_factory_delete_entries",  cast(void**)& gtk_item_factory_delete_entries },
	{ "gtk_item_factory_popup",  cast(void**)& gtk_item_factory_popup },
	{ "gtk_item_factory_popup_with_data",  cast(void**)& gtk_item_factory_popup_with_data },
	{ "gtk_item_factory_popup_data",  cast(void**)& gtk_item_factory_popup_data },
	{ "gtk_item_factory_popup_data_from_widget",  cast(void**)& gtk_item_factory_popup_data_from_widget },
	{ "gtk_item_factory_from_path",  cast(void**)& gtk_item_factory_from_path },
	{ "gtk_item_factory_create_menu_entries",  cast(void**)& gtk_item_factory_create_menu_entries },
	{ "gtk_item_factories_path_delete",  cast(void**)& gtk_item_factories_path_delete },
	{ "gtk_item_factory_set_translate_func",  cast(void**)& gtk_item_factory_set_translate_func },
	{ "gtk_label_get_type",  cast(void**)& gtk_label_get_type },
	{ "gtk_label_new",  cast(void**)& gtk_label_new },
	{ "gtk_label_new_with_mnemonic",  cast(void**)& gtk_label_new_with_mnemonic },
	{ "gtk_label_set_text",  cast(void**)& gtk_label_set_text },
	{ "gtk_label_get_text",  cast(void**)& gtk_label_get_text },
	{ "gtk_label_set_attributes",  cast(void**)& gtk_label_set_attributes },
	{ "gtk_label_get_attributes",  cast(void**)& gtk_label_get_attributes },
	{ "gtk_label_set_label",  cast(void**)& gtk_label_set_label },
	{ "gtk_label_get_label",  cast(void**)& gtk_label_get_label },
	{ "gtk_label_set_markup",  cast(void**)& gtk_label_set_markup },
	{ "gtk_label_set_use_markup",  cast(void**)& gtk_label_set_use_markup },
	{ "gtk_label_get_use_markup",  cast(void**)& gtk_label_get_use_markup },
	{ "gtk_label_set_use_underline",  cast(void**)& gtk_label_set_use_underline },
	{ "gtk_label_get_use_underline",  cast(void**)& gtk_label_get_use_underline },
	{ "gtk_label_set_markup_with_mnemonic",  cast(void**)& gtk_label_set_markup_with_mnemonic },
	{ "gtk_label_get_mnemonic_keyval",  cast(void**)& gtk_label_get_mnemonic_keyval },
	{ "gtk_label_set_mnemonic_widget",  cast(void**)& gtk_label_set_mnemonic_widget },
	{ "gtk_label_get_mnemonic_widget",  cast(void**)& gtk_label_get_mnemonic_widget },
	{ "gtk_label_set_text_with_mnemonic",  cast(void**)& gtk_label_set_text_with_mnemonic },
	{ "gtk_label_set_justify",  cast(void**)& gtk_label_set_justify },
	{ "gtk_label_get_justify",  cast(void**)& gtk_label_get_justify },
	{ "gtk_label_set_pattern",  cast(void**)& gtk_label_set_pattern },
	{ "gtk_label_set_line_wrap",  cast(void**)& gtk_label_set_line_wrap },
	{ "gtk_label_get_line_wrap",  cast(void**)& gtk_label_get_line_wrap },
	{ "gtk_label_set_selectable",  cast(void**)& gtk_label_set_selectable },
	{ "gtk_label_get_selectable",  cast(void**)& gtk_label_get_selectable },
	{ "gtk_label_select_region",  cast(void**)& gtk_label_select_region },
	{ "gtk_label_get_selection_bounds",  cast(void**)& gtk_label_get_selection_bounds },
	{ "gtk_label_get_layout",  cast(void**)& gtk_label_get_layout },
	{ "gtk_label_get_layout_offsets",  cast(void**)& gtk_label_get_layout_offsets },
	{ "gtk_layout_get_type",  cast(void**)& gtk_layout_get_type },
	{ "gtk_layout_new",  cast(void**)& gtk_layout_new },
	{ "gtk_layout_put",  cast(void**)& gtk_layout_put },
	{ "gtk_layout_move",  cast(void**)& gtk_layout_move },
	{ "gtk_layout_set_size",  cast(void**)& gtk_layout_set_size },
	{ "gtk_layout_get_size",  cast(void**)& gtk_layout_get_size },
	{ "gtk_layout_get_hadjustment",  cast(void**)& gtk_layout_get_hadjustment },
	{ "gtk_layout_get_vadjustment",  cast(void**)& gtk_layout_get_vadjustment },
	{ "gtk_layout_set_hadjustment",  cast(void**)& gtk_layout_set_hadjustment },
	{ "gtk_layout_set_vadjustment",  cast(void**)& gtk_layout_set_vadjustment },
	{ "gtk_list_get_type",  cast(void**)& gtk_list_get_type },
	{ "gtk_list_new",  cast(void**)& gtk_list_new },
	{ "gtk_list_insert_items",  cast(void**)& gtk_list_insert_items },
	{ "gtk_list_append_items",  cast(void**)& gtk_list_append_items },
	{ "gtk_list_prepend_items",  cast(void**)& gtk_list_prepend_items },
	{ "gtk_list_remove_items",  cast(void**)& gtk_list_remove_items },
	{ "gtk_list_remove_items_no_unref",  cast(void**)& gtk_list_remove_items_no_unref },
	{ "gtk_list_clear_items",  cast(void**)& gtk_list_clear_items },
	{ "gtk_list_select_item",  cast(void**)& gtk_list_select_item },
	{ "gtk_list_unselect_item",  cast(void**)& gtk_list_unselect_item },
	{ "gtk_list_select_child",  cast(void**)& gtk_list_select_child },
	{ "gtk_list_unselect_child",  cast(void**)& gtk_list_unselect_child },
	{ "gtk_list_child_position",  cast(void**)& gtk_list_child_position },
	{ "gtk_list_set_selection_mode",  cast(void**)& gtk_list_set_selection_mode },
	{ "gtk_list_item_get_type",  cast(void**)& gtk_list_item_get_type },
	{ "gtk_list_item_new",  cast(void**)& gtk_list_item_new },
	{ "gtk_list_item_new_with_label",  cast(void**)& gtk_list_item_new_with_label },
	{ "gtk_list_item_select",  cast(void**)& gtk_list_item_select },
	{ "gtk_list_item_deselect",  cast(void**)& gtk_list_item_deselect },
	{ "gtk_list_store_get_type",  cast(void**)& gtk_list_store_get_type },
	{ "gtk_list_store_new",  cast(void**)& gtk_list_store_new },
	{ "gtk_list_store_newv",  cast(void**)& gtk_list_store_newv },
	{ "gtk_list_store_set_column_types",  cast(void**)& gtk_list_store_set_column_types },
	{ "gtk_list_store_set_value",  cast(void**)& gtk_list_store_set_value },
	{ "gtk_list_store_set",  cast(void**)& gtk_list_store_set },
	{ "gtk_list_store_set_valist",  cast(void**)& gtk_list_store_set_valist },
	{ "gtk_list_store_remove",  cast(void**)& gtk_list_store_remove },
	{ "gtk_list_store_insert",  cast(void**)& gtk_list_store_insert },
	{ "gtk_list_store_insert_before",  cast(void**)& gtk_list_store_insert_before },
	{ "gtk_list_store_insert_after",  cast(void**)& gtk_list_store_insert_after },
	{ "gtk_list_store_prepend",  cast(void**)& gtk_list_store_prepend },
	{ "gtk_list_store_append",  cast(void**)& gtk_list_store_append },
	{ "gtk_list_store_clear",  cast(void**)& gtk_list_store_clear },
	{ "gtk_list_store_iter_is_valid",  cast(void**)& gtk_list_store_iter_is_valid },
	{ "gtk_list_store_reorder",  cast(void**)& gtk_list_store_reorder },
	{ "gtk_list_store_swap",  cast(void**)& gtk_list_store_swap },
	{ "gtk_list_store_move_after",  cast(void**)& gtk_list_store_move_after },
	{ "gtk_list_store_move_before",  cast(void**)& gtk_list_store_move_before },
	{ "gtk_menu_get_type",  cast(void**)& gtk_menu_get_type },
	{ "gtk_menu_new",  cast(void**)& gtk_menu_new },
	{ "gtk_menu_popup",  cast(void**)& gtk_menu_popup },
	{ "gtk_menu_reposition",  cast(void**)& gtk_menu_reposition },
	{ "gtk_menu_popdown",  cast(void**)& gtk_menu_popdown },
	{ "gtk_menu_get_active",  cast(void**)& gtk_menu_get_active },
	{ "gtk_menu_set_active",  cast(void**)& gtk_menu_set_active },
	{ "gtk_menu_set_accel_group",  cast(void**)& gtk_menu_set_accel_group },
	{ "gtk_menu_get_accel_group",  cast(void**)& gtk_menu_get_accel_group },
	{ "gtk_menu_set_accel_path",  cast(void**)& gtk_menu_set_accel_path },
	{ "gtk_menu_attach_to_widget",  cast(void**)& gtk_menu_attach_to_widget },
	{ "gtk_menu_detach",  cast(void**)& gtk_menu_detach },
	{ "gtk_menu_get_attach_widget",  cast(void**)& gtk_menu_get_attach_widget },
	{ "gtk_menu_set_tearoff_state",  cast(void**)& gtk_menu_set_tearoff_state },
	{ "gtk_menu_get_tearoff_state",  cast(void**)& gtk_menu_get_tearoff_state },
	{ "gtk_menu_set_title",  cast(void**)& gtk_menu_set_title },
	{ "gtk_menu_get_title",  cast(void**)& gtk_menu_get_title },
	{ "gtk_menu_reorder_child",  cast(void**)& gtk_menu_reorder_child },
	{ "gtk_menu_set_screen",  cast(void**)& gtk_menu_set_screen },
	{ "gtk_menu_bar_get_type",  cast(void**)& gtk_menu_bar_get_type },
	{ "gtk_menu_bar_new",  cast(void**)& gtk_menu_bar_new },
	{ "gtk_menu_item_get_type",  cast(void**)& gtk_menu_item_get_type },
	{ "gtk_menu_item_new",  cast(void**)& gtk_menu_item_new },
	{ "gtk_menu_item_new_with_label",  cast(void**)& gtk_menu_item_new_with_label },
	{ "gtk_menu_item_new_with_mnemonic",  cast(void**)& gtk_menu_item_new_with_mnemonic },
	{ "gtk_menu_item_set_submenu",  cast(void**)& gtk_menu_item_set_submenu },
	{ "gtk_menu_item_get_submenu",  cast(void**)& gtk_menu_item_get_submenu },
	{ "gtk_menu_item_remove_submenu",  cast(void**)& gtk_menu_item_remove_submenu },
	{ "gtk_menu_item_select",  cast(void**)& gtk_menu_item_select },
	{ "gtk_menu_item_deselect",  cast(void**)& gtk_menu_item_deselect },
	{ "gtk_menu_item_activate",  cast(void**)& gtk_menu_item_activate },
	{ "gtk_menu_item_toggle_size_request",  cast(void**)& gtk_menu_item_toggle_size_request },
	{ "gtk_menu_item_toggle_size_allocate",  cast(void**)& gtk_menu_item_toggle_size_allocate },
	{ "gtk_menu_item_set_right_justified",  cast(void**)& gtk_menu_item_set_right_justified },
	{ "gtk_menu_item_get_right_justified",  cast(void**)& gtk_menu_item_get_right_justified },
	{ "gtk_menu_item_set_accel_path",  cast(void**)& gtk_menu_item_set_accel_path },
	{ "gtk_menu_shell_get_type",  cast(void**)& gtk_menu_shell_get_type },
	{ "gtk_menu_shell_append",  cast(void**)& gtk_menu_shell_append },
	{ "gtk_menu_shell_prepend",  cast(void**)& gtk_menu_shell_prepend },
	{ "gtk_menu_shell_insert",  cast(void**)& gtk_menu_shell_insert },
	{ "gtk_menu_shell_deactivate",  cast(void**)& gtk_menu_shell_deactivate },
	{ "gtk_menu_shell_select_item",  cast(void**)& gtk_menu_shell_select_item },
	{ "gtk_menu_shell_deselect",  cast(void**)& gtk_menu_shell_deselect },
	{ "gtk_menu_shell_activate_item",  cast(void**)& gtk_menu_shell_activate_item },
	{ "gtk_menu_shell_select_first",  cast(void**)& gtk_menu_shell_select_first },
	{ "gtk_message_dialog_get_type",  cast(void**)& gtk_message_dialog_get_type },
	{ "gtk_message_dialog_new",  cast(void**)& gtk_message_dialog_new },
	{ "gtk_misc_get_type",  cast(void**)& gtk_misc_get_type },
	{ "gtk_misc_set_alignment",  cast(void**)& gtk_misc_set_alignment },
	{ "gtk_misc_get_alignment",  cast(void**)& gtk_misc_get_alignment },
	{ "gtk_misc_set_padding",  cast(void**)& gtk_misc_set_padding },
	{ "gtk_misc_get_padding",  cast(void**)& gtk_misc_get_padding },
	{ "gtk_notebook_get_type",  cast(void**)& gtk_notebook_get_type },
	{ "gtk_notebook_new",  cast(void**)& gtk_notebook_new },
	{ "gtk_notebook_append_page",  cast(void**)& gtk_notebook_append_page },
	{ "gtk_notebook_append_page_menu",  cast(void**)& gtk_notebook_append_page_menu },
	{ "gtk_notebook_prepend_page",  cast(void**)& gtk_notebook_prepend_page },
	{ "gtk_notebook_prepend_page_menu",  cast(void**)& gtk_notebook_prepend_page_menu },
	{ "gtk_notebook_insert_page",  cast(void**)& gtk_notebook_insert_page },
	{ "gtk_notebook_insert_page_menu",  cast(void**)& gtk_notebook_insert_page_menu },
	{ "gtk_notebook_remove_page",  cast(void**)& gtk_notebook_remove_page },
	{ "gtk_option_menu_get_type",  cast(void**)& gtk_option_menu_get_type },
	{ "gtk_option_menu_new",  cast(void**)& gtk_option_menu_new },
	{ "gtk_option_menu_get_menu",  cast(void**)& gtk_option_menu_get_menu },
	{ "gtk_option_menu_set_menu",  cast(void**)& gtk_option_menu_set_menu },
	{ "gtk_option_menu_remove_menu",  cast(void**)& gtk_option_menu_remove_menu },
	{ "gtk_option_menu_get_history",  cast(void**)& gtk_option_menu_get_history },
	{ "gtk_option_menu_set_history",  cast(void**)& gtk_option_menu_set_history },
	{ "gtk_paned_get_type",  cast(void**)& gtk_paned_get_type },
	{ "gtk_paned_add1",  cast(void**)& gtk_paned_add1 },
	{ "gtk_paned_add2",  cast(void**)& gtk_paned_add2 },
	{ "gtk_paned_get_position",  cast(void**)& gtk_paned_get_position },
	{ "gtk_paned_set_position",  cast(void**)& gtk_paned_set_position },
/+  // comment out gtk_plug for win32 version
	{ "gtk_plug_get_type",  cast(void**)& gtk_plug_get_type },
	{ "gtk_plug_construct",  cast(void**)& gtk_plug_construct },
	{ "gtk_plug_construct_for_display",  cast(void**)& gtk_plug_construct_for_display },
	{ "gtk_plug_new",  cast(void**)& gtk_plug_new },
	{ "gtk_plug_new_for_display",  cast(void**)& gtk_plug_new_for_display },
	{ "gtk_plug_get_id",  cast(void**)& gtk_plug_get_id }, 
+/	
	{ "gtk_progress_bar_get_type",  cast(void**)& gtk_progress_bar_get_type },
	{ "gtk_progress_bar_new",  cast(void**)& gtk_progress_bar_new },
	{ "gtk_progress_bar_pulse",  cast(void**)& gtk_progress_bar_pulse },
	{ "gtk_progress_bar_set_text",  cast(void**)& gtk_progress_bar_set_text },
	{ "gtk_progress_bar_set_fraction",  cast(void**)& gtk_progress_bar_set_fraction },
	{ "gtk_progress_bar_set_pulse_step",  cast(void**)& gtk_progress_bar_set_pulse_step },
	{ "gtk_progress_bar_set_orientation",  cast(void**)& gtk_progress_bar_set_orientation },
	{ "gtk_progress_bar_get_text",  cast(void**)& gtk_progress_bar_get_text },
	{ "gtk_progress_bar_get_fraction",  cast(void**)& gtk_progress_bar_get_fraction },
	{ "gtk_progress_bar_get_pulse_step",  cast(void**)& gtk_progress_bar_get_pulse_step },
	{ "gtk_progress_bar_get_orientation",  cast(void**)& gtk_progress_bar_get_orientation },
	{ "gtk_radio_button_get_type",  cast(void**)& gtk_radio_button_get_type },
	{ "gtk_radio_button_new",  cast(void**)& gtk_radio_button_new },
	{ "gtk_radio_button_new_from_widget",  cast(void**)& gtk_radio_button_new_from_widget },
	{ "gtk_radio_button_new_with_label",  cast(void**)& gtk_radio_button_new_with_label },
	{ "gtk_radio_button_new_with_label_from_widget",  cast(void**)& gtk_radio_button_new_with_label_from_widget },
	{ "gtk_radio_button_new_with_mnemonic",  cast(void**)& gtk_radio_button_new_with_mnemonic },
	{ "gtk_radio_button_new_with_mnemonic_from_widget",  cast(void**)& gtk_radio_button_new_with_mnemonic_from_widget },
	{ "gtk_radio_button_get_group",  cast(void**)& gtk_radio_button_get_group },
	{ "gtk_radio_button_set_group",  cast(void**)& gtk_radio_button_set_group },
	{ "gtk_radio_menu_item_get_type",  cast(void**)& gtk_radio_menu_item_get_type },
	{ "gtk_radio_menu_item_new",  cast(void**)& gtk_radio_menu_item_new },
	{ "gtk_radio_menu_item_new_with_label",  cast(void**)& gtk_radio_menu_item_new_with_label },
	{ "gtk_radio_menu_item_new_with_mnemonic",  cast(void**)& gtk_radio_menu_item_new_with_mnemonic },
	{ "gtk_radio_menu_item_set_group",  cast(void**)& gtk_radio_menu_item_set_group },
	{ "gtk_radio_menu_item_get_group",  cast(void**)& gtk_radio_menu_item_get_group },
	{ "gtk_range_get_type",  cast(void**)& gtk_range_get_type },
	{ "gtk_range_set_update_policy",  cast(void**)& gtk_range_set_update_policy },
	{ "gtk_range_get_update_policy",  cast(void**)& gtk_range_get_update_policy },
	{ "gtk_range_set_adjustment",  cast(void**)& gtk_range_set_adjustment },
	{ "gtk_range_get_adjustment",  cast(void**)& gtk_range_get_adjustment },
	{ "gtk_range_set_inverted",  cast(void**)& gtk_range_set_inverted },
	{ "gtk_range_get_inverted",  cast(void**)& gtk_range_get_inverted },
	{ "gtk_range_set_increments",  cast(void**)& gtk_range_set_increments },
	{ "gtk_range_set_range",  cast(void**)& gtk_range_set_range },
	{ "gtk_range_set_value",  cast(void**)& gtk_range_set_value },
	{ "gtk_range_get_value",  cast(void**)& gtk_range_get_value },
	{ "gtk_ruler_get_type",  cast(void**)& gtk_ruler_get_type },
	{ "gtk_ruler_set_metric",  cast(void**)& gtk_ruler_set_metric },
	{ "gtk_ruler_set_range",  cast(void**)& gtk_ruler_set_range },
	{ "gtk_ruler_get_metric",  cast(void**)& gtk_ruler_get_metric },
	{ "gtk_ruler_get_range",  cast(void**)& gtk_ruler_get_range },
	{ "gtk_scale_get_type",  cast(void**)& gtk_scale_get_type },
	{ "gtk_scale_set_digits",  cast(void**)& gtk_scale_set_digits },
	{ "gtk_scale_get_digits",  cast(void**)& gtk_scale_get_digits },
	{ "gtk_scale_set_draw_value",  cast(void**)& gtk_scale_set_draw_value },
	{ "gtk_scale_get_draw_value",  cast(void**)& gtk_scale_get_draw_value },
	{ "gtk_scale_set_value_pos",  cast(void**)& gtk_scale_set_value_pos },
	{ "gtk_scale_get_value_pos",  cast(void**)& gtk_scale_get_value_pos },
	{ "gtk_scrollbar_get_type",  cast(void**)& gtk_scrollbar_get_type },
	{ "gtk_scrolled_window_get_type",  cast(void**)& gtk_scrolled_window_get_type },
	{ "gtk_scrolled_window_new",  cast(void**)& gtk_scrolled_window_new },
	{ "gtk_scrolled_window_set_hadjustment",  cast(void**)& gtk_scrolled_window_set_hadjustment },
	{ "gtk_scrolled_window_set_vadjustment",  cast(void**)& gtk_scrolled_window_set_vadjustment },
	{ "gtk_scrolled_window_get_hadjustment",  cast(void**)& gtk_scrolled_window_get_hadjustment },
	{ "gtk_scrolled_window_get_vadjustment",  cast(void**)& gtk_scrolled_window_get_vadjustment },
	{ "gtk_scrolled_window_set_policy",  cast(void**)& gtk_scrolled_window_set_policy },
	{ "gtk_scrolled_window_get_policy",  cast(void**)& gtk_scrolled_window_get_policy },
	{ "gtk_scrolled_window_set_placement",  cast(void**)& gtk_scrolled_window_set_placement },
	{ "gtk_scrolled_window_get_placement",  cast(void**)& gtk_scrolled_window_get_placement },
	{ "gtk_scrolled_window_set_shadow_type",  cast(void**)& gtk_scrolled_window_set_shadow_type },
	{ "gtk_scrolled_window_get_shadow_type",  cast(void**)& gtk_scrolled_window_get_shadow_type },
	{ "gtk_scrolled_window_add_with_viewport",  cast(void**)& gtk_scrolled_window_add_with_viewport },
	{ "gtk_selection_data_get_type",  cast(void**)& gtk_selection_data_get_type },
	{ "gtk_selection_data_copy",  cast(void**)& gtk_selection_data_copy },
	{ "gtk_selection_data_free",  cast(void**)& gtk_selection_data_free },
	{ "gtk_selection_owner_set",  cast(void**)& gtk_selection_owner_set },
	{ "gtk_selection_owner_set_for_display",  cast(void**)& gtk_selection_owner_set_for_display },
	{ "gtk_selection_add_target",  cast(void**)& gtk_selection_add_target },
	{ "gtk_selection_add_targets",  cast(void**)& gtk_selection_add_targets },
	{ "gtk_selection_clear_targets",  cast(void**)& gtk_selection_clear_targets },
	{ "gtk_selection_convert",  cast(void**)& gtk_selection_convert },
	{ "gtk_selection_data_set",  cast(void**)& gtk_selection_data_set },
	{ "gtk_selection_data_set_text",  cast(void**)& gtk_selection_data_set_text },
	{ "gtk_selection_data_get_text",  cast(void**)& gtk_selection_data_get_text },
	{ "gtk_selection_data_get_targets",  cast(void**)& gtk_selection_data_get_targets },
	{ "gtk_selection_data_targets_include_text",  cast(void**)& gtk_selection_data_targets_include_text },
	{ "gtk_selection_remove_all",  cast(void**)& gtk_selection_remove_all },
	{ "gtk_separator_get_type",  cast(void**)& gtk_separator_get_type },
	{ "gtk_separator_menu_item_get_type",  cast(void**)& gtk_separator_menu_item_get_type },
	{ "gtk_separator_menu_item_new",  cast(void**)& gtk_separator_menu_item_new },
	{ "gtk_size_group_get_type",  cast(void**)& gtk_size_group_get_type },
	{ "gtk_size_group_new",  cast(void**)& gtk_size_group_new },
	{ "gtk_size_group_set_mode",  cast(void**)& gtk_size_group_set_mode },
	{ "gtk_size_group_get_mode",  cast(void**)& gtk_size_group_get_mode },
	{ "gtk_size_group_add_widget",  cast(void**)& gtk_size_group_add_widget },
	{ "gtk_size_group_remove_widget",  cast(void**)& gtk_size_group_remove_widget },
/+  // not available in win32 version
	{ "gtk_socket_get_type",  cast(void**)& gtk_socket_get_type },
	{ "gtk_socket_new",  cast(void**)& gtk_socket_new },
	{ "gtk_socket_steal",  cast(void**)& gtk_socket_steal },
	{ "gtk_socket_add_id",  cast(void**)& gtk_socket_add_id },
	{ "gtk_socket_get_id",  cast(void**)& gtk_socket_get_id },
+/
	{ "gtk_spin_button_get_type",  cast(void**)& gtk_spin_button_get_type },
	{ "gtk_spin_button_configure",  cast(void**)& gtk_spin_button_configure },
	{ "gtk_spin_button_new",  cast(void**)& gtk_spin_button_new },
	{ "gtk_spin_button_new_with_range",  cast(void**)& gtk_spin_button_new_with_range },
	{ "gtk_spin_button_set_adjustment",  cast(void**)& gtk_spin_button_set_adjustment },
	{ "gtk_spin_button_get_adjustment",  cast(void**)& gtk_spin_button_get_adjustment },
	{ "gtk_spin_button_set_digits",  cast(void**)& gtk_spin_button_set_digits },
	{ "gtk_spin_button_get_digits",  cast(void**)& gtk_spin_button_get_digits },
	{ "gtk_spin_button_set_increments",  cast(void**)& gtk_spin_button_set_increments },
	{ "gtk_spin_button_get_increments",  cast(void**)& gtk_spin_button_get_increments },
	{ "gtk_spin_button_set_range",  cast(void**)& gtk_spin_button_set_range },
	{ "gtk_spin_button_get_range",  cast(void**)& gtk_spin_button_get_range },
	{ "gtk_spin_button_get_value",  cast(void**)& gtk_spin_button_get_value },
	{ "gtk_spin_button_get_value_as_int",  cast(void**)& gtk_spin_button_get_value_as_int },
	{ "gtk_spin_button_set_value",  cast(void**)& gtk_spin_button_set_value },
	{ "gtk_spin_button_set_update_policy",  cast(void**)& gtk_spin_button_set_update_policy },
	{ "gtk_spin_button_get_update_policy",  cast(void**)& gtk_spin_button_get_update_policy },
	{ "gtk_spin_button_set_numeric",  cast(void**)& gtk_spin_button_set_numeric },
	{ "gtk_spin_button_get_numeric",  cast(void**)& gtk_spin_button_get_numeric },
	{ "gtk_spin_button_spin",  cast(void**)& gtk_spin_button_spin },
	{ "gtk_spin_button_set_wrap",  cast(void**)& gtk_spin_button_set_wrap },
	{ "gtk_spin_button_get_wrap",  cast(void**)& gtk_spin_button_get_wrap },
	{ "gtk_spin_button_set_snap_to_ticks",  cast(void**)& gtk_spin_button_set_snap_to_ticks },
	{ "gtk_spin_button_get_snap_to_ticks",  cast(void**)& gtk_spin_button_get_snap_to_ticks },
	{ "gtk_spin_button_update",  cast(void**)& gtk_spin_button_update },
	{ "gtk_statusbar_get_type",  cast(void**)& gtk_statusbar_get_type },
	{ "gtk_statusbar_new",  cast(void**)& gtk_statusbar_new },
	{ "gtk_statusbar_get_context_id",  cast(void**)& gtk_statusbar_get_context_id },
	{ "gtk_statusbar_push",  cast(void**)& gtk_statusbar_push },
	{ "gtk_statusbar_pop",  cast(void**)& gtk_statusbar_pop },
	{ "gtk_statusbar_remove",  cast(void**)& gtk_statusbar_remove },
	{ "gtk_statusbar_set_has_resize_grip",  cast(void**)& gtk_statusbar_set_has_resize_grip },
	{ "gtk_statusbar_get_has_resize_grip",  cast(void**)& gtk_statusbar_get_has_resize_grip },
	{ "gtk_table_get_type",  cast(void**)& gtk_table_get_type },
	{ "gtk_table_new",  cast(void**)& gtk_table_new },
	{ "gtk_table_attach_defaults",  cast(void**)& gtk_table_attach_defaults },
	{ "gtk_tearoff_menu_item_get_type",  cast(void**)& gtk_tearoff_menu_item_get_type },
	{ "gtk_tearoff_menu_item_new",  cast(void**)& gtk_tearoff_menu_item_new },
	{ "gtk_text_buffer_get_type",  cast(void**)& gtk_text_buffer_get_type },
	{ "gtk_text_buffer_new",  cast(void**)& gtk_text_buffer_new },
	{ "gtk_text_buffer_get_line_count",  cast(void**)& gtk_text_buffer_get_line_count },
	{ "gtk_text_buffer_get_char_count",  cast(void**)& gtk_text_buffer_get_char_count },
	{ "gtk_text_buffer_get_tag_table",  cast(void**)& gtk_text_buffer_get_tag_table },
	{ "gtk_text_buffer_set_text",  cast(void**)& gtk_text_buffer_set_text },
	{ "gtk_text_buffer_insert",  cast(void**)& gtk_text_buffer_insert },
	{ "gtk_text_buffer_insert_at_cursor",  cast(void**)& gtk_text_buffer_insert_at_cursor },
	{ "gtk_text_buffer_insert_interactive",  cast(void**)& gtk_text_buffer_insert_interactive },
	{ "gtk_text_buffer_insert_interactive_at_cursor",  cast(void**)& gtk_text_buffer_insert_interactive_at_cursor },
	{ "gtk_text_buffer_insert_range",  cast(void**)& gtk_text_buffer_insert_range },
	{ "gtk_text_buffer_insert_range_interactive",  cast(void**)& gtk_text_buffer_insert_range_interactive },
	{ "gtk_text_buffer_insert_with_tags",  cast(void**)& gtk_text_buffer_insert_with_tags },
	{ "gtk_text_buffer_insert_with_tags_by_name",  cast(void**)& gtk_text_buffer_insert_with_tags_by_name },
	{ "gtk_text_buffer_delete",  cast(void**)& gtk_text_buffer_delete },
	{ "gtk_text_buffer_delete_interactive",  cast(void**)& gtk_text_buffer_delete_interactive },
	{ "gtk_text_buffer_get_text",  cast(void**)& gtk_text_buffer_get_text },
	{ "gtk_text_buffer_get_slice",  cast(void**)& gtk_text_buffer_get_slice },
	{ "gtk_text_buffer_insert_pixbuf",  cast(void**)& gtk_text_buffer_insert_pixbuf },
	{ "gtk_text_buffer_insert_child_anchor",  cast(void**)& gtk_text_buffer_insert_child_anchor },
	{ "gtk_text_buffer_create_child_anchor",  cast(void**)& gtk_text_buffer_create_child_anchor },
	{ "gtk_text_buffer_create_mark",  cast(void**)& gtk_text_buffer_create_mark },
	{ "gtk_text_buffer_move_mark",  cast(void**)& gtk_text_buffer_move_mark },
	{ "gtk_text_buffer_delete_mark",  cast(void**)& gtk_text_buffer_delete_mark },
	{ "gtk_text_buffer_get_mark",  cast(void**)& gtk_text_buffer_get_mark },
	{ "gtk_text_buffer_move_mark_by_name",  cast(void**)& gtk_text_buffer_move_mark_by_name },
	{ "gtk_text_buffer_delete_mark_by_name",  cast(void**)& gtk_text_buffer_delete_mark_by_name },
	{ "gtk_text_buffer_get_insert",  cast(void**)& gtk_text_buffer_get_insert },
	{ "gtk_text_buffer_get_selection_bound",  cast(void**)& gtk_text_buffer_get_selection_bound },
	{ "gtk_text_buffer_place_cursor",  cast(void**)& gtk_text_buffer_place_cursor },
	{ "gtk_text_buffer_apply_tag",  cast(void**)& gtk_text_buffer_apply_tag },
	{ "gtk_text_buffer_remove_tag",  cast(void**)& gtk_text_buffer_remove_tag },
	{ "gtk_text_buffer_apply_tag_by_name",  cast(void**)& gtk_text_buffer_apply_tag_by_name },
	{ "gtk_text_buffer_remove_tag_by_name",  cast(void**)& gtk_text_buffer_remove_tag_by_name },
	{ "gtk_text_buffer_remove_all_tags",  cast(void**)& gtk_text_buffer_remove_all_tags },
	{ "gtk_text_buffer_create_tag",  cast(void**)& gtk_text_buffer_create_tag },
	{ "gtk_text_buffer_get_iter_at_line_offset",  cast(void**)& gtk_text_buffer_get_iter_at_line_offset },
	{ "gtk_text_buffer_get_iter_at_line_index",  cast(void**)& gtk_text_buffer_get_iter_at_line_index },
	{ "gtk_text_buffer_get_iter_at_offset",  cast(void**)& gtk_text_buffer_get_iter_at_offset },
	{ "gtk_text_buffer_get_iter_at_line",  cast(void**)& gtk_text_buffer_get_iter_at_line },
	{ "gtk_text_buffer_get_start_iter",  cast(void**)& gtk_text_buffer_get_start_iter },
	{ "gtk_text_buffer_get_end_iter",  cast(void**)& gtk_text_buffer_get_end_iter },
	{ "gtk_text_buffer_get_bounds",  cast(void**)& gtk_text_buffer_get_bounds },
	{ "gtk_text_buffer_get_iter_at_mark",  cast(void**)& gtk_text_buffer_get_iter_at_mark },
	{ "gtk_text_buffer_get_iter_at_child_anchor",  cast(void**)& gtk_text_buffer_get_iter_at_child_anchor },
	{ "gtk_text_buffer_get_modified",  cast(void**)& gtk_text_buffer_get_modified },
	{ "gtk_text_buffer_set_modified",  cast(void**)& gtk_text_buffer_set_modified },
	{ "gtk_text_buffer_add_selection_clipboard",  cast(void**)& gtk_text_buffer_add_selection_clipboard },
	{ "gtk_text_buffer_remove_selection_clipboard",  cast(void**)& gtk_text_buffer_remove_selection_clipboard },
	{ "gtk_text_buffer_cut_clipboard",  cast(void**)& gtk_text_buffer_cut_clipboard },
	{ "gtk_text_buffer_copy_clipboard",  cast(void**)& gtk_text_buffer_copy_clipboard },
	{ "gtk_text_buffer_paste_clipboard",  cast(void**)& gtk_text_buffer_paste_clipboard },
	{ "gtk_text_buffer_get_selection_bounds",  cast(void**)& gtk_text_buffer_get_selection_bounds },
	{ "gtk_text_buffer_delete_selection",  cast(void**)& gtk_text_buffer_delete_selection },
	{ "gtk_text_buffer_begin_user_action",  cast(void**)& gtk_text_buffer_begin_user_action },
	{ "gtk_text_buffer_end_user_action",  cast(void**)& gtk_text_buffer_end_user_action },
	{ "gtk_text_child_anchor_get_type",  cast(void**)& gtk_text_child_anchor_get_type },
	{ "gtk_text_child_anchor_new",  cast(void**)& gtk_text_child_anchor_new },
	{ "gtk_text_child_anchor_get_widgets",  cast(void**)& gtk_text_child_anchor_get_widgets },
	{ "gtk_text_child_anchor_get_deleted",  cast(void**)& gtk_text_child_anchor_get_deleted },
	{ "gtk_text_iter_get_buffer",  cast(void**)& gtk_text_iter_get_buffer },
	{ "gtk_text_iter_copy",  cast(void**)& gtk_text_iter_copy },
	{ "gtk_text_iter_free",  cast(void**)& gtk_text_iter_free },
	{ "gtk_text_iter_get_type",  cast(void**)& gtk_text_iter_get_type },
	{ "gtk_text_iter_get_offset",  cast(void**)& gtk_text_iter_get_offset },
	{ "gtk_text_iter_get_line",  cast(void**)& gtk_text_iter_get_line },
	{ "gtk_text_iter_get_line_offset",  cast(void**)& gtk_text_iter_get_line_offset },
	{ "gtk_text_iter_get_line_index",  cast(void**)& gtk_text_iter_get_line_index },
	{ "gtk_text_iter_get_visible_line_offset",  cast(void**)& gtk_text_iter_get_visible_line_offset },
	{ "gtk_text_iter_get_visible_line_index",  cast(void**)& gtk_text_iter_get_visible_line_index },
	{ "gtk_text_iter_get_char",  cast(void**)& gtk_text_iter_get_char },
	{ "gtk_text_iter_get_slice",  cast(void**)& gtk_text_iter_get_slice },
	{ "gtk_text_iter_get_text",  cast(void**)& gtk_text_iter_get_text },
	{ "gtk_text_iter_get_visible_slice",  cast(void**)& gtk_text_iter_get_visible_slice },
	{ "gtk_text_iter_get_visible_text",  cast(void**)& gtk_text_iter_get_visible_text },
	{ "gtk_text_iter_get_pixbuf",  cast(void**)& gtk_text_iter_get_pixbuf },
	{ "gtk_text_iter_get_marks",  cast(void**)& gtk_text_iter_get_marks },
	{ "gtk_text_iter_get_child_anchor",  cast(void**)& gtk_text_iter_get_child_anchor },
	{ "gtk_text_iter_get_toggled_tags",  cast(void**)& gtk_text_iter_get_toggled_tags },
	{ "gtk_text_iter_begins_tag",  cast(void**)& gtk_text_iter_begins_tag },
	{ "gtk_text_iter_ends_tag",  cast(void**)& gtk_text_iter_ends_tag },
	{ "gtk_text_iter_toggles_tag",  cast(void**)& gtk_text_iter_toggles_tag },
	{ "gtk_text_iter_has_tag",  cast(void**)& gtk_text_iter_has_tag },
	{ "gtk_text_iter_get_tags",  cast(void**)& gtk_text_iter_get_tags },
	{ "gtk_text_iter_editable",  cast(void**)& gtk_text_iter_editable },
	{ "gtk_text_iter_can_insert",  cast(void**)& gtk_text_iter_can_insert },
	{ "gtk_text_iter_starts_word",  cast(void**)& gtk_text_iter_starts_word },
	{ "gtk_text_iter_ends_word",  cast(void**)& gtk_text_iter_ends_word },
	{ "gtk_text_iter_inside_word",  cast(void**)& gtk_text_iter_inside_word },
	{ "gtk_text_iter_starts_sentence",  cast(void**)& gtk_text_iter_starts_sentence },
	{ "gtk_text_iter_ends_sentence",  cast(void**)& gtk_text_iter_ends_sentence },
	{ "gtk_text_iter_inside_sentence",  cast(void**)& gtk_text_iter_inside_sentence },
	{ "gtk_text_iter_starts_line",  cast(void**)& gtk_text_iter_starts_line },
	{ "gtk_text_iter_ends_line",  cast(void**)& gtk_text_iter_ends_line },
	{ "gtk_text_iter_is_cursor_position",  cast(void**)& gtk_text_iter_is_cursor_position },
	{ "gtk_text_iter_get_chars_in_line",  cast(void**)& gtk_text_iter_get_chars_in_line },
	{ "gtk_text_iter_get_bytes_in_line",  cast(void**)& gtk_text_iter_get_bytes_in_line },
	{ "gtk_text_iter_get_attributes",  cast(void**)& gtk_text_iter_get_attributes },
	{ "gtk_text_iter_get_language",  cast(void**)& gtk_text_iter_get_language },
	{ "gtk_text_iter_is_end",  cast(void**)& gtk_text_iter_is_end },
	{ "gtk_text_iter_is_start",  cast(void**)& gtk_text_iter_is_start },
	{ "gtk_text_iter_forward_char",  cast(void**)& gtk_text_iter_forward_char },
	{ "gtk_text_iter_backward_char",  cast(void**)& gtk_text_iter_backward_char },
	{ "gtk_text_iter_forward_chars",  cast(void**)& gtk_text_iter_forward_chars },
	{ "gtk_text_iter_backward_chars",  cast(void**)& gtk_text_iter_backward_chars },
	{ "gtk_text_iter_forward_line",  cast(void**)& gtk_text_iter_forward_line },
	{ "gtk_text_iter_backward_line",  cast(void**)& gtk_text_iter_backward_line },
	{ "gtk_text_iter_forward_lines",  cast(void**)& gtk_text_iter_forward_lines },
	{ "gtk_text_iter_backward_lines",  cast(void**)& gtk_text_iter_backward_lines },
	{ "gtk_text_iter_forward_word_end",  cast(void**)& gtk_text_iter_forward_word_end },
	{ "gtk_text_iter_backward_word_start",  cast(void**)& gtk_text_iter_backward_word_start },
	{ "gtk_text_iter_forward_word_ends",  cast(void**)& gtk_text_iter_forward_word_ends },
	{ "gtk_text_iter_backward_word_starts",  cast(void**)& gtk_text_iter_backward_word_starts },
	{ "gtk_text_iter_forward_sentence_end",  cast(void**)& gtk_text_iter_forward_sentence_end },
	{ "gtk_text_iter_backward_sentence_start",  cast(void**)& gtk_text_iter_backward_sentence_start },
	{ "gtk_text_iter_forward_sentence_ends",  cast(void**)& gtk_text_iter_forward_sentence_ends },
	{ "gtk_text_iter_backward_sentence_starts",  cast(void**)& gtk_text_iter_backward_sentence_starts },
	{ "gtk_text_iter_forward_cursor_position",  cast(void**)& gtk_text_iter_forward_cursor_position },
	{ "gtk_text_iter_backward_cursor_position",  cast(void**)& gtk_text_iter_backward_cursor_position },
	{ "gtk_text_iter_forward_cursor_positions",  cast(void**)& gtk_text_iter_forward_cursor_positions },
	{ "gtk_text_iter_backward_cursor_positions",  cast(void**)& gtk_text_iter_backward_cursor_positions },
	{ "gtk_text_iter_set_offset",  cast(void**)& gtk_text_iter_set_offset },
	{ "gtk_text_iter_set_line",  cast(void**)& gtk_text_iter_set_line },
	{ "gtk_text_iter_set_line_offset",  cast(void**)& gtk_text_iter_set_line_offset },
	{ "gtk_text_iter_set_line_index",  cast(void**)& gtk_text_iter_set_line_index },
	{ "gtk_text_iter_forward_to_end",  cast(void**)& gtk_text_iter_forward_to_end },
	{ "gtk_text_iter_forward_to_line_end",  cast(void**)& gtk_text_iter_forward_to_line_end },
	{ "gtk_text_iter_set_visible_line_offset",  cast(void**)& gtk_text_iter_set_visible_line_offset },
	{ "gtk_text_iter_set_visible_line_index",  cast(void**)& gtk_text_iter_set_visible_line_index },
	{ "gtk_text_iter_forward_to_tag_toggle",  cast(void**)& gtk_text_iter_forward_to_tag_toggle },
	{ "gtk_text_iter_backward_to_tag_toggle",  cast(void**)& gtk_text_iter_backward_to_tag_toggle },
	{ "gtk_text_iter_forward_search",  cast(void**)& gtk_text_iter_forward_search },
	{ "gtk_text_iter_backward_search",  cast(void**)& gtk_text_iter_backward_search },
	{ "gtk_text_iter_equal",  cast(void**)& gtk_text_iter_equal },
	{ "gtk_text_iter_compare",  cast(void**)& gtk_text_iter_compare },
	{ "gtk_text_iter_in_range",  cast(void**)& gtk_text_iter_in_range },
	{ "gtk_text_iter_order",  cast(void**)& gtk_text_iter_order },
	{ "gtk_text_mark_get_type",  cast(void**)& gtk_text_mark_get_type },
	{ "gtk_text_mark_set_visible",  cast(void**)& gtk_text_mark_set_visible },
	{ "gtk_text_mark_get_visible",  cast(void**)& gtk_text_mark_get_visible },
	{ "gtk_text_mark_get_name",  cast(void**)& gtk_text_mark_get_name },
	{ "gtk_text_mark_get_deleted",  cast(void**)& gtk_text_mark_get_deleted },
	{ "gtk_text_mark_get_buffer",  cast(void**)& gtk_text_mark_get_buffer },
	{ "gtk_text_mark_get_left_gravity",  cast(void**)& gtk_text_mark_get_left_gravity },
	{ "gtk_text_tag_get_type",  cast(void**)& gtk_text_tag_get_type },
	{ "gtk_text_tag_new",  cast(void**)& gtk_text_tag_new },
	{ "gtk_text_tag_get_priority",  cast(void**)& gtk_text_tag_get_priority },
	{ "gtk_text_tag_set_priority",  cast(void**)& gtk_text_tag_set_priority },
	{ "gtk_text_attributes_get_type",  cast(void**)& gtk_text_attributes_get_type },
	{ "gtk_text_attributes_new",  cast(void**)& gtk_text_attributes_new },
	{ "gtk_text_attributes_copy",  cast(void**)& gtk_text_attributes_copy },
	{ "gtk_text_attributes_copy_values",  cast(void**)& gtk_text_attributes_copy_values },
	{ "gtk_text_attributes_unref",  cast(void**)& gtk_text_attributes_unref },
	{ "gtk_text_attributes_ref",  cast(void**)& gtk_text_attributes_ref },
	{ "gtk_text_tag_table_get_type",  cast(void**)& gtk_text_tag_table_get_type },
	{ "gtk_text_tag_table_new",  cast(void**)& gtk_text_tag_table_new },
	{ "gtk_text_tag_table_add",  cast(void**)& gtk_text_tag_table_add },
	{ "gtk_text_tag_table_remove",  cast(void**)& gtk_text_tag_table_remove },
	{ "gtk_text_tag_table_lookup",  cast(void**)& gtk_text_tag_table_lookup },
	{ "gtk_text_tag_table_get_size",  cast(void**)& gtk_text_tag_table_get_size },
	{ "gtk_text_view_get_type",  cast(void**)& gtk_text_view_get_type },
	{ "gtk_text_view_new",  cast(void**)& gtk_text_view_new },
	{ "gtk_text_view_new_with_buffer",  cast(void**)& gtk_text_view_new_with_buffer },
	{ "gtk_text_view_set_buffer",  cast(void**)& gtk_text_view_set_buffer },
	{ "gtk_text_view_get_buffer",  cast(void**)& gtk_text_view_get_buffer },
	{ "gtk_text_view_scroll_to_iter",  cast(void**)& gtk_text_view_scroll_to_iter },
	{ "gtk_text_view_scroll_to_mark",  cast(void**)& gtk_text_view_scroll_to_mark },
	{ "gtk_text_view_scroll_mark_onscreen",  cast(void**)& gtk_text_view_scroll_mark_onscreen },
	{ "gtk_text_view_move_mark_onscreen",  cast(void**)& gtk_text_view_move_mark_onscreen },
	{ "gtk_text_view_place_cursor_onscreen",  cast(void**)& gtk_text_view_place_cursor_onscreen },
	{ "gtk_text_view_get_visible_rect",  cast(void**)& gtk_text_view_get_visible_rect },
	{ "gtk_text_view_set_cursor_visible",  cast(void**)& gtk_text_view_set_cursor_visible },
	{ "gtk_text_view_get_cursor_visible",  cast(void**)& gtk_text_view_get_cursor_visible },
	{ "gtk_text_view_get_iter_location",  cast(void**)& gtk_text_view_get_iter_location },
	{ "gtk_text_view_get_iter_at_location",  cast(void**)& gtk_text_view_get_iter_at_location },
	{ "gtk_text_view_get_line_yrange",  cast(void**)& gtk_text_view_get_line_yrange },
	{ "gtk_text_view_get_line_at_y",  cast(void**)& gtk_text_view_get_line_at_y },
	{ "gtk_text_view_buffer_to_window_coords",  cast(void**)& gtk_text_view_buffer_to_window_coords },
	{ "gtk_text_view_window_to_buffer_coords",  cast(void**)& gtk_text_view_window_to_buffer_coords },
	{ "gtk_text_view_get_window",  cast(void**)& gtk_text_view_get_window },
	{ "gtk_text_view_get_window_type",  cast(void**)& gtk_text_view_get_window_type },
	{ "gtk_text_view_set_border_window_size",  cast(void**)& gtk_text_view_set_border_window_size },
	{ "gtk_text_view_get_border_window_size",  cast(void**)& gtk_text_view_get_border_window_size },
	{ "gtk_text_view_forward_display_line",  cast(void**)& gtk_text_view_forward_display_line },
	{ "gtk_text_view_backward_display_line",  cast(void**)& gtk_text_view_backward_display_line },
	{ "gtk_text_view_forward_display_line_end",  cast(void**)& gtk_text_view_forward_display_line_end },
	{ "gtk_text_view_backward_display_line_start",  cast(void**)& gtk_text_view_backward_display_line_start },
	{ "gtk_text_view_starts_display_line",  cast(void**)& gtk_text_view_starts_display_line },
	{ "gtk_text_view_move_visually",  cast(void**)& gtk_text_view_move_visually },
	{ "gtk_text_view_add_child_at_anchor",  cast(void**)& gtk_text_view_add_child_at_anchor },
	{ "gtk_text_view_add_child_in_window", cast(void**)& gtk_text_view_add_child_in_window },
	{ "gtk_text_view_move_child", cast(void**)& gtk_text_view_move_child },
	{ "gtk_text_view_set_wrap_mode",  cast(void**)& gtk_text_view_set_wrap_mode },
	{ "gtk_text_view_get_wrap_mode",  cast(void**)& gtk_text_view_get_wrap_mode },
	{ "gtk_text_view_set_editable",  cast(void**)& gtk_text_view_set_editable },
	{ "gtk_text_view_get_editable",  cast(void**)& gtk_text_view_get_editable },
	{ "gtk_text_view_set_pixels_above_lines",  cast(void**)& gtk_text_view_set_pixels_above_lines },
	{ "gtk_text_view_get_pixels_above_lines",  cast(void**)& gtk_text_view_get_pixels_above_lines },
	{ "gtk_text_view_set_pixels_below_lines",  cast(void**)& gtk_text_view_set_pixels_below_lines },
	{ "gtk_text_view_get_pixels_below_lines",  cast(void**)& gtk_text_view_get_pixels_below_lines },
	{ "gtk_text_view_set_pixels_inside_wrap",  cast(void**)& gtk_text_view_set_pixels_inside_wrap },
	{ "gtk_text_view_get_pixels_inside_wrap",  cast(void**)& gtk_text_view_get_pixels_inside_wrap },
	{ "gtk_text_view_set_justification",  cast(void**)& gtk_text_view_set_justification },
	{ "gtk_text_view_get_justification",  cast(void**)& gtk_text_view_get_justification },
	{ "gtk_text_view_set_left_margin",  cast(void**)& gtk_text_view_set_left_margin },
	{ "gtk_text_view_get_left_margin",  cast(void**)& gtk_text_view_get_left_margin },
	{ "gtk_text_view_set_right_margin",  cast(void**)& gtk_text_view_set_right_margin },
	{ "gtk_text_view_get_right_margin",  cast(void**)& gtk_text_view_get_right_margin },
	{ "gtk_text_view_set_indent",  cast(void**)& gtk_text_view_set_indent },
	{ "gtk_text_view_get_indent",  cast(void**)& gtk_text_view_get_indent },
	{ "gtk_text_view_set_tabs",  cast(void**)& gtk_text_view_set_tabs },
	{ "gtk_text_view_get_tabs",  cast(void**)& gtk_text_view_get_tabs },
	{ "gtk_toggle_button_get_type",  cast(void**)& gtk_toggle_button_get_type },
	{ "gtk_toggle_button_new_with_label",  cast(void**)& gtk_toggle_button_new_with_label },
	{ "gtk_toggle_button_new",  cast(void**)& gtk_toggle_button_new },
	{ "gtk_toggle_button_new_with_mnemonic",  cast(void**)& gtk_toggle_button_new_with_mnemonic },
	{ "gtk_toggle_button_set_mode",  cast(void**)& gtk_toggle_button_set_mode },
	{ "gtk_toggle_button_get_mode",  cast(void**)& gtk_toggle_button_get_mode },
	{ "gtk_toggle_button_set_active",  cast(void**)& gtk_toggle_button_set_active },
	{ "gtk_toggle_button_get_active",  cast(void**)& gtk_toggle_button_get_active },
	{ "gtk_toggle_button_toggled",  cast(void**)& gtk_toggle_button_toggled },
	{ "gtk_toggle_button_set_inconsistent",  cast(void**)& gtk_toggle_button_set_inconsistent },
	{ "gtk_toggle_button_get_inconsistent",  cast(void**)& gtk_toggle_button_get_inconsistent },
	{ "gtk_toolbar_get_type",  cast(void**)& gtk_toolbar_get_type },
	{ "gtk_toolbar_new",  cast(void**)& gtk_toolbar_new },
	{ "gtk_tooltips_get_type",  cast(void**)& gtk_tooltips_get_type },
	{ "gtk_tooltips_new",  cast(void**)& gtk_tooltips_new },
	{ "gtk_tooltips_enable",  cast(void**)& gtk_tooltips_enable },
	{ "gtk_tooltips_disable",  cast(void**)& gtk_tooltips_disable },
	{ "gtk_tooltips_set_tip",  cast(void**)& gtk_tooltips_set_tip },
	{ "gtk_tooltips_force_window",  cast(void**)& gtk_tooltips_force_window },
	{ "gtk_tree_get_type",  cast(void**)& gtk_tree_get_type },
	{ "gtk_tree_new",  cast(void**)& gtk_tree_new },
	{ "gtk_tree_append",  cast(void**)& gtk_tree_append },
	{ "gtk_tree_prepend",  cast(void**)& gtk_tree_prepend },
	{ "gtk_tree_insert",  cast(void**)& gtk_tree_insert },
	{ "gtk_tree_remove_items",  cast(void**)& gtk_tree_remove_items },
	{ "gtk_tree_clear_items",  cast(void**)& gtk_tree_clear_items },
	{ "gtk_tree_select_item",  cast(void**)& gtk_tree_select_item },
	{ "gtk_tree_unselect_item",  cast(void**)& gtk_tree_unselect_item },
	{ "gtk_tree_select_child",  cast(void**)& gtk_tree_select_child },
	{ "gtk_tree_unselect_child",  cast(void**)& gtk_tree_unselect_child },
	{ "gtk_tree_child_position",  cast(void**)& gtk_tree_child_position },
	{ "gtk_tree_set_selection_mode",  cast(void**)& gtk_tree_set_selection_mode },
	{ "gtk_tree_set_view_mode",  cast(void**)& gtk_tree_set_view_mode },
	{ "gtk_tree_set_view_lines",  cast(void**)& gtk_tree_set_view_lines },
	{ "gtk_tree_item_get_type",  cast(void**)& gtk_tree_item_get_type },
	{ "gtk_tree_item_new",  cast(void**)& gtk_tree_item_new },
	{ "gtk_tree_item_new_with_label",  cast(void**)& gtk_tree_item_new_with_label },
	{ "gtk_tree_item_set_subtree",  cast(void**)& gtk_tree_item_set_subtree },
	{ "gtk_tree_item_remove_subtree",  cast(void**)& gtk_tree_item_remove_subtree },
	{ "gtk_tree_item_select",  cast(void**)& gtk_tree_item_select },
	{ "gtk_tree_item_deselect",  cast(void**)& gtk_tree_item_deselect },
	{ "gtk_tree_item_expand",  cast(void**)& gtk_tree_item_expand },
	{ "gtk_tree_item_collapse",  cast(void**)& gtk_tree_item_collapse },
	{ "gtk_tree_model_get_value",  cast(void**)& gtk_tree_model_get_value },
	{ "gtk_tree_model_get_path",  cast(void**)& gtk_tree_model_get_path },
	{ "gtk_tree_model_iter_parent",  cast(void**)& gtk_tree_model_iter_parent },
	{ "gtk_tree_model_get_iter_from_string",  cast(void**)& gtk_tree_model_get_iter_from_string },
	{ "gtk_tree_model_get_flags",  cast(void**)& gtk_tree_model_get_flags },
	{ "gtk_tree_model_get_n_columns",  cast(void**)& gtk_tree_model_get_n_columns },
	{ "gtk_tree_model_get_column_type",  cast(void**)& gtk_tree_model_get_column_type },
	{ "gtk_tree_model_get_iter",  cast(void**)& gtk_tree_model_get_iter },
	{ "gtk_tree_model_get_string_from_iter",  cast(void**)& gtk_tree_model_get_string_from_iter },
	{ "gtk_tree_model_get_iter_first",  cast(void**)& gtk_tree_model_get_iter_first },
	{ "gtk_tree_model_iter_next",  cast(void**)& gtk_tree_model_iter_next },
	{ "gtk_tree_model_iter_children",  cast(void**)& gtk_tree_model_iter_children },
	{ "gtk_tree_model_iter_has_child",  cast(void**)& gtk_tree_model_iter_has_child },
	{ "gtk_tree_model_iter_n_children",  cast(void**)& gtk_tree_model_iter_n_children },
	{ "gtk_tree_model_iter_nth_child",  cast(void**)& gtk_tree_model_iter_nth_child },
	{ "gtk_tree_model_ref_node",  cast(void**)& gtk_tree_model_ref_node },
	{ "gtk_tree_model_unref_node",  cast(void**)& gtk_tree_model_unref_node },
	{ "gtk_tree_model_get",  cast(void**)& gtk_tree_model_get },
	{ "gtk_tree_model_get_valist",  cast(void**)& gtk_tree_model_get_valist },
	{ "gtk_tree_path_get_type",  cast(void**)& gtk_tree_path_get_type },
	{ "gtk_tree_path_new",  cast(void**)& gtk_tree_path_new },
	{ "gtk_tree_path_new_from_string",  cast(void**)& gtk_tree_path_new_from_string },
	{ "gtk_tree_path_new_from_indices",  cast(void**)& gtk_tree_path_new_from_indices },
	{ "gtk_tree_path_to_string",  cast(void**)& gtk_tree_path_to_string },
	{ "gtk_tree_path_new_first",  cast(void**)& gtk_tree_path_new_first },
	{ "gtk_tree_path_append_index",  cast(void**)& gtk_tree_path_append_index },
	{ "gtk_tree_path_prepend_index",  cast(void**)& gtk_tree_path_prepend_index },
	{ "gtk_tree_path_get_depth",  cast(void**)& gtk_tree_path_get_depth },
	{ "gtk_tree_path_get_indices",  cast(void**)& gtk_tree_path_get_indices },
	{ "gtk_tree_path_free",  cast(void**)& gtk_tree_path_free },
	{ "gtk_tree_path_copy",  cast(void**)& gtk_tree_path_copy },
	{ "gtk_tree_path_compare",  cast(void**)& gtk_tree_path_compare },
	{ "gtk_tree_path_next",  cast(void**)& gtk_tree_path_next },
	{ "gtk_tree_path_prev",  cast(void**)& gtk_tree_path_prev },
	{ "gtk_tree_path_up",  cast(void**)& gtk_tree_path_up },
	{ "gtk_tree_path_down",  cast(void**)& gtk_tree_path_down },
	{ "gtk_tree_path_is_ancestor",  cast(void**)& gtk_tree_path_is_ancestor },
	{ "gtk_tree_path_is_descendant",  cast(void**)& gtk_tree_path_is_descendant },
	{ "gtk_tree_row_reference_get_type",  cast(void**)& gtk_tree_row_reference_get_type },
	{ "gtk_tree_row_reference_new",  cast(void**)& gtk_tree_row_reference_new },
	{ "gtk_tree_row_reference_new_proxy",  cast(void**)& gtk_tree_row_reference_new_proxy },
	{ "gtk_tree_row_reference_get_path",  cast(void**)& gtk_tree_row_reference_get_path },
	{ "gtk_tree_row_reference_valid",  cast(void**)& gtk_tree_row_reference_valid },
	{ "gtk_tree_row_reference_copy",  cast(void**)& gtk_tree_row_reference_copy },
	{ "gtk_tree_row_reference_free",  cast(void**)& gtk_tree_row_reference_free },
	{ "gtk_tree_row_reference_inserted",  cast(void**)& gtk_tree_row_reference_inserted },
	{ "gtk_tree_row_reference_deleted",  cast(void**)& gtk_tree_row_reference_deleted },
	{ "gtk_tree_row_reference_reordered",  cast(void**)& gtk_tree_row_reference_reordered },
	{ "gtk_tree_selection_get_type",  cast(void**)& gtk_tree_selection_get_type },
	{ "gtk_tree_selection_set_mode",  cast(void**)& gtk_tree_selection_set_mode },
	{ "gtk_tree_selection_get_mode",  cast(void**)& gtk_tree_selection_get_mode },
	{ "gtk_tree_selection_get_user_data",  cast(void**)& gtk_tree_selection_get_user_data },
	{ "gtk_tree_selection_get_tree_view",  cast(void**)& gtk_tree_selection_get_tree_view },
	{ "gtk_tree_selection_get_selected",  cast(void**)& gtk_tree_selection_get_selected },
	{ "gtk_tree_selection_get_selected_rows",  cast(void**)& gtk_tree_selection_get_selected_rows },
	{ "gtk_tree_selection_count_selected_rows",  cast(void**)& gtk_tree_selection_count_selected_rows },
	{ "gtk_tree_selection_select_path",  cast(void**)& gtk_tree_selection_select_path },
	{ "gtk_tree_selection_unselect_path",  cast(void**)& gtk_tree_selection_unselect_path },
	{ "gtk_tree_selection_select_iter",  cast(void**)& gtk_tree_selection_select_iter },
	{ "gtk_tree_selection_unselect_iter",  cast(void**)& gtk_tree_selection_unselect_iter },
	{ "gtk_tree_selection_path_is_selected",  cast(void**)& gtk_tree_selection_path_is_selected },
	{ "gtk_tree_selection_iter_is_selected",  cast(void**)& gtk_tree_selection_iter_is_selected },
	{ "gtk_tree_selection_select_all",  cast(void**)& gtk_tree_selection_select_all },
	{ "gtk_tree_selection_unselect_all",  cast(void**)& gtk_tree_selection_unselect_all },
	{ "gtk_tree_selection_select_range",  cast(void**)& gtk_tree_selection_select_range },
	{ "gtk_tree_selection_unselect_range",  cast(void**)& gtk_tree_selection_unselect_range },
	{ "gtk_tree_store_get_type",  cast(void**)& gtk_tree_store_get_type },
	{ "gtk_tree_store_new",  cast(void**)& gtk_tree_store_new },
	{ "gtk_tree_store_newv",  cast(void**)& gtk_tree_store_newv },
	{ "gtk_tree_store_set_column_types",  cast(void**)& gtk_tree_store_set_column_types },
	{ "gtk_tree_store_set_value",  cast(void**)& gtk_tree_store_set_value },
	{ "gtk_tree_store_set",  cast(void**)& gtk_tree_store_set },
	{ "gtk_tree_store_set_valist",  cast(void**)& gtk_tree_store_set_valist },
	{ "gtk_tree_store_remove",  cast(void**)& gtk_tree_store_remove },
	{ "gtk_tree_store_insert",  cast(void**)& gtk_tree_store_insert },
	{ "gtk_tree_store_insert_before",  cast(void**)& gtk_tree_store_insert_before },
	{ "gtk_tree_store_insert_after",  cast(void**)& gtk_tree_store_insert_after },
	{ "gtk_tree_store_prepend",  cast(void**)& gtk_tree_store_prepend },
	{ "gtk_tree_store_append",  cast(void**)& gtk_tree_store_append },
	{ "gtk_tree_store_is_ancestor",  cast(void**)& gtk_tree_store_is_ancestor },
	{ "gtk_tree_store_iter_depth",  cast(void**)& gtk_tree_store_iter_depth },
	{ "gtk_tree_store_clear",  cast(void**)& gtk_tree_store_clear },
	{ "gtk_tree_store_iter_is_valid",  cast(void**)& gtk_tree_store_iter_is_valid },
	{ "gtk_tree_store_reorder",  cast(void**)& gtk_tree_store_reorder },
	{ "gtk_tree_store_swap",  cast(void**)& gtk_tree_store_swap },
	{ "gtk_tree_store_move_before",  cast(void**)& gtk_tree_store_move_before },
	{ "gtk_tree_store_move_after",  cast(void**)& gtk_tree_store_move_after },
	{ "gtk_tree_view_get_type",  cast(void**)& gtk_tree_view_get_type },
	{ "gtk_tree_view_new",  cast(void**)& gtk_tree_view_new },
	{ "gtk_tree_view_new_with_model",  cast(void**)& gtk_tree_view_new_with_model },
	{ "gtk_tree_view_get_model",  cast(void**)& gtk_tree_view_get_model },
	{ "gtk_tree_view_set_model",  cast(void**)& gtk_tree_view_set_model },
	{ "gtk_tree_view_get_selection",  cast(void**)& gtk_tree_view_get_selection },
	{ "gtk_tree_view_get_hadjustment",  cast(void**)& gtk_tree_view_get_hadjustment },
	{ "gtk_tree_view_set_hadjustment",  cast(void**)& gtk_tree_view_set_hadjustment },
	{ "gtk_tree_view_get_vadjustment",  cast(void**)& gtk_tree_view_get_vadjustment },
	{ "gtk_tree_view_set_vadjustment",  cast(void**)& gtk_tree_view_set_vadjustment },
	{ "gtk_tree_view_get_headers_visible",  cast(void**)& gtk_tree_view_get_headers_visible },
	{ "gtk_tree_view_set_headers_visible",  cast(void**)& gtk_tree_view_set_headers_visible },
	{ "gtk_tree_view_columns_autosize",  cast(void**)& gtk_tree_view_columns_autosize },
	{ "gtk_tree_view_set_headers_clickable",  cast(void**)& gtk_tree_view_set_headers_clickable },
	{ "gtk_tree_view_set_rules_hint",  cast(void**)& gtk_tree_view_set_rules_hint },
	{ "gtk_tree_view_get_rules_hint",  cast(void**)& gtk_tree_view_get_rules_hint },
	{ "gtk_tree_view_append_column",  cast(void**)& gtk_tree_view_append_column },
	{ "gtk_tree_view_remove_column",  cast(void**)& gtk_tree_view_remove_column },
	{ "gtk_tree_view_insert_column",  cast(void**)& gtk_tree_view_insert_column },
	{ "gtk_tree_view_insert_column_with_attributes",  cast(void**)& gtk_tree_view_insert_column_with_attributes },
	{ "gtk_tree_view_insert_column_with_data_func",  cast(void**)& gtk_tree_view_insert_column_with_data_func },
	{ "gtk_tree_view_get_column",  cast(void**)& gtk_tree_view_get_column },
	{ "gtk_tree_view_get_columns",  cast(void**)& gtk_tree_view_get_columns },
	{ "gtk_tree_view_move_column_after",  cast(void**)& gtk_tree_view_move_column_after },
	{ "gtk_tree_view_set_expander_column",  cast(void**)& gtk_tree_view_set_expander_column },
	{ "gtk_tree_view_get_expander_column",  cast(void**)& gtk_tree_view_get_expander_column },
	{ "gtk_tree_view_set_column_drag_function",  cast(void**)& gtk_tree_view_set_column_drag_function },
	{ "gtk_tree_view_scroll_to_point",  cast(void**)& gtk_tree_view_scroll_to_point },
	{ "gtk_tree_view_scroll_to_cell",  cast(void**)& gtk_tree_view_scroll_to_cell },
	{ "gtk_tree_view_row_activated",  cast(void**)& gtk_tree_view_row_activated },
	{ "gtk_tree_view_expand_all",  cast(void**)& gtk_tree_view_expand_all },
	{ "gtk_tree_view_collapse_all",  cast(void**)& gtk_tree_view_collapse_all },
	{ "gtk_tree_view_expand_to_path",  cast(void**)& gtk_tree_view_expand_to_path },
	{ "gtk_tree_view_expand_row",  cast(void**)& gtk_tree_view_expand_row },
	{ "gtk_tree_view_collapse_row",  cast(void**)& gtk_tree_view_collapse_row },
	{ "gtk_tree_view_map_expanded_rows",  cast(void**)& gtk_tree_view_map_expanded_rows },
	{ "gtk_tree_view_row_expanded",  cast(void**)& gtk_tree_view_row_expanded },
	{ "gtk_tree_view_set_reorderable",  cast(void**)& gtk_tree_view_set_reorderable },
	{ "gtk_tree_view_get_reorderable",  cast(void**)& gtk_tree_view_get_reorderable },
	{ "gtk_tree_view_set_cursor",  cast(void**)& gtk_tree_view_set_cursor },
	{ "gtk_tree_view_set_cursor_on_cell",  cast(void**)& gtk_tree_view_set_cursor_on_cell },
	{ "gtk_tree_view_get_cursor",  cast(void**)& gtk_tree_view_get_cursor },
	{ "gtk_tree_view_get_bin_window",  cast(void**)& gtk_tree_view_get_bin_window },
	{ "gtk_tree_view_get_path_at_pos",  cast(void**)& gtk_tree_view_get_path_at_pos },
	{ "gtk_tree_view_get_cell_area",  cast(void**)& gtk_tree_view_get_cell_area },
	{ "gtk_tree_view_get_background_area",  cast(void**)& gtk_tree_view_get_background_area },
	{ "gtk_tree_view_get_visible_rect",  cast(void**)& gtk_tree_view_get_visible_rect },
	{ "gtk_tree_view_widget_to_tree_coords",  cast(void**)& gtk_tree_view_widget_to_tree_coords },
	{ "gtk_tree_view_tree_to_widget_coords",  cast(void**)& gtk_tree_view_tree_to_widget_coords },
	{ "gtk_tree_view_enable_model_drag_source",  cast(void**)& gtk_tree_view_enable_model_drag_source },
	{ "gtk_tree_view_enable_model_drag_dest",  cast(void**)& gtk_tree_view_enable_model_drag_dest },
	{ "gtk_tree_view_unset_rows_drag_source",  cast(void**)& gtk_tree_view_unset_rows_drag_source },
	{ "gtk_tree_view_unset_rows_drag_dest",  cast(void**)& gtk_tree_view_unset_rows_drag_dest },
	{ "gtk_tree_view_set_drag_dest_row",  cast(void**)& gtk_tree_view_set_drag_dest_row },
	{ "gtk_tree_view_get_drag_dest_row",  cast(void**)& gtk_tree_view_get_drag_dest_row },
	{ "gtk_tree_view_get_dest_row_at_pos",  cast(void**)& gtk_tree_view_get_dest_row_at_pos },
	{ "gtk_tree_view_create_row_drag_icon",  cast(void**)& gtk_tree_view_create_row_drag_icon },
	{ "gtk_tree_view_set_enable_search",  cast(void**)& gtk_tree_view_set_enable_search },
	{ "gtk_tree_view_get_enable_search",  cast(void**)& gtk_tree_view_get_enable_search },
	{ "gtk_tree_view_get_search_column",  cast(void**)& gtk_tree_view_get_search_column },
	{ "gtk_tree_view_set_search_column",  cast(void**)& gtk_tree_view_set_search_column },
	{ "gtk_tree_view_get_search_equal_func",  cast(void**)& gtk_tree_view_get_search_equal_func },
	{ "gtk_tree_view_set_search_equal_func",  cast(void**)& gtk_tree_view_set_search_equal_func },
	{ "gtk_tree_view_set_destroy_count_func",  cast(void**)& gtk_tree_view_set_destroy_count_func },
	{ "gtk_tree_view_column_get_type",  cast(void**)& gtk_tree_view_column_get_type },
	{ "gtk_tree_view_column_new",  cast(void**)& gtk_tree_view_column_new },
	{ "gtk_tree_view_column_new_with_attributes",  cast(void**)& gtk_tree_view_column_new_with_attributes },
	{ "gtk_tree_view_column_pack_start",  cast(void**)& gtk_tree_view_column_pack_start },
	{ "gtk_tree_view_column_pack_end",  cast(void**)& gtk_tree_view_column_pack_end },
	{ "gtk_tree_view_column_clear",  cast(void**)& gtk_tree_view_column_clear },
	{ "gtk_tree_view_column_get_cell_renderers",  cast(void**)& gtk_tree_view_column_get_cell_renderers },
	{ "gtk_tree_view_column_add_attribute",  cast(void**)& gtk_tree_view_column_add_attribute },
	{ "gtk_tree_view_column_set_attributes",  cast(void**)& gtk_tree_view_column_set_attributes },
	{ "gtk_tree_view_column_set_cell_data_func",  cast(void**)& gtk_tree_view_column_set_cell_data_func },
	{ "gtk_tree_view_column_clear_attributes",  cast(void**)& gtk_tree_view_column_clear_attributes },
	{ "gtk_tree_view_column_set_spacing",  cast(void**)& gtk_tree_view_column_set_spacing },
	{ "gtk_tree_view_column_get_spacing",  cast(void**)& gtk_tree_view_column_get_spacing },
	{ "gtk_tree_view_column_set_visible",  cast(void**)& gtk_tree_view_column_set_visible },
	{ "gtk_tree_view_column_get_visible",  cast(void**)& gtk_tree_view_column_get_visible },
	{ "gtk_tree_view_column_set_resizable",  cast(void**)& gtk_tree_view_column_set_resizable },
	{ "gtk_tree_view_column_get_resizable",  cast(void**)& gtk_tree_view_column_get_resizable },
	{ "gtk_tree_view_column_set_sizing",  cast(void**)& gtk_tree_view_column_set_sizing },
	{ "gtk_tree_view_column_get_sizing",  cast(void**)& gtk_tree_view_column_get_sizing },
	{ "gtk_tree_view_column_get_width",  cast(void**)& gtk_tree_view_column_get_width },
	{ "gtk_tree_view_column_get_fixed_width",  cast(void**)& gtk_tree_view_column_get_fixed_width },
	{ "gtk_tree_view_column_set_fixed_width",  cast(void**)& gtk_tree_view_column_set_fixed_width },
	{ "gtk_tree_view_column_set_min_width",  cast(void**)& gtk_tree_view_column_set_min_width },
	{ "gtk_tree_view_column_get_min_width",  cast(void**)& gtk_tree_view_column_get_min_width },
	{ "gtk_tree_view_column_set_max_width",  cast(void**)& gtk_tree_view_column_set_max_width },
	{ "gtk_tree_view_column_get_max_width",  cast(void**)& gtk_tree_view_column_get_max_width },
	{ "gtk_tree_view_column_clicked",  cast(void**)& gtk_tree_view_column_clicked },
	{ "gtk_tree_view_column_set_title",  cast(void**)& gtk_tree_view_column_set_title },
	{ "gtk_tree_view_column_get_title",  cast(void**)& gtk_tree_view_column_get_title },
	{ "gtk_tree_view_column_set_clickable",  cast(void**)& gtk_tree_view_column_set_clickable },
	{ "gtk_tree_view_column_get_clickable",  cast(void**)& gtk_tree_view_column_get_clickable },
	{ "gtk_tree_view_column_set_widget",  cast(void**)& gtk_tree_view_column_set_widget },
	{ "gtk_tree_view_column_get_widget",  cast(void**)& gtk_tree_view_column_get_widget },
	{ "gtk_tree_view_column_set_alignment",  cast(void**)& gtk_tree_view_column_set_alignment },
	{ "gtk_tree_view_column_get_alignment",  cast(void**)& gtk_tree_view_column_get_alignment },
	{ "gtk_tree_view_column_set_reorderable",  cast(void**)& gtk_tree_view_column_set_reorderable },
	{ "gtk_tree_view_column_get_reorderable",  cast(void**)& gtk_tree_view_column_get_reorderable },
	{ "gtk_tree_view_column_set_sort_column_id",  cast(void**)& gtk_tree_view_column_set_sort_column_id },
	{ "gtk_tree_view_column_get_sort_column_id",  cast(void**)& gtk_tree_view_column_get_sort_column_id },
	{ "gtk_tree_view_column_set_sort_indicator",  cast(void**)& gtk_tree_view_column_set_sort_indicator },
	{ "gtk_tree_view_column_get_sort_indicator",  cast(void**)& gtk_tree_view_column_get_sort_indicator },
	{ "gtk_tree_view_column_set_sort_order",  cast(void**)& gtk_tree_view_column_set_sort_order },
	{ "gtk_tree_view_column_get_sort_order",  cast(void**)& gtk_tree_view_column_get_sort_order },
	{ "gtk_tree_view_column_cell_set_cell_data",  cast(void**)& gtk_tree_view_column_cell_set_cell_data },
	{ "gtk_tree_view_column_cell_get_size",  cast(void**)& gtk_tree_view_column_cell_get_size },
	{ "gtk_tree_view_column_cell_is_visible",  cast(void**)& gtk_tree_view_column_cell_is_visible },
	{ "gtk_tree_view_column_focus_cell",  cast(void**)& gtk_tree_view_column_focus_cell },
	{ "gtk_tree_view_column_cell_get_position",  cast(void**)& gtk_tree_view_column_cell_get_position },
	{ "gtk_vbox_get_type",  cast(void**)& gtk_vbox_get_type },
	{ "gtk_vbox_new",  cast(void**)& gtk_vbox_new },
	{ "gtk_vbutton_box_get_type",  cast(void**)& gtk_vbutton_box_get_type },
	{ "gtk_vbutton_box_new",  cast(void**)& gtk_vbutton_box_new },
	{ "gtk_viewport_get_type",  cast(void**)& gtk_viewport_get_type },
	{ "gtk_viewport_new",  cast(void**)& gtk_viewport_new },
	{ "gtk_viewport_get_hadjustment",  cast(void**)& gtk_viewport_get_hadjustment },
	{ "gtk_viewport_get_vadjustment",  cast(void**)& gtk_viewport_get_vadjustment },
	{ "gtk_viewport_set_hadjustment",  cast(void**)& gtk_viewport_set_hadjustment },
	{ "gtk_viewport_set_vadjustment",  cast(void**)& gtk_viewport_set_vadjustment },
	{ "gtk_viewport_set_shadow_type",  cast(void**)& gtk_viewport_set_shadow_type },
	{ "gtk_viewport_get_shadow_type",  cast(void**)& gtk_viewport_get_shadow_type },
	{ "gtk_vpaned_get_type",  cast(void**)& gtk_vpaned_get_type },
	{ "gtk_vpaned_new",  cast(void**)& gtk_vpaned_new },
	{ "gtk_vruler_get_type",  cast(void**)& gtk_vruler_get_type },
	{ "gtk_vruler_new",  cast(void**)& gtk_vruler_new },
	{ "gtk_vscale_get_type",  cast(void**)& gtk_vscale_get_type },
	{ "gtk_vscale_new",  cast(void**)& gtk_vscale_new },
	{ "gtk_vscale_new_with_range",  cast(void**)& gtk_vscale_new_with_range },
	{ "gtk_vscrollbar_get_type",  cast(void**)& gtk_vscrollbar_get_type },
	{ "gtk_vscrollbar_new",  cast(void**)& gtk_vscrollbar_new },
	{ "gtk_vseparator_get_type",  cast(void**)& gtk_vseparator_get_type },
	{ "gtk_vseparator_new",  cast(void**)& gtk_vseparator_new },
	{ "gtk_widget_get_type",  cast(void**)& gtk_widget_get_type },
	{ "gtk_widget_new",  cast(void**)& gtk_widget_new },
	{ "gtk_widget_ref",  cast(void**)& gtk_widget_ref },
	{ "gtk_widget_unref",  cast(void**)& gtk_widget_unref },
	{ "gtk_widget_destroy",  cast(void**)& gtk_widget_destroy },
	{ "gtk_widget_destroyed",  cast(void**)& gtk_widget_destroyed },
	{ "gtk_widget_set",  cast(void**)& gtk_widget_set },
	{ "gtk_widget_unparent",  cast(void**)& gtk_widget_unparent },
	{ "gtk_widget_show",  cast(void**)& gtk_widget_show },
	{ "gtk_widget_show_now",  cast(void**)& gtk_widget_show_now },
	{ "gtk_widget_hide",  cast(void**)& gtk_widget_hide },
	{ "gtk_widget_show_all",  cast(void**)& gtk_widget_show_all },
	{ "gtk_widget_hide_all",  cast(void**)& gtk_widget_hide_all },
	{ "gtk_widget_map",  cast(void**)& gtk_widget_map },
	{ "gtk_widget_unmap",  cast(void**)& gtk_widget_unmap },
	{ "gtk_widget_realize",  cast(void**)& gtk_widget_realize },
	{ "gtk_widget_unrealize",  cast(void**)& gtk_widget_unrealize },
	{ "gtk_widget_queue_draw",  cast(void**)& gtk_widget_queue_draw },
	{ "gtk_widget_queue_draw_area",  cast(void**)& gtk_widget_queue_draw_area },
	{ "gtk_widget_queue_clear",  cast(void**)& gtk_widget_queue_clear },
	{ "gtk_widget_queue_clear_area",  cast(void**)& gtk_widget_queue_clear_area },
	{ "gtk_widget_queue_resize",  cast(void**)& gtk_widget_queue_resize },
	{ "gtk_widget_draw",  cast(void**)& gtk_widget_draw },
	{ "gtk_widget_size_request",  cast(void**)& gtk_widget_size_request },
	{ "gtk_widget_size_allocate",  cast(void**)& gtk_widget_size_allocate },
	{ "gtk_widget_get_child_requisition",  cast(void**)& gtk_widget_get_child_requisition },
	{ "gtk_widget_set_accel_path",  cast(void**)& gtk_widget_set_accel_path },
	{ "gtk_widget_list_accel_closures",  cast(void**)& gtk_widget_list_accel_closures },
	{ "gtk_widget_mnemonic_activate",  cast(void**)& gtk_widget_mnemonic_activate },
	{ "gtk_widget_activate",  cast(void**)& gtk_widget_activate },
	{ "gtk_widget_set_scroll_adjustments",  cast(void**)& gtk_widget_set_scroll_adjustments },
	{ "gtk_widget_reparent",  cast(void**)& gtk_widget_reparent },
	{ "gtk_widget_intersect",  cast(void**)& gtk_widget_intersect },
	{ "gtk_widget_region_intersect",  cast(void**)& gtk_widget_region_intersect },
	{ "gtk_widget_freeze_child_notify",  cast(void**)& gtk_widget_freeze_child_notify },
	{ "gtk_widget_child_notify",  cast(void**)& gtk_widget_child_notify },
	{ "gtk_widget_thaw_child_notify",  cast(void**)& gtk_widget_thaw_child_notify },
	{ "gtk_widget_is_focus",  cast(void**)& gtk_widget_is_focus },
	{ "gtk_widget_grab_focus",  cast(void**)& gtk_widget_grab_focus },
	{ "gtk_widget_grab_default",  cast(void**)& gtk_widget_grab_default },
	{ "gtk_widget_set_name",  cast(void**)& gtk_widget_set_name },
	{ "gtk_widget_get_name",  cast(void**)& gtk_widget_get_name },
	{ "gtk_widget_set_state",  cast(void**)& gtk_widget_set_state },
	{ "gtk_widget_set_sensitive",  cast(void**)& gtk_widget_set_sensitive },
	{ "gtk_widget_set_app_paintable",  cast(void**)& gtk_widget_set_app_paintable },
	{ "gtk_widget_set_double_buffered",  cast(void**)& gtk_widget_set_double_buffered },
	{ "gtk_widget_set_redraw_on_allocate",  cast(void**)& gtk_widget_set_redraw_on_allocate },
	{ "gtk_widget_set_parent",  cast(void**)& gtk_widget_set_parent },
	{ "gtk_widget_set_parent_window",  cast(void**)& gtk_widget_set_parent_window },
	{ "gtk_widget_set_child_visible",  cast(void**)& gtk_widget_set_child_visible },
	{ "gtk_widget_get_child_visible",  cast(void**)& gtk_widget_get_child_visible },
	{ "gtk_widget_get_parent",  cast(void**)& gtk_widget_get_parent },
	{ "gtk_widget_get_parent_window",  cast(void**)& gtk_widget_get_parent_window },
	{ "gtk_widget_child_focus",  cast(void**)& gtk_widget_child_focus },
	{ "gtk_widget_set_size_request",  cast(void**)& gtk_widget_set_size_request },
	{ "gtk_widget_get_size_request",  cast(void**)& gtk_widget_get_size_request },
	{ "gtk_widget_set_uposition",  cast(void**)& gtk_widget_set_uposition },
	{ "gtk_widget_set_usize",  cast(void**)& gtk_widget_set_usize },
	{ "gtk_widget_set_events",  cast(void**)& gtk_widget_set_events },
	{ "gtk_widget_add_events",  cast(void**)& gtk_widget_add_events },
	{ "gtk_widget_set_extension_events",  cast(void**)& gtk_widget_set_extension_events },
	{ "gtk_widget_get_extension_events",  cast(void**)& gtk_widget_get_extension_events },
	{ "gtk_widget_get_toplevel",  cast(void**)& gtk_widget_get_toplevel },
	{ "gtk_widget_get_ancestor",  cast(void**)& gtk_widget_get_ancestor },
	{ "gtk_widget_get_colormap",  cast(void**)& gtk_widget_get_colormap },
	{ "gtk_widget_get_visual",  cast(void**)& gtk_widget_get_visual },
	{ "gtk_widget_get_screen",  cast(void**)& gtk_widget_get_screen },
	{ "gtk_widget_has_screen",  cast(void**)& gtk_widget_has_screen },
	{ "gtk_widget_get_display",  cast(void**)& gtk_widget_get_display },
	{ "gtk_widget_get_root_window",  cast(void**)& gtk_widget_get_root_window },
	{ "gtk_widget_get_settings",  cast(void**)& gtk_widget_get_settings },
	{ "gtk_widget_get_clipboard",  cast(void**)& gtk_widget_get_clipboard },
	{ "gtk_widget_set_colormap",  cast(void**)& gtk_widget_set_colormap },
	{ "gtk_widget_get_events",  cast(void**)& gtk_widget_get_events },
	{ "gtk_widget_get_pointer",  cast(void**)& gtk_widget_get_pointer },
	{ "gtk_widget_is_ancestor",  cast(void**)& gtk_widget_is_ancestor },
	{ "gtk_widget_translate_coordinates",  cast(void**)& gtk_widget_translate_coordinates },
	{ "gtk_widget_hide_on_delete",  cast(void**)& gtk_widget_hide_on_delete },
	{ "gtk_widget_set_style",  cast(void**)& gtk_widget_set_style },
	{ "gtk_widget_ensure_style",  cast(void**)& gtk_widget_ensure_style },
	{ "gtk_widget_get_style",  cast(void**)& gtk_widget_get_style },
	{ "gtk_widget_modify_style",  cast(void**)& gtk_widget_modify_style },
	{ "gtk_widget_get_modifier_style",  cast(void**)& gtk_widget_get_modifier_style },
	{ "gtk_widget_modify_fg",  cast(void**)& gtk_widget_modify_fg },
	{ "gtk_widget_modify_bg",  cast(void**)& gtk_widget_modify_bg },
	{ "gtk_widget_modify_text",  cast(void**)& gtk_widget_modify_text },
	{ "gtk_widget_modify_base",  cast(void**)& gtk_widget_modify_base },
	{ "gtk_widget_modify_font",  cast(void**)& gtk_widget_modify_font },
	{ "gtk_widget_create_pango_context",  cast(void**)& gtk_widget_create_pango_context },
	{ "gtk_widget_get_pango_context",  cast(void**)& gtk_widget_get_pango_context },
	{ "gtk_widget_create_pango_layout",  cast(void**)& gtk_widget_create_pango_layout },
	{ "gtk_widget_render_icon",  cast(void**)& gtk_widget_render_icon },
	{ "gtk_widget_set_composite_name",  cast(void**)& gtk_widget_set_composite_name },
	{ "gtk_widget_get_composite_name",  cast(void**)& gtk_widget_get_composite_name },
	{ "gtk_widget_reset_rc_styles",  cast(void**)& gtk_widget_reset_rc_styles },
	{ "gtk_widget_push_colormap",  cast(void**)& gtk_widget_push_colormap },
	{ "gtk_widget_push_composite_child",  cast(void**)& gtk_widget_push_composite_child },
	{ "gtk_widget_pop_composite_child",  cast(void**)& gtk_widget_pop_composite_child },
	{ "gtk_widget_pop_colormap",  cast(void**)& gtk_widget_pop_colormap },
	{ "gtk_widget_style_get_property",  cast(void**)& gtk_widget_style_get_property },
	{ "gtk_widget_style_get",  cast(void**)& gtk_widget_style_get },
	{ "gtk_widget_set_default_colormap",  cast(void**)& gtk_widget_set_default_colormap },
	{ "gtk_widget_get_default_style",  cast(void**)& gtk_widget_get_default_style },
	{ "gtk_widget_get_default_colormap",  cast(void**)& gtk_widget_get_default_colormap },
	{ "gtk_widget_get_default_visual",  cast(void**)& gtk_widget_get_default_visual },
	{ "gtk_widget_set_direction",  cast(void**)& gtk_widget_set_direction },
	{ "gtk_widget_get_direction",  cast(void**)& gtk_widget_get_direction },
	{ "gtk_widget_set_default_direction",  cast(void**)& gtk_widget_set_default_direction },
	{ "gtk_widget_get_default_direction",  cast(void**)& gtk_widget_get_default_direction },
	{ "gtk_widget_shape_combine_mask",  cast(void**)& gtk_widget_shape_combine_mask },
	{ "gtk_widget_reset_shapes",  cast(void**)& gtk_widget_reset_shapes },
	{ "gtk_widget_path",  cast(void**)& gtk_widget_path },
	{ "gtk_widget_class_path",  cast(void**)& gtk_widget_class_path },
	{ "gtk_requisition_get_type",  cast(void**)& gtk_requisition_get_type },
	{ "gtk_requisition_copy",  cast(void**)& gtk_requisition_copy },
	{ "gtk_requisition_free",  cast(void**)& gtk_requisition_free },
	{ "gtk_window_get_type",  cast(void**)& gtk_window_get_type },
	{ "gtk_window_new",  cast(void**)& gtk_window_new },
	{ "gtk_window_set_title",  cast(void**)& gtk_window_set_title },
	{ "gtk_window_get_title",  cast(void**)& gtk_window_get_title },
	{ "gtk_window_set_wmclass",  cast(void**)& gtk_window_set_wmclass },
	{ "gtk_window_set_role",  cast(void**)& gtk_window_set_role },
	{ "gtk_window_get_role",  cast(void**)& gtk_window_get_role },
	{ "gtk_window_add_accel_group",  cast(void**)& gtk_window_add_accel_group },
	{ "gtk_window_remove_accel_group",  cast(void**)& gtk_window_remove_accel_group },
	{ "gtk_window_set_position",  cast(void**)& gtk_window_set_position },
	{ "gtk_window_activate_focus",  cast(void**)& gtk_window_activate_focus },
	{ "gtk_window_set_focus",  cast(void**)& gtk_window_set_focus },
	{ "gtk_window_get_focus",  cast(void**)& gtk_window_get_focus },
	{ "gtk_window_set_default",  cast(void**)& gtk_window_set_default },
	{ "gtk_window_activate_default",  cast(void**)& gtk_window_activate_default },
	{ "gtk_window_set_transient_for",  cast(void**)& gtk_window_set_transient_for },
	{ "gtk_window_get_transient_for",  cast(void**)& gtk_window_get_transient_for },
	{ "gtk_window_set_type_hint",  cast(void**)& gtk_window_set_type_hint },
	{ "gtk_window_get_type_hint",  cast(void**)& gtk_window_get_type_hint },
	{ "gtk_window_set_skip_taskbar_hint",  cast(void**)& gtk_window_set_skip_taskbar_hint },
	{ "gtk_window_get_skip_taskbar_hint",  cast(void**)& gtk_window_get_skip_taskbar_hint },
	{ "gtk_window_set_skip_pager_hint",  cast(void**)& gtk_window_set_skip_pager_hint },
	{ "gtk_window_get_skip_pager_hint",  cast(void**)& gtk_window_get_skip_pager_hint },
	{ "gtk_window_set_destroy_with_parent",  cast(void**)& gtk_window_set_destroy_with_parent },
	{ "gtk_window_get_destroy_with_parent",  cast(void**)& gtk_window_get_destroy_with_parent },
	{ "gtk_window_set_resizable",  cast(void**)& gtk_window_set_resizable },
	{ "gtk_window_get_resizable",  cast(void**)& gtk_window_get_resizable },
	{ "gtk_window_set_gravity",  cast(void**)& gtk_window_set_gravity },
	{ "gtk_window_get_gravity",  cast(void**)& gtk_window_get_gravity },
	{ "gtk_window_set_geometry_hints",  cast(void**)& gtk_window_set_geometry_hints },
	{ "gtk_window_set_screen",  cast(void**)& gtk_window_set_screen },
	{ "gtk_window_get_screen",  cast(void**)& gtk_window_get_screen },
	{ "gtk_window_set_has_frame",  cast(void**)& gtk_window_set_has_frame },
	{ "gtk_window_get_has_frame",  cast(void**)& gtk_window_get_has_frame },
	{ "gtk_window_set_frame_dimensions",  cast(void**)& gtk_window_set_frame_dimensions },
	{ "gtk_window_get_frame_dimensions",  cast(void**)& gtk_window_get_frame_dimensions },
	{ "gtk_window_set_decorated",  cast(void**)& gtk_window_set_decorated },
	{ "gtk_window_get_decorated",  cast(void**)& gtk_window_get_decorated },
	{ "gtk_window_set_icon_list",  cast(void**)& gtk_window_set_icon_list },
	{ "gtk_window_get_icon_list",  cast(void**)& gtk_window_get_icon_list },
	{ "gtk_window_set_icon",  cast(void**)& gtk_window_set_icon },
	{ "gtk_window_set_icon_from_file",  cast(void**)& gtk_window_set_icon_from_file },
	{ "gtk_window_get_icon",  cast(void**)& gtk_window_get_icon },
	{ "gtk_window_set_default_icon_list",  cast(void**)& gtk_window_set_default_icon_list },
	{ "gtk_window_get_default_icon_list",  cast(void**)& gtk_window_get_default_icon_list },
	{ "gtk_window_set_default_icon_from_file",  cast(void**)& gtk_window_set_default_icon_from_file },
	{ "gtk_window_set_auto_startup_notification",  cast(void**)& gtk_window_set_auto_startup_notification },
	{ "gtk_window_set_modal",  cast(void**)& gtk_window_set_modal },
	{ "gtk_window_get_modal",  cast(void**)& gtk_window_get_modal },
	{ "gtk_window_list_toplevels",  cast(void**)& gtk_window_list_toplevels },
	{ "gtk_window_add_mnemonic",  cast(void**)& gtk_window_add_mnemonic },
	{ "gtk_window_remove_mnemonic",  cast(void**)& gtk_window_remove_mnemonic },
	{ "gtk_window_mnemonic_activate",  cast(void**)& gtk_window_mnemonic_activate },
	{ "gtk_window_set_mnemonic_modifier",  cast(void**)& gtk_window_set_mnemonic_modifier },
	{ "gtk_window_get_mnemonic_modifier",  cast(void**)& gtk_window_get_mnemonic_modifier },
	{ "gtk_window_present",  cast(void**)& gtk_window_present },
	{ "gtk_window_iconify",  cast(void**)& gtk_window_iconify },
	{ "gtk_window_deiconify",  cast(void**)& gtk_window_deiconify },
	{ "gtk_window_stick",  cast(void**)& gtk_window_stick },
	{ "gtk_window_unstick",  cast(void**)& gtk_window_unstick },
	{ "gtk_window_maximize",  cast(void**)& gtk_window_maximize },
	{ "gtk_window_unmaximize",  cast(void**)& gtk_window_unmaximize },
	{ "gtk_window_fullscreen",  cast(void**)& gtk_window_fullscreen },
	{ "gtk_window_unfullscreen",  cast(void**)& gtk_window_unfullscreen },
	{ "gtk_window_begin_resize_drag",  cast(void**)& gtk_window_begin_resize_drag },
	{ "gtk_window_begin_move_drag",  cast(void**)& gtk_window_begin_move_drag },
	{ "gtk_window_set_default_size",  cast(void**)& gtk_window_set_default_size },
	{ "gtk_window_get_default_size",  cast(void**)& gtk_window_get_default_size },
	{ "gtk_window_resize",  cast(void**)& gtk_window_resize },
	{ "gtk_window_get_size",  cast(void**)& gtk_window_get_size },
	{ "gtk_window_move",  cast(void**)& gtk_window_move },
	{ "gtk_window_get_position",  cast(void**)& gtk_window_get_position },
	{ "gtk_window_parse_geometry",  cast(void**)& gtk_window_parse_geometry },
	{ "gtk_window_reshow_with_initial_size",  cast(void**)& gtk_window_reshow_with_initial_size },
	{ "gtk_window_group_get_type",  cast(void**)& gtk_window_group_get_type },
	{ "gtk_window_group_new",  cast(void**)& gtk_window_group_new },
	{ "gtk_window_group_add_window",  cast(void**)& gtk_window_group_add_window },
	{ "gtk_window_group_remove_window",  cast(void**)& gtk_window_group_remove_window },
	{ "gtk_table_resize", cast(void**)& gtk_table_resize },
	{ "gtk_table_attach",  cast(void**)& gtk_table_attach },
	{ "gtk_table_set_row_spacing",  cast(void**)& gtk_table_set_row_spacing },
	{ "gtk_table_get_row_spacing",  cast(void**)& gtk_table_get_row_spacing },
	{ "gtk_table_set_col_spacing",  cast(void**)& gtk_table_set_col_spacing },
	{ "gtk_table_get_col_spacing",  cast(void**)& gtk_table_get_col_spacing },
	{ "gtk_table_set_row_spacings",  cast(void**)& gtk_table_set_row_spacings },
	{ "gtk_table_get_default_row_spacing",  cast(void**)& gtk_table_get_default_row_spacing },
	{ "gtk_table_set_col_spacings",  cast(void**)& gtk_table_set_col_spacings },
	{ "gtk_table_get_default_col_spacing",  cast(void**)& gtk_table_get_default_col_spacing },
	{ "gtk_table_set_homogeneous",  cast(void**)& gtk_table_set_homogeneous },
	{ "gtk_table_get_homogeneous",  cast(void**)& gtk_table_get_homogeneous },
	{ "gtk_toolbar_append_item",  cast(void**)& gtk_toolbar_append_item },
	{ "gtk_toolbar_prepend_item",  cast(void**)& gtk_toolbar_prepend_item },
	{ "gtk_toolbar_insert_item",  cast(void**)& gtk_toolbar_insert_item },
	{ "gtk_toolbar_insert_stock",  cast(void**)& gtk_toolbar_insert_stock },
	{ "gtk_toolbar_append_space",  cast(void**)& gtk_toolbar_append_space },
	{ "gtk_toolbar_prepend_space",  cast(void**)& gtk_toolbar_prepend_space },
	{ "gtk_toolbar_insert_space",  cast(void**)& gtk_toolbar_insert_space },
	{ "gtk_toolbar_remove_space",  cast(void**)& gtk_toolbar_remove_space },
	{ "gtk_toolbar_append_element",  cast(void**)& gtk_toolbar_append_element },
	{ "gtk_toolbar_prepend_element",  cast(void**)& gtk_toolbar_prepend_element },
	{ "gtk_toolbar_insert_element",  cast(void**)& gtk_toolbar_insert_element },
	{ "gtk_toolbar_append_widget",  cast(void**)& gtk_toolbar_append_widget },
	{ "gtk_toolbar_prepend_widget",  cast(void**)& gtk_toolbar_prepend_widget },
	{ "gtk_toolbar_insert_widget",  cast(void**)& gtk_toolbar_insert_widget },
	{ "gtk_toolbar_set_orientation",  cast(void**)& gtk_toolbar_set_orientation },
	{ "gtk_toolbar_set_style",  cast(void**)& gtk_toolbar_set_style },
	{ "gtk_toolbar_set_icon_size",  cast(void**)& gtk_toolbar_set_icon_size },
	{ "gtk_toolbar_set_tooltips",  cast(void**)& gtk_toolbar_set_tooltips },
	{ "gtk_toolbar_unset_style",  cast(void**)& gtk_toolbar_unset_style },
	{ "gtk_toolbar_unset_icon_size",  cast(void**)& gtk_toolbar_unset_icon_size },
	{ "gtk_toolbar_get_orientation",  cast(void**)& gtk_toolbar_get_orientation },
	{ "gtk_toolbar_get_style",  cast(void**)& gtk_toolbar_get_style },
	{ "gtk_toolbar_get_icon_size",  cast(void**)& gtk_toolbar_get_icon_size },
	{ "gtk_toolbar_get_tooltips",  cast(void**)& gtk_toolbar_get_tooltips },
	{ "gtk_calendar_new",  cast(void**)& gtk_calendar_new },
	{ "gtk_calendar_select_month",  cast(void**)& gtk_calendar_select_month },
	{ "gtk_calendar_select_day",  cast(void**)& gtk_calendar_select_day },
	{ "gtk_calendar_mark_day",  cast(void**)& gtk_calendar_mark_day },
	{ "gtk_calendar_unmark_day",  cast(void**)& gtk_calendar_unmark_day },
	{ "gtk_calendar_clear_marks",  cast(void**)& gtk_calendar_clear_marks },
	{ "gtk_calendar_display_options",  cast(void**)& gtk_calendar_display_options },
	{ "gtk_calendar_get_date",  cast(void**)& gtk_calendar_get_date },
	{ "gtk_calendar_freeze",  cast(void**)& gtk_calendar_freeze },
	{ "gtk_calendar_thaw",  cast(void**)& gtk_calendar_thaw },
	{ "gtk_entry_new",  cast(void**)& gtk_entry_new },
	{ "gtk_entry_set_visibility",  cast(void**)& gtk_entry_set_visibility },
	{ "gtk_entry_get_visibility",  cast(void**)& gtk_entry_get_visibility },
	{ "gtk_entry_set_invisible_char",  cast(void**)& gtk_entry_set_invisible_char },
	{ "gtk_entry_get_invisible_char",  cast(void**)& gtk_entry_get_invisible_char },
	{ "gtk_entry_set_has_frame",  cast(void**)& gtk_entry_set_has_frame },
	{ "gtk_entry_get_has_frame",  cast(void**)& gtk_entry_get_has_frame },
	{ "gtk_entry_set_max_length",  cast(void**)& gtk_entry_set_max_length },
	{ "gtk_entry_get_max_length",  cast(void**)& gtk_entry_get_max_length },
	{ "gtk_entry_set_activates_default",  cast(void**)& gtk_entry_set_activates_default },
	{ "gtk_entry_get_activates_default",  cast(void**)& gtk_entry_get_activates_default },
	{ "gtk_entry_set_width_chars",  cast(void**)& gtk_entry_set_width_chars },
	{ "gtk_entry_get_width_chars",  cast(void**)& gtk_entry_get_width_chars },
	{ "gtk_entry_set_text",  cast(void**)& gtk_entry_set_text },
	{ "gtk_entry_get_text",  cast(void**)& gtk_entry_get_text },
	{ "gtk_entry_get_layout",  cast(void**)& gtk_entry_get_layout },
	{ "gtk_entry_get_layout_offsets",  cast(void**)& gtk_entry_get_layout_offsets },
	{ "gtk_list_extend_selection",  cast(void**)& gtk_list_extend_selection },
	{ "gtk_list_start_selection",  cast(void**)& gtk_list_start_selection },
	{ "gtk_list_end_selection",  cast(void**)& gtk_list_end_selection },
	{ "gtk_list_select_all",  cast(void**)& gtk_list_select_all },
	{ "gtk_list_unselect_all",  cast(void**)& gtk_list_unselect_all },
	{ "gtk_list_scroll_horizontal",  cast(void**)& gtk_list_scroll_horizontal },
	{ "gtk_list_scroll_vertical",  cast(void**)& gtk_list_scroll_vertical },
	{ "gtk_list_toggle_add_mode",  cast(void**)& gtk_list_toggle_add_mode },
	{ "gtk_list_toggle_focus_row",  cast(void**)& gtk_list_toggle_focus_row },
	{ "gtk_list_toggle_row",  cast(void**)& gtk_list_toggle_row },
	{ "gtk_list_undo_selection",  cast(void**)& gtk_list_undo_selection },
	{ "gtk_list_end_drag_selection",  cast(void**)& gtk_list_end_drag_selection },
	{ "gtk_container_set_border_width",  cast(void**)& gtk_container_set_border_width },
	{ "gtk_container_get_border_width",  cast(void**)& gtk_container_get_border_width },
	{ "gtk_container_add",  cast(void**)& gtk_container_add },
	{ "gtk_container_remove",  cast(void**)& gtk_container_remove },
	{ "gtk_container_set_resize_mode",  cast(void**)& gtk_container_set_resize_mode },
	{ "gtk_container_get_resize_mode",  cast(void**)& gtk_container_get_resize_mode },
	{ "gtk_container_check_resize",  cast(void**)& gtk_container_check_resize },
	{ "gtk_container_foreach",  cast(void**)& gtk_container_foreach },
	{ "gtk_container_foreach_full",  cast(void**)& gtk_container_foreach_full },
	{ "gtk_container_get_children",  cast(void**)& gtk_container_get_children },
	{ "gtk_container_propagate_expose",  cast(void**)& gtk_container_propagate_expose },
	{ "gtk_container_set_focus_chain",  cast(void**)& gtk_container_set_focus_chain },
	{ "gtk_container_get_focus_chain",  cast(void**)& gtk_container_get_focus_chain },
	{ "gtk_container_unset_focus_chain",  cast(void**)& gtk_container_unset_focus_chain },
	{ "gtk_container_set_reallocate_redraws",  cast(void**)& gtk_container_set_reallocate_redraws },
	{ "gtk_container_set_focus_child",  cast(void**)& gtk_container_set_focus_child },
	{ "gtk_container_set_focus_vadjustment",  cast(void**)& gtk_container_set_focus_vadjustment },
	{ "gtk_container_get_focus_vadjustment",  cast(void**)& gtk_container_get_focus_vadjustment },
	{ "gtk_container_set_focus_hadjustment",  cast(void**)& gtk_container_set_focus_hadjustment },
	{ "gtk_container_get_focus_hadjustment",  cast(void**)& gtk_container_get_focus_hadjustment },
	{ "gtk_container_resize_children",  cast(void**)& gtk_container_resize_children },
	{ "gtk_container_child_type",  cast(void**)& gtk_container_child_type },
	{ "gtk_container_add_with_properties",  cast(void**)& gtk_container_add_with_properties },
	{ "gtk_container_child_set",  cast(void**)& gtk_container_child_set },
	{ "gtk_container_child_get",  cast(void**)& gtk_container_child_get },
	{ "gtk_container_child_set_valist",  cast(void**)& gtk_container_child_set_valist },
	{ "gtk_container_child_get_valist",  cast(void**)& gtk_container_child_get_valist },
	{ "gtk_container_child_set_property",  cast(void**)& gtk_container_child_set_property },
	{ "gtk_container_child_get_property",  cast(void**)& gtk_container_child_get_property },
	{ "gtk_container_forall",  cast(void**)& gtk_container_forall },
	{ "gtk_notebook_get_current_page",  cast(void**)& gtk_notebook_get_current_page },
	{ "gtk_notebook_get_nth_page",  cast(void**)& gtk_notebook_get_nth_page },
	{ "gtk_notebook_get_n_pages",  cast(void**)& gtk_notebook_get_n_pages },
	{ "gtk_notebook_page_num",  cast(void**)& gtk_notebook_page_num },
	{ "gtk_notebook_set_current_page",  cast(void**)& gtk_notebook_set_current_page },
	{ "gtk_notebook_next_page",  cast(void**)& gtk_notebook_next_page },
	{ "gtk_notebook_prev_page",  cast(void**)& gtk_notebook_prev_page },
	{ "gtk_notebook_set_show_border",  cast(void**)& gtk_notebook_set_show_border },
	{ "gtk_notebook_get_show_border",  cast(void**)& gtk_notebook_get_show_border },
	{ "gtk_notebook_set_show_tabs",  cast(void**)& gtk_notebook_set_show_tabs },
	{ "gtk_notebook_get_show_tabs",  cast(void**)& gtk_notebook_get_show_tabs },
	{ "gtk_notebook_set_tab_pos",  cast(void**)& gtk_notebook_set_tab_pos },
	{ "gtk_notebook_get_tab_pos",  cast(void**)& gtk_notebook_get_tab_pos },
	{ "gtk_notebook_set_scrollable",  cast(void**)& gtk_notebook_set_scrollable },
	{ "gtk_notebook_get_scrollable",  cast(void**)& gtk_notebook_get_scrollable },
	{ "gtk_notebook_popup_enable",  cast(void**)& gtk_notebook_popup_enable },
	{ "gtk_notebook_popup_disable",  cast(void**)& gtk_notebook_popup_disable },
	{ "gtk_notebook_get_tab_label",  cast(void**)& gtk_notebook_get_tab_label },
	{ "gtk_notebook_set_tab_label",  cast(void**)& gtk_notebook_set_tab_label },
	{ "gtk_notebook_set_tab_label_text",  cast(void**)& gtk_notebook_set_tab_label_text },
	{ "gtk_notebook_get_tab_label_text",  cast(void**)& gtk_notebook_get_tab_label_text },
	{ "gtk_notebook_get_menu_label",  cast(void**)& gtk_notebook_get_menu_label },
	{ "gtk_notebook_set_menu_label",  cast(void**)& gtk_notebook_set_menu_label },
	{ "gtk_notebook_set_menu_label_text",  cast(void**)& gtk_notebook_set_menu_label_text },
	{ "gtk_notebook_get_menu_label_text",  cast(void**)& gtk_notebook_get_menu_label_text },
	{ "gtk_notebook_query_tab_label_packing",  cast(void**)& gtk_notebook_query_tab_label_packing },
	{ "gtk_notebook_set_tab_label_packing",  cast(void**)& gtk_notebook_set_tab_label_packing },
	{ "gtk_notebook_reorder_child",  cast(void**)& gtk_notebook_reorder_child },
	{ "gtk_check_version", cast(void**)& gtk_check_version }
];
	
version(linux)
{
	Symbol[] gtkPlugLinks = [
		{ "gtk_plug_get_type",  cast(void**)& gtk_plug_get_type },
		{ "gtk_plug_construct",  cast(void**)& gtk_plug_construct },
		{ "gtk_plug_construct_for_display",  cast(void**)& gtk_plug_construct_for_display },
		{ "gtk_plug_new",  cast(void**)& gtk_plug_new },
		{ "gtk_plug_new_for_display",  cast(void**)& gtk_plug_new_for_display },
		{ "gtk_plug_get_id",  cast(void**)& gtk_plug_get_id }
	];
	
	Symbol[] gtkSocketLinks = [
		{ "gtk_socket_get_type",  cast(void**)& gtk_socket_get_type },
		{ "gtk_socket_new",  cast(void**)& gtk_socket_new },
		{ "gtk_socket_steal",  cast(void**)& gtk_socket_steal },
		{ "gtk_socket_add_id",  cast(void**)& gtk_socket_add_id },
		{ "gtk_socket_get_id",  cast(void**)& gtk_socket_get_id }
	];
}