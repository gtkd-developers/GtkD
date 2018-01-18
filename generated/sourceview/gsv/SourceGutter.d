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


module gsv.SourceGutter;

private import gdk.Window;
private import gobject.ObjectG;
private import gsv.SourceGutterRenderer;
private import gsv.SourceView;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;


/** */
public class SourceGutter : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceGutter* gtkSourceGutter;

	/** Get the main Gtk struct */
	public GtkSourceGutter* getSourceGutterStruct(bool transferOwnership = false)
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
		super(cast(GObject*)gtkSourceGutter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_gutter_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use gtk_source_gutter_renderer_get_padding() instead.
	 */
	public void getPadding(int* xpad, int* ypad)
	{
		gtk_source_gutter_get_padding(gtkSourceGutter, xpad, ypad);
	}

	/**
	 * Finds the #GtkSourceGutterRenderer at (x, y).
	 *
	 * Params:
	 *     x = The x position to get identified.
	 *     y = The y position to get identified.
	 *
	 * Returns: the renderer at (x, y) or %NULL.
	 */
	public SourceGutterRenderer getRendererAtPos(int x, int y)
	{
		auto p = gtk_source_gutter_get_renderer_at_pos(gtkSourceGutter, x, y);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceGutterRenderer)(cast(GtkSourceGutterRenderer*) p);
	}

	/**
	 * Returns: the associated #GtkSourceView.
	 *
	 * Since: 3.24
	 */
	public SourceView getView()
	{
		auto p = gtk_source_gutter_get_view(gtkSourceGutter);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceView)(cast(GtkSourceView*) p);
	}

	/**
	 * Get the #GdkWindow of the gutter. The window will only be available when the
	 * gutter has at least one, non-zero width, cell renderer packed.
	 *
	 * Deprecated: Use gtk_text_view_get_window() instead.
	 *
	 * Returns: the #GdkWindow of the gutter, or %NULL
	 *     if the gutter has no window.
	 *
	 * Since: 2.8
	 */
	public Window getWindow()
	{
		auto p = gtk_source_gutter_get_window(gtkSourceGutter);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Returns: the #GtkTextWindowType of @gutter.
	 *
	 * Since: 3.24
	 */
	public GtkTextWindowType getWindowType()
	{
		return gtk_source_gutter_get_window_type(gtkSourceGutter);
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
	 *
	 * Since: 3.0
	 */
	public bool insert(SourceGutterRenderer renderer, int position)
	{
		return gtk_source_gutter_insert(gtkSourceGutter, (renderer is null) ? null : renderer.getSourceGutterRendererStruct(), position) != 0;
	}

	/**
	 * Invalidates the drawable area of the gutter. You can use this to force a
	 * redraw of the gutter if something has changed and needs to be redrawn.
	 *
	 * Since: 2.8
	 */
	public void queueDraw()
	{
		gtk_source_gutter_queue_draw(gtkSourceGutter);
	}

	/**
	 * Removes @renderer from @gutter.
	 *
	 * Params:
	 *     renderer = a #GtkSourceGutterRenderer.
	 *
	 * Since: 2.8
	 */
	public void remove(SourceGutterRenderer renderer)
	{
		gtk_source_gutter_remove(gtkSourceGutter, (renderer is null) ? null : renderer.getSourceGutterRendererStruct());
	}

	/**
	 * Reorders @renderer in @gutter to new @position.
	 *
	 * Params:
	 *     renderer = a #GtkCellRenderer.
	 *     position = the new renderer position.
	 *
	 * Since: 2.8
	 */
	public void reorder(SourceGutterRenderer renderer, int position)
	{
		gtk_source_gutter_reorder(gtkSourceGutter, (renderer is null) ? null : renderer.getSourceGutterRendererStruct(), position);
	}

	/**
	 *
	 *
	 * Deprecated: Use gtk_source_gutter_renderer_set_padding() instead.
	 */
	public void setPadding(int xpad, int ypad)
	{
		gtk_source_gutter_set_padding(gtkSourceGutter, xpad, ypad);
	}
}
