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
 * 	- GtkTargetList
 * omit prefixes:
 * 	- gtk_target_table_
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
 * 	- GtkTargetEntry* -> TargetEntry
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TargetEntry;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtkc.paths;
private import gtkc.Loader;




/**
 * The selection mechanism provides the basis for different types
 * of communication between processes. In particular, drag and drop and
 * GtkClipboard work via selections. You will very seldom or
 * never need to use most of the functions in this section directly;
 * GtkClipboard provides a nicer interface to the same functionality.
 *
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
		this.gtkTargetEntry = gtkTargetEntry;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkTargetEntry !is null )
		{
			gtk_target_entry_free(gtkTargetEntry);
		}
	}
	
	/**
	 */
	
	/**
	 * Makes a new GtkTargetEntry structure.
	 * Params:
	 * target = String identifier for target
	 * flags = Set of flags, see GtkTargetFlags
	 * info = an ID that will be passed back to the application
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string target, uint flags, uint info)
	{
		// GtkTargetEntry * gtk_target_entry_new (const gchar *target,  guint flags,  guint info);
		auto p = gtk_target_entry_new(Str.toStringz(target), flags, info);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_target_entry_new(Str.toStringz(target), flags, info)");
		}
		this(cast(GtkTargetEntry*) p);
	}
	
	/**
	 * Makes a copy of a GtkTargetEntry structure and its data.
	 * Returns: a pointer to a copy of data. Free with gtk_target_entry_free()
	 */
	public TargetEntry copy()
	{
		// GtkTargetEntry * gtk_target_entry_copy (GtkTargetEntry *data);
		auto p = gtk_target_entry_copy(gtkTargetEntry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TargetEntry)(cast(GtkTargetEntry*) p);
	}
	
	/**
	 * Frees a GtkTargetEntry structure returned from
	 * gtk_target_entry_new() or gtk_target_entry_copy().
	 */
	public void free()
	{
		// void gtk_target_entry_free (GtkTargetEntry *data);
		gtk_target_entry_free(gtkTargetEntry);
	}
}
