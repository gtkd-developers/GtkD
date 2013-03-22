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
 * inFile  = glib-Warnings-and-Assertions.html
 * outPack = glib
 * outFile = Messages
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Messages
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_
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

module glib.Messages;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * These functions provide support for outputting messages.
 *
 * The g_return family of macros (g_return_if_fail(),
 * g_return_val_if_fail(), g_return_if_reached(), g_return_val_if_reached())
 * should only be used for programming errors, a typical use case is
 * checking for invalid parameters at the beginning of a public function.
 * They should not be used if you just mean "if (error) return", they
 * should only be used if you mean "if (bug in program) return".
 * The program behavior is generally considered undefined after one
 * of these checks fails. They are not intended for normal control
 * flow, only to give a perhaps-helpful warning before giving up.
 */
public class Messages
{
	
	/**
	 */
	
	/**
	 * Sets the print handler.
	 * Any messages passed to g_print() will be output via
	 * the new handler. The default handler simply outputs
	 * the message to stdout. By providing your own handler
	 * you can redirect the output, to a GTK+ widget or a
	 * log file for example.
	 * Params:
	 * func = the new print handler
	 * Returns: the old print handler
	 */
	public static GPrintFunc setPrintHandler(GPrintFunc func)
	{
		// GPrintFunc g_set_print_handler (GPrintFunc func);
		return g_set_print_handler(func);
	}
	
	/**
	 * Sets the handler for printing error messages.
	 * Any messages passed to g_printerr() will be output via
	 * the new handler. The default handler simply outputs the
	 * message to stderr. By providing your own handler you can
	 * redirect the output, to a GTK+ widget or a log file for
	 * example.
	 * Params:
	 * func = the new error message handler
	 * Returns: the old error message handler
	 */
	public static GPrintFunc setPrinterrHandler(GPrintFunc func)
	{
		// GPrintFunc g_set_printerr_handler (GPrintFunc func);
		return g_set_printerr_handler(func);
	}
	
	/**
	 * Prompts the user with
	 * [E]xit, [H]alt, show [S]tack trace or [P]roceed.
	 * This function is intended to be used for debugging use only.
	 * The following example shows how it can be used together with
	 * the g_log() functions.
	 * $(DDOC_COMMENT example)
	 * If [E]xit is selected, the application terminates with a call
	 * to _exit(0).
	 * If [S]tack trace is selected, g_on_error_stack_trace() is called.
	 * This invokes gdb, which attaches to the current
	 * process and shows a stack trace. The prompt is then shown again.
	 * If [P]roceed is selected, the function returns.
	 * This function may cause different actions on non-UNIX platforms.
	 * Params:
	 * prgName = the program name, needed by gdb
	 * for the [S]tack trace option. If prg_name is NULL, g_get_prgname()
	 * is called to get the program name (which will work correctly if
	 * gdk_init() or gtk_init() has been called)
	 */
	public static void onErrorQuery(string prgName)
	{
		// void g_on_error_query (const gchar *prg_name);
		g_on_error_query(Str.toStringz(prgName));
	}
	
	/**
	 * Invokes gdb, which attaches to the current
	 * process and shows a stack trace. Called by g_on_error_query()
	 * when the [S]tack trace option is selected. You can get the current
	 * process's "program name" with g_get_prgname(), assuming that you
	 * have called gtk_init() or gdk_init().
	 * This function may cause different actions on non-UNIX platforms.
	 * Params:
	 * prgName = the program name, needed by gdb
	 * for the [S]tack trace option.
	 */
	public static void onErrorStackTrace(string prgName)
	{
		// void g_on_error_stack_trace (const gchar *prg_name);
		g_on_error_stack_trace(Str.toStringz(prgName));
	}
}
