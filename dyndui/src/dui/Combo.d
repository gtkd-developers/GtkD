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

module dui.Combo;

private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.Widget;
private import dui.HBox;
private import dui.Entry;
private import dui.ListG;
private import dui.SListG;
private import dui.List;
private import dui.ListItem;
private import dui.Entry;
private import lib.gtk;
private import dool.String;
/**
 * A combo box.
 */
public:
deprecated
class Combo : HBox
{
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Combo box AKA drop down box";}
		char[] author(){return "Antonio";}
	}
	
	unittest
	{
		printf("unittest combo\n");
	}
	
 	int test = 0;
	
	/** The entry of this combo */
	Entry entry;
	/** The list of this combo */
	List list;
 
    protected:
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }

	public:
	char [] toString()
	{
		return "Combo";
	}

	void dump()
	{
		GtkCombo* gtkCombo = cast(GtkCombo*)gtkW();

		super.dump();
		printf("\n\t### Combo ###\n");
		printf("\thbox %X\n",gtkCombo.hbox);

		printf("\t\thbox.box %X\n",gtkCombo.hbox.box);

		printf("\t\t\thbox.box.container %X\n",gtkCombo.hbox.box.container);
		printf("\t\t\thbox.box.children %X\n",gtkCombo.hbox.box.children);
		printf("\t\t\thbox.box.spacing %d\n",gtkCombo.hbox.box.spacing);
		printf("\t\t\thbox.box.homogeneous %d\n",gtkCombo.hbox.box.homogeneous);

		printf("\t*entry %X\n",gtkCombo.entry);
		printf("\t*button %X\n",gtkCombo.button);
		printf("\t*popup %X\n",gtkCombo.popup);
		printf("\t*popwin %X\n",gtkCombo.popwin);
		printf("\t*list %X\n",gtkCombo.list);
		printf("\tentry_change_id %d\n",gtkCombo.entry_change_id);
		printf("\tlist_change_id %X\n",gtkCombo.list_change_id);
		printf("\tvalue_in_list:1 %X\n",gtkCombo.value_in_list);
		//printf("\tok_if_empty:1 \n",gtkCombo.ok_if_empty);
		//printf("\tcase_sensitive:1 n",gtkCombo.case_sensitive);
		//printf("\tuse_arrows:1\n",gtkCombo.use_arrows);
		//printf("\tuse_arrows_always:1 n",gtkCombo.use_arrows);
		printf("\tcurrent_button %d\n",gtkCombo.current_button);
		printf("\tactivate_id %d\n",gtkCombo.activate_id);
	}

    /**
     * Creates a new empty combo box
     */
    public:
	this()
	{
		this(gtk_combo_new());
	}

	/**
	 * Creates a new combo box with a listener on the enter key
	 */
	this(void delegate() dlg)
	{
		this();
		disableActivate();
			
		getEntry().addOnActivate(dlg);
	}
	
	/**
	 * Adds a widget item to this combo.
	 * @param item the widget to add
	 */
	void addItem(Widget item)
	{
		getList().add(item);
	}
	
	/**
	 * Adds a widget item to this combo and sets the item string
	 * @param item the widget to add
	 * @param itemString the item string
	 */
	void addItem(Widget item, char [] itemString)
	{
		addItem(item, new String(itemString));
	}
	void addItem(Widget item, String itemString)
	{
		addItem(item);
		setItemString(item,itemString);
	}
	
	/**
	 * Gets this combo list
	 * @return the combo list
	 */
	List getList()
	{
		GtkCombo* gtkCombo = cast(GtkCombo*)gtkW();
	
		debug(events)
		{
			printf("Combo.getList combo %X, list %X\n",gtkCombo,gtkCombo.list);
			//printf("Combo.getList *list %X\n",*(gtkCombo.list));
		}
		
		if ( list === null )
		{
			list = new List(gtkCombo.list);
		}
		
		return list;
	}
	
	/**
	 * Sets this combo list.
	 * @param list the new combo list
	 */
	void setList(List list)
	{
		GtkCombo* gtkCombo = cast(GtkCombo*)gtkW();
		gtkCombo.list = list.gtkW();
	}
	
	/**
	 * Gets this combo entry
	 * @return the combo entry
	 */
	Entry getEntry()
	{
		if ( entry === null )
		{
			entry = new Entry((cast(GtkCombo*)gtkW()).entry);
		}
		return entry;
	}

	/**
	 * Gets the selected text of the combo box
	 * @return the selected text
	 */
	String getSelectedText()
	{
		return getEntry().getText();
	}
	
	/**
	 * Sets the seletect text of the combo box
	 * @param str 
	 */
	void setText(char[] str)
	{
		setText(new String(str));
	}
	void setText(String str)
	{
		getEntry().setText(str);
	}
	
	/**
	 * Sets the list of the combo box
	 * @param strings and array of strings
	 */
	void setStrings(char[][] strings)
	{
		String[] s;
		foreach(char[] cc ; strings)
		{
			s ~= new String(cc);
		}
		setStrings(s);
	}
	void setStrings(String[] strings)
	{
		ListG comboList = new ListG();
		for ( int s = 0 ; s<strings.length ; s++ )
		{
			comboList.append(strings[s]);
		}
		setStrings(comboList);
	}
	
	/**
	 * \todo pre/appendsString
	 * \bug crashes
	 */
	void appendString(String str)
	{
		//ListG listG = new ListG();
		//listG.append(str);
		//List comboList = getList();
		//comboList.appendItems(listG);
	}
	
	/**
	 * Sets the list of the combo box
	 * @param list the string list
	 */
	void setStrings(ListG list)
	{
		gtk_combo_set_popdown_strings(gtkW(),list.obj());
	}

	/**
	 * Sets the idem string to display on the entry widget of the combo box.
	 * @param item the item to which we want to set the string
	 * @param str the string to display for the item
	 */	 
	void setItemString(Widget item, char [] str)
	{
		setItemString(item, new String(str));
	}
	void setItemString(Widget item, String str)
	{
		gtk_combo_set_item_string (gtkW(), item.gtkW(),str.toStringz());
	}
	
	/**
	 * Set the use arrows flags
	 * @param use
	 */
	void useArrows(bit use)
	{
		gtk_combo_set_use_arrows(gtkW(),use);
	}
	
	/**
	 * Sets the user arrows always flags
	 * @param use 
	 */
	void useArrowsAlways(bit use)
	{
		gtk_combo_set_use_arrows_always(gtkW(),use);
	}
	
	/**
	 * Sets if the combo box is case sensitive
	 * @param sensitive
	 */
	void caseSensitive(bit sensitive)
	{
		gtk_combo_set_case_sensitive(gtkW(),sensitive);
	}
	
	/**
	 * Do not show the drop down list whe the enter key is pressed.
	 */
	void disableActivate()
	{
		gtk_combo_disable_activate (gtkW());
	}
	
}
