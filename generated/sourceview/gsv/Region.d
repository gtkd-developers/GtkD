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


module gsv.Region;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gsv.RegionIter;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
private import gtk.TextBuffer;
private import gtk.TextIter;


/** */
public class Region : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceRegion* gtkSourceRegion;

	/** Get the main Gtk struct */
	public GtkSourceRegion* getRegionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceRegion;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceRegion;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceRegion* gtkSourceRegion, bool ownedRef = false)
	{
		this.gtkSourceRegion = gtkSourceRegion;
		super(cast(GObject*)gtkSourceRegion, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_region_get_type();
	}

	/**
	 *
	 * Params:
	 *     buffer = a #GtkTextBuffer.
	 * Returns: a new #GtkSourceRegion object for @buffer.
	 *
	 * Since: 3.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TextBuffer buffer)
	{
		auto p = gtk_source_region_new((buffer is null) ? null : buffer.getTextBufferStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceRegion*) p, true);
	}

	/**
	 * Adds @region_to_add to @region. @region_to_add is not modified.
	 *
	 * Params:
	 *     regionToAdd = the #GtkSourceRegion to add to @region, or %NULL.
	 *
	 * Since: 3.22
	 */
	public void addRegion(Region regionToAdd)
	{
		gtk_source_region_add_region(gtkSourceRegion, (regionToAdd is null) ? null : regionToAdd.getRegionStruct());
	}

	/**
	 * Adds the subregion delimited by @_start and @_end to @region.
	 *
	 * Params:
	 *     Start = the start of the subregion.
	 *     End = the end of the subregion.
	 *
	 * Since: 3.22
	 */
	public void addSubregion(TextIter Start, TextIter End)
	{
		gtk_source_region_add_subregion(gtkSourceRegion, (Start is null) ? null : Start.getTextIterStruct(), (End is null) ? null : End.getTextIterStruct());
	}

	/**
	 * Gets the @start and @end bounds of the @region.
	 *
	 * Params:
	 *     start = iterator to initialize with the start of @region,
	 *         or %NULL.
	 *     end = iterator to initialize with the end of @region,
	 *         or %NULL.
	 *
	 * Returns: %TRUE if @start and @end have been set successfully (if non-%NULL),
	 *     or %FALSE if the @region is empty.
	 *
	 * Since: 3.22
	 */
	public bool getBounds(out TextIter start, out TextIter end)
	{
		GtkTextIter* outstart = sliceNew!GtkTextIter();
		GtkTextIter* outend = sliceNew!GtkTextIter();

		auto p = gtk_source_region_get_bounds(gtkSourceRegion, outstart, outend) != 0;

		start = ObjectG.getDObject!(TextIter)(outstart, true);
		end = ObjectG.getDObject!(TextIter)(outend, true);

		return p;
	}

	/**
	 * Returns: the #GtkTextBuffer.
	 *
	 * Since: 3.22
	 */
	public TextBuffer getBuffer()
	{
		auto p = gtk_source_region_get_buffer(gtkSourceRegion);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextBuffer)(cast(GtkTextBuffer*) p);
	}

	/**
	 * Initializes a #GtkSourceRegionIter to the first subregion of @region. If
	 * @region is empty, @iter will be initialized to the end iterator.
	 *
	 * Params:
	 *     iter = iterator to initialize to the first subregion.
	 *
	 * Since: 3.22
	 */
	public void getStartRegionIter(out RegionIter iter)
	{
		GtkSourceRegionIter* outiter = sliceNew!GtkSourceRegionIter();

		gtk_source_region_get_start_region_iter(gtkSourceRegion, outiter);

		iter = ObjectG.getDObject!(RegionIter)(outiter, true);
	}

	/**
	 * Returns the intersection between @region1 and @region2. @region1 and
	 * @region2 are not modified.
	 *
	 * Params:
	 *     region2 = a #GtkSourceRegion, or %NULL.
	 *
	 * Returns: the intersection as a #GtkSourceRegion
	 *     object.
	 *
	 * Since: 3.22
	 */
	public Region intersectRegion(Region region2)
	{
		auto p = gtk_source_region_intersect_region(gtkSourceRegion, (region2 is null) ? null : region2.getRegionStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Region)(cast(GtkSourceRegion*) p, true);
	}

	/**
	 * Returns the intersection between @region and the subregion delimited by
	 * @_start and @_end. @region is not modified.
	 *
	 * Params:
	 *     Start = the start of the subregion.
	 *     End = the end of the subregion.
	 *
	 * Returns: the intersection as a new
	 *     #GtkSourceRegion.
	 *
	 * Since: 3.22
	 */
	public Region intersectSubregion(TextIter Start, TextIter End)
	{
		auto p = gtk_source_region_intersect_subregion(gtkSourceRegion, (Start is null) ? null : Start.getTextIterStruct(), (End is null) ? null : End.getTextIterStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Region)(cast(GtkSourceRegion*) p, true);
	}

	/**
	 * Returns whether the @region is empty. A %NULL @region is considered empty.
	 *
	 * Returns: whether the @region is empty.
	 *
	 * Since: 3.22
	 */
	public bool isEmpty()
	{
		return gtk_source_region_is_empty(gtkSourceRegion) != 0;
	}

	/**
	 * Subtracts @region_to_subtract from @region. @region_to_subtract is not
	 * modified.
	 *
	 * Params:
	 *     regionToSubtract = the #GtkSourceRegion to subtract from
	 *         @region, or %NULL.
	 *
	 * Since: 3.22
	 */
	public void subtractRegion(Region regionToSubtract)
	{
		gtk_source_region_subtract_region(gtkSourceRegion, (regionToSubtract is null) ? null : regionToSubtract.getRegionStruct());
	}

	/**
	 * Subtracts the subregion delimited by @_start and @_end from @region.
	 *
	 * Params:
	 *     Start = the start of the subregion.
	 *     End = the end of the subregion.
	 *
	 * Since: 3.22
	 */
	public void subtractSubregion(TextIter Start, TextIter End)
	{
		gtk_source_region_subtract_subregion(gtkSourceRegion, (Start is null) ? null : Start.getTextIterStruct(), (End is null) ? null : End.getTextIterStruct());
	}

	/**
	 * Gets a string represention of @region, for debugging purposes.
	 *
	 * The returned string contains the character offsets of the subregions. It
	 * doesn't include a newline character at the end of the string.
	 *
	 * Returns: a string represention of @region. Free
	 *     with g_free() when no longer needed.
	 *
	 * Since: 3.22
	 */
	public override string toString()
	{
		auto retStr = gtk_source_region_to_string(gtkSourceRegion);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
