/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module gtkc.gobject;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gobjecttypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// gobject.Type

	Linker.link(g_type_init, "g_type_init", LIBRARY.GOBJECT);
	Linker.link(g_type_init_with_debug_flags, "g_type_init_with_debug_flags", LIBRARY.GOBJECT);
	Linker.link(g_type_name, "g_type_name", LIBRARY.GOBJECT);
	Linker.link(g_type_qname, "g_type_qname", LIBRARY.GOBJECT);
	Linker.link(g_type_from_name, "g_type_from_name", LIBRARY.GOBJECT);
	Linker.link(g_type_parent, "g_type_parent", LIBRARY.GOBJECT);
	Linker.link(g_type_depth, "g_type_depth", LIBRARY.GOBJECT);
	Linker.link(g_type_next_base, "g_type_next_base", LIBRARY.GOBJECT);
	Linker.link(g_type_is_a, "g_type_is_a", LIBRARY.GOBJECT);
	Linker.link(g_type_class_ref, "g_type_class_ref", LIBRARY.GOBJECT);
	Linker.link(g_type_class_peek, "g_type_class_peek", LIBRARY.GOBJECT);
	Linker.link(g_type_class_peek_static, "g_type_class_peek_static", LIBRARY.GOBJECT);
	Linker.link(g_type_class_unref, "g_type_class_unref", LIBRARY.GOBJECT);
	Linker.link(g_type_class_peek_parent, "g_type_class_peek_parent", LIBRARY.GOBJECT);
	Linker.link(g_type_class_add_private, "g_type_class_add_private", LIBRARY.GOBJECT);
	Linker.link(g_type_interface_peek, "g_type_interface_peek", LIBRARY.GOBJECT);
	Linker.link(g_type_interface_peek_parent, "g_type_interface_peek_parent", LIBRARY.GOBJECT);
	Linker.link(g_type_default_interface_ref, "g_type_default_interface_ref", LIBRARY.GOBJECT);
	Linker.link(g_type_default_interface_peek, "g_type_default_interface_peek", LIBRARY.GOBJECT);
	Linker.link(g_type_default_interface_unref, "g_type_default_interface_unref", LIBRARY.GOBJECT);
	Linker.link(g_type_children, "g_type_children", LIBRARY.GOBJECT);
	Linker.link(g_type_interfaces, "g_type_interfaces", LIBRARY.GOBJECT);
	Linker.link(g_type_interface_prerequisites, "g_type_interface_prerequisites", LIBRARY.GOBJECT);
	Linker.link(g_type_set_qdata, "g_type_set_qdata", LIBRARY.GOBJECT);
	Linker.link(g_type_get_qdata, "g_type_get_qdata", LIBRARY.GOBJECT);
	Linker.link(g_type_query, "g_type_query", LIBRARY.GOBJECT);
	Linker.link(g_type_register_static, "g_type_register_static", LIBRARY.GOBJECT);
	Linker.link(g_type_register_static_simple, "g_type_register_static_simple", LIBRARY.GOBJECT);
	Linker.link(g_type_register_dynamic, "g_type_register_dynamic", LIBRARY.GOBJECT);
	Linker.link(g_type_register_fundamental, "g_type_register_fundamental", LIBRARY.GOBJECT);
	Linker.link(g_type_add_interface_static, "g_type_add_interface_static", LIBRARY.GOBJECT);
	Linker.link(g_type_add_interface_dynamic, "g_type_add_interface_dynamic", LIBRARY.GOBJECT);
	Linker.link(g_type_interface_add_prerequisite, "g_type_interface_add_prerequisite", LIBRARY.GOBJECT);
	Linker.link(g_type_get_plugin, "g_type_get_plugin", LIBRARY.GOBJECT);
	Linker.link(g_type_interface_get_plugin, "g_type_interface_get_plugin", LIBRARY.GOBJECT);
	Linker.link(g_type_fundamental_next, "g_type_fundamental_next", LIBRARY.GOBJECT);
	Linker.link(g_type_fundamental, "g_type_fundamental", LIBRARY.GOBJECT);
	Linker.link(g_type_create_instance, "g_type_create_instance", LIBRARY.GOBJECT);
	Linker.link(g_type_free_instance, "g_type_free_instance", LIBRARY.GOBJECT);
	Linker.link(g_type_add_class_cache_func, "g_type_add_class_cache_func", LIBRARY.GOBJECT);
	Linker.link(g_type_remove_class_cache_func, "g_type_remove_class_cache_func", LIBRARY.GOBJECT);
	Linker.link(g_type_class_unref_uncached, "g_type_class_unref_uncached", LIBRARY.GOBJECT);
	Linker.link(g_type_add_interface_check, "g_type_add_interface_check", LIBRARY.GOBJECT);
	Linker.link(g_type_remove_interface_check, "g_type_remove_interface_check", LIBRARY.GOBJECT);
	Linker.link(g_type_value_table_peek, "g_type_value_table_peek", LIBRARY.GOBJECT);

	// gobject.TypePlugin

	Linker.link(g_type_plugin_use, "g_type_plugin_use", LIBRARY.GOBJECT);
	Linker.link(g_type_plugin_unuse, "g_type_plugin_unuse", LIBRARY.GOBJECT);
	Linker.link(g_type_plugin_complete_type_info, "g_type_plugin_complete_type_info", LIBRARY.GOBJECT);
	Linker.link(g_type_plugin_complete_interface_info, "g_type_plugin_complete_interface_info", LIBRARY.GOBJECT);

	// gobject.TypeModule

	Linker.link(g_type_module_use, "g_type_module_use", LIBRARY.GOBJECT);
	Linker.link(g_type_module_unuse, "g_type_module_unuse", LIBRARY.GOBJECT);
	Linker.link(g_type_module_set_name, "g_type_module_set_name", LIBRARY.GOBJECT);
	Linker.link(g_type_module_register_type, "g_type_module_register_type", LIBRARY.GOBJECT);
	Linker.link(g_type_module_add_interface, "g_type_module_add_interface", LIBRARY.GOBJECT);
	Linker.link(g_type_module_register_enum, "g_type_module_register_enum", LIBRARY.GOBJECT);
	Linker.link(g_type_module_register_flags, "g_type_module_register_flags", LIBRARY.GOBJECT);

	// gobject.ObjectG

	Linker.link(g_object_class_install_property, "g_object_class_install_property", LIBRARY.GOBJECT);
	Linker.link(g_object_class_find_property, "g_object_class_find_property", LIBRARY.GOBJECT);
	Linker.link(g_object_class_list_properties, "g_object_class_list_properties", LIBRARY.GOBJECT);
	Linker.link(g_object_class_override_property, "g_object_class_override_property", LIBRARY.GOBJECT);
	Linker.link(g_object_interface_install_property, "g_object_interface_install_property", LIBRARY.GOBJECT);
	Linker.link(g_object_interface_find_property, "g_object_interface_find_property", LIBRARY.GOBJECT);
	Linker.link(g_object_interface_list_properties, "g_object_interface_list_properties", LIBRARY.GOBJECT);
	Linker.link(g_object_new, "g_object_new", LIBRARY.GOBJECT);
	Linker.link(g_object_newv, "g_object_newv", LIBRARY.GOBJECT);
	Linker.link(g_object_ref, "g_object_ref", LIBRARY.GOBJECT);
	Linker.link(g_object_unref, "g_object_unref", LIBRARY.GOBJECT);
	Linker.link(g_object_ref_sink, "g_object_ref_sink", LIBRARY.GOBJECT);
	Linker.link(g_object_is_floating, "g_object_is_floating", LIBRARY.GOBJECT);
	Linker.link(g_object_force_floating, "g_object_force_floating", LIBRARY.GOBJECT);
	Linker.link(g_object_weak_ref, "g_object_weak_ref", LIBRARY.GOBJECT);
	Linker.link(g_object_weak_unref, "g_object_weak_unref", LIBRARY.GOBJECT);
	Linker.link(g_object_add_weak_pointer, "g_object_add_weak_pointer", LIBRARY.GOBJECT);
	Linker.link(g_object_remove_weak_pointer, "g_object_remove_weak_pointer", LIBRARY.GOBJECT);
	Linker.link(g_object_add_toggle_ref, "g_object_add_toggle_ref", LIBRARY.GOBJECT);
	Linker.link(g_object_remove_toggle_ref, "g_object_remove_toggle_ref", LIBRARY.GOBJECT);
	Linker.link(g_object_connect, "g_object_connect", LIBRARY.GOBJECT);
	Linker.link(g_object_disconnect, "g_object_disconnect", LIBRARY.GOBJECT);
	Linker.link(g_object_set, "g_object_set", LIBRARY.GOBJECT);
	Linker.link(g_object_get, "g_object_get", LIBRARY.GOBJECT);
	Linker.link(g_object_notify, "g_object_notify", LIBRARY.GOBJECT);
	Linker.link(g_object_freeze_notify, "g_object_freeze_notify", LIBRARY.GOBJECT);
	Linker.link(g_object_thaw_notify, "g_object_thaw_notify", LIBRARY.GOBJECT);
	Linker.link(g_object_get_data, "g_object_get_data", LIBRARY.GOBJECT);
	Linker.link(g_object_set_data, "g_object_set_data", LIBRARY.GOBJECT);
	Linker.link(g_object_set_data_full, "g_object_set_data_full", LIBRARY.GOBJECT);
	Linker.link(g_object_steal_data, "g_object_steal_data", LIBRARY.GOBJECT);
	Linker.link(g_object_get_qdata, "g_object_get_qdata", LIBRARY.GOBJECT);
	Linker.link(g_object_set_qdata, "g_object_set_qdata", LIBRARY.GOBJECT);
	Linker.link(g_object_set_qdata_full, "g_object_set_qdata_full", LIBRARY.GOBJECT);
	Linker.link(g_object_steal_qdata, "g_object_steal_qdata", LIBRARY.GOBJECT);
	Linker.link(g_object_set_property, "g_object_set_property", LIBRARY.GOBJECT);
	Linker.link(g_object_get_property, "g_object_get_property", LIBRARY.GOBJECT);
	Linker.link(g_object_new_valist, "g_object_new_valist", LIBRARY.GOBJECT);
	Linker.link(g_object_set_valist, "g_object_set_valist", LIBRARY.GOBJECT);
	Linker.link(g_object_get_valist, "g_object_get_valist", LIBRARY.GOBJECT);
	Linker.link(g_object_watch_closure, "g_object_watch_closure", LIBRARY.GOBJECT);
	Linker.link(g_object_run_dispose, "g_object_run_dispose", LIBRARY.GOBJECT);

	// gobject.Enums

	Linker.link(g_enum_get_value, "g_enum_get_value", LIBRARY.GOBJECT);
	Linker.link(g_enum_get_value_by_name, "g_enum_get_value_by_name", LIBRARY.GOBJECT);
	Linker.link(g_enum_get_value_by_nick, "g_enum_get_value_by_nick", LIBRARY.GOBJECT);
	Linker.link(g_enum_register_static, "g_enum_register_static", LIBRARY.GOBJECT);
	Linker.link(g_enum_complete_type_info, "g_enum_complete_type_info", LIBRARY.GOBJECT);

	// gobject.Flags

	Linker.link(g_flags_get_first_value, "g_flags_get_first_value", LIBRARY.GOBJECT);
	Linker.link(g_flags_get_value_by_name, "g_flags_get_value_by_name", LIBRARY.GOBJECT);
	Linker.link(g_flags_get_value_by_nick, "g_flags_get_value_by_nick", LIBRARY.GOBJECT);
	Linker.link(g_flags_register_static, "g_flags_register_static", LIBRARY.GOBJECT);
	Linker.link(g_flags_complete_type_info, "g_flags_complete_type_info", LIBRARY.GOBJECT);

	// gobject.Boxed

	Linker.link(g_boxed_copy, "g_boxed_copy", LIBRARY.GOBJECT);
	Linker.link(g_boxed_free, "g_boxed_free", LIBRARY.GOBJECT);
	Linker.link(g_boxed_type_register_static, "g_boxed_type_register_static", LIBRARY.GOBJECT);
	Linker.link(g_pointer_type_register_static, "g_pointer_type_register_static", LIBRARY.GOBJECT);

	// gobject.Value

	Linker.link(g_value_init, "g_value_init", LIBRARY.GOBJECT);
	Linker.link(g_value_copy, "g_value_copy", LIBRARY.GOBJECT);
	Linker.link(g_value_reset, "g_value_reset", LIBRARY.GOBJECT);
	Linker.link(g_value_unset, "g_value_unset", LIBRARY.GOBJECT);
	Linker.link(g_value_set_instance, "g_value_set_instance", LIBRARY.GOBJECT);
	Linker.link(g_value_fits_pointer, "g_value_fits_pointer", LIBRARY.GOBJECT);
	Linker.link(g_value_peek_pointer, "g_value_peek_pointer", LIBRARY.GOBJECT);
	Linker.link(g_value_type_compatible, "g_value_type_compatible", LIBRARY.GOBJECT);
	Linker.link(g_value_type_transformable, "g_value_type_transformable", LIBRARY.GOBJECT);
	Linker.link(g_value_transform, "g_value_transform", LIBRARY.GOBJECT);
	Linker.link(g_value_register_transform_func, "g_value_register_transform_func", LIBRARY.GOBJECT);
	Linker.link(g_strdup_value_contents, "g_strdup_value_contents", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_boolean, "g_param_spec_boolean", LIBRARY.GOBJECT);
	Linker.link(g_value_set_boolean, "g_value_set_boolean", LIBRARY.GOBJECT);
	Linker.link(g_value_get_boolean, "g_value_get_boolean", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_char, "g_param_spec_char", LIBRARY.GOBJECT);
	Linker.link(g_value_set_char, "g_value_set_char", LIBRARY.GOBJECT);
	Linker.link(g_value_get_char, "g_value_get_char", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_uchar, "g_param_spec_uchar", LIBRARY.GOBJECT);
	Linker.link(g_value_set_uchar, "g_value_set_uchar", LIBRARY.GOBJECT);
	Linker.link(g_value_get_uchar, "g_value_get_uchar", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_int, "g_param_spec_int", LIBRARY.GOBJECT);
	Linker.link(g_value_set_int, "g_value_set_int", LIBRARY.GOBJECT);
	Linker.link(g_value_get_int, "g_value_get_int", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_uint, "g_param_spec_uint", LIBRARY.GOBJECT);
	Linker.link(g_value_set_uint, "g_value_set_uint", LIBRARY.GOBJECT);
	Linker.link(g_value_get_uint, "g_value_get_uint", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_long, "g_param_spec_long", LIBRARY.GOBJECT);
	Linker.link(g_value_set_long, "g_value_set_long", LIBRARY.GOBJECT);
	Linker.link(g_value_get_long, "g_value_get_long", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_ulong, "g_param_spec_ulong", LIBRARY.GOBJECT);
	Linker.link(g_value_set_ulong, "g_value_set_ulong", LIBRARY.GOBJECT);
	Linker.link(g_value_get_ulong, "g_value_get_ulong", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_int64, "g_param_spec_int64", LIBRARY.GOBJECT);
	Linker.link(g_value_set_int64, "g_value_set_int64", LIBRARY.GOBJECT);
	Linker.link(g_value_get_int64, "g_value_get_int64", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_uint64, "g_param_spec_uint64", LIBRARY.GOBJECT);
	Linker.link(g_value_set_uint64, "g_value_set_uint64", LIBRARY.GOBJECT);
	Linker.link(g_value_get_uint64, "g_value_get_uint64", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_float, "g_param_spec_float", LIBRARY.GOBJECT);
	Linker.link(g_value_set_float, "g_value_set_float", LIBRARY.GOBJECT);
	Linker.link(g_value_get_float, "g_value_get_float", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_double, "g_param_spec_double", LIBRARY.GOBJECT);
	Linker.link(g_value_set_double, "g_value_set_double", LIBRARY.GOBJECT);
	Linker.link(g_value_get_double, "g_value_get_double", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_enum, "g_param_spec_enum", LIBRARY.GOBJECT);
	Linker.link(g_value_set_enum, "g_value_set_enum", LIBRARY.GOBJECT);
	Linker.link(g_value_get_enum, "g_value_get_enum", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_flags, "g_param_spec_flags", LIBRARY.GOBJECT);
	Linker.link(g_value_set_flags, "g_value_set_flags", LIBRARY.GOBJECT);
	Linker.link(g_value_get_flags, "g_value_get_flags", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_string, "g_param_spec_string", LIBRARY.GOBJECT);
	Linker.link(g_value_set_string, "g_value_set_string", LIBRARY.GOBJECT);
	Linker.link(g_value_set_static_string, "g_value_set_static_string", LIBRARY.GOBJECT);
	Linker.link(g_value_take_string, "g_value_take_string", LIBRARY.GOBJECT);
	Linker.link(g_value_set_string_take_ownership, "g_value_set_string_take_ownership", LIBRARY.GOBJECT);
	Linker.link(g_value_get_string, "g_value_get_string", LIBRARY.GOBJECT);
	Linker.link(g_value_dup_string, "g_value_dup_string", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_param, "g_param_spec_param", LIBRARY.GOBJECT);
	Linker.link(g_value_set_param, "g_value_set_param", LIBRARY.GOBJECT);
	Linker.link(g_value_take_param, "g_value_take_param", LIBRARY.GOBJECT);
	Linker.link(g_value_set_param_take_ownership, "g_value_set_param_take_ownership", LIBRARY.GOBJECT);
	Linker.link(g_value_get_param, "g_value_get_param", LIBRARY.GOBJECT);
	Linker.link(g_value_dup_param, "g_value_dup_param", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_boxed, "g_param_spec_boxed", LIBRARY.GOBJECT);
	Linker.link(g_value_set_boxed, "g_value_set_boxed", LIBRARY.GOBJECT);
	Linker.link(g_value_set_static_boxed, "g_value_set_static_boxed", LIBRARY.GOBJECT);
	Linker.link(g_value_take_boxed, "g_value_take_boxed", LIBRARY.GOBJECT);
	Linker.link(g_value_set_boxed_take_ownership, "g_value_set_boxed_take_ownership", LIBRARY.GOBJECT);
	Linker.link(g_value_get_boxed, "g_value_get_boxed", LIBRARY.GOBJECT);
	Linker.link(g_value_dup_boxed, "g_value_dup_boxed", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pointer, "g_param_spec_pointer", LIBRARY.GOBJECT);
	Linker.link(g_value_set_pointer, "g_value_set_pointer", LIBRARY.GOBJECT);
	Linker.link(g_value_get_pointer, "g_value_get_pointer", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_object, "g_param_spec_object", LIBRARY.GOBJECT);
	Linker.link(g_value_set_object, "g_value_set_object", LIBRARY.GOBJECT);
	Linker.link(g_value_take_object, "g_value_take_object", LIBRARY.GOBJECT);
	Linker.link(g_value_set_object_take_ownership, "g_value_set_object_take_ownership", LIBRARY.GOBJECT);
	Linker.link(g_value_get_object, "g_value_get_object", LIBRARY.GOBJECT);
	Linker.link(g_value_dup_object, "g_value_dup_object", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_unichar, "g_param_spec_unichar", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_value_array, "g_param_spec_value_array", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_override, "g_param_spec_override", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_gtype, "g_param_spec_gtype", LIBRARY.GOBJECT);
	Linker.link(g_value_get_gtype, "g_value_get_gtype", LIBRARY.GOBJECT);
	Linker.link(g_value_set_gtype, "g_value_set_gtype", LIBRARY.GOBJECT);

	// gobject.ParamSpec

	Linker.link(g_param_spec_ref, "g_param_spec_ref", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_unref, "g_param_spec_unref", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_sink, "g_param_spec_sink", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_ref_sink, "g_param_spec_ref_sink", LIBRARY.GOBJECT);
	Linker.link(g_param_value_set_default, "g_param_value_set_default", LIBRARY.GOBJECT);
	Linker.link(g_param_value_defaults, "g_param_value_defaults", LIBRARY.GOBJECT);
	Linker.link(g_param_value_validate, "g_param_value_validate", LIBRARY.GOBJECT);
	Linker.link(g_param_value_convert, "g_param_value_convert", LIBRARY.GOBJECT);
	Linker.link(g_param_values_cmp, "g_param_values_cmp", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_get_name, "g_param_spec_get_name", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_get_nick, "g_param_spec_get_nick", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_get_blurb, "g_param_spec_get_blurb", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_get_qdata, "g_param_spec_get_qdata", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_set_qdata, "g_param_spec_set_qdata", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_set_qdata_full, "g_param_spec_set_qdata_full", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_steal_qdata, "g_param_spec_steal_qdata", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_get_redirect_target, "g_param_spec_get_redirect_target", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_internal, "g_param_spec_internal", LIBRARY.GOBJECT);
	Linker.link(g_param_type_register_static, "g_param_type_register_static", LIBRARY.GOBJECT);

	// gobject.ParamSpecPool

	Linker.link(g_param_spec_pool_new, "g_param_spec_pool_new", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pool_insert, "g_param_spec_pool_insert", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pool_remove, "g_param_spec_pool_remove", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pool_lookup, "g_param_spec_pool_lookup", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pool_list, "g_param_spec_pool_list", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pool_list_owned, "g_param_spec_pool_list_owned", LIBRARY.GOBJECT);

	// gobject.Signals

	Linker.link(g_signal_new, "g_signal_new", LIBRARY.GOBJECT);
	Linker.link(g_signal_newv, "g_signal_newv", LIBRARY.GOBJECT);
	Linker.link(g_signal_new_valist, "g_signal_new_valist", LIBRARY.GOBJECT);
	Linker.link(g_signal_query, "g_signal_query", LIBRARY.GOBJECT);
	Linker.link(g_signal_lookup, "g_signal_lookup", LIBRARY.GOBJECT);
	Linker.link(g_signal_name, "g_signal_name", LIBRARY.GOBJECT);
	Linker.link(g_signal_list_ids, "g_signal_list_ids", LIBRARY.GOBJECT);
	Linker.link(g_signal_emit, "g_signal_emit", LIBRARY.GOBJECT);
	Linker.link(g_signal_emit_by_name, "g_signal_emit_by_name", LIBRARY.GOBJECT);
	Linker.link(g_signal_emitv, "g_signal_emitv", LIBRARY.GOBJECT);
	Linker.link(g_signal_emit_valist, "g_signal_emit_valist", LIBRARY.GOBJECT);
	Linker.link(g_signal_connect_object, "g_signal_connect_object", LIBRARY.GOBJECT);
	Linker.link(g_signal_connect_data, "g_signal_connect_data", LIBRARY.GOBJECT);
	Linker.link(g_signal_connect_closure, "g_signal_connect_closure", LIBRARY.GOBJECT);
	Linker.link(g_signal_connect_closure_by_id, "g_signal_connect_closure_by_id", LIBRARY.GOBJECT);
	Linker.link(g_signal_handler_block, "g_signal_handler_block", LIBRARY.GOBJECT);
	Linker.link(g_signal_handler_unblock, "g_signal_handler_unblock", LIBRARY.GOBJECT);
	Linker.link(g_signal_handler_disconnect, "g_signal_handler_disconnect", LIBRARY.GOBJECT);
	Linker.link(g_signal_handler_find, "g_signal_handler_find", LIBRARY.GOBJECT);
	Linker.link(g_signal_handlers_block_matched, "g_signal_handlers_block_matched", LIBRARY.GOBJECT);
	Linker.link(g_signal_handlers_unblock_matched, "g_signal_handlers_unblock_matched", LIBRARY.GOBJECT);
	Linker.link(g_signal_handlers_disconnect_matched, "g_signal_handlers_disconnect_matched", LIBRARY.GOBJECT);
	Linker.link(g_signal_handler_is_connected, "g_signal_handler_is_connected", LIBRARY.GOBJECT);
	Linker.link(g_signal_has_handler_pending, "g_signal_has_handler_pending", LIBRARY.GOBJECT);
	Linker.link(g_signal_stop_emission, "g_signal_stop_emission", LIBRARY.GOBJECT);
	Linker.link(g_signal_stop_emission_by_name, "g_signal_stop_emission_by_name", LIBRARY.GOBJECT);
	Linker.link(g_signal_override_class_closure, "g_signal_override_class_closure", LIBRARY.GOBJECT);
	Linker.link(g_signal_chain_from_overridden, "g_signal_chain_from_overridden", LIBRARY.GOBJECT);
	Linker.link(g_signal_new_class_handler, "g_signal_new_class_handler", LIBRARY.GOBJECT);
	Linker.link(g_signal_override_class_handler, "g_signal_override_class_handler", LIBRARY.GOBJECT);
	Linker.link(g_signal_chain_from_overridden_handler, "g_signal_chain_from_overridden_handler", LIBRARY.GOBJECT);
	Linker.link(g_signal_add_emission_hook, "g_signal_add_emission_hook", LIBRARY.GOBJECT);
	Linker.link(g_signal_remove_emission_hook, "g_signal_remove_emission_hook", LIBRARY.GOBJECT);
	Linker.link(g_signal_parse_name, "g_signal_parse_name", LIBRARY.GOBJECT);
	Linker.link(g_signal_get_invocation_hint, "g_signal_get_invocation_hint", LIBRARY.GOBJECT);
	Linker.link(g_signal_type_cclosure_new, "g_signal_type_cclosure_new", LIBRARY.GOBJECT);
	Linker.link(g_signal_accumulator_true_handled, "g_signal_accumulator_true_handled", LIBRARY.GOBJECT);

	// gobject.Closure

	Linker.link(g_closure_new_object, "g_closure_new_object", LIBRARY.GOBJECT);
	Linker.link(g_closure_ref, "g_closure_ref", LIBRARY.GOBJECT);
	Linker.link(g_closure_sink, "g_closure_sink", LIBRARY.GOBJECT);
	Linker.link(g_closure_unref, "g_closure_unref", LIBRARY.GOBJECT);
	Linker.link(g_closure_invoke, "g_closure_invoke", LIBRARY.GOBJECT);
	Linker.link(g_closure_invalidate, "g_closure_invalidate", LIBRARY.GOBJECT);
	Linker.link(g_closure_add_finalize_notifier, "g_closure_add_finalize_notifier", LIBRARY.GOBJECT);
	Linker.link(g_closure_add_invalidate_notifier, "g_closure_add_invalidate_notifier", LIBRARY.GOBJECT);
	Linker.link(g_closure_remove_finalize_notifier, "g_closure_remove_finalize_notifier", LIBRARY.GOBJECT);
	Linker.link(g_closure_remove_invalidate_notifier, "g_closure_remove_invalidate_notifier", LIBRARY.GOBJECT);
	Linker.link(g_closure_new_simple, "g_closure_new_simple", LIBRARY.GOBJECT);
	Linker.link(g_closure_set_marshal, "g_closure_set_marshal", LIBRARY.GOBJECT);
	Linker.link(g_closure_add_marshal_guards, "g_closure_add_marshal_guards", LIBRARY.GOBJECT);
	Linker.link(g_closure_set_meta_marshal, "g_closure_set_meta_marshal", LIBRARY.GOBJECT);
	Linker.link(g_source_set_closure, "g_source_set_closure", LIBRARY.GOBJECT);

	// gobject.CClosure

	Linker.link(g_cclosure_new, "g_cclosure_new", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_new_swap, "g_cclosure_new_swap", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_new_object, "g_cclosure_new_object", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_new_object_swap, "g_cclosure_new_object_swap", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__VOID, "g_cclosure_marshal_VOID__VOID", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__BOOLEAN, "g_cclosure_marshal_VOID__BOOLEAN", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__CHAR, "g_cclosure_marshal_VOID__CHAR", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UCHAR, "g_cclosure_marshal_VOID__UCHAR", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__INT, "g_cclosure_marshal_VOID__INT", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UINT, "g_cclosure_marshal_VOID__UINT", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__LONG, "g_cclosure_marshal_VOID__LONG", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__ULONG, "g_cclosure_marshal_VOID__ULONG", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__ENUM, "g_cclosure_marshal_VOID__ENUM", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__FLAGS, "g_cclosure_marshal_VOID__FLAGS", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__FLOAT, "g_cclosure_marshal_VOID__FLOAT", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__DOUBLE, "g_cclosure_marshal_VOID__DOUBLE", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__STRING, "g_cclosure_marshal_VOID__STRING", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__PARAM, "g_cclosure_marshal_VOID__PARAM", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__BOXED, "g_cclosure_marshal_VOID__BOXED", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__POINTER, "g_cclosure_marshal_VOID__POINTER", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__OBJECT, "g_cclosure_marshal_VOID__OBJECT", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_STRING__OBJECT_POINTER, "g_cclosure_marshal_STRING__OBJECT_POINTER", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UINT_POINTER, "g_cclosure_marshal_VOID__UINT_POINTER", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_BOOLEAN__FLAGS, "g_cclosure_marshal_BOOLEAN__FLAGS", LIBRARY.GOBJECT);

	// gobject.ValueArray

	Linker.link(g_value_array_get_nth, "g_value_array_get_nth", LIBRARY.GOBJECT);
	Linker.link(g_value_array_new, "g_value_array_new", LIBRARY.GOBJECT);
	Linker.link(g_value_array_copy, "g_value_array_copy", LIBRARY.GOBJECT);
	Linker.link(g_value_array_free, "g_value_array_free", LIBRARY.GOBJECT);
	Linker.link(g_value_array_append, "g_value_array_append", LIBRARY.GOBJECT);
	Linker.link(g_value_array_prepend, "g_value_array_prepend", LIBRARY.GOBJECT);
	Linker.link(g_value_array_insert, "g_value_array_insert", LIBRARY.GOBJECT);
	Linker.link(g_value_array_remove, "g_value_array_remove", LIBRARY.GOBJECT);
	Linker.link(g_value_array_sort, "g_value_array_sort", LIBRARY.GOBJECT);
	Linker.link(g_value_array_sort_with_data, "g_value_array_sort_with_data", LIBRARY.GOBJECT);
}

extern(C)
{
	
	// gobject.Type
	
	typedef void function() c_g_type_init;
	typedef void function(GTypeDebugFlags debugFlags) c_g_type_init_with_debug_flags;
	typedef gchar* function(GType type) c_g_type_name;
	typedef GQuark function(GType type) c_g_type_qname;
	typedef GType function(gchar* name) c_g_type_from_name;
	typedef GType function(GType type) c_g_type_parent;
	typedef guint function(GType type) c_g_type_depth;
	typedef GType function(GType leafType, GType rootType) c_g_type_next_base;
	typedef gboolean function(GType type, GType isAType) c_g_type_is_a;
	typedef gpointer function(GType type) c_g_type_class_ref;
	typedef gpointer function(GType type) c_g_type_class_peek;
	typedef gpointer function(GType type) c_g_type_class_peek_static;
	typedef void function(gpointer gClass) c_g_type_class_unref;
	typedef gpointer function(gpointer gClass) c_g_type_class_peek_parent;
	typedef void function(gpointer gClass, gsize privateSize) c_g_type_class_add_private;
	typedef gpointer function(gpointer instanceClass, GType ifaceType) c_g_type_interface_peek;
	typedef gpointer function(gpointer gIface) c_g_type_interface_peek_parent;
	typedef gpointer function(GType gType) c_g_type_default_interface_ref;
	typedef gpointer function(GType gType) c_g_type_default_interface_peek;
	typedef void function(gpointer gIface) c_g_type_default_interface_unref;
	typedef GType* function(GType type, guint* nChildren) c_g_type_children;
	typedef GType* function(GType type, guint* nInterfaces) c_g_type_interfaces;
	typedef GType* function(GType interfaceType, guint* nPrerequisites) c_g_type_interface_prerequisites;
	typedef void function(GType type, GQuark quark, gpointer data) c_g_type_set_qdata;
	typedef gpointer function(GType type, GQuark quark) c_g_type_get_qdata;
	typedef void function(GType type, GTypeQuery* query) c_g_type_query;
	typedef GType function(GType parentType, gchar* typeName, GTypeInfo* info, GTypeFlags flags) c_g_type_register_static;
	typedef GType function(GType parentType, gchar* typeName, guint classSize, GClassInitFunc classInit, guint instanceSize, GInstanceInitFunc instanceInit, GTypeFlags flags) c_g_type_register_static_simple;
	typedef GType function(GType parentType, gchar* typeName, GTypePlugin* plugin, GTypeFlags flags) c_g_type_register_dynamic;
	typedef GType function(GType typeId, gchar* typeName, GTypeInfo* info, GTypeFundamentalInfo* finfo, GTypeFlags flags) c_g_type_register_fundamental;
	typedef void function(GType instanceType, GType interfaceType, GInterfaceInfo* info) c_g_type_add_interface_static;
	typedef void function(GType instanceType, GType interfaceType, GTypePlugin* plugin) c_g_type_add_interface_dynamic;
	typedef void function(GType interfaceType, GType prerequisiteType) c_g_type_interface_add_prerequisite;
	typedef GTypePlugin* function(GType type) c_g_type_get_plugin;
	typedef GTypePlugin* function(GType instanceType, GType interfaceType) c_g_type_interface_get_plugin;
	typedef GType function() c_g_type_fundamental_next;
	typedef GType function(GType typeId) c_g_type_fundamental;
	typedef GTypeInstance* function(GType type) c_g_type_create_instance;
	typedef void function(GTypeInstance* instanc) c_g_type_free_instance;
	typedef void function(gpointer cacheData, GTypeClassCacheFunc cacheFunc) c_g_type_add_class_cache_func;
	typedef void function(gpointer cacheData, GTypeClassCacheFunc cacheFunc) c_g_type_remove_class_cache_func;
	typedef void function(gpointer gClass) c_g_type_class_unref_uncached;
	typedef void function(gpointer checkData, GTypeInterfaceCheckFunc checkFunc) c_g_type_add_interface_check;
	typedef void function(gpointer checkData, GTypeInterfaceCheckFunc checkFunc) c_g_type_remove_interface_check;
	typedef GTypeValueTable* function(GType type) c_g_type_value_table_peek;
	
	// gobject.TypePlugin
	
	typedef void function(GTypePlugin* plugin) c_g_type_plugin_use;
	typedef void function(GTypePlugin* plugin) c_g_type_plugin_unuse;
	typedef void function(GTypePlugin* plugin, GType gType, GTypeInfo* info, GTypeValueTable* valueTable) c_g_type_plugin_complete_type_info;
	typedef void function(GTypePlugin* plugin, GType instanceType, GType interfaceType, GInterfaceInfo* info) c_g_type_plugin_complete_interface_info;
	
	// gobject.TypeModule
	
	typedef gboolean function(GTypeModule* modul) c_g_type_module_use;
	typedef void function(GTypeModule* modul) c_g_type_module_unuse;
	typedef void function(GTypeModule* modul, gchar* name) c_g_type_module_set_name;
	typedef GType function(GTypeModule* modul, GType parentType, gchar* typeName, GTypeInfo* typeInfo, GTypeFlags flags) c_g_type_module_register_type;
	typedef void function(GTypeModule* modul, GType instanceType, GType interfaceType, GInterfaceInfo* interfaceInfo) c_g_type_module_add_interface;
	typedef GType function(GTypeModule* modul, gchar* name, GEnumValue* _StaticValues) c_g_type_module_register_enum;
	typedef GType function(GTypeModule* modul, gchar* name, GFlagsValue* _StaticValues) c_g_type_module_register_flags;
	
	// gobject.ObjectG
	
	typedef void function(GObjectClass* oclass, guint propertyId, GParamSpec* pspec) c_g_object_class_install_property;
	typedef GParamSpec* function(GObjectClass* oclass, gchar* propertyName) c_g_object_class_find_property;
	typedef GParamSpec** function(GObjectClass* oclass, guint* nProperties) c_g_object_class_list_properties;
	typedef void function(GObjectClass* oclass, guint propertyId, gchar* name) c_g_object_class_override_property;
	typedef void function(gpointer gIface, GParamSpec* pspec) c_g_object_interface_install_property;
	typedef GParamSpec* function(gpointer gIface, gchar* propertyName) c_g_object_interface_find_property;
	typedef GParamSpec** function(gpointer gIface, guint* nPropertiesP) c_g_object_interface_list_properties;
	typedef gpointer function(GType objectType, gchar* firstPropertyName, ... ) c_g_object_new;
	typedef gpointer function(GType objectType, guint nParameters, GParameter* parameters) c_g_object_newv;
	typedef gpointer function(gpointer object) c_g_object_ref;
	typedef void function(gpointer object) c_g_object_unref;
	typedef gpointer function(gpointer object) c_g_object_ref_sink;
	typedef gboolean function(gpointer object) c_g_object_is_floating;
	typedef void function(GObject* object) c_g_object_force_floating;
	typedef void function(GObject* object, GWeakNotify notify, gpointer data) c_g_object_weak_ref;
	typedef void function(GObject* object, GWeakNotify notify, gpointer data) c_g_object_weak_unref;
	typedef void function(GObject* object, gpointer* weakPointerLocation) c_g_object_add_weak_pointer;
	typedef void function(GObject* object, gpointer* weakPointerLocation) c_g_object_remove_weak_pointer;
	typedef void function(GObject* object, GToggleNotify notify, gpointer data) c_g_object_add_toggle_ref;
	typedef void function(GObject* object, GToggleNotify notify, gpointer data) c_g_object_remove_toggle_ref;
	typedef gpointer function(gpointer object, gchar* signalSpec, ... ) c_g_object_connect;
	typedef void function(gpointer object, gchar* signalSpec, ... ) c_g_object_disconnect;
	typedef void function(gpointer object, gchar* firstPropertyName, ... ) c_g_object_set;
	typedef void function(gpointer object, gchar* firstPropertyName, ... ) c_g_object_get;
	typedef void function(GObject* object, gchar* propertyName) c_g_object_notify;
	typedef void function(GObject* object) c_g_object_freeze_notify;
	typedef void function(GObject* object) c_g_object_thaw_notify;
	typedef gpointer function(GObject* object, gchar* key) c_g_object_get_data;
	typedef void function(GObject* object, gchar* key, gpointer data) c_g_object_set_data;
	typedef void function(GObject* object, gchar* key, gpointer data, GDestroyNotify destroy) c_g_object_set_data_full;
	typedef gpointer function(GObject* object, gchar* key) c_g_object_steal_data;
	typedef gpointer function(GObject* object, GQuark quark) c_g_object_get_qdata;
	typedef void function(GObject* object, GQuark quark, gpointer data) c_g_object_set_qdata;
	typedef void function(GObject* object, GQuark quark, gpointer data, GDestroyNotify destroy) c_g_object_set_qdata_full;
	typedef gpointer function(GObject* object, GQuark quark) c_g_object_steal_qdata;
	typedef void function(GObject* object, gchar* propertyName, GValue* value) c_g_object_set_property;
	typedef void function(GObject* object, gchar* propertyName, GValue* value) c_g_object_get_property;
	typedef GObject* function(GType objectType, gchar* firstPropertyName, va_list varArgs) c_g_object_new_valist;
	typedef void function(GObject* object, gchar* firstPropertyName, va_list varArgs) c_g_object_set_valist;
	typedef void function(GObject* object, gchar* firstPropertyName, va_list varArgs) c_g_object_get_valist;
	typedef void function(GObject* object, GClosure* closure) c_g_object_watch_closure;
	typedef void function(GObject* object) c_g_object_run_dispose;
	
	// gobject.Enums
	
	typedef GEnumValue* function(GEnumClass* enumClass, gint value) c_g_enum_get_value;
	typedef GEnumValue* function(GEnumClass* enumClass, gchar* name) c_g_enum_get_value_by_name;
	typedef GEnumValue* function(GEnumClass* enumClass, gchar* nick) c_g_enum_get_value_by_nick;
	typedef GType function(gchar* name, GEnumValue* _StaticValues) c_g_enum_register_static;
	typedef void function(GType type, GTypeInfo* info, GEnumValue* _Values) c_g_enum_complete_type_info;
	
	// gobject.Flags
	
	typedef GFlagsValue* function(GFlagsClass* flagsClass, guint value) c_g_flags_get_first_value;
	typedef GFlagsValue* function(GFlagsClass* flagsClass, gchar* name) c_g_flags_get_value_by_name;
	typedef GFlagsValue* function(GFlagsClass* flagsClass, gchar* nick) c_g_flags_get_value_by_nick;
	typedef GType function(gchar* name, GFlagsValue* _StaticValues) c_g_flags_register_static;
	typedef void function(GType type, GTypeInfo* info, GFlagsValue* _Values) c_g_flags_complete_type_info;
	
	// gobject.Boxed
	
	typedef gpointer function(GType boxedType, gconstpointer srcBoxed) c_g_boxed_copy;
	typedef void function(GType boxedType, gpointer boxed) c_g_boxed_free;
	typedef GType function(gchar* name, GBoxedCopyFunc boxedCopy, GBoxedFreeFunc boxedFree) c_g_boxed_type_register_static;
	typedef GType function(gchar* name) c_g_pointer_type_register_static;
	
	// gobject.Value
	
	typedef GValue* function(GValue* value, GType gType) c_g_value_init;
	typedef void function(GValue* srcValue, GValue* destValue) c_g_value_copy;
	typedef GValue* function(GValue* value) c_g_value_reset;
	typedef void function(GValue* value) c_g_value_unset;
	typedef void function(GValue* value, gpointer instanc) c_g_value_set_instance;
	typedef gboolean function(GValue* value) c_g_value_fits_pointer;
	typedef gpointer function(GValue* value) c_g_value_peek_pointer;
	typedef gboolean function(GType srcType, GType destType) c_g_value_type_compatible;
	typedef gboolean function(GType srcType, GType destType) c_g_value_type_transformable;
	typedef gboolean function(GValue* srcValue, GValue* destValue) c_g_value_transform;
	typedef void function(GType srcType, GType destType, GValueTransform transformFunc) c_g_value_register_transform_func;
	typedef gchar* function(GValue* value) c_g_strdup_value_contents;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gboolean defaultValue, GParamFlags flags) c_g_param_spec_boolean;
	typedef void function(GValue* value, gboolean vBoolean) c_g_value_set_boolean;
	typedef gboolean function(GValue* value) c_g_value_get_boolean;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gint8 minimum, gint8 maximum, gint8 defaultValue, GParamFlags flags) c_g_param_spec_char;
	typedef void function(GValue* value, gchar vChar) c_g_value_set_char;
	typedef gchar function(GValue* value) c_g_value_get_char;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, guint8 minimum, guint8 maximum, guint8 defaultValue, GParamFlags flags) c_g_param_spec_uchar;
	typedef void function(GValue* value, guchar vUchar) c_g_value_set_uchar;
	typedef guchar function(GValue* value) c_g_value_get_uchar;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gint minimum, gint maximum, gint defaultValue, GParamFlags flags) c_g_param_spec_int;
	typedef void function(GValue* value, gint vInt) c_g_value_set_int;
	typedef gint function(GValue* value) c_g_value_get_int;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, guint minimum, guint maximum, guint defaultValue, GParamFlags flags) c_g_param_spec_uint;
	typedef void function(GValue* value, guint vUint) c_g_value_set_uint;
	typedef guint function(GValue* value) c_g_value_get_uint;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, glong minimum, glong maximum, glong defaultValue, GParamFlags flags) c_g_param_spec_long;
	typedef void function(GValue* value, glong vLong) c_g_value_set_long;
	typedef glong function(GValue* value) c_g_value_get_long;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gulong minimum, gulong maximum, gulong defaultValue, GParamFlags flags) c_g_param_spec_ulong;
	typedef void function(GValue* value, gulong vUlong) c_g_value_set_ulong;
	typedef gulong function(GValue* value) c_g_value_get_ulong;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gint64 minimum, gint64 maximum, gint64 defaultValue, GParamFlags flags) c_g_param_spec_int64;
	typedef void function(GValue* value, gint64 vInt64) c_g_value_set_int64;
	typedef gint64 function(GValue* value) c_g_value_get_int64;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, guint64 minimum, guint64 maximum, guint64 defaultValue, GParamFlags flags) c_g_param_spec_uint64;
	typedef void function(GValue* value, guint64 vUint64) c_g_value_set_uint64;
	typedef guint64 function(GValue* value) c_g_value_get_uint64;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gfloat minimum, gfloat maximum, gfloat defaultValue, GParamFlags flags) c_g_param_spec_float;
	typedef void function(GValue* value, gfloat vFloat) c_g_value_set_float;
	typedef gfloat function(GValue* value) c_g_value_get_float;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gdouble minimum, gdouble maximum, gdouble defaultValue, GParamFlags flags) c_g_param_spec_double;
	typedef void function(GValue* value, gdouble vDouble) c_g_value_set_double;
	typedef gdouble function(GValue* value) c_g_value_get_double;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType enumType, gint defaultValue, GParamFlags flags) c_g_param_spec_enum;
	typedef void function(GValue* value, gint vEnum) c_g_value_set_enum;
	typedef gint function(GValue* value) c_g_value_get_enum;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType flagsType, guint defaultValue, GParamFlags flags) c_g_param_spec_flags;
	typedef void function(GValue* value, guint vFlags) c_g_value_set_flags;
	typedef guint function(GValue* value) c_g_value_get_flags;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gchar* defaultValue, GParamFlags flags) c_g_param_spec_string;
	typedef void function(GValue* value, gchar* vString) c_g_value_set_string;
	typedef void function(GValue* value, gchar* vString) c_g_value_set_static_string;
	typedef void function(GValue* value, gchar* vString) c_g_value_take_string;
	typedef void function(GValue* value, gchar* vString) c_g_value_set_string_take_ownership;
	typedef gchar* function(GValue* value) c_g_value_get_string;
	typedef gchar* function(GValue* value) c_g_value_dup_string;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType paramType, GParamFlags flags) c_g_param_spec_param;
	typedef void function(GValue* value, GParamSpec* param) c_g_value_set_param;
	typedef void function(GValue* value, GParamSpec* param) c_g_value_take_param;
	typedef void function(GValue* value, GParamSpec* param) c_g_value_set_param_take_ownership;
	typedef GParamSpec* function(GValue* value) c_g_value_get_param;
	typedef GParamSpec* function(GValue* value) c_g_value_dup_param;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType boxedType, GParamFlags flags) c_g_param_spec_boxed;
	typedef void function(GValue* value, gconstpointer vBoxed) c_g_value_set_boxed;
	typedef void function(GValue* value, gconstpointer vBoxed) c_g_value_set_static_boxed;
	typedef void function(GValue* value, gconstpointer vBoxed) c_g_value_take_boxed;
	typedef void function(GValue* value, gconstpointer vBoxed) c_g_value_set_boxed_take_ownership;
	typedef gpointer function(GValue* value) c_g_value_get_boxed;
	typedef gpointer function(GValue* value) c_g_value_dup_boxed;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GParamFlags flags) c_g_param_spec_pointer;
	typedef void function(GValue* value, gpointer vPointer) c_g_value_set_pointer;
	typedef gpointer function(GValue* value) c_g_value_get_pointer;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType objectType, GParamFlags flags) c_g_param_spec_object;
	typedef void function(GValue* value, gpointer vObject) c_g_value_set_object;
	typedef void function(GValue* value, gpointer vObject) c_g_value_take_object;
	typedef void function(GValue* value, gpointer vObject) c_g_value_set_object_take_ownership;
	typedef gpointer function(GValue* value) c_g_value_get_object;
	typedef gpointer function(GValue* value) c_g_value_dup_object;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gunichar defaultValue, GParamFlags flags) c_g_param_spec_unichar;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GParamSpec* elementSpec, GParamFlags flags) c_g_param_spec_value_array;
	typedef GParamSpec* function(gchar* name, GParamSpec* overridden) c_g_param_spec_override;
	typedef GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType isAType, GParamFlags flags) c_g_param_spec_gtype;
	typedef GType function(GValue* value) c_g_value_get_gtype;
	typedef void function(GValue* value, GType vGtype) c_g_value_set_gtype;
	
	// gobject.ParamSpec
	
	typedef GParamSpec* function(GParamSpec* pspec) c_g_param_spec_ref;
	typedef void function(GParamSpec* pspec) c_g_param_spec_unref;
	typedef void function(GParamSpec* pspec) c_g_param_spec_sink;
	typedef GParamSpec* function(GParamSpec* pspec) c_g_param_spec_ref_sink;
	typedef void function(GParamSpec* pspec, GValue* value) c_g_param_value_set_default;
	typedef gboolean function(GParamSpec* pspec, GValue* value) c_g_param_value_defaults;
	typedef gboolean function(GParamSpec* pspec, GValue* value) c_g_param_value_validate;
	typedef gboolean function(GParamSpec* pspec, GValue* srcValue, GValue* destValue, gboolean strictValidation) c_g_param_value_convert;
	typedef gint function(GParamSpec* pspec, GValue* value1, GValue* value2) c_g_param_values_cmp;
	typedef gchar* function(GParamSpec* pspec) c_g_param_spec_get_name;
	typedef gchar* function(GParamSpec* pspec) c_g_param_spec_get_nick;
	typedef gchar* function(GParamSpec* pspec) c_g_param_spec_get_blurb;
	typedef gpointer function(GParamSpec* pspec, GQuark quark) c_g_param_spec_get_qdata;
	typedef void function(GParamSpec* pspec, GQuark quark, gpointer data) c_g_param_spec_set_qdata;
	typedef void function(GParamSpec* pspec, GQuark quark, gpointer data, GDestroyNotify destroy) c_g_param_spec_set_qdata_full;
	typedef gpointer function(GParamSpec* pspec, GQuark quark) c_g_param_spec_steal_qdata;
	typedef GParamSpec* function(GParamSpec* pspec) c_g_param_spec_get_redirect_target;
	typedef gpointer function(GType paramType, gchar* name, gchar* nick, gchar* blurb, GParamFlags flags) c_g_param_spec_internal;
	typedef GType function(gchar* name, GParamSpecTypeInfo* pspecInfo) c_g_param_type_register_static;
	
	// gobject.ParamSpecPool
	
	typedef GParamSpecPool* function(gboolean typePrefixing) c_g_param_spec_pool_new;
	typedef void function(GParamSpecPool* pool, GParamSpec* pspec, GType ownerType) c_g_param_spec_pool_insert;
	typedef void function(GParamSpecPool* pool, GParamSpec* pspec) c_g_param_spec_pool_remove;
	typedef GParamSpec* function(GParamSpecPool* pool, gchar* paramName, GType ownerType, gboolean walkAncestors) c_g_param_spec_pool_lookup;
	typedef GParamSpec** function(GParamSpecPool* pool, GType ownerType, guint* nPspecsP) c_g_param_spec_pool_list;
	typedef GList* function(GParamSpecPool* pool, GType ownerType) c_g_param_spec_pool_list_owned;
	
	// gobject.Signals
	
	typedef guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, guint classOffset, GSignalAccumulator accumulator, gpointer accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, ... ) c_g_signal_new;
	typedef guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, GClosure* classClosure, GSignalAccumulator accumulator, gpointer accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, GType* paramTypes) c_g_signal_newv;
	typedef guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, GClosure* classClosure, GSignalAccumulator accumulator, gpointer accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, va_list args) c_g_signal_new_valist;
	typedef void function(guint signalId, GSignalQuery* query) c_g_signal_query;
	typedef guint function(gchar* name, GType itype) c_g_signal_lookup;
	typedef gchar* function(guint signalId) c_g_signal_name;
	typedef guint* function(GType itype, guint* nIds) c_g_signal_list_ids;
	typedef void function(gpointer instanc, guint signalId, GQuark detail, ... ) c_g_signal_emit;
	typedef void function(gpointer instanc, gchar* detailedSignal, ... ) c_g_signal_emit_by_name;
	typedef void function(GValue* instanceAndParams, guint signalId, GQuark detail, GValue* returnValue) c_g_signal_emitv;
	typedef void function(gpointer instanc, guint signalId, GQuark detail, va_list varArgs) c_g_signal_emit_valist;
	typedef gulong function(gpointer instanc, gchar* detailedSignal, GCallback cHandler, gpointer gobject, GConnectFlags connectFlags) c_g_signal_connect_object;
	typedef gulong function(gpointer instanc, gchar* detailedSignal, GCallback cHandler, gpointer data, GClosureNotify destroyData, GConnectFlags connectFlags) c_g_signal_connect_data;
	typedef gulong function(gpointer instanc, gchar* detailedSignal, GClosure* closure, gboolean after) c_g_signal_connect_closure;
	typedef gulong function(gpointer instanc, guint signalId, GQuark detail, GClosure* closure, gboolean after) c_g_signal_connect_closure_by_id;
	typedef void function(gpointer instanc, gulong handlerId) c_g_signal_handler_block;
	typedef void function(gpointer instanc, gulong handlerId) c_g_signal_handler_unblock;
	typedef void function(gpointer instanc, gulong handlerId) c_g_signal_handler_disconnect;
	typedef gulong function(gpointer instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, gpointer func, gpointer data) c_g_signal_handler_find;
	typedef guint function(gpointer instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, gpointer func, gpointer data) c_g_signal_handlers_block_matched;
	typedef guint function(gpointer instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, gpointer func, gpointer data) c_g_signal_handlers_unblock_matched;
	typedef guint function(gpointer instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, gpointer func, gpointer data) c_g_signal_handlers_disconnect_matched;
	typedef gboolean function(gpointer instanc, gulong handlerId) c_g_signal_handler_is_connected;
	typedef gboolean function(gpointer instanc, guint signalId, GQuark detail, gboolean mayBeBlocked) c_g_signal_has_handler_pending;
	typedef void function(gpointer instanc, guint signalId, GQuark detail) c_g_signal_stop_emission;
	typedef void function(gpointer instanc, gchar* detailedSignal) c_g_signal_stop_emission_by_name;
	typedef void function(guint signalId, GType instanceType, GClosure* classClosure) c_g_signal_override_class_closure;
	typedef void function(GValue* instanceAndParams, GValue* returnValue) c_g_signal_chain_from_overridden;
	typedef guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, GCallback classHandler, GSignalAccumulator accumulator, gpointer accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, ... ) c_g_signal_new_class_handler;
	typedef void function(gchar* signalName, GType instanceType, GCallback classHandler) c_g_signal_override_class_handler;
	typedef void function(gpointer instanc, ... ) c_g_signal_chain_from_overridden_handler;
	typedef gulong function(guint signalId, GQuark detail, GSignalEmissionHook hookFunc, gpointer hookData, GDestroyNotify dataDestroy) c_g_signal_add_emission_hook;
	typedef void function(guint signalId, gulong hookId) c_g_signal_remove_emission_hook;
	typedef gboolean function(gchar* detailedSignal, GType itype, guint* signalIdP, GQuark* detailP, gboolean forceDetailQuark) c_g_signal_parse_name;
	typedef GSignalInvocationHint* function(gpointer instanc) c_g_signal_get_invocation_hint;
	typedef GClosure* function(GType itype, guint structOffset) c_g_signal_type_cclosure_new;
	typedef gboolean function(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, gpointer dummy) c_g_signal_accumulator_true_handled;
	
	// gobject.Closure
	
	typedef GClosure* function(guint sizeofClosure, GObject* object) c_g_closure_new_object;
	typedef GClosure* function(GClosure* closure) c_g_closure_ref;
	typedef void function(GClosure* closure) c_g_closure_sink;
	typedef void function(GClosure* closure) c_g_closure_unref;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint) c_g_closure_invoke;
	typedef void function(GClosure* closure) c_g_closure_invalidate;
	typedef void function(GClosure* closure, gpointer notifyData, GClosureNotify notifyFunc) c_g_closure_add_finalize_notifier;
	typedef void function(GClosure* closure, gpointer notifyData, GClosureNotify notifyFunc) c_g_closure_add_invalidate_notifier;
	typedef void function(GClosure* closure, gpointer notifyData, GClosureNotify notifyFunc) c_g_closure_remove_finalize_notifier;
	typedef void function(GClosure* closure, gpointer notifyData, GClosureNotify notifyFunc) c_g_closure_remove_invalidate_notifier;
	typedef GClosure* function(guint sizeofClosure, gpointer data) c_g_closure_new_simple;
	typedef void function(GClosure* closure, GClosureMarshal marshal) c_g_closure_set_marshal;
	typedef void function(GClosure* closure, gpointer preMarshalData, GClosureNotify preMarshalNotify, gpointer postMarshalData, GClosureNotify postMarshalNotify) c_g_closure_add_marshal_guards;
	typedef void function(GClosure* closure, gpointer marshalData, GClosureMarshal metaMarshal) c_g_closure_set_meta_marshal;
	typedef void function(GSource* source, GClosure* closure) c_g_source_set_closure;
	
	// gobject.CClosure
	
	typedef GClosure* function(GCallback callbackFunc, gpointer userData, GClosureNotify destroyData) c_g_cclosure_new;
	typedef GClosure* function(GCallback callbackFunc, gpointer userData, GClosureNotify destroyData) c_g_cclosure_new_swap;
	typedef GClosure* function(GCallback callbackFunc, GObject* object) c_g_cclosure_new_object;
	typedef GClosure* function(GCallback callbackFunc, GObject* object) c_g_cclosure_new_object_swap;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__VOID;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__BOOLEAN;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__CHAR;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__UCHAR;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__INT;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__UINT;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__LONG;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__ULONG;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__ENUM;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__FLAGS;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__FLOAT;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__DOUBLE;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__STRING;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__PARAM;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__BOXED;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__POINTER;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__OBJECT;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_STRING__OBJECT_POINTER;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_VOID__UINT_POINTER;
	typedef void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData) c_g_cclosure_marshal_BOOLEAN__FLAGS;
	
	// gobject.ValueArray
	
	typedef GValue* function(GValueArray* valueArray, guint index) c_g_value_array_get_nth;
	typedef GValueArray* function(guint nPrealloced) c_g_value_array_new;
	typedef GValueArray* function(GValueArray* valueArray) c_g_value_array_copy;
	typedef void function(GValueArray* valueArray) c_g_value_array_free;
	typedef GValueArray* function(GValueArray* valueArray, GValue* value) c_g_value_array_append;
	typedef GValueArray* function(GValueArray* valueArray, GValue* value) c_g_value_array_prepend;
	typedef GValueArray* function(GValueArray* valueArray, guint index, GValue* value) c_g_value_array_insert;
	typedef GValueArray* function(GValueArray* valueArray, guint index) c_g_value_array_remove;
	typedef GValueArray* function(GValueArray* valueArray, GCompareFunc compareFunc) c_g_value_array_sort;
	typedef GValueArray* function(GValueArray* valueArray, GCompareDataFunc compareFunc, gpointer userData) c_g_value_array_sort_with_data;
}

// gobject.Type

c_g_type_init  g_type_init;
c_g_type_init_with_debug_flags  g_type_init_with_debug_flags;
c_g_type_name  g_type_name;
c_g_type_qname  g_type_qname;
c_g_type_from_name  g_type_from_name;
c_g_type_parent  g_type_parent;
c_g_type_depth  g_type_depth;
c_g_type_next_base  g_type_next_base;
c_g_type_is_a  g_type_is_a;
c_g_type_class_ref  g_type_class_ref;
c_g_type_class_peek  g_type_class_peek;
c_g_type_class_peek_static  g_type_class_peek_static;
c_g_type_class_unref  g_type_class_unref;
c_g_type_class_peek_parent  g_type_class_peek_parent;
c_g_type_class_add_private  g_type_class_add_private;
c_g_type_interface_peek  g_type_interface_peek;
c_g_type_interface_peek_parent  g_type_interface_peek_parent;
c_g_type_default_interface_ref  g_type_default_interface_ref;
c_g_type_default_interface_peek  g_type_default_interface_peek;
c_g_type_default_interface_unref  g_type_default_interface_unref;
c_g_type_children  g_type_children;
c_g_type_interfaces  g_type_interfaces;
c_g_type_interface_prerequisites  g_type_interface_prerequisites;
c_g_type_set_qdata  g_type_set_qdata;
c_g_type_get_qdata  g_type_get_qdata;
c_g_type_query  g_type_query;
c_g_type_register_static  g_type_register_static;
c_g_type_register_static_simple  g_type_register_static_simple;
c_g_type_register_dynamic  g_type_register_dynamic;
c_g_type_register_fundamental  g_type_register_fundamental;
c_g_type_add_interface_static  g_type_add_interface_static;
c_g_type_add_interface_dynamic  g_type_add_interface_dynamic;
c_g_type_interface_add_prerequisite  g_type_interface_add_prerequisite;
c_g_type_get_plugin  g_type_get_plugin;
c_g_type_interface_get_plugin  g_type_interface_get_plugin;
c_g_type_fundamental_next  g_type_fundamental_next;
c_g_type_fundamental  g_type_fundamental;
c_g_type_create_instance  g_type_create_instance;
c_g_type_free_instance  g_type_free_instance;
c_g_type_add_class_cache_func  g_type_add_class_cache_func;
c_g_type_remove_class_cache_func  g_type_remove_class_cache_func;
c_g_type_class_unref_uncached  g_type_class_unref_uncached;
c_g_type_add_interface_check  g_type_add_interface_check;
c_g_type_remove_interface_check  g_type_remove_interface_check;
c_g_type_value_table_peek  g_type_value_table_peek;

// gobject.TypePlugin

c_g_type_plugin_use  g_type_plugin_use;
c_g_type_plugin_unuse  g_type_plugin_unuse;
c_g_type_plugin_complete_type_info  g_type_plugin_complete_type_info;
c_g_type_plugin_complete_interface_info  g_type_plugin_complete_interface_info;

// gobject.TypeModule

c_g_type_module_use  g_type_module_use;
c_g_type_module_unuse  g_type_module_unuse;
c_g_type_module_set_name  g_type_module_set_name;
c_g_type_module_register_type  g_type_module_register_type;
c_g_type_module_add_interface  g_type_module_add_interface;
c_g_type_module_register_enum  g_type_module_register_enum;
c_g_type_module_register_flags  g_type_module_register_flags;

// gobject.ObjectG

c_g_object_class_install_property  g_object_class_install_property;
c_g_object_class_find_property  g_object_class_find_property;
c_g_object_class_list_properties  g_object_class_list_properties;
c_g_object_class_override_property  g_object_class_override_property;
c_g_object_interface_install_property  g_object_interface_install_property;
c_g_object_interface_find_property  g_object_interface_find_property;
c_g_object_interface_list_properties  g_object_interface_list_properties;
c_g_object_new  g_object_new;
c_g_object_newv  g_object_newv;
c_g_object_ref  g_object_ref;
c_g_object_unref  g_object_unref;
c_g_object_ref_sink  g_object_ref_sink;
c_g_object_is_floating  g_object_is_floating;
c_g_object_force_floating  g_object_force_floating;
c_g_object_weak_ref  g_object_weak_ref;
c_g_object_weak_unref  g_object_weak_unref;
c_g_object_add_weak_pointer  g_object_add_weak_pointer;
c_g_object_remove_weak_pointer  g_object_remove_weak_pointer;
c_g_object_add_toggle_ref  g_object_add_toggle_ref;
c_g_object_remove_toggle_ref  g_object_remove_toggle_ref;
c_g_object_connect  g_object_connect;
c_g_object_disconnect  g_object_disconnect;
c_g_object_set  g_object_set;
c_g_object_get  g_object_get;
c_g_object_notify  g_object_notify;
c_g_object_freeze_notify  g_object_freeze_notify;
c_g_object_thaw_notify  g_object_thaw_notify;
c_g_object_get_data  g_object_get_data;
c_g_object_set_data  g_object_set_data;
c_g_object_set_data_full  g_object_set_data_full;
c_g_object_steal_data  g_object_steal_data;
c_g_object_get_qdata  g_object_get_qdata;
c_g_object_set_qdata  g_object_set_qdata;
c_g_object_set_qdata_full  g_object_set_qdata_full;
c_g_object_steal_qdata  g_object_steal_qdata;
c_g_object_set_property  g_object_set_property;
c_g_object_get_property  g_object_get_property;
c_g_object_new_valist  g_object_new_valist;
c_g_object_set_valist  g_object_set_valist;
c_g_object_get_valist  g_object_get_valist;
c_g_object_watch_closure  g_object_watch_closure;
c_g_object_run_dispose  g_object_run_dispose;

// gobject.Enums

c_g_enum_get_value  g_enum_get_value;
c_g_enum_get_value_by_name  g_enum_get_value_by_name;
c_g_enum_get_value_by_nick  g_enum_get_value_by_nick;
c_g_enum_register_static  g_enum_register_static;
c_g_enum_complete_type_info  g_enum_complete_type_info;

// gobject.Flags

c_g_flags_get_first_value  g_flags_get_first_value;
c_g_flags_get_value_by_name  g_flags_get_value_by_name;
c_g_flags_get_value_by_nick  g_flags_get_value_by_nick;
c_g_flags_register_static  g_flags_register_static;
c_g_flags_complete_type_info  g_flags_complete_type_info;

// gobject.Boxed

c_g_boxed_copy  g_boxed_copy;
c_g_boxed_free  g_boxed_free;
c_g_boxed_type_register_static  g_boxed_type_register_static;
c_g_pointer_type_register_static  g_pointer_type_register_static;

// gobject.Value

c_g_value_init  g_value_init;
c_g_value_copy  g_value_copy;
c_g_value_reset  g_value_reset;
c_g_value_unset  g_value_unset;
c_g_value_set_instance  g_value_set_instance;
c_g_value_fits_pointer  g_value_fits_pointer;
c_g_value_peek_pointer  g_value_peek_pointer;
c_g_value_type_compatible  g_value_type_compatible;
c_g_value_type_transformable  g_value_type_transformable;
c_g_value_transform  g_value_transform;
c_g_value_register_transform_func  g_value_register_transform_func;
c_g_strdup_value_contents  g_strdup_value_contents;
c_g_param_spec_boolean  g_param_spec_boolean;
c_g_value_set_boolean  g_value_set_boolean;
c_g_value_get_boolean  g_value_get_boolean;
c_g_param_spec_char  g_param_spec_char;
c_g_value_set_char  g_value_set_char;
c_g_value_get_char  g_value_get_char;
c_g_param_spec_uchar  g_param_spec_uchar;
c_g_value_set_uchar  g_value_set_uchar;
c_g_value_get_uchar  g_value_get_uchar;
c_g_param_spec_int  g_param_spec_int;
c_g_value_set_int  g_value_set_int;
c_g_value_get_int  g_value_get_int;
c_g_param_spec_uint  g_param_spec_uint;
c_g_value_set_uint  g_value_set_uint;
c_g_value_get_uint  g_value_get_uint;
c_g_param_spec_long  g_param_spec_long;
c_g_value_set_long  g_value_set_long;
c_g_value_get_long  g_value_get_long;
c_g_param_spec_ulong  g_param_spec_ulong;
c_g_value_set_ulong  g_value_set_ulong;
c_g_value_get_ulong  g_value_get_ulong;
c_g_param_spec_int64  g_param_spec_int64;
c_g_value_set_int64  g_value_set_int64;
c_g_value_get_int64  g_value_get_int64;
c_g_param_spec_uint64  g_param_spec_uint64;
c_g_value_set_uint64  g_value_set_uint64;
c_g_value_get_uint64  g_value_get_uint64;
c_g_param_spec_float  g_param_spec_float;
c_g_value_set_float  g_value_set_float;
c_g_value_get_float  g_value_get_float;
c_g_param_spec_double  g_param_spec_double;
c_g_value_set_double  g_value_set_double;
c_g_value_get_double  g_value_get_double;
c_g_param_spec_enum  g_param_spec_enum;
c_g_value_set_enum  g_value_set_enum;
c_g_value_get_enum  g_value_get_enum;
c_g_param_spec_flags  g_param_spec_flags;
c_g_value_set_flags  g_value_set_flags;
c_g_value_get_flags  g_value_get_flags;
c_g_param_spec_string  g_param_spec_string;
c_g_value_set_string  g_value_set_string;
c_g_value_set_static_string  g_value_set_static_string;
c_g_value_take_string  g_value_take_string;
c_g_value_set_string_take_ownership  g_value_set_string_take_ownership;
c_g_value_get_string  g_value_get_string;
c_g_value_dup_string  g_value_dup_string;
c_g_param_spec_param  g_param_spec_param;
c_g_value_set_param  g_value_set_param;
c_g_value_take_param  g_value_take_param;
c_g_value_set_param_take_ownership  g_value_set_param_take_ownership;
c_g_value_get_param  g_value_get_param;
c_g_value_dup_param  g_value_dup_param;
c_g_param_spec_boxed  g_param_spec_boxed;
c_g_value_set_boxed  g_value_set_boxed;
c_g_value_set_static_boxed  g_value_set_static_boxed;
c_g_value_take_boxed  g_value_take_boxed;
c_g_value_set_boxed_take_ownership  g_value_set_boxed_take_ownership;
c_g_value_get_boxed  g_value_get_boxed;
c_g_value_dup_boxed  g_value_dup_boxed;
c_g_param_spec_pointer  g_param_spec_pointer;
c_g_value_set_pointer  g_value_set_pointer;
c_g_value_get_pointer  g_value_get_pointer;
c_g_param_spec_object  g_param_spec_object;
c_g_value_set_object  g_value_set_object;
c_g_value_take_object  g_value_take_object;
c_g_value_set_object_take_ownership  g_value_set_object_take_ownership;
c_g_value_get_object  g_value_get_object;
c_g_value_dup_object  g_value_dup_object;
c_g_param_spec_unichar  g_param_spec_unichar;
c_g_param_spec_value_array  g_param_spec_value_array;
c_g_param_spec_override  g_param_spec_override;
c_g_param_spec_gtype  g_param_spec_gtype;
c_g_value_get_gtype  g_value_get_gtype;
c_g_value_set_gtype  g_value_set_gtype;

// gobject.ParamSpec

c_g_param_spec_ref  g_param_spec_ref;
c_g_param_spec_unref  g_param_spec_unref;
c_g_param_spec_sink  g_param_spec_sink;
c_g_param_spec_ref_sink  g_param_spec_ref_sink;
c_g_param_value_set_default  g_param_value_set_default;
c_g_param_value_defaults  g_param_value_defaults;
c_g_param_value_validate  g_param_value_validate;
c_g_param_value_convert  g_param_value_convert;
c_g_param_values_cmp  g_param_values_cmp;
c_g_param_spec_get_name  g_param_spec_get_name;
c_g_param_spec_get_nick  g_param_spec_get_nick;
c_g_param_spec_get_blurb  g_param_spec_get_blurb;
c_g_param_spec_get_qdata  g_param_spec_get_qdata;
c_g_param_spec_set_qdata  g_param_spec_set_qdata;
c_g_param_spec_set_qdata_full  g_param_spec_set_qdata_full;
c_g_param_spec_steal_qdata  g_param_spec_steal_qdata;
c_g_param_spec_get_redirect_target  g_param_spec_get_redirect_target;
c_g_param_spec_internal  g_param_spec_internal;
c_g_param_type_register_static  g_param_type_register_static;

// gobject.ParamSpecPool

c_g_param_spec_pool_new  g_param_spec_pool_new;
c_g_param_spec_pool_insert  g_param_spec_pool_insert;
c_g_param_spec_pool_remove  g_param_spec_pool_remove;
c_g_param_spec_pool_lookup  g_param_spec_pool_lookup;
c_g_param_spec_pool_list  g_param_spec_pool_list;
c_g_param_spec_pool_list_owned  g_param_spec_pool_list_owned;

// gobject.Signals

c_g_signal_new  g_signal_new;
c_g_signal_newv  g_signal_newv;
c_g_signal_new_valist  g_signal_new_valist;
c_g_signal_query  g_signal_query;
c_g_signal_lookup  g_signal_lookup;
c_g_signal_name  g_signal_name;
c_g_signal_list_ids  g_signal_list_ids;
c_g_signal_emit  g_signal_emit;
c_g_signal_emit_by_name  g_signal_emit_by_name;
c_g_signal_emitv  g_signal_emitv;
c_g_signal_emit_valist  g_signal_emit_valist;
c_g_signal_connect_object  g_signal_connect_object;
c_g_signal_connect_data  g_signal_connect_data;
c_g_signal_connect_closure  g_signal_connect_closure;
c_g_signal_connect_closure_by_id  g_signal_connect_closure_by_id;
c_g_signal_handler_block  g_signal_handler_block;
c_g_signal_handler_unblock  g_signal_handler_unblock;
c_g_signal_handler_disconnect  g_signal_handler_disconnect;
c_g_signal_handler_find  g_signal_handler_find;
c_g_signal_handlers_block_matched  g_signal_handlers_block_matched;
c_g_signal_handlers_unblock_matched  g_signal_handlers_unblock_matched;
c_g_signal_handlers_disconnect_matched  g_signal_handlers_disconnect_matched;
c_g_signal_handler_is_connected  g_signal_handler_is_connected;
c_g_signal_has_handler_pending  g_signal_has_handler_pending;
c_g_signal_stop_emission  g_signal_stop_emission;
c_g_signal_stop_emission_by_name  g_signal_stop_emission_by_name;
c_g_signal_override_class_closure  g_signal_override_class_closure;
c_g_signal_chain_from_overridden  g_signal_chain_from_overridden;
c_g_signal_new_class_handler  g_signal_new_class_handler;
c_g_signal_override_class_handler  g_signal_override_class_handler;
c_g_signal_chain_from_overridden_handler  g_signal_chain_from_overridden_handler;
c_g_signal_add_emission_hook  g_signal_add_emission_hook;
c_g_signal_remove_emission_hook  g_signal_remove_emission_hook;
c_g_signal_parse_name  g_signal_parse_name;
c_g_signal_get_invocation_hint  g_signal_get_invocation_hint;
c_g_signal_type_cclosure_new  g_signal_type_cclosure_new;
c_g_signal_accumulator_true_handled  g_signal_accumulator_true_handled;

// gobject.Closure

c_g_closure_new_object  g_closure_new_object;
c_g_closure_ref  g_closure_ref;
c_g_closure_sink  g_closure_sink;
c_g_closure_unref  g_closure_unref;
c_g_closure_invoke  g_closure_invoke;
c_g_closure_invalidate  g_closure_invalidate;
c_g_closure_add_finalize_notifier  g_closure_add_finalize_notifier;
c_g_closure_add_invalidate_notifier  g_closure_add_invalidate_notifier;
c_g_closure_remove_finalize_notifier  g_closure_remove_finalize_notifier;
c_g_closure_remove_invalidate_notifier  g_closure_remove_invalidate_notifier;
c_g_closure_new_simple  g_closure_new_simple;
c_g_closure_set_marshal  g_closure_set_marshal;
c_g_closure_add_marshal_guards  g_closure_add_marshal_guards;
c_g_closure_set_meta_marshal  g_closure_set_meta_marshal;
c_g_source_set_closure  g_source_set_closure;

// gobject.CClosure

c_g_cclosure_new  g_cclosure_new;
c_g_cclosure_new_swap  g_cclosure_new_swap;
c_g_cclosure_new_object  g_cclosure_new_object;
c_g_cclosure_new_object_swap  g_cclosure_new_object_swap;
c_g_cclosure_marshal_VOID__VOID  g_cclosure_marshal_VOID__VOID;
c_g_cclosure_marshal_VOID__BOOLEAN  g_cclosure_marshal_VOID__BOOLEAN;
c_g_cclosure_marshal_VOID__CHAR  g_cclosure_marshal_VOID__CHAR;
c_g_cclosure_marshal_VOID__UCHAR  g_cclosure_marshal_VOID__UCHAR;
c_g_cclosure_marshal_VOID__INT  g_cclosure_marshal_VOID__INT;
c_g_cclosure_marshal_VOID__UINT  g_cclosure_marshal_VOID__UINT;
c_g_cclosure_marshal_VOID__LONG  g_cclosure_marshal_VOID__LONG;
c_g_cclosure_marshal_VOID__ULONG  g_cclosure_marshal_VOID__ULONG;
c_g_cclosure_marshal_VOID__ENUM  g_cclosure_marshal_VOID__ENUM;
c_g_cclosure_marshal_VOID__FLAGS  g_cclosure_marshal_VOID__FLAGS;
c_g_cclosure_marshal_VOID__FLOAT  g_cclosure_marshal_VOID__FLOAT;
c_g_cclosure_marshal_VOID__DOUBLE  g_cclosure_marshal_VOID__DOUBLE;
c_g_cclosure_marshal_VOID__STRING  g_cclosure_marshal_VOID__STRING;
c_g_cclosure_marshal_VOID__PARAM  g_cclosure_marshal_VOID__PARAM;
c_g_cclosure_marshal_VOID__BOXED  g_cclosure_marshal_VOID__BOXED;
c_g_cclosure_marshal_VOID__POINTER  g_cclosure_marshal_VOID__POINTER;
c_g_cclosure_marshal_VOID__OBJECT  g_cclosure_marshal_VOID__OBJECT;
c_g_cclosure_marshal_STRING__OBJECT_POINTER  g_cclosure_marshal_STRING__OBJECT_POINTER;
c_g_cclosure_marshal_VOID__UINT_POINTER  g_cclosure_marshal_VOID__UINT_POINTER;
c_g_cclosure_marshal_BOOLEAN__FLAGS  g_cclosure_marshal_BOOLEAN__FLAGS;

// gobject.ValueArray

c_g_value_array_get_nth  g_value_array_get_nth;
c_g_value_array_new  g_value_array_new;
c_g_value_array_copy  g_value_array_copy;
c_g_value_array_free  g_value_array_free;
c_g_value_array_append  g_value_array_append;
c_g_value_array_prepend  g_value_array_prepend;
c_g_value_array_insert  g_value_array_insert;
c_g_value_array_remove  g_value_array_remove;
c_g_value_array_sort  g_value_array_sort;
c_g_value_array_sort_with_data  g_value_array_sort_with_data;
