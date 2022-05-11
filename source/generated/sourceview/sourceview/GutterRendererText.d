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


module sourceview.GutterRendererText;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import sourceview.GutterRenderer;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Renders text in the gutter.
 * 
 * A `GtkSourceGutterRendererText` can be used to render text in a cell of
 * [class@Gutter].
 */
public class GutterRendererText : GutterRenderer
{
	/** the main Gtk struct */
	protected GtkSourceGutterRendererText* gtkSourceGutterRendererText;

	/** Get the main Gtk struct */
	public GtkSourceGutterRendererText* getGutterRendererTextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceGutterRendererText;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceGutterRendererText;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceGutterRendererText* gtkSourceGutterRendererText, bool ownedRef = false)
	{
		this.gtkSourceGutterRendererText = gtkSourceGutterRendererText;
		super(cast(GtkSourceGutterRenderer*)gtkSourceGutterRendererText, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_gutter_renderer_text_get_type();
	}

	/**
	 * Create a new #GtkSourceGutterRendererText.
	 *
	 * Returns: A #GtkSourceGutterRenderer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_gutter_renderer_text_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceGutterRendererText*) __p, true);
	}

	/**
	 * Measures the text provided using the pango layout used by the
	 * #GtkSourceGutterRendererText.
	 *
	 * Params:
	 *     text = the text to measure.
	 *     width = location to store the width of the text in pixels,
	 *         or %NULL.
	 *     height = location to store the height of the text in
	 *         pixels, or %NULL.
	 */
	public void measure(string text, out int width, out int height)
	{
		gtk_source_gutter_renderer_text_measure(gtkSourceGutterRendererText, Str.toStringz(text), &width, &height);
	}

	/**
	 * Measures the pango markup provided using the pango layout used by the
	 * #GtkSourceGutterRendererText.
	 *
	 * Params:
	 *     markup = the pango markup to measure.
	 *     width = location to store the width of the text in pixels,
	 *         or %NULL.
	 *     height = location to store the height of the text in
	 *         pixels, or %NULL.
	 */
	public void measureMarkup(string markup, out int width, out int height)
	{
		gtk_source_gutter_renderer_text_measure_markup(gtkSourceGutterRendererText, Str.toStringz(markup), &width, &height);
	}

	/** */
	public void setMarkup(string markup, int length)
	{
		gtk_source_gutter_renderer_text_set_markup(gtkSourceGutterRendererText, Str.toStringz(markup), length);
	}

	/** */
	public void setText(string text, int length)
	{
		gtk_source_gutter_renderer_text_set_text(gtkSourceGutterRendererText, Str.toStringz(text), length);
	}
}
