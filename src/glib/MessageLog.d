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


module glib.MessageLog;

private import glib.Str;
private import gtkc.glib;
public  import gtkc.glibtypes;


/** */
public struct MessageLog
{

	/**
	 * The default log handler set up by GLib; g_log_set_default_handler()
	 * allows to install an alternate default log handler.
	 * This is used if no log handler has been set for the particular log
	 * domain and log level combination. It outputs the message to stderr
	 * or stdout and if the log level is fatal it calls abort(). It automatically
	 * prints a new-line character after the message, so one does not need to be
	 * manually included in @message.
	 *
	 * The behavior of this log handler can be influenced by a number of
	 * environment variables:
	 *
	 * - `G_MESSAGES_PREFIXED`: A :-separated list of log levels for which
	 * messages should be prefixed by the program name and PID of the
	 * aplication.
	 *
	 * - `G_MESSAGES_DEBUG`: A space-separated list of log domains for
	 * which debug and informational messages are printed. By default
	 * these messages are not printed.
	 *
	 * stderr is used for levels %G_LOG_LEVEL_ERROR, %G_LOG_LEVEL_CRITICAL,
	 * %G_LOG_LEVEL_WARNING and %G_LOG_LEVEL_MESSAGE. stdout is used for
	 * the rest.
	 *
	 * Params:
	 *     logDomain = the log domain of the message, or %NULL for the
	 *         default "" application domain
	 *     logLevel = the level of the message
	 *     message = the message
	 *     unusedData = data passed from g_log() which is unused
	 */
	public static void logDefaultHandler(string logDomain, GLogLevelFlags logLevel, string message, void* unusedData)
	{
		g_log_default_handler(Str.toStringz(logDomain), logLevel, Str.toStringz(message), unusedData);
	}

	/**
	 * Removes the log handler.
	 *
	 * Params:
	 *     logDomain = the log domain
	 *     handlerId = the id of the handler, which was returned
	 *         in g_log_set_handler()
	 */
	public static void logRemoveHandler(string logDomain, uint handlerId)
	{
		g_log_remove_handler(Str.toStringz(logDomain), handlerId);
	}

	/**
	 * Sets the message levels which are always fatal, in any log domain.
	 * When a message with any of these levels is logged the program terminates.
	 * You can only set the levels defined by GLib to be fatal.
	 * %G_LOG_LEVEL_ERROR is always fatal.
	 *
	 * You can also make some message levels fatal at runtime by setting
	 * the `G_DEBUG` environment variable (see
	 * [Running GLib Applications](glib-running.html)).
	 *
	 * Params:
	 *     fatalMask = the mask containing bits set for each level
	 *         of error which is to be fatal
	 *
	 * Return: the old fatal mask
	 */
	public static GLogLevelFlags logSetAlwaysFatal(GLogLevelFlags fatalMask)
	{
		return g_log_set_always_fatal(fatalMask);
	}

	/**
	 * Installs a default log handler which is used if no
	 * log handler has been set for the particular log domain
	 * and log level combination. By default, GLib uses
	 * g_log_default_handler() as default log handler.
	 *
	 * Params:
	 *     logFunc = the log handler function
	 *     userData = data passed to the log handler
	 *
	 * Return: the previous default log handler
	 *
	 * Since: 2.6
	 */
	public static GLogFunc logSetDefaultHandler(GLogFunc logFunc, void* userData)
	{
		return g_log_set_default_handler(logFunc, userData);
	}

	/**
	 * Sets the log levels which are fatal in the given domain.
	 * %G_LOG_LEVEL_ERROR is always fatal.
	 *
	 * Params:
	 *     logDomain = the log domain
	 *     fatalMask = the new fatal mask
	 *
	 * Return: the old fatal mask for the log domain
	 */
	public static GLogLevelFlags logSetFatalMask(string logDomain, GLogLevelFlags fatalMask)
	{
		return g_log_set_fatal_mask(Str.toStringz(logDomain), fatalMask);
	}

	/**
	 * Sets the log handler for a domain and a set of log levels.
	 * To handle fatal and recursive messages the @log_levels parameter
	 * must be combined with the #G_LOG_FLAG_FATAL and #G_LOG_FLAG_RECURSION
	 * bit flags.
	 *
	 * Note that since the #G_LOG_LEVEL_ERROR log level is always fatal, if
	 * you want to set a handler for this log level you must combine it with
	 * #G_LOG_FLAG_FATAL.
	 *
	 * Here is an example for adding a log handler for all warning messages
	 * in the default domain:
	 * |[<!-- language="C" -->
	 * g_log_set_handler (NULL, G_LOG_LEVEL_WARNING | G_LOG_FLAG_FATAL
	 * | G_LOG_FLAG_RECURSION, my_log_handler, NULL);
	 * ]|
	 *
	 * This example adds a log handler for all critical messages from GTK+:
	 * |[<!-- language="C" -->
	 * g_log_set_handler ("Gtk", G_LOG_LEVEL_CRITICAL | G_LOG_FLAG_FATAL
	 * | G_LOG_FLAG_RECURSION, my_log_handler, NULL);
	 * ]|
	 *
	 * This example adds a log handler for all messages from GLib:
	 * |[<!-- language="C" -->
	 * g_log_set_handler ("GLib", G_LOG_LEVEL_MASK | G_LOG_FLAG_FATAL
	 * | G_LOG_FLAG_RECURSION, my_log_handler, NULL);
	 * ]|
	 *
	 * Params:
	 *     logDomain = the log domain, or %NULL for the default ""
	 *         application domain
	 *     logLevels = the log levels to apply the log handler for.
	 *         To handle fatal and recursive messages as well, combine
	 *         the log levels with the #G_LOG_FLAG_FATAL and
	 *         #G_LOG_FLAG_RECURSION bit flags.
	 *     logFunc = the log handler function
	 *     userData = data passed to the log handler
	 *
	 * Return: the id of the new handler
	 */
	public static uint logSetHandler(string logDomain, GLogLevelFlags logLevels, GLogFunc logFunc, void* userData)
	{
		return g_log_set_handler(Str.toStringz(logDomain), logLevels, logFunc, userData);
	}

	/**
	 * Like g_log_sets_handler(), but takes a destroy notify for the @user_data.
	 *
	 * Params:
	 *     logDomain = the log domain, or %NULL for the default ""
	 *         application domain
	 *     logLevels = the log levels to apply the log handler for.
	 *         To handle fatal and recursive messages as well, combine
	 *         the log levels with the #G_LOG_FLAG_FATAL and
	 *         #G_LOG_FLAG_RECURSION bit flags.
	 *     logFunc = the log handler function
	 *     userData = data passed to the log handler
	 *     destroy = destroy notify for @user_data, or %NULL
	 *
	 * Return: the id of the new handler
	 *
	 * Since: 2.46
	 */
	public static uint logSetHandlerFull(string logDomain, GLogLevelFlags logLevels, GLogFunc logFunc, void* userData, GDestroyNotify destroy)
	{
		return g_log_set_handler_full(Str.toStringz(logDomain), logLevels, logFunc, userData, destroy);
	}

	/**
	 * Logs an error or debugging message.
	 *
	 * If the log level has been set as fatal, the abort()
	 * function is called to terminate the program.
	 *
	 * If g_log_default_handler() is used as the log handler function, a new-line
	 * character will automatically be appended to @..., and need not be entered
	 * manually.
	 *
	 * Params:
	 *     logDomain = the log domain, or %NULL for the default ""
	 *         application domain
	 *     logLevel = the log level
	 *     format = the message format. See the printf() documentation
	 *     args = the parameters to insert into the format string
	 */
	public static void logv(string logDomain, GLogLevelFlags logLevel, string format, void* args)
	{
		g_logv(Str.toStringz(logDomain), logLevel, Str.toStringz(format), args);
	}
}
