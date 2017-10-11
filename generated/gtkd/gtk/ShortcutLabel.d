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


module gtk.ShortcutLabel;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Box;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkShortcutLabel is a widget that represents a single keyboard shortcut or gesture
 * in the user interface.
 */
public class ShortcutLabel : Box
{
	/** the main Gtk struct */
	protected GtkShortcutLabel* gtkShortcutLabel;

	/** Get the main Gtk struct */
	public GtkShortcutLabel* getShortcutLabelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkShortcutLabel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkShortcutLabel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkShortcutLabel* gtkShortcutLabel, bool ownedRef = false)
	{
		this.gtkShortcutLabel = gtkShortcutLabel;
		super(cast(GtkBox*)gtkShortcutLabel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_shortcut_label_get_type();
	}

	/**
	 * Creates a new #GtkShortcutLabel with @accelerator set.
	 *
	 * Params:
	 *     accelerator = the initial accelerator
	 *
	 * Returns: a newly-allocated #GtkShortcutLabel
	 *
	 * Since: 3.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string accelerator)
	{
		auto p = gtk_shortcut_label_new(Str.toStringz(accelerator));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkShortcutLabel*) p, true);
	}

	/**
	 * Retrieves the current accelerator of @self.
	 *
	 * Returns: the current accelerator.
	 *
	 * Since: 3.22
	 */
	public string getAccelerator()
	{
		return Str.toString(gtk_shortcut_label_get_accelerator(gtkShortcutLabel));
	}

	/**
	 * Retrieves the text that is displayed when no accelerator is set.
	 *
	 * Returns: the current text displayed when no
	 *     accelerator is set.
	 *
	 * Since: 3.22
	 */
	public string getDisabledText()
	{
		return Str.toString(gtk_shortcut_label_get_disabled_text(gtkShortcutLabel));
	}

	/**
	 * Sets the accelerator to be displayed by @self.
	 *
	 * Params:
	 *     accelerator = the new accelerator
	 *
	 * Since: 3.22
	 */
	public void setAccelerator(string accelerator)
	{
		gtk_shortcut_label_set_accelerator(gtkShortcutLabel, Str.toStringz(accelerator));
	}

	/**
	 * Sets the text to be displayed by @self when no accelerator is set.
	 *
	 * Params:
	 *     disabledText = the text to be displayed when no accelerator is set
	 *
	 * Since: 3.22
	 */
	public void setDisabledText(string disabledText)
	{
		gtk_shortcut_label_set_disabled_text(gtkShortcutLabel, Str.toStringz(disabledText));
	}
}
