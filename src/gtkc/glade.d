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


module gtkc.glade;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gladetypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// glade.Glade

	Linker.link(glade_xml_new, "glade_xml_new", LIBRARY.GLADE);
	Linker.link(glade_xml_new_from_buffer, "glade_xml_new_from_buffer", LIBRARY.GLADE);
	Linker.link(glade_xml_construct, "glade_xml_construct", LIBRARY.GLADE);
	Linker.link(glade_xml_signal_connect, "glade_xml_signal_connect", LIBRARY.GLADE);
	Linker.link(glade_xml_signal_connect_data, "glade_xml_signal_connect_data", LIBRARY.GLADE);
	Linker.link(glade_xml_signal_autoconnect, "glade_xml_signal_autoconnect", LIBRARY.GLADE);
	Linker.link(glade_xml_get_widget, "glade_xml_get_widget", LIBRARY.GLADE);
	Linker.link(glade_xml_get_widget_prefix, "glade_xml_get_widget_prefix", LIBRARY.GLADE);
	Linker.link(glade_get_widget_name, "glade_get_widget_name", LIBRARY.GLADE);
	Linker.link(glade_get_widget_tree, "glade_get_widget_tree", LIBRARY.GLADE);
	Linker.link(glade_xml_signal_connect_full, "glade_xml_signal_connect_full", LIBRARY.GLADE);
	Linker.link(glade_xml_signal_autoconnect_full, "glade_xml_signal_autoconnect_full", LIBRARY.GLADE);
	Linker.link(glade_set_custom_handler, "glade_set_custom_handler", LIBRARY.GLADE);
	Linker.link(glade_init, "glade_init", LIBRARY.GLADE);
	Linker.link(glade_require, "glade_require", LIBRARY.GLADE);
	Linker.link(glade_provide, "glade_provide", LIBRARY.GLADE);
}

extern(C)
{
	
	// glade.Glade
	
	typedef GladeXML* function(char* fname, char* root, char* domain) c_glade_xml_new;
	typedef GladeXML* function(char* buffer, int size, char* root, char* domain) c_glade_xml_new_from_buffer;
	typedef gboolean function(GladeXML* self, char* fname, char* root, char* domain) c_glade_xml_construct;
	typedef void function(GladeXML* self, char* handlername, GCallback func) c_glade_xml_signal_connect;
	typedef void function(GladeXML* self, char* handlername, GCallback func, gpointer userData) c_glade_xml_signal_connect_data;
	typedef void function(GladeXML* self) c_glade_xml_signal_autoconnect;
	typedef GtkWidget* function(GladeXML* self, char* name) c_glade_xml_get_widget;
	typedef GList* function(GladeXML* self, char* name) c_glade_xml_get_widget_prefix;
	typedef char* function(GtkWidget* widget) c_glade_get_widget_name;
	typedef GladeXML* function(GtkWidget* widget) c_glade_get_widget_tree;
	typedef void function(GladeXML* self, gchar* handlerName, GladeXMLConnectFunc func, gpointer userData) c_glade_xml_signal_connect_full;
	typedef void function(GladeXML* self, GladeXMLConnectFunc func, gpointer userData) c_glade_xml_signal_autoconnect_full;
	typedef void function(GladeXMLCustomWidgetHandler handler, gpointer userData) c_glade_set_custom_handler;
	typedef void function() c_glade_init;
	typedef void function(gchar* library) c_glade_require;
	typedef void function(gchar* library) c_glade_provide;
}

// glade.Glade

c_glade_xml_new  glade_xml_new;
c_glade_xml_new_from_buffer  glade_xml_new_from_buffer;
c_glade_xml_construct  glade_xml_construct;
c_glade_xml_signal_connect  glade_xml_signal_connect;
c_glade_xml_signal_connect_data  glade_xml_signal_connect_data;
c_glade_xml_signal_autoconnect  glade_xml_signal_autoconnect;
c_glade_xml_get_widget  glade_xml_get_widget;
c_glade_xml_get_widget_prefix  glade_xml_get_widget_prefix;
c_glade_get_widget_name  glade_get_widget_name;
c_glade_get_widget_tree  glade_get_widget_tree;
c_glade_xml_signal_connect_full  glade_xml_signal_connect_full;
c_glade_xml_signal_autoconnect_full  glade_xml_signal_autoconnect_full;
c_glade_set_custom_handler  glade_set_custom_handler;
c_glade_init  glade_init;
c_glade_require  glade_require;
c_glade_provide  glade_provide;
