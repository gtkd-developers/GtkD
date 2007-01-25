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
 * inFile  = AtkRegistry.html
 * outPack = atk
 * outFile = Registry
 * strct   = AtkRegistry
 * realStrct=
 * ctorStrct=
 * clss    = Registry
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_registry_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module atk.Registry;

private import gtkc.atktypes;

private import gtkc.atk;


/**
 * Description
 * The AtkRegistry is normally used to create appropriate ATK "peers" for user
 * interface components. Application developers usually need only interact with
 * the AtkRegistry by associating appropriate ATK implementation classes with
 * GObject classes via the atk_registry_set_factory_type call, passing the
 * appropriate GType for application custom widget classes.
 */
private import gobject.ObjectG;
public class Registry : ObjectG
{
	
	/** the main Gtk struct */
	protected AtkRegistry* atkRegistry;
	
	
	public AtkRegistry* getRegistryStruct()
	{
		return atkRegistry;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkRegistry;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkRegistry* atkRegistry)
	{
		super(cast(GObject*)atkRegistry);
		this.atkRegistry = atkRegistry;
	}
	
	/**
	 */
	
	
	/**
	 * Associate an AtkObjectFactory subclass with a GType. Note:
	 * The associated factory_type will thereafter be responsible for
	 * the creation of new AtkObject implementations for instances
	 * appropriate for type.
	 * registry:
	 *  the AtkRegistry in which to register the type association
	 * type:
	 *  an AtkObject type
	 * factory_type:
	 *  an AtkObjectFactory type to associate with type. Must
	 * implement AtkObject appropriate for type.
	 */
	public void setFactoryType(GType type, GType factoryType)
	{
		// void atk_registry_set_factory_type (AtkRegistry *registry,  GType type,  GType factory_type);
		atk_registry_set_factory_type(atkRegistry, type, factoryType);
	}
	
	/**
	 * Provides a GType indicating the AtkObjectFactory subclass
	 * associated with type.
	 * registry:
	 *  an AtkRegistry
	 * type:
	 *  a GType with which to look up the associated AtkObjectFactory
	 * subclass
	 * Returns:
	 *  a GType associated with type type
	 */
	public GType getFactoryType(GType type)
	{
		// GType atk_registry_get_factory_type (AtkRegistry *registry,  GType type);
		return atk_registry_get_factory_type(atkRegistry, type);
	}
	
	/**
	 * Gets an AtkObjectFactory appropriate for creating AtkObjects
	 * appropriate for type.
	 * registry:
	 *  an AtkRegistry
	 * type:
	 *  a GType with which to look up the associated AtkObjectFactory
	 * Returns:
	 *  an AtkObjectFactory appropriate for creating AtkObjects
	 * appropriate for type.
	 */
	public AtkObjectFactory* getFactory(GType type)
	{
		// AtkObjectFactory* atk_registry_get_factory (AtkRegistry *registry,  GType type);
		return atk_registry_get_factory(atkRegistry, type);
	}
	
	/**
	 * Gets a default implementation of the AtkObjectFactory/type
	 * registry.
	 * Note: For most toolkit maintainers, this will be the correct
	 * registry for registering new AtkObject factories. Following
	 * a call to this function, maintainers may call atk_registry_set_factory_type()
	 * to associate an AtkObjectFactory subclass with the GType of objects
	 * for whom accessibility information will be provided.
	 * Returns:
	 *  a default implementation of the AtkObjectFactory/type
	 * registry
	 */
	public static AtkRegistry* atkGetDefaultRegistry()
	{
		// AtkRegistry* atk_get_default_registry (void);
		return atk_get_default_registry();
	}
}
