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


module gtk.ComboBoxText;

public  import gdk.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.Signals;
private import gtk.ComboBox;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A GtkComboBoxText is a simple variant of #GtkComboBox that hides
 * the model-view complexity for simple text-only use cases.
 * 
 * To create a GtkComboBoxText, use gtk_combo_box_text_new() or
 * gtk_combo_box_text_new_with_entry().
 * 
 * You can add items to a GtkComboBoxText with
 * gtk_combo_box_text_append_text(), gtk_combo_box_text_insert_text()
 * or gtk_combo_box_text_prepend_text() and remove options with
 * gtk_combo_box_text_remove().
 * 
 * If the GtkComboBoxText contains an entry (via the “has-entry” property),
 * its contents can be retrieved using gtk_combo_box_text_get_active_text().
 * The entry itself can be accessed by calling gtk_bin_get_child() on the
 * combo box.
 * 
 * You should not call gtk_combo_box_set_model() or attempt to pack more cells
 * into this combo box via its GtkCellLayout interface.
 * 
 * # GtkComboBoxText as GtkBuildable
 * 
 * The GtkComboBoxText implementation of the GtkBuildable interface supports
 * adding items directly using the <items> element and specifying <item>
 * elements for each item. Each <item> element can specify the “id”
 * corresponding to the appended text and also supports the regular
 * translation attributes “translatable”, “context” and “comments”.
 * 
 * Here is a UI definition fragment specifying GtkComboBoxText items:
 * |[
 * <object class="GtkComboBoxText">
 * <items>
 * <item translatable="yes" id="factory">Factory</item>
 * <item translatable="yes" id="home">Home</item>
 * <item translatable="yes" id="subway">Subway</item>
 * </items>
 * </object>
 * ]|
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * combobox
 * ╰── box.linked
 * ├── entry.combo
 * ├── button.combo
 * ╰── window.popup
 * ]|
 * 
 * GtkComboBoxText has a single CSS node with name combobox. It adds
 * the style class .combo to the main CSS nodes of its entry and button
 * children, and the .linked class to the node of its internal box.
 */
public class ComboBoxText : ComboBox
{
	/** the main Gtk struct */
	protected GtkComboBoxText* gtkComboBoxText;

	/** Get the main Gtk struct */
	public GtkComboBoxText* getComboBoxTextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkComboBoxText;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkComboBoxText;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkComboBoxText* gtkComboBoxText, bool ownedRef = false)
	{
		this.gtkComboBoxText = gtkComboBoxText;
		super(cast(GtkComboBox*)gtkComboBoxText, ownedRef);
	}

	/**
	 * Creates a new ComboBoxText, which is a ComboBox just displaying strings.
	 * Params:
	 *   entry = If true, create an ComboBox with an entry.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (bool entry=true)
	{
		GtkComboBoxText* p;
		if ( entry )
		{
			// GtkWidget* gtk_combo_box_text_new_with_entry (void);
			p = cast(GtkComboBoxText*)gtk_combo_box_text_new_with_entry();
		}
		else
		{
			// GtkWidget* gtk_combo_box_text_new (void);
			p = cast(GtkComboBoxText*)gtk_combo_box_text_new();
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_combo_box_new");
		}

		this(p);
	}

	/** */
	public void setActiveText(string text, bool insert=false)
	{
		int active = 0;
		setActive(0);
		while ( getActive() >= 0 ) // returns -1 if end of list if reached
		{
			if( text == getActiveText() ) return;
			++active;
			setActive(active);
		}
		// was not found, the combo has now nothing selected
		if ( insert )
		{
			append("", text);
			setActive(active);
		}
	}

	/** */
	int getIndex(string text)
	{
		TreeIter iter;
		TreeModelIF model = getModel();
		int index = 0;
		bool found = false;
		bool end = false;
		if ( model.getIterFirst(iter) )
		{
			iter.setModel(model);
			while ( !end && iter !is  null && !found )
			{
				found = iter.getValueString(0) == text;
				if ( !found )
				{
					end = !model.iterNext(iter);
					++index;
				}
			}
		}
		else
		{
			end = true;
		}
		return end ? -1 : index;
	}

	/** */
	void prependOrReplaceText(string text)
	{
		int index = getIndex(text);
		if ( index > 0 )
		{
			remove(index);
			prepend("", text);
		}
		else if ( index == -1 )
		{
			prepend("", text);
		}
	}

	/**
	 * The changed signal is emitted when the active
	 * item is changed. The can be due to the user selecting
	 * a different item from the list, or due to a
	 * call to gtk_combo_box_set_active_iter().
	 * It will also be emitted while typing into the entry of a combo box
	 * with an entry.
	 *
	 * Since: 2.4
	 */
	gulong addOnChanged(void delegate(ComboBoxText) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * For combo boxes that are created with an entry (See GtkComboBox:has-entry).
	 *
	 * A signal which allows you to change how the text displayed in a combo box's
	 * entry is displayed.
	 *
	 * Connect a signal handler which returns an allocated string representing
	 * @path. That string will then be used to set the text in the combo box's entry.
	 * The default signal handler uses the text from the GtkComboBox::entry-text-column
	 * model column.
	 *
	 * Here's an example signal handler which fetches data from the model and
	 * displays it in the entry.
	 * |[<!-- language="C" -->
	 * static gchar*
	 * format_entry_text_callback (GtkComboBox *combo,
	 * const gchar *path,
	 * gpointer     user_data)
	 * {
	 * GtkTreeIter iter;
	 * GtkTreeModel model;
	 * gdouble      value;
	 *
	 * model = gtk_combo_box_get_model (combo);
	 *
	 * gtk_tree_model_get_iter_from_string (model, &iter, path);
	 * gtk_tree_model_get (model, &iter,
	 * THE_DOUBLE_VALUE_COLUMN, &value,
	 * -1);
	 *
	 * return g_strdup_printf ("%g", value);
	 * }
	 * ]|
	 *
	 * Params:
	 *     path = the GtkTreePath string from the combo box's current model to format text for
	 *
	 * Return: a newly allocated string representing @path
	 *     for the current GtkComboBox model.
	 *
	 * Since: 3.4
	 */
	gulong addOnFormatEntryText(string delegate(string, ComboBoxText) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "format-entry-text", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::move-active signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to move the active selection.
	 *
	 * Params:
	 *     scrollType = a #GtkScrollType
	 *
	 * Since: 2.12
	 */
	gulong addOnMoveActive(void delegate(GtkScrollType, ComboBoxText) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-active", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::popdown signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to popdown the combo box list.
	 *
	 * The default bindings for this signal are Alt+Up and Escape.
	 *
	 * Since: 2.12
	 */
	gulong addOnPopdown(bool delegate(ComboBoxText) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popdown", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::popup signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to popup the combo box list.
	 *
	 * The default binding for this signal is Alt+Down.
	 *
	 * Since: 2.12
	 */
	gulong addOnPopup(void delegate(ComboBoxText) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_combo_box_text_get_type();
	}

	/**
	 * Appends @text to the list of strings stored in @combo_box.
	 * If @id is non-%NULL then it is used as the ID of the row.
	 *
	 * This is the same as calling gtk_combo_box_text_insert() with a
	 * position of -1.
	 *
	 * Params:
	 *     id = a string ID for this value, or %NULL
	 *     text = A string
	 *
	 * Since: 2.24
	 */
	public void append(string id, string text)
	{
		gtk_combo_box_text_append(gtkComboBoxText, Str.toStringz(id), Str.toStringz(text));
	}

	/**
	 * Appends @text to the list of strings stored in @combo_box.
	 *
	 * This is the same as calling gtk_combo_box_text_insert_text() with a
	 * position of -1.
	 *
	 * Params:
	 *     text = A string
	 *
	 * Since: 2.24
	 */
	public void appendText(string text)
	{
		gtk_combo_box_text_append_text(gtkComboBoxText, Str.toStringz(text));
	}

	/**
	 * Returns the currently active string in @combo_box, or %NULL
	 * if none is selected. If @combo_box contains an entry, this
	 * function will return its contents (which will not necessarily
	 * be an item from the list).
	 *
	 * Returns: a newly allocated string containing the
	 *     currently active text. Must be freed with g_free().
	 *
	 * Since: 2.24
	 */
	public string getActiveText()
	{
		auto retStr = gtk_combo_box_text_get_active_text(gtkComboBoxText);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Inserts @text at @position in the list of strings stored in @combo_box.
	 * If @id is non-%NULL then it is used as the ID of the row.  See
	 * #GtkComboBox:id-column.
	 *
	 * If @position is negative then @text is appended.
	 *
	 * Params:
	 *     position = An index to insert @text
	 *     id = a string ID for this value, or %NULL
	 *     text = A string to display
	 *
	 * Since: 3.0
	 */
	public void insert(int position, string id, string text)
	{
		gtk_combo_box_text_insert(gtkComboBoxText, position, Str.toStringz(id), Str.toStringz(text));
	}

	/**
	 * Inserts @text at @position in the list of strings stored in @combo_box.
	 *
	 * If @position is negative then @text is appended.
	 *
	 * This is the same as calling gtk_combo_box_text_insert() with a %NULL
	 * ID string.
	 *
	 * Params:
	 *     position = An index to insert @text
	 *     text = A string
	 *
	 * Since: 2.24
	 */
	public void insertText(int position, string text)
	{
		gtk_combo_box_text_insert_text(gtkComboBoxText, position, Str.toStringz(text));
	}

	/**
	 * Prepends @text to the list of strings stored in @combo_box.
	 * If @id is non-%NULL then it is used as the ID of the row.
	 *
	 * This is the same as calling gtk_combo_box_text_insert() with a
	 * position of 0.
	 *
	 * Params:
	 *     id = a string ID for this value, or %NULL
	 *     text = a string
	 *
	 * Since: 2.24
	 */
	public void prepend(string id, string text)
	{
		gtk_combo_box_text_prepend(gtkComboBoxText, Str.toStringz(id), Str.toStringz(text));
	}

	/**
	 * Prepends @text to the list of strings stored in @combo_box.
	 *
	 * This is the same as calling gtk_combo_box_text_insert_text() with a
	 * position of 0.
	 *
	 * Params:
	 *     text = A string
	 *
	 * Since: 2.24
	 */
	public void prependText(string text)
	{
		gtk_combo_box_text_prepend_text(gtkComboBoxText, Str.toStringz(text));
	}

	/**
	 * Removes the string at @position from @combo_box.
	 *
	 * Params:
	 *     position = Index of the item to remove
	 *
	 * Since: 2.24
	 */
	public void remove(int position)
	{
		gtk_combo_box_text_remove(gtkComboBoxText, position);
	}

	/**
	 * Removes all the text entries from the combo box.
	 *
	 * Since: 3.0
	 */
	public override void removeAll()
	{
		gtk_combo_box_text_remove_all(gtkComboBoxText);
	}
}
