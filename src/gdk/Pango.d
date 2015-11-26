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


module gdk.Pango;

private import cairo.Region;
private import gdk.Screen;
private import gobject.ObjectG;
private import gtkc.gdk;
public  import gtkc.gdktypes;
private import pango.PgContext;
private import pango.PgLayout;
private import pango.PgLayoutLine;


/** */

/**
 * Creates a #PangoContext for the default GDK screen.
 *
 * The context must be freed when you’re finished with it.
 *
 * When using GTK+, normally you should use gtk_widget_get_pango_context()
 * instead of this function, to get the appropriate context for
 * the widget you intend to render text onto.
 *
 * The newly created context will have the default font options (see
 * #cairo_font_options_t) for the default screen; if these options
 * change it will not be updated. Using gtk_widget_get_pango_context()
 * is more convenient if you want to keep a context around and track
 * changes to the screen’s font rendering settings.
 *
 * Return: a new #PangoContext for the default display
 */
public PgContext contextGet()
{
	auto p = gdk_pango_context_get();
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p, true);
}

/**
 * Creates a #PangoContext for @screen.
 *
 * The context must be freed when you’re finished with it.
 *
 * When using GTK+, normally you should use gtk_widget_get_pango_context()
 * instead of this function, to get the appropriate context for
 * the widget you intend to render text onto.
 *
 * The newly created context will have the default font options
 * (see #cairo_font_options_t) for the screen; if these options
 * change it will not be updated. Using gtk_widget_get_pango_context()
 * is more convenient if you want to keep a context around and track
 * changes to the screen’s font rendering settings.
 *
 * Params:
 *     screen = the #GdkScreen for which the context is to be created.
 *
 * Return: a new #PangoContext for @screen
 *
 * Since: 2.2
 */
public PgContext contextGetForScreen(Screen screen)
{
	auto p = gdk_pango_context_get_for_screen((screen is null) ? null : screen.getScreenStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(PgContext)(cast(PangoContext*) p, true);
}

/**
 * Obtains a clip region which contains the areas where the given ranges
 * of text would be drawn. @x_origin and @y_origin are the top left point
 * to center the layout. @index_ranges should contain
 * ranges of bytes in the layout’s text.
 *
 * Note that the regions returned correspond to logical extents of the text
 * ranges, not ink extents. So the drawn layout may in fact touch areas out of
 * the clip region.  The clip region is mainly useful for highlightling parts
 * of text, such as when text is selected.
 *
 * Params:
 *     layout = a #PangoLayout
 *     xOrigin = X pixel where you intend to draw the layout with this clip
 *     yOrigin = Y pixel where you intend to draw the layout with this clip
 *     indexRanges = array of byte indexes into the layout, where even members of array are start indexes and odd elements are end indexes
 *     nRanges = number of ranges in @index_ranges, i.e. half the size of @index_ranges
 *
 * Return: a clip region containing the given ranges
 */
public Region layoutGetClipRegion(PgLayout layout, int xOrigin, int yOrigin, int* indexRanges, int nRanges)
{
	auto p = gdk_pango_layout_get_clip_region((layout is null) ? null : layout.getPgLayoutStruct(), xOrigin, yOrigin, indexRanges, nRanges);
	
	if(p is null)
	{
		return null;
	}
	
	return new Region(cast(cairo_region_t*) p);
}

/**
 * Obtains a clip region which contains the areas where the given
 * ranges of text would be drawn. @x_origin and @y_origin are the top left
 * position of the layout. @index_ranges
 * should contain ranges of bytes in the layout’s text. The clip
 * region will include space to the left or right of the line (to the
 * layout bounding box) if you have indexes above or below the indexes
 * contained inside the line. This is to draw the selection all the way
 * to the side of the layout. However, the clip region is in line coordinates,
 * not layout coordinates.
 *
 * Note that the regions returned correspond to logical extents of the text
 * ranges, not ink extents. So the drawn line may in fact touch areas out of
 * the clip region.  The clip region is mainly useful for highlightling parts
 * of text, such as when text is selected.
 *
 * Params:
 *     line = a #PangoLayoutLine
 *     xOrigin = X pixel where you intend to draw the layout line with this clip
 *     yOrigin = baseline pixel where you intend to draw the layout line with this clip
 *     indexRanges = array of byte indexes into the layout,
 *         where even members of array are start indexes and odd elements
 *         are end indexes
 *     nRanges = number of ranges in @index_ranges, i.e. half the size of @index_ranges
 *
 * Return: a clip region containing the given ranges
 */
public Region layoutLineGetClipRegion(PgLayoutLine line, int xOrigin, int yOrigin, int[] indexRanges, int nRanges)
{
	auto p = gdk_pango_layout_line_get_clip_region((line is null) ? null : line.getPgLayoutLineStruct(), xOrigin, yOrigin, indexRanges.ptr, nRanges);
	
	if(p is null)
	{
		return null;
	}
	
	return new Region(cast(cairo_region_t*) p);
}
