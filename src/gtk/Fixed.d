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
 * inFile  = GtkFixed.html
 * outPack = gtk
 * outFile = Fixed
 * strct   = GtkFixed
 * realStrct=
 * ctorStrct=
 * clss    = Fixed
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_fixed_
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

module gtk.Fixed;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.Widget;



private import gtk.Container;

/**
 * The GtkFixed widget is a container which can place child widgets
 * at fixed positions and with fixed sizes, given in pixels. GtkFixed
 * performs no automatic layout management.
 *
 * For most applications, you should not use this container! It keeps
 * you from having to learn about the other GTK+ containers, but it
 * results in broken applications. With GtkFixed, the following
 * things will result in truncated text, overlapping widgets, and
 * other display bugs:
 *
 *  Themes, which may change widget sizes.
 *
 *  Fonts other than the one you used to write the app will of course
 *  change the size of widgets containing text; keep in mind that
 *  users may use a larger font because of difficulty reading the
 *  default, or they may be using Windows or the framebuffer port of
 *  GTK+, where different fonts are available.
 *
 *  Translation of text into other languages changes its size. Also,
 *  display of non-English text will use a different font in many
 *  cases.
 *
 * In addition, the fixed widget can't properly be mirrored in
 * right-to-left languages such as Hebrew and Arabic. i.e. normally
 * GTK+ will flip the interface to put labels to the right of the
 * thing they label, but it can't do that with GtkFixed. So your
 * application will not be usable in right-to-left languages.
 *
 * Finally, fixed positioning makes it kind of annoying to add/remove
 * GUI elements, since you have to reposition all the other
 * elements. This is a long-term maintenance problem for your
 * application.
 *
 * If you know none of these things are an issue for your application,
 * and prefer the simplicity of GtkFixed, by all means use the
 * widget. But you should be aware of the tradeoffs.
 */
public class Fixed : Container
{
	
	/** the main Gtk struct */
	protected GtkFixed* gtkFixed;
	
	
	public GtkFixed* getFixedStruct()
	{
		return gtkFixed;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFixed;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFixed* gtkFixed)
	{
		super(cast(GtkContainer*)gtkFixed);
		this.gtkFixed = gtkFixed;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkFixed = cast(GtkFixed*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkFixed.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_fixed_new (void);
		auto p = gtk_fixed_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_fixed_new()");
		}
		this(cast(GtkFixed*) p);
	}
	
	/**
	 * Adds a widget to a GtkFixed container at the given position.
	 * Params:
	 * widget = the widget to add.
	 * x = the horizontal position to place the widget at.
	 * y = the vertical position to place the widget at.
	 */
	public void put(Widget widget, int x, int y)
	{
		// void gtk_fixed_put (GtkFixed *fixed,  GtkWidget *widget,  gint x,  gint y);
		gtk_fixed_put(gtkFixed, (widget is null) ? null : widget.getWidgetStruct(), x, y);
	}
	
	/**
	 * Moves a child of a GtkFixed container to the given position.
	 * Params:
	 * widget = the child widget.
	 * x = the horizontal position to move the widget to.
	 * y = the vertical position to move the widget to.
	 * Child Property Details
	 * The "x" child property
	 *  "x" gint : Read / Write
	 * X position of child widget.
	 * Default value: 0
	 */
	public void move(Widget widget, int x, int y)
	{
		// void gtk_fixed_move (GtkFixed *fixed,  GtkWidget *widget,  gint x,  gint y);
		gtk_fixed_move(gtkFixed, (widget is null) ? null : widget.getWidgetStruct(), x, y);
	}
}
