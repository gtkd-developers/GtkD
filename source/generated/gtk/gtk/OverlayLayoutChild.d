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


module gtk.OverlayLayoutChild;

private import gtk.LayoutChild;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkLayoutChild` subclass for children in a `GtkOverlayLayout`.
 */
public class OverlayLayoutChild : LayoutChild
{
	/** the main Gtk struct */
	protected GtkOverlayLayoutChild* gtkOverlayLayoutChild;

	/** Get the main Gtk struct */
	public GtkOverlayLayoutChild* getOverlayLayoutChildStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkOverlayLayoutChild;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkOverlayLayoutChild;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkOverlayLayoutChild* gtkOverlayLayoutChild, bool ownedRef = false)
	{
		this.gtkOverlayLayoutChild = gtkOverlayLayoutChild;
		super(cast(GtkLayoutChild*)gtkOverlayLayoutChild, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_overlay_layout_child_get_type();
	}

	/**
	 * Retrieves whether the child is clipped.
	 *
	 * Returns: whether the child is clipped
	 */
	public bool getClipOverlay()
	{
		return gtk_overlay_layout_child_get_clip_overlay(gtkOverlayLayoutChild) != 0;
	}

	/**
	 * Retrieves whether the child is measured.
	 *
	 * Returns: whether the child is measured
	 */
	public bool getMeasure()
	{
		return gtk_overlay_layout_child_get_measure(gtkOverlayLayoutChild) != 0;
	}

	/**
	 * Sets whether to clip this child.
	 *
	 * Params:
	 *     clipOverlay = whether to clip this child
	 */
	public void setClipOverlay(bool clipOverlay)
	{
		gtk_overlay_layout_child_set_clip_overlay(gtkOverlayLayoutChild, clipOverlay);
	}

	/**
	 * Sets whether to measure this child.
	 *
	 * Params:
	 *     measure = whether to measure this child
	 */
	public void setMeasure(bool measure)
	{
		gtk_overlay_layout_child_set_measure(gtkOverlayLayoutChild, measure);
	}
}
