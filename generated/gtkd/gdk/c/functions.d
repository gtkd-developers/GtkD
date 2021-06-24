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
	static immutable LIBRARY_GDK = ["libgtk-4-1.dll;gtk-4-4.1.dll;gtk-4.dll"];
else version (OSX)
	static immutable LIBRARY_GDK = ["libgtk-4.1.dylib"];
else
	static immutable LIBRARY_GDK = ["libgtk-4.so.1"];

__gshared extern(C)
{

	// gdk.AppLaunchContext

	GType gdk_app_launch_context_get_type();
	GdkDisplay* gdk_app_launch_context_get_display(GdkAppLaunchContext* context);
	void gdk_app_launch_context_set_desktop(GdkAppLaunchContext* context, int desktop);
	void gdk_app_launch_context_set_icon(GdkAppLaunchContext* context, GIcon* icon);
	void gdk_app_launch_context_set_icon_name(GdkAppLaunchContext* context, const(char)* iconName);
	void gdk_app_launch_context_set_timestamp(GdkAppLaunchContext* context, uint timestamp);

	// gdk.ButtonEvent

	GType gdk_button_event_get_type();
	uint gdk_button_event_get_button(GdkEvent* event);

	// gdk.CairoContext

	GType gdk_cairo_context_get_type();
	cairo_t* gdk_cairo_context_cairo_create(GdkCairoContext* self);

	// gdk.Clipboard

	GType gdk_clipboard_get_type();
	GdkContentProvider* gdk_clipboard_get_content(GdkClipboard* clipboard);
	GdkDisplay* gdk_clipboard_get_display(GdkClipboard* clipboard);
	GdkContentFormats* gdk_clipboard_get_formats(GdkClipboard* clipboard);
	int gdk_clipboard_is_local(GdkClipboard* clipboard);
	void gdk_clipboard_read_async(GdkClipboard* clipboard, char** mimeTypes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GInputStream* gdk_clipboard_read_finish(GdkClipboard* clipboard, GAsyncResult* result, char** outMimeType, GError** err);
	void gdk_clipboard_read_text_async(GdkClipboard* clipboard, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char* gdk_clipboard_read_text_finish(GdkClipboard* clipboard, GAsyncResult* result, GError** err);
	void gdk_clipboard_read_texture_async(GdkClipboard* clipboard, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GdkTexture* gdk_clipboard_read_texture_finish(GdkClipboard* clipboard, GAsyncResult* result, GError** err);
	void gdk_clipboard_read_value_async(GdkClipboard* clipboard, GType type, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GValue* gdk_clipboard_read_value_finish(GdkClipboard* clipboard, GAsyncResult* result, GError** err);
	void gdk_clipboard_set(GdkClipboard* clipboard, GType type, ... );
	int gdk_clipboard_set_content(GdkClipboard* clipboard, GdkContentProvider* provider);
	void gdk_clipboard_set_text(GdkClipboard* clipboard, const(char)* text);
	void gdk_clipboard_set_texture(GdkClipboard* clipboard, GdkTexture* texture);
	void gdk_clipboard_set_valist(GdkClipboard* clipboard, GType type, void* args);
	void gdk_clipboard_set_value(GdkClipboard* clipboard, GValue* value);
	void gdk_clipboard_store_async(GdkClipboard* clipboard, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int gdk_clipboard_store_finish(GdkClipboard* clipboard, GAsyncResult* result, GError** err);

	// gdk.ContentDeserializer

	GType gdk_content_deserializer_get_type();
	GCancellable* gdk_content_deserializer_get_cancellable(GdkContentDeserializer* deserializer);
	GType gdk_content_deserializer_get_gtype(GdkContentDeserializer* deserializer);
	GInputStream* gdk_content_deserializer_get_input_stream(GdkContentDeserializer* deserializer);
	const(char)* gdk_content_deserializer_get_mime_type(GdkContentDeserializer* deserializer);
	int gdk_content_deserializer_get_priority(GdkContentDeserializer* deserializer);
	void* gdk_content_deserializer_get_task_data(GdkContentDeserializer* deserializer);
	void* gdk_content_deserializer_get_user_data(GdkContentDeserializer* deserializer);
	GValue* gdk_content_deserializer_get_value(GdkContentDeserializer* deserializer);
	void gdk_content_deserializer_return_error(GdkContentDeserializer* deserializer, GError* error);
	void gdk_content_deserializer_return_success(GdkContentDeserializer* deserializer);
	void gdk_content_deserializer_set_task_data(GdkContentDeserializer* deserializer, void* data, GDestroyNotify notify);

	// gdk.ContentFormats

	GType gdk_content_formats_get_type();
	GdkContentFormats* gdk_content_formats_new(char** mimeTypes, uint nMimeTypes);
	GdkContentFormats* gdk_content_formats_new_for_gtype(GType type);
	int gdk_content_formats_contain_gtype(GdkContentFormats* formats, GType type);
	int gdk_content_formats_contain_mime_type(GdkContentFormats* formats, const(char)* mimeType);
	GType* gdk_content_formats_get_gtypes(GdkContentFormats* formats, size_t* nGtypes);
	char** gdk_content_formats_get_mime_types(GdkContentFormats* formats, size_t* nMimeTypes);
	int gdk_content_formats_match(GdkContentFormats* first, GdkContentFormats* second);
	GType gdk_content_formats_match_gtype(GdkContentFormats* first, GdkContentFormats* second);
	const(char)* gdk_content_formats_match_mime_type(GdkContentFormats* first, GdkContentFormats* second);
	void gdk_content_formats_print(GdkContentFormats* formats, GString* string_);
	GdkContentFormats* gdk_content_formats_ref(GdkContentFormats* formats);
	char* gdk_content_formats_to_string(GdkContentFormats* formats);
	GdkContentFormats* gdk_content_formats_union(GdkContentFormats* first, GdkContentFormats* second);
	GdkContentFormats* gdk_content_formats_union_deserialize_gtypes(GdkContentFormats* formats);
	GdkContentFormats* gdk_content_formats_union_deserialize_mime_types(GdkContentFormats* formats);
	GdkContentFormats* gdk_content_formats_union_serialize_gtypes(GdkContentFormats* formats);
	GdkContentFormats* gdk_content_formats_union_serialize_mime_types(GdkContentFormats* formats);
	void gdk_content_formats_unref(GdkContentFormats* formats);

	// gdk.ContentFormatsBuilder

	GType gdk_content_formats_builder_get_type();
	GdkContentFormatsBuilder* gdk_content_formats_builder_new();
	void gdk_content_formats_builder_add_formats(GdkContentFormatsBuilder* builder, GdkContentFormats* formats);
	void gdk_content_formats_builder_add_gtype(GdkContentFormatsBuilder* builder, GType type);
	void gdk_content_formats_builder_add_mime_type(GdkContentFormatsBuilder* builder, const(char)* mimeType);
	GdkContentFormats* gdk_content_formats_builder_free_to_formats(GdkContentFormatsBuilder* builder);
	GdkContentFormatsBuilder* gdk_content_formats_builder_ref(GdkContentFormatsBuilder* builder);
	GdkContentFormats* gdk_content_formats_builder_to_formats(GdkContentFormatsBuilder* builder);
	void gdk_content_formats_builder_unref(GdkContentFormatsBuilder* builder);

	// gdk.ContentProvider

	GType gdk_content_provider_get_type();
	GdkContentProvider* gdk_content_provider_new_for_bytes(const(char)* mimeType, GBytes* bytes);
	GdkContentProvider* gdk_content_provider_new_for_value(GValue* value);
	GdkContentProvider* gdk_content_provider_new_typed(GType type, ... );
	GdkContentProvider* gdk_content_provider_new_union(GdkContentProvider** providers, size_t nProviders);
	void gdk_content_provider_content_changed(GdkContentProvider* provider);
	int gdk_content_provider_get_value(GdkContentProvider* provider, GValue* value, GError** err);
	GdkContentFormats* gdk_content_provider_ref_formats(GdkContentProvider* provider);
	GdkContentFormats* gdk_content_provider_ref_storable_formats(GdkContentProvider* provider);
	void gdk_content_provider_write_mime_type_async(GdkContentProvider* provider, const(char)* mimeType, GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int gdk_content_provider_write_mime_type_finish(GdkContentProvider* provider, GAsyncResult* result, GError** err);

	// gdk.ContentSerializer

	GType gdk_content_serializer_get_type();
	GCancellable* gdk_content_serializer_get_cancellable(GdkContentSerializer* serializer);
	GType gdk_content_serializer_get_gtype(GdkContentSerializer* serializer);
	const(char)* gdk_content_serializer_get_mime_type(GdkContentSerializer* serializer);
	GOutputStream* gdk_content_serializer_get_output_stream(GdkContentSerializer* serializer);
	int gdk_content_serializer_get_priority(GdkContentSerializer* serializer);
	void* gdk_content_serializer_get_task_data(GdkContentSerializer* serializer);
	void* gdk_content_serializer_get_user_data(GdkContentSerializer* serializer);
	GValue* gdk_content_serializer_get_value(GdkContentSerializer* serializer);
	void gdk_content_serializer_return_error(GdkContentSerializer* serializer, GError* error);
	void gdk_content_serializer_return_success(GdkContentSerializer* serializer);
	void gdk_content_serializer_set_task_data(GdkContentSerializer* serializer, void* data, GDestroyNotify notify);

	// gdk.CrossingEvent

	GType gdk_crossing_event_get_type();
	GdkNotifyType gdk_crossing_event_get_detail(GdkEvent* event);
	int gdk_crossing_event_get_focus(GdkEvent* event);
	GdkCrossingMode gdk_crossing_event_get_mode(GdkEvent* event);

	// gdk.Cursor

	GType gdk_cursor_get_type();
	GdkCursor* gdk_cursor_new_from_name(const(char)* name, GdkCursor* fallback);
	GdkCursor* gdk_cursor_new_from_texture(GdkTexture* texture, int hotspotX, int hotspotY, GdkCursor* fallback);
	GdkCursor* gdk_cursor_get_fallback(GdkCursor* cursor);
	int gdk_cursor_get_hotspot_x(GdkCursor* cursor);
	int gdk_cursor_get_hotspot_y(GdkCursor* cursor);
	const(char)* gdk_cursor_get_name(GdkCursor* cursor);
	GdkTexture* gdk_cursor_get_texture(GdkCursor* cursor);

	// gdk.DNDEvent

	GType gdk_dnd_event_get_type();
	GdkDrop* gdk_dnd_event_get_drop(GdkEvent* event);

	// gdk.DeleteEvent

	GType gdk_delete_event_get_type();

	// gdk.Device

	GType gdk_device_get_type();
	int gdk_device_get_caps_lock_state(GdkDevice* device);
	GdkDeviceTool* gdk_device_get_device_tool(GdkDevice* device);
	PangoDirection gdk_device_get_direction(GdkDevice* device);
	GdkDisplay* gdk_device_get_display(GdkDevice* device);
	int gdk_device_get_has_cursor(GdkDevice* device);
	GdkModifierType gdk_device_get_modifier_state(GdkDevice* device);
	const(char)* gdk_device_get_name(GdkDevice* device);
	int gdk_device_get_num_lock_state(GdkDevice* device);
	uint gdk_device_get_num_touches(GdkDevice* device);
	const(char)* gdk_device_get_product_id(GdkDevice* device);
	int gdk_device_get_scroll_lock_state(GdkDevice* device);
	GdkSeat* gdk_device_get_seat(GdkDevice* device);
	GdkInputSource gdk_device_get_source(GdkDevice* device);
	GdkSurface* gdk_device_get_surface_at_position(GdkDevice* device, double* winX, double* winY);
	uint gdk_device_get_timestamp(GdkDevice* device);
	const(char)* gdk_device_get_vendor_id(GdkDevice* device);
	int gdk_device_has_bidi_layouts(GdkDevice* device);

	// gdk.DevicePad

	GType gdk_device_pad_get_type();
	int gdk_device_pad_get_feature_group(GdkDevicePad* pad, GdkDevicePadFeature feature, int featureIdx);
	int gdk_device_pad_get_group_n_modes(GdkDevicePad* pad, int groupIdx);
	int gdk_device_pad_get_n_features(GdkDevicePad* pad, GdkDevicePadFeature feature);
	int gdk_device_pad_get_n_groups(GdkDevicePad* pad);

	// gdk.DeviceTool

	GType gdk_device_tool_get_type();
	GdkAxisFlags gdk_device_tool_get_axes(GdkDeviceTool* tool);
	ulong gdk_device_tool_get_hardware_id(GdkDeviceTool* tool);
	ulong gdk_device_tool_get_serial(GdkDeviceTool* tool);
	GdkDeviceToolType gdk_device_tool_get_tool_type(GdkDeviceTool* tool);

	// gdk.Display

	GType gdk_display_get_type();
	GdkDisplay* gdk_display_get_default();
	GdkDisplay* gdk_display_open(const(char)* displayName);
	void gdk_display_beep(GdkDisplay* display);
	void gdk_display_close(GdkDisplay* display);
	int gdk_display_device_is_grabbed(GdkDisplay* display, GdkDevice* device);
	void gdk_display_flush(GdkDisplay* display);
	GdkAppLaunchContext* gdk_display_get_app_launch_context(GdkDisplay* display);
	GdkClipboard* gdk_display_get_clipboard(GdkDisplay* display);
	GdkSeat* gdk_display_get_default_seat(GdkDisplay* display);
	GdkMonitor* gdk_display_get_monitor_at_surface(GdkDisplay* display, GdkSurface* surface);
	GListModel* gdk_display_get_monitors(GdkDisplay* self);
	const(char)* gdk_display_get_name(GdkDisplay* display);
	GdkClipboard* gdk_display_get_primary_clipboard(GdkDisplay* display);
	int gdk_display_get_setting(GdkDisplay* display, const(char)* name, GValue* value);
	const(char)* gdk_display_get_startup_notification_id(GdkDisplay* display);
	int gdk_display_is_closed(GdkDisplay* display);
	int gdk_display_is_composited(GdkDisplay* display);
	int gdk_display_is_rgba(GdkDisplay* display);
	GList* gdk_display_list_seats(GdkDisplay* display);
	int gdk_display_map_keycode(GdkDisplay* display, uint keycode, GdkKeymapKey** keys, uint** keyvals, int* nEntries);
	int gdk_display_map_keyval(GdkDisplay* display, uint keyval, GdkKeymapKey** keys, int* nKeys);
	void gdk_display_notify_startup_complete(GdkDisplay* display, const(char)* startupId);
	void gdk_display_put_event(GdkDisplay* display, GdkEvent* event);
	int gdk_display_supports_input_shapes(GdkDisplay* display);
	void gdk_display_sync(GdkDisplay* display);
	int gdk_display_translate_key(GdkDisplay* display, uint keycode, GdkModifierType state, int group, uint* keyval, int* effectiveGroup, int* level, GdkModifierType* consumed);

	// gdk.DisplayManager

	GType gdk_display_manager_get_type();
	GdkDisplayManager* gdk_display_manager_get();
	GdkDisplay* gdk_display_manager_get_default_display(GdkDisplayManager* manager);
	GSList* gdk_display_manager_list_displays(GdkDisplayManager* manager);
	GdkDisplay* gdk_display_manager_open_display(GdkDisplayManager* manager, const(char)* name);
	void gdk_display_manager_set_default_display(GdkDisplayManager* manager, GdkDisplay* display);

	// gdk.Drag

	GType gdk_drag_get_type();
	GdkDrag* gdk_drag_begin(GdkSurface* surface, GdkDevice* device, GdkContentProvider* content, GdkDragAction actions, double dx, double dy);
	void gdk_drag_drop_done(GdkDrag* drag, int success);
	GdkDragAction gdk_drag_get_actions(GdkDrag* drag);
	GdkContentProvider* gdk_drag_get_content(GdkDrag* drag);
	GdkDevice* gdk_drag_get_device(GdkDrag* drag);
	GdkDisplay* gdk_drag_get_display(GdkDrag* drag);
	GdkSurface* gdk_drag_get_drag_surface(GdkDrag* drag);
	GdkContentFormats* gdk_drag_get_formats(GdkDrag* drag);
	GdkDragAction gdk_drag_get_selected_action(GdkDrag* drag);
	GdkSurface* gdk_drag_get_surface(GdkDrag* drag);
	void gdk_drag_set_hotspot(GdkDrag* drag, int hotX, int hotY);

	// gdk.DragSurface

	GType gdk_drag_surface_get_type();
	int gdk_drag_surface_present(GdkDragSurface* dragSurface, int width, int height);

	// gdk.DrawContext

	GType gdk_draw_context_get_type();
	void gdk_draw_context_begin_frame(GdkDrawContext* context, cairo_region_t* region);
	void gdk_draw_context_end_frame(GdkDrawContext* context);
	GdkDisplay* gdk_draw_context_get_display(GdkDrawContext* context);
	cairo_region_t* gdk_draw_context_get_frame_region(GdkDrawContext* context);
	GdkSurface* gdk_draw_context_get_surface(GdkDrawContext* context);
	int gdk_draw_context_is_in_frame(GdkDrawContext* context);

	// gdk.Drop

	GType gdk_drop_get_type();
	void gdk_drop_finish(GdkDrop* self, GdkDragAction action);
	GdkDragAction gdk_drop_get_actions(GdkDrop* self);
	GdkDevice* gdk_drop_get_device(GdkDrop* self);
	GdkDisplay* gdk_drop_get_display(GdkDrop* self);
	GdkDrag* gdk_drop_get_drag(GdkDrop* self);
	GdkContentFormats* gdk_drop_get_formats(GdkDrop* self);
	GdkSurface* gdk_drop_get_surface(GdkDrop* self);
	void gdk_drop_read_async(GdkDrop* self, char** mimeTypes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GInputStream* gdk_drop_read_finish(GdkDrop* self, GAsyncResult* result, char** outMimeType, GError** err);
	void gdk_drop_read_value_async(GdkDrop* self, GType type, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GValue* gdk_drop_read_value_finish(GdkDrop* self, GAsyncResult* result, GError** err);
	void gdk_drop_status(GdkDrop* self, GdkDragAction actions, GdkDragAction preferred);

	// gdk.Event

	GType gdk_event_get_type();
	int gdk_events_get_angle(GdkEvent* event1, GdkEvent* event2, double* angle);
	int gdk_events_get_center(GdkEvent* event1, GdkEvent* event2, double* x, double* y);
	int gdk_events_get_distance(GdkEvent* event1, GdkEvent* event2, double* distance);
	int gdk_event_get_axes(GdkEvent* event, double** axes, uint* nAxes);
	int gdk_event_get_axis(GdkEvent* event, GdkAxisUse axisUse, double* value);
	GdkDevice* gdk_event_get_device(GdkEvent* event);
	GdkDeviceTool* gdk_event_get_device_tool(GdkEvent* event);
	GdkDisplay* gdk_event_get_display(GdkEvent* event);
	GdkEventSequence* gdk_event_get_event_sequence(GdkEvent* event);
	GdkEventType gdk_event_get_event_type(GdkEvent* event);
	GdkTimeCoord* gdk_event_get_history(GdkEvent* event, uint* outNCoords);
	GdkModifierType gdk_event_get_modifier_state(GdkEvent* event);
	int gdk_event_get_pointer_emulated(GdkEvent* event);
	int gdk_event_get_position(GdkEvent* event, double* x, double* y);
	GdkSeat* gdk_event_get_seat(GdkEvent* event);
	GdkSurface* gdk_event_get_surface(GdkEvent* event);
	uint gdk_event_get_time(GdkEvent* event);
	GdkEvent* gdk_event_ref(GdkEvent* event);
	int gdk_event_triggers_context_menu(GdkEvent* event);
	void gdk_event_unref(GdkEvent* event);

	// gdk.EventSequence

	GType gdk_event_sequence_get_type();

	// gdk.FocusEvent

	GType gdk_focus_event_get_type();
	int gdk_focus_event_get_in(GdkEvent* event);

	// gdk.FrameClock

	GType gdk_frame_clock_get_type();
	void gdk_frame_clock_begin_updating(GdkFrameClock* frameClock);
	void gdk_frame_clock_end_updating(GdkFrameClock* frameClock);
	GdkFrameTimings* gdk_frame_clock_get_current_timings(GdkFrameClock* frameClock);
	double gdk_frame_clock_get_fps(GdkFrameClock* frameClock);
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
	GdkSurface* gdk_gl_context_get_surface(GdkGLContext* context);
	int gdk_gl_context_get_use_es(GdkGLContext* context);
	void gdk_gl_context_get_version(GdkGLContext* context, int* major, int* minor);
	int gdk_gl_context_is_legacy(GdkGLContext* context);
	void gdk_gl_context_make_current(GdkGLContext* context);
	int gdk_gl_context_realize(GdkGLContext* context, GError** err);
	void gdk_gl_context_set_debug_enabled(GdkGLContext* context, int enabled);
	void gdk_gl_context_set_forward_compatible(GdkGLContext* context, int compatible);
	void gdk_gl_context_set_required_version(GdkGLContext* context, int major, int minor);
	void gdk_gl_context_set_use_es(GdkGLContext* context, int useEs);

	// gdk.GLTexture

	GType gdk_gl_texture_get_type();
	GdkTexture* gdk_gl_texture_new(GdkGLContext* context, uint id, int width, int height, GDestroyNotify destroy, void* data);
	void gdk_gl_texture_release(GdkGLTexture* self);

	// gdk.GrabBrokenEvent

	GType gdk_grab_broken_event_get_type();
	GdkSurface* gdk_grab_broken_event_get_grab_surface(GdkEvent* event);
	int gdk_grab_broken_event_get_implicit(GdkEvent* event);

	// gdk.KeyEvent

	GType gdk_key_event_get_type();
	GdkModifierType gdk_key_event_get_consumed_modifiers(GdkEvent* event);
	uint gdk_key_event_get_keycode(GdkEvent* event);
	uint gdk_key_event_get_keyval(GdkEvent* event);
	uint gdk_key_event_get_layout(GdkEvent* event);
	uint gdk_key_event_get_level(GdkEvent* event);
	int gdk_key_event_get_match(GdkEvent* event, uint* keyval, GdkModifierType* modifiers);
	int gdk_key_event_is_modifier(GdkEvent* event);
	GdkKeyMatch gdk_key_event_matches(GdkEvent* event, uint keyval, GdkModifierType modifiers);

	// gdk.MemoryTexture

	GType gdk_memory_texture_get_type();
	GdkTexture* gdk_memory_texture_new(int width, int height, GdkMemoryFormat format, GBytes* bytes, size_t stride);

	// gdk.MonitorGdk

	GType gdk_monitor_get_type();
	const(char)* gdk_monitor_get_connector(GdkMonitor* monitor);
	GdkDisplay* gdk_monitor_get_display(GdkMonitor* monitor);
	void gdk_monitor_get_geometry(GdkMonitor* monitor, GdkRectangle* geometry);
	int gdk_monitor_get_height_mm(GdkMonitor* monitor);
	const(char)* gdk_monitor_get_manufacturer(GdkMonitor* monitor);
	const(char)* gdk_monitor_get_model(GdkMonitor* monitor);
	int gdk_monitor_get_refresh_rate(GdkMonitor* monitor);
	int gdk_monitor_get_scale_factor(GdkMonitor* monitor);
	GdkSubpixelLayout gdk_monitor_get_subpixel_layout(GdkMonitor* monitor);
	int gdk_monitor_get_width_mm(GdkMonitor* monitor);
	int gdk_monitor_is_valid(GdkMonitor* monitor);

	// gdk.MotionEvent

	GType gdk_motion_event_get_type();

	// gdk.PadEvent

	GType gdk_pad_event_get_type();
	void gdk_pad_event_get_axis_value(GdkEvent* event, uint* index, double* value);
	uint gdk_pad_event_get_button(GdkEvent* event);
	void gdk_pad_event_get_group_mode(GdkEvent* event, uint* group, uint* mode);

	// gdk.Paintable

	GType gdk_paintable_get_type();
	GdkPaintable* gdk_paintable_new_empty(int intrinsicWidth, int intrinsicHeight);
	void gdk_paintable_compute_concrete_size(GdkPaintable* paintable, double specifiedWidth, double specifiedHeight, double defaultWidth, double defaultHeight, double* concreteWidth, double* concreteHeight);
	GdkPaintable* gdk_paintable_get_current_image(GdkPaintable* paintable);
	GdkPaintableFlags gdk_paintable_get_flags(GdkPaintable* paintable);
	double gdk_paintable_get_intrinsic_aspect_ratio(GdkPaintable* paintable);
	int gdk_paintable_get_intrinsic_height(GdkPaintable* paintable);
	int gdk_paintable_get_intrinsic_width(GdkPaintable* paintable);
	void gdk_paintable_invalidate_contents(GdkPaintable* paintable);
	void gdk_paintable_invalidate_size(GdkPaintable* paintable);
	void gdk_paintable_snapshot(GdkPaintable* paintable, GdkSnapshot* snapshot, double width, double height);

	// gdk.Popup

	GType gdk_popup_get_type();
	int gdk_popup_get_autohide(GdkPopup* popup);
	GdkSurface* gdk_popup_get_parent(GdkPopup* popup);
	int gdk_popup_get_position_x(GdkPopup* popup);
	int gdk_popup_get_position_y(GdkPopup* popup);
	GdkGravity gdk_popup_get_rect_anchor(GdkPopup* popup);
	GdkGravity gdk_popup_get_surface_anchor(GdkPopup* popup);
	int gdk_popup_present(GdkPopup* popup, int width, int height, GdkPopupLayout* layout);

	// gdk.PopupLayout

	GType gdk_popup_layout_get_type();
	GdkPopupLayout* gdk_popup_layout_new(GdkRectangle* anchorRect, GdkGravity rectAnchor, GdkGravity surfaceAnchor);
	GdkPopupLayout* gdk_popup_layout_copy(GdkPopupLayout* layout);
	int gdk_popup_layout_equal(GdkPopupLayout* layout, GdkPopupLayout* other);
	GdkAnchorHints gdk_popup_layout_get_anchor_hints(GdkPopupLayout* layout);
	GdkRectangle* gdk_popup_layout_get_anchor_rect(GdkPopupLayout* layout);
	void gdk_popup_layout_get_offset(GdkPopupLayout* layout, int* dx, int* dy);
	GdkGravity gdk_popup_layout_get_rect_anchor(GdkPopupLayout* layout);
	void gdk_popup_layout_get_shadow_width(GdkPopupLayout* layout, int* left, int* right, int* top, int* bottom);
	GdkGravity gdk_popup_layout_get_surface_anchor(GdkPopupLayout* layout);
	GdkPopupLayout* gdk_popup_layout_ref(GdkPopupLayout* layout);
	void gdk_popup_layout_set_anchor_hints(GdkPopupLayout* layout, GdkAnchorHints anchorHints);
	void gdk_popup_layout_set_anchor_rect(GdkPopupLayout* layout, GdkRectangle* anchorRect);
	void gdk_popup_layout_set_offset(GdkPopupLayout* layout, int dx, int dy);
	void gdk_popup_layout_set_rect_anchor(GdkPopupLayout* layout, GdkGravity anchor);
	void gdk_popup_layout_set_shadow_width(GdkPopupLayout* layout, int left, int right, int top, int bottom);
	void gdk_popup_layout_set_surface_anchor(GdkPopupLayout* layout, GdkGravity anchor);
	void gdk_popup_layout_unref(GdkPopupLayout* layout);

	// gdk.ProximityEvent

	GType gdk_proximity_event_get_type();

	// gdk.RGBA

	GType gdk_rgba_get_type();
	GdkRGBA* gdk_rgba_copy(GdkRGBA* rgba);
	int gdk_rgba_equal(void* p1, void* p2);
	void gdk_rgba_free(GdkRGBA* rgba);
	uint gdk_rgba_hash(void* p);
	int gdk_rgba_is_clear(GdkRGBA* rgba);
	int gdk_rgba_is_opaque(GdkRGBA* rgba);
	int gdk_rgba_parse(GdkRGBA* rgba, const(char)* spec);
	char* gdk_rgba_to_string(GdkRGBA* rgba);

	// gdk.Rectangle

	GType gdk_rectangle_get_type();
	int gdk_rectangle_contains_point(GdkRectangle* rect, int x, int y);
	int gdk_rectangle_equal(GdkRectangle* rect1, GdkRectangle* rect2);
	int gdk_rectangle_intersect(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest);
	void gdk_rectangle_union(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest);

	// gdk.ScrollEvent

	GType gdk_scroll_event_get_type();
	void gdk_scroll_event_get_deltas(GdkEvent* event, double* deltaX, double* deltaY);
	GdkScrollDirection gdk_scroll_event_get_direction(GdkEvent* event);
	int gdk_scroll_event_is_stop(GdkEvent* event);

	// gdk.Seat

	GType gdk_seat_get_type();
	GdkSeatCapabilities gdk_seat_get_capabilities(GdkSeat* seat);
	GList* gdk_seat_get_devices(GdkSeat* seat, GdkSeatCapabilities capabilities);
	GdkDisplay* gdk_seat_get_display(GdkSeat* seat);
	GdkDevice* gdk_seat_get_keyboard(GdkSeat* seat);
	GdkDevice* gdk_seat_get_pointer(GdkSeat* seat);
	GList* gdk_seat_get_tools(GdkSeat* seat);

	// gdk.Snapshot

	GType gdk_snapshot_get_type();

	// gdk.Surface

	GType gdk_surface_get_type();
	GdkSurface* gdk_surface_new_popup(GdkSurface* parent, int autohide);
	GdkSurface* gdk_surface_new_toplevel(GdkDisplay* display);
	void gdk_surface_beep(GdkSurface* surface);
	GdkCairoContext* gdk_surface_create_cairo_context(GdkSurface* surface);
	GdkGLContext* gdk_surface_create_gl_context(GdkSurface* surface, GError** err);
	cairo_surface_t* gdk_surface_create_similar_surface(GdkSurface* surface, cairo_content_t content, int width, int height);
	GdkVulkanContext* gdk_surface_create_vulkan_context(GdkSurface* surface, GError** err);
	void gdk_surface_destroy(GdkSurface* surface);
	GdkCursor* gdk_surface_get_cursor(GdkSurface* surface);
	GdkCursor* gdk_surface_get_device_cursor(GdkSurface* surface, GdkDevice* device);
	int gdk_surface_get_device_position(GdkSurface* surface, GdkDevice* device, double* x, double* y, GdkModifierType* mask);
	GdkDisplay* gdk_surface_get_display(GdkSurface* surface);
	GdkFrameClock* gdk_surface_get_frame_clock(GdkSurface* surface);
	int gdk_surface_get_height(GdkSurface* surface);
	int gdk_surface_get_mapped(GdkSurface* surface);
	int gdk_surface_get_scale_factor(GdkSurface* surface);
	int gdk_surface_get_width(GdkSurface* surface);
	void gdk_surface_hide(GdkSurface* surface);
	int gdk_surface_is_destroyed(GdkSurface* surface);
	void gdk_surface_queue_render(GdkSurface* surface);
	void gdk_surface_request_layout(GdkSurface* surface);
	void gdk_surface_set_cursor(GdkSurface* surface, GdkCursor* cursor);
	void gdk_surface_set_device_cursor(GdkSurface* surface, GdkDevice* device, GdkCursor* cursor);
	void gdk_surface_set_input_region(GdkSurface* surface, cairo_region_t* region);
	void gdk_surface_set_opaque_region(GdkSurface* surface, cairo_region_t* region);
	int gdk_surface_translate_coordinates(GdkSurface* from, GdkSurface* to, double* x, double* y);

	// gdk.Texture

	GType gdk_texture_get_type();
	GdkTexture* gdk_texture_new_for_pixbuf(GdkPixbuf* pixbuf);
	GdkTexture* gdk_texture_new_from_file(GFile* file, GError** err);
	GdkTexture* gdk_texture_new_from_resource(const(char)* resourcePath);
	void gdk_texture_download(GdkTexture* texture, char* data, size_t stride);
	int gdk_texture_get_height(GdkTexture* texture);
	int gdk_texture_get_width(GdkTexture* texture);
	int gdk_texture_save_to_png(GdkTexture* texture, const(char)* filename);

	// gdk.Toplevel

	GType gdk_toplevel_get_type();
	void gdk_toplevel_begin_move(GdkToplevel* toplevel, GdkDevice* device, int button, double x, double y, uint timestamp);
	void gdk_toplevel_begin_resize(GdkToplevel* toplevel, GdkSurfaceEdge edge, GdkDevice* device, int button, double x, double y, uint timestamp);
	void gdk_toplevel_focus(GdkToplevel* toplevel, uint timestamp);
	GdkToplevelState gdk_toplevel_get_state(GdkToplevel* toplevel);
	void gdk_toplevel_inhibit_system_shortcuts(GdkToplevel* toplevel, GdkEvent* event);
	int gdk_toplevel_lower(GdkToplevel* toplevel);
	int gdk_toplevel_minimize(GdkToplevel* toplevel);
	void gdk_toplevel_present(GdkToplevel* toplevel, GdkToplevelLayout* layout);
	void gdk_toplevel_restore_system_shortcuts(GdkToplevel* toplevel);
	void gdk_toplevel_set_decorated(GdkToplevel* toplevel, int decorated);
	void gdk_toplevel_set_deletable(GdkToplevel* toplevel, int deletable);
	void gdk_toplevel_set_icon_list(GdkToplevel* toplevel, GList* surfaces);
	void gdk_toplevel_set_modal(GdkToplevel* toplevel, int modal);
	void gdk_toplevel_set_startup_id(GdkToplevel* toplevel, const(char)* startupId);
	void gdk_toplevel_set_title(GdkToplevel* toplevel, const(char)* title);
	void gdk_toplevel_set_transient_for(GdkToplevel* toplevel, GdkSurface* parent);
	int gdk_toplevel_show_window_menu(GdkToplevel* toplevel, GdkEvent* event);
	int gdk_toplevel_supports_edge_constraints(GdkToplevel* toplevel);

	// gdk.ToplevelLayout

	GType gdk_toplevel_layout_get_type();
	GdkToplevelLayout* gdk_toplevel_layout_new();
	GdkToplevelLayout* gdk_toplevel_layout_copy(GdkToplevelLayout* layout);
	int gdk_toplevel_layout_equal(GdkToplevelLayout* layout, GdkToplevelLayout* other);
	int gdk_toplevel_layout_get_fullscreen(GdkToplevelLayout* layout, int* fullscreen);
	GdkMonitor* gdk_toplevel_layout_get_fullscreen_monitor(GdkToplevelLayout* layout);
	int gdk_toplevel_layout_get_maximized(GdkToplevelLayout* layout, int* maximized);
	int gdk_toplevel_layout_get_resizable(GdkToplevelLayout* layout);
	GdkToplevelLayout* gdk_toplevel_layout_ref(GdkToplevelLayout* layout);
	void gdk_toplevel_layout_set_fullscreen(GdkToplevelLayout* layout, int fullscreen, GdkMonitor* monitor);
	void gdk_toplevel_layout_set_maximized(GdkToplevelLayout* layout, int maximized);
	void gdk_toplevel_layout_set_resizable(GdkToplevelLayout* layout, int resizable);
	void gdk_toplevel_layout_unref(GdkToplevelLayout* layout);

	// gdk.ToplevelSize

	void gdk_toplevel_size_get_bounds(GdkToplevelSize* size, int* boundsWidth, int* boundsHeight);
	void gdk_toplevel_size_set_min_size(GdkToplevelSize* size, int minWidth, int minHeight);
	void gdk_toplevel_size_set_shadow_width(GdkToplevelSize* size, int left, int right, int top, int bottom);
	void gdk_toplevel_size_set_size(GdkToplevelSize* size, int width, int height);

	// gdk.TouchEvent

	GType gdk_touch_event_get_type();
	int gdk_touch_event_get_emulating_pointer(GdkEvent* event);

	// gdk.TouchpadEvent

	GType gdk_touchpad_event_get_type();
	void gdk_touchpad_event_get_deltas(GdkEvent* event, double* dx, double* dy);
	GdkTouchpadGesturePhase gdk_touchpad_event_get_gesture_phase(GdkEvent* event);
	uint gdk_touchpad_event_get_n_fingers(GdkEvent* event);
	double gdk_touchpad_event_get_pinch_angle_delta(GdkEvent* event);
	double gdk_touchpad_event_get_pinch_scale(GdkEvent* event);

	// gdk.VulkanContext

	GType gdk_vulkan_context_get_type();
}