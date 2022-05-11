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


module gtk.Gesture;

private import gdk.Device;
private import gdk.Event;
private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EventController;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkGesture` is the base class for gesture recognition.
 * 
 * Although `GtkGesture` is quite generalized to serve as a base for
 * multi-touch gestures, it is suitable to implement single-touch and
 * pointer-based gestures (using the special %NULL `GdkEventSequence`
 * value for these).
 * 
 * The number of touches that a `GtkGesture` need to be recognized is
 * controlled by the [property@Gtk.Gesture:n-points] property, if a
 * gesture is keeping track of less or more than that number of sequences,
 * it won't check whether the gesture is recognized.
 * 
 * As soon as the gesture has the expected number of touches, it will check
 * regularly if it is recognized, the criteria to consider a gesture as
 * "recognized" is left to `GtkGesture` subclasses.
 * 
 * A recognized gesture will then emit the following signals:
 * 
 * - [signal@Gtk.Gesture::begin] when the gesture is recognized.
 * - [signal@Gtk.Gesture::update], whenever an input event is processed.
 * - [signal@Gtk.Gesture::end] when the gesture is no longer recognized.
 * 
 * ## Event propagation
 * 
 * In order to receive events, a gesture needs to set a propagation phase
 * through [method@Gtk.EventController.set_propagation_phase].
 * 
 * In the capture phase, events are propagated from the toplevel down
 * to the target widget, and gestures that are attached to containers
 * above the widget get a chance to interact with the event before it
 * reaches the target.
 * 
 * In the bubble phase, events are propagated up from the target widget
 * to the toplevel, and gestures that are attached to containers above
 * the widget get a chance to interact with events that have not been
 * handled yet.
 * 
 * ## States of a sequence
 * 
 * Whenever input interaction happens, a single event may trigger a cascade
 * of `GtkGesture`s, both across the parents of the widget receiving the
 * event and in parallel within an individual widget. It is a responsibility
 * of the widgets using those gestures to set the state of touch sequences
 * accordingly in order to enable cooperation of gestures around the
 * `GdkEventSequence`s triggering those.
 * 
 * Within a widget, gestures can be grouped through [method@Gtk.Gesture.group].
 * Grouped gestures synchronize the state of sequences, so calling
 * [method@Gtk.Gesture.set_sequence_state] on one will effectively propagate
 * the state throughout the group.
 * 
 * By default, all sequences start out in the %GTK_EVENT_SEQUENCE_NONE state,
 * sequences in this state trigger the gesture event handler, but event
 * propagation will continue unstopped by gestures.
 * 
 * If a sequence enters into the %GTK_EVENT_SEQUENCE_DENIED state, the gesture
 * group will effectively ignore the sequence, letting events go unstopped
 * through the gesture, but the "slot" will still remain occupied while
 * the touch is active.
 * 
 * If a sequence enters in the %GTK_EVENT_SEQUENCE_CLAIMED state, the gesture
 * group will grab all interaction on the sequence, by:
 * 
 * - Setting the same sequence to %GTK_EVENT_SEQUENCE_DENIED on every other
 * gesture group within the widget, and every gesture on parent widgets
 * in the propagation chain.
 * - Emitting [signal@Gtk.Gesture::cancel] on every gesture in widgets
 * underneath in the propagation chain.
 * - Stopping event propagation after the gesture group handles the event.
 * 
 * Note: if a sequence is set early to %GTK_EVENT_SEQUENCE_CLAIMED on
 * %GDK_TOUCH_BEGIN/%GDK_BUTTON_PRESS (so those events are captured before
 * reaching the event widget, this implies %GTK_PHASE_CAPTURE), one similar
 * event will be emulated if the sequence changes to %GTK_EVENT_SEQUENCE_DENIED.
 * This way event coherence is preserved before event propagation is unstopped
 * again.
 * 
 * Sequence states can't be changed freely.
 * See [method@Gtk.Gesture.set_sequence_state] to know about the possible
 * lifetimes of a `GdkEventSequence`.
 * 
 * ## Touchpad gestures
 * 
 * On the platforms that support it, `GtkGesture` will handle transparently
 * touchpad gesture events. The only precautions users of `GtkGesture` should
 * do to enable this support are:
 * 
 * - If the gesture has %GTK_PHASE_NONE, ensuring events of type
 * %GDK_TOUCHPAD_SWIPE and %GDK_TOUCHPAD_PINCH are handled by the `GtkGesture`
 */
public class Gesture : EventController
{
	/** the main Gtk struct */
	protected GtkGesture* gtkGesture;

	/** Get the main Gtk struct */
	public GtkGesture* getGestureStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGesture;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGesture;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGesture* gtkGesture, bool ownedRef = false)
	{
		this.gtkGesture = gtkGesture;
		super(cast(GtkEventController*)gtkGesture, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gesture_get_type();
	}

	/**
	 * If there are touch sequences being currently handled by @gesture,
	 * returns %TRUE and fills in @rect with the bounding box containing
	 * all active touches.
	 *
	 * Otherwise, %FALSE will be returned.
	 *
	 * Note: This function will yield unexpected results on touchpad
	 * gestures. Since there is no correlation between physical and
	 * pixel distances, these will look as if constrained in an
	 * infinitely small area, @rect width and height will thus be 0
	 * regardless of the number of touchpoints.
	 *
	 * Params:
	 *     rect = bounding box containing all active touches.
	 *
	 * Returns: %TRUE if there are active touches, %FALSE otherwise
	 */
	public bool getBoundingBox(out GdkRectangle rect)
	{
		return gtk_gesture_get_bounding_box(gtkGesture, &rect) != 0;
	}

	/**
	 * If there are touch sequences being currently handled by @gesture,
	 * returns %TRUE and fills in @x and @y with the center of the bounding
	 * box containing all active touches.
	 *
	 * Otherwise, %FALSE will be returned.
	 *
	 * Params:
	 *     x = X coordinate for the bounding box center
	 *     y = Y coordinate for the bounding box center
	 *
	 * Returns: %FALSE if no active touches are present, %TRUE otherwise
	 */
	public bool getBoundingBoxCenter(out double x, out double y)
	{
		return gtk_gesture_get_bounding_box_center(gtkGesture, &x, &y) != 0;
	}

	/**
	 * Returns the logical `GdkDevice` that is currently operating
	 * on @gesture.
	 *
	 * This returns %NULL if the gesture is not being interacted.
	 *
	 * Returns: a `GdkDevice`
	 */
	public Device getDevice()
	{
		auto __p = gtk_gesture_get_device(gtkGesture);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) __p);
	}

	/**
	 * Returns all gestures in the group of @gesture
	 *
	 * Returns: The list
	 *     of `GtkGesture`s, free with g_list_free()
	 */
	public ListG getGroup()
	{
		auto __p = gtk_gesture_get_group(gtkGesture);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns the last event that was processed for @sequence.
	 *
	 * Note that the returned pointer is only valid as long as the
	 * @sequence is still interpreted by the @gesture. If in doubt,
	 * you should make a copy of the event.
	 *
	 * Params:
	 *     sequence = a `GdkEventSequence`
	 *
	 * Returns: The last event from @sequence
	 */
	public Event getLastEvent(GdkEventSequence* sequence)
	{
		auto __p = gtk_gesture_get_last_event(gtkGesture, sequence);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Event)(cast(GdkEvent*) __p);
	}

	/**
	 * Returns the `GdkEventSequence` that was last updated on @gesture.
	 *
	 * Returns: The last updated sequence
	 */
	public GdkEventSequence* getLastUpdatedSequence()
	{
		return gtk_gesture_get_last_updated_sequence(gtkGesture);
	}

	/**
	 * If @sequence is currently being interpreted by @gesture,
	 * returns %TRUE and fills in @x and @y with the last coordinates
	 * stored for that event sequence.
	 *
	 * The coordinates are always relative to the widget allocation.
	 *
	 * Params:
	 *     sequence = a `GdkEventSequence`, or %NULL for pointer events
	 *     x = return location for X axis of the sequence coordinates
	 *     y = return location for Y axis of the sequence coordinates
	 *
	 * Returns: %TRUE if @sequence is currently interpreted
	 */
	public bool getPoint(GdkEventSequence* sequence, out double x, out double y)
	{
		return gtk_gesture_get_point(gtkGesture, sequence, &x, &y) != 0;
	}

	/**
	 * Returns the @sequence state, as seen by @gesture.
	 *
	 * Params:
	 *     sequence = a `GdkEventSequence`
	 *
	 * Returns: The sequence state in @gesture
	 */
	public GtkEventSequenceState getSequenceState(GdkEventSequence* sequence)
	{
		return gtk_gesture_get_sequence_state(gtkGesture, sequence);
	}

	/**
	 * Returns the list of `GdkEventSequences` currently being interpreted
	 * by @gesture.
	 *
	 * Returns: A list
	 *     of `GdkEventSequence`, the list elements are owned by GTK and must
	 *     not be freed or modified, the list itself must be deleted
	 *     through g_list_free()
	 */
	public ListG getSequences()
	{
		auto __p = gtk_gesture_get_sequences(gtkGesture);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Adds @gesture to the same group than @group_gesture.
	 *
	 * Gestures are by default isolated in their own groups.
	 *
	 * Both gestures must have been added to the same widget before
	 * they can be grouped.
	 *
	 * When gestures are grouped, the state of `GdkEventSequences`
	 * is kept in sync for all of those, so calling
	 * [method@Gtk.Gesture.set_sequence_state], on one will transfer
	 * the same value to the others.
	 *
	 * Groups also perform an "implicit grabbing" of sequences, if a
	 * `GdkEventSequence` state is set to %GTK_EVENT_SEQUENCE_CLAIMED
	 * on one group, every other gesture group attached to the same
	 * `GtkWidget` will switch the state for that sequence to
	 * %GTK_EVENT_SEQUENCE_DENIED.
	 *
	 * Params:
	 *     gesture = a `GtkGesture`
	 */
	public void group(Gesture gesture)
	{
		gtk_gesture_group(gtkGesture, (gesture is null) ? null : gesture.getGestureStruct());
	}

	/**
	 * Returns %TRUE if @gesture is currently handling events
	 * corresponding to @sequence.
	 *
	 * Params:
	 *     sequence = a `GdkEventSequence`
	 *
	 * Returns: %TRUE if @gesture is handling @sequence, %FALSE otherwise
	 */
	public bool handlesSequence(GdkEventSequence* sequence)
	{
		return gtk_gesture_handles_sequence(gtkGesture, sequence) != 0;
	}

	/**
	 * Returns %TRUE if the gesture is currently active.
	 *
	 * A gesture is active while there are touch sequences
	 * interacting with it.
	 *
	 * Returns: %TRUE if gesture is active
	 */
	public bool isActive()
	{
		return gtk_gesture_is_active(gtkGesture) != 0;
	}

	/**
	 * Returns %TRUE if both gestures pertain to the same group.
	 *
	 * Params:
	 *     other = another `GtkGesture`
	 *
	 * Returns: whether the gestures are grouped
	 */
	public bool isGroupedWith(Gesture other)
	{
		return gtk_gesture_is_grouped_with(gtkGesture, (other is null) ? null : other.getGestureStruct()) != 0;
	}

	/**
	 * Returns %TRUE if the gesture is currently recognized.
	 *
	 * A gesture is recognized if there are as many interacting
	 * touch sequences as required by @gesture.
	 *
	 * Returns: %TRUE if gesture is recognized
	 */
	public bool isRecognized()
	{
		return gtk_gesture_is_recognized(gtkGesture) != 0;
	}

	/**
	 * Sets the state of @sequence in @gesture.
	 *
	 * Sequences start in state %GTK_EVENT_SEQUENCE_NONE, and whenever
	 * they change state, they can never go back to that state. Likewise,
	 * sequences in state %GTK_EVENT_SEQUENCE_DENIED cannot turn back to
	 * a not denied state. With these rules, the lifetime of an event
	 * sequence is constrained to the next four:
	 *
	 * * None
	 * * None → Denied
	 * * None → Claimed
	 * * None → Claimed → Denied
	 *
	 * Note: Due to event handling ordering, it may be unsafe to set the
	 * state on another gesture within a [signal@Gtk.Gesture::begin] signal
	 * handler, as the callback might be executed before the other gesture
	 * knows about the sequence. A safe way to perform this could be:
	 *
	 * ```c
	 * static void
	 * first_gesture_begin_cb (GtkGesture       *first_gesture,
	 * GdkEventSequence *sequence,
	 * gpointer          user_data)
	 * {
	 * gtk_gesture_set_sequence_state (first_gesture, sequence, GTK_EVENT_SEQUENCE_CLAIMED);
	 * gtk_gesture_set_sequence_state (second_gesture, sequence, GTK_EVENT_SEQUENCE_DENIED);
	 * }
	 *
	 * static void
	 * second_gesture_begin_cb (GtkGesture       *second_gesture,
	 * GdkEventSequence *sequence,
	 * gpointer          user_data)
	 * {
	 * if (gtk_gesture_get_sequence_state (first_gesture, sequence) == GTK_EVENT_SEQUENCE_CLAIMED)
	 * gtk_gesture_set_sequence_state (second_gesture, sequence, GTK_EVENT_SEQUENCE_DENIED);
	 * }
	 * ```
	 *
	 * If both gestures are in the same group, just set the state on
	 * the gesture emitting the event, the sequence will be already
	 * be initialized to the group's global state when the second
	 * gesture processes the event.
	 *
	 * Params:
	 *     sequence = a `GdkEventSequence`
	 *     state = the sequence state
	 *
	 * Returns: %TRUE if @sequence is handled by @gesture,
	 *     and the state is changed successfully
	 */
	public bool setSequenceState(GdkEventSequence* sequence, GtkEventSequenceState state)
	{
		return gtk_gesture_set_sequence_state(gtkGesture, sequence, state) != 0;
	}

	/**
	 * Sets the state of all sequences that @gesture is currently
	 * interacting with.
	 *
	 * See [method@Gtk.Gesture.set_sequence_state] for more details
	 * on sequence states.
	 *
	 * Params:
	 *     state = the sequence state
	 *
	 * Returns: %TRUE if the state of at least one sequence
	 *     was changed successfully
	 */
	public bool setState(GtkEventSequenceState state)
	{
		return gtk_gesture_set_state(gtkGesture, state) != 0;
	}

	/**
	 * Separates @gesture into an isolated group.
	 */
	public void ungroup()
	{
		gtk_gesture_ungroup(gtkGesture);
	}

	/**
	 * Emitted when the gesture is recognized.
	 *
	 * This means the number of touch sequences matches
	 * [property@Gtk.Gesture:n-points].
	 *
	 * Note: These conditions may also happen when an extra touch
	 * (eg. a third touch on a 2-touches gesture) is lifted, in that
	 * situation @sequence won't pertain to the current set of active
	 * touches, so don't rely on this being true.
	 *
	 * Params:
	 *     sequence = the `GdkEventSequence` that made the gesture
	 *         to be recognized
	 */
	gulong addOnBegin(void delegate(GdkEventSequence*, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "begin", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the gesture is recognized.
	 *
	 * This means the number of touch sequences matches
	 * [property@Gtk.Gesture:n-points].
	 *
	 * Note: These conditions may also happen when an extra touch
	 * (eg. a third touch on a 2-touches gesture) is lifted, in that
	 * situation @sequence won't pertain to the current set of active
	 * touches, so don't rely on this being true.
	 *
	 * Params:
	 *     sequence = the `GdkEventSequence` that made the gesture
	 *         to be recognized
	 */
	gulong addOnBegin(void delegate(Event, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "begin", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever a sequence is cancelled.
	 *
	 * This usually happens on active touches when
	 * [method@Gtk.EventController.reset] is called on @gesture
	 * (manually, due to grabs...), or the individual @sequence
	 * was claimed by parent widgets' controllers (see
	 * [method@Gtk.Gesture.set_sequence_state]).
	 *
	 * @gesture must forget everything about @sequence as in
	 * response to this signal.
	 *
	 * Params:
	 *     sequence = the `GdkEventSequence` that was cancelled
	 */
	gulong addOnCancel(void delegate(GdkEventSequence*, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancel", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever a sequence is cancelled.
	 *
	 * This usually happens on active touches when
	 * [method@Gtk.EventController.reset] is called on @gesture
	 * (manually, due to grabs...), or the individual @sequence
	 * was claimed by parent widgets' controllers (see
	 * [method@Gtk.Gesture.set_sequence_state]).
	 *
	 * @gesture must forget everything about @sequence as in
	 * response to this signal.
	 *
	 * Params:
	 *     sequence = the `GdkEventSequence` that was cancelled
	 */
	gulong addOnCancel(void delegate(Event, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancel", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when @gesture either stopped recognizing the event
	 * sequences as something to be handled, or the number of touch
	 * sequences became higher or lower than [property@Gtk.Gesture:n-points].
	 *
	 * Note: @sequence might not pertain to the group of sequences that
	 * were previously triggering recognition on @gesture (ie. a just
	 * pressed touch sequence that exceeds [property@Gtk.Gesture:n-points]).
	 * This situation may be detected by checking through
	 * [method@Gtk.Gesture.handles_sequence].
	 *
	 * Params:
	 *     sequence = the `GdkEventSequence` that made gesture
	 *         recognition to finish
	 */
	gulong addOnEnd(void delegate(GdkEventSequence*, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "end", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when @gesture either stopped recognizing the event
	 * sequences as something to be handled, or the number of touch
	 * sequences became higher or lower than [property@Gtk.Gesture:n-points].
	 *
	 * Note: @sequence might not pertain to the group of sequences that
	 * were previously triggering recognition on @gesture (ie. a just
	 * pressed touch sequence that exceeds [property@Gtk.Gesture:n-points]).
	 * This situation may be detected by checking through
	 * [method@Gtk.Gesture.handles_sequence].
	 *
	 * Params:
	 *     sequence = the `GdkEventSequence` that made gesture
	 *         recognition to finish
	 */
	gulong addOnEnd(void delegate(Event, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "end", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever a sequence state changes.
	 *
	 * See [method@Gtk.Gesture.set_sequence_state] to know
	 * more about the expectable sequence lifetimes.
	 *
	 * Params:
	 *     sequence = the `GdkEventSequence` that was cancelled
	 *     state = the new sequence state
	 */
	gulong addOnSequenceStateChanged(void delegate(GdkEventSequence*, GtkEventSequenceState, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "sequence-state-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever a sequence state changes.
	 *
	 * See [method@Gtk.Gesture.set_sequence_state] to know
	 * more about the expectable sequence lifetimes.
	 *
	 * Params:
	 *     sequence = the `GdkEventSequence` that was cancelled
	 *     state = the new sequence state
	 */
	gulong addOnSequenceStateChanged(void delegate(Event, GtkEventSequenceState, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "sequence-state-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever an event is handled while the gesture is recognized.
	 *
	 * @sequence is guaranteed to pertain to the set of active touches.
	 *
	 * Params:
	 *     sequence = the `GdkEventSequence` that was updated
	 */
	gulong addOnUpdate(void delegate(GdkEventSequence*, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "update", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever an event is handled while the gesture is recognized.
	 *
	 * @sequence is guaranteed to pertain to the set of active touches.
	 *
	 * Params:
	 *     sequence = the `GdkEventSequence` that was updated
	 */
	gulong addOnUpdate(void delegate(Event, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "update", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
