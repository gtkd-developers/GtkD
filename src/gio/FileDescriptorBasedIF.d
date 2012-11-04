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
 * outFile = FileDescriptorBasedIF
 * strct   = GFileDescriptorBased
 * realStrct=
 * ctorStrct=
 * clss    = FileDescriptorBasedT
 * interf  = FileDescriptorBasedIF
 * class Code: No
 * interface Code: No
 * template for:
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

module gio.FileDescriptorBasedIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;






/**
 * Description
 * GFileDescriptorBased is implemented by streams (implementations of
 * GInputStream or GOutputStream) that are based on file descriptors.
 * Note that <gio/gfiledescriptorbased.h> belongs to
 * the UNIX-specific GIO interfaces, thus you have to use the
 * gio-unix-2.0.pc pkg-config file when using it.
 */
public interface FileDescriptorBasedIF
{
	
	
	public GFileDescriptorBased* getFileDescriptorBasedTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Gets the underlying file descriptor.
	 * Since 2.24
	 * Returns: The file descriptor
	 */
	public int getFd();
}
