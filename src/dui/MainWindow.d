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

module dui.MainWindow;
private import def.Types;
private import dui.DUI;
private import dui.Widget;
private import dui.Window;

/**
 * A top Level window that will stop the main event cycle when it's closed.
 * Closing the last of the windows of class "MainWindow" will end the application.
 */
public:
class MainWindow : Window
{

	private import dool.String;
	
	private static int countTotalMainWindows = 0;

	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A top Level window that will stop the main event cycle when it's closed";}
		char[] author(){return "Antonio";}
	}
	
	public:
	
	/**
	 * Creates a new MainWindow with a title
	 */
	this(char[] title)
	{
		this(new String(title));
	}
	this(String title)
	{
		super(title);
		//printf("MainWindow.this \n");
		countTotalMainWindows++;
		//printf("MainWindows.this count = %d\n", countTotalMainWindows);
		addOnDelete(&windowDelete);
	}
	
	public: 
	
	/**
	 * Executed when the user tries to close the window
	 * @return true to refuse to close the window
	 */
	protected bit windowDelete(Window window, Event event)
	{
		--countTotalMainWindows;
		printf("MainWindows.windowDelete count = %d\n", countTotalMainWindows);
		if ( exit(0, countTotalMainWindows==0) || countTotalMainWindows==0 )
		{
			DUI dui = DUI.dui();
			dui.stop();
			return false;
		}
		return false;
	}
	
	/**
	 * Allows the application to close and decide if it can exit
	 * @param code the code reason to exit
	 * @param force if true the application must expect to be closed even against it's will
	 * @return false to refuse to exit
	 */
	protected bit exit(int code, bit force)
	{
		return force;
	}
}
