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


module sourceview.Gutter;

private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import sourceview.GutterRenderer;
private import sourceview.View;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Gutter object for [class@View].
 * 
 * The `GtkSourceGutter` object represents the left or right gutter of the text
 * view. It is used by [class@View] to draw the line numbers and
 * [class@Mark]s that might be present on a line. By packing
 * additional [class@GutterRenderer] objects in the gutter, you can extend the
 * gutter with your own custom drawings.
 * 
 * To get a `GtkSourceGutter`, use the [method@View.get_gutter] function.
 * 
 * The gutter works very much the same way as cells rendered in a [class@Gtk.TreeView].
 * The concept is similar, with the exception that the gutter does not have an
 * underlying [iface@Gtk.TreeModel]. The builtin line number renderer is at position
 * %GTK_SOURCE_VIEW_GUTTER_POSITION_LINES (-30) and the marks renderer is at
 * %GTK_SOURCE_VIEW_GUTTER_POSITION_MARKS (-20). The gutter sorts the renderers
 * in ascending order, from left to right. So the marks are displayed on the
 * right of the line numbers.
 */
public class Gutter : Widget
{
	/** the main Gtk struct */
	protected GtkSourceGutter* gtkSourceGutter;

	/** Get the main Gtk struct */
	public GtkSourceGutter* getGutterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceGutter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceGutter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceGutter* gtkSourceGutter, bool ownedRef = false)
	{
		this.gtkSourceGutter = gtkSourceGutter;
		super(cast(GtkWidget*)gtkSourceGutter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_gutter_get_type();
	}

	/**
	 * Returns: the associated #GtkSourceView.
	 */
	public View getView()
	{
		auto __p = gtk_source_gutter_get_view(gtkSourceGutter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(View)(cast(GtkSourceView*) __p);
	}

	/**
	 * Insert @renderer into the gutter. If @renderer is yet unowned then gutter
	 * claims its ownership. Otherwise just increases renderer's reference count.
	 * @renderer cannot be already inserted to another gutter.
	 *
	 * Params:
	 *     renderer = a gutter renderer (must inherit from #GtkSourceGutterRenderer).
	 *     position = the renderer position.
	 *
	 * Returns: %TRUE if operation succeeded. Otherwise %FALSE.
	 */
	public bool insert(GutterRenderer renderer, int position)
	{
		return gtk_source_gutter_insert(gtkSourceGutter, (renderer is null) ? null : renderer.getGutterRendererStruct(), position) != 0;
	}

	/** */
	public void remove(GutterRenderer renderer)
	{
		gtk_source_gutter_remove(gtkSourceGutter, (renderer is null) ? null : renderer.getGutterRendererStruct());
	}

	/**
	 * Reorders @renderer in @gutter to new @position.
	 *
	 * Params:
	 *     renderer = a #GtkCellRenderer.
	 *     position = the new renderer position.
	 */
	public void reorder(GutterRenderer renderer, int position)
	{
		gtk_source_gutter_reorder(gtkSourceGutter, (renderer is null) ? null : renderer.getGutterRendererStruct(), position);
	}
}
