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


module atk.StateSet;

private import atk.c.functions;
public  import atk.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * An AtkStateSet is a read-only representation of the full set of #AtkStates
 * that apply to an object at a given time. This set is not meant to be
 * modified, but rather created when #atk_object_ref_state_set() is called.
 */
public class StateSet : ObjectG
{
	/** the main Gtk struct */
	protected AtkStateSet* atkStateSet;

	/** Get the main Gtk struct */
	public AtkStateSet* getStateSetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkStateSet;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkStateSet;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkStateSet* atkStateSet, bool ownedRef = false)
	{
		this.atkStateSet = atkStateSet;
		super(cast(GObject*)atkStateSet, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return atk_state_set_get_type();
	}

	/**
	 * Creates a new empty state set.
	 *
	 * Returns: a new #AtkStateSet
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = atk_state_set_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AtkStateSet*) __p, true);
	}

	/**
	 * Adds the state of the specified type to the state set if it is not already
	 * present.
	 *
	 * Note that because an #AtkStateSet is a read-only object, this method should
	 * be used to add a state to a newly-created set which will then be returned by
	 * #atk_object_ref_state_set. It should not be used to modify the existing state
	 * of an object. See also #atk_object_notify_state_change.
	 *
	 * Params:
	 *     type = an #AtkStateType
	 *
	 * Returns: %TRUE if  the state for @type is not already in @set.
	 */
	public bool addState(AtkStateType type)
	{
		return atk_state_set_add_state(atkStateSet, type) != 0;
	}

	/**
	 * Adds the states of the specified types to the state set.
	 *
	 * Note that because an #AtkStateSet is a read-only object, this method should
	 * be used to add states to a newly-created set which will then be returned by
	 * #atk_object_ref_state_set. It should not be used to modify the existing state
	 * of an object. See also #atk_object_notify_state_change.
	 *
	 * Params:
	 *     types = an array of #AtkStateType
	 */
	public void addStates(AtkStateType[] types)
	{
		atk_state_set_add_states(atkStateSet, types.ptr, cast(int)types.length);
	}

	/**
	 * Constructs the intersection of the two sets, returning %NULL if the
	 * intersection is empty.
	 *
	 * Params:
	 *     compareSet = another #AtkStateSet
	 *
	 * Returns: a new #AtkStateSet which is the intersection of
	 *     the two sets.
	 */
	public StateSet andSets(StateSet compareSet)
	{
		auto __p = atk_state_set_and_sets(atkStateSet, (compareSet is null) ? null : compareSet.getStateSetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StateSet)(cast(AtkStateSet*) __p, true);
	}

	/**
	 * Removes all states from the state set.
	 */
	public void clearStates()
	{
		atk_state_set_clear_states(atkStateSet);
	}

	/**
	 * Checks whether the state for the specified type is in the specified set.
	 *
	 * Params:
	 *     type = an #AtkStateType
	 *
	 * Returns: %TRUE if @type is the state type is in @set.
	 */
	public bool containsState(AtkStateType type)
	{
		return atk_state_set_contains_state(atkStateSet, type) != 0;
	}

	/**
	 * Checks whether the states for all the specified types are in the
	 * specified set.
	 *
	 * Params:
	 *     types = an array of #AtkStateType
	 *
	 * Returns: %TRUE if all the states for @type are in @set.
	 */
	public bool containsStates(AtkStateType[] types)
	{
		return atk_state_set_contains_states(atkStateSet, types.ptr, cast(int)types.length) != 0;
	}

	/**
	 * Checks whether the state set is empty, i.e. has no states set.
	 *
	 * Returns: %TRUE if @set has no states set, otherwise %FALSE
	 */
	public bool isEmpty()
	{
		return atk_state_set_is_empty(atkStateSet) != 0;
	}

	/**
	 * Constructs the union of the two sets.
	 *
	 * Params:
	 *     compareSet = another #AtkStateSet
	 *
	 * Returns: a new #AtkStateSet which is
	 *     the union of the two sets, returning %NULL is empty.
	 */
	public StateSet orSets(StateSet compareSet)
	{
		auto __p = atk_state_set_or_sets(atkStateSet, (compareSet is null) ? null : compareSet.getStateSetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StateSet)(cast(AtkStateSet*) __p, true);
	}

	/**
	 * Removes the state for the specified type from the state set.
	 *
	 * Note that because an #AtkStateSet is a read-only object, this method should
	 * be used to remove a state to a newly-created set which will then be returned
	 * by #atk_object_ref_state_set. It should not be used to modify the existing
	 * state of an object. See also #atk_object_notify_state_change.
	 *
	 * Params:
	 *     type = an #AtkType
	 *
	 * Returns: %TRUE if @type was the state type is in @set.
	 */
	public bool removeState(AtkStateType type)
	{
		return atk_state_set_remove_state(atkStateSet, type) != 0;
	}

	/**
	 * Constructs the exclusive-or of the two sets, returning %NULL is empty.
	 * The set returned by this operation contains the states in exactly
	 * one of the two sets.
	 *
	 * Params:
	 *     compareSet = another #AtkStateSet
	 *
	 * Returns: a new #AtkStateSet which contains the states
	 *     which are in exactly one of the two sets.
	 */
	public StateSet xorSets(StateSet compareSet)
	{
		auto __p = atk_state_set_xor_sets(atkStateSet, (compareSet is null) ? null : compareSet.getStateSetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StateSet)(cast(AtkStateSet*) __p, true);
	}
}
