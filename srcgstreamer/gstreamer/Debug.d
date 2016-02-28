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


module gstreamer.Debug;

private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.Bin;
private import gstreamer.DebugCategory;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;


/** */
public struct Debug
{

	/**
	 * Adds the logging function to the list of logging functions.
	 * Be sure to use #G_GNUC_NO_INSTRUMENT on that function, it is needed.
	 *
	 * Params:
	 *     func = the function to use
	 *     userData = user data
	 *     notify = called when @user_data is not used anymore
	 */
	public static void addLogFunction(GstLogFunction func, void* userData, GDestroyNotify notify)
	{
		gst_debug_add_log_function(func, userData, notify);
	}

	/** */
	public static string binToDotData(Bin bin, GstDebugGraphDetails details)
	{
		auto retStr = gst_debug_bin_to_dot_data((bin is null) ? null : bin.getBinStruct(), details);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public static void binToDotFile(Bin bin, GstDebugGraphDetails details, string fileName)
	{
		gst_debug_bin_to_dot_file((bin is null) ? null : bin.getBinStruct(), details, Str.toStringz(fileName));
	}

	/** */
	public static void binToDotFileWithTs(Bin bin, GstDebugGraphDetails details, string fileName)
	{
		gst_debug_bin_to_dot_file_with_ts((bin is null) ? null : bin.getBinStruct(), details, Str.toStringz(fileName));
	}

	/**
	 * Constructs a string that can be used for getting the desired color in color
	 * terminals.
	 * You need to free the string after use.
	 *
	 * Params:
	 *     colorinfo = the color info
	 *
	 * Return: a string containing the color
	 *     definition
	 */
	public static string constructTermColor(uint colorinfo)
	{
		auto retStr = gst_debug_construct_term_color(colorinfo);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Constructs an integer that can be used for getting the desired color in
	 * windows' terminals (cmd.exe). As there is no mean to underline, we simply
	 * ignore this attribute.
	 *
	 * This function returns 0 on non-windows machines.
	 *
	 * Params:
	 *     colorinfo = the color info
	 *
	 * Return: an integer containing the color definition
	 */
	public static int constructWinColor(uint colorinfo)
	{
		return gst_debug_construct_win_color(colorinfo);
	}

	/**
	 * Returns a snapshot of a all categories that are currently in use . This list
	 * may change anytime.
	 * The caller has to free the list after use.
	 *
	 * Return: the list of
	 *     debug categories
	 */
	public static ListSG getAllCategories()
	{
		auto p = gst_debug_get_all_categories();
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}

	/**
	 * Changes the coloring mode for debug output.
	 *
	 * Return: see @GstDebugColorMode for possible values.
	 *
	 * Since: 1.2
	 */
	public static GstDebugColorMode getColorMode()
	{
		return gst_debug_get_color_mode();
	}

	/**
	 * Returns the default threshold that is used for new categories.
	 *
	 * Return: the default threshold level
	 */
	public static GstDebugLevel getDefaultThreshold()
	{
		return gst_debug_get_default_threshold();
	}

	/**
	 * Checks if debugging output is activated.
	 *
	 * Return: %TRUE, if debugging is activated
	 */
	public static bool isActive()
	{
		return gst_debug_is_active() != 0;
	}

	/**
	 * Checks if the debugging output should be colored.
	 *
	 * Return: %TRUE, if the debug output should be colored.
	 */
	public static bool isColored()
	{
		return gst_debug_is_colored() != 0;
	}

	/**
	 * Get the string representation of a debugging level
	 *
	 * Params:
	 *     level = the level to get the name for
	 *
	 * Return: the name
	 */
	public static string levelGetName(GstDebugLevel level)
	{
		return Str.toString(gst_debug_level_get_name(level));
	}

	/**
	 * The default logging handler used by GStreamer. Logging functions get called
	 * whenever a macro like GST_DEBUG or similar is used. By default this function
	 * is setup to output the message and additional info to stderr (or the log file
	 * specified via the GST_DEBUG_FILE environment variable) as received via
	 * @user_data.
	 *
	 * You can add other handlers by using gst_debug_add_log_function().
	 * And you can remove this handler by calling
	 * gst_debug_remove_log_function(gst_debug_log_default);
	 *
	 * Params:
	 *     category = category to log
	 *     level = level of the message
	 *     file = the file that emitted the message, usually the __FILE__ identifier
	 *     funct = the function that emitted the message
	 *     line = the line from that the message was emitted, usually __LINE__
	 *     object = the object this message relates to,
	 *         or %NULL if none
	 *     message = the actual message
	 *     userData = the FILE* to log to
	 */
	public static void logDefault(DebugCategory category, GstDebugLevel level, string file, string funct, int line, ObjectG object, GstDebugMessage* message, void* userData)
	{
		gst_debug_log_default((category is null) ? null : category.getDebugCategoryStruct(), level, Str.toStringz(file), Str.toStringz(funct), line, (object is null) ? null : object.getObjectGStruct(), message, userData);
	}

	/**
	 * Logs the given message using the currently registered debugging handlers.
	 *
	 * Params:
	 *     category = category to log
	 *     level = level of the message is in
	 *     file = the file that emitted the message, usually the __FILE__ identifier
	 *     funct = the function that emitted the message
	 *     line = the line from that the message was emitted, usually __LINE__
	 *     object = the object this message relates to,
	 *         or %NULL if none
	 *     format = a printf style format string
	 *     args = optional arguments for the format
	 */
	public static void logValist(DebugCategory category, GstDebugLevel level, string file, string funct, int line, ObjectG object, string format, void* args)
	{
		gst_debug_log_valist((category is null) ? null : category.getDebugCategoryStruct(), level, Str.toStringz(file), Str.toStringz(funct), line, (object is null) ? null : object.getObjectGStruct(), Str.toStringz(format), args);
	}

	/**
	 * If GST_ENABLE_FUNC_INSTRUMENTATION is defined a stacktrace is available for
	 * gstreamer code, which can be printed with this function.
	 */
	public static void printStackTrace()
	{
		gst_debug_print_stack_trace();
	}

	/**
	 * Removes all registered instances of the given logging functions.
	 *
	 * Params:
	 *     func = the log function to remove
	 *
	 * Return: How many instances of the function were removed
	 */
	public static uint removeLogFunction(GstLogFunction func)
	{
		return gst_debug_remove_log_function(func);
	}

	/**
	 * Removes all registered instances of log functions with the given user data.
	 *
	 * Params:
	 *     data = user data of the log function to remove
	 *
	 * Return: How many instances of the function were removed
	 */
	public static uint removeLogFunctionByData(void* data)
	{
		return gst_debug_remove_log_function_by_data(data);
	}

	/**
	 * If activated, debugging messages are sent to the debugging
	 * handlers.
	 * It makes sense to deactivate it for speed issues.
	 * <note><para>This function is not threadsafe. It makes sense to only call it
	 * during initialization.</para></note>
	 *
	 * Params:
	 *     active = Whether to use debugging output or not
	 */
	public static void setActive(bool active)
	{
		gst_debug_set_active(active);
	}

	/**
	 * Changes the coloring mode for debug output.
	 *
	 * This function may be called before gst_init().
	 *
	 * Params:
	 *     mode = The coloring mode for debug output. See @GstDebugColorMode.
	 *
	 * Since: 1.2
	 */
	public static void setColorMode(GstDebugColorMode mode)
	{
		gst_debug_set_color_mode(mode);
	}

	/**
	 * Changes the coloring mode for debug output.
	 *
	 * This function may be called before gst_init().
	 *
	 * Params:
	 *     mode = The coloring mode for debug output. One of the following:
	 *         "on", "auto", "off", "disable", "unix".
	 *
	 * Since: 1.2
	 */
	public static void setColorModeFromString(string mode)
	{
		gst_debug_set_color_mode_from_string(Str.toStringz(mode));
	}

	/**
	 * Sets or unsets the use of coloured debugging output.
	 * Same as gst_debug_set_color_mode () with the argument being
	 * being GST_DEBUG_COLOR_MODE_ON or GST_DEBUG_COLOR_MODE_OFF.
	 *
	 * This function may be called before gst_init().
	 *
	 * Params:
	 *     colored = Whether to use colored output or not
	 */
	public static void setColored(bool colored)
	{
		gst_debug_set_colored(colored);
	}

	/**
	 * Sets the default threshold to the given level and updates all categories to
	 * use this threshold.
	 *
	 * This function may be called before gst_init().
	 *
	 * Params:
	 *     level = level to set
	 */
	public static void setDefaultThreshold(GstDebugLevel level)
	{
		gst_debug_set_default_threshold(level);
	}

	/**
	 * Sets all categories which match the given glob style pattern to the given
	 * level.
	 *
	 * Params:
	 *     name = name of the categories to set
	 *     level = level to set them to
	 */
	public static void setThresholdForName(string name, GstDebugLevel level)
	{
		gst_debug_set_threshold_for_name(Str.toStringz(name), level);
	}

	/**
	 * Sets the debug logging wanted in the same form as with the GST_DEBUG
	 * environment variable. You can use wildcards such as '*', but note that
	 * the order matters when you use wild cards, e.g. "foosrc:6,*src:3,*:2" sets
	 * everything to log level 2.
	 *
	 * Params:
	 *     list = comma-separated list of "category:level" pairs to be used
	 *         as debug logging levels
	 *     reset = %TRUE to clear all previously-set debug levels before setting
	 *         new thresholds
	 *         %FALSE if adding the threshold described by @list to the one already set.
	 *
	 * Since: 1.2
	 */
	public static void setThresholdFromString(string list, bool reset)
	{
		gst_debug_set_threshold_from_string(Str.toStringz(list), reset);
	}

	/**
	 * Resets all categories with the given name back to the default level.
	 *
	 * Params:
	 *     name = name of the categories to set
	 */
	public static void unsetThresholdForName(string name)
	{
		gst_debug_unset_threshold_for_name(Str.toStringz(name));
	}
}
