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


module gtk.ContainerClass;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * Base class for containers.
 */
public class ContainerClass
{
	/** the main Gtk struct */
	protected GtkContainerClass* gtkContainerClass;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkContainerClass* getContainerClassStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkContainerClass;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkContainerClass;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkContainerClass* gtkContainerClass, bool ownedRef = false)
	{
		this.gtkContainerClass = gtkContainerClass;
		this.ownedRef = ownedRef;
	}


	/**
	 * Finds a child property of a container class by name.
	 *
	 * Params:
	 *     propertyName = the name of the child property to find
	 *
	 * Returns: the #GParamSpec of the child
	 *     property or %NULL if @class has no child property with that
	 *     name.
	 */
	public ParamSpec findChildProperty(string propertyName)
	{
		auto p = gtk_container_class_find_child_property(cast(GObjectClass*)gtkContainerClass, Str.toStringz(propertyName));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}

	/**
	 * Modifies a subclass of #GtkContainerClass to automatically add and
	 * remove the border-width setting on GtkContainer.  This allows the
	 * subclass to ignore the border width in its size request and
	 * allocate methods. The intent is for a subclass to invoke this
	 * in its class_init function.
	 *
	 * gtk_container_class_handle_border_width() is necessary because it
	 * would break API too badly to make this behavior the default. So
	 * subclasses must “opt in” to the parent class handling border_width
	 * for them.
	 */
	public void handleBorderWidth()
	{
		gtk_container_class_handle_border_width(gtkContainerClass);
	}

	/**
	 * Installs child properties on a container class.
	 *
	 * Params:
	 *     pspecs = the #GParamSpec array defining the new
	 *         child properties
	 *
	 * Since: 3.18
	 */
	public void installChildProperties(ParamSpec[] pspecs)
	{
		GParamSpec*[] pspecsArray = new GParamSpec*[pspecs.length];
		for ( int i = 0; i < pspecs.length; i++ )
		{
			pspecsArray[i] = pspecs[i].getParamSpecStruct();
		}

		gtk_container_class_install_child_properties(gtkContainerClass, cast(uint)pspecs.length, pspecsArray.ptr);
	}

	/**
	 * Installs a child property on a container class.
	 *
	 * Params:
	 *     propertyId = the id for the property
	 *     pspec = the #GParamSpec for the property
	 */
	public void installChildProperty(uint propertyId, ParamSpec pspec)
	{
		gtk_container_class_install_child_property(gtkContainerClass, propertyId, (pspec is null) ? null : pspec.getParamSpecStruct());
	}

	/**
	 * Returns all child properties of a container class.
	 *
	 * Returns: a newly allocated %NULL-terminated array of #GParamSpec*.
	 *     The array must be freed with g_free().
	 */
	public ParamSpec[] listChildProperties()
	{
		uint nProperties;

		auto p = gtk_container_class_list_child_properties(cast(GObjectClass*)gtkContainerClass, &nProperties);

		if(p is null)
		{
			return null;
		}

		ParamSpec[] arr = new ParamSpec[nProperties];
		for(int i = 0; i < nProperties; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p[i]);
		}

		return arr;
	}
}
