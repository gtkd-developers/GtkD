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


module gtk.ComboBox;

private import gdk.Device;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellEditableIF;
private import gtk.CellEditableT;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A `GtkComboBox` is a widget that allows the user to choose from a list of
 * valid choices.
 * 
 * ![An example GtkComboBox](combo-box.png)
 * 
 * The `GtkComboBox` displays the selected choice; when activated, the
 * `GtkComboBox` displays a popup which allows the user to make a new choice.
 * 
 * The `GtkComboBox` uses the model-view pattern; the list of valid choices
 * is specified in the form of a tree model, and the display of the choices
 * can be adapted to the data in the model by using cell renderers, as you
 * would in a tree view. This is possible since `GtkComboBox` implements the
 * [iface@Gtk.CellLayout] interface. The tree model holding the valid
 * choices is not restricted to a flat list, it can be a real tree, and the
 * popup will reflect the tree structure.
 * 
 * To allow the user to enter values not in the model, the
 * [property@Gtk.ComboBox:has-entry] property allows the `GtkComboBox` to
 * contain a [class@Gtk.Entry]. This entry can be accessed by calling
 * [method@Gtk.ComboBox.get_child] on the combo box.
 * 
 * For a simple list of textual choices, the model-view API of `GtkComboBox`
 * can be a bit overwhelming. In this case, [class@Gtk.ComboBoxText] offers
 * a simple alternative. Both `GtkComboBox` and `GtkComboBoxText` can contain
 * an entry.
 * 
 * ## CSS nodes
 * 
 * ```
 * combobox
 * ├── box.linked
 * │   ╰── button.combo
 * │       ╰── box
 * │           ├── cellview
 * │           ╰── arrow
 * ╰── window.popup
 * ```
 * 
 * A normal combobox contains a box with the .linked class, a button
 * with the .combo class and inside those buttons, there are a cellview and
 * an arrow.
 * 
 * ```
 * combobox
 * ├── box.linked
 * │   ├── entry.combo
 * │   ╰── button.combo
 * │       ╰── box
 * │           ╰── arrow
 * ╰── window.popup
 * ```
 * 
 * A `GtkComboBox` with an entry has a single CSS node with name combobox.
 * It contains a box with the .linked class. That box contains an entry and
 * a button, both with the .combo class added. The button also contains another
 * node with name arrow.
 * 
 * # Accessibility
 * 
 * `GtkComboBox` uses the %GTK_ACCESSIBLE_ROLE_COMBO_BOX role.
 */
public class ComboBox : Widget, CellEditableIF, CellLayoutIF
{
	/** the main Gtk struct */
	protected GtkComboBox* gtkComboBox;

	/** Get the main Gtk struct */
	public GtkComboBox* getComboBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkComboBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkComboBox;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkComboBox* gtkComboBox, bool ownedRef = false)
	{
		this.gtkComboBox = gtkComboBox;
		super(cast(GtkWidget*)gtkComboBox, ownedRef);
	}

	// add the CellEditable capabilities
	mixin CellEditableT!(GtkComboBox);

	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkComboBox);

	/**
	 * Creates a new empty GtkComboBox.
	 * Params:
	 *   entry = If true, create an empty ComboBox with an entry.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (bool entry=true)
	{
		GtkComboBox* __p;
		if ( entry )
		{
			// GtkWidget* gtk_combo_box_new_text (void);
			__p = cast(GtkComboBox*)gtk_combo_box_new_with_entry();
		}
		else
		{
			// GtkWidget* gtk_combo_box_new (void);
			__p = cast(GtkComboBox*)gtk_combo_box_new();
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by gtk_combo_box_new");
		}

		this(__p);
	}


	/**
	 * Creates a new GtkComboBox with the model initialized to model.
	 * Params:
	 *   model = A GtkTreeModel.
	 *   entry = If true, create an empty ComboBox with an entry.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TreeModelIF model, bool entry=true)
	{
		GtkComboBox* __p;
		if ( entry )
		{
			// GtkWidget* gtk_combo_box_new_with_model_and_entry (GtkTreeModel *model);
			__p = cast(GtkComboBox*)gtk_combo_box_new_with_model_and_entry((model is null) ? null : model.getTreeModelStruct());
		}
		else
		{
			// GtkWidget* gtk_combo_box_new_with_model (GtkTreeModel *model);
			__p = cast(GtkComboBox*)gtk_combo_box_new_with_model((model is null) ? null : model.getTreeModelStruct());
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by gtk_combo_box_new");
		}

		this(__p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_combo_box_get_type();
	}

	/**
	 * Returns the index of the currently active item.
	 *
	 * If the model is a non-flat treemodel, and the active item is not
	 * an immediate child of the root of the tree, this function returns
	 * `gtk_tree_path_get_indices (path)[0]`, where `path` is the
	 * [struct@Gtk.TreePath] of the active item.
	 *
	 * Returns: An integer which is the index of the currently active item,
	 *     or -1 if there’s no active item
	 */
	public int getActive()
	{
		return gtk_combo_box_get_active(gtkComboBox);
	}

	/**
	 * Returns the ID of the active row of @combo_box.
	 *
	 * This value is taken from the active row and the column specified
	 * by the [property@Gtk.ComboBox:id-column] property of @combo_box
	 * (see [method@Gtk.ComboBox.set_id_column]).
	 *
	 * The returned value is an interned string which means that you can
	 * compare the pointer by value to other interned strings and that you
	 * must not free it.
	 *
	 * If the [property@Gtk.ComboBox:id-column] property of @combo_box is
	 * not set, or if no row is active, or if the active row has a %NULL
	 * ID value, then %NULL is returned.
	 *
	 * Returns: the ID of the active row
	 */
	public string getActiveId()
	{
		return Str.toString(gtk_combo_box_get_active_id(gtkComboBox));
	}

	/**
	 * Sets @iter to point to the currently active item.
	 *
	 * If no item is active, @iter is left unchanged.
	 *
	 * Params:
	 *     iter = A `GtkTreeIter`
	 *
	 * Returns: %TRUE if @iter was set, %FALSE otherwise
	 */
	public bool getActiveIter(out TreeIter iter)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		auto __p = gtk_combo_box_get_active_iter(gtkComboBox, outiter) != 0;

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);

		return __p;
	}

	/**
	 * Returns whether the combo box sets the dropdown button
	 * sensitive or not when there are no items in the model.
	 *
	 * Returns: %GTK_SENSITIVITY_ON if the dropdown button
	 *     is sensitive when the model is empty, %GTK_SENSITIVITY_OFF
	 *     if the button is always insensitive or %GTK_SENSITIVITY_AUTO
	 *     if it is only sensitive as long as the model has one item to
	 *     be selected.
	 */
	public GtkSensitivityType getButtonSensitivity()
	{
		return gtk_combo_box_get_button_sensitivity(gtkComboBox);
	}

	/**
	 * Gets the child widget of @combo_box.
	 *
	 * Returns: the child widget of @combo_box
	 */
	public Widget getChild()
	{
		auto __p = gtk_combo_box_get_child(gtkComboBox);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the column which @combo_box is using to get the strings
	 * from to display in the internal entry.
	 *
	 * Returns: A column in the data source model of @combo_box.
	 */
	public int getEntryTextColumn()
	{
		return gtk_combo_box_get_entry_text_column(gtkComboBox);
	}

	/**
	 * Returns whether the combo box has an entry.
	 *
	 * Returns: whether there is an entry in @combo_box.
	 */
	public bool getHasEntry()
	{
		return gtk_combo_box_get_has_entry(gtkComboBox) != 0;
	}

	/**
	 * Returns the column which @combo_box is using to get string IDs
	 * for values from.
	 *
	 * Returns: A column in the data source model of @combo_box.
	 */
	public int getIdColumn()
	{
		return gtk_combo_box_get_id_column(gtkComboBox);
	}

	/**
	 * Returns the `GtkTreeModel` of @combo_box.
	 *
	 * Returns: A `GtkTreeModel` which was passed
	 *     during construction.
	 */
	public TreeModelIF getModel()
	{
		auto __p = gtk_combo_box_get_model(gtkComboBox);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) __p);
	}

	/**
	 * Gets whether the popup uses a fixed width.
	 *
	 * Returns: %TRUE if the popup uses a fixed width
	 */
	public bool getPopupFixedWidth()
	{
		return gtk_combo_box_get_popup_fixed_width(gtkComboBox) != 0;
	}

	/**
	 * Returns the current row separator function.
	 *
	 * Returns: the current row separator function.
	 */
	public GtkTreeViewRowSeparatorFunc getRowSeparatorFunc()
	{
		return gtk_combo_box_get_row_separator_func(gtkComboBox);
	}

	/**
	 * Hides the menu or dropdown list of @combo_box.
	 *
	 * This function is mostly intended for use by accessibility technologies;
	 * applications should have little use for it.
	 */
	public void popdown()
	{
		gtk_combo_box_popdown(gtkComboBox);
	}

	/**
	 * Pops up the menu or dropdown list of @combo_box.
	 *
	 * This function is mostly intended for use by accessibility technologies;
	 * applications should have little use for it.
	 *
	 * Before calling this, @combo_box must be mapped, or nothing will happen.
	 */
	public void popup()
	{
		gtk_combo_box_popup(gtkComboBox);
	}

	/**
	 * Pops up the menu of @combo_box.
	 *
	 * Note that currently this does not do anything with the device, as it was
	 * previously only used for list-mode combo boxes, and those were removed
	 * in GTK 4. However, it is retained in case similar functionality is added
	 * back later.
	 *
	 * Params:
	 *     device = a `GdkDevice`
	 */
	public void popupForDevice(Device device)
	{
		gtk_combo_box_popup_for_device(gtkComboBox, (device is null) ? null : device.getDeviceStruct());
	}

	/**
	 * Sets the active item of @combo_box to be the item at @index.
	 *
	 * Params:
	 *     index = An index in the model passed during construction,
	 *         or -1 to have no active item
	 */
	public void setActive(int index)
	{
		gtk_combo_box_set_active(gtkComboBox, index);
	}

	/**
	 * Changes the active row of @combo_box to the one that has an ID equal to
	 * @active_id.
	 *
	 * If @active_id is %NULL, the active row is unset. Rows having
	 * a %NULL ID string cannot be made active by this function.
	 *
	 * If the [property@Gtk.ComboBox:id-column] property of @combo_box is
	 * unset or if no row has the given ID then the function does nothing
	 * and returns %FALSE.
	 *
	 * Params:
	 *     activeId = the ID of the row to select
	 *
	 * Returns: %TRUE if a row with a matching ID was found. If a %NULL
	 *     @active_id was given to unset the active row, the function
	 *     always returns %TRUE.
	 */
	public bool setActiveId(string activeId)
	{
		return gtk_combo_box_set_active_id(gtkComboBox, Str.toStringz(activeId)) != 0;
	}

	/**
	 * Sets the current active item to be the one referenced by @iter.
	 *
	 * If @iter is %NULL, the active item is unset.
	 *
	 * Params:
	 *     iter = The `GtkTreeIter`
	 */
	public void setActiveIter(TreeIter iter)
	{
		gtk_combo_box_set_active_iter(gtkComboBox, (iter is null) ? null : iter.getTreeIterStruct());
	}

	/**
	 * Sets whether the dropdown button of the combo box should update
	 * its sensitivity depending on the model contents.
	 *
	 * Params:
	 *     sensitivity = specify the sensitivity of the dropdown button
	 */
	public void setButtonSensitivity(GtkSensitivityType sensitivity)
	{
		gtk_combo_box_set_button_sensitivity(gtkComboBox, sensitivity);
	}

	/**
	 * Sets the child widget of @combo_box.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_combo_box_set_child(gtkComboBox, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the model column which @combo_box should use to get strings
	 * from to be @text_column.
	 *
	 * For this column no separate
	 * [class@Gtk.CellRenderer] is needed.
	 *
	 * The column @text_column in the model of @combo_box must be of
	 * type %G_TYPE_STRING.
	 *
	 * This is only relevant if @combo_box has been created with
	 * [property@Gtk.ComboBox:has-entry] as %TRUE.
	 *
	 * Params:
	 *     textColumn = A column in @model to get the strings from for
	 *         the internal entry
	 */
	public void setEntryTextColumn(int textColumn)
	{
		gtk_combo_box_set_entry_text_column(gtkComboBox, textColumn);
	}

	/**
	 * Sets the model column which @combo_box should use to get string IDs
	 * for values from.
	 *
	 * The column @id_column in the model of @combo_box must be of type
	 * %G_TYPE_STRING.
	 *
	 * Params:
	 *     idColumn = A column in @model to get string IDs for values from
	 */
	public void setIdColumn(int idColumn)
	{
		gtk_combo_box_set_id_column(gtkComboBox, idColumn);
	}

	/**
	 * Sets the model used by @combo_box to be @model.
	 *
	 * Will unset a previously set model (if applicable). If model is %NULL,
	 * then it will unset the model.
	 *
	 * Note that this function does not clear the cell renderers, you have to
	 * call [method@Gtk.CellLayout.clear] yourself if you need to set up different
	 * cell renderers for the new model.
	 *
	 * Params:
	 *     model = A `GtkTreeModel`
	 */
	public void setModel(TreeModelIF model)
	{
		gtk_combo_box_set_model(gtkComboBox, (model is null) ? null : model.getTreeModelStruct());
	}

	/**
	 * Specifies whether the popup’s width should be a fixed width.
	 *
	 * If @fixed is %TRUE, the popup's width is set to match the
	 * allocated width of the combo box.
	 *
	 * Params:
	 *     fixed = whether to use a fixed popup width
	 */
	public void setPopupFixedWidth(bool fixed)
	{
		gtk_combo_box_set_popup_fixed_width(gtkComboBox, fixed);
	}

	/**
	 * Sets the row separator function, which is used to determine
	 * whether a row should be drawn as a separator.
	 *
	 * If the row separator function is %NULL, no separators are drawn.
	 * This is the default value.
	 *
	 * Params:
	 *     func = a `GtkTreeViewRowSeparatorFunc`
	 *     data = user data to pass to @func
	 *     destroy = destroy notifier for @data
	 */
	public void setRowSeparatorFunc(GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy)
	{
		gtk_combo_box_set_row_separator_func(gtkComboBox, func, data, destroy);
	}

	/**
	 * Emitted to when the combo box is activated.
	 *
	 * The `::activate` signal on `GtkComboBox` is an action signal and
	 * emitting it causes the combo box to pop up its dropdown.
	 *
	 * Since: 4.6
	 */
	gulong addOnActivate(void delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the active item is changed.
	 *
	 * The can be due to the user selecting a different item from the list,
	 * or due to a call to [method@Gtk.ComboBox.set_active_iter]. It will
	 * also be emitted while typing into the entry of a combo box with an entry.
	 */
	gulong addOnChanged(void delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted to allow changing how the text in a combo box's entry is displayed.
	 *
	 * See [property@Gtk.ComboBox:has-entry].
	 *
	 * Connect a signal handler which returns an allocated string representing
	 * @path. That string will then be used to set the text in the combo box's
	 * entry. The default signal handler uses the text from the
	 * [property@Gtk.ComboBox:entry-text-column] model column.
	 *
	 * Here's an example signal handler which fetches data from the model and
	 * displays it in the entry.
	 * ```c
	 * static char *
	 * format_entry_text_callback (GtkComboBox *combo,
	 * const char *path,
	 * gpointer     user_data)
	 * {
	 * GtkTreeIter iter;
	 * GtkTreeModel model;
	 * double       value;
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
	 * ```
	 *
	 * Params:
	 *     path = the [struct@Gtk.TreePath] string from the combo box's current model
	 *         to format text for
	 *
	 * Returns: a newly allocated string representing @path
	 *     for the current `GtkComboBox` model.
	 */
	gulong addOnFormatEntryText(string delegate(string, ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "format-entry-text", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted to move the active selection.
	 *
	 * This is an [keybinding signal](class.SignalAction.html).
	 *
	 * Params:
	 *     scrollType = a `GtkScrollType`
	 */
	gulong addOnMoveActive(void delegate(GtkScrollType, ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-active", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted to popdown the combo box list.
	 *
	 * This is an [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are Alt+Up and Escape.
	 */
	gulong addOnPopdown(bool delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popdown", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted to popup the combo box list.
	 *
	 * This is an [keybinding signal](class.SignalAction.html).
	 *
	 * The default binding for this signal is Alt+Down.
	 */
	gulong addOnPopup(void delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
