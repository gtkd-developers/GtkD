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
 * inFile  = AtkRelation.html
 * outPack = atk
 * outFile = Relation
 * strct   = AtkRelation
 * realStrct=
 * ctorStrct=
 * clss    = Relation
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_relation_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- atk.ObjectAtk
 * 	- glib.PtrArray
 * 	- glib.Str
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * 	- GPtrArray* -> PtrArray
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.Relation;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import atk.ObjectAtk;
private import glib.PtrArray;
private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 * An AtkRelation describes a relation between an object and one or more
 * other objects. The actual relations that an object has with other objects
 * are defined as an AtkRelationSet, which is a set of AtkRelations.
 */
public class Relation : ObjectG
{
	
	/** the main Gtk struct */
	protected AtkRelation* atkRelation;
	
	
	public AtkRelation* getRelationStruct()
	{
		return atkRelation;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		atkRelation = cast(AtkRelation*)obj;
	}
	
	/**
	 */
	
	/**
	 * Associate name with a new AtkRelationType
	 * Params:
	 * name = a name string
	 * Returns: an AtkRelationType associated with name
	 */
	public static AtkRelationType typeRegister(string name)
	{
		// AtkRelationType atk_relation_type_register (const gchar *name);
		return atk_relation_type_register(Str.toStringz(name));
	}
	
	/**
	 * Gets the description string describing the AtkRelationType type.
	 * Params:
	 * type = The AtkRelationType whose name is required
	 * Returns: the string describing the AtkRelationType
	 */
	public static string typeGetName(AtkRelationType type)
	{
		// const gchar * atk_relation_type_get_name (AtkRelationType type);
		return Str.toString(atk_relation_type_get_name(type));
	}
	
	/**
	 * Get the AtkRelationType type corresponding to a relation name.
	 * Params:
	 * name = a string which is the (non-localized) name of an ATK relation type.
	 * Returns: the AtkRelationType enumerated type corresponding to the specified name, or ATK_RELATION_NULL if no matching relation type is found.
	 */
	public static AtkRelationType typeForName(string name)
	{
		// AtkRelationType atk_relation_type_for_name (const gchar *name);
		return atk_relation_type_for_name(Str.toStringz(name));
	}
	
	/**
	 * Create a new relation for the specified key and the specified list
	 * of targets. See also atk_object_add_relationship().
	 * Params:
	 * targets = an array of pointers to AtkObjects
	 * relationship = an AtkRelationType with which to create the new
	 * AtkRelation
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectAtk[] targets, AtkRelationType relationship)
	{
		// AtkRelation * atk_relation_new (AtkObject **targets,  gint n_targets,  AtkRelationType relationship);
		
		AtkObject*[] targetsArray = new AtkObject*[targets.length];
		for ( int i = 0; i < targets.length ; i++ )
		{
			targetsArray[i] = targets[i].getObjectAtkStruct();
		}
		
		auto p = atk_relation_new(targetsArray.ptr, cast(int) targets.length, relationship);
		if(p is null)
		{
			throw new ConstructionException("null returned by atk_relation_new(targetsArray.ptr, cast(int) targets.length, relationship)");
		}
		this(cast(AtkRelation*) p);
	}
	
	/**
	 * Gets the type of relation
	 * Returns: the type of relation
	 */
	public AtkRelationType getRelationType()
	{
		// AtkRelationType atk_relation_get_relation_type (AtkRelation *relation);
		return atk_relation_get_relation_type(atkRelation);
	}
	
	/**
	 * Gets the target list of relation
	 * Returns: the target list of relation. [transfer none]
	 */
	public PtrArray getTarget()
	{
		// GPtrArray * atk_relation_get_target (AtkRelation *relation);
		auto p = atk_relation_get_target(atkRelation);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PtrArray)(cast(GPtrArray*) p);
	}
	
	/**
	 * Adds the specified AtkObject to the target for the relation, if it is
	 * not already present. See also atk_object_add_relationship().
	 * Since 1.9
	 * Params:
	 * target = an AtkObject
	 */
	public void addTarget(ObjectAtk target)
	{
		// void atk_relation_add_target (AtkRelation *relation,  AtkObject *target);
		atk_relation_add_target(atkRelation, (target is null) ? null : target.getObjectAtkStruct());
	}
	
	/**
	 * Remove the specified AtkObject from the target for the relation.
	 * Params:
	 * target = an AtkObject
	 * Returns: TRUE if the removal is successful.
	 */
	public int removeTarget(ObjectAtk target)
	{
		// gboolean atk_relation_remove_target (AtkRelation *relation,  AtkObject *target);
		return atk_relation_remove_target(atkRelation, (target is null) ? null : target.getObjectAtkStruct());
	}
}
