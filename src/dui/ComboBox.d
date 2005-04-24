/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */


module dui.ComboBox;

private import dui.Bin;

private import def.Types;
private import def.Constants;

private import dui.Widget;
private import dui.TreeModel;
private import dui.TreeIter;

protected:
extern (C)
{
	struct GtkComboBox;

	GtkWidget*  gtk_combo_box_new               ();
	GtkWidget*  gtk_combo_box_new_with_model    (GtkTreeModel *model);
	
	gint        gtk_combo_box_get_wrap_width    (GtkComboBox *combo_box);
	void        gtk_combo_box_set_wrap_width    (GtkComboBox *combo_box,gint width);
	gint        gtk_combo_box_get_row_span_column(GtkComboBox *combo_box);
	void        gtk_combo_box_set_row_span_column(GtkComboBox *combo_box,gint row_span);
	gint        gtk_combo_box_get_column_span_column(GtkComboBox *combo_box);
	void        gtk_combo_box_set_column_span_column(GtkComboBox *combo_box,gint column_span);
	
	gint        gtk_combo_box_get_active        (GtkComboBox *combo_box);
	void        gtk_combo_box_set_active        (GtkComboBox *combo_box,gint index_);
	gboolean    gtk_combo_box_get_active_iter   (GtkComboBox *combo_box,GtkTreeIter *iter);
	void        gtk_combo_box_set_active_iter   (GtkComboBox *combo_box,GtkTreeIter *iter);
	
	GtkTreeModel* gtk_combo_box_get_model       (GtkComboBox *combo_box);
	void        gtk_combo_box_set_model         (GtkComboBox *combo_box,GtkTreeModel *model);
	void        gtk_combo_box_popup             (GtkComboBox *combo_box);
	
	void        gtk_combo_box_popdown           (GtkComboBox *combo_box);
//	AtkObject*  gtk_combo_box_get_popup_accessible(GtkComboBox *combo_box);
//	GtkTreeViewRowSeparatorFunc gtk_combo_box_get_row_separator_func(GtkComboBox *combo_box);
//	void        gtk_combo_box_set_row_separator_func(GtkComboBox *combo_box,GtkTreeViewRowSeparatorFunc func,gpointer data,GtkDestroyNotify destroy);
	void        gtk_combo_box_set_add_tearoffs  (GtkComboBox *combo_box,gboolean add_tearoffs);
	gboolean    gtk_combo_box_get_add_tearoffs  (GtkComboBox *combo_box);
	void        gtk_combo_box_set_focus_on_click(GtkComboBox *combo,gboolean focus_on_click);
	gboolean    gtk_combo_box_get_focus_on_click(GtkComboBox *combo);

	
}


/**
 * A GtkComboBox is a widget that allows the user to choose from a list of valid choices.
 * The GtkComboBox displays the selected choice. When activated, the
 * GtkComboBox displays a popup which allows the user to make a new choice. The
 * style in which the selected value is displayed, and the style of the popup is
 * determined by the current theme. It may be similar to a GtkOptionMenu, or
 * similar to a Windows-style combo box. Unlike its predecessors GtkCombo and
 * GtkOptionMenu, the GtkComboBox uses the model-view pattern; the list of valid
 * choices is specified in the form of a tree model, and the display of the
 * choices can be adapted to the data in the model by using cell renderers, as
 * you would in a tree view. This is possible since GtkComboBox implements the
 * GtkCellLayout interface. The tree model holding the valid choices is not
 * restricted to a flat list, it can be a real tree, and the popup will reflect
 * the tree structure.
 * The text API s on it's own ComboBoxText class.
 */
public:
class ComboBox : Bin
{

	private import dui.TreeModel;
	private import dui.TreeIter;
	private import event.EventHandler;
	
	protected:

	GtkComboBox* gtkComboBox;

	alias EventHandler0!(ComboBox) OnChanged;

	OnChanged onChanged;

	
	public:

	/**
	 * Creates a ComboBox from a GtkComboBox
	 * @param *gtkWidget the gtk struct address pointer
	 * @return 
	 */
    this(GtkComboBox *gtkComboBox)
    {
        super(cast(GtkWidget*) gtkComboBox);
		this.gtkComboBox = gtkComboBox;
    }


	/**
	 * Creates a new empty GtkComboBox.
	 * @return A new GtkComboBox.
	 */
	this()
	{
		this(cast(GtkComboBox*)gtk_combo_box_new());
	}


	/**
	 * Creates a new GtkComboBox with the model initialized to model.
	 * @param model\ufffd A GtkTreeModel.
	 * @return A new GtkComboBox.
	 */
//	this(TreeModel model)
//	{
//		this(cast(GtkComboBox*)gtk_combo_box_new_with_model(model.obj()));
//	}

	/**
	 * addOnChanged
	 * @param dlg the method to add to the event
	 */
	public void addOnChanged(void delegate() dlg)
	{
		if ( onChanged === null )
		{
			onChanged = new OnChanged(this, EventMask.NONE, new String("changed"));
		}
		onChanged += dlg;
	}
	

	/**
	 * Returns the wrap width which is used to determine the number of columns for the popup menu. If the wrap width
	 * is larger than 1, the combo box is in table mode.
	 * @param combo_box\ufffd A GtkComboBox.
	 * @return the wrap width.
	 */
	gint getWrapWidth()
	{
		return gtk_combo_box_get_wrap_width(gtkComboBox);
	}


	/**
	 * Sets the wrap width of combo_box to be width. The wrap width is basically the preferred number of columns when
	 * you want the popup to be layed out in a table.
	 * @param combo_box\ufffd A GtkComboBox.
	 * @param width\ufffd Preferred number of columns.
	 */
	void setWrapWidth(gint width)
	{
		gtk_combo_box_set_wrap_width(gtkComboBox, width);
	}


	/**
	 * Returns the column with row span information for combo_box.
	 * @param combo_box\ufffd A GtkComboBox.
	 * @return the row span column.
	 */
	gint getRowSpanColumn()
	{
		return gtk_combo_box_get_row_span_column(gtkComboBox);
	}


	/**
	 * Sets the column with row span information for combo_box to be row_span. The row span column contains integers
	 * which indicate how many rows an item should span.
	 * @param combo_box\ufffd A GtkComboBox.
	 * @param row_span\ufffd A column in the model passed during construction.
	 */
	void setRowSpanColumn(gint row_span)
	{
		gtk_combo_box_set_row_span_column(gtkComboBox, row_span);
	}


	/**
	 * Returns the column with column span information for combo_box.
	 * @param combo_box\ufffd A GtkComboBox.
	 * @return the column span column.
	 */
	gint getColumnSpanColumn()
	{
		return gtk_combo_box_get_column_span_column(gtkComboBox);
	}


	/**
	 * Sets the column with column span information for combo_box to be column_span. The column span column contains
	 * integers which indicate how many columns an item should span.
	 * @param combo_box\ufffd A GtkComboBox.
	 * @param column_span\ufffd A column in the model passed during construction.
	 */
	void setColumnSpanColumn(gint column_span)
	{
		gtk_combo_box_set_column_span_column(gtkComboBox, column_span);
	}


	/**
	 * Returns the index of the currently active item, or -1 if there's no active item. If the model is a non-flat
	 * treemodel, and the active item is not an immediate child of the root of the tree, this function returns
	 * gtk_tree_path_get_indices (path)[0], where path is the GtkTreePath of the active item.
	 * @param combo_box\ufffd A GtkComboBox.
	 * @return An integer which is the index of the currently active item, or -1 if there's no active item.
	 */
	gint getActive()
	{
		return gtk_combo_box_get_active(gtkComboBox);
	}


	/**
	 * Sets the active item of combo_box to be the item at index.
	 * @param combo_box\ufffd A GtkComboBox.
	 * @param index_\ufffd An index in the model passed during construction, or -1 to have no active item.
	 */
	void setActive(gint index_)
	{
		gtk_combo_box_set_active(gtkComboBox, index_);
	}


	/**
	 * Sets iter to point to the current active item, if it exists.
	 * @param combo_box\ufffd A GtkComboBox
	 * @param iter\ufffd The uninitialized GtkTreeIter.
	 * @return TRUE, if iter was set
	 */
	bit getActiveIter(TreeIter iter)
	{
		return gtk_combo_box_get_active_iter(gtkComboBox, iter.gtkI()) == 0 ? false : true;
	}


	/**
	 * Sets the current active item to be the one referenced by iter. iter must correspond to a path of depth one.
	 * @param combo_box\ufffd A GtkComboBox
	 * @param iter\ufffd The GtkTreeIter.
	 */
	void setActiveIter(TreeIter iter)
	{
		gtk_combo_box_set_active_iter(gtkComboBox, iter.gtkI());
	}


	/**
	 * Returns the GtkTreeModel which is acting as data source for combo_box.
	 * @param combo_box\ufffd A GtkComboBox.
	 * @return A GtkTreeModel which was passed during construction.
	 */
	TreeModel getModel()
	{
		return new TreeModel(gtk_combo_box_get_model(gtkComboBox));
	}


	/**
	 * Sets the model used by combo_box to be model. Will unset a previously set model (if applicable). If model is
	 * NULL, then it will unset the model.<br>
	 * Note that this function does not clear the cell renderers, you have to call
	 * gtk_combo_box_cell_layout_clear() yourself if you need to set up different cell renderers for the new
	 * model.
	 * @param combo_box\ufffd A GtkComboBox.
	 * @param model\ufffd A GtkTreeModel.
	 */
	void setModel(TreeModel model)
	{
		gtk_combo_box_set_model(gtkComboBox, model.obj());
	}


	/**
	 * Pops up the menu or dropdown list of combo_box.<br>
	 * This function is mostly intended for use by accessibility technologies; applications should have little use
	 * for it.
	 * @param combo_box\ufffd a GtkComboBox
	 */
	void popup()
	{
		gtk_combo_box_popup(gtkComboBox);
	}


	/**
	 * Hides the menu or dropdown list of combo_box.<br>
	 * This function is mostly intended for use by accessibility technologies; applications should have little use
	 * for it.
	 * @param combo_box\ufffd a GtkComboBox
	 */
	void popdown()
	{
		gtk_combo_box_popdown(gtkComboBox);
	}


	/**
	 * Gets the accessible object corresponding to the combo box's popup.<br>
	 * This function is mostly intended for use by accessibility technologies; applications should have little use
	 * for it.
	 * @param combo_box\ufffd a GtkComboBox
	 * @return the accessible object corresponding to the combo box's popup.
	 */
//	AtkObject getPopupAccessible()
//	{
//		return gtk_combo_box_get_popup_accessible(gtkComboBox);
//	}


//	/**
//	 * Returns the current row separator function.
//	 * @param combo_box\ufffd a GtkComboBox
//	 * @return the current row separator function.
//	 */
//	TreeViewRowSeparatorFunc getRowSeparatorFunc()
//	{
//		return gtk_combo_box_get_row_separator_func(gtkComboBox);
//	}
//
//
//	/**
//	 * Sets the row separator function, which is used to determine whether a row should be drawn as a separator. If
//	 * the row separator function is NULL, no separators are drawn. This is the default value.
//	 * @param combo_box\ufffd a GtkComboBox
//	 * @param func\ufffd a GtkTreeViewRowSeparatorFunc
//	 * @param data\ufffd user data to pass to func, or NULL
//	 * @param destroy\ufffd destroy notifier for data, or NULL
//	 */
//	void setRowSeparatorFunc(TreeViewRowSeparatorFunc func, gpointer data, DestroyNotify destroy)
//	{
//		gtk_combo_box_set_row_separator_func(gtkComboBox, func.gtkW(), data, destroy.gtkW());
//	}


	/**
	 * Sets whether the popup menu should have a tearoff menu item.
	 * @param combo_box\ufffd a GtkComboBox
	 * @param add_tearoffs\ufffd TRUE to add tearoff menu items
	 */
	void setAddTearoffs(bit add_tearoffs)
	{
		gtk_combo_box_set_add_tearoffs(gtkComboBox, add_tearoffs);
	}


	/**
	 * Gets the current value of the :add-tearoffs property.
	 * @param combo_box\ufffd a GtkComboBox
	 * @return the current value of the :add-tearoffs property.
	 */
	bit getAddTearoffs()
	{
		return gtk_combo_box_get_add_tearoffs(gtkComboBox) == 0 ? false : true;
	}


	/**
	 * Sets whether the combo box will grab focus when it is clicked with the mouse. Making mouse clicks not grab
	 * focus is useful in places like toolbars where you don't want the keyboard focus removed from the main area
	 * of the application.
	 * @param combo\ufffd a GtkComboBox
	 * @param focus_on_click\ufffd whether the combo box grabs focus when clicked with the mouse
	 */
	void setFocusOnClick(bit focus_on_click)
	{
		gtk_combo_box_set_focus_on_click(gtkComboBox, focus_on_click);
	}


	/**
	 * Returns whether the combo box grabs focus when it is clicked with the mouse. See
	 * gtk_combo_box_set_focus_on_click().
	 * @param combo\ufffd a GtkComboBox
	 * @return TRUE if the combo box grabs focus when it is clicked with the mouse.
	 */
	bit getFocusOnClick()
	{
		return gtk_combo_box_get_focus_on_click(gtkComboBox) == 0 ? false : true;
	}


	
}

/+
gtk_combo_box_new ()

GtkWidget*  gtk_combo_box_new               (void);

Creates a new empty GtkComboBox.

Returns\ufffd:	A new GtkComboBox.

Since 2.4
gtk_combo_box_new_with_model ()

GtkWidget*  gtk_combo_box_new_with_model    (GtkTreeModel *model);

Creates a new GtkComboBox with the model initialized to model.

model\ufffd:	A GtkTreeModel.
Returns\ufffd:	A new GtkComboBox.

Since 2.4
gtk_combo_box_get_wrap_width ()

gint        gtk_combo_box_get_wrap_width    (GtkComboBox *combo_box);

Returns the wrap width which is used to determine the number of columns for the popup menu. If the wrap width is larger than 1, the combo box is in table mode.

combo_box\ufffd:	A GtkComboBox.
Returns\ufffd:	the wrap width.

Since 2.6
gtk_combo_box_set_wrap_width ()

void        gtk_combo_box_set_wrap_width    (GtkComboBox *combo_box,
                                             gint width);

Sets the wrap width of combo_box to be width. The wrap width is basically the preferred number of columns when you want the popup to be layed out in a table.

combo_box\ufffd:	A GtkComboBox.
width\ufffd:	Preferred number of columns.

Since 2.4
gtk_combo_box_get_row_span_column ()

gint        gtk_combo_box_get_row_span_column
                                            (GtkComboBox *combo_box);

Returns the column with row span information for combo_box.

combo_box\ufffd:	A GtkComboBox.
Returns\ufffd:	the row span column.

Since 2.6
gtk_combo_box_set_row_span_column ()

void        gtk_combo_box_set_row_span_column
                                            (GtkComboBox *combo_box,
                                             gint row_span);

Sets the column with row span information for combo_box to be row_span. The row span column contains integers which indicate how many rows an item should span.

combo_box\ufffd:	A GtkComboBox.
row_span\ufffd:	A column in the model passed during construction.

Since 2.4
gtk_combo_box_get_column_span_column ()

gint        gtk_combo_box_get_column_span_column
                                            (GtkComboBox *combo_box);

Returns the column with column span information for combo_box.

combo_box\ufffd:	A GtkComboBox.
Returns\ufffd:	the column span column.

Since 2.6
gtk_combo_box_set_column_span_column ()

void        gtk_combo_box_set_column_span_column
                                            (GtkComboBox *combo_box,
                                             gint column_span);

Sets the column with column span information for combo_box to be column_span. The column span column contains integers which indicate how many columns an item should span.

combo_box\ufffd:	A GtkComboBox.
column_span\ufffd:	A column in the model passed during construction.

Since 2.4
gtk_combo_box_get_active ()

gint        gtk_combo_box_get_active        (GtkComboBox *combo_box);

Returns the index of the currently active item, or -1 if there's no active item. If the model is a non-flat treemodel, and the active item is not an immediate child of the root of the tree, this function returns gtk_tree_path_get_indices (path)[0], where path is the GtkTreePath of the active item.

combo_box\ufffd:	A GtkComboBox.
Returns\ufffd:	An integer which is the index of the currently active item, or -1 if there's no active item.

Since 2.4
gtk_combo_box_set_active ()

void        gtk_combo_box_set_active        (GtkComboBox *combo_box,
                                             gint index_);

Sets the active item of combo_box to be the item at index.

combo_box\ufffd:	A GtkComboBox.
index_\ufffd:	An index in the model passed during construction, or -1 to have no active item.

Since 2.4
gtk_combo_box_get_active_iter ()

gboolean    gtk_combo_box_get_active_iter   (GtkComboBox *combo_box,
                                             GtkTreeIter *iter);

Sets iter to point to the current active item, if it exists.

combo_box\ufffd:	A GtkComboBox
iter\ufffd:	The uninitialized GtkTreeIter.
Returns\ufffd:	TRUE, if iter was set

Since 2.4
gtk_combo_box_set_active_iter ()

void        gtk_combo_box_set_active_iter   (GtkComboBox *combo_box,
                                             GtkTreeIter *iter);

Sets the current active item to be the one referenced by iter. iter must correspond to a path of depth one.

combo_box\ufffd:	A GtkComboBox
iter\ufffd:	The GtkTreeIter.

Since 2.4
gtk_combo_box_get_model ()

GtkTreeModel* gtk_combo_box_get_model       (GtkComboBox *combo_box);

Returns the GtkTreeModel which is acting as data source for combo_box.

combo_box\ufffd:	A GtkComboBox.
Returns\ufffd:	A GtkTreeModel which was passed during construction.

Since 2.4
gtk_combo_box_set_model ()

void        gtk_combo_box_set_model         (GtkComboBox *combo_box,
                                             GtkTreeModel *model);

Sets the model used by combo_box to be model. Will unset a previously set model (if applicable). If model is NULL, then it will unset the model.

Note that this function does not clear the cell renderers, you have to call gtk_combo_box_cell_layout_clear() yourself if you need to set up different cell renderers for the new model.

combo_box\ufffd:	A GtkComboBox.
model\ufffd:	A GtkTreeModel.

Since 2.4
gtk_combo_box_popup ()

void        gtk_combo_box_popup             (GtkComboBox *combo_box);

Pops up the menu or dropdown list of combo_box.

This function is mostly intended for use by accessibility technologies; applications should have little use for it.

combo_box\ufffd:	a GtkComboBox

Since 2.4
gtk_combo_box_popdown ()

void        gtk_combo_box_popdown           (GtkComboBox *combo_box);

Hides the menu or dropdown list of combo_box.

This function is mostly intended for use by accessibility technologies; applications should have little use for it.

combo_box\ufffd:	a GtkComboBox

Since 2.4
gtk_combo_box_get_popup_accessible ()

AtkObject*  gtk_combo_box_get_popup_accessible
                                            (GtkComboBox *combo_box);

Gets the accessible object corresponding to the combo box's popup.

This function is mostly intended for use by accessibility technologies; applications should have little use for it.

combo_box\ufffd:	a GtkComboBox
Returns\ufffd:	the accessible object corresponding to the combo box's popup.

Since 2.6
gtk_combo_box_get_row_separator_func ()

GtkTreeViewRowSeparatorFunc gtk_combo_box_get_row_separator_func
                                            (GtkComboBox *combo_box);

Returns the current row separator function.

combo_box\ufffd:	a GtkComboBox
Returns\ufffd:	the current row separator function.

Since 2.6
gtk_combo_box_set_row_separator_func ()

void        gtk_combo_box_set_row_separator_func
                                            (GtkComboBox *combo_box,
                                             GtkTreeViewRowSeparatorFunc func,
                                             gpointer data,
                                             GtkDestroyNotify destroy);

Sets the row separator function, which is used to determine whether a row should be drawn as a separator. If the row separator function is NULL, no separators are drawn. This is the default value.

combo_box\ufffd:	a GtkComboBox
func\ufffd:	a GtkTreeViewRowSeparatorFunc
data\ufffd:	user data to pass to func, or NULL
destroy\ufffd:	destroy notifier for data, or NULL

Since 2.6
gtk_combo_box_set_add_tearoffs ()

void        gtk_combo_box_set_add_tearoffs  (GtkComboBox *combo_box,
                                             gboolean add_tearoffs);

Sets whether the popup menu should have a tearoff menu item.

combo_box\ufffd:	a GtkComboBox
add_tearoffs\ufffd:	TRUE to add tearoff menu items

Since 2.6
gtk_combo_box_get_add_tearoffs ()

gboolean    gtk_combo_box_get_add_tearoffs  (GtkComboBox *combo_box);

Gets the current value of the :add-tearoffs property.

combo_box\ufffd:	a GtkComboBox
Returns\ufffd:	the current value of the :add-tearoffs property.
gtk_combo_box_set_focus_on_click ()

void        gtk_combo_box_set_focus_on_click
                                            (GtkComboBox *combo,
                                             gboolean focus_on_click);

Sets whether the combo box will grab focus when it is clicked with the mouse. Making mouse clicks not grab focus is useful in places like toolbars where you don't want the keyboard focus removed from the main area of the application.

combo\ufffd:	a GtkComboBox
focus_on_click\ufffd:	whether the combo box grabs focus when clicked with the mouse

Since 2.6
gtk_combo_box_get_focus_on_click ()

gboolean    gtk_combo_box_get_focus_on_click
                                            (GtkComboBox *combo);

Returns whether the combo box grabs focus when it is clicked with the mouse. See gtk_combo_box_set_focus_on_click().

combo\ufffd:	a GtkComboBox
Returns\ufffd:	TRUE if the combo box grabs focus when it is clicked with the mouse.

Since 2.6

+/


