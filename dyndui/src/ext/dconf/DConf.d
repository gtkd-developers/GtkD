/*
 * DUI D (graphic) User Interface
 * an implementation through GTK+
 * by Antonio Monteiro.
 * DUI is released under the LGPL license
 * This file is part of DUI.
 * Send comments and suggestions to duitoolkit@yahoo.ca
 * or go to the yahoo group
 * http://groups.yahoo.com/group/duitoolkit
 * (Group email: duitoolkit@yahoogroups.com)
 * See detailed information at DUI home page
 * http://ca.geocities.com/duitoolkit
 */

module ext.dconf.DConf;

private import def.Types;
private import dui.OGTK;
private import dui.Utils;
private import dui.ObjectG;

public:

private:

enum GConfValueType { /*< prefix=GCONF_VALUE >*/
	GCONF_VALUE_INVALID,
	GCONF_VALUE_STRING,
	GCONF_VALUE_INT,
	GCONF_VALUE_FLOAT,
	GCONF_VALUE_BOOL,
	GCONF_VALUE_SCHEMA,
  /* unfortunately these aren't really types; we want list_of_string,
	 list_of_int, etc.  but it's just too complicated to implement.
	 instead we'll complain in various places if you do something
	 moronic like mix types in a list or treat pair<string,int> and
	 pair<float,bool> as the same type. */
	GCONF_VALUE_LIST,
	GCONF_VALUE_PAIR
};

/* Key-value pairs; used to list the contents of
 *  a directory
 */

enum GConfUnsetFlags
{
	GCONF_UNSET_INCLUDING_SCHEMA_NAMES = 1 << 0
};


 
private:
extern(C)   // for GConfValue
{

	void g_error_free(GError *error);
	/*
	 * A GConfValue is used to pass configuration values around
	 */
	
	
	//#define GCONF_VALUE_TYPE_VALID(x)(((x) > GCONF_VALUE_INVALID) && ((x) <= GCONF_VALUE_PAIR))
	/* Forward declaration */
	struct GConfSchema;
	
	struct GConfValue {
		GConfValueType type;
	};

	
	char * gconf_value_get_string(GConfValue * value);
	int gconf_value_get_int(GConfValue * value);
	double gconf_value_get_float(GConfValue * value);
	GConfValueType gconf_value_get_list_type(GConfValue * value);
	GSList * gconf_value_get_list(GConfValue * value);
	GConfValue * gconf_value_get_car(GConfValue * value);
	GConfValue * gconf_value_get_cdr(GConfValue * value);
	gboolean gconf_value_get_bool(GConfValue * value);
	GConfSchema * gconf_value_get_schema(GConfValue * value);
	
	GConfValue * gconf_value_new(GConfValueType type);
	
	/* doesn't work on complicated types(only string, int, bool, float) */
	GConfValue * gconf_value_new_from_string(GConfValueType type, gchar * str, GError * * err);
	
	GConfValue * gconf_value_copy(GConfValue * src);
	void gconf_value_free(GConfValue * value);
	
	void gconf_value_set_int(GConfValue * value, gint the_int);
	void gconf_value_set_string(GConfValue * value, gchar * the_str);
	void gconf_value_set_float(GConfValue * value, gdouble the_float);
	void gconf_value_set_bool(GConfValue * value, gboolean the_bool);
	void gconf_value_set_schema(GConfValue * value, GConfSchema * sc);
	void gconf_value_set_schema_nocopy(GConfValue * value, GConfSchema * sc);
	void gconf_value_set_car(GConfValue * value, GConfValue * car);
	void gconf_value_set_car_nocopy(GConfValue * value, GConfValue * car);
	void gconf_value_set_cdr(GConfValue * value, GConfValue * cdr);
	void gconf_value_set_cdr_nocopy(GConfValue * value, GConfValue * cdr);
	/* Set a list of GConfValue, NOT lists or pairs */
	void gconf_value_set_list_type(GConfValue * value, GConfValueType type);
	void gconf_value_set_list_nocopy(GConfValue * value, GSList * list);
	void gconf_value_set_list(GConfValue * value, GSList * list);
	
	gchar * gconf_value_to_string(GConfValue * value);
	
	/* Meta-information about a key. Not the same as a schema; this is
	 * information stored on the key, the schema is a specification
	 * that may apply to this key.
	 */
	
	/* FIXME GConfMetaInfo is basically deprecated in favor of stuffing this
	 * info into GConfEntry, though the transition isn't complete.
	 */
	
	struct GConfMetaInfo /+ {
		gchar * schema;
		gchar * mod_user; /* user owning the daemon that made the last modification */
		GTime mod_time; /* time of the modification */
	}+/;

	char * gconf_meta_info_get_schema(GConfMetaInfo * gcmi);
	char * gconf_meta_info_get_mod_user(GConfMetaInfo * gcmi);
	//GTime gconf_meta_info_mod_time(GConfMetaInfo * gcmi);
	
	GConfMetaInfo * gconf_meta_info_new();
	void gconf_meta_info_free(GConfMetaInfo * gcmi);
	void gconf_meta_info_set_schema(GConfMetaInfo * gcmi, gchar * schema_name);
	void gconf_meta_info_set_mod_user(GConfMetaInfo * gcmi, gchar * mod_user);
	//void gconf_meta_info_set_mod_time(GConfMetaInfo * gcmi, GTime mod_time);
	
	
	
	struct GConfEntry { 
		char * key;
		GConfValue * value;
	};
	
	char * gconf_entry_get_key(GConfEntry * entry);
	GConfValue * gconf_entry_get_value(GConfEntry * entry);
	char * gconf_entry_get_schema_name(GConfEntry * entry);
	gboolean gconf_entry_get_is_default(GConfEntry * entry);
	gboolean gconf_entry_get_is_writable(GConfEntry * entry);
	
	GConfEntry * gconf_entry_new(gchar * key, GConfValue * val);
	GConfEntry * gconf_entry_new_nocopy(gchar * key, GConfValue * val);
	
	GConfEntry * gconf_entry_copy(GConfEntry * src);
	//#ifndef GCONF_DISABLE_DEPRECATED 
	//void gconf_entry_free(GConfEntry * entry);
	//#endif void gconf_entry_ref(GConfEntry * entry);
	void gconf_entry_unref(GConfEntry * entry);

	/+	
	/* Transfer ownership of value to the caller. */
	/** \todo */
	GConfValue * gconf_entry_steal_value(GConfEntry * entry);
	/** \todo */
	void gconf_entry_set_value(GConfEntry * entry, GConfValue * val);
	/** \todo */
	void gconf_entry_set_value_nocopy(GConfEntry * entry, GConfValue * val);
	/** \todo */
	void gconf_entry_set_schema_name(GConfEntry * entry, gchar * name);
	/** \todo */
	void gconf_entry_set_is_default(GConfEntry * entry, gboolean is_default);
	+/
	
}; // for GConfValue


struct GConfEngine;

extern(C) // for GConfEngine
{
	
	///////////////// GConfEngine //////////////////////
	GConfEngine* gconf_engine_get_default();
	/* returns NULL on error; requests single specified source */
	GConfEngine* gconf_engine_get_for_address(gchar* address, GError** err);
	void gconf_engine_unref(GConfEngine* conf);
	void gconf_engine_ref(GConfEngine* conf);

	//#ifdef GCONF_ENABLE_INTERNALS
	GConfEngine* gconf_engine_get_local(gchar* address, GError** err);
	//#endif
	
	//////////////// GConf ////////////////////////////

	/* Returns ID of the notification */
	/* returns 0 on error, 0 is an invalid ID */
	//guint gconf_engine_notify_add(GConfEngine * conf, /* dir or key to listen to */
	//							   gchar * namespace_section, GConfNotifyFunc func, gpointer user_data, GError * *err);
	
	//void gconf_engine_notify_remove(GConfEngine * conf, guint cnxn);
	
	
	
	/* Low-level interfaces */
	GConfValue * gconf_engine_get(GConfEngine * conf, gchar * key, GError * *err);
	
	GConfValue * gconf_engine_get_without_default(GConfEngine * conf, gchar * key, GError * *err);
	
	GConfEntry * gconf_engine_get_entry(GConfEngine * conf, gchar * key, gchar * locale, gboolean use_schema_default, GError * *err);
	
	
	/* Locale only matters if you are expecting to get a schema, or if you
	   don't know what you are expecting and it might be a schema. Note
	   that gconf_engine_get() automatically uses the current locale, which is
	   normally what you want. */
	GConfValue * gconf_engine_get_with_locale(GConfEngine * conf, gchar * key, gchar * locale, GError * *err);
	
	
	/* Get the default value stored in the schema associated with this key */
	GConfValue * gconf_engine_get_default_from_schema(GConfEngine * conf, gchar * key, GError * *err);
	gboolean gconf_engine_set(GConfEngine * conf, gchar * key, GConfValue * value, GError * *err);
	gboolean gconf_engine_unset(GConfEngine * conf, gchar * key, GError * *err);
	
	
	/*
	 * schema_key should have a schema(if key stores a value) or a dir
	 * full of schemas(if key stores a directory name)
	 */
	
	gboolean gconf_engine_associate_schema(GConfEngine * conf, gchar * key, gchar * schema_key, GError * *err);
	GSList * gconf_engine_all_entries(GConfEngine * conf, gchar * dir, GError * *err);
	GSList * gconf_engine_all_dirs(GConfEngine * conf, gchar * dir, GError * *err);
	void gconf_engine_suggest_sync(GConfEngine * conf, GError * *err);
	gboolean gconf_engine_dir_exists(GConfEngine * conf, gchar * dir, GError * *err);
	void gconf_engine_remove_dir(GConfEngine * conf, gchar * dir, GError * * err);
	
	gboolean gconf_engine_key_is_writable(GConfEngine * conf, gchar * key, GError * *err);
	
	/* if you pass non-NULL for why_invalid, it gives a user-readable
	   explanation of the problem in g_malloc()'d memory
	*/
	gboolean gconf_valid_key(gchar * key, gchar * *why_invalid);
	
	
	/* return TRUE if the path "below" would be somewhere below the directory "above" */
	gboolean gconf_key_is_below(gchar * above, gchar * below);
	
	
	/* Returns allocated concatenation of these two */
	gchar * gconf_concat_dir_and_key(gchar * dir, gchar * key);
	
	
	/* Returns a different string every time(at least, the chances of
	   getting a duplicate are like one in a zillion). The key is a
	   legal gconf key name(a single element of one) */
	gchar * gconf_unique_key();
	
	/* Escape/unescape a string to create a valid key */
	char * gconf_escape_key(char * arbitrary_text, int len);
	char * gconf_unescape_key(char * escaped_key, int len);
	
	
	/*
	 * Higher-level stuff
	 */
	
	
	gdouble gconf_engine_get_float(GConfEngine * conf, gchar * key, GError * *err);
	gint gconf_engine_get_int(GConfEngine * conf, gchar * key, GError * *err);
	
	
	/* free the retval, retval can be NULL for "unset" */
	gchar * gconf_engine_get_string(GConfEngine * conf, gchar * key, GError * *err);
	gboolean gconf_engine_get_bool(GConfEngine * conf, gchar * key, GError * *err);
	
	
	/* this one has no default since it would be expensive and make little
	   sense; it returns NULL as a default, to indicate unset or error */
	/* free the retval */
	/* Note that this returns the schema stored at key, NOT
	   the schema associated with the key. */
	GConfSchema * gconf_engine_get_schema(GConfEngine * conf, gchar * key, GError * *err);
	
	
	/*
	  This automatically converts the list to the given list type;
	  a list of int or bool stores values in the list->data field
	  using GPOINTER_TO_INT(), a list of strings stores the gchar*
	  in list->data, a list of float contains pointers to allocated
	  gdouble(gotta love C!).
	*/
	GSList * gconf_engine_get_list(GConfEngine * conf, gchar * key, GConfValueType list_type, GError * *err);
	
	/*
	  The car_retloc and cdr_retloc args should be the address of the appropriate
	  type:
	  bool    gboolean*
	  int     gint*
	  string  gchar**
	  float   gdouble*
	  schema  GConfSchema**
	*/
	gboolean gconf_engine_get_pair(GConfEngine * conf, gchar * key, GConfValueType car_type, GConfValueType cdr_type, gpointer car_retloc, gpointer cdr_retloc, GError * *err);
	
	
	/* setters return TRUE on success; note that you still should suggest a sync */
	gboolean gconf_engine_set_float(GConfEngine * conf, gchar * key, gdouble val, GError * *err);
	gboolean gconf_engine_set_int(GConfEngine * conf, gchar * key, gint val, GError * *err);
	gboolean gconf_engine_set_string(GConfEngine * conf, gchar * key, gchar * val, GError * *err);
	gboolean gconf_engine_set_bool(GConfEngine * conf, gchar * key, gboolean val, GError * *err);
	gboolean gconf_engine_set_schema(GConfEngine * conf, gchar * key, GConfSchema * val, GError * *err);
	
	
	/* List should be the same as the one gconf_engine_get_list() would return */
	gboolean gconf_engine_set_list(GConfEngine * conf, gchar * key, GConfValueType list_type, GSList * list, GError * *err);
	gboolean gconf_engine_set_pair(GConfEngine * conf, gchar * key, GConfValueType car_type, GConfValueType cdr_type, gconstpointer address_of_car, gconstpointer address_of_cdr, GError * *err);
	
	
	/* Utility function converts enumerations to and from strings */
	struct GConfEnumStringPair {
		gint enum_value;
		gchar * str;
	};
	
	//gboolean gconf_string_to_enum(GConfEnumStringPair lookup_table[], gchar * str, gint * enum_value_retloc);
	//gchar * gconf_enum_to_string(GConfEnumStringPair lookup_table[], gint enum_value);
	
	//int gconf_debug_shutdown();
	
	//#ifndef GCONF_DISABLE_DEPRECATED 
	gboolean gconf_init(int argc, char * *argv, GError * * err);
	gboolean gconf_is_initialized();
	//#endif /* GCONF_DISABLE_DEPRECATED */
	
	///* No, you can't use this stuff. Bad application developer. Bad. */
	////# ifdef GCONF_ENABLE_INTERNALS
	///* This stuff is only useful in GNOME 2.0, so isn't in this GConf
	// * release.
	// */
	//
	////# ifndef GCONF_DISABLE_DEPRECATED /* For use by the Gnome module system */
	//void gconf_preinit(gpointer app, gpointer mod_info);
	//void gconf_postinit(gpointer app, gpointer mod_info);
	//
	//extern char gconf_version[];
	//
	////#ifdef HAVE_POPT_H # include < popt.h > #endif
	////# ifdef POPT_AUTOHELP /* If people are using popt, then make the table available to them */
	////extern struct poptOption gconf_options[];
	////#endif 
	////# endif /* GCONF_DISABLE_DEPRECATED */
	//
	//void gconf_clear_cache(GConfEngine * conf, GError * * err);
	//void gconf_synchronous_sync(GConfEngine * conf, GError * * err);
	//
	//GConfValue * gconf_engine_get_full(GConfEngine * conf, gchar * key, gchar * locale, gboolean use_schema_default, gboolean * is_default_p, gboolean * is_writable_p, GError * *err);
	//
	////#endif /* GCONF_ENABLE_INTERNALS */
		
}; // for GConfEngine

/*
 ****************************************************************************
 ****************************************************************************
 ****************************************************************************
 * DConf
 ****************************************************************************
 ****************************************************************************
 ****************************************************************************
 */

/**
 * DConf
 */
public:
class DConf : OGTK
{

	private:
	GConfEngine* gConfEngine;
	
	public:

	/**
	 * get the gobject as a void* as per OGTK interface
	 */
	void* gtk()
	{
		return (void*)gConfEngine;
	}
	
	/**
	 * gets the GObject GConfEngine
	 */
	GConfEngine* objE()
	{
		return gConfEngine;
	}
	

	//#ifndef GCONF_DISABLE_DEPRECATED 
	//gboolean gconf_init(int argc, char * *argv, GError * * err);
	//gboolean gconf_is_initialized();

	static bit init(char[][]args)
	{
		// Walter version
		char** argv = new char*[args.length];
		int i = 0;
		foreach (char[] p; args)
		{
			argv[i++] = cast(char*)p;
		}
		//printf("gconf_init going\n");
		GError* err = null;
		bit initOK = gconf_init(i, argv, &err) == 0 ? false : true;
		printf("gconf_init done %d\n",initOK);
		return initOK;
	}
	
	private:
	
	/**
	 * I'm not gonna pass the error every time let's try to keep it at the instance level.
	 * \todo Isn't this GError this going to leak the char* message like if ram was infinite?
	 */
	GError* gError;
	GError** error()
	{
		if ( gError !== null )
		{
			g_error_free(gError);
			gError = null;
		}
		return &gError;
	}

	public:

	void printError()
	{
		if ( gError !== null )
		{
			printf("DConf error:\n");
			printf("\tcode = %d\n",gError.code);
			printf("\tmess = %s\n",gError.message);
		}
		else
		{
			printf("DConf no error is set\n");		
		}
	}
	
	/**
	 * Creates a new DConf from a gConfEngine
	 * @param 
	 */
	this(GConfEngine * gConfEngine)
	{
		this.gConfEngine = gConfEngine;
		gError = new GError;
	}
	
	/**
	 * Creates a new DConfEngine
	 */
	this()
	{
		this(gconf_engine_get_default());
	}

	/**
	 * Creates a new DConf
	 * @param address
	 */
	this(char[] address)
	{
		this(gconf_engine_get_for_address(cChar(address), null));
	}

	//#ifdef GCONF_ENABLE_INTERNALS
	/**
	 * get local
	 * @param address
	 */
	this(char[] address, bit dummy)
	{
		this(gconf_engine_get_local(cChar(address), null));
	}
	
	/**
	 * unref
	 */
	void unref()
	{
		gconf_engine_unref(objE());
	}
	
	/**
	 * ref
	 */
	void ref()
	{
		gconf_engine_ref(objE());
	}

	///////////////////////////// GCONF //////////////////////////////////////
	
	/* Returns ID of the notification */
	/* returns 0 on error, 0 is an invalid ID */

	/+	
	/**
	 * \todo
	 * Notify add
	 * @param namespace_section dir or key to listen to
	 * @param func the callback
	 * @param user_data
	 */
	guint notifyAdd(char[] namespace_section, GConfNotifyFunc func, gpointer user_data)
	{
		gconf_engine_notify_add(objE(), /* dir or key to listen to */
								   gchar * namespace_section, GConfNotifyFunc func, gpointer user_data, error());
	}
	
	/**
	 * \todo
	 * notify remove
	 * @param cnxn the connection
	 */
	void notifyRemove(guint cnxn)
	{
		gconf_engine_notify_remove(objE(), cnxn);
	}
	+/	
	
	
	/* Low-level interfaces */
	/**
	 * get
	 */
	ConfValue get(char[] key)
	{
		ConfValue cv = new ConfValue(gconf_engine_get(objE(), cChar(key), error()));
		return cv;
	}
	
	/+
	/** \todo */
	GConfValue * gconf_engine_get_without_default(objE(), gchar * key, error());
	
	/** \todo */
	GConfEntry * gconf_engine_get_entry(objE(), gchar * key, gchar * locale, gboolean use_schema_default, error());
	
	
	/* Locale only matters if you are expecting to get a schema, or if you
	   don't know what you are expecting and it might be a schema. Note
	   that gconf_engine_get() automatically uses the current locale, which is
	   normally what you want. */
	/** \todo */
	GConfValue * gconf_engine_get_with_locale(objE(), gchar * key, gchar * locale, error());
	
	
	/* Get the default value stored in the schema associated with this key */
	/** \todo */
	GConfValue * gconf_engine_get_default_from_schema(objE(), gchar * key, error());
	/** \todo */
	gboolean gconf_engine_set(objE(), gchar * key, GConfValue * value, error());
	/** \todo */
	gboolean gconf_engine_unset(objE(), gchar * key, error());
	+/
	
	/*
	 * schema_key should have a schema(if key stores a value) or a dir
	 * full of schemas(if key stores a directory name)
	 */
	/+	
	/** \todo */
	gboolean gconf_engine_associate_schema(objE(), gchar * key, gchar * schema_key, error());
	/** \todo */
	GSList * gconf_engine_all_entries(objE(), gchar * dir, error());
	/** \todo */
	GSList * gconf_engine_all_dirs(objE(), gchar * dir, error());
	/** \todo */
	void gconf_engine_suggest_sync(objE(), error());
	+/
	
	/**
	 * dirExists
	 * @param dir
	 * @return true if the dir exists
	 */
	bit dirExists(char[] dir)
	{
		return gconf_engine_dir_exists(objE(), cChar(dir), error()) == 0 ? false : true;
	}

	/+	
	/** \todo */
	void gconf_engine_remove_dir(objE(), gchar * dir, GError * * err);
	+/
	
	/** 
	 * keyIsWritable
	 * @param key
	 * @return true is key is writable
	 */
	bit keyIsWritable(char[] key)
	{
		return gconf_engine_key_is_writable(objE(), cChar(key), error()) == 0 ? false : true;
	}
	
	/**
	 * validKey
	 *if you pass non-NULL for why_invalid, it gives a user-readable
	   explanation of the problem in g_malloc()'d memory
	 * @param key the key to test
	 * @param why_invalid
	 * @return true if the key is valie
	*/
	bit validKey(char[] key)
	{
		char*why;
		bit b = gconf_valid_key(cChar(key), &why) == 0 ? false : true;
		printf("validKey %d because %s\n",b,why);
		//free(why);
		return b;
	}
	
	/+
	/* return TRUE if the path "below" would be somewhere below the directory "above" */
	/** \todo */
	gboolean gconf_key_is_below(gchar * above, gchar * below);
	
	
	/* Returns allocated concatenation of these two */
	/** \todo */
	gchar * gconf_concat_dir_and_key(gchar * dir, gchar * key);
	
	
	/* Returns a different string every time(at least, the chances of
	   getting a duplicate are like one in a zillion). The key is a
	   legal gconf key name(a single element of one) */
	/** \todo */
	gchar * gconf_unique_key();
	
	/* Escape/unescape a string to create a valid key */
	/** \todo */
	char * gconf_escape_key(char * arbitrary_text, int len);
	/** \todo */
	char * gconf_unescape_key(char * escaped_key, int len);
	+/	
	
	/*
	 * Higher-level stuff
	 */
	
	
	gdouble getFloat(char[] key)
	{
		return gconf_engine_get_float(objE(), cChar(key), error());
	}
	
	gint getInt(char[] key)
	{
		int i = gconf_engine_get_int(objE(), cChar(key), error()); 
		return i;
	}
	
	/* free the retval, retval can be NULL for "unset" */
	char[] getString(char[] key)
	{
		return std.string.toString(gconf_engine_get_string(objE(), cChar(key), error()));
	}
	
	bit getBit(char[] key)
	{
		return gconf_engine_get_bool(objE(), cChar(key), error()) == 0 ? false : true;
	}
	
	
	/+
	/* this one has no default since it would be expensive and make little
	   sense; it returns NULL as a default, to indicate unset or error */
	/* free the retval */
	/* Note that this returns the schema stored at key, NOT
	   the schema associated with the key. */
	/** \todo */
	GConfSchema * gconf_engine_get_schema(objE(), gchar * key, error());
	
	
	/*
	  This automatically converts the list to the given list type;
	  a list of int or bool stores values in the list->data field
	  using GPOINTER_TO_INT(), a list of strings stores the gchar*
	  in list->data, a list of float contains pointers to allocated
	  gdouble(gotta love C!).
	*/
	/** \todo */
	GSList * gconf_engine_get_list(objE(), gchar * key, GConfValueType list_type, error());
	
	/*
	  The car_retloc and cdr_retloc args should be the address of the appropriate
	  type:
	  bool    gboolean*
	  int     gint*
	  string  gchar**
	  float   gdouble*
	  schema  GConfSchema**
	*/
	/** \todo */
	bit gconf_engine_get_pair(objE(), gchar * key, GConfValueType car_type, GConfValueType cdr_type, gpointer car_retloc, gpointer cdr_retloc, error());
	+/
	
	/* setters return TRUE on success; note that you still should suggest a sync */
	bit setFloat(char[] key, gdouble val)
	{
		return gconf_engine_set_float(objE(), cChar(key), val, error()) == 0 ? false : true;
	}
	
	bit setInt(char[] key, gint val)
	{
		return gconf_engine_set_int(objE(), cChar(key), val, error()) == 0 ? false : true;
	}
	
	bit setString(char[] key, char[] val)
	{
		return gconf_engine_set_string(objE(), cChar(key), cChar(val), error()) == 0 ? false : true;
	}
	
	bit setBit(char[] key, bit val)
	{
		return gconf_engine_set_bool(objE(), cChar(key), val, error()) == 0 ? false : true;
	}
			
	/+		
	/** \todo */
	gboolean gconf_engine_set_schema(objE(), gchar * key, GConfSchema * val, error());
	/* List should be the same as the one gconf_engine_get_list() would return */
	/** \todo */
	gboolean gconf_engine_set_list(objE(), gchar * key, GConfValueType list_type, GSList * list, error());
	/** \todo */
	gboolean gconf_engine_set_pair(objE(), gchar * key, GConfValueType car_type, GConfValueType cdr_type, gconstpointer address_of_car, gconstpointer address_of_cdr, error());
	
	
	+/
	//gboolean gconf_string_to_enum(GConfEnumStringPair lookup_table[], gchar * str, gint * enum_value_retloc);
	//gchar * gconf_enum_to_string(GConfEnumStringPair lookup_table[], gint enum_value);
	
	//int gconf_debug_shutdown();
	
	
};

/*
 ****************************************************************************
 ****************************************************************************
 ****************************************************************************
 * GConfValue
 ****************************************************************************
 ****************************************************************************
 ****************************************************************************
 */

public:

/**
 * GConfValue
 */
public:
class ConfValue : OGTK
{
	private:
	
	GConfValue* gConfValue;
	GError* gError;
	GError** error()
	{
		if ( gError !== null )
		{
			g_error_free(gError);
			gError = null;
		}
		return &gError;
	}
	public:

	void* gtk()
	{
		return (void*)gConfValue;
	}
	
	GConfValue* objV()
	{
		return gConfValue;
	}
	
	this(GConfValue* gConfValue)
	{
		this.gConfValue = gConfValue;
		gError = new GError;
	}
	
	this(GConfValueType type)
	{
		this(gconf_value_new(type));
	}

	/* doesn't work on complicated types(only string, int, bool, float) */
	this(GConfValueType type, char[] str)
	{
		this(gconf_value_new_from_string(type, cChar(str), error()));
	}
	
	this(ConfValue confValue)
	{
		this(gconf_value_copy(confValue.objV()));
	}
	
	~this()
	{
		gconf_value_free(objV());
	}
	
	/+
	/** \todo */
	char * gconf_value_get_string(GConfValue * value);
	/** \todo */
	int gconf_value_get_int(GConfValue * value);
	/** \todo */
	double gconf_value_get_float(GConfValue * value);
	/** \todo */
	GConfValueType gconf_value_get_list_type(GConfValue * value);
	/** \todo */
	GSList * gconf_value_get_list(GConfValue * value);
	/** \todo */
	GConfValue * gconf_value_get_car(GConfValue * value);
	/** \todo */
	GConfValue * gconf_value_get_cdr(GConfValue * value);
	/** \todo */
	gboolean gconf_value_get_bool(GConfValue * value);
	/** \todo */
	GConfSchema * gconf_value_get_schema(GConfValue * value);
	
	/** \todo */
	void gconf_value_free(GConfValue * value);
	
	/** \todo */
	void gconf_value_set_int(GConfValue * value, gint the_int);
	/** \todo */
	void gconf_value_set_string(GConfValue * value, gchar * the_str);
	/** \todo */
	void gconf_value_set_float(GConfValue * value, gdouble the_float);
	/** \todo */
	void gconf_value_set_bool(GConfValue * value, gboolean the_bool);
	/** \todo */
	void gconf_value_set_schema(GConfValue * value, GConfSchema * sc);
	/** \todo */
	void gconf_value_set_schema_nocopy(GConfValue * value, GConfSchema * sc);
	/** \todo */
	void gconf_value_set_car(GConfValue * value, GConfValue * car);
	/** \todo */
	void gconf_value_set_car_nocopy(GConfValue * value, GConfValue * car);
	/** \todo */
	void gconf_value_set_cdr(GConfValue * value, GConfValue * cdr);
	/** \todo */
	void gconf_value_set_cdr_nocopy(GConfValue * value, GConfValue * cdr);
	/* Set a list of GConfValue, NOT lists or pairs */
	/** \todo */
	void gconf_value_set_list_type(GConfValue * value, GConfValueType type);
	/** \todo */
	void gconf_value_set_list_nocopy(GConfValue * value, GSList * list);
	/** \todo */
	void gconf_value_set_list(GConfValue * value, GSList * list);
	
	/** \todo */
	gchar * gconf_value_to_string(GConfValue * value);
	
	/* Meta-information about a key. Not the same as a schema; this is
	 * information stored on the key, the schema is a specification
	 * that may apply to this key.
	 */
	
	/** \todo */
	char * gconf_meta_info_get_schema(GConfMetaInfo * gcmi);
	/** \todo */
	char * gconf_meta_info_get_mod_user(GConfMetaInfo * gcmi);
	/** \todo */
	GTime gconf_meta_info_mod_time(GConfMetaInfo * gcmi);
	
	/** \todo */
	GConfMetaInfo * gconf_meta_info_new();
	/** \todo */
	void gconf_meta_info_free(GConfMetaInfo * gcmi);
	/** \todo */
	void gconf_meta_info_set_schema(GConfMetaInfo * gcmi, gchar * schema_name);
	/** \todo */
	void gconf_meta_info_set_mod_user(GConfMetaInfo * gcmi, gchar * mod_user);
	/** \todo */
	void gconf_meta_info_set_mod_time(GConfMetaInfo * gcmi, GTime mod_time);
	
	/** \todo */
	char * gconf_entry_get_key(GConfEntry * entry);
	/** \todo */
	GConfValue * gconf_entry_get_value(GConfEntry * entry);
	/** \todo */
	char * gconf_entry_get_schema_name(GConfEntry * entry);
	/** \todo */
	gboolean gconf_entry_get_is_default(GConfEntry * entry);
	/** \todo */
	gboolean gconf_entry_get_is_writable(GConfEntry * entry);
	
	/** \todo */
	GConfEntry * gconf_entry_new(gchar * key, GConfValue * val);
	/** \todo */
	GConfEntry * gconf_entry_new_nocopy(gchar * key, GConfValue * val);
	
	/** \todo */
	GConfEntry * gconf_entry_copy(GConfEntry * src);
	//#ifndef GCONF_DISABLE_DEPRECATED 
	//void gconf_entry_free(GConfEntry * entry);
	//#endif void gconf_entry_ref(GConfEntry * entry);
	/** \todo */
	void gconf_entry_unref(GConfEntry * entry);
	
	/* Transfer ownership of value to the caller. */
	/** \todo */
	GConfValue * gconf_entry_steal_value(GConfEntry * entry);
	/** \todo */
	void gconf_entry_set_value(GConfEntry * entry, GConfValue * val);
	/** \todo */
	void gconf_entry_set_value_nocopy(GConfEntry * entry, GConfValue * val);
	/** \todo */
	void gconf_entry_set_schema_name(GConfEntry * entry, gchar * name);
	/** \todo */
	void gconf_entry_set_is_default(GConfEntry * entry, gboolean is_default);
	+/

}
