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
 * outPack = gstreamer
 * outFile = TocEntry
 * strct   = GstTocEntry
 * realStrct=
 * ctorStrct=
 * clss    = TocEntry
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_toc_entry_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gstreamer.TagList
 * 	- gstreamer.Toc
 * structWrap:
 * 	- GList* -> ListG
 * 	- GstTagList* -> TagList
 * 	- GstToc* -> Toc
 * 	- GstTocEntry* -> TocEntry
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.TocEntry;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;
private import gstreamer.TagList;
private import gstreamer.Toc;




/**
 * GstToc functions are used to create/free GstToc and GstTocEntry structures.
 * Also they are used to convert GstToc into GstStructure and vice versa.
 *
 * GstToc lets you to inform other elements in pipeline or application that playing
 * source has some kind of table of contents (TOC). These may be chapters, editions,
 * angles or other types. For example: DVD chapters, Matroska chapters or cue sheet
 * TOC. Such TOC will be useful for applications to display instead of just a
 * playlist.
 *
 * Using TOC is very easy. Firstly, create GstToc structure which represents root
 * contents of the source. You can also attach TOC-specific tags to it. Then fill
 * it with GstTocEntry entries by appending them to the GstToc using
 * gst_toc_append_entry(), and appending subentries to a GstTocEntry using
 * gst_toc_entry_append_sub_entry().
 *
 * Note that root level of the TOC can contain only either editions or chapters. You
 * should not mix them together at the same level. Otherwise you will get serialization
 * /deserialization errors. Make sure that no one of the entries has negative start and
 *  stop values.
 *
 * Use gst_event_new_toc() to create a new TOC GstEvent, and gst_event_parse_toc() to
 * parse received TOC event. Use gst_event_new_toc_select() to create a new TOC select GstEvent,
 * and gst_event_parse_toc_select() to parse received TOC select event. The same rule for
 * the GstMessage: gst_message_new_toc() to create new TOC GstMessage, and
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
 */
public class TocEntry
{
	
	/** the main Gtk struct */
	protected GstTocEntry* gstTocEntry;
	
	
	public GstTocEntry* getTocEntryStruct()
	{
		return gstTocEntry;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstTocEntry;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstTocEntry* gstTocEntry)
	{
		this.gstTocEntry = gstTocEntry;
	}
	
	/**
	 */
	
	/**
	 * Create new GstTocEntry structure.
	 * Params:
	 * type = entry type.
	 * uid = unique ID (UID) in the whole TOC.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstTocEntryType type, string uid)
	{
		// GstTocEntry * gst_toc_entry_new (GstTocEntryType type,  const gchar *uid);
		auto p = gst_toc_entry_new(type, Str.toStringz(uid));
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_toc_entry_new(type, Str.toStringz(uid))");
		}
		this(cast(GstTocEntry*) p);
	}
	
	/**
	 * Gets the parent GstToc of entry.
	 * Returns: The parent GstToc of entry. [transfer none]
	 */
	public Toc getToc()
	{
		// GstToc * gst_toc_entry_get_toc (GstTocEntry *entry);
		auto p = gst_toc_entry_get_toc(gstTocEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Toc)(cast(GstToc*) p);
	}
	
	/**
	 * Gets the UID of entry.
	 * Returns: The UID of entry. [transfer none]
	 */
	public string getUid()
	{
		// const gchar * gst_toc_entry_get_uid (const GstTocEntry *entry);
		return Str.toString(gst_toc_entry_get_uid(gstTocEntry));
	}
	
	/**
	 * Gets the parent GstTocEntry of entry.
	 * Returns: The parent GstTocEntry of entry. [transfer none]
	 */
	public TocEntry getParent()
	{
		// GstTocEntry * gst_toc_entry_get_parent (GstTocEntry *entry);
		auto p = gst_toc_entry_get_parent(gstTocEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TocEntry)(cast(GstTocEntry*) p);
	}
	
	/**
	 * Gets the sub-entries of entry.
	 * Returns: A GList of GstTocEntry of entry. [transfer none][element-type Gst.TocEntry]
	 */
	public ListG getSubEntries()
	{
		// GList * gst_toc_entry_get_sub_entries (const GstTocEntry *entry);
		auto p = gst_toc_entry_get_sub_entries(gstTocEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Appends the GstTocEntry subentry to entry.
	 * Params:
	 * entry = A GstTocEntry instance
	 * subentry = A GstTocEntry. [transfer full]
	 */
	public void appendSubEntry(TocEntry subentry)
	{
		// void gst_toc_entry_append_sub_entry (GstTocEntry *entry,  GstTocEntry *subentry);
		gst_toc_entry_append_sub_entry(gstTocEntry, (subentry is null) ? null : subentry.getTocEntryStruct());
	}
	
	/**
	 * Get start and stop values from the entry and write them into appropriate storages.
	 * Params:
	 * start = the storage for the start value, leave NULL if not need. [out]
	 * stop = the storage for the stop value, leave NULL if not need. [out]
	 * Returns: TRUE if all non-NULL storage pointers were filled with appropriate values, FALSE otherwise.
	 */
	public int getStartStopTimes(out long start, out long stop)
	{
		// gboolean gst_toc_entry_get_start_stop_times (const GstTocEntry *entry,  gint64 *start,  gint64 *stop);
		return gst_toc_entry_get_start_stop_times(gstTocEntry, &start, &stop);
	}
	
	/**
	 * Set start and stop values for the entry.
	 * Params:
	 * start = start value to set.
	 * stop = stop value to set.
	 */
	public void setStartStopTimes(long start, long stop)
	{
		// void gst_toc_entry_set_start_stop_times (GstTocEntry *entry,  gint64 start,  gint64 stop);
		gst_toc_entry_set_start_stop_times(gstTocEntry, start, stop);
	}
	
	/**
	 * Gets the tags for entry.
	 * Returns: A GstTagList for entry. [transfer none]
	 */
	public TagList getTags()
	{
		// GstTagList * gst_toc_entry_get_tags (const GstTocEntry *entry);
		auto p = gst_toc_entry_get_tags(gstTocEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TagList)(cast(GstTagList*) p);
	}
	
	/**
	 * Merge tags into the existing tags of entry using mode.
	 * Params:
	 * tags = A GstTagList or NULL. [allow-none]
	 * mode = A GstTagMergeMode
	 */
	public void mergeTags(TagList tags, GstTagMergeMode mode)
	{
		// void gst_toc_entry_merge_tags (GstTocEntry *entry,  GstTagList *tags,  GstTagMergeMode mode);
		gst_toc_entry_merge_tags(gstTocEntry, (tags is null) ? null : tags.getTagListStruct(), mode);
	}
	
	/**
	 * Set a GstTagList with tags for the complete entry.
	 * Params:
	 * tags = A GstTagList or NULL. [allow-none][transfer full]
	 */
	public void setTags(TagList tags)
	{
		// void gst_toc_entry_set_tags (GstTocEntry *entry,  GstTagList *tags);
		gst_toc_entry_set_tags(gstTocEntry, (tags is null) ? null : tags.getTagListStruct());
	}
	
	/**
	 * Converts type to a string representation.
	 * Params:
	 * type = a GstTocEntryType.
	 * Returns: Returns a human-readable string for type. This string is only for debugging purpose and should not be displayed in a user interface.
	 */
	public static string typeGetNick(GstTocEntryType type)
	{
		// const gchar * gst_toc_entry_type_get_nick (GstTocEntryType type);
		return Str.toString(gst_toc_entry_type_get_nick(type));
	}
	
	/**
	 * Returns: entry's entry type
	 */
	public GstTocEntryType getEntryType()
	{
		// GstTocEntryType gst_toc_entry_get_entry_type (const GstTocEntry *entry);
		return gst_toc_entry_get_entry_type(gstTocEntry);
	}
	
	/**
	 * Returns: TRUE if entry's type is an alternative type, otherwise FALSE
	 */
	public int isAlternative()
	{
		// gboolean gst_toc_entry_is_alternative (const GstTocEntry *entry);
		return gst_toc_entry_is_alternative(gstTocEntry);
	}
	
	/**
	 * Returns: TRUE if entry's type is a sequence type, otherwise FALSE
	 */
	public int isSequence()
	{
		// gboolean gst_toc_entry_is_sequence (const GstTocEntry *entry);
		return gst_toc_entry_is_sequence(gstTocEntry);
	}
}
