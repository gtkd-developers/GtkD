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


module adw.ViewSwitcher;

private import adw.ViewStack;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;


/**
 * An adaptive view switcher.
 * 
 * <picture>
 * <source srcset="view-switcher-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="view-switcher.png" alt="view-switcher">
 * </picture>
 * 
 * An adaptive view switcher designed to switch between multiple views
 * contained in a [class@ViewStack] in a similar fashion to
 * [class@Gtk.StackSwitcher].
 * 
 * `AdwViewSwitcher` buttons always have an icon and a label. They can be
 * displayed side by side, or icon on top of the label. This can be controlled
 * via the [property@ViewSwitcher:policy] property.
 * 
 * Most applications should be using [class@ViewSwitcherBar] and
 * [class@ViewSwitcherTitle].
 * 
 * ## CSS nodes
 * 
 * `AdwViewSwitcher` has a single CSS node with name `viewswitcher`. It can have
 * the style classes `.wide` and `.narrow`, matching its policy.
 * 
 * ## Accessibility
 * 
 * `AdwViewSwitcher` uses the `GTK_ACCESSIBLE_ROLE_TAB_LIST` role and uses the
 * `GTK_ACCESSIBLE_ROLE_TAB` for its buttons.
 *
 * Since: 1.0
 */
public class ViewSwitcher : Widget
{
	/** the main Gtk struct */
	protected AdwViewSwitcher* adwViewSwitcher;

	/** Get the main Gtk struct */
	public AdwViewSwitcher* getViewSwitcherStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwViewSwitcher;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwViewSwitcher;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwViewSwitcher* adwViewSwitcher, bool ownedRef = false)
	{
		this.adwViewSwitcher = adwViewSwitcher;
		super(cast(GtkWidget*)adwViewSwitcher, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_view_switcher_get_type();
	}

	/**
	 * Creates a new `AdwViewSwitcher`.
	 *
	 * Returns: the newly created `AdwViewSwitcher`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_view_switcher_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwViewSwitcher*) __p);
	}

	/**
	 * Gets the policy of @self.
	 *
	 * Returns: the policy of @self
	 *
	 * Since: 1.0
	 */
	public AdwViewSwitcherPolicy getPolicy()
	{
		return adw_view_switcher_get_policy(adwViewSwitcher);
	}

	/**
	 * Gets the stack controlled by @self.
	 *
	 * Returns: the stack
	 *
	 * Since: 1.0
	 */
	public ViewStack getStack()
	{
		auto __p = adw_view_switcher_get_stack(adwViewSwitcher);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ViewStack)(cast(AdwViewStack*) __p);
	}

	/**
	 * Sets the policy of @self.
	 *
	 * Params:
	 *     policy = the new policy
	 *
	 * Since: 1.0
	 */
	public void setPolicy(AdwViewSwitcherPolicy policy)
	{
		adw_view_switcher_set_policy(adwViewSwitcher, policy);
	}

	/**
	 * Sets the stack controlled by @self.
	 *
	 * Params:
	 *     stack = a stack
	 *
	 * Since: 1.0
	 */
	public void setStack(ViewStack stack)
	{
		adw_view_switcher_set_stack(adwViewSwitcher, (stack is null) ? null : stack.getViewStackStruct());
	}
}
