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
 * inFile  = 
 * outPack = pango
 * outFile = PgLayoutIter
 * strct   = PangoLayoutIter
 * realStrct=
 * ctorStrct=
 * clss    = PgLayoutIter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_layout_iter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- pango.PgLayout
 * 	- pango.PgLayoutLine
 * structWrap:
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoLayoutLine* -> PgLayoutLine
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgLayoutIter;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import pango.PgLayout;
private import pango.PgLayoutLine;




/**
 * Description
 * While complete access to the layout capabilities of Pango is provided
 * using the detailed interfaces for itemization and shaping, using
 * that functionality directly involves writing a fairly large amount
 * of code. The objects and functions in this section provide a
 * high-level driver for formatting entire paragraphs of text
 * at once.
 */
public class PgLayoutIter
{
	
	/** the main Gtk struct */
	protected PangoLayoutIter* pangoLayoutIter;
	
	
	public PangoLayoutIter* getPgLayoutIterStruct()
	{
		return pangoLayoutIter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoLayoutIter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoLayoutIter* pangoLayoutIter)
	{
		this.pangoLayoutIter = pangoLayoutIter;
	}
	
	/**
	 */
	
	/**
	 * Copies a PangoLayoutIter.
	 * Since 1.20
	 * Returns: the newly allocated PangoLayoutIter, which should be freed with pango_layout_iter_free(), or NULL if iter was NULL.
	 */
	public PgLayoutIter copy()
	{
		// PangoLayoutIter * pango_layout_iter_copy (PangoLayoutIter *iter);
		auto p = pango_layout_iter_copy(pangoLayoutIter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayoutIter)(cast(PangoLayoutIter*) p);
	}
	
	/**
	 * Frees an iterator that's no longer in use.
	 */
	public void free()
	{
		// void pango_layout_iter_free (PangoLayoutIter *iter);
		pango_layout_iter_free(pangoLayoutIter);
	}
	
	/**
	 * Moves iter forward to the next run in visual order. If iter was
	 * already at the end of the layout, returns FALSE.
	 * Returns: whether motion was possible.
	 */
	public int nextRun()
	{
		// gboolean pango_layout_iter_next_run (PangoLayoutIter *iter);
		return pango_layout_iter_next_run(pangoLayoutIter);
	}
	
	/**
	 * Moves iter forward to the next character in visual order. If iter was already at
	 * the end of the layout, returns FALSE.
	 * Returns: whether motion was possible.
	 */
	public int nextChar()
	{
		// gboolean pango_layout_iter_next_char (PangoLayoutIter *iter);
		return pango_layout_iter_next_char(pangoLayoutIter);
	}
	
	/**
	 * Moves iter forward to the next cluster in visual order. If iter
	 * was already at the end of the layout, returns FALSE.
	 * Returns: whether motion was possible.
	 */
	public int nextCluster()
	{
		// gboolean pango_layout_iter_next_cluster (PangoLayoutIter *iter);
		return pango_layout_iter_next_cluster(pangoLayoutIter);
	}
	
	/**
	 * Moves iter forward to the start of the next line. If iter is
	 * already on the last line, returns FALSE.
	 * Returns: whether motion was possible.
	 */
	public int nextLine()
	{
		// gboolean pango_layout_iter_next_line (PangoLayoutIter *iter);
		return pango_layout_iter_next_line(pangoLayoutIter);
	}
	
	/**
	 * Determines whether iter is on the last line of the layout.
	 * Returns: TRUE if iter is on the last line.
	 */
	public int atLastLine()
	{
		// gboolean pango_layout_iter_at_last_line (PangoLayoutIter *iter);
		return pango_layout_iter_at_last_line(pangoLayoutIter);
	}
	
	/**
	 * Gets the current byte index. Note that iterating forward by char
	 * moves in visual order, not logical order, so indexes may not be
	 * sequential. Also, the index may be equal to the length of the text
	 * in the layout, if on the NULL run (see pango_layout_iter_get_run()).
	 * Returns: current byte index.
	 */
	public int getIndex()
	{
		// int pango_layout_iter_get_index (PangoLayoutIter *iter);
		return pango_layout_iter_get_index(pangoLayoutIter);
	}
	
	/**
	 * Gets the Y position of the current line's baseline, in layout
	 * coordinates (origin at top left of the entire layout).
	 * Returns: baseline of current line.
	 */
	public int getBaseline()
	{
		// int pango_layout_iter_get_baseline (PangoLayoutIter *iter);
		return pango_layout_iter_get_baseline(pangoLayoutIter);
	}
	
	/**
	 * Gets the current run. When iterating by run, at the end of each
	 * line, there's a position with a NULL run, so this function can return
	 * NULL. The NULL run at the end of each line ensures that all lines have
	 * at least one run, even lines consisting of only a newline.
	 * Use the faster pango_layout_iter_get_run_readonly() if you do not plan
	 * to modify the contents of the run (glyphs, glyph widths, etc.).
	 * Returns: the current run. [transfer none]
	 */
	public PangoLayoutRun* getRun()
	{
		// PangoLayoutRun * pango_layout_iter_get_run (PangoLayoutIter *iter);
		return pango_layout_iter_get_run(pangoLayoutIter);
	}
	
	/**
	 * Gets the current run. When iterating by run, at the end of each
	 * line, there's a position with a NULL run, so this function can return
	 * NULL. The NULL run at the end of each line ensures that all lines have
	 * at least one run, even lines consisting of only a newline.
	 * This is a faster alternative to pango_layout_iter_get_run(),
	 * but the user is not expected
	 * to modify the contents of the run (glyphs, glyph widths, etc.).
	 * Since 1.16
	 * Returns: the current run, that should not be modified. [transfer none]
	 */
	public PangoLayoutRun* getRunReadonly()
	{
		// PangoLayoutRun * pango_layout_iter_get_run_readonly (PangoLayoutIter *iter);
		return pango_layout_iter_get_run_readonly(pangoLayoutIter);
	}
	
	/**
	 * Gets the current line.
	 * Use the faster pango_layout_iter_get_line_readonly() if you do not plan
	 * to modify the contents of the line (glyphs, glyph widths, etc.).
	 * Returns: the current line.
	 */
	public PgLayoutLine getLine()
	{
		// PangoLayoutLine * pango_layout_iter_get_line (PangoLayoutIter *iter);
		auto p = pango_layout_iter_get_line(pangoLayoutIter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayoutLine)(cast(PangoLayoutLine*) p);
	}
	
	/**
	 * Gets the current line for read-only access.
	 * This is a faster alternative to pango_layout_iter_get_line(),
	 * but the user is not expected
	 * to modify the contents of the line (glyphs, glyph widths, etc.).
	 * Since 1.16
	 * Returns: the current line, that should not be modified. [transfer none]
	 */
	public PgLayoutLine getLineReadonly()
	{
		// PangoLayoutLine * pango_layout_iter_get_line_readonly (PangoLayoutIter *iter);
		auto p = pango_layout_iter_get_line_readonly(pangoLayoutIter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayoutLine)(cast(PangoLayoutLine*) p);
	}
	
	/**
	 * Gets the layout associated with a PangoLayoutIter.
	 * Since 1.20
	 * Returns: the layout associated with iter. [transfer none]
	 */
	public PgLayout getLayout()
	{
		// PangoLayout * pango_layout_iter_get_layout (PangoLayoutIter *iter);
		auto p = pango_layout_iter_get_layout(pangoLayoutIter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) p);
	}
	
	/**
	 * Gets the extents of the current character, in layout coordinates
	 * (origin is the top left of the entire layout). Only logical extents
	 * can sensibly be obtained for characters; ink extents make sense only
	 * down to the level of clusters.
	 * Params:
	 * logicalRect = rectangle to fill with
	 * logical extents. [out caller-allocates]
	 */
	public void getCharExtents(PangoRectangle* logicalRect)
	{
		// void pango_layout_iter_get_char_extents (PangoLayoutIter *iter,  PangoRectangle *logical_rect);
		pango_layout_iter_get_char_extents(pangoLayoutIter, logicalRect);
	}
	
	/**
	 * Gets the extents of the current cluster, in layout coordinates
	 * (origin is the top left of the entire layout).
	 * Params:
	 * inkRect = rectangle to fill with ink extents, or NULL. [out][allow-none]
	 * logicalRect = rectangle to fill with logical extents, or NULL. [out][allow-none]
	 */
	public void getClusterExtents(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_layout_iter_get_cluster_extents  (PangoLayoutIter *iter,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_layout_iter_get_cluster_extents(pangoLayoutIter, inkRect, logicalRect);
	}
	
	/**
	 * Gets the extents of the current run in layout coordinates
	 * (origin is the top left of the entire layout).
	 * Params:
	 * inkRect = rectangle to fill with ink extents, or NULL. [out][allow-none]
	 * logicalRect = rectangle to fill with logical extents, or NULL. [out][allow-none]
	 */
	public void getRunExtents(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_layout_iter_get_run_extents (PangoLayoutIter *iter,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_layout_iter_get_run_extents(pangoLayoutIter, inkRect, logicalRect);
	}
	
	/**
	 * Divides the vertical space in the PangoLayout being iterated over
	 * between the lines in the layout, and returns the space belonging to
	 * the current line. A line's range includes the line's logical
	 * extents, plus half of the spacing above and below the line, if
	 * pango_layout_set_spacing() has been called to set layout spacing.
	 * The Y positions are in layout coordinates (origin at top left of the
	 * entire layout).
	 * Params:
	 * y0_ = start of line, or NULL. [out][allow-none]
	 * y1_ = end of line, or NULL. [out][allow-none]
	 */
	public void getLineYrange(out int y0_, out int y1_)
	{
		// void pango_layout_iter_get_line_yrange (PangoLayoutIter *iter,  int *y0_,  int *y1_);
		pango_layout_iter_get_line_yrange(pangoLayoutIter, &y0_, &y1_);
	}
	
	/**
	 * Obtains the extents of the current line. ink_rect or logical_rect
	 * can be NULL if you aren't interested in them. Extents are in layout
	 * coordinates (origin is the top-left corner of the entire
	 * PangoLayout). Thus the extents returned by this function will be
	 * the same width/height but not at the same x/y as the extents
	 * returned from pango_layout_line_get_extents().
	 * Params:
	 * inkRect = rectangle to fill with ink extents, or NULL. [out][allow-none]
	 * logicalRect = rectangle to fill with logical extents, or NULL. [out][allow-none]
	 */
	public void getLineExtents(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_layout_iter_get_line_extents (PangoLayoutIter *iter,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_layout_iter_get_line_extents(pangoLayoutIter, inkRect, logicalRect);
	}
	
	/**
	 * Obtains the extents of the PangoLayout being iterated
	 * over. ink_rect or logical_rect can be NULL if you
	 * aren't interested in them.
	 * Params:
	 * inkRect = rectangle to fill with ink extents,
	 * or NULL. [out][allow-none]
	 * logicalRect = rectangle to fill with logical
	 * extents, or NULL. [out][allow-none]
	 */
	public void getLayoutExtents(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_layout_iter_get_layout_extents  (PangoLayoutIter *iter,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_layout_iter_get_layout_extents(pangoLayoutIter, inkRect, logicalRect);
	}
}
