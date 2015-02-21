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


module gtk.Stack;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Container;
private import gtk.Widget;
private import gtkc.gtk;
public  import gtkc.gtktypes;


/**
 * The GtkStack widget is a container which only shows
 * one of its children at a time. In contrast to GtkNotebook,
 * GtkStack does not provide a means for users to change the
 * visible child. Instead, the #GtkStackSwitcher widget can be
 * used with GtkStack to provide this functionality.
 * 
 * Transitions between pages can be animated as slides or
 * fades. This can be controlled with gtk_stack_set_transition_type().
 * These animations respect the #GtkSettings:gtk-enable-animations
 * setting.
 * 
 * The GtkStack widget was added in GTK+ 3.10.
 */
public class Stack : Container
{
	/** the main Gtk struct */
	protected GtkStack* gtkStack;

	/** Get the main Gtk struct */
	public GtkStack* getStackStruct()
	{
		return gtkStack;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStack;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkStack = cast(GtkStack*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStack* gtkStack, bool ownedRef = false)
	{
		this.gtkStack = gtkStack;
		super(cast(GtkContainer*)gtkStack, ownedRef);
	}

	/**
	 */

	public static GType getType()
	{
		return gtk_stack_get_type();
	}

	/**
	 * Creates a new #GtkStack container.
	 *
	 * Return: a new #GtkStack
	 *
	 * Since: 3.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_stack_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkStack*) p);
	}

	/**
	 * Adds a child to @stack.
	 * The child is identified by the @name.
	 *
	 * Params:
	 *     child = the widget to add
	 *     name = the name for @child
	 *
	 * Since: 3.10
	 */
	public void addNamed(Widget child, string name)
	{
		gtk_stack_add_named(gtkStack, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(name));
	}

	/**
	 * Adds a child to @stack.
	 * The child is identified by the @name. The @title
	 * will be used by #GtkStackSwitcher to represent
	 * @child in a tab bar, so it should be short.
	 *
	 * Params:
	 *     child = the widget to add
	 *     name = the name for @child
	 *     title = a human-readable title for @child
	 *
	 * Since: 3.10
	 */
	public void addTitled(Widget child, string name, string title)
	{
		gtk_stack_add_titled(gtkStack, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(name), Str.toStringz(title));
	}

	/**
	 * Finds the child of the #GtkStack with the name given as
	 * the argument. Returns %NULL if there is no child with this
	 * name.
	 *
	 * Params:
	 *     name = the name of the child to find
	 *
	 * Return: the requested child of the #GtkStack
	 *
	 * Since: 3.12
	 */
	public Widget getChildByName(string name)
	{
		auto p = gtk_stack_get_child_by_name(gtkStack, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets whether @stack is homogeneous.
	 * See gtk_stack_set_homogeneous().
	 *
	 * Return: whether @stack is homogeneous.
	 *
	 * Since: 3.10
	 */
	public bool getHomogeneous()
	{
		return gtk_stack_get_homogeneous(gtkStack) != 0;
	}

	/**
	 * Returns the amount of time (in milliseconds) that
	 * transitions between pages in @stack will take.
	 *
	 * Return: the transition duration
	 *
	 * Since: 3.10
	 */
	public uint getTransitionDuration()
	{
		return gtk_stack_get_transition_duration(gtkStack);
	}

	/**
	 * Returns whether the @stack is currently in a transition from one page to
	 * another.
	 *
	 * Return: %TRUE if the transition is currently running, %FALSE otherwise.
	 *
	 * Since: 3.12
	 */
	public bool getTransitionRunning()
	{
		return gtk_stack_get_transition_running(gtkStack) != 0;
	}

	/**
	 * Gets the type of animation that will be used
	 * for transitions between pages in @stack.
	 *
	 * Return: the current transition type of @stack
	 *
	 * Since: 3.10
	 */
	public GtkStackTransitionType getTransitionType()
	{
		return gtk_stack_get_transition_type(gtkStack);
	}

	/**
	 * Gets the currently visible child of @stack, or %NULL if
	 * there are no visible children.
	 *
	 * Return: the visible child of the #GtkStack
	 *
	 * Since: 3.10
	 */
	public Widget getVisibleChild()
	{
		auto p = gtk_stack_get_visible_child(gtkStack);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns the name of the currently visible child of @stack, or
	 * %NULL if there is no visible child.
	 *
	 * Return: the name of the visible child of the #GtkStack
	 *
	 * Since: 3.10
	 */
	public string getVisibleChildName()
	{
		return Str.toString(gtk_stack_get_visible_child_name(gtkStack));
	}

	/**
	 * Sets the #GtkStack to be homogeneous or not. If it
	 * is homogeneous, the #GtkStack will request the same
	 * size for all its children. If it isn't, the stack
	 * may change size when a different child becomes visible.
	 *
	 * Params:
	 *     homogeneous = %TRUE to make @stack homogeneous
	 *
	 * Since: 3.10
	 */
	public void setHomogeneous(bool homogeneous)
	{
		gtk_stack_set_homogeneous(gtkStack, homogeneous);
	}

	/**
	 * Sets the duration that transitions between pages in @stack
	 * will take.
	 *
	 * Params:
	 *     duration = the new duration, in milliseconds
	 *
	 * Since: 3.10
	 */
	public void setTransitionDuration(uint duration)
	{
		gtk_stack_set_transition_duration(gtkStack, duration);
	}

	/**
	 * Sets the type of animation that will be used for
	 * transitions between pages in @stack. Available
	 * types include various kinds of fades and slides.
	 *
	 * The transition type can be changed without problems
	 * at runtime, so it is possible to change the animation
	 * based on the page that is about to become current.
	 *
	 * Params:
	 *     transition = the new transition type
	 *
	 * Since: 3.10
	 */
	public void setTransitionType(GtkStackTransitionType transition)
	{
		gtk_stack_set_transition_type(gtkStack, transition);
	}

	/**
	 * Makes @child the visible child of @stack.
	 *
	 * If @child is different from the currently
	 * visible child, the transition between the
	 * two will be animated with the current
	 * transition type of @stack.
	 *
	 * Note that the @child widget has to be visible itself
	 * (see gtk_widget_show()) in order to become the visible
	 * child of @stack.
	 *
	 * Params:
	 *     child = a child of @stack
	 *
	 * Since: 3.10
	 */
	public void setVisibleChild(Widget child)
	{
		gtk_stack_set_visible_child(gtkStack, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Makes the child with the given name visible.
	 *
	 * Note that the child widget has to be visible itself
	 * (see gtk_widget_show()) in order to become the visible
	 * child of @stack.
	 *
	 * Params:
	 *     name = the name of the child to make visible
	 *     transition = the transition type to use
	 *
	 * Since: 3.10
	 */
	public void setVisibleChildFull(string name, GtkStackTransitionType transition)
	{
		gtk_stack_set_visible_child_full(gtkStack, Str.toStringz(name), transition);
	}

	/**
	 * Makes the child with the given name visible.
	 *
	 * If @child is different from the currently
	 * visible child, the transition between the
	 * two will be animated with the current
	 * transition type of @stack.
	 *
	 * Note that the child widget has to be visible itself
	 * (see gtk_widget_show()) in order to become the visible
	 * child of @stack.
	 *
	 * Params:
	 *     name = the name of the child to make visible
	 *
	 * Since: 3.10
	 */
	public void setVisibleChildName(string name)
	{
		gtk_stack_set_visible_child_name(gtkStack, Str.toStringz(name));
	}
}
