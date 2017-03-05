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


module glgdk.GLVersion;

private import gtkglc.glgdk;
public  import gtkglc.glgdktypes;


/** */
public struct GLVersion
{

	/**
	 * Returns the GtkGLExt library binary age.
	 *
	 * Return: The binary age of the GtkGLExt library.
	 */
	public static int getBinaryAge()
	{
		return gdk_gl_get_binary_age();
	}

	/**
	 * Returns the GtkGLExt library interface age.
	 *
	 * Return: The interface age of the GtkGLExt library.
	 */
	public static int getInterfaceAge()
	{
		return gdk_gl_get_interface_age();
	}

	/**
	 * Returns the GtkGLExt library major version number.
	 *
	 * Return: The major version number of the GtkGLExt library.
	 */
	public static int getMajorVersion()
	{
		return gdk_gl_get_major_version();
	}

	/**
	 * Returns the GtkGLExt library micro version number.
	 *
	 * Return: The micro version number of the GtkGLExt library.
	 */
	public static int getMicroVersion()
	{
		return gdk_gl_get_micro_version();
	}

	/**
	 * Returns the GtkGLExt library minor version number.
	 *
	 * Return: The minor version number of the GtkGLExt library.
	 */
	public static int getMinorVersion()
	{
		return gdk_gl_get_minor_version();
	}
}
