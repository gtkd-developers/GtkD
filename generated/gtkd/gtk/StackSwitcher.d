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
private import gtk.Box;
private import gtk.Stack;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The GtkStackSwitcher widget acts as a controller for a
 * #GtkStack; it shows a row of buttons to switch between
 * the various pages of the associated stack widget.
 * 
 * All the content for the buttons comes from the child properties
 * of the #GtkStack; the button visibility in a #GtkStackSwitcher
 * widget is controlled by the visibility of the child in the
 * #GtkStack.
 * 
 * It is possible to associate multiple #GtkStackSwitcher widgets
 * with the same #GtkStack widget.
 * 
 * The GtkStackSwitcher widget was added in 3.10.
 * 
 * # CSS nodes
 * 
 * GtkStackSwitcher has a single CSS node named stackswitcher and
 * style class .stack-switcher.
 * 
 * When circumstances require it, GtkStackSwitcher adds the
 * .needs-attention style class to the widgets representing the
 * stack pages.
 */
public class StackSwitcher : Box
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
		super(cast(GtkBox*)gtkStackSwitcher, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_stack_switcher_get_type();
	}

	/**
	 * Create a new #GtkStackSwitcher.
	 *
	 * Returns: a new #GtkStackSwitcher.
	 *
	 * Since: 3.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_stack_switcher_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStackSwitcher*) p);
	}

	/**
	 * Retrieves the stack.
	 * See gtk_stack_switcher_set_stack().
	 *
	 * Returns: the stack, or %NULL if
	 *     none has been set explicitly.
	 *
	 * Since: 3.10
	 */
	public Stack getStack()
	{
		auto p = gtk_stack_switcher_get_stack(gtkStackSwitcher);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Stack)(cast(GtkStack*) p);
	}

	/**
	 * Sets the stack to control.
	 *
	 * Params:
	 *     stack = a #GtkStack
	 *
	 * Since: 3.10
	 */
	public void setStack(Stack stack)
	{
		gtk_stack_switcher_set_stack(gtkStackSwitcher, (stack is null) ? null : stack.getStackStruct());
	}
}
