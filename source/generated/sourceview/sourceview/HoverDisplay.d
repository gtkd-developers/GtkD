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


module sourceview.HoverDisplay;

private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Display for interactive tooltips.
 * 
 * `GtkSourceHoverDisplay` is a [class@Gtk.Widget] that may be populated with widgets
 * to be displayed to the user in interactive tooltips. The children widgets
 * are packed vertically using a [class@Gtk.Box].
 * 
 * Implement the [iface@HoverProvider] interface to be notified of when
 * to populate a `GtkSourceHoverDisplay` on behalf of the user.
 */
public class HoverDisplay : Widget
{
	/** the main Gtk struct */
	protected GtkSourceHoverDisplay* gtkSourceHoverDisplay;

	/** Get the main Gtk struct */
	public GtkSourceHoverDisplay* getHoverDisplayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceHoverDisplay;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceHoverDisplay;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceHoverDisplay* gtkSourceHoverDisplay, bool ownedRef = false)
	{
		this.gtkSourceHoverDisplay = gtkSourceHoverDisplay;
		super(cast(GtkWidget*)gtkSourceHoverDisplay, ownedRef);
	}

	/** */
	public override void insertAfter(Widget child, Widget sibling) {
		gtk_source_hover_display_insert_after(gtkSourceHoverDisplay, (child is null) ? null : child.getWidgetStruct(), (sibling is null) ? null : sibling.getWidgetStruct());
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_source_hover_display_get_type();
	}

	/** */
	public void append(Widget child)
	{
		gtk_source_hover_display_append(gtkSourceHoverDisplay, (child is null) ? null : child.getWidgetStruct());
	}

	/** */
	public void prepend(Widget child)
	{
		gtk_source_hover_display_prepend(gtkSourceHoverDisplay, (child is null) ? null : child.getWidgetStruct());
	}

	/** */
	public void remove(Widget child)
	{
		gtk_source_hover_display_remove(gtkSourceHoverDisplay, (child is null) ? null : child.getWidgetStruct());
	}
}
