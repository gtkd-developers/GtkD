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
 * inFile  = glib-Commandline-option-parser.html
 * outPack = glib
 * outFile = OptionContext
 * strct   = GOptionContext
 * realStrct=
 * ctorStrct=
 * clss    = OptionContext
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_option_context_
 * omit structs:
 * omit prefixes:
 * 	- g_option_group_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.OptionGroup
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GOptionGroup* -> OptionGroup
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.OptionContext;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.OptionGroup;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * The GOption commandline parser is intended to be a simpler replacement
 * for the popt library. It supports short and long commandline options,
 * as shown in the following example:
 * testtreemodel -r 1 --max-size 20 --rand --display=:1.0 -vb -- file1 file2
 * The example demonstrates a number of features of the GOption
 * commandline parser
 *  Options can be single letters, prefixed by a single dash. Multiple
 *  short options can be grouped behind a single dash.
 *  Long options are prefixed by two consecutive dashes.
 *  Options can have an extra argument, which can be a number, a string or
 *  a filename. For long options, the extra argument can be appended with
 *  an equals sign after the option name, which is useful if the extra
 *  argument starts with a dash, which would otherwise cause it to be
 *  interpreted as another option.
 *  Non-option arguments are returned to the application as rest arguments.
 *  An argument consisting solely of two dashes turns off further parsing,
 *  any remaining arguments (even those starting with a dash) are returned
 *  to the application as rest arguments.
 * Another important feature of GOption is that it can automatically
 * generate nicely formatted help output. Unless it is explicitly turned
 * off with g_option_context_set_help_enabled(), GOption will recognize
 * the --help, -?,
 * --help-all and
 * --help-groupname options
 * (where groupname is the name of a
 * GOptionGroup) and write a text similar to the one shown in the
 * following example to stdout.
 * $(DDOC_COMMENT example)
 * GOption groups options in GOptionGroups, which makes it easy to
 * incorporate options from multiple sources. The intended use for this is
 * to let applications collect option groups from the libraries it uses,
 * add them to their GOptionContext, and parse all options by a single call
 * to g_option_context_parse(). See gtk_get_option_group() for an example.
 * If an option is declared to be of type string or filename, GOption takes
 * care of converting it to the right encoding; strings are returned in
 * UTF-8, filenames are returned in the GLib filename encoding. Note that
 * this only works if setlocale() has been called before
 * g_option_context_parse().
 * Here is a complete example of setting up GOption to parse the example
 * commandline above and produce the example help output.
 * $(DDOC_COMMENT example)
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
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GLIB) && gOptionContext !is null )
		{
			g_option_context_free(gOptionContext);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a new option context.
	 * The parameter_string can serve multiple purposes. It can be used
	 * to add descriptions for "rest" arguments, which are not parsed by
	 * the GOptionContext, typically something like "FILES" or
	 * "FILE1 FILE2...". If you are using G_OPTION_REMAINING for
	 * collecting "rest" arguments, GLib handles this automatically by
	 * using the arg_description of the corresponding GOptionEntry in
	 * the usage summary.
	 * Another usage is to give a short summary of the program
	 * functionality, like " - frob the strings", which will be displayed
	 * in the same line as the usage. For a longer description of the
	 * program functionality that should be displayed as a paragraph
	 * below the usage line, use g_option_context_set_summary().
	 * Note that the parameter_string is translated using the
	 * function set with g_option_context_set_translate_func(), so
	 * it should normally be passed untranslated.
	 * Since 2.6
	 * Params:
	 * parameterString = a string which is displayed in
	 * the first line of --help output, after the
	 * usage summary
	 * programname [OPTION...]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string parameterString)
	{
		// GOptionContext * g_option_context_new (const gchar *parameter_string);
		auto p = g_option_context_new(Str.toStringz(parameterString));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_option_context_new(Str.toStringz(parameterString))");
		}
		this(cast(GOptionContext*) p);
	}
	
	/**
	 * Adds a string to be displayed in --help output
	 * before the list of options. This is typically a summary of the
	 * program functionality.
	 * Note that the summary is translated (see
	 * g_option_context_set_translate_func() and
	 * g_option_context_set_translation_domain()).
	 * Since 2.12
	 * Params:
	 * summary = a string to be shown in --help output
	 * before the list of options, or NULL. [allow-none]
	 */
	public void setSummary(string summary)
	{
		// void g_option_context_set_summary (GOptionContext *context,  const gchar *summary);
		g_option_context_set_summary(gOptionContext, Str.toStringz(summary));
	}
	
	/**
	 * Returns the summary. See g_option_context_set_summary().
	 * Since 2.12
	 * Returns: the summary
	 */
	public string getSummary()
	{
		// const gchar * g_option_context_get_summary (GOptionContext *context);
		return Str.toString(g_option_context_get_summary(gOptionContext));
	}
	
	/**
	 * Adds a string to be displayed in --help output
	 * after the list of options. This text often includes a bug reporting
	 * address.
	 * Note that the summary is translated (see
	 * g_option_context_set_translate_func()).
	 * Since 2.12
	 * Params:
	 * description = a string to be shown in --help output
	 * after the list of options, or NULL. [allow-none]
	 */
	public void setDescription(string description)
	{
		// void g_option_context_set_description (GOptionContext *context,  const gchar *description);
		g_option_context_set_description(gOptionContext, Str.toStringz(description));
	}
	
	/**
	 * Returns the description. See g_option_context_set_description().
	 * Since 2.12
	 * Returns: the description
	 */
	public string getDescription()
	{
		// const gchar * g_option_context_get_description (GOptionContext *context);
		return Str.toString(g_option_context_get_description(gOptionContext));
	}
	
	/**
	 * Sets the function which is used to translate the contexts
	 * user-visible strings, for --help output.
	 * If func is NULL, strings are not translated.
	 * Note that option groups have their own translation functions,
	 * this function only affects the parameter_string (see g_option_context_new()),
	 * the summary (see g_option_context_set_summary()) and the description
	 * (see g_option_context_set_description()).
	 * If you are using gettext(), you only need to set the translation
	 * domain, see g_option_context_set_translation_domain().
	 * Since 2.12
	 * Params:
	 * func = the GTranslateFunc, or NULL. [allow-none]
	 * data = user data to pass to func, or NULL. [allow-none]
	 * destroyNotify = a function which gets called to free data, or NULL. [allow-none]
	 */
	public void setTranslateFunc(GTranslateFunc func, void* data, GDestroyNotify destroyNotify)
	{
		// void g_option_context_set_translate_func (GOptionContext *context,  GTranslateFunc func,  gpointer data,  GDestroyNotify destroy_notify);
		g_option_context_set_translate_func(gOptionContext, func, data, destroyNotify);
	}
	
	/**
	 * A convenience function to use gettext() for translating
	 * user-visible strings.
	 * Since 2.12
	 * Params:
	 * domain = the domain to use
	 */
	public void setTranslationDomain(string domain)
	{
		// void g_option_context_set_translation_domain  (GOptionContext *context,  const gchar *domain);
		g_option_context_set_translation_domain(gOptionContext, Str.toStringz(domain));
	}
	
	/**
	 * Frees context and all the groups which have been
	 * added to it.
	 * Please note that parsed arguments need to be freed separately (see
	 * GOptionEntry).
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
	 * Note that function depends on the
	 * current locale for
	 * automatic character set conversion of string and filename
	 * arguments.
	 * Since 2.6
	 * Params:
	 * argv = a pointer to the array of command line arguments. [inout][array length=argc][allow-none]
	 * Returns: TRUE if the parsing was successful, FALSE if an error occurred
	 * Throws: GException on failure.
	 */
	public int parse(out string[] argv)
	{
		// gboolean g_option_context_parse (GOptionContext *context,  gint *argc,  gchar ***argv,  GError **error);
		char** outargv = null;
		int argc;
		GError* err = null;
		
		auto p = g_option_context_parse(gOptionContext, &argc, &outargv, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		argv = null;
		foreach ( cstr; outargv[0 .. argc] )
		{
			argv ~= Str.toString(cstr);
		}
		return p;
	}
	
	/**
	 * Enables or disables automatic generation of --help
	 * output. By default, g_option_context_parse() recognizes
	 * --help, -h,
	 * -?, --help-all
	 * and --help-groupname and creates
	 * suitable output to stdout.
	 * Since 2.6
	 * Params:
	 * helpEnabled = TRUE to enable --help, FALSE to disable it
	 */
	public void setHelpEnabled(int helpEnabled)
	{
		// void g_option_context_set_help_enabled (GOptionContext *context,  gboolean help_enabled);
		g_option_context_set_help_enabled(gOptionContext, helpEnabled);
	}
	
	/**
	 * Returns whether automatic --help generation
	 * is turned on for context. See g_option_context_set_help_enabled().
	 * Since 2.6
	 * Returns: TRUE if automatic help generation is turned on.
	 */
	public int getHelpEnabled()
	{
		// gboolean g_option_context_get_help_enabled (GOptionContext *context);
		return g_option_context_get_help_enabled(gOptionContext);
	}
	
	/**
	 * Sets whether to ignore unknown options or not. If an argument is
	 * ignored, it is left in the argv array after parsing. By default,
	 * g_option_context_parse() treats unknown options as error.
	 * This setting does not affect non-option arguments (i.e. arguments
	 * which don't start with a dash). But note that GOption cannot reliably
	 * determine whether a non-option belongs to a preceding unknown option.
	 * Since 2.6
	 * Params:
	 * ignoreUnknown = TRUE to ignore unknown options, FALSE to produce
	 * an error when unknown options are met
	 */
	public void setIgnoreUnknownOptions(int ignoreUnknown)
	{
		// void g_option_context_set_ignore_unknown_options  (GOptionContext *context,  gboolean ignore_unknown);
		g_option_context_set_ignore_unknown_options(gOptionContext, ignoreUnknown);
	}
	
	/**
	 * Returns whether unknown options are ignored or not. See
	 * g_option_context_set_ignore_unknown_options().
	 * Since 2.6
	 * Returns: TRUE if unknown options are ignored.
	 */
	public int getIgnoreUnknownOptions()
	{
		// gboolean g_option_context_get_ignore_unknown_options  (GOptionContext *context);
		return g_option_context_get_ignore_unknown_options(gOptionContext);
	}
	
	/**
	 * Returns a formatted, translated help text for the given context.
	 * To obtain the text produced by --help, call
	 * g_option_context_get_help (context, TRUE, NULL).
	 * To obtain the text produced by --help-all, call
	 * g_option_context_get_help (context, FALSE, NULL).
	 * To obtain the help text for an option group, call
	 * g_option_context_get_help (context, FALSE, group).
	 * Since 2.14
	 * Params:
	 * mainHelp = if TRUE, only include the main group
	 * group = the GOptionGroup to create help for, or NULL. [allow-none]
	 * Returns: A newly allocated string containing the help text
	 */
	public string getHelp(int mainHelp, OptionGroup group)
	{
		// gchar * g_option_context_get_help (GOptionContext *context,  gboolean main_help,  GOptionGroup *group);
		return Str.toString(g_option_context_get_help(gOptionContext, mainHelp, (group is null) ? null : group.getOptionGroupStruct()));
	}
	
	/**
	 * A convenience function which creates a main group if it doesn't
	 * exist, adds the entries to it and sets the translation domain.
	 * Since 2.6
	 * Params:
	 * entries = a NULL-terminated array of GOptionEntrys
	 * translationDomain = a translation domain to use for translating
	 * the --help output for the options in entries
	 * with gettext(), or NULL. [allow-none]
	 */
	public void addMainEntries(GOptionEntry* entries, string translationDomain)
	{
		// void g_option_context_add_main_entries (GOptionContext *context,  const GOptionEntry *entries,  const gchar *translation_domain);
		g_option_context_add_main_entries(gOptionContext, entries, Str.toStringz(translationDomain));
	}
	
	/**
	 * Adds a GOptionGroup to the context, so that parsing with context
	 * will recognize the options in the group. Note that the group will
	 * be freed together with the context when g_option_context_free() is
	 * called, so you must not free the group yourself after adding it
	 * to a context.
	 * Since 2.6
	 * Params:
	 * group = the group to add
	 */
	public void addGroup(OptionGroup group)
	{
		// void g_option_context_add_group (GOptionContext *context,  GOptionGroup *group);
		g_option_context_add_group(gOptionContext, (group is null) ? null : group.getOptionGroupStruct());
	}
	
	/**
	 * Sets a GOptionGroup as main group of the context.
	 * This has the same effect as calling g_option_context_add_group(),
	 * the only difference is that the options in the main group are
	 * treated differently when generating --help output.
	 * Since 2.6
	 * Params:
	 * group = the group to set as main group
	 */
	public void setMainGroup(OptionGroup group)
	{
		// void g_option_context_set_main_group (GOptionContext *context,  GOptionGroup *group);
		g_option_context_set_main_group(gOptionContext, (group is null) ? null : group.getOptionGroupStruct());
	}
	
	/**
	 * Returns a pointer to the main group of context.
	 * Since 2.6
	 * Returns: the main group of context, or NULL if context doesn't have a main group. Note that group belongs to context and should not be modified or freed.
	 */
	public OptionGroup getMainGroup()
	{
		// GOptionGroup * g_option_context_get_main_group (GOptionContext *context);
		auto p = g_option_context_get_main_group(gOptionContext);
		
		if(p is null)
		{
			return null;
		}
		
		return new OptionGroup(cast(GOptionGroup*) p);
	}
}
