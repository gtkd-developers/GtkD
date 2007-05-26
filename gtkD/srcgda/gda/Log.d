/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = libgda-gda-log.html
 * outPack = gda
 * outFile = Log
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Log
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_log_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gda.Log;

private import gdac.gdatypes;

private import gdac.gda;






/**
 * Description
 */
public class Log
{
	
	/**
	 */
	
	/**
	 * Enables GDA logs.
	 */
	public static void enable()
	{
		// void gda_log_enable (void);
		gda_log_enable();
	}
	
	/**
	 * Disables GDA logs.
	 */
	public static void disable()
	{
		// void gda_log_disable (void);
		gda_log_disable();
	}
	
	/**
	 * Returns :
	 *  whether GDA logs are enabled (TRUE or FALSE).
	 */
	public static int isEnabled()
	{
		// gboolean gda_log_is_enabled (void);
		return gda_log_is_enabled();
	}
	
	/**
	 * Logs the given message in the GDA log file.
	 * format :
	 *  format string (see the printf(3) documentation).
	 * ... :
	 *  arguments to insert in the message.
	 */
	public static void message(char[] format, ... )
	{
		// void gda_log_message (const gchar *format,  ...);
		gda_log_message(Str.toStringz(format));
	}
	
	/**
	 * Logs the given error in the GDA log file.
	 * format :
	 *  format string (see the printf(3) documentation).
	 * ... :
	 *  arguments to insert in the error.
	 */
	public static void error(char[] format, ... )
	{
		// void gda_log_error (const gchar *format,  ...);
		gda_log_error(Str.toStringz(format));
	}
}
