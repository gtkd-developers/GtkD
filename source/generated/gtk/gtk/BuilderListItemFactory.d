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


module gtk.BuilderListItemFactory;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.BuilderScopeIF;
private import gtk.ListItemFactory;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkBuilderListItemFactory` is a `GtkListItemFactory` that creates
 * widgets by instantiating `GtkBuilder` UI templates.
 * 
 * The templates must be extending `GtkListItem`, and typically use
 * `GtkExpression`s to obtain data from the items in the model.
 * 
 * Example:
 * ```xml
 * <interface>
 * <template class="GtkListItem">
 * <property name="child">
 * <object class="GtkLabel">
 * <property name="xalign">0</property>
 * <binding name="label">
 * <lookup name="name" type="SettingsKey">
 * <lookup name="item">GtkListItem</lookup>
 * </lookup>
 * </binding>
 * </object>
 * </property>
 * </template>
 * </interface>
 * ```
 */
public class BuilderListItemFactory : ListItemFactory
{
	/** the main Gtk struct */
	protected GtkBuilderListItemFactory* gtkBuilderListItemFactory;

	/** Get the main Gtk struct */
	public GtkBuilderListItemFactory* getBuilderListItemFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBuilderListItemFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkBuilderListItemFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBuilderListItemFactory* gtkBuilderListItemFactory, bool ownedRef = false)
	{
		this.gtkBuilderListItemFactory = gtkBuilderListItemFactory;
		super(cast(GtkListItemFactory*)gtkBuilderListItemFactory, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_builder_list_item_factory_get_type();
	}

	/**
	 * Creates a new `GtkBuilderListItemFactory` that instantiates widgets
	 * using @bytes as the data to pass to `GtkBuilder`.
	 *
	 * Params:
	 *     scope_ = A scope to use when instantiating
	 *     bytes = the `GBytes` containing the ui file to instantiate
	 *
	 * Returns: a new `GtkBuilderListItemFactory`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(BuilderScopeIF scope_, Bytes bytes)
	{
		auto __p = gtk_builder_list_item_factory_new_from_bytes((scope_ is null) ? null : scope_.getBuilderScopeStruct(), (bytes is null) ? null : bytes.getBytesStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_bytes");
		}

		this(cast(GtkBuilderListItemFactory*) __p, true);
	}

	/**
	 * Creates a new `GtkBuilderListItemFactory` that instantiates widgets
	 * using data read from the given @resource_path to pass to `GtkBuilder`.
	 *
	 * Params:
	 *     scope_ = A scope to use when instantiating
	 *     resourcePath = valid path to a resource that contains the data
	 *
	 * Returns: a new `GtkBuilderListItemFactory`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(BuilderScopeIF scope_, string resourcePath)
	{
		auto __p = gtk_builder_list_item_factory_new_from_resource((scope_ is null) ? null : scope_.getBuilderScopeStruct(), Str.toStringz(resourcePath));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_resource");
		}

		this(cast(GtkBuilderListItemFactory*) __p, true);
	}

	/**
	 * Gets the data used as the `GtkBuilder` UI template for constructing
	 * listitems.
	 *
	 * Returns: The `GtkBuilder` data
	 */
	public Bytes getBytes()
	{
		auto __p = gtk_builder_list_item_factory_get_bytes(gtkBuilderListItemFactory);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p);
	}

	/**
	 * If the data references a resource, gets the path of that resource.
	 *
	 * Returns: The path to the resource
	 */
	public string getResource()
	{
		return Str.toString(gtk_builder_list_item_factory_get_resource(gtkBuilderListItemFactory));
	}

	/**
	 * Gets the scope used when constructing listitems.
	 *
	 * Returns: The scope used when constructing listitems
	 */
	public BuilderScopeIF getScope()
	{
		auto __p = gtk_builder_list_item_factory_get_scope(gtkBuilderListItemFactory);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BuilderScopeIF)(cast(GtkBuilderScope*) __p);
	}
}
