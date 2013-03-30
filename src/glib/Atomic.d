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
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Atomic;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;






/**
 * The following is a collection of compiler macros to provide atomic
 * access to integer and pointer-sized values.
 *
 * The macros that have 'int' in the name will operate on pointers to
 * gint and guint. The macros with 'pointer' in the name will operate
 * on pointers to any pointer-sized value, including gsize. There is
 * no support for 64bit operations on platforms with 32bit pointers
 * because it is not generally possible to perform these operations
 * atomically.
 *
 * The get, set and exchange operations for integers and pointers
 * nominally operate on gint and gpointer, respectively. Of the
 * arithmetic operations, the 'add' operation operates on (and returns)
 * signed integer values (gint and gssize) and the 'and', 'or', and
 * 'xor' operations operate on (and return) unsigned integer values
 * (guint and gsize).
 *
 * All of the operations act as a full compiler and (where appropriate)
 * hardware memory barrier. Acquire and release or producer and
 * consumer barrier semantics are not available through this API.
 *
 * It is very important that all accesses to a particular integer or
 * pointer be performed using only this API and that different sizes of
 * operation are not mixed or used on overlapping memory regions. Never
 * read or assign directly from or to a value -- always use this API.
 *
 * For simple reference counting purposes you should use
 * g_atomic_int_inc() and g_atomic_int_dec_and_test(). Other uses that
 * fall outside of simple reference counting patterns are prone to
 * subtle bugs and occasionally undefined behaviour. It is also worth
 * noting that since all of these operations require global
 * synchronisation of the entire machine, they can be quite slow. In
 * the case of performing multiple atomic operations it can often be
 * faster to simply acquire a mutex lock around the critical area,
 * perform the operations normally and then release the lock.
 */
public class Atomic
{
	
	/**
	 */
	
	/**
	 * Gets the current value of atomic.
	 * This call acts as a full compiler and hardware
	 * memory barrier (before the get).
	 * Since 2.4
	 * Params:
	 * atomic = a pointer to a gint or guint
	 * Returns: the value of the integer
	 */
	public static int intGet(int* atomic)
	{
		// gint g_atomic_int_get (const volatile gint *atomic);
		return g_atomic_int_get(atomic);
	}
	
	/**
	 * Sets the value of atomic to newval.
	 * This call acts as a full compiler and hardware
	 * memory barrier (after the set).
	 * Since 2.4
	 * Params:
	 * atomic = a pointer to a gint or guint
	 * newval = a new value to store
	 */
	public static void intSet(int* atomic, int newval)
	{
		// void g_atomic_int_set (volatile gint *atomic,  gint newval);
		g_atomic_int_set(atomic, newval);
	}
	
	/**
	 * Increments the value of atomic by 1.
	 * Think of this operation as an atomic version of
	 * { *atomic += 1; }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Since 2.4
	 * Params:
	 * atomic = a pointer to a gint or guint
	 */
	public static void intInc(int* atomic)
	{
		// void g_atomic_int_inc (gint *atomic);
		g_atomic_int_inc(atomic);
	}
	
	/**
	 * Decrements the value of atomic by 1.
	 * Think of this operation as an atomic version of
	 * { *atomic -= 1; return (*atomic == 0); }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Since 2.4
	 * Params:
	 * atomic = a pointer to a gint or guint
	 * Returns: TRUE if the resultant value is zero
	 */
	public static int intDecAndTest(int* atomic)
	{
		// gboolean g_atomic_int_dec_and_test (gint *atomic);
		return g_atomic_int_dec_and_test(atomic);
	}
	
	/**
	 * Compares atomic to oldval and, if equal, sets it to newval.
	 * If atomic was not equal to oldval then no change occurs.
	 * This compare and exchange is done atomically.
	 * Think of this operation as an atomic version of
	 * { if (*atomic == oldval) { *atomic = newval; return TRUE; } else return FALSE; }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Since 2.4
	 * Params:
	 * atomic = a pointer to a gint or guint
	 * oldval = the value to compare with
	 * newval = the value to conditionally replace with
	 * Returns: TRUE if the exchange took place
	 */
	public static int intCompareAndExchange(int* atomic, int oldval, int newval)
	{
		// gboolean g_atomic_int_compare_and_exchange (volatile gint *atomic,  gint oldval,  gint newval);
		return g_atomic_int_compare_and_exchange(atomic, oldval, newval);
	}
	
	/**
	 * Atomically adds val to the value of atomic.
	 * Think of this operation as an atomic version of
	 * { tmp = *atomic; *atomic += val; return tmp; }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Before version 2.30, this function did not return a value
	 * (but g_atomic_int_exchange_and_add() did, and had the same meaning).
	 * Since 2.4
	 * Params:
	 * atomic = a pointer to a gint or guint
	 * val = the value to add
	 * Returns: the value of atomic before the add, signed
	 */
	public static int intAdd(int* atomic, int val)
	{
		// gint g_atomic_int_add (volatile gint *atomic,  gint val);
		return g_atomic_int_add(atomic, val);
	}
	
	/**
	 * Performs an atomic bitwise 'and' of the value of atomic and val,
	 * storing the result back in atomic.
	 * This call acts as a full compiler and hardware memory barrier.
	 * Think of this operation as an atomic version of
	 * { tmp = *atomic; *atomic = val; return tmp; }
	 * Since 2.30
	 * Params:
	 * atomic = a pointer to a gint or guint
	 * val = the value to 'and'
	 * Returns: the value of atomic before the operation, unsigned
	 */
	public static uint intAnd(uint* atomic, uint val)
	{
		// guint g_atomic_int_and (volatile guint *atomic,  guint val);
		return g_atomic_int_and(atomic, val);
	}
	
	/**
	 * Performs an atomic bitwise 'or' of the value of atomic and val,
	 * storing the result back in atomic.
	 * Think of this operation as an atomic version of
	 * { tmp = *atomic; *atomic |= val; return tmp; }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Since 2.30
	 * Params:
	 * atomic = a pointer to a gint or guint
	 * val = the value to 'or'
	 * Returns: the value of atomic before the operation, unsigned
	 */
	public static uint intOr(uint* atomic, uint val)
	{
		// guint g_atomic_int_or (volatile guint *atomic,  guint val);
		return g_atomic_int_or(atomic, val);
	}
	
	/**
	 * Performs an atomic bitwise 'xor' of the value of atomic and val,
	 * storing the result back in atomic.
	 * Think of this operation as an atomic version of
	 * { tmp = *atomic; *atomic ^= val; return tmp; }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Since 2.30
	 * Params:
	 * atomic = a pointer to a gint or guint
	 * val = the value to 'xor'
	 * Returns: the value of atomic before the operation, unsigned
	 */
	public static uint intXor(uint* atomic, uint val)
	{
		// guint g_atomic_int_xor (volatile guint *atomic,  guint val);
		return g_atomic_int_xor(atomic, val);
	}
	
	/**
	 * Gets the current value of atomic.
	 * This call acts as a full compiler and hardware
	 * memory barrier (before the get).
	 * Since 2.4
	 * Params:
	 * atomic = a pointer to a gpointer-sized value
	 * Returns: the value of the pointer
	 */
	public static void* pointerGet(void* atomic)
	{
		// gpointer g_atomic_pointer_get (const volatile void *atomic);
		return g_atomic_pointer_get(atomic);
	}
	
	/**
	 * Sets the value of atomic to newval.
	 * This call acts as a full compiler and hardware
	 * memory barrier (after the set).
	 * Since 2.4
	 * Params:
	 * atomic = a pointer to a gpointer-sized value
	 * newval = a new value to store
	 */
	public static void pointerSet(void* atomic, void* newval)
	{
		// void g_atomic_pointer_set (volatile void *atomic,  gpointer newval);
		g_atomic_pointer_set(atomic, newval);
	}
	
	/**
	 * Compares atomic to oldval and, if equal, sets it to newval.
	 * If atomic was not equal to oldval then no change occurs.
	 * This compare and exchange is done atomically.
	 * Think of this operation as an atomic version of
	 * { if (*atomic == oldval) { *atomic = newval; return TRUE; } else return FALSE; }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Since 2.4
	 * Params:
	 * atomic = a pointer to a gpointer-sized value
	 * oldval = the value to compare with
	 * newval = the value to conditionally replace with
	 * Returns: TRUE if the exchange took place
	 */
	public static int pointerCompareAndExchange(void* atomic, void* oldval, void* newval)
	{
		// gboolean g_atomic_pointer_compare_and_exchange  (volatile void *atomic,  gpointer oldval,  gpointer newval);
		return g_atomic_pointer_compare_and_exchange(atomic, oldval, newval);
	}
	
	/**
	 * Atomically adds val to the value of atomic.
	 * Think of this operation as an atomic version of
	 * { tmp = *atomic; *atomic += val; return tmp; }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Since 2.30
	 * Params:
	 * atomic = a pointer to a gpointer-sized value
	 * val = the value to add
	 * Returns: the value of atomic before the add, signed
	 */
	public static gssize pointerAdd(void* atomic, gssize val)
	{
		// gssize g_atomic_pointer_add (volatile void *atomic,  gssize val);
		return g_atomic_pointer_add(atomic, val);
	}
	
	/**
	 * Performs an atomic bitwise 'and' of the value of atomic and val,
	 * storing the result back in atomic.
	 * Think of this operation as an atomic version of
	 * { tmp = *atomic; *atomic = val; return tmp; }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Since 2.30
	 * Params:
	 * atomic = a pointer to a gpointer-sized value
	 * val = the value to 'and'
	 * Returns: the value of atomic before the operation, unsigned
	 */
	public static gsize pointerAnd(void* atomic, gsize val)
	{
		// gsize g_atomic_pointer_and (volatile void *atomic,  gsize val);
		return g_atomic_pointer_and(atomic, val);
	}
	
	/**
	 * Performs an atomic bitwise 'or' of the value of atomic and val,
	 * storing the result back in atomic.
	 * Think of this operation as an atomic version of
	 * { tmp = *atomic; *atomic |= val; return tmp; }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Since 2.30
	 * Params:
	 * atomic = a pointer to a gpointer-sized value
	 * val = the value to 'or'
	 * Returns: the value of atomic before the operation, unsigned
	 */
	public static gsize pointerOr(void* atomic, gsize val)
	{
		// gsize g_atomic_pointer_or (volatile void *atomic,  gsize val);
		return g_atomic_pointer_or(atomic, val);
	}
	
	/**
	 * Performs an atomic bitwise 'xor' of the value of atomic and val,
	 * storing the result back in atomic.
	 * Think of this operation as an atomic version of
	 * { tmp = *atomic; *atomic ^= val; return tmp; }
	 * This call acts as a full compiler and hardware memory barrier.
	 * Since 2.30
	 * Params:
	 * atomic = a pointer to a gpointer-sized value
	 * val = the value to 'xor'
	 * Returns: the value of atomic before the operation, unsigned
	 */
	public static gsize pointerXor(void* atomic, gsize val)
	{
		// gsize g_atomic_pointer_xor (volatile void *atomic,  gsize val);
		return g_atomic_pointer_xor(atomic, val);
	}
	
	/**
	 * Warning
	 * g_atomic_int_exchange_and_add has been deprecated since version 2.30 and should not be used in newly-written code. Use g_atomic_int_add() instead.
	 * This function existed before g_atomic_int_add() returned the prior
	 * value of the integer (which it now does). It is retained only for
	 * compatibility reasons. Don't use this function in new code.
	 * Since 2.4
	 * Params:
	 * atomic = a pointer to a gint
	 * val = the value to add
	 * Returns: the value of atomic before the add, signed
	 */
	public static int intExchangeAndAdd(int* atomic, int val)
	{
		// gint g_atomic_int_exchange_and_add (volatile gint *atomic,  gint val);
		return g_atomic_int_exchange_and_add(atomic, val);
	}
}
