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


module gtk.GestureSingle;

private import gtk.Gesture;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkGestureSingle` is a `GtkGestures` subclass optimized for singe-touch
 * and mouse gestures.
 * 
 * Under interaction, these gestures stick to the first interacting sequence,
 * which is accessible through [method@Gtk.GestureSingle.get_current_sequence]
 * while the gesture is being interacted with.
 * 
 * By default gestures react to both %GDK_BUTTON_PRIMARY and touch events.
 * [method@Gtk.GestureSingle.set_touch_only] can be used to change the
 * touch behavior. Callers may also specify a different mouse button number
 * to interact with through [method@Gtk.GestureSingle.set_button], or react
 * to any mouse button by setting it to 0. While the gesture is active, the
 * button being currently pressed can be known through
 * [method@Gtk.GestureSingle.get_current_button].
 */
public class GestureSingle : Gesture
{
	/** the main Gtk struct */
	protected GtkGestureSingle* gtkGestureSingle;

	/** Get the main Gtk struct */
	public GtkGestureSingle* getGestureSingleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGestureSingle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGestureSingle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGestureSingle* gtkGestureSingle, bool ownedRef = false)
	{
		this.gtkGestureSingle = gtkGestureSingle;
		super(cast(GtkGesture*)gtkGestureSingle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gesture_single_get_type();
	}

	/**
	 * Returns the button number @gesture listens for.
	 *
	 * If this is 0, the gesture reacts to any button press.
	 *
	 * Returns: The button number, or 0 for any button
	 */
	public uint getButton()
	{
		return gtk_gesture_single_get_button(gtkGestureSingle);
	}

	/**
	 * Returns the button number currently interacting
	 * with @gesture, or 0 if there is none.
	 *
	 * Returns: The current button number
	 */
	public uint getCurrentButton()
	{
		return gtk_gesture_single_get_current_button(gtkGestureSingle);
	}

	/**
	 * Returns the event sequence currently interacting with @gesture.
	 *
	 * This is only meaningful if [method@Gtk.Gesture.is_active]
	 * returns %TRUE.
	 *
	 * Returns: the current sequence
	 */
	public GdkEventSequence* getCurrentSequence()
	{
		return gtk_gesture_single_get_current_sequence(gtkGestureSingle);
	}

	/**
	 * Gets whether a gesture is exclusive.
	 *
	 * For more information, see [method@Gtk.GestureSingle.set_exclusive].
	 *
	 * Returns: Whether the gesture is exclusive
	 */
	public bool getExclusive()
	{
		return gtk_gesture_single_get_exclusive(gtkGestureSingle) != 0;
	}

	/**
	 * Returns %TRUE if the gesture is only triggered by touch events.
	 *
	 * Returns: %TRUE if the gesture only handles touch events
	 */
	public bool getTouchOnly()
	{
		return gtk_gesture_single_get_touch_only(gtkGestureSingle) != 0;
	}

	/**
	 * Sets the button number @gesture listens to.
	 *
	 * If non-0, every button press from a different button
	 * number will be ignored. Touch events implicitly match
	 * with button 1.
	 *
	 * Params:
	 *     button = button number to listen to, or 0 for any button
	 */
	public void setButton(uint button)
	{
		gtk_gesture_single_set_button(gtkGestureSingle, button);
	}

	/**
	 * Sets whether @gesture is exclusive.
	 *
	 * An exclusive gesture will only handle pointer and "pointer emulated"
	 * touch events, so at any given time, there is only one sequence able
	 * to interact with those.
	 *
	 * Params:
	 *     exclusive = %TRUE to make @gesture exclusive
	 */
	public void setExclusive(bool exclusive)
	{
		gtk_gesture_single_set_exclusive(gtkGestureSingle, exclusive);
	}

	/**
	 * Sets whether to handle only touch events.
	 *
	 * If @touch_only is %TRUE, @gesture will only handle events of type
	 * %GDK_TOUCH_BEGIN, %GDK_TOUCH_UPDATE or %GDK_TOUCH_END. If %FALSE,
	 * mouse events will be handled too.
	 *
	 * Params:
	 *     touchOnly = whether @gesture handles only touch events
	 */
	public void setTouchOnly(bool touchOnly)
	{
		gtk_gesture_single_set_touch_only(gtkGestureSingle, touchOnly);
	}
}
