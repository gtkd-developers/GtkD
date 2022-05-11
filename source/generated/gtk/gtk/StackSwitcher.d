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


module gtk.StackSwitcher;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Stack;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * The `GtkStackSwitcher` shows a row of buttons to switch between `GtkStack`
 * pages.
 * 
 * ![An example GtkStackSwitcher](stackswitcher.png)
 * 
 * It acts as a controller for the associated `GtkStack`.
 * 
 * All the content for the buttons comes from the properties of the stacks
 * [class@Gtk.StackPage] objects; the button visibility in a `GtkStackSwitcher`
 * widget is controlled by the visibility of the child in the `GtkStack`.
 * 
 * It is possible to associate multiple `GtkStackSwitcher` widgets
 * with the same `GtkStack` widget.
 * 
 * # CSS nodes
 * 
 * `GtkStackSwitcher` has a single CSS node named stackswitcher and
 * style class .stack-switcher.
 * 
 * When circumstances require it, `GtkStackSwitcher` adds the
 * .needs-attention style class to the widgets representing the
 * stack pages.
 * 
 * # Accessibility
 * 
 * `GtkStackSwitcher` uses the %GTK_ACCESSIBLE_ROLE_TAB_LIST role
 * and uses the %GTK_ACCESSIBLE_ROLE_TAB for its buttons.
 * 
 * # Orientable
 * 
 * Since GTK 4.4, `GtkStackSwitcher` implements `GtkOrientable` allowing
 * the stack switcher to be made vertical with
 * `gtk_orientable_set_orientation()`.
 */
public class StackSwitcher : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected GtkStackSwitcher* gtkStackSwitcher;

	/** Get the main Gtk struct */
	public GtkStackSwitcher* getStackSwitcherStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStackSwitcher;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStackSwitcher;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStackSwitcher* gtkStackSwitcher, bool ownedRef = false)
	{
		this.gtkStackSwitcher = gtkStackSwitcher;
		super(cast(GtkWidget*)gtkStackSwitcher, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkStackSwitcher);


	/** */
	public static GType getType()
	{
		return gtk_stack_switcher_get_type();
	}

	/**
	 * Create a new `GtkStackSwitcher`.
	 *
	 * Returns: a new `GtkStackSwitcher`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_stack_switcher_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStackSwitcher*) __p);
	}

	/**
	 * Retrieves the stack.
	 *
	 * Returns: the stack
	 */
	public Stack getStack()
	{
		auto __p = gtk_stack_switcher_get_stack(gtkStackSwitcher);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Stack)(cast(GtkStack*) __p);
	}

	/**
	 * Sets the stack to control.
	 *
	 * Params:
	 *     stack = a `GtkStack`
	 */
	public void setStack(Stack stack)
	{
		gtk_stack_switcher_set_stack(gtkStackSwitcher, (stack is null) ? null : stack.getStackStruct());
	}
}
