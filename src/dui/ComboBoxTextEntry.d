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

private:

extern(C)
{
	struct      GtkComboBoxEntry;
	GtkWidget*  gtk_combo_box_entry_new();
	//GtkWidget*  gtk_combo_box_entry_new_with_model(GtkTreeModel *model,gint text_column);
	GtkWidget*  gtk_combo_box_entry_new_text();
	void        gtk_combo_box_entry_set_text_column(GtkComboBoxEntry *entry_box,gint text_column);
	gint        gtk_combo_box_entry_get_text_column(GtkComboBoxEntry *entry_box);
}

/**
 * A text entry field with a dropdown list
 */
public:
class ComboBoxTextEntry : ComboBoxText
{
	
	private import dui.Entry;
	private import dool.String;
	Entry entry;
	
    public:
	/**
	 * Create a ComboBox from a Gtk combo box
	 * @param gtkWidget the gtk widget
	 */
	this(GtkWidget* gtkWidget)
	{
		super(gtkWidget);
	}

	/**
	 * Creates a new ComboBoxTextEntry
	 */
	this()
	{
		super(gtk_combo_box_entry_new_text());
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
		gtk_combo_box_entry_set_text_column(cast(GtkComboBoxEntry*)getCBB(),textColumn);
	}
	
	/**
	 * Returns the column which entry_box is using to get the strings from.
	 * @param entry_box A GtkComboBoxEntry.
	 * @return A column in the data source model of entry_box.
	 * @since 2.4
	 */
	gint getTextColumn()
	{
		return gtk_combo_box_entry_get_text_column(cast(GtkComboBoxEntry*)getCBB());
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



