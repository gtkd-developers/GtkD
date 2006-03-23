/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = atk
 * outFile = StreamableContent
 * strct   = AtkStreamableContent
 * realStrct=
 * clss    = StreamableContent
 * template for:
 * extend  = 
 * prefixes:
 * 	- atk_streamable_content_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.IOChannel
 * 	- glib.Str
 * structWrap:
 * 	- GIOChannel* -> IOChannel
 * local aliases:
 */

module atk.StreamableContent;

private import atk.typedefs;

private import lib.atk;

private import glib.IOChannel;
private import glib.Str;

/**
 * Description
 */
public class StreamableContent
{
	
	/** the main Gtk struct */
	protected AtkStreamableContent* atkStreamableContent;
	
	
	public AtkStreamableContent* getStreamableContentStruct()
	{
		return atkStreamableContent;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkStreamableContent;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkStreamableContent* atkStreamableContent)
	{
		this.atkStreamableContent = atkStreamableContent;
	}
	
	/**
	 */
	
	
	/**
	 * Gets the number of mime types supported by this object.
	 * streamable:
	 *  a GObject instance that implements AtkStreamableContentIface
	 * Returns:
	 *  a gint which is the number of mime types supported by the object.
	 */
	public int getN_MimeTypes()
	{
		// gint atk_streamable_content_get_n_mime_types  (AtkStreamableContent *streamable);
		return atk_streamable_content_get_n_mime_types(atkStreamableContent);
	}
	
	/**
	 * Gets the character string of the specified mime type. The first mime
	 * type is at position 0, the second at position 1, and so on.
	 * streamable:
	 *  a GObject instance that implements AtkStreamableContent
	 * i:
	 *  a gint representing the position of the mime type starting from 0
	 * Returns:
	 * : a gchar* representing the specified mime type; the caller
	 * should not free the character string.
	 */
	public char[] getMimeType(int i)
	{
		// const gchar* atk_streamable_content_get_mime_type  (AtkStreamableContent *streamable,  gint i);
		return Str.toString(atk_streamable_content_get_mime_type(atkStreamableContent, i) );
	}
	
	/**
	 * Gets the content in the specified mime type.
	 * streamable:
	 *  a GObject instance that implements AtkStreamableContentIface
	 * mime_type:
	 *  a gchar* representing the mime type
	 * Returns:
	 *  A GIOChannel which contains the content in the specified mime
	 * type.
	 */
	public IOChannel getStream(char[] mimeType)
	{
		// GIOChannel* atk_streamable_content_get_stream  (AtkStreamableContent *streamable,  const gchar *mime_type);
		return new IOChannel( atk_streamable_content_get_stream(atkStreamableContent, Str.toStringz(mimeType)) );
	}
}
