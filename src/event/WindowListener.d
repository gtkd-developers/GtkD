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

module event.WindowListener;

private import def.Types;
private import dui.Window;
private import event.Event;

/**
 * Declares the methods for a window listener
 */
public:
interface WindowListener
{
	// already moved to delegates
	
	bit windowDeleteCallback(Window, Event);
	bit windowDestroyCallback(Window, Event);
	//void setFocus (Window window, Widget focus);
}

/**
 * Declares other window events
 * \todo add addListener to Dispatcher
 */
interface WindowConfigurationListener
{
	
	void activateDefaultCallback(GtkWindow * window, gpointer user_data);
	void activateFocusCallback(GtkWindow * window, gpointer user_data);
	gboolean frameEventCallback(GtkWindow * window, GdkEvent * event, gpointer user_data);
	void keysChangedCallback(GtkWindow * window, gpointer user_data);
	void moveFocusCallback(GtkWindow * window, GtkDirectionType arg1, gpointer user_data);
	void setFocusCallback(GtkWindow * window, GtkWidget * widget, gpointer user_data);

	//"activate-default" void user_function (GtkWindow * window, gpointer user_data);
	//"activate-focus" void user_function (GtkWindow * window, gpointer user_data);
	//"frame-event" gboolean user_function (GtkWindow * window, GdkEvent * event, gpointer user_data);
	//"keys-changed" void user_function (GtkWindow * window, gpointer user_data);
	//"move-focus" void user_function (GtkWindow * window, GtkDirectionType arg1, gpointer user_data);
	//"set-focus" void user_function (GtkWindow * window, GtkWidget * widget, gpointer user_data);
}
