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

module dui.Entry;

private import def.Types;
private import dui.Utils;
private import dui.ObjectG;
private import dui.Widget;
private import dui.Editable;

alias GtkWidget GtkEntry;

private: // editable
extern (C) void gtk_editable_select_region(GtkEditable * editable, gint start, gint end);
extern (C) gboolean gtk_editable_get_selection_bounds(GtkEditable * editable, gint * start, gint * end);
extern (C) void gtk_editable_insert_text(GtkEditable * editable, gchar * new_text, gint new_text_length, gint * position);
extern (C) void gtk_editable_delete_text(GtkEditable * editable, gint start_pos, gint end_pos);
extern (C) gchar * gtk_editable_get_chars(GtkEditable * editable, gint start_pos, gint end_pos);
extern (C) void gtk_editable_cut_clipboard(GtkEditable * editable);
extern (C) void gtk_editable_copy_clipboard(GtkEditable * editable);
extern (C) void gtk_editable_paste_clipboard(GtkEditable * editable);
extern (C) void gtk_editable_delete_selection(GtkEditable * editable);
extern (C) void gtk_editable_set_position(GtkEditable * editable, gint position);
extern (C) gint gtk_editable_get_position(GtkEditable * editable);
extern (C) void gtk_editable_set_editable(GtkEditable * editable, gboolean is_editable);
extern (C) gboolean gtk_editable_get_editable(GtkEditable * editable);


private:

extern (C) GtkWidget * gtk_entry_new();
extern (C) void gtk_entry_set_visibility(GtkEntry * entry, gboolean visible);
extern (C) gboolean gtk_entry_get_visibility(GtkEntry * entry);
extern (C) void gtk_entry_set_invisible_char(GtkEntry * entry, gunichar ch);
extern (C) gunichar gtk_entry_get_invisible_char(GtkEntry * entry);
extern (C) void gtk_entry_set_has_frame(GtkEntry * entry, gboolean setting);
extern (C) gboolean gtk_entry_get_has_frame(GtkEntry * entry);
/* text is truncated if needed */
extern (C) void gtk_entry_set_max_length(GtkEntry * entry, gint max);
extern (C) gint gtk_entry_get_max_length(GtkEntry * entry);
extern (C) void gtk_entry_set_activates_default(GtkEntry * entry, gboolean setting);
extern (C) gboolean gtk_entry_get_activates_default(GtkEntry * entry);
extern (C) void gtk_entry_set_width_chars(GtkEntry * entry, gint n_chars);
extern (C) gint gtk_entry_get_width_chars(GtkEntry * entry);
/* Somewhat more convenient than the GtkEditable generic functions */
extern (C) void gtk_entry_set_text(GtkEntry * entry, gchar * text);
/* returns a reference to the text */
extern (C) gchar * gtk_entry_get_text(GtkEntry * entry);

extern (C) PangoLayout * gtk_entry_get_layout(GtkEntry * entry);
extern (C) void gtk_entry_get_layout_offsets(GtkEntry * entry, gint * x, gint * y);


/**
 * A single line text entry widget
 */
public:
class Entry : Widget , Editable
{

	private import def.Constants;
	private import event.Event;
	private import event.EventHandler;
	private import dool.String;
	
	debug(status)
	{
		int complete(){return ST_ALMOST;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A single line text entry widget";}
		char[] author(){return "Antonio";}
	}
	

	protected:
	
	alias EventHandler0!(Entry) OnActivate;
	alias EventHandler0!(Entry) OnChanged;
	alias EventHandler0!(Entry) OnDeleteText;
	alias EventHandler0!(Entry) OnInsertText;
	
	OnActivate onActivate;
	OnChanged onChanged;
	OnDeleteText onDeleteText;
	OnInsertText onInsertText;
	
	public this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	void addOnActivate(void delegate() dlg)
	{
		if ( onActivate === null )
		{
			onActivate = new OnActivate(this, EventMask.NONE,new String("activate"));
		}
		onActivate += dlg;
	}
	
	void addOnChanged(void delegate() dlg)
	{
		if ( onChanged === null )
		{
			onChanged = new OnChanged(this, EventMask.NONE,new String("changed"));
		}
		onChanged += dlg;
	}
	
	void addOnDeleteText(void delegate() dlg)
	{
		if ( onDeleteText === null )
		{
			onDeleteText = new OnDeleteText(this, EventMask.NONE,new String("delete-text"));
		}
		onDeleteText += dlg;
	}
	
	void addOnInsertText(void delegate() dlg)
	{
		if ( onInsertText === null )
		{
			onInsertText = new OnInsertText(this, EventMask.NONE,new String("insert-text"));
		}
		onInsertText += dlg;
	}
	
	/**
	 * Creates a new entry
	 */
	this()
	{
		this(gtk_entry_new());
	}

	/**
	 * Creates a new entry and set it's text
	 * @param text the initial text
	 */
	this(char[] text)
	{
		this(new String(text));
	}
	this(String text)
	{
		this(text, null);
	}

	/**
	 * Creates a new entry and set it's text to empty and add a listener delegate
	 * @param dlg the listener delegate
	 */
	this(void delegate() dlg)
	{
		this(cast(String)null, dlg);
	}

	/**
	 * Creates a new Entry with a initial text and and OnActivate listener.
	 * @param text the initial text
	 * @param dlg the listener delegate
	 */
	this(char[] text, void delegate() dlg)
	{
		this(new String(text), dlg);
	}
	this(String text, void delegate() dlg)
	{
		this();
		if ( text !== null )
		{
			setText(text);
		}
		if ( dlg !== null )
		{
			addOnActivate(dlg);
		}
	}
	
	void setData(String key, gpointer data)
	{
		super.setData(key,data);
	}
	
	//static ObjectG getObjectG(void * gtkwidget);


	/**
	 * Setst the text
	 * @param text the text
	 */
	void setText(char[] text)
	{
		setText(new String(text));
	}
	void setText(String text)
	{
		gtk_entry_set_text(gtkW(), text.toStringz());
	}

	/**
	 * Gets the text from the entry widget
	 * @return the text
	 */
	String getText()
	{
		return String.newz(gtk_entry_get_text(gtkW()));
	}

	/**
	 * Sets the visibility mode
	 * @param visible the new visibility mode
	 */
	void setVisibility(bit visible)
	{
		gtk_entry_set_visibility(gtkW(), visible);
	}
	
	/**
	 * Gets the visiblility mode
	 * @return true if in password like mode
	 */
	bit getVisibility()
	{
		return gtk_entry_get_visibility(gtkW())==0 ? false : true;
	}
		
	/**
	 * Sets the char to display when in invisible mode - password like mode
	 * @param ch the char to display when in invisible mode
	 */
	void setInvisibleChar(gunichar ch)
	{
		gtk_entry_set_invisible_char(gtkW(), ch);
	}
	
	/**
	 * Gets the char displayed when in invisible mode - password like mode
	 * @return the char to displayed when in invisible mode
	 */
	gunichar getInvisibleChar()
	{
		return gtk_entry_get_invisible_char(gtkW());
	}
	
	/**
	 * Sets has frame
	 * @param setting the new has frame setting
	 */
	void setHasFrame(bit setting)
	{
		gtk_entry_set_has_frame(gtkW(), setting);
	}
	
	/**
	 * Gets has frame
	 * @return true if the widget has a frame ???
	 */
	bit getHasFrame()
	{
		return gtk_entry_get_has_frame(gtkW())==0?false:true;
	}
	
	/**
	 * Sets the maximum length  text is truncated if needed
	 * @param max the maximum length
	 */
	void setMaxLength(gint max)
	{
		gtk_entry_set_max_length(gtkW(), max);
	}
	
	/**
	 * Gets the maximum length
	 * @return the maximum length
	 */
	gint getMaxLength()
	{
		return gtk_entry_get_max_length(gtkW());
	}
	
	/**
	 * Sets the activities default
	 * @param setting the new activities defaul
	 */
	void setActivitiesDefault(gboolean setting)
	{
		gtk_entry_set_activates_default(gtkW(), setting);
	}
	
	/**
	 * Gets the activities default
	 * @return the activities default
	 */
	bit getActivities()
	{
		return gtk_entry_get_activates_default(gtkW())==0 ? false : true;
	}
	
	/**
	 * Sets the chars widget
	 * @param n_chars the number of chars
	 */
	void setWidthChars(gint n_chars)
	{
		gtk_entry_set_width_chars(gtkW(), n_chars);
	}
	
	/**
	 * Gets the chars widget
	 * @return the chars widget
	 */
	gint getWidthChars()
	{
		return gtk_entry_get_width_chars(gtkW());
	}
	
	/**
	 * gets the pango layout
	 * @return the pango layout
	 */
	PangoLayout * getLayout()
	{
		return gtk_entry_get_layout(gtkW());
	}
	
	/**
	 * Gets the layout offsets
	 * @param x
	 * @param y
	 */
	void getLayoutOffstes(gint * x, gint * y)
	{
		gtk_entry_get_layout_offsets(gtkW(), x, y);
	}

	///////////////////////////// editable ////////////////////////
	
	public:
	
	void selectRegion(gint start, gint end)
	{
		gtk_editable_select_region(obj(), start, end);
	}
	
	//gboolean gtk_editable_get_selection_bounds(obj(), gint * start, gint * end);
	
	/**
	 * Insert text
	 * @param text the text to insert
	 * @param length the number of chars to insert
	 * @param position the position on the existing to where to insert the new text
	 */
	void insertText(char[] text, gint length, gint * position)
	{
		insertText(new String(text), length, position);
	}
	void insertText(String text, gint length, gint * position)
	{
		gtk_editable_insert_text(obj(), text.toStringz(), length, position);
	}
	
	/**
	 * Deletes text 
	 * @param startPos 
	 * @param endPos
	 */
	void deleteText(gint startPos, gint endPos)
	{
		gtk_editable_delete_text(obj(), startPos, endPos);
	}
	
	/**
	 * Gets a substring
	 * @param startPos
	 * @param endPos
	 */
	String getChars (gint startPos, gint endPos)
	{
		return String.newz(gtk_editable_get_chars(obj(), startPos, endPos));
	}
	
	/**
	 * Copies the text content to the clipboard and remove it from the widget
	 * (selected only???)
	 */
	void cutClipboard()
	{
		gtk_editable_cut_clipboard(obj());
	}
	
	/**
	 * Copies the text content into the clip board (selected only???)
	 */
	void copyClipboard()
	{
		gtk_editable_copy_clipboard(obj());
	}
	
	/**
	 * Pastes the clipborad contents into the widget
	 */
	void pasteClipboard()
	{
		gtk_editable_paste_clipboard(obj());
	}
	
	/**
	 * Deletes the selected text
	 */
	void deleteSelection()
	{
		gtk_editable_delete_selection(obj());
	}
	
	/**
	 * sets the cursor position ???
	 * @param position the cursor position
	 */
	void setPosition(int position)
	{
		gtk_editable_set_position(obj(), position);
	}
	
	/**
	 * get position
	 * @return the position of the cursor ???
	 */
	gint getPosition()
	{
		return gtk_editable_get_position(obj());
	}
	
	/**
	 * Sets the editable state
	 * @param isEditable the new editable state - use false to prevent the user to change the
	 * text content
	 */
	void setEditable(bit isEditable)
	{
		gtk_editable_set_editable(obj(), isEditable);
	}
	
	/**
	 * gets the editable state
	 * @return true if entry is editable
	 */
	bit getEditable()
	{
		return gtk_editable_get_editable(obj()) == 0 ? false : true;
	}

}
