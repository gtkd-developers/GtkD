/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

module gobject.typedefs;


public import glib.typedefs;



// G_TYPE_*
enum GType
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
	RESERVED_GLIB_FIRST = 21<<2,
	RESERVED_GLIB_LAST = 31<<2,
	RESERVED_BSE_FIRST = 32<<2,
	RESERVED_BSE_LAST = 48<<2,
	RESERVED_USER_FIRST = 49<<2,

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
 * The GTypeDebugFlags enumeration values can be passed to
 * g_type_init_with_debug_flags() to trigger debugging messages during runtime.
 * Note that the messages can also be triggered by setting the
 * GOBJECT_DEBUG environment variable to a ':'-separated list of
 * "objects" and "signals".
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
 */
public enum GTypeFundamentalFlags
{
	LAG_CLASSED = (1 << 0),
	LAG_INSTANTIATABLE = (1 << 1),
	LAG_DERIVABLE = (1 << 2),
	LAG_DEEP_DERIVABLE = (1 << 3)
}
alias GTypeFundamentalFlags TypeFundamentalFlags;

/**
 * Through the GParamFlags flag values, certain aspects of parameters
 * can be configured.
 * G_PARAM_READABLE
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
	STATIC_BLURB = 1 << 7
}
alias GParamFlags ParamFlags;

/**
 * The signal flags are used to specify a signal's behaviour, the overall
 * signal description outlines how especially the RUN flags control the
 * stages of a signal emission.
 * G_SIGNAL_RUN_FIRST
 */
public enum GSignalFlags
{
	RUN_FIRST = 1 << 0,
	RUN_LAST = 1 << 1,
	RUN_CLEANUP = 1 << 2,
	NO_RECURSE = 1 << 3,
	DETAILED = 1 << 4,
	ACTION = 1 << 5,
	NO_HOOKS = 1 << 6
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
 */
public enum GConnectFlags
{
	AFTER = 1 << 0,
	SWAPPED = 1 << 1
}
alias GConnectFlags ConnectFlags;

struct GValue
{
	align(4)
	{
		GType		g_type;
		union Data
		{
			gint	v_int;
			guint	v_uint;
			glong	v_long;
			gulong	v_ulong;
			gint64      v_int64;
			guint64     v_uint64;
			gfloat	v_float;
			gdouble	v_double;
			gpointer	v_pointer;
		};
	}
	Data data1;
	Data data2;
};

/**
 * An opaque structure used as the base of all interface types.
 */
public struct GTypeInterface;


/**
 * An opaque structure used as the base of all type instances.
 */
public struct GTypeInstance;


/**
 * An opaque structure used as the base of all classes.
 */
public struct GTypeClass;


/**
 * This structure is used to provide the type system with the information
 * required to initialize and destruct (finalize) a type's class and
 * instances thereof.
 * The initialized structure is passed to the g_type_register_static() function
 * (or is copied into the provided GTypeInfo structure in the
 * g_type_plugin_complete_type_info()). The type system will perform a deep
 * copy of this structure, so it's memory does not need to be persistent
 * across invocation of g_type_register_static().
 * guint16class_size;
 */
public struct GTypeInfo;
// /+* interface types, classed types, instantiated types +/
// ushort classSize;
// GBaseInitFunc baseInit;
// GBaseFinalizeFunc baseFinalize;
// /+* interface types, classed types, instantiated types +/
// GClassInitFunc classInit;
// GClassFinalizeFunc classFinalize;
// void* classData;
// /+* instantiated types +/
// ushort instanceSize;
// ushort nPreallocs;
// GInstanceInitFunc instanceInit;
// /+* value handling +/
// GTypeValueTable *valueTable;


/**
 * A structure that provides information to the type system which is
 * used specifically for managing fundamental types.
 * GTypeFundamentalFlagstype_flags;
 * GTypeFundamentalFlags describing the characteristics of the fundamental type
 */
public struct GTypeFundamentalInfo;
// GTypeFundamentalFlags typeFlags;


/**
 * A structure that provides information to the type system which is
 * used specifically for managing interface types.
 * GInterfaceInitFuncinterface_init;
 */
public struct GInterfaceInfo;
// GInterfaceInitFunc interfaceInit;
// GInterfaceFinalizeFunc interfaceFinalize;
// void* interfaceData;


/**
 * The GTypeValueTable provides the functions required by the GValue implementation,
 * to serve as a container for values of a type.
 * value_init()
 */
public struct GTypeValueTable;
// void (*valueInit) (GValue *value);
// void (*valueFree) (GValue *value);
// void (*valueCopy) ( GValue *srcValue,
// GValue *destValue);
// /+* varargs functionality (optional) +/
// void* (*valuePeekPointer) ( GValue *value);
// char *collectFormat;
// char* (*collectValue) (GValue *value,
// uint nCollectValues,
// GTypeCValue *collectValues,
// uint collectFlags);
// char *lcopyFormat;
// char* (*lcopyValue) ( GValue *value,
// uint nCollectValues,
// GTypeCValue *collectValues,
// uint collectFlags);


/**
 * A structure holding information for a specific type. It is
 * filled in by the g_type_query() function.
 * GTypetype;
 * the GType value of the type.
 * constgchar*type_name;
 * the name of the type.
 * guintclass_size;
 * the size of the class structure.
 * guintinstance_size;
 * the size of the instance structure.
 */
public struct GTypeQuery;
// GType type;
// char *typeName;
// uint classSize;
// uint instanceSize;


/**
 * Main Gtk struct.
 * The GTypePlugin typedef is used as a placeholder
 * for objects that implement the GTypePlugin
 * interface.
 */
public struct GTypePlugin;


/**
 * The GTypePlugin interface is used by the type system in order to handle
 * the lifecycle of dynamically loaded types.
 * GTypePluginUseuse_plugin;
 * Increases the use count of the plugin.
 * GTypePluginUnuseunuse_plugin;
 * Decreases the use count of the plugin.
 * GTypePluginCompleteTypeInfocomplete_type_info;
 * Fills in the GTypeInfo and
 */
public struct GTypePluginClass;
// GTypePluginUse usePlugin;
// GTypePluginUnuse unusePlugin;
// GTypePluginCompleteTypeInfo completeTypeInfo;
// GTypePluginCompleteInterfaceInfo completeInterfaceInfo;


/**
 * Main Gtk struct.
 * The members of the GTypeModule structure should not
 * be accessed directly, except for the name field.
 * gchar*name;
 * the name of the module
 */
public struct GTypeModule
{
	char *name;
}


/**
 * In order to implement dynamic loading of types based on GTypeModule,
 * the load and unload functions in GTypeModuleClass must be implemented.
 * GObjectClassparent_class;
 * the parent class
 * load()
 * loads the module and registers one or more types using
 */
public struct GTypeModuleClass;
// GObjectClass parentClass;
// int (* load) (GTypeModule *modul);
// void (* unload) (GTypeModule *modul);


/**
 * Main Gtk struct.
 * All the fields in the GObject structure are private
 * to the GObject implementation and should never be accessed directly.
 */
public struct GObject;


/**
 * The class structure for the GObject type.
 * Example4.Implementing singletons using a constructor
 * static MySingleton *the_singleton = NULL;
 * static GObject*
 * my_singleton_constructor (GType type,
 */
public struct GObjectClass;
// GTypeClass gTypeClass;
// /+* overridable methods +/
// GObject* (*constructor) (GType type,
// uint nConstructProperties,
// GObjectConstructParam *constructProperties);
// void (*setProperty) (GObject *object,
// uint propertyId,
// GValue *value,
// GParamSpec *pspec);
// void (*getProperty) (GObject *object,
// uint propertyId,
// GValue *value,
// GParamSpec *pspec);
// void (*dispose) (GObject *object);
// void (*finalize) (GObject *object);
// /+* seldomly overidden +/
// void (*dispatchPropertiesChanged) (GObject *object,
// uint nPspecs,
// GParamSpec **pspecs);
// /+* signals +/
// void (*notify) (GObject *object,
// GParamSpec *pspec);


/**
 * The GObjectConstructParam struct is an auxiliary
 * structure used to hand GParamSpec/GValue pairs to the constructor of
 * a GObjectClass.
 * GParamSpec*pspec;
 * the GParamSpec of the construct parameter
 * GValue*value;
 * the value to set the parameter to
 */
public struct GObjectConstructParam;
// GParamSpec *pspec;
// GValue *value;


/**
 * The GParameter struct is an auxiliary structure used
 * to hand parameter name/value pairs to g_object_newv().
 * constgchar*name;
 * the parameter name
 * GValuevalue;
 * the parameter value
 */
public struct GParameter;
// char *name;
// GValue value;


/**
 * The class of an enumeration type holds information about its
 * possible values.
 * GTypeClassg_type_class;
 * the parent class
 * gintminimum;
 * the smallest possible value.
 * gintmaximum;
 * the largest possible value.
 * guintn_values;
 * the number of possible values.
 * GEnumValue*values;
 * an array of GEnumValue structs describing the
 * individual values.
 */
public struct GEnumClass;
// GTypeClass gTypeClass;
// int minimum;
// int maximum;
// uint nValues;
// GEnumValue *values;


/**
 * The class of a flags type holds information about its
 * possible values.
 * GTypeClassg_type_class;
 * the parent class
 * guintmask;
 * a mask covering all possible values.
 * guintn_values;
 * the number of possible values.
 * GFlagsValue*values;
 * an array of GFlagsValue structs describing the
 * individual values.
 */
public struct GFlagsClass;
// GTypeClass gTypeClass;
// uint mask;
// uint nValues;
// GFlagsValue *values;


/**
 * Main Gtk struct.
 * A structure which contains a single enum value, it's name, and it's
 * nickname.
 * gintvalue;
 * the enum value
 * gchar*value_name;
 * the name of the value
 * gchar*value_nick;
 * the nickname of the value
 */
public struct GEnumValue
{
	int value;
	char *valueName;
	char *valueNick;
}


/**
 * A structure which contains a single flags value, it's name, and it's
 * nickname.
 * guintvalue;
 * the flags value
 * gchar*value_name;
 * the name of the value
 * gchar*value_nick;
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
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * gbooleandefault_value;
 */
public struct GParamSpecBoolean;
// GParamSpec parentInstance;
// int defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for character properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * gint8minimum;
 */
public struct GParamSpecChar;
// GParamSpec parentInstance;
// byte minimum;
// byte maximum;
// byte defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for unsigned character properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * guint8minimum;
 */
public struct GParamSpecUChar;
// GParamSpec parentInstance;
// byte minimum;
// byte maximum;
// byte defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for integer properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * gintminimum;
 */
public struct GParamSpecInt;
// GParamSpec parentInstance;
// int minimum;
// int maximum;
// int defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for unsigned integer properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * guintminimum;
 */
public struct GParamSpecUInt;
// GParamSpec parentInstance;
// uint minimum;
// uint maximum;
// uint defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for long integer properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * glongminimum;
 */
public struct GParamSpecLong;
// GParamSpec parentInstance;
// int minimum;
// int maximum;
// int defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for unsigned long integer properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * gulongminimum;
 */
public struct GParamSpecULong;
// GParamSpec parentInstance;
// uint minimum;
// uint maximum;
// uint defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for 64bit integer properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * gint64minimum;
 */
public struct GParamSpecInt64;
// GParamSpec parentInstance;
// long minimum;
// long maximum;
// long defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for unsigned 64bit integer properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * guint64minimum;
 */
public struct GParamSpecUInt64;
// GParamSpec parentInstance;
// ulong minimum;
// ulong maximum;
// ulong defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for float properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * gfloatminimum;
 */
public struct GParamSpecFloat;
// GParamSpec parentInstance;
// float minimum;
// float maximum;
// float defaultValue;
// float epsilon;


/**
 * A GParamSpec derived structure that contains the meta data for double properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * gdoubleminimum;
 */
public struct GParamSpecDouble;
// GParamSpec parentInstance;
// double minimum;
// double maximum;
// double defaultValue;
// double epsilon;


/**
 * A GParamSpec derived structure that contains the meta data for enum
 * properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * GEnumClass*enum_class;
 * the GEnumClass for the enum
 * gintdefault_value;
 */
public struct GParamSpecEnum;
// GParamSpec parentInstance;
// GEnumClass *enumClass;
// int defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for flags
 * properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * GFlagsClass*flags_class;
 * the GFlagsClass for the flags
 * guintdefault_value;
 */
public struct GParamSpecFlags;
// GParamSpec parentInstance;
// GFlagsClass *flagsClass;
// uint defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for string
 * properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * gchar*default_value;
 */
public struct GParamSpecString;
// GParamSpec parentInstance;
// char *defaultValue;
// char *csetFirst;
// char *csetNth;
// char substitutor;
// uint nullFoldIfEmpty : 1;
// uint ensureNonNull : 1;


/**
 * A GParamSpec derived structure that contains the meta data for G_TYPE_PARAM
 * properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 */
public struct GParamSpecParam;
// GParamSpec parentInstance;


/**
 * A GParamSpec derived structure that contains the meta data for boxed properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 */
public struct GParamSpecBoxed;
// GParamSpec parentInstance;


/**
 * A GParamSpec derived structure that contains the meta data for pointer properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 */
public struct GParamSpecPointer;
// GParamSpec parentInstance;


/**
 * A GParamSpec derived structure that contains the meta data for object properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 */
public struct GParamSpecObject;
// GParamSpec parentInstance;


/**
 * A GParamSpec derived structure that contains the meta data for unichar (unsigned integer) properties.
 * GParamSpecparent_instance;
 * private GParamSpec portion
 * gunichardefault_value;
 */
public struct GParamSpecUnichar;
// GParamSpec parentInstance;
// gunichar defaultValue;


/**
 * A GParamSpec derived structure that contains the meta data for GValueArray properties.
 * GParamSpecparent_instance;
 */
public struct GParamSpecValueArray;
// GParamSpec parentInstance;
// GParamSpec *elementSpec;
// uint fixedNElements;


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
public struct GParamSpecOverride;


/**
 * A GParamSpec derived structure that contains the meta data for GType properties.
 * GParamSpecparent_instance;
 */
public struct GParamSpecGType;
// GParamSpec parentInstance;
// GType isAType;


/**
 * Main Gtk struct.
 * All fields of the GParamSpec struct are private and
 * should not be used directly, except for the following:
 * GTypeInstanceg_type_instance;
 * private GTypeInstance portion
 * gchar*name;
 */
public struct GParamSpec;
// GTypeInstance gTypeInstance;
// char *name;
// GParamFlags flags;
// GType valueType;
// GType ownerType; /+* class or interface using this property +/


/**
 * The class structure for the GParamSpec type.
 * Normally, GParamSpec classes are filled by
 * g_param_type_register_static().
 * GTypeClassg_type_class;
 * the parent class
 * GTypevalue_type;
 * the GValue type for this parameter
 * finalize()
 * The instance finalization function (optional), should chain
 */
public struct GParamSpecClass;
// GTypeClass gTypeClass;
// GType valueType;
// void (*finalize) (GParamSpec *pspec);
// /+* GParam methods +/
// void (*valueSetDefault) (GParamSpec *pspec,
// GValue *value);
// int (*valueValidate) (GParamSpec *pspec,
// GValue *value);
// int (*valuesCmp) (GParamSpec *pspec,
// GValue *value1,
// GValue *value2);


/**
 * This structure is used to provide the type system with the information
 * required to initialize and destruct (finalize) a parameter's class and
 * instances thereof.
 * The initialized structure is passed to the g_param_type_register_static()
 * The type system will perform a deep copy of this structure, so it's memory
 * does not need to be persistent across invocation of
 * g_param_type_register_static().
 * guint16instance_size;
 * Size of the instance (object) structure.
 * guint16n_preallocs;
 * Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the slice allocator now.
 * instance_init()
 * Location of the instance initialization function (optional).
 * GTypevalue_type;
 * The GType of values conforming to this GParamSpec
 * finalize()
 * The instance finalization function (optional).
 * value_set_default()
 * Resets a value to the default value for pspec
 */
public struct GParamSpecTypeInfo;
// /+* type system portion +/
// ushort instanceSize; /+* obligatory +/
// ushort nPreallocs; /+* optional +/
// void (*instanceInit) (GParamSpec *pspec); /+* optional +/
// /+* class portion +/
// GType valueType; /+* obligatory +/
// void (*finalize) (GParamSpec *pspec); /+* optional +/
// void (*valueSetDefault) (GParamSpec *pspec, /+* recommended +/
// GValue *value);
// int (*valueValidate) (GParamSpec *pspec, /+* optional +/
// GValue *value);
// int (*valuesCmp) (GParamSpec *pspec, /+* recommended +/
// GValue *value1,
// GValue *value2);


/**
 * A GParamSpecPool maintains a collection of GParamSpecs which can be
 * quickly accessed by owner and name. The implementation of the GObject property
 * system uses such a pool to store the GParamSpecs of the properties all object
 * types.
 */
public struct GParamSpecPool;


/**
 * The GSignalInvocationHint structure is used to pass on additional information
 * to callbacks during a signal emission.
 * guintsignal_id;
 */
public struct GSignalInvocationHint;
// uint signalId;
// GQuark detail;
// GSignalFlags runType;


/**
 * A structure holding in-depth information for a specific signal. It is
 * filled in by the g_signal_query() function.
 * guintsignal_id;
 */
public struct GSignalQuery;
// uint signalId;
// char *signalName;
// GType itype;
// GSignalFlags signalFlags;
// GType returnType; /+* mangled with G_SIGNAL_TYPE_STATIC_SCOPE flag +/
// uint nParams;
// GType *paramTypes; /+* mangled with G_SIGNAL_TYPE_STATIC_SCOPE flag +/


/**
 * Main Gtk struct.
 * A GClosure represents a callback supplied by the programmer.
 * volatile	guintin_marshal:1;
 * Indicates whether the closure is currently being invoked with
 */
public struct GClosure;
// uint inMarshal : 1;
// uint isInvalid : 1;


/**
 * A GCClosure is a specialization of GClosure for C function callbacks.
 * GClosureclosure;
 * the GClosure
 * gpointercallback;
 * the callback function
 */
public struct GCClosure;
// GClosure closure;
// void* callback;


/**
 * Main Gtk struct.
 * A GValueArray contains an array of GValue elements.
 * guintn_values;
 */
public struct GValueArray;
// uint nValues;
// GValue *values;


/*
 * Returns the fundamental type which is the ancestor of type.
 * Fundamental types are types that serve as fundaments for the derived types,
 * thus they are the roots of distinct inheritance hierarchies.
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_FUNDAMENTAL(type)	(g_type_fundamental (type))

/*
 * Returns the type ID for the fundamental type number x.
 * Use g_type_fundamental_next() instead of this macro to create new fundamental
 * types.
 * x:
 * the fundamental type number.
 */
// TODO
// #define	G_TYPE_MAKE_FUNDAMENTAL(x)	((GType) ((x) << G_TYPE_FUNDAMENTAL_SHIFT))

/*
 * Returns TRUE if type is an abstract type. An abstract type can not be
 * instantiated and is normally used as an abstract base class for
 * derived classes.
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_IS_ABSTRACT(type) (g_type_test_flags ((type), G_TYPE_FLAG_ABSTRACT))

/*
 * Returns TRUE if type is derived (or in object-oriented terminology:
 * inherited) from another type (this holds true for all non-fundamental
 * types).
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_IS_DERIVED(type) ((type) > G_TYPE_FUNDAMENTAL_MAX)

/*
 * Returns TRUE if type is a fundamental type.
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_IS_FUNDAMENTAL(type) ((type) <= G_TYPE_FUNDAMENTAL_MAX)

/*
 * Returns TRUE if type is a value type which can be used for
 * g_value_init().
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_IS_VALUE_TYPE(type) (g_type_check_is_value_type (type))

/*
 * Returns TRUE if type has a GTypeValueTable.
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_HAS_VALUE_TABLE(type) (g_type_value_table_peek (type) != NULL)

/*
 * Returns TRUE if type is a classed type.
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_IS_CLASSED(type) (g_type_test_flags ((type), G_TYPE_FLAG_CLASSED))

/*
 * Returns TRUE if type can be instantiated. Instantiation is the
 * process of creating an instance (object) of this type.
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_IS_INSTANTIATABLE(type) (g_type_test_flags ((type), G_TYPE_FLAG_INSTANTIATABLE))

/*
 * Returns TRUE if type is a derivable type. A derivable type can
 * be used as the base class of a flat (single-level) class hierarchy.
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_IS_DERIVABLE(type) (g_type_test_flags ((type), G_TYPE_FLAG_DERIVABLE))

/*
 * Returns TRUE if type is a deep derivable type. A deep derivable type
 * can be used as the base class of a deep (multi-level) class hierarchy.
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_IS_DEEP_DERIVABLE(type) (g_type_test_flags ((type), G_TYPE_FLAG_DEEP_DERIVABLE))

/*
 * Returns TRUE if type is an interface type.
 * Interface types are types that provide pure APIs, the implementation
 * of which is provided by another type (which is then said to conform
 * to the interface). GLib interfaces are somewhat analogous to Java
 * interfaces and C++ classes containing only pure virtual functions,
 * with the difference that GType interfaces are not derivable (but see
 * g_type_interface_add_prerequisite() for an alternative).
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_IS_INTERFACE(type) (G_TYPE_FUNDAMENTAL (type) == G_TYPE_INTERFACE)

/*
 * Returns the type identifier from a given instance structure.
 * This macro should only be used in type implementations.
 * instance:
 * Location of a valid GTypeInstance structure.
 */
// TODO
// #define G_TYPE_FROM_INSTANCE(instance) (G_TYPE_FROM_CLASS (((GTypeInstance*) (instance))->g_class))

/*
 * Returns the type identifier from a given class structure.
 * This macro should only be used in type implementations.
 * g_class:
 * Location of a valid GTypeClass structure.
 */
// TODO
// #define G_TYPE_FROM_CLASS(g_class) (((GTypeClass*) (g_class))->g_type)

/*
 * Returns the type identifier from a given interface structure.
 * This macro should only be used in type implementations.
 * g_iface:
 * Location of a valid GTypeInterface structure.
 */
// TODO
// #define G_TYPE_FROM_INTERFACE(g_iface) (((GTypeInterface*) (g_iface))->g_type)

/*
 * Returns the class structure of a given instance, casted
 * to a specified ancestor type g_type of the instance.
 * Warning
 * Note
 * that while calling a GInstanceInitFunc(), the class pointer gets
 * modified, so it might not always return the expected pointer.
 * This macro should only be used in type implementations.
 * instance:
 * 	Location of the GTypeInstance structure.
 * g_type:
 * 	The anchestor type of the class to be returned.
 * c_type:
 * 	The corresponding C type of g_type.
 */
// TODO
// #define G_TYPE_INSTANCE_GET_CLASS(instance, g_type, c_type) (_G_TYPE_IGC ((instance), (g_type), c_type))

/*
 * Returns the interface structure for interface g_type of a given instance.
 * This macro should only be used in type implementations.
 * instance:
 * Location of the GTypeInstance structure.
 * g_type:
 * The interface type to be returned.
 * c_type:
 * The corresponding C type of g_type.
 */
// TODO
// #define G_TYPE_INSTANCE_GET_INTERFACE(instance, g_type, c_type) (_G_TYPE_IGI ((instance), (g_type), c_type))

/*
 * Gets the private structure for a particular type.
 * The private structure must have been registered in the
 * class_init function with g_type_class_add_private().
 * This macro should only be used in type implementations.
 * instance:
 * the instance of a type deriving from private_type.
 * g_type:
 * the type identifying which private data to retrieve.
 * c_type:
 * The C type for the private structure.
 */
// TODO
// #define G_TYPE_INSTANCE_GET_PRIVATE(instance, g_type, c_type) ((c_type*) g_type_instance_get_private ((GTypeInstance*) (instance), (g_type)))

/*
 * Returns TRUE if instance is a valid GTypeInstance structure,
 * otherwise emits a warning and returns FALSE.
 * This macro should only be used in type implementations.
 * instance:
 * Location of a GTypeInstance structure.
 */
// TODO
// #define G_TYPE_CHECK_INSTANCE(instance)				(_G_TYPE_CHI ((GTypeInstance*) (instance)))

/*
 * Checks that instance is an instance of the type identified by g_type
 * and emits a warning if this is not the case. Returns instance casted
 * to a pointer to c_type.
 * This macro should only be used in type implementations.
 * instance:
 * Location of a GTypeInstance structure.
 * g_type:
 * The type to be returned.
 * c_type:
 * The corresponding C type of g_type.
 */
// TODO
// #define G_TYPE_CHECK_INSTANCE_CAST(instance, g_type, c_type) (_G_TYPE_CIC ((instance), (g_type), c_type))

/*
 * Returns TRUE if instance is an instance of the type identified by g_type.
 * Otherwise emits a warning and returns FALSE.
 * This macro should only be used in type implementations.
 * instance:
 * Location of a GTypeInstance structure.
 * g_type:
 * The type to be checked
 */
// TODO
// #define G_TYPE_CHECK_INSTANCE_TYPE(instance, g_type) (_G_TYPE_CIT ((instance), (g_type)))

/*
 * Checks that g_class is a class structure of the type identified by g_type
 * and emits a warning if this is not the case. Returns g_class casted
 * to a pointer to c_type.
 * This macro should only be used in type implementations.
 * g_class:
 * Location of a GTypeClass structure.
 * g_type:
 * The type to be returned.
 * c_type:
 * The corresponding C type of class structure of g_type.
 */
// TODO
// #define G_TYPE_CHECK_CLASS_CAST(g_class, g_type, c_type) (_G_TYPE_CCC ((g_class), (g_type), c_type))

/*
 * Returns TRUE if g_class is a class structure of the type identified by
 * g_type. Otherwise emits a warning and returns FALSE.
 * This macro should only be used in type implementations.
 * g_class:
 * Location of a GTypeClass structure.
 * g_type:
 * The type to be checked.
 */
// TODO
// #define G_TYPE_CHECK_CLASS_TYPE(g_class, g_type) (_G_TYPE_CCT ((g_class), (g_type)))

/*
 * Returns TRUE if value has been initialized to hold values
 * of a value type.
 * This macro should only be used in type implementations.
 * value:
 * a GValue
 */
// TODO
// #define G_TYPE_CHECK_VALUE(value)				(_G_TYPE_CHV ((value)))

/*
 * Returns TRUE if value has been initialized to hold values
 * of type g_type.
 * This macro should only be used in type implementations.
 * value:
 * a GValue
 * g_type:
 * The type to be checked.
 */
// TODO
// #define G_TYPE_CHECK_VALUE_TYPE(value, g_type)			(_G_TYPE_CVH ((value), (g_type)))

/*
 * A convenience macro for type implementations, which declares a
 * class initialization function, an instance initialization function (see GTypeInfo for information about
 * these) and a static variable named t_n_parent_class pointing to the parent class. Furthermore, it defines
 * a *_get_type() function. See G_DEFINE_TYPE_EXTENDED() for an example.
 * TN:
 * The name of the new type, in Camel case.
 * t_n:
 * The name of the new type, in lowercase, with words
 *  separated by '_'.
 * T_P:
 * The GType of the parent type.
 * Since 2.4
 */
// TODO
// #define G_DEFINE_TYPE(TN, t_n, T_P) G_DEFINE_TYPE_EXTENDED (TN, t_n, T_P, 0, {})

/*
 * A convenience macro for type implementations.
 * Similar to G_DEFINE_TYPE(), but allows to insert custom code into the
 * *_get_type() function, e.g. interface implementations via G_IMPLEMENT_INTERFACE().
 * See G_DEFINE_TYPE_EXTENDED() for an example.
 * TN:
 * The name of the new type, in Camel case.
 * t_n:
 * The name of the new type in lowercase, with words separated by '_'.
 * T_P:
 * The GType of the parent type.
 * _C_:
 * Custom code that gets inserted in the *_get_type() function.
 * Since 2.4
 */
// TODO
// #define G_DEFINE_TYPE_WITH_CODE(TN, t_n, T_P, _C_) G_DEFINE_TYPE_EXTENDED (TN, t_n, T_P, 0, _C_)

/*
 * A convenience macro for type implementations.
 * Similar to G_DEFINE_TYPE(), but defines an abstract type.
 * See G_DEFINE_TYPE_EXTENDED() for an example.
 * TN:
 * The name of the new type, in Camel case.
 * t_n:
 * The name of the new type, in lowercase, with words
 *  separated by '_'.
 * T_P:
 * The GType of the parent type.
 * Since 2.4
 */
// TODO
// #define G_DEFINE_ABSTRACT_TYPE(TN, t_n, T_P) G_DEFINE_TYPE_EXTENDED (TN, t_n, T_P, G_TYPE_FLAG_ABSTRACT, {})

/*
 * A convenience macro for type implementations.
 * Similar to G_DEFINE_TYPE_WITH_CODE(), but defines an abstract type and allows to
 * insert custom code into the *_get_type() function, e.g. interface implementations
 * via G_IMPLEMENT_INTERFACE(). See G_DEFINE_TYPE_EXTENDED() for an example.
 * TN:
 * The name of the new type, in Camel case.
 * t_n:
 * The name of the new type, in lowercase, with words
 *  separated by '_'.
 * T_P:
 * The GType of the parent type.
 * _C_:
 * Custom code that gets inserted in the @type_name_get_type() function.
 * Since 2.4
 */
// TODO
// #define G_DEFINE_ABSTRACT_TYPE_WITH_CODE(TN, t_n, T_P, _C_) G_DEFINE_TYPE_EXTENDED (TN, t_n, T_P, G_TYPE_FLAG_ABSTRACT, _C_)

/*
 * A convenience macro to ease interface addition in the _C_ section
 * of G_DEFINE_TYPE_WITH_CODE() or G_DEFINE_ABSTRACT_TYPE_WITH_CODE().
 * See G_DEFINE_TYPE_EXTENDED() for an example.
 * Note that this macro can only be used together with the G_DEFINE_TYPE_*
 * macros, since it depends on variable names from those macros.
 * TYPE_IFACE:
 * The GType of the interface to add
 * iface_init:
 * The interface init function
 * Since 2.4
 */
// TODO
// #define G_IMPLEMENT_INTERFACE(TYPE_IFACE, iface_init)

/*
 * The most general convenience macro for type implementations, on which
 * G_DEFINE_TYPE(), etc are based.
 * G_DEFINE_TYPE_EXTENDED (GtkGadget,
 *  gtk_gadget,
 *  GTK_TYPE_WIDGET,
 *  0,
 *  G_IMPLEMENT_INTERFACE (TYPE_GIZMO,
 *  gtk_gadget_gizmo_init));
 * expands to
 * static void gtk_gadget_init (GtkGadget *self);
 * static void gtk_gadget_class_init (GtkGadgetClass *klass);
 * static gpointer gtk_gadget_parent_class = NULL;
 * static void gtk_gadget_class_intern_init (gpointer klass)
 * {
	 *  gtk_gadget_parent_class = g_type_class_peek_parent (klass);
	 *  gtk_gadget_class_init ((GtkGadgetClass*) klass);
 * }
 * GType
 * gtk_gadget_get_type (void)
 * {
	 *  static GType g_define_type_id = 0;
	 *  if (G_UNLIKELY (g_define_type_id == 0))
	 *  {
		 *  static const GTypeInfo g_define_type_info = {
			 *  sizeof (GtkGadgetClass),
			 *  (GBaseInitFunc) NULL,
			 *  (GBaseFinalizeFunc) NULL,
			 *  (GClassInitFunc) gtk_gadget_class_intern_init,
			 *  (GClassFinalizeFunc) NULL,
			 *  NULL, /+* class_data +/
			 *  sizeof (GtkGadget),
			 *  0, /+* n_preallocs +/
			 *  (GInstanceInitFunc) gtk_gadget_init,
		 *  };
		 *  g_define_type_id = g_type_register_static (GTK_TYPE_WIDGET, "GtkGadget", g_define_type_info, 0);
		 *  {
			 *  static const GInterfaceInfo g_implement_interface_info = {
				 *  (GInterfaceInitFunc) gtk_gadget_gizmo_init
			 *  };
			 *  g_type_add_interface_static (g_define_type_id, TYPE_GIZMO, g_implement_interface_info);
		 *  }
	 *  }
	 *  return g_define_type_id;
 * }
 * The only pieces which have to be manually provided are the definitions of the
 * instance and class structure and the definitions of the instance and class
 * init functions.
 * TypeName:
 * The name of the new type, in Camel case.
 * type_name:
 * The name of the new type, in lowercase, with words
 *  separated by '_'.
 * TYPE_PARENT:
 * The GType of the parent type.
 * flags:
 * GTypeFlags to pass to g_type_register_static()
 * CODE:
 * Custom code that gets inserted in the *_get_type() function.
 * Since 2.4
 */
// TODO
// #define G_DEFINE_TYPE_EXTENDED(TypeName, type_name, TYPE_PARENT, flags, CODE)

/*
 * Returns a boolean value of FALSE or TRUE indicating whether
 * the passed in type id is a G_TYPE_OBJECT or derived from it.
 * type:
 * Type id to check for is a G_TYPE_OBJECT relationship.
 * Returns:
 * FALSE or TRUE, indicating whether type is a G_TYPE_OBJECT.
 */
// TODO
// #define G_TYPE_IS_OBJECT(type) (G_TYPE_FUNDAMENTAL (type) == G_TYPE_OBJECT)

/*
 * Casts a GObject or derived pointer into a (GObject*) pointer.
 * Depending on the current debugging level, this function may invoke
 * certain runtime checks to identify invalid casts.
 * object:
 * Object which is subject to casting.
 */
// TODO
// #define G_OBJECT(object) (G_TYPE_CHECK_INSTANCE_CAST ((object), G_TYPE_OBJECT, GObject))

/*
 * Checks whether a valid GTypeInstance pointer is of type G_TYPE_OBJECT.
 * object:
 * Instance to check for being a G_TYPE_OBJECT.
 */
// TODO
// #define G_IS_OBJECT(object) (G_TYPE_CHECK_INSTANCE_TYPE ((object), G_TYPE_OBJECT))

/*
 * Casts a derived GObjectClass structure into a GObjectClass structure.
 * class:
 * a valid GObjectClass
 */
// TODO
// #define G_OBJECT_CLASS(class) (G_TYPE_CHECK_CLASS_CAST ((class), G_TYPE_OBJECT, GObjectClass))

/*
 * Checks whether class "is a" valid GObjectClass structure of type
 * G_TYPE_OBJECT or derived.
 * class:
 * a GObjectClass
 */
// TODO
// #define G_IS_OBJECT_CLASS(class) (G_TYPE_CHECK_CLASS_TYPE ((class), G_TYPE_OBJECT))

/*
 * Returns the class structure associated to a GObject instance.
 * object:
 * a GObject instance.
 */
// TODO
// #define G_OBJECT_GET_CLASS(object) (G_TYPE_INSTANCE_GET_CLASS ((object), G_TYPE_OBJECT, GObjectClass))

/*
 * Return the type id of an object.
 * object:
 * Object to return the type id for.
 * Returns:
 * Type id of object.
 */
// TODO
// #define G_OBJECT_TYPE(object) (G_TYPE_FROM_INSTANCE (object))

/*
 * Returns the name of an object's type.
 * object:
 * Object to return the type name for.
 * Returns:
 * Type name of object. The string is owned by the type system and
 * should not be freed.
 */
// TODO
// #define G_OBJECT_TYPE_NAME(object) (g_type_name (G_OBJECT_TYPE (object)))

/*
 * Return the type id of a class structure.
 * class:
 * a valid GObjectClass
 * Returns:
 * Type id of class.
 */
// TODO
// #define G_OBJECT_CLASS_TYPE(class) (G_TYPE_FROM_CLASS (class))

/*
 * Return the name of a class structure's type.
 * class:
 * a valid GObjectClass
 * Returns:
 * Type name of class. The string is owned by the type system and
 * should not be freed.
 */
// TODO
// #define G_OBJECT_CLASS_NAME(class) (g_type_name (G_OBJECT_CLASS_TYPE (class)))

/*
 * This macros should be used to emit a standard warning about unexpected
 * properties in set_property() and get_property() implementations.
 * object:
 * the GObject on which set_property() or get_property() was called
 * property_id:
 * the numeric id of the property
 * pspec:
 * the GParamSpec of the property
 * Signal Details
 * The "notify" signal
 * void user_function (GObject *gobject,
 *  GParamSpec *arg1,
 *  gpointer user_data) : Run first / No recursion / Has details / Action / No hooks
 * The notify signal is emitted on an object when one of its properties
 * has been changed. Note that getting this signal doesn't guarantee that the
 * value of the property has actually changed, it may also be emitted when
 * the setter for the property is called to reinstate the previous value.
 * gobject:
 * the object which received the signal.
 * pspec:
 * the GParamSpec of the property which changed
 * user_data:
 * user data set when the signal handler was connected.
 * See Also
 * GParamSpecObject, g_param_spec_object()
 */
// TODO
// #define G_OBJECT_WARN_INVALID_PROPERTY_ID(object, property_id, pspec)

/*
 * Returns the type identifier from a given GEnumClass structure.
 * class:
 * a GEnumClass
 */
// TODO
// #define G_ENUM_CLASS_TYPE(class) (G_TYPE_FROM_CLASS (class))

/*
 * Returns the static type name from a given GEnumClass structure.
 * class:
 * a GEnumClass
 */
// TODO
// #define G_ENUM_CLASS_TYPE_NAME(class) (g_type_name (G_ENUM_CLASS_TYPE (class)))

/*
 * Returns whether type "is a" G_TYPE_ENUM.
 * type:
 * a GType ID.
 */
// TODO
// #define G_TYPE_IS_ENUM(type)	 (G_TYPE_FUNDAMENTAL (type) == G_TYPE_ENUM)

/*
 * Casts a derived GEnumClass structure into a GEnumClass structure.
 * class:
 * a valid GEnumClass
 */
// TODO
// #define G_ENUM_CLASS(class)	 (G_TYPE_CHECK_CLASS_CAST ((class), G_TYPE_ENUM, GEnumClass))

/*
 * Checks whether class "is a" valid GEnumClass structure of type G_TYPE_ENUM
 * or derived.
 * class:
 * a GEnumClass
 */
// TODO
// #define G_IS_ENUM_CLASS(class)	 (G_TYPE_CHECK_CLASS_TYPE ((class), G_TYPE_ENUM))

/*
 * Returns whether type "is a" G_TYPE_FLAGS.
 * type:
 * a GType ID.
 */
// TODO
// #define G_TYPE_IS_FLAGS(type)	 (G_TYPE_FUNDAMENTAL (type) == G_TYPE_FLAGS)

/*
 * Casts a derived GFlagsClass structure into a GFlagsClass structure.
 * class:
 * a valid GFlagsClass
 */
// TODO
// #define G_FLAGS_CLASS(class)	 (G_TYPE_CHECK_CLASS_CAST ((class), G_TYPE_FLAGS, GFlagsClass))

/*
 * Checks whether class "is a" valid GFlagsClass structure of type G_TYPE_FLAGS
 * or derived.
 * class:
 * a GFlagsClass
 */
// TODO
// #define G_IS_FLAGS_CLASS(class) (G_TYPE_CHECK_CLASS_TYPE ((class), G_TYPE_FLAGS))

/*
 * Returns the type identifier from a given GFlagsClass structure.
 * class:
 * a GFlagsClass
 */
// TODO
// #define G_FLAGS_CLASS_TYPE(class) (G_TYPE_FROM_CLASS (class))

/*
 * Returns the static type name from a given GFlagsClass structure.
 * class:
 * a GFlagsClass
 */
// TODO
// #define G_FLAGS_CLASS_TYPE_NAME(class) (g_type_name (G_FLAGS_CLASS_TYPE (class)))

/*
 * Returns TRUE if value holds (or contains) a value of type.
 * This macro will also check for value != NULL and issue a
 * warning if the check fails.
 * value:
 * A GValue structure.
 * type:
 * A GType value.
 */
// TODO
// #define G_VALUE_HOLDS(value,type)	(G_TYPE_CHECK_VALUE_TYPE ((value), (type)))

/*
 * Returns the type identifier of value.
 * value:
 * A GValue structure.
 */
// TODO
// #define	G_VALUE_TYPE(value)		(((GValue*) (value))->g_type)

/*
 * Returns the type name of value.
 * value:
 * A GValue structure.
 */
// TODO
// #define	G_VALUE_TYPE_NAME(value)	(g_type_name (G_VALUE_TYPE (value)))

/*
 * Return whether the passed in type ID can be used for g_value_init().
 * That is, this macro checks whether this type provides an implementation
 * of the GTypeValueTable functions required for a type to create a GValue of.
 * type:
 * 	 A GType value.
 * Returns:
 * Whether type is suitable as a GValue type.
 */
// TODO
// #define	G_TYPE_IS_VALUE(type)		(g_type_check_is_value_type (type))

/*
 * Returns TRUE if type is an abstract value type. An abstract value type
 * introduces a value table, but can't be used for g_value_init() and is normally
 * used as an abstract base type for derived value types.
 * type:
 * A GType value.
 */
// TODO
// #define G_TYPE_IS_VALUE_ABSTRACT(type) (g_type_test_flags ((type), G_TYPE_FLAG_VALUE_ABSTRACT))

/*
 * Returns TRUE if value is a valid and initialized GValue structure.
 * value:
 * A GValue structure.
 */
// TODO
// #define	G_IS_VALUE(value)		(G_TYPE_CHECK_VALUE (value))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_BOOLEAN.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_BOOLEAN(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_BOOLEAN))

/*
 * Cast a GParamSpec instance into a GParamSpecBoolean.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_BOOLEAN(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_BOOLEAN, GParamSpecBoolean))

/*
 * Return whether the given GValue can hold values of type G_TYPE_BOOLEAN.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_BOOLEAN(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_BOOLEAN))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_CHAR.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_CHAR(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_CHAR))

/*
 * Cast a GParamSpec instance into a GParamSpecChar.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_CHAR(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_CHAR, GParamSpecChar))

/*
 * Return whether the given GValue can hold values of type G_TYPE_CHAR.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_CHAR(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_CHAR))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_UCHAR.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_UCHAR(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_UCHAR))

/*
 * Cast a GParamSpec instance into a GParamSpecUChar.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_UCHAR(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_UCHAR, GParamSpecUChar))

/*
 * Return whether the given GValue can hold values of type G_TYPE_UCHAR.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_UCHAR(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_UCHAR))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_INT.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_INT(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_INT))

/*
 * Cast a GParamSpec instance into a GParamSpecInt.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_INT(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_INT, GParamSpecInt))

/*
 * Return whether the given GValue can hold values of type G_TYPE_INT.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_INT(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_INT))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_UINT.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_UINT(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_UINT))

/*
 * Cast a GParamSpec instance into a GParamSpecUInt.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_UINT(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_UINT, GParamSpecUInt))

/*
 * Return whether the given GValue can hold values of type G_TYPE_UINT.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_UINT(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_UINT))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_LONG.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_LONG(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_LONG))

/*
 * Cast a GParamSpec instance into a GParamSpecLong.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_LONG(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_LONG, GParamSpecLong))

/*
 * Return whether the given GValue can hold values of type G_TYPE_LONG.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_LONG(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_LONG))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_ULONG.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_ULONG(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_ULONG))

/*
 * Cast a GParamSpec instance into a GParamSpecULong.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_ULONG(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_ULONG, GParamSpecULong))

/*
 * Return whether the given GValue can hold values of type G_TYPE_ULONG.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_ULONG(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_ULONG))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_INT64.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_INT64(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_INT64))

/*
 * Cast a GParamSpec instance into a GParamSpecInt64.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_INT64(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_INT64, GParamSpecInt64))

/*
 * Return whether the given GValue can hold values of type G_TYPE_INT64.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_INT64(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_INT64))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_UINT64.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_UINT64(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_UINT64))

/*
 * Cast a GParamSpec instance into a GParamSpecUInt64.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_UINT64(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_UINT64, GParamSpecUInt64))

/*
 * Return whether the given GValue can hold values of type G_TYPE_UINT64.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_UINT64(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_UINT64))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_FLOAT.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_FLOAT(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_FLOAT))

/*
 * Cast a GParamSpec instance into a GParamSpecFloat.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_FLOAT(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_FLOAT, GParamSpecFloat))

/*
 * Return whether the given GValue can hold values of type G_TYPE_FLOAT.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_FLOAT(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_FLOAT))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_DOUBLE.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_DOUBLE(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_DOUBLE))

/*
 * Cast a GParamSpec instance into a GParamSpecDouble.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_DOUBLE(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_DOUBLE, GParamSpecDouble))

/*
 * Return whether the given GValue can hold values of type G_TYPE_DOUBLE.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_DOUBLE(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_DOUBLE))

/*
 * Returns whether the given GParamSpec is of type G_TYPE_PARAM_ENUM.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_ENUM(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_ENUM))

/*
 * Cast a GParamSpec instance into a GParamSpecEnum.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_ENUM(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_ENUM, GParamSpecEnum))

/*
 * Return whether the given GValue can hold values derived from type G_TYPE_ENUM.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_ENUM(value) (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_ENUM))

/*
 * Returns whether the given GParamSpec is of type G_TYPE_PARAM_FLAGS.
 * pspec:
 *  a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_FLAGS(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_FLAGS))

/*
 * Cast a GParamSpec instance into a GParamSpecFlags.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_FLAGS(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_FLAGS, GParamSpecFlags))

/*
 * Returns whether the given GValue can hold values derived from type G_TYPE_FLAGS.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_FLAGS(value) (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_FLAGS))

/*
 * Returns whether the given GParamSpec is of type G_TYPE_PARAM_STRING.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_STRING(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_STRING))

/*
 * Casts a GParamSpec instance into a GParamSpecString.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_STRING(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_STRING, GParamSpecString))

/*
 * Return whether the given GValue can hold values of type G_TYPE_STRING.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_STRING(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_STRING))

/*
 * Returns whether the given GParamSpec is of type G_TYPE_PARAM_PARAM.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_PARAM(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_PARAM))

/*
 * Casts a GParamSpec instance into a GParamSpecParam.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_PARAM(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_PARAM, GParamSpecParam))

/*
 * Return whether the given GValue can hold values derived from type G_TYPE_PARAM.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_PARAM(value)	(G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_PARAM))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_BOXED.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_BOXED(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_BOXED))

/*
 * Cast a GParamSpec instance into a GParamSpecBoxed.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_BOXED(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_BOXED, GParamSpecBoxed))

/*
 * Return whether the given GValue can hold values derived from type G_TYPE_BOXED.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_BOXED(value) (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_BOXED))

/*
 * Returns whether the given GParamSpec is of type G_TYPE_PARAM_POINTER.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_POINTER(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_POINTER))

/*
 * Casts a GParamSpec instance into a GParamSpecPointer.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_POINTER(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_POINTER, GParamSpecPointer))

/*
 * Return whether the given GValue can hold values of type G_TYPE_POINTER.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_POINTER(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_POINTER))

/*
 * Returns whether the given GParamSpec is of type G_TYPE_PARAM_OBJECT.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_OBJECT(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_OBJECT))

/*
 * Casts a GParamSpec instance into a GParamSpecObject.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_OBJECT(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_OBJECT, GParamSpecObject))

/*
 * Return whether the given GValue can hold values derived from type G_TYPE_OBJECT.
 * value:
 * a valid GValue structure
 */
// TODO
// #define G_VALUE_HOLDS_OBJECT(value) (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_OBJECT))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_UNICHAR.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_UNICHAR(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_UNICHAR))

/*
 * Cast a GParamSpec instance into a GParamSpecUnichar.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_UNICHAR(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_UNICHAR, GParamSpecUnichar))

/*
 * Return whether the given GParamSpec is of type G_TYPE_PARAM_VALUE_ARRAY.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_IS_PARAM_SPEC_VALUE_ARRAY(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_VALUE_ARRAY))

/*
 * Cast a GParamSpec instance into a GParamSpecValueArray.
 * pspec:
 * a valid GParamSpec instance
 */
// TODO
// #define G_PARAM_SPEC_VALUE_ARRAY(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_VALUE_ARRAY, GParamSpecValueArray))

/*
 * Returns whether the given GParamSpec is of type G_TYPE_PARAM_OVERRIDE.
 * pspec:
 * a GParamSpec
 * Since 2.4
 */
// TODO
// #define G_IS_PARAM_SPEC_OVERRIDE(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_OVERRIDE))

/*
 * Casts a GParamSpec into a GParamSpecOverride.
 * pspec:
 *  a GParamSpec
 * Since 2.4
 */
// TODO
// #define G_PARAM_SPEC_OVERRIDE(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_OVERRIDE, GParamSpecOverride))

/*
 * Returns whether the given GParamSpec is of type G_TYPE_PARAM_GTYPE.
 * pspec:
 * a GParamSpec
 * Since 2.10
 */
// TODO
// #define G_IS_PARAM_SPEC_GTYPE(pspec) (G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM_GTYPE))

/*
 * Casts a GParamSpec into a GParamSpecGType.
 * pspec:
 *  a GParamSpec
 * Since 2.10
 */
// TODO
// #define G_PARAM_SPEC_GTYPE(pspec) (G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM_GTYPE, GParamSpecGType))

/*
 * Returns whether type "is a" G_TYPE_PARAM.
 * type:
 * a GType ID
 */
// TODO
// #define G_TYPE_IS_PARAM(type)		(G_TYPE_FUNDAMENTAL (type) == G_TYPE_PARAM)

/*
 * Casts a derived GParamSpec object (e.g. of type GParamSpecInt) into
 * a GParamSpec object.
 * pspec:
 * a valid GParamSpec
 */
// TODO
// #define G_PARAM_SPEC(pspec)		(G_TYPE_CHECK_INSTANCE_CAST ((pspec), G_TYPE_PARAM, GParamSpec))

/*
 * Checks whether pspec "is a" valid GParamSpec structure of type G_TYPE_PARAM
 * or derived.
 * pspec:
 * a GParamSpec
 */
// TODO
// #define G_IS_PARAM_SPEC(pspec)		(G_TYPE_CHECK_INSTANCE_TYPE ((pspec), G_TYPE_PARAM))

/*
 * Casts a derived GParamSpecClass structure into a GParamSpecClass structure.
 * pclass:
 * a valid GParamSpecClass
 */
// TODO
// #define G_PARAM_SPEC_CLASS(pclass) (G_TYPE_CHECK_CLASS_CAST ((pclass), G_TYPE_PARAM, GParamSpecClass))

/*
 * Checks whether pclass "is a" valid GParamSpecClass structure of type
 * G_TYPE_PARAM or derived.
 * pclass:
 * a GParamSpecClass
 */
// TODO
// #define G_IS_PARAM_SPEC_CLASS(pclass) (G_TYPE_CHECK_CLASS_TYPE ((pclass), G_TYPE_PARAM))

/*
 * Retrieves the GParamSpecClass of a GParamSpec.
 * pspec:
 * a valid GParamSpec
 */
// TODO
// #define G_PARAM_SPEC_GET_CLASS(pspec)	(G_TYPE_INSTANCE_GET_CLASS ((pspec), G_TYPE_PARAM, GParamSpecClass))

/*
 * Retrieves the GType of this pspec.
 * pspec:
 * a valid GParamSpec
 */
// TODO
// #define G_PARAM_SPEC_TYPE(pspec)	(G_TYPE_FROM_INSTANCE (pspec))

/*
 * Retrieves the GType name of this pspec.
 * pspec:
 * a valid GParamSpec
 */
// TODO
// #define G_PARAM_SPEC_TYPE_NAME(pspec)	(g_type_name (G_PARAM_SPEC_TYPE (pspec)))

/*
 * Retrieves the GType to initialize a GValue for this parameter.
 * pspec:
 * a valid GParamSpec
 */
// TODO
// #define	G_PARAM_SPEC_VALUE_TYPE(pspec)	(G_PARAM_SPEC (pspec)->value_type)

/*
 * Connects a GCallback function to a signal for a particular object.
 * The handler will be called before the default handler of the signal.
 * instance:
 * the instance to connect to.
 * detailed_signal:
 * a string of the form "signal-name::detail".
 * c_handler:
 * the GCallback to connect.
 * data:
 * data to pass to c_handler calls.
 * Returns:
 * the handler id
 */
// TODO
// #define g_signal_connect(instance, detailed_signal, c_handler, data)

/*
 * Connects a GCallback function to a signal for a particular object.
 * The handler will be called after the default handler of the signal.
 * instance:
 * the instance to connect to.
 * detailed_signal:
 * a string of the form "signal-name::detail".
 * c_handler:
 * the GCallback to connect.
 * data:
 * data to pass to c_handler calls.
 * Returns:
 * the handler id
 */
// TODO
// #define g_signal_connect_after(instance, detailed_signal, c_handler, data)

/*
 * Connects a GCallback function to a signal for a particular object.
 * The instance on which the signal is emitted and data will be swapped when
 * calling the handler.
 * instance:
 * the instance to connect to.
 * detailed_signal:
 * a string of the form "signal-name::detail".
 * c_handler:
 * the GCallback to connect.
 * data:
 * data to pass to c_handler calls.
 * Returns:
 * the handler id
 */
// TODO
// #define g_signal_connect_swapped(instance, detailed_signal, c_handler, data)

/*
 * Blocks all handlers on an instance that match func and data.
 * instance:
 * The instance to block handlers from.
 * func:
 * The C closure callback of the handlers (useless for non-C closures).
 * data:
 * The closure data of the handlers' closures.
 * Returns:
 * The number of handlers that got blocked.
 */
// TODO
// #define g_signal_handlers_block_by_func(instance, func, data)

/*
 * Unblocks all handlers on an instance that match func and data.
 * instance:
 * The instance to unblock handlers from.
 * func:
 * The C closure callback of the handlers (useless for non-C closures).
 * data:
 * The closure data of the handlers' closures.
 * Returns:
 * The number of handlers that got unblocked.
 */
// TODO
// #define g_signal_handlers_unblock_by_func(instance, func, data)

/*
 * Disconnects all handlers on an instance that match func and data.
 * instance:
 * The instance to remove handlers from.
 * func:
 * The C closure callback of the handlers (useless for non-C closures).
 * data:
 * The closure data of the handlers' closures.
 * Returns:
 * The number of handlers that got disconnected.
 */
// TODO
// #define g_signal_handlers_disconnect_by_func(instance, func, data)

/*
 * Returns TRUE if a GClosureMarshal marshaller has not yet been set on
 * closure. See g_closure_set_marshal().
 * closure:
 * a GClosure
 */
// TODO
// #define	G_CLOSURE_NEEDS_MARSHAL(closure) (((GClosure*) (closure))->marshal == NULL)

/*
 * Returns the total number of notifiers connected with the closure cl.
 * The count includes the meta marshaller, the finalize and invalidate notifiers
 * and the marshal guards. Note that each guard counts as two notifiers.
 * See g_closure_set_meta_marshal(), g_closure_add_finalize_notifier(),
 * g_closure_add_invalidate_notifier() and g_closure_add_marshal_guards().
 * cl:
 * a GClosure
 */
// TODO
// #define G_CLOSURE_N_NOTIFIERS(cl)

/*
 * Returns whether the user data of the GCClosure should be passed as the
 * first parameter to the callback. See g_cclosure_new_swap().
 * cclosure:
 * a GCClosure
 */
// TODO
// #define	G_CCLOSURE_SWAP_DATA(cclosure)	 (((GClosure*) (closure))->derivative_flag)

/*
 * Cast a function pointer to a GCallback.
 * f:
 * a function pointer.
 */
// TODO
// #define	G_CALLBACK(f)			 ((GCallback) (f))

/*
 * A callback function used by the type system to do base initialization
 * of the class structures of derived types. It is called as part of the
 * initialization process of all derived classes and should reallocate
 * or reset all dynamic class members copied over from the parent class.
 * Therefore class members, e.g. strings, that are not sufficiently
 * handled by a plain memory copy of the parent class into the derived class
 * have to be altered. See GClassInitFunc() for a discussion of the class
 * intialization process.
 * g_class:
 * The GTypeClass structure to initialize.
 */
// void (*GBaseInitFunc) (gpointer g_class);
public typedef extern(C) void  function (void*) GBaseInitFunc;

/*
 * A callback function used by the type system to finalize those portions
 * of a derived types class structure that were setup from the corresponding
 * GBaseInitFunc() function. Class finalization basically works the inverse
 * way in which class intialization is performed.
 * See GClassInitFunc() for a discussion of the class intialization process.
 * g_class:
 * The GTypeClass structure to finalize.
 */
// void (*GBaseFinalizeFunc) (gpointer g_class);
public typedef extern(C) void  function (void*) GBaseFinalizeFunc;

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
 * typedef struct {
	 *  GObjectClass parent_class;
	 *  gint static_integer;
	 *  gchar *dynamic_string;
 * } TypeAClass;
 * static void
 * type_a_base_class_init (TypeAClass *class)
 * {
	 *  class->dynamic_string = g_strdup ("some string");
 * }
 * static void
 * type_a_base_class_finalize (TypeAClass *class)
 * {
	 *  g_free (class->dynamic_string);
 * }
 * static void
 * type_a_class_init (TypeAClass *class)
 * {
	 *  class->static_integer = 42;
 * }
 * typedef struct {
	 *  TypeAClass parent_class;
	 *  gfloat static_float;
	 *  GString *dynamic_gstring;
 * } TypeBClass;
 * static void
 * type_b_base_class_init (TypeBClass *class)
 * {
	 *  class->dynamic_gstring = g_string_new ("some other string");
 * }
 * static void
 * type_b_base_class_finalize (TypeBClass *class)
 * {
	 *  g_string_free (class->dynamic_gstring);
 * }
 * static void
 * type_b_class_init (TypeBClass *class)
 * {
	 *  class->static_float = 3.14159265358979323846;
 * }
 * Initialization of TypeBClass will first cause initialization of
 * TypeAClass (derived classes reference their parent classes, see
 * g_type_class_ref() on this).
 * Initialization of TypeAClass roughly involves zero-initializing its fields,
 * then calling its GBaseInitFunc() type_a_base_class_init() that allocates
 * its dynamic members (dynamic_string) and finally calling its GClassInitFunc()
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
 * g_class:
 * 	The GTypeClass structure to initialize.
 * class_data:
 * 	The class_data member supplied via the GTypeInfo structure.
 */
// void (*GClassInitFunc) (gpointer g_class,  gpointer class_data);
public typedef extern(C) void  function (void*, void*) GClassInitFunc;

/*
 * A callback function used by the type system to finalize a class.
 * This function is rarely needed, as dynamically allocated class resources
 * should be handled by GBaseInitFunc() and GBaseFinalizeFunc().
 * Also, specification of a GClassFinalizeFunc() in the GTypeInfo
 * structure of a static type is invalid, because classes of static types
 * will never be finalized (they are artificially kept alive when their
 * reference count drops to zero).
 * g_class:
 * 	The GTypeClass structure to finalize.
 * class_data:
 * 	The class_data member supplied via the GTypeInfo structure.
 */
// void (*GClassFinalizeFunc) (gpointer g_class,  gpointer class_data);
public typedef extern(C) void  function (void*, void*) GClassFinalizeFunc;

/*
 * A callback function used by the type system to initialize a new
 * instance of a type. This function initializes all instance members and
 * allocates any resources required by it.
 * Initialization of a derived instance involves calling all its parent
 * types instance initializers, therefore the class member of the instance
 * is altered during its initialization to always point to the class that
 * belongs to the type the current initializer was introduced for.
 * instance:
 * 	The instance to initialize.
 * g_class:
 * 	The class of the type the instance is created for.
 */
// void (*GInstanceInitFunc) (GTypeInstance *instance,  gpointer g_class);
public typedef extern(C) void  function (GTypeInstance*, void*) GInstanceInitFunc;

/*
 * A callback function used by the type system to initialize a new
 * interface. This function should initialize all internal data and
 * allocate any resources required by the interface.
 * g_iface:
 * 	The interface structure to initialize.
 * iface_data:
 * 	The class_data supplied via the GTypeInfo structure.
 */
// void (*GInterfaceInitFunc) (gpointer g_iface,  gpointer iface_data);
public typedef extern(C) void  function (void*, void*) GInterfaceInitFunc;

/*
 * A callback function used by the type system to finalize an interface.
 * This function should destroy any internal data and release any resources
 * allocated by the corresponding GInterfaceInitFunc() function.
 * g_iface:
 * 	The interface structure to finalize.
 * iface_data:
 * 	The class_data supplied via the GTypeInfo structure.
 */
// void (*GInterfaceFinalizeFunc) (gpointer g_iface,  gpointer iface_data);
public typedef extern(C) void  function (void*, void*) GInterfaceFinalizeFunc;

/*
 * A callback function which is called when the reference count of a class
 * drops to zero. It may use g_type_class_ref() to prevent the class from
 * being freed. You should not call g_type_class_unref() from a
 * GTypeClassCacheFunc function to prevent infinite recursion, use
 * g_type_class_unref_uncached() instead.
 * The functions have to check the class id passed in to figure
 * whether they actually want to cache the class of this type, since all
 * classes are routed through the same GTypeClassCacheFunc chain.
 * cache_data:
 * data that was given to the g_type_add_class_cache_func() call
 * g_class:
 * The GTypeClass structure which is unreferenced
 * Returns:
 * TRUE to stop further GTypeClassCacheFuncs from being
 * called, FALSE to continue.
 */
// gboolean (*GTypeClassCacheFunc) (gpointer cache_data,  GTypeClass *g_class);
public typedef extern(C) int  function (void*, GTypeClass*) GTypeClassCacheFunc;

/*
 * A callback called after an interface vtable is initialized.
 * See g_type_add_interface_check().
 * check_data:
 * data passed to g_type_add_interface_check().
 * g_iface:
 * the interface that has been initialized
 * Since 2.4
 */
// void (*GTypeInterfaceCheckFunc) (gpointer check_data,  gpointer g_iface);
public typedef extern(C) void  function (void*, void*) GTypeInterfaceCheckFunc;

/*
 * The type of the use_plugin function of GTypePluginClass, which gets called
 * to increase the use count of plugin.
 * plugin:
 * the GTypePlugin whose use count should be increased
 */
// void (*GTypePluginUse) (GTypePlugin *plugin);
public typedef extern(C) void  function (GTypePlugin*) GTypePluginUse;

/*
 * The type of the unuse_plugin function of GTypePluginClass.
 * plugin:
 * the GTypePlugin whose use count should be decreased
 */
// void (*GTypePluginUnuse) (GTypePlugin *plugin);
public typedef extern(C) void  function (GTypePlugin*) GTypePluginUnuse;

/*
 * The type of the complete_type_info function of GTypePluginClass.
 * plugin:
 * the GTypePlugin
 * g_type:
 * the GType whose info is completed
 * info:
 * the GTypeInfo struct to fill in
 * value_table:
 * the GTypeValueTable to fill in
 */
// void (*GTypePluginCompleteTypeInfo) (GTypePlugin *plugin,  GType g_type,  GTypeInfo *info,  GTypeValueTable *value_table);
public typedef extern(C) void  function (GTypePlugin*, GType, GTypeInfo*, GTypeValueTable*) GTypePluginCompleteTypeInfo;

/*
 * The type of the complete_interface_info function of GTypePluginClass.
 * plugin:
 * the GTypePlugin
 * instance_type:
 * the GType of an instantiable type to which the interface
 *  is added
 * interface_type:
 * the GType of the interface whose info is completed
 * info:
 * the GInterfaceInfo to fill in
 */
// void (*GTypePluginCompleteInterfaceInfo)  (GTypePlugin *plugin,  GType instance_type,  GType interface_type,  GInterfaceInfo *info);
public typedef extern(C) void  function (GTypePlugin*, GType, GType, GInterfaceInfo*) GTypePluginCompleteInterfaceInfo;

/*
 * The type of the get_property function of GObjectClass.
 * object:
 * a GObject
 * property_id:
 * the numeric id under which the property was registered with
 *  g_object_class_install_property().
 * value:
 * a GValue to return the property value in
 * pspec:
 * the GParamSpec describing the property
 */
// void (*GObjectGetPropertyFunc) (GObject *object,  guint property_id,  GValue *value,  GParamSpec *pspec);
public typedef extern(C) void  function (GObject*, uint, GValue*, GParamSpec*) GObjectGetPropertyFunc;

/*
 * The type of the set_property function of GObjectClass.
 * object:
 * a GObject
 * property_id:
 * the numeric id under which the property was registered with
 *  g_object_class_install_property().
 * value:
 * the new value for the property
 * pspec:
 * the GParamSpec describing the property
 */
// void (*GObjectSetPropertyFunc) (GObject *object,  guint property_id,  const GValue *value,  GParamSpec *pspec);
public typedef extern(C) void  function (GObject*, uint, GValue*, GParamSpec*) GObjectSetPropertyFunc;

/*
 * The type of the finalize function of GObjectClass.
 * object:
 * the GObject being finalized
 */
// void (*GObjectFinalizeFunc) (GObject *object);
public typedef extern(C) void  function (GObject*) GObjectFinalizeFunc;

/*
 * A GWeakNotify function can be added to an object as a callback that gets
 * triggered when the object is finalized. Since the object is already being
 * finalized when the GWeakNotify is called, there's not much you could do
 * with the object, apart from e.g. using its adress as hash-index or the like.
 * data:
 * data that was provided when the weak reference was established
 * where_the_object_was:
 * the object being finalized
 */
// void (*GWeakNotify) (gpointer data,  GObject *where_the_object_was);
public typedef extern(C) void  function (void*, GObject*) GWeakNotify;

/*
 * A callback function used for notification when the state
 * of a toggle reference changes. See g_object_add_toggle_ref().
 * data:
 * Callback data passed to g_object_add_toggle_ref()
 * object:
 * The object on which g_object_add_toggle_ref() was called.
 * is_last_ref:
 * TRUE if the toggle reference is now the
 *  last reference to the object. FALSE if the toggle
 *  reference was the last reference and there are now other
 *  references.
 */
// void (*GToggleNotify) (gpointer data,  GObject *object,  gboolean is_last_ref);
public typedef extern(C) void  function (void*, GObject*, int) GToggleNotify;

/*
 * This function is provided by the user and should produce a copy of the passed
 * in boxed structure.
 * boxed:
 *  The boxed structure to be copied.
 * Returns:
 * The newly created copy of the boxed structure.
 */
// gpointer (*GBoxedCopyFunc) (gpointer boxed);
public typedef extern(C) void*  function (void*) GBoxedCopyFunc;

/*
 * This function is provided by the user and should free the boxed
 * structure passed.
 * boxed:
 * The boxed structure to be freed.
 */
// void (*GBoxedFreeFunc) (gpointer boxed);
public typedef extern(C) void  function (void*) GBoxedFreeFunc;

/*
 * The type of value transformation functions which can be registered with
 * g_value_register_transform_func().
 * src_value:
 *  Source value.
 * dest_value:
 * Target value.
 */
// void (*GValueTransform) (const GValue *src_value,  GValue *dest_value);
public typedef extern(C) void  function (GValue*, GValue*) GValueTransform;

/*
 * The signal accumulator is a special callback function that can be used
 * to collect return values of the various callbacks that are called
 * during a signal emission. The signal accumulator is specified at signal
 * creation time, if it is left NULL, no accumulation of callback return
 * values is performed. The return value of signal emissions is then the
 * value returned by the last callback.
 * ihint:
 * 	Signal invocation hint, see GSignalInvocationHint.
 * return_accu:
 * 	Accumulator to collect callback return values in, this
 * 		is the return value of the current signal emission.
 * handler_return:
 * A GValue holding the return value of the signal handler.
 * data:
 *  Callback data that was specified when creating the signal.
 * Returns:
 * 	The accumulator function returns whether the signal emission
 * 		should be aborted. Returning FALSE means to abort the
 * 		current emission and TRUE is returned for continuation.
 */
// gboolean (*GSignalAccumulator) (GSignalInvocationHint *ihint,  GValue *return_accu,  const GValue *handler_return,  gpointer data);
public typedef extern(C) int  function (GSignalInvocationHint*, GValue*, GValue*, void*) GSignalAccumulator;

/*
 * A simple function pointer to get invoked when the signal is emitted. This
 * allows you to tie a hook to the signal type, so that it will trap all
 * emissions of that signal, from any object.
 * You may not attach these to signals created with the G_SIGNAL_NO_HOOKS flag.
 * ihint:
 * Signal invocation hint, see GSignalInvocationHint.
 * n_param_values:
 * the number of parameters to the function, including
 *  the instance on which the signal was emitted.
 * param_values:
 * the instance on which the signal was emitted, followed by the
 *  parameters of the emission.
 * data:
 * user data associated with the hook.
 * Returns:
 * whether it wants to stay connected. If it returns FALSE, the signal
 *  hook is disconnected (and destroyed).
 */
// gboolean (*GSignalEmissionHook) (GSignalInvocationHint *ihint,  guint n_param_values,  const GValue *param_values,  gpointer data);
public typedef extern(C) int  function (GSignalInvocationHint*, uint, GValue*, void*) GSignalEmissionHook;

/*
 * The type used for callback functions in structure definitions and function
 * signatures. This doesn't mean that all callback functions must take no
 * parameters and return void. The required signature of a callback function
 * is determined by the context in which is used (e.g. the signal to which it
 * is connected). Use G_CALLBACK() to cast the callback function to a GCallback.
 */
// void (*GCallback) (void);
public typedef extern(C) void  function () GCallback;

/*
 * The type used for marshaller functions.
 * closure:
 * the GClosure to which the marshaller belongs
 * return_value:
 * a GValue to store the return value. May be NULL if the
 *  callback of closure doesn't return a value.
 * n_param_values:
 * the length of the param_values array
 * param_values:
 * an array of GValues holding the arguments on
 *  which to invoke the callback of closure
 * invocation_hint:
 * the invocation hint given as the the last argument
 *  to g_closure_invoke()
 * marshal_data:
 * additional data specified when registering the marshaller,
 *  see g_closure_set_marshal() and g_closure_set_meta_marshal()
 */
// void (*GClosureMarshal) (GClosure *closure,  GValue *return_value,  guint n_param_values,  const GValue *param_values,  gpointer invocation_hint,  gpointer marshal_data);
public typedef extern(C) void  function (GClosure*, GValue*, uint, GValue*, void*, void*) GClosureMarshal;

/*
 * The type used for the various notification callbacks which can be registered
 * on closures.
 * data:
 * data specified when registering the notification callback
 * closure:
 * the GClosure on which the notification is emitted
 */
// void (*GClosureNotify) (gpointer data,  GClosure *closure);
public typedef extern(C) void  function (void*, GClosure*) GClosureNotify;
