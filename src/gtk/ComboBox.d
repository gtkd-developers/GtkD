/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = ComboBox
 * strct   = GtkComboBox
 * realStrct=
 * clss    = ComboBox
 * template for:
 * extend  = 
 * prefixes:
 * 	- gtk_combo_box_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_combo_box_new
 * 	- gtk_combo_box_new_text
 * imports:
 * 	- atk.ObjectAtk
 * 	- glib.Str
 * 	- gtk.TreeModel
 * 	- gtk.TreeIter
 * 	- gtk.CellRenderer
 * 	- gtk.CellLayout
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModel
 * local aliases:
 */

module gtk.ComboBox;

private import gtk.typedefs;

private import lib.gtk;

private import atk.ObjectAtk;
private import glib.Str;
private import gtk.TreeModel;
private import gtk.TreeIter;
private import gtk.CellRenderer;
private import gtk.CellLayout;

/**
 * Description
 * A GtkComboBox is a widget that allows the user to choose from a
 * list of valid choices. The GtkComboBox displays the selected
 * choice. When activated, the GtkComboBox displays a popup
 * which allows the user to make a new choice. The style in which
 * the selected value is displayed, and the style of the popup is
 * determined by the current theme. It may be similar to a GtkOptionMenu,
 * or similar to a Windows-style combo box.
 * Unlike its predecessors GtkCombo and GtkOptionMenu, the GtkComboBox
 * uses the model-view pattern; the list of valid choices is specified in the
 * form of a tree model, and the display of the choices can be adapted to
 * the data in the model by using cell renderers, as you would in a tree view.
 * This is possible since GtkComboBox implements the GtkCellLayout interface.
 * The tree model holding the valid choices is not restricted to a flat list,
 * it can be a real tree, and the popup will reflect the tree structure.
 * In addition to the model-view API, GtkComboBox offers a simple API which
 * is suitable for text-only combo boxes, and hides the complexity of managing
 * the data in a model. It consists of the functions gtk_combo_box_new_text(),
 * gtk_combo_box_append_text(), gtk_combo_box_insert_text(),
 * gtk_combo_box_prepend_text(), gtk_combo_box_remove_text() and
 * gtk_combo_box_get_active_text().
 */
private import gtk.Bin;
public class ComboBox : Bin
{
	
	/** the main Gtk struct */
	protected GtkComboBox* gtkComboBox;
	
	
	public GtkComboBox* getComboBoxStruct()
	{
		return gtkComboBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	// add the CellLayout capabilities
	mixin CellLayout!(GtkComboBox);
	
	/**
	 * Creates a new empty GtkComboBox.
	 * If text is true then
	 * constructs a new text combo box, which is a
	 * GtkComboBox just displaying strings. If you use this function to create
	 * a text combo box, you should only manipulate its data source with the
	 * following convenience functions: gtk_combo_box_append_text(),
	 * gtk_combo_box_insert_text(), gtk_combo_box_prepend_text() and
	 * gtk_combo_box_remove_text().
	 * Returns:
	 *  A new GtkComboBox.
	 * Since 2.4
	 */
	public this (bit text=true)
	{
		if ( text )
		{
			// GtkWidget* gtk_combo_box_new_text (void);
			this(cast(GtkComboBox*)gtk_combo_box_new_text() );
		}
		else
		{
			// GtkWidget* gtk_combo_box_new (void);
			this(cast(GtkComboBox*)gtk_combo_box_new() );
		}
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(ComboBox)[] onChangedListeners;
	void addOnChanged(void delegate(ComboBox) dlg)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkComboBox* widgetStruct, ComboBox comboBox)
	{
		bit consumed = false;
		
		foreach ( void delegate(ComboBox) dlg ; comboBox.onChangedListeners )
		{
			dlg(comboBox);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Creates a new GtkComboBox with the model initialized to model.
	 * model:
	 *  A GtkTreeModel.
	 * Returns:
	 *  A new GtkComboBox.
	 * Since 2.4
	 */
	public this (TreeModel model)
	{
		// GtkWidget* gtk_combo_box_new_with_model (GtkTreeModel *model);
		this(cast(GtkComboBox*)gtk_combo_box_new_with_model((model is null) ? null : model.getTreeModelStruct()) );
	}
	
	/**
	 * Returns the wrap width which is used to determine the number
	 * of columns for the popup menu. If the wrap width is larger than
	 * 1, the combo box is in table mode.
	 * combo_box:
	 *  A GtkComboBox.
	 * Returns:
	 *  the wrap width.
	 * Since 2.6
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
	 * combo_box:
	 *  A GtkComboBox.
	 * width:
	 *  Preferred number of columns.
	 * Since 2.4
	 */
	public void setWrapWidth(int width)
	{
		// void gtk_combo_box_set_wrap_width (GtkComboBox *combo_box,  gint width);
		gtk_combo_box_set_wrap_width(gtkComboBox, width);
	}
	
	/**
	 * Returns the column with row span information for combo_box.
	 * combo_box:
	 *  A GtkComboBox.
	 * Returns:
	 *  the row span column.
	 * Since 2.6
	 */
	public int getRowSpanColumn()
	{
		// gint gtk_combo_box_get_row_span_column  (GtkComboBox *combo_box);
		return gtk_combo_box_get_row_span_column(gtkComboBox);
	}
	
	/**
	 * Sets the column with row span information for combo_box to be row_span.
	 * The row span column contains integers which indicate how many rows
	 * an item should span.
	 * combo_box:
	 *  A GtkComboBox.
	 * row_span:
	 *  A column in the model passed during construction.
	 * Since 2.4
	 */
	public void setRowSpanColumn(int rowSpan)
	{
		// void gtk_combo_box_set_row_span_column  (GtkComboBox *combo_box,  gint row_span);
		gtk_combo_box_set_row_span_column(gtkComboBox, rowSpan);
	}
	
	/**
	 * Returns the column with column span information for combo_box.
	 * combo_box:
	 *  A GtkComboBox.
	 * Returns:
	 *  the column span column.
	 * Since 2.6
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
	 * combo_box:
	 *  A GtkComboBox.
	 * column_span:
	 *  A column in the model passed during construction.
	 * Since 2.4
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
	 * combo_box:
	 *  A GtkComboBox.
	 * Returns:
	 *  An integer which is the index of the currently active item, or
	 * -1 if there's no active item.
	 * Since 2.4
	 */
	public int getActive()
	{
		// gint gtk_combo_box_get_active (GtkComboBox *combo_box);
		return gtk_combo_box_get_active(gtkComboBox);
	}
	
	/**
	 * Sets the active item of combo_box to be the item at index.
	 * combo_box:
	 *  A GtkComboBox.
	 * index_:
	 *  An index in the model passed during construction, or -1 to have
	 * no active item.
	 * Since 2.4
	 */
	public void setActive(int index)
	{
		// void gtk_combo_box_set_active (GtkComboBox *combo_box,  gint index_);
		gtk_combo_box_set_active(gtkComboBox, index);
	}
	
	/**
	 * Sets iter to point to the current active item, if it exists.
	 * combo_box:
	 *  A GtkComboBox
	 * iter:
	 *  The uninitialized GtkTreeIter.
	 * Returns:
	 *  TRUE, if iter was set
	 * Since 2.4
	 */
	public int getActiveIter(TreeIter iter)
	{
		// gboolean gtk_combo_box_get_active_iter (GtkComboBox *combo_box,  GtkTreeIter *iter);
		return gtk_combo_box_get_active_iter(gtkComboBox, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Sets the current active item to be the one referenced by iter.
	 * iter must correspond to a path of depth one.
	 * combo_box:
	 *  A GtkComboBox
	 * iter:
	 *  The GtkTreeIter.
	 * Since 2.4
	 */
	public void setActiveIter(TreeIter iter)
	{
		// void gtk_combo_box_set_active_iter (GtkComboBox *combo_box,  GtkTreeIter *iter);
		gtk_combo_box_set_active_iter(gtkComboBox, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Returns the GtkTreeModel which is acting as data source for combo_box.
	 * combo_box:
	 *  A GtkComboBox.
	 * Returns:
	 *  A GtkTreeModel which was passed during construction.
	 * Since 2.4
	 */
	public TreeModel getModel()
	{
		// GtkTreeModel* gtk_combo_box_get_model (GtkComboBox *combo_box);
		return new TreeModel( gtk_combo_box_get_model(gtkComboBox) );
	}
	
	/**
	 * Sets the model used by combo_box to be model. Will unset a previously set
	 * model (if applicable). If model is NULL, then it will unset the model.
	 * Note that this function does not clear the cell renderers, you have to
	 * call gtk_combo_box_cell_layout_clear() yourself if you need to set up
	 * different cell renderers for the new model.
	 * combo_box:
	 *  A GtkComboBox.
	 * model:
	 *  A GtkTreeModel.
	 * Since 2.4
	 */
	public void setModel(TreeModel model)
	{
		// void gtk_combo_box_set_model (GtkComboBox *combo_box,  GtkTreeModel *model);
		gtk_combo_box_set_model(gtkComboBox, (model is null) ? null : model.getTreeModelStruct());
	}
	
	
	/**
	 * Appends string to the list of strings stored in combo_box. Note that
	 * you can only use this function with combo boxes constructed with
	 * gtk_combo_box_new_text().
	 * combo_box:
	 *  A GtkComboBox constructed using gtk_combo_box_new_text().
	 * text:
	 *  A string.
	 * Since 2.4
	 */
	public void appendText(char[] text)
	{
		// void gtk_combo_box_append_text (GtkComboBox *combo_box,  const gchar *text);
		gtk_combo_box_append_text(gtkComboBox, Str.toStringz(text));
	}
	
	/**
	 * Inserts string at position in the list of strings stored in combo_box.
	 * Note that you can only use this function with combo boxes constructed
	 * with gtk_combo_box_new_text().
	 * combo_box:
	 *  A GtkComboBox constructed using gtk_combo_box_new_text().
	 * position:
	 *  An index to insert text.
	 * text:
	 *  A string.
	 * Since 2.4
	 */
	public void insertText(int position, char[] text)
	{
		// void gtk_combo_box_insert_text (GtkComboBox *combo_box,  gint position,  const gchar *text);
		gtk_combo_box_insert_text(gtkComboBox, position, Str.toStringz(text));
	}
	
	/**
	 * Prepends string to the list of strings stored in combo_box. Note that
	 * you can only use this function with combo boxes constructed with
	 * gtk_combo_box_new_text().
	 * combo_box:
	 *  A GtkComboBox constructed with gtk_combo_box_new_text().
	 * text:
	 *  A string.
	 * Since 2.4
	 */
	public void prependText(char[] text)
	{
		// void gtk_combo_box_prepend_text (GtkComboBox *combo_box,  const gchar *text);
		gtk_combo_box_prepend_text(gtkComboBox, Str.toStringz(text));
	}
	
	/**
	 * Removes the string at position from combo_box. Note that you can only use
	 * this function with combo boxes constructed with gtk_combo_box_new_text().
	 * combo_box:
	 *  A GtkComboBox constructed with gtk_combo_box_new_text().
	 * position:
	 *  Index of the item to remove.
	 * Since 2.4
	 */
	public void removeText(int position)
	{
		// void gtk_combo_box_remove_text (GtkComboBox *combo_box,  gint position);
		gtk_combo_box_remove_text(gtkComboBox, position);
	}
	
	/**
	 * Returns the currently active string in combo_box or NULL if none
	 * is selected. Note that you can only use this function with combo
	 * boxes constructed with gtk_combo_box_new_text() and with
	 * GtkComboBoxEntrys.
	 * combo_box:
	 *  A GtkComboBox constructed with gtk_combo_box_new_text().
	 * Returns:
	 *  a newly allocated string containing the currently active text.
	 * Since 2.6
	 */
	public char[] getActiveText()
	{
		// gchar* gtk_combo_box_get_active_text (GtkComboBox *combo_box);
		return Str.toString(gtk_combo_box_get_active_text(gtkComboBox) );
	}
	
	/**
	 * Pops up the menu or dropdown list of combo_box.
	 * This function is mostly intended for use by accessibility technologies;
	 * applications should have little use for it.
	 * combo_box:
	 *  a GtkComboBox
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
	 * combo_box:
	 *  a GtkComboBox
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
	 * combo_box:
	 *  a GtkComboBox
	 * Returns:
	 *  the accessible object corresponding to the combo box's popup.
	 * Since 2.6
	 */
	public ObjectAtk getPopupAccessible()
	{
		// AtkObject* gtk_combo_box_get_popup_accessible  (GtkComboBox *combo_box);
		return new ObjectAtk( gtk_combo_box_get_popup_accessible(gtkComboBox) );
	}
	
	/**
	 * Returns the current row separator function.
	 * combo_box:
	 *  a GtkComboBox
	 * Returns:
	 *  the current row separator function.
	 * Since 2.6
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
	 * combo_box:
	 *  a GtkComboBox
	 * func:
	 *  a GtkTreeViewRowSeparatorFunc
	 * data:
	 *  user data to pass to func, or NULL
	 * destroy:
	 *  destroy notifier for data, or NULL
	 * Since 2.6
	 */
	public void setRowSeparatorFunc(GtkTreeViewRowSeparatorFunc func, void* data, GtkDestroyNotify destroy)
	{
		// void gtk_combo_box_set_row_separator_func  (GtkComboBox *combo_box,  GtkTreeViewRowSeparatorFunc func,  gpointer data,  GtkDestroyNotify destroy);
		gtk_combo_box_set_row_separator_func(gtkComboBox, func, data, destroy);
	}
	
	/**
	 * Sets whether the popup menu should have a tearoff
	 * menu item.
	 * combo_box:
	 *  a GtkComboBox
	 * add_tearoffs:
	 *  TRUE to add tearoff menu items
	 * Since 2.6
	 */
	public void setAddTearoffs(int addTearoffs)
	{
		// void gtk_combo_box_set_add_tearoffs (GtkComboBox *combo_box,  gboolean add_tearoffs);
		gtk_combo_box_set_add_tearoffs(gtkComboBox, addTearoffs);
	}
	
	/**
	 * Gets the current value of the :add-tearoffs property.
	 * combo_box:
	 *  a GtkComboBox
	 * Returns:
	 *  the current value of the :add-tearoffs property.
	 */
	public int getAddTearoffs()
	{
		// gboolean gtk_combo_box_get_add_tearoffs (GtkComboBox *combo_box);
		return gtk_combo_box_get_add_tearoffs(gtkComboBox);
	}
	
	/**
	 * Sets whether the combo box will grab focus when it is clicked with
	 * the mouse. Making mouse clicks not grab focus is useful in places
	 * like toolbars where you don't want the keyboard focus removed from
	 * the main area of the application.
	 * combo:
	 *  a GtkComboBox
	 * focus_on_click:
	 *  whether the combo box grabs focus when clicked
	 *  with the mouse
	 * Since 2.6
	 */
	public void setFocusOnClick(int focusOnClick)
	{
		// void gtk_combo_box_set_focus_on_click  (GtkComboBox *combo,  gboolean focus_on_click);
		gtk_combo_box_set_focus_on_click(gtkComboBox, focusOnClick);
	}
	
	/**
	 * Returns whether the combo box grabs focus when it is clicked
	 * with the mouse. See gtk_combo_box_set_focus_on_click().
	 * combo:
	 *  a GtkComboBox
	 * Returns:
	 *  TRUE if the combo box grabs focus when it is
	 *  clicked with the mouse.
	 * Since 2.6
	 * Property Details
	 * The "active" property
	 *  "active" gint : Read / Write
	 * The item which is currently active. If the model is a non-flat treemodel,
	 * and the active item is not an immediate child of the root of the tree,
	 * this property has the value gtk_tree_path_get_indices (path)[0],
	 * where path is the GtkTreePath of the active item.
	 * Allowed values: >= -1
	 * Default value: -1
	 * Since 2.4
	 */
	public int getFocusOnClick()
	{
		// gboolean gtk_combo_box_get_focus_on_click  (GtkComboBox *combo);
		return gtk_combo_box_get_focus_on_click(gtkComboBox);
	}
	
	
	
	
	
	
	
}
