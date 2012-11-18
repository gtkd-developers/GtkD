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

/*
 * Conversion parameters:
 * inFile  = gobject-Generic-values.html
 * outPack = gobject
 * outFile = Value
 * strct   = GValue
 * realStrct=
 * ctorStrct=
 * clss    = Value
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_value_
 * omit structs:
 * 	- GValue
 * omit prefixes:
 * omit code:
 * 	- g_value_init
 * 	- g_value_reset
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ParamSpec
 * 	- gdk.Pixbuf
 * 	- glib.Variant
 * 	- glib.VariantType
 * structWrap:
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * 	- GVariant* -> Variant
 * 	- GVariantType* -> VariantType
 * module aliases:
 * local aliases:
 * overrides:
 */

module gobject.Value;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ParamSpec;
private import gdk.Pixbuf;
private import glib.Variant;
private import glib.VariantType;




/**
 * Description
 * The GValue structure is basically a variable container that consists
 * of a type identifier and a specific value of that type.
 * The type identifier within a GValue structure always determines the
 * type of the associated value.
 * To create a undefined GValue structure, simply create a zero-filled
 * GValue structure. To initialize the GValue, use the g_value_init()
 * function. A GValue cannot be used until it is initialized.
 * The basic type operations (such as freeing and copying) are determined
 * by the GTypeValueTable associated with the type ID stored in the GValue.
 * Other GValue operations (such as converting values between types) are
 * provided by this interface.
 * The code in the example program below demonstrates GValue's
 * features.
 * $(DDOC_COMMENT example)
 */
public class Value
{
	
	/** the main Gtk struct */
	protected GValue* gValue;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GValue* gValue)
	{
		this.gValue = gValue;
	}
	
	/** */
	public this()
	{
		this(new GValue);
	}
	
	/** */
	this(Pixbuf pixbuf)
	{
		GValue* v = new GValue;
		//v.g_type = DUIType.PIXBUF;
		v.g_type = Pixbuf.getType();
		v.data1.v_pointer = cast(void*)(pixbuf.getPixbufStruct());
		this(v);
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
	 * Initializes value with the default value of type.
	 * Params:
	 *  value = A zero-filled (uninitialized) GValue structure.
	 *  g_type = Type the GValue should hold values of.
	 * Returns:
	 *  the GValue structure that has been passed in
	 */
	public Value init(GType gType)
	{
		// GValue* g_value_init (GValue *value,  GType g_type);
		g_value_init(gValue, gType);
		return this;
	}
	
	/**
	 * Clears the current value in value and resets it to the default value
	 * (as if the value had just been initialized).
	 * Params:
	 *  value = An initialized GValue structure.
	 * Returns:
	 *  the GValue structure that has been passed in
	 */
	public Value reset()
	{
		// GValue* g_value_reset (GValue *value);
		g_value_reset(gValue);
		return this;
	}
	
	
	
	/**
	 * Description
	 * GValue provides an abstract container structure which can be
	 * copied, transformed and compared while holding a value of any
	 * (derived) type, which is registered as a GType with a
	 * GTypeValueTable in its GTypeInfo structure. Parameter
	 * specifications for most value types can be created as GParamSpec
	 * derived instances, to implement e.g. GObject properties which
	 * operate on GValue containers.
	 * Parameter names need to start with a letter (a-z or A-Z). Subsequent
	 * characters can be letters, numbers or a '-'.
	 * All other characters are replaced by a '-' during construction.
	 */
	
	/**
	 * Copies the value of src_value into dest_value.
	 * Params:
	 * destValue = An initialized GValue structure of the same type as src_value.
	 */
	public void copy(Value destValue)
	{
		// void g_value_copy (const GValue *src_value,  GValue *dest_value);
		g_value_copy(gValue, (destValue is null) ? null : destValue.getValueStruct());
	}
	
	/**
	 * Clears the current value in value and "unsets" the type,
	 * this releases all resources associated with this GValue.
	 * An unset value is the same as an uninitialized (zero-filled)
	 * GValue structure.
	 */
	public void unset()
	{
		// void g_value_unset (GValue *value);
		g_value_unset(gValue);
	}
	
	/**
	 * Sets value from an instantiatable type via the
	 * value_table's collect_value() function.
	 */
	public void setInstance(void* instanc)
	{
		// void g_value_set_instance (GValue *value,  gpointer instance);
		g_value_set_instance(gValue, instanc);
	}
	
	/**
	 * Determines if value will fit inside the size of a pointer value.
	 * This is an internal function introduced mainly for C marshallers.
	 * Returns: TRUE if value will fit inside a pointer value.
	 */
	public int fitsPointer()
	{
		// gboolean g_value_fits_pointer (const GValue *value);
		return g_value_fits_pointer(gValue);
	}
	
	/**
	 * Returns: the value contents as pointer. This function asserts that g_value_fits_pointer() returned TRUE for the passed in value. This is an internal function introduced mainly for C marshallers. [transfer none]
	 */
	public void* peekPointer()
	{
		// gpointer g_value_peek_pointer (const GValue *value);
		return g_value_peek_pointer(gValue);
	}
	
	/**
	 * Returns whether a GValue of type src_type can be copied into
	 * a GValue of type dest_type.
	 * Params:
	 * srcType = source type to be copied.
	 * destType = destination type for copying.
	 * Returns: TRUE if g_value_copy() is possible with src_type and dest_type.
	 */
	public static int typeCompatible(GType srcType, GType destType)
	{
		// gboolean g_value_type_compatible (GType src_type,  GType dest_type);
		return g_value_type_compatible(srcType, destType);
	}
	
	/**
	 * Check whether g_value_transform() is able to transform values
	 * of type src_type into values of type dest_type.
	 * Params:
	 * srcType = Source type.
	 * destType = Target type.
	 * Returns: TRUE if the transformation is possible, FALSE otherwise.
	 */
	public static int typeTransformable(GType srcType, GType destType)
	{
		// gboolean g_value_type_transformable (GType src_type,  GType dest_type);
		return g_value_type_transformable(srcType, destType);
	}
	
	/**
	 * Tries to cast the contents of src_value into a type appropriate
	 * to store in dest_value, e.g. to transform a G_TYPE_INT value
	 * into a G_TYPE_FLOAT value. Performing transformations between
	 * value types might incur precision lossage. Especially
	 * transformations into strings might reveal seemingly arbitrary
	 * results and shouldn't be relied upon for production code (such
	 * as rcfile value or object property serialization).
	 * Params:
	 * destValue = Target value.
	 * Returns: Whether a transformation rule was found and could be applied. Upon failing transformations, dest_value is left untouched.
	 */
	public int transform(Value destValue)
	{
		// gboolean g_value_transform (const GValue *src_value,  GValue *dest_value);
		return g_value_transform(gValue, (destValue is null) ? null : destValue.getValueStruct());
	}
	
	/**
	 * Registers a value transformation function for use in g_value_transform().
	 * A previously registered transformation function for src_type and dest_type
	 * will be replaced.
	 * Params:
	 * srcType = Source type.
	 * destType = Target type.
	 * transformFunc = a function which transforms values of type src_type
	 * into value of type dest_type
	 */
	public static void registerTransformFunc(GType srcType, GType destType, GValueTransform transformFunc)
	{
		// void g_value_register_transform_func (GType src_type,  GType dest_type,  GValueTransform transform_func);
		g_value_register_transform_func(srcType, destType, transformFunc);
	}
	
	/**
	 * Return a newly allocated string, which describes the contents of a
	 * GValue. The main purpose of this function is to describe GValue
	 * contents for debugging output, the way in which the contents are
	 * described may change between different GLib versions.
	 * Returns: Newly allocated string.
	 */
	public string gStrdupValueContents()
	{
		// gchar * g_strdup_value_contents (const GValue *value);
		return Str.toString(g_strdup_value_contents(gValue));
	}
	
	/**
	 * Creates a new GParamSpecBoolean instance specifying a G_TYPE_BOOLEAN
	 * property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecBoolean(string name, string nick, string blurb, int defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_boolean (const gchar *name,  const gchar *nick,  const gchar *blurb,  gboolean default_value,  GParamFlags flags);
		auto p = g_param_spec_boolean(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_BOOLEAN GValue to v_boolean.
	 * Params:
	 * vBoolean = boolean value to be set
	 */
	public void setBoolean(int vBoolean)
	{
		// void g_value_set_boolean (GValue *value,  gboolean v_boolean);
		g_value_set_boolean(gValue, vBoolean);
	}
	
	/**
	 * Get the contents of a G_TYPE_BOOLEAN GValue.
	 * Returns: boolean contents of value
	 */
	public int getBoolean()
	{
		// gboolean g_value_get_boolean (const GValue *value);
		return g_value_get_boolean(gValue);
	}
	
	/**
	 * Creates a new GParamSpecChar instance specifying a G_TYPE_CHAR property.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minimum = minimum value for the property specified
	 * maximum = maximum value for the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecChar(string name, string nick, string blurb, byte minimum, byte maximum, byte defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_char (const gchar *name,  const gchar *nick,  const gchar *blurb,  gint8 minimum,  gint8 maximum,  gint8 default_value,  GParamFlags flags);
		auto p = g_param_spec_char(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Warning
	 * g_value_set_char has been deprecated since version 2.32 and should not be used in newly-written code. This function's input type is broken, see g_value_set_schar()
	 * Set the contents of a G_TYPE_CHAR GValue to v_char.
	 * Params:
	 * vChar = character value to be set
	 */
	public void setChar(char vChar)
	{
		// void g_value_set_char (GValue *value,  gchar v_char);
		g_value_set_char(gValue, vChar);
	}
	
	/**
	 * Warning
	 * g_value_get_char has been deprecated since version 2.32 and should not be used in newly-written code. This function's return type is broken, see g_value_get_schar()
	 * Do not use this function; it is broken on platforms where the char
	 * type is unsigned, such as ARM and PowerPC. See g_value_get_schar().
	 * Get the contents of a G_TYPE_CHAR GValue.
	 * Returns: character contents of value
	 */
	public char getChar()
	{
		// gchar g_value_get_char (const GValue *value);
		return g_value_get_char(gValue);
	}
	
	/**
	 * Get the contents of a G_TYPE_CHAR GValue.
	 * Since 2.32
	 * Returns: signed 8 bit integer contents of value
	 */
	public byte getSchar()
	{
		// gint8 g_value_get_schar (const GValue *value);
		return g_value_get_schar(gValue);
	}
	
	/**
	 * Set the contents of a G_TYPE_CHAR GValue to v_char.
	 * Since 2.32
	 * Params:
	 * vChar = signed 8 bit integer to be set
	 */
	public void setSchar(byte vChar)
	{
		// void g_value_set_schar (GValue *value,  gint8 v_char);
		g_value_set_schar(gValue, vChar);
	}
	
	/**
	 * Creates a new GParamSpecUChar instance specifying a G_TYPE_UCHAR property.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minimum = minimum value for the property specified
	 * maximum = maximum value for the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecUchar(string name, string nick, string blurb, ubyte minimum, ubyte maximum, ubyte defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_uchar (const gchar *name,  const gchar *nick,  const gchar *blurb,  guint8 minimum,  guint8 maximum,  guint8 default_value,  GParamFlags flags);
		auto p = g_param_spec_uchar(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_UCHAR GValue to v_uchar.
	 * Params:
	 * vUchar = unsigned character value to be set
	 */
	public void setUchar(char vUchar)
	{
		// void g_value_set_uchar (GValue *value,  guchar v_uchar);
		g_value_set_uchar(gValue, vUchar);
	}
	
	/**
	 * Get the contents of a G_TYPE_UCHAR GValue.
	 * Returns: unsigned character contents of value
	 */
	public char getUchar()
	{
		// guchar g_value_get_uchar (const GValue *value);
		return g_value_get_uchar(gValue);
	}
	
	/**
	 * Creates a new GParamSpecInt instance specifying a G_TYPE_INT property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minimum = minimum value for the property specified
	 * maximum = maximum value for the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecInt(string name, string nick, string blurb, int minimum, int maximum, int defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_int (const gchar *name,  const gchar *nick,  const gchar *blurb,  gint minimum,  gint maximum,  gint default_value,  GParamFlags flags);
		auto p = g_param_spec_int(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_INT GValue to v_int.
	 * Params:
	 * vInt = integer value to be set
	 */
	public void setInt(int vInt)
	{
		// void g_value_set_int (GValue *value,  gint v_int);
		g_value_set_int(gValue, vInt);
	}
	
	/**
	 * Get the contents of a G_TYPE_INT GValue.
	 * Returns: integer contents of value
	 */
	public int getInt()
	{
		// gint g_value_get_int (const GValue *value);
		return g_value_get_int(gValue);
	}
	
	/**
	 * Creates a new GParamSpecUInt instance specifying a G_TYPE_UINT property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minimum = minimum value for the property specified
	 * maximum = maximum value for the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecUint(string name, string nick, string blurb, uint minimum, uint maximum, uint defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_uint (const gchar *name,  const gchar *nick,  const gchar *blurb,  guint minimum,  guint maximum,  guint default_value,  GParamFlags flags);
		auto p = g_param_spec_uint(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_UINT GValue to v_uint.
	 * Params:
	 * vUint = unsigned integer value to be set
	 */
	public void setUint(uint vUint)
	{
		// void g_value_set_uint (GValue *value,  guint v_uint);
		g_value_set_uint(gValue, vUint);
	}
	
	/**
	 * Get the contents of a G_TYPE_UINT GValue.
	 * Returns: unsigned integer contents of value
	 */
	public uint getUint()
	{
		// guint g_value_get_uint (const GValue *value);
		return g_value_get_uint(gValue);
	}
	
	/**
	 * Creates a new GParamSpecLong instance specifying a G_TYPE_LONG property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minimum = minimum value for the property specified
	 * maximum = maximum value for the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecLong(string name, string nick, string blurb, glong minimum, glong maximum, glong defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_long (const gchar *name,  const gchar *nick,  const gchar *blurb,  glong minimum,  glong maximum,  glong default_value,  GParamFlags flags);
		auto p = g_param_spec_long(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_LONG GValue to v_long.
	 * Params:
	 * vLong = long integer value to be set
	 */
	public void setLong(glong vLong)
	{
		// void g_value_set_long (GValue *value,  glong v_long);
		g_value_set_long(gValue, vLong);
	}
	
	/**
	 * Get the contents of a G_TYPE_LONG GValue.
	 * Returns: long integer contents of value
	 */
	public glong getLong()
	{
		// glong g_value_get_long (const GValue *value);
		return g_value_get_long(gValue);
	}
	
	/**
	 * Creates a new GParamSpecULong instance specifying a G_TYPE_ULONG
	 * property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minimum = minimum value for the property specified
	 * maximum = maximum value for the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecUlong(string name, string nick, string blurb, gulong minimum, gulong maximum, gulong defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_ulong (const gchar *name,  const gchar *nick,  const gchar *blurb,  gulong minimum,  gulong maximum,  gulong default_value,  GParamFlags flags);
		auto p = g_param_spec_ulong(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_ULONG GValue to v_ulong.
	 * Params:
	 * vUlong = unsigned long integer value to be set
	 */
	public void setUlong(gulong vUlong)
	{
		// void g_value_set_ulong (GValue *value,  gulong v_ulong);
		g_value_set_ulong(gValue, vUlong);
	}
	
	/**
	 * Get the contents of a G_TYPE_ULONG GValue.
	 * Returns: unsigned long integer contents of value
	 */
	public gulong getUlong()
	{
		// gulong g_value_get_ulong (const GValue *value);
		return g_value_get_ulong(gValue);
	}
	
	/**
	 * Creates a new GParamSpecInt64 instance specifying a G_TYPE_INT64 property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minimum = minimum value for the property specified
	 * maximum = maximum value for the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecInt64(string name, string nick, string blurb, long minimum, long maximum, long defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_int64 (const gchar *name,  const gchar *nick,  const gchar *blurb,  gint64 minimum,  gint64 maximum,  gint64 default_value,  GParamFlags flags);
		auto p = g_param_spec_int64(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_INT64 GValue to v_int64.
	 * Params:
	 * vInt64 = 64bit integer value to be set
	 */
	public void setInt64(long vInt64)
	{
		// void g_value_set_int64 (GValue *value,  gint64 v_int64);
		g_value_set_int64(gValue, vInt64);
	}
	
	/**
	 * Get the contents of a G_TYPE_INT64 GValue.
	 * Returns: 64bit integer contents of value
	 */
	public long getInt64()
	{
		// gint64 g_value_get_int64 (const GValue *value);
		return g_value_get_int64(gValue);
	}
	
	/**
	 * Creates a new GParamSpecUInt64 instance specifying a G_TYPE_UINT64
	 * property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minimum = minimum value for the property specified
	 * maximum = maximum value for the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecUint64(string name, string nick, string blurb, ulong minimum, ulong maximum, ulong defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_uint64 (const gchar *name,  const gchar *nick,  const gchar *blurb,  guint64 minimum,  guint64 maximum,  guint64 default_value,  GParamFlags flags);
		auto p = g_param_spec_uint64(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_UINT64 GValue to v_uint64.
	 * Params:
	 * vUint64 = unsigned 64bit integer value to be set
	 */
	public void setUint64(ulong vUint64)
	{
		// void g_value_set_uint64 (GValue *value,  guint64 v_uint64);
		g_value_set_uint64(gValue, vUint64);
	}
	
	/**
	 * Get the contents of a G_TYPE_UINT64 GValue.
	 * Returns: unsigned 64bit integer contents of value
	 */
	public ulong getUint64()
	{
		// guint64 g_value_get_uint64 (const GValue *value);
		return g_value_get_uint64(gValue);
	}
	
	/**
	 * Creates a new GParamSpecFloat instance specifying a G_TYPE_FLOAT property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minimum = minimum value for the property specified
	 * maximum = maximum value for the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecFloat(string name, string nick, string blurb, float minimum, float maximum, float defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_float (const gchar *name,  const gchar *nick,  const gchar *blurb,  gfloat minimum,  gfloat maximum,  gfloat default_value,  GParamFlags flags);
		auto p = g_param_spec_float(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_FLOAT GValue to v_float.
	 * Params:
	 * vFloat = float value to be set
	 */
	public void setFloat(float vFloat)
	{
		// void g_value_set_float (GValue *value,  gfloat v_float);
		g_value_set_float(gValue, vFloat);
	}
	
	/**
	 * Get the contents of a G_TYPE_FLOAT GValue.
	 * Returns: float contents of value
	 */
	public float getFloat()
	{
		// gfloat g_value_get_float (const GValue *value);
		return g_value_get_float(gValue);
	}
	
	/**
	 * Creates a new GParamSpecDouble instance specifying a G_TYPE_DOUBLE
	 * property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minimum = minimum value for the property specified
	 * maximum = maximum value for the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecDouble(string name, string nick, string blurb, double minimum, double maximum, double defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_double (const gchar *name,  const gchar *nick,  const gchar *blurb,  gdouble minimum,  gdouble maximum,  gdouble default_value,  GParamFlags flags);
		auto p = g_param_spec_double(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_DOUBLE GValue to v_double.
	 * Params:
	 * vDouble = double value to be set
	 */
	public void setDouble(double vDouble)
	{
		// void g_value_set_double (GValue *value,  gdouble v_double);
		g_value_set_double(gValue, vDouble);
	}
	
	/**
	 * Get the contents of a G_TYPE_DOUBLE GValue.
	 * Returns: double contents of value
	 */
	public double getDouble()
	{
		// gdouble g_value_get_double (const GValue *value);
		return g_value_get_double(gValue);
	}
	
	/**
	 * Creates a new GParamSpecEnum instance specifying a G_TYPE_ENUM
	 * property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * enumType = a GType derived from G_TYPE_ENUM
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecEnum(string name, string nick, string blurb, GType enumType, int defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_enum (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType enum_type,  gint default_value,  GParamFlags flags);
		auto p = g_param_spec_enum(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), enumType, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_ENUM GValue to v_enum.
	 * Params:
	 * vEnum = enum value to be set
	 */
	public void setEnum(int vEnum)
	{
		// void g_value_set_enum (GValue *value,  gint v_enum);
		g_value_set_enum(gValue, vEnum);
	}
	
	/**
	 * Get the contents of a G_TYPE_ENUM GValue.
	 * Returns: enum contents of value
	 */
	public int getEnum()
	{
		// gint g_value_get_enum (const GValue *value);
		return g_value_get_enum(gValue);
	}
	
	/**
	 * Creates a new GParamSpecFlags instance specifying a G_TYPE_FLAGS
	 * property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * flagsType = a GType derived from G_TYPE_FLAGS
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecFlags(string name, string nick, string blurb, GType flagsType, uint defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_flags (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType flags_type,  guint default_value,  GParamFlags flags);
		auto p = g_param_spec_flags(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), flagsType, defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_FLAGS GValue to v_flags.
	 * Params:
	 * vFlags = flags value to be set
	 */
	public void setFlags(uint vFlags)
	{
		// void g_value_set_flags (GValue *value,  guint v_flags);
		g_value_set_flags(gValue, vFlags);
	}
	
	/**
	 * Get the contents of a G_TYPE_FLAGS GValue.
	 * Returns: flags contents of value
	 */
	public uint getFlags()
	{
		// guint g_value_get_flags (const GValue *value);
		return g_value_get_flags(gValue);
	}
	
	/**
	 * Creates a new GParamSpecString instance.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecString(string name, string nick, string blurb, string defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_string (const gchar *name,  const gchar *nick,  const gchar *blurb,  const gchar *default_value,  GParamFlags flags);
		auto p = g_param_spec_string(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), Str.toStringz(defaultValue), flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_STRING GValue to v_string.
	 * Params:
	 * vString = caller-owned string to be duplicated for the GValue. [allow-none]
	 */
	public void setString(string vString)
	{
		// void g_value_set_string (GValue *value,  const gchar *v_string);
		g_value_set_string(gValue, Str.toStringz(vString));
	}
	
	/**
	 * Set the contents of a G_TYPE_STRING GValue to v_string.
	 * The string is assumed to be static, and is thus not duplicated
	 * when setting the GValue.
	 * Params:
	 * vString = static string to be set. [allow-none]
	 */
	public void setStaticString(string vString)
	{
		// void g_value_set_static_string (GValue *value,  const gchar *v_string);
		g_value_set_static_string(gValue, Str.toStringz(vString));
	}
	
	/**
	 * Sets the contents of a G_TYPE_STRING GValue to v_string.
	 * Since 2.4
	 * Params:
	 * vString = string to take ownership of. [allow-none]
	 */
	public void takeString(string vString)
	{
		// void g_value_take_string (GValue *value,  gchar *v_string);
		g_value_take_string(gValue, Str.toStringz(vString));
	}
	
	/**
	 * Warning
	 * g_value_set_string_take_ownership has been deprecated since version 2.4 and should not be used in newly-written code. Use g_value_take_string() instead.
	 * This is an internal function introduced mainly for C marshallers.
	 * Params:
	 * vString = duplicated unowned string to be set. [allow-none]
	 */
	public void setStringTakeOwnership(string vString)
	{
		// void g_value_set_string_take_ownership (GValue *value,  gchar *v_string);
		g_value_set_string_take_ownership(gValue, Str.toStringz(vString));
	}
	
	/**
	 * Get the contents of a G_TYPE_STRING GValue.
	 * Returns: string content of value
	 */
	public string getString()
	{
		// const gchar * g_value_get_string (const GValue *value);
		return Str.toString(g_value_get_string(gValue));
	}
	
	/**
	 * Get a copy the contents of a G_TYPE_STRING GValue.
	 * Returns: a newly allocated copy of the string content of value
	 */
	public string dupString()
	{
		// gchar * g_value_dup_string (const GValue *value);
		return Str.toString(g_value_dup_string(gValue));
	}
	
	/**
	 * Creates a new GParamSpecParam instance specifying a G_TYPE_PARAM
	 * property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * paramType = a GType derived from G_TYPE_PARAM
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecParam(string name, string nick, string blurb, GType paramType, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_param (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType param_type,  GParamFlags flags);
		auto p = g_param_spec_param(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), paramType, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_PARAM GValue to param.
	 * Params:
	 * param = the GParamSpec to be set. [allow-none]
	 */
	public void setParam(ParamSpec param)
	{
		// void g_value_set_param (GValue *value,  GParamSpec *param);
		g_value_set_param(gValue, (param is null) ? null : param.getParamSpecStruct());
	}
	
	/**
	 * Sets the contents of a G_TYPE_PARAM GValue to param and takes
	 * over the ownership of the callers reference to param; the caller
	 * doesn't have to unref it any more.
	 * Since 2.4
	 * Params:
	 * param = the GParamSpec to be set. [allow-none]
	 */
	public void takeParam(ParamSpec param)
	{
		// void g_value_take_param (GValue *value,  GParamSpec *param);
		g_value_take_param(gValue, (param is null) ? null : param.getParamSpecStruct());
	}
	
	/**
	 * Warning
	 * g_value_set_param_take_ownership has been deprecated since version 2.4 and should not be used in newly-written code. Use g_value_take_param() instead.
	 * This is an internal function introduced mainly for C marshallers.
	 * Params:
	 * param = the GParamSpec to be set. [allow-none]
	 */
	public void setParamTakeOwnership(ParamSpec param)
	{
		// void g_value_set_param_take_ownership (GValue *value,  GParamSpec *param);
		g_value_set_param_take_ownership(gValue, (param is null) ? null : param.getParamSpecStruct());
	}
	
	/**
	 * Get the contents of a G_TYPE_PARAM GValue.
	 * Returns: GParamSpec content of value. [transfer none]
	 */
	public ParamSpec getParam()
	{
		// GParamSpec * g_value_get_param (const GValue *value);
		auto p = g_value_get_param(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Get the contents of a G_TYPE_PARAM GValue, increasing its
	 * reference count.
	 * Returns: GParamSpec content of value, should be unreferenced when no longer needed.
	 */
	public ParamSpec dupParam()
	{
		// GParamSpec * g_value_dup_param (const GValue *value);
		auto p = g_value_dup_param(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Creates a new GParamSpecBoxed instance specifying a G_TYPE_BOXED
	 * derived property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * boxedType = G_TYPE_BOXED derived type of this property
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecBoxed(string name, string nick, string blurb, GType boxedType, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_boxed (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType boxed_type,  GParamFlags flags);
		auto p = g_param_spec_boxed(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), boxedType, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_BOXED derived GValue to v_boxed.
	 * Params:
	 * vBoxed = boxed value to be set. [allow-none]
	 */
	public void setBoxed(void* vBoxed)
	{
		// void g_value_set_boxed (GValue *value,  gconstpointer v_boxed);
		g_value_set_boxed(gValue, vBoxed);
	}
	
	/**
	 * Set the contents of a G_TYPE_BOXED derived GValue to v_boxed.
	 * The boxed value is assumed to be static, and is thus not duplicated
	 * when setting the GValue.
	 * Params:
	 * vBoxed = static boxed value to be set. [allow-none]
	 */
	public void setStaticBoxed(void* vBoxed)
	{
		// void g_value_set_static_boxed (GValue *value,  gconstpointer v_boxed);
		g_value_set_static_boxed(gValue, vBoxed);
	}
	
	/**
	 * Sets the contents of a G_TYPE_BOXED derived GValue to v_boxed
	 * and takes over the ownership of the callers reference to v_boxed;
	 * the caller doesn't have to unref it any more.
	 * Since 2.4
	 * Params:
	 * vBoxed = duplicated unowned boxed value to be set. [allow-none]
	 */
	public void takeBoxed(void* vBoxed)
	{
		// void g_value_take_boxed (GValue *value,  gconstpointer v_boxed);
		g_value_take_boxed(gValue, vBoxed);
	}
	
	/**
	 * Warning
	 * g_value_set_boxed_take_ownership has been deprecated since version 2.4 and should not be used in newly-written code. Use g_value_take_boxed() instead.
	 * This is an internal function introduced mainly for C marshallers.
	 * Params:
	 * vBoxed = duplicated unowned boxed value to be set. [allow-none]
	 */
	public void setBoxedTakeOwnership(void* vBoxed)
	{
		// void g_value_set_boxed_take_ownership (GValue *value,  gconstpointer v_boxed);
		g_value_set_boxed_take_ownership(gValue, vBoxed);
	}
	
	/**
	 * Get the contents of a G_TYPE_BOXED derived GValue.
	 * Returns: boxed contents of value. [transfer none]
	 */
	public void* getBoxed()
	{
		// gpointer g_value_get_boxed (const GValue *value);
		return g_value_get_boxed(gValue);
	}
	
	/**
	 * Get the contents of a G_TYPE_BOXED derived GValue. Upon getting,
	 * the boxed value is duplicated and needs to be later freed with
	 * g_boxed_free(), e.g. like: g_boxed_free (G_VALUE_TYPE (value),
	 * return_value);
	 * Returns: boxed contents of value
	 */
	public void* dupBoxed()
	{
		// gpointer g_value_dup_boxed (const GValue *value);
		return g_value_dup_boxed(gValue);
	}
	
	/**
	 * Creates a new GParamSpecPointer instance specifying a pointer property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecPointer(string name, string nick, string blurb, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_pointer (const gchar *name,  const gchar *nick,  const gchar *blurb,  GParamFlags flags);
		auto p = g_param_spec_pointer(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a pointer GValue to v_pointer.
	 * Params:
	 * vPointer = pointer value to be set
	 */
	public void setPointer(void* vPointer)
	{
		// void g_value_set_pointer (GValue *value,  gpointer v_pointer);
		g_value_set_pointer(gValue, vPointer);
	}
	
	/**
	 * Get the contents of a pointer GValue.
	 * Returns: pointer contents of value. [transfer none]
	 */
	public void* getPointer()
	{
		// gpointer g_value_get_pointer (const GValue *value);
		return g_value_get_pointer(gValue);
	}
	
	/**
	 * Creates a new GParamSpecBoxed instance specifying a G_TYPE_OBJECT
	 * derived property.
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * objectType = G_TYPE_OBJECT derived type of this property
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecObject(string name, string nick, string blurb, GType objectType, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_object (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType object_type,  GParamFlags flags);
		auto p = g_param_spec_object(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), objectType, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a G_TYPE_OBJECT derived GValue to v_object.
	 * g_value_set_object() increases the reference count of v_object
	 * (the GValue holds a reference to v_object). If you do not wish
	 * to increase the reference count of the object (i.e. you wish to
	 * pass your current reference to the GValue because you no longer
	 * need it), use g_value_take_object() instead.
	 * It is important that your GValue holds a reference to v_object (either its
	 * own, or one it has taken) to ensure that the object won't be destroyed while
	 * the GValue still exists).
	 * Params:
	 * vObject = object value to be set. [type GObject.Object][allow-none]
	 */
	public void setObject(void* vObject)
	{
		// void g_value_set_object (GValue *value,  gpointer v_object);
		g_value_set_object(gValue, vObject);
	}
	
	/**
	 * Sets the contents of a G_TYPE_OBJECT derived GValue to v_object
	 * and takes over the ownership of the callers reference to v_object;
	 * the caller doesn't have to unref it any more (i.e. the reference
	 * count of the object is not increased).
	 * If you want the GValue to hold its own reference to v_object, use
	 * g_value_set_object() instead.
	 * Since 2.4
	 * Params:
	 * vObject = object value to be set. [allow-none]
	 */
	public void takeObject(void* vObject)
	{
		// void g_value_take_object (GValue *value,  gpointer v_object);
		g_value_take_object(gValue, vObject);
	}
	
	/**
	 * Warning
	 * g_value_set_object_take_ownership has been deprecated since version 2.4 and should not be used in newly-written code. Use g_value_take_object() instead.
	 * This is an internal function introduced mainly for C marshallers.
	 * Params:
	 * vObject = object value to be set. [allow-none]
	 */
	public void setObjectTakeOwnership(void* vObject)
	{
		// void g_value_set_object_take_ownership (GValue *value,  gpointer v_object);
		g_value_set_object_take_ownership(gValue, vObject);
	}
	
	/**
	 * Get the contents of a G_TYPE_OBJECT derived GValue.
	 * Returns: object contents of value. [type GObject.Object][transfer none]
	 */
	public void* getObject()
	{
		// gpointer g_value_get_object (const GValue *value);
		return g_value_get_object(gValue);
	}
	
	/**
	 * Get the contents of a G_TYPE_OBJECT derived GValue, increasing
	 * its reference count. If the contents of the GValue are NULL, then
	 * NULL will be returned.
	 * Returns: object content of value, should be unreferenced when no longer needed. [type GObject.Object][transfer full]
	 */
	public void* dupObject()
	{
		// gpointer g_value_dup_object (const GValue *value);
		return g_value_dup_object(gValue);
	}
	
	/**
	 * Creates a new GParamSpecUnichar instance specifying a G_TYPE_UINT
	 * property. GValue structures for this property can be accessed with
	 * g_value_set_uint() and g_value_get_uint().
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * defaultValue = default value for the property specified
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecUnichar(string name, string nick, string blurb, gunichar defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_unichar (const gchar *name,  const gchar *nick,  const gchar *blurb,  gunichar default_value,  GParamFlags flags);
		auto p = g_param_spec_unichar(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), defaultValue, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Creates a new GParamSpecValueArray instance specifying a
	 * G_TYPE_VALUE_ARRAY property. G_TYPE_VALUE_ARRAY is a
	 * G_TYPE_BOXED type, as such, GValue structures for this property
	 * can be accessed with g_value_set_boxed() and g_value_get_boxed().
	 * See g_param_spec_internal() for details on property names.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * elementSpec = a GParamSpec describing the elements contained in
	 * arrays of this property, may be NULL
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecValueArray(string name, string nick, string blurb, ParamSpec elementSpec, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_value_array (const gchar *name,  const gchar *nick,  const gchar *blurb,  GParamSpec *element_spec,  GParamFlags flags);
		auto p = g_param_spec_value_array(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), (elementSpec is null) ? null : elementSpec.getParamSpecStruct(), flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Creates a new property of type GParamSpecOverride. This is used
	 * to direct operations to another paramspec, and will not be directly
	 * useful unless you are implementing a new base type similar to GObject.
	 * Since 2.4
	 * Params:
	 * name = the name of the property.
	 * overridden = The property that is being overridden
	 * Returns: the newly created GParamSpec
	 */
	public static ParamSpec gParamSpecOverride(string name, ParamSpec overridden)
	{
		// GParamSpec * g_param_spec_override (const gchar *name,  GParamSpec *overridden);
		auto p = g_param_spec_override(Str.toStringz(name), (overridden is null) ? null : overridden.getParamSpecStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Creates a new GParamSpecGType instance specifying a
	 * G_TYPE_GTYPE property.
	 * See g_param_spec_internal() for details on property names.
	 * Since 2.10
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * isAType = a GType whose subtypes are allowed as values
	 * of the property (use G_TYPE_NONE for any type)
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification
	 */
	public static ParamSpec gParamSpecGtype(string name, string nick, string blurb, GType isAType, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_gtype (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType is_a_type,  GParamFlags flags);
		auto p = g_param_spec_gtype(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), isAType, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Get the contents of a G_TYPE_GTYPE GValue.
	 * Since 2.12
	 * Returns: the GType stored in value
	 */
	public GType getGtype()
	{
		// GType g_value_get_gtype (const GValue *value);
		return g_value_get_gtype(gValue);
	}
	
	/**
	 * Set the contents of a G_TYPE_GTYPE GValue to v_gtype.
	 * Since 2.12
	 * Params:
	 * vGtype = GType to be set
	 */
	public void setGtype(GType vGtype)
	{
		// void g_value_set_gtype (GValue *value,  GType v_gtype);
		g_value_set_gtype(gValue, vGtype);
	}
	
	/**
	 * Creates a new GParamSpecVariant instance specifying a GVariant
	 * property.
	 * If default_value is floating, it is consumed.
	 * See g_param_spec_internal() for details on property names.
	 * Since 2.26
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * type = a GVariantType
	 * defaultValue = a GVariant of type type to use as the
	 * default value, or NULL. [allow-none]
	 * flags = flags for the property specified
	 * Returns: the newly created GParamSpec
	 */
	public static ParamSpec gParamSpecVariant(string name, string nick, string blurb, VariantType type, Variant defaultValue, GParamFlags flags)
	{
		// GParamSpec * g_param_spec_variant (const gchar *name,  const gchar *nick,  const gchar *blurb,  const GVariantType *type,  GVariant *default_value,  GParamFlags flags);
		auto p = g_param_spec_variant(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), (type is null) ? null : type.getVariantTypeStruct(), (defaultValue is null) ? null : defaultValue.getVariantStruct(), flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Get the contents of a variant GValue.
	 * Since 2.26
	 * Returns: variant contents of value
	 */
	public Variant getVariant()
	{
		// GVariant * g_value_get_variant (const GValue *value);
		auto p = g_value_get_variant(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Get the contents of a variant GValue, increasing its refcount.
	 * Since 2.26
	 * Returns: variant contents of value, should be unrefed using g_variant_unref() when no longer needed
	 */
	public Variant dupVariant()
	{
		// GVariant * g_value_dup_variant (const GValue *value);
		auto p = g_value_dup_variant(gValue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Set the contents of a variant GValue to variant.
	 * If the variant is floating, it is consumed.
	 * Since 2.26
	 * Params:
	 * variant = a GVariant, or NULL. [allow-none]
	 */
	public void setVariant(Variant variant)
	{
		// void g_value_set_variant (GValue *value,  GVariant *variant);
		g_value_set_variant(gValue, (variant is null) ? null : variant.getVariantStruct());
	}
	
	/**
	 * Set the contents of a variant GValue to variant, and takes over
	 * the ownership of the caller's reference to variant;
	 * the caller doesn't have to unref it any more (i.e. the reference
	 * count of the variant is not increased).
	 * If variant was floating then its floating reference is converted to
	 * a hard reference.
	 * If you want the GValue to hold its own reference to variant, use
	 * g_value_set_variant() instead.
	 * This is an internal function introduced mainly for C marshallers.
	 * Since 2.26
	 * Params:
	 * variant = a GVariant, or NULL. [allow-none]
	 */
	public void takeVariant(Variant variant)
	{
		// void g_value_take_variant (GValue *value,  GVariant *variant);
		g_value_take_variant(gValue, (variant is null) ? null : variant.getVariantStruct());
	}
}
