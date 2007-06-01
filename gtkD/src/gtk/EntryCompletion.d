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
 * inFile  = GtkEntryCompletion.html
 * outPack = gtk
 * outFile = EntryCompletion
 * strct   = GtkEntryCompletion
 * realStrct=
 * ctorStrct=
 * clss    = EntryCompletion
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_entry_completion_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.TreeModel
 * structWrap:
 * 	- GtkTreeModel* -> TreeModel
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.EntryCompletion;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.Widget;
private import gtk.TreeModel;




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
 * gtk_entry_completion_set_text_column()), but this can be overridden with
 * a custom match function (see gtk_entry_completion_set_match_func()).
 * When the user selects a completion, the content of the entry is updated.
 * By default, the content of the entry is replaced by the text column of the
 * model, but this can be overridden by connecting to the ::match-selected signal
 * and updating the entry in the signal handler. Note that you should return
 * TRUE from the signal handler to suppress the default behaviour.
 * To add completion functionality to an entry, use gtk_entry_set_completion().
 * In addition to regular completion matches, which will be inserted into the
 * entry when they are selected, GtkEntryCompletion also allows to display
 * "actions" in the popup window. Their appearance is similar to menuitems,
 * to differentiate them clearly from completion strings. When an action is
 * selected, the ::action-activated signal is emitted.
 */
private import gobject.ObjectG;
public class EntryCompletion : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkEntryCompletion* gtkEntryCompletion;
	
	
	public GtkEntryCompletion* getEntryCompletionStruct()
	{
		return gtkEntryCompletion;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkEntryCompletion;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkEntryCompletion* gtkEntryCompletion)
	{
		assert(gtkEntryCompletion !is null, "struct gtkEntryCompletion is null on constructor");
		super(cast(GObject*)gtkEntryCompletion);
		this.gtkEntryCompletion = gtkEntryCompletion;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(gint, EntryCompletion)[] onActionActivatedListeners;
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
	extern(C) static void callBackActionActivated(GtkEntryCompletion* widgetStruct, gint index, EntryCompletion entryCompletion)
	{
		bool consumed = false;
		
		foreach ( void delegate(gint, EntryCompletion) dlg ; entryCompletion.onActionActivatedListeners )
		{
			dlg(index, entryCompletion);
		}
		
		return consumed;
	}
	
	gboolean delegate(char[], EntryCompletion)[] onInsertPrefixListeners;
	void addOnInsertPrefix(gboolean delegate(char[], EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackInsertPrefix(GtkEntryCompletion* widgetStruct, gchar* prefix, EntryCompletion entryCompletion)
	{
		bool consumed = false;
		
		foreach ( gboolean delegate(char[], EntryCompletion) dlg ; entryCompletion.onInsertPrefixListeners )
		{
			dlg(Str.toString(prefix), entryCompletion);
		}
		
		return consumed;
	}
	
	gboolean delegate(TreeModel, GtkTreeIter*, EntryCompletion)[] onMatchSelectedListeners;
	void addOnMatchSelected(gboolean delegate(TreeModel, GtkTreeIter*, EntryCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackMatchSelected(GtkEntryCompletion* widgetStruct, GtkTreeModel* model, GtkTreeIter* iter, EntryCompletion entryCompletion)
	{
		bool consumed = false;
		
		foreach ( gboolean delegate(TreeModel, GtkTreeIter*, EntryCompletion) dlg ; entryCompletion.onMatchSelectedListeners )
		{
			dlg(new TreeModel(model), iter, entryCompletion);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Creates a new GtkEntryCompletion object.
	 * Returns:
	 *  A newly created GtkEntryCompletion object.
	 * Since 2.4
	 */
	public this ()
	{
		// GtkEntryCompletion* gtk_entry_completion_new (void);
		this(cast(GtkEntryCompletion*)gtk_entry_completion_new() );
	}
	
	/**
	 * Gets the entry completion has been attached to.
	 * completion:
	 *  A GtkEntryCompletion.
	 * Returns:
	 *  The entry completion has been attached to.
	 * Since 2.4
	 */
	public Widget getEntry()
	{
		// GtkWidget* gtk_entry_completion_get_entry (GtkEntryCompletion *completion);
		return new Widget( gtk_entry_completion_get_entry(gtkEntryCompletion) );
	}
	
	/**
	 * Sets the model for a GtkEntryCompletion. If completion already has
	 * a model set, it will remove it before setting the new model.
	 * If model is NULL, then it will unset the model.
	 * completion:
	 *  A GtkEntryCompletion.
	 * model:
	 *  The GtkTreeModel.
	 * Since 2.4
	 */
	public void setModel(TreeModel model)
	{
		// void gtk_entry_completion_set_model (GtkEntryCompletion *completion,  GtkTreeModel *model);
		gtk_entry_completion_set_model(gtkEntryCompletion, (model is null) ? null : model.getTreeModelStruct());
	}
	
	/**
	 * Returns the model the GtkEntryCompletion is using as data source.
	 * Returns NULL if the model is unset.
	 * completion:
	 *  A GtkEntryCompletion.
	 * Returns:
	 *  A GtkTreeModel, or NULL if none is currently being used.
	 * Since 2.4
	 */
	public TreeModel getModel()
	{
		// GtkTreeModel* gtk_entry_completion_get_model (GtkEntryCompletion *completion);
		return new TreeModel( gtk_entry_completion_get_model(gtkEntryCompletion) );
	}
	
	/**
	 * Sets the match function for completion to be func. The match function
	 * is used to determine if a row should or should not be in the completion
	 * list.
	 * completion:
	 *  A GtkEntryCompletion.
	 * func:
	 *  The GtkEntryCompletionMatchFunc to use.
	 * func_data:
	 *  The user data for func.
	 * func_notify:
	 *  Destroy notifier for func_data.
	 * Since 2.4
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
	 * completion:
	 *  A GtkEntryCompletion.
	 * length:
	 *  The minimum length of the key in order to start completing.
	 * Since 2.4
	 */
	public void setMinimumKeyLength(int length)
	{
		// void gtk_entry_completion_set_minimum_key_length  (GtkEntryCompletion *completion,  gint length);
		gtk_entry_completion_set_minimum_key_length(gtkEntryCompletion, length);
	}
	
	/**
	 * Returns the minimum key length as set for completion.
	 * completion:
	 *  A GtkEntryCompletion.
	 * Returns:
	 *  The currently used minimum key length.
	 * Since 2.4
	 */
	public int getMinimumKeyLength()
	{
		// gint gtk_entry_completion_get_minimum_key_length  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_minimum_key_length(gtkEntryCompletion);
	}
	
	/**
	 * Requests a completion operation, or in other words a refiltering of the
	 * current list with completions, using the current key. The completion list
	 * view will be updated accordingly.
	 * completion:
	 *  A GtkEntryCompletion.
	 * Since 2.4
	 */
	public void complete()
	{
		// void gtk_entry_completion_complete (GtkEntryCompletion *completion);
		gtk_entry_completion_complete(gtkEntryCompletion);
	}
	
	/**
	 * Requests a prefix insertion.
	 * completion:
	 *  a GtkEntryCompletion
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
	 * completion:
	 *  A GtkEntryCompletion.
	 * index_:
	 *  The index of the item to insert.
	 * text:
	 *  Text of the item to insert.
	 * Since 2.4
	 */
	public void insertActionText(int index, char[] text)
	{
		// void gtk_entry_completion_insert_action_text  (GtkEntryCompletion *completion,  gint index_,  const gchar *text);
		gtk_entry_completion_insert_action_text(gtkEntryCompletion, index, Str.toStringz(text));
	}
	
	/**
	 * Inserts an action in completion's action item list at position index_
	 * with markup markup.
	 * completion:
	 *  A GtkEntryCompletion.
	 * index_:
	 *  The index of the item to insert.
	 * markup:
	 *  Markup of the item to insert.
	 * Since 2.4
	 */
	public void insertActionMarkup(int index, char[] markup)
	{
		// void gtk_entry_completion_insert_action_markup  (GtkEntryCompletion *completion,  gint index_,  const gchar *markup);
		gtk_entry_completion_insert_action_markup(gtkEntryCompletion, index, Str.toStringz(markup));
	}
	
	/**
	 * Deletes the action at index_ from completion's action list.
	 * completion:
	 *  A GtkEntryCompletion.
	 * index_:
	 *  The index of the item to Delete.
	 * Since 2.4
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
	 * renderer, use g_object_set() to set the ::text_column property directly.
	 * completion:
	 *  A GtkEntryCompletion.
	 * column:
	 *  The column in the model of completion to get strings from.
	 * Since 2.4
	 */
	public void setTextColumn(int column)
	{
		// void gtk_entry_completion_set_text_column  (GtkEntryCompletion *completion,  gint column);
		gtk_entry_completion_set_text_column(gtkEntryCompletion, column);
	}
	
	/**
	 * Returns the column in the model of completion to get strings from.
	 * completion:
	 *  a GtkEntryCompletion
	 * Returns:
	 *  the column containing the strings
	 * Since 2.6
	 */
	public int getTextColumn()
	{
		// gint gtk_entry_completion_get_text_column  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_text_column(gtkEntryCompletion);
	}
	
	/**
	 * Sets whether the common prefix of the possible completions should
	 * be automatically inserted in the entry.
	 * completion:
	 *  a GtkEntryCompletion
	 * inline_completion:
	 *  TRUE to do inline completion
	 * Since 2.6
	 */
	public void setInlineCompletion(int inlineCompletion)
	{
		// void gtk_entry_completion_set_inline_completion  (GtkEntryCompletion *completion,  gboolean inline_completion);
		gtk_entry_completion_set_inline_completion(gtkEntryCompletion, inlineCompletion);
	}
	
	/**
	 * Returns whether the common prefix of the possible completions should
	 * be automatically inserted in the entry.
	 * completion:
	 *  a GtkEntryCompletion
	 * Returns:
	 *  TRUE if inline completion is turned on
	 * Since 2.6
	 */
	public int getInlineCompletion()
	{
		// gboolean gtk_entry_completion_get_inline_completion  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_inline_completion(gtkEntryCompletion);
	}
	
	/**
	 * Sets whether the completions should be presented in a popup window.
	 * completion:
	 *  a GtkEntryCompletion
	 * popup_completion:
	 *  TRUE to do popup completion
	 * Since 2.6
	 */
	public void setPopupCompletion(int popupCompletion)
	{
		// void gtk_entry_completion_set_popup_completion  (GtkEntryCompletion *completion,  gboolean popup_completion);
		gtk_entry_completion_set_popup_completion(gtkEntryCompletion, popupCompletion);
	}
	
	/**
	 * Returns whether the completions should be presented in a popup window.
	 * completion:
	 *  a GtkEntryCompletion
	 * Returns:
	 *  TRUE if popup completion is turned on
	 * Since 2.6
	 */
	public int getPopupCompletion()
	{
		// gboolean gtk_entry_completion_get_popup_completion  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_popup_completion(gtkEntryCompletion);
	}
	
	/**
	 * Sets whether the completion popup window will be resized to be the same
	 * width as the entry.
	 * completion:
	 *  a GtkEntryCompletion
	 * popup_set_width:
	 *  TRUE to make the width of the popup the same as the entry
	 * Since 2.8
	 */
	public void setPopupSetWidth(int popupSetWidth)
	{
		// void gtk_entry_completion_set_popup_set_width  (GtkEntryCompletion *completion,  gboolean popup_set_width);
		gtk_entry_completion_set_popup_set_width(gtkEntryCompletion, popupSetWidth);
	}
	
	/**
	 * Returns whether the completion popup window will be resized to the
	 * width of the entry.
	 * completion:
	 *  a GtkEntryCompletion
	 * Returns:
	 *  TRUE if the popup window will be resized to the width of
	 *  the entry
	 * Since 2.8
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
	 * completion:
	 *  a GtkEntryCompletion
	 * popup_single_match:
	 *  TRUE if the popup should appear even for a single
	 *  match
	 * Since 2.8
	 */
	public void setPopupSingleMatch(int popupSingleMatch)
	{
		// void gtk_entry_completion_set_popup_single_match  (GtkEntryCompletion *completion,  gboolean popup_single_match);
		gtk_entry_completion_set_popup_single_match(gtkEntryCompletion, popupSingleMatch);
	}
	
	/**
	 * Returns whether the completion popup window will appear even if there is
	 * only a single match.
	 * completion:
	 *  a GtkEntryCompletion
	 * Returns:
	 *  TRUE if the popup window will appear regardless of the
	 *  number of matches.
	 * Since 2.8
	 * Property Details
	 * The "inline-completion" property
	 *  "inline-completion" gboolean : Read / Write
	 * Determines whether the common prefix of the possible completions
	 * should be inserted automatically in the entry. Note that this
	 * requires text-column to be set, even if you are using a custom
	 * match function.
	 * Default value: FALSE
	 * Since 2.6
	 */
	public int getPopupSingleMatch()
	{
		// gboolean gtk_entry_completion_get_popup_single_match  (GtkEntryCompletion *completion);
		return gtk_entry_completion_get_popup_single_match(gtkEntryCompletion);
	}
	
	
	
	
	
	
	
	
}
