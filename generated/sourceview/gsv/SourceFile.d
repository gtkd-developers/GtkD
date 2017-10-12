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


module gsv.SourceFile;

private import gio.FileIF;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsv.SourceEncoding;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;


/** */
public class SourceFile : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceFile* gtkSourceFile;

	/** Get the main Gtk struct */
	public GtkSourceFile* getSourceFileStruct(bool transferOwnership = false)
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
	 * Since: 3.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_file_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceFile*) p, true);
	}

	/**
	 * Checks synchronously the file on disk, to know whether the file is externally
	 * modified, or has been deleted, and whether the file is read-only.
	 *
	 * #GtkSourceFile doesn't create a #GFileMonitor to track those properties, so
	 * this function needs to be called instead. Creating lots of #GFileMonitor's
	 * would take lots of resources.
	 *
	 * Since this function is synchronous, it is advised to call it only on local
	 * files. See gtk_source_file_is_local().
	 *
	 * Since: 3.18
	 */
	public void checkFileOnDisk()
	{
		gtk_source_file_check_file_on_disk(gtkSourceFile);
	}

	/**
	 * Returns: the compression type.
	 *
	 * Since: 3.14
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
	 *
	 * Since: 3.14
	 */
	public SourceEncoding getEncoding()
	{
		auto p = gtk_source_file_get_encoding(gtkSourceFile);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceEncoding)(cast(GtkSourceEncoding*) p);
	}

	/**
	 * Returns: the #GFile.
	 *
	 * Since: 3.14
	 */
	public FileIF getLocation()
	{
		auto p = gtk_source_file_get_location(gtkSourceFile);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) p);
	}

	/**
	 * Returns: the newline type.
	 *
	 * Since: 3.14
	 */
	public GtkSourceNewlineType getNewlineType()
	{
		return gtk_source_file_get_newline_type(gtkSourceFile);
	}

	/**
	 * Returns whether the file has been deleted. If the
	 * #GtkSourceFile:location is %NULL, returns %FALSE.
	 *
	 * To have an up-to-date value, you must first call
	 * gtk_source_file_check_file_on_disk().
	 *
	 * Returns: whether the file has been deleted.
	 *
	 * Since: 3.18
	 */
	public bool isDeleted()
	{
		return gtk_source_file_is_deleted(gtkSourceFile) != 0;
	}

	/**
	 * Returns whether the file is externally modified. If the
	 * #GtkSourceFile:location is %NULL, returns %FALSE.
	 *
	 * To have an up-to-date value, you must first call
	 * gtk_source_file_check_file_on_disk().
	 *
	 * Returns: whether the file is externally modified.
	 *
	 * Since: 3.18
	 */
	public bool isExternallyModified()
	{
		return gtk_source_file_is_externally_modified(gtkSourceFile) != 0;
	}

	/**
	 * Returns whether the file is local. If the #GtkSourceFile:location is %NULL,
	 * returns %FALSE.
	 *
	 * Returns: whether the file is local.
	 *
	 * Since: 3.18
	 */
	public bool isLocal()
	{
		return gtk_source_file_is_local(gtkSourceFile) != 0;
	}

	/**
	 * Returns whether the file is read-only. If the
	 * #GtkSourceFile:location is %NULL, returns %FALSE.
	 *
	 * To have an up-to-date value, you must first call
	 * gtk_source_file_check_file_on_disk().
	 *
	 * Returns: whether the file is read-only.
	 *
	 * Since: 3.18
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
	 *
	 * Since: 3.14
	 */
	public void setLocation(FileIF location)
	{
		gtk_source_file_set_location(gtkSourceFile, (location is null) ? null : location.getFileStruct());
	}

	/**
	 * Sets a #GtkSourceMountOperationFactory function that will be called when a
	 * #GMountOperation must be created. This is useful for creating a
	 * #GtkMountOperation with the parent #GtkWindow.
	 *
	 * If a mount operation factory isn't set, g_mount_operation_new() will be
	 * called.
	 *
	 * Params:
	 *     callback = a #GtkSourceMountOperationFactory to call when a
	 *         #GMountOperation is needed.
	 *     userData = the data to pass to the @callback function.
	 *     notify = function to call on @user_data when the @callback is no
	 *         longer needed, or %NULL.
	 *
	 * Since: 3.14
	 */
	public void setMountOperationFactory(GtkSourceMountOperationFactory callback, void* userData, GDestroyNotify notify)
	{
		gtk_source_file_set_mount_operation_factory(gtkSourceFile, callback, userData, notify);
	}
}
