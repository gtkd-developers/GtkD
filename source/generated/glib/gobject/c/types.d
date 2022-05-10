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


module gobject.c.types;

public import glib.c.types;


/**
 * This is the signature of marshaller functions, required to marshall
 * arrays of parameter values to signal emissions into C language callback
 * invocations.
 *
 * It is merely an alias to #GClosureMarshal since the #GClosure mechanism
 * takes over responsibility of actual function invocation for the signal
 * system.
 */
public alias GClosureMarshal GSignalCMarshaller;

/**
 * This is the signature of va_list marshaller functions, an optional
 * marshaller that can be used in some situations to avoid
 * marshalling the signal argument into GValues.
 */
public alias GVaClosureMarshal GSignalCVaMarshaller;

/**
 * A value which represents the unique identifier of a registered type.
 */
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
 * Flags to be passed to g_object_bind_property() or
 * g_object_bind_property_full().
 *
 * This enumeration can be extended at later date.
 *
 * Since: 2.26
 */
public enum GBindingFlags
{
	/**
	 * The default binding; if the source property
	 * changes, the target property is updated with its value.
	 */
	DEFAULT = 0,
	/**
	 * Bidirectional binding; if either the
	 * property of the source or the property of the target changes,
	 * the other is updated.
	 */
	BIDIRECTIONAL = 1,
	/**
	 * Synchronize the values of the source and
	 * target properties when creating the binding; the direction of
	 * the synchronization is always from the source to the target.
	 */
	SYNC_CREATE = 2,
	/**
	 * If the two properties being bound are
	 * booleans, setting one to %TRUE will result in the other being
	 * set to %FALSE and vice versa. This flag will only work for
	 * boolean properties, and cannot be used when passing custom
	 * transformation functions to g_object_bind_property_full().
	 */
	INVERT_BOOLEAN = 4,
}
alias GBindingFlags BindingFlags;

/**
 * The connection flags are used to specify the behaviour of a signal's
 * connection.
 */
public enum GConnectFlags
{
	/**
	 * whether the handler should be called before or after the
	 * default handler of the signal.
	 */
	AFTER = 1,
	/**
	 * whether the instance and data should be swapped when
	 * calling the handler; see g_signal_connect_swapped() for an example.
	 */
	SWAPPED = 2,
}
alias GConnectFlags ConnectFlags;

/**
 * Through the #GParamFlags flag values, certain aspects of parameters
 * can be configured.
 *
 * See also: %G_PARAM_STATIC_STRINGS
 */
public enum GParamFlags : uint
{
	/**
	 * the parameter is readable
	 */
	READABLE = 1,
	/**
	 * the parameter is writable
	 */
	WRITABLE = 2,
	/**
	 * alias for %G_PARAM_READABLE | %G_PARAM_WRITABLE
	 */
	READWRITE = 3,
	/**
	 * the parameter will be set upon object construction
	 */
	CONSTRUCT = 4,
	/**
	 * the parameter can only be set upon object construction
	 */
	CONSTRUCT_ONLY = 8,
	/**
	 * upon parameter conversion (see g_param_value_convert())
	 * strict validation is not required
	 */
	LAX_VALIDATION = 16,
	/**
	 * the string used as name when constructing the
	 * parameter is guaranteed to remain valid and
	 * unmodified for the lifetime of the parameter.
	 * Since 2.8
	 */
	STATIC_NAME = 32,
	/**
	 * internal
	 */
	PRIVATE = 32,
	/**
	 * the string used as nick when constructing the
	 * parameter is guaranteed to remain valid and
	 * unmmodified for the lifetime of the parameter.
	 * Since 2.8
	 */
	STATIC_NICK = 64,
	/**
	 * the string used as blurb when constructing the
	 * parameter is guaranteed to remain valid and
	 * unmodified for the lifetime of the parameter.
	 * Since 2.8
	 */
	STATIC_BLURB = 128,
	/**
	 * calls to g_object_set_property() for this
	 * property will not automatically result in a "notify" signal being
	 * emitted: the implementation must call g_object_notify() themselves
	 * in case the property actually changes.  Since: 2.42.
	 */
	EXPLICIT_NOTIFY = 1073741824,
	/**
	 * the parameter is deprecated and will be removed
	 * in a future version. A warning will be generated if it is used
	 * while running with G_ENABLE_DIAGNOSTIC=1.
	 * Since 2.26
	 */
	DEPRECATED = 2147483648,
}
alias GParamFlags ParamFlags;

/**
 * The signal flags are used to specify a signal's behaviour.
 */
public enum GSignalFlags
{
	/**
	 * Invoke the object method handler in the first emission stage.
	 */
	RUN_FIRST = 1,
	/**
	 * Invoke the object method handler in the third emission stage.
	 */
	RUN_LAST = 2,
	/**
	 * Invoke the object method handler in the last emission stage.
	 */
	RUN_CLEANUP = 4,
	/**
	 * Signals being emitted for an object while currently being in
	 * emission for this very object will not be emitted recursively,
	 * but instead cause the first emission to be restarted.
	 */
	NO_RECURSE = 8,
	/**
	 * This signal supports "::detail" appendices to the signal name
	 * upon handler connections and emissions.
	 */
	DETAILED = 16,
	/**
	 * Action signals are signals that may freely be emitted on alive
	 * objects from user code via g_signal_emit() and friends, without
	 * the need of being embedded into extra code that performs pre or
	 * post emission adjustments on the object. They can also be thought
	 * of as object methods which can be called generically by
	 * third-party code.
	 */
	ACTION = 32,
	/**
	 * No emissions hooks are supported for this signal.
	 */
	NO_HOOKS = 64,
	/**
	 * Varargs signal emission will always collect the
	 * arguments, even if there are no signal handlers connected.  Since 2.30.
	 */
	MUST_COLLECT = 128,
	/**
	 * The signal is deprecated and will be removed
	 * in a future version. A warning will be generated if it is connected while
	 * running with G_ENABLE_DIAGNOSTIC=1.  Since 2.32.
	 */
	DEPRECATED = 256,
	/**
	 * Only used in #GSignalAccumulator accumulator
	 * functions for the #GSignalInvocationHint::run_type field to mark the first
	 * call to the accumulator function for a signal emission.  Since 2.68.
	 */
	ACCUMULATOR_FIRST_RUN = 131072,
}
alias GSignalFlags SignalFlags;

/**
 * The match types specify what g_signal_handlers_block_matched(),
 * g_signal_handlers_unblock_matched() and g_signal_handlers_disconnect_matched()
 * match signals by.
 */
public enum GSignalMatchType
{
	/**
	 * The signal id must be equal.
	 */
	ID = 1,
	/**
	 * The signal detail must be equal.
	 */
	DETAIL = 2,
	/**
	 * The closure must be the same.
	 */
	CLOSURE = 4,
	/**
	 * The C closure callback must be the same.
	 */
	FUNC = 8,
	/**
	 * The closure data must be the same.
	 */
	DATA = 16,
	/**
	 * Only unblocked signals may be matched.
	 */
	UNBLOCKED = 32,
}
alias GSignalMatchType SignalMatchType;

/**
 * These flags used to be passed to g_type_init_with_debug_flags() which
 * is now deprecated.
 *
 * If you need to enable debugging features, use the GOBJECT_DEBUG
 * environment variable.
 *
 * Deprecated: g_type_init() is now done automatically
 */
public enum GTypeDebugFlags
{
	/**
	 * Print no messages
	 */
	NONE = 0,
	/**
	 * Print messages about object bookkeeping
	 */
	OBJECTS = 1,
	/**
	 * Print messages about signal emissions
	 */
	SIGNALS = 2,
	/**
	 * Keep a count of instances of each type
	 */
	INSTANCE_COUNT = 4,
	/**
	 * Mask covering all debug flags
	 */
	MASK = 7,
}
alias GTypeDebugFlags TypeDebugFlags;

/**
 * Bit masks used to check or determine characteristics of a type.
 */
public enum GTypeFlags
{
	/**
	 * Indicates an abstract type. No instances can be
	 * created for an abstract type
	 */
	ABSTRACT = 16,
	/**
	 * Indicates an abstract value type, i.e. a type
	 * that introduces a value table, but can't be used for
	 * g_value_init()
	 */
	VALUE_ABSTRACT = 32,
	/**
	 * Indicates a final type. A final type is a non-derivable
	 * leaf node in a deep derivable type hierarchy tree. Since: 2.70
	 */
	FINAL = 64,
}
alias GTypeFlags TypeFlags;

/**
 * Bit masks used to check or determine specific characteristics of a
 * fundamental type.
 */
public enum GTypeFundamentalFlags
{
	/**
	 * Indicates a classed type
	 */
	CLASSED = 1,
	/**
	 * Indicates an instantiatable type (implies classed)
	 */
	INSTANTIATABLE = 2,
	/**
	 * Indicates a flat derivable type
	 */
	DERIVABLE = 4,
	/**
	 * Indicates a deep derivable type (implies derivable)
	 */
	DEEP_DERIVABLE = 8,
}
alias GTypeFundamentalFlags TypeFundamentalFlags;

struct GBinding;

struct GBindingGroup;

/**
 * A #GCClosure is a specialization of #GClosure for C function callbacks.
 */
struct GCClosure
{
	/**
	 * the #GClosure
	 */
	GClosure closure;
	/**
	 * the callback function
	 */
	void* callback;
}

struct GClosure
{
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "refCount", 15,
		uint, "metaMarshalNouse", 1,
		uint, "nGuards", 1,
		uint, "nFnotifiers", 2,
		uint, "nInotifiers", 8,
		uint, "inInotify", 1,
		uint, "floating", 1,
		uint, "derivativeFlag", 1,
		uint, "inMarshal", 1,
		uint, "isInvalid", 1
	));
	/** */
	extern(C) void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) marshal;
	void* data;
	GClosureNotifyData* notifiers;
}

struct GClosureNotifyData
{
	void* data;
	GClosureNotify notify;
}

/**
 * The class of an enumeration type holds information about its
 * possible values.
 */
struct GEnumClass
{
	/**
	 * the parent class
	 */
	GTypeClass gTypeClass;
	/**
	 * the smallest possible value.
	 */
	int minimum;
	/**
	 * the largest possible value.
	 */
	int maximum;
	/**
	 * the number of possible values.
	 */
	uint nValues;
	/**
	 * an array of #GEnumValue structs describing the
	 * individual values.
	 */
	GEnumValue* values;
}

/**
 * A structure which contains a single enum value, its name, and its
 * nickname.
 */
struct GEnumValue
{
	/**
	 * the enum value
	 */
	int value;
	/**
	 * the name of the value
	 */
	const(char)* valueName;
	/**
	 * the nickname of the value
	 */
	const(char)* valueNick;
}

/**
 * The class of a flags type holds information about its
 * possible values.
 */
struct GFlagsClass
{
	/**
	 * the parent class
	 */
	GTypeClass gTypeClass;
	/**
	 * a mask covering all possible values.
	 */
	uint mask;
	/**
	 * the number of possible values.
	 */
	uint nValues;
	/**
	 * an array of #GFlagsValue structs describing the
	 * individual values.
	 */
	GFlagsValue* values;
}

/**
 * A structure which contains a single flags value, its name, and its
 * nickname.
 */
struct GFlagsValue
{
	/**
	 * the flags value
	 */
	uint value;
	/**
	 * the name of the value
	 */
	const(char)* valueName;
	/**
	 * the nickname of the value
	 */
	const(char)* valueNick;
}

/**
 * A structure that provides information to the type system which is
 * used specifically for managing interface types.
 */
struct GInterfaceInfo
{
	/**
	 * location of the interface initialization function
	 */
	GInterfaceInitFunc interfaceInit;
	/**
	 * location of the interface finalization function
	 */
	GInterfaceFinalizeFunc interfaceFinalize;
	/**
	 * user-supplied data passed to the interface init/finalize functions
	 */
	void* interfaceData;
}

struct GObject
{
	GTypeInstance gTypeInstance;
	uint refCount;
	GData* qdata;
}

struct GObjectClass
{
	/**
	 * the parent class
	 */
	GTypeClass gTypeClass;
	GSList* constructProperties;
	/** */
	extern(C) GObject* function(GType type, uint nConstructProperties, GObjectConstructParam* constructProperties) constructor;
	/** */
	extern(C) void function(GObject* object, uint propertyId, GValue* value, GParamSpec* pspec) setProperty;
	/** */
	extern(C) void function(GObject* object, uint propertyId, GValue* value, GParamSpec* pspec) getProperty;
	/** */
	extern(C) void function(GObject* object) dispose;
	/** */
	extern(C) void function(GObject* object) finalize;
	/** */
	extern(C) void function(GObject* object, uint nPspecs, GParamSpec** pspecs) dispatchPropertiesChanged;
	/** */
	extern(C) void function(GObject* object, GParamSpec* pspec) notify;
	/** */
	extern(C) void function(GObject* object) constructed;
	size_t flags;
	void*[6] pdummy;
}

/**
 * The GObjectConstructParam struct is an auxiliary structure used to hand
 * #GParamSpec/#GValue pairs to the @constructor of a #GObjectClass.
 */
struct GObjectConstructParam
{
	/**
	 * the #GParamSpec of the construct parameter
	 */
	GParamSpec* pspec;
	/**
	 * the value to set the parameter to
	 */
	GValue* value;
}

struct GParamSpec
{
	/**
	 * private #GTypeInstance portion
	 */
	GTypeInstance gTypeInstance;
	/**
	 * name of this parameter: always an interned string
	 */
	const(char)* name;
	/**
	 * #GParamFlags flags for this parameter
	 */
	GParamFlags flags;
	/**
	 * the #GValue type for this parameter
	 */
	GType valueType;
	/**
	 * #GType type that uses (introduces) this parameter
	 */
	GType ownerType;
	char* Nick;
	char* Blurb;
	GData* qdata;
	uint refCount;
	uint paramId;
}

struct GParamSpecBoolean
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * default value for the property specified
	 */
	bool defaultValue;
}

struct GParamSpecBoxed
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
}

struct GParamSpecChar
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * minimum value for the property specified
	 */
	byte minimum;
	/**
	 * maximum value for the property specified
	 */
	byte maximum;
	/**
	 * default value for the property specified
	 */
	byte defaultValue;
}

/**
 * The class structure for the GParamSpec type.
 * Normally, GParamSpec classes are filled by
 * g_param_type_register_static().
 */
struct GParamSpecClass
{
	/**
	 * the parent class
	 */
	GTypeClass gTypeClass;
	/**
	 * the #GValue type for this parameter
	 */
	GType valueType;
	/** */
	extern(C) void function(GParamSpec* pspec) finalize;
	/** */
	extern(C) void function(GParamSpec* pspec, GValue* value) valueSetDefault;
	/** */
	extern(C) int function(GParamSpec* pspec, GValue* value) valueValidate;
	/** */
	extern(C) int function(GParamSpec* pspec, GValue* value1, GValue* value2) valuesCmp;
	void*[4] dummy;
}

struct GParamSpecDouble
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * minimum value for the property specified
	 */
	double minimum;
	/**
	 * maximum value for the property specified
	 */
	double maximum;
	/**
	 * default value for the property specified
	 */
	double defaultValue;
	/**
	 * values closer than @epsilon will be considered identical
	 * by g_param_values_cmp(); the default value is 1e-90.
	 */
	double epsilon;
}

struct GParamSpecEnum
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * the #GEnumClass for the enum
	 */
	GEnumClass* enumClass;
	/**
	 * default value for the property specified
	 */
	int defaultValue;
}

struct GParamSpecFlags
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * the #GFlagsClass for the flags
	 */
	GFlagsClass* flagsClass;
	/**
	 * default value for the property specified
	 */
	uint defaultValue;
}

struct GParamSpecFloat
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * minimum value for the property specified
	 */
	float minimum;
	/**
	 * maximum value for the property specified
	 */
	float maximum;
	/**
	 * default value for the property specified
	 */
	float defaultValue;
	/**
	 * values closer than @epsilon will be considered identical
	 * by g_param_values_cmp(); the default value is 1e-30.
	 */
	float epsilon;
}

struct GParamSpecGType
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * a #GType whose subtypes can occur as values
	 */
	GType isAType;
}

struct GParamSpecInt
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * minimum value for the property specified
	 */
	int minimum;
	/**
	 * maximum value for the property specified
	 */
	int maximum;
	/**
	 * default value for the property specified
	 */
	int defaultValue;
}

struct GParamSpecInt64
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * minimum value for the property specified
	 */
	long minimum;
	/**
	 * maximum value for the property specified
	 */
	long maximum;
	/**
	 * default value for the property specified
	 */
	long defaultValue;
}

struct GParamSpecLong
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * minimum value for the property specified
	 */
	glong minimum;
	/**
	 * maximum value for the property specified
	 */
	glong maximum;
	/**
	 * default value for the property specified
	 */
	glong defaultValue;
}

struct GParamSpecObject
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
}

struct GParamSpecOverride
{
	GParamSpec parentInstance;
	GParamSpec* overridden;
}

struct GParamSpecParam
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
}

struct GParamSpecPointer
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
}

struct GParamSpecPool;

struct GParamSpecString
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * default value for the property specified
	 */
	char* defaultValue;
	/**
	 * a string containing the allowed values for the first byte
	 */
	char* csetFirst;
	/**
	 * a string containing the allowed values for the subsequent bytes
	 */
	char* csetNth;
	/**
	 * the replacement byte for bytes which don't match @cset_first or @cset_nth.
	 */
	char substitutor;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "nullFoldIfEmpty", 1,
		uint, "ensureNonNull", 1,
		uint, "", 30
	));
}

/**
 * This structure is used to provide the type system with the information
 * required to initialize and destruct (finalize) a parameter's class and
 * instances thereof.
 *
 * The initialized structure is passed to the g_param_type_register_static()
 * The type system will perform a deep copy of this structure, so its memory
 * does not need to be persistent across invocation of
 * g_param_type_register_static().
 */
struct GParamSpecTypeInfo
{
	/**
	 * Size of the instance (object) structure.
	 */
	ushort instanceSize;
	/**
	 * Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the [slice allocator][glib-Memory-Slices] now.
	 */
	ushort nPreallocs;
	/** */
	extern(C) void function(GParamSpec* pspec) instanceInit;
	/**
	 * The #GType of values conforming to this #GParamSpec
	 */
	GType valueType;
	/** */
	extern(C) void function(GParamSpec* pspec) finalize;
	/** */
	extern(C) void function(GParamSpec* pspec, GValue* value) valueSetDefault;
	/** */
	extern(C) int function(GParamSpec* pspec, GValue* value) valueValidate;
	/** */
	extern(C) int function(GParamSpec* pspec, GValue* value1, GValue* value2) valuesCmp;
}

struct GParamSpecUChar
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * minimum value for the property specified
	 */
	ubyte minimum;
	/**
	 * maximum value for the property specified
	 */
	ubyte maximum;
	/**
	 * default value for the property specified
	 */
	ubyte defaultValue;
}

struct GParamSpecUInt
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * minimum value for the property specified
	 */
	uint minimum;
	/**
	 * maximum value for the property specified
	 */
	uint maximum;
	/**
	 * default value for the property specified
	 */
	uint defaultValue;
}

struct GParamSpecUInt64
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * minimum value for the property specified
	 */
	ulong minimum;
	/**
	 * maximum value for the property specified
	 */
	ulong maximum;
	/**
	 * default value for the property specified
	 */
	ulong defaultValue;
}

struct GParamSpecULong
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * minimum value for the property specified
	 */
	gulong minimum;
	/**
	 * maximum value for the property specified
	 */
	gulong maximum;
	/**
	 * default value for the property specified
	 */
	gulong defaultValue;
}

struct GParamSpecUnichar
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * default value for the property specified
	 */
	dchar defaultValue;
}

struct GParamSpecValueArray
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * a #GParamSpec describing the elements contained in arrays of this property, may be %NULL
	 */
	GParamSpec* elementSpec;
	/**
	 * if greater than 0, arrays of this property will always have this many elements
	 */
	uint fixedNElements;
}

struct GParamSpecVariant
{
	/**
	 * private #GParamSpec portion
	 */
	GParamSpec parentInstance;
	/**
	 * a #GVariantType, or %NULL
	 */
	GVariantType* type;
	/**
	 * a #GVariant, or %NULL
	 */
	GVariant* defaultValue;
	void*[4] padding;
}

/**
 * The GParameter struct is an auxiliary structure used
 * to hand parameter name/value pairs to g_object_newv().
 *
 * Deprecated: This type is not introspectable.
 */
struct GParameter
{
	/**
	 * the parameter name
	 */
	const(char)* name;
	/**
	 * the parameter value
	 */
	GValue value;
}

struct GSignalGroup;

/**
 * The #GSignalInvocationHint structure is used to pass on additional information
 * to callbacks during a signal emission.
 */
struct GSignalInvocationHint
{
	/**
	 * The signal id of the signal invoking the callback
	 */
	uint signalId;
	/**
	 * The detail passed on for this emission
	 */
	GQuark detail;
	/**
	 * The stage the signal emission is currently in, this
	 * field will contain one of %G_SIGNAL_RUN_FIRST,
	 * %G_SIGNAL_RUN_LAST or %G_SIGNAL_RUN_CLEANUP and %G_SIGNAL_ACCUMULATOR_FIRST_RUN.
	 * %G_SIGNAL_ACCUMULATOR_FIRST_RUN is only set for the first run of the accumulator
	 * function for a signal emission.
	 */
	GSignalFlags runType;
}

/**
 * A structure holding in-depth information for a specific signal.
 *
 * See also: g_signal_query()
 */
struct GSignalQuery
{
	/**
	 * The signal id of the signal being queried, or 0 if the
	 * signal to be queried was unknown.
	 */
	uint signalId;
	/**
	 * The signal name.
	 */
	const(char)* signalName;
	/**
	 * The interface/instance type that this signal can be emitted for.
	 */
	GType itype;
	/**
	 * The signal flags as passed in to g_signal_new().
	 */
	GSignalFlags signalFlags;
	/**
	 * The return type for user callbacks.
	 */
	GType returnType;
	/**
	 * The number of parameters that user callbacks take.
	 */
	uint nParams;
	/**
	 * The individual parameter types for
	 * user callbacks, note that the effective callback signature is:
	 * |[<!-- language="C" -->
	 * @return_type callback (#gpointer     data1,
	 * [param_types param_names,]
	 * gpointer     data2);
	 * ]|
	 */
	GType* paramTypes;
}

struct GTypeCValue
{
	union
	{
	}
}

struct GTypeClass
{
	GType gType;
}

/**
 * A structure that provides information to the type system which is
 * used specifically for managing fundamental types.
 */
struct GTypeFundamentalInfo
{
	/**
	 * #GTypeFundamentalFlags describing the characteristics of the fundamental type
	 */
	GTypeFundamentalFlags typeFlags;
}

/**
 * This structure is used to provide the type system with the information
 * required to initialize and destruct (finalize) a type's class and
 * its instances.
 *
 * The initialized structure is passed to the g_type_register_static() function
 * (or is copied into the provided #GTypeInfo structure in the
 * g_type_plugin_complete_type_info()). The type system will perform a deep
 * copy of this structure, so its memory does not need to be persistent
 * across invocation of g_type_register_static().
 */
struct GTypeInfo
{
	/**
	 * Size of the class structure (required for interface, classed and instantiatable types)
	 */
	ushort classSize;
	/**
	 * Location of the base initialization function (optional)
	 */
	GBaseInitFunc baseInit;
	/**
	 * Location of the base finalization function (optional)
	 */
	GBaseFinalizeFunc baseFinalize;
	/**
	 * Location of the class initialization function for
	 * classed and instantiatable types. Location of the default vtable
	 * inititalization function for interface types. (optional) This function
	 * is used both to fill in virtual functions in the class or default vtable,
	 * and to do type-specific setup such as registering signals and object
	 * properties.
	 */
	GClassInitFunc classInit;
	/**
	 * Location of the class finalization function for
	 * classed and instantiatable types. Location of the default vtable
	 * finalization function for interface types. (optional)
	 */
	GClassFinalizeFunc classFinalize;
	/**
	 * User-supplied data passed to the class init/finalize functions
	 */
	void* classData;
	/**
	 * Size of the instance (object) structure (required for instantiatable types only)
	 */
	ushort instanceSize;
	/**
	 * Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the [slice allocator][glib-Memory-Slices] now.
	 */
	ushort nPreallocs;
	/**
	 * Location of the instance initialization function (optional, for instantiatable types only)
	 */
	GInstanceInitFunc instanceInit;
	/**
	 * A #GTypeValueTable function table for generic handling of GValues
	 * of this type (usually only useful for fundamental types)
	 */
	GTypeValueTable* valueTable;
}

struct GTypeInstance
{
	GTypeClass* gClass;
}

struct GTypeInterface
{
	GType gType;
	GType gInstanceType;
}

struct GTypeModule
{
	GObject parentInstance;
	uint useCount;
	GSList* typeInfos;
	GSList* interfaceInfos;
	/**
	 * the name of the module
	 */
	char* name;
}

/**
 * In order to implement dynamic loading of types based on #GTypeModule,
 * the @load and @unload functions in #GTypeModuleClass must be implemented.
 */
struct GTypeModuleClass
{
	/**
	 * the parent class
	 */
	GObjectClass parentClass;
	/** */
	extern(C) int function(GTypeModule* module_) load;
	/** */
	extern(C) void function(GTypeModule* module_) unload;
	/** */
	extern(C) void function() reserved1;
	/** */
	extern(C) void function() reserved2;
	/** */
	extern(C) void function() reserved3;
	/** */
	extern(C) void function() reserved4;
}

struct GTypePlugin;

/**
 * The #GTypePlugin interface is used by the type system in order to handle
 * the lifecycle of dynamically loaded types.
 */
struct GTypePluginClass
{
	GTypeInterface baseIface;
	/**
	 * Increases the use count of the plugin.
	 */
	GTypePluginUse usePlugin;
	/**
	 * Decreases the use count of the plugin.
	 */
	GTypePluginUnuse unusePlugin;
	/**
	 * Fills in the #GTypeInfo and
	 * #GTypeValueTable structs for the type. The structs are initialized
	 * with `memset(s, 0, sizeof (s))` before calling this function.
	 */
	GTypePluginCompleteTypeInfo completeTypeInfo;
	/**
	 * Fills in missing parts of the #GInterfaceInfo
	 * for the interface. The structs is initialized with
	 * `memset(s, 0, sizeof (s))` before calling this function.
	 */
	GTypePluginCompleteInterfaceInfo completeInterfaceInfo;
}

/**
 * A structure holding information for a specific type.
 *
 * See also: g_type_query()
 */
struct GTypeQuery
{
	/**
	 * the #GType value of the type
	 */
	GType type;
	/**
	 * the name of the type
	 */
	const(char)* typeName;
	/**
	 * the size of the class structure
	 */
	uint classSize;
	/**
	 * the size of the instance structure
	 */
	uint instanceSize;
}

/**
 * The #GTypeValueTable provides the functions required by the #GValue
 * implementation, to serve as a container for values of a type.
 */
struct GTypeValueTable
{
	/** */
	extern(C) void function(GValue* value) valueInit;
	/** */
	extern(C) void function(GValue* value) valueFree;
	/** */
	extern(C) void function(GValue* srcValue, GValue* destValue) valueCopy;
	/** */
	extern(C) void* function(GValue* value) valuePeekPointer;
	/**
	 * A string format describing how to collect the contents of
	 * this value bit-by-bit. Each character in the format represents
	 * an argument to be collected, and the characters themselves indicate
	 * the type of the argument. Currently supported arguments are:
	 * - 'i' - Integers. passed as collect_values[].v_int.
	 * - 'l' - Longs. passed as collect_values[].v_long.
	 * - 'd' - Doubles. passed as collect_values[].v_double.
	 * - 'p' - Pointers. passed as collect_values[].v_pointer.
	 * It should be noted that for variable argument list construction,
	 * ANSI C promotes every type smaller than an integer to an int, and
	 * floats to doubles. So for collection of short int or char, 'i'
	 * needs to be used, and for collection of floats 'd'.
	 */
	const(char)* collectFormat;
	/** */
	extern(C) char* function(GValue* value, uint nCollectValues, GTypeCValue* collectValues, uint collectFlags) collectValue;
	/**
	 * Format description of the arguments to collect for @lcopy_value,
	 * analogous to @collect_format. Usually, @lcopy_format string consists
	 * only of 'p's to provide lcopy_value() with pointers to storage locations.
	 */
	const(char)* lcopyFormat;
	/** */
	extern(C) char* function(GValue* value, uint nCollectValues, GTypeCValue* collectValues, uint collectFlags) lcopyValue;
}

struct GValue
{
	GType gType;
	_Value__data__union[2] data;
}

struct GValueArray
{
	/**
	 * number of values contained in the array
	 */
	uint nValues;
	/**
	 * array of values
	 */
	GValue* values;
	uint nPrealloced;
}

struct GWeakRef
{
	union Priv
	{
		void* p;
	}
	Priv priv;
}

struct _Value__data__union
{
	union
	{
		int vInt;
		uint vUint;
		glong vLong;
		gulong vUlong;
		long vInt64;
		ulong vUint64;
		float vFloat;
		double vDouble;
		void* vPointer;
	}
}

/**
 * A callback function used by the type system to finalize those portions
 * of a derived types class structure that were setup from the corresponding
 * GBaseInitFunc() function.
 *
 * Class finalization basically works the inverse way in which class
 * initialization is performed.
 *
 * See GClassInitFunc() for a discussion of the class initialization process.
 *
 * Params:
 *     gClass = The #GTypeClass structure to finalize
 */
public alias extern(C) void function(void* gClass) GBaseFinalizeFunc;

/**
 * A callback function used by the type system to do base initialization
 * of the class structures of derived types.
 *
 * This function is called as part of the initialization process of all derived
 * classes and should reallocate or reset all dynamic class members copied over
 * from the parent class.
 *
 * For example, class members (such as strings) that are not sufficiently
 * handled by a plain memory copy of the parent class into the derived class
 * have to be altered. See GClassInitFunc() for a discussion of the class
 * initialization process.
 *
 * Params:
 *     gClass = The #GTypeClass structure to initialize
 */
public alias extern(C) void function(void* gClass) GBaseInitFunc;

/**
 * A function to be called to transform @from_value to @to_value.
 *
 * If this is the @transform_to function of a binding, then @from_value
 * is the @source_property on the @source object, and @to_value is the
 * @target_property on the @target object. If this is the
 * @transform_from function of a %G_BINDING_BIDIRECTIONAL binding,
 * then those roles are reversed.
 *
 * Params:
 *     binding = a #GBinding
 *     fromValue = the #GValue containing the value to transform
 *     toValue = the #GValue in which to store the transformed value
 *     userData = data passed to the transform function
 *
 * Returns: %TRUE if the transformation was successful, and %FALSE
 *     otherwise
 *
 * Since: 2.26
 */
public alias extern(C) int function(GBinding* binding, GValue* fromValue, GValue* toValue, void* userData) GBindingTransformFunc;

/**
 * This function is provided by the user and should produce a copy
 * of the passed in boxed structure.
 *
 * Params:
 *     boxed = The boxed structure to be copied.
 *
 * Returns: The newly created copy of the boxed structure.
 */
public alias extern(C) void* function(void* boxed) GBoxedCopyFunc;

/**
 * This function is provided by the user and should free the boxed
 * structure passed.
 *
 * Params:
 *     boxed = The boxed structure to be freed.
 */
public alias extern(C) void function(void* boxed) GBoxedFreeFunc;

/**
 * The type used for callback functions in structure definitions and function
 * signatures.
 *
 * This doesn't mean that all callback functions must take no  parameters and
 * return void. The required signature of a callback function is determined by
 * the context in which is used (e.g. the signal to which it is connected).
 *
 * Use G_CALLBACK() to cast the callback function to a #GCallback.
 */
public alias extern(C) void function() GCallback;

/**
 * A callback function used by the type system to finalize a class.
 *
 * This function is rarely needed, as dynamically allocated class resources
 * should be handled by GBaseInitFunc() and GBaseFinalizeFunc().
 *
 * Also, specification of a GClassFinalizeFunc() in the #GTypeInfo
 * structure of a static type is invalid, because classes of static types
 * will never be finalized (they are artificially kept alive when their
 * reference count drops to zero).
 *
 * Params:
 *     gClass = The #GTypeClass structure to finalize
 *     classData = The @class_data member supplied via the #GTypeInfo structure
 */
public alias extern(C) void function(void* gClass, void* classData) GClassFinalizeFunc;

/**
 * A callback function used by the type system to initialize the class
 * of a specific type.
 *
 * This function should initialize all static class members.
 *
 * The initialization process of a class involves:
 *
 * - Copying common members from the parent class over to the
 * derived class structure.
 * - Zero initialization of the remaining members not copied
 * over from the parent class.
 * - Invocation of the GBaseInitFunc() initializers of all parent
 * types and the class' type.
 * - Invocation of the class' GClassInitFunc() initializer.
 *
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
 *
 * An example may help to correspond the intend of the different class
 * initializers:
 *
 * |[<!-- language="C" -->
 * typedef struct {
 * GObjectClass parent_class;
 * gint         static_integer;
 * gchar       *dynamic_string;
 * } TypeAClass;
 * static void
 * type_a_base_class_init (TypeAClass *class)
 * {
 * class->dynamic_string = g_strdup ("some string");
 * }
 * static void
 * type_a_base_class_finalize (TypeAClass *class)
 * {
 * g_free (class->dynamic_string);
 * }
 * static void
 * type_a_class_init (TypeAClass *class)
 * {
 * class->static_integer = 42;
 * }
 *
 * typedef struct {
 * TypeAClass   parent_class;
 * gfloat       static_float;
 * GString     *dynamic_gstring;
 * } TypeBClass;
 * static void
 * type_b_base_class_init (TypeBClass *class)
 * {
 * class->dynamic_gstring = g_string_new ("some other string");
 * }
 * static void
 * type_b_base_class_finalize (TypeBClass *class)
 * {
 * g_string_free (class->dynamic_gstring);
 * }
 * static void
 * type_b_class_init (TypeBClass *class)
 * {
 * class->static_float = 3.14159265358979323846;
 * }
 * ]|
 *
 * Initialization of TypeBClass will first cause initialization of
 * TypeAClass (derived classes reference their parent classes, see
 * g_type_class_ref() on this).
 *
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
 *
 * After that, the GBaseInitFunc() of TypeBClass, type_b_base_class_init()
 * is called to allocate the dynamic members of TypeBClass (dynamic_gstring),
 * and finally the GClassInitFunc() of TypeBClass, type_b_class_init(),
 * is called to complete the initialization process with the static members
 * (static_float).
 *
 * Corresponding finalization counter parts to the GBaseInitFunc() functions
 * have to be provided to release allocated resources at class finalization
 * time.
 *
 * Params:
 *     gClass = The #GTypeClass structure to initialize.
 *     classData = The @class_data member supplied via the #GTypeInfo structure.
 */
public alias extern(C) void function(void* gClass, void* classData) GClassInitFunc;

/**
 * The type used for marshaller functions.
 *
 * Params:
 *     closure = the #GClosure to which the marshaller belongs
 *     returnValue = a #GValue to store the return
 *         value. May be %NULL if the callback of @closure doesn't return a
 *         value.
 *     nParamValues = the length of the @param_values array
 *     paramValues = an array of
 *         #GValues holding the arguments on which to invoke the
 *         callback of @closure
 *     invocationHint = the invocation hint given as the
 *         last argument to g_closure_invoke()
 *     marshalData = additional data specified when
 *         registering the marshaller, see g_closure_set_marshal() and
 *         g_closure_set_meta_marshal()
 */
public alias extern(C) void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) GClosureMarshal;

/**
 * The type used for the various notification callbacks which can be registered
 * on closures.
 *
 * Params:
 *     data = data specified when registering the notification callback
 *     closure = the #GClosure on which the notification is emitted
 */
public alias extern(C) void function(void* data, GClosure* closure) GClosureNotify;

/**
 * A callback function used by the type system to initialize a new
 * instance of a type.
 *
 * This function initializes all instance members and allocates any resources
 * required by it.
 *
 * Initialization of a derived instance involves calling all its parent
 * types instance initializers, so the class member of the instance
 * is altered during its initialization to always point to the class that
 * belongs to the type the current initializer was introduced for.
 *
 * The extended members of @instance are guaranteed to have been filled with
 * zeros before this function is called.
 *
 * Params:
 *     instance_ = The instance to initialize
 *     gClass = The class of the type the instance is
 *         created for
 */
public alias extern(C) void function(GTypeInstance* instance_, void* gClass) GInstanceInitFunc;

/**
 * A callback function used by the type system to finalize an interface.
 *
 * This function should destroy any internal data and release any resources
 * allocated by the corresponding GInterfaceInitFunc() function.
 *
 * Params:
 *     gIface = The interface structure to finalize
 *     ifaceData = The @interface_data supplied via the #GInterfaceInfo structure
 */
public alias extern(C) void function(void* gIface, void* ifaceData) GInterfaceFinalizeFunc;

/**
 * A callback function used by the type system to initialize a new
 * interface.
 *
 * This function should initialize all internal data and* allocate any
 * resources required by the interface.
 *
 * The members of @iface_data are guaranteed to have been filled with
 * zeros before this function is called.
 *
 * Params:
 *     gIface = The interface structure to initialize
 *     ifaceData = The @interface_data supplied via the #GInterfaceInfo structure
 */
public alias extern(C) void function(void* gIface, void* ifaceData) GInterfaceInitFunc;

/**
 * The type of the @finalize function of #GObjectClass.
 *
 * Params:
 *     object = the #GObject being finalized
 */
public alias extern(C) void function(GObject* object) GObjectFinalizeFunc;

/**
 * The type of the @get_property function of #GObjectClass.
 *
 * Params:
 *     object = a #GObject
 *     propertyId = the numeric id under which the property was registered with
 *         g_object_class_install_property().
 *     value = a #GValue to return the property value in
 *     pspec = the #GParamSpec describing the property
 */
public alias extern(C) void function(GObject* object, uint propertyId, GValue* value, GParamSpec* pspec) GObjectGetPropertyFunc;

/**
 * The type of the @set_property function of #GObjectClass.
 *
 * Params:
 *     object = a #GObject
 *     propertyId = the numeric id under which the property was registered with
 *         g_object_class_install_property().
 *     value = the new value for the property
 *     pspec = the #GParamSpec describing the property
 */
public alias extern(C) void function(GObject* object, uint propertyId, GValue* value, GParamSpec* pspec) GObjectSetPropertyFunc;

/**
 * The signal accumulator is a special callback function that can be used
 * to collect return values of the various callbacks that are called
 * during a signal emission.
 *
 * The signal accumulator is specified at signal creation time, if it is
 * left %NULL, no accumulation of callback return values is performed.
 * The return value of signal emissions is then the value returned by the
 * last callback.
 *
 * Params:
 *     ihint = Signal invocation hint, see #GSignalInvocationHint.
 *     returnAccu = Accumulator to collect callback return values in, this
 *         is the return value of the current signal emission.
 *     handlerReturn = A #GValue holding the return value of the signal handler.
 *     data = Callback data that was specified when creating the signal.
 *
 * Returns: The accumulator function returns whether the signal emission
 *     should be aborted. Returning %TRUE will continue with
 *     the signal emission. Returning %FALSE will abort the current emission.
 *     Since 2.62, returning %FALSE will skip to the CLEANUP stage. In this case,
 *     emission will occur as normal in the CLEANUP stage and the handler's
 *     return value will be accumulated.
 */
public alias extern(C) int function(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, void* data) GSignalAccumulator;

/**
 * A simple function pointer to get invoked when the signal is emitted.
 *
 * Emission hooks allow you to tie a hook to the signal type, so that it will
 * trap all emissions of that signal, from any object.
 *
 * You may not attach these to signals created with the %G_SIGNAL_NO_HOOKS flag.
 *
 * Params:
 *     ihint = Signal invocation hint, see #GSignalInvocationHint.
 *     nParamValues = the number of parameters to the function, including
 *         the instance on which the signal was emitted.
 *     paramValues = the instance on which
 *         the signal was emitted, followed by the parameters of the emission.
 *     data = user data associated with the hook.
 *
 * Returns: whether it wants to stay connected. If it returns %FALSE, the signal
 *     hook is disconnected (and destroyed).
 */
public alias extern(C) int function(GSignalInvocationHint* ihint, uint nParamValues, GValue* paramValues, void* data) GSignalEmissionHook;

/**
 * A callback function used for notification when the state
 * of a toggle reference changes.
 *
 * See also: g_object_add_toggle_ref()
 *
 * Params:
 *     data = Callback data passed to g_object_add_toggle_ref()
 *     object = The object on which g_object_add_toggle_ref() was called.
 *     isLastRef = %TRUE if the toggle reference is now the
 *         last reference to the object. %FALSE if the toggle
 *         reference was the last reference and there are now other
 *         references.
 */
public alias extern(C) void function(void* data, GObject* object, int isLastRef) GToggleNotify;

/**
 * A callback function which is called when the reference count of a class
 * drops to zero.
 *
 * It may use g_type_class_ref() to prevent the class from being freed. You
 * should not call g_type_class_unref() from a #GTypeClassCacheFunc function
 * to prevent infinite recursion, use g_type_class_unref_uncached() instead.
 *
 * The functions have to check the class id passed in to figure
 * whether they actually want to cache the class of this type, since all
 * classes are routed through the same #GTypeClassCacheFunc chain.
 *
 * Params:
 *     cacheData = data that was given to the g_type_add_class_cache_func() call
 *     gClass = The #GTypeClass structure which is
 *         unreferenced
 *
 * Returns: %TRUE to stop further #GTypeClassCacheFuncs from being
 *     called, %FALSE to continue
 */
public alias extern(C) int function(void* cacheData, GTypeClass* gClass) GTypeClassCacheFunc;

/**
 * A callback called after an interface vtable is initialized.
 *
 * See g_type_add_interface_check().
 *
 * Params:
 *     checkData = data passed to g_type_add_interface_check()
 *     gIface = the interface that has been
 *         initialized
 *
 * Since: 2.4
 */
public alias extern(C) void function(void* checkData, void* gIface) GTypeInterfaceCheckFunc;

/**
 * The type of the @complete_interface_info function of #GTypePluginClass.
 *
 * Params:
 *     plugin = the #GTypePlugin
 *     instanceType = the #GType of an instantiatable type to which the interface
 *         is added
 *     interfaceType = the #GType of the interface whose info is completed
 *     info = the #GInterfaceInfo to fill in
 */
public alias extern(C) void function(GTypePlugin* plugin, GType instanceType, GType interfaceType, GInterfaceInfo* info) GTypePluginCompleteInterfaceInfo;

/**
 * The type of the @complete_type_info function of #GTypePluginClass.
 *
 * Params:
 *     plugin = the #GTypePlugin
 *     gType = the #GType whose info is completed
 *     info = the #GTypeInfo struct to fill in
 *     valueTable = the #GTypeValueTable to fill in
 */
public alias extern(C) void function(GTypePlugin* plugin, GType gType, GTypeInfo* info, GTypeValueTable* valueTable) GTypePluginCompleteTypeInfo;

/**
 * The type of the @unuse_plugin function of #GTypePluginClass.
 *
 * Params:
 *     plugin = the #GTypePlugin whose use count should be decreased
 */
public alias extern(C) void function(GTypePlugin* plugin) GTypePluginUnuse;

/**
 * The type of the @use_plugin function of #GTypePluginClass, which gets called
 * to increase the use count of @plugin.
 *
 * Params:
 *     plugin = the #GTypePlugin whose use count should be increased
 */
public alias extern(C) void function(GTypePlugin* plugin) GTypePluginUse;

/**
 * This is the signature of va_list marshaller functions, an optional
 * marshaller that can be used in some situations to avoid
 * marshalling the signal argument into GValues.
 *
 * Params:
 *     closure = the #GClosure to which the marshaller belongs
 *     returnValue = a #GValue to store the return
 *         value. May be %NULL if the callback of @closure doesn't return a
 *         value.
 *     instance_ = the instance on which the closure is
 *         invoked.
 *     args = va_list of arguments to be passed to the closure.
 *     marshalData = additional data specified when
 *         registering the marshaller, see g_closure_set_marshal() and
 *         g_closure_set_meta_marshal()
 *     nParams = the length of the @param_types array
 *     paramTypes = the #GType of each argument from
 *         @args.
 */
public alias extern(C) void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes) GVaClosureMarshal;

/**
 * The type of value transformation functions which can be registered with
 * g_value_register_transform_func().
 *
 * @dest_value will be initialized to the correct destination type.
 *
 * Params:
 *     srcValue = Source value.
 *     destValue = Target value.
 */
public alias extern(C) void function(GValue* srcValue, GValue* destValue) GValueTransform;

/**
 * A #GWeakNotify function can be added to an object as a callback that gets
 * triggered when the object is finalized.
 *
 * Since the object is already being disposed when the #GWeakNotify is called,
 * there's not much you could do with the object, apart from e.g. using its
 * address as hash-index or the like.
 *
 * In particular, this means it’s invalid to call g_object_ref(),
 * g_weak_ref_init(), g_weak_ref_set(), g_object_add_toggle_ref(),
 * g_object_weak_ref(), g_object_add_weak_pointer() or any function which calls
 * them on the object from this callback.
 *
 * Params:
 *     data = data that was provided when the weak reference was established
 *     whereTheObjectWas = the object being disposed
 */
public alias extern(C) void function(void* data, GObject* whereTheObjectWas) GWeakNotify;

/**
 * Mask containing the bits of #GParamSpec.flags which are reserved for GLib.
 */
enum PARAM_MASK = 255;
alias G_PARAM_MASK = PARAM_MASK;

/**
 * #GParamFlags value alias for %G_PARAM_STATIC_NAME | %G_PARAM_STATIC_NICK | %G_PARAM_STATIC_BLURB.
 *
 * Since 2.13.0
 */
enum PARAM_STATIC_STRINGS = 224;
alias G_PARAM_STATIC_STRINGS = PARAM_STATIC_STRINGS;

/**
 * Minimum shift count to be used for user defined flags, to be stored in
 * #GParamSpec.flags. The maximum allowed is 10.
 */
enum PARAM_USER_SHIFT = 8;
alias G_PARAM_USER_SHIFT = PARAM_USER_SHIFT;

/**
 * A mask for all #GSignalFlags bits.
 */
enum SIGNAL_FLAGS_MASK = 511;
alias G_SIGNAL_FLAGS_MASK = SIGNAL_FLAGS_MASK;

/**
 * A mask for all #GSignalMatchType bits.
 */
enum SIGNAL_MATCH_MASK = 63;
alias G_SIGNAL_MATCH_MASK = SIGNAL_MATCH_MASK;

/**
 * A bit in the type number that's supposed to be left untouched.
 */
enum TYPE_FLAG_RESERVED_ID_BIT = 1;
alias G_TYPE_FLAG_RESERVED_ID_BIT = TYPE_FLAG_RESERVED_ID_BIT;

/**
 * An integer constant that represents the number of identifiers reserved
 * for types that are assigned at compile-time.
 */
enum TYPE_FUNDAMENTAL_MAX = 255;
alias G_TYPE_FUNDAMENTAL_MAX = TYPE_FUNDAMENTAL_MAX;

/**
 * Shift value used in converting numbers to type IDs.
 */
enum TYPE_FUNDAMENTAL_SHIFT = 2;
alias G_TYPE_FUNDAMENTAL_SHIFT = TYPE_FUNDAMENTAL_SHIFT;

/**
 * First fundamental type number to create a new fundamental type id with
 * G_TYPE_MAKE_FUNDAMENTAL() reserved for BSE.
 */
enum TYPE_RESERVED_BSE_FIRST = 32;
alias G_TYPE_RESERVED_BSE_FIRST = TYPE_RESERVED_BSE_FIRST;

/**
 * Last fundamental type number reserved for BSE.
 */
enum TYPE_RESERVED_BSE_LAST = 48;
alias G_TYPE_RESERVED_BSE_LAST = TYPE_RESERVED_BSE_LAST;

/**
 * First fundamental type number to create a new fundamental type id with
 * G_TYPE_MAKE_FUNDAMENTAL() reserved for GLib.
 */
enum TYPE_RESERVED_GLIB_FIRST = 22;
alias G_TYPE_RESERVED_GLIB_FIRST = TYPE_RESERVED_GLIB_FIRST;

/**
 * Last fundamental type number reserved for GLib.
 */
enum TYPE_RESERVED_GLIB_LAST = 31;
alias G_TYPE_RESERVED_GLIB_LAST = TYPE_RESERVED_GLIB_LAST;

/**
 * First available fundamental type number to create new fundamental
 * type id with G_TYPE_MAKE_FUNDAMENTAL().
 */
enum TYPE_RESERVED_USER_FIRST = 49;
alias G_TYPE_RESERVED_USER_FIRST = TYPE_RESERVED_USER_FIRST;

/**
 * For string values, indicates that the string contained is canonical and will
 * exist for the duration of the process. See g_value_set_interned_string().
 */
enum VALUE_INTERNED_STRING = 268435456;
alias G_VALUE_INTERNED_STRING = VALUE_INTERNED_STRING;

/**
 * If passed to G_VALUE_COLLECT(), allocated data won't be copied
 * but used verbatim. This does not affect ref-counted types like
 * objects. This does not affect usage of g_value_copy(), the data will
 * be copied if it is not ref-counted.
 */
enum VALUE_NOCOPY_CONTENTS = 134217728;
alias G_VALUE_NOCOPY_CONTENTS = VALUE_NOCOPY_CONTENTS;
