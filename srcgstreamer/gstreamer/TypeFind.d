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
 * inFile  = gstreamer-GstTypeFind.html
 * outPack = gstreamer
 * outFile = TypeFind
 * strct   = GstTypeFind
 * realStrct=
 * ctorStrct=
 * clss    = TypeFind
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_type_find_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_type_find_peek
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Caps
 * 	- gstreamer.Plugin
 * structWrap:
 * 	- GstCaps* -> Caps
 * 	- GstPlugin* -> Plugin
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.TypeFind;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gstreamer.Caps;
private import gstreamer.Plugin;




/**
 * The following functions allow you to detect the media type of an unknown
 * stream.
 *
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
		this.gstTypeFind = gstTypeFind;
	}
	
	/**
	 * Returns the size bytes of the stream to identify beginning at offset. If
	 * offset is a positive number, the offset is relative to the beginning of the
	 * stream, if offset is a negative number the offset is relative to the end of
	 * the stream. The returned memory is valid until the typefinding function
	 * returns and must not be freed.
	 * Params:
	 * offset = The offset
	 * size = The number of bytes to return
	 * Returns: the requested data, or NULL if that data is not available.
	 */
	public ubyte[] peek(long offset, uint size)
	{
		// guint8* gst_type_find_peek (GstTypeFind *find,  gint64 offset,  guint size);
		ubyte* buff = gst_type_find_peek(gstTypeFind, offset, size);
		
		return buff[0 .. size];
	}
	
	/**
	 */
	
	/**
	 * If a GstTypeFindFunction calls this function it suggests the caps with the
	 * given probability. A GstTypeFindFunction may supply different suggestions
	 * in one call.
	 * It is up to the caller of the GstTypeFindFunction to interpret these values.
	 * Params:
	 * probability = The probability in percent that the suggestion is right
	 * caps = The fixed GstCaps to suggest
	 */
	public void suggest(uint probability, Caps caps)
	{
		// void gst_type_find_suggest (GstTypeFind *find,  guint probability,  GstCaps *caps);
		gst_type_find_suggest(gstTypeFind, probability, (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Get the length of the data stream.
	 * Returns: The length of the data stream, or 0 if it is not available.
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
	 * Params:
	 * plugin = A GstPlugin, or NULL for a static typefind function
	 * name = The name for registering
	 * rank = The rank (or importance) of this typefind function
	 * func = The GstTypeFindFunction to use
	 * extensions = Optional comma-separated list of extensions
	 * that could belong to this type. [allow-none]
	 * possibleCaps = Optionally the caps that could be returned when typefinding
	 * succeeds
	 * data = Optional user data. This user data must be available until the plugin
	 * is unloaded.
	 * dataNotify = a GDestroyNotify that will be called on data when the plugin
	 * is unloaded.
	 * Returns: TRUE on success, FALSE otherwise
	 */
	public static int register(Plugin plugin, string name, uint rank, GstTypeFindFunction func, string extensions, Caps possibleCaps, void* data, GDestroyNotify dataNotify)
	{
		// gboolean gst_type_find_register (GstPlugin *plugin,  const gchar *name,  guint rank,  GstTypeFindFunction func,  const gchar *extensions,  GstCaps *possible_caps,  gpointer data,  GDestroyNotify data_notify);
		return gst_type_find_register((plugin is null) ? null : plugin.getPluginStruct(), Str.toStringz(name), rank, func, Str.toStringz(extensions), (possibleCaps is null) ? null : possibleCaps.getCapsStruct(), data, dataNotify);
	}
}
