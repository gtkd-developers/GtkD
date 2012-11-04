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
 * inFile  = 
 * outPack = glib
 * outFile = OptionGroup
 * strct   = GOptionGroup
 * realStrct=
 * ctorStrct=
 * clss    = OptionGroup
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_option_group_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.OptionGroup;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
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
public class OptionGroup
{
	
	/** the main Gtk struct */
	protected GOptionGroup* gOptionGroup;
	
	
	public GOptionGroup* getOptionGroupStruct()
	{
		return gOptionGroup;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gOptionGroup;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GOptionGroup* gOptionGroup)
	{
		this.gOptionGroup = gOptionGroup;
	}
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GLIB) && gOptionGroup !is null )
		{
			g_option_group_free(gOptionGroup);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a new GOptionGroup.
	 * Since 2.6
	 * Params:
	 * name = the name for the option group, this is used to provide
	 * help for the options in this group with --help-name
	 * description = a description for this group to be shown in
	 * --help. This string is translated using the translation
	 * domain or translation function of the group
	 * helpDescription = a description for the --help-name option.
	 * This string is translated using the translation domain or translation function
	 * of the group
	 * userData = user data that will be passed to the pre- and post-parse hooks,
	 * the error hook and to callbacks of G_OPTION_ARG_CALLBACK options, or NULL. [allow-none]
	 * destroy = a function that will be called to free user_data, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string description, string helpDescription, void* userData, GDestroyNotify destroy)
	{
		// GOptionGroup * g_option_group_new (const gchar *name,  const gchar *description,  const gchar *help_description,  gpointer user_data,  GDestroyNotify destroy);
		auto p = g_option_group_new(Str.toStringz(name), Str.toStringz(description), Str.toStringz(helpDescription), userData, destroy);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_option_group_new(Str.toStringz(name), Str.toStringz(description), Str.toStringz(helpDescription), userData, destroy)");
		}
		this(cast(GOptionGroup*) p);
	}
	
	/**
	 * Frees a GOptionGroup. Note that you must not
	 * free groups which have been added to a GOptionContext.
	 * Since 2.6
	 */
	public void free()
	{
		// void g_option_group_free (GOptionGroup *group);
		g_option_group_free(gOptionGroup);
	}
	
	/**
	 * Adds the options specified in entries to group.
	 * Since 2.6
	 * Params:
	 * entries = a NULL-terminated array of GOptionEntrys
	 */
	public void addEntries(GOptionEntry* entries)
	{
		// void g_option_group_add_entries (GOptionGroup *group,  const GOptionEntry *entries);
		g_option_group_add_entries(gOptionGroup, entries);
	}
	
	/**
	 * Associates two functions with group which will be called
	 * from g_option_context_parse() before the first option is parsed
	 * and after the last option has been parsed, respectively.
	 * Note that the user data to be passed to pre_parse_func and
	 * post_parse_func can be specified when constructing the group
	 * with g_option_group_new().
	 * Since 2.6
	 * Params:
	 * preParseFunc = a function to call before parsing, or NULL. [allow-none]
	 * postParseFunc = a function to call after parsing, or NULL. [allow-none]
	 */
	public void setParseHooks(GOptionParseFunc preParseFunc, GOptionParseFunc postParseFunc)
	{
		// void g_option_group_set_parse_hooks (GOptionGroup *group,  GOptionParseFunc pre_parse_func,  GOptionParseFunc post_parse_func);
		g_option_group_set_parse_hooks(gOptionGroup, preParseFunc, postParseFunc);
	}
	
	/**
	 * Associates a function with group which will be called
	 * from g_option_context_parse() when an error occurs.
	 * Note that the user data to be passed to error_func can be
	 * specified when constructing the group with g_option_group_new().
	 * Since 2.6
	 * Params:
	 * errorFunc = a function to call when an error occurs
	 */
	public void setErrorHook(GOptionErrorFunc errorFunc)
	{
		// void g_option_group_set_error_hook (GOptionGroup *group,  GOptionErrorFunc error_func);
		g_option_group_set_error_hook(gOptionGroup, errorFunc);
	}
	
	/**
	 * Sets the function which is used to translate user-visible
	 * strings, for --help output. Different
	 * groups can use different GTranslateFuncs. If func
	 * is NULL, strings are not translated.
	 * If you are using gettext(), you only need to set the translation
	 * domain, see g_option_group_set_translation_domain().
	 * Since 2.6
	 * Params:
	 * func = the GTranslateFunc, or NULL. [allow-none]
	 * data = user data to pass to func, or NULL. [allow-none]
	 * destroyNotify = a function which gets called to free data, or NULL. [allow-none]
	 */
	public void setTranslateFunc(GTranslateFunc func, void* data, GDestroyNotify destroyNotify)
	{
		// void g_option_group_set_translate_func (GOptionGroup *group,  GTranslateFunc func,  gpointer data,  GDestroyNotify destroy_notify);
		g_option_group_set_translate_func(gOptionGroup, func, data, destroyNotify);
	}
	
	/**
	 * A convenience function to use gettext() for translating
	 * user-visible strings.
	 * Since 2.6
	 * Params:
	 * domain = the domain to use
	 */
	public void setTranslationDomain(string domain)
	{
		// void g_option_group_set_translation_domain  (GOptionGroup *group,  const gchar *domain);
		g_option_group_set_translation_domain(gOptionGroup, Str.toStringz(domain));
	}
}
