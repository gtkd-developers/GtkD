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
 * inFile  = gstreamer-GstToc.html
 * outPack = gstreamer
 * outFile = Toc
 * strct   = GstToc
 * realStrct=
 * ctorStrct=
 * clss    = Toc
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_toc_
 * omit structs:
 * omit prefixes:
 * 	- gst_toc_entry_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gstreamer.TagList
 * 	- gstreamer.TocEntry
 * structWrap:
 * 	- GList* -> ListG
 * 	- GstTagList* -> TagList
 * 	- GstTocEntry* -> TocEntry
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Toc;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;
private import gstreamer.TagList;
private import gstreamer.TocEntry;




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
public class Toc
{
	
	/** the main Gtk struct */
	protected GstToc* gstToc;
	
	
	public GstToc* getTocStruct()
	{
		return gstToc;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstToc;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstToc* gstToc)
	{
		this.gstToc = gstToc;
	}
	
	/**
	 */
	
	/**
	 * Create a new GstToc structure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstTocScope scop)
	{
		// GstToc * gst_toc_new (GstTocScope scope);
		auto p = gst_toc_new(scop);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_toc_new(scop)");
		}
		this(cast(GstToc*) p);
	}
	
	/**
	 * Returns: scope of toc
	 */
	public GstTocScope getScope()
	{
		// GstTocScope gst_toc_get_scope (const GstToc *toc);
		return gst_toc_get_scope(gstToc);
	}
	
	/**
	 * Gets the list of GstTocEntry of toc.
	 * Returns: A GList of GstTocEntry for entry. [transfer none][element-type Gst.TocEntry]
	 */
	public ListG getEntries()
	{
		// GList * gst_toc_get_entries (const GstToc *toc);
		auto p = gst_toc_get_entries(gstToc);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Appends the GstTocEntry entry to toc.
	 * Params:
	 * entry = A GstTocEntry. [transfer full]
	 */
	public void appendEntry(TocEntry entry)
	{
		// void gst_toc_append_entry (GstToc *toc,  GstTocEntry *entry);
		gst_toc_append_entry(gstToc, (entry is null) ? null : entry.getTocEntryStruct());
	}
	
	/**
	 * Gets the tags for toc.
	 * Returns: A GstTagList for entry. [transfer none]
	 */
	public TagList getTags()
	{
		// GstTagList * gst_toc_get_tags (const GstToc *toc);
		auto p = gst_toc_get_tags(gstToc);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TagList)(cast(GstTagList*) p);
	}
	
	/**
	 * Merge tags into the existing tags of toc using mode.
	 * Params:
	 * tags = A GstTagList or NULL. [allow-none]
	 * mode = A GstTagMergeMode
	 */
	public void mergeTags(TagList tags, GstTagMergeMode mode)
	{
		// void gst_toc_merge_tags (GstToc *toc,  GstTagList *tags,  GstTagMergeMode mode);
		gst_toc_merge_tags(gstToc, (tags is null) ? null : tags.getTagListStruct(), mode);
	}
	
	/**
	 * Set a GstTagList with tags for the complete toc.
	 * Params:
	 * tags = A GstTagList or NULL. [allow-none][transfer full]
	 */
	public void setTags(TagList tags)
	{
		// void gst_toc_set_tags (GstToc *toc,  GstTagList *tags);
		gst_toc_set_tags(gstToc, (tags is null) ? null : tags.getTagListStruct());
	}
	
	/**
	 */
	public void dump()
	{
		// void gst_toc_dump (GstToc *toc);
		gst_toc_dump(gstToc);
	}
	
	/**
	 * Find GstTocEntry with given uid in the toc.
	 * Params:
	 * uid = UID to find GstTocEntry with.
	 * Returns: GstTocEntry with specified uid from the toc, or NULL if not found. [transfer none]
	 */
	public TocEntry findEntry(string uid)
	{
		// GstTocEntry * gst_toc_find_entry (const GstToc *toc,  const gchar *uid);
		auto p = gst_toc_find_entry(gstToc, Str.toStringz(uid));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TocEntry)(cast(GstTocEntry*) p);
	}
}
