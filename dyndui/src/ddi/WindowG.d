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

module ddi.WindowG;

private import def.Types;
private import ddi.Drawable;

private import dui.Widget;

/**
 * WindowG wraps GdkWindow - low level window, not the application windows.
 * The methods on this class are not implement.
 * This class is not to be fully implemented on the version of DUI, whence it's not marked
 * as "todo" yet.
 */

public:
class WindowG : Drawable
{
	public:

	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return "GdkWindow";}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets the GdkWindow of this WindoeG
	 * @return the GdkWindow of this WindowG
	 */
	GdkWindow* gdkW()
	{
		return cast(GdkWindow *) gObject;
	}

	/**
	 * Creates a new WindowG from a GdkObject
	 */
	this(GObject * gObject)
	{
		super (gObject);
	}

	/**
	 * Creates a new WindowG froma GdkWindow
	 */
	this(GdkWindow * gdkWindow)
	{
		super(cast(GObject*)gdkWindow);
	}

}
