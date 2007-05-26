/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gtksourceview-GtkSourceMarker.html
 * outPack = gsv
 * outFile = SourceMarker
 * strct   = GtkSourceMarker
 * realStrct=
 * ctorStrct=
 * clss    = SourceMarker
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_marker_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gsv.SourceMarker;

private import gsvc.gsvtypes;

private import gsvc.gsv;


private import glib.Str;




/**
 * Description
 */
public class SourceMarker
{
	
	/** the main Gtk struct */
	protected GtkSourceMarker* gtkSourceMarker;
	
	
	public GtkSourceMarker* getSourceMarkerStruct()
	{
		return gtkSourceMarker;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceMarker;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceMarker* gtkSourceMarker)
	{
		this.gtkSourceMarker = gtkSourceMarker;
	}
	
	/**
	 */
	
	
	/**
	 * marker:
	 * type:
	 */
	public void setMarkerType(char[] type)
	{
		// void gtk_source_marker_set_marker_type  (GtkSourceMarker *marker,  const gchar *type);
		gtk_source_marker_set_marker_type(gtkSourceMarker, Str.toStringz(type));
	}
	
	/**
	 * Gets the marker type of this marker.
	 * marker:
	 *  a GtkSourceMarker.
	 * Returns:
	 *  the marker type.
	 */
	public char[] getMarkerType()
	{
		// gchar* gtk_source_marker_get_marker_type  (GtkSourceMarker *marker);
		return Str.toString(gtk_source_marker_get_marker_type(gtkSourceMarker) );
	}
	
	/**
	 * Gets the line number of this marker.
	 * marker:
	 *  a GtkSourceMarker.
	 * Returns:
	 *  the line number.
	 */
	public int getLine()
	{
		// gint gtk_source_marker_get_line (GtkSourceMarker *marker);
		return gtk_source_marker_get_line(gtkSourceMarker);
	}
	
	/**
	 * Gets the name of this marker.
	 * marker:
	 *  a GtkSourceMarker.
	 * Returns:
	 *  the name.
	 */
	public char[] getName()
	{
		// const gchar* gtk_source_marker_get_name (GtkSourceMarker *marker);
		return Str.toString(gtk_source_marker_get_name(gtkSourceMarker) );
	}
	
	/**
	 * Gets the buffer associated with this marker.
	 * marker:
	 *  a GtkSourceMarker.
	 * Returns:
	 *  the GtkSourceBuffer.
	 */
	public GtkSourceBuffer* getBuffer()
	{
		// GtkSourceBuffer* gtk_source_marker_get_buffer  (GtkSourceMarker *marker);
		return gtk_source_marker_get_buffer(gtkSourceMarker);
	}
	
	/**
	 * Gets the next marker after marker.
	 * marker:
	 *  a GtkSourceMarker.
	 * Returns:
	 *  a GtkSourceMarker.
	 */
	public GtkSourceMarker* next()
	{
		// GtkSourceMarker* gtk_source_marker_next (GtkSourceMarker *marker);
		return gtk_source_marker_next(gtkSourceMarker);
	}
	
	/**
	 * Gets the previous marker before marker.
	 * marker:
	 *  a GtkSourceMarker.
	 * Returns:
	 *  a GtkSourceMarker.
	 */
	public GtkSourceMarker* prev()
	{
		// GtkSourceMarker* gtk_source_marker_prev (GtkSourceMarker *marker);
		return gtk_source_marker_prev(gtkSourceMarker);
	}
}
