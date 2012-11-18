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
 * inFile  = GstTagSetter.html
 * outPack = gstreamer
 * outFile = TagSetter
 * strct   = GstTagSetter
 * realStrct=
 * ctorStrct=
 * clss    = TagSetter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_tag_setter_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.TagList
 * structWrap:
 * 	- GstTagList* -> TagList
 * 	- GstTagSetter* -> TagSetter
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.TagSetter;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gstreamer.TagList;




/**
 * Description
 * Element interface that allows setting of media metadata.
 * Elements that support changing a stream's metadata will implement this
 * interface. Examples of such elements are 'vorbisenc', 'theoraenc' and
 * 'id3v2mux'.
 * If you just want to retrieve metadata in your application then all you
 * need to do is watch for tag messages on your pipeline's bus. This
 * interface is only for setting metadata, not for extracting it. To set tags
 * from the application, find tagsetter elements and set tags using e.g.
 * gst_tag_setter_merge_tags() or gst_tag_setter_add_tags(). The application
 * should do that before the element goes to GST_STATE_PAUSED.
 * Elements implementing the GstTagSetter interface often have to merge
 * any tags received from upstream and the tags set by the application via
 * the interface. This can be done like this:
 * GstTagMergeMode merge_mode;
 * const GstTagList *application_tags;
 * const GstTagList *event_tags;
 * GstTagSetter *tagsetter;
 * GstTagList *result;
 * tagsetter = GST_TAG_SETTER (element);
 * merge_mode = gst_tag_setter_get_tag_merge_mode (tagsetter);
 * tagsetter_tags = gst_tag_setter_get_tag_list (tagsetter);
 * event_tags = (const GstTagList *) element->event_tags;
 * GST_LOG_OBJECT (tagsetter, "merging tags, merge mode = %d", merge_mode);
 * GST_LOG_OBJECT (tagsetter, "event tags: %" GST_PTR_FORMAT, event_tags);
 * GST_LOG_OBJECT (tagsetter, "set tags: %" GST_PTR_FORMAT, application_tags);
 * result = gst_tag_list_merge (application_tags, event_tags, merge_mode);
 * GST_LOG_OBJECT (tagsetter, "final tags: %" GST_PTR_FORMAT, result);
 * Last reviewed on 2006-05-18 (0.10.6)
 */
public class TagSetter
{
	
	/** the main Gtk struct */
	protected GstTagSetter* gstTagSetter;
	
	
	public GstTagSetter* getTagSetterStruct()
	{
		return gstTagSetter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstTagSetter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstTagSetter* gstTagSetter)
	{
		this.gstTagSetter = gstTagSetter;
	}
	
	/**
	 */
	
	/**
	 * Merges the given list into the setter's list using the given mode.
	 * Params:
	 * list = a tag list to merge from
	 * mode = the mode to merge with
	 */
	public void mergeTags(TagList list, GstTagMergeMode mode)
	{
		// void gst_tag_setter_merge_tags (GstTagSetter *setter,  const GstTagList *list,  GstTagMergeMode mode);
		gst_tag_setter_merge_tags(gstTagSetter, (list is null) ? null : list.getTagListStruct(), mode);
	}
	
	/**
	 * Adds the given tag / value pairs on the setter using the given merge mode.
	 * The list must be terminated with NULL.
	 * Params:
	 * mode = the mode to use
	 * tag = tag to set
	 * varArgs = tag / value pairs to set
	 */
	public void addTagValist(GstTagMergeMode mode, string tag, void* varArgs)
	{
		// void gst_tag_setter_add_tag_valist (GstTagSetter *setter,  GstTagMergeMode mode,  const gchar *tag,  va_list var_args);
		gst_tag_setter_add_tag_valist(gstTagSetter, mode, Str.toStringz(tag), varArgs);
	}
	
	/**
	 * Adds the given tag / GValue pairs on the setter using the given merge mode.
	 * The list must be terminated with NULL.
	 * Params:
	 * mode = the mode to use
	 * tag = tag to set
	 * varArgs = tag / GValue pairs to set
	 */
	public void addTagValistValues(GstTagMergeMode mode, string tag, void* varArgs)
	{
		// void gst_tag_setter_add_tag_valist_values  (GstTagSetter *setter,  GstTagMergeMode mode,  const gchar *tag,  va_list var_args);
		gst_tag_setter_add_tag_valist_values(gstTagSetter, mode, Str.toStringz(tag), varArgs);
	}
	
	/**
	 * Returns the current list of tags the setter uses. The list should not be
	 * modified or freed.
	 * Returns: a current snapshot of the taglist used in the setter or NULL if none is used.
	 */
	public TagList getTagList()
	{
		// const GstTagList* gst_tag_setter_get_tag_list (GstTagSetter *setter);
		auto p = gst_tag_setter_get_tag_list(gstTagSetter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TagList)(cast(GstTagList*) p);
	}
	
	/**
	 * Sets the given merge mode that is used for adding tags from events to tags
	 * specified by this interface. The default is GST_TAG_MERGE_KEEP, which keeps
	 * the tags set with this interface and discards tags from events.
	 * Params:
	 * mode = The mode with which tags are added
	 */
	public void setTagMergeMode(GstTagMergeMode mode)
	{
		// void gst_tag_setter_set_tag_merge_mode (GstTagSetter *setter,  GstTagMergeMode mode);
		gst_tag_setter_set_tag_merge_mode(gstTagSetter, mode);
	}
	
	/**
	 * Queries the mode by which tags inside the setter are overwritten by tags
	 * from events
	 * Returns: the merge mode used inside the element.
	 */
	public GstTagMergeMode getTagMergeMode()
	{
		// GstTagMergeMode gst_tag_setter_get_tag_merge_mode (GstTagSetter *setter);
		return gst_tag_setter_get_tag_merge_mode(gstTagSetter);
	}
}
