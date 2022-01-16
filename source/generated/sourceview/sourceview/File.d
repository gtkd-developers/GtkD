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


module sourceview.File;

private import gio.FileIF;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import sourceview.Encoding;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * On-disk representation of a [class@Buffer].
 * 
 * A `GtkSourceFile` object is the on-disk representation of a [class@Buffer].
 * With a `GtkSourceFile`, you can create and configure a [class@FileLoader]
 * and [class@FileSaver] which take by default the values of the
 * `GtkSourceFile` properties (except for the file loader which auto-detect some
 * properties). On a successful load or save operation, the `GtkSourceFile`
 * properties are updated. If an operation fails, the `GtkSourceFile` properties
 * have still the previous valid values.
 */
public class File : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceFile* gtkSourceFile;

	/** Get the main Gtk struct */
	public GtkSourceFile* getFileStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceFile;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceFile;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceFile* gtkSourceFile, bool ownedRef = false)
	{
		this.gtkSourceFile = gtkSourceFile;
		super(cast(GObject*)gtkSourceFile, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_file_get_type();
	}

	/**
	 * Returns: a new #GtkSourceFile object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_file_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceFile*) __p, true);
	}

	/**
	 * Checks synchronously the file on disk, to know whether the file is externally
	 * modified, or has been deleted, and whether the file is read-only.
	 *
	 * #GtkSourceFile doesn't create a [class@Gio.FileMonitor] to track those properties, so
	 * this function needs to be called instead. Creating lots of [class@Gio.FileMonitor]'s
	 * would take lots of resources.
	 *
	 * Since this function is synchronous, it is advised to call it only on local
	 * files. See [method@File.is_local].
	 */
	public void checkFileOnDisk()
	{
		gtk_source_file_check_file_on_disk(gtkSourceFile);
	}

	/**
	 * Returns: the compression type.
	 */
	public GtkSourceCompressionType getCompressionType()
	{
		return gtk_source_file_get_compression_type(gtkSourceFile);
	}

	/**
	 * The encoding is initially %NULL. After a successful file loading or saving
	 * operation, the encoding is non-%NULL.
	 *
	 * Returns: the character encoding.
	 */
	public Encoding getEncoding()
	{
		auto __p = gtk_source_file_get_encoding(gtkSourceFile);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Encoding)(cast(GtkSourceEncoding*) __p);
	}

	/**
	 * Returns: the #GFile.
	 */
	public FileIF getLocation()
	{
		auto __p = gtk_source_file_get_location(gtkSourceFile);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p);
	}

	/**
	 * Returns: the newline type.
	 */
	public GtkSourceNewlineType getNewlineType()
	{
		return gtk_source_file_get_newline_type(gtkSourceFile);
	}

	/**
	 * Returns whether the file has been deleted. If the
	 * [property@File:location] is %NULL, returns %FALSE.
	 *
	 * To have an up-to-date value, you must first call
	 * [method@File.check_file_on_disk].
	 *
	 * Returns: whether the file has been deleted.
	 */
	public bool isDeleted()
	{
		return gtk_source_file_is_deleted(gtkSourceFile) != 0;
	}

	/**
	 * Returns whether the file is externally modified. If the
	 * [property@File:location] is %NULL, returns %FALSE.
	 *
	 * To have an up-to-date value, you must first call
	 * [method@File.check_file_on_disk].
	 *
	 * Returns: whether the file is externally modified.
	 */
	public bool isExternallyModified()
	{
		return gtk_source_file_is_externally_modified(gtkSourceFile) != 0;
	}

	/**
	 * Returns whether the file is local. If the [property@File:location] is %NULL,
	 * returns %FALSE.
	 *
	 * Returns: whether the file is local.
	 */
	public bool isLocal()
	{
		return gtk_source_file_is_local(gtkSourceFile) != 0;
	}

	/**
	 * Returns whether the file is read-only. If the
	 * [property@File:location] is %NULL, returns %FALSE.
	 *
	 * To have an up-to-date value, you must first call
	 * [method@File.check_file_on_disk].
	 *
	 * Returns: whether the file is read-only.
	 */
	public bool isReadonly()
	{
		return gtk_source_file_is_readonly(gtkSourceFile) != 0;
	}

	/**
	 * Sets the location.
	 *
	 * Params:
	 *     location = the new #GFile, or %NULL.
	 */
	public void setLocation(FileIF location)
	{
		gtk_source_file_set_location(gtkSourceFile, (location is null) ? null : location.getFileStruct());
	}

	/**
	 * Sets a [callback@MountOperationFactory] function that will be called when a
	 * [class@Gio.MountOperation] must be created.
	 *
	 * This is useful for creating a [class@Gtk.MountOperation] with the parent [class@Gtk.Window].
	 *
	 * If a mount operation factory isn't set, [ctor@Gio.MountOperation.new] will be
	 * called.
	 *
	 * Params:
	 *     callback = a #GtkSourceMountOperationFactory to call when a
	 *         #GMountOperation is needed.
	 *     userData = the data to pass to the @callback function.
	 *     notify = function to call on @user_data when the @callback is no
	 *         longer needed, or %NULL.
	 */
	public void setMountOperationFactory(GtkSourceMountOperationFactory callback, void* userData, GDestroyNotify notify)
	{
		gtk_source_file_set_mount_operation_factory(gtkSourceFile, callback, userData, notify);
	}
}
