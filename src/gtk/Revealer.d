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
 * inFile  = GtkRevealer.html
 * outPack = gtk
 * outFile = Revealer
 * strct   = GtkRevealer
 * realStrct=
 * ctorStrct=
 * clss    = Revealer
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_revealer_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Revealer;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;



private import gtk.Bin;

/**
 * The GtkRevealer widget is a container which animates
 * the transition of its child from invisible to visible.
 *
 * The style of transition can be controlled with
 * gtk_revealer_set_transition_type().
 *
 * The GtkRevealer widget was added in GTK+ 3.10.
 */
public class Revealer : Bin
{
	
	/** the main Gtk struct */
	protected GtkRevealer* gtkRevealer;
	
	
	/** Get the main Gtk struct */
	public GtkRevealer* getRevealerStruct()
	{
		return gtkRevealer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRevealer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRevealer* gtkRevealer)
	{
		super(cast(GtkBin*)gtkRevealer);
		this.gtkRevealer = gtkRevealer;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkRevealer = cast(GtkRevealer*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkRevealer.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_revealer_new (void);
		auto p = gtk_revealer_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_revealer_new()");
		}
		this(cast(GtkRevealer*) p);
	}
	
	/**
	 * Returns whether the child is currently
	 * revealed. See gtk_revealer_set_reveal_child().
	 * This function returns TRUE as soon as the transition
	 * is to the revealed state is started. To learn whether
	 * the child is fully revealed (ie the transition is completed),
	 * use gtk_revealer_get_child_revealed().
	 * Returns: TRUE if the child is revealed. Since 3.10
	 */
	public int getRevealChild()
	{
		// gboolean gtk_revealer_get_reveal_child (GtkRevealer *revealer);
		return gtk_revealer_get_reveal_child(gtkRevealer);
	}
	
	/**
	 * Tells the GtkRevealer to reveal or conceal its child.
	 * The transition will be animated with the current
	 * transition type of revealer.
	 * Params:
	 * revealChild = TRUE to reveal the child
	 * Since 3.10
	 */
	public void setRevealChild(int revealChild)
	{
		// void gtk_revealer_set_reveal_child (GtkRevealer *revealer,  gboolean reveal_child);
		gtk_revealer_set_reveal_child(gtkRevealer, revealChild);
	}
	
	/**
	 * Returns whether the child is fully revealed, ie wether
	 * the transition to the revealed state is completed.
	 * Returns: TRUE if the child is fully revealed Since 3.10
	 */
	public int getChildRevealed()
	{
		// gboolean gtk_revealer_get_child_revealed (GtkRevealer *revealer);
		return gtk_revealer_get_child_revealed(gtkRevealer);
	}
	
	/**
	 * Returns the amount of time (in milliseconds) that
	 * transitions will take.
	 * Returns: the transition duration Since 3.10
	 */
	public uint getTransitionDuration()
	{
		// guint gtk_revealer_get_transition_duration  (GtkRevealer *revealer);
		return gtk_revealer_get_transition_duration(gtkRevealer);
	}
	
	/**
	 * Sets the duration that transitions will take.
	 * Params:
	 * duration = the new duration, in milliseconds
	 * Since 3.10
	 */
	public void setTransitionDuration(uint duration)
	{
		// void gtk_revealer_set_transition_duration  (GtkRevealer *revealer,  guint duration);
		gtk_revealer_set_transition_duration(gtkRevealer, duration);
	}
	
	/**
	 * Gets the type of animation that will be used
	 * for transitions in revealer.
	 * Returns: the current transition type of revealer Since 3.10
	 */
	public GtkRevealerTransitionType getTransitionType()
	{
		// GtkRevealerTransitionType gtk_revealer_get_transition_type  (GtkRevealer *revealer);
		return gtk_revealer_get_transition_type(gtkRevealer);
	}
	
	/**
	 * Sets the type of animation that will be used for
	 * transitions in revealer. Available types include
	 * various kinds of fades and slides.
	 * Params:
	 * transition = the new transition type
	 * Since 3.10
	 */
	public void setTransitionType(GtkRevealerTransitionType transition)
	{
		// void gtk_revealer_set_transition_type (GtkRevealer *revealer,  GtkRevealerTransitionType transition);
		gtk_revealer_set_transition_type(gtkRevealer, transition);
	}
}
