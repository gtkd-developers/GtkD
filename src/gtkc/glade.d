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


module gtkc.glade;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gladetypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// glade.Glade

	Linker.link(glade_xml_new, \"glade_xml_new\", LIBRARY.GLADE);
	Linker.link(glade_xml_new_from_buffer, \"glade_xml_new_from_buffer\", LIBRARY.GLADE);
	Linker.link(glade_xml_construct, \"glade_xml_construct\", LIBRARY.GLADE);
	Linker.link(glade_xml_signal_connect, \"glade_xml_signal_connect\", LIBRARY.GLADE);
	Linker.link(glade_xml_signal_connect_data, \"glade_xml_signal_connect_data\", LIBRARY.GLADE);
	Linker.link(glade_xml_signal_autoconnect, \"glade_xml_signal_autoconnect\", LIBRARY.GLADE);
	Linker.link(glade_xml_get_widget, \"glade_xml_get_widget\", LIBRARY.GLADE);
	Linker.link(glade_xml_get_widget_prefix, \"glade_xml_get_widget_prefix\", LIBRARY.GLADE);
	Linker.link(glade_get_widget_name, \"glade_get_widget_name\", LIBRARY.GLADE);
	Linker.link(glade_get_widget_tree, \"glade_get_widget_tree\", LIBRARY.GLADE);
	Linker.link(glade_xml_signal_connect_full, \"glade_xml_signal_connect_full\", LIBRARY.GLADE);
	Linker.link(glade_xml_signal_autoconnect_full, \"glade_xml_signal_autoconnect_full\", LIBRARY.GLADE);
	Linker.link(glade_set_custom_handler, \"glade_set_custom_handler\", LIBRARY.GLADE);
	Linker.link(glade_init, \"glade_init\", LIBRARY.GLADE);
	Linker.link(glade_require, \"glade_require\", LIBRARY.GLADE);
	Linker.link(glade_provide, \"glade_provide\", LIBRARY.GLADE);
}");

mixin( gshared ~"extern(C)
{
	
	// glade.Glade
	
	GladeXML* function(char* fname, char* root, char* domain) c_glade_xml_new;
	GladeXML* function(char* buffer, int size, char* root, char* domain) c_glade_xml_new_from_buffer;
	gboolean function(GladeXML* self, char* fname, char* root, char* domain) c_glade_xml_construct;
	void function(GladeXML* self, char* handlername, GCallback func) c_glade_xml_signal_connect;
	void function(GladeXML* self, char* handlername, GCallback func, gpointer userData) c_glade_xml_signal_connect_data;
	void function(GladeXML* self) c_glade_xml_signal_autoconnect;
	GtkWidget* function(GladeXML* self, char* name) c_glade_xml_get_widget;
	GList* function(GladeXML* self, char* name) c_glade_xml_get_widget_prefix;
	char* function(GtkWidget* widget) c_glade_get_widget_name;
	GladeXML* function(GtkWidget* widget) c_glade_get_widget_tree;
	void function(GladeXML* self, gchar* handlerName, GladeXMLConnectFunc func, gpointer userData) c_glade_xml_signal_connect_full;
	void function(GladeXML* self, GladeXMLConnectFunc func, gpointer userData) c_glade_xml_signal_autoconnect_full;
	void function(GladeXMLCustomWidgetHandler handler, gpointer userData) c_glade_set_custom_handler;
	void function() c_glade_init;
	void function(gchar* library) c_glade_require;
	void function(gchar* library) c_glade_provide;
}");

// glade.Glade

alias c_glade_xml_new  glade_xml_new;
alias c_glade_xml_new_from_buffer  glade_xml_new_from_buffer;
alias c_glade_xml_construct  glade_xml_construct;
alias c_glade_xml_signal_connect  glade_xml_signal_connect;
alias c_glade_xml_signal_connect_data  glade_xml_signal_connect_data;
alias c_glade_xml_signal_autoconnect  glade_xml_signal_autoconnect;
alias c_glade_xml_get_widget  glade_xml_get_widget;
alias c_glade_xml_get_widget_prefix  glade_xml_get_widget_prefix;
alias c_glade_get_widget_name  glade_get_widget_name;
alias c_glade_get_widget_tree  glade_get_widget_tree;
alias c_glade_xml_signal_connect_full  glade_xml_signal_connect_full;
alias c_glade_xml_signal_autoconnect_full  glade_xml_signal_autoconnect_full;
alias c_glade_set_custom_handler  glade_set_custom_handler;
alias c_glade_init  glade_init;
alias c_glade_require  glade_require;
alias c_glade_provide  glade_provide;
