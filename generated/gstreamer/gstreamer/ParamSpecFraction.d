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


module gstreamer.ParamSpecFraction;

private import glib.ConstructionException;
private import glib.Str;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * A GParamSpec derived structure that contains the meta data for fractional
 * properties.
 */
public class ParamSpecFraction
{
	/** the main Gtk struct */
	protected GstParamSpecFraction* gstParamSpecFraction;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstParamSpecFraction* getParamSpecFractionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstParamSpecFraction;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstParamSpecFraction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstParamSpecFraction* gstParamSpecFraction, bool ownedRef = false)
	{
		this.gstParamSpecFraction = gstParamSpecFraction;
		this.ownedRef = ownedRef;
	}

	/**
	 * This function creates a fraction GParamSpec for use by objects/elements
	 * that want to expose properties of fraction type. This function is typically
	 * used in connection with g_object_class_install_property() in a GObjects's
	 * instance_init function.
	 * Params:
	 * name = canonical name of the property specified
	 * nick = nick name for the property specified
	 * blurb = description of the property specified
	 * minNum = minimum value (fraction numerator)
	 * minDenom = minimum value (fraction denominator)
	 * maxNum = maximum value (fraction numerator)
	 * maxDenom = maximum value (fraction denominator)
	 * defaultNum = default value (fraction numerator)
	 * defaultDenom = default value (fraction denominator)
	 * flags = flags for the property specified
	 * Returns: a newly created parameter specification. [transfer full]
	 */
	public this(string name, string nick, string blurb, int minNum, int minDenom, int maxNum, int maxDenom, int defaultNum, int defaultDenom, GParamFlags flags)
	{
		auto p = gst_param_spec_fraction(Str.toStringz(name), Str.toStringz(nick), Str.toStringz(blurb), minNum, minDenom, maxNum, maxDenom, defaultNum, defaultDenom, flags);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_param_spec_fraction");
		}
		this(cast(GstParamSpecFraction*) p);
	}

	/**
	 */
}
