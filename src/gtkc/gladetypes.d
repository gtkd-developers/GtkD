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

module gtkc.gladetypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public import gtkc.gdktypes;
public import gtkc.gtktypes;

// hacks as we ignore all connect stuff at present..
alias void* GladeXMLConnectFunc;
alias void* GladeXMLCustomWidgetHandler;




/**
 * Main Gtk struct.
 */
public struct GladeXML
{
	GObject parent;
	char *filename;
}


public struct GladeXMLClass
{
	GObjectClass parentClass;
	/+* Virtual function: gets the appropriate gtype for the typename.+/
	GType  function(GladeXML*self, char *gtypename)  lookupType;
}


/*
 * This is the signature of a function used to connect signals. It is used
 * by the glade_xml_signal_connect_full and glade_xml_signal_autoconnect_full
 * functions. It is mainly intented for interpreted language bindings, but
 * could be useful where the programmer wants more control over the signal
 * connection process.
 * handler_name:
 *  the name of the handler function to connect.
 * object:
 *  the object to connect the signal to.
 * signal_name:
 *  the name of the signal.
 * signal_data:
 *  the string value of the signal data given in the XML file.
 * connect_object:
 *  non NULL if g_signal_connect_object should be used.
 * after:
 *  TRUE if the connection should be made with g_signal_connect_after.
 * user_data:
 *  the user data argument.
 */
// void (*GladeXMLConnectFunc) (const gchar *handler_name,  GObject *object,  const gchar *signal_name,  const gchar *signal_data,  GObject *connect_object,  gboolean after,  gpointer user_data);


/*
 * This prototype is for a function that creates custom widgets.
 * xml:
 *  the GladeXML object.
 * func_name:
 *  the function name.
 * name:
 *  the name of the widget to be created.
 * string1:
 *  the string1 property.
 * string2:
 *  the string2 property.
 * int1:
 *  the int1 property.
 * int2:
 *  the int2 property.
 * user_data:
 *  the data passed to glade_set_custom_handler()
 * Returns:
 *  the GtkWidget.
 */
// GtkWidget* (*GladeXMLCustomWidgetHandler) (GladeXML *xml,  gchar *func_name,  gchar *name,  gchar *string1,  gchar *string2,  gint int1,  gint int2,  gpointer user_data);

