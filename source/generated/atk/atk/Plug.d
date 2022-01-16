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


module atk.Plug;

private import atk.ComponentIF;
private import atk.ComponentT;
private import atk.ObjectAtk;
private import atk.c.functions;
public  import atk.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * See #AtkSocket
 */
public class Plug : ObjectAtk, ComponentIF
{
	/** the main Gtk struct */
	protected AtkPlug* atkPlug;

	/** Get the main Gtk struct */
	public AtkPlug* getPlugStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkPlug;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkPlug;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkPlug* atkPlug, bool ownedRef = false)
	{
		this.atkPlug = atkPlug;
		super(cast(AtkObject*)atkPlug, ownedRef);
	}

	// add the Component capabilities
	mixin ComponentT!(AtkPlug);


	/** */
	public static GType getType()
	{
		return atk_plug_get_type();
	}

	/**
	 * Creates a new #AtkPlug instance.
	 *
	 * Returns: the newly created #AtkPlug
	 *
	 * Since: 1.30
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = atk_plug_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AtkPlug*) __p, true);
	}

	/**
	 * Gets the unique ID of an #AtkPlug object, which can be used to
	 * embed inside of an #AtkSocket using atk_socket_embed().
	 *
	 * Internally, this calls a class function that should be registered
	 * by the IPC layer (usually at-spi2-atk). The implementor of an
	 * #AtkPlug object should call this function (after atk-bridge is
	 * loaded) and pass the value to the process implementing the
	 * #AtkSocket, so it could embed the plug.
	 *
	 * Returns: the unique ID for the plug
	 *
	 * Since: 1.30
	 */
	public string getId()
	{
		auto retStr = atk_plug_get_id(atkPlug);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Sets @child as accessible child of @plug and @plug as accessible parent of
	 * @child. @child can be NULL.
	 *
	 * In some cases, one can not use the AtkPlug type directly as accessible
	 * object for the toplevel widget of the application. For instance in the gtk
	 * case, GtkPlugAccessible can not inherit both from GtkWindowAccessible and
	 * from AtkPlug. In such a case, one can create, in addition to the standard
	 * accessible object for the toplevel widget, an AtkPlug object, and make the
	 * former the child of the latter by calling atk_plug_set_child().
	 *
	 * Params:
	 *     child = an #AtkObject to be set as accessible child of @plug.
	 *
	 * Since: 2.35.0
	 */
	public void setChild(ObjectAtk child)
	{
		atk_plug_set_child(atkPlug, (child is null) ? null : child.getObjectAtkStruct());
	}
}
