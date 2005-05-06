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

module event.HandleBoxListener;

private import def.Types;
private import dui.Widget;
private import dui.HandleBox;

/**
 * HandleBox events
 * \todo add the addListeners to dispatcher
 */
public :
interface HandleBoxListener
{

	void childAttachedCallback(HandleBox handlebox, Widget widget);
	void childDetachedCallback(HandleBox handlebox, Widget widget);

	//"child-attached" void user_function (GtkHandleBox * handlebox, GtkWidget * widget, gpointer user_data);
	//"child-detached" void user_function (GtkHandleBox * handlebox, GtkWidget * widget, gpointer user_data);
};



