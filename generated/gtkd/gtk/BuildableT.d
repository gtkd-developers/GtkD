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


module gtk.BuildableT;

public  import glib.Str;
public  import gobject.ObjectG;
public  import gobject.Value;
public  import gtk.Builder;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkBuildable allows objects to extend and customize their deserialization
 * from [GtkBuilder UI descriptions][BUILDER-UI].
 * The interface includes methods for setting names and properties of objects,
 * parsing custom tags and constructing child objects.
 * 
 * The GtkBuildable interface is implemented by all widgets and
 * many of the non-widget objects that are provided by GTK+. The
 * main user of this interface is #GtkBuilder. There should be
 * very little need for applications to call any of these functions directly.
 * 
 * An object only needs to implement this interface if it needs to extend the
 * #GtkBuilder format or run any extra routines at deserialization time.
 */
public template BuildableT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkBuildable* getBuildableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkBuildable*)getStruct();
	}


	/**
	 * Adds a child to @buildable. @type is an optional string
	 * describing how the child should be added.
	 *
	 * Params:
	 *     builder = a #GtkBuilder
	 *     child = child to add
	 *     type = kind of child or %NULL
	 *
	 * Since: 2.12
	 */
	public void addChild(Builder builder, ObjectG child, string type)
	{
		gtk_buildable_add_child(getBuildableStruct(), (builder is null) ? null : builder.getBuilderStruct(), (child is null) ? null : child.getObjectGStruct(), Str.toStringz(type));
	}

	/**
	 * Constructs a child of @buildable with the name @name.
	 *
	 * #GtkBuilder calls this function if a “constructor” has been
	 * specified in the UI definition.
	 *
	 * Params:
	 *     builder = #GtkBuilder used to construct this object
	 *     name = name of child to construct
	 *
	 * Returns: the constructed child
	 *
	 * Since: 2.12
	 */
	public ObjectG constructChild(Builder builder, string name)
	{
		auto p = gtk_buildable_construct_child(getBuildableStruct(), (builder is null) ? null : builder.getBuilderStruct(), Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p, true);
	}

	/**
	 * This is similar to gtk_buildable_parser_finished() but is
	 * called once for each custom tag handled by the @buildable.
	 *
	 * Params:
	 *     builder = a #GtkBuilder
	 *     child = child object or %NULL for non-child tags
	 *     tagname = the name of the tag
	 *     data = user data created in custom_tag_start
	 *
	 * Since: 2.12
	 */
	public void customFinished(Builder builder, ObjectG child, string tagname, void* data)
	{
		gtk_buildable_custom_finished(getBuildableStruct(), (builder is null) ? null : builder.getBuilderStruct(), (child is null) ? null : child.getObjectGStruct(), Str.toStringz(tagname), data);
	}

	/**
	 * This is called at the end of each custom element handled by
	 * the buildable.
	 *
	 * Params:
	 *     builder = #GtkBuilder used to construct this object
	 *     child = child object or %NULL for non-child tags
	 *     tagname = name of tag
	 *     data = user data that will be passed in to parser functions
	 *
	 * Since: 2.12
	 */
	public void customTagEnd(Builder builder, ObjectG child, string tagname, void** data)
	{
		gtk_buildable_custom_tag_end(getBuildableStruct(), (builder is null) ? null : builder.getBuilderStruct(), (child is null) ? null : child.getObjectGStruct(), Str.toStringz(tagname), data);
	}

	/**
	 * This is called for each unknown element under <child>.
	 *
	 * Params:
	 *     builder = a #GtkBuilder used to construct this object
	 *     child = child object or %NULL for non-child tags
	 *     tagname = name of tag
	 *     parser = a #GMarkupParser to fill in
	 *     data = return location for user data that will be passed in
	 *         to parser functions
	 *
	 * Returns: %TRUE if a object has a custom implementation, %FALSE
	 *     if it doesn't.
	 *
	 * Since: 2.12
	 */
	public bool customTagStart(Builder builder, ObjectG child, string tagname, out GMarkupParser parser, out void* data)
	{
		return gtk_buildable_custom_tag_start(getBuildableStruct(), (builder is null) ? null : builder.getBuilderStruct(), (child is null) ? null : child.getObjectGStruct(), Str.toStringz(tagname), &parser, &data) != 0;
	}

	/**
	 * Get the internal child called @childname of the @buildable object.
	 *
	 * Params:
	 *     builder = a #GtkBuilder
	 *     childname = name of child
	 *
	 * Returns: the internal child of the buildable object
	 *
	 * Since: 2.12
	 */
	public ObjectG getInternalChild(Builder builder, string childname)
	{
		auto p = gtk_buildable_get_internal_child(getBuildableStruct(), (builder is null) ? null : builder.getBuilderStruct(), Str.toStringz(childname));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
	}

	/**
	 * Gets the name of the @buildable object.
	 *
	 * #GtkBuilder sets the name based on the
	 * [GtkBuilder UI definition][BUILDER-UI]
	 * used to construct the @buildable.
	 *
	 * Returns: the name set with gtk_buildable_set_name()
	 *
	 * Since: 2.12
	 */
	public string buildableGetName()
	{
		return Str.toString(gtk_buildable_get_name(getBuildableStruct()));
	}

	/**
	 * Called when the builder finishes the parsing of a
	 * [GtkBuilder UI definition][BUILDER-UI].
	 * Note that this will be called once for each time
	 * gtk_builder_add_from_file() or gtk_builder_add_from_string()
	 * is called on a builder.
	 *
	 * Params:
	 *     builder = a #GtkBuilder
	 *
	 * Since: 2.12
	 */
	public void parserFinished(Builder builder)
	{
		gtk_buildable_parser_finished(getBuildableStruct(), (builder is null) ? null : builder.getBuilderStruct());
	}

	/**
	 * Sets the property name @name to @value on the @buildable object.
	 *
	 * Params:
	 *     builder = a #GtkBuilder
	 *     name = name of property
	 *     value = value of property
	 *
	 * Since: 2.12
	 */
	public void setBuildableProperty(Builder builder, string name, Value value)
	{
		gtk_buildable_set_buildable_property(getBuildableStruct(), (builder is null) ? null : builder.getBuilderStruct(), Str.toStringz(name), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Sets the name of the @buildable object.
	 *
	 * Params:
	 *     name = name to set
	 *
	 * Since: 2.12
	 */
	public void buildableSetName(string name)
	{
		gtk_buildable_set_name(getBuildableStruct(), Str.toStringz(name));
	}
}
