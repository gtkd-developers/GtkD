/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = glib-Atomic-Operations.html
 * outPack = glib
 * outFile = Atomic
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Atomic
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_atomic_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module glib.Atomic;

private import gtkc.glibtypes;

private import gtkc.glib;


/**
 * Description
 * The following functions can be used to atomically access integers and
 * pointers. They are implemented as inline assembler function on most
 * platforms and use slower fall-backs otherwise. Using them can sometimes
 * save you from using a performance-expensive GMutex to protect the
 * integer or pointer.
 * The most important usage is reference counting. Using
 * g_atomic_int_inc() and g_atomic_int_dec_and_test() makes reference
 * counting a very fast operation.
 * Note
 * You must not directly read integers or pointers concurrently accessed
 * by multiple threads, but use the atomic accessor functions instead.
 * That is, always use g_atomic_int_get() and g_atomic_pointer_get() for
 * read outs.
 * They provide the neccessary synchonization mechanisms like memory
 * barriers to access memory locations concurrently.
 * Note
 * If you are using those functions for anything apart from simple
 * reference counting, you should really be aware of the implications of
 * doing that. There are literally thousands of ways to shoot yourself in
 * the foot. So if in doubt, use a GMutex. If you don't know, what
 * memory barriers are, do not use anything but g_atomic_int_inc() and
 * g_atomic_int_dec_and_test().
 * Note
 * It is not safe to set an integer or pointer just by assigning to it,
 * when it is concurrently accessed by other threads with the following
 * functions. Use g_atomic_int_compare_and_exchange() or
 * g_atomic_pointer_compare_and_exchange() respectively.
 */
public class Atomic
{
	
	/**
	 */
	
	/**
	 * Reads the value of the integer pointed to by atomic. Also acts as
	 * a memory barrier.
	 * atomic:
	 * a pointer to an integer
	 * Returns:
	 * the value of *atomic
	 * Since 2.4
	 */
	public static int intGet(int* atomic)
	{
		// gint g_atomic_int_get (volatile gint *atomic);
		return g_atomic_int_get(atomic);
	}
	
	/**
	 * Sets the value of the integer pointed to by atomic.
	 * Also acts as a memory barrier.
	 * atomic:
	 * a pointer to an integer
	 * newval:
	 * the new value
	 * Since 2.10
	 */
	public static void intSet(int* atomic, int newval)
	{
		// void g_atomic_int_set (volatile gint *atomic,  gint newval);
		g_atomic_int_set(atomic, newval);
	}
	
	/**
	 * Atomically adds val to the integer pointed to by atomic.
	 * Also acts as a memory barrier.
	 * atomic:
	 * a pointer to an integer.
	 * val:
	 * the value to add to *atomic.
	 * Since 2.4
	 */
	public static void intAdd(int* atomic, int val)
	{
		// void g_atomic_int_add (volatile gint *atomic,  gint val);
		g_atomic_int_add(atomic, val);
	}
	
	/**
	 * Atomically adds val to the integer pointed to by atomic. It returns
	 * the value of *atomic just before the addition took place.
	 * Also acts as a memory barrier.
	 * atomic:
	 * a pointer to an integer.
	 * val:
	 * the value to add to *atomic.
	 * Returns:
	 * the value of *atomic before the addition.
	 * Since 2.4
	 */
	public static int intExchangeAndAdd(int* atomic, int val)
	{
		// gint g_atomic_int_exchange_and_add (volatile gint *atomic,  gint val);
		return g_atomic_int_exchange_and_add(atomic, val);
	}
	
	/**
	 * Compares oldval with the integer pointed to by atomic and
	 * if they are equal, atomically exchanges *atomic with newval.
	 * Also acts as a memory barrier.
	 * atomic:
	 * a pointer to an integer.
	 * oldval:
	 * the assumed old value of *atomic.
	 * newval:
	 * the new value of *atomic.
	 * Returns:
	 * TRUE, if *atomic was equal oldval. FALSE otherwise.
	 * Since 2.4
	 */
	public static int intCompareAndExchange(int* atomic, int oldval, int newval)
	{
		// gboolean g_atomic_int_compare_and_exchange  (volatile gint *atomic,  gint oldval,  gint newval);
		return g_atomic_int_compare_and_exchange(atomic, oldval, newval);
	}
	
	/**
	 * Reads the value of the pointer pointed to by atomic. Also acts as
	 * a memory barrier.
	 * atomic:
	 * a pointer to a gpointer.
	 * Returns:
	 * the value to add to *atomic.
	 * Since 2.4
	 */
	public static void* pointerGet(void** atomic)
	{
		// gpointer g_atomic_pointer_get (volatile gpointer *atomic);
		return g_atomic_pointer_get(atomic);
	}
	
	/**
	 * Sets the value of the pointer pointed to by atomic.
	 * Also acts as a memory barrier.
	 * atomic:
	 * a pointer to a gpointer
	 * newval:
	 * the new value
	 * Since 2.10
	 */
	public static void pointerSet(void** atomic, void* newval)
	{
		// void g_atomic_pointer_set (volatile gpointer *atomic,  gpointer newval);
		g_atomic_pointer_set(atomic, newval);
	}
	
	/**
	 * Compares oldval with the pointer pointed to by atomic and
	 * if they are equal, atomically exchanges *atomic with newval.
	 * Also acts as a memory barrier.
	 * atomic:
	 * a pointer to a gpointer.
	 * oldval:
	 * the assumed old value of *atomic.
	 * newval:
	 * the new value of *atomic.
	 * Returns:
	 * TRUE, if *atomic was equal oldval. FALSE otherwise.
	 * Since 2.4
	 */
	public static int pointerCompareAndExchange(void** atomic, void* oldval, void* newval)
	{
		// gboolean g_atomic_pointer_compare_and_exchange  (volatile gpointer *atomic,  gpointer oldval,  gpointer newval);
		return g_atomic_pointer_compare_and_exchange(atomic, oldval, newval);
	}
	
	/**
	 * Atomically increments the integer pointed to by atomic by 1.
	 * atomic:
	 * a pointer to an integer.
	 * Since 2.4
	 */
	public static void intInc(int* atomic)
	{
		// void g_atomic_int_inc (gint *atomic);
		g_atomic_int_inc(atomic);
	}
	
	/**
	 * Atomically decrements the integer pointed to by atomic by 1.
	 * atomic:
	 * a pointer to an integer.
	 * Returns:
	 * TRUE, if the integer pointed to by atomic is 0 after
	 * decrementing it.
	 * Since 2.4
	 * See Also
	 * GMutex
	 * GLib mutual exclusions.
	 */
	public static int intDecAndTest(int* atomic)
	{
		// gboolean g_atomic_int_dec_and_test (gint *atomic);
		return g_atomic_int_dec_and_test(atomic);
	}
}
