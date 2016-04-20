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


module gobject.Value;

private import gdk.Pixbuf;
private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.TypeInstance;
private import gtkc.gobject;
public  import gtkc.gobjecttypes;


/**
 * An opaque structure used to hold different types of values.
 * The data within the structure has protected scope: it is accessible only
 * to functions within a #GTypeValueTable structure, or implementations of
 * the g_value_*() API. That is, code portions which implement new fundamental
 * types.
 * #GValue users cannot make any assumptions about how data is stored
 * within the 2 element @data union, and the @g_type member should
 * only be accessed through the G_VALUE_TYPE() macro.
 */
public class Value
{
	/** the main Gtk struct */
	protected GValue* gValue;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GValue* getValueStruct()
	{
		return gValue;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gValue;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GValue* gValue, bool ownedRef = false)
	{
		this.gValue = gValue;
		this.ownedRef = ownedRef;
	}

	/** */
	public this()
	{
		this(new GValue);
	}
	
	/** */
	this(Pixbuf pixbuf)
	{
		this();
		init(Pixbuf.getType());
		setObject(pixbuf);
	}
	
	/** */
	this(string value)
	{
		this();
		init(GType.STRING);
		setString(value);
	}
	
	/** */
	this(int value)
	{
		this();
		init(GType.INT);
		setInt(value);
	}
	
	/** */
	this(float value)
	{
		this();
		init(GType.FLOAT);
		setFloat(value);
	}
	
	/** */
	this(double value)
	{
		this();
		init(GType.DOUBLE);
		setDouble(value);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return g_value_get_type();
	}

	/**
	 * Copies the value of @src_value into @dest_value.
	 *
	 * Params:
	 *     destValue = An initialized #GValue structure of the same type as @src_value.
	 */
	public void copy(Value destValue)
	{
		g_value_copy(gValue, (destValue is null) ? null : destValue.getValueStruct());
	}

	/**
	 * Get the contents of a %G_TYPE_BOXED derived #GValue.  Upon getting,
	 * the boxed value is duplicated and needs to be later freed with
	 * g_boxed_free(), e.g. like: g_boxed_free (G_VALUE_TYPE (@value),
	 * return_value);
	 *
	 * Return: boxed contents of @value
	 */
	public void* dupBoxed()
	{
		return g_value_dup_boxed(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_OBJECT derived #GValue, increasing
	 * its reference count. If the contents of the #GValue are %NULL, then
	 * %NULL will be returned.
	 *
	 * Return: object content of @value,
	 *     should be unreferenced when no longer needed.
	 */
	public ObjectG dupObject()
	{
		auto p = g_value_dup_object(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p, true);
	}

	/**
	 * Get the contents of a %G_TYPE_PARAM #GValue, increasing its
	 * reference count.
	 *
	 * Return: #GParamSpec content of @value, should be unreferenced when
	 *     no longer needed.
	 */
	public ParamSpec dupParam()
	{
		auto p = g_value_dup_param(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}

	/**
	 * Get a copy the contents of a %G_TYPE_STRING #GValue.
	 *
	 * Return: a newly allocated copy of the string content of @value
	 */
	public string dupString()
	{
		auto retStr = g_value_dup_string(gValue);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Get the contents of a variant #GValue, increasing its refcount.
	 *
	 * Return: variant contents of @value, should be unrefed using
	 *     g_variant_unref() when no longer needed
	 *
	 * Since: 2.26
	 */
	public Variant dupVariant()
	{
		auto p = g_value_dup_variant(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Determines if @value will fit inside the size of a pointer value.
	 * This is an internal function introduced mainly for C marshallers.
	 *
	 * Return: %TRUE if @value will fit inside a pointer value.
	 */
	public bool fitsPointer()
	{
		return g_value_fits_pointer(gValue) != 0;
	}

	/**
	 * Get the contents of a %G_TYPE_BOOLEAN #GValue.
	 *
	 * Return: boolean contents of @value
	 */
	public bool getBoolean()
	{
		return g_value_get_boolean(gValue) != 0;
	}

	/**
	 * Get the contents of a %G_TYPE_BOXED derived #GValue.
	 *
	 * Return: boxed contents of @value
	 */
	public void* getBoxed()
	{
		return g_value_get_boxed(gValue);
	}

	/**
	 * Do not use this function; it is broken on platforms where the %char
	 * type is unsigned, such as ARM and PowerPC.  See g_value_get_schar().
	 *
	 * Get the contents of a %G_TYPE_CHAR #GValue.
	 *
	 * Deprecated: This function's return type is broken, see g_value_get_schar()
	 *
	 * Return: character contents of @value
	 */
	public char getChar()
	{
		return g_value_get_char(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_DOUBLE #GValue.
	 *
	 * Return: double contents of @value
	 */
	public double getDouble()
	{
		return g_value_get_double(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_ENUM #GValue.
	 *
	 * Return: enum contents of @value
	 */
	public int getEnum()
	{
		return g_value_get_enum(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_FLAGS #GValue.
	 *
	 * Return: flags contents of @value
	 */
	public uint getFlags()
	{
		return g_value_get_flags(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_FLOAT #GValue.
	 *
	 * Return: float contents of @value
	 */
	public float getFloat()
	{
		return g_value_get_float(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_GTYPE #GValue.
	 *
	 * Return: the #GType stored in @value
	 *
	 * Since: 2.12
	 */
	public GType getGtype()
	{
		return g_value_get_gtype(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_INT #GValue.
	 *
	 * Return: integer contents of @value
	 */
	public int getInt()
	{
		return g_value_get_int(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_INT64 #GValue.
	 *
	 * Return: 64bit integer contents of @value
	 */
	public long getInt64()
	{
		return g_value_get_int64(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_LONG #GValue.
	 *
	 * Return: long integer contents of @value
	 */
	public glong getLong()
	{
		return g_value_get_long(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_OBJECT derived #GValue.
	 *
	 * Return: object contents of @value
	 */
	public ObjectG getObject()
	{
		auto p = g_value_get_object(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
	}

	/**
	 * Get the contents of a %G_TYPE_PARAM #GValue.
	 *
	 * Return: #GParamSpec content of @value
	 */
	public ParamSpec getParam()
	{
		auto p = g_value_get_param(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}

	/**
	 * Get the contents of a pointer #GValue.
	 *
	 * Return: pointer contents of @value
	 */
	public void* getPointer()
	{
		return g_value_get_pointer(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_CHAR #GValue.
	 *
	 * Return: signed 8 bit integer contents of @value
	 *
	 * Since: 2.32
	 */
	public byte getSchar()
	{
		return g_value_get_schar(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_STRING #GValue.
	 *
	 * Return: string content of @value
	 */
	public string getString()
	{
		return Str.toString(g_value_get_string(gValue));
	}

	/**
	 * Get the contents of a %G_TYPE_UCHAR #GValue.
	 *
	 * Return: unsigned character contents of @value
	 */
	public char getUchar()
	{
		return g_value_get_uchar(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_UINT #GValue.
	 *
	 * Return: unsigned integer contents of @value
	 */
	public uint getUint()
	{
		return g_value_get_uint(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_UINT64 #GValue.
	 *
	 * Return: unsigned 64bit integer contents of @value
	 */
	public ulong getUint64()
	{
		return g_value_get_uint64(gValue);
	}

	/**
	 * Get the contents of a %G_TYPE_ULONG #GValue.
	 *
	 * Return: unsigned long integer contents of @value
	 */
	public gulong getUlong()
	{
		return g_value_get_ulong(gValue);
	}

	/**
	 * Get the contents of a variant #GValue.
	 *
	 * Return: variant contents of @value
	 *
	 * Since: 2.26
	 */
	public Variant getVariant()
	{
		auto p = g_value_get_variant(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return new Variant(cast(GVariant*) p, true);
	}

	/**
	 * Initializes @value with the default value of @type.
	 *
	 * Params:
	 *     gType = Type the #GValue should hold values of.
	 *
	 * Return: the #GValue structure that has been passed in
	 */
	public Value init(GType gType)
	{
		auto p = g_value_init(gValue, gType);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}

	/**
	 * Initializes and sets @value from an instantiatable type via the
	 * value_table's collect_value() function.
	 *
	 * Note: The @value will be initialised with the exact type of
	 * @instance.  If you wish to set the @value's type to a different GType
	 * (such as a parent class GType), you need to manually call
	 * g_value_init() and g_value_set_instance().
	 *
	 * Params:
	 *     instanc = the instance
	 *
	 * Since: 2.42
	 */
	public void initFromInstance(TypeInstance instanc)
	{
		g_value_init_from_instance(gValue, (instanc is null) ? null : instanc.getTypeInstanceStruct());
	}

	/**
	 * Returns the value contents as pointer. This function asserts that
	 * g_value_fits_pointer() returned %TRUE for the passed in value.
	 * This is an internal function introduced mainly for C marshallers.
	 *
	 * Return: the value contents as pointer
	 */
	public void* peekPointer()
	{
		return g_value_peek_pointer(gValue);
	}

	/**
	 * Clears the current value in @value and resets it to the default value
	 * (as if the value had just been initialized).
	 *
	 * Return: the #GValue structure that has been passed in
	 */
	public Value reset()
	{
		auto p = g_value_reset(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p, true);
	}

	/**
	 * Set the contents of a %G_TYPE_BOOLEAN #GValue to @v_boolean.
	 *
	 * Params:
	 *     vBoolean = boolean value to be set
	 */
	public void setBoolean(bool vBoolean)
	{
		g_value_set_boolean(gValue, vBoolean);
	}

	/**
	 * Set the contents of a %G_TYPE_BOXED derived #GValue to @v_boxed.
	 *
	 * Params:
	 *     vBoxed = boxed value to be set
	 */
	public void setBoxed(void* vBoxed)
	{
		g_value_set_boxed(gValue, vBoxed);
	}

	/**
	 * This is an internal function introduced mainly for C marshallers.
	 *
	 * Deprecated: Use g_value_take_boxed() instead.
	 *
	 * Params:
	 *     vBoxed = duplicated unowned boxed value to be set
	 */
	public void setBoxedTakeOwnership(void* vBoxed)
	{
		g_value_set_boxed_take_ownership(gValue, vBoxed);
	}

	/**
	 * Set the contents of a %G_TYPE_CHAR #GValue to @v_char.
	 *
	 * Deprecated: This function's input type is broken, see g_value_set_schar()
	 *
	 * Params:
	 *     vChar = character value to be set
	 */
	public void setChar(char vChar)
	{
		g_value_set_char(gValue, vChar);
	}

	/**
	 * Set the contents of a %G_TYPE_DOUBLE #GValue to @v_double.
	 *
	 * Params:
	 *     vDouble = double value to be set
	 */
	public void setDouble(double vDouble)
	{
		g_value_set_double(gValue, vDouble);
	}

	/**
	 * Set the contents of a %G_TYPE_ENUM #GValue to @v_enum.
	 *
	 * Params:
	 *     vEnum = enum value to be set
	 */
	public void setEnum(int vEnum)
	{
		g_value_set_enum(gValue, vEnum);
	}

	/**
	 * Set the contents of a %G_TYPE_FLAGS #GValue to @v_flags.
	 *
	 * Params:
	 *     vFlags = flags value to be set
	 */
	public void setFlags(uint vFlags)
	{
		g_value_set_flags(gValue, vFlags);
	}

	/**
	 * Set the contents of a %G_TYPE_FLOAT #GValue to @v_float.
	 *
	 * Params:
	 *     vFloat = float value to be set
	 */
	public void setFloat(float vFloat)
	{
		g_value_set_float(gValue, vFloat);
	}

	/**
	 * Set the contents of a %G_TYPE_GTYPE #GValue to @v_gtype.
	 *
	 * Params:
	 *     vGtype = #GType to be set
	 *
	 * Since: 2.12
	 */
	public void setGtype(GType vGtype)
	{
		g_value_set_gtype(gValue, vGtype);
	}

	/**
	 * Sets @value from an instantiatable type via the
	 * value_table's collect_value() function.
	 *
	 * Params:
	 *     instanc = the instance
	 */
	public void setInstance(void* instanc)
	{
		g_value_set_instance(gValue, instanc);
	}

	/**
	 * Set the contents of a %G_TYPE_INT #GValue to @v_int.
	 *
	 * Params:
	 *     vInt = integer value to be set
	 */
	public void setInt(int vInt)
	{
		g_value_set_int(gValue, vInt);
	}

	/**
	 * Set the contents of a %G_TYPE_INT64 #GValue to @v_int64.
	 *
	 * Params:
	 *     vInt64 = 64bit integer value to be set
	 */
	public void setInt64(long vInt64)
	{
		g_value_set_int64(gValue, vInt64);
	}

	/**
	 * Set the contents of a %G_TYPE_LONG #GValue to @v_long.
	 *
	 * Params:
	 *     vLong = long integer value to be set
	 */
	public void setLong(glong vLong)
	{
		g_value_set_long(gValue, vLong);
	}

	/**
	 * Set the contents of a %G_TYPE_OBJECT derived #GValue to @v_object.
	 *
	 * g_value_set_object() increases the reference count of @v_object
	 * (the #GValue holds a reference to @v_object).  If you do not wish
	 * to increase the reference count of the object (i.e. you wish to
	 * pass your current reference to the #GValue because you no longer
	 * need it), use g_value_take_object() instead.
	 *
	 * It is important that your #GValue holds a reference to @v_object (either its
	 * own, or one it has taken) to ensure that the object won't be destroyed while
	 * the #GValue still exists).
	 *
	 * Params:
	 *     vObject = object value to be set
	 */
	public void setObject(ObjectG vObject)
	{
		g_value_set_object(gValue, (vObject is null) ? null : vObject.getObjectGStruct());
	}

	/**
	 * This is an internal function introduced mainly for C marshallers.
	 *
	 * Deprecated: Use g_value_take_object() instead.
	 *
	 * Params:
	 *     vObject = object value to be set
	 */
	public void setObjectTakeOwnership(void* vObject)
	{
		g_value_set_object_take_ownership(gValue, vObject);
	}

	/**
	 * Set the contents of a %G_TYPE_PARAM #GValue to @param.
	 *
	 * Params:
	 *     param = the #GParamSpec to be set
	 */
	public void setParam(ParamSpec param)
	{
		g_value_set_param(gValue, (param is null) ? null : param.getParamSpecStruct());
	}

	/**
	 * This is an internal function introduced mainly for C marshallers.
	 *
	 * Deprecated: Use g_value_take_param() instead.
	 *
	 * Params:
	 *     param = the #GParamSpec to be set
	 */
	public void setParamTakeOwnership(ParamSpec param)
	{
		g_value_set_param_take_ownership(gValue, (param is null) ? null : param.getParamSpecStruct());
	}

	/**
	 * Set the contents of a pointer #GValue to @v_pointer.
	 *
	 * Params:
	 *     vPointer = pointer value to be set
	 */
	public void setPointer(void* vPointer)
	{
		g_value_set_pointer(gValue, vPointer);
	}

	/**
	 * Set the contents of a %G_TYPE_CHAR #GValue to @v_char.
	 *
	 * Params:
	 *     vChar = signed 8 bit integer to be set
	 *
	 * Since: 2.32
	 */
	public void setSchar(byte vChar)
	{
		g_value_set_schar(gValue, vChar);
	}

	/**
	 * Set the contents of a %G_TYPE_BOXED derived #GValue to @v_boxed.
	 * The boxed value is assumed to be static, and is thus not duplicated
	 * when setting the #GValue.
	 *
	 * Params:
	 *     vBoxed = static boxed value to be set
	 */
	public void setStaticBoxed(void* vBoxed)
	{
		g_value_set_static_boxed(gValue, vBoxed);
	}

	/**
	 * Set the contents of a %G_TYPE_STRING #GValue to @v_string.
	 * The string is assumed to be static, and is thus not duplicated
	 * when setting the #GValue.
	 *
	 * Params:
	 *     vString = static string to be set
	 */
	public void setStaticString(string vString)
	{
		g_value_set_static_string(gValue, Str.toStringz(vString));
	}

	/**
	 * Set the contents of a %G_TYPE_STRING #GValue to @v_string.
	 *
	 * Params:
	 *     vString = caller-owned string to be duplicated for the #GValue
	 */
	public void setString(string vString)
	{
		g_value_set_string(gValue, Str.toStringz(vString));
	}

	/**
	 * This is an internal function introduced mainly for C marshallers.
	 *
	 * Deprecated: Use g_value_take_string() instead.
	 *
	 * Params:
	 *     vString = duplicated unowned string to be set
	 */
	public void setStringTakeOwnership(string vString)
	{
		g_value_set_string_take_ownership(gValue, Str.toStringz(vString));
	}

	/**
	 * Set the contents of a %G_TYPE_UCHAR #GValue to @v_uchar.
	 *
	 * Params:
	 *     vUchar = unsigned character value to be set
	 */
	public void setUchar(char vUchar)
	{
		g_value_set_uchar(gValue, vUchar);
	}

	/**
	 * Set the contents of a %G_TYPE_UINT #GValue to @v_uint.
	 *
	 * Params:
	 *     vUint = unsigned integer value to be set
	 */
	public void setUint(uint vUint)
	{
		g_value_set_uint(gValue, vUint);
	}

	/**
	 * Set the contents of a %G_TYPE_UINT64 #GValue to @v_uint64.
	 *
	 * Params:
	 *     vUint64 = unsigned 64bit integer value to be set
	 */
	public void setUint64(ulong vUint64)
	{
		g_value_set_uint64(gValue, vUint64);
	}

	/**
	 * Set the contents of a %G_TYPE_ULONG #GValue to @v_ulong.
	 *
	 * Params:
	 *     vUlong = unsigned long integer value to be set
	 */
	public void setUlong(gulong vUlong)
	{
		g_value_set_ulong(gValue, vUlong);
	}

	/**
	 * Set the contents of a variant #GValue to @variant.
	 * If the variant is floating, it is consumed.
	 *
	 * Params:
	 *     variant = a #GVariant, or %NULL
	 *
	 * Since: 2.26
	 */
	public void setVariant(Variant variant)
	{
		g_value_set_variant(gValue, (variant is null) ? null : variant.getVariantStruct());
	}

	/**
	 * Sets the contents of a %G_TYPE_BOXED derived #GValue to @v_boxed
	 * and takes over the ownership of the callers reference to @v_boxed;
	 * the caller doesn't have to unref it any more.
	 *
	 * Params:
	 *     vBoxed = duplicated unowned boxed value to be set
	 *
	 * Since: 2.4
	 */
	public void takeBoxed(void* vBoxed)
	{
		g_value_take_boxed(gValue, vBoxed);
	}

	/**
	 * Sets the contents of a %G_TYPE_OBJECT derived #GValue to @v_object
	 * and takes over the ownership of the callers reference to @v_object;
	 * the caller doesn't have to unref it any more (i.e. the reference
	 * count of the object is not increased).
	 *
	 * If you want the #GValue to hold its own reference to @v_object, use
	 * g_value_set_object() instead.
	 *
	 * Params:
	 *     vObject = object value to be set
	 *
	 * Since: 2.4
	 */
	public void takeObject(void* vObject)
	{
		g_value_take_object(gValue, vObject);
	}

	/**
	 * Sets the contents of a %G_TYPE_PARAM #GValue to @param and takes
	 * over the ownership of the callers reference to @param; the caller
	 * doesn't have to unref it any more.
	 *
	 * Params:
	 *     param = the #GParamSpec to be set
	 *
	 * Since: 2.4
	 */
	public void takeParam(ParamSpec param)
	{
		g_value_take_param(gValue, (param is null) ? null : param.getParamSpecStruct());
	}

	/**
	 * Sets the contents of a %G_TYPE_STRING #GValue to @v_string.
	 *
	 * Params:
	 *     vString = string to take ownership of
	 *
	 * Since: 2.4
	 */
	public void takeString(string vString)
	{
		g_value_take_string(gValue, Str.toStringz(vString));
	}

	/**
	 * Set the contents of a variant #GValue to @variant, and takes over
	 * the ownership of the caller's reference to @variant;
	 * the caller doesn't have to unref it any more (i.e. the reference
	 * count of the variant is not increased).
	 *
	 * If @variant was floating then its floating reference is converted to
	 * a hard reference.
	 *
	 * If you want the #GValue to hold its own reference to @variant, use
	 * g_value_set_variant() instead.
	 *
	 * This is an internal function introduced mainly for C marshallers.
	 *
	 * Params:
	 *     variant = a #GVariant, or %NULL
	 *
	 * Since: 2.26
	 */
	public void takeVariant(Variant variant)
	{
		g_value_take_variant(gValue, (variant is null) ? null : variant.getVariantStruct());
	}

	/**
	 * Tries to cast the contents of @src_value into a type appropriate
	 * to store in @dest_value, e.g. to transform a %G_TYPE_INT value
	 * into a %G_TYPE_FLOAT value. Performing transformations between
	 * value types might incur precision lossage. Especially
	 * transformations into strings might reveal seemingly arbitrary
	 * results and shouldn't be relied upon for production code (such
	 * as rcfile value or object property serialization).
	 *
	 * Params:
	 *     destValue = Target value.
	 *
	 * Return: Whether a transformation rule was found and could be applied.
	 *     Upon failing transformations, @dest_value is left untouched.
	 */
	public bool transform(Value destValue)
	{
		return g_value_transform(gValue, (destValue is null) ? null : destValue.getValueStruct()) != 0;
	}

	/**
	 * Clears the current value in @value (if any) and "unsets" the type,
	 * this releases all resources associated with this GValue. An unset
	 * value is the same as an uninitialized (zero-filled) #GValue
	 * structure.
	 */
	public void unset()
	{
		g_value_unset(gValue);
	}

	/**
	 * Registers a value transformation function for use in g_value_transform().
	 * A previously registered transformation function for @src_type and @dest_type
	 * will be replaced.
	 *
	 * Params:
	 *     srcType = Source type.
	 *     destType = Target type.
	 *     transformFunc = a function which transforms values of type @src_type
	 *         into value of type @dest_type
	 */
	public static void registerTransformFunc(GType srcType, GType destType, GValueTransform transformFunc)
	{
		g_value_register_transform_func(srcType, destType, transformFunc);
	}

	/**
	 * Returns whether a #GValue of type @src_type can be copied into
	 * a #GValue of type @dest_type.
	 *
	 * Params:
	 *     srcType = source type to be copied.
	 *     destType = destination type for copying.
	 *
	 * Return: %TRUE if g_value_copy() is possible with @src_type and @dest_type.
	 */
	public static bool typeCompatible(GType srcType, GType destType)
	{
		return g_value_type_compatible(srcType, destType) != 0;
	}

	/**
	 * Check whether g_value_transform() is able to transform values
	 * of type @src_type into values of type @dest_type. Note that for
	 * the types to be transformable, they must be compatible and a
	 * transform function must be registered.
	 *
	 * Params:
	 *     srcType = Source type.
	 *     destType = Target type.
	 *
	 * Return: %TRUE if the transformation is possible, %FALSE otherwise.
	 */
	public static bool typeTransformable(GType srcType, GType destType)
	{
		return g_value_type_transformable(srcType, destType) != 0;
	}

	/**
	 * Creates a new #GParamSpecBoolean instance specifying a %G_TYPE_BOOLEAN
	 * property. In many cases, it may be more appropriate to use an enum with
	 * g_param_spec_enum(), both to improve code clarity by using explicitly named
	 * values, and to allow for more values to be added in future without breaking
	 * API.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecBoolean(string name, string nick, string blurb, bool defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_boolean(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecBoxed instance specifying a %G_TYPE_BOXED
	 * derived property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     boxedType = %G_TYPE_BOXED derived type of this property
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecBoxed(string name, string nick, string blurb, GType boxedType, GParamFlags flags)
	{
		auto p = g_param_spec_boxed(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), boxedType, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecChar instance specifying a %G_TYPE_CHAR property.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     minimum = minimum value for the property specified
	 *     maximum = maximum value for the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecChar(string name, string nick, string blurb, byte minimum, byte maximum, byte defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_char(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecDouble instance specifying a %G_TYPE_DOUBLE
	 * property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     minimum = minimum value for the property specified
	 *     maximum = maximum value for the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecDouble(string name, string nick, string blurb, double minimum, double maximum, double defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_double(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecEnum instance specifying a %G_TYPE_ENUM
	 * property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     enumType = a #GType derived from %G_TYPE_ENUM
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecEnum(string name, string nick, string blurb, GType enumType, int defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_enum(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), enumType, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecFlags instance specifying a %G_TYPE_FLAGS
	 * property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     flagsType = a #GType derived from %G_TYPE_FLAGS
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecFlags(string name, string nick, string blurb, GType flagsType, uint defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_flags(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), flagsType, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecFloat instance specifying a %G_TYPE_FLOAT property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     minimum = minimum value for the property specified
	 *     maximum = maximum value for the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecFloat(string name, string nick, string blurb, float minimum, float maximum, float defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_float(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecGType instance specifying a
	 * %G_TYPE_GTYPE property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     isAType = a #GType whose subtypes are allowed as values
	 *         of the property (use %G_TYPE_NONE for any type)
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 *
	 * Since: 2.10
	 */
	public static ParamSpec paramSpecGtype(string name, string nick, string blurb, GType isAType, GParamFlags flags)
	{
		auto p = g_param_spec_gtype(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), isAType, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecInt instance specifying a %G_TYPE_INT property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     minimum = minimum value for the property specified
	 *     maximum = maximum value for the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecInt(string name, string nick, string blurb, int minimum, int maximum, int defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_int(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecInt64 instance specifying a %G_TYPE_INT64 property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     minimum = minimum value for the property specified
	 *     maximum = maximum value for the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecInt64(string name, string nick, string blurb, long minimum, long maximum, long defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_int64(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecLong instance specifying a %G_TYPE_LONG property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     minimum = minimum value for the property specified
	 *     maximum = maximum value for the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecLong(string name, string nick, string blurb, glong minimum, glong maximum, glong defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_long(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecBoxed instance specifying a %G_TYPE_OBJECT
	 * derived property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     objectType = %G_TYPE_OBJECT derived type of this property
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecObject(string name, string nick, string blurb, GType objectType, GParamFlags flags)
	{
		auto p = g_param_spec_object(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), objectType, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new property of type #GParamSpecOverride. This is used
	 * to direct operations to another paramspec, and will not be directly
	 * useful unless you are implementing a new base type similar to GObject.
	 *
	 * Params:
	 *     name = the name of the property.
	 *     overridden = The property that is being overridden
	 *
	 * Return: the newly created #GParamSpec
	 *
	 * Since: 2.4
	 */
	public static ParamSpec paramSpecOverride(string name, ParamSpec overridden)
	{
		auto p = g_param_spec_override(Str.toStringz(name), (overridden is null) ? null : overridden.getParamSpecStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}

	/**
	 * Creates a new #GParamSpecParam instance specifying a %G_TYPE_PARAM
	 * property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     paramType = a #GType derived from %G_TYPE_PARAM
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecParam(string name, string nick, string blurb, GType paramType, GParamFlags flags)
	{
		auto p = g_param_spec_param(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), paramType, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecPointer instance specifying a pointer property.
	 * Where possible, it is better to use g_param_spec_object() or
	 * g_param_spec_boxed() to expose memory management information.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecPointer(string name, string nick, string blurb, GParamFlags flags)
	{
		auto p = g_param_spec_pointer(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecString instance.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecString(string name, string nick, string blurb, string defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_string(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), Str.toStringz(defaultValue), flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecUChar instance specifying a %G_TYPE_UCHAR property.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     minimum = minimum value for the property specified
	 *     maximum = maximum value for the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecUchar(string name, string nick, string blurb, ubyte minimum, ubyte maximum, ubyte defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_uchar(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecUInt instance specifying a %G_TYPE_UINT property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     minimum = minimum value for the property specified
	 *     maximum = maximum value for the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecUint(string name, string nick, string blurb, uint minimum, uint maximum, uint defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_uint(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecUInt64 instance specifying a %G_TYPE_UINT64
	 * property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     minimum = minimum value for the property specified
	 *     maximum = maximum value for the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecUint64(string name, string nick, string blurb, ulong minimum, ulong maximum, ulong defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_uint64(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecULong instance specifying a %G_TYPE_ULONG
	 * property.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     minimum = minimum value for the property specified
	 *     maximum = maximum value for the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecUlong(string name, string nick, string blurb, gulong minimum, gulong maximum, gulong defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_ulong(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecUnichar instance specifying a %G_TYPE_UINT
	 * property. #GValue structures for this property can be accessed with
	 * g_value_set_uint() and g_value_get_uint().
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     defaultValue = default value for the property specified
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecUnichar(string name, string nick, string blurb, dchar defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_unichar(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Creates a new #GParamSpecValueArray instance specifying a
	 * %G_TYPE_VALUE_ARRAY property. %G_TYPE_VALUE_ARRAY is a
	 * %G_TYPE_BOXED type, as such, #GValue structures for this property
	 * can be accessed with g_value_set_boxed() and g_value_get_boxed().
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     elementSpec = a #GParamSpec describing the elements contained in
	 *         arrays of this property, may be %NULL
	 *     flags = flags for the property specified
	 *
	 * Return: a newly created parameter specification
	 */
	public static ParamSpec paramSpecValueArray(string name, string nick, string blurb, ParamSpec elementSpec, GParamFlags flags)
	{
		auto p = g_param_spec_value_array(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), (elementSpec is null) ? null : elementSpec.getParamSpecStruct(), flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}

	/**
	 * Creates a new #GParamSpecVariant instance specifying a #GVariant
	 * property.
	 *
	 * If @default_value is floating, it is consumed.
	 *
	 * See g_param_spec_internal() for details on property names.
	 *
	 * Params:
	 *     name = canonical name of the property specified
	 *     nick = nick name for the property specified
	 *     blurb = description of the property specified
	 *     type = a #GVariantType
	 *     defaultValue = a #GVariant of type @type to
	 *         use as the default value, or %NULL
	 *     flags = flags for the property specified
	 *
	 * Return: the newly created #GParamSpec
	 *
	 * Since: 2.26
	 */
	public static ParamSpec paramSpecVariant(string name, string nick, string blurb, VariantType type, Variant defaultValue, GParamFlags flags)
	{
		auto p = g_param_spec_variant(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), (type is null) ? null : type.getVariantTypeStruct(), (defaultValue is null) ? null : defaultValue.getVariantStruct(), flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p, true);
	}

	/**
	 * Return a newly allocated string, which describes the contents of a
	 * #GValue.  The main purpose of this function is to describe #GValue
	 * contents for debugging output, the way in which the contents are
	 * described may change between different GLib versions.
	 *
	 * Params:
	 *     value = #GValue which contents are to be described.
	 *
	 * Return: Newly allocated string.
	 */
	public static string strdupValueContents(Value value)
	{
		auto retStr = g_strdup_value_contents((value is null) ? null : value.getValueStruct());
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
