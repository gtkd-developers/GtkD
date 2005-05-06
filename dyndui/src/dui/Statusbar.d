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

module dui.Statusbar;
private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.Widget;
private import dui.HBox;
private import lib.gtk;

/**
 * Status bar.
 */
public:
class Statusbar : HBox
{
	public:

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Status bar";}
		char[] author(){return "Antonio";}
	}
	
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_statusbar_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}
	
	public:
	
	/**
	 * creates a new Status bar
	 */
	this()
	{
		this(gtk_statusbar_new());
	}

	/**
	 * Creates a new Status bar and set the presence of the resize grip
	 * @param resizeGrip
	 */
	this(bit resizeGrip)
	{
		this();
		setHasResizeGrip(resizeGrip);
	}
	/**
	 * Gets the current context description
	 * @return the current context description
	 */
	guint getContextId(char[] contextDescription)
	{
		return gtk_statusbar_get_context_id(gtkW(), cChar(contextDescription));
	}
	
	/**
	 * pushes a new context and description
	 * @param contextId the new context
	 * @param text the new text
	 */
	guint push( guint contextId, char [] text)
	{
		return gtk_statusbar_push(gtkW(), contextId, cChar(text));
	}

	/**
	 * Pops the context id
	 * @param contextId 
	 */
	void pop(guint contextId)
	{
		gtk_statusbar_pop(gtkW(), contextId);
	}
	
	/**
	 * Removes the context and message.
	 * @param context_id
	 * @param message_id
	 */
	void remove(guint context_id, guint message_id)
	{
		gtk_statusbar_remove(gtkW(), context_id, message_id);
	}
	
	/**
	 * Sets if the resize grip should be displayed
	 * @param setting if true the resize grip will be displayed
	 */
	void setHasResizeGrip(bit setting)
	{
		gtk_statusbar_set_has_resize_grip(gtkW(), setting);
	}
	
	/**
	 * Checks if the resize grip is displayed
	 * @return true if the resizegrip is displayed
	 */
	bit getHasResizeGrip()
	{
		return (gtk_statusbar_get_has_resize_grip(gtkW())==0)?false:true;
	}
}
