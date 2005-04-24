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


module dui.ComboBoxText;

version(GTK240):

private import dui.ComboBox;

private import def.Types;
private import def.Constants;

private:
extern (C)
{
	
	alias GtkComboBox GtkComboBoxText;
	
	GtkWidget*  gtk_combo_box_new_text          ();

	void        gtk_combo_box_append_text       (GtkComboBox *combo_box,  gchar *text);
	void        gtk_combo_box_insert_text       (GtkComboBox *combo_box,gint position,  gchar *text);
	void        gtk_combo_box_prepend_text      (GtkComboBox *combo_box,  gchar *text);
	void        gtk_combo_box_remove_text       (GtkComboBox *combo_box,gint position);
	gchar*      gtk_combo_box_get_active_text   (GtkComboBox *combo_box);

	

}

/**
 * A GtkComboBoxText is a widget that allows the user to choose from a list of
 * valid choices. GtkComboBoxText offers a simple API which is suitable for
 * text-only combo boxes, and hides the complexity of managing the data in a
 * model. It consists of the functions gtk_combo_box_new_text(),
 * gtk_combo_box_append_text(), gtk_combo_box_insert_text(),
 * gtk_combo_box_prepend_text(), gtk_combo_box_remove_text() and
 * gtk_combo_box_get_active_text(). The full combobox api is implemented on the
 * super class ComboBox. Gtk doesn't have this type is all mixed up in the
 * ComboBox class.
 */
public:
class ComboBoxText : ComboBox
{
	
	private import std.stdio;
	
	private import dui.TreeIter;
	private import dui.TreeModel;

	private import dool.String;
	
	private int count = 0;
	public int maxCount = 0;
	
	protected:

	GtkComboBoxText* gtkComboBoxText;

	public:

	/**
	 * Creates a ComboBox from a GtkComboBox
	 * @param *gtkWidget the gtk struct address pointer
	 * @return 
	 */
    this(GtkComboBoxText *gtkComboBoxText)
    {
        super(cast(GtkComboBox*)gtkComboBoxText);
		this.gtkComboBoxText = gtkComboBoxText;
    }


	/**
	 * Convenience function which constructs a new text combo box, which is a GtkComboBox just displaying strings. If
	 * you use this function to create a text combo box, you should only manipulate its data source with the
	 * following convenience functions: gtk_combo_box_append_text(), gtk_combo_box_insert_text(),
	 * gtk_combo_box_prepend_text() and gtk_combo_box_remove_text().
	 * @return A new text combo box.
	 */
	this()
	{
		this(cast(GtkComboBoxText*)gtk_combo_box_new_text());
	}

	/**
	 * Appends string to the list of strings stored in combo_box. Note that you can only use this function with combo
	 * boxes constructed with gtk_combo_box_new_text().
	 * @param combo_box\ufffd A GtkComboBox constructed using gtk_combo_box_new_text().
	 * @param text\ufffd A string.
	 */
	void appendText(char[] text)
	{
		appendText(new String(text));
	}
	/**
	 * Appends string to the list of strings stored in combo_box. Note that you can only use this function with combo
	 * boxes constructed with gtk_combo_box_new_text().
	 * @param combo_box\ufffd A GtkComboBox constructed using gtk_combo_box_new_text().
	 * @param text\ufffd A string.
	 */
	void appendText(String text)
	{
		gtk_combo_box_append_text(gtkComboBoxText, text.toStringz());
		++count;
		if ( maxCount >0 && count == maxCount+1 )
		{
			removeText(maxCount);
		}
	}

	/**
	 * Inserts string at position in the list of strings stored in combo_box. Note that you can only use this
	 * function with combo boxes constructed with gtk_combo_box_new_text().
	 * @param combo_box\ufffd A GtkComboBox constructed using gtk_combo_box_new_text().
	 * @param position\ufffd An index to insert text.
	 * @param text\ufffd A string.
	 */
	void insertText(int position, char[] text)
	{
		insertText(position, new String(text));
	}

	/**
	 * Inserts string at position in the list of strings stored in combo_box. Note that you can only use this
	 * function with combo boxes constructed with gtk_combo_box_new_text().
	 * @param combo_box\ufffd A GtkComboBox constructed using gtk_combo_box_new_text().
	 * @param position\ufffd An index to insert text.
	 * @param text\ufffd A string.
	 */
	void insertText(int position, String text)
	{
		gtk_combo_box_insert_text(gtkComboBoxText, position, text.toStringz());
		++count;
		if ( maxCount >0 && count == maxCount+1 )
		{
			removeText(maxCount);
		}
	}
	
	/**
	 * Prepends string to the list of strings stored in combo_box. Note that you can only use this function with
	 * combo boxes constructed with gtk_combo_box_new_text().
	 * @param combo_box\ufffd A GtkComboBox constructed with gtk_combo_box_new_text().
	 * @param text\ufffd A string.
	 */
	void prependText(char[] text)
	{
		prependText(new String(text));
	}

	/**
	 * Prepends string to the list of strings stored in combo_box. Note that you can only use this function with
	 * combo boxes constructed with gtk_combo_box_new_text().
	 * @param combo_box\ufffd A GtkComboBox constructed with gtk_combo_box_new_text().
	 * @param text\ufffd A string.
	 */
	void prependText(String text)
	{
		gtk_combo_box_prepend_text(gtkComboBoxText, text.toStringz());
		++count;
		if ( maxCount >0 && count == maxCount+1 )
		{
			removeText(maxCount);
		}
	}

	void prependOrReplaceText(char[] text)
	{
		prependOrReplaceText(new String(text));
	}
	void prependOrReplaceText(String text)
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
	 * Removes the string at position from combo_box. Note that you can only use this function with combo boxes
	 * constructed with gtk_combo_box_new_text().
	 * @param combo_box\ufffd A GtkComboBox constructed with gtk_combo_box_new_text().
	 * @param position\ufffd Index of the item to remove.
	 */
	void removeText(int position)
	{
		gtk_combo_box_remove_text(gtkComboBoxText,position);
		--count;
	}
	
	void removeText(char[] text)
	{
		removeText(new String(text));
	}
	
	void removeText(String text)
	{
		int index = getIndex(text);
		if ( index >= 0)
		{
			removeText(index);
		}
	}

	String getText()
	{
		return getActiveText();
	}
	
	/**
	 * Returns the currently active string in combo_box or NULL if none is selected. Note that you can only use this
	 * function with combo boxes constructed with gtk_combo_box_new_text().
	 * @param combo_box\ufffd A GtkComboBox constructed with gtk_combo_box_new_text().
	 * @return a newly allocated string containing the currently active text.
	 */
	String getActiveText()
	{
		return new String(gtk_combo_box_get_active_text(gtkComboBox));
	}

	int getIndex(char[] text)
	{
		return getIndex(new String(text));
	}
	int getIndex(String text)
	{
		TreeIter iter = new TreeIter();
		TreeModel model = getModel();
		int index = 0;
		bit found = false;
		bit end = false;
		if ( model.getIterFirst(iter) )
		{
			while ( !end && iter !== null && !found )
			{
				found = iter.getValueString(0).equals(text);
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
	
	/**
	 * \todo remove this when the compiler don't get confused with out it
	 */
	void setActive(int index)
	{
		super.setActive(index);
	}
	
	bit setActive(char[] text)
	{
		return setActive(new String(text));
	}
	bit setActive(String text)
	{
		TreeIter iter = new TreeIter();
		TreeModel model = getModel();
		bit found = false;
		bit end = false;
		if ( model.getIterFirst(iter) )
		{
			int index = 0;
			while ( !end && iter !== null && !found )
			{
				iter.setModel(model);
				writefln("try active %s == %s",text, iter.getValueString(0));
				if ( iter.getValueString(0) == text )
				{
					//setActiveIter(iter);
					setActive(index);
					found = true;
				}
				end = !model.iterNext(iter);
				++index;
			}
		}
		return found;
	}
	
	void clear()
	{
		TreeIter iter = new TreeIter();
		TreeModel model = getModel();
		while ( model.getIterFirst(iter) )
		{
			removeText(0);
		}
	}
}

/+
gtk_combo_box_new_text ()

GtkWidget*  gtk_combo_box_new_text          (void);

Convenience function which constructs a new text combo box, which is a GtkComboBox just displaying strings. If you use this function to create a text combo box, you should only manipulate its data source with the following convenience functions: gtk_combo_box_append_text(), gtk_combo_box_insert_text(), gtk_combo_box_prepend_text() and gtk_combo_box_remove_text().

Returns\ufffd:	A new text combo box.

Since 2.4
gtk_combo_box_append_text ()

void        gtk_combo_box_append_text       (GtkComboBox *combo_box,
                                             const gchar *text);

Appends string to the list of strings stored in combo_box. Note that you can only use this function with combo boxes constructed with gtk_combo_box_new_text().

combo_box\ufffd:	A GtkComboBox constructed using gtk_combo_box_new_text().
text\ufffd:	A string.

Since 2.4
gtk_combo_box_insert_text ()

void        gtk_combo_box_insert_text       (GtkComboBox *combo_box,
                                             gint position,
                                             const gchar *text);

Inserts string at position in the list of strings stored in combo_box. Note that you can only use this function with combo boxes constructed with gtk_combo_box_new_text().

combo_box\ufffd:	A GtkComboBox constructed using gtk_combo_box_new_text().
position\ufffd:	An index to insert text.
text\ufffd:	A string.

Since 2.4
gtk_combo_box_prepend_text ()

void        gtk_combo_box_prepend_text      (GtkComboBox *combo_box,
                                             const gchar *text);

Prepends string to the list of strings stored in combo_box. Note that you can only use this function with combo boxes constructed with gtk_combo_box_new_text().

combo_box\ufffd:	A GtkComboBox constructed with gtk_combo_box_new_text().
text\ufffd:	A string.

Since 2.4
gtk_combo_box_remove_text ()

void        gtk_combo_box_remove_text       (GtkComboBox *combo_box,
                                             gint position);

Removes the string at position from combo_box. Note that you can only use this function with combo boxes constructed with gtk_combo_box_new_text().

combo_box\ufffd:	A GtkComboBox constructed with gtk_combo_box_new_text().
position\ufffd:	Index of the item to remove.

Since 2.4
gtk_combo_box_get_active_text ()

gchar*      gtk_combo_box_get_active_text   (GtkComboBox *combo_box);

Returns the currently active string in combo_box or NULL if none is selected. Note that you can only use this function with combo boxes constructed with gtk_combo_box_new_text().

combo_box\ufffd:	A GtkComboBox constructed with gtk_combo_box_new_text().
Returns\ufffd:	a newly allocated string containing the currently active text.

Since 2.6

+/


