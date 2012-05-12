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
 * inFile  = GstElement.html
 * outPack = gstreamer
 * outFile = Element
 * strct   = GstElement
 * realStrct=
 * ctorStrct=
 * clss    = Element
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_element_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.gobject
 * 	- glib.ListG
 * 	- gstreamer.Pad
 * 	- gstreamer.PadTemplate
 * 	- gstreamer.Clock
 * 	- gstreamer.Caps
 * 	- gstreamer.ElementFactory
 * 	- gstreamer.Iterator
 * 	- gstreamer.Index
 * 	- gstreamer.TagList
 * 	- gstreamer.Message
 * 	- gstreamer.Query
 * 	- gstreamer.Event
 * 	- gstreamer.Bus
 * structWrap:
 * 	- GList -> ListG
 * 	- GObject* -> Pad
 * 	- GstBus* -> Bus
 * 	- GstCaps* -> Caps
 * 	- GstClock* -> Clock
 * 	- GstElement* -> Element
 * 	- GstElementFactory* -> ElementFactory
 * 	- GstEvent* -> Event
 * 	- GstIndex* -> Index
 * 	- GstIterator* -> Iterator
 * 	- GstMessage* -> Message
 * 	- GstPad* -> Pad
 * 	- GstPadTemplate* -> PadTemplate
 * 	- GstQuery* -> Query
 * 	- GstTagList* -> TagList
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Element;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtkc.gobject;
private import glib.ListG;
private import gstreamer.Pad;
private import gstreamer.PadTemplate;
private import gstreamer.Clock;
private import gstreamer.Caps;
private import gstreamer.ElementFactory;
private import gstreamer.Iterator;
private import gstreamer.Index;
private import gstreamer.TagList;
private import gstreamer.Message;
private import gstreamer.Query;
private import gstreamer.Event;
private import gstreamer.Bus;



private import gstreamer.ObjectGst;

/**
 * Description
 * GstElement is the abstract base class needed to construct an element that
 * can be used in a GStreamer pipeline. Please refer to the plugin writers
 * guide for more information on creating GstElement subclasses.
 * The name of a GstElement can be get with gst_element_get_name() and set with
 * gst_element_set_name(). For speed, GST_ELEMENT_NAME() can be used in the
 * core when using the appropriate locking. Do not use this in plug-ins or
 * applications in order to retain ABI compatibility.
 * All elements have pads (of the type GstPad). These pads link to pads on
 * other elements. GstBuffer flow between these linked pads.
 * A GstElement has a GList of GstPad structures for all their input (or sink)
 * and output (or source) pads.
 * Core and plug-in writers can add and remove pads with gst_element_add_pad()
 * and gst_element_remove_pad().
 * A pad of an element can be retrieved by name with gst_element_get_pad().
 * An iterator of all pads can be retrieved with gst_element_iterate_pads().
 * Elements can be linked through their pads.
 * If the link is straightforward, use the gst_element_link()
 * convenience function to link two elements, or gst_element_link_many()
 * for more elements in a row.
 * Use gst_element_link_filtered() to link two elements constrained by
 * a specified set of GstCaps.
 * For finer control, use gst_element_link_pads() and
 * gst_element_link_pads_filtered() to specify the pads to link on
 * each element by name.
 * Each element has a state (see GstState). You can get and set the state
 * of an element with gst_element_get_state() and gst_element_set_state().
 * To get a string representation of a GstState, use
 * gst_element_state_get_name().
 * You can get and set a GstClock on an element using gst_element_get_clock()
 * and gst_element_set_clock().
 * Some elements can provide a clock for the pipeline if
 * gst_element_provides_clock() returns TRUE. With the
 * gst_element_provide_clock() method one can retrieve the clock provided by
 * such an element.
 * Not all elements require a clock to operate correctly. If
 * gst_element_requires_clock() returns TRUE, a clock should be set on the
 * element with gst_element_set_clock().
 * Note that clock slection and distribution is normally handled by the
 * toplevel GstPipeline so the clock functions are only to be used in very
 * specific situations.
 * Last reviewed on 2006-03-12 (0.10.5)
 */
public class Element : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstElement* gstElement;
	
	
	public GstElement* getElementStruct()
	{
		return gstElement;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstElement;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstElement* gstElement)
	{
		if(gstElement is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gstElement);
		if( ptr !is null )
		{
			this = cast(Element)ptr;
			return;
		}
		super(cast(GstObject*)gstElement);
		this.gstElement = gstElement;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstElement = cast(GstElement*)obj;
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
	 * Get's all the pads from an element in a Pad[]. FIXME: This a hackish mess.
	 */
	public Pad[] pads()
	{
		Pad[] result = new Pad[0];
		
		Iterator iter = iteratePads();
		GstPad* obu_c = null;
		iter.next( cast(void**) &obu_c );
		while( obu_c !is null )
		{
			Pad tmpobu = new Pad( obu_c );
			//writefln( "iterating Padname: ", tmpobu.getName() );
			result.length = result.length + 1;
			result[result.length-1] = tmpobu;
			
			obu_c = null;
			iter.next( cast(void**) &obu_c );
		}
		//writefln("no more pads.");
		return result;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Element)[] onNoMorePadsListeners;
	/**
	 * This signals that the element will not generate more dynamic pads.
	 */
	void addOnNoMorePads(void delegate(Element) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("no-more-pads" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"no-more-pads",
			cast(GCallback)&callBackNoMorePads,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["no-more-pads"] = 1;
		}
		onNoMorePadsListeners ~= dlg;
	}
	extern(C) static void callBackNoMorePads(GstElement* gstelementStruct, Element element)
	{
		foreach ( void delegate(Element) dlg ; element.onNoMorePadsListeners )
		{
			dlg(element);
		}
	}
	
	void delegate(Pad, Element)[] onPadAddedListeners;
	/**
	 * a new GstPad has been added to the element.
	 */
	void addOnPadAdded(void delegate(Pad, Element) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("pad-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"pad-added",
			cast(GCallback)&callBackPadAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["pad-added"] = 1;
		}
		onPadAddedListeners ~= dlg;
	}
	extern(C) static void callBackPadAdded(GstElement* gstelementStruct, GstPad* newPad, Element element)
	{
		foreach ( void delegate(Pad, Element) dlg ; element.onPadAddedListeners )
		{
			dlg(new Pad(newPad), element);
		}
	}
	
	void delegate(Pad, Element)[] onPadRemovedListeners;
	/**
	 * a GstPad has been removed from the element
	 * See Also
	 * GstElementFactory, GstPad
	 */
	void addOnPadRemoved(void delegate(Pad, Element) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("pad-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"pad-removed",
			cast(GCallback)&callBackPadRemoved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["pad-removed"] = 1;
		}
		onPadRemovedListeners ~= dlg;
	}
	extern(C) static void callBackPadRemoved(GstElement* gstelementStruct, GstPad* oldPad, Element element)
	{
		foreach ( void delegate(Pad, Element) dlg ; element.onPadRemovedListeners )
		{
			dlg(new Pad(oldPad), element);
		}
	}
	
	
	/**
	 * Adds a padtemplate to an element class. This is mainly used in the _base_init
	 * functions of classes.
	 * Params:
	 * klass = the GstElementClass to add the pad template to.
	 * templ = a GstPadTemplate to add to the element class.
	 */
	public static void classAddPadTemplate(GstElementClass* klass, PadTemplate templ)
	{
		// void gst_element_class_add_pad_template (GstElementClass *klass,  GstPadTemplate *templ);
		gst_element_class_add_pad_template(klass, (templ is null) ? null : templ.getPadTemplateStruct());
	}
	
	/**
	 * Retrieves a padtemplate from element_class with the given name.
	 * Note
	 * If you use this function in the GInstanceInitFunc of an object class
	 * that has subclasses, make sure to pass the g_class parameter of the
	 * GInstanceInitFunc here.
	 * Params:
	 * elementClass = a GstElementClass to get the pad template of.
	 * name = the name of the GstPadTemplate to get.
	 * Returns: the GstPadTemplate with the given name, or NULL if none was found. No unreferencing is necessary.
	 */
	public static PadTemplate classGetPadTemplate(GstElementClass* elementClass, string name)
	{
		// GstPadTemplate* gst_element_class_get_pad_template (GstElementClass *element_class,  const gchar *name);
		auto p = gst_element_class_get_pad_template(elementClass, Str.toStringz(name));
		if(p is null)
		{
			return null;
		}
		return new PadTemplate(cast(GstPadTemplate*) p);
	}
	
	/**
	 * Retrieves a list of the pad templates associated with element_class. The
	 * list must not be modified by the calling code.
	 * Note
	 * If you use this function in the GInstanceInitFunc of an object class
	 * that has subclasses, make sure to pass the g_class parameter of the
	 * GInstanceInitFunc here.
	 * Params:
	 * elementClass = a GstElementClass to get pad templates of.
	 * Returns: the GList of padtemplates.
	 */
	public static GList* classGetPadTemplateList(GstElementClass* elementClass)
	{
		// GList* gst_element_class_get_pad_template_list  (GstElementClass *element_class);
		return gst_element_class_get_pad_template_list(elementClass);
	}
	
	/**
	 * Sets the detailed information for a GstElementClass.
	 * Note
	 * This function is for use in _base_init functions only.
	 * The details are copied.
	 * Params:
	 * klass = class to set details for
	 * details = details to set
	 */
	public static void classSetDetails(GstElementClass* klass, GstElementDetails* details)
	{
		// void gst_element_class_set_details (GstElementClass *klass,  const GstElementDetails *details);
		gst_element_class_set_details(klass, details);
	}
	
	/**
	 * Sets the detailed information for a GstElementClass. Simpler version of
	 * gst_element_class_set_details() that generates less linker overhead.
	 * Note
	 * This function is for use in _base_init functions only.
	 * The detail parameter strings are copied into the GstElementDetails for
	 * the element class.
	 * Params:
	 * klass = class to set details for
	 * longname = The long English name of the element. E.g. "File Sink"
	 * classification = String describing the type of element, as an unordered list
	 * separated with slashes ('/'). See draft-klass.txt of the design docs
	 * for more details and common types. E.g: "Sink/File"
	 * description = Sentence describing the purpose of the element.
	 * E.g: "Write stream to a file"
	 * author = Name and contact details of the author(s). Use \n to separate
	 * multiple author details. E.g: "Joe Bloggs <joe.blogs at foo.com>"
	 * Since 0.10.14
	 */
	public static void classSetDetailsSimple(GstElementClass* klass, string longname, string classification, string description, string author)
	{
		// void gst_element_class_set_details_simple  (GstElementClass *klass,  const gchar *longname,  const gchar *classification,  const gchar *description,  const gchar *author);
		gst_element_class_set_details_simple(klass, Str.toStringz(longname), Str.toStringz(classification), Str.toStringz(description), Str.toStringz(author));
	}
	
	/**
	 * Adds a pad (link point) to element. pad's parent will be set to element;
	 * see gst_object_set_parent() for refcounting information.
	 * Pads are not automatically activated so elements should perform the needed
	 * steps to activate the pad in case this pad is added in the PAUSED or PLAYING
	 * state. See gst_pad_set_active() for more information about activating pads.
	 * The pad and the element should be unlocked when calling this function.
	 * This function will emit the GstElement::pad-added signal on the element.
	 * Params:
	 * pad = the GstPad to add to the element.
	 * Returns: TRUE if the pad could be added. This function can fail when a pad with the same name already existed or the pad already had another parent. MT safe.
	 */
	public int addPad(Pad pad)
	{
		// gboolean gst_element_add_pad (GstElement *element,  GstPad *pad);
		return gst_element_add_pad(gstElement, (pad is null) ? null : pad.getPadStruct());
	}
	
	/**
	 * Retrieves a pad from element by name. Tries gst_element_get_static_pad()
	 * first, then gst_element_get_request_pad().
	 * Note
	 * Usage of this function is not recommended as it is unclear if the reference
	 * to the result pad should be released with gst_object_unref() in case of a static pad
	 * or gst_element_release_request_pad() in case of a request pad.
	 * Params:
	 * name = the name of the pad to retrieve.
	 * Returns: the GstPad if found, otherwise NULL. Unref or Release after usage, depending on the type of the pad.
	 */
	public Pad getPad(string name)
	{
		// GstPad* gst_element_get_pad (GstElement *element,  const gchar *name);
		auto p = gst_element_get_pad(gstElement, Str.toStringz(name));
		if(p is null)
		{
			return null;
		}
		return new Pad(cast(GstPad*) p);
	}
	
	/**
	 * Creates a pad for each pad template that is always available.
	 * This function is only useful during object intialization of
	 * subclasses of GstElement.
	 */
	public void createAllPads()
	{
		// void gst_element_create_all_pads (GstElement *element);
		gst_element_create_all_pads(gstElement);
	}
	
	/**
	 * Looks for an unlinked pad to which the given pad can link. It is not
	 * guaranteed that linking the pads will work, though it should work in most
	 * cases.
	 * Params:
	 * pad = the GstPad to find a compatible one for.
	 * caps = the GstCaps to use as a filter.
	 * Returns: the GstPad to which a link can be made, or NULL if one cannot be found.
	 */
	public Pad getCompatiblePad(Pad pad, Caps caps)
	{
		// GstPad* gst_element_get_compatible_pad (GstElement *element,  GstPad *pad,  const GstCaps *caps);
		auto p = gst_element_get_compatible_pad(gstElement, (pad is null) ? null : pad.getPadStruct(), (caps is null) ? null : caps.getCapsStruct());
		if(p is null)
		{
			return null;
		}
		return new Pad(cast(GstPad*) p);
	}
	
	/**
	 * Retrieves a pad template from element that is compatible with compattempl.
	 * Pads from compatible templates can be linked together.
	 * Params:
	 * compattempl = the GstPadTemplate to find a compatible template for.
	 * Returns: a compatible GstPadTemplate, or NULL if none was found. No unreferencing is necessary.
	 */
	public PadTemplate getCompatiblePadTemplate(PadTemplate compattempl)
	{
		// GstPadTemplate* gst_element_get_compatible_pad_template  (GstElement *element,  GstPadTemplate *compattempl);
		auto p = gst_element_get_compatible_pad_template(gstElement, (compattempl is null) ? null : compattempl.getPadTemplateStruct());
		if(p is null)
		{
			return null;
		}
		return new PadTemplate(cast(GstPadTemplate*) p);
	}
	
	/**
	 * Retrieves a pad from the element by name. This version only retrieves
	 * request pads. The pad should be released with
	 * gst_element_release_request_pad().
	 * Params:
	 * name = the name of the request GstPad to retrieve.
	 * Returns: requested GstPad if found, otherwise NULL. Release after usage.
	 */
	public Pad getRequestPad(string name)
	{
		// GstPad* gst_element_get_request_pad (GstElement *element,  const gchar *name);
		auto p = gst_element_get_request_pad(gstElement, Str.toStringz(name));
		if(p is null)
		{
			return null;
		}
		return new Pad(cast(GstPad*) p);
	}
	
	/**
	 * Retrieves a pad from element by name. This version only retrieves
	 * already-existing (i.e. 'static') pads.
	 * Params:
	 * name = the name of the static GstPad to retrieve.
	 * Returns: the requested GstPad if found, otherwise NULL. unref after usage. MT safe.
	 */
	public Pad getStaticPad(string name)
	{
		// GstPad* gst_element_get_static_pad (GstElement *element,  const gchar *name);
		auto p = gst_element_get_static_pad(gstElement, Str.toStringz(name));
		if(p is null)
		{
			return null;
		}
		return new Pad(cast(GstPad*) p);
	}
	
	/**
	 * Use this function to signal that the element does not expect any more pads
	 * to show up in the current pipeline. This function should be called whenever
	 * pads have been added by the element itself. Elements with GST_PAD_SOMETIMES
	 * pad templates use this in combination with autopluggers to figure out that
	 * the element is done initializing its pads.
	 * This function emits the GstElement::no-more-pads signal.
	 * MT safe.
	 */
	public void noMorePads()
	{
		// void gst_element_no_more_pads (GstElement *element);
		gst_element_no_more_pads(gstElement);
	}
	
	/**
	 * Makes the element free the previously requested pad as obtained
	 * with gst_element_get_request_pad().
	 * MT safe.
	 * Params:
	 * pad = the GstPad to release.
	 */
	public void releaseRequestPad(Pad pad)
	{
		// void gst_element_release_request_pad (GstElement *element,  GstPad *pad);
		gst_element_release_request_pad(gstElement, (pad is null) ? null : pad.getPadStruct());
	}
	
	/**
	 * Removes pad from element. pad will be destroyed if it has not been
	 * referenced elsewhere using gst_object_unparent().
	 * This function is used by plugin developers and should not be used
	 * by applications. Pads that were dynamically requested from elements
	 * with gst_element_get_request_pad() should be released with the
	 * gst_element_release_request_pad() function instead.
	 * Pads are not automatically deactivated so elements should perform the needed
	 * steps to deactivate the pad in case this pad is removed in the PAUSED or
	 * PLAYING state. See gst_pad_set_active() for more information about
	 * deactivating pads.
	 * The pad and the element should be unlocked when calling this function.
	 * This function will emit the GstElement::pad-removed signal on the element.
	 * Params:
	 * pad = the GstPad to remove from the element.
	 * Returns: TRUE if the pad could be removed. Can return FALSE if the pad does not belong to the provided element. MT safe.
	 */
	public int removePad(Pad pad)
	{
		// gboolean gst_element_remove_pad (GstElement *element,  GstPad *pad);
		return gst_element_remove_pad(gstElement, (pad is null) ? null : pad.getPadStruct());
	}
	
	/**
	 * Retrieves an iterattor of element's pads. The iterator should
	 * be freed after usage.
	 * Returns: the GstIterator of GstPad. Unref each pad after use. MT safe.
	 */
	public Iterator iteratePads()
	{
		// GstIterator* gst_element_iterate_pads (GstElement *element);
		auto p = gst_element_iterate_pads(gstElement);
		if(p is null)
		{
			return null;
		}
		return new Iterator(cast(GstIterator*) p);
	}
	
	/**
	 * Retrieves an iterator of element's sink pads.
	 * Returns: the GstIterator of GstPad. Unref each pad after use. MT safe.
	 */
	public Iterator iterateSinkPads()
	{
		// GstIterator* gst_element_iterate_sink_pads (GstElement *element);
		auto p = gst_element_iterate_sink_pads(gstElement);
		if(p is null)
		{
			return null;
		}
		return new Iterator(cast(GstIterator*) p);
	}
	
	/**
	 * Retrieves an iterator of element's source pads.
	 * Returns: the GstIterator of GstPad. Unref each pad after use. MT safe.
	 */
	public Iterator iterateSrcPads()
	{
		// GstIterator* gst_element_iterate_src_pads (GstElement *element);
		auto p = gst_element_iterate_src_pads(gstElement);
		if(p is null)
		{
			return null;
		}
		return new Iterator(cast(GstIterator*) p);
	}
	
	/**
	 * Links src to dest. The link must be from source to
	 * destination; the other direction will not be tried. The function looks for
	 * existing pads that aren't linked yet. It will request new pads if necessary.
	 * Such pads need to be released manualy when unlinking.
	 * If multiple links are possible, only one is established.
	 * Make sure you have added your elements to a bin or pipeline with
	 * gst_bin_add() before trying to link them.
	 * Params:
	 * dest = the GstElement containing the destination pad.
	 * Returns: TRUE if the elements could be linked, FALSE otherwise.
	 */
	public int link(Element dest)
	{
		// gboolean gst_element_link (GstElement *src,  GstElement *dest);
		return gst_element_link(gstElement, (dest is null) ? null : dest.getElementStruct());
	}
	
	/**
	 * Unlinks all source pads of the source element with all sink pads
	 * of the sink element to which they are linked.
	 * If the link has been made using gst_element_link(), it could have created an
	 * requestpad, which has to be released using gst_element_release_request_pad().
	 * Params:
	 * dest = the sink GstElement to unlink.
	 */
	public void unlink(Element dest)
	{
		// void gst_element_unlink (GstElement *src,  GstElement *dest);
		gst_element_unlink(gstElement, (dest is null) ? null : dest.getElementStruct());
	}
	
	/**
	 * Links the two named pads of the source and destination elements.
	 * Side effect is that if one of the pads has no parent, it becomes a
	 * child of the parent of the other element. If they have different
	 * parents, the link fails.
	 * Params:
	 * src = a GstElement containing the source pad.
	 * srcpadname = the name of the GstPad in source element or NULL for any pad.
	 * dest = the GstElement containing the destination pad.
	 * destpadname = the name of the GstPad in destination element,
	 * or NULL for any pad.
	 * Returns: TRUE if the pads could be linked, FALSE otherwise.
	 */
	public int linkPads(string srcpadname, Element dest, string destpadname)
	{
		// gboolean gst_element_link_pads (GstElement *src,  const gchar *srcpadname,  GstElement *dest,  const gchar *destpadname);
		return gst_element_link_pads(gstElement, Str.toStringz(srcpadname), (dest is null) ? null : dest.getElementStruct(), Str.toStringz(destpadname));
	}
	
	/**
	 * Unlinks the two named pads of the source and destination elements.
	 * Params:
	 * src = a GstElement containing the source pad.
	 * srcpadname = the name of the GstPad in source element.
	 * dest = a GstElement containing the destination pad.
	 * destpadname = the name of the GstPad in destination element.
	 */
	public void unlinkPads(string srcpadname, Element dest, string destpadname)
	{
		// void gst_element_unlink_pads (GstElement *src,  const gchar *srcpadname,  GstElement *dest,  const gchar *destpadname);
		gst_element_unlink_pads(gstElement, Str.toStringz(srcpadname), (dest is null) ? null : dest.getElementStruct(), Str.toStringz(destpadname));
	}
	
	/**
	 * Links the two named pads of the source and destination elements. Side effect
	 * is that if one of the pads has no parent, it becomes a child of the parent of
	 * the other element. If they have different parents, the link fails. If caps
	 * is not NULL, makes sure that the caps of the link is a subset of caps.
	 * Params:
	 * src = a GstElement containing the source pad.
	 * srcpadname = the name of the GstPad in source element or NULL for any pad.
	 * dest = the GstElement containing the destination pad.
	 * destpadname = the name of the GstPad in destination element or NULL for any pad.
	 * filter = the GstCaps to filter the link, or NULL for no filter.
	 * Returns: TRUE if the pads could be linked, FALSE otherwise.
	 */
	public int linkPadsFiltered(string srcpadname, Element dest, string destpadname, Caps filter)
	{
		// gboolean gst_element_link_pads_filtered (GstElement *src,  const gchar *srcpadname,  GstElement *dest,  const gchar *destpadname,  GstCaps *filter);
		return gst_element_link_pads_filtered(gstElement, Str.toStringz(srcpadname), (dest is null) ? null : dest.getElementStruct(), Str.toStringz(destpadname), (filter is null) ? null : filter.getCapsStruct());
	}
	
	/**
	 * Links src to dest using the given caps as filtercaps.
	 * The link must be from source to
	 * destination; the other direction will not be tried. The function looks for
	 * existing pads that aren't linked yet. It will request new pads if necessary.
	 * If multiple links are possible, only one is established.
	 * Make sure you have added your elements to a bin or pipeline with
	 * gst_bin_add() before trying to link them.
	 * Params:
	 * dest = the GstElement containing the destination pad.
	 * filter = the GstCaps to filter the link, or NULL for no filter.
	 * Returns: TRUE if the pads could be linked, FALSE otherwise.
	 */
	public int linkFiltered(Element dest, Caps filter)
	{
		// gboolean gst_element_link_filtered (GstElement *src,  GstElement *dest,  GstCaps *filter);
		return gst_element_link_filtered(gstElement, (dest is null) ? null : dest.getElementStruct(), (filter is null) ? null : filter.getCapsStruct());
	}
	
	/**
	 * Set the base time of an element. See gst_element_get_base_time().
	 * MT safe.
	 * Params:
	 * time = the base time to set.
	 */
	public void setBaseTime(GstClockTime time)
	{
		// void gst_element_set_base_time (GstElement *element,  GstClockTime time);
		gst_element_set_base_time(gstElement, time);
	}
	
	/**
	 * Returns the base time of the element. The base time is the
	 * absolute time of the clock when this element was last put to
	 * PLAYING. Subtracting the base time from the clock time gives
	 * the stream time of the element.
	 * Returns: the base time of the element. MT safe.
	 */
	public GstClockTime getBaseTime()
	{
		// GstClockTime gst_element_get_base_time (GstElement *element);
		return gst_element_get_base_time(gstElement);
	}
	
	/**
	 * Sets the bus of the element. Increases the refcount on the bus.
	 * For internal use only, unless you're testing elements.
	 * MT safe.
	 * Params:
	 * bus = the GstBus to set.
	 */
	public void setBus(Bus bus)
	{
		// void gst_element_set_bus (GstElement *element,  GstBus *bus);
		gst_element_set_bus(gstElement, (bus is null) ? null : bus.getBusStruct());
	}
	
	/**
	 * Returns the bus of the element. Note that only a GstPipeline will provide a
	 * bus for the application.
	 * Returns: the element's GstBus. unref after usage. MT safe.
	 */
	public Bus getBus()
	{
		// GstBus* gst_element_get_bus (GstElement *element);
		auto p = gst_element_get_bus(gstElement);
		if(p is null)
		{
			return null;
		}
		return new Bus(cast(GstBus*) p);
	}
	
	/**
	 * Retrieves the factory that was used to create this element.
	 * Returns: the GstElementFactory used for creating this element. no refcounting is needed.
	 */
	public ElementFactory getFactory()
	{
		// GstElementFactory* gst_element_get_factory (GstElement *element);
		auto p = gst_element_get_factory(gstElement);
		if(p is null)
		{
			return null;
		}
		return new ElementFactory(cast(GstElementFactory*) p);
	}
	
	/**
	 * Set index on the element. The refcount of the index
	 * will be increased, any previously set index is unreffed.
	 * MT safe.
	 * Params:
	 * index = a GstIndex.
	 */
	public void setIndex(Index index)
	{
		// void gst_element_set_index (GstElement *element,  GstIndex *index);
		gst_element_set_index(gstElement, (index is null) ? null : index.getIndexStruct());
	}
	
	/**
	 * Gets the index from the element.
	 * Returns: a GstIndex or NULL when no index was set on the element. unref after usage. MT safe.
	 */
	public Index getIndex()
	{
		// GstIndex* gst_element_get_index (GstElement *element);
		auto p = gst_element_get_index(gstElement);
		if(p is null)
		{
			return null;
		}
		return new Index(cast(GstIndex*) p);
	}
	
	/**
	 * Queries if the element can be indexed.
	 * Returns: TRUE if the element can be indexed. MT safe.
	 */
	public int isIndexable()
	{
		// gboolean gst_element_is_indexable (GstElement *element);
		return gst_element_is_indexable(gstElement);
	}
	
	/**
	 * Query if the element requires a clock.
	 * Returns: TRUE if the element requires a clock MT safe.
	 */
	public int requiresClock()
	{
		// gboolean gst_element_requires_clock (GstElement *element);
		return gst_element_requires_clock(gstElement);
	}
	
	/**
	 * Sets the clock for the element. This function increases the
	 * refcount on the clock. Any previously set clock on the object
	 * is unreffed.
	 * Params:
	 * clock = the GstClock to set for the element.
	 * Returns: TRUE if the element accepted the clock. An element can refuse a clock when it, for example, is not able to slave its internal clock to the clock or when it requires a specific clock to operate. MT safe.
	 */
	public int setClock(Clock clock)
	{
		// gboolean gst_element_set_clock (GstElement *element,  GstClock *clock);
		return gst_element_set_clock(gstElement, (clock is null) ? null : clock.getClockStruct());
	}
	
	/**
	 * Gets the currently configured clock of the element. This is the clock as was
	 * last set with gst_element_set_clock().
	 * Returns: the GstClock of the element. unref after usage. MT safe.
	 */
	public Clock getClock()
	{
		// GstClock* gst_element_get_clock (GstElement *element);
		auto p = gst_element_get_clock(gstElement);
		if(p is null)
		{
			return null;
		}
		return new Clock(cast(GstClock*) p);
	}
	
	/**
	 * Query if the element provides a clock. A GstClock provided by an
	 * element can be used as the global GstClock for the pipeline.
	 * An element that can provide a clock is only required to do so in the PAUSED
	 * state, this means when it is fully negotiated and has allocated the resources
	 * to operate the clock.
	 * Returns: TRUE if the element provides a clock MT safe.
	 */
	public int providesClock()
	{
		// gboolean gst_element_provides_clock (GstElement *element);
		return gst_element_provides_clock(gstElement);
	}
	
	/**
	 * Get the clock provided by the given element.
	 * Note
	 * An element is only required to provide a clock in the PAUSED
	 * state. Some elements can provide a clock in other states.
	 * Returns: the GstClock provided by the element or NULL if no clock could be provided. Unref after usage. MT safe.
	 */
	public Clock provideClock()
	{
		// GstClock* gst_element_provide_clock (GstElement *element);
		auto p = gst_element_provide_clock(gstElement);
		if(p is null)
		{
			return null;
		}
		return new Clock(cast(GstClock*) p);
	}
	
	/**
	 * Sets the state of the element. This function will try to set the
	 * requested state by going through all the intermediary states and calling
	 * the class's state change function for each.
	 * This function can return GST_STATE_CHANGE_ASYNC, in which case the
	 * element will perform the remainder of the state change asynchronously in
	 * another thread.
	 * An application can use gst_element_get_state() to wait for the completion
	 * of the state change or it can wait for a state change message on the bus.
	 * Params:
	 * state = the element's new GstState.
	 * Returns: Result of the state change using GstStateChangeReturn. MT safe.
	 */
	public GstStateChangeReturn setState(GstState state)
	{
		// GstStateChangeReturn gst_element_set_state (GstElement *element,  GstState state);
		return gst_element_set_state(gstElement, state);
	}
	
	/**
	 * Gets the state of the element.
	 * For elements that performed an ASYNC state change, as reported by
	 * gst_element_set_state(), this function will block up to the
	 * specified timeout value for the state change to complete.
	 * If the element completes the state change or goes into
	 * an error, this function returns immediately with a return value of
	 * GST_STATE_CHANGE_SUCCESS or GST_STATE_CHANGE_FAILURE respectively.
	 * For elements that did not return GST_STATE_CHANGE_ASYNC, this function
	 * returns the current and pending state immediately.
	 * This function returns GST_STATE_CHANGE_NO_PREROLL if the element
	 * successfully changed its state but is not able to provide data yet.
	 * This mostly happens for live sources that only produce data in the PLAYING
	 * state. While the state change return is equivalent to
	 * GST_STATE_CHANGE_SUCCESS, it is returned to the application to signal that
	 * some sink elements might not be able to complete their state change because
	 * an element is not producing data to complete the preroll. When setting the
	 * element to playing, the preroll will complete and playback will start.
	 * Params:
	 * state = a pointer to GstState to hold the state. Can be NULL.
	 * pending = a pointer to GstState to hold the pending state.
	 *  Can be NULL.
	 * timeout = a GstClockTime to specify the timeout for an async
	 *  state change or GST_CLOCK_TIME_NONE for infinite timeout.
	 * Returns: GST_STATE_CHANGE_SUCCESS if the element has no more pending state and the last state change succeeded, GST_STATE_CHANGE_ASYNC if the element is still performing a state change or GST_STATE_CHANGE_FAILURE if the last state change failed. MT safe.
	 */
	public GstStateChangeReturn getState(out GstState state, out GstState pending, GstClockTime timeout)
	{
		// GstStateChangeReturn gst_element_get_state (GstElement *element,  GstState *state,  GstState *pending,  GstClockTime timeout);
		return gst_element_get_state(gstElement, &state, &pending, timeout);
	}
	
	/**
	 * Locks the state of an element, so state changes of the parent don't affect
	 * this element anymore.
	 * MT safe.
	 * Params:
	 * lockedState = TRUE to lock the element's state
	 * Returns: TRUE if the state was changed, FALSE if bad parameters were given or the elements state-locking needed no change.
	 */
	public int setLockedState(int lockedState)
	{
		// gboolean gst_element_set_locked_state (GstElement *element,  gboolean locked_state);
		return gst_element_set_locked_state(gstElement, lockedState);
	}
	
	/**
	 * Checks if the state of an element is locked.
	 * If the state of an element is locked, state changes of the parent don't
	 * affect the element.
	 * This way you can leave currently unused elements inside bins. Just lock their
	 * state before changing the state from GST_STATE_NULL.
	 * MT safe.
	 * Returns: TRUE, if the element's state is locked.
	 */
	public int isLockedState()
	{
		// gboolean gst_element_is_locked_state (GstElement *element);
		return gst_element_is_locked_state(gstElement);
	}
	
	/**
	 * Abort the state change of the element. This function is used
	 * by elements that do asynchronous state changes and find out
	 * something is wrong.
	 * This function should be called with the STATE_LOCK held.
	 * MT safe.
	 */
	public void abortState()
	{
		// void gst_element_abort_state (GstElement *element);
		gst_element_abort_state(gstElement);
	}
	
	/**
	 * Commit the state change of the element and proceed to the next
	 * pending state if any. This function is used
	 * by elements that do asynchronous state changes.
	 * The core will normally call this method automatically when an
	 * element returned GST_STATE_CHANGE_SUCCESS from the state change function.
	 * If after calling this method the element still has not reached
	 * the pending state, the next state change is performed.
	 * This method is used internally and should normally not be called by plugins
	 * or applications.
	 * Params:
	 * ret = The previous state return value
	 * Returns: The result of the commit state change. MT safe.
	 */
	public GstStateChangeReturn continueState(GstStateChangeReturn ret)
	{
		// GstStateChangeReturn gst_element_continue_state (GstElement *element,  GstStateChangeReturn ret);
		return gst_element_continue_state(gstElement, ret);
	}
	
	/**
	 * Brings the element to the lost state. The current state of the
	 * element is copied to the pending state so that any call to
	 * gst_element_get_state() will return GST_STATE_CHANGE_ASYNC.
	 * An ASYNC_START message is posted with an indication to distribute a new
	 * base_time to the element.
	 * If the element was PLAYING, it will go to PAUSED. The element
	 * will be restored to its PLAYING state by the parent pipeline when it
	 * prerolls again.
	 * This is mostly used for elements that lost their preroll buffer
	 * in the GST_STATE_PAUSED or GST_STATE_PLAYING state after a flush,
	 * they will go to their pending state again when a new preroll buffer is
	 * queued. This function can only be called when the element is currently
	 * not in error or an async state change.
	 * This function is used internally and should normally not be called from
	 * plugins or applications.
	 * MT safe.
	 */
	public void lostState()
	{
		// void gst_element_lost_state (GstElement *element);
		gst_element_lost_state(gstElement);
	}
	
	/**
	 * Gets a string representing the given state.
	 * Params:
	 * state = a GstState to get the name of.
	 * Returns: a string with the name of the state.
	 */
	public static string stateGetName(GstState state)
	{
		// const gchar* gst_element_state_get_name (GstState state);
		return Str.toString(gst_element_state_get_name(state));
	}
	
	/**
	 * Gets a string representing the given state change result.
	 * Params:
	 * stateRet = a GstStateChangeReturn to get the name of.
	 * Returns: a string with the name of the state change result.
	 */
	public static string stateChangeReturnGetName(GstStateChangeReturn stateRet)
	{
		// const gchar* gst_element_state_change_return_get_name  (GstStateChangeReturn state_ret);
		return Str.toString(gst_element_state_change_return_get_name(stateRet));
	}
	
	/**
	 * Tries to change the state of the element to the same as its parent.
	 * If this function returns FALSE, the state of element is undefined.
	 * Returns: TRUE, if the element's state could be synced to the parent's state. MT safe.
	 */
	public int syncStateWithParent()
	{
		// gboolean gst_element_sync_state_with_parent (GstElement *element);
		return gst_element_sync_state_with_parent(gstElement);
	}
	
	/**
	 * Perform transition on element.
	 * This function must be called with STATE_LOCK held and is mainly used
	 * internally.
	 * Params:
	 * transition = the requested transition
	 * Returns: the GstStateChangeReturn of the state transition.
	 */
	public GstStateChangeReturn changeState(GstStateChange transition)
	{
		// GstStateChangeReturn gst_element_change_state (GstElement *element,  GstStateChange transition);
		return gst_element_change_state(gstElement, transition);
	}
	
	/**
	 * Posts a message to the bus that new tags were found, and pushes an event
	 * to all sourcepads. Takes ownership of the list.
	 * This is a utility method for elements. Applications should use the
	 * GstTagSetter interface.
	 * Params:
	 * list = list of tags.
	 */
	public void foundTags(TagList list)
	{
		// void gst_element_found_tags (GstElement *element,  GstTagList *list);
		gst_element_found_tags(gstElement, (list is null) ? null : list.getTagListStruct());
	}
	
	/**
	 * Posts a message to the bus that new tags were found and pushes the
	 * tags as event. Takes ownership of the list.
	 * This is a utility method for elements. Applications should use the
	 * GstTagSetter interface.
	 * Params:
	 * pad = pad on which to push tag-event.
	 * list = the taglist to post on the bus and create event from.
	 */
	public void foundTagsForPad(Pad pad, TagList list)
	{
		// void gst_element_found_tags_for_pad (GstElement *element,  GstPad *pad,  GstTagList *list);
		gst_element_found_tags_for_pad(gstElement, (pad is null) ? null : pad.getPadStruct(), (list is null) ? null : list.getTagListStruct());
	}
	
	/**
	 * Post an error, warning or info message on the bus from inside an element.
	 * type must be of GST_MESSAGE_ERROR, GST_MESSAGE_WARNING or
	 * GST_MESSAGE_INFO.
	 * MT safe.
	 * Params:
	 * type = the GstMessageType
	 * domain = the GStreamer GError domain this message belongs to
	 * code = the GError code belonging to the domain
	 * text = an allocated text string to be used as a replacement for the
	 *  default message connected to code, or NULL
	 * dbug = an allocated debug message to be used as a replacement for the
	 *  default debugging information, or NULL
	 * file = the source code file where the error was generated
	 * funct = the source code function where the error was generated
	 * line = the source code line where the error was generated
	 */
	public void messageFull(GstMessageType type, GQuark domain, int code, string text, string dbug, string file, string funct, int line)
	{
		// void gst_element_message_full (GstElement *element,  GstMessageType type,  GQuark domain,  gint code,  gchar *text,  gchar *debug,  const gchar *file,  const gchar *function,  gint line);
		gst_element_message_full(gstElement, type, domain, code, Str.toStringz(text), Str.toStringz(dbug), Str.toStringz(file), Str.toStringz(funct), line);
	}
	
	/**
	 * Post a message on the element's GstBus. This function takes ownership of the
	 * message; if you want to access the message after this call, you should add an
	 * additional reference before calling.
	 * Params:
	 * message = a GstMessage to post
	 * Returns: TRUE if the message was successfully posted. The function returns FALSE if the element did not have a bus. MT safe.
	 */
	public int postMessage(Message message)
	{
		// gboolean gst_element_post_message (GstElement *element,  GstMessage *message);
		return gst_element_post_message(gstElement, (message is null) ? null : message.getMessageStruct());
	}
	
	/**
	 * Get an array of query types from the element.
	 * If the element doesn't implement a query types function,
	 * the query will be forwarded to the peer of a random linked sink pad.
	 * Returns: An array of GstQueryType elements that should not be freed or modified. MT safe.
	 */
	public GstQueryType* getQueryTypes()
	{
		// const GstQueryType* gst_element_get_query_types (GstElement *element);
		return gst_element_get_query_types(gstElement);
	}
	
	/**
	 * Performs a query on the given element.
	 * For elements that don't implement a query handler, this function
	 * forwards the query to a random srcpad or to the peer of a
	 * random linked sinkpad of this element.
	 * Params:
	 * query = the GstQuery.
	 * Returns: TRUE if the query could be performed. MT safe.
	 */
	public int query(Query query)
	{
		// gboolean gst_element_query (GstElement *element,  GstQuery *query);
		return gst_element_query(gstElement, (query is null) ? null : query.getQueryStruct());
	}
	
	/**
	 * Queries an element to convert src_val in src_format to dest_format.
	 * Params:
	 * srcFormat = a GstFormat to convert from.
	 * srcVal = a value to convert.
	 * destFormat = a pointer to the GstFormat to convert to.
	 * destVal = a pointer to the result.
	 * Returns: TRUE if the query could be performed.
	 */
	public int queryConvert(GstFormat srcFormat, long srcVal, ref GstFormat destFormat, long* destVal)
	{
		// gboolean gst_element_query_convert (GstElement *element,  GstFormat src_format,  gint64 src_val,  GstFormat *dest_format,  gint64 *dest_val);
		return gst_element_query_convert(gstElement, srcFormat, srcVal, &destFormat, destVal);
	}
	
	/**
	 * Queries an element for the stream position.
	 * Params:
	 * format = a pointer to the GstFormat asked for.
	 *  On return contains the GstFormat used.
	 * cur = A location in which to store the current position, or NULL.
	 * Returns: TRUE if the query could be performed.
	 */
	public int queryPosition(ref GstFormat format, ref long cur)
	{
		// gboolean gst_element_query_position (GstElement *element,  GstFormat *format,  gint64 *cur);
		return gst_element_query_position(gstElement, &format, &cur);
	}
	
	/**
	 * Queries an element for the total stream duration.
	 * Params:
	 * format = a pointer to the GstFormat asked for.
	 *  On return contains the GstFormat used.
	 * duration = A location in which to store the total duration, or NULL.
	 * Returns: TRUE if the query could be performed.
	 */
	public int queryDuration(ref GstFormat format, ref long duration)
	{
		// gboolean gst_element_query_duration (GstElement *element,  GstFormat *format,  gint64 *duration);
		return gst_element_query_duration(gstElement, &format, &duration);
	}
	
	/**
	 * Sends an event to an element. If the element doesn't implement an
	 * event handler, the event will be pushed on a random linked sink pad for
	 * upstream events or a random linked source pad for downstream events.
	 * This function takes owership of the provided event so you should
	 * gst_event_ref() it if you want to reuse the event after this call.
	 * Params:
	 * event = the GstEvent to send to the element.
	 * Returns: TRUE if the event was handled. MT safe.
	 */
	public int sendEvent(Event event)
	{
		// gboolean gst_element_send_event (GstElement *element,  GstEvent *event);
		return gst_element_send_event(gstElement, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Simple API to perform a seek on the given element, meaning it just seeks
	 * to the given position relative to the start of the stream. For more complex
	 * operations like segment seeks (e.g. for looping) or changing the playback
	 * rate or seeking relative to the last configured playback segment you should
	 * use gst_element_seek().
	 * In a completely prerolled PAUSED or PLAYING pipeline, seeking is always
	 * guaranteed to return TRUE on a seekable media type or FALSE when the media
	 * type is certainly not seekable (such as a live stream).
	 * Some elements allow for seeking in the READY state, in this
	 * case they will store the seek event and execute it when they are put to
	 * PAUSED. If the element supports seek in READY, it will always return TRUE when
	 * it receives the event in the READY state.
	 * Params:
	 * format = a GstFormat to execute the seek in, such as GST_FORMAT_TIME
	 * seekFlags = seek options; playback applications will usually want to use
	 *  GST_SEEK_FLAG_FLUSH | GST_SEEK_FLAG_KEY_UNIT here
	 * seekPos = position to seek to (relative to the start); if you are doing
	 *  a seek in GST_FORMAT_TIME this value is in nanoseconds -
	 *  multiply with GST_SECOND to convert seconds to nanoseconds or
	 *  with GST_MSECOND to convert milliseconds to nanoseconds.
	 * Returns: TRUE if the seek operation succeeded (the seek might not always be executed instantly though) Since 0.10.7
	 */
	public int seekSimple(GstFormat format, GstSeekFlags seekFlags, long seekPos)
	{
		// gboolean gst_element_seek_simple (GstElement *element,  GstFormat format,  GstSeekFlags seek_flags,  gint64 seek_pos);
		return gst_element_seek_simple(gstElement, format, seekFlags, seekPos);
	}
	
	/**
	 * Sends a seek event to an element. See gst_event_new_seek() for the details of
	 * the parameters. The seek event is sent to the element using
	 * gst_element_send_event().
	 * Params:
	 * rate = The new playback rate
	 * format = The format of the seek values
	 * flags = The optional seek flags.
	 * curType = The type and flags for the new current position
	 * cur = The value of the new current position
	 * stopType = The type and flags for the new stop position
	 * stop = The value of the new stop position
	 * Returns: TRUE if the event was handled. MT safe. Signal Details The "no-more-pads" signal void user_function (GstElement *gstelement, gpointer user_data) : Run Last This signals that the element will not generate more dynamic pads.
	 */
	public int seek(double rate, GstFormat format, GstSeekFlags flags, GstSeekType curType, long cur, GstSeekType stopType, long stop)
	{
		// gboolean gst_element_seek (GstElement *element,  gdouble rate,  GstFormat format,  GstSeekFlags flags,  GstSeekType cur_type,  gint64 cur,  GstSeekType stop_type,  gint64 stop);
		return gst_element_seek(gstElement, rate, format, flags, curType, cur, stopType, stop);
	}
}
