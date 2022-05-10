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


module gtk.PasswordEntry;

private import gio.MenuModel;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EditableIF;
private import gtk.EditableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkPasswordEntry` is an entry that has been tailored for entering secrets.
 * 
 * ![An example GtkPasswordEntry](password-entry.png)
 * 
 * It does not show its contents in clear text, does not allow to copy it
 * to the clipboard, and it shows a warning when Caps Lock is engaged. If
 * the underlying platform allows it, `GtkPasswordEntry` will also place
 * the text in a non-pageable memory area, to avoid it being written out
 * to disk by the operating system.
 * 
 * Optionally, it can offer a way to reveal the contents in clear text.
 * 
 * `GtkPasswordEntry` provides only minimal API and should be used with
 * the [iface@Gtk.Editable] API.
 * 
 * # CSS Nodes
 * 
 * ```
 * entry.password
 * ╰── text
 * ├── image.caps-lock-indicator
 * ┊
 * ```
 * 
 * `GtkPasswordEntry` has a single CSS node with name entry that carries
 * a .passwordstyle class. The text Css node below it has a child with
 * name image and style class .caps-lock-indicator for the Caps Lock
 * icon, and possibly other children.
 * 
 * # Accessibility
 * 
 * `GtkPasswordEntry` uses the %GTK_ACCESSIBLE_ROLE_TEXT_BOX role.
 */
public class PasswordEntry : Widget, EditableIF
{
	/** the main Gtk struct */
	protected GtkPasswordEntry* gtkPasswordEntry;

	/** Get the main Gtk struct */
	public GtkPasswordEntry* getPasswordEntryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPasswordEntry;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPasswordEntry;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPasswordEntry* gtkPasswordEntry, bool ownedRef = false)
	{
		this.gtkPasswordEntry = gtkPasswordEntry;
		super(cast(GtkWidget*)gtkPasswordEntry, ownedRef);
	}

	// add the Editable capabilities
	mixin EditableT!(GtkPasswordEntry);


	/** */
	public static GType getType()
	{
		return gtk_password_entry_get_type();
	}

	/**
	 * Creates a `GtkPasswordEntry`.
	 *
	 * Returns: a new `GtkPasswordEntry`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_password_entry_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPasswordEntry*) __p);
	}

	/**
	 * Gets the menu model set with gtk_password_entry_set_extra_menu().
	 *
	 * Returns: the menu model
	 */
	public MenuModel getExtraMenu()
	{
		auto __p = gtk_password_entry_get_extra_menu(gtkPasswordEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p);
	}

	/**
	 * Returns whether the entry is showing an icon to
	 * reveal the contents.
	 *
	 * Returns: %TRUE if an icon is shown
	 */
	public bool getShowPeekIcon()
	{
		return gtk_password_entry_get_show_peek_icon(gtkPasswordEntry) != 0;
	}

	/**
	 * Sets a menu model to add when constructing
	 * the context menu for @entry.
	 *
	 * Params:
	 *     model = a `GMenuModel`
	 */
	public void setExtraMenu(MenuModel model)
	{
		gtk_password_entry_set_extra_menu(gtkPasswordEntry, (model is null) ? null : model.getMenuModelStruct());
	}

	/**
	 * Sets whether the entry should have a clickable icon
	 * to reveal the contents.
	 *
	 * Setting this to %FALSE also hides the text again.
	 *
	 * Params:
	 *     showPeekIcon = whether to show the peek icon
	 */
	public void setShowPeekIcon(bool showPeekIcon)
	{
		gtk_password_entry_set_show_peek_icon(gtkPasswordEntry, showPeekIcon);
	}

	/**
	 * Emitted when the entry is activated.
	 *
	 * The keybindings for this signal are all forms of the Enter key.
	 */
	gulong addOnActivate(void delegate(PasswordEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
