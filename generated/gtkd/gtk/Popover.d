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

private import gio.MenuModel;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Bin;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
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
 * By default, #GtkPopover performs a GTK+ grab, in order to ensure
 * input events get redirected to it while it is shown, and also so
 * the popover is dismissed in the expected situations (clicks outside
 * the popover, or the Esc key being pressed). If no such modal behavior
 * is desired on a popover, gtk_popover_set_modal() may be called on it
 * to tweak its behavior.
 * 
 * ## GtkPopover as menu replacement
 * 
 * GtkPopover is often used to replace menus. To facilitate this, it
 * supports being populated from a #GMenuModel, using
 * gtk_popover_new_from_model(). In addition to all the regular menu
 * model features, this function supports rendering sections in the
 * model in a more compact form, as a row of icon buttons instead of
 * menu items.
 * 
 * To use this rendering, set the ”display-hint” attribute of the
 * section to ”horizontal-buttons” and set the icons of your items
 * with the ”verb-icon” attribute.
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
 * GtkPopover has a single css node called popover. It always gets the
 * .background style class and it gets the .menu style class if it is
 * menu-like (e.g. #GtkPopoverMenu or created using gtk_popover_new_from_model().
 * 
 * Particular uses of GtkPopover, such as touch selection popups
 * or magnifiers in #GtkEntry or #GtkTextView get style classes
 * like .touch-selection or .magnifier to differentiate from
 * plain popovers.
 */
public class Popover : Bin
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


	/** */
	public static GType getType()
	{
		return gtk_popover_get_type();
	}

	/**
	 * Creates a new popover to point to @relative_to
	 *
	 * Params:
	 *     relativeTo = #GtkWidget the popover is related to
	 *
	 * Returns: a new #GtkPopover
	 *
	 * Since: 3.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget relativeTo)
	{
		auto p = gtk_popover_new((relativeTo is null) ? null : relativeTo.getWidgetStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPopover*) p);
	}

	/**
	 * Creates a #GtkPopover and populates it according to
	 * @model. The popover is pointed to the @relative_to widget.
	 *
	 * The created buttons are connected to actions found in the
	 * #GtkApplicationWindow to which the popover belongs - typically
	 * by means of being attached to a widget that is contained within
	 * the #GtkApplicationWindows widget hierarchy.
	 *
	 * Actions can also be added using gtk_widget_insert_action_group()
	 * on the menus attach widget or on any of its parent widgets.
	 *
	 * Params:
	 *     relativeTo = #GtkWidget the popover is related to
	 *     model = a #GMenuModel
	 *
	 * Returns: the new #GtkPopover
	 *
	 * Since: 3.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget relativeTo, MenuModel model)
	{
		auto p = gtk_popover_new_from_model((relativeTo is null) ? null : relativeTo.getWidgetStruct(), (model is null) ? null : model.getMenuModelStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_model");
		}

		this(cast(GtkPopover*) p);
	}

	/**
	 * Establishes a binding between a #GtkPopover and a #GMenuModel.
	 *
	 * The contents of @popover are removed and then refilled with menu items
	 * according to @model.  When @model changes, @popover is updated.
	 * Calling this function twice on @popover with different @model will
	 * cause the first binding to be replaced with a binding to the new
	 * model. If @model is %NULL then any previous binding is undone and
	 * all children are removed.
	 *
	 * If @action_namespace is non-%NULL then the effect is as if all
	 * actions mentioned in the @model have their names prefixed with the
	 * namespace, plus a dot.  For example, if the action “quit” is
	 * mentioned and @action_namespace is “app” then the effective action
	 * name is “app.quit”.
	 *
	 * This function uses #GtkActionable to define the action name and
	 * target values on the created menu items.  If you want to use an
	 * action group other than “app” and “win”, or if you want to use a
	 * #GtkMenuShell outside of a #GtkApplicationWindow, then you will need
	 * to attach your own action group to the widget hierarchy using
	 * gtk_widget_insert_action_group().  As an example, if you created a
	 * group with a “quit” action and inserted it with the name “mygroup”
	 * then you would use the action name “mygroup.quit” in your
	 * #GMenuModel.
	 *
	 * Params:
	 *     model = the #GMenuModel to bind to or %NULL to remove
	 *         binding
	 *     actionNamespace = the namespace for actions in @model
	 *
	 * Since: 3.12
	 */
	public void bindModel(MenuModel model, string actionNamespace)
	{
		gtk_popover_bind_model(gtkPopover, (model is null) ? null : model.getMenuModelStruct(), Str.toStringz(actionNamespace));
	}

	/**
	 * Returns the constraint for placing this popover.
	 * See gtk_popover_set_constrain_to().
	 *
	 * Returns: the constraint for placing this popover.
	 *
	 * Since: 3.20
	 */
	public GtkPopoverConstraint getConstrainTo()
	{
		return gtk_popover_get_constrain_to(gtkPopover);
	}

	/**
	 * Gets the widget that should be set as the default while
	 * the popover is shown.
	 *
	 * Returns: the default widget,
	 *     or %NULL if there is none
	 *
	 * Since: 3.18
	 */
	public Widget getDefaultWidget()
	{
		auto p = gtk_popover_get_default_widget(gtkPopover);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns whether the popover is modal, see gtk_popover_set_modal to
	 * see the implications of this.
	 *
	 * Returns: #TRUE if @popover is modal
	 *
	 * Since: 3.12
	 */
	public bool getModal()
	{
		return gtk_popover_get_modal(gtkPopover) != 0;
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
	 *
	 * Since: 3.12
	 */
	public Widget getRelativeTo()
	{
		auto p = gtk_popover_get_relative_to(gtkPopover);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns whether show/hide transitions are enabled on this popover.
	 *
	 * Deprecated: You can show or hide the popover without transitions
	 * using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
	 * and gtk_popover_popdown() will use transitions.
	 *
	 * Returns: #TRUE if the show and hide transitions of the given
	 *     popover are enabled, #FALSE otherwise.
	 *
	 * Since: 3.16
	 */
	public bool getTransitionsEnabled()
	{
		return gtk_popover_get_transitions_enabled(gtkPopover) != 0;
	}

	/**
	 * Pops @popover down.This is different than a gtk_widget_hide() call
	 * in that it shows the popover with a transition. If you want to hide
	 * the popover without a transition, use gtk_widget_hide().
	 *
	 * Since: 3.22
	 */
	public void popdown()
	{
		gtk_popover_popdown(gtkPopover);
	}

	/**
	 * Pops @popover up. This is different than a gtk_widget_show() call
	 * in that it shows the popover with a transition. If you want to show
	 * the popover without a transition, use gtk_widget_show().
	 *
	 * Since: 3.22
	 */
	public void popup()
	{
		gtk_popover_popup(gtkPopover);
	}

	/**
	 * Sets a constraint for positioning this popover.
	 *
	 * Note that not all platforms support placing popovers freely,
	 * and may already impose constraints.
	 *
	 * Params:
	 *     constraint = the new constraint
	 *
	 * Since: 3.20
	 */
	public void setConstrainTo(GtkPopoverConstraint constraint)
	{
		gtk_popover_set_constrain_to(gtkPopover, constraint);
	}

	/**
	 * Sets the widget that should be set as default widget while
	 * the popover is shown (see gtk_window_set_default()). #GtkPopover
	 * remembers the previous default widget and reestablishes it
	 * when the popover is dismissed.
	 *
	 * Params:
	 *     widget = the new default widget, or %NULL
	 *
	 * Since: 3.18
	 */
	public void setDefaultWidget(Widget widget)
	{
		gtk_popover_set_default_widget(gtkPopover, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets whether @popover is modal, a modal popover will grab all input
	 * within the toplevel and grab the keyboard focus on it when being
	 * displayed. Clicking outside the popover area or pressing Esc will
	 * dismiss the popover and ungrab input.
	 *
	 * Params:
	 *     modal = #TRUE to make popover claim all input within the toplevel
	 *
	 * Since: 3.12
	 */
	public void setModal(bool modal)
	{
		gtk_popover_set_modal(gtkPopover, modal);
	}

	/**
	 * Sets the rectangle that @popover will point to, in the
	 * coordinate space of the widget @popover is attached to,
	 * see gtk_popover_set_relative_to().
	 *
	 * Params:
	 *     rect = rectangle to point to
	 *
	 * Since: 3.12
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
	 *
	 * Since: 3.12
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
	 *
	 * Since: 3.12
	 */
	public void setRelativeTo(Widget relativeTo)
	{
		gtk_popover_set_relative_to(gtkPopover, (relativeTo is null) ? null : relativeTo.getWidgetStruct());
	}

	/**
	 * Sets whether show/hide transitions are enabled on this popover
	 *
	 * Deprecated: You can show or hide the popover without transitions
	 * using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
	 * and gtk_popover_popdown() will use transitions.
	 *
	 * Params:
	 *     transitionsEnabled = Whether transitions are enabled
	 *
	 * Since: 3.16
	 */
	public void setTransitionsEnabled(bool transitionsEnabled)
	{
		gtk_popover_set_transitions_enabled(gtkPopover, transitionsEnabled);
	}

	/** */
	gulong addOnClosed(void delegate(Popover) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "closed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
