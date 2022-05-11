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


module gtk.WidgetPaintable;

private import gdk.PaintableIF;
private import gdk.PaintableT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkWidgetPaintable` is a `GdkPaintable` that displays the contents
 * of a widget.
 * 
 * `GtkWidgetPaintable` will also take care of the widget not being in a
 * state where it can be drawn (like when it isn't shown) and just draw
 * nothing or where it does not have a size (like when it is hidden) and
 * report no size in that case.
 * 
 * Of course, `GtkWidgetPaintable` allows you to monitor widgets for size
 * changes by emitting the [signal@Gdk.Paintable::invalidate-size] signal
 * whenever the size of the widget changes as well as for visual changes by
 * emitting the [signal@Gdk.Paintable::invalidate-contents] signal whenever
 * the widget changes.
 * 
 * You can use a `GtkWidgetPaintable` everywhere a `GdkPaintable` is allowed,
 * including using it on a `GtkPicture` (or one of its parents) that it was
 * set on itself via gtk_picture_set_paintable(). The paintable will take care
 * of recursion when this happens. If you do this however, ensure that the
 * [property@Gtk.Picture:can-shrink] property is set to %TRUE or you might
 * end up with an infinitely growing widget.
 */
public class WidgetPaintable : ObjectG, PaintableIF
{
	/** the main Gtk struct */
	protected GtkWidgetPaintable* gtkWidgetPaintable;

	/** Get the main Gtk struct */
	public GtkWidgetPaintable* getWidgetPaintableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkWidgetPaintable;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkWidgetPaintable;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkWidgetPaintable* gtkWidgetPaintable, bool ownedRef = false)
	{
		this.gtkWidgetPaintable = gtkWidgetPaintable;
		super(cast(GObject*)gtkWidgetPaintable, ownedRef);
	}

	// add the Paintable capabilities
	mixin PaintableT!(GtkWidgetPaintable);


	/** */
	public static GType getType()
	{
		return gtk_widget_paintable_get_type();
	}

	/**
	 * Creates a new widget paintable observing the given widget.
	 *
	 * Params:
	 *     widget = a `GtkWidget`
	 *
	 * Returns: a new `GtkWidgetPaintable`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget widget)
	{
		auto __p = gtk_widget_paintable_new((widget is null) ? null : widget.getWidgetStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkWidgetPaintable*) __p, true);
	}

	/**
	 * Returns the widget that is observed or %NULL if none.
	 *
	 * Returns: the observed widget.
	 */
	public Widget getWidget()
	{
		auto __p = gtk_widget_paintable_get_widget(gtkWidgetPaintable);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the widget that should be observed.
	 *
	 * Params:
	 *     widget = the widget to observe
	 */
	public void setWidget(Widget widget)
	{
		gtk_widget_paintable_set_widget(gtkWidgetPaintable, (widget is null) ? null : widget.getWidgetStruct());
	}
}
