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

module dui.FileSelection;

private import def.Types;
private import def.Constants;
private import dui.Utils;

private import dui.Widget;
private import dui.Dialog;
private import lib.gtk;
private import dool.String;

/**
 * A standard file selector dialog
 */
public:
class FileSelection : Dialog
{
	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A standard file selector dialog";}
		char[] author(){return "Antonio";}
	}
	

	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Gets this class type
	 */
	static GType getType()
	{
		return gtk_file_selection_get_type();
	}
	
	/**
	 * Creates a new File selection dialog
	 */
	this(char[] title)
	{
		this(new String(title));
	}
	this(String title)
	{
		this(gtk_file_selection_new(title.toStringz()));
	}
	
	/**
	 * Sets the default file selected
	 */
	void setFileName(char[] filename)
	{
		setFileName(new String(filename));
	}
	void setFileName(String filename)
	{
		gtk_file_selection_set_filename(cast(GtkFileSelection*)gtkW(), filename.toStringz());
	}

	/** This function returns the selected filename in the C runtime's
	 * multibyte string encoding, which may or may not be the same as that
	 * used by GDK (UTF-8). To convert to UTF-8, call g_filename_to_utf8().
	 * The returned string points to a statically allocated buffer and
	 * should be copied away.
	 */
	String getFileName()
	{
		return String.newz(gtk_file_selection_get_filename(cast(GtkFileSelection*)gtkW()));
	}

	/**
	 * Sets a pattern of the files to show
	 */
	void complete(char[] pattern)
	{
		complete(new String(pattern));
	}
	void complete(String pattern)
	{
		gtk_file_selection_complete(cast(GtkFileSelection*)gtkW(), pattern.toStringz());
	}
	
	/**
	 * Shows common action buttons(create dir...)
	 */
	void showButtons()
	{
		gtk_file_selection_show_fileop_buttons(cast(GtkFileSelection*)gtkW());
	}
	
	/**
	 * Hides common action buttons(create dir...)
	 */
	void hideButtons()
	{
		gtk_file_selection_hide_fileop_buttons(cast(GtkFileSelection*)gtkW());
	}

	/**
	 * Gets all the selected file names
	 * @return an array of chars with all the selected file names
	 */
	String[] getSelections()
	{
		char ** sels = gtk_file_selection_get_selections(cast(GtkFileSelection*)gtkW());
		int i =0;
		char * str = sels[i];
		String[] selections;
		printf("address of selections = %X\n",selections);
		while ( str !is  null )
		{
			printf("str[%d] = %s\n",i,str);
			selections ~= new String(str);
			str = sels[++i];
		}
		return selections;
	}
	//gchar * * gtk_file_selection_get_selections(gtkW());

	/**
	 * Set if multiple selection are allowed
	 * @param select_multiple if true multiple selections will be allowed
	 */
	void setMultiple(bit select_multiple)
	{
		gtk_file_selection_set_select_multiple(cast(GtkFileSelection*)gtkW(), select_multiple);
	}
	
	/**
	 * Checks mutiple selectetion are allowed
	 * @return true id multiple selections are allowd
	 */
	bit getMultiple()
	{
		return gtk_file_selection_get_select_multiple(cast(GtkFileSelection*)gtkW())==0?false:true;
	}


}
