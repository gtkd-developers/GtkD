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


module adw.PreferencesGroup;

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
 * A group of preference rows.
 * 
 * <picture>
 * <source srcset="preferences-group-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="preferences-group.png" alt="preferences-group">
 * </picture>
 * 
 * An `AdwPreferencesGroup` represents a group or tightly related preferences,
 * which in turn are represented by [class@PreferencesRow].
 * 
 * To summarize the role of the preferences it gathers, a group can have both a
 * title and a description. The title will be used by [class@PreferencesWindow]
 * to let the user look for a preference.
 * 
 * ## AdwPreferencesGroup as GtkBuildable
 * 
 * The `AdwPreferencesGroup` implementation of the [iface@Gtk.Buildable] interface
 * supports adding [class@PreferencesRow]s to the list by omitting "type". If "type"
 * is omitted and the widget isn't a [class@PreferencesRow] the child is added to
 * a box below the list.
 * 
 * When the "type" attribute of a child is `header-suffix`, the child
 * is set as the suffix on the end of the title and description.
 * 
 * ## CSS nodes
 * 
 * `AdwPreferencesGroup` has a single CSS node with name `preferencesgroup`.
 * 
 * ## Accessibility
 * 
 * `AdwPreferencesGroup` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
 *
 * Since: 1.0
 */
public class PreferencesGroup : Widget
{
	/** the main Gtk struct */
	protected AdwPreferencesGroup* adwPreferencesGroup;

	/** Get the main Gtk struct */
	public AdwPreferencesGroup* getPreferencesGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwPreferencesGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwPreferencesGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwPreferencesGroup* adwPreferencesGroup, bool ownedRef = false)
	{
		this.adwPreferencesGroup = adwPreferencesGroup;
		super(cast(GtkWidget*)adwPreferencesGroup, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_preferences_group_get_type();
	}

	/**
	 * Creates a new `AdwPreferencesGroup`.
	 *
	 * Returns: the newly created `AdwPreferencesGroup`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_preferences_group_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwPreferencesGroup*) __p);
	}

	/**
	 * Adds a child to @self.
	 *
	 * Params:
	 *     child = the widget to add
	 *
	 * Since: 1.0
	 */
	public void add(Widget child)
	{
		adw_preferences_group_add(adwPreferencesGroup, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Gets the description of @self.
	 *
	 * Returns: the description of @self
	 *
	 * Since: 1.0
	 */
	public string getDescription()
	{
		return Str.toString(adw_preferences_group_get_description(adwPreferencesGroup));
	}

	/**
	 * Gets the suffix for @self's header.
	 *
	 * Returns: the suffix for @self's header.
	 *
	 * Since: 1.1
	 */
	public Widget getHeaderSuffix()
	{
		auto __p = adw_preferences_group_get_header_suffix(adwPreferencesGroup);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the title of @self.
	 *
	 * Returns: the title of @self
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_preferences_group_get_title(adwPreferencesGroup));
	}

	/**
	 * Removes a child from @self.
	 *
	 * Params:
	 *     child = the child to remove
	 *
	 * Since: 1.0
	 */
	public void remove(Widget child)
	{
		adw_preferences_group_remove(adwPreferencesGroup, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the description for @self.
	 *
	 * Params:
	 *     description = the description
	 *
	 * Since: 1.0
	 */
	public void setDescription(string description)
	{
		adw_preferences_group_set_description(adwPreferencesGroup, Str.toStringz(description));
	}

	/**
	 * Sets the suffix for @self's header.
	 *
	 * Params:
	 *     suffix = the suffix to set
	 *
	 * Since: 1.1
	 */
	public void setHeaderSuffix(Widget suffix)
	{
		adw_preferences_group_set_header_suffix(adwPreferencesGroup, (suffix is null) ? null : suffix.getWidgetStruct());
	}

	/**
	 * Sets the title for @self.
	 *
	 * Params:
	 *     title = the title
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_preferences_group_set_title(adwPreferencesGroup, Str.toStringz(title));
	}
}
