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
 * outFile = NoOpObjectFactory
 * strct   = AtkNoOpObjectFactory
 * clss    = NoOpObjectFactory
 * prefixes:
 * 	- atk_no_op_object_factory
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gobject.ObjectG
 * structWrap:
 * 	- GObject* -> ObjectG
 * local aliases:
 */

module atk.NoOpObjectFactory;

private import atk.typedefs;

private import lib.atk;

private import gobject.ObjectG;
/**
 * Description
 * The AtkObjectFactory which creates an AtkNoOpObject. An instance of this is
 * created by an AtkRegistry if no factory type has not been specified to
 * create an accessible object of a particular type.
 */
private import atk.ObjectFactory;
public class NoOpObjectFactory : ObjectFactory
{
	
	/** the main Gtk struct */
	protected AtkNoOpObjectFactory* atkNoOpObjectFactory;
	
	
	public AtkNoOpObjectFactory* getNoOpObjectFactoryStruct()
	{
		return atkNoOpObjectFactory;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkNoOpObjectFactory;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkNoOpObjectFactory* atkNoOpObjectFactory)
	{
		super(cast(AtkObjectFactory*)atkNoOpObjectFactory);
		this.atkNoOpObjectFactory = atkNoOpObjectFactory;
	}
	
	/**
	 */
	
	
	/**
	 * Creates an instance of an AtkObjectFactory which generates primitive
	 * (non-functioning) AtkObjects.
	 * Returns:
	 *  an instance of an AtkObjectFactory
	 */
	public static AtkObjectFactory* _New()
	{
		// AtkObjectFactory* atk_no_op_object_factory_new  (void);
		return atk_no_op_object_factory_new();
	}
}
