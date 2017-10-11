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


module gtk.Accessible;

private import atk.ObjectAtk;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkAccessible class is the base class for accessible
 * implementations for #GtkWidget subclasses. It is a thin
 * wrapper around #AtkObject, which adds facilities for associating
 * a widget with its accessible object.
 * 
 * An accessible implementation for a third-party widget should
 * derive from #GtkAccessible and implement the suitable interfaces
 * from ATK, such as #AtkText or #AtkSelection. To establish
 * the connection between the widget class and its corresponding
 * acccessible implementation, override the get_accessible vfunc
 * in #GtkWidgetClass.
 */
public class Accessible : ObjectAtk
{
	/** the main Gtk struct */
	protected GtkAccessible* gtkAccessible;

	/** Get the main Gtk struct */
	public GtkAccessible* getAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAccessible* gtkAccessible, bool ownedRef = false)
	{
		this.gtkAccessible = gtkAccessible;
		super(cast(AtkObject*)gtkAccessible, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_accessible_get_type();
	}

	/**
	 * This function specifies the callback function to be called
	 * when the widget corresponding to a GtkAccessible is destroyed.
	 *
	 * Deprecated: Use gtk_accessible_set_widget() and its vfuncs.
	 */
	public void connectWidgetDestroyed()
	{
		gtk_accessible_connect_widget_destroyed(gtkAccessible);
	}

	/**
	 * Gets the #GtkWidget corresponding to the #GtkAccessible.
	 * The returned widget does not have a reference added, so
	 * you do not need to unref it.
	 *
	 * Returns: pointer to the #GtkWidget
	 *     corresponding to the #GtkAccessible, or %NULL.
	 *
	 * Since: 2.22
	 */
	public Widget getWidget()
	{
		auto p = gtk_accessible_get_widget(gtkAccessible);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Sets the #GtkWidget corresponding to the #GtkAccessible.
	 *
	 * @accessible will not hold a reference to @widget.
	 * It is the caller’s responsibility to ensure that when @widget
	 * is destroyed, the widget is unset by calling this function
	 * again with @widget set to %NULL.
	 *
	 * Params:
	 *     widget = a #GtkWidget or %NULL to unset
	 *
	 * Since: 2.22
	 */
	public void setWidget(Widget widget)
	{
		gtk_accessible_set_widget(gtkAccessible, (widget is null) ? null : widget.getWidgetStruct());
	}
}
