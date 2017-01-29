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
private import gtk.Bin;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * GtkScrolledWindow is a #GtkBin subclass: it’s a container
 * the accepts a single child widget. GtkScrolledWindow adds scrollbars
 * to the child widget and optionally draws a beveled frame around the
 * child widget.
 * 
 * The scrolled window can work in two ways. Some widgets have native
 * scrolling support; these widgets implement the #GtkScrollable interface.
 * Widgets with native scroll support include #GtkTreeView, #GtkTextView,
 * and #GtkLayout.
 * 
 * For widgets that lack native scrolling support, the #GtkViewport
 * widget acts as an adaptor class, implementing scrollability for child
 * widgets that lack their own scrolling capabilities. Use #GtkViewport
 * to scroll child widgets such as #GtkGrid, #GtkBox, and so on.
 * 
 * If a widget has native scrolling abilities, it can be added to the
 * GtkScrolledWindow with gtk_container_add(). If a widget does not, you
 * must first add the widget to a #GtkViewport, then add the #GtkViewport
 * to the scrolled window. gtk_container_add() will do this for you for
 * widgets that don’t implement #GtkScrollable natively, so you can
 * ignore the presence of the viewport.
 * 
 * If gtk_container_add() has added a #GtkViewport for you, you can remove
 * both your added child widget from the #GtkViewport and the #GtkViewport
 * from the GtkScrolledWindow with either of the calls
 * |[<!-- language="C" -->
 * gtk_container_remove (GTK_CONTAINER (scrolled_window),
 * child_widget);
 * // or
 * gtk_container_remove (GTK_CONTAINER (scrolled_window),
 * gtk_bin_get_child (GTK_BIN (scrolled_window)));
 * ]|
 * 
 * The position of the scrollbars is controlled by the scroll adjustments.
 * See #GtkAdjustment for the fields in an adjustment — for
 * #GtkScrollbar, used by GtkScrolledWindow, the “value” field
 * represents the position of the scrollbar, which must be between the
 * “lower” field and “upper - page_size.” The “page_size” field
 * represents the size of the visible scrollable area. The
 * “step_increment” and “page_increment” fields are used when the user
 * asks to step down (using the small stepper arrows) or page down (using
 * for example the PageDown key).
 * 
 * If a GtkScrolledWindow doesn’t behave quite as you would like, or
 * doesn’t have exactly the right layout, it’s very possible to set up
 * your own scrolling with #GtkScrollbar and for example a #GtkGrid.
 * 
 * # Touch support
 * 
 * GtkScrolledWindow has built-in support for touch devices. When a
 * touchscreen is used, swiping will move the scrolled window, and will
 * expose 'kinetic' behavior. This can be turned off with the
 * #GtkScrolledWindow:kinetic-scrolling property if it is undesired.
 * 
 * GtkScrolledWindow also displays visual 'overshoot' indication when
 * the content is pulled beyond the end, and this situation can be
 * captured with the #GtkScrolledWindow::edge-overshot signal.
 * 
 * If no mouse device is present, the scrollbars will overlayed as
 * narrow, auto-hiding indicators over the content. If traditional
 * scrollbars are desired although no mouse is present, this behaviour
 * can be turned off with the #GtkScrolledWindow:overlay-scrolling
 * property.
 * 
 * # CSS nodes
 * 
 * GtkScrolledWindow has a main CSS node with name scrolledwindow.
 * 
 * It uses subnodes with names overshoot and undershoot to
 * draw the overflow and underflow indications. These nodes get
 * the .left, .right, .top or .bottom style class added depending
 * on where the indication is drawn.
 * 
 * GtkScrolledWindow also sets the positional style classes (.left,
 * .right, .top, .bottom) and style classes related to overlay
 * scrolling (.overlay-indicator, .dragging, .hovering) on its scrollbars.
 * 
 * If both scrollbars are visible, the area where they meet is drawn
 * with a subnode named junction.
 */
public class ScrolledWindow : Bin
{
	/** the main Gtk struct */
	protected GtkScrolledWindow* gtkScrolledWindow;

	/** Get the main Gtk struct */
	public GtkScrolledWindow* getScrolledWindowStruct()
	{
		return gtkScrolledWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkScrolledWindow;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkScrolledWindow = cast(GtkScrolledWindow*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkScrolledWindow* gtkScrolledWindow, bool ownedRef = false)
	{
		this.gtkScrolledWindow = gtkScrolledWindow;
		super(cast(GtkBin*)gtkScrolledWindow, ownedRef);
	}

	/** */
	public this()
	{
		this(null, null);
	}
	
	/** */
	public this(Widget widget)
	{
		this();
		add(widget);
	}
	
	/**
	 * Creates a new Scrolled window and set the policy type
	 * Params:
	 *  hPolicy = the horizontal policy
	 *  vPolicy = the vertical policy
	 */
	this(PolicyType hPolicy, PolicyType vPolicy)
	{
		this();
		setPolicy(hPolicy, vPolicy);
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
	 * The two arguments are the scrolled window’s adjustments; these will be
	 * shared with the scrollbars and the child widget to keep the bars in sync
	 * with the child. Usually you want to pass %NULL for the adjustments, which
	 * will cause the scrolled window to create them for you.
	 *
	 * Params:
	 *     hadjustment = horizontal adjustment
	 *     vadjustment = vertical adjustment
	 *
	 * Return: a new scrolled window
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Adjustment hadjustment, Adjustment vadjustment)
	{
		auto p = gtk_scrolled_window_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkScrolledWindow*) p);
	}

	/**
	 * Used to add children without native scrolling capabilities. This
	 * is simply a convenience function; it is equivalent to adding the
	 * unscrollable child to a viewport, then adding the viewport to the
	 * scrolled window. If a child has native scrolling, use
	 * gtk_container_add() instead of this function.
	 *
	 * The viewport scrolls the child by moving its #GdkWindow, and takes
	 * the size of the child to be the size of its toplevel #GdkWindow.
	 * This will be very wrong for most widgets that support native scrolling;
	 * for example, if you add a widget such as #GtkTreeView with a viewport,
	 * the whole widget will scroll, including the column headings. Thus,
	 * widgets with native scrolling support should not be used with the
	 * #GtkViewport proxy.
	 *
	 * A widget supports scrolling natively if it implements the
	 * #GtkScrollable interface.
	 *
	 * Deprecated: gtk_container_add() will automatically add
	 * a #GtkViewport if the child doesn’t implement #GtkScrollable.
	 *
	 * Params:
	 *     child = the widget you want to scroll
	 */
	public void addWithViewport(Widget child)
	{
		gtk_scrolled_window_add_with_viewport(gtkScrolledWindow, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Return whether button presses are captured during kinetic
	 * scrolling. See gtk_scrolled_window_set_capture_button_press().
	 *
	 * Return: %TRUE if button presses are captured during kinetic scrolling
	 *
	 * Since: 3.4
	 */
	public bool getCaptureButtonPress()
	{
		return gtk_scrolled_window_get_capture_button_press(gtkScrolledWindow) != 0;
	}

	/**
	 * Returns the horizontal scrollbar’s adjustment, used to connect the
	 * horizontal scrollbar to the child widget’s horizontal scroll
	 * functionality.
	 *
	 * Return: the horizontal #GtkAdjustment
	 */
	public Adjustment getHadjustment()
	{
		auto p = gtk_scrolled_window_get_hadjustment(gtkScrolledWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Returns the horizontal scrollbar of @scrolled_window.
	 *
	 * Return: the horizontal scrollbar of the scrolled window.
	 *
	 * Since: 2.8
	 */
	public Widget getHscrollbar()
	{
		auto p = gtk_scrolled_window_get_hscrollbar(gtkScrolledWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns the specified kinetic scrolling behavior.
	 *
	 * Return: the scrolling behavior flags.
	 *
	 * Since: 3.4
	 */
	public bool getKineticScrolling()
	{
		return gtk_scrolled_window_get_kinetic_scrolling(gtkScrolledWindow) != 0;
	}

	/**
	 * Returns the maximum content height set.
	 *
	 * Return: the maximum content height, or -1
	 *
	 * Since: 3.22
	 */
	public int getMaxContentHeight()
	{
		return gtk_scrolled_window_get_max_content_height(gtkScrolledWindow);
	}

	/**
	 * Returns the maximum content width set.
	 *
	 * Return: the maximum content width, or -1
	 *
	 * Since: 3.22
	 */
	public int getMaxContentWidth()
	{
		return gtk_scrolled_window_get_max_content_width(gtkScrolledWindow);
	}

	/**
	 * Gets the minimal content height of @scrolled_window, or -1 if not set.
	 *
	 * Return: the minimal content height
	 *
	 * Since: 3.0
	 */
	public int getMinContentHeight()
	{
		return gtk_scrolled_window_get_min_content_height(gtkScrolledWindow);
	}

	/**
	 * Gets the minimum content width of @scrolled_window, or -1 if not set.
	 *
	 * Return: the minimum content width
	 *
	 * Since: 3.0
	 */
	public int getMinContentWidth()
	{
		return gtk_scrolled_window_get_min_content_width(gtkScrolledWindow);
	}

	/**
	 * Returns whether overlay scrolling is enabled for this scrolled window.
	 *
	 * Return: %TRUE if overlay scrolling is enabled
	 *
	 * Since: 3.16
	 */
	public bool getOverlayScrolling()
	{
		return gtk_scrolled_window_get_overlay_scrolling(gtkScrolledWindow) != 0;
	}

	/**
	 * Gets the placement of the contents with respect to the scrollbars
	 * for the scrolled window. See gtk_scrolled_window_set_placement().
	 *
	 * Return: the current placement value.
	 *
	 *     See also gtk_scrolled_window_set_placement() and
	 *     gtk_scrolled_window_unset_placement().
	 */
	public GtkCornerType getPlacement()
	{
		return gtk_scrolled_window_get_placement(gtkScrolledWindow);
	}

	/**
	 * Retrieves the current policy values for the horizontal and vertical
	 * scrollbars. See gtk_scrolled_window_set_policy().
	 *
	 * Params:
	 *     hscrollbarPolicy = location to store the policy
	 *         for the horizontal scrollbar, or %NULL
	 *     vscrollbarPolicy = location to store the policy
	 *         for the vertical scrollbar, or %NULL
	 */
	public void getPolicy(out GtkPolicyType hscrollbarPolicy, out GtkPolicyType vscrollbarPolicy)
	{
		gtk_scrolled_window_get_policy(gtkScrolledWindow, &hscrollbarPolicy, &vscrollbarPolicy);
	}

	/**
	 * Reports whether the natural height of the child will be calculated and propagated
	 * through the scrolled windows requested natural height.
	 *
	 * Return: whether natural height propagation is enabled.
	 *
	 * Since: 3.22
	 */
	public bool getPropagateNaturalHeight()
	{
		return gtk_scrolled_window_get_propagate_natural_height(gtkScrolledWindow) != 0;
	}

	/**
	 * Reports whether the natural width of the child will be calculated and propagated
	 * through the scrolled windows requested natural width.
	 *
	 * Return: whether natural width propagation is enabled.
	 *
	 * Since: 3.22
	 */
	public bool getPropagateNaturalWidth()
	{
		return gtk_scrolled_window_get_propagate_natural_width(gtkScrolledWindow) != 0;
	}

	/**
	 * Gets the shadow type of the scrolled window. See
	 * gtk_scrolled_window_set_shadow_type().
	 *
	 * Return: the current shadow type
	 */
	public GtkShadowType getShadowType()
	{
		return gtk_scrolled_window_get_shadow_type(gtkScrolledWindow);
	}

	/**
	 * Returns the vertical scrollbar’s adjustment, used to connect the
	 * vertical scrollbar to the child widget’s vertical scroll functionality.
	 *
	 * Return: the vertical #GtkAdjustment
	 */
	public Adjustment getVadjustment()
	{
		auto p = gtk_scrolled_window_get_vadjustment(gtkScrolledWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Returns the vertical scrollbar of @scrolled_window.
	 *
	 * Return: the vertical scrollbar of the scrolled window.
	 *
	 * Since: 2.8
	 */
	public Widget getVscrollbar()
	{
		auto p = gtk_scrolled_window_get_vscrollbar(gtkScrolledWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Changes the behaviour of @scrolled_window with regard to the initial
	 * event that possibly starts kinetic scrolling. When @capture_button_press
	 * is set to %TRUE, the event is captured by the scrolled window, and
	 * then later replayed if it is meant to go to the child widget.
	 *
	 * This should be enabled if any child widgets perform non-reversible
	 * actions on #GtkWidget::button-press-event. If they don't, and handle
	 * additionally handle #GtkWidget::grab-broken-event, it might be better
	 * to set @capture_button_press to %FALSE.
	 *
	 * This setting only has an effect if kinetic scrolling is enabled.
	 *
	 * Params:
	 *     captureButtonPress = %TRUE to capture button presses
	 *
	 * Since: 3.4
	 */
	public void setCaptureButtonPress(bool captureButtonPress)
	{
		gtk_scrolled_window_set_capture_button_press(gtkScrolledWindow, captureButtonPress);
	}

	/**
	 * Sets the #GtkAdjustment for the horizontal scrollbar.
	 *
	 * Params:
	 *     hadjustment = horizontal scroll adjustment
	 */
	public void setHadjustment(Adjustment hadjustment)
	{
		gtk_scrolled_window_set_hadjustment(gtkScrolledWindow, (hadjustment is null) ? null : hadjustment.getAdjustmentStruct());
	}

	/**
	 * Turns kinetic scrolling on or off.
	 * Kinetic scrolling only applies to devices with source
	 * %GDK_SOURCE_TOUCHSCREEN.
	 *
	 * Params:
	 *     kineticScrolling = %TRUE to enable kinetic scrolling
	 *
	 * Since: 3.4
	 */
	public void setKineticScrolling(bool kineticScrolling)
	{
		gtk_scrolled_window_set_kinetic_scrolling(gtkScrolledWindow, kineticScrolling);
	}

	/**
	 * Sets the maximum height that @scrolled_window should keep visible. The
	 * @scrolled_window will grow up to this height before it starts scrolling
	 * the content.
	 *
	 * It is a programming error to set the maximum content height to a value
	 * smaller than #GtkScrolledWindow:min-content-height.
	 *
	 * Params:
	 *     height = the maximum content height
	 *
	 * Since: 3.22
	 */
	public void setMaxContentHeight(int height)
	{
		gtk_scrolled_window_set_max_content_height(gtkScrolledWindow, height);
	}

	/**
	 * Sets the maximum width that @scrolled_window should keep visible. The
	 * @scrolled_window will grow up to this width before it starts scrolling
	 * the content.
	 *
	 * It is a programming error to set the maximum content width to a value
	 * smaller than #GtkScrolledWindow:min-content-width.
	 *
	 * Params:
	 *     width = the maximum content width
	 *
	 * Since: 3.22
	 */
	public void setMaxContentWidth(int width)
	{
		gtk_scrolled_window_set_max_content_width(gtkScrolledWindow, width);
	}

	/**
	 * Sets the minimum height that @scrolled_window should keep visible.
	 * Note that this can and (usually will) be smaller than the minimum
	 * size of the content.
	 *
	 * It is a programming error to set the minimum content height to a
	 * value greater than #GtkScrolledWindow:max-content-height.
	 *
	 * Params:
	 *     height = the minimal content height
	 *
	 * Since: 3.0
	 */
	public void setMinContentHeight(int height)
	{
		gtk_scrolled_window_set_min_content_height(gtkScrolledWindow, height);
	}

	/**
	 * Sets the minimum width that @scrolled_window should keep visible.
	 * Note that this can and (usually will) be smaller than the minimum
	 * size of the content.
	 *
	 * It is a programming error to set the minimum content width to a
	 * value greater than #GtkScrolledWindow:max-content-width.
	 *
	 * Params:
	 *     width = the minimal content width
	 *
	 * Since: 3.0
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
	 *
	 * Since: 3.16
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
	 * Other values in #GtkCornerType are %GTK_CORNER_TOP_RIGHT,
	 * %GTK_CORNER_BOTTOM_LEFT, and %GTK_CORNER_BOTTOM_RIGHT.
	 *
	 * See also gtk_scrolled_window_get_placement() and
	 * gtk_scrolled_window_unset_placement().
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
	 * from the #GtkPolicyType enumeration. If %GTK_POLICY_ALWAYS, the
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
	 * Sets whether the natural height of the child should be calculated and propagated
	 * through the scrolled windows requested natural height.
	 *
	 * Params:
	 *     propagate = whether to propagate natural height
	 *
	 * Since: 3.22
	 */
	public void setPropagateNaturalHeight(bool propagate)
	{
		gtk_scrolled_window_set_propagate_natural_height(gtkScrolledWindow, propagate);
	}

	/**
	 * Sets whether the natural width of the child should be calculated and propagated
	 * through the scrolled windows requested natural width.
	 *
	 * Params:
	 *     propagate = whether to propagate natural width
	 *
	 * Since: 3.22
	 */
	public void setPropagateNaturalWidth(bool propagate)
	{
		gtk_scrolled_window_set_propagate_natural_width(gtkScrolledWindow, propagate);
	}

	/**
	 * Changes the type of shadow drawn around the contents of
	 * @scrolled_window.
	 *
	 * Params:
	 *     type = kind of shadow to draw around scrolled window contents
	 */
	public void setShadowType(GtkShadowType type)
	{
		gtk_scrolled_window_set_shadow_type(gtkScrolledWindow, type);
	}

	/**
	 * Sets the #GtkAdjustment for the vertical scrollbar.
	 *
	 * Params:
	 *     vadjustment = vertical scroll adjustment
	 */
	public void setVadjustment(Adjustment vadjustment)
	{
		gtk_scrolled_window_set_vadjustment(gtkScrolledWindow, (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());
	}

	/**
	 * Unsets the placement of the contents with respect to the scrollbars
	 * for the scrolled window. If no window placement is set for a scrolled
	 * window, it defaults to %GTK_CORNER_TOP_LEFT.
	 *
	 * See also gtk_scrolled_window_set_placement() and
	 * gtk_scrolled_window_get_placement().
	 *
	 * Since: 2.10
	 */
	public void unsetPlacement()
	{
		gtk_scrolled_window_unset_placement(gtkScrolledWindow);
	}

	protected class OnEdgeOvershotDelegateWrapper
	{
		static OnEdgeOvershotDelegateWrapper[] listeners;
		void delegate(GtkPositionType, ScrolledWindow) dlg;
		gulong handlerId;
		
		this(void delegate(GtkPositionType, ScrolledWindow) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnEdgeOvershotDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The ::edge-overshot signal is emitted whenever user initiated scrolling
	 * makes the scrolledwindow firmly surpass (ie. with some edge resistance)
	 * the lower or upper limits defined by the adjustment in that orientation.
	 *
	 * A similar behavior without edge resistance is provided by the
	 * #GtkScrolledWindow::edge-reached signal.
	 *
	 * Note: The @pos argument is LTR/RTL aware, so callers should be aware too
	 * if intending to provide behavior on horizontal edges.
	 *
	 * Params:
	 *     pos = edge side that was hit
	 *
	 * Since: 3.16
	 */
	gulong addOnEdgeOvershot(void delegate(GtkPositionType, ScrolledWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnEdgeOvershotDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"edge-overshot",
			cast(GCallback)&callBackEdgeOvershot,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackEdgeOvershotDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackEdgeOvershot(GtkScrolledWindow* scrolledwindowStruct, GtkPositionType pos, OnEdgeOvershotDelegateWrapper wrapper)
	{
		wrapper.dlg(pos, wrapper.outer);
	}
	
	extern(C) static void callBackEdgeOvershotDestroy(OnEdgeOvershotDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnEdgeReachedDelegateWrapper
	{
		static OnEdgeReachedDelegateWrapper[] listeners;
		void delegate(GtkPositionType, ScrolledWindow) dlg;
		gulong handlerId;
		
		this(void delegate(GtkPositionType, ScrolledWindow) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnEdgeReachedDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The ::edge-reached signal is emitted whenever user-initiated scrolling
	 * makes the scrolledwindow exactly reaches the lower or upper limits
	 * defined by the adjustment in that orientation.
	 *
	 * A similar behavior with edge resistance is provided by the
	 * #GtkScrolledWindow::edge-overshot signal.
	 *
	 * Note: The @pos argument is LTR/RTL aware, so callers should be aware too
	 * if intending to provide behavior on horizontal edges.
	 *
	 * Params:
	 *     pos = edge side that was reached
	 *
	 * Since: 3.16
	 */
	gulong addOnEdgeReached(void delegate(GtkPositionType, ScrolledWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnEdgeReachedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"edge-reached",
			cast(GCallback)&callBackEdgeReached,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackEdgeReachedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackEdgeReached(GtkScrolledWindow* scrolledwindowStruct, GtkPositionType pos, OnEdgeReachedDelegateWrapper wrapper)
	{
		wrapper.dlg(pos, wrapper.outer);
	}
	
	extern(C) static void callBackEdgeReachedDestroy(OnEdgeReachedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMoveFocusOutDelegateWrapper
	{
		static OnMoveFocusOutDelegateWrapper[] listeners;
		void delegate(GtkDirectionType, ScrolledWindow) dlg;
		gulong handlerId;
		
		this(void delegate(GtkDirectionType, ScrolledWindow) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnMoveFocusOutDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The ::move-focus-out signal is a
	 * [keybinding signal][GtkBindingSignal] which gets
	 * emitted when focus is moved away from the scrolled window by a
	 * keybinding. The #GtkWidget::move-focus signal is emitted with
	 * @direction_type on this scrolled windows toplevel parent in the
	 * container hierarchy. The default bindings for this signal are
	 * `Tab + Ctrl` and `Tab + Ctrl + Shift`.
	 *
	 * Params:
	 *     directionType = either %GTK_DIR_TAB_FORWARD or
	 *         %GTK_DIR_TAB_BACKWARD
	 */
	gulong addOnMoveFocusOut(void delegate(GtkDirectionType, ScrolledWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMoveFocusOutDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"move-focus-out",
			cast(GCallback)&callBackMoveFocusOut,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMoveFocusOutDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMoveFocusOut(GtkScrolledWindow* scrolledwindowStruct, GtkDirectionType directionType, OnMoveFocusOutDelegateWrapper wrapper)
	{
		wrapper.dlg(directionType, wrapper.outer);
	}
	
	extern(C) static void callBackMoveFocusOutDestroy(OnMoveFocusOutDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnScrollChildDelegateWrapper
	{
		static OnScrollChildDelegateWrapper[] listeners;
		bool delegate(GtkScrollType, bool, ScrolledWindow) dlg;
		gulong handlerId;
		
		this(bool delegate(GtkScrollType, bool, ScrolledWindow) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnScrollChildDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The ::scroll-child signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when a keybinding that scrolls is pressed.
	 * The horizontal or vertical adjustment is updated which triggers a
	 * signal that the scrolled windows child may listen to and scroll itself.
	 *
	 * Params:
	 *     scroll = a #GtkScrollType describing how much to scroll
	 *     horizontal = whether the keybinding scrolls the child
	 *         horizontally or not
	 */
	gulong addOnScrollChild(bool delegate(GtkScrollType, bool, ScrolledWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnScrollChildDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"scroll-child",
			cast(GCallback)&callBackScrollChild,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackScrollChildDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static int callBackScrollChild(GtkScrolledWindow* scrolledwindowStruct, GtkScrollType scroll, bool horizontal, OnScrollChildDelegateWrapper wrapper)
	{
		return wrapper.dlg(scroll, horizontal, wrapper.outer);
	}
	
	extern(C) static void callBackScrollChildDestroy(OnScrollChildDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
