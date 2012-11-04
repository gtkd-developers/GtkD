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
 * inFile  = GstIndex.html
 * outPack = gstreamer
 * outFile = Index
 * strct   = GstIndex
 * realStrct=
 * ctorStrct=
 * clss    = Index
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_index_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.ObjectGst
 * structWrap:
 * 	- GstIndex* -> Index
 * 	- GstObject* -> ObjectGst
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Index;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gstreamer.ObjectGst;



private import gstreamer.ObjectGst;

/**
 * Description
 * GstIndex is used to generate a stream index of one or more elements
 * in a pipeline.
 */
public class Index : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstIndex* gstIndex;
	
	
	public GstIndex* getIndexStruct()
	{
		return gstIndex;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstIndex;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstIndex* gstIndex)
	{
		super(cast(GstObject*)gstIndex);
		this.gstIndex = gstIndex;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstIndex = cast(GstIndex*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(GstIndexEntry*, Index)[] onEntryAddedListeners;
	/**
	 * Is emitted when a new entry is added to the index.
	 * See Also
	 * GstIndexFactory
	 */
	void addOnEntryAdded(void delegate(GstIndexEntry*, Index) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("entry-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"entry-added",
			cast(GCallback)&callBackEntryAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["entry-added"] = 1;
		}
		onEntryAddedListeners ~= dlg;
	}
	extern(C) static void callBackEntryAdded(GstIndex* gstindexStruct, GstIndexEntry* arg1, Index _index)
	{
		foreach ( void delegate(GstIndexEntry*, Index) dlg ; _index.onEntryAddedListeners )
		{
			dlg(arg1, _index);
		}
	}
	
	
	/**
	 * Create a new tileindex object
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstIndex* gst_index_new (void);
		auto p = gst_index_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_index_new()");
		}
		this(cast(GstIndex*) p);
	}
	
	/**
	 * Tell the index that the writer with the given id is done
	 * with this index and is not going to write any more entries
	 * to it.
	 * Params:
	 * id = the writer that commited the index
	 */
	public void commit(int id)
	{
		// void gst_index_commit (GstIndex *index,  gint id);
		gst_index_commit(gstIndex, id);
	}
	
	/**
	 * Get the id of the current group.
	 * Returns: the id of the current group.
	 */
	public int getGroup()
	{
		// gint gst_index_get_group (GstIndex *index);
		return gst_index_get_group(gstIndex);
	}
	
	/**
	 * Create a new group for the given index. It will be
	 * set as the current group.
	 * Returns: the id of the newly created group.
	 */
	public int newGroup()
	{
		// gint gst_index_new_group (GstIndex *index);
		return gst_index_new_group(gstIndex);
	}
	
	/**
	 * Set the current groupnumber to the given argument.
	 * Params:
	 * groupnum = the groupnumber to set
	 * Returns: TRUE if the operation succeeded, FALSE if the group did not exist.
	 */
	public int setGroup(int groupnum)
	{
		// gboolean gst_index_set_group (GstIndex *index,  gint groupnum);
		return gst_index_set_group(gstIndex, groupnum);
	}
	
	/**
	 * Set the certainty of the given index.
	 * Params:
	 * certainty = the certainty to set
	 */
	public void setCertainty(GstIndexCertainty certainty)
	{
		// void gst_index_set_certainty (GstIndex *index,  GstIndexCertainty certainty);
		gst_index_set_certainty(gstIndex, certainty);
	}
	
	/**
	 * Get the certainty of the given index.
	 * Returns: the certainty of the index.
	 */
	public GstIndexCertainty getCertainty()
	{
		// GstIndexCertainty gst_index_get_certainty (GstIndex *index);
		return gst_index_get_certainty(gstIndex);
	}
	
	/**
	 * Lets the app register a custom filter function so that
	 * it can select what entries should be stored in the index.
	 * Params:
	 * filter = the filter to register
	 * userData = data passed to the filter function
	 */
	public void setFilter(GstIndexFilter filter, void* userData)
	{
		// void gst_index_set_filter (GstIndex *index,  GstIndexFilter filter,  gpointer user_data);
		gst_index_set_filter(gstIndex, filter, userData);
	}
	
	/**
	 * Lets the app register a custom filter function so that
	 * it can select what entries should be stored in the index.
	 * Params:
	 * filter = the filter to register
	 * userData = data passed to the filter function
	 * userDataDestroy = function to call when user_data is unset
	 */
	public void setFilterFull(GstIndexFilter filter, void* userData, GDestroyNotify userDataDestroy)
	{
		// void gst_index_set_filter_full (GstIndex *index,  GstIndexFilter filter,  gpointer user_data,  GDestroyNotify user_data_destroy);
		gst_index_set_filter_full(gstIndex, filter, userData, userDataDestroy);
	}
	
	/**
	 * Lets the app register a custom function to map index
	 * ids to writer descriptions.
	 * Params:
	 * resolver = the resolver to register
	 * userData = data passed to the resolver function
	 */
	public void setResolver(GstIndexResolver resolver, void* userData)
	{
		// void gst_index_set_resolver (GstIndex *index,  GstIndexResolver resolver,  gpointer user_data);
		gst_index_set_resolver(gstIndex, resolver, userData);
	}
	
	/**
	 * Before entries can be added to the index, a writer
	 * should obtain a unique id. The methods to add new entries
	 * to the index require this id as an argument.
	 * The application can implement a custom function to map the writer object
	 * to a string. That string will be used to register or look up an id
	 * in the index.
	 * Params:
	 * writer = the GstObject to allocate an id for
	 * id = a pointer to a gint to hold the id
	 * Returns: TRUE if the writer would be mapped to an id.
	 */
	public int getWriterId(ObjectGst writer, ref int id)
	{
		// gboolean gst_index_get_writer_id (GstIndex *index,  GstObject *writer,  gint *id);
		return gst_index_get_writer_id(gstIndex, (writer is null) ? null : writer.getObjectGstStruct(), &id);
	}
	
	/**
	 * Adds a format entry into the index. This function is
	 * used to map dynamic GstFormat ids to their original
	 * format key.
	 * Params:
	 * id = the id of the index writer
	 * format = the format to add to the index
	 * Returns: a pointer to the newly added entry in the index.
	 */
	public GstIndexEntry* addFormat(int id, GstFormat format)
	{
		// GstIndexEntry* gst_index_add_format (GstIndex *index,  gint id,  GstFormat format);
		return gst_index_add_format(gstIndex, id, format);
	}
	
	/**
	 * Associate given format/value pairs with each other.
	 * Params:
	 * id = the id of the index writer
	 * flags = optinal flags for this entry
	 * n = number of associations
	 * list = list of associations
	 * Returns: a pointer to the newly added entry in the index.
	 */
	public GstIndexEntry* addAssociationv(int id, GstAssocFlags flags, int n, GstIndexAssociation* list)
	{
		// GstIndexEntry* gst_index_add_associationv (GstIndex *index,  gint id,  GstAssocFlags flags,  gint n,  const GstIndexAssociation *list);
		return gst_index_add_associationv(gstIndex, id, flags, n, list);
	}
	
	/**
	 * Add the given object to the index with the given key.
	 * This function is not yet implemented.
	 * Params:
	 * id = the id of the index writer
	 * key = a key for the object
	 * type = the GType of the object
	 * object = a pointer to the object to add
	 * Returns: a pointer to the newly added entry in the index.
	 */
	public GstIndexEntry* addObject(int id, string key, GType type, void* object)
	{
		// GstIndexEntry* gst_index_add_object (GstIndex *index,  gint id,  gchar *key,  GType type,  gpointer object);
		return gst_index_add_object(gstIndex, id, Str.toStringz(key), type, object);
	}
	
	/**
	 * Add an id entry into the index.
	 * Params:
	 * id = the id of the index writer
	 * description = the description of the index writer
	 * Returns: a pointer to the newly added entry in the index.
	 */
	public GstIndexEntry* addId(int id, string description)
	{
		// GstIndexEntry* gst_index_add_id (GstIndex *index,  gint id,  gchar *description);
		return gst_index_add_id(gstIndex, id, Str.toStringz(description));
	}
	
	/**
	 * Finds the given format/value in the index
	 * Params:
	 * id = the id of the index writer
	 * method = The lookup method to use
	 * flags = Flags for the entry
	 * format = the format of the value
	 * value = the value to find
	 * Returns: the entry associated with the value or NULL if the value was not found.
	 */
	public GstIndexEntry* getAssocEntry(int id, GstIndexLookupMethod method, GstAssocFlags flags, GstFormat format, long value)
	{
		// GstIndexEntry* gst_index_get_assoc_entry (GstIndex *index,  gint id,  GstIndexLookupMethod method,  GstAssocFlags flags,  GstFormat format,  gint64 value);
		return gst_index_get_assoc_entry(gstIndex, id, method, flags, format, value);
	}
	
	/**
	 * Finds the given format/value in the index with the given
	 * compare function and user_data.
	 * Params:
	 * id = the id of the index writer
	 * method = The lookup method to use
	 * flags = Flags for the entry
	 * format = the format of the value
	 * value = the value to find
	 * func = the function used to compare entries
	 * userData = user data passed to the compare function
	 * Returns: the entry associated with the value or NULL if the value was not found.
	 */
	public GstIndexEntry* getAssocEntryFull(int id, GstIndexLookupMethod method, GstAssocFlags flags, GstFormat format, long value, GCompareDataFunc func, void* userData)
	{
		// GstIndexEntry* gst_index_get_assoc_entry_full (GstIndex *index,  gint id,  GstIndexLookupMethod method,  GstAssocFlags flags,  GstFormat format,  gint64 value,  GCompareDataFunc func,  gpointer user_data);
		return gst_index_get_assoc_entry_full(gstIndex, id, method, flags, format, value, func, userData);
	}
	
	/**
	 * Copies an entry and returns the result.
	 * Params:
	 * entry = the entry to copy
	 * Returns: a newly allocated GstIndexEntry.
	 */
	public static GstIndexEntry* entryCopy(GstIndexEntry* entry)
	{
		// GstIndexEntry* gst_index_entry_copy (GstIndexEntry *entry);
		return gst_index_entry_copy(entry);
	}
	
	/**
	 * Free the memory used by the given entry.
	 * Params:
	 * entry = the entry to free
	 */
	public static void entryFree(GstIndexEntry* entry)
	{
		// void gst_index_entry_free (GstIndexEntry *entry);
		gst_index_entry_free(entry);
	}
	
	/**
	 * Gets alternative formats associated with the indexentry.
	 * Params:
	 * entry = the index to search
	 * format = the format of the value the find
	 * value = a pointer to store the value
	 * Returns: TRUE if there was a value associated with the given format.
	 */
	public static int entryAssocMap(GstIndexEntry* entry, GstFormat format, out long value)
	{
		// gboolean gst_index_entry_assoc_map (GstIndexEntry *entry,  GstFormat format,  gint64 *value);
		return gst_index_entry_assoc_map(entry, format, &value);
	}
}
