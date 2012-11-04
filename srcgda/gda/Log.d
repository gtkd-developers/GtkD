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
 * inFile  = libgda-gda-log.html
 * outPack = gda
 * outFile = Log
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Log
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_log_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.Log;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * Description
 */
public class Log
{
	
	/*
	 * Logs the given message in the GDA log file.
	 */
	void message(string msg)
	{
		gda_log_message(Str.toStringz(msg));
	}
	
	/*
	 * Logs the given error in the GDA log file.
	 */
	void error(string err)
	{
		gda_log_message(Str.toStringz(err));
	}
	
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
	 * Returns: whether GDA logs are enabled (TRUE or FALSE).
	 */
	public static int isEnabled()
	{
		// gboolean gda_log_is_enabled (void);
		return gda_log_is_enabled();
	}
}
