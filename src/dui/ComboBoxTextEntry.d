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

public:
class ComboBoxTextEntry : ComboBoxText
{
	
	private import dui.Entry;
	private import dool.String;
	Entry entry;
	
    public:
	/**
	 * Create a ComboBox from a Gtk combo box
	 * @param *gtkWidget 
	 * @return 
	 */
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }

	this()
	{
		super(gtk_combo_box_entry_new_text());
	}

	void setTextColumn(int textColumn)
	{
		gtk_combo_box_entry_set_text_column(cast(GtkComboBoxEntry*)getCBB(),textColumn);
	}
	
	gint get_text_column()
	{
		return gtk_combo_box_entry_get_text_column(cast(GtkComboBoxEntry*)getCBB());
	}

	Entry getEntry()
	{
		if ( entry === null )
		{
			entry = new Entry(getChild().gtkW());
		}
		return entry;
	}
	
	String getText()
	{
		return getEntry().getText();
	}
	
	void prependOrReplaceText(String text)
	{
		super.prependOrReplaceText(text);
		getEntry().setText(text);
	}


	

}



