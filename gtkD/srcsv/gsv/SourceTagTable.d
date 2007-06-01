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
 * inFile  = GtkSourceTagTable.html
 * outPack = gsv
 * outFile = SourceTagTable
 * strct   = GtkSourceTagTable
 * realStrct=
 * ctorStrct=
 * clss    = SourceTagTable
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_tag_table_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gsv.SourceTagTable;

private import gsvc.gsvtypes;

private import gsvc.gsv;






/**
 * Description
 */
private import gtk.TextTagTable;
public class SourceTagTable : TextTagTable
{
	
	/** the main Gtk struct */
	protected GtkSourceTagTable* gtkSourceTagTable;
	
	
	public GtkSourceTagTable* getSourceTagTableStruct()
	{
		return gtkSourceTagTable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceTagTable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceTagTable* gtkSourceTagTable)
	{
		assert(gtkSourceTagTable !is null, "struct gtkSourceTagTable is null on constructor");
		super(cast(GtkTextTagTable*)gtkSourceTagTable);
		this.gtkSourceTagTable = gtkSourceTagTable;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(SourceTagTable)[] onChangedListeners;
	void addOnChanged(void delegate(SourceTagTable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkSourceTagTable* sourcetagtableStruct, SourceTagTable sourceTagTable)
	{
		bool consumed = false;
		
		foreach ( void delegate(SourceTagTable) dlg ; sourceTagTable.onChangedListeners )
		{
			dlg(sourceTagTable);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkSourceTagTable. The table contains no tags by
	 * default.
	 * Returns:
	 *  a new GtkSourceTagTable
	 */
	public this ()
	{
		// GtkSourceTagTable* gtk_source_tag_table_new (void);
		this(cast(GtkSourceTagTable*)gtk_source_tag_table_new() );
	}
	
	/**
	 * Adds a list of tag to the table. The added tags are assigned the highest priority
	 * in the table.
	 * If a tag is already present in table or has the same name as an already-added tag,
	 * then it is not added to the table.
	 * table:
	 *  a GtkSourceTagTable.
	 * tags:
	 *  a GSList containing GtkTextTag objects.
	 */
	public void addTags(GSList* tags)
	{
		// void gtk_source_tag_table_add_tags (GtkSourceTagTable *table,  const GSList *tags);
		gtk_source_tag_table_add_tags(gtkSourceTagTable, tags);
	}
	
	/**
	 * Removes all the source tags from the table. This will remove the table's
	 * reference to the tags, so be careful - tags will end
	 * up destroyed if you don't have a reference to them.
	 * table:
	 *  a GtkSourceTagTable.
	 * Signal Details
	 * The "changed" signal
	 * void user_function (GtkSourceTagTable *sourcetagtable,
	 *  gpointer user_data) : Run last
	 * sourcetagtable:
	 * the object which received the signal.
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public void removeSourceTags()
	{
		// void gtk_source_tag_table_remove_source_tags  (GtkSourceTagTable *table);
		gtk_source_tag_table_remove_source_tags(gtkSourceTagTable);
	}
}
