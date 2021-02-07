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


module gstreamer.Toc;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.TagList;
private import gstreamer.TocEntry;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * #GstToc functions are used to create/free #GstToc and #GstTocEntry structures.
 * Also they are used to convert #GstToc into #GstStructure and vice versa.
 * 
 * #GstToc lets you to inform other elements in pipeline or application that playing
 * source has some kind of table of contents (TOC). These may be chapters, editions,
 * angles or other types. For example: DVD chapters, Matroska chapters or cue sheet
 * TOC. Such TOC will be useful for applications to display instead of just a
 * playlist.
 * 
 * Using TOC is very easy. Firstly, create #GstToc structure which represents root
 * contents of the source. You can also attach TOC-specific tags to it. Then fill
 * it with #GstTocEntry entries by appending them to the #GstToc using
 * gst_toc_append_entry(), and appending subentries to a #GstTocEntry using
 * gst_toc_entry_append_sub_entry().
 * 
 * Note that root level of the TOC can contain only either editions or chapters. You
 * should not mix them together at the same level. Otherwise you will get serialization
 * /deserialization errors. Make sure that no one of the entries has negative start and
 * stop values.
 * 
 * Use gst_event_new_toc() to create a new TOC #GstEvent, and gst_event_parse_toc() to
 * parse received TOC event. Use gst_event_new_toc_select() to create a new TOC select #GstEvent,
 * and gst_event_parse_toc_select() to parse received TOC select event. The same rule for
 * the #GstMessage: gst_message_new_toc() to create new TOC #GstMessage, and
 * gst_message_parse_toc() to parse received TOC message.
 * 
 * TOCs can have global scope or current scope. Global scope TOCs contain
 * all entries that can possibly be selected using a toc select event, and
 * are what an application is usually interested in. TOCs with current scope
 * only contain the parts of the TOC relevant to the currently selected/playing
 * stream; the current scope TOC is used by downstream elements such as muxers
 * to write correct TOC entries when transcoding files, for example. When
 * playing a DVD, the global TOC would contain a hierarchy of all titles,
 * chapters and angles, for example, while the current TOC would only contain
 * the chapters for the currently playing title if playback of a specific
 * title was requested.
 * 
 * Applications and plugins should not rely on TOCs having a certain kind of
 * structure, but should allow for different alternatives. For example, a
 * simple CUE sheet embedded in a file may be presented as a flat list of
 * track entries, or could have a top-level edition node (or some other
 * alternative type entry) with track entries underneath that node; or even
 * multiple top-level edition nodes (or some other alternative type entries)
 * each with track entries underneath, in case the source file has extracted
 * a track listing from different sources).
 */
public class Toc
{
	/** the main Gtk struct */
	protected GstToc* gstToc;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstToc* getTocStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstToc;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstToc;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstToc* gstToc, bool ownedRef = false)
	{
		this.gstToc = gstToc;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_toc_get_type();
	}

	/**
	 * Create a new #GstToc structure.
	 *
	 * Params:
	 *     scope_ = scope of this TOC
	 *
	 * Returns: newly allocated #GstToc structure, free it
	 *     with gst_toc_unref().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstTocScope scope_)
	{
		auto __p = gst_toc_new(scope_);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstToc*) __p);
	}

	/**
	 * Appends the #GstTocEntry @entry to @toc.
	 *
	 * Params:
	 *     entry = A #GstTocEntry
	 */
	public void appendEntry(TocEntry entry)
	{
		gst_toc_append_entry(gstToc, (entry is null) ? null : entry.getTocEntryStruct());
	}

	/** */
	public void dump()
	{
		gst_toc_dump(gstToc);
	}

	/**
	 * Find #GstTocEntry with given @uid in the @toc.
	 *
	 * Params:
	 *     uid = UID to find #GstTocEntry with.
	 *
	 * Returns: #GstTocEntry with specified
	 *     @uid from the @toc, or %NULL if not found.
	 */
	public TocEntry findEntry(string uid)
	{
		auto __p = gst_toc_find_entry(gstToc, Str.toStringz(uid));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TocEntry)(cast(GstTocEntry*) __p);
	}

	/**
	 * Gets the list of #GstTocEntry of @toc.
	 *
	 * Returns: A #GList of #GstTocEntry for @entry
	 */
	public ListG getEntries()
	{
		auto __p = gst_toc_get_entries(gstToc);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns: scope of @toc
	 */
	public GstTocScope getScope()
	{
		return gst_toc_get_scope(gstToc);
	}

	/**
	 * Gets the tags for @toc.
	 *
	 * Returns: A #GstTagList for @entry
	 */
	public TagList getTags()
	{
		auto __p = gst_toc_get_tags(gstToc);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TagList)(cast(GstTagList*) __p);
	}

	/**
	 * Merge @tags into the existing tags of @toc using @mode.
	 *
	 * Params:
	 *     tags = A #GstTagList or %NULL
	 *     mode = A #GstTagMergeMode
	 */
	public void mergeTags(TagList tags, GstTagMergeMode mode)
	{
		gst_toc_merge_tags(gstToc, (tags is null) ? null : tags.getTagListStruct(), mode);
	}

	/**
	 * Set a #GstTagList with tags for the complete @toc.
	 *
	 * Params:
	 *     tags = A #GstTagList or %NULL
	 */
	public void setTags(TagList tags)
	{
		gst_toc_set_tags(gstToc, (tags is null) ? null : tags.getTagListStruct());
	}
}
