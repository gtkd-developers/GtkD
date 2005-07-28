/*
 * File:	gmodule.d
 * Author:	John Reimer
 * Date:	2005-05-05  Initial release
 */

module lib.gmodule;

private	import def.Types;
	
private import lib.Loader;
private import lib.paths;

debug private import std.stdio;

private Linker gmodule_Linker;
	
static this()
{
	gmodule_Linker = new Linker(libPath ~ importLibs[LIBRARY.GMODULE] );
	gmodule_Linker.link(gmoduleLinks);
	debug writefln("* Finished static this(): gmodule");
}

static ~this()
{
	delete gmodule_Linker;
	debug writefln("* Finished static ~this(): gmodule");
}

extern(C)
{
	gboolean		function()
			g_module_supported;
	GModule*		function(gchar *file_name, GModuleFlags flags)
			g_module_open;
	gboolean		function(GModule * mod)
			g_module_close;
	void		function(GModule *mod)
			g_module_make_resident;
	gchar*		function()
			g_module_error;
	gboolean		function(GModule *mod, gchar *symbol_name, gpointer *symbol)
			g_module_symbol;
	gchar*		function(GModule *mod)
			g_module_name;
	gchar*		function(gchar *directory, gchar *module_name)
			g_module_build_path;
}

Symbol[] gmoduleLinks =
[
	{ "g_module_supported",  cast(void**)& g_module_supported },
	{ "g_module_open",  cast(void**)& g_module_open },
	{ "g_module_close",  cast(void**)& g_module_close },
	{ "g_module_make_resident",  cast(void**)& g_module_make_resident },
	{ "g_module_error",  cast(void**)& g_module_error },
	{ "g_module_symbol",  cast(void**)& g_module_symbol },
	{ "g_module_name",  cast(void**)& g_module_name },
	{ "g_module_build_path",  cast(void**)& g_module_build_path }
];