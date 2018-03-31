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


module gstreamer.PadTemplate;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gstreamer.Caps;
private import gstreamer.ObjectGst;
private import gstreamer.Pad;
private import gstreamer.StaticPadTemplate;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import std.algorithm;


/**
 * Padtemplates describe the possible media types a pad or an elementfactory can
 * handle. This allows for both inspection of handled types before loading the
 * element plugin as well as identifying pads on elements that are not yet
 * created (request or sometimes pads).
 * 
 * Pad and PadTemplates have #GstCaps attached to it to describe the media type
 * they are capable of dealing with. gst_pad_template_get_caps() or
 * GST_PAD_TEMPLATE_CAPS() are used to get the caps of a padtemplate. It's not
 * possible to modify the caps of a padtemplate after creation.
 * 
 * PadTemplates have a #GstPadPresence property which identifies the lifetime
 * of the pad and that can be retrieved with GST_PAD_TEMPLATE_PRESENCE(). Also
 * the direction of the pad can be retrieved from the #GstPadTemplate with
 * GST_PAD_TEMPLATE_DIRECTION().
 * 
 * The GST_PAD_TEMPLATE_NAME_TEMPLATE () is important for GST_PAD_REQUEST pads
 * because it has to be used as the name in the gst_element_get_request_pad()
 * call to instantiate a pad from this template.
 * 
 * Padtemplates can be created with gst_pad_template_new() or with
 * gst_static_pad_template_get (), which creates a #GstPadTemplate from a
 * #GstStaticPadTemplate that can be filled with the
 * convenient GST_STATIC_PAD_TEMPLATE() macro.
 * 
 * A padtemplate can be used to create a pad (see gst_pad_new_from_template()
 * or gst_pad_new_from_static_template ()) or to add to an element class
 * (see gst_element_class_add_static_pad_template ()).
 * 
 * The following code example shows the code to create a pad from a padtemplate.
 * |[<!-- language="C" -->
 * GstStaticPadTemplate my_template =
 * GST_STATIC_PAD_TEMPLATE (
 * "sink",          // the name of the pad
 * GST_PAD_SINK,    // the direction of the pad
 * GST_PAD_ALWAYS,  // when this pad will be present
 * GST_STATIC_CAPS (        // the capabilities of the padtemplate
 * "audio/x-raw, "
 * "channels = (int) [ 1, 6 ]"
 * )
 * );
 * void
 * my_method (void)
 * {
 * GstPad *pad;
 * pad = gst_pad_new_from_static_template (&amp;my_template, "sink");
 * ...
 * }
 * ]|
 * 
 * The following example shows you how to add the padtemplate to an
 * element class, this is usually done in the class_init of the class:
 * |[<!-- language="C" -->
 * static void
 * my_element_class_init (GstMyElementClass *klass)
 * {
 * GstElementClass *gstelement_class = GST_ELEMENT_CLASS (klass);
 * 
 * gst_element_class_add_static_pad_template (gstelement_class, &amp;my_template);
 * }
 * ]|
 */
public class PadTemplate : ObjectGst
{
	/** the main Gtk struct */
	protected GstPadTemplate* gstPadTemplate;

	/** Get the main Gtk struct */
	public GstPadTemplate* getPadTemplateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstPadTemplate;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstPadTemplate;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstPadTemplate* gstPadTemplate, bool ownedRef = false)
	{
		this.gstPadTemplate = gstPadTemplate;
		super(cast(GstObject*)gstPadTemplate, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_pad_template_get_type();
	}

	/**
	 * Creates a new pad template with a name according to the given template
	 * and with the given arguments.
	 *
	 * Params:
	 *     nameTemplate = the name template.
	 *     direction = the #GstPadDirection of the template.
	 *     presence = the #GstPadPresence of the pad.
	 *     caps = a #GstCaps set for the template.
	 *
	 * Returns: a new #GstPadTemplate.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string nameTemplate, GstPadDirection direction, GstPadPresence presence, Caps caps)
	{
		auto p = gst_pad_template_new(Str.toStringz(nameTemplate), direction, presence, (caps is null) ? null : caps.getCapsStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstPadTemplate*) p);
	}

	/**
	 * Converts a #GstStaticPadTemplate into a #GstPadTemplate with a type.
	 *
	 * Params:
	 *     padTemplate = the static pad template
	 *     padType = The #GType of the pad to create
	 *
	 * Returns: a new #GstPadTemplate.
	 *
	 * Since: 1.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(StaticPadTemplate padTemplate, GType padType)
	{
		auto p = gst_pad_template_new_from_static_pad_template_with_gtype((padTemplate is null) ? null : padTemplate.getStaticPadTemplateStruct(), padType);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_static_pad_template_with_gtype");
		}

		this(cast(GstPadTemplate*) p);
	}

	/**
	 * Creates a new pad template with a name according to the given template
	 * and with the given arguments.
	 *
	 * Params:
	 *     nameTemplate = the name template.
	 *     direction = the #GstPadDirection of the template.
	 *     presence = the #GstPadPresence of the pad.
	 *     caps = a #GstCaps set for the template.
	 *     padType = The #GType of the pad to create
	 *
	 * Returns: a new #GstPadTemplate.
	 *
	 * Since: 1.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string nameTemplate, GstPadDirection direction, GstPadPresence presence, Caps caps, GType padType)
	{
		auto p = gst_pad_template_new_with_gtype(Str.toStringz(nameTemplate), direction, presence, (caps is null) ? null : caps.getCapsStruct(), padType);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_gtype");
		}

		this(cast(GstPadTemplate*) p);
	}

	/**
	 * Gets the capabilities of the pad template.
	 *
	 * Returns: the #GstCaps of the pad template.
	 *     Unref after usage.
	 */
	public Caps getCaps()
	{
		auto p = gst_pad_template_get_caps(gstPadTemplate);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p, true);
	}

	/**
	 * Emit the pad-created signal for this template when created by this pad.
	 *
	 * Params:
	 *     pad = the #GstPad that created it
	 */
	public void padCreated(Pad pad)
	{
		gst_pad_template_pad_created(gstPadTemplate, (pad is null) ? null : pad.getPadStruct());
	}

	/**
	 * This signal is fired when an element creates a pad from this template.
	 *
	 * Params:
	 *     pad = the pad that was created.
	 */
	gulong addOnPadCreated(void delegate(Pad, PadTemplate) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pad-created", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
