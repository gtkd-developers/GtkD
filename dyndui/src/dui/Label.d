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

module dui.Label;

private import def.Types;
private import def.Constants;
private import dui.Utils;
//private import string;
private import dui.ObjectG;
private import dui.Widget;
private import dui.Misc;
private import lib.gtk;

/**
 * A widget to display a text Label
 */

// moved out ---------------------------
   private import dool.String;
// -------------------------------------
public:
class Label : Misc
{	
	debug(status)
	{
		int complete(){return ST_UNKNOWN;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A widget to display a text Label";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget *gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	void* gtk()
	{
		return cast(void*)gObject;
	}

	/**
	 * Gets this class type
	 * @return type
	 */
	static GType getType()
	{
		return gtk_label_get_type();
	}
	
	/**
	 * Creates a new text lable
	 * @param str the label text
	 */
	this(String str)
	{
		this(gtk_label_new(str.toStringz()));
	}

	/**
	 * Creates a new text label
	 * @param str the label text
	 */
	this(char[] str)
	{
		this(new String(str));
	}

	/**
	 * 
	 */
	this(char[] str, bit mnemonic)
	{
		this(new String(str), mnemonic);
	}
	/**
	 * 
	 */
	this(String str, bit mnemonic)
	{
		this(gtk_label_new_with_mnemonic(str.toStringz()));
	}

	/**
	 * Sets the label text
	 * @param str the new label text
	 */
	void setText(char[] str)
	{
		setText(new String(str));
	}
	void setText(String str)
	{
		gtk_label_set_text(gtkW(), str.toStringz());
	}

	/**
	 * Gets the label text
	 * @return the label text 
	 */
	String getText()
	{
		return String.newz(gtk_label_get_text(gtkW()));
	}

	/**
	 * 
	 */
	void setAttributes(PangoAttrList * attrs)
	{
		gtk_label_set_attributes(gtkW(), attrs);
	}

	/**
	 * 
	 */
	PangoAttrList * getAttributes()
	{
		return gtk_label_get_attributes(gtkW());
	}

	/**
	 * 
	 */
	void setLabel(char[] str)
	{
		setLabel(new String(str));
	}
	void setLabel(String str)
	{
		gtk_label_set_label(gtkW(), str.toStringz());
	}

	/**
	 * Gets the label text
	 * @return the label text 
	 */
	String getLabel ()
	{
		return String.newz(gtk_label_get_label(gtkW()));
	}

	/**
	 * 
	 */
	void setMarkup(char [] str)
	{
		gtk_label_set_markup(gtkW(), str);
	}

	/**
	 * 
	 */
	void setUseMarkup(bit setting)
	{
		gtk_label_set_use_markup(gtkW(), setting);
	}

	/**
	 * 
	 */
	bit getUseMarkup()
	{
		return gtk_label_get_use_markup(gtkW())==0?false:true;
	}

	/**
	 * 
	 */
	void setUseUnderline(bit setting)
	{
		gtk_label_set_use_underline(gtkW(), setting);
	}

	/**
	 * 
	 */
	bit getUseUnderline()
	{
		return gtk_label_get_use_underline(gtkW())==0?false:true;
	}

	/**
	 * 
	 */
	void setMarkupWidthMnemonic(String str)
	{
		gtk_label_set_markup_with_mnemonic(gtkW(), str.toStringz());
	}

	/**
	 * 
	 */
	guint getMnemonicKeyval()
	{
		return gtk_label_get_mnemonic_keyval(gtkW());
	}

	/**
	 * 
	 */
	void setMnemonicWidget(Widget mnm)
	{
		gtk_label_set_mnemonic_widget(gtkW(), mnm.gtkW());
	}

	/**
	 * 
	 */
	Widget getMnemonicWidget()
	{
		GtkWidget *gtkO= gtk_label_get_mnemonic_widget(gtkW()); 
		if ( gtkO  is  null )
		{
			null;
		}
		return new Widget(gtkO);
	}

	/**
	 * 
	 */
	void setTextMnemonic(String str)
	{
		gtk_label_set_text_with_mnemonic(gtkW(), str.toStringz());
	}

	/**
	 * 
	 */
	void setJustify(GtkJustification jtype)
	{
		gtk_label_set_justify(gtkW(), jtype);
	}

	/**
	 * 
	 */
	GtkJustification getJustify()
	{
		return gtk_label_get_justify(gtkW());
	}

	/**
	 * 
	 */
	void setPattern(String pattern)
	{
		gtk_label_set_pattern(gtkW(), pattern.toStringz());
	}

	/**
	 * 
	 */
	void setLineWrap(bit wrap)
	{
		gtk_label_set_line_wrap(gtkW(), wrap);
	}

	/**
	 * 
	 */
	bit getLineWrap()
	{
		return gtk_label_get_line_wrap(gtkW())==0?false:true;
	}

	/**
	 * 
	 */
	void setSelectable(bit setting)
	{
		gtk_label_set_selectable(gtkW(), setting);
	}

	/**
	 * 
	 */
	bit getSelectable()
	{
		return gtk_label_get_selectable(gtkW())==0?false:true;
	}

	/**
	 * 
	 */
	void selectRegion(gint start_offset, gint end_offset)
	{
		gtk_label_select_region(gtkW(), start_offset, end_offset);
	}

	/**
	 * 
	 */
	bit getSelectionBounds(gint * start, gint * end)
	{
		return gtk_label_get_selection_bounds(gtkW(), start, end)==0 ? false : true;
	}


	/**
	 * 
	 */
	PangoLayout * getLayout()
	{
		return gtk_label_get_layout(gtkW());
	}

	/**
	 * 
	 */
	void getLayoutOffsets(gint * x, gint * y)
	{
		gtk_label_get_layout_offsets(gtkW(), x, y);
	}

}
