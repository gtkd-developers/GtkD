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
version (Windows)
	static immutable LIBRARY_GOBJECT = ["libgobject-2.0-0.dll;gobject-2.0-0.dll;gobject-2.dll"];
else version (OSX)
	static immutable LIBRARY_GOBJECT = ["libgobject-2.0.0.dylib"];
else
	static immutable LIBRARY_GOBJECT = ["libgobject-2.0.so.0"];

__gshared extern(C)
{

	// gobject.Binding

	GType g_binding_get_type();
	GBindingFlags g_binding_get_flags(GBinding* binding);
	GObject* g_binding_get_source(GBinding* binding);
	const(char)* g_binding_get_source_property(GBinding* binding);
	GObject* g_binding_get_target(GBinding* binding);
	const(char)* g_binding_get_target_property(GBinding* binding);
	void g_binding_unbind(GBinding* binding);

	// gobject.CClosure

	void g_cclosure_marshal_BOOLEAN__BOXED_BOXED(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_BOOLEAN__FLAGS(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_BOOLEAN__FLAGSv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_STRING__OBJECT_POINTER(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_STRING__OBJECT_POINTERv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__BOOLEAN(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__BOOLEANv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__BOXED(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__BOXEDv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__CHAR(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__CHARv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__DOUBLE(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__DOUBLEv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__ENUM(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__ENUMv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__FLAGS(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__FLAGSv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__FLOAT(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__FLOATv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__INT(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__INTv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__LONG(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__LONGv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__OBJECT(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__OBJECTv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__PARAM(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__PARAMv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__POINTER(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__POINTERv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__STRING(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__STRINGv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__UCHAR(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__UCHARv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__UINT(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__UINT_POINTER(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__UINT_POINTERv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__UINTv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__ULONG(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__ULONGv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__VARIANT(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__VARIANTv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_VOID__VOID(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_VOID__VOIDv(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
	void g_cclosure_marshal_generic(GClosure* closure, GValue* returnGvalue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData);
	void g_cclosure_marshal_generic_va(GClosure* closure, GValue* returnValue, void* instance_, void* argsList, void* marshalData, int nParams, GType* paramTypes);
	GClosure* g_cclosure_new(GCallback callbackFunc, void* userData, GClosureNotify destroyData);
	GClosure* g_cclosure_new_object(GCallback callbackFunc, GObject* object);
	GClosure* g_cclosure_new_object_swap(GCallback callbackFunc, GObject* object);
	GClosure* g_cclosure_new_swap(GCallback callbackFunc, void* userData, GClosureNotify destroyData);

	// gobject.Closure

	GType g_closure_get_type();
	GClosure* g_closure_new_object(uint sizeofClosure, GObject* object);
	GClosure* g_closure_new_simple(uint sizeofClosure, void* data);
	void g_closure_add_finalize_notifier(GClosure* closure, void* notifyData, GClosureNotify notifyFunc);
	void g_closure_add_invalidate_notifier(GClosure* closure, void* notifyData, GClosureNotify notifyFunc);
	void g_closure_add_marshal_guards(GClosure* closure, void* preMarshalData, GClosureNotify preMarshalNotify, void* postMarshalData, GClosureNotify postMarshalNotify);
	void g_closure_invalidate(GClosure* closure);
	void g_closure_invoke(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint);
	GClosure* g_closure_ref(GClosure* closure);
	void g_closure_remove_finalize_notifier(GClosure* closure, void* notifyData, GClosureNotify notifyFunc);
	void g_closure_remove_invalidate_notifier(GClosure* closure, void* notifyData, GClosureNotify notifyFunc);
	void g_closure_set_marshal(GClosure* closure, GClosureMarshal marshal);
	void g_closure_set_meta_marshal(GClosure* closure, void* marshalData, GClosureMarshal metaMarshal);
	void g_closure_sink(GClosure* closure);
	void g_closure_unref(GClosure* closure);
	void g_source_set_closure(GSource* source, GClosure* closure);
	void g_source_set_dummy_callback(GSource* source);

	// gobject.ObjectG

	GType g_initially_unowned_get_type();
	void* g_object_new(GType objectType, const(char)* firstPropertyName, ... );
	GObject* g_object_new_valist(GType objectType, const(char)* firstPropertyName, void* varArgs);
	GObject* g_object_new_with_properties(GType objectType, uint nProperties, char** names, GValue* values);
	void* g_object_newv(GType objectType, uint nParameters, GParameter* parameters);
	size_t g_object_compat_control(size_t what, void* data);
	GParamSpec* g_object_interface_find_property(void* gIface, const(char)* propertyName);
	void g_object_interface_install_property(void* gIface, GParamSpec* pspec);
	GParamSpec** g_object_interface_list_properties(void* gIface, uint* nPropertiesP);
	void g_object_add_toggle_ref(GObject* object, GToggleNotify notify, void* data);
	void g_object_add_weak_pointer(GObject* object, void** weakPointerLocation);
	GBinding* g_object_bind_property(void* source, const(char)* sourceProperty, void* target, const(char)* targetProperty, GBindingFlags flags);
	GBinding* g_object_bind_property_full(void* source, const(char)* sourceProperty, void* target, const(char)* targetProperty, GBindingFlags flags, GBindingTransformFunc transformTo, GBindingTransformFunc transformFrom, void* userData, GDestroyNotify notify);
	GBinding* g_object_bind_property_with_closures(void* source, const(char)* sourceProperty, void* target, const(char)* targetProperty, GBindingFlags flags, GClosure* transformTo, GClosure* transformFrom);
	void* g_object_connect(void* object, const(char)* signalSpec, ... );
	void g_object_disconnect(void* object, const(char)* signalSpec, ... );
	void* g_object_dup_data(GObject* object, const(char)* key, GDuplicateFunc dupFunc, void* userData);
	void* g_object_dup_qdata(GObject* object, GQuark quark, GDuplicateFunc dupFunc, void* userData);
	void g_object_force_floating(GObject* object);
	void g_object_freeze_notify(GObject* object);
	void g_object_get(void* object, const(char)* firstPropertyName, ... );
	void* g_object_get_data(GObject* object, const(char)* key);
	void g_object_get_property(GObject* object, const(char)* propertyName, GValue* value);
	void* g_object_get_qdata(GObject* object, GQuark quark);
	void g_object_get_valist(GObject* object, const(char)* firstPropertyName, void* varArgs);
	void g_object_getv(GObject* object, uint nProperties, char** names, GValue* values);
	int g_object_is_floating(void* object);
	void g_object_notify(GObject* object, const(char)* propertyName);
	void g_object_notify_by_pspec(GObject* object, GParamSpec* pspec);
	void* g_object_ref(void* object);
	void* g_object_ref_sink(void* object);
	void g_object_remove_toggle_ref(GObject* object, GToggleNotify notify, void* data);
	void g_object_remove_weak_pointer(GObject* object, void** weakPointerLocation);
	int g_object_replace_data(GObject* object, const(char)* key, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* oldDestroy);
	int g_object_replace_qdata(GObject* object, GQuark quark, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* oldDestroy);
	void g_object_run_dispose(GObject* object);
	void g_object_set(void* object, const(char)* firstPropertyName, ... );
	void g_object_set_data(GObject* object, const(char)* key, void* data);
	void g_object_set_data_full(GObject* object, const(char)* key, void* data, GDestroyNotify destroy);
	void g_object_set_property(GObject* object, const(char)* propertyName, GValue* value);
	void g_object_set_qdata(GObject* object, GQuark quark, void* data);
	void g_object_set_qdata_full(GObject* object, GQuark quark, void* data, GDestroyNotify destroy);
	void g_object_set_valist(GObject* object, const(char)* firstPropertyName, void* varArgs);
	void g_object_setv(GObject* object, uint nProperties, char** names, GValue* values);
	void* g_object_steal_data(GObject* object, const(char)* key);
	void* g_object_steal_qdata(GObject* object, GQuark quark);
	void g_object_thaw_notify(GObject* object);
	void g_object_unref(void* object);
	void g_object_watch_closure(GObject* object, GClosure* closure);
	void g_object_weak_ref(GObject* object, GWeakNotify notify, void* data);
	void g_object_weak_unref(GObject* object, GWeakNotify notify, void* data);
	void g_clear_object(GObject** objectPtr);

	// gobject.ObjectClass

	GParamSpec* g_object_class_find_property(GObjectClass* oclass, const(char)* propertyName);
	void g_object_class_install_properties(GObjectClass* oclass, uint nPspecs, GParamSpec** pspecs);
	void g_object_class_install_property(GObjectClass* oclass, uint propertyId, GParamSpec* pspec);
	GParamSpec** g_object_class_list_properties(GObjectClass* oclass, uint* nProperties);
	void g_object_class_override_property(GObjectClass* oclass, uint propertyId, const(char)* name);

	// gobject.ParamSpec

	void* g_param_spec_internal(GType paramType, const(char)* name, const(char)* nick, const(char)* blurb, GParamFlags flags);
	const(char)* g_param_spec_get_blurb(GParamSpec* pspec);
	GValue* g_param_spec_get_default_value(GParamSpec* pspec);
	const(char)* g_param_spec_get_name(GParamSpec* pspec);
	GQuark g_param_spec_get_name_quark(GParamSpec* pspec);
	const(char)* g_param_spec_get_nick(GParamSpec* pspec);
	void* g_param_spec_get_qdata(GParamSpec* pspec, GQuark quark);
	GParamSpec* g_param_spec_get_redirect_target(GParamSpec* pspec);
	GParamSpec* g_param_spec_ref(GParamSpec* pspec);
	GParamSpec* g_param_spec_ref_sink(GParamSpec* pspec);
	void g_param_spec_set_qdata(GParamSpec* pspec, GQuark quark, void* data);
	void g_param_spec_set_qdata_full(GParamSpec* pspec, GQuark quark, void* data, GDestroyNotify destroy);
	void g_param_spec_sink(GParamSpec* pspec);
	void* g_param_spec_steal_qdata(GParamSpec* pspec, GQuark quark);
	void g_param_spec_unref(GParamSpec* pspec);
	GType g_param_type_register_static(const(char)* name, GParamSpecTypeInfo* pspecInfo);
	int g_param_value_convert(GParamSpec* pspec, GValue* srcValue, GValue* destValue, int strictValidation);
	int g_param_value_defaults(GParamSpec* pspec, GValue* value);
	void g_param_value_set_default(GParamSpec* pspec, GValue* value);
	int g_param_value_validate(GParamSpec* pspec, GValue* value);
	int g_param_values_cmp(GParamSpec* pspec, GValue* value1, GValue* value2);

	// gobject.ParamSpecPool

	void g_param_spec_pool_insert(GParamSpecPool* pool, GParamSpec* pspec, GType ownerType);
	GParamSpec** g_param_spec_pool_list(GParamSpecPool* pool, GType ownerType, uint* nPspecsP);
	GList* g_param_spec_pool_list_owned(GParamSpecPool* pool, GType ownerType);
	GParamSpec* g_param_spec_pool_lookup(GParamSpecPool* pool, const(char)* paramName, GType ownerType, int walkAncestors);
	void g_param_spec_pool_remove(GParamSpecPool* pool, GParamSpec* pspec);
	GParamSpecPool* g_param_spec_pool_new(int typePrefixing);

	// gobject.TypeClass

	void g_type_class_add_private(void* gClass, size_t privateSize);
	int g_type_class_get_instance_private_offset(void* gClass);
	void* g_type_class_get_private(GTypeClass* klass, GType privateType);
	void* g_type_class_peek_parent(void* gClass);
	void g_type_class_unref(void* gClass);
	void g_type_class_unref_uncached(void* gClass);
	void g_type_class_adjust_private_offset(void* gClass, int* privateSizeOrOffset);
	void* g_type_class_peek(GType type);
	void* g_type_class_peek_static(GType type);
	void* g_type_class_ref(GType type);

	// gobject.TypeInstance

	void* g_type_instance_get_private(GTypeInstance* instance_, GType privateType);

	// gobject.TypeInterface

	void* g_type_interface_peek_parent(void* gIface);
	void g_type_interface_add_prerequisite(GType interfaceType, GType prerequisiteType);
	GTypePlugin* g_type_interface_get_plugin(GType instanceType, GType interfaceType);
	void* g_type_interface_peek(void* instanceClass, GType ifaceType);
	GType* g_type_interface_prerequisites(GType interfaceType, uint* nPrerequisites);

	// gobject.TypeModule

	GType g_type_module_get_type();
	void g_type_module_add_interface(GTypeModule* module_, GType instanceType, GType interfaceType, GInterfaceInfo* interfaceInfo);
	GType g_type_module_register_enum(GTypeModule* module_, const(char)* name, GEnumValue* constStaticValues);
	GType g_type_module_register_flags(GTypeModule* module_, const(char)* name, GFlagsValue* constStaticValues);
	GType g_type_module_register_type(GTypeModule* module_, GType parentType, const(char)* typeName, GTypeInfo* typeInfo, GTypeFlags flags);
	void g_type_module_set_name(GTypeModule* module_, const(char)* name);
	void g_type_module_unuse(GTypeModule* module_);
	int g_type_module_use(GTypeModule* module_);

	// gobject.TypePlugin

	GType g_type_plugin_get_type();
	void g_type_plugin_complete_interface_info(GTypePlugin* plugin, GType instanceType, GType interfaceType, GInterfaceInfo* info);
	void g_type_plugin_complete_type_info(GTypePlugin* plugin, GType gType, GTypeInfo* info, GTypeValueTable* valueTable);
	void g_type_plugin_unuse(GTypePlugin* plugin);
	void g_type_plugin_use(GTypePlugin* plugin);

	// gobject.TypeValueTable

	GTypeValueTable* g_type_value_table_peek(GType type);

	// gobject.Value

	GType g_value_get_type();
	void g_value_copy(GValue* srcValue, GValue* destValue);
	void* g_value_dup_boxed(GValue* value);
	void* g_value_dup_object(GValue* value);
	GParamSpec* g_value_dup_param(GValue* value);
	char* g_value_dup_string(GValue* value);
	GVariant* g_value_dup_variant(GValue* value);
	int g_value_fits_pointer(GValue* value);
	int g_value_get_boolean(GValue* value);
	void* g_value_get_boxed(GValue* value);
	char g_value_get_char(GValue* value);
	double g_value_get_double(GValue* value);
	int g_value_get_enum(GValue* value);
	uint g_value_get_flags(GValue* value);
	float g_value_get_float(GValue* value);
	GType g_value_get_gtype(GValue* value);
	int g_value_get_int(GValue* value);
	long g_value_get_int64(GValue* value);
	glong g_value_get_long(GValue* value);
	void* g_value_get_object(GValue* value);
	GParamSpec* g_value_get_param(GValue* value);
	void* g_value_get_pointer(GValue* value);
	byte g_value_get_schar(GValue* value);
	const(char)* g_value_get_string(GValue* value);
	char g_value_get_uchar(GValue* value);
	uint g_value_get_uint(GValue* value);
	ulong g_value_get_uint64(GValue* value);
	gulong g_value_get_ulong(GValue* value);
	GVariant* g_value_get_variant(GValue* value);
	GValue* g_value_init(GValue* value, GType gType);
	void g_value_init_from_instance(GValue* value, void* instance_);
	void* g_value_peek_pointer(GValue* value);
	GValue* g_value_reset(GValue* value);
	void g_value_set_boolean(GValue* value, int vBoolean);
	void g_value_set_boxed(GValue* value, void* vBoxed);
	void g_value_set_boxed_take_ownership(GValue* value, void* vBoxed);
	void g_value_set_char(GValue* value, char vChar);
	void g_value_set_double(GValue* value, double vDouble);
	void g_value_set_enum(GValue* value, int vEnum);
	void g_value_set_flags(GValue* value, uint vFlags);
	void g_value_set_float(GValue* value, float vFloat);
	void g_value_set_gtype(GValue* value, GType vGtype);
	void g_value_set_instance(GValue* value, void* instance_);
	void g_value_set_int(GValue* value, int vInt);
	void g_value_set_int64(GValue* value, long vInt64);
	void g_value_set_long(GValue* value, glong vLong);
	void g_value_set_object(GValue* value, void* vObject);
	void g_value_set_object_take_ownership(GValue* value, void* vObject);
	void g_value_set_param(GValue* value, GParamSpec* param);
	void g_value_set_param_take_ownership(GValue* value, GParamSpec* param);
	void g_value_set_pointer(GValue* value, void* vPointer);
	void g_value_set_schar(GValue* value, byte vChar);
	void g_value_set_static_boxed(GValue* value, void* vBoxed);
	void g_value_set_static_string(GValue* value, const(char)* vString);
	void g_value_set_string(GValue* value, const(char)* vString);
	void g_value_set_string_take_ownership(GValue* value, char* vString);
	void g_value_set_uchar(GValue* value, char vUchar);
	void g_value_set_uint(GValue* value, uint vUint);
	void g_value_set_uint64(GValue* value, ulong vUint64);
	void g_value_set_ulong(GValue* value, gulong vUlong);
	void g_value_set_variant(GValue* value, GVariant* variant);
	void g_value_take_boxed(GValue* value, void* vBoxed);
	void g_value_take_object(GValue* value, void* vObject);
	void g_value_take_param(GValue* value, GParamSpec* param);
	void g_value_take_string(GValue* value, char* vString);
	void g_value_take_variant(GValue* value, GVariant* variant);
	int g_value_transform(GValue* srcValue, GValue* destValue);
	void g_value_unset(GValue* value);
	void g_value_register_transform_func(GType srcType, GType destType, GValueTransform transformFunc);
	int g_value_type_compatible(GType srcType, GType destType);
	int g_value_type_transformable(GType srcType, GType destType);
	GParamSpec* g_param_spec_boolean(const(char)* name, const(char)* nick, const(char)* blurb, int defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_boxed(const(char)* name, const(char)* nick, const(char)* blurb, GType boxedType, GParamFlags flags);
	GParamSpec* g_param_spec_char(const(char)* name, const(char)* nick, const(char)* blurb, byte minimum, byte maximum, byte defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_double(const(char)* name, const(char)* nick, const(char)* blurb, double minimum, double maximum, double defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_enum(const(char)* name, const(char)* nick, const(char)* blurb, GType enumType, int defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_flags(const(char)* name, const(char)* nick, const(char)* blurb, GType flagsType, uint defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_float(const(char)* name, const(char)* nick, const(char)* blurb, float minimum, float maximum, float defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_gtype(const(char)* name, const(char)* nick, const(char)* blurb, GType isAType, GParamFlags flags);
	GParamSpec* g_param_spec_int(const(char)* name, const(char)* nick, const(char)* blurb, int minimum, int maximum, int defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_int64(const(char)* name, const(char)* nick, const(char)* blurb, long minimum, long maximum, long defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_long(const(char)* name, const(char)* nick, const(char)* blurb, glong minimum, glong maximum, glong defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_object(const(char)* name, const(char)* nick, const(char)* blurb, GType objectType, GParamFlags flags);
	GParamSpec* g_param_spec_override(const(char)* name, GParamSpec* overridden);
	GParamSpec* g_param_spec_param(const(char)* name, const(char)* nick, const(char)* blurb, GType paramType, GParamFlags flags);
	GParamSpec* g_param_spec_pointer(const(char)* name, const(char)* nick, const(char)* blurb, GParamFlags flags);
	GParamSpec* g_param_spec_string(const(char)* name, const(char)* nick, const(char)* blurb, const(char)* defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_uchar(const(char)* name, const(char)* nick, const(char)* blurb, ubyte minimum, ubyte maximum, ubyte defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_uint(const(char)* name, const(char)* nick, const(char)* blurb, uint minimum, uint maximum, uint defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_uint64(const(char)* name, const(char)* nick, const(char)* blurb, ulong minimum, ulong maximum, ulong defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_ulong(const(char)* name, const(char)* nick, const(char)* blurb, gulong minimum, gulong maximum, gulong defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_unichar(const(char)* name, const(char)* nick, const(char)* blurb, dchar defaultValue, GParamFlags flags);
	GParamSpec* g_param_spec_value_array(const(char)* name, const(char)* nick, const(char)* blurb, GParamSpec* elementSpec, GParamFlags flags);
	GParamSpec* g_param_spec_variant(const(char)* name, const(char)* nick, const(char)* blurb, GVariantType* type, GVariant* defaultValue, GParamFlags flags);
	char* g_strdup_value_contents(GValue* value);

	// gobject.ValueArray

	GType g_value_array_get_type();
	GValueArray* g_value_array_new(uint nPrealloced);
	GValueArray* g_value_array_append(GValueArray* valueArray, GValue* value);
	GValueArray* g_value_array_copy(GValueArray* valueArray);
	void g_value_array_free(GValueArray* valueArray);
	GValue* g_value_array_get_nth(GValueArray* valueArray, uint index);
	GValueArray* g_value_array_insert(GValueArray* valueArray, uint index, GValue* value);
	GValueArray* g_value_array_prepend(GValueArray* valueArray, GValue* value);
	GValueArray* g_value_array_remove(GValueArray* valueArray, uint index);
	GValueArray* g_value_array_sort(GValueArray* valueArray, GCompareFunc compareFunc);
	GValueArray* g_value_array_sort_with_data(GValueArray* valueArray, GCompareDataFunc compareFunc, void* userData);

	// gobject.WeakRef

	void g_weak_ref_clear(GWeakRef* weakRef);
	void* g_weak_ref_get(GWeakRef* weakRef);
	void g_weak_ref_init(GWeakRef* weakRef, void* object);
	void g_weak_ref_set(GWeakRef* weakRef, void* object);

	// gobject.Signals

	void g_signal_handler_disconnect(void* instance_, gulong handlerId);
	int g_signal_accumulator_first_wins(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, void* dummy);
	int g_signal_accumulator_true_handled(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, void* dummy);
	gulong g_signal_add_emission_hook(uint signalId, GQuark detail, GSignalEmissionHook hookFunc, void* hookData, GDestroyNotify dataDestroy);
	void g_signal_chain_from_overridden(GValue* instanceAndParams, GValue* returnValue);
	void g_signal_chain_from_overridden_handler(void* instance_, ... );
	gulong g_signal_connect_closure(void* instance_, const(char)* detailedSignal, GClosure* closure, int after);
	gulong g_signal_connect_closure_by_id(void* instance_, uint signalId, GQuark detail, GClosure* closure, int after);
	gulong g_signal_connect_data(void* instance_, const(char)* detailedSignal, GCallback cHandler, void* data, GClosureNotify destroyData, GConnectFlags connectFlags);
	gulong g_signal_connect_object(void* instance_, const(char)* detailedSignal, GCallback cHandler, void* gobject, GConnectFlags connectFlags);
	void g_signal_emit(void* instance_, uint signalId, GQuark detail, ... );
	void g_signal_emit_by_name(void* instance_, const(char)* detailedSignal, ... );
	void g_signal_emit_valist(void* instance_, uint signalId, GQuark detail, void* varArgs);
	void g_signal_emitv(GValue* instanceAndParams, uint signalId, GQuark detail, GValue* returnValue);
	GSignalInvocationHint* g_signal_get_invocation_hint(void* instance_);
	void g_signal_handler_block(void* instance_, gulong handlerId);
	gulong g_signal_handler_find(void* instance_, GSignalMatchType mask, uint signalId, GQuark detail, GClosure* closure, void* func, void* data);
	int g_signal_handler_is_connected(void* instance_, gulong handlerId);
	void g_signal_handler_unblock(void* instance_, gulong handlerId);
	uint g_signal_handlers_block_matched(void* instance_, GSignalMatchType mask, uint signalId, GQuark detail, GClosure* closure, void* func, void* data);
	void g_signal_handlers_destroy(void* instance_);
	uint g_signal_handlers_disconnect_matched(void* instance_, GSignalMatchType mask, uint signalId, GQuark detail, GClosure* closure, void* func, void* data);
	uint g_signal_handlers_unblock_matched(void* instance_, GSignalMatchType mask, uint signalId, GQuark detail, GClosure* closure, void* func, void* data);
	int g_signal_has_handler_pending(void* instance_, uint signalId, GQuark detail, int mayBeBlocked);
	uint* g_signal_list_ids(GType itype, uint* nIds);
	uint g_signal_lookup(const(char)* name, GType itype);
	const(char)* g_signal_name(uint signalId);
	uint g_signal_new(const(char)* signalName, GType itype, GSignalFlags signalFlags, uint classOffset, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, ... );
	uint g_signal_new_class_handler(const(char)* signalName, GType itype, GSignalFlags signalFlags, GCallback classHandler, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, ... );
	uint g_signal_new_valist(const(char)* signalName, GType itype, GSignalFlags signalFlags, GClosure* classClosure, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, void* args);
	uint g_signal_newv(const(char)* signalName, GType itype, GSignalFlags signalFlags, GClosure* classClosure, GSignalAccumulator accumulator, void* accuData, GSignalCMarshaller cMarshaller, GType returnType, uint nParams, GType* paramTypes);
	void g_signal_override_class_closure(uint signalId, GType instanceType, GClosure* classClosure);
	void g_signal_override_class_handler(const(char)* signalName, GType instanceType, GCallback classHandler);
	int g_signal_parse_name(const(char)* detailedSignal, GType itype, uint* signalIdP, GQuark* detailP, int forceDetailQuark);
	void g_signal_query(uint signalId, GSignalQuery* query);
	void g_signal_remove_emission_hook(uint signalId, gulong hookId);
	void g_signal_set_va_marshaller(uint signalId, GType instanceType, GSignalCVaMarshaller vaMarshaller);
	void g_signal_stop_emission(void* instance_, uint signalId, GQuark detail);
	void g_signal_stop_emission_by_name(void* instance_, const(char)* detailedSignal);
	GClosure* g_signal_type_cclosure_new(GType itype, uint structOffset);

	// gobject.Type

	void g_type_add_class_cache_func(void* cacheData, GTypeClassCacheFunc cacheFunc);
	void g_type_add_class_private(GType classType, size_t privateSize);
	int g_type_add_instance_private(GType classType, size_t privateSize);
	void g_type_add_interface_check(void* checkData, GTypeInterfaceCheckFunc checkFunc);
	void g_type_add_interface_dynamic(GType instanceType, GType interfaceType, GTypePlugin* plugin);
	void g_type_add_interface_static(GType instanceType, GType interfaceType, GInterfaceInfo* info);
	GTypeClass* g_type_check_class_cast(GTypeClass* gClass, GType isAType);
	int g_type_check_class_is_a(GTypeClass* gClass, GType isAType);
	int g_type_check_instance(GTypeInstance* instance_);
	GTypeInstance* g_type_check_instance_cast(GTypeInstance* instance_, GType ifaceType);
	int g_type_check_instance_is_a(GTypeInstance* instance_, GType ifaceType);
	int g_type_check_instance_is_fundamentally_a(GTypeInstance* instance_, GType fundamentalType);
	int g_type_check_is_value_type(GType type);
	int g_type_check_value(GValue* value);
	int g_type_check_value_holds(GValue* value, GType type);
	GType* g_type_children(GType type, uint* nChildren);
	GTypeInstance* g_type_create_instance(GType type);
	void* g_type_default_interface_peek(GType gType);
	void* g_type_default_interface_ref(GType gType);
	void g_type_default_interface_unref(void* gIface);
	uint g_type_depth(GType type);
	void g_type_ensure(GType type);
	void g_type_free_instance(GTypeInstance* instance_);
	GType g_type_from_name(const(char)* name);
	GType g_type_fundamental(GType typeId);
	GType g_type_fundamental_next();
	GTypePlugin* g_type_get_plugin(GType type);
	void* g_type_get_qdata(GType type, GQuark quark);
	uint g_type_get_type_registration_serial();
	void g_type_init();
	void g_type_init_with_debug_flags(GTypeDebugFlags debugFlags);
	GType* g_type_interfaces(GType type, uint* nInterfaces);
	int g_type_is_a(GType type, GType isAType);
	const(char)* g_type_name(GType type);
	const(char)* g_type_name_from_class(GTypeClass* gClass);
	const(char)* g_type_name_from_instance(GTypeInstance* instance_);
	GType g_type_next_base(GType leafType, GType rootType);
	GType g_type_parent(GType type);
	GQuark g_type_qname(GType type);
	void g_type_query(GType type, GTypeQuery* query);
	GType g_type_register_dynamic(GType parentType, const(char)* typeName, GTypePlugin* plugin, GTypeFlags flags);
	GType g_type_register_fundamental(GType typeId, const(char)* typeName, GTypeInfo* info, GTypeFundamentalInfo* finfo, GTypeFlags flags);
	GType g_type_register_static(GType parentType, const(char)* typeName, GTypeInfo* info, GTypeFlags flags);
	GType g_type_register_static_simple(GType parentType, const(char)* typeName, uint classSize, GClassInitFunc classInit, uint instanceSize, GInstanceInitFunc instanceInit, GTypeFlags flags);
	void g_type_remove_class_cache_func(void* cacheData, GTypeClassCacheFunc cacheFunc);
	void g_type_remove_interface_check(void* checkData, GTypeInterfaceCheckFunc checkFunc);
	void g_type_set_qdata(GType type, GQuark quark, void* data);
	int g_type_test_flags(GType type, uint flags);
	int g_type_get_instance_count(GType type);

	// gobject.Boxed

	void* g_boxed_copy(GType boxedType, void* srcBoxed);
	void g_boxed_free(GType boxedType, void* boxed);
	GType g_boxed_type_register_static(const(char)* name, GBoxedCopyFunc boxedCopy, GBoxedFreeFunc boxedFree);
	GType g_pointer_type_register_static(const(char)* name);

	// gobject.Enums

	void g_enum_complete_type_info(GType gEnumType, GTypeInfo* info, GEnumValue* constValues);
	GEnumValue* g_enum_get_value(GEnumClass* enumClass, int value);
	GEnumValue* g_enum_get_value_by_name(GEnumClass* enumClass, const(char)* name);
	GEnumValue* g_enum_get_value_by_nick(GEnumClass* enumClass, const(char)* nick);
	GType g_enum_register_static(const(char)* name, GEnumValue* constStaticValues);
	char* g_enum_to_string(GType gEnumType, int value);
	char* g_flags_to_string(GType flagsType, uint value);

	// gobject.Flags

	void g_flags_complete_type_info(GType gFlagsType, GTypeInfo* info, GFlagsValue* constValues);
	GFlagsValue* g_flags_get_first_value(GFlagsClass* flagsClass, uint value);
	GFlagsValue* g_flags_get_value_by_name(GFlagsClass* flagsClass, const(char)* name);
	GFlagsValue* g_flags_get_value_by_nick(GFlagsClass* flagsClass, const(char)* nick);
	GType g_flags_register_static(const(char)* name, GFlagsValue* constStaticValues);
}