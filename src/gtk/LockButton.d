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

/*
 * Conversion parameters:
 * inFile  = GtkLockButton.html
 * outPack = gtk
 * outFile = LockButton
 * strct   = GtkLockButton
 * realStrct=
 * ctorStrct=
 * clss    = LockButton
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_switch_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.Permission
 * structWrap:
 * 	- GPermission* -> Permission
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.LockButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.Permission;



private import gtk.Button;

/**
 * GtkLockButton is a widget that can be used in control panels or
 * preference dialogs to allow users to obtain and revoke authorizations
 * needed to operate the controls. The required authorization is represented
 * by a GPermission object. Concrete implementations of GPermission may use
 * PolicyKit or some other authorization framework. To obtain a PolicyKit-based
 * GPermission, use polkit_permission_new().
 *
 * If the user is not currently allowed to perform the action, but can obtain
 * the permission, the widget looks like this
 *
 * $(DDOC_COMMENT example)
 *
 * and the user can click the button to request the permission. Depending
 * on the platform, this may pop up an authentication dialog or ask the user
 * to authenticate in some other way. Once the user has obtained the permission,
 * the widget changes to this
 *
 * $(DDOC_COMMENT example)
 *
 * and the permission can be dropped again by clicking the button. If the user
 * is not able to obtain the permission at all, the widget looks like this
 *
 * $(DDOC_COMMENT example)
 *
 * If the user has the permission and cannot drop it, the button is hidden.
 *
 * The text (and tooltips) that are shown in the various cases can be adjusted
 * with the "text-lock", "text-unlock",
 * "tooltip-lock", "tooltip-unlock" and
 * "tooltip-not-authorized" properties.
 */
public class LockButton : Button
{
	
	/** the main Gtk struct */
	protected GtkLockButton* gtkLockButton;
	
	
	public GtkLockButton* getLockButtonStruct()
	{
		return gtkLockButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLockButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkLockButton* gtkLockButton)
	{
		super(cast(GtkButton*)gtkLockButton);
		this.gtkLockButton = gtkLockButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkLockButton = cast(GtkLockButton*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new lock button which reflects the permission.
	 * Params:
	 * permission = a GPermission. [allow-none]
	 * Returns: a new GtkLockButton Since 3.2
	 */
	public static GtkWidget* gtkLockButtonNew(Permission permission)
	{
		// GtkWidget * gtk_lock_button_new (GPermission *permission);
		return gtk_lock_button_new((permission is null) ? null : permission.getPermissionStruct());
	}
	
	/**
	 * Obtains the GPermission object that controls button.
	 * Returns: the GPermission of button. [transfer none] Since 3.2
	 */
	public Permission gtkLockButtonGetPermission()
	{
		// GPermission * gtk_lock_button_get_permission (GtkLockButton *button);
		auto p = gtk_lock_button_get_permission(gtkLockButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Permission)(cast(GPermission*) p);
	}
	
	/**
	 * Sets the GPermission object that controls button.
	 * Params:
	 * permission = a GPermission object, or NULL. [allow-none]
	 * Since 3.2
	 */
	public void gtkLockButtonSetPermission(Permission permission)
	{
		// void gtk_lock_button_set_permission (GtkLockButton *button,  GPermission *permission);
		gtk_lock_button_set_permission(gtkLockButton, (permission is null) ? null : permission.getPermissionStruct());
	}
}
