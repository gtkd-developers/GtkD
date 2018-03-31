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


module gstreamer.ElementClass;

private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.PadTemplate;
private import gstreamer.StaticPadTemplate;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * GStreamer element class. Override the vmethods to implement the element
 * functionality.
 */
public class ElementClass
{
	/** the main Gtk struct */
	protected GstElementClass* gstElementClass;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstElementClass* getElementClassStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstElementClass;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstElementClass;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstElementClass* gstElementClass, bool ownedRef = false)
	{
		this.gstElementClass = gstElementClass;
		this.ownedRef = ownedRef;
	}


	/**
	 * Set @key with @value as metadata in @klass.
	 *
	 * Params:
	 *     key = the key to set
	 *     value = the value to set
	 */
	public void addMetadata(string key, string value)
	{
		gst_element_class_add_metadata(gstElementClass, Str.toStringz(key), Str.toStringz(value));
	}

	/**
	 * Adds a padtemplate to an element class. This is mainly used in the _class_init
	 * functions of classes. If a pad template with the same name as an already
	 * existing one is added the old one is replaced by the new one.
	 *
	 * @templ's reference count will be incremented, and any floating
	 * reference will be removed (see gst_object_ref_sink())
	 *
	 * Params:
	 *     templ = a #GstPadTemplate to add to the element class.
	 */
	public void addPadTemplate(PadTemplate templ)
	{
		gst_element_class_add_pad_template(gstElementClass, (templ is null) ? null : templ.getPadTemplateStruct());
	}

	/**
	 * Set @key with @value as metadata in @klass.
	 *
	 * Same as gst_element_class_add_metadata(), but @value must be a static string
	 * or an inlined string, as it will not be copied. (GStreamer plugins will
	 * be made resident once loaded, so this function can be used even from
	 * dynamically loaded plugins.)
	 *
	 * Params:
	 *     key = the key to set
	 *     value = the value to set
	 */
	public void addStaticMetadata(string key, string value)
	{
		gst_element_class_add_static_metadata(gstElementClass, Str.toStringz(key), Str.toStringz(value));
	}

	/**
	 * Adds a pad template to an element class based on the static pad template
	 * @templ. This is mainly used in the _class_init functions of element
	 * implementations. If a pad template with the same name already exists,
	 * the old one is replaced by the new one.
	 *
	 * Params:
	 *     staticTempl = #GstStaticPadTemplate to add as pad template to the element class.
	 *
	 * Since: 1.8
	 */
	public void addStaticPadTemplate(StaticPadTemplate staticTempl)
	{
		gst_element_class_add_static_pad_template(gstElementClass, (staticTempl is null) ? null : staticTempl.getStaticPadTemplateStruct());
	}

	/**
	 * Adds a pad template to an element class based on the static pad template
	 * @templ. This is mainly used in the _class_init functions of element
	 * implementations. If a pad template with the same name already exists,
	 * the old one is replaced by the new one.
	 *
	 * Params:
	 *     staticTempl = #GstStaticPadTemplate to add as pad template to the element class.
	 *     padType = The #GType of the pad to create
	 *
	 * Since: 1.14
	 */
	public void addStaticPadTemplateWithGtype(StaticPadTemplate staticTempl, GType padType)
	{
		gst_element_class_add_static_pad_template_with_gtype(gstElementClass, (staticTempl is null) ? null : staticTempl.getStaticPadTemplateStruct(), padType);
	}

	/**
	 * Get metadata with @key in @klass.
	 *
	 * Params:
	 *     key = the key to get
	 *
	 * Returns: the metadata for @key.
	 */
	public string getMetadata(string key)
	{
		return Str.toString(gst_element_class_get_metadata(gstElementClass, Str.toStringz(key)));
	}

	/**
	 * Retrieves a padtemplate from @element_class with the given name.
	 * > If you use this function in the #GInstanceInitFunc of an object class
	 * > that has subclasses, make sure to pass the g_class parameter of the
	 * > #GInstanceInitFunc here.
	 *
	 * Params:
	 *     name = the name of the #GstPadTemplate to get.
	 *
	 * Returns: the #GstPadTemplate with the
	 *     given name, or %NULL if none was found. No unreferencing is
	 *     necessary.
	 */
	public PadTemplate getPadTemplate(string name)
	{
		auto p = gst_element_class_get_pad_template(gstElementClass, Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PadTemplate)(cast(GstPadTemplate*) p);
	}

	/**
	 * Retrieves a list of the pad templates associated with @element_class. The
	 * list must not be modified by the calling code.
	 * > If you use this function in the #GInstanceInitFunc of an object class
	 * > that has subclasses, make sure to pass the g_class parameter of the
	 * > #GInstanceInitFunc here.
	 *
	 * Returns: the #GList of
	 *     pad templates.
	 */
	public ListG getPadTemplateList()
	{
		auto p = gst_element_class_get_pad_template_list(gstElementClass);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Sets the detailed information for a #GstElementClass.
	 * > This function is for use in _class_init functions only.
	 *
	 * Params:
	 *     longname = The long English name of the element. E.g. "File Sink"
	 *     classification = String describing the type of element, as an unordered list
	 *         separated with slashes ('/'). See draft-klass.txt of the design docs
	 *         for more details and common types. E.g: "Sink/File"
	 *     description = Sentence describing the purpose of the element.
	 *         E.g: "Write stream to a file"
	 *     author = Name and contact details of the author(s). Use \n to separate
	 *         multiple author metadata. E.g: "Joe Bloggs &lt;joe.blogs at foo.com&gt;"
	 */
	public void setMetadata(string longname, string classification, string description, string author)
	{
		gst_element_class_set_metadata(gstElementClass, Str.toStringz(longname), Str.toStringz(classification), Str.toStringz(description), Str.toStringz(author));
	}

	/**
	 * Sets the detailed information for a #GstElementClass.
	 *
	 * > This function is for use in _class_init functions only.
	 *
	 * Same as gst_element_class_set_metadata(), but @longname, @classification,
	 * @description, and @author must be static strings or inlined strings, as
	 * they will not be copied. (GStreamer plugins will be made resident once
	 * loaded, so this function can be used even from dynamically loaded plugins.)
	 *
	 * Params:
	 *     longname = The long English name of the element. E.g. "File Sink"
	 *     classification = String describing the type of element, as an unordered list
	 *         separated with slashes ('/'). See draft-klass.txt of the design docs
	 *         for more details and common types. E.g: "Sink/File"
	 *     description = Sentence describing the purpose of the element.
	 *         E.g: "Write stream to a file"
	 *     author = Name and contact details of the author(s). Use \n to separate
	 *         multiple author metadata. E.g: "Joe Bloggs &lt;joe.blogs at foo.com&gt;"
	 */
	public void setStaticMetadata(string longname, string classification, string description, string author)
	{
		gst_element_class_set_static_metadata(gstElementClass, Str.toStringz(longname), Str.toStringz(classification), Str.toStringz(description), Str.toStringz(author));
	}
}
