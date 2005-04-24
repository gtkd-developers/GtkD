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


module dui.ComboBoxTextEntry;

private import dui.ComboBoxText;

private import def.Types;
private import def.Constants;
private import dui.TreeModel;
private:

extern(C)
{
	struct      GtkComboBoxEntry;
	
	GtkWidget*  gtk_combo_box_entry_new         ();
	GtkWidget*  gtk_combo_box_entry_new_with_model(GtkTreeModel *model,gint text_column);
	GtkWidget*  gtk_combo_box_entry_new_text    ();
	void        gtk_combo_box_entry_set_text_column(GtkComboBoxEntry *entry_box,gint text_column);
	gint        gtk_combo_box_entry_get_text_column(GtkComboBoxEntry *entry_box);

	
}

/**
 * A GtkComboBoxEntry is a widget that allows the user to choose from a list of
 * valid choices or enter a different value. It is very similar to a GtkComboBox,
 * but it displays the selected value in an entry to allow modifying it. In
 * contrast to a GtkComboBox, the underlying model of a GtkComboBoxEntry must
 * always have a text column (see gtk_combo_box_entry_set_text_column()), and the
 * entry will show the content of the text column in the selected row. The
 * convenience API to construct simple text-only GtkComboBoxes can also be used
 * with GtkComboBoxEntrys which have been constructed with
 * gtk_combo_box_entry_new_text().
 */
public:
class ComboBoxTextEntry : ComboBoxText
{
	
	private import dui.Entry;
	
	private import dool.String;
	
	
	
	Entry entry;
	

	protected:

	GtkComboBoxEntry* gtkComboBoxEntry;

	public:

	/**
	 * Creates a ComboBox from a GtkComboBox
	 * @param *gtkWidget the gtk struct address pointer
	 * @return 
	 */
    this(GtkComboBoxEntry *gtkComboBoxEntry)
    {
        super(cast(GtkComboBoxText*)gtkComboBoxEntry);
		this.gtkComboBoxEntry = gtkComboBoxEntry;
    }


	/**
	 * Creates a new GtkComboBoxEntry which has a GtkEntry as child. After construction, you should set a model using
	 * gtk_combo_box_set_model() and a text_column * using gtk_combo_box_entry_set_text_column().
	 * @return A new GtkComboBoxEntry.
	 */
	this()
	{
		this(cast(GtkComboBoxEntry*)gtk_combo_box_entry_new());
	}


	/**
	 * Creates a new GtkComboBoxEntry which has a GtkEntry as child and a list of strings as popup. You can get the
	 * GtkEntry from a GtkComboBoxEntry using GTK_ENTRY (GTK_BIN (combo_box_entry)->child). To add and remove
	 * strings from the list, just modify model using its data manipulation API.
	 * @param model\ufffd A GtkTreeModel.
	 * @param text_column\ufffd A column in model to get the strings from.
	 * @return A new GtkComboBoxEntry.
	 */
	this(TreeModel model, gint text_column)
	{
		this(cast(GtkComboBoxEntry*)gtk_combo_box_entry_new_with_model(model.obj(), text_column));
	}


	/**
	 * Convenience function which constructs a new editable text combo box, which is a GtkComboBoxEntry just
	 * displaying strings. If you use this function to create a text combo box, you should only manipulate its
	 * data source with the following convenience functions: gtk_combo_box_append_text(),
	 * gtk_combo_box_insert_text(), gtk_combo_box_prepend_text() and gtk_combo_box_remove_text().
	 * @return A new text GtkComboBoxEntry.
	 */
	ComboBoxTextEntry createComboBoxTextEntry()
	{
		ComboBoxTextEntry cbte = new ComboBoxTextEntry(cast(GtkComboBoxEntry*)gtk_combo_box_entry_new_text());
		return cbte;
	}

	/**
	 * Sets the model column which entry box should use to get strings from to be
	 * textColumn.
	 * @param entry_box A GtkComboBoxEntry.
	 * @param text_column A column in model to get the strings from.
	 * @since 2.4.
	 */
	void setTextColumn(int textColumn)
	{
		gtk_combo_box_entry_set_text_column(gtkComboBoxEntry,textColumn);
	}
	
	/**
	 * Returns the column which entry_box is using to get the strings from.
	 * @param entry_box A GtkComboBoxEntry.
	 * @return A column in the data source model of entry_box.
	 * @since 2.4
	 */
	gint getTextColumn()
	{
		return gtk_combo_box_entry_get_text_column(gtkComboBoxEntry);
	}

	
	/**
	 * Gets the Entry widget associated with this combo box
	 * @return The Entry widget of this combo box
	 */
	Entry getEntry()
	{
		if ( entry === null )
		{
			entry = new Entry(getChild().gtkW());
		}
		return entry;
	}
	
	/**
	 * Gets the active text of this combo box
	 * @return A String with this combo box active text
	 */
	String getText()
	{
		return getEntry().getText();
	}

	/**
	 * Prepends a new entry and removes any repetition already existent on the list
	 * @param text the String to prepend
	 */
	void prependOrReplaceText(String text)
	{
		super.prependOrReplaceText(text);
		getEntry().setText(text);
	}
	
}


/+
gtk_combo_box_entry_new ()

GtkWidget*  gtk_combo_box_entry_new         (void);

Creates a new GtkComboBoxEntry which has a GtkEntry as child. After construction, you should set a model using gtk_combo_box_set_model() and a text_column * using gtk_combo_box_entry_set_text_column().

Returns\ufffd:	A new GtkComboBoxEntry.

Since 2.4
gtk_combo_box_entry_new_with_model ()

GtkWidget*  gtk_combo_box_entry_new_with_model
                                            (GtkTreeModel *model,
                                             gint text_column);

Creates a new GtkComboBoxEntry which has a GtkEntry as child and a list of strings as popup. You can get the GtkEntry from a GtkComboBoxEntry using GTK_ENTRY (GTK_BIN (combo_box_entry)->child). To add and remove strings from the list, just modify model using its data manipulation API.

model\ufffd:	A GtkTreeModel.
text_column\ufffd:	A column in model to get the strings from.
Returns\ufffd:	A new GtkComboBoxEntry.

Since 2.4
gtk_combo_box_entry_new_text ()

GtkWidget*  gtk_combo_box_entry_new_text    (void);

Convenience function which constructs a new editable text combo box, which is a GtkComboBoxEntry just displaying strings. If you use this function to create a text combo box, you should only manipulate its data source with the following convenience functions: gtk_combo_box_append_text(), gtk_combo_box_insert_text(), gtk_combo_box_prepend_text() and gtk_combo_box_remove_text().

Returns\ufffd:	A new text GtkComboBoxEntry.

Since 2.4
gtk_combo_box_entry_set_text_column ()

void        gtk_combo_box_entry_set_text_column
                                            (GtkComboBoxEntry *entry_box,
                                             gint text_column);

Sets the model column which entry_box should use to get strings from to be text_column.

entry_box\ufffd:	A GtkComboBoxEntry.
text_column\ufffd:	A column in model to get the strings from.

Since 2.4.
gtk_combo_box_entry_get_text_column ()

gint        gtk_combo_box_entry_get_text_column
                                            (GtkComboBoxEntry *entry_box);

Returns the column which entry_box is using to get the strings from.

entry_box\ufffd:	A GtkComboBoxEntry.
Returns\ufffd:	A column in the data source model of entry_box.

Since 2.4

+/



