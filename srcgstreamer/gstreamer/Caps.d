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
 * inFile  = gstreamer-GstCaps.html
 * outPack = gstreamer
 * outFile = Caps
 * strct   = GstCaps
 * realStrct=
 * ctorStrct=
 * clss    = Caps
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_caps_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_caps_save_thyself
 * 	- gst_caps_load_thyself
 * 	- gst_caps_new_any
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Structure
 * structWrap:
 * 	- GstCaps* -> Caps
 * 	- GstStructure* -> Structure
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gstreamer.Caps;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gstreamer.Structure;




/**
 * Description
 * Caps (capabilities) are lighweight refcounted objects describing media types.
 * They are composed of an array of GstStructure.
 * Caps are exposed on GstPadTemplate to describe all possible types a
 * given pad can handle. They are also stored in the GstRegistry along with
 * a description of the GstElement.
 * Caps are exposed on the element pads using the gst_pad_get_caps() pad
 * function. This function describes the possible types that the pad can
 * handle or produce at runtime.
 * Caps are also attached to buffers to describe to content of the data
 * pointed to by the buffer with gst_buffer_set_caps(). Caps attached to
 * a GstBuffer allow for format negotiation upstream and downstream.
 * A GstCaps can be constructed with the following code fragment:
 * $(DDOC_COMMENT example)
 * A GstCaps is fixed when it has no properties with ranges or lists. Use
 * gst_caps_is_fixed() to test for fixed caps. Only fixed caps can be
 * set on a GstPad or GstBuffer.
 * Various methods exist to work with the media types such as subtracting
 * or intersecting.
 * Last reviewed on 2007-02-13 (0.10.10)
 */
public class Caps
{
	
	/** the main Gtk struct */
	protected GstCaps* gstCaps;
	
	
	public GstCaps* getCapsStruct()
	{
		return gstCaps;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstCaps;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstCaps* gstCaps)
	{
		this.gstCaps = gstCaps;
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
		
		return new Caps(cast(GstCaps*)p );
	}
	
	/**
	 */
	
	/**
	 * Creates a new GstCaps that is empty. That is, the returned
	 * GstCaps contains no media formats.
	 * Caller is responsible for unreffing the returned caps.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstCaps* gst_caps_new_empty (void);
		auto p = gst_caps_new_empty();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_caps_new_empty()");
		}
		this(cast(GstCaps*) p);
	}
	
	/**
	 * Creates a new GstCaps and adds all the structures listed as
	 * arguments. The list must be NULL-terminated. The structures
	 * are not copied; the returned GstCaps owns the structures.
	 * Params:
	 * structure = the first structure to add
	 * varArgs = additional structures to add
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Structure structure, void* varArgs)
	{
		// GstCaps* gst_caps_new_full_valist (GstStructure *structure,  va_list var_args);
		auto p = gst_caps_new_full_valist((structure is null) ? null : structure.getStructureStruct(), varArgs);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_caps_new_full_valist((structure is null) ? null : structure.getStructureStruct(), varArgs)");
		}
		this(cast(GstCaps*) p);
	}
	
	/**
	 * Creates a new GstCaps as a copy of the old caps. The new caps will have a
	 * refcount of 1, owned by the caller. The structures are copied as well.
	 * Note that this function is the semantic equivalent of a gst_caps_ref()
	 * followed by a gst_caps_make_writable(). If you only want to hold on to a
	 * reference to the data, you should use gst_caps_ref().
	 * When you are finished with the caps, call gst_caps_unref() on it.
	 * Returns: the new GstCaps
	 */
	public Caps copy()
	{
		// GstCaps* gst_caps_copy (const GstCaps *caps);
		auto p = gst_caps_copy(gstCaps);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Creates a new GstCaps and appends a copy of the nth structure
	 * contained in caps.
	 * Params:
	 * nth = the nth structure to copy
	 * Returns: the new GstCaps
	 */
	public Caps copyNth(uint nth)
	{
		// GstCaps* gst_caps_copy_nth (const GstCaps *caps,  guint nth);
		auto p = gst_caps_copy_nth(gstCaps, nth);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Converts a GstStaticCaps to a GstCaps.
	 * Params:
	 * staticCaps = the GstStaticCaps to convert
	 * Returns: A pointer to the GstCaps. Unref after usage. Since the core holds an additional ref to the returned caps, use gst_caps_make_writable() on the returned caps to modify it.
	 */
	public static Caps staticCapsGet(GstStaticCaps* staticCaps)
	{
		// GstCaps* gst_static_caps_get (GstStaticCaps *static_caps);
		auto p = gst_static_caps_get(staticCaps);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Appends the structures contained in caps2 to caps1. The structures in
	 * caps2 are not copied -- they are transferred to caps1, and then caps2 is
	 * freed. If either caps is ANY, the resulting caps will be ANY.
	 * Params:
	 * caps2 = the GstCaps to append
	 */
	public void append(Caps caps2)
	{
		// void gst_caps_append (GstCaps *caps1,  GstCaps *caps2);
		gst_caps_append(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct());
	}
	
	/**
	 * Appends the structures contained in caps2 to caps1 if they are not yet
	 * expressed by caps1. The structures in caps2 are not copied -- they are
	 * transferred to caps1, and then caps2 is freed.
	 * If either caps is ANY, the resulting caps will be ANY.
	 * Params:
	 * caps2 = the GstCaps to merge in
	 * Since 0.10.10
	 */
	public void merge(Caps caps2)
	{
		// void gst_caps_merge (GstCaps *caps1,  GstCaps *caps2);
		gst_caps_merge(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct());
	}
	
	/**
	 * Appends structure to caps. The structure is not copied; caps
	 * becomes the owner of structure.
	 * Params:
	 * structure = the GstStructure to append
	 */
	public void appendStructure(Structure structure)
	{
		// void gst_caps_append_structure (GstCaps *caps,  GstStructure *structure);
		gst_caps_append_structure(gstCaps, (structure is null) ? null : structure.getStructureStruct());
	}
	
	/**
	 * removes the stucture with the given index from the list of structures
	 * contained in caps.
	 * Params:
	 * idx = Index of the structure to remove
	 */
	public void removeStructure(uint idx)
	{
		// void gst_caps_remove_structure (GstCaps *caps,  guint idx);
		gst_caps_remove_structure(gstCaps, idx);
	}
	
	/**
	 * Appends structure to caps if its not already expressed by caps. The
	 * structure is not copied; caps becomes the owner of structure.
	 * Params:
	 * structure = the GstStructure to merge
	 */
	public void mergeStructure(Structure structure)
	{
		// void gst_caps_merge_structure (GstCaps *caps,  GstStructure *structure);
		gst_caps_merge_structure(gstCaps, (structure is null) ? null : structure.getStructureStruct());
	}
	
	/**
	 * Gets the number of structures contained in caps.
	 * Returns: the number of structures that caps contains
	 */
	public uint getSize()
	{
		// guint gst_caps_get_size (const GstCaps *caps);
		return gst_caps_get_size(gstCaps);
	}
	
	/**
	 * Finds the structure in caps that has the index index, and
	 * returns it.
	 * WARNING: This function takes a const GstCaps *, but returns a
	 * non-const GstStructure *. This is for programming convenience --
	 * the caller should be aware that structures inside a constant
	 * GstCaps should not be modified.
	 * Params:
	 * index = the index of the structure
	 * Returns: a pointer to the GstStructure corresponding to index
	 */
	public Structure getStructure(uint index)
	{
		// GstStructure* gst_caps_get_structure (const GstCaps *caps,  guint index);
		auto p = gst_caps_get_structure(gstCaps, index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Sets fields in a simple GstCaps. A simple GstCaps is one that
	 * only has one structure. The arguments must be passed in the same
	 * manner as gst_structure_set(), and be NULL-terminated.
	 * Params:
	 * field = first field to set
	 * varargs = additional parameters
	 */
	public void setSimpleValist(string field, void* varargs)
	{
		// void gst_caps_set_simple_valist (GstCaps *caps,  char *field,  va_list varargs);
		gst_caps_set_simple_valist(gstCaps, Str.toStringz(field), varargs);
	}
	
	/**
	 * Determines if caps represents any media format.
	 * Returns: TRUE if caps represents any format.
	 */
	public int isAny()
	{
		// gboolean gst_caps_is_any (const GstCaps *caps);
		return gst_caps_is_any(gstCaps);
	}
	
	/**
	 * Determines if caps represents no media formats.
	 * Returns: TRUE if caps represents no formats.
	 */
	public int isEmpty()
	{
		// gboolean gst_caps_is_empty (const GstCaps *caps);
		return gst_caps_is_empty(gstCaps);
	}
	
	/**
	 * Fixed GstCaps describe exactly one format, that is, they have exactly
	 * one structure, and each field in the structure describes a fixed type.
	 * Examples of non-fixed types are GST_TYPE_INT_RANGE and GST_TYPE_LIST.
	 * Returns: TRUE if caps is fixed
	 */
	public int isFixed()
	{
		// gboolean gst_caps_is_fixed (const GstCaps *caps);
		return gst_caps_is_fixed(gstCaps);
	}
	
	/**
	 * Checks if the given caps represent the same set of caps.
	 * Note
	 * This function does not work reliably if optional properties for caps
	 * are included on one caps and omitted on the other.
	 * This function deals correctly with passing NULL for any of the caps.
	 * Params:
	 * caps2 = another GstCaps
	 * Returns: TRUE if both caps are equal.
	 */
	public int isEqual(Caps caps2)
	{
		// gboolean gst_caps_is_equal (const GstCaps *caps1,  const GstCaps *caps2);
		return gst_caps_is_equal(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct());
	}
	
	/**
	 * Tests if two GstCaps are equal. This function only works on fixed
	 * GstCaps.
	 * Params:
	 * caps2 = the GstCaps to test
	 * Returns: TRUE if the arguments represent the same format
	 */
	public int isEqualFixed(Caps caps2)
	{
		// gboolean gst_caps_is_equal_fixed (const GstCaps *caps1,  const GstCaps *caps2);
		return gst_caps_is_equal_fixed(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct());
	}
	
	/**
	 * A given GstCaps structure is always compatible with another if
	 * every media format that is in the first is also contained in the
	 * second. That is, caps1 is a subset of caps2.
	 * Params:
	 * caps2 = the GstCaps to test
	 * Returns: TRUE if caps1 is a subset of caps2.
	 */
	public int isAlwaysCompatible(Caps caps2)
	{
		// gboolean gst_caps_is_always_compatible (const GstCaps *caps1,  const GstCaps *caps2);
		return gst_caps_is_always_compatible(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct());
	}
	
	/**
	 * Checks if all caps represented by subset are also represented by superset.
	 * Note
	 * This function does not work reliably if optional properties for caps
	 * are included on one caps and omitted on the other.
	 * Params:
	 * superset = a potentially greater GstCaps
	 * Returns: TRUE if subset is a subset of superset
	 */
	public int isSubset(Caps superset)
	{
		// gboolean gst_caps_is_subset (const GstCaps *subset,  const GstCaps *superset);
		return gst_caps_is_subset(gstCaps, (superset is null) ? null : superset.getCapsStruct());
	}
	
	/**
	 * Creates a new GstCaps that contains all the formats that are common
	 * to both caps1 and caps2.
	 * Params:
	 * caps2 = a GstCaps to intersect
	 * Returns: the new GstCaps
	 */
	public Caps intersect(Caps caps2)
	{
		// GstCaps* gst_caps_intersect (const GstCaps *caps1,  const GstCaps *caps2);
		auto p = gst_caps_intersect(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Creates a new GstCaps that contains all the formats that are in
	 * either caps1 and caps2.
	 * Params:
	 * caps2 = a GstCaps to union
	 * Returns: the new GstCaps
	 */
	public Caps unio(Caps caps2)
	{
		// GstCaps* gst_caps_union (const GstCaps *caps1,  const GstCaps *caps2);
		auto p = gst_caps_union(gstCaps, (caps2 is null) ? null : caps2.getCapsStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Creates a new GstCaps that represents the same set of formats as
	 * caps, but contains no lists. Each list is expanded into separate
	 * GstStructures.
	 * Returns: the new GstCaps
	 */
	public Caps normalize()
	{
		// GstCaps* gst_caps_normalize (const GstCaps *caps);
		auto p = gst_caps_normalize(gstCaps);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Modifies the given caps inplace into a representation that represents the
	 * same set of formats, but in a simpler form. Component structures that are
	 * identical are merged. Component structures that have values that can be
	 * merged are also merged.
	 * Returns: TRUE, if the caps could be simplified
	 */
	public int doSimplify()
	{
		// gboolean gst_caps_do_simplify (GstCaps *caps);
		return gst_caps_do_simplify(gstCaps);
	}
	
	/**
	 * Replaces *caps with newcaps. Unrefs the GstCaps in the location
	 * pointed to by caps, if applicable, then modifies caps to point to
	 * newcaps. An additional ref on newcaps is taken.
	 * This function does not take any locks so you might want to lock
	 * the object owning caps pointer.
	 * Params:
	 * caps = a pointer to GstCaps
	 * newcaps = a GstCaps to replace *caps
	 */
	public static void replace(ref Caps caps, Caps newcaps)
	{
		// void gst_caps_replace (GstCaps **caps,  GstCaps *newcaps);
		GstCaps* outcaps = (caps is null) ? null : caps.getCapsStruct();
		
		gst_caps_replace(&outcaps, (newcaps is null) ? null : newcaps.getCapsStruct());
		
		caps = ObjectG.getDObject!(Caps)(outcaps);
	}
	
	/**
	 * Converts caps to a string representation. This string representation
	 * can be converted back to a GstCaps by gst_caps_from_string().
	 * Returns: a newly allocated string representing caps.
	 */
	public override string toString()
	{
		// gchar* gst_caps_to_string (const GstCaps *caps);
		return Str.toString(gst_caps_to_string(gstCaps));
	}
	
	/**
	 * Converts caps from a string representation.
	 * Params:
	 * string = a string to convert to GstCaps
	 * Returns: a newly allocated GstCaps
	 */
	public static Caps fromString(string string)
	{
		// GstCaps* gst_caps_from_string (const gchar *string);
		auto p = gst_caps_from_string(Str.toStringz(string));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Subtracts the subtrahend from the minuend.
	 * Note
	 * This function does not work reliably if optional properties for caps
	 * are included on one caps and omitted on the other.
	 * Params:
	 * subtrahend = GstCaps to substract
	 * Returns: the resulting caps
	 */
	public Caps subtract(Caps subtrahend)
	{
		// GstCaps* gst_caps_subtract (const GstCaps *minuend,  const GstCaps *subtrahend);
		auto p = gst_caps_subtract(gstCaps, (subtrahend is null) ? null : subtrahend.getCapsStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Returns a writable copy of caps.
	 * If there is only one reference count on caps, the caller must be the owner,
	 * and so this function will return the caps object unchanged. If on the other
	 * hand there is more than one reference on the object, a new caps object will
	 * be returned. The caller's reference on caps will be removed, and instead the
	 * caller will own a reference to the returned object.
	 * In short, this function unrefs the caps in the argument and refs the caps
	 * that it returns. Don't access the argument after calling this function. See
	 * also: gst_caps_ref().
	 * Returns: the same GstCaps object.
	 */
	public Caps makeWritable()
	{
		// GstCaps* gst_caps_make_writable (GstCaps *caps);
		auto p = gst_caps_make_writable(gstCaps);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Add a reference to a GstCaps object.
	 * From this point on, until the caller calls gst_caps_unref() or
	 * gst_caps_make_writable(), it is guaranteed that the caps object will not
	 * change. This means its structures won't change, etc. To use a GstCaps
	 * object, you must always have a refcount on it -- either the one made
	 * implicitly by gst_caps_new(), or via taking one explicitly with this
	 * function.
	 * Returns: the same GstCaps object.
	 */
	public Caps doref()
	{
		// GstCaps* gst_caps_ref (GstCaps *caps);
		auto p = gst_caps_ref(gstCaps);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Destructively discard all but the first structure from caps. Useful when
	 * fixating. caps must be writable.
	 */
	public void truncate()
	{
		// void gst_caps_truncate (GstCaps *caps);
		gst_caps_truncate(gstCaps);
	}
	
	/**
	 * Unref a GstCaps and and free all its structures and the
	 * structures' values when the refcount reaches 0.
	 */
	public void unref()
	{
		// void gst_caps_unref (GstCaps *caps);
		gst_caps_unref(gstCaps);
	}
}
