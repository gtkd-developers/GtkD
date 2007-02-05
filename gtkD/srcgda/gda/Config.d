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
 * inFile  = libgda-gda-config.html
 * outPack = gda
 * outFile = Config
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Config
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_config_
 * omit structs:
 * 	- GdaDataSourceInfo
 * 	- GdaProviderInfo
 * omit prefixes:
 * 	- gda_data_source_
 * 	- gda_provider_
 * omit code:
 * imports:
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaDataSourceInfo -> DataSourceInfo
 * module aliases:
 * local aliases:
 */

module gda.Config;

private import gdac.gdatypes;

private import gdac.gda;

private import glib.ListG;



/**
 * Description
 *  The functions in this section allow applications an easy access to the libgda
 *  configuration, thus making them able to access the list of data sources
 *  configured in the system, for instance.
 */
public class Config
{
	
	/**
	 */
	
	/**
	 * Gets the value of the specified configuration entry as a string. You
	 * are then responsible to free the returned string.
	 * path :
	 *  path to the configuration entry.
	 * Returns :
	 *  the value stored at the given entry.
	 */
	public static char[] getString(char[] path)
	{
		// gchar* gda_config_get_string (const gchar *path);
		return Str.toString(gda_config_get_string(Str.toStringz(path)) );
	}
	
	/**
	 * Gets the value of the specified configuration entry as an integer.
	 * path :
	 *  path to the configuration entry.
	 * Returns :
	 *  the value stored at the given entry.
	 */
	public static int getInt(char[] path)
	{
		// gint gda_config_get_int (const gchar *path);
		return gda_config_get_int(Str.toStringz(path));
	}
	
	/**
	 * Gets the value of the specified configuration entry as a float.
	 * path :
	 *  path to the configuration entry.
	 * Returns :
	 *  the value stored at the given entry.
	 */
	public static double getFloat(char[] path)
	{
		// gdouble gda_config_get_float (const gchar *path);
		return gda_config_get_float(Str.toStringz(path));
	}
	
	/**
	 * Gets the value of the specified configuration entry as a boolean.
	 * path :
	 *  path to the configuration entry.
	 * Returns :
	 *  the value stored at the given entry.
	 */
	public static int getBoolean(char[] path)
	{
		// gboolean gda_config_get_boolean (const gchar *path);
		return gda_config_get_boolean(Str.toStringz(path));
	}
	
	/**
	 * Sets the given configuration entry to contain a string.
	 * path :
	 *  path to the configuration entry.
	 * new_value :
	 *  new value.
	 */
	public static void setString(char[] path, char[] newValue)
	{
		// void gda_config_set_string (const gchar *path,  const gchar *new_value);
		gda_config_set_string(Str.toStringz(path), Str.toStringz(newValue));
	}
	
	/**
	 * Sets the given configuration entry to contain an integer.
	 * path :
	 *  path to the configuration entry.
	 * new_value :
	 *  new value.
	 */
	public static void setInt(char[] path, int newValue)
	{
		// void gda_config_set_int (const gchar *path,  gint new_value);
		gda_config_set_int(Str.toStringz(path), newValue);
	}
	
	/**
	 * Sets the given configuration entry to contain a float.
	 * path :
	 *  path to the configuration entry.
	 * new_value :
	 *  new value.
	 */
	public static void setFloat(char[] path, double newValue)
	{
		// void gda_config_set_float (const gchar *path,  gdouble new_value);
		gda_config_set_float(Str.toStringz(path), newValue);
	}
	
	/**
	 * Sets the given configuration entry to contain a boolean.
	 * path :
	 *  path to the configuration entry.
	 * new_value :
	 *  new value.
	 */
	public static void setBoolean(char[] path, int newValue)
	{
		// void gda_config_set_boolean (const gchar *path,  gboolean new_value);
		gda_config_set_boolean(Str.toStringz(path), newValue);
	}
	
	/**
	 * Removes the given section from the configuration database.
	 * path :
	 *  path to the configuration section.
	 */
	public static void removeSection(char[] path)
	{
		// void gda_config_remove_section (const gchar *path);
		gda_config_remove_section(Str.toStringz(path));
	}
	
	/**
	 * Removes the given entry from the configuration database.
	 * If the section is empty, also remove the section.
	 * path :
	 *  path to the configuration entry.
	 */
	public static void removeKey(char[] path)
	{
		// void gda_config_remove_key (const gchar *path);
		gda_config_remove_key(Str.toStringz(path));
	}
	
	/**
	 * Checks whether the given section exists in the configuration
	 * system.
	 * path :
	 *  path to the configuration section.
	 * Returns :
	 *  TRUE if the section exists, FALSE otherwise.
	 */
	public static int hasSection(char[] path)
	{
		// gboolean gda_config_has_section (const gchar *path);
		return gda_config_has_section(Str.toStringz(path));
	}
	
	/**
	 * Checks whether the given key exists in the configuration system.
	 * path :
	 *  path to the configuration key.
	 * Returns :
	 *  TRUE if the entry exists, FALSE otherwise.
	 */
	public static int hasKey(char[] path)
	{
		// gboolean gda_config_has_key (const gchar *path);
		return gda_config_has_key(Str.toStringz(path));
	}
	
	/**
	 * Returns a GList containing the names of all the sections available
	 * under the given root directory.
	 * To free the returned value, you can use gda_config_free_list.
	 * path :
	 *  path for root dir.
	 * Returns :
	 *  a list containing all the section names.
	 */
	public static ListG listSections(char[] path)
	{
		// GList* gda_config_list_sections (const gchar *path);
		return new ListG( gda_config_list_sections(Str.toStringz(path)) );
	}
	
	/**
	 * Returns a list of all keys that exist under the given path.
	 * To free the returned value, you can use gda_config_free_list.
	 * path :
	 *  path for root dir.
	 * Returns :
	 *  a list containing all the key names.
	 */
	public static ListG listKeys(char[] path)
	{
		// GList* gda_config_list_keys (const gchar *path);
		return new ListG( gda_config_list_keys(Str.toStringz(path)) );
	}
	
	/**
	 * Gets a string representing the type of the value of the given key.
	 * The caller is responsible of freeing the returned value.
	 * path :
	 *  path to the configuration key.
	 * Returns :
	 *  NULL if not found. Otherwise: "string", "float", "long", "bool".
	 */
	public static char[] getType(char[] path)
	{
		// gchar* gda_config_get_type (const gchar *path);
		return Str.toString(gda_config_get_type(Str.toStringz(path)) );
	}
	
	/**
	 * Frees all memory used by the given GList, which must be the return value
	 * from either gda_config_list_sections and gda_config_list_keys.
	 * list :
	 *  list to be freed.
	 */
	public static void freeList(ListG list)
	{
		// void gda_config_free_list (GList *list);
		gda_config_free_list((list is null) ? null : list.getListGStruct());
	}
	
	
	/**
	 * Installs a configuration listener, which is a callback function
	 * which will be called every time a change occurs on a given
	 * configuration entry.
	 * path :
	 *  configuration path to listen to.
	 * func :
	 *  callback function.
	 * user_data :
	 *  data to be passed to the callback function.
	 * Returns :
	 *  the ID of the listener, which you will need for
	 * calling gda_config_remove_listener. If an error occurs,
	 * 0 is returned.
	 */
	public static uint addListener(char[] path, GdaConfigListenerFunc func, void* userData)
	{
		// guint gda_config_add_listener (const gchar *path,  GdaConfigListenerFunc func,  gpointer user_data);
		return gda_config_add_listener(Str.toStringz(path), func, userData);
	}
	
	/**
	 * Removes a configuration listener previously installed with
	 * gda_config_add_listener, given its ID.
	 * id :
	 *  the ID of the listener to remove.
	 */
	public static void removeListener(uint id)
	{
		// void gda_config_remove_listener (guint id);
		gda_config_remove_listener(id);
	}
	
	
	
	
	
	
	/**
	 * Returns a list of all providers currently installed in
	 * the system. Each of the nodes in the returned GList
	 * is a GdaProviderInfo. To free the returned list,
	 * call the gda_config_free_provider_list function.
	 * Returns :
	 *  a GList of GdaProviderInfo structures.
	 */
	public static ListG getProviderList()
	{
		// GList* gda_config_get_provider_list (void);
		return new ListG( gda_config_get_provider_list() );
	}
	
	/**
	 * Frees a list of GdaProviderInfo structures.
	 * list :
	 *  the list to be freed.
	 */
	public static void freeProviderList(ListG list)
	{
		// void gda_config_free_provider_list (GList *list);
		gda_config_free_provider_list((list is null) ? null : list.getListGStruct());
	}
	
	/**
	 * Gets a GdaProviderInfo structure from the provider list given its name.
	 * name :
	 *  name of the provider to search for.
	 * Returns :
	 *  a GdaProviderInfo structure, if found, or NULL if not found.
	 */
	public static GdaProviderInfo* getProviderByName(char[] name)
	{
		// GdaProviderInfo* gda_config_get_provider_by_name (const gchar *name);
		return gda_config_get_provider_by_name(Str.toStringz(name));
	}
	
	/**
	 * Fills and returns a new GdaDataModel object using information from all
	 * providers which are currently installed in the system.
	 * Rows are separated in 3 columns:
	 * 'Id', 'Location' and 'Description'.
	 * Returns :
	 *  a new GdaDataModel object.
	 */
	public static GdaDataModel* getProviderModel()
	{
		// GdaDataModel* gda_config_get_provider_model (void);
		return gda_config_get_provider_model();
	}
	
	
	
	
	/**
	 * Creates a new GdaDataSourceInfo structure from an existing one.
	 * src :
	 *  data source information to get a copy from.
	 * Returns :
	 *  a newly allocated GdaDataSourceInfo with contains a copy of
	 * information in src.
	 */
	public static GdaDataSourceInfo* copyDataSourceInfo(GdaDataSourceInfo* src)
	{
		// GdaDataSourceInfo* gda_config_copy_data_source_info (GdaDataSourceInfo *src);
		return gda_config_copy_data_source_info(src);
	}
	
	/**
	 * Deallocates all memory associated to the given GdaDataSourceInfo.
	 * info :
	 *  data source information to free.
	 */
	public static void freeDataSourceInfo(GdaDataSourceInfo* info)
	{
		// void gda_config_free_data_source_info (GdaDataSourceInfo *info);
		gda_config_free_data_source_info(info);
	}
	
	/**
	 * Returns a list of all data sources currently configured in the system.
	 * Each of the nodes in the returned GList is a GdaDataSourceInfo.
	 * To free the returned list, call the gda_config_free_data_source_list
	 * function.
	 * Returns :
	 *  a GList of GdaDataSourceInfo structures.
	 */
	public static ListG getDataSourceList()
	{
		// GList* gda_config_get_data_source_list (void);
		return new ListG( gda_config_get_data_source_list() );
	}
	
	/**
	 * Gets a GdaDataSourceInfo structure from the data source list given its
	 * name.
	 * name :
	 *  name of the data source to search for.
	 * Returns :
	 *  a GdaDataSourceInfo structure, if found, or NULL if not found.
	 */
	public static GdaDataSourceInfo* findDataSource(char[] name)
	{
		// GdaDataSourceInfo* gda_config_find_data_source (const gchar *name);
		return gda_config_find_data_source(Str.toStringz(name));
	}
	
	/**
	 * Frees a list of GdaDataSourceInfo structures.
	 * list :
	 *  the list to be freed.
	 */
	public static void freeDataSourceList(ListG list)
	{
		// void gda_config_free_data_source_list (GList *list);
		gda_config_free_data_source_list((list is null) ? null : list.getListGStruct());
	}
	
	/**
	 * Fills and returns a new GdaDataModel object using information from all
	 * data sources which are currently configured in the system.
	 * Rows are separated in 6 columns:
	 * 'Name', 'Provider', 'Connection string', 'Description', 'Username' and
	 * 'Password'.
	 * Returns :
	 *  a new GdaDataModel object.
	 */
	public static GdaDataModel* getDataSourceModel()
	{
		// GdaDataModel* gda_config_get_data_source_model (void);
		return gda_config_get_data_source_model();
	}
	
	/**
	 * Adds a new data source (or update an existing one) to the GDA
	 * configuration, based on the parameters given.
	 * name :
	 *  name for the data source to be saved.
	 * provider :
	 *  provider ID for the new data source.
	 * cnc_string :
	 *  connection string for the new data source.
	 * description :
	 *  description for the new data source.
	 * username :
	 *  user name for the new data source.
	 * password :
	 *  password to use when authenticating username.
	 */
	public static void saveDataSource(char[] name, char[] provider, char[] cncString, char[] description, char[] username, char[] password)
	{
		// void gda_config_save_data_source (const gchar *name,  const gchar *provider,  const gchar *cnc_string,  const gchar *description,  const gchar *username,  const gchar *password);
		gda_config_save_data_source(Str.toStringz(name), Str.toStringz(provider), Str.toStringz(cncString), Str.toStringz(description), Str.toStringz(username), Str.toStringz(password));
	}
	
	/**
	 * Saves a data source in the libgda configuration given a
	 * GdaDataSourceInfo structure containing all the information
	 * about the data source.
	 * dsn_info :
	 *  a GdaDataSourceInfo structure.
	 */
	public static void saveDataSourceInfo(GdaDataSourceInfo* dsnInfo)
	{
		// void gda_config_save_data_source_info (GdaDataSourceInfo *dsn_info);
		gda_config_save_data_source_info(dsnInfo);
	}
	
	/**
	 * Removes the given data source from the GDA configuration.
	 * name :
	 *  name for the data source to be removed.
	 */
	public static void removeDataSource(char[] name)
	{
		// void gda_config_remove_data_source (const gchar *name);
		gda_config_remove_data_source(Str.toStringz(name));
	}
	
	
	
	
}
