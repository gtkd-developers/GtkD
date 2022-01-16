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


module gtk.ScrolledWindow;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Adjustment;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkScrolledWindow` is a container that makes its child scrollable.
 * 
 * It does so using either internally added scrollbars or externally
 * associated adjustments, and optionally draws a frame around the child.
 * 
 * Widgets with native scrolling support, i.e. those whose classes implement
 * the [iface@Gtk.Scrollable] interface, are added directly. For other types
 * of widget, the class [class@Gtk.Viewport] acts as an adaptor, giving
 * scrollability to other widgets. [method@Gtk.ScrolledWindow.set_child]
 * intelligently accounts for whether or not the added child is a `GtkScrollable`.
 * If it isn’t, then it wraps the child in a `GtkViewport`. Therefore, you can
 * just add any child widget and not worry about the details.
 * 
 * If [method@Gtk.ScrolledWindow.set_child] has added a `GtkViewport` for you,
 * you can remove both your added child widget from the `GtkViewport`, and the
 * `GtkViewport` from the `GtkScrolledWindow`, like this:
 * 
 * ```c
 * GtkWidget *scrolled_window = gtk_scrolled_window_new ();
 * GtkWidget *child_widget = gtk_button_new ();
 * 
 * // GtkButton is not a GtkScrollable, so GtkScrolledWindow will automatically
 * // add a GtkViewport.
 * gtk_box_append (GTK_BOX (scrolled_window), child_widget);
 * 
 * // Either of these will result in child_widget being unparented:
 * gtk_box_remove (GTK_BOX (scrolled_window), child_widget);
 * // or
 * gtk_box_remove (GTK_BOX (scrolled_window),
 * gtk_bin_get_child (GTK_BIN (scrolled_window)));
 * ```
 * 
 * Unless [property@Gtk.ScrolledWindow:hscrollbar-policy] and
 * [property@Gtk.ScrolledWindow:vscrollbar-policy] are %GTK_POLICY_NEVER or
 * %GTK_POLICY_EXTERNAL, `GtkScrolledWindow` adds internal `GtkScrollbar` widgets
 * around its child. The scroll position of the child, and if applicable the
 * scrollbars, is controlled by the [property@Gtk.ScrolledWindow:hadjustment]
 * and [property@Gtk.ScrolledWindow:vadjustment] that are associated with the
 * `GtkScrolledWindow`. See the docs on [class@Gtk.Scrollbar] for the details,
 * but note that the “step_increment” and “page_increment” fields are only
 * effective if the policy causes scrollbars to be present.
 * 
 * If a `GtkScrolledWindow` doesn’t behave quite as you would like, or
 * doesn’t have exactly the right layout, it’s very possible to set up
 * your own scrolling with `GtkScrollbar` and for example a `GtkGrid`.
 * 
 * # Touch support
 * 
 * `GtkScrolledWindow` has built-in support for touch devices. When a
 * touchscreen is used, swiping will move the scrolled window, and will
 * expose 'kinetic' behavior. This can be turned off with the
 * [property@Gtk.ScrolledWindow:kinetic-scrolling] property if it is undesired.
 * 
 * `GtkScrolledWindow` also displays visual 'overshoot' indication when
 * the content is pulled beyond the end, and this situation can be
 * captured with the [signal@Gtk.ScrolledWindow::edge-overshot] signal.
 * 
 * If no mouse device is present, the scrollbars will overlaid as
 * narrow, auto-hiding indicators over the content. If traditional
 * scrollbars are desired although no mouse is present, this behaviour
 * can be turned off with the [property@Gtk.ScrolledWindow:overlay-scrolling]
 * property.
 * 
 * # CSS nodes
 * 
 * `GtkScrolledWindow` has a main CSS node with name scrolledwindow.
 * It gets a .frame style class added when [property@Gtk.ScrolledWindow:has-frame]
 * is %TRUE.
 * 
 * It uses subnodes with names overshoot and undershoot to draw the overflow
 * and underflow indications. These nodes get the .left, .right, .top or .bottom
 * style class added depending on where the indication is drawn.
 * 
 * `GtkScrolledWindow` also sets the positional style classes (.left, .right,
 * .top, .bottom) and style classes related to overlay scrolling
 * (.overlay-indicator, .dragging, .hovering) on its scrollbars.
 * 
 * If both scrollbars are visible, the area where they meet is drawn
 * with a subnode named junction.
 * 
 * # Accessibility
 * 
 * `GtkScrolledWindow` uses the %GTK_ACCESSIBLE_ROLE_GROUP role.
 */
public class ScrolledWindow : Widget
{
	/** the main Gtk struct */
	protected GtkScrolledWindow* gtkScrolledWindow;

	/** Get the main Gtk struct */
	public GtkScrolledWindow* getScrolledWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkScrolledWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkScrolledWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkScrolledWindow* gtkScrolledWindow, bool ownedRef = false)
	{
		this.gtkScrolledWindow = gtkScrolledWindow;
		super(cast(GtkWidget*)gtkScrolledWindow, ownedRef);
	}

	/** */
	public this(Widget widget)
	{
		this();
		setChild(widget);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_scrolled_window_get_type();
	}

	/**
	 * Creates a new scrolled window.
	 *
	 * Returns: a new scrolled window
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_scrolled_window_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkScrolledWindow*) __p);
	}

	/**
	 * Gets the child widget of @scrolled_window.
	 *
	 * Returns: the child widget of @scrolled_window
	 */
	public Widget getChild()
	{
		auto __p = gtk_scrolled_window_get_child(gtkScrolledWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the horizontal scrollbar’s adjustment.
	 *
	 * This is the adjustment used to connect the horizontal scrollbar
	 * to the child widget’s horizontal scroll functionality.
	 *
	 * Returns: the horizontal `GtkAdjustment`
	 */
	public Adjustment getHadjustment()
	{
		auto __p = gtk_scrolled_window_get_hadjustment(gtkScrolledWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) __p);
	}

	/**
	 * Gets whether the scrolled window draws a frame.
	 *
	 * Returns: %TRUE if the @scrolled_window has a frame
	 */
	public bool getHasFrame()
	{
		return gtk_scrolled_window_get_has_frame(gtkScrolledWindow) != 0;
	}

	/**
	 * Returns the horizontal scrollbar of @scrolled_window.
	 *
	 * Returns: the horizontal scrollbar of the scrolled window.
	 */
	public Widget getHscrollbar()
	{
		auto __p = gtk_scrolled_window_get_hscrollbar(gtkScrolledWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the specified kinetic scrolling behavior.
	 *
	 * Returns: the scrolling behavior flags.
	 */
	public bool getKineticScrolling()
	{
		return gtk_scrolled_window_get_kinetic_scrolling(gtkScrolledWindow) != 0;
	}

	/**
	 * Returns the maximum content height set.
	 *
	 * Returns: the maximum content height, or -1
	 */
	public int getMaxContentHeight()
	{
		return gtk_scrolled_window_get_max_content_height(gtkScrolledWindow);
	}

	/**
	 * Returns the maximum content width set.
	 *
	 * Returns: the maximum content width, or -1
	 */
	public int getMaxContentWidth()
	{
		return gtk_scrolled_window_get_max_content_width(gtkScrolledWindow);
	}

	/**
	 * Gets the minimal content height of @scrolled_window.
	 *
	 * Returns: the minimal content height
	 */
	public int getMinContentHeight()
	{
		return gtk_scrolled_window_get_min_content_height(gtkScrolledWindow);
	}

	/**
	 * Gets the minimum content width of @scrolled_window.
	 *
	 * Returns: the minimum content width
	 */
	public int getMinContentWidth()
	{
		return gtk_scrolled_window_get_min_content_width(gtkScrolledWindow);
	}

	/**
	 * Returns whether overlay scrolling is enabled for this scrolled window.
	 *
	 * Returns: %TRUE if overlay scrolling is enabled
	 */
	public bool getOverlayScrolling()
	{
		return gtk_scrolled_window_get_overlay_scrolling(gtkScrolledWindow) != 0;
	}

	/**
	 * Gets the placement of the contents with respect to the scrollbars.
	 *
	 * Returns: the current placement value.
	 */
	public GtkCornerType getPlacement()
	{
		return gtk_scrolled_window_get_placement(gtkScrolledWindow);
	}

	/**
	 * Retrieves the current policy values for the horizontal and vertical
	 * scrollbars.
	 *
	 * See [method@Gtk.ScrolledWindow.set_policy].
	 *
	 * Params:
	 *     hscrollbarPolicy = location to store the policy
	 *         for the horizontal scrollbar
	 *     vscrollbarPolicy = location to store the policy
	 *         for the vertical scrollbar
	 */
	public void getPolicy(out GtkPolicyType hscrollbarPolicy, out GtkPolicyType vscrollbarPolicy)
	{
		gtk_scrolled_window_get_policy(gtkScrolledWindow, &hscrollbarPolicy, &vscrollbarPolicy);
	}

	/**
	 * Reports whether the natural height of the child will be calculated
	 * and propagated through the scrolled window’s requested natural height.
	 *
	 * Returns: whether natural height propagation is enabled.
	 */
	public bool getPropagateNaturalHeight()
	{
		return gtk_scrolled_window_get_propagate_natural_height(gtkScrolledWindow) != 0;
	}

	/**
	 * Reports whether the natural width of the child will be calculated
	 * and propagated through the scrolled window’s requested natural width.
	 *
	 * Returns: whether natural width propagation is enabled.
	 */
	public bool getPropagateNaturalWidth()
	{
		return gtk_scrolled_window_get_propagate_natural_width(gtkScrolledWindow) != 0;
	}

	/**
	 * Returns the vertical scrollbar’s adjustment.
	 *
	 * This is the adjustment used to connect the vertical
	 * scrollbar to the child widget’s vertical scroll functionality.
	 *
	 * Returns: the vertical `GtkAdjustment`
	 */
	public Adjustment getVadjustment()
	{
		auto __p = gtk_scrolled_window_get_vadjustment(gtkScrolledWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) __p);
	}

	/**
	 * Returns the vertical scrollbar of @scrolled_window.
	 *
	 * Returns: the vertical scrollbar of the scrolled window.
	 */
	public Widget getVscrollbar()
	{
		auto __p = gtk_scrolled_window_get_vscrollbar(gtkScrolledWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the child widget of @scrolled_window.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_scrolled_window_set_child(gtkScrolledWindow, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the `GtkAdjustment` for the horizontal scrollbar.
	 *
	 * Params:
	 *     hadjustment = the `GtkAdjustment` to use, or %NULL to create a new one
	 */
	public void setHadjustment(Adjustment hadjustment)
	{
		gtk_scrolled_window_set_hadjustment(gtkScrolledWindow, (hadjustment is null) ? null : hadjustment.getAdjustmentStruct());
	}

	/**
	 * Changes the frame drawn around the contents of @scrolled_window.
	 *
	 * Params:
	 *     hasFrame = whether to draw a frame around scrolled window contents
	 */
	public void setHasFrame(bool hasFrame)
	{
		gtk_scrolled_window_set_has_frame(gtkScrolledWindow, hasFrame);
	}

	/**
	 * Turns kinetic scrolling on or off.
	 *
	 * Kinetic scrolling only applies to devices with source
	 * %GDK_SOURCE_TOUCHSCREEN.
	 *
	 * Params:
	 *     kineticScrolling = %TRUE to enable kinetic scrolling
	 */
	public void setKineticScrolling(bool kineticScrolling)
	{
		gtk_scrolled_window_set_kinetic_scrolling(gtkScrolledWindow, kineticScrolling);
	}

	/**
	 * Sets the maximum height that @scrolled_window should keep visible.
	 *
	 * The @scrolled_window will grow up to this height before it starts
	 * scrolling the content.
	 *
	 * It is a programming error to set the maximum content height to a value
	 * smaller than [property@Gtk.ScrolledWindow:min-content-height].
	 *
	 * Params:
	 *     height = the maximum content height
	 */
	public void setMaxContentHeight(int height)
	{
		gtk_scrolled_window_set_max_content_height(gtkScrolledWindow, height);
	}

	/**
	 * Sets the maximum width that @scrolled_window should keep visible.
	 *
	 * The @scrolled_window will grow up to this width before it starts
	 * scrolling the content.
	 *
	 * It is a programming error to set the maximum content width to a
	 * value smaller than [property@Gtk.ScrolledWindow:min-content-width].
	 *
	 * Params:
	 *     width = the maximum content width
	 */
	public void setMaxContentWidth(int width)
	{
		gtk_scrolled_window_set_max_content_width(gtkScrolledWindow, width);
	}

	/**
	 * Sets the minimum height that @scrolled_window should keep visible.
	 *
	 * Note that this can and (usually will) be smaller than the minimum
	 * size of the content.
	 *
	 * It is a programming error to set the minimum content height to a
	 * value greater than [property@Gtk.ScrolledWindow:max-content-height].
	 *
	 * Params:
	 *     height = the minimal content height
	 */
	public void setMinContentHeight(int height)
	{
		gtk_scrolled_window_set_min_content_height(gtkScrolledWindow, height);
	}

	/**
	 * Sets the minimum width that @scrolled_window should keep visible.
	 *
	 * Note that this can and (usually will) be smaller than the minimum
	 * size of the content.
	 *
	 * It is a programming error to set the minimum content width to a
	 * value greater than [property@Gtk.ScrolledWindow:max-content-width].
	 *
	 * Params:
	 *     width = the minimal content width
	 */
	public void setMinContentWidth(int width)
	{
		gtk_scrolled_window_set_min_content_width(gtkScrolledWindow, width);
	}

	/**
	 * Enables or disables overlay scrolling for this scrolled window.
	 *
	 * Params:
	 *     overlayScrolling = whether to enable overlay scrolling
	 */
	public void setOverlayScrolling(bool overlayScrolling)
	{
		gtk_scrolled_window_set_overlay_scrolling(gtkScrolledWindow, overlayScrolling);
	}

	/**
	 * Sets the placement of the contents with respect to the scrollbars
	 * for the scrolled window.
	 *
	 * The default is %GTK_CORNER_TOP_LEFT, meaning the child is
	 * in the top left, with the scrollbars underneath and to the right.
	 * Other values in [enum@Gtk.CornerType] are %GTK_CORNER_TOP_RIGHT,
	 * %GTK_CORNER_BOTTOM_LEFT, and %GTK_CORNER_BOTTOM_RIGHT.
	 *
	 * See also [method@Gtk.ScrolledWindow.get_placement] and
	 * [method@Gtk.ScrolledWindow.unset_placement].
	 *
	 * Params:
	 *     windowPlacement = position of the child window
	 */
	public void setPlacement(GtkCornerType windowPlacement)
	{
		gtk_scrolled_window_set_placement(gtkScrolledWindow, windowPlacement);
	}

	/**
	 * Sets the scrollbar policy for the horizontal and vertical scrollbars.
	 *
	 * The policy determines when the scrollbar should appear; it is a value
	 * from the [enum@Gtk.PolicyType] enumeration. If %GTK_POLICY_ALWAYS, the
	 * scrollbar is always present; if %GTK_POLICY_NEVER, the scrollbar is
	 * never present; if %GTK_POLICY_AUTOMATIC, the scrollbar is present only
	 * if needed (that is, if the slider part of the bar would be smaller
	 * than the trough — the display is larger than the page size).
	 *
	 * Params:
	 *     hscrollbarPolicy = policy for horizontal bar
	 *     vscrollbarPolicy = policy for vertical bar
	 */
	public void setPolicy(GtkPolicyType hscrollbarPolicy, GtkPolicyType vscrollbarPolicy)
	{
		gtk_scrolled_window_set_policy(gtkScrolledWindow, hscrollbarPolicy, vscrollbarPolicy);
	}

	/**
	 * Sets whether the natural height of the child should be calculated
	 * and propagated through the scrolled window’s requested natural height.
	 *
	 * Params:
	 *     propagate = whether to propagate natural height
	 */
	public void setPropagateNaturalHeight(bool propagate)
	{
		gtk_scrolled_window_set_propagate_natural_height(gtkScrolledWindow, propagate);
	}

	/**
	 * Sets whether the natural width of the child should be calculated
	 * and propagated through the scrolled window’s requested natural width.
	 *
	 * Params:
	 *     propagate = whether to propagate natural width
	 */
	public void setPropagateNaturalWidth(bool propagate)
	{
		gtk_scrolled_window_set_propagate_natural_width(gtkScrolledWindow, propagate);
	}

	/**
	 * Sets the `GtkAdjustment` for the vertical scrollbar.
	 *
	 * Params:
	 *     vadjustment = the `GtkAdjustment` to use, or %NULL to create a new one
	 */
	public void setVadjustment(Adjustment vadjustment)
	{
		gtk_scrolled_window_set_vadjustment(gtkScrolledWindow, (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());
	}

	/**
	 * Unsets the placement of the contents with respect to the scrollbars.
	 *
	 * If no window placement is set for a scrolled window,
	 * it defaults to %GTK_CORNER_TOP_LEFT.
	 */
	public void unsetPlacement()
	{
		gtk_scrolled_window_unset_placement(gtkScrolledWindow);
	}

	/**
	 * Emitted whenever user initiated scrolling makes the scrolled
	 * window firmly surpass the limits defined by the adjustment
	 * in that orientation.
	 *
	 * A similar behavior without edge resistance is provided by the
	 * [signal@Gtk.ScrolledWindow::edge-reached] signal.
	 *
	 * Note: The @pos argument is LTR/RTL aware, so callers should be
	 * aware too if intending to provide behavior on horizontal edges.
	 *
	 * Params:
	 *     pos = edge side that was hit
	 */
	gulong addOnEdgeOvershot(void delegate(GtkPositionType, ScrolledWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "edge-overshot", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever user-initiated scrolling makes the scrolled
	 * window exactly reach the lower or upper limits defined by the
	 * adjustment in that orientation.
	 *
	 * A similar behavior with edge resistance is provided by the
	 * [signal@Gtk.ScrolledWindow::edge-overshot] signal.
	 *
	 * Note: The @pos argument is LTR/RTL aware, so callers should be
	 * aware too if intending to provide behavior on horizontal edges.
	 *
	 * Params:
	 *     pos = edge side that was reached
	 */
	gulong addOnEdgeReached(void delegate(GtkPositionType, ScrolledWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "edge-reached", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when focus is moved away from the scrolled window by a
	 * keybinding.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default bindings for this signal are
	 * `Ctrl + Tab` to move forward and `Ctrl + Shift + Tab` to
	 * move backward.
	 *
	 * Params:
	 *     directionType = either %GTK_DIR_TAB_FORWARD or
	 *         %GTK_DIR_TAB_BACKWARD
	 */
	gulong addOnMoveFocusOut(void delegate(GtkDirectionType, ScrolledWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-focus-out", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a keybinding that scrolls is pressed.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The horizontal or vertical adjustment is updated which triggers a
	 * signal that the scrolled window’s child may listen to and scroll itself.
	 *
	 * Params:
	 *     scroll = a `GtkScrollType` describing how much to scroll
	 *     horizontal = whether the keybinding scrolls the child
	 *         horizontally or not
	 */
	gulong addOnScrollChild(bool delegate(GtkScrollType, bool, ScrolledWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "scroll-child", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
