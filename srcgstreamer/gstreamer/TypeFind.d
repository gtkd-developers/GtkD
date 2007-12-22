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
 * inFile  = gstreamer-GstTypeFind.html
 * outPack = gstreamer
 * outFile = TypeFind
 * strct   = GstTypeFind
 * realStrct=
 * ctorStrct=
 * clss    = TypeFind
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_type_find_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Caps
 * 	- gstreamer.Plugin
 * structWrap:
 * 	- GstCaps* -> Caps
 * 	- GstPlugin* -> Plugin
 * 	- GstTypeFind* -> TypeFind
 * module aliases:
 * local aliases:
 */

module gstreamer.TypeFind;

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
private import gstreamer.Caps;
private import gstreamer.Plugin;




/**
 * Description
 * The following functions allow you to detect the media type of an unknown
 * stream.
 * Last reviewed on 2005-11-09 (0.9.4)
 */
public class TypeFind
{
	
	/** the main Gtk struct */
	protected GstTypeFind* gstTypeFind;
	
	
	public GstTypeFind* getTypeFindStruct()
	{
		return gstTypeFind;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstTypeFind;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstTypeFind* gstTypeFind)
	{
		version(noAssert)
		{
			if ( gstTypeFind is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstTypeFind is null on constructor").newline;
				}
				else
				{
					printf("struct gstTypeFind is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstTypeFind !is null, "struct gstTypeFind is null on constructor");
		}
		this.gstTypeFind = gstTypeFind;
	}
	
	/**
	 */
	
	
	
	
	/**
	 * Returns the size bytes of the stream to identify beginning at offset. If
	 * offset is a positive number, the offset is relative to the beginning of the
	 * stream, if offset is a negative number the offset is relative to the end of
	 * the stream. The returned memory is valid until the typefinding function
	 * returns and must not be freed.
	 * find:
	 *  The GstTypeFind object the function was called with
	 * offset:
	 *  The offset
	 * size:
	 *  The number of bytes to return
	 * Returns:
	 *  the requested data, or NULL if that data is not available.
	 */
	public byte* peek(long offset, uint size)
	{
		// guint8* gst_type_find_peek (GstTypeFind *find,  gint64 offset,  guint size);
		return gst_type_find_peek(gstTypeFind, offset, size);
	}
	
	/**
	 * If a GstTypeFindFunction calls this function it suggests the caps with the
	 * given probability. A GstTypeFindFunction may supply different suggestions
	 * in one call.
	 * It is up to the caller of the GstTypeFindFunction to interpret these values.
	 * find:
	 *  The GstTypeFind object the function was called with
	 * probability:
	 *  The probability in percent that the suggestion is right
	 * caps:
	 *  The fixed GstCaps to suggest
	 */
	public void suggest(uint probability, Caps caps)
	{
		// void gst_type_find_suggest (GstTypeFind *find,  guint probability,  const GstCaps *caps);
		gst_type_find_suggest(gstTypeFind, probability, (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Get the length of the data stream.
	 * find:
	 *  The GstTypeFind the function was called with
	 * Returns:
	 *  The length of the data stream, or 0 if it is not available.
	 */
	public ulong getLength()
	{
		// guint64 gst_type_find_get_length (GstTypeFind *find);
		return gst_type_find_get_length(gstTypeFind);
	}
	
	/**
	 * Registers a new typefind function to be used for typefinding. After
	 * registering this function will be available for typefinding.
	 * This function is typically called during an element's plugin initialization.
	 * plugin:
	 *  A GstPlugin.
	 * name:
	 *  The name for registering
	 * rank:
	 *  The rank (or importance) of this typefind function
	 * func:
	 *  The GstTypeFindFunction to use
	 * extensions:
	 *  Optional extensions that could belong to this type
	 * possible_caps:
	 *  Optionally the caps that could be returned when typefinding
	 *  succeeds
	 * data:
	 *  Optional user data. This user data must be available until the plugin
	 *  is unloaded.
	 * data_notify:
	 *  a GDestroyNotify that will be called on data when the plugin
	 *  is unloaded.
	 * Returns:
	 *  TRUE on success, FALSE otherwise
	 */
	public static int register(Plugin plugin, char[] name, uint rank, GstTypeFindFunction func, char** extensions, Caps possibleCaps, void* data, GDestroyNotify dataNotify)
	{
		// gboolean gst_type_find_register (GstPlugin *plugin,  const gchar *name,  guint rank,  GstTypeFindFunction func,  gchar **extensions,  const GstCaps *possible_caps,  gpointer data,  GDestroyNotify data_notify);
		return gst_type_find_register((plugin is null) ? null : plugin.getPluginStruct(), Str.toStringz(name), rank, func, extensions, (possibleCaps is null) ? null : possibleCaps.getCapsStruct(), data, dataNotify);
	}
}
