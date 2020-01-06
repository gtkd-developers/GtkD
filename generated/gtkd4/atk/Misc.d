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


module atk.Misc;

private import atk.c.functions;
public  import atk.c.types;
private import gobject.ObjectG;


/**
 * A set of utility functions for thread locking. This interface and
 * all his related methods are deprecated since 2.12.
 */
public class Misc : ObjectG
{
	/** the main Gtk struct */
	protected AtkMisc* atkMisc;

	/** Get the main Gtk struct */
	public AtkMisc* getMiscStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkMisc;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkMisc;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkMisc* atkMisc, bool ownedRef = false)
	{
		this.atkMisc = atkMisc;
		super(cast(GObject*)atkMisc, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return atk_misc_get_type();
	}

	/**
	 * Obtain the singleton instance of AtkMisc for this application.
	 *
	 * Deprecated: Since 2.12.
	 *
	 * Returns: The singleton instance of AtkMisc for this application.
	 *
	 * Since: 1.13
	 */
	public static Misc getInstance()
	{
		auto __p = atk_misc_get_instance();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Misc)(cast(AtkMisc*) __p);
	}

	/**
	 * Take the thread mutex for the GUI toolkit,
	 * if one exists.
	 * (This method is implemented by the toolkit ATK implementation layer;
	 * for instance, for GTK+, GAIL implements this via GDK_THREADS_ENTER).
	 *
	 * Deprecated: Since 2.12.
	 *
	 * Since: 1.13
	 */
	public void threadsEnter()
	{
		atk_misc_threads_enter(atkMisc);
	}

	/**
	 * Release the thread mutex for the GUI toolkit,
	 * if one exists. This method, and atk_misc_threads_enter,
	 * are needed in some situations by threaded application code which
	 * services ATK requests, since fulfilling ATK requests often
	 * requires calling into the GUI toolkit.  If a long-running or
	 * potentially blocking call takes place inside such a block, it should
	 * be bracketed by atk_misc_threads_leave/atk_misc_threads_enter calls.
	 * (This method is implemented by the toolkit ATK implementation layer;
	 * for instance, for GTK+, GAIL implements this via GDK_THREADS_LEAVE).
	 *
	 * Deprecated: Since 2.12.
	 *
	 * Since: 1.13
	 */
	public void threadsLeave()
	{
		atk_misc_threads_leave(atkMisc);
	}
}
