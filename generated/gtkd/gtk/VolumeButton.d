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


module gtk.VolumeButton;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.ScaleButton;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkVolumeButton is a subclass of #GtkScaleButton that has
 * been tailored for use as a volume control widget with suitable
 * icons, tooltips and accessible labels.
 */
public class VolumeButton : ScaleButton
{
	/** the main Gtk struct */
	protected GtkVolumeButton* gtkVolumeButton;

	/** Get the main Gtk struct */
	public GtkVolumeButton* getVolumeButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkVolumeButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkVolumeButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkVolumeButton* gtkVolumeButton, bool ownedRef = false)
	{
		this.gtkVolumeButton = gtkVolumeButton;
		super(cast(GtkScaleButton*)gtkVolumeButton, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_volume_button_get_type();
	}

	/**
	 * Creates a #GtkVolumeButton, with a range between 0.0 and 1.0, with
	 * a stepping of 0.02. Volume values can be obtained and modified using
	 * the functions from #GtkScaleButton.
	 *
	 * Returns: a new #GtkVolumeButton
	 *
	 * Since: 2.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_volume_button_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkVolumeButton*) p);
	}
}
