/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = atk
 * outFile = Relation
 * strct   = AtkRelation
 * realStrct=
 * clss    = Relation
 * extend  = 
 * prefixes:
 * 	- atk_relation_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.PtrArray
 * structWrap:
 * 	- GPtrArray* -> PtrArray
 * local aliases:
 */

module atk.Relation;

private import atk.typedefs;

private import lib.atk;

private import glib.PtrArray;
/**
 * Description
 * An AtkRelation describes a relation between an object and one or more
 * other objects. The actual relations that an object has with other objects
 * are defined as an AtkRelationSet, which is a set of AtkRelations.
 */
private import gobject.ObjectG;
public class Relation : ObjectG
{
	
	/** the main Gtk struct */
	protected AtkRelation* atkRelation;
	
	
	public AtkRelation* getRelationStruct()
	{
		return atkRelation;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkRelation;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkRelation* atkRelation)
	{
		super(cast(GObject*)atkRelation);
		this.atkRelation = atkRelation;
	}
	
	/**
	 */
	
	
	
	/**
	 * Associate name with a new AtkRelationType
	 * name:
	 *  a name string
	 * Returns:
	 *  an AtkRelationType associated with name
	 */
	public static AtkRelationType typeRegister(char[] name)
	{
		// AtkRelationType atk_relation_type_register (const gchar *name);
		return atk_relation_type_register(std.string.toStringz(name));
	}
	
	/**
	 * Gets the description string describing the AtkRelationType type.
	 * type:
	 *  The AtkRelationType whose name is required
	 * Returns:
	 *  the string describing the AtkRelationType
	 */
	public static char[] typeGetName(AtkRelationType type)
	{
		// const gchar* atk_relation_type_get_name (AtkRelationType type);
		return std.string.toString(atk_relation_type_get_name(type) );
	}
	
	/**
	 * Get the AtkRelationType type corresponding to a relation name.
	 * name:
	 *  a string which is the (non-localized) name of an ATK relation type.
	 * Returns:
	 *  the AtkRelationType enumerated type corresponding to the specified name,
	 *  or ATK_RELATION_NULL if no matching relation type is found.
	 */
	public static AtkRelationType typeForName(char[] name)
	{
		// AtkRelationType atk_relation_type_for_name (const gchar *name);
		return atk_relation_type_for_name(std.string.toStringz(name));
	}
	
	/**
	 * Create a new relation for the specified key and the specified list
	 * of targets.
	 * targets:
	 *  an array of pointers to AtkObjects
	 * n_targets:
	 *  number of AtkObjects pointed to by targets
	 * relationship:
	 *  an AtkRelationType with which to create the new
	 *  AtkRelation
	 * Returns:
	 *  a pointer to a new AtkRelation
	 */
	public this (AtkObject** targets, int nTargets, AtkRelationType relationship)
	{
		// AtkRelation* atk_relation_new (AtkObject **targets,  gint n_targets,  AtkRelationType relationship);
		this(cast(AtkRelation*)atk_relation_new(targets, nTargets, relationship) );
	}
	
	/**
	 * Gets the type of relation
	 * relation:
	 *  an AtkRelation
	 * Returns:
	 *  the type of relation
	 */
	public AtkRelationType getRelationType()
	{
		// AtkRelationType atk_relation_get_relation_type  (AtkRelation *relation);
		return atk_relation_get_relation_type(atkRelation);
	}
	
	/**
	 * Gets the target list of relation
	 * relation:
	 *  an AtkRelation
	 * Returns:
	 *  the target list of relation
	 */
	public PtrArray getTarget()
	{
		// GPtrArray* atk_relation_get_target (AtkRelation *relation);
		return new PtrArray( atk_relation_get_target(atkRelation) );
	}
	
	/**
	 * Adds the specified AtkObject to the target for the relation, if it is
	 * not already present.
	 * relation:
	 *  an AtkRelation
	 * target:
	 *  an AtkObject
	 * Since 1.9
	 * Property Details
	 * The "relation-type" property
	 *  "relation-type" AtkRelationType : Read / Write
	 * The type of the relation.
	 * Default value: ATK_RELATION_NULL
	 */
	public void addTarget(AtkObject* target)
	{
		// void atk_relation_add_target (AtkRelation *relation,  AtkObject *target);
		atk_relation_add_target(atkRelation, target);
	}
	
}
