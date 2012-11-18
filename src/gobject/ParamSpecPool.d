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
 * inFile  = 
 * outPack = gobject
 * outFile = ParamSpecPool
 * strct   = GParamSpecPool
 * realStrct=
 * ctorStrct=
 * clss    = ParamSpecPool
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_param_spec_pool_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ParamSpec
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GParamSpec* -> ParamSpec
 * module aliases:
 * local aliases:
 * overrides:
 */

module gobject.ParamSpecPool;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ParamSpec;
private import glib.ListG;




/**
 * Description
 * GParamSpec is an object structure that encapsulates the metadata
 * required to specify parameters, such as e.g. GObject properties.
 * Parameter names need to start with a letter (a-z or A-Z). Subsequent
 * characters can be letters, numbers or a '-'.
 * All other characters are replaced by a '-' during construction.
 * The result of this replacement is called the canonical name of the
 * parameter.
 */
public class ParamSpecPool
{
	
	/** the main Gtk struct */
	protected GParamSpecPool* gParamSpecPool;
	
	
	public GParamSpecPool* getParamSpecPoolStruct()
	{
		return gParamSpecPool;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gParamSpecPool;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GParamSpecPool* gParamSpecPool)
	{
		this.gParamSpecPool = gParamSpecPool;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GParamSpecPool.
	 * If type_prefixing is TRUE, lookups in the newly created pool will
	 * allow to specify the owner as a colon-separated prefix of the
	 * property name, like "GtkContainer:border-width". This feature is
	 * deprecated, so you should always set type_prefixing to FALSE.
	 * Params:
	 * typePrefixing = Whether the pool will support type-prefixed property names.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int typePrefixing)
	{
		// GParamSpecPool * g_param_spec_pool_new (gboolean type_prefixing);
		auto p = g_param_spec_pool_new(typePrefixing);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_param_spec_pool_new(typePrefixing)");
		}
		this(cast(GParamSpecPool*) p);
	}
	
	/**
	 * Inserts a GParamSpec in the pool.
	 * Params:
	 * pspec = the GParamSpec to insert
	 * ownerType = a GType identifying the owner of pspec
	 */
	public void insert(ParamSpec pspec, GType ownerType)
	{
		// void g_param_spec_pool_insert (GParamSpecPool *pool,  GParamSpec *pspec,  GType owner_type);
		g_param_spec_pool_insert(gParamSpecPool, (pspec is null) ? null : pspec.getParamSpecStruct(), ownerType);
	}
	
	/**
	 * Removes a GParamSpec from the pool.
	 * Params:
	 * pspec = the GParamSpec to remove
	 */
	public void remove(ParamSpec pspec)
	{
		// void g_param_spec_pool_remove (GParamSpecPool *pool,  GParamSpec *pspec);
		g_param_spec_pool_remove(gParamSpecPool, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Looks up a GParamSpec in the pool.
	 * Params:
	 * paramName = the name to look for
	 * ownerType = the owner to look for
	 * walkAncestors = If TRUE, also try to find a GParamSpec with param_name
	 * owned by an ancestor of owner_type.
	 * Returns: The found GParamSpec, or NULL if no matching GParamSpec was found. [transfer none]
	 */
	public ParamSpec lookup(string paramName, GType ownerType, int walkAncestors)
	{
		// GParamSpec * g_param_spec_pool_lookup (GParamSpecPool *pool,  const gchar *param_name,  GType owner_type,  gboolean walk_ancestors);
		auto p = g_param_spec_pool_lookup(gParamSpecPool, Str.toStringz(paramName), ownerType, walkAncestors);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Gets an array of all GParamSpecs owned by owner_type in
	 * the pool.
	 * Params:
	 * ownerType = the owner to look for
	 * Returns: a newly allocated array containing pointers to all GParamSpecs owned by owner_type in the pool. [array length=n_pspecs_p][transfer container]
	 */
	public ParamSpec[] list(GType ownerType)
	{
		// GParamSpec ** g_param_spec_pool_list (GParamSpecPool *pool,  GType owner_type,  guint *n_pspecs_p);
		uint nPspecsP;
		auto p = g_param_spec_pool_list(gParamSpecPool, ownerType, &nPspecsP);
		
		if(p is null)
		{
			return null;
		}
		
		ParamSpec[] arr = new ParamSpec[nPspecsP];
		for(int i = 0; i < nPspecsP; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p[i]);
		}
		
		return arr;
	}
	
	/**
	 * Gets an GList of all GParamSpecs owned by owner_type in
	 * the pool.
	 * Params:
	 * ownerType = the owner to look for
	 * Returns: a GList of all GParamSpecs owned by owner_type in the poolGParamSpecs. [transfer container][element-type GObject.ParamSpec]
	 */
	public ListG listOwned(GType ownerType)
	{
		// GList * g_param_spec_pool_list_owned (GParamSpecPool *pool,  GType owner_type);
		auto p = g_param_spec_pool_list_owned(gParamSpecPool, ownerType);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
}
