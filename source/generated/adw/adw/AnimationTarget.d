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


module adw.AnimationTarget;

private import adw.c.functions;
public  import adw.c.types;
private import gobject.ObjectG;


/**
 * Represents a value [class@Animation] can animate.
 * 
 * Currently the only implementation is [class@CallbackAnimationTarget].
 *
 * Since: 1.0
 */
public class AnimationTarget : ObjectG
{
	/** the main Gtk struct */
	protected AdwAnimationTarget* adwAnimationTarget;

	/** Get the main Gtk struct */
	public AdwAnimationTarget* getAnimationTargetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwAnimationTarget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwAnimationTarget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwAnimationTarget* adwAnimationTarget, bool ownedRef = false)
	{
		this.adwAnimationTarget = adwAnimationTarget;
		super(cast(GObject*)adwAnimationTarget, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_animation_target_get_type();
	}
}
