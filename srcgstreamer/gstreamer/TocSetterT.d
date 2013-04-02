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
 * inFile  = gstreamer-GstTocSetter.html
 * outPack = gstreamer
 * outFile = TocSetterT
 * strct   = GstTocSetter
 * realStrct=
 * ctorStrct=
 * clss    = TocSetterT
 * interf  = TocSetterIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_toc_setter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gstreamer.Toc
 * structWrap:
 * 	- GstToc* -> Toc
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.TocSetterT;

public  import gstreamerc.gstreamertypes;

public import gstreamerc.gstreamer;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import gstreamer.Toc;




/**
 * Element interface that allows setting of the TOC.
 *
 * Elements that support some kind of chapters or editions (or tracks like in
 * the FLAC cue sheet) will implement this interface.
 *
 * If you just want to retrieve the TOC in your application then all you
 * need to do is watch for TOC messages on your pipeline's bus (or you can
 * perform TOC query). This interface is only for setting TOC data, not for
 * extracting it. To set TOC from the application, find proper tocsetter element
 * and set TOC using gst_toc_setter_set_toc().
 *
 * Elements implementing the GstTocSetter interface can extend existing TOC
 * by getting extend UID for that (you can use gst_toc_find_entry() to retrieve it)
 * with any TOC entries received from downstream.
 */
public template TocSetterT(TStruct)
{
	
	/** the main Gtk struct */
	protected GstTocSetter* gstTocSetter;
	
	
	public GstTocSetter* getTocSetterTStruct()
	{
		return cast(GstTocSetter*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Set the given TOC on the setter. Previously setted TOC will be
	 * unrefed before setting a new one.
	 * Params:
	 * toc = a GstToc to set. [allow-none]
	 */
	public void setToc(Toc toc)
	{
		// void gst_toc_setter_set_toc (GstTocSetter *setter,  GstToc *toc);
		gst_toc_setter_set_toc(getTocSetterTStruct(), (toc is null) ? null : toc.getTocStruct());
	}
	
	/**
	 * Return current TOC the setter uses. The TOC should not be
	 * modified without making it writable first.
	 * Returns: TOC set, or NULL. Unref with gst_toc_unref() when no longer needed. [transfer full]
	 */
	public Toc getToc()
	{
		// GstToc * gst_toc_setter_get_toc (GstTocSetter *setter);
		auto p = gst_toc_setter_get_toc(getTocSetterTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Toc)(cast(GstToc*) p);
	}
	
	/**
	 * Reset the internal TOC. Elements should call this from within the
	 * state-change handler.
	 */
	public void reset()
	{
		// void gst_toc_setter_reset (GstTocSetter *setter);
		gst_toc_setter_reset(getTocSetterTStruct());
	}
}
