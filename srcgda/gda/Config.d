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
 * omit prefixes:
 * 	- gda_data_source_
 * 	- gda_provider_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gda.DataModel
 * 	- gda.DataSourceInfo
 * 	- gda.ProviderInfo
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaDataModel* -> DataModel
 * 	- GdaDataSourceInfo* -> DataSourceInfo
 * 	- GdaProviderInfo* -> ProviderInfo
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.Config;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;
private import gda.DataModel;
private import gda.DataSourceInfo;
private import gda.ProviderInfo;




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
	 * Params:
	 * path = path to the configuration entry.
	 * Returns: the value stored at the given entry.
	 */
	public static string getString(string path)
	{
		// gchar* gda_config_get_string (const gchar *path);
		return Str.toString(gda_config_get_string(Str.toStringz(path)));
	}
	
	/**
	 * Gets the value of the specified configuration entry as an integer.
	 * Params:
	 * path = path to the configuration entry.
	 * Returns: the value stored at the given entry.
	 */
	public static int getInt(string path)
	{
		// gint gda_config_get_int (const gchar *path);
		return gda_config_get_int(Str.toStringz(path));
	}
	
	/**
	 * Gets the value of the specified configuration entry as a float.
	 * Params:
	 * path = path to the configuration entry.
	 * Returns: the value stored at the given entry.
	 */
	public static double getFloat(string path)
	{
		// gdouble gda_config_get_float (const gchar *path);
		return gda_config_get_float(Str.toStringz(path));
	}
	
	/**
	 * Gets the value of the specified configuration entry as a boolean.
	 * Params:
	 * path = path to the configuration entry.
	 * Returns: the value stored at the given entry.
	 */
	public static int getBoolean(string path)
	{
		// gboolean gda_config_get_boolean (const gchar *path);
		return gda_config_get_boolean(Str.toStringz(path));
	}
	
	/**
	 * Sets the given configuration entry to contain a string.
	 * Params:
	 * path = path to the configuration entry.
	 * newValue = new value.
	 */
	public static void setString(string path, string newValue)
	{
		// void gda_config_set_string (const gchar *path,  const gchar *new_value);
		gda_config_set_string(Str.toStringz(path), Str.toStringz(newValue));
	}
	
	/**
	 * Sets the given configuration entry to contain an integer.
	 * Params:
	 * path = path to the configuration entry.
	 * newValue = new value.
	 */
	public static void setInt(string path, int newValue)
	{
		// void gda_config_set_int (const gchar *path,  gint new_value);
		gda_config_set_int(Str.toStringz(path), newValue);
	}
	
	/**
	 * Sets the given configuration entry to contain a float.
	 * Params:
	 * path = path to the configuration entry.
	 * newValue = new value.
	 */
	public static void setFloat(string path, double newValue)
	{
		// void gda_config_set_float (const gchar *path,  gdouble new_value);
		gda_config_set_float(Str.toStringz(path), newValue);
	}
	
	/**
	 * Sets the given configuration entry to contain a boolean.
	 * Params:
	 * path = path to the configuration entry.
	 * newValue = new value.
	 */
	public static void setBoolean(string path, int newValue)
	{
		// void gda_config_set_boolean (const gchar *path,  gboolean new_value);
		gda_config_set_boolean(Str.toStringz(path), newValue);
	}
	
	/**
	 * Removes the given section from the configuration database.
	 * Params:
	 * path = path to the configuration section.
	 */
	public static void removeSection(string path)
	{
		// void gda_config_remove_section (const gchar *path);
		gda_config_remove_section(Str.toStringz(path));
	}
	
	/**
	 * Removes the given entry from the configuration database.
	 * If the section is empty, also remove the section.
	 * Params:
	 * path = path to the configuration entry.
	 */
	public static void removeKey(string path)
	{
		// void gda_config_remove_key (const gchar *path);
		gda_config_remove_key(Str.toStringz(path));
	}
	
	/**
	 * Checks whether the given section exists in the configuration
	 * system.
	 * Params:
	 * path = path to the configuration section.
	 * Returns: TRUE if the section exists, FALSE otherwise.
	 */
	public static int hasSection(string path)
	{
		// gboolean gda_config_has_section (const gchar *path);
		return gda_config_has_section(Str.toStringz(path));
	}
	
	/**
	 * Checks whether the given key exists in the configuration system.
	 * Params:
	 * path = path to the configuration key.
	 * Returns: TRUE if the entry exists, FALSE otherwise.
	 */
	public static int hasKey(string path)
	{
		// gboolean gda_config_has_key (const gchar *path);
		return gda_config_has_key(Str.toStringz(path));
	}
	
	/**
	 * Returns a GList containing the names of all the sections available
	 * under the given root directory.
	 * To free the returned value, you can use gda_config_free_list.
	 * Params:
	 * path = path for root dir.
	 * Returns: a list containing all the section names.
	 */
	public static ListG listSections(string path)
	{
		// GList* gda_config_list_sections (const gchar *path);
		auto p = gda_config_list_sections(Str.toStringz(path));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Returns a list of all keys that exist under the given path.
	 * To free the returned value, you can use gda_config_free_list.
	 * Params:
	 * path = path for root dir.
	 * Returns: a list containing all the key names.
	 */
	public static ListG listKeys(string path)
	{
		// GList* gda_config_list_keys (const gchar *path);
		auto p = gda_config_list_keys(Str.toStringz(path));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Gets a string representing the type of the value of the given key.
	 * The caller is responsible of freeing the returned value.
	 * Params:
	 * path = path to the configuration key.
	 * Returns: NULL if not found. Otherwise: "string", "float", "long", "bool".
	 */
	public static string getType(string path)
	{
		// gchar* gda_config_get_type (const gchar *path);
		return Str.toString(gda_config_get_type(Str.toStringz(path)));
	}
	
	/**
	 * Frees all memory used by the given GList, which must be the return value
	 * from either gda_config_list_sections and gda_config_list_keys.
	 * Params:
	 * list = list to be freed.
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
	 * Params:
	 * path = configuration path to listen to.
	 * func = callback function.
	 * userData = data to be passed to the callback function.
	 * Returns: the ID of the listener, which you will need for calling gda_config_remove_listener. If an error occurs, 0 is returned.
	 */
	public static uint addListener(string path, GdaConfigListenerFunc func, void* userData)
	{
		// guint gda_config_add_listener (const gchar *path,  GdaConfigListenerFunc func,  gpointer user_data);
		return gda_config_add_listener(Str.toStringz(path), func, userData);
	}
	
	/**
	 * Removes a configuration listener previously installed with
	 * gda_config_add_listener, given its ID.
	 * Params:
	 * id = the ID of the listener to remove.
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
	 * Returns: a GList of GdaProviderInfo structures.
	 */
	public static ListG getProviderList()
	{
		// GList* gda_config_get_provider_list (void);
		auto p = gda_config_get_provider_list();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Frees a list of GdaProviderInfo structures.
	 * Params:
	 * list = the list to be freed.
	 */
	public static void freeProviderList(ListG list)
	{
		// void gda_config_free_provider_list (GList *list);
		gda_config_free_provider_list((list is null) ? null : list.getListGStruct());
	}
	
	/**
	 * Gets a GdaProviderInfo structure from the provider list given its name.
	 * Params:
	 * name = name of the provider to search for.
	 * Returns: a GdaProviderInfo structure, if found, or NULL if not found.
	 */
	public static ProviderInfo getProviderByName(string name)
	{
		// GdaProviderInfo* gda_config_get_provider_by_name (const gchar *name);
		auto p = gda_config_get_provider_by_name(Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ProviderInfo)(cast(GdaProviderInfo*) p);
	}
	
	/**
	 * Fills and returns a new GdaDataModel object using information from all
	 * providers which are currently installed in the system.
	 * Rows are separated in 3 columns:
	 * 'Id', 'Location' and 'Description'.
	 * Returns: a new GdaDataModel object.
	 */
	public static DataModel getProviderModel()
	{
		// GdaDataModel* gda_config_get_provider_model (void);
		auto p = gda_config_get_provider_model();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DataModel)(cast(GdaDataModel*) p);
	}
	
	/**
	 * Creates a new GdaDataSourceInfo structure from an existing one.
	 * Params:
	 * src = data source information to get a copy from.
	 * Returns: a newly allocated GdaDataSourceInfo with contains a copy of information in src.
	 */
	public static DataSourceInfo copyDataSourceInfo(DataSourceInfo src)
	{
		// GdaDataSourceInfo* gda_config_copy_data_source_info (GdaDataSourceInfo *src);
		auto p = gda_config_copy_data_source_info((src is null) ? null : src.getDataSourceInfoStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DataSourceInfo)(cast(GdaDataSourceInfo*) p);
	}
	
	/**
	 * Deallocates all memory associated to the given GdaDataSourceInfo.
	 * Params:
	 * info = data source information to free.
	 */
	public static void freeDataSourceInfo(DataSourceInfo info)
	{
		// void gda_config_free_data_source_info (GdaDataSourceInfo *info);
		gda_config_free_data_source_info((info is null) ? null : info.getDataSourceInfoStruct());
	}
	
	/**
	 * Returns a list of all data sources currently configured in the system.
	 * Each of the nodes in the returned GList is a GdaDataSourceInfo.
	 * To free the returned list, call the gda_config_free_data_source_list
	 * function.
	 * Returns: a GList of GdaDataSourceInfo structures.
	 */
	public static ListG getDataSourceList()
	{
		// GList* gda_config_get_data_source_list (void);
		auto p = gda_config_get_data_source_list();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Gets a GdaDataSourceInfo structure from the data source list given its
	 * name.
	 * Params:
	 * name = name of the data source to search for.
	 * Returns: a GdaDataSourceInfo structure, if found, or NULL if not found.
	 */
	public static DataSourceInfo findDataSource(string name)
	{
		// GdaDataSourceInfo* gda_config_find_data_source (const gchar *name);
		auto p = gda_config_find_data_source(Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DataSourceInfo)(cast(GdaDataSourceInfo*) p);
	}
	
	/**
	 * Frees a list of GdaDataSourceInfo structures.
	 * Params:
	 * list = the list to be freed.
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
	 * Returns: a new GdaDataModel object.
	 */
	public static DataModel getDataSourceModel()
	{
		// GdaDataModel* gda_config_get_data_source_model (void);
		auto p = gda_config_get_data_source_model();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DataModel)(cast(GdaDataModel*) p);
	}
	
	/**
	 * Adds a new data source (or update an existing one) to the GDA
	 * configuration, based on the parameters given.
	 * Params:
	 * name = name for the data source to be saved.
	 * provider = provider ID for the new data source.
	 * cncString = connection string for the new data source.
	 * description = description for the new data source.
	 * username = user name for the new data source.
	 * password = password to use when authenticating username.
	 */
	public static void saveDataSource(string name, string provider, string cncString, string description, string username, string password)
	{
		// void gda_config_save_data_source (const gchar *name,  const gchar *provider,  const gchar *cnc_string,  const gchar *description,  const gchar *username,  const gchar *password);
		gda_config_save_data_source(Str.toStringz(name), Str.toStringz(provider), Str.toStringz(cncString), Str.toStringz(description), Str.toStringz(username), Str.toStringz(password));
	}
	
	/**
	 * Saves a data source in the libgda configuration given a
	 * GdaDataSourceInfo structure containing all the information
	 * about the data source.
	 * Params:
	 * dsnInfo = a GdaDataSourceInfo structure.
	 */
	public static void saveDataSourceInfo(DataSourceInfo dsnInfo)
	{
		// void gda_config_save_data_source_info (GdaDataSourceInfo *dsn_info);
		gda_config_save_data_source_info((dsnInfo is null) ? null : dsnInfo.getDataSourceInfoStruct());
	}
	
	/**
	 * Removes the given data source from the GDA configuration.
	 * Params:
	 * name = name for the data source to be removed.
	 */
	public static void removeDataSource(string name)
	{
		// void gda_config_remove_data_source (const gchar *name);
		gda_config_remove_data_source(Str.toStringz(name));
	}
}
