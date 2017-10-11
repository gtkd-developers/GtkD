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


module gtk.StackSidebar;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Bin;
private import gtk.Stack;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A GtkStackSidebar enables you to quickly and easily provide a
 * consistent "sidebar" object for your user interface.
 * 
 * In order to use a GtkStackSidebar, you simply use a GtkStack to
 * organize your UI flow, and add the sidebar to your sidebar area. You
 * can use gtk_stack_sidebar_set_stack() to connect the #GtkStackSidebar
 * to the #GtkStack.
 * 
 * # CSS nodes
 * 
 * GtkStackSidebar has a single CSS node with name stacksidebar and
 * style class .sidebar.
 * 
 * When circumstances require it, GtkStackSidebar adds the
 * .needs-attention style class to the widgets representing the stack
 * pages.
 */
public class StackSidebar : Bin
{
	/** the main Gtk struct */
	protected GtkStackSidebar* gtkStackSidebar;

	/** Get the main Gtk struct */
	public GtkStackSidebar* getStackSidebarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStackSidebar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStackSidebar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStackSidebar* gtkStackSidebar, bool ownedRef = false)
	{
		this.gtkStackSidebar = gtkStackSidebar;
		super(cast(GtkBin*)gtkStackSidebar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_stack_sidebar_get_type();
	}

	/**
	 * Creates a new sidebar.
	 *
	 * Returns: the new #GtkStackSidebar
	 *
	 * Since: 3.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_stack_sidebar_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStackSidebar*) p);
	}

	/**
	 * Retrieves the stack.
	 * See gtk_stack_sidebar_set_stack().
	 *
	 * Returns: the associated #GtkStack or
	 *     %NULL if none has been set explicitly
	 *
	 * Since: 3.16
	 */
	public Stack getStack()
	{
		auto p = gtk_stack_sidebar_get_stack(gtkStackSidebar);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Stack)(cast(GtkStack*) p);
	}

	/**
	 * Set the #GtkStack associated with this #GtkStackSidebar.
	 *
	 * The sidebar widget will automatically update according to the order
	 * (packing) and items within the given #GtkStack.
	 *
	 * Params:
	 *     stack = a #GtkStack
	 *
	 * Since: 3.16
	 */
	public void setStack(Stack stack)
	{
		gtk_stack_sidebar_set_stack(gtkStackSidebar, (stack is null) ? null : stack.getStackStruct());
	}
}
