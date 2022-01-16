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


module atk.RelationSet;

private import atk.ObjectAtk;
private import atk.Relation;
private import atk.c.functions;
public  import atk.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * The AtkRelationSet held by an object establishes its relationships
 * with objects beyond the normal "parent/child" hierarchical
 * relationships that all user interface objects have.
 * AtkRelationSets establish whether objects are labelled or
 * controlled by other components, share group membership with other
 * components (for instance within a radio-button group), or share
 * content which "flows" between them, among other types of possible
 * relationships.
 */
public class RelationSet : ObjectG
{
	/** the main Gtk struct */
	protected AtkRelationSet* atkRelationSet;

	/** Get the main Gtk struct */
	public AtkRelationSet* getRelationSetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkRelationSet;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkRelationSet;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkRelationSet* atkRelationSet, bool ownedRef = false)
	{
		this.atkRelationSet = atkRelationSet;
		super(cast(GObject*)atkRelationSet, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return atk_relation_set_get_type();
	}

	/**
	 * Creates a new empty relation set.
	 *
	 * Returns: a new #AtkRelationSet
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = atk_relation_set_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AtkRelationSet*) __p, true);
	}

	/**
	 * Add a new relation to the current relation set if it is not already
	 * present.
	 * This function ref's the AtkRelation so the caller of this function
	 * should unref it to ensure that it will be destroyed when the AtkRelationSet
	 * is destroyed.
	 *
	 * Params:
	 *     relation = an #AtkRelation
	 */
	public void add(Relation relation)
	{
		atk_relation_set_add(atkRelationSet, (relation is null) ? null : relation.getRelationStruct());
	}

	/**
	 * Add a new relation of the specified type with the specified target to
	 * the current relation set if the relation set does not contain a relation
	 * of that type. If it is does contain a relation of that typea the target
	 * is added to the relation.
	 *
	 * Params:
	 *     relationship = an #AtkRelationType
	 *     target = an #AtkObject
	 *
	 * Since: 1.9
	 */
	public void addRelationByType(AtkRelationType relationship, ObjectAtk target)
	{
		atk_relation_set_add_relation_by_type(atkRelationSet, relationship, (target is null) ? null : target.getObjectAtkStruct());
	}

	/**
	 * Determines whether the relation set contains a relation that matches the
	 * specified type.
	 *
	 * Params:
	 *     relationship = an #AtkRelationType
	 *
	 * Returns: %TRUE if @relationship is the relationship type of a relation
	 *     in @set, %FALSE otherwise
	 */
	public bool contains(AtkRelationType relationship)
	{
		return atk_relation_set_contains(atkRelationSet, relationship) != 0;
	}

	/**
	 * Determines whether the relation set contains a relation that
	 * matches the specified pair formed by type @relationship and object
	 * @target.
	 *
	 * Params:
	 *     relationship = an #AtkRelationType
	 *     target = an #AtkObject
	 *
	 * Returns: %TRUE if @set contains a relation with the relationship
	 *     type @relationship with an object @target, %FALSE otherwise
	 */
	public bool containsTarget(AtkRelationType relationship, ObjectAtk target)
	{
		return atk_relation_set_contains_target(atkRelationSet, relationship, (target is null) ? null : target.getObjectAtkStruct()) != 0;
	}

	/**
	 * Determines the number of relations in a relation set.
	 *
	 * Returns: an integer representing the number of relations in the set.
	 */
	public int getNRelations()
	{
		return atk_relation_set_get_n_relations(atkRelationSet);
	}

	/**
	 * Determines the relation at the specified position in the relation set.
	 *
	 * Params:
	 *     i = a gint representing a position in the set, starting from 0.
	 *
	 * Returns: a #AtkRelation, which is the relation at
	 *     position i in the set.
	 */
	public Relation getRelation(int i)
	{
		auto __p = atk_relation_set_get_relation(atkRelationSet, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Relation)(cast(AtkRelation*) __p);
	}

	/**
	 * Finds a relation that matches the specified type.
	 *
	 * Params:
	 *     relationship = an #AtkRelationType
	 *
	 * Returns: an #AtkRelation, which is a relation matching the
	 *     specified type.
	 */
	public Relation getRelationByType(AtkRelationType relationship)
	{
		auto __p = atk_relation_set_get_relation_by_type(atkRelationSet, relationship);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Relation)(cast(AtkRelation*) __p);
	}

	/**
	 * Removes a relation from the relation set.
	 * This function unref's the #AtkRelation so it will be deleted unless there
	 * is another reference to it.
	 *
	 * Params:
	 *     relation = an #AtkRelation
	 */
	public void remove(Relation relation)
	{
		atk_relation_set_remove(atkRelationSet, (relation is null) ? null : relation.getRelationStruct());
	}
}
