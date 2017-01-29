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
private import gdk.Window;
private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EventController;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkGesture is the base object for gesture recognition, although this
 * object is quite generalized to serve as a base for multi-touch gestures,
 * it is suitable to implement single-touch and pointer-based gestures (using
 * the special %NULL #GdkEventSequence value for these).
 * 
 * The number of touches that a #GtkGesture need to be recognized is controlled
 * by the #GtkGesture:n-points property, if a gesture is keeping track of less
 * or more than that number of sequences, it won't check wether the gesture
 * is recognized.
 * 
 * As soon as the gesture has the expected number of touches, the gesture will
 * run the #GtkGesture::check signal regularly on input events until the gesture
 * is recognized, the criteria to consider a gesture as "recognized" is left to
 * #GtkGesture subclasses.
 * 
 * A recognized gesture will then emit the following signals:
 * - #GtkGesture::begin when the gesture is recognized.
 * - A number of #GtkGesture::update, whenever an input event is processed.
 * - #GtkGesture::end when the gesture is no longer recognized.
 * 
 * ## Event propagation
 * 
 * In order to receive events, a gesture needs to either set a propagation phase
 * through gtk_event_controller_set_propagation_phase(), or feed those manually
 * through gtk_event_controller_handle_event().
 * 
 * In the capture phase, events are propagated from the toplevel down to the
 * target widget, and gestures that are attached to containers above the widget
 * get a chance to interact with the event before it reaches the target.
 * 
 * After the capture phase, GTK+ emits the traditional #GtkWidget::button-press-event,
 * #GtkWidget::button-release-event, #GtkWidget::touch-event, etc signals. Gestures
 * with the %GTK_PHASE_TARGET phase are fed events from the default #GtkWidget::event
 * handlers.
 * 
 * In the bubble phase, events are propagated up from the target widget to the
 * toplevel, and gestures that are attached to containers above the widget get
 * a chance to interact with events that have not been handled yet.
 * 
 * ## States of a sequence # {#touch-sequence-states}
 * 
 * Whenever input interaction happens, a single event may trigger a cascade of
 * #GtkGestures, both across the parents of the widget receiving the event and
 * in parallel within an individual widget. It is a responsibility of the
 * widgets using those gestures to set the state of touch sequences accordingly
 * in order to enable cooperation of gestures around the #GdkEventSequences
 * triggering those.
 * 
 * Within a widget, gestures can be grouped through gtk_gesture_group(),
 * grouped gestures synchronize the state of sequences, so calling
 * gtk_gesture_set_sequence_state() on one will effectively propagate
 * the state throughout the group.
 * 
 * By default, all sequences start out in the #GTK_EVENT_SEQUENCE_NONE state,
 * sequences in this state trigger the gesture event handler, but event
 * propagation will continue unstopped by gestures.
 * 
 * If a sequence enters into the #GTK_EVENT_SEQUENCE_DENIED state, the gesture
 * group will effectively ignore the sequence, letting events go unstopped
 * through the gesture, but the "slot" will still remain occupied while
 * the touch is active.
 * 
 * If a sequence enters in the #GTK_EVENT_SEQUENCE_CLAIMED state, the gesture
 * group will grab all interaction on the sequence, by:
 * - Setting the same sequence to #GTK_EVENT_SEQUENCE_DENIED on every other gesture
 * group within the widget, and every gesture on parent widgets in the propagation
 * chain.
 * - calling #GtkGesture::cancel on every gesture in widgets underneath in the
 * propagation chain.
 * - Stopping event propagation after the gesture group handles the event.
 * 
 * Note: if a sequence is set early to #GTK_EVENT_SEQUENCE_CLAIMED on
 * #GDK_TOUCH_BEGIN/#GDK_BUTTON_PRESS (so those events are captured before
 * reaching the event widget, this implies #GTK_PHASE_CAPTURE), one similar
 * event will emulated if the sequence changes to #GTK_EVENT_SEQUENCE_DENIED.
 * This way event coherence is preserved before event propagation is unstopped
 * again.
 * 
 * Sequence states can't be changed freely, see gtk_gesture_set_sequence_state()
 * to know about the possible lifetimes of a #GdkEventSequence.
 * 
 * ## Touchpad gestures
 * 
 * On the platforms that support it, #GtkGesture will handle transparently
 * touchpad gesture events. The only precautions users of #GtkGesture should do
 * to enable this support are:
 * - Enabling %GDK_TOUCHPAD_GESTURE_MASK on their #GdkWindows
 * - If the gesture has %GTK_PHASE_NONE, ensuring events of type
 * %GDK_TOUCHPAD_SWIPE and %GDK_TOUCHPAD_PINCH are handled by the #GtkGesture
 */
public class Gesture : EventController
{
	/** the main Gtk struct */
	protected GtkGesture* gtkGesture;

	/** Get the main Gtk struct */
	public GtkGesture* getGestureStruct()
	{
		return gtkGesture;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGesture;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkGesture = cast(GtkGesture*)obj;
		super.setStruct(obj);
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
	 * this function returns %TRUE and fills in @rect with the bounding
	 * box containing all active touches. Otherwise, %FALSE will be
	 * returned.
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
	 * Return: %TRUE if there are active touches, %FALSE otherwise
	 *
	 * Since: 3.14
	 */
	public bool getBoundingBox(out GdkRectangle rect)
	{
		return gtk_gesture_get_bounding_box(gtkGesture, &rect) != 0;
	}

	/**
	 * If there are touch sequences being currently handled by @gesture,
	 * this function returns %TRUE and fills in @x and @y with the center
	 * of the bounding box containing all active touches. Otherwise, %FALSE
	 * will be returned.
	 *
	 * Params:
	 *     x = X coordinate for the bounding box center
	 *     y = Y coordinate for the bounding box center
	 *
	 * Return: %FALSE if no active touches are present, %TRUE otherwise
	 *
	 * Since: 3.14
	 */
	public bool getBoundingBoxCenter(out double x, out double y)
	{
		return gtk_gesture_get_bounding_box_center(gtkGesture, &x, &y) != 0;
	}

	/**
	 * Returns the master #GdkDevice that is currently operating
	 * on @gesture, or %NULL if the gesture is not being interacted.
	 *
	 * Return: a #GdkDevice, or %NULL
	 *
	 * Since: 3.14
	 */
	public Device getDevice()
	{
		auto p = gtk_gesture_get_device(gtkGesture);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}

	/**
	 * Returns all gestures in the group of @gesture
	 *
	 * Return: The list
	 *     of #GtkGestures, free with g_list_free()
	 *
	 * Since: 3.14
	 */
	public ListG getGroup()
	{
		auto p = gtk_gesture_get_group(gtkGesture);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * Returns the last event that was processed for @sequence.
	 *
	 * Note that the returned pointer is only valid as long as the @sequence
	 * is still interpreted by the @gesture. If in doubt, you should make
	 * a copy of the event.
	 *
	 * Params:
	 *     sequence = a #GdkEventSequence
	 *
	 * Return: The last event from @sequence
	 */
	public Event getLastEvent(GdkEventSequence* sequence)
	{
		auto p = gtk_gesture_get_last_event(gtkGesture, sequence);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p);
	}

	/**
	 * Returns the #GdkEventSequence that was last updated on @gesture.
	 *
	 * Return: The last updated sequence
	 *
	 * Since: 3.14
	 */
	public GdkEventSequence* getLastUpdatedSequence()
	{
		return gtk_gesture_get_last_updated_sequence(gtkGesture);
	}

	/**
	 * If @sequence is currently being interpreted by @gesture, this
	 * function returns %TRUE and fills in @x and @y with the last coordinates
	 * stored for that event sequence. The coordinates are always relative to the
	 * widget allocation.
	 *
	 * Params:
	 *     sequence = a #GdkEventSequence, or %NULL for pointer events
	 *     x = return location for X axis of the sequence coordinates
	 *     y = return location for Y axis of the sequence coordinates
	 *
	 * Return: %TRUE if @sequence is currently interpreted
	 *
	 * Since: 3.14
	 */
	public bool getPoint(GdkEventSequence* sequence, out double x, out double y)
	{
		return gtk_gesture_get_point(gtkGesture, sequence, &x, &y) != 0;
	}

	/**
	 * Returns the @sequence state, as seen by @gesture.
	 *
	 * Params:
	 *     sequence = a #GdkEventSequence
	 *
	 * Return: The sequence state in @gesture
	 *
	 * Since: 3.14
	 */
	public GtkEventSequenceState getSequenceState(GdkEventSequence* sequence)
	{
		return gtk_gesture_get_sequence_state(gtkGesture, sequence);
	}

	/**
	 * Returns the list of #GdkEventSequences currently being interpreted
	 * by @gesture.
	 *
	 * Return: A list
	 *     of #GdkEventSequences, the list elements are owned by GTK+
	 *     and must not be freed or modified, the list itself must be deleted
	 *     through g_list_free()
	 *
	 * Since: 3.14
	 */
	public ListG getSequences()
	{
		auto p = gtk_gesture_get_sequences(gtkGesture);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * Returns the user-defined window that receives the events
	 * handled by @gesture. See gtk_gesture_set_window() for more
	 * information.
	 *
	 * Return: the user defined window, or %NULL if none
	 *
	 * Since: 3.14
	 */
	public Window getWindow()
	{
		auto p = gtk_gesture_get_window(gtkGesture);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Adds @gesture to the same group than @group_gesture. Gestures
	 * are by default isolated in their own groups.
	 *
	 * When gestures are grouped, the state of #GdkEventSequences
	 * is kept in sync for all of those, so calling gtk_gesture_set_sequence_state(),
	 * on one will transfer the same value to the others.
	 *
	 * Groups also perform an "implicit grabbing" of sequences, if a
	 * #GdkEventSequence state is set to #GTK_EVENT_SEQUENCE_CLAIMED on one group,
	 * every other gesture group attached to the same #GtkWidget will switch the
	 * state for that sequence to #GTK_EVENT_SEQUENCE_DENIED.
	 *
	 * Params:
	 *     gesture = a #GtkGesture
	 *
	 * Since: 3.14
	 */
	public void group(Gesture gesture)
	{
		gtk_gesture_group(gtkGesture, (gesture is null) ? null : gesture.getGestureStruct());
	}

	/**
	 * Returns %TRUE if @gesture is currently handling events corresponding to
	 * @sequence.
	 *
	 * Params:
	 *     sequence = a #GdkEventSequence
	 *
	 * Return: %TRUE if @gesture is handling @sequence
	 *
	 * Since: 3.14
	 */
	public bool handlesSequence(GdkEventSequence* sequence)
	{
		return gtk_gesture_handles_sequence(gtkGesture, sequence) != 0;
	}

	/**
	 * Returns %TRUE if the gesture is currently active.
	 * A gesture is active meanwhile there are touch sequences
	 * interacting with it.
	 *
	 * Return: %TRUE if gesture is active
	 *
	 * Since: 3.14
	 */
	public bool isActive()
	{
		return gtk_gesture_is_active(gtkGesture) != 0;
	}

	/**
	 * Returns %TRUE if both gestures pertain to the same group.
	 *
	 * Params:
	 *     other = another #GtkGesture
	 *
	 * Return: whether the gestures are grouped
	 *
	 * Since: 3.14
	 */
	public bool isGroupedWith(Gesture other)
	{
		return gtk_gesture_is_grouped_with(gtkGesture, (other is null) ? null : other.getGestureStruct()) != 0;
	}

	/**
	 * Returns %TRUE if the gesture is currently recognized.
	 * A gesture is recognized if there are as many interacting
	 * touch sequences as required by @gesture, and #GtkGesture::check
	 * returned %TRUE for the sequences being currently interpreted.
	 *
	 * Return: %TRUE if gesture is recognized
	 *
	 * Since: 3.14
	 */
	public bool isRecognized()
	{
		return gtk_gesture_is_recognized(gtkGesture) != 0;
	}

	/**
	 * Sets the state of @sequence in @gesture. Sequences start
	 * in state #GTK_EVENT_SEQUENCE_NONE, and whenever they change
	 * state, they can never go back to that state. Likewise,
	 * sequences in state #GTK_EVENT_SEQUENCE_DENIED cannot turn
	 * back to a not denied state. With these rules, the lifetime
	 * of an event sequence is constrained to the next four:
	 *
	 * * None
	 * * None → Denied
	 * * None → Claimed
	 * * None → Claimed → Denied
	 *
	 * Note: Due to event handling ordering, it may be unsafe to
	 * set the state on another gesture within a #GtkGesture::begin
	 * signal handler, as the callback might be executed before
	 * the other gesture knows about the sequence. A safe way to
	 * perform this could be:
	 *
	 * |[
	 * static void
	 * first_gesture_begin_cb (GtkGesture       *first_gesture,
	 * GdkEventSequence *sequence,
	 * gpointer          user_data)
	 * {
	 * gtk_gesture_set_sequence_state (first_gesture, sequence, GTK_EVENT_SEQUENCE_ACCEPTED);
	 * gtk_gesture_set_sequence_state (second_gesture, sequence, GTK_EVENT_SEQUENCE_DENIED);
	 * }
	 *
	 * static void
	 * second_gesture_begin_cb (GtkGesture       *second_gesture,
	 * GdkEventSequence *sequence,
	 * gpointer          user_data)
	 * {
	 * if (gtk_gesture_get_sequence_state (first_gesture, sequence) == GTK_EVENT_SEQUENCE_ACCEPTED)
	 * gtk_gesture_set_sequence_state (second_gesture, sequence, GTK_EVENT_SEQUENCE_DENIED);
	 * }
	 * ]|
	 *
	 * If both gestures are in the same group, just set the state on
	 * the gesture emitting the event, the sequence will be already
	 * be initialized to the group's global state when the second
	 * gesture processes the event.
	 *
	 * Params:
	 *     sequence = a #GdkEventSequence
	 *     state = the sequence state
	 *
	 * Return: %TRUE if @sequence is handled by @gesture,
	 *     and the state is changed successfully
	 *
	 * Since: 3.14
	 */
	public bool setSequenceState(GdkEventSequence* sequence, GtkEventSequenceState state)
	{
		return gtk_gesture_set_sequence_state(gtkGesture, sequence, state) != 0;
	}

	/**
	 * Sets the state of all sequences that @gesture is currently
	 * interacting with. See gtk_gesture_set_sequence_state()
	 * for more details on sequence states.
	 *
	 * Params:
	 *     state = the sequence state
	 *
	 * Return: %TRUE if the state of at least one sequence
	 *     was changed successfully
	 *
	 * Since: 3.14
	 */
	public bool setState(GtkEventSequenceState state)
	{
		return gtk_gesture_set_state(gtkGesture, state) != 0;
	}

	/**
	 * Sets a specific window to receive events about, so @gesture
	 * will effectively handle only events targeting @window, or
	 * a child of it. @window must pertain to gtk_event_controller_get_widget().
	 *
	 * Params:
	 *     window = a #GdkWindow, or %NULL
	 *
	 * Since: 3.14
	 */
	public void setWindow(Window window)
	{
		gtk_gesture_set_window(gtkGesture, (window is null) ? null : window.getWindowStruct());
	}

	/**
	 * Separates @gesture into an isolated group.
	 *
	 * Since: 3.14
	 */
	public void ungroup()
	{
		gtk_gesture_ungroup(gtkGesture);
	}

	protected class OnBeginDelegateWrapper
	{
		static OnBeginDelegateWrapper[] listeners;
		void delegate(GdkEventSequence*, Gesture) dlg;
		gulong handlerId;
		
		this(void delegate(GdkEventSequence*, Gesture) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnBeginDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * This signal is emitted when the gesture is recognized. This means the
	 * number of touch sequences matches #GtkGesture:n-points, and the #GtkGesture::check
	 * handler(s) returned #TRUE.
	 *
	 * Note: These conditions may also happen when an extra touch (eg. a third touch
	 * on a 2-touches gesture) is lifted, in that situation @sequence won't pertain
	 * to the current set of active touches, so don't rely on this being true.
	 *
	 * Params:
	 *     sequence = the #GdkEventSequence that made the gesture to be recognized
	 *
	 * Since: 3.14
	 */
	gulong addOnBegin(void delegate(GdkEventSequence*, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnBeginDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"begin",
			cast(GCallback)&callBackBegin,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackBeginDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackBegin(GtkGesture* gestureStruct, GdkEventSequence* sequence, OnBeginDelegateWrapper wrapper)
	{
		wrapper.dlg(sequence, wrapper.outer);
	}
	
	extern(C) static void callBackBeginDestroy(OnBeginDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnBeginGenericDelegateWrapper
	{
		static OnBeginGenericDelegateWrapper[] listeners;
		void delegate(Event, Gesture) dlg;
		gulong handlerId;
		
		this(void delegate(Event, Gesture) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnBeginGenericDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}
	
	/**
	 * This signal is emitted when the gesture is recognized. This means the
	 * number of touch sequences matches #GtkGesture:n-points, and the #GtkGesture::check
	 * handler(s) returned #TRUE.
	 *
	 * Note: These conditions may also happen when an extra touch (eg. a third touch
	 * on a 2-touches gesture) is lifted, in that situation @sequence won't pertain
	 * to the current set of active touches, so don't rely on this being true.
	 *
	 * Params:
	 *     sequence = the #GdkEventSequence that made the gesture to be recognized
	 *
	 * Since: 3.14
	 */
	gulong addOnBegin(void delegate(Event, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnBeginGenericDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"begin",
			cast(GCallback)&callBackBeginGeneric,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackBeginGenericDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackBeginGeneric(GtkGesture* gestureStruct, GdkEvent* sequence, OnBeginGenericDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Event)(sequence), wrapper.outer);
	}
	
	extern(C) static void callBackBeginGenericDestroy(OnBeginGenericDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnCancelDelegateWrapper
	{
		static OnCancelDelegateWrapper[] listeners;
		void delegate(GdkEventSequence*, Gesture) dlg;
		gulong handlerId;
		
		this(void delegate(GdkEventSequence*, Gesture) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnCancelDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * This signal is emitted whenever a sequence is cancelled. This usually
	 * happens on active touches when gtk_event_controller_reset() is called
	 * on @gesture (manually, due to grabs...), or the individual @sequence
	 * was claimed by parent widgets' controllers (see gtk_gesture_set_sequence_state()).
	 *
	 * @gesture must forget everything about @sequence as a reaction to this signal.
	 *
	 * Params:
	 *     sequence = the #GdkEventSequence that was cancelled
	 *
	 * Since: 3.14
	 */
	gulong addOnCancel(void delegate(GdkEventSequence*, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnCancelDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"cancel",
			cast(GCallback)&callBackCancel,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackCancelDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackCancel(GtkGesture* gestureStruct, GdkEventSequence* sequence, OnCancelDelegateWrapper wrapper)
	{
		wrapper.dlg(sequence, wrapper.outer);
	}
	
	extern(C) static void callBackCancelDestroy(OnCancelDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnCancelGenericDelegateWrapper
	{
		static OnCancelGenericDelegateWrapper[] listeners;
		void delegate(Event, Gesture) dlg;
		gulong handlerId;
		
		this(void delegate(Event, Gesture) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnCancelGenericDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}
	
	/**
	 * This signal is emitted whenever a sequence is cancelled. This usually
	 * happens on active touches when gtk_event_controller_reset() is called
	 * on @gesture (manually, due to grabs...), or the individual @sequence
	 * was claimed by parent widgets' controllers (see gtk_gesture_set_sequence_state()).
	 *
	 * @gesture must forget everything about @sequence as a reaction to this signal.
	 *
	 * Params:
	 *     sequence = the #GdkEventSequence that was cancelled
	 *
	 * Since: 3.14
	 */
	gulong addOnCancel(void delegate(Event, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnCancelGenericDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"cancel",
			cast(GCallback)&callBackCancelGeneric,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackCancelGenericDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackCancelGeneric(GtkGesture* gestureStruct, GdkEvent* sequence, OnCancelGenericDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Event)(sequence), wrapper.outer);
	}
	
	extern(C) static void callBackCancelGenericDestroy(OnCancelGenericDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnEndDelegateWrapper
	{
		static OnEndDelegateWrapper[] listeners;
		void delegate(GdkEventSequence*, Gesture) dlg;
		gulong handlerId;
		
		this(void delegate(GdkEventSequence*, Gesture) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnEndDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * This signal is emitted when @gesture either stopped recognizing the event
	 * sequences as something to be handled (the #GtkGesture::check handler returned
	 * %FALSE), or the number of touch sequences became higher or lower than
	 * #GtkGesture:n-points.
	 *
	 * Note: @sequence might not pertain to the group of sequences that were
	 * previously triggering recognition on @gesture (ie. a just pressed touch
	 * sequence that exceeds #GtkGesture:n-points). This situation may be detected
	 * by checking through gtk_gesture_handles_sequence().
	 *
	 * Params:
	 *     sequence = the #GdkEventSequence that made gesture recognition to finish
	 *
	 * Since: 3.14
	 */
	gulong addOnEnd(void delegate(GdkEventSequence*, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnEndDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"end",
			cast(GCallback)&callBackEnd,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackEndDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackEnd(GtkGesture* gestureStruct, GdkEventSequence* sequence, OnEndDelegateWrapper wrapper)
	{
		wrapper.dlg(sequence, wrapper.outer);
	}
	
	extern(C) static void callBackEndDestroy(OnEndDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnEndGenericDelegateWrapper
	{
		static OnEndGenericDelegateWrapper[] listeners;
		void delegate(Event, Gesture) dlg;
		gulong handlerId;
		
		this(void delegate(Event, Gesture) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnEndGenericDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}
	
	/**
	 * This signal is emitted when @gesture either stopped recognizing the event
	 * sequences as something to be handled (the #GtkGesture::check handler returned
	 * %FALSE), or the number of touch sequences became higher or lower than
	 * #GtkGesture:n-points.
	 *
	 * Note: @sequence might not pertain to the group of sequences that were
	 * previously triggering recognition on @gesture (ie. a just pressed touch
	 * sequence that exceeds #GtkGesture:n-points). This situation may be detected
	 * by checking through gtk_gesture_handles_sequence().
	 *
	 * Params:
	 *     sequence = the #GdkEventSequence that made gesture recognition to finish
	 *
	 * Since: 3.14
	 */
	gulong addOnEnd(void delegate(Event, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnEndGenericDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"end",
			cast(GCallback)&callBackEndGeneric,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackEndGenericDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackEndGeneric(GtkGesture* gestureStruct, GdkEvent* sequence, OnEndGenericDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Event)(sequence), wrapper.outer);
	}
	
	extern(C) static void callBackEndGenericDestroy(OnEndGenericDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnSequenceStateChangedDelegateWrapper
	{
		static OnSequenceStateChangedDelegateWrapper[] listeners;
		void delegate(GdkEventSequence*, GtkEventSequenceState, Gesture) dlg;
		gulong handlerId;
		
		this(void delegate(GdkEventSequence*, GtkEventSequenceState, Gesture) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnSequenceStateChangedDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * This signal is emitted whenever a sequence state changes. See
	 * gtk_gesture_set_sequence_state() to know more about the expectable
	 * sequence lifetimes.
	 *
	 * Params:
	 *     sequence = the #GdkEventSequence that was cancelled
	 *     state = the new sequence state
	 *
	 * Since: 3.14
	 */
	gulong addOnSequenceStateChanged(void delegate(GdkEventSequence*, GtkEventSequenceState, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnSequenceStateChangedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"sequence-state-changed",
			cast(GCallback)&callBackSequenceStateChanged,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackSequenceStateChangedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackSequenceStateChanged(GtkGesture* gestureStruct, GdkEventSequence* sequence, GtkEventSequenceState state, OnSequenceStateChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(sequence, state, wrapper.outer);
	}
	
	extern(C) static void callBackSequenceStateChangedDestroy(OnSequenceStateChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnSequenceStateChangedGenericDelegateWrapper
	{
		static OnSequenceStateChangedGenericDelegateWrapper[] listeners;
		void delegate(Event, GtkEventSequenceState, Gesture) dlg;
		gulong handlerId;
		
		this(void delegate(Event, GtkEventSequenceState, Gesture) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnSequenceStateChangedGenericDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}
	
	/**
	 * This signal is emitted whenever a sequence state changes. See
	 * gtk_gesture_set_sequence_state() to know more about the expectable
	 * sequence lifetimes.
	 *
	 * Params:
	 *     sequence = the #GdkEventSequence that was cancelled
	 *     state = the new sequence state
	 *
	 * Since: 3.14
	 */
	gulong addOnSequenceStateChanged(void delegate(Event, GtkEventSequenceState, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnSequenceStateChangedGenericDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"sequence-state-changed",
			cast(GCallback)&callBackSequenceStateChangedGeneric,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackSequenceStateChangedGenericDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackSequenceStateChangedGeneric(GtkGesture* gestureStruct, GdkEvent* sequence, GtkEventSequenceState state, OnSequenceStateChangedGenericDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Event)(sequence), state, wrapper.outer);
	}
	
	extern(C) static void callBackSequenceStateChangedGenericDestroy(OnSequenceStateChangedGenericDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnUpdateDelegateWrapper
	{
		static OnUpdateDelegateWrapper[] listeners;
		void delegate(GdkEventSequence*, Gesture) dlg;
		gulong handlerId;
		
		this(void delegate(GdkEventSequence*, Gesture) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnUpdateDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * This signal is emitted whenever an event is handled while the gesture is
	 * recognized. @sequence is guaranteed to pertain to the set of active touches.
	 *
	 * Params:
	 *     sequence = the #GdkEventSequence that was updated
	 *
	 * Since: 3.14
	 */
	gulong addOnUpdate(void delegate(GdkEventSequence*, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnUpdateDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"update",
			cast(GCallback)&callBackUpdate,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackUpdateDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackUpdate(GtkGesture* gestureStruct, GdkEventSequence* sequence, OnUpdateDelegateWrapper wrapper)
	{
		wrapper.dlg(sequence, wrapper.outer);
	}
	
	extern(C) static void callBackUpdateDestroy(OnUpdateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnUpdateGenericDelegateWrapper
	{
		static OnUpdateGenericDelegateWrapper[] listeners;
		void delegate(Event, Gesture) dlg;
		gulong handlerId;
		
		this(void delegate(Event, Gesture) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnUpdateGenericDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}
	
	/**
	 * This signal is emitted whenever an event is handled while the gesture is
	 * recognized. @sequence is guaranteed to pertain to the set of active touches.
	 *
	 * Params:
	 *     sequence = the #GdkEventSequence that was updated
	 *
	 * Since: 3.14
	 */
	gulong addOnUpdate(void delegate(Event, Gesture) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnUpdateGenericDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"update",
			cast(GCallback)&callBackUpdateGeneric,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackUpdateGenericDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackUpdateGeneric(GtkGesture* gestureStruct, GdkEvent* sequence, OnUpdateGenericDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Event)(sequence), wrapper.outer);
	}
	
	extern(C) static void callBackUpdateGenericDestroy(OnUpdateGenericDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
