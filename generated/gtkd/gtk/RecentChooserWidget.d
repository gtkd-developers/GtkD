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


module gtk.RecentChooserWidget;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Box;
private import gtk.RecentChooserIF;
private import gtk.RecentChooserT;
private import gtk.RecentManager;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkRecentChooserWidget is a widget suitable for selecting recently used
 * files.  It is the main building block of a #GtkRecentChooserDialog.  Most
 * applications will only need to use the latter; you can use
 * #GtkRecentChooserWidget as part of a larger window if you have special needs.
 * 
 * Note that #GtkRecentChooserWidget does not have any methods of its own.
 * Instead, you should use the functions that work on a #GtkRecentChooser.
 * 
 * Recently used files are supported since GTK+ 2.10.
 */
public class RecentChooserWidget : Box, RecentChooserIF
{
	/** the main Gtk struct */
	protected GtkRecentChooserWidget* gtkRecentChooserWidget;

	/** Get the main Gtk struct */
	public GtkRecentChooserWidget* getRecentChooserWidgetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRecentChooserWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRecentChooserWidget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRecentChooserWidget* gtkRecentChooserWidget, bool ownedRef = false)
	{
		this.gtkRecentChooserWidget = gtkRecentChooserWidget;
		super(cast(GtkBox*)gtkRecentChooserWidget, ownedRef);
	}

	// add the RecentChooser capabilities
	mixin RecentChooserT!(GtkRecentChooserWidget);


	/** */
	public static GType getType()
	{
		return gtk_recent_chooser_widget_get_type();
	}

	/**
	 * Creates a new #GtkRecentChooserWidget object.  This is an embeddable widget
	 * used to access the recently used resources list.
	 *
	 * Returns: a new #GtkRecentChooserWidget
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_recent_chooser_widget_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRecentChooserWidget*) p);
	}

	/**
	 * Creates a new #GtkRecentChooserWidget with a specified recent manager.
	 *
	 * This is useful if you have implemented your own recent manager, or if you
	 * have a customized instance of a #GtkRecentManager object.
	 *
	 * Params:
	 *     manager = a #GtkRecentManager
	 *
	 * Returns: a new #GtkRecentChooserWidget
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RecentManager manager)
	{
		auto p = gtk_recent_chooser_widget_new_for_manager((manager is null) ? null : manager.getRecentManagerStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_manager");
		}

		this(cast(GtkRecentChooserWidget*) p);
	}
}
