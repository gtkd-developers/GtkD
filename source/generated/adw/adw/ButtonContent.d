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


module adw.ButtonContent;

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
 * A helper widget for creating buttons.
 * 
 * <picture>
 * <source srcset="button-content-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="button-content.png" alt="button-content">
 * </picture>
 * 
 * `AdwButtonContent` is a box-like widget with an icon and a label.
 * 
 * It's intended to be used as a direct child of [class@Gtk.Button],
 * [class@Gtk.MenuButton] or [class@SplitButton], when they need to have both an
 * icon and a label, as follows:
 * 
 * ```xml
 * <object class="GtkButton">
 * <property name="child">
 * <object class="AdwButtonContent">
 * <property name="icon-name">document-open-symbolic</property>
 * <property name="label" translatable="yes">_Open</property>
 * <property name="use-underline">True</property>
 * </object>
 * </property>
 * </object>
 * ```
 * 
 * `AdwButtonContent` handles style classes and connecting the mnemonic to the
 * button automatically.
 * 
 * ## CSS nodes
 * 
 * ```
 * buttoncontent
 * ├── image
 * ╰── label
 * ```
 * 
 * `AdwButtonContent`'s CSS node is called `buttoncontent`. It contains the
 * subnodes `image` and `label`.
 * 
 * When inside a `GtkButton` or `AdwSplitButton`, the button will receive the
 * `.image-text-button` style class. When inside a `GtkMenuButton`, the
 * internal `GtkButton` will receive it instead.
 * 
 * ## Accessibility
 * 
 * `AdwButtonContent` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
 *
 * Since: 1.0
 */
public class ButtonContent : Widget
{
	/** the main Gtk struct */
	protected AdwButtonContent* adwButtonContent;

	/** Get the main Gtk struct */
	public AdwButtonContent* getButtonContentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwButtonContent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwButtonContent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwButtonContent* adwButtonContent, bool ownedRef = false)
	{
		this.adwButtonContent = adwButtonContent;
		super(cast(GtkWidget*)adwButtonContent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_button_content_get_type();
	}

	/**
	 * Creates a new `AdwButtonContent`.
	 *
	 * Returns: the new created `AdwButtonContent`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_button_content_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwButtonContent*) __p);
	}

	/**
	 * Gets the name of the displayed icon.
	 *
	 * Returns: the icon name
	 *
	 * Since: 1.0
	 */
	public string getIconName()
	{
		return Str.toString(adw_button_content_get_icon_name(adwButtonContent));
	}

	/**
	 * Gets the displayed label.
	 *
	 * Returns: the label
	 *
	 * Since: 1.0
	 */
	public string getLabel()
	{
		return Str.toString(adw_button_content_get_label(adwButtonContent));
	}

	/**
	 * Gets whether an underline in the text indicates a mnemonic.
	 *
	 * Returns: whether an underline in the text indicates a mnemonic
	 *
	 * Since: 1.0
	 */
	public bool getUseUnderline()
	{
		return adw_button_content_get_use_underline(adwButtonContent) != 0;
	}

	/**
	 * Sets the name of the displayed icon.
	 *
	 * Params:
	 *     iconName = the new icon name
	 *
	 * Since: 1.0
	 */
	public void setIconName(string iconName)
	{
		adw_button_content_set_icon_name(adwButtonContent, Str.toStringz(iconName));
	}

	/**
	 * Sets the displayed label.
	 *
	 * Params:
	 *     label = the new label
	 *
	 * Since: 1.0
	 */
	public void setLabel(string label)
	{
		adw_button_content_set_label(adwButtonContent, Str.toStringz(label));
	}

	/**
	 * Sets whether an underline in the text indicates a mnemonic.
	 *
	 * Params:
	 *     useUnderline = whether an underline in the text indicates a mnemonic
	 *
	 * Since: 1.0
	 */
	public void setUseUnderline(bool useUnderline)
	{
		adw_button_content_set_use_underline(adwButtonContent, useUnderline);
	}
}
