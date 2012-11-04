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
 * inFile  = GtkBuildable.html
 * outPack = gtk
 * outFile = BuildableIF
 * strct   = GtkBuildable
 * realStrct=
 * ctorStrct=
 * clss    = BuildableT
 * interf  = BuildableIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_buildable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * 	- gtk.Builder
 * structWrap:
 * 	- GObject* -> ObjectG
 * 	- GValue* -> Value
 * 	- GtkBuilder* -> Builder
 * module aliases:
 * local aliases:
 * 	- getName -> buildableGetName
 * 	- setName -> buildableSetName
 * overrides:
 */

module gtk.BuildableIF;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;




/**
 * Description
 * GtkBuildable allows objects to extend and customize thier deserialization
 * from GtkBuilder UI descriptions.
 * The interface includes methods for setting names and properties of objects,
 * parsing custom tags and constructing child objects.
 * The GtkBuildable interface is implemented by all widgets and
 * many of the non-widget objects that are provided by GTK+. The
 * main user of this interface is GtkBuilder. There should be
 * very little need for applications to call any
 * gtk_buildable_... functions.
 * Note
 * An object only needs to implement this interface if it needs
 * to extend the GtkBuilder format or run any extra routines at deserialization time
 */
public interface BuildableIF
{
	
	
	public GtkBuildable* getBuildableTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Sets the name of the buildable object.
	 * Since 2.12
	 * Params:
	 * buildable = a GtkBuildable
	 * name = name to set
	 */
	public void buildableSetName(string name);
	
	/**
	 * Gets the name of the buildable object.
	 * GtkBuilder sets the name based on the
	 * GtkBuilder UI definition
	 * used to construct the buildable.
	 * Since 2.12
	 * Params:
	 * buildable = a GtkBuildable
	 * Returns: the name set with gtk_buildable_set_name()
	 */
	public string buildableGetName();
	
	/**
	 * Adds a child to buildable. type is an optional string
	 * describing how the child should be added.
	 * Since 2.12
	 * Params:
	 * builder = a GtkBuilder
	 * child = child to add
	 * type = kind of child or NULL. [allow-none]
	 */
	public void addChild(Builder builder, ObjectG child, string type);
	
	/**
	 * Sets the property name name to value on the buildable object.
	 * Since 2.12
	 * Params:
	 * builder = a GtkBuilder
	 * name = name of property
	 * value = value of property
	 */
	public void setBuildableProperty(Builder builder, string name, Value value);
	
	/**
	 * Constructs a child of buildable with the name name.
	 * GtkBuilder calls this function if a "constructor" has been
	 * specified in the UI definition.
	 * Since 2.12
	 * Params:
	 * builder = GtkBuilder used to construct this object
	 * name = name of child to construct
	 * Returns: the constructed child. [transfer full]
	 */
	public ObjectG constructChild(Builder builder, string name);
	
	/**
	 * This is called for each unknown element under <child>.
	 * Since 2.12
	 * Params:
	 * builder = a GtkBuilder used to construct this object
	 * child = child object or NULL for non-child tags. [allow-none]
	 * tagname = name of tag
	 * parser = a GMarkupParser structure to fill in. [out]
	 * data = return location for user data that will be passed in
	 * to parser functions. [out]
	 * Returns: TRUE if a object has a custom implementation, FALSE if it doesn't.
	 */
	public int customTagStart(Builder builder, ObjectG child, string tagname, GMarkupParser* parser, void** data);
	
	/**
	 * This is called at the end of each custom element handled by
	 * the buildable.
	 * Since 2.12
	 * Params:
	 * builder = GtkBuilder used to construct this object
	 * child = child object or NULL for non-child tags. [allow-none]
	 * tagname = name of tag
	 * data = user data that will be passed in to parser functions. [type gpointer]
	 */
	public void customTagEnd(Builder builder, ObjectG child, string tagname, void** data);
	
	/**
	 * This is similar to gtk_buildable_parser_finished() but is
	 * called once for each custom tag handled by the buildable.
	 * Since 2.12
	 * Params:
	 * builder = a GtkBuilder
	 * child = child object or NULL for non-child tags. [allow-none]
	 * tagname = the name of the tag
	 * data = user data created in custom_tag_start
	 */
	public void customFinished(Builder builder, ObjectG child, string tagname, void* data);
	
	/**
	 * Called when the builder finishes the parsing of a
	 * GtkBuilder UI definition.
	 * Note that this will be called once for each time
	 * gtk_builder_add_from_file() or gtk_builder_add_from_string()
	 * is called on a builder.
	 * Since 2.12
	 * Params:
	 * builder = a GtkBuilder
	 */
	public void parserFinished(Builder builder);
	
	/**
	 * Get the internal child called childname of the buildable object.
	 * Since 2.12
	 * Params:
	 * builder = a GtkBuilder
	 * childname = name of child
	 * Returns: the internal child of the buildable object. [transfer none]
	 */
	public ObjectG getInternalChild(Builder builder, string childname);
}
