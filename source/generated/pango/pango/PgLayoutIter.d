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


module pango.PgLayoutIter;

private import gobject.ObjectG;
private import linker.Loader;
private import pango.PgLayout;
private import pango.PgLayoutLine;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoLayoutIter` can be used to iterate over the visual
 * extents of a `PangoLayout`.
 * 
 * To obtain a `PangoLayoutIter`, use [method@Pango.Layout.get_iter].
 * 
 * The `PangoLayoutIter` structure is opaque, and has no user-visible fields.
 */
public class PgLayoutIter
{
	/** the main Gtk struct */
	protected PangoLayoutIter* pangoLayoutIter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoLayoutIter* getPgLayoutIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoLayoutIter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoLayoutIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoLayoutIter* pangoLayoutIter, bool ownedRef = false)
	{
		this.pangoLayoutIter = pangoLayoutIter;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_layout_iter_free(pangoLayoutIter);
	}


	/** */
	public static GType getType()
	{
		return pango_layout_iter_get_type();
	}

	/**
	 * Determines whether @iter is on the last line of the layout.
	 *
	 * Returns: %TRUE if @iter is on the last line
	 */
	public bool atLastLine()
	{
		return pango_layout_iter_at_last_line(pangoLayoutIter) != 0;
	}

	/**
	 * Copies a `PangoLayoutIter`.
	 *
	 * Returns: the newly allocated `PangoLayoutIter`
	 *
	 * Since: 1.20
	 */
	public PgLayoutIter copy()
	{
		auto __p = pango_layout_iter_copy(pangoLayoutIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayoutIter)(cast(PangoLayoutIter*) __p, true);
	}

	/**
	 * Frees an iterator that's no longer in use.
	 */
	public void free()
	{
		pango_layout_iter_free(pangoLayoutIter);
		ownedRef = false;
	}

	/**
	 * Gets the Y position of the current line's baseline, in layout
	 * coordinates.
	 *
	 * Layout coordinates have the origin at the top left of the entire layout.
	 *
	 * Returns: baseline of current line
	 */
	public int getBaseline()
	{
		return pango_layout_iter_get_baseline(pangoLayoutIter);
	}

	/**
	 * Gets the extents of the current character, in layout coordinates.
	 *
	 * Layout coordinates have the origin at the top left of the entire layout.
	 *
	 * Only logical extents can sensibly be obtained for characters;
	 * ink extents make sense only down to the level of clusters.
	 *
	 * Params:
	 *     logicalRect = rectangle to fill with
	 *         logical extents
	 */
	public void getCharExtents(out PangoRectangle logicalRect)
	{
		pango_layout_iter_get_char_extents(pangoLayoutIter, &logicalRect);
	}

	/**
	 * Gets the extents of the current cluster, in layout coordinates.
	 *
	 * Layout coordinates have the origin at the top left of the entire layout.
	 *
	 * Params:
	 *     inkRect = rectangle to fill with ink extents
	 *     logicalRect = rectangle to fill with logical extents
	 */
	public void getClusterExtents(out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_layout_iter_get_cluster_extents(pangoLayoutIter, &inkRect, &logicalRect);
	}

	/**
	 * Gets the current byte index.
	 *
	 * Note that iterating forward by char moves in visual order,
	 * not logical order, so indexes may not be sequential. Also,
	 * the index may be equal to the length of the text in the
	 * layout, if on the %NULL run (see [method@Pango.LayoutIter.get_run]).
	 *
	 * Returns: current byte index
	 */
	public int getIndex()
	{
		return pango_layout_iter_get_index(pangoLayoutIter);
	}

	/**
	 * Gets the layout associated with a `PangoLayoutIter`.
	 *
	 * Returns: the layout associated with @iter
	 *
	 * Since: 1.20
	 */
	public PgLayout getLayout()
	{
		auto __p = pango_layout_iter_get_layout(pangoLayoutIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) __p);
	}

	/**
	 * Obtains the extents of the `PangoLayout` being iterated over.
	 *
	 * Params:
	 *     inkRect = rectangle to fill with ink extents
	 *     logicalRect = rectangle to fill with logical extents
	 */
	public void getLayoutExtents(out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_layout_iter_get_layout_extents(pangoLayoutIter, &inkRect, &logicalRect);
	}

	/**
	 * Gets the current line.
	 *
	 * Use the faster [method@Pango.LayoutIter.get_line_readonly] if
	 * you do not plan to modify the contents of the line (glyphs,
	 * glyph widths, etc.).
	 *
	 * Returns: the current line
	 */
	public PgLayoutLine getLine()
	{
		auto __p = pango_layout_iter_get_line(pangoLayoutIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayoutLine)(cast(PangoLayoutLine*) __p);
	}

	/**
	 * Obtains the extents of the current line.
	 *
	 * Extents are in layout coordinates (origin is the top-left corner
	 * of the entire `PangoLayout`). Thus the extents returned by this
	 * function will be the same width/height but not at the same x/y
	 * as the extents returned from [method@Pango.LayoutLine.get_extents].
	 *
	 * Params:
	 *     inkRect = rectangle to fill with ink extents
	 *     logicalRect = rectangle to fill with logical extents
	 */
	public void getLineExtents(out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_layout_iter_get_line_extents(pangoLayoutIter, &inkRect, &logicalRect);
	}

	/**
	 * Gets the current line for read-only access.
	 *
	 * This is a faster alternative to [method@Pango.LayoutIter.get_line],
	 * but the user is not expected to modify the contents of the line
	 * (glyphs, glyph widths, etc.).
	 *
	 * Returns: the current line, that should not be
	 *     modified
	 *
	 * Since: 1.16
	 */
	public PgLayoutLine getLineReadonly()
	{
		auto __p = pango_layout_iter_get_line_readonly(pangoLayoutIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayoutLine)(cast(PangoLayoutLine*) __p);
	}

	/**
	 * Divides the vertical space in the `PangoLayout` being iterated over
	 * between the lines in the layout, and returns the space belonging to
	 * the current line.
	 *
	 * A line's range includes the line's logical extents. plus half of the
	 * spacing above and below the line, if [method@Pango.Layout.set_spacing]
	 * has been called to set layout spacing. The Y positions are in layout
	 * coordinates (origin at top left of the entire layout).
	 *
	 * Note: Since 1.44, Pango uses line heights for placing lines, and there
	 * may be gaps between the ranges returned by this function.
	 *
	 * Params:
	 *     y0 = start of line
	 *     y1 = end of line
	 */
	public void getLineYrange(out int y0, out int y1)
	{
		pango_layout_iter_get_line_yrange(pangoLayoutIter, &y0, &y1);
	}

	/**
	 * Gets the current run.
	 *
	 * When iterating by run, at the end of each line, there's a position
	 * with a %NULL run, so this function can return %NULL. The %NULL run
	 * at the end of each line ensures that all lines have at least one run,
	 * even lines consisting of only a newline.
	 *
	 * Use the faster [method@Pango.LayoutIter.get_run_readonly] if you do not
	 * plan to modify the contents of the run (glyphs, glyph widths, etc.).
	 *
	 * Returns: the current run
	 */
	public PangoLayoutRun* getRun()
	{
		return pango_layout_iter_get_run(pangoLayoutIter);
	}

	/**
	 * Gets the Y position of the current run's baseline, in layout
	 * coordinates.
	 *
	 * Layout coordinates have the origin at the top left of the entire layout.
	 *
	 * The run baseline can be different from the line baseline, for
	 * example due to superscript or subscript positioning.
	 *
	 * Since: 1.50
	 */
	public int getRunBaseline()
	{
		return pango_layout_iter_get_run_baseline(pangoLayoutIter);
	}

	/**
	 * Gets the extents of the current run in layout coordinates.
	 *
	 * Layout coordinates have the origin at the top left of the entire layout.
	 *
	 * Params:
	 *     inkRect = rectangle to fill with ink extents
	 *     logicalRect = rectangle to fill with logical extents
	 */
	public void getRunExtents(out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_layout_iter_get_run_extents(pangoLayoutIter, &inkRect, &logicalRect);
	}

	/**
	 * Gets the current run for read-only access.
	 *
	 * When iterating by run, at the end of each line, there's a position
	 * with a %NULL run, so this function can return %NULL. The %NULL run
	 * at the end of each line ensures that all lines have at least one run,
	 * even lines consisting of only a newline.
	 *
	 * This is a faster alternative to [method@Pango.LayoutIter.get_run],
	 * but the user is not expected to modify the contents of the run (glyphs,
	 * glyph widths, etc.).
	 *
	 * Returns: the current run, that
	 *     should not be modified
	 *
	 * Since: 1.16
	 */
	public PangoLayoutRun* getRunReadonly()
	{
		return pango_layout_iter_get_run_readonly(pangoLayoutIter);
	}

	/**
	 * Moves @iter forward to the next character in visual order.
	 *
	 * If @iter was already at the end of the layout, returns %FALSE.
	 *
	 * Returns: whether motion was possible
	 */
	public bool nextChar()
	{
		return pango_layout_iter_next_char(pangoLayoutIter) != 0;
	}

	/**
	 * Moves @iter forward to the next cluster in visual order.
	 *
	 * If @iter was already at the end of the layout, returns %FALSE.
	 *
	 * Returns: whether motion was possible
	 */
	public bool nextCluster()
	{
		return pango_layout_iter_next_cluster(pangoLayoutIter) != 0;
	}

	/**
	 * Moves @iter forward to the start of the next line.
	 *
	 * If @iter is already on the last line, returns %FALSE.
	 *
	 * Returns: whether motion was possible
	 */
	public bool nextLine()
	{
		return pango_layout_iter_next_line(pangoLayoutIter) != 0;
	}

	/**
	 * Moves @iter forward to the next run in visual order.
	 *
	 * If @iter was already at the end of the layout, returns %FALSE.
	 *
	 * Returns: whether motion was possible
	 */
	public bool nextRun()
	{
		return pango_layout_iter_next_run(pangoLayoutIter) != 0;
	}
}
