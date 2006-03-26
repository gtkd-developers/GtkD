/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = Messages
 * strct   = 
 * realStrct=
 * clss    = Messages
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module glib.Messages;

private import glib.typedefs;

private import lib.glib;

private import glib.Str;

/**
 * Description
 * These functions provide support for outputting messages.
 */
public class Messages
{
	
	/**
	 */
	
	/**
	 * Outputs a formatted message via the print handler.
	 * The default print handler simply outputs the message to stdout.
	 * g_print() should not be used from within libraries for debugging messages,
	 * since it may be redirected by applications to special purpose message
	 * windows or even files.
	 * Instead, libraries should use g_log(), or the convenience functions
	 * g_message(), g_warning() and g_error().
	 * format:
	 * the message format. See the printf()
	 * documentation.
	 * ...:
	 * the parameters to insert into the format string.
	 */
	public static void print(char[] format, ... )
	{
		// void g_print (const gchar *format,  ...);
		g_print(Str.toStringz(format));
	}
	
	/**
	 * Sets the print handler.
	 * Any messages passed to g_print() will be output via the new handler.
	 * The default handler simply outputs the message to stdout.
	 * By providing your own handler you can redirect the output, to a GTK+
	 * widget or a log file for example.
	 * func:
	 * the new print handler.
	 * Returns:
	 * the old print handler.
	 */
	public static GPrintFunc setPrintHandler(GPrintFunc func)
	{
		// GPrintFunc g_set_print_handler (GPrintFunc func);
		return g_set_print_handler(func);
	}
	
	
	/**
	 * Outputs a formatted message via the error message handler.
	 * The default handler simply outputs the message to stderr.
	 * g_printerr() should not be used from within libraries. Instead g_log() should
	 * be used, or the convenience functions g_message(), g_warning() and g_error().
	 * format:
	 * the message format. See the printf()
	 * documentation.
	 * ...:
	 * the parameters to insert into the format string.
	 */
	public static void printerr(char[] format, ... )
	{
		// void g_printerr (const gchar *format,  ...);
		g_printerr(Str.toStringz(format));
	}
	
	/**
	 * Sets the handler for printing error messages.
	 * Any messages passed to g_printerr() will be output via the new handler.
	 * The default handler simply outputs the message to stderr.
	 * By providing your own handler you can redirect the output, to a GTK+
	 * widget or a log file for example.
	 * func:
	 * the new error message handler.
	 * Returns:
	 * the old error message handler.
	 */
	public static GPrintFunc setPrinterrHandler(GPrintFunc func)
	{
		// GPrintFunc g_set_printerr_handler (GPrintFunc func);
		return g_set_printerr_handler(func);
	}
	
	
	
	
	
	
	
	/**
	 * Prompts the user with [E]xit, [H]alt, show [S]tack trace or [P]roceed.
	 * This function is intended to be used for debugging use only. The following
	 * example shows how it can be used together with the g_log() functions.
	 * #include <glib.h>
	 * static void
	 * log_handler (const gchar *log_domain,
	 * 	 GLogLevelFlags log_level,
	 * 	 const gchar *message,
	 * 	 gpointer user_data)
	 * {
		 *  g_log_default_handler (log_domain, log_level, message, user_data);
		 *  g_on_error_query (MY_PROGRAM_NAME);
	 * }
	 * int main (int argc, char *argv[])
	 * {
		 *  g_log_set_handler (MY_LOG_DOMAIN,
		 * 		 G_LOG_LEVEL_WARNING |
		 *  G_LOG_LEVEL_ERROR |
		 *  G_LOG_LEVEL_CRITICAL,
		 * 		 log_handler,
		 * 		 NULL);
		 *  /+* ... +/
		 * If [E]xit is selected, the application terminates with a call to
		 * _exit(0).
		 * If [H]alt is selected, the application enters an infinite loop.
		 * The infinite loop can only be stopped by killing the application,
		 * or by setting glib_on_error_halt to FALSE (possibly via a debugger).
		 * If [S]tack trace is selected, g_on_error_stack_trace() is called. This
		 * invokes gdb, which attaches to the current process and shows a stack trace.
		 * The prompt is then shown again.
		 * If [P]roceed is selected, the function returns.
		 * This function may cause different actions on non-UNIX platforms.
		 * prg_name:
		 * the program name, needed by gdb for the [S]tack trace option.
		 * If prg_name is NULL, g_get_prgname() is called to get the program name
		 * (which will work correctly if gdk_init() or gtk_init() has been called).
		 */
		public static void onErrorQuery(char[] prgName)
		{
			// void g_on_error_query (const gchar *prg_name);
			g_on_error_query(Str.toStringz(prgName));
		}
		
		/**
		 * Invokes gdb, which attaches to the current process and shows a stack trace.
		 * Called by g_on_error_query() when the [S]tack trace option is selected.
		 * This function may cause different actions on non-UNIX platforms.
		 * prg_name:
		 * the program name, needed by gdb for the [S]tack trace option.
		 * If prg_name is NULL, g_get_prgname() is called to get the program name
		 * (which will work correctly if gdk_init() or gtk_init() has been called).
		 */
		public static void onErrorStackTrace(char[] prgName)
		{
			// void g_on_error_stack_trace (const gchar *prg_name);
			g_on_error_stack_trace(Str.toStringz(prgName));
		}
		
}
