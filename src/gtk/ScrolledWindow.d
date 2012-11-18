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
 * inFile  = GtkScrolledWindow.html
 * outPack = gtk
 * outFile = ScrolledWindow
 * strct   = GtkScrolledWindow
 * realStrct=
 * ctorStrct=
 * clss    = ScrolledWindow
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_scrolled_window_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Adjustment
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ScrolledWindow;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtk.Adjustment;
private import gtk.Widget;



private import gtk.Bin;

/**
 * Description
 * GtkScrolledWindow is a GtkBin subclass: it's a container
 * the accepts a single child widget. GtkScrolledWindow adds scrollbars
 * to the child widget and optionally draws a beveled frame around the
 * child widget.
 * The scrolled window can work in two ways. Some widgets have native
 * scrolling support; these widgets implement the GtkScrollable interface.
 * Widgets with native scroll support include GtkTreeView, GtkTextView,
 * and GtkLayout.
 * For widgets that lack native scrolling support, the GtkViewport
 * widget acts as an adaptor class, implementing scrollability for child
 * widgets that lack their own scrolling capabilities. Use GtkViewport
 * to scroll child widgets such as GtkGrid, GtkBox, and so on.
 * If a widget has native scrolling abilities, it can be added to the
 * GtkScrolledWindow with gtk_container_add(). If a widget does not, you
 * must first add the widget to a GtkViewport, then add the GtkViewport
 * to the scrolled window. The convenience function
 * gtk_scrolled_window_add_with_viewport() does exactly this, so you can
 * ignore the presence of the viewport.
 * The position of the scrollbars is controlled by the scroll
 * adjustments. See GtkAdjustment for the fields in an adjustment - for
 * GtkScrollbar, used by GtkScrolledWindow, the "value" field
 * represents the position of the scrollbar, which must be between the
 * "lower" field and "upper - page_size." The "page_size" field
 * represents the size of the visible scrollable area. The
 * "step_increment" and "page_increment" fields are used when the user
 * asks to step down (using the small stepper arrows) or page down (using
 * for example the PageDown key).
 * If a GtkScrolledWindow doesn't behave quite as you would like, or
 * doesn't have exactly the right layout, it's very possible to set up
 * your own scrolling with GtkScrollbar and for example a GtkGrid.
 */
public class ScrolledWindow : Bin
{
	
	/** the main Gtk struct */
	protected GtkScrolledWindow* gtkScrolledWindow;
	
	
	public GtkScrolledWindow* getScrolledWindowStruct()
	{
		return gtkScrolledWindow;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkScrolledWindow;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkScrolledWindow* gtkScrolledWindow)
	{
		super(cast(GtkBin*)gtkScrolledWindow);
		this.gtkScrolledWindow = gtkScrolledWindow;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkScrolledWindow = cast(GtkScrolledWindow*)obj;
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
		addWithViewport(widget);
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
	int[string] connectedSignals;
	
	void delegate(GtkDirectionType, ScrolledWindow)[] onMoveFocusOutListeners;
	/**
	 * The ::move-focus-out signal is a
	 * keybinding signal
	 * which gets emitted when focus is moved away from the scrolled
	 * window by a keybinding.
	 * The "move-focus" signal is emitted with direction_type
	 * on this scrolled windows toplevel parent in the container hierarchy.
	 * The default bindings for this signal are
	 * Tab+Ctrl
	 * and
	 * Tab+Ctrl+Shift.
	 */
	void addOnMoveFocusOut(void delegate(GtkDirectionType, ScrolledWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-focus-out" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-focus-out",
			cast(GCallback)&callBackMoveFocusOut,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-focus-out"] = 1;
		}
		onMoveFocusOutListeners ~= dlg;
	}
	extern(C) static void callBackMoveFocusOut(GtkScrolledWindow* scrolledWindowStruct, GtkDirectionType directionType, ScrolledWindow _scrolledWindow)
	{
		foreach ( void delegate(GtkDirectionType, ScrolledWindow) dlg ; _scrolledWindow.onMoveFocusOutListeners )
		{
			dlg(directionType, _scrolledWindow);
		}
	}
	
	bool delegate(GtkScrollType, gboolean, ScrolledWindow)[] onScrollChildListeners;
	/**
	 * The ::scroll-child signal is a
	 * keybinding signal
	 * which gets emitted when a keybinding that scrolls is pressed.
	 * The horizontal or vertical adjustment is updated which triggers a
	 * signal that the scrolled windows child may listen to and scroll itself.
	 * See Also
	 * GtkScrollable, GtkViewport, GtkAdjustment
	 */
	void addOnScrollChild(bool delegate(GtkScrollType, gboolean, ScrolledWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("scroll-child" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"scroll-child",
			cast(GCallback)&callBackScrollChild,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["scroll-child"] = 1;
		}
		onScrollChildListeners ~= dlg;
	}
	extern(C) static gboolean callBackScrollChild(GtkScrolledWindow* scrolledWindowStruct, GtkScrollType scroll, gboolean horizontal, ScrolledWindow _scrolledWindow)
	{
		foreach ( bool delegate(GtkScrollType, gboolean, ScrolledWindow) dlg ; _scrolledWindow.onScrollChildListeners )
		{
			if ( dlg(scroll, horizontal, _scrolledWindow) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new scrolled window.
	 * The two arguments are the scrolled window's adjustments; these will be
	 * shared with the scrollbars and the child widget to keep the bars in sync
	 * with the child. Usually you want to pass NULL for the adjustments, which
	 * will cause the scrolled window to create them for you.
	 * Params:
	 * hadjustment = horizontal adjustment. [allow-none]
	 * vadjustment = vertical adjustment. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Adjustment hadjustment, Adjustment vadjustment)
	{
		// GtkWidget * gtk_scrolled_window_new (GtkAdjustment *hadjustment,  GtkAdjustment *vadjustment);
		auto p = gtk_scrolled_window_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_scrolled_window_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct())");
		}
		this(cast(GtkScrolledWindow*) p);
	}
	
	/**
	 * Returns the horizontal scrollbar's adjustment, used to connect the
	 * horizontal scrollbar to the child widget's horizontal scroll
	 * functionality.
	 * Returns: the horizontal GtkAdjustment. [transfer none]
	 */
	public Adjustment getHadjustment()
	{
		// GtkAdjustment * gtk_scrolled_window_get_hadjustment (GtkScrolledWindow *scrolled_window);
		auto p = gtk_scrolled_window_get_hadjustment(gtkScrolledWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Returns the vertical scrollbar's adjustment, used to connect the
	 * vertical scrollbar to the child widget's vertical scroll functionality.
	 * Returns: the vertical GtkAdjustment. [transfer none]
	 */
	public Adjustment getVadjustment()
	{
		// GtkAdjustment * gtk_scrolled_window_get_vadjustment (GtkScrolledWindow *scrolled_window);
		auto p = gtk_scrolled_window_get_vadjustment(gtkScrolledWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Returns the horizontal scrollbar of scrolled_window.
	 * Since 2.8
	 * Returns: the horizontal scrollbar of the scrolled window, or NULL if it does not have one. [transfer none]
	 */
	public Widget getHscrollbar()
	{
		// GtkWidget * gtk_scrolled_window_get_hscrollbar (GtkScrolledWindow *scrolled_window);
		auto p = gtk_scrolled_window_get_hscrollbar(gtkScrolledWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Returns the vertical scrollbar of scrolled_window.
	 * Since 2.8
	 * Returns: the vertical scrollbar of the scrolled window, or NULL if it does not have one. [transfer none]
	 */
	public Widget getVscrollbar()
	{
		// GtkWidget * gtk_scrolled_window_get_vscrollbar (GtkScrolledWindow *scrolled_window);
		auto p = gtk_scrolled_window_get_vscrollbar(gtkScrolledWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Sets the scrollbar policy for the horizontal and vertical scrollbars.
	 * The policy determines when the scrollbar should appear; it is a value
	 * from the GtkPolicyType enumeration. If GTK_POLICY_ALWAYS, the
	 * scrollbar is always present; if GTK_POLICY_NEVER, the scrollbar is
	 * never present; if GTK_POLICY_AUTOMATIC, the scrollbar is present only
	 * if needed (that is, if the slider part of the bar would be smaller
	 * than the trough - the display is larger than the page size).
	 * Params:
	 * hscrollbarPolicy = policy for horizontal bar
	 * vscrollbarPolicy = policy for vertical bar
	 */
	public void setPolicy(GtkPolicyType hscrollbarPolicy, GtkPolicyType vscrollbarPolicy)
	{
		// void gtk_scrolled_window_set_policy (GtkScrolledWindow *scrolled_window,  GtkPolicyType hscrollbar_policy,  GtkPolicyType vscrollbar_policy);
		gtk_scrolled_window_set_policy(gtkScrolledWindow, hscrollbarPolicy, vscrollbarPolicy);
	}
	
	/**
	 * Used to add children without native scrolling capabilities. This
	 * is simply a convenience function; it is equivalent to adding the
	 * unscrollable child to a viewport, then adding the viewport to the
	 * scrolled window. If a child has native scrolling, use
	 * gtk_container_add() instead of this function.
	 * The viewport scrolls the child by moving its GdkWindow, and takes
	 * the size of the child to be the size of its toplevel GdkWindow.
	 * This will be very wrong for most widgets that support native scrolling;
	 * for example, if you add a widget such as GtkTreeView with a viewport,
	 * the whole widget will scroll, including the column headings. Thus,
	 * widgets with native scrolling support should not be used with the
	 * GtkViewport proxy.
	 * A widget supports scrolling natively if it implements the
	 * GtkScrollable interface.
	 * Params:
	 * child = the widget you want to scroll
	 */
	public void addWithViewport(Widget child)
	{
		// void gtk_scrolled_window_add_with_viewport  (GtkScrolledWindow *scrolled_window,  GtkWidget *child);
		gtk_scrolled_window_add_with_viewport(gtkScrolledWindow, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Sets the placement of the contents with respect to the scrollbars
	 * for the scrolled window.
	 * The default is GTK_CORNER_TOP_LEFT, meaning the child is
	 * in the top left, with the scrollbars underneath and to the right.
	 * Other values in GtkCornerType are GTK_CORNER_TOP_RIGHT,
	 * GTK_CORNER_BOTTOM_LEFT, and GTK_CORNER_BOTTOM_RIGHT.
	 * See also gtk_scrolled_window_get_placement() and
	 * gtk_scrolled_window_unset_placement().
	 * Params:
	 * windowPlacement = position of the child window
	 */
	public void setPlacement(GtkCornerType windowPlacement)
	{
		// void gtk_scrolled_window_set_placement (GtkScrolledWindow *scrolled_window,  GtkCornerType window_placement);
		gtk_scrolled_window_set_placement(gtkScrolledWindow, windowPlacement);
	}
	
	/**
	 * Unsets the placement of the contents with respect to the scrollbars
	 * for the scrolled window. If no window placement is set for a scrolled
	 * window, it obeys the "gtk-scrolled-window-placement" XSETTING.
	 * See also gtk_scrolled_window_set_placement() and
	 * gtk_scrolled_window_get_placement().
	 * Since 2.10
	 */
	public void unsetPlacement()
	{
		// void gtk_scrolled_window_unset_placement (GtkScrolledWindow *scrolled_window);
		gtk_scrolled_window_unset_placement(gtkScrolledWindow);
	}
	
	/**
	 * Changes the type of shadow drawn around the contents of
	 * scrolled_window.
	 * Params:
	 * type = kind of shadow to draw around scrolled window contents
	 */
	public void setShadowType(GtkShadowType type)
	{
		// void gtk_scrolled_window_set_shadow_type (GtkScrolledWindow *scrolled_window,  GtkShadowType type);
		gtk_scrolled_window_set_shadow_type(gtkScrolledWindow, type);
	}
	
	/**
	 * Sets the GtkAdjustment for the horizontal scrollbar.
	 * Params:
	 * hadjustment = horizontal scroll adjustment
	 */
	public void setHadjustment(Adjustment hadjustment)
	{
		// void gtk_scrolled_window_set_hadjustment (GtkScrolledWindow *scrolled_window,  GtkAdjustment *hadjustment);
		gtk_scrolled_window_set_hadjustment(gtkScrolledWindow, (hadjustment is null) ? null : hadjustment.getAdjustmentStruct());
	}
	
	/**
	 * Sets the GtkAdjustment for the vertical scrollbar.
	 * Params:
	 * vadjustment = vertical scroll adjustment
	 */
	public void setVadjustment(Adjustment vadjustment)
	{
		// void gtk_scrolled_window_set_vadjustment (GtkScrolledWindow *scrolled_window,  GtkAdjustment *vadjustment);
		gtk_scrolled_window_set_vadjustment(gtkScrolledWindow, (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());
	}
	
	/**
	 * Gets the placement of the contents with respect to the scrollbars
	 * for the scrolled window. See gtk_scrolled_window_set_placement().
	 * Returns: the current placement value. See also gtk_scrolled_window_set_placement() and gtk_scrolled_window_unset_placement().
	 */
	public GtkCornerType getPlacement()
	{
		// GtkCornerType gtk_scrolled_window_get_placement (GtkScrolledWindow *scrolled_window);
		return gtk_scrolled_window_get_placement(gtkScrolledWindow);
	}
	
	/**
	 * Retrieves the current policy values for the horizontal and vertical
	 * scrollbars. See gtk_scrolled_window_set_policy().
	 * Params:
	 * hscrollbarPolicy = location to store the policy
	 * for the horizontal scrollbar, or NULL. [out][allow-none]
	 * vscrollbarPolicy = location to store the policy
	 * for the vertical scrollbar, or NULL. [out][allow-none]
	 */
	public void getPolicy(out GtkPolicyType hscrollbarPolicy, out GtkPolicyType vscrollbarPolicy)
	{
		// void gtk_scrolled_window_get_policy (GtkScrolledWindow *scrolled_window,  GtkPolicyType *hscrollbar_policy,  GtkPolicyType *vscrollbar_policy);
		gtk_scrolled_window_get_policy(gtkScrolledWindow, &hscrollbarPolicy, &vscrollbarPolicy);
	}
	
	/**
	 * Gets the shadow type of the scrolled window. See
	 * gtk_scrolled_window_set_shadow_type().
	 * Returns: the current shadow type
	 */
	public GtkShadowType getShadowType()
	{
		// GtkShadowType gtk_scrolled_window_get_shadow_type (GtkScrolledWindow *scrolled_window);
		return gtk_scrolled_window_get_shadow_type(gtkScrolledWindow);
	}
	
	/**
	 * Gets the minimum content width of scrolled_window, or -1 if not set.
	 * Returns: the minimum content width Since 3.0
	 */
	public int getMinContentWidth()
	{
		// gint gtk_scrolled_window_get_min_content_width  (GtkScrolledWindow *scrolled_window);
		return gtk_scrolled_window_get_min_content_width(gtkScrolledWindow);
	}
	
	/**
	 * Sets the minimum width that scrolled_window should keep visible.
	 * Note that this can and (usually will) be smaller than the minimum
	 * size of the content.
	 * Params:
	 * width = the minimal content width
	 * Since 3.0
	 */
	public void setMinContentWidth(int width)
	{
		// void gtk_scrolled_window_set_min_content_width  (GtkScrolledWindow *scrolled_window,  gint width);
		gtk_scrolled_window_set_min_content_width(gtkScrolledWindow, width);
	}
	
	/**
	 * Gets the minimal content height of scrolled_window, or -1 if not set.
	 * Returns: the minimal content height Since 3.0
	 */
	public int getMinContentHeight()
	{
		// gint gtk_scrolled_window_get_min_content_height  (GtkScrolledWindow *scrolled_window);
		return gtk_scrolled_window_get_min_content_height(gtkScrolledWindow);
	}
	
	/**
	 * Sets the minimum height that scrolled_window should keep visible.
	 * Note that this can and (usually will) be smaller than the minimum
	 * size of the content.
	 * Params:
	 * height = the minimal content height
	 * Since 3.0
	 */
	public void setMinContentHeight(int height)
	{
		// void gtk_scrolled_window_set_min_content_height  (GtkScrolledWindow *scrolled_window,  gint height);
		gtk_scrolled_window_set_min_content_height(gtkScrolledWindow, height);
	}
	
	/**
	 * Turns kinetic scrolling on or off.
	 * Kinetic scrolling only applies to devices with source
	 * GDK_SOURCE_TOUCHSCREEN.
	 * Params:
	 * kineticScrolling = TRUE to enable kinetic scrolling
	 * Since 3.4
	 */
	public void setKineticScrolling(int kineticScrolling)
	{
		// void gtk_scrolled_window_set_kinetic_scrolling  (GtkScrolledWindow *scrolled_window,  gboolean kinetic_scrolling);
		gtk_scrolled_window_set_kinetic_scrolling(gtkScrolledWindow, kineticScrolling);
	}
	
	/**
	 * Returns the specified kinetic scrolling behavior.
	 * Returns: the scrolling behavior flags. Since 3.4
	 */
	public int getKineticScrolling()
	{
		// gboolean gtk_scrolled_window_get_kinetic_scrolling  (GtkScrolledWindow *scrolled_window);
		return gtk_scrolled_window_get_kinetic_scrolling(gtkScrolledWindow);
	}
	
	/**
	 * Changes the behaviour of scrolled_window wrt. to the initial
	 * event that possibly starts kinetic scrolling. When capture_button_press
	 * is set to TRUE, the event is captured by the scrolled window, and
	 * then later replayed if it is meant to go to the child widget.
	 * This should be enabled if any child widgets perform non-reversible
	 * actions on "button-press-event". If they don't, and handle
	 * additionally handle "grab-broken-event", it might be better
	 * to set capture_button_press to FALSE.
	 * This setting only has an effect if kinetic scrolling is enabled.
	 * Params:
	 * captureButtonPress = TRUE to capture button presses
	 * Since 3.4
	 */
	public void setCaptureButtonPress(int captureButtonPress)
	{
		// void gtk_scrolled_window_set_capture_button_press  (GtkScrolledWindow *scrolled_window,  gboolean capture_button_press);
		gtk_scrolled_window_set_capture_button_press(gtkScrolledWindow, captureButtonPress);
	}
	
	/**
	 * Return whether button presses are captured during kinetic
	 * scrolling. See gtk_scrolled_window_set_capture_button_press().
	 * Returns: TRUE if button presses are captured during kinetic scrolling Since 3.4
	 */
	public int getCaptureButtonPress()
	{
		// gboolean gtk_scrolled_window_get_capture_button_press  (GtkScrolledWindow *scrolled_window);
		return gtk_scrolled_window_get_capture_button_press(gtkScrolledWindow);
	}
}
