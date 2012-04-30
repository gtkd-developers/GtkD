/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = gtk
 * outFile = Idle
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Idle
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_idle_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Idle;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;






/**
 * Description
 * Before using GTK+, you need to initialize it; initialization connects to the
 * window system display, and parses some standard command line arguments. The
 * gtk_init() macro initializes GTK+. gtk_init() exits the application if errors
 * occur; to avoid this, use gtk_init_check(). gtk_init_check() allows you to
 * recover from a failed GTK+ initialization - you might start up your
 * application in text mode instead.
 * Like all GUI toolkits, GTK+ uses an event-driven programming model. When the
 * user is doing nothing, GTK+ sits in the main loop and
 * waits for input. If the user performs some action - say, a mouse click - then
 * the main loop "wakes up" and delivers an event to GTK+. GTK+ forwards the
 * event to one or more widgets.
 * When widgets receive an event, they frequently emit one or more
 * signals. Signals notify your program that "something
 * interesting happened" by invoking functions you've connected to the signal
 * with g_signal_connect(). Functions connected to a signal are often termed
 * callbacks.
 * When your callbacks are invoked, you would typically take some action - for
 * example, when an Open button is clicked you might display a
 * GtkFileChooserDialog. After a callback finishes, GTK+ will return to the
 * main loop and await more user input.
 * $(DDOC_COMMENT example)
 * It's OK to use the GLib main loop directly instead of gtk_main(), though it
 * involves slightly more typing. See GMainLoop in the GLib documentation.
 */
public class Idle
{
	
	/** Holds all idle delegates */
	bool delegate()[] idleListeners;
	/** our gtk idle ID */
	uint idleID;
	
	/**
	 * Creates a new idle cycle.
	 * Params:
	 *    	interval = the idle in milieconds
	 *    	dlg = the delegate to be executed
	 *    	fireNow = When true the delegate will be executed emmidiatly
	 */
	this(bool delegate() dlg, bool fireNow=false)
	{
		idleListeners ~= dlg;
		idleID = gtk_idle_add(cast(GtkFunction)&idleCallback, cast(void*)this);
		if ( fireNow )
		{
			if ( !dlg() )
			{
				idleListeners.length = 0;
			}
		}
	}
	
	/** */
	public void stop()
	{
		if ( idleID > 0 )
		{
			gtk_idle_remove(idleID);
		}
		idleListeners.length = 0;
	}
	
	/**
	 * Removes the idle from gtk
	 */
	~this()
	{
		stop();
	}
	
	/**
	 * Adds a new delegate to this idle cycle
	 * Params:
	 *    	dlg =
	 *    	fireNow =
	 */
	public void addListener(bool delegate() dlg, bool fireNow=false)
	{
		idleListeners ~= dlg;
		if ( fireNow )
		{
			if ( !dlg() )
			{
				idleListeners.length = idleListeners.length - 1;
			}
		}
	}
	
	/**
	 * The callback execution from glib
	 * Params:
	 *    	idle =
	 * Returns:
	 */
	extern(C) static bool idleCallback(Idle idle)
	{
		return idle.callAllListeners();
	}
	
	/**
	 * Executes all delegates on the execution list
	 * Returns:
	 */
	private bool callAllListeners()
	{
		bool runAgain = false;
		
		int i = 0;
		
		while ( i<idleListeners.length )
		{
			if ( !idleListeners[i]() )
			{
				idleListeners = idleListeners[0..i] ~ idleListeners[i+1..idleListeners.length];
			}
			else
			{
				runAgain = true;
				++i;
			}
		}
		return runAgain;
	}
	
	/**
	 */
}
