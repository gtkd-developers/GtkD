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

/*
 * Conversion parameters:
 * inFile  = GstIndexFactory.html
 * outPack = gstreamer
 * outFile = IndexFactory
 * strct   = GstIndexFactory
 * realStrct=
 * ctorStrct=
 * clss    = IndexFactory
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_index_factory_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Index
 * structWrap:
 * 	- GstIndex* -> Index
 * 	- GstIndexFactory* -> IndexFactory
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.IndexFactory;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;


private import glib.Str;
private import gstreamer.Index;



private import gstreamer.PluginFeature;

/**
 * Description
 * GstIndexFactory is used to dynamically create GstIndex implementations.
 */
public class IndexFactory : PluginFeature
{
	
	/** the main Gtk struct */
	protected GstIndexFactory* gstIndexFactory;
	
	
	public GstIndexFactory* getIndexFactoryStruct()
	{
		return gstIndexFactory;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstIndexFactory;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstIndexFactory* gstIndexFactory)
	{
		if(gstIndexFactory is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gstIndexFactory);
		if( ptr !is null )
		{
			this = cast(IndexFactory)ptr;
			return;
		}
		super(cast(GstPluginFeature*)gstIndexFactory);
		this.gstIndexFactory = gstIndexFactory;
	}
	
	/**
	 */
	
	/**
	 * Create a new indexfactory with the given parameters
	 * Params:
	 * name =  name of indexfactory to create
	 * longdesc =  long description of indexfactory to create
	 * type =  the GType of the GstIndex element of this factory
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string longdesc, GType type)
	{
		// GstIndexFactory* gst_index_factory_new (const gchar *name,  const gchar *longdesc,  GType type);
		auto p = gst_index_factory_new(Str.toStringz(name), Str.toStringz(longdesc), type);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_index_factory_new(Str.toStringz(name), Str.toStringz(longdesc), type)");
		}
		this(cast(GstIndexFactory*) p);
	}
	
	/**
	 * Removes the index from the global list.
	 */
	public void destroy()
	{
		// void gst_index_factory_destroy (GstIndexFactory *factory);
		gst_index_factory_destroy(gstIndexFactory);
	}
	
	/**
	 * Search for an indexfactory of the given name.
	 * Params:
	 * name =  name of indexfactory to find
	 * Returns: GstIndexFactory if found, NULL otherwise
	 */
	public static IndexFactory find(string name)
	{
		// GstIndexFactory* gst_index_factory_find (const gchar *name);
		auto p = gst_index_factory_find(Str.toStringz(name));
		if(p is null)
		{
			return null;
		}
		return new IndexFactory(cast(GstIndexFactory*) p);
	}
	
	/**
	 * Create a new GstIndex instance from the
	 * given indexfactory.
	 * Returns: A new GstIndex instance.
	 */
	public Index create()
	{
		// GstIndex* gst_index_factory_create (GstIndexFactory *factory);
		auto p = gst_index_factory_create(gstIndexFactory);
		if(p is null)
		{
			return null;
		}
		return new Index(cast(GstIndex*) p);
	}
	
	/**
	 * Create a new GstIndex instance from the
	 * indexfactory with the given name.
	 * Params:
	 * name =  the name of the factory used to create the instance
	 * Returns: A new GstIndex instance.
	 */
	public static Index make(string name)
	{
		// GstIndex* gst_index_factory_make (const gchar *name);
		auto p = gst_index_factory_make(Str.toStringz(name));
		if(p is null)
		{
			return null;
		}
		return new Index(cast(GstIndex*) p);
	}
}
