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
 * inFile  = GFileInfo.html
 * outPack = gio
 * outFile = FileInfo
 * strct   = GFileInfo
 * realStrct=
 * ctorStrct=
 * clss    = FileInfo
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- g_file_info_
 * omit structs:
 * omit prefixes:
 * 	- g_file_attribute_matcher_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gio.FileAttributeMatcher
 * structWrap:
 * 	- GFileAttributeMatcher* -> FileAttributeMatcher
 * 	- GFileInfo* -> FileInfo
 * 	- GIcon* -> IconIF
 * 	- GObject* -> ObjectG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.FileInfo;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ObjectG;
private import gio.Icon;
private import gio.IconIF;
private import gio.FileAttributeMatcher;



private import gobject.ObjectG;

/**
 * Description
 * Functionality for manipulating basic metadata for files. GFileInfo
 * implements methods for getting information that all files should
 * contain, and allows for manipulation of extended attributes.
 * See GFileAttribute for more
 * information on how GIO handles file attributes.
 * To obtain a GFileInfo for a GFile, use g_file_query_info() (or its
 * async variant). To obtain a GFileInfo for a file input or output
 * stream, use g_file_input_stream_query_info() or
 * g_file_output_stream_query_info() (or their async variants).
 * To change the actual attributes of a file, you should then set the
 * attribute in the GFileInfo and call g_file_set_attributes_from_info()
 * or g_file_set_attributes_async() on a GFile.
 * However, not all attributes can be changed in the file. For instance,
 * the actual size of a file cannot be changed via g_file_info_set_size().
 * You may call g_file_query_settable_attributes() and
 * g_file_query_writable_namespaces() to discover the settable attributes
 * of a particular file at runtime.
 * GFileAttributeMatcher allows for searching through a GFileInfo for
 * attributes.
 */
public class FileInfo : ObjectG
{
	
	/** the main Gtk struct */
	protected GFileInfo* gFileInfo;
	
	
	public GFileInfo* getFileInfoStruct()
	{
		return gFileInfo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFileInfo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GFileInfo* gFileInfo)
	{
		super(cast(GObject*)gFileInfo);
		this.gFileInfo = gFileInfo;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gFileInfo = cast(GFileInfo*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new file info structure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GFileInfo * g_file_info_new (void);
		auto p = g_file_info_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_file_info_new()");
		}
		this(cast(GFileInfo*) p);
	}
	
	/**
	 * Duplicates a file info structure.
	 * Returns: a duplicate GFileInfo of other. [transfer full]
	 */
	public FileInfo dup()
	{
		// GFileInfo * g_file_info_dup (GFileInfo *other);
		auto p = g_file_info_dup(gFileInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FileInfo)(cast(GFileInfo*) p);
	}
	
	/**
	 * Copies all of the GFileAttributes
	 * from src_info to dest_info.
	 * Params:
	 * destInfo = destination to copy attributes to.
	 */
	public void copyInto(FileInfo destInfo)
	{
		// void g_file_info_copy_into (GFileInfo *src_info,  GFileInfo *dest_info);
		g_file_info_copy_into(gFileInfo, (destInfo is null) ? null : destInfo.getFileInfoStruct());
	}
	
	/**
	 * Checks if a file info structure has an attribute named attribute.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: TRUE if Ginfo has an attribute named attribute, FALSE otherwise.
	 */
	public int hasAttribute(string attribute)
	{
		// gboolean g_file_info_has_attribute (GFileInfo *info,  const char *attribute);
		return g_file_info_has_attribute(gFileInfo, Str.toStringz(attribute));
	}
	
	/**
	 * Checks if a file info structure has an attribute in the
	 * specified name_space.
	 * Since 2.22
	 * Params:
	 * nameSpace = a file attribute namespace.
	 * Returns: TRUE if Ginfo has an attribute in name_space, FALSE otherwise.
	 */
	public int hasNamespace(string nameSpace)
	{
		// gboolean g_file_info_has_namespace (GFileInfo *info,  const char *name_space);
		return g_file_info_has_namespace(gFileInfo, Str.toStringz(nameSpace));
	}
	
	/**
	 * Lists the file info structure's attributes.
	 * Params:
	 * nameSpace = a file attribute key's namespace.
	 * Returns: a null-terminated array of strings of all of the possible attribute types for the given name_space, or NULL on error. [array zero-terminated=1][transfer full]
	 */
	public string[] listAttributes(string nameSpace)
	{
		// char ** g_file_info_list_attributes (GFileInfo *info,  const char *name_space);
		return Str.toStringArray(g_file_info_list_attributes(gFileInfo, Str.toStringz(nameSpace)));
	}
	
	/**
	 * Gets the attribute type for an attribute key.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: a GFileAttributeType for the given attribute, or G_FILE_ATTRIBUTE_TYPE_INVALID if the key is not set.
	 */
	public GFileAttributeType getAttributeType(string attribute)
	{
		// GFileAttributeType g_file_info_get_attribute_type (GFileInfo *info,  const char *attribute);
		return g_file_info_get_attribute_type(gFileInfo, Str.toStringz(attribute));
	}
	
	/**
	 * Removes all cases of attribute from info if it exists.
	 * Params:
	 * attribute = a file attribute key.
	 */
	public void removeAttribute(string attribute)
	{
		// void g_file_info_remove_attribute (GFileInfo *info,  const char *attribute);
		g_file_info_remove_attribute(gFileInfo, Str.toStringz(attribute));
	}
	
	/**
	 * Gets the value of a attribute, formated as a string.
	 * This escapes things as needed to make the string valid
	 * utf8.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: a UTF-8 string associated with the given attribute. When you're done with the string it must be freed with g_free().
	 */
	public string getAttributeAsString(string attribute)
	{
		// char * g_file_info_get_attribute_as_string (GFileInfo *info,  const char *attribute);
		return Str.toString(g_file_info_get_attribute_as_string(gFileInfo, Str.toStringz(attribute)));
	}
	
	/**
	 * Gets the attribute type, value and status for an attribute key.
	 * Params:
	 * attribute = a file attribute key
	 * type = return location for the attribute type, or NULL. [out][allow-none]
	 * valuePp = return location for the attribute value, or NULL. [out][allow-none]
	 * status = return location for the attribute status, or NULL. [out][allow-none]
	 * Returns: TRUE if info has an attribute named attribute, FALSE otherwise. [transfer none]
	 */
	public int getAttributeData(string attribute, out GFileAttributeType type, out void* valuePp, out GFileAttributeStatus status)
	{
		// gboolean g_file_info_get_attribute_data (GFileInfo *info,  const char *attribute,  GFileAttributeType *type,  gpointer *value_pp,  GFileAttributeStatus *status);
		return g_file_info_get_attribute_data(gFileInfo, Str.toStringz(attribute), &type, &valuePp, &status);
	}
	
	/**
	 * Gets the attribute status for an attribute key.
	 * Params:
	 * attribute = a file attribute key
	 * Returns: a GFileAttributeStatus for the given attribute, or G_FILE_ATTRIBUTE_STATUS_UNSET if the key is invalid.
	 */
	public GFileAttributeStatus getAttributeStatus(string attribute)
	{
		// GFileAttributeStatus g_file_info_get_attribute_status (GFileInfo *info,  const char *attribute);
		return g_file_info_get_attribute_status(gFileInfo, Str.toStringz(attribute));
	}
	
	/**
	 * Gets the value of a string attribute. If the attribute does
	 * not contain a string, NULL will be returned.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: the contents of the attribute value as a UTF-8 string, or NULL otherwise.
	 */
	public string getAttributeString(string attribute)
	{
		// const char * g_file_info_get_attribute_string (GFileInfo *info,  const char *attribute);
		return Str.toString(g_file_info_get_attribute_string(gFileInfo, Str.toStringz(attribute)));
	}
	
	/**
	 * Gets the value of a stringv attribute. If the attribute does
	 * not contain a stringv, NULL will be returned.
	 * Since 2.22
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: the contents of the attribute value as a stringv, or NULL otherwise. Do not free. These returned strings are UTF-8. [transfer none]
	 */
	public string[] getAttributeStringv(string attribute)
	{
		// char ** g_file_info_get_attribute_stringv (GFileInfo *info,  const char *attribute);
		return Str.toStringArray(g_file_info_get_attribute_stringv(gFileInfo, Str.toStringz(attribute)));
	}
	
	/**
	 * Gets the value of a byte string attribute. If the attribute does
	 * not contain a byte string, NULL will be returned.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: the contents of the attribute value as a byte string, or NULL otherwise.
	 */
	public string getAttributeByteString(string attribute)
	{
		// const char * g_file_info_get_attribute_byte_string  (GFileInfo *info,  const char *attribute);
		return Str.toString(g_file_info_get_attribute_byte_string(gFileInfo, Str.toStringz(attribute)));
	}
	
	/**
	 * Gets the value of a boolean attribute. If the attribute does not
	 * contain a boolean value, FALSE will be returned.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: the boolean value contained within the attribute.
	 */
	public int getAttributeBoolean(string attribute)
	{
		// gboolean g_file_info_get_attribute_boolean (GFileInfo *info,  const char *attribute);
		return g_file_info_get_attribute_boolean(gFileInfo, Str.toStringz(attribute));
	}
	
	/**
	 * Gets an unsigned 32-bit integer contained within the attribute. If the
	 * attribute does not contain an unsigned 32-bit integer, or is invalid,
	 * 0 will be returned.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: an unsigned 32-bit integer from the attribute.
	 */
	public uint getAttributeUint32(string attribute)
	{
		// guint32 g_file_info_get_attribute_uint32 (GFileInfo *info,  const char *attribute);
		return g_file_info_get_attribute_uint32(gFileInfo, Str.toStringz(attribute));
	}
	
	/**
	 * Gets a signed 32-bit integer contained within the attribute. If the
	 * attribute does not contain a signed 32-bit integer, or is invalid,
	 * 0 will be returned.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: a signed 32-bit integer from the attribute.
	 */
	public int getAttributeInt32(string attribute)
	{
		// gint32 g_file_info_get_attribute_int32 (GFileInfo *info,  const char *attribute);
		return g_file_info_get_attribute_int32(gFileInfo, Str.toStringz(attribute));
	}
	
	/**
	 * Gets a unsigned 64-bit integer contained within the attribute. If the
	 * attribute does not contain an unsigned 64-bit integer, or is invalid,
	 * 0 will be returned.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: a unsigned 64-bit integer from the attribute.
	 */
	public ulong getAttributeUint64(string attribute)
	{
		// guint64 g_file_info_get_attribute_uint64 (GFileInfo *info,  const char *attribute);
		return g_file_info_get_attribute_uint64(gFileInfo, Str.toStringz(attribute));
	}
	
	/**
	 * Gets a signed 64-bit integer contained within the attribute. If the
	 * attribute does not contain an signed 64-bit integer, or is invalid,
	 * 0 will be returned.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: a signed 64-bit integer from the attribute.
	 */
	public long getAttributeInt64(string attribute)
	{
		// gint64 g_file_info_get_attribute_int64 (GFileInfo *info,  const char *attribute);
		return g_file_info_get_attribute_int64(gFileInfo, Str.toStringz(attribute));
	}
	
	/**
	 * Gets the value of a GObject attribute. If the attribute does
	 * not contain a GObject, NULL will be returned.
	 * Params:
	 * attribute = a file attribute key.
	 * Returns: a GObject associated with the given attribute, or NULL otherwise. [transfer none]
	 */
	public ObjectG getAttributeObject(string attribute)
	{
		// GObject * g_file_info_get_attribute_object (GFileInfo *info,  const char *attribute);
		auto p = g_file_info_get_attribute_object(gFileInfo, Str.toStringz(attribute));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
	}
	
	/**
	 * Sets the attribute to contain the given value, if possible. To unset the
	 * attribute, use G_ATTRIBUTE_TYPE_INVALID for type.
	 * Params:
	 * attribute = a file attribute key.
	 * type = a GFileAttributeType
	 * valueP = pointer to the value
	 */
	public void setAttribute(string attribute, GFileAttributeType type, void* valueP)
	{
		// void g_file_info_set_attribute (GFileInfo *info,  const char *attribute,  GFileAttributeType type,  gpointer value_p);
		g_file_info_set_attribute(gFileInfo, Str.toStringz(attribute), type, valueP);
	}
	
	/**
	 * Sets the attribute status for an attribute key. This is only
	 * needed by external code that implement g_file_set_attributes_from_info()
	 * or similar functions.
	 * The attribute must exist in info for this to work. Otherwise FALSE
	 * is returned and info is unchanged.
	 * Since 2.22
	 * Params:
	 * attribute = a file attribute key
	 * status = a GFileAttributeStatus
	 * Returns: TRUE if the status was changed, FALSE if the key was not set.
	 */
	public int setAttributeStatus(string attribute, GFileAttributeStatus status)
	{
		// gboolean g_file_info_set_attribute_status (GFileInfo *info,  const char *attribute,  GFileAttributeStatus status);
		return g_file_info_set_attribute_status(gFileInfo, Str.toStringz(attribute), status);
	}
	
	/**
	 * Sets the attribute to contain the given attr_value,
	 * if possible.
	 * Params:
	 * attribute = a file attribute key.
	 * attrValue = a UTF-8 string.
	 */
	public void setAttributeString(string attribute, string attrValue)
	{
		// void g_file_info_set_attribute_string (GFileInfo *info,  const char *attribute,  const char *attr_value);
		g_file_info_set_attribute_string(gFileInfo, Str.toStringz(attribute), Str.toStringz(attrValue));
	}
	
	/**
	 * Sets the attribute to contain the given attr_value,
	 * if possible.
	 * Sinze: 2.22
	 * Params:
	 * attribute = a file attribute key
	 * attrValue = a NULL terminated array of UTF-8 strings. [array][element-type utf8]
	 */
	public void setAttributeStringv(string attribute, string[] attrValue)
	{
		// void g_file_info_set_attribute_stringv (GFileInfo *info,  const char *attribute,  char **attr_value);
		g_file_info_set_attribute_stringv(gFileInfo, Str.toStringz(attribute), Str.toStringzArray(attrValue));
	}
	
	/**
	 * Sets the attribute to contain the given attr_value,
	 * if possible.
	 * Params:
	 * attribute = a file attribute key.
	 * attrValue = a byte string.
	 */
	public void setAttributeByteString(string attribute, string attrValue)
	{
		// void g_file_info_set_attribute_byte_string  (GFileInfo *info,  const char *attribute,  const char *attr_value);
		g_file_info_set_attribute_byte_string(gFileInfo, Str.toStringz(attribute), Str.toStringz(attrValue));
	}
	
	/**
	 * Sets the attribute to contain the given attr_value,
	 * if possible.
	 * Params:
	 * attribute = a file attribute key.
	 * attrValue = a boolean value.
	 */
	public void setAttributeBoolean(string attribute, int attrValue)
	{
		// void g_file_info_set_attribute_boolean (GFileInfo *info,  const char *attribute,  gboolean attr_value);
		g_file_info_set_attribute_boolean(gFileInfo, Str.toStringz(attribute), attrValue);
	}
	
	/**
	 * Sets the attribute to contain the given attr_value,
	 * if possible.
	 * Params:
	 * attribute = a file attribute key.
	 * attrValue = an unsigned 32-bit integer.
	 */
	public void setAttributeUint32(string attribute, uint attrValue)
	{
		// void g_file_info_set_attribute_uint32 (GFileInfo *info,  const char *attribute,  guint32 attr_value);
		g_file_info_set_attribute_uint32(gFileInfo, Str.toStringz(attribute), attrValue);
	}
	
	/**
	 * Sets the attribute to contain the given attr_value,
	 * if possible.
	 * Params:
	 * attribute = a file attribute key.
	 * attrValue = a signed 32-bit integer
	 */
	public void setAttributeInt32(string attribute, int attrValue)
	{
		// void g_file_info_set_attribute_int32 (GFileInfo *info,  const char *attribute,  gint32 attr_value);
		g_file_info_set_attribute_int32(gFileInfo, Str.toStringz(attribute), attrValue);
	}
	
	/**
	 * Sets the attribute to contain the given attr_value,
	 * if possible.
	 * Params:
	 * attribute = a file attribute key.
	 * attrValue = an unsigned 64-bit integer.
	 */
	public void setAttributeUint64(string attribute, ulong attrValue)
	{
		// void g_file_info_set_attribute_uint64 (GFileInfo *info,  const char *attribute,  guint64 attr_value);
		g_file_info_set_attribute_uint64(gFileInfo, Str.toStringz(attribute), attrValue);
	}
	
	/**
	 * Sets the attribute to contain the given attr_value,
	 * if possible.
	 * Params:
	 * attribute = attribute name to set.
	 * attrValue = int64 value to set attribute to.
	 */
	public void setAttributeInt64(string attribute, long attrValue)
	{
		// void g_file_info_set_attribute_int64 (GFileInfo *info,  const char *attribute,  gint64 attr_value);
		g_file_info_set_attribute_int64(gFileInfo, Str.toStringz(attribute), attrValue);
	}
	
	/**
	 * Sets the attribute to contain the given attr_value,
	 * if possible.
	 * Params:
	 * attribute = a file attribute key.
	 * attrValue = a GObject.
	 */
	public void setAttributeObject(string attribute, ObjectG attrValue)
	{
		// void g_file_info_set_attribute_object (GFileInfo *info,  const char *attribute,  GObject *attr_value);
		g_file_info_set_attribute_object(gFileInfo, Str.toStringz(attribute), (attrValue is null) ? null : attrValue.getObjectGStruct());
	}
	
	/**
	 * Clears the status information from info.
	 */
	public void clearStatus()
	{
		// void g_file_info_clear_status (GFileInfo *info);
		g_file_info_clear_status(gFileInfo);
	}
	
	/**
	 * Gets a file's type (whether it is a regular file, symlink, etc).
	 * This is different from the file's content type, see g_file_info_get_content_type().
	 * Returns: a GFileType for the given file.
	 */
	public GFileType getFileType()
	{
		// GFileType g_file_info_get_file_type (GFileInfo *info);
		return g_file_info_get_file_type(gFileInfo);
	}
	
	/**
	 * Checks if a file is hidden.
	 * Returns: TRUE if the file is a hidden file, FALSE otherwise.
	 */
	public int getIsHidden()
	{
		// gboolean g_file_info_get_is_hidden (GFileInfo *info);
		return g_file_info_get_is_hidden(gFileInfo);
	}
	
	/**
	 * Checks if a file is a backup file.
	 * Returns: TRUE if file is a backup file, FALSE otherwise.
	 */
	public int getIsBackup()
	{
		// gboolean g_file_info_get_is_backup (GFileInfo *info);
		return g_file_info_get_is_backup(gFileInfo);
	}
	
	/**
	 * Checks if a file is a symlink.
	 * Returns: TRUE if the given info is a symlink.
	 */
	public int getIsSymlink()
	{
		// gboolean g_file_info_get_is_symlink (GFileInfo *info);
		return g_file_info_get_is_symlink(gFileInfo);
	}
	
	/**
	 * Gets the name for a file.
	 * Returns: a string containing the file name.
	 */
	public string getName()
	{
		// const char * g_file_info_get_name (GFileInfo *info);
		return Str.toString(g_file_info_get_name(gFileInfo));
	}
	
	/**
	 * Gets a display name for a file.
	 * Returns: a string containing the display name.
	 */
	public string getDisplayName()
	{
		// const char * g_file_info_get_display_name (GFileInfo *info);
		return Str.toString(g_file_info_get_display_name(gFileInfo));
	}
	
	/**
	 * Gets the edit name for a file.
	 * Returns: a string containing the edit name.
	 */
	public string getEditName()
	{
		// const char * g_file_info_get_edit_name (GFileInfo *info);
		return Str.toString(g_file_info_get_edit_name(gFileInfo));
	}
	
	/**
	 * Gets the icon for a file.
	 * Returns: GIcon for the given info. [transfer none]
	 */
	public IconIF getIcon()
	{
		// GIcon * g_file_info_get_icon (GFileInfo *info);
		auto p = g_file_info_get_icon(gFileInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Gets the symbolic icon for a file.
	 * Since 2.34
	 * Returns: GIcon for the given info. [transfer none]
	 */
	public IconIF getSymbolicIcon()
	{
		// GIcon * g_file_info_get_symbolic_icon (GFileInfo *info);
		auto p = g_file_info_get_symbolic_icon(gFileInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Gets the file's content type.
	 * Returns: a string containing the file's content type.
	 */
	public string getContentType()
	{
		// const char * g_file_info_get_content_type (GFileInfo *info);
		return Str.toString(g_file_info_get_content_type(gFileInfo));
	}
	
	/**
	 * Gets the file's size.
	 * Returns: a goffset containing the file's size.
	 */
	public long getSize()
	{
		// goffset g_file_info_get_size (GFileInfo *info);
		return g_file_info_get_size(gFileInfo);
	}
	
	/**
	 * Gets the modification time of the current info and sets it
	 * in result.
	 * Params:
	 * result = a GTimeVal. [out caller-allocates]
	 */
	public void getModificationTime(out GTimeVal result)
	{
		// void g_file_info_get_modification_time (GFileInfo *info,  GTimeVal *result);
		g_file_info_get_modification_time(gFileInfo, &result);
	}
	
	/**
	 * Gets the symlink target for a given GFileInfo.
	 * Returns: a string containing the symlink target.
	 */
	public string getSymlinkTarget()
	{
		// const char * g_file_info_get_symlink_target (GFileInfo *info);
		return Str.toString(g_file_info_get_symlink_target(gFileInfo));
	}
	
	/**
	 * Gets the entity tag for a given
	 * GFileInfo. See G_FILE_ATTRIBUTE_ETAG_VALUE.
	 * Returns: a string containing the value of the "etag:value" attribute.
	 */
	public string getEtag()
	{
		// const char * g_file_info_get_etag (GFileInfo *info);
		return Str.toString(g_file_info_get_etag(gFileInfo));
	}
	
	/**
	 * Gets the value of the sort_order attribute from the GFileInfo.
	 * See G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER.
	 * Returns: a gint32 containing the value of the "standard::sort_order" attribute.
	 */
	public int getSortOrder()
	{
		// gint32 g_file_info_get_sort_order (GFileInfo *info);
		return g_file_info_get_sort_order(gFileInfo);
	}
	
	/**
	 * Sets mask on info to match specific attribute types.
	 * Params:
	 * mask = a GFileAttributeMatcher.
	 */
	public void setAttributeMask(FileAttributeMatcher mask)
	{
		// void g_file_info_set_attribute_mask (GFileInfo *info,  GFileAttributeMatcher *mask);
		g_file_info_set_attribute_mask(gFileInfo, (mask is null) ? null : mask.getFileAttributeMatcherStruct());
	}
	
	/**
	 * Unsets a mask set by g_file_info_set_attribute_mask(), if one
	 * is set.
	 */
	public void unsetAttributeMask()
	{
		// void g_file_info_unset_attribute_mask (GFileInfo *info);
		g_file_info_unset_attribute_mask(gFileInfo);
	}
	
	/**
	 * Sets the file type in a GFileInfo to type.
	 * See G_FILE_ATTRIBUTE_STANDARD_TYPE.
	 * Params:
	 * type = a GFileType.
	 */
	public void setFileType(GFileType type)
	{
		// void g_file_info_set_file_type (GFileInfo *info,  GFileType type);
		g_file_info_set_file_type(gFileInfo, type);
	}
	
	/**
	 * Sets the "is_hidden" attribute in a GFileInfo according to is_symlink.
	 * See G_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN.
	 * Params:
	 * isHidden = a gboolean.
	 */
	public void setIsHidden(int isHidden)
	{
		// void g_file_info_set_is_hidden (GFileInfo *info,  gboolean is_hidden);
		g_file_info_set_is_hidden(gFileInfo, isHidden);
	}
	
	/**
	 * Sets the "is_symlink" attribute in a GFileInfo according to is_symlink.
	 * See G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK.
	 * Params:
	 * isSymlink = a gboolean.
	 */
	public void setIsSymlink(int isSymlink)
	{
		// void g_file_info_set_is_symlink (GFileInfo *info,  gboolean is_symlink);
		g_file_info_set_is_symlink(gFileInfo, isSymlink);
	}
	
	/**
	 * Sets the name attribute for the current GFileInfo.
	 * See G_FILE_ATTRIBUTE_STANDARD_NAME.
	 * Params:
	 * name = a string containing a name.
	 */
	public void setName(string name)
	{
		// void g_file_info_set_name (GFileInfo *info,  const char *name);
		g_file_info_set_name(gFileInfo, Str.toStringz(name));
	}
	
	/**
	 * Sets the display name for the current GFileInfo.
	 * See G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME.
	 * Params:
	 * displayName = a string containing a display name.
	 */
	public void setDisplayName(string displayName)
	{
		// void g_file_info_set_display_name (GFileInfo *info,  const char *display_name);
		g_file_info_set_display_name(gFileInfo, Str.toStringz(displayName));
	}
	
	/**
	 * Sets the edit name for the current file.
	 * See G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME.
	 * Params:
	 * editName = a string containing an edit name.
	 */
	public void setEditName(string editName)
	{
		// void g_file_info_set_edit_name (GFileInfo *info,  const char *edit_name);
		g_file_info_set_edit_name(gFileInfo, Str.toStringz(editName));
	}
	
	/**
	 * Sets the icon for a given GFileInfo.
	 * See G_FILE_ATTRIBUTE_STANDARD_ICON.
	 * Params:
	 * icon = a GIcon.
	 */
	public void setIcon(IconIF icon)
	{
		// void g_file_info_set_icon (GFileInfo *info,  GIcon *icon);
		g_file_info_set_icon(gFileInfo, (icon is null) ? null : icon.getIconTStruct());
	}
	
	/**
	 * Sets the symbolic icon for a given GFileInfo.
	 * See G_FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON.
	 * Since 2.34
	 * Params:
	 * icon = a GIcon.
	 */
	public void setSymbolicIcon(IconIF icon)
	{
		// void g_file_info_set_symbolic_icon (GFileInfo *info,  GIcon *icon);
		g_file_info_set_symbolic_icon(gFileInfo, (icon is null) ? null : icon.getIconTStruct());
	}
	
	/**
	 * Sets the content type attribute for a given GFileInfo.
	 * See G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE.
	 * Params:
	 * contentType = a content type. See GContentType.
	 */
	public void setContentType(string contentType)
	{
		// void g_file_info_set_content_type (GFileInfo *info,  const char *content_type);
		g_file_info_set_content_type(gFileInfo, Str.toStringz(contentType));
	}
	
	/**
	 * Sets the G_FILE_ATTRIBUTE_STANDARD_SIZE attribute in the file info
	 * to the given size.
	 * Params:
	 * size = a goffset containing the file's size.
	 */
	public void setSize(long size)
	{
		// void g_file_info_set_size (GFileInfo *info,  goffset size);
		g_file_info_set_size(gFileInfo, size);
	}
	
	/**
	 * Sets the G_FILE_ATTRIBUTE_TIME_MODIFIED attribute in the file
	 * info to the given time value.
	 * Params:
	 * mtime = a GTimeVal.
	 */
	public void setModificationTime(ref GTimeVal mtime)
	{
		// void g_file_info_set_modification_time (GFileInfo *info,  GTimeVal *mtime);
		g_file_info_set_modification_time(gFileInfo, &mtime);
	}
	
	/**
	 * Sets the G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET attribute in the file info
	 * to the given symlink target.
	 * Params:
	 * symlinkTarget = a static string containing a path to a symlink target.
	 */
	public void setSymlinkTarget(string symlinkTarget)
	{
		// void g_file_info_set_symlink_target (GFileInfo *info,  const char *symlink_target);
		g_file_info_set_symlink_target(gFileInfo, Str.toStringz(symlinkTarget));
	}
	
	/**
	 * Sets the sort order attribute in the file info structure. See
	 * G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER.
	 * Params:
	 * sortOrder = a sort order integer.
	 */
	public void setSortOrder(int sortOrder)
	{
		// void g_file_info_set_sort_order (GFileInfo *info,  gint32 sort_order);
		g_file_info_set_sort_order(gFileInfo, sortOrder);
	}
}
