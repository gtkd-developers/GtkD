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
 * inFile  = gstreamer-GstMiniObject.html
 * outPack = gstreamer
 * outFile = MiniObject
 * strct   = GstMiniObject
 * realStrct=
 * ctorStrct=
 * clss    = MiniObject
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_mini_object_
 * omit structs:
 * 	- GstMiniObject
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * structWrap:
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * 	- GstMiniObject* -> MiniObject
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.MiniObject;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ParamSpec;
private import gobject.Value;




/**
 * Description
 * GstMiniObject is a baseclass like GObject, but has been stripped down of
 * features to be fast and small.
 * It offers sub-classing and ref-counting in the same way as GObject does.
 * It has no properties and no signal-support though.
 * Last reviewed on 2005-11-23 (0.9.5)
 */
public class MiniObject
{
	
	/** the main Gtk struct */
	protected GstMiniObject* gstMiniObject;
	
	
	public GstMiniObject* getMiniObjectStruct()
	{
		return gstMiniObject;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMiniObject;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstMiniObject* gstMiniObject)
	{
		this.gstMiniObject = gstMiniObject;
	}
	
	/**
	 */
	
	/**
	 * Creates a new mini-object of the desired type.
	 * MT safe
	 * Params:
	 * type = the GType of the mini-object to create
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GType type)
	{
		// GstMiniObject* gst_mini_object_new (GType type);
		auto p = gst_mini_object_new(type);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_mini_object_new(type)");
		}
		this(cast(GstMiniObject*) p);
	}
	
	/**
	 * Creates a copy of the mini-object.
	 * MT safe
	 * Returns: the new mini-object.
	 */
	public MiniObject copy()
	{
		// GstMiniObject* gst_mini_object_copy (const GstMiniObject *mini_object);
		auto p = gst_mini_object_copy(gstMiniObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MiniObject)(cast(GstMiniObject*) p);
	}
	
	/**
	 * Checks if a mini-object is writable. A mini-object is writable
	 * if the reference count is one and the GST_MINI_OBJECT_FLAG_READONLY
	 * flag is not set. Modification of a mini-object should only be
	 * done after verifying that it is writable.
	 * MT safe
	 * Returns: TRUE if the object is writable.
	 */
	public int isWritable()
	{
		// gboolean gst_mini_object_is_writable (const GstMiniObject *mini_object);
		return gst_mini_object_is_writable(gstMiniObject);
	}
	
	/**
	 * Checks if a mini-object is writable. If not, a writeable copy is made and
	 * returned. This gives away the reference to the original mini object,
	 * and returns a reference to the new object.
	 * MT safe
	 * Returns: a mini-object (possibly the same pointer) that is writable.
	 */
	public MiniObject makeWritable()
	{
		// GstMiniObject* gst_mini_object_make_writable (GstMiniObject *mini_object);
		auto p = gst_mini_object_make_writable(gstMiniObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MiniObject)(cast(GstMiniObject*) p);
	}
	
	/**
	 * Increase the reference count of the mini-object.
	 * Note that the refcount affects the writeability
	 * of mini-object, see gst_mini_object_is_writable(). It is
	 * important to note that keeping additional references to
	 * GstMiniObject instances can potentially increase the number
	 * of memcpy operations in a pipeline, especially if the minibject
	 * is a GstBuffer.
	 * Returns: the mini-object.
	 */
	public MiniObject doref()
	{
		// GstMiniObject* gst_mini_object_ref (GstMiniObject *mini_object);
		auto p = gst_mini_object_ref(gstMiniObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MiniObject)(cast(GstMiniObject*) p);
	}
	
	/**
	 * Decreases the reference count of the mini-object, possibly freeing
	 * the mini-object.
	 */
	public void unref()
	{
		// void gst_mini_object_unref (GstMiniObject *mini_object);
		gst_mini_object_unref(gstMiniObject);
	}
	
	/**
	 * Modifies a pointer to point to a new mini-object. The modification
	 * is done atomically, and the reference counts are updated correctly.
	 * Either newdata and the value pointed to by olddata may be NULL.
	 * Params:
	 * olddata = pointer to a pointer to a mini-object to be replaced
	 * newdata = pointer to new mini-object
	 */
	public static void replace(ref MiniObject olddata, MiniObject newdata)
	{
		// void gst_mini_object_replace (GstMiniObject **olddata,  GstMiniObject *newdata);
		GstMiniObject* outolddata = (olddata is null) ? null : olddata.getMiniObjectStruct();
		
		gst_mini_object_replace(&outolddata, (newdata is null) ? null : newdata.getMiniObjectStruct());
		
		olddata = ObjectG.getDObject!(MiniObject)(outolddata);
	}
	
	/**
	 * Creates a new GParamSpec instance that hold GstMiniObject references.
	 * Params:
	 * name = the canonical name of the property
	 * nick = the nickname of the property
	 * blurb = a short description of the property
	 * objectType = the GstMiniObjectType for the property
	 * flags = a combination of GParamFlags
	 * Returns: a newly allocated GParamSpec instance
	 */
	public static ParamSpec gstParamSpecMiniObject(string name, string nick, string blurb, GType objectType, GParamFlags flags)
	{
		// GParamSpec* gst_param_spec_mini_object (const char *name,  const char *nick,  const char *blurb,  GType object_type,  GParamFlags flags);
		auto p = gst_param_spec_mini_object(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), objectType, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Set the contents of a GST_TYPE_MINI_OBJECT derived GValue to
	 * mini_object.
	 * The caller retains ownership of the reference.
	 * Params:
	 * value = a valid GValue of GST_TYPE_MINI_OBJECT derived type
	 * miniObject = mini object value to set
	 */
	public static void gstValueSetMiniObject(Value value, MiniObject miniObject)
	{
		// void gst_value_set_mini_object (GValue *value,  GstMiniObject *mini_object);
		gst_value_set_mini_object((value is null) ? null : value.getValueStruct(), (miniObject is null) ? null : miniObject.getMiniObjectStruct());
	}
	
	/**
	 * Set the contents of a GST_TYPE_MINI_OBJECT derived GValue to
	 * mini_object.
	 * Takes over the ownership of the caller's reference to mini_object;
	 * the caller doesn't have to unref it any more.
	 * Params:
	 * value = a valid GValue of GST_TYPE_MINI_OBJECT derived type
	 * miniObject = mini object value to take
	 */
	public static void gstValueTakeMiniObject(Value value, MiniObject miniObject)
	{
		// void gst_value_take_mini_object (GValue *value,  GstMiniObject *mini_object);
		gst_value_take_mini_object((value is null) ? null : value.getValueStruct(), (miniObject is null) ? null : miniObject.getMiniObjectStruct());
	}
	
	/**
	 * Get the contents of a GST_TYPE_MINI_OBJECT derived GValue.
	 * Does not increase the refcount of the returned object.
	 * Params:
	 * value = a valid GValue of GST_TYPE_MINI_OBJECT derived type
	 * Returns: mini object contents of value
	 */
	public static MiniObject gstValueGetMiniObject(Value value)
	{
		// GstMiniObject* gst_value_get_mini_object (const GValue *value);
		auto p = gst_value_get_mini_object((value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MiniObject)(cast(GstMiniObject*) p);
	}
}
