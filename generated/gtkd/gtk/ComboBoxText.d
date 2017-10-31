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

	protected override void setStruct(GObject* obj)
	{
		gtkComboBoxText = cast(GtkComboBoxText*)obj;
		super.setStruct(obj);
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

	protected class OnChangedDelegateWrapper
	{
		void delegate(ComboBoxText) dlg;
		gulong handlerId;

		this(void delegate(ComboBoxText) dlg)
		{
			this.dlg = dlg;
			onChangedListeners ~= this;
		}

		void remove(OnChangedDelegateWrapper source)
		{
			foreach(index, wrapper; onChangedListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onChangedListeners[index] = null;
					onChangedListeners = std.algorithm.remove(onChangedListeners, index);
					break;
				}
			}
		}
	}
	OnChangedDelegateWrapper[] onChangedListeners;

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
		auto wrapper = new OnChangedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackChangedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static void callBackChanged(GtkComboBoxText* comboboxTextStruct, OnChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}

	extern(C) static void callBackChangedDestroy(OnChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnFormatEntryTextDelegateWrapper
	{
		string delegate(string, ComboBoxText) dlg;
		gulong handlerId;

		this(string delegate(string, ComboBoxText) dlg)
		{
			this.dlg = dlg;
			onFormatEntryTextListeners ~= this;
		}

		void remove(OnFormatEntryTextDelegateWrapper source)
		{
			foreach(index, wrapper; onFormatEntryTextListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onFormatEntryTextListeners[index] = null;
					onFormatEntryTextListeners = std.algorithm.remove(onFormatEntryTextListeners, index);
					break;
				}
			}
		}
	}
	OnFormatEntryTextDelegateWrapper[] onFormatEntryTextListeners;

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
		auto wrapper = new OnFormatEntryTextDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"format-entry-text",
			cast(GCallback)&callBackFormatEntryText,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackFormatEntryTextDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static string callBackFormatEntryText(GtkComboBoxText* comboboxStructText, char* path,OnFormatEntryTextDelegateWrapper wrapper)
	{
		return wrapper.dlg(Str.toString(path), wrapper.outer);
	}

	extern(C) static void callBackFormatEntryTextDestroy(OnFormatEntryTextDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMoveActiveDelegateWrapper
	{
		void delegate(GtkScrollType, ComboBoxText) dlg;
		gulong handlerId;

		this(void delegate(GtkScrollType, ComboBoxText) dlg)
		{
			this.dlg = dlg;
			onMoveActiveListeners ~= this;
		}

		void remove(OnMoveActiveDelegateWrapper source)
		{
			foreach(index, wrapper; onMoveActiveListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onMoveActiveListeners[index] = null;
					onMoveActiveListeners = std.algorithm.remove(onMoveActiveListeners, index);
					break;
				}
			}
		}
	}
	OnMoveActiveDelegateWrapper[] onMoveActiveListeners;

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
		auto wrapper = new OnMoveActiveDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"move-active",
			cast(GCallback)&callBackMoveActive,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMoveActiveDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static void callBackMoveActive(GtkComboBoxText* comboboxTextStruct, GtkScrollType scrollType,OnMoveActiveDelegateWrapper wrapper)
	{
		wrapper.dlg(scrollType, wrapper.outer);
	}

	extern(C) static void callBackMoveActiveDestroy(OnMoveActiveDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnPopdownDelegateWrapper
	{
		bool delegate(ComboBoxText) dlg;
		gulong handlerId;

		this(bool delegate(ComboBoxText) dlg)
		{
			this.dlg = dlg;
			onPopdownListeners ~= this;
		}

		void remove(OnPopdownDelegateWrapper source)
		{
			foreach(index, wrapper; onPopdownListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onPopdownListeners[index] = null;
					onPopdownListeners = std.algorithm.remove(onPopdownListeners, index);
					break;
				}
			}
		}
	}
	OnPopdownDelegateWrapper[] onPopdownListeners;

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
		auto wrapper = new OnPopdownDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"popdown",
			cast(GCallback)&callBackPopdown,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackPopdownDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static int callBackPopdown(GtkComboBoxText* comboboxTextStruct,OnPopdownDelegateWrapper wrapper)
	{
		return wrapper.dlg(wrapper.outer);
	}

	extern(C) static void callBackPopdownDestroy(OnPopdownDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnPopupDelegateWrapper
	{
		void delegate(ComboBoxText) dlg;
		gulong handlerId;

		this(void delegate(ComboBoxText) dlg)
		{
			this.dlg = dlg;
			onPopupListeners ~= this;
		}

		void remove(OnPopupDelegateWrapper source)
		{
			foreach(index, wrapper; onPopupListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onPopupListeners[index] = null;
					onPopupListeners = std.algorithm.remove(onPopupListeners, index);
					break;
				}
			}
		}
	}
	OnPopupDelegateWrapper[] onPopupListeners;

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
		auto wrapper = new OnPopupDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"popup",
			cast(GCallback)&callBackPopup,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackPopupDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static void callBackPopup(GtkComboBoxText* comboboxTextStruct,OnPopupDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}

	extern(C) static void callBackPopupDestroy(OnPopupDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
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
