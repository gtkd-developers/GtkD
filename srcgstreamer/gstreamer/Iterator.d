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
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gthread.Mutex
 * structWrap:
 * 	- GMutex* -> Mutex
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


private import glib.Str;
private import gthread.Mutex;




/**
 * Description
 * A GstIterator is used to retrieve multiple objects from another object in
 * a threadsafe way.
 * Various GStreamer objects provide access to their internal structures using
 * an iterator.
 * The basic use pattern of an iterator is as follows:
 * $(DDOC_COMMENT example)
 * Last reviewed on 2005-11-09 (0.9.4)
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
	 * masterCookie = pointer to a guint32 to protect the iterated object.
	 * next = function to get next item
	 * item = function to call on each item retrieved
	 * resync = function to resync the iterator
	 * free = function to free the iterator
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (uint size, GType type, Mutex lock, ref uint masterCookie, GstIteratorNextFunction next, GstIteratorItemFunction item, GstIteratorResyncFunction resync, GstIteratorFreeFunction free)
	{
		// GstIterator* gst_iterator_new (guint size,  GType type,  GMutex *lock,  guint32 *master_cookie,  GstIteratorNextFunction next,  GstIteratorItemFunction item,  GstIteratorResyncFunction resync,  GstIteratorFreeFunction free);
		auto p = gst_iterator_new(size, type, (lock is null) ? null : lock.getMutexStruct(), &masterCookie, next, item, resync, free);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_iterator_new(size, type, (lock is null) ? null : lock.getMutexStruct(), &masterCookie, next, item, resync, free)");
		}
		this(cast(GstIterator*) p);
	}
	
	/**
	 * Create a new iterator designed for iterating list.
	 * Params:
	 * type = GType of elements
	 * lock = pointer to a GMutex protecting the list.
	 * masterCookie = pointer to a guint32 to protect the list.
	 * list = pointer to the list
	 * owner = object owning the list
	 * item = function to call for each item
	 * free = function to call when the iterator is freed
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GType type, Mutex lock, uint* masterCookie, GList** list, void* owner, GstIteratorItemFunction item, GstIteratorDisposeFunction free)
	{
		// GstIterator* gst_iterator_new_list (GType type,  GMutex *lock,  guint32 *master_cookie,  GList **list,  gpointer owner,  GstIteratorItemFunction item,  GstIteratorDisposeFunction free);
		auto p = gst_iterator_new_list(type, (lock is null) ? null : lock.getMutexStruct(), masterCookie, list, owner, item, free);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_iterator_new_list(type, (lock is null) ? null : lock.getMutexStruct(), masterCookie, list, owner, item, free)");
		}
		this(cast(GstIterator*) p);
	}
	
	/**
	 * Get the next item from the iterator. For iterators that return
	 * refcounted objects, the returned object will have its refcount
	 * increased and should therefore be unreffed after usage.
	 * Params:
	 * elem = pointer to hold next element
	 * Returns: The result of the iteration. Unref after usage if this is a refcounted object. MT safe.
	 */
	public GstIteratorResult next(void** elem)
	{
		// GstIteratorResult gst_iterator_next (GstIterator *it,  gpointer *elem);
		return gst_iterator_next(gstIterator, elem);
	}
	
	/**
	 * Resync the iterator. this function is mostly called
	 * after gst_iterator_next() returned GST_ITERATOR_RESYNC.
	 * MT safe.
	 */
	public void resync()
	{
		// void gst_iterator_resync (GstIterator *it);
		gst_iterator_resync(gstIterator);
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
	 * Pushes other iterator onto it. All calls performed on it are
	 * forwarded tot other. If other returns GST_ITERATOR_DONE, it is
	 * popped again and calls are handled by it again.
	 * This function is mainly used by objects implementing the iterator
	 * next function to recurse into substructures.
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
	 * func should return 0 for elements that should be included
	 * in the iterator.
	 * When this iterator is freed, it will also be freed.
	 * Params:
	 * func = the compare function to select elements
	 * userData = user data passed to the compare function
	 * Returns: a new GstIterator. MT safe.
	 */
	public Iterator filter(GCompareFunc func, void* userData)
	{
		// GstIterator* gst_iterator_filter (GstIterator *it,  GCompareFunc func,  gpointer user_data);
		auto p = gst_iterator_filter(gstIterator, func, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Folds func over the elements of iter. That is to say, proc will be called
	 * as proc (object, ret, user_data) for each object in iter. The normal use
	 * of this procedure is to accumulate the results of operating on the objects in
	 * ret.
	 * This procedure can be used (and is used internally) to implement the foreach
	 * and find_custom operations.
	 * The fold will proceed as long as func returns TRUE. When the iterator has no
	 * more arguments, GST_ITERATOR_DONE will be returned. If func returns FALSE,
	 * the fold will stop, and GST_ITERATOR_OK will be returned. Errors or resyncs
	 * will cause fold to return GST_ITERATOR_ERROR or GST_ITERATOR_RESYNC as
	 * appropriate.
	 * The iterator will not be freed.
	 * Params:
	 * func = the fold function
	 * ret = the seed value passed to the fold function
	 * userData = user data passed to the fold function
	 * Returns: A GstIteratorResult, as described above. MT safe.
	 */
	public GstIteratorResult fold(GstIteratorFoldFunction func, GValue* ret, void* userData)
	{
		// GstIteratorResult gst_iterator_fold (GstIterator *it,  GstIteratorFoldFunction func,  GValue *ret,  gpointer user_data);
		return gst_iterator_fold(gstIterator, func, ret, userData);
	}
	
	/**
	 * Iterate over all element of it and call the given function func for
	 * each element.
	 * Params:
	 * func = the function to call for each element.
	 * userData = user data passed to the function
	 * Returns: the result call to gst_iterator_fold(). The iterator will not be freed. MT safe.
	 */
	public GstIteratorResult foreac(GFunc func, void* userData)
	{
		// GstIteratorResult gst_iterator_foreach (GstIterator *it,  GFunc func,  gpointer user_data);
		return gst_iterator_foreach(gstIterator, func, userData);
	}
	
	/**
	 * Find the first element in it that matches the compare function func.
	 * func should return 0 when the element is found.
	 * The iterator will not be freed.
	 * This function will return NULL if an error or resync happened to
	 * the iterator.
	 * Params:
	 * func = the compare function to use
	 * userData = user data passed to the compare function
	 * Returns: The element in the iterator that matches the compare function or NULL when no element matched. MT safe.
	 */
	public void* findCustom(GCompareFunc func, void* userData)
	{
		// gpointer gst_iterator_find_custom (GstIterator *it,  GCompareFunc func,  gpointer user_data);
		return gst_iterator_find_custom(gstIterator, func, userData);
	}
}
