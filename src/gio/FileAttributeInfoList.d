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
 * inFile  = gio-GFileAttribute.html
 * outPack = gio
 * outFile = FileAttributeInfoList
 * strct   = GFileAttributeInfoList
 * realStrct=
 * ctorStrct=
 * clss    = FileAttributeInfoList
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_file_attribute_info_list_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GFileAttributeInfoList* -> FileAttributeInfoList
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.FileAttributeInfoList;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * Description
 * File attributes in GIO consist of a list of key-value pairs.
 * Keys are strings that contain a key namespace and a key name, separated
 * by a colon, e.g. "namespace:keyname". Namespaces are included to sort
 * key-value pairs by namespaces for relevance. Keys can be retrived
 * using wildcards, e.g. "standard::*" will return all of the keys in the
 * "standard" namespace.
 * The list of possible attributes for a filesystem (pointed to by a GFile) is
 * available as a GFileAttributeInfoList. This list is queryable by key names
 * as indicated earlier.
 * Information is stored within the list in GFileAttributeInfo structures.
 * The info structure can store different types, listed in the enum
 * GFileAttributeType. Upon creation of a GFileAttributeInfo, the type will
 * be set to G_FILE_ATTRIBUTE_TYPE_INVALID.
 * Classes that implement GFileIface will create a GFileAttributeInfoList and
 * install default keys and values for their given file system, architecture,
 * and other possible implementation details (e.g., on a UNIX system, a file
 * attribute key will be registered for the user id for a given file).
 * Table 1. GFileAttributes Default Namespaces
 * Namspace
 * Description
 * "standard"
 * The "Standard" namespace. General file
 * information that any application may need should be put in this namespace.
 * Examples include the file's name, type, and size.
 * "etag"
 * The "Entity Tag"
 * namespace. Currently, the only key in this namespace is "value", which contains
 * the value of the current entity tag.
 * "id"
 * The "Identification" namespace. This
 * namespace is used by file managers and applications that list directories
 * to check for loops and to uniquely identify files.
 * "access"
 * The "Access" namespace. Used to check
 * if a user has the proper privilidges to access files and perform
 * file operations. Keys in this namespace are made to be generic
 * and easily understood, e.g. the "can_read" key is TRUE if
 * the current user has permission to read the file. UNIX permissions and
 * NTFS ACLs in Windows should be mapped to these values.
 * "mountable"
 * The "Mountable" namespace. Includes
 * simple boolean keys for checking if a file or path supports mount operations, e.g.
 * mount, unmount, eject. These are used for files of type G_FILE_TYPE_MOUNTABLE.
 * "time"
 * The "Time" namespace. Includes file
 * access, changed, created times.
 * "unix"
 * The "Unix" namespace. Includes UNIX-specific
 * information and may not be available for all files. Examples include
 * the UNIX "UID", "GID", etc.
 * "dos"
 * The "DOS" namespace. Includes DOS-specific
 * information and may not be available for all files. Examples include
 * "is_system" for checking if a file is marked as a system file, and "is_archive"
 * for checking if a file is marked as an archive file.
 * "owner"
 * The "Owner" namespace. Includes information
 * about who owns a file. May not be available for all file systems. Examples include
 * "user" for getting the user name of the file owner. This information is often mapped from
 * some backend specific data such as a unix UID.
 * "thumbnail"
 * The "Thumbnail" namespace. Includes
 * information about file thumbnails and their location within the file system. Examples of
 * keys in this namespace include "path" to get the location of a thumbnail, and "failed"
 * to check if thumbnailing of the file failed.
 * "filesystem"
 * The "Filesystem" namespace. Gets information
 * about the file system where a file is located, such as its type, how much
 * space is left available, and the overall size of the file system.
 * "gvfs"
 * The "GVFS" namespace. Keys in this namespace
 * contain information about the current GVFS backend in use.
 * "xattr"
 * The "xattr" namespace. Gets information
 * about extended user attributes. See attr(5). The "user." prefix of the
 * extended user attribute name is stripped away when constructing keys in
 * this namespace, e.g. "xattr::mime_type" for the extended attribute with
 * the name "user.mime_type". Note that this information is only available
 * if GLib has been built with extended attribute support.
 * "xattr-sys"
 * The "xattr-sys" namespace.
 * Gets information about extended attributes which are not user-specific.
 * See attr(5). Note that this information is only available if GLib
 * has been built with extended attribute support.
 * "selinux"
 * The "SELinux" namespace. Includes
 * information about the SELinux context of files. Note that this information
 * is only available if GLib has been built with SELinux support.
 * Please note that these are not all of the possible namespaces.
 * More namespaces can be added from GIO modules or by individual applications.
 * For more information about writing GIO modules, see GIOModule.
 * Table 2. GFileAttributes Built-in Keys and Value Types
 * Enum Value
 * Namespace:Key
 * Value Type
 * G_FILE_ATTRIBUTE_STANDARD_TYPE
 * standard::type
 * uint32 (GFileType)
 * G_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN
 * standard::is-hidden
 * boolean
 * G_FILE_ATTRIBUTE_STANDARD_IS_BACKUP
 * standard::is-backup
 * boolean
 * G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK
 * standard::is-symlink
 * boolean
 * G_FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL
 * standard::is-virtual
 * boolean
 * G_FILE_ATTRIBUTE_STANDARD_NAME
 * standard::name
 * byte string
 * G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME
 * standard::display-name
 * string
 * G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME
 * standard::edit-name
 * string
 * G_FILE_ATTRIBUTE_STANDARD_ICON
 * standard::icon
 * object (GIcon)
 * G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE
 * standard::content-type
 * string
 * G_FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE
 * standard::fast-content-type
 * string
 * G_FILE_ATTRIBUTE_STANDARD_SIZE
 * standard::size
 * uint64
 * G_FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE
 * standard::allocated-size
 * uint64
 * G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET
 * standard::symlink-target
 * byte string
 * G_FILE_ATTRIBUTE_STANDARD_TARGET_URI
 * standard::target-uri
 * string
 * G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER
 * standard::sort-order
 * int32
 * G_FILE_ATTRIBUTE_ETAG_VALUE
 * etag::value
 * string
 * G_FILE_ATTRIBUTE_ID_FILE
 * id::file
 * string
 * G_FILE_ATTRIBUTE_ID_FILESYSTEM
 * id::filesystem
 * string
 * G_FILE_ATTRIBUTE_ACCESS_CAN_READ
 * access::can-read
 * boolean
 * G_FILE_ATTRIBUTE_ACCESS_CAN_WRITE
 * access::can-write
 * boolean
 * G_FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE
 * access::can-execute
 * boolean
 * G_FILE_ATTRIBUTE_ACCESS_CAN_DELETE
 * access::can-delete
 * boolean
 * G_FILE_ATTRIBUTE_ACCESS_CAN_TRASH
 * access::can-trash
 * boolean
 * G_FILE_ATTRIBUTE_ACCESS_CAN_RENAME
 * access::can-rename
 * boolean
 * G_FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT
 * mountable::can-mount
 * boolean
 * G_FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT
 * mountable::can-unmount
 * boolean
 * G_FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT
 * mountable::can-eject
 * boolean
 * G_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE
 * mountable::unix-device
 * uint32
 * G_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE
 * mountable::unix-device-file
 * string
 * G_FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI
 * mountable::hal-udi
 * string
 * G_FILE_ATTRIBUTE_TIME_MODIFIED
 * time::modified
 * uint64
 * G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC
 * time::modified-usec
 * uint32
 * G_FILE_ATTRIBUTE_TIME_ACCESS
 * time::access
 * uint64
 * G_FILE_ATTRIBUTE_TIME_ACCESS_USEC
 * time::access-usec
 * uint32
 * G_FILE_ATTRIBUTE_TIME_CHANGED
 * time::changed
 * uint64
 * G_FILE_ATTRIBUTE_TIME_CHANGED_USEC
 * time::changed-usec
 * uint32
 * G_FILE_ATTRIBUTE_TIME_CREATED
 * time::created
 * uint64
 * G_FILE_ATTRIBUTE_TIME_CREATED_USEC
 * time::created-usec
 * uint32
 * G_FILE_ATTRIBUTE_UNIX_DEVICE
 * unix::device
 * uint32
 * G_FILE_ATTRIBUTE_UNIX_INODE
 * unix::inode
 * uint64
 * G_FILE_ATTRIBUTE_UNIX_MODE
 * unix::mode
 * uint32
 * G_FILE_ATTRIBUTE_UNIX_NLINK
 * unix::nlink
 * uint32
 * G_FILE_ATTRIBUTE_UNIX_UID
 * unix::uid
 * uint32
 * G_FILE_ATTRIBUTE_UNIX_GID
 * unix::gid
 * uint32
 * G_FILE_ATTRIBUTE_UNIX_RDEV
 * unix::rdev
 * uint32
 * G_FILE_ATTRIBUTE_UNIX_BLOCK_SIZE
 * unix::block-size
 * uint32
 * G_FILE_ATTRIBUTE_UNIX_BLOCKS
 * unix::blocks
 * uint64
 * G_FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT
 * unix::is-mountpoint
 * boolean
 * G_FILE_ATTRIBUTE_DOS_IS_ARCHIVE
 * dos::is-archive
 * boolean
 * G_FILE_ATTRIBUTE_DOS_IS_SYSTEM
 * dos::is-system
 * boolean
 * G_FILE_ATTRIBUTE_OWNER_USER
 * owner::user
 * string
 * G_FILE_ATTRIBUTE_OWNER_USER_REAL
 * owner::user-real
 * string
 * G_FILE_ATTRIBUTE_OWNER_GROUP
 * owner::group
 * string
 * G_FILE_ATTRIBUTE_THUMBNAIL_PATH
 * thumbnail::path
 * bytestring
 * G_FILE_ATTRIBUTE_THUMBNAILING_FAILED
 * thumbnail::failed
 * boolean
 * G_FILE_ATTRIBUTE_PREVIEW_ICON
 * preview::icon
 * object (GIcon)
 * G_FILE_ATTRIBUTE_FILESYSTEM_SIZE
 * filesystem::size
 * uint64
 * G_FILE_ATTRIBUTE_FILESYSTEM_FREE
 * filesystem::free
 * uint64
 * G_FILE_ATTRIBUTE_FILESYSTEM_USED
 * filesystem::used
 * uint64
 * G_FILE_ATTRIBUTE_FILESYSTEM_TYPE
 * filesystem::type
 * string
 * G_FILE_ATTRIBUTE_FILESYSTEM_READONLY
 * filesystem::readonly
 * boolean
 * G_FILE_ATTRIBUTE_GVFS_BACKEND
 * gvfs::backend
 * string
 * G_FILE_ATTRIBUTE_SELINUX_CONTEXT
 * selinux::context
 * string
 * Note that there are no predefined keys in the "xattr" and "xattr-sys"
 * namespaces. Keys for the "xattr" namespace are constructed by stripping
 * away the "user." prefix from the extended user attribute, and prepending
 * "xattr::". Keys for the "xattr-sys" namespace are constructed by
 * concatenating "xattr-sys::" with the extended attribute name. All extended
 * attribute values are returned as hex-encoded strings in which bytes outside
 * the ASCII range are encoded as hexadecimal escape sequences of the form
 * \xnn.
 */
public class FileAttributeInfoList
{
	
	/** the main Gtk struct */
	protected GFileAttributeInfoList* gFileAttributeInfoList;
	
	
	public GFileAttributeInfoList* getFileAttributeInfoListStruct()
	{
		return gFileAttributeInfoList;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gFileAttributeInfoList;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GFileAttributeInfoList* gFileAttributeInfoList)
	{
		this.gFileAttributeInfoList = gFileAttributeInfoList;
	}
	
	/**
	 */
	
	/**
	 * Creates a new file attribute info list.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GFileAttributeInfoList * g_file_attribute_info_list_new (void);
		auto p = g_file_attribute_info_list_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_file_attribute_info_list_new()");
		}
		this(cast(GFileAttributeInfoList*) p);
	}
	
	/**
	 * References a file attribute info list.
	 * Returns: GFileAttributeInfoList or NULL on error.
	 */
	public FileAttributeInfoList doref()
	{
		// GFileAttributeInfoList * g_file_attribute_info_list_ref (GFileAttributeInfoList *list);
		auto p = g_file_attribute_info_list_ref(gFileAttributeInfoList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FileAttributeInfoList)(cast(GFileAttributeInfoList*) p);
	}
	
	/**
	 * Removes a reference from the given list. If the reference count
	 * falls to zero, the list is deleted.
	 */
	public void unref()
	{
		// void g_file_attribute_info_list_unref (GFileAttributeInfoList *list);
		g_file_attribute_info_list_unref(gFileAttributeInfoList);
	}
	
	/**
	 * Makes a duplicate of a file attribute info list.
	 * Returns: a copy of the given list.
	 */
	public FileAttributeInfoList dup()
	{
		// GFileAttributeInfoList * g_file_attribute_info_list_dup (GFileAttributeInfoList *list);
		auto p = g_file_attribute_info_list_dup(gFileAttributeInfoList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FileAttributeInfoList)(cast(GFileAttributeInfoList*) p);
	}
	
	/**
	 * Gets the file attribute with the name name from list.
	 * Params:
	 * name = the name of the attribute to lookup.
	 * Returns: a GFileAttributeInfo for the name, or NULL if an attribute isn't found.
	 */
	public GFileAttributeInfo* lookup(string name)
	{
		// const GFileAttributeInfo * g_file_attribute_info_list_lookup  (GFileAttributeInfoList *list,  const char *name);
		return g_file_attribute_info_list_lookup(gFileAttributeInfoList, Str.toStringz(name));
	}
	
	/**
	 * Adds a new attribute with name to the list, setting
	 * its type and flags.
	 * Params:
	 * name = the name of the attribute to add.
	 * type = the GFileAttributeType for the attribute.
	 * flags = GFileAttributeInfoFlags for the attribute.
	 */
	public void add(string name, GFileAttributeType type, GFileAttributeInfoFlags flags)
	{
		// void g_file_attribute_info_list_add (GFileAttributeInfoList *list,  const char *name,  GFileAttributeType type,  GFileAttributeInfoFlags flags);
		g_file_attribute_info_list_add(gFileAttributeInfoList, Str.toStringz(name), type, flags);
	}
}
