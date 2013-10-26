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
 * inFile  = gstreamer-GstCapsFeatures.html
 * outPack = gstreamer
 * outFile = CapsFeatures
 * strct   = GstCapsFeatures
 * realStrct=
 * ctorStrct=
 * clss    = CapsFeatures
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_caps_features_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_caps_features_new_any
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GstCapsFeatures* -> CapsFeatures
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gstreamer.CapsFeatures;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import glib.Str;



/**
 * GstCapsFeatures can optionally be set on a GstCaps to add requirements
 * for additional features for a specific GstStructure. Caps structures with
 * the same name but with a non-equal set of caps features are not compatible.
 * If a pad supports multiple sets of features it has to add multiple equal
 * structures with different feature sets to the caps.
 *
 * Empty GstCapsFeatures are equivalent with the GstCapsFeatures that only
 * contain GST_CAPS_FEATURE_MEMORY_SYSTEM_MEMORY. ANY GstCapsFeatures as
 * created by gst_caps_features_new_any() are equal to any other GstCapsFeatures
 * and can be used to specify that any GstCapsFeatures would be supported, e.g.
 * for elements that don't touch buffer memory. GstCaps with ANY GstCapsFeatures
 * are considered non-fixed and during negotiation some GstCapsFeatures have
 * to be selected.
 *
 * Examples for caps features would be the requirement of a specific GstMemory
 * types or the requirement of having a specific GstMeta on the buffer. Features
 * are given as a string of the format "memory:GstMemoryTypeName" or
 * "meta:GstMetaAPIName".
 */
public class CapsFeatures
{
	
	/** the main Gtk struct */
	protected GstCapsFeatures* gstCapsFeatures;
	
	
	public GstCapsFeatures* getCapsFeaturesStruct()
	{
		return gstCapsFeatures;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstCapsFeatures;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstCapsFeatures* gstCapsFeatures)
	{
		this.gstCapsFeatures = gstCapsFeatures;
	}
	
	/**
	 */
	
	/**
	 * Creates a new, empty GstCapsFeatures.
	 * Free-function: gst_caps_features_free
	 * Since 1.2
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstCapsFeatures * gst_caps_features_new_empty (void);
		auto p = gst_caps_features_new_empty();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_caps_features_new_empty()");
		}
		this(cast(GstCapsFeatures*) p);
	}
	
	/**
	 * Creates a new GstCapsFeatures with the given features.
	 * Free-function: gst_caps_features_free
	 * Since 1.2
	 * Params:
	 * feature1 = name of first feature to set
	 * varargs = variable argument list
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GQuark feature1, void* varargs)
	{
		// GstCapsFeatures * gst_caps_features_new_id_valist (GQuark feature1,  va_list varargs);
		auto p = gst_caps_features_new_id_valist(feature1, varargs);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_caps_features_new_id_valist(feature1, varargs)");
		}
		this(cast(GstCapsFeatures*) p);
	}
	
	/**
	 * Creates a new GstCapsFeatures with the given features.
	 * Free-function: gst_caps_features_free
	 * Since 1.2
	 * Params:
	 * feature1 = name of first feature to set
	 * varargs = variable argument list
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string feature1, void* varargs)
	{
		// GstCapsFeatures * gst_caps_features_new_valist (const gchar *feature1,  va_list varargs);
		auto p = gst_caps_features_new_valist(Str.toStringz(feature1), varargs);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_caps_features_new_valist(Str.toStringz(feature1), varargs)");
		}
		this(cast(GstCapsFeatures*) p);
	}
	
	/**
	 * Duplicates a GstCapsFeatures and all its values.
	 * Free-function: gst_caps_features_free
	 * Since 1.2
	 * Returns: a new GstCapsFeatures. [transfer full]
	 */
	public CapsFeatures copy()
	{
		// GstCapsFeatures * gst_caps_features_copy (const GstCapsFeatures *features);
		auto p = gst_caps_features_copy(gstCapsFeatures);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CapsFeatures)(cast(GstCapsFeatures*) p);
	}
	
	/**
	 * Frees a GstCapsFeatures and all its values. The caps features must not
	 * have a parent when this function is called.
	 * Since 1.2
	 */
	public void free()
	{
		// void gst_caps_features_free (GstCapsFeatures *features);
		gst_caps_features_free(gstCapsFeatures);
	}
	
	/**
	 * Creates a GstCapsFeatures from a string representation.
	 * Free-function: gst_caps_features_free
	 * Since 1.2
	 * Params:
	 * features = a string representation of a GstCapsFeatures.
	 * Returns: a new GstCapsFeatures or NULL when the string could not be parsed. Free with gst_caps_features_free() after use. [transfer full]
	 */
	public static CapsFeatures fromString(string features)
	{
		// GstCapsFeatures * gst_caps_features_from_string (const gchar *features);
		auto p = gst_caps_features_from_string(Str.toStringz(features));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CapsFeatures)(cast(GstCapsFeatures*) p);
	}
	
	/**
	 * Converts features to a human-readable string representation.
	 * Since 1.2
	 * Returns: a pointer to string allocated by g_malloc(). g_free() after usage. [transfer full]
	 */
	public override string toString()
	{
		// gchar * gst_caps_features_to_string (const GstCapsFeatures *features);
		return Str.toString(gst_caps_features_to_string(gstCapsFeatures));
	}
	
	/**
	 * Sets the parent_refcount field of GstCapsFeatures. This field is used to
	 * determine whether a caps features is mutable or not. This function should only be
	 * called by code implementing parent objects of GstCapsFeatures, as described in
	 * the MT Refcounting section of the design documents.
	 * Since 1.2
	 * Params:
	 * refcount = a pointer to the parent's refcount. [in]
	 * Returns: TRUE if the parent refcount could be set.
	 */
	public int setParentRefcount(int* refcount)
	{
		// gboolean gst_caps_features_set_parent_refcount  (GstCapsFeatures *features,  gint *refcount);
		return gst_caps_features_set_parent_refcount(gstCapsFeatures, refcount);
	}
	
	/**
	 * Check if features1 and features2 are equal.
	 * Since 1.2
	 * Params:
	 * features2 = a GstCapsFeatures.
	 * Returns: TRUE if features1 and features2 are equal.
	 */
	public int isEqual(CapsFeatures features2)
	{
		// gboolean gst_caps_features_is_equal (const GstCapsFeatures *features1,  const GstCapsFeatures *features2);
		return gst_caps_features_is_equal(gstCapsFeatures, (features2 is null) ? null : features2.getCapsFeaturesStruct());
	}
	
	/**
	 * Check if features is GST_CAPS_FEATURES_ANY.
	 * Since 1.2
	 * Returns: TRUE if features is GST_CAPS_FEATURES_ANY.
	 */
	public int isAny()
	{
		// gboolean gst_caps_features_is_any (const GstCapsFeatures *features);
		return gst_caps_features_is_any(gstCapsFeatures);
	}
	
	/**
	 * Check if features contains feature.
	 * Since 1.2
	 * Params:
	 * feature = a feature
	 * Returns: TRUE if features contains feature.
	 */
	public int contains(string feature)
	{
		// gboolean gst_caps_features_contains (const GstCapsFeatures *features,  const gchar *feature);
		return gst_caps_features_contains(gstCapsFeatures, Str.toStringz(feature));
	}
	
	/**
	 * Check if features contains feature.
	 * Since 1.2
	 * Params:
	 * feature = a feature
	 * Returns: TRUE if features contains feature.
	 */
	public int containsId(GQuark feature)
	{
		// gboolean gst_caps_features_contains_id (const GstCapsFeatures *features,  GQuark feature);
		return gst_caps_features_contains_id(gstCapsFeatures, feature);
	}
	
	/**
	 * Returns the number of features in features.
	 * Since 1.2
	 * Returns: The number of features in features.
	 */
	public uint getSize()
	{
		// guint gst_caps_features_get_size (const GstCapsFeatures *features);
		return gst_caps_features_get_size(gstCapsFeatures);
	}
	
	/**
	 * Returns the i-th feature of features.
	 * Since 1.2
	 * Params:
	 * i = index of the feature
	 * Returns: The i-th feature of features.
	 */
	public string getNth(uint i)
	{
		// const gchar * gst_caps_features_get_nth (const GstCapsFeatures *features,  guint i);
		return Str.toString(gst_caps_features_get_nth(gstCapsFeatures, i));
	}
	
	/**
	 * Returns the i-th feature of features.
	 * Since 1.2
	 * Params:
	 * i = index of the feature
	 * Returns: The i-th feature of features.
	 */
	public GQuark getNthId(uint i)
	{
		// GQuark gst_caps_features_get_nth_id (const GstCapsFeatures *features,  guint i);
		return gst_caps_features_get_nth_id(gstCapsFeatures, i);
	}
	
	/**
	 * Adds feature to features.
	 * Since 1.2
	 * Params:
	 * feature = a feature.
	 */
	public void add(string feature)
	{
		// void gst_caps_features_add (GstCapsFeatures *features,  const gchar *feature);
		gst_caps_features_add(gstCapsFeatures, Str.toStringz(feature));
	}
	
	/**
	 * Adds feature to features.
	 * Since 1.2
	 * Params:
	 * feature = a feature.
	 */
	public void addId(GQuark feature)
	{
		// void gst_caps_features_add_id (GstCapsFeatures *features,  GQuark feature);
		gst_caps_features_add_id(gstCapsFeatures, feature);
	}
	
	/**
	 * Removes feature from features.
	 * Since 1.2
	 * Params:
	 * feature = a feature.
	 */
	public void remove(string feature)
	{
		// void gst_caps_features_remove (GstCapsFeatures *features,  const gchar *feature);
		gst_caps_features_remove(gstCapsFeatures, Str.toStringz(feature));
	}
	
	/**
	 * Removes feature from features.
	 * Since 1.2
	 * Params:
	 * feature = a feature.
	 */
	public void removeId(GQuark feature)
	{
		// void gst_caps_features_remove_id (GstCapsFeatures *features,  GQuark feature);
		gst_caps_features_remove_id(gstCapsFeatures, feature);
	}
}
