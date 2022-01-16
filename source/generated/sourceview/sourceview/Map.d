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


module sourceview.Map;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;
private import sourceview.View;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Widget that displays a map for a specific [class@View].
 * 
 * `GtkSourceMap` is a widget that maps the content of a [class@View] into
 * a smaller view so the user can have a quick overview of the whole document.
 * 
 * This works by connecting a [class@View] to to the `GtkSourceMap` using
 * the [property@Map:view] property or [method@Map.set_view].
 * 
 * `GtkSourceMap` is a [class@View] object. This means that you can add a
 * [class@GutterRenderer] to a gutter in the same way you would for a
 * [class@View]. One example might be a [class@GutterRenderer] that shows
 * which lines have changed in the document.
 * 
 * Additionally, it is desirable to match the font of the `GtkSourceMap` and
 * the [class@View] used for editing. Therefore, [property@Map:font-desc]
 * should be used to set the target font. You will need to adjust this to the
 * desired font size for the map. A 1pt font generally seems to be an
 * appropriate font size. "Monospace 1" is the default. See
 * [method@Pango.FontDescription.set_size] for how to alter the size of an existing
 * [struct@Pango.FontDescription].
 * 
 * When FontConfig is available, `GtkSourceMap` will try to use a bundled
 * "block" font to make the map more legible.
 */
public class Map : View
{
	/** the main Gtk struct */
	protected GtkSourceMap* gtkSourceMap;

	/** Get the main Gtk struct */
	public GtkSourceMap* getMapStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceMap;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceMap;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceMap* gtkSourceMap, bool ownedRef = false)
	{
		this.gtkSourceMap = gtkSourceMap;
		super(cast(GtkSourceView*)gtkSourceMap, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_map_get_type();
	}

	/**
	 * Creates a new `GtkSourceMap`.
	 *
	 * Returns: a new #GtkSourceMap.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_map_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceMap*) __p);
	}

	/**
	 * Gets the [property@Map:view] property, which is the view this widget is mapping.
	 *
	 * Returns: a #GtkSourceView or %NULL.
	 */
	public View getView()
	{
		auto __p = gtk_source_map_get_view(gtkSourceMap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(View)(cast(GtkSourceView*) __p);
	}

	/**
	 * Sets the view that @map will be doing the mapping to.
	 *
	 * Params:
	 *     view = a #GtkSourceView
	 */
	public void setView(View view)
	{
		gtk_source_map_set_view(gtkSourceMap, (view is null) ? null : view.getViewStruct());
	}
}
