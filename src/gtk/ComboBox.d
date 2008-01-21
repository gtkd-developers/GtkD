/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- BuildableIF
 * 	- CellLayoutIF
 * prefixes:
 * 	- gtk_combo_box_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_combo_box_new
 * 	- gtk_combo_box_new_text
 * omit signals:
 * imports:
 * 	- atk.ObjectAtk
 * 	- glib.Str
 * 	- gtk.TreeModel
 * 	- gtk.TreeIter
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * 	- gtk.Builder
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * 	- gtk.CellRenderer
 * 	- glib.ListG
 * 	- gtk.CellLayoutIF
 * 	- gtk.CellLayoutT
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModel
 * module aliases:
 * local aliases:
 */

module gtk.ComboBox;

public  import gtkc.gtktypes;

private import gtkc.gtk;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import atk.ObjectAtk;
private import glib.Str;
private import gtk.TreeModel;
private import gtk.TreeIter;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.CellRenderer;
private import glib.ListG;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;



private import gtk.Bin;

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
public class ComboBox : Bin, BuildableIF, CellLayoutIF
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
		if(gtkComboBox is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkComboBox passed to constructor.");
			else return;
		}
		super(cast(GtkBin*)gtkComboBox);
		this.gtkComboBox = gtkComboBox;
	}
	
	private int count = 0;
	public int maxCount = 0;
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkComboBox);
	
	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkComboBox);
	
	/**
	 * Creates a new empty GtkComboBox.
	 * If text is true then
	 * constructs a new text combo box, which is a
	 * GtkComboBox just displaying strings. If you use this function to create
	 * a text combo box, you should only manipulate its data source with the
	 * following convenience functions: gtk_combo_box_append_text(),
	 * gtk_combo_box_insert_text(), gtk_combo_box_prepend_text() and
	 * gtk_combo_box_remove_text().
	 * Since 2.4
	 * Returns:
	 *  A new GtkComboBox.
	 */
	public this (bool text=true)
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
	
	/** */
	public void setActiveText(char[] text, bool insert=false)
	{
		int active = 0;
		setActive(0);
		while ( getActive >= 0 ) // returns -1 if end of list if reached
		{
			if( text == getActiveText() ) return;
			++active;
			setActive(active);
		}
		// was not found, the combo has now nothing selected
		if ( insert )
		{
			appendText(text);
			setActive(active);
		}
	}
	
	/** */
	int getIndex(char[] text)
	{
		TreeIter iter = new TreeIter();
		TreeModel model = getModel();
		iter.setModel(model);
		int index = 0;
		bool found = false;
		bool end = false;
		if ( model.getIterFirst(iter) )
		{
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
	void prependOrReplaceText(char[] text)
	{
		int index = getIndex(text);
		if ( index > 0 )
		{
			removeText(index);
			prependText(text);
		}
		else if ( index == -1 )
		{
			prependText(text);
		}
	}
	
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(ComboBox)[] onChangedListeners;
	/**
	 * The changed signal is emitted when the active
	 * item is changed. The can be due to the user selecting
	 * a different item from the list, or due to a
	 * call to gtk_combo_box_set_active_iter().
	 * It will also be emitted while typing into a GtkComboBoxEntry,
	 * as well as when selecting an item from the GtkComboBoxEntry's list.
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
	extern(C) static void callBackChanged(GtkComboBox* widgetStruct, ComboBox comboBox)
	{
		bool consumed = false;
		
		foreach ( void delegate(ComboBox) dlg ; comboBox.onChangedListeners )
		{
			dlg(comboBox);
		}
		
		return consumed;
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
	extern(C) static void callBackMoveActive(GtkComboBox* widgetStruct, GtkScrollType scrollType, ComboBox comboBox)
	{
		bool consumed = false;
		
		foreach ( void delegate(GtkScrollType, ComboBox) dlg ; comboBox.onMoveActiveListeners )
		{
			dlg(scrollType, comboBox);
		}
		
		return consumed;
	}
	
	gboolean delegate(ComboBox)[] onPopdownListeners;
	/**
	 * The ::popdown signal is a
	 * keybinding signal
	 * which gets emitted to popdown the combo box list.
	 * The default bindings for this signal are Alt+Up and Escape.
	 * Since 2.12
	 */
	void addOnPopdown(gboolean delegate(ComboBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackPopdown(GtkComboBox* buttonStruct, ComboBox comboBox)
	{
		bool consumed = false;
		
		foreach ( gboolean delegate(ComboBox) dlg ; comboBox.onPopdownListeners )
		{
			dlg(comboBox);
		}
		
		return consumed;
	}
	
	void delegate(ComboBox)[] onPopupListeners;
	/**
	 * The ::popup signal is a
	 * keybinding signal
	 * which gets emitted to popup the combo box list.
	 * The default binding for this signal is Alt+Down.
	 * Since 2.12
	 * See Also
	 * GtkComboBoxEntry, GtkTreeModel, GtkCellRenderer
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
	extern(C) static void callBackPopup(GtkComboBox* widgetStruct, ComboBox comboBox)
	{
		bool consumed = false;
		
		foreach ( void delegate(ComboBox) dlg ; comboBox.onPopupListeners )
		{
			dlg(comboBox);
		}
		
		return consumed;
	}
	
	
	/**
	 * Creates a new GtkComboBox with the model initialized to model.
	 * Since 2.4
	 * Params:
	 * model =  A GtkTreeModel.
	 */
	public this (TreeModel model)
	{
		// GtkWidget* gtk_combo_box_new_with_model (GtkTreeModel *model);
		auto p = gtk_combo_box_new_with_model((model is null) ? null : model.getTreeModelStruct());
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkComboBox*) p);
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
	 * width =  Preferred number of columns
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
	 * rowSpan =  A column in the model passed during construction.
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
	 * columnSpan =  A column in the model passed during construction
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
	 * Returns: An integer which is the index of the currently active item,  or -1 if there's no active item.
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
	 * index =  An index in the model passed during construction, or -1 to have
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
	 * iter =  The uninitialized GtkTreeIter
	 * Returns: TRUE, if iter was set
	 */
	public int getActiveIter(TreeIter iter)
	{
		// gboolean gtk_combo_box_get_active_iter (GtkComboBox *combo_box,  GtkTreeIter *iter);
		return gtk_combo_box_get_active_iter(gtkComboBox, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Sets the current active item to be the one referenced by iter.
	 * iter must correspond to a path of depth one.
	 * Since 2.4
	 * Params:
	 * iter =  The GtkTreeIter
	 */
	public void setActiveIter(TreeIter iter)
	{
		// void gtk_combo_box_set_active_iter (GtkComboBox *combo_box,  GtkTreeIter *iter);
		gtk_combo_box_set_active_iter(gtkComboBox, (iter is null) ? null : iter.getTreeIterStruct());
	}
	
	/**
	 * Returns the GtkTreeModel which is acting as data source for combo_box.
	 * Since 2.4
	 * Returns: A GtkTreeModel which was passed during construction.
	 */
	public TreeModel getModel()
	{
		// GtkTreeModel* gtk_combo_box_get_model (GtkComboBox *combo_box);
		auto p = gtk_combo_box_get_model(gtkComboBox);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new TreeModel(cast(GtkTreeModel*) p);
	}
	
	/**
	 * Sets the model used by combo_box to be model. Will unset a previously set
	 * model (if applicable). If model is NULL, then it will unset the model.
	 * Note that this function does not clear the cell renderers, you have to
	 * call gtk_cell_layout_clear() yourself if you need to set up different
	 * cell renderers for the new model.
	 * Since 2.4
	 * Params:
	 * model =  A GtkTreeModel
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
	 * Since 2.4
	 * Params:
	 * text =  A string
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
	 * Since 2.4
	 * Params:
	 * position =  An index to insert text
	 * text =  A string
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
	 * Since 2.4
	 * Params:
	 * text =  A string
	 */
	public void prependText(char[] text)
	{
		// void gtk_combo_box_prepend_text (GtkComboBox *combo_box,  const gchar *text);
		gtk_combo_box_prepend_text(gtkComboBox, Str.toStringz(text));
	}
	
	/**
	 * Removes the string at position from combo_box. Note that you can only use
	 * this function with combo boxes constructed with gtk_combo_box_new_text().
	 * Since 2.4
	 * Params:
	 * position =  Index of the item to remove
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
	 * Since 2.6
	 * Returns: a newly allocated string containing the currently active text.
	 */
	public char[] getActiveText()
	{
		// gchar* gtk_combo_box_get_active_text (GtkComboBox *combo_box);
		return Str.toString(gtk_combo_box_get_active_text(gtkComboBox)).dup;
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
	 * Returns: the accessible object corresponding to the combo box's popup.
	 */
	public ObjectAtk getPopupAccessible()
	{
		// AtkObject* gtk_combo_box_get_popup_accessible (GtkComboBox *combo_box);
		auto p = gtk_combo_box_get_popup_accessible(gtkComboBox);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new ObjectAtk(cast(AtkObject*) p);
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
	 * func =  a GtkTreeViewRowSeparatorFunc
	 * data =  user data to pass to func, or NULL
	 * destroy =  destroy notifier for data, or NULL
	 */
	public void setRowSeparatorFunc(GtkTreeViewRowSeparatorFunc func, void* data, GtkDestroyNotify destroy)
	{
		// void gtk_combo_box_set_row_separator_func  (GtkComboBox *combo_box,  GtkTreeViewRowSeparatorFunc func,  gpointer data,  GtkDestroyNotify destroy);
		gtk_combo_box_set_row_separator_func(gtkComboBox, func, data, destroy);
	}
	
	/**
	 * Sets whether the popup menu should have a tearoff
	 * menu item.
	 * Since 2.6
	 * Params:
	 * addTearoffs =  TRUE to add tearoff menu items
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
	 * title =  a title for the menu in tearoff mode
	 */
	public void setTitle(char[] title)
	{
		// void gtk_combo_box_set_title (GtkComboBox *combo_box,  const gchar *title);
		gtk_combo_box_set_title(gtkComboBox, Str.toStringz(title));
	}
	
	/**
	 * Gets the current title of the menu in tearoff mode. See
	 * gtk_combo_box_set_add_tearoffs().
	 * Since 2.10
	 * Returns: the menu's title in tearoff mode. This is an internal copy of thestring which must not be freed.
	 */
	public char[] getTitle()
	{
		// const gchar* gtk_combo_box_get_title (GtkComboBox *combo_box);
		return Str.toString(gtk_combo_box_get_title(gtkComboBox)).dup;
	}
	
	/**
	 * Sets whether the combo box will grab focus when it is clicked with
	 * the mouse. Making mouse clicks not grab focus is useful in places
	 * like toolbars where you don't want the keyboard focus removed from
	 * the main area of the application.
	 * Since 2.6
	 * Params:
	 * focusOnClick =  whether the combo box grabs focus when clicked
	 *  with the mouse
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
	 * Returns: TRUE if the combo box grabs focus when it is  clicked with the mouse.
	 */
	public int getFocusOnClick()
	{
		// gboolean gtk_combo_box_get_focus_on_click (GtkComboBox *combo);
		return gtk_combo_box_get_focus_on_click(gtkComboBox);
	}
}
