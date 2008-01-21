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
 * inFile  = AtkRelationSet.html
 * outPack = atk
 * outFile = RelationSet
 * strct   = AtkRelationSet
 * realStrct=
 * ctorStrct=
 * clss    = RelationSet
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_relationSet_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.PtrArray
 * structWrap:
 * 	- GPtrArray* -> PtrArray
 * module aliases:
 * local aliases:
 */

module atk.RelationSet;

public  import gtkc.atktypes;

private import gtkc.atk;


private import glib.PtrArray;



private import gobject.ObjectG;

/**
 * Description
 * The AtkRelationSet held by an object establishes its relationships with
 * objects beyond the normal "parent/child" hierarchical relationships that all
 * user interface objects have. AtkRelationSets establish whether objects are
 * labelled or controlled by other components, share group membership with other
 * components (for instance within a radio-button group), or share content which
 * "flows" between them, among other types of possible relationships.
 */
public class RelationSet : ObjectG
{
	
	/** the main Gtk struct */
	protected AtkRelationSet* atkRelationSet;
	
	
	public AtkRelationSet* getRelationSetStruct()
	{
		return atkRelationSet;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkRelationSet;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkRelationSet* atkRelationSet)
	{
		if(atkRelationSet is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null atkRelationSet passed to constructor.");
			else return;
		}
		super(cast(GObject*)atkRelationSet);
		this.atkRelationSet = atkRelationSet;
	}
	
	/**
	 */
	
	/**
	 * Creates a new empty relation set.
	 * Returns: a new AtkRelationSet
	 */
	public static AtkRelationSet* atkRelationSetNew()
	{
		// AtkRelationSet* atk_relation_set_new (void);
		return atk_relation_set_new();
	}
	
	/**
	 * Determines whether the relation set contains a relation that matches the
	 * specified type.
	 * Params:
	 * relationship =  an AtkRelationType
	 * Returns: TRUE if relationship is the relationship type of a relationin set, FALSE otherwise
	 */
	public int atkRelationSetContains(AtkRelationType relationship)
	{
		// gboolean atk_relation_set_contains (AtkRelationSet *set,  AtkRelationType relationship);
		return atk_relation_set_contains(atkRelationSet, relationship);
	}
	
	/**
	 * Removes a relation from the relation set.
	 * This function unref's the AtkRelation so it will be deleted unless there
	 * is another reference to it.
	 * Params:
	 * relation =  an AtkRelation
	 */
	public void atkRelationSetRemove(AtkRelation* relation)
	{
		// void atk_relation_set_remove (AtkRelationSet *set,  AtkRelation *relation);
		atk_relation_set_remove(atkRelationSet, relation);
	}
	
	/**
	 * Add a new relation to the current relation set if it is not already
	 * present.
	 * This function ref's the AtkRelation so the caller of this function
	 * should unref it to ensure that it will be destroyed when the AtkRelationSet
	 * is destroyed.
	 * Params:
	 * relation =  an AtkRelation
	 */
	public void atkRelationSetAdd(AtkRelation* relation)
	{
		// void atk_relation_set_add (AtkRelationSet *set,  AtkRelation *relation);
		atk_relation_set_add(atkRelationSet, relation);
	}
	
	/**
	 * Determines the number of relations in a relation set.
	 * Returns: an integer representing the number of relations in the set.
	 */
	public int atkRelationSetGetNRelations()
	{
		// gint atk_relation_set_get_n_relations (AtkRelationSet *set);
		return atk_relation_set_get_n_relations(atkRelationSet);
	}
	
	/**
	 * Determines the relation at the specified position in the relation set.
	 * Params:
	 * i =  a gint representing a position in the set, starting from 0.
	 * Returns: a AtkRelation, which is the relation at position i in the set.
	 */
	public AtkRelation* atkRelationSetGetRelation(int i)
	{
		// AtkRelation* atk_relation_set_get_relation (AtkRelationSet *set,  gint i);
		return atk_relation_set_get_relation(atkRelationSet, i);
	}
	
	/**
	 * Finds a relation that matches the specified type.
	 * Params:
	 * relationship =  an AtkRelationType
	 * Returns: an AtkRelation, which is a relation matching the specified type.
	 */
	public AtkRelation* atkRelationSetGetRelationByType(AtkRelationType relationship)
	{
		// AtkRelation* atk_relation_set_get_relation_by_type  (AtkRelationSet *set,  AtkRelationType relationship);
		return atk_relation_set_get_relation_by_type(atkRelationSet, relationship);
	}
	
	/**
	 * Add a new relation of the specified type with the specified target to
	 * the current relation set if the relation set does not contain a relation
	 * of that type. If it is does contain a relation of that typea the target
	 * is added to the relation.
	 * Params:
	 * relationship =  an AtkRelationType
	 * target =  an AtkObject
	 * Since ATK 1.9
	 */
	public void atkRelationSetAddRelationByType(AtkRelationType relationship, AtkObject* target)
	{
		// void atk_relation_set_add_relation_by_type  (AtkRelationSet *set,  AtkRelationType relationship,  AtkObject *target);
		atk_relation_set_add_relation_by_type(atkRelationSet, relationship, target);
	}
}
