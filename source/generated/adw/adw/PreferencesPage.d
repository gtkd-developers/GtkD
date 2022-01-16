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


module adw.PreferencesPage;

private import adw.PreferencesGroup;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;


/**
 * A page from [class@PreferencesWindow].
 * 
 * <picture>
 * <source srcset="preferences-page-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="preferences-page.png" alt="preferences-page">
 * </picture>
 * 
 * The `AdwPreferencesPage` widget gathers preferences groups into a single page
 * of a preferences window.
 * 
 * ## CSS nodes
 * 
 * `AdwPreferencesPage` has a single CSS node with name `preferencespage`.
 * 
 * ## Accessibility
 * 
 * `AdwPreferencesPage` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
 *
 * Since: 1.0
 */
public class PreferencesPage : Widget
{
	/** the main Gtk struct */
	protected AdwPreferencesPage* adwPreferencesPage;

	/** Get the main Gtk struct */
	public AdwPreferencesPage* getPreferencesPageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwPreferencesPage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwPreferencesPage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwPreferencesPage* adwPreferencesPage, bool ownedRef = false)
	{
		this.adwPreferencesPage = adwPreferencesPage;
		super(cast(GtkWidget*)adwPreferencesPage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_preferences_page_get_type();
	}

	/**
	 * Creates a new `AdwPreferencesPage`.
	 *
	 * Returns: the newly created `AdwPreferencesPage`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_preferences_page_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwPreferencesPage*) __p);
	}

	/**
	 * Adds a preferences group to @self.
	 *
	 * Params:
	 *     group = the group to add
	 *
	 * Since: 1.0
	 */
	public void add(PreferencesGroup group)
	{
		adw_preferences_page_add(adwPreferencesPage, (group is null) ? null : group.getPreferencesGroupStruct());
	}

	/**
	 * Gets the icon name for @self.
	 *
	 * Returns: the icon name for @self
	 *
	 * Since: 1.0
	 */
	public string getIconName()
	{
		return Str.toString(adw_preferences_page_get_icon_name(adwPreferencesPage));
	}

	/**
	 * Gets the name of @self.
	 *
	 * Returns: the name of @self
	 *
	 * Since: 1.0
	 */
	public override string getName()
	{
		return Str.toString(adw_preferences_page_get_name(adwPreferencesPage));
	}

	/**
	 * Gets the title of @self.
	 *
	 * Returns: the title of @self.
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_preferences_page_get_title(adwPreferencesPage));
	}

	/**
	 * Gets whether an embedded underline in the title indicates a mnemonic.
	 *
	 * Returns: whether an embedded underline in the title indicates a mnemonic
	 *
	 * Since: 1.0
	 */
	public bool getUseUnderline()
	{
		return adw_preferences_page_get_use_underline(adwPreferencesPage) != 0;
	}

	/**
	 * Removes a group from @self.
	 *
	 * Params:
	 *     group = the group to remove
	 *
	 * Since: 1.0
	 */
	public void remove(PreferencesGroup group)
	{
		adw_preferences_page_remove(adwPreferencesPage, (group is null) ? null : group.getPreferencesGroupStruct());
	}

	/**
	 * Sets the icon name for @self.
	 *
	 * Params:
	 *     iconName = the icon name
	 *
	 * Since: 1.0
	 */
	public void setIconName(string iconName)
	{
		adw_preferences_page_set_icon_name(adwPreferencesPage, Str.toStringz(iconName));
	}

	/**
	 * Sets the name of @self.
	 *
	 * Params:
	 *     name = the name
	 *
	 * Since: 1.0
	 */
	public override void setName(string name)
	{
		adw_preferences_page_set_name(adwPreferencesPage, Str.toStringz(name));
	}

	/**
	 * Sets the title of @self.
	 *
	 * Params:
	 *     title = the title
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_preferences_page_set_title(adwPreferencesPage, Str.toStringz(title));
	}

	/**
	 * Sets whether an embedded underline in the title indicates a mnemonic.
	 *
	 * Params:
	 *     useUnderline = `TRUE` if underlines in the text indicate mnemonics
	 *
	 * Since: 1.0
	 */
	public void setUseUnderline(bool useUnderline)
	{
		adw_preferences_page_set_use_underline(adwPreferencesPage, useUnderline);
	}
}
