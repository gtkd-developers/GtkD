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


module gtk.EditableLabel;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.EditableIF;
private import gtk.EditableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkEditableLabel` is a label that allows users to
 * edit the text by switching to an “edit mode”.
 * 
 * ![An example GtkEditableLabel](editable-label.png)
 * 
 * `GtkEditableLabel` does not have API of its own, but it
 * implements the [iface@Gtk.Editable] interface.
 * 
 * The default bindings for activating the edit mode is
 * to click or press the Enter key. The default bindings
 * for leaving the edit mode are the Enter key (to save
 * the results) or the Escape key (to cancel the editing).
 * 
 * # CSS nodes
 * 
 * ```
 * editablelabel[.editing]
 * ╰── stack
 * ├── label
 * ╰── text
 * ```
 * 
 * `GtkEditableLabel` has a main node with the name editablelabel.
 * When the entry is in editing mode, it gets the .editing style
 * class.
 * 
 * For all the subnodes added to the text node in various situations,
 * see [class@Gtk.Text].
 */
public class EditableLabel : Widget, EditableIF
{
	/** the main Gtk struct */
	protected GtkEditableLabel* gtkEditableLabel;

	/** Get the main Gtk struct */
	public GtkEditableLabel* getEditableLabelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEditableLabel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEditableLabel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEditableLabel* gtkEditableLabel, bool ownedRef = false)
	{
		this.gtkEditableLabel = gtkEditableLabel;
		super(cast(GtkWidget*)gtkEditableLabel, ownedRef);
	}

	// add the Editable capabilities
	mixin EditableT!(GtkEditableLabel);


	/** */
	public static GType getType()
	{
		return gtk_editable_label_get_type();
	}

	/**
	 * Creates a new `GtkEditableLabel` widget.
	 *
	 * Params:
	 *     str = the text for the label
	 *
	 * Returns: the new `GtkEditableLabel`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string str)
	{
		auto __p = gtk_editable_label_new(Str.toStringz(str));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEditableLabel*) __p);
	}

	/**
	 * Returns whether the label is currently in “editing mode”.
	 *
	 * Returns: %TRUE if @self is currently in editing mode
	 */
	public bool getEditing()
	{
		return gtk_editable_label_get_editing(gtkEditableLabel) != 0;
	}

	/**
	 * Switches the label into “editing mode”.
	 */
	public void startEditing()
	{
		gtk_editable_label_start_editing(gtkEditableLabel);
	}

	/**
	 * Switches the label out of “editing mode”.
	 *
	 * If @commit is %TRUE, the resulting text is kept as the
	 * [property@Gtk.Editable:text] property value, otherwise the
	 * resulting text is discarded and the label will keep its
	 * previous [property@Gtk.Editable:text] property value.
	 *
	 * Params:
	 *     commit = whether to set the edited text on the label
	 */
	public void stopEditing(bool commit)
	{
		gtk_editable_label_stop_editing(gtkEditableLabel, commit);
	}
}
