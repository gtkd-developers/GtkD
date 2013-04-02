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
 * inFile  = gstreamer-GstIterator.html
 * outPack = gstreamer
 * outFile = Iterator
 * strct   = GstIterator
 * realStrct=
 * ctorStrct=
 * clss    = Iterator
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_iterator_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * 	- gthread.Mutex
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * structWrap:
 * 	- GList* -> ListG
 * 	- GMutex* -> Mutex
 * 	- GObject* -> ObjectG
 * 	- GValue* -> Value
 * 	- GstIterator* -> Iterator
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Iterator;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ListG;
private import gthread.Mutex;
private import gobject.ObjectG;
private import gobject.Value;




/**
 * A GstIterator is used to retrieve multiple objects from another object in
 * a threadsafe way.
 *
 * Various GStreamer objects provide access to their internal structures using
 * an iterator.
 *
 * In general, whenever calling a GstIterator function results in your code
 * receiving a refcounted object, the refcount for that object will have been
 * increased. Your code is responsible for unrefing that object after use.
 *
 * The basic use pattern of an iterator is as follows:
 *
 * $(DDOC_COMMENT example)
 *
 * Last reviewed on 2009-06-16 (0.10.24)
 */
public class Iterator
{
	
	/** the main Gtk struct */
	protected GstIterator* gstIterator;
	
	
	public GstIterator* getIteratorStruct()
	{
		return gstIterator;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstIterator;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstIterator* gstIterator)
	{
		this.gstIterator = gstIterator;
	}
	
	/**
	 */
	
	/**
	 * Create a new iterator. This function is mainly used for objects
	 * implementing the next/resync/free function to iterate a data structure.
	 * For each item retrieved, the item function is called with the lock
	 * held. The free function is called when the iterator is freed.
	 * Params:
	 * size = the size of the iterator structure
	 * type = GType of children
	 * lock = pointer to a GMutex.
	 * masterCookie = pointer to a guint32 that is changed when the items in the
	 * iterator changed.
	 * copy = copy function
	 * next = function to get next item
	 * item = function to call on each item retrieved
	 * resync = function to resync the iterator
	 * free = function to free the iterator
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (uint size, GType type, Mutex lock, ref uint masterCookie, GstIteratorCopyFunction copy, GstIteratorNextFunction next, GstIteratorItemFunction item, GstIteratorResyncFunction resync, GstIteratorFreeFunction free)
	{
		// GstIterator * gst_iterator_new (guint size,  GType type,  GMutex *lock,  guint32 *master_cookie,  GstIteratorCopyFunction copy,  GstIteratorNextFunction next,  GstIteratorItemFunction item,  GstIteratorResyncFunction resync,  GstIteratorFreeFunction free);
		auto p = gst_iterator_new(size, type, (lock is null) ? null : lock.getMutexStruct(), &masterCookie, copy, next, item, resync, free);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_iterator_new(size, type, (lock is null) ? null : lock.getMutexStruct(), &masterCookie, copy, next, item, resync, free)");
		}
		this(cast(GstIterator*) p);
	}
	
	/**
	 * Create a new iterator designed for iterating list.
	 * The list you iterate is usually part of a data structure owner and is
	 * protected with lock.
	 * The iterator will use lock to retrieve the next item of the list and it
	 * will then call the item function before releasing lock again.
	 * When a concurrent update to the list is performed, usually by owner while
	 * holding lock, master_cookie will be updated. The iterator implementation
	 * will notice the update of the cookie and will return GST_ITERATOR_RESYNC to
	 * the user of the iterator in the next call to gst_iterator_next().
	 * Params:
	 * type = GType of elements
	 * lock = pointer to a GMutex protecting the list.
	 * masterCookie = pointer to a guint32 that is incremented when the list
	 * is changed.
	 * list = pointer to the list
	 * owner = object owning the list
	 * item = function to call on each item retrieved
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GType type, Mutex lock, uint* masterCookie, ref ListG list, ObjectG owner, GstIteratorItemFunction item)
	{
		// GstIterator * gst_iterator_new_list (GType type,  GMutex *lock,  guint32 *master_cookie,  GList **list,  GObject *owner,  GstIteratorItemFunction item);
		GList* outlist = (list is null) ? null : list.getListGStruct();
		
		auto p = gst_iterator_new_list(type, (lock is null) ? null : lock.getMutexStruct(), masterCookie, &outlist, (owner is null) ? null : owner.getObjectGStruct(), item);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_iterator_new_list(type, (lock is null) ? null : lock.getMutexStruct(), masterCookie, &outlist, (owner is null) ? null : owner.getObjectGStruct(), item)");
		}
		
		list = ObjectG.getDObject!(ListG)(outlist);
		this(cast(GstIterator*) p);
	}
	
	/**
	 * This GstIterator is a convenient iterator for the common
	 * case where a GstIterator needs to be returned but only
	 * a single object has to be considered. This happens often
	 * for the GstPadIterIntLinkFunction.
	 * Params:
	 * type = GType of the passed object
	 * object = object that this iterator should return
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GType type, Value object)
	{
		// GstIterator * gst_iterator_new_single (GType type,  const GValue *object);
		auto p = gst_iterator_new_single(type, (object is null) ? null : object.getValueStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_iterator_new_single(type, (object is null) ? null : object.getValueStruct())");
		}
		this(cast(GstIterator*) p);
	}
	
	/**
	 * Copy the iterator and its state.
	 * Returns: a new copy of it.
	 */
	public Iterator copy()
	{
		// GstIterator * gst_iterator_copy (const GstIterator *it);
		auto p = gst_iterator_copy(gstIterator);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Free the iterator.
	 * MT safe.
	 */
	public void free()
	{
		// void gst_iterator_free (GstIterator *it);
		gst_iterator_free(gstIterator);
	}
	
	/**
	 * Get the next item from the iterator in elem.
	 * Only when this function returns GST_ITERATOR_OK, elem will contain a valid
	 * value. elem must have been initialized to the type of the iterator or
	 * initialized to zeroes with g_value_unset(). The caller is responsible for
	 * unsetting or resetting elem with g_value_unset() or g_value_reset()
	 * after usage.
	 * When this function returns GST_ITERATOR_DONE, no more elements can be
	 * retrieved from it.
	 * A return value of GST_ITERATOR_RESYNC indicates that the element list was
	 * concurrently updated. The user of it should call gst_iterator_resync() to
	 * get the newly updated list.
	 * A return value of GST_ITERATOR_ERROR indicates an unrecoverable fatal error.
	 * Params:
	 * elem = pointer to hold next element. [out caller-allocates]
	 * Returns: The result of the iteration. Unset elem after usage. MT safe.
	 */
	public GstIteratorResult next(Value elem)
	{
		// GstIteratorResult gst_iterator_next (GstIterator *it,  GValue *elem);
		return gst_iterator_next(gstIterator, (elem is null) ? null : elem.getValueStruct());
	}
	
	/**
	 * Resync the iterator. this function is mostly called
	 * after gst_iterator_next() returned GST_ITERATOR_RESYNC.
	 * When an iterator was pushed on it, it will automatically be popped again
	 * with this function.
	 * MT safe.
	 */
	public void resync()
	{
		// void gst_iterator_resync (GstIterator *it);
		gst_iterator_resync(gstIterator);
	}
	
	/**
	 * Pushes other iterator onto it. All calls performed on it are
	 * forwarded to other. If other returns GST_ITERATOR_DONE, it is
	 * popped again and calls are handled by it again.
	 * This function is mainly used by objects implementing the iterator
	 * next function to recurse into substructures.
	 * When gst_iterator_resync() is called on it, other will automatically be
	 * popped.
	 * MT safe.
	 * Params:
	 * other = The GstIterator to push
	 */
	public void push(Iterator other)
	{
		// void gst_iterator_push (GstIterator *it,  GstIterator *other);
		gst_iterator_push(gstIterator, (other is null) ? null : other.getIteratorStruct());
	}
	
	/**
	 * Create a new iterator from an existing iterator. The new iterator
	 * will only return those elements that match the given compare function func.
	 * The first parameter that is passed to func is the GValue of the current
	 * iterator element and the second parameter is user_data. func should
	 * return 0 for elements that should be included in the filtered iterator.
	 * When this iterator is freed, it will also be freed.
	 * Params:
	 * func = the compare function to select elements. [scope call]
	 * userData = user data passed to the compare function. [closure]
	 * Returns: a new GstIterator. MT safe. [transfer full]
	 */
	public Iterator filter(GCompareFunc func, Value userData)
	{
		// GstIterator * gst_iterator_filter (GstIterator *it,  GCompareFunc func,  const GValue *user_data);
		auto p = gst_iterator_filter(gstIterator, func, (userData is null) ? null : userData.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Folds func over the elements of iter. That is to say, func will be called
	 * as func (object, ret, user_data) for each object in it. The normal use
	 * of this procedure is to accumulate the results of operating on the objects in
	 * ret.
	 * This procedure can be used (and is used internally) to implement the
	 * gst_iterator_foreach() and gst_iterator_find_custom() operations.
	 * The fold will proceed as long as func returns TRUE. When the iterator has no
	 * more arguments, GST_ITERATOR_DONE will be returned. If func returns FALSE,
	 * the fold will stop, and GST_ITERATOR_OK will be returned. Errors or resyncs
	 * will cause fold to return GST_ITERATOR_ERROR or GST_ITERATOR_RESYNC as
	 * appropriate.
	 * The iterator will not be freed.
	 * Params:
	 * func = the fold function. [scope call]
	 * ret = the seed value passed to the fold function
	 * userData = user data passed to the fold function. [closure]
	 * Returns: A GstIteratorResult, as described above. MT safe.
	 */
	public GstIteratorResult fold(GstIteratorFoldFunction func, Value ret, void* userData)
	{
		// GstIteratorResult gst_iterator_fold (GstIterator *it,  GstIteratorFoldFunction func,  GValue *ret,  gpointer user_data);
		return gst_iterator_fold(gstIterator, func, (ret is null) ? null : ret.getValueStruct(), userData);
	}
	
	/**
	 * Iterate over all element of it and call the given function func for
	 * each element.
	 * Params:
	 * func = the function to call for each element. [scope call]
	 * userData = user data passed to the function. [closure]
	 * Returns: the result call to gst_iterator_fold(). The iterator will not be freed. MT safe.
	 */
	public GstIteratorResult foreac(GstIteratorForeachFunction func, void* userData)
	{
		// GstIteratorResult gst_iterator_foreach (GstIterator *it,  GstIteratorForeachFunction func,  gpointer user_data);
		return gst_iterator_foreach(gstIterator, func, userData);
	}
	
	/**
	 * Find the first element in it that matches the compare function func.
	 * func should return 0 when the element is found. The first parameter
	 * to func will be the current element of the iterator and the
	 * second parameter will be user_data.
	 * The result will be stored in elem if a result is found.
	 * The iterator will not be freed.
	 * This function will return FALSE if an error happened to the iterator
	 * or if the element wasn't found.
	 * Params:
	 * func = the compare function to use. [scope call]
	 * elem = pointer to a GValue where to store the result. [out]
	 * userData = user data passed to the compare function. [closure]
	 * Returns: Returns TRUE if the element was found, else FALSE. MT safe.
	 */
	public int findCustom(GCompareFunc func, Value elem, void* userData)
	{
		// gboolean gst_iterator_find_custom (GstIterator *it,  GCompareFunc func,  GValue *elem,  gpointer user_data);
		return gst_iterator_find_custom(gstIterator, func, (elem is null) ? null : elem.getValueStruct(), userData);
	}
}
