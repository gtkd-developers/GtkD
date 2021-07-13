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


module gstreamer.DeviceProviderClass;

private import glib.Str;
private import glib.c.functions;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * The structure of the base #GstDeviceProviderClass
 *
 * Since: 1.4
 */
public class DeviceProviderClass
{
	/** the main Gtk struct */
	protected GstDeviceProviderClass* gstDeviceProviderClass;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstDeviceProviderClass* getDeviceProviderClassStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstDeviceProviderClass;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstDeviceProviderClass;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstDeviceProviderClass* gstDeviceProviderClass, bool ownedRef = false)
	{
		this.gstDeviceProviderClass = gstDeviceProviderClass;
		this.ownedRef = ownedRef;
	}


	/**
	 * Set @key with @value as metadata in @klass.
	 *
	 * Params:
	 *     key = the key to set
	 *     value = the value to set
	 *
	 * Since: 1.4
	 */
	public void addMetadata(string key, string value)
	{
		gst_device_provider_class_add_metadata(gstDeviceProviderClass, Str.toStringz(key), Str.toStringz(value));
	}

	/**
	 * Set @key with @value as metadata in @klass.
	 *
	 * Same as gst_device_provider_class_add_metadata(), but @value must be a static string
	 * or an inlined string, as it will not be copied. (GStreamer plugins will
	 * be made resident once loaded, so this function can be used even from
	 * dynamically loaded plugins.)
	 *
	 * Params:
	 *     key = the key to set
	 *     value = the value to set
	 *
	 * Since: 1.4
	 */
	public void addStaticMetadata(string key, string value)
	{
		gst_device_provider_class_add_static_metadata(gstDeviceProviderClass, Str.toStringz(key), Str.toStringz(value));
	}

	/**
	 * Get metadata with @key in @klass.
	 *
	 * Params:
	 *     key = the key to get
	 *
	 * Returns: the metadata for @key.
	 *
	 * Since: 1.4
	 */
	public string getMetadata(string key)
	{
		return Str.toString(gst_device_provider_class_get_metadata(gstDeviceProviderClass, Str.toStringz(key)));
	}

	/**
	 * Sets the detailed information for a #GstDeviceProviderClass.
	 *
	 * > This function is for use in _class_init functions only.
	 *
	 * Params:
	 *     longname = The long English name of the device provider. E.g. "File Sink"
	 *     classification = String describing the type of device provider, as an
	 *         unordered list separated with slashes ('/'). See draft-klass.txt of the
	 *         design docs
	 *         for more details and common types. E.g: "Sink/File"
	 *     description = Sentence describing the purpose of the device provider.
	 *         E.g: "Write stream to a file"
	 *     author = Name and contact details of the author(s). Use \n to separate
	 *         multiple author metadata. E.g: "Joe Bloggs &lt;joe.blogs at foo.com&gt;"
	 *
	 * Since: 1.4
	 */
	public void setMetadata(string longname, string classification, string description, string author)
	{
		gst_device_provider_class_set_metadata(gstDeviceProviderClass, Str.toStringz(longname), Str.toStringz(classification), Str.toStringz(description), Str.toStringz(author));
	}

	/**
	 * Sets the detailed information for a #GstDeviceProviderClass.
	 *
	 * > This function is for use in _class_init functions only.
	 *
	 * Same as gst_device_provider_class_set_metadata(), but @longname, @classification,
	 * @description, and @author must be static strings or inlined strings, as
	 * they will not be copied. (GStreamer plugins will be made resident once
	 * loaded, so this function can be used even from dynamically loaded plugins.)
	 *
	 * Params:
	 *     longname = The long English name of the element. E.g. "File Sink"
	 *     classification = String describing the type of element, as
	 *         an unordered list separated with slashes ('/'). See draft-klass.txt of the
	 *         design docs for more details and common types. E.g: "Sink/File"
	 *     description = Sentence describing the purpose of the
	 *         element.  E.g: "Write stream to a file"
	 *     author = Name and contact details of the author(s). Use \n
	 *         to separate multiple author metadata. E.g: "Joe Bloggs &lt;joe.blogs at
	 *         foo.com&gt;"
	 *
	 * Since: 1.4
	 */
	public void setStaticMetadata(string longname, string classification, string description, string author)
	{
		gst_device_provider_class_set_static_metadata(gstDeviceProviderClass, Str.toStringz(longname), Str.toStringz(classification), Str.toStringz(description), Str.toStringz(author));
	}
}
