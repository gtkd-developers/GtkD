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

module dui.WindowGroup;

private import def.Types;
private import def.Constants;
private import dui.ObjectG;
private import dui.Window;

extern(C)
{
	GType gtk_window_group_get_type();
	GtkWindowGroup * gtk_window_group_new();
	void gtk_window_group_add_window(GtkWindowGroup * window_group, GtkWindow * window);
	void gtk_window_group_remove_window(GtkWindowGroup * window_group, GtkWindow * window);
};

/**
 * Window group
 */
public class WindowGroup : ObjectG
{

	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_window_group_get_type();
	}

	/**
	 * Creates a new WindowGroupd
	 */
	this()
	{
		super(cast(GObject*)gtk_window_group_new());
    }
	
	/**
	 * Adds a window from this groupd
	 * @param window the window to add
	 */
	void addWindow(Window window)
	{
		gtk_window_group_add_window(cast(GtkWindowGroup*)obj(), cast(GtkWindow*)window.gtkW());
	}

	/**
	 * Removes a window from this groupd
	 * @param window the window to remove
	 */
	void removeWindow(Window window)
	{
		gtk_window_group_remove_window(cast(GtkWindowGroup*)obj(), cast(GtkWindow*)window.gtkW());
	}

	
}

