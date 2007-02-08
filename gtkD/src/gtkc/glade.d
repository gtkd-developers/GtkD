/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

// Adapted from John Reimer's DUI loader modules


module gtkc.glade;

private import std.stdio;
private import gtkc.gladetypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker glade_Linker;

static this()
{
 glade_Linker = new Linker(libPath ~ importLibs[LIBRARY.GLADE] );
 glade_Linker.link(gladeLinks);
 debug writefln("* Finished static this(): glade");
}

static ~this()
{
 delete glade_Linker;
 debug writefln("* Finished static ~this(): glade");
}

extern(C) 
{	
	// glade.Glade
	
	GladeXML* function(char* fname, char* root, char* domain)glade_xml_new;
	GladeXML* function(char* buffer, int size, char* root, char* domain)glade_xml_new_from_buffer;
	gboolean function(GladeXML* self, char* fname, char* root, char* domain)glade_xml_construct;
	void function(GladeXML* self, char* handlername, GCallback func)glade_xml_signal_connect;
	void function(GladeXML* self, char* handlername, GCallback func, gpointer userData)glade_xml_signal_connect_data;
	void function(GladeXML* self)glade_xml_signal_autoconnect;
	GtkWidget* function(GladeXML* self, char* name)glade_xml_get_widget;
	GList* function(GladeXML* self, char* name)glade_xml_get_widget_prefix;
	char* function(GtkWidget* widget)glade_get_widget_name;
	GladeXML* function(GtkWidget* widget)glade_get_widget_tree;
	void function(GladeXML* self, gchar* handlerName, GladeXMLConnectFunc func, gpointer userData)glade_xml_signal_connect_full;
	void function(GladeXML* self, GladeXMLConnectFunc func, gpointer userData)glade_xml_signal_autoconnect_full;
	void function(GladeXMLCustomWidgetHandler handler, gpointer userData)glade_set_custom_handler;
	void function()glade_init;
	void function(gchar* library)glade_require;
	void function(gchar* library)glade_provide;


}

Symbol[] gladeLinks = 
[

	{ "glade_xml_new",  cast(void**)& glade_xml_new},
	{ "glade_xml_new_from_buffer",  cast(void**)& glade_xml_new_from_buffer},
	{ "glade_xml_construct",  cast(void**)& glade_xml_construct},
	{ "glade_xml_signal_connect",  cast(void**)& glade_xml_signal_connect},
	{ "glade_xml_signal_connect_data",  cast(void**)& glade_xml_signal_connect_data},
	{ "glade_xml_signal_autoconnect",  cast(void**)& glade_xml_signal_autoconnect},
	{ "glade_xml_get_widget",  cast(void**)& glade_xml_get_widget},
	{ "glade_xml_get_widget_prefix",  cast(void**)& glade_xml_get_widget_prefix},
	{ "glade_get_widget_name",  cast(void**)& glade_get_widget_name},
	{ "glade_get_widget_tree",  cast(void**)& glade_get_widget_tree},
	{ "glade_xml_signal_connect_full",  cast(void**)& glade_xml_signal_connect_full},
	{ "glade_xml_signal_autoconnect_full",  cast(void**)& glade_xml_signal_autoconnect_full},
	{ "glade_set_custom_handler",  cast(void**)& glade_set_custom_handler},
	{ "glade_init",  cast(void**)& glade_init},
	{ "glade_require",  cast(void**)& glade_require},
	{ "glade_provide",  cast(void**)& glade_provide},

];