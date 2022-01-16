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


module adw.CallbackAnimationTarget;

private import adw.AnimationTarget;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * An [class@AnimationTarget] that calls a given callback during the
 * animation.
 *
 * Since: 1.0
 */
public class CallbackAnimationTarget : AnimationTarget
{
	/** the main Gtk struct */
	protected AdwCallbackAnimationTarget* adwCallbackAnimationTarget;

	/** Get the main Gtk struct */
	public AdwCallbackAnimationTarget* getCallbackAnimationTargetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwCallbackAnimationTarget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwCallbackAnimationTarget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwCallbackAnimationTarget* adwCallbackAnimationTarget, bool ownedRef = false)
	{
		this.adwCallbackAnimationTarget = adwCallbackAnimationTarget;
		super(cast(AdwAnimationTarget*)adwCallbackAnimationTarget, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_callback_animation_target_get_type();
	}

	/**
	 * Creates a new `AdwAnimationTarget` that calls the given @callback during
	 * the animation.
	 *
	 * Params:
	 *     callback = the callback to call
	 *     userData = the data to be passed to @callback
	 *     destroy = the function to be called when the
	 *         callback action is finalized
	 *
	 * Returns: the newly created callback target
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(AdwAnimationTargetFunc callback, void* userData, GDestroyNotify destroy)
	{
		auto __p = adw_callback_animation_target_new(callback, userData, destroy);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwCallbackAnimationTarget*) __p, true);
	}
}
