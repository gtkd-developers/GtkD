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

module dui.Toolbar;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.DUIObject;
private import dui.Widget;
private import dui.Button;
private import dui.Container;

public:
alias GtkContainer GtkToolbar;

alias void * GtkSignalFunc;
alias int GtkToolbarChildType;
alias int GtkOrientation;
alias int GtkToolbarStyle;
alias int GtkIconSize;

private:

extern (C)
{
	
	GType gtk_toolbar_get_type();
	GtkWidget * gtk_toolbar_new();

/* Simple button items */
	GtkWidget
		* gtk_toolbar_append_item(GtkToolbar * toolbar, char * text, char * tooltip_text, char * tooltip_private_text, GtkWidget * icon, GtkSignalFunc callback, gpointer user_data);
	GtkWidget
		* gtk_toolbar_prepend_item(GtkToolbar * toolbar, char * text, char * tooltip_text, char * tooltip_private_text, GtkWidget * icon, GtkSignalFunc callback, gpointer user_data);
	GtkWidget
		* gtk_toolbar_insert_item(
			GtkToolbar * toolbar,
			char * text,
			char * tooltip_text,
			char * tooltip_private_text,
			GtkWidget * icon,
			GtkSignalFunc callback,
			gpointer user_data,
			gint position);

/* Stock Items */
	GtkWidget
		* gtk_toolbar_insert_stock(GtkToolbar * toolbar, gchar * stock_id, char * tooltip_text, char * tooltip_private_text, GtkSignalFunc callback, gpointer user_data, gint position);

/* Space Items */
	void gtk_toolbar_append_space(GtkToolbar * toolbar);
	void gtk_toolbar_prepend_space(GtkToolbar * toolbar);
	void gtk_toolbar_insert_space(GtkToolbar * toolbar, gint position);
	void gtk_toolbar_remove_space(GtkToolbar * toolbar, gint position);

/* Any element type */
	GtkWidget
		* gtk_toolbar_append_element(
			GtkToolbar * toolbar,
			GtkToolbarChildType type,
			GtkWidget * widget,
			char * text,
			char * tooltip_text,
			char * tooltip_private_text,
			GtkWidget * icon,
			GtkSignalFunc callback,
			gpointer user_data);

	GtkWidget
		* gtk_toolbar_prepend_element(
			GtkToolbar * toolbar,
			GtkToolbarChildType type,
			GtkWidget * widget,
			char * text,
			char * tooltip_text,
			char * tooltip_private_text,
			GtkWidget * icon,
			GtkSignalFunc callback,
			gpointer user_data);

	GtkWidget
		* gtk_toolbar_insert_element(
			GtkToolbar * toolbar,
			GtkToolbarChildType type,
			GtkWidget * widget,
			char * text,
			char * tooltip_text,
			char * tooltip_private_text,
			GtkWidget * icon,
			GtkSignalFunc callback,
			gpointer user_data,
			gint position);

/* Generic Widgets */
	void gtk_toolbar_append_widget(GtkToolbar * toolbar, GtkWidget * widget, char * tooltip_text, char * tooltip_private_text);
	void gtk_toolbar_prepend_widget(GtkToolbar * toolbar, GtkWidget * widget, char * tooltip_text, char * tooltip_private_text);
	void gtk_toolbar_insert_widget(GtkToolbar * toolbar, GtkWidget * widget, char * tooltip_text, char * tooltip_private_text, gint position);

/* Style functions */
	void gtk_toolbar_set_orientation(GtkToolbar * toolbar, GtkOrientation orientation);
	void gtk_toolbar_set_style(GtkToolbar * toolbar, GtkToolbarStyle style);
	void gtk_toolbar_set_icon_size(GtkToolbar * toolbar, GtkIconSize icon_size);
	void gtk_toolbar_set_tooltips(GtkToolbar * toolbar, gboolean enable);
	void gtk_toolbar_unset_style(GtkToolbar * toolbar);
	void gtk_toolbar_unset_icon_size(GtkToolbar * toolbar);

	GtkOrientation gtk_toolbar_get_orientation(GtkToolbar * toolbar);
	GtkToolbarStyle gtk_toolbar_get_style(GtkToolbar * toolbar);
	GtkIconSize gtk_toolbar_get_icon_size(GtkToolbar * toolbar);
	gboolean gtk_toolbar_get_tooltips(GtkToolbar * toolbar);
}

/**
 * A container for a set of frequently used tools.
 */
public:
class Toolbar : Container
{

	public:
	/**
	 * The size to the icon to display
	 */
	enum {
		ICON_SIZE_INVALID, 
		ICON_SIZE_MENU, 
		ICON_SIZE_SMALL_TOOLBAR,
		ICON_SIZE_LARGE_TOOLBAR, 
		ICON_SIZE_BUTTON, 
		ICON_SIZE_DND, 
		ICON_SIZE_DIALOG 
	}


	debug(status)
	{
		int complete(){return 80;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A container for a set of frequently used tools";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_toolbar_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Creates a new toolbar
	 */
	this()
	{
		this(gtk_toolbar_new());
	}

	/* Simple button items */
	/**
	 * 
	 */
	Widget appendItem(char[] text, char[] tooltipText, char[] tooltipPrivateText, Widget icon, GtkSignalFunc callback, gpointer userData)
	{
		return new Widget(gtk_toolbar_append_item(cast(GtkToolbar*)gtkW(), cChar(text), cChar(tooltipText), cChar(tooltipPrivateText), icon.gtkW(), callback, userData));
	}

	/**
	 * 
	 */
	Widget prependItem(char[] text, char[] tooltipText, char[] tooltipPrivateText, Widget icon, GtkSignalFunc callback, gpointer userData)
	{
		return new Widget(gtk_toolbar_prepend_item(cast(GtkToolbar*)gtkW(), cChar(text), cChar(tooltipText), cChar(tooltipPrivateText), icon.gtkW(), callback, userData));
	}

	/**
	 * 
	 */
	Widget insertItem(char[] text, char[] tooltipText, char[] tooltipPrivateText, Widget icon, GtkSignalFunc callback, gpointer userData, gint position)
	{
		return new Widget(gtk_toolbar_insert_item(cast(GtkToolbar*)gtkW(), cChar(text), cChar(tooltipText), cChar(tooltipPrivateText), icon.gtkW(), callback, userData, position));
	}

	/* Stock Items */
	/**
	 * 
	 */
	Widget insertStock(Stock stockID,
			char[] tooltipText, char[] tooltipPrivateText,
			gint position)
	{
		Widget widget = new Button(
				gtk_toolbar_insert_stock(cast(GtkToolbar*)gtkW(), cChar(StockDesc[stockID]),
				cChar(tooltipText), cChar(tooltipPrivateText), null, null, position)
			);
		return widget;
	}

	/* Space Items */
	/**
	 * Insert a spacing at the current last position
	 */
	void appendSpace()
	{
		gtk_toolbar_append_space(cast(GtkToolbar*)gtkW());
	}
	
	/**
	 * Insert a spaceing at the begining
	 */
	void prependSpace()
	{
		gtk_toolbar_prepend_space(cast(GtkToolbar*)gtkW());
	}
	
	/**
	 * Insert a spaceing at any postion
	 * @param position the position where to insert the spacing
	 */
	void insertSpace(gint position)
	{
		gtk_toolbar_insert_space(cast(GtkToolbar*)gtkW(), position);
	}

	/**
	 * Remove a spacing from any position
	 * @param position the spacing position
	 */
	void removeSpace(gint position)
	{
		gtk_toolbar_remove_space(cast(GtkToolbar*)gtkW(), position);
	}

	/+
	/* Any element type */
	Widget appentElement(
		GtkToolbarChildType type,
		GtkWidget child,
		char[] text,
		char[] tooltipText,
		char[] tooltipPrivateText,
		Widget icon,
		GtkSignalFunc callback,
		gpointer userData)
	{
		void * w =gtk_toolbar_append_element(
				cast(GtkToolbar*)gtkW(), 
				type, 
				child.gtkW(), 
				cChar(text), cChar(tooltipText), cChar(tooltipPrivateText),
				icon.gtkW(), 
				callback, userData
			); 
		DUIObject duiO = getObjectG(w);
		return (Widget) duiO;
	}
	+/

	/+
	Widget prependElement(
		GtkToolbarChildType type,
		GtkWidget child,
		char[] text,
		char[] tooltipText,
		char[] tooltipPrivateText,
		Widget icon,
		GtkSignalFunc callback,
		gpointer userData)
	{
		return (Widget) getObjectG(
			gtk_toolbar_prepend_element(cast(GtkToolbar*)gtkW(), type, child.gtkW(), cChar(text), cChar(tooltipText), cChar(tooltipPrivateText), icon.gtkW(), callback, userData));
	}
	+/
	/+
	Widget insertElement(
		GtkToolbarChildType type,
		GtkWidget child,
		char[] text,
		char[] tooltipText,
		char[] tooltipPrivateText,
		Widget icon,
		GtkSignalFunc callback,
		gpointer userData,
		gint position)
	{
		return (Widget) getObjectG(
			gtk_toolbar_prepend_element(cast(GtkToolbar*)gtkW(), type, child.gtkW(), cChar(text), cChar(tooltipText), cChar(tooltipPrivateText), icon.gtkW(), callback, userData, position));
	}
	+/
	/* Generic Widgets */
	/**
	 * Append any widget to end of this toolbar.
	 * @param child the widget to append
	 * @param tooltipText the tooltip text
	 * @param tooltipPrivateText
	 */
	void appendWidget(Widget child, char[] tooltipText, char[] tooltipPrivateText)
	{
		gtk_toolbar_append_widget(cast(GtkToolbar*)gtkW(), child.gtkW(), cChar(tooltipText), cChar(tooltipPrivateText));
	}
	
	/**
	 * Preppend any widget to start of this toolbar.
	 * @param child the widget to append
	 * @param tooltipText the tooltip text
	 * @param tooltipPrivateText
	 */
	void prependWidget(Widget child, char[] tooltipText, char[] tooltipPrivateText)
	{
		gtk_toolbar_prepend_widget(cast(GtkToolbar*)gtkW(), child.gtkW(), cChar(tooltipText), cChar(tooltipPrivateText));
	}
	
	/**
	 * Insert any widget to any postion of this toolbar.
	 * @param child the widget to append
	 * @param tooltipText the tooltip text
	 * @param tooltipPrivateText
	 * @param position
	 */
	void insertWidget(Widget child, char[] tooltipText, char[] tooltipPrivateText, gint position)
	{
		gtk_toolbar_insert_widget(cast(GtkToolbar*)gtkW(), child.gtkW(), cChar(tooltipText), cChar(tooltipPrivateText), position);
	}

	/* Style functions */
	/**
	 * Set the toolbar orientation
	 * @param orientation
	 */
	void setOrientation(GtkOrientation orientation)
	{
		gtk_toolbar_set_orientation(cast(GtkToolbar*)gtkW(), orientation);
	}
	
	/**
	 * Sets the toolbar style
	 * @param style the new toolbar style
	 */
	void setStyle(GtkToolbarStyle style)
	{
		gtk_toolbar_set_style(cast(GtkToolbar*)gtkW(), style);
	}
	
	/**
	 * Sets the icon size.
	 * This is from the standard icon size, not an arbitrary icon size
	 * @param icon_size the standard icon size
	 */
	void setIconSize(IconSize icon_size)
	{
		gtk_toolbar_set_icon_size(cast(GtkToolbar*)gtkW(), icon_size);
	}
	
	/**
	 * Sets if the tooltips are enabled
	 * @param enable if true the tooltips are eabled
	 */
	void setTooltips(bit enable)
	{
		gtk_toolbar_set_tooltips(cast(GtkToolbar*)gtkW(), enable);
	}
	
	/**
	 * unset the toolbar style
	 */
	void unsetStyle()
	{
		gtk_toolbar_unset_style(cast(GtkToolbar*)gtkW());
	}
	
	/**
	 * unsets the icon style
	 */
	void unsetIconStyle()
	{
		gtk_toolbar_unset_icon_size(cast(GtkToolbar*)gtkW());
	}

	/**
	 * Gets the toolbar orientation
	 * @return the toolbar orientation
	 */
	GtkOrientation getOrientation()
	{
		return gtk_toolbar_get_orientation(cast(GtkToolbar*)gtkW());
	}
	
	/**
	 * Gets the toolbar style
	 * @return the toolbar style
	 */
	GtkToolbarStyle getStyleToolbar()
	{
		return gtk_toolbar_get_style(cast(GtkToolbar*)gtkW());
	}
	
	/**
	 * Gets the toolbar icon size
	 * @return the icon size
	 */
	GtkIconSize getIconSize()
	{
		return gtk_toolbar_get_icon_size(cast(GtkToolbar*)gtkW());
	}
	
	/**
	 * Gets the toolbar tooltips???
	 * @return true if
	 */
	bit getTooltips()
	{
		return gtk_toolbar_get_tooltips(cast(GtkToolbar*)gtkW()) == 0 ? false : true;
	}

}
