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
 * inFile  = GtkTextTagTable.html
 * outPack = gtk
 * outFile = TextTagTable
 * strct   = GtkTextTagTable
 * realStrct=
 * ctorStrct=
 * clss    = TextTagTable
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_text_tag_table_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.TextTag
 * structWrap:
 * 	- GtkTextTag* -> TextTag
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TextTagTable;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.TextTag;



private import gobject.ObjectG;

/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and
 * data types related to the text widget and how they work together.
 * GtkTextTagTables as GtkBuildable
 * The GtkTextTagTable implementation of the GtkBuildable interface
 * supports adding tags by specifying "tag" as the "type"
 * attribute of a <child> element.
 * $(DDOC_COMMENT example)
 */
public class TextTagTable : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkTextTagTable* gtkTextTagTable;
	
	
	public GtkTextTagTable* getTextTagTableStruct()
	{
		return gtkTextTagTable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTextTagTable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTextTagTable* gtkTextTagTable)
	{
		super(cast(GObject*)gtkTextTagTable);
		this.gtkTextTagTable = gtkTextTagTable;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkTextTagTable = cast(GtkTextTagTable*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(TextTag, TextTagTable)[] onTagAddedListeners;
	/**
	 */
	void addOnTagAdded(void delegate(TextTag, TextTagTable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("tag-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"tag-added",
			cast(GCallback)&callBackTagAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["tag-added"] = 1;
		}
		onTagAddedListeners ~= dlg;
	}
	extern(C) static void callBackTagAdded(GtkTextTagTable* texttagtableStruct, GtkTextTag* tag, TextTagTable _textTagTable)
	{
		foreach ( void delegate(TextTag, TextTagTable) dlg ; _textTagTable.onTagAddedListeners )
		{
			dlg(ObjectG.getDObject!(TextTag)(tag), _textTagTable);
		}
	}
	
	void delegate(TextTag, gboolean, TextTagTable)[] onTagChangedListeners;
	/**
	 */
	void addOnTagChanged(void delegate(TextTag, gboolean, TextTagTable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("tag-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"tag-changed",
			cast(GCallback)&callBackTagChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["tag-changed"] = 1;
		}
		onTagChangedListeners ~= dlg;
	}
	extern(C) static void callBackTagChanged(GtkTextTagTable* texttagtableStruct, GtkTextTag* tag, gboolean sizeChanged, TextTagTable _textTagTable)
	{
		foreach ( void delegate(TextTag, gboolean, TextTagTable) dlg ; _textTagTable.onTagChangedListeners )
		{
			dlg(ObjectG.getDObject!(TextTag)(tag), sizeChanged, _textTagTable);
		}
	}
	
	void delegate(TextTag, TextTagTable)[] onTagRemovedListeners;
	/**
	 */
	void addOnTagRemoved(void delegate(TextTag, TextTagTable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("tag-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"tag-removed",
			cast(GCallback)&callBackTagRemoved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["tag-removed"] = 1;
		}
		onTagRemovedListeners ~= dlg;
	}
	extern(C) static void callBackTagRemoved(GtkTextTagTable* texttagtableStruct, GtkTextTag* tag, TextTagTable _textTagTable)
	{
		foreach ( void delegate(TextTag, TextTagTable) dlg ; _textTagTable.onTagRemovedListeners )
		{
			dlg(ObjectG.getDObject!(TextTag)(tag), _textTagTable);
		}
	}
	
	
	/**
	 * Creates a new GtkTextTagTable. The table contains no tags by
	 * default.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkTextTagTable * gtk_text_tag_table_new (void);
		auto p = gtk_text_tag_table_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_text_tag_table_new()");
		}
		this(cast(GtkTextTagTable*) p);
	}
	
	/**
	 * Add a tag to the table. The tag is assigned the highest priority
	 * in the table.
	 * tag must not be in a tag table already, and may not have
	 * the same name as an already-added tag.
	 * Params:
	 * tag = a GtkTextTag
	 */
	public void add(TextTag tag)
	{
		// void gtk_text_tag_table_add (GtkTextTagTable *table,  GtkTextTag *tag);
		gtk_text_tag_table_add(gtkTextTagTable, (tag is null) ? null : tag.getTextTagStruct());
	}
	
	/**
	 * Remove a tag from the table. This will remove the table's
	 * reference to the tag, so be careful - the tag will end
	 * up destroyed if you don't have a reference to it.
	 * Params:
	 * tag = a GtkTextTag
	 */
	public void remove(TextTag tag)
	{
		// void gtk_text_tag_table_remove (GtkTextTagTable *table,  GtkTextTag *tag);
		gtk_text_tag_table_remove(gtkTextTagTable, (tag is null) ? null : tag.getTextTagStruct());
	}
	
	/**
	 * Look up a named tag.
	 * Params:
	 * name = name of a tag
	 * Returns: The tag, or NULL if none by that name is in the table. [transfer none]
	 */
	public TextTag lookup(string name)
	{
		// GtkTextTag * gtk_text_tag_table_lookup (GtkTextTagTable *table,  const gchar *name);
		auto p = gtk_text_tag_table_lookup(gtkTextTagTable, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextTag)(cast(GtkTextTag*) p);
	}
	
	/**
	 * Calls func on each tag in table, with user data data.
	 * Note that the table may not be modified while iterating
	 * over it (you can't add/remove tags).
	 * Params:
	 * func = a function to call on each tag. [scope call]
	 * data = user data
	 */
	public void foreac(GtkTextTagTableForeach func, void* data)
	{
		// void gtk_text_tag_table_foreach (GtkTextTagTable *table,  GtkTextTagTableForeach func,  gpointer data);
		gtk_text_tag_table_foreach(gtkTextTagTable, func, data);
	}
	
	/**
	 * Returns the size of the table (number of tags)
	 * Returns: number of tags in table Signal Details The "tag-added" signal void user_function (GtkTextTagTable *texttagtable, GtkTextTag *tag, gpointer user_data) : Run Last
	 */
	public int getSize()
	{
		// gint gtk_text_tag_table_get_size (GtkTextTagTable *table);
		return gtk_text_tag_table_get_size(gtkTextTagTable);
	}
}
