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
 * inFile  = glib-Message-Logging.html
 * outPack = glib
 * outFile = MessageLog
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = MessageLog
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

module glib.MessageLog;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * Description
 * These functions provide support for logging error messages
 * or messages used for debugging.
 * There are several built-in levels of messages, defined in
 * GLogLevelFlags. These can be extended with user-defined levels.
 */
public class MessageLog
{
	
	/**
	 */
	
	/**
	 * Logs an error or debugging message.
	 * If the log level has been set as fatal, the abort()
	 * function is called to terminate the program.
	 * Params:
	 * logDomain = the log domain
	 * logLevel = the log level
	 * format = the message format. See the printf() documentation
	 * args = the parameters to insert into the format string
	 */
	public static void logv(string logDomain, GLogLevelFlags logLevel, string format, void* args)
	{
		// void g_logv (const gchar *log_domain,  GLogLevelFlags log_level,  const gchar *format,  va_list args);
		g_logv(Str.toStringz(logDomain), logLevel, Str.toStringz(format), args);
	}
	
	/**
	 * Sets the log handler for a domain and a set of log levels.
	 * To handle fatal and recursive messages the log_levels parameter
	 * must be combined with the G_LOG_FLAG_FATAL and G_LOG_FLAG_RECURSION
	 * bit flags.
	 * Note that since the G_LOG_LEVEL_ERROR log level is always fatal, if
	 * you want to set a handler for this log level you must combine it with
	 * G_LOG_FLAG_FATAL.
	 * $(DDOC_COMMENT example)
	 * $(DDOC_COMMENT example)
	 * $(DDOC_COMMENT example)
	 * Params:
	 * logDomain = the log domain, or NULL for the default ""
	 * application domain. [allow-none]
	 * logLevels = the log levels to apply the log handler for.
	 * To handle fatal and recursive messages as well, combine
	 * the log levels with the G_LOG_FLAG_FATAL and
	 * G_LOG_FLAG_RECURSION bit flags.
	 * logFunc = the log handler function
	 * userData = data passed to the log handler
	 * Returns: the id of the new handler
	 */
	public static uint logSetHandler(string logDomain, GLogLevelFlags logLevels, GLogFunc logFunc, void* userData)
	{
		// guint g_log_set_handler (const gchar *log_domain,  GLogLevelFlags log_levels,  GLogFunc log_func,  gpointer user_data);
		return g_log_set_handler(Str.toStringz(logDomain), logLevels, logFunc, userData);
	}
	
	/**
	 * Removes the log handler.
	 * Params:
	 * logDomain = the log domain
	 * handlerId = the id of the handler, which was returned
	 * in g_log_set_handler()
	 */
	public static void logRemoveHandler(string logDomain, uint handlerId)
	{
		// void g_log_remove_handler (const gchar *log_domain,  guint handler_id);
		g_log_remove_handler(Str.toStringz(logDomain), handlerId);
	}
	
	/**
	 * Sets the message levels which are always fatal, in any log domain.
	 * When a message with any of these levels is logged the program terminates.
	 * You can only set the levels defined by GLib to be fatal.
	 * G_LOG_LEVEL_ERROR is always fatal.
	 * You can also make some message levels fatal at runtime by setting
	 * the G_DEBUG environment variable (see
	 * Running GLib Applications).
	 * Params:
	 * fatalMask = the mask containing bits set for each level
	 * of error which is to be fatal
	 * Returns: the old fatal mask
	 */
	public static GLogLevelFlags logSetAlwaysFatal(GLogLevelFlags fatalMask)
	{
		// GLogLevelFlags g_log_set_always_fatal (GLogLevelFlags fatal_mask);
		return g_log_set_always_fatal(fatalMask);
	}
	
	/**
	 * Sets the log levels which are fatal in the given domain.
	 * G_LOG_LEVEL_ERROR is always fatal.
	 * Params:
	 * logDomain = the log domain
	 * fatalMask = the new fatal mask
	 * Returns: the old fatal mask for the log domain
	 */
	public static GLogLevelFlags logSetFatalMask(string logDomain, GLogLevelFlags fatalMask)
	{
		// GLogLevelFlags g_log_set_fatal_mask (const gchar *log_domain,  GLogLevelFlags fatal_mask);
		return g_log_set_fatal_mask(Str.toStringz(logDomain), fatalMask);
	}
	
	/**
	 * The default log handler set up by GLib; g_log_set_default_handler()
	 * allows to install an alternate default log handler.
	 * This is used if no log handler has been set for the particular log
	 * domain and log level combination. It outputs the message to stderr
	 * or stdout and if the log level is fatal it calls abort().
	 * The behavior of this log handler can be influenced by a number of
	 * Params:
	 * logDomain = the log domain of the message
	 * logLevel = the level of the message
	 * message = the message
	 * unusedData = data passed from g_log() which is unused
	 */
	public static void logDefaultHandler(string logDomain, GLogLevelFlags logLevel, string message, void* unusedData)
	{
		// void g_log_default_handler (const gchar *log_domain,  GLogLevelFlags log_level,  const gchar *message,  gpointer unused_data);
		g_log_default_handler(Str.toStringz(logDomain), logLevel, Str.toStringz(message), unusedData);
	}
	
	/**
	 * Installs a default log handler which is used if no
	 * log handler has been set for the particular log domain
	 * and log level combination. By default, GLib uses
	 * g_log_default_handler() as default log handler.
	 * Since 2.6
	 * Params:
	 * logFunc = the log handler function
	 * userData = data passed to the log handler
	 * Returns: the previous default log handler
	 */
	public static GLogFunc logSetDefaultHandler(GLogFunc logFunc, void* userData)
	{
		// GLogFunc g_log_set_default_handler (GLogFunc log_func,  gpointer user_data);
		return g_log_set_default_handler(logFunc, userData);
	}
}
