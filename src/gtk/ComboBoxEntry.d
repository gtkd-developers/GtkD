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
 * inFile  = GtkComboBoxEntry.html
 * outPack = gtk
 * outFile = ComboBoxEntry
 * strct   = GtkComboBoxEntry
 * realStrct=
 * ctorStrct=
 * clss    = ComboBoxEntry
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_combo_box_entry_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_combo_box_entry_new
 * 	- gtk_combo_box_entry_new_text
 * omit signals:
 * imports:
 * 	- gtk.TreeModelIF
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkTreeModel* -> TreeModelIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ComboBoxEntry;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import gtk.TreeModelIF;
private import gtk.Adjustment;



private import gtk.ComboBox;

/**
 * Description
 * A GtkComboBoxEntry is a widget that allows the user to choose from a
 * list of valid choices or enter a different value. It is very similar
 * to a GtkComboBox, but it displays the selected value in an entry to
 * allow modifying it.
 * In contrast to a GtkComboBox, the underlying model of a GtkComboBoxEntry
 * must always have a text column (see gtk_combo_box_entry_set_text_column()),
 * and the entry will show the content of the text column in the selected row.
 * To get the text from the entry, use gtk_combo_box_get_active_text().
 * The changed signal will be emitted while typing into a GtkComboBoxEntry,
 * as well as when selecting an item from the GtkComboBoxEntry's list. Use
 * gtk_combo_box_get_active() or gtk_combo_box_get_active_iter() to discover
 * whether an item was actually selected from the list.
 * Connect to the activate signal of the GtkEntry (use gtk_bin_get_child())
 * to detect when the user actually finishes entering text.
 * The convenience API to construct simple text-only GtkComboBoxes
 * can also be used with GtkComboBoxEntrys which have been constructed
 * with gtk_combo_box_entry_new_text().
 * If you have special needs that go beyond a simple entry (e.g. input validation),
 * it is possible to replace the child entry by a different widget using
 * gtk_container_remove() and gtk_container_add().
 * GtkComboBoxEntry as GtkBuildable
 * Beyond the <attributes> support that is shared by all
 * GtkCellLayout implementation,
 * GtkComboBoxEntry makes the entry available in UI definitions as an internal
 * child with name "entry".
 */
public class ComboBoxEntry : ComboBox
{
	
	/** the main Gtk struct */
	protected GtkComboBoxEntry* gtkComboBoxEntry;
	
	
	public GtkComboBoxEntry* getComboBoxEntryStruct()
	{
		return gtkComboBoxEntry;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkComboBoxEntry;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkComboBoxEntry* gtkComboBoxEntry)
	{
		if(gtkComboBoxEntry is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkComboBoxEntry passed to constructor.");
			else return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkComboBoxEntry);
		if( ptr !is null )
		{
			this = cast(ComboBoxEntry)ptr;
			return;
		}
		super(cast(GtkComboBox*)gtkComboBoxEntry);
		this.gtkComboBoxEntry = gtkComboBoxEntry;
	}
	
	/**
	 * Creates a new GtkComboBoxEntry which has a GtkEntry as child. After
	 * construction, you should set a model using gtk_combo_box_set_model() and a
	 * text_column * using gtk_combo_box_entry_set_text_column().
	 * Since 2.4
	 * Returns:
	 *  A new GtkComboBoxEntry.
	 */
	public this (bool text=true)
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
	 * Since 2.4
	 * Params:
	 * model =  A GtkTreeModel.
	 * textColumn =  A column in model to get the strings from.
	 */
	public this (TreeModelIF model, int textColumn)
	{
		// GtkWidget* gtk_combo_box_entry_new_with_model (GtkTreeModel *model,  gint text_column);
		auto p = gtk_combo_box_entry_new_with_model((model is null) ? null : model.getTreeModelTStruct(), textColumn);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkComboBoxEntry*) p);
	}
	
	/**
	 * Sets the model column which entry_box should use to get strings from
	 * to be text_column.
	 * Since 2.4
	 * Params:
	 * textColumn =  A column in model to get the strings from.
	 */
	public void setTextColumn(int textColumn)
	{
		// void gtk_combo_box_entry_set_text_column (GtkComboBoxEntry *entry_box,  gint text_column);
		gtk_combo_box_entry_set_text_column(gtkComboBoxEntry, textColumn);
	}
	
	/**
	 * Returns the column which entry_box is using to get the strings from.
	 * Since 2.4
	 * Returns: A column in the data source model of entry_box.
	 */
	public int getTextColumn()
	{
		// gint gtk_combo_box_entry_get_text_column (GtkComboBoxEntry *entry_box);
		return gtk_combo_box_entry_get_text_column(gtkComboBoxEntry);
	}
}
