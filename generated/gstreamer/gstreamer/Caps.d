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


module gstreamer.Caps;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Value;
private import gstreamer.CapsFeatures;
private import gstreamer.Structure;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import gtkd.Loader;


/**
 * Caps (capabilities) are lightweight refcounted objects describing media types.
 * They are composed of an array of #GstStructure.
 * 
 * Caps are exposed on #GstPadTemplate to describe all possible types a
 * given pad can handle. They are also stored in the #GstRegistry along with
 * a description of the #GstElement.
 * 
 * Caps are exposed on the element pads using the gst_pad_query_caps() pad
 * function. This function describes the possible types that the pad can
 * handle or produce at runtime.
 * 
 * A #GstCaps can be constructed with the following code fragment:
 * 
 * ``` C
 * GstCaps *caps = gst_caps_new_simple ("video/x-raw",
 * "format", G_TYPE_STRING, "I420",
 * "framerate", GST_TYPE_FRACTION, 25, 1,
 * "pixel-aspect-ratio", GST_TYPE_FRACTION, 1, 1,
 * "width", G_TYPE_INT, 320,
 * "height", G_TYPE_INT, 240,
 * NULL);
 * ```
 * 
 * A #GstCaps is fixed when it has no fields with ranges or lists. Use
 * gst_caps_is_fixed() to test for fixed caps. Fixed caps can be used in a
 * caps event to notify downstream elements of the current media type.
 * 
 * Various methods exist to work with the media types such as subtracting
 * or intersecting.
 * 
 * Be aware that until 1.20 the #GstCaps / #GstStructure serialization into string
 * had limited support for nested #GstCaps / #GstStructure fields. It could only
 * support one level of nesting. Using more levels would lead to unexpected
 * behavior when using serialization features, such as gst_caps_to_string() or
 * gst_value_serialize() and their counterparts.
 */
public class Caps
{
	/** the main Gtk struct */
	protected GstCaps* gstCaps;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstCaps* getCapsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstCaps;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstCaps;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstCaps* gstCaps, bool ownedRef = false)
	{
		this.gstCaps = gstCaps;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			gst_caps_unref(gstCaps);
	}

	/**
	 * Creates a new GstCaps that indicates that it is compatible with
	 * any media format.
	 * Returns:
	 *  the new GstCaps
	 */
	public static Caps newAny()
	{
		// GstCaps* gst_caps_new_any (void);
		auto p = cast(GstCaps*)gst_caps_new_any();

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_caps_new_any");
		}

		return new Caps(cast(GstCaps*)p); //, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_caps_get_type();
	}

	/**
	 * Creates a new #GstCaps that is empty.  That is, the returned
	 * #GstCaps contains no media formats.
	 * The #GstCaps is guaranteed to be writable.
	 *
	 * Returns: the new #GstCaps
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_caps_new_empty();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_empty");
		}

		this(cast(GstCaps*) __p);
	}

	/**
	 * Creates a new #GstCaps that contains one #GstStructure with name
	 * @media_type.
	 *
	 * Params:
	 *     mediaType = the media type of the structure
	 *
	 * Returns: the new #GstCaps
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string mediaType)
	{
		auto __p = gst_caps_new_empty_simple(Str.toStringz(mediaType));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_empty_simple");
		}

		this(cast(GstCaps*) __p);
	}

	/**
	 * Creates a new #GstCaps and adds all the structures listed as
	 * arguments.  The list must be %NULL-terminated.  The structures
	 * are not copied; the returned #GstCaps owns the structures.
	 *
	 * Params:
	 *     structure = the first structure to add
	 *     varArgs = additional structures to add
	 *
	 * Returns: the new #GstCaps
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Structure structure, void* varArgs)
	{
		auto __p = gst_caps_new_full_valist((structure is null) ? null : structure.getStructureStruct(), varArgs);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full_valist");
		}

		this(cast(GstCaps*) __p);
	}

	/**
	 * Appends the structures contained in @caps2 to @caps1. The structures in
	 * @caps2 are not copied -- they are transferred to @caps1, and then @caps2 is
	 * freed. If either caps is ANY, the resulting caps will be ANY.
	 *
	 * Params:
	 *     caps2 = the #GstCaps to append
	 */
	public void append(Caps caps2)
	{
		gst_caps_append(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct(true));
	}

	/**
	 * Appends @structure to @caps.  The structure is not copied; @caps
	 * becomes the owner of @structure.
	 *
	 * Params:
	 *     structure = the #GstStructure to append
	 */
	public void appendStructure(Structure structure)
	{
		gst_caps_append_structure(gstCaps, (structure is null) ? null : structure.getStructureStruct(true));
	}

	/**
	 * Appends @structure with @features to @caps.  The structure is not copied; @caps
	 * becomes the owner of @structure.
	 *
	 * Params:
	 *     structure = the #GstStructure to append
	 *     features = the #GstCapsFeatures to append
	 *
	 * Since: 1.2
	 */
	public void appendStructureFull(Structure structure, CapsFeatures features)
	{
		gst_caps_append_structure_full(gstCaps, (structure is null) ? null : structure.getStructureStruct(true), (features is null) ? null : features.getCapsFeaturesStruct(true));
	}

	/**
	 * Tries intersecting @caps1 and @caps2 and reports whether the result would not
	 * be empty
	 *
	 * Params:
	 *     caps2 = a #GstCaps to intersect
	 *
	 * Returns: %TRUE if intersection would be not empty
	 */
	public bool canIntersect(Caps caps2)
	{
		return gst_caps_can_intersect(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct()) != 0;
	}

	/**
	 * Creates a new #GstCaps as a copy of the old @caps. The new caps will have a
	 * refcount of 1, owned by the caller. The structures are copied as well.
	 *
	 * Note that this function is the semantic equivalent of a gst_caps_ref()
	 * followed by a gst_caps_make_writable(). If you only want to hold on to a
	 * reference to the data, you should use gst_caps_ref().
	 *
	 * Returns: the new #GstCaps
	 */
	public Caps copy()
	{
		auto __p = gst_caps_copy(gstCaps);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Creates a new #GstCaps and appends a copy of the nth structure
	 * contained in @caps.
	 *
	 * Params:
	 *     nth = the nth structure to copy
	 *
	 * Returns: the new #GstCaps
	 *
	 * Since: 1.16
	 */
	public Caps copyNth(uint nth)
	{
		auto __p = gst_caps_copy_nth(gstCaps, nth);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Calls the provided function once for each structure and caps feature in the
	 * #GstCaps. In contrast to gst_caps_foreach(), the function may modify the
	 * structure and features. In contrast to gst_caps_filter_and_map_in_place(),
	 * the structure and features are removed from the caps if %FALSE is returned
	 * from the function.
	 * The caps must be mutable.
	 *
	 * Params:
	 *     func = a function to call for each field
	 *     userData = private data
	 *
	 * Since: 1.6
	 */
	public void filterAndMapInPlace(GstCapsFilterMapFunc func, void* userData)
	{
		gst_caps_filter_and_map_in_place(gstCaps, func, userData);
	}

	/**
	 * Modifies the given @caps into a representation with only fixed
	 * values. First the caps will be truncated and then the first structure will be
	 * fixated with gst_structure_fixate().
	 *
	 * This function takes ownership of @caps and will call gst_caps_make_writable()
	 * on it so you must not use @caps afterwards unless you keep an additional
	 * reference to it with gst_caps_ref().
	 *
	 * Note that it is not guaranteed that the returned caps have exactly one
	 * structure. If @caps are empty caps then the returned caps will be
	 * the empty too and contain no structure at all.
	 *
	 * Calling this function with ANY caps is not allowed.
	 *
	 * Returns: the fixated caps
	 */
	public Caps fixate()
	{
		auto __p = gst_caps_fixate(gstCaps);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	alias foreac = foreach_;
	/**
	 * Calls the provided function once for each structure and caps feature in the
	 * #GstCaps. The function must not modify the fields.
	 * Also see gst_caps_map_in_place() and gst_caps_filter_and_map_in_place().
	 *
	 * Params:
	 *     func = a function to call for each field
	 *     userData = private data
	 *
	 * Returns: %TRUE if the supplied function returns %TRUE for each call,
	 *     %FALSE otherwise.
	 *
	 * Since: 1.6
	 */
	public bool foreach_(GstCapsForeachFunc func, void* userData)
	{
		return gst_caps_foreach(gstCaps, func, userData) != 0;
	}

	/**
	 * Finds the features in @caps at @index, and returns it.
	 *
	 * WARNING: This function takes a `const GstCaps *`, but returns a
	 * non-const `GstCapsFeatures *`.  This is for programming convenience --
	 * the caller should be aware that features inside a constant
	 * #GstCaps should not be modified. However, if you know the caps
	 * are writable, either because you have just copied them or made
	 * them writable with gst_caps_make_writable(), you may modify the
	 * features returned in the usual way, e.g. with functions like
	 * gst_caps_features_add().
	 *
	 * Params:
	 *     index = the index of the structure
	 *
	 * Returns: a pointer to the #GstCapsFeatures
	 *     corresponding to @index
	 *
	 * Since: 1.2
	 */
	public CapsFeatures getFeatures(uint index)
	{
		auto __p = gst_caps_get_features(gstCaps, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CapsFeatures)(cast(GstCapsFeatures*) __p);
	}

	/**
	 * Gets the number of structures contained in @caps.
	 *
	 * Returns: the number of structures that @caps contains
	 */
	public uint getSize()
	{
		return gst_caps_get_size(gstCaps);
	}

	/**
	 * Finds the structure in @caps at @index, and returns it.
	 *
	 * WARNING: This function takes a `const GstCaps *`, but returns a
	 * non-const `GstStructure *`.  This is for programming convenience --
	 * the caller should be aware that structures inside a constant
	 * #GstCaps should not be modified. However, if you know the caps
	 * are writable, either because you have just copied them or made
	 * them writable with gst_caps_make_writable(), you may modify the
	 * structure returned in the usual way, e.g. with functions like
	 * gst_structure_set().
	 *
	 * Params:
	 *     index = the index of the structure
	 *
	 * Returns: a pointer to the #GstStructure corresponding
	 *     to @index
	 */
	public Structure getStructure(uint index)
	{
		auto __p = gst_caps_get_structure(gstCaps, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) __p);
	}

	/**
	 * Creates a new #GstCaps that contains all the formats that are common
	 * to both @caps1 and @caps2. Defaults to %GST_CAPS_INTERSECT_ZIG_ZAG mode.
	 *
	 * Params:
	 *     caps2 = a #GstCaps to intersect
	 *
	 * Returns: the new #GstCaps
	 */
	public Caps intersect(Caps caps2)
	{
		auto __p = gst_caps_intersect(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Creates a new #GstCaps that contains all the formats that are common
	 * to both @caps1 and @caps2, the order is defined by the #GstCapsIntersectMode
	 * used.
	 *
	 * Params:
	 *     caps2 = a #GstCaps to intersect
	 *     mode = The intersection algorithm/mode to use
	 *
	 * Returns: the new #GstCaps
	 */
	public Caps intersectFull(Caps caps2, GstCapsIntersectMode mode)
	{
		auto __p = gst_caps_intersect_full(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct(), mode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * A given #GstCaps structure is always compatible with another if
	 * every media format that is in the first is also contained in the
	 * second.  That is, @caps1 is a subset of @caps2.
	 *
	 * Params:
	 *     caps2 = the #GstCaps to test
	 *
	 * Returns: %TRUE if @caps1 is a subset of @caps2.
	 */
	public bool isAlwaysCompatible(Caps caps2)
	{
		return gst_caps_is_always_compatible(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct()) != 0;
	}

	/**
	 * Determines if @caps represents any media format.
	 *
	 * Returns: %TRUE if @caps represents any format.
	 */
	public bool isAny()
	{
		return gst_caps_is_any(gstCaps) != 0;
	}

	/**
	 * Determines if @caps represents no media formats.
	 *
	 * Returns: %TRUE if @caps represents no formats.
	 */
	public bool isEmpty()
	{
		return gst_caps_is_empty(gstCaps) != 0;
	}

	/**
	 * Checks if the given caps represent the same set of caps.
	 *
	 * Params:
	 *     caps2 = another #GstCaps
	 *
	 * Returns: %TRUE if both caps are equal.
	 */
	public bool isEqual(Caps caps2)
	{
		return gst_caps_is_equal(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct()) != 0;
	}

	/**
	 * Tests if two #GstCaps are equal.  This function only works on fixed
	 * #GstCaps.
	 *
	 * Params:
	 *     caps2 = the #GstCaps to test
	 *
	 * Returns: %TRUE if the arguments represent the same format
	 */
	public bool isEqualFixed(Caps caps2)
	{
		return gst_caps_is_equal_fixed(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct()) != 0;
	}

	/**
	 * Fixed #GstCaps describe exactly one format, that is, they have exactly
	 * one structure, and each field in the structure describes a fixed type.
	 * Examples of non-fixed types are GST_TYPE_INT_RANGE and GST_TYPE_LIST.
	 *
	 * Returns: %TRUE if @caps is fixed
	 */
	public bool isFixed()
	{
		return gst_caps_is_fixed(gstCaps) != 0;
	}

	/**
	 * Checks if the given caps are exactly the same set of caps.
	 *
	 * Params:
	 *     caps2 = another #GstCaps
	 *
	 * Returns: %TRUE if both caps are strictly equal.
	 */
	public bool isStrictlyEqual(Caps caps2)
	{
		return gst_caps_is_strictly_equal(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct()) != 0;
	}

	/**
	 * Checks if all caps represented by @subset are also represented by @superset.
	 *
	 * Params:
	 *     superset = a potentially greater #GstCaps
	 *
	 * Returns: %TRUE if @subset is a subset of @superset
	 */
	public bool isSubset(Caps superset)
	{
		return gst_caps_is_subset(gstCaps, (superset is null) ? null : superset.getCapsStruct()) != 0;
	}

	/**
	 * Checks if @structure is a subset of @caps. See gst_caps_is_subset()
	 * for more information.
	 *
	 * Params:
	 *     structure = a potential #GstStructure subset of @caps
	 *
	 * Returns: %TRUE if @structure is a subset of @caps
	 */
	public bool isSubsetStructure(Structure structure)
	{
		return gst_caps_is_subset_structure(gstCaps, (structure is null) ? null : structure.getStructureStruct()) != 0;
	}

	/**
	 * Checks if @structure is a subset of @caps. See gst_caps_is_subset()
	 * for more information.
	 *
	 * Params:
	 *     structure = a potential #GstStructure subset of @caps
	 *     features = a #GstCapsFeatures for @structure
	 *
	 * Returns: %TRUE if @structure is a subset of @caps
	 *
	 * Since: 1.2
	 */
	public bool isSubsetStructureFull(Structure structure, CapsFeatures features)
	{
		return gst_caps_is_subset_structure_full(gstCaps, (structure is null) ? null : structure.getStructureStruct(), (features is null) ? null : features.getCapsFeaturesStruct()) != 0;
	}

	/**
	 * Calls the provided function once for each structure and caps feature in the
	 * #GstCaps. In contrast to gst_caps_foreach(), the function may modify but not
	 * delete the structures and features. The caps must be mutable.
	 *
	 * Params:
	 *     func = a function to call for each field
	 *     userData = private data
	 *
	 * Returns: %TRUE if the supplied function returns %TRUE for each call,
	 *     %FALSE otherwise.
	 *
	 * Since: 1.6
	 */
	public bool mapInPlace(GstCapsMapFunc func, void* userData)
	{
		return gst_caps_map_in_place(gstCaps, func, userData) != 0;
	}

	/**
	 * Appends the structures contained in @caps2 to @caps1 if they are not yet
	 * expressed by @caps1. The structures in @caps2 are not copied -- they are
	 * transferred to a writable copy of @caps1, and then @caps2 is freed.
	 * If either caps is ANY, the resulting caps will be ANY.
	 *
	 * Params:
	 *     caps2 = the #GstCaps to merge in
	 *
	 * Returns: the merged caps.
	 */
	public Caps merge(Caps caps2)
	{
		auto __p = gst_caps_merge(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct(true));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Appends @structure to @caps if it is not already expressed by @caps.
	 *
	 * Params:
	 *     structure = the #GstStructure to merge
	 *
	 * Returns: the merged caps.
	 */
	public Caps mergeStructure(Structure structure)
	{
		auto __p = gst_caps_merge_structure(gstCaps, (structure is null) ? null : structure.getStructureStruct(true));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Appends @structure with @features to @caps if its not already expressed by @caps.
	 *
	 * Params:
	 *     structure = the #GstStructure to merge
	 *     features = the #GstCapsFeatures to merge
	 *
	 * Returns: the merged caps.
	 *
	 * Since: 1.2
	 */
	public Caps mergeStructureFull(Structure structure, CapsFeatures features)
	{
		auto __p = gst_caps_merge_structure_full(gstCaps, (structure is null) ? null : structure.getStructureStruct(true), (features is null) ? null : features.getCapsFeaturesStruct(true));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Returns a #GstCaps that represents the same set of formats as
	 * @caps, but contains no lists.  Each list is expanded into separate
	 * #GstStructure.
	 *
	 * This function takes ownership of @caps and will call gst_caps_make_writable()
	 * on it so you must not use @caps afterwards unless you keep an additional
	 * reference to it with gst_caps_ref().
	 *
	 * Returns: the normalized #GstCaps
	 */
	public Caps normalize()
	{
		auto __p = gst_caps_normalize(gstCaps);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	alias doref = ref_;
	/**
	 * Adds a reference to a #GstCaps object.
	 *
	 * From this point on, until the caller calls gst_caps_unref() or
	 * gst_caps_make_writable(), it is guaranteed that the caps object will not
	 * change. This means its structures won't change, etc. To use a #GstCaps
	 * object, you must always have a refcount on it -- either the one made
	 * implicitly by e.g. gst_caps_new_simple(), or via taking one explicitly with
	 * this function.
	 *
	 * Returns: the same #GstCaps object.
	 */
	public Caps ref_()
	{
		auto __p = gst_caps_ref(gstCaps);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Removes the structure with the given index from the list of structures
	 * contained in @caps.
	 *
	 * Params:
	 *     idx = Index of the structure to remove
	 */
	public void removeStructure(uint idx)
	{
		gst_caps_remove_structure(gstCaps, idx);
	}

	/**
	 * Converts @caps to a string representation.  This string representation can be
	 * converted back to a #GstCaps by gst_caps_from_string().
	 *
	 * This prints the caps in human readable form.
	 *
	 * This version of the caps serialization function introduces support for nested
	 * structures and caps but the resulting strings won't be parsable with
	 * GStreamer prior to 1.20 unless #GST_SERIALIZE_FLAG_BACKWARD_COMPAT is passed
	 * as @flag.
	 *
	 * Params:
	 *     flags = a #GstSerializeFlags
	 *
	 * Returns: a newly allocated string representing @caps.
	 *
	 * Since: 1.20
	 */
	public string serialize(GstSerializeFlags flags)
	{
		auto retStr = gst_caps_serialize(gstCaps, flags);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Sets the @features for the structure at @index.
	 *
	 * Params:
	 *     index = the index of the structure
	 *     features = the #GstCapsFeatures to set
	 *
	 * Since: 1.2
	 */
	public void setFeatures(uint index, CapsFeatures features)
	{
		gst_caps_set_features(gstCaps, index, (features is null) ? null : features.getCapsFeaturesStruct(true));
	}

	/**
	 * Sets the @features for all the structures of @caps.
	 *
	 * Params:
	 *     features = the #GstCapsFeatures to set
	 *
	 * Since: 1.16
	 */
	public void setFeaturesSimple(CapsFeatures features)
	{
		gst_caps_set_features_simple(gstCaps, (features is null) ? null : features.getCapsFeaturesStruct(true));
	}

	/**
	 * Sets fields in a #GstCaps.  The arguments must be passed in the same
	 * manner as gst_structure_set(), and be %NULL-terminated.
	 *
	 * Params:
	 *     field = first field to set
	 *     varargs = additional parameters
	 */
	public void setSimpleValist(string field, void* varargs)
	{
		gst_caps_set_simple_valist(gstCaps, Str.toStringz(field), varargs);
	}

	/**
	 * Sets the given @field on all structures of @caps to the given @value.
	 * This is a convenience function for calling gst_structure_set_value() on
	 * all structures of @caps.
	 *
	 * Params:
	 *     field = name of the field to set
	 *     value = value to set the field to
	 */
	public void setValue(string field, Value value)
	{
		gst_caps_set_value(gstCaps, Str.toStringz(field), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Converts the given @caps into a representation that represents the
	 * same set of formats, but in a simpler form.  Component structures that are
	 * identical are merged.  Component structures that have values that can be
	 * merged are also merged.
	 *
	 * This function takes ownership of @caps and will call gst_caps_make_writable()
	 * on it if necessary, so you must not use @caps afterwards unless you keep an
	 * additional reference to it with gst_caps_ref().
	 *
	 * This method does not preserve the original order of @caps.
	 *
	 * Returns: The simplified caps.
	 */
	public Caps simplify()
	{
		auto __p = gst_caps_simplify(gstCaps);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Retrieves the structure with the given index from the list of structures
	 * contained in @caps. The caller becomes the owner of the returned structure.
	 *
	 * Params:
	 *     index = Index of the structure to retrieve
	 *
	 * Returns: a pointer to the #GstStructure
	 *     corresponding to @index.
	 */
	public Structure stealStructure(uint index)
	{
		auto __p = gst_caps_steal_structure(gstCaps, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) __p, true);
	}

	/**
	 * Subtracts the @subtrahend from the @minuend.
	 * > This function does not work reliably if optional properties for caps
	 * > are included on one caps and omitted on the other.
	 *
	 * Params:
	 *     subtrahend = #GstCaps to subtract
	 *
	 * Returns: the resulting caps
	 */
	public Caps subtract(Caps subtrahend)
	{
		auto __p = gst_caps_subtract(gstCaps, (subtrahend is null) ? null : subtrahend.getCapsStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Converts @caps to a string representation.  This string representation
	 * can be converted back to a #GstCaps by gst_caps_from_string().
	 *
	 * For debugging purposes its easier to do something like this:
	 *
	 * ``` C
	 * GST_LOG ("caps are %" GST_PTR_FORMAT, caps);
	 * ```
	 *
	 * This prints the caps in human readable form.
	 *
	 * The implementation of serialization up to 1.20 would lead to unexpected results
	 * when there were nested #GstCaps / #GstStructure deeper than one level.
	 *
	 * Returns: a newly allocated string representing @caps.
	 */
	public override string toString()
	{
		auto retStr = gst_caps_to_string(gstCaps);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Discards all but the first structure from @caps. Useful when
	 * fixating.
	 *
	 * This function takes ownership of @caps and will call gst_caps_make_writable()
	 * on it if necessary, so you must not use @caps afterwards unless you keep an
	 * additional reference to it with gst_caps_ref().
	 *
	 * Note that it is not guaranteed that the returned caps have exactly one
	 * structure. If @caps is any or empty caps then the returned caps will be
	 * the same and contain no structure at all.
	 *
	 * Returns: truncated caps
	 */
	public Caps truncate()
	{
		auto __p = gst_caps_truncate(gstCaps);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Unrefs a #GstCaps and frees all its structures and the
	 * structures' values when the refcount reaches 0.
	 */
	public void unref()
	{
		gst_caps_unref(gstCaps);
	}

	/**
	 * Converts @caps from a string representation.
	 *
	 * The implementation of serialization up to 1.20 would lead to unexpected results
	 * when there were nested #GstCaps / #GstStructure deeper than one level.
	 *
	 * Params:
	 *     string_ = a string to convert to #GstCaps
	 *
	 * Returns: a newly allocated #GstCaps
	 */
	public static Caps fromString(string string_)
	{
		auto __p = gst_caps_from_string(Str.toStringz(string_));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Modifies a pointer to a #GstCaps to point to a different #GstCaps. The
	 * modification is done atomically (so this is useful for ensuring thread safety
	 * in some cases), and the reference counts are updated appropriately (the old
	 * caps is unreffed, the new is reffed).
	 *
	 * Either @new_caps or the #GstCaps pointed to by @old_caps may be %NULL.
	 *
	 * Params:
	 *     oldCaps = pointer to a pointer
	 *         to a #GstCaps to be replaced.
	 *     newCaps = pointer to a #GstCaps that will
	 *         replace the caps pointed to by @old_caps.
	 *
	 * Returns: %TRUE if @new_caps was different from @old_caps
	 */
	public static bool replace(ref Caps oldCaps, Caps newCaps)
	{
		GstCaps* outoldCaps = oldCaps.getCapsStruct();

		auto __p = gst_caps_replace(&outoldCaps, (newCaps is null) ? null : newCaps.getCapsStruct()) != 0;

		oldCaps = ObjectG.getDObject!(Caps)(outoldCaps);

		return __p;
	}

	/**
	 * Modifies a pointer to a #GstCaps to point to a different #GstCaps. This
	 * function is similar to gst_caps_replace() except that it takes ownership
	 * of @new_caps.
	 *
	 * Params:
	 *     oldCaps = pointer to a pointer to a #GstCaps to be
	 *         replaced.
	 *     newCaps = pointer to a #GstCaps that will
	 *         replace the caps pointed to by @old_caps.
	 *
	 * Returns: %TRUE if @new_caps was different from @old_caps
	 */
	public static bool take(ref Caps oldCaps, Caps newCaps)
	{
		GstCaps* outoldCaps = oldCaps.getCapsStruct();

		auto __p = gst_caps_take(&outoldCaps, (newCaps is null) ? null : newCaps.getCapsStruct(true)) != 0;

		oldCaps = ObjectG.getDObject!(Caps)(outoldCaps);

		return __p;
	}
}
