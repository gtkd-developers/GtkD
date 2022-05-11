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


module gtk.Revealer;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkRevealer` animates the transition of its child from invisible to visible.
 * 
 * The style of transition can be controlled with
 * [method@Gtk.Revealer.set_transition_type].
 * 
 * These animations respect the [property@Gtk.Settings:gtk-enable-animations]
 * setting.
 * 
 * # CSS nodes
 * 
 * `GtkRevealer` has a single CSS node with name revealer.
 * When styling `GtkRevealer` using CSS, remember that it only hides its contents,
 * not itself. That means applied margin, padding and borders will be visible even
 * when the [property@Gtk.Revealer:reveal-child] property is set to %FALSE.
 * 
 * # Accessibility
 * 
 * `GtkRevealer` uses the %GTK_ACCESSIBLE_ROLE_GROUP role.
 * 
 * The child of `GtkRevealer`, if set, is always available in the accessibility
 * tree, regardless of the state of the revealer widget.
 */
public class Revealer : Widget
{
	/** the main Gtk struct */
	protected GtkRevealer* gtkRevealer;

	/** Get the main Gtk struct */
	public GtkRevealer* getRevealerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRevealer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRevealer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRevealer* gtkRevealer, bool ownedRef = false)
	{
		this.gtkRevealer = gtkRevealer;
		super(cast(GtkWidget*)gtkRevealer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_revealer_get_type();
	}

	/**
	 * Creates a new `GtkRevealer`.
	 *
	 * Returns: a newly created `GtkRevealer`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_revealer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRevealer*) __p);
	}

	/**
	 * Gets the child widget of @revealer.
	 *
	 * Returns: the child widget of @revealer
	 */
	public Widget getChild()
	{
		auto __p = gtk_revealer_get_child(gtkRevealer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether the child is fully revealed.
	 *
	 * In other words, this returns whether the transition
	 * to the revealed state is completed.
	 *
	 * Returns: %TRUE if the child is fully revealed
	 */
	public bool getChildRevealed()
	{
		return gtk_revealer_get_child_revealed(gtkRevealer) != 0;
	}

	/**
	 * Returns whether the child is currently revealed.
	 *
	 * This function returns %TRUE as soon as the transition
	 * is to the revealed state is started. To learn whether
	 * the child is fully revealed (ie the transition is completed),
	 * use [method@Gtk.Revealer.get_child_revealed].
	 *
	 * Returns: %TRUE if the child is revealed.
	 */
	public bool getRevealChild()
	{
		return gtk_revealer_get_reveal_child(gtkRevealer) != 0;
	}

	/**
	 * Returns the amount of time (in milliseconds) that
	 * transitions will take.
	 *
	 * Returns: the transition duration
	 */
	public uint getTransitionDuration()
	{
		return gtk_revealer_get_transition_duration(gtkRevealer);
	}

	/**
	 * Gets the type of animation that will be used
	 * for transitions in @revealer.
	 *
	 * Returns: the current transition type of @revealer
	 */
	public GtkRevealerTransitionType getTransitionType()
	{
		return gtk_revealer_get_transition_type(gtkRevealer);
	}

	/**
	 * Sets the child widget of @revealer.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_revealer_set_child(gtkRevealer, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Tells the `GtkRevealer` to reveal or conceal its child.
	 *
	 * The transition will be animated with the current
	 * transition type of @revealer.
	 *
	 * Params:
	 *     revealChild = %TRUE to reveal the child
	 */
	public void setRevealChild(bool revealChild)
	{
		gtk_revealer_set_reveal_child(gtkRevealer, revealChild);
	}

	/**
	 * Sets the duration that transitions will take.
	 *
	 * Params:
	 *     duration = the new duration, in milliseconds
	 */
	public void setTransitionDuration(uint duration)
	{
		gtk_revealer_set_transition_duration(gtkRevealer, duration);
	}

	/**
	 * Sets the type of animation that will be used for
	 * transitions in @revealer.
	 *
	 * Available types include various kinds of fades and slides.
	 *
	 * Params:
	 *     transition = the new transition type
	 */
	public void setTransitionType(GtkRevealerTransitionType transition)
	{
		gtk_revealer_set_transition_type(gtkRevealer, transition);
	}
}
