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


module gdk.PopupLayout;

private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * The `GdkPopupLayout` struct contains information that is
 * necessary position a [iface@Gdk.Popup] relative to its parent.
 * 
 * The positioning requires a negotiation with the windowing system,
 * since it depends on external constraints, such as the position of
 * the parent surface, and the screen dimensions.
 * 
 * The basic ingredients are a rectangle on the parent surface,
 * and the anchor on both that rectangle and the popup. The anchors
 * specify a side or corner to place next to each other.
 * 
 * ![Popup anchors](popup-anchors.png)
 * 
 * For cases where placing the anchors next to each other would make
 * the popup extend offscreen, the layout includes some hints for how
 * to resolve this problem. The hints may suggest to flip the anchor
 * position to the other side, or to 'slide' the popup along a side,
 * or to resize it.
 * 
 * ![Flipping popups](popup-flip.png)
 * 
 * ![Sliding popups](popup-slide.png)
 * 
 * These hints may be combined.
 * 
 * Ultimatively, it is up to the windowing system to determine the position
 * and size of the popup. You can learn about the result by calling
 * [method@Gdk.Popup.get_position_x], [method@Gdk.Popup.get_position_y],
 * [method@Gdk.Popup.get_rect_anchor] and [method@Gdk.Popup.get_surface_anchor]
 * after the popup has been presented. This can be used to adjust the rendering.
 * For example, [class@Gtk.Popover] changes its arrow position accordingly.
 * But you have to be careful avoid changing the size of the popover, or it
 * has to be presented again.
 */
public class PopupLayout
{
	/** the main Gtk struct */
	protected GdkPopupLayout* gdkPopupLayout;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkPopupLayout* getPopupLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkPopupLayout;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkPopupLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkPopupLayout* gdkPopupLayout, bool ownedRef = false)
	{
		this.gdkPopupLayout = gdkPopupLayout;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GDK[0]) && ownedRef )
			gdk_popup_layout_unref(gdkPopupLayout);
	}


	/** */
	public static GType getType()
	{
		return gdk_popup_layout_get_type();
	}

	/**
	 * Create a popup layout description.
	 *
	 * Used together with [method@Gdk.Popup.present] to describe how a popup
	 * surface should be placed and behave on-screen.
	 *
	 * @anchor_rect is relative to the top-left corner of the surface's parent.
	 * @rect_anchor and @surface_anchor determine anchor points on @anchor_rect
	 * and surface to pin together.
	 *
	 * The position of @anchor_rect's anchor point can optionally be offset using
	 * [method@Gdk.PopupLayout.set_offset], which is equivalent to offsetting the
	 * position of surface.
	 *
	 * Params:
	 *     anchorRect = the anchor `GdkRectangle` to align @surface with
	 *     rectAnchor = the point on @anchor_rect to align with @surface's anchor point
	 *     surfaceAnchor = the point on @surface to align with @rect's anchor point
	 *
	 * Returns: newly created instance of `GdkPopupLayout`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GdkRectangle* anchorRect, GdkGravity rectAnchor, GdkGravity surfaceAnchor)
	{
		auto __p = gdk_popup_layout_new(anchorRect, rectAnchor, surfaceAnchor);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkPopupLayout*) __p);
	}

	/**
	 * Makes a copy of @layout.
	 *
	 * Returns: a copy of @layout.
	 */
	public PopupLayout copy()
	{
		auto __p = gdk_popup_layout_copy(gdkPopupLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PopupLayout)(cast(GdkPopupLayout*) __p, true);
	}

	/**
	 * Check whether @layout and @other has identical layout properties.
	 *
	 * Params:
	 *     other = another `GdkPopupLayout`
	 *
	 * Returns: %TRUE if @layout and @other have identical layout properties,
	 *     otherwise %FALSE.
	 */
	public bool equal(PopupLayout other)
	{
		return gdk_popup_layout_equal(gdkPopupLayout, (other is null) ? null : other.getPopupLayoutStruct()) != 0;
	}

	/**
	 * Get the `GdkAnchorHints`.
	 *
	 * Returns: the `GdkAnchorHints`
	 */
	public GdkAnchorHints getAnchorHints()
	{
		return gdk_popup_layout_get_anchor_hints(gdkPopupLayout);
	}

	/**
	 * Get the anchor rectangle.
	 *
	 * Returns: The anchor rectangle
	 */
	public GdkRectangle* getAnchorRect()
	{
		return gdk_popup_layout_get_anchor_rect(gdkPopupLayout);
	}

	/**
	 * Retrieves the offset for the anchor rectangle.
	 *
	 * Params:
	 *     dx = return location for the delta X coordinate
	 *     dy = return location for the delta Y coordinate
	 */
	public void getOffset(out int dx, out int dy)
	{
		gdk_popup_layout_get_offset(gdkPopupLayout, &dx, &dy);
	}

	/**
	 * Returns the anchor position on the anchor rectangle.
	 *
	 * Returns: the anchor on the anchor rectangle.
	 */
	public GdkGravity getRectAnchor()
	{
		return gdk_popup_layout_get_rect_anchor(gdkPopupLayout);
	}

	/**
	 * Obtains the shadow widths of this layout.
	 *
	 * Params:
	 *     left = return location for the left shadow width
	 *     right = return location for the right shadow width
	 *     top = return location for the top shadow width
	 *     bottom = return location for the bottom shadow width
	 *
	 * Since: 4.2
	 */
	public void getShadowWidth(out int left, out int right, out int top, out int bottom)
	{
		gdk_popup_layout_get_shadow_width(gdkPopupLayout, &left, &right, &top, &bottom);
	}

	/**
	 * Returns the anchor position on the popup surface.
	 *
	 * Returns: the anchor on the popup surface.
	 */
	public GdkGravity getSurfaceAnchor()
	{
		return gdk_popup_layout_get_surface_anchor(gdkPopupLayout);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of @value.
	 *
	 * Returns: the same @layout
	 */
	public PopupLayout ref_()
	{
		auto __p = gdk_popup_layout_ref(gdkPopupLayout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PopupLayout)(cast(GdkPopupLayout*) __p, true);
	}

	/**
	 * Set new anchor hints.
	 *
	 * The set @anchor_hints determines how @surface will be moved
	 * if the anchor points cause it to move off-screen. For example,
	 * %GDK_ANCHOR_FLIP_X will replace %GDK_GRAVITY_NORTH_WEST with
	 * %GDK_GRAVITY_NORTH_EAST and vice versa if @surface extends
	 * beyond the left or right edges of the monitor.
	 *
	 * Params:
	 *     anchorHints = the new `GdkAnchorHints`
	 */
	public void setAnchorHints(GdkAnchorHints anchorHints)
	{
		gdk_popup_layout_set_anchor_hints(gdkPopupLayout, anchorHints);
	}

	/**
	 * Set the anchor rectangle.
	 *
	 * Params:
	 *     anchorRect = the new anchor rectangle
	 */
	public void setAnchorRect(GdkRectangle* anchorRect)
	{
		gdk_popup_layout_set_anchor_rect(gdkPopupLayout, anchorRect);
	}

	/**
	 * Offset the position of the anchor rectangle with the given delta.
	 *
	 * Params:
	 *     dx = x delta to offset the anchor rectangle with
	 *     dy = y delta to offset the anchor rectangle with
	 */
	public void setOffset(int dx, int dy)
	{
		gdk_popup_layout_set_offset(gdkPopupLayout, dx, dy);
	}

	/**
	 * Set the anchor on the anchor rectangle.
	 *
	 * Params:
	 *     anchor = the new rect anchor
	 */
	public void setRectAnchor(GdkGravity anchor)
	{
		gdk_popup_layout_set_rect_anchor(gdkPopupLayout, anchor);
	}

	/**
	 * Sets the shadow width of the popup.
	 *
	 * The shadow width corresponds to the part of the computed
	 * surface size that would consist of the shadow margin
	 * surrounding the window, would there be any.
	 *
	 * Params:
	 *     left = width of the left part of the shadow
	 *     right = width of the right part of the shadow
	 *     top = height of the top part of the shadow
	 *     bottom = height of the bottom part of the shadow
	 *
	 * Since: 4.2
	 */
	public void setShadowWidth(int left, int right, int top, int bottom)
	{
		gdk_popup_layout_set_shadow_width(gdkPopupLayout, left, right, top, bottom);
	}

	/**
	 * Set the anchor on the popup surface.
	 *
	 * Params:
	 *     anchor = the new popup surface anchor
	 */
	public void setSurfaceAnchor(GdkGravity anchor)
	{
		gdk_popup_layout_set_surface_anchor(gdkPopupLayout, anchor);
	}

	/**
	 * Decreases the reference count of @value.
	 */
	public void unref()
	{
		gdk_popup_layout_unref(gdkPopupLayout);
	}
}
