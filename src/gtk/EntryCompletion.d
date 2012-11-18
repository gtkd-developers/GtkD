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
 * inFile  = GtkEntryCompletion.html
 * outPack = gtk
 * outFile = EntryCompletion
 * strct   = GtkEntryCompletion
 * realStrct=
 * ctorStrct=
 * clss    = EntryCompletion
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * 	- CellLayoutIF
 * prefixes:
 * 	- gtk_entry_completion_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.CellArea
 * 	- gtk.TreeIter
 * 	- gtk.TreeModel
 * 	- gtk.TreeModelIF
 * 	- gtk.Widget
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * 	- gtk.CellLayoutIF
 * 	- gtk.CellLayoutT
 * structWrap:
 * 	- GtkCellArea* -> CellArea
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModelIF
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.EntryCompletion;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.CellArea;
private import gtk.TreeIter;
private import gtk.TreeModel;
private import gtk.TreeModelIF;
private import gtk.Widget;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;



private import gobject.ObjectG;

/**
 * Description
 * GtkEntryCompletion is an auxiliary object to be used in conjunction with
 * GtkEntry to provide the completion functionality. It implements the
 * GtkCellLayout interface, to allow the user to add extra cells to the
 * GtkTreeView with completion matches.
 * "Completion functionality" means that when the user modifies the text
 * in the entry, GtkEntryCompletion checks which rows in the model match
 * the current content of the entry, and displays a list of matches.
 * By default, the matching is done by comparing the entry text
 * case-insensitively against the text column of the model (see
 * gtk_entry_completion_set_text_column()), but this can be overridden
 * with a custom match function (see gtk_entry_completion_set_match_func()).
 * When the user selects a completion, the content of the entry is
 * updated. By default, the content of the entry is replaced by the
 * text column of the model, but this can be overridden by connecting
 * to the "match-selected" signal and updating the
 * entry in the signal handler. Note that you should return TRUE from
 * the signal handler to suppress the default behaviour.
 * To add completion functionality to an entry, use gtk_entry_set_completion().
 * In addition to regular completion matches, which will be inserted into the
 * entry when they are selected, GtkEntryCompletion also allows to display
 * "actions" in the popup window. Their appearance is similar to menuitems,
 * to differentiate them clearly from completion strings. When an action is
 * selected, the "action-activated" signal is emitted.
 * GtkEntryCompletion uses a GtkTreeModelFilter model to represent the
 * subset of the entire model that is currently matching. While the
 * GtkEntryCompletion signals "match-selected" and
 * "cursor-on-match" take the original model and an
 * iter pointing to that model as arguments, other callbacks and signals
 * (such as GtkCellLayoutDataFuncs or "apply-attributes")
 * will generally take the filter model as argument. As long as you are
 * only calling gtk_tree_model_get(), this will make no difference to
 * you. If for some reason, you need the original model, use
 * gtk_tree_model_filter_get_model(). Don't forget to use
 * gtk_tree_model_filter_convert_iter_to_child_iter() to obtain a
 * matching iter.
 */
public class EntryCompletion : ObjectG, BuildableIF, CellLayoutIF
{
	
	/** the main Gtk struct */
	protected GtkEntryCompletion* gtkEntryCompletion;
	
	
	public GtkEntryCompletion* getEntryCompletionStruct()
	{
		return gtkEntryCompletion;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEntryCompletion;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkEntryCompletion* gtkEntryCompletion)
	{
		super(cast(GObject*)gtkEntryCompletion);
		this.gtkEntryCompletion = gtkEntryCompletion;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkEntryCompletion = cast(GtkEntryCompletion*)obj;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkEntryCompletion);
	
	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkEntryCompletion);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(gint, EntryCompletion)[] onActionActivatedListeners;
	/**
	 * Gets emitted when an action is activated.
	 * Since 2.4
	 */
	void addOnActionActivated(void delegate(gint, EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("action-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"action-activated",
			cast(GCallback)&callBackActionActivated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["action-activated"] = 1;
		}
		onActionActivatedListeners ~= dlg;
	}
	extern(C) static void callBackActionActivated(GtkEntryCompletion* widgetStruct, gint index, EntryCompletion _entryCompletion)
	{
		foreach ( void delegate(gint, EntryCompletion) dlg ; _entryCompletion.onActionActivatedListeners )
		{
			dlg(index, _entryCompletion);
		}
	}
	
	bool delegate(TreeModelIF, TreeIter, EntryCompletion)[] onCursorOnMatchListeners;
	/**
	 * Gets emitted when a match from the cursor is on a match
	 * of the list. The default behaviour is to replace the contents
	 * of the entry with the contents of the text column in the row
	 * pointed to by iter.
	 * Note that model is the model that was passed to
	 * gtk_entry_completion_set_model().
	 * TRUE if the signal has been handled
	 * Since 2.12
	 */
	void addOnCursorOnMatch(bool delegate(TreeModelIF, TreeIter, EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cursor-on-match" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cursor-on-match",
			cast(GCallback)&callBackCursorOnMatch,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cursor-on-match"] = 1;
		}
		onCursorOnMatchListeners ~= dlg;
	}
	extern(C) static gboolean callBackCursorOnMatch(GtkEntryCompletion* widgetStruct, GtkTreeModel* model, GtkTreeIter* iter, EntryCompletion _entryCompletion)
	{
		foreach ( bool delegate(TreeModelIF, TreeIter, EntryCompletion) dlg ; _entryCompletion.onCursorOnMatchListeners )
		{
			if ( dlg(ObjectG.getDObject!(TreeModel)(model), ObjectG.getDObject!(TreeIter)(iter), _entryCompletion) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(string, EntryCompletion)[] onInsertPrefixListeners;
	/**
	 * Gets emitted when the inline autocompletion is triggered.
	 * The default behaviour is to make the entry display the
	 * whole prefix and select the newly inserted part.
	 * Applications may connect to this signal in order to insert only a
	 * smaller part of the prefix into the entry - e.g. the entry used in
	 * the GtkFileChooser inserts only the part of the prefix up to the
	 * next '/'.
	 * TRUE if the signal has been handled
	 * Since 2.6
	 */
	void addOnInsertPrefix(bool delegate(string, EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("insert-prefix" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-prefix",
			cast(GCallback)&callBackInsertPrefix,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["insert-prefix"] = 1;
		}
		onInsertPrefixListeners ~= dlg;
	}
	extern(C) static gboolean callBackInsertPrefix(GtkEntryCompletion* widgetStruct, gchar* prefix, EntryCompletion _entryCompletion)
	{
		foreach ( bool delegate(string, EntryCompletion) dlg ; _entryCompletion.onInsertPrefixListeners )
		{
			if ( dlg(Str.toString(prefix), _entryCompletion) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(TreeModelIF, TreeIter, EntryCompletion)[] onMatchSelectedListeners;
	/**
	 * Gets emitted when a match from the list is selected.
	 * The default behaviour is to replace the contents of the
	 * entry with the contents of the text column in the row
	 * pointed to by iter.
	 * Note that model is the model that was passed to
	 * gtk_entry_completion_set_model().
	 * TRUE if the signal has been handled
	 * Since 2.4
	 */
	void addOnMatchSelected(bool delegate(TreeModelIF, TreeIter, EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("match-selected" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"match-selected",
			cast(GCallback)&callBackMatchSelected,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["match-selected"] = 1;
		}
		onMatchSelectedListeners ~= dlg;
	}
	extern(C) static gboolean callBackMatchSelected(GtkEntryCompletion* widgetStruct, GtkTreeModel* model, GtkTreeIter* iter, EntryCompletion _entryCompletion)
	{
		foreach ( bool delegate(TreeModelIF, TreeIter, EntryCompletion) dlg ; _entryCompletion.onMatchSelectedListeners )
		{
			if ( dlg(ObjectG.getDObject!(TreeModel)(model), ObjectG.getDObject!(TreeIter)(iter), _entryCompletion) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new GtkEntryCompletion object.
	 * Since 2.4
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkEntryCompletion * gtk_entry_completion_new (void);
		auto p = gtk_entry_completion_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_entry_completion_new()");
		}
		this(cast(GtkEntryCompletion*) p);
	}
	
	/**
	 * Creates a new GtkEntryCompletion object using the
	 * specified area to layout cells in the underlying
	 * GtkTreeViewColumn for the drop-down menu.
	 * Params:
	 * area = the GtkCellArea used to layout cells
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (CellArea area)
	{
		// GtkEntryCompletion * gtk_entry_completion_new_with_area (GtkCellArea *area);
		auto p = gtk_entry_completion_new_with_area((area is null) ? null : area.getCellAreaStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_entry_completion_new_with_area((area is null) ? null : area.getCellAreaStruct())");
		}
		this(cast(GtkEntryCompletion*) p);
	}
	
	/**
	 * Gets the entry completion has been attached to.
	 * Since 2.4
	 * Returns: The entry completion has been attached to. [transfer none]
	 */
	public Widget getEntry()
	{
		// GtkWidget * gtk_entry_completion_get_entry (GtkEntryCompletion *completion);
		auto p = gtk_entry_completion_get_entry(gtkEntryCompletion);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Sets the model for a GtkEntryCompletion. If completion already has
	 * a model set, it will remove it before setting the new model.
	 * If model is NULL, then it will unset the model.
	 * Since 2.4
	 * Params:
	 * model = the GtkTreeModel. [allow-none]
	 */
	public void setModel(TreeModelIF model)
	{
		// void gtk_entry_completion_set_model (GtkEntryCompletion *completion,  GtkTreeModel *model);
		gtk_entry_completion_set_model(gtkEntryCompletion, (model is null) ? null : model.getTreeModelTStruct());
	}
	
	/**
	 * Returns NULL if the model is unset.
	 * Since 2.4
	 * Returns: A GtkTreeModel, or NULL if none is currently being used. [transfer none]
	 */
	public TreeModelIF getModel()
	{
		// GtkTreeModel * gtk_entry_completion_get_model (GtkEntryCompletion *completion);
		auto p = gtk_entry_completion_get_model(gtkEntryCompletion);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeModel)(cast(GtkTreeModel*) p);
	}
	
	/**
	 * Sets the match function for completion to be func. The match function
	 * is used to determine if a row should or should not be in the completion
	 * list.
	 * Since 2.4
	 * Params:
	 * func = the GtkEntryCompletionMatchFunc to use
	 * funcData = user data for func
	 * funcNotify = destroy notify for func_data.
	 */
	public void setMatchFunc(GtkEntryCompletionMatchFunc func, void* funcData, GDestroyNotify funcNotify)
	{
		// void gtk_entry_completion_set_match_func (GtkEntryCompletion *completion,  GtkEntryCompletionMatchFunc func,  gpointer func_data,  GDestroyNotify func_notify);
		gtk_entry_completion_set_match_func(gtkEntryCompletion, func, funcData, funcNotify);
	}
	
	/**
	 * Requires the length of the search key for completion to be at least
	 * length. This is useful for long lists, where completing using a small
	 * key takes a lot of time and will come up with meaningless results anyway
	 * (ie, a too large dataset).
	 * Since 2.4
	 * Params:
	 * length = the minimum length of the key in order to start completing
	 */
	public void setMinimumKeyLength(int length)
	{
		// void gtk_entry_completion_set_minimum_key_length  (GtkEntryCompletion *completion,  gint length);
		gtk_entry_completion_set_minimum_key_length(gtkEntryCompletion, length);
	}
	
	/**
	 * Returns the minimum key length as set for completion.
	 * Since 2.4
	 * Returns: The currently used minimum key length
	 */
	public int getMinimumKeyLength()
	{
		// gint gtk_entry_completion_get_minimum_key_length  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_minimum_key_length(gtkEntryCompletion);
	}
	
	/**
	 * Computes the common prefix that is shared by all rows in completion
	 * that start with key. If no row matches key, NULL will be returned.
	 * Note that a text column must have been set for this function to work,
	 * see gtk_entry_completion_set_text_column() for details.
	 * Params:
	 * key = The text to complete for
	 * Returns: The common prefix all rows starting with key or NULL if no row matches key. [transfer full] Since 3.4
	 */
	public string computePrefix(string key)
	{
		// gchar * gtk_entry_completion_compute_prefix (GtkEntryCompletion *completion,  const char *key);
		return Str.toString(gtk_entry_completion_compute_prefix(gtkEntryCompletion, Str.toStringz(key)));
	}
	
	/**
	 * Requests a completion operation, or in other words a refiltering of the
	 * current list with completions, using the current key. The completion list
	 * view will be updated accordingly.
	 * Since 2.4
	 */
	public void complete()
	{
		// void gtk_entry_completion_complete (GtkEntryCompletion *completion);
		gtk_entry_completion_complete(gtkEntryCompletion);
	}
	
	/**
	 * Get the original text entered by the user that triggered
	 * the completion or NULL if there's no completion ongoing.
	 * Since 2.12
	 * Returns: the prefix for the current completion
	 */
	public string getCompletionPrefix()
	{
		// const gchar * gtk_entry_completion_get_completion_prefix  (GtkEntryCompletion *completion);
		return Str.toString(gtk_entry_completion_get_completion_prefix(gtkEntryCompletion));
	}
	
	/**
	 * Requests a prefix insertion.
	 * Since 2.6
	 */
	public void insertPrefix()
	{
		// void gtk_entry_completion_insert_prefix (GtkEntryCompletion *completion);
		gtk_entry_completion_insert_prefix(gtkEntryCompletion);
	}
	
	/**
	 * Inserts an action in completion's action item list at position index_
	 * with text text. If you want the action item to have markup, use
	 * gtk_entry_completion_insert_action_markup().
	 * Since 2.4
	 * Params:
	 * index = the index of the item to insert
	 * text = text of the item to insert
	 */
	public void insertActionText(int index, string text)
	{
		// void gtk_entry_completion_insert_action_text  (GtkEntryCompletion *completion,  gint index_,  const gchar *text);
		gtk_entry_completion_insert_action_text(gtkEntryCompletion, index, Str.toStringz(text));
	}
	
	/**
	 * Inserts an action in completion's action item list at position index_
	 * with markup markup.
	 * Since 2.4
	 * Params:
	 * index = the index of the item to insert
	 * markup = markup of the item to insert
	 */
	public void insertActionMarkup(int index, string markup)
	{
		// void gtk_entry_completion_insert_action_markup  (GtkEntryCompletion *completion,  gint index_,  const gchar *markup);
		gtk_entry_completion_insert_action_markup(gtkEntryCompletion, index, Str.toStringz(markup));
	}
	
	/**
	 * Deletes the action at index_ from completion's action list.
	 * Since 2.4
	 * Params:
	 * index = the index of the item to delete
	 */
	public void deleteAction(int index)
	{
		// void gtk_entry_completion_delete_action (GtkEntryCompletion *completion,  gint index_);
		gtk_entry_completion_delete_action(gtkEntryCompletion, index);
	}
	
	/**
	 * Convenience function for setting up the most used case of this code: a
	 * completion list with just strings. This function will set up completion
	 * to have a list displaying all (and just) strings in the completion list,
	 * and to get those strings from column in the model of completion.
	 * This functions creates and adds a GtkCellRendererText for the selected
	 * column. If you need to set the text column, but don't want the cell
	 * renderer, use g_object_set() to set the "text-column"
	 * property directly.
	 * Since 2.4
	 * Params:
	 * column = the column in the model of completion to get strings from
	 */
	public void setTextColumn(int column)
	{
		// void gtk_entry_completion_set_text_column  (GtkEntryCompletion *completion,  gint column);
		gtk_entry_completion_set_text_column(gtkEntryCompletion, column);
	}
	
	/**
	 * Returns the column in the model of completion to get strings from.
	 * Since 2.6
	 * Returns: the column containing the strings
	 */
	public int getTextColumn()
	{
		// gint gtk_entry_completion_get_text_column  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_text_column(gtkEntryCompletion);
	}
	
	/**
	 * Sets whether the common prefix of the possible completions should
	 * be automatically inserted in the entry.
	 * Since 2.6
	 * Params:
	 * inlineCompletion = TRUE to do inline completion
	 */
	public void setInlineCompletion(int inlineCompletion)
	{
		// void gtk_entry_completion_set_inline_completion  (GtkEntryCompletion *completion,  gboolean inline_completion);
		gtk_entry_completion_set_inline_completion(gtkEntryCompletion, inlineCompletion);
	}
	
	/**
	 * Returns whether the common prefix of the possible completions should
	 * be automatically inserted in the entry.
	 * Since 2.6
	 * Returns: TRUE if inline completion is turned on
	 */
	public int getInlineCompletion()
	{
		// gboolean gtk_entry_completion_get_inline_completion  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_inline_completion(gtkEntryCompletion);
	}
	
	/**
	 * Sets whether it is possible to cycle through the possible completions
	 * inside the entry.
	 * Since 2.12
	 * Params:
	 * inlineSelection = TRUE to do inline selection
	 */
	public void setInlineSelection(int inlineSelection)
	{
		// void gtk_entry_completion_set_inline_selection  (GtkEntryCompletion *completion,  gboolean inline_selection);
		gtk_entry_completion_set_inline_selection(gtkEntryCompletion, inlineSelection);
	}
	
	/**
	 * Returns TRUE if inline-selection mode is turned on.
	 * Since 2.12
	 * Returns: TRUE if inline-selection mode is on
	 */
	public int getInlineSelection()
	{
		// gboolean gtk_entry_completion_get_inline_selection  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_inline_selection(gtkEntryCompletion);
	}
	
	/**
	 * Sets whether the completions should be presented in a popup window.
	 * Since 2.6
	 * Params:
	 * popupCompletion = TRUE to do popup completion
	 */
	public void setPopupCompletion(int popupCompletion)
	{
		// void gtk_entry_completion_set_popup_completion  (GtkEntryCompletion *completion,  gboolean popup_completion);
		gtk_entry_completion_set_popup_completion(gtkEntryCompletion, popupCompletion);
	}
	
	/**
	 * Returns whether the completions should be presented in a popup window.
	 * Since 2.6
	 * Returns: TRUE if popup completion is turned on
	 */
	public int getPopupCompletion()
	{
		// gboolean gtk_entry_completion_get_popup_completion  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_popup_completion(gtkEntryCompletion);
	}
	
	/**
	 * Sets whether the completion popup window will be resized to be the same
	 * width as the entry.
	 * Since 2.8
	 * Params:
	 * popupSetWidth = TRUE to make the width of the popup the same as the entry
	 */
	public void setPopupSetWidth(int popupSetWidth)
	{
		// void gtk_entry_completion_set_popup_set_width  (GtkEntryCompletion *completion,  gboolean popup_set_width);
		gtk_entry_completion_set_popup_set_width(gtkEntryCompletion, popupSetWidth);
	}
	
	/**
	 * Returns whether the completion popup window will be resized to the
	 * width of the entry.
	 * Since 2.8
	 * Returns: TRUE if the popup window will be resized to the width of the entry
	 */
	public int getPopupSetWidth()
	{
		// gboolean gtk_entry_completion_get_popup_set_width  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_popup_set_width(gtkEntryCompletion);
	}
	
	/**
	 * Sets whether the completion popup window will appear even if there is
	 * only a single match. You may want to set this to FALSE if you
	 * are using inline
	 * completion.
	 * Since 2.8
	 * Params:
	 * popupSingleMatch = TRUE if the popup should appear even for a single
	 * match
	 */
	public void setPopupSingleMatch(int popupSingleMatch)
	{
		// void gtk_entry_completion_set_popup_single_match  (GtkEntryCompletion *completion,  gboolean popup_single_match);
		gtk_entry_completion_set_popup_single_match(gtkEntryCompletion, popupSingleMatch);
	}
	
	/**
	 * Returns whether the completion popup window will appear even if there is
	 * only a single match.
	 * Since 2.8
	 * Returns: TRUE if the popup window will appear regardless of the number of matches
	 */
	public int getPopupSingleMatch()
	{
		// gboolean gtk_entry_completion_get_popup_single_match  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_popup_single_match(gtkEntryCompletion);
	}
}
