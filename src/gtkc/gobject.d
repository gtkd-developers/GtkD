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

// Adapted from John Reimer's DUI loader modules


module gtkc.gobject;

version(Tango) private import tango.stdc.stdio;
else private import std.stdio;
private import gtkc.gobjecttypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker gobject_Linker;

static this()
{
 gobject_Linker = new Linker(libPath ~ importLibs[LIBRARY.GOBJECT] );
 gobject_Linker.link(gobjectLinks);
 debug writefln("* Finished static this(): gobject");
}

static ~this()
{
 delete gobject_Linker;
 debug writefln("* Finished static ~this(): gobject");
}

extern(C) 
{	
	// gobject.Type
	
	void function()g_type_init;
	void function(GTypeDebugFlags debugFlags)g_type_init_with_debug_flags;
	gchar* function(GType type)g_type_name;
	GQuark function(GType type)g_type_qname;
	GType function(gchar* name)g_type_from_name;
	GType function(GType type)g_type_parent;
	guint function(GType type)g_type_depth;
	GType function(GType leafType, GType rootType)g_type_next_base;
	gboolean function(GType type, GType isAType)g_type_is_a;
	gpointer function(GType type)g_type_class_ref;
	gpointer function(GType type)g_type_class_peek;
	gpointer function(GType type)g_type_class_peek_static;
	void function(gpointer gClass)g_type_class_unref;
	gpointer function(gpointer gClass)g_type_class_peek_parent;
	void function(gpointer gClass, gsize privateSize)g_type_class_add_private;
	gpointer function(gpointer instanceClass, GType ifaceType)g_type_interface_peek;
	gpointer function(gpointer gIface)g_type_interface_peek_parent;
	gpointer function(GType gType)g_type_default_interface_ref;
	gpointer function(GType gType)g_type_default_interface_peek;
	void function(gpointer gIface)g_type_default_interface_unref;
	GType* function(GType type, guint* nChildren)g_type_children;
	GType* function(GType type, guint* nInterfaces)g_type_interfaces;
	GType* function(GType interfaceType, guint* nPrerequisites)g_type_interface_prerequisites;
	void function(GType type, GQuark quark, gpointer data)g_type_set_qdata;
	gpointer function(GType type, GQuark quark)g_type_get_qdata;
	void function(GType type, GTypeQuery* query)g_type_query;
	GType function(GType parentType, gchar* typeName, GTypeInfo* info, GTypeFlags flags)g_type_register_static;
	GType function(GType parentType, gchar* typeName, guint classSize, GClassInitFunc classInit, guint instanceSize, GInstanceInitFunc instanceInit, GTypeFlags flags)g_type_register_static_simple;
	GType function(GType parentType, gchar* typeName, GTypePlugin* plugin, GTypeFlags flags)g_type_register_dynamic;
	GType function(GType typeId, gchar* typeName, GTypeInfo* info, GTypeFundamentalInfo* finfo, GTypeFlags flags)g_type_register_fundamental;
	void function(GType instanceType, GType interfaceType, GInterfaceInfo* info)g_type_add_interface_static;
	void function(GType instanceType, GType interfaceType, GTypePlugin* plugin)g_type_add_interface_dynamic;
	void function(GType interfaceType, GType prerequisiteType)g_type_interface_add_prerequisite;
	GTypePlugin* function(GType type)g_type_get_plugin;
	GTypePlugin* function(GType instanceType, GType interfaceType)g_type_interface_get_plugin;
	GType function()g_type_fundamental_next;
	GType function(GType typeId)g_type_fundamental;
	GTypeInstance* function(GType type)g_type_create_instance;
	void function(GTypeInstance* instanc)g_type_free_instance;
	void function(gpointer cacheData, GTypeClassCacheFunc cacheFunc)g_type_add_class_cache_func;
	void function(gpointer cacheData, GTypeClassCacheFunc cacheFunc)g_type_remove_class_cache_func;
	void function(gpointer gClass)g_type_class_unref_uncached;
	void function(gpointer checkData, GTypeInterfaceCheckFunc checkFunc)g_type_add_interface_check;
	void function(gpointer checkData, GTypeInterfaceCheckFunc checkFunc)g_type_remove_interface_check;
	GTypeValueTable* function(GType type)g_type_value_table_peek;
	
	// gobject.TypePlugin
	
	void function(GTypePlugin* plugin)g_type_plugin_use;
	void function(GTypePlugin* plugin)g_type_plugin_unuse;
	void function(GTypePlugin* plugin, GType gType, GTypeInfo* info, GTypeValueTable* valueTable)g_type_plugin_complete_type_info;
	void function(GTypePlugin* plugin, GType instanceType, GType interfaceType, GInterfaceInfo* info)g_type_plugin_complete_interface_info;
	
	// gobject.TypeModule
	
	gboolean function(GTypeModule* modul)g_type_module_use;
	void function(GTypeModule* modul)g_type_module_unuse;
	void function(GTypeModule* modul, gchar* name)g_type_module_set_name;
	GType function(GTypeModule* modul, GType parentType, gchar* typeName, GTypeInfo* typeInfo, GTypeFlags flags)g_type_module_register_type;
	void function(GTypeModule* modul, GType instanceType, GType interfaceType, GInterfaceInfo* interfaceInfo)g_type_module_add_interface;
	GType function(GTypeModule* modul, gchar* name, GEnumValue* _StaticValues)g_type_module_register_enum;
	GType function(GTypeModule* modul, gchar* name, GFlagsValue* _StaticValues)g_type_module_register_flags;
	
	// gobject.ObjectG
	
	void function(GObjectClass* oclass, guint propertyId, GParamSpec* pspec)g_object_class_install_property;
	GParamSpec* function(GObjectClass* oclass, gchar* propertyName)g_object_class_find_property;
	GParamSpec** function(GObjectClass* oclass, guint* nProperties)g_object_class_list_properties;
	void function(GObjectClass* oclass, guint propertyId, gchar* name)g_object_class_override_property;
	void function(gpointer gIface, GParamSpec* pspec)g_object_interface_install_property;
	GParamSpec* function(gpointer gIface, gchar* propertyName)g_object_interface_find_property;
	GParamSpec** function(gpointer gIface, guint* nPropertiesP)g_object_interface_list_properties;
	gpointer function(GType objectType, gchar* firstPropertyName, ... )g_object_new;
	gpointer function(GType objectType, guint nParameters, GParameter* parameters)g_object_newv;
	gpointer function(gpointer object)g_object_ref;
	void function(gpointer object)g_object_unref;
	gpointer function(gpointer object)g_object_ref_sink;
	gboolean function(gpointer object)g_object_is_floating;
	void function(GObject* object)g_object_force_floating;
	void function(GObject* object, GWeakNotify notify, gpointer data)g_object_weak_ref;
	void function(GObject* object, GWeakNotify notify, gpointer data)g_object_weak_unref;
	void function(GObject* object, gpointer* weakPointerLocation)g_object_add_weak_pointer;
	void function(GObject* object, gpointer* weakPointerLocation)g_object_remove_weak_pointer;
	void function(GObject* object, GToggleNotify notify, gpointer data)g_object_add_toggle_ref;
	void function(GObject* object, GToggleNotify notify, gpointer data)g_object_remove_toggle_ref;
	gpointer function(gpointer object, gchar* signalSpec, ... )g_object_connect;
	void function(gpointer object, gchar* signalSpec, ... )g_object_disconnect;
	void function(gpointer object, gchar* firstPropertyName, ... )g_object_set;
	void function(gpointer object, gchar* firstPropertyName, ... )g_object_get;
	void function(GObject* object, gchar* propertyName)g_object_notify;
	void function(GObject* object)g_object_freeze_notify;
	void function(GObject* object)g_object_thaw_notify;
	gpointer function(GObject* object, gchar* key)g_object_get_data;
	void function(GObject* object, gchar* key, gpointer data)g_object_set_data;
	void function(GObject* object, gchar* key, gpointer data, GDestroyNotify destroy)g_object_set_data_full;
	gpointer function(GObject* object, gchar* key)g_object_steal_data;
	gpointer function(GObject* object, GQuark quark)g_object_get_qdata;
	void function(GObject* object, GQuark quark, gpointer data)g_object_set_qdata;
	void function(GObject* object, GQuark quark, gpointer data, GDestroyNotify destroy)g_object_set_qdata_full;
	gpointer function(GObject* object, GQuark quark)g_object_steal_qdata;
	void function(GObject* object, gchar* propertyName, GValue* value)g_object_set_property;
	void function(GObject* object, gchar* propertyName, GValue* value)g_object_get_property;
	GObject* function(GType objectType, gchar* firstPropertyName, va_list varArgs)g_object_new_valist;
	void function(GObject* object, gchar* firstPropertyName, va_list varArgs)g_object_set_valist;
	void function(GObject* object, gchar* firstPropertyName, va_list varArgs)g_object_get_valist;
	void function(GObject* object, GClosure* closure)g_object_watch_closure;
	void function(GObject* object)g_object_run_dispose;
	
	// gobject.Enums
	
	GEnumValue* function(GEnumClass* enumClass, gint value)g_enum_get_value;
	GEnumValue* function(GEnumClass* enumClass, gchar* name)g_enum_get_value_by_name;
	GEnumValue* function(GEnumClass* enumClass, gchar* nick)g_enum_get_value_by_nick;
	GType function(gchar* name, GEnumValue* _StaticValues)g_enum_register_static;
	void function(GType type, GTypeInfo* info, GEnumValue* _Values)g_enum_complete_type_info;
	
	// gobject.Flags
	
	GFlagsValue* function(GFlagsClass* flagsClass, guint value)g_flags_get_first_value;
	GFlagsValue* function(GFlagsClass* flagsClass, gchar* name)g_flags_get_value_by_name;
	GFlagsValue* function(GFlagsClass* flagsClass, gchar* nick)g_flags_get_value_by_nick;
	GType function(gchar* name, GFlagsValue* _StaticValues)g_flags_register_static;
	void function(GType type, GTypeInfo* info, GFlagsValue* _Values)g_flags_complete_type_info;
	
	// gobject.Boxed
	
	gpointer function(GType boxedType, gconstpointer srcBoxed)g_boxed_copy;
	void function(GType boxedType, gpointer boxed)g_boxed_free;
	GType function(gchar* name, GBoxedCopyFunc boxedCopy, GBoxedFreeFunc boxedFree)g_boxed_type_register_static;
	GType function(gchar* name)g_pointer_type_register_static;
	
	// gobject.Value
	
	GValue* function(GValue* value, GType gType)g_value_init;
	void function(GValue* srcValue, GValue* destValue)g_value_copy;
	GValue* function(GValue* value)g_value_reset;
	void function(GValue* value)g_value_unset;
	void function(GValue* value, gpointer instanc)g_value_set_instance;
	gboolean function(GValue* value)g_value_fits_pointer;
	gpointer function(GValue* value)g_value_peek_pointer;
	gboolean function(GType srcType, GType destType)g_value_type_compatible;
	gboolean function(GType srcType, GType destType)g_value_type_transformable;
	gboolean function(GValue* srcValue, GValue* destValue)g_value_transform;
	void function(GType srcType, GType destType, GValueTransform transformFunc)g_value_register_transform_func;
	gchar* function(GValue* value)g_strdup_value_contents;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gboolean defaultValue, GParamFlags flags)g_param_spec_boolean;
	void function(GValue* value, gboolean vBoolean)g_value_set_boolean;
	gboolean function(GValue* value)g_value_get_boolean;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gint8 minimum, gint8 maximum, gint8 defaultValue, GParamFlags flags)g_param_spec_char;
	void function(GValue* value, gchar vChar)g_value_set_char;
	gchar function(GValue* value)g_value_get_char;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, guint8 minimum, guint8 maximum, guint8 defaultValue, GParamFlags flags)g_param_spec_uchar;
	void function(GValue* value, guchar vUchar)g_value_set_uchar;
	guchar function(GValue* value)g_value_get_uchar;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gint minimum, gint maximum, gint defaultValue, GParamFlags flags)g_param_spec_int;
	void function(GValue* value, gint vInt)g_value_set_int;
	gint function(GValue* value)g_value_get_int;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, guint minimum, guint maximum, guint defaultValue, GParamFlags flags)g_param_spec_uint;
	void function(GValue* value, guint vUint)g_value_set_uint;
	guint function(GValue* value)g_value_get_uint;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, glong minimum, glong maximum, glong defaultValue, GParamFlags flags)g_param_spec_long;
	void function(GValue* value, glong vLong)g_value_set_long;
	glong function(GValue* value)g_value_get_long;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gulong minimum, gulong maximum, gulong defaultValue, GParamFlags flags)g_param_spec_ulong;
	void function(GValue* value, gulong vUlong)g_value_set_ulong;
	gulong function(GValue* value)g_value_get_ulong;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gint64 minimum, gint64 maximum, gint64 defaultValue, GParamFlags flags)g_param_spec_int64;
	void function(GValue* value, gint64 vInt64)g_value_set_int64;
	gint64 function(GValue* value)g_value_get_int64;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, guint64 minimum, guint64 maximum, guint64 defaultValue, GParamFlags flags)g_param_spec_uint64;
	void function(GValue* value, guint64 vUint64)g_value_set_uint64;
	guint64 function(GValue* value)g_value_get_uint64;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gfloat minimum, gfloat maximum, gfloat defaultValue, GParamFlags flags)g_param_spec_float;
	void function(GValue* value, gfloat vFloat)g_value_set_float;
	gfloat function(GValue* value)g_value_get_float;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gdouble minimum, gdouble maximum, gdouble defaultValue, GParamFlags flags)g_param_spec_double;
	void function(GValue* value, gdouble vDouble)g_value_set_double;
	gdouble function(GValue* value)g_value_get_double;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType enumType, gint defaultValue, GParamFlags flags)g_param_spec_enum;
	void function(GValue* value, gint vEnum)g_value_set_enum;
	gint function(GValue* value)g_value_get_enum;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType flagsType, guint defaultValue, GParamFlags flags)g_param_spec_flags;
	void function(GValue* value, guint vFlags)g_value_set_flags;
	guint function(GValue* value)g_value_get_flags;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gchar* defaultValue, GParamFlags flags)g_param_spec_string;
	void function(GValue* value, gchar* vString)g_value_set_string;
	void function(GValue* value, gchar* vString)g_value_set_static_string;
	void function(GValue* value, gchar* vString)g_value_take_string;
	void function(GValue* value, gchar* vString)g_value_set_string_take_ownership;
	gchar* function(GValue* value)g_value_get_string;
	gchar* function(GValue* value)g_value_dup_string;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType paramType, GParamFlags flags)g_param_spec_param;
	void function(GValue* value, GParamSpec* param)g_value_set_param;
	void function(GValue* value, GParamSpec* param)g_value_take_param;
	void function(GValue* value, GParamSpec* param)g_value_set_param_take_ownership;
	GParamSpec* function(GValue* value)g_value_get_param;
	GParamSpec* function(GValue* value)g_value_dup_param;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType boxedType, GParamFlags flags)g_param_spec_boxed;
	void function(GValue* value, gconstpointer vBoxed)g_value_set_boxed;
	void function(GValue* value, gconstpointer vBoxed)g_value_set_static_boxed;
	void function(GValue* value, gconstpointer vBoxed)g_value_take_boxed;
	void function(GValue* value, gconstpointer vBoxed)g_value_set_boxed_take_ownership;
	gpointer function(GValue* value)g_value_get_boxed;
	gpointer function(GValue* value)g_value_dup_boxed;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GParamFlags flags)g_param_spec_pointer;
	void function(GValue* value, gpointer vPointer)g_value_set_pointer;
	gpointer function(GValue* value)g_value_get_pointer;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType objectType, GParamFlags flags)g_param_spec_object;
	void function(GValue* value, gpointer vObject)g_value_set_object;
	void function(GValue* value, gpointer vObject)g_value_take_object;
	void function(GValue* value, gpointer vObject)g_value_set_object_take_ownership;
	gpointer function(GValue* value)g_value_get_object;
	gpointer function(GValue* value)g_value_dup_object;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, gunichar defaultValue, GParamFlags flags)g_param_spec_unichar;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GParamSpec* elementSpec, GParamFlags flags)g_param_spec_value_array;
	GParamSpec* function(gchar* name, GParamSpec* overridden)g_param_spec_override;
	GParamSpec* function(gchar* name, gchar* nick, gchar* blurb, GType isAType, GParamFlags flags)g_param_spec_gtype;
	GType function(GValue* value)g_value_get_gtype;
	void function(GValue* value, GType vGtype)g_value_set_gtype;
	
	// gobject.ParamSpec
	
	GParamSpec* function(GParamSpec* pspec)g_param_spec_ref;
	void function(GParamSpec* pspec)g_param_spec_unref;
	void function(GParamSpec* pspec)g_param_spec_sink;
	GParamSpec* function(GParamSpec* pspec)g_param_spec_ref_sink;
	void function(GParamSpec* pspec, GValue* value)g_param_value_set_default;
	gboolean function(GParamSpec* pspec, GValue* value)g_param_value_defaults;
	gboolean function(GParamSpec* pspec, GValue* value)g_param_value_validate;
	gboolean function(GParamSpec* pspec, GValue* srcValue, GValue* destValue, gboolean strictValidation)g_param_value_convert;
	gint function(GParamSpec* pspec, GValue* value1, GValue* value2)g_param_values_cmp;
	gchar* function(GParamSpec* pspec)g_param_spec_get_name;
	gchar* function(GParamSpec* pspec)g_param_spec_get_nick;
	gchar* function(GParamSpec* pspec)g_param_spec_get_blurb;
	gpointer function(GParamSpec* pspec, GQuark quark)g_param_spec_get_qdata;
	void function(GParamSpec* pspec, GQuark quark, gpointer data)g_param_spec_set_qdata;
	void function(GParamSpec* pspec, GQuark quark, gpointer data, GDestroyNotify destroy)g_param_spec_set_qdata_full;
	gpointer function(GParamSpec* pspec, GQuark quark)g_param_spec_steal_qdata;
	GParamSpec* function(GParamSpec* pspec)g_param_spec_get_redirect_target;
	gpointer function(GType paramType, gchar* name, gchar* nick, gchar* blurb, GParamFlags flags)g_param_spec_internal;
	GType function(gchar* name, GParamSpecTypeInfo* pspecInfo)g_param_type_register_static;
	GParamSpecPool* function(gboolean typePrefixing)g_param_spec_pool_new;
	void function(GParamSpecPool* pool, GParamSpec* pspec, GType ownerType)g_param_spec_pool_insert;
	void function(GParamSpecPool* pool, GParamSpec* pspec)g_param_spec_pool_remove;
	GParamSpec* function(GParamSpecPool* pool, gchar* paramName, GType ownerType, gboolean walkAncestors)g_param_spec_pool_lookup;
	GParamSpec** function(GParamSpecPool* pool, GType ownerType, guint* nPspecsP)g_param_spec_pool_list;
	GList* function(GParamSpecPool* pool, GType ownerType)g_param_spec_pool_list_owned;
	
	// gobject.Signals
	
	guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, guint classOffset, GSignalAccumulator accumulator, gpointer accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, ... )g_signal_new;
	guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, GClosure* classClosure, GSignalAccumulator accumulator, gpointer accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, GType* paramTypes)g_signal_newv;
	guint function(gchar* signalName, GType itype, GSignalFlags signalFlags, GClosure* classClosure, GSignalAccumulator accumulator, gpointer accuData, GSignalCMarshaller cMarshaller, GType returnType, guint nParams, va_list args)g_signal_new_valist;
	void function(guint signalId, GSignalQuery* query)g_signal_query;
	guint function(gchar* name, GType itype)g_signal_lookup;
	gchar* function(guint signalId)g_signal_name;
	guint* function(GType itype, guint* nIds)g_signal_list_ids;
	void function(gpointer instanc, guint signalId, GQuark detail, ... )g_signal_emit;
	void function(gpointer instanc, gchar* detailedSignal, ... )g_signal_emit_by_name;
	void function(GValue* instanceAndParams, guint signalId, GQuark detail, GValue* returnValue)g_signal_emitv;
	void function(gpointer instanc, guint signalId, GQuark detail, va_list varArgs)g_signal_emit_valist;
	gulong function(gpointer instanc, gchar* detailedSignal, GCallback cHandler, gpointer gobject, GConnectFlags connectFlags)g_signal_connect_object;
	gulong function(gpointer instanc, gchar* detailedSignal, GCallback cHandler, gpointer data, GClosureNotify destroyData, GConnectFlags connectFlags)g_signal_connect_data;
	gulong function(gpointer instanc, gchar* detailedSignal, GClosure* closure, gboolean after)g_signal_connect_closure;
	gulong function(gpointer instanc, guint signalId, GQuark detail, GClosure* closure, gboolean after)g_signal_connect_closure_by_id;
	void function(gpointer instanc, gulong handlerId)g_signal_handler_block;
	void function(gpointer instanc, gulong handlerId)g_signal_handler_unblock;
	void function(gpointer instanc, gulong handlerId)g_signal_handler_disconnect;
	gulong function(gpointer instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, gpointer func, gpointer data)g_signal_handler_find;
	guint function(gpointer instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, gpointer func, gpointer data)g_signal_handlers_block_matched;
	guint function(gpointer instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, gpointer func, gpointer data)g_signal_handlers_unblock_matched;
	guint function(gpointer instanc, GSignalMatchType mask, guint signalId, GQuark detail, GClosure* closure, gpointer func, gpointer data)g_signal_handlers_disconnect_matched;
	gboolean function(gpointer instanc, gulong handlerId)g_signal_handler_is_connected;
	gboolean function(gpointer instanc, guint signalId, GQuark detail, gboolean mayBeBlocked)g_signal_has_handler_pending;
	void function(gpointer instanc, guint signalId, GQuark detail)g_signal_stop_emission;
	void function(gpointer instanc, gchar* detailedSignal)g_signal_stop_emission_by_name;
	void function(guint signalId, GType instanceType, GClosure* classClosure)g_signal_override_class_closure;
	void function(GValue* instanceAndParams, GValue* returnValue)g_signal_chain_from_overridden;
	gulong function(guint signalId, GQuark detail, GSignalEmissionHook hookFunc, gpointer hookData, GDestroyNotify dataDestroy)g_signal_add_emission_hook;
	void function(guint signalId, gulong hookId)g_signal_remove_emission_hook;
	gboolean function(gchar* detailedSignal, GType itype, guint* signalIdP, GQuark* detailP, gboolean forceDetailQuark)g_signal_parse_name;
	GSignalInvocationHint* function(gpointer instanc)g_signal_get_invocation_hint;
	GClosure* function(GType itype, guint structOffset)g_signal_type_cclosure_new;
	gboolean function(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, gpointer dummy)g_signal_accumulator_true_handled;
	
	// gobject.Closure
	
	GClosure* function(guint sizeofClosure, GObject* object)g_closure_new_object;
	GClosure* function(GClosure* closure)g_closure_ref;
	void function(GClosure* closure)g_closure_sink;
	void function(GClosure* closure)g_closure_unref;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint)g_closure_invoke;
	void function(GClosure* closure)g_closure_invalidate;
	void function(GClosure* closure, gpointer notifyData, GClosureNotify notifyFunc)g_closure_add_finalize_notifier;
	void function(GClosure* closure, gpointer notifyData, GClosureNotify notifyFunc)g_closure_add_invalidate_notifier;
	void function(GClosure* closure, gpointer notifyData, GClosureNotify notifyFunc)g_closure_remove_finalize_notifier;
	void function(GClosure* closure, gpointer notifyData, GClosureNotify notifyFunc)g_closure_remove_invalidate_notifier;
	GClosure* function(guint sizeofClosure, gpointer data)g_closure_new_simple;
	void function(GClosure* closure, GClosureMarshal marshal)g_closure_set_marshal;
	void function(GClosure* closure, gpointer preMarshalData, GClosureNotify preMarshalNotify, gpointer postMarshalData, GClosureNotify postMarshalNotify)g_closure_add_marshal_guards;
	void function(GClosure* closure, gpointer marshalData, GClosureMarshal metaMarshal)g_closure_set_meta_marshal;
	void function(GSource* source, GClosure* closure)g_source_set_closure;
	
	// gobject.CClosure
	
	GClosure* function(GCallback callbackFunc, gpointer userData, GClosureNotify destroyData)g_cclosure_new;
	GClosure* function(GCallback callbackFunc, gpointer userData, GClosureNotify destroyData)g_cclosure_new_swap;
	GClosure* function(GCallback callbackFunc, GObject* object)g_cclosure_new_object;
	GClosure* function(GCallback callbackFunc, GObject* object)g_cclosure_new_object_swap;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__VOID;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__BOOLEAN;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__CHAR;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__UCHAR;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__INT;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__UINT;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__LONG;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__ULONG;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__ENUM;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__FLAGS;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__FLOAT;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__DOUBLE;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__STRING;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__PARAM;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__BOXED;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__POINTER;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__OBJECT;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_STRING__OBJECT_POINTER;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_VOID__UINT_POINTER;
	void function(GClosure* closure, GValue* returnValue, guint nParamValues, GValue* paramValues, gpointer invocationHint, gpointer marshalData)g_cclosure_marshal_BOOLEAN__FLAGS;
	
	// gobject.ValueArray
	
	GValue* function(GValueArray* valueArray, guint index)g_value_array_get_nth;
	GValueArray* function(guint nPrealloced)g_value_array_new;
	GValueArray* function(GValueArray* valueArray)g_value_array_copy;
	void function(GValueArray* valueArray)g_value_array_free;
	GValueArray* function(GValueArray* valueArray, GValue* value)g_value_array_append;
	GValueArray* function(GValueArray* valueArray, GValue* value)g_value_array_prepend;
	GValueArray* function(GValueArray* valueArray, guint index, GValue* value)g_value_array_insert;
	GValueArray* function(GValueArray* valueArray, guint index)g_value_array_remove;
	GValueArray* function(GValueArray* valueArray, GCompareFunc compareFunc)g_value_array_sort;
	GValueArray* function(GValueArray* valueArray, GCompareDataFunc compareFunc, gpointer userData)g_value_array_sort_with_data;


}

Symbol[] gobjectLinks = 
[

	{ "g_type_init",  cast(void**)& g_type_init},
	{ "g_type_init_with_debug_flags",  cast(void**)& g_type_init_with_debug_flags},
	{ "g_type_name",  cast(void**)& g_type_name},
	{ "g_type_qname",  cast(void**)& g_type_qname},
	{ "g_type_from_name",  cast(void**)& g_type_from_name},
	{ "g_type_parent",  cast(void**)& g_type_parent},
	{ "g_type_depth",  cast(void**)& g_type_depth},
	{ "g_type_next_base",  cast(void**)& g_type_next_base},
	{ "g_type_is_a",  cast(void**)& g_type_is_a},
	{ "g_type_class_ref",  cast(void**)& g_type_class_ref},
	{ "g_type_class_peek",  cast(void**)& g_type_class_peek},
	{ "g_type_class_peek_static",  cast(void**)& g_type_class_peek_static},
	{ "g_type_class_unref",  cast(void**)& g_type_class_unref},
	{ "g_type_class_peek_parent",  cast(void**)& g_type_class_peek_parent},
	{ "g_type_class_add_private",  cast(void**)& g_type_class_add_private},
	{ "g_type_interface_peek",  cast(void**)& g_type_interface_peek},
	{ "g_type_interface_peek_parent",  cast(void**)& g_type_interface_peek_parent},
	{ "g_type_default_interface_ref",  cast(void**)& g_type_default_interface_ref},
	{ "g_type_default_interface_peek",  cast(void**)& g_type_default_interface_peek},
	{ "g_type_default_interface_unref",  cast(void**)& g_type_default_interface_unref},
	{ "g_type_children",  cast(void**)& g_type_children},
	{ "g_type_interfaces",  cast(void**)& g_type_interfaces},
	{ "g_type_interface_prerequisites",  cast(void**)& g_type_interface_prerequisites},
	{ "g_type_set_qdata",  cast(void**)& g_type_set_qdata},
	{ "g_type_get_qdata",  cast(void**)& g_type_get_qdata},
	{ "g_type_query",  cast(void**)& g_type_query},
	{ "g_type_register_static",  cast(void**)& g_type_register_static},
	{ "g_type_register_static_simple",  cast(void**)& g_type_register_static_simple},
	{ "g_type_register_dynamic",  cast(void**)& g_type_register_dynamic},
	{ "g_type_register_fundamental",  cast(void**)& g_type_register_fundamental},
	{ "g_type_add_interface_static",  cast(void**)& g_type_add_interface_static},
	{ "g_type_add_interface_dynamic",  cast(void**)& g_type_add_interface_dynamic},
	{ "g_type_interface_add_prerequisite",  cast(void**)& g_type_interface_add_prerequisite},
	{ "g_type_get_plugin",  cast(void**)& g_type_get_plugin},
	{ "g_type_interface_get_plugin",  cast(void**)& g_type_interface_get_plugin},
	{ "g_type_fundamental_next",  cast(void**)& g_type_fundamental_next},
	{ "g_type_fundamental",  cast(void**)& g_type_fundamental},
	{ "g_type_create_instance",  cast(void**)& g_type_create_instance},
	{ "g_type_free_instance",  cast(void**)& g_type_free_instance},
	{ "g_type_add_class_cache_func",  cast(void**)& g_type_add_class_cache_func},
	{ "g_type_remove_class_cache_func",  cast(void**)& g_type_remove_class_cache_func},
	{ "g_type_class_unref_uncached",  cast(void**)& g_type_class_unref_uncached},
	{ "g_type_add_interface_check",  cast(void**)& g_type_add_interface_check},
	{ "g_type_remove_interface_check",  cast(void**)& g_type_remove_interface_check},
	{ "g_type_value_table_peek",  cast(void**)& g_type_value_table_peek},
	{ "g_type_plugin_use",  cast(void**)& g_type_plugin_use},
	{ "g_type_plugin_unuse",  cast(void**)& g_type_plugin_unuse},
	{ "g_type_plugin_complete_type_info",  cast(void**)& g_type_plugin_complete_type_info},
	{ "g_type_plugin_complete_interface_info",  cast(void**)& g_type_plugin_complete_interface_info},
	{ "g_type_module_use",  cast(void**)& g_type_module_use},
	{ "g_type_module_unuse",  cast(void**)& g_type_module_unuse},
	{ "g_type_module_set_name",  cast(void**)& g_type_module_set_name},
	{ "g_type_module_register_type",  cast(void**)& g_type_module_register_type},
	{ "g_type_module_add_interface",  cast(void**)& g_type_module_add_interface},
	{ "g_type_module_register_enum",  cast(void**)& g_type_module_register_enum},
	{ "g_type_module_register_flags",  cast(void**)& g_type_module_register_flags},
	{ "g_object_class_install_property",  cast(void**)& g_object_class_install_property},
	{ "g_object_class_find_property",  cast(void**)& g_object_class_find_property},
	{ "g_object_class_list_properties",  cast(void**)& g_object_class_list_properties},
	{ "g_object_class_override_property",  cast(void**)& g_object_class_override_property},
	{ "g_object_interface_install_property",  cast(void**)& g_object_interface_install_property},
	{ "g_object_interface_find_property",  cast(void**)& g_object_interface_find_property},
	{ "g_object_interface_list_properties",  cast(void**)& g_object_interface_list_properties},
	{ "g_object_new",  cast(void**)& g_object_new},
	{ "g_object_newv",  cast(void**)& g_object_newv},
	{ "g_object_ref",  cast(void**)& g_object_ref},
	{ "g_object_unref",  cast(void**)& g_object_unref},
	{ "g_object_ref_sink",  cast(void**)& g_object_ref_sink},
	{ "g_object_is_floating",  cast(void**)& g_object_is_floating},
	{ "g_object_force_floating",  cast(void**)& g_object_force_floating},
	{ "g_object_weak_ref",  cast(void**)& g_object_weak_ref},
	{ "g_object_weak_unref",  cast(void**)& g_object_weak_unref},
	{ "g_object_add_weak_pointer",  cast(void**)& g_object_add_weak_pointer},
	{ "g_object_remove_weak_pointer",  cast(void**)& g_object_remove_weak_pointer},
	{ "g_object_add_toggle_ref",  cast(void**)& g_object_add_toggle_ref},
	{ "g_object_remove_toggle_ref",  cast(void**)& g_object_remove_toggle_ref},
	{ "g_object_connect",  cast(void**)& g_object_connect},
	{ "g_object_disconnect",  cast(void**)& g_object_disconnect},
	{ "g_object_set",  cast(void**)& g_object_set},
	{ "g_object_get",  cast(void**)& g_object_get},
	{ "g_object_notify",  cast(void**)& g_object_notify},
	{ "g_object_freeze_notify",  cast(void**)& g_object_freeze_notify},
	{ "g_object_thaw_notify",  cast(void**)& g_object_thaw_notify},
	{ "g_object_get_data",  cast(void**)& g_object_get_data},
	{ "g_object_set_data",  cast(void**)& g_object_set_data},
	{ "g_object_set_data_full",  cast(void**)& g_object_set_data_full},
	{ "g_object_steal_data",  cast(void**)& g_object_steal_data},
	{ "g_object_get_qdata",  cast(void**)& g_object_get_qdata},
	{ "g_object_set_qdata",  cast(void**)& g_object_set_qdata},
	{ "g_object_set_qdata_full",  cast(void**)& g_object_set_qdata_full},
	{ "g_object_steal_qdata",  cast(void**)& g_object_steal_qdata},
	{ "g_object_set_property",  cast(void**)& g_object_set_property},
	{ "g_object_get_property",  cast(void**)& g_object_get_property},
	{ "g_object_new_valist",  cast(void**)& g_object_new_valist},
	{ "g_object_set_valist",  cast(void**)& g_object_set_valist},
	{ "g_object_get_valist",  cast(void**)& g_object_get_valist},
	{ "g_object_watch_closure",  cast(void**)& g_object_watch_closure},
	{ "g_object_run_dispose",  cast(void**)& g_object_run_dispose},
	{ "g_enum_get_value",  cast(void**)& g_enum_get_value},
	{ "g_enum_get_value_by_name",  cast(void**)& g_enum_get_value_by_name},
	{ "g_enum_get_value_by_nick",  cast(void**)& g_enum_get_value_by_nick},
	{ "g_enum_register_static",  cast(void**)& g_enum_register_static},
	{ "g_enum_complete_type_info",  cast(void**)& g_enum_complete_type_info},
	{ "g_flags_get_first_value",  cast(void**)& g_flags_get_first_value},
	{ "g_flags_get_value_by_name",  cast(void**)& g_flags_get_value_by_name},
	{ "g_flags_get_value_by_nick",  cast(void**)& g_flags_get_value_by_nick},
	{ "g_flags_register_static",  cast(void**)& g_flags_register_static},
	{ "g_flags_complete_type_info",  cast(void**)& g_flags_complete_type_info},
	{ "g_boxed_copy",  cast(void**)& g_boxed_copy},
	{ "g_boxed_free",  cast(void**)& g_boxed_free},
	{ "g_boxed_type_register_static",  cast(void**)& g_boxed_type_register_static},
	{ "g_pointer_type_register_static",  cast(void**)& g_pointer_type_register_static},
	{ "g_value_init",  cast(void**)& g_value_init},
	{ "g_value_copy",  cast(void**)& g_value_copy},
	{ "g_value_reset",  cast(void**)& g_value_reset},
	{ "g_value_unset",  cast(void**)& g_value_unset},
	{ "g_value_set_instance",  cast(void**)& g_value_set_instance},
	{ "g_value_fits_pointer",  cast(void**)& g_value_fits_pointer},
	{ "g_value_peek_pointer",  cast(void**)& g_value_peek_pointer},
	{ "g_value_type_compatible",  cast(void**)& g_value_type_compatible},
	{ "g_value_type_transformable",  cast(void**)& g_value_type_transformable},
	{ "g_value_transform",  cast(void**)& g_value_transform},
	{ "g_value_register_transform_func",  cast(void**)& g_value_register_transform_func},
	{ "g_strdup_value_contents",  cast(void**)& g_strdup_value_contents},
	{ "g_param_spec_boolean",  cast(void**)& g_param_spec_boolean},
	{ "g_value_set_boolean",  cast(void**)& g_value_set_boolean},
	{ "g_value_get_boolean",  cast(void**)& g_value_get_boolean},
	{ "g_param_spec_char",  cast(void**)& g_param_spec_char},
	{ "g_value_set_char",  cast(void**)& g_value_set_char},
	{ "g_value_get_char",  cast(void**)& g_value_get_char},
	{ "g_param_spec_uchar",  cast(void**)& g_param_spec_uchar},
	{ "g_value_set_uchar",  cast(void**)& g_value_set_uchar},
	{ "g_value_get_uchar",  cast(void**)& g_value_get_uchar},
	{ "g_param_spec_int",  cast(void**)& g_param_spec_int},
	{ "g_value_set_int",  cast(void**)& g_value_set_int},
	{ "g_value_get_int",  cast(void**)& g_value_get_int},
	{ "g_param_spec_uint",  cast(void**)& g_param_spec_uint},
	{ "g_value_set_uint",  cast(void**)& g_value_set_uint},
	{ "g_value_get_uint",  cast(void**)& g_value_get_uint},
	{ "g_param_spec_long",  cast(void**)& g_param_spec_long},
	{ "g_value_set_long",  cast(void**)& g_value_set_long},
	{ "g_value_get_long",  cast(void**)& g_value_get_long},
	{ "g_param_spec_ulong",  cast(void**)& g_param_spec_ulong},
	{ "g_value_set_ulong",  cast(void**)& g_value_set_ulong},
	{ "g_value_get_ulong",  cast(void**)& g_value_get_ulong},
	{ "g_param_spec_int64",  cast(void**)& g_param_spec_int64},
	{ "g_value_set_int64",  cast(void**)& g_value_set_int64},
	{ "g_value_get_int64",  cast(void**)& g_value_get_int64},
	{ "g_param_spec_uint64",  cast(void**)& g_param_spec_uint64},
	{ "g_value_set_uint64",  cast(void**)& g_value_set_uint64},
	{ "g_value_get_uint64",  cast(void**)& g_value_get_uint64},
	{ "g_param_spec_float",  cast(void**)& g_param_spec_float},
	{ "g_value_set_float",  cast(void**)& g_value_set_float},
	{ "g_value_get_float",  cast(void**)& g_value_get_float},
	{ "g_param_spec_double",  cast(void**)& g_param_spec_double},
	{ "g_value_set_double",  cast(void**)& g_value_set_double},
	{ "g_value_get_double",  cast(void**)& g_value_get_double},
	{ "g_param_spec_enum",  cast(void**)& g_param_spec_enum},
	{ "g_value_set_enum",  cast(void**)& g_value_set_enum},
	{ "g_value_get_enum",  cast(void**)& g_value_get_enum},
	{ "g_param_spec_flags",  cast(void**)& g_param_spec_flags},
	{ "g_value_set_flags",  cast(void**)& g_value_set_flags},
	{ "g_value_get_flags",  cast(void**)& g_value_get_flags},
	{ "g_param_spec_string",  cast(void**)& g_param_spec_string},
	{ "g_value_set_string",  cast(void**)& g_value_set_string},
	{ "g_value_set_static_string",  cast(void**)& g_value_set_static_string},
	{ "g_value_take_string",  cast(void**)& g_value_take_string},
	{ "g_value_set_string_take_ownership",  cast(void**)& g_value_set_string_take_ownership},
	{ "g_value_get_string",  cast(void**)& g_value_get_string},
	{ "g_value_dup_string",  cast(void**)& g_value_dup_string},
	{ "g_param_spec_param",  cast(void**)& g_param_spec_param},
	{ "g_value_set_param",  cast(void**)& g_value_set_param},
	{ "g_value_take_param",  cast(void**)& g_value_take_param},
	{ "g_value_set_param_take_ownership",  cast(void**)& g_value_set_param_take_ownership},
	{ "g_value_get_param",  cast(void**)& g_value_get_param},
	{ "g_value_dup_param",  cast(void**)& g_value_dup_param},
	{ "g_param_spec_boxed",  cast(void**)& g_param_spec_boxed},
	{ "g_value_set_boxed",  cast(void**)& g_value_set_boxed},
	{ "g_value_set_static_boxed",  cast(void**)& g_value_set_static_boxed},
	{ "g_value_take_boxed",  cast(void**)& g_value_take_boxed},
	{ "g_value_set_boxed_take_ownership",  cast(void**)& g_value_set_boxed_take_ownership},
	{ "g_value_get_boxed",  cast(void**)& g_value_get_boxed},
	{ "g_value_dup_boxed",  cast(void**)& g_value_dup_boxed},
	{ "g_param_spec_pointer",  cast(void**)& g_param_spec_pointer},
	{ "g_value_set_pointer",  cast(void**)& g_value_set_pointer},
	{ "g_value_get_pointer",  cast(void**)& g_value_get_pointer},
	{ "g_param_spec_object",  cast(void**)& g_param_spec_object},
	{ "g_value_set_object",  cast(void**)& g_value_set_object},
	{ "g_value_take_object",  cast(void**)& g_value_take_object},
	{ "g_value_set_object_take_ownership",  cast(void**)& g_value_set_object_take_ownership},
	{ "g_value_get_object",  cast(void**)& g_value_get_object},
	{ "g_value_dup_object",  cast(void**)& g_value_dup_object},
	{ "g_param_spec_unichar",  cast(void**)& g_param_spec_unichar},
	{ "g_param_spec_value_array",  cast(void**)& g_param_spec_value_array},
	{ "g_param_spec_override",  cast(void**)& g_param_spec_override},
	{ "g_param_spec_gtype",  cast(void**)& g_param_spec_gtype},
	{ "g_value_get_gtype",  cast(void**)& g_value_get_gtype},
	{ "g_value_set_gtype",  cast(void**)& g_value_set_gtype},
	{ "g_param_spec_ref",  cast(void**)& g_param_spec_ref},
	{ "g_param_spec_unref",  cast(void**)& g_param_spec_unref},
	{ "g_param_spec_sink",  cast(void**)& g_param_spec_sink},
	{ "g_param_spec_ref_sink",  cast(void**)& g_param_spec_ref_sink},
	{ "g_param_value_set_default",  cast(void**)& g_param_value_set_default},
	{ "g_param_value_defaults",  cast(void**)& g_param_value_defaults},
	{ "g_param_value_validate",  cast(void**)& g_param_value_validate},
	{ "g_param_value_convert",  cast(void**)& g_param_value_convert},
	{ "g_param_values_cmp",  cast(void**)& g_param_values_cmp},
	{ "g_param_spec_get_name",  cast(void**)& g_param_spec_get_name},
	{ "g_param_spec_get_nick",  cast(void**)& g_param_spec_get_nick},
	{ "g_param_spec_get_blurb",  cast(void**)& g_param_spec_get_blurb},
	{ "g_param_spec_get_qdata",  cast(void**)& g_param_spec_get_qdata},
	{ "g_param_spec_set_qdata",  cast(void**)& g_param_spec_set_qdata},
	{ "g_param_spec_set_qdata_full",  cast(void**)& g_param_spec_set_qdata_full},
	{ "g_param_spec_steal_qdata",  cast(void**)& g_param_spec_steal_qdata},
	{ "g_param_spec_get_redirect_target",  cast(void**)& g_param_spec_get_redirect_target},
	{ "g_param_spec_internal",  cast(void**)& g_param_spec_internal},
	{ "g_param_type_register_static",  cast(void**)& g_param_type_register_static},
	{ "g_param_spec_pool_new",  cast(void**)& g_param_spec_pool_new},
	{ "g_param_spec_pool_insert",  cast(void**)& g_param_spec_pool_insert},
	{ "g_param_spec_pool_remove",  cast(void**)& g_param_spec_pool_remove},
	{ "g_param_spec_pool_lookup",  cast(void**)& g_param_spec_pool_lookup},
	{ "g_param_spec_pool_list",  cast(void**)& g_param_spec_pool_list},
	{ "g_param_spec_pool_list_owned",  cast(void**)& g_param_spec_pool_list_owned},
	{ "g_signal_new",  cast(void**)& g_signal_new},
	{ "g_signal_newv",  cast(void**)& g_signal_newv},
	{ "g_signal_new_valist",  cast(void**)& g_signal_new_valist},
	{ "g_signal_query",  cast(void**)& g_signal_query},
	{ "g_signal_lookup",  cast(void**)& g_signal_lookup},
	{ "g_signal_name",  cast(void**)& g_signal_name},
	{ "g_signal_list_ids",  cast(void**)& g_signal_list_ids},
	{ "g_signal_emit",  cast(void**)& g_signal_emit},
	{ "g_signal_emit_by_name",  cast(void**)& g_signal_emit_by_name},
	{ "g_signal_emitv",  cast(void**)& g_signal_emitv},
	{ "g_signal_emit_valist",  cast(void**)& g_signal_emit_valist},
	{ "g_signal_connect_object",  cast(void**)& g_signal_connect_object},
	{ "g_signal_connect_data",  cast(void**)& g_signal_connect_data},
	{ "g_signal_connect_closure",  cast(void**)& g_signal_connect_closure},
	{ "g_signal_connect_closure_by_id",  cast(void**)& g_signal_connect_closure_by_id},
	{ "g_signal_handler_block",  cast(void**)& g_signal_handler_block},
	{ "g_signal_handler_unblock",  cast(void**)& g_signal_handler_unblock},
	{ "g_signal_handler_disconnect",  cast(void**)& g_signal_handler_disconnect},
	{ "g_signal_handler_find",  cast(void**)& g_signal_handler_find},
	{ "g_signal_handlers_block_matched",  cast(void**)& g_signal_handlers_block_matched},
	{ "g_signal_handlers_unblock_matched",  cast(void**)& g_signal_handlers_unblock_matched},
	{ "g_signal_handlers_disconnect_matched",  cast(void**)& g_signal_handlers_disconnect_matched},
	{ "g_signal_handler_is_connected",  cast(void**)& g_signal_handler_is_connected},
	{ "g_signal_has_handler_pending",  cast(void**)& g_signal_has_handler_pending},
	{ "g_signal_stop_emission",  cast(void**)& g_signal_stop_emission},
	{ "g_signal_stop_emission_by_name",  cast(void**)& g_signal_stop_emission_by_name},
	{ "g_signal_override_class_closure",  cast(void**)& g_signal_override_class_closure},
	{ "g_signal_chain_from_overridden",  cast(void**)& g_signal_chain_from_overridden},
	{ "g_signal_add_emission_hook",  cast(void**)& g_signal_add_emission_hook},
	{ "g_signal_remove_emission_hook",  cast(void**)& g_signal_remove_emission_hook},
	{ "g_signal_parse_name",  cast(void**)& g_signal_parse_name},
	{ "g_signal_get_invocation_hint",  cast(void**)& g_signal_get_invocation_hint},
	{ "g_signal_type_cclosure_new",  cast(void**)& g_signal_type_cclosure_new},
	{ "g_signal_accumulator_true_handled",  cast(void**)& g_signal_accumulator_true_handled},
	{ "g_closure_new_object",  cast(void**)& g_closure_new_object},
	{ "g_closure_ref",  cast(void**)& g_closure_ref},
	{ "g_closure_sink",  cast(void**)& g_closure_sink},
	{ "g_closure_unref",  cast(void**)& g_closure_unref},
	{ "g_closure_invoke",  cast(void**)& g_closure_invoke},
	{ "g_closure_invalidate",  cast(void**)& g_closure_invalidate},
	{ "g_closure_add_finalize_notifier",  cast(void**)& g_closure_add_finalize_notifier},
	{ "g_closure_add_invalidate_notifier",  cast(void**)& g_closure_add_invalidate_notifier},
	{ "g_closure_remove_finalize_notifier",  cast(void**)& g_closure_remove_finalize_notifier},
	{ "g_closure_remove_invalidate_notifier",  cast(void**)& g_closure_remove_invalidate_notifier},
	{ "g_closure_new_simple",  cast(void**)& g_closure_new_simple},
	{ "g_closure_set_marshal",  cast(void**)& g_closure_set_marshal},
	{ "g_closure_add_marshal_guards",  cast(void**)& g_closure_add_marshal_guards},
	{ "g_closure_set_meta_marshal",  cast(void**)& g_closure_set_meta_marshal},
	{ "g_source_set_closure",  cast(void**)& g_source_set_closure},
	{ "g_cclosure_new",  cast(void**)& g_cclosure_new},
	{ "g_cclosure_new_swap",  cast(void**)& g_cclosure_new_swap},
	{ "g_cclosure_new_object",  cast(void**)& g_cclosure_new_object},
	{ "g_cclosure_new_object_swap",  cast(void**)& g_cclosure_new_object_swap},
	{ "g_cclosure_marshal_VOID__VOID",  cast(void**)& g_cclosure_marshal_VOID__VOID},
	{ "g_cclosure_marshal_VOID__BOOLEAN",  cast(void**)& g_cclosure_marshal_VOID__BOOLEAN},
	{ "g_cclosure_marshal_VOID__CHAR",  cast(void**)& g_cclosure_marshal_VOID__CHAR},
	{ "g_cclosure_marshal_VOID__UCHAR",  cast(void**)& g_cclosure_marshal_VOID__UCHAR},
	{ "g_cclosure_marshal_VOID__INT",  cast(void**)& g_cclosure_marshal_VOID__INT},
	{ "g_cclosure_marshal_VOID__UINT",  cast(void**)& g_cclosure_marshal_VOID__UINT},
	{ "g_cclosure_marshal_VOID__LONG",  cast(void**)& g_cclosure_marshal_VOID__LONG},
	{ "g_cclosure_marshal_VOID__ULONG",  cast(void**)& g_cclosure_marshal_VOID__ULONG},
	{ "g_cclosure_marshal_VOID__ENUM",  cast(void**)& g_cclosure_marshal_VOID__ENUM},
	{ "g_cclosure_marshal_VOID__FLAGS",  cast(void**)& g_cclosure_marshal_VOID__FLAGS},
	{ "g_cclosure_marshal_VOID__FLOAT",  cast(void**)& g_cclosure_marshal_VOID__FLOAT},
	{ "g_cclosure_marshal_VOID__DOUBLE",  cast(void**)& g_cclosure_marshal_VOID__DOUBLE},
	{ "g_cclosure_marshal_VOID__STRING",  cast(void**)& g_cclosure_marshal_VOID__STRING},
	{ "g_cclosure_marshal_VOID__PARAM",  cast(void**)& g_cclosure_marshal_VOID__PARAM},
	{ "g_cclosure_marshal_VOID__BOXED",  cast(void**)& g_cclosure_marshal_VOID__BOXED},
	{ "g_cclosure_marshal_VOID__POINTER",  cast(void**)& g_cclosure_marshal_VOID__POINTER},
	{ "g_cclosure_marshal_VOID__OBJECT",  cast(void**)& g_cclosure_marshal_VOID__OBJECT},
	{ "g_cclosure_marshal_STRING__OBJECT_POINTER",  cast(void**)& g_cclosure_marshal_STRING__OBJECT_POINTER},
	{ "g_cclosure_marshal_VOID__UINT_POINTER",  cast(void**)& g_cclosure_marshal_VOID__UINT_POINTER},
	{ "g_cclosure_marshal_BOOLEAN__FLAGS",  cast(void**)& g_cclosure_marshal_BOOLEAN__FLAGS},
	{ "g_value_array_get_nth",  cast(void**)& g_value_array_get_nth},
	{ "g_value_array_new",  cast(void**)& g_value_array_new},
	{ "g_value_array_copy",  cast(void**)& g_value_array_copy},
	{ "g_value_array_free",  cast(void**)& g_value_array_free},
	{ "g_value_array_append",  cast(void**)& g_value_array_append},
	{ "g_value_array_prepend",  cast(void**)& g_value_array_prepend},
	{ "g_value_array_insert",  cast(void**)& g_value_array_insert},
	{ "g_value_array_remove",  cast(void**)& g_value_array_remove},
	{ "g_value_array_sort",  cast(void**)& g_value_array_sort},
	{ "g_value_array_sort_with_data",  cast(void**)& g_value_array_sort_with_data},

];