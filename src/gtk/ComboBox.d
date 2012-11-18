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
 * inFile  = GtkComboBox.html
 * outPack = gtk
 * outFile = ComboBox
 * strct   = GtkComboBox
 * realStrct=
 * ctorStrct=
 * clss    = ComboBox
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- CellLayoutIF
 * 	- CellEditableIF
 * prefixes:
 * 	- gtk_combo_box_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_combo_box_new
 * 	- gtk_combo_box_new_with_entry
 * 	- gtk_combo_box_new_with_model
 * 	- gtk_combo_box_new_with_model_and_entry
 * 	- gtk_combo_box_new_with_area
 * 	- gtk_combo_box_new_with_area_and_entry
 * omit signals:
 * imports:
 * 	- atk.ObjectAtk
 * 	- glib.Str
 * 	- gdk.Device
 * 	- gtk.CellArea
 * 	- gtk.TreeIter
 * 	- gtk.TreeModel
 * 	- gtk.TreeModelIF
 * 	- gtk.CellLayoutIF
 * 	- gtk.CellLayoutT
 * 	- gtk.CellEditableT
 * 	- gtk.CellEditableIF
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * 	- GdkDevice* -> Device
 * 	- GtkCellArea* -> CellArea
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModelIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ComboBox;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import atk.ObjectAtk;
private import glib.Str;
private import gdk.Device;
private import gtk.CellArea;
private import gtk.TreeIter;
private import gtk.TreeModel;
private import gtk.TreeModelIF;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;
private import gtk.CellEditableT;
private import gtk.CellEditableIF;



private import gtk.Bin;

/**
 * Description
 * A GtkComboBox is a widget that allows the user to choose from a list of
 * valid choices. The GtkComboBox displays the selected choice. When
 * activated, the GtkComboBox displays a popup which allows the user to
 * make a new choice. The style in which the selected value is displayed,
 * and the style of the popup is determined by the current theme. It may
 * be similar to a Windows-style combo box.
 * The GtkComboBox uses the model-view pattern; the list of valid choices
 * is specified in the form of a tree model, and the display of the choices
 * can be adapted to the data in the model by using cell renderers, as you
 * would in a tree view. This is possible since GtkComboBox implements the
 * GtkCellLayout interface. The tree model holding the valid choices is
 * not restricted to a flat list, it can be a real tree, and the popup will
 * reflect the tree structure.
 * To allow the user to enter values not in the model, the 'has-entry'
 * property allows the GtkComboBox to contain a GtkEntry. This entry
 * can be accessed by calling gtk_bin_get_child() on the combo box.
 * For a simple list of textual choices, the model-view API of GtkComboBox
 * can be a bit overwhelming. In this case, GtkComboBoxText offers a
 * simple alternative. Both GtkComboBox and GtkComboBoxText can contain
 * an entry.
 */
public class ComboBox : Bin, CellLayoutIF, CellEditableIF
{
	
	/** the main Gtk struct */
	protected GtkComboBox* gtkComboBox;
	
	
	public GtkComboBox* getComboBoxStruct()
	{
		return gtkComboBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkComboBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkComboBox* gtkComboBox)
	{
		super(cast(GtkBin*)gtkComboBox);
		this.gtkComboBox = gtkComboBox;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkComboBox = cast(GtkComboBox*)obj;
	}
	
	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkComboBox);
	
	// add the CellEditable capabilities
	mixin CellEditableT!(GtkComboBox);
	
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
			p = cast(GtkComboBox*)gtk_combo_box_new_with_model_and_entry((model is null) ? null : model.getTreeModelTStruct());
		}
		else
		{
			// GtkWidget* gtk_combo_box_new_with_model (GtkTreeModel *model);
			p = cast(GtkComboBox*)gtk_combo_box_new_with_model((model is null) ? null : model.getTreeModelTStruct());
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
	int[string] connectedSignals;
	
	void delegate(ComboBox)[] onChangedListeners;
	/**
	 * The changed signal is emitted when the active
	 * item is changed. The can be due to the user selecting
	 * a different item from the list, or due to a
	 * call to gtk_combo_box_set_active_iter().
	 * It will also be emitted while typing into the entry of a combo box
	 * with an entry.
	 * Since 2.4
	 */
	void addOnChanged(void delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackChanged(GtkComboBox* widgetStruct, ComboBox _comboBox)
	{
		foreach ( void delegate(ComboBox) dlg ; _comboBox.onChangedListeners )
		{
			dlg(_comboBox);
		}
	}
	
	string delegate(string, ComboBox)[] onFormatEntryTextListeners;
	/**
	 * For combo boxes that are created with an entry (See GtkComboBox:has-entry).
	 * A signal which allows you to change how the text displayed in a combo box's
	 * entry is displayed.
	 * Connect a signal handler which returns an allocated string representing
	 * path. That string will then be used to set the text in the combo box's entry.
	 * The default signal handler uses the text from the GtkComboBox::entry-text-column
	 * model column.
	 * Here's an example signal handler which fetches data from the model and
	 * displays it in the entry.
	 * $(DDOC_COMMENT example)
	 * Since 3.4
	 */
	void addOnFormatEntryText(string delegate(string, ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("format-entry-text" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"format-entry-text",
			cast(GCallback)&callBackFormatEntryText,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["format-entry-text"] = 1;
		}
		onFormatEntryTextListeners ~= dlg;
	}
	extern(C) static void callBackFormatEntryText(GtkComboBox* comboStruct, gchar* path, ComboBox _comboBox)
	{
		foreach ( string delegate(string, ComboBox) dlg ; _comboBox.onFormatEntryTextListeners )
		{
			dlg(Str.toString(path), _comboBox);
		}
	}
	
	void delegate(GtkScrollType, ComboBox)[] onMoveActiveListeners;
	/**
	 * The ::move-active signal is a
	 * keybinding signal
	 * which gets emitted to move the active selection.
	 * Since 2.12
	 */
	void addOnMoveActive(void delegate(GtkScrollType, ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-active" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-active",
			cast(GCallback)&callBackMoveActive,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-active"] = 1;
		}
		onMoveActiveListeners ~= dlg;
	}
	extern(C) static void callBackMoveActive(GtkComboBox* widgetStruct, GtkScrollType scrollType, ComboBox _comboBox)
	{
		foreach ( void delegate(GtkScrollType, ComboBox) dlg ; _comboBox.onMoveActiveListeners )
		{
			dlg(scrollType, _comboBox);
		}
	}
	
	bool delegate(ComboBox)[] onPopdownListeners;
	/**
	 * The ::popdown signal is a
	 * keybinding signal
	 * which gets emitted to popdown the combo box list.
	 * The default bindings for this signal are Alt+Up and Escape.
	 * Since 2.12
	 */
	void addOnPopdown(bool delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("popdown" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"popdown",
			cast(GCallback)&callBackPopdown,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["popdown"] = 1;
		}
		onPopdownListeners ~= dlg;
	}
	extern(C) static gboolean callBackPopdown(GtkComboBox* buttonStruct, ComboBox _comboBox)
	{
		foreach ( bool delegate(ComboBox) dlg ; _comboBox.onPopdownListeners )
		{
			if ( dlg(_comboBox) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(ComboBox)[] onPopupListeners;
	/**
	 * The ::popup signal is a
	 * keybinding signal
	 * which gets emitted to popup the combo box list.
	 * The default binding for this signal is Alt+Down.
	 * Since 2.12
	 * See Also
	 * GtkComboBoxText, GtkTreeModel, GtkCellRenderer
	 */
	void addOnPopup(void delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("popup" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"popup",
			cast(GCallback)&callBackPopup,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["popup"] = 1;
		}
		onPopupListeners ~= dlg;
	}
	extern(C) static void callBackPopup(GtkComboBox* widgetStruct, ComboBox _comboBox)
	{
		foreach ( void delegate(ComboBox) dlg ; _comboBox.onPopupListeners )
		{
			dlg(_comboBox);
		}
	}
	
	
	/**
	 * Returns the wrap width which is used to determine the number of columns
	 * for the popup menu. If the wrap width is larger than 1, the combo box
	 * is in table mode.
	 * Since 2.6
	 * Returns: the wrap width.
	 */
	public int getWrapWidth()
	{
		// gint gtk_combo_box_get_wrap_width (GtkComboBox *combo_box);
		return gtk_combo_box_get_wrap_width(gtkComboBox);
	}
	
	/**
	 * Sets the wrap width of combo_box to be width. The wrap width is basically
	 * the preferred number of columns when you want the popup to be layed out
	 * in a table.
	 * Since 2.4
	 * Params:
	 * width = Preferred number of columns
	 */
	public void setWrapWidth(int width)
	{
		// void gtk_combo_box_set_wrap_width (GtkComboBox *combo_box,  gint width);
		gtk_combo_box_set_wrap_width(gtkComboBox, width);
	}
	
	/**
	 * Returns the column with row span information for combo_box.
	 * Since 2.6
	 * Returns: the row span column.
	 */
	public int getRowSpanColumn()
	{
		// gint gtk_combo_box_get_row_span_column (GtkComboBox *combo_box);
		return gtk_combo_box_get_row_span_column(gtkComboBox);
	}
	
	/**
	 * Sets the column with row span information for combo_box to be row_span.
	 * The row span column contains integers which indicate how many rows
	 * an item should span.
	 * Since 2.4
	 * Params:
	 * rowSpan = A column in the model passed during construction.
	 */
	public void setRowSpanColumn(int rowSpan)
	{
		// void gtk_combo_box_set_row_span_column (GtkComboBox *combo_box,  gint row_span);
		gtk_combo_box_set_row_span_column(gtkComboBox, rowSpan);
	}
	
	/**
	 * Returns the column with column span information for combo_box.
	 * Since 2.6
	 * Returns: the column span column.
	 */
	public int getColumnSpanColumn()
	{
		// gint gtk_combo_box_get_column_span_column  (GtkComboBox *combo_box);
		return gtk_combo_box_get_column_span_column(gtkComboBox);
	}
	
	/**
	 * Sets the column with column span information for combo_box to be
	 * column_span. The column span column contains integers which indicate
	 * how many columns an item should span.
	 * Since 2.4
	 * Params:
	 * columnSpan = A column in the model passed during construction
	 */
	public void setColumnSpanColumn(int columnSpan)
	{
		// void gtk_combo_box_set_column_span_column  (GtkComboBox *combo_box,  gint column_span);
		gtk_combo_box_set_column_span_column(gtkComboBox, columnSpan);
	}
	
	/**
	 * Returns the index of the currently active item, or -1 if there's no
	 * active item. If the model is a non-flat treemodel, and the active item
	 * is not an immediate child of the root of the tree, this function returns
	 * gtk_tree_path_get_indices (path)[0], where
	 * path is the GtkTreePath of the active item.
	 * Since 2.4
	 * Returns: An integer which is the index of the currently active item, or -1 if there's no active item.
	 */
	public int getActive()
	{
		// gint gtk_combo_box_get_active (GtkComboBox *combo_box);
		return gtk_combo_box_get_active(gtkComboBox);
	}
	
	/**
	 * Sets the active item of combo_box to be the item at index.
	 * Since 2.4
	 * Params:
	 * index = An index in the model passed during construction, or -1 to have
	 * no active item
	 */
	public void setActive(int index)
	{
		// void gtk_combo_box_set_active (GtkComboBox *combo_box,  gint index_);
		gtk_combo_box_set_active(gtkComboBox, index);
	}
	
	/**
	 * Sets iter to point to the current active item, if it exists.
	 * Since 2.4
	 * Params:
	 * iter = The uninitialized GtkTreeIter. [out]
	 * Returns: TRUE, if iter was set
	 */
	public int getActiveIter(TreeIter iter)
	{
		// gboolean gtk_combo_box_get_active_iter (GtkComboBox *combo_box,  GtkTreeIter *iter);
		return gtk_combo_box_get_active_iter(gtkComboBox, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Sets the current active item to be the one referenced by iter, or
	 * unsets the active item if iter is NULL.
	 * Since 2.4
	 * Params:
	 * iter = The GtkTreeIter, or NULL. [allow-none]
	 */
	public void setActiveIter(TreeIter iter)
	{
		// void gtk_combo_box_set_active_iter (GtkComboBox *combo_box,  GtkTreeIter *iter);
		gtk_combo_box_set_active_iter(gtkComboBox, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Returns the column which combo_box is using to get string IDs
	 * for values from.
	 * Returns: A column in the data source model of combo_box. Since 3.0
	 */
	public int getIdColumn()
	{
		// gint gtk_combo_box_get_id_column (GtkComboBox *combo_box);
		return gtk_combo_box_get_id_column(gtkComboBox);
	}
	
	/**
	 * Sets the model column which combo_box should use to get string IDs
	 * for values from. The column id_column in the model of combo_box
	 * must be of type G_TYPE_STRING.
	 * Params:
	 * idColumn = A column in model to get string IDs for values from
	 * Since 3.0
	 */
	public void setIdColumn(int idColumn)
	{
		// void gtk_combo_box_set_id_column (GtkComboBox *combo_box,  gint id_column);
		gtk_combo_box_set_id_column(gtkComboBox, idColumn);
	}
	
	/**
	 * Returns the ID of the active row of combo_box. This value is taken
	 * from the active row and the column specified by the "id-column"
	 * property of combo_box (see gtk_combo_box_set_id_column()).
	 * The returned value is an interned string which means that you can
	 * compare the pointer by value to other interned strings and that you
	 * must not free it.
	 * If the "id-column" property of combo_box is not set, or if
	 * no row is active, or if the active row has a NULL ID value, then NULL
	 * is returned.
	 * Returns: the ID of the active row, or NULL Since 3.0
	 */
	public string getActiveId()
	{
		// const gchar * gtk_combo_box_get_active_id (GtkComboBox *combo_box);
		return Str.toString(gtk_combo_box_get_active_id(gtkComboBox));
	}
	
	/**
	 * Changes the active row of combo_box to the one that has an ID equal to
	 * active_id, or unsets the active row if active_id is NULL. Rows having
	 * a NULL ID string cannot be made active by this function.
	 * If the "id-column" property of combo_box is unset or if no
	 * row has the given ID then the function does nothing and returns FALSE.
	 * Params:
	 * activeId = the ID of the row to select, or NULL. [allow-none]
	 * Returns: TRUE if a row with a matching ID was found. If a NULL active_id was given to unset the active row, the function always returns TRUE. Since 3.0
	 */
	public int setActiveId(string activeId)
	{
		// gboolean gtk_combo_box_set_active_id (GtkComboBox *combo_box,  const gchar *active_id);
		return gtk_combo_box_set_active_id(gtkComboBox, Str.toStringz(activeId));
	}
	
	/**
	 * Returns the GtkTreeModel which is acting as data source for combo_box.
	 * Since 2.4
	 * Returns: A GtkTreeModel which was passed during construction. [transfer none]
	 */
	public TreeModelIF getModel()
	{
		// GtkTreeModel * gtk_combo_box_get_model (GtkComboBox *combo_box);
		auto p = gtk_combo_box_get_model(gtkComboBox);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeModel)(cast(GtkTreeModel*) p);
	}
	
	/**
	 * Sets the model used by combo_box to be model. Will unset a previously set
	 * model (if applicable). If model is NULL, then it will unset the model.
	 * Note that this function does not clear the cell renderers, you have to
	 * call gtk_cell_layout_clear() yourself if you need to set up different
	 * cell renderers for the new model.
	 * Since 2.4
	 * Params:
	 * model = A GtkTreeModel. [allow-none]
	 */
	public void setModel(TreeModelIF model)
	{
		// void gtk_combo_box_set_model (GtkComboBox *combo_box,  GtkTreeModel *model);
		gtk_combo_box_set_model(gtkComboBox, (model is null) ? null : model.getTreeModelTStruct());
	}
	
	/**
	 * Pops up the menu or dropdown list of combo_box, the popup window
	 * will be grabbed so only device and its associated pointer/keyboard
	 * are the only GdkDevices able to send events to it.
	 * Params:
	 * device = a GdkDevice
	 * Since 3.0
	 */
	public void popupForDevice(Device device)
	{
		// void gtk_combo_box_popup_for_device (GtkComboBox *combo_box,  GdkDevice *device);
		gtk_combo_box_popup_for_device(gtkComboBox, (device is null) ? null : device.getDeviceStruct());
	}
	
	/**
	 * Pops up the menu or dropdown list of combo_box.
	 * This function is mostly intended for use by accessibility technologies;
	 * applications should have little use for it.
	 * Since 2.4
	 */
	public void popup()
	{
		// void gtk_combo_box_popup (GtkComboBox *combo_box);
		gtk_combo_box_popup(gtkComboBox);
	}
	
	/**
	 * Hides the menu or dropdown list of combo_box.
	 * This function is mostly intended for use by accessibility technologies;
	 * applications should have little use for it.
	 * Since 2.4
	 */
	public void popdown()
	{
		// void gtk_combo_box_popdown (GtkComboBox *combo_box);
		gtk_combo_box_popdown(gtkComboBox);
	}
	
	/**
	 * Gets the accessible object corresponding to the combo box's popup.
	 * This function is mostly intended for use by accessibility technologies;
	 * applications should have little use for it.
	 * Since 2.6
	 * Returns: the accessible object corresponding to the combo box's popup. [transfer none]
	 */
	public ObjectAtk getPopupAccessible()
	{
		// AtkObject * gtk_combo_box_get_popup_accessible (GtkComboBox *combo_box);
		auto p = gtk_combo_box_get_popup_accessible(gtkComboBox);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Returns the current row separator function.
	 * Since 2.6
	 * Returns: the current row separator function.
	 */
	public GtkTreeViewRowSeparatorFunc getRowSeparatorFunc()
	{
		// GtkTreeViewRowSeparatorFunc gtk_combo_box_get_row_separator_func  (GtkComboBox *combo_box);
		return gtk_combo_box_get_row_separator_func(gtkComboBox);
	}
	
	/**
	 * Sets the row separator function, which is used to determine
	 * whether a row should be drawn as a separator. If the row separator
	 * function is NULL, no separators are drawn. This is the default value.
	 * Since 2.6
	 * Params:
	 * func = a GtkTreeViewRowSeparatorFunc
	 * data = user data to pass to func, or NULL. [allow-none]
	 * destroy = destroy notifier for data, or NULL. [allow-none]
	 */
	public void setRowSeparatorFunc(GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy)
	{
		// void gtk_combo_box_set_row_separator_func  (GtkComboBox *combo_box,  GtkTreeViewRowSeparatorFunc func,  gpointer data,  GDestroyNotify destroy);
		gtk_combo_box_set_row_separator_func(gtkComboBox, func, data, destroy);
	}
	
	/**
	 * Sets whether the popup menu should have a tearoff
	 * menu item.
	 * Since 2.6
	 * Params:
	 * addTearoffs = TRUE to add tearoff menu items
	 */
	public void setAddTearoffs(int addTearoffs)
	{
		// void gtk_combo_box_set_add_tearoffs (GtkComboBox *combo_box,  gboolean add_tearoffs);
		gtk_combo_box_set_add_tearoffs(gtkComboBox, addTearoffs);
	}
	
	/**
	 * Gets the current value of the :add-tearoffs property.
	 * Returns: the current value of the :add-tearoffs property.
	 */
	public int getAddTearoffs()
	{
		// gboolean gtk_combo_box_get_add_tearoffs (GtkComboBox *combo_box);
		return gtk_combo_box_get_add_tearoffs(gtkComboBox);
	}
	
	/**
	 * Sets the menu's title in tearoff mode.
	 * Since 2.10
	 * Params:
	 * title = a title for the menu in tearoff mode
	 */
	public void setTitle(string title)
	{
		// void gtk_combo_box_set_title (GtkComboBox *combo_box,  const gchar *title);
		gtk_combo_box_set_title(gtkComboBox, Str.toStringz(title));
	}
	
	/**
	 * Gets the current title of the menu in tearoff mode. See
	 * gtk_combo_box_set_add_tearoffs().
	 * Since 2.10
	 * Returns: the menu's title in tearoff mode. This is an internal copy of the string which must not be freed.
	 */
	public string getTitle()
	{
		// const gchar * gtk_combo_box_get_title (GtkComboBox *combo_box);
		return Str.toString(gtk_combo_box_get_title(gtkComboBox));
	}
	
	/**
	 * Sets whether the combo box will grab focus when it is clicked with
	 * the mouse. Making mouse clicks not grab focus is useful in places
	 * like toolbars where you don't want the keyboard focus removed from
	 * the main area of the application.
	 * Since 2.6
	 * Params:
	 * focusOnClick = whether the combo box grabs focus when clicked
	 * with the mouse
	 */
	public void setFocusOnClick(int focusOnClick)
	{
		// void gtk_combo_box_set_focus_on_click (GtkComboBox *combo,  gboolean focus_on_click);
		gtk_combo_box_set_focus_on_click(gtkComboBox, focusOnClick);
	}
	
	/**
	 * Returns whether the combo box grabs focus when it is clicked
	 * with the mouse. See gtk_combo_box_set_focus_on_click().
	 * Since 2.6
	 * Returns: TRUE if the combo box grabs focus when it is clicked with the mouse.
	 */
	public int getFocusOnClick()
	{
		// gboolean gtk_combo_box_get_focus_on_click (GtkComboBox *combo);
		return gtk_combo_box_get_focus_on_click(gtkComboBox);
	}
	
	/**
	 * Sets whether the dropdown button of the combo box should be
	 * always sensitive (GTK_SENSITIVITY_ON), never sensitive (GTK_SENSITIVITY_OFF)
	 * or only if there is at least one item to display (GTK_SENSITIVITY_AUTO).
	 * Since 2.14
	 * Params:
	 * sensitivity = specify the sensitivity of the dropdown button
	 */
	public void setButtonSensitivity(GtkSensitivityType sensitivity)
	{
		// void gtk_combo_box_set_button_sensitivity  (GtkComboBox *combo_box,  GtkSensitivityType sensitivity);
		gtk_combo_box_set_button_sensitivity(gtkComboBox, sensitivity);
	}
	
	/**
	 * Returns whether the combo box sets the dropdown button
	 * sensitive or not when there are no items in the model.
	 * Since 2.14
	 * Returns: GTK_SENSITIVITY_ON if the dropdown button is sensitive when the model is empty, GTK_SENSITIVITY_OFF if the button is always insensitive or GTK_SENSITIVITY_AUTO if it is only sensitive as long as the model has one item to be selected.
	 */
	public GtkSensitivityType getButtonSensitivity()
	{
		// GtkSensitivityType gtk_combo_box_get_button_sensitivity  (GtkComboBox *combo_box);
		return gtk_combo_box_get_button_sensitivity(gtkComboBox);
	}
	
	/**
	 * Returns whether the combo box has an entry.
	 * Since 2.24
	 * Returns: whether there is an entry in combo_box.
	 */
	public int getHasEntry()
	{
		// gboolean gtk_combo_box_get_has_entry (GtkComboBox *combo_box);
		return gtk_combo_box_get_has_entry(gtkComboBox);
	}
	
	/**
	 * Sets the model column which combo_box should use to get strings from
	 * to be text_column. The column text_column in the model of combo_box
	 * must be of type G_TYPE_STRING.
	 * This is only relevant if combo_box has been created with
	 * "has-entry" as TRUE.
	 * Since 2.24
	 * Params:
	 * textColumn = A column in model to get the strings from for
	 * the internal entry
	 */
	public void setEntryTextColumn(int textColumn)
	{
		// void gtk_combo_box_set_entry_text_column (GtkComboBox *combo_box,  gint text_column);
		gtk_combo_box_set_entry_text_column(gtkComboBox, textColumn);
	}
	
	/**
	 * Returns the column which combo_box is using to get the strings
	 * from to display in the internal entry.
	 * Since 2.24
	 * Returns: A column in the data source model of combo_box.
	 */
	public int getEntryTextColumn()
	{
		// gint gtk_combo_box_get_entry_text_column (GtkComboBox *combo_box);
		return gtk_combo_box_get_entry_text_column(gtkComboBox);
	}
	
	/**
	 * Specifies whether the popup's width should be a fixed width
	 * matching the allocated width of the combo box.
	 * Params:
	 * fixed = whether to use a fixed popup width
	 * Since 3.0
	 */
	public void setPopupFixedWidth(int fixed)
	{
		// void gtk_combo_box_set_popup_fixed_width (GtkComboBox *combo_box,  gboolean fixed);
		gtk_combo_box_set_popup_fixed_width(gtkComboBox, fixed);
	}
	
	/**
	 * Gets whether the popup uses a fixed width matching
	 * the allocated width of the combo box.
	 * Returns: TRUE if the popup uses a fixed width Since 3.0
	 */
	public int getPopupFixedWidth()
	{
		// gboolean gtk_combo_box_get_popup_fixed_width (GtkComboBox *combo_box);
		return gtk_combo_box_get_popup_fixed_width(gtkComboBox);
	}
}
