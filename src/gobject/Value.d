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

/*
 * Conversion parameters:
 * outPack = gobject
 * outFile = Value
 * strct   = GValue
 * realStrct=
 * clss    = Value
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_value_
 * omit structs:
 * 	- GValue
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gobject.Value
 * 	- gobject.ParamSpec
 * 	- gobject.ObjectG
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GObject* -> ObjectG
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * local aliases:
 */

module gobject.Value;

private import gobject.typedefs;

private import lib.gobject;

private import glib.Str;
private import gobject.Value;
private import gobject.ParamSpec;
private import gobject.ObjectG;
private import gdk.Pixbuf;

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
	
	this(Pixbuf pixbuf)
	{
		GValue* v = new GValue;
		//v.g_type = DUIType.PIXBUF;
		v.g_type = Pixbuf.getType();
		v.data1.v_pointer = cast(void*)(pixbuf.getPixbufStruct());
		this(v);
	}
	
	/**
	 * Description
	 * GValue provides an abstract container structure which can be copied,
	 * transformed and compared while holding a value of any (derived) type, which
	 * is registered as a GType with a GTypeValueTable in its GTypeInfo structure.
	 * Parameter specifications for most value types can be created as
	 * GParamSpec derived instances, to implement e.g. GObject properties which
	 * operate on GValue containers.
	 * Parameter names need to start with a letter (a-z or A-Z). Subsequent
	 * characters can be letters, numbers or a '-'.
	 * All other characters are replaced by a '-' during construction.
	 */
	
	
	
	
	
	
	
	
	
	
	/**
	 * Initializes value with the default value of type.
	 * value:
	 * A zero-filled (uninitialized) GValue structure.
	 * g_type:
	 * Type the GValue should hold values of.
	 * Returns:
	 * the GValue structure that has been passed in
	 */
	public Value init(GType gType)
	{
		// GValue* g_value_init (GValue *value,  GType g_type);
		return new Value( g_value_init(gValue, gType) );
	}
	
	/**
	 * Copies the value of src_value into dest_value.
	 * src_value:
	 * An initialized GValue structure.
	 * dest_value:
	 * An initialized GValue structure of the same type as src_value.
	 */
	public void copy(Value destValue)
	{
		// void g_value_copy (const GValue *src_value,  GValue *dest_value);
		g_value_copy(gValue, (destValue is null) ? null : destValue.getValueStruct());
	}
	
	/**
	 * Clears the current value in value and resets it to the default value
	 * (as if the value had just been initialized).
	 * value:
	 * An initialized GValue structure.
	 * Returns:
	 * the GValue structure that has been passed in
	 */
	public Value reset()
	{
		// GValue* g_value_reset (GValue *value);
		return new Value( g_value_reset(gValue) );
	}
	
	/**
	 * Clears the current value in value and "unsets" the type,
	 * this releases all resources associated with this GValue.
	 * An unset value is the same as an uninitialized (zero-filled)
	 * GValue structure.
	 * value:
	 * 	An initialized GValue structure.
	 */
	public void unset()
	{
		// void g_value_unset (GValue *value);
		g_value_unset(gValue);
	}
	
	/**
	 * Sets value from an instantiatable type via the
	 * value_table's collect_value() function.
	 * value:
	 * An initialized GValue structure.
	 * instance:
	 * the instance
	 */
	public void setInstance(void* instanc)
	{
		// void g_value_set_instance (GValue *value,  gpointer instance);
		g_value_set_instance(gValue, instanc);
	}
	
	/**
	 * Determines if value will fit inside the size of a pointer value.
	 * This is an internal function introduced mainly for C marshallers.
	 * value:
	 * An initialized GValue structure.
	 * Returns:
	 * TRUE if value will fit inside a pointer value.
	 */
	public int fitsPointer()
	{
		// gboolean g_value_fits_pointer (const GValue *value);
		return g_value_fits_pointer(gValue);
	}
	
	/**
	 * Return the value contents as pointer. This function asserts that
	 * g_value_fits_pointer() returned TRUE for the passed in value.
	 * This is an internal function introduced mainly for C marshallers.
	 * value:
	 * An initialized GValue structure.
	 * Returns:
	 * TRUE if value will fit inside a pointer value.
	 */
	public void* peekPointer()
	{
		// gpointer g_value_peek_pointer (const GValue *value);
		return g_value_peek_pointer(gValue);
	}
	
	/**
	 * Returns whether a GValue of type src_type can be copied into
	 * a GValue of type dest_type.
	 * src_type:
	 * source type to be copied.
	 * dest_type:
	 * destination type for copying.
	 * Returns:
	 * TRUE if g_value_copy() is possible with src_type and dest_type.
	 */
	public static int typeCompatible(GType srcType, GType destType)
	{
		// gboolean g_value_type_compatible (GType src_type,  GType dest_type);
		return g_value_type_compatible(srcType, destType);
	}
	
	/**
	 * Check whether g_value_transform() is able to transform values
	 * of type src_type into values of type dest_type.
	 * src_type:
	 * Source type.
	 * dest_type:
	 * Target type.
	 * Returns:
	 * TRUE if the transformation is possible, FALSE otherwise.
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
	 * src_value:
	 * Source value.
	 * dest_value:
	 * Target value.
	 * Returns:
	 * Whether a transformation rule was found and could be applied.
	 *  Upon failing transformations, dest_value is left untouched.
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
	 * src_type:
	 *  Source type.
	 * dest_type:
	 * Target type.
	 * transform_func:
	 * a function which transforms values of type src_type
	 *  into value of type dest_type
	 */
	public static void registerTransformFunc(GType srcType, GType destType, GValueTransform transformFunc)
	{
		// void g_value_register_transform_func (GType src_type,  GType dest_type,  GValueTransform transform_func);
		g_value_register_transform_func(srcType, destType, transformFunc);
	}
	
	/**
	 * Return a newly allocated string, which describes the contents of a GValue.
	 * The main purpose of this function is to describe GValue contents for
	 * debugging output, the way in which the contents are described may change
	 * between different GLib versions.
	 * value:
	 *  GValue which contents are to be described.
	 * Returns:
	 * Newly allocated string.
	 * See Also
	 * The fundamental types which all support GValue operations and thus
	 * can be used as a type initializer for g_value_init() are defined by
	 * a separate interface. See the Standard Values
	 * API for details.
	 */
	public char[] gStrdupValueContents()
	{
		// gchar* g_strdup_value_contents (const GValue *value);
		return Str.toString(g_strdup_value_contents(gValue) );
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecBoolean instance specifying a G_TYPE_BOOLEAN
	 * property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecBoolean(char[] name, char[] nick, char[] blurb, int defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_boolean (const gchar *name,  const gchar *nick,  const gchar *blurb,  gboolean default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_boolean(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_BOOLEAN GValue to v_boolean.
	 * value:
	 *  a valid GValue of type G_TYPE_BOOLEAN
	 * v_boolean:
	 * boolean value to be set
	 */
	public void setBoolean(int vBoolean)
	{
		// void g_value_set_boolean (GValue *value,  gboolean v_boolean);
		g_value_set_boolean(gValue, vBoolean);
	}
	
	/**
	 * Get the contents of a G_TYPE_BOOLEAN GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_BOOLEAN
	 * Returns:
	 * boolean contents of value
	 */
	public int getBoolean()
	{
		// gboolean g_value_get_boolean (const GValue *value);
		return g_value_get_boolean(gValue);
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecChar instance specifying a G_TYPE_CHAR property.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * minimum:
	 *  minimum value for the property specified
	 * maximum:
	 *  maximum value for the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecChar(char[] name, char[] nick, char[] blurb, byte minimum, byte maximum, byte defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_char (const gchar *name,  const gchar *nick,  const gchar *blurb,  gint8 minimum,  gint8 maximum,  gint8 default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_char(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_CHAR GValue to v_char.
	 * value:
	 *  a valid GValue of type G_TYPE_CHAR
	 * v_char:
	 * character value to be set
	 */
	public void setChar(char vChar)
	{
		// void g_value_set_char (GValue *value,  gchar v_char);
		g_value_set_char(gValue, vChar);
	}
	
	/**
	 * Get the contents of a G_TYPE_CHAR GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_CHAR
	 * Returns:
	 * character contents of value
	 */
	public char getChar()
	{
		// gchar g_value_get_char (const GValue *value);
		return g_value_get_char(gValue);
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecUChar instance specifying a G_TYPE_UCHAR property.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * minimum:
	 *  minimum value for the property specified
	 * maximum:
	 *  maximum value for the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecUchar(char[] name, char[] nick, char[] blurb, byte minimum, byte maximum, byte defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_uchar (const gchar *name,  const gchar *nick,  const gchar *blurb,  guint8 minimum,  guint8 maximum,  guint8 default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_uchar(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_UCHAR GValue to v_uchar.
	 * value:
	 *  a valid GValue of type G_TYPE_UCHAR
	 * v_uchar:
	 * unsigned character value to be set
	 */
	public void setUchar(char vUchar)
	{
		// void g_value_set_uchar (GValue *value,  guchar v_uchar);
		g_value_set_uchar(gValue, vUchar);
	}
	
	/**
	 * Get the contents of a G_TYPE_UCHAR GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_UCHAR
	 * Returns:
	 * unsigned character contents of value
	 */
	public char getUchar()
	{
		// guchar g_value_get_uchar (const GValue *value);
		return g_value_get_uchar(gValue);
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecInt instance specifying a G_TYPE_INT property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * minimum:
	 *  minimum value for the property specified
	 * maximum:
	 *  maximum value for the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecInt(char[] name, char[] nick, char[] blurb, int minimum, int maximum, int defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_int (const gchar *name,  const gchar *nick,  const gchar *blurb,  gint minimum,  gint maximum,  gint default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_int(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_INT GValue to v_int.
	 * value:
	 * a valid GValue of type G_TYPE_INT
	 * v_int:
	 * integer value to be set
	 */
	public void setInt(int vInt)
	{
		// void g_value_set_int (GValue *value,  gint v_int);
		g_value_set_int(gValue, vInt);
	}
	
	/**
	 * Get the contents of a G_TYPE_INT GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_INT
	 * Returns:
	 * integer contents of value
	 */
	public int getInt()
	{
		// gint g_value_get_int (const GValue *value);
		return g_value_get_int(gValue);
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecUInt instance specifying a G_TYPE_UINT property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * minimum:
	 *  minimum value for the property specified
	 * maximum:
	 *  maximum value for the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 *  a newly created parameter specification
	 */
	public static ParamSpec gParamSpecUint(char[] name, char[] nick, char[] blurb, uint minimum, uint maximum, uint defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_uint (const gchar *name,  const gchar *nick,  const gchar *blurb,  guint minimum,  guint maximum,  guint default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_uint(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_UINT GValue to v_uint.
	 * value:
	 *  a valid GValue of type G_TYPE_UINT
	 * v_uint:
	 * unsigned integer value to be set
	 */
	public void setUint(uint vUint)
	{
		// void g_value_set_uint (GValue *value,  guint v_uint);
		g_value_set_uint(gValue, vUint);
	}
	
	/**
	 * Get the contents of a G_TYPE_UINT GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_UINT
	 * Returns:
	 * unsigned integer contents of value
	 */
	public uint getUint()
	{
		// guint g_value_get_uint (const GValue *value);
		return g_value_get_uint(gValue);
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecLong instance specifying a G_TYPE_LONG property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * minimum:
	 *  minimum value for the property specified
	 * maximum:
	 *  maximum value for the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecLong(char[] name, char[] nick, char[] blurb, int minimum, int maximum, int defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_long (const gchar *name,  const gchar *nick,  const gchar *blurb,  glong minimum,  glong maximum,  glong default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_long(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_LONG GValue to v_long.
	 * value:
	 *  a valid GValue of type G_TYPE_LONG
	 * v_long:
	 * long integer value to be set
	 */
	public void setLong(int vLong)
	{
		// void g_value_set_long (GValue *value,  glong v_long);
		g_value_set_long(gValue, vLong);
	}
	
	/**
	 * Get the contents of a G_TYPE_LONG GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_LONG
	 * Returns:
	 * long integer contents of value
	 */
	public int getLong()
	{
		// glong g_value_get_long (const GValue *value);
		return g_value_get_long(gValue);
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecULong instance specifying a G_TYPE_ULONG property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * minimum:
	 *  minimum value for the property specified
	 * maximum:
	 *  maximum value for the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 *  a newly created parameter specification
	 */
	public static ParamSpec gParamSpecUlong(char[] name, char[] nick, char[] blurb, uint minimum, uint maximum, uint defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_ulong (const gchar *name,  const gchar *nick,  const gchar *blurb,  gulong minimum,  gulong maximum,  gulong default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_ulong(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_ULONG GValue to v_ulong.
	 * value:
	 *  a valid GValue of type G_TYPE_ULONG
	 * v_ulong:
	 * unsigned long integer value to be set
	 */
	public void setUlong(uint vUlong)
	{
		// void g_value_set_ulong (GValue *value,  gulong v_ulong);
		g_value_set_ulong(gValue, vUlong);
	}
	
	/**
	 * Get the contents of a G_TYPE_ULONG GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_ULONG
	 * Returns:
	 * unsigned long integer contents of value
	 */
	public uint getUlong()
	{
		// gulong g_value_get_ulong (const GValue *value);
		return g_value_get_ulong(gValue);
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecInt64 instance specifying a G_TYPE_INT64 property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * minimum:
	 *  minimum value for the property specified
	 * maximum:
	 *  maximum value for the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecInt64(char[] name, char[] nick, char[] blurb, long minimum, long maximum, long defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_int64 (const gchar *name,  const gchar *nick,  const gchar *blurb,  gint64 minimum,  gint64 maximum,  gint64 default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_int64(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_INT64 GValue to v_int64.
	 * value:
	 *  a valid GValue of type G_TYPE_INT64
	 * v_int64:
	 * 64bit integer value to be set
	 */
	public void setInt64(long vInt64)
	{
		// void g_value_set_int64 (GValue *value,  gint64 v_int64);
		g_value_set_int64(gValue, vInt64);
	}
	
	/**
	 * Get the contents of a G_TYPE_INT64 GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_INT64
	 * Returns:
	 * 64bit integer contents of value
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
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * minimum:
	 *  minimum value for the property specified
	 * maximum:
	 *  maximum value for the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecUint64(char[] name, char[] nick, char[] blurb, ulong minimum, ulong maximum, ulong defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_uint64 (const gchar *name,  const gchar *nick,  const gchar *blurb,  guint64 minimum,  guint64 maximum,  guint64 default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_uint64(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_UINT64 GValue to v_uint64.
	 * value:
	 *  a valid GValue of type G_TYPE_UINT64
	 * v_uint64:
	 * unsigned 64bit integer value to be set
	 */
	public void setUint64(ulong vUint64)
	{
		// void g_value_set_uint64 (GValue *value,  guint64 v_uint64);
		g_value_set_uint64(gValue, vUint64);
	}
	
	/**
	 * Get the contents of a G_TYPE_UINT64 GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_UINT64
	 * Returns:
	 * unsigned 64bit integer contents of value
	 */
	public ulong getUint64()
	{
		// guint64 g_value_get_uint64 (const GValue *value);
		return g_value_get_uint64(gValue);
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecFloat instance specifying a G_TYPE_FLOAT property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * minimum:
	 *  minimum value for the property specified
	 * maximum:
	 *  maximum value for the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecFloat(char[] name, char[] nick, char[] blurb, float minimum, float maximum, float defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_float (const gchar *name,  const gchar *nick,  const gchar *blurb,  gfloat minimum,  gfloat maximum,  gfloat default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_float(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_FLOAT GValue to v_float.
	 * value:
	 *  a valid GValue of type G_TYPE_FLOAT
	 * v_float:
	 * float value to be set
	 */
	public void setFloat(float vFloat)
	{
		// void g_value_set_float (GValue *value,  gfloat v_float);
		g_value_set_float(gValue, vFloat);
	}
	
	/**
	 * Get the contents of a G_TYPE_FLOAT GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_FLOAT
	 * Returns:
	 * float contents of value
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
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * minimum:
	 *  minimum value for the property specified
	 * maximum:
	 *  maximum value for the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 *  a newly created parameter specification
	 */
	public static ParamSpec gParamSpecDouble(char[] name, char[] nick, char[] blurb, double minimum, double maximum, double defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_double (const gchar *name,  const gchar *nick,  const gchar *blurb,  gdouble minimum,  gdouble maximum,  gdouble default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_double(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minimum, maximum, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_DOUBLE GValue to v_double.
	 * value:
	 *  a valid GValue of type G_TYPE_DOUBLE
	 * v_double:
	 * double value to be set
	 */
	public void setDouble(double vDouble)
	{
		// void g_value_set_double (GValue *value,  gdouble v_double);
		g_value_set_double(gValue, vDouble);
	}
	
	/**
	 * Get the contents of a G_TYPE_DOUBLE GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_DOUBLE
	 * Returns:
	 * double contents of value
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
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * enum_type:
	 *  a GType derived from G_TYPE_ENUM
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 *  a newly created parameter specification
	 */
	public static ParamSpec gParamSpecEnum(char[] name, char[] nick, char[] blurb, GType enumType, int defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_enum (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType enum_type,  gint default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_enum(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), enumType, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_ENUM GValue to v_enum.
	 * value:
	 *  a valid GValue whose type is derived from G_TYPE_ENUM
	 * v_enum:
	 * enum value to be set
	 */
	public void setEnum(int vEnum)
	{
		// void g_value_set_enum (GValue *value,  gint v_enum);
		g_value_set_enum(gValue, vEnum);
	}
	
	/**
	 * Get the contents of a G_TYPE_ENUM GValue.
	 * value:
	 *  a valid GValue whose type is derived from G_TYPE_ENUM
	 * Returns:
	 * enum contents of value
	 */
	public int getEnum()
	{
		// gint g_value_get_enum (const GValue *value);
		return g_value_get_enum(gValue);
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecEnum instance specifying a G_TYPE_FLAGS
	 * property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * flags_type:
	 *  a GType derived from G_TYPE_FLAGS
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 *  a newly created parameter specification
	 */
	public static ParamSpec gParamSpecFlags(char[] name, char[] nick, char[] blurb, GType flagsType, uint defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_flags (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType flags_type,  guint default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_flags(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), flagsType, defaultValue, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_FLAGS GValue to v_flags.
	 * value:
	 *  a valid GValue whose type is derived from G_TYPE_FLAGS
	 * v_flags:
	 * flags value to be set
	 */
	public void setFlags(uint vFlags)
	{
		// void g_value_set_flags (GValue *value,  guint v_flags);
		g_value_set_flags(gValue, vFlags);
	}
	
	/**
	 * Get the contents of a G_TYPE_FLAGS GValue.
	 * value:
	 *  a valid GValue whose type is derived from G_TYPE_FLAGS
	 * Returns:
	 * flags contents of value
	 */
	public uint getFlags()
	{
		// guint g_value_get_flags (const GValue *value);
		return g_value_get_flags(gValue);
	}
	
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecString instance.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 *  a newly created parameter specification
	 */
	public static ParamSpec gParamSpecString(char[] name, char[] nick, char[] blurb, char[] defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_string (const gchar *name,  const gchar *nick,  const gchar *blurb,  const gchar *default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_string(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), Str.toStringz(defaultValue), flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_STRING GValue to v_string.
	 * value:
	 *  a valid GValue of type G_TYPE_STRING
	 * v_string:
	 * string to be set
	 */
	public void setString(char[] vString)
	{
		// void g_value_set_string (GValue *value,  const gchar *v_string);
		g_value_set_string(gValue, Str.toStringz(vString));
	}
	
	/**
	 * Set the contents of a G_TYPE_STRING GValue to v_string.
	 * The string is assumed to be static, and is thus not duplicated
	 * when setting the GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_STRING
	 * v_string:
	 * static string to be set
	 */
	public void setStaticString(char[] vString)
	{
		// void g_value_set_static_string (GValue *value,  const gchar *v_string);
		g_value_set_static_string(gValue, Str.toStringz(vString));
	}
	
	/**
	 * Sets the contents of a G_TYPE_STRING GValue to v_string.
	 * value:
	 *  a valid GValue of type G_TYPE_STRING
	 * v_string:
	 * duplicated unowned string to be set
	 * Since 2.4
	 */
	public void takeString(char[] vString)
	{
		// void g_value_take_string (GValue *value,  gchar *v_string);
		g_value_take_string(gValue, Str.toStringz(vString));
	}
	
	/**
	 * Warning
	 * g_value_set_string_take_ownership has been deprecated since version 2.4 and should not be used in newly-written code. Use g_value_take_string() instead.
	 * This is an internal function introduced mainly for C marshallers.
	 * value:
	 *  a valid GValue of type G_TYPE_STRING
	 * v_string:
	 * duplicated unowned string to be set
	 */
	public void setStringTakeOwnership(char[] vString)
	{
		// void g_value_set_string_take_ownership  (GValue *value,  gchar *v_string);
		g_value_set_string_take_ownership(gValue, Str.toStringz(vString));
	}
	
	/**
	 * Get the contents of a G_TYPE_STRING GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_STRING
	 * Returns:
	 * string content of value
	 */
	public char[] getString()
	{
		// const gchar* g_value_get_string (const GValue *value);
		return Str.toString(g_value_get_string(gValue) );
	}
	
	/**
	 * Get a copy the contents of a G_TYPE_STRING GValue.
	 * value:
	 *  a valid GValue of type G_TYPE_STRING
	 * Returns:
	 * a newly allocated copy of the string content of value
	 */
	public char[] dupString()
	{
		// gchar* g_value_dup_string (const GValue *value);
		return Str.toString(g_value_dup_string(gValue) );
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecParam instance specifying a G_TYPE_PARAM
	 * property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * param_type:
	 *  a GType derived from G_TYPE_PARAM
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 *  a newly created parameter specification
	 */
	public static ParamSpec gParamSpecParam(char[] name, char[] nick, char[] blurb, GType paramType, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_param (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType param_type,  GParamFlags flags);
		return new ParamSpec( g_param_spec_param(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), paramType, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_PARAM GValue to param.
	 * value:
	 *  a valid GValue of type G_TYPE_PARAM
	 * param:
	 * the GParamSpec to be set
	 */
	public void setParam(ParamSpec param)
	{
		// void g_value_set_param (GValue *value,  GParamSpec *param);
		g_value_set_param(gValue, (param is null) ? null : param.getParamSpecStruct());
	}
	
	/**
	 * Sets the contents of a G_TYPE_PARAM GValue to param and
	 * takes over the ownership of the callers reference to param;
	 * the caller doesn't have to unref it any more.
	 * value:
	 *  a valid GValue of type G_TYPE_PARAM
	 * param:
	 * the GParamSpec to be set
	 * Since 2.4
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
	 * value:
	 *  a valid GValue of type G_TYPE_PARAM
	 * param:
	 * the GParamSpec to be set
	 */
	public void setParamTakeOwnership(ParamSpec param)
	{
		// void g_value_set_param_take_ownership  (GValue *value,  GParamSpec *param);
		g_value_set_param_take_ownership(gValue, (param is null) ? null : param.getParamSpecStruct());
	}
	
	/**
	 * Get the contents of a G_TYPE_PARAM GValue.
	 * value:
	 * a valid GValue whose type is derived from G_TYPE_PARAM
	 * Returns:
	 * GParamSpec content of value
	 */
	public ParamSpec getParam()
	{
		// GParamSpec* g_value_get_param (const GValue *value);
		return new ParamSpec( g_value_get_param(gValue) );
	}
	
	/**
	 * Get the contents of a G_TYPE_PARAM GValue, increasing its reference count.
	 * value:
	 * a valid GValue whose type is derived from G_TYPE_PARAM
	 * Returns:
	 * GParamSpec content of value, should be unreferenced when no longer needed.
	 */
	public ParamSpec dupParam()
	{
		// GParamSpec* g_value_dup_param (const GValue *value);
		return new ParamSpec( g_value_dup_param(gValue) );
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecBoxed instance specifying a G_TYPE_BOXED
	 * derived property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * boxed_type:
	 *  G_TYPE_BOXED derived type of this property
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecBoxed(char[] name, char[] nick, char[] blurb, GType boxedType, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_boxed (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType boxed_type,  GParamFlags flags);
		return new ParamSpec( g_param_spec_boxed(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), boxedType, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_BOXED derived GValue to v_boxed.
	 * value:
	 *  a valid GValue of G_TYPE_BOXED derived type
	 * v_boxed:
	 * boxed value to be set
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
	 * value:
	 *  a valid GValue of G_TYPE_BOXED derived type
	 * v_boxed:
	 * static boxed value to be set
	 */
	public void setStaticBoxed(void* vBoxed)
	{
		// void g_value_set_static_boxed (GValue *value,  gconstpointer v_boxed);
		g_value_set_static_boxed(gValue, vBoxed);
	}
	
	/**
	 * Sets the contents of a G_TYPE_BOXED derived GValue to v_boxed and
	 * takes over the ownership of the callers reference to v_boxed;
	 * the caller doesn't have to unref it any more.
	 * value:
	 * a valid GValue of G_TYPE_BOXED derived type
	 * v_boxed:
	 * duplicated unowned boxed value to be set
	 * Since 2.4
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
	 * value:
	 *  a valid GValue of G_TYPE_BOXED derived type
	 * v_boxed:
	 * duplicated unowned boxed value to be set
	 */
	public void setBoxedTakeOwnership(void* vBoxed)
	{
		// void g_value_set_boxed_take_ownership  (GValue *value,  gconstpointer v_boxed);
		g_value_set_boxed_take_ownership(gValue, vBoxed);
	}
	
	/**
	 * Get the contents of a G_TYPE_BOXED derived GValue.
	 * value:
	 *  a valid GValue of G_TYPE_BOXED derived type
	 * Returns:
	 * boxed contents of value
	 */
	public void* getBoxed()
	{
		// gpointer g_value_get_boxed (const GValue *value);
		return g_value_get_boxed(gValue);
	}
	
	/**
	 * Get the contents of a G_TYPE_BOXED derived GValue.
	 * Upon getting, the boxed value is duplicated and needs to be
	 * later freed with g_boxed_free(), e.g. like: g_boxed_free (G_VALUE_TYPE (value), return_value);
	 * value:
	 *  a valid GValue of G_TYPE_BOXED derived type
	 * Returns:
	 * boxed contents of value
	 */
	public void* dupBoxed()
	{
		// gpointer g_value_dup_boxed (const GValue *value);
		return g_value_dup_boxed(gValue);
	}
	
	
	
	
	
	
	/**
	 * Creates a new GParamSpecPoiner instance specifying a pointer property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecPointer(char[] name, char[] nick, char[] blurb, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_pointer (const gchar *name,  const gchar *nick,  const gchar *blurb,  GParamFlags flags);
		return new ParamSpec( g_param_spec_pointer(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), flags) );
	}
	
	/**
	 * Set the contents of a pointer GValue to v_pointer.
	 * value:
	 *  a valid GValue of G_TYPE_POINTER
	 * v_pointer:
	 * pointer value to be set
	 */
	public void setPointer(void* vPointer)
	{
		// void g_value_set_pointer (GValue *value,  gpointer v_pointer);
		g_value_set_pointer(gValue, vPointer);
	}
	
	/**
	 * Get the contents of a pointer GValue.
	 * value:
	 *  a valid GValue of G_TYPE_POINTER
	 * Returns:
	 * pointer contents of value
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
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * object_type:
	 *  G_TYPE_OBJECT derived type of this property
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecObject(char[] name, char[] nick, char[] blurb, GType objectType, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_object (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType object_type,  GParamFlags flags);
		return new ParamSpec( g_param_spec_object(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), objectType, flags) );
	}
	
	/**
	 * Set the contents of a G_TYPE_OBJECT derived GValue to v_object.
	 * value:
	 *  a valid GValue of G_TYPE_OBJECT derived type
	 * v_object:
	 * object value to be set
	 */
	public void setObject(void* vObject)
	{
		// void g_value_set_object (GValue *value,  gpointer v_object);
		g_value_set_object(gValue, vObject);
	}
	
	/**
	 * Sets the contents of a G_TYPE_OBJECT derived GValue to v_object
	 * and takes over the ownership of the callers reference to v_object;
	 * the caller doesn't have to unref it any more.
	 * value:
	 *  a valid GValue of G_TYPE_OBJECT derived type
	 * v_object:
	 * object value to be set
	 * Since 2.4
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
	 * value:
	 *  a valid GValue of G_TYPE_OBJECT derived type
	 * v_object:
	 * object value to be set
	 */
	public void setObjectTakeOwnership(void* vObject)
	{
		// void g_value_set_object_take_ownership  (GValue *value,  gpointer v_object);
		g_value_set_object_take_ownership(gValue, vObject);
	}
	
	/**
	 * Get the contents of a G_TYPE_OBJECT derived GValue.
	 * value:
	 *  a valid GValue of G_TYPE_OBJECT derived type
	 * Returns:
	 * object contents of value
	 */
	public void* getObject()
	{
		// gpointer g_value_get_object (const GValue *value);
		return g_value_get_object(gValue);
	}
	
	/**
	 * Get the contents of a G_TYPE_OBJECT derived GValue, increasing its reference count.
	 * value:
	 * a valid GValue whose type is derived from G_TYPE_OBJECT
	 * Returns:
	 * object content of value, should be unreferenced when no longer needed.
	 */
	public ObjectG dupObject()
	{
		// GObject* g_value_dup_object (const GValue *value);
		return new ObjectG( g_value_dup_object(gValue) );
	}
	
	
	
	
	
	/**
	 * Creates a new GParamSpecUnichar instance specifying a G_TYPE_UINT
	 * property. GValue structures for this property can be accessed with
	 * g_value_set_uint() and g_value_get_uint().
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * default_value:
	 * default value for the property specified
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecUnichar(char[] name, char[] nick, char[] blurb, gunichar defaultValue, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_unichar (const gchar *name,  const gchar *nick,  const gchar *blurb,  gunichar default_value,  GParamFlags flags);
		return new ParamSpec( g_param_spec_unichar(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), defaultValue, flags) );
	}
	
	
	
	
	
	/**
	 * Creates a new GParamSpecValueArray instance specifying a
	 * G_TYPE_VALUE_ARRAY property. G_TYPE_VALUE_ARRAY is a G_TYPE_BOXED
	 * type, as such, GValue structures for this property can be accessed
	 * with g_value_set_boxed() and g_value_get_boxed().
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * element_spec:
	 *  a GParamSpec describing the elements contained in
	 *  arrays of this property, may be NULL
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 */
	public static ParamSpec gParamSpecValueArray(char[] name, char[] nick, char[] blurb, ParamSpec elementSpec, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_value_array (const gchar *name,  const gchar *nick,  const gchar *blurb,  GParamSpec *element_spec,  GParamFlags flags);
		return new ParamSpec( g_param_spec_value_array(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), (elementSpec is null) ? null : elementSpec.getParamSpecStruct(), flags) );
	}
	
	
	
	
	
	/**
	 * Creates a new property of type GParamSpecOverride. This is used
	 * to direct operations to another paramspec, and will not be directly
	 * useful unless you are implementing a new base type similar to GObject.
	 * name:
	 * the name of the property.
	 * overridden:
	 * The property that is being overridden
	 * Returns:
	 * the newly created GParamSpec
	 * Since 2.4
	 */
	public static ParamSpec gParamSpecOverride(char[] name, ParamSpec overridden)
	{
		// GParamSpec* g_param_spec_override (const gchar *name,  GParamSpec *overridden);
		return new ParamSpec( g_param_spec_override(Str.toStringz(name), (overridden is null) ? null : overridden.getParamSpecStruct()) );
	}
	
	
	
	
	
	/**
	 * Creates a new GParamSpecGType instance specifying a
	 * G_TYPE_GTYPE property.
	 * See g_param_spec_internal() for details on property names.
	 * name:
	 *  canonical name of the property specified
	 * nick:
	 *  nick name for the property specified
	 * blurb:
	 *  description of the property specified
	 * is_a_type:
	 *  a GType whose subtypes are allowed as values
	 *  of the property
	 * flags:
	 *  flags for the property specified
	 * Returns:
	 * a newly created parameter specification
	 * Since 2.10
	 * See Also
	 * GParamSpec, GValue, g_object_class_install_property().
	 */
	public static ParamSpec gParamSpecGtype(char[] name, char[] nick, char[] blurb, GType isA_Type, GParamFlags flags)
	{
		// GParamSpec* g_param_spec_gtype (const gchar *name,  const gchar *nick,  const gchar *blurb,  GType is_a_type,  GParamFlags flags);
		return new ParamSpec( g_param_spec_gtype(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), isA_Type, flags) );
	}
}
