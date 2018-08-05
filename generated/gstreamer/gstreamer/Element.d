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


module gstreamer.Element;

private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Type;
private import gobject.c.functions;
private import gstreamer.Bus;
private import gstreamer.Caps;
private import gstreamer.Clock;
private import gstreamer.Context;
private import gstreamer.ElementFactory;
private import gstreamer.Event;
private import gstreamer.Iterator;
private import gstreamer.Message;
private import gstreamer.ObjectGst;
private import gstreamer.Pad;
private import gstreamer.PadTemplate;
private import gstreamer.Plugin;
private import gstreamer.Query;
private import gstreamer.Structure;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import std.algorithm;


/**
 * GstElement is the abstract base class needed to construct an element that
 * can be used in a GStreamer pipeline. Please refer to the plugin writers
 * guide for more information on creating #GstElement subclasses.
 * 
 * The name of a #GstElement can be get with gst_element_get_name() and set with
 * gst_element_set_name().  For speed, GST_ELEMENT_NAME() can be used in the
 * core when using the appropriate locking. Do not use this in plug-ins or
 * applications in order to retain ABI compatibility.
 * 
 * Elements can have pads (of the type #GstPad).  These pads link to pads on
 * other elements.  #GstBuffer flow between these linked pads.
 * A #GstElement has a #GList of #GstPad structures for all their input (or sink)
 * and output (or source) pads.
 * Core and plug-in writers can add and remove pads with gst_element_add_pad()
 * and gst_element_remove_pad().
 * 
 * An existing pad of an element can be retrieved by name with
 * gst_element_get_static_pad(). A new dynamic pad can be created using
 * gst_element_request_pad() with a #GstPadTemplate.
 * An iterator of all pads can be retrieved with gst_element_iterate_pads().
 * 
 * Elements can be linked through their pads.
 * If the link is straightforward, use the gst_element_link()
 * convenience function to link two elements, or gst_element_link_many()
 * for more elements in a row.
 * Use gst_element_link_filtered() to link two elements constrained by
 * a specified set of #GstCaps.
 * For finer control, use gst_element_link_pads() and
 * gst_element_link_pads_filtered() to specify the pads to link on
 * each element by name.
 * 
 * Each element has a state (see #GstState).  You can get and set the state
 * of an element with gst_element_get_state() and gst_element_set_state().
 * Setting a state triggers a #GstStateChange. To get a string representation
 * of a #GstState, use gst_element_state_get_name().
 * 
 * You can get and set a #GstClock on an element using gst_element_get_clock()
 * and gst_element_set_clock().
 * Some elements can provide a clock for the pipeline if
 * the #GST_ELEMENT_FLAG_PROVIDE_CLOCK flag is set. With the
 * gst_element_provide_clock() method one can retrieve the clock provided by
 * such an element.
 * Not all elements require a clock to operate correctly. If the
 * #GST_ELEMENT_FLAG_REQUIRE_CLOCK() flag is set, a clock should be set on the
 * element with gst_element_set_clock().
 * 
 * Note that clock selection and distribution is normally handled by the
 * toplevel #GstPipeline so the clock functions are only to be used in very
 * specific situations.
 */
public class Element : ObjectGst
{
	/** the main Gtk struct */
	protected GstElement* gstElement;

	/** Get the main Gtk struct */
	public GstElement* getElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstElement* gstElement, bool ownedRef = false)
	{
		this.gstElement = gstElement;
		super(cast(GstObject*)gstElement, ownedRef);
	}

	/**
	 * Queries an element for the stream position.
	 * This is a convenience function for gstreamerD.
	 * Returns:
	 *  The current position in nanoseconds - GstFormat.TIME.
	 */
	public long queryPosition()
	{
		GstFormat form = GstFormat.TIME;
		long cur_pos;
		queryPosition( form, cur_pos );
		return cur_pos;
	}

	/**
	 * Queries an element for the stream duration.
	 * This is a convenience function for gstreamerD.
	 * Returns:
	 *  The duration in nanoseconds - GstFormat.TIME.
	 */
	public long queryDuration()
	{
		GstFormat form = GstFormat.TIME;
		long cur_dur;
		queryDuration( form, cur_dur );
		return cur_dur;
	}

	/**
	 *	This set's the filename for a filesrc element.
	 */
	public void location( string set )
	{
		//g_object_set( G_OBJECT(getElementStruct()), "location", set, NULL);
		setProperty("location", set);
	}

	/**
	 * Set the caps property of an Element.
	 */
	void caps( Caps cp )
	{
		g_object_set( getElementStruct(), Str.toStringz("caps"), cp.getCapsStruct(), null );
	}

	/**
	 * For your convenience in gstreamerD: you can seek to the
	 * position of the pipeline measured in time_nanoseconds.
	 */
	public int seek( long time_nanoseconds ) //gint64
	{
		return seek( 1.0, GstFormat.TIME, GstSeekFlags.FLUSH,
		GstSeekType.SET, time_nanoseconds,
		GstSeekType.NONE, GST_CLOCK_TIME_NONE);
	}

	/**
	 * Get's all the pads from an element in a Pad[].
	 */
	public Pad[] pads()
	{
		Pad[] result;
		GValue* pad = g_value_init(new GValue(), Pad.getType());
		GstIterator* iter = gst_element_iterate_pads(gstElement);

		while ( gst_iterator_next(iter, pad) == GstIteratorResult.OK )
		{
			result ~= ObjectG.getDObject!(Pad)(cast(GstPad*)g_value_get_object(pad));
			g_value_reset(pad);
		}

		g_value_unset(pad);

		return result;
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_element_get_type();
	}

	/**
	 * Creates an element for handling the given URI.
	 *
	 * Params:
	 *     type = Whether to create a source or a sink
	 *     uri = URI to create an element for
	 *     elementname = Name of created element, can be %NULL.
	 *
	 * Returns: a new element or %NULL if none
	 *     could be created
	 *
	 * Throws: GException on failure.
	 */
	public static Element makeFromUri(GstURIType type, string uri, string elementname)
	{
		GError* err = null;

		auto p = gst_element_make_from_uri(type, Str.toStringz(uri), Str.toStringz(elementname), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Element)(cast(GstElement*) p);
	}

	/**
	 * Create a new elementfactory capable of instantiating objects of the
	 * @type and add the factory to @plugin.
	 *
	 * Params:
	 *     plugin = #GstPlugin to register the element with, or %NULL for
	 *         a static element.
	 *     name = name of elements of this type
	 *     rank = rank of element (higher rank means more importance when autoplugging)
	 *     type = GType of element to register
	 *
	 * Returns: %TRUE, if the registering succeeded, %FALSE on error
	 */
	public static bool register(Plugin plugin, string name, uint rank, GType type)
	{
		return gst_element_register((plugin is null) ? null : plugin.getPluginStruct(), Str.toStringz(name), rank, type) != 0;
	}

	/**
	 * Gets a string representing the given state change result.
	 *
	 * Params:
	 *     stateRet = a #GstStateChangeReturn to get the name of.
	 *
	 * Returns: a string with the name of the state
	 *     result.
	 */
	public static string stateChangeReturnGetName(GstStateChangeReturn stateRet)
	{
		return Str.toString(gst_element_state_change_return_get_name(stateRet));
	}

	/**
	 * Gets a string representing the given state.
	 *
	 * Params:
	 *     state = a #GstState to get the name of.
	 *
	 * Returns: a string with the name of the state.
	 */
	public static string stateGetName(GstState state)
	{
		return Str.toString(gst_element_state_get_name(state));
	}

	/**
	 * Abort the state change of the element. This function is used
	 * by elements that do asynchronous state changes and find out
	 * something is wrong.
	 *
	 * This function should be called with the STATE_LOCK held.
	 *
	 * MT safe.
	 */
	public void abortState()
	{
		gst_element_abort_state(gstElement);
	}

	/**
	 * Adds a pad (link point) to @element. @pad's parent will be set to @element;
	 * see gst_object_set_parent() for refcounting information.
	 *
	 * Pads are not automatically activated so elements should perform the needed
	 * steps to activate the pad in case this pad is added in the PAUSED or PLAYING
	 * state. See gst_pad_set_active() for more information about activating pads.
	 *
	 * The pad and the element should be unlocked when calling this function.
	 *
	 * This function will emit the #GstElement::pad-added signal on the element.
	 *
	 * Params:
	 *     pad = the #GstPad to add to the element.
	 *
	 * Returns: %TRUE if the pad could be added. This function can fail when
	 *     a pad with the same name already existed or the pad already had another
	 *     parent.
	 *
	 *     MT safe.
	 */
	public bool addPad(Pad pad)
	{
		return gst_element_add_pad(gstElement, (pad is null) ? null : pad.getPadStruct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     propertyName = name of property to watch for changes, or
	 *         NULL to watch all properties
	 *     includeValue = whether to include the new property value in the message
	 * Returns: a watch id, which can be used in connection with
	 *     gst_element_remove_property_notify_watch() to remove the watch again.
	 *
	 * Since: 1.10
	 */
	public gulong addPropertyDeepNotifyWatch(string propertyName, bool includeValue)
	{
		return gst_element_add_property_deep_notify_watch(gstElement, Str.toStringz(propertyName), includeValue);
	}

	/**
	 *
	 * Params:
	 *     propertyName = name of property to watch for changes, or
	 *         NULL to watch all properties
	 *     includeValue = whether to include the new property value in the message
	 * Returns: a watch id, which can be used in connection with
	 *     gst_element_remove_property_notify_watch() to remove the watch again.
	 *
	 * Since: 1.10
	 */
	public gulong addPropertyNotifyWatch(string propertyName, bool includeValue)
	{
		return gst_element_add_property_notify_watch(gstElement, Str.toStringz(propertyName), includeValue);
	}

	/**
	 * Calls @func from another thread and passes @user_data to it. This is to be
	 * used for cases when a state change has to be performed from a streaming
	 * thread, directly via gst_element_set_state() or indirectly e.g. via SEEK
	 * events.
	 *
	 * Calling those functions directly from the streaming thread will cause
	 * deadlocks in many situations, as they might involve waiting for the
	 * streaming thread to shut down from this very streaming thread.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     func = Function to call asynchronously from another thread
	 *     userData = Data to pass to @func
	 *     destroyNotify = GDestroyNotify for @user_data
	 *
	 * Since: 1.10
	 */
	public void callAsync(GstElementCallAsyncFunc func, void* userData, GDestroyNotify destroyNotify)
	{
		gst_element_call_async(gstElement, func, userData, destroyNotify);
	}

	/**
	 * Perform @transition on @element.
	 *
	 * This function must be called with STATE_LOCK held and is mainly used
	 * internally.
	 *
	 * Params:
	 *     transition = the requested transition
	 *
	 * Returns: the #GstStateChangeReturn of the state transition.
	 */
	public GstStateChangeReturn changeState(GstStateChange transition)
	{
		return gst_element_change_state(gstElement, transition);
	}

	/**
	 * Commit the state change of the element and proceed to the next
	 * pending state if any. This function is used
	 * by elements that do asynchronous state changes.
	 * The core will normally call this method automatically when an
	 * element returned %GST_STATE_CHANGE_SUCCESS from the state change function.
	 *
	 * If after calling this method the element still has not reached
	 * the pending state, the next state change is performed.
	 *
	 * This method is used internally and should normally not be called by plugins
	 * or applications.
	 *
	 * This function must be called with STATE_LOCK held.
	 *
	 * Params:
	 *     ret = The previous state return value
	 *
	 * Returns: The result of the commit state change.
	 *
	 *     MT safe.
	 */
	public GstStateChangeReturn continueState(GstStateChangeReturn ret)
	{
		return gst_element_continue_state(gstElement, ret);
	}

	/**
	 * Creates a pad for each pad template that is always available.
	 * This function is only useful during object initialization of
	 * subclasses of #GstElement.
	 */
	public void createAllPads()
	{
		gst_element_create_all_pads(gstElement);
	}

	/**
	 * Call @func with @user_data for each of @element's pads. @func will be called
	 * exactly once for each pad that exists at the time of this call, unless
	 * one of the calls to @func returns %FALSE in which case we will stop
	 * iterating pads and return early. If new pads are added or pads are removed
	 * while pads are being iterated, this will not be taken into account until
	 * next time this function is used.
	 *
	 * Params:
	 *     func = function to call for each pad
	 *     userData = user data passed to @func
	 *
	 * Returns: %FALSE if @element had no pads or if one of the calls to @func
	 *     returned %FALSE.
	 *
	 * Since: 1.14
	 */
	public bool foreachPad(GstElementForeachPadFunc func, void* userData)
	{
		return gst_element_foreach_pad(gstElement, func, userData) != 0;
	}

	/**
	 * Call @func with @user_data for each of @element's sink pads. @func will be
	 * called exactly once for each sink pad that exists at the time of this call,
	 * unless one of the calls to @func returns %FALSE in which case we will stop
	 * iterating pads and return early. If new sink pads are added or sink pads
	 * are removed while the sink pads are being iterated, this will not be taken
	 * into account until next time this function is used.
	 *
	 * Params:
	 *     func = function to call for each sink pad
	 *     userData = user data passed to @func
	 *
	 * Returns: %FALSE if @element had no sink pads or if one of the calls to @func
	 *     returned %FALSE.
	 *
	 * Since: 1.14
	 */
	public bool foreachSinkPad(GstElementForeachPadFunc func, void* userData)
	{
		return gst_element_foreach_sink_pad(gstElement, func, userData) != 0;
	}

	/**
	 * Call @func with @user_data for each of @element's source pads. @func will be
	 * called exactly once for each source pad that exists at the time of this call,
	 * unless one of the calls to @func returns %FALSE in which case we will stop
	 * iterating pads and return early. If new source pads are added or source pads
	 * are removed while the source pads are being iterated, this will not be taken
	 * into account until next time this function is used.
	 *
	 * Params:
	 *     func = function to call for each source pad
	 *     userData = user data passed to @func
	 *
	 * Returns: %FALSE if @element had no source pads or if one of the calls
	 *     to @func returned %FALSE.
	 *
	 * Since: 1.14
	 */
	public bool foreachSrcPad(GstElementForeachPadFunc func, void* userData)
	{
		return gst_element_foreach_src_pad(gstElement, func, userData) != 0;
	}

	/**
	 * Returns the base time of the element. The base time is the
	 * absolute time of the clock when this element was last put to
	 * PLAYING. Subtracting the base time from the clock time gives
	 * the running time of the element.
	 *
	 * Returns: the base time of the element.
	 *
	 *     MT safe.
	 */
	public GstClockTime getBaseTime()
	{
		return gst_element_get_base_time(gstElement);
	}

	/**
	 * Returns the bus of the element. Note that only a #GstPipeline will provide a
	 * bus for the application.
	 *
	 * Returns: the element's #GstBus. unref after
	 *     usage.
	 *
	 *     MT safe.
	 */
	public Bus getBus()
	{
		auto p = gst_element_get_bus(gstElement);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Bus)(cast(GstBus*) p, true);
	}

	/**
	 * Gets the currently configured clock of the element. This is the clock as was
	 * last set with gst_element_set_clock().
	 *
	 * Elements in a pipeline will only have their clock set when the
	 * pipeline is in the PLAYING state.
	 *
	 * Returns: the #GstClock of the element. unref after usage.
	 *
	 *     MT safe.
	 */
	public Clock getClock()
	{
		auto p = gst_element_get_clock(gstElement);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clock)(cast(GstClock*) p, true);
	}

	/**
	 * Looks for an unlinked pad to which the given pad can link. It is not
	 * guaranteed that linking the pads will work, though it should work in most
	 * cases.
	 *
	 * This function will first attempt to find a compatible unlinked ALWAYS pad,
	 * and if none can be found, it will request a compatible REQUEST pad by looking
	 * at the templates of @element.
	 *
	 * Params:
	 *     pad = the #GstPad to find a compatible one for.
	 *     caps = the #GstCaps to use as a filter.
	 *
	 * Returns: the #GstPad to which a link
	 *     can be made, or %NULL if one cannot be found. gst_object_unref()
	 *     after usage.
	 */
	public Pad getCompatiblePad(Pad pad, Caps caps)
	{
		auto p = gst_element_get_compatible_pad(gstElement, (pad is null) ? null : pad.getPadStruct(), (caps is null) ? null : caps.getCapsStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pad)(cast(GstPad*) p, true);
	}

	/**
	 * Retrieves a pad template from @element that is compatible with @compattempl.
	 * Pads from compatible templates can be linked together.
	 *
	 * Params:
	 *     compattempl = the #GstPadTemplate to find a compatible
	 *         template for
	 *
	 * Returns: a compatible #GstPadTemplate,
	 *     or %NULL if none was found. No unreferencing is necessary.
	 */
	public PadTemplate getCompatiblePadTemplate(PadTemplate compattempl)
	{
		auto p = gst_element_get_compatible_pad_template(gstElement, (compattempl is null) ? null : compattempl.getPadTemplateStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PadTemplate)(cast(GstPadTemplate*) p);
	}

	/**
	 * Gets the context with @context_type set on the element or NULL.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     contextType = a name of a context to retrieve
	 *
	 * Returns: A #GstContext or NULL
	 *
	 * Since: 1.8
	 */
	public Context getContext(string contextType)
	{
		auto p = gst_element_get_context(gstElement, Str.toStringz(contextType));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Context)(cast(GstContext*) p, true);
	}

	/**
	 * Gets the context with @context_type set on the element or NULL.
	 *
	 * Params:
	 *     contextType = a name of a context to retrieve
	 *
	 * Returns: A #GstContext or NULL
	 *
	 * Since: 1.8
	 */
	public Context getContextUnlocked(string contextType)
	{
		auto p = gst_element_get_context_unlocked(gstElement, Str.toStringz(contextType));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Context)(cast(GstContext*) p, true);
	}

	/**
	 * Gets the contexts set on the element.
	 *
	 * MT safe.
	 *
	 * Returns: List of #GstContext
	 *
	 * Since: 1.8
	 */
	public ListG getContexts()
	{
		auto p = gst_element_get_contexts(gstElement);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Retrieves the factory that was used to create this element.
	 *
	 * Returns: the #GstElementFactory used for creating this
	 *     element. no refcounting is needed.
	 */
	public ElementFactory getFactory()
	{
		auto p = gst_element_get_factory(gstElement);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ElementFactory)(cast(GstElementFactory*) p);
	}

	/**
	 * Get metadata with @key in @klass.
	 *
	 * Params:
	 *     key = the key to get
	 *
	 * Returns: the metadata for @key.
	 *
	 * Since: 1.14
	 */
	public string getMetadata(string key)
	{
		return Str.toString(gst_element_get_metadata(gstElement, Str.toStringz(key)));
	}

	/**
	 * Retrieves a padtemplate from @element with the given name.
	 *
	 * Params:
	 *     name = the name of the #GstPadTemplate to get.
	 *
	 * Returns: the #GstPadTemplate with the
	 *     given name, or %NULL if none was found. No unreferencing is
	 *     necessary.
	 *
	 * Since: 1.14
	 */
	public PadTemplate getPadTemplate(string name)
	{
		auto p = gst_element_get_pad_template(gstElement, Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PadTemplate)(cast(GstPadTemplate*) p);
	}

	/**
	 * Retrieves a list of the pad templates associated with @element. The
	 * list must not be modified by the calling code.
	 *
	 * Returns: the #GList of
	 *     pad templates.
	 *
	 * Since: 1.14
	 */
	public ListG getPadTemplateList()
	{
		auto p = gst_element_get_pad_template_list(gstElement);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Retrieves a pad from the element by name (e.g. "src_\%d"). This version only
	 * retrieves request pads. The pad should be released with
	 * gst_element_release_request_pad().
	 *
	 * This method is slower than manually getting the pad template and calling
	 * gst_element_request_pad() if the pads should have a specific name (e.g.
	 * @name is "src_1" instead of "src_\%u").
	 *
	 * Params:
	 *     name = the name of the request #GstPad to retrieve.
	 *
	 * Returns: requested #GstPad if found,
	 *     otherwise %NULL.  Release after usage.
	 */
	public Pad getRequestPad(string name)
	{
		auto p = gst_element_get_request_pad(gstElement, Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pad)(cast(GstPad*) p, true);
	}

	/**
	 * Returns the start time of the element. The start time is the
	 * running time of the clock when this element was last put to PAUSED.
	 *
	 * Usually the start_time is managed by a toplevel element such as
	 * #GstPipeline.
	 *
	 * MT safe.
	 *
	 * Returns: the start time of the element.
	 */
	public GstClockTime getStartTime()
	{
		return gst_element_get_start_time(gstElement);
	}

	/**
	 * Gets the state of the element.
	 *
	 * For elements that performed an ASYNC state change, as reported by
	 * gst_element_set_state(), this function will block up to the
	 * specified timeout value for the state change to complete.
	 * If the element completes the state change or goes into
	 * an error, this function returns immediately with a return value of
	 * %GST_STATE_CHANGE_SUCCESS or %GST_STATE_CHANGE_FAILURE respectively.
	 *
	 * For elements that did not return %GST_STATE_CHANGE_ASYNC, this function
	 * returns the current and pending state immediately.
	 *
	 * This function returns %GST_STATE_CHANGE_NO_PREROLL if the element
	 * successfully changed its state but is not able to provide data yet.
	 * This mostly happens for live sources that only produce data in
	 * %GST_STATE_PLAYING. While the state change return is equivalent to
	 * %GST_STATE_CHANGE_SUCCESS, it is returned to the application to signal that
	 * some sink elements might not be able to complete their state change because
	 * an element is not producing data to complete the preroll. When setting the
	 * element to playing, the preroll will complete and playback will start.
	 *
	 * Params:
	 *     state = a pointer to #GstState to hold the state.
	 *         Can be %NULL.
	 *     pending = a pointer to #GstState to hold the pending
	 *         state. Can be %NULL.
	 *     timeout = a #GstClockTime to specify the timeout for an async
	 *         state change or %GST_CLOCK_TIME_NONE for infinite timeout.
	 *
	 * Returns: %GST_STATE_CHANGE_SUCCESS if the element has no more pending state
	 *     and the last state change succeeded, %GST_STATE_CHANGE_ASYNC if the
	 *     element is still performing a state change or
	 *     %GST_STATE_CHANGE_FAILURE if the last state change failed.
	 *
	 *     MT safe.
	 */
	public GstStateChangeReturn getState(out GstState state, out GstState pending, GstClockTime timeout)
	{
		return gst_element_get_state(gstElement, &state, &pending, timeout);
	}

	/**
	 * Retrieves a pad from @element by name. This version only retrieves
	 * already-existing (i.e. 'static') pads.
	 *
	 * Params:
	 *     name = the name of the static #GstPad to retrieve.
	 *
	 * Returns: the requested #GstPad if
	 *     found, otherwise %NULL.  unref after usage.
	 *
	 *     MT safe.
	 */
	public Pad getStaticPad(string name)
	{
		auto p = gst_element_get_static_pad(gstElement, Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pad)(cast(GstPad*) p, true);
	}

	/**
	 * Checks if the state of an element is locked.
	 * If the state of an element is locked, state changes of the parent don't
	 * affect the element.
	 * This way you can leave currently unused elements inside bins. Just lock their
	 * state before changing the state from #GST_STATE_NULL.
	 *
	 * MT safe.
	 *
	 * Returns: %TRUE, if the element's state is locked.
	 */
	public bool isLockedState()
	{
		return gst_element_is_locked_state(gstElement) != 0;
	}

	/**
	 * Retrieves an iterator of @element's pads. The iterator should
	 * be freed after usage. Also more specialized iterators exists such as
	 * gst_element_iterate_src_pads() or gst_element_iterate_sink_pads().
	 *
	 * The order of pads returned by the iterator will be the order in which
	 * the pads were added to the element.
	 *
	 * Returns: the #GstIterator of #GstPad.
	 *
	 *     MT safe.
	 */
	public Iterator iteratePads()
	{
		auto p = gst_element_iterate_pads(gstElement);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Retrieves an iterator of @element's sink pads.
	 *
	 * The order of pads returned by the iterator will be the order in which
	 * the pads were added to the element.
	 *
	 * Returns: the #GstIterator of #GstPad.
	 *
	 *     MT safe.
	 */
	public Iterator iterateSinkPads()
	{
		auto p = gst_element_iterate_sink_pads(gstElement);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Retrieves an iterator of @element's source pads.
	 *
	 * The order of pads returned by the iterator will be the order in which
	 * the pads were added to the element.
	 *
	 * Returns: the #GstIterator of #GstPad.
	 *
	 *     MT safe.
	 */
	public Iterator iterateSrcPads()
	{
		auto p = gst_element_iterate_src_pads(gstElement);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Links @src to @dest. The link must be from source to
	 * destination; the other direction will not be tried. The function looks for
	 * existing pads that aren't linked yet. It will request new pads if necessary.
	 * Such pads need to be released manually when unlinking.
	 * If multiple links are possible, only one is established.
	 *
	 * Make sure you have added your elements to a bin or pipeline with
	 * gst_bin_add() before trying to link them.
	 *
	 * Params:
	 *     dest = the #GstElement containing the destination pad.
	 *
	 * Returns: %TRUE if the elements could be linked, %FALSE otherwise.
	 */
	public bool link(Element dest)
	{
		return gst_element_link(gstElement, (dest is null) ? null : dest.getElementStruct()) != 0;
	}

	/**
	 * Links @src to @dest using the given caps as filtercaps.
	 * The link must be from source to
	 * destination; the other direction will not be tried. The function looks for
	 * existing pads that aren't linked yet. It will request new pads if necessary.
	 * If multiple links are possible, only one is established.
	 *
	 * Make sure you have added your elements to a bin or pipeline with
	 * gst_bin_add() before trying to link them.
	 *
	 * Params:
	 *     dest = the #GstElement containing the destination pad.
	 *     filter = the #GstCaps to filter the link,
	 *         or %NULL for no filter.
	 *
	 * Returns: %TRUE if the pads could be linked, %FALSE otherwise.
	 */
	public bool linkFiltered(Element dest, Caps filter)
	{
		return gst_element_link_filtered(gstElement, (dest is null) ? null : dest.getElementStruct(), (filter is null) ? null : filter.getCapsStruct()) != 0;
	}

	/**
	 * Links the two named pads of the source and destination elements.
	 * Side effect is that if one of the pads has no parent, it becomes a
	 * child of the parent of the other element.  If they have different
	 * parents, the link fails.
	 *
	 * Params:
	 *     srcpadname = the name of the #GstPad in source element
	 *         or %NULL for any pad.
	 *     dest = the #GstElement containing the destination pad.
	 *     destpadname = the name of the #GstPad in destination element,
	 *         or %NULL for any pad.
	 *
	 * Returns: %TRUE if the pads could be linked, %FALSE otherwise.
	 */
	public bool linkPads(string srcpadname, Element dest, string destpadname)
	{
		return gst_element_link_pads(gstElement, Str.toStringz(srcpadname), (dest is null) ? null : dest.getElementStruct(), Str.toStringz(destpadname)) != 0;
	}

	/**
	 * Links the two named pads of the source and destination elements. Side effect
	 * is that if one of the pads has no parent, it becomes a child of the parent of
	 * the other element. If they have different parents, the link fails. If @caps
	 * is not %NULL, makes sure that the caps of the link is a subset of @caps.
	 *
	 * Params:
	 *     srcpadname = the name of the #GstPad in source element
	 *         or %NULL for any pad.
	 *     dest = the #GstElement containing the destination pad.
	 *     destpadname = the name of the #GstPad in destination element
	 *         or %NULL for any pad.
	 *     filter = the #GstCaps to filter the link,
	 *         or %NULL for no filter.
	 *
	 * Returns: %TRUE if the pads could be linked, %FALSE otherwise.
	 */
	public bool linkPadsFiltered(string srcpadname, Element dest, string destpadname, Caps filter)
	{
		return gst_element_link_pads_filtered(gstElement, Str.toStringz(srcpadname), (dest is null) ? null : dest.getElementStruct(), Str.toStringz(destpadname), (filter is null) ? null : filter.getCapsStruct()) != 0;
	}

	/**
	 * Links the two named pads of the source and destination elements.
	 * Side effect is that if one of the pads has no parent, it becomes a
	 * child of the parent of the other element.  If they have different
	 * parents, the link fails.
	 *
	 * Calling gst_element_link_pads_full() with @flags == %GST_PAD_LINK_CHECK_DEFAULT
	 * is the same as calling gst_element_link_pads() and the recommended way of
	 * linking pads with safety checks applied.
	 *
	 * This is a convenience function for gst_pad_link_full().
	 *
	 * Params:
	 *     srcpadname = the name of the #GstPad in source element
	 *         or %NULL for any pad.
	 *     dest = the #GstElement containing the destination pad.
	 *     destpadname = the name of the #GstPad in destination element,
	 *         or %NULL for any pad.
	 *     flags = the #GstPadLinkCheck to be performed when linking pads.
	 *
	 * Returns: %TRUE if the pads could be linked, %FALSE otherwise.
	 */
	public bool linkPadsFull(string srcpadname, Element dest, string destpadname, GstPadLinkCheck flags)
	{
		return gst_element_link_pads_full(gstElement, Str.toStringz(srcpadname), (dest is null) ? null : dest.getElementStruct(), Str.toStringz(destpadname), flags) != 0;
	}

	/**
	 * Brings the element to the lost state. The current state of the
	 * element is copied to the pending state so that any call to
	 * gst_element_get_state() will return %GST_STATE_CHANGE_ASYNC.
	 *
	 * An ASYNC_START message is posted. If the element was PLAYING, it will
	 * go to PAUSED. The element will be restored to its PLAYING state by
	 * the parent pipeline when it prerolls again.
	 *
	 * This is mostly used for elements that lost their preroll buffer
	 * in the %GST_STATE_PAUSED or %GST_STATE_PLAYING state after a flush,
	 * they will go to their pending state again when a new preroll buffer is
	 * queued. This function can only be called when the element is currently
	 * not in error or an async state change.
	 *
	 * This function is used internally and should normally not be called from
	 * plugins or applications.
	 */
	public void lostState()
	{
		gst_element_lost_state(gstElement);
	}

	/**
	 * Post an error, warning or info message on the bus from inside an element.
	 *
	 * @type must be of #GST_MESSAGE_ERROR, #GST_MESSAGE_WARNING or
	 * #GST_MESSAGE_INFO.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     type = the #GstMessageType
	 *     domain = the GStreamer GError domain this message belongs to
	 *     code = the GError code belonging to the domain
	 *     text = an allocated text string to be used
	 *         as a replacement for the default message connected to code,
	 *         or %NULL
	 *     debug_ = an allocated debug message to be
	 *         used as a replacement for the default debugging information,
	 *         or %NULL
	 *     file = the source code file where the error was generated
	 *     function_ = the source code function where the error was generated
	 *     line = the source code line where the error was generated
	 */
	public void messageFull(GstMessageType type, GQuark domain, int code, string text, string debug_, string file, string function_, int line)
	{
		gst_element_message_full(gstElement, type, domain, code, Str.toStringz(text), Str.toStringz(debug_), Str.toStringz(file), Str.toStringz(function_), line);
	}

	/**
	 * Post an error, warning or info message on the bus from inside an element.
	 *
	 * @type must be of #GST_MESSAGE_ERROR, #GST_MESSAGE_WARNING or
	 * #GST_MESSAGE_INFO.
	 *
	 * Params:
	 *     type = the #GstMessageType
	 *     domain = the GStreamer GError domain this message belongs to
	 *     code = the GError code belonging to the domain
	 *     text = an allocated text string to be used
	 *         as a replacement for the default message connected to code,
	 *         or %NULL
	 *     debug_ = an allocated debug message to be
	 *         used as a replacement for the default debugging information,
	 *         or %NULL
	 *     file = the source code file where the error was generated
	 *     function_ = the source code function where the error was generated
	 *     line = the source code line where the error was generated
	 *     structure = optional details structure
	 *
	 * Since: 1.10
	 */
	public void messageFullWithDetails(GstMessageType type, GQuark domain, int code, string text, string debug_, string file, string function_, int line, Structure structure)
	{
		gst_element_message_full_with_details(gstElement, type, domain, code, Str.toStringz(text), Str.toStringz(debug_), Str.toStringz(file), Str.toStringz(function_), line, (structure is null) ? null : structure.getStructureStruct(true));
	}

	/**
	 * Use this function to signal that the element does not expect any more pads
	 * to show up in the current pipeline. This function should be called whenever
	 * pads have been added by the element itself. Elements with #GST_PAD_SOMETIMES
	 * pad templates use this in combination with autopluggers to figure out that
	 * the element is done initializing its pads.
	 *
	 * This function emits the #GstElement::no-more-pads signal.
	 *
	 * MT safe.
	 */
	public void noMorePads()
	{
		gst_element_no_more_pads(gstElement);
	}

	/**
	 * Post a message on the element's #GstBus. This function takes ownership of the
	 * message; if you want to access the message after this call, you should add an
	 * additional reference before calling.
	 *
	 * Params:
	 *     message = a #GstMessage to post
	 *
	 * Returns: %TRUE if the message was successfully posted. The function returns
	 *     %FALSE if the element did not have a bus.
	 *
	 *     MT safe.
	 */
	public bool postMessage(Message message)
	{
		return gst_element_post_message(gstElement, (message is null) ? null : message.getMessageStruct()) != 0;
	}

	/**
	 * Get the clock provided by the given element.
	 * > An element is only required to provide a clock in the PAUSED
	 * > state. Some elements can provide a clock in other states.
	 *
	 * Returns: the GstClock provided by the
	 *     element or %NULL if no clock could be provided.  Unref after usage.
	 *
	 *     MT safe.
	 */
	public Clock provideClock()
	{
		auto p = gst_element_provide_clock(gstElement);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clock)(cast(GstClock*) p, true);
	}

	/**
	 * Performs a query on the given element.
	 *
	 * For elements that don't implement a query handler, this function
	 * forwards the query to a random srcpad or to the peer of a
	 * random linked sinkpad of this element.
	 *
	 * Please note that some queries might need a running pipeline to work.
	 *
	 * Params:
	 *     query = the #GstQuery.
	 *
	 * Returns: %TRUE if the query could be performed.
	 *
	 *     MT safe.
	 */
	public bool query(Query query)
	{
		return gst_element_query(gstElement, (query is null) ? null : query.getQueryStruct()) != 0;
	}

	/**
	 * Queries an element to convert @src_val in @src_format to @dest_format.
	 *
	 * Params:
	 *     srcFormat = a #GstFormat to convert from.
	 *     srcVal = a value to convert.
	 *     destFormat = the #GstFormat to convert to.
	 *     destVal = a pointer to the result.
	 *
	 * Returns: %TRUE if the query could be performed.
	 */
	public bool queryConvert(GstFormat srcFormat, long srcVal, GstFormat destFormat, out long destVal)
	{
		return gst_element_query_convert(gstElement, srcFormat, srcVal, destFormat, &destVal) != 0;
	}

	/**
	 * Queries an element (usually top-level pipeline or playbin element) for the
	 * total stream duration in nanoseconds. This query will only work once the
	 * pipeline is prerolled (i.e. reached PAUSED or PLAYING state). The application
	 * will receive an ASYNC_DONE message on the pipeline bus when that is the case.
	 *
	 * If the duration changes for some reason, you will get a DURATION_CHANGED
	 * message on the pipeline bus, in which case you should re-query the duration
	 * using this function.
	 *
	 * Params:
	 *     format = the #GstFormat requested
	 *     duration = A location in which to store the total duration, or %NULL.
	 *
	 * Returns: %TRUE if the query could be performed.
	 */
	public bool queryDuration(GstFormat format, out long duration)
	{
		return gst_element_query_duration(gstElement, format, &duration) != 0;
	}

	/**
	 * Queries an element (usually top-level pipeline or playbin element) for the
	 * stream position in nanoseconds. This will be a value between 0 and the
	 * stream duration (if the stream duration is known). This query will usually
	 * only work once the pipeline is prerolled (i.e. reached PAUSED or PLAYING
	 * state). The application will receive an ASYNC_DONE message on the pipeline
	 * bus when that is the case.
	 *
	 * If one repeatedly calls this function one can also create a query and reuse
	 * it in gst_element_query().
	 *
	 * Params:
	 *     format = the #GstFormat requested
	 *     cur = a location in which to store the current
	 *         position, or %NULL.
	 *
	 * Returns: %TRUE if the query could be performed.
	 */
	public bool queryPosition(GstFormat format, out long cur)
	{
		return gst_element_query_position(gstElement, format, &cur) != 0;
	}

	/**
	 * Makes the element free the previously requested pad as obtained
	 * with gst_element_request_pad().
	 *
	 * This does not unref the pad. If the pad was created by using
	 * gst_element_request_pad(), gst_element_release_request_pad() needs to be
	 * followed by gst_object_unref() to free the @pad.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     pad = the #GstPad to release.
	 */
	public void releaseRequestPad(Pad pad)
	{
		gst_element_release_request_pad(gstElement, (pad is null) ? null : pad.getPadStruct());
	}

	/**
	 * Removes @pad from @element. @pad will be destroyed if it has not been
	 * referenced elsewhere using gst_object_unparent().
	 *
	 * This function is used by plugin developers and should not be used
	 * by applications. Pads that were dynamically requested from elements
	 * with gst_element_request_pad() should be released with the
	 * gst_element_release_request_pad() function instead.
	 *
	 * Pads are not automatically deactivated so elements should perform the needed
	 * steps to deactivate the pad in case this pad is removed in the PAUSED or
	 * PLAYING state. See gst_pad_set_active() for more information about
	 * deactivating pads.
	 *
	 * The pad and the element should be unlocked when calling this function.
	 *
	 * This function will emit the #GstElement::pad-removed signal on the element.
	 *
	 * Params:
	 *     pad = the #GstPad to remove from the element.
	 *
	 * Returns: %TRUE if the pad could be removed. Can return %FALSE if the
	 *     pad does not belong to the provided element.
	 *
	 *     MT safe.
	 */
	public bool removePad(Pad pad)
	{
		return gst_element_remove_pad(gstElement, (pad is null) ? null : pad.getPadStruct()) != 0;
	}

	/** */
	public void removePropertyNotifyWatch(gulong watchId)
	{
		gst_element_remove_property_notify_watch(gstElement, watchId);
	}

	/**
	 * Retrieves a request pad from the element according to the provided template.
	 * Pad templates can be looked up using
	 * gst_element_factory_get_static_pad_templates().
	 *
	 * The pad should be released with gst_element_release_request_pad().
	 *
	 * Params:
	 *     templ = a #GstPadTemplate of which we want a pad of.
	 *     name = the name of the request #GstPad
	 *         to retrieve. Can be %NULL.
	 *     caps = the caps of the pad we want to
	 *         request. Can be %NULL.
	 *
	 * Returns: requested #GstPad if found,
	 *     otherwise %NULL.  Release after usage.
	 */
	public Pad requestPad(PadTemplate templ, string name, Caps caps)
	{
		auto p = gst_element_request_pad(gstElement, (templ is null) ? null : templ.getPadTemplateStruct(), Str.toStringz(name), (caps is null) ? null : caps.getCapsStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pad)(cast(GstPad*) p, true);
	}

	/**
	 * Sends a seek event to an element. See gst_event_new_seek() for the details of
	 * the parameters. The seek event is sent to the element using
	 * gst_element_send_event().
	 *
	 * MT safe.
	 *
	 * Params:
	 *     rate = The new playback rate
	 *     format = The format of the seek values
	 *     flags = The optional seek flags.
	 *     startType = The type and flags for the new start position
	 *     start = The value of the new start position
	 *     stopType = The type and flags for the new stop position
	 *     stop = The value of the new stop position
	 *
	 * Returns: %TRUE if the event was handled. Flushing seeks will trigger a
	 *     preroll, which will emit %GST_MESSAGE_ASYNC_DONE.
	 */
	public bool seek(double rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, long start, GstSeekType stopType, long stop)
	{
		return gst_element_seek(gstElement, rate, format, flags, startType, start, stopType, stop) != 0;
	}

	/**
	 * Simple API to perform a seek on the given element, meaning it just seeks
	 * to the given position relative to the start of the stream. For more complex
	 * operations like segment seeks (e.g. for looping) or changing the playback
	 * rate or seeking relative to the last configured playback segment you should
	 * use gst_element_seek().
	 *
	 * In a completely prerolled PAUSED or PLAYING pipeline, seeking is always
	 * guaranteed to return %TRUE on a seekable media type or %FALSE when the media
	 * type is certainly not seekable (such as a live stream).
	 *
	 * Some elements allow for seeking in the READY state, in this
	 * case they will store the seek event and execute it when they are put to
	 * PAUSED. If the element supports seek in READY, it will always return %TRUE when
	 * it receives the event in the READY state.
	 *
	 * Params:
	 *     format = a #GstFormat to execute the seek in, such as #GST_FORMAT_TIME
	 *     seekFlags = seek options; playback applications will usually want to use
	 *         GST_SEEK_FLAG_FLUSH | GST_SEEK_FLAG_KEY_UNIT here
	 *     seekPos = position to seek to (relative to the start); if you are doing
	 *         a seek in #GST_FORMAT_TIME this value is in nanoseconds -
	 *         multiply with #GST_SECOND to convert seconds to nanoseconds or
	 *         with #GST_MSECOND to convert milliseconds to nanoseconds.
	 *
	 * Returns: %TRUE if the seek operation succeeded. Flushing seeks will trigger a
	 *     preroll, which will emit %GST_MESSAGE_ASYNC_DONE.
	 */
	public bool seekSimple(GstFormat format, GstSeekFlags seekFlags, long seekPos)
	{
		return gst_element_seek_simple(gstElement, format, seekFlags, seekPos) != 0;
	}

	/**
	 * Sends an event to an element. If the element doesn't implement an
	 * event handler, the event will be pushed on a random linked sink pad for
	 * downstream events or a random linked source pad for upstream events.
	 *
	 * This function takes ownership of the provided event so you should
	 * gst_event_ref() it if you want to reuse the event after this call.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     event = the #GstEvent to send to the element.
	 *
	 * Returns: %TRUE if the event was handled. Events that trigger a preroll (such
	 *     as flushing seeks and steps) will emit %GST_MESSAGE_ASYNC_DONE.
	 */
	public bool sendEvent(Event event)
	{
		return gst_element_send_event(gstElement, (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * Set the base time of an element. See gst_element_get_base_time().
	 *
	 * MT safe.
	 *
	 * Params:
	 *     time = the base time to set.
	 */
	public void setBaseTime(GstClockTime time)
	{
		gst_element_set_base_time(gstElement, time);
	}

	/**
	 * Sets the bus of the element. Increases the refcount on the bus.
	 * For internal use only, unless you're testing elements.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     bus = the #GstBus to set.
	 */
	public void setBus(Bus bus)
	{
		gst_element_set_bus(gstElement, (bus is null) ? null : bus.getBusStruct());
	}

	/**
	 * Sets the clock for the element. This function increases the
	 * refcount on the clock. Any previously set clock on the object
	 * is unreffed.
	 *
	 * Params:
	 *     clock = the #GstClock to set for the element.
	 *
	 * Returns: %TRUE if the element accepted the clock. An element can refuse a
	 *     clock when it, for example, is not able to slave its internal clock to the
	 *     @clock or when it requires a specific clock to operate.
	 *
	 *     MT safe.
	 */
	public bool setClock(Clock clock)
	{
		return gst_element_set_clock(gstElement, (clock is null) ? null : clock.getClockStruct()) != 0;
	}

	/**
	 * Sets the context of the element. Increases the refcount of the context.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     context = the #GstContext to set.
	 */
	public void setContext(Context context)
	{
		gst_element_set_context(gstElement, (context is null) ? null : context.getContextStruct());
	}

	/**
	 * Locks the state of an element, so state changes of the parent don't affect
	 * this element anymore.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     lockedState = %TRUE to lock the element's state
	 *
	 * Returns: %TRUE if the state was changed, %FALSE if bad parameters were given
	 *     or the elements state-locking needed no change.
	 */
	public bool setLockedState(bool lockedState)
	{
		return gst_element_set_locked_state(gstElement, lockedState) != 0;
	}

	/**
	 * Set the start time of an element. The start time of the element is the
	 * running time of the element when it last went to the PAUSED state. In READY
	 * or after a flushing seek, it is set to 0.
	 *
	 * Toplevel elements like #GstPipeline will manage the start_time and
	 * base_time on its children. Setting the start_time to #GST_CLOCK_TIME_NONE
	 * on such a toplevel element will disable the distribution of the base_time to
	 * the children and can be useful if the application manages the base_time
	 * itself, for example if you want to synchronize capture from multiple
	 * pipelines, and you can also ensure that the pipelines have the same clock.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     time = the base time to set.
	 */
	public void setStartTime(GstClockTime time)
	{
		gst_element_set_start_time(gstElement, time);
	}

	/**
	 * Sets the state of the element. This function will try to set the
	 * requested state by going through all the intermediary states and calling
	 * the class's state change function for each.
	 *
	 * This function can return #GST_STATE_CHANGE_ASYNC, in which case the
	 * element will perform the remainder of the state change asynchronously in
	 * another thread.
	 * An application can use gst_element_get_state() to wait for the completion
	 * of the state change or it can wait for a %GST_MESSAGE_ASYNC_DONE or
	 * %GST_MESSAGE_STATE_CHANGED on the bus.
	 *
	 * State changes to %GST_STATE_READY or %GST_STATE_NULL never return
	 * #GST_STATE_CHANGE_ASYNC.
	 *
	 * Params:
	 *     state = the element's new #GstState.
	 *
	 * Returns: Result of the state change using #GstStateChangeReturn.
	 *
	 *     MT safe.
	 */
	public GstStateChangeReturn setState(GstState state)
	{
		return gst_element_set_state(gstElement, state);
	}

	/**
	 * Tries to change the state of the element to the same as its parent.
	 * If this function returns %FALSE, the state of element is undefined.
	 *
	 * Returns: %TRUE, if the element's state could be synced to the parent's state.
	 *
	 *     MT safe.
	 */
	public bool syncStateWithParent()
	{
		return gst_element_sync_state_with_parent(gstElement) != 0;
	}

	/**
	 * Unlinks all source pads of the source element with all sink pads
	 * of the sink element to which they are linked.
	 *
	 * If the link has been made using gst_element_link(), it could have created an
	 * requestpad, which has to be released using gst_element_release_request_pad().
	 *
	 * Params:
	 *     dest = the sink #GstElement to unlink.
	 */
	public void unlink(Element dest)
	{
		gst_element_unlink(gstElement, (dest is null) ? null : dest.getElementStruct());
	}

	/**
	 * Unlinks the two named pads of the source and destination elements.
	 *
	 * This is a convenience function for gst_pad_unlink().
	 *
	 * Params:
	 *     srcpadname = the name of the #GstPad in source element.
	 *     dest = a #GstElement containing the destination pad.
	 *     destpadname = the name of the #GstPad in destination element.
	 */
	public void unlinkPads(string srcpadname, Element dest, string destpadname)
	{
		gst_element_unlink_pads(gstElement, Str.toStringz(srcpadname), (dest is null) ? null : dest.getElementStruct(), Str.toStringz(destpadname));
	}

	/**
	 * This signals that the element will not generate more dynamic pads.
	 * Note that this signal will usually be emitted from the context of
	 * the streaming thread.
	 */
	gulong addOnNoMorePads(void delegate(Element) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "no-more-pads", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * a new #GstPad has been added to the element. Note that this signal will
	 * usually be emitted from the context of the streaming thread. Also keep in
	 * mind that if you add new elements to the pipeline in the signal handler
	 * you will need to set them to the desired target state with
	 * gst_element_set_state() or gst_element_sync_state_with_parent().
	 *
	 * Params:
	 *     newPad = the pad that has been added
	 */
	gulong addOnPadAdded(void delegate(Pad, Element) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pad-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * a #GstPad has been removed from the element
	 *
	 * Params:
	 *     oldPad = the pad that has been removed
	 */
	gulong addOnPadRemoved(void delegate(Pad, Element) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pad-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
