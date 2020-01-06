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


module gdk.c.functions;

import std.stdio;
import gdk.c.types;
import cairo.c.types;

version (Windows)
	static immutable LIBRARY_GDK = ["libgdk-3-0.dll;gdk-3-3.0.dll;gdk-3.dll"];
else version (OSX)
	static immutable LIBRARY_GDK = ["libgdk-3.0.dylib"];
else
	static immutable LIBRARY_GDK = ["libgdk-3.so.0"];

__gshared extern(C)
{

	// gdk.AppLaunchContext

	GType gdk_app_launch_context_get_type();
	GdkAppLaunchContext* gdk_app_launch_context_new();
	void gdk_app_launch_context_set_desktop(GdkAppLaunchContext* context, int desktop);
	void gdk_app_launch_context_set_display(GdkAppLaunchContext* context, GdkDisplay* display);
	void gdk_app_launch_context_set_icon(GdkAppLaunchContext* context, GIcon* icon);
	void gdk_app_launch_context_set_icon_name(GdkAppLaunchContext* context, const(char)* iconName);
	void gdk_app_launch_context_set_screen(GdkAppLaunchContext* context, GdkScreen* screen);
	void gdk_app_launch_context_set_timestamp(GdkAppLaunchContext* context, uint timestamp);

	// gdk.Atom

	char* gdk_atom_name(GdkAtom atom);
	GdkAtom gdk_atom_intern(const(char)* atomName, int onlyIfExists);
	GdkAtom gdk_atom_intern_static_string(const(char)* atomName);
	void gdk_property_change(GdkWindow* window, GdkAtom property, GdkAtom type, int format, GdkPropMode mode, char* data, int nelements);
	void gdk_property_delete(GdkWindow* window, GdkAtom property);
	int gdk_property_get(GdkWindow* window, GdkAtom property, GdkAtom type, gulong offset, gulong length, int pdelete, GdkAtom* actualPropertyType, int* actualFormat, int* actualLength, char** data);
	int gdk_text_property_to_utf8_list_for_display(GdkDisplay* display, GdkAtom encoding, int format, char* text, int length, char*** list);
	char* gdk_utf8_to_string_target(const(char)* str);

	// gdk.Color

	GType gdk_color_get_type();
	GdkColor* gdk_color_copy(GdkColor* color);
	int gdk_color_equal(GdkColor* colora, GdkColor* colorb);
	void gdk_color_free(GdkColor* color);
	uint gdk_color_hash(GdkColor* color);
	char* gdk_color_to_string(GdkColor* color);
	int gdk_color_parse(const(char)* spec, GdkColor* color);

	// gdk.Cursor

	GType gdk_cursor_get_type();
	GdkCursor* gdk_cursor_new(GdkCursorType cursorType);
	GdkCursor* gdk_cursor_new_for_display(GdkDisplay* display, GdkCursorType cursorType);
	GdkCursor* gdk_cursor_new_from_name(GdkDisplay* display, const(char)* name);
	GdkCursor* gdk_cursor_new_from_pixbuf(GdkDisplay* display, GdkPixbuf* pixbuf, int x, int y);
	GdkCursor* gdk_cursor_new_from_surface(GdkDisplay* display, cairo_surface_t* surface, double x, double y);
	GdkCursorType gdk_cursor_get_cursor_type(GdkCursor* cursor);
	GdkDisplay* gdk_cursor_get_display(GdkCursor* cursor);
	GdkPixbuf* gdk_cursor_get_image(GdkCursor* cursor);
	cairo_surface_t* gdk_cursor_get_surface(GdkCursor* cursor, double* xHot, double* yHot);
	GdkCursor* gdk_cursor_ref(GdkCursor* cursor);
	void gdk_cursor_unref(GdkCursor* cursor);

	// gdk.Device

	GType gdk_device_get_type();
	void gdk_device_free_history(GdkTimeCoord** events, int nEvents);
	int gdk_device_grab_info_libgtk_only(GdkDisplay* display, GdkDevice* device, GdkWindow** grabWindow, int* ownerEvents);
	GdkDevice* gdk_device_get_associated_device(GdkDevice* device);
	GdkAxisFlags gdk_device_get_axes(GdkDevice* device);
	int gdk_device_get_axis(GdkDevice* device, double* axes, GdkAxisUse use, double* value);
	GdkAxisUse gdk_device_get_axis_use(GdkDevice* device, uint index);
	int gdk_device_get_axis_value(GdkDevice* device, double* axes, GdkAtom axisLabel, double* value);
	GdkDeviceType gdk_device_get_device_type(GdkDevice* device);
	GdkDisplay* gdk_device_get_display(GdkDevice* device);
	int gdk_device_get_has_cursor(GdkDevice* device);
	int gdk_device_get_history(GdkDevice* device, GdkWindow* window, uint start, uint stop, GdkTimeCoord*** events, int* nEvents);
	int gdk_device_get_key(GdkDevice* device, uint index, uint* keyval, GdkModifierType* modifiers);
	GdkWindow* gdk_device_get_last_event_window(GdkDevice* device);
	GdkInputMode gdk_device_get_mode(GdkDevice* device);
	int gdk_device_get_n_axes(GdkDevice* device);
	int gdk_device_get_n_keys(GdkDevice* device);
	const(char)* gdk_device_get_name(GdkDevice* device);
	void gdk_device_get_position(GdkDevice* device, GdkScreen** screen, int* x, int* y);
	void gdk_device_get_position_double(GdkDevice* device, GdkScreen** screen, double* x, double* y);
	const(char)* gdk_device_get_product_id(GdkDevice* device);
	GdkSeat* gdk_device_get_seat(GdkDevice* device);
	GdkInputSource gdk_device_get_source(GdkDevice* device);
	void gdk_device_get_state(GdkDevice* device, GdkWindow* window, double* axes, GdkModifierType* mask);
	const(char)* gdk_device_get_vendor_id(GdkDevice* device);
	GdkWindow* gdk_device_get_window_at_position(GdkDevice* device, int* winX, int* winY);
	GdkWindow* gdk_device_get_window_at_position_double(GdkDevice* device, double* winX, double* winY);
	GdkGrabStatus gdk_device_grab(GdkDevice* device, GdkWindow* window, GdkGrabOwnership grabOwnership, int ownerEvents, GdkEventMask eventMask, GdkCursor* cursor, uint time);
	GList* gdk_device_list_axes(GdkDevice* device);
	GList* gdk_device_list_slave_devices(GdkDevice* device);
	void gdk_device_set_axis_use(GdkDevice* device, uint index, GdkAxisUse use);
	void gdk_device_set_key(GdkDevice* device, uint index, uint keyval, GdkModifierType modifiers);
	int gdk_device_set_mode(GdkDevice* device, GdkInputMode mode);
	void gdk_device_ungrab(GdkDevice* device, uint time);
	void gdk_device_warp(GdkDevice* device, GdkScreen* screen, int x, int y);

	// gdk.DeviceManager

	GType gdk_device_manager_get_type();
	GdkDevice* gdk_device_manager_get_client_pointer(GdkDeviceManager* deviceManager);
	GdkDisplay* gdk_device_manager_get_display(GdkDeviceManager* deviceManager);
	GList* gdk_device_manager_list_devices(GdkDeviceManager* deviceManager, GdkDeviceType type);
	void gdk_disable_multidevice();

	// gdk.DevicePad

	GType gdk_device_pad_get_type();
	int gdk_device_pad_get_feature_group(GdkDevicePad* pad, GdkDevicePadFeature feature, int featureIdx);
	int gdk_device_pad_get_group_n_modes(GdkDevicePad* pad, int groupIdx);
	int gdk_device_pad_get_n_features(GdkDevicePad* pad, GdkDevicePadFeature feature);
	int gdk_device_pad_get_n_groups(GdkDevicePad* pad);

	// gdk.DeviceTool

	GType gdk_device_tool_get_type();
	ulong gdk_device_tool_get_hardware_id(GdkDeviceTool* tool);
	ulong gdk_device_tool_get_serial(GdkDeviceTool* tool);
	GdkDeviceToolType gdk_device_tool_get_tool_type(GdkDeviceTool* tool);

	// gdk.Display

	GType gdk_display_get_type();
	GdkDisplay* gdk_display_get_default();
	GdkDisplay* gdk_display_open(const(char)* displayName);
	GdkDisplay* gdk_display_open_default_libgtk_only();
	void gdk_display_beep(GdkDisplay* display);
	void gdk_display_close(GdkDisplay* display);
	int gdk_display_device_is_grabbed(GdkDisplay* display, GdkDevice* device);
	void gdk_display_flush(GdkDisplay* display);
	GdkAppLaunchContext* gdk_display_get_app_launch_context(GdkDisplay* display);
	uint gdk_display_get_default_cursor_size(GdkDisplay* display);
	GdkWindow* gdk_display_get_default_group(GdkDisplay* display);
	GdkScreen* gdk_display_get_default_screen(GdkDisplay* display);
	GdkSeat* gdk_display_get_default_seat(GdkDisplay* display);
	GdkDeviceManager* gdk_display_get_device_manager(GdkDisplay* display);
	GdkEvent* gdk_display_get_event(GdkDisplay* display);
	void gdk_display_get_maximal_cursor_size(GdkDisplay* display, uint* width, uint* height);
	GdkMonitor* gdk_display_get_monitor(GdkDisplay* display, int monitorNum);
	GdkMonitor* gdk_display_get_monitor_at_point(GdkDisplay* display, int x, int y);
	GdkMonitor* gdk_display_get_monitor_at_window(GdkDisplay* display, GdkWindow* window);
	int gdk_display_get_n_monitors(GdkDisplay* display);
	int gdk_display_get_n_screens(GdkDisplay* display);
	const(char)* gdk_display_get_name(GdkDisplay* display);
	void gdk_display_get_pointer(GdkDisplay* display, GdkScreen** screen, int* x, int* y, GdkModifierType* mask);
	GdkMonitor* gdk_display_get_primary_monitor(GdkDisplay* display);
	GdkScreen* gdk_display_get_screen(GdkDisplay* display, int screenNum);
	GdkWindow* gdk_display_get_window_at_pointer(GdkDisplay* display, int* winX, int* winY);
	int gdk_display_has_pending(GdkDisplay* display);
	int gdk_display_is_closed(GdkDisplay* display);
	void gdk_display_keyboard_ungrab(GdkDisplay* display, uint time);
	GList* gdk_display_list_devices(GdkDisplay* display);
	GList* gdk_display_list_seats(GdkDisplay* display);
	void gdk_display_notify_startup_complete(GdkDisplay* display, const(char)* startupId);
	GdkEvent* gdk_display_peek_event(GdkDisplay* display);
	int gdk_display_pointer_is_grabbed(GdkDisplay* display);
	void gdk_display_pointer_ungrab(GdkDisplay* display, uint time);
	void gdk_display_put_event(GdkDisplay* display, GdkEvent* event);
	int gdk_display_request_selection_notification(GdkDisplay* display, GdkAtom selection);
	void gdk_display_set_double_click_distance(GdkDisplay* display, uint distance);
	void gdk_display_set_double_click_time(GdkDisplay* display, uint msec);
	void gdk_display_store_clipboard(GdkDisplay* display, GdkWindow* clipboardWindow, uint time, GdkAtom* targets, int nTargets);
	int gdk_display_supports_clipboard_persistence(GdkDisplay* display);
	int gdk_display_supports_composite(GdkDisplay* display);
	int gdk_display_supports_cursor_alpha(GdkDisplay* display);
	int gdk_display_supports_cursor_color(GdkDisplay* display);
	int gdk_display_supports_input_shapes(GdkDisplay* display);
	int gdk_display_supports_selection_notification(GdkDisplay* display);
	int gdk_display_supports_shapes(GdkDisplay* display);
	void gdk_display_sync(GdkDisplay* display);
	void gdk_display_warp_pointer(GdkDisplay* display, GdkScreen* screen, int x, int y);

	// gdk.DisplayManager

	GType gdk_display_manager_get_type();
	GdkDisplayManager* gdk_display_manager_get();
	GdkDisplay* gdk_display_manager_get_default_display(GdkDisplayManager* manager);
	GSList* gdk_display_manager_list_displays(GdkDisplayManager* manager);
	GdkDisplay* gdk_display_manager_open_display(GdkDisplayManager* manager, const(char)* name);
	void gdk_display_manager_set_default_display(GdkDisplayManager* manager, GdkDisplay* display);

	// gdk.DragContext

	GType gdk_drag_context_get_type();
	GdkDragAction gdk_drag_context_get_actions(GdkDragContext* context);
	GdkWindow* gdk_drag_context_get_dest_window(GdkDragContext* context);
	GdkDevice* gdk_drag_context_get_device(GdkDragContext* context);
	GdkWindow* gdk_drag_context_get_drag_window(GdkDragContext* context);
	GdkDragProtocol gdk_drag_context_get_protocol(GdkDragContext* context);
	GdkDragAction gdk_drag_context_get_selected_action(GdkDragContext* context);
	GdkWindow* gdk_drag_context_get_source_window(GdkDragContext* context);
	GdkDragAction gdk_drag_context_get_suggested_action(GdkDragContext* context);
	GList* gdk_drag_context_list_targets(GdkDragContext* context);
	int gdk_drag_context_manage_dnd(GdkDragContext* context, GdkWindow* ipcWindow, GdkDragAction actions);
	void gdk_drag_context_set_device(GdkDragContext* context, GdkDevice* device);
	void gdk_drag_context_set_hotspot(GdkDragContext* context, int hotX, int hotY);
	void gdk_drag_abort(GdkDragContext* context, uint time);
	GdkDragContext* gdk_drag_begin(GdkWindow* window, GList* targets);
	GdkDragContext* gdk_drag_begin_for_device(GdkWindow* window, GdkDevice* device, GList* targets);
	GdkDragContext* gdk_drag_begin_from_point(GdkWindow* window, GdkDevice* device, GList* targets, int xRoot, int yRoot);
	void gdk_drag_drop(GdkDragContext* context, uint time);
	void gdk_drag_drop_done(GdkDragContext* context, int success);
	int gdk_drag_drop_succeeded(GdkDragContext* context);
	void gdk_drag_find_window_for_screen(GdkDragContext* context, GdkWindow* dragWindow, GdkScreen* screen, int xRoot, int yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol);
	GdkAtom gdk_drag_get_selection(GdkDragContext* context);
	int gdk_drag_motion(GdkDragContext* context, GdkWindow* destWindow, GdkDragProtocol protocol, int xRoot, int yRoot, GdkDragAction suggestedAction, GdkDragAction possibleActions, uint time);
	void gdk_drag_status(GdkDragContext* context, GdkDragAction action, uint time);
	void gdk_drop_finish(GdkDragContext* context, int success, uint time);
	void gdk_drop_reply(GdkDragContext* context, int accepted, uint time);

	// gdk.DrawingContext

	GType gdk_drawing_context_get_type();
	cairo_t* gdk_drawing_context_get_cairo_context(GdkDrawingContext* context);
	cairo_region_t* gdk_drawing_context_get_clip(GdkDrawingContext* context);
	GdkWindow* gdk_drawing_context_get_window(GdkDrawingContext* context);
	int gdk_drawing_context_is_valid(GdkDrawingContext* context);

	// gdk.Event

	GType gdk_event_get_type();
	GdkEvent* gdk_event_new(GdkEventType type);
	int gdk_events_get_angle(GdkEvent* event1, GdkEvent* event2, double* angle);
	int gdk_events_get_center(GdkEvent* event1, GdkEvent* event2, double* x, double* y);
	int gdk_events_get_distance(GdkEvent* event1, GdkEvent* event2, double* distance);
	GdkEvent* gdk_event_copy(GdkEvent* event);
	void gdk_event_free(GdkEvent* event);
	int gdk_event_get_axis(GdkEvent* event, GdkAxisUse axisUse, double* value);
	int gdk_event_get_button(GdkEvent* event, uint* button);
	int gdk_event_get_click_count(GdkEvent* event, uint* clickCount);
	int gdk_event_get_coords(GdkEvent* event, double* xWin, double* yWin);
	GdkDevice* gdk_event_get_device(GdkEvent* event);
	GdkDeviceTool* gdk_event_get_device_tool(GdkEvent* event);
	GdkEventSequence* gdk_event_get_event_sequence(GdkEvent* event);
	GdkEventType gdk_event_get_event_type(GdkEvent* event);
	int gdk_event_get_keycode(GdkEvent* event, ushort* keycode);
	int gdk_event_get_keyval(GdkEvent* event, uint* keyval);
	int gdk_event_get_pointer_emulated(GdkEvent* event);
	int gdk_event_get_root_coords(GdkEvent* event, double* xRoot, double* yRoot);
	int gdk_event_get_scancode(GdkEvent* event);
	GdkScreen* gdk_event_get_screen(GdkEvent* event);
	int gdk_event_get_scroll_deltas(GdkEvent* event, double* deltaX, double* deltaY);
	int gdk_event_get_scroll_direction(GdkEvent* event, GdkScrollDirection* direction);
	GdkSeat* gdk_event_get_seat(GdkEvent* event);
	GdkDevice* gdk_event_get_source_device(GdkEvent* event);
	int gdk_event_get_state(GdkEvent* event, GdkModifierType* state);
	uint gdk_event_get_time(GdkEvent* event);
	GdkWindow* gdk_event_get_window(GdkEvent* event);
	int gdk_event_is_scroll_stop_event(GdkEvent* event);
	void gdk_event_put(GdkEvent* event);
	void gdk_event_set_device(GdkEvent* event, GdkDevice* device);
	void gdk_event_set_device_tool(GdkEvent* event, GdkDeviceTool* tool);
	void gdk_event_set_screen(GdkEvent* event, GdkScreen* screen);
	void gdk_event_set_source_device(GdkEvent* event, GdkDevice* device);
	int gdk_event_triggers_context_menu(GdkEvent* event);
	GdkEvent* gdk_event_get();
	void gdk_event_handler_set(GdkEventFunc func, void* data, GDestroyNotify notify);
	GdkEvent* gdk_event_peek();
	void gdk_event_request_motions(GdkEventMotion* event);
	int gdk_events_pending();
	int gdk_get_show_events();
	void gdk_set_show_events(int showEvents);
	int gdk_setting_get(const(char)* name, GValue* value);

	// gdk.EventSequence

	GType gdk_event_sequence_get_type();

	// gdk.FrameClock

	GType gdk_frame_clock_get_type();
	void gdk_frame_clock_begin_updating(GdkFrameClock* frameClock);
	void gdk_frame_clock_end_updating(GdkFrameClock* frameClock);
	GdkFrameTimings* gdk_frame_clock_get_current_timings(GdkFrameClock* frameClock);
	long gdk_frame_clock_get_frame_counter(GdkFrameClock* frameClock);
	long gdk_frame_clock_get_frame_time(GdkFrameClock* frameClock);
	long gdk_frame_clock_get_history_start(GdkFrameClock* frameClock);
	void gdk_frame_clock_get_refresh_info(GdkFrameClock* frameClock, long baseTime, long* refreshIntervalReturn, long* presentationTimeReturn);
	GdkFrameTimings* gdk_frame_clock_get_timings(GdkFrameClock* frameClock, long frameCounter);
	void gdk_frame_clock_request_phase(GdkFrameClock* frameClock, GdkFrameClockPhase phase);

	// gdk.FrameTimings

	GType gdk_frame_timings_get_type();
	int gdk_frame_timings_get_complete(GdkFrameTimings* timings);
	long gdk_frame_timings_get_frame_counter(GdkFrameTimings* timings);
	long gdk_frame_timings_get_frame_time(GdkFrameTimings* timings);
	long gdk_frame_timings_get_predicted_presentation_time(GdkFrameTimings* timings);
	long gdk_frame_timings_get_presentation_time(GdkFrameTimings* timings);
	long gdk_frame_timings_get_refresh_interval(GdkFrameTimings* timings);
	GdkFrameTimings* gdk_frame_timings_ref(GdkFrameTimings* timings);
	void gdk_frame_timings_unref(GdkFrameTimings* timings);

	// gdk.GLContext

	GType gdk_gl_context_get_type();
	void gdk_gl_context_clear_current();
	GdkGLContext* gdk_gl_context_get_current();
	int gdk_gl_context_get_debug_enabled(GdkGLContext* context);
	GdkDisplay* gdk_gl_context_get_display(GdkGLContext* context);
	int gdk_gl_context_get_forward_compatible(GdkGLContext* context);
	void gdk_gl_context_get_required_version(GdkGLContext* context, int* major, int* minor);
	GdkGLContext* gdk_gl_context_get_shared_context(GdkGLContext* context);
	int gdk_gl_context_get_use_es(GdkGLContext* context);
	void gdk_gl_context_get_version(GdkGLContext* context, int* major, int* minor);
	GdkWindow* gdk_gl_context_get_window(GdkGLContext* context);
	int gdk_gl_context_is_legacy(GdkGLContext* context);
	void gdk_gl_context_make_current(GdkGLContext* context);
	int gdk_gl_context_realize(GdkGLContext* context, GError** err);
	void gdk_gl_context_set_debug_enabled(GdkGLContext* context, int enabled);
	void gdk_gl_context_set_forward_compatible(GdkGLContext* context, int compatible);
	void gdk_gl_context_set_required_version(GdkGLContext* context, int major, int minor);
	void gdk_gl_context_set_use_es(GdkGLContext* context, int useEs);

	// gdk.Keymap

	GType gdk_keymap_get_type();
	GdkKeymap* gdk_keymap_get_default();
	GdkKeymap* gdk_keymap_get_for_display(GdkDisplay* display);
	void gdk_keymap_add_virtual_modifiers(GdkKeymap* keymap, GdkModifierType* state);
	int gdk_keymap_get_caps_lock_state(GdkKeymap* keymap);
	PangoDirection gdk_keymap_get_direction(GdkKeymap* keymap);
	int gdk_keymap_get_entries_for_keycode(GdkKeymap* keymap, uint hardwareKeycode, GdkKeymapKey** keys, uint** keyvals, int* nEntries);
	int gdk_keymap_get_entries_for_keyval(GdkKeymap* keymap, uint keyval, GdkKeymapKey** keys, int* nKeys);
	GdkModifierType gdk_keymap_get_modifier_mask(GdkKeymap* keymap, GdkModifierIntent intent);
	uint gdk_keymap_get_modifier_state(GdkKeymap* keymap);
	int gdk_keymap_get_num_lock_state(GdkKeymap* keymap);
	int gdk_keymap_get_scroll_lock_state(GdkKeymap* keymap);
	int gdk_keymap_have_bidi_layouts(GdkKeymap* keymap);
	uint gdk_keymap_lookup_key(GdkKeymap* keymap, GdkKeymapKey* key);
	int gdk_keymap_map_virtual_modifiers(GdkKeymap* keymap, GdkModifierType* state);
	int gdk_keymap_translate_keyboard_state(GdkKeymap* keymap, uint hardwareKeycode, GdkModifierType state, int group, uint* keyval, int* effectiveGroup, int* level, GdkModifierType* consumedModifiers);
	void gdk_keyval_convert_case(uint symbol, uint* lower, uint* upper);
	uint gdk_keyval_from_name(const(char)* keyvalName);
	int gdk_keyval_is_lower(uint keyval);
	int gdk_keyval_is_upper(uint keyval);
	char* gdk_keyval_name(uint keyval);
	uint gdk_keyval_to_lower(uint keyval);
	uint gdk_keyval_to_unicode(uint keyval);
	uint gdk_keyval_to_upper(uint keyval);
	uint gdk_unicode_to_keyval(uint wc);

	// gdk.MonitorG

	GType gdk_monitor_get_type();
	GdkDisplay* gdk_monitor_get_display(GdkMonitor* monitor);
	void gdk_monitor_get_geometry(GdkMonitor* monitor, GdkRectangle* geometry);
	int gdk_monitor_get_height_mm(GdkMonitor* monitor);
	const(char)* gdk_monitor_get_manufacturer(GdkMonitor* monitor);
	const(char)* gdk_monitor_get_model(GdkMonitor* monitor);
	int gdk_monitor_get_refresh_rate(GdkMonitor* monitor);
	int gdk_monitor_get_scale_factor(GdkMonitor* monitor);
	GdkSubpixelLayout gdk_monitor_get_subpixel_layout(GdkMonitor* monitor);
	int gdk_monitor_get_width_mm(GdkMonitor* monitor);
	void gdk_monitor_get_workarea(GdkMonitor* monitor, GdkRectangle* workarea);
	int gdk_monitor_is_primary(GdkMonitor* monitor);

	// gdk.RGBA

	GType gdk_rgba_get_type();
	GdkRGBA* gdk_rgba_copy(GdkRGBA* rgba);
	int gdk_rgba_equal(void* p1, void* p2);
	void gdk_rgba_free(GdkRGBA* rgba);
	uint gdk_rgba_hash(void* p);
	int gdk_rgba_parse(GdkRGBA* rgba, const(char)* spec);
	char* gdk_rgba_to_string(GdkRGBA* rgba);

	// gdk.Rectangle

	GType gdk_rectangle_get_type();
	int gdk_rectangle_equal(GdkRectangle* rect1, GdkRectangle* rect2);
	int gdk_rectangle_intersect(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest);
	void gdk_rectangle_union(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest);

	// gdk.Screen

	GType gdk_screen_get_type();
	GdkScreen* gdk_screen_get_default();
	int gdk_screen_height();
	int gdk_screen_height_mm();
	int gdk_screen_width();
	int gdk_screen_width_mm();
	GdkWindow* gdk_screen_get_active_window(GdkScreen* screen);
	GdkDisplay* gdk_screen_get_display(GdkScreen* screen);
	cairo_font_options_t* gdk_screen_get_font_options(GdkScreen* screen);
	int gdk_screen_get_height(GdkScreen* screen);
	int gdk_screen_get_height_mm(GdkScreen* screen);
	int gdk_screen_get_monitor_at_point(GdkScreen* screen, int x, int y);
	int gdk_screen_get_monitor_at_window(GdkScreen* screen, GdkWindow* window);
	void gdk_screen_get_monitor_geometry(GdkScreen* screen, int monitorNum, GdkRectangle* dest);
	int gdk_screen_get_monitor_height_mm(GdkScreen* screen, int monitorNum);
	char* gdk_screen_get_monitor_plug_name(GdkScreen* screen, int monitorNum);
	int gdk_screen_get_monitor_scale_factor(GdkScreen* screen, int monitorNum);
	int gdk_screen_get_monitor_width_mm(GdkScreen* screen, int monitorNum);
	void gdk_screen_get_monitor_workarea(GdkScreen* screen, int monitorNum, GdkRectangle* dest);
	int gdk_screen_get_n_monitors(GdkScreen* screen);
	int gdk_screen_get_number(GdkScreen* screen);
	int gdk_screen_get_primary_monitor(GdkScreen* screen);
	double gdk_screen_get_resolution(GdkScreen* screen);
	GdkVisual* gdk_screen_get_rgba_visual(GdkScreen* screen);
	GdkWindow* gdk_screen_get_root_window(GdkScreen* screen);
	int gdk_screen_get_setting(GdkScreen* screen, const(char)* name, GValue* value);
	GdkVisual* gdk_screen_get_system_visual(GdkScreen* screen);
	GList* gdk_screen_get_toplevel_windows(GdkScreen* screen);
	int gdk_screen_get_width(GdkScreen* screen);
	int gdk_screen_get_width_mm(GdkScreen* screen);
	GList* gdk_screen_get_window_stack(GdkScreen* screen);
	int gdk_screen_is_composited(GdkScreen* screen);
	GList* gdk_screen_list_visuals(GdkScreen* screen);
	char* gdk_screen_make_display_name(GdkScreen* screen);
	void gdk_screen_set_font_options(GdkScreen* screen, cairo_font_options_t* options);
	void gdk_screen_set_resolution(GdkScreen* screen, double dpi);

	// gdk.Seat

	GType gdk_seat_get_type();
	GdkSeatCapabilities gdk_seat_get_capabilities(GdkSeat* seat);
	GdkDisplay* gdk_seat_get_display(GdkSeat* seat);
	GdkDevice* gdk_seat_get_keyboard(GdkSeat* seat);
	GdkDevice* gdk_seat_get_pointer(GdkSeat* seat);
	GList* gdk_seat_get_slaves(GdkSeat* seat, GdkSeatCapabilities capabilities);
	GdkGrabStatus gdk_seat_grab(GdkSeat* seat, GdkWindow* window, GdkSeatCapabilities capabilities, int ownerEvents, GdkCursor* cursor, GdkEvent* event, GdkSeatGrabPrepareFunc prepareFunc, void* prepareFuncData);
	void gdk_seat_ungrab(GdkSeat* seat);

	// gdk.Visual

	GType gdk_visual_get_type();
	GdkVisual* gdk_visual_get_best();
	int gdk_visual_get_best_depth();
	GdkVisualType gdk_visual_get_best_type();
	GdkVisual* gdk_visual_get_best_with_both(int depth, GdkVisualType visualType);
	GdkVisual* gdk_visual_get_best_with_depth(int depth);
	GdkVisual* gdk_visual_get_best_with_type(GdkVisualType visualType);
	GdkVisual* gdk_visual_get_system();
	int gdk_visual_get_bits_per_rgb(GdkVisual* visual);
	void gdk_visual_get_blue_pixel_details(GdkVisual* visual, uint* mask, int* shift, int* precision);
	GdkByteOrder gdk_visual_get_byte_order(GdkVisual* visual);
	int gdk_visual_get_colormap_size(GdkVisual* visual);
	int gdk_visual_get_depth(GdkVisual* visual);
	void gdk_visual_get_green_pixel_details(GdkVisual* visual, uint* mask, int* shift, int* precision);
	void gdk_visual_get_red_pixel_details(GdkVisual* visual, uint* mask, int* shift, int* precision);
	GdkScreen* gdk_visual_get_screen(GdkVisual* visual);
	GdkVisualType gdk_visual_get_visual_type(GdkVisual* visual);
	GList* gdk_list_visuals();
	void gdk_query_depths(int** depths, int* count);
	void gdk_query_visual_types(GdkVisualType** visualTypes, int* count);

	// gdk.Window

	GType gdk_window_get_type();
	GdkWindow* gdk_window_new(GdkWindow* parent, GdkWindowAttr* attributes, int attributesMask);
	GdkWindow* gdk_window_at_pointer(int* winX, int* winY);
	void gdk_window_constrain_size(GdkGeometry* geometry, GdkWindowHints flags, int width, int height, int* newWidth, int* newHeight);
	void gdk_window_process_all_updates();
	void gdk_window_set_debug_updates(int setting);
	void gdk_window_add_filter(GdkWindow* window, GdkFilterFunc function_, void* data);
	void gdk_window_beep(GdkWindow* window);
	GdkDrawingContext* gdk_window_begin_draw_frame(GdkWindow* window, cairo_region_t* region);
	void gdk_window_begin_move_drag(GdkWindow* window, int button, int rootX, int rootY, uint timestamp);
	void gdk_window_begin_move_drag_for_device(GdkWindow* window, GdkDevice* device, int button, int rootX, int rootY, uint timestamp);
	void gdk_window_begin_paint_rect(GdkWindow* window, GdkRectangle* rectangle);
	void gdk_window_begin_paint_region(GdkWindow* window, cairo_region_t* region);
	void gdk_window_begin_resize_drag(GdkWindow* window, GdkWindowEdge edge, int button, int rootX, int rootY, uint timestamp);
	void gdk_window_begin_resize_drag_for_device(GdkWindow* window, GdkWindowEdge edge, GdkDevice* device, int button, int rootX, int rootY, uint timestamp);
	void gdk_window_configure_finished(GdkWindow* window);
	void gdk_window_coords_from_parent(GdkWindow* window, double parentX, double parentY, double* x, double* y);
	void gdk_window_coords_to_parent(GdkWindow* window, double x, double y, double* parentX, double* parentY);
	GdkGLContext* gdk_window_create_gl_context(GdkWindow* window, GError** err);
	cairo_surface_t* gdk_window_create_similar_image_surface(GdkWindow* window, cairo_format_t format, int width, int height, int scale);
	cairo_surface_t* gdk_window_create_similar_surface(GdkWindow* window, cairo_content_t content, int width, int height);
	void gdk_window_deiconify(GdkWindow* window);
	void gdk_window_destroy(GdkWindow* window);
	void gdk_window_destroy_notify(GdkWindow* window);
	void gdk_window_enable_synchronized_configure(GdkWindow* window);
	void gdk_window_end_draw_frame(GdkWindow* window, GdkDrawingContext* context);
	void gdk_window_end_paint(GdkWindow* window);
	int gdk_window_ensure_native(GdkWindow* window);
	void gdk_window_flush(GdkWindow* window);
	void gdk_window_focus(GdkWindow* window, uint timestamp);
	void gdk_window_freeze_toplevel_updates_libgtk_only(GdkWindow* window);
	void gdk_window_freeze_updates(GdkWindow* window);
	void gdk_window_fullscreen(GdkWindow* window);
	void gdk_window_fullscreen_on_monitor(GdkWindow* window, int monitor);
	void gdk_window_geometry_changed(GdkWindow* window);
	int gdk_window_get_accept_focus(GdkWindow* window);
	cairo_pattern_t* gdk_window_get_background_pattern(GdkWindow* window);
	GList* gdk_window_get_children(GdkWindow* window);
	GList* gdk_window_get_children_with_user_data(GdkWindow* window, void* userData);
	cairo_region_t* gdk_window_get_clip_region(GdkWindow* window);
	int gdk_window_get_composited(GdkWindow* window);
	GdkCursor* gdk_window_get_cursor(GdkWindow* window);
	int gdk_window_get_decorations(GdkWindow* window, GdkWMDecoration* decorations);
	GdkCursor* gdk_window_get_device_cursor(GdkWindow* window, GdkDevice* device);
	GdkEventMask gdk_window_get_device_events(GdkWindow* window, GdkDevice* device);
	GdkWindow* gdk_window_get_device_position(GdkWindow* window, GdkDevice* device, int* x, int* y, GdkModifierType* mask);
	GdkWindow* gdk_window_get_device_position_double(GdkWindow* window, GdkDevice* device, double* x, double* y, GdkModifierType* mask);
	GdkDisplay* gdk_window_get_display(GdkWindow* window);
	GdkDragProtocol gdk_window_get_drag_protocol(GdkWindow* window, GdkWindow** target);
	GdkWindow* gdk_window_get_effective_parent(GdkWindow* window);
	GdkWindow* gdk_window_get_effective_toplevel(GdkWindow* window);
	int gdk_window_get_event_compression(GdkWindow* window);
	GdkEventMask gdk_window_get_events(GdkWindow* window);
	int gdk_window_get_focus_on_map(GdkWindow* window);
	GdkFrameClock* gdk_window_get_frame_clock(GdkWindow* window);
	void gdk_window_get_frame_extents(GdkWindow* window, GdkRectangle* rect);
	GdkFullscreenMode gdk_window_get_fullscreen_mode(GdkWindow* window);
	void gdk_window_get_geometry(GdkWindow* window, int* x, int* y, int* width, int* height);
	GdkWindow* gdk_window_get_group(GdkWindow* window);
	int gdk_window_get_height(GdkWindow* window);
	int gdk_window_get_modal_hint(GdkWindow* window);
	int gdk_window_get_origin(GdkWindow* window, int* x, int* y);
	GdkWindow* gdk_window_get_parent(GdkWindow* window);
	int gdk_window_get_pass_through(GdkWindow* window);
	GdkWindow* gdk_window_get_pointer(GdkWindow* window, int* x, int* y, GdkModifierType* mask);
	void gdk_window_get_position(GdkWindow* window, int* x, int* y);
	void gdk_window_get_root_coords(GdkWindow* window, int x, int y, int* rootX, int* rootY);
	void gdk_window_get_root_origin(GdkWindow* window, int* x, int* y);
	int gdk_window_get_scale_factor(GdkWindow* window);
	GdkScreen* gdk_window_get_screen(GdkWindow* window);
	GdkEventMask gdk_window_get_source_events(GdkWindow* window, GdkInputSource source);
	GdkWindowState gdk_window_get_state(GdkWindow* window);
	int gdk_window_get_support_multidevice(GdkWindow* window);
	GdkWindow* gdk_window_get_toplevel(GdkWindow* window);
	GdkWindowTypeHint gdk_window_get_type_hint(GdkWindow* window);
	cairo_region_t* gdk_window_get_update_area(GdkWindow* window);
	void gdk_window_get_user_data(GdkWindow* window, void** data);
	cairo_region_t* gdk_window_get_visible_region(GdkWindow* window);
	GdkVisual* gdk_window_get_visual(GdkWindow* window);
	int gdk_window_get_width(GdkWindow* window);
	GdkWindowType gdk_window_get_window_type(GdkWindow* window);
	int gdk_window_has_native(GdkWindow* window);
	void gdk_window_hide(GdkWindow* window);
	void gdk_window_iconify(GdkWindow* window);
	void gdk_window_input_shape_combine_region(GdkWindow* window, cairo_region_t* shapeRegion, int offsetX, int offsetY);
	void gdk_window_invalidate_maybe_recurse(GdkWindow* window, cairo_region_t* region, GdkWindowChildFunc childFunc, void* userData);
	void gdk_window_invalidate_rect(GdkWindow* window, GdkRectangle* rect, int invalidateChildren);
	void gdk_window_invalidate_region(GdkWindow* window, cairo_region_t* region, int invalidateChildren);
	int gdk_window_is_destroyed(GdkWindow* window);
	int gdk_window_is_input_only(GdkWindow* window);
	int gdk_window_is_shaped(GdkWindow* window);
	int gdk_window_is_viewable(GdkWindow* window);
	int gdk_window_is_visible(GdkWindow* window);
	void gdk_window_lower(GdkWindow* window);
	void gdk_window_mark_paint_from_clip(GdkWindow* window, cairo_t* cr);
	void gdk_window_maximize(GdkWindow* window);
	void gdk_window_merge_child_input_shapes(GdkWindow* window);
	void gdk_window_merge_child_shapes(GdkWindow* window);
	void gdk_window_move(GdkWindow* window, int x, int y);
	void gdk_window_move_region(GdkWindow* window, cairo_region_t* region, int dx, int dy);
	void gdk_window_move_resize(GdkWindow* window, int x, int y, int width, int height);
	void gdk_window_move_to_rect(GdkWindow* window, GdkRectangle* rect, GdkGravity rectAnchor, GdkGravity windowAnchor, GdkAnchorHints anchorHints, int rectAnchorDx, int rectAnchorDy);
	GList* gdk_window_peek_children(GdkWindow* window);
	void gdk_window_process_updates(GdkWindow* window, int updateChildren);
	void gdk_window_raise(GdkWindow* window);
	void gdk_window_register_dnd(GdkWindow* window);
	void gdk_window_remove_filter(GdkWindow* window, GdkFilterFunc function_, void* data);
	void gdk_window_reparent(GdkWindow* window, GdkWindow* newParent, int x, int y);
	void gdk_window_resize(GdkWindow* window, int width, int height);
	void gdk_window_restack(GdkWindow* window, GdkWindow* sibling, int above);
	void gdk_window_scroll(GdkWindow* window, int dx, int dy);
	void gdk_window_set_accept_focus(GdkWindow* window, int acceptFocus);
	void gdk_window_set_background(GdkWindow* window, GdkColor* color);
	void gdk_window_set_background_pattern(GdkWindow* window, cairo_pattern_t* pattern);
	void gdk_window_set_background_rgba(GdkWindow* window, GdkRGBA* rgba);
	void gdk_window_set_child_input_shapes(GdkWindow* window);
	void gdk_window_set_child_shapes(GdkWindow* window);
	void gdk_window_set_composited(GdkWindow* window, int composited);
	void gdk_window_set_cursor(GdkWindow* window, GdkCursor* cursor);
	void gdk_window_set_decorations(GdkWindow* window, GdkWMDecoration decorations);
	void gdk_window_set_device_cursor(GdkWindow* window, GdkDevice* device, GdkCursor* cursor);
	void gdk_window_set_device_events(GdkWindow* window, GdkDevice* device, GdkEventMask eventMask);
	void gdk_window_set_event_compression(GdkWindow* window, int eventCompression);
	void gdk_window_set_events(GdkWindow* window, GdkEventMask eventMask);
	void gdk_window_set_focus_on_map(GdkWindow* window, int focusOnMap);
	void gdk_window_set_fullscreen_mode(GdkWindow* window, GdkFullscreenMode mode);
	void gdk_window_set_functions(GdkWindow* window, GdkWMFunction functions);
	void gdk_window_set_geometry_hints(GdkWindow* window, GdkGeometry* geometry, GdkWindowHints geomMask);
	void gdk_window_set_group(GdkWindow* window, GdkWindow* leader);
	void gdk_window_set_icon_list(GdkWindow* window, GList* pixbufs);
	void gdk_window_set_icon_name(GdkWindow* window, const(char)* name);
	void gdk_window_set_invalidate_handler(GdkWindow* window, GdkWindowInvalidateHandlerFunc handler);
	void gdk_window_set_keep_above(GdkWindow* window, int setting);
	void gdk_window_set_keep_below(GdkWindow* window, int setting);
	void gdk_window_set_modal_hint(GdkWindow* window, int modal);
	void gdk_window_set_opacity(GdkWindow* window, double opacity);
	void gdk_window_set_opaque_region(GdkWindow* window, cairo_region_t* region);
	void gdk_window_set_override_redirect(GdkWindow* window, int overrideRedirect);
	void gdk_window_set_pass_through(GdkWindow* window, int passThrough);
	void gdk_window_set_role(GdkWindow* window, const(char)* role);
	void gdk_window_set_shadow_width(GdkWindow* window, int left, int right, int top, int bottom);
	void gdk_window_set_skip_pager_hint(GdkWindow* window, int skipsPager);
	void gdk_window_set_skip_taskbar_hint(GdkWindow* window, int skipsTaskbar);
	void gdk_window_set_source_events(GdkWindow* window, GdkInputSource source, GdkEventMask eventMask);
	void gdk_window_set_startup_id(GdkWindow* window, const(char)* startupId);
	int gdk_window_set_static_gravities(GdkWindow* window, int useStatic);
	void gdk_window_set_support_multidevice(GdkWindow* window, int supportMultidevice);
	void gdk_window_set_title(GdkWindow* window, const(char)* title);
	void gdk_window_set_transient_for(GdkWindow* window, GdkWindow* parent);
	void gdk_window_set_type_hint(GdkWindow* window, GdkWindowTypeHint hint);
	void gdk_window_set_urgency_hint(GdkWindow* window, int urgent);
	void gdk_window_set_user_data(GdkWindow* window, void* userData);
	void gdk_window_shape_combine_region(GdkWindow* window, cairo_region_t* shapeRegion, int offsetX, int offsetY);
	void gdk_window_show(GdkWindow* window);
	void gdk_window_show_unraised(GdkWindow* window);
	int gdk_window_show_window_menu(GdkWindow* window, GdkEvent* event);
	void gdk_window_stick(GdkWindow* window);
	void gdk_window_thaw_toplevel_updates_libgtk_only(GdkWindow* window);
	void gdk_window_thaw_updates(GdkWindow* window);
	void gdk_window_unfullscreen(GdkWindow* window);
	void gdk_window_unmaximize(GdkWindow* window);
	void gdk_window_unstick(GdkWindow* window);
	void gdk_window_withdraw(GdkWindow* window);
	GdkWindow* gdk_get_default_root_window();
	GdkWindow* gdk_offscreen_window_get_embedder(GdkWindow* window);
	cairo_surface_t* gdk_offscreen_window_get_surface(GdkWindow* window);
	void gdk_offscreen_window_set_embedder(GdkWindow* window, GdkWindow* embedder);
	void gdk_synthesize_window_state(GdkWindow* window, GdkWindowState unsetFlags, GdkWindowState setFlags);

	// gdk.X11

	GType gdk_x11_window_get_type();
	GdkWindow* gdk_x11_window_foreign_new_for_display(GdkDisplay* display, uint window);
	GdkWindow* gdk_x11_window_lookup_for_display(GdkDisplay* display, uint window);
	uint gdk_x11_window_get_desktop(GdkWindow* window);
	uint gdk_x11_window_get_xid(GdkWindow* window);
	void gdk_x11_window_move_to_current_desktop(GdkWindow* window);
	void gdk_x11_window_move_to_desktop(GdkWindow* window, uint desktop);
	void gdk_x11_window_set_frame_extents(GdkWindow* window, int left, int right, int top, int bottom);
	void gdk_x11_window_set_frame_sync_enabled(GdkWindow* window, int frameSyncEnabled);
	void gdk_x11_window_set_hide_titlebar_when_maximized(GdkWindow* window, int hideTitlebarWhenMaximized);
	void gdk_x11_window_set_theme_variant(GdkWindow* window, char* variant);
	void gdk_x11_window_set_user_time(GdkWindow* window, uint timestamp);
	void gdk_x11_window_set_utf8_property(GdkWindow* window, const(char)* name, const(char)* value);

	// gdk.Cairo

	cairo_t* gdk_cairo_create(GdkWindow* window);
	void gdk_cairo_draw_from_gl(cairo_t* cr, GdkWindow* window, int source, int sourceType, int bufferScale, int x, int y, int width, int height);
	int gdk_cairo_get_clip_rectangle(cairo_t* cr, GdkRectangle* rect);
	void gdk_cairo_rectangle(cairo_t* cr, GdkRectangle* rectangle);
	void gdk_cairo_region(cairo_t* cr, cairo_region_t* region);
	cairo_region_t* gdk_cairo_region_create_from_surface(cairo_surface_t* surface);
	void gdk_cairo_set_source_color(cairo_t* cr, GdkColor* color);
	void gdk_cairo_set_source_pixbuf(cairo_t* cr, GdkPixbuf* pixbuf, double pixbufX, double pixbufY);
	void gdk_cairo_set_source_rgba(cairo_t* cr, GdkRGBA* rgba);
	void gdk_cairo_set_source_window(cairo_t* cr, GdkWindow* window, double x, double y);
	cairo_surface_t* gdk_cairo_surface_create_from_pixbuf(GdkPixbuf* pixbuf, int scale, GdkWindow* forWindow);
	GdkDrawingContext* gdk_cairo_get_drawing_context(cairo_t* cr);

	// gdk.Pango

	PangoContext* gdk_pango_context_get();
	PangoContext* gdk_pango_context_get_for_screen(GdkScreen* screen);
	cairo_region_t* gdk_pango_layout_get_clip_region(PangoLayout* layout, int xOrigin, int yOrigin, int* indexRanges, int nRanges);
	cairo_region_t* gdk_pango_layout_line_get_clip_region(PangoLayoutLine* line, int xOrigin, int yOrigin, int* indexRanges, int nRanges);
	PangoContext* gdk_pango_context_get_for_display(GdkDisplay* display);

	// gdk.Pixbuf

	GdkPixbuf* gdk_pixbuf_get_from_surface(cairo_surface_t* surface, int srcX, int srcY, int width, int height);
	GdkPixbuf* gdk_pixbuf_get_from_window(GdkWindow* window, int srcX, int srcY, int width, int height);

	// gdk.Threads

	uint gdk_threads_add_idle(GSourceFunc function_, void* data);
	uint gdk_threads_add_idle_full(int priority, GSourceFunc function_, void* data, GDestroyNotify notify);
	uint gdk_threads_add_timeout(uint interval, GSourceFunc function_, void* data);
	uint gdk_threads_add_timeout_full(int priority, uint interval, GSourceFunc function_, void* data, GDestroyNotify notify);
	uint gdk_threads_add_timeout_seconds(uint interval, GSourceFunc function_, void* data);
	uint gdk_threads_add_timeout_seconds_full(int priority, uint interval, GSourceFunc function_, void* data, GDestroyNotify notify);
	void gdk_threads_enter();
	void gdk_threads_init();
	void gdk_threads_leave();
	void gdk_threads_set_lock_functions(GCallback enterFn, GCallback leaveFn);

	// gdk.Gdk

	void gdk_beep();
	int gdk_error_trap_pop();
	void gdk_error_trap_pop_ignored();
	void gdk_error_trap_push();
	void gdk_flush();
	char* gdk_get_display();
	const(char)* gdk_get_display_arg_name();
	const(char)* gdk_get_program_class();
	void gdk_init(int* argc, char*** argv);
	int gdk_init_check(int* argc, char*** argv);
	GdkGrabStatus gdk_keyboard_grab(GdkWindow* window, int ownerEvents, uint time);
	void gdk_keyboard_ungrab(uint time);
	void gdk_notify_startup_complete();
	void gdk_notify_startup_complete_with_id(const(char)* startupId);
	void gdk_parse_args(int* argc, char*** argv);
	GdkGrabStatus gdk_pointer_grab(GdkWindow* window, int ownerEvents, GdkEventMask eventMask, GdkWindow* confineTo, GdkCursor* cursor, uint time);
	int gdk_pointer_is_grabbed();
	void gdk_pointer_ungrab(uint time);
	void gdk_set_allowed_backends(const(char)* backends);
	void gdk_set_double_click_time(uint msec);
	void gdk_set_program_class(const(char)* programClass);

	// gdk.Selection

	void gdk_selection_convert(GdkWindow* requestor, GdkAtom selection, GdkAtom target, uint time);
	GdkWindow* gdk_selection_owner_get(GdkAtom selection);
	GdkWindow* gdk_selection_owner_get_for_display(GdkDisplay* display, GdkAtom selection);
	int gdk_selection_owner_set(GdkWindow* owner, GdkAtom selection, uint time, int sendEvent);
	int gdk_selection_owner_set_for_display(GdkDisplay* display, GdkWindow* owner, GdkAtom selection, uint time, int sendEvent);
	int gdk_selection_property_get(GdkWindow* requestor, char** data, GdkAtom* propType, int* propFormat);
	void gdk_selection_send_notify(GdkWindow* requestor, GdkAtom selection, GdkAtom target, GdkAtom property, uint time);
	void gdk_selection_send_notify_for_display(GdkDisplay* display, GdkWindow* requestor, GdkAtom selection, GdkAtom target, GdkAtom property, uint time);

	// gdk.Testing

	void gdk_test_render_sync(GdkWindow* window);
	int gdk_test_simulate_button(GdkWindow* window, int x, int y, uint button, GdkModifierType modifiers, GdkEventType buttonPressrelease);
	int gdk_test_simulate_key(GdkWindow* window, int x, int y, uint keyval, GdkModifierType modifiers, GdkEventType keyPressrelease);
}