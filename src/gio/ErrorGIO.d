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
 * inFile  = gio-GIOError.html
 * outPack = gio
 * outFile = ErrorGIO
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = ErrorGIO
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_io_error_
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

module gio.ErrorGIO;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;






/**
 * Contains helper functions for reporting errors to the user.
 */
public class ErrorGIO
{
	
	/**
	 */
	
	/**
	 * Converts errno.h error codes into GIO error codes.
	 * Params:
	 * errNo = Error number as defined in errno.h.
	 * Returns: GIOErrorEnum value for the given errno.h error number.
	 */
	public static GIOErrorEnum fromErrno(int errNo)
	{
		// GIOErrorEnum g_io_error_from_errno (gint err_no);
		return g_io_error_from_errno(errNo);
	}
	
	/**
	 * Converts some common error codes into GIO error codes. The
	 * fallback value G_IO_ERROR_FAILED is returned for error codes not
	 * handled.
	 * Since 2.26
	 * Params:
	 * errorCode = Windows error number.
	 * Returns: GIOErrorEnum value for the given error number.
	 */
	public static GIOErrorEnum fromWin32_Error(int errorCode)
	{
		// GIOErrorEnum g_io_error_from_win32_error (gint error_code);
		return g_io_error_from_win32_error(errorCode);
	}
}
