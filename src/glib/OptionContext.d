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
 * outFile = OptionContext
 * strct   = GOptionContext
 * realStrct=
 * clss    = OptionContext
 * extend  = 
 * prefixes:
 * 	- g_option_context_
 * omit structs:
 * omit prefixes:
 * 	- g_option_group_
 * omit code:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.OptionGroup
 * structWrap:
 * 	- GOptionGroup* -> OptionGroup
 * local aliases:
 */

module glib.OptionContext;

private import glib.typedefs;

private import lib.glib;

private import glib.ErrorG;private import glib.OptionGroup;
/**
 * Description
 * The GOption commandline parser is intended to be a simpler replacement for the
 * popt library. It supports short and long commandline options, as shown in the
 * following example:
 * testtreemodel -r 1 --max-size 20 --rand --display=:1.0 -vb -- file1 file2
 * The example demonstrates a number of features of the GOption commandline parser
 *  Options can be single letters, prefixed by a single dash. Multiple
 *  short options can be grouped behind a single dash.
 *  Long options are prefixed by two consecutive dashes.
 *  Options can have an extra argument, which can be a number, a string or a filename.
 *  For long options, the extra argument can be appended with an equals sign after the
 *  option name.
 *  Non-option arguments are returned to the application as rest arguments.
 *  An argument consisting solely of two dashes turns off further parsing, any remaining
 *  arguments (even those starting with a dash) are returned to the application as rest
 *  arguments.
 * Another important feature of GOption is that it can automatically generate nicely
 * formatted help output. Unless it is explicitly turned off with
 * g_option_context_set_help_enabled(), GOption will recognize the
 * --help, -?, --help-all
 * and --help-groupname options
 * (where groupname is the name of a GOptionGroup)
 * and write a text similar to the one shown in the following example to stdout.
 * Usage:
 *  testtreemodel [OPTION...] - test tree model performance
 * Help Options:
 *  -?, --help Show help options
 *  --help-all Show all help options
 *  --help-gtk Show GTK+ Options
 * Application Options:
 *  -r, --repeats=N Average over N repetitions
 *  -m, --max-size=M Test up to 2^M items
 *  --display=DISPLAY X display to use
 *  -v, --verbose Be verbose
 *  -b, --beep Beep when done
 *  --rand Randomize the data
 * GOption groups options in GOptionGroups, which makes it easy to
 * incorporate options from multiple sources. The intended use for this is
 * to let applications collect option groups from the libraries it uses,
 * add them to their GOptionContext, and parse all options by a single call
 * to g_option_context_parse(). See gtk_get_option_group() for an example.
 * If an option is declared to be of type string or filename, GOption takes
 * care of converting it to the right encoding; strings are returned in UTF-8,
 * filenames are returned in the GLib filename encoding.
 * Here is a complete example of setting up GOption to parse the example
 * commandline above and produce the example help output.
 * static gint repeats = 2;
 * static gint max_size = 8;
 * static gboolean verbose = FALSE;
 * static gboolean beep = FALSE;
 * static gboolean rand = FALSE;
 * static GOptionEntry entries[] =
 * {
	 *  { "repeats", 'r', 0, G_OPTION_ARG_INT, repeats, "Average over N repetitions", "N" },
	 *  { "max-size", 'm', 0, G_OPTION_ARG_INT, max_size, "Test up to 2^M items", "M" },
	 *  { "verbose", 'v', 0, G_OPTION_ARG_NONE, verbose, "Be verbose", NULL },
	 *  { "beep", 'b', 0, G_OPTION_ARG_NONE, beep, "Beep when done", NULL },
	 *  { "rand", 0, 0, G_OPTION_ARG_NONE, rand, "Randomize the data", NULL },
 *  { NULL }
 * };
 * int
 * main (int argc, char *argv[])
 * {
	 *  GError *error = NULL;
	 *  context = g_option_context_new ("- test tree model performance");
	 *  g_option_context_add_main_entries (context, entries, GETTEXT_PACKAGE);
	 *  g_option_context_add_group (context, gtk_get_option_group (TRUE));
	 *  g_option_context_parse (context, argc, argv, error);
	 *  /+* ... +/
 * }
 */
public class OptionContext
{
	
	/** the main Gtk struct */
	protected GOptionContext* gOptionContext;
	
	
	public GOptionContext* getOptionContextStruct()
	{
		return gOptionContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gOptionContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GOptionContext* gOptionContext)
	{
		this.gOptionContext = gOptionContext;
	}
	
	/**
	 */
	
	
	
	
	
	/**
	 * Creates a new option context.
	 * parameter_string:
	 *  a string which is displayed in
	 *  the first line of --help output, after
	 *  programname [OPTION...]
	 * Returns:
	 *  a newly created GOptionContext, which must be
	 *  freed with g_option_context_free() after use.
	 * Since 2.6
	 */
	public this (char[] parameterString)
	{
		// GOptionContext* g_option_context_new (const gchar *parameter_string);
		this(cast(GOptionContext*)g_option_context_new(std.string.toStringz(parameterString)) );
	}
	
	/**
	 * Frees context and all the groups which have been
	 * added to it.
	 * context:
	 *  a GOptionContext
	 * Since 2.6
	 */
	public void free()
	{
		// void g_option_context_free (GOptionContext *context);
		g_option_context_free(gOptionContext);
	}
	
	/**
	 * Parses the command line arguments, recognizing options
	 * which have been added to context. A side-effect of
	 * calling this function is that g_set_prgname() will be
	 * called.
	 * If the parsing is successful, any parsed arguments are
	 * removed from the array and argc and argv are updated
	 * accordingly. A '--' option is stripped from argv
	 * unless there are unparsed options before and after it,
	 * or some of the options after it start with '-'. In case
	 * of an error, argc and argv are left unmodified.
	 * If automatic --help support is enabled
	 * (see g_option_context_set_help_enabled()), and the
	 * argv array contains one of the recognized help options,
	 * this function will produce help output to stdout and
	 * call exit (0).
	 * context:
	 *  a GOptionContext
	 * argc:
	 *  a pointer to the number of command line arguments.
	 * argv:
	 *  a pointer to the array of command line arguments.
	 * error:
	 *  a return location for errors
	 * Returns:
	 *  TRUE if the parsing was successful,
	 *  FALSE if an error occurred
	 * Since 2.6
	 */
	public int parse(int* argc, char*** argv, GError** error)
	{
		// gboolean g_option_context_parse (GOptionContext *context,  gint *argc,  gchar ***argv,  GError **error);
		return g_option_context_parse(gOptionContext, argc, argv, error);
	}
	
	/**
	 * Enables or disables automatic generation of --help
	 * output. By default, g_option_context_parse() recognizes
	 * --help, -?, --help-all
	 * and --help-groupname and creates
	 * suitable output to stdout.
	 * context:
	 *  a GOptionContext
	 * help_enabled:
	 *  TRUE to enable --help, FALSE to disable it
	 * Since 2.6
	 */
	public void setHelpEnabled(int helpEnabled)
	{
		// void g_option_context_set_help_enabled  (GOptionContext *context,  gboolean help_enabled);
		g_option_context_set_help_enabled(gOptionContext, helpEnabled);
	}
	
	/**
	 * Returns whether automatic --help generation
	 * is turned on for context. See g_option_context_set_help_enabled().
	 * context:
	 *  a GOptionContext
	 * Returns:
	 *  TRUE if automatic help generation is turned on.
	 * Since 2.6
	 */
	public int getHelpEnabled()
	{
		// gboolean g_option_context_get_help_enabled  (GOptionContext *context);
		return g_option_context_get_help_enabled(gOptionContext);
	}
	
	/**
	 * Sets whether to ignore unknown options or not. If an argument is
	 * ignored, it is left in the argv array after parsing. By default,
	 * g_option_context_parse() treats unknown options as error.
	 * This setting does not affect non-option arguments (i.e. arguments
	 * which don't start with a dash). But note that GOption cannot reliably
	 * determine whether a non-option belongs to a preceding unknown option.
	 * context:
	 *  a GOptionContext
	 * ignore_unknown:
	 *  TRUE to ignore unknown options, FALSE to produce
	 *  an error when unknown options are met
	 * Since 2.6
	 */
	public void setIgnoreUnknownOptions(int ignoreUnknown)
	{
		// void g_option_context_set_ignore_unknown_options  (GOptionContext *context,  gboolean ignore_unknown);
		g_option_context_set_ignore_unknown_options(gOptionContext, ignoreUnknown);
	}
	
	/**
	 * Returns whether unknown options are ignored or not. See
	 * g_option_context_set_ignore_unknown_options().
	 * context:
	 *  a GOptionContext
	 * Returns:
	 *  TRUE if unknown options are ignored.
	 * Since 2.6
	 */
	public int getIgnoreUnknownOptions()
	{
		// gboolean g_option_context_get_ignore_unknown_options  (GOptionContext *context);
		return g_option_context_get_ignore_unknown_options(gOptionContext);
	}
	
	
	
	
	
	/**
	 * A convenience function which creates a main group if it doesn't
	 * exist, adds the entries to it and sets the translation domain.
	 * context:
	 *  a GOptionContext
	 * entries:
	 *  a NULL-terminated array of GOptionEntrys
	 * translation_domain:
	 *  a translation domain to use for translating
	 *  the --help output for the options in entries
	 *  with gettext(), or NULL
	 * Since 2.6
	 */
	public void addMainEntries(GOptionEntry* entries, char[] translationDomain)
	{
		// void g_option_context_add_main_entries  (GOptionContext *context,  const GOptionEntry *entries,  const gchar *translation_domain);
		g_option_context_add_main_entries(gOptionContext, entries, std.string.toStringz(translationDomain));
	}
	
	
	/**
	 * Adds a GOptionGroup to the context, so that parsing with context
	 * will recognize the options in the group. Note that the group will
	 * be freed together with the context when g_option_context_free() is
	 * called, so you must not free the group yourself after adding it
	 * to a context.
	 * context:
	 *  a GOptionContext
	 * group:
	 *  the group to add
	 * Since 2.6
	 */
	public void addGroup(OptionGroup group)
	{
		// void g_option_context_add_group (GOptionContext *context,  GOptionGroup *group);
		g_option_context_add_group(gOptionContext, group.getOptionGroupStruct());
	}
	
	/**
	 * Sets a GOptionGroup as main group of the context.
	 * This has the same effect as calling g_option_context_add_group(),
	 * the only difference is that the options in the main group are
	 * treated differently when generating --help output.
	 * context:
	 *  a GOptionContext
	 * group:
	 *  the group to set as main group
	 * Since 2.6
	 */
	public void setMainGroup(OptionGroup group)
	{
		// void g_option_context_set_main_group (GOptionContext *context,  GOptionGroup *group);
		g_option_context_set_main_group(gOptionContext, group.getOptionGroupStruct());
	}
	
	/**
	 * Returns a pointer to the main group of context.
	 * context:
	 *  a GOptionContext
	 * Returns:
	 *  the main group of context, or NULL if context doesn't
	 *  have a main group. Note that group belongs to context and should
	 *  not be modified or freed.
	 * Since 2.6
	 */
	public OptionGroup getMainGroup()
	{
		// GOptionGroup* g_option_context_get_main_group  (GOptionContext *context);
		return new OptionGroup( g_option_context_get_main_group(gOptionContext) );
	}
	
	
	
	
	
	
	
	
	
	
}
