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
	GtkWidget*  gtk_combo_box_new_text();

	void        gtk_combo_box_append_text(GtkComboBox *combo_box, gchar *text);
	void        gtk_combo_box_insert_text(GtkComboBox *combo_box,gint position, gchar *text);
	void        gtk_combo_box_prepend_text(GtkComboBox *combo_box, gchar *text);
	void        gtk_combo_box_remove_text(GtkComboBox *combo_box,gint position);

}

/**
 * A combo box.
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
		super(gtk_combo_box_new_text());
	}

	void appendText(char[] text)
	{
		appendText(new String(text));
	}
	void appendText(String text)
	{
		gtk_combo_box_append_text(getCBB(), text.toStringz());
		++count;
		if ( maxCount >0 && count == maxCount+1 )
		{
			removeText(maxCount);
		}
	}
	void insertText(int position, char[] text)
	{
		insertText(position, new String(text));
	}
	void insertText(int position, String text)
	{
		gtk_combo_box_insert_text(getCBB(), position, text.toStringz());
		++count;
		if ( maxCount >0 && count == maxCount+1 )
		{
			removeText(maxCount);
		}
	}
	
	void prependText(char[] text)
	{
		prependText(new String(text));
	}
	void prependText(String text)
	{
		gtk_combo_box_prepend_text(getCBB(), text.toStringz());
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

	
	void removeText(int position)
	{
		gtk_combo_box_remove_text(getCBB(),position);
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
		String text = new String();
		TreeIter iter = new TreeIter();
		
		if ( getActiveIter(iter) )
		{
			text.set(iter.getValueString(0));
		}
		return text;
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
