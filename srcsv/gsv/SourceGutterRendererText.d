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
 * inFile  = gtksourceview-3.0-GtkSourceGutterRendererText.html
 * outPack = gsv
 * outFile = SourceGutterRendererText
 * strct   = GtkSourceGutterRendererText
 * realStrct=
 * ctorStrct=GtkSourceGutterRenderer
 * clss    = SourceGutterRendererText
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GtkSourceGutterRenderer
 * implements:
 * prefixes:
 * 	- gtk_source_gutter_renderer_text_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceGutterRendererText;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gsv.SourceGutterRenderer;

/**
 * Description
 */
public class SourceGutterRendererText : SourceGutterRenderer
{
	
	/** the main Gtk struct */
	protected GtkSourceGutterRendererText* gtkSourceGutterRendererText;
	
	
	public GtkSourceGutterRendererText* getSourceGutterRendererTextStruct()
	{
		return gtkSourceGutterRendererText;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceGutterRendererText;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceGutterRendererText* gtkSourceGutterRendererText)
	{
		super(cast(GtkSourceGutterRenderer*)gtkSourceGutterRendererText);
		this.gtkSourceGutterRendererText = gtkSourceGutterRendererText;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceGutterRendererText = cast(GtkSourceGutterRendererText*)obj;
	}
	
	/**
	 */
	
	/**
	 * Create a new GtkSourceGutterRendererText.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkSourceGutterRenderer * gtk_source_gutter_renderer_text_new  (void);
		auto p = gtk_source_gutter_renderer_text_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_gutter_renderer_text_new()");
		}
		this(cast(GtkSourceGutterRendererText*) p);
	}
	
	/**
	 */
	public void setMarkup(string markup, int length)
	{
		// void gtk_source_gutter_renderer_text_set_markup  (GtkSourceGutterRendererText *renderer,  const gchar *markup,  gint length);
		gtk_source_gutter_renderer_text_set_markup(gtkSourceGutterRendererText, Str.toStringz(markup), length);
	}
	
	/**
	 */
	public void setText(string text, int length)
	{
		// void gtk_source_gutter_renderer_text_set_text  (GtkSourceGutterRendererText *renderer,  const gchar *text,  gint length);
		gtk_source_gutter_renderer_text_set_text(gtkSourceGutterRendererText, Str.toStringz(text), length);
	}
	
	/**
	 */
	public void measure(string text, int* width, int* height)
	{
		// void gtk_source_gutter_renderer_text_measure  (GtkSourceGutterRendererText *renderer,  const gchar *text,  gint *width,  gint *height);
		gtk_source_gutter_renderer_text_measure(gtkSourceGutterRendererText, Str.toStringz(text), width, height);
	}
	
	/**
	 */
	public void measureMarkup(string markup, int* width, int* height)
	{
		// void gtk_source_gutter_renderer_text_measure_markup  (GtkSourceGutterRendererText *renderer,  const gchar *markup,  gint *width,  gint *height);
		gtk_source_gutter_renderer_text_measure_markup(gtkSourceGutterRendererText, Str.toStringz(markup), width, height);
	}
}
