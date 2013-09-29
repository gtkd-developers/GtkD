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
 * inFile  = GtkHeaderBar.html
 * outPack = gtk
 * outFile = HeaderBar
 * strct   = GtkHeaderBar
 * realStrct=
 * ctorStrct=
 * clss    = HeaderBar
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_header_bar_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.HeaderBar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.Widget;



private import gtk.Container;

/**
 * GtkHeaderBar is similar to a horizontal GtkBox, it allows
 * to place children at the start or the end. In addition,
 * it allows a title to be displayed. The title will be
 * centered with respect to the width of the box, even if the children
 * at either side take up different amounts of space.
 */
public class HeaderBar : Container
{
	
	/** the main Gtk struct */
	protected GtkHeaderBar* gtkHeaderBar;
	
	
	public GtkHeaderBar* getHeaderBarStruct()
	{
		return gtkHeaderBar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHeaderBar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHeaderBar* gtkHeaderBar)
	{
		super(cast(GtkContainer*)gtkHeaderBar);
		this.gtkHeaderBar = gtkHeaderBar;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkHeaderBar = cast(GtkHeaderBar*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkHeaderBar widget.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_header_bar_new (void);
		auto p = gtk_header_bar_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_header_bar_new()");
		}
		this(cast(GtkHeaderBar*) p);
	}
	
	/**
	 * Sets the title of the GtkHeaderBar. The title should help a user
	 * identify the current view. A good title should not include the
	 * application name.
	 * Params:
	 * title = a title. [allow-none]
	 * Since 3.10
	 */
	public void setTitle(string title)
	{
		// void gtk_header_bar_set_title (GtkHeaderBar *bar,  const gchar *title);
		gtk_header_bar_set_title(gtkHeaderBar, Str.toStringz(title));
	}
	
	/**
	 * Retrieves the title of the header. See gtk_header_bar_set_title().
	 * Returns: the title of the header, or NULL if none has been set explicitely. The returned string is owned by the widget and must not be modified or freed. Since 3.10
	 */
	public string getTitle()
	{
		// const gchar * gtk_header_bar_get_title (GtkHeaderBar *bar);
		return Str.toString(gtk_header_bar_get_title(gtkHeaderBar));
	}
	
	/**
	 * Sets the subtitle of the GtkHeaderBar. The title should give a user
	 * an additional detail to help him identify the current view.
	 * Note that GtkHeaderBar always reserves room for the subtitle, even
	 * if none is currently set. If this is not desired, use
	 * gtk_header_bar_set_custom_title() to place your own label in the
	 * title position. To achieve the same style, use the "title" style
	 * class.
	 * Params:
	 * subtitle = a subtitle. [allow-none]
	 * Since 3.10
	 */
	public void setSubtitle(string subtitle)
	{
		// void gtk_header_bar_set_subtitle (GtkHeaderBar *bar,  const gchar *subtitle);
		gtk_header_bar_set_subtitle(gtkHeaderBar, Str.toStringz(subtitle));
	}
	
	/**
	 * Retrieves the subtitle of the header. See gtk_header_bar_set_subtitle().
	 * Returns: the subtitle of the header, or NULL if none has been set explicitely. The returned string is owned by the widget and must not be modified or freed. Since 3.10
	 */
	public string getSubtitle()
	{
		// const gchar * gtk_header_bar_get_subtitle (GtkHeaderBar *bar);
		return Str.toString(gtk_header_bar_get_subtitle(gtkHeaderBar));
	}
	
	/**
	 * Sets a custom title for the GtkHeaderBar. The title should help a
	 * user identify the current view. This supercedes any title set by
	 * gtk_header_bar_set_title() or gtk_header_bar_set_subtitle().
	 * You should set the custom title to NULL, for the header title label
	 * to be visible again.
	 * Params:
	 * titleWidget = a custom widget to use for a title. [allow-none]
	 * Since 3.10
	 */
	public void setCustomTitle(Widget titleWidget)
	{
		// void gtk_header_bar_set_custom_title (GtkHeaderBar *bar,  GtkWidget *title_widget);
		gtk_header_bar_set_custom_title(gtkHeaderBar, (titleWidget is null) ? null : titleWidget.getWidgetStruct());
	}
	
	/**
	 * Retrieves the custom title widget of the header. See
	 * gtk_header_bar_set_custom_title().
	 * Returns: the custom title widget of the header, or NULL if none has been set explicitely. [transfer none] Since 3.10
	 */
	public Widget getCustomTitle()
	{
		// GtkWidget * gtk_header_bar_get_custom_title (GtkHeaderBar *bar);
		auto p = gtk_header_bar_get_custom_title(gtkHeaderBar);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Adds child to box, packed with reference to the
	 * start of the box.
	 * Params:
	 * child = the GtkWidget to be added to bar
	 * Since 3.10
	 */
	public void packStart(Widget child)
	{
		// void gtk_header_bar_pack_start (GtkHeaderBar *bar,  GtkWidget *child);
		gtk_header_bar_pack_start(gtkHeaderBar, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Adds child to box, packed with reference to the
	 * end of the box.
	 * Params:
	 * child = the GtkWidget to be added to bar
	 * Since 3.10
	 */
	public void packEnd(Widget child)
	{
		// void gtk_header_bar_pack_end (GtkHeaderBar *bar,  GtkWidget *child);
		gtk_header_bar_pack_end(gtkHeaderBar, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Sets whether this header bar shows a window close
	 * button.
	 * Params:
	 * setting = TRUE to show a window close button
	 * Since 3.10
	 */
	public void setShowCloseButton(int setting)
	{
		// void gtk_header_bar_set_show_close_button  (GtkHeaderBar *bar,  gboolean setting);
		gtk_header_bar_set_show_close_button(gtkHeaderBar, setting);
	}
	
	/**
	 * Returns whether this header bar shows a window close
	 * button.
	 * Returns: TRUE if a window close button is shown Since 3.10
	 */
	public int getShowCloseButton()
	{
		// gboolean gtk_header_bar_get_show_close_button  (GtkHeaderBar *bar);
		return gtk_header_bar_get_show_close_button(gtkHeaderBar);
	}
}
