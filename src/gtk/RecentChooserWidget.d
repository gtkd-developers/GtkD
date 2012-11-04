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
 * inFile  = GtkRecentChooserWidget.html
 * outPack = gtk
 * outFile = RecentChooserWidget
 * strct   = GtkRecentChooserWidget
 * realStrct=
 * ctorStrct=
 * clss    = RecentChooserWidget
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- RecentChooserIF
 * prefixes:
 * 	- gtk_recent_chooser_widget_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.RecentManager
 * 	- gtk.RecentChooserIF
 * 	- gtk.RecentChooserT
 * structWrap:
 * 	- GtkRecentManager* -> RecentManager
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.RecentChooserWidget;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.RecentManager;
private import gtk.RecentChooserIF;
private import gtk.RecentChooserT;



private import gtk.Box;

/**
 * Description
 * GtkRecentChooserWidget is a widget suitable for selecting recently used
 * files. It is the main building block of a GtkRecentChooserDialog. Most
 * applications will only need to use the latter; you can use
 * GtkRecentChooserWidget as part of a larger window if you have special needs.
 * Note that GtkRecentChooserWidget does not have any methods of its own.
 * Instead, you should use the functions that work on a GtkRecentChooser.
 * Recently used files are supported since GTK+ 2.10.
 */
public class RecentChooserWidget : Box, RecentChooserIF
{
	
	/** the main Gtk struct */
	protected GtkRecentChooserWidget* gtkRecentChooserWidget;
	
	
	public GtkRecentChooserWidget* getRecentChooserWidgetStruct()
	{
		return gtkRecentChooserWidget;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRecentChooserWidget;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRecentChooserWidget* gtkRecentChooserWidget)
	{
		super(cast(GtkBox*)gtkRecentChooserWidget);
		this.gtkRecentChooserWidget = gtkRecentChooserWidget;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkRecentChooserWidget = cast(GtkRecentChooserWidget*)obj;
	}
	
	// add the RecentChooser capabilities
	mixin RecentChooserT!(GtkRecentChooserWidget);
	
	/**
	 */
	
	/**
	 * Creates a new GtkRecentChooserWidget object. This is an embeddable widget
	 * used to access the recently used resources list.
	 * Since 2.10
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_recent_chooser_widget_new (void);
		auto p = gtk_recent_chooser_widget_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_recent_chooser_widget_new()");
		}
		this(cast(GtkRecentChooserWidget*) p);
	}
	
	/**
	 * Creates a new GtkRecentChooserWidget with a specified recent manager.
	 * This is useful if you have implemented your own recent manager, or if you
	 * have a customized instance of a GtkRecentManager object.
	 * Since 2.10
	 * Params:
	 * manager = a GtkRecentManager
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (RecentManager manager)
	{
		// GtkWidget * gtk_recent_chooser_widget_new_for_manager  (GtkRecentManager *manager);
		auto p = gtk_recent_chooser_widget_new_for_manager((manager is null) ? null : manager.getRecentManagerStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_recent_chooser_widget_new_for_manager((manager is null) ? null : manager.getRecentManagerStruct())");
		}
		this(cast(GtkRecentChooserWidget*) p);
	}
}
