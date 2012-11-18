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
 * inFile  = GstPadTemplate.html
 * outPack = gstreamer
 * outFile = PadTemplate
 * strct   = GstPadTemplate
 * realStrct=
 * ctorStrct=
 * clss    = PadTemplate
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_pad_template_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Pad
 * 	- gstreamer.Caps
 * structWrap:
 * 	- GstCaps* -> Caps
 * 	- GstPad* -> Pad
 * 	- GstPadTemplate* -> PadTemplate
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.PadTemplate;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gstreamer.Pad;
private import gstreamer.Caps;



private import gstreamer.ObjectGst;

/**
 * Description
 * Padtemplates describe the possible media types a pad or an elementfactory can
 * handle. This allows for both inspection of handled types before loading the
 * element plugin as well as identifying pads on elements that are not yet
 * created (request or sometimes pads).
 * Pad and PadTemplates have GstCaps attached to it to describe the media type
 * they are capable of dealing with. gst_pad_template_get_caps() or
 * GST_PAD_TEMPLATE_CAPS() are used to get the caps of a padtemplate. It's not
 * possible to modify the caps of a padtemplate after creation.
 * PadTemplates have a GstPadPresence property which identifies the lifetime
 * of the pad and that can be retrieved with GST_PAD_TEMPLATE_PRESENCE(). Also
 * the direction of the pad can be retrieved from the GstPadTemplate with
 * GST_PAD_TEMPLATE_DIRECTION().
 * The GST_PAD_TEMPLATE_NAME_TEMPLATE() is important for GST_PAD_REQUEST pads
 * because it has to be used as the name in the gst_element_request_pad_by_name()
 * call to instantiate a pad from this template.
 * Padtemplates can be created with gst_pad_template_new() or with
 * gst_static_pad_template_get(), which creates a GstPadTemplate from a
 * GstStaticPadTemplate that can be filled with the
 * convenient GST_STATIC_PAD_TEMPLATE() macro.
 * A padtemplate can be used to create a pad (see gst_pad_new_from_template()
 * or gst_pad_new_from_static_template()) or to add to an element class
 * (see gst_element_class_add_pad_template()).
 * The following code example shows the code to create a pad from a padtemplate.
 * $(DDOC_COMMENT example)
 * The following example shows you how to add the padtemplate to an
 * element class, this is usually done in the base_init of the class:
 * $(DDOC_COMMENT example)
 * Last reviewed on 2006-02-14 (0.10.3)
 */
public class PadTemplate : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstPadTemplate* gstPadTemplate;
	
	
	public GstPadTemplate* getPadTemplateStruct()
	{
		return gstPadTemplate;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstPadTemplate;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstPadTemplate* gstPadTemplate)
	{
		super(cast(GstObject*)gstPadTemplate);
		this.gstPadTemplate = gstPadTemplate;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstPadTemplate = cast(GstPadTemplate*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Pad, PadTemplate)[] onPadCreatedListeners;
	/**
	 * This signal is fired when an element creates a pad from this template.
	 * See Also
	 * GstPad, GstElementFactory
	 */
	void addOnPadCreated(void delegate(Pad, PadTemplate) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("pad-created" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"pad-created",
			cast(GCallback)&callBackPadCreated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["pad-created"] = 1;
		}
		onPadCreatedListeners ~= dlg;
	}
	extern(C) static void callBackPadCreated(GstPadTemplate* padTemplateStruct, GstPad* pad, PadTemplate _padTemplate)
	{
		foreach ( void delegate(Pad, PadTemplate) dlg ; _padTemplate.onPadCreatedListeners )
		{
			dlg(ObjectG.getDObject!(Pad)(pad), _padTemplate);
		}
	}
	
	
	/**
	 * Converts a GstStaticPadTemplate into a GstPadTemplate.
	 * Params:
	 * padTemplate = the static pad template
	 * Returns: a new GstPadTemplate.
	 */
	public static PadTemplate staticPadTemplateGet(GstStaticPadTemplate* padTemplate)
	{
		// GstPadTemplate* gst_static_pad_template_get (GstStaticPadTemplate *pad_template);
		auto p = gst_static_pad_template_get(padTemplate);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PadTemplate)(cast(GstPadTemplate*) p);
	}
	
	/**
	 * Gets the capabilities of the static pad template.
	 * Params:
	 * templ = a GstStaticPadTemplate to get capabilities of.
	 * Returns: the GstCaps of the static pad template. If you need to keep a reference to the caps, take a ref (see gst_caps_ref()).
	 */
	public static Caps staticPadTemplateGetCaps(GstStaticPadTemplate* templ)
	{
		// GstCaps* gst_static_pad_template_get_caps (GstStaticPadTemplate *templ);
		auto p = gst_static_pad_template_get_caps(templ);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Creates a new pad template with a name according to the given template
	 * and with the given arguments. This functions takes ownership of the provided
	 * caps, so be sure to not use them afterwards.
	 * Params:
	 * nameTemplate = the name template.
	 * direction = the GstPadDirection of the template.
	 * presence = the GstPadPresence of the pad.
	 * caps = a GstCaps set for the template. The caps are taken ownership of.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string nameTemplate, GstPadDirection direction, GstPadPresence presence, Caps caps)
	{
		// GstPadTemplate* gst_pad_template_new (const gchar *name_template,  GstPadDirection direction,  GstPadPresence presence,  GstCaps *caps);
		auto p = gst_pad_template_new(Str.toStringz(nameTemplate), direction, presence, (caps is null) ? null : caps.getCapsStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_pad_template_new(Str.toStringz(nameTemplate), direction, presence, (caps is null) ? null : caps.getCapsStruct())");
		}
		this(cast(GstPadTemplate*) p);
	}
	
	/**
	 * Gets the capabilities of the pad template.
	 * Returns: the GstCaps of the pad template. If you need to keep a reference to the caps, take a ref (see gst_caps_ref()). Signal Details The "pad-created" signal void user_function (GstPadTemplate *pad_template, GstPad *pad, gpointer user_data) : Run Last This signal is fired when an element creates a pad from this template.
	 */
	public Caps getCaps()
	{
		// GstCaps* gst_pad_template_get_caps (GstPadTemplate *templ);
		auto p = gst_pad_template_get_caps(gstPadTemplate);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
}
