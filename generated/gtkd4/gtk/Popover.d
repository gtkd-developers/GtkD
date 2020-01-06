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
private import gtk.Bin;
private import gtk.NativeIF;
private import gtk.NativeT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * GtkPopover is a bubble-like context window, primarily meant to
 * provide context-dependent information or options. Popovers are
 * attached to a widget, passed at construction time on gtk_popover_new(),
 * or updated afterwards through gtk_popover_set_relative_to(), by
 * default they will point to the whole widget area, although this
 * behavior can be changed through gtk_popover_set_pointing_to().
 * 
 * The position of a popover relative to the widget it is attached to
 * can also be changed through gtk_popover_set_position().
 * 
 * By default, #GtkPopover performs a grab, in order to ensure input events
 * get redirected to it while it is shown, and also so the popover is dismissed
 * in the expected situations (clicks outside the popover, or the Escape key
 * being pressed). If no such modal behavior is desired on a popover,
 * gtk_popover_set_autohide() may be called on it to tweak its behavior.
 * 
 * ## GtkPopover as menu replacement
 * 
 * GtkPopover is often used to replace menus. The best was to do this
 * is to use the #GtkPopoverMenu subclass which supports being populated
 * from a #GMenuModel with gtk_popover_menu_new_from_model().
 * 
 * |[
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
 * ]|
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * popover[.menu]
 * ├── arrow
 * ╰── contents.background
 * ╰── <child>
 * ]|
 * 
 * The contents child node always gets the .background style class and
 * the popover itself gets the .menu style class if the popover is
 * menu-like (i.e. #GtkPopoverMenu).
 * 
 * Particular uses of GtkPopover, such as touch selection popups or magnifiers
 * in #GtkEntry or #GtkTextView get style classes like .touch-selection or .magnifier
 * to differentiate from plain popovers.
 * 
 * When styling a popover directly, the popover node should usually
 * not have any background.
 * 
 * Note that, in order to accomplish appropriate arrow visuals, #GtkPopover uses
 * custom drawing for the arrow node. This makes it possible for the arrow to
 * change its shape dynamically, but it also limits the possibilities of styling
 * it using CSS. In particular, the arrow gets drawn over the content node's
 * border so they look like one shape, which means that the border-width of
 * the content node and the arrow node should be the same. The arrow also does
 * not support any border shape other than solid, no border-radius, only one
 * border width (border-bottom-width is used) and no box-shadow.
 */
public class Popover : Bin, NativeIF
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
		super(cast(GtkBin*)gtkPopover, ownedRef);
	}

	// add the Native capabilities
	mixin NativeT!(GtkPopover);


	/** */
	public static GType getType()
	{
		return gtk_popover_get_type();
	}

	/** */
	public this(Widget relativeTo)
	{
		auto __p = gtk_popover_new((relativeTo is null) ? null : relativeTo.getWidgetStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPopover*) __p);
	}

	/**
	 * Returns whether the popover is modal.
	 *
	 * See gtk_popover_set_autohide() for the
	 * implications of this.
	 *
	 * Returns: #TRUE if @popover is modal
	 */
	public bool getAutohide()
	{
		return gtk_popover_get_autohide(gtkPopover) != 0;
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
	 * If a rectangle to point to has been set, this function will
	 * return %TRUE and fill in @rect with such rectangle, otherwise
	 * it will return %FALSE and fill in @rect with the attached
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
	 * Returns the widget @popover is currently attached to
	 *
	 * Returns: a #GtkWidget
	 */
	public Widget getRelativeTo()
	{
		auto __p = gtk_popover_get_relative_to(gtkPopover);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Pops @popover down.This is different than a gtk_widget_hide() call
	 * in that it shows the popover with a transition. If you want to hide
	 * the popover without a transition, use gtk_widget_hide().
	 */
	public void popdown()
	{
		gtk_popover_popdown(gtkPopover);
	}

	/**
	 * Pops @popover up. This is different than a gtk_widget_show() call
	 * in that it shows the popover with a transition. If you want to show
	 * the popover without a transition, use gtk_widget_show().
	 */
	public void popup()
	{
		gtk_popover_popup(gtkPopover);
	}

	/**
	 * Sets whether @popover is modal.
	 *
	 * A modal popover will grab the keyboard focus on it when being
	 * displayed. Clicking outside the popover area or pressing Esc will
	 * dismiss the popover.
	 *
	 * Params:
	 *     autohide = #TRUE to dismiss the popover on outside clicks
	 */
	public void setAutohide(bool autohide)
	{
		gtk_popover_set_autohide(gtkPopover, autohide);
	}

	/** */
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
	 * Sets the rectangle that @popover will point to, in the
	 * coordinate space of the widget @popover is attached to,
	 * see gtk_popover_set_relative_to().
	 *
	 * Params:
	 *     rect = rectangle to point to
	 */
	public void setPointingTo(GdkRectangle* rect)
	{
		gtk_popover_set_pointing_to(gtkPopover, rect);
	}

	/**
	 * Sets the preferred position for @popover to appear. If the @popover
	 * is currently visible, it will be immediately updated.
	 *
	 * This preference will be respected where possible, although
	 * on lack of space (eg. if close to the window edges), the
	 * #GtkPopover may choose to appear on the opposite side
	 *
	 * Params:
	 *     position = preferred popover position
	 */
	public void setPosition(GtkPositionType position)
	{
		gtk_popover_set_position(gtkPopover, position);
	}

	/**
	 * Sets a new widget to be attached to @popover. If @popover is
	 * visible, the position will be updated.
	 *
	 * Note: the ownership of popovers is always given to their @relative_to
	 * widget, so if @relative_to is set to %NULL on an attached @popover, it
	 * will be detached from its previous widget, and consequently destroyed
	 * unless extra references are kept.
	 *
	 * Params:
	 *     relativeTo = a #GtkWidget
	 */
	public void setRelativeTo(Widget relativeTo)
	{
		gtk_popover_set_relative_to(gtkPopover, (relativeTo is null) ? null : relativeTo.getWidgetStruct());
	}

	/** */
	gulong addOnActivateDefault(void delegate(Popover) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-default", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnClosed(void delegate(Popover) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "closed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
