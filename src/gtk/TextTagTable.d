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


module gtk.TextTagTable;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.TextTag;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * You may wish to begin by reading the
 * [text widget conceptual overview][TextWidget]
 * which gives an overview of all the objects and
 * data types related to the text widget and how they work together.
 * 
 * # GtkTextTagTables as GtkBuildable
 * 
 * The GtkTextTagTable implementation of the GtkBuildable interface
 * supports adding tags by specifying “tag” as the “type” attribute
 * of a <child> element.
 * 
 * An example of a UI definition fragment specifying tags:
 * |[
 * <object class="GtkTextTagTable">
 * <child type="tag">
 * <object class="GtkTextTag"/>
 * </child>
 * </object>
 * ]|
 */
public class TextTagTable : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected GtkTextTagTable* gtkTextTagTable;

	/** Get the main Gtk struct */
	public GtkTextTagTable* getTextTagTableStruct()
	{
		return gtkTextTagTable;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTextTagTable;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkTextTagTable = cast(GtkTextTagTable*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTextTagTable* gtkTextTagTable, bool ownedRef = false)
	{
		this.gtkTextTagTable = gtkTextTagTable;
		super(cast(GObject*)gtkTextTagTable, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkTextTagTable);


	/** */
	public static GType getType()
	{
		return gtk_text_tag_table_get_type();
	}

	/**
	 * Creates a new #GtkTextTagTable. The table contains no tags by
	 * default.
	 *
	 * Return: a new #GtkTextTagTable
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_text_tag_table_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkTextTagTable*) p, true);
	}

	/**
	 * Add a tag to the table. The tag is assigned the highest priority
	 * in the table.
	 *
	 * @tag must not be in a tag table already, and may not have
	 * the same name as an already-added tag.
	 *
	 * Params:
	 *     tag = a #GtkTextTag
	 *
	 * Return: %TRUE on success.
	 */
	public bool add(TextTag tag)
	{
		return gtk_text_tag_table_add(gtkTextTagTable, (tag is null) ? null : tag.getTextTagStruct()) != 0;
	}

	/**
	 * Calls @func on each tag in @table, with user data @data.
	 * Note that the table may not be modified while iterating
	 * over it (you can’t add/remove tags).
	 *
	 * Params:
	 *     func = a function to call on each tag
	 *     data = user data
	 */
	public void foreac(GtkTextTagTableForeach func, void* data)
	{
		gtk_text_tag_table_foreach(gtkTextTagTable, func, data);
	}

	/**
	 * Returns the size of the table (number of tags)
	 *
	 * Return: number of tags in @table
	 */
	public int getSize()
	{
		return gtk_text_tag_table_get_size(gtkTextTagTable);
	}

	/**
	 * Look up a named tag.
	 *
	 * Params:
	 *     name = name of a tag
	 *
	 * Return: The tag, or %NULL if none by that
	 *     name is in the table.
	 */
	public TextTag lookup(string name)
	{
		auto p = gtk_text_tag_table_lookup(gtkTextTagTable, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextTag)(cast(GtkTextTag*) p);
	}

	/**
	 * Remove a tag from the table. If a #GtkTextBuffer has @table as its tag table,
	 * the tag is removed from the buffer. The table’s reference to the tag is
	 * removed, so the tag will end up destroyed if you don’t have a reference to
	 * it.
	 *
	 * Params:
	 *     tag = a #GtkTextTag
	 */
	public void remove(TextTag tag)
	{
		gtk_text_tag_table_remove(gtkTextTagTable, (tag is null) ? null : tag.getTextTagStruct());
	}

	protected class OnTagAddedDelegateWrapper
	{
		void delegate(TextTag, TextTagTable) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(TextTag, TextTagTable) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnTagAddedDelegateWrapper[] onTagAddedListeners;

	/** */
	gulong addOnTagAdded(void delegate(TextTag, TextTagTable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onTagAddedListeners ~= new OnTagAddedDelegateWrapper(dlg, 0, connectFlags);
		onTagAddedListeners[onTagAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"tag-added",
			cast(GCallback)&callBackTagAdded,
			cast(void*)onTagAddedListeners[onTagAddedListeners.length - 1],
			cast(GClosureNotify)&callBackTagAddedDestroy,
			connectFlags);
		return onTagAddedListeners[onTagAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackTagAdded(GtkTextTagTable* texttagtableStruct, GtkTextTag* tag,OnTagAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(TextTag)(tag), wrapper.outer);
	}
	
	extern(C) static void callBackTagAddedDestroy(OnTagAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnTagAdded(wrapper);
	}

	protected void internalRemoveOnTagAdded(OnTagAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onTagAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onTagAddedListeners[index] = null;
				onTagAddedListeners = std.algorithm.remove(onTagAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnTagChangedDelegateWrapper
	{
		void delegate(TextTag, bool, TextTagTable) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(TextTag, bool, TextTagTable) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnTagChangedDelegateWrapper[] onTagChangedListeners;

	/** */
	gulong addOnTagChanged(void delegate(TextTag, bool, TextTagTable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onTagChangedListeners ~= new OnTagChangedDelegateWrapper(dlg, 0, connectFlags);
		onTagChangedListeners[onTagChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"tag-changed",
			cast(GCallback)&callBackTagChanged,
			cast(void*)onTagChangedListeners[onTagChangedListeners.length - 1],
			cast(GClosureNotify)&callBackTagChangedDestroy,
			connectFlags);
		return onTagChangedListeners[onTagChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackTagChanged(GtkTextTagTable* texttagtableStruct, GtkTextTag* tag, bool sizeChanged,OnTagChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(TextTag)(tag), sizeChanged, wrapper.outer);
	}
	
	extern(C) static void callBackTagChangedDestroy(OnTagChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnTagChanged(wrapper);
	}

	protected void internalRemoveOnTagChanged(OnTagChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onTagChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onTagChangedListeners[index] = null;
				onTagChangedListeners = std.algorithm.remove(onTagChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnTagRemovedDelegateWrapper
	{
		void delegate(TextTag, TextTagTable) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(TextTag, TextTagTable) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnTagRemovedDelegateWrapper[] onTagRemovedListeners;

	/** */
	gulong addOnTagRemoved(void delegate(TextTag, TextTagTable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onTagRemovedListeners ~= new OnTagRemovedDelegateWrapper(dlg, 0, connectFlags);
		onTagRemovedListeners[onTagRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"tag-removed",
			cast(GCallback)&callBackTagRemoved,
			cast(void*)onTagRemovedListeners[onTagRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackTagRemovedDestroy,
			connectFlags);
		return onTagRemovedListeners[onTagRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackTagRemoved(GtkTextTagTable* texttagtableStruct, GtkTextTag* tag,OnTagRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(TextTag)(tag), wrapper.outer);
	}
	
	extern(C) static void callBackTagRemovedDestroy(OnTagRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnTagRemoved(wrapper);
	}

	protected void internalRemoveOnTagRemoved(OnTagRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onTagRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onTagRemovedListeners[index] = null;
				onTagRemovedListeners = std.algorithm.remove(onTagRemovedListeners, index);
				break;
			}
		}
	}
	
}
