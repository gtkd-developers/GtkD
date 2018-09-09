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


module gtk.TargetList;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.TargetEntry;
private import gtk.TextBuffer;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/**
 * A #GtkTargetList-struct is a reference counted list
 * of #GtkTargetPair and should be treated as
 * opaque.
 */
public class TargetList
{
	/** the main Gtk struct */
	protected GtkTargetList* gtkTargetList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkTargetList* getTargetListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTargetList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTargetList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTargetList* gtkTargetList, bool ownedRef = false)
	{
		this.gtkTargetList = gtkTargetList;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK) && ownedRef )
			gtk_target_list_unref(gtkTargetList);
	}


	/** */
	public static GType getType()
	{
		return gtk_target_list_get_type();
	}

	/**
	 * Creates a new #GtkTargetList from an array of #GtkTargetEntry.
	 *
	 * Params:
	 *     targets = Pointer to an array
	 *         of #GtkTargetEntry
	 *
	 * Returns: the new #GtkTargetList.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TargetEntry[] targets)
	{
		GtkTargetEntry[] targetsArray = new GtkTargetEntry[targets.length];
		for ( int i = 0; i < targets.length; i++ )
		{
			targetsArray[i] = *(targets[i].getTargetEntryStruct());
		}

		auto p = gtk_target_list_new(targetsArray.ptr, cast(uint)targets.length);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTargetList*) p);
	}

	/**
	 * Appends another target to a #GtkTargetList.
	 *
	 * Params:
	 *     target = the interned atom representing the target
	 *     flags = the flags for this target
	 *     info = an ID that will be passed back to the application
	 */
	public void add(GdkAtom target, uint flags, uint info)
	{
		gtk_target_list_add(gtkTargetList, target, flags, info);
	}

	/**
	 * Appends the image targets supported by #GtkSelectionData to
	 * the target list. All targets are added with the same @info.
	 *
	 * Params:
	 *     info = an ID that will be passed back to the application
	 *     writable = whether to add only targets for which GTK+ knows
	 *         how to convert a pixbuf into the format
	 *
	 * Since: 2.6
	 */
	public void addImageTargets(uint info, bool writable)
	{
		gtk_target_list_add_image_targets(gtkTargetList, info, writable);
	}

	/**
	 * Appends the rich text targets registered with
	 * gtk_text_buffer_register_serialize_format() or
	 * gtk_text_buffer_register_deserialize_format() to the target list. All
	 * targets are added with the same @info.
	 *
	 * Params:
	 *     info = an ID that will be passed back to the application
	 *     deserializable = if %TRUE, then deserializable rich text formats
	 *         will be added, serializable formats otherwise.
	 *     buffer = a #GtkTextBuffer.
	 *
	 * Since: 2.10
	 */
	public void addRichTextTargets(uint info, bool deserializable, TextBuffer buffer)
	{
		gtk_target_list_add_rich_text_targets(gtkTargetList, info, deserializable, (buffer is null) ? null : buffer.getTextBufferStruct());
	}

	/**
	 * Prepends a table of #GtkTargetEntry to a target list.
	 *
	 * Params:
	 *     targets = the table of #GtkTargetEntry
	 */
	public void addTable(TargetEntry[] targets)
	{
		GtkTargetEntry[] targetsArray = new GtkTargetEntry[targets.length];
		for ( int i = 0; i < targets.length; i++ )
		{
			targetsArray[i] = *(targets[i].getTargetEntryStruct());
		}

		gtk_target_list_add_table(gtkTargetList, targetsArray.ptr, cast(uint)targets.length);
	}

	/**
	 * Appends the text targets supported by #GtkSelectionData to
	 * the target list. All targets are added with the same @info.
	 *
	 * Params:
	 *     info = an ID that will be passed back to the application
	 *
	 * Since: 2.6
	 */
	public void addTextTargets(uint info)
	{
		gtk_target_list_add_text_targets(gtkTargetList, info);
	}

	/**
	 * Appends the URI targets supported by #GtkSelectionData to
	 * the target list. All targets are added with the same @info.
	 *
	 * Params:
	 *     info = an ID that will be passed back to the application
	 *
	 * Since: 2.6
	 */
	public void addUriTargets(uint info)
	{
		gtk_target_list_add_uri_targets(gtkTargetList, info);
	}

	/**
	 * Looks up a given target in a #GtkTargetList.
	 *
	 * Params:
	 *     target = an interned atom representing the target to search for
	 *     info = a pointer to the location to store
	 *         application info for target, or %NULL
	 *
	 * Returns: %TRUE if the target was found, otherwise %FALSE
	 */
	public bool find(GdkAtom target, out uint info)
	{
		return gtk_target_list_find(gtkTargetList, target, &info) != 0;
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of a #GtkTargetList by one.
	 *
	 * Returns: the passed in #GtkTargetList.
	 */
	public TargetList ref_()
	{
		auto p = gtk_target_list_ref(gtkTargetList);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TargetList)(cast(GtkTargetList*) p, true);
	}

	/**
	 * Removes a target from a target list.
	 *
	 * Params:
	 *     target = the interned atom representing the target
	 */
	public void remove(GdkAtom target)
	{
		gtk_target_list_remove(gtkTargetList, target);
	}

	/**
	 * Decreases the reference count of a #GtkTargetList by one.
	 * If the resulting reference count is zero, frees the list.
	 */
	public void unref()
	{
		gtk_target_list_unref(gtkTargetList);
	}

	/**
	 * This function frees a target table as returned by
	 * gtk_target_table_new_from_list()
	 *
	 * Params:
	 *     targets = a #GtkTargetEntry array
	 *
	 * Since: 2.10
	 */
	public static void targetTableFree(TargetEntry[] targets)
	{
		GtkTargetEntry[] targetsArray = new GtkTargetEntry[targets.length];
		for ( int i = 0; i < targets.length; i++ )
		{
			targetsArray[i] = *(targets[i].getTargetEntryStruct());
		}

		gtk_target_table_free(targetsArray.ptr, cast(int)targets.length);
	}

	/**
	 * This function creates an #GtkTargetEntry array that contains the
	 * same targets as the passed %list. The returned table is newly
	 * allocated and should be freed using gtk_target_table_free() when no
	 * longer needed.
	 *
	 * Params:
	 *     list = a #GtkTargetList
	 *
	 * Returns: the new table.
	 *
	 * Since: 2.10
	 */
	public static TargetEntry[] targetTableNewFromList(TargetList list)
	{
		int nTargets;

		auto p = gtk_target_table_new_from_list((list is null) ? null : list.getTargetListStruct(), &nTargets);

		if(p is null)
		{
			return null;
		}

		TargetEntry[] arr = new TargetEntry[nTargets];
		for(int i = 0; i < nTargets; i++)
		{
			arr[i] = ObjectG.getDObject!(TargetEntry)(cast(GtkTargetEntry*) &p[i]);
		}

		return arr;
	}

	/**
	 * Determines if any of the targets in @targets can be used to
	 * provide a #GdkPixbuf.
	 *
	 * Params:
	 *     targets = an array of #GdkAtoms
	 *     writable = whether to accept only targets for which GTK+ knows
	 *         how to convert a pixbuf into the format
	 *
	 * Returns: %TRUE if @targets include a suitable target for images,
	 *     otherwise %FALSE.
	 *
	 * Since: 2.10
	 */
	public static bool includeImage(GdkAtom[] targets, bool writable)
	{
		return gtk_targets_include_image(targets.ptr, cast(int)targets.length, writable) != 0;
	}

	/**
	 * Determines if any of the targets in @targets can be used to
	 * provide rich text.
	 *
	 * Params:
	 *     targets = an array of #GdkAtoms
	 *     buffer = a #GtkTextBuffer
	 *
	 * Returns: %TRUE if @targets include a suitable target for rich text,
	 *     otherwise %FALSE.
	 *
	 * Since: 2.10
	 */
	public static bool includeRichTex(GdkAtom[] targets, TextBuffer buffer)
	{
		return gtk_targets_include_rich_text(targets.ptr, cast(int)targets.length, (buffer is null) ? null : buffer.getTextBufferStruct()) != 0;
	}

	/**
	 * Determines if any of the targets in @targets can be used to
	 * provide text.
	 *
	 * Params:
	 *     targets = an array of #GdkAtoms
	 *
	 * Returns: %TRUE if @targets include a suitable target for text,
	 *     otherwise %FALSE.
	 *
	 * Since: 2.10
	 */
	public static bool includeText(GdkAtom[] targets)
	{
		return gtk_targets_include_text(targets.ptr, cast(int)targets.length) != 0;
	}

	/**
	 * Determines if any of the targets in @targets can be used to
	 * provide an uri list.
	 *
	 * Params:
	 *     targets = an array of #GdkAtoms
	 *
	 * Returns: %TRUE if @targets include a suitable target for uri lists,
	 *     otherwise %FALSE.
	 *
	 * Since: 2.10
	 */
	public static bool includeUri(GdkAtom[] targets)
	{
		return gtk_targets_include_uri(targets.ptr, cast(int)targets.length) != 0;
	}
}
