/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = MainWindow
 * strct   = 
 * realStrct=
 * clss    = 
 * extend  = 
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.MainWindow;

private import gtk.typedefs;

private import lib.gtk;


/**
 */

private import gtk.Window;

/**
 * A top Level window that will stop the main event cycle when it's closed.
 * Closing the last of the windows of class "MainWindow" will end the application.
 */
public class MainWindow : Window
{
	
	private import gtk.Widget;
	private import gtk.Duit;
	private import gdk.Event;
	
	private static int countTotalMainWindows = 0;
	
	/**
	 * Creates a new MainWindow with a title
	 */
	public this(char[] title)
	{
		super(title);
		countTotalMainWindows++;
		//printf("MainWindows.this count = %d\n", countTotalMainWindows);
		addOnDelete(&windowDelete);
	}
	
	/**
	 * Executed when the user tries to close the window
	 * @return true to refuse to close the window
	 */
	protected int windowDelete(Event event, Widget widget)
	{
		--countTotalMainWindows;
		printf("MainWindows.windowDelete count = %d\n", countTotalMainWindows);
		if ( exit(0, false) || countTotalMainWindows==0 )
		{
			Duit.exit(0);
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

/**
 */

