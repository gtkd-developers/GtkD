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


module gstreamer.TocSetterIF;

private import gobject.ObjectG;
private import gstreamer.Toc;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


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
 * Elements implementing the #GstTocSetter interface can extend existing TOC
 * by getting extend UID for that (you can use gst_toc_find_entry() to retrieve it)
 * with any TOC entries received from downstream.
 */
public interface TocSetterIF{
	/** Get the main Gtk struct */
	public GstTocSetter* getTocSetterStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gst_toc_setter_get_type();
	}

	/**
	 * Return current TOC the setter uses. The TOC should not be
	 * modified without making it writable first.
	 *
	 * Returns: TOC set, or %NULL. Unref with
	 *     gst_toc_unref() when no longer needed
	 */
	public Toc getToc();

	/**
	 * Reset the internal TOC. Elements should call this from within the
	 * state-change handler.
	 */
	public void reset();

	/**
	 * Set the given TOC on the setter. Previously set TOC will be
	 * unreffed before setting a new one.
	 *
	 * Params:
	 *     toc = a #GstToc to set.
	 */
	public void setToc(Toc toc);
}
