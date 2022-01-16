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


module gtk.LockButton;

private import gio.Permission;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Button;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkLockButton` is a widget to obtain and revoke authorizations
 * needed to operate the controls.
 * 
 * ![An example GtkLockButton](lock-button.png)
 * 
 * It is typically used in preference dialogs or control panels.
 * 
 * The required authorization is represented by a `GPermission` object.
 * Concrete implementations of `GPermission` may use PolicyKit or some
 * other authorization framework. To obtain a PolicyKit-based
 * `GPermission`, use `polkit_permission_new()`.
 * 
 * If the user is not currently allowed to perform the action, but can
 * obtain the permission, the widget looks like this:
 * 
 * ![](lockbutton-locked.png)
 * 
 * and the user can click the button to request the permission. Depending
 * on the platform, this may pop up an authentication dialog or ask the user
 * to authenticate in some other way. Once the user has obtained the permission,
 * the widget changes to this:
 * 
 * ![](lockbutton-unlocked.png)
 * 
 * and the permission can be dropped again by clicking the button. If the user
 * is not able to obtain the permission at all, the widget looks like this:
 * 
 * ![](lockbutton-sorry.png)
 * 
 * If the user has the permission and cannot drop it, the button is hidden.
 * 
 * The text (and tooltips) that are shown in the various cases can be adjusted
 * with the [property@Gtk.LockButton:text-lock],
 * [property@Gtk.LockButton:text-unlock],
 * [property@Gtk.LockButton:tooltip-lock],
 * [property@Gtk.LockButton:tooltip-unlock] and
 * [property@Gtk.LockButton:tooltip-not-authorized] properties.
 */
public class LockButton : Button
{
	/** the main Gtk struct */
	protected GtkLockButton* gtkLockButton;

	/** Get the main Gtk struct */
	public GtkLockButton* getLockButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkLockButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLockButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkLockButton* gtkLockButton, bool ownedRef = false)
	{
		this.gtkLockButton = gtkLockButton;
		super(cast(GtkButton*)gtkLockButton, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_lock_button_get_type();
	}

	/**
	 * Creates a new lock button which reflects the @permission.
	 *
	 * Params:
	 *     permission = a `GPermission`
	 *
	 * Returns: a new `GtkLockButton`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Permission permission)
	{
		auto __p = gtk_lock_button_new((permission is null) ? null : permission.getPermissionStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkLockButton*) __p);
	}

	/**
	 * Obtains the `GPermission` object that controls @button.
	 *
	 * Returns: the `GPermission` of @button
	 */
	public Permission getPermission()
	{
		auto __p = gtk_lock_button_get_permission(gtkLockButton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Permission)(cast(GPermission*) __p);
	}

	/**
	 * Sets the `GPermission` object that controls @button.
	 *
	 * Params:
	 *     permission = a `GPermission` object
	 */
	public void setPermission(Permission permission)
	{
		gtk_lock_button_set_permission(gtkLockButton, (permission is null) ? null : permission.getPermissionStruct());
	}
}
