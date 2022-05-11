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


module adw.ToastOverlay;

private import adw.Toast;
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
 * A widget showing toasts above its content.
 * 
 * <picture>
 * <source srcset="toast-overlay-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="toast-overlay.png" alt="toast-overlay">
 * </picture>
 * 
 * Toasts can be shown with [method@ToastOverlay.add_toast].
 * 
 * See [class@Toast] for details.
 * 
 * ## CSS nodes
 * 
 * ```
 * toastoverlay
 * ├── [child]
 * ├── toast
 * ┊   ├── label.heading
 * ├── [button]
 * ╰── button.circular.flat
 * ```
 * 
 * `AdwToastOverlay`'s CSS node is called `toastoverlay`. It contains the child,
 * as well as zero or more `toast` subnodes.
 * 
 * Each of the `toast` nodes contains a `label` subnode with the `.heading`
 * style class, optionally a `button` subnode, and another `button` subnode with
 * `.circular` and `.flat` style classes.
 * 
 * ## Accessibility
 * 
 * `AdwToastOverlay` uses the `GTK_ACCESSIBLE_ROLE_TAB_GROUP` role.
 *
 * Since: 1.0
 */
public class ToastOverlay : Widget
{
	/** the main Gtk struct */
	protected AdwToastOverlay* adwToastOverlay;

	/** Get the main Gtk struct */
	public AdwToastOverlay* getToastOverlayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwToastOverlay;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwToastOverlay;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwToastOverlay* adwToastOverlay, bool ownedRef = false)
	{
		this.adwToastOverlay = adwToastOverlay;
		super(cast(GtkWidget*)adwToastOverlay, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_toast_overlay_get_type();
	}

	/**
	 * Creates a new `AdwToastOverlay`.
	 *
	 * Returns: the new created `AdwToastOverlay`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_toast_overlay_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwToastOverlay*) __p);
	}

	/**
	 * Displays @toast.
	 *
	 * Only one toast can be shown at a time; if a toast is already being displayed,
	 * either @toast or the original toast will be placed in a queue, depending on
	 * the priority of @toast. See [property@Toast:priority].
	 *
	 * Params:
	 *     toast = a toast
	 *
	 * Since: 1.0
	 */
	public void addToast(Toast toast)
	{
		adw_toast_overlay_add_toast(adwToastOverlay, (toast is null) ? null : toast.getToastStruct());
	}

	/**
	 * Gets the child widget of @self.
	 *
	 * Returns: the child widget of @self
	 *
	 * Since: 1.0
	 */
	public Widget getChild()
	{
		auto __p = adw_toast_overlay_get_child(adwToastOverlay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the child widget of @self.
	 *
	 * Params:
	 *     child = the child widget
	 *
	 * Since: 1.0
	 */
	public void setChild(Widget child)
	{
		adw_toast_overlay_set_child(adwToastOverlay, (child is null) ? null : child.getWidgetStruct());
	}
}
