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
 * inFile  = GFileDescriptorBased.html
 * outPack = gio
 * outFile = FileDescriptorBasedT
 * strct   = GFileDescriptorBased
 * realStrct=
 * ctorStrct=
 * clss    = FileDescriptorBasedT
 * interf  = FileDescriptorBasedIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_file_descriptor_based_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.FileDescriptorBasedT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;






/**
 * GFileDescriptorBased is implemented by streams (implementations of
 * GInputStream or GOutputStream) that are based on file descriptors.
 *
 * Note that <gio/gfiledescriptorbased.h> belongs to
 * the UNIX-specific GIO interfaces, thus you have to use the
 * gio-unix-2.0.pc pkg-config file when using it.
 */
public template FileDescriptorBasedT(TStruct)
{
	
	/** the main Gtk struct */
	protected GFileDescriptorBased* gFileDescriptorBased;
	
	
	public GFileDescriptorBased* getFileDescriptorBasedTStruct()
	{
		return cast(GFileDescriptorBased*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Gets the underlying file descriptor.
	 * Since 2.24
	 * Returns: The file descriptor
	 */
	public int getFd()
	{
		// int g_file_descriptor_based_get_fd (GFileDescriptorBased *fd_based);
		return g_file_descriptor_based_get_fd(getFileDescriptorBasedTStruct());
	}
}
