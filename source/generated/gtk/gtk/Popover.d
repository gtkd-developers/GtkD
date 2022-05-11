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


module gtk.Popover;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.NativeIF;
private import gtk.NativeT;
private import gtk.ShortcutManagerIF;
private import gtk.ShortcutManagerT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkPopover` is a bubble-like context popup.
 * 
 * ![An example GtkPopover](popover.png)
 * 
 * It is primarily meant to provide context-dependent information
 * or options. Popovers are attached to a parent widget. By default,
 * they point to the whole widget area, although this behavior can be
 * changed with [method@Gtk.Popover.set_pointing_to].
 * 
 * The position of a popover relative to the widget it is attached to
 * can also be changed with [method@Gtk.Popover.set_position]
 * 
 * By default, `GtkPopover` performs a grab, in order to ensure input
 * events get redirected to it while it is shown, and also so the popover
 * is dismissed in the expected situations (clicks outside the popover,
 * or the Escape key being pressed). If no such modal behavior is desired
 * on a popover, [method@Gtk.Popover.set_autohide] may be called on it to
 * tweak its behavior.
 * 
 * ## GtkPopover as menu replacement
 * 
 * `GtkPopover` is often used to replace menus. The best was to do this
 * is to use the [class@Gtk.PopoverMenu] subclass which supports being
 * populated from a `GMenuModel` with [ctor@Gtk.PopoverMenu.new_from_model].
 * 
 * ```xml
 * <section>
 * <attribute name="display-hint">horizontal-buttons</attribute>
 * <item>
 * <attribute name="label">Cut</attribute>
 * <attribute name="action">app.cut</attribute>
 * <attribute name="verb-icon">edit-cut-symbolic</attribute>
 * </item>
 * <item>
 * <attribute name="label">Copy</attribute>
 * <attribute name="action">app.copy</attribute>
 * <attribute name="verb-icon">edit-copy-symbolic</attribute>
 * </item>
 * <item>
 * <attribute name="label">Paste</attribute>
 * <attribute name="action">app.paste</attribute>
 * <attribute name="verb-icon">edit-paste-symbolic</attribute>
 * </item>
 * </section>
 * ```
 * 
 * # CSS nodes
 * 
 * ```
 * popover[.menu]
 * ├── arrow
 * ╰── contents.background
 * ╰── <child>
 * ```
 * 
 * The contents child node always gets the .background style class
 * and the popover itself gets the .menu style class if the popover
 * is menu-like (i.e. `GtkPopoverMenu`).
 * 
 * Particular uses of `GtkPopover`, such as touch selection popups or
 * magnifiers in `GtkEntry` or `GtkTextView` get style classes like
 * .touch-selection or .magnifier to differentiate from plain popovers.
 * 
 * When styling a popover directly, the popover node should usually
 * not have any background. The visible part of the popover can have
 * a shadow. To specify it in CSS, set the box-shadow of the contents node.
 * 
 * Note that, in order to accomplish appropriate arrow visuals, `GtkPopover`
 * uses custom drawing for the arrow node. This makes it possible for the
 * arrow to change its shape dynamically, but it also limits the possibilities
 * of styling it using CSS. In particular, the arrow gets drawn over the
 * content node's border and shadow, so they look like one shape, which
 * means that the border width of the content node and the arrow node should
 * be the same. The arrow also does not support any border shape other than
 * solid, no border-radius, only one border width (border-bottom-width is
 * used) and no box-shadow.
 */
public class Popover : Widget, NativeIF, ShortcutManagerIF
{
	/** the main Gtk struct */
	protected GtkPopover* gtkPopover;

	/** Get the main Gtk struct */
	public GtkPopover* getPopoverStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPopover;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPopover;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPopover* gtkPopover, bool ownedRef = false)
	{
		this.gtkPopover = gtkPopover;
		super(cast(GtkWidget*)gtkPopover, ownedRef);
	}

	// add the Native capabilities
	mixin NativeT!(GtkPopover);

	// add the ShortcutManager capabilities
	mixin ShortcutManagerT!(GtkPopover);


	/** */
	public static GType getType()
	{
		return gtk_popover_get_type();
	}

	/**
	 * Creates a new `GtkPopover`.
	 *
	 * Returns: the new `GtkPopover`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_popover_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPopover*) __p);
	}

	/**
	 * Returns whether the popover is modal.
	 *
	 * See [method@Gtk.Popover.set_autohide] for the
	 * implications of this.
	 *
	 * Returns: %TRUE if @popover is modal
	 */
	public bool getAutohide()
	{
		return gtk_popover_get_autohide(gtkPopover) != 0;
	}

	/**
	 * Returns whether the popover will close after a modal child is closed.
	 *
	 * Returns: %TRUE if @popover will close after a modal child.
	 */
	public bool getCascadePopdown()
	{
		return gtk_popover_get_cascade_popdown(gtkPopover) != 0;
	}

	/**
	 * Gets the child widget of @popover.
	 *
	 * Returns: the child widget of @popover
	 */
	public Widget getChild()
	{
		auto __p = gtk_popover_get_child(gtkPopover);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets whether this popover is showing an arrow
	 * pointing at the widget that it is relative to.
	 *
	 * Returns: whether the popover has an arrow
	 */
	public bool getHasArrow()
	{
		return gtk_popover_get_has_arrow(gtkPopover) != 0;
	}

	/**
	 * Gets whether mnemonics are visible.
	 *
	 * Returns: %TRUE if mnemonics are supposed to be visible
	 *     in this popover
	 */
	public bool getMnemonicsVisible()
	{
		return gtk_popover_get_mnemonics_visible(gtkPopover) != 0;
	}

	/**
	 * Gets the offset previous set with gtk_popover_set_offset().
	 *
	 * Params:
	 *     xOffset = a location for the x_offset
	 *     yOffset = a location for the y_offset
	 */
	public void getOffset(out int xOffset, out int yOffset)
	{
		gtk_popover_get_offset(gtkPopover, &xOffset, &yOffset);
	}

	/**
	 * Gets the rectangle that the popover points to.
	 *
	 * If a rectangle to point to has been set, this function will
	 * return %TRUE and fill in @rect with such rectangle, otherwise
	 * it will return %FALSE and fill in @rect with the parent
	 * widget coordinates.
	 *
	 * Params:
	 *     rect = location to store the rectangle
	 *
	 * Returns: %TRUE if a rectangle to point to was set.
	 */
	public bool getPointingTo(out GdkRectangle rect)
	{
		return gtk_popover_get_pointing_to(gtkPopover, &rect) != 0;
	}

	/**
	 * Returns the preferred position of @popover.
	 *
	 * Returns: The preferred position.
	 */
	public GtkPositionType getPosition()
	{
		return gtk_popover_get_position(gtkPopover);
	}

	/**
	 * Pops @popover down.
	 *
	 * This may have the side-effect of closing a parent popover
	 * as well. See [property@Gtk.Popover:cascade-popdown].
	 */
	public void popdown()
	{
		gtk_popover_popdown(gtkPopover);
	}

	/**
	 * Pops @popover up.
	 */
	public void popup()
	{
		gtk_popover_popup(gtkPopover);
	}

	/**
	 * Presents the popover to the user.
	 */
	public void present()
	{
		gtk_popover_present(gtkPopover);
	}

	/**
	 * Sets whether @popover is modal.
	 *
	 * A modal popover will grab the keyboard focus on it when being
	 * displayed. Focus will wrap around within the popover. Clicking
	 * outside the popover area or pressing Esc will dismiss the popover.
	 *
	 * Called this function on an already showing popup with a new
	 * autohide value different from the current one, will cause the
	 * popup to be hidden.
	 *
	 * Params:
	 *     autohide = %TRUE to dismiss the popover on outside clicks
	 */
	public void setAutohide(bool autohide)
	{
		gtk_popover_set_autohide(gtkPopover, autohide);
	}

	/**
	 * If @cascade_popdown is %TRUE, the popover will be
	 * closed when a child modal popover is closed.
	 *
	 * If %FALSE, @popover will stay visible.
	 *
	 * Params:
	 *     cascadePopdown = %TRUE if the popover should follow a child closing
	 */
	public void setCascadePopdown(bool cascadePopdown)
	{
		gtk_popover_set_cascade_popdown(gtkPopover, cascadePopdown);
	}

	/**
	 * Sets the child widget of @popover.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_popover_set_child(gtkPopover, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the default widget of a `GtkPopover`.
	 *
	 * The default widget is the widget that’s activated when the user
	 * presses Enter in a dialog (for example). This function sets or
	 * unsets the default widget for a `GtkPopover`.
	 *
	 * Params:
	 *     widget = a child widget of @popover to set as
	 *         the default, or %NULL to unset the default widget for the popover
	 */
	public void setDefaultWidget(Widget widget)
	{
		gtk_popover_set_default_widget(gtkPopover, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets whether this popover should draw an arrow
	 * pointing at the widget it is relative to.
	 *
	 * Params:
	 *     hasArrow = %TRUE to draw an arrow
	 */
	public void setHasArrow(bool hasArrow)
	{
		gtk_popover_set_has_arrow(gtkPopover, hasArrow);
	}

	/**
	 * Sets whether mnemonics should be visible.
	 *
	 * Params:
	 *     mnemonicsVisible = the new value
	 */
	public void setMnemonicsVisible(bool mnemonicsVisible)
	{
		gtk_popover_set_mnemonics_visible(gtkPopover, mnemonicsVisible);
	}

	/**
	 * Sets the offset to use when calculating the position
	 * of the popover.
	 *
	 * These values are used when preparing the [struct@Gdk.PopupLayout]
	 * for positioning the popover.
	 *
	 * Params:
	 *     xOffset = the x offset to adjust the position by
	 *     yOffset = the y offset to adjust the position by
	 */
	public void setOffset(int xOffset, int yOffset)
	{
		gtk_popover_set_offset(gtkPopover, xOffset, yOffset);
	}

	/**
	 * Sets the rectangle that @popover points to.
	 *
	 * This is in the coordinate space of the @popover parent.
	 *
	 * Params:
	 *     rect = rectangle to point to
	 */
	public void setPointingTo(GdkRectangle* rect)
	{
		gtk_popover_set_pointing_to(gtkPopover, rect);
	}

	/**
	 * Sets the preferred position for @popover to appear.
	 *
	 * If the @popover is currently visible, it will be immediately
	 * updated.
	 *
	 * This preference will be respected where possible, although
	 * on lack of space (eg. if close to the window edges), the
	 * `GtkPopover` may choose to appear on the opposite side.
	 *
	 * Params:
	 *     position = preferred popover position
	 */
	public void setPosition(GtkPositionType position)
	{
		gtk_popover_set_position(gtkPopover, position);
	}

	/**
	 * Emitted whend the user activates the default widget.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 */
	gulong addOnActivateDefault(void delegate(Popover) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-default", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the popover is closed.
	 */
	gulong addOnClosed(void delegate(Popover) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "closed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
