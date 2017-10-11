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


module peas.ActivatableIF;

private import peas.c.functions;
public  import peas.c.types;


/**
 * Interface for activatable plugins.
 */
public interface ActivatableIF{
	/** Get the main Gtk struct */
	public PeasActivatable* getActivatableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return peas_activatable_get_type();
	}

	/**
	 * Activates the extension on the targetted object.
	 *
	 * On activation, the extension should hook itself to the object
	 * where it makes sense.
	 */
	public void activate();

	/**
	 * Deactivates the extension on the targetted object.
	 *
	 * On deactivation, an extension should remove itself from all the hooks it
	 * used and should perform any cleanup required, so it can be unreffed safely
	 * and without any more effect on the host application.
	 */
	public void deactivate();

	/**
	 * Triggers an update of the extension internal state to take into account
	 * state changes in the targetted object, due to some event or user action.
	 */
	public void updateState();
}
