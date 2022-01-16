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


module glib.Atomic;

private import glib.c.functions;
public  import glib.c.types;


/** */
public struct Atomic
{

	/**
	 * Atomically adds @val to the value of @atomic.
	 *
	 * Think of this operation as an atomic version of
	 * `{ tmp = *atomic; *atomic += val; return tmp; }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * Before version 2.30, this function did not return a value
	 * (but g_atomic_int_exchange_and_add() did, and had the same meaning).
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gint or #guint
	 *     val = the value to add
	 *
	 * Returns: the value of @atomic before the add, signed
	 *
	 * Since: 2.4
	 */
	public static int intAdd(int* atomic, int val)
	{
		return g_atomic_int_add(atomic, val);
	}

	/**
	 * Performs an atomic bitwise 'and' of the value of @atomic and @val,
	 * storing the result back in @atomic.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * Think of this operation as an atomic version of
	 * `{ tmp = *atomic; *atomic &= val; return tmp; }`.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gint or #guint
	 *     val = the value to 'and'
	 *
	 * Returns: the value of @atomic before the operation, unsigned
	 *
	 * Since: 2.30
	 */
	public static uint intAnd(uint* atomic, uint val)
	{
		return g_atomic_int_and(atomic, val);
	}

	/**
	 * Compares @atomic to @oldval and, if equal, sets it to @newval.
	 * If @atomic was not equal to @oldval then no change occurs.
	 *
	 * This compare and exchange is done atomically.
	 *
	 * Think of this operation as an atomic version of
	 * `{ if (*atomic == oldval) { *atomic = newval; return TRUE; } else return FALSE; }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gint or #guint
	 *     oldval = the value to compare with
	 *     newval = the value to conditionally replace with
	 *
	 * Returns: %TRUE if the exchange took place
	 *
	 * Since: 2.4
	 */
	public static bool intCompareAndExchange(int* atomic, int oldval, int newval)
	{
		return g_atomic_int_compare_and_exchange(atomic, oldval, newval) != 0;
	}

	/**
	 * Decrements the value of @atomic by 1.
	 *
	 * Think of this operation as an atomic version of
	 * `{ *atomic -= 1; return (*atomic == 0); }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gint or #guint
	 *
	 * Returns: %TRUE if the resultant value is zero
	 *
	 * Since: 2.4
	 */
	public static bool intDecAndTest(int* atomic)
	{
		return g_atomic_int_dec_and_test(atomic) != 0;
	}

	/**
	 * This function existed before g_atomic_int_add() returned the prior
	 * value of the integer (which it now does).  It is retained only for
	 * compatibility reasons.  Don't use this function in new code.
	 *
	 * Deprecated: Use g_atomic_int_add() instead.
	 *
	 * Params:
	 *     atomic = a pointer to a #gint
	 *     val = the value to add
	 *
	 * Returns: the value of @atomic before the add, signed
	 *
	 * Since: 2.4
	 */
	public static int intExchangeAndAdd(int* atomic, int val)
	{
		return g_atomic_int_exchange_and_add(atomic, val);
	}

	/**
	 * Gets the current value of @atomic.
	 *
	 * This call acts as a full compiler and hardware
	 * memory barrier (before the get).
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gint or #guint
	 *
	 * Returns: the value of the integer
	 *
	 * Since: 2.4
	 */
	public static int intGet(int* atomic)
	{
		return g_atomic_int_get(atomic);
	}

	/**
	 * Increments the value of @atomic by 1.
	 *
	 * Think of this operation as an atomic version of `{ *atomic += 1; }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gint or #guint
	 *
	 * Since: 2.4
	 */
	public static void intInc(int* atomic)
	{
		g_atomic_int_inc(atomic);
	}

	/**
	 * Performs an atomic bitwise 'or' of the value of @atomic and @val,
	 * storing the result back in @atomic.
	 *
	 * Think of this operation as an atomic version of
	 * `{ tmp = *atomic; *atomic |= val; return tmp; }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gint or #guint
	 *     val = the value to 'or'
	 *
	 * Returns: the value of @atomic before the operation, unsigned
	 *
	 * Since: 2.30
	 */
	public static uint intOr(uint* atomic, uint val)
	{
		return g_atomic_int_or(atomic, val);
	}

	/**
	 * Sets the value of @atomic to @newval.
	 *
	 * This call acts as a full compiler and hardware
	 * memory barrier (after the set).
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gint or #guint
	 *     newval = a new value to store
	 *
	 * Since: 2.4
	 */
	public static void intSet(int* atomic, int newval)
	{
		g_atomic_int_set(atomic, newval);
	}

	/**
	 * Performs an atomic bitwise 'xor' of the value of @atomic and @val,
	 * storing the result back in @atomic.
	 *
	 * Think of this operation as an atomic version of
	 * `{ tmp = *atomic; *atomic ^= val; return tmp; }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gint or #guint
	 *     val = the value to 'xor'
	 *
	 * Returns: the value of @atomic before the operation, unsigned
	 *
	 * Since: 2.30
	 */
	public static uint intXor(uint* atomic, uint val)
	{
		return g_atomic_int_xor(atomic, val);
	}

	/**
	 * Atomically adds @val to the value of @atomic.
	 *
	 * Think of this operation as an atomic version of
	 * `{ tmp = *atomic; *atomic += val; return tmp; }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gpointer-sized value
	 *     val = the value to add
	 *
	 * Returns: the value of @atomic before the add, signed
	 *
	 * Since: 2.30
	 */
	public static ptrdiff_t pointerAdd(void* atomic, ptrdiff_t val)
	{
		return g_atomic_pointer_add(atomic, val);
	}

	/**
	 * Performs an atomic bitwise 'and' of the value of @atomic and @val,
	 * storing the result back in @atomic.
	 *
	 * Think of this operation as an atomic version of
	 * `{ tmp = *atomic; *atomic &= val; return tmp; }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gpointer-sized value
	 *     val = the value to 'and'
	 *
	 * Returns: the value of @atomic before the operation, unsigned
	 *
	 * Since: 2.30
	 */
	public static size_t pointerAnd(void* atomic, size_t val)
	{
		return g_atomic_pointer_and(atomic, val);
	}

	/**
	 * Compares @atomic to @oldval and, if equal, sets it to @newval.
	 * If @atomic was not equal to @oldval then no change occurs.
	 *
	 * This compare and exchange is done atomically.
	 *
	 * Think of this operation as an atomic version of
	 * `{ if (*atomic == oldval) { *atomic = newval; return TRUE; } else return FALSE; }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gpointer-sized value
	 *     oldval = the value to compare with
	 *     newval = the value to conditionally replace with
	 *
	 * Returns: %TRUE if the exchange took place
	 *
	 * Since: 2.4
	 */
	public static bool pointerCompareAndExchange(void* atomic, void* oldval, void* newval)
	{
		return g_atomic_pointer_compare_and_exchange(atomic, oldval, newval) != 0;
	}

	/**
	 * Gets the current value of @atomic.
	 *
	 * This call acts as a full compiler and hardware
	 * memory barrier (before the get).
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gpointer-sized value
	 *
	 * Returns: the value of the pointer
	 *
	 * Since: 2.4
	 */
	public static void* pointerGet(void* atomic)
	{
		return g_atomic_pointer_get(atomic);
	}

	/**
	 * Performs an atomic bitwise 'or' of the value of @atomic and @val,
	 * storing the result back in @atomic.
	 *
	 * Think of this operation as an atomic version of
	 * `{ tmp = *atomic; *atomic |= val; return tmp; }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gpointer-sized value
	 *     val = the value to 'or'
	 *
	 * Returns: the value of @atomic before the operation, unsigned
	 *
	 * Since: 2.30
	 */
	public static size_t pointerOr(void* atomic, size_t val)
	{
		return g_atomic_pointer_or(atomic, val);
	}

	/**
	 * Sets the value of @atomic to @newval.
	 *
	 * This call acts as a full compiler and hardware
	 * memory barrier (after the set).
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gpointer-sized value
	 *     newval = a new value to store
	 *
	 * Since: 2.4
	 */
	public static void pointerSet(void* atomic, void* newval)
	{
		g_atomic_pointer_set(atomic, newval);
	}

	/**
	 * Performs an atomic bitwise 'xor' of the value of @atomic and @val,
	 * storing the result back in @atomic.
	 *
	 * Think of this operation as an atomic version of
	 * `{ tmp = *atomic; *atomic ^= val; return tmp; }`.
	 *
	 * This call acts as a full compiler and hardware memory barrier.
	 *
	 * While @atomic has a `volatile` qualifier, this is a historical artifact and
	 * the pointer passed to it should not be `volatile`.
	 *
	 * Params:
	 *     atomic = a pointer to a #gpointer-sized value
	 *     val = the value to 'xor'
	 *
	 * Returns: the value of @atomic before the operation, unsigned
	 *
	 * Since: 2.30
	 */
	public static size_t pointerXor(void* atomic, size_t val)
	{
		return g_atomic_pointer_xor(atomic, val);
	}
}
