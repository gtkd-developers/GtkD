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


module gio.c.functions;

import std.stdio;
import gio.c.types;
version (Windows)
	static immutable LIBRARY_GIO = ["libgio-2.0-0.dll;gio-2.0-0.dll;gio-2.dll"];
else version (OSX)
	static immutable LIBRARY_GIO = ["libgio-2.0.0.dylib"];
else
	static immutable LIBRARY_GIO = ["libgio-2.0.so.0"];

__gshared extern(C)
{

	// gio.Action

	GType g_action_get_type();
	int g_action_name_is_valid(const(char)* actionName);
	int g_action_parse_detailed_name(const(char)* detailedName, char** actionName, GVariant** targetValue, GError** err);
	char* g_action_print_detailed_name(const(char)* actionName, GVariant* targetValue);
	void g_action_activate(GAction* action, GVariant* parameter);
	void g_action_change_state(GAction* action, GVariant* value);
	int g_action_get_enabled(GAction* action);
	const(char)* g_action_get_name(GAction* action);
	GVariantType* g_action_get_parameter_type(GAction* action);
	GVariant* g_action_get_state(GAction* action);
	GVariant* g_action_get_state_hint(GAction* action);
	GVariantType* g_action_get_state_type(GAction* action);

	// gio.ActionGroup

	GType g_action_group_get_type();
	void g_action_group_action_added(GActionGroup* actionGroup, const(char)* actionName);
	void g_action_group_action_enabled_changed(GActionGroup* actionGroup, const(char)* actionName, int enabled);
	void g_action_group_action_removed(GActionGroup* actionGroup, const(char)* actionName);
	void g_action_group_action_state_changed(GActionGroup* actionGroup, const(char)* actionName, GVariant* state);
	void g_action_group_activate_action(GActionGroup* actionGroup, const(char)* actionName, GVariant* parameter);
	void g_action_group_change_action_state(GActionGroup* actionGroup, const(char)* actionName, GVariant* value);
	int g_action_group_get_action_enabled(GActionGroup* actionGroup, const(char)* actionName);
	GVariantType* g_action_group_get_action_parameter_type(GActionGroup* actionGroup, const(char)* actionName);
	GVariant* g_action_group_get_action_state(GActionGroup* actionGroup, const(char)* actionName);
	GVariant* g_action_group_get_action_state_hint(GActionGroup* actionGroup, const(char)* actionName);
	GVariantType* g_action_group_get_action_state_type(GActionGroup* actionGroup, const(char)* actionName);
	int g_action_group_has_action(GActionGroup* actionGroup, const(char)* actionName);
	char** g_action_group_list_actions(GActionGroup* actionGroup);
	int g_action_group_query_action(GActionGroup* actionGroup, const(char)* actionName, int* enabled, GVariantType** parameterType, GVariantType** stateType, GVariant** stateHint, GVariant** state);

	// gio.ActionMap

	GType g_action_map_get_type();
	void g_action_map_add_action(GActionMap* actionMap, GAction* action);
	void g_action_map_add_action_entries(GActionMap* actionMap, GActionEntry* entries, int nEntries, void* userData);
	GAction* g_action_map_lookup_action(GActionMap* actionMap, const(char)* actionName);
	void g_action_map_remove_action(GActionMap* actionMap, const(char)* actionName);

	// gio.AppInfo

	GType g_app_info_get_type();
	GAppInfo* g_app_info_create_from_commandline(char* commandline, const(char)* applicationName, GAppInfoCreateFlags flags, GError** err);
	GList* g_app_info_get_all();
	GList* g_app_info_get_all_for_type(const(char)* contentType);
	GAppInfo* g_app_info_get_default_for_type(const(char)* contentType, int mustSupportUris);
	GAppInfo* g_app_info_get_default_for_uri_scheme(const(char)* uriScheme);
	GList* g_app_info_get_fallback_for_type(const(char)* contentType);
	GList* g_app_info_get_recommended_for_type(const(char)* contentType);
	int g_app_info_launch_default_for_uri(const(char)* uri, GAppLaunchContext* context, GError** err);
	void g_app_info_launch_default_for_uri_async(const(char)* uri, GAppLaunchContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_app_info_launch_default_for_uri_finish(GAsyncResult* result, GError** err);
	void g_app_info_reset_type_associations(const(char)* contentType);
	int g_app_info_add_supports_type(GAppInfo* appinfo, const(char)* contentType, GError** err);
	int g_app_info_can_delete(GAppInfo* appinfo);
	int g_app_info_can_remove_supports_type(GAppInfo* appinfo);
	int g_app_info_delete(GAppInfo* appinfo);
	GAppInfo* g_app_info_dup(GAppInfo* appinfo);
	int g_app_info_equal(GAppInfo* appinfo1, GAppInfo* appinfo2);
	char* g_app_info_get_commandline(GAppInfo* appinfo);
	const(char)* g_app_info_get_description(GAppInfo* appinfo);
	const(char)* g_app_info_get_display_name(GAppInfo* appinfo);
	char* g_app_info_get_executable(GAppInfo* appinfo);
	GIcon* g_app_info_get_icon(GAppInfo* appinfo);
	const(char)* g_app_info_get_id(GAppInfo* appinfo);
	const(char)* g_app_info_get_name(GAppInfo* appinfo);
	char** g_app_info_get_supported_types(GAppInfo* appinfo);
	int g_app_info_launch(GAppInfo* appinfo, GList* files, GAppLaunchContext* context, GError** err);
	int g_app_info_launch_uris(GAppInfo* appinfo, GList* uris, GAppLaunchContext* context, GError** err);
	void g_app_info_launch_uris_async(GAppInfo* appinfo, GList* uris, GAppLaunchContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_app_info_launch_uris_finish(GAppInfo* appinfo, GAsyncResult* result, GError** err);
	int g_app_info_remove_supports_type(GAppInfo* appinfo, const(char)* contentType, GError** err);
	int g_app_info_set_as_default_for_extension(GAppInfo* appinfo, char* extension, GError** err);
	int g_app_info_set_as_default_for_type(GAppInfo* appinfo, const(char)* contentType, GError** err);
	int g_app_info_set_as_last_used_for_type(GAppInfo* appinfo, const(char)* contentType, GError** err);
	int g_app_info_should_show(GAppInfo* appinfo);
	int g_app_info_supports_files(GAppInfo* appinfo);
	int g_app_info_supports_uris(GAppInfo* appinfo);

	// gio.AppInfoMonitor

	GType g_app_info_monitor_get_type();
	GAppInfoMonitor* g_app_info_monitor_get();

	// gio.AppLaunchContext

	GType g_app_launch_context_get_type();
	GAppLaunchContext* g_app_launch_context_new();
	char* g_app_launch_context_get_display(GAppLaunchContext* context, GAppInfo* info, GList* files);
	char** g_app_launch_context_get_environment(GAppLaunchContext* context);
	char* g_app_launch_context_get_startup_notify_id(GAppLaunchContext* context, GAppInfo* info, GList* files);
	void g_app_launch_context_launch_failed(GAppLaunchContext* context, const(char)* startupNotifyId);
	void g_app_launch_context_setenv(GAppLaunchContext* context, char* variable, char* value);
	void g_app_launch_context_unsetenv(GAppLaunchContext* context, char* variable);

	// gio.Application

	GType g_application_get_type();
	GApplication* g_application_new(const(char)* applicationId, GApplicationFlags flags);
	GApplication* g_application_get_default();
	int g_application_id_is_valid(const(char)* applicationId);
	void g_application_activate(GApplication* application);
	void g_application_add_main_option(GApplication* application, const(char)* longName, char shortName, GOptionFlags flags, GOptionArg arg, const(char)* description, const(char)* argDescription);
	void g_application_add_main_option_entries(GApplication* application, GOptionEntry* entries);
	void g_application_add_option_group(GApplication* application, GOptionGroup* group);
	void g_application_bind_busy_property(GApplication* application, void* object, const(char)* property);
	const(char)* g_application_get_application_id(GApplication* application);
	GDBusConnection* g_application_get_dbus_connection(GApplication* application);
	const(char)* g_application_get_dbus_object_path(GApplication* application);
	GApplicationFlags g_application_get_flags(GApplication* application);
	uint g_application_get_inactivity_timeout(GApplication* application);
	int g_application_get_is_busy(GApplication* application);
	int g_application_get_is_registered(GApplication* application);
	int g_application_get_is_remote(GApplication* application);
	const(char)* g_application_get_resource_base_path(GApplication* application);
	void g_application_hold(GApplication* application);
	void g_application_mark_busy(GApplication* application);
	void g_application_open(GApplication* application, GFile** files, int nFiles, const(char)* hint);
	void g_application_quit(GApplication* application);
	int g_application_register(GApplication* application, GCancellable* cancellable, GError** err);
	void g_application_release(GApplication* application);
	int g_application_run(GApplication* application, int argc, char** argv);
	void g_application_send_notification(GApplication* application, const(char)* id, GNotification* notification);
	void g_application_set_action_group(GApplication* application, GActionGroup* actionGroup);
	void g_application_set_application_id(GApplication* application, const(char)* applicationId);
	void g_application_set_default(GApplication* application);
	void g_application_set_flags(GApplication* application, GApplicationFlags flags);
	void g_application_set_inactivity_timeout(GApplication* application, uint inactivityTimeout);
	void g_application_set_option_context_description(GApplication* application, const(char)* description);
	void g_application_set_option_context_parameter_string(GApplication* application, const(char)* parameterString);
	void g_application_set_option_context_summary(GApplication* application, const(char)* summary);
	void g_application_set_resource_base_path(GApplication* application, const(char)* resourcePath);
	void g_application_unbind_busy_property(GApplication* application, void* object, const(char)* property);
	void g_application_unmark_busy(GApplication* application);
	void g_application_withdraw_notification(GApplication* application, const(char)* id);

	// gio.ApplicationCommandLine

	GType g_application_command_line_get_type();
	GFile* g_application_command_line_create_file_for_arg(GApplicationCommandLine* cmdline, char* arg);
	char** g_application_command_line_get_arguments(GApplicationCommandLine* cmdline, int* argc);
	char* g_application_command_line_get_cwd(GApplicationCommandLine* cmdline);
	char** g_application_command_line_get_environ(GApplicationCommandLine* cmdline);
	int g_application_command_line_get_exit_status(GApplicationCommandLine* cmdline);
	int g_application_command_line_get_is_remote(GApplicationCommandLine* cmdline);
	GVariantDict* g_application_command_line_get_options_dict(GApplicationCommandLine* cmdline);
	GVariant* g_application_command_line_get_platform_data(GApplicationCommandLine* cmdline);
	GInputStream* g_application_command_line_get_stdin(GApplicationCommandLine* cmdline);
	const(char)* g_application_command_line_getenv(GApplicationCommandLine* cmdline, char* name);
	void g_application_command_line_print(GApplicationCommandLine* cmdline, const(char)* format, ... );
	void g_application_command_line_printerr(GApplicationCommandLine* cmdline, const(char)* format, ... );
	void g_application_command_line_set_exit_status(GApplicationCommandLine* cmdline, int exitStatus);

	// gio.AsyncInitable

	GType g_async_initable_get_type();
	void g_async_initable_new_async(GType objectType, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData, const(char)* firstPropertyName, ... );
	void g_async_initable_new_valist_async(GType objectType, const(char)* firstPropertyName, void* varArgs, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void g_async_initable_newv_async(GType objectType, uint nParameters, GParameter* parameters, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void g_async_initable_init_async(GAsyncInitable* initable, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_async_initable_init_finish(GAsyncInitable* initable, GAsyncResult* res, GError** err);
	GObject* g_async_initable_new_finish(GAsyncInitable* initable, GAsyncResult* res, GError** err);

	// gio.AsyncResult

	GType g_async_result_get_type();
	GObject* g_async_result_get_source_object(GAsyncResult* res);
	void* g_async_result_get_user_data(GAsyncResult* res);
	int g_async_result_is_tagged(GAsyncResult* res, void* sourceTag);
	int g_async_result_legacy_propagate_error(GAsyncResult* res, GError** err);

	// gio.BufferedInputStream

	GType g_buffered_input_stream_get_type();
	GInputStream* g_buffered_input_stream_new(GInputStream* baseStream);
	GInputStream* g_buffered_input_stream_new_sized(GInputStream* baseStream, size_t size);
	ptrdiff_t g_buffered_input_stream_fill(GBufferedInputStream* stream, ptrdiff_t count, GCancellable* cancellable, GError** err);
	void g_buffered_input_stream_fill_async(GBufferedInputStream* stream, ptrdiff_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	ptrdiff_t g_buffered_input_stream_fill_finish(GBufferedInputStream* stream, GAsyncResult* result, GError** err);
	size_t g_buffered_input_stream_get_available(GBufferedInputStream* stream);
	size_t g_buffered_input_stream_get_buffer_size(GBufferedInputStream* stream);
	size_t g_buffered_input_stream_peek(GBufferedInputStream* stream, void* buffer, size_t offset, size_t count);
	void* g_buffered_input_stream_peek_buffer(GBufferedInputStream* stream, size_t* count);
	int g_buffered_input_stream_read_byte(GBufferedInputStream* stream, GCancellable* cancellable, GError** err);
	void g_buffered_input_stream_set_buffer_size(GBufferedInputStream* stream, size_t size);

	// gio.BufferedOutputStream

	GType g_buffered_output_stream_get_type();
	GOutputStream* g_buffered_output_stream_new(GOutputStream* baseStream);
	GOutputStream* g_buffered_output_stream_new_sized(GOutputStream* baseStream, size_t size);
	int g_buffered_output_stream_get_auto_grow(GBufferedOutputStream* stream);
	size_t g_buffered_output_stream_get_buffer_size(GBufferedOutputStream* stream);
	void g_buffered_output_stream_set_auto_grow(GBufferedOutputStream* stream, int autoGrow);
	void g_buffered_output_stream_set_buffer_size(GBufferedOutputStream* stream, size_t size);

	// gio.BytesIcon

	GType g_bytes_icon_get_type();
	GIcon* g_bytes_icon_new(GBytes* bytes);
	GBytes* g_bytes_icon_get_bytes(GBytesIcon* icon);

	// gio.Cancellable

	GType g_cancellable_get_type();
	GCancellable* g_cancellable_new();
	GCancellable* g_cancellable_get_current();
	void g_cancellable_cancel(GCancellable* cancellable);
	gulong g_cancellable_connect(GCancellable* cancellable, GCallback callback, void* data, GDestroyNotify dataDestroyFunc);
	void g_cancellable_disconnect(GCancellable* cancellable, gulong handlerId);
	int g_cancellable_get_fd(GCancellable* cancellable);
	int g_cancellable_is_cancelled(GCancellable* cancellable);
	int g_cancellable_make_pollfd(GCancellable* cancellable, GPollFD* pollfd);
	void g_cancellable_pop_current(GCancellable* cancellable);
	void g_cancellable_push_current(GCancellable* cancellable);
	void g_cancellable_release_fd(GCancellable* cancellable);
	void g_cancellable_reset(GCancellable* cancellable);
	int g_cancellable_set_error_if_cancelled(GCancellable* cancellable, GError** err);
	GSource* g_cancellable_source_new(GCancellable* cancellable);

	// gio.CharsetConverter

	GType g_charset_converter_get_type();
	GCharsetConverter* g_charset_converter_new(const(char)* toCharset, const(char)* fromCharset, GError** err);
	uint g_charset_converter_get_num_fallbacks(GCharsetConverter* converter);
	int g_charset_converter_get_use_fallback(GCharsetConverter* converter);
	void g_charset_converter_set_use_fallback(GCharsetConverter* converter, int useFallback);

	// gio.Converter

	GType g_converter_get_type();
	GConverterResult g_converter_convert(GConverter* converter, void* inbuf, size_t inbufSize, void* outbuf, size_t outbufSize, GConverterFlags flags, size_t* bytesRead, size_t* bytesWritten, GError** err);
	void g_converter_reset(GConverter* converter);

	// gio.ConverterInputStream

	GType g_converter_input_stream_get_type();
	GInputStream* g_converter_input_stream_new(GInputStream* baseStream, GConverter* converter);
	GConverter* g_converter_input_stream_get_converter(GConverterInputStream* converterStream);

	// gio.ConverterOutputStream

	GType g_converter_output_stream_get_type();
	GOutputStream* g_converter_output_stream_new(GOutputStream* baseStream, GConverter* converter);
	GConverter* g_converter_output_stream_get_converter(GConverterOutputStream* converterStream);

	// gio.Credentials

	GType g_credentials_get_type();
	GCredentials* g_credentials_new();
	void* g_credentials_get_native(GCredentials* credentials, GCredentialsType nativeType);
	pid_t g_credentials_get_unix_pid(GCredentials* credentials, GError** err);
	uid_t g_credentials_get_unix_user(GCredentials* credentials, GError** err);
	int g_credentials_is_same_user(GCredentials* credentials, GCredentials* otherCredentials, GError** err);
	void g_credentials_set_native(GCredentials* credentials, GCredentialsType nativeType, void* native);
	int g_credentials_set_unix_user(GCredentials* credentials, uid_t uid, GError** err);
	char* g_credentials_to_string(GCredentials* credentials);

	// gio.DBusActionGroup

	GType g_dbus_action_group_get_type();
	GDBusActionGroup* g_dbus_action_group_get(GDBusConnection* connection, const(char)* busName, const(char)* objectPath);

	// gio.DBusAnnotationInfo

	GType g_dbus_annotation_info_get_type();
	GDBusAnnotationInfo* g_dbus_annotation_info_ref(GDBusAnnotationInfo* info);
	void g_dbus_annotation_info_unref(GDBusAnnotationInfo* info);
	const(char)* g_dbus_annotation_info_lookup(GDBusAnnotationInfo** annotations, const(char)* name);

	// gio.DBusArgInfo

	GType g_dbus_arg_info_get_type();
	GDBusArgInfo* g_dbus_arg_info_ref(GDBusArgInfo* info);
	void g_dbus_arg_info_unref(GDBusArgInfo* info);

	// gio.DBusAuthObserver

	GType g_dbus_auth_observer_get_type();
	GDBusAuthObserver* g_dbus_auth_observer_new();
	int g_dbus_auth_observer_allow_mechanism(GDBusAuthObserver* observer, const(char)* mechanism);
	int g_dbus_auth_observer_authorize_authenticated_peer(GDBusAuthObserver* observer, GIOStream* stream, GCredentials* credentials);

	// gio.DBusConnection

	GType g_dbus_connection_get_type();
	GDBusConnection* g_dbus_connection_new_finish(GAsyncResult* res, GError** err);
	GDBusConnection* g_dbus_connection_new_for_address_finish(GAsyncResult* res, GError** err);
	GDBusConnection* g_dbus_connection_new_for_address_sync(const(char)* address, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GError** err);
	GDBusConnection* g_dbus_connection_new_sync(GIOStream* stream, const(char)* guid, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GError** err);
	void g_dbus_connection_new(GIOStream* stream, const(char)* guid, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void g_dbus_connection_new_for_address(const(char)* address, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	uint g_dbus_connection_add_filter(GDBusConnection* connection, GDBusMessageFilterFunction filterFunction, void* userData, GDestroyNotify userDataFreeFunc);
	void g_dbus_connection_call(GDBusConnection* connection, const(char)* busName, const(char)* objectPath, const(char)* interfaceName, const(char)* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, int timeoutMsec, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GVariant* g_dbus_connection_call_finish(GDBusConnection* connection, GAsyncResult* res, GError** err);
	GVariant* g_dbus_connection_call_sync(GDBusConnection* connection, const(char)* busName, const(char)* objectPath, const(char)* interfaceName, const(char)* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, int timeoutMsec, GCancellable* cancellable, GError** err);
	void g_dbus_connection_call_with_unix_fd_list(GDBusConnection* connection, const(char)* busName, const(char)* objectPath, const(char)* interfaceName, const(char)* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, int timeoutMsec, GUnixFDList* fdList, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GVariant* g_dbus_connection_call_with_unix_fd_list_finish(GDBusConnection* connection, GUnixFDList** outFdList, GAsyncResult* res, GError** err);
	GVariant* g_dbus_connection_call_with_unix_fd_list_sync(GDBusConnection* connection, const(char)* busName, const(char)* objectPath, const(char)* interfaceName, const(char)* methodName, GVariant* parameters, GVariantType* replyType, GDBusCallFlags flags, int timeoutMsec, GUnixFDList* fdList, GUnixFDList** outFdList, GCancellable* cancellable, GError** err);
	void g_dbus_connection_close(GDBusConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_dbus_connection_close_finish(GDBusConnection* connection, GAsyncResult* res, GError** err);
	int g_dbus_connection_close_sync(GDBusConnection* connection, GCancellable* cancellable, GError** err);
	int g_dbus_connection_emit_signal(GDBusConnection* connection, const(char)* destinationBusName, const(char)* objectPath, const(char)* interfaceName, const(char)* signalName, GVariant* parameters, GError** err);
	uint g_dbus_connection_export_action_group(GDBusConnection* connection, const(char)* objectPath, GActionGroup* actionGroup, GError** err);
	uint g_dbus_connection_export_menu_model(GDBusConnection* connection, const(char)* objectPath, GMenuModel* menu, GError** err);
	void g_dbus_connection_flush(GDBusConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_dbus_connection_flush_finish(GDBusConnection* connection, GAsyncResult* res, GError** err);
	int g_dbus_connection_flush_sync(GDBusConnection* connection, GCancellable* cancellable, GError** err);
	GDBusCapabilityFlags g_dbus_connection_get_capabilities(GDBusConnection* connection);
	int g_dbus_connection_get_exit_on_close(GDBusConnection* connection);
	GDBusConnectionFlags g_dbus_connection_get_flags(GDBusConnection* connection);
	const(char)* g_dbus_connection_get_guid(GDBusConnection* connection);
	uint g_dbus_connection_get_last_serial(GDBusConnection* connection);
	GCredentials* g_dbus_connection_get_peer_credentials(GDBusConnection* connection);
	GIOStream* g_dbus_connection_get_stream(GDBusConnection* connection);
	const(char)* g_dbus_connection_get_unique_name(GDBusConnection* connection);
	int g_dbus_connection_is_closed(GDBusConnection* connection);
	uint g_dbus_connection_register_object(GDBusConnection* connection, const(char)* objectPath, GDBusInterfaceInfo* interfaceInfo, GDBusInterfaceVTable* vtable, void* userData, GDestroyNotify userDataFreeFunc, GError** err);
	uint g_dbus_connection_register_object_with_closures(GDBusConnection* connection, const(char)* objectPath, GDBusInterfaceInfo* interfaceInfo, GClosure* methodCallClosure, GClosure* getPropertyClosure, GClosure* setPropertyClosure, GError** err);
	uint g_dbus_connection_register_subtree(GDBusConnection* connection, const(char)* objectPath, GDBusSubtreeVTable* vtable, GDBusSubtreeFlags flags, void* userData, GDestroyNotify userDataFreeFunc, GError** err);
	void g_dbus_connection_remove_filter(GDBusConnection* connection, uint filterId);
	int g_dbus_connection_send_message(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, uint* outSerial, GError** err);
	void g_dbus_connection_send_message_with_reply(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, int timeoutMsec, uint* outSerial, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GDBusMessage* g_dbus_connection_send_message_with_reply_finish(GDBusConnection* connection, GAsyncResult* res, GError** err);
	GDBusMessage* g_dbus_connection_send_message_with_reply_sync(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, int timeoutMsec, uint* outSerial, GCancellable* cancellable, GError** err);
	void g_dbus_connection_set_exit_on_close(GDBusConnection* connection, int exitOnClose);
	uint g_dbus_connection_signal_subscribe(GDBusConnection* connection, const(char)* sender, const(char)* interfaceName, const(char)* member, const(char)* objectPath, const(char)* arg0, GDBusSignalFlags flags, GDBusSignalCallback callback, void* userData, GDestroyNotify userDataFreeFunc);
	void g_dbus_connection_signal_unsubscribe(GDBusConnection* connection, uint subscriptionId);
	void g_dbus_connection_start_message_processing(GDBusConnection* connection);
	void g_dbus_connection_unexport_action_group(GDBusConnection* connection, uint exportId);
	void g_dbus_connection_unexport_menu_model(GDBusConnection* connection, uint exportId);
	int g_dbus_connection_unregister_object(GDBusConnection* connection, uint registrationId);
	int g_dbus_connection_unregister_subtree(GDBusConnection* connection, uint registrationId);
	void g_bus_get(GBusType busType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GDBusConnection* g_bus_get_finish(GAsyncResult* res, GError** err);
	GDBusConnection* g_bus_get_sync(GBusType busType, GCancellable* cancellable, GError** err);

	// gio.DBusInterface

	GType g_dbus_interface_get_type();
	GDBusObject* g_dbus_interface_dup_object(GDBusInterface* interface_);
	GDBusInterfaceInfo* g_dbus_interface_get_info(GDBusInterface* interface_);
	GDBusObject* g_dbus_interface_get_object(GDBusInterface* interface_);
	void g_dbus_interface_set_object(GDBusInterface* interface_, GDBusObject* object);

	// gio.DBusInterfaceInfo

	GType g_dbus_interface_info_get_type();
	void g_dbus_interface_info_cache_build(GDBusInterfaceInfo* info);
	void g_dbus_interface_info_cache_release(GDBusInterfaceInfo* info);
	void g_dbus_interface_info_generate_xml(GDBusInterfaceInfo* info, uint indent, GString* stringBuilder);
	GDBusMethodInfo* g_dbus_interface_info_lookup_method(GDBusInterfaceInfo* info, const(char)* name);
	GDBusPropertyInfo* g_dbus_interface_info_lookup_property(GDBusInterfaceInfo* info, const(char)* name);
	GDBusSignalInfo* g_dbus_interface_info_lookup_signal(GDBusInterfaceInfo* info, const(char)* name);
	GDBusInterfaceInfo* g_dbus_interface_info_ref(GDBusInterfaceInfo* info);
	void g_dbus_interface_info_unref(GDBusInterfaceInfo* info);

	// gio.DBusInterfaceSkeleton

	GType g_dbus_interface_skeleton_get_type();
	int g_dbus_interface_skeleton_export(GDBusInterfaceSkeleton* interface_, GDBusConnection* connection, const(char)* objectPath, GError** err);
	void g_dbus_interface_skeleton_flush(GDBusInterfaceSkeleton* interface_);
	GDBusConnection* g_dbus_interface_skeleton_get_connection(GDBusInterfaceSkeleton* interface_);
	GList* g_dbus_interface_skeleton_get_connections(GDBusInterfaceSkeleton* interface_);
	GDBusInterfaceSkeletonFlags g_dbus_interface_skeleton_get_flags(GDBusInterfaceSkeleton* interface_);
	GDBusInterfaceInfo* g_dbus_interface_skeleton_get_info(GDBusInterfaceSkeleton* interface_);
	const(char)* g_dbus_interface_skeleton_get_object_path(GDBusInterfaceSkeleton* interface_);
	GVariant* g_dbus_interface_skeleton_get_properties(GDBusInterfaceSkeleton* interface_);
	GDBusInterfaceVTable* g_dbus_interface_skeleton_get_vtable(GDBusInterfaceSkeleton* interface_);
	int g_dbus_interface_skeleton_has_connection(GDBusInterfaceSkeleton* interface_, GDBusConnection* connection);
	void g_dbus_interface_skeleton_set_flags(GDBusInterfaceSkeleton* interface_, GDBusInterfaceSkeletonFlags flags);
	void g_dbus_interface_skeleton_unexport(GDBusInterfaceSkeleton* interface_);
	void g_dbus_interface_skeleton_unexport_from_connection(GDBusInterfaceSkeleton* interface_, GDBusConnection* connection);

	// gio.DBusMenuModel

	GType g_dbus_menu_model_get_type();
	GDBusMenuModel* g_dbus_menu_model_get(GDBusConnection* connection, const(char)* busName, const(char)* objectPath);

	// gio.DBusMessage

	GType g_dbus_message_get_type();
	GDBusMessage* g_dbus_message_new();
	GDBusMessage* g_dbus_message_new_from_blob(char* blob, size_t blobLen, GDBusCapabilityFlags capabilities, GError** err);
	GDBusMessage* g_dbus_message_new_method_call(const(char)* name, const(char)* path, const(char)* interface_, const(char)* method);
	GDBusMessage* g_dbus_message_new_signal(const(char)* path, const(char)* interface_, const(char)* signal);
	ptrdiff_t g_dbus_message_bytes_needed(char* blob, size_t blobLen, GError** err);
	GDBusMessage* g_dbus_message_copy(GDBusMessage* message, GError** err);
	const(char)* g_dbus_message_get_arg0(GDBusMessage* message);
	GVariant* g_dbus_message_get_body(GDBusMessage* message);
	GDBusMessageByteOrder g_dbus_message_get_byte_order(GDBusMessage* message);
	const(char)* g_dbus_message_get_destination(GDBusMessage* message);
	const(char)* g_dbus_message_get_error_name(GDBusMessage* message);
	GDBusMessageFlags g_dbus_message_get_flags(GDBusMessage* message);
	GVariant* g_dbus_message_get_header(GDBusMessage* message, GDBusMessageHeaderField headerField);
	char* g_dbus_message_get_header_fields(GDBusMessage* message);
	const(char)* g_dbus_message_get_interface(GDBusMessage* message);
	int g_dbus_message_get_locked(GDBusMessage* message);
	const(char)* g_dbus_message_get_member(GDBusMessage* message);
	GDBusMessageType g_dbus_message_get_message_type(GDBusMessage* message);
	uint g_dbus_message_get_num_unix_fds(GDBusMessage* message);
	const(char)* g_dbus_message_get_path(GDBusMessage* message);
	uint g_dbus_message_get_reply_serial(GDBusMessage* message);
	const(char)* g_dbus_message_get_sender(GDBusMessage* message);
	uint g_dbus_message_get_serial(GDBusMessage* message);
	const(char)* g_dbus_message_get_signature(GDBusMessage* message);
	GUnixFDList* g_dbus_message_get_unix_fd_list(GDBusMessage* message);
	void g_dbus_message_lock(GDBusMessage* message);
	GDBusMessage* g_dbus_message_new_method_error(GDBusMessage* methodCallMessage, const(char)* errorName, const(char)* errorMessageFormat, ... );
	GDBusMessage* g_dbus_message_new_method_error_literal(GDBusMessage* methodCallMessage, const(char)* errorName, const(char)* errorMessage);
	GDBusMessage* g_dbus_message_new_method_error_valist(GDBusMessage* methodCallMessage, const(char)* errorName, const(char)* errorMessageFormat, void* varArgs);
	GDBusMessage* g_dbus_message_new_method_reply(GDBusMessage* methodCallMessage);
	char* g_dbus_message_print(GDBusMessage* message, uint indent);
	void g_dbus_message_set_body(GDBusMessage* message, GVariant* body_);
	void g_dbus_message_set_byte_order(GDBusMessage* message, GDBusMessageByteOrder byteOrder);
	void g_dbus_message_set_destination(GDBusMessage* message, const(char)* value);
	void g_dbus_message_set_error_name(GDBusMessage* message, const(char)* value);
	void g_dbus_message_set_flags(GDBusMessage* message, GDBusMessageFlags flags);
	void g_dbus_message_set_header(GDBusMessage* message, GDBusMessageHeaderField headerField, GVariant* value);
	void g_dbus_message_set_interface(GDBusMessage* message, const(char)* value);
	void g_dbus_message_set_member(GDBusMessage* message, const(char)* value);
	void g_dbus_message_set_message_type(GDBusMessage* message, GDBusMessageType type);
	void g_dbus_message_set_num_unix_fds(GDBusMessage* message, uint value);
	void g_dbus_message_set_path(GDBusMessage* message, const(char)* value);
	void g_dbus_message_set_reply_serial(GDBusMessage* message, uint value);
	void g_dbus_message_set_sender(GDBusMessage* message, const(char)* value);
	void g_dbus_message_set_serial(GDBusMessage* message, uint serial);
	void g_dbus_message_set_signature(GDBusMessage* message, const(char)* value);
	void g_dbus_message_set_unix_fd_list(GDBusMessage* message, GUnixFDList* fdList);
	char* g_dbus_message_to_blob(GDBusMessage* message, size_t* outSize, GDBusCapabilityFlags capabilities, GError** err);
	int g_dbus_message_to_gerror(GDBusMessage* message, GError** err);

	// gio.DBusMethodInfo

	GType g_dbus_method_info_get_type();
	GDBusMethodInfo* g_dbus_method_info_ref(GDBusMethodInfo* info);
	void g_dbus_method_info_unref(GDBusMethodInfo* info);

	// gio.DBusMethodInvocation

	GType g_dbus_method_invocation_get_type();
	GDBusConnection* g_dbus_method_invocation_get_connection(GDBusMethodInvocation* invocation);
	const(char)* g_dbus_method_invocation_get_interface_name(GDBusMethodInvocation* invocation);
	GDBusMessage* g_dbus_method_invocation_get_message(GDBusMethodInvocation* invocation);
	GDBusMethodInfo* g_dbus_method_invocation_get_method_info(GDBusMethodInvocation* invocation);
	const(char)* g_dbus_method_invocation_get_method_name(GDBusMethodInvocation* invocation);
	const(char)* g_dbus_method_invocation_get_object_path(GDBusMethodInvocation* invocation);
	GVariant* g_dbus_method_invocation_get_parameters(GDBusMethodInvocation* invocation);
	GDBusPropertyInfo* g_dbus_method_invocation_get_property_info(GDBusMethodInvocation* invocation);
	const(char)* g_dbus_method_invocation_get_sender(GDBusMethodInvocation* invocation);
	void* g_dbus_method_invocation_get_user_data(GDBusMethodInvocation* invocation);
	void g_dbus_method_invocation_return_dbus_error(GDBusMethodInvocation* invocation, const(char)* errorName, const(char)* errorMessage);
	void g_dbus_method_invocation_return_error(GDBusMethodInvocation* invocation, GQuark domain, int code, const(char)* format, ... );
	void g_dbus_method_invocation_return_error_literal(GDBusMethodInvocation* invocation, GQuark domain, int code, const(char)* message);
	void g_dbus_method_invocation_return_error_valist(GDBusMethodInvocation* invocation, GQuark domain, int code, const(char)* format, void* varArgs);
	void g_dbus_method_invocation_return_gerror(GDBusMethodInvocation* invocation, GError* error);
	void g_dbus_method_invocation_return_value(GDBusMethodInvocation* invocation, GVariant* parameters);
	void g_dbus_method_invocation_return_value_with_unix_fd_list(GDBusMethodInvocation* invocation, GVariant* parameters, GUnixFDList* fdList);
	void g_dbus_method_invocation_take_error(GDBusMethodInvocation* invocation, GError* error);

	// gio.DBusNodeInfo

	GType g_dbus_node_info_get_type();
	GDBusNodeInfo* g_dbus_node_info_new_for_xml(const(char)* xmlData, GError** err);
	void g_dbus_node_info_generate_xml(GDBusNodeInfo* info, uint indent, GString* stringBuilder);
	GDBusInterfaceInfo* g_dbus_node_info_lookup_interface(GDBusNodeInfo* info, const(char)* name);
	GDBusNodeInfo* g_dbus_node_info_ref(GDBusNodeInfo* info);
	void g_dbus_node_info_unref(GDBusNodeInfo* info);

	// gio.DBusObject

	GType g_dbus_object_get_type();
	GDBusInterface* g_dbus_object_get_interface(GDBusObject* object, const(char)* interfaceName);
	GList* g_dbus_object_get_interfaces(GDBusObject* object);
	const(char)* g_dbus_object_get_object_path(GDBusObject* object);

	// gio.DBusObjectManager

	GType g_dbus_object_manager_get_type();
	GDBusInterface* g_dbus_object_manager_get_interface(GDBusObjectManager* manager, const(char)* objectPath, const(char)* interfaceName);
	GDBusObject* g_dbus_object_manager_get_object(GDBusObjectManager* manager, const(char)* objectPath);
	const(char)* g_dbus_object_manager_get_object_path(GDBusObjectManager* manager);
	GList* g_dbus_object_manager_get_objects(GDBusObjectManager* manager);

	// gio.DBusObjectManagerClient

	GType g_dbus_object_manager_client_get_type();
	GDBusObjectManager* g_dbus_object_manager_client_new_finish(GAsyncResult* res, GError** err);
	GDBusObjectManager* g_dbus_object_manager_client_new_for_bus_finish(GAsyncResult* res, GError** err);
	GDBusObjectManager* g_dbus_object_manager_client_new_for_bus_sync(GBusType busType, GDBusObjectManagerClientFlags flags, const(char)* name, const(char)* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GError** err);
	GDBusObjectManager* g_dbus_object_manager_client_new_sync(GDBusConnection* connection, GDBusObjectManagerClientFlags flags, const(char)* name, const(char)* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GError** err);
	void g_dbus_object_manager_client_new(GDBusConnection* connection, GDBusObjectManagerClientFlags flags, const(char)* name, const(char)* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void g_dbus_object_manager_client_new_for_bus(GBusType busType, GDBusObjectManagerClientFlags flags, const(char)* name, const(char)* objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GDBusConnection* g_dbus_object_manager_client_get_connection(GDBusObjectManagerClient* manager);
	GDBusObjectManagerClientFlags g_dbus_object_manager_client_get_flags(GDBusObjectManagerClient* manager);
	const(char)* g_dbus_object_manager_client_get_name(GDBusObjectManagerClient* manager);
	char* g_dbus_object_manager_client_get_name_owner(GDBusObjectManagerClient* manager);

	// gio.DBusObjectManagerServer

	GType g_dbus_object_manager_server_get_type();
	GDBusObjectManagerServer* g_dbus_object_manager_server_new(const(char)* objectPath);
	void g_dbus_object_manager_server_export(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object);
	void g_dbus_object_manager_server_export_uniquely(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object);
	GDBusConnection* g_dbus_object_manager_server_get_connection(GDBusObjectManagerServer* manager);
	int g_dbus_object_manager_server_is_exported(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object);
	void g_dbus_object_manager_server_set_connection(GDBusObjectManagerServer* manager, GDBusConnection* connection);
	int g_dbus_object_manager_server_unexport(GDBusObjectManagerServer* manager, const(char)* objectPath);

	// gio.DBusObjectProxy

	GType g_dbus_object_proxy_get_type();
	GDBusObjectProxy* g_dbus_object_proxy_new(GDBusConnection* connection, const(char)* objectPath);
	GDBusConnection* g_dbus_object_proxy_get_connection(GDBusObjectProxy* proxy);

	// gio.DBusObjectSkeleton

	GType g_dbus_object_skeleton_get_type();
	GDBusObjectSkeleton* g_dbus_object_skeleton_new(const(char)* objectPath);
	void g_dbus_object_skeleton_add_interface(GDBusObjectSkeleton* object, GDBusInterfaceSkeleton* interface_);
	void g_dbus_object_skeleton_flush(GDBusObjectSkeleton* object);
	void g_dbus_object_skeleton_remove_interface(GDBusObjectSkeleton* object, GDBusInterfaceSkeleton* interface_);
	void g_dbus_object_skeleton_remove_interface_by_name(GDBusObjectSkeleton* object, const(char)* interfaceName);
	void g_dbus_object_skeleton_set_object_path(GDBusObjectSkeleton* object, const(char)* objectPath);

	// gio.DBusPropertyInfo

	GType g_dbus_property_info_get_type();
	GDBusPropertyInfo* g_dbus_property_info_ref(GDBusPropertyInfo* info);
	void g_dbus_property_info_unref(GDBusPropertyInfo* info);

	// gio.DBusProxy

	GType g_dbus_proxy_get_type();
	GDBusProxy* g_dbus_proxy_new_finish(GAsyncResult* res, GError** err);
	GDBusProxy* g_dbus_proxy_new_for_bus_finish(GAsyncResult* res, GError** err);
	GDBusProxy* g_dbus_proxy_new_for_bus_sync(GBusType busType, GDBusProxyFlags flags, GDBusInterfaceInfo* info, const(char)* name, const(char)* objectPath, const(char)* interfaceName, GCancellable* cancellable, GError** err);
	GDBusProxy* g_dbus_proxy_new_sync(GDBusConnection* connection, GDBusProxyFlags flags, GDBusInterfaceInfo* info, const(char)* name, const(char)* objectPath, const(char)* interfaceName, GCancellable* cancellable, GError** err);
	void g_dbus_proxy_new(GDBusConnection* connection, GDBusProxyFlags flags, GDBusInterfaceInfo* info, const(char)* name, const(char)* objectPath, const(char)* interfaceName, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void g_dbus_proxy_new_for_bus(GBusType busType, GDBusProxyFlags flags, GDBusInterfaceInfo* info, const(char)* name, const(char)* objectPath, const(char)* interfaceName, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void g_dbus_proxy_call(GDBusProxy* proxy, const(char)* methodName, GVariant* parameters, GDBusCallFlags flags, int timeoutMsec, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GVariant* g_dbus_proxy_call_finish(GDBusProxy* proxy, GAsyncResult* res, GError** err);
	GVariant* g_dbus_proxy_call_sync(GDBusProxy* proxy, const(char)* methodName, GVariant* parameters, GDBusCallFlags flags, int timeoutMsec, GCancellable* cancellable, GError** err);
	void g_dbus_proxy_call_with_unix_fd_list(GDBusProxy* proxy, const(char)* methodName, GVariant* parameters, GDBusCallFlags flags, int timeoutMsec, GUnixFDList* fdList, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GVariant* g_dbus_proxy_call_with_unix_fd_list_finish(GDBusProxy* proxy, GUnixFDList** outFdList, GAsyncResult* res, GError** err);
	GVariant* g_dbus_proxy_call_with_unix_fd_list_sync(GDBusProxy* proxy, const(char)* methodName, GVariant* parameters, GDBusCallFlags flags, int timeoutMsec, GUnixFDList* fdList, GUnixFDList** outFdList, GCancellable* cancellable, GError** err);
	GVariant* g_dbus_proxy_get_cached_property(GDBusProxy* proxy, const(char)* propertyName);
	char** g_dbus_proxy_get_cached_property_names(GDBusProxy* proxy);
	GDBusConnection* g_dbus_proxy_get_connection(GDBusProxy* proxy);
	int g_dbus_proxy_get_default_timeout(GDBusProxy* proxy);
	GDBusProxyFlags g_dbus_proxy_get_flags(GDBusProxy* proxy);
	GDBusInterfaceInfo* g_dbus_proxy_get_interface_info(GDBusProxy* proxy);
	const(char)* g_dbus_proxy_get_interface_name(GDBusProxy* proxy);
	const(char)* g_dbus_proxy_get_name(GDBusProxy* proxy);
	char* g_dbus_proxy_get_name_owner(GDBusProxy* proxy);
	const(char)* g_dbus_proxy_get_object_path(GDBusProxy* proxy);
	void g_dbus_proxy_set_cached_property(GDBusProxy* proxy, const(char)* propertyName, GVariant* value);
	void g_dbus_proxy_set_default_timeout(GDBusProxy* proxy, int timeoutMsec);
	void g_dbus_proxy_set_interface_info(GDBusProxy* proxy, GDBusInterfaceInfo* info);

	// gio.DBusServer

	GType g_dbus_server_get_type();
	GDBusServer* g_dbus_server_new_sync(const(char)* address, GDBusServerFlags flags, const(char)* guid, GDBusAuthObserver* observer, GCancellable* cancellable, GError** err);
	const(char)* g_dbus_server_get_client_address(GDBusServer* server);
	GDBusServerFlags g_dbus_server_get_flags(GDBusServer* server);
	const(char)* g_dbus_server_get_guid(GDBusServer* server);
	int g_dbus_server_is_active(GDBusServer* server);
	void g_dbus_server_start(GDBusServer* server);
	void g_dbus_server_stop(GDBusServer* server);

	// gio.DBusSignalInfo

	GType g_dbus_signal_info_get_type();
	GDBusSignalInfo* g_dbus_signal_info_ref(GDBusSignalInfo* info);
	void g_dbus_signal_info_unref(GDBusSignalInfo* info);

	// gio.DataInputStream

	GType g_data_input_stream_get_type();
	GDataInputStream* g_data_input_stream_new(GInputStream* baseStream);
	GDataStreamByteOrder g_data_input_stream_get_byte_order(GDataInputStream* stream);
	GDataStreamNewlineType g_data_input_stream_get_newline_type(GDataInputStream* stream);
	char g_data_input_stream_read_byte(GDataInputStream* stream, GCancellable* cancellable, GError** err);
	short g_data_input_stream_read_int16(GDataInputStream* stream, GCancellable* cancellable, GError** err);
	int g_data_input_stream_read_int32(GDataInputStream* stream, GCancellable* cancellable, GError** err);
	long g_data_input_stream_read_int64(GDataInputStream* stream, GCancellable* cancellable, GError** err);
	char* g_data_input_stream_read_line(GDataInputStream* stream, size_t* length, GCancellable* cancellable, GError** err);
	void g_data_input_stream_read_line_async(GDataInputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char* g_data_input_stream_read_line_finish(GDataInputStream* stream, GAsyncResult* result, size_t* length, GError** err);
	char* g_data_input_stream_read_line_finish_utf8(GDataInputStream* stream, GAsyncResult* result, size_t* length, GError** err);
	char* g_data_input_stream_read_line_utf8(GDataInputStream* stream, size_t* length, GCancellable* cancellable, GError** err);
	ushort g_data_input_stream_read_uint16(GDataInputStream* stream, GCancellable* cancellable, GError** err);
	uint g_data_input_stream_read_uint32(GDataInputStream* stream, GCancellable* cancellable, GError** err);
	ulong g_data_input_stream_read_uint64(GDataInputStream* stream, GCancellable* cancellable, GError** err);
	char* g_data_input_stream_read_until(GDataInputStream* stream, const(char)* stopChars, size_t* length, GCancellable* cancellable, GError** err);
	void g_data_input_stream_read_until_async(GDataInputStream* stream, const(char)* stopChars, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char* g_data_input_stream_read_until_finish(GDataInputStream* stream, GAsyncResult* result, size_t* length, GError** err);
	char* g_data_input_stream_read_upto(GDataInputStream* stream, const(char)* stopChars, ptrdiff_t stopCharsLen, size_t* length, GCancellable* cancellable, GError** err);
	void g_data_input_stream_read_upto_async(GDataInputStream* stream, const(char)* stopChars, ptrdiff_t stopCharsLen, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char* g_data_input_stream_read_upto_finish(GDataInputStream* stream, GAsyncResult* result, size_t* length, GError** err);
	void g_data_input_stream_set_byte_order(GDataInputStream* stream, GDataStreamByteOrder order);
	void g_data_input_stream_set_newline_type(GDataInputStream* stream, GDataStreamNewlineType type);

	// gio.DataOutputStream

	GType g_data_output_stream_get_type();
	GDataOutputStream* g_data_output_stream_new(GOutputStream* baseStream);
	GDataStreamByteOrder g_data_output_stream_get_byte_order(GDataOutputStream* stream);
	int g_data_output_stream_put_byte(GDataOutputStream* stream, char data, GCancellable* cancellable, GError** err);
	int g_data_output_stream_put_int16(GDataOutputStream* stream, short data, GCancellable* cancellable, GError** err);
	int g_data_output_stream_put_int32(GDataOutputStream* stream, int data, GCancellable* cancellable, GError** err);
	int g_data_output_stream_put_int64(GDataOutputStream* stream, long data, GCancellable* cancellable, GError** err);
	int g_data_output_stream_put_string(GDataOutputStream* stream, const(char)* str, GCancellable* cancellable, GError** err);
	int g_data_output_stream_put_uint16(GDataOutputStream* stream, ushort data, GCancellable* cancellable, GError** err);
	int g_data_output_stream_put_uint32(GDataOutputStream* stream, uint data, GCancellable* cancellable, GError** err);
	int g_data_output_stream_put_uint64(GDataOutputStream* stream, ulong data, GCancellable* cancellable, GError** err);
	void g_data_output_stream_set_byte_order(GDataOutputStream* stream, GDataStreamByteOrder order);

	// gio.DatagramBased

	GType g_datagram_based_get_type();
	GIOCondition g_datagram_based_condition_check(GDatagramBased* datagramBased, GIOCondition condition);
	int g_datagram_based_condition_wait(GDatagramBased* datagramBased, GIOCondition condition, long timeout, GCancellable* cancellable, GError** err);
	GSource* g_datagram_based_create_source(GDatagramBased* datagramBased, GIOCondition condition, GCancellable* cancellable);
	int g_datagram_based_receive_messages(GDatagramBased* datagramBased, GInputMessage* messages, uint numMessages, int flags, long timeout, GCancellable* cancellable, GError** err);
	int g_datagram_based_send_messages(GDatagramBased* datagramBased, GOutputMessage* messages, uint numMessages, int flags, long timeout, GCancellable* cancellable, GError** err);

	// gio.DesktopAppInfo

	GType g_desktop_app_info_get_type();
	GDesktopAppInfo* g_desktop_app_info_new(const(char)* desktopId);
	GDesktopAppInfo* g_desktop_app_info_new_from_filename(char* filename);
	GDesktopAppInfo* g_desktop_app_info_new_from_keyfile(GKeyFile* keyFile);
	GList* g_desktop_app_info_get_implementations(const(char)* interface_);
	char*** g_desktop_app_info_search(const(char)* searchString);
	void g_desktop_app_info_set_desktop_env(const(char)* desktopEnv);
	char* g_desktop_app_info_get_action_name(GDesktopAppInfo* info, const(char)* actionName);
	int g_desktop_app_info_get_boolean(GDesktopAppInfo* info, const(char)* key);
	const(char)* g_desktop_app_info_get_categories(GDesktopAppInfo* info);
	char* g_desktop_app_info_get_filename(GDesktopAppInfo* info);
	const(char)* g_desktop_app_info_get_generic_name(GDesktopAppInfo* info);
	int g_desktop_app_info_get_is_hidden(GDesktopAppInfo* info);
	char** g_desktop_app_info_get_keywords(GDesktopAppInfo* info);
	char* g_desktop_app_info_get_locale_string(GDesktopAppInfo* info, const(char)* key);
	int g_desktop_app_info_get_nodisplay(GDesktopAppInfo* info);
	int g_desktop_app_info_get_show_in(GDesktopAppInfo* info, const(char)* desktopEnv);
	const(char)* g_desktop_app_info_get_startup_wm_class(GDesktopAppInfo* info);
	char* g_desktop_app_info_get_string(GDesktopAppInfo* info, const(char)* key);
	char** g_desktop_app_info_get_string_list(GDesktopAppInfo* info, const(char)* key, size_t* length);
	int g_desktop_app_info_has_key(GDesktopAppInfo* info, const(char)* key);
	void g_desktop_app_info_launch_action(GDesktopAppInfo* info, const(char)* actionName, GAppLaunchContext* launchContext);
	int g_desktop_app_info_launch_uris_as_manager(GDesktopAppInfo* appinfo, GList* uris, GAppLaunchContext* launchContext, GSpawnFlags spawnFlags, GSpawnChildSetupFunc userSetup, void* userSetupData, GDesktopAppLaunchCallback pidCallback, void* pidCallbackData, GError** err);
	int g_desktop_app_info_launch_uris_as_manager_with_fds(GDesktopAppInfo* appinfo, GList* uris, GAppLaunchContext* launchContext, GSpawnFlags spawnFlags, GSpawnChildSetupFunc userSetup, void* userSetupData, GDesktopAppLaunchCallback pidCallback, void* pidCallbackData, int stdinFd, int stdoutFd, int stderrFd, GError** err);
	char** g_desktop_app_info_list_actions(GDesktopAppInfo* info);

	// gio.DesktopAppInfoLookup

	GType g_desktop_app_info_lookup_get_type();
	GAppInfo* g_desktop_app_info_lookup_get_default_for_uri_scheme(GDesktopAppInfoLookup* lookup, const(char)* uriScheme);

	// gio.Drive

	GType g_drive_get_type();
	int g_drive_can_eject(GDrive* drive);
	int g_drive_can_poll_for_media(GDrive* drive);
	int g_drive_can_start(GDrive* drive);
	int g_drive_can_start_degraded(GDrive* drive);
	int g_drive_can_stop(GDrive* drive);
	void g_drive_eject(GDrive* drive, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_drive_eject_finish(GDrive* drive, GAsyncResult* result, GError** err);
	void g_drive_eject_with_operation(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_drive_eject_with_operation_finish(GDrive* drive, GAsyncResult* result, GError** err);
	char** g_drive_enumerate_identifiers(GDrive* drive);
	GIcon* g_drive_get_icon(GDrive* drive);
	char* g_drive_get_identifier(GDrive* drive, const(char)* kind);
	char* g_drive_get_name(GDrive* drive);
	const(char)* g_drive_get_sort_key(GDrive* drive);
	GDriveStartStopType g_drive_get_start_stop_type(GDrive* drive);
	GIcon* g_drive_get_symbolic_icon(GDrive* drive);
	GList* g_drive_get_volumes(GDrive* drive);
	int g_drive_has_media(GDrive* drive);
	int g_drive_has_volumes(GDrive* drive);
	int g_drive_is_media_check_automatic(GDrive* drive);
	int g_drive_is_media_removable(GDrive* drive);
	int g_drive_is_removable(GDrive* drive);
	void g_drive_poll_for_media(GDrive* drive, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_drive_poll_for_media_finish(GDrive* drive, GAsyncResult* result, GError** err);
	void g_drive_start(GDrive* drive, GDriveStartFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_drive_start_finish(GDrive* drive, GAsyncResult* result, GError** err);
	void g_drive_stop(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_drive_stop_finish(GDrive* drive, GAsyncResult* result, GError** err);

	// gio.DtlsClientConnection

	GType g_dtls_client_connection_get_type();
	GDatagramBased* g_dtls_client_connection_new(GDatagramBased* baseSocket, GSocketConnectable* serverIdentity, GError** err);
	GList* g_dtls_client_connection_get_accepted_cas(GDtlsClientConnection* conn);
	GSocketConnectable* g_dtls_client_connection_get_server_identity(GDtlsClientConnection* conn);
	GTlsCertificateFlags g_dtls_client_connection_get_validation_flags(GDtlsClientConnection* conn);
	void g_dtls_client_connection_set_server_identity(GDtlsClientConnection* conn, GSocketConnectable* identity);
	void g_dtls_client_connection_set_validation_flags(GDtlsClientConnection* conn, GTlsCertificateFlags flags);

	// gio.DtlsConnection

	GType g_dtls_connection_get_type();
	int g_dtls_connection_close(GDtlsConnection* conn, GCancellable* cancellable, GError** err);
	void g_dtls_connection_close_async(GDtlsConnection* conn, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_dtls_connection_close_finish(GDtlsConnection* conn, GAsyncResult* result, GError** err);
	int g_dtls_connection_emit_accept_certificate(GDtlsConnection* conn, GTlsCertificate* peerCert, GTlsCertificateFlags errors);
	GTlsCertificate* g_dtls_connection_get_certificate(GDtlsConnection* conn);
	int g_dtls_connection_get_channel_binding_data(GDtlsConnection* conn, GTlsChannelBindingType type, GByteArray* data, GError** err);
	GTlsDatabase* g_dtls_connection_get_database(GDtlsConnection* conn);
	GTlsInteraction* g_dtls_connection_get_interaction(GDtlsConnection* conn);
	const(char)* g_dtls_connection_get_negotiated_protocol(GDtlsConnection* conn);
	GTlsCertificate* g_dtls_connection_get_peer_certificate(GDtlsConnection* conn);
	GTlsCertificateFlags g_dtls_connection_get_peer_certificate_errors(GDtlsConnection* conn);
	GTlsRehandshakeMode g_dtls_connection_get_rehandshake_mode(GDtlsConnection* conn);
	int g_dtls_connection_get_require_close_notify(GDtlsConnection* conn);
	int g_dtls_connection_handshake(GDtlsConnection* conn, GCancellable* cancellable, GError** err);
	void g_dtls_connection_handshake_async(GDtlsConnection* conn, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_dtls_connection_handshake_finish(GDtlsConnection* conn, GAsyncResult* result, GError** err);
	void g_dtls_connection_set_advertised_protocols(GDtlsConnection* conn, char** protocols);
	void g_dtls_connection_set_certificate(GDtlsConnection* conn, GTlsCertificate* certificate);
	void g_dtls_connection_set_database(GDtlsConnection* conn, GTlsDatabase* database);
	void g_dtls_connection_set_interaction(GDtlsConnection* conn, GTlsInteraction* interaction);
	void g_dtls_connection_set_rehandshake_mode(GDtlsConnection* conn, GTlsRehandshakeMode mode);
	void g_dtls_connection_set_require_close_notify(GDtlsConnection* conn, int requireCloseNotify);
	int g_dtls_connection_shutdown(GDtlsConnection* conn, int shutdownRead, int shutdownWrite, GCancellable* cancellable, GError** err);
	void g_dtls_connection_shutdown_async(GDtlsConnection* conn, int shutdownRead, int shutdownWrite, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_dtls_connection_shutdown_finish(GDtlsConnection* conn, GAsyncResult* result, GError** err);

	// gio.DtlsServerConnection

	GType g_dtls_server_connection_get_type();
	GDatagramBased* g_dtls_server_connection_new(GDatagramBased* baseSocket, GTlsCertificate* certificate, GError** err);

	// gio.Emblem

	GType g_emblem_get_type();
	GEmblem* g_emblem_new(GIcon* icon);
	GEmblem* g_emblem_new_with_origin(GIcon* icon, GEmblemOrigin origin);
	GIcon* g_emblem_get_icon(GEmblem* emblem);
	GEmblemOrigin g_emblem_get_origin(GEmblem* emblem);

	// gio.EmblemedIcon

	GType g_emblemed_icon_get_type();
	GIcon* g_emblemed_icon_new(GIcon* icon, GEmblem* emblem);
	void g_emblemed_icon_add_emblem(GEmblemedIcon* emblemed, GEmblem* emblem);
	void g_emblemed_icon_clear_emblems(GEmblemedIcon* emblemed);
	GList* g_emblemed_icon_get_emblems(GEmblemedIcon* emblemed);
	GIcon* g_emblemed_icon_get_icon(GEmblemedIcon* emblemed);

	// gio.File

	GType g_file_get_type();
	GFile* g_file_new_build_filename(char* firstElement, ... );
	GFile* g_file_new_for_commandline_arg(char* arg);
	GFile* g_file_new_for_commandline_arg_and_cwd(char* arg, char* cwd);
	GFile* g_file_new_for_path(char* path);
	GFile* g_file_new_for_uri(const(char)* uri);
	GFile* g_file_new_tmp(char* tmpl, GFileIOStream** iostream, GError** err);
	GFile* g_file_parse_name(const(char)* parseName);
	GFileOutputStream* g_file_append_to(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** err);
	void g_file_append_to_async(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileOutputStream* g_file_append_to_finish(GFile* file, GAsyncResult* res, GError** err);
	char* g_file_build_attribute_list_for_copy(GFile* file, GFileCopyFlags flags, GCancellable* cancellable, GError** err);
	int g_file_copy(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GError** err);
	void g_file_copy_async(GFile* source, GFile* destination, GFileCopyFlags flags, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GAsyncReadyCallback callback, void* userData);
	int g_file_copy_attributes(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GError** err);
	int g_file_copy_finish(GFile* file, GAsyncResult* res, GError** err);
	GFileOutputStream* g_file_create(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** err);
	void g_file_create_async(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileOutputStream* g_file_create_finish(GFile* file, GAsyncResult* res, GError** err);
	GFileIOStream* g_file_create_readwrite(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** err);
	void g_file_create_readwrite_async(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileIOStream* g_file_create_readwrite_finish(GFile* file, GAsyncResult* res, GError** err);
	int g_file_delete(GFile* file, GCancellable* cancellable, GError** err);
	void g_file_delete_async(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_delete_finish(GFile* file, GAsyncResult* result, GError** err);
	GFile* g_file_dup(GFile* file);
	void g_file_eject_mountable(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_eject_mountable_finish(GFile* file, GAsyncResult* result, GError** err);
	void g_file_eject_mountable_with_operation(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_eject_mountable_with_operation_finish(GFile* file, GAsyncResult* result, GError** err);
	GFileEnumerator* g_file_enumerate_children(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err);
	void g_file_enumerate_children_async(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileEnumerator* g_file_enumerate_children_finish(GFile* file, GAsyncResult* res, GError** err);
	int g_file_equal(GFile* file1, GFile* file2);
	GMount* g_file_find_enclosing_mount(GFile* file, GCancellable* cancellable, GError** err);
	void g_file_find_enclosing_mount_async(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GMount* g_file_find_enclosing_mount_finish(GFile* file, GAsyncResult* res, GError** err);
	char* g_file_get_basename(GFile* file);
	GFile* g_file_get_child(GFile* file, char* name);
	GFile* g_file_get_child_for_display_name(GFile* file, const(char)* displayName, GError** err);
	GFile* g_file_get_parent(GFile* file);
	char* g_file_get_parse_name(GFile* file);
	char* g_file_get_path(GFile* file);
	char* g_file_get_relative_path(GFile* parent, GFile* descendant);
	char* g_file_get_uri(GFile* file);
	char* g_file_get_uri_scheme(GFile* file);
	int g_file_has_parent(GFile* file, GFile* parent);
	int g_file_has_prefix(GFile* file, GFile* prefix);
	int g_file_has_uri_scheme(GFile* file, const(char)* uriScheme);
	uint g_file_hash(void* file);
	int g_file_is_native(GFile* file);
	GBytes* g_file_load_bytes(GFile* file, GCancellable* cancellable, char** etagOut, GError** err);
	void g_file_load_bytes_async(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GBytes* g_file_load_bytes_finish(GFile* file, GAsyncResult* result, char** etagOut, GError** err);
	int g_file_load_contents(GFile* file, GCancellable* cancellable, char** contents, size_t* length, char** etagOut, GError** err);
	void g_file_load_contents_async(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_load_contents_finish(GFile* file, GAsyncResult* res, char** contents, size_t* length, char** etagOut, GError** err);
	void g_file_load_partial_contents_async(GFile* file, GCancellable* cancellable, GFileReadMoreCallback readMoreCallback, GAsyncReadyCallback callback, void* userData);
	int g_file_load_partial_contents_finish(GFile* file, GAsyncResult* res, char** contents, size_t* length, char** etagOut, GError** err);
	int g_file_make_directory(GFile* file, GCancellable* cancellable, GError** err);
	void g_file_make_directory_async(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_make_directory_finish(GFile* file, GAsyncResult* result, GError** err);
	int g_file_make_directory_with_parents(GFile* file, GCancellable* cancellable, GError** err);
	int g_file_make_symbolic_link(GFile* file, char* symlinkValue, GCancellable* cancellable, GError** err);
	int g_file_measure_disk_usage(GFile* file, GFileMeasureFlags flags, GCancellable* cancellable, GFileMeasureProgressCallback progressCallback, void* progressData, ulong* diskUsage, ulong* numDirs, ulong* numFiles, GError** err);
	void g_file_measure_disk_usage_async(GFile* file, GFileMeasureFlags flags, int ioPriority, GCancellable* cancellable, GFileMeasureProgressCallback progressCallback, void* progressData, GAsyncReadyCallback callback, void* userData);
	int g_file_measure_disk_usage_finish(GFile* file, GAsyncResult* result, ulong* diskUsage, ulong* numDirs, ulong* numFiles, GError** err);
	GFileMonitor* g_file_monitor(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** err);
	GFileMonitor* g_file_monitor_directory(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** err);
	GFileMonitor* g_file_monitor_file(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** err);
	void g_file_mount_enclosing_volume(GFile* location, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_mount_enclosing_volume_finish(GFile* location, GAsyncResult* result, GError** err);
	void g_file_mount_mountable(GFile* file, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFile* g_file_mount_mountable_finish(GFile* file, GAsyncResult* result, GError** err);
	int g_file_move(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GError** err);
	GFileIOStream* g_file_open_readwrite(GFile* file, GCancellable* cancellable, GError** err);
	void g_file_open_readwrite_async(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileIOStream* g_file_open_readwrite_finish(GFile* file, GAsyncResult* res, GError** err);
	char* g_file_peek_path(GFile* file);
	void g_file_poll_mountable(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_poll_mountable_finish(GFile* file, GAsyncResult* result, GError** err);
	GAppInfo* g_file_query_default_handler(GFile* file, GCancellable* cancellable, GError** err);
	void g_file_query_default_handler_async(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GAppInfo* g_file_query_default_handler_finish(GFile* file, GAsyncResult* result, GError** err);
	int g_file_query_exists(GFile* file, GCancellable* cancellable);
	GFileType g_file_query_file_type(GFile* file, GFileQueryInfoFlags flags, GCancellable* cancellable);
	GFileInfo* g_file_query_filesystem_info(GFile* file, const(char)* attributes, GCancellable* cancellable, GError** err);
	void g_file_query_filesystem_info_async(GFile* file, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileInfo* g_file_query_filesystem_info_finish(GFile* file, GAsyncResult* res, GError** err);
	GFileInfo* g_file_query_info(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err);
	void g_file_query_info_async(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileInfo* g_file_query_info_finish(GFile* file, GAsyncResult* res, GError** err);
	GFileAttributeInfoList* g_file_query_settable_attributes(GFile* file, GCancellable* cancellable, GError** err);
	GFileAttributeInfoList* g_file_query_writable_namespaces(GFile* file, GCancellable* cancellable, GError** err);
	GFileInputStream* g_file_read(GFile* file, GCancellable* cancellable, GError** err);
	void g_file_read_async(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileInputStream* g_file_read_finish(GFile* file, GAsyncResult* res, GError** err);
	GFileOutputStream* g_file_replace(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** err);
	void g_file_replace_async(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_replace_contents(GFile* file, char* contents, size_t length, const(char)* etag, int makeBackup, GFileCreateFlags flags, char** newEtag, GCancellable* cancellable, GError** err);
	void g_file_replace_contents_async(GFile* file, char* contents, size_t length, const(char)* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void g_file_replace_contents_bytes_async(GFile* file, GBytes* contents, const(char)* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_replace_contents_finish(GFile* file, GAsyncResult* res, char** newEtag, GError** err);
	GFileOutputStream* g_file_replace_finish(GFile* file, GAsyncResult* res, GError** err);
	GFileIOStream* g_file_replace_readwrite(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** err);
	void g_file_replace_readwrite_async(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileIOStream* g_file_replace_readwrite_finish(GFile* file, GAsyncResult* res, GError** err);
	GFile* g_file_resolve_relative_path(GFile* file, char* relativePath);
	int g_file_set_attribute(GFile* file, const(char)* attribute, GFileAttributeType type, void* valueP, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err);
	int g_file_set_attribute_byte_string(GFile* file, const(char)* attribute, const(char)* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err);
	int g_file_set_attribute_int32(GFile* file, const(char)* attribute, int value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err);
	int g_file_set_attribute_int64(GFile* file, const(char)* attribute, long value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err);
	int g_file_set_attribute_string(GFile* file, const(char)* attribute, const(char)* value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err);
	int g_file_set_attribute_uint32(GFile* file, const(char)* attribute, uint value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err);
	int g_file_set_attribute_uint64(GFile* file, const(char)* attribute, ulong value, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err);
	void g_file_set_attributes_async(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_set_attributes_finish(GFile* file, GAsyncResult* result, GFileInfo** info, GError** err);
	int g_file_set_attributes_from_info(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err);
	GFile* g_file_set_display_name(GFile* file, const(char)* displayName, GCancellable* cancellable, GError** err);
	void g_file_set_display_name_async(GFile* file, const(char)* displayName, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFile* g_file_set_display_name_finish(GFile* file, GAsyncResult* res, GError** err);
	void g_file_start_mountable(GFile* file, GDriveStartFlags flags, GMountOperation* startOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_start_mountable_finish(GFile* file, GAsyncResult* result, GError** err);
	void g_file_stop_mountable(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_stop_mountable_finish(GFile* file, GAsyncResult* result, GError** err);
	int g_file_supports_thread_contexts(GFile* file);
	int g_file_trash(GFile* file, GCancellable* cancellable, GError** err);
	void g_file_trash_async(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_trash_finish(GFile* file, GAsyncResult* result, GError** err);
	void g_file_unmount_mountable(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_unmount_mountable_finish(GFile* file, GAsyncResult* result, GError** err);
	void g_file_unmount_mountable_with_operation(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_unmount_mountable_with_operation_finish(GFile* file, GAsyncResult* result, GError** err);

	// gio.FileAttributeInfoList

	GType g_file_attribute_info_list_get_type();
	GFileAttributeInfoList* g_file_attribute_info_list_new();
	void g_file_attribute_info_list_add(GFileAttributeInfoList* list, const(char)* name, GFileAttributeType type, GFileAttributeInfoFlags flags);
	GFileAttributeInfoList* g_file_attribute_info_list_dup(GFileAttributeInfoList* list);
	GFileAttributeInfo* g_file_attribute_info_list_lookup(GFileAttributeInfoList* list, const(char)* name);
	GFileAttributeInfoList* g_file_attribute_info_list_ref(GFileAttributeInfoList* list);
	void g_file_attribute_info_list_unref(GFileAttributeInfoList* list);

	// gio.FileAttributeMatcher

	GType g_file_attribute_matcher_get_type();
	GFileAttributeMatcher* g_file_attribute_matcher_new(const(char)* attributes);
	int g_file_attribute_matcher_enumerate_namespace(GFileAttributeMatcher* matcher, const(char)* ns);
	const(char)* g_file_attribute_matcher_enumerate_next(GFileAttributeMatcher* matcher);
	int g_file_attribute_matcher_matches(GFileAttributeMatcher* matcher, const(char)* attribute);
	int g_file_attribute_matcher_matches_only(GFileAttributeMatcher* matcher, const(char)* attribute);
	GFileAttributeMatcher* g_file_attribute_matcher_ref(GFileAttributeMatcher* matcher);
	GFileAttributeMatcher* g_file_attribute_matcher_subtract(GFileAttributeMatcher* matcher, GFileAttributeMatcher* subtract);
	char* g_file_attribute_matcher_to_string(GFileAttributeMatcher* matcher);
	void g_file_attribute_matcher_unref(GFileAttributeMatcher* matcher);

	// gio.FileDescriptorBased

	GType g_file_descriptor_based_get_type();
	int g_file_descriptor_based_get_fd(GFileDescriptorBased* fdBased);

	// gio.FileEnumerator

	GType g_file_enumerator_get_type();
	int g_file_enumerator_close(GFileEnumerator* enumerator, GCancellable* cancellable, GError** err);
	void g_file_enumerator_close_async(GFileEnumerator* enumerator, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_file_enumerator_close_finish(GFileEnumerator* enumerator, GAsyncResult* result, GError** err);
	GFile* g_file_enumerator_get_child(GFileEnumerator* enumerator, GFileInfo* info);
	GFile* g_file_enumerator_get_container(GFileEnumerator* enumerator);
	int g_file_enumerator_has_pending(GFileEnumerator* enumerator);
	int g_file_enumerator_is_closed(GFileEnumerator* enumerator);
	int g_file_enumerator_iterate(GFileEnumerator* direnum, GFileInfo** outInfo, GFile** outChild, GCancellable* cancellable, GError** err);
	GFileInfo* g_file_enumerator_next_file(GFileEnumerator* enumerator, GCancellable* cancellable, GError** err);
	void g_file_enumerator_next_files_async(GFileEnumerator* enumerator, int numFiles, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* g_file_enumerator_next_files_finish(GFileEnumerator* enumerator, GAsyncResult* result, GError** err);
	void g_file_enumerator_set_pending(GFileEnumerator* enumerator, int pending);

	// gio.FileIOStream

	GType g_file_io_stream_get_type();
	char* g_file_io_stream_get_etag(GFileIOStream* stream);
	GFileInfo* g_file_io_stream_query_info(GFileIOStream* stream, const(char)* attributes, GCancellable* cancellable, GError** err);
	void g_file_io_stream_query_info_async(GFileIOStream* stream, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileInfo* g_file_io_stream_query_info_finish(GFileIOStream* stream, GAsyncResult* result, GError** err);

	// gio.FileIcon

	GType g_file_icon_get_type();
	GIcon* g_file_icon_new(GFile* file);
	GFile* g_file_icon_get_file(GFileIcon* icon);

	// gio.FileInfo

	GType g_file_info_get_type();
	GFileInfo* g_file_info_new();
	void g_file_info_clear_status(GFileInfo* info);
	void g_file_info_copy_into(GFileInfo* srcInfo, GFileInfo* destInfo);
	GFileInfo* g_file_info_dup(GFileInfo* other);
	char* g_file_info_get_attribute_as_string(GFileInfo* info, const(char)* attribute);
	int g_file_info_get_attribute_boolean(GFileInfo* info, const(char)* attribute);
	const(char)* g_file_info_get_attribute_byte_string(GFileInfo* info, const(char)* attribute);
	int g_file_info_get_attribute_data(GFileInfo* info, const(char)* attribute, GFileAttributeType* type, void** valuePp, GFileAttributeStatus* status);
	int g_file_info_get_attribute_int32(GFileInfo* info, const(char)* attribute);
	long g_file_info_get_attribute_int64(GFileInfo* info, const(char)* attribute);
	GObject* g_file_info_get_attribute_object(GFileInfo* info, const(char)* attribute);
	GFileAttributeStatus g_file_info_get_attribute_status(GFileInfo* info, const(char)* attribute);
	const(char)* g_file_info_get_attribute_string(GFileInfo* info, const(char)* attribute);
	char** g_file_info_get_attribute_stringv(GFileInfo* info, const(char)* attribute);
	GFileAttributeType g_file_info_get_attribute_type(GFileInfo* info, const(char)* attribute);
	uint g_file_info_get_attribute_uint32(GFileInfo* info, const(char)* attribute);
	ulong g_file_info_get_attribute_uint64(GFileInfo* info, const(char)* attribute);
	const(char)* g_file_info_get_content_type(GFileInfo* info);
	GDateTime* g_file_info_get_deletion_date(GFileInfo* info);
	const(char)* g_file_info_get_display_name(GFileInfo* info);
	const(char)* g_file_info_get_edit_name(GFileInfo* info);
	const(char)* g_file_info_get_etag(GFileInfo* info);
	GFileType g_file_info_get_file_type(GFileInfo* info);
	GIcon* g_file_info_get_icon(GFileInfo* info);
	int g_file_info_get_is_backup(GFileInfo* info);
	int g_file_info_get_is_hidden(GFileInfo* info);
	int g_file_info_get_is_symlink(GFileInfo* info);
	GDateTime* g_file_info_get_modification_date_time(GFileInfo* info);
	void g_file_info_get_modification_time(GFileInfo* info, GTimeVal* result);
	char* g_file_info_get_name(GFileInfo* info);
	long g_file_info_get_size(GFileInfo* info);
	int g_file_info_get_sort_order(GFileInfo* info);
	GIcon* g_file_info_get_symbolic_icon(GFileInfo* info);
	const(char)* g_file_info_get_symlink_target(GFileInfo* info);
	int g_file_info_has_attribute(GFileInfo* info, const(char)* attribute);
	int g_file_info_has_namespace(GFileInfo* info, const(char)* nameSpace);
	char** g_file_info_list_attributes(GFileInfo* info, const(char)* nameSpace);
	void g_file_info_remove_attribute(GFileInfo* info, const(char)* attribute);
	void g_file_info_set_attribute(GFileInfo* info, const(char)* attribute, GFileAttributeType type, void* valueP);
	void g_file_info_set_attribute_boolean(GFileInfo* info, const(char)* attribute, int attrValue);
	void g_file_info_set_attribute_byte_string(GFileInfo* info, const(char)* attribute, const(char)* attrValue);
	void g_file_info_set_attribute_int32(GFileInfo* info, const(char)* attribute, int attrValue);
	void g_file_info_set_attribute_int64(GFileInfo* info, const(char)* attribute, long attrValue);
	void g_file_info_set_attribute_mask(GFileInfo* info, GFileAttributeMatcher* mask);
	void g_file_info_set_attribute_object(GFileInfo* info, const(char)* attribute, GObject* attrValue);
	int g_file_info_set_attribute_status(GFileInfo* info, const(char)* attribute, GFileAttributeStatus status);
	void g_file_info_set_attribute_string(GFileInfo* info, const(char)* attribute, const(char)* attrValue);
	void g_file_info_set_attribute_stringv(GFileInfo* info, const(char)* attribute, char** attrValue);
	void g_file_info_set_attribute_uint32(GFileInfo* info, const(char)* attribute, uint attrValue);
	void g_file_info_set_attribute_uint64(GFileInfo* info, const(char)* attribute, ulong attrValue);
	void g_file_info_set_content_type(GFileInfo* info, const(char)* contentType);
	void g_file_info_set_display_name(GFileInfo* info, const(char)* displayName);
	void g_file_info_set_edit_name(GFileInfo* info, const(char)* editName);
	void g_file_info_set_file_type(GFileInfo* info, GFileType type);
	void g_file_info_set_icon(GFileInfo* info, GIcon* icon);
	void g_file_info_set_is_hidden(GFileInfo* info, int isHidden);
	void g_file_info_set_is_symlink(GFileInfo* info, int isSymlink);
	void g_file_info_set_modification_date_time(GFileInfo* info, GDateTime* mtime);
	void g_file_info_set_modification_time(GFileInfo* info, GTimeVal* mtime);
	void g_file_info_set_name(GFileInfo* info, char* name);
	void g_file_info_set_size(GFileInfo* info, long size);
	void g_file_info_set_sort_order(GFileInfo* info, int sortOrder);
	void g_file_info_set_symbolic_icon(GFileInfo* info, GIcon* icon);
	void g_file_info_set_symlink_target(GFileInfo* info, const(char)* symlinkTarget);
	void g_file_info_unset_attribute_mask(GFileInfo* info);

	// gio.FileInputStream

	GType g_file_input_stream_get_type();
	GFileInfo* g_file_input_stream_query_info(GFileInputStream* stream, const(char)* attributes, GCancellable* cancellable, GError** err);
	void g_file_input_stream_query_info_async(GFileInputStream* stream, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileInfo* g_file_input_stream_query_info_finish(GFileInputStream* stream, GAsyncResult* result, GError** err);

	// gio.FileMonitor

	GType g_file_monitor_get_type();
	int g_file_monitor_cancel(GFileMonitor* monitor);
	void g_file_monitor_emit_event(GFileMonitor* monitor, GFile* child, GFile* otherFile, GFileMonitorEvent eventType);
	int g_file_monitor_is_cancelled(GFileMonitor* monitor);
	void g_file_monitor_set_rate_limit(GFileMonitor* monitor, int limitMsecs);

	// gio.FileOutputStream

	GType g_file_output_stream_get_type();
	char* g_file_output_stream_get_etag(GFileOutputStream* stream);
	GFileInfo* g_file_output_stream_query_info(GFileOutputStream* stream, const(char)* attributes, GCancellable* cancellable, GError** err);
	void g_file_output_stream_query_info_async(GFileOutputStream* stream, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GFileInfo* g_file_output_stream_query_info_finish(GFileOutputStream* stream, GAsyncResult* result, GError** err);

	// gio.FilenameCompleter

	GType g_filename_completer_get_type();
	GFilenameCompleter* g_filename_completer_new();
	char* g_filename_completer_get_completion_suffix(GFilenameCompleter* completer, const(char)* initialText);
	char** g_filename_completer_get_completions(GFilenameCompleter* completer, const(char)* initialText);
	void g_filename_completer_set_dirs_only(GFilenameCompleter* completer, int dirsOnly);

	// gio.FilterInputStream

	GType g_filter_input_stream_get_type();
	GInputStream* g_filter_input_stream_get_base_stream(GFilterInputStream* stream);
	int g_filter_input_stream_get_close_base_stream(GFilterInputStream* stream);
	void g_filter_input_stream_set_close_base_stream(GFilterInputStream* stream, int closeBase);

	// gio.FilterOutputStream

	GType g_filter_output_stream_get_type();
	GOutputStream* g_filter_output_stream_get_base_stream(GFilterOutputStream* stream);
	int g_filter_output_stream_get_close_base_stream(GFilterOutputStream* stream);
	void g_filter_output_stream_set_close_base_stream(GFilterOutputStream* stream, int closeBase);

	// gio.IOExtension

	const(char)* g_io_extension_get_name(GIOExtension* extension);
	int g_io_extension_get_priority(GIOExtension* extension);
	GType g_io_extension_get_type(GIOExtension* extension);
	GTypeClass* g_io_extension_ref_class(GIOExtension* extension);

	// gio.IOExtensionPoint

	GIOExtension* g_io_extension_point_get_extension_by_name(GIOExtensionPoint* extensionPoint, const(char)* name);
	GList* g_io_extension_point_get_extensions(GIOExtensionPoint* extensionPoint);
	GType g_io_extension_point_get_required_type(GIOExtensionPoint* extensionPoint);
	void g_io_extension_point_set_required_type(GIOExtensionPoint* extensionPoint, GType type);
	GIOExtension* g_io_extension_point_implement(const(char)* extensionPointName, GType type, const(char)* extensionName, int priority);
	GIOExtensionPoint* g_io_extension_point_lookup(const(char)* name);
	GIOExtensionPoint* g_io_extension_point_register(const(char)* name);

	// gio.IOModule

	GType g_io_module_get_type();
	GIOModule* g_io_module_new(char* filename);
	GList* g_io_modules_load_all_in_directory(char* dirname);
	GList* g_io_modules_load_all_in_directory_with_scope(char* dirname, GIOModuleScope* scope_);
	void g_io_modules_scan_all_in_directory(char* dirname);
	void g_io_modules_scan_all_in_directory_with_scope(char* dirname, GIOModuleScope* scope_);

	// gio.IOModuleScope

	void g_io_module_scope_block(GIOModuleScope* scope_, const(char)* basename);
	void g_io_module_scope_free(GIOModuleScope* scope_);
	GIOModuleScope* g_io_module_scope_new(GIOModuleScopeFlags flags);

	// gio.IOSchedulerJob

	int g_io_scheduler_job_send_to_mainloop(GIOSchedulerJob* job, GSourceFunc func, void* userData, GDestroyNotify notify);
	void g_io_scheduler_job_send_to_mainloop_async(GIOSchedulerJob* job, GSourceFunc func, void* userData, GDestroyNotify notify);
	void g_io_scheduler_cancel_all_jobs();
	void g_io_scheduler_push_job(GIOSchedulerJobFunc jobFunc, void* userData, GDestroyNotify notify, int ioPriority, GCancellable* cancellable);

	// gio.IOStream

	GType g_io_stream_get_type();
	int g_io_stream_splice_finish(GAsyncResult* result, GError** err);
	void g_io_stream_clear_pending(GIOStream* stream);
	int g_io_stream_close(GIOStream* stream, GCancellable* cancellable, GError** err);
	void g_io_stream_close_async(GIOStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_io_stream_close_finish(GIOStream* stream, GAsyncResult* result, GError** err);
	GInputStream* g_io_stream_get_input_stream(GIOStream* stream);
	GOutputStream* g_io_stream_get_output_stream(GIOStream* stream);
	int g_io_stream_has_pending(GIOStream* stream);
	int g_io_stream_is_closed(GIOStream* stream);
	int g_io_stream_set_pending(GIOStream* stream, GError** err);
	void g_io_stream_splice_async(GIOStream* stream1, GIOStream* stream2, GIOStreamSpliceFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);

	// gio.Icon

	GType g_icon_get_type();
	GIcon* g_icon_deserialize(GVariant* value);
	uint g_icon_hash(void* icon);
	GIcon* g_icon_new_for_string(const(char)* str, GError** err);
	int g_icon_equal(GIcon* icon1, GIcon* icon2);
	GVariant* g_icon_serialize(GIcon* icon);
	char* g_icon_to_string(GIcon* icon);

	// gio.InetAddress

	GType g_inet_address_get_type();
	GInetAddress* g_inet_address_new_any(GSocketFamily family);
	GInetAddress* g_inet_address_new_from_bytes(ubyte* bytes, GSocketFamily family);
	GInetAddress* g_inet_address_new_from_string(const(char)* string_);
	GInetAddress* g_inet_address_new_loopback(GSocketFamily family);
	int g_inet_address_equal(GInetAddress* address, GInetAddress* otherAddress);
	GSocketFamily g_inet_address_get_family(GInetAddress* address);
	int g_inet_address_get_is_any(GInetAddress* address);
	int g_inet_address_get_is_link_local(GInetAddress* address);
	int g_inet_address_get_is_loopback(GInetAddress* address);
	int g_inet_address_get_is_mc_global(GInetAddress* address);
	int g_inet_address_get_is_mc_link_local(GInetAddress* address);
	int g_inet_address_get_is_mc_node_local(GInetAddress* address);
	int g_inet_address_get_is_mc_org_local(GInetAddress* address);
	int g_inet_address_get_is_mc_site_local(GInetAddress* address);
	int g_inet_address_get_is_multicast(GInetAddress* address);
	int g_inet_address_get_is_site_local(GInetAddress* address);
	size_t g_inet_address_get_native_size(GInetAddress* address);
	ubyte* g_inet_address_to_bytes(GInetAddress* address);
	char* g_inet_address_to_string(GInetAddress* address);

	// gio.InetAddressMask

	GType g_inet_address_mask_get_type();
	GInetAddressMask* g_inet_address_mask_new(GInetAddress* addr, uint length, GError** err);
	GInetAddressMask* g_inet_address_mask_new_from_string(const(char)* maskString, GError** err);
	int g_inet_address_mask_equal(GInetAddressMask* mask, GInetAddressMask* mask2);
	GInetAddress* g_inet_address_mask_get_address(GInetAddressMask* mask);
	GSocketFamily g_inet_address_mask_get_family(GInetAddressMask* mask);
	uint g_inet_address_mask_get_length(GInetAddressMask* mask);
	int g_inet_address_mask_matches(GInetAddressMask* mask, GInetAddress* address);
	char* g_inet_address_mask_to_string(GInetAddressMask* mask);

	// gio.InetSocketAddress

	GType g_inet_socket_address_get_type();
	GSocketAddress* g_inet_socket_address_new(GInetAddress* address, ushort port);
	GSocketAddress* g_inet_socket_address_new_from_string(const(char)* address, uint port);
	GInetAddress* g_inet_socket_address_get_address(GInetSocketAddress* address);
	uint g_inet_socket_address_get_flowinfo(GInetSocketAddress* address);
	ushort g_inet_socket_address_get_port(GInetSocketAddress* address);
	uint g_inet_socket_address_get_scope_id(GInetSocketAddress* address);

	// gio.Initable

	GType g_initable_get_type();
	void* g_initable_new(GType objectType, GCancellable* cancellable, GError** error, const(char)* firstPropertyName, ... );
	GObject* g_initable_new_valist(GType objectType, const(char)* firstPropertyName, void* varArgs, GCancellable* cancellable, GError** err);
	void* g_initable_newv(GType objectType, uint nParameters, GParameter* parameters, GCancellable* cancellable, GError** err);
	int g_initable_init(GInitable* initable, GCancellable* cancellable, GError** err);

	// gio.InputStream

	GType g_input_stream_get_type();
	void g_input_stream_clear_pending(GInputStream* stream);
	int g_input_stream_close(GInputStream* stream, GCancellable* cancellable, GError** err);
	void g_input_stream_close_async(GInputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_input_stream_close_finish(GInputStream* stream, GAsyncResult* result, GError** err);
	int g_input_stream_has_pending(GInputStream* stream);
	int g_input_stream_is_closed(GInputStream* stream);
	ptrdiff_t g_input_stream_read(GInputStream* stream, void* buffer, size_t count, GCancellable* cancellable, GError** err);
	int g_input_stream_read_all(GInputStream* stream, void* buffer, size_t count, size_t* bytesRead, GCancellable* cancellable, GError** err);
	void g_input_stream_read_all_async(GInputStream* stream, void* buffer, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_input_stream_read_all_finish(GInputStream* stream, GAsyncResult* result, size_t* bytesRead, GError** err);
	void g_input_stream_read_async(GInputStream* stream, void* buffer, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GBytes* g_input_stream_read_bytes(GInputStream* stream, size_t count, GCancellable* cancellable, GError** err);
	void g_input_stream_read_bytes_async(GInputStream* stream, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GBytes* g_input_stream_read_bytes_finish(GInputStream* stream, GAsyncResult* result, GError** err);
	ptrdiff_t g_input_stream_read_finish(GInputStream* stream, GAsyncResult* result, GError** err);
	int g_input_stream_set_pending(GInputStream* stream, GError** err);
	ptrdiff_t g_input_stream_skip(GInputStream* stream, size_t count, GCancellable* cancellable, GError** err);
	void g_input_stream_skip_async(GInputStream* stream, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	ptrdiff_t g_input_stream_skip_finish(GInputStream* stream, GAsyncResult* result, GError** err);

	// gio.ListModel

	GType g_list_model_get_type();
	void* g_list_model_get_item(GListModel* list, uint position);
	GType g_list_model_get_item_type(GListModel* list);
	uint g_list_model_get_n_items(GListModel* list);
	GObject* g_list_model_get_object(GListModel* list, uint position);
	void g_list_model_items_changed(GListModel* list, uint position, uint removed, uint added);

	// gio.ListStore

	GType g_list_store_get_type();
	GListStore* g_list_store_new(GType itemType);
	void g_list_store_append(GListStore* store, void* item);
	int g_list_store_find(GListStore* store, void* item, uint* position);
	int g_list_store_find_with_equal_func(GListStore* store, void* item, GEqualFunc equalFunc, uint* position);
	void g_list_store_insert(GListStore* store, uint position, void* item);
	uint g_list_store_insert_sorted(GListStore* store, void* item, GCompareDataFunc compareFunc, void* userData);
	void g_list_store_remove(GListStore* store, uint position);
	void g_list_store_remove_all(GListStore* store);
	void g_list_store_sort(GListStore* store, GCompareDataFunc compareFunc, void* userData);
	void g_list_store_splice(GListStore* store, uint position, uint nRemovals, void** additions, uint nAdditions);

	// gio.LoadableIcon

	GType g_loadable_icon_get_type();
	GInputStream* g_loadable_icon_load(GLoadableIcon* icon, int size, char** type, GCancellable* cancellable, GError** err);
	void g_loadable_icon_load_async(GLoadableIcon* icon, int size, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GInputStream* g_loadable_icon_load_finish(GLoadableIcon* icon, GAsyncResult* res, char** type, GError** err);

	// gio.MemoryInputStream

	GType g_memory_input_stream_get_type();
	GInputStream* g_memory_input_stream_new();
	GInputStream* g_memory_input_stream_new_from_bytes(GBytes* bytes);
	GInputStream* g_memory_input_stream_new_from_data(void* data, ptrdiff_t len, GDestroyNotify destroy);
	void g_memory_input_stream_add_bytes(GMemoryInputStream* stream, GBytes* bytes);
	void g_memory_input_stream_add_data(GMemoryInputStream* stream, void* data, ptrdiff_t len, GDestroyNotify destroy);

	// gio.MemoryMonitor

	GType g_memory_monitor_get_type();
	GMemoryMonitor* g_memory_monitor_dup_default();

	// gio.MemoryOutputStream

	GType g_memory_output_stream_get_type();
	GOutputStream* g_memory_output_stream_new(void* data, size_t size, GReallocFunc reallocFunction, GDestroyNotify destroyFunction);
	GOutputStream* g_memory_output_stream_new_resizable();
	void* g_memory_output_stream_get_data(GMemoryOutputStream* ostream);
	size_t g_memory_output_stream_get_data_size(GMemoryOutputStream* ostream);
	size_t g_memory_output_stream_get_size(GMemoryOutputStream* ostream);
	GBytes* g_memory_output_stream_steal_as_bytes(GMemoryOutputStream* ostream);
	void* g_memory_output_stream_steal_data(GMemoryOutputStream* ostream);

	// gio.Menu

	GType g_menu_get_type();
	GMenu* g_menu_new();
	void g_menu_append(GMenu* menu, const(char)* label, const(char)* detailedAction);
	void g_menu_append_item(GMenu* menu, GMenuItem* item);
	void g_menu_append_section(GMenu* menu, const(char)* label, GMenuModel* section);
	void g_menu_append_submenu(GMenu* menu, const(char)* label, GMenuModel* submenu);
	void g_menu_freeze(GMenu* menu);
	void g_menu_insert(GMenu* menu, int position, const(char)* label, const(char)* detailedAction);
	void g_menu_insert_item(GMenu* menu, int position, GMenuItem* item);
	void g_menu_insert_section(GMenu* menu, int position, const(char)* label, GMenuModel* section);
	void g_menu_insert_submenu(GMenu* menu, int position, const(char)* label, GMenuModel* submenu);
	void g_menu_prepend(GMenu* menu, const(char)* label, const(char)* detailedAction);
	void g_menu_prepend_item(GMenu* menu, GMenuItem* item);
	void g_menu_prepend_section(GMenu* menu, const(char)* label, GMenuModel* section);
	void g_menu_prepend_submenu(GMenu* menu, const(char)* label, GMenuModel* submenu);
	void g_menu_remove(GMenu* menu, int position);
	void g_menu_remove_all(GMenu* menu);

	// gio.MenuAttributeIter

	GType g_menu_attribute_iter_get_type();
	const(char)* g_menu_attribute_iter_get_name(GMenuAttributeIter* iter);
	int g_menu_attribute_iter_get_next(GMenuAttributeIter* iter, char** outName, GVariant** value);
	GVariant* g_menu_attribute_iter_get_value(GMenuAttributeIter* iter);
	int g_menu_attribute_iter_next(GMenuAttributeIter* iter);

	// gio.MenuItem

	GType g_menu_item_get_type();
	GMenuItem* g_menu_item_new(const(char)* label, const(char)* detailedAction);
	GMenuItem* g_menu_item_new_from_model(GMenuModel* model, int itemIndex);
	GMenuItem* g_menu_item_new_section(const(char)* label, GMenuModel* section);
	GMenuItem* g_menu_item_new_submenu(const(char)* label, GMenuModel* submenu);
	int g_menu_item_get_attribute(GMenuItem* menuItem, const(char)* attribute, const(char)* formatString, ... );
	GVariant* g_menu_item_get_attribute_value(GMenuItem* menuItem, const(char)* attribute, GVariantType* expectedType);
	GMenuModel* g_menu_item_get_link(GMenuItem* menuItem, const(char)* link);
	void g_menu_item_set_action_and_target(GMenuItem* menuItem, const(char)* action, const(char)* formatString, ... );
	void g_menu_item_set_action_and_target_value(GMenuItem* menuItem, const(char)* action, GVariant* targetValue);
	void g_menu_item_set_attribute(GMenuItem* menuItem, const(char)* attribute, const(char)* formatString, ... );
	void g_menu_item_set_attribute_value(GMenuItem* menuItem, const(char)* attribute, GVariant* value);
	void g_menu_item_set_detailed_action(GMenuItem* menuItem, const(char)* detailedAction);
	void g_menu_item_set_icon(GMenuItem* menuItem, GIcon* icon);
	void g_menu_item_set_label(GMenuItem* menuItem, const(char)* label);
	void g_menu_item_set_link(GMenuItem* menuItem, const(char)* link, GMenuModel* model);
	void g_menu_item_set_section(GMenuItem* menuItem, GMenuModel* section);
	void g_menu_item_set_submenu(GMenuItem* menuItem, GMenuModel* submenu);

	// gio.MenuLinkIter

	GType g_menu_link_iter_get_type();
	const(char)* g_menu_link_iter_get_name(GMenuLinkIter* iter);
	int g_menu_link_iter_get_next(GMenuLinkIter* iter, char** outLink, GMenuModel** value);
	GMenuModel* g_menu_link_iter_get_value(GMenuLinkIter* iter);
	int g_menu_link_iter_next(GMenuLinkIter* iter);

	// gio.MenuModel

	GType g_menu_model_get_type();
	int g_menu_model_get_item_attribute(GMenuModel* model, int itemIndex, const(char)* attribute, const(char)* formatString, ... );
	GVariant* g_menu_model_get_item_attribute_value(GMenuModel* model, int itemIndex, const(char)* attribute, GVariantType* expectedType);
	GMenuModel* g_menu_model_get_item_link(GMenuModel* model, int itemIndex, const(char)* link);
	int g_menu_model_get_n_items(GMenuModel* model);
	int g_menu_model_is_mutable(GMenuModel* model);
	void g_menu_model_items_changed(GMenuModel* model, int position, int removed, int added);
	GMenuAttributeIter* g_menu_model_iterate_item_attributes(GMenuModel* model, int itemIndex);
	GMenuLinkIter* g_menu_model_iterate_item_links(GMenuModel* model, int itemIndex);

	// gio.Mount

	GType g_mount_get_type();
	int g_mount_can_eject(GMount* mount);
	int g_mount_can_unmount(GMount* mount);
	void g_mount_eject(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_mount_eject_finish(GMount* mount, GAsyncResult* result, GError** err);
	void g_mount_eject_with_operation(GMount* mount, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_mount_eject_with_operation_finish(GMount* mount, GAsyncResult* result, GError** err);
	GFile* g_mount_get_default_location(GMount* mount);
	GDrive* g_mount_get_drive(GMount* mount);
	GIcon* g_mount_get_icon(GMount* mount);
	char* g_mount_get_name(GMount* mount);
	GFile* g_mount_get_root(GMount* mount);
	const(char)* g_mount_get_sort_key(GMount* mount);
	GIcon* g_mount_get_symbolic_icon(GMount* mount);
	char* g_mount_get_uuid(GMount* mount);
	GVolume* g_mount_get_volume(GMount* mount);
	void g_mount_guess_content_type(GMount* mount, int forceRescan, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char** g_mount_guess_content_type_finish(GMount* mount, GAsyncResult* result, GError** err);
	char** g_mount_guess_content_type_sync(GMount* mount, int forceRescan, GCancellable* cancellable, GError** err);
	int g_mount_is_shadowed(GMount* mount);
	void g_mount_remount(GMount* mount, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_mount_remount_finish(GMount* mount, GAsyncResult* result, GError** err);
	void g_mount_shadow(GMount* mount);
	void g_mount_unmount(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_mount_unmount_finish(GMount* mount, GAsyncResult* result, GError** err);
	void g_mount_unmount_with_operation(GMount* mount, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_mount_unmount_with_operation_finish(GMount* mount, GAsyncResult* result, GError** err);
	void g_mount_unshadow(GMount* mount);

	// gio.MountOperation

	GType g_mount_operation_get_type();
	GMountOperation* g_mount_operation_new();
	int g_mount_operation_get_anonymous(GMountOperation* op);
	int g_mount_operation_get_choice(GMountOperation* op);
	const(char)* g_mount_operation_get_domain(GMountOperation* op);
	int g_mount_operation_get_is_tcrypt_hidden_volume(GMountOperation* op);
	int g_mount_operation_get_is_tcrypt_system_volume(GMountOperation* op);
	const(char)* g_mount_operation_get_password(GMountOperation* op);
	GPasswordSave g_mount_operation_get_password_save(GMountOperation* op);
	uint g_mount_operation_get_pim(GMountOperation* op);
	const(char)* g_mount_operation_get_username(GMountOperation* op);
	void g_mount_operation_reply(GMountOperation* op, GMountOperationResult result);
	void g_mount_operation_set_anonymous(GMountOperation* op, int anonymous);
	void g_mount_operation_set_choice(GMountOperation* op, int choice);
	void g_mount_operation_set_domain(GMountOperation* op, const(char)* domain);
	void g_mount_operation_set_is_tcrypt_hidden_volume(GMountOperation* op, int hiddenVolume);
	void g_mount_operation_set_is_tcrypt_system_volume(GMountOperation* op, int systemVolume);
	void g_mount_operation_set_password(GMountOperation* op, const(char)* password);
	void g_mount_operation_set_password_save(GMountOperation* op, GPasswordSave save);
	void g_mount_operation_set_pim(GMountOperation* op, uint pim);
	void g_mount_operation_set_username(GMountOperation* op, const(char)* username);

	// gio.NativeSocketAddress

	GType g_native_socket_address_get_type();
	GSocketAddress* g_native_socket_address_new(void* native, size_t len);

	// gio.NativeVolumeMonitor

	GType g_native_volume_monitor_get_type();

	// gio.NetworkAddress

	GType g_network_address_get_type();
	GSocketConnectable* g_network_address_new(const(char)* hostname, ushort port);
	GSocketConnectable* g_network_address_new_loopback(ushort port);
	GSocketConnectable* g_network_address_parse(const(char)* hostAndPort, ushort defaultPort, GError** err);
	GSocketConnectable* g_network_address_parse_uri(const(char)* uri, ushort defaultPort, GError** err);
	const(char)* g_network_address_get_hostname(GNetworkAddress* addr);
	ushort g_network_address_get_port(GNetworkAddress* addr);
	const(char)* g_network_address_get_scheme(GNetworkAddress* addr);

	// gio.NetworkMonitor

	GType g_network_monitor_get_type();
	GNetworkMonitor* g_network_monitor_get_default();
	int g_network_monitor_can_reach(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GError** err);
	void g_network_monitor_can_reach_async(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_network_monitor_can_reach_finish(GNetworkMonitor* monitor, GAsyncResult* result, GError** err);
	GNetworkConnectivity g_network_monitor_get_connectivity(GNetworkMonitor* monitor);
	int g_network_monitor_get_network_available(GNetworkMonitor* monitor);
	int g_network_monitor_get_network_metered(GNetworkMonitor* monitor);

	// gio.NetworkService

	GType g_network_service_get_type();
	GSocketConnectable* g_network_service_new(const(char)* service, const(char)* protocol, const(char)* domain);
	const(char)* g_network_service_get_domain(GNetworkService* srv);
	const(char)* g_network_service_get_protocol(GNetworkService* srv);
	const(char)* g_network_service_get_scheme(GNetworkService* srv);
	const(char)* g_network_service_get_service(GNetworkService* srv);
	void g_network_service_set_scheme(GNetworkService* srv, const(char)* scheme);

	// gio.Notification

	GType g_notification_get_type();
	GNotification* g_notification_new(const(char)* title);
	void g_notification_add_button(GNotification* notification, const(char)* label, const(char)* detailedAction);
	void g_notification_add_button_with_target(GNotification* notification, const(char)* label, const(char)* action, const(char)* targetFormat, ... );
	void g_notification_add_button_with_target_value(GNotification* notification, const(char)* label, const(char)* action, GVariant* target);
	void g_notification_set_body(GNotification* notification, const(char)* body_);
	void g_notification_set_default_action(GNotification* notification, const(char)* detailedAction);
	void g_notification_set_default_action_and_target(GNotification* notification, const(char)* action, const(char)* targetFormat, ... );
	void g_notification_set_default_action_and_target_value(GNotification* notification, const(char)* action, GVariant* target);
	void g_notification_set_icon(GNotification* notification, GIcon* icon);
	void g_notification_set_priority(GNotification* notification, GNotificationPriority priority);
	void g_notification_set_title(GNotification* notification, const(char)* title);
	void g_notification_set_urgent(GNotification* notification, int urgent);

	// gio.OutputStream

	GType g_output_stream_get_type();
	void g_output_stream_clear_pending(GOutputStream* stream);
	int g_output_stream_close(GOutputStream* stream, GCancellable* cancellable, GError** err);
	void g_output_stream_close_async(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_output_stream_close_finish(GOutputStream* stream, GAsyncResult* result, GError** err);
	int g_output_stream_flush(GOutputStream* stream, GCancellable* cancellable, GError** err);
	void g_output_stream_flush_async(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_output_stream_flush_finish(GOutputStream* stream, GAsyncResult* result, GError** err);
	int g_output_stream_has_pending(GOutputStream* stream);
	int g_output_stream_is_closed(GOutputStream* stream);
	int g_output_stream_is_closing(GOutputStream* stream);
	int g_output_stream_printf(GOutputStream* stream, size_t* bytesWritten, GCancellable* cancellable, GError** error, const(char)* format, ... );
	int g_output_stream_set_pending(GOutputStream* stream, GError** err);
	ptrdiff_t g_output_stream_splice(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, GCancellable* cancellable, GError** err);
	void g_output_stream_splice_async(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	ptrdiff_t g_output_stream_splice_finish(GOutputStream* stream, GAsyncResult* result, GError** err);
	int g_output_stream_vprintf(GOutputStream* stream, size_t* bytesWritten, GCancellable* cancellable, GError** error, const(char)* format, void* args);
	ptrdiff_t g_output_stream_write(GOutputStream* stream, void* buffer, size_t count, GCancellable* cancellable, GError** err);
	int g_output_stream_write_all(GOutputStream* stream, void* buffer, size_t count, size_t* bytesWritten, GCancellable* cancellable, GError** err);
	void g_output_stream_write_all_async(GOutputStream* stream, void* buffer, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_output_stream_write_all_finish(GOutputStream* stream, GAsyncResult* result, size_t* bytesWritten, GError** err);
	void g_output_stream_write_async(GOutputStream* stream, void* buffer, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	ptrdiff_t g_output_stream_write_bytes(GOutputStream* stream, GBytes* bytes, GCancellable* cancellable, GError** err);
	void g_output_stream_write_bytes_async(GOutputStream* stream, GBytes* bytes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	ptrdiff_t g_output_stream_write_bytes_finish(GOutputStream* stream, GAsyncResult* result, GError** err);
	ptrdiff_t g_output_stream_write_finish(GOutputStream* stream, GAsyncResult* result, GError** err);
	int g_output_stream_writev(GOutputStream* stream, GOutputVector* vectors, size_t nVectors, size_t* bytesWritten, GCancellable* cancellable, GError** err);
	int g_output_stream_writev_all(GOutputStream* stream, GOutputVector* vectors, size_t nVectors, size_t* bytesWritten, GCancellable* cancellable, GError** err);
	void g_output_stream_writev_all_async(GOutputStream* stream, GOutputVector* vectors, size_t nVectors, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_output_stream_writev_all_finish(GOutputStream* stream, GAsyncResult* result, size_t* bytesWritten, GError** err);
	void g_output_stream_writev_async(GOutputStream* stream, GOutputVector* vectors, size_t nVectors, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_output_stream_writev_finish(GOutputStream* stream, GAsyncResult* result, size_t* bytesWritten, GError** err);

	// gio.Permission

	GType g_permission_get_type();
	int g_permission_acquire(GPermission* permission, GCancellable* cancellable, GError** err);
	void g_permission_acquire_async(GPermission* permission, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_permission_acquire_finish(GPermission* permission, GAsyncResult* result, GError** err);
	int g_permission_get_allowed(GPermission* permission);
	int g_permission_get_can_acquire(GPermission* permission);
	int g_permission_get_can_release(GPermission* permission);
	void g_permission_impl_update(GPermission* permission, int allowed, int canAcquire, int canRelease);
	int g_permission_release(GPermission* permission, GCancellable* cancellable, GError** err);
	void g_permission_release_async(GPermission* permission, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_permission_release_finish(GPermission* permission, GAsyncResult* result, GError** err);

	// gio.PollableInputStream

	GType g_pollable_input_stream_get_type();
	int g_pollable_input_stream_can_poll(GPollableInputStream* stream);
	GSource* g_pollable_input_stream_create_source(GPollableInputStream* stream, GCancellable* cancellable);
	int g_pollable_input_stream_is_readable(GPollableInputStream* stream);
	ptrdiff_t g_pollable_input_stream_read_nonblocking(GPollableInputStream* stream, void* buffer, size_t count, GCancellable* cancellable, GError** err);

	// gio.PollableOutputStream

	GType g_pollable_output_stream_get_type();
	int g_pollable_output_stream_can_poll(GPollableOutputStream* stream);
	GSource* g_pollable_output_stream_create_source(GPollableOutputStream* stream, GCancellable* cancellable);
	int g_pollable_output_stream_is_writable(GPollableOutputStream* stream);
	ptrdiff_t g_pollable_output_stream_write_nonblocking(GPollableOutputStream* stream, void* buffer, size_t count, GCancellable* cancellable, GError** err);
	GPollableReturn g_pollable_output_stream_writev_nonblocking(GPollableOutputStream* stream, GOutputVector* vectors, size_t nVectors, size_t* bytesWritten, GCancellable* cancellable, GError** err);

	// gio.PropertyAction

	GType g_property_action_get_type();
	GPropertyAction* g_property_action_new(const(char)* name, void* object, const(char)* propertyName);

	// gio.Proxy

	GType g_proxy_get_type();
	GProxy* g_proxy_get_default_for_protocol(const(char)* protocol);
	GIOStream* g_proxy_connect(GProxy* proxy, GIOStream* connection, GProxyAddress* proxyAddress, GCancellable* cancellable, GError** err);
	void g_proxy_connect_async(GProxy* proxy, GIOStream* connection, GProxyAddress* proxyAddress, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GIOStream* g_proxy_connect_finish(GProxy* proxy, GAsyncResult* result, GError** err);
	int g_proxy_supports_hostname(GProxy* proxy);

	// gio.ProxyAddress

	GType g_proxy_address_get_type();
	GSocketAddress* g_proxy_address_new(GInetAddress* inetaddr, ushort port, const(char)* protocol, const(char)* destHostname, ushort destPort, const(char)* username, const(char)* password);
	const(char)* g_proxy_address_get_destination_hostname(GProxyAddress* proxy);
	ushort g_proxy_address_get_destination_port(GProxyAddress* proxy);
	const(char)* g_proxy_address_get_destination_protocol(GProxyAddress* proxy);
	const(char)* g_proxy_address_get_password(GProxyAddress* proxy);
	const(char)* g_proxy_address_get_protocol(GProxyAddress* proxy);
	const(char)* g_proxy_address_get_uri(GProxyAddress* proxy);
	const(char)* g_proxy_address_get_username(GProxyAddress* proxy);

	// gio.ProxyAddressEnumerator

	GType g_proxy_address_enumerator_get_type();

	// gio.ProxyResolver

	GType g_proxy_resolver_get_type();
	GProxyResolver* g_proxy_resolver_get_default();
	int g_proxy_resolver_is_supported(GProxyResolver* resolver);
	char** g_proxy_resolver_lookup(GProxyResolver* resolver, const(char)* uri, GCancellable* cancellable, GError** err);
	void g_proxy_resolver_lookup_async(GProxyResolver* resolver, const(char)* uri, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char** g_proxy_resolver_lookup_finish(GProxyResolver* resolver, GAsyncResult* result, GError** err);

	// gio.RemoteActionGroup

	GType g_remote_action_group_get_type();
	void g_remote_action_group_activate_action_full(GRemoteActionGroup* remote, const(char)* actionName, GVariant* parameter, GVariant* platformData);
	void g_remote_action_group_change_action_state_full(GRemoteActionGroup* remote, const(char)* actionName, GVariant* value, GVariant* platformData);

	// gio.Resolver

	GType g_resolver_get_type();
	void g_resolver_free_addresses(GList* addresses);
	void g_resolver_free_targets(GList* targets);
	GResolver* g_resolver_get_default();
	char* g_resolver_lookup_by_address(GResolver* resolver, GInetAddress* address, GCancellable* cancellable, GError** err);
	void g_resolver_lookup_by_address_async(GResolver* resolver, GInetAddress* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char* g_resolver_lookup_by_address_finish(GResolver* resolver, GAsyncResult* result, GError** err);
	GList* g_resolver_lookup_by_name(GResolver* resolver, const(char)* hostname, GCancellable* cancellable, GError** err);
	void g_resolver_lookup_by_name_async(GResolver* resolver, const(char)* hostname, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* g_resolver_lookup_by_name_finish(GResolver* resolver, GAsyncResult* result, GError** err);
	GList* g_resolver_lookup_by_name_with_flags(GResolver* resolver, const(char)* hostname, GResolverNameLookupFlags flags, GCancellable* cancellable, GError** err);
	void g_resolver_lookup_by_name_with_flags_async(GResolver* resolver, const(char)* hostname, GResolverNameLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* g_resolver_lookup_by_name_with_flags_finish(GResolver* resolver, GAsyncResult* result, GError** err);
	GList* g_resolver_lookup_records(GResolver* resolver, const(char)* rrname, GResolverRecordType recordType, GCancellable* cancellable, GError** err);
	void g_resolver_lookup_records_async(GResolver* resolver, const(char)* rrname, GResolverRecordType recordType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* g_resolver_lookup_records_finish(GResolver* resolver, GAsyncResult* result, GError** err);
	GList* g_resolver_lookup_service(GResolver* resolver, const(char)* service, const(char)* protocol, const(char)* domain, GCancellable* cancellable, GError** err);
	void g_resolver_lookup_service_async(GResolver* resolver, const(char)* service, const(char)* protocol, const(char)* domain, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* g_resolver_lookup_service_finish(GResolver* resolver, GAsyncResult* result, GError** err);
	void g_resolver_set_default(GResolver* resolver);

	// gio.Resource

	GType g_resource_get_type();
	GResource* g_resource_new_from_data(GBytes* data, GError** err);
	void g_resources_register(GResource* resource);
	void g_resources_unregister(GResource* resource);
	char** g_resource_enumerate_children(GResource* resource, const(char)* path, GResourceLookupFlags lookupFlags, GError** err);
	int g_resource_get_info(GResource* resource, const(char)* path, GResourceLookupFlags lookupFlags, size_t* size, uint* flags, GError** err);
	GBytes* g_resource_lookup_data(GResource* resource, const(char)* path, GResourceLookupFlags lookupFlags, GError** err);
	GInputStream* g_resource_open_stream(GResource* resource, const(char)* path, GResourceLookupFlags lookupFlags, GError** err);
	GResource* g_resource_ref(GResource* resource);
	void g_resource_unref(GResource* resource);
	GResource* g_resource_load(char* filename, GError** err);
	char** g_resources_enumerate_children(const(char)* path, GResourceLookupFlags lookupFlags, GError** err);
	int g_resources_get_info(const(char)* path, GResourceLookupFlags lookupFlags, size_t* size, uint* flags, GError** err);
	GBytes* g_resources_lookup_data(const(char)* path, GResourceLookupFlags lookupFlags, GError** err);
	GInputStream* g_resources_open_stream(const(char)* path, GResourceLookupFlags lookupFlags, GError** err);

	// gio.Seekable

	GType g_seekable_get_type();
	int g_seekable_can_seek(GSeekable* seekable);
	int g_seekable_can_truncate(GSeekable* seekable);
	int g_seekable_seek(GSeekable* seekable, long offset, GSeekType type, GCancellable* cancellable, GError** err);
	long g_seekable_tell(GSeekable* seekable);
	int g_seekable_truncate(GSeekable* seekable, long offset, GCancellable* cancellable, GError** err);

	// gio.Settings

	GType g_settings_get_type();
	GSettings* g_settings_new(const(char)* schemaId);
	GSettings* g_settings_new_full(GSettingsSchema* schema, GSettingsBackend* backend, const(char)* path);
	GSettings* g_settings_new_with_backend(const(char)* schemaId, GSettingsBackend* backend);
	GSettings* g_settings_new_with_backend_and_path(const(char)* schemaId, GSettingsBackend* backend, const(char)* path);
	GSettings* g_settings_new_with_path(const(char)* schemaId, const(char)* path);
	char** g_settings_list_relocatable_schemas();
	char** g_settings_list_schemas();
	void g_settings_sync();
	void g_settings_unbind(void* object, const(char)* property);
	void g_settings_apply(GSettings* settings);
	void g_settings_bind(GSettings* settings, const(char)* key, void* object, const(char)* property, GSettingsBindFlags flags);
	void g_settings_bind_with_mapping(GSettings* settings, const(char)* key, void* object, const(char)* property, GSettingsBindFlags flags, GSettingsBindGetMapping getMapping, GSettingsBindSetMapping setMapping, void* userData, GDestroyNotify destroy);
	void g_settings_bind_writable(GSettings* settings, const(char)* key, void* object, const(char)* property, int inverted);
	GAction* g_settings_create_action(GSettings* settings, const(char)* key);
	void g_settings_delay(GSettings* settings);
	void g_settings_get(GSettings* settings, const(char)* key, const(char)* format, ... );
	int g_settings_get_boolean(GSettings* settings, const(char)* key);
	GSettings* g_settings_get_child(GSettings* settings, const(char)* name);
	GVariant* g_settings_get_default_value(GSettings* settings, const(char)* key);
	double g_settings_get_double(GSettings* settings, const(char)* key);
	int g_settings_get_enum(GSettings* settings, const(char)* key);
	uint g_settings_get_flags(GSettings* settings, const(char)* key);
	int g_settings_get_has_unapplied(GSettings* settings);
	int g_settings_get_int(GSettings* settings, const(char)* key);
	long g_settings_get_int64(GSettings* settings, const(char)* key);
	void* g_settings_get_mapped(GSettings* settings, const(char)* key, GSettingsGetMapping mapping, void* userData);
	GVariant* g_settings_get_range(GSettings* settings, const(char)* key);
	char* g_settings_get_string(GSettings* settings, const(char)* key);
	char** g_settings_get_strv(GSettings* settings, const(char)* key);
	uint g_settings_get_uint(GSettings* settings, const(char)* key);
	ulong g_settings_get_uint64(GSettings* settings, const(char)* key);
	GVariant* g_settings_get_user_value(GSettings* settings, const(char)* key);
	GVariant* g_settings_get_value(GSettings* settings, const(char)* key);
	int g_settings_is_writable(GSettings* settings, const(char)* name);
	char** g_settings_list_children(GSettings* settings);
	char** g_settings_list_keys(GSettings* settings);
	int g_settings_range_check(GSettings* settings, const(char)* key, GVariant* value);
	void g_settings_reset(GSettings* settings, const(char)* key);
	void g_settings_revert(GSettings* settings);
	int g_settings_set(GSettings* settings, const(char)* key, const(char)* format, ... );
	int g_settings_set_boolean(GSettings* settings, const(char)* key, int value);
	int g_settings_set_double(GSettings* settings, const(char)* key, double value);
	int g_settings_set_enum(GSettings* settings, const(char)* key, int value);
	int g_settings_set_flags(GSettings* settings, const(char)* key, uint value);
	int g_settings_set_int(GSettings* settings, const(char)* key, int value);
	int g_settings_set_int64(GSettings* settings, const(char)* key, long value);
	int g_settings_set_string(GSettings* settings, const(char)* key, const(char)* value);
	int g_settings_set_strv(GSettings* settings, const(char)* key, char** value);
	int g_settings_set_uint(GSettings* settings, const(char)* key, uint value);
	int g_settings_set_uint64(GSettings* settings, const(char)* key, ulong value);
	int g_settings_set_value(GSettings* settings, const(char)* key, GVariant* value);

	// gio.SettingsBackend

	GType g_settings_backend_get_type();
	void g_settings_backend_flatten_tree(GTree* tree, char** path, char*** keys, GVariant*** values);
	GSettingsBackend* g_settings_backend_get_default();
	void g_settings_backend_changed(GSettingsBackend* backend, const(char)* key, void* originTag);
	void g_settings_backend_changed_tree(GSettingsBackend* backend, GTree* tree, void* originTag);
	void g_settings_backend_keys_changed(GSettingsBackend* backend, const(char)* path, char** items, void* originTag);
	void g_settings_backend_path_changed(GSettingsBackend* backend, const(char)* path, void* originTag);
	void g_settings_backend_path_writable_changed(GSettingsBackend* backend, const(char)* path);
	void g_settings_backend_writable_changed(GSettingsBackend* backend, const(char)* key);
	GSettingsBackend* g_keyfile_settings_backend_new(const(char)* filename, const(char)* rootPath, const(char)* rootGroup);
	GSettingsBackend* g_memory_settings_backend_new();
	GSettingsBackend* g_null_settings_backend_new();

	// gio.SettingsSchema

	GType g_settings_schema_get_type();
	const(char)* g_settings_schema_get_id(GSettingsSchema* schema);
	GSettingsSchemaKey* g_settings_schema_get_key(GSettingsSchema* schema, const(char)* name);
	const(char)* g_settings_schema_get_path(GSettingsSchema* schema);
	int g_settings_schema_has_key(GSettingsSchema* schema, const(char)* name);
	char** g_settings_schema_list_children(GSettingsSchema* schema);
	char** g_settings_schema_list_keys(GSettingsSchema* schema);
	GSettingsSchema* g_settings_schema_ref(GSettingsSchema* schema);
	void g_settings_schema_unref(GSettingsSchema* schema);

	// gio.SettingsSchemaKey

	GType g_settings_schema_key_get_type();
	GVariant* g_settings_schema_key_get_default_value(GSettingsSchemaKey* key);
	const(char)* g_settings_schema_key_get_description(GSettingsSchemaKey* key);
	const(char)* g_settings_schema_key_get_name(GSettingsSchemaKey* key);
	GVariant* g_settings_schema_key_get_range(GSettingsSchemaKey* key);
	const(char)* g_settings_schema_key_get_summary(GSettingsSchemaKey* key);
	GVariantType* g_settings_schema_key_get_value_type(GSettingsSchemaKey* key);
	int g_settings_schema_key_range_check(GSettingsSchemaKey* key, GVariant* value);
	GSettingsSchemaKey* g_settings_schema_key_ref(GSettingsSchemaKey* key);
	void g_settings_schema_key_unref(GSettingsSchemaKey* key);

	// gio.SettingsSchemaSource

	GType g_settings_schema_source_get_type();
	GSettingsSchemaSource* g_settings_schema_source_new_from_directory(char* directory, GSettingsSchemaSource* parent, int trusted, GError** err);
	void g_settings_schema_source_list_schemas(GSettingsSchemaSource* source, int recursive, char*** nonRelocatable, char*** relocatable);
	GSettingsSchema* g_settings_schema_source_lookup(GSettingsSchemaSource* source, const(char)* schemaId, int recursive);
	GSettingsSchemaSource* g_settings_schema_source_ref(GSettingsSchemaSource* source);
	void g_settings_schema_source_unref(GSettingsSchemaSource* source);
	GSettingsSchemaSource* g_settings_schema_source_get_default();

	// gio.SimpleAction

	GType g_simple_action_get_type();
	GSimpleAction* g_simple_action_new(const(char)* name, GVariantType* parameterType);
	GSimpleAction* g_simple_action_new_stateful(const(char)* name, GVariantType* parameterType, GVariant* state);
	void g_simple_action_set_enabled(GSimpleAction* simple, int enabled);
	void g_simple_action_set_state(GSimpleAction* simple, GVariant* value);
	void g_simple_action_set_state_hint(GSimpleAction* simple, GVariant* stateHint);

	// gio.SimpleActionGroup

	GType g_simple_action_group_get_type();
	GSimpleActionGroup* g_simple_action_group_new();
	void g_simple_action_group_add_entries(GSimpleActionGroup* simple, GActionEntry* entries, int nEntries, void* userData);
	void g_simple_action_group_insert(GSimpleActionGroup* simple, GAction* action);
	GAction* g_simple_action_group_lookup(GSimpleActionGroup* simple, const(char)* actionName);
	void g_simple_action_group_remove(GSimpleActionGroup* simple, const(char)* actionName);

	// gio.SimpleAsyncResult

	GType g_simple_async_result_get_type();
	GSimpleAsyncResult* g_simple_async_result_new(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, void* sourceTag);
	GSimpleAsyncResult* g_simple_async_result_new_error(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, GQuark domain, int code, const(char)* format, ... );
	GSimpleAsyncResult* g_simple_async_result_new_from_error(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, GError* error);
	GSimpleAsyncResult* g_simple_async_result_new_take_error(GObject* sourceObject, GAsyncReadyCallback callback, void* userData, GError* error);
	int g_simple_async_result_is_valid(GAsyncResult* result, GObject* source, void* sourceTag);
	void g_simple_async_result_complete(GSimpleAsyncResult* simple);
	void g_simple_async_result_complete_in_idle(GSimpleAsyncResult* simple);
	int g_simple_async_result_get_op_res_gboolean(GSimpleAsyncResult* simple);
	void* g_simple_async_result_get_op_res_gpointer(GSimpleAsyncResult* simple);
	ptrdiff_t g_simple_async_result_get_op_res_gssize(GSimpleAsyncResult* simple);
	void* g_simple_async_result_get_source_tag(GSimpleAsyncResult* simple);
	int g_simple_async_result_propagate_error(GSimpleAsyncResult* simple, GError** err);
	void g_simple_async_result_run_in_thread(GSimpleAsyncResult* simple, GSimpleAsyncThreadFunc func, int ioPriority, GCancellable* cancellable);
	void g_simple_async_result_set_check_cancellable(GSimpleAsyncResult* simple, GCancellable* checkCancellable);
	void g_simple_async_result_set_error(GSimpleAsyncResult* simple, GQuark domain, int code, const(char)* format, ... );
	void g_simple_async_result_set_error_va(GSimpleAsyncResult* simple, GQuark domain, int code, const(char)* format, void* args);
	void g_simple_async_result_set_from_error(GSimpleAsyncResult* simple, GError* error);
	void g_simple_async_result_set_handle_cancellation(GSimpleAsyncResult* simple, int handleCancellation);
	void g_simple_async_result_set_op_res_gboolean(GSimpleAsyncResult* simple, int opRes);
	void g_simple_async_result_set_op_res_gpointer(GSimpleAsyncResult* simple, void* opRes, GDestroyNotify destroyOpRes);
	void g_simple_async_result_set_op_res_gssize(GSimpleAsyncResult* simple, ptrdiff_t opRes);
	void g_simple_async_result_take_error(GSimpleAsyncResult* simple, GError* error);
	void g_simple_async_report_error_in_idle(GObject* object, GAsyncReadyCallback callback, void* userData, GQuark domain, int code, const(char)* format, ... );
	void g_simple_async_report_gerror_in_idle(GObject* object, GAsyncReadyCallback callback, void* userData, GError* error);
	void g_simple_async_report_take_gerror_in_idle(GObject* object, GAsyncReadyCallback callback, void* userData, GError* error);

	// gio.SimpleIOStream

	GType g_simple_io_stream_get_type();
	GIOStream* g_simple_io_stream_new(GInputStream* inputStream, GOutputStream* outputStream);

	// gio.SimplePermission

	GType g_simple_permission_get_type();
	GPermission* g_simple_permission_new(int allowed);

	// gio.SimpleProxyResolver

	GType g_simple_proxy_resolver_get_type();
	GProxyResolver* g_simple_proxy_resolver_new(const(char)* defaultProxy, char** ignoreHosts);
	void g_simple_proxy_resolver_set_default_proxy(GSimpleProxyResolver* resolver, const(char)* defaultProxy);
	void g_simple_proxy_resolver_set_ignore_hosts(GSimpleProxyResolver* resolver, char** ignoreHosts);
	void g_simple_proxy_resolver_set_uri_proxy(GSimpleProxyResolver* resolver, const(char)* uriScheme, const(char)* proxy);

	// gio.Socket

	GType g_socket_get_type();
	GSocket* g_socket_new(GSocketFamily family, GSocketType type, GSocketProtocol protocol, GError** err);
	GSocket* g_socket_new_from_fd(int fd, GError** err);
	GSocket* g_socket_accept(GSocket* socket, GCancellable* cancellable, GError** err);
	int g_socket_bind(GSocket* socket, GSocketAddress* address, int allowReuse, GError** err);
	int g_socket_check_connect_result(GSocket* socket, GError** err);
	int g_socket_close(GSocket* socket, GError** err);
	GIOCondition g_socket_condition_check(GSocket* socket, GIOCondition condition);
	int g_socket_condition_timed_wait(GSocket* socket, GIOCondition condition, long timeoutUs, GCancellable* cancellable, GError** err);
	int g_socket_condition_wait(GSocket* socket, GIOCondition condition, GCancellable* cancellable, GError** err);
	int g_socket_connect(GSocket* socket, GSocketAddress* address, GCancellable* cancellable, GError** err);
	GSocketConnection* g_socket_connection_factory_create_connection(GSocket* socket);
	GSource* g_socket_create_source(GSocket* socket, GIOCondition condition, GCancellable* cancellable);
	ptrdiff_t g_socket_get_available_bytes(GSocket* socket);
	int g_socket_get_blocking(GSocket* socket);
	int g_socket_get_broadcast(GSocket* socket);
	GCredentials* g_socket_get_credentials(GSocket* socket, GError** err);
	GSocketFamily g_socket_get_family(GSocket* socket);
	int g_socket_get_fd(GSocket* socket);
	int g_socket_get_keepalive(GSocket* socket);
	int g_socket_get_listen_backlog(GSocket* socket);
	GSocketAddress* g_socket_get_local_address(GSocket* socket, GError** err);
	int g_socket_get_multicast_loopback(GSocket* socket);
	uint g_socket_get_multicast_ttl(GSocket* socket);
	int g_socket_get_option(GSocket* socket, int level, int optname, int* value, GError** err);
	GSocketProtocol g_socket_get_protocol(GSocket* socket);
	GSocketAddress* g_socket_get_remote_address(GSocket* socket, GError** err);
	GSocketType g_socket_get_socket_type(GSocket* socket);
	uint g_socket_get_timeout(GSocket* socket);
	uint g_socket_get_ttl(GSocket* socket);
	int g_socket_is_closed(GSocket* socket);
	int g_socket_is_connected(GSocket* socket);
	int g_socket_join_multicast_group(GSocket* socket, GInetAddress* group, int sourceSpecific, const(char)* iface, GError** err);
	int g_socket_join_multicast_group_ssm(GSocket* socket, GInetAddress* group, GInetAddress* sourceSpecific, const(char)* iface, GError** err);
	int g_socket_leave_multicast_group(GSocket* socket, GInetAddress* group, int sourceSpecific, const(char)* iface, GError** err);
	int g_socket_leave_multicast_group_ssm(GSocket* socket, GInetAddress* group, GInetAddress* sourceSpecific, const(char)* iface, GError** err);
	int g_socket_listen(GSocket* socket, GError** err);
	ptrdiff_t g_socket_receive(GSocket* socket, char* buffer, size_t size, GCancellable* cancellable, GError** err);
	ptrdiff_t g_socket_receive_from(GSocket* socket, GSocketAddress** address, char* buffer, size_t size, GCancellable* cancellable, GError** err);
	ptrdiff_t g_socket_receive_message(GSocket* socket, GSocketAddress** address, GInputVector* vectors, int numVectors, GSocketControlMessage*** messages, int* numMessages, int* flags, GCancellable* cancellable, GError** err);
	int g_socket_receive_messages(GSocket* socket, GInputMessage* messages, uint numMessages, int flags, GCancellable* cancellable, GError** err);
	ptrdiff_t g_socket_receive_with_blocking(GSocket* socket, char* buffer, size_t size, int blocking, GCancellable* cancellable, GError** err);
	ptrdiff_t g_socket_send(GSocket* socket, char* buffer, size_t size, GCancellable* cancellable, GError** err);
	ptrdiff_t g_socket_send_message(GSocket* socket, GSocketAddress* address, GOutputVector* vectors, int numVectors, GSocketControlMessage** messages, int numMessages, int flags, GCancellable* cancellable, GError** err);
	GPollableReturn g_socket_send_message_with_timeout(GSocket* socket, GSocketAddress* address, GOutputVector* vectors, int numVectors, GSocketControlMessage** messages, int numMessages, int flags, long timeoutUs, size_t* bytesWritten, GCancellable* cancellable, GError** err);
	int g_socket_send_messages(GSocket* socket, GOutputMessage* messages, uint numMessages, int flags, GCancellable* cancellable, GError** err);
	ptrdiff_t g_socket_send_to(GSocket* socket, GSocketAddress* address, char* buffer, size_t size, GCancellable* cancellable, GError** err);
	ptrdiff_t g_socket_send_with_blocking(GSocket* socket, char* buffer, size_t size, int blocking, GCancellable* cancellable, GError** err);
	void g_socket_set_blocking(GSocket* socket, int blocking);
	void g_socket_set_broadcast(GSocket* socket, int broadcast);
	void g_socket_set_keepalive(GSocket* socket, int keepalive);
	void g_socket_set_listen_backlog(GSocket* socket, int backlog);
	void g_socket_set_multicast_loopback(GSocket* socket, int loopback);
	void g_socket_set_multicast_ttl(GSocket* socket, uint ttl);
	int g_socket_set_option(GSocket* socket, int level, int optname, int value, GError** err);
	void g_socket_set_timeout(GSocket* socket, uint timeout);
	void g_socket_set_ttl(GSocket* socket, uint ttl);
	int g_socket_shutdown(GSocket* socket, int shutdownRead, int shutdownWrite, GError** err);
	int g_socket_speaks_ipv4(GSocket* socket);

	// gio.SocketAddress

	GType g_socket_address_get_type();
	GSocketAddress* g_socket_address_new_from_native(void* native, size_t len);
	GSocketFamily g_socket_address_get_family(GSocketAddress* address);
	ptrdiff_t g_socket_address_get_native_size(GSocketAddress* address);
	int g_socket_address_to_native(GSocketAddress* address, void* dest, size_t destlen, GError** err);

	// gio.SocketAddressEnumerator

	GType g_socket_address_enumerator_get_type();
	GSocketAddress* g_socket_address_enumerator_next(GSocketAddressEnumerator* enumerator, GCancellable* cancellable, GError** err);
	void g_socket_address_enumerator_next_async(GSocketAddressEnumerator* enumerator, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GSocketAddress* g_socket_address_enumerator_next_finish(GSocketAddressEnumerator* enumerator, GAsyncResult* result, GError** err);

	// gio.SocketClient

	GType g_socket_client_get_type();
	GSocketClient* g_socket_client_new();
	void g_socket_client_add_application_proxy(GSocketClient* client, const(char)* protocol);
	GSocketConnection* g_socket_client_connect(GSocketClient* client, GSocketConnectable* connectable, GCancellable* cancellable, GError** err);
	void g_socket_client_connect_async(GSocketClient* client, GSocketConnectable* connectable, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GSocketConnection* g_socket_client_connect_finish(GSocketClient* client, GAsyncResult* result, GError** err);
	GSocketConnection* g_socket_client_connect_to_host(GSocketClient* client, const(char)* hostAndPort, ushort defaultPort, GCancellable* cancellable, GError** err);
	void g_socket_client_connect_to_host_async(GSocketClient* client, const(char)* hostAndPort, ushort defaultPort, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GSocketConnection* g_socket_client_connect_to_host_finish(GSocketClient* client, GAsyncResult* result, GError** err);
	GSocketConnection* g_socket_client_connect_to_service(GSocketClient* client, const(char)* domain, const(char)* service, GCancellable* cancellable, GError** err);
	void g_socket_client_connect_to_service_async(GSocketClient* client, const(char)* domain, const(char)* service, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GSocketConnection* g_socket_client_connect_to_service_finish(GSocketClient* client, GAsyncResult* result, GError** err);
	GSocketConnection* g_socket_client_connect_to_uri(GSocketClient* client, const(char)* uri, ushort defaultPort, GCancellable* cancellable, GError** err);
	void g_socket_client_connect_to_uri_async(GSocketClient* client, const(char)* uri, ushort defaultPort, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GSocketConnection* g_socket_client_connect_to_uri_finish(GSocketClient* client, GAsyncResult* result, GError** err);
	int g_socket_client_get_enable_proxy(GSocketClient* client);
	GSocketFamily g_socket_client_get_family(GSocketClient* client);
	GSocketAddress* g_socket_client_get_local_address(GSocketClient* client);
	GSocketProtocol g_socket_client_get_protocol(GSocketClient* client);
	GProxyResolver* g_socket_client_get_proxy_resolver(GSocketClient* client);
	GSocketType g_socket_client_get_socket_type(GSocketClient* client);
	uint g_socket_client_get_timeout(GSocketClient* client);
	int g_socket_client_get_tls(GSocketClient* client);
	GTlsCertificateFlags g_socket_client_get_tls_validation_flags(GSocketClient* client);
	void g_socket_client_set_enable_proxy(GSocketClient* client, int enable);
	void g_socket_client_set_family(GSocketClient* client, GSocketFamily family);
	void g_socket_client_set_local_address(GSocketClient* client, GSocketAddress* address);
	void g_socket_client_set_protocol(GSocketClient* client, GSocketProtocol protocol);
	void g_socket_client_set_proxy_resolver(GSocketClient* client, GProxyResolver* proxyResolver);
	void g_socket_client_set_socket_type(GSocketClient* client, GSocketType type);
	void g_socket_client_set_timeout(GSocketClient* client, uint timeout);
	void g_socket_client_set_tls(GSocketClient* client, int tls);
	void g_socket_client_set_tls_validation_flags(GSocketClient* client, GTlsCertificateFlags flags);

	// gio.SocketConnectable

	GType g_socket_connectable_get_type();
	GSocketAddressEnumerator* g_socket_connectable_enumerate(GSocketConnectable* connectable);
	GSocketAddressEnumerator* g_socket_connectable_proxy_enumerate(GSocketConnectable* connectable);
	char* g_socket_connectable_to_string(GSocketConnectable* connectable);

	// gio.SocketConnection

	GType g_socket_connection_get_type();
	GType g_socket_connection_factory_lookup_type(GSocketFamily family, GSocketType type, int protocolId);
	void g_socket_connection_factory_register_type(GType gType, GSocketFamily family, GSocketType type, int protocol);
	int g_socket_connection_connect(GSocketConnection* connection, GSocketAddress* address, GCancellable* cancellable, GError** err);
	void g_socket_connection_connect_async(GSocketConnection* connection, GSocketAddress* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_socket_connection_connect_finish(GSocketConnection* connection, GAsyncResult* result, GError** err);
	GSocketAddress* g_socket_connection_get_local_address(GSocketConnection* connection, GError** err);
	GSocketAddress* g_socket_connection_get_remote_address(GSocketConnection* connection, GError** err);
	GSocket* g_socket_connection_get_socket(GSocketConnection* connection);
	int g_socket_connection_is_connected(GSocketConnection* connection);

	// gio.SocketControlMessage

	GType g_socket_control_message_get_type();
	GSocketControlMessage* g_socket_control_message_deserialize(int level, int type, size_t size, void* data);
	int g_socket_control_message_get_level(GSocketControlMessage* message);
	int g_socket_control_message_get_msg_type(GSocketControlMessage* message);
	size_t g_socket_control_message_get_size(GSocketControlMessage* message);
	void g_socket_control_message_serialize(GSocketControlMessage* message, void* data);

	// gio.SocketListener

	GType g_socket_listener_get_type();
	GSocketListener* g_socket_listener_new();
	GSocketConnection* g_socket_listener_accept(GSocketListener* listener, GObject** sourceObject, GCancellable* cancellable, GError** err);
	void g_socket_listener_accept_async(GSocketListener* listener, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GSocketConnection* g_socket_listener_accept_finish(GSocketListener* listener, GAsyncResult* result, GObject** sourceObject, GError** err);
	GSocket* g_socket_listener_accept_socket(GSocketListener* listener, GObject** sourceObject, GCancellable* cancellable, GError** err);
	void g_socket_listener_accept_socket_async(GSocketListener* listener, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GSocket* g_socket_listener_accept_socket_finish(GSocketListener* listener, GAsyncResult* result, GObject** sourceObject, GError** err);
	int g_socket_listener_add_address(GSocketListener* listener, GSocketAddress* address, GSocketType type, GSocketProtocol protocol, GObject* sourceObject, GSocketAddress** effectiveAddress, GError** err);
	ushort g_socket_listener_add_any_inet_port(GSocketListener* listener, GObject* sourceObject, GError** err);
	int g_socket_listener_add_inet_port(GSocketListener* listener, ushort port, GObject* sourceObject, GError** err);
	int g_socket_listener_add_socket(GSocketListener* listener, GSocket* socket, GObject* sourceObject, GError** err);
	void g_socket_listener_close(GSocketListener* listener);
	void g_socket_listener_set_backlog(GSocketListener* listener, int listenBacklog);

	// gio.SocketService

	GType g_socket_service_get_type();
	GSocketService* g_socket_service_new();
	int g_socket_service_is_active(GSocketService* service);
	void g_socket_service_start(GSocketService* service);
	void g_socket_service_stop(GSocketService* service);

	// gio.SrvTarget

	GType g_srv_target_get_type();
	GSrvTarget* g_srv_target_new(const(char)* hostname, ushort port, ushort priority, ushort weight);
	GSrvTarget* g_srv_target_copy(GSrvTarget* target);
	void g_srv_target_free(GSrvTarget* target);
	const(char)* g_srv_target_get_hostname(GSrvTarget* target);
	ushort g_srv_target_get_port(GSrvTarget* target);
	ushort g_srv_target_get_priority(GSrvTarget* target);
	ushort g_srv_target_get_weight(GSrvTarget* target);
	GList* g_srv_target_list_sort(GList* targets);

	// gio.StaticResource

	void g_static_resource_fini(GStaticResource* staticResource);
	GResource* g_static_resource_get_resource(GStaticResource* staticResource);
	void g_static_resource_init(GStaticResource* staticResource);

	// gio.Subprocess

	GType g_subprocess_get_type();
	GSubprocess* g_subprocess_new(GSubprocessFlags flags, GError** error, const(char)* argv0, ... );
	GSubprocess* g_subprocess_newv(char** argv, GSubprocessFlags flags, GError** err);
	int g_subprocess_communicate(GSubprocess* subprocess, GBytes* stdinBuf, GCancellable* cancellable, GBytes** stdoutBuf, GBytes** stderrBuf, GError** err);
	void g_subprocess_communicate_async(GSubprocess* subprocess, GBytes* stdinBuf, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_subprocess_communicate_finish(GSubprocess* subprocess, GAsyncResult* result, GBytes** stdoutBuf, GBytes** stderrBuf, GError** err);
	int g_subprocess_communicate_utf8(GSubprocess* subprocess, const(char)* stdinBuf, GCancellable* cancellable, char** stdoutBuf, char** stderrBuf, GError** err);
	void g_subprocess_communicate_utf8_async(GSubprocess* subprocess, const(char)* stdinBuf, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_subprocess_communicate_utf8_finish(GSubprocess* subprocess, GAsyncResult* result, char** stdoutBuf, char** stderrBuf, GError** err);
	void g_subprocess_force_exit(GSubprocess* subprocess);
	int g_subprocess_get_exit_status(GSubprocess* subprocess);
	const(char)* g_subprocess_get_identifier(GSubprocess* subprocess);
	int g_subprocess_get_if_exited(GSubprocess* subprocess);
	int g_subprocess_get_if_signaled(GSubprocess* subprocess);
	int g_subprocess_get_status(GSubprocess* subprocess);
	GInputStream* g_subprocess_get_stderr_pipe(GSubprocess* subprocess);
	GOutputStream* g_subprocess_get_stdin_pipe(GSubprocess* subprocess);
	GInputStream* g_subprocess_get_stdout_pipe(GSubprocess* subprocess);
	int g_subprocess_get_successful(GSubprocess* subprocess);
	int g_subprocess_get_term_sig(GSubprocess* subprocess);
	void g_subprocess_send_signal(GSubprocess* subprocess, int signalNum);
	int g_subprocess_wait(GSubprocess* subprocess, GCancellable* cancellable, GError** err);
	void g_subprocess_wait_async(GSubprocess* subprocess, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_subprocess_wait_check(GSubprocess* subprocess, GCancellable* cancellable, GError** err);
	void g_subprocess_wait_check_async(GSubprocess* subprocess, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_subprocess_wait_check_finish(GSubprocess* subprocess, GAsyncResult* result, GError** err);
	int g_subprocess_wait_finish(GSubprocess* subprocess, GAsyncResult* result, GError** err);

	// gio.SubprocessLauncher

	GType g_subprocess_launcher_get_type();
	GSubprocessLauncher* g_subprocess_launcher_new(GSubprocessFlags flags);
	void g_subprocess_launcher_close(GSubprocessLauncher* self);
	char* g_subprocess_launcher_getenv(GSubprocessLauncher* self, char* variable);
	void g_subprocess_launcher_set_child_setup(GSubprocessLauncher* self, GSpawnChildSetupFunc childSetup, void* userData, GDestroyNotify destroyNotify);
	void g_subprocess_launcher_set_cwd(GSubprocessLauncher* self, char* cwd);
	void g_subprocess_launcher_set_environ(GSubprocessLauncher* self, char** env);
	void g_subprocess_launcher_set_flags(GSubprocessLauncher* self, GSubprocessFlags flags);
	void g_subprocess_launcher_set_stderr_file_path(GSubprocessLauncher* self, char* path);
	void g_subprocess_launcher_set_stdin_file_path(GSubprocessLauncher* self, const(char)* path);
	void g_subprocess_launcher_set_stdout_file_path(GSubprocessLauncher* self, char* path);
	void g_subprocess_launcher_setenv(GSubprocessLauncher* self, char* variable, char* value, int overwrite);
	GSubprocess* g_subprocess_launcher_spawn(GSubprocessLauncher* self, GError** error, const(char)* argv0, ... );
	GSubprocess* g_subprocess_launcher_spawnv(GSubprocessLauncher* self, char** argv, GError** err);
	void g_subprocess_launcher_take_fd(GSubprocessLauncher* self, int sourceFd, int targetFd);
	void g_subprocess_launcher_take_stderr_fd(GSubprocessLauncher* self, int fd);
	void g_subprocess_launcher_take_stdin_fd(GSubprocessLauncher* self, int fd);
	void g_subprocess_launcher_take_stdout_fd(GSubprocessLauncher* self, int fd);
	void g_subprocess_launcher_unsetenv(GSubprocessLauncher* self, char* variable);

	// gio.Task

	GType g_task_get_type();
	GTask* g_task_new(void* sourceObject, GCancellable* cancellable, GAsyncReadyCallback callback, void* callbackData);
	int g_task_is_valid(void* result, void* sourceObject);
	void g_task_report_error(void* sourceObject, GAsyncReadyCallback callback, void* callbackData, void* sourceTag, GError* error);
	void g_task_report_new_error(void* sourceObject, GAsyncReadyCallback callback, void* callbackData, void* sourceTag, GQuark domain, int code, const(char)* format, ... );
	void g_task_attach_source(GTask* task, GSource* source, GSourceFunc callback);
	GCancellable* g_task_get_cancellable(GTask* task);
	int g_task_get_check_cancellable(GTask* task);
	int g_task_get_completed(GTask* task);
	GMainContext* g_task_get_context(GTask* task);
	const(char)* g_task_get_name(GTask* task);
	int g_task_get_priority(GTask* task);
	int g_task_get_return_on_cancel(GTask* task);
	void* g_task_get_source_object(GTask* task);
	void* g_task_get_source_tag(GTask* task);
	void* g_task_get_task_data(GTask* task);
	int g_task_had_error(GTask* task);
	int g_task_propagate_boolean(GTask* task, GError** err);
	ptrdiff_t g_task_propagate_int(GTask* task, GError** err);
	void* g_task_propagate_pointer(GTask* task, GError** err);
	int g_task_propagate_value(GTask* task, GValue* value, GError** err);
	void g_task_return_boolean(GTask* task, int result);
	void g_task_return_error(GTask* task, GError* error);
	int g_task_return_error_if_cancelled(GTask* task);
	void g_task_return_int(GTask* task, ptrdiff_t result);
	void g_task_return_new_error(GTask* task, GQuark domain, int code, const(char)* format, ... );
	void g_task_return_pointer(GTask* task, void* result, GDestroyNotify resultDestroy);
	void g_task_return_value(GTask* task, GValue* result);
	void g_task_run_in_thread(GTask* task, GTaskThreadFunc taskFunc);
	void g_task_run_in_thread_sync(GTask* task, GTaskThreadFunc taskFunc);
	void g_task_set_check_cancellable(GTask* task, int checkCancellable);
	void g_task_set_name(GTask* task, const(char)* name);
	void g_task_set_priority(GTask* task, int priority);
	int g_task_set_return_on_cancel(GTask* task, int returnOnCancel);
	void g_task_set_source_tag(GTask* task, void* sourceTag);
	void g_task_set_task_data(GTask* task, void* taskData, GDestroyNotify taskDataDestroy);

	// gio.TcpConnection

	GType g_tcp_connection_get_type();
	int g_tcp_connection_get_graceful_disconnect(GTcpConnection* connection);
	void g_tcp_connection_set_graceful_disconnect(GTcpConnection* connection, int gracefulDisconnect);

	// gio.TcpWrapperConnection

	GType g_tcp_wrapper_connection_get_type();
	GSocketConnection* g_tcp_wrapper_connection_new(GIOStream* baseIoStream, GSocket* socket);
	GIOStream* g_tcp_wrapper_connection_get_base_io_stream(GTcpWrapperConnection* conn);

	// gio.TestDBus

	GType g_test_dbus_get_type();
	GTestDBus* g_test_dbus_new(GTestDBusFlags flags);
	void g_test_dbus_unset();
	void g_test_dbus_add_service_dir(GTestDBus* self, const(char)* path);
	void g_test_dbus_down(GTestDBus* self);
	const(char)* g_test_dbus_get_bus_address(GTestDBus* self);
	GTestDBusFlags g_test_dbus_get_flags(GTestDBus* self);
	void g_test_dbus_stop(GTestDBus* self);
	void g_test_dbus_up(GTestDBus* self);

	// gio.ThemedIcon

	GType g_themed_icon_get_type();
	GIcon* g_themed_icon_new(const(char)* iconname);
	GIcon* g_themed_icon_new_from_names(char** iconnames, int len);
	GIcon* g_themed_icon_new_with_default_fallbacks(const(char)* iconname);
	void g_themed_icon_append_name(GThemedIcon* icon, const(char)* iconname);
	char** g_themed_icon_get_names(GThemedIcon* icon);
	void g_themed_icon_prepend_name(GThemedIcon* icon, const(char)* iconname);

	// gio.ThreadedSocketService

	GType g_threaded_socket_service_get_type();
	GSocketService* g_threaded_socket_service_new(int maxThreads);

	// gio.TlsBackend

	GType g_tls_backend_get_type();
	GTlsBackend* g_tls_backend_get_default();
	GType g_tls_backend_get_certificate_type(GTlsBackend* backend);
	GType g_tls_backend_get_client_connection_type(GTlsBackend* backend);
	GTlsDatabase* g_tls_backend_get_default_database(GTlsBackend* backend);
	GType g_tls_backend_get_dtls_client_connection_type(GTlsBackend* backend);
	GType g_tls_backend_get_dtls_server_connection_type(GTlsBackend* backend);
	GType g_tls_backend_get_file_database_type(GTlsBackend* backend);
	GType g_tls_backend_get_server_connection_type(GTlsBackend* backend);
	void g_tls_backend_set_default_database(GTlsBackend* backend, GTlsDatabase* database);
	int g_tls_backend_supports_dtls(GTlsBackend* backend);
	int g_tls_backend_supports_tls(GTlsBackend* backend);

	// gio.TlsCertificate

	GType g_tls_certificate_get_type();
	GTlsCertificate* g_tls_certificate_new_from_file(char* file, GError** err);
	GTlsCertificate* g_tls_certificate_new_from_files(char* certFile, char* keyFile, GError** err);
	GTlsCertificate* g_tls_certificate_new_from_pem(const(char)* data, ptrdiff_t length, GError** err);
	GTlsCertificate* g_tls_certificate_new_from_pkcs11_uris(const(char)* pkcs11Uri, const(char)* privateKeyPkcs11Uri, GError** err);
	GList* g_tls_certificate_list_new_from_file(char* file, GError** err);
	GTlsCertificate* g_tls_certificate_get_issuer(GTlsCertificate* cert);
	int g_tls_certificate_is_same(GTlsCertificate* certOne, GTlsCertificate* certTwo);
	GTlsCertificateFlags g_tls_certificate_verify(GTlsCertificate* cert, GSocketConnectable* identity, GTlsCertificate* trustedCa);

	// gio.TlsClientConnection

	GType g_tls_client_connection_get_type();
	GIOStream* g_tls_client_connection_new(GIOStream* baseIoStream, GSocketConnectable* serverIdentity, GError** err);
	void g_tls_client_connection_copy_session_state(GTlsClientConnection* conn, GTlsClientConnection* source);
	GList* g_tls_client_connection_get_accepted_cas(GTlsClientConnection* conn);
	GSocketConnectable* g_tls_client_connection_get_server_identity(GTlsClientConnection* conn);
	int g_tls_client_connection_get_use_ssl3(GTlsClientConnection* conn);
	GTlsCertificateFlags g_tls_client_connection_get_validation_flags(GTlsClientConnection* conn);
	void g_tls_client_connection_set_server_identity(GTlsClientConnection* conn, GSocketConnectable* identity);
	void g_tls_client_connection_set_use_ssl3(GTlsClientConnection* conn, int useSsl3);
	void g_tls_client_connection_set_validation_flags(GTlsClientConnection* conn, GTlsCertificateFlags flags);

	// gio.TlsConnection

	GType g_tls_connection_get_type();
	int g_tls_connection_emit_accept_certificate(GTlsConnection* conn, GTlsCertificate* peerCert, GTlsCertificateFlags errors);
	GTlsCertificate* g_tls_connection_get_certificate(GTlsConnection* conn);
	int g_tls_connection_get_channel_binding_data(GTlsConnection* conn, GTlsChannelBindingType type, GByteArray* data, GError** err);
	GTlsDatabase* g_tls_connection_get_database(GTlsConnection* conn);
	GTlsInteraction* g_tls_connection_get_interaction(GTlsConnection* conn);
	const(char)* g_tls_connection_get_negotiated_protocol(GTlsConnection* conn);
	GTlsCertificate* g_tls_connection_get_peer_certificate(GTlsConnection* conn);
	GTlsCertificateFlags g_tls_connection_get_peer_certificate_errors(GTlsConnection* conn);
	GTlsRehandshakeMode g_tls_connection_get_rehandshake_mode(GTlsConnection* conn);
	int g_tls_connection_get_require_close_notify(GTlsConnection* conn);
	int g_tls_connection_get_use_system_certdb(GTlsConnection* conn);
	int g_tls_connection_handshake(GTlsConnection* conn, GCancellable* cancellable, GError** err);
	void g_tls_connection_handshake_async(GTlsConnection* conn, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_tls_connection_handshake_finish(GTlsConnection* conn, GAsyncResult* result, GError** err);
	void g_tls_connection_set_advertised_protocols(GTlsConnection* conn, char** protocols);
	void g_tls_connection_set_certificate(GTlsConnection* conn, GTlsCertificate* certificate);
	void g_tls_connection_set_database(GTlsConnection* conn, GTlsDatabase* database);
	void g_tls_connection_set_interaction(GTlsConnection* conn, GTlsInteraction* interaction);
	void g_tls_connection_set_rehandshake_mode(GTlsConnection* conn, GTlsRehandshakeMode mode);
	void g_tls_connection_set_require_close_notify(GTlsConnection* conn, int requireCloseNotify);
	void g_tls_connection_set_use_system_certdb(GTlsConnection* conn, int useSystemCertdb);

	// gio.TlsDatabase

	GType g_tls_database_get_type();
	char* g_tls_database_create_certificate_handle(GTlsDatabase* self, GTlsCertificate* certificate);
	GTlsCertificate* g_tls_database_lookup_certificate_for_handle(GTlsDatabase* self, const(char)* handle, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** err);
	void g_tls_database_lookup_certificate_for_handle_async(GTlsDatabase* self, const(char)* handle, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GTlsCertificate* g_tls_database_lookup_certificate_for_handle_finish(GTlsDatabase* self, GAsyncResult* result, GError** err);
	GTlsCertificate* g_tls_database_lookup_certificate_issuer(GTlsDatabase* self, GTlsCertificate* certificate, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** err);
	void g_tls_database_lookup_certificate_issuer_async(GTlsDatabase* self, GTlsCertificate* certificate, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GTlsCertificate* g_tls_database_lookup_certificate_issuer_finish(GTlsDatabase* self, GAsyncResult* result, GError** err);
	GList* g_tls_database_lookup_certificates_issued_by(GTlsDatabase* self, GByteArray* issuerRawDn, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** err);
	void g_tls_database_lookup_certificates_issued_by_async(GTlsDatabase* self, GByteArray* issuerRawDn, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* g_tls_database_lookup_certificates_issued_by_finish(GTlsDatabase* self, GAsyncResult* result, GError** err);
	GTlsCertificateFlags g_tls_database_verify_chain(GTlsDatabase* self, GTlsCertificate* chain, const(char)* purpose, GSocketConnectable* identity, GTlsInteraction* interaction, GTlsDatabaseVerifyFlags flags, GCancellable* cancellable, GError** err);
	void g_tls_database_verify_chain_async(GTlsDatabase* self, GTlsCertificate* chain, const(char)* purpose, GSocketConnectable* identity, GTlsInteraction* interaction, GTlsDatabaseVerifyFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GTlsCertificateFlags g_tls_database_verify_chain_finish(GTlsDatabase* self, GAsyncResult* result, GError** err);

	// gio.TlsFileDatabase

	GType g_tls_file_database_get_type();
	GTlsDatabase* g_tls_file_database_new(char* anchors, GError** err);

	// gio.TlsInteraction

	GType g_tls_interaction_get_type();
	GTlsInteractionResult g_tls_interaction_ask_password(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GError** err);
	void g_tls_interaction_ask_password_async(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GTlsInteractionResult g_tls_interaction_ask_password_finish(GTlsInteraction* interaction, GAsyncResult* result, GError** err);
	GTlsInteractionResult g_tls_interaction_invoke_ask_password(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GError** err);
	GTlsInteractionResult g_tls_interaction_invoke_request_certificate(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable, GError** err);
	GTlsInteractionResult g_tls_interaction_request_certificate(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable, GError** err);
	void g_tls_interaction_request_certificate_async(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GTlsInteractionResult g_tls_interaction_request_certificate_finish(GTlsInteraction* interaction, GAsyncResult* result, GError** err);

	// gio.TlsPassword

	GType g_tls_password_get_type();
	GTlsPassword* g_tls_password_new(GTlsPasswordFlags flags, const(char)* description);
	const(char)* g_tls_password_get_description(GTlsPassword* password);
	GTlsPasswordFlags g_tls_password_get_flags(GTlsPassword* password);
	char* g_tls_password_get_value(GTlsPassword* password, size_t* length);
	const(char)* g_tls_password_get_warning(GTlsPassword* password);
	void g_tls_password_set_description(GTlsPassword* password, const(char)* description);
	void g_tls_password_set_flags(GTlsPassword* password, GTlsPasswordFlags flags);
	void g_tls_password_set_value(GTlsPassword* password, char* value, ptrdiff_t length);
	void g_tls_password_set_value_full(GTlsPassword* password, char* value, ptrdiff_t length, GDestroyNotify destroy);
	void g_tls_password_set_warning(GTlsPassword* password, const(char)* warning);

	// gio.TlsServerConnection

	GType g_tls_server_connection_get_type();
	GIOStream* g_tls_server_connection_new(GIOStream* baseIoStream, GTlsCertificate* certificate, GError** err);

	// gio.UnixConnection

	GType g_unix_connection_get_type();
	GCredentials* g_unix_connection_receive_credentials(GUnixConnection* connection, GCancellable* cancellable, GError** err);
	void g_unix_connection_receive_credentials_async(GUnixConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GCredentials* g_unix_connection_receive_credentials_finish(GUnixConnection* connection, GAsyncResult* result, GError** err);
	int g_unix_connection_receive_fd(GUnixConnection* connection, GCancellable* cancellable, GError** err);
	int g_unix_connection_send_credentials(GUnixConnection* connection, GCancellable* cancellable, GError** err);
	void g_unix_connection_send_credentials_async(GUnixConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_unix_connection_send_credentials_finish(GUnixConnection* connection, GAsyncResult* result, GError** err);
	int g_unix_connection_send_fd(GUnixConnection* connection, int fd, GCancellable* cancellable, GError** err);

	// gio.UnixCredentialsMessage

	GType g_unix_credentials_message_get_type();
	GSocketControlMessage* g_unix_credentials_message_new();
	GSocketControlMessage* g_unix_credentials_message_new_with_credentials(GCredentials* credentials);
	int g_unix_credentials_message_is_supported();
	GCredentials* g_unix_credentials_message_get_credentials(GUnixCredentialsMessage* message);

	// gio.UnixFDList

	GType g_unix_fd_list_get_type();
	GUnixFDList* g_unix_fd_list_new();
	GUnixFDList* g_unix_fd_list_new_from_array(int* fds, int nFds);
	int g_unix_fd_list_append(GUnixFDList* list, int fd, GError** err);
	int g_unix_fd_list_get(GUnixFDList* list, int index, GError** err);
	int g_unix_fd_list_get_length(GUnixFDList* list);
	int* g_unix_fd_list_peek_fds(GUnixFDList* list, int* length);
	int* g_unix_fd_list_steal_fds(GUnixFDList* list, int* length);

	// gio.UnixFDMessage

	GType g_unix_fd_message_get_type();
	GSocketControlMessage* g_unix_fd_message_new();
	GSocketControlMessage* g_unix_fd_message_new_with_fd_list(GUnixFDList* fdList);
	int g_unix_fd_message_append_fd(GUnixFDMessage* message, int fd, GError** err);
	GUnixFDList* g_unix_fd_message_get_fd_list(GUnixFDMessage* message);
	int* g_unix_fd_message_steal_fds(GUnixFDMessage* message, int* length);

	// gio.UnixInputStream

	GType g_unix_input_stream_get_type();
	GInputStream* g_unix_input_stream_new(int fd, int closeFd);
	int g_unix_input_stream_get_close_fd(GUnixInputStream* stream);
	int g_unix_input_stream_get_fd(GUnixInputStream* stream);
	void g_unix_input_stream_set_close_fd(GUnixInputStream* stream, int closeFd);

	// gio.UnixMountEntry

	GType g_unix_mount_entry_get_type();
	int g_unix_is_mount_path_system_internal(char* mountPath);
	GUnixMountEntry* g_unix_mount_at(char* mountPath, ulong* timeRead);
	int g_unix_mount_compare(GUnixMountEntry* mount1, GUnixMountEntry* mount2);
	void g_unix_mount_free(GUnixMountEntry* mountEntry);
	char* g_unix_mount_get_device_path(GUnixMountEntry* mountEntry);
	const(char)* g_unix_mount_get_fs_type(GUnixMountEntry* mountEntry);
	char* g_unix_mount_get_mount_path(GUnixMountEntry* mountEntry);
	int g_unix_mount_guess_can_eject(GUnixMountEntry* mountEntry);
	GIcon* g_unix_mount_guess_icon(GUnixMountEntry* mountEntry);
	char* g_unix_mount_guess_name(GUnixMountEntry* mountEntry);
	int g_unix_mount_guess_should_display(GUnixMountEntry* mountEntry);
	GIcon* g_unix_mount_guess_symbolic_icon(GUnixMountEntry* mountEntry);
	int g_unix_mount_is_readonly(GUnixMountEntry* mountEntry);
	int g_unix_mount_is_system_internal(GUnixMountEntry* mountEntry);
	int g_unix_mount_points_changed_since(ulong time);
	GList* g_unix_mount_points_get(ulong* timeRead);
	int g_unix_mounts_changed_since(ulong time);
	GList* g_unix_mounts_get(ulong* timeRead);
	GUnixMountEntry* g_unix_mount_copy(GUnixMountEntry* mountEntry);
	GUnixMountEntry* g_unix_mount_for(char* filePath, ulong* timeRead);
	const(char)* g_unix_mount_get_options(GUnixMountEntry* mountEntry);
	const(char)* g_unix_mount_get_root_path(GUnixMountEntry* mountEntry);

	// gio.UnixMountMonitor

	GType g_unix_mount_monitor_get_type();
	GUnixMountMonitor* g_unix_mount_monitor_new();
	GUnixMountMonitor* g_unix_mount_monitor_get();
	void g_unix_mount_monitor_set_rate_limit(GUnixMountMonitor* mountMonitor, int limitMsec);

	// gio.UnixMountPoint

	GType g_unix_mount_point_get_type();
	int g_unix_mount_point_compare(GUnixMountPoint* mount1, GUnixMountPoint* mount2);
	GUnixMountPoint* g_unix_mount_point_copy(GUnixMountPoint* mountPoint);
	void g_unix_mount_point_free(GUnixMountPoint* mountPoint);
	char* g_unix_mount_point_get_device_path(GUnixMountPoint* mountPoint);
	const(char)* g_unix_mount_point_get_fs_type(GUnixMountPoint* mountPoint);
	char* g_unix_mount_point_get_mount_path(GUnixMountPoint* mountPoint);
	const(char)* g_unix_mount_point_get_options(GUnixMountPoint* mountPoint);
	int g_unix_mount_point_guess_can_eject(GUnixMountPoint* mountPoint);
	GIcon* g_unix_mount_point_guess_icon(GUnixMountPoint* mountPoint);
	char* g_unix_mount_point_guess_name(GUnixMountPoint* mountPoint);
	GIcon* g_unix_mount_point_guess_symbolic_icon(GUnixMountPoint* mountPoint);
	int g_unix_mount_point_is_loopback(GUnixMountPoint* mountPoint);
	int g_unix_mount_point_is_readonly(GUnixMountPoint* mountPoint);
	int g_unix_mount_point_is_user_mountable(GUnixMountPoint* mountPoint);
	GUnixMountPoint* g_unix_mount_point_at(char* mountPath, ulong* timeRead);

	// gio.UnixOutputStream

	GType g_unix_output_stream_get_type();
	GOutputStream* g_unix_output_stream_new(int fd, int closeFd);
	int g_unix_output_stream_get_close_fd(GUnixOutputStream* stream);
	int g_unix_output_stream_get_fd(GUnixOutputStream* stream);
	void g_unix_output_stream_set_close_fd(GUnixOutputStream* stream, int closeFd);

	// gio.UnixSocketAddress

	GType g_unix_socket_address_get_type();
	GSocketAddress* g_unix_socket_address_new(const(char)* path);
	GSocketAddress* g_unix_socket_address_new_abstract(char* path, int pathLen);
	GSocketAddress* g_unix_socket_address_new_with_type(char* path, int pathLen, GUnixSocketAddressType type);
	int g_unix_socket_address_abstract_names_supported();
	GUnixSocketAddressType g_unix_socket_address_get_address_type(GUnixSocketAddress* address);
	int g_unix_socket_address_get_is_abstract(GUnixSocketAddress* address);
	const(char)* g_unix_socket_address_get_path(GUnixSocketAddress* address);
	size_t g_unix_socket_address_get_path_len(GUnixSocketAddress* address);

	// gio.Vfs

	GType g_vfs_get_type();
	GVfs* g_vfs_get_default();
	GVfs* g_vfs_get_local();
	GFile* g_vfs_get_file_for_path(GVfs* vfs, const(char)* path);
	GFile* g_vfs_get_file_for_uri(GVfs* vfs, const(char)* uri);
	char** g_vfs_get_supported_uri_schemes(GVfs* vfs);
	int g_vfs_is_active(GVfs* vfs);
	GFile* g_vfs_parse_name(GVfs* vfs, const(char)* parseName);
	int g_vfs_register_uri_scheme(GVfs* vfs, const(char)* scheme, GVfsFileLookupFunc uriFunc, void* uriData, GDestroyNotify uriDestroy, GVfsFileLookupFunc parseNameFunc, void* parseNameData, GDestroyNotify parseNameDestroy);
	int g_vfs_unregister_uri_scheme(GVfs* vfs, const(char)* scheme);

	// gio.Volume

	GType g_volume_get_type();
	int g_volume_can_eject(GVolume* volume);
	int g_volume_can_mount(GVolume* volume);
	void g_volume_eject(GVolume* volume, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_volume_eject_finish(GVolume* volume, GAsyncResult* result, GError** err);
	void g_volume_eject_with_operation(GVolume* volume, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_volume_eject_with_operation_finish(GVolume* volume, GAsyncResult* result, GError** err);
	char** g_volume_enumerate_identifiers(GVolume* volume);
	GFile* g_volume_get_activation_root(GVolume* volume);
	GDrive* g_volume_get_drive(GVolume* volume);
	GIcon* g_volume_get_icon(GVolume* volume);
	char* g_volume_get_identifier(GVolume* volume, const(char)* kind);
	GMount* g_volume_get_mount(GVolume* volume);
	char* g_volume_get_name(GVolume* volume);
	const(char)* g_volume_get_sort_key(GVolume* volume);
	GIcon* g_volume_get_symbolic_icon(GVolume* volume);
	char* g_volume_get_uuid(GVolume* volume);
	void g_volume_mount(GVolume* volume, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int g_volume_mount_finish(GVolume* volume, GAsyncResult* result, GError** err);
	int g_volume_should_automount(GVolume* volume);

	// gio.VolumeMonitor

	GType g_volume_monitor_get_type();
	GVolume* g_volume_monitor_adopt_orphan_mount(GMount* mount);
	GVolumeMonitor* g_volume_monitor_get();
	GList* g_volume_monitor_get_connected_drives(GVolumeMonitor* volumeMonitor);
	GMount* g_volume_monitor_get_mount_for_uuid(GVolumeMonitor* volumeMonitor, const(char)* uuid);
	GList* g_volume_monitor_get_mounts(GVolumeMonitor* volumeMonitor);
	GVolume* g_volume_monitor_get_volume_for_uuid(GVolumeMonitor* volumeMonitor, const(char)* uuid);
	GList* g_volume_monitor_get_volumes(GVolumeMonitor* volumeMonitor);

	// gio.ZlibCompressor

	GType g_zlib_compressor_get_type();
	GZlibCompressor* g_zlib_compressor_new(GZlibCompressorFormat format, int level);
	GFileInfo* g_zlib_compressor_get_file_info(GZlibCompressor* compressor);
	void g_zlib_compressor_set_file_info(GZlibCompressor* compressor, GFileInfo* fileInfo);

	// gio.ZlibDecompressor

	GType g_zlib_decompressor_get_type();
	GZlibDecompressor* g_zlib_decompressor_new(GZlibCompressorFormat format);
	GFileInfo* g_zlib_decompressor_get_file_info(GZlibDecompressor* decompressor);

	// gio.PollableUtils

	GSource* g_pollable_source_new(GObject* pollableStream);
	GSource* g_pollable_source_new_full(void* pollableStream, GSource* childSource, GCancellable* cancellable);
	ptrdiff_t g_pollable_stream_read(GInputStream* stream, void* buffer, size_t count, int blocking, GCancellable* cancellable, GError** err);
	ptrdiff_t g_pollable_stream_write(GOutputStream* stream, void* buffer, size_t count, int blocking, GCancellable* cancellable, GError** err);
	int g_pollable_stream_write_all(GOutputStream* stream, void* buffer, size_t count, int blocking, size_t* bytesWritten, GCancellable* cancellable, GError** err);

	// gio.DBusNames

	uint g_bus_own_name(GBusType busType, const(char)* name, GBusNameOwnerFlags flags, GBusAcquiredCallback busAcquiredHandler, GBusNameAcquiredCallback nameAcquiredHandler, GBusNameLostCallback nameLostHandler, void* userData, GDestroyNotify userDataFreeFunc);
	uint g_bus_own_name_on_connection(GDBusConnection* connection, const(char)* name, GBusNameOwnerFlags flags, GBusNameAcquiredCallback nameAcquiredHandler, GBusNameLostCallback nameLostHandler, void* userData, GDestroyNotify userDataFreeFunc);
	uint g_bus_own_name_on_connection_with_closures(GDBusConnection* connection, const(char)* name, GBusNameOwnerFlags flags, GClosure* nameAcquiredClosure, GClosure* nameLostClosure);
	uint g_bus_own_name_with_closures(GBusType busType, const(char)* name, GBusNameOwnerFlags flags, GClosure* busAcquiredClosure, GClosure* nameAcquiredClosure, GClosure* nameLostClosure);
	void g_bus_unown_name(uint ownerId);
	void g_bus_unwatch_name(uint watcherId);
	uint g_bus_watch_name(GBusType busType, const(char)* name, GBusNameWatcherFlags flags, GBusNameAppearedCallback nameAppearedHandler, GBusNameVanishedCallback nameVanishedHandler, void* userData, GDestroyNotify userDataFreeFunc);
	uint g_bus_watch_name_on_connection(GDBusConnection* connection, const(char)* name, GBusNameWatcherFlags flags, GBusNameAppearedCallback nameAppearedHandler, GBusNameVanishedCallback nameVanishedHandler, void* userData, GDestroyNotify userDataFreeFunc);
	uint g_bus_watch_name_on_connection_with_closures(GDBusConnection* connection, const(char)* name, GBusNameWatcherFlags flags, GClosure* nameAppearedClosure, GClosure* nameVanishedClosure);
	uint g_bus_watch_name_with_closures(GBusType busType, const(char)* name, GBusNameWatcherFlags flags, GClosure* nameAppearedClosure, GClosure* nameVanishedClosure);

	// gio.ContentType

	int g_content_type_can_be_executable(const(char)* type);
	int g_content_type_equals(const(char)* type1, const(char)* type2);
	char* g_content_type_from_mime_type(const(char)* mimeType);
	char* g_content_type_get_description(const(char)* type);
	char* g_content_type_get_generic_icon_name(const(char)* type);
	GIcon* g_content_type_get_icon(const(char)* type);
	char* g_content_type_get_mime_type(const(char)* type);
	GIcon* g_content_type_get_symbolic_icon(const(char)* type);
	char* g_content_type_guess(const(char)* filename, char* data, size_t dataSize, int* resultUncertain);
	char** g_content_type_guess_for_tree(GFile* root);
	int g_content_type_is_a(const(char)* type, const(char)* supertype);
	int g_content_type_is_unknown(const(char)* type);
	GList* g_content_types_get_registered();
	int g_content_type_is_mime_type(const(char)* type, const(char)* mimeType);
	char** g_content_type_get_mime_dirs();
	void g_content_type_set_mime_dirs(char** dirs);

	// gio.DBusError

	char* g_dbus_error_encode_gerror(GError* error);
	char* g_dbus_error_get_remote_error(GError* error);
	int g_dbus_error_is_remote_error(GError* error);
	GError* g_dbus_error_new_for_dbus_error(const(char)* dbusErrorName, const(char)* dbusErrorMessage);
	GQuark g_dbus_error_quark();
	int g_dbus_error_register_error(GQuark errorDomain, int errorCode, const(char)* dbusErrorName);
	void g_dbus_error_register_error_domain(const(char)* errorDomainQuarkName, size_t* quarkVolatile, GDBusErrorEntry* entries, uint numEntries);
	int g_dbus_error_strip_remote_error(GError* error);
	int g_dbus_error_unregister_error(GQuark errorDomain, int errorCode, const(char)* dbusErrorName);

	// gio.DBusUtilities

	char* g_dbus_address_escape_value(const(char)* string_);
	char* g_dbus_address_get_for_bus_sync(GBusType busType, GCancellable* cancellable, GError** err);
	void g_dbus_address_get_stream(const(char)* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GIOStream* g_dbus_address_get_stream_finish(GAsyncResult* res, char** outGuid, GError** err);
	GIOStream* g_dbus_address_get_stream_sync(const(char)* address, char** outGuid, GCancellable* cancellable, GError** err);
	char* g_dbus_generate_guid();
	GVariant* g_dbus_gvalue_to_gvariant(GValue* gvalue, GVariantType* type);
	void g_dbus_gvariant_to_gvalue(GVariant* value, GValue* outGvalue);
	int g_dbus_is_address(const(char)* string_);
	int g_dbus_is_guid(const(char)* string_);
	int g_dbus_is_interface_name(const(char)* string_);
	int g_dbus_is_member_name(const(char)* string_);
	int g_dbus_is_name(const(char)* string_);
	int g_dbus_is_supported_address(const(char)* string_, GError** err);
	int g_dbus_is_unique_name(const(char)* string_);

	// gio.ErrorGIO

	GIOErrorEnum g_io_error_from_errno(int errNo);
	GQuark g_io_error_quark();
}