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


module gstreamer.TracerRecord;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.ObjectGst;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * Tracing modules will create instances of this class to announce the data they
 * will log and create a log formatter.
 *
 * Since: 1.8
 */
public class TracerRecord : ObjectGst
{
	/** the main Gtk struct */
	protected GstTracerRecord* gstTracerRecord;

	/** Get the main Gtk struct */
	public GstTracerRecord* getTracerRecordStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstTracerRecord;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstTracerRecord;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstTracerRecord* gstTracerRecord, bool ownedRef = false)
	{
		this.gstTracerRecord = gstTracerRecord;
		super(cast(GstObject*)gstTracerRecord, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_tracer_record_get_type();
	}
}
