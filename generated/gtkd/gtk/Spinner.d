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


module gtk.Spinner;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A GtkSpinner widget displays an icon-size spinning animation.
 * It is often used as an alternative to a #GtkProgressBar for
 * displaying indefinite activity, instead of actual progress.
 * 
 * To start the animation, use gtk_spinner_start(), to stop it
 * use gtk_spinner_stop().
 * 
 * # CSS nodes
 * 
 * GtkSpinner has a single CSS node with the name spinner. When the animation is
 * active, the :checked pseudoclass is added to this node.
 */
public class Spinner : Widget
{
	/** the main Gtk struct */
	protected GtkSpinner* gtkSpinner;

	/** Get the main Gtk struct */
	public GtkSpinner* getSpinnerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSpinner;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSpinner;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSpinner* gtkSpinner, bool ownedRef = false)
	{
		this.gtkSpinner = gtkSpinner;
		super(cast(GtkWidget*)gtkSpinner, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_spinner_get_type();
	}

	/**
	 * Returns a new spinner widget. Not yet started.
	 *
	 * Returns: a new #GtkSpinner
	 *
	 * Since: 2.20
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_spinner_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSpinner*) p);
	}

	/**
	 * Starts the animation of the spinner.
	 *
	 * Since: 2.20
	 */
	public void start()
	{
		gtk_spinner_start(gtkSpinner);
	}

	/**
	 * Stops the animation of the spinner.
	 *
	 * Since: 2.20
	 */
	public void stop()
	{
		gtk_spinner_stop(gtkSpinner);
	}
}
