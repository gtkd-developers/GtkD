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


module gstreamer.TocEntry;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gstreamer.TagList;
private import gstreamer.Toc;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/** */
public class TocEntry
{
	/** the main Gtk struct */
	protected GstTocEntry* gstTocEntry;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstTocEntry* getTocEntryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstTocEntry;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstTocEntry;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstTocEntry* gstTocEntry, bool ownedRef = false)
	{
		this.gstTocEntry = gstTocEntry;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_toc_entry_get_type();
	}

	/**
	 * Create new #GstTocEntry structure.
	 *
	 * Params:
	 *     type = entry type.
	 *     uid = unique ID (UID) in the whole TOC.
	 *
	 * Returns: newly allocated #GstTocEntry structure, free it with gst_toc_entry_unref().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstTocEntryType type, string uid)
	{
		auto __p = gst_toc_entry_new(type, Str.toStringz(uid));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstTocEntry*) __p);
	}

	/**
	 * Appends the #GstTocEntry @subentry to @entry.
	 *
	 * Params:
	 *     subentry = A #GstTocEntry
	 */
	public void appendSubEntry(TocEntry subentry)
	{
		gst_toc_entry_append_sub_entry(gstTocEntry, (subentry is null) ? null : subentry.getTocEntryStruct());
	}

	/**
	 * Returns: @entry's entry type
	 */
	public GstTocEntryType getEntryType()
	{
		return gst_toc_entry_get_entry_type(gstTocEntry);
	}

	/**
	 * Get @loop_type and @repeat_count values from the @entry and write them into
	 * appropriate storages. Loops are e.g. used by sampled instruments. GStreamer
	 * is not automatically applying the loop. The application can process this
	 * meta data and use it e.g. to send a seek-event to loop a section.
	 *
	 * Params:
	 *     loopType = the storage for the loop_type
	 *         value, leave %NULL if not need.
	 *     repeatCount = the storage for the repeat_count
	 *         value, leave %NULL if not need.
	 *
	 * Returns: %TRUE if all non-%NULL storage pointers were filled with appropriate
	 *     values, %FALSE otherwise.
	 *
	 * Since: 1.4
	 */
	public bool getLoop(out GstTocLoopType loopType, out int repeatCount)
	{
		return gst_toc_entry_get_loop(gstTocEntry, &loopType, &repeatCount) != 0;
	}

	/**
	 * Gets the parent #GstTocEntry of @entry.
	 *
	 * Returns: The parent #GstTocEntry of @entry
	 */
	public TocEntry getParent()
	{
		auto __p = gst_toc_entry_get_parent(gstTocEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TocEntry)(cast(GstTocEntry*) __p);
	}

	/**
	 * Get @start and @stop values from the @entry and write them into appropriate
	 * storages.
	 *
	 * Params:
	 *     start = the storage for the start value, leave
	 *         %NULL if not need.
	 *     stop = the storage for the stop value, leave
	 *         %NULL if not need.
	 *
	 * Returns: %TRUE if all non-%NULL storage pointers were filled with appropriate
	 *     values, %FALSE otherwise.
	 */
	public bool getStartStopTimes(out long start, out long stop)
	{
		return gst_toc_entry_get_start_stop_times(gstTocEntry, &start, &stop) != 0;
	}

	/**
	 * Gets the sub-entries of @entry.
	 *
	 * Returns: A #GList of #GstTocEntry of @entry
	 */
	public ListG getSubEntries()
	{
		auto __p = gst_toc_entry_get_sub_entries(gstTocEntry);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the tags for @entry.
	 *
	 * Returns: A #GstTagList for @entry
	 */
	public TagList getTags()
	{
		auto __p = gst_toc_entry_get_tags(gstTocEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TagList)(cast(GstTagList*) __p);
	}

	/**
	 * Gets the parent #GstToc of @entry.
	 *
	 * Returns: The parent #GstToc of @entry
	 */
	public Toc getToc()
	{
		auto __p = gst_toc_entry_get_toc(gstTocEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Toc)(cast(GstToc*) __p);
	}

	/**
	 * Gets the UID of @entry.
	 *
	 * Returns: The UID of @entry
	 */
	public string getUid()
	{
		return Str.toString(gst_toc_entry_get_uid(gstTocEntry));
	}

	/**
	 * Returns: %TRUE if @entry's type is an alternative type, otherwise %FALSE
	 */
	public bool isAlternative()
	{
		return gst_toc_entry_is_alternative(gstTocEntry) != 0;
	}

	/**
	 * Returns: %TRUE if @entry's type is a sequence type, otherwise %FALSE
	 */
	public bool isSequence()
	{
		return gst_toc_entry_is_sequence(gstTocEntry) != 0;
	}

	/**
	 * Merge @tags into the existing tags of @entry using @mode.
	 *
	 * Params:
	 *     tags = A #GstTagList or %NULL
	 *     mode = A #GstTagMergeMode
	 */
	public void mergeTags(TagList tags, GstTagMergeMode mode)
	{
		gst_toc_entry_merge_tags(gstTocEntry, (tags is null) ? null : tags.getTagListStruct(), mode);
	}

	/**
	 * Set @loop_type and @repeat_count values for the @entry.
	 *
	 * Params:
	 *     loopType = loop_type value to set.
	 *     repeatCount = repeat_count value to set.
	 *
	 * Since: 1.4
	 */
	public void setLoop(GstTocLoopType loopType, int repeatCount)
	{
		gst_toc_entry_set_loop(gstTocEntry, loopType, repeatCount);
	}

	/**
	 * Set @start and @stop values for the @entry.
	 *
	 * Params:
	 *     start = start value to set.
	 *     stop = stop value to set.
	 */
	public void setStartStopTimes(long start, long stop)
	{
		gst_toc_entry_set_start_stop_times(gstTocEntry, start, stop);
	}

	/**
	 * Set a #GstTagList with tags for the complete @entry.
	 *
	 * Params:
	 *     tags = A #GstTagList or %NULL
	 */
	public void setTags(TagList tags)
	{
		gst_toc_entry_set_tags(gstTocEntry, (tags is null) ? null : tags.getTagListStruct());
	}
}
