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


module adw.SpringParams;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * Physical parameters of a spring for [class@SpringAnimation].
 * 
 * Any spring can be described by three parameters: mass, stiffness and damping.
 * 
 * An undamped spring will produce an oscillatory motion which will go on
 * forever.
 * 
 * The frequency and amplitude of the oscillations will be determined by the
 * stiffness (how "strong" the spring is) and its mass (how much "inertia" it
 * has).
 * 
 * If damping is larger than 0, the amplitude of that oscillating motion will
 * exponientally decrease over time. If that damping is strong enough that the
 * spring can't complete a full oscillation, it's called an overdamped spring.
 * 
 * If we the spring can oscillate, it's called an underdamped spring.
 * 
 * The value between these two behaviors is called critical damping; a
 * critically damped spring will comes to rest in the minimum possible time
 * without producing oscillations.
 * 
 * The damping can be replaced by damping ratio, which produces the following
 * springs:
 * 
 * * 0: an undamped spring.
 * * Between 0 and 1: an underdamped spring.
 * * 1: a critically damped spring.
 * * Larger than 1: an overdamped spring.
 * 
 * As such
 *
 * Since: 1.0
 */
public class SpringParams
{
	/** the main Gtk struct */
	protected AdwSpringParams* adwSpringParams;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public AdwSpringParams* getSpringParamsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwSpringParams;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)adwSpringParams;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwSpringParams* adwSpringParams, bool ownedRef = false)
	{
		this.adwSpringParams = adwSpringParams;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_ADW[0]) && ownedRef )
			adw_spring_params_unref(adwSpringParams);
	}


	/** */
	public static GType getType()
	{
		return adw_spring_params_get_type();
	}

	/**
	 * Creates a new `AdwSpringParams` from @mass, @stiffness and @damping_ratio.
	 *
	 * The damping value is calculated from @damping_ratio and the other two
	 * parameters.
	 *
	 * * If @damping_ratio is 0, the spring will not be damped and will oscillate
	 * endlessly.
	 * * If @damping_ratio is between 0 and 1, the spring is underdamped and will
	 * always overshoot.
	 * * If @damping_ratio is 1, the spring is critically damped and will reach its
	 * resting position the quickest way possible.
	 * * If @damping_ratio is larger than 1, the spring is overdamped and will reach
	 * its resting position faster than it can complete an oscillation.
	 *
	 * [ctor@SpringParams.new_full] allows to pass a raw damping value instead.
	 *
	 * Params:
	 *     dampingRatio = the damping ratio of the spring
	 *     mass = the mass of the spring
	 *     stiffness = the stiffness of the spring
	 *
	 * Returns: the newly created spring parameters
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double dampingRatio, double mass, double stiffness)
	{
		auto __p = adw_spring_params_new(dampingRatio, mass, stiffness);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwSpringParams*) __p);
	}

	/**
	 * Gets the damping of @self.
	 *
	 * Returns: the damping
	 *
	 * Since: 1.0
	 */
	public double getDamping()
	{
		return adw_spring_params_get_damping(adwSpringParams);
	}

	/**
	 * Gets the damping ratio of @self.
	 *
	 * Returns: the damping ratio
	 *
	 * Since: 1.0
	 */
	public double getDampingRatio()
	{
		return adw_spring_params_get_damping_ratio(adwSpringParams);
	}

	/**
	 * Gets the mass of @self.
	 *
	 * Returns: the mass
	 *
	 * Since: 1.0
	 */
	public double getMass()
	{
		return adw_spring_params_get_mass(adwSpringParams);
	}

	/**
	 * Gets the stiffness of @self.
	 *
	 * Returns: the stiffness
	 *
	 * Since: 1.0
	 */
	public double getStiffness()
	{
		return adw_spring_params_get_stiffness(adwSpringParams);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of @self.
	 *
	 * Returns: @self
	 *
	 * Since: 1.0
	 */
	public SpringParams ref_()
	{
		auto __p = adw_spring_params_ref(adwSpringParams);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SpringParams)(cast(AdwSpringParams*) __p, true);
	}

	/**
	 * Decreases the reference count of @self.
	 *
	 * If the last reference is dropped, the structure is freed.
	 *
	 * Since: 1.0
	 */
	public void unref()
	{
		adw_spring_params_unref(adwSpringParams);
	}
}
