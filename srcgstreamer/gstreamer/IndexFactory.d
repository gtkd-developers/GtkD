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
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Index
 * structWrap:
 * 	- GstIndex* -> Index
 * 	- GstIndexFactory* -> IndexFactory
 * module aliases:
 * local aliases:
 */

module gstreamer.IndexFactory;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;


private import glib.Str;
private import gstreamer.Index;




/**
 * Description
 * GstIndexFactory is used to dynamically create GstIndex implementations.
 */
private import gstreamer.PluginFeature;
public class IndexFactory : PluginFeature
{
	
	/** the main Gtk struct */
	protected GstIndexFactory* gstIndexFactory;
	
	
	public GstIndexFactory* getIndexFactoryStruct()
	{
		return gstIndexFactory;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstIndexFactory;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstIndexFactory* gstIndexFactory)
	{
		version(noAssert)
		{
			if ( gstIndexFactory is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstIndexFactory is null on constructor").newline;
				}
				else
				{
					printf("struct gstIndexFactory is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstIndexFactory !is null, "struct gstIndexFactory is null on constructor");
		}
		super(cast(GstPluginFeature*)gstIndexFactory);
		this.gstIndexFactory = gstIndexFactory;
	}
	
	/**
	 */
	
	
	/**
	 * Create a new indexfactory with the given parameters
	 * name:
	 *  name of indexfactory to create
	 * longdesc:
	 *  long description of indexfactory to create
	 * type:
	 *  the GType of the GstIndex element of this factory
	 * Returns:
	 *  a new GstIndexFactory.
	 */
	public this (char[] name, char[] longdesc, GType type)
	{
		// GstIndexFactory* gst_index_factory_new (const gchar *name,  const gchar *longdesc,  GType type);
		this(cast(GstIndexFactory*)gst_index_factory_new(Str.toStringz(name), Str.toStringz(longdesc), type) );
	}
	
	/**
	 * Removes the index from the global list.
	 * factory:
	 *  factory to destroy
	 */
	public void destroy()
	{
		// void gst_index_factory_destroy (GstIndexFactory *factory);
		gst_index_factory_destroy(gstIndexFactory);
	}
	
	/**
	 * Search for an indexfactory of the given name.
	 * name:
	 *  name of indexfactory to find
	 * Returns:
	 *  GstIndexFactory if found, NULL otherwise
	 */
	public static IndexFactory find(char[] name)
	{
		// GstIndexFactory* gst_index_factory_find (const gchar *name);
		return new IndexFactory( gst_index_factory_find(Str.toStringz(name)) );
	}
	
	/**
	 * Create a new GstIndex instance from the
	 * given indexfactory.
	 * factory:
	 *  the factory used to create the instance
	 * Returns:
	 *  A new GstIndex instance.
	 */
	public Index create()
	{
		// GstIndex* gst_index_factory_create (GstIndexFactory *factory);
		return new Index( gst_index_factory_create(gstIndexFactory) );
	}
	
	/**
	 * Create a new GstIndex instance from the
	 * indexfactory with the given name.
	 * name:
	 *  the name of the factory used to create the instance
	 * Returns:
	 *  A new GstIndex instance.
	 * See Also
	 * GstIndex
	 */
	public static Index make(char[] name)
	{
		// GstIndex* gst_index_factory_make (const gchar *name);
		return new Index( gst_index_factory_make(Str.toStringz(name)) );
	}
}
