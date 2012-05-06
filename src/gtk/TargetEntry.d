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
 * inFile  = gtk3-Selections.html
 * outPack = gtk
 * outFile = TargetEntry
 * strct   = GtkTargetEntry
 * realStrct=
 * ctorStrct=
 * clss    = TargetEntry
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_target_entry_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * 	- gtk_target_
 * 	- gtk_targets_
 * 	- gtk_target_list_
 * 	- gtk_selection_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TargetEntry;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import glib.Str;
private import gtkc.paths;
private import gtkc.Loader;




/**
 * Description
 * The selection mechanism provides the basis for different types
 * of communication between processes. In particular, drag and drop and
 * GtkClipboard work via selections. You will very seldom or
 * never need to use most of the functions in this section directly;
 * GtkClipboard provides a nicer interface to the same functionality.
 * Some of the datatypes defined this section are used in
 * the GtkClipboard and drag-and-drop API's as well. The
 * GtkTargetEntry structure and GtkTargetList objects represent
 * lists of data types that are supported when sending or
 * receiving data. The GtkSelectionData object is used to
 * store a chunk of data along with the data type and other
 * associated information.
 */
public class TargetEntry
{
	
	/** the main Gtk struct */
	protected GtkTargetEntry* gtkTargetEntry;
	
	
	public GtkTargetEntry* getTargetEntryStruct()
	{
		return gtkTargetEntry;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTargetEntry;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTargetEntry* gtkTargetEntry)
	{
		if(gtkTargetEntry is null)
		{
			this = null;
			return;
		}
		this.gtkTargetEntry = gtkTargetEntry;
	}
	
	~this ()
	{
		if ( importLibs[LIBRARY.GTK] in Linker.loadedLibraries && gtkTargetEntry !is null )
		{
			gtk_target_entry_free(gtkTargetEntry);
		}
	}
	
	/**
	 */
}
