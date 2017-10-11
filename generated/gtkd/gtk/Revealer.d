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
private import gtk.Bin;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The GtkRevealer widget is a container which animates
 * the transition of its child from invisible to visible.
 * 
 * The style of transition can be controlled with
 * gtk_revealer_set_transition_type().
 * 
 * These animations respect the #GtkSettings:gtk-enable-animations
 * setting.
 * 
 * # CSS nodes
 * 
 * GtkRevealer has a single CSS node with name revealer.
 * 
 * The GtkRevealer widget was added in GTK+ 3.10.
 */
public class Revealer : Bin
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
		super(cast(GtkBin*)gtkRevealer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_revealer_get_type();
	}

	/**
	 * Creates a new #GtkRevealer.
	 *
	 * Returns: a newly created #GtkRevealer
	 *
	 * Since: 3.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_revealer_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRevealer*) p);
	}

	/**
	 * Returns whether the child is fully revealed, in other words whether
	 * the transition to the revealed state is completed.
	 *
	 * Returns: %TRUE if the child is fully revealed
	 *
	 * Since: 3.10
	 */
	public bool getChildRevealed()
	{
		return gtk_revealer_get_child_revealed(gtkRevealer) != 0;
	}

	/**
	 * Returns whether the child is currently
	 * revealed. See gtk_revealer_set_reveal_child().
	 *
	 * This function returns %TRUE as soon as the transition
	 * is to the revealed state is started. To learn whether
	 * the child is fully revealed (ie the transition is completed),
	 * use gtk_revealer_get_child_revealed().
	 *
	 * Returns: %TRUE if the child is revealed.
	 *
	 * Since: 3.10
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
	 *
	 * Since: 3.10
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
	 *
	 * Since: 3.10
	 */
	public GtkRevealerTransitionType getTransitionType()
	{
		return gtk_revealer_get_transition_type(gtkRevealer);
	}

	/**
	 * Tells the #GtkRevealer to reveal or conceal its child.
	 *
	 * The transition will be animated with the current
	 * transition type of @revealer.
	 *
	 * Params:
	 *     revealChild = %TRUE to reveal the child
	 *
	 * Since: 3.10
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
	 *
	 * Since: 3.10
	 */
	public void setTransitionDuration(uint duration)
	{
		gtk_revealer_set_transition_duration(gtkRevealer, duration);
	}

	/**
	 * Sets the type of animation that will be used for
	 * transitions in @revealer. Available types include
	 * various kinds of fades and slides.
	 *
	 * Params:
	 *     transition = the new transition type
	 *
	 * Since: 3.10
	 */
	public void setTransitionType(GtkRevealerTransitionType transition)
	{
		gtk_revealer_set_transition_type(gtkRevealer, transition);
	}
}
