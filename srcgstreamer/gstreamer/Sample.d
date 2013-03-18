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
 * inFile  = gstreamer-GstSample.html
 * outPack = gstreamer
 * outFile = Sample
 * strct   = GstSample
 * realStrct=
 * ctorStrct=
 * clss    = Sample
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_sample_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gstreamer.Buffer
 * 	- gstreamer.Caps
 * 	- gstreamer.Segment
 * 	- gstreamer.Structure
 * structWrap:
 * 	- GstBuffer* -> Buffer
 * 	- GstCaps* -> Caps
 * 	- GstSample* -> Sample
 * 	- GstSegment* -> Segment
 * 	- GstStructure* -> Structure
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Sample;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gstreamer.Buffer;
private import gstreamer.Caps;
private import gstreamer.Segment;
private import gstreamer.Structure;




/**
 * A GstSample is a small object containing data, a type, timing and
 * extra arbitrary information.
 *
 * Last reviewed on 2012-03-29 (0.11.3)
 */
public class Sample
{
	
	/** the main Gtk struct */
	protected GstSample* gstSample;
	
	
	public GstSample* getSampleStruct()
	{
		return gstSample;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstSample;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstSample* gstSample)
	{
		this.gstSample = gstSample;
	}
	
	/**
	 */
	
	/**
	 * Get the buffer associated with sample
	 * Returns: the buffer of sample or NULL when there is no buffer. The buffer remains valid as long as sample is valid. [transfer none]
	 */
	public Buffer getBuffer()
	{
		// GstBuffer * gst_sample_get_buffer (GstSample *sample);
		auto p = gst_sample_get_buffer(gstSample);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Get the caps associated with sample
	 * Returns: the caps of sample or NULL when there is no caps. The caps remain valid as long as sample is valid. [transfer none]
	 */
	public Caps getCaps()
	{
		// GstCaps * gst_sample_get_caps (GstSample *sample);
		auto p = gst_sample_get_caps(gstSample);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Get extra information associated with sample.
	 * Returns: the extra info of sample. The info remains valid as long as sample is valid. [transfer none]
	 */
	public Structure getInfo()
	{
		// const GstStructure * gst_sample_get_info (GstSample *sample);
		auto p = gst_sample_get_info(gstSample);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Get the segment associated with sample
	 * Returns: the segment of sample. The segment remains valid as long as sample is valid. [transfer none]
	 */
	public Segment getSegment()
	{
		// GstSegment * gst_sample_get_segment (GstSample *sample);
		auto p = gst_sample_get_segment(gstSample);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Segment)(cast(GstSegment*) p);
	}
	
	/**
	 * Create a new GstSample with the provided details.
	 * Free-function: gst_sample_unref
	 * Params:
	 * buffer = a GstBuffer, or NULL. [transfer none][allow-none]
	 * caps = a GstCaps, or NULL. [transfer none][allow-none]
	 * segment = a GstSegment, or NULL. [transfer none][allow-none]
	 * info = a GstStructure, or NULL. [transfer full][allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Buffer buffer, Caps caps, Segment segment, Structure info)
	{
		// GstSample * gst_sample_new (GstBuffer *buffer,  GstCaps *caps,  const GstSegment *segment,  GstStructure *info);
		auto p = gst_sample_new((buffer is null) ? null : buffer.getBufferStruct(), (caps is null) ? null : caps.getCapsStruct(), (segment is null) ? null : segment.getSegmentStruct(), (info is null) ? null : info.getStructureStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_sample_new((buffer is null) ? null : buffer.getBufferStruct(), (caps is null) ? null : caps.getCapsStruct(), (segment is null) ? null : segment.getSegmentStruct(), (info is null) ? null : info.getStructureStruct())");
		}
		this(cast(GstSample*) p);
	}
	
	/**
	 * Increases the refcount of the given sample by one.
	 * Returns: sample. [transfer full]
	 */
	public Sample doref()
	{
		// GstSample * gst_sample_ref (GstSample *sample);
		auto p = gst_sample_ref(gstSample);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Sample)(cast(GstSample*) p);
	}
	
	/**
	 * Decreases the refcount of the sample. If the refcount reaches 0, the
	 * sample will be freed.
	 */
	public void unref()
	{
		// void gst_sample_unref (GstSample *sample);
		gst_sample_unref(gstSample);
	}
}
