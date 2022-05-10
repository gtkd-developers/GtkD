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


module gobject.c.functions;

import std.stdio;
import gobject.c.types;
import linker.Loader;

version (Windows)
	static immutable LIBRARY_GOBJECT = ["libgobject-2.0-0.dll;gobject-2.0-0.dll;gobject-2.dll"];
else version (OSX)
	static immutable LIBRARY_GOBJECT = ["libgobject-2.0.0.dylib"];
else
	static immutable LIBRARY_GOBJECT = ["libgobject-2.0.so.0"];

shared static this()
{
	// gobject.Binding

	Linker.link(g_binding_get_type, "g_binding_get_type", LIBRARY_GOBJECT);
	Linker.link(g_binding_dup_source, "g_binding_dup_source", LIBRARY_GOBJECT);
	Linker.link(g_binding_dup_target, "g_binding_dup_target", LIBRARY_GOBJECT);
	Linker.link(g_binding_get_flags, "g_binding_get_flags", LIBRARY_GOBJECT);
	Linker.link(g_binding_get_source, "g_binding_get_source", LIBRARY_GOBJECT);
	Linker.link(g_binding_get_source_property, "g_binding_get_source_property", LIBRARY_GOBJECT);
	Linker.link(g_binding_get_target, "g_binding_get_target", LIBRARY_GOBJECT);
	Linker.link(g_binding_get_target_property, "g_binding_get_target_property", LIBRARY_GOBJECT);
	Linker.link(g_binding_unbind, "g_binding_unbind", LIBRARY_GOBJECT);

	// gobject.BindingGroup

	Linker.link(g_binding_group_get_type, "g_binding_group_get_type", LIBRARY_GOBJECT);
	Linker.link(g_binding_group_new, "g_binding_group_new", LIBRARY_GOBJECT);
	Linker.link(g_binding_group_bind, "g_binding_group_bind", LIBRARY_GOBJECT);
	Linker.link(g_binding_group_bind_full, "g_binding_group_bind_full", LIBRARY_GOBJECT);
	Linker.link(g_binding_group_bind_with_closures, "g_binding_group_bind_with_closures", LIBRARY_GOBJECT);
	Linker.link(g_binding_group_dup_source, "g_binding_group_dup_source", LIBRARY_GOBJECT);
	Linker.link(g_binding_group_set_source, "g_binding_group_set_source", LIBRARY_GOBJECT);

	// gobject.CClosure

	Linker.link(g_cclosure_marshal_BOOLEAN__BOXED_BOXED, "g_cclosure_marshal_BOOLEAN__BOXED_BOXED", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv, "g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_BOOLEAN__FLAGS, "g_cclosure_marshal_BOOLEAN__FLAGS", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_BOOLEAN__FLAGSv, "g_cclosure_marshal_BOOLEAN__FLAGSv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_STRING__OBJECT_POINTER, "g_cclosure_marshal_STRING__OBJECT_POINTER", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_STRING__OBJECT_POINTERv, "g_cclosure_marshal_STRING__OBJECT_POINTERv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__BOOLEAN, "g_cclosure_marshal_VOID__BOOLEAN", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__BOOLEANv, "g_cclosure_marshal_VOID__BOOLEANv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__BOXED, "g_cclosure_marshal_VOID__BOXED", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__BOXEDv, "g_cclosure_marshal_VOID__BOXEDv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__CHAR, "g_cclosure_marshal_VOID__CHAR", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__CHARv, "g_cclosure_marshal_VOID__CHARv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__DOUBLE, "g_cclosure_marshal_VOID__DOUBLE", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__DOUBLEv, "g_cclosure_marshal_VOID__DOUBLEv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__ENUM, "g_cclosure_marshal_VOID__ENUM", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__ENUMv, "g_cclosure_marshal_VOID__ENUMv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__FLAGS, "g_cclosure_marshal_VOID__FLAGS", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__FLAGSv, "g_cclosure_marshal_VOID__FLAGSv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__FLOAT, "g_cclosure_marshal_VOID__FLOAT", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__FLOATv, "g_cclosure_marshal_VOID__FLOATv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__INT, "g_cclosure_marshal_VOID__INT", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__INTv, "g_cclosure_marshal_VOID__INTv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__LONG, "g_cclosure_marshal_VOID__LONG", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__LONGv, "g_cclosure_marshal_VOID__LONGv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__OBJECT, "g_cclosure_marshal_VOID__OBJECT", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__OBJECTv, "g_cclosure_marshal_VOID__OBJECTv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__PARAM, "g_cclosure_marshal_VOID__PARAM", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__PARAMv, "g_cclosure_marshal_VOID__PARAMv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__POINTER, "g_cclosure_marshal_VOID__POINTER", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__POINTERv, "g_cclosure_marshal_VOID__POINTERv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__STRING, "g_cclosure_marshal_VOID__STRING", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__STRINGv, "g_cclosure_marshal_VOID__STRINGv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UCHAR, "g_cclosure_marshal_VOID__UCHAR", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UCHARv, "g_cclosure_marshal_VOID__UCHARv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UINT, "g_cclosure_marshal_VOID__UINT", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UINT_POINTER, "g_cclosure_marshal_VOID__UINT_POINTER", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UINT_POINTERv, "g_cclosure_marshal_VOID__UINT_POINTERv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__UINTv, "g_cclosure_marshal_VOID__UINTv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__ULONG, "g_cclosure_marshal_VOID__ULONG", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__ULONGv, "g_cclosure_marshal_VOID__ULONGv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__VARIANT, "g_cclosure_marshal_VOID__VARIANT", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__VARIANTv, "g_cclosure_marshal_VOID__VARIANTv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__VOID, "g_cclosure_marshal_VOID__VOID", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_VOID__VOIDv, "g_cclosure_marshal_VOID__VOIDv", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_generic, "g_cclosure_marshal_generic", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_marshal_generic_va, "g_cclosure_marshal_generic_va", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_new, "g_cclosure_new", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_new_object, "g_cclosure_new_object", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_new_object_swap, "g_cclosure_new_object_swap", LIBRARY_GOBJECT);
	Linker.link(g_cclosure_new_swap, "g_cclosure_new_swap", LIBRARY_GOBJECT);

	// gobject.Closure

	Linker.link(g_closure_get_type, "g_closure_get_type", LIBRARY_GOBJECT);
	Linker.link(g_closure_new_object, "g_closure_new_object", LIBRARY_GOBJECT);
	Linker.link(g_closure_new_simple, "g_closure_new_simple", LIBRARY_GOBJECT);
	Linker.link(g_closure_add_finalize_notifier, "g_closure_add_finalize_notifier", LIBRARY_GOBJECT);
	Linker.link(g_closure_add_invalidate_notifier, "g_closure_add_invalidate_notifier", LIBRARY_GOBJECT);
	Linker.link(g_closure_add_marshal_guards, "g_closure_add_marshal_guards", LIBRARY_GOBJECT);
	Linker.link(g_closure_invalidate, "g_closure_invalidate", LIBRARY_GOBJECT);
	Linker.link(g_closure_invoke, "g_closure_invoke", LIBRARY_GOBJECT);
	Linker.link(g_closure_ref, "g_closure_ref", LIBRARY_GOBJECT);
	Linker.link(g_closure_remove_finalize_notifier, "g_closure_remove_finalize_notifier", LIBRARY_GOBJECT);
	Linker.link(g_closure_remove_invalidate_notifier, "g_closure_remove_invalidate_notifier", LIBRARY_GOBJECT);
	Linker.link(g_closure_set_marshal, "g_closure_set_marshal", LIBRARY_GOBJECT);
	Linker.link(g_closure_set_meta_marshal, "g_closure_set_meta_marshal", LIBRARY_GOBJECT);
	Linker.link(g_closure_sink, "g_closure_sink", LIBRARY_GOBJECT);
	Linker.link(g_closure_unref, "g_closure_unref", LIBRARY_GOBJECT);
	Linker.link(g_source_set_closure, "g_source_set_closure", LIBRARY_GOBJECT);
	Linker.link(g_source_set_dummy_callback, "g_source_set_dummy_callback", LIBRARY_GOBJECT);

	// gobject.ObjectG

	Linker.link(g_initially_unowned_get_type, "g_initially_unowned_get_type", LIBRARY_GOBJECT);
	Linker.link(g_object_new, "g_object_new", LIBRARY_GOBJECT);
	Linker.link(g_object_new_valist, "g_object_new_valist", LIBRARY_GOBJECT);
	Linker.link(g_object_new_with_properties, "g_object_new_with_properties", LIBRARY_GOBJECT);
	Linker.link(g_object_newv, "g_object_newv", LIBRARY_GOBJECT);
	Linker.link(g_object_compat_control, "g_object_compat_control", LIBRARY_GOBJECT);
	Linker.link(g_object_interface_find_property, "g_object_interface_find_property", LIBRARY_GOBJECT);
	Linker.link(g_object_interface_install_property, "g_object_interface_install_property", LIBRARY_GOBJECT);
	Linker.link(g_object_interface_list_properties, "g_object_interface_list_properties", LIBRARY_GOBJECT);
	Linker.link(g_object_add_toggle_ref, "g_object_add_toggle_ref", LIBRARY_GOBJECT);
	Linker.link(g_object_add_weak_pointer, "g_object_add_weak_pointer", LIBRARY_GOBJECT);
	Linker.link(g_object_bind_property, "g_object_bind_property", LIBRARY_GOBJECT);
	Linker.link(g_object_bind_property_full, "g_object_bind_property_full", LIBRARY_GOBJECT);
	Linker.link(g_object_bind_property_with_closures, "g_object_bind_property_with_closures", LIBRARY_GOBJECT);
	Linker.link(g_object_connect, "g_object_connect", LIBRARY_GOBJECT);
	Linker.link(g_object_disconnect, "g_object_disconnect", LIBRARY_GOBJECT);
	Linker.link(g_object_dup_data, "g_object_dup_data", LIBRARY_GOBJECT);
	Linker.link(g_object_dup_qdata, "g_object_dup_qdata", LIBRARY_GOBJECT);
	Linker.link(g_object_force_floating, "g_object_force_floating", LIBRARY_GOBJECT);
	Linker.link(g_object_freeze_notify, "g_object_freeze_notify", LIBRARY_GOBJECT);
	Linker.link(g_object_get, "g_object_get", LIBRARY_GOBJECT);
	Linker.link(g_object_get_data, "g_object_get_data", LIBRARY_GOBJECT);
	Linker.link(g_object_get_property, "g_object_get_property", LIBRARY_GOBJECT);
	Linker.link(g_object_get_qdata, "g_object_get_qdata", LIBRARY_GOBJECT);
	Linker.link(g_object_get_valist, "g_object_get_valist", LIBRARY_GOBJECT);
	Linker.link(g_object_getv, "g_object_getv", LIBRARY_GOBJECT);
	Linker.link(g_object_is_floating, "g_object_is_floating", LIBRARY_GOBJECT);
	Linker.link(g_object_notify, "g_object_notify", LIBRARY_GOBJECT);
	Linker.link(g_object_notify_by_pspec, "g_object_notify_by_pspec", LIBRARY_GOBJECT);
	Linker.link(g_object_ref, "g_object_ref", LIBRARY_GOBJECT);
	Linker.link(g_object_ref_sink, "g_object_ref_sink", LIBRARY_GOBJECT);
	Linker.link(g_object_remove_toggle_ref, "g_object_remove_toggle_ref", LIBRARY_GOBJECT);
	Linker.link(g_object_remove_weak_pointer, "g_object_remove_weak_pointer", LIBRARY_GOBJECT);
	Linker.link(g_object_replace_data, "g_object_replace_data", LIBRARY_GOBJECT);
	Linker.link(g_object_replace_qdata, "g_object_replace_qdata", LIBRARY_GOBJECT);
	Linker.link(g_object_run_dispose, "g_object_run_dispose", LIBRARY_GOBJECT);
	Linker.link(g_object_set, "g_object_set", LIBRARY_GOBJECT);
	Linker.link(g_object_set_data, "g_object_set_data", LIBRARY_GOBJECT);
	Linker.link(g_object_set_data_full, "g_object_set_data_full", LIBRARY_GOBJECT);
	Linker.link(g_object_set_property, "g_object_set_property", LIBRARY_GOBJECT);
	Linker.link(g_object_set_qdata, "g_object_set_qdata", LIBRARY_GOBJECT);
	Linker.link(g_object_set_qdata_full, "g_object_set_qdata_full", LIBRARY_GOBJECT);
	Linker.link(g_object_set_valist, "g_object_set_valist", LIBRARY_GOBJECT);
	Linker.link(g_object_setv, "g_object_setv", LIBRARY_GOBJECT);
	Linker.link(g_object_steal_data, "g_object_steal_data", LIBRARY_GOBJECT);
	Linker.link(g_object_steal_qdata, "g_object_steal_qdata", LIBRARY_GOBJECT);
	Linker.link(g_object_take_ref, "g_object_take_ref", LIBRARY_GOBJECT);
	Linker.link(g_object_thaw_notify, "g_object_thaw_notify", LIBRARY_GOBJECT);
	Linker.link(g_object_unref, "g_object_unref", LIBRARY_GOBJECT);
	Linker.link(g_object_watch_closure, "g_object_watch_closure", LIBRARY_GOBJECT);
	Linker.link(g_object_weak_ref, "g_object_weak_ref", LIBRARY_GOBJECT);
	Linker.link(g_object_weak_unref, "g_object_weak_unref", LIBRARY_GOBJECT);
	Linker.link(g_clear_object, "g_clear_object", LIBRARY_GOBJECT);

	// gobject.ObjectClass

	Linker.link(g_object_class_find_property, "g_object_class_find_property", LIBRARY_GOBJECT);
	Linker.link(g_object_class_install_properties, "g_object_class_install_properties", LIBRARY_GOBJECT);
	Linker.link(g_object_class_install_property, "g_object_class_install_property", LIBRARY_GOBJECT);
	Linker.link(g_object_class_list_properties, "g_object_class_list_properties", LIBRARY_GOBJECT);
	Linker.link(g_object_class_override_property, "g_object_class_override_property", LIBRARY_GOBJECT);

	// gobject.ParamSpec

	Linker.link(g_param_spec_internal, "g_param_spec_internal", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_is_valid_name, "g_param_spec_is_valid_name", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_get_blurb, "g_param_spec_get_blurb", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_get_default_value, "g_param_spec_get_default_value", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_get_name, "g_param_spec_get_name", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_get_name_quark, "g_param_spec_get_name_quark", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_get_nick, "g_param_spec_get_nick", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_get_qdata, "g_param_spec_get_qdata", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_get_redirect_target, "g_param_spec_get_redirect_target", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_ref, "g_param_spec_ref", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_ref_sink, "g_param_spec_ref_sink", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_set_qdata, "g_param_spec_set_qdata", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_set_qdata_full, "g_param_spec_set_qdata_full", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_sink, "g_param_spec_sink", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_steal_qdata, "g_param_spec_steal_qdata", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_unref, "g_param_spec_unref", LIBRARY_GOBJECT);
	Linker.link(g_param_type_register_static, "g_param_type_register_static", LIBRARY_GOBJECT);
	Linker.link(g_param_value_convert, "g_param_value_convert", LIBRARY_GOBJECT);
	Linker.link(g_param_value_defaults, "g_param_value_defaults", LIBRARY_GOBJECT);
	Linker.link(g_param_value_set_default, "g_param_value_set_default", LIBRARY_GOBJECT);
	Linker.link(g_param_value_validate, "g_param_value_validate", LIBRARY_GOBJECT);
	Linker.link(g_param_values_cmp, "g_param_values_cmp", LIBRARY_GOBJECT);

	// gobject.ParamSpecPool

	Linker.link(g_param_spec_pool_insert, "g_param_spec_pool_insert", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_pool_list, "g_param_spec_pool_list", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_pool_list_owned, "g_param_spec_pool_list_owned", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_pool_lookup, "g_param_spec_pool_lookup", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_pool_remove, "g_param_spec_pool_remove", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_pool_new, "g_param_spec_pool_new", LIBRARY_GOBJECT);

	// gobject.SignalGroup

	Linker.link(g_signal_group_get_type, "g_signal_group_get_type", LIBRARY_GOBJECT);
	Linker.link(g_signal_group_new, "g_signal_group_new", LIBRARY_GOBJECT);
	Linker.link(g_signal_group_block, "g_signal_group_block", LIBRARY_GOBJECT);
	Linker.link(g_signal_group_connect, "g_signal_group_connect", LIBRARY_GOBJECT);
	Linker.link(g_signal_group_connect_after, "g_signal_group_connect_after", LIBRARY_GOBJECT);
	Linker.link(g_signal_group_connect_data, "g_signal_group_connect_data", LIBRARY_GOBJECT);
	Linker.link(g_signal_group_connect_object, "g_signal_group_connect_object", LIBRARY_GOBJECT);
	Linker.link(g_signal_group_connect_swapped, "g_signal_group_connect_swapped", LIBRARY_GOBJECT);
	Linker.link(g_signal_group_dup_target, "g_signal_group_dup_target", LIBRARY_GOBJECT);
	Linker.link(g_signal_group_set_target, "g_signal_group_set_target", LIBRARY_GOBJECT);
	Linker.link(g_signal_group_unblock, "g_signal_group_unblock", LIBRARY_GOBJECT);

	// gobject.TypeClass

	Linker.link(g_type_class_add_private, "g_type_class_add_private", LIBRARY_GOBJECT);
	Linker.link(g_type_class_get_instance_private_offset, "g_type_class_get_instance_private_offset", LIBRARY_GOBJECT);
	Linker.link(g_type_class_get_private, "g_type_class_get_private", LIBRARY_GOBJECT);
	Linker.link(g_type_class_peek_parent, "g_type_class_peek_parent", LIBRARY_GOBJECT);
	Linker.link(g_type_class_unref, "g_type_class_unref", LIBRARY_GOBJECT);
	Linker.link(g_type_class_unref_uncached, "g_type_class_unref_uncached", LIBRARY_GOBJECT);
	Linker.link(g_type_class_adjust_private_offset, "g_type_class_adjust_private_offset", LIBRARY_GOBJECT);
	Linker.link(g_type_class_peek, "g_type_class_peek", LIBRARY_GOBJECT);
	Linker.link(g_type_class_peek_static, "g_type_class_peek_static", LIBRARY_GOBJECT);
	Linker.link(g_type_class_ref, "g_type_class_ref", LIBRARY_GOBJECT);

	// gobject.TypeInstance

	Linker.link(g_type_instance_get_private, "g_type_instance_get_private", LIBRARY_GOBJECT);

	// gobject.TypeInterface

	Linker.link(g_type_interface_peek_parent, "g_type_interface_peek_parent", LIBRARY_GOBJECT);
	Linker.link(g_type_interface_add_prerequisite, "g_type_interface_add_prerequisite", LIBRARY_GOBJECT);
	Linker.link(g_type_interface_get_plugin, "g_type_interface_get_plugin", LIBRARY_GOBJECT);
	Linker.link(g_type_interface_instantiatable_prerequisite, "g_type_interface_instantiatable_prerequisite", LIBRARY_GOBJECT);
	Linker.link(g_type_interface_peek, "g_type_interface_peek", LIBRARY_GOBJECT);
	Linker.link(g_type_interface_prerequisites, "g_type_interface_prerequisites", LIBRARY_GOBJECT);

	// gobject.TypeModule

	Linker.link(g_type_module_get_type, "g_type_module_get_type", LIBRARY_GOBJECT);
	Linker.link(g_type_module_add_interface, "g_type_module_add_interface", LIBRARY_GOBJECT);
	Linker.link(g_type_module_register_enum, "g_type_module_register_enum", LIBRARY_GOBJECT);
	Linker.link(g_type_module_register_flags, "g_type_module_register_flags", LIBRARY_GOBJECT);
	Linker.link(g_type_module_register_type, "g_type_module_register_type", LIBRARY_GOBJECT);
	Linker.link(g_type_module_set_name, "g_type_module_set_name", LIBRARY_GOBJECT);
	Linker.link(g_type_module_unuse, "g_type_module_unuse", LIBRARY_GOBJECT);
	Linker.link(g_type_module_use, "g_type_module_use", LIBRARY_GOBJECT);

	// gobject.TypePlugin

	Linker.link(g_type_plugin_get_type, "g_type_plugin_get_type", LIBRARY_GOBJECT);
	Linker.link(g_type_plugin_complete_interface_info, "g_type_plugin_complete_interface_info", LIBRARY_GOBJECT);
	Linker.link(g_type_plugin_complete_type_info, "g_type_plugin_complete_type_info", LIBRARY_GOBJECT);
	Linker.link(g_type_plugin_unuse, "g_type_plugin_unuse", LIBRARY_GOBJECT);
	Linker.link(g_type_plugin_use, "g_type_plugin_use", LIBRARY_GOBJECT);

	// gobject.TypeValueTable

	Linker.link(g_type_value_table_peek, "g_type_value_table_peek", LIBRARY_GOBJECT);

	// gobject.Value

	Linker.link(g_value_get_type, "g_value_get_type", LIBRARY_GOBJECT);
	Linker.link(g_value_copy, "g_value_copy", LIBRARY_GOBJECT);
	Linker.link(g_value_dup_boxed, "g_value_dup_boxed", LIBRARY_GOBJECT);
	Linker.link(g_value_dup_object, "g_value_dup_object", LIBRARY_GOBJECT);
	Linker.link(g_value_dup_param, "g_value_dup_param", LIBRARY_GOBJECT);
	Linker.link(g_value_dup_string, "g_value_dup_string", LIBRARY_GOBJECT);
	Linker.link(g_value_dup_variant, "g_value_dup_variant", LIBRARY_GOBJECT);
	Linker.link(g_value_fits_pointer, "g_value_fits_pointer", LIBRARY_GOBJECT);
	Linker.link(g_value_get_boolean, "g_value_get_boolean", LIBRARY_GOBJECT);
	Linker.link(g_value_get_boxed, "g_value_get_boxed", LIBRARY_GOBJECT);
	Linker.link(g_value_get_char, "g_value_get_char", LIBRARY_GOBJECT);
	Linker.link(g_value_get_double, "g_value_get_double", LIBRARY_GOBJECT);
	Linker.link(g_value_get_enum, "g_value_get_enum", LIBRARY_GOBJECT);
	Linker.link(g_value_get_flags, "g_value_get_flags", LIBRARY_GOBJECT);
	Linker.link(g_value_get_float, "g_value_get_float", LIBRARY_GOBJECT);
	Linker.link(g_value_get_gtype, "g_value_get_gtype", LIBRARY_GOBJECT);
	Linker.link(g_value_get_int, "g_value_get_int", LIBRARY_GOBJECT);
	Linker.link(g_value_get_int64, "g_value_get_int64", LIBRARY_GOBJECT);
	Linker.link(g_value_get_long, "g_value_get_long", LIBRARY_GOBJECT);
	Linker.link(g_value_get_object, "g_value_get_object", LIBRARY_GOBJECT);
	Linker.link(g_value_get_param, "g_value_get_param", LIBRARY_GOBJECT);
	Linker.link(g_value_get_pointer, "g_value_get_pointer", LIBRARY_GOBJECT);
	Linker.link(g_value_get_schar, "g_value_get_schar", LIBRARY_GOBJECT);
	Linker.link(g_value_get_string, "g_value_get_string", LIBRARY_GOBJECT);
	Linker.link(g_value_get_uchar, "g_value_get_uchar", LIBRARY_GOBJECT);
	Linker.link(g_value_get_uint, "g_value_get_uint", LIBRARY_GOBJECT);
	Linker.link(g_value_get_uint64, "g_value_get_uint64", LIBRARY_GOBJECT);
	Linker.link(g_value_get_ulong, "g_value_get_ulong", LIBRARY_GOBJECT);
	Linker.link(g_value_get_variant, "g_value_get_variant", LIBRARY_GOBJECT);
	Linker.link(g_value_init, "g_value_init", LIBRARY_GOBJECT);
	Linker.link(g_value_init_from_instance, "g_value_init_from_instance", LIBRARY_GOBJECT);
	Linker.link(g_value_peek_pointer, "g_value_peek_pointer", LIBRARY_GOBJECT);
	Linker.link(g_value_reset, "g_value_reset", LIBRARY_GOBJECT);
	Linker.link(g_value_set_boolean, "g_value_set_boolean", LIBRARY_GOBJECT);
	Linker.link(g_value_set_boxed, "g_value_set_boxed", LIBRARY_GOBJECT);
	Linker.link(g_value_set_boxed_take_ownership, "g_value_set_boxed_take_ownership", LIBRARY_GOBJECT);
	Linker.link(g_value_set_char, "g_value_set_char", LIBRARY_GOBJECT);
	Linker.link(g_value_set_double, "g_value_set_double", LIBRARY_GOBJECT);
	Linker.link(g_value_set_enum, "g_value_set_enum", LIBRARY_GOBJECT);
	Linker.link(g_value_set_flags, "g_value_set_flags", LIBRARY_GOBJECT);
	Linker.link(g_value_set_float, "g_value_set_float", LIBRARY_GOBJECT);
	Linker.link(g_value_set_gtype, "g_value_set_gtype", LIBRARY_GOBJECT);
	Linker.link(g_value_set_instance, "g_value_set_instance", LIBRARY_GOBJECT);
	Linker.link(g_value_set_int, "g_value_set_int", LIBRARY_GOBJECT);
	Linker.link(g_value_set_int64, "g_value_set_int64", LIBRARY_GOBJECT);
	Linker.link(g_value_set_interned_string, "g_value_set_interned_string", LIBRARY_GOBJECT);
	Linker.link(g_value_set_long, "g_value_set_long", LIBRARY_GOBJECT);
	Linker.link(g_value_set_object, "g_value_set_object", LIBRARY_GOBJECT);
	Linker.link(g_value_set_object_take_ownership, "g_value_set_object_take_ownership", LIBRARY_GOBJECT);
	Linker.link(g_value_set_param, "g_value_set_param", LIBRARY_GOBJECT);
	Linker.link(g_value_set_param_take_ownership, "g_value_set_param_take_ownership", LIBRARY_GOBJECT);
	Linker.link(g_value_set_pointer, "g_value_set_pointer", LIBRARY_GOBJECT);
	Linker.link(g_value_set_schar, "g_value_set_schar", LIBRARY_GOBJECT);
	Linker.link(g_value_set_static_boxed, "g_value_set_static_boxed", LIBRARY_GOBJECT);
	Linker.link(g_value_set_static_string, "g_value_set_static_string", LIBRARY_GOBJECT);
	Linker.link(g_value_set_string, "g_value_set_string", LIBRARY_GOBJECT);
	Linker.link(g_value_set_string_take_ownership, "g_value_set_string_take_ownership", LIBRARY_GOBJECT);
	Linker.link(g_value_set_uchar, "g_value_set_uchar", LIBRARY_GOBJECT);
	Linker.link(g_value_set_uint, "g_value_set_uint", LIBRARY_GOBJECT);
	Linker.link(g_value_set_uint64, "g_value_set_uint64", LIBRARY_GOBJECT);
	Linker.link(g_value_set_ulong, "g_value_set_ulong", LIBRARY_GOBJECT);
	Linker.link(g_value_set_variant, "g_value_set_variant", LIBRARY_GOBJECT);
	Linker.link(g_value_take_boxed, "g_value_take_boxed", LIBRARY_GOBJECT);
	Linker.link(g_value_take_object, "g_value_take_object", LIBRARY_GOBJECT);
	Linker.link(g_value_take_param, "g_value_take_param", LIBRARY_GOBJECT);
	Linker.link(g_value_take_string, "g_value_take_string", LIBRARY_GOBJECT);
	Linker.link(g_value_take_variant, "g_value_take_variant", LIBRARY_GOBJECT);
	Linker.link(g_value_transform, "g_value_transform", LIBRARY_GOBJECT);
	Linker.link(g_value_unset, "g_value_unset", LIBRARY_GOBJECT);
	Linker.link(g_value_register_transform_func, "g_value_register_transform_func", LIBRARY_GOBJECT);
	Linker.link(g_value_type_compatible, "g_value_type_compatible", LIBRARY_GOBJECT);
	Linker.link(g_value_type_transformable, "g_value_type_transformable", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_boolean, "g_param_spec_boolean", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_boxed, "g_param_spec_boxed", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_char, "g_param_spec_char", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_double, "g_param_spec_double", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_enum, "g_param_spec_enum", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_flags, "g_param_spec_flags", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_float, "g_param_spec_float", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_gtype, "g_param_spec_gtype", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_int, "g_param_spec_int", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_int64, "g_param_spec_int64", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_long, "g_param_spec_long", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_object, "g_param_spec_object", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_override, "g_param_spec_override", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_param, "g_param_spec_param", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_pointer, "g_param_spec_pointer", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_string, "g_param_spec_string", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_uchar, "g_param_spec_uchar", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_uint, "g_param_spec_uint", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_uint64, "g_param_spec_uint64", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_ulong, "g_param_spec_ulong", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_unichar, "g_param_spec_unichar", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_value_array, "g_param_spec_value_array", LIBRARY_GOBJECT);
	Linker.link(g_param_spec_variant, "g_param_spec_variant", LIBRARY_GOBJECT);
	Linker.link(g_strdup_value_contents, "g_strdup_value_contents", LIBRARY_GOBJECT);

	// gobject.ValueArray

	Linker.link(g_value_array_get_type, "g_value_array_get_type", LIBRARY_GOBJECT);
	Linker.link(g_value_array_new, "g_value_array_new", LIBRARY_GOBJECT);
	Linker.link(g_value_array_append, "g_value_array_append", LIBRARY_GOBJECT);
	Linker.link(g_value_array_copy, "g_value_array_copy", LIBRARY_GOBJECT);
	Linker.link(g_value_array_free, "g_value_array_free", LIBRARY_GOBJECT);
	Linker.link(g_value_array_get_nth, "g_value_array_get_nth", LIBRARY_GOBJECT);
	Linker.link(g_value_array_insert, "g_value_array_insert", LIBRARY_GOBJECT);
	Linker.link(g_value_array_prepend, "g_value_array_prepend", LIBRARY_GOBJECT);
	Linker.link(g_value_array_remove, "g_value_array_remove", LIBRARY_GOBJECT);
	Linker.link(g_value_array_sort, "g_value_array_sort", LIBRARY_GOBJECT);
	Linker.link(g_value_array_sort_with_data, "g_value_array_sort_with_data", LIBRARY_GOBJECT);

	// gobject.WeakRef

	Linker.link(g_weak_ref_clear, "g_weak_ref_clear", LIBRARY_GOBJECT);
	Linker.link(g_weak_ref_get, "g_weak_ref_get", LIBRARY_GOBJECT);
	Linker.link(g_weak_ref_init, "g_weak_ref_init", LIBRARY_GOBJECT);
	Linker.link(g_weak_ref_set, "g_weak_ref_set", LIBRARY_GOBJECT);

	// gobject.Signals

	Linker.link(g_signal_handler_disconnect, "g_signal_handler_disconnect", LIBRARY_GOBJECT);
	Linker.link(g_signal_accumulator_first_wins, "g_signal_accumulator_first_wins", LIBRARY_GOBJECT);
	Linker.link(g_signal_accumulator_true_handled, "g_signal_accumulator_true_handled", LIBRARY_GOBJECT);
	Linker.link(g_signal_add_emission_hook, "g_signal_add_emission_hook", LIBRARY_GOBJECT);
	Linker.link(g_signal_chain_from_overridden, "g_signal_chain_from_overridden", LIBRARY_GOBJECT);
	Linker.link(g_signal_chain_from_overridden_handler, "g_signal_chain_from_overridden_handler", LIBRARY_GOBJECT);
	Linker.link(g_signal_connect_closure, "g_signal_connect_closure", LIBRARY_GOBJECT);
	Linker.link(g_signal_connect_closure_by_id, "g_signal_connect_closure_by_id", LIBRARY_GOBJECT);
	Linker.link(g_signal_connect_data, "g_signal_connect_data", LIBRARY_GOBJECT);
	Linker.link(g_signal_connect_object, "g_signal_connect_object", LIBRARY_GOBJECT);
	Linker.link(g_signal_emit, "g_signal_emit", LIBRARY_GOBJECT);
	Linker.link(g_signal_emit_by_name, "g_signal_emit_by_name", LIBRARY_GOBJECT);
	Linker.link(g_signal_emit_valist, "g_signal_emit_valist", LIBRARY_GOBJECT);
	Linker.link(g_signal_emitv, "g_signal_emitv", LIBRARY_GOBJECT);
	Linker.link(g_signal_get_invocation_hint, "g_signal_get_invocation_hint", LIBRARY_GOBJECT);
	Linker.link(g_signal_handler_block, "g_signal_handler_block", LIBRARY_GOBJECT);
	Linker.link(g_signal_handler_find, "g_signal_handler_find", LIBRARY_GOBJECT);
	Linker.link(g_signal_handler_is_connected, "g_signal_handler_is_connected", LIBRARY_GOBJECT);
	Linker.link(g_signal_handler_unblock, "g_signal_handler_unblock", LIBRARY_GOBJECT);
	Linker.link(g_signal_handlers_block_matched, "g_signal_handlers_block_matched", LIBRARY_GOBJECT);
	Linker.link(g_signal_handlers_destroy, "g_signal_handlers_destroy", LIBRARY_GOBJECT);
	Linker.link(g_signal_handlers_disconnect_matched, "g_signal_handlers_disconnect_matched", LIBRARY_GOBJECT);
	Linker.link(g_signal_handlers_unblock_matched, "g_signal_handlers_unblock_matched", LIBRARY_GOBJECT);
	Linker.link(g_signal_has_handler_pending, "g_signal_has_handler_pending", LIBRARY_GOBJECT);
	Linker.link(g_signal_list_ids, "g_signal_list_ids", LIBRARY_GOBJECT);
	Linker.link(g_signal_lookup, "g_signal_lookup", LIBRARY_GOBJECT);
	Linker.link(g_signal_name, "g_signal_name", LIBRARY_GOBJECT);
	Linker.link(g_signal_new, "g_signal_new", LIBRARY_GOBJECT);
	Linker.link(g_signal_new_class_handler, "g_signal_new_class_handler", LIBRARY_GOBJECT);
	Linker.link(g_signal_new_valist, "g_signal_new_valist", LIBRARY_GOBJECT);
	Linker.link(g_signal_newv, "g_signal_newv", LIBRARY_GOBJECT);
	Linker.link(g_signal_override_class_closure, "g_signal_override_class_closure", LIBRARY_GOBJECT);
	Linker.link(g_signal_override_class_handler, "g_signal_override_class_handler", LIBRARY_GOBJECT);
	Linker.link(g_signal_parse_name, "g_signal_parse_name", LIBRARY_GOBJECT);
	Linker.link(g_signal_query, "g_signal_query", LIBRARY_GOBJECT);
	Linker.link(g_signal_remove_emission_hook, "g_signal_remove_emission_hook", LIBRARY_GOBJECT);
	Linker.link(g_signal_set_va_marshaller, "g_signal_set_va_marshaller", LIBRARY_GOBJECT);
	Linker.link(g_signal_stop_emission, "g_signal_stop_emission", LIBRARY_GOBJECT);
	Linker.link(g_signal_stop_emission_by_name, "g_signal_stop_emission_by_name", LIBRARY_GOBJECT);
	Linker.link(g_signal_type_cclosure_new, "g_signal_type_cclosure_new", LIBRARY_GOBJECT);
	Linker.link(g_clear_signal_handler, "g_clear_signal_handler", LIBRARY_GOBJECT);

	// gobject.Type

	Linker.link(g_type_add_class_cache_func, "g_type_add_class_cache_func", LIBRARY_GOBJECT);
	Linker.link(g_type_add_class_private, "g_type_add_class_private", LIBRARY_GOBJECT);
	Linker.link(g_type_add_instance_private, "g_type_add_instance_private", LIBRARY_GOBJECT);
	Linker.link(g_type_add_interface_check, "g_type_add_interface_check", LIBRARY_GOBJECT);
	Linker.link(g_type_add_interface_dynamic, "g_type_add_interface_dynamic", LIBRARY_GOBJECT);
	Linker.link(g_type_add_interface_static, "g_type_add_interface_static", LIBRARY_GOBJECT);
	Linker.link(g_type_check_class_cast, "g_type_check_class_cast", LIBRARY_GOBJECT);
	Linker.link(g_type_check_class_is_a, "g_type_check_class_is_a", LIBRARY_GOBJECT);
	Linker.link(g_type_check_instance, "g_type_check_instance", LIBRARY_GOBJECT);
	Linker.link(g_type_check_instance_cast, "g_type_check_instance_cast", LIBRARY_GOBJECT);
	Linker.link(g_type_check_instance_is_a, "g_type_check_instance_is_a", LIBRARY_GOBJECT);
	Linker.link(g_type_check_instance_is_fundamentally_a, "g_type_check_instance_is_fundamentally_a", LIBRARY_GOBJECT);
	Linker.link(g_type_check_is_value_type, "g_type_check_is_value_type", LIBRARY_GOBJECT);
	Linker.link(g_type_check_value, "g_type_check_value", LIBRARY_GOBJECT);
	Linker.link(g_type_check_value_holds, "g_type_check_value_holds", LIBRARY_GOBJECT);
	Linker.link(g_type_children, "g_type_children", LIBRARY_GOBJECT);
	Linker.link(g_type_create_instance, "g_type_create_instance", LIBRARY_GOBJECT);
	Linker.link(g_type_default_interface_peek, "g_type_default_interface_peek", LIBRARY_GOBJECT);
	Linker.link(g_type_default_interface_ref, "g_type_default_interface_ref", LIBRARY_GOBJECT);
	Linker.link(g_type_default_interface_unref, "g_type_default_interface_unref", LIBRARY_GOBJECT);
	Linker.link(g_type_depth, "g_type_depth", LIBRARY_GOBJECT);
	Linker.link(g_type_ensure, "g_type_ensure", LIBRARY_GOBJECT);
	Linker.link(g_type_free_instance, "g_type_free_instance", LIBRARY_GOBJECT);
	Linker.link(g_type_from_name, "g_type_from_name", LIBRARY_GOBJECT);
	Linker.link(g_type_fundamental, "g_type_fundamental", LIBRARY_GOBJECT);
	Linker.link(g_type_fundamental_next, "g_type_fundamental_next", LIBRARY_GOBJECT);
	Linker.link(g_type_get_plugin, "g_type_get_plugin", LIBRARY_GOBJECT);
	Linker.link(g_type_get_qdata, "g_type_get_qdata", LIBRARY_GOBJECT);
	Linker.link(g_type_get_type_registration_serial, "g_type_get_type_registration_serial", LIBRARY_GOBJECT);
	Linker.link(g_type_init, "g_type_init", LIBRARY_GOBJECT);
	Linker.link(g_type_init_with_debug_flags, "g_type_init_with_debug_flags", LIBRARY_GOBJECT);
	Linker.link(g_type_interfaces, "g_type_interfaces", LIBRARY_GOBJECT);
	Linker.link(g_type_is_a, "g_type_is_a", LIBRARY_GOBJECT);
	Linker.link(g_type_name, "g_type_name", LIBRARY_GOBJECT);
	Linker.link(g_type_name_from_class, "g_type_name_from_class", LIBRARY_GOBJECT);
	Linker.link(g_type_name_from_instance, "g_type_name_from_instance", LIBRARY_GOBJECT);
	Linker.link(g_type_next_base, "g_type_next_base", LIBRARY_GOBJECT);
	Linker.link(g_type_parent, "g_type_parent", LIBRARY_GOBJECT);
	Linker.link(g_type_qname, "g_type_qname", LIBRARY_GOBJECT);
	Linker.link(g_type_query, "g_type_query", LIBRARY_GOBJECT);
	Linker.link(g_type_register_dynamic, "g_type_register_dynamic", LIBRARY_GOBJECT);
	Linker.link(g_type_register_fundamental, "g_type_register_fundamental", LIBRARY_GOBJECT);
	Linker.link(g_type_register_static, "g_type_register_static", LIBRARY_GOBJECT);
	Linker.link(g_type_register_static_simple, "g_type_register_static_simple", LIBRARY_GOBJECT);
	Linker.link(g_type_remove_class_cache_func, "g_type_remove_class_cache_func", LIBRARY_GOBJECT);
	Linker.link(g_type_remove_interface_check, "g_type_remove_interface_check", LIBRARY_GOBJECT);
	Linker.link(g_type_set_qdata, "g_type_set_qdata", LIBRARY_GOBJECT);
	Linker.link(g_type_test_flags, "g_type_test_flags", LIBRARY_GOBJECT);
	Linker.link(g_type_get_instance_count, "g_type_get_instance_count", LIBRARY_GOBJECT);

	// gobject.Boxed

	Linker.link(g_boxed_copy, "g_boxed_copy", LIBRARY_GOBJECT);
	Linker.link(g_boxed_free, "g_boxed_free", LIBRARY_GOBJECT);
	Linker.link(g_boxed_type_register_static, "g_boxed_type_register_static", LIBRARY_GOBJECT);
	Linker.link(g_pointer_type_register_static, "g_pointer_type_register_static", LIBRARY_GOBJECT);

	// gobject.Enums

	Linker.link(g_enum_complete_type_info, "g_enum_complete_type_info", LIBRARY_GOBJECT);
	Linker.link(g_enum_get_value, "g_enum_get_value", LIBRARY_GOBJECT);
	Linker.link(g_enum_get_value_by_name, "g_enum_get_value_by_name", LIBRARY_GOBJECT);
	Linker.link(g_enum_get_value_by_nick, "g_enum_get_value_by_nick", LIBRARY_GOBJECT);
	Linker.link(g_enum_register_static, "g_enum_register_static", LIBRARY_GOBJECT);
	Linker.link(g_enum_to_string, "g_enum_to_string", LIBRARY_GOBJECT);
	Linker.link(g_flags_to_string, "g_flags_to_string", LIBRARY_GOBJECT);

	// gobject.Flags

	Linker.link(g_flags_complete_type_info, "g_flags_complete_type_info", LIBRARY_GOBJECT);
	Linker.link(g_flags_get_first_value, "g_flags_get_first_value", LIBRARY_GOBJECT);
	Linker.link(g_flags_get_value_by_name, "g_flags_get_value_by_name", LIBRARY_GOBJECT);
	Linker.link(g_flags_get_value_by_nick, "g_flags_get_value_by_nick", LIBRARY_GOBJECT);
	Linker.link(g_flags_register_static, "g_flags_register_static", LIBRARY_GOBJECT);
}

__gshared extern(C)
{

	// gobject.Binding

	GType function() c_g_binding_get_type;
	GObject* function(GBinding* binding) c_g_binding_dup_source;
	GObject* function(GBinding* binding) c_g_binding_dup_target;
	GBindingFlags function(GBinding* binding) c_g_binding_get_flags;
	GObject* function(GBinding* binding) c_g_binding_get_source;
	const(char)* function(GBinding* binding) c_g_binding_get_source_property;
	GObject* function(GBinding* binding) c_g_binding_get_target;
	const(char)* function(GBinding* binding) c_g_binding_get_target_property;
	void function(GBinding* binding) c_g_binding_unbind;

	// gobject.BindingGroup

	GType function() c_g_binding_group_get_type;
	GBindingGroup* function() c_g_binding_group_new;
	void function(GBindingGroup* self, const(char)* sourceProperty, void* target, const(char)* targetProperty, GBindingFlags flags) c_g_binding_group_bind;
	void function(GBindingGroup* self, const(char)* sourceProperty, void* target, const(char)* targetProperty, GBindingFlags flags, GBindingTransformFunc transformTo, GBindingTransformFunc transformFrom, void* userData, GDestroyNotify userDataDestroy) c_g_binding_group_bind_full;
	void function(GBindingGroup* self, const(char)* sourceProperty, void* target, const(char)* targetProperty, GBindingFlags flags, GClosure* transformTo, GClosure* transformFrom) c_g_binding_group_bind_with_closures;
	void* function(GBindingGroup* self) c_g_binding_group_dup_source;
	void function(GBindingGroup* self, void* source) c_g_binding_group_set_source;

	// gobject.CClosure

	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_BOOLEAN__BOXED_BOXED;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_BOOLEAN__FLAGS;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_BOOLEAN__FLAGSv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_STRING__OBJECT_POINTER;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_STRING__OBJECT_POINTERv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__BOOLEAN;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__BOOLEANv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__BOXED;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__BOXEDv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__CHAR;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__CHARv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__DOUBLE;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__DOUBLEv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__ENUM;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__ENUMv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__FLAGS;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__FLAGSv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__FLOAT;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__FLOATv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__INT;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__INTv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__LONG;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__LONGv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__OBJECT;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__OBJECTv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__PARAM;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__PARAMv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__POINTER;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__POINTERv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__STRING;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__STRINGv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__UCHAR;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__UCHARv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__UINT;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__UINT_POINTER;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__UINT_POINTERv;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__UINTv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__ULONG;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__ULONGv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__VARIANT;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__VARIANTv;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_VOID__VOID;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_VOID__VOIDv;
	void function(GClosure* closure, GValue* returnGvalue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_g_cclosure_marshal_generic;
	void function(GClosure* closure, GValue* returnValue, void* instance_, void* argsList, void* marshalData, int nParams, GType* paramTypes) c_g_cclosure_marshal_generic_va;
	GClosure* function(GCallback callbackFunc, void* userData, GClosureNotify destroyData) c_g_cclosure_new;
	GClosure* function(GCallback callbackFunc, GObject* object) c_g_cclosure_new_object;
	GClosure* function(GCallback callbackFunc, GObject* object) c_g_cclosure_new_object_swap;
	GClosure* function(GCallback callbackFunc, void* userData, GClosureNotify destroyData) c_g_cclosure_new_swap;

	// gobject.Closure

	GType function() c_g_closure_get_type;
	GClosure* function(uint sizeofClosure, GObject* object) c_g_closure_new_object;
	GClosure* function(uint sizeofClosure, void* data) c_g_closure_new_simple;
	void function(GClosure* closure, void* notifyData, GClosureNotify notifyFunc) c_g_closure_add_finalize_notifier;
	void function(GClosure* closure, void* notifyData, GClosureNotify notifyFunc) c_g_closure_add_invalidate_notifier;
	void function(GClosure* closure, void* preMarshalData, GClosureNotify preMarshalNotify, void* postMarshalData, GClosureNotify postMarshalNotify) c_g_closure_add_marshal_guards;
	void function(GClosure* closure) c_g_closure_invalidate;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint) c_g_closure_invoke;
	GClosure* function(GClosure* closure) c_g_closure_ref;
	void function(GClosure* closure, void* notifyData, GClosureNotify notifyFunc) c_g_closure_remove_finalize_notifier;
	void function(GClosure* closure, void* notifyData, GClosureNotify notifyFunc) c_g_closure_remove_invalidate_notifier;
	void function(GClosure* closure, GClosureMarshal marshal) c_g_closure_set_marshal;
	void function(GClosure* closure, void* marshalData, GClosureMarshal metaMarshal) c_g_closure_set_meta_marshal;
	void function(GClosure* closure) c_g_closure_sink;
	void function(GClosure* closure) c_g_closure_unref;
	void function(GSource* source, GClosure* closure) c_g_source_set_closure;
	void function(GSource* source) c_g_source_set_dummy_callback;

	// gobject.ObjectG

	GType function() c_g_initially_unowned_get_type;
	void* function(GType objectType, const(char)* firstPropertyName, ... ) c_g_object_new;
	GObject* function(GType objectType, const(char)* firstPropertyName, void* varArgs) c_g_object_new_valist;
	GObject* function(GType objectType, uint nProperties, char** names, GValue* values) c_g_object_new_with_properties;
	void* function(GType objectType, uint nParameters, GParameter* parameters) c_g_object_newv;
	size_t function(size_t what, void* data) c_g_object_compat_control;
	GParamSpec* function(void* gIface, const(char)* propertyName) c_g_object_interface_find_property;
	void function(void* gIface, GParamSpec* pspec) c_g_object_interface_install_property;
	GParamSpec** function(void* gIface, uint* nPropertiesP) c_g_object_interface_list_properties;
	void function(GObject* object, GToggleNotify notify, void* data) c_g_object_add_toggle_ref;
	void function(GObject* object, void** weakPointerLocation) c_g_object_add_weak_pointer;
	GBinding* function(void* source, const(char)* sourceProperty, void* target, const(char)* targetProperty, GBindingFlags flags) c_g_object_bind_property;
	GBinding* function(void* source, const(char)* sourceProperty, void* target, const(char)* targetProperty, GBindingFlags flags, GBindingTransformFunc transformTo, GBindingTransformFunc transformFrom, void* userData, GDestroyNotify notify) c_g_object_bind_property_full;
	GBinding* function(void* source, const(char)* sourceProperty, void* target, const(char)* targetProperty, GBindingFlags flags, GClosure* transformTo, GClosure* transformFrom) c_g_object_bind_property_with_closures;
	void* function(void* object, const(char)* signalSpec, ... ) c_g_object_connect;
	void function(void* object, const(char)* signalSpec, ... ) c_g_object_disconnect;
	void* function(GObject* object, const(char)* key, GDuplicateFunc dupFunc, void* userData) c_g_object_dup_data;
	void* function(GObject* object, GQuark quark, GDuplicateFunc dupFunc, void* userData) c_g_object_dup_qdata;
	void function(GObject* object) c_g_object_force_floating;
	void function(GObject* object) c_g_object_freeze_notify;
	void function(void* object, const(char)* firstPropertyName, ... ) c_g_object_get;
	void* function(GObject* object, const(char)* key) c_g_object_get_data;
	void function(GObject* object, const(char)* propertyName, GValue* value) c_g_object_get_property;
	void* function(GObject* object, GQuark quark) c_g_object_get_qdata;
	void function(GObject* object, const(char)* firstPropertyName, void* varArgs) c_g_object_get_valist;
	void function(GObject* object, uint nProperties, char** names, GValue* values) c_g_object_getv;
	int function(void* object) c_g_object_is_floating;
	void function(GObject* object, const(char)* propertyName) c_g_object_notify;
	void function(GObject* object, GParamSpec* pspec) c_g_object_notify_by_pspec;
	void* function(void* object) c_g_object_ref;
	void* function(void* object) c_g_object_ref_sink;
	void function(GObject* object, GToggleNotify notify, void* data) c_g_object_remove_toggle_ref;
	void function(GObject* object, void** weakPointerLocation) c_g_object_remove_weak_pointer;
	int function(GObject* object, const(char)* key, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* oldDestroy) c_g_object_replace_data;
	int function(GObject* object, GQuark quark, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* oldDestroy) c_g_object_replace_qdata;
	void function(GObject* object) c_g_object_run_dispose;
	void function(void* object, const(char)* firstPropertyName, ... ) c_g_object_set;
	void function(GObject* object, const(char)* key, void* data) c_g_object_set_data;
	void function(GObject* object, const(char)* key, void* data, GDestroyNotify destroy) c_g_object_set_data_full;
	void function(GObject* object, const(char)* propertyName, GValue* value) c_g_object_set_property;
	void function(GObject* object, GQuark quark, void* data) c_g_object_set_qdata;
	void function(GObject* object, GQuark quark, void* data, GDestroyNotify destroy) c_g_object_set_qdata_full;
	void function(GObject* object, const(char)* firstPropertyName, void* varArgs) c_g_object_set_valist;
	void function(GObject* object, uint nProperties, char** names, GValue* values) c_g_object_setv;
	void* function(GObject* object, const(char)* key) c_g_object_steal_data;
	void* function(GObject* object, GQuark quark) c_g_object_steal_qdata;
	void* function(void* object) c_g_object_take_ref;
	void function(GObject* object) c_g_object_thaw_notify;
	void function(void* object) c_g_object_unref;
	void function(GObject* object, GClosure* closure) c_g_object_watch_closure;
	void function(GObject* object, GWeakNotify notify, void* data) c_g_object_weak_ref;
	void function(GObject* object, GWeakNotify notify, void* data) c_g_object_weak_unref;
	void function(GObject** objectPtr) c_g_clear_object;

	// gobject.ObjectClass

	GParamSpec* function(GObjectClass* oclass, const(char)* propertyName) c_g_object_class_find_property;
	void function(GObjectClass* oclass, uint nPspecs, GParamSpec** pspecs) c_g_object_class_install_properties;
	void function(GObjectClass* oclass, uint propertyId, GParamSpec* pspec) c_g_object_class_install_property;
	GParamSpec** function(GObjectClass* oclass, uint* nProperties) c_g_object_class_list_properties;
	void function(GObjectClass* oclass, uint propertyId, const(char)* name) c_g_object_class_override_property;

	// gobject.ParamSpec

	void* function(GType paramType, const(char)* name, const(char)* nick, const(char)* blurb, GParamFlags flags) c_g_param_spec_internal;
	int function(const(char)* name) c_g_param_spec_is_valid_name;
	const(char)* function(GParamSpec* pspec) c_g_param_spec_get_blurb;
	GValue* function(GParamSpec* pspec) c_g_param_spec_get_default_value;
	const(char)* function(GParamSpec* pspec) c_g_param_spec_get_name;
	GQuark function(GParamSpec* pspec) c_g_param_spec_get_name_quark;
	const(char)* function(GParamSpec* pspec) c_g_param_spec_get_nick;
	void* function(GParamSpec* pspec, GQuark quark) c_g_param_spec_get_qdata;
	GParamSpec* function(GParamSpec* pspec) c_g_param_spec_get_redirect_target;
	GParamSpec* function(GParamSpec* pspec) c_g_param_spec_ref;
	GParamSpec* function(GParamSpec* pspec) c_g_param_spec_ref_sink;
	void function(GParamSpec* pspec, GQuark quark, void* data) c_g_param_spec_set_qdata;
	void function(GParamSpec* pspec, GQuark quark, void* data, GDestroyNotify destroy) c_g_param_spec_set_qdata_full;
	void function(GParamSpec* pspec) c_g_param_spec_sink;
	void* function(GParamSpec* pspec, GQuark quark) c_g_param_spec_steal_qdata;
	void function(GParamSpec* pspec) c_g_param_spec_unref;
	GType function(const(char)* name, GParamSpecTypeInfo* pspecInfo) c_g_param_type_register_static;
	int function(GParamSpec* pspec, GValue* srcValue, GValue* destValue, int strictValidation) c_g_param_value_convert;
	int function(GParamSpec* pspec, GValue* value) c_g_param_value_defaults;
	void function(GParamSpec* pspec, GValue* value) c_g_param_value_set_default;
	int function(GParamSpec* pspec, GValue* value) c_g_param_value_validate;
	int function(GParamSpec* pspec, GValue* value1, GValue* value2) c_g_param_values_cmp;

	// gobject.ParamSpecPool

	void function(GParamSpecPool* pool, GParamSpec* pspec, GType ownerType) c_g_param_spec_pool_insert;
	GParamSpec** function(GParamSpecPool* pool, GType ownerType, uint* nPspecsP) c_g_param_spec_pool_list;
	GList* function(GParamSpecPool* pool, GType ownerType) c_g_param_spec_pool_list_owned;
	GParamSpec* function(GParamSpecPool* pool, const(char)* paramName, GType ownerType, int walkAncestors) c_g_param_spec_pool_lookup;
	void function(GParamSpecPool* pool, GParamSpec* pspec) c_g_param_spec_pool_remove;
	GParamSpecPool* function(int typePrefixing) c_g_param_spec_pool_new;

	// gobject.SignalGroup

	GType function() c_g_signal_group_get_type;
	GSignalGroup* function(GType targetType) c_g_signal_group_new;
	void function(GSignalGroup* self) c_g_signal_group_block;
	void function(GSignalGroup* self, const(char)* detailedSignal, GCallback cHandler, void* data) c_g_signal_group_connect;
	void function(GSignalGroup* self, const(char)* detailedSignal, GCallback cHandler, void* data) c_g_signal_group_connect_after;
	void function(GSignalGroup* self, const(char)* detailedSignal, GCallback cHandler, void* data, GClosureNotify notify, GConnectFlags flags) c_g_signal_group_connect_data;
	void function(GSignalGroup* self, const(char)* detailedSignal, GCallback cHandler, void* object, GConnectFlags flags) c_g_signal_group_connect_object;
	void function(GSignalGroup* self, const(char)* detailedSignal, GCallback cHandler, void* data) c_g_signal_group_connect_swapped;
	void* function(GSignalGroup* self) c_g_signal_group_dup_target;
	void function(GSignalGroup* self, void* target) c_g_signal_group_set_target;
	void function(GSignalGroup* self) c_g_signal_group_unblock;

	// gobject.TypeClass

	void function(void* gClass, size_t privateSize) c_g_type_class_add_private;
	int function(void* gClass) c_g_type_class_get_instance_private_offset;
	void* function(GTypeClass* klass, GType privateType) c_g_type_class_get_private;
	void* function(void* gClass) c_g_type_class_peek_parent;
	void function(void* gClass) c_g_type_class_unref;
	void function(void* gClass) c_g_type_class_unref_uncached;
	void function(void* gClass, int* privateSizeOrOffset) c_g_type_class_adjust_private_offset;
	void* function(GType type) c_g_type_class_peek;
	void* function(GType type) c_g_type_class_peek_static;
	void* function(GType type) c_g_type_class_ref;

	// gobject.TypeInstance

	void* function(GTypeInstance* instance_, GType privateType) c_g_type_instance_get_private;

	// gobject.TypeInterface

	void* function(void* gIface) c_g_type_interface_peek_parent;
	void function(GType interfaceType, GType prerequisiteType) c_g_type_interface_add_prerequisite;
	GTypePlugin* function(GType instanceType, GType interfaceType) c_g_type_interface_get_plugin;
	GType function(GType interfaceType) c_g_type_interface_instantiatable_prerequisite;
	void* function(void* instanceClass, GType ifaceType) c_g_type_interface_peek;
	GType* function(GType interfaceType, uint* nPrerequisites) c_g_type_interface_prerequisites;

	// gobject.TypeModule

	GType function() c_g_type_module_get_type;
	void function(GTypeModule* module_, GType instanceType, GType interfaceType, GInterfaceInfo* interfaceInfo) c_g_type_module_add_interface;
	GType function(GTypeModule* module_, const(char)* name, GEnumValue* constStaticValues) c_g_type_module_register_enum;
	GType function(GTypeModule* module_, const(char)* name, GFlagsValue* constStaticValues) c_g_type_module_register_flags;
	GType function(GTypeModule* module_, GType parentType, const(char)* typeName, GTypeInfo* typeInfo, GTypeFlags flags) c_g_type_module_register_type;
	void function(GTypeModule* module_, const(char)* name) c_g_type_module_set_name;
	void function(GTypeModule* module_) c_g_type_module_unuse;
	int function(GTypeModule* module_) c_g_type_module_use;

	// gobject.TypePlugin

	GType function() c_g_type_plugin_get_type;
	void function(GTypePlugin* plugin, GType instanceType, GType interfaceType, GInterfaceInfo* info) c_g_type_plugin_complete_interface_info;
	void function(GTypePlugin* plugin, GType gType, GTypeInfo* info, GTypeValueTable* valueTable) c_g_type_plugin_complete_type_info;
	void function(GTypePlugin* plugin) c_g_type_plugin_unuse;
	void function(GTypePlugin* plugin) c_g_type_plugin_use;

	// gobject.TypeValueTable

	GTypeValueTable* function(GType type) c_g_type_value_table_peek;

	// gobject.Value

	GType function() c_g_value_get_type;
	void function(GValue* srcValue, GValue* destValue) c_g_value_copy;
	void* function(GValue* value) c_g_value_dup_boxed;
	void* function(GValue* value) c_g_value_dup_object;
	GParamSpec* function(GValue* value) c_g_value_dup_param;
	char* function(GValue* value) c_g_value_dup_string;
	GVariant* function(GValue* value) c_g_value_dup_variant;
	int function(GValue* value) c_g_value_fits_pointer;
	int function(GValue* value) c_g_value_get_boolean;
	void* function(GValue* value) c_g_value_get_boxed;
	char function(GValue* value) c_g_value_get_char;
	double function(GValue* value) c_g_value_get_double;
	int function(GValue* value) c_g_value_get_enum;
	uint function(GValue* value) c_g_value_get_flags;
	float function(GValue* value) c_g_value_get_float;
	GType function(GValue* value) c_g_value_get_gtype;
	int function(GValue* value) c_g_value_get_int;
	long function(GValue* value) c_g_value_get_int64;
	glong function(GValue* value) c_g_value_get_long;
	void* function(GValue* value) c_g_value_get_object;
	GParamSpec* function(GValue* value) c_g_value_get_param;
	void* function(GValue* value) c_g_value_get_pointer;
	byte function(GValue* value) c_g_value_get_schar;
	const(char)* function(GValue* value) c_g_value_get_string;
	char function(GValue* value) c_g_value_get_uchar;
	uint function(GValue* value) c_g_value_get_uint;
	ulong function(GValue* value) c_g_value_get_uint64;
	gulong function(GValue* value) c_g_value_get_ulong;
	GVariant* function(GValue* value) c_g_value_get_variant;
	GValue* function(GValue* value, GType gType) c_g_value_init;
	void function(GValue* value, void* instance_) c_g_value_init_from_instance;
	void* function(GValue* value) c_g_value_peek_pointer;
	GValue* function(GValue* value) c_g_value_reset;
	void function(GValue* value, int vBoolean) c_g_value_set_boolean;
	void function(GValue* value, void* vBoxed) c_g_value_set_boxed;
	void function(GValue* value, void* vBoxed) c_g_value_set_boxed_take_ownership;
	void function(GValue* value, char vChar) c_g_value_set_char;
	void function(GValue* value, double vDouble) c_g_value_set_double;
	void function(GValue* value, int vEnum) c_g_value_set_enum;
	void function(GValue* value, uint vFlags) c_g_value_set_flags;
	void function(GValue* value, float vFloat) c_g_value_set_float;
	void function(GValue* value, GType vGtype) c_g_value_set_gtype;
	void function(GValue* value, void* instance_) c_g_value_set_instance;
	void function(GValue* value, int vInt) c_g_value_set_int;
	void function(GValue* value, long vInt64) c_g_value_set_int64;
	void function(GValue* value, const(char)* vString) c_g_value_set_interned_string;
	void function(GValue* value, glong vLong) c_g_value_set_long;
	void function(GValue* value, void* vObject) c_g_value_set_object;
	void function(GValue* value, void* vObject) c_g_value_set_object_take_ownership;
	void function(GValue* value, GParamSpec* param) c_g_value_set_param;
	void function(GValue* value, GParamSpec* param) c_g_value_set_param_take_ownership;
	void function(GValue* value, void* vPointer) c_g_value_set_pointer;
	void function(GValue* value, byte vChar) c_g_value_set_schar;
	void function(GValue* value, void* vBoxed) c_g_value_set_static_boxed;
	void function(GValue* value, const(char)* vString) c_g_value_set_static_string;
	void function(GValue* value, const(char)* vString) c_g_value_set_string;
	void function(GValue* value, char* vString) c_g_value_set_string_take_ownership;
	void function(GValue* value, char vUchar) c_g_value_set_uchar;
	void function(GValue* value, uint vUint) c_g_value_set_uint;
	void function(GValue* value, ulong vUint64) c_g_value_set_uint64;
	void function(GValue* value, gulong vUlong) c_g_value_set_ulong;
	void function(GValue* value, GVariant* variant) c_g_value_set_variant;
	void function(GValue* value, void* vBoxed) c_g_value_take_boxed;
	void function(GValue* value, void* vObject) c_g_value_take_object;
	void function(GValue* value, GParamSpec* param) c_g_value_take_param;
	void function(GValue* value, char* vString) c_g_value_take_string;
	void function(GValue* value, GVariant* variant) c_g_value_take_variant;
	int function(GValue* srcValue, GValue* destValue) c_g_value_transform;
	void function(GValue* value) c_g_value_unset;
	void function(GType srcType, GType destType, GValueTransform transformFunc) c_g_value_register_transform_func;
	int function(GType srcType, GType destType) c_g_value_type_compatible;
	int function(GType srcType, GType destType) c_g_value_type_transformable;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, int defaultValue, GParamFlags flags) c_g_param_spec_boolean;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, GType boxedType, GParamFlags flags) c_g_param_spec_boxed;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, byte minimum, byte maximum, byte defaultValue, GParamFlags flags) c_g_param_spec_char;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, double minimum, double maximum, double defaultValue, GParamFlags flags) c_g_param_spec_double;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, GType enumType, int defaultValue, GParamFlags flags) c_g_param_spec_enum;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, GType flagsType, uint defaultValue, GParamFlags flags) c_g_param_spec_flags;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, float minimum, float maximum, float defaultValue, GParamFlags flags) c_g_param_spec_float;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, GType isAType, GParamFlags flags) c_g_param_spec_gtype;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, int minimum, int maximum, int defaultValue, GParamFlags flags) c_g_param_spec_int;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, long minimum, long maximum, long defaultValue, GParamFlags flags) c_g_param_spec_int64;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, glong minimum, glong maximum, glong defaultValue, GParamFlags flags) c_g_param_spec_long;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, GType objectType, GParamFlags flags) c_g_param_spec_object;
	GParamSpec* function(const(char)* name, GParamSpec* overridden) c_g_param_spec_override;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, GType paramType, GParamFlags flags) c_g_param_spec_param;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, GParamFlags flags) c_g_param_spec_pointer;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, const(char)* defaultValue, GParamFlags flags) c_g_param_spec_string;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, ubyte minimum, ubyte maximum, ubyte defaultValue, GParamFlags flags) c_g_param_spec_uchar;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, uint minimum, uint maximum, uint defaultValue, GParamFlags flags) c_g_param_spec_uint;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, ulong minimum, ulong maximum, ulong defaultValue, GParamFlags flags) c_g_param_spec_uint64;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, gulong minimum, gulong maximum, gulong defaultValue, GParamFlags flags) c_g_param_spec_ulong;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, dchar defaultValue, GParamFlags flags) c_g_param_spec_unichar;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, GParamSpec* elementSpec, GParamFlags flags) c_g_param_spec_value_array;
	GParamSpec* function(const(char)* name, const(char)* nick, const(char)* blurb, GVariantType* type, GVariant* defaultValue, GParamFlags flags) c_g_param_spec_variant;
	char* function(GValue* value) c_g_strdup_value_contents;

	// gobject.ValueArray

	GType function() c_g_value_array_get_type;
	GValueArray* function(uint nPrealloced) c_g_value_array_new;
	GValueArray* function(GValueArray* valueArray, GValue* value) c_g_value_array_append;
	GValueArray* function(GValueArray* valueArray) c_g_value_array_copy;
	void function(GValueArray* valueArray) c_g_value_array_free;
	GValue* function(GValueArray* valueArray, uint index) c_g_value_array_get_nth;
	GValueArray* function(GValueArray* valueArray, uint index, GValue* value) c_g_value_array_insert;
	GValueArray* function(GValueArray* valueArray, GValue* value) c_g_value_array_prepend;
	GValueArray* function(GValueArray* valueArray, uint index) c_g_value_array_remove;
	GValueArray* function(GValueArray* valueArray, GCompareFunc compareFunc) c_g_value_array_sort;
	GValueArray* function(GValueArray* valueArray, GCompareDataFunc compareFunc, void* userData) c_g_value_array_sort_with_data;

	// gobject.WeakRef

	void function(GWeakRef* weakRef) c_g_weak_ref_clear;
	void* function(GWeakRef* weakRef) c_g_weak_ref_get;
	void function(GWeakRef* weakRef, void* object) c_g_weak_ref_init;
	void function(GWeakRef* weakRef, void* object) c_g_weak_ref_set;

	// gobject.Signals

	void function(void* instance_, gulong handlerId) c_g_signal_handler_disconnect;
	int function(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, void* dummy) c_g_signal_accumulator_first_wins;
	int function(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, void* dummy) c_g_signal_accumulator_true_handled;
	gulong function(uint signalId, GQuark detail, GSignalEmissionHook hookFunc, void* hookData, GDestroyNotify dataDestroy) c_g_signal_add_emission_hook;
	void function(GValue* instanceAndParams, GValue* returnValue) c_g_signal_chain_from_overridden;
	void function(void* instance_, ... ) c_g_signal_chain_from_overridden_handler;
	gulong function(void* instance_, const(char)* detailedSignal, GClosure* closure, int after) c_g_signal_connect_closure;
	gulong function(void* instance_, uint signalId, GQuark detail, GClosure* closure, int after) c_g_signal_connect_closure_by_id;
	gulong function(void* instance_, const(char)* detailedSignal, GCallback cHandler, void* data, GClosureNotify destroyData, GConnectFlags connectFlags) c_g_signal_connect_data;
	gulong function(void* instance_, const(char)* detailedSignal, GCallback cHandler, void* gobject, GConnectFlags connectFlags) c_g_signal_connect_object;
	void function(void* instance_, uint signalId, GQuark detail, ... ) c_g_signal_emit;
	void function(void* instance_, const(char)* detailedSignal, ... ) c_g_signal_emit_by_name;
	void function(void* instance_, uint signalId, GQuark detail, void* varArgs) c_g_signal_emit_valist;
	void function(GValue* instanceAndParams, uint signalId, GQuark detail, GValue* returnValue) c_g_signal_emitv;
	GSignalInvocationHint* function(void* instance_) c_g_signal_get_invocation_hint;
	void function(void* instance_, gulong handlerId) c_g_signal_handler_block;
	gulong function(void* instance_, GSignalMatchType mask, uint signalId, GQuark detail, GClosure* closure, void* func, void* data) c_g_signal_handler_find;
	int function(void* instance_, gulong handlerId) c_g_signal_handler_is_connected;
	void function(void* instance_, gulong handlerId) c_g_signal_handler_unblock;
	uint function(void* instance_, GSignalMatchType mask, uint signalId, GQuark detail, GClosure* closure, void* func, void* data) c_g_signal_handlers_block_matched;
	void function(void* instance_) c_g_signal_handlers_destroy;
	uint function(void* instance_, GSignalMatchType mask, uint signalId, GQuark detail, GClosure* closure, void* func, void* data) c_g_signal_handlers_disconnect_matched;
	uint function(void* instance_, GSignalMatchType mask, uint signalId, GQuark detail, GClosure* closure, void* func, void* data) c_g_signal_handlers_unblock_matched;
	int function(void* instance_, uint signalId, GQuark detail, int mayBeBlocked) c_g_signal_has_handler_pending;
	uint* function(GType itype, uint* nIds) c_g_signal_list_ids;
	uint function(const(char)* name, GType itype) c_g_signal_lookup;
	const(char)* function(uint signalId) c_g_signal_name;
	uint function(const(char)* signalName, GType itype, GSignalFlags signalFlags, uint classOffset, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, ... ) c_g_signal_new;
	uint function(const(char)* signalName, GType itype, GSignalFlags signalFlags, GCallback classHandler, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, ... ) c_g_signal_new_class_handler;
	uint function(const(char)* signalName, GType itype, GSignalFlags signalFlags, GClosure* classClosure, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, void* args) c_g_signal_new_valist;
	uint function(const(char)* signalName, GType itype, GSignalFlags signalFlags, GClosure* classClosure, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, GType* paramTypes) c_g_signal_newv;
	void function(uint signalId, GType instanceType, GClosure* classClosure) c_g_signal_override_class_closure;
	void function(const(char)* signalName, GType instanceType, GCallback classHandler) c_g_signal_override_class_handler;
	int function(const(char)* detailedSignal, GType itype, uint* signalIdP, GQuark* detailP, int forceDetailQuark) c_g_signal_parse_name;
	void function(uint signalId, GSignalQuery* query) c_g_signal_query;
	void function(uint signalId, gulong hookId) c_g_signal_remove_emission_hook;
	void function(uint signalId, GType instanceType, GSignalCVaMarshaller vaMarshaller) c_g_signal_set_va_marshaller;
	void function(void* instance_, uint signalId, GQuark detail) c_g_signal_stop_emission;
	void function(void* instance_, const(char)* detailedSignal) c_g_signal_stop_emission_by_name;
	GClosure* function(GType itype, uint structOffset) c_g_signal_type_cclosure_new;
	void function(gulong* handlerIdPtr, void* instance_) c_g_clear_signal_handler;

	// gobject.Type

	void function(void* cacheData, GTypeClassCacheFunc cacheFunc) c_g_type_add_class_cache_func;
	void function(GType classType, size_t privateSize) c_g_type_add_class_private;
	int function(GType classType, size_t privateSize) c_g_type_add_instance_private;
	void function(void* checkData, GTypeInterfaceCheckFunc checkFunc) c_g_type_add_interface_check;
	void function(GType instanceType, GType interfaceType, GTypePlugin* plugin) c_g_type_add_interface_dynamic;
	void function(GType instanceType, GType interfaceType, GInterfaceInfo* info) c_g_type_add_interface_static;
	GTypeClass* function(GTypeClass* gClass, GType isAType) c_g_type_check_class_cast;
	int function(GTypeClass* gClass, GType isAType) c_g_type_check_class_is_a;
	int function(GTypeInstance* instance_) c_g_type_check_instance;
	GTypeInstance* function(GTypeInstance* instance_, GType ifaceType) c_g_type_check_instance_cast;
	int function(GTypeInstance* instance_, GType ifaceType) c_g_type_check_instance_is_a;
	int function(GTypeInstance* instance_, GType fundamentalType) c_g_type_check_instance_is_fundamentally_a;
	int function(GType type) c_g_type_check_is_value_type;
	int function(GValue* value) c_g_type_check_value;
	int function(GValue* value, GType type) c_g_type_check_value_holds;
	GType* function(GType type, uint* nChildren) c_g_type_children;
	GTypeInstance* function(GType type) c_g_type_create_instance;
	void* function(GType gType) c_g_type_default_interface_peek;
	void* function(GType gType) c_g_type_default_interface_ref;
	void function(void* gIface) c_g_type_default_interface_unref;
	uint function(GType type) c_g_type_depth;
	void function(GType type) c_g_type_ensure;
	void function(GTypeInstance* instance_) c_g_type_free_instance;
	GType function(const(char)* name) c_g_type_from_name;
	GType function(GType typeId) c_g_type_fundamental;
	GType function() c_g_type_fundamental_next;
	GTypePlugin* function(GType type) c_g_type_get_plugin;
	void* function(GType type, GQuark quark) c_g_type_get_qdata;
	uint function() c_g_type_get_type_registration_serial;
	void function() c_g_type_init;
	void function(GTypeDebugFlags debugFlags) c_g_type_init_with_debug_flags;
	GType* function(GType type, uint* nInterfaces) c_g_type_interfaces;
	int function(GType type, GType isAType) c_g_type_is_a;
	const(char)* function(GType type) c_g_type_name;
	const(char)* function(GTypeClass* gClass) c_g_type_name_from_class;
	const(char)* function(GTypeInstance* instance_) c_g_type_name_from_instance;
	GType function(GType leafType, GType rootType) c_g_type_next_base;
	GType function(GType type) c_g_type_parent;
	GQuark function(GType type) c_g_type_qname;
	void function(GType type, GTypeQuery* query) c_g_type_query;
	GType function(GType parentType, const(char)* typeName, GTypePlugin* plugin, GTypeFlags flags) c_g_type_register_dynamic;
	GType function(GType typeId, const(char)* typeName, GTypeInfo* info, GTypeFundamentalInfo* finfo, GTypeFlags flags) c_g_type_register_fundamental;
	GType function(GType parentType, const(char)* typeName, GTypeInfo* info, GTypeFlags flags) c_g_type_register_static;
	GType function(GType parentType, const(char)* typeName, uint classSize, GClassInitFunc classInit, uint instanceSize, GInstanceInitFunc instanceInit, GTypeFlags flags) c_g_type_register_static_simple;
	void function(void* cacheData, GTypeClassCacheFunc cacheFunc) c_g_type_remove_class_cache_func;
	void function(void* checkData, GTypeInterfaceCheckFunc checkFunc) c_g_type_remove_interface_check;
	void function(GType type, GQuark quark, void* data) c_g_type_set_qdata;
	int function(GType type, uint flags) c_g_type_test_flags;
	int function(GType type) c_g_type_get_instance_count;

	// gobject.Boxed

	void* function(GType boxedType, void* srcBoxed) c_g_boxed_copy;
	void function(GType boxedType, void* boxed) c_g_boxed_free;
	GType function(const(char)* name, GBoxedCopyFunc boxedCopy, GBoxedFreeFunc boxedFree) c_g_boxed_type_register_static;
	GType function(const(char)* name) c_g_pointer_type_register_static;

	// gobject.Enums

	void function(GType gEnumType, GTypeInfo* info, GEnumValue* constValues) c_g_enum_complete_type_info;
	GEnumValue* function(GEnumClass* enumClass, int value) c_g_enum_get_value;
	GEnumValue* function(GEnumClass* enumClass, const(char)* name) c_g_enum_get_value_by_name;
	GEnumValue* function(GEnumClass* enumClass, const(char)* nick) c_g_enum_get_value_by_nick;
	GType function(const(char)* name, GEnumValue* constStaticValues) c_g_enum_register_static;
	char* function(GType gEnumType, int value) c_g_enum_to_string;
	char* function(GType flagsType, uint value) c_g_flags_to_string;

	// gobject.Flags

	void function(GType gFlagsType, GTypeInfo* info, GFlagsValue* constValues) c_g_flags_complete_type_info;
	GFlagsValue* function(GFlagsClass* flagsClass, uint value) c_g_flags_get_first_value;
	GFlagsValue* function(GFlagsClass* flagsClass, const(char)* name) c_g_flags_get_value_by_name;
	GFlagsValue* function(GFlagsClass* flagsClass, const(char)* nick) c_g_flags_get_value_by_nick;
	GType function(const(char)* name, GFlagsValue* constStaticValues) c_g_flags_register_static;
}


// gobject.Binding

alias c_g_binding_get_type g_binding_get_type;
alias c_g_binding_dup_source g_binding_dup_source;
alias c_g_binding_dup_target g_binding_dup_target;
alias c_g_binding_get_flags g_binding_get_flags;
alias c_g_binding_get_source g_binding_get_source;
alias c_g_binding_get_source_property g_binding_get_source_property;
alias c_g_binding_get_target g_binding_get_target;
alias c_g_binding_get_target_property g_binding_get_target_property;
alias c_g_binding_unbind g_binding_unbind;

// gobject.BindingGroup

alias c_g_binding_group_get_type g_binding_group_get_type;
alias c_g_binding_group_new g_binding_group_new;
alias c_g_binding_group_bind g_binding_group_bind;
alias c_g_binding_group_bind_full g_binding_group_bind_full;
alias c_g_binding_group_bind_with_closures g_binding_group_bind_with_closures;
alias c_g_binding_group_dup_source g_binding_group_dup_source;
alias c_g_binding_group_set_source g_binding_group_set_source;

// gobject.CClosure

alias c_g_cclosure_marshal_BOOLEAN__BOXED_BOXED g_cclosure_marshal_BOOLEAN__BOXED_BOXED;
alias c_g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv;
alias c_g_cclosure_marshal_BOOLEAN__FLAGS g_cclosure_marshal_BOOLEAN__FLAGS;
alias c_g_cclosure_marshal_BOOLEAN__FLAGSv g_cclosure_marshal_BOOLEAN__FLAGSv;
alias c_g_cclosure_marshal_STRING__OBJECT_POINTER g_cclosure_marshal_STRING__OBJECT_POINTER;
alias c_g_cclosure_marshal_STRING__OBJECT_POINTERv g_cclosure_marshal_STRING__OBJECT_POINTERv;
alias c_g_cclosure_marshal_VOID__BOOLEAN g_cclosure_marshal_VOID__BOOLEAN;
alias c_g_cclosure_marshal_VOID__BOOLEANv g_cclosure_marshal_VOID__BOOLEANv;
alias c_g_cclosure_marshal_VOID__BOXED g_cclosure_marshal_VOID__BOXED;
alias c_g_cclosure_marshal_VOID__BOXEDv g_cclosure_marshal_VOID__BOXEDv;
alias c_g_cclosure_marshal_VOID__CHAR g_cclosure_marshal_VOID__CHAR;
alias c_g_cclosure_marshal_VOID__CHARv g_cclosure_marshal_VOID__CHARv;
alias c_g_cclosure_marshal_VOID__DOUBLE g_cclosure_marshal_VOID__DOUBLE;
alias c_g_cclosure_marshal_VOID__DOUBLEv g_cclosure_marshal_VOID__DOUBLEv;
alias c_g_cclosure_marshal_VOID__ENUM g_cclosure_marshal_VOID__ENUM;
alias c_g_cclosure_marshal_VOID__ENUMv g_cclosure_marshal_VOID__ENUMv;
alias c_g_cclosure_marshal_VOID__FLAGS g_cclosure_marshal_VOID__FLAGS;
alias c_g_cclosure_marshal_VOID__FLAGSv g_cclosure_marshal_VOID__FLAGSv;
alias c_g_cclosure_marshal_VOID__FLOAT g_cclosure_marshal_VOID__FLOAT;
alias c_g_cclosure_marshal_VOID__FLOATv g_cclosure_marshal_VOID__FLOATv;
alias c_g_cclosure_marshal_VOID__INT g_cclosure_marshal_VOID__INT;
alias c_g_cclosure_marshal_VOID__INTv g_cclosure_marshal_VOID__INTv;
alias c_g_cclosure_marshal_VOID__LONG g_cclosure_marshal_VOID__LONG;
alias c_g_cclosure_marshal_VOID__LONGv g_cclosure_marshal_VOID__LONGv;
alias c_g_cclosure_marshal_VOID__OBJECT g_cclosure_marshal_VOID__OBJECT;
alias c_g_cclosure_marshal_VOID__OBJECTv g_cclosure_marshal_VOID__OBJECTv;
alias c_g_cclosure_marshal_VOID__PARAM g_cclosure_marshal_VOID__PARAM;
alias c_g_cclosure_marshal_VOID__PARAMv g_cclosure_marshal_VOID__PARAMv;
alias c_g_cclosure_marshal_VOID__POINTER g_cclosure_marshal_VOID__POINTER;
alias c_g_cclosure_marshal_VOID__POINTERv g_cclosure_marshal_VOID__POINTERv;
alias c_g_cclosure_marshal_VOID__STRING g_cclosure_marshal_VOID__STRING;
alias c_g_cclosure_marshal_VOID__STRINGv g_cclosure_marshal_VOID__STRINGv;
alias c_g_cclosure_marshal_VOID__UCHAR g_cclosure_marshal_VOID__UCHAR;
alias c_g_cclosure_marshal_VOID__UCHARv g_cclosure_marshal_VOID__UCHARv;
alias c_g_cclosure_marshal_VOID__UINT g_cclosure_marshal_VOID__UINT;
alias c_g_cclosure_marshal_VOID__UINT_POINTER g_cclosure_marshal_VOID__UINT_POINTER;
alias c_g_cclosure_marshal_VOID__UINT_POINTERv g_cclosure_marshal_VOID__UINT_POINTERv;
alias c_g_cclosure_marshal_VOID__UINTv g_cclosure_marshal_VOID__UINTv;
alias c_g_cclosure_marshal_VOID__ULONG g_cclosure_marshal_VOID__ULONG;
alias c_g_cclosure_marshal_VOID__ULONGv g_cclosure_marshal_VOID__ULONGv;
alias c_g_cclosure_marshal_VOID__VARIANT g_cclosure_marshal_VOID__VARIANT;
alias c_g_cclosure_marshal_VOID__VARIANTv g_cclosure_marshal_VOID__VARIANTv;
alias c_g_cclosure_marshal_VOID__VOID g_cclosure_marshal_VOID__VOID;
alias c_g_cclosure_marshal_VOID__VOIDv g_cclosure_marshal_VOID__VOIDv;
alias c_g_cclosure_marshal_generic g_cclosure_marshal_generic;
alias c_g_cclosure_marshal_generic_va g_cclosure_marshal_generic_va;
alias c_g_cclosure_new g_cclosure_new;
alias c_g_cclosure_new_object g_cclosure_new_object;
alias c_g_cclosure_new_object_swap g_cclosure_new_object_swap;
alias c_g_cclosure_new_swap g_cclosure_new_swap;

// gobject.Closure

alias c_g_closure_get_type g_closure_get_type;
alias c_g_closure_new_object g_closure_new_object;
alias c_g_closure_new_simple g_closure_new_simple;
alias c_g_closure_add_finalize_notifier g_closure_add_finalize_notifier;
alias c_g_closure_add_invalidate_notifier g_closure_add_invalidate_notifier;
alias c_g_closure_add_marshal_guards g_closure_add_marshal_guards;
alias c_g_closure_invalidate g_closure_invalidate;
alias c_g_closure_invoke g_closure_invoke;
alias c_g_closure_ref g_closure_ref;
alias c_g_closure_remove_finalize_notifier g_closure_remove_finalize_notifier;
alias c_g_closure_remove_invalidate_notifier g_closure_remove_invalidate_notifier;
alias c_g_closure_set_marshal g_closure_set_marshal;
alias c_g_closure_set_meta_marshal g_closure_set_meta_marshal;
alias c_g_closure_sink g_closure_sink;
alias c_g_closure_unref g_closure_unref;
alias c_g_source_set_closure g_source_set_closure;
alias c_g_source_set_dummy_callback g_source_set_dummy_callback;

// gobject.ObjectG

alias c_g_initially_unowned_get_type g_initially_unowned_get_type;
alias c_g_object_new g_object_new;
alias c_g_object_new_valist g_object_new_valist;
alias c_g_object_new_with_properties g_object_new_with_properties;
alias c_g_object_newv g_object_newv;
alias c_g_object_compat_control g_object_compat_control;
alias c_g_object_interface_find_property g_object_interface_find_property;
alias c_g_object_interface_install_property g_object_interface_install_property;
alias c_g_object_interface_list_properties g_object_interface_list_properties;
alias c_g_object_add_toggle_ref g_object_add_toggle_ref;
alias c_g_object_add_weak_pointer g_object_add_weak_pointer;
alias c_g_object_bind_property g_object_bind_property;
alias c_g_object_bind_property_full g_object_bind_property_full;
alias c_g_object_bind_property_with_closures g_object_bind_property_with_closures;
alias c_g_object_connect g_object_connect;
alias c_g_object_disconnect g_object_disconnect;
alias c_g_object_dup_data g_object_dup_data;
alias c_g_object_dup_qdata g_object_dup_qdata;
alias c_g_object_force_floating g_object_force_floating;
alias c_g_object_freeze_notify g_object_freeze_notify;
alias c_g_object_get g_object_get;
alias c_g_object_get_data g_object_get_data;
alias c_g_object_get_property g_object_get_property;
alias c_g_object_get_qdata g_object_get_qdata;
alias c_g_object_get_valist g_object_get_valist;
alias c_g_object_getv g_object_getv;
alias c_g_object_is_floating g_object_is_floating;
alias c_g_object_notify g_object_notify;
alias c_g_object_notify_by_pspec g_object_notify_by_pspec;
alias c_g_object_ref g_object_ref;
alias c_g_object_ref_sink g_object_ref_sink;
alias c_g_object_remove_toggle_ref g_object_remove_toggle_ref;
alias c_g_object_remove_weak_pointer g_object_remove_weak_pointer;
alias c_g_object_replace_data g_object_replace_data;
alias c_g_object_replace_qdata g_object_replace_qdata;
alias c_g_object_run_dispose g_object_run_dispose;
alias c_g_object_set g_object_set;
alias c_g_object_set_data g_object_set_data;
alias c_g_object_set_data_full g_object_set_data_full;
alias c_g_object_set_property g_object_set_property;
alias c_g_object_set_qdata g_object_set_qdata;
alias c_g_object_set_qdata_full g_object_set_qdata_full;
alias c_g_object_set_valist g_object_set_valist;
alias c_g_object_setv g_object_setv;
alias c_g_object_steal_data g_object_steal_data;
alias c_g_object_steal_qdata g_object_steal_qdata;
alias c_g_object_take_ref g_object_take_ref;
alias c_g_object_thaw_notify g_object_thaw_notify;
alias c_g_object_unref g_object_unref;
alias c_g_object_watch_closure g_object_watch_closure;
alias c_g_object_weak_ref g_object_weak_ref;
alias c_g_object_weak_unref g_object_weak_unref;
alias c_g_clear_object g_clear_object;

// gobject.ObjectClass

alias c_g_object_class_find_property g_object_class_find_property;
alias c_g_object_class_install_properties g_object_class_install_properties;
alias c_g_object_class_install_property g_object_class_install_property;
alias c_g_object_class_list_properties g_object_class_list_properties;
alias c_g_object_class_override_property g_object_class_override_property;

// gobject.ParamSpec

alias c_g_param_spec_internal g_param_spec_internal;
alias c_g_param_spec_is_valid_name g_param_spec_is_valid_name;
alias c_g_param_spec_get_blurb g_param_spec_get_blurb;
alias c_g_param_spec_get_default_value g_param_spec_get_default_value;
alias c_g_param_spec_get_name g_param_spec_get_name;
alias c_g_param_spec_get_name_quark g_param_spec_get_name_quark;
alias c_g_param_spec_get_nick g_param_spec_get_nick;
alias c_g_param_spec_get_qdata g_param_spec_get_qdata;
alias c_g_param_spec_get_redirect_target g_param_spec_get_redirect_target;
alias c_g_param_spec_ref g_param_spec_ref;
alias c_g_param_spec_ref_sink g_param_spec_ref_sink;
alias c_g_param_spec_set_qdata g_param_spec_set_qdata;
alias c_g_param_spec_set_qdata_full g_param_spec_set_qdata_full;
alias c_g_param_spec_sink g_param_spec_sink;
alias c_g_param_spec_steal_qdata g_param_spec_steal_qdata;
alias c_g_param_spec_unref g_param_spec_unref;
alias c_g_param_type_register_static g_param_type_register_static;
alias c_g_param_value_convert g_param_value_convert;
alias c_g_param_value_defaults g_param_value_defaults;
alias c_g_param_value_set_default g_param_value_set_default;
alias c_g_param_value_validate g_param_value_validate;
alias c_g_param_values_cmp g_param_values_cmp;

// gobject.ParamSpecPool

alias c_g_param_spec_pool_insert g_param_spec_pool_insert;
alias c_g_param_spec_pool_list g_param_spec_pool_list;
alias c_g_param_spec_pool_list_owned g_param_spec_pool_list_owned;
alias c_g_param_spec_pool_lookup g_param_spec_pool_lookup;
alias c_g_param_spec_pool_remove g_param_spec_pool_remove;
alias c_g_param_spec_pool_new g_param_spec_pool_new;

// gobject.SignalGroup

alias c_g_signal_group_get_type g_signal_group_get_type;
alias c_g_signal_group_new g_signal_group_new;
alias c_g_signal_group_block g_signal_group_block;
alias c_g_signal_group_connect g_signal_group_connect;
alias c_g_signal_group_connect_after g_signal_group_connect_after;
alias c_g_signal_group_connect_data g_signal_group_connect_data;
alias c_g_signal_group_connect_object g_signal_group_connect_object;
alias c_g_signal_group_connect_swapped g_signal_group_connect_swapped;
alias c_g_signal_group_dup_target g_signal_group_dup_target;
alias c_g_signal_group_set_target g_signal_group_set_target;
alias c_g_signal_group_unblock g_signal_group_unblock;

// gobject.TypeClass

alias c_g_type_class_add_private g_type_class_add_private;
alias c_g_type_class_get_instance_private_offset g_type_class_get_instance_private_offset;
alias c_g_type_class_get_private g_type_class_get_private;
alias c_g_type_class_peek_parent g_type_class_peek_parent;
alias c_g_type_class_unref g_type_class_unref;
alias c_g_type_class_unref_uncached g_type_class_unref_uncached;
alias c_g_type_class_adjust_private_offset g_type_class_adjust_private_offset;
alias c_g_type_class_peek g_type_class_peek;
alias c_g_type_class_peek_static g_type_class_peek_static;
alias c_g_type_class_ref g_type_class_ref;

// gobject.TypeInstance

alias c_g_type_instance_get_private g_type_instance_get_private;

// gobject.TypeInterface

alias c_g_type_interface_peek_parent g_type_interface_peek_parent;
alias c_g_type_interface_add_prerequisite g_type_interface_add_prerequisite;
alias c_g_type_interface_get_plugin g_type_interface_get_plugin;
alias c_g_type_interface_instantiatable_prerequisite g_type_interface_instantiatable_prerequisite;
alias c_g_type_interface_peek g_type_interface_peek;
alias c_g_type_interface_prerequisites g_type_interface_prerequisites;

// gobject.TypeModule

alias c_g_type_module_get_type g_type_module_get_type;
alias c_g_type_module_add_interface g_type_module_add_interface;
alias c_g_type_module_register_enum g_type_module_register_enum;
alias c_g_type_module_register_flags g_type_module_register_flags;
alias c_g_type_module_register_type g_type_module_register_type;
alias c_g_type_module_set_name g_type_module_set_name;
alias c_g_type_module_unuse g_type_module_unuse;
alias c_g_type_module_use g_type_module_use;

// gobject.TypePlugin

alias c_g_type_plugin_get_type g_type_plugin_get_type;
alias c_g_type_plugin_complete_interface_info g_type_plugin_complete_interface_info;
alias c_g_type_plugin_complete_type_info g_type_plugin_complete_type_info;
alias c_g_type_plugin_unuse g_type_plugin_unuse;
alias c_g_type_plugin_use g_type_plugin_use;

// gobject.TypeValueTable

alias c_g_type_value_table_peek g_type_value_table_peek;

// gobject.Value

alias c_g_value_get_type g_value_get_type;
alias c_g_value_copy g_value_copy;
alias c_g_value_dup_boxed g_value_dup_boxed;
alias c_g_value_dup_object g_value_dup_object;
alias c_g_value_dup_param g_value_dup_param;
alias c_g_value_dup_string g_value_dup_string;
alias c_g_value_dup_variant g_value_dup_variant;
alias c_g_value_fits_pointer g_value_fits_pointer;
alias c_g_value_get_boolean g_value_get_boolean;
alias c_g_value_get_boxed g_value_get_boxed;
alias c_g_value_get_char g_value_get_char;
alias c_g_value_get_double g_value_get_double;
alias c_g_value_get_enum g_value_get_enum;
alias c_g_value_get_flags g_value_get_flags;
alias c_g_value_get_float g_value_get_float;
alias c_g_value_get_gtype g_value_get_gtype;
alias c_g_value_get_int g_value_get_int;
alias c_g_value_get_int64 g_value_get_int64;
alias c_g_value_get_long g_value_get_long;
alias c_g_value_get_object g_value_get_object;
alias c_g_value_get_param g_value_get_param;
alias c_g_value_get_pointer g_value_get_pointer;
alias c_g_value_get_schar g_value_get_schar;
alias c_g_value_get_string g_value_get_string;
alias c_g_value_get_uchar g_value_get_uchar;
alias c_g_value_get_uint g_value_get_uint;
alias c_g_value_get_uint64 g_value_get_uint64;
alias c_g_value_get_ulong g_value_get_ulong;
alias c_g_value_get_variant g_value_get_variant;
alias c_g_value_init g_value_init;
alias c_g_value_init_from_instance g_value_init_from_instance;
alias c_g_value_peek_pointer g_value_peek_pointer;
alias c_g_value_reset g_value_reset;
alias c_g_value_set_boolean g_value_set_boolean;
alias c_g_value_set_boxed g_value_set_boxed;
alias c_g_value_set_boxed_take_ownership g_value_set_boxed_take_ownership;
alias c_g_value_set_char g_value_set_char;
alias c_g_value_set_double g_value_set_double;
alias c_g_value_set_enum g_value_set_enum;
alias c_g_value_set_flags g_value_set_flags;
alias c_g_value_set_float g_value_set_float;
alias c_g_value_set_gtype g_value_set_gtype;
alias c_g_value_set_instance g_value_set_instance;
alias c_g_value_set_int g_value_set_int;
alias c_g_value_set_int64 g_value_set_int64;
alias c_g_value_set_interned_string g_value_set_interned_string;
alias c_g_value_set_long g_value_set_long;
alias c_g_value_set_object g_value_set_object;
alias c_g_value_set_object_take_ownership g_value_set_object_take_ownership;
alias c_g_value_set_param g_value_set_param;
alias c_g_value_set_param_take_ownership g_value_set_param_take_ownership;
alias c_g_value_set_pointer g_value_set_pointer;
alias c_g_value_set_schar g_value_set_schar;
alias c_g_value_set_static_boxed g_value_set_static_boxed;
alias c_g_value_set_static_string g_value_set_static_string;
alias c_g_value_set_string g_value_set_string;
alias c_g_value_set_string_take_ownership g_value_set_string_take_ownership;
alias c_g_value_set_uchar g_value_set_uchar;
alias c_g_value_set_uint g_value_set_uint;
alias c_g_value_set_uint64 g_value_set_uint64;
alias c_g_value_set_ulong g_value_set_ulong;
alias c_g_value_set_variant g_value_set_variant;
alias c_g_value_take_boxed g_value_take_boxed;
alias c_g_value_take_object g_value_take_object;
alias c_g_value_take_param g_value_take_param;
alias c_g_value_take_string g_value_take_string;
alias c_g_value_take_variant g_value_take_variant;
alias c_g_value_transform g_value_transform;
alias c_g_value_unset g_value_unset;
alias c_g_value_register_transform_func g_value_register_transform_func;
alias c_g_value_type_compatible g_value_type_compatible;
alias c_g_value_type_transformable g_value_type_transformable;
alias c_g_param_spec_boolean g_param_spec_boolean;
alias c_g_param_spec_boxed g_param_spec_boxed;
alias c_g_param_spec_char g_param_spec_char;
alias c_g_param_spec_double g_param_spec_double;
alias c_g_param_spec_enum g_param_spec_enum;
alias c_g_param_spec_flags g_param_spec_flags;
alias c_g_param_spec_float g_param_spec_float;
alias c_g_param_spec_gtype g_param_spec_gtype;
alias c_g_param_spec_int g_param_spec_int;
alias c_g_param_spec_int64 g_param_spec_int64;
alias c_g_param_spec_long g_param_spec_long;
alias c_g_param_spec_object g_param_spec_object;
alias c_g_param_spec_override g_param_spec_override;
alias c_g_param_spec_param g_param_spec_param;
alias c_g_param_spec_pointer g_param_spec_pointer;
alias c_g_param_spec_string g_param_spec_string;
alias c_g_param_spec_uchar g_param_spec_uchar;
alias c_g_param_spec_uint g_param_spec_uint;
alias c_g_param_spec_uint64 g_param_spec_uint64;
alias c_g_param_spec_ulong g_param_spec_ulong;
alias c_g_param_spec_unichar g_param_spec_unichar;
alias c_g_param_spec_value_array g_param_spec_value_array;
alias c_g_param_spec_variant g_param_spec_variant;
alias c_g_strdup_value_contents g_strdup_value_contents;

// gobject.ValueArray

alias c_g_value_array_get_type g_value_array_get_type;
alias c_g_value_array_new g_value_array_new;
alias c_g_value_array_append g_value_array_append;
alias c_g_value_array_copy g_value_array_copy;
alias c_g_value_array_free g_value_array_free;
alias c_g_value_array_get_nth g_value_array_get_nth;
alias c_g_value_array_insert g_value_array_insert;
alias c_g_value_array_prepend g_value_array_prepend;
alias c_g_value_array_remove g_value_array_remove;
alias c_g_value_array_sort g_value_array_sort;
alias c_g_value_array_sort_with_data g_value_array_sort_with_data;

// gobject.WeakRef

alias c_g_weak_ref_clear g_weak_ref_clear;
alias c_g_weak_ref_get g_weak_ref_get;
alias c_g_weak_ref_init g_weak_ref_init;
alias c_g_weak_ref_set g_weak_ref_set;

// gobject.Signals

alias c_g_signal_handler_disconnect g_signal_handler_disconnect;
alias c_g_signal_accumulator_first_wins g_signal_accumulator_first_wins;
alias c_g_signal_accumulator_true_handled g_signal_accumulator_true_handled;
alias c_g_signal_add_emission_hook g_signal_add_emission_hook;
alias c_g_signal_chain_from_overridden g_signal_chain_from_overridden;
alias c_g_signal_chain_from_overridden_handler g_signal_chain_from_overridden_handler;
alias c_g_signal_connect_closure g_signal_connect_closure;
alias c_g_signal_connect_closure_by_id g_signal_connect_closure_by_id;
alias c_g_signal_connect_data g_signal_connect_data;
alias c_g_signal_connect_object g_signal_connect_object;
alias c_g_signal_emit g_signal_emit;
alias c_g_signal_emit_by_name g_signal_emit_by_name;
alias c_g_signal_emit_valist g_signal_emit_valist;
alias c_g_signal_emitv g_signal_emitv;
alias c_g_signal_get_invocation_hint g_signal_get_invocation_hint;
alias c_g_signal_handler_block g_signal_handler_block;
alias c_g_signal_handler_find g_signal_handler_find;
alias c_g_signal_handler_is_connected g_signal_handler_is_connected;
alias c_g_signal_handler_unblock g_signal_handler_unblock;
alias c_g_signal_handlers_block_matched g_signal_handlers_block_matched;
alias c_g_signal_handlers_destroy g_signal_handlers_destroy;
alias c_g_signal_handlers_disconnect_matched g_signal_handlers_disconnect_matched;
alias c_g_signal_handlers_unblock_matched g_signal_handlers_unblock_matched;
alias c_g_signal_has_handler_pending g_signal_has_handler_pending;
alias c_g_signal_list_ids g_signal_list_ids;
alias c_g_signal_lookup g_signal_lookup;
alias c_g_signal_name g_signal_name;
alias c_g_signal_new g_signal_new;
alias c_g_signal_new_class_handler g_signal_new_class_handler;
alias c_g_signal_new_valist g_signal_new_valist;
alias c_g_signal_newv g_signal_newv;
alias c_g_signal_override_class_closure g_signal_override_class_closure;
alias c_g_signal_override_class_handler g_signal_override_class_handler;
alias c_g_signal_parse_name g_signal_parse_name;
alias c_g_signal_query g_signal_query;
alias c_g_signal_remove_emission_hook g_signal_remove_emission_hook;
alias c_g_signal_set_va_marshaller g_signal_set_va_marshaller;
alias c_g_signal_stop_emission g_signal_stop_emission;
alias c_g_signal_stop_emission_by_name g_signal_stop_emission_by_name;
alias c_g_signal_type_cclosure_new g_signal_type_cclosure_new;
alias c_g_clear_signal_handler g_clear_signal_handler;

// gobject.Type

alias c_g_type_add_class_cache_func g_type_add_class_cache_func;
alias c_g_type_add_class_private g_type_add_class_private;
alias c_g_type_add_instance_private g_type_add_instance_private;
alias c_g_type_add_interface_check g_type_add_interface_check;
alias c_g_type_add_interface_dynamic g_type_add_interface_dynamic;
alias c_g_type_add_interface_static g_type_add_interface_static;
alias c_g_type_check_class_cast g_type_check_class_cast;
alias c_g_type_check_class_is_a g_type_check_class_is_a;
alias c_g_type_check_instance g_type_check_instance;
alias c_g_type_check_instance_cast g_type_check_instance_cast;
alias c_g_type_check_instance_is_a g_type_check_instance_is_a;
alias c_g_type_check_instance_is_fundamentally_a g_type_check_instance_is_fundamentally_a;
alias c_g_type_check_is_value_type g_type_check_is_value_type;
alias c_g_type_check_value g_type_check_value;
alias c_g_type_check_value_holds g_type_check_value_holds;
alias c_g_type_children g_type_children;
alias c_g_type_create_instance g_type_create_instance;
alias c_g_type_default_interface_peek g_type_default_interface_peek;
alias c_g_type_default_interface_ref g_type_default_interface_ref;
alias c_g_type_default_interface_unref g_type_default_interface_unref;
alias c_g_type_depth g_type_depth;
alias c_g_type_ensure g_type_ensure;
alias c_g_type_free_instance g_type_free_instance;
alias c_g_type_from_name g_type_from_name;
alias c_g_type_fundamental g_type_fundamental;
alias c_g_type_fundamental_next g_type_fundamental_next;
alias c_g_type_get_plugin g_type_get_plugin;
alias c_g_type_get_qdata g_type_get_qdata;
alias c_g_type_get_type_registration_serial g_type_get_type_registration_serial;
alias c_g_type_init g_type_init;
alias c_g_type_init_with_debug_flags g_type_init_with_debug_flags;
alias c_g_type_interfaces g_type_interfaces;
alias c_g_type_is_a g_type_is_a;
alias c_g_type_name g_type_name;
alias c_g_type_name_from_class g_type_name_from_class;
alias c_g_type_name_from_instance g_type_name_from_instance;
alias c_g_type_next_base g_type_next_base;
alias c_g_type_parent g_type_parent;
alias c_g_type_qname g_type_qname;
alias c_g_type_query g_type_query;
alias c_g_type_register_dynamic g_type_register_dynamic;
alias c_g_type_register_fundamental g_type_register_fundamental;
alias c_g_type_register_static g_type_register_static;
alias c_g_type_register_static_simple g_type_register_static_simple;
alias c_g_type_remove_class_cache_func g_type_remove_class_cache_func;
alias c_g_type_remove_interface_check g_type_remove_interface_check;
alias c_g_type_set_qdata g_type_set_qdata;
alias c_g_type_test_flags g_type_test_flags;
alias c_g_type_get_instance_count g_type_get_instance_count;

// gobject.Boxed

alias c_g_boxed_copy g_boxed_copy;
alias c_g_boxed_free g_boxed_free;
alias c_g_boxed_type_register_static g_boxed_type_register_static;
alias c_g_pointer_type_register_static g_pointer_type_register_static;

// gobject.Enums

alias c_g_enum_complete_type_info g_enum_complete_type_info;
alias c_g_enum_get_value g_enum_get_value;
alias c_g_enum_get_value_by_name g_enum_get_value_by_name;
alias c_g_enum_get_value_by_nick g_enum_get_value_by_nick;
alias c_g_enum_register_static g_enum_register_static;
alias c_g_enum_to_string g_enum_to_string;
alias c_g_flags_to_string g_flags_to_string;

// gobject.Flags

alias c_g_flags_complete_type_info g_flags_complete_type_info;
alias c_g_flags_get_first_value g_flags_get_first_value;
alias c_g_flags_get_value_by_name g_flags_get_value_by_name;
alias c_g_flags_get_value_by_nick g_flags_get_value_by_nick;
alias c_g_flags_register_static g_flags_register_static;
