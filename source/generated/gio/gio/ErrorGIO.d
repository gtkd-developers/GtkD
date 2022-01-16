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


module gio.ErrorGIO;

private import gio.c.functions;
public  import gio.c.types;


/** */
public struct ErrorGIO
{

	/**
	 * Converts errno.h error codes into GIO error codes. The fallback
	 * value %G_IO_ERROR_FAILED is returned for error codes not currently
	 * handled (but note that future GLib releases may return a more
	 * specific value instead).
	 *
	 * As %errno is global and may be modified by intermediate function
	 * calls, you should save its value as soon as the call which sets it
	 *
	 * Params:
	 *     errNo = Error number as defined in errno.h.
	 *
	 * Returns: #GIOErrorEnum value for the given errno.h error number.
	 */
	public static GIOErrorEnum ioErrorFromErrno(int errNo)
	{
		return g_io_error_from_errno(errNo);
	}

	/**
	 * Gets the GIO Error Quark.
	 *
	 * Returns: a #GQuark.
	 */
	public static GQuark ioErrorQuark()
	{
		return g_io_error_quark();
	}
}
