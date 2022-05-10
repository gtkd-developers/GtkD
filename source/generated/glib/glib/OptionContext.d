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


module glib.OptionContext;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.OptionGroup;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * A `GOptionContext` struct defines which options
 * are accepted by the commandline option parser. The struct has only private
 * fields and should not be directly accessed.
 */
public class OptionContext
{
	/** the main Gtk struct */
	protected GOptionContext* gOptionContext;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GOptionContext* getOptionContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gOptionContext;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gOptionContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GOptionContext* gOptionContext, bool ownedRef = false)
	{
		this.gOptionContext = gOptionContext;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_option_context_free(gOptionContext);
	}


	/**
	 * Adds a #GOptionGroup to the @context, so that parsing with @context
	 * will recognize the options in the group. Note that this will take
	 * ownership of the @group and thus the @group should not be freed.
	 *
	 * Params:
	 *     group = the group to add
	 *
	 * Since: 2.6
	 */
	public void addGroup(OptionGroup group)
	{
		g_option_context_add_group(gOptionContext, (group is null) ? null : group.getOptionGroupStruct(true));
	}

	/**
	 * A convenience function which creates a main group if it doesn't
	 * exist, adds the @entries to it and sets the translation domain.
	 *
	 * Params:
	 *     entries = a %NULL-terminated array of #GOptionEntrys
	 *     translationDomain = a translation domain to use for translating
	 *         the `--help` output for the options in @entries
	 *         with gettext(), or %NULL
	 *
	 * Since: 2.6
	 */
	public void addMainEntries(GOptionEntry[] entries, string translationDomain)
	{
		g_option_context_add_main_entries(gOptionContext, entries.ptr, Str.toStringz(translationDomain));
	}

	/**
	 * Frees context and all the groups which have been
	 * added to it.
	 *
	 * Please note that parsed arguments need to be freed separately (see
	 * #GOptionEntry).
	 *
	 * Since: 2.6
	 */
	public void free()
	{
		g_option_context_free(gOptionContext);
		ownedRef = false;
	}

	/**
	 * Returns the description. See g_option_context_set_description().
	 *
	 * Returns: the description
	 *
	 * Since: 2.12
	 */
	public string getDescription()
	{
		return Str.toString(g_option_context_get_description(gOptionContext));
	}

	/**
	 * Returns a formatted, translated help text for the given context.
	 * To obtain the text produced by `--help`, call
	 * `g_option_context_get_help (context, TRUE, NULL)`.
	 * To obtain the text produced by `--help-all`, call
	 * `g_option_context_get_help (context, FALSE, NULL)`.
	 * To obtain the help text for an option group, call
	 * `g_option_context_get_help (context, FALSE, group)`.
	 *
	 * Params:
	 *     mainHelp = if %TRUE, only include the main group
	 *     group = the #GOptionGroup to create help for, or %NULL
	 *
	 * Returns: A newly allocated string containing the help text
	 *
	 * Since: 2.14
	 */
	public string getHelp(bool mainHelp, OptionGroup group)
	{
		auto retStr = g_option_context_get_help(gOptionContext, mainHelp, (group is null) ? null : group.getOptionGroupStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns whether automatic `--help` generation
	 * is turned on for @context. See g_option_context_set_help_enabled().
	 *
	 * Returns: %TRUE if automatic help generation is turned on.
	 *
	 * Since: 2.6
	 */
	public bool getHelpEnabled()
	{
		return g_option_context_get_help_enabled(gOptionContext) != 0;
	}

	/**
	 * Returns whether unknown options are ignored or not. See
	 * g_option_context_set_ignore_unknown_options().
	 *
	 * Returns: %TRUE if unknown options are ignored.
	 *
	 * Since: 2.6
	 */
	public bool getIgnoreUnknownOptions()
	{
		return g_option_context_get_ignore_unknown_options(gOptionContext) != 0;
	}

	/**
	 * Returns a pointer to the main group of @context.
	 *
	 * Returns: the main group of @context, or %NULL if
	 *     @context doesn't have a main group. Note that group belongs to
	 *     @context and should not be modified or freed.
	 *
	 * Since: 2.6
	 */
	public OptionGroup getMainGroup()
	{
		auto __p = g_option_context_get_main_group(gOptionContext);

		if(__p is null)
		{
			return null;
		}

		return new OptionGroup(cast(GOptionGroup*) __p);
	}

	/**
	 * Returns whether strict POSIX code is enabled.
	 *
	 * See g_option_context_set_strict_posix() for more information.
	 *
	 * Returns: %TRUE if strict POSIX is enabled, %FALSE otherwise.
	 *
	 * Since: 2.44
	 */
	public bool getStrictPosix()
	{
		return g_option_context_get_strict_posix(gOptionContext) != 0;
	}

	/**
	 * Returns the summary. See g_option_context_set_summary().
	 *
	 * Returns: the summary
	 *
	 * Since: 2.12
	 */
	public string getSummary()
	{
		return Str.toString(g_option_context_get_summary(gOptionContext));
	}

	/**
	 * Parses the command line arguments, recognizing options
	 * which have been added to @context. A side-effect of
	 * calling this function is that g_set_prgname() will be
	 * called.
	 *
	 * If the parsing is successful, any parsed arguments are
	 * removed from the array and @argc and @argv are updated
	 * accordingly. A '--' option is stripped from @argv
	 * unless there are unparsed options before and after it,
	 * or some of the options after it start with '-'. In case
	 * of an error, @argc and @argv are left unmodified.
	 *
	 * If automatic `--help` support is enabled
	 * (see g_option_context_set_help_enabled()), and the
	 * @argv array contains one of the recognized help options,
	 * this function will produce help output to stdout and
	 * call `exit (0)`.
	 *
	 * Note that function depends on the [current locale][setlocale] for
	 * automatic character set conversion of string and filename
	 * arguments.
	 *
	 * Params:
	 *     argv = a pointer to the array of command line arguments
	 *
	 * Returns: %TRUE if the parsing was successful,
	 *     %FALSE if an error occurred
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool parse(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);
		GError* err = null;

		auto __p = g_option_context_parse(gOptionContext, &argc, &outargv, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		argv = Str.toStringArray(outargv, argc);

		return __p;
	}

	/**
	 * Parses the command line arguments.
	 *
	 * This function is similar to g_option_context_parse() except that it
	 * respects the normal memory rules when dealing with a strv instead of
	 * assuming that the passed-in array is the argv of the main function.
	 *
	 * In particular, strings that are removed from the arguments list will
	 * be freed using g_free().
	 *
	 * On Windows, the strings are expected to be in UTF-8.  This is in
	 * contrast to g_option_context_parse() which expects them to be in the
	 * system codepage, which is how they are passed as @argv to main().
	 * See g_win32_get_command_line() for a solution.
	 *
	 * This function is useful if you are trying to use #GOptionContext with
	 * #GApplication.
	 *
	 * Params:
	 *     arguments = a pointer
	 *         to the command line arguments (which must be in UTF-8 on Windows).
	 *         Starting with GLib 2.62, @arguments can be %NULL, which matches
	 *         g_option_context_parse().
	 *
	 * Returns: %TRUE if the parsing was successful,
	 *     %FALSE if an error occurred
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public bool parseStrv(ref string[] arguments)
	{
		char** outarguments = Str.toStringzArray(arguments);
		GError* err = null;

		auto __p = g_option_context_parse_strv(gOptionContext, &outarguments, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		arguments = Str.toStringArray(outarguments);

		return __p;
	}

	/**
	 * Adds a string to be displayed in `--help` output after the list
	 * of options. This text often includes a bug reporting address.
	 *
	 * Note that the summary is translated (see
	 * g_option_context_set_translate_func()).
	 *
	 * Params:
	 *     description = a string to be shown in `--help` output
	 *         after the list of options, or %NULL
	 *
	 * Since: 2.12
	 */
	public void setDescription(string description)
	{
		g_option_context_set_description(gOptionContext, Str.toStringz(description));
	}

	/**
	 * Enables or disables automatic generation of `--help` output.
	 * By default, g_option_context_parse() recognizes `--help`, `-h`,
	 * `-?`, `--help-all` and `--help-groupname` and creates suitable
	 * output to stdout.
	 *
	 * Params:
	 *     helpEnabled = %TRUE to enable `--help`, %FALSE to disable it
	 *
	 * Since: 2.6
	 */
	public void setHelpEnabled(bool helpEnabled)
	{
		g_option_context_set_help_enabled(gOptionContext, helpEnabled);
	}

	/**
	 * Sets whether to ignore unknown options or not. If an argument is
	 * ignored, it is left in the @argv array after parsing. By default,
	 * g_option_context_parse() treats unknown options as error.
	 *
	 * This setting does not affect non-option arguments (i.e. arguments
	 * which don't start with a dash). But note that GOption cannot reliably
	 * determine whether a non-option belongs to a preceding unknown option.
	 *
	 * Params:
	 *     ignoreUnknown = %TRUE to ignore unknown options, %FALSE to produce
	 *         an error when unknown options are met
	 *
	 * Since: 2.6
	 */
	public void setIgnoreUnknownOptions(bool ignoreUnknown)
	{
		g_option_context_set_ignore_unknown_options(gOptionContext, ignoreUnknown);
	}

	/**
	 * Sets a #GOptionGroup as main group of the @context.
	 * This has the same effect as calling g_option_context_add_group(),
	 * the only difference is that the options in the main group are
	 * treated differently when generating `--help` output.
	 *
	 * Params:
	 *     group = the group to set as main group
	 *
	 * Since: 2.6
	 */
	public void setMainGroup(OptionGroup group)
	{
		g_option_context_set_main_group(gOptionContext, (group is null) ? null : group.getOptionGroupStruct(true));
	}

	/**
	 * Sets strict POSIX mode.
	 *
	 * By default, this mode is disabled.
	 *
	 * In strict POSIX mode, the first non-argument parameter encountered
	 * (eg: filename) terminates argument processing.  Remaining arguments
	 * are treated as non-options and are not attempted to be parsed.
	 *
	 * If strict POSIX mode is disabled then parsing is done in the GNU way
	 * where option arguments can be freely mixed with non-options.
	 *
	 * As an example, consider "ls foo -l".  With GNU style parsing, this
	 * will list "foo" in long mode.  In strict POSIX style, this will list
	 * the files named "foo" and "-l".
	 *
	 * It may be useful to force strict POSIX mode when creating "verb
	 * style" command line tools.  For example, the "gsettings" command line
	 * tool supports the global option "--schemadir" as well as many
	 * subcommands ("get", "set", etc.) which each have their own set of
	 * arguments.  Using strict POSIX mode will allow parsing the global
	 * options up to the verb name while leaving the remaining options to be
	 * parsed by the relevant subcommand (which can be determined by
	 * examining the verb name, which should be present in argv[1] after
	 * parsing).
	 *
	 * Params:
	 *     strictPosix = the new value
	 *
	 * Since: 2.44
	 */
	public void setStrictPosix(bool strictPosix)
	{
		g_option_context_set_strict_posix(gOptionContext, strictPosix);
	}

	/**
	 * Adds a string to be displayed in `--help` output before the list
	 * of options. This is typically a summary of the program functionality.
	 *
	 * Note that the summary is translated (see
	 * g_option_context_set_translate_func() and
	 * g_option_context_set_translation_domain()).
	 *
	 * Params:
	 *     summary = a string to be shown in `--help` output
	 *         before the list of options, or %NULL
	 *
	 * Since: 2.12
	 */
	public void setSummary(string summary)
	{
		g_option_context_set_summary(gOptionContext, Str.toStringz(summary));
	}

	/**
	 * Sets the function which is used to translate the contexts
	 * user-visible strings, for `--help` output. If @func is %NULL,
	 * strings are not translated.
	 *
	 * Note that option groups have their own translation functions,
	 * this function only affects the @parameter_string (see g_option_context_new()),
	 * the summary (see g_option_context_set_summary()) and the description
	 * (see g_option_context_set_description()).
	 *
	 * If you are using gettext(), you only need to set the translation
	 * domain, see g_option_context_set_translation_domain().
	 *
	 * Params:
	 *     func = the #GTranslateFunc, or %NULL
	 *     data = user data to pass to @func, or %NULL
	 *     destroyNotify = a function which gets called to free @data, or %NULL
	 *
	 * Since: 2.12
	 */
	public void setTranslateFunc(GTranslateFunc func, void* data, GDestroyNotify destroyNotify)
	{
		g_option_context_set_translate_func(gOptionContext, func, data, destroyNotify);
	}

	/**
	 * A convenience function to use gettext() for translating
	 * user-visible strings.
	 *
	 * Params:
	 *     domain = the domain to use
	 *
	 * Since: 2.12
	 */
	public void setTranslationDomain(string domain)
	{
		g_option_context_set_translation_domain(gOptionContext, Str.toStringz(domain));
	}

	/**
	 * Creates a new option context.
	 *
	 * The @parameter_string can serve multiple purposes. It can be used
	 * to add descriptions for "rest" arguments, which are not parsed by
	 * the #GOptionContext, typically something like "FILES" or
	 * "FILE1 FILE2...". If you are using %G_OPTION_REMAINING for
	 * collecting "rest" arguments, GLib handles this automatically by
	 * using the @arg_description of the corresponding #GOptionEntry in
	 * the usage summary.
	 *
	 * Another usage is to give a short summary of the program
	 * functionality, like " - frob the strings", which will be displayed
	 * in the same line as the usage. For a longer description of the
	 * program functionality that should be displayed as a paragraph
	 * below the usage line, use g_option_context_set_summary().
	 *
	 * Note that the @parameter_string is translated using the
	 * function set with g_option_context_set_translate_func(), so
	 * it should normally be passed untranslated.
	 *
	 * Params:
	 *     parameterString = a string which is displayed in
	 *         the first line of `--help` output, after the usage summary
	 *         `programname [OPTION...]`
	 *
	 * Returns: a newly created #GOptionContext, which must be
	 *     freed with g_option_context_free() after use.
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string parameterString)
	{
		auto __p = g_option_context_new(Str.toStringz(parameterString));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GOptionContext*) __p);
	}

	/** */
	public static GQuark optionErrorQuark()
	{
		return g_option_error_quark();
	}
}
