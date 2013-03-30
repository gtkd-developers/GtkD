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


module gtkc.gobject;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gobjecttypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// gobject.Type

	Linker.link(g_type_init, \"g_type_init\", LIBRARY.GOBJECT);
	Linker.link(g_type_init_with_debug_flags, \"g_type_init_with_debug_flags\", LIBRARY.GOBJECT);
	Linker.link(g_type_name, \"g_type_name\", LIBRARY.GOBJECT);
	Linker.link(g_type_qname, \"g_type_qname\", LIBRARY.GOBJECT);
	Linker.link(g_type_from_name, \"g_type_from_name\", LIBRARY.GOBJECT);
	Linker.link(g_type_parent, \"g_type_parent\", LIBRARY.GOBJECT);
	Linker.link(g_type_depth, \"g_type_depth\", LIBRARY.GOBJECT);
	Linker.link(g_type_next_base, \"g_type_next_base\", LIBRARY.GOBJECT);
	Linker.link(g_type_is_a, \"g_type_is_a\", LIBRARY.GOBJECT);
	Linker.link(g_type_class_ref, \"g_type_class_ref\", LIBRARY.GOBJECT);
	Linker.link(g_type_class_peek, \"g_type_class_peek\", LIBRARY.GOBJECT);
	Linker.link(g_type_class_peek_static, \"g_type_class_peek_static\", LIBRARY.GOBJECT);
	Linker.link(g_type_class_unref, \"g_type_class_unref\", LIBRARY.GOBJECT);
	Linker.link(g_type_class_peek_parent, \"g_type_class_peek_parent\", LIBRARY.GOBJECT);
	Linker.link(g_type_class_add_private, \"g_type_class_add_private\", LIBRARY.GOBJECT);
	Linker.link(g_type_add_class_private, \"g_type_add_class_private\", LIBRARY.GOBJECT);
	Linker.link(g_type_interface_peek, \"g_type_interface_peek\", LIBRARY.GOBJECT);
	Linker.link(g_type_interface_peek_parent, \"g_type_interface_peek_parent\", LIBRARY.GOBJECT);
	Linker.link(g_type_default_interface_ref, \"g_type_default_interface_ref\", LIBRARY.GOBJECT);
	Linker.link(g_type_default_interface_peek, \"g_type_default_interface_peek\", LIBRARY.GOBJECT);
	Linker.link(g_type_default_interface_unref, \"g_type_default_interface_unref\", LIBRARY.GOBJECT);
	Linker.link(g_type_children, \"g_type_children\", LIBRARY.GOBJECT);
	Linker.link(g_type_interfaces, \"g_type_interfaces\", LIBRARY.GOBJECT);
	Linker.link(g_type_interface_prerequisites, \"g_type_interface_prerequisites\", LIBRARY.GOBJECT);
	Linker.link(g_type_set_qdata, \"g_type_set_qdata\", LIBRARY.GOBJECT);
	Linker.link(g_type_get_qdata, \"g_type_get_qdata\", LIBRARY.GOBJECT);
	Linker.link(g_type_query, \"g_type_query\", LIBRARY.GOBJECT);
	Linker.link(g_type_register_static, \"g_type_register_static\", LIBRARY.GOBJECT);
	Linker.link(g_type_register_static_simple, \"g_type_register_static_simple\", LIBRARY.GOBJECT);
	Linker.link(g_type_register_dynamic, \"g_type_register_dynamic\", LIBRARY.GOBJECT);
	Linker.link(g_type_register_fundamental, \"g_type_register_fundamental\", LIBRARY.GOBJECT);
	Linker.link(g_type_add_interface_static, \"g_type_add_interface_static\", LIBRARY.GOBJECT);
	Linker.link(g_type_add_interface_dynamic, \"g_type_add_interface_dynamic\", LIBRARY.GOBJECT);
	Linker.link(g_type_interface_add_prerequisite, \"g_type_interface_add_prerequisite\", LIBRARY.GOBJECT);
	Linker.link(g_type_get_plugin, \"g_type_get_plugin\", LIBRARY.GOBJECT);
	Linker.link(g_type_interface_get_plugin, \"g_type_interface_get_plugin\", LIBRARY.GOBJECT);
	Linker.link(g_type_fundamental_next, \"g_type_fundamental_next\", LIBRARY.GOBJECT);
	Linker.link(g_type_fundamental, \"g_type_fundamental\", LIBRARY.GOBJECT);
	Linker.link(g_type_create_instance, \"g_type_create_instance\", LIBRARY.GOBJECT);
	Linker.link(g_type_free_instance, \"g_type_free_instance\", LIBRARY.GOBJECT);
	Linker.link(g_type_add_class_cache_func, \"g_type_add_class_cache_func\", LIBRARY.GOBJECT);
	Linker.link(g_type_remove_class_cache_func, \"g_type_remove_class_cache_func\", LIBRARY.GOBJECT);
	Linker.link(g_type_class_unref_uncached, \"g_type_class_unref_uncached\", LIBRARY.GOBJECT);
	Linker.link(g_type_add_interface_check, \"g_type_add_interface_check\", LIBRARY.GOBJECT);
	Linker.link(g_type_remove_interface_check, \"g_type_remove_interface_check\", LIBRARY.GOBJECT);
	Linker.link(g_type_value_table_peek, \"g_type_value_table_peek\", LIBRARY.GOBJECT);
	Linker.link(g_type_ensure, \"g_type_ensure\", LIBRARY.GOBJECT);
	Linker.link(g_type_get_type_registration_serial, \"g_type_get_type_registration_serial\", LIBRARY.GOBJECT);

	// gobject.TypePlugin

	Linker.link(g_type_plugin_use, \"g_type_plugin_use\", LIBRARY.GOBJECT);
	Linker.link(g_type_plugin_unuse, \"g_type_plugin_unuse\", LIBRARY.GOBJECT);
	Linker.link(g_type_plugin_complete_type_info, \"g_type_plugin_complete_type_info\", LIBRARY.GOBJECT);
	Linker.link(g_type_plugin_complete_interface_info, \"g_type_plugin_complete_interface_info\", LIBRARY.GOBJECT);

	// gobject.TypeModule

	Linker.link(g_type_module_use, \"g_type_module_use\", LIBRARY.GOBJECT);
	Linker.link(g_type_module_unuse, \"g_type_module_unuse\", LIBRARY.GOBJECT);
	Linker.link(g_type_module_set_name, \"g_type_module_set_name\", LIBRARY.GOBJECT);
	Linker.link(g_type_module_register_type, \"g_type_module_register_type\", LIBRARY.GOBJECT);
	Linker.link(g_type_module_add_interface, \"g_type_module_add_interface\", LIBRARY.GOBJECT);
	Linker.link(g_type_module_register_enum, \"g_type_module_register_enum\", LIBRARY.GOBJECT);
	Linker.link(g_type_module_register_flags, \"g_type_module_register_flags\", LIBRARY.GOBJECT);

	// gobject.ObjectG

	Linker.link(g_object_class_install_property, \"g_object_class_install_property\", LIBRARY.GOBJECT);
	Linker.link(g_object_class_install_properties, \"g_object_class_install_properties\", LIBRARY.GOBJECT);
	Linker.link(g_object_class_find_property, \"g_object_class_find_property\", LIBRARY.GOBJECT);
	Linker.link(g_object_class_list_properties, \"g_object_class_list_properties\", LIBRARY.GOBJECT);
	Linker.link(g_object_class_override_property, \"g_object_class_override_property\", LIBRARY.GOBJECT);
	Linker.link(g_object_interface_install_property, \"g_object_interface_install_property\", LIBRARY.GOBJECT);
	Linker.link(g_object_interface_find_property, \"g_object_interface_find_property\", LIBRARY.GOBJECT);
	Linker.link(g_object_interface_list_properties, \"g_object_interface_list_properties\", LIBRARY.GOBJECT);
	Linker.link(g_object_new, \"g_object_new\", LIBRARY.GOBJECT);
	Linker.link(g_object_newv, \"g_object_newv\", LIBRARY.GOBJECT);
	Linker.link(g_object_ref, \"g_object_ref\", LIBRARY.GOBJECT);
	Linker.link(g_object_unref, \"g_object_unref\", LIBRARY.GOBJECT);
	Linker.link(g_object_ref_sink, \"g_object_ref_sink\", LIBRARY.GOBJECT);
	Linker.link(g_clear_object, \"g_clear_object\", LIBRARY.GOBJECT);
	Linker.link(g_object_is_floating, \"g_object_is_floating\", LIBRARY.GOBJECT);
	Linker.link(g_object_force_floating, \"g_object_force_floating\", LIBRARY.GOBJECT);
	Linker.link(g_object_weak_ref, \"g_object_weak_ref\", LIBRARY.GOBJECT);
	Linker.link(g_object_weak_unref, \"g_object_weak_unref\", LIBRARY.GOBJECT);
	Linker.link(g_object_add_weak_pointer, \"g_object_add_weak_pointer\", LIBRARY.GOBJECT);
	Linker.link(g_object_remove_weak_pointer, \"g_object_remove_weak_pointer\", LIBRARY.GOBJECT);
	Linker.link(g_object_add_toggle_ref, \"g_object_add_toggle_ref\", LIBRARY.GOBJECT);
	Linker.link(g_object_remove_toggle_ref, \"g_object_remove_toggle_ref\", LIBRARY.GOBJECT);
	Linker.link(g_object_connect, \"g_object_connect\", LIBRARY.GOBJECT);
	Linker.link(g_object_disconnect, \"g_object_disconnect\", LIBRARY.GOBJECT);
	Linker.link(g_object_set, \"g_object_set\", LIBRARY.GOBJECT);
	Linker.link(g_object_get, \"g_object_get\", LIBRARY.GOBJECT);
	Linker.link(g_object_notify, \"g_object_notify\", LIBRARY.GOBJECT);
	Linker.link(g_object_notify_by_pspec, \"g_object_notify_by_pspec\", LIBRARY.GOBJECT);
	Linker.link(g_object_freeze_notify, \"g_object_freeze_notify\", LIBRARY.GOBJECT);
	Linker.link(g_object_thaw_notify, \"g_object_thaw_notify\", LIBRARY.GOBJECT);
	Linker.link(g_object_get_data, \"g_object_get_data\", LIBRARY.GOBJECT);
	Linker.link(g_object_set_data, \"g_object_set_data\", LIBRARY.GOBJECT);
	Linker.link(g_object_set_data_full, \"g_object_set_data_full\", LIBRARY.GOBJECT);
	Linker.link(g_object_steal_data, \"g_object_steal_data\", LIBRARY.GOBJECT);
	Linker.link(g_object_dup_data, \"g_object_dup_data\", LIBRARY.GOBJECT);
	Linker.link(g_object_replace_data, \"g_object_replace_data\", LIBRARY.GOBJECT);
	Linker.link(g_object_get_qdata, \"g_object_get_qdata\", LIBRARY.GOBJECT);
	Linker.link(g_object_set_qdata, \"g_object_set_qdata\", LIBRARY.GOBJECT);
	Linker.link(g_object_set_qdata_full, \"g_object_set_qdata_full\", LIBRARY.GOBJECT);
	Linker.link(g_object_steal_qdata, \"g_object_steal_qdata\", LIBRARY.GOBJECT);
	Linker.link(g_object_dup_qdata, \"g_object_dup_qdata\", LIBRARY.GOBJECT);
	Linker.link(g_object_replace_qdata, \"g_object_replace_qdata\", LIBRARY.GOBJECT);
	Linker.link(g_object_set_property, \"g_object_set_property\", LIBRARY.GOBJECT);
	Linker.link(g_object_get_property, \"g_object_get_property\", LIBRARY.GOBJECT);
	Linker.link(g_object_new_valist, \"g_object_new_valist\", LIBRARY.GOBJECT);
	Linker.link(g_object_set_valist, \"g_object_set_valist\", LIBRARY.GOBJECT);
	Linker.link(g_object_get_valist, \"g_object_get_valist\", LIBRARY.GOBJECT);
	Linker.link(g_object_watch_closure, \"g_object_watch_closure\", LIBRARY.GOBJECT);
	Linker.link(g_object_run_dispose, \"g_object_run_dispose\", LIBRARY.GOBJECT);

	// gobject.WeakRef

	Linker.link(g_weak_ref_init, \"g_weak_ref_init\", LIBRARY.GOBJECT);
	Linker.link(g_weak_ref_clear, \"g_weak_ref_clear\", LIBRARY.GOBJECT);
	Linker.link(g_weak_ref_get, \"g_weak_ref_get\", LIBRARY.GOBJECT);
	Linker.link(g_weak_ref_set, \"g_weak_ref_set\", LIBRARY.GOBJECT);

	// gobject.Enums

	Linker.link(g_enum_get_value, \"g_enum_get_value\", LIBRARY.GOBJECT);
	Linker.link(g_enum_get_value_by_name, \"g_enum_get_value_by_name\", LIBRARY.GOBJECT);
	Linker.link(g_enum_get_value_by_nick, \"g_enum_get_value_by_nick\", LIBRARY.GOBJECT);
	Linker.link(g_enum_register_static, \"g_enum_register_static\", LIBRARY.GOBJECT);
	Linker.link(g_enum_complete_type_info, \"g_enum_complete_type_info\", LIBRARY.GOBJECT);

	// gobject.Flags

	Linker.link(g_flags_get_first_value, \"g_flags_get_first_value\", LIBRARY.GOBJECT);
	Linker.link(g_flags_get_value_by_name, \"g_flags_get_value_by_name\", LIBRARY.GOBJECT);
	Linker.link(g_flags_get_value_by_nick, \"g_flags_get_value_by_nick\", LIBRARY.GOBJECT);
	Linker.link(g_flags_register_static, \"g_flags_register_static\", LIBRARY.GOBJECT);
	Linker.link(g_flags_complete_type_info, \"g_flags_complete_type_info\", LIBRARY.GOBJECT);

	// gobject.Boxed

	Linker.link(g_boxed_copy, \"g_boxed_copy\", LIBRARY.GOBJECT);
	Linker.link(g_boxed_free, \"g_boxed_free\", LIBRARY.GOBJECT);
	Linker.link(g_boxed_type_register_static, \"g_boxed_type_register_static\", LIBRARY.GOBJECT);
	Linker.link(g_pointer_type_register_static, \"g_pointer_type_register_static\", LIBRARY.GOBJECT);

	// gobject.Value

	Linker.link(g_value_init, \"g_value_init\", LIBRARY.GOBJECT);
	Linker.link(g_value_copy, \"g_value_copy\", LIBRARY.GOBJECT);
	Linker.link(g_value_reset, \"g_value_reset\", LIBRARY.GOBJECT);
	Linker.link(g_value_unset, \"g_value_unset\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_instance, \"g_value_set_instance\", LIBRARY.GOBJECT);
	Linker.link(g_value_fits_pointer, \"g_value_fits_pointer\", LIBRARY.GOBJECT);
	Linker.link(g_value_peek_pointer, \"g_value_peek_pointer\", LIBRARY.GOBJECT);
	Linker.link(g_value_type_compatible, \"g_value_type_compatible\", LIBRARY.GOBJECT);
	Linker.link(g_value_type_transformable, \"g_value_type_transformable\", LIBRARY.GOBJECT);
	Linker.link(g_value_transform, \"g_value_transform\", LIBRARY.GOBJECT);
	Linker.link(g_value_register_transform_func, \"g_value_register_transform_func\", LIBRARY.GOBJECT);
	Linker.link(g_strdup_value_contents, \"g_strdup_value_contents\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_boolean, \"g_param_spec_boolean\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_boolean, \"g_value_set_boolean\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_boolean, \"g_value_get_boolean\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_char, \"g_param_spec_char\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_char, \"g_value_set_char\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_char, \"g_value_get_char\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_schar, \"g_value_get_schar\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_schar, \"g_value_set_schar\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_uchar, \"g_param_spec_uchar\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_uchar, \"g_value_set_uchar\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_uchar, \"g_value_get_uchar\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_int, \"g_param_spec_int\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_int, \"g_value_set_int\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_int, \"g_value_get_int\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_uint, \"g_param_spec_uint\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_uint, \"g_value_set_uint\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_uint, \"g_value_get_uint\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_long, \"g_param_spec_long\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_long, \"g_value_set_long\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_long, \"g_value_get_long\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_ulong, \"g_param_spec_ulong\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_ulong, \"g_value_set_ulong\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_ulong, \"g_value_get_ulong\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_int64, \"g_param_spec_int64\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_int64, \"g_value_set_int64\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_int64, \"g_value_get_int64\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_uint64, \"g_param_spec_uint64\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_uint64, \"g_value_set_uint64\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_uint64, \"g_value_get_uint64\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_float, \"g_param_spec_float\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_float, \"g_value_set_float\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_float, \"g_value_get_float\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_double, \"g_param_spec_double\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_double, \"g_value_set_double\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_double, \"g_value_get_double\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_enum, \"g_param_spec_enum\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_enum, \"g_value_set_enum\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_enum, \"g_value_get_enum\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_flags, \"g_param_spec_flags\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_flags, \"g_value_set_flags\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_flags, \"g_value_get_flags\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_string, \"g_param_spec_string\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_string, \"g_value_set_string\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_static_string, \"g_value_set_static_string\", LIBRARY.GOBJECT);
	Linker.link(g_value_take_string, \"g_value_take_string\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_string_take_ownership, \"g_value_set_string_take_ownership\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_string, \"g_value_get_string\", LIBRARY.GOBJECT);
	Linker.link(g_value_dup_string, \"g_value_dup_string\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_param, \"g_param_spec_param\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_param, \"g_value_set_param\", LIBRARY.GOBJECT);
	Linker.link(g_value_take_param, \"g_value_take_param\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_param_take_ownership, \"g_value_set_param_take_ownership\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_param, \"g_value_get_param\", LIBRARY.GOBJECT);
	Linker.link(g_value_dup_param, \"g_value_dup_param\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_boxed, \"g_param_spec_boxed\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_boxed, \"g_value_set_boxed\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_static_boxed, \"g_value_set_static_boxed\", LIBRARY.GOBJECT);
	Linker.link(g_value_take_boxed, \"g_value_take_boxed\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_boxed_take_ownership, \"g_value_set_boxed_take_ownership\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_boxed, \"g_value_get_boxed\", LIBRARY.GOBJECT);
	Linker.link(g_value_dup_boxed, \"g_value_dup_boxed\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pointer, \"g_param_spec_pointer\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_pointer, \"g_value_set_pointer\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_pointer, \"g_value_get_pointer\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_object, \"g_param_spec_object\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_object, \"g_value_set_object\", LIBRARY.GOBJECT);
	Linker.link(g_value_take_object, \"g_value_take_object\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_object_take_ownership, \"g_value_set_object_take_ownership\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_object, \"g_value_get_object\", LIBRARY.GOBJECT);
	Linker.link(g_value_dup_object, \"g_value_dup_object\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_unichar, \"g_param_spec_unichar\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_value_array, \"g_param_spec_value_array\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_override, \"g_param_spec_override\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_gtype, \"g_param_spec_gtype\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_gtype, \"g_value_get_gtype\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_gtype, \"g_value_set_gtype\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_variant, \"g_param_spec_variant\", LIBRARY.GOBJECT);
	Linker.link(g_value_get_variant, \"g_value_get_variant\", LIBRARY.GOBJECT);
	Linker.link(g_value_dup_variant, \"g_value_dup_variant\", LIBRARY.GOBJECT);
	Linker.link(g_value_set_variant, \"g_value_set_variant\", LIBRARY.GOBJECT);
	Linker.link(g_value_take_variant, \"g_value_take_variant\", LIBRARY.GOBJECT);

	// gobject.ParamSpec

	Linker.link(g_param_spec_ref, \"g_param_spec_ref\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_unref, \"g_param_spec_unref\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_sink, \"g_param_spec_sink\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_ref_sink, \"g_param_spec_ref_sink\", LIBRARY.GOBJECT);
	Linker.link(g_param_value_set_default, \"g_param_value_set_default\", LIBRARY.GOBJECT);
	Linker.link(g_param_value_defaults, \"g_param_value_defaults\", LIBRARY.GOBJECT);
	Linker.link(g_param_value_validate, \"g_param_value_validate\", LIBRARY.GOBJECT);
	Linker.link(g_param_value_convert, \"g_param_value_convert\", LIBRARY.GOBJECT);
	Linker.link(g_param_values_cmp, \"g_param_values_cmp\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_get_name, \"g_param_spec_get_name\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_get_nick, \"g_param_spec_get_nick\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_get_blurb, \"g_param_spec_get_blurb\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_get_qdata, \"g_param_spec_get_qdata\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_set_qdata, \"g_param_spec_set_qdata\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_set_qdata_full, \"g_param_spec_set_qdata_full\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_steal_qdata, \"g_param_spec_steal_qdata\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_get_redirect_target, \"g_param_spec_get_redirect_target\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_internal, \"g_param_spec_internal\", LIBRARY.GOBJECT);
	Linker.link(g_param_type_register_static, \"g_param_type_register_static\", LIBRARY.GOBJECT);

	// gobject.ParamSpecPool

	Linker.link(g_param_spec_pool_new, \"g_param_spec_pool_new\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pool_insert, \"g_param_spec_pool_insert\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pool_remove, \"g_param_spec_pool_remove\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pool_lookup, \"g_param_spec_pool_lookup\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pool_list, \"g_param_spec_pool_list\", LIBRARY.GOBJECT);
	Linker.link(g_param_spec_pool_list_owned, \"g_param_spec_pool_list_owned\", LIBRARY.GOBJECT);

	// gobject.Signals

	Linker.link(g_signal_new, \"g_signal_new\", LIBRARY.GOBJECT);
	Linker.link(g_signal_newv, \"g_signal_newv\", LIBRARY.GOBJECT);
	Linker.link(g_signal_new_valist, \"g_signal_new_valist\", LIBRARY.GOBJECT);
	Linker.link(g_signal_set_va_marshaller, \"g_signal_set_va_marshaller\", LIBRARY.GOBJECT);
	Linker.link(g_signal_query, \"g_signal_query\", LIBRARY.GOBJECT);
	Linker.link(g_signal_lookup, \"g_signal_lookup\", LIBRARY.GOBJECT);
	Linker.link(g_signal_name, \"g_signal_name\", LIBRARY.GOBJECT);
	Linker.link(g_signal_list_ids, \"g_signal_list_ids\", LIBRARY.GOBJECT);
	Linker.link(g_signal_emit, \"g_signal_emit\", LIBRARY.GOBJECT);
	Linker.link(g_signal_emit_by_name, \"g_signal_emit_by_name\", LIBRARY.GOBJECT);
	Linker.link(g_signal_emitv, \"g_signal_emitv\", LIBRARY.GOBJECT);
	Linker.link(g_signal_emit_valist, \"g_signal_emit_valist\", LIBRARY.GOBJECT);
	Linker.link(g_signal_connect_object, \"g_signal_connect_object\", LIBRARY.GOBJECT);
	Linker.link(g_signal_connect_data, \"g_signal_connect_data\", LIBRARY.GOBJECT);
	Linker.link(g_signal_connect_closure, \"g_signal_connect_closure\", LIBRARY.GOBJECT);
	Linker.link(g_signal_connect_closure_by_id, \"g_signal_connect_closure_by_id\", LIBRARY.GOBJECT);
	Linker.link(g_signal_handler_block, \"g_signal_handler_block\", LIBRARY.GOBJECT);
	Linker.link(g_signal_handler_unblock, \"g_signal_handler_unblock\", LIBRARY.GOBJECT);
	Linker.link(g_signal_handler_disconnect, \"g_signal_handler_disconnect\", LIBRARY.GOBJECT);
	Linker.link(g_signal_handler_find, \"g_signal_handler_find\", LIBRARY.GOBJECT);
	Linker.link(g_signal_handlers_block_matched, \"g_signal_handlers_block_matched\", LIBRARY.GOBJECT);
	Linker.link(g_signal_handlers_unblock_matched, \"g_signal_handlers_unblock_matched\", LIBRARY.GOBJECT);
	Linker.link(g_signal_handlers_disconnect_matched, \"g_signal_handlers_disconnect_matched\", LIBRARY.GOBJECT);
	Linker.link(g_signal_handler_is_connected, \"g_signal_handler_is_connected\", LIBRARY.GOBJECT);
	Linker.link(g_signal_has_handler_pending, \"g_signal_has_handler_pending\", LIBRARY.GOBJECT);
	Linker.link(g_signal_stop_emission, \"g_signal_stop_emission\", LIBRARY.GOBJECT);
	Linker.link(g_signal_stop_emission_by_name, \"g_signal_stop_emission_by_name\", LIBRARY.GOBJECT);
	Linker.link(g_signal_override_class_closure, \"g_signal_override_class_closure\", LIBRARY.GOBJECT);
	Linker.link(g_signal_chain_from_overridden, \"g_signal_chain_from_overridden\", LIBRARY.GOBJECT);
	Linker.link(g_signal_new_class_handler, \"g_signal_new_class_handler\", LIBRARY.GOBJECT);
	Linker.link(g_signal_override_class_handler, \"g_signal_override_class_handler\", LIBRARY.GOBJECT);
	Linker.link(g_signal_chain_from_overridden_handler, \"g_signal_chain_from_overridden_handler\", LIBRARY.GOBJECT);
	Linker.link(g_signal_add_emission_hook, \"g_signal_add_emission_hook\", LIBRARY.GOBJECT);
	Linker.link(g_signal_remove_emission_hook, \"g_signal_remove_emission_hook\", LIBRARY.GOBJECT);
	Linker.link(g_signal_parse_name, \"g_signal_parse_name\", LIBRARY.GOBJECT);
	Linker.link(g_signal_get_invocation_hint, \"g_signal_get_invocation_hint\", LIBRARY.GOBJECT);
	Linker.link(g_signal_type_cclosure_new, \"g_signal_type_cclosure_new\", LIBRARY.GOBJECT);
	Linker.link(g_signal_accumulator_first_wins, \"g_signal_accumulator_first_wins\", LIBRARY.GOBJECT);
	Linker.link(g_signal_accumulator_true_handled, \"g_signal_accumulator_true_handled\", LIBRARY.GOBJECT);

	// gobject.Closure

	Linker.link(g_closure_new_object, \"g_closure_new_object\", LIBRARY.GOBJECT);
	Linker.link(g_closure_ref, \"g_closure_ref\", LIBRARY.GOBJECT);
	Linker.link(g_closure_sink, \"g_closure_sink\", LIBRARY.GOBJECT);
	Linker.link(g_closure_unref, \"g_closure_unref\", LIBRARY.GOBJECT);
	Linker.link(g_closure_invoke, \"g_closure_invoke\", LIBRARY.GOBJECT);
	Linker.link(g_closure_invalidate, \"g_closure_invalidate\", LIBRARY.GOBJECT);
	Linker.link(g_closure_add_finalize_notifier, \"g_closure_add_finalize_notifier\", LIBRARY.GOBJECT);
	Linker.link(g_closure_add_invalidate_notifier, \"g_closure_add_invalidate_notifier\", LIBRARY.GOBJECT);
	Linker.link(g_closure_remove_finalize_notifier, \"g_closure_remove_finalize_notifier\", LIBRARY.GOBJECT);
	Linker.link(g_closure_remove_invalidate_notifier, \"g_closure_remove_invalidate_notifier\", LIBRARY.GOBJECT);
	Linker.link(g_closure_new_simple, \"g_closure_new_simple\", LIBRARY.GOBJECT);
	Linker.link(g_closure_set_marshal, \"g_closure_set_marshal\", LIBRARY.GOBJECT);
	Linker.link(g_closure_add_marshal_guards, \"g_closure_add_marshal_guards\", LIBRARY.GOBJECT);
	Linker.link(g_closure_set_meta_marshal, \"g_closure_set_meta_marshal\", LIBRARY.GOBJECT);
	Linker.link(g_source_set_closure, \"g_source_set_closure\", LIBRARY.GOBJECT);
	Linker.link(g_source_set_dummy_callback, \"g_source_set_dummy_callback\", LIBRARY.GOBJECT);

	// gobject.CClosure

	Linker.link(g_cclosure_new, \"g_cclosure_new\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_new_swap, \"g_cclosure_new_swap\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_new_object, \"g_cclosure_new_object\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_new_object_swap, \"g_cclosure_new_object_swap\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_generic, \"g_cclosure_marshal_generic\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__VOID, \"g_cclosure_marshal_VOID__VOID\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__BOOLEAN, \"g_cclosure_marshal_VOID__BOOLEAN\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__CHAR, \"g_cclosure_marshal_VOID__CHAR\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UCHAR, \"g_cclosure_marshal_VOID__UCHAR\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__INT, \"g_cclosure_marshal_VOID__INT\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UINT, \"g_cclosure_marshal_VOID__UINT\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__LONG, \"g_cclosure_marshal_VOID__LONG\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__ULONG, \"g_cclosure_marshal_VOID__ULONG\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__ENUM, \"g_cclosure_marshal_VOID__ENUM\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__FLAGS, \"g_cclosure_marshal_VOID__FLAGS\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__FLOAT, \"g_cclosure_marshal_VOID__FLOAT\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__DOUBLE, \"g_cclosure_marshal_VOID__DOUBLE\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__STRING, \"g_cclosure_marshal_VOID__STRING\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__PARAM, \"g_cclosure_marshal_VOID__PARAM\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__BOXED, \"g_cclosure_marshal_VOID__BOXED\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__POINTER, \"g_cclosure_marshal_VOID__POINTER\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__OBJECT, \"g_cclosure_marshal_VOID__OBJECT\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__VARIANT, \"g_cclosure_marshal_VOID__VARIANT\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_STRING__OBJECT_POINTER, \"g_cclosure_marshal_STRING__OBJECT_POINTER\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UINT_POINTER, \"g_cclosure_marshal_VOID__UINT_POINTER\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_BOOLEAN__FLAGS, \"g_cclosure_marshal_BOOLEAN__FLAGS\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_BOOLEAN__BOXED_BOXED, \"g_cclosure_marshal_BOOLEAN__BOXED_BOXED\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_generic_va, \"g_cclosure_marshal_generic_va\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__VOIDv, \"g_cclosure_marshal_VOID__VOIDv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__BOOLEANv, \"g_cclosure_marshal_VOID__BOOLEANv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__CHARv, \"g_cclosure_marshal_VOID__CHARv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UCHARv, \"g_cclosure_marshal_VOID__UCHARv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__INTv, \"g_cclosure_marshal_VOID__INTv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UINTv, \"g_cclosure_marshal_VOID__UINTv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__LONGv, \"g_cclosure_marshal_VOID__LONGv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__ULONGv, \"g_cclosure_marshal_VOID__ULONGv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__ENUMv, \"g_cclosure_marshal_VOID__ENUMv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__FLAGSv, \"g_cclosure_marshal_VOID__FLAGSv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__FLOATv, \"g_cclosure_marshal_VOID__FLOATv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__DOUBLEv, \"g_cclosure_marshal_VOID__DOUBLEv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__STRINGv, \"g_cclosure_marshal_VOID__STRINGv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__PARAMv, \"g_cclosure_marshal_VOID__PARAMv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__BOXEDv, \"g_cclosure_marshal_VOID__BOXEDv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__POINTERv, \"g_cclosure_marshal_VOID__POINTERv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__OBJECTv, \"g_cclosure_marshal_VOID__OBJECTv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__VARIANTv, \"g_cclosure_marshal_VOID__VARIANTv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_STRING__OBJECT_POINTERv, \"g_cclosure_marshal_STRING__OBJECT_POINTERv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UINT_POINTERv, \"g_cclosure_marshal_VOID__UINT_POINTERv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_BOOLEAN__FLAGSv, \"g_cclosure_marshal_BOOLEAN__FLAGSv\", LIBRARY.GOBJECT);
	Linker.link(g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv, \"g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv\", LIBRARY.GOBJECT);

	// gobject.ValueArray

	Linker.link(g_value_array_get_nth, \"g_value_array_get_nth\", LIBRARY.GOBJECT);
	Linker.link(g_value_array_new, \"g_value_array_new\", LIBRARY.GOBJECT);
	Linker.link(g_value_array_copy, \"g_value_array_copy\", LIBRARY.GOBJECT);
	Linker.link(g_value_array_free, \"g_value_array_free\", LIBRARY.GOBJECT);
	Linker.link(g_value_array_append, \"g_value_array_append\", LIBRARY.GOBJECT);
	Linker.link(g_value_array_prepend, \"g_value_array_prepend\", LIBRARY.GOBJECT);
	Linker.link(g_value_array_insert, \"g_value_array_insert\", LIBRARY.GOBJECT);
	Linker.link(g_value_array_remove, \"g_value_array_remove\", LIBRARY.GOBJECT);
	Linker.link(g_value_array_sort, \"g_value_array_sort\", LIBRARY.GOBJECT);
	Linker.link(g_value_array_sort_with_data, \"g_value_array_sort_with_data\", LIBRARY.GOBJECT);

	// gobject.Binding

	Linker.link(g_binding_get_source, \"g_binding_get_source\", LIBRARY.GOBJECT);
	Linker.link(g_binding_get_source_property, \"g_binding_get_source_property\", LIBRARY.GOBJECT);
	Linker.link(g_binding_get_target, \"g_binding_get_target\", LIBRARY.GOBJECT);
	Linker.link(g_binding_get_target_property, \"g_binding_get_target_property\", LIBRARY.GOBJECT);
	Linker.link(g_binding_get_flags, \"g_binding_get_flags\", LIBRARY.GOBJECT);
	Linker.link(g_object_bind_property, \"g_object_bind_property\", LIBRARY.GOBJECT);
	Linker.link(g_object_bind_property_full, \"g_object_bind_property_full\", LIBRARY.GOBJECT);
	Linker.link(g_object_bind_property_with_closures, \"g_object_bind_property_with_closures\", LIBRARY.GOBJECT);
}");

mixin( gshared ~"extern(C)
{
	// gobject.Type

	void function() c_g_type_init;
	void function(GTypeDebugFlags debugFlags) c_g_type_init_with_debug_flags;
	gchar* function(GType type) c_g_type_name;
	GQuark function(GType type) c_g_type_qname;
	GType function(gchar* name) c_g_type_from_name;
	GType function(GType type) c_g_type_parent;
	guint function(GType type) c_g_type_depth;
	GType function(GType leafType, GType rootType) c_g_type_next_base;
	gboolean function(GType type, GType isAType) c_g_type_is_a;
	gpointer function(GType type) c_g_type_class_ref;
	gpointer function(GType type) c_g_type_class_peek;
	gpointer function(GType type) c_g_type_class_peek_static;
	void function(void* gClass) c_g_type_class_unref;
	gpointer function(void* gClass) c_g_type_class_peek_parent;
	void function(void* gClass, gsize privateSize) c_g_type_class_add_private;
	void function(GType classType, gsize privateSize) c_g_type_add_class_private;
	gpointer function(void* instanceClass, GType ifaceType) c_g_type_interface_peek;
	gpointer function(void* gIface) c_g_type_interface_peek_parent;
	gpointer function(GType gType) c_g_type_default_interface_ref;
	gpointer function(GType gType) c_g_type_default_interface_peek;
	void function(void* gIface) c_g_type_default_interface_unref;
	GType* function(GType type, guint* nChildren) c_g_type_children;
	GType* function(GType type, guint* nInterfaces) c_g_type_interfaces;
	GType* function(GType interfaceType, guint* nPrerequisites) c_g_type_interface_prerequisites;
	void function(GType type, GQuark quark, void* data) c_g_type_set_qdata;
	gpointer function(GType type, GQuark quark) c_g_type_get_qdata;
	void function(GType type, GTypeQuery* query) c_g_type_query;
	GType function(GType parentType, gchar* typeName, GTypeInfo* info, GTypeFlags flags) c_g_type_register_static;
	GType function(GType parentType, gchar* typeName, guint classSize, GClassInitFunc classInit, guint instanceSize, GInstanceInitFunc instanceInit, GTypeFlags flags) c_g_type_register_static_simple;
	GType function(GType parentType, gchar* typeName, GTypePlugin* plugin, GTypeFlags flags) c_g_type_register_dynamic;
	GType function(GType typeId, gchar* typeName, GTypeInfo* info, GTypeFundamentalInfo* finfo, GTypeFlags flags) c_g_type_register_fundamental;
	void function(GType instanceType, GType interfaceType, GInterfaceInfo* info) c_g_type_add_interface_static;
	void function(GType instanceType, GType interfaceType, GTypePlugin* plugin) c_g_type_add_interface_dynamic;
	void function(GType interfaceType, GType prerequisiteType) c_g_type_interface_add_prerequisite;
	GTypePlugin* function(GType type) c_g_type_get_plugin;
	GTypePlugin* function(GType instanceType, GType interfaceType) c_g_type_interface_get_plugin;
	GType function() c_g_type_fundamental_next;
	GType function(GType typeId) c_g_type_fundamental;
	GTypeInstance* function(GType type) c_g_type_create_instance;
	void function(GTypeInstance* instanc) c_g_type_free_instance;
	void function(void* cacheData, GTypeClassCacheFunc cacheFunc) c_g_type_add_class_cache_func;
	void function(void* cacheData, GTypeClassCacheFunc cacheFunc) c_g_type_remove_class_cache_func;
	void function(void* gClass) c_g_type_class_unref_uncached;
	void function(void* checkData, GTypeInterfaceCheckFunc checkFunc) c_g_type_add_interface_check;
	void function(void* checkData, GTypeInterfaceCheckFunc checkFunc) c_g_type_remove_interface_check;
	GTypeValueTable* function(GType type) c_g_type_value_table_peek;
	void function(GType type) c_g_type_ensure;
	guint function() c_g_type_get_type_registration_serial;

	// gobject.TypePlugin

	void function(GTypePlugin* plugin) c_g_type_plugin_use;
	void function(GTypePlugin* plugin) c_g_type_plugin_unuse;
	void function(GTypePlugin* plugin, GType gType, GTypeInfo* info, GTypeValueTable* valueTable) c_g_type_plugin_complete_type_info;
	void function(GTypePlugin* plugin, GType instanceType, GType interfaceType, GInterfaceInfo* info) c_g_type_plugin_complete_interface_info;

	// gobject.TypeModule

	gboolean function(GTypeModule* modul) c_g_type_module_use;
	void function(GTypeModule* modul) c_g_type_module_unuse;
	void function(GTypeModule* modul, gchar* name) c_g_type_module_set_name;
	GType function(GTypeModule* modul, GType parentType, gchar* typeName, GTypeInfo* typeInfo, GTypeFlags flags) c_g_type_module_register_type;
	void function(GTypeModule* modul, GType instanceType, GType interfaceType, GInterfaceInfo* interfaceInfo) c_g_type_module_add_interface;
	GType function(GTypeModule* modul, gchar* name, GEnumValue* _StaticValues) c_g_type_module_register_enum;
	GType function(GTypeModule* modul, gchar* name, GFlagsValue* _StaticValues) c_g_type_module_register_flags;

	// gobject.ObjectG

	void function(GObjectClass* oclass, guint propertyId, GParamSpec* pspec) c_g_object_class_install_property;
	void function(GObjectClass* oclass, guint nPspecs, GParamSpec** pspecs) c_g_object_class_install_properties;
	GParamSpec* function(GObjectClass* oclass, gchar* propertyName) c_g_object_class_find_property;
	GParamSpec** function(GObjectClass* oclass, guint* nProperties) c_g_object_class_list_properties;
	void function(GObjectClass* oclass, guint propertyId, gchar* name) c_g_object_class_override_property;
	void function(void* iface, GParamSpec* pspec) c_g_object_interface_install_property;
	GParamSpec* function(void* iface, gchar* propertyName) c_g_object_interface_find_property;
	GParamSpec** function(void* iface, guint* nPropertiesP) c_g_object_interface_list_properties;
	gpointer function(GType objectType, gchar* firstPropertyName, ... ) c_g_object_new;
	gpointer function(GType objectType, guint nParameters, GParameter* parameters) c_g_object_newv;
	gpointer function(void* object) c_g_object_ref;
	void function(void* object) c_g_object_unref;
	gpointer function(void* object) c_g_object_ref_sink;
	void function(GObject** objectPtr) c_g_clear_object;
	gboolean function(void* object) c_g_object_is_floating;
	void function(GObject* object) c_g_object_force_floating;
	void function(GObject* object, GWeakNotify notify, void* data) c_g_object_weak_ref;
	void function(GObject* object, GWeakNotify notify, void* data) c_g_object_weak_unref;
	void function(GObject* object, void** weakPointerLocation) c_g_object_add_weak_pointer;
	void function(GObject* object, void** weakPointerLocation) c_g_object_remove_weak_pointer;
	void function(GObject* object, GToggleNotify notify, void* data) c_g_object_add_toggle_ref;
	void function(GObject* object, GToggleNotify notify, void* data) c_g_object_remove_toggle_ref;
	gpointer function(void* object, gchar* signalSpec, ... ) c_g_object_connect;
	void function(void* object, gchar* signalSpec, ... ) c_g_object_disconnect;
	void function(void* object, gchar* firstPropertyName, ... ) c_g_object_set;
	void function(void* object, gchar* firstPropertyName, ... ) c_g_object_get;
	void function(GObject* object, gchar* propertyName) c_g_object_notify;
	void function(GObject* object, GParamSpec* pspec) c_g_object_notify_by_pspec;
	void function(GObject* object) c_g_object_freeze_notify;
	void function(GObject* object) c_g_object_thaw_notify;
	gpointer function(GObject* object, gchar* key) c_g_object_get_data;
	void function(GObject* object, gchar* key, void* data) c_g_object_set_data;
	void function(GObject* object, gchar* key, void* data, GDestroyNotify destroy) c_g_object_set_data_full;
	gpointer function(GObject* object, gchar* key) c_g_object_steal_data;
	gpointer function(GObject* object, gchar* key, GDuplicateFunc dupFunc, void* userData) c_g_object_dup_data;
	gboolean function(GObject* object, gchar* key, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* oldDestroy) c_g_object_replace_data;
	gpointer function(GObject* object, GQuark quark) c_g_object_get_qdata;
	void function(GObject* object, GQuark quark, void* data) c_g_object_set_qdata;
	void function(GObject* object, GQuark quark, void* data, GDestroyNotify destroy) c_g_object_set_qdata_full;
	gpointer function(GObject* object, GQuark quark) c_g_object_steal_qdata;
	gpointer function(GObject* object, GQuark quark, GDuplicateFunc dupFunc, void* userData) c_g_object_dup_qdata;
	gboolean function(GObject* object, GQuark quark, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* oldDestroy) c_g_object_replace_qdata;
	void function(GObject* object, gchar* propertyName, GValue* value) c_g_object_set_property;
	void function(GObject* object, gchar* propertyName, GValue* value) c_g_object_get_property;
	GObject* function(GType objectType, gchar* firstPropertyName, va_list varArgs) c_g_object_new_valist;
	void function(GObject* object, gchar* firstPropertyName, va_list varArgs) c_g_object_set_valist;
	void function(GObject* object, gchar* firstPropertyName, va_list varArgs) c_g_object_get_valist;
	void function(GObject* object, GClosure* closure) c_g_object_watch_closure;
	void function(GObject* object) c_g_object_run_dispose;

	// gobject.WeakRef

	void function(GWeakRef* weakRef, void* object) c_g_weak_ref_init;
	void function(GWeakRef* weakRef) c_g_weak_ref_clear;
	gpointer function(GWeakRef* weakRef) c_g_weak_ref_get;
	void function(GWeakRef* weakRef, void* object) c_g_weak_ref_set;

	// gobject.Enums

	GEnumValue* function(GEnumClass* enumClass, gint value) c_g_enum_get_value;
	GEnumValue* function(GEnumClass* enumClass, gchar* name) c_g_enum_get_value_by_name;
	GEnumValue* function(GEnumClass* enumClass, gchar* nick) c_g_enum_get_value_by_nick;
	GType function(gchar* name, GEnumValue* _StaticValues) c_g_enum_register_static;
	void function(GType type, GTypeInfo* info, GEnumValue* _Values) c_g_enum_complete_type_info;

	// gobject.Flags

	GFlagsValue* function(GFlagsClass* flagsClass, guint value) c_g_flags_get_first_value;
	GFlagsValue* function(GFlagsClass* flagsClass, gchar* name) c_g_flags_get_value_by_name;
	GFlagsValue* function(GFlagsClass* flagsClass, gchar* nick) c_g_flags_get_value_by_nick;
	GType function(gchar* name, GFlagsValue* _StaticValues) c_g_flags_register_static;
	void function(GType type, GTypeInfo* info, GFlagsValue* _Values) c_g_flags_complete_type_info;

	// gobject.Boxed

	gpointer function(GType boxedType, void* srcBoxed) c_g_boxed_copy;
	void function(GType boxedType, void* boxed) c_g_boxed_free;
	GType function(gchar* name, GBoxedCopyFunc boxedCopy, GBoxedFreeFunc boxedFree) c_g_boxed_type_register_static;
	GType function(gchar* name) c_g_pointer_type_register_static;

	// gobject.Value

	GValue* function(GValue* value, GType gType) c_g_value_init;
	void function(GValue* srcValue, GValue* destValue) c_g_value_copy;
	GValue* function(GValue* value) c_g_value_reset;
	void function(GValue* value) c_g_value_unset;
	void function(GValue* value, void* instanc) c_g_value_set_instance;
	gboolean function(GValue* value) c_g_value_fits_pointer;
	gpointer function(GValue* value) c_g_value_peek_pointer;
	gboolean function(GType srcType, GType destType) c_g_value_type_compatible;
	gboolean function(GType srcType, GType destType) c_g_value_type_transformable;
	gboolean function(GValue* srcValue, GValue* destValue) c_g_value_transform;
	void function(GType srcType, GType destType, GValueTransform transformFunc) c_g_value_register_transform_func;
	gchar* function(GValue* value) c_g_strdup_value_contents;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gboolean defaultValue, GParamFlags flags) c_g_param_spec_boolean;
	void function(GValue* value, gboolean vBoolean) c_g_value_set_boolean;
	gboolean function(GValue* value) c_g_value_get_boolean;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gint8 minimum, gint8 maximum, gint8 defaultValue, GParamFlags flags) c_g_param_spec_char;
	void function(GValue* value, gchar vChar) c_g_value_set_char;
	gchar function(GValue* value) c_g_value_get_char;
	gint8 function(GValue* value) c_g_value_get_schar;
	void function(GValue* value, gint8 vChar) c_g_value_set_schar;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, guint8 minimum, guint8 maximum, guint8 defaultValue, GParamFlags flags) c_g_param_spec_uchar;
	void function(GValue* value, guchar vUchar) c_g_value_set_uchar;
	guchar function(GValue* value) c_g_value_get_uchar;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gint minimum, gint maximum, gint defaultValue, GParamFlags flags) c_g_param_spec_int;
	void function(GValue* value, gint vInt) c_g_value_set_int;
	gint function(GValue* value) c_g_value_get_int;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, guint minimum, guint maximum, guint defaultValue, GParamFlags flags) c_g_param_spec_uint;
	void function(GValue* value, guint vUint) c_g_value_set_uint;
	guint function(GValue* value) c_g_value_get_uint;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, glong minimum, glong maximum, glong defaultValue, GParamFlags flags) c_g_param_spec_long;
	void function(GValue* value, glong vLong) c_g_value_set_long;
	glong function(GValue* value) c_g_value_get_long;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gulong minimum, gulong maximum, gulong defaultValue, GParamFlags flags) c_g_param_spec_ulong;
	void function(GValue* value, gulong vUlong) c_g_value_set_ulong;
	gulong function(GValue* value) c_g_value_get_ulong;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gint64 minimum, gint64 maximum, gint64 defaultValue, GParamFlags flags) c_g_param_spec_int64;
	void function(GValue* value, gint64 vInt64) c_g_value_set_int64;
	gint64 function(GValue* value) c_g_value_get_int64;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, guint64 minimum, guint64 maximum, guint64 defaultValue, GParamFlags flags) c_g_param_spec_uint64;
	void function(GValue* value, guint64 vUint64) c_g_value_set_uint64;
	guint64 function(GValue* value) c_g_value_get_uint64;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gfloat minimum, gfloat maximum, gfloat defaultValue, GParamFlags flags) c_g_param_spec_float;
	void function(GValue* value, gfloat vFloat) c_g_value_set_float;
	gfloat function(GValue* value) c_g_value_get_float;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gdouble minimum, gdouble maximum, gdouble defaultValue, GParamFlags flags) c_g_param_spec_double;
	void function(GValue* value, gdouble vDouble) c_g_value_set_double;
	gdouble function(GValue* value) c_g_value_get_double;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType enumType, gint defaultValue, GParamFlags flags) c_g_param_spec_enum;
	void function(GValue* value, gint vEnum) c_g_value_set_enum;
	gint function(GValue* value) c_g_value_get_enum;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType flagsType, guint defaultValue, GParamFlags flags) c_g_param_spec_flags;
	void function(GValue* value, guint vFlags) c_g_value_set_flags;
	guint function(GValue* value) c_g_value_get_flags;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gchar* defaultValue, GParamFlags flags) c_g_param_spec_string;
	void function(GValue* value, gchar* vString) c_g_value_set_string;
	void function(GValue* value, gchar* vString) c_g_value_set_static_string;
	void function(GValue* value, gchar* vString) c_g_value_take_string;
	void function(GValue* value, gchar* vString) c_g_value_set_string_take_ownership;
	gchar* function(GValue* value) c_g_value_get_string;
	gchar* function(GValue* value) c_g_value_dup_string;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType paramType, GParamFlags flags) c_g_param_spec_param;
	void function(GValue* value, GParamSpec* param) c_g_value_set_param;
	void function(GValue* value, GParamSpec* param) c_g_value_take_param;
	void function(GValue* value, GParamSpec* param) c_g_value_set_param_take_ownership;
	GParamSpec* function(GValue* value) c_g_value_get_param;
	GParamSpec* function(GValue* value) c_g_value_dup_param;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType boxedType, GParamFlags flags) c_g_param_spec_boxed;
	void function(GValue* value, void* vBoxed) c_g_value_set_boxed;
	void function(GValue* value, void* vBoxed) c_g_value_set_static_boxed;
	void function(GValue* value, void* vBoxed) c_g_value_take_boxed;
	void function(GValue* value, void* vBoxed) c_g_value_set_boxed_take_ownership;
	gpointer function(GValue* value) c_g_value_get_boxed;
	gpointer function(GValue* value) c_g_value_dup_boxed;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GParamFlags flags) c_g_param_spec_pointer;
	void function(GValue* value, void* vPointer) c_g_value_set_pointer;
	gpointer function(GValue* value) c_g_value_get_pointer;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType objectType, GParamFlags flags) c_g_param_spec_object;
	void function(GValue* value, void* vObject) c_g_value_set_object;
	void function(GValue* value, void* vObject) c_g_value_take_object;
	void function(GValue* value, void* vObject) c_g_value_set_object_take_ownership;
	gpointer function(GValue* value) c_g_value_get_object;
	gpointer function(GValue* value) c_g_value_dup_object;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gunichar defaultValue, GParamFlags flags) c_g_param_spec_unichar;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GParamSpec* elementSpec, GParamFlags flags) c_g_param_spec_value_array;
	GParamSpec* function(gchar* name, GParamSpec* overridden) c_g_param_spec_override;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType isAType, GParamFlags flags) c_g_param_spec_gtype;
	GType function(GValue* value) c_g_value_get_gtype;
	void function(GValue* value, GType vGtype) c_g_value_set_gtype;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GVariantType* type, GVariant* defaultValue, GParamFlags flags) c_g_param_spec_variant;
	GVariant* function(GValue* value) c_g_value_get_variant;
	GVariant* function(GValue* value) c_g_value_dup_variant;
	void function(GValue* value, GVariant* variant) c_g_value_set_variant;
	void function(GValue* value, GVariant* variant) c_g_value_take_variant;

	// gobject.ParamSpec

	GParamSpec* function(GParamSpec* pspec) c_g_param_spec_ref;
	void function(GParamSpec* pspec) c_g_param_spec_unref;
	void function(GParamSpec* pspec) c_g_param_spec_sink;
	GParamSpec* function(GParamSpec* pspec) c_g_param_spec_ref_sink;
	void function(GParamSpec* pspec, GValue* value) c_g_param_value_set_default;
	gboolean function(GParamSpec* pspec, GValue* value) c_g_param_value_defaults;
	gboolean function(GParamSpec* pspec, GValue* value) c_g_param_value_validate;
	gboolean function(GParamSpec* pspec, GValue* srcValue, GValue* destValue, gboolean strictValidation) c_g_param_value_convert;
	gint function(GParamSpec* pspec, GValue* value1, GValue* value2) c_g_param_values_cmp;
	gchar* function(GParamSpec* pspec) c_g_param_spec_get_name;
	gchar* function(GParamSpec* pspec) c_g_param_spec_get_nick;
	gchar* function(GParamSpec* pspec) c_g_param_spec_get_blurb;
	gpointer function(GParamSpec* pspec, GQuark quark) c_g_param_spec_get_qdata;
	void function(GParamSpec* pspec, GQuark quark, void* data) c_g_param_spec_set_qdata;
	void function(GParamSpec* pspec, GQuark quark, void* data, GDestroyNotify destroy) c_g_param_spec_set_qdata_full;
	gpointer function(GParamSpec* pspec, GQuark quark) c_g_param_spec_steal_qdata;
	GParamSpec* function(GParamSpec* pspec) c_g_param_spec_get_redirect_target;
	gpointer function(GType paramType, gchar* name, gchar* nick, gchar* blurb, GParamFlags flags) c_g_param_spec_internal;
	GType function(gchar* name, GParamSpecTypeInfo* pspecInfo) c_g_param_type_register_static;

	// gobject.ParamSpecPool

	GParamSpecPool* function(gboolean typePrefixing) c_g_param_spec_pool_new;
	void function(GParamSpecPool* pool, GParamSpec* pspec, GType ownerType) c_g_param_spec_pool_insert;
	void function(GParamSpecPool* pool, GParamSpec* pspec) c_g_param_spec_pool_remove;
	GParamSpec* function(GParamSpecPool* pool, gchar* paramName, GType ownerType, gboolean walkAncestors) c_g_param_spec_pool_lookup;
	GParamSpec** function(GParamSpecPool* pool, GType ownerType, guint* nPspecsP) c_g_param_spec_pool_list;
	GList* function(GParamSpecPool* pool, GType ownerType) c_g_param_spec_pool_list_owned;

	// gobject.Signals

	guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, guint classOffset, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, ... ) c_g_signal_new;
	guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, GClosure* classClosure, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, GType* paramTypes) c_g_signal_newv;
	guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, GClosure* classClosure, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, va_list args) c_g_signal_new_valist;
	void function(guint signalId, GType instanceType, GSignalCVaMarshaller vaMarshaller) c_g_signal_set_va_marshaller;
	void function(guint signalId, GSignalQuery* query) c_g_signal_query;
	guint function(gchar* name, GType itype) c_g_signal_lookup;
	gchar* function(guint signalId) c_g_signal_name;
	guint* function(GType itype, guint* nIds) c_g_signal_list_ids;
	void function(void* instanc, guint signalId, GQuark detail, ... ) c_g_signal_emit;
	void function(void* instanc, gchar* detailedSignal, ... ) c_g_signal_emit_by_name;
	void function(GValue* instanceAndParams, guint signalId, GQuark detail, GValue* returnValue) c_g_signal_emitv;
	void function(void* instanc, guint signalId, GQuark detail, va_list varArgs) c_g_signal_emit_valist;
	gulong function(void* instanc, gchar* detailedSignal, GCallback cHandler, void* gobject, GConnectFlags connectFlags) c_g_signal_connect_object;
	gulong function(void* instanc, gchar* detailedSignal, GCallback cHandler, void* data, GClosureNotify destroyData, GConnectFlags connectFlags) c_g_signal_connect_data;
	gulong function(void* instanc, gchar* detailedSignal, GClosure* closure, gboolean after) c_g_signal_connect_closure;
	gulong function(void* instanc, guint signalId, GQuark detail, GClosure* closure, gboolean after) c_g_signal_connect_closure_by_id;
	void function(void* instanc, gulong handlerId) c_g_signal_handler_block;
	void function(void* instanc, gulong handlerId) c_g_signal_handler_unblock;
	void function(void* instanc, gulong handlerId) c_g_signal_handler_disconnect;
	gulong function(void* instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, void* func, void* data) c_g_signal_handler_find;
	guint function(void* instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, void* func, void* data) c_g_signal_handlers_block_matched;
	guint function(void* instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, void* func, void* data) c_g_signal_handlers_unblock_matched;
	guint function(void* instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, void* func, void* data) c_g_signal_handlers_disconnect_matched;
	gboolean function(void* instanc, gulong handlerId) c_g_signal_handler_is_connected;
	gboolean function(void* instanc, guint signalId, GQuark detail, gboolean mayBeBlocked) c_g_signal_has_handler_pending;
	void function(void* instanc, guint signalId, GQuark detail) c_g_signal_stop_emission;
	void function(void* instanc, gchar* detailedSignal) c_g_signal_stop_emission_by_name;
	void function(guint signalId, GType instanceType, GClosure* classClosure) c_g_signal_override_class_closure;
	void function(GValue* instanceAndParams, GValue* returnValue) c_g_signal_chain_from_overridden;
	guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, GCallback classHandler, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, ... ) c_g_signal_new_class_handler;
	void function(gchar* signalName, GType instanceType, GCallback classHandler) c_g_signal_override_class_handler;
	void function(void* instanc, ... ) c_g_signal_chain_from_overridden_handler;
	gulong function(guint signalId, GQuark detail, GSignalEmissionHook hookFunc, void* hookData, GDestroyNotify dataDestroy) c_g_signal_add_emission_hook;
	void function(guint signalId, gulong hookId) c_g_signal_remove_emission_hook;
	gboolean function(gchar* detailedSignal, GType itype, guint* signalIdP, GQuark* detailP, gboolean forceDetailQuark) c_g_signal_parse_name;
	GSignalInvocationHint* function(void* instanc) c_g_signal_get_invocation_hint;
	GClosure* function(GType itype, guint structOffset) c_g_signal_type_cclosure_new;
	gboolean function(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, void* dummy) c_g_signal_accumulator_first_wins;
	gboolean function(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, void* dummy) c_g_signal_accumulator_true_handled;

	// gobject.Closure

	GClosure* function(guint sizeofClosure, GObject* object) c_g_closure_new_object;
	GClosure* function(GClosure* closure) c_g_closure_ref;
	void function(GClosure* closure) c_g_closure_sink;
	void function(GClosure* closure) c_g_closure_unref;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint) c_g_closure_invoke;
	void function(GClosure* closure) c_g_closure_invalidate;
	void function(GClosure* closure, void* notifyData, GClosureNotify notifyFunc) c_g_closure_add_finalize_notifier;
	void function(GClosure* closure, void* notifyData, GClosureNotify notifyFunc) c_g_closure_add_invalidate_notifier;
	void function(GClosure* closure, void* notifyData, GClosureNotify notifyFunc) c_g_closure_remove_finalize_notifier;
	void function(GClosure* closure, void* notifyData, GClosureNotify notifyFunc) c_g_closure_remove_invalidate_notifier;
	GClosure* function(guint sizeofClosure, void* data) c_g_closure_new_simple;
	void function(GClosure* closure, GClosureMarshal marshal) c_g_closure_set_marshal;
	void function(GClosure* closure, void* preMarshalData, GClosureNotify preMarshalNotify, void* postMarshalData, GClosureNotify postMarshalNotify) c_g_closure_add_marshal_guards;
	void function(GClosure* closure, void* marshalData, GClosureMarshal metaMarshal) c_g_closure_set_meta_marshal;
	void function(GSource* source, GClosure* closure) c_g_source_set_closure;
	void function(GSource* source) c_g_source_set_dummy_callback;

	// gobject.CClosure

	GClosure* function(GCallback callbackFunc, void* userData, GClosureNotify destroyData) c_g_cclosure_new;
	GClosure* function(GCallback callbackFunc, void* userData, GClosureNotify destroyData) c_g_cclosure_new_swap;
	GClosure* function(GCallback callbackFunc, GObject* object) c_g_cclosure_new_object;
	GClosure* function(GCallback callbackFunc, GObject* object) c_g_cclosure_new_object_swap;
	void function(GClosure* closure, GValue* returnGvalue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_generic;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__VOID;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__BOOLEAN;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__CHAR;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__UCHAR;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__INT;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__UINT;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__LONG;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__ULONG;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__ENUM;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__FLAGS;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__FLOAT;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__DOUBLE;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__STRING;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__PARAM;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__BOXED;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__POINTER;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__OBJECT;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__VARIANT;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_STRING__OBJECT_POINTER;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__UINT_POINTER;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_BOOLEAN__FLAGS;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_BOOLEAN__BOXED_BOXED;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list argsList, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_generic_va;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__VOIDv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__BOOLEANv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__CHARv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__UCHARv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__INTv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__UINTv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__LONGv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__ULONGv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__ENUMv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__FLAGSv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__FLOATv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__DOUBLEv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__STRINGv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__PARAMv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__BOXEDv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__POINTERv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__OBJECTv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__VARIANTv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_STRING__OBJECT_POINTERv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__UINT_POINTERv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_BOOLEAN__FLAGSv;
	void function(GClosure* closure, GValue* returnValue, void* instanc, va_list args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv;

	// gobject.ValueArray

	GValue* function(GValueArray* valueArray, guint index) c_g_value_array_get_nth;
	GValueArray* function(guint nPrealloced) c_g_value_array_new;
	GValueArray* function(GValueArray* valueArray) c_g_value_array_copy;
	void function(GValueArray* valueArray) c_g_value_array_free;
	GValueArray* function(GValueArray* valueArray, GValue* value) c_g_value_array_append;
	GValueArray* function(GValueArray* valueArray, GValue* value) c_g_value_array_prepend;
	GValueArray* function(GValueArray* valueArray, guint index, GValue* value) c_g_value_array_insert;
	GValueArray* function(GValueArray* valueArray, guint index) c_g_value_array_remove;
	GValueArray* function(GValueArray* valueArray, GCompareFunc compareFunc) c_g_value_array_sort;
	GValueArray* function(GValueArray* valueArray, GCompareDataFunc compareFunc, void* userData) c_g_value_array_sort_with_data;

	// gobject.Binding

	GObject* function(GBinding* binding) c_g_binding_get_source;
	gchar* function(GBinding* binding) c_g_binding_get_source_property;
	GObject* function(GBinding* binding) c_g_binding_get_target;
	gchar* function(GBinding* binding) c_g_binding_get_target_property;
	GBindingFlags function(GBinding* binding) c_g_binding_get_flags;
	GBinding* function(void* source, gchar* sourceProperty, void* target, gchar* targetProperty, GBindingFlags flags) c_g_object_bind_property;
	GBinding* function(void* source, gchar* sourceProperty, void* target, gchar* targetProperty, GBindingFlags flags, GBindingTransformFunc transformTo, GBindingTransformFunc transformFrom, void* userData, GDestroyNotify notify) c_g_object_bind_property_full;
	GBinding* function(void* source, gchar* sourceProperty, void* target, gchar* targetProperty, GBindingFlags flags, GClosure* transformTo, GClosure* transformFrom) c_g_object_bind_property_with_closures;
}");

// gobject.Type

alias c_g_type_init  g_type_init;
alias c_g_type_init_with_debug_flags  g_type_init_with_debug_flags;
alias c_g_type_name  g_type_name;
alias c_g_type_qname  g_type_qname;
alias c_g_type_from_name  g_type_from_name;
alias c_g_type_parent  g_type_parent;
alias c_g_type_depth  g_type_depth;
alias c_g_type_next_base  g_type_next_base;
alias c_g_type_is_a  g_type_is_a;
alias c_g_type_class_ref  g_type_class_ref;
alias c_g_type_class_peek  g_type_class_peek;
alias c_g_type_class_peek_static  g_type_class_peek_static;
alias c_g_type_class_unref  g_type_class_unref;
alias c_g_type_class_peek_parent  g_type_class_peek_parent;
alias c_g_type_class_add_private  g_type_class_add_private;
alias c_g_type_add_class_private  g_type_add_class_private;
alias c_g_type_interface_peek  g_type_interface_peek;
alias c_g_type_interface_peek_parent  g_type_interface_peek_parent;
alias c_g_type_default_interface_ref  g_type_default_interface_ref;
alias c_g_type_default_interface_peek  g_type_default_interface_peek;
alias c_g_type_default_interface_unref  g_type_default_interface_unref;
alias c_g_type_children  g_type_children;
alias c_g_type_interfaces  g_type_interfaces;
alias c_g_type_interface_prerequisites  g_type_interface_prerequisites;
alias c_g_type_set_qdata  g_type_set_qdata;
alias c_g_type_get_qdata  g_type_get_qdata;
alias c_g_type_query  g_type_query;
alias c_g_type_register_static  g_type_register_static;
alias c_g_type_register_static_simple  g_type_register_static_simple;
alias c_g_type_register_dynamic  g_type_register_dynamic;
alias c_g_type_register_fundamental  g_type_register_fundamental;
alias c_g_type_add_interface_static  g_type_add_interface_static;
alias c_g_type_add_interface_dynamic  g_type_add_interface_dynamic;
alias c_g_type_interface_add_prerequisite  g_type_interface_add_prerequisite;
alias c_g_type_get_plugin  g_type_get_plugin;
alias c_g_type_interface_get_plugin  g_type_interface_get_plugin;
alias c_g_type_fundamental_next  g_type_fundamental_next;
alias c_g_type_fundamental  g_type_fundamental;
alias c_g_type_create_instance  g_type_create_instance;
alias c_g_type_free_instance  g_type_free_instance;
alias c_g_type_add_class_cache_func  g_type_add_class_cache_func;
alias c_g_type_remove_class_cache_func  g_type_remove_class_cache_func;
alias c_g_type_class_unref_uncached  g_type_class_unref_uncached;
alias c_g_type_add_interface_check  g_type_add_interface_check;
alias c_g_type_remove_interface_check  g_type_remove_interface_check;
alias c_g_type_value_table_peek  g_type_value_table_peek;
alias c_g_type_ensure  g_type_ensure;
alias c_g_type_get_type_registration_serial  g_type_get_type_registration_serial;

// gobject.TypePlugin

alias c_g_type_plugin_use  g_type_plugin_use;
alias c_g_type_plugin_unuse  g_type_plugin_unuse;
alias c_g_type_plugin_complete_type_info  g_type_plugin_complete_type_info;
alias c_g_type_plugin_complete_interface_info  g_type_plugin_complete_interface_info;

// gobject.TypeModule

alias c_g_type_module_use  g_type_module_use;
alias c_g_type_module_unuse  g_type_module_unuse;
alias c_g_type_module_set_name  g_type_module_set_name;
alias c_g_type_module_register_type  g_type_module_register_type;
alias c_g_type_module_add_interface  g_type_module_add_interface;
alias c_g_type_module_register_enum  g_type_module_register_enum;
alias c_g_type_module_register_flags  g_type_module_register_flags;

// gobject.ObjectG

alias c_g_object_class_install_property  g_object_class_install_property;
alias c_g_object_class_install_properties  g_object_class_install_properties;
alias c_g_object_class_find_property  g_object_class_find_property;
alias c_g_object_class_list_properties  g_object_class_list_properties;
alias c_g_object_class_override_property  g_object_class_override_property;
alias c_g_object_interface_install_property  g_object_interface_install_property;
alias c_g_object_interface_find_property  g_object_interface_find_property;
alias c_g_object_interface_list_properties  g_object_interface_list_properties;
alias c_g_object_new  g_object_new;
alias c_g_object_newv  g_object_newv;
alias c_g_object_ref  g_object_ref;
alias c_g_object_unref  g_object_unref;
alias c_g_object_ref_sink  g_object_ref_sink;
alias c_g_clear_object  g_clear_object;
alias c_g_object_is_floating  g_object_is_floating;
alias c_g_object_force_floating  g_object_force_floating;
alias c_g_object_weak_ref  g_object_weak_ref;
alias c_g_object_weak_unref  g_object_weak_unref;
alias c_g_object_add_weak_pointer  g_object_add_weak_pointer;
alias c_g_object_remove_weak_pointer  g_object_remove_weak_pointer;
alias c_g_object_add_toggle_ref  g_object_add_toggle_ref;
alias c_g_object_remove_toggle_ref  g_object_remove_toggle_ref;
alias c_g_object_connect  g_object_connect;
alias c_g_object_disconnect  g_object_disconnect;
alias c_g_object_set  g_object_set;
alias c_g_object_get  g_object_get;
alias c_g_object_notify  g_object_notify;
alias c_g_object_notify_by_pspec  g_object_notify_by_pspec;
alias c_g_object_freeze_notify  g_object_freeze_notify;
alias c_g_object_thaw_notify  g_object_thaw_notify;
alias c_g_object_get_data  g_object_get_data;
alias c_g_object_set_data  g_object_set_data;
alias c_g_object_set_data_full  g_object_set_data_full;
alias c_g_object_steal_data  g_object_steal_data;
alias c_g_object_dup_data  g_object_dup_data;
alias c_g_object_replace_data  g_object_replace_data;
alias c_g_object_get_qdata  g_object_get_qdata;
alias c_g_object_set_qdata  g_object_set_qdata;
alias c_g_object_set_qdata_full  g_object_set_qdata_full;
alias c_g_object_steal_qdata  g_object_steal_qdata;
alias c_g_object_dup_qdata  g_object_dup_qdata;
alias c_g_object_replace_qdata  g_object_replace_qdata;
alias c_g_object_set_property  g_object_set_property;
alias c_g_object_get_property  g_object_get_property;
alias c_g_object_new_valist  g_object_new_valist;
alias c_g_object_set_valist  g_object_set_valist;
alias c_g_object_get_valist  g_object_get_valist;
alias c_g_object_watch_closure  g_object_watch_closure;
alias c_g_object_run_dispose  g_object_run_dispose;

// gobject.WeakRef

alias c_g_weak_ref_init  g_weak_ref_init;
alias c_g_weak_ref_clear  g_weak_ref_clear;
alias c_g_weak_ref_get  g_weak_ref_get;
alias c_g_weak_ref_set  g_weak_ref_set;

// gobject.Enums

alias c_g_enum_get_value  g_enum_get_value;
alias c_g_enum_get_value_by_name  g_enum_get_value_by_name;
alias c_g_enum_get_value_by_nick  g_enum_get_value_by_nick;
alias c_g_enum_register_static  g_enum_register_static;
alias c_g_enum_complete_type_info  g_enum_complete_type_info;

// gobject.Flags

alias c_g_flags_get_first_value  g_flags_get_first_value;
alias c_g_flags_get_value_by_name  g_flags_get_value_by_name;
alias c_g_flags_get_value_by_nick  g_flags_get_value_by_nick;
alias c_g_flags_register_static  g_flags_register_static;
alias c_g_flags_complete_type_info  g_flags_complete_type_info;

// gobject.Boxed

alias c_g_boxed_copy  g_boxed_copy;
alias c_g_boxed_free  g_boxed_free;
alias c_g_boxed_type_register_static  g_boxed_type_register_static;
alias c_g_pointer_type_register_static  g_pointer_type_register_static;

// gobject.Value

alias c_g_value_init  g_value_init;
alias c_g_value_copy  g_value_copy;
alias c_g_value_reset  g_value_reset;
alias c_g_value_unset  g_value_unset;
alias c_g_value_set_instance  g_value_set_instance;
alias c_g_value_fits_pointer  g_value_fits_pointer;
alias c_g_value_peek_pointer  g_value_peek_pointer;
alias c_g_value_type_compatible  g_value_type_compatible;
alias c_g_value_type_transformable  g_value_type_transformable;
alias c_g_value_transform  g_value_transform;
alias c_g_value_register_transform_func  g_value_register_transform_func;
alias c_g_strdup_value_contents  g_strdup_value_contents;
alias c_g_param_spec_boolean  g_param_spec_boolean;
alias c_g_value_set_boolean  g_value_set_boolean;
alias c_g_value_get_boolean  g_value_get_boolean;
alias c_g_param_spec_char  g_param_spec_char;
alias c_g_value_set_char  g_value_set_char;
alias c_g_value_get_char  g_value_get_char;
alias c_g_value_get_schar  g_value_get_schar;
alias c_g_value_set_schar  g_value_set_schar;
alias c_g_param_spec_uchar  g_param_spec_uchar;
alias c_g_value_set_uchar  g_value_set_uchar;
alias c_g_value_get_uchar  g_value_get_uchar;
alias c_g_param_spec_int  g_param_spec_int;
alias c_g_value_set_int  g_value_set_int;
alias c_g_value_get_int  g_value_get_int;
alias c_g_param_spec_uint  g_param_spec_uint;
alias c_g_value_set_uint  g_value_set_uint;
alias c_g_value_get_uint  g_value_get_uint;
alias c_g_param_spec_long  g_param_spec_long;
alias c_g_value_set_long  g_value_set_long;
alias c_g_value_get_long  g_value_get_long;
alias c_g_param_spec_ulong  g_param_spec_ulong;
alias c_g_value_set_ulong  g_value_set_ulong;
alias c_g_value_get_ulong  g_value_get_ulong;
alias c_g_param_spec_int64  g_param_spec_int64;
alias c_g_value_set_int64  g_value_set_int64;
alias c_g_value_get_int64  g_value_get_int64;
alias c_g_param_spec_uint64  g_param_spec_uint64;
alias c_g_value_set_uint64  g_value_set_uint64;
alias c_g_value_get_uint64  g_value_get_uint64;
alias c_g_param_spec_float  g_param_spec_float;
alias c_g_value_set_float  g_value_set_float;
alias c_g_value_get_float  g_value_get_float;
alias c_g_param_spec_double  g_param_spec_double;
alias c_g_value_set_double  g_value_set_double;
alias c_g_value_get_double  g_value_get_double;
alias c_g_param_spec_enum  g_param_spec_enum;
alias c_g_value_set_enum  g_value_set_enum;
alias c_g_value_get_enum  g_value_get_enum;
alias c_g_param_spec_flags  g_param_spec_flags;
alias c_g_value_set_flags  g_value_set_flags;
alias c_g_value_get_flags  g_value_get_flags;
alias c_g_param_spec_string  g_param_spec_string;
alias c_g_value_set_string  g_value_set_string;
alias c_g_value_set_static_string  g_value_set_static_string;
alias c_g_value_take_string  g_value_take_string;
alias c_g_value_set_string_take_ownership  g_value_set_string_take_ownership;
alias c_g_value_get_string  g_value_get_string;
alias c_g_value_dup_string  g_value_dup_string;
alias c_g_param_spec_param  g_param_spec_param;
alias c_g_value_set_param  g_value_set_param;
alias c_g_value_take_param  g_value_take_param;
alias c_g_value_set_param_take_ownership  g_value_set_param_take_ownership;
alias c_g_value_get_param  g_value_get_param;
alias c_g_value_dup_param  g_value_dup_param;
alias c_g_param_spec_boxed  g_param_spec_boxed;
alias c_g_value_set_boxed  g_value_set_boxed;
alias c_g_value_set_static_boxed  g_value_set_static_boxed;
alias c_g_value_take_boxed  g_value_take_boxed;
alias c_g_value_set_boxed_take_ownership  g_value_set_boxed_take_ownership;
alias c_g_value_get_boxed  g_value_get_boxed;
alias c_g_value_dup_boxed  g_value_dup_boxed;
alias c_g_param_spec_pointer  g_param_spec_pointer;
alias c_g_value_set_pointer  g_value_set_pointer;
alias c_g_value_get_pointer  g_value_get_pointer;
alias c_g_param_spec_object  g_param_spec_object;
alias c_g_value_set_object  g_value_set_object;
alias c_g_value_take_object  g_value_take_object;
alias c_g_value_set_object_take_ownership  g_value_set_object_take_ownership;
alias c_g_value_get_object  g_value_get_object;
alias c_g_value_dup_object  g_value_dup_object;
alias c_g_param_spec_unichar  g_param_spec_unichar;
alias c_g_param_spec_value_array  g_param_spec_value_array;
alias c_g_param_spec_override  g_param_spec_override;
alias c_g_param_spec_gtype  g_param_spec_gtype;
alias c_g_value_get_gtype  g_value_get_gtype;
alias c_g_value_set_gtype  g_value_set_gtype;
alias c_g_param_spec_variant  g_param_spec_variant;
alias c_g_value_get_variant  g_value_get_variant;
alias c_g_value_dup_variant  g_value_dup_variant;
alias c_g_value_set_variant  g_value_set_variant;
alias c_g_value_take_variant  g_value_take_variant;

// gobject.ParamSpec

alias c_g_param_spec_ref  g_param_spec_ref;
alias c_g_param_spec_unref  g_param_spec_unref;
alias c_g_param_spec_sink  g_param_spec_sink;
alias c_g_param_spec_ref_sink  g_param_spec_ref_sink;
alias c_g_param_value_set_default  g_param_value_set_default;
alias c_g_param_value_defaults  g_param_value_defaults;
alias c_g_param_value_validate  g_param_value_validate;
alias c_g_param_value_convert  g_param_value_convert;
alias c_g_param_values_cmp  g_param_values_cmp;
alias c_g_param_spec_get_name  g_param_spec_get_name;
alias c_g_param_spec_get_nick  g_param_spec_get_nick;
alias c_g_param_spec_get_blurb  g_param_spec_get_blurb;
alias c_g_param_spec_get_qdata  g_param_spec_get_qdata;
alias c_g_param_spec_set_qdata  g_param_spec_set_qdata;
alias c_g_param_spec_set_qdata_full  g_param_spec_set_qdata_full;
alias c_g_param_spec_steal_qdata  g_param_spec_steal_qdata;
alias c_g_param_spec_get_redirect_target  g_param_spec_get_redirect_target;
alias c_g_param_spec_internal  g_param_spec_internal;
alias c_g_param_type_register_static  g_param_type_register_static;

// gobject.ParamSpecPool

alias c_g_param_spec_pool_new  g_param_spec_pool_new;
alias c_g_param_spec_pool_insert  g_param_spec_pool_insert;
alias c_g_param_spec_pool_remove  g_param_spec_pool_remove;
alias c_g_param_spec_pool_lookup  g_param_spec_pool_lookup;
alias c_g_param_spec_pool_list  g_param_spec_pool_list;
alias c_g_param_spec_pool_list_owned  g_param_spec_pool_list_owned;

// gobject.Signals

alias c_g_signal_new  g_signal_new;
alias c_g_signal_newv  g_signal_newv;
alias c_g_signal_new_valist  g_signal_new_valist;
alias c_g_signal_set_va_marshaller  g_signal_set_va_marshaller;
alias c_g_signal_query  g_signal_query;
alias c_g_signal_lookup  g_signal_lookup;
alias c_g_signal_name  g_signal_name;
alias c_g_signal_list_ids  g_signal_list_ids;
alias c_g_signal_emit  g_signal_emit;
alias c_g_signal_emit_by_name  g_signal_emit_by_name;
alias c_g_signal_emitv  g_signal_emitv;
alias c_g_signal_emit_valist  g_signal_emit_valist;
alias c_g_signal_connect_object  g_signal_connect_object;
alias c_g_signal_connect_data  g_signal_connect_data;
alias c_g_signal_connect_closure  g_signal_connect_closure;
alias c_g_signal_connect_closure_by_id  g_signal_connect_closure_by_id;
alias c_g_signal_handler_block  g_signal_handler_block;
alias c_g_signal_handler_unblock  g_signal_handler_unblock;
alias c_g_signal_handler_disconnect  g_signal_handler_disconnect;
alias c_g_signal_handler_find  g_signal_handler_find;
alias c_g_signal_handlers_block_matched  g_signal_handlers_block_matched;
alias c_g_signal_handlers_unblock_matched  g_signal_handlers_unblock_matched;
alias c_g_signal_handlers_disconnect_matched  g_signal_handlers_disconnect_matched;
alias c_g_signal_handler_is_connected  g_signal_handler_is_connected;
alias c_g_signal_has_handler_pending  g_signal_has_handler_pending;
alias c_g_signal_stop_emission  g_signal_stop_emission;
alias c_g_signal_stop_emission_by_name  g_signal_stop_emission_by_name;
alias c_g_signal_override_class_closure  g_signal_override_class_closure;
alias c_g_signal_chain_from_overridden  g_signal_chain_from_overridden;
alias c_g_signal_new_class_handler  g_signal_new_class_handler;
alias c_g_signal_override_class_handler  g_signal_override_class_handler;
alias c_g_signal_chain_from_overridden_handler  g_signal_chain_from_overridden_handler;
alias c_g_signal_add_emission_hook  g_signal_add_emission_hook;
alias c_g_signal_remove_emission_hook  g_signal_remove_emission_hook;
alias c_g_signal_parse_name  g_signal_parse_name;
alias c_g_signal_get_invocation_hint  g_signal_get_invocation_hint;
alias c_g_signal_type_cclosure_new  g_signal_type_cclosure_new;
alias c_g_signal_accumulator_first_wins  g_signal_accumulator_first_wins;
alias c_g_signal_accumulator_true_handled  g_signal_accumulator_true_handled;

// gobject.Closure

alias c_g_closure_new_object  g_closure_new_object;
alias c_g_closure_ref  g_closure_ref;
alias c_g_closure_sink  g_closure_sink;
alias c_g_closure_unref  g_closure_unref;
alias c_g_closure_invoke  g_closure_invoke;
alias c_g_closure_invalidate  g_closure_invalidate;
alias c_g_closure_add_finalize_notifier  g_closure_add_finalize_notifier;
alias c_g_closure_add_invalidate_notifier  g_closure_add_invalidate_notifier;
alias c_g_closure_remove_finalize_notifier  g_closure_remove_finalize_notifier;
alias c_g_closure_remove_invalidate_notifier  g_closure_remove_invalidate_notifier;
alias c_g_closure_new_simple  g_closure_new_simple;
alias c_g_closure_set_marshal  g_closure_set_marshal;
alias c_g_closure_add_marshal_guards  g_closure_add_marshal_guards;
alias c_g_closure_set_meta_marshal  g_closure_set_meta_marshal;
alias c_g_source_set_closure  g_source_set_closure;
alias c_g_source_set_dummy_callback  g_source_set_dummy_callback;

// gobject.CClosure

alias c_g_cclosure_new  g_cclosure_new;
alias c_g_cclosure_new_swap  g_cclosure_new_swap;
alias c_g_cclosure_new_object  g_cclosure_new_object;
alias c_g_cclosure_new_object_swap  g_cclosure_new_object_swap;
alias c_g_cclosure_marshal_generic  g_cclosure_marshal_generic;
alias c_g_cclosure_marshal_VOID__VOID  g_cclosure_marshal_VOID__VOID;
alias c_g_cclosure_marshal_VOID__BOOLEAN  g_cclosure_marshal_VOID__BOOLEAN;
alias c_g_cclosure_marshal_VOID__CHAR  g_cclosure_marshal_VOID__CHAR;
alias c_g_cclosure_marshal_VOID__UCHAR  g_cclosure_marshal_VOID__UCHAR;
alias c_g_cclosure_marshal_VOID__INT  g_cclosure_marshal_VOID__INT;
alias c_g_cclosure_marshal_VOID__UINT  g_cclosure_marshal_VOID__UINT;
alias c_g_cclosure_marshal_VOID__LONG  g_cclosure_marshal_VOID__LONG;
alias c_g_cclosure_marshal_VOID__ULONG  g_cclosure_marshal_VOID__ULONG;
alias c_g_cclosure_marshal_VOID__ENUM  g_cclosure_marshal_VOID__ENUM;
alias c_g_cclosure_marshal_VOID__FLAGS  g_cclosure_marshal_VOID__FLAGS;
alias c_g_cclosure_marshal_VOID__FLOAT  g_cclosure_marshal_VOID__FLOAT;
alias c_g_cclosure_marshal_VOID__DOUBLE  g_cclosure_marshal_VOID__DOUBLE;
alias c_g_cclosure_marshal_VOID__STRING  g_cclosure_marshal_VOID__STRING;
alias c_g_cclosure_marshal_VOID__PARAM  g_cclosure_marshal_VOID__PARAM;
alias c_g_cclosure_marshal_VOID__BOXED  g_cclosure_marshal_VOID__BOXED;
alias c_g_cclosure_marshal_VOID__POINTER  g_cclosure_marshal_VOID__POINTER;
alias c_g_cclosure_marshal_VOID__OBJECT  g_cclosure_marshal_VOID__OBJECT;
alias c_g_cclosure_marshal_VOID__VARIANT  g_cclosure_marshal_VOID__VARIANT;
alias c_g_cclosure_marshal_STRING__OBJECT_POINTER  g_cclosure_marshal_STRING__OBJECT_POINTER;
alias c_g_cclosure_marshal_VOID__UINT_POINTER  g_cclosure_marshal_VOID__UINT_POINTER;
alias c_g_cclosure_marshal_BOOLEAN__FLAGS  g_cclosure_marshal_BOOLEAN__FLAGS;
alias c_g_cclosure_marshal_BOOLEAN__BOXED_BOXED  g_cclosure_marshal_BOOLEAN__BOXED_BOXED;
alias c_g_cclosure_marshal_generic_va  g_cclosure_marshal_generic_va;
alias c_g_cclosure_marshal_VOID__VOIDv  g_cclosure_marshal_VOID__VOIDv;
alias c_g_cclosure_marshal_VOID__BOOLEANv  g_cclosure_marshal_VOID__BOOLEANv;
alias c_g_cclosure_marshal_VOID__CHARv  g_cclosure_marshal_VOID__CHARv;
alias c_g_cclosure_marshal_VOID__UCHARv  g_cclosure_marshal_VOID__UCHARv;
alias c_g_cclosure_marshal_VOID__INTv  g_cclosure_marshal_VOID__INTv;
alias c_g_cclosure_marshal_VOID__UINTv  g_cclosure_marshal_VOID__UINTv;
alias c_g_cclosure_marshal_VOID__LONGv  g_cclosure_marshal_VOID__LONGv;
alias c_g_cclosure_marshal_VOID__ULONGv  g_cclosure_marshal_VOID__ULONGv;
alias c_g_cclosure_marshal_VOID__ENUMv  g_cclosure_marshal_VOID__ENUMv;
alias c_g_cclosure_marshal_VOID__FLAGSv  g_cclosure_marshal_VOID__FLAGSv;
alias c_g_cclosure_marshal_VOID__FLOATv  g_cclosure_marshal_VOID__FLOATv;
alias c_g_cclosure_marshal_VOID__DOUBLEv  g_cclosure_marshal_VOID__DOUBLEv;
alias c_g_cclosure_marshal_VOID__STRINGv  g_cclosure_marshal_VOID__STRINGv;
alias c_g_cclosure_marshal_VOID__PARAMv  g_cclosure_marshal_VOID__PARAMv;
alias c_g_cclosure_marshal_VOID__BOXEDv  g_cclosure_marshal_VOID__BOXEDv;
alias c_g_cclosure_marshal_VOID__POINTERv  g_cclosure_marshal_VOID__POINTERv;
alias c_g_cclosure_marshal_VOID__OBJECTv  g_cclosure_marshal_VOID__OBJECTv;
alias c_g_cclosure_marshal_VOID__VARIANTv  g_cclosure_marshal_VOID__VARIANTv;
alias c_g_cclosure_marshal_STRING__OBJECT_POINTERv  g_cclosure_marshal_STRING__OBJECT_POINTERv;
alias c_g_cclosure_marshal_VOID__UINT_POINTERv  g_cclosure_marshal_VOID__UINT_POINTERv;
alias c_g_cclosure_marshal_BOOLEAN__FLAGSv  g_cclosure_marshal_BOOLEAN__FLAGSv;
alias c_g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv  g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv;

// gobject.ValueArray

alias c_g_value_array_get_nth  g_value_array_get_nth;
alias c_g_value_array_new  g_value_array_new;
alias c_g_value_array_copy  g_value_array_copy;
alias c_g_value_array_free  g_value_array_free;
alias c_g_value_array_append  g_value_array_append;
alias c_g_value_array_prepend  g_value_array_prepend;
alias c_g_value_array_insert  g_value_array_insert;
alias c_g_value_array_remove  g_value_array_remove;
alias c_g_value_array_sort  g_value_array_sort;
alias c_g_value_array_sort_with_data  g_value_array_sort_with_data;

// gobject.Binding

alias c_g_binding_get_source  g_binding_get_source;
alias c_g_binding_get_source_property  g_binding_get_source_property;
alias c_g_binding_get_target  g_binding_get_target;
alias c_g_binding_get_target_property  g_binding_get_target_property;
alias c_g_binding_get_flags  g_binding_get_flags;
alias c_g_object_bind_property  g_object_bind_property;
alias c_g_object_bind_property_full  g_object_bind_property_full;
alias c_g_object_bind_property_with_closures  g_object_bind_property_with_closures;
