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
 * outFile = ComboBoxEntry
 * strct   = GtkComboBoxEntry
 * clss    = ComboBoxEntry
 * prefixes:
 * 	- gtk_combo_box_entry_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_combo_box_entry_new
 * 	- gtk_combo_box_entry_new_text
 * imports:
 * 	- gtk.TreeModel
 * structWrap:
 * 	- GtkTreeModel* -> TreeModel
 * local aliases:
 */

module gtk.ComboBoxEntry;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.TreeModel;
/**
 * Description
 * A GtkComboBoxEntry is a widget that allows the user to choose from a
 * list of valid choices or enter a different value. It is very similar
 * to a GtkComboBox, but it displays the selected value in an entry to
 * allow modifying it.
 * In contrast to a GtkComboBox, the underlying model of a GtkComboBoxEntry
 * must always have a text column (see gtk_combo_box_entry_set_text_column()),
 * and the entry will show the content of the text column in the selected row. To
 * get the text from the entry, use gtk_combo_box_get_active_text().
 * The convenience API to construct simple text-only GtkComboBoxes can
 * also be used with GtkComboBoxEntrys which have been constructed
 * with gtk_combo_box_entry_new_text().
 */
private import gtk.ComboBox;
public class ComboBoxEntry : ComboBox
{
	
	/** the main Gtk struct */
	protected GtkComboBoxEntry* gtkComboBoxEntry;
	
	
	public GtkComboBoxEntry* getComboBoxEntryStruct()
	{
		return gtkComboBoxEntry;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkComboBoxEntry;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkComboBoxEntry* gtkComboBoxEntry)
	{
		super(cast(GtkComboBox*)gtkComboBoxEntry);
		this.gtkComboBoxEntry = gtkComboBoxEntry;
	}
	
	/**
	 * Creates a new GtkComboBoxEntry which has a GtkEntry as child. After
	 * construction, you should set a model using gtk_combo_box_set_model() and a
	 * text_column * using gtk_combo_box_entry_set_text_column().
	 * Returns:
	 *  A new GtkComboBoxEntry.
	 * Since 2.4
	 */
	public this (bit text=true)
	{
		if ( text )
		{
			// GtkWidget* gtk_combo_box_entry_new_text (void);
			this(cast(GtkComboBoxEntry*)gtk_combo_box_entry_new_text() );
		}
		else
		{
			// GtkWidget* gtk_combo_box_entry_new (void);
			this(cast(GtkComboBoxEntry*)gtk_combo_box_entry_new() );
		}
		
	}
	
	/**
	 */
	
	
	
	/**
	 * Creates a new GtkComboBoxEntry which has a GtkEntry as child and a list
	 * of strings as popup. You can get the GtkEntry from a GtkComboBoxEntry
	 * using GTK_ENTRY (GTK_BIN (combo_box_entry)->child). To add and remove
	 * strings from the list, just modify model using its data manipulation
	 * API.
	 * model:
	 *  A GtkTreeModel.
	 * text_column:
	 *  A column in model to get the strings from.
	 * Returns:
	 *  A new GtkComboBoxEntry.
	 * Since 2.4
	 */
	public this (TreeModel model, int textColumn)
	{
		// GtkWidget* gtk_combo_box_entry_new_with_model  (GtkTreeModel *model,  gint text_column);
		this(cast(GtkComboBoxEntry*)gtk_combo_box_entry_new_with_model(model.getTreeModelStruct(), textColumn) );
	}
	
	
	/**
	 * Sets the model column which entry_box should use to get strings from
	 * to be text_column.
	 * entry_box:
	 *  A GtkComboBoxEntry.
	 * text_column:
	 *  A column in model to get the strings from.
	 * Since 2.4.
	 */
	public void setTextColumn(int textColumn)
	{
		// void gtk_combo_box_entry_set_text_column  (GtkComboBoxEntry *entry_box,  gint text_column);
		gtk_combo_box_entry_set_text_column(gtkComboBoxEntry, textColumn);
	}
	
	/**
	 * Returns the column which entry_box is using to get the strings from.
	 * entry_box:
	 *  A GtkComboBoxEntry.
	 * Returns:
	 *  A column in the data source model of entry_box.
	 * Since 2.4
	 * Property Details
	 * The "text-column" property
	 *  "text-column" gint : Read / Write
	 * A column in the data source model to get the strings from.
	 * Allowed values: >= -1
	 * Default value: -1
	 * See Also
	 * GtkComboBox
	 */
	public int getTextColumn()
	{
		// gint gtk_combo_box_entry_get_text_column  (GtkComboBoxEntry *entry_box);
		return gtk_combo_box_entry_get_text_column(gtkComboBoxEntry);
	}
}
