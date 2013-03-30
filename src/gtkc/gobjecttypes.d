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

module gtkc.gobjecttypes;


public import gtkc.glibtypes;

alias void GTypeCValue;



// G_TYPE_*
enum GType : size_t
{
	INVALID = 0<<2,
	NONE = 1<<2,
	INTERFACE = 2<<2,
	CHAR = 3<<2,
	UCHAR = 4<<2,
	BOOLEAN = 5<<2,
	INT = 6<<2,
	UINT = 7<<2,
	LONG = 8<<2,
	ULONG = 9<<2,
	INT64 = 10<<2,
	UINT64 = 11<<2,
	ENUM = 12<<2,
	FLAGS = 13<<2,
	FLOAT = 14<<2,
	DOUBLE = 15<<2,
	STRING = 16<<2,
	POINTER = 17<<2,
	BOXED = 18<<2,
	PARAM = 19<<2,
	OBJECT = 20<<2,
	VARIANT = 21<<2,

}


/**
 * typedef gchar** GStrv;
 * A C representable type name for G_TYPE_STRV.
 * See Also
 * GParamSpecBoxed, g_param_spec_boxed()
 */
public alias char** GStrv;

/**
 * typedef gchar* gchararray;
 * A C representable type name for G_TYPE_STRING.
 */
public alias char* gchararray;

/**
 * typedef GClosureMarshal			 GSignalCMarshaller;
 * This is the signature of marshaller functions, required to marshall
 * arrays of parameter values to signal emissions into C language callback
 * invocations. It is merely an alias to GClosureMarshal since the GClosure
 * mechanism takes over responsibility of actual function invocation for the
 * signal system.
 */
public alias GClosureMarshal GSignalCMarshaller;

/**
 * typedef GVaClosureMarshal		 GSignalCVaMarshaller;
 * This is the signature of va_list marshaller functions, an optional
 * marshaller that can be used in some situations to avoid
 * marshalling the signal argument into GValues.
 */
public alias GVaClosureMarshal GSignalCVaMarshaller;
/**
 * Warning
 * GTypeDebugFlags has been deprecated since version 2.36 and should not be used in newly-written code. g_type_init() is now done automatically
 * These flags used to be passed to g_type_init_with_debug_flags() which
 * is now deprecated.
 * If you need to enable debugging features, use the GOBJECT_DEBUG
 * environment variable.
 * G_TYPE_DEBUG_NONE
 * Print no messages.
 * G_TYPE_DEBUG_OBJECTS
 * Print messages about object bookkeeping.
 * G_TYPE_DEBUG_SIGNALS
 * Print messages about signal emissions.
 * G_TYPE_DEBUG_MASK
 * Mask covering all debug flags.
 */
public enum GTypeDebugFlags
{
	NONE = 0,
	OBJECTS = 1 << 0,
	SIGNALS = 1 << 1,
	MASK = 0x03
}
alias GTypeDebugFlags TypeDebugFlags;

/**
 * Bit masks used to check or determine characteristics of a type.
 * G_TYPE_FLAG_ABSTRACT
 * Indicates an abstract type. No instances can be
 *  created for an abstract type.
 * G_TYPE_FLAG_VALUE_ABSTRACT
 * Indicates an abstract value type, i.e. a type
 *  that introduces a value table, but can't be used for
 *  g_value_init().
 */
public enum GTypeFlags
{
	ABSTRACT = (1 << 4),
	VALUE_ABSTRACT = (1 << 5)
}
alias GTypeFlags TypeFlags;

/**
 * Bit masks used to check or determine specific characteristics of a
 * fundamental type.
 * G_TYPE_FLAG_CLASSED
 * Indicates a classed type.
 * G_TYPE_FLAG_INSTANTIATABLE
 * Indicates an instantiable type (implies classed).
 * G_TYPE_FLAG_DERIVABLE
 * Indicates a flat derivable type.
 * G_TYPE_FLAG_DEEP_DERIVABLE
 * Indicates a deep derivable type (implies derivable).
 */
public enum GTypeFundamentalFlags
{
	FLAG_CLASSED = (1 << 0),
	FLAG_INSTANTIATABLE = (1 << 1),
	FLAG_DERIVABLE = (1 << 2),
	FLAG_DEEP_DERIVABLE = (1 << 3)
}
alias GTypeFundamentalFlags TypeFundamentalFlags;

/**
 * Through the GParamFlags flag values, certain aspects of parameters
 * can be configured.
 * G_PARAM_READABLE
 * the parameter is readable
 * G_PARAM_WRITABLE
 * the parameter is writable
 * G_PARAM_CONSTRUCT
 * the parameter will be set upon object construction
 * G_PARAM_CONSTRUCT_ONLY
 * the parameter will only be set upon object construction
 * G_PARAM_LAX_VALIDATION
 * upon parameter conversion (see g_param_value_convert())
 *  strict validation is not required
 * G_PARAM_STATIC_NAME
 * the string used as name when constructing the
 *  parameter is guaranteed to remain valid and
 *  unmodified for the lifetime of the parameter.
 *  Since 2.8
 * G_PARAM_PRIVATE
 * internal
 * G_PARAM_STATIC_NICK
 * the string used as nick when constructing the
 *  parameter is guaranteed to remain valid and
 *  unmmodified for the lifetime of the parameter.
 *  Since 2.8
 * G_PARAM_STATIC_BLURB
 * the string used as blurb when constructing the
 *  parameter is guaranteed to remain valid and
 *  unmodified for the lifetime of the parameter.
 *  Since 2.8
 * G_PARAM_DEPRECATED
 * the parameter is deprecated and will be removed
 *  in a future version. A warning will be generated if it is used
 *  while running with G_ENABLE_DIAGNOSTIC=1.
 *  Since 2.26
 */
public enum GParamFlags
{
	READABLE = 1 << 0,
	WRITABLE = 1 << 1,
	CONSTRUCT = 1 << 2,
	CONSTRUCT_ONLY = 1 << 3,
	LAX_VALIDATION = 1 << 4,
	STATIC_NAME = 1 << 5,
	PRIVATE = STATIC_NAME,
	STATIC_NICK = 1 << 6,
	STATIC_BLURB = 1 << 7,
	/+* User defined flags go up to 30 +/
	DEPRECATED = 1 << 31
}
alias GParamFlags ParamFlags;

/**
 * The signal flags are used to specify a signal's behaviour, the overall
 * signal description outlines how especially the RUN flags control the
 * stages of a signal emission.
 * G_SIGNAL_RUN_FIRST
 * Invoke the object method handler in the first emission stage.
 * G_SIGNAL_RUN_LAST
 * Invoke the object method handler in the third emission stage.
 * G_SIGNAL_RUN_CLEANUP
 * Invoke the object method handler in the last emission stage.
 * G_SIGNAL_NO_RECURSE
 * Signals being emitted for an object while currently being in
 *  emission for this very object will not be emitted recursively,
 *  but instead cause the first emission to be restarted.
 * G_SIGNAL_DETAILED
 * This signal supports "::detail" appendices to the signal name
 *  upon handler connections and emissions.
 * G_SIGNAL_ACTION
 * Action signals are signals that may freely be emitted on alive
 *  objects from user code via g_signal_emit() and friends, without
 *  the need of being embedded into extra code that performs pre or
 *  post emission adjustments on the object. They can also be thought
 *  of as object methods which can be called generically by
 *  third-party code.
 * G_SIGNAL_NO_HOOKS
 * No emissions hooks are supported for this signal.
 * G_SIGNAL_MUST_COLLECT
 * Varargs signal emission will always collect the
 *  arguments, even if there are no signal handlers connected. Since 2.30.
 * G_SIGNAL_DEPRECATED
 * The signal is deprecated and will be removed
 *  in a future version. A warning will be generated if it is connected while
 *  running with G_ENABLE_DIAGNOSTIC=1. Since 2.32.
 */
public enum GSignalFlags
{
	RUN_FIRST = 1 << 0,
	RUN_LAST = 1 << 1,
	RUN_CLEANUP = 1 << 2,
	NO_RECURSE = 1 << 3,
	DETAILED = 1 << 4,
	ACTION = 1 << 5,
	NO_HOOKS = 1 << 6,
	MUST_COLLECT = 1 << 7,
	DEPRECATED = 1 << 8
}
alias GSignalFlags SignalFlags;

/**
 * The match types specify what g_signal_handlers_block_matched(),
 * g_signal_handlers_unblock_matched() and g_signal_handlers_disconnect_matched()
 * match signals by.
 * G_SIGNAL_MATCH_ID
 * The signal id must be equal.
 * G_SIGNAL_MATCH_DETAIL
 * The signal detail be equal.
 * G_SIGNAL_MATCH_CLOSURE
 * The closure must be the same.
 * G_SIGNAL_MATCH_FUNC
 * The C closure callback must be the same.
 * G_SIGNAL_MATCH_DATA
 * The closure data must be the same.
 * G_SIGNAL_MATCH_UNBLOCKED
 * Only unblocked signals may matched.
 */
public enum GSignalMatchType
{
	ID = 1 << 0,
	DETAIL = 1 << 1,
	CLOSURE = 1 << 2,
	FUNC = 1 << 3,
	DATA = 1 << 4,
	UNBLOCKED = 1 << 5
}
alias GSignalMatchType SignalMatchType;

/**
 * The connection flags are used to specify the behaviour of a signal's
 * connection.
 * G_CONNECT_AFTER
 * whether the handler should be called before or after the
 *  default handler of the signal.
 * G_CONNECT_SWAPPED
 * whether the instance and data should be swapped when
 *  calling the handler.
 */
public enum GConnectFlags
{
	AFTER = 1 << 0,
	SWAPPED = 1 << 1
}
alias GConnectFlags ConnectFlags;

/**
 * Flags to be passed to g_object_bind_property() or
 * g_object_bind_property_full().
 * This enumeration can be extended at later date.
 * G_BINDING_DEFAULT
 * The default binding; if the source property
 *  changes, the target property is updated with its value.
 * G_BINDING_BIDIRECTIONAL
 * Bidirectional binding; if either the
 *  property of the source or the property of the target changes,
 *  the other is updated.
 * G_BINDING_SYNC_CREATE
 * Synchronize the values of the source and
 *  target properties when creating the binding; the direction of
 *  the synchronization is always from the source to the target.
 * G_BINDING_INVERT_BOOLEAN
 * If the two properties being bound are
 *  booleans, setting one to TRUE will result in the other being
 *  set to FALSE and vice versa. This flag will only work for
 *  boolean properties, and cannot be used when passing custom
 *  transformation functions to g_object_bind_property_full().
 * Since 2.26
 */
public enum GBindingFlags
{
	DEFAULT = 0,
	BIDIRECTIONAL = 1 << 0,
	SYNC_CREATE = 1 << 1,
	INVERT_BOOLEAN = 1 << 2
}
alias GBindingFlags BindingFlags;


/**
 * An opaque structure used as the base of all type instances.
 */
struct GTypeInstance
{
	/*< private >*/
	GTypeClass* gClass;
}

/**
 * An opaque structure used as the base of all classes.
 */
struct GTypeClass
{
	/*< private >*/
	GType gType;
}

/**
 * An opaque structure used as the base of all interface types.
 */
public struct GTypeInterface
{
	GType gType;         /* iface type */
	GType gInstanceType;
}

/**
 * The class structure for the GObject type.
 * Example4.Implementing singletons using a constructor
 * static MySingleton *the_singleton = NULL;
 * static GObject*
 * my_singleton_constructor (GType type,
 */
public struct GObjectClass
{
	GTypeClass gTypeClass;
	/*< private >*/
	GSList* constructProperties;
	/* seldomly overidden */
	extern(C) GObject*  function(GType type,uint nConstructProperties,GObjectConstructParam *constructProperties) constructor;
	/* overridable methods */
	extern(C) void  function(GObject *object,uint propertyId,GValue *value,GParamSpec *pspec) setProperty;
	extern(C) void  function(GObject *object,uint propertyId,GValue *value,GParamSpec *pspec) getProperty;
	extern(C) void  function(GObject *object) dispose;
	extern(C) void  function(GObject *object) finalize;
	/* seldomly overidden */
	extern(C) void  function(GObject *object,uint nPspecs,GParamSpec **pspecs) dispatchPropertiesChanged;
	/* signals */
	extern(C) void  function(GObject *object,GParamSpec *pspec) notify;
	/* called when done constructing */
	extern(C) void  function(GObject *object) constructed;
	/* padding */
	gpointer dummy[7];
}

/**
 * Main Gtk struct.
 * All the fields in the GObject structure are private
 * to the GObject implementation and should never be accessed directly.
 */
public struct GObject
{
	GTypeInstance  gTypeInstance;
	
	/*< private >*/
	uint refCount;
	GData* qdata;
}

struct GValue
{
	version(Windows)
	{
		GType		g_type;
		union Data
		{
			gint     v_int;
			guint    v_uint;
			glong    v_long;
			gulong   v_ulong;
			gint64   v_int64;
			guint64  v_uint64;
			gfloat   v_float;
			gdouble  v_double;
			gpointer v_pointer;
		};
	}
	else
	{
		align(4)
		{
			GType		g_type;
			union Data
			{
				gint     v_int;
				guint    v_uint;
				glong    v_long;
				gulong   v_ulong;
				gint64   v_int64;
				guint64  v_uint64;
				gfloat   v_float;
				gdouble  v_double;
				gpointer v_pointer;
			};
		}
	}
	Data data1;
	Data data2;
}

/**
 * This structure is used to provide the type system with the information
 * required to initialize and destruct (finalize) a type's class and
 * its instances.
 * The initialized structure is passed to the g_type_register_static() function
 * (or is copied into the provided GTypeInfo structure in the
 * g_type_plugin_complete_type_info()). The type system will perform a deep
 * copy of this structure, so its memory does not need to be persistent
 * across invocation of g_type_register_static().
 * guint16 class_size;
 * Size of the class structure (required for interface, classed and instantiatable types).
 * GBaseInitFunc base_init;
 * Location of the base initialization function (optional).
 * GBaseFinalizeFunc base_finalize;
 * Location of the base finalization function (optional).
 * GClassInitFunc class_init;
 * Location of the class initialization function for
 * classed and instantiatable types. Location of the default vtable
 * inititalization function for interface types. (optional) This function
 * is used both to fill in virtual functions in the class or default vtable,
 * and to do type-specific setup such as registering signals and object
 * properties.
 * GClassFinalizeFunc class_finalize;
 * Location of the class finalization function for
 * classed and instantiatable types. Location fo the default vtable
 * finalization function for interface types. (optional)
 * gconstpointer class_data;
 * User-supplied data passed to the class init/finalize functions.
 * guint16 instance_size;
 * Size of the instance (object) structure (required for instantiatable types only).
 * guint16 n_preallocs;
 * Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the slice allocator now.
 * GInstanceInitFunc instance_init;
 * Location of the instance initialization function (optional, for instantiatable types only).
 * const GTypeValueTable *value_table;
 * A GTypeValueTable function table for generic handling of GValues of this type (usually only
 * useful for fundamental types).
 */
public struct GTypeInfo
{
	/+* iface types, classed types, instantiated types +/
	ushort classSize;
	GBaseInitFunc baseInit;
	GBaseFinalizeFunc baseFinalize;
	/+* iface types, classed types, instantiated types +/
	GClassInitFunc classInit;
	GClassFinalizeFunc classFinalize;
	void* classData;
	/+* instantiated types +/
	ushort instanceSize;
	ushort nPreallocs;
	GInstanceInitFunc instanceInit;
	/+* value handling +/
	GTypeValueTable *valueTable;
}


/**
 * A structure that provides information to the type system which is
 * used specifically for managing fundamental types.
 * GTypeFundamentalFlags type_flags;
 * GTypeFundamentalFlags describing the characteristics of the fundamental type
 */
public struct GTypeFundamentalInfo
{
	GTypeFundamentalFlags typeFlags;
}


/**
 * A structure that provides information to the type system which is
 * used specifically for managing interface types.
 * GInterfaceInitFunc interface_init;
 * location of the interface initialization function
 * GInterfaceFinalizeFunc interface_finalize;
 * location of the interface finalization function
 * gpointer interface_data;
 * user-supplied data passed to the interface init/finalize functions
 */
public struct GInterfaceInfo
{
	GInterfaceInitFunc interfaceInit;
	GInterfaceFinalizeFunc interfaceFinalize;
	void* interfaceData;
}


/**
 * value_init ()
 * Default initialize values contents by poking values
 * directly into the value->data array. The data array of
 * the GValue passed into this function was zero-filled
 * with memset(), so no care has to
 * be taken to free any
 * old contents. E.g. for the implementation of a string
 * value that may never be NULL, the implementation might
 * look like:
 * $(DDOC_COMMENT example)
 * value_free ()
 * Free any old contents that might be left in the
 * data array of the passed in value. No resources may
 * remain allocated through the GValue contents after
 * this function returns. E.g. for our above string type:
 * $(DDOC_COMMENT example)
 * value_copy ()
 * dest_value is a GValue with zero-filled data section
 * and src_value is a properly setup GValue of same or
 * derived type.
 * The purpose of this function is to copy the contents of
 * src_value into dest_value in a way, that even after
 * src_value has been freed, the contents of dest_value
 * remain valid. String type example:
 * $(DDOC_COMMENT example)
 * value_peek_pointer ()
 * If the value contents fit into a pointer, such as objects
 * or strings, return this pointer, so the caller can peek at
 * the current contents. To extend on our above string example:
 * $(DDOC_COMMENT example)
 * const gchar *collect_format;
 * A string format describing how to collect the contents of
 * this value bit-by-bit. Each character in the format represents
 * an argument to be collected, and the characters themselves indicate
 * the type of the argument. Currently supported arguments are:
 * 'i' - Integers. passed as collect_values[].v_int.
 * 'l' - Longs. passed as collect_values[].v_long.
 * 'd' - Doubles. passed as collect_values[].v_double.
 * 'p' - Pointers. passed as collect_values[].v_pointer.
 * It should be noted that for variable argument list construction,
 * ANSI C promotes every type smaller than an integer to an int, and
 * floats to doubles. So for collection of short int or char, 'i'
 * needs to be used, and for collection of floats 'd'.
 * collect_value ()
 * The collect_value() function is responsible for converting the
 * values collected from a variable argument list into contents
 * suitable for storage in a GValue. This function should setup
 * value similar to value_init(); e.g. for a string value that
 * does not allow NULL pointers, it needs to either spew an error,
 * or do an implicit conversion by storing an empty string.
 * The value passed in to this function has a zero-filled data
 * array, so just like for value_init() it is guaranteed to not
 * contain any old contents that might need freeing.
 * n_collect_values is exactly the string length of collect_format,
 * and collect_values is an array of unions GTypeCValue with
 * length n_collect_values, containing the collected values
 * according to collect_format.
 * collect_flags is an argument provided as a hint by the caller.
 * It may contain the flag G_VALUE_NOCOPY_CONTENTS indicating,
 * that the collected value contents may be considered "static"
 * for the duration of the value lifetime.
 * Thus an extra copy of the contents stored in collect_values is
 * not required for assignment to value.
 * For our above string example, we continue with:
 * $(DDOC_COMMENT example)
 * It should be noted, that it is generally a bad idea to follow the
 * G_VALUE_NOCOPY_CONTENTS hint for reference counted types. Due to
 * reentrancy requirements and reference count assertions performed
 * by the signal emission code, reference counts should always be
 * incremented for reference counted contents stored in the value->data
 * array. To deviate from our string example for a moment, and taking
 * a look at an exemplary implementation for collect_value() of
 * GObject:
 * $(DDOC_COMMENT example)
 * The reference count for valid objects is always incremented,
 * regardless of collect_flags. For invalid objects, the example
 * const gchar *lcopy_format;
 * lcopy_value ()
 */
public struct GTypeValueTable
{
	extern(C) void function(GValue* value) valueInit;
	extern(C) void function(GValue* value) valueFree;
	extern(C) void function(GValue* srcValue, GValue* destValue) valueCopy;
	/+* varargs functionality (optional) +/
	extern(C) void* function(GValue* value) valuePeekPointer;
	char *collectFormat;
	extern(C) char* function(GValue* value, uint nCollectValues, GTypeCValue* collectValues, uint collectFlags) collectValue;
	char *lcopyFormat;
	extern(C) char* function(GValue* value, uint nCollectValues, GTypeCValue* collectValues, uint collectFlags) lcopyValue;
}


/**
 * A structure holding information for a specific type. It is
 * filled in by the g_type_query() function.
 * GType type;
 * the GType value of the type.
 * const gchar *type_name;
 * the name of the type.
 * guint class_size;
 * the size of the class structure.
 * guint instance_size;
 * the size of the instance structure.
 */
public struct GTypeQuery
{
	GType type;
	char *typeName;
	uint classSize;
	uint instanceSize;
}


/**
 * Main Gtk struct.
 * The GTypePlugin typedef is used as a placeholder
 * for objects that implement the GTypePlugin
 * interface.
 */
public struct GTypePlugin{}


/**
 * The GTypePlugin interface is used by the type system in order to handle
 * the lifecycle of dynamically loaded types.
 * GTypePluginUse use_plugin;
 * Increases the use count of the plugin.
 * GTypePluginUnuse unuse_plugin;
 * Decreases the use count of the plugin.
 * GTypePluginCompleteTypeInfo complete_type_info;
 * Fills in the GTypeInfo and
 * GTypeValueTable structs for the type. The structs are initialized
 * with memset(s, 0, sizeof (s)) before calling
 * this function.
 * GTypePluginCompleteInterfaceInfo complete_interface_info;
 * Fills in missing parts of the GInterfaceInfo
 * for the interface. The structs is initialized with
 * memset(s, 0, sizeof (s)) before calling
 * this function.
 */
public struct GTypePluginClass
{
	GTypePluginUse usePlugin;
	GTypePluginUnuse unusePlugin;
	GTypePluginCompleteTypeInfo completeTypeInfo;
	GTypePluginCompleteInterfaceInfo completeInterfaceInfo;
}


/**
 * Main Gtk struct.
 * The members of the GTypeModule structure should not
 * be accessed directly, except for the name field.
 * gchar *name;
 * the name of the module
 */
public struct GTypeModule
{
	char *name;
}


/**
 * In order to implement dynamic loading of types based on GTypeModule,
 * the load and unload functions in GTypeModuleClass must be implemented.
 * GObjectClass parent_class;
 * the parent class
 * load ()
 * loads the module and registers one or more types using
 * g_type_module_register_type().
 * unload ()
 * unloads the module
 */
public struct GTypeModuleClass
{
	GObjectClass parentClass;
	extern(C) int function(GTypeModule* modul)  load;
	extern(C) void function(GTypeModule* modul)  unload;
}


/**
 * The GObjectConstructParam struct is an auxiliary
 * structure used to hand GParamSpec/GValue pairs to the constructor of
 * a GObjectClass.
 * GParamSpec *pspec;
 * the GParamSpec of the construct parameter
 * GValue *value;
 * the value to set the parameter to
 */
public struct GObjectConstructParam
{
	GParamSpec *pspec;
	GValue *value;
}


/**
 * The GParameter struct is an auxiliary structure used
 * to hand parameter name/value pairs to g_object_newv().
 * const gchar *name;
 * the parameter name
 * GValue value;
 * the parameter value
 */
public struct GParameter
{
	char *name;
	GValue value;
}


/**
 * All the fields in the GInitiallyUnowned structure
 * are private to the GInitiallyUnowned implementation and should never be
 * accessed directly.
 */
public struct GInitiallyUnowned{}


/**
 * The class structure for the GInitiallyUnowned type.
 */
public struct GInitiallyUnownedClass{}


/**
 * A structure containing a weak reference to a GObject. It can either
 * be empty (i.e. point to NULL), or point to an object for as long as
 * at least one "strong" reference to that object exists. Before the
 * object's GObjectClass.dispose method is called, every GWeakRef
 * associated with becomes empty (i.e. points to NULL).
 * Like GValue, GWeakRef can be statically allocated, stack- or
 * heap-allocated, or embedded in larger structures.
 * Unlike g_object_weak_ref() and g_object_add_weak_pointer(), this weak
 * reference is thread-safe: converting a weak pointer to a reference is
 * atomic with respect to invalidation of weak pointers to destroyed
 * objects.
 * If the object's GObjectClass.dispose method results in additional
 * references to the object being held, any GWeakRefs taken
 * before it was disposed will continue to point to NULL. If
 * GWeakRefs are taken after the object is disposed and
 * re-referenced, they will continue to point to it until its refcount
 * goes back to zero, at which point they too will be invalidated.
 */
public struct GWeakRef{}


/**
 * The class of an enumeration type holds information about its
 * possible values.
 * GTypeClass g_type_class;
 * the parent class
 * gint minimum;
 * the smallest possible value.
 * gint maximum;
 * the largest possible value.
 * guint n_values;
 * the number of possible values.
 * GEnumValue *values;
 * an array of GEnumValue structs describing the
 * individual values.
 */
public struct GEnumClass
{
	GTypeClass gTypeClass;
	int minimum;
	int maximum;
	uint nValues;
	GEnumValue *values;
}


/**
 * The class of a flags type holds information about its
 * possible values.
 * GTypeClass g_type_class;
 * the parent class
 * guint mask;
 * a mask covering all possible values.
 * guint n_values;
 * the number of possible values.
 * GFlagsValue *values;
 * an array of GFlagsValue structs describing the
 * individual values.
 */
public struct GFlagsClass
{
	GTypeClass gTypeClass;
	uint mask;
	uint nValues;
	GFlagsValue *values;
}


/**
 * Main Gtk struct.
 * A structure which contains a single enum value, its name, and its
 * nickname.
 * gint value;
 * the enum value
 * const gchar *value_name;
 * the name of the value
 * const gchar *value_nick;
 * the nickname of the value
 */
public struct GEnumValue
{
	int value;
	char *valueName;
	char *valueNick;
}


/**
 * A structure which contains a single flags value, its name, and its
 * nickname.
 * guint value;
 * the flags value
 * const gchar *value_name;
 * the name of the value
 * const gchar *value_nick;
 * the nickname of the value
 */
public struct GFlagsValue
{
	uint value;
	char *valueName;
	char *valueNick;
}


/**
 * A GParamSpec derived structure that contains the meta data for boolean properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * gboolean default_value;
 * default value for the property specified
 */
public struct GParamSpecBoolean
{
	GParamSpec parentInstance;
	int defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for character properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * gint8 minimum;
 * minimum value for the property specified
 * gint8 maximum;
 * maximum value for the property specified
 * gint8 default_value;
 * default value for the property specified
 */
public struct GParamSpecChar
{
	GParamSpec parentInstance;
	byte minimum;
	byte maximum;
	byte defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for unsigned character properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * guint8 minimum;
 * minimum value for the property specified
 * guint8 maximum;
 * maximum value for the property specified
 * guint8 default_value;
 * default value for the property specified
 */
public struct GParamSpecUChar
{
	GParamSpec parentInstance;
	ubyte minimum;
	ubyte maximum;
	ubyte defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for integer properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * gint minimum;
 * minimum value for the property specified
 * gint maximum;
 * maximum value for the property specified
 * gint default_value;
 * default value for the property specified
 */
public struct GParamSpecInt
{
	GParamSpec parentInstance;
	int minimum;
	int maximum;
	int defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for unsigned integer properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * guint minimum;
 * minimum value for the property specified
 * guint maximum;
 * maximum value for the property specified
 * guint default_value;
 * default value for the property specified
 */
public struct GParamSpecUInt
{
	GParamSpec parentInstance;
	uint minimum;
	uint maximum;
	uint defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for long integer properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * glong minimum;
 * minimum value for the property specified
 * glong maximum;
 * maximum value for the property specified
 * glong default_value;
 * default value for the property specified
 */
public struct GParamSpecLong
{
	GParamSpec parentInstance;
	glong minimum;
	glong maximum;
	glong defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for unsigned long integer properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * gulong minimum;
 * minimum value for the property specified
 * gulong maximum;
 * maximum value for the property specified
 * gulong default_value;
 * default value for the property specified
 */
public struct GParamSpecULong
{
	GParamSpec parentInstance;
	gulong minimum;
	gulong maximum;
	gulong defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for 64bit integer properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * gint64 minimum;
 * minimum value for the property specified
 * gint64 maximum;
 * maximum value for the property specified
 * gint64 default_value;
 * default value for the property specified
 */
public struct GParamSpecInt64
{
	GParamSpec parentInstance;
	long minimum;
	long maximum;
	long defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for unsigned 64bit integer properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * guint64 minimum;
 * minimum value for the property specified
 * guint64 maximum;
 * maximum value for the property specified
 * guint64 default_value;
 * default value for the property specified
 */
public struct GParamSpecUInt64
{
	GParamSpec parentInstance;
	ulong minimum;
	ulong maximum;
	ulong defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for float properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * gfloat minimum;
 * minimum value for the property specified
 * gfloat maximum;
 * maximum value for the property specified
 * gfloat default_value;
 * default value for the property specified
 * gfloat epsilon;
 * values closer than epsilon will be considered identical
 * by g_param_values_cmp(); the default value is 1e-30.
 */
public struct GParamSpecFloat
{
	GParamSpec parentInstance;
	float minimum;
	float maximum;
	float defaultValue;
	float epsilon;
}


/**
 * A GParamSpec derived structure that contains the meta data for double properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * gdouble minimum;
 * minimum value for the property specified
 * gdouble maximum;
 * maximum value for the property specified
 * gdouble default_value;
 * default value for the property specified
 * gdouble epsilon;
 * values closer than epsilon will be considered identical
 * by g_param_values_cmp(); the default value is 1e-90.
 */
public struct GParamSpecDouble
{
	GParamSpec parentInstance;
	double minimum;
	double maximum;
	double defaultValue;
	double epsilon;
}


/**
 * A GParamSpec derived structure that contains the meta data for enum
 * properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * GEnumClass *enum_class;
 * the GEnumClass for the enum
 * gint default_value;
 * default value for the property specified
 */
public struct GParamSpecEnum
{
	GParamSpec parentInstance;
	GEnumClass *enumClass;
	int defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for flags
 * properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * GFlagsClass *flags_class;
 * the GFlagsClass for the flags
 * guint default_value;
 * default value for the property specified
 */
public struct GParamSpecFlags
{
	GParamSpec parentInstance;
	GFlagsClass *flagsClass;
	uint defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for string
 * properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * gchar *default_value;
 * default value for the property specified
 * gchar *cset_first;
 * a string containing the allowed values for the first byte
 * gchar *cset_nth;
 * a string containing the allowed values for the subsequent bytes
 * gchar substitutor;
 * the replacement byte for bytes which don't match cset_first or cset_nth.
 * guint null_fold_if_empty : 1;
 * replace empty string by NULL
 * guint ensure_non_null : 1;
 * replace NULL strings by an empty string
 */
public struct GParamSpecString
{
	GParamSpec parentInstance;
	char *defaultValue;
	char *csetFirst;
	char *csetNth;
	char substitutor;
	uint bitfield0;
	//uint nullFoldIfEmpty : 1;
	//uint ensureNonNull : 1;
}


/**
 * A GParamSpec derived structure that contains the meta data for G_TYPE_PARAM
 * properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 */
public struct GParamSpecParam
{
	GParamSpec parentInstance;
}


/**
 * A GParamSpec derived structure that contains the meta data for boxed properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 */
public struct GParamSpecBoxed
{
	GParamSpec parentInstance;
}


/**
 * A GParamSpec derived structure that contains the meta data for pointer properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 */
public struct GParamSpecPointer
{
	GParamSpec parentInstance;
}


/**
 * A GParamSpec derived structure that contains the meta data for object properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 */
public struct GParamSpecObject
{
	GParamSpec parentInstance;
}


/**
 * A GParamSpec derived structure that contains the meta data for unichar (unsigned integer) properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * gunichar default_value;
 * default value for the property specified
 */
public struct GParamSpecUnichar
{
	GParamSpec parentInstance;
	gunichar defaultValue;
}


/**
 * A GParamSpec derived structure that contains the meta data for GValueArray properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * GParamSpec *element_spec;
 * a GParamSpec describing the elements contained in arrays of this property, may be NULL
 * guint fixed_n_elements;
 * if greater than 0, arrays of this property will always have this many elements
 */
public struct GParamSpecValueArray
{
	GParamSpec parentInstance;
	GParamSpec *elementSpec;
	uint fixedNElements;
}


/**
 * This is a type of GParamSpec type that simply redirects operations to
 * another paramspec. All operations other than getting or
 * setting the value are redirected, including accessing the nick and
 * blurb, validating a value, and so forth. See
 * g_param_spec_get_redirect_target() for retrieving the overidden
 * property. GParamSpecOverride is used in implementing
 * g_object_class_override_property(), and will not be directly useful
 * unless you are implementing a new base type similar to GObject.
 * Since 2.4
 */
public struct GParamSpecOverride{}


/**
 * A GParamSpec derived structure that contains the meta data for GType properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * GType is_a_type;
 * a GType whose subtypes can occur as values
 * Since 2.10
 */
public struct GParamSpecGType
{
	GParamSpec parentInstance;
	GType isAType;
}


/**
 * A GParamSpec derived structure that contains the meta data for GVariant properties.
 * GParamSpec parent_instance;
 * private GParamSpec portion
 * GVariantType *type;
 * a GVariantType, or NULL
 * GVariant *default_value;
 * a GVariant, or NULL
 * Since 2.26
 */
public struct GParamSpecVariant
{
	GParamSpec parentInstance;
	GVariantType *type;
	GVariant *defaultValue;
}


/**
 * Main Gtk struct.
 * All other fields of the GParamSpec struct are private and
 * should not be used directly.
 * GTypeInstance g_type_instance;
 * private GTypeInstance portion
 * const gchar *name;
 * name of this parameter: always an interned string
 * GParamFlags flags;
 * GParamFlags flags for this parameter
 * GType value_type;
 * the GValue type for this parameter
 * GType owner_type;
 * GType type that uses (introduces) this parameter
 */
public struct GParamSpec
{
	GTypeInstance gTypeInstance;
	char *name; /+* interned string +/
	GParamFlags flags;
	GType valueType;
	GType ownerType; /+* class or iface using this property +/
}


/**
 * The class structure for the GParamSpec type.
 * Normally, GParamSpec classes are filled by
 * g_param_type_register_static().
 * GTypeClass g_type_class;
 * the parent class
 * GType value_type;
 * the GValue type for this parameter
 * finalize ()
 * The instance finalization function (optional), should chain
 * up to the finalize method of the parent class.
 * value_set_default ()
 * Resets a value to the default value for this type
 * (recommended, the default is g_value_reset()), see
 * g_param_value_set_default().
 * value_validate ()
 * Ensures that the contents of value comply with the
 * specifications set out by this type (optional), see
 * g_param_value_validate().
 * values_cmp ()
 * Compares value1 with value2 according to this type
 * (recommended, the default is memcmp()), see g_param_values_cmp().
 */
public struct GParamSpecClass
{
	GTypeClass gTypeClass;
	GType valueType;
	extern(C) void function(GParamSpec* pspec) finalize;
	/+* GParam methods +/
	extern(C) void function(GParamSpec* pspec, GValue* value) valueSetDefault;
	extern(C) int function(GParamSpec* pspec, GValue* value) valueValidate;
	extern(C) int function(GParamSpec* pspec, GValue* value1, GValue* value2) valuesCmp;
}


/**
 * This structure is used to provide the type system with the information
 * required to initialize and destruct (finalize) a parameter's class and
 * instances thereof.
 * The initialized structure is passed to the g_param_type_register_static()
 * The type system will perform a deep copy of this structure, so its memory
 * does not need to be persistent across invocation of
 * g_param_type_register_static().
 * guint16 instance_size;
 * Size of the instance (object) structure.
 * guint16 n_preallocs;
 * Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the slice allocator now.
 * instance_init ()
 * Location of the instance initialization function (optional).
 * GType value_type;
 * The GType of values conforming to this GParamSpec
 * finalize ()
 * The instance finalization function (optional).
 * value_set_default ()
 * Resets a value to the default value for pspec
 * (recommended, the default is g_value_reset()), see
 * g_param_value_set_default().
 * value_validate ()
 * Ensures that the contents of value comply with the
 * specifications set out by pspec (optional), see
 * g_param_value_validate().
 * values_cmp ()
 * Compares value1 with value2 according to pspec
 * (recommended, the default is memcmp()), see g_param_values_cmp().
 */
public struct GParamSpecTypeInfo
{
	/+* type system portion +/
	ushort instanceSize; /+* obligatory +/
	ushort nPreallocs; /+* optional +/
	extern(C) void function(GParamSpec* pspec) instanceInit; /+* optional +/
	/+* class portion +/
	GType valueType; /+* obligatory +/
	extern(C) void function(GParamSpec* pspec) finalize; /+* optional +/
	extern(C) void function(GParamSpec* pspec, /+* recommended +/GValue *value) valueSetDefault;
	extern(C) int function(GParamSpec* pspec, /+* optional +/GValue *value) valueValidate;
	extern(C) int function(GParamSpec* pspec, /+* recommended +/GValue *value1, GValue* value2) valuesCmp;
}


/**
 * A GParamSpecPool maintains a collection of GParamSpecs which can be
 * quickly accessed by owner and name. The implementation of the GObject property
 * system uses such a pool to store the GParamSpecs of the properties all object
 * types.
 */
public struct GParamSpecPool{}


/**
 * The GSignalInvocationHint structure is used to pass on additional information
 * to callbacks during a signal emission.
 * guint signal_id;
 * The signal id of the signal invoking the callback
 * GQuark detail;
 * The detail passed on for this emission
 * GSignalFlags run_type;
 * The stage the signal emission is currently in, this
 * field will contain one of G_SIGNAL_RUN_FIRST,
 * G_SIGNAL_RUN_LAST or G_SIGNAL_RUN_CLEANUP.
 */
public struct GSignalInvocationHint
{
	uint signalId;
	GQuark detail;
	GSignalFlags runType;
}


/**
 * A structure holding in-depth information for a specific signal. It is
 * filled in by the g_signal_query() function.
 * guint signal_id;
 * The signal id of the signal being queried, or 0 if the
 * signal to be queried was unknown.
 * const gchar *signal_name;
 * The signal name.
 * GType itype;
 * The interface/instance type that this signal can be emitted for.
 * GSignalFlags signal_flags;
 * The signal flags as passed in to g_signal_new().
 * GType return_type;
 * The return type for user callbacks.
 * guint n_params;
 * The number of parameters that user callbacks take.
 * const GType *param_types;
 * The individual parameter types for
 * user callbacks, note that the effective callback signature is:
 * @return_type callback (gpointer data1,
 * [param_types param_names,]
 * gpointer data2);
 * . [array length=n_params]
 */
public struct GSignalQuery
{
	uint signalId;
	char *signalName;
	GType itype;
	GSignalFlags signalFlags;
	GType returnType; /+* mangled with G_SIGNAL_TYPE_STATIC_SCOPE flag +/
	uint nParams;
	GType *paramTypes; /+* mangled with G_SIGNAL_TYPE_STATIC_SCOPE flag +/
}


/**
 * Main Gtk struct.
 * A GClosure represents a callback supplied by the programmer.
 * volatile 	guint in_marshal : 1;
 * Indicates whether the closure is currently being invoked with
 * g_closure_invoke()
 * volatile 	guint is_invalid : 1;
 * Indicates whether the closure has been invalidated by
 * g_closure_invalidate()
 */
public struct GClosure
{
	uint bitfield0;
	//uint inMarshal : 1;
	//uint isInvalid : 1;
}


/**
 * A GCClosure is a specialization of GClosure for C function callbacks.
 * GClosure closure;
 * the GClosure
 * gpointer callback;
 * the callback function
 */
public struct GCClosure
{
	GClosure closure;
	void* callback;
}


/**
 * Main Gtk struct.
 * A GValueArray contains an array of GValue elements.
 * guint n_values;
 * number of values contained in the array
 * GValue *values;
 * array of values
 */
public struct GValueArray
{
	uint nValues;
	GValue *values;
}


/**
 * Main Gtk struct.
 * GBinding is an opaque structure whose members
 * cannot be accessed directly.
 * Since 2.26
 */
public struct GBinding{}


/*
 * The fundamental type which is the ancestor of type.
 * Fundamental types are types that serve as ultimate bases for the derived types,
 * thus they are the roots of distinct inheritance hierarchies.
 * type :
 * A GType value.
 */
// TODO
// #define G_TYPE_FUNDAMENTAL(type) (g_type_fundamental (type))

/*
 * Get the type ID for the fundamental type number x.
 * Use g_type_fundamental_next() instead of this macro to create new fundamental
 * types.
 * x :
 * the fundamental type number.
 * Returns :
 * the GType
 */
// TODO
// #define G_TYPE_MAKE_FUNDAMENTAL(x) ((GType) ((x) << G_TYPE_FUNDAMENTAL_SHIFT))

/*
 * Checks if type is an abstract type. An abstract type cannot be
 * instantiated and is normally used as an abstract base class for
 * derived classes.
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_IS_ABSTRACT(type) (g_type_test_flags ((type), G_TYPE_FLAG_ABSTRACT))

/*
 * Checks if type is derived (or in object-oriented terminology:
 * inherited) from another type (this holds true for all non-fundamental
 * types).
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_IS_DERIVED(type) ((type) > G_TYPE_FUNDAMENTAL_MAX)

/*
 * Checks if type is a fundamental type.
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_IS_FUNDAMENTAL(type) ((type) <= G_TYPE_FUNDAMENTAL_MAX)

/*
 * Checks if type is a value type and can be used with g_value_init().
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_IS_VALUE_TYPE(type) (g_type_check_is_value_type (type))

/*
 * Checks if type has a GTypeValueTable.
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_HAS_VALUE_TABLE(type) (g_type_value_table_peek (type) != NULL)

/*
 * Checks if type is a classed type.
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_IS_CLASSED(type) (g_type_test_flags ((type), G_TYPE_FLAG_CLASSED))

/*
 * Checks if type can be instantiated. Instantiation is the
 * process of creating an instance (object) of this type.
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_IS_INSTANTIATABLE(type) (g_type_test_flags ((type), G_TYPE_FLAG_INSTANTIATABLE))

/*
 * Checks if type is a derivable type. A derivable type can
 * be used as the base class of a flat (single-level) class hierarchy.
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_IS_DERIVABLE(type) (g_type_test_flags ((type), G_TYPE_FLAG_DERIVABLE))

/*
 * Checks if type is a deep derivable type. A deep derivable type
 * can be used as the base class of a deep (multi-level) class hierarchy.
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_IS_DEEP_DERIVABLE(type) (g_type_test_flags ((type), G_TYPE_FLAG_DEEP_DERIVABLE))

/*
 * Checks if type is an interface type.
 * An interface type provides a pure API, the implementation
 * of which is provided by another type (which is then said to conform
 * to the interface). GLib interfaces are somewhat analogous to Java
 * interfaces and C++ classes containing only pure virtual functions,
 * with the difference that GType interfaces are not derivable (but see
 * g_type_interface_add_prerequisite() for an alternative).
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_IS_INTERFACE(type) (G_TYPE_FUNDAMENTAL (type) == G_TYPE_INTERFACE)

/*
 * Get the type identifier from a given instance structure.
 * This macro should only be used in type implementations.
 * instance :
 * Location of a valid GTypeInstance structure.
 * Returns :
 * the GType
 */
// TODO
// #define G_TYPE_FROM_INSTANCE(instance) (G_TYPE_FROM_CLASS (((GTypeInstance*) (instance))->g_class))

/*
 * Get the type identifier from a given class structure.
 * This macro should only be used in type implementations.
 * g_class :
 * Location of a valid GTypeClass structure.
 * Returns :
 * the GType
 */
// TODO
// #define G_TYPE_FROM_CLASS(g_class) (((GTypeClass*) (g_class))->g_type)

/*
 * Get the type identifier from a given interface structure.
 * This macro should only be used in type implementations.
 * g_iface :
 * Location of a valid GTypeInterface structure.
 * Returns :
 * the GType
 */
// TODO
// #define G_TYPE_FROM_INTERFACE(g_iface) (((GTypeInterface*) (g_iface))->g_type)

/*
 * Get the class structure of a given instance, casted
 * to a specified ancestor type g_type of the instance.
 * Note that while calling a GInstanceInitFunc(), the class pointer gets
 * modified, so it might not always return the expected pointer.
 * This macro should only be used in type implementations.
 * instance :
 * Location of the GTypeInstance structure.
 * g_type :
 * The GType of the class to be returned.
 * c_type :
 * The C type of the class structure.
 * Returns :
 * a pointer to the class structure
 */
// TODO
// #define G_TYPE_INSTANCE_GET_CLASS(instance, g_type, c_type) (_G_TYPE_IGC ((instance), (g_type), c_type))

/*
 * Get the interface structure for interface g_type of a given instance.
 * This macro should only be used in type implementations.
 * instance :
 * Location of the GTypeInstance structure.
 * g_type :
 * The GType of the interface to be returned.
 * c_type :
 * The C type of the interface structure.
 * Returns :
 * a pointer to the interface structure
 */
// TODO
// #define G_TYPE_INSTANCE_GET_INTERFACE(instance, g_type, c_type) (_G_TYPE_IGI ((instance), (g_type), c_type))

/*
 * Gets the private structure for a particular type.
 * The private structure must have been registered in the
 * class_init function with g_type_class_add_private().
 * This macro should only be used in type implementations.
 * instance :
 * the instance of a type deriving from private_type.
 * g_type :
 * the type identifying which private data to retrieve.
 * c_type :
 * The C type for the private structure.
 * Returns :
 * a pointer to the private data structure.
 * Since 2.4
 */
// TODO
// #define G_TYPE_INSTANCE_GET_PRIVATE(instance, g_type, c_type) ((c_type*) g_type_instance_get_private ((GTypeInstance*) (instance), (g_type)))

/*
 * Gets the private class structure for a particular type.
 * The private structure must have been registered in the
 * get_type() function with g_type_add_class_private().
 * This macro should only be used in type implementations.
 * klass :
 * the class of a type deriving from private_type.
 * g_type :
 * the type identifying which private data to retrieve.
 * c_type :
 * The C type for the private structure.
 * Returns :
 * a pointer to the private data structure.
 * Since 2.24
 */
// TODO
// #define G_TYPE_CLASS_GET_PRIVATE(klass, g_type, c_type) ((c_type*) g_type_class_get_private ((GTypeClass*) (klass), (g_type)))

/*
 * Checks if instance is a valid GTypeInstance structure,
 * otherwise issues a warning and returns FALSE.
 * This macro should only be used in type implementations.
 * instance :
 * Location of a GTypeInstance structure.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_CHECK_INSTANCE(instance)				(_G_TYPE_CHI ((GTypeInstance*) (instance)))

/*
 * Checks that instance is an instance of the type identified by g_type
 * and issues a warning if this is not the case. Returns instance casted
 * to a pointer to c_type.
 * This macro should only be used in type implementations.
 * instance :
 * Location of a GTypeInstance structure.
 * g_type :
 * The type to be returned.
 * c_type :
 * The corresponding C type of g_type.
 */
// TODO
// #define G_TYPE_CHECK_INSTANCE_CAST(instance, g_type, c_type) (_G_TYPE_CIC ((instance), (g_type), c_type))

/*
 * Checks if instance is an instance of the type identified by g_type.
 * This macro should only be used in type implementations.
 * instance :
 * Location of a GTypeInstance structure.
 * g_type :
 * The type to be checked
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_CHECK_INSTANCE_TYPE(instance, g_type) (_G_TYPE_CIT ((instance), (g_type)))

/*
 * Checks that g_class is a class structure of the type identified by g_type
 * and issues a warning if this is not the case. Returns g_class casted
 * to a pointer to c_type.
 * This macro should only be used in type implementations.
 * g_class :
 * Location of a GTypeClass structure.
 * g_type :
 * The type to be returned.
 * c_type :
 * The corresponding C type of class structure of g_type.
 */
// TODO
// #define G_TYPE_CHECK_CLASS_CAST(g_class, g_type, c_type) (_G_TYPE_CCC ((g_class), (g_type), c_type))

/*
 * Checks if g_class is a class structure of the type identified by
 * g_type.
 * This macro should only be used in type implementations.
 * g_class :
 * Location of a GTypeClass structure.
 * g_type :
 * The type to be checked.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_CHECK_CLASS_TYPE(g_class, g_type) (_G_TYPE_CCT ((g_class), (g_type)))

/*
 * Checks if value has been initialized to hold values
 * of a value type.
 * This macro should only be used in type implementations.
 * value :
 * a GValue
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_CHECK_VALUE(value)				(_G_TYPE_CHV ((value)))

/*
 * Checks if value has been initialized to hold values
 * of type g_type.
 * This macro should only be used in type implementations.
 * value :
 * a GValue
 * g_type :
 * The type to be checked.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_CHECK_VALUE_TYPE(value, g_type)			(_G_TYPE_CVH ((value), (g_type)))

/*
 * A convenience macro for type implementations, which declares a
 * class initialization function, an instance initialization function (see GTypeInfo for information about
 * these) and a static variable named t_n_parent_class pointing to the parent class. Furthermore, it defines
 * a *_get_type() function. See G_DEFINE_TYPE_EXTENDED() for an example.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words
 * separated by '_'.
 * T_P :
 * The GType of the parent type.
 * Since 2.4
 */
// TODO
// #define G_DEFINE_TYPE(TN, t_n, T_P)			 G_DEFINE_TYPE_EXTENDED (TN, t_n, T_P, 0, {})

/*
 * A convenience macro for type implementations.
 * Similar to G_DEFINE_TYPE(), but allows you to insert custom code into the
 * *_get_type() function, e.g. interface implementations via G_IMPLEMENT_INTERFACE().
 * See G_DEFINE_TYPE_EXTENDED() for an example.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type in lowercase, with words separated by '_'.
 * T_P :
 * The GType of the parent type.
 * _C_ :
 * Custom code that gets inserted in the *_get_type() function.
 * Since 2.4
 */
// TODO
// #define G_DEFINE_TYPE_WITH_CODE(TN, t_n, T_P, _C_)	 _G_DEFINE_TYPE_EXTENDED_BEGIN (TN, t_n, T_P, 0) {_C_;} _G_DEFINE_TYPE_EXTENDED_END()

/*
 * A convenience macro for type implementations.
 * Similar to G_DEFINE_TYPE(), but defines an abstract type.
 * See G_DEFINE_TYPE_EXTENDED() for an example.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words
 * separated by '_'.
 * T_P :
 * The GType of the parent type.
 * Since 2.4
 */
// TODO
// #define G_DEFINE_ABSTRACT_TYPE(TN, t_n, T_P)		 G_DEFINE_TYPE_EXTENDED (TN, t_n, T_P, G_TYPE_FLAG_ABSTRACT, {})

/*
 * A convenience macro for type implementations.
 * Similar to G_DEFINE_TYPE_WITH_CODE(), but defines an abstract type and allows you to
 * insert custom code into the *_get_type() function, e.g. interface implementations
 * via G_IMPLEMENT_INTERFACE(). See G_DEFINE_TYPE_EXTENDED() for an example.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words
 * separated by '_'.
 * T_P :
 * The GType of the parent type.
 * _C_ :
 * Custom code that gets inserted in the type_name_get_type() function.
 * Since 2.4
 */
// TODO
// #define G_DEFINE_ABSTRACT_TYPE_WITH_CODE(TN, t_n, T_P, _C_) _G_DEFINE_TYPE_EXTENDED_BEGIN (TN, t_n, T_P, G_TYPE_FLAG_ABSTRACT) {_C_;} _G_DEFINE_TYPE_EXTENDED_END()

/*
 * A convenience macro for GTypeInterface definitions, which declares
 * a default vtable initialization function and defines a *_get_type()
 * function.
 * The macro expects the interface initialization function to have the
 * name t_n ## _default_init, and the interface
 * structure to have the name TN ## Interface.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words separated by '_'.
 * T_P :
 * The GType of the prerequisite type for the interface, or 0
 * (G_TYPE_INVALID) for no prerequisite type.
 * Since 2.24
 */
// TODO
// #define G_DEFINE_INTERFACE(TN, t_n, T_P)		 G_DEFINE_INTERFACE_WITH_CODE(TN, t_n, T_P, ;)

/*
 * A convenience macro for GTypeInterface definitions. Similar to
 * G_DEFINE_INTERFACE(), but allows you to insert custom code into the
 * *_get_type() function, e.g. additional interface implementations
 * via G_IMPLEMENT_INTERFACE(), or additional prerequisite types. See
 * G_DEFINE_TYPE_EXTENDED() for a similar example using
 * G_DEFINE_TYPE_WITH_CODE().
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words separated by '_'.
 * T_P :
 * The GType of the prerequisite type for the interface, or 0
 * (G_TYPE_INVALID) for no prerequisite type.
 * _C_ :
 * Custom code that gets inserted in the *_get_type() function.
 * Since 2.24
 */
// TODO
// #define G_DEFINE_INTERFACE_WITH_CODE(TN, t_n, T_P, _C_) _G_DEFINE_INTERFACE_EXTENDED_BEGIN(TN, t_n, T_P) {_C_;} _G_DEFINE_INTERFACE_EXTENDED_END()

/*
 * A convenience macro to ease interface addition in the _C_ section
 * of G_DEFINE_TYPE_WITH_CODE() or G_DEFINE_ABSTRACT_TYPE_WITH_CODE().
 * See G_DEFINE_TYPE_EXTENDED() for an example.
 * Note that this macro can only be used together with the G_DEFINE_TYPE_*
 * macros, since it depends on variable names from those macros.
 * TYPE_IFACE :
 * The GType of the interface to add
 * iface_init :
 * The interface init function
 * Since 2.4
 */
// TODO
// #define G_IMPLEMENT_INTERFACE(TYPE_IFACE, iface_init)

/*
 * The most general convenience macro for type implementations, on which
 * G_DEFINE_TYPE(), etc are based.
 * $(DDOC_COMMENT example)
 * expands to
 * $(DDOC_COMMENT example)
 * The only pieces which have to be manually provided are the definitions of
 * the instance and class structure and the definitions of the instance and
 * class init functions.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words
 * separated by '_'.
 * T_P :
 * The GType of the parent type.
 * _f_ :
 * GTypeFlags to pass to g_type_register_static()
 * _C_ :
 * Custom code that gets inserted in the *_get_type() function.
 * Since 2.4
 */
// TODO
// #define G_DEFINE_TYPE_EXTENDED(TN, t_n, T_P, _f_, _C_)	 _G_DEFINE_TYPE_EXTENDED_BEGIN (TN, t_n, T_P, _f_) {_C_;} _G_DEFINE_TYPE_EXTENDED_END()

/*
 * A convenience macro for boxed type implementations, which defines a
 * type_name_get_type() function registering the boxed type.
 * TypeName :
 * The name of the new type, in Camel case.
 * type_name :
 * The name of the new type, in lowercase, with words
 * separated by '_'.
 * copy_func :
 * the GBoxedCopyFunc for the new type
 * free_func :
 * the GBoxedFreeFunc for the new type
 * Since 2.26
 */
// TODO
// #define G_DEFINE_BOXED_TYPE(TypeName, type_name, copy_func, free_func) G_DEFINE_BOXED_TYPE_WITH_CODE (TypeName, type_name, copy_func, free_func, {})

/*
 * A convenience macro for boxed type implementations.
 * Similar to G_DEFINE_BOXED_TYPE(), but allows to insert custom code into the
 * type_name_get_type() function, e.g. to register value transformations with
 * g_value_register_transform_func().
 * TypeName :
 * The name of the new type, in Camel case.
 * type_name :
 * The name of the new type, in lowercase, with words
 * separated by '_'.
 * copy_func :
 * the GBoxedCopyFunc for the new type
 * free_func :
 * the GBoxedFreeFunc for the new type
 * _C_ :
 * Custom code that gets inserted in the *_get_type() function.
 * Since 2.26
 */
// TODO
// #define G_DEFINE_BOXED_TYPE_WITH_CODE(TypeName, type_name, copy_func, free_func, _C_) _G_DEFINE_BOXED_TYPE_BEGIN (TypeName, type_name, copy_func, free_func) {_C_;} _G_DEFINE_TYPE_EXTENDED_END()

/*
 * A convenience macro for pointer type implementations, which defines a
 * type_name_get_type() function registering the pointer type.
 * TypeName :
 * The name of the new type, in Camel case.
 * type_name :
 * The name of the new type, in lowercase, with words
 * separated by '_'.
 * Since 2.26
 */
// TODO
// #define G_DEFINE_POINTER_TYPE(TypeName, type_name) G_DEFINE_POINTER_TYPE_WITH_CODE (TypeName, type_name, {})

/*
 * A convenience macro for pointer type implementations.
 * Similar to G_DEFINE_POINTER_TYPE(), but allows to insert custom code into the
 * type_name_get_type() function.
 * TypeName :
 * The name of the new type, in Camel case.
 * type_name :
 * The name of the new type, in lowercase, with words
 * separated by '_'.
 * _C_ :
 * Custom code that gets inserted in the *_get_type() function.
 * Since 2.26
 */
// TODO
// #define G_DEFINE_POINTER_TYPE_WITH_CODE(TypeName, type_name, _C_) _G_DEFINE_POINTER_TYPE_BEGIN (TypeName, type_name) {_C_;} _G_DEFINE_TYPE_EXTENDED_END()

/*
 * A convenience macro for dynamic type implementations, which declares a
 * class initialization function, an instance initialization function (see
 * GTypeInfo for information about these) and a static variable named
 * t_n_parent_class pointing to the parent class. Furthermore,
 * it defines a *_get_type() and a static
 * *_register_type() function for use in your
 * module_init().
 * See G_DEFINE_DYNAMIC_TYPE_EXTENDED() for an example.
 * TN :
 * The name of the new type, in Camel case.
 * t_n :
 * The name of the new type, in lowercase, with words
 * separated by '_'.
 * T_P :
 * The GType of the parent type.
 * Since 2.14
 */
// TODO
// #define G_DEFINE_DYNAMIC_TYPE(TN, t_n, T_P) G_DEFINE_DYNAMIC_TYPE_EXTENDED (TN, t_n, T_P, 0, {})

/*
 * A more general version of G_DEFINE_DYNAMIC_TYPE() which
 * allows to specify GTypeFlags and custom code.
 * $(DDOC_COMMENT example)
 * expands to
 * $(DDOC_COMMENT example)
 * TypeName :
 * The name of the new type, in Camel case.
 * type_name :
 * The name of the new type, in lowercase, with words
 * separated by '_'.
 * TYPE_PARENT :
 * The GType of the parent type.
 * flags :
 * GTypeFlags to pass to g_type_module_register_type()
 * CODE :
 * Custom code that gets inserted in the *_get_type() function.
 * Since 2.14
 */
// TODO
// #define G_DEFINE_DYNAMIC_TYPE_EXTENDED(TypeName, type_name, TYPE_PARENT, flags, CODE)

/*
 * A convenience macro to ease interface addition in the _C_ section
 * of G_DEFINE_DYNAMIC_TYPE_EXTENDED(). See G_DEFINE_DYNAMIC_TYPE_EXTENDED()
 * for an example.
 * Note that this macro can only be used together with the
 * G_DEFINE_DYNAMIC_TYPE_EXTENDED macros, since it depends on variable
 * names from that macro.
 * TYPE_IFACE :
 * The GType of the interface to add
 * iface_init :
 * The interface init function
 * Since 2.24
 * See Also
 * GTypePlugin
 * The abstract type loader interface.
 * GModule
 * Portable mechanism for dynamically loaded modules.
 */
// TODO
// #define G_IMPLEMENT_INTERFACE_DYNAMIC(TYPE_IFACE, iface_init)

/*
 * Check if the passed in type id is a G_TYPE_OBJECT or derived from it.
 * type :
 * Type id to check
 * Returns :
 * FALSE or TRUE, indicating whether type is a G_TYPE_OBJECT.
 */
// TODO
// #define G_TYPE_IS_OBJECT(type) (G_TYPE_FUNDAMENTAL (type) == G_TYPE_OBJECT)

/*
 * Casts a GObject or derived pointer into a (GObject*) pointer.
 * Depending on the current debugging level, this function may invoke
 * certain runtime checks to identify invalid casts.
 * object :
 * Object which is subject to casting.
 */
// TODO
// #define G_OBJECT(object) (G_TYPE_CHECK_INSTANCE_CAST ((object), G_TYPE_OBJECT, GObject))

/*
 * Checks whether a valid GTypeInstance pointer is of type G_TYPE_OBJECT.
 * object :
 * Instance to check for being a G_TYPE_OBJECT.
 */
// TODO
// #define G_IS_OBJECT(object) (G_TYPE_CHECK_INSTANCE_TYPE ((object), G_TYPE_OBJECT))

/*
 * Casts a derived GObjectClass structure into a GObjectClass structure.
 * class :
 * a valid GObjectClass
 */
// TODO
// #define G_OBJECT_CLASS(class) (G_TYPE_CHECK_CLASS_CAST ((class), G_TYPE_OBJECT, GObjectClass))

/*
 * Checks whether class "is a" valid GObjectClass structure of type
 * G_TYPE_OBJECT or derived.
 * class :
 * a GObjectClass
 */
// TODO
// #define G_IS_OBJECT_CLASS(class) (G_TYPE_CHECK_CLASS_TYPE ((class), G_TYPE_OBJECT))

/*
 * Get the class structure associated to a GObject instance.
 * object :
 * a GObject instance.
 * Returns :
 * pointer to object class structure.
 */
// TODO
// #define G_OBJECT_GET_CLASS(object) (G_TYPE_INSTANCE_GET_CLASS ((object), G_TYPE_OBJECT, GObjectClass))

/*
 * Get the type id of an object.
 * object :
 * Object to return the type id for.
 * Returns :
 * Type id of object.
 */
// TODO
// #define G_OBJECT_TYPE(object) (G_TYPE_FROM_INSTANCE (object))

/*
 * Get the name of an object's type.
 * object :
 * Object to return the type name for.
 * Returns :
 * Type name of object. The string is owned by the type system and
 * should not be freed.
 */
// TODO
// #define G_OBJECT_TYPE_NAME(object) (g_type_name (G_OBJECT_TYPE (object)))

/*
 * Get the type id of a class structure.
 * class :
 * a valid GObjectClass
 * Returns :
 * Type id of class.
 */
// TODO
// #define G_OBJECT_CLASS_TYPE(class) (G_TYPE_FROM_CLASS (class))

/*
 * Return the name of a class structure's type.
 * class :
 * a valid GObjectClass
 * Returns :
 * Type name of class. The string is owned by the type system and
 * should not be freed.
 */
// TODO
// #define G_OBJECT_CLASS_NAME(class) (g_type_name (G_OBJECT_CLASS_TYPE (class)))

/*
 * This macro should be used to emit a standard warning about unexpected
 * properties in set_property() and get_property() implementations.
 * object :
 * the GObject on which set_property() or get_property() was called
 * property_id :
 * the numeric id of the property
 * pspec :
 * the GParamSpec of the property
 */
// TODO
// #define G_OBJECT_WARN_INVALID_PROPERTY_ID(object, property_id, pspec)

/*
 * Get the type identifier from a given GEnumClass structure.
 * class :
 * a GEnumClass
 * Returns :
 * the GType
 */
// TODO
// #define G_ENUM_CLASS_TYPE(class) (G_TYPE_FROM_CLASS (class))

/*
 * Get the static type name from a given GEnumClass structure.
 * class :
 * a GEnumClass
 * Returns :
 * the type name.
 */
// TODO
// #define G_ENUM_CLASS_TYPE_NAME(class) (g_type_name (G_ENUM_CLASS_TYPE (class)))

/*
 * Checks whether type "is a" G_TYPE_ENUM.
 * type :
 * a GType ID.
 * Returns :
 * TRUE if type "is a" G_TYPE_ENUM.
 */
// TODO
// #define G_TYPE_IS_ENUM(type)	 (G_TYPE_FUNDAMENTAL (type) == G_TYPE_ENUM)

/*
 * Casts a derived GEnumClass structure into a GEnumClass structure.
 * class :
 * a valid GEnumClass
 */
// TODO
// #define G_ENUM_CLASS(class)	 (G_TYPE_CHECK_CLASS_CAST ((class), G_TYPE_ENUM, GEnumClass))

/*
 * Checks whether class "is a" valid GEnumClass structure of type G_TYPE_ENUM
 * or derived.
 * class :
 * a GEnumClass
 */
// TODO
// #define G_IS_ENUM_CLASS(class)	 (G_TYPE_CHECK_CLASS_TYPE ((class), G_TYPE_ENUM))

/*
 * Checks whether type "is a" G_TYPE_FLAGS.
 * type :
 * a GType ID.
 * Returns :
 * TRUE if type "is a" G_TYPE_FLAGS.
 */
// TODO
// #define G_TYPE_IS_FLAGS(type)	 (G_TYPE_FUNDAMENTAL (type) == G_TYPE_FLAGS)

/*
 * Casts a derived GFlagsClass structure into a GFlagsClass structure.
 * class :
 * a valid GFlagsClass
 */
// TODO
// #define G_FLAGS_CLASS(class)	 (G_TYPE_CHECK_CLASS_CAST ((class), G_TYPE_FLAGS, GFlagsClass))

/*
 * Checks whether class "is a" valid GFlagsClass structure of type G_TYPE_FLAGS
 * or derived.
 * class :
 * a GFlagsClass
 */
// TODO
// #define G_IS_FLAGS_CLASS(class) (G_TYPE_CHECK_CLASS_TYPE ((class), G_TYPE_FLAGS))

/*
 * Get the type identifier from a given GFlagsClass structure.
 * class :
 * a GFlagsClass
 * Returns :
 * the GType
 */
// TODO
// #define G_FLAGS_CLASS_TYPE(class) (G_TYPE_FROM_CLASS (class))

/*
 * Get the static type name from a given GFlagsClass structure.
 * class :
 * a GFlagsClass
 * Returns :
 * the type name.
 */
// TODO
// #define G_FLAGS_CLASS_TYPE_NAME(class) (g_type_name (G_FLAGS_CLASS_TYPE (class)))

/*
 * Checks if value holds (or contains) a value of type.
 * This macro will also check for value != NULL and issue a
 * warning if the check fails.
 * value :
 * A GValue structure.
 * type :
 * A GType value.
 * Returns :
 * TRUE if value holds the type.
 */
// TODO
// #define G_VALUE_HOLDS(value,type) (G_TYPE_CHECK_VALUE_TYPE ((value), (type)))

/*
 * Get the type identifier of value.
 * value :
 * A GValue structure.
 * Returns :
 * the GType.
 */
// TODO
// #define G_VALUE_TYPE(value)		(((GValue*) (value))->g_type)

/*
 * Gets the type name of value.
 * value :
 * A GValue structure.
 * Returns :
 * the type name.
 */
// TODO
// #define G_VALUE_TYPE_NAME(value) (g_type_name (G_VALUE_TYPE (value)))

/*
 * Checks whether the passed in type ID can be used for g_value_init().
 * That is, this macro checks whether this type provides an implementation
 * of the GTypeValueTable functions required for a type to create a GValue of.
 * type :
 * A GType value.
 * Returns :
 * Whether type is suitable as a GValue type.
 */
// TODO
// #define G_TYPE_IS_VALUE(type)		(g_type_check_is_value_type (type))

/*
 * Checks if type is an abstract value type. An abstract value type introduces
 * a value table, but can't be used for g_value_init() and is normally used as
 * an abstract base type for derived value types.
 * type :
 * A GType value.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_TYPE_IS_VALUE_ABSTRACT(type) (g_type_test_flags ((type), G_TYPE_FLAG_VALUE_ABSTRACT))

/*
 * Checks if value is a valid and initialized GValue structure.
 * value :
 * A GValue structure.
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_VALUE(value)		(G_TYPE_CHECK_VALUE (value))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_BOOLEAN.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_BOOLEAN(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_BOOLEAN))

/*
 * Cast a GParamSpec instance into a GParamSpecBoolean.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_BOOLEAN(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_BOOLEAN, GParamSpecBoolean))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_BOOLEAN.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_BOOLEAN(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_BOOLEAN))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_CHAR.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_CHAR(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_CHAR))

/*
 * Cast a GParamSpec instance into a GParamSpecChar.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_CHAR(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_CHAR, GParamSpecChar))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_CHAR.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_CHAR(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_CHAR))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_UCHAR.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_UCHAR(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_UCHAR))

/*
 * Cast a GParamSpec instance into a GParamSpecUChar.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_UCHAR(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_UCHAR, GParamSpecUChar))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_UCHAR.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_UCHAR(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_UCHAR))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_INT.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_INT(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_INT))

/*
 * Cast a GParamSpec instance into a GParamSpecInt.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_INT(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_INT, GParamSpecInt))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_INT.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_INT(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_INT))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_UINT.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_UINT(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_UINT))

/*
 * Cast a GParamSpec instance into a GParamSpecUInt.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_UINT(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_UINT, GParamSpecUInt))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_UINT.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_UINT(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_UINT))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_LONG.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_LONG(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_LONG))

/*
 * Cast a GParamSpec instance into a GParamSpecLong.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_LONG(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_LONG, GParamSpecLong))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_LONG.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_LONG(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_LONG))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_ULONG.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_ULONG(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_ULONG))

/*
 * Cast a GParamSpec instance into a GParamSpecULong.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_ULONG(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_ULONG, GParamSpecULong))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_ULONG.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_ULONG(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_ULONG))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_INT64.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_INT64(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_INT64))

/*
 * Cast a GParamSpec instance into a GParamSpecInt64.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_INT64(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_INT64, GParamSpecInt64))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_INT64.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_INT64(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_INT64))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_UINT64.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_UINT64(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_UINT64))

/*
 * Cast a GParamSpec instance into a GParamSpecUInt64.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_UINT64(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_UINT64, GParamSpecUInt64))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_UINT64.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_UINT64(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_UINT64))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_FLOAT.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_FLOAT(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_FLOAT))

/*
 * Cast a GParamSpec instance into a GParamSpecFloat.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_FLOAT(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_FLOAT, GParamSpecFloat))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_FLOAT.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_FLOAT(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_FLOAT))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_DOUBLE.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_DOUBLE(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_DOUBLE))

/*
 * Cast a GParamSpec instance into a GParamSpecDouble.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_DOUBLE(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_DOUBLE, GParamSpecDouble))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_DOUBLE.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_DOUBLE(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_DOUBLE))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_ENUM.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_ENUM(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_ENUM))

/*
 * Cast a GParamSpec instance into a GParamSpecEnum.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_ENUM(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_ENUM, GParamSpecEnum))

/*
 * Checks whether the given GValue can hold values derived from type G_TYPE_ENUM.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_ENUM(value) (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_ENUM))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_FLAGS.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_FLAGS(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_FLAGS))

/*
 * Cast a GParamSpec instance into a GParamSpecFlags.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_FLAGS(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_FLAGS, GParamSpecFlags))

/*
 * Checks whether the given GValue can hold values derived from type G_TYPE_FLAGS.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_FLAGS(value) (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_FLAGS))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_STRING.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_STRING(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_STRING))

/*
 * Casts a GParamSpec instance into a GParamSpecString.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_STRING(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_STRING, GParamSpecString))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_STRING.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_STRING(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_STRING))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_PARAM.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_PARAM(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_PARAM))

/*
 * Casts a GParamSpec instance into a GParamSpecParam.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_PARAM(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_PARAM, GParamSpecParam))

/*
 * Checks whether the given GValue can hold values derived from type G_TYPE_PARAM.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_PARAM(value) (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_PARAM))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_BOXED.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_BOXED(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_BOXED))

/*
 * Cast a GParamSpec instance into a GParamSpecBoxed.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_BOXED(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_BOXED, GParamSpecBoxed))

/*
 * Checks whether the given GValue can hold values derived
 * from type G_TYPE_BOXED.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_BOXED(value) (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_BOXED))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_POINTER.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_POINTER(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_POINTER))

/*
 * Casts a GParamSpec instance into a GParamSpecPointer.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_POINTER(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_POINTER, GParamSpecPointer))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_POINTER.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_POINTER(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_POINTER))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_OBJECT.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_OBJECT(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_OBJECT))

/*
 * Casts a GParamSpec instance into a GParamSpecObject.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_OBJECT(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_OBJECT, GParamSpecObject))

/*
 * Checks whether the given GValue can hold values derived from type G_TYPE_OBJECT.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_VALUE_HOLDS_OBJECT(value) (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_OBJECT))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_UNICHAR.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_UNICHAR(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_UNICHAR))

/*
 * Cast a GParamSpec instance into a GParamSpecUnichar.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_UNICHAR(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_UNICHAR, GParamSpecUnichar))

/*
 * Warning
 * G_IS_PARAM_SPEC_VALUE_ARRAY has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray instead of GValueArray
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_VALUE_ARRAY.
 * pspec :
 * a valid GParamSpec instance
 * Returns :
 * TRUE on success.
 */
// TODO
// #define G_IS_PARAM_SPEC_VALUE_ARRAY(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_VALUE_ARRAY))

/*
 * Warning
 * G_PARAM_SPEC_VALUE_ARRAY has been deprecated since version 2.32 and should not be used in newly-written code. Use GArray instead of GValueArray
 * Cast a GParamSpec instance into a GParamSpecValueArray.
 * pspec :
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_VALUE_ARRAY(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_VALUE_ARRAY, GParamSpecValueArray))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_OVERRIDE.
 * pspec :
 * a GParamSpec
 * Returns :
 * TRUE on success.
 * Since 2.4
 */
// TODO
// #define G_IS_PARAM_SPEC_OVERRIDE(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_OVERRIDE))

/*
 * Casts a GParamSpec into a GParamSpecOverride.
 * pspec :
 * a GParamSpec
 * Since 2.4
 */
// TODO
// #define G_PARAM_SPEC_OVERRIDE(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_OVERRIDE, GParamSpecOverride))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_GTYPE.
 * pspec :
 * a GParamSpec
 * Returns :
 * TRUE on success.
 * Since 2.10
 */
// TODO
// #define G_IS_PARAM_SPEC_GTYPE(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_GTYPE))

/*
 * Casts a GParamSpec into a GParamSpecGType.
 * pspec :
 * a GParamSpec
 * Since 2.10
 */
// TODO
// #define G_PARAM_SPEC_GTYPE(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_GTYPE, GParamSpecGType))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_GTYPE.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 * Since 2.12
 */
// TODO
// #define G_VALUE_HOLDS_GTYPE(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_GTYPE))

/*
 * Checks whether the given GParamSpec is of type G_TYPE_PARAM_VARIANT.
 * pspec :
 * a GParamSpec
 * Returns :
 * TRUE on success
 * Since 2.26
 */
// TODO
// #define G_IS_PARAM_SPEC_VARIANT(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_VARIANT))

/*
 * Casts a GParamSpec into a GParamSpecVariant.
 * pspec :
 * a GParamSpec
 * Since 2.26
 */
// TODO
// #define G_PARAM_SPEC_VARIANT(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_VARIANT, GParamSpecVariant))

/*
 * Checks whether the given GValue can hold values of type G_TYPE_VARIANT.
 * value :
 * a valid GValue structure
 * Returns :
 * TRUE on success.
 * Since 2.26
 */
// TODO
// #define G_VALUE_HOLDS_VARIANT(value) (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_VARIANT))

/*
 * Checks whether type "is a" G_TYPE_PARAM.
 * type :
 * a GType ID
 */
// TODO
// #define G_TYPE_IS_PARAM(type)		(G_TYPE_FUNDAMENTAL (type) == G_TYPE_PARAM)

/*
 * Casts a derived GParamSpec object (e.g. of type GParamSpecInt) into
 * a GParamSpec object.
 * pspec :
 * a valid GParamSpec
 */
// TODO
// #define G_PARAM_SPEC(pspec)		(G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM, GParamSpec))

/*
 * Checks whether pspec "is a" valid GParamSpec structure of type G_TYPE_PARAM
 * or derived.
 * pspec :
 * a GParamSpec
 */
// TODO
// #define G_IS_PARAM_SPEC(pspec)		(G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM))

/*
 * Casts a derived GParamSpecClass structure into a GParamSpecClass structure.
 * pclass :
 * a valid GParamSpecClass
 */
// TODO
// #define G_PARAM_SPEC_CLASS(pclass) (G_TYPE_CHECK_CLASS_CAST ((pclass), G_TYPE_PARAM, GParamSpecClass))

/*
 * Checks whether pclass "is a" valid GParamSpecClass structure of type
 * G_TYPE_PARAM or derived.
 * pclass :
 * a GParamSpecClass
 */
// TODO
// #define G_IS_PARAM_SPEC_CLASS(pclass) (G_TYPE_CHECK_CLASS_TYPE ((pclass), G_TYPE_PARAM))

/*
 * Retrieves the GParamSpecClass of a GParamSpec.
 * pspec :
 * a valid GParamSpec
 */
// TODO
// #define G_PARAM_SPEC_GET_CLASS(pspec) (G_TYPE_INSTANCE_GET_CLASS ((pspec), G_TYPE_PARAM, GParamSpecClass))

/*
 * Retrieves the GType of this pspec.
 * pspec :
 * a valid GParamSpec
 */
// TODO
// #define G_PARAM_SPEC_TYPE(pspec) (G_TYPE_FROM_INSTANCE (pspec))

/*
 * Retrieves the GType name of this pspec.
 * pspec :
 * a valid GParamSpec
 */
// TODO
// #define G_PARAM_SPEC_TYPE_NAME(pspec) (g_type_name (G_PARAM_SPEC_TYPE (pspec)))

/*
 * Retrieves the GType to initialize a GValue for this parameter.
 * pspec :
 * a valid GParamSpec
 */
// TODO
// #define G_PARAM_SPEC_VALUE_TYPE(pspec) (G_PARAM_SPEC (pspec)->value_type)

/*
 * Connects a GCallback function to a signal for a particular object.
 * The handler will be called before the default handler of the signal.
 * instance :
 * the instance to connect to.
 * detailed_signal :
 * a string of the form "signal-name::detail".
 * c_handler :
 * the GCallback to connect.
 * data :
 * data to pass to c_handler calls.
 * Returns :
 * the handler id
 */
// TODO
// #define g_signal_connect(instance, detailed_signal, c_handler, data)

/*
 * Connects a GCallback function to a signal for a particular object.
 * The handler will be called after the default handler of the signal.
 * instance :
 * the instance to connect to.
 * detailed_signal :
 * a string of the form "signal-name::detail".
 * c_handler :
 * the GCallback to connect.
 * data :
 * data to pass to c_handler calls.
 * Returns :
 * the handler id
 */
// TODO
// #define g_signal_connect_after(instance, detailed_signal, c_handler, data)

/*
 * Connects a GCallback function to a signal for a particular object.
 * The instance on which the signal is emitted and data will be swapped when
 * calling the handler.
 * instance :
 * the instance to connect to.
 * detailed_signal :
 * a string of the form "signal-name::detail".
 * c_handler :
 * the GCallback to connect.
 * data :
 * data to pass to c_handler calls.
 * Returns :
 * the handler id
 */
// TODO
// #define g_signal_connect_swapped(instance, detailed_signal, c_handler, data)

/*
 * Blocks all handlers on an instance that match func and data.
 * instance :
 * The instance to block handlers from.
 * func :
 * The C closure callback of the handlers (useless for non-C closures).
 * data :
 * The closure data of the handlers' closures.
 * Returns :
 * The number of handlers that matched.
 */
// TODO
// #define g_signal_handlers_block_by_func(instance, func, data)

/*
 * Unblocks all handlers on an instance that match func and data.
 * instance :
 * The instance to unblock handlers from.
 * func :
 * The C closure callback of the handlers (useless for non-C closures).
 * data :
 * The closure data of the handlers' closures.
 * Returns :
 * The number of handlers that matched.
 */
// TODO
// #define g_signal_handlers_unblock_by_func(instance, func, data)

/*
 * Disconnects all handlers on an instance that match func and data.
 * instance :
 * The instance to remove handlers from.
 * func :
 * The C closure callback of the handlers (useless for non-C closures).
 * data :
 * The closure data of the handlers' closures.
 * Returns :
 * The number of handlers that matched.
 */
// TODO
// #define g_signal_handlers_disconnect_by_func(instance, func, data)

/*
 * Disconnects all handlers on an instance that match data.
 * instance :
 * The instance to remove handlers from
 * data :
 * the closure data of the handlers' closures
 * Returns :
 * The number of handlers that matched.
 * Since 2.32
 */
// TODO
// #define g_signal_handlers_disconnect_by_data(instance, data)

/*
 * Check if the closure still needs a marshaller. See g_closure_set_marshal().
 * closure :
 * a GClosure
 * Returns :
 * TRUE if a GClosureMarshal marshaller has not yet been set on
 * closure.
 */
// TODO
// #define G_CLOSURE_NEEDS_MARSHAL(closure) (((GClosure*) (closure))->marshal == NULL)

/*
 * Get the total number of notifiers connected with the closure cl.
 * The count includes the meta marshaller, the finalize and invalidate notifiers
 * and the marshal guards. Note that each guard counts as two notifiers.
 * See g_closure_set_meta_marshal(), g_closure_add_finalize_notifier(),
 * g_closure_add_invalidate_notifier() and g_closure_add_marshal_guards().
 * cl :
 * a GClosure
 * Returns :
 * number of notifiers
 */
// TODO
// #define G_CLOSURE_N_NOTIFIERS(cl)

/*
 * Checks whether the user data of the GCClosure should be passed as the
 * first parameter to the callback. See g_cclosure_new_swap().
 * cclosure :
 * a GCClosure
 * Returns :
 * TRUE if data has to be swapped.
 */
// TODO
// #define G_CCLOSURE_SWAP_DATA(cclosure)	 (((GClosure*) (cclosure))->derivative_flag)

/*
 * Cast a function pointer to a GCallback.
 * f :
 * a function pointer.
 */
// TODO
// #define G_CALLBACK(f)			 ((GCallback) (f))

/*
 * A callback function used by the type system to do base initialization
 * of the class structures of derived types. It is called as part of the
 * initialization process of all derived classes and should reallocate
 * or reset all dynamic class members copied over from the parent class.
 * For example, class members (such as strings) that are not sufficiently
 * handled by a plain memory copy of the parent class into the derived class
 * have to be altered. See GClassInitFunc() for a discussion of the class
 * intialization process.
 * g_class :
 * The GTypeClass structure to initialize.
 */
// void (*GBaseInitFunc) (gpointer g_class);
public alias extern(C) void function(void* gClass) GBaseInitFunc;

/*
 * A callback function used by the type system to finalize those portions
 * of a derived types class structure that were setup from the corresponding
 * GBaseInitFunc() function. Class finalization basically works the inverse
 * way in which class intialization is performed.
 * See GClassInitFunc() for a discussion of the class intialization process.
 * g_class :
 * The GTypeClass structure to finalize.
 */
// void (*GBaseFinalizeFunc) (gpointer g_class);
public alias extern(C) void function(void* gClass) GBaseFinalizeFunc;

/*
 * A callback function used by the type system to initialize the class
 * of a specific type. This function should initialize all static class
 * members.
 * The initialization process of a class involves:
 * 	1 - Copying common members from the parent class over to the
 * 	derived class structure.
 * 	2 - Zero initialization of the remaining members not copied
 * 	over from the parent class.
 * 	3 - Invocation of the GBaseInitFunc() initializers of all parent
 * 	types and the class' type.
 * 	4 - Invocation of the class' GClassInitFunc() initializer.
 * Since derived classes are partially initialized through a memory copy
 * of the parent class, the general rule is that GBaseInitFunc() and
 * GBaseFinalizeFunc() should take care of necessary reinitialization
 * and release of those class members that were introduced by the type
 * that specified these GBaseInitFunc()/GBaseFinalizeFunc().
 * GClassInitFunc() should only care about initializing static
 * class members, while dynamic class members (such as allocated strings
 * or reference counted resources) are better handled by a GBaseInitFunc()
 * for this type, so proper initialization of the dynamic class members
 * is performed for class initialization of derived types as well.
 * An example may help to correspond the intend of the different class
 * initializers:
 * $(DDOC_COMMENT example)
 * Initialization of TypeBClass will first cause initialization of
 * TypeAClass (derived classes reference their parent classes, see
 * g_type_class_ref() on this).
 * Initialization of TypeAClass roughly involves zero-initializing its fields,
 * then calling its GBaseInitFunc() type_a_base_class_init() to allocate
 * its dynamic members (dynamic_string), and finally calling its GClassInitFunc()
 * type_a_class_init() to initialize its static members (static_integer).
 * The first step in the initialization process of TypeBClass is then
 * a plain memory copy of the contents of TypeAClass into TypeBClass and
 * zero-initialization of the remaining fields in TypeBClass.
 * The dynamic members of TypeAClass within TypeBClass now need
 * reinitialization which is performed by calling type_a_base_class_init()
 * with an argument of TypeBClass.
 * After that, the GBaseInitFunc() of TypeBClass, type_b_base_class_init()
 * is called to allocate the dynamic members of TypeBClass (dynamic_gstring),
 * and finally the GClassInitFunc() of TypeBClass, type_b_class_init(),
 * is called to complete the initialization process with the static members
 * (static_float).
 * Corresponding finalization counter parts to the GBaseInitFunc() functions
 * have to be provided to release allocated resources at class finalization
 * time.
 * g_class :
 * The GTypeClass structure to initialize.
 * class_data :
 * The class_data member supplied via the GTypeInfo structure.
 */
// void (*GClassInitFunc) (gpointer g_class,  gpointer class_data);
public alias extern(C) void function(void* gClass, void* classData) GClassInitFunc;

/*
 * A callback function used by the type system to finalize a class.
 * This function is rarely needed, as dynamically allocated class resources
 * should be handled by GBaseInitFunc() and GBaseFinalizeFunc().
 * Also, specification of a GClassFinalizeFunc() in the GTypeInfo
 * structure of a static type is invalid, because classes of static types
 * will never be finalized (they are artificially kept alive when their
 * reference count drops to zero).
 * g_class :
 * The GTypeClass structure to finalize.
 * class_data :
 * The class_data member supplied via the GTypeInfo structure.
 */
// void (*GClassFinalizeFunc) (gpointer g_class,  gpointer class_data);
public alias extern(C) void function(void* gClass, void* classData) GClassFinalizeFunc;

/*
 * A callback function used by the type system to initialize a new
 * instance of a type. This function initializes all instance members and
 * allocates any resources required by it.
 * Initialization of a derived instance involves calling all its parent
 * types instance initializers, so the class member of the instance
 * is altered during its initialization to always point to the class that
 * belongs to the type the current initializer was introduced for.
 * instance :
 * The instance to initialize.
 * g_class :
 * The class of the type the instance is created for.
 */
// void (*GInstanceInitFunc) (GTypeInstance *instance,  gpointer g_class);
public alias extern(C) void function(GTypeInstance* instanc, void* gClass) GInstanceInitFunc;

/*
 * A callback function used by the type system to initialize a new
 * interface. This function should initialize all internal data and
 * allocate any resources required by the interface.
 * g_iface :
 * The interface structure to initialize.
 * iface_data :
 * The interface_data supplied via the GInterfaceInfo structure.
 */
// void (*GInterfaceInitFunc) (gpointer g_iface,  gpointer iface_data);
public alias extern(C) void function(void* gIface, void* ifaceData) GInterfaceInitFunc;

/*
 * A callback function used by the type system to finalize an interface.
 * This function should destroy any internal data and release any resources
 * allocated by the corresponding GInterfaceInitFunc() function.
 * g_iface :
 * The interface structure to finalize.
 * iface_data :
 * The interface_data supplied via the GInterfaceInfo structure.
 */
// void (*GInterfaceFinalizeFunc) (gpointer g_iface,  gpointer iface_data);
public alias extern(C) void function(void* gIface, void* ifaceData) GInterfaceFinalizeFunc;

/*
 * A callback function which is called when the reference count of a class
 * drops to zero. It may use g_type_class_ref() to prevent the class from
 * being freed. You should not call g_type_class_unref() from a
 * GTypeClassCacheFunc function to prevent infinite recursion, use
 * g_type_class_unref_uncached() instead.
 * The functions have to check the class id passed in to figure
 * whether they actually want to cache the class of this type, since all
 * classes are routed through the same GTypeClassCacheFunc chain.
 * cache_data :
 * data that was given to the g_type_add_class_cache_func() call
 * g_class :
 * The GTypeClass structure which is unreferenced
 * Returns :
 * TRUE to stop further GTypeClassCacheFuncs from being
 * called, FALSE to continue.
 */
// gboolean (*GTypeClassCacheFunc) (gpointer cache_data,  GTypeClass *g_class);
public alias extern(C) int function(void* cacheData, GTypeClass* gClass) GTypeClassCacheFunc;

/*
 * A callback called after an interface vtable is initialized.
 * See g_type_add_interface_check().
 * check_data :
 * data passed to g_type_add_interface_check().
 * g_iface :
 * the interface that has been initialized
 * Since 2.4
 */
// void (*GTypeInterfaceCheckFunc) (gpointer check_data,  gpointer g_iface);
public alias extern(C) void function(void* checkData, void* gIface) GTypeInterfaceCheckFunc;

/*
 * The type of the use_plugin function of GTypePluginClass, which gets called
 * to increase the use count of plugin.
 * plugin :
 * the GTypePlugin whose use count should be increased
 */
// void (*GTypePluginUse) (GTypePlugin *plugin);
public alias extern(C) void function(GTypePlugin* plugin) GTypePluginUse;

/*
 * The type of the unuse_plugin function of GTypePluginClass.
 * plugin :
 * the GTypePlugin whose use count should be decreased
 */
// void (*GTypePluginUnuse) (GTypePlugin *plugin);
public alias extern(C) void function(GTypePlugin* plugin) GTypePluginUnuse;

/*
 * The type of the complete_type_info function of GTypePluginClass.
 * plugin :
 * the GTypePlugin
 * g_type :
 * the GType whose info is completed
 * info :
 * the GTypeInfo struct to fill in
 * value_table :
 * the GTypeValueTable to fill in
 */
// void (*GTypePluginCompleteTypeInfo) (GTypePlugin *plugin,  GType g_type,  GTypeInfo *info,  GTypeValueTable *value_table);
public alias extern(C) void function(GTypePlugin* plugin, GType gType, GTypeInfo* info, GTypeValueTable* valueTable) GTypePluginCompleteTypeInfo;

/*
 * The type of the complete_interface_info function of GTypePluginClass.
 * plugin :
 * the GTypePlugin
 * instance_type :
 * the GType of an instantiable type to which the interface
 * is added
 * interface_type :
 * the GType of the interface whose info is completed
 * info :
 * the GInterfaceInfo to fill in
 */
// void (*GTypePluginCompleteInterfaceInfo) (GTypePlugin *plugin,  GType instance_type,  GType interface_type,  GInterfaceInfo *info);
public alias extern(C) void function(GTypePlugin* plugin, GType instanceType, GType interfaceType, GInterfaceInfo* info) GTypePluginCompleteInterfaceInfo;

/*
 * The type of the get_property function of GObjectClass.
 * object :
 * a GObject
 * property_id :
 * the numeric id under which the property was registered with
 * g_object_class_install_property().
 * value :
 * a GValue to return the property value in
 * pspec :
 * the GParamSpec describing the property
 */
// void (*GObjectGetPropertyFunc) (GObject *object,  guint property_id,  GValue *value,  GParamSpec *pspec);
public alias extern(C) void function(GObject* object, uint propertyId, GValue* value, GParamSpec* pspec) GObjectGetPropertyFunc;

/*
 * The type of the set_property function of GObjectClass.
 * object :
 * a GObject
 * property_id :
 * the numeric id under which the property was registered with
 * g_object_class_install_property().
 * value :
 * the new value for the property
 * pspec :
 * the GParamSpec describing the property
 */
// void (*GObjectSetPropertyFunc) (GObject *object,  guint property_id,  const GValue *value,  GParamSpec *pspec);
public alias extern(C) void function(GObject* object, uint propertyId, GValue* value, GParamSpec* pspec) GObjectSetPropertyFunc;

/*
 * The type of the finalize function of GObjectClass.
 * object :
 * the GObject being finalized
 */
// void (*GObjectFinalizeFunc) (GObject *object);
public alias extern(C) void function(GObject* object) GObjectFinalizeFunc;

/*
 * A GWeakNotify function can be added to an object as a callback that gets
 * triggered when the object is finalized. Since the object is already being
 * finalized when the GWeakNotify is called, there's not much you could do
 * with the object, apart from e.g. using its address as hash-index or the like.
 * data :
 * data that was provided when the weak reference was established
 * where_the_object_was :
 * the object being finalized
 */
// void (*GWeakNotify) (gpointer data,  GObject *where_the_object_was);
public alias extern(C) void function(void* data, GObject* whereTheObjectWas) GWeakNotify;

/*
 * A callback function used for notification when the state
 * of a toggle reference changes. See g_object_add_toggle_ref().
 * data :
 * Callback data passed to g_object_add_toggle_ref()
 * object :
 * The object on which g_object_add_toggle_ref() was called.
 * is_last_ref :
 * TRUE if the toggle reference is now the
 * last reference to the object. FALSE if the toggle
 * reference was the last reference and there are now other
 * references.
 */
// void (*GToggleNotify) (gpointer data,  GObject *object,  gboolean is_last_ref);
public alias extern(C) void function(void* data, GObject* object, int isLastRef) GToggleNotify;

/*
 * This function is provided by the user and should produce a copy
 * of the passed in boxed structure.
 * boxed :
 * The boxed structure to be copied.
 * Returns :
 * The newly created copy of the boxed structure.
 */
// gpointer (*GBoxedCopyFunc) (gpointer boxed);
public alias extern(C) void* function(void* boxed) GBoxedCopyFunc;

/*
 * This function is provided by the user and should free the boxed
 * structure passed.
 * boxed :
 * The boxed structure to be freed.
 */
// void (*GBoxedFreeFunc) (gpointer boxed);
public alias extern(C) void function(void* boxed) GBoxedFreeFunc;

/*
 * The type of value transformation functions which can be registered with
 * g_value_register_transform_func().
 * src_value :
 * Source value.
 * dest_value :
 * Target value.
 */
// void (*GValueTransform) (const GValue *src_value,  GValue *dest_value);
public alias extern(C) void function(GValue* srcValue, GValue* destValue) GValueTransform;

/*
 * The signal accumulator is a special callback function that can be used
 * to collect return values of the various callbacks that are called
 * during a signal emission. The signal accumulator is specified at signal
 * creation time, if it is left NULL, no accumulation of callback return
 * values is performed. The return value of signal emissions is then the
 * value returned by the last callback.
 * ihint :
 * Signal invocation hint, see GSignalInvocationHint.
 * return_accu :
 * Accumulator to collect callback return values in, this
 * is the return value of the current signal emission.
 * handler_return :
 * A GValue holding the return value of the signal handler.
 * data :
 * Callback data that was specified when creating the signal.
 * Returns :
 * The accumulator function returns whether the signal emission
 * should be aborted. Returning FALSE means to abort the
 * current emission and TRUE is returned for continuation.
 */
// gboolean (*GSignalAccumulator) (GSignalInvocationHint *ihint,  GValue *return_accu,  const GValue *handler_return,  gpointer data);
public alias extern(C) int function(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, void* data) GSignalAccumulator;

/*
 * A simple function pointer to get invoked when the signal is emitted. This
 * allows you to tie a hook to the signal type, so that it will trap all
 * emissions of that signal, from any object.
 * You may not attach these to signals created with the G_SIGNAL_NO_HOOKS flag.
 * ihint :
 * Signal invocation hint, see GSignalInvocationHint.
 * n_param_values :
 * the number of parameters to the function, including
 * the instance on which the signal was emitted.
 * param_values :
 * the instance on which
 * the signal was emitted, followed by the parameters of the emission. [array length=n_param_values]
 * data :
 * user data associated with the hook.
 * Returns :
 * whether it wants to stay connected. If it returns FALSE, the signal
 * hook is disconnected (and destroyed).
 */
// gboolean (*GSignalEmissionHook) (GSignalInvocationHint *ihint,  guint n_param_values,  const GValue *param_values,  gpointer data);
public alias extern(C) int function(GSignalInvocationHint* ihint, uint nParamValues, GValue* paramValues, void* data) GSignalEmissionHook;

/*
 * The type used for callback functions in structure definitions and function
 * signatures. This doesn't mean that all callback functions must take no
 * parameters and return void. The required signature of a callback function
 * is determined by the context in which is used (e.g. the signal to which it
 * is connected). Use G_CALLBACK() to cast the callback function to a GCallback.
 */
// void (*GCallback) (void);
public alias extern(C) void function() GCallback;

/*
 * The type used for marshaller functions.
 * closure :
 * the GClosure to which the marshaller belongs
 * return_value :
 * a GValue to store the return
 * value. May be NULL if the callback of closure doesn't return a
 * value. [allow-none]
 * n_param_values :
 * the length of the param_values array
 * param_values :
 * an array of
 * GValues holding the arguments on which to invoke the
 * callback of closure. [array length=n_param_values]
 * invocation_hint :
 * the invocation hint given as the
 * last argument to g_closure_invoke(). [allow-none]
 * marshal_data :
 * additional data specified when
 * registering the marshaller, see g_closure_set_marshal() and
 * g_closure_set_meta_marshal(). [allow-none]
 */
// void (*GClosureMarshal) (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
public alias extern(C) void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) GClosureMarshal;

/*
 */
// void (*GVaClosureMarshal) (GClosure *closure,  GValue *return_value,  gpointer instance,  va_list args,  gpointer marshal_data,  int n_params,  GType *param_types);
public alias extern(C) void function(GClosure* closure, GValue* returnValue, void* instanc, void* args, void* marshalData, int nParams, GType* paramTypes) GVaClosureMarshal;

/*
 * The type used for the various notification callbacks which can be registered
 * on closures.
 * data :
 * data specified when registering the notification callback
 * closure :
 * the GClosure on which the notification is emitted
 */
// void (*GClosureNotify) (gpointer data,  GClosure *closure);
public alias extern(C) void function(void* data, GClosure* closure) GClosureNotify;

/*
 * A function to be called to transform the source property of source
 * from source_value into the target property of target
 * using target_value.
 * binding :
 * a GBinding
 * source_value :
 * the value of the source property
 * target_value :
 * the value of the target property
 * user_data :
 * data passed to the transform function
 * Returns :
 * TRUE if the transformation was successful, and FALSE
 * otherwise
 * Since 2.26
 */
// gboolean (*GBindingTransformFunc) (GBinding *binding,  const GValue *source_value,  GValue *target_value,  gpointer user_data);
public alias extern(C) int function(GBinding* binding, GValue* sourceValue, GValue* targetValue, void* userData) GBindingTransformFunc;
