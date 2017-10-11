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


module gtk.ImageCellAccessible;

private import atk.ImageIF;
private import atk.ImageT;
private import gtk.RendererCellAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class ImageCellAccessible : RendererCellAccessible, ImageIF
{
	/** the main Gtk struct */
	protected GtkImageCellAccessible* gtkImageCellAccessible;

	/** Get the main Gtk struct */
	public GtkImageCellAccessible* getImageCellAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkImageCellAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkImageCellAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkImageCellAccessible* gtkImageCellAccessible, bool ownedRef = false)
	{
		this.gtkImageCellAccessible = gtkImageCellAccessible;
		super(cast(GtkRendererCellAccessible*)gtkImageCellAccessible, ownedRef);
	}

	// add the Image capabilities
	mixin ImageT!(GtkImageCellAccessible);


	/** */
	public static GType getType()
	{
		return gtk_image_cell_accessible_get_type();
	}
}
