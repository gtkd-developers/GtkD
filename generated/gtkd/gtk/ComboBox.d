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

private import atk.ObjectAtk;
private import gdk.Device;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Bin;
private import gtk.CellEditableIF;
private import gtk.CellEditableT;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A GtkComboBox is a widget that allows the user to choose from a list of
 * valid choices. The GtkComboBox displays the selected choice. When
 * activated, the GtkComboBox displays a popup which allows the user to
 * make a new choice. The style in which the selected value is displayed,
 * and the style of the popup is determined by the current theme. It may
 * be similar to a Windows-style combo box.
 * 
 * The GtkComboBox uses the model-view pattern; the list of valid choices
 * is specified in the form of a tree model, and the display of the choices
 * can be adapted to the data in the model by using cell renderers, as you
 * would in a tree view. This is possible since GtkComboBox implements the
 * #GtkCellLayout interface. The tree model holding the valid choices is
 * not restricted to a flat list, it can be a real tree, and the popup will
 * reflect the tree structure.
 * 
 * To allow the user to enter values not in the model, the “has-entry”
 * property allows the GtkComboBox to contain a #GtkEntry. This entry
 * can be accessed by calling gtk_bin_get_child() on the combo box.
 * 
 * For a simple list of textual choices, the model-view API of GtkComboBox
 * can be a bit overwhelming. In this case, #GtkComboBoxText offers a
 * simple alternative. Both GtkComboBox and #GtkComboBoxText can contain
 * an entry.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * combobox
 * ├── box.linked
 * │   ╰── button.combo
 * │       ╰── box
 * │           ├── cellview
 * │           ╰── arrow
 * ╰── window.popup
 * ]|
 * 
 * A normal combobox contains a box with the .linked class, a button
 * with the .combo class and inside those buttons, there are a cellview and
 * an arrow.
 * 
 * |[<!-- language="plain" -->
 * combobox
 * ├── box.linked
 * │   ├── entry.combo
 * │   ╰── button.combo
 * │       ╰── box
 * │           ╰── arrow
 * ╰── window.popup
 * ]|
 * 
 * A GtkComboBox with an entry has a single CSS node with name combobox. It
 * contains a box with the .linked class. That box contains an entry and a
 * button, both with the .combo class added.
 * The button also contains another node with name arrow.
 */
public class ComboBox : Bin, CellEditableIF, CellLayoutIF
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
		super(cast(GtkBin*)gtkComboBox, ownedRef);
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
		GtkComboBox* p;
		if ( entry )
		{
			// GtkWidget* gtk_combo_box_new_text (void);
			p = cast(GtkComboBox*)gtk_combo_box_new_with_entry();
		}
		else
		{
			// GtkWidget* gtk_combo_box_new (void);
			p = cast(GtkComboBox*)gtk_combo_box_new();
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_combo_box_new");
		}

		this(p);
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
		GtkComboBox* p;
		if ( entry )
		{
			// GtkWidget* gtk_combo_box_new_with_model_and_entry (GtkTreeModel *model);
			p = cast(GtkComboBox*)gtk_combo_box_new_with_model_and_entry((model is null) ? null : model.getTreeModelStruct());
		}
		else
		{
			// GtkWidget* gtk_combo_box_new_with_model (GtkTreeModel *model);
			p = cast(GtkComboBox*)gtk_combo_box_new_with_model((model is null) ? null : model.getTreeModelStruct());
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_combo_box_new");
		}

		this(p);
	}

	/**
	 * Creates a new empty GtkComboBox using area to layout cells.
	 * Params:
	 *   area = the GtkCellArea to use to layout cell renderers.
	 *   entry = If true, create an empty ComboBox with an entry.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (CellArea area, bool entry=true)
	{
		GtkComboBox* p;
		if ( entry )
		{
			// GtkWidget* gtk_combo_box_new_with_area_and_entry (GtkCellArea *area);
			p = cast(GtkComboBox*)gtk_combo_box_new_with_area_and_entry((area is null) ? null : area.getCellAreaStruct());
		}
		else
		{
			// GtkWidget* gtk_combo_box_new_with_area (GtkCellArea* area);
			p = cast(GtkComboBox*)gtk_combo_box_new_with_area((area is null) ? null : area.getCellAreaStruct());
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_combo_box_new");
		}

		this(p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_combo_box_get_type();
	}

	/**
	 * Returns the index of the currently active item, or -1 if there’s no
	 * active item. If the model is a non-flat treemodel, and the active item
	 * is not an immediate child of the root of the tree, this function returns
	 * `gtk_tree_path_get_indices (path)[0]`, where
	 * `path` is the #GtkTreePath of the active item.
	 *
	 * Returns: An integer which is the index of the currently active item,
	 *     or -1 if there’s no active item.
	 *
	 * Since: 2.4
	 */
	public int getActive()
	{
		return gtk_combo_box_get_active(gtkComboBox);
	}

	/**
	 * Returns the ID of the active row of @combo_box.  This value is taken
	 * from the active row and the column specified by the #GtkComboBox:id-column
	 * property of @combo_box (see gtk_combo_box_set_id_column()).
	 *
	 * The returned value is an interned string which means that you can
	 * compare the pointer by value to other interned strings and that you
	 * must not free it.
	 *
	 * If the #GtkComboBox:id-column property of @combo_box is not set, or if
	 * no row is active, or if the active row has a %NULL ID value, then %NULL
	 * is returned.
	 *
	 * Returns: the ID of the active row, or %NULL
	 *
	 * Since: 3.0
	 */
	public string getActiveId()
	{
		return Str.toString(gtk_combo_box_get_active_id(gtkComboBox));
	}

	/**
	 * Sets @iter to point to the currently active item, if any item is active.
	 * Otherwise, @iter is left unchanged.
	 *
	 * Params:
	 *     iter = A #GtkTreeIter
	 *
	 * Returns: %TRUE if @iter was set, %FALSE otherwise
	 *
	 * Since: 2.4
	 */
	public bool getActiveIter(out TreeIter iter)
	{
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		auto p = gtk_combo_box_get_active_iter(gtkComboBox, outiter) != 0;

		iter = ObjectG.getDObject!(TreeIter)(outiter, true);

		return p;
	}

	/**
	 * Gets the current value of the :add-tearoffs property.
	 *
	 * Returns: the current value of the :add-tearoffs property.
	 */
	public bool getAddTearoffs()
	{
		return gtk_combo_box_get_add_tearoffs(gtkComboBox) != 0;
	}

	/**
	 * Returns whether the combo box sets the dropdown button
	 * sensitive or not when there are no items in the model.
	 *
	 * Returns: %GTK_SENSITIVITY_ON if the dropdown button
	 *     is sensitive when the model is empty, %GTK_SENSITIVITY_OFF
	 *     if the button is always insensitive or
	 *     %GTK_SENSITIVITY_AUTO if it is only sensitive as long as
	 *     the model has one item to be selected.
	 *
	 * Since: 2.14
	 */
	public GtkSensitivityType getButtonSensitivity()
	{
		return gtk_combo_box_get_button_sensitivity(gtkComboBox);
	}

	/**
	 * Returns the column with column span information for @combo_box.
	 *
	 * Returns: the column span column.
	 *
	 * Since: 2.6
	 */
	public int getColumnSpanColumn()
	{
		return gtk_combo_box_get_column_span_column(gtkComboBox);
	}

	/**
	 * Returns the column which @combo_box is using to get the strings
	 * from to display in the internal entry.
	 *
	 * Returns: A column in the data source model of @combo_box.
	 *
	 * Since: 2.24
	 */
	public int getEntryTextColumn()
	{
		return gtk_combo_box_get_entry_text_column(gtkComboBox);
	}

	/**
	 * Returns whether the combo box grabs focus when it is clicked
	 * with the mouse. See gtk_combo_box_set_focus_on_click().
	 *
	 * Deprecated: Use gtk_widget_get_focus_on_click() instead
	 *
	 * Returns: %TRUE if the combo box grabs focus when it is
	 *     clicked with the mouse.
	 *
	 * Since: 2.6
	 */
	public override bool getFocusOnClick()
	{
		return gtk_combo_box_get_focus_on_click(gtkComboBox) != 0;
	}

	/**
	 * Returns whether the combo box has an entry.
	 *
	 * Returns: whether there is an entry in @combo_box.
	 *
	 * Since: 2.24
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
	 *
	 * Since: 3.0
	 */
	public int getIdColumn()
	{
		return gtk_combo_box_get_id_column(gtkComboBox);
	}

	/**
	 * Returns the #GtkTreeModel which is acting as data source for @combo_box.
	 *
	 * Returns: A #GtkTreeModel which was passed
	 *     during construction.
	 *
	 * Since: 2.4
	 */
	public TreeModelIF getModel()
	{
		auto p = gtk_combo_box_get_model(gtkComboBox);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) p);
	}

	/**
	 * Gets the accessible object corresponding to the combo box’s popup.
	 *
	 * This function is mostly intended for use by accessibility technologies;
	 * applications should have little use for it.
	 *
	 * Returns: the accessible object corresponding
	 *     to the combo box’s popup.
	 *
	 * Since: 2.6
	 */
	public ObjectAtk getPopupAccessible()
	{
		auto p = gtk_combo_box_get_popup_accessible(gtkComboBox);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}

	/**
	 * Gets whether the popup uses a fixed width matching
	 * the allocated width of the combo box.
	 *
	 * Returns: %TRUE if the popup uses a fixed width
	 *
	 * Since: 3.0
	 */
	public bool getPopupFixedWidth()
	{
		return gtk_combo_box_get_popup_fixed_width(gtkComboBox) != 0;
	}

	/**
	 * Returns the current row separator function.
	 *
	 * Returns: the current row separator function.
	 *
	 * Since: 2.6
	 */
	public GtkTreeViewRowSeparatorFunc getRowSeparatorFunc()
	{
		return gtk_combo_box_get_row_separator_func(gtkComboBox);
	}

	/**
	 * Returns the column with row span information for @combo_box.
	 *
	 * Returns: the row span column.
	 *
	 * Since: 2.6
	 */
	public int getRowSpanColumn()
	{
		return gtk_combo_box_get_row_span_column(gtkComboBox);
	}

	/**
	 * Gets the current title of the menu in tearoff mode. See
	 * gtk_combo_box_set_add_tearoffs().
	 *
	 * Returns: the menu’s title in tearoff mode. This is an internal copy of the
	 *     string which must not be freed.
	 *
	 * Since: 2.10
	 */
	public string getTitle()
	{
		return Str.toString(gtk_combo_box_get_title(gtkComboBox));
	}

	/**
	 * Returns the wrap width which is used to determine the number of columns
	 * for the popup menu. If the wrap width is larger than 1, the combo box
	 * is in table mode.
	 *
	 * Returns: the wrap width.
	 *
	 * Since: 2.6
	 */
	public int getWrapWidth()
	{
		return gtk_combo_box_get_wrap_width(gtkComboBox);
	}

	/**
	 * Hides the menu or dropdown list of @combo_box.
	 *
	 * This function is mostly intended for use by accessibility technologies;
	 * applications should have little use for it.
	 *
	 * Since: 2.4
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
	 *
	 * Since: 2.4
	 */
	public void popup()
	{
		gtk_combo_box_popup(gtkComboBox);
	}

	/**
	 * Pops up the menu or dropdown list of @combo_box, the popup window
	 * will be grabbed so only @device and its associated pointer/keyboard
	 * are the only #GdkDevices able to send events to it.
	 *
	 * Params:
	 *     device = a #GdkDevice
	 *
	 * Since: 3.0
	 */
	public void popupForDevice(Device device)
	{
		gtk_combo_box_popup_for_device(gtkComboBox, (device is null) ? null : device.getDeviceStruct());
	}

	/**
	 * Sets the active item of @combo_box to be the item at @index.
	 *
	 * Params:
	 *     index = An index in the model passed during construction, or -1 to have
	 *         no active item
	 *
	 * Since: 2.4
	 */
	public void setActive(int index)
	{
		gtk_combo_box_set_active(gtkComboBox, index);
	}

	/**
	 * Changes the active row of @combo_box to the one that has an ID equal to
	 * @active_id, or unsets the active row if @active_id is %NULL.  Rows having
	 * a %NULL ID string cannot be made active by this function.
	 *
	 * If the #GtkComboBox:id-column property of @combo_box is unset or if no
	 * row has the given ID then the function does nothing and returns %FALSE.
	 *
	 * Params:
	 *     activeId = the ID of the row to select, or %NULL
	 *
	 * Returns: %TRUE if a row with a matching ID was found.  If a %NULL
	 *     @active_id was given to unset the active row, the function
	 *     always returns %TRUE.
	 *
	 * Since: 3.0
	 */
	public bool setActiveId(string activeId)
	{
		return gtk_combo_box_set_active_id(gtkComboBox, Str.toStringz(activeId)) != 0;
	}

	/**
	 * Sets the current active item to be the one referenced by @iter, or
	 * unsets the active item if @iter is %NULL.
	 *
	 * Params:
	 *     iter = The #GtkTreeIter, or %NULL
	 *
	 * Since: 2.4
	 */
	public void setActiveIter(TreeIter iter)
	{
		gtk_combo_box_set_active_iter(gtkComboBox, (iter is null) ? null : iter.getTreeIterStruct());
	}

	/**
	 * Sets whether the popup menu should have a tearoff
	 * menu item.
	 *
	 * Params:
	 *     addTearoffs = %TRUE to add tearoff menu items
	 *
	 * Since: 2.6
	 */
	public void setAddTearoffs(bool addTearoffs)
	{
		gtk_combo_box_set_add_tearoffs(gtkComboBox, addTearoffs);
	}

	/**
	 * Sets whether the dropdown button of the combo box should be
	 * always sensitive (%GTK_SENSITIVITY_ON), never sensitive (%GTK_SENSITIVITY_OFF)
	 * or only if there is at least one item to display (%GTK_SENSITIVITY_AUTO).
	 *
	 * Params:
	 *     sensitivity = specify the sensitivity of the dropdown button
	 *
	 * Since: 2.14
	 */
	public void setButtonSensitivity(GtkSensitivityType sensitivity)
	{
		gtk_combo_box_set_button_sensitivity(gtkComboBox, sensitivity);
	}

	/**
	 * Sets the column with column span information for @combo_box to be
	 * @column_span. The column span column contains integers which indicate
	 * how many columns an item should span.
	 *
	 * Params:
	 *     columnSpan = A column in the model passed during construction
	 *
	 * Since: 2.4
	 */
	public void setColumnSpanColumn(int columnSpan)
	{
		gtk_combo_box_set_column_span_column(gtkComboBox, columnSpan);
	}

	/**
	 * Sets the model column which @combo_box should use to get strings from
	 * to be @text_column. The column @text_column in the model of @combo_box
	 * must be of type %G_TYPE_STRING.
	 *
	 * This is only relevant if @combo_box has been created with
	 * #GtkComboBox:has-entry as %TRUE.
	 *
	 * Params:
	 *     textColumn = A column in @model to get the strings from for
	 *         the internal entry
	 *
	 * Since: 2.24
	 */
	public void setEntryTextColumn(int textColumn)
	{
		gtk_combo_box_set_entry_text_column(gtkComboBox, textColumn);
	}

	/**
	 * Sets whether the combo box will grab focus when it is clicked with
	 * the mouse. Making mouse clicks not grab focus is useful in places
	 * like toolbars where you don’t want the keyboard focus removed from
	 * the main area of the application.
	 *
	 * Deprecated: Use gtk_widget_set_focus_on_click() instead
	 *
	 * Params:
	 *     focusOnClick = whether the combo box grabs focus when clicked
	 *         with the mouse
	 *
	 * Since: 2.6
	 */
	public override void setFocusOnClick(bool focusOnClick)
	{
		gtk_combo_box_set_focus_on_click(gtkComboBox, focusOnClick);
	}

	/**
	 * Sets the model column which @combo_box should use to get string IDs
	 * for values from. The column @id_column in the model of @combo_box
	 * must be of type %G_TYPE_STRING.
	 *
	 * Params:
	 *     idColumn = A column in @model to get string IDs for values from
	 *
	 * Since: 3.0
	 */
	public void setIdColumn(int idColumn)
	{
		gtk_combo_box_set_id_column(gtkComboBox, idColumn);
	}

	/**
	 * Sets the model used by @combo_box to be @model. Will unset a previously set
	 * model (if applicable). If model is %NULL, then it will unset the model.
	 *
	 * Note that this function does not clear the cell renderers, you have to
	 * call gtk_cell_layout_clear() yourself if you need to set up different
	 * cell renderers for the new model.
	 *
	 * Params:
	 *     model = A #GtkTreeModel
	 *
	 * Since: 2.4
	 */
	public void setModel(TreeModelIF model)
	{
		gtk_combo_box_set_model(gtkComboBox, (model is null) ? null : model.getTreeModelStruct());
	}

	/**
	 * Specifies whether the popup’s width should be a fixed width
	 * matching the allocated width of the combo box.
	 *
	 * Params:
	 *     fixed = whether to use a fixed popup width
	 *
	 * Since: 3.0
	 */
	public void setPopupFixedWidth(bool fixed)
	{
		gtk_combo_box_set_popup_fixed_width(gtkComboBox, fixed);
	}

	/**
	 * Sets the row separator function, which is used to determine
	 * whether a row should be drawn as a separator. If the row separator
	 * function is %NULL, no separators are drawn. This is the default value.
	 *
	 * Params:
	 *     func = a #GtkTreeViewRowSeparatorFunc
	 *     data = user data to pass to @func, or %NULL
	 *     destroy = destroy notifier for @data, or %NULL
	 *
	 * Since: 2.6
	 */
	public void setRowSeparatorFunc(GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy)
	{
		gtk_combo_box_set_row_separator_func(gtkComboBox, func, data, destroy);
	}

	/**
	 * Sets the column with row span information for @combo_box to be @row_span.
	 * The row span column contains integers which indicate how many rows
	 * an item should span.
	 *
	 * Params:
	 *     rowSpan = A column in the model passed during construction.
	 *
	 * Since: 2.4
	 */
	public void setRowSpanColumn(int rowSpan)
	{
		gtk_combo_box_set_row_span_column(gtkComboBox, rowSpan);
	}

	/**
	 * Sets the menu’s title in tearoff mode.
	 *
	 * Params:
	 *     title = a title for the menu in tearoff mode
	 *
	 * Since: 2.10
	 */
	public void setTitle(string title)
	{
		gtk_combo_box_set_title(gtkComboBox, Str.toStringz(title));
	}

	/**
	 * Sets the wrap width of @combo_box to be @width. The wrap width is basically
	 * the preferred number of columns when you want the popup to be layed out
	 * in a table.
	 *
	 * Params:
	 *     width = Preferred number of columns
	 *
	 * Since: 2.4
	 */
	public void setWrapWidth(int width)
	{
		gtk_combo_box_set_wrap_width(gtkComboBox, width);
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
	gulong addOnChanged(void delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	 * Returns: a newly allocated string representing @path
	 *     for the current GtkComboBox model.
	 *
	 * Since: 3.4
	 */
	gulong addOnFormatEntryText(string delegate(string, ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	gulong addOnMoveActive(void delegate(GtkScrollType, ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	gulong addOnPopdown(bool delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	gulong addOnPopup(void delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
