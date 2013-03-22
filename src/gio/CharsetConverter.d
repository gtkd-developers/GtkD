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
 * inFile  = GCharsetConverter.html
 * outPack = gio
 * outFile = CharsetConverter
 * strct   = GCharsetConverter
 * realStrct=
 * ctorStrct=
 * clss    = CharsetConverter
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ConverterIF
 * prefixes:
 * 	- g_charset_converter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.ConverterT
 * 	- gio.ConverterIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.CharsetConverter;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.ConverterT;
private import gio.ConverterIF;



private import gobject.ObjectG;

/**
 * GCharsetConverter is an implementation of GConverter based on
 * GIConv.
 */
public class CharsetConverter : ObjectG, ConverterIF
{
	
	/** the main Gtk struct */
	protected GCharsetConverter* gCharsetConverter;
	
	
	public GCharsetConverter* getCharsetConverterStruct()
	{
		return gCharsetConverter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gCharsetConverter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GCharsetConverter* gCharsetConverter)
	{
		super(cast(GObject*)gCharsetConverter);
		this.gCharsetConverter = gCharsetConverter;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gCharsetConverter = cast(GCharsetConverter*)obj;
	}
	
	// add the Converter capabilities
	mixin ConverterT!(GCharsetConverter);
	
	/**
	 */
	
	/**
	 * Creates a new GCharsetConverter.
	 * Since 2.24
	 * Params:
	 * toCharset = destination charset
	 * fromCharset = source charset
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string toCharset, string fromCharset)
	{
		// GCharsetConverter * g_charset_converter_new (const gchar *to_charset,  const gchar *from_charset,  GError **error);
		GError* err = null;
		
		auto p = g_charset_converter_new(Str.toStringz(toCharset), Str.toStringz(fromCharset), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_charset_converter_new(Str.toStringz(toCharset), Str.toStringz(fromCharset), &err)");
		}
		this(cast(GCharsetConverter*) p);
	}
	
	/**
	 * Sets the "use-fallback" property.
	 * Since 2.24
	 * Params:
	 * useFallback = TRUE to use fallbacks
	 */
	public void setUseFallback(int useFallback)
	{
		// void g_charset_converter_set_use_fallback  (GCharsetConverter *converter,  gboolean use_fallback);
		g_charset_converter_set_use_fallback(gCharsetConverter, useFallback);
	}
	
	/**
	 * Gets the "use-fallback" property.
	 * Since 2.24
	 * Returns: TRUE if fallbacks are used by converter
	 */
	public int getUseFallback()
	{
		// gboolean g_charset_converter_get_use_fallback  (GCharsetConverter *converter);
		return g_charset_converter_get_use_fallback(gCharsetConverter);
	}
	
	/**
	 * Gets the number of fallbacks that converter has applied so far.
	 * Since 2.24
	 * Returns: the number of fallbacks that converter has applied
	 */
	public uint getNumFallbacks()
	{
		// guint g_charset_converter_get_num_fallbacks  (GCharsetConverter *converter);
		return g_charset_converter_get_num_fallbacks(gCharsetConverter);
	}
}
