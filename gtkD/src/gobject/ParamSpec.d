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

/*
 * Conversion parameters:
 * inFile  = gobject-GParamSpec.html
 * outPack = gobject
 * outFile = ParamSpec
 * strct   = GParamSpec
 * realStrct=
 * ctorStrct=
 * clss    = ParamSpec
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_param_spec_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * module aliases:
 * local aliases:
 */

module gobject.ParamSpec;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gobjecttypes;

private import gtkc.gobject;


private import glib.Str;
private import gobject.ParamSpec;
private import gobject.Value;
private import glib.ListG;




/**
 * Description
 * GParamSpec is an object structure that encapsulates the metadata
 * required to specify parameters, such as e.g. GObject properties.
 * Parameter names need to start with a letter (a-z or A-Z). Subsequent
 * characters can be letters, numbers or a '-'.
 * All other characters are replaced by a '-' during construction.
 * The result of this replacement is called the canonical name of the
 * parameter.
 */
public class ParamSpec
{
	
	/** the main Gtk struct */
	protected GParamSpec* gParamSpec;
	
	
	public GParamSpec* getParamSpecStruct()
	{
		return gParamSpec;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gParamSpec;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GParamSpec* gParamSpec)
	{
		version(noAssert)
		{
			if ( gParamSpec is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gParamSpec is null on constructor").newline;
				}
				else
				{
					printf("struct gParamSpec is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gParamSpec !is null, "struct gParamSpec is null on constructor");
		}
		this.gParamSpec = gParamSpec;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Increments the reference count of pspec.
	 * pspec:
	 *  a valid GParamSpec
	 * Returns:
	 * the GParamSpec that was passed into this function
	 */
	public ParamSpec doref()
	{
		// GParamSpec* g_param_spec_ref (GParamSpec *pspec);
		return new ParamSpec( g_param_spec_ref(gParamSpec) );
	}
	
	/**
	 * Decrements the reference count of a pspec.
	 * pspec:
	 * a valid GParamSpec
	 */
	public void unref()
	{
		// void g_param_spec_unref (GParamSpec *pspec);
		g_param_spec_unref(gParamSpec);
	}
	
	/**
	 * The initial reference count of a newly created GParamSpec is 1, even
	 * though no one has explicitly called g_param_spec_ref() on it yet. So the
	 * initial reference count is flagged as "floating", until someone calls
	 * g_param_spec_ref (pspec); g_param_spec_sink (pspec);
	 * in sequence on it, taking over the initial reference count (thus
	 * ending up with a pspec that has a reference count of 1 still, but is
	 * not flagged "floating" anymore).
	 * pspec:
	 * a valid GParamSpec
	 */
	public void sink()
	{
		// void g_param_spec_sink (GParamSpec *pspec);
		g_param_spec_sink(gParamSpec);
	}
	
	/**
	 * Convenience function to ref and sink a GParamSpec.
	 * pspec:
	 * a valid GParamSpec
	 * Returns:
	 * the GParamSpec that was passed into this function
	 * Since 2.10
	 */
	public ParamSpec refSink()
	{
		// GParamSpec* g_param_spec_ref_sink (GParamSpec *pspec);
		return new ParamSpec( g_param_spec_ref_sink(gParamSpec) );
	}
	
	/**
	 * Sets value to its default value as specified in pspec.
	 * pspec:
	 * a valid GParamSpec
	 * value:
	 * a GValue of correct type for pspec
	 */
	public void gParamValueSetDefault(Value value)
	{
		// void g_param_value_set_default (GParamSpec *pspec,  GValue *value);
		g_param_value_set_default(gParamSpec, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Checks whether value contains the default value as specified in pspec.
	 * pspec:
	 *  a valid GParamSpec
	 * value:
	 *  a GValue of correct type for pspec
	 * Returns:
	 * whether value contains the canonical default for this pspec
	 */
	public int gParamValueDefaults(Value value)
	{
		// gboolean g_param_value_defaults (GParamSpec *pspec,  GValue *value);
		return g_param_value_defaults(gParamSpec, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Ensures that the contents of value comply with the specifications
	 * set out by pspec. For example, a GParamSpecInt might require
	 * that integers stored in value may not be smaller than -42 and not be
	 * greater than +42. If value contains an integer outside of this range,
	 * it is modified accordingly, so the resulting value will fit into the
	 * range -42 .. +42.
	 * pspec:
	 *  a valid GParamSpec
	 * value:
	 *  a GValue of correct type for pspec
	 * Returns:
	 * whether modifying value was necessary to ensure validity
	 */
	public int gParamValueValidate(Value value)
	{
		// gboolean g_param_value_validate (GParamSpec *pspec,  GValue *value);
		return g_param_value_validate(gParamSpec, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Transforms src_value into dest_value if possible, and then validates
	 * dest_value, in order for it to conform to pspec.
	 * If strict_validation is TRUE this function will only succeed if
	 * the transformed dest_value complied to pspec without modifications.
	 * See also g_value_type_transformable(), g_value_transform() and
	 * g_param_value_validate().
	 * pspec:
	 *  a valid GParamSpec
	 * src_value:
	 *  souce GValue
	 * dest_value:
	 *  destination GValue of correct type for pspec
	 * strict_validation:
	 * TRUE requires dest_value to conform to pspec without modifications
	 * Returns:
	 *  TRUE if transformation and validation were successful,
	 *  FALSE otherwise and dest_value is left untouched.
	 */
	public int gParamValueConvert(Value srcValue, Value destValue, int strictValidation)
	{
		// gboolean g_param_value_convert (GParamSpec *pspec,  const GValue *src_value,  GValue *dest_value,  gboolean strict_validation);
		return g_param_value_convert(gParamSpec, (srcValue is null) ? null : srcValue.getValueStruct(), (destValue is null) ? null : destValue.getValueStruct(), strictValidation);
	}
	
	/**
	 * Compares value1 with value2 according to pspec, and return -1, 0 or +1,
	 * if value1 is found to be less than, equal to or greater than value2,
	 * respectively.
	 * pspec:
	 *  a valid GParamSpec
	 * value1:
	 *  a GValue of correct type for pspec
	 * value2:
	 *  a GValue of correct type for pspec
	 * Returns:
	 * -1, 0 or +1, for a less than, equal to or greater than result
	 */
	public int gParamValuesCmp(Value value1, Value value2)
	{
		// gint g_param_values_cmp (GParamSpec *pspec,  const GValue *value1,  const GValue *value2);
		return g_param_values_cmp(gParamSpec, (value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Returns the name of a GParamSpec.
	 * pspec:
	 * a valid GParamSpec
	 * Returns:
	 * the name of pspec.
	 */
	public char[] getName()
	{
		// const gchar* g_param_spec_get_name (GParamSpec *pspec);
		return Str.toString(g_param_spec_get_name(gParamSpec) );
	}
	
	/**
	 * Returns the nickname of a GParamSpec.
	 * pspec:
	 * a valid GParamSpec
	 * Returns:
	 * the nickname of pspec.
	 */
	public char[] getNick()
	{
		// const gchar* g_param_spec_get_nick (GParamSpec *pspec);
		return Str.toString(g_param_spec_get_nick(gParamSpec) );
	}
	
	/**
	 * Returns the short description of a GParamSpec.
	 * pspec:
	 * a valid GParamSpec
	 * Returns:
	 * the short description of pspec.
	 */
	public char[] getBlurb()
	{
		// const gchar* g_param_spec_get_blurb (GParamSpec *pspec);
		return Str.toString(g_param_spec_get_blurb(gParamSpec) );
	}
	
	/**
	 * Gets back user data pointers stored via g_param_spec_set_qdata().
	 * pspec:
	 * a valid GParamSpec
	 * quark:
	 * a GQuark, naming the user data pointer
	 * Returns:
	 * the user data pointer set, or NULL
	 */
	public void* getQdata(GQuark quark)
	{
		// gpointer g_param_spec_get_qdata (GParamSpec *pspec,  GQuark quark);
		return g_param_spec_get_qdata(gParamSpec, quark);
	}
	
	/**
	 * Sets an opaque, named pointer on a GParamSpec. The name is specified
	 * through a GQuark (retrieved e.g. via g_quark_from_static_string()), and
	 * the pointer can be gotten back from the pspec with g_param_spec_get_qdata().
	 * Setting a previously set user data pointer, overrides (frees)
	 * the old pointer set, using NULL as pointer essentially
	 * removes the data stored.
	 * pspec:
	 * the GParamSpec to set store a user data pointer
	 * quark:
	 * a GQuark, naming the user data pointer
	 * data:
	 * an opaque user data pointer
	 */
	public void setQdata(GQuark quark, void* data)
	{
		// void g_param_spec_set_qdata (GParamSpec *pspec,  GQuark quark,  gpointer data);
		g_param_spec_set_qdata(gParamSpec, quark, data);
	}
	
	/**
	 * This function works like g_param_spec_set_qdata(), but in addition,
	 * a void (*destroy) (gpointer) function may be
	 * specified which is called with data as argument when the pspec is
	 * finalized, or the data is being overwritten by a call to
	 * g_param_spec_set_qdata() with the same quark.
	 * pspec:
	 *  the GParamSpec to set store a user data pointer
	 * quark:
	 *  a GQuark, naming the user data pointer
	 * data:
	 *  an opaque user data pointer
	 * destroy:
	 * function to invoke with data as argument, when data needs to
	 *  be freed
	 */
	public void setQdataFull(GQuark quark, void* data, GDestroyNotify destroy)
	{
		// void g_param_spec_set_qdata_full (GParamSpec *pspec,  GQuark quark,  gpointer data,  GDestroyNotify destroy);
		g_param_spec_set_qdata_full(gParamSpec, quark, data, destroy);
	}
	
	/**
	 * Gets back user data pointers stored via g_param_spec_set_qdata() and
	 * removes the data from pspec without invoking it's destroy() function
	 * (if any was set).
	 * Usually, calling this function is only required to update
	 * user data pointers with a destroy notifier.
	 * pspec:
	 * the GParamSpec to get a stored user data pointer from
	 * quark:
	 * a GQuark, naming the user data pointer
	 * Returns:
	 * the user data pointer set, or NULL
	 */
	public void* stealQdata(GQuark quark)
	{
		// gpointer g_param_spec_steal_qdata (GParamSpec *pspec,  GQuark quark);
		return g_param_spec_steal_qdata(gParamSpec, quark);
	}
	
	/**
	 * If the paramspec redirects operations to another paramspec,
	 * returns that paramspec. Redirect is used typically for
	 * providing a new implementation of a property in a derived
	 * type while preserving all the properties from the parent
	 * type. Redirection is established by creating a property
	 * of type GParamSpecOverride. See g_object_override_property()
	 * for an example of the use of this capability.
	 * pspec:
	 * a GParamSpec
	 * Returns:
	 * paramspec to which requests on this paramspec should
	 *  be redirected, or NULL if none.
	 * Since 2.4
	 */
	public ParamSpec getRedirectTarget()
	{
		// GParamSpec* g_param_spec_get_redirect_target (GParamSpec *pspec);
		return new ParamSpec( g_param_spec_get_redirect_target(gParamSpec) );
	}
	
	/**
	 * Creates a new GParamSpec instance.
	 * A property name consists of segments consisting of ASCII letters and
	 * digits, separated by either the '-' or '_' character. The first
	 * character of a property name must be a letter. Names which violate these
	 * rules lead to undefined behaviour.
	 * When creating and looking up a GParamSpec, either separator can be used,
	 * but they cannot be mixed. Using '-' is considerably more efficient and in
	 * fact required when using property names as detail strings for signals.
	 * param_type:
	 * the GType for the property; must be derived from G_TYPE_PARAM
	 * name:
	 * the canonical name of the property
	 * nick:
	 * the nickname of the property
	 * blurb:
	 * a short description of the property
	 * flags:
	 * a combination of GParamFlags
	 * Returns:
	 * a newly allocated GParamSpec instance
	 */
	public static void* internal(GType paramType, char[] name, char[] nick, char[] blurb, GParamFlags flags)
	{
		// gpointer g_param_spec_internal (GType param_type,  const gchar *name,  const gchar *nick,  const gchar *blurb,  GParamFlags flags);
		return g_param_spec_internal(paramType, Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), flags);
	}
	
	
	/**
	 * Registers name as the name of a new static type derived from
	 * G_TYPE_PARAM. The type system uses the information contained in the
	 * GParamSpecTypeInfo structure pointed to by info to manage the GParamSpec
	 * type and its instances.
	 * name:
	 * 0-terminated string used as the name of the new GParamSpec type.
	 * pspec_info:
	 * The GParamSpecTypeInfo for this GParamSpec type.
	 * Returns:
	 * The new type identifier.
	 */
	public static GType gParamTypeRegisterStatic(char[] name, GParamSpecTypeInfo* pspecInfo)
	{
		// GType g_param_type_register_static (const gchar *name,  const GParamSpecTypeInfo *pspec_info);
		return g_param_type_register_static(Str.toStringz(name), pspecInfo);
	}
	
	
	/**
	 * Creates a new GParamSpecPool.
	 * If type_prefixing is TRUE, lookups in the newly created pool will
	 * allow to specify the owner as a colon-separated prefix of the property name,
	 * like "GtkContainer:border-width". This feature is deprecated, so you should
	 * always set type_prefixing to FALSE.
	 * type_prefixing:
	 * Whether the pool will support type-prefixed property names.
	 * Returns:
	 * a newly allocated GParamSpecPool.
	 */
	public static GParamSpecPool* poolNew(int typePrefixing)
	{
		// GParamSpecPool* g_param_spec_pool_new (gboolean type_prefixing);
		return g_param_spec_pool_new(typePrefixing);
	}
	
	/**
	 * Inserts a GParamSpec in the pool.
	 * pool:
	 * a GParamSpecPool.
	 * pspec:
	 * the GParamSpec to insert
	 * owner_type:
	 * a GType identifying the owner of pspec
	 */
	public static void poolInsert(GParamSpecPool* pool, ParamSpec pspec, GType ownerType)
	{
		// void g_param_spec_pool_insert (GParamSpecPool *pool,  GParamSpec *pspec,  GType owner_type);
		g_param_spec_pool_insert(pool, (pspec is null) ? null : pspec.getParamSpecStruct(), ownerType);
	}
	
	/**
	 * Removes a GParamSpec from the pool.
	 * pool:
	 * a GParamSpecPool
	 * pspec:
	 * the GParamSpec to remove
	 */
	public static void poolRemove(GParamSpecPool* pool, ParamSpec pspec)
	{
		// void g_param_spec_pool_remove (GParamSpecPool *pool,  GParamSpec *pspec);
		g_param_spec_pool_remove(pool, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Looks up a GParamSpec in the pool.
	 * pool:
	 * a GParamSpecPool
	 * param_name:
	 * the name to look for
	 * owner_type:
	 * the owner to look for
	 * walk_ancestors:
	 * If TRUE, also try to find a GParamSpec with param_name
	 *  owned by an ancestor of owner_type.
	 * Returns:
	 * The found GParamSpec, or NULL if no matching GParamSpec was found.
	 */
	public static ParamSpec poolLookup(GParamSpecPool* pool, char[] paramName, GType ownerType, int walkAncestors)
	{
		// GParamSpec* g_param_spec_pool_lookup (GParamSpecPool *pool,  const gchar *param_name,  GType owner_type,  gboolean walk_ancestors);
		return new ParamSpec( g_param_spec_pool_lookup(pool, Str.toStringz(paramName), ownerType, walkAncestors) );
	}
	
	/**
	 * Gets an array of all GParamSpecs owned by owner_type in the pool.
	 * pool:
	 * a GParamSpecPool
	 * owner_type:
	 * the owner to look for
	 * n_pspecs_p:
	 * return location for the length of the returned array
	 * Returns:
	 * a newly allocated array containing pointers to all
	 *  GParamSpecs owned by owner_type in the pool
	 */
	public static GParamSpec** poolList(GParamSpecPool* pool, GType ownerType, uint* nPspecsP)
	{
		// GParamSpec** g_param_spec_pool_list (GParamSpecPool *pool,  GType owner_type,  guint *n_pspecs_p);
		return g_param_spec_pool_list(pool, ownerType, nPspecsP);
	}
	
	/**
	 * Gets an GList of all GParamSpecs owned by owner_type in the pool.
	 * pool:
	 * a GParamSpecPool
	 * owner_type:
	 * the owner to look for
	 * Returns:
	 * a GList of all GParamSpecs owned by owner_type in
	 *  the poolGParamSpecs.
	 * See Also
	 * g_object_class_install_property(), g_object_set(), g_object_get(),
	 * g_object_set_property(), g_object_get_property(), g_value_register_transform_func()
	 */
	public static ListG poolListOwned(GParamSpecPool* pool, GType ownerType)
	{
		// GList* g_param_spec_pool_list_owned (GParamSpecPool *pool,  GType owner_type);
		return new ListG( g_param_spec_pool_list_owned(pool, ownerType) );
	}
}
