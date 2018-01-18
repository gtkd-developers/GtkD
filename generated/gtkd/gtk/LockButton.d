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
public  import gtkc.gtktypes;


/**
 * GtkLockButton is a widget that can be used in control panels or
 * preference dialogs to allow users to obtain and revoke authorizations
 * needed to operate the controls. The required authorization is represented
 * by a #GPermission object. Concrete implementations of #GPermission may use
 * PolicyKit or some other authorization framework. To obtain a PolicyKit-based
 * #GPermission, use polkit_permission_new().
 * 
 * If the user is not currently allowed to perform the action, but can obtain
 * the permission, the widget looks like this:
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
 * with the #GtkLockButton:text-lock, #GtkLockButton:text-unlock,
 * #GtkLockButton:tooltip-lock, #GtkLockButton:tooltip-unlock and
 * #GtkLockButton:tooltip-not-authorized properties.
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
	 *     permission = a #GPermission
	 *
	 * Returns: a new #GtkLockButton
	 *
	 * Since: 3.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Permission permission)
	{
		auto p = gtk_lock_button_new((permission is null) ? null : permission.getPermissionStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkLockButton*) p);
	}

	/**
	 * Obtains the #GPermission object that controls @button.
	 *
	 * Returns: the #GPermission of @button
	 *
	 * Since: 3.2
	 */
	public Permission getPermission()
	{
		auto p = gtk_lock_button_get_permission(gtkLockButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Permission)(cast(GPermission*) p);
	}

	/**
	 * Sets the #GPermission object that controls @button.
	 *
	 * Params:
	 *     permission = a #GPermission object, or %NULL
	 *
	 * Since: 3.2
	 */
	public void setPermission(Permission permission)
	{
		gtk_lock_button_set_permission(gtkLockButton, (permission is null) ? null : permission.getPermissionStruct());
	}
}
