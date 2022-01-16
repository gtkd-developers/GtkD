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


module gobject.ParamSpecPool;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.c.functions;
public  import gobject.c.types;


/**
 * A #GParamSpecPool maintains a collection of #GParamSpecs which can be
 * quickly accessed by owner and name.
 * 
 * The implementation of the #GObject property system uses such a pool to
 * store the #GParamSpecs of the properties all object types.
 */
public class ParamSpecPool
{
	/** the main Gtk struct */
	protected GParamSpecPool* gParamSpecPool;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GParamSpecPool* getParamSpecPoolStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gParamSpecPool;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gParamSpecPool;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GParamSpecPool* gParamSpecPool, bool ownedRef = false)
	{
		this.gParamSpecPool = gParamSpecPool;
		this.ownedRef = ownedRef;
	}


	/**
	 * Inserts a #GParamSpec in the pool.
	 *
	 * Params:
	 *     pspec = the #GParamSpec to insert
	 *     ownerType = a #GType identifying the owner of @pspec
	 */
	public void insert(ParamSpec pspec, GType ownerType)
	{
		g_param_spec_pool_insert(gParamSpecPool, (pspec is null) ? null : pspec.getParamSpecStruct(), ownerType);
	}

	/**
	 * Gets an array of all #GParamSpecs owned by @owner_type in
	 * the pool.
	 *
	 * Params:
	 *     ownerType = the owner to look for
	 *
	 * Returns: a newly
	 *     allocated array containing pointers to all #GParamSpecs
	 *     owned by @owner_type in the pool
	 */
	public ParamSpec[] list(GType ownerType)
	{
		uint nPspecsP;

		auto __p = g_param_spec_pool_list(gParamSpecPool, ownerType, &nPspecsP);

		if(__p is null)
		{
			return null;
		}

		ParamSpec[] arr = new ParamSpec[nPspecsP];
		for(int i = 0; i < nPspecsP; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) __p[i]);
		}

		return arr;
	}

	/**
	 * Gets an #GList of all #GParamSpecs owned by @owner_type in
	 * the pool.
	 *
	 * Params:
	 *     ownerType = the owner to look for
	 *
	 * Returns: a
	 *     #GList of all #GParamSpecs owned by @owner_type in
	 *     the pool#GParamSpecs.
	 */
	public ListG listOwned(GType ownerType)
	{
		auto __p = g_param_spec_pool_list_owned(gParamSpecPool, ownerType);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Looks up a #GParamSpec in the pool.
	 *
	 * Params:
	 *     paramName = the name to look for
	 *     ownerType = the owner to look for
	 *     walkAncestors = If %TRUE, also try to find a #GParamSpec with @param_name
	 *         owned by an ancestor of @owner_type.
	 *
	 * Returns: The found #GParamSpec, or %NULL if no
	 *     matching #GParamSpec was found.
	 */
	public ParamSpec lookup(string paramName, GType ownerType, bool walkAncestors)
	{
		auto __p = g_param_spec_pool_lookup(gParamSpecPool, Str.toStringz(paramName), ownerType, walkAncestors);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) __p);
	}

	/**
	 * Removes a #GParamSpec from the pool.
	 *
	 * Params:
	 *     pspec = the #GParamSpec to remove
	 */
	public void remove(ParamSpec pspec)
	{
		g_param_spec_pool_remove(gParamSpecPool, (pspec is null) ? null : pspec.getParamSpecStruct());
	}

	/**
	 * Creates a new #GParamSpecPool.
	 *
	 * If @type_prefixing is %TRUE, lookups in the newly created pool will
	 * allow to specify the owner as a colon-separated prefix of the
	 * property name, like "GtkContainer:border-width". This feature is
	 * deprecated, so you should always set @type_prefixing to %FALSE.
	 *
	 * Params:
	 *     typePrefixing = Whether the pool will support type-prefixed property names.
	 *
	 * Returns: a newly allocated #GParamSpecPool.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(bool typePrefixing)
	{
		auto __p = g_param_spec_pool_new(typePrefixing);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GParamSpecPool*) __p);
	}
}
