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


module gio.ThemedIcon;

private import gio.IconIF;
private import gio.IconT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * #GThemedIcon is an implementation of #GIcon that supports icon themes.
 * #GThemedIcon contains a list of all of the icons present in an icon
 * theme, so that icons can be looked up quickly. #GThemedIcon does
 * not provide actual pixmaps for icons, just the icon names.
 * Ideally something like gtk_icon_theme_choose_icon() should be used to
 * resolve the list of names so that fallback icons work nicely with
 * themes that inherit other themes.
 */
public class ThemedIcon : ObjectG, IconIF
{
	/** the main Gtk struct */
	protected GThemedIcon* gThemedIcon;

	/** Get the main Gtk struct */
	public GThemedIcon* getThemedIconStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gThemedIcon;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gThemedIcon;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GThemedIcon* gThemedIcon, bool ownedRef = false)
	{
		this.gThemedIcon = gThemedIcon;
		super(cast(GObject*)gThemedIcon, ownedRef);
	}

	// add the Icon capabilities
	mixin IconT!(GThemedIcon);


	/** */
	public static GType getType()
	{
		return g_themed_icon_get_type();
	}

	/**
	 * Creates a new themed icon for @iconnames.
	 *
	 * Params:
	 *     iconnames = an array of strings containing icon names.
	 *
	 * Returns: a new #GThemedIcon
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string[] iconnames)
	{
		auto __p = g_themed_icon_new_from_names(Str.toStringzArray(iconnames), cast(int)iconnames.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_names");
		}

		this(cast(GThemedIcon*) __p, true);
	}

	/**
	 * Creates a new themed icon for @iconname, and all the names
	 * that can be created by shortening @iconname at '-' characters.
	 *
	 * In the following example, @icon1 and @icon2 are equivalent:
	 * |[<!-- language="C" -->
	 * const char *names[] = {
	 * "gnome-dev-cdrom-audio",
	 * "gnome-dev-cdrom",
	 * "gnome-dev",
	 * "gnome"
	 * };
	 *
	 * icon1 = g_themed_icon_new_from_names (names, 4);
	 * icon2 = g_themed_icon_new_with_default_fallbacks ("gnome-dev-cdrom-audio");
	 * ]|
	 *
	 * Params:
	 *     iconname = a string containing an icon name
	 *
	 * Returns: a new #GThemedIcon.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string iconname)
	{
		auto __p = g_themed_icon_new_with_default_fallbacks(Str.toStringz(iconname));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_default_fallbacks");
		}

		this(cast(GThemedIcon*) __p, true);
	}

	/**
	 * Append a name to the list of icons from within @icon.
	 *
	 * Note that doing so invalidates the hash computed by prior calls
	 * to g_icon_hash().
	 *
	 * Params:
	 *     iconname = name of icon to append to list of icons from within @icon.
	 */
	public void appendName(string iconname)
	{
		g_themed_icon_append_name(gThemedIcon, Str.toStringz(iconname));
	}

	/**
	 * Gets the names of icons from within @icon.
	 *
	 * Returns: a list of icon names.
	 */
	public string[] getNames()
	{
		return Str.toStringArray(g_themed_icon_get_names(gThemedIcon));
	}

	/**
	 * Prepend a name to the list of icons from within @icon.
	 *
	 * Note that doing so invalidates the hash computed by prior calls
	 * to g_icon_hash().
	 *
	 * Params:
	 *     iconname = name of icon to prepend to list of icons from within @icon.
	 *
	 * Since: 2.18
	 */
	public void prependName(string iconname)
	{
		g_themed_icon_prepend_name(gThemedIcon, Str.toStringz(iconname));
	}
}
