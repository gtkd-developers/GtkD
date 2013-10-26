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
 * inFile  = GtkStack.html
 * outPack = gtk
 * outFile = Stack
 * strct   = GtkStack
 * realStrct=
 * ctorStrct=
 * clss    = Stack
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_stack_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Stack;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import glib.Str;
private import gtk.Widget;


private import gtk.Container;

/**
 * The GtkStack widget is a container which only shows
 * one of its children at a time. In contrast to GtkNotebook,
 * GtkStack does not provide a means for users to change the
 * visible child. Instead, the GtkStackSwitcher widget can be
 * used with GtkStack to provide this functionality.
 *
 * Transitions between pages can be animated as slides or
 * fades. This can be controlled with gtk_stack_set_transition_type().
 * These animations respect the "gtk-enable-animations"
 * setting.
 *
 * The GtkStack widget was added in GTK+ 3.10.
 */
public class Stack : Container
{
	
	/** the main Gtk struct */
	protected GtkStack* gtkStack;
	
	
	public GtkStack* getStackStruct()
	{
		return gtkStack;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStack;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkStack* gtkStack)
	{
		super(cast(GtkContainer*)gtkStack);
		this.gtkStack = gtkStack;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkStack = cast(GtkStack*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkStack container.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_stack_new (void);
		auto p = gtk_stack_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_stack_new()");
		}
		this(cast(GtkStack*) p);
	}
	
	/**
	 * Adds a child to stack.
	 * The child is identified by the name.
	 * Params:
	 * child = the widget to add
	 * name = the name for child
	 * Since 3.10
	 */
	public void addNamed(Widget child, string name)
	{
		// void gtk_stack_add_named (GtkStack *stack,  GtkWidget *child,  const gchar *name);
		gtk_stack_add_named(gtkStack, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(name));
	}
	
	/**
	 * Adds a child to stack.
	 * The child is identified by the name. The title
	 * will be used by GtkStackSwitcher to represent
	 * child in a tab bar, so it should be short.
	 * Params:
	 * child = the widget to add
	 * name = the name for child
	 * title = a human-readable title for child
	 * Since 3.10
	 */
	public void addTitled(Widget child, string name, string title)
	{
		// void gtk_stack_add_titled (GtkStack *stack,  GtkWidget *child,  const gchar *name,  const gchar *title);
		gtk_stack_add_titled(gtkStack, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(name), Str.toStringz(title));
	}
	
	/**
	 * Makes child the visible child of stack.
	 * If child is different from the currently
	 * visible child, the transition between the
	 * two will be animated with the current
	 * transition type of stack.
	 * Params:
	 * child = a child of stack
	 * Since 3.10
	 */
	public void setVisibleChild(Widget child)
	{
		// void gtk_stack_set_visible_child (GtkStack *stack,  GtkWidget *child);
		gtk_stack_set_visible_child(gtkStack, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Gets the currently visible child of stack, or NULL if
	 * there are no visible children.
	 * Returns: the visible child of the GtkStack. [transfer none] Since 3.10
	 */
	public Widget getVisibleChild()
	{
		// GtkWidget * gtk_stack_get_visible_child (GtkStack *stack);
		auto p = gtk_stack_get_visible_child(gtkStack);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Makes the child with the given name visible.
	 * If child is different from the currently
	 * visible child, the transition between the
	 * two will be animated with the current
	 * transition type of stack.
	 * Params:
	 * name = the name of the child to make visible
	 * Since 3.10
	 */
	public void setVisibleChildName(string name)
	{
		// void gtk_stack_set_visible_child_name (GtkStack *stack,  const gchar *name);
		gtk_stack_set_visible_child_name(gtkStack, Str.toStringz(name));
	}
	
	/**
	 * Returns the name of the currently visible child of stack, or
	 * NULL if there is no visible child.
	 * Returns: the name of the visible child of the GtkStack. [transfer none] Since 3.10
	 */
	public string getVisibleChildName()
	{
		// const gchar * gtk_stack_get_visible_child_name (GtkStack *stack);
		return Str.toString(gtk_stack_get_visible_child_name(gtkStack));
	}
	
	/**
	 * Makes the child with the given name visible.
	 * Params:
	 * name = the name of the child to make visible
	 * transition = the transition type to use
	 * Since 3.10
	 */
	public void setVisibleChildFull(string name, GtkStackTransitionType transition)
	{
		// void gtk_stack_set_visible_child_full (GtkStack *stack,  const gchar *name,  GtkStackTransitionType transition);
		gtk_stack_set_visible_child_full(gtkStack, Str.toStringz(name), transition);
	}
	
	/**
	 * Sets the GtkStack to be homogeneous or not. If it
	 * is homogeneous, the GtkStack will request the same
	 * size for all its children. If it isn't, the stack
	 * may change size when a different child becomes visible.
	 * Params:
	 * homogeneous = TRUE to make stack homogeneous
	 * Since 3.10
	 */
	public void setHomogeneous(int homogeneous)
	{
		// void gtk_stack_set_homogeneous (GtkStack *stack,  gboolean homogeneous);
		gtk_stack_set_homogeneous(gtkStack, homogeneous);
	}
	
	/**
	 * Gets whether stack is homogeneous.
	 * See gtk_stack_set_homogeneous().
	 * Returns: whether stack is homogeneous. Since 3.10
	 */
	public int getHomogeneous()
	{
		// gboolean gtk_stack_get_homogeneous (GtkStack *stack);
		return gtk_stack_get_homogeneous(gtkStack);
	}
	
	/**
	 * Sets the duration that transitions between pages in stack
	 * will take.
	 * Params:
	 * duration = the new duration, in milliseconds
	 * Since 3.10
	 */
	public void setTransitionDuration(uint duration)
	{
		// void gtk_stack_set_transition_duration (GtkStack *stack,  guint duration);
		gtk_stack_set_transition_duration(gtkStack, duration);
	}
	
	/**
	 * Returns the amount of time (in milliseconds) that
	 * transitions between pages in stack will take.
	 * Returns: the transition duration Since 3.10
	 */
	public uint getTransitionDuration()
	{
		// guint gtk_stack_get_transition_duration (GtkStack *stack);
		return gtk_stack_get_transition_duration(gtkStack);
	}
	
	/**
	 * Sets the type of animation that will be used for
	 * transitions between pages in stack. Available
	 * types include various kinds of fades and slides.
	 * The transition type can be changed without problems
	 * at runtime, so it is possible to change the animation
	 * based on the page that is about to become current.
	 * Params:
	 * transition = the new transition type
	 * Since 3.10
	 */
	public void setTransitionType(GtkStackTransitionType transition)
	{
		// void gtk_stack_set_transition_type (GtkStack *stack,  GtkStackTransitionType transition);
		gtk_stack_set_transition_type(gtkStack, transition);
	}
	
	/**
	 * Gets the type of animation that will be used
	 * for transitions between pages in stack.
	 * Returns: the current transition type of stack Since 3.10
	 */
	public GtkStackTransitionType getTransitionType()
	{
		// GtkStackTransitionType gtk_stack_get_transition_type (GtkStack *stack);
		return gtk_stack_get_transition_type(gtkStack);
	}
}
