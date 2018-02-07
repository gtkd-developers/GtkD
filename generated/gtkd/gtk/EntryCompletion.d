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


module gtk.EntryCompletion;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.CellArea;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkEntryCompletion is an auxiliary object to be used in conjunction with
 * #GtkEntry to provide the completion functionality. It implements the
 * #GtkCellLayout interface, to allow the user to add extra cells to the
 * #GtkTreeView with completion matches.
 * 
 * “Completion functionality” means that when the user modifies the text
 * in the entry, #GtkEntryCompletion checks which rows in the model match
 * the current content of the entry, and displays a list of matches.
 * By default, the matching is done by comparing the entry text
 * case-insensitively against the text column of the model (see
 * gtk_entry_completion_set_text_column()), but this can be overridden
 * with a custom match function (see gtk_entry_completion_set_match_func()).
 * 
 * When the user selects a completion, the content of the entry is
 * updated. By default, the content of the entry is replaced by the
 * text column of the model, but this can be overridden by connecting
 * to the #GtkEntryCompletion::match-selected signal and updating the
 * entry in the signal handler. Note that you should return %TRUE from
 * the signal handler to suppress the default behaviour.
 * 
 * To add completion functionality to an entry, use gtk_entry_set_completion().
 * 
 * In addition to regular completion matches, which will be inserted into the
 * entry when they are selected, #GtkEntryCompletion also allows to display
 * “actions” in the popup window. Their appearance is similar to menuitems,
 * to differentiate them clearly from completion strings. When an action is
 * selected, the #GtkEntryCompletion::action-activated signal is emitted.
 * 
 * GtkEntryCompletion uses a #GtkTreeModelFilter model to represent the
 * subset of the entire model that is currently matching. While the
 * GtkEntryCompletion signals #GtkEntryCompletion::match-selected and
 * #GtkEntryCompletion::cursor-on-match take the original model and an
 * iter pointing to that model as arguments, other callbacks and signals
 * (such as #GtkCellLayoutDataFuncs or #GtkCellArea::apply-attributes)
 * will generally take the filter model as argument. As long as you are
 * only calling gtk_tree_model_get(), this will make no difference to
 * you. If for some reason, you need the original model, use
 * gtk_tree_model_filter_get_model(). Don’t forget to use
 * gtk_tree_model_filter_convert_iter_to_child_iter() to obtain a
 * matching iter.
 */
public class EntryCompletion : ObjectG, BuildableIF, CellLayoutIF
{
	/** the main Gtk struct */
	protected GtkEntryCompletion* gtkEntryCompletion;

	/** Get the main Gtk struct */
	public GtkEntryCompletion* getEntryCompletionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEntryCompletion;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEntryCompletion;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEntryCompletion* gtkEntryCompletion, bool ownedRef = false)
	{
		this.gtkEntryCompletion = gtkEntryCompletion;
		super(cast(GObject*)gtkEntryCompletion, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkEntryCompletion);

	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkEntryCompletion);


	/** */
	public static GType getType()
	{
		return gtk_entry_completion_get_type();
	}

	/**
	 * Creates a new #GtkEntryCompletion object.
	 *
	 * Returns: A newly created #GtkEntryCompletion object
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_entry_completion_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEntryCompletion*) p, true);
	}

	/**
	 * Creates a new #GtkEntryCompletion object using the
	 * specified @area to layout cells in the underlying
	 * #GtkTreeViewColumn for the drop-down menu.
	 *
	 * Params:
	 *     area = the #GtkCellArea used to layout cells
	 *
	 * Returns: A newly created #GtkEntryCompletion object
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(CellArea area)
	{
		auto p = gtk_entry_completion_new_with_area((area is null) ? null : area.getCellAreaStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_area");
		}

		this(cast(GtkEntryCompletion*) p, true);
	}

	/**
	 * Requests a completion operation, or in other words a refiltering of the
	 * current list with completions, using the current key. The completion list
	 * view will be updated accordingly.
	 *
	 * Since: 2.4
	 */
	public void complete()
	{
		gtk_entry_completion_complete(gtkEntryCompletion);
	}

	/**
	 * Computes the common prefix that is shared by all rows in @completion
	 * that start with @key. If no row matches @key, %NULL will be returned.
	 * Note that a text column must have been set for this function to work,
	 * see gtk_entry_completion_set_text_column() for details.
	 *
	 * Params:
	 *     key = The text to complete for
	 *
	 * Returns: The common prefix all rows starting with
	 *     @key or %NULL if no row matches @key.
	 *
	 * Since: 3.4
	 */
	public string computePrefix(string key)
	{
		auto retStr = gtk_entry_completion_compute_prefix(gtkEntryCompletion, Str.toStringz(key));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Deletes the action at @index_ from @completion’s action list.
	 *
	 * Note that @index_ is a relative position and the position of an
	 * action may have changed since it was inserted.
	 *
	 * Params:
	 *     index = the index of the item to delete
	 *
	 * Since: 2.4
	 */
	public void deleteAction(int index)
	{
		gtk_entry_completion_delete_action(gtkEntryCompletion, index);
	}

	/**
	 * Get the original text entered by the user that triggered
	 * the completion or %NULL if there’s no completion ongoing.
	 *
	 * Returns: the prefix for the current completion
	 *
	 * Since: 2.12
	 */
	public string getCompletionPrefix()
	{
		return Str.toString(gtk_entry_completion_get_completion_prefix(gtkEntryCompletion));
	}

	/**
	 * Gets the entry @completion has been attached to.
	 *
	 * Returns: The entry @completion has been attached to
	 *
	 * Since: 2.4
	 */
	public Widget getEntry()
	{
		auto p = gtk_entry_completion_get_entry(gtkEntryCompletion);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns whether the common prefix of the possible completions should
	 * be automatically inserted in the entry.
	 *
	 * Returns: %TRUE if inline completion is turned on
	 *
	 * Since: 2.6
	 */
	public bool getInlineCompletion()
	{
		return gtk_entry_completion_get_inline_completion(gtkEntryCompletion) != 0;
	}

	/**
	 * Returns %TRUE if inline-selection mode is turned on.
	 *
	 * Returns: %TRUE if inline-selection mode is on
	 *
	 * Since: 2.12
	 */
	public bool getInlineSelection()
	{
		return gtk_entry_completion_get_inline_selection(gtkEntryCompletion) != 0;
	}

	/**
	 * Returns the minimum key length as set for @completion.
	 *
	 * Returns: The currently used minimum key length
	 *
	 * Since: 2.4
	 */
	public int getMinimumKeyLength()
	{
		return gtk_entry_completion_get_minimum_key_length(gtkEntryCompletion);
	}

	/**
	 * Returns the model the #GtkEntryCompletion is using as data source.
	 * Returns %NULL if the model is unset.
	 *
	 * Returns: A #GtkTreeModel, or %NULL if none
	 *     is currently being used
	 *
	 * Since: 2.4
	 */
	public TreeModelIF getModel()
	{
		auto p = gtk_entry_completion_get_model(gtkEntryCompletion);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) p);
	}

	/**
	 * Returns whether the completions should be presented in a popup window.
	 *
	 * Returns: %TRUE if popup completion is turned on
	 *
	 * Since: 2.6
	 */
	public bool getPopupCompletion()
	{
		return gtk_entry_completion_get_popup_completion(gtkEntryCompletion) != 0;
	}

	/**
	 * Returns whether the  completion popup window will be resized to the
	 * width of the entry.
	 *
	 * Returns: %TRUE if the popup window will be resized to the width of
	 *     the entry
	 *
	 * Since: 2.8
	 */
	public bool getPopupSetWidth()
	{
		return gtk_entry_completion_get_popup_set_width(gtkEntryCompletion) != 0;
	}

	/**
	 * Returns whether the completion popup window will appear even if there is
	 * only a single match.
	 *
	 * Returns: %TRUE if the popup window will appear regardless of the
	 *     number of matches
	 *
	 * Since: 2.8
	 */
	public bool getPopupSingleMatch()
	{
		return gtk_entry_completion_get_popup_single_match(gtkEntryCompletion) != 0;
	}

	/**
	 * Returns the column in the model of @completion to get strings from.
	 *
	 * Returns: the column containing the strings
	 *
	 * Since: 2.6
	 */
	public int getTextColumn()
	{
		return gtk_entry_completion_get_text_column(gtkEntryCompletion);
	}

	/**
	 * Inserts an action in @completion’s action item list at position @index_
	 * with markup @markup.
	 *
	 * Params:
	 *     index = the index of the item to insert
	 *     markup = markup of the item to insert
	 *
	 * Since: 2.4
	 */
	public void insertActionMarkup(int index, string markup)
	{
		gtk_entry_completion_insert_action_markup(gtkEntryCompletion, index, Str.toStringz(markup));
	}

	/**
	 * Inserts an action in @completion’s action item list at position @index_
	 * with text @text. If you want the action item to have markup, use
	 * gtk_entry_completion_insert_action_markup().
	 *
	 * Note that @index_ is a relative position in the list of actions and
	 * the position of an action can change when deleting a different action.
	 *
	 * Params:
	 *     index = the index of the item to insert
	 *     text = text of the item to insert
	 *
	 * Since: 2.4
	 */
	public void insertActionText(int index, string text)
	{
		gtk_entry_completion_insert_action_text(gtkEntryCompletion, index, Str.toStringz(text));
	}

	/**
	 * Requests a prefix insertion.
	 *
	 * Since: 2.6
	 */
	public void insertPrefix()
	{
		gtk_entry_completion_insert_prefix(gtkEntryCompletion);
	}

	/**
	 * Sets whether the common prefix of the possible completions should
	 * be automatically inserted in the entry.
	 *
	 * Params:
	 *     inlineCompletion = %TRUE to do inline completion
	 *
	 * Since: 2.6
	 */
	public void setInlineCompletion(bool inlineCompletion)
	{
		gtk_entry_completion_set_inline_completion(gtkEntryCompletion, inlineCompletion);
	}

	/**
	 * Sets whether it is possible to cycle through the possible completions
	 * inside the entry.
	 *
	 * Params:
	 *     inlineSelection = %TRUE to do inline selection
	 *
	 * Since: 2.12
	 */
	public void setInlineSelection(bool inlineSelection)
	{
		gtk_entry_completion_set_inline_selection(gtkEntryCompletion, inlineSelection);
	}

	/**
	 * Sets the match function for @completion to be @func. The match function
	 * is used to determine if a row should or should not be in the completion
	 * list.
	 *
	 * Params:
	 *     func = the #GtkEntryCompletionMatchFunc to use
	 *     funcData = user data for @func
	 *     funcNotify = destroy notify for @func_data.
	 *
	 * Since: 2.4
	 */
	public void setMatchFunc(GtkEntryCompletionMatchFunc func, void* funcData, GDestroyNotify funcNotify)
	{
		gtk_entry_completion_set_match_func(gtkEntryCompletion, func, funcData, funcNotify);
	}

	/**
	 * Requires the length of the search key for @completion to be at least
	 * @length. This is useful for long lists, where completing using a small
	 * key takes a lot of time and will come up with meaningless results anyway
	 * (ie, a too large dataset).
	 *
	 * Params:
	 *     length = the minimum length of the key in order to start completing
	 *
	 * Since: 2.4
	 */
	public void setMinimumKeyLength(int length)
	{
		gtk_entry_completion_set_minimum_key_length(gtkEntryCompletion, length);
	}

	/**
	 * Sets the model for a #GtkEntryCompletion. If @completion already has
	 * a model set, it will remove it before setting the new model.
	 * If model is %NULL, then it will unset the model.
	 *
	 * Params:
	 *     model = the #GtkTreeModel
	 *
	 * Since: 2.4
	 */
	public void setModel(TreeModelIF model)
	{
		gtk_entry_completion_set_model(gtkEntryCompletion, (model is null) ? null : model.getTreeModelStruct());
	}

	/**
	 * Sets whether the completions should be presented in a popup window.
	 *
	 * Params:
	 *     popupCompletion = %TRUE to do popup completion
	 *
	 * Since: 2.6
	 */
	public void setPopupCompletion(bool popupCompletion)
	{
		gtk_entry_completion_set_popup_completion(gtkEntryCompletion, popupCompletion);
	}

	/**
	 * Sets whether the completion popup window will be resized to be the same
	 * width as the entry.
	 *
	 * Params:
	 *     popupSetWidth = %TRUE to make the width of the popup the same as the entry
	 *
	 * Since: 2.8
	 */
	public void setPopupSetWidth(bool popupSetWidth)
	{
		gtk_entry_completion_set_popup_set_width(gtkEntryCompletion, popupSetWidth);
	}

	/**
	 * Sets whether the completion popup window will appear even if there is
	 * only a single match. You may want to set this to %FALSE if you
	 * are using [inline completion][GtkEntryCompletion--inline-completion].
	 *
	 * Params:
	 *     popupSingleMatch = %TRUE if the popup should appear even for a single
	 *         match
	 *
	 * Since: 2.8
	 */
	public void setPopupSingleMatch(bool popupSingleMatch)
	{
		gtk_entry_completion_set_popup_single_match(gtkEntryCompletion, popupSingleMatch);
	}

	/**
	 * Convenience function for setting up the most used case of this code: a
	 * completion list with just strings. This function will set up @completion
	 * to have a list displaying all (and just) strings in the completion list,
	 * and to get those strings from @column in the model of @completion.
	 *
	 * This functions creates and adds a #GtkCellRendererText for the selected
	 * column. If you need to set the text column, but don't want the cell
	 * renderer, use g_object_set() to set the #GtkEntryCompletion:text-column
	 * property directly.
	 *
	 * Params:
	 *     column = the column in the model of @completion to get strings from
	 *
	 * Since: 2.4
	 */
	public void setTextColumn(int column)
	{
		gtk_entry_completion_set_text_column(gtkEntryCompletion, column);
	}

	/**
	 * Gets emitted when an action is activated.
	 *
	 * Params:
	 *     index = the index of the activated action
	 *
	 * Since: 2.4
	 */
	gulong addOnActionActivated(void delegate(int, EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "action-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when a match from the cursor is on a match
	 * of the list. The default behaviour is to replace the contents
	 * of the entry with the contents of the text column in the row
	 * pointed to by @iter.
	 *
	 * Note that @model is the model that was passed to
	 * gtk_entry_completion_set_model().
	 *
	 * Params:
	 *     model = the #GtkTreeModel containing the matches
	 *     iter = a #GtkTreeIter positioned at the selected match
	 *
	 * Returns: %TRUE if the signal has been handled
	 *
	 * Since: 2.12
	 */
	gulong addOnCursorOnMatch(bool delegate(TreeModelIF, TreeIter, EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cursor-on-match", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when the inline autocompletion is triggered.
	 * The default behaviour is to make the entry display the
	 * whole prefix and select the newly inserted part.
	 *
	 * Applications may connect to this signal in order to insert only a
	 * smaller part of the @prefix into the entry - e.g. the entry used in
	 * the #GtkFileChooser inserts only the part of the prefix up to the
	 * next '/'.
	 *
	 * Params:
	 *     prefix = the common prefix of all possible completions
	 *
	 * Returns: %TRUE if the signal has been handled
	 *
	 * Since: 2.6
	 */
	gulong addOnInsertPrefix(bool delegate(string, EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-prefix", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when a match from the list is selected.
	 * The default behaviour is to replace the contents of the
	 * entry with the contents of the text column in the row
	 * pointed to by @iter.
	 *
	 * Note that @model is the model that was passed to
	 * gtk_entry_completion_set_model().
	 *
	 * Params:
	 *     model = the #GtkTreeModel containing the matches
	 *     iter = a #GtkTreeIter positioned at the selected match
	 *
	 * Returns: %TRUE if the signal has been handled
	 *
	 * Since: 2.4
	 */
	gulong addOnMatchSelected(bool delegate(TreeModelIF, TreeIter, EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "match-selected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when the filter model has zero
	 * number of rows in completion_complete method.
	 * (In other words when GtkEntryCompletion is out of
	 * suggestions)
	 *
	 * Since: 3.14
	 */
	gulong addOnNoMatches(void delegate(EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "no-matches", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
