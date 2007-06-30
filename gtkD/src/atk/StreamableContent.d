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
 * inFile  = AtkStreamableContent.html
 * outPack = atk
 * outFile = StreamableContent
 * strct   = AtkStreamableContent
 * realStrct=
 * ctorStrct=
 * clss    = StreamableContent
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
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
 * module aliases:
 * local aliases:
 */

module atk.StreamableContent;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.atktypes;

private import gtkc.atk;


private import glib.IOChannel;
private import glib.Str;




/**
 * Description
 * An interface whereby an object allows its backing content to be streamed to
 * clients. Typical implementors would be images or icons, HTML content, or
 * multimedia display/rendering widgets.
 * Negotiation of content type is allowed. Clients may examine the backing data
 * and transform, convert, or parse the content in order to present it in an alternate form to end-users.
 * The AtkStreamableContent interface is particularly useful for saving,
 * printing, or post-processing entire documents, or for persisting alternate
 * views of a document. If document content itself is being serialized,
 * stored, or converted, then use of the AtkStreamableContent interface can help
 * address performance issues. Unlike most ATK interfaces,
 * this interface is not strongly tied to the current user-agent view of the
 * a particular document, but may in some cases give access to the underlying model data.
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
		version(noAssert)
		{
			if ( atkStreamableContent is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct atkStreamableContent is null on constructor").newline;
				}
				else
				{
					printf("struct atkStreamableContent is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(atkStreamableContent !is null, "struct atkStreamableContent is null on constructor");
		}
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
	public int getNMimeTypes()
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
		// GIOChannel* atk_streamable_content_get_stream (AtkStreamableContent *streamable,  const gchar *mime_type);
		return new IOChannel( atk_streamable_content_get_stream(atkStreamableContent, Str.toStringz(mimeType)) );
	}
	
	/**
	 * Get a string representing a URI in IETF standard format
	 * (see http://www.ietf.org/rfc/rfc2396.txt) from which the object's content
	 * may be streamed in the specified mime-type, if one is available.
	 * If mime_type is NULL, the URI for the default (and possibly only) mime-type is
	 * returned.
	 * Note that it is possible for get_uri to return NULL but for
	 * get_stream to work nonetheless, since not all GIOChannels connect to URIs.
	 * streamable:
	 *  a GObject instance that implements AtkStreamableContentIface
	 * mime_type:
	 *  a gchar* representing the mime type, or NULL to request a URI
	 * for the default mime type.
	 * Returns:
	 *  Returns a string representing a URI, or NULL if no corresponding URI
	 * can be constructed.
	 * Since ATK 1.12
	 */
	public char[] getUri(char[] mimeType)
	{
		// gchar* atk_streamable_content_get_uri (AtkStreamableContent *streamable,  const gchar *mime_type);
		return Str.toString(atk_streamable_content_get_uri(atkStreamableContent, Str.toStringz(mimeType)) );
	}
}
